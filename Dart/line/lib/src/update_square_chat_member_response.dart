/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.update_square_chat_member_response;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class UpdateSquareChatMemberResponse implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("UpdateSquareChatMemberResponse");
  static final TField _UPDATED_CHAT_MEMBER_FIELD_DESC = new TField("updatedChatMember", TType.STRUCT, 1);

  SquareChatMember _updatedChatMember;
  static const int UPDATEDCHATMEMBER = 1;


  UpdateSquareChatMemberResponse() {
  }

  // updatedChatMember
  SquareChatMember get updatedChatMember => this._updatedChatMember;

  set updatedChatMember(SquareChatMember updatedChatMember) {
    this._updatedChatMember = updatedChatMember;
  }

  bool isSetUpdatedChatMember() => this.updatedChatMember != null;

  unsetUpdatedChatMember() {
    this.updatedChatMember = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case UPDATEDCHATMEMBER:
        return this.updatedChatMember;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case UPDATEDCHATMEMBER:
        if (value == null) {
          unsetUpdatedChatMember();
        } else {
          this.updatedChatMember = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case UPDATEDCHATMEMBER:
        return isSetUpdatedChatMember();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case UPDATEDCHATMEMBER:
          if (field.type == TType.STRUCT) {
            this.updatedChatMember = new SquareChatMember();
            this.updatedChatMember.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if (this.updatedChatMember != null) {
      oprot.writeFieldBegin(_UPDATED_CHAT_MEMBER_FIELD_DESC);
      this.updatedChatMember.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("UpdateSquareChatMemberResponse(");

    ret.write("updatedChatMember:");
    if (this.updatedChatMember == null) {
      ret.write("null");
    } else {
      ret.write(this.updatedChatMember);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
