package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1033:Sound = null;
      
      private var _soundChannel:SoundChannel = null;
      
      private var var_514:Number;
      
      private var var_1273:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1033 = param1;
         this.var_1033.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_514 = 1;
         this.var_1273 = false;
      }
      
      public function play() : Boolean
      {
         this.var_1273 = false;
         this._soundChannel = this.var_1033.play(0);
         this.volume = this.var_514;
         return true;
      }
      
      public function stop() : Boolean
      {
         this._soundChannel.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_514;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_514 = param1;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = new SoundTransform(this.var_514);
         }
      }
      
      public function get position() : Number
      {
         return this._soundChannel.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1033.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1033.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this.var_1273;
      }
      
      private function onComplete(param1:Event) : void
      {
         this.var_1273 = true;
      }
   }
}
