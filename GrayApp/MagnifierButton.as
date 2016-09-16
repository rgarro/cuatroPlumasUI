package cuatroPlumasUI.GrayApp {
	import flash.media.Sound;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.display.Bitmap;
	import flash.display.Sprite;

	/**
	 * @author rolando
	 */
	public class MagnifierButton extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_So-S_Bainbr-7974_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		protected var bg:Bitmap;
		protected var assets:Assets;
		
		public function MagnifierButton():void {
			this.assets = new Assets();
			this.bg = new Bitmap(assets.magnifierBtnData);
			this.addChild(this.bg);
			this.clickSound = new clickSoundClass() as Sound;	
			this.addEventListener(Event.ADDED_TO_STAGE, startListener);
		}
		
		protected function startListener(e:Event):void{
			this.addEventListener(MouseEvent.MOUSE_OVER, overEvt);
			this.addEventListener(MouseEvent.MOUSE_OUT, outEvt);
			this.addEventListener(MouseEvent.CLICK, evtClick);
		}
		
		protected function evtClick(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.magnifierBtnData;
			this.clickSound.play();
		}
		
		protected function outEvt(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.magnifierBtnData;
		}
		
		protected function overEvt(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.magnifierBtnOverData;
		}
	}
}