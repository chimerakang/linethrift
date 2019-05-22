/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.profile;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class Profile implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("Profile");
  static final TField _MID_FIELD_DESC = new TField("mid", TType.STRING, 1);
  static final TField _USERID_FIELD_DESC = new TField("userid", TType.STRING, 3);
  static final TField _PHONE_FIELD_DESC = new TField("phone", TType.STRING, 10);
  static final TField _EMAIL_FIELD_DESC = new TField("email", TType.STRING, 11);
  static final TField _REGION_CODE_FIELD_DESC = new TField("regionCode", TType.STRING, 12);
  static final TField _DISPLAY_NAME_FIELD_DESC = new TField("displayName", TType.STRING, 20);
  static final TField _PHONETIC_NAME_FIELD_DESC = new TField("phoneticName", TType.STRING, 21);
  static final TField _PICTURE_STATUS_FIELD_DESC = new TField("pictureStatus", TType.STRING, 22);
  static final TField _THUMBNAIL_URL_FIELD_DESC = new TField("thumbnailUrl", TType.STRING, 23);
  static final TField _STATUS_MESSAGE_FIELD_DESC = new TField("statusMessage", TType.STRING, 24);
  static final TField _ALLOW_SEARCH_BY_USERID_FIELD_DESC = new TField("allowSearchByUserid", TType.BOOL, 31);
  static final TField _ALLOW_SEARCH_BY_EMAIL_FIELD_DESC = new TField("allowSearchByEmail", TType.BOOL, 32);
  static final TField _PICTURE_PATH_FIELD_DESC = new TField("picturePath", TType.STRING, 33);
  static final TField _MUSIC_PROFILE_FIELD_DESC = new TField("musicProfile", TType.STRING, 34);
  static final TField _VIDEO_PROFILE_FIELD_DESC = new TField("videoProfile", TType.STRING, 35);

  String _mid;
  static const int MID = 1;
  String _userid;
  static const int USERID = 3;
  String _phone;
  static const int PHONE = 10;
  String _email;
  static const int EMAIL = 11;
  String _regionCode;
  static const int REGIONCODE = 12;
  String _displayName;
  static const int DISPLAYNAME = 20;
  String _phoneticName;
  static const int PHONETICNAME = 21;
  String _pictureStatus;
  static const int PICTURESTATUS = 22;
  String _thumbnailUrl;
  static const int THUMBNAILURL = 23;
  String _statusMessage;
  static const int STATUSMESSAGE = 24;
  bool _allowSearchByUserid = false;
  static const int ALLOWSEARCHBYUSERID = 31;
  bool _allowSearchByEmail = false;
  static const int ALLOWSEARCHBYEMAIL = 32;
  String _picturePath;
  static const int PICTUREPATH = 33;
  String _musicProfile;
  static const int MUSICPROFILE = 34;
  String _videoProfile;
  static const int VIDEOPROFILE = 35;

  bool __isset_allowSearchByUserid = false;
  bool __isset_allowSearchByEmail = false;

  Profile() {
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

  // userid
  String get userid => this._userid;

  set userid(String userid) {
    this._userid = userid;
  }

  bool isSetUserid() => this.userid != null;

  unsetUserid() {
    this.userid = null;
  }

  // phone
  String get phone => this._phone;

  set phone(String phone) {
    this._phone = phone;
  }

  bool isSetPhone() => this.phone != null;

  unsetPhone() {
    this.phone = null;
  }

  // email
  String get email => this._email;

  set email(String email) {
    this._email = email;
  }

  bool isSetEmail() => this.email != null;

  unsetEmail() {
    this.email = null;
  }

  // regionCode
  String get regionCode => this._regionCode;

  set regionCode(String regionCode) {
    this._regionCode = regionCode;
  }

  bool isSetRegionCode() => this.regionCode != null;

  unsetRegionCode() {
    this.regionCode = null;
  }

  // displayName
  String get displayName => this._displayName;

  set displayName(String displayName) {
    this._displayName = displayName;
  }

  bool isSetDisplayName() => this.displayName != null;

  unsetDisplayName() {
    this.displayName = null;
  }

  // phoneticName
  String get phoneticName => this._phoneticName;

  set phoneticName(String phoneticName) {
    this._phoneticName = phoneticName;
  }

  bool isSetPhoneticName() => this.phoneticName != null;

  unsetPhoneticName() {
    this.phoneticName = null;
  }

  // pictureStatus
  String get pictureStatus => this._pictureStatus;

  set pictureStatus(String pictureStatus) {
    this._pictureStatus = pictureStatus;
  }

  bool isSetPictureStatus() => this.pictureStatus != null;

  unsetPictureStatus() {
    this.pictureStatus = null;
  }

  // thumbnailUrl
  String get thumbnailUrl => this._thumbnailUrl;

  set thumbnailUrl(String thumbnailUrl) {
    this._thumbnailUrl = thumbnailUrl;
  }

  bool isSetThumbnailUrl() => this.thumbnailUrl != null;

  unsetThumbnailUrl() {
    this.thumbnailUrl = null;
  }

  // statusMessage
  String get statusMessage => this._statusMessage;

  set statusMessage(String statusMessage) {
    this._statusMessage = statusMessage;
  }

  bool isSetStatusMessage() => this.statusMessage != null;

  unsetStatusMessage() {
    this.statusMessage = null;
  }

  // allowSearchByUserid
  bool get allowSearchByUserid => this._allowSearchByUserid;

  set allowSearchByUserid(bool allowSearchByUserid) {
    this._allowSearchByUserid = allowSearchByUserid;
    this.__isset_allowSearchByUserid = true;
  }

  bool isSetAllowSearchByUserid() => this.__isset_allowSearchByUserid;

  unsetAllowSearchByUserid() {
    this.__isset_allowSearchByUserid = false;
  }

  // allowSearchByEmail
  bool get allowSearchByEmail => this._allowSearchByEmail;

  set allowSearchByEmail(bool allowSearchByEmail) {
    this._allowSearchByEmail = allowSearchByEmail;
    this.__isset_allowSearchByEmail = true;
  }

  bool isSetAllowSearchByEmail() => this.__isset_allowSearchByEmail;

  unsetAllowSearchByEmail() {
    this.__isset_allowSearchByEmail = false;
  }

  // picturePath
  String get picturePath => this._picturePath;

  set picturePath(String picturePath) {
    this._picturePath = picturePath;
  }

  bool isSetPicturePath() => this.picturePath != null;

  unsetPicturePath() {
    this.picturePath = null;
  }

  // musicProfile
  String get musicProfile => this._musicProfile;

  set musicProfile(String musicProfile) {
    this._musicProfile = musicProfile;
  }

  bool isSetMusicProfile() => this.musicProfile != null;

  unsetMusicProfile() {
    this.musicProfile = null;
  }

  // videoProfile
  String get videoProfile => this._videoProfile;

  set videoProfile(String videoProfile) {
    this._videoProfile = videoProfile;
  }

  bool isSetVideoProfile() => this.videoProfile != null;

  unsetVideoProfile() {
    this.videoProfile = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case MID:
        return this.mid;
      case USERID:
        return this.userid;
      case PHONE:
        return this.phone;
      case EMAIL:
        return this.email;
      case REGIONCODE:
        return this.regionCode;
      case DISPLAYNAME:
        return this.displayName;
      case PHONETICNAME:
        return this.phoneticName;
      case PICTURESTATUS:
        return this.pictureStatus;
      case THUMBNAILURL:
        return this.thumbnailUrl;
      case STATUSMESSAGE:
        return this.statusMessage;
      case ALLOWSEARCHBYUSERID:
        return this.allowSearchByUserid;
      case ALLOWSEARCHBYEMAIL:
        return this.allowSearchByEmail;
      case PICTUREPATH:
        return this.picturePath;
      case MUSICPROFILE:
        return this.musicProfile;
      case VIDEOPROFILE:
        return this.videoProfile;
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

      case USERID:
        if (value == null) {
          unsetUserid();
        } else {
          this.userid = value;
        }
        break;

      case PHONE:
        if (value == null) {
          unsetPhone();
        } else {
          this.phone = value;
        }
        break;

      case EMAIL:
        if (value == null) {
          unsetEmail();
        } else {
          this.email = value;
        }
        break;

      case REGIONCODE:
        if (value == null) {
          unsetRegionCode();
        } else {
          this.regionCode = value;
        }
        break;

      case DISPLAYNAME:
        if (value == null) {
          unsetDisplayName();
        } else {
          this.displayName = value;
        }
        break;

      case PHONETICNAME:
        if (value == null) {
          unsetPhoneticName();
        } else {
          this.phoneticName = value;
        }
        break;

      case PICTURESTATUS:
        if (value == null) {
          unsetPictureStatus();
        } else {
          this.pictureStatus = value;
        }
        break;

      case THUMBNAILURL:
        if (value == null) {
          unsetThumbnailUrl();
        } else {
          this.thumbnailUrl = value;
        }
        break;

      case STATUSMESSAGE:
        if (value == null) {
          unsetStatusMessage();
        } else {
          this.statusMessage = value;
        }
        break;

      case ALLOWSEARCHBYUSERID:
        if (value == null) {
          unsetAllowSearchByUserid();
        } else {
          this.allowSearchByUserid = value;
        }
        break;

      case ALLOWSEARCHBYEMAIL:
        if (value == null) {
          unsetAllowSearchByEmail();
        } else {
          this.allowSearchByEmail = value;
        }
        break;

      case PICTUREPATH:
        if (value == null) {
          unsetPicturePath();
        } else {
          this.picturePath = value;
        }
        break;

      case MUSICPROFILE:
        if (value == null) {
          unsetMusicProfile();
        } else {
          this.musicProfile = value;
        }
        break;

      case VIDEOPROFILE:
        if (value == null) {
          unsetVideoProfile();
        } else {
          this.videoProfile = value;
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
      case USERID:
        return isSetUserid();
      case PHONE:
        return isSetPhone();
      case EMAIL:
        return isSetEmail();
      case REGIONCODE:
        return isSetRegionCode();
      case DISPLAYNAME:
        return isSetDisplayName();
      case PHONETICNAME:
        return isSetPhoneticName();
      case PICTURESTATUS:
        return isSetPictureStatus();
      case THUMBNAILURL:
        return isSetThumbnailUrl();
      case STATUSMESSAGE:
        return isSetStatusMessage();
      case ALLOWSEARCHBYUSERID:
        return isSetAllowSearchByUserid();
      case ALLOWSEARCHBYEMAIL:
        return isSetAllowSearchByEmail();
      case PICTUREPATH:
        return isSetPicturePath();
      case MUSICPROFILE:
        return isSetMusicProfile();
      case VIDEOPROFILE:
        return isSetVideoProfile();
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
        case USERID:
          if (field.type == TType.STRING) {
            this.userid = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PHONE:
          if (field.type == TType.STRING) {
            this.phone = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EMAIL:
          if (field.type == TType.STRING) {
            this.email = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REGIONCODE:
          if (field.type == TType.STRING) {
            this.regionCode = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DISPLAYNAME:
          if (field.type == TType.STRING) {
            this.displayName = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PHONETICNAME:
          if (field.type == TType.STRING) {
            this.phoneticName = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PICTURESTATUS:
          if (field.type == TType.STRING) {
            this.pictureStatus = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case THUMBNAILURL:
          if (field.type == TType.STRING) {
            this.thumbnailUrl = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STATUSMESSAGE:
          if (field.type == TType.STRING) {
            this.statusMessage = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ALLOWSEARCHBYUSERID:
          if (field.type == TType.BOOL) {
            this.allowSearchByUserid = iprot.readBool();
            this.__isset_allowSearchByUserid = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ALLOWSEARCHBYEMAIL:
          if (field.type == TType.BOOL) {
            this.allowSearchByEmail = iprot.readBool();
            this.__isset_allowSearchByEmail = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PICTUREPATH:
          if (field.type == TType.STRING) {
            this.picturePath = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case MUSICPROFILE:
          if (field.type == TType.STRING) {
            this.musicProfile = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VIDEOPROFILE:
          if (field.type == TType.STRING) {
            this.videoProfile = iprot.readString();
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
    if (this.userid != null) {
      oprot.writeFieldBegin(_USERID_FIELD_DESC);
      oprot.writeString(this.userid);
      oprot.writeFieldEnd();
    }
    if (this.phone != null) {
      oprot.writeFieldBegin(_PHONE_FIELD_DESC);
      oprot.writeString(this.phone);
      oprot.writeFieldEnd();
    }
    if (this.email != null) {
      oprot.writeFieldBegin(_EMAIL_FIELD_DESC);
      oprot.writeString(this.email);
      oprot.writeFieldEnd();
    }
    if (this.regionCode != null) {
      oprot.writeFieldBegin(_REGION_CODE_FIELD_DESC);
      oprot.writeString(this.regionCode);
      oprot.writeFieldEnd();
    }
    if (this.displayName != null) {
      oprot.writeFieldBegin(_DISPLAY_NAME_FIELD_DESC);
      oprot.writeString(this.displayName);
      oprot.writeFieldEnd();
    }
    if (this.phoneticName != null) {
      oprot.writeFieldBegin(_PHONETIC_NAME_FIELD_DESC);
      oprot.writeString(this.phoneticName);
      oprot.writeFieldEnd();
    }
    if (this.pictureStatus != null) {
      oprot.writeFieldBegin(_PICTURE_STATUS_FIELD_DESC);
      oprot.writeString(this.pictureStatus);
      oprot.writeFieldEnd();
    }
    if (this.thumbnailUrl != null) {
      oprot.writeFieldBegin(_THUMBNAIL_URL_FIELD_DESC);
      oprot.writeString(this.thumbnailUrl);
      oprot.writeFieldEnd();
    }
    if (this.statusMessage != null) {
      oprot.writeFieldBegin(_STATUS_MESSAGE_FIELD_DESC);
      oprot.writeString(this.statusMessage);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_ALLOW_SEARCH_BY_USERID_FIELD_DESC);
    oprot.writeBool(this.allowSearchByUserid);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ALLOW_SEARCH_BY_EMAIL_FIELD_DESC);
    oprot.writeBool(this.allowSearchByEmail);
    oprot.writeFieldEnd();
    if (this.picturePath != null) {
      oprot.writeFieldBegin(_PICTURE_PATH_FIELD_DESC);
      oprot.writeString(this.picturePath);
      oprot.writeFieldEnd();
    }
    if (this.musicProfile != null) {
      oprot.writeFieldBegin(_MUSIC_PROFILE_FIELD_DESC);
      oprot.writeString(this.musicProfile);
      oprot.writeFieldEnd();
    }
    if (this.videoProfile != null) {
      oprot.writeFieldBegin(_VIDEO_PROFILE_FIELD_DESC);
      oprot.writeString(this.videoProfile);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("Profile(");

    ret.write("mid:");
    if (this.mid == null) {
      ret.write("null");
    } else {
      ret.write(this.mid);
    }

    ret.write(", ");
    ret.write("userid:");
    if (this.userid == null) {
      ret.write("null");
    } else {
      ret.write(this.userid);
    }

    ret.write(", ");
    ret.write("phone:");
    if (this.phone == null) {
      ret.write("null");
    } else {
      ret.write(this.phone);
    }

    ret.write(", ");
    ret.write("email:");
    if (this.email == null) {
      ret.write("null");
    } else {
      ret.write(this.email);
    }

    ret.write(", ");
    ret.write("regionCode:");
    if (this.regionCode == null) {
      ret.write("null");
    } else {
      ret.write(this.regionCode);
    }

    ret.write(", ");
    ret.write("displayName:");
    if (this.displayName == null) {
      ret.write("null");
    } else {
      ret.write(this.displayName);
    }

    ret.write(", ");
    ret.write("phoneticName:");
    if (this.phoneticName == null) {
      ret.write("null");
    } else {
      ret.write(this.phoneticName);
    }

    ret.write(", ");
    ret.write("pictureStatus:");
    if (this.pictureStatus == null) {
      ret.write("null");
    } else {
      ret.write(this.pictureStatus);
    }

    ret.write(", ");
    ret.write("thumbnailUrl:");
    if (this.thumbnailUrl == null) {
      ret.write("null");
    } else {
      ret.write(this.thumbnailUrl);
    }

    ret.write(", ");
    ret.write("statusMessage:");
    if (this.statusMessage == null) {
      ret.write("null");
    } else {
      ret.write(this.statusMessage);
    }

    ret.write(", ");
    ret.write("allowSearchByUserid:");
    ret.write(this.allowSearchByUserid);

    ret.write(", ");
    ret.write("allowSearchByEmail:");
    ret.write(this.allowSearchByEmail);

    ret.write(", ");
    ret.write("picturePath:");
    if (this.picturePath == null) {
      ret.write("null");
    } else {
      ret.write(this.picturePath);
    }

    ret.write(", ");
    ret.write("musicProfile:");
    if (this.musicProfile == null) {
      ret.write("null");
    } else {
      ret.write(this.musicProfile);
    }

    ret.write(", ");
    ret.write("videoProfile:");
    if (this.videoProfile == null) {
      ret.write("null");
    } else {
      ret.write(this.videoProfile);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
