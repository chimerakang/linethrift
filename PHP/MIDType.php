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

final class MIDType
{
    const USER = 0;

    const ROOM = 1;

    const GROUP = 2;

    const SQUARE = 3;

    const SQUARE_CHAT = 4;

    const SQUARE_MEMBER = 5;

    const BOT = 6;

    static public $__names = array(
        0 => 'USER',
        1 => 'ROOM',
        2 => 'GROUP',
        3 => 'SQUARE',
        4 => 'SQUARE_CHAT',
        5 => 'SQUARE_MEMBER',
        6 => 'BOT',
    );
}
