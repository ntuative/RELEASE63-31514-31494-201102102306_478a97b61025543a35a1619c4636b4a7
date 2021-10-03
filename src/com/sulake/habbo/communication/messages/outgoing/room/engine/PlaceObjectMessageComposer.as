package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var _objectId:int;
      
      private var var_2088:int;
      
      private var var_2617:String;
      
      private var _x:int = 0;
      
      private var var_166:int = 0;
      
      private var var_237:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this._objectId = param1;
         this.var_2088 = param2;
         this.var_2617 = param3;
         this._x = param4;
         this.var_166 = param5;
         this.var_237 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2088)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this._objectId + " " + this._x + " " + this.var_166 + " " + this.var_237];
            case RoomObjectCategoryEnum.const_27:
               return [this._objectId + " " + this.var_2617];
            default:
               return [];
         }
      }
   }
}
