package scenes;

import com.haxepunk.HXP;
import com.haxepunk.Scene;

class GameScene extends Scene {
	private var mousePointer : gui.MousePointer;
	private var option1 : gui.Option;
	
	override public function new () : Void {
		super();
		
		mousePointer = new gui.MousePointer(0, 0);
		option1 = new gui.Option(20, 100, "Take me back!");
	}
	
	override public function begin () : Void {
		add(mousePointer);
		add(option1);
		
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
			HXP.scene = new scenes.TitleScene();
		}
	}
}
