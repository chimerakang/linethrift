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

class LoginResult
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'authToken',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'certificate',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'verifier',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        4 => array(
            'var' => 'pinCode',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        5 => array(
            'var' => 'type',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        6 => array(
            'var' => 'lastPrimaryBindTime',
            'isRequired' => false,
            'type' => TType::I64,
        ),
        7 => array(
            'var' => 'displayMessage',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        8 => array(
            'var' => 'sessionForSMSConfirm',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\VerificationSessionData',
        ),
    );

    /**
     * @var string
     */
    public $authToken = null;
    /**
     * @var string
     */
    public $certificate = null;
    /**
     * @var string
     */
    public $verifier = null;
    /**
     * @var string
     */
    public $pinCode = null;
    /**
     * @var int
     */
    public $type = null;
    /**
     * @var int
     */
    public $lastPrimaryBindTime = null;
    /**
     * @var string
     */
    public $displayMessage = null;
    /**
     * @var \VerificationSessionData
     */
    public $sessionForSMSConfirm = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['authToken'])) {
                $this->authToken = $vals['authToken'];
            }
            if (isset($vals['certificate'])) {
                $this->certificate = $vals['certificate'];
            }
            if (isset($vals['verifier'])) {
                $this->verifier = $vals['verifier'];
            }
            if (isset($vals['pinCode'])) {
                $this->pinCode = $vals['pinCode'];
            }
            if (isset($vals['type'])) {
                $this->type = $vals['type'];
            }
            if (isset($vals['lastPrimaryBindTime'])) {
                $this->lastPrimaryBindTime = $vals['lastPrimaryBindTime'];
            }
            if (isset($vals['displayMessage'])) {
                $this->displayMessage = $vals['displayMessage'];
            }
            if (isset($vals['sessionForSMSConfirm'])) {
                $this->sessionForSMSConfirm = $vals['sessionForSMSConfirm'];
            }
        }
    }

    public function getName()
    {
        return 'LoginResult';
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
                        $xfer += $input->readString($this->authToken);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->certificate);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->verifier);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->pinCode);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 5:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->type);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 6:
                    if ($ftype == TType::I64) {
                        $xfer += $input->readI64($this->lastPrimaryBindTime);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 7:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->displayMessage);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 8:
                    if ($ftype == TType::STRUCT) {
                        $this->sessionForSMSConfirm = new \VerificationSessionData();
                        $xfer += $this->sessionForSMSConfirm->read($input);
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
        $xfer += $output->writeStructBegin('LoginResult');
        if ($this->authToken !== null) {
            $xfer += $output->writeFieldBegin('authToken', TType::STRING, 1);
            $xfer += $output->writeString($this->authToken);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->certificate !== null) {
            $xfer += $output->writeFieldBegin('certificate', TType::STRING, 2);
            $xfer += $output->writeString($this->certificate);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->verifier !== null) {
            $xfer += $output->writeFieldBegin('verifier', TType::STRING, 3);
            $xfer += $output->writeString($this->verifier);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->pinCode !== null) {
            $xfer += $output->writeFieldBegin('pinCode', TType::STRING, 4);
            $xfer += $output->writeString($this->pinCode);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->type !== null) {
            $xfer += $output->writeFieldBegin('type', TType::I32, 5);
            $xfer += $output->writeI32($this->type);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->lastPrimaryBindTime !== null) {
            $xfer += $output->writeFieldBegin('lastPrimaryBindTime', TType::I64, 6);
            $xfer += $output->writeI64($this->lastPrimaryBindTime);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->displayMessage !== null) {
            $xfer += $output->writeFieldBegin('displayMessage', TType::STRING, 7);
            $xfer += $output->writeString($this->displayMessage);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->sessionForSMSConfirm !== null) {
            if (!is_object($this->sessionForSMSConfirm)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('sessionForSMSConfirm', TType::STRUCT, 8);
            $xfer += $this->sessionForSMSConfirm->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}