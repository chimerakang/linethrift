<?php
/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
use Thrift\Base\TBase;
use Thrift\Type\TType;
use Thrift\Type\TMessageType;
use Thrift\Exception\TException;
use Thrift\Exception\TProtocolException;
use Thrift\Protocol\TProtocol;
use Thrift\Protocol\TBinaryProtocolAccelerated;
use Thrift\Exception\TApplicationException;

final class ErrorCode
{
    const ILLEGAL_ARGUMENT = 0;

    const AUTHENTICATION_FAILED = 1;

    const DB_FAILED = 2;

    const INVALID_STATE = 3;

    const EXCESSIVE_ACCESS = 4;

    const NOT_FOUND = 5;

    const INVALID_MID = 9;

    const NOT_A_MEMBER = 10;

    const INVALID_LENGTH = 6;

    const NOT_AVAILABLE_USER = 7;

    const NOT_AUTHORIZED_DEVICE = 8;

    const NOT_AUTHORIZED_SESSION = 14;

    const INCOMPATIBLE_APP_VERSION = 11;

    const NOT_READY = 12;

    const NOT_AVAILABLE_SESSION = 13;

    const SYSTEM_ERROR = 15;

    const NO_AVAILABLE_VERIFICATION_METHOD = 16;

    const NOT_AUTHENTICATED = 17;

    const INVALID_IDENTITY_CREDENTIAL = 18;

    const NOT_AVAILABLE_IDENTITY_IDENTIFIER = 19;

    const INTERNAL_ERROR = 20;

    const NO_SUCH_IDENTITY_IDENFIER = 21;

    const DEACTIVATED_ACCOUNT_BOUND_TO_THIS_IDENTITY = 22;

    const ILLEGAL_IDENTITY_CREDENTIAL = 23;

    const UNKNOWN_CHANNEL = 24;

    const NO_SUCH_MESSAGE_BOX = 25;

    const NOT_AVAILABLE_MESSAGE_BOX = 26;

    const CHANNEL_DOES_NOT_MATCH = 27;

    const NOT_YOUR_MESSAGE = 28;

    const MESSAGE_DEFINED_ERROR = 29;

    const USER_CANNOT_ACCEPT_PRESENTS = 30;

    const USER_NOT_STICKER_OWNER = 32;

    const MAINTENANCE_ERROR = 33;

    const ACCOUNT_NOT_MATCHED = 34;

    const ABUSE_BLOCK = 35;

    const NOT_FRIEND = 36;

    const NOT_ALLOWED_CALL = 37;

    const BLOCK_FRIEND = 38;

    const INCOMPATIBLE_VOIP_VERSION = 39;

    const INVALID_SNS_ACCESS_TOKEN = 40;

    const EXTERNAL_SERVICE_NOT_AVAILABLE = 41;

    const NOT_ALLOWED_ADD_CONTACT = 42;

    const NOT_CERTIFICATED = 43;

    const NOT_ALLOWED_SECONDARY_DEVICE = 44;

    const INVALID_PIN_CODE = 45;

    const NOT_FOUND_IDENTITY_CREDENTIAL = 46;

    const EXCEED_FILE_MAX_SIZE = 47;

    const EXCEED_DAILY_QUOTA = 48;

    const NOT_SUPPORT_SEND_FILE = 49;

    const MUST_UPGRADE = 50;

    const NOT_AVAILABLE_PIN_CODE_SESSION = 51;

    const EXPIRED_REVISION = 52;

    const NOT_YET_PHONE_NUMBER = 54;

    const BAD_CALL_NUMBER = 55;

    const UNAVAILABLE_CALL_NUMBER = 56;

    const NOT_SUPPORT_CALL_SERVICE = 57;

    const CONGESTION_CONTROL = 58;

    const NO_BALANCE = 59;

    const NOT_PERMITTED_CALLER_ID = 60;

    const NO_CALLER_ID_LIMIT_EXCEEDED = 61;

    const CALLER_ID_VERIFICATION_REQUIRED = 62;

    const NO_CALLER_ID_LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED = 63;

    const MESSAGE_NOT_FOUND = 64;

    const INVALID_ACCOUNT_MIGRATION_PINCODE_FORMAT = 65;

    const ACCOUNT_MIGRATION_PINCODE_NOT_MATCHED = 66;

    const ACCOUNT_MIGRATION_PINCODE_BLOCKED = 67;

    const INVALID_PASSWORD_FORMAT = 69;

    const FEATURE_RESTRICTED = 70;

    const MESSAGE_NOT_DESTRUCTIBLE = 71;

    const PAID_CALL_REDEEM_FAILED = 72;

    const PREVENTED_JOIN_BY_TICKET = 73;

    const SEND_MESSAGE_NOT_PERMITTED_FROM_LINE_AT = 75;

    const SEND_MESSAGE_NOT_PERMITTED_WHILE_AUTO_REPLY = 76;

    const SECURITY_CENTER_NOT_VERIFIED = 77;

    const SECURITY_CENTER_BLOCKED_BY_SETTING = 78;

    const SECURITY_CENTER_BLOCKED = 79;

    const TALK_PROXY_EXCEPTION = 80;

    const E2EE_INVALID_PROTOCOL = 81;

    const E2EE_RETRY_ENCRYPT = 82;

    const E2EE_UPDATE_SENDER_KEY = 83;

    const E2EE_UPDATE_RECEIVER_KEY = 84;

    const E2EE_INVALID_ARGUMENT = 85;

    const E2EE_INVALID_VERSION = 86;

    const E2EE_SENDER_DISABLED = 87;

    const E2EE_RECEIVER_DISABLED = 88;

    const E2EE_SENDER_NOT_ALLOWED = 89;

    const E2EE_RECEIVER_NOT_ALLOWED = 90;

    const E2EE_RESEND_FAIL = 91;

    const E2EE_RESEND_OK = 92;

    const HITOKOTO_BACKUP_NO_AVAILABLE_DATA = 93;

    const E2EE_UPDATE_PRIMARY_DEVICE = 94;

    const SUCCESS = 95;

    const CANCEL = 96;

    const E2EE_PRIMARY_NOT_SUPPORT = 97;

    const E2EE_RETRY_PLAIN = 98;

    const E2EE_RECREATE_GROUP_KEY = 99;

    const E2EE_GROUP_TOO_MANY_MEMBERS = 100;

    const SERVER_BUSY = 101;

    const NOT_ALLOWED_ADD_FOLLOW = 102;

    const INCOMING_FRIEND_REQUEST_LIMIT = 103;

    const OUTGOING_FRIEND_REQUEST_LIMIT = 104;

    const OUTGOING_FRIEND_REQUEST_QUOTA = 105;

    const DUPLICATED = 106;

    const BANNED = 107;

    static public $__names = array(
        0 => 'ILLEGAL_ARGUMENT',
        1 => 'AUTHENTICATION_FAILED',
        2 => 'DB_FAILED',
        3 => 'INVALID_STATE',
        4 => 'EXCESSIVE_ACCESS',
        5 => 'NOT_FOUND',
        9 => 'INVALID_MID',
        10 => 'NOT_A_MEMBER',
        6 => 'INVALID_LENGTH',
        7 => 'NOT_AVAILABLE_USER',
        8 => 'NOT_AUTHORIZED_DEVICE',
        14 => 'NOT_AUTHORIZED_SESSION',
        11 => 'INCOMPATIBLE_APP_VERSION',
        12 => 'NOT_READY',
        13 => 'NOT_AVAILABLE_SESSION',
        15 => 'SYSTEM_ERROR',
        16 => 'NO_AVAILABLE_VERIFICATION_METHOD',
        17 => 'NOT_AUTHENTICATED',
        18 => 'INVALID_IDENTITY_CREDENTIAL',
        19 => 'NOT_AVAILABLE_IDENTITY_IDENTIFIER',
        20 => 'INTERNAL_ERROR',
        21 => 'NO_SUCH_IDENTITY_IDENFIER',
        22 => 'DEACTIVATED_ACCOUNT_BOUND_TO_THIS_IDENTITY',
        23 => 'ILLEGAL_IDENTITY_CREDENTIAL',
        24 => 'UNKNOWN_CHANNEL',
        25 => 'NO_SUCH_MESSAGE_BOX',
        26 => 'NOT_AVAILABLE_MESSAGE_BOX',
        27 => 'CHANNEL_DOES_NOT_MATCH',
        28 => 'NOT_YOUR_MESSAGE',
        29 => 'MESSAGE_DEFINED_ERROR',
        30 => 'USER_CANNOT_ACCEPT_PRESENTS',
        32 => 'USER_NOT_STICKER_OWNER',
        33 => 'MAINTENANCE_ERROR',
        34 => 'ACCOUNT_NOT_MATCHED',
        35 => 'ABUSE_BLOCK',
        36 => 'NOT_FRIEND',
        37 => 'NOT_ALLOWED_CALL',
        38 => 'BLOCK_FRIEND',
        39 => 'INCOMPATIBLE_VOIP_VERSION',
        40 => 'INVALID_SNS_ACCESS_TOKEN',
        41 => 'EXTERNAL_SERVICE_NOT_AVAILABLE',
        42 => 'NOT_ALLOWED_ADD_CONTACT',
        43 => 'NOT_CERTIFICATED',
        44 => 'NOT_ALLOWED_SECONDARY_DEVICE',
        45 => 'INVALID_PIN_CODE',
        46 => 'NOT_FOUND_IDENTITY_CREDENTIAL',
        47 => 'EXCEED_FILE_MAX_SIZE',
        48 => 'EXCEED_DAILY_QUOTA',
        49 => 'NOT_SUPPORT_SEND_FILE',
        50 => 'MUST_UPGRADE',
        51 => 'NOT_AVAILABLE_PIN_CODE_SESSION',
        52 => 'EXPIRED_REVISION',
        54 => 'NOT_YET_PHONE_NUMBER',
        55 => 'BAD_CALL_NUMBER',
        56 => 'UNAVAILABLE_CALL_NUMBER',
        57 => 'NOT_SUPPORT_CALL_SERVICE',
        58 => 'CONGESTION_CONTROL',
        59 => 'NO_BALANCE',
        60 => 'NOT_PERMITTED_CALLER_ID',
        61 => 'NO_CALLER_ID_LIMIT_EXCEEDED',
        62 => 'CALLER_ID_VERIFICATION_REQUIRED',
        63 => 'NO_CALLER_ID_LIMIT_EXCEEDED_AND_VERIFICATION_REQUIRED',
        64 => 'MESSAGE_NOT_FOUND',
        65 => 'INVALID_ACCOUNT_MIGRATION_PINCODE_FORMAT',
        66 => 'ACCOUNT_MIGRATION_PINCODE_NOT_MATCHED',
        67 => 'ACCOUNT_MIGRATION_PINCODE_BLOCKED',
        69 => 'INVALID_PASSWORD_FORMAT',
        70 => 'FEATURE_RESTRICTED',
        71 => 'MESSAGE_NOT_DESTRUCTIBLE',
        72 => 'PAID_CALL_REDEEM_FAILED',
        73 => 'PREVENTED_JOIN_BY_TICKET',
        75 => 'SEND_MESSAGE_NOT_PERMITTED_FROM_LINE_AT',
        76 => 'SEND_MESSAGE_NOT_PERMITTED_WHILE_AUTO_REPLY',
        77 => 'SECURITY_CENTER_NOT_VERIFIED',
        78 => 'SECURITY_CENTER_BLOCKED_BY_SETTING',
        79 => 'SECURITY_CENTER_BLOCKED',
        80 => 'TALK_PROXY_EXCEPTION',
        81 => 'E2EE_INVALID_PROTOCOL',
        82 => 'E2EE_RETRY_ENCRYPT',
        83 => 'E2EE_UPDATE_SENDER_KEY',
        84 => 'E2EE_UPDATE_RECEIVER_KEY',
        85 => 'E2EE_INVALID_ARGUMENT',
        86 => 'E2EE_INVALID_VERSION',
        87 => 'E2EE_SENDER_DISABLED',
        88 => 'E2EE_RECEIVER_DISABLED',
        89 => 'E2EE_SENDER_NOT_ALLOWED',
        90 => 'E2EE_RECEIVER_NOT_ALLOWED',
        91 => 'E2EE_RESEND_FAIL',
        92 => 'E2EE_RESEND_OK',
        93 => 'HITOKOTO_BACKUP_NO_AVAILABLE_DATA',
        94 => 'E2EE_UPDATE_PRIMARY_DEVICE',
        95 => 'SUCCESS',
        96 => 'CANCEL',
        97 => 'E2EE_PRIMARY_NOT_SUPPORT',
        98 => 'E2EE_RETRY_PLAIN',
        99 => 'E2EE_RECREATE_GROUP_KEY',
        100 => 'E2EE_GROUP_TOO_MANY_MEMBERS',
        101 => 'SERVER_BUSY',
        102 => 'NOT_ALLOWED_ADD_FOLLOW',
        103 => 'INCOMING_FRIEND_REQUEST_LIMIT',
        104 => 'OUTGOING_FRIEND_REQUEST_LIMIT',
        105 => 'OUTGOING_FRIEND_REQUEST_QUOTA',
        106 => 'DUPLICATED',
        107 => 'BANNED',
    );
}
