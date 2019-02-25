package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 밟고있으면 사라지는 플랫폼입니다. */
    public class OpacityPlatform extends Platform {
        
        
        public function OpacityPlatform() {
            super();
        }
        
        internal override function Update(e:Event):void {
            if (this.visible)
                super.Update(e);
        }
        
        internal override function OnLanding():void {
            super.OnLanding();
            this.alpha -= 0.01;
            if (this.alpha < 0) {
                this.visible = false;
            }
        }
    }
    
}
