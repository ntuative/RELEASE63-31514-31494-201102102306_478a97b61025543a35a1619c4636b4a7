package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2053:int;
      
      private var var_2534:int;
      
      private var var_2532:int;
      
      private var _dayOffsets:Array;
      
      private var var_1862:Array;
      
      private var var_1863:Array;
      
      private var var_2533:int;
      
      private var var_2535:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2053;
      }
      
      public function get offerCount() : int
      {
         return this.var_2534;
      }
      
      public function get historyLength() : int
      {
         return this.var_2532;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1862;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1863;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2533;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2535;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2053 = param1.readInteger();
         this.var_2534 = param1.readInteger();
         this.var_2532 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1862 = [];
         this.var_1863 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1862.push(param1.readInteger());
            this.var_1863.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2535 = param1.readInteger();
         this.var_2533 = param1.readInteger();
         return true;
      }
   }
}
