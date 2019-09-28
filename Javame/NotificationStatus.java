/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class NotificationStatus implements org.apache.thrift.TEnum {

  public static final NotificationStatus NOTIFICATION_ITEM_EXIST = new NotificationStatus(1);
  public static final NotificationStatus TIMELINE_ITEM_EXIST = new NotificationStatus(2);
  public static final NotificationStatus NOTE_GROUP_NEW_ITEM_EXIST = new NotificationStatus(4);
  public static final NotificationStatus TIMELINE_BUDDYGROUP_CHANGED = new NotificationStatus(8);
  public static final NotificationStatus NOTE_ONE_TO_ONE_NEW_ITEM_EXIST = new NotificationStatus(16);
  public static final NotificationStatus ALBUM_ITEM_EXIST = new NotificationStatus(32);
  public static final NotificationStatus TIMELINE_ITEM_DELETED = new NotificationStatus(64);
  public static final NotificationStatus OTOGROUP_ITEM_EXIST = new NotificationStatus(128);
  public static final NotificationStatus GROUPHOME_NEW_ITEM_EXIST = new NotificationStatus(256);
  public static final NotificationStatus GROUPHOME_HIDDEN_ITEM_CHANGED = new NotificationStatus(512);
  public static final NotificationStatus NOTIFICATION_ITEM_CHANGED = new NotificationStatus(1024);
  public static final NotificationStatus BEAD_ITEM_HIDE = new NotificationStatus(2048);
  public static final NotificationStatus BEAD_ITEM_SHOW = new NotificationStatus(4096);

  private final int value;

  private NotificationStatus(int value) {
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
  public static NotificationStatus findByValue(int value) { 
    switch (value) {
      case 1:
        return NOTIFICATION_ITEM_EXIST;
      case 2:
        return TIMELINE_ITEM_EXIST;
      case 4:
        return NOTE_GROUP_NEW_ITEM_EXIST;
      case 8:
        return TIMELINE_BUDDYGROUP_CHANGED;
      case 16:
        return NOTE_ONE_TO_ONE_NEW_ITEM_EXIST;
      case 32:
        return ALBUM_ITEM_EXIST;
      case 64:
        return TIMELINE_ITEM_DELETED;
      case 128:
        return OTOGROUP_ITEM_EXIST;
      case 256:
        return GROUPHOME_NEW_ITEM_EXIST;
      case 512:
        return GROUPHOME_HIDDEN_ITEM_CHANGED;
      case 1024:
        return NOTIFICATION_ITEM_CHANGED;
      case 2048:
        return BEAD_ITEM_HIDE;
      case 4096:
        return BEAD_ITEM_SHOW;
      default:
        return null;
    }
  }
}