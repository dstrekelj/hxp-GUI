package gui;

class Button extends Control
{
	public function new (x : Float = 0, y : Float = 0, width : Int = 0, height : Int = 0) : Void
	{
		super(x, y, width, height);
		
		setHitbox(width, height);
		
		graphic = com.haxepunk.graphics.Image.createRect(width, height, 0x22FF99);	
	}
	
	override public function update () : Void
	{
		super.update();
	}
}