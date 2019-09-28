/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package 
{
import org.apache.thrift.Set;
import flash.utils.Dictionary;
  public class ApplicationType   {
    public static const IOS:int = 16;
    public static const IOS_RC:int = 17;
    public static const IOS_BETA:int = 18;
    public static const IOS_ALPHA:int = 19;
    public static const ANDROID:int = 32;
    public static const ANDROID_RC:int = 33;
    public static const ANDROID_BETA:int = 34;
    public static const ANDROID_ALPHA:int = 35;
    public static const WAP:int = 48;
    public static const WAP_RC:int = 49;
    public static const WAP_BETA:int = 50;
    public static const WAP_ALPHA:int = 51;
    public static const BOT:int = 64;
    public static const BOT_RC:int = 65;
    public static const BOT_BETA:int = 66;
    public static const BOT_ALPHA:int = 67;
    public static const WEB:int = 80;
    public static const WEB_RC:int = 81;
    public static const WEB_BETA:int = 82;
    public static const WEB_ALPHA:int = 83;
    public static const DESKTOPWIN:int = 96;
    public static const DESKTOPWIN_RC:int = 97;
    public static const DESKTOPWIN_BETA:int = 98;
    public static const DESKTOPWIN_ALPHA:int = 99;
    public static const DESKTOPMAC:int = 112;
    public static const DESKTOPMAC_RC:int = 113;
    public static const DESKTOPMAC_BETA:int = 114;
    public static const DESKTOPMAC_ALPHA:int = 115;
    public static const CHANNELGW:int = 128;
    public static const CHANNELGW_RC:int = 129;
    public static const CHANNELGW_BETA:int = 130;
    public static const CHANNELGW_ALPHA:int = 131;
    public static const CHANNELCP:int = 144;
    public static const CHANNELCP_RC:int = 145;
    public static const CHANNELCP_BETA:int = 146;
    public static const CHANNELCP_ALPHA:int = 147;
    public static const WINPHONE:int = 160;
    public static const WINPHONE_RC:int = 161;
    public static const WINPHONE_BETA:int = 162;
    public static const WINPHONE_ALPHA:int = 163;
    public static const BLACKBERRY:int = 176;
    public static const BLACKBERRY_RC:int = 177;
    public static const BLACKBERRY_BETA:int = 178;
    public static const BLACKBERRY_ALPHA:int = 179;
    public static const WINMETRO:int = 192;
    public static const WINMETRO_RC:int = 193;
    public static const WINMETRO_BETA:int = 194;
    public static const WINMETRO_ALPHA:int = 195;
    public static const S40:int = 208;
    public static const S40_RC:int = 209;
    public static const S40_BETA:int = 210;
    public static const S40_ALPHA:int = 211;
    public static const CHRONO:int = 224;
    public static const CHRONO_RC:int = 225;
    public static const CHRONO_BETA:int = 226;
    public static const CHRONO_ALPHA:int = 227;
    public static const TIZEN:int = 256;
    public static const TIZEN_RC:int = 257;
    public static const TIZEN_BETA:int = 258;
    public static const TIZEN_ALPHA:int = 259;
    public static const VIRTUAL:int = 272;
    public static const FIREFOXOS:int = 288;
    public static const FIREFOXOS_RC:int = 289;
    public static const FIREFOXOS_BETA:int = 290;
    public static const FIREFOXOS_ALPHA:int = 291;
    public static const IOSIPAD:int = 304;
    public static const IOSIPAD_RC:int = 305;
    public static const IOSIPAD_BETA:int = 306;
    public static const IOSIPAD_ALPHA:int = 307;
    public static const BIZIOS:int = 320;
    public static const BIZIOS_RC:int = 321;
    public static const BIZIOS_BETA:int = 322;
    public static const BIZIOS_ALPHA:int = 323;
    public static const BIZANDROID:int = 336;
    public static const BIZANDROID_RC:int = 337;
    public static const BIZANDROID_BETA:int = 338;
    public static const BIZANDROID_ALPHA:int = 339;
    public static const BIZBOT:int = 352;
    public static const BIZBOT_RC:int = 353;
    public static const BIZBOT_BETA:int = 354;
    public static const BIZBOT_ALPHA:int = 355;
    public static const CHROMEOS:int = 368;
    public static const CHROMEOS_RC:int = 369;
    public static const CHROMEOS_BETA:int = 370;
    public static const CHROMEOS_ALPHA:int = 371;
    public static const ANDROIDLITE:int = 384;
    public static const ANDROIDLITE_RC:int = 385;
    public static const ANDROIDLITE_BETA:int = 386;
    public static const ANDROIDLITE_ALPHA:int = 387;
    public static const WIN10:int = 400;
    public static const WIN10_RC:int = 401;
    public static const WIN10_BETA:int = 402;
    public static const WIN10_ALPHA:int = 403;
    public static const BIZWEB:int = 416;
    public static const BIZWEB_RC:int = 417;
    public static const BIZWEB_BETA:int = 418;
    public static const BIZWEB_ALPHA:int = 419;
    public static const DUMMYPRIMARY:int = 432;
    public static const DUMMYPRIMARY_RC:int = 433;
    public static const DUMMYPRIMARY_BETA:int = 434;
    public static const DUMMYPRIMARY_ALPHA:int = 435;
    public static const SQUARE:int = 448;
    public static const SQUARE_RC:int = 449;
    public static const SQUARE_BETA:int = 450;
    public static const SQUARE_ALPHA:int = 451;
    public static const INTERNAL:int = 464;
    public static const INTERNAL_RC:int = 465;
    public static const INTERNAL_BETA:int = 466;
    public static const INTERNAL_ALPHA:int = 467;
    public static const CLOVAFRIENDS:int = 480;
    public static const CLOVAFRIENDS_RC:int = 481;
    public static const CLOVAFRIENDS_BETA:int = 482;
    public static const CLOVAFRIENDS_ALPHA:int = 483;

    public static const VALID_VALUES:Set = new Set(IOS, IOS_RC, IOS_BETA, IOS_ALPHA, ANDROID, ANDROID_RC, ANDROID_BETA, ANDROID_ALPHA, WAP, WAP_RC, WAP_BETA, WAP_ALPHA, BOT, BOT_RC, BOT_BETA, BOT_ALPHA, WEB, WEB_RC, WEB_BETA, WEB_ALPHA, DESKTOPWIN, DESKTOPWIN_RC, DESKTOPWIN_BETA, DESKTOPWIN_ALPHA, DESKTOPMAC, DESKTOPMAC_RC, DESKTOPMAC_BETA, DESKTOPMAC_ALPHA, CHANNELGW, CHANNELGW_RC, CHANNELGW_BETA, CHANNELGW_ALPHA, CHANNELCP, CHANNELCP_RC, CHANNELCP_BETA, CHANNELCP_ALPHA, WINPHONE, WINPHONE_RC, WINPHONE_BETA, WINPHONE_ALPHA, BLACKBERRY, BLACKBERRY_RC, BLACKBERRY_BETA, BLACKBERRY_ALPHA, WINMETRO, WINMETRO_RC, WINMETRO_BETA, WINMETRO_ALPHA, S40, S40_RC, S40_BETA, S40_ALPHA, CHRONO, CHRONO_RC, CHRONO_BETA, CHRONO_ALPHA, TIZEN, TIZEN_RC, TIZEN_BETA, TIZEN_ALPHA, VIRTUAL, FIREFOXOS, FIREFOXOS_RC, FIREFOXOS_BETA, FIREFOXOS_ALPHA, IOSIPAD, IOSIPAD_RC, IOSIPAD_BETA, IOSIPAD_ALPHA, BIZIOS, BIZIOS_RC, BIZIOS_BETA, BIZIOS_ALPHA, BIZANDROID, BIZANDROID_RC, BIZANDROID_BETA, BIZANDROID_ALPHA, BIZBOT, BIZBOT_RC, BIZBOT_BETA, BIZBOT_ALPHA, CHROMEOS, CHROMEOS_RC, CHROMEOS_BETA, CHROMEOS_ALPHA, ANDROIDLITE, ANDROIDLITE_RC, ANDROIDLITE_BETA, ANDROIDLITE_ALPHA, WIN10, WIN10_RC, WIN10_BETA, WIN10_ALPHA, BIZWEB, BIZWEB_RC, BIZWEB_BETA, BIZWEB_ALPHA, DUMMYPRIMARY, DUMMYPRIMARY_RC, DUMMYPRIMARY_BETA, DUMMYPRIMARY_ALPHA, SQUARE, SQUARE_RC, SQUARE_BETA, SQUARE_ALPHA, INTERNAL, INTERNAL_RC, INTERNAL_BETA, INTERNAL_ALPHA, CLOVAFRIENDS, CLOVAFRIENDS_RC, CLOVAFRIENDS_BETA, CLOVAFRIENDS_ALPHA);
    public static const VALUES_TO_NAMES:Dictionary = new Dictionary();
    {
      VALUES_TO_NAMES[IOS] = "IOS";
      VALUES_TO_NAMES[IOS_RC] = "IOS_RC";
      VALUES_TO_NAMES[IOS_BETA] = "IOS_BETA";
      VALUES_TO_NAMES[IOS_ALPHA] = "IOS_ALPHA";
      VALUES_TO_NAMES[ANDROID] = "ANDROID";
      VALUES_TO_NAMES[ANDROID_RC] = "ANDROID_RC";
      VALUES_TO_NAMES[ANDROID_BETA] = "ANDROID_BETA";
      VALUES_TO_NAMES[ANDROID_ALPHA] = "ANDROID_ALPHA";
      VALUES_TO_NAMES[WAP] = "WAP";
      VALUES_TO_NAMES[WAP_RC] = "WAP_RC";
      VALUES_TO_NAMES[WAP_BETA] = "WAP_BETA";
      VALUES_TO_NAMES[WAP_ALPHA] = "WAP_ALPHA";
      VALUES_TO_NAMES[BOT] = "BOT";
      VALUES_TO_NAMES[BOT_RC] = "BOT_RC";
      VALUES_TO_NAMES[BOT_BETA] = "BOT_BETA";
      VALUES_TO_NAMES[BOT_ALPHA] = "BOT_ALPHA";
      VALUES_TO_NAMES[WEB] = "WEB";
      VALUES_TO_NAMES[WEB_RC] = "WEB_RC";
      VALUES_TO_NAMES[WEB_BETA] = "WEB_BETA";
      VALUES_TO_NAMES[WEB_ALPHA] = "WEB_ALPHA";
      VALUES_TO_NAMES[DESKTOPWIN] = "DESKTOPWIN";
      VALUES_TO_NAMES[DESKTOPWIN_RC] = "DESKTOPWIN_RC";
      VALUES_TO_NAMES[DESKTOPWIN_BETA] = "DESKTOPWIN_BETA";
      VALUES_TO_NAMES[DESKTOPWIN_ALPHA] = "DESKTOPWIN_ALPHA";
      VALUES_TO_NAMES[DESKTOPMAC] = "DESKTOPMAC";
      VALUES_TO_NAMES[DESKTOPMAC_RC] = "DESKTOPMAC_RC";
      VALUES_TO_NAMES[DESKTOPMAC_BETA] = "DESKTOPMAC_BETA";
      VALUES_TO_NAMES[DESKTOPMAC_ALPHA] = "DESKTOPMAC_ALPHA";
      VALUES_TO_NAMES[CHANNELGW] = "CHANNELGW";
      VALUES_TO_NAMES[CHANNELGW_RC] = "CHANNELGW_RC";
      VALUES_TO_NAMES[CHANNELGW_BETA] = "CHANNELGW_BETA";
      VALUES_TO_NAMES[CHANNELGW_ALPHA] = "CHANNELGW_ALPHA";
      VALUES_TO_NAMES[CHANNELCP] = "CHANNELCP";
      VALUES_TO_NAMES[CHANNELCP_RC] = "CHANNELCP_RC";
      VALUES_TO_NAMES[CHANNELCP_BETA] = "CHANNELCP_BETA";
      VALUES_TO_NAMES[CHANNELCP_ALPHA] = "CHANNELCP_ALPHA";
      VALUES_TO_NAMES[WINPHONE] = "WINPHONE";
      VALUES_TO_NAMES[WINPHONE_RC] = "WINPHONE_RC";
      VALUES_TO_NAMES[WINPHONE_BETA] = "WINPHONE_BETA";
      VALUES_TO_NAMES[WINPHONE_ALPHA] = "WINPHONE_ALPHA";
      VALUES_TO_NAMES[BLACKBERRY] = "BLACKBERRY";
      VALUES_TO_NAMES[BLACKBERRY_RC] = "BLACKBERRY_RC";
      VALUES_TO_NAMES[BLACKBERRY_BETA] = "BLACKBERRY_BETA";
      VALUES_TO_NAMES[BLACKBERRY_ALPHA] = "BLACKBERRY_ALPHA";
      VALUES_TO_NAMES[WINMETRO] = "WINMETRO";
      VALUES_TO_NAMES[WINMETRO_RC] = "WINMETRO_RC";
      VALUES_TO_NAMES[WINMETRO_BETA] = "WINMETRO_BETA";
      VALUES_TO_NAMES[WINMETRO_ALPHA] = "WINMETRO_ALPHA";
      VALUES_TO_NAMES[S40] = "S40";
      VALUES_TO_NAMES[S40_RC] = "S40_RC";
      VALUES_TO_NAMES[S40_BETA] = "S40_BETA";
      VALUES_TO_NAMES[S40_ALPHA] = "S40_ALPHA";
      VALUES_TO_NAMES[CHRONO] = "CHRONO";
      VALUES_TO_NAMES[CHRONO_RC] = "CHRONO_RC";
      VALUES_TO_NAMES[CHRONO_BETA] = "CHRONO_BETA";
      VALUES_TO_NAMES[CHRONO_ALPHA] = "CHRONO_ALPHA";
      VALUES_TO_NAMES[TIZEN] = "TIZEN";
      VALUES_TO_NAMES[TIZEN_RC] = "TIZEN_RC";
      VALUES_TO_NAMES[TIZEN_BETA] = "TIZEN_BETA";
      VALUES_TO_NAMES[TIZEN_ALPHA] = "TIZEN_ALPHA";
      VALUES_TO_NAMES[VIRTUAL] = "VIRTUAL";
      VALUES_TO_NAMES[FIREFOXOS] = "FIREFOXOS";
      VALUES_TO_NAMES[FIREFOXOS_RC] = "FIREFOXOS_RC";
      VALUES_TO_NAMES[FIREFOXOS_BETA] = "FIREFOXOS_BETA";
      VALUES_TO_NAMES[FIREFOXOS_ALPHA] = "FIREFOXOS_ALPHA";
      VALUES_TO_NAMES[IOSIPAD] = "IOSIPAD";
      VALUES_TO_NAMES[IOSIPAD_RC] = "IOSIPAD_RC";
      VALUES_TO_NAMES[IOSIPAD_BETA] = "IOSIPAD_BETA";
      VALUES_TO_NAMES[IOSIPAD_ALPHA] = "IOSIPAD_ALPHA";
      VALUES_TO_NAMES[BIZIOS] = "BIZIOS";
      VALUES_TO_NAMES[BIZIOS_RC] = "BIZIOS_RC";
      VALUES_TO_NAMES[BIZIOS_BETA] = "BIZIOS_BETA";
      VALUES_TO_NAMES[BIZIOS_ALPHA] = "BIZIOS_ALPHA";
      VALUES_TO_NAMES[BIZANDROID] = "BIZANDROID";
      VALUES_TO_NAMES[BIZANDROID_RC] = "BIZANDROID_RC";
      VALUES_TO_NAMES[BIZANDROID_BETA] = "BIZANDROID_BETA";
      VALUES_TO_NAMES[BIZANDROID_ALPHA] = "BIZANDROID_ALPHA";
      VALUES_TO_NAMES[BIZBOT] = "BIZBOT";
      VALUES_TO_NAMES[BIZBOT_RC] = "BIZBOT_RC";
      VALUES_TO_NAMES[BIZBOT_BETA] = "BIZBOT_BETA";
      VALUES_TO_NAMES[BIZBOT_ALPHA] = "BIZBOT_ALPHA";
      VALUES_TO_NAMES[CHROMEOS] = "CHROMEOS";
      VALUES_TO_NAMES[CHROMEOS_RC] = "CHROMEOS_RC";
      VALUES_TO_NAMES[CHROMEOS_BETA] = "CHROMEOS_BETA";
      VALUES_TO_NAMES[CHROMEOS_ALPHA] = "CHROMEOS_ALPHA";
      VALUES_TO_NAMES[ANDROIDLITE] = "ANDROIDLITE";
      VALUES_TO_NAMES[ANDROIDLITE_RC] = "ANDROIDLITE_RC";
      VALUES_TO_NAMES[ANDROIDLITE_BETA] = "ANDROIDLITE_BETA";
      VALUES_TO_NAMES[ANDROIDLITE_ALPHA] = "ANDROIDLITE_ALPHA";
      VALUES_TO_NAMES[WIN10] = "WIN10";
      VALUES_TO_NAMES[WIN10_RC] = "WIN10_RC";
      VALUES_TO_NAMES[WIN10_BETA] = "WIN10_BETA";
      VALUES_TO_NAMES[WIN10_ALPHA] = "WIN10_ALPHA";
      VALUES_TO_NAMES[BIZWEB] = "BIZWEB";
      VALUES_TO_NAMES[BIZWEB_RC] = "BIZWEB_RC";
      VALUES_TO_NAMES[BIZWEB_BETA] = "BIZWEB_BETA";
      VALUES_TO_NAMES[BIZWEB_ALPHA] = "BIZWEB_ALPHA";
      VALUES_TO_NAMES[DUMMYPRIMARY] = "DUMMYPRIMARY";
      VALUES_TO_NAMES[DUMMYPRIMARY_RC] = "DUMMYPRIMARY_RC";
      VALUES_TO_NAMES[DUMMYPRIMARY_BETA] = "DUMMYPRIMARY_BETA";
      VALUES_TO_NAMES[DUMMYPRIMARY_ALPHA] = "DUMMYPRIMARY_ALPHA";
      VALUES_TO_NAMES[SQUARE] = "SQUARE";
      VALUES_TO_NAMES[SQUARE_RC] = "SQUARE_RC";
      VALUES_TO_NAMES[SQUARE_BETA] = "SQUARE_BETA";
      VALUES_TO_NAMES[SQUARE_ALPHA] = "SQUARE_ALPHA";
      VALUES_TO_NAMES[INTERNAL] = "INTERNAL";
      VALUES_TO_NAMES[INTERNAL_RC] = "INTERNAL_RC";
      VALUES_TO_NAMES[INTERNAL_BETA] = "INTERNAL_BETA";
      VALUES_TO_NAMES[INTERNAL_ALPHA] = "INTERNAL_ALPHA";
      VALUES_TO_NAMES[CLOVAFRIENDS] = "CLOVAFRIENDS";
      VALUES_TO_NAMES[CLOVAFRIENDS_RC] = "CLOVAFRIENDS_RC";
      VALUES_TO_NAMES[CLOVAFRIENDS_BETA] = "CLOVAFRIENDS_BETA";
      VALUES_TO_NAMES[CLOVAFRIENDS_ALPHA] = "CLOVAFRIENDS_ALPHA";

    }
  }
}