package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2385:String;
      
      private var var_2387:Array;
      
      private var var_2386:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2385 = param1;
         this.var_2387 = param2;
         this.var_2386 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2385;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2387;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2386;
      }
   }
}
