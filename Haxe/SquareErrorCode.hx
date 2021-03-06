/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class SquareErrorCode {
  public static inline var UNKNOWN : Int = 0;
  public static inline var INTERNAL_ERROR : Int = 500;
  public static inline var NOT_IMPLEMENTED : Int = 501;
  public static inline var TRY_AGAIN_LATER : Int = 503;
  public static inline var MAINTENANCE : Int = 505;
  public static inline var ILLEGAL_ARGUMENT : Int = 400;
  public static inline var AUTHENTICATION_FAILURE : Int = 401;
  public static inline var FORBIDDEN : Int = 403;
  public static inline var NOT_FOUND : Int = 404;
  public static inline var REVISION_MISMATCH : Int = 409;
  public static inline var PRECONDITION_FAILED : Int = 410;

  public static var VALID_VALUES = { new IntSet( [UNKNOWN, INTERNAL_ERROR, NOT_IMPLEMENTED, TRY_AGAIN_LATER, MAINTENANCE, ILLEGAL_ARGUMENT, AUTHENTICATION_FAILURE, FORBIDDEN, NOT_FOUND, REVISION_MISMATCH, PRECONDITION_FAILED]); };
  public static var VALUES_TO_NAMES = { [
    UNKNOWN => "UNKNOWN",
    INTERNAL_ERROR => "INTERNAL_ERROR",
    NOT_IMPLEMENTED => "NOT_IMPLEMENTED",
    TRY_AGAIN_LATER => "TRY_AGAIN_LATER",
    MAINTENANCE => "MAINTENANCE",
    ILLEGAL_ARGUMENT => "ILLEGAL_ARGUMENT",
    AUTHENTICATION_FAILURE => "AUTHENTICATION_FAILURE",
    FORBIDDEN => "FORBIDDEN",
    NOT_FOUND => "NOT_FOUND",
    REVISION_MISMATCH => "REVISION_MISMATCH",
    PRECONDITION_FAILED => "PRECONDITION_FAILED"
  ]; };
}
