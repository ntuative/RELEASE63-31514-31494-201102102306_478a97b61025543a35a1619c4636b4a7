package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SellablePetBreedsParser implements IMessageParser
   {
       
      
      private var var_1276:int = 0;
      
      private var var_1122:Array;
      
      public function SellablePetBreedsParser()
      {
         this.var_1122 = [];
         super();
      }
      
      public function get petType() : int
      {
         return this.var_1276;
      }
      
      public function get sellableBreeds() : Array
      {
         return this.var_1122.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1276 = 0;
         this.var_1122 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1276 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1122.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1122.sort(Array.NUMERIC);
         return true;
      }
   }
}
