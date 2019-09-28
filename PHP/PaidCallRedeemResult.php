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

class PaidCallRedeemResult
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'eventName',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'eventAmount',
            'isRequired' => false,
            'type' => TType::I32,
        ),
    );

    /**
     * @var string
     */
    public $eventName = null;
    /**
     * @var int
     */
    public $eventAmount = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['eventName'])) {
                $this->eventName = $vals['eventName'];
            }
            if (isset($vals['eventAmount'])) {
                $this->eventAmount = $vals['eventAmount'];
            }
        }
    }

    public function getName()
    {
        return 'PaidCallRedeemResult';
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
                        $xfer += $input->readString($this->eventName);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->eventAmount);
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
        $xfer += $output->writeStructBegin('PaidCallRedeemResult');
        if ($this->eventName !== null) {
            $xfer += $output->writeFieldBegin('eventName', TType::STRING, 1);
            $xfer += $output->writeString($this->eventName);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->eventAmount !== null) {
            $xfer += $output->writeFieldBegin('eventAmount', TType::I32, 2);
            $xfer += $output->writeI32($this->eventAmount);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}