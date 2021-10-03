package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2747:uint;
      
      private var var_135:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1009:IMouseDraggingService;
      
      private var var_1010:IMouseScalingService;
      
      private var var_1013:IMouseListenerService;
      
      private var var_1011:IFocusManagerService;
      
      private var var_1008:IToolTipAgentService;
      
      private var var_1012:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2747 = 0;
         this.var_135 = param2;
         this._windowContext = param1;
         this.var_1009 = new WindowMouseDragger(param2);
         this.var_1010 = new WindowMouseScaler(param2);
         this.var_1013 = new WindowMouseListener(param2);
         this.var_1011 = new FocusManager(param2);
         this.var_1008 = new WindowToolTipAgent(param2);
         this.var_1012 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1009 != null)
         {
            this.var_1009.dispose();
            this.var_1009 = null;
         }
         if(this.var_1010 != null)
         {
            this.var_1010.dispose();
            this.var_1010 = null;
         }
         if(this.var_1013 != null)
         {
            this.var_1013.dispose();
            this.var_1013 = null;
         }
         if(this.var_1011 != null)
         {
            this.var_1011.dispose();
            this.var_1011 = null;
         }
         if(this.var_1008 != null)
         {
            this.var_1008.dispose();
            this.var_1008 = null;
         }
         if(this.var_1012 != null)
         {
            this.var_1012.dispose();
            this.var_1012 = null;
         }
         this.var_135 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1009;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1010;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1013;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1011;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1008;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1012;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
