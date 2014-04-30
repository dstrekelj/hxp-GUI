package scenes;

import com.haxepunk.HXP;
import com.haxepunk.Scene;

class TitleScene extends Scene {
	private var mousePointer : gui.MousePointer;
	private var option1 : gui.Option;
	private var option2 : gui.Option;
	
	override public function new () : Void {
		super();
		
		mousePointer = new gui.MousePointer( 200, 200 );
		option1 = new gui.Option( 20, 100, "Take me to the next scene." );
		option2 = new gui.Option( 20, 140, "This is option calls a trace." );
	}
	
	override public function begin () : Void {
		add(mousePointer);
		add(option1);
		add(option2);
		
		super.begin();
	}
	
	override public function update () : Void {
		handleOptions();
		
		super.update();
	}
	
	override public function end () : Void {
		removeAll();
		
		super.end();
	}
	
	public function handleOptions () : Void {
		if (mousePointer.handle(option1)) {
			HXP.scene = new scenes.GameScene();
		} else if (mousePointer.handle(option2)) {
			trace("handling option 2");
		}
	}
}
