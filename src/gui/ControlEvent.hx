package gui;

class ControlEvent extends flash.events.Event
{
	public var control : Control;
	
	public function new (control : Control, type : String, bubbles : Bool = false, cancelable : Bool = false)
	{
		this.control = control;
		super(type, bubbles, cancelable);
	}
}