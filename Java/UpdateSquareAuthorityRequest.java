/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class UpdateSquareAuthorityRequest implements org.apache.thrift.TBase<UpdateSquareAuthorityRequest, UpdateSquareAuthorityRequest._Fields>, java.io.Serializable, Cloneable, Comparable<UpdateSquareAuthorityRequest> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("UpdateSquareAuthorityRequest");

  private static final org.apache.thrift.protocol.TField UPDATE_ATTRIBUTES_FIELD_DESC = new org.apache.thrift.protocol.TField("updateAttributes", org.apache.thrift.protocol.TType.SET, (short)2);
  private static final org.apache.thrift.protocol.TField AUTHORITY_FIELD_DESC = new org.apache.thrift.protocol.TField("authority", org.apache.thrift.protocol.TType.STRUCT, (short)3);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new UpdateSquareAuthorityRequestStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new UpdateSquareAuthorityRequestTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.util.Set<SquareAuthorityAttribute> updateAttributes; // required
  public @org.apache.thrift.annotation.Nullable SquareAuthority authority; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    UPDATE_ATTRIBUTES((short)2, "updateAttributes"),
    AUTHORITY((short)3, "authority");

    private static final java.util.Map<java.lang.String, _Fields> byName = new java.util.HashMap<java.lang.String, _Fields>();

    static {
      for (_Fields field : java.util.EnumSet.allOf(_Fields.class)) {
        byName.put(field.getFieldName(), field);
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, or null if its not found.
     */
    @org.apache.thrift.annotation.Nullable
    public static _Fields findByThriftId(int fieldId) {
      switch(fieldId) {
        case 2: // UPDATE_ATTRIBUTES
          return UPDATE_ATTRIBUTES;
        case 3: // AUTHORITY
          return AUTHORITY;
        default:
          return null;
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, throwing an exception
     * if it is not found.
     */
    public static _Fields findByThriftIdOrThrow(int fieldId) {
      _Fields fields = findByThriftId(fieldId);
      if (fields == null) throw new java.lang.IllegalArgumentException("Field " + fieldId + " doesn't exist!");
      return fields;
    }

    /**
     * Find the _Fields constant that matches name, or null if its not found.
     */
    @org.apache.thrift.annotation.Nullable
    public static _Fields findByName(java.lang.String name) {
      return byName.get(name);
    }

    private final short _thriftId;
    private final java.lang.String _fieldName;

    _Fields(short thriftId, java.lang.String fieldName) {
      _thriftId = thriftId;
      _fieldName = fieldName;
    }

    public short getThriftFieldId() {
      return _thriftId;
    }

    public java.lang.String getFieldName() {
      return _fieldName;
    }
  }

  // isset id assignments
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.UPDATE_ATTRIBUTES, new org.apache.thrift.meta_data.FieldMetaData("updateAttributes", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.SetMetaData(org.apache.thrift.protocol.TType.SET, 
            new org.apache.thrift.meta_data.EnumMetaData(org.apache.thrift.protocol.TType.ENUM, SquareAuthorityAttribute.class))));
    tmpMap.put(_Fields.AUTHORITY, new org.apache.thrift.meta_data.FieldMetaData("authority", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, SquareAuthority.class)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(UpdateSquareAuthorityRequest.class, metaDataMap);
  }

  public UpdateSquareAuthorityRequest() {
  }

  public UpdateSquareAuthorityRequest(
    java.util.Set<SquareAuthorityAttribute> updateAttributes,
    SquareAuthority authority)
  {
    this();
    this.updateAttributes = updateAttributes;
    this.authority = authority;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public UpdateSquareAuthorityRequest(UpdateSquareAuthorityRequest other) {
    if (other.isSetUpdateAttributes()) {
      java.util.Set<SquareAuthorityAttribute> __this__updateAttributes = java.util.EnumSet.noneOf(SquareAuthorityAttribute.class);
      for (SquareAuthorityAttribute other_element : other.updateAttributes) {
        __this__updateAttributes.add(other_element);
      }
      this.updateAttributes = __this__updateAttributes;
    }
    if (other.isSetAuthority()) {
      this.authority = new SquareAuthority(other.authority);
    }
  }

  public UpdateSquareAuthorityRequest deepCopy() {
    return new UpdateSquareAuthorityRequest(this);
  }

  @Override
  public void clear() {
    this.updateAttributes = null;
    this.authority = null;
  }

  public int getUpdateAttributesSize() {
    return (this.updateAttributes == null) ? 0 : this.updateAttributes.size();
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.Iterator<SquareAuthorityAttribute> getUpdateAttributesIterator() {
    return (this.updateAttributes == null) ? null : this.updateAttributes.iterator();
  }

  public void addToUpdateAttributes(SquareAuthorityAttribute elem) {
    if (this.updateAttributes == null) {
      this.updateAttributes = java.util.EnumSet.noneOf(SquareAuthorityAttribute.class);
    }
    this.updateAttributes.add(elem);
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.Set<SquareAuthorityAttribute> getUpdateAttributes() {
    return this.updateAttributes;
  }

  public UpdateSquareAuthorityRequest setUpdateAttributes(@org.apache.thrift.annotation.Nullable java.util.Set<SquareAuthorityAttribute> updateAttributes) {
    this.updateAttributes = updateAttributes;
    return this;
  }

  public void unsetUpdateAttributes() {
    this.updateAttributes = null;
  }

  /** Returns true if field updateAttributes is set (has been assigned a value) and false otherwise */
  public boolean isSetUpdateAttributes() {
    return this.updateAttributes != null;
  }

  public void setUpdateAttributesIsSet(boolean value) {
    if (!value) {
      this.updateAttributes = null;
    }
  }

  @org.apache.thrift.annotation.Nullable
  public SquareAuthority getAuthority() {
    return this.authority;
  }

  public UpdateSquareAuthorityRequest setAuthority(@org.apache.thrift.annotation.Nullable SquareAuthority authority) {
    this.authority = authority;
    return this;
  }

  public void unsetAuthority() {
    this.authority = null;
  }

  /** Returns true if field authority is set (has been assigned a value) and false otherwise */
  public boolean isSetAuthority() {
    return this.authority != null;
  }

  public void setAuthorityIsSet(boolean value) {
    if (!value) {
      this.authority = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case UPDATE_ATTRIBUTES:
      if (value == null) {
        unsetUpdateAttributes();
      } else {
        setUpdateAttributes((java.util.Set<SquareAuthorityAttribute>)value);
      }
      break;

    case AUTHORITY:
      if (value == null) {
        unsetAuthority();
      } else {
        setAuthority((SquareAuthority)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case UPDATE_ATTRIBUTES:
      return getUpdateAttributes();

    case AUTHORITY:
      return getAuthority();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case UPDATE_ATTRIBUTES:
      return isSetUpdateAttributes();
    case AUTHORITY:
      return isSetAuthority();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof UpdateSquareAuthorityRequest)
      return this.equals((UpdateSquareAuthorityRequest)that);
    return false;
  }

  public boolean equals(UpdateSquareAuthorityRequest that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_updateAttributes = true && this.isSetUpdateAttributes();
    boolean that_present_updateAttributes = true && that.isSetUpdateAttributes();
    if (this_present_updateAttributes || that_present_updateAttributes) {
      if (!(this_present_updateAttributes && that_present_updateAttributes))
        return false;
      if (!this.updateAttributes.equals(that.updateAttributes))
        return false;
    }

    boolean this_present_authority = true && this.isSetAuthority();
    boolean that_present_authority = true && that.isSetAuthority();
    if (this_present_authority || that_present_authority) {
      if (!(this_present_authority && that_present_authority))
        return false;
      if (!this.authority.equals(that.authority))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetUpdateAttributes()) ? 131071 : 524287);
    if (isSetUpdateAttributes())
      hashCode = hashCode * 8191 + updateAttributes.hashCode();

    hashCode = hashCode * 8191 + ((isSetAuthority()) ? 131071 : 524287);
    if (isSetAuthority())
      hashCode = hashCode * 8191 + authority.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(UpdateSquareAuthorityRequest other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetUpdateAttributes(), other.isSetUpdateAttributes());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdateAttributes()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.updateAttributes, other.updateAttributes);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetAuthority(), other.isSetAuthority());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetAuthority()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.authority, other.authority);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  @org.apache.thrift.annotation.Nullable
  public _Fields fieldForId(int fieldId) {
    return _Fields.findByThriftId(fieldId);
  }

  public void read(org.apache.thrift.protocol.TProtocol iprot) throws org.apache.thrift.TException {
    scheme(iprot).read(iprot, this);
  }

  public void write(org.apache.thrift.protocol.TProtocol oprot) throws org.apache.thrift.TException {
    scheme(oprot).write(oprot, this);
  }

  @Override
  public java.lang.String toString() {
    java.lang.StringBuilder sb = new java.lang.StringBuilder("UpdateSquareAuthorityRequest(");
    boolean first = true;

    sb.append("updateAttributes:");
    if (this.updateAttributes == null) {
      sb.append("null");
    } else {
      sb.append(this.updateAttributes);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("authority:");
    if (this.authority == null) {
      sb.append("null");
    } else {
      sb.append(this.authority);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
    if (authority != null) {
      authority.validate();
    }
  }

  private void writeObject(java.io.ObjectOutputStream out) throws java.io.IOException {
    try {
      write(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(out)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private void readObject(java.io.ObjectInputStream in) throws java.io.IOException, java.lang.ClassNotFoundException {
    try {
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class UpdateSquareAuthorityRequestStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public UpdateSquareAuthorityRequestStandardScheme getScheme() {
      return new UpdateSquareAuthorityRequestStandardScheme();
    }
  }

  private static class UpdateSquareAuthorityRequestStandardScheme extends org.apache.thrift.scheme.StandardScheme<UpdateSquareAuthorityRequest> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, UpdateSquareAuthorityRequest struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 2: // UPDATE_ATTRIBUTES
            if (schemeField.type == org.apache.thrift.protocol.TType.SET) {
              {
                org.apache.thrift.protocol.TSet _set966 = iprot.readSetBegin();
                struct.updateAttributes = java.util.EnumSet.noneOf(SquareAuthorityAttribute.class);
                @org.apache.thrift.annotation.Nullable SquareAuthorityAttribute _elem967;
                for (int _i968 = 0; _i968 < _set966.size; ++_i968)
                {
                  _elem967 = SquareAuthorityAttribute.findByValue(iprot.readI32());
                  if (_elem967 != null)
                  {
                    struct.updateAttributes.add(_elem967);
                  }
                }
                iprot.readSetEnd();
              }
              struct.setUpdateAttributesIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // AUTHORITY
            if (schemeField.type == org.apache.thrift.protocol.TType.STRUCT) {
              struct.authority = new SquareAuthority();
              struct.authority.read(iprot);
              struct.setAuthorityIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          default:
            org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      // check for required fields of primitive type, which can't be checked in the validate method
      struct.validate();
    }

    public void write(org.apache.thrift.protocol.TProtocol oprot, UpdateSquareAuthorityRequest struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.updateAttributes != null) {
        oprot.writeFieldBegin(UPDATE_ATTRIBUTES_FIELD_DESC);
        {
          oprot.writeSetBegin(new org.apache.thrift.protocol.TSet(org.apache.thrift.protocol.TType.I32, struct.updateAttributes.size()));
          for (SquareAuthorityAttribute _iter969 : struct.updateAttributes)
          {
            oprot.writeI32(_iter969.getValue());
          }
          oprot.writeSetEnd();
        }
        oprot.writeFieldEnd();
      }
      if (struct.authority != null) {
        oprot.writeFieldBegin(AUTHORITY_FIELD_DESC);
        struct.authority.write(oprot);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class UpdateSquareAuthorityRequestTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public UpdateSquareAuthorityRequestTupleScheme getScheme() {
      return new UpdateSquareAuthorityRequestTupleScheme();
    }
  }

  private static class UpdateSquareAuthorityRequestTupleScheme extends org.apache.thrift.scheme.TupleScheme<UpdateSquareAuthorityRequest> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, UpdateSquareAuthorityRequest struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetUpdateAttributes()) {
        optionals.set(0);
      }
      if (struct.isSetAuthority()) {
        optionals.set(1);
      }
      oprot.writeBitSet(optionals, 2);
      if (struct.isSetUpdateAttributes()) {
        {
          oprot.writeI32(struct.updateAttributes.size());
          for (SquareAuthorityAttribute _iter970 : struct.updateAttributes)
          {
            oprot.writeI32(_iter970.getValue());
          }
        }
      }
      if (struct.isSetAuthority()) {
        struct.authority.write(oprot);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, UpdateSquareAuthorityRequest struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(2);
      if (incoming.get(0)) {
        {
          org.apache.thrift.protocol.TSet _set971 = new org.apache.thrift.protocol.TSet(org.apache.thrift.protocol.TType.I32, iprot.readI32());
          struct.updateAttributes = java.util.EnumSet.noneOf(SquareAuthorityAttribute.class);
          @org.apache.thrift.annotation.Nullable SquareAuthorityAttribute _elem972;
          for (int _i973 = 0; _i973 < _set971.size; ++_i973)
          {
            _elem972 = SquareAuthorityAttribute.findByValue(iprot.readI32());
            if (_elem972 != null)
            {
              struct.updateAttributes.add(_elem972);
            }
          }
        }
        struct.setUpdateAttributesIsSet(true);
      }
      if (incoming.get(1)) {
        struct.authority = new SquareAuthority();
        struct.authority.read(iprot);
        struct.setAuthorityIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

