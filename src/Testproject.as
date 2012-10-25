package {

import flash.display.Sprite;
import flash.text.TextField;

public class Testproject extends Sprite {
	private var newball:ball;
	private var ballRadius:uint = 30;
    public function Testproject() {
	    newball = new ball(ballRadius) ;
	    stage.addChild(newball);

    }
}
}
