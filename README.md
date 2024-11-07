# Jak 2 Hover Enemy Battle Hack

### About

This branch have the purpose of allowing the user to make custom hover battles, like those from Drill Platform turrets missions, in custom levels, due to the fact that custom levels don't support `actor-groups`, which is an array of entities references that stores actors and the approach used in the game for setting up the hover battle actors. So, I made a diferent approach that makes it possible to have hover battles in custom levels. In the following topics I'm going to discuss about its usage and some extra stuff. 

It's important to mention that I made a example of custom hover battle in this branch, so it's intersting to you take a look in that in order to better understand how to set up your own custom hover battle in your custom level! 

### List of all important files from this branch

Here I'm going to list all the files that you have to take a look, so you can understand how this hack really works and what you have to do in order to add a custom hover battle in your custom levels. It's important to mention that all these files have comments for better comphrension:

- `custom_assets/jak2/levels/hover-test/hover-test.gd` **this file have all the necessary code that should be used.**
- `custom_assets/jak2/levels/hover-test/hover-test.jsonc` **this file have all the actors and their necessary setup in order to make the custom hover battle working.**
- `goal_scr/jak2/engine/level/level-info.gc` **this file have the definitions from the example custom level.**
- `goal_scr/jak2/levels/common/enemy/hover/hover-enemy-battle.gc` **the main part of this hack. Contains all the changes to handle with custom hover battles.**
- `goal_scr/jak2/engine/target/target-turret.gc` **this file have some important defenitions for the turret.**
- `goal_scr/jak2/levels/drill/drill-turret.gc` **this file have some required definitions for the turret to handle with your custom hover battle.**
- `goal_scr/jak2/levels/common/enemy/hover/hover-nav-network.gc` **this file contains an example of the definitions of the Adjancencies list required for allowing hover enemies to move through them. (This will be discused later!)**
- `goal_scr/jak2/levels/hover-test/hover-test-setup.gc` **an extra code added to alloc the example hover-nav-network in memory while the custom level is being loaded. (This will be discused later!)**

### Creating your own custom hover battle

For creating your own custom hover battle it's important to you at least take a little look in how those hover battles are setup. So, I recommend you to go to **Drill Platform** and check out the **Debug Menu** in `Entity/Pick Entity` and search for the following entities:

- turret-10
- turret-11
- turret-12
- turret-13
- turret-14
- turret-15

- hover-formation-4
- hover-formation-5
- hover-formation-6
- hover-formation-7
- hover-formation-8
- hover-formation-9

- wasp-31.....
- crimson-guard-hover-10.....

So, those are the most important entities for better understanding how hover battles should be setup in your custom levels.

Now, I'm going to explain how you should define all the hover enemies actors you want to use in your custom hover battle. First of all, if you already checked some of the turrets entities mentioned above, you probably must have noticed that all of them have a `actor-groups` in there, and that some of them have `wasp`s or `crimson-guard-hover`s entities in each `GROUP`, as you can see in the following image:

![png1](https://github.com/user-attachments/assets/564beb55-670f-459a-9f08-77b741533ee0)

Basically, in this case, each `GROUP` from these `actor-groups` represents a wave from the hover battle and each one of these waves stores all the actors used in each of them. But, the approach used in this hack will be a bit diferent as we can't define `actor-groups` in custom levels yet. So, instead of them, we are going to use the following logic:

![png2](https://github.com/user-attachments/assets/b4a85a2a-a2ad-4646-9b96-49b2ddfa7f21)

As you can see, we have to define: `first-wave`, `second-wave`, `third-wave`, `fourth-wave` and `fifth-wave`, depending of how many waves you want, but for now, **you can add up to 5 waves!**

Okay, but, how should the hover enemies actors added in your custom level `.jsonc` file be set up? Well, following the next steps you will understand how to do that as well as adding the required stuff for your custom hover battle:

First, in your custom level `.gd` file, you must include the following codes:

![png11](https://github.com/user-attachments/assets/f8dffdd6-fa69-45a3-9eb7-7bf00479a19a)

Next, in your custom level `.jsonc` file, in order to add a `wasp` actor, for example, it should look something like this:

![png9](https://github.com/user-attachments/assets/c7e608c2-421c-4ecd-916f-28738f2747c6)

After that, you have to add the `hover-formation` actor too, as well as pass its `aid` inside your `wasp` actor `alt-actor` in order to reference `wasp` to the `hover-formation` actor:

![png10](https://github.com/user-attachments/assets/e64325af-bb2c-480d-85bc-0cf5db398c43)

Also, inside the `hover-formation` actor, you have to add a `alt-actor` passing the `aid` from the turret actor, which its setup will be explained soon.

**Note: I recommend you to add an `"aid": id value` in every actor from your custom level, like you could see in the images above. If you don't add it, this may cause some kind of issue, because custom level actors have a really small `aid` as default and maybe this can cause some conflict with another actor and if you change/remove it from some position, this will change the `aid` from others. So, make sure to add it for every actor, and add a higher value, like: `10000`, for example.**

For last, you have to add the turret actor in your `.jsonc` file and add some important stuff in there.

In order to add them you have to follow this logic here:

![png3](https://github.com/user-attachments/assets/55d3331a-6f46-414d-b816-5d110f29e79f)

So, you have to pass the `aid`s from your hover actors in there for referencing each of these waves. You don't necessary need to add all the five waves, you can add how many you want, for example, if you want two waves, then add `first-wave` and `second-wave` by passing the actors `aid` that you want for each of them. 

**Note: I highly recommend you to check out the example I made of a custom hover battle, so, go to: `custom_assets/jak2/levels/hover-test/hover-test.jsonc` in order to understand the process of setting up your custom hover battle in your custom level!**

After setting up all the necessary actors, now you need to go to: `goal_scr/jak2/levels/drill/drill-turret.gc` and add some required stuff for making your custom hover battle working.

Well, after accessing the file, I recomend you checking the following:

![png7](https://github.com/user-attachments/assets/a22633ad-33bb-407b-9fc6-b48f18054971)

and:

![png8](https://github.com/user-attachments/assets/f62e77b1-e16c-429a-91e7-f0666bff3d8c)

These stuff are what I added for handling with the example custom hover battle. Basically, that's the same process you need to do in this file in case you want to add a new custom hover battle. The first image shows an array responsible in controlling the hover battle, so, check out the comments I wrote in there for better understanding that. Also, in the second image, is showing a small code I added inside a `cond` from `turret-init!` method, which is very important! This is responsible to spawn the hover battle and spawn the counter HUD. But, it's important to mention for not changing `use-egg-hud` or `use-cgh-hud` to `#t` when you don't have the levels that contains these HUD definitions loaded, otherwise, the game will crash! The same applies for `use-wasp-hud` which is a custom HUD that I added for this example in: `goal_scr/jak2/levels/hover-test/hover-test-setup.gc.gc`, so if you don't have this file included inside your custom level `.gd` file, the game will crash!

### Adding a custom hover-nav-network

An `hover-nav-network` is basically a nav mesh for hover enemies, but unlike nav meshes, they are defined in: `goal_scr/jak2/levels/hover-test/hover-test-setup.gc`, so you can define your own `hover-nav-network` in there. Also, the following image is showing a visual representation of a `hover-nav-network` in game:

![png4](https://github.com/user-attachments/assets/16c4ffe4-6316-4ff6-af2b-2b751c7fba56)

For enabling the visual representation from `hover-nav-network`, go to: `Actor/Hover Marks/Nav Network`.

Now, I will show part of the example I made of an `hover-nav-network` used in the example hover battle through code:

![png12](https://github.com/user-attachments/assets/4368c331-f0d7-421e-a867-ecbec33ee831)

Also, in case you are confused and want to understand better about `hover-nav-network` and how they really work, I recommend you to check this: https://en.m.wikipedia.org/wiki/Adjacency_list. This explains about `Adjacency List` which is basically what `hover-nav-network` are. It's interesting to check them in game and analyze in code for better understanding how they are defined.

Next, the following images shows the example I made for allocating the `hover-nav-network` used in the example hover battle in memory, while the level is being loaded.

In order to do this, the logic will be this:

`goal_scr/jak2/engine/level/level-info.gc`

![png13](https://github.com/user-attachments/assets/3f2f8ee3-4810-4cc8-82dc-75ef92ef3896)

`goal_scr/jak2/levels/hover-test/hover-test-setup.gc`

![png14](https://github.com/user-attachments/assets/dfaf15a1-7401-4aeb-a942-fcf3aaf5404e)

**Note: You need to obligatory define your `hover-nav-network` in your custom level, otherwise, the game will crash!**

<p align="center">
  <img width="500" height="100%" src="./docs/img/logo-text-colored-new.png">
</p>

<p align="center">
  <a href="https://opengoal.dev/docs/intro" rel="nofollow"><img src="https://img.shields.io/badge/Documentation-Here-informational" alt="Documentation Badge" style="max-width:100%;"></a>
  <a title="Crowdin" target="_blank" href="https://crowdin.com/project/opengoal"><img src="https://badges.crowdin.net/opengoal/localized.svg"></a>
  <a target="_blank" rel="noopener noreferrer" href="https://github.com/open-goal/jak-project/actions/workflows/build-matrix.yaml"><img src="https://github.com/open-goal/jak-project/actions/workflows/build-matrix.yaml/badge.svg" alt="Linux and Windows Build" style="max-width:100%;"></a>
  <a href="https://www.codacy.com/gh/open-goal/jak-project/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=open-goal/jak-project&amp;utm_campaign=Badge_Grade" rel="nofollow"><img src="https://app.codacy.com/project/badge/Grade/29316d04a1644aa390c33be07289f3f5" alt="Codacy Badge" style="max-width:100%;"></a>
  <a href="https://discord.gg/VZbXMHXzWv"><img src="https://img.shields.io/discord/756287461377703987" alt="Discord"></a>
</p>

## Please read first <!-- omit from toc -->

> [!IMPORTANT]
> Our repositories on GitHub are primarily for development of the project and tracking active issues. Most of the information you will find here pertains to setting up the project for development purposes and is not relevant to the end-user.

For a setup guide on how to install and play the game there is the following video that you can check out: https://youtu.be/K84UUMnkJc4

For questions or additional information pertaining to the project, we have a Discord for discussion here: https://discord.gg/VZbXMHXzWv

Additionally, you can find further documentation and answers to **frequently asked questions** on the project's main website: https://opengoal.dev

> [!WARNING]
> **Do not use this decompilation project without providing your own legally purchased copy of the game.** We do not distribute any assets from the game - you must use your own legitimately obtained PS2 copy of the game. We support every retail PAL, NTSC, and NTSC-J build, including Greatest Hits copies.

- [Project Description](#project-description)
  - [Current Status](#current-status)
  - [Methodology](#methodology)
- [Setting up a Development Environment](#setting-up-a-development-environment)
  - [Docker](#docker)
  - [Linux](#linux)
    - [Ubuntu (20.04)](#ubuntu-2004)
    - [Arch](#arch)
    - [Fedora](#fedora)
  - [Windows](#windows)
    - [Required Software](#required-software)
    - [Using Visual Studio](#using-visual-studio)
  - [MacOS](#macos)
    - [Intel Based](#intel-based)
    - [Apple Silicon](#apple-silicon)
  - [VSCode](#vscode)
    - [Building and Debugging](#building-and-debugging)
  - [Building and Running the Game](#building-and-running-the-game)
    - [Extract Assets](#extract-assets)
    - [Build the Game](#build-the-game)
    - [Run the Game](#run-the-game)
      - [Connecting the REPL to the Game](#connecting-the-repl-to-the-game)
      - [Running the Game Without Auto-Booting](#running-the-game-without-auto-booting)
    - [Interacting with the Game](#interacting-with-the-game)
- [Technical Project Overview](#technical-project-overview)
  - [`goalc`](#goalc)
    - [Running the compiler](#running-the-compiler)
  - [`decompiler`](#decompiler)
    - [Running the decompiler](#running-the-decompiler)
  - [`goal_src/`](#goal_src)
  - [`game` runtime](#game-runtime)

## Project Description

This project is to port the original Jak and Daxter and Jak II to PC. Over 98% of the games are written in GOAL, a custom Lisp language developed by Naughty Dog. Our strategy is:
- decompile the original game code into human-readable GOAL code
- develop our own compiler for GOAL and recompile game code for x86-64
- create a tool to extract game assets into formats that can be easily viewed or modified
- create tools to repack game assets into a format that our port uses.

Our objectives are:
- make the port a "native application" on x86-64, with high performance. It shouldn't be emulated, interpreted, or transpiled.
- Our GOAL compiler's performance should be around the same as unoptimized C.
- try to match things from the original game and development as possible. For example, the original GOAL compiler supported live modification of code while the game is running, so we do the same, even though it's not required for just porting the game.
- support modifications. It should be possible to make edits to the code without everything else breaking.

We support both Linux and Windows on x86-64.

> We do not support, or plan to support the ARM architecture.  This means that this will not run on devices such as an M1 Mac or a mobile device.

### Current Status

Jak 1 is largely playable from start to finish with a handful of bugs that are continually being ironed out. Jak 2 is in development.

![](./docs/img/promosmall1.png)
![](./docs/img/promosmall2.png)

YouTube playlist:
https://www.youtube.com/playlist?list=PLWx9T30aAT50cLnCTY1SAbt2TtWQzKfXX

### Methodology

To help with decompiling, we've built a decompiler that can process GOAL code and unpack game assets. We manually specify function types and locations where we believe the original code had type casts (or where they feel appropriate) until the decompiler succeeds, then we clean up the output of the decompiled code by adding comments and adjusting formatting, then save it in `goal_src`.

Our decompiler is designed specifically for processing the output of the original GOAL compiler. As a result, when given correct casts, it often produces code that can be directly fed into a compiler and works perfectly. This is continually tested as part of our unit tests.

## Setting up a Development Environment

The remainder of this README is catered towards people interested in building the project from source, typically with the intention on contributing as a developer.

If this does not sound like you and you just want to play the game, refer to the above section [Quick Start](#quick-start)

### Docker

All three Linux systems are supported using Docker. 

Pick your supported prefered flavour of linux and build your chosen image

```
docker build -f docker/(Arch|Fedora|Ubuntu)/Dockerfile -t jak .
```

This will create an image with all required dependencies and already built.

```
docker run -v "$(pwd)"/build:/home/jak/jak-project/build -it jak bash
```

Note: If you change the content of the `build/` directory you'll need to rerun the `build` command. Alternatively you can get the build via `docker cp`.

This will link your `build/` folder to the images so can validate your build or test it on an external device. 

Docker images can be linked into your IDE (e.g. CLion) to help with codesniffing, static analysis, run tests and continuous build.

Unfortunately you'll still need task runner on your local machine to run the game or instead, manually run the game via the commands found in `Taskfile.yml`.

### Linux

#### Ubuntu (20.04)

Install packages and init repository:

```sh
sudo apt install gcc make cmake ninja-build build-essential g++ nasm clang-format libxrandr-dev libxinerama-dev libxcursor-dev libpulse-dev libxi-dev python libgl1-mesa-dev libssl-dev
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
```

Compile:

```sh
cmake -B build && cmake --build build -j 8
```

Run tests:

```sh
./test.sh
```

Note: we have found that `clang` and `lld` are significantly faster to compile and link than `gcc`, generate faster code, and have better warning messages. To install these:

```sh
sudo apt install lld clang
```

and run `cmake` (in a fresh build directory) with:

```sh
cmake -DCMAKE_SHARED_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ ..
```

#### Arch

Install packages and init repository:

```sh
sudo pacman -S cmake libpulse base-devel nasm python libx11 libxrandr libxinerama libxcursor libxi
yay -S go-task
```

For Arch only, replace `task` with `go-task` in the rest of the instructions.

Compile:

```sh
cmake -B build && cmake --build build -j 8
```

Run tests:

```sh
./test.sh
```

#### Fedora

Install packages and init repository:

```sh
sudo dnf install cmake python lld clang nasm libX11-devel libXrandr-devel libXinerama-devel libXcursor-devel libXi-devel pulseaudio-libs-devel mesa-libGL-devel
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
```

Compile with `clang`:

```sh
cmake -DCMAKE_SHARED_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=lld" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -B build
cmake --build build -j$(nproc)
```

Run tests:

```sh
./test.sh
```

### Windows

#### Required Software

We primarily use Visual Studio on Windows for C++ development.  Download the latest community edition from [here](https://visualstudio.microsoft.com/vs/).  At the time of writing this is Visual Studio 2022.

You will require the `Desktop development with C++` workload.  This can be selected during the installation, or after via the `Visual Studio Installer`, modifying the Visual Studio Installation.

On Windows, it's recommended to use a package manager, we use Scoop. Follow the steps on the bottom of the homepage [here](https://scoop.sh/) to get it.

Once Scoop is installed, run the following commands:

```sh
scoop install git llvm nasm python task
```

#### Using Visual Studio

Clone the repository by running the following command in your folder of choice.

```sh
git clone https://github.com/open-goal/jak-project.git
```

This will create a `jak-project` folder, open the project as a CMake project via Visual Studio.

![](./docs/img/windows/open-project.png)

Then build the entire project as `Windows Release (clang)`. You can also press Ctrl+Shift+B as a hotkey for Build All.  We currently prefer `clang` on Windows as opposed to `msvc`, though it should work as well!

![](./docs/img/windows/release-build.png)
![](./docs/img/windows/build-all.png)

### MacOS

> NOTE: At this time you can only run the game on macOS if you have an Intel processor.

Ensure that you have Xcode command line tools installed (this installs things like Apple Clang).  If you don't, you can run the following command:

```bash
xcode-select --install
```

#### Intel Based

```bash
brew install cmake nasm ninja go-task clang-format
cmake -B build --preset=Release-macos-clang
cmake --build build --parallel $((`sysctl -n hw.logicalcpu`))
```

#### Apple Silicon

**Not Supported at This Time**

```bash
brew install cmake ninja go-task clang-format
cmake -B build --preset=Release-macos-clang
cmake --build build --parallel $((`sysctl -n hw.logicalcpu`))
```

You may have to add the MacOS SDK to your `LIBRARY_PATH`:
- `export LIBRARY_PATH="$LIBRARY_PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib"`

### VSCode

If you either don't want to or cannot use Visual Studio for working with the C++ project, VSCode is a good alternatively.

The `clangd` extension is [recommended](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd) and requires `clangd` to be on your `$PATH`.  If you can run `clangd` in a terminal successfully then you should be good to go.

Once you generate your CMake for the first time the clangd LSP should be able to index the project and give you intellisense.

#### Building and Debugging

TODO - Consider Contributing Documentation :)

### Building and Running the Game

Getting a running game involves 4 steps:

1. Build C++ tools (follow Getting Started steps above for your platform)
2. Extract assets from the game
3. Build the game
4. Run the game

#### Extract Assets

First, setup your settings so the following scripts know which game you are using, and which version. For the black label version of the game, run the following in a terminal:

```sh
task set-game-jak1
task set-decomp-ntscv1
```

For other versions of the game, you will need to use a different `-set-decomp-<VERSION>` command. An example for the PAL version:

```sh
task set-game-jak1
task set-decomp-pal
```

> Run `task --list` to see the other available options

> At the time of writing, only Jak 1 is expected to work end-to-end!

The first step is to extract your ISO file contents into the `iso_data/<game-name>` folder.  In the case of Jak 1 this is `iso_data/jak1`.

Once this is done, open a terminal in the `jak-project` folder and run the following:

```sh
task extract
```

#### Build the Game

The next step is to build the game itself.  To do so, in the same terminal run the following:

```sh
task repl
```

You will be greeted with a prompt like so:

```sh
 _____             _____ _____ _____ __
|     |___ ___ ___|   __|     |  _  |  |
|  |  | . | -_|   |  |  |  |  |     |  |__
|_____|  _|___|_|_|_____|_____|__|__|_____|
      |_|
Welcome to OpenGOAL 0.8!
Run (repl-help) for help with common commands and REPL usage.
Run (lt) to connect to the local target.

g >
```

Run the following to build the game:

```sh
g > (mi)
```

> IMPORTANT NOTE! If you're not using the non-default version of the game, you may hit issues trying to run `(mi)` in this step. An example error might include something like:
>
> `Input file iso_data/jak1/MUS/TWEAKVAL.MUS does not exist.`
>
> This is because the decompiler inputs/outputs using the `gameName` JSON field in the decompiler config. For example if you are using Jak 1 PAL, it will assume `iso_data/jak1_pal` and `decompiler_out/jak1_pal`.  Therefore, you can inform the REPL/compiler of this via the `gameVersionFolder` config field described [here](./goal_src/user/README.md)

#### Run the Game

Finally the game can be ran.  Open a second terminal from the `jak-project` directory and run the following:

```sh
task boot-game
```

The game should boot automatically if everything was done correctly.

##### Connecting the REPL to the Game

Connecting the REPL to the game allows you to inspect and modify code or data while the game is running.

To do so, in the REPL after a successful `(mi)`, run the following:

```sh
g > (lt)
```

If successful, your prompt should change to:

```sh
gc>
```

For example, running the following will print out some basic information about Jak:

```sh
gc> *target*
```

##### Running the Game Without Auto-Booting

You can also start up the game without booting.  To do so run the following in one terminal

```sh
task run-game
```

And then in your REPL run the following (after a successful `(mi)`):

```sh
g > (lt)
[Listener] Socket connected established! (took 0 tries). Waiting for version...
Got version 0.8 OK!
[Debugger] Context: valid = true, s7 = 0x147d24, base = 0x2123000000, tid = 2438049

gc> (lg)
10836466        #xa559f2              0.0000        ("game" "kernel")

gc> (test-play)
(play :use-vis #t :init-game #f) has been called!
0        #x0              0.0000        0

gc>
```

#### Interacting with the Game

In the graphics window, you can use the period key to bring up the debug menu. Controllers also work, using the same mapping as the original game.

Check out the `pc_debug`, `examples` and `pc` folders under `goal_src` for some examples of GOAL code we wrote. The debug files that are not loaded automatically by the engine have instructions for how to run them.

## Technical Project Overview

There are four main components to the project.

1. `goalc` - the GOAL compiler for x86-64
2. `decompiler` - our decompiler
3. `goal_src/` - the folder containing all OpenGOAL / GOOS code
4. `game` - aka the runtime written in C++

Let's break down each component.

### `goalc`

Our implementation of GOAL is called OpenGOAL.

All of the compiler source code is in `goalc/`. The compiler is controlled through a prompt which can be used to enter commands to compile, connect to a running GOAL program for interaction, run the OpenGOAL debugger, or, if you are connected to a running GOAL program, can be used as a REPL to run code interactively. In addition to compiling code files, the compiler has features to pack and build data files.

#### Running the compiler

**Environment Agnostic**

If you have installed `task` as recommended above, you can run the compiler with `task repl`

**Linux**

To run the compiler on Linux, there is a script `scripts/shell/gc.sh`.

**Windows**

On Windows, there is a `scripts/batch/gc.bat` scripts and a `scripts/batch/gc-no-lt.bat` script, the latter of which will not attempt to automatically attach to a running target.

### `decompiler`

The second component to the project is the decompiler.

The decompiler will output code and other data intended to be inspected by humans in the `decompiler_out` folder. Files in this folder will not be used by the compiler.

#### Running the decompiler

You must have a copy of the PS2 game and place all files from the DVD inside a folder corresponding to the game within `iso_data` folder (`jak1` for Jak 1 Black Label, etc.), as seen in this picture:

![](./docs/img/iso_data-help.png)

The decompiler will extract assets to the `assets` folder. These assets will be used by the compiler when building the port, and you may want to turn asset extraction off after running it once.

**Environment Agnostic**

If you have installed `task` as recommended above, you can run the compiler with `task decomp`

**Linux**

To run, you can use `scripts/shell/decomp.sh` to run the decompiler

**Windows**

To run, you can use `scripts/shell/decomp-jak1.bat` to run the decompiler

### `goal_src/`

The game source code, written in OpenGOAL, is located in `goal_src`. All GOAL and GOOS code should be in this folder.

### `game` runtime

The final component is the "runtime", located in `game`. This is the part of the game that's written in C++.

In the port, that includes:
- The "C Kernel", which contains the GOAL linker and some low-level GOAL language features. GOAL has a completely custom dynamically linked object file format so in order to load the first GOAL code, you need a linker written in C++. Some low-level functions for memory allocation, communicating with the I/O Processor, symbol table, strings, and the type system are also implemented in C, as these are required for the linker. It also listens for incoming messages from the compiler and passes them to the running game. This also initializes the game, by initializing the PS2 hardware, allocating the GOAL heaps, loading the GOAL kernel off of the DVD, and executing the kernel dispatcher function. This is in the `game/kernel` folder. This should be as close as possible to the game, and all differences should be noted with a comment.
- Implementation of Sony's standard library. GOAL code can call C library functions, and Naughty Dog used some Sony library functions to access files, memory cards, controllers, and communicate with the separate I/O Processor. The library functions are in `game/sce`. Implementations of library features specific to the PC port are located in `game/system`.
- The I/O Processor driver, OVERLORD. The PS2 had a separate CPU called the I/O Processor (IOP) that was directly connected to the DVD drive hardware and the sound hardware. Naughty Dog created a custom driver for the IOP that handled streaming data off of the DVD. It is much more complicated than I first expected. It's located in `game/overlord`. Like the C kernel, we try to keep this as close as possible to the actual game.
- Sound code. Naughty Dog used a third party library for sound called `989SND`. Code for the library and an interface for it is located in `game/sound`.
- PC specific graphics code. We have a functional OpenGL renderer and context that can create a game window and display graphics on it. The specific renderers used by the game however are mostly implemented. Aside from post-processing effects, everything in the game is rendered. This is located in `game/graphics`. While many liberties will be taken to make this work, the end result should very closely match the actual game.
- Extra assets used by the port in some fashion, located in `game/assets`. These include extra text files, icons, etc.
