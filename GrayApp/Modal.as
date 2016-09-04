package cuatroPlumasUI.GrayApp {
	import flash.display.Sprite;
	import flash.text.TextFieldType;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import cuatroPlumasUI.GrayApp.Assets;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.external.ExternalInterface;
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Modal extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_16-Beatsuit-7949_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var topbg:Bitmap;
		protected var bodyBg:Bitmap;
		public var body:Sprite;
		protected var closeBtn:Sprite;
		
		protected var assets:Assets;
		protected var tf:TextFormat;
		protected var label:TextField;
		protected var labelText:String;
		
		public function Modal(label:String):void {
			this.labelText = label;
			this.addEventListener(Event.ADDED_TO_STAGE, startListener);
			this.init();
		}
		
		protected function startListener(e:Event):void{
			//this.addEventListener(MouseEvent.MOUSE_OVER, overEvt);
			//this.addEventListener(MouseEvent.MOUSE_OUT, outEvt);
			//this.addEventListener(MouseEvent.CLICK, evtClick);
		}
		
		protected function init():void{
			tf = new TextFormat();
			tf.size = 18;
			tf.color = 0x000000;
			this.assets = new Assets();
			this.topbg = new Bitmap(assets.modaltopData);
			this.addChild(topbg);
			//this.btnbg.x =0;this.btnbg.y =0;
			//this.btnbg.width = 71;
			//this.btnbg.height = 34;
			
			this.closeBtn = new Sprite();
			this.closeBtn.useHandCursor = true;
			this.closeBtn.buttonMode = true;
			var closeImg:Bitmap = new Bitmap(assets.closemodalbtnData);
			this.closeBtn.addChild(closeImg);
			this.addChild(closeBtn);
			this.closeBtn.x = 429;this.closeBtn.y = 12;
			
			this.label = new TextField();
			
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.type = TextFieldType.DYNAMIC;
			label.width = 300;
			label.text = labelText;
			label.x = 17;
			label.y = 10;
			this.clickSound = new clickSoundClass() as Sound;
			
			this.body = new Sprite();
			this.bodyBg = new Bitmap(assets.modalbgData);
			this.body.addChild(this.bodyBg);
			this.addChild(this.body);
			this.body.y = 44;
			
			this.closeBtn.addEventListener(MouseEvent.CLICK, closeThis);	
		}
		
		protected function closeThis(e:MouseEvent):void{
			this.clickSound.play();
			this.parent.removeChild(this);
		}
		
	}
}