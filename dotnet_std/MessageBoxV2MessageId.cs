/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Thrift;
using Thrift.Collections;

using Thrift.Protocol;
using Thrift.Protocol.Entities;
using Thrift.Protocol.Utilities;
using Thrift.Transport;
using Thrift.Transport.Client;
using Thrift.Transport.Server;
using Thrift.Processor;



public partial class MessageBoxV2MessageId : TBase
{
  private long _deliveredTime;
  private long _messageId;

  public long DeliveredTime
  {
    get
    {
      return _deliveredTime;
    }
    set
    {
      __isset.deliveredTime = true;
      this._deliveredTime = value;
    }
  }

  public long MessageId
  {
    get
    {
      return _messageId;
    }
    set
    {
      __isset.messageId = true;
      this._messageId = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool deliveredTime;
    public bool messageId;
  }

  public MessageBoxV2MessageId()
  {
  }

  public async Task ReadAsync(TProtocol iprot, CancellationToken cancellationToken)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      await iprot.ReadStructBeginAsync(cancellationToken);
      while (true)
      {
        field = await iprot.ReadFieldBeginAsync(cancellationToken);
        if (field.Type == TType.Stop)
        {
          break;
        }

        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.I64)
            {
              DeliveredTime = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.I64)
            {
              MessageId = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          default: 
            await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            break;
        }

        await iprot.ReadFieldEndAsync(cancellationToken);
      }

      await iprot.ReadStructEndAsync(cancellationToken);
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public async Task WriteAsync(TProtocol oprot, CancellationToken cancellationToken)
  {
    oprot.IncrementRecursionDepth();
    try
    {
      var struc = new TStruct("MessageBoxV2MessageId");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.deliveredTime)
      {
        field.Name = "deliveredTime";
        field.Type = TType.I64;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(DeliveredTime, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.messageId)
      {
        field.Name = "messageId";
        field.Type = TType.I64;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(MessageId, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      await oprot.WriteFieldStopAsync(cancellationToken);
      await oprot.WriteStructEndAsync(cancellationToken);
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override bool Equals(object that)
  {
    var other = that as MessageBoxV2MessageId;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.deliveredTime == other.__isset.deliveredTime) && ((!__isset.deliveredTime) || (System.Object.Equals(DeliveredTime, other.DeliveredTime))))
      && ((__isset.messageId == other.__isset.messageId) && ((!__isset.messageId) || (System.Object.Equals(MessageId, other.MessageId))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.deliveredTime)
        hashcode = (hashcode * 397) + DeliveredTime.GetHashCode();
      if(__isset.messageId)
        hashcode = (hashcode * 397) + MessageId.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("MessageBoxV2MessageId(");
    bool __first = true;
    if (__isset.deliveredTime)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("DeliveredTime: ");
      sb.Append(DeliveredTime);
    }
    if (__isset.messageId)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("MessageId: ");
      sb.Append(MessageId);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
