/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Thrift;
using Thrift.Collections;
using System.Runtime.Serialization;
using Thrift.Protocol;
using Thrift.Transport;


#if !SILVERLIGHT
[Serializable]
#endif
public partial class E2EENegotiationResult : TBase
{
  private THashSet<ContentType> _allowedTypes;
  private E2EEPublicKey _publicKey;

  public THashSet<ContentType> AllowedTypes
  {
    get
    {
      return _allowedTypes;
    }
    set
    {
      __isset.allowedTypes = true;
      this._allowedTypes = value;
    }
  }

  public E2EEPublicKey PublicKey
  {
    get
    {
      return _publicKey;
    }
    set
    {
      __isset.publicKey = true;
      this._publicKey = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool allowedTypes;
    public bool publicKey;
  }

  public E2EENegotiationResult() {
  }

  public void Read (TProtocol iprot)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      iprot.ReadStructBegin();
      while (true)
      {
        field = iprot.ReadFieldBegin();
        if (field.Type == TType.Stop) { 
          break;
        }
        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.Set) {
              {
                AllowedTypes = new THashSet<ContentType>();
                TSet _set79 = iprot.ReadSetBegin();
                for( int _i80 = 0; _i80 < _set79.Count; ++_i80)
                {
                  ContentType _elem81;
                  _elem81 = (ContentType)iprot.ReadI32();
                  AllowedTypes.Add(_elem81);
                }
                iprot.ReadSetEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.Struct) {
              PublicKey = new E2EEPublicKey();
              PublicKey.Read(iprot);
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          default: 
            TProtocolUtil.Skip(iprot, field.Type);
            break;
        }
        iprot.ReadFieldEnd();
      }
      iprot.ReadStructEnd();
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public void Write(TProtocol oprot) {
    oprot.IncrementRecursionDepth();
    try
    {
      TStruct struc = new TStruct("E2EENegotiationResult");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (AllowedTypes != null && __isset.allowedTypes) {
        field.Name = "allowedTypes";
        field.Type = TType.Set;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteSetBegin(new TSet(TType.I32, AllowedTypes.Count));
          foreach (ContentType _iter82 in AllowedTypes)
          {
            oprot.WriteI32((int)_iter82);
          }
          oprot.WriteSetEnd();
        }
        oprot.WriteFieldEnd();
      }
      if (PublicKey != null && __isset.publicKey) {
        field.Name = "publicKey";
        field.Type = TType.Struct;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        PublicKey.Write(oprot);
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override string ToString() {
    StringBuilder __sb = new StringBuilder("E2EENegotiationResult(");
    bool __first = true;
    if (AllowedTypes != null && __isset.allowedTypes) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("AllowedTypes: ");
      __sb.Append(AllowedTypes);
    }
    if (PublicKey != null && __isset.publicKey) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("PublicKey: ");
      __sb.Append(PublicKey== null ? "<null>" : PublicKey.ToString());
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
