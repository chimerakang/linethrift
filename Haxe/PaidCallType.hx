/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class PaidCallType {
  public static inline var OUT : Int = 0;
  public static inline var IN : Int = 1;
  public static inline var TOLLFREE : Int = 2;
  public static inline var RECORD : Int = 3;
  public static inline var AD : Int = 4;
  public static inline var CS : Int = 5;

  public static var VALID_VALUES = { new IntSet( [OUT, IN, TOLLFREE, RECORD, AD, CS]); };
  public static var VALUES_TO_NAMES = { [
    OUT => "OUT",
    IN => "IN",
    TOLLFREE => "TOLLFREE",
    RECORD => "RECORD",
    AD => "AD",
    CS => "CS"
  ]; };
}
