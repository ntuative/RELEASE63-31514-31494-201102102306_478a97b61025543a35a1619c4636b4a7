package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1264:Boolean;
      
      private var var_2340:int;
      
      private var var_1802:int;
      
      private var var_1803:int;
      
      private var var_2337:int;
      
      private var var_2339:int;
      
      private var var_2338:int;
      
      private var var_1996:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1264;
      }
      
      public function get commission() : int
      {
         return this.var_2340;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1802;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1803;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2339;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2337;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2338;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_1996;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1264 = param1.readBoolean();
         this.var_2340 = param1.readInteger();
         this.var_1802 = param1.readInteger();
         this.var_1803 = param1.readInteger();
         this.var_2339 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_1996 = param1.readInteger();
         return true;
      }
   }
}
