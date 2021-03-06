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


class VerificationSessionData implements TBase {
  
  static var STRUCT_DESC = { new TStruct("VerificationSessionData"); };
  static var SESSION_ID_FIELD_DESC = { new TField("sessionId", TType.STRING, 1); };
  static var METHOD_FIELD_DESC = { new TField("method", TType.I32, 2); };
  static var CALLBACK_FIELD_DESC = { new TField("callback", TType.STRING, 3); };
  static var NORMALIZED_PHONE_FIELD_DESC = { new TField("normalizedPhone", TType.STRING, 4); };
  static var COUNTRY_CODE_FIELD_DESC = { new TField("countryCode", TType.STRING, 5); };
  static var NATIONAL_SIGNIFICANT_NUMBER_FIELD_DESC = { new TField("nationalSignificantNumber", TType.STRING, 6); };
  static var AVAILABLE_VERIFICATION_METHODS_FIELD_DESC = { new TField("availableVerificationMethods", TType.LIST, 7); };

  @:isVar
  public var sessionId(get,set) : String;
  @:isVar
  public var method(get,set) : Int;
  @:isVar
  public var callback(get,set) : String;
  @:isVar
  public var normalizedPhone(get,set) : String;
  @:isVar
  public var countryCode(get,set) : String;
  @:isVar
  public var nationalSignificantNumber(get,set) : String;
  @:isVar
  public var availableVerificationMethods(get,set) : List< Int>;

  inline static var SESSIONID_FIELD_ID : Int = 1;
  inline static var METHOD_FIELD_ID : Int = 2;
  inline static var CALLBACK_FIELD_ID : Int = 3;
  inline static var NORMALIZEDPHONE_FIELD_ID : Int = 4;
  inline static var COUNTRYCODE_FIELD_ID : Int = 5;
  inline static var NATIONALSIGNIFICANTNUMBER_FIELD_ID : Int = 6;
  inline static var AVAILABLEVERIFICATIONMETHODS_FIELD_ID : Int = 7;

  private var __isset_method : Bool = false;

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

  public function get_method() : Int {
    return this.method;
  }

  public function set_method(method:Int) : Int {
    this.method = method;
    this.__isset_method = true;
    return this.method;
  }

  public function unsetMethod() : Void {
    this.__isset_method = false;
  }

  // Returns true if field method is set (has been assigned a value) and false otherwise
  public function isSetMethod() : Bool {
    return this.__isset_method;
  }

  public function get_callback() : String {
    return this.callback;
  }

  public function set_callback(callback:String) : String {
    this.callback = callback;
    return this.callback;
  }

  public function unsetCallback() : Void {
    this.callback = null;
  }

  // Returns true if field callback is set (has been assigned a value) and false otherwise
  public function isSetCallback() : Bool {
    return this.callback != null;
  }

  public function get_normalizedPhone() : String {
    return this.normalizedPhone;
  }

  public function set_normalizedPhone(normalizedPhone:String) : String {
    this.normalizedPhone = normalizedPhone;
    return this.normalizedPhone;
  }

  public function unsetNormalizedPhone() : Void {
    this.normalizedPhone = null;
  }

  // Returns true if field normalizedPhone is set (has been assigned a value) and false otherwise
  public function isSetNormalizedPhone() : Bool {
    return this.normalizedPhone != null;
  }

  public function get_countryCode() : String {
    return this.countryCode;
  }

  public function set_countryCode(countryCode:String) : String {
    this.countryCode = countryCode;
    return this.countryCode;
  }

  public function unsetCountryCode() : Void {
    this.countryCode = null;
  }

  // Returns true if field countryCode is set (has been assigned a value) and false otherwise
  public function isSetCountryCode() : Bool {
    return this.countryCode != null;
  }

  public function get_nationalSignificantNumber() : String {
    return this.nationalSignificantNumber;
  }

  public function set_nationalSignificantNumber(nationalSignificantNumber:String) : String {
    this.nationalSignificantNumber = nationalSignificantNumber;
    return this.nationalSignificantNumber;
  }

  public function unsetNationalSignificantNumber() : Void {
    this.nationalSignificantNumber = null;
  }

  // Returns true if field nationalSignificantNumber is set (has been assigned a value) and false otherwise
  public function isSetNationalSignificantNumber() : Bool {
    return this.nationalSignificantNumber != null;
  }

  public function get_availableVerificationMethods() : List< Int> {
    return this.availableVerificationMethods;
  }

  public function set_availableVerificationMethods(availableVerificationMethods:List< Int>) : List< Int> {
    this.availableVerificationMethods = availableVerificationMethods;
    return this.availableVerificationMethods;
  }

  public function unsetAvailableVerificationMethods() : Void {
    this.availableVerificationMethods = null;
  }

  // Returns true if field availableVerificationMethods is set (has been assigned a value) and false otherwise
  public function isSetAvailableVerificationMethods() : Bool {
    return this.availableVerificationMethods != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      if (value == null) {
        unsetSessionId();
      } else {
        this.sessionId = value;
      }

    case METHOD_FIELD_ID:
      if (value == null) {
        unsetMethod();
      } else {
        this.method = value;
      }

    case CALLBACK_FIELD_ID:
      if (value == null) {
        unsetCallback();
      } else {
        this.callback = value;
      }

    case NORMALIZEDPHONE_FIELD_ID:
      if (value == null) {
        unsetNormalizedPhone();
      } else {
        this.normalizedPhone = value;
      }

    case COUNTRYCODE_FIELD_ID:
      if (value == null) {
        unsetCountryCode();
      } else {
        this.countryCode = value;
      }

    case NATIONALSIGNIFICANTNUMBER_FIELD_ID:
      if (value == null) {
        unsetNationalSignificantNumber();
      } else {
        this.nationalSignificantNumber = value;
      }

    case AVAILABLEVERIFICATIONMETHODS_FIELD_ID:
      if (value == null) {
        unsetAvailableVerificationMethods();
      } else {
        this.availableVerificationMethods = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      return this.sessionId;
    case METHOD_FIELD_ID:
      return this.method;
    case CALLBACK_FIELD_ID:
      return this.callback;
    case NORMALIZEDPHONE_FIELD_ID:
      return this.normalizedPhone;
    case COUNTRYCODE_FIELD_ID:
      return this.countryCode;
    case NATIONALSIGNIFICANTNUMBER_FIELD_ID:
      return this.nationalSignificantNumber;
    case AVAILABLEVERIFICATIONMETHODS_FIELD_ID:
      return this.availableVerificationMethods;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      return isSetSessionId();
    case METHOD_FIELD_ID:
      return isSetMethod();
    case CALLBACK_FIELD_ID:
      return isSetCallback();
    case NORMALIZEDPHONE_FIELD_ID:
      return isSetNormalizedPhone();
    case COUNTRYCODE_FIELD_ID:
      return isSetCountryCode();
    case NATIONALSIGNIFICANTNUMBER_FIELD_ID:
      return isSetNationalSignificantNumber();
    case AVAILABLEVERIFICATIONMETHODS_FIELD_ID:
      return isSetAvailableVerificationMethods();
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
          case METHOD_FIELD_ID:
            if (field.type == TType.I32) {
              this.method = iprot.readI32();
              this.__isset_method = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CALLBACK_FIELD_ID:
            if (field.type == TType.STRING) {
              this.callback = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case NORMALIZEDPHONE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.normalizedPhone = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case COUNTRYCODE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.countryCode = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case NATIONALSIGNIFICANTNUMBER_FIELD_ID:
            if (field.type == TType.STRING) {
              this.nationalSignificantNumber = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case AVAILABLEVERIFICATIONMETHODS_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list163 = iprot.readListBegin();
                this.availableVerificationMethods = new List< Int>();
                for( _i164 in 0 ... _list163.size)
                {
                  var _elem165 : Int;
                  _elem165 = iprot.readI32();
                  this.availableVerificationMethods.add(_elem165);
                }
                iprot.readListEnd();
              }
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
      oprot.writeFieldBegin(METHOD_FIELD_DESC);
      oprot.writeI32(this.method);
      oprot.writeFieldEnd();
      if (this.callback != null) {
        oprot.writeFieldBegin(CALLBACK_FIELD_DESC);
        oprot.writeString(this.callback);
        oprot.writeFieldEnd();
      }
      if (this.normalizedPhone != null) {
        oprot.writeFieldBegin(NORMALIZED_PHONE_FIELD_DESC);
        oprot.writeString(this.normalizedPhone);
        oprot.writeFieldEnd();
      }
      if (this.countryCode != null) {
        oprot.writeFieldBegin(COUNTRY_CODE_FIELD_DESC);
        oprot.writeString(this.countryCode);
        oprot.writeFieldEnd();
      }
      if (this.nationalSignificantNumber != null) {
        oprot.writeFieldBegin(NATIONAL_SIGNIFICANT_NUMBER_FIELD_DESC);
        oprot.writeString(this.nationalSignificantNumber);
        oprot.writeFieldEnd();
      }
      if (this.availableVerificationMethods != null) {
        oprot.writeFieldBegin(AVAILABLE_VERIFICATION_METHODS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.I32, this.availableVerificationMethods.length));
          for( elem166 in this.availableVerificationMethods)
          {
            oprot.writeI32(elem166);
          }
          oprot.writeListEnd();
        }
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
    var ret : String = "VerificationSessionData(";
    var first : Bool = true;

    ret += "sessionId:";
    if (this.sessionId == null) {
      ret += "null";
    } else {
      ret += this.sessionId;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "method:";
    var method_name : String = .VerificationMethod.VALUES_TO_NAMES[this.method];
    if (method_name != null) {
      ret += method_name;
      ret += " (";
    }
    ret += this.method;
    if (method_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "callback:";
    if (this.callback == null) {
      ret += "null";
    } else {
      ret += this.callback;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "normalizedPhone:";
    if (this.normalizedPhone == null) {
      ret += "null";
    } else {
      ret += this.normalizedPhone;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "countryCode:";
    if (this.countryCode == null) {
      ret += "null";
    } else {
      ret += this.countryCode;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "nationalSignificantNumber:";
    if (this.nationalSignificantNumber == null) {
      ret += "null";
    } else {
      ret += this.nationalSignificantNumber;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "availableVerificationMethods:";
    if (this.availableVerificationMethods == null) {
      ret += "null";
    } else {
      ret += this.availableVerificationMethods;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetMethod() && !.VerificationMethod.VALID_VALUES.contains(method)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'method' has been assigned the invalid value " + method);
    }
  }

}

