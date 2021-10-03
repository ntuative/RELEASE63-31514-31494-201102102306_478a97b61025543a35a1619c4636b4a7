package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2111:int;
      
      private var var_2109:int;
      
      private var var_2110:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2111 = param1;
         this.var_2109 = param2;
         this.var_2110 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2111,this.var_2109,this.var_2110];
      }
      
      public function dispose() : void
      {
      }
   }
}
