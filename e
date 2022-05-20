[33mcommit afe9c55bcea3d1bbc930e28c21f542ae7463b137[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Maciej <mpiwo4@gmail.com>
Date:   Fri May 20 16:58:41 2022 +0200

    first commit

[1mdiff --git a/.vs/MP-CS-NES/project-colors.json b/.vs/MP-CS-NES/project-colors.json[m
[1mnew file mode 100644[m
[1mindex 0000000..9c5c0ce[m
[1m--- /dev/null[m
[1m+++ b/.vs/MP-CS-NES/project-colors.json[m
[36m@@ -0,0 +1,16 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "Version": 1,[m
[32m+[m[32m  "ProjectMap": {[m
[32m+[m[32m    "ba52585f-c1a1-4796-b60c-899137ef4815": {[m
[32m+[m[32m      "ProjectGuid": "ba52585f-c1a1-4796-b60c-899137ef4815",[m
[32m+[m[32m      "DisplayName": "MP-CS-NES",[m
[32m+[m[32m      "ColorIndex": 0[m
[32m+[m[32m    },[m
[32m+[m[32m    "a2fe74e1-b743-11d0-ae1a-00a0c90fffc3": {[m
[32m+[m[32m      "ProjectGuid": "a2fe74e1-b743-11d0-ae1a-00a0c90fffc3",[m
[32m+[m[32m      "DisplayName": "Miscellaneous Files",[m
[32m+[m[32m      "ColorIndex": -1[m
[32m+[m[32m    }[m
[32m+[m[32m  },[m
[32m+[m[32m  "NextColorIndex": 1[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/.vs/MP-CS-NES/v17/.suo b/.vs/MP-CS-NES/v17/.suo[m
[1mnew file mode 100644[m
[1mindex 0000000..c5c1356[m
Binary files /dev/null and b/.vs/MP-CS-NES/v17/.suo differ
[1mdiff --git a/App.config b/App.config[m
[1mnew file mode 100644[m
[1mindex 0000000..193aecc[m
[1m--- /dev/null[m
[1m+++ b/App.config[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" ?>[m
[32m+[m[32m<configuration>[m
[32m+[m[32m    <startup>[m[41m [m
[32m+[m[32m        <supportedRuntime version="v4.0" sku=".NETFramework,Version=v4.8" />[m
[32m+[m[32m    </startup>[m
[32m+[m[32m</configuration>[m
\ No newline at end of file[m
[1mdiff --git a/MP-CS-NES.csproj b/MP-CS-NES.csproj[m
[1mnew file mode 100644[m
[1mindex 0000000..1e18c56[m
[1m--- /dev/null[m
[1m+++ b/MP-CS-NES.csproj[m
[36m@@ -0,0 +1,86 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<Project ToolsVersion="15.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>[m
[32m+[m[32m    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>[m
[32m+[m[32m    <ProjectGuid>{BA52585F-C1A1-4796-B60C-899137EF4815}</ProjectGuid>[m
[32m+[m[32m    <OutputType>Exe</OutputType>[m
[32m+[m[32m    <RootNamespace>MP_CS_NES</RootNamespace>[m
[32m+[m[32m    <AssemblyName>MP-CS-NES</AssemblyName>[m
[32m+[m[32m    <TargetFrameworkVersion>v4.8</TargetFrameworkVersion>[m
[32m+[m[32m    <FileAlignment>512</FileAlignment>[m
[32m+[m[32m    <AutoGenerateBindingRedirects>true</AutoGenerateBindingRedirects>[m
[32m+[m[32m    <Deterministic>true</Deterministic>[m
[32m+[m[32m    <PublishUrl>publish\</PublishUrl>[m
[32m+[m[32m    <Install>true</Install>[m
[32m+[m[32m    <InstallFrom>Disk</InstallFrom>[m
[32m+[m[32m    <UpdateEnabled>false</UpdateEnabled>[m
[32m+[m[32m    <UpdateMode>Foreground</UpdateMode>[m
[32m+[m[32m    <UpdateInterval>7</UpdateInterval>[m
[32m+[m[32m    <UpdateIntervalUnits>Days</UpdateIntervalUnits>[m
[32m+[m[32m    <UpdatePeriodically>false</UpdatePeriodically>[m
[32m+[m[32m    <UpdateRequired>false</UpdateRequired>[m
[32m+[m[32m    <MapFileExtensions>true</MapFileExtensions>[m
[32m+[m[32m    <ApplicationRevision>0</ApplicationRevision>[m
[32m+[m[32m    <ApplicationVersion>1.0.0.%2a</ApplicationVersion>[m
[32m+[m[32m    <IsWebBootstrapper>false</IsWebBootstrapper>[m
[32m+[m[32m    <UseApplicationTrust>false</UseApplicationTrust>[m
[32m+[m[32m    <BootstrapperEnabled>true</BootstrapperEnabled>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">[m
[32m+[m[32m    <PlatformTarget>AnyCPU</PlatformTarget>[m
[32m+[m[32m    <DebugSymbols>true</DebugSymbols>[m
[32m+[m[32m    <DebugType>full</DebugType>[m
[32m+[m[32m    <Optimize>false</Optimize>[m
[32m+[m[32m    <OutputPath>bin\Debug\</OutputPath>[m
[32m+[m[32m    <DefineConstants>DEBUG;TRACE</DefineConstants>[m
[32m+[m[32m    <ErrorReport>prompt</ErrorReport>[m
[32m+[m[32m    <WarningLevel>4</WarningLevel>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">[m
[32m+[m[32m    <PlatformTarget>AnyCPU</PlatformTarget>[m
[32m+[m[32m    <DebugType>pdbonly</DebugType>[m
[32m+[m[32m    <Optimize>true</Optimize>[m
[32m+[m[32m    <OutputPath>bin\Release\</OutputPath>[m
[32m+[m[32m    <DefineConstants>TRACE</DefineConstants>[m
[32m+[m[32m    <ErrorReport>prompt</ErrorReport>[m
[32m+[m[32m    <WarningLevel>4</WarningLevel>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <StartupObject />[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <Reference Include="PixelEngine">[m
[32m+[m[32m      <HintPath>..\NES\bin\Debug\net6.0\ref\PixelEngine.dll</HintPath>[m
[32m+[m[32m    </Reference>[m
[32m+[m[32m    <Reference Include="System" />[m
[32m+[m[32m    <Reference Include="System.Core" />[m
[32m+[m[32m    <Reference Include="System.Xml.Linq" />[m
[32m+[m[32m    <Reference Include="System.Data.DataSetExtensions" />[m
[32m+[m[32m    <Reference Include="Microsoft.CSharp" />[m
[32m+[m[32m    <Reference Include="System.Data" />[m
[32m+[m[32m    <Reference Include="System.Net.Http" />[m
[32m+[m[32m    <Reference Include="System.Xml" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <Compile Include="Program.cs" />[m
[32m+[m[32m    <Compile Include="Properties\AssemblyInfo.cs" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <None Include="App.config" />[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <ItemGroup>[m
[32m+[m[32m    <BootstrapperPackage Include=".NETFramework,Version=v4.8">[m
[32m+[m[32m      <Visible>False</Visible>[m
[32m+[m[32m      <ProductName>Microsoft .NET Framework 4.8 %28x86 and x64%29</ProductName>[m
[32m+[m[32m      <Install>true</Install>[m
[32m+[m[32m    </BootstrapperPackage>[m
[32m+[m[32m    <BootstrapperPackage Include="Microsoft.Net.Framework.3.5.SP1">[m
[32m+[m[32m      <Visible>False</Visible>[m
[32m+[m[32m      <ProductName>.NET Framework 3.5 SP1</ProductName>[m
[32m+[m[32m      <Install>false</Install>[m
[32m+[m[32m    </BootstrapperPackage>[m
[32m+[m[32m  </ItemGroup>[m
[32m+[m[32m  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets" />[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/MP-CS-NES.csproj.user b/MP-CS-NES.csproj.user[m
[1mnew file mode 100644[m
[1mindex 0000000..51f6223[m
[1m--- /dev/null[m
[1m+++ b/MP-CS-NES.csproj.user[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8"?>[m
[32m+[m[32m<Project ToolsVersion="Current" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">[m
[32m+[m[32m  <PropertyGroup>[m
[32m+[m[32m    <PublishUrlHistory>publish\</PublishUrlHistory>[m
[32m+[m[32m    <InstallUrlHistory />[m
[32m+[m[32m    <SupportUrlHistory />[m
[32m+[m[32m    <UpdateUrlHistory />[m
[32m+[m[32m    <BootstrapperUrlHistory />[m
[32m+[m[32m    <ErrorReportUrlHistory />[m
[32m+[m[32m    <FallbackCulture>en-US</FallbackCulture>[m
[32m+[m[32m    <VerifyUploadedFiles>false</VerifyUploadedFiles>[m
[32m+[m[32m  </PropertyGroup>[m
[32m+[m[32m</Project>[m
\ No newline at end of file[m
[1mdiff --git a/MP-CS-NES.sln b/MP-CS-NES.sln[m
[1mnew file mode 100644[m
[1mindex 0000000..aeacfcc[m
[1m--- /dev/null[m
[1m+++ b/MP-CS-NES.sln[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m﻿[m
[32m+[m[32mMicrosoft Visual Studio Solution File, Format Version 12.00[m
[32m+[m[32m# Visual Studio Version 17[m
[32m+[m[32mVisualStudioVersion = 17.0.32014.148[m
[32m+[m[32mMinimumVisualStudioVersion = 10.0.40219.1[m
[32m+[m[32mProject("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "MP-CS-NES", "MP-CS-NES.csproj", "{BA52585F-C1A1-4796-B60C-899137EF4815}"[m
[32m+[m[32mEndProject[m
[32m+[m[32mGlobal[m
[32m+[m	[32mGlobalSection(SolutionConfigurationPlatforms) = preSolution[m
[32m+[m		[32mDebug|Any CPU = Debug|Any CPU[m
[32m+[m		[32mRelease|Any CPU = Release|Any CPU[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m	[32mGlobalSection(ProjectConfigurationPlatforms) = postSolution[m
[32m+[m		[32m{BA52585F-C1A1-4796-B60C-899137EF4815}.Debug|Any CPU.ActiveCfg = Debug|Any CPU[m
[32m+[m		[32m{BA52585F-C1A1-4796-B60C-899137EF4815}.Debug|Any CPU.Build.0 = Debug|Any CPU[m
[32m+[m		[32m{BA52585F-C1A1-4796-B60C-899137EF4815}.Release|Any CPU.ActiveCfg = Release|Any CPU[m
[32m+[m		[32m{BA52585F-C1A1-4796-B60C-899137EF4815}.Release|Any CPU.Build.0 = Release|Any CPU[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m	[32mGlobalSection(SolutionProperties) = preSolution[m
[32m+[m		[32mHideSolutionNode = FALSE[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m	[32mGlobalSection(ExtensibilityGlobals) = postSolution[m
[32m+[m		[32mSolutionGuid = {AE381F2F-CC31-49FC-AC19-975F97E90CFF}[m
[32m+[m	[32mEndGlobalSection[m
[32m+[m[32mEndGlobal[m
[1mdiff --git a/Program.cs b/Program.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..4ba62d8[m
[1m--- /dev/null[m
[1m+++ b/Program.cs[m
[36m@@ -0,0 +1,164 @@[m
[32m+[m[32m﻿using PixelEngine;[m
[32m+[m[32musing System;[m
[32m+[m
[32m+[m[32mnamespace SMBClone[m
[32m+[m[32m{[m
[32m+[m[32m    public class SMBClone : Game[m
[32m+[m[32m    {[m
[32m+[m[32m        public Point pos, posPast, collOld, collNew, pointsText;[m
[32m+[m[32m        public int airTime, floor, points, time;[m
[32m+[m[32m        public float veloHor, veloVert;[m
[32m+[m[32m        public bool pressed, midAir;[m
[32m+[m
[32m+[m[32m        static int Main(string[] args)[m
[32m+[m[32m        {[m
[32m+[m[32m            var SMBC = new SMBClone();[m
[32m+[m
[32m+[m[32m            SMBC.Construct(200, 200, 5, 5,30);[m
[32m+[m[32m            SMBC.AppName = "Super Bajs Bros";[m
[32m+[m
[32m+[m
[32m+[m[32m            SMBC.Start();[m
[32m+[m
[32m+[m[41m            [m
[32m+[m[32m            return 0;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        public override void OnCreate()[m
[32m+[m[32m        {[m
[32m+[m[32m            reset();[m
[32m+[m[32m        }[m
[32m+[m[32m        public override void OnUpdate(float elapsed)[m
[32m+[m[32m        {[m
[32m+[m[32m            Clear(Pixel.Presets.Maroon);[m
[32m+[m
[32m+[m
[32m+[m[32m            calcMove();[m
[32m+[m[32m            drawAgent();[m
[32m+[m[32m            debugLog();[m
[32m+[m[32m            pressed = false;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        private void calcMove()[m
[32m+[m[32m        {[m
[32m+[m
[32m+[m[32m            if (pressed)[m
[32m+[m[32m            {[m
[32m+[m[32m                pos = new Point(pos.X + (int)veloHor, pos.Y + (int)veloVert);[m[41m [m
[32m+[m[32m            }[m
[32m+[m[32m            else[m
[32m+[m[32m            {[m
[32m+[m[32m                if (!(veloHor == 0))[m
[32m+[m[32m                    if (veloHor > 0)[m
[32m+[m[32m                        veloHor --;[m
[32m+[m[32m                    else if (veloHor < 0)[m
[32m+[m[32m                        veloHor ++;[m
[32m+[m
[32m+[m[32m                pos = new Point(pos.X + (int)veloHor, pos.Y + (int)veloVert);[m
[32m+[m[32m            }[m
[32m+[m[41m            [m
[32m+[m[32m                if(pos.X < 0)[m
[32m+[m[32m                {[m
[32m+[m[32m                    veloHor = 0;[m
[32m+[m[32m                    pos=new Point(0, pos.Y);[m
[32m+[m[32m                }[m
[32m+[m[32m                if (pos.X >=ScreenWidth)[m
[32m+[m[32m                {[m
[32m+[m[32m                    veloHor = 0;[m
[32m+[m[32m                    pos = new Point(ScreenWidth - 1, pos.Y);[m
[32m+[m[32m                }[m
[32m+[m[32m                if (pos.Y < 0)[m
[32m+[m[32m                {[m
[32m+[m[32m                    veloVert = 0;[m
[32m+[m[32m                    pos = new Point(pos.X, 0);[m
[32m+[m[32m                }[m
[32m+[m[32m                if (pos.Y >= ScreenHeight)[m
[32m+[m[32m                {[m
[32m+[m[32m                    veloVert= 0;[m
[32m+[m[32m                    pos = new Point(pos.X,ScreenHeight - 1);[m
[32m+[m[32m                }[m
[32m+[m[41m                [m
[32m+[m[41m            [m
[32m+[m
[32m+[m
[32m+[m[32m        }[m
[32m+[m[32m        private void drawAgent()[m
[32m+[m[32m        {[m
[32m+[m[32m            DrawText(new Point(10, 10), "Score: "+points, Pixel.Presets.White);[m
[32m+[m
[32m+[m[32m            DrawLine(new Point(0, floor), new Point (ScreenHeight, floor), Pixel.Presets.Brown);[m
[32m+[m
[32m+[m[32m            Draw(pos,Pixel.Presets.Red);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        private void reset()[m
[32m+[m[32m        {[m
[32m+[m[32m            pos = new Point(ScreenHeight/2, ScreenWidth / 2);[m
[32m+[m[32m            pointsText=new Point(10, 10);[m
[32m+[m[32m            veloHor = 0;[m
[32m+[m[32m            veloVert = 0;[m
[32m+[m[32m            floor = ScreenHeight;[m
[32m+[m[32m            points = 0;[m
[32m+[m[32m            time = 0;[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        private void debugLog()[m
[32m+[m[32m        {[m
[32m+[m[32m            System.Console.Write("Horizontal Velocity: {0}  Vertical Velocity: {1}  X:{2}  Y{3} \n",veloHor,veloVert,pos.X,pos.Y);[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        public override void OnKeyDown(Key k)[m
[32m+[m[32m        {[m
[32m+[m[32m            switch (k)[m
[32m+[m[32m            {[m
[32m+[m[32m                case Key.Right:[m
[32m+[m[32m                    if(veloHor<10)[m
[32m+[m[32m                        veloHor += 1;[m
[32m+[m[32m                    pressed = true;[m
[32m+[m[32m                    break;[m
[32m+[m
[32m+[m[32m                case Key.Left:[m
[32m+[m[32m                    if (veloHor > -10)[m
[32m+[m[32m                        veloHor -= 1;[m
[32m+[m[32m                    pressed=true;[m
[32m+[m[32m                    break;[m
[32m+[m
[32m+[m[32m                case Key.Down:[m
[32m+[m[32m                    if (veloVert < 10)[m
[32m+[m[32m                        veloVert += 1;[m
[32m+[m[32m                    pressed=true;[m
[32m+[m[32m                    break;[m
[32m+[m
[32m+[m[32m                case Key.Up:[m
[32m+[m[32m                    if (veloVert > -10)[m
[32m+[m[32m                        veloVert -= 1;[m
[32m+[m[32m                    pressed = true;[m
[32m+[m[32m                    break;[m
[32m+[m
[32m+[m[32m                case Key.R:[m
[32m+[m[32m                    reset();[m
[32m+[m[32m                    break;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        public override void OnKeyRelease(Key k)[m
[32m+[m[32m        {[m
[32m+[m[32m            switch (k)[m
[32m+[m[32m            {[m
[32m+[m[32m                case Key.K8:[m
[32m+[m[32m                    points++;[m
[32m+[m[32m                    break;[m
[32m+[m[32m            }[m
[32m+[m[32m        }[m
[32m+[m
[32m+[m[32m        private bool colision(Point startingPoint, float velocity, int collisionPoint)[m
[32m+[m[32m        {[m
[32m+[m[32m            int endPoint=startingPoint.Y+(int)velocity;[m
[32m+[m
[32m+[m[32m            if (collisionPoint < endPoint)[m
[32m+[m[32m                return true;[m
[32m+[m[32m            else[m
[32m+[m[32m                return false;[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/Properties/AssemblyInfo.cs b/Properties/AssemblyInfo.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..7456f46[m
[1m--- /dev/null[m
[1m+++ b/Properties/AssemblyInfo.cs[m
[36m@@ -0,0 +1,36 @@[m
[32m+[m[32m﻿using System.Reflection;[m
[32m+[m[32musing System.Runtime.CompilerServices;[m
[32m+[m[32musing System.Runtime.InteropServices;[m
[32m+[m
[32m+[m[32m// General Information about an assembly is controlled through the following[m
[32m+[m[32m// set of attributes. Change these attribute values to modify the information[m
[32m+[m[32m// associated with an assembly.[m
[32m+[m[32m[assembly: AssemblyTitle("MP-CS-NES")][m
[32m+[m[32m[assembly: AssemblyDescription("")][m
[32m+[m[32m[assembly: AssemblyConfiguration("")][m
[32m+[m[32m[assembly: AssemblyCompany("")][m
[32m+[m[32m[assembly: AssemblyProduct("MP-CS-NES")][m
[32m+[m[32m[assembly: AssemblyCopyright("Copyright ©  2022")][m
[32m+[m[32m[assembly: AssemblyTrademark("")][m
[32m+[m[32m[assembly: AssemblyCulture("")][m
[32m+[m
[32m+[m[32m// Setting ComVisible to false makes the types in this assembly not visible[m
[32m+[m[32m// to COM components.  If you need to access a type in this assembly from[m
[32m+[m[32m// COM, set the ComVisible attribute to true on that type.[m
[32m+[m[32m[assembly: ComVisible(false)][m
[32m+[m
[32m+[m[32m// The following GUID is for the ID of the typelib if this project is exposed to COM[m
[32m+[m[32m[assembly: Guid("ba52585f-c1a1-4796-b60c-899137ef4815")][m
[32m+[m
[32m+[m[32m// Version information for an assembly consists of the following four values:[m
[32m+[m[32m//[m
[32m+[m[32m//      Major Version[m
[32m+[m[32m//      Minor Version[m
[32m+[m[32m//      Build Number[m
[32m+[m[32m//      Revision[m
[32m+[m[32m//[m
[32m+[m[32m// You can specify all the values or you can default the Build and Revision Numbers[m
[32m+[m[32m// by using the '*' as shown below:[m
[32m+[m[32m// [assembly: AssemblyVersion("1.0.*")][m
[32m+[m[32m[assembly: AssemblyVersion("1.0.0.0")][m
[32m+[m[32m[assembly: AssemblyFileVersion("1.0.0.0")][m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..b6dc018[m
Binary files /dev/null and b/README.md differ
[1mdiff --git a/bin/Debug/MP-CS-NES.exe b/bin/Debug/MP-CS-NES.exe[m
[1mnew file mode 100644[m
[1mindex 0000000..c27733f[m
Binary files /dev/null and b/bin/Debug/MP-CS-NES.exe differ
[1mdiff --git a/bin/Debug/MP-CS-NES.exe.config b/bin/Debug/MP-CS-NES.exe.config[m
[1mnew file mode 100644[m
[1mindex 0000000..193aecc[m
[1m--- /dev/null[m
[1m+++ b/bin/Debug/MP-CS-NES.exe.config[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" ?>[m
[32m+[m[32m<configuration>[m
[32m+[m[32m    <startup>[m[41m [m
[32m+[m[32m        <supportedRuntime version="v4.0" sku=".NETFramework,Version=v4.8" />[m
[32m+[m[32m    </startup>[m
[32m+[m[32m</configuration>[m
\ No newline at end of file[m
[1mdiff --git a/bin/Debug/MP-CS-NES.pdb b/bin/Debug/MP-CS-NES.pdb[m
[1mnew file mode 100644[m
[1mindex 0000000..1f6d717[m
Binary files /dev/null and b/bin/Debug/MP-CS-NES.pdb differ
[1mdiff --git a/bin/Debug/PixelEngine.dll b/bin/Debug/PixelEngine.dll[m
[1mnew file mode 100644[m
[1mindex 0000000..b11215c[m
Binary files /dev/null and b/bin/Debug/PixelEngine.dll differ
[1mdiff --git a/bin/Release/MP-CS-NES.exe b/bin/Release/MP-CS-NES.exe[m
[1mnew file mode 100644[m
[1mindex 0000000..db27a60[m
Binary files /dev/null and b/bin/Release/MP-CS-NES.exe differ
[1mdiff --git a/bin/Release/MP-CS-NES.exe.config b/bin/Release/MP-CS-NES.exe.config[m
[1mnew file mode 100644[m
[1mindex 0000000..193aecc[m
[1m--- /dev/null[m
[1m+++ b/bin/Release/MP-CS-NES.exe.config[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m﻿<?xml version="1.0" encoding="utf-8" ?>[m
[32m+[m[32m<configuration>[m
[32m+[m[32m    <startup>[m[41m [m
[32m+[m[32m        <supportedRuntime version="v4.0" sku=".NETFramework,Version=v4.8" />[m
[32m+[m[32m    </startup>[m
[32m+[m[32m</configuration>[m
\ No newline at end of file[m
[1mdiff --git a/bin/Release/MP-CS-NES.pdb b/bin/Release/MP-CS-NES.pdb[m
[1mnew file mode 100644[m
[1mindex 0000000..4631420[m
Binary files /dev/null and b/bin/Release/MP-CS-NES.pdb differ
[1mdiff --git a/bin/Release/PixelEngine.dll b/bin/Release/PixelEngine.dll[m
[1mnew file mode 100644[m
[1mindex 0000000..b11215c[m
Binary files /dev/null and b/bin/Release/PixelEngine.dll differ
[1mdiff --git a/mario.png b/mario.png[m
[1mnew file mode 100644[m
[1mindex 0000000..a061606[m
Binary files /dev/null and b/mario.png differ
[1mdiff --git a/obj/Debug/.NETFramework,Version=v4.8.AssemblyAttributes.cs b/obj/Debug/.NETFramework,Version=v4.8.AssemblyAttributes.cs[m
[1mnew file mode 100644[m
[1mindex 0000000..15efebf[m
[1m--- /dev/null[m
[1m+++ b/obj/Debug/.NETFramework,Version=v4.8.AssemblyAttributes.cs[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m// <autogenerated />[m
[32m+[m[32musing System;[m
[32m+[m[32musing System.Reflection;[m
[32m+[m[32m[assembly: global::System.Runtime.Versioning.TargetFrameworkAttribute(".NETFramework,Version=v4.8", FrameworkDisplayName = ".NET Framework 4.8")][m
[1mdiff --git a/obj/Debug/DesignTimeResolveAssemblyReferencesInput.cache b/obj/Debug/DesignTimeResolveAssemblyReferencesInput.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..7bfe51c[m
Binary files /dev/null and b/obj/Debug/DesignTimeResolveAssemblyReferencesInput.cache differ
[1mdiff --git a/obj/Debug/MP-CS-NES.csproj.AssemblyReference.cache b/obj/Debug/MP-CS-NES.csproj.AssemblyReference.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..9e053d2[m
Binary files /dev/null and b/obj/Debug/MP-CS-NES.csproj.AssemblyReference.cache differ
[1mdiff --git a/obj/Debug/MP-CS-NES.csproj.CopyComplete b/obj/Debug/MP-CS-NES.csproj.CopyComplete[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/obj/Debug/MP-CS-NES.csproj.CoreCompileInputs.cache b/obj/Debug/MP-CS-NES.csproj.CoreCompileInputs.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..fdb8c16[m
[1m--- /dev/null[m
[1m+++ b/obj/Debug/MP-CS-NES.csproj.CoreCompileInputs.cache[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m616fc58194a4a9d84878de4348bb76e68d29f051[m
[1mdiff --git a/obj/Debug/MP-CS-NES.csproj.FileListAbsolute.txt b/obj/Debug/MP-CS-NES.csproj.FileListAbsolute.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..818263f[m
[1m--- /dev/null[m
[1m+++ b/obj/Debug/MP-CS-NES.csproj.FileListAbsolute.txt[m
[36m@@ -0,0 +1,9 @@[m
[32m+[m[32mH:\DEV\MP-CS-NES\bin\Debug\MP-CS-NES.exe.config[m
[32m+[m[32mH:\DEV\MP-CS-NES\bin\Debug\MP-CS-NES.exe[m
[32m+[m[32mH:\DEV\MP-CS-NES\bin\Debug\MP-CS-NES.pdb[m
[32m+[m[32mH:\DEV\MP-CS-NES\obj\Debug\MP-CS-NES.csproj.AssemblyReference.cache[m
[32m+[m[32mH:\DEV\MP-CS-NES\obj\Debug\MP-CS-NES.csproj.SuggestedBindingRedirects.cache[m
[32m+[m[32mH:\DEV\MP-CS-NES\obj\Debug\MP-CS-NES.csproj.CoreCompileInputs.cache[m
[32m+[m[32mH:\DEV\MP-CS-NES\obj\Debug\MP-CS-NES.csproj.CopyComplete[m
[32m+[m[32mH:\DEV\MP-CS-NES\obj\Debug\MP-CS-NES.exe[m
[32m+[m[32mH:\DEV\MP-CS-NES\obj\Debug\MP-CS-NES.pdb[m
[1mdiff --git a/obj/Debug/MP-CS-NES.csproj.SuggestedBindingRedirects.cache b/obj/Debug/MP-CS-NES.csproj.SuggestedBindingRedirects.cache[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/obj/Debug/MP-CS-NES.exe b/obj/Debug/MP-CS-NES.exe[m
[1mnew file mode 100644[m
[1mindex 0000000..c27733f[m
Binary files /dev/null and b/obj/Debug/MP-CS-NES.exe differ
[1mdiff --git a/obj/Debug/MP-CS-NES.pdb b/obj/Debug/MP-CS-NES.pdb[m
[1mnew file mode 100644