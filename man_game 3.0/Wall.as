package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/** 벽입니다. (activated를 활성화하면 랜덤하게 이동) */
	public class Wall extends MovieClipInstance {
		
		private var behavior:Number;
		private var time:int;
		public  var activated:Boolean;

		public function Wall() {
			super();
			activated = false;
		}
		
		internal override function Update(e:Event):void {
			
			if (this.hitTestObject(Man.current)) {
				
				if (Man.current.x < this.x) {
					Man.current.x -= 1;
					if (Main.RightKey) 
						Man.current.x -= Man.current.xspeed;
				}
				
				if (Man.current.x > this.x) {
					Man.current.x += 1;
					if (Main.LeftKey) 
						Man.current.x += Man.current.xspeed;
				}
			}
			
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
	}
	
}
