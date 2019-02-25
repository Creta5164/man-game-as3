package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/** 회전할 수 있는 플랫폼입니다. */
	public class RotatePlatform extends Platform {
		
		public var rotate:Number;
		
		public function RotatePlatform() {
			super();
			
			rotate = 0;
		}
		
		internal override function Update(e:Event):void {
			super.Update(e);
			
			this.rotation += rotate;
		}
	}
}