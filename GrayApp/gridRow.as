package cuatroPlumasUI.GrayApp {
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.text.TextField;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class gridRow extends Sprite {
		
		protected var assets:Assets;
		protected var label:TextField;
		protected var id:Number;
		public var delBtn:Sprite;
		
		public function gridRow(labelStr:String,idNum:Number):void {
			this.id = idNum;
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			tf.color = 0x878787;
			
			this.label = new TextField();
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.type = TextFieldType.DYNAMIC;
			label.width = 75;
			label.text = labelStr;
			label.x = 14;
			label.y = 9;
			
			this.assets = new Assets();
			var bg:Bitmap = new Bitmap(this.assets.gridrowData);
			this.addChild(bg);
			this.delBtn = new Sprite();
			var del:Bitmap = new Bitmap(this.assets.xbtnData);
			this.delBtn.addChild(del);
			this.delBtn.x = 766;this.delBtn.y = 5;			
		}
	}
}