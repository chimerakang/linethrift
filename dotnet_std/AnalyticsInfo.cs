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



public partial class AnalyticsInfo : TBase
{
  private double _gaSamplingRate;
  private string _tmid;

  public double GaSamplingRate
  {
    get
    {
      return _gaSamplingRate;
    }
    set
    {
      __isset.gaSamplingRate = true;
      this._gaSamplingRate = value;
    }
  }

  public string Tmid
  {
    get
    {
      return _tmid;
    }
    set
    {
      __isset.tmid = true;
      this._tmid = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool gaSamplingRate;
    public bool tmid;
  }

  public AnalyticsInfo()
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
            if (field.Type == TType.Double)
            {
              GaSamplingRate = await iprot.ReadDoubleAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              Tmid = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("AnalyticsInfo");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.gaSamplingRate)
      {
        field.Name = "gaSamplingRate";
        field.Type = TType.Double;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteDoubleAsync(GaSamplingRate, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Tmid != null && __isset.tmid)
      {
        field.Name = "tmid";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Tmid, cancellationToken);
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
    var other = that as AnalyticsInfo;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.gaSamplingRate == other.__isset.gaSamplingRate) && ((!__isset.gaSamplingRate) || (System.Object.Equals(GaSamplingRate, other.GaSamplingRate))))
      && ((__isset.tmid == other.__isset.tmid) && ((!__isset.tmid) || (System.Object.Equals(Tmid, other.Tmid))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.gaSamplingRate)
        hashcode = (hashcode * 397) + GaSamplingRate.GetHashCode();
      if(__isset.tmid)
        hashcode = (hashcode * 397) + Tmid.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("AnalyticsInfo(");
    bool __first = true;
    if (__isset.gaSamplingRate)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("GaSamplingRate: ");
      GaSamplingRate.ToString(sb);
    }
    if (Tmid != null && __isset.tmid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Tmid: ");
      Tmid.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

