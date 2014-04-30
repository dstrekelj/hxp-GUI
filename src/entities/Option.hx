package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class Option extends Entity {
	private var optionText : Text;
	
	public function new ( x : Int, y : Int, text : String ) : Void {
		super(x, y);
		
		optionText = new Text(text);
		graphic = optionText;
		
		setHitboxTo(graphic);
		type = "option";
	}
	
	public function setText ( newText : String ) : Void {
		optionText.text = newText;
	}
}
