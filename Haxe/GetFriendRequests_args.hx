/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;
import haxe.io.Bytes;
import haxe.ds.IntMap;
import haxe.ds.StringMap;
import haxe.ds.ObjectMap;

#if flash
import flash.errors.ArgumentError;
#end

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


class GetFriendRequests_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("getFriendRequests_args"); };
  static var DIRECTION_FIELD_DESC = { new TField("direction", TType.I32, 1); };
  static var LAST_SEEN_SEQ_ID_FIELD_DESC = { new TField("lastSeenSeqId", TType.I64, 2); };

  @:isVar
  public var direction(get,set) : Int;
  @:isVar
  public var lastSeenSeqId(get,set) : haxe.Int64;

  inline static var DIRECTION_FIELD_ID : Int = 1;
  inline static var LASTSEENSEQID_FIELD_ID : Int = 2;

  private var __isset_direction : Bool = false;
  private var __isset_lastSeenSeqId : Bool = false;

  public function new() {
  }

  public function get_direction() : Int {
    return this.direction;
  }

  public function set_direction(direction:Int) : Int {
    this.direction = direction;
    this.__isset_direction = true;
    return this.direction;
  }

  public function unsetDirection() : Void {
    this.__isset_direction = false;
  }

  // Returns true if field direction is set (has been assigned a value) and false otherwise
  public function isSetDirection() : Bool {
    return this.__isset_direction;
  }

  public function get_lastSeenSeqId() : haxe.Int64 {
    return this.lastSeenSeqId;
  }

  public function set_lastSeenSeqId(lastSeenSeqId:haxe.Int64) : haxe.Int64 {
    this.lastSeenSeqId = lastSeenSeqId;
    this.__isset_lastSeenSeqId = true;
    return this.lastSeenSeqId;
  }

  public function unsetLastSeenSeqId() : Void {
    this.__isset_lastSeenSeqId = false;
  }

  // Returns true if field lastSeenSeqId is set (has been assigned a value) and false otherwise
  public function isSetLastSeenSeqId() : Bool {
    return this.__isset_lastSeenSeqId;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case DIRECTION_FIELD_ID:
      if (value == null) {
        unsetDirection();
      } else {
        this.direction = value;
      }

    case LASTSEENSEQID_FIELD_ID:
      if (value == null) {
        unsetLastSeenSeqId();
      } else {
        this.lastSeenSeqId = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case DIRECTION_FIELD_ID:
      return this.direction;
    case LASTSEENSEQID_FIELD_ID:
      return this.lastSeenSeqId;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case DIRECTION_FIELD_ID:
      return isSetDirection();
    case LASTSEENSEQID_FIELD_ID:
      return isSetLastSeenSeqId();
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function read( iprot : TProtocol) : Void {
    iprot.IncrementRecursionDepth();
    try
    {
      var field : TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case DIRECTION_FIELD_ID:
            if (field.type == TType.I32) {
              this.direction = iprot.readI32();
              this.__isset_direction = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case LASTSEENSEQID_FIELD_ID:
            if (field.type == TType.I64) {
              this.lastSeenSeqId = iprot.readI64();
              this.__isset_lastSeenSeqId = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          default:
            TProtocolUtil.skip(iprot, field.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      iprot.DecrementRecursionDepth();
    }
    catch(e:Dynamic)
    {
      iprot.DecrementRecursionDepth();
      throw e;
    }

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  public function write(oprot:TProtocol) : Void {
    validate();
    oprot.IncrementRecursionDepth();
    try
    {
      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(DIRECTION_FIELD_DESC);
      oprot.writeI32(this.direction);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(LAST_SEEN_SEQ_ID_FIELD_DESC);
      oprot.writeI64(this.lastSeenSeqId);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
      oprot.DecrementRecursionDepth();
    }
    catch(e:Dynamic)
    {
      oprot.DecrementRecursionDepth();
      throw e;
    }
  }

  public function toString() : String {
    var ret : String = "getFriendRequests_args(";
    var first : Bool = true;

    ret += "direction:";
    var direction_name : String = .FriendRequestDirection.VALUES_TO_NAMES[this.direction];
    if (direction_name != null) {
      ret += direction_name;
      ret += " (";
    }
    ret += this.direction;
    if (direction_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "lastSeenSeqId:";
    ret += this.lastSeenSeqId;
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetDirection() && !.FriendRequestDirection.VALID_VALUES.contains(direction)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'direction' has been assigned the invalid value " + direction);
    }
  }

}
