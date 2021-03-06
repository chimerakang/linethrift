/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.message_operations;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class MessageOperations implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("MessageOperations");
  static final TField _OPERATIONS_FIELD_DESC = new TField("operations", TType.LIST, 1);
  static final TField _END_FLAG_FIELD_DESC = new TField("endFlag", TType.BOOL, 2);

  List<MessageOperation> _operations;
  static const int OPERATIONS = 1;
  bool _endFlag = false;
  static const int ENDFLAG = 2;

  bool __isset_endFlag = false;

  MessageOperations() {
  }

  // operations
  List<MessageOperation> get operations => this._operations;

  set operations(List<MessageOperation> operations) {
    this._operations = operations;
  }

  bool isSetOperations() => this.operations != null;

  unsetOperations() {
    this.operations = null;
  }

  // endFlag
  bool get endFlag => this._endFlag;

  set endFlag(bool endFlag) {
    this._endFlag = endFlag;
    this.__isset_endFlag = true;
  }

  bool isSetEndFlag() => this.__isset_endFlag;

  unsetEndFlag() {
    this.__isset_endFlag = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case OPERATIONS:
        return this.operations;
      case ENDFLAG:
        return this.endFlag;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case OPERATIONS:
        if (value == null) {
          unsetOperations();
        } else {
          this.operations = value;
        }
        break;

      case ENDFLAG:
        if (value == null) {
          unsetEndFlag();
        } else {
          this.endFlag = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case OPERATIONS:
        return isSetOperations();
      case ENDFLAG:
        return isSetEndFlag();
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
        case OPERATIONS:
          if (field.type == TType.LIST) {
            {
              TList _list172 = iprot.readListBegin();
              this.operations = new List<MessageOperation>();
              for (int _i173 = 0; _i173 < _list172.length; ++_i173) {
                MessageOperation _elem174;
                _elem174 = new MessageOperation();
                _elem174.read(iprot);
                this.operations.add(_elem174);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ENDFLAG:
          if (field.type == TType.BOOL) {
            this.endFlag = iprot.readBool();
            this.__isset_endFlag = true;
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
    if (this.operations != null) {
      oprot.writeFieldBegin(_OPERATIONS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.operations.length));
        for (var elem175 in this.operations) {
          elem175.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_END_FLAG_FIELD_DESC);
    oprot.writeBool(this.endFlag);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("MessageOperations(");

    ret.write("operations:");
    if (this.operations == null) {
      ret.write("null");
    } else {
      ret.write(this.operations);
    }

    ret.write(", ");
    ret.write("endFlag:");
    ret.write(this.endFlag);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

