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
  public class SyncTriggerReason   {
    public static const OTHER:int = 0;
    public static const REVISION_GAP_TOO_LARGE:int = 1;
    public static const OPERATION_EXPIRED:int = 2;

    public static const VALID_VALUES:Set = new Set(OTHER, REVISION_GAP_TOO_LARGE, OPERATION_EXPIRED);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[OTHER] = "OTHER";
      VALUES_TO_NAMES[REVISION_GAP_TOO_LARGE] = "REVISION_GAP_TOO_LARGE";
      VALUES_TO_NAMES[OPERATION_EXPIRED] = "OPERATION_EXPIRED";

    }
  }
}
