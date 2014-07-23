package gui;

import flash.events.Event;

class CEvent extends Event {
	public function new (type : String, bubbles : Bool = false, cancelable : Bool = false) {
		super(type, bubbles, cancelable);
	}
}