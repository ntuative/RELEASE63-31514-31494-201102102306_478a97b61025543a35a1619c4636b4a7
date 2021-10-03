package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2487:int;
      
      private var var_1358:String;
      
      private var _objId:int;
      
      private var var_1518:int;
      
      private var _category:int;
      
      private var var_1980:String;
      
      private var var_2689:Boolean;
      
      private var var_2691:Boolean;
      
      private var var_2690:Boolean;
      
      private var var_2048:Boolean;
      
      private var var_2138:int;
      
      private var var_1336:int;
      
      private var var_1520:String = "";
      
      private var var_2576:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2487 = param1;
         this.var_1358 = param2;
         this._objId = param3;
         this.var_1518 = param4;
         this._category = param5;
         this.var_1980 = param6;
         this.var_2689 = param7;
         this.var_2691 = param8;
         this.var_2690 = param9;
         this.var_2048 = param10;
         this.var_2138 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1520 = param1;
         this.var_1336 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2487;
      }
      
      public function get itemType() : String
      {
         return this.var_1358;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1518;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1980;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2689;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2691;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2690;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2048;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2138;
      }
      
      public function get slotId() : String
      {
         return this.var_1520;
      }
      
      public function get songId() : int
      {
         return this.var_2576;
      }
      
      public function get extra() : int
      {
         return this.var_1336;
      }
   }
}
