/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class OpStatus {
  public static inline var NORMAL : Int = 0;
  public static inline var ALERT_DISABLED : Int = 1;
  public static inline var ALWAYS : Int = 2;

  public static var VALID_VALUES = { new IntSet( [NORMAL, ALERT_DISABLED, ALWAYS]); };
  public static var VALUES_TO_NAMES = { [
    NORMAL => "NORMAL",
    ALERT_DISABLED => "ALERT_DISABLED",
    ALWAYS => "ALWAYS"
  ]; };
}