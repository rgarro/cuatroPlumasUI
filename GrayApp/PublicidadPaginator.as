package cuatroPlumasUI.GrayApp {
	import pragmaTico.CRCarrosLeads.Web.Admin.Publicidad.Grid;
	import cuatroPlumasUI.GrayApp.PaginatorContainer;
	import flash.external.ExternalInterface;

	/**
	 * @author Rolando <rolando@emptyart.xyz>
	 */
	public class PublicidadPaginator extends PaginatorContainer {
		
		public var grid:Grid;
		
		public function PublicidadPaginator(limitInt:Number,totalI:Number):void {
			super(limitInt,totalI);
		}
		
		override public function setCurrentOffset(val:Number):void{
			this.current_offset = val;
			//ExternalInterface.call("alert", this.current_offset + "weeeee");
			this.grid.offSet = this.current_offset;
			this.grid.loadFinales();
		}
	}
}