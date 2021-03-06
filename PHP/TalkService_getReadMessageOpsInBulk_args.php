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

class TalkService_getReadMessageOpsInBulk_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'chatIds',
            'isRequired' => false,
            'type' => TType::LST,
            'etype' => TType::STRING,
            'elem' => array(
                'type' => TType::STRING,
                ),
        ),
    );

    /**
     * @var string[]
     */
    public $chatIds = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['chatIds'])) {
                $this->chatIds = $vals['chatIds'];
            }
        }
    }

    public function getName()
    {
        return 'TalkService_getReadMessageOpsInBulk_args';
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
                    if ($ftype == TType::LST) {
                        $this->chatIds = array();
                        $_size2014 = 0;
                        $_etype2017 = 0;
                        $xfer += $input->readListBegin($_etype2017, $_size2014);
                        for ($_i2018 = 0; $_i2018 < $_size2014; ++$_i2018) {
                            $elem2019 = null;
                            $xfer += $input->readString($elem2019);
                            $this->chatIds []= $elem2019;
                        }
                        $xfer += $input->readListEnd();
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
        $xfer += $output->writeStructBegin('TalkService_getReadMessageOpsInBulk_args');
        if ($this->chatIds !== null) {
            if (!is_array($this->chatIds)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('chatIds', TType::LST, 2);
            $output->writeListBegin(TType::STRING, count($this->chatIds));
            foreach ($this->chatIds as $iter2020) {
                $xfer += $output->writeString($iter2020);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
