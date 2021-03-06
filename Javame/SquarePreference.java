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

public class SquarePreference implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("SquarePreference");

  private static final TField FAVORITE_TIMESTAMP_FIELD_DESC = new TField("favoriteTimestamp", TType.I64, (short)1);
  private static final TField NOTI_FOR_NEW_JOIN_REQUEST_FIELD_DESC = new TField("notiForNewJoinRequest", TType.BOOL, (short)2);

  private long favoriteTimestamp;
  private boolean notiForNewJoinRequest;

  // isset id assignments
  private static final int __FAVORITETIMESTAMP_ISSET_ID = 0;
  private static final int __NOTIFORNEWJOINREQUEST_ISSET_ID = 1;
  private boolean[] __isset_vector = new boolean[2];

  public SquarePreference() {
  }

  public SquarePreference(
    long favoriteTimestamp,
    boolean notiForNewJoinRequest)
  {
    this();
    this.favoriteTimestamp = favoriteTimestamp;
    setFavoriteTimestampIsSet(true);
    this.notiForNewJoinRequest = notiForNewJoinRequest;
    setNotiForNewJoinRequestIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SquarePreference(SquarePreference other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    this.favoriteTimestamp = other.favoriteTimestamp;
    this.notiForNewJoinRequest = other.notiForNewJoinRequest;
  }

  public SquarePreference deepCopy() {
    return new SquarePreference(this);
  }

  public void clear() {
    setFavoriteTimestampIsSet(false);
    this.favoriteTimestamp = 0;
    setNotiForNewJoinRequestIsSet(false);
    this.notiForNewJoinRequest = false;
  }

  public long getFavoriteTimestamp() {
    return this.favoriteTimestamp;
  }

  public void setFavoriteTimestamp(long favoriteTimestamp) {
    this.favoriteTimestamp = favoriteTimestamp;
    setFavoriteTimestampIsSet(true);
  }

  public void unsetFavoriteTimestamp() {
    __isset_vector[__FAVORITETIMESTAMP_ISSET_ID] = false;
  }

  /** Returns true if field favoriteTimestamp is set (has been assigned a value) and false otherwise */
  public boolean isSetFavoriteTimestamp() {
    return __isset_vector[__FAVORITETIMESTAMP_ISSET_ID];
  }

  public void setFavoriteTimestampIsSet(boolean value) {
    __isset_vector[__FAVORITETIMESTAMP_ISSET_ID] = value;
  }

  public boolean isNotiForNewJoinRequest() {
    return this.notiForNewJoinRequest;
  }

  public void setNotiForNewJoinRequest(boolean notiForNewJoinRequest) {
    this.notiForNewJoinRequest = notiForNewJoinRequest;
    setNotiForNewJoinRequestIsSet(true);
  }

  public void unsetNotiForNewJoinRequest() {
    __isset_vector[__NOTIFORNEWJOINREQUEST_ISSET_ID] = false;
  }

  /** Returns true if field notiForNewJoinRequest is set (has been assigned a value) and false otherwise */
  public boolean isSetNotiForNewJoinRequest() {
    return __isset_vector[__NOTIFORNEWJOINREQUEST_ISSET_ID];
  }

  public void setNotiForNewJoinRequestIsSet(boolean value) {
    __isset_vector[__NOTIFORNEWJOINREQUEST_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof SquarePreference)
      return this.equals((SquarePreference)that);
    return false;
  }

  public boolean equals(SquarePreference that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_favoriteTimestamp = true;
    boolean that_present_favoriteTimestamp = true;
    if (this_present_favoriteTimestamp || that_present_favoriteTimestamp) {
      if (!(this_present_favoriteTimestamp && that_present_favoriteTimestamp))
        return false;
      if (this.favoriteTimestamp != that.favoriteTimestamp)
        return false;
    }

    boolean this_present_notiForNewJoinRequest = true;
    boolean that_present_notiForNewJoinRequest = true;
    if (this_present_notiForNewJoinRequest || that_present_notiForNewJoinRequest) {
      if (!(this_present_notiForNewJoinRequest && that_present_notiForNewJoinRequest))
        return false;
      if (this.notiForNewJoinRequest != that.notiForNewJoinRequest)
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

    SquarePreference other = (SquarePreference)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetFavoriteTimestamp(), other.isSetFavoriteTimestamp());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetFavoriteTimestamp()) {
      lastComparison = TBaseHelper.compareTo(this.favoriteTimestamp, other.favoriteTimestamp);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetNotiForNewJoinRequest(), other.isSetNotiForNewJoinRequest());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetNotiForNewJoinRequest()) {
      lastComparison = TBaseHelper.compareTo(this.notiForNewJoinRequest, other.notiForNewJoinRequest);
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
        case 1: // FAVORITE_TIMESTAMP
          if (field.type == TType.I64) {
            this.favoriteTimestamp = iprot.readI64();
            setFavoriteTimestampIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // NOTI_FOR_NEW_JOIN_REQUEST
          if (field.type == TType.BOOL) {
            this.notiForNewJoinRequest = iprot.readBool();
            setNotiForNewJoinRequestIsSet(true);
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
    oprot.writeFieldBegin(FAVORITE_TIMESTAMP_FIELD_DESC);
    oprot.writeI64(this.favoriteTimestamp);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(NOTI_FOR_NEW_JOIN_REQUEST_FIELD_DESC);
    oprot.writeBool(this.notiForNewJoinRequest);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("SquarePreference(");
    boolean first = true;

    sb.append("favoriteTimestamp:");
    sb.append(this.favoriteTimestamp);
    first = false;
    if (!first) sb.append(", ");
    sb.append("notiForNewJoinRequest:");
    sb.append(this.notiForNewJoinRequest);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}

