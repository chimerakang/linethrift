/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

public class SquareAuthority implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("SquareAuthority");

  private static final TField SQUARE_MID_FIELD_DESC = new TField("squareMid", TType.STRING, (short)1);
  private static final TField UPDATE_SQUARE_PROFILE_FIELD_DESC = new TField("updateSquareProfile", TType.I32, (short)2);
  private static final TField INVITE_NEW_MEMBER_FIELD_DESC = new TField("inviteNewMember", TType.I32, (short)3);
  private static final TField APPROVE_JOIN_REQUEST_FIELD_DESC = new TField("approveJoinRequest", TType.I32, (short)4);
  private static final TField CREATE_POST_FIELD_DESC = new TField("createPost", TType.I32, (short)5);
  private static final TField CREATE_OPEN_SQUARE_CHAT_FIELD_DESC = new TField("createOpenSquareChat", TType.I32, (short)6);
  private static final TField DELETE_SQUARE_CHAT_OR_POST_FIELD_DESC = new TField("deleteSquareChatOrPost", TType.I32, (short)7);
  private static final TField REMOVE_SQUARE_MEMBER_FIELD_DESC = new TField("removeSquareMember", TType.I32, (short)8);
  private static final TField GRANT_ROLE_FIELD_DESC = new TField("grantRole", TType.I32, (short)9);
  private static final TField ENABLE_INVITATION_TICKET_FIELD_DESC = new TField("enableInvitationTicket", TType.I32, (short)10);
  private static final TField REVISION_FIELD_DESC = new TField("revision", TType.I64, (short)11);

  private String squareMid;
  private SquareMemberRole updateSquareProfile;
  private SquareMemberRole inviteNewMember;
  private SquareMemberRole approveJoinRequest;
  private SquareMemberRole createPost;
  private SquareMemberRole createOpenSquareChat;
  private SquareMemberRole deleteSquareChatOrPost;
  private SquareMemberRole removeSquareMember;
  private SquareMemberRole grantRole;
  private SquareMemberRole enableInvitationTicket;
  private long revision;

  // isset id assignments
  private static final int __REVISION_ISSET_ID = 0;
  private boolean[] __isset_vector = new boolean[1];

  public SquareAuthority() {
  }

  public SquareAuthority(
    String squareMid,
    SquareMemberRole updateSquareProfile,
    SquareMemberRole inviteNewMember,
    SquareMemberRole approveJoinRequest,
    SquareMemberRole createPost,
    SquareMemberRole createOpenSquareChat,
    SquareMemberRole deleteSquareChatOrPost,
    SquareMemberRole removeSquareMember,
    SquareMemberRole grantRole,
    SquareMemberRole enableInvitationTicket,
    long revision)
  {
    this();
    this.squareMid = squareMid;
    this.updateSquareProfile = updateSquareProfile;
    this.inviteNewMember = inviteNewMember;
    this.approveJoinRequest = approveJoinRequest;
    this.createPost = createPost;
    this.createOpenSquareChat = createOpenSquareChat;
    this.deleteSquareChatOrPost = deleteSquareChatOrPost;
    this.removeSquareMember = removeSquareMember;
    this.grantRole = grantRole;
    this.enableInvitationTicket = enableInvitationTicket;
    this.revision = revision;
    setRevisionIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SquareAuthority(SquareAuthority other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    if (other.isSetSquareMid()) {
      this.squareMid = other.squareMid;
    }
    if (other.isSetUpdateSquareProfile()) {
      this.updateSquareProfile = other.updateSquareProfile;
    }
    if (other.isSetInviteNewMember()) {
      this.inviteNewMember = other.inviteNewMember;
    }
    if (other.isSetApproveJoinRequest()) {
      this.approveJoinRequest = other.approveJoinRequest;
    }
    if (other.isSetCreatePost()) {
      this.createPost = other.createPost;
    }
    if (other.isSetCreateOpenSquareChat()) {
      this.createOpenSquareChat = other.createOpenSquareChat;
    }
    if (other.isSetDeleteSquareChatOrPost()) {
      this.deleteSquareChatOrPost = other.deleteSquareChatOrPost;
    }
    if (other.isSetRemoveSquareMember()) {
      this.removeSquareMember = other.removeSquareMember;
    }
    if (other.isSetGrantRole()) {
      this.grantRole = other.grantRole;
    }
    if (other.isSetEnableInvitationTicket()) {
      this.enableInvitationTicket = other.enableInvitationTicket;
    }
    this.revision = other.revision;
  }

  public SquareAuthority deepCopy() {
    return new SquareAuthority(this);
  }

  public void clear() {
    this.squareMid = null;
    this.updateSquareProfile = null;
    this.inviteNewMember = null;
    this.approveJoinRequest = null;
    this.createPost = null;
    this.createOpenSquareChat = null;
    this.deleteSquareChatOrPost = null;
    this.removeSquareMember = null;
    this.grantRole = null;
    this.enableInvitationTicket = null;
    setRevisionIsSet(false);
    this.revision = 0;
  }

  public String getSquareMid() {
    return this.squareMid;
  }

  public void setSquareMid(String squareMid) {
    this.squareMid = squareMid;
  }

  public void unsetSquareMid() {
    this.squareMid = null;
  }

  /** Returns true if field squareMid is set (has been assigned a value) and false otherwise */
  public boolean isSetSquareMid() {
    return this.squareMid != null;
  }

  public void setSquareMidIsSet(boolean value) {
    if (!value) {
      this.squareMid = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getUpdateSquareProfile() {
    return this.updateSquareProfile;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setUpdateSquareProfile(SquareMemberRole updateSquareProfile) {
    this.updateSquareProfile = updateSquareProfile;
  }

  public void unsetUpdateSquareProfile() {
    this.updateSquareProfile = null;
  }

  /** Returns true if field updateSquareProfile is set (has been assigned a value) and false otherwise */
  public boolean isSetUpdateSquareProfile() {
    return this.updateSquareProfile != null;
  }

  public void setUpdateSquareProfileIsSet(boolean value) {
    if (!value) {
      this.updateSquareProfile = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getInviteNewMember() {
    return this.inviteNewMember;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setInviteNewMember(SquareMemberRole inviteNewMember) {
    this.inviteNewMember = inviteNewMember;
  }

  public void unsetInviteNewMember() {
    this.inviteNewMember = null;
  }

  /** Returns true if field inviteNewMember is set (has been assigned a value) and false otherwise */
  public boolean isSetInviteNewMember() {
    return this.inviteNewMember != null;
  }

  public void setInviteNewMemberIsSet(boolean value) {
    if (!value) {
      this.inviteNewMember = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getApproveJoinRequest() {
    return this.approveJoinRequest;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setApproveJoinRequest(SquareMemberRole approveJoinRequest) {
    this.approveJoinRequest = approveJoinRequest;
  }

  public void unsetApproveJoinRequest() {
    this.approveJoinRequest = null;
  }

  /** Returns true if field approveJoinRequest is set (has been assigned a value) and false otherwise */
  public boolean isSetApproveJoinRequest() {
    return this.approveJoinRequest != null;
  }

  public void setApproveJoinRequestIsSet(boolean value) {
    if (!value) {
      this.approveJoinRequest = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getCreatePost() {
    return this.createPost;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setCreatePost(SquareMemberRole createPost) {
    this.createPost = createPost;
  }

  public void unsetCreatePost() {
    this.createPost = null;
  }

  /** Returns true if field createPost is set (has been assigned a value) and false otherwise */
  public boolean isSetCreatePost() {
    return this.createPost != null;
  }

  public void setCreatePostIsSet(boolean value) {
    if (!value) {
      this.createPost = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getCreateOpenSquareChat() {
    return this.createOpenSquareChat;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setCreateOpenSquareChat(SquareMemberRole createOpenSquareChat) {
    this.createOpenSquareChat = createOpenSquareChat;
  }

  public void unsetCreateOpenSquareChat() {
    this.createOpenSquareChat = null;
  }

  /** Returns true if field createOpenSquareChat is set (has been assigned a value) and false otherwise */
  public boolean isSetCreateOpenSquareChat() {
    return this.createOpenSquareChat != null;
  }

  public void setCreateOpenSquareChatIsSet(boolean value) {
    if (!value) {
      this.createOpenSquareChat = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getDeleteSquareChatOrPost() {
    return this.deleteSquareChatOrPost;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setDeleteSquareChatOrPost(SquareMemberRole deleteSquareChatOrPost) {
    this.deleteSquareChatOrPost = deleteSquareChatOrPost;
  }

  public void unsetDeleteSquareChatOrPost() {
    this.deleteSquareChatOrPost = null;
  }

  /** Returns true if field deleteSquareChatOrPost is set (has been assigned a value) and false otherwise */
  public boolean isSetDeleteSquareChatOrPost() {
    return this.deleteSquareChatOrPost != null;
  }

  public void setDeleteSquareChatOrPostIsSet(boolean value) {
    if (!value) {
      this.deleteSquareChatOrPost = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getRemoveSquareMember() {
    return this.removeSquareMember;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setRemoveSquareMember(SquareMemberRole removeSquareMember) {
    this.removeSquareMember = removeSquareMember;
  }

  public void unsetRemoveSquareMember() {
    this.removeSquareMember = null;
  }

  /** Returns true if field removeSquareMember is set (has been assigned a value) and false otherwise */
  public boolean isSetRemoveSquareMember() {
    return this.removeSquareMember != null;
  }

  public void setRemoveSquareMemberIsSet(boolean value) {
    if (!value) {
      this.removeSquareMember = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getGrantRole() {
    return this.grantRole;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setGrantRole(SquareMemberRole grantRole) {
    this.grantRole = grantRole;
  }

  public void unsetGrantRole() {
    this.grantRole = null;
  }

  /** Returns true if field grantRole is set (has been assigned a value) and false otherwise */
  public boolean isSetGrantRole() {
    return this.grantRole != null;
  }

  public void setGrantRoleIsSet(boolean value) {
    if (!value) {
      this.grantRole = null;
    }
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public SquareMemberRole getEnableInvitationTicket() {
    return this.enableInvitationTicket;
  }

  /**
   * 
   * @see SquareMemberRole
   */
  public void setEnableInvitationTicket(SquareMemberRole enableInvitationTicket) {
    this.enableInvitationTicket = enableInvitationTicket;
  }

  public void unsetEnableInvitationTicket() {
    this.enableInvitationTicket = null;
  }

  /** Returns true if field enableInvitationTicket is set (has been assigned a value) and false otherwise */
  public boolean isSetEnableInvitationTicket() {
    return this.enableInvitationTicket != null;
  }

  public void setEnableInvitationTicketIsSet(boolean value) {
    if (!value) {
      this.enableInvitationTicket = null;
    }
  }

  public long getRevision() {
    return this.revision;
  }

  public void setRevision(long revision) {
    this.revision = revision;
    setRevisionIsSet(true);
  }

  public void unsetRevision() {
    __isset_vector[__REVISION_ISSET_ID] = false;
  }

  /** Returns true if field revision is set (has been assigned a value) and false otherwise */
  public boolean isSetRevision() {
    return __isset_vector[__REVISION_ISSET_ID];
  }

  public void setRevisionIsSet(boolean value) {
    __isset_vector[__REVISION_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof SquareAuthority)
      return this.equals((SquareAuthority)that);
    return false;
  }

  public boolean equals(SquareAuthority that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_squareMid = true && this.isSetSquareMid();
    boolean that_present_squareMid = true && that.isSetSquareMid();
    if (this_present_squareMid || that_present_squareMid) {
      if (!(this_present_squareMid && that_present_squareMid))
        return false;
      if (!this.squareMid.equals(that.squareMid))
        return false;
    }

    boolean this_present_updateSquareProfile = true && this.isSetUpdateSquareProfile();
    boolean that_present_updateSquareProfile = true && that.isSetUpdateSquareProfile();
    if (this_present_updateSquareProfile || that_present_updateSquareProfile) {
      if (!(this_present_updateSquareProfile && that_present_updateSquareProfile))
        return false;
      if (!this.updateSquareProfile.equals(that.updateSquareProfile))
        return false;
    }

    boolean this_present_inviteNewMember = true && this.isSetInviteNewMember();
    boolean that_present_inviteNewMember = true && that.isSetInviteNewMember();
    if (this_present_inviteNewMember || that_present_inviteNewMember) {
      if (!(this_present_inviteNewMember && that_present_inviteNewMember))
        return false;
      if (!this.inviteNewMember.equals(that.inviteNewMember))
        return false;
    }

    boolean this_present_approveJoinRequest = true && this.isSetApproveJoinRequest();
    boolean that_present_approveJoinRequest = true && that.isSetApproveJoinRequest();
    if (this_present_approveJoinRequest || that_present_approveJoinRequest) {
      if (!(this_present_approveJoinRequest && that_present_approveJoinRequest))
        return false;
      if (!this.approveJoinRequest.equals(that.approveJoinRequest))
        return false;
    }

    boolean this_present_createPost = true && this.isSetCreatePost();
    boolean that_present_createPost = true && that.isSetCreatePost();
    if (this_present_createPost || that_present_createPost) {
      if (!(this_present_createPost && that_present_createPost))
        return false;
      if (!this.createPost.equals(that.createPost))
        return false;
    }

    boolean this_present_createOpenSquareChat = true && this.isSetCreateOpenSquareChat();
    boolean that_present_createOpenSquareChat = true && that.isSetCreateOpenSquareChat();
    if (this_present_createOpenSquareChat || that_present_createOpenSquareChat) {
      if (!(this_present_createOpenSquareChat && that_present_createOpenSquareChat))
        return false;
      if (!this.createOpenSquareChat.equals(that.createOpenSquareChat))
        return false;
    }

    boolean this_present_deleteSquareChatOrPost = true && this.isSetDeleteSquareChatOrPost();
    boolean that_present_deleteSquareChatOrPost = true && that.isSetDeleteSquareChatOrPost();
    if (this_present_deleteSquareChatOrPost || that_present_deleteSquareChatOrPost) {
      if (!(this_present_deleteSquareChatOrPost && that_present_deleteSquareChatOrPost))
        return false;
      if (!this.deleteSquareChatOrPost.equals(that.deleteSquareChatOrPost))
        return false;
    }

    boolean this_present_removeSquareMember = true && this.isSetRemoveSquareMember();
    boolean that_present_removeSquareMember = true && that.isSetRemoveSquareMember();
    if (this_present_removeSquareMember || that_present_removeSquareMember) {
      if (!(this_present_removeSquareMember && that_present_removeSquareMember))
        return false;
      if (!this.removeSquareMember.equals(that.removeSquareMember))
        return false;
    }

    boolean this_present_grantRole = true && this.isSetGrantRole();
    boolean that_present_grantRole = true && that.isSetGrantRole();
    if (this_present_grantRole || that_present_grantRole) {
      if (!(this_present_grantRole && that_present_grantRole))
        return false;
      if (!this.grantRole.equals(that.grantRole))
        return false;
    }

    boolean this_present_enableInvitationTicket = true && this.isSetEnableInvitationTicket();
    boolean that_present_enableInvitationTicket = true && that.isSetEnableInvitationTicket();
    if (this_present_enableInvitationTicket || that_present_enableInvitationTicket) {
      if (!(this_present_enableInvitationTicket && that_present_enableInvitationTicket))
        return false;
      if (!this.enableInvitationTicket.equals(that.enableInvitationTicket))
        return false;
    }

    boolean this_present_revision = true;
    boolean that_present_revision = true;
    if (this_present_revision || that_present_revision) {
      if (!(this_present_revision && that_present_revision))
        return false;
      if (this.revision != that.revision)
        return false;
    }

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    SquareAuthority other = (SquareAuthority)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetSquareMid(), other.isSetSquareMid());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSquareMid()) {
      lastComparison = TBaseHelper.compareTo(this.squareMid, other.squareMid);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetUpdateSquareProfile(), other.isSetUpdateSquareProfile());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetUpdateSquareProfile()) {
      lastComparison = TBaseHelper.compareTo(this.updateSquareProfile, other.updateSquareProfile);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetInviteNewMember(), other.isSetInviteNewMember());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetInviteNewMember()) {
      lastComparison = TBaseHelper.compareTo(this.inviteNewMember, other.inviteNewMember);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetApproveJoinRequest(), other.isSetApproveJoinRequest());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetApproveJoinRequest()) {
      lastComparison = TBaseHelper.compareTo(this.approveJoinRequest, other.approveJoinRequest);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetCreatePost(), other.isSetCreatePost());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreatePost()) {
      lastComparison = TBaseHelper.compareTo(this.createPost, other.createPost);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetCreateOpenSquareChat(), other.isSetCreateOpenSquareChat());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreateOpenSquareChat()) {
      lastComparison = TBaseHelper.compareTo(this.createOpenSquareChat, other.createOpenSquareChat);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetDeleteSquareChatOrPost(), other.isSetDeleteSquareChatOrPost());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetDeleteSquareChatOrPost()) {
      lastComparison = TBaseHelper.compareTo(this.deleteSquareChatOrPost, other.deleteSquareChatOrPost);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetRemoveSquareMember(), other.isSetRemoveSquareMember());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRemoveSquareMember()) {
      lastComparison = TBaseHelper.compareTo(this.removeSquareMember, other.removeSquareMember);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetGrantRole(), other.isSetGrantRole());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetGrantRole()) {
      lastComparison = TBaseHelper.compareTo(this.grantRole, other.grantRole);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetEnableInvitationTicket(), other.isSetEnableInvitationTicket());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetEnableInvitationTicket()) {
      lastComparison = TBaseHelper.compareTo(this.enableInvitationTicket, other.enableInvitationTicket);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetRevision(), other.isSetRevision());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRevision()) {
      lastComparison = TBaseHelper.compareTo(this.revision, other.revision);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id) {
        case 1: // SQUARE_MID
          if (field.type == TType.STRING) {
            this.squareMid = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // UPDATE_SQUARE_PROFILE
          if (field.type == TType.I32) {
            this.updateSquareProfile = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // INVITE_NEW_MEMBER
          if (field.type == TType.I32) {
            this.inviteNewMember = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // APPROVE_JOIN_REQUEST
          if (field.type == TType.I32) {
            this.approveJoinRequest = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 5: // CREATE_POST
          if (field.type == TType.I32) {
            this.createPost = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 6: // CREATE_OPEN_SQUARE_CHAT
          if (field.type == TType.I32) {
            this.createOpenSquareChat = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 7: // DELETE_SQUARE_CHAT_OR_POST
          if (field.type == TType.I32) {
            this.deleteSquareChatOrPost = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 8: // REMOVE_SQUARE_MEMBER
          if (field.type == TType.I32) {
            this.removeSquareMember = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 9: // GRANT_ROLE
          if (field.type == TType.I32) {
            this.grantRole = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 10: // ENABLE_INVITATION_TICKET
          if (field.type == TType.I32) {
            this.enableInvitationTicket = SquareMemberRole.findByValue(iprot.readI32());
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 11: // REVISION
          if (field.type == TType.I64) {
            this.revision = iprot.readI64();
            setRevisionIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.squareMid != null) {
      oprot.writeFieldBegin(SQUARE_MID_FIELD_DESC);
      oprot.writeString(this.squareMid);
      oprot.writeFieldEnd();
    }
    if (this.updateSquareProfile != null) {
      oprot.writeFieldBegin(UPDATE_SQUARE_PROFILE_FIELD_DESC);
      oprot.writeI32(this.updateSquareProfile.getValue());
      oprot.writeFieldEnd();
    }
    if (this.inviteNewMember != null) {
      oprot.writeFieldBegin(INVITE_NEW_MEMBER_FIELD_DESC);
      oprot.writeI32(this.inviteNewMember.getValue());
      oprot.writeFieldEnd();
    }
    if (this.approveJoinRequest != null) {
      oprot.writeFieldBegin(APPROVE_JOIN_REQUEST_FIELD_DESC);
      oprot.writeI32(this.approveJoinRequest.getValue());
      oprot.writeFieldEnd();
    }
    if (this.createPost != null) {
      oprot.writeFieldBegin(CREATE_POST_FIELD_DESC);
      oprot.writeI32(this.createPost.getValue());
      oprot.writeFieldEnd();
    }
    if (this.createOpenSquareChat != null) {
      oprot.writeFieldBegin(CREATE_OPEN_SQUARE_CHAT_FIELD_DESC);
      oprot.writeI32(this.createOpenSquareChat.getValue());
      oprot.writeFieldEnd();
    }
    if (this.deleteSquareChatOrPost != null) {
      oprot.writeFieldBegin(DELETE_SQUARE_CHAT_OR_POST_FIELD_DESC);
      oprot.writeI32(this.deleteSquareChatOrPost.getValue());
      oprot.writeFieldEnd();
    }
    if (this.removeSquareMember != null) {
      oprot.writeFieldBegin(REMOVE_SQUARE_MEMBER_FIELD_DESC);
      oprot.writeI32(this.removeSquareMember.getValue());
      oprot.writeFieldEnd();
    }
    if (this.grantRole != null) {
      oprot.writeFieldBegin(GRANT_ROLE_FIELD_DESC);
      oprot.writeI32(this.grantRole.getValue());
      oprot.writeFieldEnd();
    }
    if (this.enableInvitationTicket != null) {
      oprot.writeFieldBegin(ENABLE_INVITATION_TICKET_FIELD_DESC);
      oprot.writeI32(this.enableInvitationTicket.getValue());
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(REVISION_FIELD_DESC);
    oprot.writeI64(this.revision);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("SquareAuthority(");
    boolean first = true;

    sb.append("squareMid:");
    if (this.squareMid == null) {
      sb.append("null");
    } else {
      sb.append(this.squareMid);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("updateSquareProfile:");
    if (this.updateSquareProfile == null) {
      sb.append("null");
    } else {
      sb.append(this.updateSquareProfile);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("inviteNewMember:");
    if (this.inviteNewMember == null) {
      sb.append("null");
    } else {
      sb.append(this.inviteNewMember);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("approveJoinRequest:");
    if (this.approveJoinRequest == null) {
      sb.append("null");
    } else {
      sb.append(this.approveJoinRequest);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("createPost:");
    if (this.createPost == null) {
      sb.append("null");
    } else {
      sb.append(this.createPost);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("createOpenSquareChat:");
    if (this.createOpenSquareChat == null) {
      sb.append("null");
    } else {
      sb.append(this.createOpenSquareChat);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("deleteSquareChatOrPost:");
    if (this.deleteSquareChatOrPost == null) {
      sb.append("null");
    } else {
      sb.append(this.deleteSquareChatOrPost);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("removeSquareMember:");
    if (this.removeSquareMember == null) {
      sb.append("null");
    } else {
      sb.append(this.removeSquareMember);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("grantRole:");
    if (this.grantRole == null) {
      sb.append("null");
    } else {
      sb.append(this.grantRole);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("enableInvitationTicket:");
    if (this.enableInvitationTicket == null) {
      sb.append("null");
    } else {
      sb.append(this.enableInvitationTicket);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("revision:");
    sb.append(this.revision);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}
