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
  public class WapInvitationType   {
    public static const REGISTRATION:int = 1;
    public static const CHAT:int = 2;

    public static const VALID_VALUES:Set = new Set(REGISTRATION, CHAT);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[REGISTRATION] = "REGISTRATION";
      VALUES_TO_NAMES[CHAT] = "CHAT";

    }
  }
}
