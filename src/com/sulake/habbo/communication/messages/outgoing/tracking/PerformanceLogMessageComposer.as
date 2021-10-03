package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2117:int = 0;
      
      private var var_1404:String = "";
      
      private var var_1807:String = "";
      
      private var var_2115:String = "";
      
      private var var_2114:String = "";
      
      private var var_1547:int = 0;
      
      private var var_2116:int = 0;
      
      private var var_2113:int = 0;
      
      private var var_1403:int = 0;
      
      private var var_2112:int = 0;
      
      private var var_1401:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2117 = param1;
         this.var_1404 = param2;
         this.var_1807 = param3;
         this.var_2115 = param4;
         this.var_2114 = param5;
         if(param6)
         {
            this.var_1547 = 1;
         }
         else
         {
            this.var_1547 = 0;
         }
         this.var_2116 = param7;
         this.var_2113 = param8;
         this.var_1403 = param9;
         this.var_2112 = param10;
         this.var_1401 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2117,this.var_1404,this.var_1807,this.var_2115,this.var_2114,this.var_1547,this.var_2116,this.var_2113,this.var_1403,this.var_2112,this.var_1401];
      }
   }
}
