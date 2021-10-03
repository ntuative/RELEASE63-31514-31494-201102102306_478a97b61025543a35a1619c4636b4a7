package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_524:uint = 0;
      
      public static const const_1353:uint = 1;
      
      public static const const_1866:int = 0;
      
      public static const const_1904:int = 1;
      
      public static const const_1723:int = 2;
      
      public static const const_1901:int = 3;
      
      public static const const_1393:int = 4;
      
      public static const const_371:int = 5;
      
      public static var var_1475:IMouseCursor;
      
      public static var var_371:IEventQueue;
      
      private static var var_565:IEventProcessor;
      
      private static var var_1580:uint = const_524;
      
      private static var stage:Stage;
      
      private static var var_140:IWindowRenderer;
       
      
      private var _eventProcessorState:EventProcessorState;
      
      private var var_2161:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_183:DisplayObjectContainer;
      
      protected var var_2781:Boolean = true;
      
      protected var var_1220:Error;
      
      protected var var_1971:int = -1;
      
      protected var var_1223:IInternalWindowServices;
      
      protected var var_1479:IWindowParser;
      
      protected var var_2727:IWindowFactory;
      
      protected var var_136:IDesktopWindow;
      
      protected var var_1480:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_528:Boolean = false;
      
      private var var_2162:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_140 = param2;
         this._localization = param4;
         this.var_183 = param5;
         this.var_1223 = new ServiceManager(this,param5);
         this.var_2727 = param3;
         this.var_1479 = new WindowParser(this);
         this.var_2161 = param7;
         if(!stage)
         {
            if(this.var_183 is Stage)
            {
               stage = this.var_183 as Stage;
            }
            else if(this.var_183.stage)
            {
               stage = this.var_183.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_136 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_183.addChild(this.var_136.getDisplayObject());
         this.var_183.doubleClickEnabled = true;
         this.var_183.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this._eventProcessorState = new EventProcessorState(var_140,this.var_136,this.var_136,null,this.var_2161);
         inputMode = const_524;
         this.var_1480 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1580;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_371)
         {
            if(var_371 is IDisposable)
            {
               IDisposable(var_371).dispose();
            }
         }
         if(var_565)
         {
            if(var_565 is IDisposable)
            {
               IDisposable(var_565).dispose();
            }
         }
         switch(value)
         {
            case const_524:
               var_371 = new MouseEventQueue(stage);
               var_565 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1353:
               var_371 = new TabletEventQueue(stage);
               var_565 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_524;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_183.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_183.removeChild(IGraphicContextHost(this.var_136).getGraphicContext(true) as DisplayObject);
            this.var_136.destroy();
            this.var_136 = null;
            this.var_1480.destroy();
            this.var_1480 = null;
            if(this.var_1223 is IDisposable)
            {
               IDisposable(this.var_1223).dispose();
            }
            this.var_1223 = null;
            this.var_1479.dispose();
            this.var_1479 = null;
            var_140 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1220;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_1971;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1220 = param2;
         this.var_1971 = param1;
         if(this.var_2781)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1220 = null;
         this.var_1971 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1223;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1479;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2727;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_136;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1475 == null)
         {
            var_1475 = new MouseCursorControl(this.var_183);
         }
         return var_1475;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_136.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1393,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1480;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_136,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_136)
         {
            this.var_136 = null;
         }
         if(param1.state != WindowState.const_475)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_140.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_528 = true;
         if(this.var_1220)
         {
            throw this.var_1220;
         }
         var_565.process(this._eventProcessorState,var_371);
         this.var_528 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2162 = true;
         var_140.update(param1);
         this.var_2162 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_136 != null && !this.var_136.disposed)
         {
            if(this.var_183 is Stage)
            {
               this.var_136.width = Stage(this.var_183).stageWidth;
               this.var_136.height = Stage(this.var_183).stageHeight;
            }
            else
            {
               this.var_136.width = this.var_183.width;
               this.var_136.height = this.var_183.height;
            }
         }
      }
   }
}
