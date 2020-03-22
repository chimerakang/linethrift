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

class LoginSession
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'tokenKey',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'expirationTime',
            'isRequired' => false,
            'type' => TType::I64,
        ),
        11 => array(
            'var' => 'applicationType',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        12 => array(
            'var' => 'systemName',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        22 => array(
            'var' => 'accessLocation',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var string
     */
    public $tokenKey = null;
    /**
     * @var int
     */
    public $expirationTime = null;
    /**
     * @var int
     */
    public $applicationType = null;
    /**
     * @var string
     */
    public $systemName = null;
    /**
     * @var string
     */
    public $accessLocation = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['tokenKey'])) {
                $this->tokenKey = $vals['tokenKey'];
            }
            if (isset($vals['expirationTime'])) {
                $this->expirationTime = $vals['expirationTime'];
            }
            if (isset($vals['applicationType'])) {
                $this->applicationType = $vals['applicationType'];
            }
            if (isset($vals['systemName'])) {
                $this->systemName = $vals['systemName'];
            }
            if (isset($vals['accessLocation'])) {
                $this->accessLocation = $vals['accessLocation'];
            }
        }
    }

    public function getName()
    {
        return 'LoginSession';
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
                case 1:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->tokenKey);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::I64) {
                        $xfer += $input->readI64($this->expirationTime);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 11:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->applicationType);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 12:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->systemName);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 22:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->accessLocation);
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
        $xfer += $output->writeStructBegin('LoginSession');
        if ($this->tokenKey !== null) {
            $xfer += $output->writeFieldBegin('tokenKey', TType::STRING, 1);
            $xfer += $output->writeString($this->tokenKey);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->expirationTime !== null) {
            $xfer += $output->writeFieldBegin('expirationTime', TType::I64, 3);
            $xfer += $output->writeI64($this->expirationTime);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->applicationType !== null) {
            $xfer += $output->writeFieldBegin('applicationType', TType::I32, 11);
            $xfer += $output->writeI32($this->applicationType);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->systemName !== null) {
            $xfer += $output->writeFieldBegin('systemName', TType::STRING, 12);
            $xfer += $output->writeString($this->systemName);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->accessLocation !== null) {
            $xfer += $output->writeFieldBegin('accessLocation', TType::STRING, 22);
            $xfer += $output->writeString($this->accessLocation);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}