package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2631:int;
      
      private var var_2629:int;
      
      private var var_2630:String;
      
      private var var_2628:int;
      
      private var var_2627:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2631 = param1;
         this.var_2629 = param2;
         this.var_2630 = param3;
         this.var_2628 = param4;
         this.var_2627 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2631,this.var_2629,this.var_2630,this.var_2628,int(this.var_2627)];
      }
      
      public function dispose() : void
      {
      }
   }
}
