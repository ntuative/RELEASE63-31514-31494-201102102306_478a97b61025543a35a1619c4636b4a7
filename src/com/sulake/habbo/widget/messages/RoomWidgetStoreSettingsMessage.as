package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_1633:String = "RWSSM_STORE_SETTINGS";
      
      public static const const_851:String = "RWSSM_STORE_SOUND";
      
      public static const const_879:String = "RWSSM_PREVIEW_SOUND";
       
      
      private var var_514:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function get volume() : Number
      {
         return this.var_514;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_514 = param1;
      }
   }
}
