package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1568:String = "WE_CREATE";
      
      public static const const_1524:String = "WE_CREATED";
      
      public static const const_1382:String = "WE_DESTROY";
      
      public static const const_306:String = "WE_DESTROYED";
      
      public static const const_1519:String = "WE_OPEN";
      
      public static const const_1415:String = "WE_OPENED";
      
      public static const const_1417:String = "WE_CLOSE";
      
      public static const const_1637:String = "WE_CLOSED";
      
      public static const const_1522:String = "WE_FOCUS";
      
      public static const const_276:String = "WE_FOCUSED";
      
      public static const const_1454:String = "WE_UNFOCUS";
      
      public static const const_1452:String = "WE_UNFOCUSED";
      
      public static const const_1365:String = "WE_ACTIVATE";
      
      public static const const_1379:String = "WE_ACTIVATED";
      
      public static const const_1505:String = "WE_DEACTIVATE";
      
      public static const const_859:String = "WE_DEACTIVATED";
      
      public static const const_477:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_626:String = "WE_UNSELECT";
      
      public static const const_861:String = "WE_UNSELECTED";
      
      public static const const_1798:String = "WE_ATTACH";
      
      public static const const_1894:String = "WE_ATTACHED";
      
      public static const const_1919:String = "WE_DETACH";
      
      public static const const_1814:String = "WE_DETACHED";
      
      public static const const_1601:String = "WE_LOCK";
      
      public static const const_1458:String = "WE_LOCKED";
      
      public static const const_1471:String = "WE_UNLOCK";
      
      public static const const_1358:String = "WE_UNLOCKED";
      
      public static const const_628:String = "WE_ENABLE";
      
      public static const const_289:String = "WE_ENABLED";
      
      public static const const_789:String = "WE_DISABLE";
      
      public static const const_212:String = "WE_DISABLED";
      
      public static const const_1554:String = "WE_RELOCATE";
      
      public static const const_377:String = "WE_RELOCATED";
      
      public static const const_1532:String = "WE_RESIZE";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1469:String = "WE_MINIMIZE";
      
      public static const const_1632:String = "WE_MINIMIZED";
      
      public static const const_1603:String = "WE_MAXIMIZE";
      
      public static const const_1616:String = "WE_MAXIMIZED";
      
      public static const const_1530:String = "WE_RESTORE";
      
      public static const const_1400:String = "WE_RESTORED";
      
      public static const const_1821:String = "WE_ARRANGE";
      
      public static const const_1887:String = "WE_ARRANGED";
      
      public static const const_106:String = "WE_UPDATE";
      
      public static const const_1931:String = "WE_UPDATED";
      
      public static const const_1818:String = "WE_CHILD_RELOCATE";
      
      public static const const_455:String = "WE_CHILD_RELOCATED";
      
      public static const const_1719:String = "WE_CHILD_RESIZE";
      
      public static const const_301:String = "WE_CHILD_RESIZED";
      
      public static const const_1741:String = "WE_CHILD_REMOVE";
      
      public static const const_536:String = "WE_CHILD_REMOVED";
      
      public static const const_1810:String = "WE_PARENT_RELOCATE";
      
      public static const const_1934:String = "WE_PARENT_RELOCATED";
      
      public static const const_1833:String = "WE_PARENT_RESIZE";
      
      public static const const_1430:String = "WE_PARENT_RESIZED";
      
      public static const const_174:String = "WE_OK";
      
      public static const const_828:String = "WE_CANCEL";
      
      public static const const_100:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_437:String = "WE_SCROLL";
      
      public static const const_154:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1975:IWindow;
      
      protected var var_1974:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1975 = param3;
         this.var_1974 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1975;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1974 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1974;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
