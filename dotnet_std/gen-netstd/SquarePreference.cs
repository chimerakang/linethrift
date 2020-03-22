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



public partial class SquarePreference : TBase
{
  private long _favoriteTimestamp;
  private bool _notiForNewJoinRequest;

  public long FavoriteTimestamp
  {
    get
    {
      return _favoriteTimestamp;
    }
    set
    {
      __isset.favoriteTimestamp = true;
      this._favoriteTimestamp = value;
    }
  }

  public bool NotiForNewJoinRequest
  {
    get
    {
      return _notiForNewJoinRequest;
    }
    set
    {
      __isset.notiForNewJoinRequest = true;
      this._notiForNewJoinRequest = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool favoriteTimestamp;
    public bool notiForNewJoinRequest;
  }

  public SquarePreference()
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
              FavoriteTimestamp = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.Bool)
            {
              NotiForNewJoinRequest = await iprot.ReadBoolAsync(cancellationToken);
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
      var struc = new TStruct("SquarePreference");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.favoriteTimestamp)
      {
        field.Name = "favoriteTimestamp";
        field.Type = TType.I64;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(FavoriteTimestamp, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.notiForNewJoinRequest)
      {
        field.Name = "notiForNewJoinRequest";
        field.Type = TType.Bool;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteBoolAsync(NotiForNewJoinRequest, cancellationToken);
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
    var other = that as SquarePreference;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.favoriteTimestamp == other.__isset.favoriteTimestamp) && ((!__isset.favoriteTimestamp) || (System.Object.Equals(FavoriteTimestamp, other.FavoriteTimestamp))))
      && ((__isset.notiForNewJoinRequest == other.__isset.notiForNewJoinRequest) && ((!__isset.notiForNewJoinRequest) || (System.Object.Equals(NotiForNewJoinRequest, other.NotiForNewJoinRequest))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.favoriteTimestamp)
        hashcode = (hashcode * 397) + FavoriteTimestamp.GetHashCode();
      if(__isset.notiForNewJoinRequest)
        hashcode = (hashcode * 397) + NotiForNewJoinRequest.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("SquarePreference(");
    bool __first = true;
    if (__isset.favoriteTimestamp)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("FavoriteTimestamp: ");
      FavoriteTimestamp.ToString(sb);
    }
    if (__isset.notiForNewJoinRequest)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("NotiForNewJoinRequest: ");
      NotiForNewJoinRequest.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
