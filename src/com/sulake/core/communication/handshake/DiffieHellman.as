package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_848:BigInteger;
      
      private var var_2237:BigInteger;
      
      private var var_1789:BigInteger;
      
      private var var_2556:BigInteger;
      
      private var var_1394:BigInteger;
      
      private var var_1790:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1394 = param1;
         this.var_1790 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1394.toString() + ",generator: " + this.var_1790.toString() + ",secret: " + param1);
         this.var_848 = new BigInteger();
         this.var_848.fromRadix(param1,param2);
         this.var_2237 = this.var_1790.modPow(this.var_848,this.var_1394);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1789 = new BigInteger();
         this.var_1789.fromRadix(param1,param2);
         this.var_2556 = this.var_1789.modPow(this.var_848,this.var_1394);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2237.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2556.toRadix(param1);
      }
   }
}
