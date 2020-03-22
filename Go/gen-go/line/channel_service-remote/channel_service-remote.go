// Autogenerated by Thrift Compiler (0.14.0)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

package main

import (
	"context"
	"flag"
	"fmt"
	"math"
	"net"
	"net/url"
	"os"
	"strconv"
	"strings"
	"github.com/apache/thrift/lib/go/thrift"
	"line"
)

var _ = line.GoUnusedProtection__

func Usage() {
  fmt.Fprintln(os.Stderr, "Usage of ", os.Args[0], " [-h host:port] [-u url] [-f[ramed]] function [arg1 [arg2...]]:")
  flag.PrintDefaults()
  fmt.Fprintln(os.Stderr, "\nFunctions:")
  fmt.Fprintln(os.Stderr, "  OTPResult issueOTP(string channelId)")
  fmt.Fprintln(os.Stderr, "  ChannelToken approveChannelAndIssueChannelToken(string channelId)")
  fmt.Fprintln(os.Stderr, "  string approveChannelAndIssueRequestToken(string channelId, string otpId)")
  fmt.Fprintln(os.Stderr, "  NotificationFetchResult fetchNotificationItems(i64 localRev)")
  fmt.Fprintln(os.Stderr, "  ApprovedChannelInfos getApprovedChannels(i64 lastSynced, string locale)")
  fmt.Fprintln(os.Stderr, "  ChannelInfo getChannelInfo(string channelId, string locale)")
  fmt.Fprintln(os.Stderr, "  ChannelNotificationSetting getChannelNotificationSetting(string channelId, string locale)")
  fmt.Fprintln(os.Stderr, "   getChannelNotificationSettings(string locale)")
  fmt.Fprintln(os.Stderr, "  ChannelInfos getChannels(i64 lastSynced, string locale)")
  fmt.Fprintln(os.Stderr, "  ChannelDomains getDomains(i64 lastSynced)")
  fmt.Fprintln(os.Stderr, "  FriendChannelMatricesResponse getFriendChannelMatrices( channelIds)")
  fmt.Fprintln(os.Stderr, "  bool updateChannelSettings(ChannelSettings channelSettings)")
  fmt.Fprintln(os.Stderr, "  ChannelDomains getCommonDomains(i64 lastSynced)")
  fmt.Fprintln(os.Stderr, "  i32 getNotificationBadgeCount(i64 localRev)")
  fmt.Fprintln(os.Stderr, "  ChannelToken issueChannelToken(string channelId)")
  fmt.Fprintln(os.Stderr, "  string issueRequestToken(string channelId, string otpId)")
  fmt.Fprintln(os.Stderr, "  RequestTokenResponse issueRequestTokenWithAuthScheme(string channelId, string otpId,  authScheme, string returnUrl)")
  fmt.Fprintln(os.Stderr, "  string issueRequestTokenForAutoLogin(string channelId, string otpId, string redirectUrl)")
  fmt.Fprintln(os.Stderr, "   getUpdatedChannelIds( channelIds)")
  fmt.Fprintln(os.Stderr, "  string reserveCoinUse(CoinUseReservation request, string locale)")
  fmt.Fprintln(os.Stderr, "  void revokeChannel(string channelId)")
  fmt.Fprintln(os.Stderr, "  ChannelSyncDatas syncChannelData(i64 lastSynced, string locale)")
  fmt.Fprintln(os.Stderr, "  void updateChannelNotificationSetting( setting)")
  fmt.Fprintln(os.Stderr)
  os.Exit(0)
}

type httpHeaders map[string]string

func (h httpHeaders) String() string {
  var m map[string]string = h
  return fmt.Sprintf("%s", m)
}

func (h httpHeaders) Set(value string) error {
  parts := strings.Split(value, ": ")
  if len(parts) != 2 {
    return fmt.Errorf("header should be of format 'Key: Value'")
  }
  h[parts[0]] = parts[1]
  return nil
}

func main() {
  flag.Usage = Usage
  var host string
  var port int
  var protocol string
  var urlString string
  var framed bool
  var useHttp bool
  headers := make(httpHeaders)
  var parsedUrl *url.URL
  var trans thrift.TTransport
  _ = strconv.Atoi
  _ = math.Abs
  flag.Usage = Usage
  flag.StringVar(&host, "h", "localhost", "Specify host and port")
  flag.IntVar(&port, "p", 9090, "Specify port")
  flag.StringVar(&protocol, "P", "binary", "Specify the protocol (binary, compact, simplejson, json)")
  flag.StringVar(&urlString, "u", "", "Specify the url")
  flag.BoolVar(&framed, "framed", false, "Use framed transport")
  flag.BoolVar(&useHttp, "http", false, "Use http")
  flag.Var(headers, "H", "Headers to set on the http(s) request (e.g. -H \"Key: Value\")")
  flag.Parse()
  
  if len(urlString) > 0 {
    var err error
    parsedUrl, err = url.Parse(urlString)
    if err != nil {
      fmt.Fprintln(os.Stderr, "Error parsing URL: ", err)
      flag.Usage()
    }
    host = parsedUrl.Host
    useHttp = len(parsedUrl.Scheme) <= 0 || parsedUrl.Scheme == "http" || parsedUrl.Scheme == "https"
  } else if useHttp {
    _, err := url.Parse(fmt.Sprint("http://", host, ":", port))
    if err != nil {
      fmt.Fprintln(os.Stderr, "Error parsing URL: ", err)
      flag.Usage()
    }
  }
  
  cmd := flag.Arg(0)
  var err error
  if useHttp {
    trans, err = thrift.NewTHttpClient(parsedUrl.String())
    if len(headers) > 0 {
      httptrans := trans.(*thrift.THttpClient)
      for key, value := range headers {
        httptrans.SetHeader(key, value)
      }
    }
  } else {
    portStr := fmt.Sprint(port)
    if strings.Contains(host, ":") {
           host, portStr, err = net.SplitHostPort(host)
           if err != nil {
                   fmt.Fprintln(os.Stderr, "error with host:", err)
                   os.Exit(1)
           }
    }
    trans, err = thrift.NewTSocket(net.JoinHostPort(host, portStr))
    if err != nil {
      fmt.Fprintln(os.Stderr, "error resolving address:", err)
      os.Exit(1)
    }
    if framed {
      trans = thrift.NewTFramedTransport(trans)
    }
  }
  if err != nil {
    fmt.Fprintln(os.Stderr, "Error creating transport", err)
    os.Exit(1)
  }
  defer trans.Close()
  var protocolFactory thrift.TProtocolFactory
  switch protocol {
  case "compact":
    protocolFactory = thrift.NewTCompactProtocolFactory()
    break
  case "simplejson":
    protocolFactory = thrift.NewTSimpleJSONProtocolFactory()
    break
  case "json":
    protocolFactory = thrift.NewTJSONProtocolFactory()
    break
  case "binary", "":
    protocolFactory = thrift.NewTBinaryProtocolFactoryDefault()
    break
  default:
    fmt.Fprintln(os.Stderr, "Invalid protocol specified: ", protocol)
    Usage()
    os.Exit(1)
  }
  iprot := protocolFactory.GetProtocol(trans)
  oprot := protocolFactory.GetProtocol(trans)
  client := line.NewChannelServiceClient(thrift.NewTStandardClient(iprot, oprot))
  if err := trans.Open(); err != nil {
    fmt.Fprintln(os.Stderr, "Error opening socket to ", host, ":", port, " ", err)
    os.Exit(1)
  }
  
  switch cmd {
  case "issueOTP":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "IssueOTP requires 1 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    fmt.Print(client.IssueOTP(context.Background(), value0))
    fmt.Print("\n")
    break
  case "approveChannelAndIssueChannelToken":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "ApproveChannelAndIssueChannelToken requires 1 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    fmt.Print(client.ApproveChannelAndIssueChannelToken(context.Background(), value0))
    fmt.Print("\n")
    break
  case "approveChannelAndIssueRequestToken":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "ApproveChannelAndIssueRequestToken requires 2 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.ApproveChannelAndIssueRequestToken(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "fetchNotificationItems":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "FetchNotificationItems requires 1 args")
      flag.Usage()
    }
    argvalue0, err838 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err838 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    fmt.Print(client.FetchNotificationItems(context.Background(), value0))
    fmt.Print("\n")
    break
  case "getApprovedChannels":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "GetApprovedChannels requires 2 args")
      flag.Usage()
    }
    argvalue0, err839 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err839 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.GetApprovedChannels(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "getChannelInfo":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "GetChannelInfo requires 2 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.GetChannelInfo(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "getChannelNotificationSetting":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "GetChannelNotificationSetting requires 2 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.GetChannelNotificationSetting(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "getChannelNotificationSettings":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "GetChannelNotificationSettings requires 1 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    fmt.Print(client.GetChannelNotificationSettings(context.Background(), value0))
    fmt.Print("\n")
    break
  case "getChannels":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "GetChannels requires 2 args")
      flag.Usage()
    }
    argvalue0, err846 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err846 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.GetChannels(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "getDomains":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "GetDomains requires 1 args")
      flag.Usage()
    }
    argvalue0, err848 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err848 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    fmt.Print(client.GetDomains(context.Background(), value0))
    fmt.Print("\n")
    break
  case "getFriendChannelMatrices":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "GetFriendChannelMatrices requires 1 args")
      flag.Usage()
    }
    arg849 := flag.Arg(1)
    mbTrans850 := thrift.NewTMemoryBufferLen(len(arg849))
    defer mbTrans850.Close()
    _, err851 := mbTrans850.WriteString(arg849)
    if err851 != nil { 
      Usage()
      return
    }
    factory852 := thrift.NewTJSONProtocolFactory()
    jsProt853 := factory852.GetProtocol(mbTrans850)
    containerStruct0 := line.NewChannelServiceGetFriendChannelMatricesArgs()
    err854 := containerStruct0.ReadField1(jsProt853)
    if err854 != nil {
      Usage()
      return
    }
    argvalue0 := containerStruct0.ChannelIds
    value0 := argvalue0
    fmt.Print(client.GetFriendChannelMatrices(context.Background(), value0))
    fmt.Print("\n")
    break
  case "updateChannelSettings":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "UpdateChannelSettings requires 1 args")
      flag.Usage()
    }
    arg855 := flag.Arg(1)
    mbTrans856 := thrift.NewTMemoryBufferLen(len(arg855))
    defer mbTrans856.Close()
    _, err857 := mbTrans856.WriteString(arg855)
    if err857 != nil {
      Usage()
      return
    }
    factory858 := thrift.NewTJSONProtocolFactory()
    jsProt859 := factory858.GetProtocol(mbTrans856)
    argvalue0 := line.NewChannelSettings()
    err860 := argvalue0.Read(jsProt859)
    if err860 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    fmt.Print(client.UpdateChannelSettings(context.Background(), value0))
    fmt.Print("\n")
    break
  case "getCommonDomains":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "GetCommonDomains requires 1 args")
      flag.Usage()
    }
    argvalue0, err861 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err861 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    fmt.Print(client.GetCommonDomains(context.Background(), value0))
    fmt.Print("\n")
    break
  case "getNotificationBadgeCount":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "GetNotificationBadgeCount requires 1 args")
      flag.Usage()
    }
    argvalue0, err862 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err862 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    fmt.Print(client.GetNotificationBadgeCount(context.Background(), value0))
    fmt.Print("\n")
    break
  case "issueChannelToken":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "IssueChannelToken requires 1 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    fmt.Print(client.IssueChannelToken(context.Background(), value0))
    fmt.Print("\n")
    break
  case "issueRequestToken":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "IssueRequestToken requires 2 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.IssueRequestToken(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "issueRequestTokenWithAuthScheme":
    if flag.NArg() - 1 != 4 {
      fmt.Fprintln(os.Stderr, "IssueRequestTokenWithAuthScheme requires 4 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    arg868 := flag.Arg(3)
    mbTrans869 := thrift.NewTMemoryBufferLen(len(arg868))
    defer mbTrans869.Close()
    _, err870 := mbTrans869.WriteString(arg868)
    if err870 != nil { 
      Usage()
      return
    }
    factory871 := thrift.NewTJSONProtocolFactory()
    jsProt872 := factory871.GetProtocol(mbTrans869)
    containerStruct2 := line.NewChannelServiceIssueRequestTokenWithAuthSchemeArgs()
    err873 := containerStruct2.ReadField3(jsProt872)
    if err873 != nil {
      Usage()
      return
    }
    argvalue2 := containerStruct2.AuthScheme
    value2 := argvalue2
    argvalue3 := flag.Arg(4)
    value3 := argvalue3
    fmt.Print(client.IssueRequestTokenWithAuthScheme(context.Background(), value0, value1, value2, value3))
    fmt.Print("\n")
    break
  case "issueRequestTokenForAutoLogin":
    if flag.NArg() - 1 != 3 {
      fmt.Fprintln(os.Stderr, "IssueRequestTokenForAutoLogin requires 3 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    argvalue2 := flag.Arg(3)
    value2 := argvalue2
    fmt.Print(client.IssueRequestTokenForAutoLogin(context.Background(), value0, value1, value2))
    fmt.Print("\n")
    break
  case "getUpdatedChannelIds":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "GetUpdatedChannelIds requires 1 args")
      flag.Usage()
    }
    arg878 := flag.Arg(1)
    mbTrans879 := thrift.NewTMemoryBufferLen(len(arg878))
    defer mbTrans879.Close()
    _, err880 := mbTrans879.WriteString(arg878)
    if err880 != nil { 
      Usage()
      return
    }
    factory881 := thrift.NewTJSONProtocolFactory()
    jsProt882 := factory881.GetProtocol(mbTrans879)
    containerStruct0 := line.NewChannelServiceGetUpdatedChannelIdsArgs()
    err883 := containerStruct0.ReadField1(jsProt882)
    if err883 != nil {
      Usage()
      return
    }
    argvalue0 := containerStruct0.ChannelIds
    value0 := argvalue0
    fmt.Print(client.GetUpdatedChannelIds(context.Background(), value0))
    fmt.Print("\n")
    break
  case "reserveCoinUse":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "ReserveCoinUse requires 2 args")
      flag.Usage()
    }
    arg884 := flag.Arg(1)
    mbTrans885 := thrift.NewTMemoryBufferLen(len(arg884))
    defer mbTrans885.Close()
    _, err886 := mbTrans885.WriteString(arg884)
    if err886 != nil {
      Usage()
      return
    }
    factory887 := thrift.NewTJSONProtocolFactory()
    jsProt888 := factory887.GetProtocol(mbTrans885)
    argvalue0 := line.NewCoinUseReservation()
    err889 := argvalue0.Read(jsProt888)
    if err889 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.ReserveCoinUse(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "revokeChannel":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "RevokeChannel requires 1 args")
      flag.Usage()
    }
    argvalue0 := flag.Arg(1)
    value0 := argvalue0
    fmt.Print(client.RevokeChannel(context.Background(), value0))
    fmt.Print("\n")
    break
  case "syncChannelData":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "SyncChannelData requires 2 args")
      flag.Usage()
    }
    argvalue0, err892 := (strconv.ParseInt(flag.Arg(1), 10, 64))
    if err892 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    argvalue1 := flag.Arg(2)
    value1 := argvalue1
    fmt.Print(client.SyncChannelData(context.Background(), value0, value1))
    fmt.Print("\n")
    break
  case "updateChannelNotificationSetting":
    if flag.NArg() - 1 != 1 {
      fmt.Fprintln(os.Stderr, "UpdateChannelNotificationSetting requires 1 args")
      flag.Usage()
    }
    arg894 := flag.Arg(1)
    mbTrans895 := thrift.NewTMemoryBufferLen(len(arg894))
    defer mbTrans895.Close()
    _, err896 := mbTrans895.WriteString(arg894)
    if err896 != nil { 
      Usage()
      return
    }
    factory897 := thrift.NewTJSONProtocolFactory()
    jsProt898 := factory897.GetProtocol(mbTrans895)
    containerStruct0 := line.NewChannelServiceUpdateChannelNotificationSettingArgs()
    err899 := containerStruct0.ReadField1(jsProt898)
    if err899 != nil {
      Usage()
      return
    }
    argvalue0 := containerStruct0.Setting
    value0 := argvalue0
    fmt.Print(client.UpdateChannelNotificationSetting(context.Background(), value0))
    fmt.Print("\n")
    break
  case "":
    Usage()
    break
  default:
    fmt.Fprintln(os.Stderr, "Invalid function ", cmd)
  }
}