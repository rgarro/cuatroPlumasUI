package cuatroPlumasUI.GrayApp {
	import flash.text.TextFieldType;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import cuatroPlumasUI.GrayApp.Assets;
	import flash.display.Sprite;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.external.ExternalInterface;
	
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Button extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_So-S_Bainbr-7974_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var btnbg:Bitmap;
		protected var assets:Assets;
		protected var tf:TextFormat;
		protected var label:TextField;
		protected var labelText:String;
		
		protected var timeout:Timer;
		
		
		public function Button(btnlabel:String):void{
			this.labelText = btnlabel;
			init();
			this.addEventListener(Event.ADDED_TO_STAGE, startListener);
		}
		
		protected function startListener(e:Event):void{
			this.addEventListener(MouseEvent.MOUSE_OVER, overEvt);
			this.addEventListener(MouseEvent.MOUSE_OUT, outEvt);
			this.addEventListener(MouseEvent.CLICK, evtClick);
		}
		
		protected function init():void{
			this.useHandCursor = true;
			this.buttonMode = true;
			tf = new TextFormat();
			tf.size = 15;
			tf.color = 0x777777;
			this.assets = new Assets();
			this.btnbg = new Bitmap(assets.btnData);
			this.addChild(btnbg);
			//this.btnbg.x =0;this.btnbg.y =0;
			//this.btnbg.width = 71;
			//this.btnbg.height = 34;
			
			this.label = new TextField();
			
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.type = TextFieldType.DYNAMIC;
			label.width = 75;
			label.text = labelText;
			label.x = 15;
			label.y = 8;
			this.clickSound = new clickSoundClass() as Sound;	
		}
		
		protected function evtClick(e:MouseEvent):void{
			this.btnbg.bitmapData = this.assets.btnclickData;
			this.clickSound.play();
		}
		
		protected function outEvt(e:MouseEvent):void{
			this.btnbg.bitmapData = this.assets.btnData;
		}
		
		protected function overEvt(e:MouseEvent):void{
			this.btnbg.bitmapData = this.assets.btnoverData;
		}
	}
}