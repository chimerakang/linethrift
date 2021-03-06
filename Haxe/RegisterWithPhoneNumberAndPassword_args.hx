/**
 * Autogenerated by Thrift Compiler (0.14.0)
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


class RegisterWithPhoneNumberAndPassword_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("registerWithPhoneNumberAndPassword_args"); };
  static var SESSION_ID_FIELD_DESC = { new TField("sessionId", TType.STRING, 2); };
  static var KEYNM_FIELD_DESC = { new TField("keynm", TType.STRING, 3); };
  static var ENCRYPTED_FIELD_DESC = { new TField("encrypted", TType.STRING, 4); };

  @:isVar
  public var sessionId(get,set) : String;
  @:isVar
  public var keynm(get,set) : String;
  @:isVar
  public var encrypted(get,set) : String;

  inline static var SESSIONID_FIELD_ID : Int = 2;
  inline static var KEYNM_FIELD_ID : Int = 3;
  inline static var ENCRYPTED_FIELD_ID : Int = 4;


  public function new() {
  }

  public function get_sessionId() : String {
    return this.sessionId;
  }

  public function set_sessionId(sessionId:String) : String {
    this.sessionId = sessionId;
    return this.sessionId;
  }

  public function unsetSessionId() : Void {
    this.sessionId = null;
  }

  // Returns true if field sessionId is set (has been assigned a value) and false otherwise
  public function isSetSessionId() : Bool {
    return this.sessionId != null;
  }

  public function get_keynm() : String {
    return this.keynm;
  }

  public function set_keynm(keynm:String) : String {
    this.keynm = keynm;
    return this.keynm;
  }

  public function unsetKeynm() : Void {
    this.keynm = null;
  }

  // Returns true if field keynm is set (has been assigned a value) and false otherwise
  public function isSetKeynm() : Bool {
    return this.keynm != null;
  }

  public function get_encrypted() : String {
    return this.encrypted;
  }

  public function set_encrypted(encrypted:String) : String {
    this.encrypted = encrypted;
    return this.encrypted;
  }

  public function unsetEncrypted() : Void {
    this.encrypted = null;
  }

  // Returns true if field encrypted is set (has been assigned a value) and false otherwise
  public function isSetEncrypted() : Bool {
    return this.encrypted != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      if (value == null) {
        unsetSessionId();
      } else {
        this.sessionId = value;
      }

    case KEYNM_FIELD_ID:
      if (value == null) {
        unsetKeynm();
      } else {
        this.keynm = value;
      }

    case ENCRYPTED_FIELD_ID:
      if (value == null) {
        unsetEncrypted();
      } else {
        this.encrypted = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      return this.sessionId;
    case KEYNM_FIELD_ID:
      return this.keynm;
    case ENCRYPTED_FIELD_ID:
      return this.encrypted;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      return isSetSessionId();
    case KEYNM_FIELD_ID:
      return isSetKeynm();
    case ENCRYPTED_FIELD_ID:
      return isSetEncrypted();
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
          case SESSIONID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.sessionId = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case KEYNM_FIELD_ID:
            if (field.type == TType.STRING) {
              this.keynm = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case ENCRYPTED_FIELD_ID:
            if (field.type == TType.STRING) {
              this.encrypted = iprot.readString();
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
      if (this.sessionId != null) {
        oprot.writeFieldBegin(SESSION_ID_FIELD_DESC);
        oprot.writeString(this.sessionId);
        oprot.writeFieldEnd();
      }
      if (this.keynm != null) {
        oprot.writeFieldBegin(KEYNM_FIELD_DESC);
        oprot.writeString(this.keynm);
        oprot.writeFieldEnd();
      }
      if (this.encrypted != null) {
        oprot.writeFieldBegin(ENCRYPTED_FIELD_DESC);
        oprot.writeString(this.encrypted);
        oprot.writeFieldEnd();
      }
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
    var ret : String = "registerWithPhoneNumberAndPassword_args(";
    var first : Bool = true;

    ret += "sessionId:";
    if (this.sessionId == null) {
      ret += "null";
    } else {
      ret += this.sessionId;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "keynm:";
    if (this.keynm == null) {
      ret += "null";
    } else {
      ret += this.keynm;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "encrypted:";
    if (this.encrypted == null) {
      ret += "null";
    } else {
      ret += this.encrypted;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

