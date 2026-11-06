// lib: , url: package:umrem_demo/features/auth/providers/login_provider.dart

// class id: 1049562, size: 0x8
class :: {
}

// class id: 3866, size: 0x24, field offset: 0x24
class LoginProvider extends ChangeNotifier {

  _ handleLogin(/* No info */) async {
    // ** addr: 0x7e988c, size: 0x2d4
    // 0x7e988c: EnterFrame
    //     0x7e988c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e9890: mov             fp, SP
    // 0x7e9894: AllocStack(0x48)
    //     0x7e9894: sub             SP, SP, #0x48
    // 0x7e9898: SetupParameters(LoginProvider this /* r1 => r2, fp-0x20 */, dynamic _ /* r2 => r1, fp-0x28 */)
    //     0x7e9898: stur            NULL, [fp, #-8]
    //     0x7e989c: stur            x1, [fp, #-0x10]
    //     0x7e98a0: mov             x16, x2
    //     0x7e98a4: mov             x2, x1
    //     0x7e98a8: mov             x1, x16
    //     0x7e98ac: stur            x1, [fp, #-0x18]
    //     0x7e98b0: stur            x3, [fp, #-0x20]
    //     0x7e98b4: stur            x5, [fp, #-0x28]
    // 0x7e98b8: CheckStackOverflow
    //     0x7e98b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e98bc: cmp             SP, x16
    //     0x7e98c0: b.ls            #0x7e9b50
    // 0x7e98c4: InitAsync() -> Future<bool?>
    //     0x7e98c4: add             x0, PP, #0x10, lsl #12  ; [pp+0x104f8] TypeArguments: <bool?>
    //     0x7e98c8: ldr             x0, [x0, #0x4f8]
    //     0x7e98cc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e98d0: ldur            x1, [fp, #-0x18]
    // 0x7e98d4: r0 = currentState()
    //     0x7e98d4: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x7e98d8: cmp             w0, NULL
    // 0x7e98dc: b.eq            #0x7e9b58
    // 0x7e98e0: mov             x1, x0
    // 0x7e98e4: r0 = validate()
    //     0x7e98e4: bl              #0x67a654  ; [package:flutter/src/widgets/form.dart] FormState::validate
    // 0x7e98e8: tbz             w0, #4, #0x7e98f4
    // 0x7e98ec: r0 = Null
    //     0x7e98ec: mov             x0, NULL
    // 0x7e98f0: r0 = ReturnAsyncNotFuture()
    //     0x7e98f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e98f4: ldur            x0, [fp, #-0x20]
    // 0x7e98f8: ldur            x1, [fp, #-0x10]
    // 0x7e98fc: r2 = true
    //     0x7e98fc: add             x2, NULL, #0x20  ; true
    // 0x7e9900: r0 = didUpdateValue()
    //     0x7e9900: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x7e9904: r0 = SplashProvider()
    //     0x7e9904: bl              #0x7ea338  ; AllocateSplashProviderStub -> SplashProvider (size=0x38)
    // 0x7e9908: mov             x1, x0
    // 0x7e990c: stur            x0, [fp, #-0x18]
    // 0x7e9910: r0 = SplashProvider()
    //     0x7e9910: bl              #0x7ea240  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::SplashProvider
    // 0x7e9914: ldur            x0, [fp, #-0x20]
    // 0x7e9918: LoadField: r1 = r0->field_27
    //     0x7e9918: ldur            w1, [x0, #0x27]
    // 0x7e991c: DecompressPointer r1
    //     0x7e991c: add             x1, x1, HEAP, lsl #32
    // 0x7e9920: LoadField: r0 = r1->field_7
    //     0x7e9920: ldur            w0, [x1, #7]
    // 0x7e9924: DecompressPointer r0
    //     0x7e9924: add             x0, x0, HEAP, lsl #32
    // 0x7e9928: mov             x1, x0
    // 0x7e992c: r0 = trim()
    //     0x7e992c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x7e9930: ldur            x1, [fp, #-0x18]
    // 0x7e9934: mov             x2, x0
    // 0x7e9938: r0 = loginWithTc()
    //     0x7e9938: bl              #0x7ea184  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::loginWithTc
    // 0x7e993c: mov             x1, x0
    // 0x7e9940: stur            x1, [fp, #-0x20]
    // 0x7e9944: r0 = Await()
    //     0x7e9944: bl              #0x3dd188  ; AwaitStub
    // 0x7e9948: mov             x1, x0
    // 0x7e994c: stur            x1, [fp, #-0x38]
    // 0x7e9950: r16 = true
    //     0x7e9950: add             x16, NULL, #0x20  ; true
    // 0x7e9954: cmp             w1, w16
    // 0x7e9958: b.ne            #0x7e9b00
    // 0x7e995c: r2 = LoadStaticField(0xfe4)
    //     0x7e995c: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x7e9960: ldr             x2, [x2, #0x1fc8]
    // 0x7e9964: stur            x2, [fp, #-0x30]
    // 0x7e9968: cmp             w2, NULL
    // 0x7e996c: b.eq            #0x7e9a68
    // 0x7e9970: LoadField: r3 = r2->field_f
    //     0x7e9970: ldur            w3, [x2, #0xf]
    // 0x7e9974: DecompressPointer r3
    //     0x7e9974: add             x3, x3, HEAP, lsl #32
    // 0x7e9978: stur            x3, [fp, #-0x20]
    // 0x7e997c: r0 = LoadClassIdInstr(r3)
    //     0x7e997c: ldur            x0, [x3, #-1]
    //     0x7e9980: ubfx            x0, x0, #0xc, #0x14
    // 0x7e9984: ldur            x16, [fp, #-0x28]
    // 0x7e9988: stp             x16, x3, [SP]
    // 0x7e998c: mov             lr, x0
    // 0x7e9990: ldr             lr, [x21, lr, lsl #3]
    // 0x7e9994: blr             lr
    // 0x7e9998: tbz             w0, #4, #0x7e9a68
    // 0x7e999c: ldur            x0, [fp, #-0x20]
    // 0x7e99a0: r3 = Null
    //     0x7e99a0: mov             x3, NULL
    // 0x7e99a4: StoreStaticField(0xfe4, r3)
    //     0x7e99a4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7e99a8: str             x3, [x1, #0x1fc8]
    // 0x7e99ac: ldur            x1, [fp, #-0x10]
    // 0x7e99b0: r2 = false
    //     0x7e99b0: add             x2, NULL, #0x30  ; false
    // 0x7e99b4: r0 = didUpdateValue()
    //     0x7e99b4: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x7e99b8: r1 = Null
    //     0x7e99b8: mov             x1, NULL
    // 0x7e99bc: r2 = 6
    //     0x7e99bc: mov             x2, #6
    // 0x7e99c0: r0 = AllocateArray()
    //     0x7e99c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e99c4: mov             x1, x0
    // 0x7e99c8: stur            x1, [fp, #-0x28]
    // 0x7e99cc: r16 = "Bu hesap "
    //     0x7e99cc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bf88] "Bu hesap "
    //     0x7e99d0: ldr             x16, [x16, #0xf88]
    // 0x7e99d4: StoreField: r1->field_f = r16
    //     0x7e99d4: stur            w16, [x1, #0xf]
    // 0x7e99d8: ldur            x0, [fp, #-0x20]
    // 0x7e99dc: r2 = LoadClassIdInstr(r0)
    //     0x7e99dc: ldur            x2, [x0, #-1]
    //     0x7e99e0: ubfx            x2, x2, #0xc, #0x14
    // 0x7e99e4: r16 = "yonetici"
    //     0x7e99e4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x7e99e8: ldr             x16, [x16, #0x798]
    // 0x7e99ec: stp             x16, x0, [SP]
    // 0x7e99f0: mov             x0, x2
    // 0x7e99f4: mov             lr, x0
    // 0x7e99f8: ldr             lr, [x21, lr, lsl #3]
    // 0x7e99fc: blr             lr
    // 0x7e9a00: tbnz            w0, #4, #0x7e9a10
    // 0x7e9a04: r0 = "yönetici"
    //     0x7e9a04: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bf90] "yönetici"
    //     0x7e9a08: ldr             x0, [x0, #0xf90]
    // 0x7e9a0c: b               #0x7e9a18
    // 0x7e9a10: r0 = "misafir"
    //     0x7e9a10: add             x0, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x7e9a14: ldr             x0, [x0, #0x588]
    // 0x7e9a18: ldur            x2, [fp, #-0x28]
    // 0x7e9a1c: mov             x1, x2
    // 0x7e9a20: ArrayStore: r1[1] = r0  ; List_4
    //     0x7e9a20: add             x25, x1, #0x13
    //     0x7e9a24: str             w0, [x25]
    //     0x7e9a28: tbz             w0, #0, #0x7e9a44
    //     0x7e9a2c: ldurb           w16, [x1, #-1]
    //     0x7e9a30: ldurb           w17, [x0, #-1]
    //     0x7e9a34: and             x16, x17, x16, lsr #2
    //     0x7e9a38: tst             x16, HEAP, lsr #32
    //     0x7e9a3c: b.eq            #0x7e9a44
    //     0x7e9a40: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e9a44: r16 = " hesabıdır."
    //     0x7e9a44: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bf98] " hesabıdır."
    //     0x7e9a48: ldr             x16, [x16, #0xf98]
    // 0x7e9a4c: ArrayStore: r2[0] = r16  ; List_4
    //     0x7e9a4c: stur            w16, [x2, #0x17]
    // 0x7e9a50: str             x2, [SP]
    // 0x7e9a54: r0 = _interpolate()
    //     0x7e9a54: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9a58: mov             x1, x0
    // 0x7e9a5c: r0 = showError()
    //     0x7e9a5c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x7e9a60: r0 = false
    //     0x7e9a60: add             x0, NULL, #0x30  ; false
    // 0x7e9a64: r0 = ReturnAsyncNotFuture()
    //     0x7e9a64: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9a68: ldur            x1, [fp, #-0x30]
    // 0x7e9a6c: r0 = getInstance()
    //     0x7e9a6c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x7e9a70: mov             x1, x0
    // 0x7e9a74: stur            x1, [fp, #-0x20]
    // 0x7e9a78: r0 = Await()
    //     0x7e9a78: bl              #0x3dd188  ; AwaitStub
    // 0x7e9a7c: mov             x1, x0
    // 0x7e9a80: ldur            x0, [fp, #-0x30]
    // 0x7e9a84: cmp             w0, NULL
    // 0x7e9a88: b.eq            #0x7e9b5c
    // 0x7e9a8c: LoadField: r4 = r0->field_7
    //     0x7e9a8c: ldur            w4, [x0, #7]
    // 0x7e9a90: DecompressPointer r4
    //     0x7e9a90: add             x4, x4, HEAP, lsl #32
    // 0x7e9a94: mov             x3, x4
    // 0x7e9a98: stur            x4, [fp, #-0x20]
    // 0x7e9a9c: r2 = "user_token"
    //     0x7e9a9c: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x7e9aa0: r0 = setString()
    //     0x7e9aa0: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x7e9aa4: mov             x1, x0
    // 0x7e9aa8: stur            x1, [fp, #-0x28]
    // 0x7e9aac: r0 = Await()
    //     0x7e9aac: bl              #0x3dd188  ; AwaitStub
    // 0x7e9ab0: ldur            x1, [fp, #-0x20]
    // 0x7e9ab4: r0 = saveUserToken()
    //     0x7e9ab4: bl              #0x5f1ac4  ; [package:umrem_demo/common/services/token_service.dart] TokenService::saveUserToken
    // 0x7e9ab8: mov             x1, x0
    // 0x7e9abc: stur            x1, [fp, #-0x20]
    // 0x7e9ac0: r0 = Await()
    //     0x7e9ac0: bl              #0x3dd188  ; AwaitStub
    // 0x7e9ac4: ldur            x1, [fp, #-0x18]
    // 0x7e9ac8: r0 = getData()
    //     0x7e9ac8: bl              #0x5ed12c  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getData
    // 0x7e9acc: mov             x1, x0
    // 0x7e9ad0: stur            x1, [fp, #-0x20]
    // 0x7e9ad4: r0 = Await()
    //     0x7e9ad4: bl              #0x3dd188  ; AwaitStub
    // 0x7e9ad8: ldur            x1, [fp, #-0x30]
    // 0x7e9adc: r0 = syncUserTopics()
    //     0x7e9adc: bl              #0x7e9c7c  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::syncUserTopics
    // 0x7e9ae0: mov             x1, x0
    // 0x7e9ae4: stur            x1, [fp, #-0x20]
    // 0x7e9ae8: r0 = Await()
    //     0x7e9ae8: bl              #0x3dd188  ; AwaitStub
    // 0x7e9aec: ldur            x1, [fp, #-0x10]
    // 0x7e9af0: r0 = _restartBackgroundService()
    //     0x7e9af0: bl              #0x7e9b80  ; [package:umrem_demo/features/auth/providers/login_provider.dart] LoginProvider::_restartBackgroundService
    // 0x7e9af4: mov             x1, x0
    // 0x7e9af8: stur            x1, [fp, #-0x20]
    // 0x7e9afc: r0 = Await()
    //     0x7e9afc: bl              #0x3dd188  ; AwaitStub
    // 0x7e9b00: ldur            x0, [fp, #-0x38]
    // 0x7e9b04: ldur            x1, [fp, #-0x10]
    // 0x7e9b08: r2 = false
    //     0x7e9b08: add             x2, NULL, #0x30  ; false
    // 0x7e9b0c: r0 = didUpdateValue()
    //     0x7e9b0c: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x7e9b10: ldur            x0, [fp, #-0x38]
    // 0x7e9b14: r16 = true
    //     0x7e9b14: add             x16, NULL, #0x20  ; true
    // 0x7e9b18: cmp             w0, w16
    // 0x7e9b1c: b.ne            #0x7e9b28
    // 0x7e9b20: r0 = true
    //     0x7e9b20: add             x0, NULL, #0x20  ; true
    // 0x7e9b24: r0 = ReturnAsyncNotFuture()
    //     0x7e9b24: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9b28: ldur            x0, [fp, #-0x18]
    // 0x7e9b2c: LoadField: r1 = r0->field_2b
    //     0x7e9b2c: ldur            w1, [x0, #0x2b]
    // 0x7e9b30: DecompressPointer r1
    //     0x7e9b30: add             x1, x1, HEAP, lsl #32
    // 0x7e9b34: cmp             w1, NULL
    // 0x7e9b38: b.ne            #0x7e9b44
    // 0x7e9b3c: r1 = "Bir hata oluştu"
    //     0x7e9b3c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bfa0] "Bir hata oluştu"
    //     0x7e9b40: ldr             x1, [x1, #0xfa0]
    // 0x7e9b44: r0 = showError()
    //     0x7e9b44: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x7e9b48: r0 = false
    //     0x7e9b48: add             x0, NULL, #0x30  ; false
    // 0x7e9b4c: r0 = ReturnAsyncNotFuture()
    //     0x7e9b4c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9b50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e9b50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e9b54: b               #0x7e98c4
    // 0x7e9b58: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e9b58: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e9b5c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e9b5c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _restartBackgroundService(/* No info */) async {
    // ** addr: 0x7e9b80, size: 0xfc
    // 0x7e9b80: EnterFrame
    //     0x7e9b80: stp             fp, lr, [SP, #-0x10]!
    //     0x7e9b84: mov             fp, SP
    // 0x7e9b88: AllocStack(0x68)
    //     0x7e9b88: sub             SP, SP, #0x68
    // 0x7e9b8c: SetupParameters(LoginProvider this /* r1 => r1, fp-0x58 */)
    //     0x7e9b8c: stur            NULL, [fp, #-8]
    //     0x7e9b90: stur            x1, [fp, #-0x58]
    // 0x7e9b94: CheckStackOverflow
    //     0x7e9b94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e9b98: cmp             SP, x16
    //     0x7e9b9c: b.ls            #0x7e9c74
    // 0x7e9ba0: InitAsync() -> Future<void?>
    //     0x7e9ba0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e9ba4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e9ba8: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x7e9ba8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e9bac: ldr             x0, [x0, #0x1a28]
    //     0x7e9bb0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7e9bb4: cmp             w0, w16
    //     0x7e9bb8: b.ne            #0x7e9bc8
    //     0x7e9bbc: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x7e9bc0: ldr             x2, [x2, #0x70]
    //     0x7e9bc4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7e9bc8: mov             x1, x0
    // 0x7e9bcc: r2 = "stopService"
    //     0x7e9bcc: ldr             x2, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x7e9bd0: stur            x0, [fp, #-0x58]
    // 0x7e9bd4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e9bd4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e9bd8: r0 = invoke()
    //     0x7e9bd8: bl              #0x5ed040  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::invoke
    // 0x7e9bdc: r1 = Null
    //     0x7e9bdc: mov             x1, NULL
    // 0x7e9be0: r2 = Instance_Duration
    //     0x7e9be0: ldr             x2, [PP, #0x50d0]  ; [pp+0x50d0] Obj!Duration@a2dc91
    // 0x7e9be4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e9be4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e9be8: r0 = Future.delayed()
    //     0x7e9be8: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x7e9bec: mov             x1, x0
    // 0x7e9bf0: stur            x1, [fp, #-0x60]
    // 0x7e9bf4: r0 = Await()
    //     0x7e9bf4: bl              #0x3dd188  ; AwaitStub
    // 0x7e9bf8: ldur            x1, [fp, #-0x58]
    // 0x7e9bfc: r0 = startService()
    //     0x7e9bfc: bl              #0x5ecf58  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::startService
    // 0x7e9c00: mov             x1, x0
    // 0x7e9c04: stur            x1, [fp, #-0x60]
    // 0x7e9c08: r0 = Await()
    //     0x7e9c08: bl              #0x3dd188  ; AwaitStub
    // 0x7e9c0c: b               #0x7e9c6c
    // 0x7e9c10: sub             SP, fp, #0x68
    // 0x7e9c14: stur            x0, [fp, #-0x58]
    // 0x7e9c18: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7e9c18: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e9c1c: ldr             x0, [x0, #0xcb8]
    //     0x7e9c20: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7e9c24: cmp             w0, w16
    //     0x7e9c28: b.ne            #0x7e9c34
    //     0x7e9c2c: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7e9c30: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7e9c34: r1 = Null
    //     0x7e9c34: mov             x1, NULL
    // 0x7e9c38: r2 = 4
    //     0x7e9c38: mov             x2, #4
    // 0x7e9c3c: r0 = AllocateArray()
    //     0x7e9c3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9c40: r16 = "Background service yeniden başlatılırken hata: "
    //     0x7e9c40: add             x16, PP, #0x19, lsl #12  ; [pp+0x19af0] "Background service yeniden başlatılırken hata: "
    //     0x7e9c44: ldr             x16, [x16, #0xaf0]
    // 0x7e9c48: StoreField: r0->field_f = r16
    //     0x7e9c48: stur            w16, [x0, #0xf]
    // 0x7e9c4c: ldur            x1, [fp, #-0x58]
    // 0x7e9c50: StoreField: r0->field_13 = r1
    //     0x7e9c50: stur            w1, [x0, #0x13]
    // 0x7e9c54: str             x0, [SP]
    // 0x7e9c58: r0 = _interpolate()
    //     0x7e9c58: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9c5c: str             NULL, [SP]
    // 0x7e9c60: mov             x1, x0
    // 0x7e9c64: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7e9c64: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7e9c68: r0 = debugPrintThrottled()
    //     0x7e9c68: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7e9c6c: r0 = Null
    //     0x7e9c6c: mov             x0, NULL
    // 0x7e9c70: r0 = ReturnAsyncNotFuture()
    //     0x7e9c70: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9c74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e9c74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e9c78: b               #0x7e9ba0
  }
}
