package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2027:Boolean;
      
      private var var_2028:int;
      
      private var var_1500:Array;
      
      private var var_759:Array;
      
      private var var_758:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2027;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2028;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1500 = [];
         this.var_759 = [];
         this.var_758 = [];
         this.var_2027 = param1.readBoolean();
         this.var_2028 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1500.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_759.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_758.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
