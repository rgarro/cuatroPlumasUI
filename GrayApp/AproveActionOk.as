package cuatroPlumasUI.GrayApp {
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.text.TextFieldType;
	
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import cuatroPlumasUI.GrayApp.Assets;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.media.Sound;
	
	//import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class AproveActionOk extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_16-Beatsuit-7949_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var bg:Bitmap;
		protected var assets:Assets;
		protected var label:TextField;
		public var OKButton:Button;
		public var closeBtn:Sprite;
		
		public function AproveActionOk(labelStr:String):void {
			this.assets = new Assets();
			this.bg = new Bitmap(this.assets.okbgData);
			this.addChild(this.bg);
			
			var tf:TextFormat = new TextFormat();
			tf.size = 15;
			tf.color = 0x006630;
			
			this.label = new TextField();
			
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.type = TextFieldType.DYNAMIC;
			label.width = 200;
			label.text = "Confirmar: " + labelStr + "?";
			label.x = 17;
			label.y = 10;
			this.clickSound = new clickSoundClass() as Sound;
			
			this.OKButton = new Button("  OK");
			this.addChild(this.OKButton);
			this.OKButton.x = 60;
			this.OKButton.y = 65;
			this.addEventListener(Event.ADDED_TO_STAGE, initAdded);
		}
		
		public function initAdded(e:Event):void{
			this.closeBtn = new Sprite();
			this.addChild(closeBtn);
			var closeImg:Bitmap = new Bitmap(assets.closemodalbtnData);
			closeBtn.addChild(closeImg);
			
			closeBtn.x = 163;closeBtn.y = 11;
			closeBtn.addEventListener(MouseEvent.CLICK, closeThis);
		}
		
		protected function closeThis(e:MouseEvent):void{
			this.clickSound.play();
			this.parent.removeChild(this);
		}
	}
}