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

class TalkService_getAuthQrcode_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'keepLoggedIn',
            'isRequired' => false,
            'type' => TType::BOOL,
        ),
        3 => array(
            'var' => 'systemName',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var bool
     */
    public $keepLoggedIn = null;
    /**
     * @var string
     */
    public $systemName = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['keepLoggedIn'])) {
                $this->keepLoggedIn = $vals['keepLoggedIn'];
            }
            if (isset($vals['systemName'])) {
                $this->systemName = $vals['systemName'];
            }
        }
    }

    public function getName()
    {
        return 'TalkService_getAuthQrcode_args';
    }


    public function read($input)
    {
        $xfer = 0;
        $fname = null;
        $ftype = 0;
        $fid = 0;
        $xfer += $input->readStructBegin($fname);
        while (true) {
            $xfer += $input->readFieldBegin($fname, $ftype, $fid);
            if ($ftype == TType::STOP) {
                break;
            }
            switch ($fid) {
                case 2:
                    if ($ftype == TType::BOOL) {
                        $xfer += $input->readBool($this->keepLoggedIn);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->systemName);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                default:
                    $xfer += $input->skip($ftype);
                    break;
            }
            $xfer += $input->readFieldEnd();
        }
        $xfer += $input->readStructEnd();
        return $xfer;
    }

    public function write($output)
    {
        $xfer = 0;
        $xfer += $output->writeStructBegin('TalkService_getAuthQrcode_args');
        if ($this->keepLoggedIn !== null) {
            $xfer += $output->writeFieldBegin('keepLoggedIn', TType::BOOL, 2);
            $xfer += $output->writeBool($this->keepLoggedIn);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->systemName !== null) {
            $xfer += $output->writeFieldBegin('systemName', TType::STRING, 3);
            $xfer += $output->writeString($this->systemName);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
