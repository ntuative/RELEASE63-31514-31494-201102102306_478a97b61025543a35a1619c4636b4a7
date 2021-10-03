package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_809:Array;
      
      private var var_2107:String;
      
      private var var_2105:String;
      
      private var var_2106:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_809 = param1;
         this.var_2107 = param2;
         this.var_2105 = param3;
         this.var_2106 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_809;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2107;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2105;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2106;
      }
   }
}
