/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.fetch_direction;

class FetchDirection {
  static const int FORWARD = 1;
  static const int BACKWARD = 2;

  static final Set<int> VALID_VALUES = new Set.from([
    FORWARD
    , BACKWARD
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    FORWARD: 'FORWARD'
    , BACKWARD: 'BACKWARD'
  };
}