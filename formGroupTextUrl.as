package cuatroPlumasUI {
	import cuatroPlumasUI.GrayApp.Assets;
	import flash.text.TextFormat;
	import flash.text.*;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.text.TextFieldType;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class formGroupTextUrl extends Sprite {
		
		protected var bodyBg:Bitmap;
		protected var assets:Assets;
		protected var label:TextField;
		protected var input:TextField;
		
		public function formGroupTextUrl(labelStr:String):void {
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			tf.color = 0x555555;
			this.assets = new Assets();
			this.bodyBg = new Bitmap(assets.formGroupBGData);
			this.addChild(this.bodyBg);
			
			this.label = new TextField();
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.type = TextFieldType.DYNAMIC;
			label.width = 141;
			label.text = labelStr;
			label.x = 10;
			label.y = 10;
			
			var ti:TextFormat = new TextFormat();
			ti.size = 15;
			ti.color = 0x777777;
			this.input = new TextField();
			this.input.defaultTextFormat = ti;
			this.input.type = TextFieldType.INPUT;
			this.addChild(this.input);
			this.input.background = true;
			this.input.backgroundColor = 0xfeffbb;
			this.input.width = 277;
			this.input.height = 22;
			this.input.x = 160;
			this.input.y = 11;
			this.input.border = true;
			this.input.borderColor = 0xe3e6ea;
		}
		
		public function isValidURL():Boolean{
			var url_reg:RegExp = /^http(s)?:\/\/((\d+\.\d+\.\d+\.\d+)|(([\w-]+\.)+([a-z,A-Z][\w-]*)))(:[1-9][0-9]*)?(\/([\w-.\/:%+@&=]+[\w- .\/?:%+@&=]*)?)?(#(.*))?$/i;
			if(url_reg.test(this.input.text)){
				return true;
			}else{
				return false;
			}
		}
		
		public function getValue():String{
			return this.input.text;
		}
	}
}