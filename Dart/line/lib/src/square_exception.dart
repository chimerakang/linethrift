/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.square_exception;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class SquareException implements TBase, Exception  {
  static final TStruct _STRUCT_DESC = new TStruct("SquareException");
  static final TField _ERROR_CODE_FIELD_DESC = new TField("errorCode", TType.I32, 1);
  static final TField _ERROR_EXTRA_INFO_FIELD_DESC = new TField("errorExtraInfo", TType.STRUCT, 2);
  static final TField _REASON_FIELD_DESC = new TField("reason", TType.STRING, 3);

  int _errorCode;
  static const int ERRORCODE = 1;
  ErrorExtraInfo _errorExtraInfo;
  static const int ERROREXTRAINFO = 2;
  String _reason;
  static const int REASON = 3;

  bool __isset_errorCode = false;

  SquareException() {
  }

  // errorCode
  int get errorCode => this._errorCode;

  set errorCode(int errorCode) {
    this._errorCode = errorCode;
    this.__isset_errorCode = true;
  }

  bool isSetErrorCode() => this.__isset_errorCode;

  unsetErrorCode() {
    this.__isset_errorCode = false;
  }

  // errorExtraInfo
  ErrorExtraInfo get errorExtraInfo => this._errorExtraInfo;

  set errorExtraInfo(ErrorExtraInfo errorExtraInfo) {
    this._errorExtraInfo = errorExtraInfo;
  }

  bool isSetErrorExtraInfo() => this.errorExtraInfo != null;

  unsetErrorExtraInfo() {
    this.errorExtraInfo = null;
  }

  // reason
  String get reason => this._reason;

  set reason(String reason) {
    this._reason = reason;
  }

  bool isSetReason() => this.reason != null;

  unsetReason() {
    this.reason = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ERRORCODE:
        return this.errorCode;
      case ERROREXTRAINFO:
        return this.errorExtraInfo;
      case REASON:
        return this.reason;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ERRORCODE:
        if (value == null) {
          unsetErrorCode();
        } else {
          this.errorCode = value;
        }
        break;

      case ERROREXTRAINFO:
        if (value == null) {
          unsetErrorExtraInfo();
        } else {
          this.errorExtraInfo = value;
        }
        break;

      case REASON:
        if (value == null) {
          unsetReason();
        } else {
          this.reason = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ERRORCODE:
        return isSetErrorCode();
      case ERROREXTRAINFO:
        return isSetErrorExtraInfo();
      case REASON:
        return isSetReason();
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
        case ERRORCODE:
          if (field.type == TType.I32) {
            this.errorCode = iprot.readI32();
            this.__isset_errorCode = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ERROREXTRAINFO:
          if (field.type == TType.STRUCT) {
            this.errorExtraInfo = new ErrorExtraInfo();
            this.errorExtraInfo.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REASON:
          if (field.type == TType.STRING) {
            this.reason = iprot.readString();
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
    oprot.writeFieldBegin(_ERROR_CODE_FIELD_DESC);
    oprot.writeI32(this.errorCode);
    oprot.writeFieldEnd();
    if (this.errorExtraInfo != null) {
      oprot.writeFieldBegin(_ERROR_EXTRA_INFO_FIELD_DESC);
      this.errorExtraInfo.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.reason != null) {
      oprot.writeFieldBegin(_REASON_FIELD_DESC);
      oprot.writeString(this.reason);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("SquareException(");

    ret.write("errorCode:");
    String errorCode_name = SQErrorCode.VALUES_TO_NAMES[this.errorCode];
    if (errorCode_name != null) {
      ret.write(errorCode_name);
      ret.write(" (");
    }
    ret.write(this.errorCode);
    if (errorCode_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("errorExtraInfo:");
    if (this.errorExtraInfo == null) {
      ret.write("null");
    } else {
      ret.write(this.errorExtraInfo);
    }

    ret.write(", ");
    ret.write("reason:");
    if (this.reason == null) {
      ret.write("null");
    } else {
      ret.write(this.reason);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetErrorCode() && !SQErrorCode.VALID_VALUES.contains(errorCode)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'errorCode' has been assigned the invalid value $errorCode");
    }
  }

}

