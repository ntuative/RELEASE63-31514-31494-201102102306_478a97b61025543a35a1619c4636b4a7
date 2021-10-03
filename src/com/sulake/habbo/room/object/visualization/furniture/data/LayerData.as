package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_663:String = "";
      
      public static const const_423:int = 0;
      
      public static const const_428:int = 255;
      
      public static const const_884:Boolean = false;
      
      public static const const_541:int = 0;
      
      public static const const_540:int = 0;
      
      public static const const_549:int = 0;
      
      public static const const_1041:int = 1;
      
      public static const const_1140:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2020:String = "";
      
      private var var_1920:int = 0;
      
      private var var_2017:int = 255;
      
      private var var_2419:Boolean = false;
      
      private var var_2417:int = 0;
      
      private var var_2416:int = 0;
      
      private var var_2418:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2020 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2020;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1920;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2017 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2017;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2419 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2419;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2417 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2417;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2416 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2416;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2418 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2418;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
