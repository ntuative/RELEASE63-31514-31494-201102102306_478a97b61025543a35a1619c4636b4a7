package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1513:IID;
      
      private var var_730:Boolean;
      
      private var var_1019:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1513 = param1;
         this.var_1019 = new Array();
         this.var_730 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1513;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_730;
      }
      
      public function get receivers() : Array
      {
         return this.var_1019;
      }
      
      public function dispose() : void
      {
         if(!this.var_730)
         {
            this.var_730 = true;
            this.var_1513 = null;
            while(this.var_1019.length > 0)
            {
               this.var_1019.pop();
            }
            this.var_1019 = null;
         }
      }
   }
}
