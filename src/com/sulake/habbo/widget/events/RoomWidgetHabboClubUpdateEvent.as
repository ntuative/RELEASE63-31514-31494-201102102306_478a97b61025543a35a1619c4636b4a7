package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_264:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2547:int = 0;
      
      private var var_2548:int = 0;
      
      private var var_2546:int = 0;
      
      private var var_2549:Boolean = false;
      
      private var var_2325:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_264,param6,param7);
         this.var_2547 = param1;
         this.var_2548 = param2;
         this.var_2546 = param3;
         this.var_2549 = param4;
         this.var_2325 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2547;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2548;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2546;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2549;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2325;
      }
   }
}
