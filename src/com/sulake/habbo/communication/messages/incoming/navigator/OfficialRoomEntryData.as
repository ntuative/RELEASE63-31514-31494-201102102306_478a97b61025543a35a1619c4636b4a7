package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_995:int = 1;
      
      public static const const_684:int = 2;
      
      public static const const_749:int = 3;
      
      public static const const_1409:int = 4;
       
      
      private var _index:int;
      
      private var var_2589:String;
      
      private var var_2587:String;
      
      private var var_2588:Boolean;
      
      private var var_2590:String;
      
      private var var_807:String;
      
      private var var_2586:int;
      
      private var var_2282:int;
      
      private var _type:int;
      
      private var var_2020:String;
      
      private var var_926:GuestRoomData;
      
      private var var_925:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2589 = param1.readString();
         this.var_2587 = param1.readString();
         this.var_2588 = param1.readInteger() == 1;
         this.var_2590 = param1.readString();
         this.var_807 = param1.readString();
         this.var_2586 = param1.readInteger();
         this.var_2282 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_995)
         {
            this.var_2020 = param1.readString();
         }
         else if(this._type == const_749)
         {
            this.var_925 = new PublicRoomData(param1);
         }
         else if(this._type == const_684)
         {
            this.var_926 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_926 != null)
         {
            this.var_926.dispose();
            this.var_926 = null;
         }
         if(this.var_925 != null)
         {
            this.var_925.dispose();
            this.var_925 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2589;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2587;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2588;
      }
      
      public function get picText() : String
      {
         return this.var_2590;
      }
      
      public function get picRef() : String
      {
         return this.var_807;
      }
      
      public function get folderId() : int
      {
         return this.var_2586;
      }
      
      public function get tag() : String
      {
         return this.var_2020;
      }
      
      public function get userCount() : int
      {
         return this.var_2282;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_926;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_925;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_995)
         {
            return 0;
         }
         if(this.type == const_684)
         {
            return this.var_926.maxUserCount;
         }
         if(this.type == const_749)
         {
            return this.var_925.maxUsers;
         }
         return 0;
      }
   }
}
