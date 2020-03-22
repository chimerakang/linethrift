/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.chat_room_announcement_contents;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class ChatRoomAnnouncementContents implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("ChatRoomAnnouncementContents");
  static final TField _DISPLAY_FIELDS_FIELD_DESC = new TField("displayFields", TType.I32, 1);
  static final TField _TEXT_FIELD_DESC = new TField("text", TType.STRING, 2);
  static final TField _LINK_FIELD_DESC = new TField("link", TType.STRING, 3);
  static final TField _THUMBNAIL_FIELD_DESC = new TField("thumbnail", TType.STRING, 4);

  int _displayFields = 0;
  static const int DISPLAYFIELDS = 1;
  String _text;
  static const int TEXT = 2;
  String _link;
  static const int LINK = 3;
  String _thumbnail;
  static const int THUMBNAIL = 4;

  bool __isset_displayFields = false;

  ChatRoomAnnouncementContents() {
  }

  // displayFields
  int get displayFields => this._displayFields;

  set displayFields(int displayFields) {
    this._displayFields = displayFields;
    this.__isset_displayFields = true;
  }

  bool isSetDisplayFields() => this.__isset_displayFields;

  unsetDisplayFields() {
    this.__isset_displayFields = false;
  }

  // text
  String get text => this._text;

  set text(String text) {
    this._text = text;
  }

  bool isSetText() => this.text != null;

  unsetText() {
    this.text = null;
  }

  // link
  String get link => this._link;

  set link(String link) {
    this._link = link;
  }

  bool isSetLink() => this.link != null;

  unsetLink() {
    this.link = null;
  }

  // thumbnail
  String get thumbnail => this._thumbnail;

  set thumbnail(String thumbnail) {
    this._thumbnail = thumbnail;
  }

  bool isSetThumbnail() => this.thumbnail != null;

  unsetThumbnail() {
    this.thumbnail = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case DISPLAYFIELDS:
        return this.displayFields;
      case TEXT:
        return this.text;
      case LINK:
        return this.link;
      case THUMBNAIL:
        return this.thumbnail;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case DISPLAYFIELDS:
        if (value == null) {
          unsetDisplayFields();
        } else {
          this.displayFields = value;
        }
        break;

      case TEXT:
        if (value == null) {
          unsetText();
        } else {
          this.text = value;
        }
        break;

      case LINK:
        if (value == null) {
          unsetLink();
        } else {
          this.link = value;
        }
        break;

      case THUMBNAIL:
        if (value == null) {
          unsetThumbnail();
        } else {
          this.thumbnail = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case DISPLAYFIELDS:
        return isSetDisplayFields();
      case TEXT:
        return isSetText();
      case LINK:
        return isSetLink();
      case THUMBNAIL:
        return isSetThumbnail();
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
        case DISPLAYFIELDS:
          if (field.type == TType.I32) {
            this.displayFields = iprot.readI32();
            this.__isset_displayFields = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TEXT:
          if (field.type == TType.STRING) {
            this.text = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LINK:
          if (field.type == TType.STRING) {
            this.link = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case THUMBNAIL:
          if (field.type == TType.STRING) {
            this.thumbnail = iprot.readString();
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
    oprot.writeFieldBegin(_DISPLAY_FIELDS_FIELD_DESC);
    oprot.writeI32(this.displayFields);
    oprot.writeFieldEnd();
    if (this.text != null) {
      oprot.writeFieldBegin(_TEXT_FIELD_DESC);
      oprot.writeString(this.text);
      oprot.writeFieldEnd();
    }
    if (this.link != null) {
      oprot.writeFieldBegin(_LINK_FIELD_DESC);
      oprot.writeString(this.link);
      oprot.writeFieldEnd();
    }
    if (this.thumbnail != null) {
      oprot.writeFieldBegin(_THUMBNAIL_FIELD_DESC);
      oprot.writeString(this.thumbnail);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("ChatRoomAnnouncementContents(");

    ret.write("displayFields:");
    ret.write(this.displayFields);

    ret.write(", ");
    ret.write("text:");
    if (this.text == null) {
      ret.write("null");
    } else {
      ret.write(this.text);
    }

    ret.write(", ");
    ret.write("link:");
    if (this.link == null) {
      ret.write("null");
    } else {
      ret.write(this.link);
    }

    ret.write(", ");
    ret.write("thumbnail:");
    if (this.thumbnail == null) {
      ret.write("null");
    } else {
      ret.write(this.thumbnail);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
