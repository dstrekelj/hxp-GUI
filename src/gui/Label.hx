package gui;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class Label extends Entity {
	public function new (text : String, x : Float, y : Float) : Void {
		super(x, y);
		
		graphic = new Text(text);
	}
	
	public function setText ( text : String ) : Void {
		graphic.destroy();
		graphic = new Text(text);
	}
	
	private var _text : Text;
}