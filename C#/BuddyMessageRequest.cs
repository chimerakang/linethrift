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
public partial class BuddyMessageRequest : TBase
{
  private ContentType _contentType;
  private string _text;
  private Location _location;
  private byte[] _content;
  private Dictionary<string, string> _contentMetadata;

  /// <summary>
  /// 
  /// <seealso cref="ContentType"/>
  /// </summary>
  public ContentType ContentType
  {
    get
    {
      return _contentType;
    }
    set
    {
      __isset.contentType = true;
      this._contentType = value;
    }
  }

  public string Text
  {
    get
    {
      return _text;
    }
    set
    {
      __isset.text = true;
      this._text = value;
    }
  }

  public Location Location
  {
    get
    {
      return _location;
    }
    set
    {
      __isset.location = true;
      this._location = value;
    }
  }

  public byte[] Content
  {
    get
    {
      return _content;
    }
    set
    {
      __isset.content = true;
      this._content = value;
    }
  }

  public Dictionary<string, string> ContentMetadata
  {
    get
    {
      return _contentMetadata;
    }
    set
    {
      __isset.contentMetadata = true;
      this._contentMetadata = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool contentType;
    public bool text;
    public bool location;
    public bool content;
    public bool contentMetadata;
  }

  public BuddyMessageRequest() {
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
            if (field.Type == TType.I32) {
              ContentType = (ContentType)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.String) {
              Text = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.Struct) {
              Location = new Location();
              Location.Read(iprot);
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.String) {
              Content = iprot.ReadBinary();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 5:
            if (field.Type == TType.Map) {
              {
                ContentMetadata = new Dictionary<string, string>();
                TMap _map144 = iprot.ReadMapBegin();
                for( int _i145 = 0; _i145 < _map144.Count; ++_i145)
                {
                  string _key146;
                  string _val147;
                  _key146 = iprot.ReadString();
                  _val147 = iprot.ReadString();
                  ContentMetadata[_key146] = _val147;
                }
                iprot.ReadMapEnd();
              }
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
      TStruct struc = new TStruct("BuddyMessageRequest");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (__isset.contentType) {
        field.Name = "contentType";
        field.Type = TType.I32;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)ContentType);
        oprot.WriteFieldEnd();
      }
      if (Text != null && __isset.text) {
        field.Name = "text";
        field.Type = TType.String;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Text);
        oprot.WriteFieldEnd();
      }
      if (Location != null && __isset.location) {
        field.Name = "location";
        field.Type = TType.Struct;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        Location.Write(oprot);
        oprot.WriteFieldEnd();
      }
      if (Content != null && __isset.content) {
        field.Name = "content";
        field.Type = TType.String;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteBinary(Content);
        oprot.WriteFieldEnd();
      }
      if (ContentMetadata != null && __isset.contentMetadata) {
        field.Name = "contentMetadata";
        field.Type = TType.Map;
        field.ID = 5;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteMapBegin(new TMap(TType.String, TType.String, ContentMetadata.Count));
          foreach (string _iter148 in ContentMetadata.Keys)
          {
            oprot.WriteString(_iter148);
            oprot.WriteString(ContentMetadata[_iter148]);
          }
          oprot.WriteMapEnd();
        }
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
    StringBuilder __sb = new StringBuilder("BuddyMessageRequest(");
    bool __first = true;
    if (__isset.contentType) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("ContentType: ");
      __sb.Append(ContentType);
    }
    if (Text != null && __isset.text) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Text: ");
      __sb.Append(Text);
    }
    if (Location != null && __isset.location) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Location: ");
      __sb.Append(Location== null ? "<null>" : Location.ToString());
    }
    if (Content != null && __isset.content) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Content: ");
      __sb.Append(Content);
    }
    if (ContentMetadata != null && __isset.contentMetadata) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("ContentMetadata: ");
      __sb.Append(ContentMetadata);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
