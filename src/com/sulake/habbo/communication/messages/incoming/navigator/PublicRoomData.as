package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2490:String;
      
      private var var_2201:int;
      
      private var var_2163:int;
      
      private var var_2449:String;
      
      private var var_2491:int;
      
      private var var_1828:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2490 = param1.readString();
         this.var_2201 = param1.readInteger();
         this.var_2163 = param1.readInteger();
         this.var_2449 = param1.readString();
         this.var_2491 = param1.readInteger();
         this.var_1828 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2490;
      }
      
      public function get unitPort() : int
      {
         return this.var_2201;
      }
      
      public function get worldId() : int
      {
         return this.var_2163;
      }
      
      public function get castLibs() : String
      {
         return this.var_2449;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2491;
      }
      
      public function get nodeId() : int
      {
         return this.var_1828;
      }
   }
}
