package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_671:String = "RWUAM_WHISPER_USER";
      
      public static const const_754:String = "RWUAM_IGNORE_USER";
      
      public static const const_877:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_476:String = "RWUAM_KICK_USER";
      
      public static const const_669:String = "RWUAM_BAN_USER";
      
      public static const const_788:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_805:String = "RWUAM_RESPECT_USER";
      
      public static const const_636:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_858:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_795:String = "RWUAM_START_TRADING";
      
      public static const const_613:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_464:String = "RWUAM_KICK_BOT";
      
      public static const const_816:String = "RWUAM_REPORT";
      
      public static const const_555:String = "RWUAM_PICKUP_PET";
      
      public static const const_1638:String = "RWUAM_TRAIN_PET";
      
      public static const const_522:String = " RWUAM_RESPECT_PET";
      
      public static const const_383:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
