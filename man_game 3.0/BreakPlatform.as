package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 점프하면 사라지는 플랫폼입니다. */
    public class BreakPlatform extends Platform {
        
        public function BreakPlatform() {
            super();
        }
        
        internal override function Update(e:Event):void {
            if (this.visible)
                super.Update(e);
        }
        
        internal override function OnJump():void {
            super.OnJump();
            this.visible = false;
        }
    }
    
}
