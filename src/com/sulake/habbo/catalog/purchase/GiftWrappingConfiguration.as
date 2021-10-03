package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1264:Boolean = false;
      
      private var var_1600:int;
      
      private var var_1500:Array;
      
      private var var_759:Array;
      
      private var var_758:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1264 = _loc2_.isWrappingEnabled;
         this.var_1600 = _loc2_.wrappingPrice;
         this.var_1500 = _loc2_.stuffTypes;
         this.var_759 = _loc2_.boxTypes;
         this.var_758 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1264;
      }
      
      public function get price() : int
      {
         return this.var_1600;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1500;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_759;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_758;
      }
   }
}
