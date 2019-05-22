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


class FriendChannelMatricesResponse implements TBase {
  
  static var STRUCT_DESC = { new TStruct("FriendChannelMatricesResponse"); };
  static var EXPIRES_FIELD_DESC = { new TField("expires", TType.I64, 1); };
  static var MATRICES_FIELD_DESC = { new TField("matrices", TType.LIST, 2); };

  @:isVar
  public var expires(get,set) : haxe.Int64;
  @:isVar
  public var matrices(get,set) : List< FriendChannelMatrix>;

  inline static var EXPIRES_FIELD_ID : Int = 1;
  inline static var MATRICES_FIELD_ID : Int = 2;

  private var __isset_expires : Bool = false;

  public function new() {
  }

  public function get_expires() : haxe.Int64 {
    return this.expires;
  }

  public function set_expires(expires:haxe.Int64) : haxe.Int64 {
    this.expires = expires;
    this.__isset_expires = true;
    return this.expires;
  }

  public function unsetExpires() : Void {
    this.__isset_expires = false;
  }

  // Returns true if field expires is set (has been assigned a value) and false otherwise
  public function isSetExpires() : Bool {
    return this.__isset_expires;
  }

  public function get_matrices() : List< FriendChannelMatrix> {
    return this.matrices;
  }

  public function set_matrices(matrices:List< FriendChannelMatrix>) : List< FriendChannelMatrix> {
    this.matrices = matrices;
    return this.matrices;
  }

  public function unsetMatrices() : Void {
    this.matrices = null;
  }

  // Returns true if field matrices is set (has been assigned a value) and false otherwise
  public function isSetMatrices() : Bool {
    return this.matrices != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case EXPIRES_FIELD_ID:
      if (value == null) {
        unsetExpires();
      } else {
        this.expires = value;
      }

    case MATRICES_FIELD_ID:
      if (value == null) {
        unsetMatrices();
      } else {
        this.matrices = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case EXPIRES_FIELD_ID:
      return this.expires;
    case MATRICES_FIELD_ID:
      return this.matrices;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case EXPIRES_FIELD_ID:
      return isSetExpires();
    case MATRICES_FIELD_ID:
      return isSetMatrices();
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
          case EXPIRES_FIELD_ID:
            if (field.type == TType.I64) {
              this.expires = iprot.readI64();
              this.__isset_expires = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case MATRICES_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list231 = iprot.readListBegin();
                this.matrices = new List< FriendChannelMatrix>();
                for( _i232 in 0 ... _list231.size)
                {
                  var _elem233 : FriendChannelMatrix;
                  _elem233 = new FriendChannelMatrix();
                  _elem233.read(iprot);
                  this.matrices.add(_elem233);
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
      oprot.writeFieldBegin(EXPIRES_FIELD_DESC);
      oprot.writeI64(this.expires);
      oprot.writeFieldEnd();
      if (this.matrices != null) {
        oprot.writeFieldBegin(MATRICES_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.matrices.length));
          for( elem234 in this.matrices)
          {
            elem234.write(oprot);
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
    var ret : String = "FriendChannelMatricesResponse(";
    var first : Bool = true;

    ret += "expires:";
    ret += this.expires;
    first = false;
    if (!first) ret +=  ", ";
    ret += "matrices:";
    if (this.matrices == null) {
      ret += "null";
    } else {
      ret += this.matrices;
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
