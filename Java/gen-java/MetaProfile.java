/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class MetaProfile implements org.apache.thrift.TBase<MetaProfile, MetaProfile._Fields>, java.io.Serializable, Cloneable, Comparable<MetaProfile> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("MetaProfile");

  private static final org.apache.thrift.protocol.TField CREATE_TIME_FIELD_DESC = new org.apache.thrift.protocol.TField("createTime", org.apache.thrift.protocol.TType.I64, (short)1);
  private static final org.apache.thrift.protocol.TField REGION_CODE_FIELD_DESC = new org.apache.thrift.protocol.TField("regionCode", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField IDENTITIES_FIELD_DESC = new org.apache.thrift.protocol.TField("identities", org.apache.thrift.protocol.TType.MAP, (short)3);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new MetaProfileStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new MetaProfileTupleSchemeFactory();

  public long createTime; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String regionCode; // required
  public @org.apache.thrift.annotation.Nullable java.util.Map<RegistrationType,java.lang.String> identities; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    CREATE_TIME((short)1, "createTime"),
    REGION_CODE((short)2, "regionCode"),
    IDENTITIES((short)3, "identities");

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
        case 1: // CREATE_TIME
          return CREATE_TIME;
        case 2: // REGION_CODE
          return REGION_CODE;
        case 3: // IDENTITIES
          return IDENTITIES;
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
  private static final int __CREATETIME_ISSET_ID = 0;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.CREATE_TIME, new org.apache.thrift.meta_data.FieldMetaData("createTime", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I64)));
    tmpMap.put(_Fields.REGION_CODE, new org.apache.thrift.meta_data.FieldMetaData("regionCode", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.IDENTITIES, new org.apache.thrift.meta_data.FieldMetaData("identities", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.MapMetaData(org.apache.thrift.protocol.TType.MAP, 
            new org.apache.thrift.meta_data.EnumMetaData(org.apache.thrift.protocol.TType.ENUM, RegistrationType.class), 
            new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING))));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(MetaProfile.class, metaDataMap);
  }

  public MetaProfile() {
  }

  public MetaProfile(
    long createTime,
    java.lang.String regionCode,
    java.util.Map<RegistrationType,java.lang.String> identities)
  {
    this();
    this.createTime = createTime;
    setCreateTimeIsSet(true);
    this.regionCode = regionCode;
    this.identities = identities;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public MetaProfile(MetaProfile other) {
    __isset_bitfield = other.__isset_bitfield;
    this.createTime = other.createTime;
    if (other.isSetRegionCode()) {
      this.regionCode = other.regionCode;
    }
    if (other.isSetIdentities()) {
      java.util.Map<RegistrationType,java.lang.String> __this__identities = new java.util.EnumMap<RegistrationType,java.lang.String>(RegistrationType.class);
      for (java.util.Map.Entry<RegistrationType, java.lang.String> other_element : other.identities.entrySet()) {

        RegistrationType other_element_key = other_element.getKey();
        java.lang.String other_element_value = other_element.getValue();

        RegistrationType __this__identities_copy_key = other_element_key;

        java.lang.String __this__identities_copy_value = other_element_value;

        __this__identities.put(__this__identities_copy_key, __this__identities_copy_value);
      }
      this.identities = __this__identities;
    }
  }

  public MetaProfile deepCopy() {
    return new MetaProfile(this);
  }

  @Override
  public void clear() {
    setCreateTimeIsSet(false);
    this.createTime = 0;
    this.regionCode = null;
    this.identities = null;
  }

  public long getCreateTime() {
    return this.createTime;
  }

  public MetaProfile setCreateTime(long createTime) {
    this.createTime = createTime;
    setCreateTimeIsSet(true);
    return this;
  }

  public void unsetCreateTime() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __CREATETIME_ISSET_ID);
  }

  /** Returns true if field createTime is set (has been assigned a value) and false otherwise */
  public boolean isSetCreateTime() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __CREATETIME_ISSET_ID);
  }

  public void setCreateTimeIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __CREATETIME_ISSET_ID, value);
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getRegionCode() {
    return this.regionCode;
  }

  public MetaProfile setRegionCode(@org.apache.thrift.annotation.Nullable java.lang.String regionCode) {
    this.regionCode = regionCode;
    return this;
  }

  public void unsetRegionCode() {
    this.regionCode = null;
  }

  /** Returns true if field regionCode is set (has been assigned a value) and false otherwise */
  public boolean isSetRegionCode() {
    return this.regionCode != null;
  }

  public void setRegionCodeIsSet(boolean value) {
    if (!value) {
      this.regionCode = null;
    }
  }

  public int getIdentitiesSize() {
    return (this.identities == null) ? 0 : this.identities.size();
  }

  public void putToIdentities(RegistrationType key, java.lang.String val) {
    if (this.identities == null) {
      this.identities = new java.util.EnumMap<RegistrationType,java.lang.String>(RegistrationType.class);
    }
    this.identities.put(key, val);
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.Map<RegistrationType,java.lang.String> getIdentities() {
    return this.identities;
  }

  public MetaProfile setIdentities(@org.apache.thrift.annotation.Nullable java.util.Map<RegistrationType,java.lang.String> identities) {
    this.identities = identities;
    return this;
  }

  public void unsetIdentities() {
    this.identities = null;
  }

  /** Returns true if field identities is set (has been assigned a value) and false otherwise */
  public boolean isSetIdentities() {
    return this.identities != null;
  }

  public void setIdentitiesIsSet(boolean value) {
    if (!value) {
      this.identities = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case CREATE_TIME:
      if (value == null) {
        unsetCreateTime();
      } else {
        setCreateTime((java.lang.Long)value);
      }
      break;

    case REGION_CODE:
      if (value == null) {
        unsetRegionCode();
      } else {
        setRegionCode((java.lang.String)value);
      }
      break;

    case IDENTITIES:
      if (value == null) {
        unsetIdentities();
      } else {
        setIdentities((java.util.Map<RegistrationType,java.lang.String>)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case CREATE_TIME:
      return getCreateTime();

    case REGION_CODE:
      return getRegionCode();

    case IDENTITIES:
      return getIdentities();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case CREATE_TIME:
      return isSetCreateTime();
    case REGION_CODE:
      return isSetRegionCode();
    case IDENTITIES:
      return isSetIdentities();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof MetaProfile)
      return this.equals((MetaProfile)that);
    return false;
  }

  public boolean equals(MetaProfile that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_createTime = true;
    boolean that_present_createTime = true;
    if (this_present_createTime || that_present_createTime) {
      if (!(this_present_createTime && that_present_createTime))
        return false;
      if (this.createTime != that.createTime)
        return false;
    }

    boolean this_present_regionCode = true && this.isSetRegionCode();
    boolean that_present_regionCode = true && that.isSetRegionCode();
    if (this_present_regionCode || that_present_regionCode) {
      if (!(this_present_regionCode && that_present_regionCode))
        return false;
      if (!this.regionCode.equals(that.regionCode))
        return false;
    }

    boolean this_present_identities = true && this.isSetIdentities();
    boolean that_present_identities = true && that.isSetIdentities();
    if (this_present_identities || that_present_identities) {
      if (!(this_present_identities && that_present_identities))
        return false;
      if (!this.identities.equals(that.identities))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + org.apache.thrift.TBaseHelper.hashCode(createTime);

    hashCode = hashCode * 8191 + ((isSetRegionCode()) ? 131071 : 524287);
    if (isSetRegionCode())
      hashCode = hashCode * 8191 + regionCode.hashCode();

    hashCode = hashCode * 8191 + ((isSetIdentities()) ? 131071 : 524287);
    if (isSetIdentities())
      hashCode = hashCode * 8191 + identities.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(MetaProfile other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetCreateTime(), other.isSetCreateTime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreateTime()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.createTime, other.createTime);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetRegionCode(), other.isSetRegionCode());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRegionCode()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.regionCode, other.regionCode);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetIdentities(), other.isSetIdentities());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetIdentities()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.identities, other.identities);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("MetaProfile(");
    boolean first = true;

    sb.append("createTime:");
    sb.append(this.createTime);
    first = false;
    if (!first) sb.append(", ");
    sb.append("regionCode:");
    if (this.regionCode == null) {
      sb.append("null");
    } else {
      sb.append(this.regionCode);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("identities:");
    if (this.identities == null) {
      sb.append("null");
    } else {
      sb.append(this.identities);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
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
      // it doesn't seem like you should have to do this, but java serialization is wacky, and doesn't call the default constructor.
      __isset_bitfield = 0;
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class MetaProfileStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public MetaProfileStandardScheme getScheme() {
      return new MetaProfileStandardScheme();
    }
  }

  private static class MetaProfileStandardScheme extends org.apache.thrift.scheme.StandardScheme<MetaProfile> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, MetaProfile struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // CREATE_TIME
            if (schemeField.type == org.apache.thrift.protocol.TType.I64) {
              struct.createTime = iprot.readI64();
              struct.setCreateTimeIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // REGION_CODE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.regionCode = iprot.readString();
              struct.setRegionCodeIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // IDENTITIES
            if (schemeField.type == org.apache.thrift.protocol.TType.MAP) {
              {
                org.apache.thrift.protocol.TMap _map348 = iprot.readMapBegin();
                struct.identities = new java.util.EnumMap<RegistrationType,java.lang.String>(RegistrationType.class);
                @org.apache.thrift.annotation.Nullable RegistrationType _key349;
                @org.apache.thrift.annotation.Nullable java.lang.String _val350;
                for (int _i351 = 0; _i351 < _map348.size; ++_i351)
                {
                  _key349 = RegistrationType.findByValue(iprot.readI32());
                  _val350 = iprot.readString();
                  if (_key349 != null)
                  {
                    struct.identities.put(_key349, _val350);
                  }
                }
                iprot.readMapEnd();
              }
              struct.setIdentitiesIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, MetaProfile struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(CREATE_TIME_FIELD_DESC);
      oprot.writeI64(struct.createTime);
      oprot.writeFieldEnd();
      if (struct.regionCode != null) {
        oprot.writeFieldBegin(REGION_CODE_FIELD_DESC);
        oprot.writeString(struct.regionCode);
        oprot.writeFieldEnd();
      }
      if (struct.identities != null) {
        oprot.writeFieldBegin(IDENTITIES_FIELD_DESC);
        {
          oprot.writeMapBegin(new org.apache.thrift.protocol.TMap(org.apache.thrift.protocol.TType.I32, org.apache.thrift.protocol.TType.STRING, struct.identities.size()));
          for (java.util.Map.Entry<RegistrationType, java.lang.String> _iter352 : struct.identities.entrySet())
          {
            oprot.writeI32(_iter352.getKey().getValue());
            oprot.writeString(_iter352.getValue());
          }
          oprot.writeMapEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class MetaProfileTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public MetaProfileTupleScheme getScheme() {
      return new MetaProfileTupleScheme();
    }
  }

  private static class MetaProfileTupleScheme extends org.apache.thrift.scheme.TupleScheme<MetaProfile> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, MetaProfile struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetCreateTime()) {
        optionals.set(0);
      }
      if (struct.isSetRegionCode()) {
        optionals.set(1);
      }
      if (struct.isSetIdentities()) {
        optionals.set(2);
      }
      oprot.writeBitSet(optionals, 3);
      if (struct.isSetCreateTime()) {
        oprot.writeI64(struct.createTime);
      }
      if (struct.isSetRegionCode()) {
        oprot.writeString(struct.regionCode);
      }
      if (struct.isSetIdentities()) {
        {
          oprot.writeI32(struct.identities.size());
          for (java.util.Map.Entry<RegistrationType, java.lang.String> _iter353 : struct.identities.entrySet())
          {
            oprot.writeI32(_iter353.getKey().getValue());
            oprot.writeString(_iter353.getValue());
          }
        }
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, MetaProfile struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(3);
      if (incoming.get(0)) {
        struct.createTime = iprot.readI64();
        struct.setCreateTimeIsSet(true);
      }
      if (incoming.get(1)) {
        struct.regionCode = iprot.readString();
        struct.setRegionCodeIsSet(true);
      }
      if (incoming.get(2)) {
        {
          org.apache.thrift.protocol.TMap _map354 = new org.apache.thrift.protocol.TMap(org.apache.thrift.protocol.TType.I32, org.apache.thrift.protocol.TType.STRING, iprot.readI32());
          struct.identities = new java.util.EnumMap<RegistrationType,java.lang.String>(RegistrationType.class);
          @org.apache.thrift.annotation.Nullable RegistrationType _key355;
          @org.apache.thrift.annotation.Nullable java.lang.String _val356;
          for (int _i357 = 0; _i357 < _map354.size; ++_i357)
          {
            _key355 = RegistrationType.findByValue(iprot.readI32());
            _val356 = iprot.readString();
            if (_key355 != null)
            {
              struct.identities.put(_key355, _val356);
            }
          }
        }
        struct.setIdentitiesIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}
