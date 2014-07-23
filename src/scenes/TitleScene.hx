package scenes;

import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.Scene;

import flash.events.Event;

class TitleScene extends Scene {
	public var b1 : gui.Button;
	public var b2 : gui.Button;
	public var b3 : gui.Button;
	
	public var l1 : gui.Label;
	public var l2 : gui.Label;
	
	public var cc : Int;
	
	override public function new () : Void {
		super();
		
		b1 = new gui.Button(20, 40, 100, 40);
		b1.addEventListener(gui.Button.MOUSE_DOWN, counterIncrement);
		
		b2 = new gui.Button(20, 100, 100, 40);
		b2.addEventListener(gui.Button.MOUSE_DOWN, counterVisibility);
		
		b3 = new gui.Button(20, 160, 100, 40);
		b3.addEventListener(gui.Button.MOUSE_DOWN, counterReset);
		
		l1 = new gui.Label("Click counter: " + cc, HXP.halfWidth, 100);
		l2 = new gui.Label("", 500, 400);
		
		cc = 0;
	}
	
	override public function begin () : Void {	
		super.begin();
		
		add(b1);
		add(b2);
		add(b3);
		
		add(l1);
		add(l2);
	}
	
	override public function update () : Void {
		super.update();
		
		l2.setText("Mouse position:\n"
				   + (HXP.screen.x + Input.mouseX) + ", " + (HXP.screen.y + Input.mouseY));		
	}
	
	override public function end () : Void {
		super.end();
		
		removeAll();		
	}
	
	private function counterIncrement ( e : Event ) : Void {
		cc++;
		l1.setText("Click counter: " + cc);
	}
	
	private function counterVisibility ( e : Event ) : Void {
		(l1.visible) ? l1.visible = false : l1.visible = true;
	}
	
	private function counterReset ( e: Event ) : Void {
		cc = 0;
		l1.setText("Click counter: " + cc);
	}
}
