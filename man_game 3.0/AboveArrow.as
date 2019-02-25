package  {
    
    import flash.display.MovieClip;
    import flash.events.Event;
    
    /** 플레이어가 화면 위로 올라갔을 때 표시되는 화살표입니다. */
    public class AboveArrow extends MovieClipInstance {
        
        public function AboveArrow() {
            super();
        }
        
        internal override function Update(e:Event):void {
            
            this.visible = Man.current.y < -3;
            
            if (this.visible)
                this.x = Man.current.x;
        }
    }
    
}
