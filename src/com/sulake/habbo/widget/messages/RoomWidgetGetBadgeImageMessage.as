package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_836:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_274:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_836);
         this.var_274 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_274;
      }
   }
}
