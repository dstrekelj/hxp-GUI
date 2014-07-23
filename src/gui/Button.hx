package gui;

import gui.Control;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.Scene;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;

import flash.events.MouseEvent;

class Button extends Control {
	public static inline var MOUSE_DOWN : String = "mouse_down";
	
	public function new (x : Float = 0, y : Float = 0, width : Int = 0, height : Int = 0) : Void {
		super(x, y, width, height);
		
		setHitbox(width, height);
		
		graphic = Image.createRect(width, height);
	}
	
	override public function added () : Void {
		super.added();
		
		if (HXP.stage != null) HXP.stage.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
	}
	
	override public function update () : Void {
		super.update();
	}
	
	override public function removed () : Void {
		super.removed();
		
		if (HXP.stage != null) HXP.stage.removeEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
	}
	
	private function onMouseDown ( e : MouseEvent = null ) : Void {
		if (collidePoint(x, y, Input.mouseX + HXP.camera.x, Input.mouseY + HXP.camera.y)) {
			dispatchEvent(new CEvent(MOUSE_DOWN));
		}
	}
}