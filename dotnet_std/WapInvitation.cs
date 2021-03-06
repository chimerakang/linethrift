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



public partial class WapInvitation : TBase
{
  private WapInvitationType _type;
  private string _inviteeEmail;
  private string _inviterMid;
  private string _roomMid;

  /// <summary>
  /// 
  /// <seealso cref="WapInvitationType"/>
  /// </summary>
  public WapInvitationType Type
  {
    get
    {
      return _type;
    }
    set
    {
      __isset.type = true;
      this._type = value;
    }
  }

  public string InviteeEmail
  {
    get
    {
      return _inviteeEmail;
    }
    set
    {
      __isset.inviteeEmail = true;
      this._inviteeEmail = value;
    }
  }

  public string InviterMid
  {
    get
    {
      return _inviterMid;
    }
    set
    {
      __isset.inviterMid = true;
      this._inviterMid = value;
    }
  }

  public string RoomMid
  {
    get
    {
      return _roomMid;
    }
    set
    {
      __isset.roomMid = true;
      this._roomMid = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool type;
    public bool inviteeEmail;
    public bool inviterMid;
    public bool roomMid;
  }

  public WapInvitation()
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
            if (field.Type == TType.I32)
            {
              Type = (WapInvitationType)await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 10:
            if (field.Type == TType.String)
            {
              InviteeEmail = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 11:
            if (field.Type == TType.String)
            {
              InviterMid = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 12:
            if (field.Type == TType.String)
            {
              RoomMid = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("WapInvitation");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.type)
      {
        field.Name = "type";
        field.Type = TType.I32;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async((int)Type, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (InviteeEmail != null && __isset.inviteeEmail)
      {
        field.Name = "inviteeEmail";
        field.Type = TType.String;
        field.ID = 10;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(InviteeEmail, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (InviterMid != null && __isset.inviterMid)
      {
        field.Name = "inviterMid";
        field.Type = TType.String;
        field.ID = 11;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(InviterMid, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (RoomMid != null && __isset.roomMid)
      {
        field.Name = "roomMid";
        field.Type = TType.String;
        field.ID = 12;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(RoomMid, cancellationToken);
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
    var other = that as WapInvitation;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.type == other.__isset.type) && ((!__isset.type) || (System.Object.Equals(Type, other.Type))))
      && ((__isset.inviteeEmail == other.__isset.inviteeEmail) && ((!__isset.inviteeEmail) || (System.Object.Equals(InviteeEmail, other.InviteeEmail))))
      && ((__isset.inviterMid == other.__isset.inviterMid) && ((!__isset.inviterMid) || (System.Object.Equals(InviterMid, other.InviterMid))))
      && ((__isset.roomMid == other.__isset.roomMid) && ((!__isset.roomMid) || (System.Object.Equals(RoomMid, other.RoomMid))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.type)
        hashcode = (hashcode * 397) + Type.GetHashCode();
      if(__isset.inviteeEmail)
        hashcode = (hashcode * 397) + InviteeEmail.GetHashCode();
      if(__isset.inviterMid)
        hashcode = (hashcode * 397) + InviterMid.GetHashCode();
      if(__isset.roomMid)
        hashcode = (hashcode * 397) + RoomMid.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("WapInvitation(");
    bool __first = true;
    if (__isset.type)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Type: ");
      Type.ToString(sb);
    }
    if (InviteeEmail != null && __isset.inviteeEmail)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("InviteeEmail: ");
      InviteeEmail.ToString(sb);
    }
    if (InviterMid != null && __isset.inviterMid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("InviterMid: ");
      InviterMid.ToString(sb);
    }
    if (RoomMid != null && __isset.roomMid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RoomMid: ");
      RoomMid.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

