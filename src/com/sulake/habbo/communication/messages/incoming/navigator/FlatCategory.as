package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1828:int;
      
      private var var_1988:String;
      
      private var var_372:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1828 = param1.readInteger();
         this.var_1988 = param1.readString();
         this.var_372 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1828;
      }
      
      public function get nodeName() : String
      {
         return this.var_1988;
      }
      
      public function get visible() : Boolean
      {
         return this.var_372;
      }
   }
}
