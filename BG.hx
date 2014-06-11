package ;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxPoint;

/**
 * ...
 * @author ...
 */
class BG extends FlxSprite
{

	public function new() 
	{
	super(FlxG.width/2-374,FlxG.height/2-154);
	loadGraphic("assets/images/bg.PNG", true, 748, 308);
	
	}
	
}
