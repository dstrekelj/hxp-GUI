package scenes;

import gui.Button;
import gui.CEvent;
import gui.Control;
import gui.Label;

import com.haxepunk.HXP;
import com.haxepunk.Scene;

class DemoScene extends Scene
{
	private var b1 : Button;
	private var b2 : Button;
	private var b3 : Button;
	private var b4 : Button;
	
	private var l1 : Label;
	
	private var cc : Int = 0;
	
	public function new () : Void
	{
		super();
		
		b1 = new Button("Increase", HXP.halfWidth, HXP.halfHeight-33, BOTTOM, 22);
		b1.ID = "increase";
		b1.addEventListener(Control.MOUSE_DOWN, labelHandler);
		b2 = new Button("Disappear", HXP.halfWidth, HXP.halfHeight, CENTER, 22);
		b2.addEventListener(Control.MOUSE_DOWN, labelHandler);
		b2.ID = "disappear";
		b3 = new Button("Reset", HXP.halfWidth, HXP.halfHeight+33, TOP, 22);
		b3.addEventListener(Control.MOUSE_DOWN, labelHandler);
		b3.ID = "reset";
		b4 = new Button("Back", HXP.halfWidth, HXP.halfHeight+77, TOP, 22);
		b4.addEventListener(Control.MOUSE_DOWN, changeScene);
		
		l1 = new Label("Click counter: " + cc, HXP.halfWidth, 100, TOP);
	}
	
	override public function begin () : Void
	{
		super.begin();
		
		add(b1);
		add(b2);
		add(b3);
		add(b4);

		add(l1);
	}
	
	override public function update () : Void
	{
		super.update();
	}
	
	override public function end () : Void
	{
		super.end();
		
		removeAll();
	}
	
	private function labelHandler (e : CEvent) : Void
	{
		switch(e.senderID)
		{
			case id if (id == b1.ID):
				cc++;
				l1.text = "Click counter: " + cc;
			case id if (id == b2.ID):
				(l1.visible) ? l1.visible = false : l1.visible = true;
			case id if (id == b3.ID):
				cc = 0;
				l1.text = "Click counter: " + cc;
		}
	}
	
	private function changeScene (e : CEvent) : Void
	{
		HXP.scene = Main.titleScene;
	}
}