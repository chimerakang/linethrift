/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class LoginType implements org.apache.thrift.TEnum {

  public static final LoginType ID_CREDENTIAL = new LoginType(0);
  public static final LoginType QRCODE = new LoginType(1);
  public static final LoginType ID_CREDENTIAL_WITH_E2EE = new LoginType(2);

  private final int value;

  private LoginType(int value) {
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
  public static LoginType findByValue(int value) { 
    switch (value) {
      case 0:
        return ID_CREDENTIAL;
      case 1:
        return QRCODE;
      case 2:
        return ID_CREDENTIAL_WITH_E2EE;
      default:
        return null;
    }
  }
}
