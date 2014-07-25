# hxp-GUI 0.2.1

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

As version 0.2.0, the entirety of the project was rewritten and restructured.

### Version 0.2.1

**CEvent.hx**
* Added `public var senderID` - it is now possible to pass the
dispatcher's ID when dispatching custom events. The ID is stored in
`senderID` and can be read from in order to identify the event sender.
Useful when a single function is listening for events from mutliple
dispatchers.
* Added comments.

**Button.hx**
* Added `public var label` - `Button` objects have text labels as
graphics. Changing the `label` variable automatically updates the
object's visuals.
* Added `alignment` parameter to constructor - see **Control.hx**.
* Added `newSize` parameter - it is now possible to specify the font
size of `Button` object label text.
* Added `private var _textOptions` - stores label text information, such
as font size.
* Added comments.

**Control.hx**
* Added `enum abstract Alignment(String)` - defines values used in
`setRoot`.
* Added `MOUSE_DOWN` and `MOUSE UP` event types.
* Added `public var ID` - stores `Control` object (or subcalls object)
ID. See **CEvent.hx**.
* Added `public var alignment` - stores Alignment value.
* Bugfix to MOUSE_OVER event type.
* Added `public function setRoot` method - sets object root position
(alignment) depending on method parameter. See code comments.
* Added comments.

## How it works

`CEvent` is a custom Event class, currently not in any way different from the class it extends. It's there because I feel like I may need to add to it in the future, but at this point in time it could be dropped for a regular flash.events.Event class.

`Control` is the parent class to all control classes. It implements IEventDispatcher and defines event dispatcher and listener methods.

`Button` describes a control element and therefore extends the Control class.

`Label` extends Entity and describes a simple text field.

An unfinished three-button example is available in the TitleScene class. Clicking the first button increments a click counter displayed by a label. The second button turns label visibility to true / false. The third button resets the click counter to zero.
