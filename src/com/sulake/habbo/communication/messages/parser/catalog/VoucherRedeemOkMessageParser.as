package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_924:String = "";
      
      private var var_1143:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1143 = "";
         this.var_924 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1143 = param1.readString();
         this.var_924 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_924;
      }
      
      public function get productDescription() : String
      {
         return this.var_1143;
      }
   }
}
