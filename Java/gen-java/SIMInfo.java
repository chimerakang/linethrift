/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class SIMInfo implements org.apache.thrift.TBase<SIMInfo, SIMInfo._Fields>, java.io.Serializable, Cloneable, Comparable<SIMInfo> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("SIMInfo");

  private static final org.apache.thrift.protocol.TField PHONE_NUMBER_FIELD_DESC = new org.apache.thrift.protocol.TField("phoneNumber", org.apache.thrift.protocol.TType.STRING, (short)1);
  private static final org.apache.thrift.protocol.TField COUNTRY_CODE_FIELD_DESC = new org.apache.thrift.protocol.TField("countryCode", org.apache.thrift.protocol.TType.STRING, (short)2);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new SIMInfoStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new SIMInfoTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.lang.String phoneNumber; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String countryCode; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    PHONE_NUMBER((short)1, "phoneNumber"),
    COUNTRY_CODE((short)2, "countryCode");

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
        case 1: // PHONE_NUMBER
          return PHONE_NUMBER;
        case 2: // COUNTRY_CODE
          return COUNTRY_CODE;
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
    tmpMap.put(_Fields.PHONE_NUMBER, new org.apache.thrift.meta_data.FieldMetaData("phoneNumber", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.COUNTRY_CODE, new org.apache.thrift.meta_data.FieldMetaData("countryCode", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(SIMInfo.class, metaDataMap);
  }

  public SIMInfo() {
  }

  public SIMInfo(
    java.lang.String phoneNumber,
    java.lang.String countryCode)
  {
    this();
    this.phoneNumber = phoneNumber;
    this.countryCode = countryCode;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SIMInfo(SIMInfo other) {
    if (other.isSetPhoneNumber()) {
      this.phoneNumber = other.phoneNumber;
    }
    if (other.isSetCountryCode()) {
      this.countryCode = other.countryCode;
    }
  }

  public SIMInfo deepCopy() {
    return new SIMInfo(this);
  }

  @Override
  public void clear() {
    this.phoneNumber = null;
    this.countryCode = null;
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getPhoneNumber() {
    return this.phoneNumber;
  }

  public SIMInfo setPhoneNumber(@org.apache.thrift.annotation.Nullable java.lang.String phoneNumber) {
    this.phoneNumber = phoneNumber;
    return this;
  }

  public void unsetPhoneNumber() {
    this.phoneNumber = null;
  }

  /** Returns true if field phoneNumber is set (has been assigned a value) and false otherwise */
  public boolean isSetPhoneNumber() {
    return this.phoneNumber != null;
  }

  public void setPhoneNumberIsSet(boolean value) {
    if (!value) {
      this.phoneNumber = null;
    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getCountryCode() {
    return this.countryCode;
  }

  public SIMInfo setCountryCode(@org.apache.thrift.annotation.Nullable java.lang.String countryCode) {
    this.countryCode = countryCode;
    return this;
  }

  public void unsetCountryCode() {
    this.countryCode = null;
  }

  /** Returns true if field countryCode is set (has been assigned a value) and false otherwise */
  public boolean isSetCountryCode() {
    return this.countryCode != null;
  }

  public void setCountryCodeIsSet(boolean value) {
    if (!value) {
      this.countryCode = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case PHONE_NUMBER:
      if (value == null) {
        unsetPhoneNumber();
      } else {
        setPhoneNumber((java.lang.String)value);
      }
      break;

    case COUNTRY_CODE:
      if (value == null) {
        unsetCountryCode();
      } else {
        setCountryCode((java.lang.String)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case PHONE_NUMBER:
      return getPhoneNumber();

    case COUNTRY_CODE:
      return getCountryCode();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case PHONE_NUMBER:
      return isSetPhoneNumber();
    case COUNTRY_CODE:
      return isSetCountryCode();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof SIMInfo)
      return this.equals((SIMInfo)that);
    return false;
  }

  public boolean equals(SIMInfo that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_phoneNumber = true && this.isSetPhoneNumber();
    boolean that_present_phoneNumber = true && that.isSetPhoneNumber();
    if (this_present_phoneNumber || that_present_phoneNumber) {
      if (!(this_present_phoneNumber && that_present_phoneNumber))
        return false;
      if (!this.phoneNumber.equals(that.phoneNumber))
        return false;
    }

    boolean this_present_countryCode = true && this.isSetCountryCode();
    boolean that_present_countryCode = true && that.isSetCountryCode();
    if (this_present_countryCode || that_present_countryCode) {
      if (!(this_present_countryCode && that_present_countryCode))
        return false;
      if (!this.countryCode.equals(that.countryCode))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetPhoneNumber()) ? 131071 : 524287);
    if (isSetPhoneNumber())
      hashCode = hashCode * 8191 + phoneNumber.hashCode();

    hashCode = hashCode * 8191 + ((isSetCountryCode()) ? 131071 : 524287);
    if (isSetCountryCode())
      hashCode = hashCode * 8191 + countryCode.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(SIMInfo other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetPhoneNumber(), other.isSetPhoneNumber());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetPhoneNumber()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.phoneNumber, other.phoneNumber);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetCountryCode(), other.isSetCountryCode());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCountryCode()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.countryCode, other.countryCode);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("SIMInfo(");
    boolean first = true;

    sb.append("phoneNumber:");
    if (this.phoneNumber == null) {
      sb.append("null");
    } else {
      sb.append(this.phoneNumber);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("countryCode:");
    if (this.countryCode == null) {
      sb.append("null");
    } else {
      sb.append(this.countryCode);
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
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class SIMInfoStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SIMInfoStandardScheme getScheme() {
      return new SIMInfoStandardScheme();
    }
  }

  private static class SIMInfoStandardScheme extends org.apache.thrift.scheme.StandardScheme<SIMInfo> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, SIMInfo struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // PHONE_NUMBER
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.phoneNumber = iprot.readString();
              struct.setPhoneNumberIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // COUNTRY_CODE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.countryCode = iprot.readString();
              struct.setCountryCodeIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, SIMInfo struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.phoneNumber != null) {
        oprot.writeFieldBegin(PHONE_NUMBER_FIELD_DESC);
        oprot.writeString(struct.phoneNumber);
        oprot.writeFieldEnd();
      }
      if (struct.countryCode != null) {
        oprot.writeFieldBegin(COUNTRY_CODE_FIELD_DESC);
        oprot.writeString(struct.countryCode);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class SIMInfoTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SIMInfoTupleScheme getScheme() {
      return new SIMInfoTupleScheme();
    }
  }

  private static class SIMInfoTupleScheme extends org.apache.thrift.scheme.TupleScheme<SIMInfo> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, SIMInfo struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetPhoneNumber()) {
        optionals.set(0);
      }
      if (struct.isSetCountryCode()) {
        optionals.set(1);
      }
      oprot.writeBitSet(optionals, 2);
      if (struct.isSetPhoneNumber()) {
        oprot.writeString(struct.phoneNumber);
      }
      if (struct.isSetCountryCode()) {
        oprot.writeString(struct.countryCode);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, SIMInfo struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(2);
      if (incoming.get(0)) {
        struct.phoneNumber = iprot.readString();
        struct.setPhoneNumberIsSet(true);
      }
      if (incoming.get(1)) {
        struct.countryCode = iprot.readString();
        struct.setCountryCodeIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}
