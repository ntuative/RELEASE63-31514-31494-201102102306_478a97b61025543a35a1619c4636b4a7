package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_909:int = 10;
      
      private static const const_597:int = 20;
      
      private static const const_1252:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_288:Array;
      
      private var var_746:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_288 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_746)
            {
               this.var_746 = true;
               this.var_288 = new Array();
               this.var_288.push(const_1252);
               this.var_288.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_909)
         {
            if(this.var_746)
            {
               this.var_746 = false;
               this.var_288 = new Array();
               this.var_288.push(const_909 + param1);
               this.var_288.push(const_597 + param1);
               this.var_288.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
