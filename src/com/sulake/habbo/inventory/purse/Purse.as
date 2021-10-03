package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1738:int = 0;
      
      private var var_1737:int = 0;
      
      private var var_2683:int = 0;
      
      private var var_2682:Boolean = false;
      
      private var var_2375:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1738 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1737 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2683 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2682 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2375 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1738;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1737;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2683;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2682;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2375;
      }
   }
}
