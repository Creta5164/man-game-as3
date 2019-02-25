package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/** 랜덤하게 좌 우로 이동하는 플랫폼입니다. */
	public class MovingPlatform extends Platform {
		
		private var behavior:Number;
		private var time:int;
		public  var activated:Boolean;
		
		public function MovingPlatform() {
			super();
			
			behavior = -2;
			time = 30;
			activated = false;
		}
		
		internal override function Update(e:Event):void {
			
			super.Update(e);
			
			if (!activated)
				return;
			
			if (this.time == 0) {
				
				this.time = (Math.random() * 160 + 30);
				this.behavior = Math.random() * 5 - 2;
				
				while (this.behavior == 0)
					this.behavior = Math.random() * 5 - 2;
				
			} else {
				
				time--;
				if (this.x < 0 || this.x > 550)
					this.behavior *= -1;
				
				this.x += this.behavior;
			}
		}
		
		internal override function OnLanding():void {
			super.OnLanding();
			activated = true;
			Man.current.x += this.behavior;
		}
	}
	
}
