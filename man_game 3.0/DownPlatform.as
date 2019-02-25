package  {
    
    import flash.display.MovieClip;
    
    /** 밟으면 아래로 내려가는 플랫폼입니다. */
    public class DownPlatform extends Platform {
        
        public function DownPlatform() {
            super();
        }
        
        internal override function OnLanding():void {
            super.OnLanding();
            this.y += 2;
            Man.current.y += 2;
        }
    }
    
}
