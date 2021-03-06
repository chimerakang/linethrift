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

public class MessageBoxV2MessageId implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("MessageBoxV2MessageId");

  private static final TField DELIVERED_TIME_FIELD_DESC = new TField("deliveredTime", TType.I64, (short)1);
  private static final TField MESSAGE_ID_FIELD_DESC = new TField("messageId", TType.I64, (short)2);

  private long deliveredTime;
  private long messageId;

  // isset id assignments
  private static final int __DELIVEREDTIME_ISSET_ID = 0;
  private static final int __MESSAGEID_ISSET_ID = 1;
  private boolean[] __isset_vector = new boolean[2];

  public MessageBoxV2MessageId() {
  }

  public MessageBoxV2MessageId(
    long deliveredTime,
    long messageId)
  {
    this();
    this.deliveredTime = deliveredTime;
    setDeliveredTimeIsSet(true);
    this.messageId = messageId;
    setMessageIdIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public MessageBoxV2MessageId(MessageBoxV2MessageId other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.deliveredTime = other.deliveredTime;
    this.messageId = other.messageId;
  }

  public MessageBoxV2MessageId deepCopy() {
    return new MessageBoxV2MessageId(this);
  }

  public void clear() {
    setDeliveredTimeIsSet(false);
    this.deliveredTime = 0;
    setMessageIdIsSet(false);
    this.messageId = 0;
  }

  public long getDeliveredTime() {
    return this.deliveredTime;
  }

  public void setDeliveredTime(long deliveredTime) {
    this.deliveredTime = deliveredTime;
    setDeliveredTimeIsSet(true);
  }

  public void unsetDeliveredTime() {
    __isset_vector[__DELIVEREDTIME_ISSET_ID] = false;
  }

  /** Returns true if field deliveredTime is set (has been assigned a value) and false otherwise */
  public boolean isSetDeliveredTime() {
    return __isset_vector[__DELIVEREDTIME_ISSET_ID];
  }

  public void setDeliveredTimeIsSet(boolean value) {
    __isset_vector[__DELIVEREDTIME_ISSET_ID] = value;
  }

  public long getMessageId() {
    return this.messageId;
  }

  public void setMessageId(long messageId) {
    this.messageId = messageId;
    setMessageIdIsSet(true);
  }

  public void unsetMessageId() {
    __isset_vector[__MESSAGEID_ISSET_ID] = false;
  }

  /** Returns true if field messageId is set (has been assigned a value) and false otherwise */
  public boolean isSetMessageId() {
    return __isset_vector[__MESSAGEID_ISSET_ID];
  }

  public void setMessageIdIsSet(boolean value) {
    __isset_vector[__MESSAGEID_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof MessageBoxV2MessageId)
      return this.equals((MessageBoxV2MessageId)that);
    return false;
  }

  public boolean equals(MessageBoxV2MessageId that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_deliveredTime = true;
    boolean that_present_deliveredTime = true;
    if (this_present_deliveredTime || that_present_deliveredTime) {
      if (!(this_present_deliveredTime && that_present_deliveredTime))
        return false;
      if (this.deliveredTime != that.deliveredTime)
        return false;
    }

    boolean this_present_messageId = true;
    boolean that_present_messageId = true;
    if (this_present_messageId || that_present_messageId) {
      if (!(this_present_messageId && that_present_messageId))
        return false;
      if (this.messageId != that.messageId)
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

    MessageBoxV2MessageId other = (MessageBoxV2MessageId)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetDeliveredTime(), other.isSetDeliveredTime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDeliveredTime()) {
      lastComparison = TBaseHelper.compareTo(this.deliveredTime, other.deliveredTime);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetMessageId(), other.isSetMessageId());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetMessageId()) {
      lastComparison = TBaseHelper.compareTo(this.messageId, other.messageId);
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
        case 1: // DELIVERED_TIME
          if (field.type == TType.I64) {
            this.deliveredTime = iprot.readI64();
            setDeliveredTimeIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // MESSAGE_ID
          if (field.type == TType.I64) {
            this.messageId = iprot.readI64();
            setMessageIdIsSet(true);
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
    oprot.writeFieldBegin(DELIVERED_TIME_FIELD_DESC);
    oprot.writeI64(this.deliveredTime);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(MESSAGE_ID_FIELD_DESC);
    oprot.writeI64(this.messageId);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("MessageBoxV2MessageId(");
    boolean first = true;

    sb.append("deliveredTime:");
    sb.append(this.deliveredTime);
    first = false;
    if (!first) sb.append(", ");
    sb.append("messageId:");
    sb.append(this.messageId);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}

