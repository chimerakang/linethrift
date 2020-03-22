/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class EmailConfirmation implements org.apache.thrift.TBase<EmailConfirmation, EmailConfirmation._Fields>, java.io.Serializable, Cloneable, Comparable<EmailConfirmation> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("EmailConfirmation");

  private static final org.apache.thrift.protocol.TField USE_PASSWORD_SET_FIELD_DESC = new org.apache.thrift.protocol.TField("usePasswordSet", org.apache.thrift.protocol.TType.BOOL, (short)1);
  private static final org.apache.thrift.protocol.TField EMAIL_FIELD_DESC = new org.apache.thrift.protocol.TField("email", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField PASSWORD_FIELD_DESC = new org.apache.thrift.protocol.TField("password", org.apache.thrift.protocol.TType.STRING, (short)3);
  private static final org.apache.thrift.protocol.TField IGNORE_DUPLICATION_FIELD_DESC = new org.apache.thrift.protocol.TField("ignoreDuplication", org.apache.thrift.protocol.TType.BOOL, (short)4);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new EmailConfirmationStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new EmailConfirmationTupleSchemeFactory();

  public boolean usePasswordSet; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String email; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String password; // required
  public boolean ignoreDuplication; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    USE_PASSWORD_SET((short)1, "usePasswordSet"),
    EMAIL((short)2, "email"),
    PASSWORD((short)3, "password"),
    IGNORE_DUPLICATION((short)4, "ignoreDuplication");

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
        case 1: // USE_PASSWORD_SET
          return USE_PASSWORD_SET;
        case 2: // EMAIL
          return EMAIL;
        case 3: // PASSWORD
          return PASSWORD;
        case 4: // IGNORE_DUPLICATION
          return IGNORE_DUPLICATION;
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
  private static final int __USEPASSWORDSET_ISSET_ID = 0;
  private static final int __IGNOREDUPLICATION_ISSET_ID = 1;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.USE_PASSWORD_SET, new org.apache.thrift.meta_data.FieldMetaData("usePasswordSet", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.BOOL)));
    tmpMap.put(_Fields.EMAIL, new org.apache.thrift.meta_data.FieldMetaData("email", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.PASSWORD, new org.apache.thrift.meta_data.FieldMetaData("password", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.IGNORE_DUPLICATION, new org.apache.thrift.meta_data.FieldMetaData("ignoreDuplication", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.BOOL)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(EmailConfirmation.class, metaDataMap);
  }

  public EmailConfirmation() {
  }

  public EmailConfirmation(
    boolean usePasswordSet,
    java.lang.String email,
    java.lang.String password,
    boolean ignoreDuplication)
  {
    this();
    this.usePasswordSet = usePasswordSet;
    setUsePasswordSetIsSet(true);
    this.email = email;
    this.password = password;
    this.ignoreDuplication = ignoreDuplication;
    setIgnoreDuplicationIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public EmailConfirmation(EmailConfirmation other) {
    __isset_bitfield = other.__isset_bitfield;
    this.usePasswordSet = other.usePasswordSet;
    if (other.isSetEmail()) {
      this.email = other.email;
    }
    if (other.isSetPassword()) {
      this.password = other.password;
    }
    this.ignoreDuplication = other.ignoreDuplication;
  }

  public EmailConfirmation deepCopy() {
    return new EmailConfirmation(this);
  }

  @Override
  public void clear() {
    setUsePasswordSetIsSet(false);
    this.usePasswordSet = false;
    this.email = null;
    this.password = null;
    setIgnoreDuplicationIsSet(false);
    this.ignoreDuplication = false;
  }

  public boolean isUsePasswordSet() {
    return this.usePasswordSet;
  }

  public EmailConfirmation setUsePasswordSet(boolean usePasswordSet) {
    this.usePasswordSet = usePasswordSet;
    setUsePasswordSetIsSet(true);
    return this;
  }

  public void unsetUsePasswordSet() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __USEPASSWORDSET_ISSET_ID);
  }

  /** Returns true if field usePasswordSet is set (has been assigned a value) and false otherwise */
  public boolean isSetUsePasswordSet() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __USEPASSWORDSET_ISSET_ID);
  }

  public void setUsePasswordSetIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __USEPASSWORDSET_ISSET_ID, value);
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getEmail() {
    return this.email;
  }

  public EmailConfirmation setEmail(@org.apache.thrift.annotation.Nullable java.lang.String email) {
    this.email = email;
    return this;
  }

  public void unsetEmail() {
    this.email = null;
  }

  /** Returns true if field email is set (has been assigned a value) and false otherwise */
  public boolean isSetEmail() {
    return this.email != null;
  }

  public void setEmailIsSet(boolean value) {
    if (!value) {
      this.email = null;
    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getPassword() {
    return this.password;
  }

  public EmailConfirmation setPassword(@org.apache.thrift.annotation.Nullable java.lang.String password) {
    this.password = password;
    return this;
  }

  public void unsetPassword() {
    this.password = null;
  }

  /** Returns true if field password is set (has been assigned a value) and false otherwise */
  public boolean isSetPassword() {
    return this.password != null;
  }

  public void setPasswordIsSet(boolean value) {
    if (!value) {
      this.password = null;
    }
  }

  public boolean isIgnoreDuplication() {
    return this.ignoreDuplication;
  }

  public EmailConfirmation setIgnoreDuplication(boolean ignoreDuplication) {
    this.ignoreDuplication = ignoreDuplication;
    setIgnoreDuplicationIsSet(true);
    return this;
  }

  public void unsetIgnoreDuplication() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __IGNOREDUPLICATION_ISSET_ID);
  }

  /** Returns true if field ignoreDuplication is set (has been assigned a value) and false otherwise */
  public boolean isSetIgnoreDuplication() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __IGNOREDUPLICATION_ISSET_ID);
  }

  public void setIgnoreDuplicationIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __IGNOREDUPLICATION_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case USE_PASSWORD_SET:
      if (value == null) {
        unsetUsePasswordSet();
      } else {
        setUsePasswordSet((java.lang.Boolean)value);
      }
      break;

    case EMAIL:
      if (value == null) {
        unsetEmail();
      } else {
        setEmail((java.lang.String)value);
      }
      break;

    case PASSWORD:
      if (value == null) {
        unsetPassword();
      } else {
        setPassword((java.lang.String)value);
      }
      break;

    case IGNORE_DUPLICATION:
      if (value == null) {
        unsetIgnoreDuplication();
      } else {
        setIgnoreDuplication((java.lang.Boolean)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case USE_PASSWORD_SET:
      return isUsePasswordSet();

    case EMAIL:
      return getEmail();

    case PASSWORD:
      return getPassword();

    case IGNORE_DUPLICATION:
      return isIgnoreDuplication();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case USE_PASSWORD_SET:
      return isSetUsePasswordSet();
    case EMAIL:
      return isSetEmail();
    case PASSWORD:
      return isSetPassword();
    case IGNORE_DUPLICATION:
      return isSetIgnoreDuplication();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof EmailConfirmation)
      return this.equals((EmailConfirmation)that);
    return false;
  }

  public boolean equals(EmailConfirmation that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_usePasswordSet = true;
    boolean that_present_usePasswordSet = true;
    if (this_present_usePasswordSet || that_present_usePasswordSet) {
      if (!(this_present_usePasswordSet && that_present_usePasswordSet))
        return false;
      if (this.usePasswordSet != that.usePasswordSet)
        return false;
    }

    boolean this_present_email = true && this.isSetEmail();
    boolean that_present_email = true && that.isSetEmail();
    if (this_present_email || that_present_email) {
      if (!(this_present_email && that_present_email))
        return false;
      if (!this.email.equals(that.email))
        return false;
    }

    boolean this_present_password = true && this.isSetPassword();
    boolean that_present_password = true && that.isSetPassword();
    if (this_present_password || that_present_password) {
      if (!(this_present_password && that_present_password))
        return false;
      if (!this.password.equals(that.password))
        return false;
    }

    boolean this_present_ignoreDuplication = true;
    boolean that_present_ignoreDuplication = true;
    if (this_present_ignoreDuplication || that_present_ignoreDuplication) {
      if (!(this_present_ignoreDuplication && that_present_ignoreDuplication))
        return false;
      if (this.ignoreDuplication != that.ignoreDuplication)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((usePasswordSet) ? 131071 : 524287);

    hashCode = hashCode * 8191 + ((isSetEmail()) ? 131071 : 524287);
    if (isSetEmail())
      hashCode = hashCode * 8191 + email.hashCode();

    hashCode = hashCode * 8191 + ((isSetPassword()) ? 131071 : 524287);
    if (isSetPassword())
      hashCode = hashCode * 8191 + password.hashCode();

    hashCode = hashCode * 8191 + ((ignoreDuplication) ? 131071 : 524287);

    return hashCode;
  }

  @Override
  public int compareTo(EmailConfirmation other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetUsePasswordSet(), other.isSetUsePasswordSet());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUsePasswordSet()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.usePasswordSet, other.usePasswordSet);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetEmail(), other.isSetEmail());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetEmail()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.email, other.email);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetPassword(), other.isSetPassword());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetPassword()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.password, other.password);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetIgnoreDuplication(), other.isSetIgnoreDuplication());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetIgnoreDuplication()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.ignoreDuplication, other.ignoreDuplication);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("EmailConfirmation(");
    boolean first = true;

    sb.append("usePasswordSet:");
    sb.append(this.usePasswordSet);
    first = false;
    if (!first) sb.append(", ");
    sb.append("email:");
    if (this.email == null) {
      sb.append("null");
    } else {
      sb.append(this.email);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("password:");
    if (this.password == null) {
      sb.append("null");
    } else {
      sb.append(this.password);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("ignoreDuplication:");
    sb.append(this.ignoreDuplication);
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

  private static class EmailConfirmationStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public EmailConfirmationStandardScheme getScheme() {
      return new EmailConfirmationStandardScheme();
    }
  }

  private static class EmailConfirmationStandardScheme extends org.apache.thrift.scheme.StandardScheme<EmailConfirmation> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, EmailConfirmation struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // USE_PASSWORD_SET
            if (schemeField.type == org.apache.thrift.protocol.TType.BOOL) {
              struct.usePasswordSet = iprot.readBool();
              struct.setUsePasswordSetIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // EMAIL
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.email = iprot.readString();
              struct.setEmailIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // PASSWORD
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.password = iprot.readString();
              struct.setPasswordIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // IGNORE_DUPLICATION
            if (schemeField.type == org.apache.thrift.protocol.TType.BOOL) {
              struct.ignoreDuplication = iprot.readBool();
              struct.setIgnoreDuplicationIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, EmailConfirmation struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(USE_PASSWORD_SET_FIELD_DESC);
      oprot.writeBool(struct.usePasswordSet);
      oprot.writeFieldEnd();
      if (struct.email != null) {
        oprot.writeFieldBegin(EMAIL_FIELD_DESC);
        oprot.writeString(struct.email);
        oprot.writeFieldEnd();
      }
      if (struct.password != null) {
        oprot.writeFieldBegin(PASSWORD_FIELD_DESC);
        oprot.writeString(struct.password);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(IGNORE_DUPLICATION_FIELD_DESC);
      oprot.writeBool(struct.ignoreDuplication);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class EmailConfirmationTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public EmailConfirmationTupleScheme getScheme() {
      return new EmailConfirmationTupleScheme();
    }
  }

  private static class EmailConfirmationTupleScheme extends org.apache.thrift.scheme.TupleScheme<EmailConfirmation> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, EmailConfirmation struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetUsePasswordSet()) {
        optionals.set(0);
      }
      if (struct.isSetEmail()) {
        optionals.set(1);
      }
      if (struct.isSetPassword()) {
        optionals.set(2);
      }
      if (struct.isSetIgnoreDuplication()) {
        optionals.set(3);
      }
      oprot.writeBitSet(optionals, 4);
      if (struct.isSetUsePasswordSet()) {
        oprot.writeBool(struct.usePasswordSet);
      }
      if (struct.isSetEmail()) {
        oprot.writeString(struct.email);
      }
      if (struct.isSetPassword()) {
        oprot.writeString(struct.password);
      }
      if (struct.isSetIgnoreDuplication()) {
        oprot.writeBool(struct.ignoreDuplication);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, EmailConfirmation struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(4);
      if (incoming.get(0)) {
        struct.usePasswordSet = iprot.readBool();
        struct.setUsePasswordSetIsSet(true);
      }
      if (incoming.get(1)) {
        struct.email = iprot.readString();
        struct.setEmailIsSet(true);
      }
      if (incoming.get(2)) {
        struct.password = iprot.readString();
        struct.setPasswordIsSet(true);
      }
      if (incoming.get(3)) {
        struct.ignoreDuplication = iprot.readBool();
        struct.setIgnoreDuplicationIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}
