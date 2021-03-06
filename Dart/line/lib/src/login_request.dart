/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.login_request;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class LoginRequest implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("LoginRequest");
  static final TField _TYPE_FIELD_DESC = new TField("type", TType.I32, 1);
  static final TField _IDENTITY_PROVIDER_FIELD_DESC = new TField("identityProvider", TType.I32, 2);
  static final TField _IDENTIFIER_FIELD_DESC = new TField("identifier", TType.STRING, 3);
  static final TField _PASSWORD_FIELD_DESC = new TField("password", TType.STRING, 4);
  static final TField _KEEP_LOGGED_IN_FIELD_DESC = new TField("keepLoggedIn", TType.BOOL, 5);
  static final TField _ACCESS_LOCATION_FIELD_DESC = new TField("accessLocation", TType.STRING, 6);
  static final TField _SYSTEM_NAME_FIELD_DESC = new TField("systemName", TType.STRING, 7);
  static final TField _CERTIFICATE_FIELD_DESC = new TField("certificate", TType.STRING, 8);
  static final TField _VERIFIER_FIELD_DESC = new TField("verifier", TType.STRING, 9);
  static final TField _SECRET_FIELD_DESC = new TField("secret", TType.STRING, 10);
  static final TField _E2EE_VERSION_FIELD_DESC = new TField("e2eeVersion", TType.I32, 11);

  int _type = 0;
  static const int TYPE = 1;
  int _identityProvider = 0;
  static const int IDENTITYPROVIDER = 2;
  String _identifier;
  static const int IDENTIFIER = 3;
  String _password;
  static const int PASSWORD = 4;
  bool _keepLoggedIn = false;
  static const int KEEPLOGGEDIN = 5;
  String _accessLocation;
  static const int ACCESSLOCATION = 6;
  String _systemName;
  static const int SYSTEMNAME = 7;
  String _certificate;
  static const int CERTIFICATE = 8;
  String _verifier;
  static const int VERIFIER = 9;
  String _secret;
  static const int SECRET = 10;
  int _e2eeVersion = 0;
  static const int E2EEVERSION = 11;

  bool __isset_type = false;
  bool __isset_identityProvider = false;
  bool __isset_keepLoggedIn = false;
  bool __isset_e2eeVersion = false;

  LoginRequest() {
  }

  // type
  int get type => this._type;

  set type(int type) {
    this._type = type;
    this.__isset_type = true;
  }

  bool isSetType() => this.__isset_type;

  unsetType() {
    this.__isset_type = false;
  }

  // identityProvider
  int get identityProvider => this._identityProvider;

  set identityProvider(int identityProvider) {
    this._identityProvider = identityProvider;
    this.__isset_identityProvider = true;
  }

  bool isSetIdentityProvider() => this.__isset_identityProvider;

  unsetIdentityProvider() {
    this.__isset_identityProvider = false;
  }

  // identifier
  String get identifier => this._identifier;

  set identifier(String identifier) {
    this._identifier = identifier;
  }

  bool isSetIdentifier() => this.identifier != null;

  unsetIdentifier() {
    this.identifier = null;
  }

  // password
  String get password => this._password;

  set password(String password) {
    this._password = password;
  }

  bool isSetPassword() => this.password != null;

  unsetPassword() {
    this.password = null;
  }

  // keepLoggedIn
  bool get keepLoggedIn => this._keepLoggedIn;

  set keepLoggedIn(bool keepLoggedIn) {
    this._keepLoggedIn = keepLoggedIn;
    this.__isset_keepLoggedIn = true;
  }

  bool isSetKeepLoggedIn() => this.__isset_keepLoggedIn;

  unsetKeepLoggedIn() {
    this.__isset_keepLoggedIn = false;
  }

  // accessLocation
  String get accessLocation => this._accessLocation;

  set accessLocation(String accessLocation) {
    this._accessLocation = accessLocation;
  }

  bool isSetAccessLocation() => this.accessLocation != null;

  unsetAccessLocation() {
    this.accessLocation = null;
  }

  // systemName
  String get systemName => this._systemName;

  set systemName(String systemName) {
    this._systemName = systemName;
  }

  bool isSetSystemName() => this.systemName != null;

  unsetSystemName() {
    this.systemName = null;
  }

  // certificate
  String get certificate => this._certificate;

  set certificate(String certificate) {
    this._certificate = certificate;
  }

  bool isSetCertificate() => this.certificate != null;

  unsetCertificate() {
    this.certificate = null;
  }

  // verifier
  String get verifier => this._verifier;

  set verifier(String verifier) {
    this._verifier = verifier;
  }

  bool isSetVerifier() => this.verifier != null;

  unsetVerifier() {
    this.verifier = null;
  }

  // secret
  String get secret => this._secret;

  set secret(String secret) {
    this._secret = secret;
  }

  bool isSetSecret() => this.secret != null;

  unsetSecret() {
    this.secret = null;
  }

  // e2eeVersion
  int get e2eeVersion => this._e2eeVersion;

  set e2eeVersion(int e2eeVersion) {
    this._e2eeVersion = e2eeVersion;
    this.__isset_e2eeVersion = true;
  }

  bool isSetE2eeVersion() => this.__isset_e2eeVersion;

  unsetE2eeVersion() {
    this.__isset_e2eeVersion = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return this.type;
      case IDENTITYPROVIDER:
        return this.identityProvider;
      case IDENTIFIER:
        return this.identifier;
      case PASSWORD:
        return this.password;
      case KEEPLOGGEDIN:
        return this.keepLoggedIn;
      case ACCESSLOCATION:
        return this.accessLocation;
      case SYSTEMNAME:
        return this.systemName;
      case CERTIFICATE:
        return this.certificate;
      case VERIFIER:
        return this.verifier;
      case SECRET:
        return this.secret;
      case E2EEVERSION:
        return this.e2eeVersion;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TYPE:
        if (value == null) {
          unsetType();
        } else {
          this.type = value;
        }
        break;

      case IDENTITYPROVIDER:
        if (value == null) {
          unsetIdentityProvider();
        } else {
          this.identityProvider = value;
        }
        break;

      case IDENTIFIER:
        if (value == null) {
          unsetIdentifier();
        } else {
          this.identifier = value;
        }
        break;

      case PASSWORD:
        if (value == null) {
          unsetPassword();
        } else {
          this.password = value;
        }
        break;

      case KEEPLOGGEDIN:
        if (value == null) {
          unsetKeepLoggedIn();
        } else {
          this.keepLoggedIn = value;
        }
        break;

      case ACCESSLOCATION:
        if (value == null) {
          unsetAccessLocation();
        } else {
          this.accessLocation = value;
        }
        break;

      case SYSTEMNAME:
        if (value == null) {
          unsetSystemName();
        } else {
          this.systemName = value;
        }
        break;

      case CERTIFICATE:
        if (value == null) {
          unsetCertificate();
        } else {
          this.certificate = value;
        }
        break;

      case VERIFIER:
        if (value == null) {
          unsetVerifier();
        } else {
          this.verifier = value;
        }
        break;

      case SECRET:
        if (value == null) {
          unsetSecret();
        } else {
          this.secret = value;
        }
        break;

      case E2EEVERSION:
        if (value == null) {
          unsetE2eeVersion();
        } else {
          this.e2eeVersion = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return isSetType();
      case IDENTITYPROVIDER:
        return isSetIdentityProvider();
      case IDENTIFIER:
        return isSetIdentifier();
      case PASSWORD:
        return isSetPassword();
      case KEEPLOGGEDIN:
        return isSetKeepLoggedIn();
      case ACCESSLOCATION:
        return isSetAccessLocation();
      case SYSTEMNAME:
        return isSetSystemName();
      case CERTIFICATE:
        return isSetCertificate();
      case VERIFIER:
        return isSetVerifier();
      case SECRET:
        return isSetSecret();
      case E2EEVERSION:
        return isSetE2eeVersion();
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
        case TYPE:
          if (field.type == TType.I32) {
            this.type = iprot.readI32();
            this.__isset_type = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IDENTITYPROVIDER:
          if (field.type == TType.I32) {
            this.identityProvider = iprot.readI32();
            this.__isset_identityProvider = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IDENTIFIER:
          if (field.type == TType.STRING) {
            this.identifier = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PASSWORD:
          if (field.type == TType.STRING) {
            this.password = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case KEEPLOGGEDIN:
          if (field.type == TType.BOOL) {
            this.keepLoggedIn = iprot.readBool();
            this.__isset_keepLoggedIn = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ACCESSLOCATION:
          if (field.type == TType.STRING) {
            this.accessLocation = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SYSTEMNAME:
          if (field.type == TType.STRING) {
            this.systemName = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CERTIFICATE:
          if (field.type == TType.STRING) {
            this.certificate = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VERIFIER:
          if (field.type == TType.STRING) {
            this.verifier = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SECRET:
          if (field.type == TType.STRING) {
            this.secret = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case E2EEVERSION:
          if (field.type == TType.I32) {
            this.e2eeVersion = iprot.readI32();
            this.__isset_e2eeVersion = true;
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
    oprot.writeFieldBegin(_TYPE_FIELD_DESC);
    oprot.writeI32(this.type);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_IDENTITY_PROVIDER_FIELD_DESC);
    oprot.writeI32(this.identityProvider);
    oprot.writeFieldEnd();
    if (this.identifier != null) {
      oprot.writeFieldBegin(_IDENTIFIER_FIELD_DESC);
      oprot.writeString(this.identifier);
      oprot.writeFieldEnd();
    }
    if (this.password != null) {
      oprot.writeFieldBegin(_PASSWORD_FIELD_DESC);
      oprot.writeString(this.password);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_KEEP_LOGGED_IN_FIELD_DESC);
    oprot.writeBool(this.keepLoggedIn);
    oprot.writeFieldEnd();
    if (this.accessLocation != null) {
      oprot.writeFieldBegin(_ACCESS_LOCATION_FIELD_DESC);
      oprot.writeString(this.accessLocation);
      oprot.writeFieldEnd();
    }
    if (this.systemName != null) {
      oprot.writeFieldBegin(_SYSTEM_NAME_FIELD_DESC);
      oprot.writeString(this.systemName);
      oprot.writeFieldEnd();
    }
    if (this.certificate != null) {
      oprot.writeFieldBegin(_CERTIFICATE_FIELD_DESC);
      oprot.writeString(this.certificate);
      oprot.writeFieldEnd();
    }
    if (this.verifier != null) {
      oprot.writeFieldBegin(_VERIFIER_FIELD_DESC);
      oprot.writeString(this.verifier);
      oprot.writeFieldEnd();
    }
    if (this.secret != null) {
      oprot.writeFieldBegin(_SECRET_FIELD_DESC);
      oprot.writeString(this.secret);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_E2EE_VERSION_FIELD_DESC);
    oprot.writeI32(this.e2eeVersion);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("LoginRequest(");

    ret.write("type:");
    ret.write(this.type);

    ret.write(", ");
    ret.write("identityProvider:");
    ret.write(this.identityProvider);

    ret.write(", ");
    ret.write("identifier:");
    if (this.identifier == null) {
      ret.write("null");
    } else {
      ret.write(this.identifier);
    }

    ret.write(", ");
    ret.write("password:");
    if (this.password == null) {
      ret.write("null");
    } else {
      ret.write(this.password);
    }

    ret.write(", ");
    ret.write("keepLoggedIn:");
    ret.write(this.keepLoggedIn);

    ret.write(", ");
    ret.write("accessLocation:");
    if (this.accessLocation == null) {
      ret.write("null");
    } else {
      ret.write(this.accessLocation);
    }

    ret.write(", ");
    ret.write("systemName:");
    if (this.systemName == null) {
      ret.write("null");
    } else {
      ret.write(this.systemName);
    }

    ret.write(", ");
    ret.write("certificate:");
    if (this.certificate == null) {
      ret.write("null");
    } else {
      ret.write(this.certificate);
    }

    ret.write(", ");
    ret.write("verifier:");
    if (this.verifier == null) {
      ret.write("null");
    } else {
      ret.write(this.verifier);
    }

    ret.write(", ");
    ret.write("secret:");
    if (this.secret == null) {
      ret.write("null");
    } else {
      ret.write(this.secret);
    }

    ret.write(", ");
    ret.write("e2eeVersion:");
    ret.write(this.e2eeVersion);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

