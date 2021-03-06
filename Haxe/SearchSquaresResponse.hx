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


class SearchSquaresResponse implements TBase {
  
  static var STRUCT_DESC = { new TStruct("SearchSquaresResponse"); };
  static var SQUARES_FIELD_DESC = { new TField("squares", TType.LIST, 1); };
  static var SQUARE_STATUSES_FIELD_DESC = { new TField("squareStatuses", TType.MAP, 2); };
  static var MY_MEMBERSHIPS_FIELD_DESC = { new TField("myMemberships", TType.MAP, 3); };
  static var CONTINUATION_TOKEN_FIELD_DESC = { new TField("continuationToken", TType.STRING, 4); };
  static var NOTE_STATUSES_FIELD_DESC = { new TField("noteStatuses", TType.MAP, 5); };

  @:isVar
  public var squares(get,set) : List< Square>;
  @:isVar
  public var squareStatuses(get,set) : StringMap< SquareStatus>;
  @:isVar
  public var myMemberships(get,set) : StringMap< SquareMember>;
  @:isVar
  public var continuationToken(get,set) : String;
  @:isVar
  public var noteStatuses(get,set) : StringMap< NoteStatus>;

  inline static var SQUARES_FIELD_ID : Int = 1;
  inline static var SQUARESTATUSES_FIELD_ID : Int = 2;
  inline static var MYMEMBERSHIPS_FIELD_ID : Int = 3;
  inline static var CONTINUATIONTOKEN_FIELD_ID : Int = 4;
  inline static var NOTESTATUSES_FIELD_ID : Int = 5;


  public function new() {
  }

  public function get_squares() : List< Square> {
    return this.squares;
  }

  public function set_squares(squares:List< Square>) : List< Square> {
    this.squares = squares;
    return this.squares;
  }

  public function unsetSquares() : Void {
    this.squares = null;
  }

  // Returns true if field squares is set (has been assigned a value) and false otherwise
  public function isSetSquares() : Bool {
    return this.squares != null;
  }

  public function get_squareStatuses() : StringMap< SquareStatus> {
    return this.squareStatuses;
  }

  public function set_squareStatuses(squareStatuses:StringMap< SquareStatus>) : StringMap< SquareStatus> {
    this.squareStatuses = squareStatuses;
    return this.squareStatuses;
  }

  public function unsetSquareStatuses() : Void {
    this.squareStatuses = null;
  }

  // Returns true if field squareStatuses is set (has been assigned a value) and false otherwise
  public function isSetSquareStatuses() : Bool {
    return this.squareStatuses != null;
  }

  public function get_myMemberships() : StringMap< SquareMember> {
    return this.myMemberships;
  }

  public function set_myMemberships(myMemberships:StringMap< SquareMember>) : StringMap< SquareMember> {
    this.myMemberships = myMemberships;
    return this.myMemberships;
  }

  public function unsetMyMemberships() : Void {
    this.myMemberships = null;
  }

  // Returns true if field myMemberships is set (has been assigned a value) and false otherwise
  public function isSetMyMemberships() : Bool {
    return this.myMemberships != null;
  }

  public function get_continuationToken() : String {
    return this.continuationToken;
  }

  public function set_continuationToken(continuationToken:String) : String {
    this.continuationToken = continuationToken;
    return this.continuationToken;
  }

  public function unsetContinuationToken() : Void {
    this.continuationToken = null;
  }

  // Returns true if field continuationToken is set (has been assigned a value) and false otherwise
  public function isSetContinuationToken() : Bool {
    return this.continuationToken != null;
  }

  public function get_noteStatuses() : StringMap< NoteStatus> {
    return this.noteStatuses;
  }

  public function set_noteStatuses(noteStatuses:StringMap< NoteStatus>) : StringMap< NoteStatus> {
    this.noteStatuses = noteStatuses;
    return this.noteStatuses;
  }

  public function unsetNoteStatuses() : Void {
    this.noteStatuses = null;
  }

  // Returns true if field noteStatuses is set (has been assigned a value) and false otherwise
  public function isSetNoteStatuses() : Bool {
    return this.noteStatuses != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case SQUARES_FIELD_ID:
      if (value == null) {
        unsetSquares();
      } else {
        this.squares = value;
      }

    case SQUARESTATUSES_FIELD_ID:
      if (value == null) {
        unsetSquareStatuses();
      } else {
        this.squareStatuses = value;
      }

    case MYMEMBERSHIPS_FIELD_ID:
      if (value == null) {
        unsetMyMemberships();
      } else {
        this.myMemberships = value;
      }

    case CONTINUATIONTOKEN_FIELD_ID:
      if (value == null) {
        unsetContinuationToken();
      } else {
        this.continuationToken = value;
      }

    case NOTESTATUSES_FIELD_ID:
      if (value == null) {
        unsetNoteStatuses();
      } else {
        this.noteStatuses = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case SQUARES_FIELD_ID:
      return this.squares;
    case SQUARESTATUSES_FIELD_ID:
      return this.squareStatuses;
    case MYMEMBERSHIPS_FIELD_ID:
      return this.myMemberships;
    case CONTINUATIONTOKEN_FIELD_ID:
      return this.continuationToken;
    case NOTESTATUSES_FIELD_ID:
      return this.noteStatuses;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case SQUARES_FIELD_ID:
      return isSetSquares();
    case SQUARESTATUSES_FIELD_ID:
      return isSetSquareStatuses();
    case MYMEMBERSHIPS_FIELD_ID:
      return isSetMyMemberships();
    case CONTINUATIONTOKEN_FIELD_ID:
      return isSetContinuationToken();
    case NOTESTATUSES_FIELD_ID:
      return isSetNoteStatuses();
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
          case SQUARES_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list426 = iprot.readListBegin();
                this.squares = new List< Square>();
                for( _i427 in 0 ... _list426.size)
                {
                  var _elem428 : Square;
                  _elem428 = new Square();
                  _elem428.read(iprot);
                  this.squares.add(_elem428);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case SQUARESTATUSES_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map429 = iprot.readMapBegin();
                this.squareStatuses = new StringMap< SquareStatus>();
                for( _i430 in 0 ... _map429.size)
                {
                  var _key431 : String;
                  var _val432 : SquareStatus;
                  _key431 = iprot.readString();
                  _val432 = new SquareStatus();
                  _val432.read(iprot);
                  this.squareStatuses.set( _key431, _val432);
                }
                iprot.readMapEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case MYMEMBERSHIPS_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map433 = iprot.readMapBegin();
                this.myMemberships = new StringMap< SquareMember>();
                for( _i434 in 0 ... _map433.size)
                {
                  var _key435 : String;
                  var _val436 : SquareMember;
                  _key435 = iprot.readString();
                  _val436 = new SquareMember();
                  _val436.read(iprot);
                  this.myMemberships.set( _key435, _val436);
                }
                iprot.readMapEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CONTINUATIONTOKEN_FIELD_ID:
            if (field.type == TType.STRING) {
              this.continuationToken = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case NOTESTATUSES_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map437 = iprot.readMapBegin();
                this.noteStatuses = new StringMap< NoteStatus>();
                for( _i438 in 0 ... _map437.size)
                {
                  var _key439 : String;
                  var _val440 : NoteStatus;
                  _key439 = iprot.readString();
                  _val440 = new NoteStatus();
                  _val440.read(iprot);
                  this.noteStatuses.set( _key439, _val440);
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
      if (this.squares != null) {
        oprot.writeFieldBegin(SQUARES_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.squares.length));
          for( elem441 in this.squares)
          {
            elem441.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.squareStatuses != null) {
        oprot.writeFieldBegin(SQUARE_STATUSES_FIELD_DESC);
        {
          var _sizeCounter443 : Int = 0;
          for( _key442 in this.squareStatuses) {
            _sizeCounter443++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRUCT, _sizeCounter443));
          for( elem444 in this.squareStatuses.keys())
          {
            oprot.writeString(elem444);
            this.squareStatuses.get(elem444).write(oprot);
          }
          oprot.writeMapEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.myMemberships != null) {
        oprot.writeFieldBegin(MY_MEMBERSHIPS_FIELD_DESC);
        {
          var _sizeCounter446 : Int = 0;
          for( _key445 in this.myMemberships) {
            _sizeCounter446++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRUCT, _sizeCounter446));
          for( elem447 in this.myMemberships.keys())
          {
            oprot.writeString(elem447);
            this.myMemberships.get(elem447).write(oprot);
          }
          oprot.writeMapEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.continuationToken != null) {
        oprot.writeFieldBegin(CONTINUATION_TOKEN_FIELD_DESC);
        oprot.writeString(this.continuationToken);
        oprot.writeFieldEnd();
      }
      if (this.noteStatuses != null) {
        oprot.writeFieldBegin(NOTE_STATUSES_FIELD_DESC);
        {
          var _sizeCounter449 : Int = 0;
          for( _key448 in this.noteStatuses) {
            _sizeCounter449++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRUCT, _sizeCounter449));
          for( elem450 in this.noteStatuses.keys())
          {
            oprot.writeString(elem450);
            this.noteStatuses.get(elem450).write(oprot);
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
    var ret : String = "SearchSquaresResponse(";
    var first : Bool = true;

    ret += "squares:";
    if (this.squares == null) {
      ret += "null";
    } else {
      ret += this.squares;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "squareStatuses:";
    if (this.squareStatuses == null) {
      ret += "null";
    } else {
      ret += this.squareStatuses;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "myMemberships:";
    if (this.myMemberships == null) {
      ret += "null";
    } else {
      ret += this.myMemberships;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "continuationToken:";
    if (this.continuationToken == null) {
      ret += "null";
    } else {
      ret += this.continuationToken;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "noteStatuses:";
    if (this.noteStatuses == null) {
      ret += "null";
    } else {
      ret += this.noteStatuses;
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

