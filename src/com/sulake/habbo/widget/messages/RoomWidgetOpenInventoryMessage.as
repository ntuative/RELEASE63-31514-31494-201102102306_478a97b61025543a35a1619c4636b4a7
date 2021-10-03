package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_653:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1010:String = "inventory_effects";
      
      public static const const_1132:String = "inventory_badges";
      
      public static const const_1578:String = "inventory_clothes";
      
      public static const const_1474:String = "inventory_furniture";
       
      
      private var var_2645:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_653);
         this.var_2645 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2645;
      }
   }
}
