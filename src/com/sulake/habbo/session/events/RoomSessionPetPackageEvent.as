package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_494:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_571:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var _objectId:int = 0;
      
      private var var_550:String = "";
      
      private var var_1751:int = 0;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param6,param7);
         this._objectId = param3;
         this.var_550 = param4;
         this.var_1751 = param5;
      }
      
      public function get objectId() : int
      {
         return this._objectId;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1751;
      }
   }
}
