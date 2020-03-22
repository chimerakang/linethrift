/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class ContactType {
  public static inline var MID : Int = 0;
  public static inline var PHONE : Int = 1;
  public static inline var EMAIL : Int = 2;
  public static inline var USERID : Int = 3;
  public static inline var PROXIMITY : Int = 4;
  public static inline var GROUP : Int = 5;
  public static inline var USER : Int = 6;
  public static inline var QRCODE : Int = 7;
  public static inline var PROMOTION_BOT : Int = 8;
  public static inline var CONTACT_MESSAGE : Int = 9;
  public static inline var FRIEND_REQUEST : Int = 10;
  public static inline var REPAIR : Int = 128;
  public static inline var FACEBOOK : Int = 2305;
  public static inline var SINA : Int = 2306;
  public static inline var RENREN : Int = 2307;
  public static inline var FEIXIN : Int = 2308;
  public static inline var BBM : Int = 2309;
  public static inline var BEACON : Int = 11;

  public static var VALID_VALUES = { new IntSet( [MID, PHONE, EMAIL, USERID, PROXIMITY, GROUP, USER, QRCODE, PROMOTION_BOT, CONTACT_MESSAGE, FRIEND_REQUEST, REPAIR, FACEBOOK, SINA, RENREN, FEIXIN, BBM, BEACON]); };
  public static var VALUES_TO_NAMES = { [
    MID => "MID",
    PHONE => "PHONE",
    EMAIL => "EMAIL",
    USERID => "USERID",
    PROXIMITY => "PROXIMITY",
    GROUP => "GROUP",
    USER => "USER",
    QRCODE => "QRCODE",
    PROMOTION_BOT => "PROMOTION_BOT",
    CONTACT_MESSAGE => "CONTACT_MESSAGE",
    FRIEND_REQUEST => "FRIEND_REQUEST",
    REPAIR => "REPAIR",
    FACEBOOK => "FACEBOOK",
    SINA => "SINA",
    RENREN => "RENREN",
    FEIXIN => "FEIXIN",
    BBM => "BBM",
    BEACON => "BEACON"
  ]; };
}