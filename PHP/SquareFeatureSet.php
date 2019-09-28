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

class SquareFeatureSet
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'squareMid',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'revision',
            'isRequired' => false,
            'type' => TType::I64,
        ),
        11 => array(
            'var' => 'creatingSecretSquareChat',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\SquareFeature',
        ),
        12 => array(
            'var' => 'invitingIntoOpenSquareChat',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\SquareFeature',
        ),
    );

    /**
     * @var string
     */
    public $squareMid = null;
    /**
     * @var int
     */
    public $revision = null;
    /**
     * @var \SquareFeature
     */
    public $creatingSecretSquareChat = null;
    /**
     * @var \SquareFeature
     */
    public $invitingIntoOpenSquareChat = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['squareMid'])) {
                $this->squareMid = $vals['squareMid'];
            }
            if (isset($vals['revision'])) {
                $this->revision = $vals['revision'];
            }
            if (isset($vals['creatingSecretSquareChat'])) {
                $this->creatingSecretSquareChat = $vals['creatingSecretSquareChat'];
            }
            if (isset($vals['invitingIntoOpenSquareChat'])) {
                $this->invitingIntoOpenSquareChat = $vals['invitingIntoOpenSquareChat'];
            }
        }
    }

    public function getName()
    {
        return 'SquareFeatureSet';
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
                        $xfer += $input->readString($this->squareMid);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::I64) {
                        $xfer += $input->readI64($this->revision);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 11:
                    if ($ftype == TType::STRUCT) {
                        $this->creatingSecretSquareChat = new \SquareFeature();
                        $xfer += $this->creatingSecretSquareChat->read($input);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 12:
                    if ($ftype == TType::STRUCT) {
                        $this->invitingIntoOpenSquareChat = new \SquareFeature();
                        $xfer += $this->invitingIntoOpenSquareChat->read($input);
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
        $xfer += $output->writeStructBegin('SquareFeatureSet');
        if ($this->squareMid !== null) {
            $xfer += $output->writeFieldBegin('squareMid', TType::STRING, 1);
            $xfer += $output->writeString($this->squareMid);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->revision !== null) {
            $xfer += $output->writeFieldBegin('revision', TType::I64, 2);
            $xfer += $output->writeI64($this->revision);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->creatingSecretSquareChat !== null) {
            if (!is_object($this->creatingSecretSquareChat)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('creatingSecretSquareChat', TType::STRUCT, 11);
            $xfer += $this->creatingSecretSquareChat->write($output);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->invitingIntoOpenSquareChat !== null) {
            if (!is_object($this->invitingIntoOpenSquareChat)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('invitingIntoOpenSquareChat', TType::STRUCT, 12);
            $xfer += $this->invitingIntoOpenSquareChat->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}