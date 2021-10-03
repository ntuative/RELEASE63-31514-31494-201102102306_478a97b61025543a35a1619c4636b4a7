package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1329:IID;
      
      private var var_1657:String;
      
      private var var_114:IUnknown;
      
      private var var_701:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1329 = param1;
         this.var_1657 = getQualifiedClassName(this.var_1329);
         this.var_114 = param2;
         this.var_701 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1329;
      }
      
      public function get iis() : String
      {
         return this.var_1657;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_114;
      }
      
      public function get references() : uint
      {
         return this.var_701;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_114 == null;
      }
      
      public function dispose() : void
      {
         this.var_1329 = null;
         this.var_1657 = null;
         this.var_114 = null;
         this.var_701 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_701;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_701) : uint(0);
      }
   }
}
