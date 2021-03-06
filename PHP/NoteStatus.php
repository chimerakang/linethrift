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

class NoteStatus
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'noteCount',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        2 => array(
            'var' => 'latestCreatedAt',
            'isRequired' => false,
            'type' => TType::I64,
        ),
    );

    /**
     * @var int
     */
    public $noteCount = null;
    /**
     * @var int
     */
    public $latestCreatedAt = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['noteCount'])) {
                $this->noteCount = $vals['noteCount'];
            }
            if (isset($vals['latestCreatedAt'])) {
                $this->latestCreatedAt = $vals['latestCreatedAt'];
            }
        }
    }

    public function getName()
    {
        return 'NoteStatus';
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
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->noteCount);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::I64) {
                        $xfer += $input->readI64($this->latestCreatedAt);
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
        $xfer += $output->writeStructBegin('NoteStatus');
        if ($this->noteCount !== null) {
            $xfer += $output->writeFieldBegin('noteCount', TType::I32, 1);
            $xfer += $output->writeI32($this->noteCount);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->latestCreatedAt !== null) {
            $xfer += $output->writeFieldBegin('latestCreatedAt', TType::I64, 2);
            $xfer += $output->writeI64($this->latestCreatedAt);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
