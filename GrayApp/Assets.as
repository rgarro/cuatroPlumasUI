package cuatroPlumasUI.GrayApp {
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class Assets {
		[Embed(source="Assets/bg.png")]
		private var bg:Class;
		private var _bg:Bitmap = new bg() as Bitmap;
		
		public function get bgClass():Bitmap{
			return _bg;
		}
		
		public function get bgData():BitmapData{
			return _bg.bitmapData;
		}
	}
}