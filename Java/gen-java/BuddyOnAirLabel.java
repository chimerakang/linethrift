/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public enum BuddyOnAirLabel implements org.apache.thrift.TEnum {
  ON_AIR(0),
  LIVE(1);

  private final int value;

  private BuddyOnAirLabel(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  @org.apache.thrift.annotation.Nullable
  public static BuddyOnAirLabel findByValue(int value) { 
    switch (value) {
      case 0:
        return ON_AIR;
      case 1:
        return LIVE;
      default:
        return null;
    }
  }
}