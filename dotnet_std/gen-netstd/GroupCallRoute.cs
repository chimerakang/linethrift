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



public partial class GroupCallRoute : TBase
{
  private string _token;
  private CallHost _cscf;
  private CallHost _mix;

  public string Token
  {
    get
    {
      return _token;
    }
    set
    {
      __isset.token = true;
      this._token = value;
    }
  }

  public CallHost Cscf
  {
    get
    {
      return _cscf;
    }
    set
    {
      __isset.cscf = true;
      this._cscf = value;
    }
  }

  public CallHost Mix
  {
    get
    {
      return _mix;
    }
    set
    {
      __isset.mix = true;
      this._mix = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool token;
    public bool cscf;
    public bool mix;
  }

  public GroupCallRoute()
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
              Token = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.Struct)
            {
              Cscf = new CallHost();
              await Cscf.ReadAsync(iprot, cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.Struct)
            {
              Mix = new CallHost();
              await Mix.ReadAsync(iprot, cancellationToken);
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
      var struc = new TStruct("GroupCallRoute");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Token != null && __isset.token)
      {
        field.Name = "token";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Token, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Cscf != null && __isset.cscf)
      {
        field.Name = "cscf";
        field.Type = TType.Struct;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Cscf.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Mix != null && __isset.mix)
      {
        field.Name = "mix";
        field.Type = TType.Struct;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Mix.WriteAsync(oprot, cancellationToken);
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
    var other = that as GroupCallRoute;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.token == other.__isset.token) && ((!__isset.token) || (System.Object.Equals(Token, other.Token))))
      && ((__isset.cscf == other.__isset.cscf) && ((!__isset.cscf) || (System.Object.Equals(Cscf, other.Cscf))))
      && ((__isset.mix == other.__isset.mix) && ((!__isset.mix) || (System.Object.Equals(Mix, other.Mix))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.token)
        hashcode = (hashcode * 397) + Token.GetHashCode();
      if(__isset.cscf)
        hashcode = (hashcode * 397) + Cscf.GetHashCode();
      if(__isset.mix)
        hashcode = (hashcode * 397) + Mix.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("GroupCallRoute(");
    bool __first = true;
    if (Token != null && __isset.token)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Token: ");
      Token.ToString(sb);
    }
    if (Cscf != null && __isset.cscf)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Cscf: ");
      Cscf.ToString(sb);
    }
    if (Mix != null && __isset.mix)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Mix: ");
      Mix.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
