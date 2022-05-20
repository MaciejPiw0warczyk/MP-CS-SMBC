using PixelEngine;
using System;

namespace SMBClone
{
    public class SMBClone : Game
    {
        public Point pos, posPast, collOld, collNew, pointsText;
        public int airTime, floor, points, time;
        public float veloHor, veloVert;
        public bool pressed, midAir;

        static int Main(string[] args)
        {
            var SMBC = new SMBClone();

            SMBC.Construct(200, 200, 5, 5,30);
            SMBC.AppName = "Super Bajs Bros";


            SMBC.Start();

            
            return 0;
        }

        public override void OnCreate()
        {
            reset();
        }
        public override void OnUpdate(float elapsed)
        {
            Clear(Pixel.Presets.Maroon);


            calcMove();
            drawAgent();
            debugLog();
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
                        veloHor --;
                    else if (veloHor < 0)
                        veloHor ++;

                pos = new Point(pos.X + (int)veloHor, pos.Y + (int)veloVert);
            }
            
                if(pos.X < 0)
                {
                    veloHor = 0;
                    pos=new Point(0, pos.Y);
                }
                if (pos.X >=ScreenWidth)
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
                    veloVert= 0;
                    pos = new Point(pos.X,ScreenHeight - 1);
                }

            if(colision(pos, veloVert, floor))
            {
                veloVert = 0;
                pos = new Point(pos.X, floor);
            }
        }

        private void drawAgent()
        {
            DrawText(new Point(10, 10), "Score: "+points, Pixel.Presets.White);

            DrawLine(new Point(0, floor), new Point (ScreenHeight, floor), Pixel.Presets.Brown);

            Draw(pos,Pixel.Presets.Black);
        }

        private void reset()
        {
            veloHor = 0;
            veloVert = 0;
            floor = ScreenHeight-15;
            points = 0;
            time = 0;
            pointsText=new Point(10, 10);
            pos = new Point(ScreenWidth/2, floor);
        }

        private void debugLog()
        {
            System.Console.Write("Horizontal Velocity: {0}  Vertical Velocity: {1}  X: {2}  Y: {3} \n",veloHor,veloVert,pos.X,pos.Y);
        }

        public override void OnKeyDown(Key k)
        {
            switch (k)
            {
                case Key.Right:
                    if(veloHor<10)
                        veloHor += 1;
                    pressed = true;
                    break;

                case Key.Left:
                    if (veloHor > -10)
                        veloHor -= 1;
                    pressed=true;
                    break;

                case Key.Down:
                    if (veloVert < 10)
                        veloVert += 1;
                    pressed=true;
                    break;

                case Key.Up:
                    if (veloVert > -10)
                        veloVert -= 1;
                    pressed = true;
                    break;

                case Key.R:
                    reset();
                    break;
            }
        }

        public override void OnKeyRelease(Key k)
        {
            switch (k)
            {
                case Key.K8:
                    points++;
                    break;
            }
        }

        private bool colision(Point startingPoint, float velocity, int collisionPoint)
        {
            int endPoint=startingPoint.Y+(int)velocity;

            if (collisionPoint < endPoint)
                return true;
            else
                return false;
        }
    }
}