/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.buddy_on_air_type;

class BuddyOnAirType {
  static const int NORMAL = 0;
  static const int LIVE = 1;
  static const int VOIP = 2;

  static final Set<int> VALID_VALUES = new Set.from([
    NORMAL
    , LIVE
    , VOIP
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    NORMAL: 'NORMAL'
    , LIVE: 'LIVE'
    , VOIP: 'VOIP'
  };
}