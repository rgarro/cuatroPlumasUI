package cuatroPlumasUI.GrayApp {
	import flash.text.TextFormat;
	import flash.display.Sprite;
	import flash.display.Bitmap;
	

	/**
	 * @author rolando
	 */
	public class AppContainer extends Sprite {
		protected var bg:Bitmap;
		protected var assets:Assets;
		protected var tf:TextFormat;
		
		public function AppContainer() {
			tf = new TextFormat();
			tf.size = 20;
			tf.color = 0x000000;
			this.assets = new Assets();
			this.bg = new Bitmap(assets.bgData);
			this.addChild(bg);
		}
	}
}