/**
 * Autogenerated by Thrift Compiler (0.14.0)
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



public partial class MessageStoreResult : TBase
{
  private string _requestId;
  private List<string> _messageIds;

  public string RequestId
  {
    get
    {
      return _requestId;
    }
    set
    {
      __isset.requestId = true;
      this._requestId = value;
    }
  }

  public List<string> MessageIds
  {
    get
    {
      return _messageIds;
    }
    set
    {
      __isset.messageIds = true;
      this._messageIds = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool requestId;
    public bool messageIds;
  }

  public MessageStoreResult()
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
            if (field.Type == TType.String)
            {
              RequestId = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.List)
            {
              {
                TList _list170 = await iprot.ReadListBeginAsync(cancellationToken);
                MessageIds = new List<string>(_list170.Count);
                for(int _i171 = 0; _i171 < _list170.Count; ++_i171)
                {
                  string _elem172;
                  _elem172 = await iprot.ReadStringAsync(cancellationToken);
                  MessageIds.Add(_elem172);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
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
      var struc = new TStruct("MessageStoreResult");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (RequestId != null && __isset.requestId)
      {
        field.Name = "requestId";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(RequestId, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (MessageIds != null && __isset.messageIds)
      {
        field.Name = "messageIds";
        field.Type = TType.List;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.String, MessageIds.Count), cancellationToken);
          foreach (string _iter173 in MessageIds)
          {
            await oprot.WriteStringAsync(_iter173, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
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
    var other = that as MessageStoreResult;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.requestId == other.__isset.requestId) && ((!__isset.requestId) || (System.Object.Equals(RequestId, other.RequestId))))
      && ((__isset.messageIds == other.__isset.messageIds) && ((!__isset.messageIds) || (TCollections.Equals(MessageIds, other.MessageIds))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.requestId)
        hashcode = (hashcode * 397) + RequestId.GetHashCode();
      if(__isset.messageIds)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(MessageIds);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("MessageStoreResult(");
    bool __first = true;
    if (RequestId != null && __isset.requestId)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RequestId: ");
      RequestId.ToString(sb);
    }
    if (MessageIds != null && __isset.messageIds)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("MessageIds: ");
      MessageIds.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
