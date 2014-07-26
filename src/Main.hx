import com.haxepunk.Engine;
import com.haxepunk.HXP;
import com.haxepunk.Scene;

class Main extends Engine
{	
	public static var titleScene : Scene;
	public static var demoScene : Scene;
	
	override public function init ()
	{
#if debug
		HXP.console.enable();
#end
		
		titleScene = new scenes.TitleScene();
		demoScene = new scenes.DemoScene();
		
		HXP.scene = titleScene;
	}

	public static function main ()
	{
		new Main();
	}

}
