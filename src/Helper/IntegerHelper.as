/**
 * Created with IntelliJ IDEA.
 * User: Manchit Gupta
 * Date: 10/28/12
 * Time: 1:23 AM
 * To change this template use File | Settings | File Templates.
 */
package Helper {
public class IntegerHelper {
	public static function randomRange(minNum:Number, maxNum:Number):Number
	{
		return (Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum);
	}
}
}
