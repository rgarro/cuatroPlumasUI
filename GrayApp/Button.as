package cuatroPlumasUI.GrayApp {
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import cuatroPlumasUI.GrayApp.Assets;
	import flash.display.Sprite;
	import flash.text.TextFormat;
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Button extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_So-S_Bainbr-7974_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var bg:Bitmap;
		protected var assets:Assets;
		protected var tf:TextFormat;
		protected var label:TextField;
		
		protected var timeout:Timer;
		
		
		public function Button(btnlabel:String):void{
			this.useHandCursor = true;
			this.buttonMode = true;
			tf = new TextFormat();
			tf.size = 15;
			tf.color = 0x777777;
			this.assets = new Assets();
			this.bg = new Bitmap(assets.bgData);
			this.addChild(bg);
			
			this.label = new TextField();
			
			this.label.defaultTextFormat = tf;
			this.addChild(label);
			label.width = 75;
			label.text = btnlabel;
			label.x = 15;
			label.y = 8;
			this.clickSound = new clickSoundClass() as Sound;
			
			this.addEventListener(MouseEvent.MOUSE_OVER, overEvt);
			this.addEventListener(MouseEvent.MOUSE_OUT, outEvt);
			this.addEventListener(MouseEvent.CLICK, evtClick);
			
		}
		
		protected function evtClick(e:MouseEvent):void{
			
			this.bg.bitmapData = this.assets.btnclickData;
			this.clickSound.play();
		}
		
		public function setEnd(e:Event):void{
			
			this.bg.bitmapData = this.assets.btnData;
		}
		
		protected function outEvt(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.btnData;
		}
		
		protected function overEvt(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.btnoverData;
		}
	}
}