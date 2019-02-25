package  {
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	
	public class RetryButton extends SimpleButton {
		
		public function RetryButton() {
			this.addEventListener(MouseEvent.CLICK, OnClick, false, 0, true);
		}
		
		private function OnClick(e:MouseEvent):void {
			this.removeEventListener(MouseEvent.CLICK, OnClick);
			
			Main.Retry();
		}
	}
	
}
