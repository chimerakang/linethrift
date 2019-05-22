/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;
import haxe.io.Bytes;
import haxe.ds.IntMap;
import haxe.ds.StringMap;
import haxe.ds.ObjectMap;

#if flash
import flash.errors.ArgumentError;
#end

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


class ShopServiceProcessor implements TProcessor {

  private var ShopService_iface_ : ShopService;
  private var PROCESS_MAP = new StringMap< Int->TProtocol->TProtocol->Void >();

  public function new( iface : ShopService)
  {
    ShopService_iface_ = iface;
    PROCESS_MAP.set("buyCoinProduct", buyCoinProduct());
    PROCESS_MAP.set("buyFreeProduct", buyFreeProduct());
    PROCESS_MAP.set("buyMustbuyProduct", buyMustbuyProduct());
    PROCESS_MAP.set("checkCanReceivePresent", checkCanReceivePresent());
    PROCESS_MAP.set("getActivePurchases", getActivePurchases());
    PROCESS_MAP.set("getActivePurchaseVersions", getActivePurchaseVersions());
    PROCESS_MAP.set("getCoinProducts", getCoinProducts());
    PROCESS_MAP.set("getCoinProductsByPgCode", getCoinProductsByPgCode());
    PROCESS_MAP.set("getCoinPurchaseHistory", getCoinPurchaseHistory());
    PROCESS_MAP.set("getCoinUseAndRefundHistory", getCoinUseAndRefundHistory());
    PROCESS_MAP.set("getDownloads", getDownloads());
    PROCESS_MAP.set("getEventPackages", getEventPackages());
    PROCESS_MAP.set("getNewlyReleasedPackages", getNewlyReleasedPackages());
    PROCESS_MAP.set("getPopularPackages", getPopularPackages());
    PROCESS_MAP.set("getPresentsReceived", getPresentsReceived());
    PROCESS_MAP.set("getPresentsSent", getPresentsSent());
    PROCESS_MAP.set("getProduct", getProduct());
    PROCESS_MAP.set("getProductList", getProductList());
    PROCESS_MAP.set("getProductListWithCarrier", getProductListWithCarrier());
    PROCESS_MAP.set("getProductWithCarrier", getProductWithCarrier());
    PROCESS_MAP.set("getPurchaseHistory", getPurchaseHistory());
    PROCESS_MAP.set("getTotalBalance", getTotalBalance());
    PROCESS_MAP.set("notifyDownloaded", notifyDownloaded());
    PROCESS_MAP.set("reserveCoinPurchase", reserveCoinPurchase());
    PROCESS_MAP.set("reservePayment", reservePayment());
  }

  public function process( iprot : TProtocol, oprot : TProtocol) : Bool
  {
    var msg : TMessage = iprot.readMessageBegin();
    var fn  = PROCESS_MAP.get(msg.name);
    if (fn == null) {
      TProtocolUtil.skip(iprot, TType.STRUCT);
      iprot.readMessageEnd();
      var x = new TApplicationException(TApplicationException.UNKNOWN_METHOD, "Invalid method name: '"+msg.name+"'");
      oprot.writeMessageBegin(new TMessage(msg.name, TMessageType.EXCEPTION, msg.seqid));
      x.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
      return true;
    }
    fn( msg.seqid, iprot, oprot);
    return true;
  }

  private function buyCoinProduct() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : BuyCoinProduct_args = new BuyCoinProduct_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : BuyCoinProduct_result = new BuyCoinProduct_result();
      try {
        ShopService_iface_.buyCoinProduct(args.paymentReservation);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing buyCoinProduct", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing buyCoinProduct");
        oprot.writeMessageBegin(new TMessage("buyCoinProduct", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("buyCoinProduct", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function buyFreeProduct() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : BuyFreeProduct_args = new BuyFreeProduct_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : BuyFreeProduct_result = new BuyFreeProduct_result();
      try {
        ShopService_iface_.buyFreeProduct(args.receiverMid, args.productId, args.messageTemplate, args.language, args.country, args.packageId);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing buyFreeProduct", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing buyFreeProduct");
        oprot.writeMessageBegin(new TMessage("buyFreeProduct", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("buyFreeProduct", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function buyMustbuyProduct() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : BuyMustbuyProduct_args = new BuyMustbuyProduct_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : BuyMustbuyProduct_result = new BuyMustbuyProduct_result();
      try {
        ShopService_iface_.buyMustbuyProduct(args.receiverMid, args.productId, args.messageTemplate, args.language, args.country, args.packageId, args.serialNumber);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing buyMustbuyProduct", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing buyMustbuyProduct");
        oprot.writeMessageBegin(new TMessage("buyMustbuyProduct", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("buyMustbuyProduct", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function checkCanReceivePresent() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : CheckCanReceivePresent_args = new CheckCanReceivePresent_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : CheckCanReceivePresent_result = new CheckCanReceivePresent_result();
      try {
        ShopService_iface_.checkCanReceivePresent(args.recipientMid, args.packageId, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing checkCanReceivePresent", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing checkCanReceivePresent");
        oprot.writeMessageBegin(new TMessage("checkCanReceivePresent", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("checkCanReceivePresent", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getActivePurchases() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetActivePurchases_args = new GetActivePurchases_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetActivePurchases_result = new GetActivePurchases_result();
      try {
        result.success = ShopService_iface_.getActivePurchases(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getActivePurchases", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getActivePurchases");
        oprot.writeMessageBegin(new TMessage("getActivePurchases", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getActivePurchases", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getActivePurchaseVersions() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetActivePurchaseVersions_args = new GetActivePurchaseVersions_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetActivePurchaseVersions_result = new GetActivePurchaseVersions_result();
      try {
        result.success = ShopService_iface_.getActivePurchaseVersions(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getActivePurchaseVersions", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getActivePurchaseVersions");
        oprot.writeMessageBegin(new TMessage("getActivePurchaseVersions", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getActivePurchaseVersions", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getCoinProducts() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetCoinProducts_args = new GetCoinProducts_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetCoinProducts_result = new GetCoinProducts_result();
      try {
        result.success = ShopService_iface_.getCoinProducts(args.appStoreCode, args.country, args.language);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getCoinProducts", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getCoinProducts");
        oprot.writeMessageBegin(new TMessage("getCoinProducts", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getCoinProducts", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getCoinProductsByPgCode() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetCoinProductsByPgCode_args = new GetCoinProductsByPgCode_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetCoinProductsByPgCode_result = new GetCoinProductsByPgCode_result();
      try {
        result.success = ShopService_iface_.getCoinProductsByPgCode(args.appStoreCode, args.pgCode, args.country, args.language);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getCoinProductsByPgCode", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getCoinProductsByPgCode");
        oprot.writeMessageBegin(new TMessage("getCoinProductsByPgCode", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getCoinProductsByPgCode", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getCoinPurchaseHistory() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetCoinPurchaseHistory_args = new GetCoinPurchaseHistory_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetCoinPurchaseHistory_result = new GetCoinPurchaseHistory_result();
      try {
        result.success = ShopService_iface_.getCoinPurchaseHistory(args.request);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getCoinPurchaseHistory", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getCoinPurchaseHistory");
        oprot.writeMessageBegin(new TMessage("getCoinPurchaseHistory", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getCoinPurchaseHistory", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getCoinUseAndRefundHistory() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetCoinUseAndRefundHistory_args = new GetCoinUseAndRefundHistory_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetCoinUseAndRefundHistory_result = new GetCoinUseAndRefundHistory_result();
      try {
        result.success = ShopService_iface_.getCoinUseAndRefundHistory(args.request);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getCoinUseAndRefundHistory", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getCoinUseAndRefundHistory");
        oprot.writeMessageBegin(new TMessage("getCoinUseAndRefundHistory", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getCoinUseAndRefundHistory", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getDownloads() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetDownloads_args = new GetDownloads_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetDownloads_result = new GetDownloads_result();
      try {
        result.success = ShopService_iface_.getDownloads(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getDownloads", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getDownloads");
        oprot.writeMessageBegin(new TMessage("getDownloads", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getDownloads", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getEventPackages() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetEventPackages_args = new GetEventPackages_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetEventPackages_result = new GetEventPackages_result();
      try {
        result.success = ShopService_iface_.getEventPackages(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getEventPackages", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getEventPackages");
        oprot.writeMessageBegin(new TMessage("getEventPackages", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getEventPackages", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getNewlyReleasedPackages() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetNewlyReleasedPackages_args = new GetNewlyReleasedPackages_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetNewlyReleasedPackages_result = new GetNewlyReleasedPackages_result();
      try {
        result.success = ShopService_iface_.getNewlyReleasedPackages(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getNewlyReleasedPackages", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getNewlyReleasedPackages");
        oprot.writeMessageBegin(new TMessage("getNewlyReleasedPackages", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getNewlyReleasedPackages", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getPopularPackages() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetPopularPackages_args = new GetPopularPackages_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetPopularPackages_result = new GetPopularPackages_result();
      try {
        result.success = ShopService_iface_.getPopularPackages(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getPopularPackages", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getPopularPackages");
        oprot.writeMessageBegin(new TMessage("getPopularPackages", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getPopularPackages", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getPresentsReceived() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetPresentsReceived_args = new GetPresentsReceived_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetPresentsReceived_result = new GetPresentsReceived_result();
      try {
        result.success = ShopService_iface_.getPresentsReceived(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getPresentsReceived", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getPresentsReceived");
        oprot.writeMessageBegin(new TMessage("getPresentsReceived", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getPresentsReceived", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getPresentsSent() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetPresentsSent_args = new GetPresentsSent_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetPresentsSent_result = new GetPresentsSent_result();
      try {
        result.success = ShopService_iface_.getPresentsSent(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getPresentsSent", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getPresentsSent");
        oprot.writeMessageBegin(new TMessage("getPresentsSent", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getPresentsSent", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getProduct() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetProduct_args = new GetProduct_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetProduct_result = new GetProduct_result();
      try {
        result.success = ShopService_iface_.getProduct(args.packageID, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getProduct", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getProduct");
        oprot.writeMessageBegin(new TMessage("getProduct", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getProduct", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getProductList() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetProductList_args = new GetProductList_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetProductList_result = new GetProductList_result();
      try {
        result.success = ShopService_iface_.getProductList(args.productIdList, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getProductList", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getProductList");
        oprot.writeMessageBegin(new TMessage("getProductList", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getProductList", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getProductListWithCarrier() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetProductListWithCarrier_args = new GetProductListWithCarrier_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetProductListWithCarrier_result = new GetProductListWithCarrier_result();
      try {
        result.success = ShopService_iface_.getProductListWithCarrier(args.productIdList, args.language, args.country, args.carrierCode);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getProductListWithCarrier", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getProductListWithCarrier");
        oprot.writeMessageBegin(new TMessage("getProductListWithCarrier", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getProductListWithCarrier", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getProductWithCarrier() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetProductWithCarrier_args = new GetProductWithCarrier_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetProductWithCarrier_result = new GetProductWithCarrier_result();
      try {
        result.success = ShopService_iface_.getProductWithCarrier(args.packageID, args.language, args.country, args.carrierCode);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getProductWithCarrier", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getProductWithCarrier");
        oprot.writeMessageBegin(new TMessage("getProductWithCarrier", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getProductWithCarrier", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getPurchaseHistory() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetPurchaseHistory_args = new GetPurchaseHistory_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetPurchaseHistory_result = new GetPurchaseHistory_result();
      try {
        result.success = ShopService_iface_.getPurchaseHistory(args.start, args.size, args.language, args.country);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getPurchaseHistory", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getPurchaseHistory");
        oprot.writeMessageBegin(new TMessage("getPurchaseHistory", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getPurchaseHistory", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function getTotalBalance() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : GetTotalBalance_args = new GetTotalBalance_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : GetTotalBalance_result = new GetTotalBalance_result();
      try {
        result.success = ShopService_iface_.getTotalBalance(args.appStoreCode);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing getTotalBalance", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing getTotalBalance");
        oprot.writeMessageBegin(new TMessage("getTotalBalance", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("getTotalBalance", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function notifyDownloaded() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : NotifyDownloaded_args = new NotifyDownloaded_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : NotifyDownloaded_result = new NotifyDownloaded_result();
      try {
        result.success = ShopService_iface_.notifyDownloaded(args.packageId, args.language);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing notifyDownloaded", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing notifyDownloaded");
        oprot.writeMessageBegin(new TMessage("notifyDownloaded", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("notifyDownloaded", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function reserveCoinPurchase() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : ReserveCoinPurchase_args = new ReserveCoinPurchase_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : ReserveCoinPurchase_result = new ReserveCoinPurchase_result();
      try {
        result.success = ShopService_iface_.reserveCoinPurchase(args.request);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing reserveCoinPurchase", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing reserveCoinPurchase");
        oprot.writeMessageBegin(new TMessage("reserveCoinPurchase", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("reserveCoinPurchase", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

  private function reservePayment() : Int->TProtocol->TProtocol->Void {
    return function( seqid : Int, iprot : TProtocol, oprot : TProtocol) : Void
    {
      var args : ReservePayment_args = new ReservePayment_args();
      args.read(iprot);
      iprot.readMessageEnd();
      var result : ReservePayment_result = new ReservePayment_result();
      try {
        result.success = ShopService_iface_.reservePayment(args.paymentReservation);
      } catch (e:TalkException) {
        result.e = e;
      } catch (th : Dynamic) {
        trace("Internal error processing reservePayment", th);
        var x = new TApplicationException(TApplicationException.INTERNAL_ERROR, "Internal error processing reservePayment");
        oprot.writeMessageBegin(new TMessage("reservePayment", TMessageType.EXCEPTION, seqid));
        x.write(oprot);
        oprot.writeMessageEnd();
        oprot.getTransport().flush();
        return;
      }
      oprot.writeMessageBegin(new TMessage("reservePayment", TMessageType.REPLY, seqid));
      result.write(oprot);
      oprot.writeMessageEnd();
      oprot.getTransport().flush();
    }

  }

}
