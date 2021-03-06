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

class SnsAdaptorServiceClient implements \SnsAdaptorServiceIf
{
    protected $input_ = null;
    protected $output_ = null;

    protected $seqid_ = 0;

    public function __construct($input, $output = null)
    {
        $this->input_ = $input;
        $this->output_ = $output ? $output : $input;
    }


    public function getSnsFriends($snsIdType, $snsAccessToken, $startIdx, $limit)
    {
        $this->send_getSnsFriends($snsIdType, $snsAccessToken, $startIdx, $limit);
        return $this->recv_getSnsFriends();
    }

    public function send_getSnsFriends($snsIdType, $snsAccessToken, $startIdx, $limit)
    {
        $args = new \SnsAdaptorService_getSnsFriends_args();
        $args->snsIdType = $snsIdType;
        $args->snsAccessToken = $snsAccessToken;
        $args->startIdx = $startIdx;
        $args->limit = $limit;
        $bin_accel = ($this->output_ instanceof TBinaryProtocolAccelerated) && function_exists('thrift_protocol_write_binary');
        if ($bin_accel) {
            thrift_protocol_write_binary(
                $this->output_,
                'getSnsFriends',
                TMessageType::CALL,
                $args,
                $this->seqid_,
                $this->output_->isStrictWrite()
            );
        } else {
            $this->output_->writeMessageBegin('getSnsFriends', TMessageType::CALL, $this->seqid_);
            $args->write($this->output_);
            $this->output_->writeMessageEnd();
            $this->output_->getTransport()->flush();
        }
    }

    public function recv_getSnsFriends()
    {
        $bin_accel = ($this->input_ instanceof TBinaryProtocolAccelerated) && function_exists('thrift_protocol_read_binary');
        if ($bin_accel) {
            $result = thrift_protocol_read_binary(
                $this->input_,
                '\SnsAdaptorService_getSnsFriends_result',
                $this->input_->isStrictRead()
            );
        } else {
            $rseqid = 0;
            $fname = null;
            $mtype = 0;

            $this->input_->readMessageBegin($fname, $mtype, $rseqid);
            if ($mtype == TMessageType::EXCEPTION) {
                $x = new TApplicationException();
                $x->read($this->input_);
                $this->input_->readMessageEnd();
                throw $x;
            }
            $result = new \SnsAdaptorService_getSnsFriends_result();
            $result->read($this->input_);
            $this->input_->readMessageEnd();
        }
        if ($result->success !== null) {
            return $result->success;
        }
        if ($result->e !== null) {
            throw $result->e;
        }
        throw new \Exception("getSnsFriends failed: unknown result");
    }

    public function getSnsMyProfile($snsIdType, $snsAccessToken)
    {
        $this->send_getSnsMyProfile($snsIdType, $snsAccessToken);
        return $this->recv_getSnsMyProfile();
    }

    public function send_getSnsMyProfile($snsIdType, $snsAccessToken)
    {
        $args = new \SnsAdaptorService_getSnsMyProfile_args();
        $args->snsIdType = $snsIdType;
        $args->snsAccessToken = $snsAccessToken;
        $bin_accel = ($this->output_ instanceof TBinaryProtocolAccelerated) && function_exists('thrift_protocol_write_binary');
        if ($bin_accel) {
            thrift_protocol_write_binary(
                $this->output_,
                'getSnsMyProfile',
                TMessageType::CALL,
                $args,
                $this->seqid_,
                $this->output_->isStrictWrite()
            );
        } else {
            $this->output_->writeMessageBegin('getSnsMyProfile', TMessageType::CALL, $this->seqid_);
            $args->write($this->output_);
            $this->output_->writeMessageEnd();
            $this->output_->getTransport()->flush();
        }
    }

    public function recv_getSnsMyProfile()
    {
        $bin_accel = ($this->input_ instanceof TBinaryProtocolAccelerated) && function_exists('thrift_protocol_read_binary');
        if ($bin_accel) {
            $result = thrift_protocol_read_binary(
                $this->input_,
                '\SnsAdaptorService_getSnsMyProfile_result',
                $this->input_->isStrictRead()
            );
        } else {
            $rseqid = 0;
            $fname = null;
            $mtype = 0;

            $this->input_->readMessageBegin($fname, $mtype, $rseqid);
            if ($mtype == TMessageType::EXCEPTION) {
                $x = new TApplicationException();
                $x->read($this->input_);
                $this->input_->readMessageEnd();
                throw $x;
            }
            $result = new \SnsAdaptorService_getSnsMyProfile_result();
            $result->read($this->input_);
            $this->input_->readMessageEnd();
        }
        if ($result->success !== null) {
            return $result->success;
        }
        if ($result->e !== null) {
            throw $result->e;
        }
        throw new \Exception("getSnsMyProfile failed: unknown result");
    }

    public function postSnsInvitationMessage($snsIdType, $snsAccessToken, $toSnsUserId)
    {
        $this->send_postSnsInvitationMessage($snsIdType, $snsAccessToken, $toSnsUserId);
        $this->recv_postSnsInvitationMessage();
    }

    public function send_postSnsInvitationMessage($snsIdType, $snsAccessToken, $toSnsUserId)
    {
        $args = new \SnsAdaptorService_postSnsInvitationMessage_args();
        $args->snsIdType = $snsIdType;
        $args->snsAccessToken = $snsAccessToken;
        $args->toSnsUserId = $toSnsUserId;
        $bin_accel = ($this->output_ instanceof TBinaryProtocolAccelerated) && function_exists('thrift_protocol_write_binary');
        if ($bin_accel) {
            thrift_protocol_write_binary(
                $this->output_,
                'postSnsInvitationMessage',
                TMessageType::CALL,
                $args,
                $this->seqid_,
                $this->output_->isStrictWrite()
            );
        } else {
            $this->output_->writeMessageBegin('postSnsInvitationMessage', TMessageType::CALL, $this->seqid_);
            $args->write($this->output_);
            $this->output_->writeMessageEnd();
            $this->output_->getTransport()->flush();
        }
    }

    public function recv_postSnsInvitationMessage()
    {
        $bin_accel = ($this->input_ instanceof TBinaryProtocolAccelerated) && function_exists('thrift_protocol_read_binary');
        if ($bin_accel) {
            $result = thrift_protocol_read_binary(
                $this->input_,
                '\SnsAdaptorService_postSnsInvitationMessage_result',
                $this->input_->isStrictRead()
            );
        } else {
            $rseqid = 0;
            $fname = null;
            $mtype = 0;

            $this->input_->readMessageBegin($fname, $mtype, $rseqid);
            if ($mtype == TMessageType::EXCEPTION) {
                $x = new TApplicationException();
                $x->read($this->input_);
                $this->input_->readMessageEnd();
                throw $x;
            }
            $result = new \SnsAdaptorService_postSnsInvitationMessage_result();
            $result->read($this->input_);
            $this->input_->readMessageEnd();
        }
        if ($result->e !== null) {
            throw $result->e;
        }
        return;
    }
}
