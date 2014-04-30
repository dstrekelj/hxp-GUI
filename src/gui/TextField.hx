package gui;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Text;

class TextField extends Entity {
	private var textFieldText : Text;
	
	public function new ( x : Int, y : Int, text : String ) : Void {
		super(x, y);
		
		textFieldText = new Text(text);
		graphic = textFieldText;
		
		setHitboxTo(graphic);
		type = "textfield";
	}
	
	public function setText ( newText : String ) : Void {
		textFieldText.text = newText;
	}
}