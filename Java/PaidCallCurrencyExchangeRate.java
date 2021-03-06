/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class PaidCallCurrencyExchangeRate implements org.apache.thrift.TBase<PaidCallCurrencyExchangeRate, PaidCallCurrencyExchangeRate._Fields>, java.io.Serializable, Cloneable, Comparable<PaidCallCurrencyExchangeRate> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("PaidCallCurrencyExchangeRate");

  private static final org.apache.thrift.protocol.TField CURRENCY_CODE_FIELD_DESC = new org.apache.thrift.protocol.TField("currencyCode", org.apache.thrift.protocol.TType.STRING, (short)1);
  private static final org.apache.thrift.protocol.TField CURRENCY_NAME_FIELD_DESC = new org.apache.thrift.protocol.TField("currencyName", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField CURRENCY_SIGN_FIELD_DESC = new org.apache.thrift.protocol.TField("currencySign", org.apache.thrift.protocol.TType.STRING, (short)3);
  private static final org.apache.thrift.protocol.TField PREFERRED_FIELD_DESC = new org.apache.thrift.protocol.TField("preferred", org.apache.thrift.protocol.TType.BOOL, (short)4);
  private static final org.apache.thrift.protocol.TField COIN_RATE_FIELD_DESC = new org.apache.thrift.protocol.TField("coinRate", org.apache.thrift.protocol.TType.STRING, (short)5);
  private static final org.apache.thrift.protocol.TField CREDIT_RATE_FIELD_DESC = new org.apache.thrift.protocol.TField("creditRate", org.apache.thrift.protocol.TType.STRING, (short)6);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new PaidCallCurrencyExchangeRateStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new PaidCallCurrencyExchangeRateTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.lang.String currencyCode; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String currencyName; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String currencySign; // required
  public boolean preferred; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String coinRate; // required
  public @org.apache.thrift.annotation.Nullable java.lang.String creditRate; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    CURRENCY_CODE((short)1, "currencyCode"),
    CURRENCY_NAME((short)2, "currencyName"),
    CURRENCY_SIGN((short)3, "currencySign"),
    PREFERRED((short)4, "preferred"),
    COIN_RATE((short)5, "coinRate"),
    CREDIT_RATE((short)6, "creditRate");

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
        case 1: // CURRENCY_CODE
          return CURRENCY_CODE;
        case 2: // CURRENCY_NAME
          return CURRENCY_NAME;
        case 3: // CURRENCY_SIGN
          return CURRENCY_SIGN;
        case 4: // PREFERRED
          return PREFERRED;
        case 5: // COIN_RATE
          return COIN_RATE;
        case 6: // CREDIT_RATE
          return CREDIT_RATE;
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
  private static final int __PREFERRED_ISSET_ID = 0;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.CURRENCY_CODE, new org.apache.thrift.meta_data.FieldMetaData("currencyCode", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.CURRENCY_NAME, new org.apache.thrift.meta_data.FieldMetaData("currencyName", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.CURRENCY_SIGN, new org.apache.thrift.meta_data.FieldMetaData("currencySign", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.PREFERRED, new org.apache.thrift.meta_data.FieldMetaData("preferred", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.BOOL)));
    tmpMap.put(_Fields.COIN_RATE, new org.apache.thrift.meta_data.FieldMetaData("coinRate", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.CREDIT_RATE, new org.apache.thrift.meta_data.FieldMetaData("creditRate", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(PaidCallCurrencyExchangeRate.class, metaDataMap);
  }

  public PaidCallCurrencyExchangeRate() {
  }

  public PaidCallCurrencyExchangeRate(
    java.lang.String currencyCode,
    java.lang.String currencyName,
    java.lang.String currencySign,
    boolean preferred,
    java.lang.String coinRate,
    java.lang.String creditRate)
  {
    this();
    this.currencyCode = currencyCode;
    this.currencyName = currencyName;
    this.currencySign = currencySign;
    this.preferred = preferred;
    setPreferredIsSet(true);
    this.coinRate = coinRate;
    this.creditRate = creditRate;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public PaidCallCurrencyExchangeRate(PaidCallCurrencyExchangeRate other) {
    __isset_bitfield = other.__isset_bitfield;
    if (other.isSetCurrencyCode()) {
      this.currencyCode = other.currencyCode;
    }
    if (other.isSetCurrencyName()) {
      this.currencyName = other.currencyName;
    }
    if (other.isSetCurrencySign()) {
      this.currencySign = other.currencySign;
    }
    this.preferred = other.preferred;
    if (other.isSetCoinRate()) {
      this.coinRate = other.coinRate;
    }
    if (other.isSetCreditRate()) {
      this.creditRate = other.creditRate;
    }
  }

  public PaidCallCurrencyExchangeRate deepCopy() {
    return new PaidCallCurrencyExchangeRate(this);
  }

  @Override
  public void clear() {
    this.currencyCode = null;
    this.currencyName = null;
    this.currencySign = null;
    setPreferredIsSet(false);
    this.preferred = false;
    this.coinRate = null;
    this.creditRate = null;
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getCurrencyCode() {
    return this.currencyCode;
  }

  public PaidCallCurrencyExchangeRate setCurrencyCode(@org.apache.thrift.annotation.Nullable java.lang.String currencyCode) {
    this.currencyCode = currencyCode;
    return this;
  }

  public void unsetCurrencyCode() {
    this.currencyCode = null;
  }

  /** Returns true if field currencyCode is set (has been assigned a value) and false otherwise */
  public boolean isSetCurrencyCode() {
    return this.currencyCode != null;
  }

  public void setCurrencyCodeIsSet(boolean value) {
    if (!value) {
      this.currencyCode = null;
    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getCurrencyName() {
    return this.currencyName;
  }

  public PaidCallCurrencyExchangeRate setCurrencyName(@org.apache.thrift.annotation.Nullable java.lang.String currencyName) {
    this.currencyName = currencyName;
    return this;
  }

  public void unsetCurrencyName() {
    this.currencyName = null;
  }

  /** Returns true if field currencyName is set (has been assigned a value) and false otherwise */
  public boolean isSetCurrencyName() {
    return this.currencyName != null;
  }

  public void setCurrencyNameIsSet(boolean value) {
    if (!value) {
      this.currencyName = null;
    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getCurrencySign() {
    return this.currencySign;
  }

  public PaidCallCurrencyExchangeRate setCurrencySign(@org.apache.thrift.annotation.Nullable java.lang.String currencySign) {
    this.currencySign = currencySign;
    return this;
  }

  public void unsetCurrencySign() {
    this.currencySign = null;
  }

  /** Returns true if field currencySign is set (has been assigned a value) and false otherwise */
  public boolean isSetCurrencySign() {
    return this.currencySign != null;
  }

  public void setCurrencySignIsSet(boolean value) {
    if (!value) {
      this.currencySign = null;
    }
  }

  public boolean isPreferred() {
    return this.preferred;
  }

  public PaidCallCurrencyExchangeRate setPreferred(boolean preferred) {
    this.preferred = preferred;
    setPreferredIsSet(true);
    return this;
  }

  public void unsetPreferred() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __PREFERRED_ISSET_ID);
  }

  /** Returns true if field preferred is set (has been assigned a value) and false otherwise */
  public boolean isSetPreferred() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __PREFERRED_ISSET_ID);
  }

  public void setPreferredIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __PREFERRED_ISSET_ID, value);
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getCoinRate() {
    return this.coinRate;
  }

  public PaidCallCurrencyExchangeRate setCoinRate(@org.apache.thrift.annotation.Nullable java.lang.String coinRate) {
    this.coinRate = coinRate;
    return this;
  }

  public void unsetCoinRate() {
    this.coinRate = null;
  }

  /** Returns true if field coinRate is set (has been assigned a value) and false otherwise */
  public boolean isSetCoinRate() {
    return this.coinRate != null;
  }

  public void setCoinRateIsSet(boolean value) {
    if (!value) {
      this.coinRate = null;
    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getCreditRate() {
    return this.creditRate;
  }

  public PaidCallCurrencyExchangeRate setCreditRate(@org.apache.thrift.annotation.Nullable java.lang.String creditRate) {
    this.creditRate = creditRate;
    return this;
  }

  public void unsetCreditRate() {
    this.creditRate = null;
  }

  /** Returns true if field creditRate is set (has been assigned a value) and false otherwise */
  public boolean isSetCreditRate() {
    return this.creditRate != null;
  }

  public void setCreditRateIsSet(boolean value) {
    if (!value) {
      this.creditRate = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case CURRENCY_CODE:
      if (value == null) {
        unsetCurrencyCode();
      } else {
        setCurrencyCode((java.lang.String)value);
      }
      break;

    case CURRENCY_NAME:
      if (value == null) {
        unsetCurrencyName();
      } else {
        setCurrencyName((java.lang.String)value);
      }
      break;

    case CURRENCY_SIGN:
      if (value == null) {
        unsetCurrencySign();
      } else {
        setCurrencySign((java.lang.String)value);
      }
      break;

    case PREFERRED:
      if (value == null) {
        unsetPreferred();
      } else {
        setPreferred((java.lang.Boolean)value);
      }
      break;

    case COIN_RATE:
      if (value == null) {
        unsetCoinRate();
      } else {
        setCoinRate((java.lang.String)value);
      }
      break;

    case CREDIT_RATE:
      if (value == null) {
        unsetCreditRate();
      } else {
        setCreditRate((java.lang.String)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case CURRENCY_CODE:
      return getCurrencyCode();

    case CURRENCY_NAME:
      return getCurrencyName();

    case CURRENCY_SIGN:
      return getCurrencySign();

    case PREFERRED:
      return isPreferred();

    case COIN_RATE:
      return getCoinRate();

    case CREDIT_RATE:
      return getCreditRate();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case CURRENCY_CODE:
      return isSetCurrencyCode();
    case CURRENCY_NAME:
      return isSetCurrencyName();
    case CURRENCY_SIGN:
      return isSetCurrencySign();
    case PREFERRED:
      return isSetPreferred();
    case COIN_RATE:
      return isSetCoinRate();
    case CREDIT_RATE:
      return isSetCreditRate();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof PaidCallCurrencyExchangeRate)
      return this.equals((PaidCallCurrencyExchangeRate)that);
    return false;
  }

  public boolean equals(PaidCallCurrencyExchangeRate that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_currencyCode = true && this.isSetCurrencyCode();
    boolean that_present_currencyCode = true && that.isSetCurrencyCode();
    if (this_present_currencyCode || that_present_currencyCode) {
      if (!(this_present_currencyCode && that_present_currencyCode))
        return false;
      if (!this.currencyCode.equals(that.currencyCode))
        return false;
    }

    boolean this_present_currencyName = true && this.isSetCurrencyName();
    boolean that_present_currencyName = true && that.isSetCurrencyName();
    if (this_present_currencyName || that_present_currencyName) {
      if (!(this_present_currencyName && that_present_currencyName))
        return false;
      if (!this.currencyName.equals(that.currencyName))
        return false;
    }

    boolean this_present_currencySign = true && this.isSetCurrencySign();
    boolean that_present_currencySign = true && that.isSetCurrencySign();
    if (this_present_currencySign || that_present_currencySign) {
      if (!(this_present_currencySign && that_present_currencySign))
        return false;
      if (!this.currencySign.equals(that.currencySign))
        return false;
    }

    boolean this_present_preferred = true;
    boolean that_present_preferred = true;
    if (this_present_preferred || that_present_preferred) {
      if (!(this_present_preferred && that_present_preferred))
        return false;
      if (this.preferred != that.preferred)
        return false;
    }

    boolean this_present_coinRate = true && this.isSetCoinRate();
    boolean that_present_coinRate = true && that.isSetCoinRate();
    if (this_present_coinRate || that_present_coinRate) {
      if (!(this_present_coinRate && that_present_coinRate))
        return false;
      if (!this.coinRate.equals(that.coinRate))
        return false;
    }

    boolean this_present_creditRate = true && this.isSetCreditRate();
    boolean that_present_creditRate = true && that.isSetCreditRate();
    if (this_present_creditRate || that_present_creditRate) {
      if (!(this_present_creditRate && that_present_creditRate))
        return false;
      if (!this.creditRate.equals(that.creditRate))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetCurrencyCode()) ? 131071 : 524287);
    if (isSetCurrencyCode())
      hashCode = hashCode * 8191 + currencyCode.hashCode();

    hashCode = hashCode * 8191 + ((isSetCurrencyName()) ? 131071 : 524287);
    if (isSetCurrencyName())
      hashCode = hashCode * 8191 + currencyName.hashCode();

    hashCode = hashCode * 8191 + ((isSetCurrencySign()) ? 131071 : 524287);
    if (isSetCurrencySign())
      hashCode = hashCode * 8191 + currencySign.hashCode();

    hashCode = hashCode * 8191 + ((preferred) ? 131071 : 524287);

    hashCode = hashCode * 8191 + ((isSetCoinRate()) ? 131071 : 524287);
    if (isSetCoinRate())
      hashCode = hashCode * 8191 + coinRate.hashCode();

    hashCode = hashCode * 8191 + ((isSetCreditRate()) ? 131071 : 524287);
    if (isSetCreditRate())
      hashCode = hashCode * 8191 + creditRate.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(PaidCallCurrencyExchangeRate other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetCurrencyCode(), other.isSetCurrencyCode());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCurrencyCode()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.currencyCode, other.currencyCode);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetCurrencyName(), other.isSetCurrencyName());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCurrencyName()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.currencyName, other.currencyName);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetCurrencySign(), other.isSetCurrencySign());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCurrencySign()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.currencySign, other.currencySign);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetPreferred(), other.isSetPreferred());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetPreferred()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.preferred, other.preferred);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetCoinRate(), other.isSetCoinRate());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCoinRate()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.coinRate, other.coinRate);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetCreditRate(), other.isSetCreditRate());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreditRate()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.creditRate, other.creditRate);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("PaidCallCurrencyExchangeRate(");
    boolean first = true;

    sb.append("currencyCode:");
    if (this.currencyCode == null) {
      sb.append("null");
    } else {
      sb.append(this.currencyCode);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("currencyName:");
    if (this.currencyName == null) {
      sb.append("null");
    } else {
      sb.append(this.currencyName);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("currencySign:");
    if (this.currencySign == null) {
      sb.append("null");
    } else {
      sb.append(this.currencySign);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("preferred:");
    sb.append(this.preferred);
    first = false;
    if (!first) sb.append(", ");
    sb.append("coinRate:");
    if (this.coinRate == null) {
      sb.append("null");
    } else {
      sb.append(this.coinRate);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("creditRate:");
    if (this.creditRate == null) {
      sb.append("null");
    } else {
      sb.append(this.creditRate);
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

  private static class PaidCallCurrencyExchangeRateStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public PaidCallCurrencyExchangeRateStandardScheme getScheme() {
      return new PaidCallCurrencyExchangeRateStandardScheme();
    }
  }

  private static class PaidCallCurrencyExchangeRateStandardScheme extends org.apache.thrift.scheme.StandardScheme<PaidCallCurrencyExchangeRate> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, PaidCallCurrencyExchangeRate struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // CURRENCY_CODE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.currencyCode = iprot.readString();
              struct.setCurrencyCodeIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // CURRENCY_NAME
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.currencyName = iprot.readString();
              struct.setCurrencyNameIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // CURRENCY_SIGN
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.currencySign = iprot.readString();
              struct.setCurrencySignIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // PREFERRED
            if (schemeField.type == org.apache.thrift.protocol.TType.BOOL) {
              struct.preferred = iprot.readBool();
              struct.setPreferredIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 5: // COIN_RATE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.coinRate = iprot.readString();
              struct.setCoinRateIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 6: // CREDIT_RATE
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.creditRate = iprot.readString();
              struct.setCreditRateIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, PaidCallCurrencyExchangeRate struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.currencyCode != null) {
        oprot.writeFieldBegin(CURRENCY_CODE_FIELD_DESC);
        oprot.writeString(struct.currencyCode);
        oprot.writeFieldEnd();
      }
      if (struct.currencyName != null) {
        oprot.writeFieldBegin(CURRENCY_NAME_FIELD_DESC);
        oprot.writeString(struct.currencyName);
        oprot.writeFieldEnd();
      }
      if (struct.currencySign != null) {
        oprot.writeFieldBegin(CURRENCY_SIGN_FIELD_DESC);
        oprot.writeString(struct.currencySign);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(PREFERRED_FIELD_DESC);
      oprot.writeBool(struct.preferred);
      oprot.writeFieldEnd();
      if (struct.coinRate != null) {
        oprot.writeFieldBegin(COIN_RATE_FIELD_DESC);
        oprot.writeString(struct.coinRate);
        oprot.writeFieldEnd();
      }
      if (struct.creditRate != null) {
        oprot.writeFieldBegin(CREDIT_RATE_FIELD_DESC);
        oprot.writeString(struct.creditRate);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class PaidCallCurrencyExchangeRateTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public PaidCallCurrencyExchangeRateTupleScheme getScheme() {
      return new PaidCallCurrencyExchangeRateTupleScheme();
    }
  }

  private static class PaidCallCurrencyExchangeRateTupleScheme extends org.apache.thrift.scheme.TupleScheme<PaidCallCurrencyExchangeRate> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, PaidCallCurrencyExchangeRate struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetCurrencyCode()) {
        optionals.set(0);
      }
      if (struct.isSetCurrencyName()) {
        optionals.set(1);
      }
      if (struct.isSetCurrencySign()) {
        optionals.set(2);
      }
      if (struct.isSetPreferred()) {
        optionals.set(3);
      }
      if (struct.isSetCoinRate()) {
        optionals.set(4);
      }
      if (struct.isSetCreditRate()) {
        optionals.set(5);
      }
      oprot.writeBitSet(optionals, 6);
      if (struct.isSetCurrencyCode()) {
        oprot.writeString(struct.currencyCode);
      }
      if (struct.isSetCurrencyName()) {
        oprot.writeString(struct.currencyName);
      }
      if (struct.isSetCurrencySign()) {
        oprot.writeString(struct.currencySign);
      }
      if (struct.isSetPreferred()) {
        oprot.writeBool(struct.preferred);
      }
      if (struct.isSetCoinRate()) {
        oprot.writeString(struct.coinRate);
      }
      if (struct.isSetCreditRate()) {
        oprot.writeString(struct.creditRate);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, PaidCallCurrencyExchangeRate struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(6);
      if (incoming.get(0)) {
        struct.currencyCode = iprot.readString();
        struct.setCurrencyCodeIsSet(true);
      }
      if (incoming.get(1)) {
        struct.currencyName = iprot.readString();
        struct.setCurrencyNameIsSet(true);
      }
      if (incoming.get(2)) {
        struct.currencySign = iprot.readString();
        struct.setCurrencySignIsSet(true);
      }
      if (incoming.get(3)) {
        struct.preferred = iprot.readBool();
        struct.setPreferredIsSet(true);
      }
      if (incoming.get(4)) {
        struct.coinRate = iprot.readString();
        struct.setCoinRateIsSet(true);
      }
      if (incoming.get(5)) {
        struct.creditRate = iprot.readString();
        struct.setCreditRateIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

