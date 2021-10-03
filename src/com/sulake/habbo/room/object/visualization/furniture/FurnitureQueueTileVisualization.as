package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1250:int = 2;
      
      private static const const_1251:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_288:Array;
      
      private var var_1048:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_288 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1250)
         {
            this.var_288 = new Array();
            this.var_288.push(const_1251);
            this.var_1048 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1048 > 0)
         {
            --this.var_1048;
         }
         if(this.var_1048 == 0)
         {
            if(this.var_288.length > 0)
            {
               super.setAnimation(this.var_288.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
