# hxp-GUI

## About

This project is an attempt at creating a simple way of adding a graphical user interface to a HaxePunk project.

Currently it is not exactly graphical, although it offers the functionality necessary for making a title screen, for example.

This repository builds to an example with two scenes and a total of three options, two of which allow for changing between scenes.

Developed and tested on:
* Haxe 3.1.1
* HaxePunk 2.5.2
* lime 0.9.6
* lime-tools 1.3.0
* openfl 1.3.0

It should work for mobile targets as well as it does for the desktop ones.

## How it works

The `MousePointer` class is used to create an `Entity` which poses as the user's mouse pointer on the `Scene`.

The `Option` class is used to create an `Entity` which has its `graphic` property set to a string (with the use of the  `com.haxepunk.graphics.Text` class).

Both the `MousePointer` and the `Option` class have their own hitboxes. When they collide and the mouse button is pressed, the `handle()` function in the `MousePointer` class returns `true`, else it returns `false`. This way it is possible to use conditional statements in order to adjust control flow.
