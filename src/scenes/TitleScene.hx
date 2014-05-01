package scenes;

import com.haxepunk.HXP;
import com.haxepunk.Scene;

class TitleScene extends Scene {
	private var mousePointer : gui.MousePointer;
	private var option1 : gui.Option;
	private var option2 : gui.Option;
	private var textField1 : gui.TextField;
	
	override public function new () : Void {
		super();
		
		mousePointer = new gui.MousePointer( 200, 200 );
		option1 = new gui.Option( 20, 100, "Take me to the next scene." );
		option2 = new gui.Option( 20, 140, "This is option changes the text below." );
		textField1 = new gui.TextField( 40, 160, "I am subject to change." );
	}
	
	override public function begin () : Void {
		add(mousePointer);
		add(option1);
		add(option2);
		add(textField1);
		
		add (new gui.Option(50, 200, "top-left", null, "top-left", true));
		add (new gui.Option(100, 220, "top", null, "top", true));
		add (new gui.Option(150, 240, "top-right", null, "top-right", true));
		add (new gui.Option(200, 200, "center-left", null, "center-left", true));
		add (new gui.Option(250, 220, "center", null, "center", true));
		add (new gui.Option(300, 240, "center-right", null, "center-right", true));
		add (new gui.Option(350, 200, "bottom-left", null, "bottom-left", true));
		add (new gui.Option(400, 220, "bottom", null, "bottom", true));
		add (new gui.Option(450, 240, "bottom-right", null, "bottom-right", true));
		
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
			textField1.setText("There, I changed!");
		}
	}
}
