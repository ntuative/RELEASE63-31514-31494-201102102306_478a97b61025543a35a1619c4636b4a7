package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_274:int;
      
      private var var_2277:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_274 = param1;
         this.var_2277 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_274;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2277;
      }
   }
}
