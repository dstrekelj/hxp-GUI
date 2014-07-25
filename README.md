# hxp-GUI 0.2.0

## About

hxp-GUI is an attempt at creating a simple way of adding a graphical user interface to a HaxePunk project.

Developed and tested on:
* Haxe 3.1.1
* HaxePunk 2.5.2
* lime 0.9.6
* lime-tools 1.3.0
* openfl 1.3.0

It should work for mobile targets as well as desktop ones.

Thanks go out to Lythom, whose work on HaxePunk-gui inspired this project.

## Changelog / What's new?

As version 0.2.x, the entirety of the project was rewritten and restructured.

## How it works

`CEvent` is a custom Event class, currently not in any way different from the class it extends. It's there because I feel like I may need to add to it in the future, but at this point in time it could be dropped for a regular flash.events.Event class.

`Control` is the parent class to all control classes. It implements IEventDispatcher and defines event dispatcher and listener methods.

`Button` describes a control element and therefore extends the Control class.

`Label` extends Entity and describes a simple text field.

An unfinished three-button example is available in the TitleScene class. Clicking the first button increments a click counter displayed by a label. The second button turns label visibility to true / false. The third button resets the click counter to zero.
