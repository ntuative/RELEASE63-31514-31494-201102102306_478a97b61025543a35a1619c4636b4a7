package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_833:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2631:int;
      
      private var var_2629:int;
      
      private var _color:uint;
      
      private var var_1145:int;
      
      private var var_2687:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_833);
         this.var_2631 = param1;
         this.var_2629 = param2;
         this._color = param3;
         this.var_1145 = param4;
         this.var_2687 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2631;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2629;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1145;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2687;
      }
   }
}
