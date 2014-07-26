package gui;

import gui.Control;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class Label extends Control {
	/** Label text. Changing it updates the Label object accordingly. */
	@:isVar public var text (get, set) : String;
	public function get_text () : String { return text; }
	public function set_text (value : String) : String {
		graphic.destroy();
		graphic = new Text(value);
		setHitboxTo(graphic);
		setRoot(alignment);
		return text = value;
	}
	
	public function new (text : String, x : Float, y : Float, ?alignment : Alignment = CENTER_LEFT, ?width : Int = 0, ?height : Int = 0) : Void {
		super(x, y, alignment, width, height);
		
		this.alignment = alignment;
		
		graphic = new Text(text);
		setHitboxTo(graphic);
		
		setRoot(alignment);
	}
}