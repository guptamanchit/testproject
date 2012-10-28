package {

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.KeyboardEvent;
import flash.events.TimerEvent;
import flash.text.TextField;
import flash.ui.Keyboard;
import flash.utils.Timer;

public class Testproject extends Sprite {
	private var newball:ball;
	private var ballRadius:uint = 30;

	public var constantAction:Timer;
	public var constantDelete:Timer;
	public var bouncyBMP:bouncyBall;

	public var obstacleHeight:uint = 50;
	private var maxChildren:uint = 20;

	public var obs:obstacle;
	public function Testproject() {

		constantAction = new Timer(1);
		obs = new obstacle(stage.stageWidth, obstacleHeight, stage.stageHeight-obstacleHeight);
		stage.addChild(obs);

		constantAction.addEventListener(TimerEvent.TIMER, createObstable);

		trace("Stage Height :" + stage.stageHeight);
		trace("Obstacle Y : "+ obs.getVerticalLocation());
		trace("Obstacle height : "+obstacleHeight);
		constantAction.start();
		bouncyBMP = new bouncyBall();
		stage.addChild(bouncyBMP);

	}

	private function createObstable(event:TimerEvent):void {
		if( - obs.getVerticalLocation() >= 2*obstacleHeight){
			var newObstacle:obstacle = new obstacle(stage.stageWidth, obstacleHeight, stage.stageHeight);
			stage.addChild(newObstacle);
			obs = newObstacle;
		}
		removeExtraObstacle();
	}

	private function removeExtraObstacle():void {
		if(stage.numChildren > 20){
			stage.removeChildAt(1);
		}
	}
}
}
