package;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxPoint;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	var player:Player;
	var walls:FlxTypedGroup<FlxObject>;
	private var bg: BG;
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		
		bg = new BG();
		add(bg);
		FlxG.mouse.visible = false;
		
		FlxG.camera.follow(player);
		FlxG.camera.follow(player, FlxCamera.STYLE_TOPDOWN);
		FlxG.camera.bgColor = 0xFF000000;
		add(player = new Player());
		walls = new FlxTypedGroup<FlxObject>();
		add(walls);
		
		var size = 1;
		var gutter = FlxG.height/2;
		var horizontal = new Wall(0, 390, FlxG.width*2  , size);
		walls.add(horizontal);
		var horizaontal1 = new Wall ( 0, 303, FlxG.width*2 , size);
		walls.add(horizaontal1);
		
		var x = 0;
		var y = FlxG.height + 280;
		//controls up and down of diagonal
		
		while (x < gutter)
		{
			walls.add(new Wall(x, y / 2, size, size));
			//controls slope
			x += size;
			y -= size;
		}
		
		x = FlxG.width;
		y = FlxG.height+280;
		
		while (x > FlxG.width - gutter)
		{
			walls.add(new Wall(x, y/2, size, size));
			x -= size;
			y -= size;
		}
		
		FlxG.debugger.drawDebug = true;
		
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
		FlxG.collide(player, walls);
	}	
}
