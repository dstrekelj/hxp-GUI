package scenes;

import com.haxepunk.Scene;

class TitleScene extends Scene {
	private var mousePointer : entities.MousePointer;
	
	override public function new () : Void {
		super();
		
		mousePointer = new entities.MousePointer( 100, 100 );
	}
	
	override public function begin () : Void {
		add(mousePointer);
		super.begin();
	}
	
	override public function update () : Void {
		super.update();
	}
	
	override public function end () : Void {
		super.end();
	}
}