/**
 * Autogenerated by Thrift Compiler (0.13.0)
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

public class DeleteSquareChatResponse implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("DeleteSquareChatResponse");


  public DeleteSquareChatResponse() {
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public DeleteSquareChatResponse(DeleteSquareChatResponse other) {
  }

  public DeleteSquareChatResponse deepCopy() {
    return new DeleteSquareChatResponse(this);
  }

  public void clear() {
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof DeleteSquareChatResponse)
      return this.equals((DeleteSquareChatResponse)that);
    return false;
  }

  public boolean equals(DeleteSquareChatResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    DeleteSquareChatResponse other = (DeleteSquareChatResponse)otherObject;    int lastComparison = 0;

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
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("DeleteSquareChatResponse(");
    boolean first = true;

    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}
