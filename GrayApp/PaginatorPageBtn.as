package cuatroPlumasUI.GrayApp {
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.external.ExternalInterface;

	/**
	 * @author rolando
	 */
	public class PaginatorPageBtn extends Sprite {
		
		[Embed(source="Assets/Sounds/Click_So-S_Bainbr-7974_hifi.mp3")] 
        protected var clickSoundClass:Class; 
		protected var clickSound:Sound;
		
		public var container:PaginatorContainer;
		public var offSet:Number;
		public var limit:Number;
		protected var assets:Assets;
		protected var bg:Bitmap;
		
		public function PaginatorPageBtn(offSetInt:Number,limitInt:Number):void {
			this.useHandCursor = true;
			this.buttonMode = true;
			this.offSet = offSetInt;
			this.limit = limitInt;
			this.assets = new Assets();
			this.bg = new Bitmap(assets.paginacionButtonBgData);
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
			this.bg.bitmapData = this.assets.paginacionButtonBgOffData;
			this.clickSound.play();
			this.container.setCurrentOffset(this.offSet);
		}
		
		protected function outEvt(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.paginacionButtonBgData;
		}
		
		protected function overEvt(e:MouseEvent):void{
			this.bg.bitmapData = this.assets.paginacionButtonBgOverData;
		}
	}
}