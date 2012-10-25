package {

import flash.display.Sprite;
import flash.text.TextField;

public class Testproject extends Sprite {
    public function Testproject() {
        var textField:TextField = new TextField();
        textField.text = "Hello, World";
        addChild(textField);
    }
}
}
