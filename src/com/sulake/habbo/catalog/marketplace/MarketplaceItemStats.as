package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2053:int;
      
      private var var_2534:int;
      
      private var var_2532:int;
      
      private var _dayOffsets:Array;
      
      private var var_1862:Array;
      
      private var var_1863:Array;
      
      private var var_2533:int;
      
      private var var_2535:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2053 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2534 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2532 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1862 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1863 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2533 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2535 = param1;
      }
   }
}
