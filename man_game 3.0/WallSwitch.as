package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class WallSwitch extends MovieClipInstance {
		
		private var objects:Array;
		
		public function WallSwitch() {
			super();
		}
		
		public function RemoveTarget(objects:Array):void {
			this.objects = objects;
		}
		
		internal override function Update(e:Event):void {
			
			if (this.visible && this.hitTestObject(Man.current)) {
				
				if (objects != null)
				for (var i:int = 0; i < objects.length; i++)
					objects[i].x += 600;
				
				this.visible = false;
			}
		}
		
		internal override function Dispose(e:Event):void {
			
			this.objects = null;
			
			super.Dispose(e);
		}
	}
}
