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



public partial class SuggestItemDictionaryRevision : TBase
{
  private long _revision;
  private string _scheme;

  public long Revision
  {
    get
    {
      return _revision;
    }
    set
    {
      __isset.revision = true;
      this._revision = value;
    }
  }

  public string Scheme
  {
    get
    {
      return _scheme;
    }
    set
    {
      __isset.scheme = true;
      this._scheme = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool revision;
    public bool scheme;
  }

  public SuggestItemDictionaryRevision()
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
              Revision = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              Scheme = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("SuggestItemDictionaryRevision");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.revision)
      {
        field.Name = "revision";
        field.Type = TType.I64;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(Revision, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Scheme != null && __isset.scheme)
      {
        field.Name = "scheme";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Scheme, cancellationToken);
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
    var other = that as SuggestItemDictionaryRevision;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.revision == other.__isset.revision) && ((!__isset.revision) || (System.Object.Equals(Revision, other.Revision))))
      && ((__isset.scheme == other.__isset.scheme) && ((!__isset.scheme) || (System.Object.Equals(Scheme, other.Scheme))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.revision)
        hashcode = (hashcode * 397) + Revision.GetHashCode();
      if(__isset.scheme)
        hashcode = (hashcode * 397) + Scheme.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("SuggestItemDictionaryRevision(");
    bool __first = true;
    if (__isset.revision)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Revision: ");
      Revision.ToString(sb);
    }
    if (Scheme != null && __isset.scheme)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Scheme: ");
      Scheme.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
