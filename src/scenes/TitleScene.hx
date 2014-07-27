package scenes;

import gui.CEvent;

import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.Scene;
import flash.events.Event;

class TitleScene extends Scene {
	public var menu : Array<gui.Button>;
	
	public var l1 : gui.Label;
	public var l2 : gui.Label;
	
	override public function new () : Void {
		super();

		l1 = new gui.Label("Hover over a button to change me!", 20, 200, gui.Control.Alignment.CENTER_LEFT);
		l2 = new gui.Label("These buttons were created with an Array!", 20, 300, 22);
		
		var originX = 20;
		var originY = 40;
		menu = new Array<gui.Button>();
		for (i in 0...3)
		{
			menu.push(new gui.Button("Button" + i, originX, originY, gui.Control.Alignment.TOP_LEFT, 28));
			menu[i].addEventListener(gui.Control.MOUSE_OVER, changeLabel);
			originY += 42;
		}
		
		menu[2].label = "CLICK COUNTER SCENE";
		menu[2].addEventListener(gui.Control.MOUSE_DOWN, changeScene);
	}
	
	override public function begin () : Void {	
		super.begin();
		
		add(l1);
		add(l2);
		
		for (button in menu)
		{
			add(button);
		}
	}
	
	override public function update () : Void {
		super.update();
	}
	
	override public function end () : Void {
		super.end();
		
		removeAll();		
	}
	
	private function changeLabel (e : CEvent) : Void {
		l1.text = "You hovered over " + e.senderID; 
	}
	
	private function changeScene (e : CEvent) : Void {
		HXP.scene = Main.demoScene;
	}
}
