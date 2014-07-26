package scenes;

import gui.CEvent;

import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.Scene;
import flash.events.Event;

class TitleScene extends Scene {
	public var b1 : gui.Button;
	public var b2 : gui.Button;
	public var b3 : gui.Button;
	public var b4 : gui.Button;
	
	public var l1 : gui.Label;
	public var l2 : gui.Label;
	public var l3 : gui.Label;
	
	public var cc : Int = 0;
	
	override public function new () : Void {
		super();
		
		b1 = new gui.Button("COUNT UP!", 20, 40, gui.Control.Alignment.CENTER_LEFT, 22);
		b1.ID = "increment";
		b1.addEventListener(gui.Control.MOUSE_DOWN, counterIncrement);
		b1.addEventListener(gui.Control.MOUSE_OVER, changeLabel);
				
		b2 = new gui.Button("TURN INVISIBLE!", 20, 100, 28);
		b2.ID = "visibility";
		b2.addEventListener(gui.Control.MOUSE_DOWN, counterVisibility);
		b2.addEventListener(gui.Control.MOUSE_OVER, changeLabel);
		
		b3 = new gui.Button("RESET!", 20, 160, 32);
		b3.ID = "reset";
		b3.addEventListener(gui.Control.MOUSE_DOWN, counterReset);
		b3.addEventListener(gui.Control.MOUSE_OVER, changeLabel);
		
		b4 = new gui.Button("CHANGE SCENE!", 20, 220, 28);
		b4.addEventListener(gui.Control.MOUSE_DOWN, changeScene);
		
		l1 = new gui.Label("Click counter: " + cc, HXP.halfWidth, 100);
		l3 = new gui.Label("Hover over a button to change me!", HXP.halfWidth, 300);
		l3.alignment = gui.Control.Alignment.CENTER;
	}
	
	override public function begin () : Void {	
		super.begin();
		
		add(b1);
		add(b2);
		add(b3);
		add(b4);
		
		add(l1);
		add(l3);		
	}
	
	override public function update () : Void {
		super.update();
	}
	
	override public function end () : Void {
		super.end();
		
		removeAll();		
	}
	
	private function counterIncrement (e : CEvent) : Void {
		cc++;
		l1.text = "Click counter: " + cc;
	}
	
	private function counterVisibility (e : CEvent) : Void {
		(l1.visible) ? l1.visible = false : l1.visible = true;
	}
	
	private function counterReset (e : CEvent) : Void {
		cc = 0;
		l1.text = "Click counter: " + cc;
		b1.alignment = gui.Control.Alignment.BOTTOM_LEFT;
	}
	
	private function changeLabel (e : CEvent) : Void {
		l3.text = "You hovered over " + e.senderID; 
	}
	
	private function changeScene (e : CEvent) : Void {
		HXP.scene = Main.demoScene;
	}
}
