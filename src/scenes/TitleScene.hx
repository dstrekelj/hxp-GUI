package scenes;

import com.haxepunk.HXP;
import com.haxepunk.Scene;

class TitleScene extends Scene
{
	override public function new () : Void
	{
		super();
	}
	
	override public function begin () : Void
	{	
		add (new gui.Button(HXP.halfWidth-50, HXP.halfHeight-25, 100, 50));
		super.begin();
	}
	
	override public function update () : Void
	{
		super.update();
	}
	
	override public function end () : Void
	{
		removeAll();		
		super.end();
	}
}
