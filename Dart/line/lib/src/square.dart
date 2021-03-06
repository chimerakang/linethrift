/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.square;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class Square implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("Square");
  static final TField _MID_FIELD_DESC = new TField("mid", TType.STRING, 1);
  static final TField _NAME_FIELD_DESC = new TField("name", TType.STRING, 2);
  static final TField _WELCOME_MESSAGE_FIELD_DESC = new TField("welcomeMessage", TType.STRING, 3);
  static final TField _PROFILE_IMAGE_OBS_HASH_FIELD_DESC = new TField("profileImageObsHash", TType.STRING, 4);
  static final TField _DESC_FIELD_DESC = new TField("desc", TType.STRING, 5);
  static final TField _SEARCHABLE_FIELD_DESC = new TField("searchable", TType.BOOL, 6);
  static final TField _TYPE_FIELD_DESC = new TField("type", TType.I32, 7);
  static final TField _CATEGORY_ID_FIELD_DESC = new TField("categoryID", TType.I32, 8);
  static final TField _INVITATION_URL_FIELD_DESC = new TField("invitationURL", TType.STRING, 9);
  static final TField _REVISION_FIELD_DESC = new TField("revision", TType.I64, 10);
  static final TField _ABLE_TO_USE_INVITATION_TICKET_FIELD_DESC = new TField("ableToUseInvitationTicket", TType.BOOL, 11);
  static final TField _STATE_FIELD_DESC = new TField("state", TType.I32, 12);

  String _mid;
  static const int MID = 1;
  String _name;
  static const int NAME = 2;
  String _welcomeMessage;
  static const int WELCOMEMESSAGE = 3;
  String _profileImageObsHash;
  static const int PROFILEIMAGEOBSHASH = 4;
  String _desc;
  static const int DESC = 5;
  bool _searchable = false;
  static const int SEARCHABLE = 6;
  int _type;
  static const int TYPE = 7;
  int _categoryID = 0;
  static const int CATEGORYID = 8;
  String _invitationURL;
  static const int INVITATIONURL = 9;
  int _revision = 0;
  static const int REVISION = 10;
  bool _ableToUseInvitationTicket = false;
  static const int ABLETOUSEINVITATIONTICKET = 11;
  int _state;
  static const int STATE = 12;

  bool __isset_searchable = false;
  bool __isset_type = false;
  bool __isset_categoryID = false;
  bool __isset_revision = false;
  bool __isset_ableToUseInvitationTicket = false;
  bool __isset_state = false;

  Square() {
  }

  // mid
  String get mid => this._mid;

  set mid(String mid) {
    this._mid = mid;
  }

  bool isSetMid() => this.mid != null;

  unsetMid() {
    this.mid = null;
  }

  // name
  String get name => this._name;

  set name(String name) {
    this._name = name;
  }

  bool isSetName() => this.name != null;

  unsetName() {
    this.name = null;
  }

  // welcomeMessage
  String get welcomeMessage => this._welcomeMessage;

  set welcomeMessage(String welcomeMessage) {
    this._welcomeMessage = welcomeMessage;
  }

  bool isSetWelcomeMessage() => this.welcomeMessage != null;

  unsetWelcomeMessage() {
    this.welcomeMessage = null;
  }

  // profileImageObsHash
  String get profileImageObsHash => this._profileImageObsHash;

  set profileImageObsHash(String profileImageObsHash) {
    this._profileImageObsHash = profileImageObsHash;
  }

  bool isSetProfileImageObsHash() => this.profileImageObsHash != null;

  unsetProfileImageObsHash() {
    this.profileImageObsHash = null;
  }

  // desc
  String get desc => this._desc;

  set desc(String desc) {
    this._desc = desc;
  }

  bool isSetDesc() => this.desc != null;

  unsetDesc() {
    this.desc = null;
  }

  // searchable
  bool get searchable => this._searchable;

  set searchable(bool searchable) {
    this._searchable = searchable;
    this.__isset_searchable = true;
  }

  bool isSetSearchable() => this.__isset_searchable;

  unsetSearchable() {
    this.__isset_searchable = false;
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

  // categoryID
  int get categoryID => this._categoryID;

  set categoryID(int categoryID) {
    this._categoryID = categoryID;
    this.__isset_categoryID = true;
  }

  bool isSetCategoryID() => this.__isset_categoryID;

  unsetCategoryID() {
    this.__isset_categoryID = false;
  }

  // invitationURL
  String get invitationURL => this._invitationURL;

  set invitationURL(String invitationURL) {
    this._invitationURL = invitationURL;
  }

  bool isSetInvitationURL() => this.invitationURL != null;

  unsetInvitationURL() {
    this.invitationURL = null;
  }

  // revision
  int get revision => this._revision;

  set revision(int revision) {
    this._revision = revision;
    this.__isset_revision = true;
  }

  bool isSetRevision() => this.__isset_revision;

  unsetRevision() {
    this.__isset_revision = false;
  }

  // ableToUseInvitationTicket
  bool get ableToUseInvitationTicket => this._ableToUseInvitationTicket;

  set ableToUseInvitationTicket(bool ableToUseInvitationTicket) {
    this._ableToUseInvitationTicket = ableToUseInvitationTicket;
    this.__isset_ableToUseInvitationTicket = true;
  }

  bool isSetAbleToUseInvitationTicket() => this.__isset_ableToUseInvitationTicket;

  unsetAbleToUseInvitationTicket() {
    this.__isset_ableToUseInvitationTicket = false;
  }

  // state
  int get state => this._state;

  set state(int state) {
    this._state = state;
    this.__isset_state = true;
  }

  bool isSetState() => this.__isset_state;

  unsetState() {
    this.__isset_state = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case MID:
        return this.mid;
      case NAME:
        return this.name;
      case WELCOMEMESSAGE:
        return this.welcomeMessage;
      case PROFILEIMAGEOBSHASH:
        return this.profileImageObsHash;
      case DESC:
        return this.desc;
      case SEARCHABLE:
        return this.searchable;
      case TYPE:
        return this.type;
      case CATEGORYID:
        return this.categoryID;
      case INVITATIONURL:
        return this.invitationURL;
      case REVISION:
        return this.revision;
      case ABLETOUSEINVITATIONTICKET:
        return this.ableToUseInvitationTicket;
      case STATE:
        return this.state;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case MID:
        if (value == null) {
          unsetMid();
        } else {
          this.mid = value;
        }
        break;

      case NAME:
        if (value == null) {
          unsetName();
        } else {
          this.name = value;
        }
        break;

      case WELCOMEMESSAGE:
        if (value == null) {
          unsetWelcomeMessage();
        } else {
          this.welcomeMessage = value;
        }
        break;

      case PROFILEIMAGEOBSHASH:
        if (value == null) {
          unsetProfileImageObsHash();
        } else {
          this.profileImageObsHash = value;
        }
        break;

      case DESC:
        if (value == null) {
          unsetDesc();
        } else {
          this.desc = value;
        }
        break;

      case SEARCHABLE:
        if (value == null) {
          unsetSearchable();
        } else {
          this.searchable = value;
        }
        break;

      case TYPE:
        if (value == null) {
          unsetType();
        } else {
          this.type = value;
        }
        break;

      case CATEGORYID:
        if (value == null) {
          unsetCategoryID();
        } else {
          this.categoryID = value;
        }
        break;

      case INVITATIONURL:
        if (value == null) {
          unsetInvitationURL();
        } else {
          this.invitationURL = value;
        }
        break;

      case REVISION:
        if (value == null) {
          unsetRevision();
        } else {
          this.revision = value;
        }
        break;

      case ABLETOUSEINVITATIONTICKET:
        if (value == null) {
          unsetAbleToUseInvitationTicket();
        } else {
          this.ableToUseInvitationTicket = value;
        }
        break;

      case STATE:
        if (value == null) {
          unsetState();
        } else {
          this.state = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case MID:
        return isSetMid();
      case NAME:
        return isSetName();
      case WELCOMEMESSAGE:
        return isSetWelcomeMessage();
      case PROFILEIMAGEOBSHASH:
        return isSetProfileImageObsHash();
      case DESC:
        return isSetDesc();
      case SEARCHABLE:
        return isSetSearchable();
      case TYPE:
        return isSetType();
      case CATEGORYID:
        return isSetCategoryID();
      case INVITATIONURL:
        return isSetInvitationURL();
      case REVISION:
        return isSetRevision();
      case ABLETOUSEINVITATIONTICKET:
        return isSetAbleToUseInvitationTicket();
      case STATE:
        return isSetState();
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
        case MID:
          if (field.type == TType.STRING) {
            this.mid = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NAME:
          if (field.type == TType.STRING) {
            this.name = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case WELCOMEMESSAGE:
          if (field.type == TType.STRING) {
            this.welcomeMessage = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PROFILEIMAGEOBSHASH:
          if (field.type == TType.STRING) {
            this.profileImageObsHash = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DESC:
          if (field.type == TType.STRING) {
            this.desc = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SEARCHABLE:
          if (field.type == TType.BOOL) {
            this.searchable = iprot.readBool();
            this.__isset_searchable = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TYPE:
          if (field.type == TType.I32) {
            this.type = iprot.readI32();
            this.__isset_type = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CATEGORYID:
          if (field.type == TType.I32) {
            this.categoryID = iprot.readI32();
            this.__isset_categoryID = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case INVITATIONURL:
          if (field.type == TType.STRING) {
            this.invitationURL = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REVISION:
          if (field.type == TType.I64) {
            this.revision = iprot.readI64();
            this.__isset_revision = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ABLETOUSEINVITATIONTICKET:
          if (field.type == TType.BOOL) {
            this.ableToUseInvitationTicket = iprot.readBool();
            this.__isset_ableToUseInvitationTicket = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STATE:
          if (field.type == TType.I32) {
            this.state = iprot.readI32();
            this.__isset_state = true;
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
    if (this.mid != null) {
      oprot.writeFieldBegin(_MID_FIELD_DESC);
      oprot.writeString(this.mid);
      oprot.writeFieldEnd();
    }
    if (this.name != null) {
      oprot.writeFieldBegin(_NAME_FIELD_DESC);
      oprot.writeString(this.name);
      oprot.writeFieldEnd();
    }
    if (this.welcomeMessage != null) {
      oprot.writeFieldBegin(_WELCOME_MESSAGE_FIELD_DESC);
      oprot.writeString(this.welcomeMessage);
      oprot.writeFieldEnd();
    }
    if (this.profileImageObsHash != null) {
      oprot.writeFieldBegin(_PROFILE_IMAGE_OBS_HASH_FIELD_DESC);
      oprot.writeString(this.profileImageObsHash);
      oprot.writeFieldEnd();
    }
    if (this.desc != null) {
      oprot.writeFieldBegin(_DESC_FIELD_DESC);
      oprot.writeString(this.desc);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_SEARCHABLE_FIELD_DESC);
    oprot.writeBool(this.searchable);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TYPE_FIELD_DESC);
    oprot.writeI32(this.type);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_CATEGORY_ID_FIELD_DESC);
    oprot.writeI32(this.categoryID);
    oprot.writeFieldEnd();
    if (this.invitationURL != null) {
      oprot.writeFieldBegin(_INVITATION_URL_FIELD_DESC);
      oprot.writeString(this.invitationURL);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_REVISION_FIELD_DESC);
    oprot.writeI64(this.revision);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ABLE_TO_USE_INVITATION_TICKET_FIELD_DESC);
    oprot.writeBool(this.ableToUseInvitationTicket);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_STATE_FIELD_DESC);
    oprot.writeI32(this.state);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Square(");

    ret.write("mid:");
    if (this.mid == null) {
      ret.write("null");
    } else {
      ret.write(this.mid);
    }

    ret.write(", ");
    ret.write("name:");
    if (this.name == null) {
      ret.write("null");
    } else {
      ret.write(this.name);
    }

    ret.write(", ");
    ret.write("welcomeMessage:");
    if (this.welcomeMessage == null) {
      ret.write("null");
    } else {
      ret.write(this.welcomeMessage);
    }

    ret.write(", ");
    ret.write("profileImageObsHash:");
    if (this.profileImageObsHash == null) {
      ret.write("null");
    } else {
      ret.write(this.profileImageObsHash);
    }

    ret.write(", ");
    ret.write("desc:");
    if (this.desc == null) {
      ret.write("null");
    } else {
      ret.write(this.desc);
    }

    ret.write(", ");
    ret.write("searchable:");
    ret.write(this.searchable);

    ret.write(", ");
    ret.write("type:");
    String type_name = SquareType.VALUES_TO_NAMES[this.type];
    if (type_name != null) {
      ret.write(type_name);
      ret.write(" (");
    }
    ret.write(this.type);
    if (type_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("categoryID:");
    ret.write(this.categoryID);

    ret.write(", ");
    ret.write("invitationURL:");
    if (this.invitationURL == null) {
      ret.write("null");
    } else {
      ret.write(this.invitationURL);
    }

    ret.write(", ");
    ret.write("revision:");
    ret.write(this.revision);

    ret.write(", ");
    ret.write("ableToUseInvitationTicket:");
    ret.write(this.ableToUseInvitationTicket);

    ret.write(", ");
    ret.write("state:");
    String state_name = SquareState.VALUES_TO_NAMES[this.state];
    if (state_name != null) {
      ret.write(state_name);
      ret.write(" (");
    }
    ret.write(this.state);
    if (state_name != null) {
      ret.write(")");
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetType() && !SquareType.VALID_VALUES.contains(type)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'type' has been assigned the invalid value $type");
    }
    if (isSetState() && !SquareState.VALID_VALUES.contains(state)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'state' has been assigned the invalid value $state");
    }
  }

}

