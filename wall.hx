package ;

import flixel.FlxObject;

/**
 * ...
 * @author ...
 */
class Wall extends FlxObject
{

	public function new(X:Float=0, Y:Float=0, Width:Float=0, Height:Float=0) 
	{
		super(X, Y, Width, Height);
		immovable = true;
	}
	
}
