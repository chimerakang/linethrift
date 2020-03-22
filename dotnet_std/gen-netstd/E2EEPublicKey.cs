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



public partial class E2EEPublicKey : TBase
{
  private int _version;
  private int _keyId;
  private byte[] _keyData;
  private long _createdTime;

  public int Version
  {
    get
    {
      return _version;
    }
    set
    {
      __isset.version = true;
      this._version = value;
    }
  }

  public int KeyId
  {
    get
    {
      return _keyId;
    }
    set
    {
      __isset.keyId = true;
      this._keyId = value;
    }
  }

  public byte[] KeyData
  {
    get
    {
      return _keyData;
    }
    set
    {
      __isset.keyData = true;
      this._keyData = value;
    }
  }

  public long CreatedTime
  {
    get
    {
      return _createdTime;
    }
    set
    {
      __isset.createdTime = true;
      this._createdTime = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool version;
    public bool keyId;
    public bool keyData;
    public bool createdTime;
  }

  public E2EEPublicKey()
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
              Version = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.I32)
            {
              KeyId = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.String)
            {
              KeyData = await iprot.ReadBinaryAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 5:
            if (field.Type == TType.I64)
            {
              CreatedTime = await iprot.ReadI64Async(cancellationToken);
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
      var struc = new TStruct("E2EEPublicKey");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.version)
      {
        field.Name = "version";
        field.Type = TType.I32;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(Version, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.keyId)
      {
        field.Name = "keyId";
        field.Type = TType.I32;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(KeyId, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (KeyData != null && __isset.keyData)
      {
        field.Name = "keyData";
        field.Type = TType.String;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteBinaryAsync(KeyData, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.createdTime)
      {
        field.Name = "createdTime";
        field.Type = TType.I64;
        field.ID = 5;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(CreatedTime, cancellationToken);
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
    var other = that as E2EEPublicKey;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.version == other.__isset.version) && ((!__isset.version) || (System.Object.Equals(Version, other.Version))))
      && ((__isset.keyId == other.__isset.keyId) && ((!__isset.keyId) || (System.Object.Equals(KeyId, other.KeyId))))
      && ((__isset.keyData == other.__isset.keyData) && ((!__isset.keyData) || (TCollections.Equals(KeyData, other.KeyData))))
      && ((__isset.createdTime == other.__isset.createdTime) && ((!__isset.createdTime) || (System.Object.Equals(CreatedTime, other.CreatedTime))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.version)
        hashcode = (hashcode * 397) + Version.GetHashCode();
      if(__isset.keyId)
        hashcode = (hashcode * 397) + KeyId.GetHashCode();
      if(__isset.keyData)
        hashcode = (hashcode * 397) + KeyData.GetHashCode();
      if(__isset.createdTime)
        hashcode = (hashcode * 397) + CreatedTime.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("E2EEPublicKey(");
    bool __first = true;
    if (__isset.version)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Version: ");
      Version.ToString(sb);
    }
    if (__isset.keyId)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("KeyId: ");
      KeyId.ToString(sb);
    }
    if (KeyData != null && __isset.keyData)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("KeyData: ");
      KeyData.ToString(sb);
    }
    if (__isset.createdTime)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("CreatedTime: ");
      CreatedTime.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
