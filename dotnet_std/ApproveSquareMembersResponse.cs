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



public partial class ApproveSquareMembersResponse : TBase
{
  private List<SquareMember> _approvedMembers;
  private SquareStatus _status;

  public List<SquareMember> ApprovedMembers
  {
    get
    {
      return _approvedMembers;
    }
    set
    {
      __isset.approvedMembers = true;
      this._approvedMembers = value;
    }
  }

  public SquareStatus Status
  {
    get
    {
      return _status;
    }
    set
    {
      __isset.status = true;
      this._status = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool approvedMembers;
    public bool status;
  }

  public ApproveSquareMembersResponse()
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
            if (field.Type == TType.List)
            {
              {
                TList _list284 = await iprot.ReadListBeginAsync(cancellationToken);
                ApprovedMembers = new List<SquareMember>(_list284.Count);
                for(int _i285 = 0; _i285 < _list284.Count; ++_i285)
                {
                  SquareMember _elem286;
                  _elem286 = new SquareMember();
                  await _elem286.ReadAsync(iprot, cancellationToken);
                  ApprovedMembers.Add(_elem286);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.Struct)
            {
              Status = new SquareStatus();
              await Status.ReadAsync(iprot, cancellationToken);
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
      var struc = new TStruct("ApproveSquareMembersResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (ApprovedMembers != null && __isset.approvedMembers)
      {
        field.Name = "approvedMembers";
        field.Type = TType.List;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, ApprovedMembers.Count), cancellationToken);
          foreach (SquareMember _iter287 in ApprovedMembers)
          {
            await _iter287.WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Status != null && __isset.status)
      {
        field.Name = "status";
        field.Type = TType.Struct;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Status.WriteAsync(oprot, cancellationToken);
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
    var other = that as ApproveSquareMembersResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.approvedMembers == other.__isset.approvedMembers) && ((!__isset.approvedMembers) || (TCollections.Equals(ApprovedMembers, other.ApprovedMembers))))
      && ((__isset.status == other.__isset.status) && ((!__isset.status) || (System.Object.Equals(Status, other.Status))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.approvedMembers)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(ApprovedMembers);
      if(__isset.status)
        hashcode = (hashcode * 397) + Status.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("ApproveSquareMembersResponse(");
    bool __first = true;
    if (ApprovedMembers != null && __isset.approvedMembers)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ApprovedMembers: ");
      sb.Append(ApprovedMembers);
    }
    if (Status != null && __isset.status)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Status: ");
      sb.Append(Status== null ? "<null>" : Status.ToString());
    }
    sb.Append(")");
    return sb.ToString();
  }
}
