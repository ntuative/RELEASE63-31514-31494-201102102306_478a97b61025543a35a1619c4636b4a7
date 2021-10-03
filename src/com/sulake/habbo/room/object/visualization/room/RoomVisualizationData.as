package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_508:WallRasterizer;
      
      private var var_510:FloorRasterizer;
      
      private var var_761:WallAdRasterizer;
      
      private var var_509:LandscapeRasterizer;
      
      private var var_760:PlaneMaskManager;
      
      private var var_735:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_508 = new WallRasterizer();
         this.var_510 = new FloorRasterizer();
         this.var_761 = new WallAdRasterizer();
         this.var_509 = new LandscapeRasterizer();
         this.var_760 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_735;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_510;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_508;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_761;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_509;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_760;
      }
      
      public function dispose() : void
      {
         if(this.var_508 != null)
         {
            this.var_508.dispose();
            this.var_508 = null;
         }
         if(this.var_510 != null)
         {
            this.var_510.dispose();
            this.var_510 = null;
         }
         if(this.var_761 != null)
         {
            this.var_761.dispose();
            this.var_761 = null;
         }
         if(this.var_509 != null)
         {
            this.var_509.dispose();
            this.var_509 = null;
         }
         if(this.var_760 != null)
         {
            this.var_760.dispose();
            this.var_760 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_508 != null)
         {
            this.var_508.clearCache();
         }
         if(this.var_510 != null)
         {
            this.var_510.clearCache();
         }
         if(this.var_509 != null)
         {
            this.var_509.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_508.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_510.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_761.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_509.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_760.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_735)
         {
            return;
         }
         this.var_508.initializeAssetCollection(param1);
         this.var_510.initializeAssetCollection(param1);
         this.var_761.initializeAssetCollection(param1);
         this.var_509.initializeAssetCollection(param1);
         this.var_760.initializeAssetCollection(param1);
         this.var_735 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
