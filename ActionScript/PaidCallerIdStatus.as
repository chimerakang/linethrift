/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package 
{
import org.apache.thrift.Set;
import flash.utils.Dictionary;
  public class PaidCallerIdStatus   {
    public static const NOT_SPECIFIED:int = 0;
    public static const VALID:int = 1;
    public static const VERIFICATION_REQUIRED:int = 2;
    public static const NOT_PERMITTED:int = 3;
    public static const LIMIT_EXCEEDED:int = 4;
    public static const LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED:int = 5;

    public static const VALID_VALUES:Set = new Set(NOT_SPECIFIED, VALID, VERIFICATION_REQUIRED, NOT_PERMITTED, LIMIT_EXCEEDED, LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[NOT_SPECIFIED] = "NOT_SPECIFIED";
      VALUES_TO_NAMES[VALID] = "VALID";
      VALUES_TO_NAMES[VERIFICATION_REQUIRED] = "VERIFICATION_REQUIRED";
      VALUES_TO_NAMES[NOT_PERMITTED] = "NOT_PERMITTED";
      VALUES_TO_NAMES[LIMIT_EXCEEDED] = "LIMIT_EXCEEDED";
      VALUES_TO_NAMES[LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED] = "LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED";

    }
  }
}