package  {
    
    import flash.events.Event;
    import flash.display.MovieClip;
    
    public class MovieClipInstance extends MovieClip {

        public function MovieClipInstance() {
            
            this.addEventListener(Event.ENTER_FRAME, Update, false, 0, true);
            this.addEventListener(Event.REMOVED_FROM_STAGE, Dispose, false, 0, true);
            
        }
        
        internal function Update(e:Event):void { }
        
        internal function Dispose(e:Event):void {
            this.stop();
            this.removeEventListener(Event.ENTER_FRAME, Update);
            this.removeEventListener(Event.REMOVED_FROM_STAGE, Dispose);
        }

    }
    
}
