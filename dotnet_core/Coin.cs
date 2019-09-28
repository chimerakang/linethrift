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

using Thrift.Protocols;
using Thrift.Protocols.Entities;
using Thrift.Protocols.Utilities;
using Thrift.Transports;
using Thrift.Transports.Client;
using Thrift.Transports.Server;



public partial class Coin : TBase
{
  private int _freeCoinBalance;
  private int _payedCoinBalance;
  private int _totalCoinBalance;
  private int _rewardCoinBalance;

  public int FreeCoinBalance
  {
    get
    {
      return _freeCoinBalance;
    }
    set
    {
      __isset.freeCoinBalance = true;
      this._freeCoinBalance = value;
    }
  }

  public int PayedCoinBalance
  {
    get
    {
      return _payedCoinBalance;
    }
    set
    {
      __isset.payedCoinBalance = true;
      this._payedCoinBalance = value;
    }
  }

  public int TotalCoinBalance
  {
    get
    {
      return _totalCoinBalance;
    }
    set
    {
      __isset.totalCoinBalance = true;
      this._totalCoinBalance = value;
    }
  }

  public int RewardCoinBalance
  {
    get
    {
      return _rewardCoinBalance;
    }
    set
    {
      __isset.rewardCoinBalance = true;
      this._rewardCoinBalance = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool freeCoinBalance;
    public bool payedCoinBalance;
    public bool totalCoinBalance;
    public bool rewardCoinBalance;
  }

  public Coin()
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
              FreeCoinBalance = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.I32)
            {
              PayedCoinBalance = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.I32)
            {
              TotalCoinBalance = await iprot.ReadI32Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.I32)
            {
              RewardCoinBalance = await iprot.ReadI32Async(cancellationToken);
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
      var struc = new TStruct("Coin");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.freeCoinBalance)
      {
        field.Name = "freeCoinBalance";
        field.Type = TType.I32;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(FreeCoinBalance, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.payedCoinBalance)
      {
        field.Name = "payedCoinBalance";
        field.Type = TType.I32;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(PayedCoinBalance, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.totalCoinBalance)
      {
        field.Name = "totalCoinBalance";
        field.Type = TType.I32;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(TotalCoinBalance, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.rewardCoinBalance)
      {
        field.Name = "rewardCoinBalance";
        field.Type = TType.I32;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(RewardCoinBalance, cancellationToken);
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

  public override string ToString()
  {
    var sb = new StringBuilder("Coin(");
    bool __first = true;
    if (__isset.freeCoinBalance)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("FreeCoinBalance: ");
      sb.Append(FreeCoinBalance);
    }
    if (__isset.payedCoinBalance)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("PayedCoinBalance: ");
      sb.Append(PayedCoinBalance);
    }
    if (__isset.totalCoinBalance)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("TotalCoinBalance: ");
      sb.Append(TotalCoinBalance);
    }
    if (__isset.rewardCoinBalance)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RewardCoinBalance: ");
      sb.Append(RewardCoinBalance);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
