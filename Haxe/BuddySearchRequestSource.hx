/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class BuddySearchRequestSource {
  public static inline var NA : Int = 0;
  public static inline var FRIEND_VIEW : Int = 1;
  public static inline var OFFICIAL_ACCOUNT_VIEW : Int = 2;

  public static var VALID_VALUES = { new IntSet( [NA, FRIEND_VIEW, OFFICIAL_ACCOUNT_VIEW]); };
  public static var VALUES_TO_NAMES = { [
    NA => "NA",
    FRIEND_VIEW => "FRIEND_VIEW",
    OFFICIAL_ACCOUNT_VIEW => "OFFICIAL_ACCOUNT_VIEW"
  ]; };
}