package scenes;

import com.haxepunk.Scene;

class TitleScene extends Scene {
	private var mousePointer : entities.MousePointer;
	private var option1 : entities.Option;
	private var option2 : entities.Option;
	
	override public function new () : Void {
		super();
		
		mousePointer = new entities.MousePointer( 200, 200 );
		option1 = new entities.Option( 20, 100, "This is an option for you to choose." );
		option2 = new entities.Option( 20, 140, "This is another option for you to choose." );
	}
	
	override public function begin () : Void {
		add(mousePointer);
		add(option1);
		add(option2);
		
		super.begin();
	}
	
	override public function update () : Void {
		if (mousePointer.handle(option1)) {
			trace("handling option 1");
		} else if (mousePointer.handle(option2)) {
			trace("handling option 2");
		} else {
			trace("not handling any options");
		}
		
		super.update();
	}
	
	override public function end () : Void {
		super.end();
	}
}
