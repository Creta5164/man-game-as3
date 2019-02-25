package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class ReplayButton extends SimpleButton {
		
		
		public function ReplayButton() {
			this.addEventListener(MouseEvent.CLICK, OnClick, false, 0, true);
		}
		
		private function OnClick(e:MouseEvent):void {
			this.removeEventListener(MouseEvent.CLICK, OnClick);
			
			Main.Reset();
		}
	}
	
}