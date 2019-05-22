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
public partial class ShortcutItem : TBase
{
  private string _id;
  private string _title;
  private string _descr;
  private string _iconPath;
  private string _url;
  private List<ShortcutButton> _buttons;
  private ShortcutButtonAction _action;

  public string Id
  {
    get
    {
      return _id;
    }
    set
    {
      __isset.id = true;
      this._id = value;
    }
  }

  public string Title
  {
    get
    {
      return _title;
    }
    set
    {
      __isset.title = true;
      this._title = value;
    }
  }

  public string Descr
  {
    get
    {
      return _descr;
    }
    set
    {
      __isset.descr = true;
      this._descr = value;
    }
  }

  public string IconPath
  {
    get
    {
      return _iconPath;
    }
    set
    {
      __isset.iconPath = true;
      this._iconPath = value;
    }
  }

  public string Url
  {
    get
    {
      return _url;
    }
    set
    {
      __isset.url = true;
      this._url = value;
    }
  }

  public List<ShortcutButton> Buttons
  {
    get
    {
      return _buttons;
    }
    set
    {
      __isset.buttons = true;
      this._buttons = value;
    }
  }

  public ShortcutButtonAction Action
  {
    get
    {
      return _action;
    }
    set
    {
      __isset.action = true;
      this._action = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool id;
    public bool title;
    public bool descr;
    public bool iconPath;
    public bool url;
    public bool buttons;
    public bool action;
  }

  public ShortcutItem() {
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
            if (field.Type == TType.String) {
              Id = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.String) {
              Title = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.String) {
              Descr = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.String) {
              IconPath = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 5:
            if (field.Type == TType.String) {
              Url = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 6:
            if (field.Type == TType.List) {
              {
                Buttons = new List<ShortcutButton>();
                TList _list55 = iprot.ReadListBegin();
                for( int _i56 = 0; _i56 < _list55.Count; ++_i56)
                {
                  ShortcutButton _elem57;
                  _elem57 = new ShortcutButton();
                  _elem57.Read(iprot);
                  Buttons.Add(_elem57);
                }
                iprot.ReadListEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 7:
            if (field.Type == TType.Struct) {
              Action = new ShortcutButtonAction();
              Action.Read(iprot);
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
      TStruct struc = new TStruct("ShortcutItem");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (Id != null && __isset.id) {
        field.Name = "id";
        field.Type = TType.String;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Id);
        oprot.WriteFieldEnd();
      }
      if (Title != null && __isset.title) {
        field.Name = "title";
        field.Type = TType.String;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Title);
        oprot.WriteFieldEnd();
      }
      if (Descr != null && __isset.descr) {
        field.Name = "descr";
        field.Type = TType.String;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Descr);
        oprot.WriteFieldEnd();
      }
      if (IconPath != null && __isset.iconPath) {
        field.Name = "iconPath";
        field.Type = TType.String;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(IconPath);
        oprot.WriteFieldEnd();
      }
      if (Url != null && __isset.url) {
        field.Name = "url";
        field.Type = TType.String;
        field.ID = 5;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Url);
        oprot.WriteFieldEnd();
      }
      if (Buttons != null && __isset.buttons) {
        field.Name = "buttons";
        field.Type = TType.List;
        field.ID = 6;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteListBegin(new TList(TType.Struct, Buttons.Count));
          foreach (ShortcutButton _iter58 in Buttons)
          {
            _iter58.Write(oprot);
          }
          oprot.WriteListEnd();
        }
        oprot.WriteFieldEnd();
      }
      if (Action != null && __isset.action) {
        field.Name = "action";
        field.Type = TType.Struct;
        field.ID = 7;
        oprot.WriteFieldBegin(field);
        Action.Write(oprot);
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
    StringBuilder __sb = new StringBuilder("ShortcutItem(");
    bool __first = true;
    if (Id != null && __isset.id) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Id: ");
      __sb.Append(Id);
    }
    if (Title != null && __isset.title) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Title: ");
      __sb.Append(Title);
    }
    if (Descr != null && __isset.descr) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Descr: ");
      __sb.Append(Descr);
    }
    if (IconPath != null && __isset.iconPath) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("IconPath: ");
      __sb.Append(IconPath);
    }
    if (Url != null && __isset.url) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Url: ");
      __sb.Append(Url);
    }
    if (Buttons != null && __isset.buttons) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Buttons: ");
      __sb.Append(Buttons);
    }
    if (Action != null && __isset.action) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Action: ");
      __sb.Append(Action== null ? "<null>" : Action.ToString());
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
