package cuatroPlumasUI.GrayApp {
	import flash.display.Sprite;
	import flash.display.Bitmap;
	

	/**
	 * @author rolando
	 */
	public class AppContainer extends Sprite {
		protected var bg:Bitmap;
		protected var assets:Assets;
		
		public function AppContainer() {
			this.assets = new Assets();
			this.bg = new Bitmap(assets.bgData);
			this.addChild(bg);
		}
	}
}