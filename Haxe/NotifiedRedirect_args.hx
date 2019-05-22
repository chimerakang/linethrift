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


class NotifiedRedirect_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("notifiedRedirect_args"); };
  static var PARAM_MAP_FIELD_DESC = { new TField("paramMap", TType.MAP, 2); };

  @:isVar
  public var paramMap(get,set) : StringMap< String>;

  inline static var PARAMMAP_FIELD_ID : Int = 2;


  public function new() {
  }

  public function get_paramMap() : StringMap< String> {
    return this.paramMap;
  }

  public function set_paramMap(paramMap:StringMap< String>) : StringMap< String> {
    this.paramMap = paramMap;
    return this.paramMap;
  }

  public function unsetParamMap() : Void {
    this.paramMap = null;
  }

  // Returns true if field paramMap is set (has been assigned a value) and false otherwise
  public function isSetParamMap() : Bool {
    return this.paramMap != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case PARAMMAP_FIELD_ID:
      if (value == null) {
        unsetParamMap();
      } else {
        this.paramMap = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case PARAMMAP_FIELD_ID:
      return this.paramMap;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case PARAMMAP_FIELD_ID:
      return isSetParamMap();
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
          case PARAMMAP_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map1233 = iprot.readMapBegin();
                this.paramMap = new StringMap< String>();
                for( _i1234 in 0 ... _map1233.size)
                {
                  var _key1235 : String;
                  var _val1236 : String;
                  _key1235 = iprot.readString();
                  _val1236 = iprot.readString();
                  this.paramMap.set( _key1235, _val1236);
                }
                iprot.readMapEnd();
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
      if (this.paramMap != null) {
        oprot.writeFieldBegin(PARAM_MAP_FIELD_DESC);
        {
          var _sizeCounter1238 : Int = 0;
          for( _key1237 in this.paramMap) {
            _sizeCounter1238++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRING, _sizeCounter1238));
          for( elem1239 in this.paramMap.keys())
          {
            oprot.writeString(elem1239);
            oprot.writeString(this.paramMap.get(elem1239));
          }
          oprot.writeMapEnd();
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
    var ret : String = "notifiedRedirect_args(";
    var first : Bool = true;

    ret += "paramMap:";
    if (this.paramMap == null) {
      ret += "null";
    } else {
      ret += this.paramMap;
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
