package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1606:String = "WN_CRETAE";
      
      public static const const_1626:String = "WN_CREATED";
      
      public static const const_1145:String = "WN_DESTROY";
      
      public static const const_1139:String = "WN_DESTROYED";
      
      public static const const_1098:String = "WN_OPEN";
      
      public static const const_1056:String = "WN_OPENED";
      
      public static const const_1110:String = "WN_CLOSE";
      
      public static const const_1073:String = "WN_CLOSED";
      
      public static const const_1190:String = "WN_FOCUS";
      
      public static const const_1154:String = "WN_FOCUSED";
      
      public static const const_1143:String = "WN_UNFOCUS";
      
      public static const const_1109:String = "WN_UNFOCUSED";
      
      public static const const_1105:String = "WN_ACTIVATE";
      
      public static const const_351:String = "WN_ACTVATED";
      
      public static const const_1138:String = "WN_DEACTIVATE";
      
      public static const const_1021:String = "WN_DEACTIVATED";
      
      public static const const_560:String = "WN_SELECT";
      
      public static const const_398:String = "WN_SELECTED";
      
      public static const const_739:String = "WN_UNSELECT";
      
      public static const const_701:String = "WN_UNSELECTED";
      
      public static const const_1106:String = "WN_LOCK";
      
      public static const const_999:String = "WN_LOCKED";
      
      public static const const_1079:String = "WN_UNLOCK";
      
      public static const const_996:String = "WN_UNLOCKED";
      
      public static const const_1090:String = "WN_ENABLE";
      
      public static const const_740:String = "WN_ENABLED";
      
      public static const const_1165:String = "WN_DISABLE";
      
      public static const const_841:String = "WN_DISABLED";
      
      public static const const_750:String = "WN_RESIZE";
      
      public static const const_190:String = "WN_RESIZED";
      
      public static const const_969:String = "WN_RELOCATE";
      
      public static const const_520:String = "WN_RELOCATED";
      
      public static const const_983:String = "WN_MINIMIZE";
      
      public static const const_1016:String = "WN_MINIMIZED";
      
      public static const const_1088:String = "WN_MAXIMIZE";
      
      public static const const_1062:String = "WN_MAXIMIZED";
      
      public static const const_1104:String = "WN_RESTORE";
      
      public static const const_1035:String = "WN_RESTORED";
      
      public static const const_1795:String = "WN_ARRANGE";
      
      public static const const_1845:String = "WN_ARRANGED";
      
      public static const const_1780:String = "WN_UPDATE";
      
      public static const const_1850:String = "WN_UPDATED";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_737:String = "WN_CHILD_REMOVED";
      
      public static const const_312:String = "WN_CHILD_RESIZED";
      
      public static const const_296:String = "WN_CHILD_RELOCATED";
      
      public static const const_219:String = "WN_CHILD_ACTIVATED";
      
      public static const const_472:String = "WN_PARENT_ADDED";
      
      public static const const_992:String = "WN_PARENT_REMOVED";
      
      public static const const_429:String = "WN_PARENT_RESIZED";
      
      public static const const_1042:String = "WN_PARENT_RELOCATED";
      
      public static const const_817:String = "WN_PARENT_ACTIVATED";
      
      public static const const_478:String = "WN_STATE_UPDATED";
      
      public static const const_501:String = "WN_STYLE_UPDATED";
      
      public static const const_480:String = "WN_PARAM_UPDATED";
      
      public static const const_1742:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1975,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
