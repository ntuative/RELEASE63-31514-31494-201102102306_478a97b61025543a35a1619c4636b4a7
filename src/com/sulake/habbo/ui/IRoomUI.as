package com.sulake.habbo.ui
{
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.session.IRoomSession;
   
   public interface IRoomUI extends IUnknown
   {
       
      
      function createDesktop(param1:IRoomSession) : IRoomDesktop;
      
      function disposeDesktop(param1:String) : void;
      
      function method_2(param1:String) : IRoomDesktop;
   }
}
