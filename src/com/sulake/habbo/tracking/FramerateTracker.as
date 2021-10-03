package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1718:int;
      
      private var var_2467:int;
      
      private var var_1114:int;
      
      private var var_504:Number;
      
      private var var_2468:Boolean;
      
      private var var_2469:int;
      
      private var var_1719:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2467 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2469 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2468 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1114;
         if(this.var_1114 == 1)
         {
            this.var_504 = param1;
            this.var_1718 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1114);
            this.var_504 = this.var_504 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2468 && param3 - this.var_1718 >= this.var_2467 && this.var_1719 < this.var_2469)
         {
            _loc5_ = 1000 / this.var_504;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1719;
            this.var_1718 = param3;
            this.var_1114 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
