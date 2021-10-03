package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2148:Number;
      
      private var var_1687:Number;
      
      private var var_829:Number;
      
      private var var_828:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2148 = param1;
         this.var_1687 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_829 = param1;
         this.var_828 = 0;
      }
      
      public function update() : void
      {
         this.var_829 += this.var_1687;
         this.var_828 += this.var_829;
         if(this.var_828 > 0)
         {
            this.var_828 = 0;
            this.var_829 = this.var_2148 * -1 * this.var_829;
         }
      }
      
      public function get location() : Number
      {
         return this.var_828;
      }
   }
}
