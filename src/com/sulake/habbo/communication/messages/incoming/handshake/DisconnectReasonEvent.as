package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1892:int = 0;
      
      public static const const_1560:int = 1;
      
      public static const const_1486:int = 2;
      
      public static const const_1893:int = 3;
      
      public static const const_1841:int = 4;
      
      public static const const_1933:int = 5;
      
      public static const const_1496:int = 10;
      
      public static const const_1886:int = 11;
      
      public static const const_1849:int = 12;
      
      public static const const_1890:int = 13;
      
      public static const const_1929:int = 16;
      
      public static const const_1826:int = 17;
      
      public static const const_1915:int = 18;
      
      public static const const_1907:int = 19;
      
      public static const const_1736:int = 20;
      
      public static const const_1813:int = 22;
      
      public static const const_1855:int = 23;
      
      public static const const_1773:int = 24;
      
      public static const const_1800:int = 25;
      
      public static const const_1713:int = 26;
      
      public static const const_1832:int = 27;
      
      public static const const_1766:int = 28;
      
      public static const const_1926:int = 29;
      
      public static const const_1846:int = 100;
      
      public static const const_1760:int = 101;
      
      public static const const_1727:int = 102;
      
      public static const const_1918:int = 103;
      
      public static const const_1935:int = 104;
      
      public static const const_1836:int = 105;
      
      public static const const_1806:int = 106;
      
      public static const const_1889:int = 107;
      
      public static const const_1872:int = 108;
      
      public static const const_1714:int = 109;
      
      public static const const_1737:int = 110;
      
      public static const const_1709:int = 111;
      
      public static const const_1828:int = 112;
      
      public static const const_1820:int = 113;
      
      public static const const_1777:int = 114;
      
      public static const const_1708:int = 115;
      
      public static const const_1729:int = 116;
      
      public static const const_1825:int = 117;
      
      public static const const_1925:int = 118;
      
      public static const const_1923:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1560:
            case const_1496:
               return "banned";
            case const_1486:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
