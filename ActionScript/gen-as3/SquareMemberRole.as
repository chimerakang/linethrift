/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package 
{
import org.apache.thrift.Set;
import flash.utils.Dictionary;
  public class SquareMemberRole   {
    public static const ADMIN:int = 1;
    public static const CO_ADMIN:int = 2;
    public static const MEMBER:int = 10;

    public static const VALID_VALUES:Set = new Set(ADMIN, CO_ADMIN, MEMBER);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[ADMIN] = "ADMIN";
      VALUES_TO_NAMES[CO_ADMIN] = "CO_ADMIN";
      VALUES_TO_NAMES[MEMBER] = "MEMBER";

    }
  }
}