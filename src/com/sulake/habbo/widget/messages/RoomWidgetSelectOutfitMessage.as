package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1099:String = "select_outfit";
       
      
      private var var_2624:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1099);
         this.var_2624 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2624;
      }
   }
}
