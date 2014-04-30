package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;

class MousePointer extends Entity {
	private var image : Image;
	
	public function new ( x : Int, y : Int ) : Void {
		super(x, y);
		
		image = Image.createCircle(10, 0xffffff);
		image.centerOrigin();
		graphic = image;
		
		setHitbox(20, 20, 0, 0);
		centerOrigin();
		type = "pointer";
	}
	
	override public function update () : Void {
		moveTo(Input.mouseX, Input.mouseY);
		
		super.update();
	}
}