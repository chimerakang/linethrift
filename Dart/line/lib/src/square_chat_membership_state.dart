/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.square_chat_membership_state;

class SquareChatMembershipState {
  static const int JOINED = 1;
  static const int LEFT = 2;

  static final Set<int> VALID_VALUES = new Set.from([
    JOINED
    , LEFT
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    JOINED: 'JOINED'
    , LEFT: 'LEFT'
  };
}
