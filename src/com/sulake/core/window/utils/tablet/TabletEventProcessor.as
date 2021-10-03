package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2798:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_136 = param1.desktop;
         var_80 = param1.var_1217 as WindowController;
         _lastClickTarget = param1.var_1216 as WindowController;
         var_140 = param1.renderer;
         var_793 = param1.var_1218;
         param2.begin();
         param2.end();
         param1.desktop = var_136;
         param1.var_1217 = var_80;
         param1.var_1216 = _lastClickTarget;
         param1.renderer = var_140;
         param1.var_1218 = var_793;
      }
   }
}
