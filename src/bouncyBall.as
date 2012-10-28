/**
 * Created with IntelliJ IDEA.
 * User: Manchit Gupta
 * Date: 10/28/12
 * Time: 12:58 AM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.Bitmap;
import flash.display.MovieClip;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class bouncyBall extends MovieClip{

	[Embed(source="C:/Users/Manchit Gupta/Pictures/red-crystal-ball.jpg")]
	public var ballImage:Class;
	public var bouncyBMP:Bitmap = new ballImage() as Bitmap;

	public var bouncySpeed_X:Number = 0.0;
	public var bouncySpeed_Y:Number = 0.0;

	public var constantAction:Timer;

	public function bouncyBall() {

		bouncyBMP.x = 50;
		bouncyBMP.y = 50;
		bouncyBMP.width = 70;
		bouncyBMP.height = 70;

		bouncySpeed_X = 3.0;
		bouncySpeed_Y = 5.0;

		constantAction = new Timer(20);
		constantAction.addEventListener(TimerEvent.TIMER, constantUpdate );
		this.addChild(bouncyBMP);
		constantAction.start();
	}

	private function constantUpdate(event:TimerEvent):void {
		if(bouncyBMP.x + bouncyBMP.width> stage.stageWidth) { // too far to the right?
			bouncySpeed_X = -bouncySpeed_X; // flip horizontal movement direction
		}
		if(bouncyBMP.x < 0) { // too far to the left?
			bouncySpeed_X = -bouncySpeed_X; // flip horizontal movement direction
		}

		if(bouncyBMP.y + bouncyBMP.height> stage.stageHeight) { // below the bottom?
			bouncySpeed_Y = -bouncySpeed_Y; // flip vertical movement direction
		}
		if(bouncyBMP.y < 0) { // above the top?
			bouncySpeed_Y = -bouncySpeed_Y; // flip vertical movement direction
		}

		// adjust bouncy ball's current position according to its velocity
		bouncyBMP.x += bouncySpeed_X;
		bouncyBMP.y += bouncySpeed_Y;
	}

}
}
