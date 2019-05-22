/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.age_check_request_result;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class AgeCheckRequestResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("AgeCheckRequestResult");
  static final TField _AUTH_URL_FIELD_DESC = new TField("authUrl", TType.STRING, 1);
  static final TField _SESSION_ID_FIELD_DESC = new TField("sessionId", TType.STRING, 2);

  String _authUrl;
  static const int AUTHURL = 1;
  String _sessionId;
  static const int SESSIONID = 2;


  AgeCheckRequestResult() {
  }

  // authUrl
  String get authUrl => this._authUrl;

  set authUrl(String authUrl) {
    this._authUrl = authUrl;
  }

  bool isSetAuthUrl() => this.authUrl != null;

  unsetAuthUrl() {
    this.authUrl = null;
  }

  // sessionId
  String get sessionId => this._sessionId;

  set sessionId(String sessionId) {
    this._sessionId = sessionId;
  }

  bool isSetSessionId() => this.sessionId != null;

  unsetSessionId() {
    this.sessionId = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case AUTHURL:
        return this.authUrl;
      case SESSIONID:
        return this.sessionId;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case AUTHURL:
        if (value == null) {
          unsetAuthUrl();
        } else {
          this.authUrl = value;
        }
        break;

      case SESSIONID:
        if (value == null) {
          unsetSessionId();
        } else {
          this.sessionId = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case AUTHURL:
        return isSetAuthUrl();
      case SESSIONID:
        return isSetSessionId();
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
        case AUTHURL:
          if (field.type == TType.STRING) {
            this.authUrl = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SESSIONID:
          if (field.type == TType.STRING) {
            this.sessionId = iprot.readString();
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
    if (this.authUrl != null) {
      oprot.writeFieldBegin(_AUTH_URL_FIELD_DESC);
      oprot.writeString(this.authUrl);
      oprot.writeFieldEnd();
    }
    if (this.sessionId != null) {
      oprot.writeFieldBegin(_SESSION_ID_FIELD_DESC);
      oprot.writeString(this.sessionId);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("AgeCheckRequestResult(");

    ret.write("authUrl:");
    if (this.authUrl == null) {
      ret.write("null");
    } else {
      ret.write(this.authUrl);
    }

    ret.write(", ");
    ret.write("sessionId:");
    if (this.sessionId == null) {
      ret.write("null");
    } else {
      ret.write(this.sessionId);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
