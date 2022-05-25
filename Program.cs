using PixelEngine;
using NAudio;
using System;

namespace SMBClone
{
    public class SMBClone : Game
    {

        public int airTime, floor, points, time;
        public float veloHor, veloVert;
        public bool pressed, midAir, natan;
        public TimeSpan timeLeft;

        public Point pos, posPast, collOld, collNew, pointsText;
        public DateTime timeStart, timeEnd, timeCurrent;
        public Sprite agent;

        private NAudio.Wave.WaveFileReader wave = null;
        private NAudio.Wave.DirectSoundOut output = null;

        static int Main(string[] args)
        {
            var SMBC = new SMBClone();

            SMBC.Construct(200, 200, 5, 5, 60);
            SMBC.AppName = "Super Bajs Bros";


            SMBC.Start();


            return 0;
        }

        public override void OnCreate()
        {
            Enable(Subsystem.HrText);

            wave = new NAudio.Wave.WaveFileReader("src/audio1.wav");
            
            output = new NAudio.Wave.DirectSoundOut();
            output.Init(new NAudio.Wave.WaveChannel32(wave,.1f,0));
            output.Play();
            

            PixelMode = Pixel.Mode.Alpha;
            reset();
        }

        public override void OnUpdate(float elapsed)
        {
            Clear(Pixel.Presets.Grey);


            calcMove();

            drawText();
            drawWorld();
            drawAgent();
            //debugLog();

            pressed = false;
        }

        private void calcMove()
        {


            if (pressed)
            {
                pos = new Point(pos.X + (int)veloHor, pos.Y + (int)veloVert);
            }
            else
            {
                if (!(veloHor == 0))
                    if (veloHor > 0)
                        veloHor--;
                    else if (veloHor < 0)
                        veloHor++;

                pos = new Point(pos.X + (int)veloHor, pos.Y + (int)veloVert);
            }

            if (pos.X < 0)
            {
                veloHor = 0;
                pos = new Point(0, pos.Y);
            }
            if (pos.X >= ScreenWidth)
            {
                veloHor = 0;
                pos = new Point(ScreenWidth - 1, pos.Y);
            }
            if (pos.Y < 0)
            {
                veloVert = 0;
                pos = new Point(pos.X, 0);
            }
            if (pos.Y >= ScreenHeight)
            {
                veloVert = 0;
                pos = new Point(pos.X, ScreenHeight - 1);
            }
            if (colision(pos, veloVert, floor))
            {
                veloVert = 0;
                pos = new Point(pos.X, floor);
            }

            if (!(pos.Y == floor))
            {
                airTime++;
                if (airTime > 20)
                {
                    veloVert++;
                }
            }
            else
            {
                airTime = 0;
                veloVert = 0;
                midAir = false;
            }
        }

        private void drawText()
        {
            timeLeft = timeEnd - DateTime.Now;


            //draw Player
            DrawTextHr(new Point(200, 10), player(), Pixel.Presets.White, 2);
            //draw Points
            DrawTextHr(new Point(450, 10), "Score: " + points, Pixel.Presets.Blue, 2);
            //draw Time 
            DrawTextHr(new Point(700, 10), "Time: " + (int)timeLeft.TotalSeconds, Pixel.Presets.Beige, 2);

            {
                //DrawLine(new Point(50,0), new Point(50, ScreenHeight),Pixel.Presets.Black);
                //DrawLine(new Point(100, 0), new Point(100, ScreenHeight), Pixel.Presets.Black);
                //DrawLine(new Point(150, 0), new Point(150, ScreenHeight), Pixel.Presets.Black);
            }
        }

        private void drawAgent()
        {
            DrawSprite(new Point(pos.X-agent.Width/2, pos.Y-agent.Height), agent);
            Draw(pos, Pixel.FromRgb(0x3300ff));
        }

        private void drawWorld()
        {
            DrawLine(new Point(0, floor), new Point(ScreenHeight, floor), Pixel.Presets.Brown);
        }

        private void reset()
        {
            veloHor = 0;
            veloVert = 0;
            floor = ScreenHeight - 15;
            points = 0;
            pointsText = new Point(10, 10);
            pos = new Point(ScreenWidth / 2, floor);
            agent = Sprite.Load("src/mario.png");

            timeStart = DateTime.Now;
            timeEnd = timeStart.AddMinutes(13.33);
        }

        private void debugLog()
        {
            System.Console.Write("Horizontal Velocity: {0}  Vertical Velocity: {1}  X: {2}  Y: {3} \n", veloHor, veloVert, pos.X, pos.Y);
        }
        private string player()
        {
            if (natan)
                return "Natan";
            else
                return "Tomek";
        }

        public override void OnKeyDown(Key k)
        {
            switch (k)
            {
                case Key.Right:
                    if (veloHor < 10)
                        veloHor += 1;
                    pressed = true;
                    break;

                case Key.Left:
                    if (veloHor > -10)
                        veloHor -= 1;
                    pressed = true;
                    break;

                case Key.Down:
                    if (veloVert < 10)
                        veloVert += 1;
                    pressed = true;
                    break;

                case Key.Up:
                    if (!midAir)
                        veloVert =-1;
                    midAir = true;
                    pressed = true;
                    break;

                case Key.R:
                    reset();
                    break;
            }
        }
        private bool colision(Point startingPoint, float velocity, int collisionPoint)
        {
            int endPoint = startingPoint.Y + (int)velocity;

            if (collisionPoint < endPoint)
                return true;
            else
                return false;
        }

        public override void OnKeyRelease(Key k)
        {
            switch (k)
            {
                case Key.O:
                    points++;
                    break;

                case Key.P:
                    natan = !natan;
                    break;
            }

        }

    }
}