/**
 * Created with IntelliJ IDEA.
 * User: Manchit Gupta
 * Date: 10/28/12
 * Time: 12:56 AM
 * To change this template use File | Settings | File Templates.
 */
package {
import Helper.IntegerHelper;

import flash.display.MovieClip;

import flash.display.Shape;

import flash.display.Shape;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class obstacle extends MovieClip{
	private var rect1:Shape;
	private var rect2:Shape;
	private var firstRectWidth:uint;
	private var secondRectWidth:uint;

	private var moveObstacle:Timer;

	private var speedY:Number = -2.0;

	public function obstacle(width:uint, height:uint, y:uint) {
		var gap:uint = width/4;

		firstRectWidth = IntegerHelper.randomRange(0,width - gap);
		secondRectWidth = width - firstRectWidth - gap;

		//buildRectange(rect1, firstRectWidth, height, 0, y);
		//buildRectange(rect2, secondRectWidth, height, width - secondRectWidth,y);

		trace(width);
		trace(gap);
		trace(firstRectWidth);
		trace(secondRectWidth);
		rect1 = new Shape();
		rect1.graphics.beginFill(0x00FF00);
		rect1.graphics.drawRect(0,y,firstRectWidth,height);
		rect1.graphics.endFill();

		rect2 = new Shape();
		rect2.graphics.beginFill(0x000000);
		rect2.graphics.drawRect(width-secondRectWidth,y,secondRectWidth,height);
		rect2.graphics.endFill();

		this.addChild(rect1);
		this.addChild(rect2);
		moveObstacle = new Timer(1000/30);

		moveObstacle.addEventListener(TimerEvent.TIMER, moveObstacles);

		moveObstacle.start();
	}

	private function moveObstacles(event:TimerEvent):void {
		this.y += speedY;
		trace(this.y);
	}

	private function buildRectange(rect:Shape, width:uint, height:uint, x:uint, y:uint):void {
		rect = new Shape();
		rect.graphics.beginFill(0x00FF00);
		rect.graphics.drawRect(x,y,width,height);
		rect.graphics.endFill();
	}

	public function getVerticalLocation():Number{
		return this.y;
	}
}
}
