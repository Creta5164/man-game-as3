package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/** 물입니다. */
	public class Water extends MovieClipInstance {
		
		public function Water() {
			super();
		}
		
		internal override function Update(e:Event):void {
			if (this.hitTestObject(Man.current)) {
				Man.current.inWater = true;
				Main.Gravity = 0.1;
				
				if (Man.current.yspeed >= 3) {
					Man.current.yspeed = 2;
				}
			} else {
				Man.current.inWater = false;
				Main.Gravity = 1;
				
			}
		}
	}
	
}
