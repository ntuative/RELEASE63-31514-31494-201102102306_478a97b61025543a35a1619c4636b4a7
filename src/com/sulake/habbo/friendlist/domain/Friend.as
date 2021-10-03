package com.sulake.habbo.friendlist.domain
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   import com.sulake.habbo.friendlist.IFriend;
   import flash.display.BitmapData;
   
   public class Friend implements IFriend, IDisposable
   {
      
      public static const const_1891:int = "F".charCodeAt(0);
      
      public static const const_1883:int = "M".charCodeAt(0);
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_812:int;
      
      private var var_695:Boolean;
      
      private var var_1695:Boolean;
      
      private var var_550:String;
      
      private var var_1717:String;
      
      private var var_1630:String;
      
      private var var_1257:int;
      
      private var var_188:Boolean;
      
      private var _disposed:Boolean;
      
      private var _view:IWindowContainer;
      
      private var var_1113:BitmapData;
      
      private var var_1629:String;
      
      public function Friend(param1:FriendData)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         this._id = param1.id;
         this._name = param1.name;
         this.var_812 = param1.gender;
         this.var_695 = param1.online;
         this.var_1695 = param1.followingAllowed && param1.online;
         this.var_550 = param1.figure;
         this.var_1717 = param1.motto;
         this.var_1630 = param1.lastAccess;
         this.var_1257 = param1.categoryId;
         this.var_1629 = param1.realName;
         Logger.log("Creating friend: " + this.id + ", " + this.name + ", " + this.gender + ", " + this.online + ", " + this.followingAllowed + ", " + this.figure + ", " + this.categoryId);
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         if(this.var_1113 != null)
         {
            this.var_1113.dispose();
            this.var_1113 = null;
         }
         this._disposed = true;
         this._view = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_812;
      }
      
      public function get online() : Boolean
      {
         return this.var_695;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1695;
      }
      
      public function get figure() : String
      {
         return this.var_550;
      }
      
      public function get motto() : String
      {
         return this.var_1717;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1630;
      }
      
      public function get categoryId() : int
      {
         return this.var_1257;
      }
      
      public function get selected() : Boolean
      {
         return this.var_188;
      }
      
      public function get view() : IWindowContainer
      {
         return this._view;
      }
      
      public function get face() : BitmapData
      {
         return this.var_1113;
      }
      
      public function get realName() : String
      {
         return this.var_1629;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_812 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_695 = param1;
      }
      
      public function set followingAllowed(param1:Boolean) : void
      {
         this.var_1695 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_550 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1717 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1630 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1257 = param1;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.var_188 = param1;
      }
      
      public function set view(param1:IWindowContainer) : void
      {
         this._view = param1;
      }
      
      public function set face(param1:BitmapData) : void
      {
         this.var_1113 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1629 = param1;
      }
   }
}
