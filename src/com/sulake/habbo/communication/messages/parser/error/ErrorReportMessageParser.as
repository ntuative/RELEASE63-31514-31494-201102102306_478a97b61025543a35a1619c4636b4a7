package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1613:int;
      
      private var var_1864:int;
      
      private var var_1865:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1864 = param1.readInteger();
         this.var_1613 = param1.readInteger();
         this.var_1865 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1613 = 0;
         this.var_1864 = 0;
         this.var_1865 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1613;
      }
      
      public function get messageId() : int
      {
         return this.var_1864;
      }
      
      public function get timestamp() : String
      {
         return this.var_1865;
      }
   }
}
