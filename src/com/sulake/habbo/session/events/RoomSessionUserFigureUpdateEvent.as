package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_153:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_550:String = "";
      
      private var var_812:String = "";
      
      private var var_1739:String = "";
      
      private var var_2222:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_153,param1,param7,param8);
         this._userId = param2;
         this.var_550 = param3;
         this.var_812 = param4;
         this.var_1739 = param5;
         this.var_2222 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get gender() : String
      {
         return this.var_812;
      }
      
      public function get customInfo() : String
      {
         return this.var_1739;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2222;
      }
   }
}
