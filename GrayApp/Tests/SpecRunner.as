package cuatroPlumasUI.GrayApp.Tests {
	import flash.display.Sprite;
import org.libspark.as3unit.components.AS3Unit;
	import org.libspark.as3unit.runner.AS3UnitCore;

	import cuatroPlumasUI.GrayApp.Tests.AllTests;
	/**
	 * @author rolando
	 */
	public class SpecRunner extends Sprite {
		public function SpecRunner() {
			trace("here baby");
			AS3UnitCore.main(AllTests);
		}
	}
}