<?php
/**
 * Autogenerated by Thrift Compiler (0.14.0)
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

final class OpType
{
    const END_OF_OPERATION = 0;

    const UPDATE_PROFILE = 1;

    const UPDATE_SETTINGS = 36;

    const NOTIFIED_UPDATE_PROFILE = 2;

    const REGISTER_USERID = 3;

    const ADD_CONTACT = 4;

    const NOTIFIED_ADD_CONTACT = 5;

    const BLOCK_CONTACT = 6;

    const UNBLOCK_CONTACT = 7;

    const NOTIFIED_RECOMMEND_CONTACT = 8;

    const CREATE_GROUP = 9;

    const UPDATE_GROUP = 10;

    const NOTIFIED_UPDATE_GROUP = 11;

    const INVITE_INTO_GROUP = 12;

    const NOTIFIED_INVITE_INTO_GROUP = 13;

    const CANCEL_INVITATION_GROUP = 31;

    const NOTIFIED_CANCEL_INVITATION_GROUP = 32;

    const LEAVE_GROUP = 14;

    const NOTIFIED_LEAVE_GROUP = 15;

    const ACCEPT_GROUP_INVITATION = 16;

    const NOTIFIED_ACCEPT_GROUP_INVITATION = 17;

    const REJECT_GROUP_INVITATION = 34;

    const NOTIFIED_REJECT_GROUP_INVITATION = 35;

    const KICKOUT_FROM_GROUP = 18;

    const NOTIFIED_KICKOUT_FROM_GROUP = 19;

    const CREATE_ROOM = 20;

    const INVITE_INTO_ROOM = 21;

    const NOTIFIED_INVITE_INTO_ROOM = 22;

    const LEAVE_ROOM = 23;

    const NOTIFIED_LEAVE_ROOM = 24;

    const SEND_MESSAGE = 25;

    const RECEIVE_MESSAGE = 26;

    const SEND_MESSAGE_RECEIPT = 27;

    const RECEIVE_MESSAGE_RECEIPT = 28;

    const SEND_CONTENT_RECEIPT = 29;

    const RECEIVE_ANNOUNCEMENT = 30;

    const NOTIFIED_UNREGISTER_USER = 33;

    const INVITE_VIA_EMAIL = 38;

    const NOTIFIED_REGISTER_USER = 37;

    const NOTIFIED_REQUEST_RECOVERY = 39;

    const SEND_CHAT_CHECKED = 40;

    const SEND_CHAT_REMOVED = 41;

    const NOTIFIED_FORCE_SYNC = 42;

    const SEND_CONTENT = 43;

    const SEND_MESSAGE_MYHOME = 44;

    const NOTIFIED_UPDATE_CONTENT_PREVIEW = 45;

    const REMOVE_ALL_MESSAGES = 46;

    const NOTIFIED_UPDATE_PURCHASES = 47;

    const DUMMY = 48;

    const UPDATE_CONTACT = 49;

    const NOTIFIED_RECEIVED_CALL = 50;

    const CANCEL_CALL = 51;

    const NOTIFIED_REDIRECT = 52;

    const NOTIFIED_CHANNEL_SYNC = 53;

    const FAILED_SEND_MESSAGE = 54;

    const NOTIFIED_READ_MESSAGE = 55;

    const FAILED_EMAIL_CONFIRMATION = 56;

    const NOTIFIED_CHAT_CONTENT = 58;

    const NOTIFIED_PUSH_NOTICENTER_ITEM = 59;

    const NOTIFIED_JOIN_CHAT = 60;

    const NOTIFIED_LEAVE_CHAT = 61;

    const NOTIFIED_TYPING = 62;

    const FRIEND_REQUEST_ACCEPTED = 63;

    const DESTROY_MESSAGE = 64;

    const NOTIFIED_DESTROY_MESSAGE = 65;

    const UPDATE_PUBLICKEYCHAIN = 66;

    const NOTIFIED_UPDATE_PUBLICKEYCHAIN = 67;

    const NOTIFIED_BLOCK_CONTACT = 68;

    const NOTIFIED_UNBLOCK_CONTACT = 69;

    const UPDATE_GROUPPREFERENCE = 70;

    const NOTIFIED_PAYMENT_EVENT = 71;

    const REGISTER_E2EE_PUBLICKEY = 72;

    const NOTIFIED_E2EE_KEY_EXCHANGE_REQ = 73;

    const NOTIFIED_E2EE_KEY_EXCHANGE_RESP = 74;

    const NOTIFIED_E2EE_MESSAGE_RESEND_REQ = 75;

    const NOTIFIED_E2EE_MESSAGE_RESEND_RESP = 76;

    const NOTIFIED_E2EE_KEY_UPDATE = 77;

    const NOTIFIED_BUDDY_UPDATE_PROFILE = 78;

    const NOTIFIED_UPDATE_LINEAT_TABS = 79;

    const UPDATE_ROOM = 80;

    const NOTIFIED_BEACON_DETECTED = 81;

    const UPDATE_EXTENDED_PROFILE = 82;

    const ADD_FOLLOW = 83;

    const NOTIFIED_ADD_FOLLOW = 84;

    const DELETE_FOLLOW = 85;

    const NOTIFIED_DELETE_FOLLOW = 86;

    const UPDATE_TIMELINE_SETTINGS = 87;

    const NOTIFIED_FRIEND_REQUEST = 88;

    const UPDATE_RINGBACK_TONE = 89;

    const NOTIFIED_POSTBACK = 90;

    const RECEIVE_READ_WATERMARK = 91;

    const NOTIFIED_MESSAGE_DELIVERED = 92;

    const NOTIFIED_UPDATE_CHAT_BAR = 93;

    const NOTIFIED_CHATAPP_INSTALLED = 94;

    const NOTIFIED_CHATAPP_UPDATED = 95;

    const NOTIFIED_CHATAPP_NEW_MARK = 96;

    const NOTIFIED_CHATAPP_DELETED = 97;

    const NOTIFIED_CHATAPP_SYNC = 98;

    const NOTIFIED_UPDATE_MESSAGE = 99;

    static public $__names = array(
        0 => 'END_OF_OPERATION',
        1 => 'UPDATE_PROFILE',
        36 => 'UPDATE_SETTINGS',
        2 => 'NOTIFIED_UPDATE_PROFILE',
        3 => 'REGISTER_USERID',
        4 => 'ADD_CONTACT',
        5 => 'NOTIFIED_ADD_CONTACT',
        6 => 'BLOCK_CONTACT',
        7 => 'UNBLOCK_CONTACT',
        8 => 'NOTIFIED_RECOMMEND_CONTACT',
        9 => 'CREATE_GROUP',
        10 => 'UPDATE_GROUP',
        11 => 'NOTIFIED_UPDATE_GROUP',
        12 => 'INVITE_INTO_GROUP',
        13 => 'NOTIFIED_INVITE_INTO_GROUP',
        31 => 'CANCEL_INVITATION_GROUP',
        32 => 'NOTIFIED_CANCEL_INVITATION_GROUP',
        14 => 'LEAVE_GROUP',
        15 => 'NOTIFIED_LEAVE_GROUP',
        16 => 'ACCEPT_GROUP_INVITATION',
        17 => 'NOTIFIED_ACCEPT_GROUP_INVITATION',
        34 => 'REJECT_GROUP_INVITATION',
        35 => 'NOTIFIED_REJECT_GROUP_INVITATION',
        18 => 'KICKOUT_FROM_GROUP',
        19 => 'NOTIFIED_KICKOUT_FROM_GROUP',
        20 => 'CREATE_ROOM',
        21 => 'INVITE_INTO_ROOM',
        22 => 'NOTIFIED_INVITE_INTO_ROOM',
        23 => 'LEAVE_ROOM',
        24 => 'NOTIFIED_LEAVE_ROOM',
        25 => 'SEND_MESSAGE',
        26 => 'RECEIVE_MESSAGE',
        27 => 'SEND_MESSAGE_RECEIPT',
        28 => 'RECEIVE_MESSAGE_RECEIPT',
        29 => 'SEND_CONTENT_RECEIPT',
        30 => 'RECEIVE_ANNOUNCEMENT',
        33 => 'NOTIFIED_UNREGISTER_USER',
        38 => 'INVITE_VIA_EMAIL',
        37 => 'NOTIFIED_REGISTER_USER',
        39 => 'NOTIFIED_REQUEST_RECOVERY',
        40 => 'SEND_CHAT_CHECKED',
        41 => 'SEND_CHAT_REMOVED',
        42 => 'NOTIFIED_FORCE_SYNC',
        43 => 'SEND_CONTENT',
        44 => 'SEND_MESSAGE_MYHOME',
        45 => 'NOTIFIED_UPDATE_CONTENT_PREVIEW',
        46 => 'REMOVE_ALL_MESSAGES',
        47 => 'NOTIFIED_UPDATE_PURCHASES',
        48 => 'DUMMY',
        49 => 'UPDATE_CONTACT',
        50 => 'NOTIFIED_RECEIVED_CALL',
        51 => 'CANCEL_CALL',
        52 => 'NOTIFIED_REDIRECT',
        53 => 'NOTIFIED_CHANNEL_SYNC',
        54 => 'FAILED_SEND_MESSAGE',
        55 => 'NOTIFIED_READ_MESSAGE',
        56 => 'FAILED_EMAIL_CONFIRMATION',
        58 => 'NOTIFIED_CHAT_CONTENT',
        59 => 'NOTIFIED_PUSH_NOTICENTER_ITEM',
        60 => 'NOTIFIED_JOIN_CHAT',
        61 => 'NOTIFIED_LEAVE_CHAT',
        62 => 'NOTIFIED_TYPING',
        63 => 'FRIEND_REQUEST_ACCEPTED',
        64 => 'DESTROY_MESSAGE',
        65 => 'NOTIFIED_DESTROY_MESSAGE',
        66 => 'UPDATE_PUBLICKEYCHAIN',
        67 => 'NOTIFIED_UPDATE_PUBLICKEYCHAIN',
        68 => 'NOTIFIED_BLOCK_CONTACT',
        69 => 'NOTIFIED_UNBLOCK_CONTACT',
        70 => 'UPDATE_GROUPPREFERENCE',
        71 => 'NOTIFIED_PAYMENT_EVENT',
        72 => 'REGISTER_E2EE_PUBLICKEY',
        73 => 'NOTIFIED_E2EE_KEY_EXCHANGE_REQ',
        74 => 'NOTIFIED_E2EE_KEY_EXCHANGE_RESP',
        75 => 'NOTIFIED_E2EE_MESSAGE_RESEND_REQ',
        76 => 'NOTIFIED_E2EE_MESSAGE_RESEND_RESP',
        77 => 'NOTIFIED_E2EE_KEY_UPDATE',
        78 => 'NOTIFIED_BUDDY_UPDATE_PROFILE',
        79 => 'NOTIFIED_UPDATE_LINEAT_TABS',
        80 => 'UPDATE_ROOM',
        81 => 'NOTIFIED_BEACON_DETECTED',
        82 => 'UPDATE_EXTENDED_PROFILE',
        83 => 'ADD_FOLLOW',
        84 => 'NOTIFIED_ADD_FOLLOW',
        85 => 'DELETE_FOLLOW',
        86 => 'NOTIFIED_DELETE_FOLLOW',
        87 => 'UPDATE_TIMELINE_SETTINGS',
        88 => 'NOTIFIED_FRIEND_REQUEST',
        89 => 'UPDATE_RINGBACK_TONE',
        90 => 'NOTIFIED_POSTBACK',
        91 => 'RECEIVE_READ_WATERMARK',
        92 => 'NOTIFIED_MESSAGE_DELIVERED',
        93 => 'NOTIFIED_UPDATE_CHAT_BAR',
        94 => 'NOTIFIED_CHATAPP_INSTALLED',
        95 => 'NOTIFIED_CHATAPP_UPDATED',
        96 => 'NOTIFIED_CHATAPP_NEW_MARK',
        97 => 'NOTIFIED_CHATAPP_DELETED',
        98 => 'NOTIFIED_CHATAPP_SYNC',
        99 => 'NOTIFIED_UPDATE_MESSAGE',
    );
}

