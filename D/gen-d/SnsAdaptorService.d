/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
module SnsAdaptorService;

import thrift.base;
import thrift.codegen.base;
import thrift.util.hashset;

import line_types;

interface SnsAdaptorService {
  SnsFriends getSnsFriends(SnsIdType snsIdType, string snsAccessToken, int startIdx, int limit);
  SnsProfile getSnsMyProfile(SnsIdType snsIdType, string snsAccessToken);
  void postSnsInvitationMessage(SnsIdType snsIdType, string snsAccessToken, string toSnsUserId);

  alias line_types.TalkException TalkException;

  enum methodMeta = [
    TMethodMeta(`getSnsFriends`, 
      [TParamMeta(`snsIdType`, 2), TParamMeta(`snsAccessToken`, 3), TParamMeta(`startIdx`, 4), TParamMeta(`limit`, 5)],
      [TExceptionMeta(`e`, 1, `TalkException`)]
    ),
    TMethodMeta(`getSnsMyProfile`, 
      [TParamMeta(`snsIdType`, 2), TParamMeta(`snsAccessToken`, 3)],
      [TExceptionMeta(`e`, 1, `TalkException`)]
    ),
    TMethodMeta(`postSnsInvitationMessage`, 
      [TParamMeta(`snsIdType`, 2), TParamMeta(`snsAccessToken`, 3), TParamMeta(`toSnsUserId`, 4)],
      [TExceptionMeta(`e`, 1, `TalkException`)]
    )
  ];
}