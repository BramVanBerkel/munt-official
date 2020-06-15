// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from libunity.djinni

#import "DBGuldenUnifiedBackend+Private.h"
#import "DBGuldenUnifiedBackend.h"
#import "DBAddressRecord+Private.h"
#import "DBBlockInfoRecord+Private.h"
#import "DBGuldenMonitorListener+Private.h"
#import "DBGuldenUnifiedFrontend+Private.h"
#import "DBLegacyWalletResult+Private.h"
#import "DBMonitorRecord+Private.h"
#import "DBMutationRecord+Private.h"
#import "DBPaymentResultStatus+Private.h"
#import "DBPeerRecord+Private.h"
#import "DBQrCodeRecord+Private.h"
#import "DBTransactionRecord+Private.h"
#import "DBUriRecipient+Private.h"
#import "DBUriRecord+Private.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface DBGuldenUnifiedBackend ()

- (id)initWithCpp:(const std::shared_ptr<::GuldenUnifiedBackend>&)cppRef;

@end

@implementation DBGuldenUnifiedBackend {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::GuldenUnifiedBackend>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::GuldenUnifiedBackend>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nonnull NSString *)BuildInfo {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::BuildInfo();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int32_t)InitUnityLib:(nonnull NSString *)dataDir
       staticFilterPath:(nonnull NSString *)staticFilterPath
     staticFilterOffset:(int64_t)staticFilterOffset
     staticFilterLength:(int64_t)staticFilterLength
                testnet:(BOOL)testnet
                spvMode:(BOOL)spvMode
          signalHandler:(nullable id<DBGuldenUnifiedFrontend>)signalHandler
              extraArgs:(nonnull NSString *)extraArgs {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::InitUnityLib(::djinni::String::toCpp(dataDir),
                                                                   ::djinni::String::toCpp(staticFilterPath),
                                                                   ::djinni::I64::toCpp(staticFilterOffset),
                                                                   ::djinni::I64::toCpp(staticFilterLength),
                                                                   ::djinni::Bool::toCpp(testnet),
                                                                   ::djinni::Bool::toCpp(spvMode),
                                                                   ::djinni_generated::GuldenUnifiedFrontend::toCpp(signalHandler),
                                                                   ::djinni::String::toCpp(extraArgs));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)InitUnityLibThreaded:(nonnull NSString *)dataDir
            staticFilterPath:(nonnull NSString *)staticFilterPath
          staticFilterOffset:(int64_t)staticFilterOffset
          staticFilterLength:(int64_t)staticFilterLength
                     testnet:(BOOL)testnet
                     spvMode:(BOOL)spvMode
               signalHandler:(nullable id<DBGuldenUnifiedFrontend>)signalHandler
                   extraArgs:(nonnull NSString *)extraArgs {
    try {
        ::GuldenUnifiedBackend::InitUnityLibThreaded(::djinni::String::toCpp(dataDir),
                                                     ::djinni::String::toCpp(staticFilterPath),
                                                     ::djinni::I64::toCpp(staticFilterOffset),
                                                     ::djinni::I64::toCpp(staticFilterLength),
                                                     ::djinni::Bool::toCpp(testnet),
                                                     ::djinni::Bool::toCpp(spvMode),
                                                     ::djinni_generated::GuldenUnifiedFrontend::toCpp(signalHandler),
                                                     ::djinni::String::toCpp(extraArgs));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)InitWalletFromRecoveryPhrase:(nonnull NSString *)phrase
                            password:(nonnull NSString *)password {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::InitWalletFromRecoveryPhrase(::djinni::String::toCpp(phrase),
                                                                                   ::djinni::String::toCpp(password));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)ContinueWalletFromRecoveryPhrase:(nonnull NSString *)phrase
                                password:(nonnull NSString *)password {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::ContinueWalletFromRecoveryPhrase(::djinni::String::toCpp(phrase),
                                                                                       ::djinni::String::toCpp(password));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)InitWalletLinkedFromURI:(nonnull NSString *)linkedUri
                       password:(nonnull NSString *)password {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::InitWalletLinkedFromURI(::djinni::String::toCpp(linkedUri),
                                                                              ::djinni::String::toCpp(password));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)ContinueWalletLinkedFromURI:(nonnull NSString *)linkedUri
                           password:(nonnull NSString *)password {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::ContinueWalletLinkedFromURI(::djinni::String::toCpp(linkedUri),
                                                                                  ::djinni::String::toCpp(password));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)InitWalletFromAndroidLegacyProtoWallet:(nonnull NSString *)walletFile
                                   oldPassword:(nonnull NSString *)oldPassword
                                   newPassword:(nonnull NSString *)newPassword {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::InitWalletFromAndroidLegacyProtoWallet(::djinni::String::toCpp(walletFile),
                                                                                             ::djinni::String::toCpp(oldPassword),
                                                                                             ::djinni::String::toCpp(newPassword));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (DBLegacyWalletResult)isValidAndroidLegacyProtoWallet:(nonnull NSString *)walletFile
                                            oldPassword:(nonnull NSString *)oldPassword {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::isValidAndroidLegacyProtoWallet(::djinni::String::toCpp(walletFile),
                                                                                      ::djinni::String::toCpp(oldPassword));
        return ::djinni::Enum<::LegacyWalletResult, DBLegacyWalletResult>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)IsValidLinkURI:(nonnull NSString *)phrase {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::IsValidLinkURI(::djinni::String::toCpp(phrase));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)ReplaceWalletLinkedFromURI:(nonnull NSString *)linkedUri
                          password:(nonnull NSString *)password {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::ReplaceWalletLinkedFromURI(::djinni::String::toCpp(linkedUri),
                                                                                 ::djinni::String::toCpp(password));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)EraseWalletSeedsAndAccounts {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::EraseWalletSeedsAndAccounts();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)IsValidRecoveryPhrase:(nonnull NSString *)phrase {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::IsValidRecoveryPhrase(::djinni::String::toCpp(phrase));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)GenerateRecoveryMnemonic {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::GenerateRecoveryMnemonic();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)GenerateGenesisKeys {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::GenerateGenesisKeys();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)ComposeRecoveryPhrase:(nonnull NSString *)mnemonic
                                  birthTime:(int64_t)birthTime {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::ComposeRecoveryPhrase(::djinni::String::toCpp(mnemonic),
                                                                            ::djinni::I64::toCpp(birthTime));
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)TerminateUnityLib {
    try {
        ::GuldenUnifiedBackend::TerminateUnityLib();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull DBQrCodeRecord *)QRImageFromString:(nonnull NSString *)qrString
                                    widthHint:(int32_t)widthHint {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::QRImageFromString(::djinni::String::toCpp(qrString),
                                                                        ::djinni::I32::toCpp(widthHint));
        return ::djinni_generated::QrCodeRecord::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)GetReceiveAddress {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::GetReceiveAddress();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSString *)GetRecoveryPhrase {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::GetRecoveryPhrase();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)IsMnemonicWallet {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::IsMnemonicWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)IsMnemonicCorrect:(nonnull NSString *)phrase {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::IsMnemonicCorrect(::djinni::String::toCpp(phrase));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)UnlockWallet:(nonnull NSString *)password {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::UnlockWallet(::djinni::String::toCpp(password));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)LockWallet {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::LockWallet();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)ChangePassword:(nonnull NSString *)oldPassword
           newPassword:(nonnull NSString *)newPassword {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::ChangePassword(::djinni::String::toCpp(oldPassword),
                                                                     ::djinni::String::toCpp(newPassword));
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (BOOL)HaveUnconfirmedFunds {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::HaveUnconfirmedFunds();
        return ::djinni::Bool::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)GetBalance {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::GetBalance();
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)DoRescan {
    try {
        ::GuldenUnifiedBackend::DoRescan();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull DBUriRecipient *)IsValidRecipient:(nonnull DBUriRecord *)request {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::IsValidRecipient(::djinni_generated::UriRecord::toCpp(request));
        return ::djinni_generated::UriRecipient::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int64_t)feeForRecipient:(nonnull DBUriRecipient *)request {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::feeForRecipient(::djinni_generated::UriRecipient::toCpp(request));
        return ::djinni::I64::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (DBPaymentResultStatus)performPaymentToRecipient:(nonnull DBUriRecipient *)request
                                      substractFee:(BOOL)substractFee {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::performPaymentToRecipient(::djinni_generated::UriRecipient::toCpp(request),
                                                                                ::djinni::Bool::toCpp(substractFee));
        return ::djinni::Enum<::PaymentResultStatus, DBPaymentResultStatus>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSArray<DBTransactionRecord *> *)getTransactionHistory {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getTransactionHistory();
        return ::djinni::List<::djinni_generated::TransactionRecord>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull DBTransactionRecord *)getTransaction:(nonnull NSString *)txHash {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getTransaction(::djinni::String::toCpp(txHash));
        return ::djinni_generated::TransactionRecord::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSArray<DBMutationRecord *> *)getMutationHistory {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getMutationHistory();
        return ::djinni::List<::djinni_generated::MutationRecord>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSArray<DBAddressRecord *> *)getAddressBookRecords {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getAddressBookRecords();
        return ::djinni::List<::djinni_generated::AddressRecord>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)addAddressBookRecord:(nonnull DBAddressRecord *)address {
    try {
        ::GuldenUnifiedBackend::addAddressBookRecord(::djinni_generated::AddressRecord::toCpp(address));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)deleteAddressBookRecord:(nonnull DBAddressRecord *)address {
    try {
        ::GuldenUnifiedBackend::deleteAddressBookRecord(::djinni_generated::AddressRecord::toCpp(address));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)PersistAndPruneForSPV {
    try {
        ::GuldenUnifiedBackend::PersistAndPruneForSPV();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)ResetUnifiedProgress {
    try {
        ::GuldenUnifiedBackend::ResetUnifiedProgress();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSArray<DBPeerRecord *> *)getPeers {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getPeers();
        return ::djinni::List<::djinni_generated::PeerRecord>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull NSArray<DBBlockInfoRecord *> *)getLastSPVBlockInfos {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getLastSPVBlockInfos();
        return ::djinni::List<::djinni_generated::BlockInfoRecord>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (float)getUnifiedProgress {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getUnifiedProgress();
        return ::djinni::F32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (nonnull DBMonitorRecord *)getMonitoringStats {
    try {
        auto objcpp_result_ = ::GuldenUnifiedBackend::getMonitoringStats();
        return ::djinni_generated::MonitorRecord::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)RegisterMonitorListener:(nullable id<DBGuldenMonitorListener>)listener {
    try {
        ::GuldenUnifiedBackend::RegisterMonitorListener(::djinni_generated::GuldenMonitorListener::toCpp(listener));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (void)UnregisterMonitorListener:(nullable id<DBGuldenMonitorListener>)listener {
    try {
        ::GuldenUnifiedBackend::UnregisterMonitorListener(::djinni_generated::GuldenMonitorListener::toCpp(listener));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}


namespace djinni_generated {

auto GuldenUnifiedBackend::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto GuldenUnifiedBackend::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<DBGuldenUnifiedBackend>(cpp);
}

}  // namespace djinni_generated

@end