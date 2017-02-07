package cuatroPlumasUI.GrayApp {
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.display.Sprite;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 * generic circle gauge
	 */
	public class Gauge extends Sprite {
		
		public var face:Shape;
		public var needle:Shape;
		
		public function Gauge(min:int,max:int,label:String):void {
			this.face = new Shape();
    		face.graphics.beginFill(0xffffff);
    		face.graphics.drawCircle(0,0,35);//200px
    		face.graphics.endFill();
			this.addChild(this.face);
		}
		
		protected function drawGauge():void{
		
		}
		
		protected function setLabel():void{
		
		}
				
		protected function placeNumbers():void{
		
		}
		
		public function updateValue(upval:int):void{
		
		}
	}
}