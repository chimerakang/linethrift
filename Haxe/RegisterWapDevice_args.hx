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


class RegisterWapDevice_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("registerWapDevice_args"); };
  static var INVITATION_HASH_FIELD_DESC = { new TField("invitationHash", TType.STRING, 2); };
  static var GUID_HASH_FIELD_DESC = { new TField("guidHash", TType.STRING, 3); };
  static var EMAIL_FIELD_DESC = { new TField("email", TType.STRING, 4); };
  static var DEVICE_INFO_FIELD_DESC = { new TField("deviceInfo", TType.STRUCT, 5); };

  @:isVar
  public var invitationHash(get,set) : String;
  @:isVar
  public var guidHash(get,set) : String;
  @:isVar
  public var email(get,set) : String;
  @:isVar
  public var deviceInfo(get,set) : DeviceInfo;

  inline static var INVITATIONHASH_FIELD_ID : Int = 2;
  inline static var GUIDHASH_FIELD_ID : Int = 3;
  inline static var EMAIL_FIELD_ID : Int = 4;
  inline static var DEVICEINFO_FIELD_ID : Int = 5;


  public function new() {
  }

  public function get_invitationHash() : String {
    return this.invitationHash;
  }

  public function set_invitationHash(invitationHash:String) : String {
    this.invitationHash = invitationHash;
    return this.invitationHash;
  }

  public function unsetInvitationHash() : Void {
    this.invitationHash = null;
  }

  // Returns true if field invitationHash is set (has been assigned a value) and false otherwise
  public function isSetInvitationHash() : Bool {
    return this.invitationHash != null;
  }

  public function get_guidHash() : String {
    return this.guidHash;
  }

  public function set_guidHash(guidHash:String) : String {
    this.guidHash = guidHash;
    return this.guidHash;
  }

  public function unsetGuidHash() : Void {
    this.guidHash = null;
  }

  // Returns true if field guidHash is set (has been assigned a value) and false otherwise
  public function isSetGuidHash() : Bool {
    return this.guidHash != null;
  }

  public function get_email() : String {
    return this.email;
  }

  public function set_email(email:String) : String {
    this.email = email;
    return this.email;
  }

  public function unsetEmail() : Void {
    this.email = null;
  }

  // Returns true if field email is set (has been assigned a value) and false otherwise
  public function isSetEmail() : Bool {
    return this.email != null;
  }

  public function get_deviceInfo() : DeviceInfo {
    return this.deviceInfo;
  }

  public function set_deviceInfo(deviceInfo:DeviceInfo) : DeviceInfo {
    this.deviceInfo = deviceInfo;
    return this.deviceInfo;
  }

  public function unsetDeviceInfo() : Void {
    this.deviceInfo = null;
  }

  // Returns true if field deviceInfo is set (has been assigned a value) and false otherwise
  public function isSetDeviceInfo() : Bool {
    return this.deviceInfo != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case INVITATIONHASH_FIELD_ID:
      if (value == null) {
        unsetInvitationHash();
      } else {
        this.invitationHash = value;
      }

    case GUIDHASH_FIELD_ID:
      if (value == null) {
        unsetGuidHash();
      } else {
        this.guidHash = value;
      }

    case EMAIL_FIELD_ID:
      if (value == null) {
        unsetEmail();
      } else {
        this.email = value;
      }

    case DEVICEINFO_FIELD_ID:
      if (value == null) {
        unsetDeviceInfo();
      } else {
        this.deviceInfo = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case INVITATIONHASH_FIELD_ID:
      return this.invitationHash;
    case GUIDHASH_FIELD_ID:
      return this.guidHash;
    case EMAIL_FIELD_ID:
      return this.email;
    case DEVICEINFO_FIELD_ID:
      return this.deviceInfo;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case INVITATIONHASH_FIELD_ID:
      return isSetInvitationHash();
    case GUIDHASH_FIELD_ID:
      return isSetGuidHash();
    case EMAIL_FIELD_ID:
      return isSetEmail();
    case DEVICEINFO_FIELD_ID:
      return isSetDeviceInfo();
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
          case INVITATIONHASH_FIELD_ID:
            if (field.type == TType.STRING) {
              this.invitationHash = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case GUIDHASH_FIELD_ID:
            if (field.type == TType.STRING) {
              this.guidHash = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case EMAIL_FIELD_ID:
            if (field.type == TType.STRING) {
              this.email = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case DEVICEINFO_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.deviceInfo = new DeviceInfo();
              this.deviceInfo.read(iprot);
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
      if (this.invitationHash != null) {
        oprot.writeFieldBegin(INVITATION_HASH_FIELD_DESC);
        oprot.writeString(this.invitationHash);
        oprot.writeFieldEnd();
      }
      if (this.guidHash != null) {
        oprot.writeFieldBegin(GUID_HASH_FIELD_DESC);
        oprot.writeString(this.guidHash);
        oprot.writeFieldEnd();
      }
      if (this.email != null) {
        oprot.writeFieldBegin(EMAIL_FIELD_DESC);
        oprot.writeString(this.email);
        oprot.writeFieldEnd();
      }
      if (this.deviceInfo != null) {
        oprot.writeFieldBegin(DEVICE_INFO_FIELD_DESC);
        this.deviceInfo.write(oprot);
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
    var ret : String = "registerWapDevice_args(";
    var first : Bool = true;

    ret += "invitationHash:";
    if (this.invitationHash == null) {
      ret += "null";
    } else {
      ret += this.invitationHash;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "guidHash:";
    if (this.guidHash == null) {
      ret += "null";
    } else {
      ret += this.guidHash;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "email:";
    if (this.email == null) {
      ret += "null";
    } else {
      ret += this.email;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "deviceInfo:";
    if (this.deviceInfo == null) {
      ret += "null";
    } else {
      ret += this.deviceInfo;
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

