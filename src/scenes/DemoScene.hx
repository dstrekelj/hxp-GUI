package scenes;

import gui.Button;
import gui.CEvent;
import gui.Control;
import gui.Label;

import com.haxepunk.HXP;
import com.haxepunk.Scene;



class DemoScene extends Scene
{
	private var ButtonMap : Map<Int, String> = [
	0 => "Increase",
	1 => "Disappear",
	2 => "Reset",
	3 => "Back"
	];

	private var menu : Array<Button>;
	
	private var l1 : Label;
	
	private var cc : Int = 0;
	
	public function new () : Void
	{
		super();
		
		menu = new Array<Button>();
		
		var menuX = HXP.halfWidth;
		var menuY = HXP.halfHeight-22;
		for (i in 0...4)
		{
			menu.push(new Button(ButtonMap[i], menuX, menuY, CENTER, 28));
			//menu[i].ID = ButtonMap[i];
			menuY += 42;			
		}
		menu[0].addEventListener(Control.MOUSE_DOWN, labelHandler);
		menu[1].addEventListener(Control.MOUSE_DOWN, labelHandler);
		menu[2].addEventListener(Control.MOUSE_DOWN, labelHandler);
		menu[3].addEventListener(Control.MOUSE_DOWN, changeScene);
		
		l1 = new Label("Click counter: " + cc, HXP.halfWidth, 100, TOP);
	}
	
	override public function begin () : Void
	{
		super.begin();

		for (button in menu)
		{
			add(button);
		}
		
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
			case id if (id == menu[0].ID):
				cc++;
				l1.text = "Click counter: " + cc;
			case id if (id == menu[1].ID):
				(l1.visible) ? l1.visible = false : l1.visible = true;
			case id if (id == menu[2].ID):
				cc = 0;
				l1.text = "Click counter: " + cc;
		}
	}
	
	private function changeScene (e : CEvent) : Void
	{
		HXP.scene = Main.titleScene;
	}
}