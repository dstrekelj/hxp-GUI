package gui;

import gui.CEvent;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.utils.Input;

import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.events.MouseEvent;

class Control extends Entity implements IEventDispatcher {
	public static inline var MOUSE_OVER : String = "mouse_over";
	
	public function new (x : Float = 0, y : Float = 0, width : Int = 0, height : Int = 0) : Void {
		super(x, y);
		
		this.width = width;
		this.height = height;
		this.type = "control";
		
		_eventDispatcher = new EventDispatcher();
	}
	
	override public function added () : Void {
		super.added();
	}
	
	override public function update () : Void {
		super.update();
		
		if (scene.collidePoint(this.type, Input.mouseX + HXP.camera.x, Input.mouseY + HXP.camera.y) != null) {
			dispatchEvent(new CEvent(MOUSE_OVER));
		}
	}
	
	override public function removed () : Void {
		super.removed();		
	}
	
	/**
	 *	The following methods are a part of the GUI's functionality.
	 */
	
	/*	~~~~~~	*/
	
	/**
	 *	The following methods are an implementation of flash.events.IEventDispatcher.
	 */	
	
	public function addEventListener(type : String, listener : Dynamic -> Void, useCapture : Bool = false, priority : Int = 0, useWeakReference : Bool = false) : Void {
		_eventDispatcher.addEventListener(type, listener, useCapture, priority, useWeakReference);
	}
	
	public function dispatchEvent(event : flash.events.Event) : Bool {
		return _eventDispatcher.dispatchEvent(event);
	}
	
	public function hasEventListener(type : String) : Bool {
		return _eventDispatcher.hasEventListener(type);
	}
	
	public function removeEventListener(type : String, listener : Dynamic -> Void, useCapture : Bool = false) : Void {
		_eventDispatcher.removeEventListener(type, listener, useCapture);
	}
	
	public function willTrigger(type : String) : Bool {
		return _eventDispatcher.willTrigger(type);
	}
	
	private var _eventDispatcher : EventDispatcher;
}