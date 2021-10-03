package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2151:int;
      
      private var var_1358:String;
      
      private var var_2298:int;
      
      private var var_2299:int;
      
      private var _category:int;
      
      private var var_1980:String;
      
      private var var_1336:int;
      
      private var var_2300:int;
      
      private var var_2302:int;
      
      private var var_2296:int;
      
      private var var_2301:int;
      
      private var var_2297:Boolean;
      
      private var var_2797:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2151 = param1;
         this.var_1358 = param2;
         this.var_2298 = param3;
         this.var_2299 = param4;
         this._category = param5;
         this.var_1980 = param6;
         this.var_1336 = param7;
         this.var_2300 = param8;
         this.var_2302 = param9;
         this.var_2296 = param10;
         this.var_2301 = param11;
         this.var_2297 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2151;
      }
      
      public function get itemType() : String
      {
         return this.var_1358;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2298;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2299;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1980;
      }
      
      public function get extra() : int
      {
         return this.var_1336;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2300;
      }
      
      public function get creationDay() : int
      {
         return this.var_2302;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2296;
      }
      
      public function get creationYear() : int
      {
         return this.var_2301;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2297;
      }
      
      public function get songID() : int
      {
         return this.var_1336;
      }
   }
}
