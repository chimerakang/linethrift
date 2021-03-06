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


class SuggestDictionaryIncrements implements TBase {
  
  static var STRUCT_DESC = { new TStruct("SuggestDictionaryIncrements"); };
  static var ITEM_INCREMENT_FIELD_DESC = { new TField("itemIncrement", TType.STRUCT, 1); };
  static var TAG_INCREMENTS_FIELD_DESC = { new TField("tagIncrements", TType.LIST, 2); };

  @:isVar
  public var itemIncrement(get,set) : SuggestItemDictionaryIncrement;
  @:isVar
  public var tagIncrements(get,set) : List< SuggestTagDictionaryIncrement>;

  inline static var ITEMINCREMENT_FIELD_ID : Int = 1;
  inline static var TAGINCREMENTS_FIELD_ID : Int = 2;


  public function new() {
  }

  public function get_itemIncrement() : SuggestItemDictionaryIncrement {
    return this.itemIncrement;
  }

  public function set_itemIncrement(itemIncrement:SuggestItemDictionaryIncrement) : SuggestItemDictionaryIncrement {
    this.itemIncrement = itemIncrement;
    return this.itemIncrement;
  }

  public function unsetItemIncrement() : Void {
    this.itemIncrement = null;
  }

  // Returns true if field itemIncrement is set (has been assigned a value) and false otherwise
  public function isSetItemIncrement() : Bool {
    return this.itemIncrement != null;
  }

  public function get_tagIncrements() : List< SuggestTagDictionaryIncrement> {
    return this.tagIncrements;
  }

  public function set_tagIncrements(tagIncrements:List< SuggestTagDictionaryIncrement>) : List< SuggestTagDictionaryIncrement> {
    this.tagIncrements = tagIncrements;
    return this.tagIncrements;
  }

  public function unsetTagIncrements() : Void {
    this.tagIncrements = null;
  }

  // Returns true if field tagIncrements is set (has been assigned a value) and false otherwise
  public function isSetTagIncrements() : Bool {
    return this.tagIncrements != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case ITEMINCREMENT_FIELD_ID:
      if (value == null) {
        unsetItemIncrement();
      } else {
        this.itemIncrement = value;
      }

    case TAGINCREMENTS_FIELD_ID:
      if (value == null) {
        unsetTagIncrements();
      } else {
        this.tagIncrements = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case ITEMINCREMENT_FIELD_ID:
      return this.itemIncrement;
    case TAGINCREMENTS_FIELD_ID:
      return this.tagIncrements;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case ITEMINCREMENT_FIELD_ID:
      return isSetItemIncrement();
    case TAGINCREMENTS_FIELD_ID:
      return isSetTagIncrements();
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
          case ITEMINCREMENT_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.itemIncrement = new SuggestItemDictionaryIncrement();
              this.itemIncrement.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case TAGINCREMENTS_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list243 = iprot.readListBegin();
                this.tagIncrements = new List< SuggestTagDictionaryIncrement>();
                for( _i244 in 0 ... _list243.size)
                {
                  var _elem245 : SuggestTagDictionaryIncrement;
                  _elem245 = new SuggestTagDictionaryIncrement();
                  _elem245.read(iprot);
                  this.tagIncrements.add(_elem245);
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
      if (this.itemIncrement != null) {
        oprot.writeFieldBegin(ITEM_INCREMENT_FIELD_DESC);
        this.itemIncrement.write(oprot);
        oprot.writeFieldEnd();
      }
      if (this.tagIncrements != null) {
        oprot.writeFieldBegin(TAG_INCREMENTS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.tagIncrements.length));
          for( elem246 in this.tagIncrements)
          {
            elem246.write(oprot);
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
    var ret : String = "SuggestDictionaryIncrements(";
    var first : Bool = true;

    ret += "itemIncrement:";
    if (this.itemIncrement == null) {
      ret += "null";
    } else {
      ret += this.itemIncrement;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "tagIncrements:";
    if (this.tagIncrements == null) {
      ret += "null";
    } else {
      ret += this.tagIncrements;
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

