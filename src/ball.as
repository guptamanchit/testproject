/**
 * Created with IntelliJ IDEA.
 * User: Manchit Gupta
 * Date: 10/25/12
 * Time: 2:45 PM
 * To change this template use File | Settings | File Templates.
 */
package {
import flash.display.MovieClip;
import flash.display.Shape;

public class ball extends MovieClip{
	public function ball(radius:uint) {
		var circle:Shape = new Shape();
		circle.graphics.beginFill(0xFF00FF,0.5);
		circle.graphics.drawCircle(50,50,radius);
		circle.graphics.endFill();
		this.addChild(circle);
	}
}
}
