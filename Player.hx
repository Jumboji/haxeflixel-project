package ;
import flixel.FlxG;
import flixel.FlxSprite;

/**
 * ...
 * @author ...
 */
class Player extends FlxSprite
{
var speed = 500;
	public function new() 
	{
		super(FlxG.width/2, FlxG.height - 100);
		makeGraphic(10, 10);
		
	}
		
	override public function update():Void
	{
		super.update();
		
		velocity.set();
		
		if (FlxG.keys.pressed.LEFT)
			velocity.x -= speed;
		if (FlxG.keys.pressed.RIGHT)
			velocity.x += speed;
		
		if (FlxG.keys.pressed.UP)
			velocity.y -= speed;
		if (FlxG.keys.pressed.DOWN)
			velocity.y += speed;
	}
}
