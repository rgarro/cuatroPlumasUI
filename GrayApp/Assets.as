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
		
		[Embed(source="Assets/btn.png")]
		private var btn:Class;
		private var _btn:Bitmap = new btn() as Bitmap;
		
		public function get btnClass():Bitmap{
			return _btn;
		}
		
		public function get btnData():BitmapData{
			return _btn.bitmapData;
		}
		
		[Embed(source="Assets/btnover.png")]
		private var btnover:Class;
		private var _btnover:Bitmap = new btnover() as Bitmap;
		
		public function get btnoverClass():Bitmap{
			return _btnover;
		}
		
		public function get btnoverData():BitmapData{
			return _btnover.bitmapData;
		}
		
		[Embed(source="Assets/btnclick.png")]
		private var btnclick:Class;
		private var _btnclick:Bitmap = new btnclick() as Bitmap;
		
		public function get btnclickClass():Bitmap{
			return _btnclick;
		}
		
		public function get btnclickData():BitmapData{
			return _btnclick.bitmapData;
		}
	}
}