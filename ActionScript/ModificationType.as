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
  public class ModificationType   {
    public static const ADD:int = 0;
    public static const REMOVE:int = 1;
    public static const MODIFY:int = 2;

    public static const VALID_VALUES:Set = new Set(ADD, REMOVE, MODIFY);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[ADD] = "ADD";
      VALUES_TO_NAMES[REMOVE] = "REMOVE";
      VALUES_TO_NAMES[MODIFY] = "MODIFY";

    }
  }
}
