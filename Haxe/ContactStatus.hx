/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class ContactStatus {
  public static inline var UNSPECIFIED : Int = 0;
  public static inline var FRIEND : Int = 1;
  public static inline var FRIEND_BLOCKED : Int = 2;
  public static inline var RECOMMEND : Int = 3;
  public static inline var RECOMMEND_BLOCKED : Int = 4;
  public static inline var DELETED : Int = 5;
  public static inline var DELETED_BLOCKED : Int = 6;

  public static var VALID_VALUES = { new IntSet( [UNSPECIFIED, FRIEND, FRIEND_BLOCKED, RECOMMEND, RECOMMEND_BLOCKED, DELETED, DELETED_BLOCKED]); };
  public static var VALUES_TO_NAMES = { [
    UNSPECIFIED => "UNSPECIFIED",
    FRIEND => "FRIEND",
    FRIEND_BLOCKED => "FRIEND_BLOCKED",
    RECOMMEND => "RECOMMEND",
    RECOMMEND_BLOCKED => "RECOMMEND_BLOCKED",
    DELETED => "DELETED",
    DELETED_BLOCKED => "DELETED_BLOCKED"
  ]; };
}