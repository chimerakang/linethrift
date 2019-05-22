/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

public enum ReportType implements org.apache.thrift.TEnum {
  ADVERTISING(1),
  GENDER_HARASSMENT(2),
  HARASSMENT(3),
  OTHER(4);

  private final int value;

  private ReportType(int value) {
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
  public static ReportType findByValue(int value) { 
    switch (value) {
      case 1:
        return ADVERTISING;
      case 2:
        return GENDER_HARASSMENT;
      case 3:
        return HARASSMENT;
      case 4:
        return OTHER;
      default:
        return null;
    }
  }
}