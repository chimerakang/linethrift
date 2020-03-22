/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.sns_id_user_status;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class SnsIdUserStatus implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("SnsIdUserStatus");
  static final TField _USER_EXISTING_FIELD_DESC = new TField("userExisting", TType.BOOL, 1);
  static final TField _PHONE_NUMBER_REGISTERED_FIELD_DESC = new TField("phoneNumberRegistered", TType.BOOL, 2);
  static final TField _SAME_DEVICE_FIELD_DESC = new TField("sameDevice", TType.BOOL, 3);

  bool _userExisting = false;
  static const int USEREXISTING = 1;
  bool _phoneNumberRegistered = false;
  static const int PHONENUMBERREGISTERED = 2;
  bool _sameDevice = false;
  static const int SAMEDEVICE = 3;

  bool __isset_userExisting = false;
  bool __isset_phoneNumberRegistered = false;
  bool __isset_sameDevice = false;

  SnsIdUserStatus() {
  }

  // userExisting
  bool get userExisting => this._userExisting;

  set userExisting(bool userExisting) {
    this._userExisting = userExisting;
    this.__isset_userExisting = true;
  }

  bool isSetUserExisting() => this.__isset_userExisting;

  unsetUserExisting() {
    this.__isset_userExisting = false;
  }

  // phoneNumberRegistered
  bool get phoneNumberRegistered => this._phoneNumberRegistered;

  set phoneNumberRegistered(bool phoneNumberRegistered) {
    this._phoneNumberRegistered = phoneNumberRegistered;
    this.__isset_phoneNumberRegistered = true;
  }

  bool isSetPhoneNumberRegistered() => this.__isset_phoneNumberRegistered;

  unsetPhoneNumberRegistered() {
    this.__isset_phoneNumberRegistered = false;
  }

  // sameDevice
  bool get sameDevice => this._sameDevice;

  set sameDevice(bool sameDevice) {
    this._sameDevice = sameDevice;
    this.__isset_sameDevice = true;
  }

  bool isSetSameDevice() => this.__isset_sameDevice;

  unsetSameDevice() {
    this.__isset_sameDevice = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case USEREXISTING:
        return this.userExisting;
      case PHONENUMBERREGISTERED:
        return this.phoneNumberRegistered;
      case SAMEDEVICE:
        return this.sameDevice;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case USEREXISTING:
        if (value == null) {
          unsetUserExisting();
        } else {
          this.userExisting = value;
        }
        break;

      case PHONENUMBERREGISTERED:
        if (value == null) {
          unsetPhoneNumberRegistered();
        } else {
          this.phoneNumberRegistered = value;
        }
        break;

      case SAMEDEVICE:
        if (value == null) {
          unsetSameDevice();
        } else {
          this.sameDevice = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case USEREXISTING:
        return isSetUserExisting();
      case PHONENUMBERREGISTERED:
        return isSetPhoneNumberRegistered();
      case SAMEDEVICE:
        return isSetSameDevice();
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
        case USEREXISTING:
          if (field.type == TType.BOOL) {
            this.userExisting = iprot.readBool();
            this.__isset_userExisting = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PHONENUMBERREGISTERED:
          if (field.type == TType.BOOL) {
            this.phoneNumberRegistered = iprot.readBool();
            this.__isset_phoneNumberRegistered = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SAMEDEVICE:
          if (field.type == TType.BOOL) {
            this.sameDevice = iprot.readBool();
            this.__isset_sameDevice = true;
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
    oprot.writeFieldBegin(_USER_EXISTING_FIELD_DESC);
    oprot.writeBool(this.userExisting);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_PHONE_NUMBER_REGISTERED_FIELD_DESC);
    oprot.writeBool(this.phoneNumberRegistered);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_SAME_DEVICE_FIELD_DESC);
    oprot.writeBool(this.sameDevice);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("SnsIdUserStatus(");

    ret.write("userExisting:");
    ret.write(this.userExisting);

    ret.write(", ");
    ret.write("phoneNumberRegistered:");
    ret.write(this.phoneNumberRegistered);

    ret.write(", ");
    ret.write("sameDevice:");
    ret.write(this.sameDevice);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
