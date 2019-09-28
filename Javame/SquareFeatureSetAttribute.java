/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class SquareFeatureSetAttribute implements org.apache.thrift.TEnum {

  public static final SquareFeatureSetAttribute CREATING_SECRET_SQUARE_CHAT = new SquareFeatureSetAttribute(1);
  public static final SquareFeatureSetAttribute INVITING_INTO_OPEN_SQUARE_CHAT = new SquareFeatureSetAttribute(2);

  private final int value;

  private SquareFeatureSetAttribute(int value) {
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
  public static SquareFeatureSetAttribute findByValue(int value) { 
    switch (value) {
      case 1:
        return CREATING_SECRET_SQUARE_CHAT;
      case 2:
        return INVITING_INTO_OPEN_SQUARE_CHAT;
      default:
        return null;
    }
  }
}