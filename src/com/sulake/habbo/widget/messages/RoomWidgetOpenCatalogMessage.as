package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_339:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1044:String = "RWOCM_CLUB_MAIN";
      
      public static const const_980:String = "RWOCM_PIXELS";
      
      public static const const_1149:String = "RWOCM_CREDITS";
       
      
      private var var_2157:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_339);
         this.var_2157 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2157;
      }
   }
}
