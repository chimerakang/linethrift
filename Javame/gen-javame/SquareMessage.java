/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

public class SquareMessage implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("SquareMessage");

  private static final TField MESSAGE_FIELD_DESC = new TField("message", TType.STRUCT, (short)1);
  private static final TField FROM_TYPE_FIELD_DESC = new TField("fromType", TType.I32, (short)3);
  private static final TField SQUARE_MESSAGE_REVISION_FIELD_DESC = new TField("squareMessageRevision", TType.I64, (short)4);

  private Message message;
  private MIDType fromType;
  private long squareMessageRevision;

  // isset id assignments
  private static final int __SQUAREMESSAGEREVISION_ISSET_ID = 0;
  private boolean[] __isset_vector = new boolean[1];

  public SquareMessage() {
  }

  public SquareMessage(
    Message message,
    MIDType fromType,
    long squareMessageRevision)
  {
    this();
    this.message = message;
    this.fromType = fromType;
    this.squareMessageRevision = squareMessageRevision;
    setSquareMessageRevisionIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SquareMessage(SquareMessage other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    if (other.isSetMessage()) {
      this.message = new Message(other.message);
    }
    if (other.isSetFromType()) {
      this.fromType = other.fromType;
    }
    this.squareMessageRevision = other.squareMessageRevision;
  }

  public SquareMessage deepCopy() {
    return new SquareMessage(this);
  }

  public void clear() {
    this.message = null;
    this.fromType = null;
    setSquareMessageRevisionIsSet(false);
    this.squareMessageRevision = 0;
  }

  public Message getMessage() {
    return this.message;
  }

  public void setMessage(Message message) {
    this.message = message;
  }

  public void unsetMessage() {
    this.message = null;
  }

  /** Returns true if field message is set (has been assigned a value) and false otherwise */
  public boolean isSetMessage() {
    return this.message != null;
  }

  public void setMessageIsSet(boolean value) {
    if (!value) {
      this.message = null;
    }
  }

  /**
   * 
   * @see MIDType
   */
  public MIDType getFromType() {
    return this.fromType;
  }

  /**
   * 
   * @see MIDType
   */
  public void setFromType(MIDType fromType) {
    this.fromType = fromType;
  }

  public void unsetFromType() {
    this.fromType = null;
  }

  /** Returns true if field fromType is set (has been assigned a value) and false otherwise */
  public boolean isSetFromType() {
    return this.fromType != null;
  }

  public void setFromTypeIsSet(boolean value) {
    if (!value) {
      this.fromType = null;
    }
  }

  public long getSquareMessageRevision() {
    return this.squareMessageRevision;
  }

  public void setSquareMessageRevision(long squareMessageRevision) {
    this.squareMessageRevision = squareMessageRevision;
    setSquareMessageRevisionIsSet(true);
  }

  public void unsetSquareMessageRevision() {
    __isset_vector[__SQUAREMESSAGEREVISION_ISSET_ID] = false;
  }

  /** Returns true if field squareMessageRevision is set (has been assigned a value) and false otherwise */
  public boolean isSetSquareMessageRevision() {
    return __isset_vector[__SQUAREMESSAGEREVISION_ISSET_ID];
  }

  public void setSquareMessageRevisionIsSet(boolean value) {
    __isset_vector[__SQUAREMESSAGEREVISION_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof SquareMessage)
      return this.equals((SquareMessage)that);
    return false;
  }

  public boolean equals(SquareMessage that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_message = true && this.isSetMessage();
    boolean that_present_message = true && that.isSetMessage();
    if (this_present_message || that_present_message) {
      if (!(this_present_message && that_present_message))
        return false;
      if (!this.message.equals(that.message))
        return false;
    }

    boolean this_present_fromType = true && this.isSetFromType();
    boolean that_present_fromType = true && that.isSetFromType();
    if (this_present_fromType || that_present_fromType) {
      if (!(this_present_fromType && that_present_fromType))
        return false;
      if (!this.fromType.equals(that.fromType))
        return false;
    }

    boolean this_present_squareMessageRevision = true;
    boolean that_present_squareMessageRevision = true;
    if (this_present_squareMessageRevision || that_present_squareMessageRevision) {
      if (!(this_present_squareMessageRevision && that_present_squareMessageRevision))
        return false;
      if (this.squareMessageRevision != that.squareMessageRevision)
        return false;
    }

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    SquareMessage other = (SquareMessage)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetMessage(), other.isSetMessage());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetMessage()) {
      lastComparison = this.message.compareTo(other.message);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetFromType(), other.isSetFromType());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetFromType()) {
      lastComparison = TBaseHelper.compareTo(this.fromType, other.fromType);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetSquareMessageRevision(), other.isSetSquareMessageRevision());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSquareMessageRevision()) {
      lastComparison = TBaseHelper.compareTo(this.squareMessageRevision, other.squareMessageRevision);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id) {
        case 1: // MESSAGE
          if (field.type == TType.STRUCT) {
            this.message = new Message();
            this.message.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // FROM_TYPE
          if (field.type == TType.I32) {
            this.fromType = MIDType.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // SQUARE_MESSAGE_REVISION
          if (field.type == TType.I64) {
            this.squareMessageRevision = iprot.readI64();
            setSquareMessageRevisionIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.message != null) {
      oprot.writeFieldBegin(MESSAGE_FIELD_DESC);
      this.message.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.fromType != null) {
      oprot.writeFieldBegin(FROM_TYPE_FIELD_DESC);
      oprot.writeI32(this.fromType.getValue());
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(SQUARE_MESSAGE_REVISION_FIELD_DESC);
    oprot.writeI64(this.squareMessageRevision);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("SquareMessage(");
    boolean first = true;

    sb.append("message:");
    if (this.message == null) {
      sb.append("null");
    } else {
      sb.append(this.message);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("fromType:");
    if (this.fromType == null) {
      sb.append("null");
    } else {
      sb.append(this.fromType);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("squareMessageRevision:");
    sb.append(this.squareMessageRevision);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}
