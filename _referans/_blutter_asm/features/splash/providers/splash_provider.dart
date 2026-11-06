// lib: , url: package:umrem_demo/features/splash/providers/splash_provider.dart

// class id: 1049601, size: 0x8
class :: {
}

// class id: 3860, size: 0x38, field offset: 0x24
class SplashProvider extends ChangeNotifier {

  _ closeLoading(/* No info */) {
    // ** addr: 0x5ecb28, size: 0x38
    // 0x5ecb28: EnterFrame
    //     0x5ecb28: stp             fp, lr, [SP, #-0x10]!
    //     0x5ecb2c: mov             fp, SP
    // 0x5ecb30: r0 = false
    //     0x5ecb30: add             x0, NULL, #0x30  ; false
    // 0x5ecb34: CheckStackOverflow
    //     0x5ecb34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ecb38: cmp             SP, x16
    //     0x5ecb3c: b.ls            #0x5ecb58
    // 0x5ecb40: StoreField: r1->field_23 = r0
    //     0x5ecb40: stur            w0, [x1, #0x23]
    // 0x5ecb44: r0 = notifyListeners()
    //     0x5ecb44: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5ecb48: r0 = Null
    //     0x5ecb48: mov             x0, NULL
    // 0x5ecb4c: LeaveFrame
    //     0x5ecb4c: mov             SP, fp
    //     0x5ecb50: ldp             fp, lr, [SP], #0x10
    // 0x5ecb54: ret
    //     0x5ecb54: ret             
    // 0x5ecb58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ecb58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ecb5c: b               #0x5ecb40
  }
  _ initializeApp(/* No info */) async {
    // ** addr: 0x5ecb80, size: 0xbc
    // 0x5ecb80: EnterFrame
    //     0x5ecb80: stp             fp, lr, [SP, #-0x10]!
    //     0x5ecb84: mov             fp, SP
    // 0x5ecb88: AllocStack(0x18)
    //     0x5ecb88: sub             SP, SP, #0x18
    // 0x5ecb8c: SetupParameters(SplashProvider this /* r1 => r1, fp-0x10 */)
    //     0x5ecb8c: stur            NULL, [fp, #-8]
    //     0x5ecb90: stur            x1, [fp, #-0x10]
    // 0x5ecb94: CheckStackOverflow
    //     0x5ecb94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ecb98: cmp             SP, x16
    //     0x5ecb9c: b.ls            #0x5ecc34
    // 0x5ecba0: InitAsync() -> Future<void?>
    //     0x5ecba0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ecba4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ecba8: ldur            x1, [fp, #-0x10]
    // 0x5ecbac: r2 = "İnternet bağlantısı kontrol ediliyor..."
    //     0x5ecbac: add             x2, PP, #0x19, lsl #12  ; [pp+0x19aa8] "İnternet bağlantısı kontrol ediliyor..."
    //     0x5ecbb0: ldr             x2, [x2, #0xaa8]
    // 0x5ecbb4: r0 = didUpdateValue()
    //     0x5ecbb4: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x5ecbb8: ldur            x1, [fp, #-0x10]
    // 0x5ecbbc: r0 = checkInternetConnection()
    //     0x5ecbbc: bl              #0x5f5208  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::checkInternetConnection
    // 0x5ecbc0: mov             x1, x0
    // 0x5ecbc4: stur            x1, [fp, #-0x18]
    // 0x5ecbc8: r0 = Await()
    //     0x5ecbc8: bl              #0x3dd188  ; AwaitStub
    // 0x5ecbcc: ldur            x0, [fp, #-0x10]
    // 0x5ecbd0: LoadField: r1 = r0->field_27
    //     0x5ecbd0: ldur            w1, [x0, #0x27]
    // 0x5ecbd4: DecompressPointer r1
    //     0x5ecbd4: add             x1, x1, HEAP, lsl #32
    // 0x5ecbd8: tbz             w1, #4, #0x5ecc08
    // 0x5ecbdc: mov             x1, x0
    // 0x5ecbe0: r2 = "Offline modda başlatılıyor..."
    //     0x5ecbe0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19ab0] "Offline modda başlatılıyor..."
    //     0x5ecbe4: ldr             x2, [x2, #0xab0]
    // 0x5ecbe8: r0 = didUpdateValue()
    //     0x5ecbe8: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x5ecbec: ldur            x1, [fp, #-0x10]
    // 0x5ecbf0: r0 = userCheckOffline()
    //     0x5ecbf0: bl              #0x5f1b68  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::userCheckOffline
    // 0x5ecbf4: mov             x1, x0
    // 0x5ecbf8: stur            x1, [fp, #-0x18]
    // 0x5ecbfc: r0 = Await()
    //     0x5ecbfc: bl              #0x3dd188  ; AwaitStub
    // 0x5ecc00: r0 = Null
    //     0x5ecc00: mov             x0, NULL
    // 0x5ecc04: r0 = ReturnAsyncNotFuture()
    //     0x5ecc04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ecc08: ldur            x1, [fp, #-0x10]
    // 0x5ecc0c: r2 = "Veriler yükleniyor..."
    //     0x5ecc0c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19ab8] "Veriler yükleniyor..."
    //     0x5ecc10: ldr             x2, [x2, #0xab8]
    // 0x5ecc14: r0 = didUpdateValue()
    //     0x5ecc14: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x5ecc18: ldur            x1, [fp, #-0x10]
    // 0x5ecc1c: r0 = userCheck()
    //     0x5ecc1c: bl              #0x5ecc3c  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::userCheck
    // 0x5ecc20: mov             x1, x0
    // 0x5ecc24: stur            x1, [fp, #-0x10]
    // 0x5ecc28: r0 = Await()
    //     0x5ecc28: bl              #0x3dd188  ; AwaitStub
    // 0x5ecc2c: r0 = Null
    //     0x5ecc2c: mov             x0, NULL
    // 0x5ecc30: r0 = ReturnAsyncNotFuture()
    //     0x5ecc30: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ecc34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ecc34: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ecc38: b               #0x5ecba0
  }
  _ userCheck(/* No info */) async {
    // ** addr: 0x5ecc3c, size: 0xd8
    // 0x5ecc3c: EnterFrame
    //     0x5ecc3c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ecc40: mov             fp, SP
    // 0x5ecc44: AllocStack(0x18)
    //     0x5ecc44: sub             SP, SP, #0x18
    // 0x5ecc48: SetupParameters(SplashProvider this /* r1 => r1, fp-0x10 */)
    //     0x5ecc48: stur            NULL, [fp, #-8]
    //     0x5ecc4c: stur            x1, [fp, #-0x10]
    // 0x5ecc50: CheckStackOverflow
    //     0x5ecc50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ecc54: cmp             SP, x16
    //     0x5ecc58: b.ls            #0x5ecd0c
    // 0x5ecc5c: InitAsync() -> Future<void?>
    //     0x5ecc5c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ecc60: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ecc64: r0 = getInstance()
    //     0x5ecc64: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5ecc68: mov             x1, x0
    // 0x5ecc6c: stur            x1, [fp, #-0x18]
    // 0x5ecc70: r0 = Await()
    //     0x5ecc70: bl              #0x3dd188  ; AwaitStub
    // 0x5ecc74: mov             x1, x0
    // 0x5ecc78: r2 = "user_token"
    //     0x5ecc78: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5ecc7c: r0 = getString()
    //     0x5ecc7c: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5ecc80: stur            x0, [fp, #-0x18]
    // 0x5ecc84: cmp             w0, NULL
    // 0x5ecc88: b.eq            #0x5ecc94
    // 0x5ecc8c: LoadField: r1 = r0->field_7
    //     0x5ecc8c: ldur            w1, [x0, #7]
    // 0x5ecc90: cbnz            w1, #0x5eccb0
    // 0x5ecc94: ldur            x3, [fp, #-0x10]
    // 0x5ecc98: r0 = "Lütfen TC numaranız ile giriş yapın."
    //     0x5ecc98: add             x0, PP, #0x19, lsl #12  ; [pp+0x19ac0] "Lütfen TC numaranız ile giriş yapın."
    //     0x5ecc9c: ldr             x0, [x0, #0xac0]
    // 0x5ecca0: StoreField: r3->field_2b = r0
    //     0x5ecca0: stur            w0, [x3, #0x2b]
    // 0x5ecca4: mov             x1, x3
    // 0x5ecca8: r0 = closeLoading()
    //     0x5ecca8: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5eccac: b               #0x5ecd04
    // 0x5eccb0: ldur            x3, [fp, #-0x10]
    // 0x5eccb4: mov             x1, x3
    // 0x5eccb8: r2 = "Kullanıcı bulunuyor..."
    //     0x5eccb8: add             x2, PP, #0x19, lsl #12  ; [pp+0x19ac8] "Kullanıcı bulunuyor..."
    //     0x5eccbc: ldr             x2, [x2, #0xac8]
    // 0x5eccc0: r0 = didUpdateValue()
    //     0x5eccc0: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x5eccc4: ldur            x1, [fp, #-0x10]
    // 0x5eccc8: ldur            x2, [fp, #-0x18]
    // 0x5ecccc: r0 = loginWithToken()
    //     0x5ecccc: bl              #0x5ecd14  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::loginWithToken
    // 0x5eccd0: mov             x1, x0
    // 0x5eccd4: stur            x1, [fp, #-0x18]
    // 0x5eccd8: r0 = Await()
    //     0x5eccd8: bl              #0x3dd188  ; AwaitStub
    // 0x5eccdc: r16 = true
    //     0x5eccdc: add             x16, NULL, #0x20  ; true
    // 0x5ecce0: cmp             w0, w16
    // 0x5ecce4: b.eq            #0x5eccfc
    // 0x5ecce8: ldur            x1, [fp, #-0x10]
    // 0x5eccec: r0 = "Kullanıcı bulunamadı. Lütfen kayıt olun."
    //     0x5eccec: add             x0, PP, #0x19, lsl #12  ; [pp+0x19ad0] "Kullanıcı bulunamadı. Lütfen kayıt olun."
    //     0x5eccf0: ldr             x0, [x0, #0xad0]
    // 0x5eccf4: StoreField: r1->field_2b = r0
    //     0x5eccf4: stur            w0, [x1, #0x2b]
    // 0x5eccf8: b               #0x5ecd00
    // 0x5eccfc: ldur            x1, [fp, #-0x10]
    // 0x5ecd00: r0 = closeLoading()
    //     0x5ecd00: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5ecd04: r0 = Null
    //     0x5ecd04: mov             x0, NULL
    // 0x5ecd08: r0 = ReturnAsyncNotFuture()
    //     0x5ecd08: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ecd0c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ecd0c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ecd10: b               #0x5ecc5c
  }
  _ loginWithToken(/* No info */) async {
    // ** addr: 0x5ecd14, size: 0x148
    // 0x5ecd14: EnterFrame
    //     0x5ecd14: stp             fp, lr, [SP, #-0x10]!
    //     0x5ecd18: mov             fp, SP
    // 0x5ecd1c: AllocStack(0x88)
    //     0x5ecd1c: sub             SP, SP, #0x88
    // 0x5ecd20: SetupParameters(SplashProvider this /* r1 => r1, fp-0x68 */, dynamic _ /* r2 => r2, fp-0x70 */)
    //     0x5ecd20: stur            NULL, [fp, #-8]
    //     0x5ecd24: stur            x1, [fp, #-0x68]
    //     0x5ecd28: stur            x2, [fp, #-0x70]
    // 0x5ecd2c: CheckStackOverflow
    //     0x5ecd2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ecd30: cmp             SP, x16
    //     0x5ecd34: b.ls            #0x5ece54
    // 0x5ecd38: InitAsync() -> Future<bool>
    //     0x5ecd38: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5ecd3c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ecd40: ldur            x0, [fp, #-0x68]
    // 0x5ecd44: mov             x1, x0
    // 0x5ecd48: r2 = "Kullanıcı bilgileri yükleniyor..."
    //     0x5ecd48: add             x2, PP, #0x19, lsl #12  ; [pp+0x19ad8] "Kullanıcı bilgileri yükleniyor..."
    //     0x5ecd4c: ldr             x2, [x2, #0xad8]
    // 0x5ecd50: r0 = didUpdateValue()
    //     0x5ecd50: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x5ecd54: ldur            x0, [fp, #-0x68]
    // 0x5ecd58: LoadField: r1 = r0->field_33
    //     0x5ecd58: ldur            w1, [x0, #0x33]
    // 0x5ecd5c: DecompressPointer r1
    //     0x5ecd5c: add             x1, x1, HEAP, lsl #32
    // 0x5ecd60: ldur            x2, [fp, #-0x70]
    // 0x5ecd64: r0 = getUserByToken()
    //     0x5ecd64: bl              #0x5e8964  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUserByToken
    // 0x5ecd68: mov             x1, x0
    // 0x5ecd6c: stur            x1, [fp, #-0x78]
    // 0x5ecd70: r0 = Await()
    //     0x5ecd70: bl              #0x3dd188  ; AwaitStub
    // 0x5ecd74: stur            x0, [fp, #-0x70]
    // 0x5ecd78: cmp             w0, NULL
    // 0x5ecd7c: b.ne            #0x5ecd98
    // 0x5ecd80: ldur            x1, [fp, #-0x68]
    // 0x5ecd84: r0 = "Kullanıcı bulunamadı."
    //     0x5ecd84: add             x0, PP, #0x19, lsl #12  ; [pp+0x19ae0] "Kullanıcı bulunamadı."
    //     0x5ecd88: ldr             x0, [x0, #0xae0]
    // 0x5ecd8c: StoreField: r1->field_2b = r0
    //     0x5ecd8c: stur            w0, [x1, #0x2b]
    // 0x5ecd90: r0 = false
    //     0x5ecd90: add             x0, NULL, #0x30  ; false
    // 0x5ecd94: r0 = ReturnAsyncNotFuture()
    //     0x5ecd94: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ecd98: ldur            x1, [fp, #-0x68]
    // 0x5ecd9c: r0 = getInstance()
    //     0x5ecd9c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5ecda0: mov             x1, x0
    // 0x5ecda4: stur            x1, [fp, #-0x78]
    // 0x5ecda8: r0 = Await()
    //     0x5ecda8: bl              #0x3dd188  ; AwaitStub
    // 0x5ecdac: mov             x4, x0
    // 0x5ecdb0: ldur            x0, [fp, #-0x70]
    // 0x5ecdb4: stur            x4, [fp, #-0x80]
    // 0x5ecdb8: LoadField: r5 = r0->field_7
    //     0x5ecdb8: ldur            w5, [x0, #7]
    // 0x5ecdbc: DecompressPointer r5
    //     0x5ecdbc: add             x5, x5, HEAP, lsl #32
    // 0x5ecdc0: mov             x1, x4
    // 0x5ecdc4: mov             x3, x5
    // 0x5ecdc8: stur            x5, [fp, #-0x78]
    // 0x5ecdcc: r2 = "user_token"
    //     0x5ecdcc: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5ecdd0: r0 = setString()
    //     0x5ecdd0: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ecdd4: mov             x1, x0
    // 0x5ecdd8: stur            x1, [fp, #-0x88]
    // 0x5ecddc: r0 = Await()
    //     0x5ecddc: bl              #0x3dd188  ; AwaitStub
    // 0x5ecde0: ldur            x1, [fp, #-0x78]
    // 0x5ecde4: r0 = saveUserToken()
    //     0x5ecde4: bl              #0x5f1ac4  ; [package:umrem_demo/common/services/token_service.dart] TokenService::saveUserToken
    // 0x5ecde8: mov             x1, x0
    // 0x5ecdec: stur            x1, [fp, #-0x78]
    // 0x5ecdf0: r0 = Await()
    //     0x5ecdf0: bl              #0x3dd188  ; AwaitStub
    // 0x5ecdf4: ldur            x0, [fp, #-0x70]
    // 0x5ecdf8: StoreStaticField(0xfe4, r0)
    //     0x5ecdf8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ecdfc: str             x0, [x1, #0x1fc8]
    // 0x5ece00: ldur            x1, [fp, #-0x68]
    // 0x5ece04: r0 = getData()
    //     0x5ece04: bl              #0x5ed12c  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getData
    // 0x5ece08: mov             x1, x0
    // 0x5ece0c: stur            x1, [fp, #-0x78]
    // 0x5ece10: r0 = Await()
    //     0x5ece10: bl              #0x3dd188  ; AwaitStub
    // 0x5ece14: ldur            x1, [fp, #-0x68]
    // 0x5ece18: r0 = _restartBackgroundService()
    //     0x5ece18: bl              #0x5ece5c  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::_restartBackgroundService
    // 0x5ece1c: mov             x1, x0
    // 0x5ece20: stur            x1, [fp, #-0x78]
    // 0x5ece24: r0 = Await()
    //     0x5ece24: bl              #0x3dd188  ; AwaitStub
    // 0x5ece28: r0 = true
    //     0x5ece28: add             x0, NULL, #0x20  ; true
    // 0x5ece2c: r0 = ReturnAsyncNotFuture()
    //     0x5ece2c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ece30: sub             SP, fp, #0x88
    // 0x5ece34: ldur            x2, [fp, #-0x68]
    // 0x5ece38: r3 = "Giriş yapılırken bir hata oluştu."
    //     0x5ece38: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ae8] "Giriş yapılırken bir hata oluştu."
    //     0x5ece3c: ldr             x3, [x3, #0xae8]
    // 0x5ece40: r3 = "Giriş yapılırken bir hata oluştu."
    //     0x5ece40: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ae8] "Giriş yapılırken bir hata oluştu."
    //     0x5ece44: ldr             x3, [x3, #0xae8]
    // 0x5ece48: StoreField: r2->field_2b = r3
    //     0x5ece48: stur            w3, [x2, #0x2b]
    // 0x5ece4c: r0 = false
    //     0x5ece4c: add             x0, NULL, #0x30  ; false
    // 0x5ece50: r0 = ReturnAsyncNotFuture()
    //     0x5ece50: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ece54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ece54: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ece58: b               #0x5ecd38
  }
  _ _restartBackgroundService(/* No info */) async {
    // ** addr: 0x5ece5c, size: 0xfc
    // 0x5ece5c: EnterFrame
    //     0x5ece5c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ece60: mov             fp, SP
    // 0x5ece64: AllocStack(0x68)
    //     0x5ece64: sub             SP, SP, #0x68
    // 0x5ece68: SetupParameters(SplashProvider this /* r1 => r1, fp-0x58 */)
    //     0x5ece68: stur            NULL, [fp, #-8]
    //     0x5ece6c: stur            x1, [fp, #-0x58]
    // 0x5ece70: CheckStackOverflow
    //     0x5ece70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ece74: cmp             SP, x16
    //     0x5ece78: b.ls            #0x5ecf50
    // 0x5ece7c: InitAsync() -> Future<void?>
    //     0x5ece7c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ece80: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ece84: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x5ece84: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ece88: ldr             x0, [x0, #0x1a28]
    //     0x5ece8c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5ece90: cmp             w0, w16
    //     0x5ece94: b.ne            #0x5ecea4
    //     0x5ece98: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x5ece9c: ldr             x2, [x2, #0x70]
    //     0x5ecea0: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5ecea4: mov             x1, x0
    // 0x5ecea8: r2 = "stopService"
    //     0x5ecea8: ldr             x2, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x5eceac: stur            x0, [fp, #-0x58]
    // 0x5eceb0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5eceb0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5eceb4: r0 = invoke()
    //     0x5eceb4: bl              #0x5ed040  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::invoke
    // 0x5eceb8: r1 = Null
    //     0x5eceb8: mov             x1, NULL
    // 0x5ecebc: r2 = Instance_Duration
    //     0x5ecebc: ldr             x2, [PP, #0x50d0]  ; [pp+0x50d0] Obj!Duration@a2dc91
    // 0x5ecec0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5ecec0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5ecec4: r0 = Future.delayed()
    //     0x5ecec4: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x5ecec8: mov             x1, x0
    // 0x5ececc: stur            x1, [fp, #-0x60]
    // 0x5eced0: r0 = Await()
    //     0x5eced0: bl              #0x3dd188  ; AwaitStub
    // 0x5eced4: ldur            x1, [fp, #-0x58]
    // 0x5eced8: r0 = startService()
    //     0x5eced8: bl              #0x5ecf58  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::startService
    // 0x5ecedc: mov             x1, x0
    // 0x5ecee0: stur            x1, [fp, #-0x60]
    // 0x5ecee4: r0 = Await()
    //     0x5ecee4: bl              #0x3dd188  ; AwaitStub
    // 0x5ecee8: b               #0x5ecf48
    // 0x5eceec: sub             SP, fp, #0x68
    // 0x5ecef0: stur            x0, [fp, #-0x58]
    // 0x5ecef4: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x5ecef4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ecef8: ldr             x0, [x0, #0xcb8]
    //     0x5ecefc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5ecf00: cmp             w0, w16
    //     0x5ecf04: b.ne            #0x5ecf10
    //     0x5ecf08: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x5ecf0c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5ecf10: r1 = Null
    //     0x5ecf10: mov             x1, NULL
    // 0x5ecf14: r2 = 4
    //     0x5ecf14: mov             x2, #4
    // 0x5ecf18: r0 = AllocateArray()
    //     0x5ecf18: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ecf1c: r16 = "Background service yeniden başlatılırken hata: "
    //     0x5ecf1c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19af0] "Background service yeniden başlatılırken hata: "
    //     0x5ecf20: ldr             x16, [x16, #0xaf0]
    // 0x5ecf24: StoreField: r0->field_f = r16
    //     0x5ecf24: stur            w16, [x0, #0xf]
    // 0x5ecf28: ldur            x1, [fp, #-0x58]
    // 0x5ecf2c: StoreField: r0->field_13 = r1
    //     0x5ecf2c: stur            w1, [x0, #0x13]
    // 0x5ecf30: str             x0, [SP]
    // 0x5ecf34: r0 = _interpolate()
    //     0x5ecf34: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5ecf38: str             NULL, [SP]
    // 0x5ecf3c: mov             x1, x0
    // 0x5ecf40: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x5ecf40: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x5ecf44: r0 = debugPrintThrottled()
    //     0x5ecf44: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x5ecf48: r0 = Null
    //     0x5ecf48: mov             x0, NULL
    // 0x5ecf4c: r0 = ReturnAsyncNotFuture()
    //     0x5ecf4c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ecf50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ecf50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ecf54: b               #0x5ece7c
  }
  _ getData(/* No info */) async {
    // ** addr: 0x5ed12c, size: 0x1d4
    // 0x5ed12c: EnterFrame
    //     0x5ed12c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ed130: mov             fp, SP
    // 0x5ed134: AllocStack(0xa8)
    //     0x5ed134: sub             SP, SP, #0xa8
    // 0x5ed138: SetupParameters(SplashProvider this /* r1 => r1, fp-0x58 */)
    //     0x5ed138: stur            NULL, [fp, #-8]
    //     0x5ed13c: stur            x1, [fp, #-0x58]
    // 0x5ed140: CheckStackOverflow
    //     0x5ed140: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ed144: cmp             SP, x16
    //     0x5ed148: b.ls            #0x5ed2f8
    // 0x5ed14c: InitAsync() -> Future<void?>
    //     0x5ed14c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ed150: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ed154: ldur            x1, [fp, #-0x58]
    // 0x5ed158: r0 = getMekkeTrip()
    //     0x5ed158: bl              #0x5f19f0  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMekkeTrip
    // 0x5ed15c: ldur            x1, [fp, #-0x58]
    // 0x5ed160: stur            x0, [fp, #-0x60]
    // 0x5ed164: r0 = getMedineTrip()
    //     0x5ed164: bl              #0x5f191c  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMedineTrip
    // 0x5ed168: ldur            x1, [fp, #-0x58]
    // 0x5ed16c: stur            x0, [fp, #-0x68]
    // 0x5ed170: r0 = getCurrrencies()
    //     0x5ed170: bl              #0x5f1854  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getCurrrencies
    // 0x5ed174: ldur            x1, [fp, #-0x58]
    // 0x5ed178: stur            x0, [fp, #-0x70]
    // 0x5ed17c: r0 = setFcmToken()
    //     0x5ed17c: bl              #0x5ef464  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::setFcmToken
    // 0x5ed180: ldur            x1, [fp, #-0x58]
    // 0x5ed184: stur            x0, [fp, #-0x78]
    // 0x5ed188: r0 = getLastThreeNotifications()
    //     0x5ed188: bl              #0x5eedd0  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getLastThreeNotifications
    // 0x5ed18c: r1 = Null
    //     0x5ed18c: mov             x1, NULL
    // 0x5ed190: r2 = 10
    //     0x5ed190: mov             x2, #0xa
    // 0x5ed194: stur            x0, [fp, #-0x80]
    // 0x5ed198: r0 = AllocateArray()
    //     0x5ed198: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ed19c: mov             x2, x0
    // 0x5ed1a0: ldur            x0, [fp, #-0x60]
    // 0x5ed1a4: stur            x2, [fp, #-0x88]
    // 0x5ed1a8: StoreField: r2->field_f = r0
    //     0x5ed1a8: stur            w0, [x2, #0xf]
    // 0x5ed1ac: ldur            x0, [fp, #-0x68]
    // 0x5ed1b0: StoreField: r2->field_13 = r0
    //     0x5ed1b0: stur            w0, [x2, #0x13]
    // 0x5ed1b4: ldur            x0, [fp, #-0x70]
    // 0x5ed1b8: ArrayStore: r2[0] = r0  ; List_4
    //     0x5ed1b8: stur            w0, [x2, #0x17]
    // 0x5ed1bc: ldur            x0, [fp, #-0x78]
    // 0x5ed1c0: StoreField: r2->field_1b = r0
    //     0x5ed1c0: stur            w0, [x2, #0x1b]
    // 0x5ed1c4: ldur            x0, [fp, #-0x80]
    // 0x5ed1c8: StoreField: r2->field_1f = r0
    //     0x5ed1c8: stur            w0, [x2, #0x1f]
    // 0x5ed1cc: r1 = <Future<void?>>
    //     0x5ed1cc: ldr             x1, [PP, #0x1920]  ; [pp+0x1920] TypeArguments: <Future<void?>>
    // 0x5ed1d0: r0 = AllocateGrowableArray()
    //     0x5ed1d0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x5ed1d4: mov             x1, x0
    // 0x5ed1d8: ldur            x0, [fp, #-0x88]
    // 0x5ed1dc: StoreField: r1->field_f = r0
    //     0x5ed1dc: stur            w0, [x1, #0xf]
    // 0x5ed1e0: r0 = 10
    //     0x5ed1e0: mov             x0, #0xa
    // 0x5ed1e4: StoreField: r1->field_b = r0
    //     0x5ed1e4: stur            w0, [x1, #0xb]
    // 0x5ed1e8: r16 = <void?>
    //     0x5ed1e8: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x5ed1ec: stp             x1, x16, [SP]
    // 0x5ed1f0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5ed1f0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5ed1f4: r0 = wait()
    //     0x5ed1f4: bl              #0x42de24  ; [dart:async] Future::wait
    // 0x5ed1f8: mov             x1, x0
    // 0x5ed1fc: stur            x1, [fp, #-0x60]
    // 0x5ed200: r0 = Await()
    //     0x5ed200: bl              #0x3dd188  ; AwaitStub
    // 0x5ed204: ldur            x1, [fp, #-0x58]
    // 0x5ed208: r0 = getMekkeHotel()
    //     0x5ed208: bl              #0x5eecec  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMekkeHotel
    // 0x5ed20c: ldur            x1, [fp, #-0x58]
    // 0x5ed210: stur            x0, [fp, #-0x60]
    // 0x5ed214: r0 = getMedineHotel()
    //     0x5ed214: bl              #0x5eeb34  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMedineHotel
    // 0x5ed218: ldur            x1, [fp, #-0x58]
    // 0x5ed21c: stur            x0, [fp, #-0x68]
    // 0x5ed220: r0 = getMekkeOda()
    //     0x5ed220: bl              #0x5eea50  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMekkeOda
    // 0x5ed224: ldur            x1, [fp, #-0x58]
    // 0x5ed228: stur            x0, [fp, #-0x70]
    // 0x5ed22c: r0 = getMedineOda()
    //     0x5ed22c: bl              #0x5ee8ac  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMedineOda
    // 0x5ed230: ldur            x1, [fp, #-0x58]
    // 0x5ed234: stur            x0, [fp, #-0x78]
    // 0x5ed238: r0 = getMekkePrayerTimes()
    //     0x5ed238: bl              #0x5ee514  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMekkePrayerTimes
    // 0x5ed23c: ldur            x1, [fp, #-0x58]
    // 0x5ed240: stur            x0, [fp, #-0x80]
    // 0x5ed244: r0 = getMedinePrayerTimes()
    //     0x5ed244: bl              #0x5edb94  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::getMedinePrayerTimes
    // 0x5ed248: r1 = Null
    //     0x5ed248: mov             x1, NULL
    // 0x5ed24c: r2 = 12
    //     0x5ed24c: mov             x2, #0xc
    // 0x5ed250: stur            x0, [fp, #-0x88]
    // 0x5ed254: r0 = AllocateArray()
    //     0x5ed254: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ed258: mov             x2, x0
    // 0x5ed25c: ldur            x0, [fp, #-0x60]
    // 0x5ed260: stur            x2, [fp, #-0x90]
    // 0x5ed264: StoreField: r2->field_f = r0
    //     0x5ed264: stur            w0, [x2, #0xf]
    // 0x5ed268: ldur            x0, [fp, #-0x68]
    // 0x5ed26c: StoreField: r2->field_13 = r0
    //     0x5ed26c: stur            w0, [x2, #0x13]
    // 0x5ed270: ldur            x0, [fp, #-0x70]
    // 0x5ed274: ArrayStore: r2[0] = r0  ; List_4
    //     0x5ed274: stur            w0, [x2, #0x17]
    // 0x5ed278: ldur            x0, [fp, #-0x78]
    // 0x5ed27c: StoreField: r2->field_1b = r0
    //     0x5ed27c: stur            w0, [x2, #0x1b]
    // 0x5ed280: ldur            x0, [fp, #-0x80]
    // 0x5ed284: StoreField: r2->field_1f = r0
    //     0x5ed284: stur            w0, [x2, #0x1f]
    // 0x5ed288: ldur            x0, [fp, #-0x88]
    // 0x5ed28c: StoreField: r2->field_23 = r0
    //     0x5ed28c: stur            w0, [x2, #0x23]
    // 0x5ed290: r1 = <Future<void?>>
    //     0x5ed290: ldr             x1, [PP, #0x1920]  ; [pp+0x1920] TypeArguments: <Future<void?>>
    // 0x5ed294: r0 = AllocateGrowableArray()
    //     0x5ed294: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x5ed298: mov             x1, x0
    // 0x5ed29c: ldur            x0, [fp, #-0x90]
    // 0x5ed2a0: StoreField: r1->field_f = r0
    //     0x5ed2a0: stur            w0, [x1, #0xf]
    // 0x5ed2a4: r0 = 12
    //     0x5ed2a4: mov             x0, #0xc
    // 0x5ed2a8: StoreField: r1->field_b = r0
    //     0x5ed2a8: stur            w0, [x1, #0xb]
    // 0x5ed2ac: r16 = <void?>
    //     0x5ed2ac: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x5ed2b0: stp             x1, x16, [SP, #8]
    // 0x5ed2b4: r16 = false
    //     0x5ed2b4: add             x16, NULL, #0x30  ; false
    // 0x5ed2b8: str             x16, [SP]
    // 0x5ed2bc: r4 = const [0x1, 0x2, 0x2, 0x1, eagerError, 0x1, null]
    //     0x5ed2bc: add             x4, PP, #0x16, lsl #12  ; [pp+0x166a0] List(7) [0x1, 0x2, 0x2, 0x1, "eagerError", 0x1, Null]
    //     0x5ed2c0: ldr             x4, [x4, #0x6a0]
    // 0x5ed2c4: r0 = wait()
    //     0x5ed2c4: bl              #0x42de24  ; [dart:async] Future::wait
    // 0x5ed2c8: mov             x1, x0
    // 0x5ed2cc: stur            x1, [fp, #-0x60]
    // 0x5ed2d0: r0 = Await()
    //     0x5ed2d0: bl              #0x3dd188  ; AwaitStub
    // 0x5ed2d4: ldur            x1, [fp, #-0x58]
    // 0x5ed2d8: r0 = saveLocalData()
    //     0x5ed2d8: bl              #0x5ed300  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::saveLocalData
    // 0x5ed2dc: mov             x1, x0
    // 0x5ed2e0: stur            x1, [fp, #-0x60]
    // 0x5ed2e4: r0 = Await()
    //     0x5ed2e4: bl              #0x3dd188  ; AwaitStub
    // 0x5ed2e8: b               #0x5ed2f0
    // 0x5ed2ec: sub             SP, fp, #0xa8
    // 0x5ed2f0: r0 = Null
    //     0x5ed2f0: mov             x0, NULL
    // 0x5ed2f4: r0 = ReturnAsyncNotFuture()
    //     0x5ed2f4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ed2f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ed2f8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ed2fc: b               #0x5ed14c
  }
  _ saveLocalData(/* No info */) async {
    // ** addr: 0x5ed300, size: 0x49c
    // 0x5ed300: EnterFrame
    //     0x5ed300: stp             fp, lr, [SP, #-0x10]!
    //     0x5ed304: mov             fp, SP
    // 0x5ed308: AllocStack(0x88)
    //     0x5ed308: sub             SP, SP, #0x88
    // 0x5ed30c: SetupParameters(SplashProvider this /* r1 => r1, fp-0x60 */)
    //     0x5ed30c: stur            NULL, [fp, #-8]
    //     0x5ed310: stur            x1, [fp, #-0x60]
    // 0x5ed314: CheckStackOverflow
    //     0x5ed314: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ed318: cmp             SP, x16
    //     0x5ed31c: b.ls            #0x5ed794
    // 0x5ed320: InitAsync() -> Future<void?>
    //     0x5ed320: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ed324: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ed328: r0 = getInstance()
    //     0x5ed328: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5ed32c: mov             x1, x0
    // 0x5ed330: stur            x1, [fp, #-0x60]
    // 0x5ed334: r0 = Await()
    //     0x5ed334: bl              #0x3dd188  ; AwaitStub
    // 0x5ed338: stur            x0, [fp, #-0x60]
    // 0x5ed33c: r1 = LoadStaticField(0xfe4)
    //     0x5ed33c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed340: ldr             x1, [x1, #0x1fc8]
    // 0x5ed344: cmp             w1, NULL
    // 0x5ed348: b.eq            #0x5ed378
    // 0x5ed34c: r0 = toJson()
    //     0x5ed34c: bl              #0x5db3fc  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::toJson
    // 0x5ed350: mov             x1, x0
    // 0x5ed354: r0 = jsonEncode()
    //     0x5ed354: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed358: ldur            x1, [fp, #-0x60]
    // 0x5ed35c: mov             x3, x0
    // 0x5ed360: r2 = "cached_user"
    //     0x5ed360: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b50] "cached_user"
    //     0x5ed364: ldr             x2, [x2, #0xb50]
    // 0x5ed368: r0 = setString()
    //     0x5ed368: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed36c: mov             x1, x0
    // 0x5ed370: stur            x1, [fp, #-0x68]
    // 0x5ed374: r0 = Await()
    //     0x5ed374: bl              #0x3dd188  ; AwaitStub
    // 0x5ed378: r1 = LoadStaticField(0xfec)
    //     0x5ed378: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed37c: ldr             x1, [x1, #0x1fd8]
    // 0x5ed380: cmp             w1, NULL
    // 0x5ed384: b.eq            #0x5ed3b4
    // 0x5ed388: r0 = toJson()
    //     0x5ed388: bl              #0x5da26c  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::toJson
    // 0x5ed38c: mov             x1, x0
    // 0x5ed390: r0 = jsonEncode()
    //     0x5ed390: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed394: ldur            x1, [fp, #-0x60]
    // 0x5ed398: mov             x3, x0
    // 0x5ed39c: r2 = "cached_mekke_trip"
    //     0x5ed39c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b58] "cached_mekke_trip"
    //     0x5ed3a0: ldr             x2, [x2, #0xb58]
    // 0x5ed3a4: r0 = setString()
    //     0x5ed3a4: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed3a8: mov             x1, x0
    // 0x5ed3ac: stur            x1, [fp, #-0x68]
    // 0x5ed3b0: r0 = Await()
    //     0x5ed3b0: bl              #0x3dd188  ; AwaitStub
    // 0x5ed3b4: r1 = LoadStaticField(0xff4)
    //     0x5ed3b4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed3b8: ldr             x1, [x1, #0x1fe8]
    // 0x5ed3bc: cmp             w1, NULL
    // 0x5ed3c0: b.eq            #0x5ed3f0
    // 0x5ed3c4: r0 = toJson()
    //     0x5ed3c4: bl              #0x5d99e8  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::toJson
    // 0x5ed3c8: mov             x1, x0
    // 0x5ed3cc: r0 = jsonEncode()
    //     0x5ed3cc: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed3d0: ldur            x1, [fp, #-0x60]
    // 0x5ed3d4: mov             x3, x0
    // 0x5ed3d8: r2 = "cached_mekke_hotel"
    //     0x5ed3d8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b60] "cached_mekke_hotel"
    //     0x5ed3dc: ldr             x2, [x2, #0xb60]
    // 0x5ed3e0: r0 = setString()
    //     0x5ed3e0: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed3e4: mov             x1, x0
    // 0x5ed3e8: stur            x1, [fp, #-0x68]
    // 0x5ed3ec: r0 = Await()
    //     0x5ed3ec: bl              #0x3dd188  ; AwaitStub
    // 0x5ed3f0: r1 = LoadStaticField(0xffc)
    //     0x5ed3f0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed3f4: ldr             x1, [x1, #0x1ff8]
    // 0x5ed3f8: cmp             w1, NULL
    // 0x5ed3fc: b.eq            #0x5ed42c
    // 0x5ed400: r0 = toJson()
    //     0x5ed400: bl              #0x5d8b8c  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::toJson
    // 0x5ed404: mov             x1, x0
    // 0x5ed408: r0 = jsonEncode()
    //     0x5ed408: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed40c: ldur            x1, [fp, #-0x60]
    // 0x5ed410: mov             x3, x0
    // 0x5ed414: r2 = "cached_mekke_oda"
    //     0x5ed414: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b68] "cached_mekke_oda"
    //     0x5ed418: ldr             x2, [x2, #0xb68]
    // 0x5ed41c: r0 = setString()
    //     0x5ed41c: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed420: mov             x1, x0
    // 0x5ed424: stur            x1, [fp, #-0x68]
    // 0x5ed428: r0 = Await()
    //     0x5ed428: bl              #0x3dd188  ; AwaitStub
    // 0x5ed42c: r1 = LoadStaticField(0x1008)
    //     0x5ed42c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed430: ldr             x1, [x1, #0x2010]
    // 0x5ed434: cmp             w1, NULL
    // 0x5ed438: b.eq            #0x5ed468
    // 0x5ed43c: r0 = toJson()
    //     0x5ed43c: bl              #0x5ed79c  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::toJson
    // 0x5ed440: mov             x1, x0
    // 0x5ed444: r0 = jsonEncode()
    //     0x5ed444: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed448: ldur            x1, [fp, #-0x60]
    // 0x5ed44c: mov             x3, x0
    // 0x5ed450: r2 = "cached_mekke_prayer"
    //     0x5ed450: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b70] "cached_mekke_prayer"
    //     0x5ed454: ldr             x2, [x2, #0xb70]
    // 0x5ed458: r0 = setString()
    //     0x5ed458: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed45c: mov             x1, x0
    // 0x5ed460: stur            x1, [fp, #-0x68]
    // 0x5ed464: r0 = Await()
    //     0x5ed464: bl              #0x3dd188  ; AwaitStub
    // 0x5ed468: r1 = LoadStaticField(0xff0)
    //     0x5ed468: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed46c: ldr             x1, [x1, #0x1fe0]
    // 0x5ed470: cmp             w1, NULL
    // 0x5ed474: b.eq            #0x5ed4a4
    // 0x5ed478: r0 = toJson()
    //     0x5ed478: bl              #0x5da26c  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::toJson
    // 0x5ed47c: mov             x1, x0
    // 0x5ed480: r0 = jsonEncode()
    //     0x5ed480: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed484: ldur            x1, [fp, #-0x60]
    // 0x5ed488: mov             x3, x0
    // 0x5ed48c: r2 = "cached_medine_trip"
    //     0x5ed48c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b78] "cached_medine_trip"
    //     0x5ed490: ldr             x2, [x2, #0xb78]
    // 0x5ed494: r0 = setString()
    //     0x5ed494: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed498: mov             x1, x0
    // 0x5ed49c: stur            x1, [fp, #-0x68]
    // 0x5ed4a0: r0 = Await()
    //     0x5ed4a0: bl              #0x3dd188  ; AwaitStub
    // 0x5ed4a4: r1 = LoadStaticField(0xff8)
    //     0x5ed4a4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed4a8: ldr             x1, [x1, #0x1ff0]
    // 0x5ed4ac: cmp             w1, NULL
    // 0x5ed4b0: b.eq            #0x5ed4e0
    // 0x5ed4b4: r0 = toJson()
    //     0x5ed4b4: bl              #0x5d99e8  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::toJson
    // 0x5ed4b8: mov             x1, x0
    // 0x5ed4bc: r0 = jsonEncode()
    //     0x5ed4bc: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed4c0: ldur            x1, [fp, #-0x60]
    // 0x5ed4c4: mov             x3, x0
    // 0x5ed4c8: r2 = "cached_medine_hotel"
    //     0x5ed4c8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b80] "cached_medine_hotel"
    //     0x5ed4cc: ldr             x2, [x2, #0xb80]
    // 0x5ed4d0: r0 = setString()
    //     0x5ed4d0: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed4d4: mov             x1, x0
    // 0x5ed4d8: stur            x1, [fp, #-0x68]
    // 0x5ed4dc: r0 = Await()
    //     0x5ed4dc: bl              #0x3dd188  ; AwaitStub
    // 0x5ed4e0: r1 = LoadStaticField(0x1000)
    //     0x5ed4e0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed4e4: ldr             x1, [x1, #0x2000]
    // 0x5ed4e8: cmp             w1, NULL
    // 0x5ed4ec: b.eq            #0x5ed51c
    // 0x5ed4f0: r0 = toJson()
    //     0x5ed4f0: bl              #0x5d8b8c  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::toJson
    // 0x5ed4f4: mov             x1, x0
    // 0x5ed4f8: r0 = jsonEncode()
    //     0x5ed4f8: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed4fc: ldur            x1, [fp, #-0x60]
    // 0x5ed500: mov             x3, x0
    // 0x5ed504: r2 = "cached_medine_oda"
    //     0x5ed504: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b88] "cached_medine_oda"
    //     0x5ed508: ldr             x2, [x2, #0xb88]
    // 0x5ed50c: r0 = setString()
    //     0x5ed50c: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed510: mov             x1, x0
    // 0x5ed514: stur            x1, [fp, #-0x68]
    // 0x5ed518: r0 = Await()
    //     0x5ed518: bl              #0x3dd188  ; AwaitStub
    // 0x5ed51c: r1 = LoadStaticField(0x100c)
    //     0x5ed51c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed520: ldr             x1, [x1, #0x2018]
    // 0x5ed524: cmp             w1, NULL
    // 0x5ed528: b.eq            #0x5ed558
    // 0x5ed52c: r0 = toJson()
    //     0x5ed52c: bl              #0x5ed79c  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::toJson
    // 0x5ed530: mov             x1, x0
    // 0x5ed534: r0 = jsonEncode()
    //     0x5ed534: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed538: ldur            x1, [fp, #-0x60]
    // 0x5ed53c: mov             x3, x0
    // 0x5ed540: r2 = "cached_medine_prayer"
    //     0x5ed540: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b90] "cached_medine_prayer"
    //     0x5ed544: ldr             x2, [x2, #0xb90]
    // 0x5ed548: r0 = setString()
    //     0x5ed548: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed54c: mov             x1, x0
    // 0x5ed550: stur            x1, [fp, #-0x68]
    // 0x5ed554: r0 = Await()
    //     0x5ed554: bl              #0x3dd188  ; AwaitStub
    // 0x5ed558: r0 = InitLateStaticField(0x1004) // [package:umrem_demo/main.dart] MyApp::currencies
    //     0x5ed558: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed55c: ldr             x0, [x0, #0x2008]
    //     0x5ed560: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5ed564: cmp             w0, w16
    //     0x5ed568: b.ne            #0x5ed578
    //     0x5ed56c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e10] Field <MyApp.currencies>: static late (offset: 0x1004)
    //     0x5ed570: ldr             x2, [x2, #0xe10]
    //     0x5ed574: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5ed578: r1 = LoadClassIdInstr(r0)
    //     0x5ed578: ldur            x1, [x0, #-1]
    //     0x5ed57c: ubfx            x1, x1, #0xc, #0x14
    // 0x5ed580: mov             x16, x0
    // 0x5ed584: mov             x0, x1
    // 0x5ed588: mov             x1, x16
    // 0x5ed58c: r0 = GDT[cid_x0 + 0xd3a8]()
    //     0x5ed58c: mov             x17, #0xd3a8
    //     0x5ed590: add             lr, x0, x17
    //     0x5ed594: ldr             lr, [x21, lr, lsl #3]
    //     0x5ed598: blr             lr
    // 0x5ed59c: tbnz            w0, #4, #0x5ed644
    // 0x5ed5a0: r0 = LoadStaticField(0x1004)
    //     0x5ed5a0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed5a4: ldr             x0, [x0, #0x2008]
    // 0x5ed5a8: stur            x0, [fp, #-0x68]
    // 0x5ed5ac: r1 = Function '<anonymous closure>':.
    //     0x5ed5ac: add             x1, PP, #0x19, lsl #12  ; [pp+0x19af8] AnonymousClosure: (0x5edaf4), in [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::saveLocalData (0x5ed300)
    //     0x5ed5b0: ldr             x1, [x1, #0xaf8]
    // 0x5ed5b4: r2 = Null
    //     0x5ed5b4: mov             x2, NULL
    // 0x5ed5b8: r0 = AllocateClosure()
    //     0x5ed5b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ed5bc: mov             x1, x0
    // 0x5ed5c0: ldur            x0, [fp, #-0x68]
    // 0x5ed5c4: r2 = LoadClassIdInstr(r0)
    //     0x5ed5c4: ldur            x2, [x0, #-1]
    //     0x5ed5c8: ubfx            x2, x2, #0xc, #0x14
    // 0x5ed5cc: r16 = <Map<String, dynamic>>
    //     0x5ed5cc: ldr             x16, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x5ed5d0: stp             x0, x16, [SP, #8]
    // 0x5ed5d4: str             x1, [SP]
    // 0x5ed5d8: mov             x0, x2
    // 0x5ed5dc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5ed5dc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5ed5e0: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x5ed5e0: mov             x17, #0xd1d6
    //     0x5ed5e4: add             lr, x0, x17
    //     0x5ed5e8: ldr             lr, [x21, lr, lsl #3]
    //     0x5ed5ec: blr             lr
    // 0x5ed5f0: r1 = LoadClassIdInstr(r0)
    //     0x5ed5f0: ldur            x1, [x0, #-1]
    //     0x5ed5f4: ubfx            x1, x1, #0xc, #0x14
    // 0x5ed5f8: mov             x16, x0
    // 0x5ed5fc: mov             x0, x1
    // 0x5ed600: mov             x1, x16
    // 0x5ed604: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5ed604: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5ed608: r0 = GDT[cid_x0 + 0xd299]()
    //     0x5ed608: mov             x17, #0xd299
    //     0x5ed60c: add             lr, x0, x17
    //     0x5ed610: ldr             lr, [x21, lr, lsl #3]
    //     0x5ed614: blr             lr
    // 0x5ed618: mov             x1, x0
    // 0x5ed61c: stur            x0, [fp, #-0x68]
    // 0x5ed620: r0 = jsonEncode()
    //     0x5ed620: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed624: ldur            x1, [fp, #-0x60]
    // 0x5ed628: mov             x3, x0
    // 0x5ed62c: r2 = "cached_currencies"
    //     0x5ed62c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b98] "cached_currencies"
    //     0x5ed630: ldr             x2, [x2, #0xb98]
    // 0x5ed634: r0 = setString()
    //     0x5ed634: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed638: mov             x1, x0
    // 0x5ed63c: stur            x1, [fp, #-0x70]
    // 0x5ed640: r0 = Await()
    //     0x5ed640: bl              #0x3dd188  ; AwaitStub
    // 0x5ed644: r0 = InitLateStaticField(0x1010) // [package:umrem_demo/main.dart] MyApp::notifications
    //     0x5ed644: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed648: ldr             x0, [x0, #0x2020]
    //     0x5ed64c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5ed650: cmp             w0, w16
    //     0x5ed654: b.ne            #0x5ed664
    //     0x5ed658: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e38] Field <MyApp.notifications>: static late (offset: 0x1010)
    //     0x5ed65c: ldr             x2, [x2, #0xe38]
    //     0x5ed660: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5ed664: r1 = LoadClassIdInstr(r0)
    //     0x5ed664: ldur            x1, [x0, #-1]
    //     0x5ed668: ubfx            x1, x1, #0xc, #0x14
    // 0x5ed66c: mov             x16, x0
    // 0x5ed670: mov             x0, x1
    // 0x5ed674: mov             x1, x16
    // 0x5ed678: r0 = GDT[cid_x0 + 0xd3a8]()
    //     0x5ed678: mov             x17, #0xd3a8
    //     0x5ed67c: add             lr, x0, x17
    //     0x5ed680: ldr             lr, [x21, lr, lsl #3]
    //     0x5ed684: blr             lr
    // 0x5ed688: tbnz            w0, #4, #0x5ed730
    // 0x5ed68c: r0 = LoadStaticField(0x1010)
    //     0x5ed68c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ed690: ldr             x0, [x0, #0x2020]
    // 0x5ed694: stur            x0, [fp, #-0x68]
    // 0x5ed698: r1 = Function '<anonymous closure>':.
    //     0x5ed698: add             x1, PP, #0x19, lsl #12  ; [pp+0x19b00] AnonymousClosure: (0x5ed954), in [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::saveLocalData (0x5ed300)
    //     0x5ed69c: ldr             x1, [x1, #0xb00]
    // 0x5ed6a0: r2 = Null
    //     0x5ed6a0: mov             x2, NULL
    // 0x5ed6a4: r0 = AllocateClosure()
    //     0x5ed6a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ed6a8: mov             x1, x0
    // 0x5ed6ac: ldur            x0, [fp, #-0x68]
    // 0x5ed6b0: r2 = LoadClassIdInstr(r0)
    //     0x5ed6b0: ldur            x2, [x0, #-1]
    //     0x5ed6b4: ubfx            x2, x2, #0xc, #0x14
    // 0x5ed6b8: r16 = <Map<String, dynamic>>
    //     0x5ed6b8: ldr             x16, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x5ed6bc: stp             x0, x16, [SP, #8]
    // 0x5ed6c0: str             x1, [SP]
    // 0x5ed6c4: mov             x0, x2
    // 0x5ed6c8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5ed6c8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5ed6cc: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x5ed6cc: mov             x17, #0xd1d6
    //     0x5ed6d0: add             lr, x0, x17
    //     0x5ed6d4: ldr             lr, [x21, lr, lsl #3]
    //     0x5ed6d8: blr             lr
    // 0x5ed6dc: r1 = LoadClassIdInstr(r0)
    //     0x5ed6dc: ldur            x1, [x0, #-1]
    //     0x5ed6e0: ubfx            x1, x1, #0xc, #0x14
    // 0x5ed6e4: mov             x16, x0
    // 0x5ed6e8: mov             x0, x1
    // 0x5ed6ec: mov             x1, x16
    // 0x5ed6f0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5ed6f0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5ed6f4: r0 = GDT[cid_x0 + 0xd299]()
    //     0x5ed6f4: mov             x17, #0xd299
    //     0x5ed6f8: add             lr, x0, x17
    //     0x5ed6fc: ldr             lr, [x21, lr, lsl #3]
    //     0x5ed700: blr             lr
    // 0x5ed704: mov             x1, x0
    // 0x5ed708: stur            x0, [fp, #-0x68]
    // 0x5ed70c: r0 = jsonEncode()
    //     0x5ed70c: bl              #0x5ed90c  ; [dart:convert] ::jsonEncode
    // 0x5ed710: ldur            x1, [fp, #-0x60]
    // 0x5ed714: mov             x3, x0
    // 0x5ed718: r2 = "cached_notifications"
    //     0x5ed718: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ba0] "cached_notifications"
    //     0x5ed71c: ldr             x2, [x2, #0xba0]
    // 0x5ed720: r0 = setString()
    //     0x5ed720: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed724: mov             x1, x0
    // 0x5ed728: stur            x1, [fp, #-0x70]
    // 0x5ed72c: r0 = Await()
    //     0x5ed72c: bl              #0x3dd188  ; AwaitStub
    // 0x5ed730: r0 = DateTime()
    //     0x5ed730: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5ed734: mov             x1, x0
    // 0x5ed738: r0 = false
    //     0x5ed738: add             x0, NULL, #0x30  ; false
    // 0x5ed73c: stur            x1, [fp, #-0x68]
    // 0x5ed740: StoreField: r1->field_7 = r0
    //     0x5ed740: stur            w0, [x1, #7]
    // 0x5ed744: r0 = _getCurrentMicros()
    //     0x5ed744: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5ed748: r1 = LoadInt32Instr(r0)
    //     0x5ed748: sbfx            x1, x0, #1, #0x1f
    //     0x5ed74c: tbz             w0, #0, #0x5ed754
    //     0x5ed750: ldur            x1, [x0, #7]
    // 0x5ed754: ldur            x0, [fp, #-0x68]
    // 0x5ed758: StoreField: r0->field_b = r1
    //     0x5ed758: stur            x1, [x0, #0xb]
    // 0x5ed75c: mov             x1, x0
    // 0x5ed760: r0 = toIso8601String()
    //     0x5ed760: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5ed764: ldur            x1, [fp, #-0x60]
    // 0x5ed768: mov             x3, x0
    // 0x5ed76c: r2 = "last_data_update"
    //     0x5ed76c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ba8] "last_data_update"
    //     0x5ed770: ldr             x2, [x2, #0xba8]
    // 0x5ed774: r0 = setString()
    //     0x5ed774: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5ed778: mov             x1, x0
    // 0x5ed77c: stur            x1, [fp, #-0x68]
    // 0x5ed780: r0 = Await()
    //     0x5ed780: bl              #0x3dd188  ; AwaitStub
    // 0x5ed784: b               #0x5ed78c
    // 0x5ed788: sub             SP, fp, #0x88
    // 0x5ed78c: r0 = Null
    //     0x5ed78c: mov             x0, NULL
    // 0x5ed790: r0 = ReturnAsyncNotFuture()
    //     0x5ed790: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ed794: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ed794: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ed798: b               #0x5ed320
  }
  [closure] Map<String, dynamic> <anonymous closure>(dynamic, NotificationModel) {
    // ** addr: 0x5ed954, size: 0x30
    // 0x5ed954: EnterFrame
    //     0x5ed954: stp             fp, lr, [SP, #-0x10]!
    //     0x5ed958: mov             fp, SP
    // 0x5ed95c: CheckStackOverflow
    //     0x5ed95c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ed960: cmp             SP, x16
    //     0x5ed964: b.ls            #0x5ed97c
    // 0x5ed968: ldr             x1, [fp, #0x10]
    // 0x5ed96c: r0 = toJson()
    //     0x5ed96c: bl              #0x5ed984  ; [package:umrem_demo/features/admin/models/notification_model.dart] NotificationModel::toJson
    // 0x5ed970: LeaveFrame
    //     0x5ed970: mov             SP, fp
    //     0x5ed974: ldp             fp, lr, [SP], #0x10
    // 0x5ed978: ret
    //     0x5ed978: ret             
    // 0x5ed97c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ed97c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ed980: b               #0x5ed968
  }
  [closure] Map<String, dynamic> <anonymous closure>(dynamic, CurrencyModel) {
    // ** addr: 0x5edaf4, size: 0x30
    // 0x5edaf4: EnterFrame
    //     0x5edaf4: stp             fp, lr, [SP, #-0x10]!
    //     0x5edaf8: mov             fp, SP
    // 0x5edafc: CheckStackOverflow
    //     0x5edafc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edb00: cmp             SP, x16
    //     0x5edb04: b.ls            #0x5edb1c
    // 0x5edb08: ldr             x1, [fp, #0x10]
    // 0x5edb0c: r0 = toJson()
    //     0x5edb0c: bl              #0x5e0dd4  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::toJson
    // 0x5edb10: LeaveFrame
    //     0x5edb10: mov             SP, fp
    //     0x5edb14: ldp             fp, lr, [SP], #0x10
    // 0x5edb18: ret
    //     0x5edb18: ret             
    // 0x5edb1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5edb1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5edb20: b               #0x5edb08
  }
  _ getMedinePrayerTimes(/* No info */) async {
    // ** addr: 0x5edb94, size: 0x74
    // 0x5edb94: EnterFrame
    //     0x5edb94: stp             fp, lr, [SP, #-0x10]!
    //     0x5edb98: mov             fp, SP
    // 0x5edb9c: AllocStack(0x60)
    //     0x5edb9c: sub             SP, SP, #0x60
    // 0x5edba0: SetupParameters(SplashProvider this /* r1 => r1, fp-0x58 */)
    //     0x5edba0: stur            NULL, [fp, #-8]
    //     0x5edba4: stur            x1, [fp, #-0x58]
    // 0x5edba8: CheckStackOverflow
    //     0x5edba8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edbac: cmp             SP, x16
    //     0x5edbb0: b.ls            #0x5edc00
    // 0x5edbb4: InitAsync() -> Future<void?>
    //     0x5edbb4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5edbb8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5edbbc: r0 = LoadStaticField(0xff0)
    //     0x5edbbc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5edbc0: ldr             x0, [x0, #0x1fe0]
    // 0x5edbc4: cmp             w0, NULL
    // 0x5edbc8: b.eq            #0x5edbf8
    // 0x5edbcc: ldur            x0, [fp, #-0x58]
    // 0x5edbd0: LoadField: r1 = r0->field_33
    //     0x5edbd0: ldur            w1, [x0, #0x33]
    // 0x5edbd4: DecompressPointer r1
    //     0x5edbd4: add             x1, x1, HEAP, lsl #32
    // 0x5edbd8: r0 = getPrayerTimeMedineByToday()
    //     0x5edbd8: bl              #0x5edc08  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getPrayerTimeMedineByToday
    // 0x5edbdc: mov             x1, x0
    // 0x5edbe0: stur            x1, [fp, #-0x60]
    // 0x5edbe4: r0 = Await()
    //     0x5edbe4: bl              #0x3dd188  ; AwaitStub
    // 0x5edbe8: StoreStaticField(0x100c, r0)
    //     0x5edbe8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5edbec: str             x0, [x2, #0x2018]
    // 0x5edbf0: b               #0x5edbf8
    // 0x5edbf4: sub             SP, fp, #0x60
    // 0x5edbf8: r0 = Null
    //     0x5edbf8: mov             x0, NULL
    // 0x5edbfc: r0 = ReturnAsyncNotFuture()
    //     0x5edbfc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5edc00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5edc00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5edc04: b               #0x5edbb4
  }
  _ getMekkePrayerTimes(/* No info */) async {
    // ** addr: 0x5ee514, size: 0x74
    // 0x5ee514: EnterFrame
    //     0x5ee514: stp             fp, lr, [SP, #-0x10]!
    //     0x5ee518: mov             fp, SP
    // 0x5ee51c: AllocStack(0x60)
    //     0x5ee51c: sub             SP, SP, #0x60
    // 0x5ee520: SetupParameters(SplashProvider this /* r1 => r1, fp-0x58 */)
    //     0x5ee520: stur            NULL, [fp, #-8]
    //     0x5ee524: stur            x1, [fp, #-0x58]
    // 0x5ee528: CheckStackOverflow
    //     0x5ee528: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ee52c: cmp             SP, x16
    //     0x5ee530: b.ls            #0x5ee580
    // 0x5ee534: InitAsync() -> Future<void?>
    //     0x5ee534: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ee538: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ee53c: r0 = LoadStaticField(0xfec)
    //     0x5ee53c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ee540: ldr             x0, [x0, #0x1fd8]
    // 0x5ee544: cmp             w0, NULL
    // 0x5ee548: b.eq            #0x5ee578
    // 0x5ee54c: ldur            x0, [fp, #-0x58]
    // 0x5ee550: LoadField: r1 = r0->field_33
    //     0x5ee550: ldur            w1, [x0, #0x33]
    // 0x5ee554: DecompressPointer r1
    //     0x5ee554: add             x1, x1, HEAP, lsl #32
    // 0x5ee558: r0 = getPrayerTimeMekkeByToday()
    //     0x5ee558: bl              #0x5ee588  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getPrayerTimeMekkeByToday
    // 0x5ee55c: mov             x1, x0
    // 0x5ee560: stur            x1, [fp, #-0x60]
    // 0x5ee564: r0 = Await()
    //     0x5ee564: bl              #0x3dd188  ; AwaitStub
    // 0x5ee568: StoreStaticField(0x1008, r0)
    //     0x5ee568: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5ee56c: str             x0, [x2, #0x2010]
    // 0x5ee570: b               #0x5ee578
    // 0x5ee574: sub             SP, fp, #0x60
    // 0x5ee578: r0 = Null
    //     0x5ee578: mov             x0, NULL
    // 0x5ee57c: r0 = ReturnAsyncNotFuture()
    //     0x5ee57c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ee580: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ee580: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ee584: b               #0x5ee534
  }
  _ getMedineOda(/* No info */) async {
    // ** addr: 0x5ee8ac, size: 0xe4
    // 0x5ee8ac: EnterFrame
    //     0x5ee8ac: stp             fp, lr, [SP, #-0x10]!
    //     0x5ee8b0: mov             fp, SP
    // 0x5ee8b4: AllocStack(0x78)
    //     0x5ee8b4: sub             SP, SP, #0x78
    // 0x5ee8b8: SetupParameters(SplashProvider this /* r1 => r1, fp-0x70 */)
    //     0x5ee8b8: stur            NULL, [fp, #-8]
    //     0x5ee8bc: stur            x1, [fp, #-0x70]
    // 0x5ee8c0: CheckStackOverflow
    //     0x5ee8c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ee8c4: cmp             SP, x16
    //     0x5ee8c8: b.ls            #0x5ee980
    // 0x5ee8cc: InitAsync() -> Future<void?>
    //     0x5ee8cc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ee8d0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ee8d4: r0 = LoadStaticField(0xff0)
    //     0x5ee8d4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ee8d8: ldr             x0, [x0, #0x1fe0]
    // 0x5ee8dc: cmp             w0, NULL
    // 0x5ee8e0: b.eq            #0x5ee978
    // 0x5ee8e4: r0 = LoadStaticField(0xfe4)
    //     0x5ee8e4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ee8e8: ldr             x0, [x0, #0x1fc8]
    // 0x5ee8ec: cmp             w0, NULL
    // 0x5ee8f0: b.ne            #0x5ee8fc
    // 0x5ee8f4: r1 = Null
    //     0x5ee8f4: mov             x1, NULL
    // 0x5ee8f8: b               #0x5ee928
    // 0x5ee8fc: LoadField: r1 = r0->field_2f
    //     0x5ee8fc: ldur            w1, [x0, #0x2f]
    // 0x5ee900: DecompressPointer r1
    //     0x5ee900: add             x1, x1, HEAP, lsl #32
    // 0x5ee904: cmp             w1, NULL
    // 0x5ee908: b.ne            #0x5ee914
    // 0x5ee90c: r1 = Null
    //     0x5ee90c: mov             x1, NULL
    // 0x5ee910: b               #0x5ee928
    // 0x5ee914: LoadField: r2 = r1->field_7
    //     0x5ee914: ldur            w2, [x1, #7]
    // 0x5ee918: cbnz            w2, #0x5ee924
    // 0x5ee91c: r1 = false
    //     0x5ee91c: add             x1, NULL, #0x30  ; false
    // 0x5ee920: b               #0x5ee928
    // 0x5ee924: r1 = true
    //     0x5ee924: add             x1, NULL, #0x20  ; true
    // 0x5ee928: cmp             w1, NULL
    // 0x5ee92c: b.eq            #0x5ee978
    // 0x5ee930: tbnz            w1, #4, #0x5ee978
    // 0x5ee934: ldur            x3, [fp, #-0x70]
    // 0x5ee938: LoadField: r1 = r3->field_33
    //     0x5ee938: ldur            w1, [x3, #0x33]
    // 0x5ee93c: DecompressPointer r1
    //     0x5ee93c: add             x1, x1, HEAP, lsl #32
    // 0x5ee940: cmp             w0, NULL
    // 0x5ee944: b.eq            #0x5ee988
    // 0x5ee948: LoadField: r2 = r0->field_2f
    //     0x5ee948: ldur            w2, [x0, #0x2f]
    // 0x5ee94c: DecompressPointer r2
    //     0x5ee94c: add             x2, x2, HEAP, lsl #32
    // 0x5ee950: cmp             w2, NULL
    // 0x5ee954: b.eq            #0x5ee98c
    // 0x5ee958: r0 = getRoomById()
    //     0x5ee958: bl              #0x5ee990  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRoomById
    // 0x5ee95c: mov             x1, x0
    // 0x5ee960: stur            x1, [fp, #-0x78]
    // 0x5ee964: r0 = Await()
    //     0x5ee964: bl              #0x3dd188  ; AwaitStub
    // 0x5ee968: StoreStaticField(0x1000, r0)
    //     0x5ee968: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5ee96c: str             x0, [x2, #0x2000]
    // 0x5ee970: b               #0x5ee978
    // 0x5ee974: sub             SP, fp, #0x78
    // 0x5ee978: r0 = Null
    //     0x5ee978: mov             x0, NULL
    // 0x5ee97c: r0 = ReturnAsyncNotFuture()
    //     0x5ee97c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ee980: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ee980: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ee984: b               #0x5ee8cc
    // 0x5ee988: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ee988: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5ee98c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ee98c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getMekkeOda(/* No info */) async {
    // ** addr: 0x5eea50, size: 0xe4
    // 0x5eea50: EnterFrame
    //     0x5eea50: stp             fp, lr, [SP, #-0x10]!
    //     0x5eea54: mov             fp, SP
    // 0x5eea58: AllocStack(0x78)
    //     0x5eea58: sub             SP, SP, #0x78
    // 0x5eea5c: SetupParameters(SplashProvider this /* r1 => r1, fp-0x70 */)
    //     0x5eea5c: stur            NULL, [fp, #-8]
    //     0x5eea60: stur            x1, [fp, #-0x70]
    // 0x5eea64: CheckStackOverflow
    //     0x5eea64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eea68: cmp             SP, x16
    //     0x5eea6c: b.ls            #0x5eeb24
    // 0x5eea70: InitAsync() -> Future<void?>
    //     0x5eea70: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5eea74: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5eea78: r0 = LoadStaticField(0xfec)
    //     0x5eea78: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eea7c: ldr             x0, [x0, #0x1fd8]
    // 0x5eea80: cmp             w0, NULL
    // 0x5eea84: b.eq            #0x5eeb1c
    // 0x5eea88: r0 = LoadStaticField(0xfe4)
    //     0x5eea88: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eea8c: ldr             x0, [x0, #0x1fc8]
    // 0x5eea90: cmp             w0, NULL
    // 0x5eea94: b.ne            #0x5eeaa0
    // 0x5eea98: r1 = Null
    //     0x5eea98: mov             x1, NULL
    // 0x5eea9c: b               #0x5eeacc
    // 0x5eeaa0: LoadField: r1 = r0->field_2b
    //     0x5eeaa0: ldur            w1, [x0, #0x2b]
    // 0x5eeaa4: DecompressPointer r1
    //     0x5eeaa4: add             x1, x1, HEAP, lsl #32
    // 0x5eeaa8: cmp             w1, NULL
    // 0x5eeaac: b.ne            #0x5eeab8
    // 0x5eeab0: r1 = Null
    //     0x5eeab0: mov             x1, NULL
    // 0x5eeab4: b               #0x5eeacc
    // 0x5eeab8: LoadField: r2 = r1->field_7
    //     0x5eeab8: ldur            w2, [x1, #7]
    // 0x5eeabc: cbnz            w2, #0x5eeac8
    // 0x5eeac0: r1 = false
    //     0x5eeac0: add             x1, NULL, #0x30  ; false
    // 0x5eeac4: b               #0x5eeacc
    // 0x5eeac8: r1 = true
    //     0x5eeac8: add             x1, NULL, #0x20  ; true
    // 0x5eeacc: cmp             w1, NULL
    // 0x5eead0: b.eq            #0x5eeb1c
    // 0x5eead4: tbnz            w1, #4, #0x5eeb1c
    // 0x5eead8: ldur            x3, [fp, #-0x70]
    // 0x5eeadc: LoadField: r1 = r3->field_33
    //     0x5eeadc: ldur            w1, [x3, #0x33]
    // 0x5eeae0: DecompressPointer r1
    //     0x5eeae0: add             x1, x1, HEAP, lsl #32
    // 0x5eeae4: cmp             w0, NULL
    // 0x5eeae8: b.eq            #0x5eeb2c
    // 0x5eeaec: LoadField: r2 = r0->field_2b
    //     0x5eeaec: ldur            w2, [x0, #0x2b]
    // 0x5eeaf0: DecompressPointer r2
    //     0x5eeaf0: add             x2, x2, HEAP, lsl #32
    // 0x5eeaf4: cmp             w2, NULL
    // 0x5eeaf8: b.eq            #0x5eeb30
    // 0x5eeafc: r0 = getRoomById()
    //     0x5eeafc: bl              #0x5ee990  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRoomById
    // 0x5eeb00: mov             x1, x0
    // 0x5eeb04: stur            x1, [fp, #-0x78]
    // 0x5eeb08: r0 = Await()
    //     0x5eeb08: bl              #0x3dd188  ; AwaitStub
    // 0x5eeb0c: StoreStaticField(0xffc, r0)
    //     0x5eeb0c: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5eeb10: str             x0, [x2, #0x1ff8]
    // 0x5eeb14: b               #0x5eeb1c
    // 0x5eeb18: sub             SP, fp, #0x78
    // 0x5eeb1c: r0 = Null
    //     0x5eeb1c: mov             x0, NULL
    // 0x5eeb20: r0 = ReturnAsyncNotFuture()
    //     0x5eeb20: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eeb24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eeb24: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eeb28: b               #0x5eea70
    // 0x5eeb2c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eeb2c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5eeb30: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eeb30: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getMedineHotel(/* No info */) async {
    // ** addr: 0x5eeb34, size: 0xe4
    // 0x5eeb34: EnterFrame
    //     0x5eeb34: stp             fp, lr, [SP, #-0x10]!
    //     0x5eeb38: mov             fp, SP
    // 0x5eeb3c: AllocStack(0x78)
    //     0x5eeb3c: sub             SP, SP, #0x78
    // 0x5eeb40: SetupParameters(SplashProvider this /* r1 => r1, fp-0x70 */)
    //     0x5eeb40: stur            NULL, [fp, #-8]
    //     0x5eeb44: stur            x1, [fp, #-0x70]
    // 0x5eeb48: CheckStackOverflow
    //     0x5eeb48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eeb4c: cmp             SP, x16
    //     0x5eeb50: b.ls            #0x5eec08
    // 0x5eeb54: InitAsync() -> Future<void?>
    //     0x5eeb54: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5eeb58: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5eeb5c: r0 = LoadStaticField(0xff0)
    //     0x5eeb5c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eeb60: ldr             x0, [x0, #0x1fe0]
    // 0x5eeb64: cmp             w0, NULL
    // 0x5eeb68: b.eq            #0x5eec00
    // 0x5eeb6c: r0 = LoadStaticField(0xfe4)
    //     0x5eeb6c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eeb70: ldr             x0, [x0, #0x1fc8]
    // 0x5eeb74: cmp             w0, NULL
    // 0x5eeb78: b.ne            #0x5eeb84
    // 0x5eeb7c: r1 = Null
    //     0x5eeb7c: mov             x1, NULL
    // 0x5eeb80: b               #0x5eebb0
    // 0x5eeb84: LoadField: r1 = r0->field_27
    //     0x5eeb84: ldur            w1, [x0, #0x27]
    // 0x5eeb88: DecompressPointer r1
    //     0x5eeb88: add             x1, x1, HEAP, lsl #32
    // 0x5eeb8c: cmp             w1, NULL
    // 0x5eeb90: b.ne            #0x5eeb9c
    // 0x5eeb94: r1 = Null
    //     0x5eeb94: mov             x1, NULL
    // 0x5eeb98: b               #0x5eebb0
    // 0x5eeb9c: LoadField: r2 = r1->field_7
    //     0x5eeb9c: ldur            w2, [x1, #7]
    // 0x5eeba0: cbnz            w2, #0x5eebac
    // 0x5eeba4: r1 = false
    //     0x5eeba4: add             x1, NULL, #0x30  ; false
    // 0x5eeba8: b               #0x5eebb0
    // 0x5eebac: r1 = true
    //     0x5eebac: add             x1, NULL, #0x20  ; true
    // 0x5eebb0: cmp             w1, NULL
    // 0x5eebb4: b.eq            #0x5eec00
    // 0x5eebb8: tbnz            w1, #4, #0x5eec00
    // 0x5eebbc: ldur            x3, [fp, #-0x70]
    // 0x5eebc0: LoadField: r1 = r3->field_33
    //     0x5eebc0: ldur            w1, [x3, #0x33]
    // 0x5eebc4: DecompressPointer r1
    //     0x5eebc4: add             x1, x1, HEAP, lsl #32
    // 0x5eebc8: cmp             w0, NULL
    // 0x5eebcc: b.eq            #0x5eec10
    // 0x5eebd0: LoadField: r2 = r0->field_27
    //     0x5eebd0: ldur            w2, [x0, #0x27]
    // 0x5eebd4: DecompressPointer r2
    //     0x5eebd4: add             x2, x2, HEAP, lsl #32
    // 0x5eebd8: cmp             w2, NULL
    // 0x5eebdc: b.eq            #0x5eec14
    // 0x5eebe0: r0 = getHotelById()
    //     0x5eebe0: bl              #0x5eec18  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotelById
    // 0x5eebe4: mov             x1, x0
    // 0x5eebe8: stur            x1, [fp, #-0x78]
    // 0x5eebec: r0 = Await()
    //     0x5eebec: bl              #0x3dd188  ; AwaitStub
    // 0x5eebf0: StoreStaticField(0xff8, r0)
    //     0x5eebf0: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5eebf4: str             x0, [x2, #0x1ff0]
    // 0x5eebf8: b               #0x5eec00
    // 0x5eebfc: sub             SP, fp, #0x78
    // 0x5eec00: r0 = Null
    //     0x5eec00: mov             x0, NULL
    // 0x5eec04: r0 = ReturnAsyncNotFuture()
    //     0x5eec04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eec08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eec08: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eec0c: b               #0x5eeb54
    // 0x5eec10: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eec10: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5eec14: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eec14: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getMekkeHotel(/* No info */) async {
    // ** addr: 0x5eecec, size: 0xe4
    // 0x5eecec: EnterFrame
    //     0x5eecec: stp             fp, lr, [SP, #-0x10]!
    //     0x5eecf0: mov             fp, SP
    // 0x5eecf4: AllocStack(0x78)
    //     0x5eecf4: sub             SP, SP, #0x78
    // 0x5eecf8: SetupParameters(SplashProvider this /* r1 => r1, fp-0x70 */)
    //     0x5eecf8: stur            NULL, [fp, #-8]
    //     0x5eecfc: stur            x1, [fp, #-0x70]
    // 0x5eed00: CheckStackOverflow
    //     0x5eed00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eed04: cmp             SP, x16
    //     0x5eed08: b.ls            #0x5eedc0
    // 0x5eed0c: InitAsync() -> Future<void?>
    //     0x5eed0c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5eed10: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5eed14: r0 = LoadStaticField(0xfec)
    //     0x5eed14: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eed18: ldr             x0, [x0, #0x1fd8]
    // 0x5eed1c: cmp             w0, NULL
    // 0x5eed20: b.eq            #0x5eedb8
    // 0x5eed24: r0 = LoadStaticField(0xfe4)
    //     0x5eed24: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eed28: ldr             x0, [x0, #0x1fc8]
    // 0x5eed2c: cmp             w0, NULL
    // 0x5eed30: b.ne            #0x5eed3c
    // 0x5eed34: r1 = Null
    //     0x5eed34: mov             x1, NULL
    // 0x5eed38: b               #0x5eed68
    // 0x5eed3c: LoadField: r1 = r0->field_23
    //     0x5eed3c: ldur            w1, [x0, #0x23]
    // 0x5eed40: DecompressPointer r1
    //     0x5eed40: add             x1, x1, HEAP, lsl #32
    // 0x5eed44: cmp             w1, NULL
    // 0x5eed48: b.ne            #0x5eed54
    // 0x5eed4c: r1 = Null
    //     0x5eed4c: mov             x1, NULL
    // 0x5eed50: b               #0x5eed68
    // 0x5eed54: LoadField: r2 = r1->field_7
    //     0x5eed54: ldur            w2, [x1, #7]
    // 0x5eed58: cbnz            w2, #0x5eed64
    // 0x5eed5c: r1 = false
    //     0x5eed5c: add             x1, NULL, #0x30  ; false
    // 0x5eed60: b               #0x5eed68
    // 0x5eed64: r1 = true
    //     0x5eed64: add             x1, NULL, #0x20  ; true
    // 0x5eed68: cmp             w1, NULL
    // 0x5eed6c: b.eq            #0x5eedb8
    // 0x5eed70: tbnz            w1, #4, #0x5eedb8
    // 0x5eed74: ldur            x3, [fp, #-0x70]
    // 0x5eed78: LoadField: r1 = r3->field_33
    //     0x5eed78: ldur            w1, [x3, #0x33]
    // 0x5eed7c: DecompressPointer r1
    //     0x5eed7c: add             x1, x1, HEAP, lsl #32
    // 0x5eed80: cmp             w0, NULL
    // 0x5eed84: b.eq            #0x5eedc8
    // 0x5eed88: LoadField: r2 = r0->field_23
    //     0x5eed88: ldur            w2, [x0, #0x23]
    // 0x5eed8c: DecompressPointer r2
    //     0x5eed8c: add             x2, x2, HEAP, lsl #32
    // 0x5eed90: cmp             w2, NULL
    // 0x5eed94: b.eq            #0x5eedcc
    // 0x5eed98: r0 = getHotelById()
    //     0x5eed98: bl              #0x5eec18  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotelById
    // 0x5eed9c: mov             x1, x0
    // 0x5eeda0: stur            x1, [fp, #-0x78]
    // 0x5eeda4: r0 = Await()
    //     0x5eeda4: bl              #0x3dd188  ; AwaitStub
    // 0x5eeda8: StoreStaticField(0xff4, r0)
    //     0x5eeda8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5eedac: str             x0, [x2, #0x1fe8]
    // 0x5eedb0: b               #0x5eedb8
    // 0x5eedb4: sub             SP, fp, #0x78
    // 0x5eedb8: r0 = Null
    //     0x5eedb8: mov             x0, NULL
    // 0x5eedbc: r0 = ReturnAsyncNotFuture()
    //     0x5eedbc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eedc0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eedc0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eedc4: b               #0x5eed0c
    // 0x5eedc8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eedc8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5eedcc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eedcc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getLastThreeNotifications(/* No info */) async {
    // ** addr: 0x5eedd0, size: 0xdc
    // 0x5eedd0: EnterFrame
    //     0x5eedd0: stp             fp, lr, [SP, #-0x10]!
    //     0x5eedd4: mov             fp, SP
    // 0x5eedd8: AllocStack(0x78)
    //     0x5eedd8: sub             SP, SP, #0x78
    // 0x5eeddc: SetupParameters(SplashProvider this /* r1 => r1, fp-0x68 */)
    //     0x5eeddc: stur            NULL, [fp, #-8]
    //     0x5eede0: stur            x1, [fp, #-0x68]
    // 0x5eede4: CheckStackOverflow
    //     0x5eede4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eede8: cmp             SP, x16
    //     0x5eedec: b.ls            #0x5eeea0
    // 0x5eedf0: InitAsync() -> Future<void?>
    //     0x5eedf0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5eedf4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5eedf8: r0 = LoadStaticField(0xfe4)
    //     0x5eedf8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5eedfc: ldr             x0, [x0, #0x1fc8]
    // 0x5eee00: cmp             w0, NULL
    // 0x5eee04: b.ne            #0x5eee10
    // 0x5eee08: r3 = Null
    //     0x5eee08: mov             x3, NULL
    // 0x5eee0c: b               #0x5eee1c
    // 0x5eee10: LoadField: r1 = r0->field_4b
    //     0x5eee10: ldur            w1, [x0, #0x4b]
    // 0x5eee14: DecompressPointer r1
    //     0x5eee14: add             x1, x1, HEAP, lsl #32
    // 0x5eee18: mov             x3, x1
    // 0x5eee1c: stur            x3, [fp, #-0x70]
    // 0x5eee20: cmp             w3, NULL
    // 0x5eee24: b.eq            #0x5eee5c
    // 0x5eee28: LoadField: r1 = r3->field_7
    //     0x5eee28: ldur            w1, [x3, #7]
    // 0x5eee2c: cbz             w1, #0x5eee5c
    // 0x5eee30: ldur            x0, [fp, #-0x68]
    // 0x5eee34: LoadField: r1 = r0->field_33
    //     0x5eee34: ldur            w1, [x0, #0x33]
    // 0x5eee38: DecompressPointer r1
    //     0x5eee38: add             x1, x1, HEAP, lsl #32
    // 0x5eee3c: mov             x2, x3
    // 0x5eee40: r0 = getNotificationsByAgency()
    //     0x5eee40: bl              #0x5ef348  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getNotificationsByAgency
    // 0x5eee44: mov             x1, x0
    // 0x5eee48: stur            x1, [fp, #-0x78]
    // 0x5eee4c: r0 = Await()
    //     0x5eee4c: bl              #0x3dd188  ; AwaitStub
    // 0x5eee50: StoreStaticField(0x1010, r0)
    //     0x5eee50: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5eee54: str             x0, [x1, #0x2020]
    // 0x5eee58: b               #0x5eee98
    // 0x5eee5c: ldur            x3, [fp, #-0x68]
    // 0x5eee60: LoadField: r1 = r3->field_33
    //     0x5eee60: ldur            w1, [x3, #0x33]
    // 0x5eee64: DecompressPointer r1
    //     0x5eee64: add             x1, x1, HEAP, lsl #32
    // 0x5eee68: cmp             w0, NULL
    // 0x5eee6c: b.eq            #0x5eeea8
    // 0x5eee70: LoadField: r2 = r0->field_7
    //     0x5eee70: ldur            w2, [x0, #7]
    // 0x5eee74: DecompressPointer r2
    //     0x5eee74: add             x2, x2, HEAP, lsl #32
    // 0x5eee78: r0 = getLastNotifications()
    //     0x5eee78: bl              #0x5eeeac  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getLastNotifications
    // 0x5eee7c: mov             x1, x0
    // 0x5eee80: stur            x1, [fp, #-0x70]
    // 0x5eee84: r0 = Await()
    //     0x5eee84: bl              #0x3dd188  ; AwaitStub
    // 0x5eee88: StoreStaticField(0x1010, r0)
    //     0x5eee88: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5eee8c: str             x0, [x2, #0x2020]
    // 0x5eee90: b               #0x5eee98
    // 0x5eee94: sub             SP, fp, #0x78
    // 0x5eee98: r0 = Null
    //     0x5eee98: mov             x0, NULL
    // 0x5eee9c: r0 = ReturnAsyncNotFuture()
    //     0x5eee9c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eeea0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eeea0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eeea4: b               #0x5eedf0
    // 0x5eeea8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5eeea8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ setFcmToken(/* No info */) async {
    // ** addr: 0x5ef464, size: 0xe4
    // 0x5ef464: EnterFrame
    //     0x5ef464: stp             fp, lr, [SP, #-0x10]!
    //     0x5ef468: mov             fp, SP
    // 0x5ef46c: AllocStack(0x78)
    //     0x5ef46c: sub             SP, SP, #0x78
    // 0x5ef470: SetupParameters(SplashProvider this /* r1 => r1, fp-0x68 */)
    //     0x5ef470: stur            NULL, [fp, #-8]
    //     0x5ef474: stur            x1, [fp, #-0x68]
    // 0x5ef478: CheckStackOverflow
    //     0x5ef478: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef47c: cmp             SP, x16
    //     0x5ef480: b.ls            #0x5ef53c
    // 0x5ef484: InitAsync() -> Future<void?>
    //     0x5ef484: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ef488: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ef48c: r0 = FirebaseApi()
    //     0x5ef48c: bl              #0x5f1848  ; AllocateFirebaseApiStub -> FirebaseApi (size=0xc)
    // 0x5ef490: stur            x0, [fp, #-0x70]
    // 0x5ef494: r4 = const [0, 0, 0, 0, null]
    //     0x5ef494: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x5ef498: r0 = app()
    //     0x5ef498: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x5ef49c: mov             x2, x0
    // 0x5ef4a0: r1 = Null
    //     0x5ef4a0: mov             x1, NULL
    // 0x5ef4a4: r0 = FirebaseMessaging._instanceFor()
    //     0x5ef4a4: bl              #0x5f16d8  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::FirebaseMessaging._instanceFor
    // 0x5ef4a8: ldur            x2, [fp, #-0x70]
    // 0x5ef4ac: StoreField: r2->field_7 = r0
    //     0x5ef4ac: stur            w0, [x2, #7]
    //     0x5ef4b0: ldurb           w16, [x2, #-1]
    //     0x5ef4b4: ldurb           w17, [x0, #-1]
    //     0x5ef4b8: and             x16, x17, x16, lsr #2
    //     0x5ef4bc: tst             x16, HEAP, lsr #32
    //     0x5ef4c0: b.eq            #0x5ef4c8
    //     0x5ef4c4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5ef4c8: mov             x1, x2
    // 0x5ef4cc: r0 = getFcmToken()
    //     0x5ef4cc: bl              #0x5ef720  ; [package:umrem_demo/common/services/firebase_messaging_service.dart] FirebaseApi::getFcmToken
    // 0x5ef4d0: mov             x1, x0
    // 0x5ef4d4: stur            x1, [fp, #-0x78]
    // 0x5ef4d8: r0 = Await()
    //     0x5ef4d8: bl              #0x3dd188  ; AwaitStub
    // 0x5ef4dc: stur            x0, [fp, #-0x70]
    // 0x5ef4e0: cmp             w0, NULL
    // 0x5ef4e4: b.eq            #0x5ef534
    // 0x5ef4e8: LoadField: r1 = r0->field_7
    //     0x5ef4e8: ldur            w1, [x0, #7]
    // 0x5ef4ec: cbz             w1, #0x5ef534
    // 0x5ef4f0: ldur            x4, [fp, #-0x68]
    // 0x5ef4f4: LoadField: r1 = r4->field_33
    //     0x5ef4f4: ldur            w1, [x4, #0x33]
    // 0x5ef4f8: DecompressPointer r1
    //     0x5ef4f8: add             x1, x1, HEAP, lsl #32
    // 0x5ef4fc: r2 = LoadStaticField(0xfe4)
    //     0x5ef4fc: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5ef500: ldr             x2, [x2, #0x1fc8]
    // 0x5ef504: cmp             w2, NULL
    // 0x5ef508: b.eq            #0x5ef544
    // 0x5ef50c: LoadField: r3 = r2->field_7
    //     0x5ef50c: ldur            w3, [x2, #7]
    // 0x5ef510: DecompressPointer r3
    //     0x5ef510: add             x3, x3, HEAP, lsl #32
    // 0x5ef514: mov             x2, x3
    // 0x5ef518: mov             x3, x0
    // 0x5ef51c: r0 = updateUserFcmToken()
    //     0x5ef51c: bl              #0x5ef5f4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateUserFcmToken
    // 0x5ef520: mov             x1, x0
    // 0x5ef524: stur            x1, [fp, #-0x78]
    // 0x5ef528: r0 = Await()
    //     0x5ef528: bl              #0x3dd188  ; AwaitStub
    // 0x5ef52c: b               #0x5ef534
    // 0x5ef530: sub             SP, fp, #0x78
    // 0x5ef534: r0 = Null
    //     0x5ef534: mov             x0, NULL
    // 0x5ef538: r0 = ReturnAsyncNotFuture()
    //     0x5ef538: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef53c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef53c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef540: b               #0x5ef484
    // 0x5ef544: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ef544: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getCurrrencies(/* No info */) async {
    // ** addr: 0x5f1854, size: 0xc8
    // 0x5f1854: EnterFrame
    //     0x5f1854: stp             fp, lr, [SP, #-0x10]!
    //     0x5f1858: mov             fp, SP
    // 0x5f185c: AllocStack(0x78)
    //     0x5f185c: sub             SP, SP, #0x78
    // 0x5f1860: SetupParameters(SplashProvider this /* r1 => r1, fp-0x68 */)
    //     0x5f1860: stur            NULL, [fp, #-8]
    //     0x5f1864: stur            x1, [fp, #-0x68]
    // 0x5f1868: CheckStackOverflow
    //     0x5f1868: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f186c: cmp             SP, x16
    //     0x5f1870: b.ls            #0x5f1914
    // 0x5f1874: InitAsync() -> Future<void?>
    //     0x5f1874: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5f1878: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f187c: r0 = LoadStaticField(0xfe4)
    //     0x5f187c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1880: ldr             x0, [x0, #0x1fc8]
    // 0x5f1884: cmp             w0, NULL
    // 0x5f1888: b.ne            #0x5f1894
    // 0x5f188c: r0 = Null
    //     0x5f188c: mov             x0, NULL
    // 0x5f1890: b               #0x5f18a0
    // 0x5f1894: LoadField: r1 = r0->field_4b
    //     0x5f1894: ldur            w1, [x0, #0x4b]
    // 0x5f1898: DecompressPointer r1
    //     0x5f1898: add             x1, x1, HEAP, lsl #32
    // 0x5f189c: mov             x0, x1
    // 0x5f18a0: stur            x0, [fp, #-0x70]
    // 0x5f18a4: cmp             w0, NULL
    // 0x5f18a8: b.eq            #0x5f18e0
    // 0x5f18ac: LoadField: r1 = r0->field_7
    //     0x5f18ac: ldur            w1, [x0, #7]
    // 0x5f18b0: cbz             w1, #0x5f18e0
    // 0x5f18b4: ldur            x3, [fp, #-0x68]
    // 0x5f18b8: LoadField: r1 = r3->field_33
    //     0x5f18b8: ldur            w1, [x3, #0x33]
    // 0x5f18bc: DecompressPointer r1
    //     0x5f18bc: add             x1, x1, HEAP, lsl #32
    // 0x5f18c0: mov             x2, x0
    // 0x5f18c4: r0 = getCurrenciesByAgency()
    //     0x5f18c4: bl              #0x5e0ff8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrenciesByAgency
    // 0x5f18c8: mov             x1, x0
    // 0x5f18cc: stur            x1, [fp, #-0x78]
    // 0x5f18d0: r0 = Await()
    //     0x5f18d0: bl              #0x3dd188  ; AwaitStub
    // 0x5f18d4: StoreStaticField(0x1004, r0)
    //     0x5f18d4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f18d8: str             x0, [x1, #0x2008]
    // 0x5f18dc: b               #0x5f190c
    // 0x5f18e0: ldur            x0, [fp, #-0x68]
    // 0x5f18e4: LoadField: r1 = r0->field_33
    //     0x5f18e4: ldur            w1, [x0, #0x33]
    // 0x5f18e8: DecompressPointer r1
    //     0x5f18e8: add             x1, x1, HEAP, lsl #32
    // 0x5f18ec: r0 = getCurrencies()
    //     0x5f18ec: bl              #0x5e049c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrencies
    // 0x5f18f0: mov             x1, x0
    // 0x5f18f4: stur            x1, [fp, #-0x70]
    // 0x5f18f8: r0 = Await()
    //     0x5f18f8: bl              #0x3dd188  ; AwaitStub
    // 0x5f18fc: StoreStaticField(0x1004, r0)
    //     0x5f18fc: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1900: str             x0, [x2, #0x2008]
    // 0x5f1904: b               #0x5f190c
    // 0x5f1908: sub             SP, fp, #0x78
    // 0x5f190c: r0 = Null
    //     0x5f190c: mov             x0, NULL
    // 0x5f1910: r0 = ReturnAsyncNotFuture()
    //     0x5f1910: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1914: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f1914: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f1918: b               #0x5f1874
  }
  _ getMedineTrip(/* No info */) async {
    // ** addr: 0x5f191c, size: 0xd4
    // 0x5f191c: EnterFrame
    //     0x5f191c: stp             fp, lr, [SP, #-0x10]!
    //     0x5f1920: mov             fp, SP
    // 0x5f1924: AllocStack(0x78)
    //     0x5f1924: sub             SP, SP, #0x78
    // 0x5f1928: SetupParameters(SplashProvider this /* r1 => r1, fp-0x70 */)
    //     0x5f1928: stur            NULL, [fp, #-8]
    //     0x5f192c: stur            x1, [fp, #-0x70]
    // 0x5f1930: CheckStackOverflow
    //     0x5f1930: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f1934: cmp             SP, x16
    //     0x5f1938: b.ls            #0x5f19e0
    // 0x5f193c: InitAsync() -> Future<void?>
    //     0x5f193c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5f1940: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f1944: r0 = LoadStaticField(0xfe4)
    //     0x5f1944: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1948: ldr             x0, [x0, #0x1fc8]
    // 0x5f194c: cmp             w0, NULL
    // 0x5f1950: b.ne            #0x5f195c
    // 0x5f1954: r1 = Null
    //     0x5f1954: mov             x1, NULL
    // 0x5f1958: b               #0x5f1988
    // 0x5f195c: LoadField: r1 = r0->field_1f
    //     0x5f195c: ldur            w1, [x0, #0x1f]
    // 0x5f1960: DecompressPointer r1
    //     0x5f1960: add             x1, x1, HEAP, lsl #32
    // 0x5f1964: cmp             w1, NULL
    // 0x5f1968: b.ne            #0x5f1974
    // 0x5f196c: r1 = Null
    //     0x5f196c: mov             x1, NULL
    // 0x5f1970: b               #0x5f1988
    // 0x5f1974: LoadField: r2 = r1->field_7
    //     0x5f1974: ldur            w2, [x1, #7]
    // 0x5f1978: cbnz            w2, #0x5f1984
    // 0x5f197c: r1 = false
    //     0x5f197c: add             x1, NULL, #0x30  ; false
    // 0x5f1980: b               #0x5f1988
    // 0x5f1984: r1 = true
    //     0x5f1984: add             x1, NULL, #0x20  ; true
    // 0x5f1988: cmp             w1, NULL
    // 0x5f198c: b.eq            #0x5f19d8
    // 0x5f1990: tbnz            w1, #4, #0x5f19d8
    // 0x5f1994: ldur            x3, [fp, #-0x70]
    // 0x5f1998: LoadField: r1 = r3->field_33
    //     0x5f1998: ldur            w1, [x3, #0x33]
    // 0x5f199c: DecompressPointer r1
    //     0x5f199c: add             x1, x1, HEAP, lsl #32
    // 0x5f19a0: cmp             w0, NULL
    // 0x5f19a4: b.eq            #0x5f19e8
    // 0x5f19a8: LoadField: r2 = r0->field_1f
    //     0x5f19a8: ldur            w2, [x0, #0x1f]
    // 0x5f19ac: DecompressPointer r2
    //     0x5f19ac: add             x2, x2, HEAP, lsl #32
    // 0x5f19b0: cmp             w2, NULL
    // 0x5f19b4: b.eq            #0x5f19ec
    // 0x5f19b8: r0 = getTripById()
    //     0x5f19b8: bl              #0x5e9600  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripById
    // 0x5f19bc: mov             x1, x0
    // 0x5f19c0: stur            x1, [fp, #-0x78]
    // 0x5f19c4: r0 = Await()
    //     0x5f19c4: bl              #0x3dd188  ; AwaitStub
    // 0x5f19c8: StoreStaticField(0xff0, r0)
    //     0x5f19c8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5f19cc: str             x0, [x2, #0x1fe0]
    // 0x5f19d0: b               #0x5f19d8
    // 0x5f19d4: sub             SP, fp, #0x78
    // 0x5f19d8: r0 = Null
    //     0x5f19d8: mov             x0, NULL
    // 0x5f19dc: r0 = ReturnAsyncNotFuture()
    //     0x5f19dc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f19e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f19e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f19e4: b               #0x5f193c
    // 0x5f19e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f19e8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5f19ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f19ec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getMekkeTrip(/* No info */) async {
    // ** addr: 0x5f19f0, size: 0xd4
    // 0x5f19f0: EnterFrame
    //     0x5f19f0: stp             fp, lr, [SP, #-0x10]!
    //     0x5f19f4: mov             fp, SP
    // 0x5f19f8: AllocStack(0x78)
    //     0x5f19f8: sub             SP, SP, #0x78
    // 0x5f19fc: SetupParameters(SplashProvider this /* r1 => r1, fp-0x70 */)
    //     0x5f19fc: stur            NULL, [fp, #-8]
    //     0x5f1a00: stur            x1, [fp, #-0x70]
    // 0x5f1a04: CheckStackOverflow
    //     0x5f1a04: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f1a08: cmp             SP, x16
    //     0x5f1a0c: b.ls            #0x5f1ab4
    // 0x5f1a10: InitAsync() -> Future<void?>
    //     0x5f1a10: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5f1a14: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f1a18: r0 = LoadStaticField(0xfe4)
    //     0x5f1a18: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1a1c: ldr             x0, [x0, #0x1fc8]
    // 0x5f1a20: cmp             w0, NULL
    // 0x5f1a24: b.ne            #0x5f1a30
    // 0x5f1a28: r1 = Null
    //     0x5f1a28: mov             x1, NULL
    // 0x5f1a2c: b               #0x5f1a5c
    // 0x5f1a30: LoadField: r1 = r0->field_1b
    //     0x5f1a30: ldur            w1, [x0, #0x1b]
    // 0x5f1a34: DecompressPointer r1
    //     0x5f1a34: add             x1, x1, HEAP, lsl #32
    // 0x5f1a38: cmp             w1, NULL
    // 0x5f1a3c: b.ne            #0x5f1a48
    // 0x5f1a40: r1 = Null
    //     0x5f1a40: mov             x1, NULL
    // 0x5f1a44: b               #0x5f1a5c
    // 0x5f1a48: LoadField: r2 = r1->field_7
    //     0x5f1a48: ldur            w2, [x1, #7]
    // 0x5f1a4c: cbnz            w2, #0x5f1a58
    // 0x5f1a50: r1 = false
    //     0x5f1a50: add             x1, NULL, #0x30  ; false
    // 0x5f1a54: b               #0x5f1a5c
    // 0x5f1a58: r1 = true
    //     0x5f1a58: add             x1, NULL, #0x20  ; true
    // 0x5f1a5c: cmp             w1, NULL
    // 0x5f1a60: b.eq            #0x5f1aac
    // 0x5f1a64: tbnz            w1, #4, #0x5f1aac
    // 0x5f1a68: ldur            x3, [fp, #-0x70]
    // 0x5f1a6c: LoadField: r1 = r3->field_33
    //     0x5f1a6c: ldur            w1, [x3, #0x33]
    // 0x5f1a70: DecompressPointer r1
    //     0x5f1a70: add             x1, x1, HEAP, lsl #32
    // 0x5f1a74: cmp             w0, NULL
    // 0x5f1a78: b.eq            #0x5f1abc
    // 0x5f1a7c: LoadField: r2 = r0->field_1b
    //     0x5f1a7c: ldur            w2, [x0, #0x1b]
    // 0x5f1a80: DecompressPointer r2
    //     0x5f1a80: add             x2, x2, HEAP, lsl #32
    // 0x5f1a84: cmp             w2, NULL
    // 0x5f1a88: b.eq            #0x5f1ac0
    // 0x5f1a8c: r0 = getTripById()
    //     0x5f1a8c: bl              #0x5e9600  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripById
    // 0x5f1a90: mov             x1, x0
    // 0x5f1a94: stur            x1, [fp, #-0x78]
    // 0x5f1a98: r0 = Await()
    //     0x5f1a98: bl              #0x3dd188  ; AwaitStub
    // 0x5f1a9c: StoreStaticField(0xfec, r0)
    //     0x5f1a9c: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1aa0: str             x0, [x2, #0x1fd8]
    // 0x5f1aa4: b               #0x5f1aac
    // 0x5f1aa8: sub             SP, fp, #0x78
    // 0x5f1aac: r0 = Null
    //     0x5f1aac: mov             x0, NULL
    // 0x5f1ab0: r0 = ReturnAsyncNotFuture()
    //     0x5f1ab0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1ab4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f1ab4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f1ab8: b               #0x5f1a10
    // 0x5f1abc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f1abc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5f1ac0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5f1ac0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ userCheckOffline(/* No info */) async {
    // ** addr: 0x5f1b68, size: 0x190
    // 0x5f1b68: EnterFrame
    //     0x5f1b68: stp             fp, lr, [SP, #-0x10]!
    //     0x5f1b6c: mov             fp, SP
    // 0x5f1b70: AllocStack(0x20)
    //     0x5f1b70: sub             SP, SP, #0x20
    // 0x5f1b74: SetupParameters(SplashProvider this /* r1 => r1, fp-0x10 */)
    //     0x5f1b74: stur            NULL, [fp, #-8]
    //     0x5f1b78: stur            x1, [fp, #-0x10]
    // 0x5f1b7c: CheckStackOverflow
    //     0x5f1b7c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f1b80: cmp             SP, x16
    //     0x5f1b84: b.ls            #0x5f1cf0
    // 0x5f1b88: InitAsync() -> Future<void?>
    //     0x5f1b88: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5f1b8c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f1b90: r0 = getInstance()
    //     0x5f1b90: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5f1b94: mov             x1, x0
    // 0x5f1b98: stur            x1, [fp, #-0x18]
    // 0x5f1b9c: r0 = Await()
    //     0x5f1b9c: bl              #0x3dd188  ; AwaitStub
    // 0x5f1ba0: mov             x1, x0
    // 0x5f1ba4: r2 = "user_token"
    //     0x5f1ba4: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5f1ba8: stur            x0, [fp, #-0x18]
    // 0x5f1bac: r0 = getString()
    //     0x5f1bac: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1bb0: cmp             w0, NULL
    // 0x5f1bb4: b.eq            #0x5f1bc0
    // 0x5f1bb8: LoadField: r1 = r0->field_7
    //     0x5f1bb8: ldur            w1, [x0, #7]
    // 0x5f1bbc: cbnz            w1, #0x5f1be0
    // 0x5f1bc0: ldur            x0, [fp, #-0x10]
    // 0x5f1bc4: r1 = "Lütfen TC numaranız ile giriş yapın."
    //     0x5f1bc4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19ac0] "Lütfen TC numaranız ile giriş yapın."
    //     0x5f1bc8: ldr             x1, [x1, #0xac0]
    // 0x5f1bcc: StoreField: r0->field_2b = r1
    //     0x5f1bcc: stur            w1, [x0, #0x2b]
    // 0x5f1bd0: mov             x1, x0
    // 0x5f1bd4: r0 = closeLoading()
    //     0x5f1bd4: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5f1bd8: r0 = Null
    //     0x5f1bd8: mov             x0, NULL
    // 0x5f1bdc: r0 = ReturnAsyncNotFuture()
    //     0x5f1bdc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1be0: ldur            x0, [fp, #-0x10]
    // 0x5f1be4: ldur            x1, [fp, #-0x18]
    // 0x5f1be8: r2 = "last_data_update"
    //     0x5f1be8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ba8] "last_data_update"
    //     0x5f1bec: ldr             x2, [x2, #0xba8]
    // 0x5f1bf0: r0 = getString()
    //     0x5f1bf0: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1bf4: cmp             w0, NULL
    // 0x5f1bf8: b.ne            #0x5f1c1c
    // 0x5f1bfc: ldur            x2, [fp, #-0x10]
    // 0x5f1c00: r0 = "Veriler bulunamadı. Lütfen internet bağlantınızı kontrol edin."
    //     0x5f1c00: add             x0, PP, #0x19, lsl #12  ; [pp+0x19ca0] "Veriler bulunamadı. Lütfen internet bağlantınızı kontrol edin."
    //     0x5f1c04: ldr             x0, [x0, #0xca0]
    // 0x5f1c08: StoreField: r2->field_2b = r0
    //     0x5f1c08: stur            w0, [x2, #0x2b]
    // 0x5f1c0c: mov             x1, x2
    // 0x5f1c10: r0 = closeLoading()
    //     0x5f1c10: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5f1c14: r0 = Null
    //     0x5f1c14: mov             x0, NULL
    // 0x5f1c18: r0 = ReturnAsyncNotFuture()
    //     0x5f1c18: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1c1c: ldur            x2, [fp, #-0x10]
    // 0x5f1c20: mov             x1, x0
    // 0x5f1c24: r0 = parse()
    //     0x5f1c24: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f1c28: stur            x0, [fp, #-0x18]
    // 0x5f1c2c: r0 = DateTime()
    //     0x5f1c2c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5f1c30: mov             x1, x0
    // 0x5f1c34: r0 = false
    //     0x5f1c34: add             x0, NULL, #0x30  ; false
    // 0x5f1c38: stur            x1, [fp, #-0x20]
    // 0x5f1c3c: StoreField: r1->field_7 = r0
    //     0x5f1c3c: stur            w0, [x1, #7]
    // 0x5f1c40: r0 = _getCurrentMicros()
    //     0x5f1c40: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5f1c44: r1 = LoadInt32Instr(r0)
    //     0x5f1c44: sbfx            x1, x0, #1, #0x1f
    //     0x5f1c48: tbz             w0, #0, #0x5f1c50
    //     0x5f1c4c: ldur            x1, [x0, #7]
    // 0x5f1c50: ldur            x0, [fp, #-0x20]
    // 0x5f1c54: StoreField: r0->field_b = r1
    //     0x5f1c54: stur            x1, [x0, #0xb]
    // 0x5f1c58: mov             x1, x0
    // 0x5f1c5c: ldur            x2, [fp, #-0x18]
    // 0x5f1c60: r0 = difference()
    //     0x5f1c60: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x5f1c64: LoadField: r1 = r0->field_7
    //     0x5f1c64: ldur            x1, [x0, #7]
    // 0x5f1c68: r0 = 86400000000
    //     0x5f1c68: ldr             x0, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5f1c6c: sdiv            x2, x1, x0
    // 0x5f1c70: cmp             x2, #1
    // 0x5f1c74: b.lt            #0x5f1c98
    // 0x5f1c78: ldur            x0, [fp, #-0x10]
    // 0x5f1c7c: r1 = "Verileriniz güncel değil. Lütfen internet bağlantınızı kontrol edin."
    //     0x5f1c7c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19ca8] "Verileriniz güncel değil. Lütfen internet bağlantınızı kontrol edin."
    //     0x5f1c80: ldr             x1, [x1, #0xca8]
    // 0x5f1c84: StoreField: r0->field_2b = r1
    //     0x5f1c84: stur            w1, [x0, #0x2b]
    // 0x5f1c88: mov             x1, x0
    // 0x5f1c8c: r0 = closeLoading()
    //     0x5f1c8c: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5f1c90: r0 = Null
    //     0x5f1c90: mov             x0, NULL
    // 0x5f1c94: r0 = ReturnAsyncNotFuture()
    //     0x5f1c94: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1c98: ldur            x0, [fp, #-0x10]
    // 0x5f1c9c: mov             x1, x0
    // 0x5f1ca0: r2 = "Yerel veriler yükleniyor..."
    //     0x5f1ca0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19cb0] "Yerel veriler yükleniyor..."
    //     0x5f1ca4: ldr             x2, [x2, #0xcb0]
    // 0x5f1ca8: r0 = didUpdateValue()
    //     0x5f1ca8: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x5f1cac: ldur            x1, [fp, #-0x10]
    // 0x5f1cb0: r0 = loadLocalData()
    //     0x5f1cb0: bl              #0x5f1cf8  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::loadLocalData
    // 0x5f1cb4: mov             x1, x0
    // 0x5f1cb8: stur            x1, [fp, #-0x18]
    // 0x5f1cbc: r0 = Await()
    //     0x5f1cbc: bl              #0x3dd188  ; AwaitStub
    // 0x5f1cc0: r16 = true
    //     0x5f1cc0: add             x16, NULL, #0x20  ; true
    // 0x5f1cc4: cmp             w0, w16
    // 0x5f1cc8: b.eq            #0x5f1ce0
    // 0x5f1ccc: ldur            x1, [fp, #-0x10]
    // 0x5f1cd0: r0 = "Veriler yüklenemedi. Lütfen internet bağlantınızı kontrol edin."
    //     0x5f1cd0: add             x0, PP, #0x19, lsl #12  ; [pp+0x19cb8] "Veriler yüklenemedi. Lütfen internet bağlantınızı kontrol edin."
    //     0x5f1cd4: ldr             x0, [x0, #0xcb8]
    // 0x5f1cd8: StoreField: r1->field_2b = r0
    //     0x5f1cd8: stur            w0, [x1, #0x2b]
    // 0x5f1cdc: b               #0x5f1ce4
    // 0x5f1ce0: ldur            x1, [fp, #-0x10]
    // 0x5f1ce4: r0 = closeLoading()
    //     0x5f1ce4: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5f1ce8: r0 = Null
    //     0x5f1ce8: mov             x0, NULL
    // 0x5f1cec: r0 = ReturnAsyncNotFuture()
    //     0x5f1cec: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1cf0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f1cf0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f1cf4: b               #0x5f1b88
  }
  _ loadLocalData(/* No info */) async {
    // ** addr: 0x5f1cf8, size: 0x520
    // 0x5f1cf8: EnterFrame
    //     0x5f1cf8: stp             fp, lr, [SP, #-0x10]!
    //     0x5f1cfc: mov             fp, SP
    // 0x5f1d00: AllocStack(0xe0)
    //     0x5f1d00: sub             SP, SP, #0xe0
    // 0x5f1d04: SetupParameters(SplashProvider this /* r1 => r1, fp-0xb8 */)
    //     0x5f1d04: stur            NULL, [fp, #-8]
    //     0x5f1d08: stur            x1, [fp, #-0xb8]
    // 0x5f1d0c: CheckStackOverflow
    //     0x5f1d0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f1d10: cmp             SP, x16
    //     0x5f1d14: b.ls            #0x5f2210
    // 0x5f1d18: InitAsync() -> Future<bool>
    //     0x5f1d18: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5f1d1c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f1d20: r0 = getInstance()
    //     0x5f1d20: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5f1d24: mov             x1, x0
    // 0x5f1d28: stur            x1, [fp, #-0xb8]
    // 0x5f1d2c: r0 = Await()
    //     0x5f1d2c: bl              #0x3dd188  ; AwaitStub
    // 0x5f1d30: mov             x1, x0
    // 0x5f1d34: r2 = "cached_user"
    //     0x5f1d34: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b50] "cached_user"
    //     0x5f1d38: ldr             x2, [x2, #0xb50]
    // 0x5f1d3c: stur            x0, [fp, #-0xb8]
    // 0x5f1d40: r0 = getString()
    //     0x5f1d40: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1d44: stur            x0, [fp, #-0xc0]
    // 0x5f1d48: cmp             w0, NULL
    // 0x5f1d4c: b.eq            #0x5f21fc
    // 0x5f1d50: mov             x1, x0
    // 0x5f1d54: r0 = jsonDecode()
    //     0x5f1d54: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1d58: mov             x3, x0
    // 0x5f1d5c: r2 = Null
    //     0x5f1d5c: mov             x2, NULL
    // 0x5f1d60: r1 = Null
    //     0x5f1d60: mov             x1, NULL
    // 0x5f1d64: stur            x3, [fp, #-0xc8]
    // 0x5f1d68: r8 = Map<String, dynamic>
    //     0x5f1d68: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1d6c: r3 = Null
    //     0x5f1d6c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19cc0] Null
    //     0x5f1d70: ldr             x3, [x3, #0xcc0]
    // 0x5f1d74: r0 = Map<String, dynamic>()
    //     0x5f1d74: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1d78: ldur            x2, [fp, #-0xc8]
    // 0x5f1d7c: r1 = Null
    //     0x5f1d7c: mov             x1, NULL
    // 0x5f1d80: r0 = UserModel.fromJson()
    //     0x5f1d80: bl              #0x5f37c0  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::UserModel.fromJson
    // 0x5f1d84: StoreStaticField(0xfe4, r0)
    //     0x5f1d84: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1d88: str             x0, [x1, #0x1fc8]
    // 0x5f1d8c: ldur            x1, [fp, #-0xb8]
    // 0x5f1d90: r2 = "cached_mekke_trip"
    //     0x5f1d90: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b58] "cached_mekke_trip"
    //     0x5f1d94: ldr             x2, [x2, #0xb58]
    // 0x5f1d98: r0 = getString()
    //     0x5f1d98: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1d9c: stur            x0, [fp, #-0xc0]
    // 0x5f1da0: cmp             w0, NULL
    // 0x5f1da4: b.eq            #0x5f1de4
    // 0x5f1da8: mov             x1, x0
    // 0x5f1dac: r0 = jsonDecode()
    //     0x5f1dac: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1db0: mov             x3, x0
    // 0x5f1db4: r2 = Null
    //     0x5f1db4: mov             x2, NULL
    // 0x5f1db8: r1 = Null
    //     0x5f1db8: mov             x1, NULL
    // 0x5f1dbc: stur            x3, [fp, #-0xc8]
    // 0x5f1dc0: r8 = Map<String, dynamic>
    //     0x5f1dc0: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1dc4: r3 = Null
    //     0x5f1dc4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19cd0] Null
    //     0x5f1dc8: ldr             x3, [x3, #0xcd0]
    // 0x5f1dcc: r0 = Map<String, dynamic>()
    //     0x5f1dcc: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1dd0: ldur            x2, [fp, #-0xc8]
    // 0x5f1dd4: r1 = Null
    //     0x5f1dd4: mov             x1, NULL
    // 0x5f1dd8: r0 = TripModel.fromJson()
    //     0x5f1dd8: bl              #0x5f3214  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::TripModel.fromJson
    // 0x5f1ddc: StoreStaticField(0xfec, r0)
    //     0x5f1ddc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1de0: str             x0, [x1, #0x1fd8]
    // 0x5f1de4: ldur            x1, [fp, #-0xb8]
    // 0x5f1de8: r2 = "cached_mekke_hotel"
    //     0x5f1de8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b60] "cached_mekke_hotel"
    //     0x5f1dec: ldr             x2, [x2, #0xb60]
    // 0x5f1df0: r0 = getString()
    //     0x5f1df0: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1df4: stur            x0, [fp, #-0xc0]
    // 0x5f1df8: cmp             w0, NULL
    // 0x5f1dfc: b.eq            #0x5f1e3c
    // 0x5f1e00: mov             x1, x0
    // 0x5f1e04: r0 = jsonDecode()
    //     0x5f1e04: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1e08: mov             x3, x0
    // 0x5f1e0c: r2 = Null
    //     0x5f1e0c: mov             x2, NULL
    // 0x5f1e10: r1 = Null
    //     0x5f1e10: mov             x1, NULL
    // 0x5f1e14: stur            x3, [fp, #-0xc8]
    // 0x5f1e18: r8 = Map<String, dynamic>
    //     0x5f1e18: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1e1c: r3 = Null
    //     0x5f1e1c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ce0] Null
    //     0x5f1e20: ldr             x3, [x3, #0xce0]
    // 0x5f1e24: r0 = Map<String, dynamic>()
    //     0x5f1e24: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1e28: ldur            x2, [fp, #-0xc8]
    // 0x5f1e2c: r1 = Null
    //     0x5f1e2c: mov             x1, NULL
    // 0x5f1e30: r0 = HotelModel.fromJson()
    //     0x5f1e30: bl              #0x5f2c8c  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::HotelModel.fromJson
    // 0x5f1e34: StoreStaticField(0xff4, r0)
    //     0x5f1e34: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1e38: str             x0, [x1, #0x1fe8]
    // 0x5f1e3c: ldur            x1, [fp, #-0xb8]
    // 0x5f1e40: r2 = "cached_mekke_oda"
    //     0x5f1e40: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b68] "cached_mekke_oda"
    //     0x5f1e44: ldr             x2, [x2, #0xb68]
    // 0x5f1e48: r0 = getString()
    //     0x5f1e48: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1e4c: stur            x0, [fp, #-0xc0]
    // 0x5f1e50: cmp             w0, NULL
    // 0x5f1e54: b.eq            #0x5f1e94
    // 0x5f1e58: mov             x1, x0
    // 0x5f1e5c: r0 = jsonDecode()
    //     0x5f1e5c: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1e60: mov             x3, x0
    // 0x5f1e64: r2 = Null
    //     0x5f1e64: mov             x2, NULL
    // 0x5f1e68: r1 = Null
    //     0x5f1e68: mov             x1, NULL
    // 0x5f1e6c: stur            x3, [fp, #-0xc8]
    // 0x5f1e70: r8 = Map<String, dynamic>
    //     0x5f1e70: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1e74: r3 = Null
    //     0x5f1e74: add             x3, PP, #0x19, lsl #12  ; [pp+0x19cf0] Null
    //     0x5f1e78: ldr             x3, [x3, #0xcf0]
    // 0x5f1e7c: r0 = Map<String, dynamic>()
    //     0x5f1e7c: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1e80: ldur            x2, [fp, #-0xc8]
    // 0x5f1e84: r1 = Null
    //     0x5f1e84: mov             x1, NULL
    // 0x5f1e88: r0 = RoomModel.fromJson()
    //     0x5f1e88: bl              #0x5f26fc  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::RoomModel.fromJson
    // 0x5f1e8c: StoreStaticField(0xffc, r0)
    //     0x5f1e8c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1e90: str             x0, [x1, #0x1ff8]
    // 0x5f1e94: ldur            x1, [fp, #-0xb8]
    // 0x5f1e98: r2 = "cached_mekke_prayer"
    //     0x5f1e98: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b70] "cached_mekke_prayer"
    //     0x5f1e9c: ldr             x2, [x2, #0xb70]
    // 0x5f1ea0: r0 = getString()
    //     0x5f1ea0: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1ea4: stur            x0, [fp, #-0xc0]
    // 0x5f1ea8: cmp             w0, NULL
    // 0x5f1eac: b.eq            #0x5f1eec
    // 0x5f1eb0: mov             x1, x0
    // 0x5f1eb4: r0 = jsonDecode()
    //     0x5f1eb4: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1eb8: mov             x3, x0
    // 0x5f1ebc: r2 = Null
    //     0x5f1ebc: mov             x2, NULL
    // 0x5f1ec0: r1 = Null
    //     0x5f1ec0: mov             x1, NULL
    // 0x5f1ec4: stur            x3, [fp, #-0xc8]
    // 0x5f1ec8: r8 = Map<String, dynamic>
    //     0x5f1ec8: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1ecc: r3 = Null
    //     0x5f1ecc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d00] Null
    //     0x5f1ed0: ldr             x3, [x3, #0xd00]
    // 0x5f1ed4: r0 = Map<String, dynamic>()
    //     0x5f1ed4: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1ed8: ldur            x2, [fp, #-0xc8]
    // 0x5f1edc: r1 = Null
    //     0x5f1edc: mov             x1, NULL
    // 0x5f1ee0: r0 = PrayerTimeModel.fromJson()
    //     0x5f1ee0: bl              #0x5f2218  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::PrayerTimeModel.fromJson
    // 0x5f1ee4: StoreStaticField(0x1008, r0)
    //     0x5f1ee4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1ee8: str             x0, [x1, #0x2010]
    // 0x5f1eec: ldur            x1, [fp, #-0xb8]
    // 0x5f1ef0: r2 = "cached_medine_trip"
    //     0x5f1ef0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b78] "cached_medine_trip"
    //     0x5f1ef4: ldr             x2, [x2, #0xb78]
    // 0x5f1ef8: r0 = getString()
    //     0x5f1ef8: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1efc: stur            x0, [fp, #-0xc0]
    // 0x5f1f00: cmp             w0, NULL
    // 0x5f1f04: b.eq            #0x5f1f44
    // 0x5f1f08: mov             x1, x0
    // 0x5f1f0c: r0 = jsonDecode()
    //     0x5f1f0c: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1f10: mov             x3, x0
    // 0x5f1f14: r2 = Null
    //     0x5f1f14: mov             x2, NULL
    // 0x5f1f18: r1 = Null
    //     0x5f1f18: mov             x1, NULL
    // 0x5f1f1c: stur            x3, [fp, #-0xc8]
    // 0x5f1f20: r8 = Map<String, dynamic>
    //     0x5f1f20: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1f24: r3 = Null
    //     0x5f1f24: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d10] Null
    //     0x5f1f28: ldr             x3, [x3, #0xd10]
    // 0x5f1f2c: r0 = Map<String, dynamic>()
    //     0x5f1f2c: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1f30: ldur            x2, [fp, #-0xc8]
    // 0x5f1f34: r1 = Null
    //     0x5f1f34: mov             x1, NULL
    // 0x5f1f38: r0 = TripModel.fromJson()
    //     0x5f1f38: bl              #0x5f3214  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::TripModel.fromJson
    // 0x5f1f3c: StoreStaticField(0xff0, r0)
    //     0x5f1f3c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1f40: str             x0, [x1, #0x1fe0]
    // 0x5f1f44: ldur            x1, [fp, #-0xb8]
    // 0x5f1f48: r2 = "cached_medine_hotel"
    //     0x5f1f48: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b80] "cached_medine_hotel"
    //     0x5f1f4c: ldr             x2, [x2, #0xb80]
    // 0x5f1f50: r0 = getString()
    //     0x5f1f50: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1f54: stur            x0, [fp, #-0xc0]
    // 0x5f1f58: cmp             w0, NULL
    // 0x5f1f5c: b.eq            #0x5f1f9c
    // 0x5f1f60: mov             x1, x0
    // 0x5f1f64: r0 = jsonDecode()
    //     0x5f1f64: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1f68: mov             x3, x0
    // 0x5f1f6c: r2 = Null
    //     0x5f1f6c: mov             x2, NULL
    // 0x5f1f70: r1 = Null
    //     0x5f1f70: mov             x1, NULL
    // 0x5f1f74: stur            x3, [fp, #-0xc8]
    // 0x5f1f78: r8 = Map<String, dynamic>
    //     0x5f1f78: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1f7c: r3 = Null
    //     0x5f1f7c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d20] Null
    //     0x5f1f80: ldr             x3, [x3, #0xd20]
    // 0x5f1f84: r0 = Map<String, dynamic>()
    //     0x5f1f84: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1f88: ldur            x2, [fp, #-0xc8]
    // 0x5f1f8c: r1 = Null
    //     0x5f1f8c: mov             x1, NULL
    // 0x5f1f90: r0 = HotelModel.fromJson()
    //     0x5f1f90: bl              #0x5f2c8c  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::HotelModel.fromJson
    // 0x5f1f94: StoreStaticField(0xff8, r0)
    //     0x5f1f94: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1f98: str             x0, [x1, #0x1ff0]
    // 0x5f1f9c: ldur            x1, [fp, #-0xb8]
    // 0x5f1fa0: r2 = "cached_medine_oda"
    //     0x5f1fa0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b88] "cached_medine_oda"
    //     0x5f1fa4: ldr             x2, [x2, #0xb88]
    // 0x5f1fa8: r0 = getString()
    //     0x5f1fa8: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f1fac: stur            x0, [fp, #-0xc0]
    // 0x5f1fb0: cmp             w0, NULL
    // 0x5f1fb4: b.eq            #0x5f1ff4
    // 0x5f1fb8: mov             x1, x0
    // 0x5f1fbc: r0 = jsonDecode()
    //     0x5f1fbc: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f1fc0: mov             x3, x0
    // 0x5f1fc4: r2 = Null
    //     0x5f1fc4: mov             x2, NULL
    // 0x5f1fc8: r1 = Null
    //     0x5f1fc8: mov             x1, NULL
    // 0x5f1fcc: stur            x3, [fp, #-0xc8]
    // 0x5f1fd0: r8 = Map<String, dynamic>
    //     0x5f1fd0: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f1fd4: r3 = Null
    //     0x5f1fd4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d30] Null
    //     0x5f1fd8: ldr             x3, [x3, #0xd30]
    // 0x5f1fdc: r0 = Map<String, dynamic>()
    //     0x5f1fdc: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f1fe0: ldur            x2, [fp, #-0xc8]
    // 0x5f1fe4: r1 = Null
    //     0x5f1fe4: mov             x1, NULL
    // 0x5f1fe8: r0 = RoomModel.fromJson()
    //     0x5f1fe8: bl              #0x5f26fc  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::RoomModel.fromJson
    // 0x5f1fec: StoreStaticField(0x1000, r0)
    //     0x5f1fec: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f1ff0: str             x0, [x1, #0x2000]
    // 0x5f1ff4: ldur            x1, [fp, #-0xb8]
    // 0x5f1ff8: r2 = "cached_medine_prayer"
    //     0x5f1ff8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b90] "cached_medine_prayer"
    //     0x5f1ffc: ldr             x2, [x2, #0xb90]
    // 0x5f2000: r0 = getString()
    //     0x5f2000: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f2004: stur            x0, [fp, #-0xc0]
    // 0x5f2008: cmp             w0, NULL
    // 0x5f200c: b.eq            #0x5f204c
    // 0x5f2010: mov             x1, x0
    // 0x5f2014: r0 = jsonDecode()
    //     0x5f2014: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f2018: mov             x3, x0
    // 0x5f201c: r2 = Null
    //     0x5f201c: mov             x2, NULL
    // 0x5f2020: r1 = Null
    //     0x5f2020: mov             x1, NULL
    // 0x5f2024: stur            x3, [fp, #-0xc8]
    // 0x5f2028: r8 = Map<String, dynamic>
    //     0x5f2028: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f202c: r3 = Null
    //     0x5f202c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d40] Null
    //     0x5f2030: ldr             x3, [x3, #0xd40]
    // 0x5f2034: r0 = Map<String, dynamic>()
    //     0x5f2034: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f2038: ldur            x2, [fp, #-0xc8]
    // 0x5f203c: r1 = Null
    //     0x5f203c: mov             x1, NULL
    // 0x5f2040: r0 = PrayerTimeModel.fromJson()
    //     0x5f2040: bl              #0x5f2218  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::PrayerTimeModel.fromJson
    // 0x5f2044: StoreStaticField(0x100c, r0)
    //     0x5f2044: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f2048: str             x0, [x1, #0x2018]
    // 0x5f204c: ldur            x1, [fp, #-0xb8]
    // 0x5f2050: r2 = "cached_currencies"
    //     0x5f2050: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b98] "cached_currencies"
    //     0x5f2054: ldr             x2, [x2, #0xb98]
    // 0x5f2058: r0 = getString()
    //     0x5f2058: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f205c: stur            x0, [fp, #-0xc0]
    // 0x5f2060: cmp             w0, NULL
    // 0x5f2064: b.eq            #0x5f2120
    // 0x5f2068: mov             x1, x0
    // 0x5f206c: r0 = jsonDecode()
    //     0x5f206c: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f2070: mov             x3, x0
    // 0x5f2074: r2 = Null
    //     0x5f2074: mov             x2, NULL
    // 0x5f2078: r1 = Null
    //     0x5f2078: mov             x1, NULL
    // 0x5f207c: stur            x3, [fp, #-0xc8]
    // 0x5f2080: r4 = 60
    //     0x5f2080: mov             x4, #0x3c
    // 0x5f2084: branchIfSmi(r0, 0x5f2090)
    //     0x5f2084: tbz             w0, #0, #0x5f2090
    // 0x5f2088: r4 = LoadClassIdInstr(r0)
    //     0x5f2088: ldur            x4, [x0, #-1]
    //     0x5f208c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2090: sub             x4, x4, #0x5a
    // 0x5f2094: cmp             x4, #2
    // 0x5f2098: b.ls            #0x5f20ac
    // 0x5f209c: r8 = List
    //     0x5f209c: ldr             x8, [PP, #0x30b8]  ; [pp+0x30b8] Type: List
    // 0x5f20a0: r3 = Null
    //     0x5f20a0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d50] Null
    //     0x5f20a4: ldr             x3, [x3, #0xd50]
    // 0x5f20a8: r0 = List()
    //     0x5f20a8: bl              #0x93b5b0  ; IsType_List_Stub
    // 0x5f20ac: r1 = Function '<anonymous closure>':.
    //     0x5f20ac: add             x1, PP, #0x19, lsl #12  ; [pp+0x19d60] AnonymousClosure: (0x5f492c), in [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::loadLocalData (0x5f1cf8)
    //     0x5f20b0: ldr             x1, [x1, #0xd60]
    // 0x5f20b4: r2 = Null
    //     0x5f20b4: mov             x2, NULL
    // 0x5f20b8: r0 = AllocateClosure()
    //     0x5f20b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5f20bc: ldur            x1, [fp, #-0xc8]
    // 0x5f20c0: r2 = LoadClassIdInstr(r1)
    //     0x5f20c0: ldur            x2, [x1, #-1]
    //     0x5f20c4: ubfx            x2, x2, #0xc, #0x14
    // 0x5f20c8: r16 = <CurrencyModel>
    //     0x5f20c8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5f20cc: ldr             x16, [x16, #0xd88]
    // 0x5f20d0: stp             x1, x16, [SP, #8]
    // 0x5f20d4: str             x0, [SP]
    // 0x5f20d8: mov             x0, x2
    // 0x5f20dc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5f20dc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5f20e0: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x5f20e0: mov             x17, #0xd1d6
    //     0x5f20e4: add             lr, x0, x17
    //     0x5f20e8: ldr             lr, [x21, lr, lsl #3]
    //     0x5f20ec: blr             lr
    // 0x5f20f0: r1 = LoadClassIdInstr(r0)
    //     0x5f20f0: ldur            x1, [x0, #-1]
    //     0x5f20f4: ubfx            x1, x1, #0xc, #0x14
    // 0x5f20f8: mov             x16, x0
    // 0x5f20fc: mov             x0, x1
    // 0x5f2100: mov             x1, x16
    // 0x5f2104: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5f2104: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5f2108: r0 = GDT[cid_x0 + 0xd299]()
    //     0x5f2108: mov             x17, #0xd299
    //     0x5f210c: add             lr, x0, x17
    //     0x5f2110: ldr             lr, [x21, lr, lsl #3]
    //     0x5f2114: blr             lr
    // 0x5f2118: StoreStaticField(0x1004, r0)
    //     0x5f2118: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5f211c: str             x0, [x1, #0x2008]
    // 0x5f2120: ldur            x1, [fp, #-0xb8]
    // 0x5f2124: r2 = "cached_notifications"
    //     0x5f2124: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ba0] "cached_notifications"
    //     0x5f2128: ldr             x2, [x2, #0xba0]
    // 0x5f212c: r0 = getString()
    //     0x5f212c: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5f2130: stur            x0, [fp, #-0xb8]
    // 0x5f2134: cmp             w0, NULL
    // 0x5f2138: b.eq            #0x5f21f4
    // 0x5f213c: mov             x1, x0
    // 0x5f2140: r0 = jsonDecode()
    //     0x5f2140: bl              #0x5f451c  ; [dart:convert] ::jsonDecode
    // 0x5f2144: mov             x3, x0
    // 0x5f2148: r2 = Null
    //     0x5f2148: mov             x2, NULL
    // 0x5f214c: r1 = Null
    //     0x5f214c: mov             x1, NULL
    // 0x5f2150: stur            x3, [fp, #-0xc0]
    // 0x5f2154: r4 = 60
    //     0x5f2154: mov             x4, #0x3c
    // 0x5f2158: branchIfSmi(r0, 0x5f2164)
    //     0x5f2158: tbz             w0, #0, #0x5f2164
    // 0x5f215c: r4 = LoadClassIdInstr(r0)
    //     0x5f215c: ldur            x4, [x0, #-1]
    //     0x5f2160: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2164: sub             x4, x4, #0x5a
    // 0x5f2168: cmp             x4, #2
    // 0x5f216c: b.ls            #0x5f2180
    // 0x5f2170: r8 = List
    //     0x5f2170: ldr             x8, [PP, #0x30b8]  ; [pp+0x30b8] Type: List
    // 0x5f2174: r3 = Null
    //     0x5f2174: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d68] Null
    //     0x5f2178: ldr             x3, [x3, #0xd68]
    // 0x5f217c: r0 = List()
    //     0x5f217c: bl              #0x93b5b0  ; IsType_List_Stub
    // 0x5f2180: r1 = Function '<anonymous closure>':.
    //     0x5f2180: add             x1, PP, #0x19, lsl #12  ; [pp+0x19d78] AnonymousClosure: (0x5f4564), in [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::loadLocalData (0x5f1cf8)
    //     0x5f2184: ldr             x1, [x1, #0xd78]
    // 0x5f2188: r2 = Null
    //     0x5f2188: mov             x2, NULL
    // 0x5f218c: r0 = AllocateClosure()
    //     0x5f218c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5f2190: ldur            x1, [fp, #-0xc0]
    // 0x5f2194: r2 = LoadClassIdInstr(r1)
    //     0x5f2194: ldur            x2, [x1, #-1]
    //     0x5f2198: ubfx            x2, x2, #0xc, #0x14
    // 0x5f219c: r16 = <NotificationModel>
    //     0x5f219c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x5f21a0: ldr             x16, [x16, #0xdb8]
    // 0x5f21a4: stp             x1, x16, [SP, #8]
    // 0x5f21a8: str             x0, [SP]
    // 0x5f21ac: mov             x0, x2
    // 0x5f21b0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5f21b0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5f21b4: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x5f21b4: mov             x17, #0xd1d6
    //     0x5f21b8: add             lr, x0, x17
    //     0x5f21bc: ldr             lr, [x21, lr, lsl #3]
    //     0x5f21c0: blr             lr
    // 0x5f21c4: r1 = LoadClassIdInstr(r0)
    //     0x5f21c4: ldur            x1, [x0, #-1]
    //     0x5f21c8: ubfx            x1, x1, #0xc, #0x14
    // 0x5f21cc: mov             x16, x0
    // 0x5f21d0: mov             x0, x1
    // 0x5f21d4: mov             x1, x16
    // 0x5f21d8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5f21d8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5f21dc: r0 = GDT[cid_x0 + 0xd299]()
    //     0x5f21dc: mov             x17, #0xd299
    //     0x5f21e0: add             lr, x0, x17
    //     0x5f21e4: ldr             lr, [x21, lr, lsl #3]
    //     0x5f21e8: blr             lr
    // 0x5f21ec: StoreStaticField(0x1010, r0)
    //     0x5f21ec: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5f21f0: str             x0, [x2, #0x2020]
    // 0x5f21f4: r0 = true
    //     0x5f21f4: add             x0, NULL, #0x20  ; true
    // 0x5f21f8: r0 = ReturnAsyncNotFuture()
    //     0x5f21f8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f21fc: r0 = false
    //     0x5f21fc: add             x0, NULL, #0x30  ; false
    // 0x5f2200: r0 = ReturnAsyncNotFuture()
    //     0x5f2200: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f2204: sub             SP, fp, #0xe0
    // 0x5f2208: r0 = false
    //     0x5f2208: add             x0, NULL, #0x30  ; false
    // 0x5f220c: r0 = ReturnAsyncNotFuture()
    //     0x5f220c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f2210: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f2210: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f2214: b               #0x5f1d18
  }
  [closure] NotificationModel <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x5f4564, size: 0x50
    // 0x5f4564: EnterFrame
    //     0x5f4564: stp             fp, lr, [SP, #-0x10]!
    //     0x5f4568: mov             fp, SP
    // 0x5f456c: CheckStackOverflow
    //     0x5f456c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f4570: cmp             SP, x16
    //     0x5f4574: b.ls            #0x5f45ac
    // 0x5f4578: ldr             x0, [fp, #0x10]
    // 0x5f457c: r2 = Null
    //     0x5f457c: mov             x2, NULL
    // 0x5f4580: r1 = Null
    //     0x5f4580: mov             x1, NULL
    // 0x5f4584: r8 = Map<String, dynamic>
    //     0x5f4584: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f4588: r3 = Null
    //     0x5f4588: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d80] Null
    //     0x5f458c: ldr             x3, [x3, #0xd80]
    // 0x5f4590: r0 = Map<String, dynamic>()
    //     0x5f4590: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f4594: ldr             x2, [fp, #0x10]
    // 0x5f4598: r1 = Null
    //     0x5f4598: mov             x1, NULL
    // 0x5f459c: r0 = NotificationModel.fromJson()
    //     0x5f459c: bl              #0x5f45b4  ; [package:umrem_demo/features/admin/models/notification_model.dart] NotificationModel::NotificationModel.fromJson
    // 0x5f45a0: LeaveFrame
    //     0x5f45a0: mov             SP, fp
    //     0x5f45a4: ldp             fp, lr, [SP], #0x10
    // 0x5f45a8: ret
    //     0x5f45a8: ret             
    // 0x5f45ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f45ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f45b0: b               #0x5f4578
  }
  [closure] CurrencyModel <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x5f492c, size: 0x50
    // 0x5f492c: EnterFrame
    //     0x5f492c: stp             fp, lr, [SP, #-0x10]!
    //     0x5f4930: mov             fp, SP
    // 0x5f4934: CheckStackOverflow
    //     0x5f4934: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f4938: cmp             SP, x16
    //     0x5f493c: b.ls            #0x5f4974
    // 0x5f4940: ldr             x0, [fp, #0x10]
    // 0x5f4944: r2 = Null
    //     0x5f4944: mov             x2, NULL
    // 0x5f4948: r1 = Null
    //     0x5f4948: mov             x1, NULL
    // 0x5f494c: r8 = Map<String, dynamic>
    //     0x5f494c: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5f4950: r3 = Null
    //     0x5f4950: add             x3, PP, #0x19, lsl #12  ; [pp+0x19df0] Null
    //     0x5f4954: ldr             x3, [x3, #0xdf0]
    // 0x5f4958: r0 = Map<String, dynamic>()
    //     0x5f4958: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5f495c: ldr             x2, [fp, #0x10]
    // 0x5f4960: r1 = Null
    //     0x5f4960: mov             x1, NULL
    // 0x5f4964: r0 = CurrencyModel.fromJson()
    //     0x5f4964: bl              #0x5f497c  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::CurrencyModel.fromJson
    // 0x5f4968: LeaveFrame
    //     0x5f4968: mov             SP, fp
    //     0x5f496c: ldp             fp, lr, [SP], #0x10
    // 0x5f4970: ret
    //     0x5f4970: ret             
    // 0x5f4974: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f4974: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f4978: b               #0x5f4940
  }
  _ checkInternetConnection(/* No info */) async {
    // ** addr: 0x5f5208, size: 0x60
    // 0x5f5208: EnterFrame
    //     0x5f5208: stp             fp, lr, [SP, #-0x10]!
    //     0x5f520c: mov             fp, SP
    // 0x5f5210: AllocStack(0x18)
    //     0x5f5210: sub             SP, SP, #0x18
    // 0x5f5214: SetupParameters(SplashProvider this /* r1 => r1, fp-0x10 */)
    //     0x5f5214: stur            NULL, [fp, #-8]
    //     0x5f5218: stur            x1, [fp, #-0x10]
    // 0x5f521c: CheckStackOverflow
    //     0x5f521c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f5220: cmp             SP, x16
    //     0x5f5224: b.ls            #0x5f5260
    // 0x5f5228: InitAsync() -> Future<void?>
    //     0x5f5228: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5f522c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f5230: ldur            x0, [fp, #-0x10]
    // 0x5f5234: LoadField: r1 = r0->field_2f
    //     0x5f5234: ldur            w1, [x0, #0x2f]
    // 0x5f5238: DecompressPointer r1
    //     0x5f5238: add             x1, x1, HEAP, lsl #32
    // 0x5f523c: r0 = hasInternetConnection()
    //     0x5f523c: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x5f5240: mov             x1, x0
    // 0x5f5244: stur            x1, [fp, #-0x18]
    // 0x5f5248: r0 = Await()
    //     0x5f5248: bl              #0x3dd188  ; AwaitStub
    // 0x5f524c: ldur            x1, [fp, #-0x10]
    // 0x5f5250: mov             x2, x0
    // 0x5f5254: r0 = setHasInternet()
    //     0x5f5254: bl              #0x5f5268  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::setHasInternet
    // 0x5f5258: r0 = Null
    //     0x5f5258: mov             x0, NULL
    // 0x5f525c: r0 = ReturnAsyncNotFuture()
    //     0x5f525c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f5260: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f5260: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f5264: b               #0x5f5228
  }
  _ setHasInternet(/* No info */) {
    // ** addr: 0x5f5268, size: 0x34
    // 0x5f5268: EnterFrame
    //     0x5f5268: stp             fp, lr, [SP, #-0x10]!
    //     0x5f526c: mov             fp, SP
    // 0x5f5270: CheckStackOverflow
    //     0x5f5270: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f5274: cmp             SP, x16
    //     0x5f5278: b.ls            #0x5f5294
    // 0x5f527c: StoreField: r1->field_27 = r2
    //     0x5f527c: stur            w2, [x1, #0x27]
    // 0x5f5280: r0 = notifyListeners()
    //     0x5f5280: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5f5284: r0 = Null
    //     0x5f5284: mov             x0, NULL
    // 0x5f5288: LeaveFrame
    //     0x5f5288: mov             SP, fp
    //     0x5f528c: ldp             fp, lr, [SP], #0x10
    // 0x5f5290: ret
    //     0x5f5290: ret             
    // 0x5f5294: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f5294: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f5298: b               #0x5f527c
  }
  _ logout(/* No info */) async {
    // ** addr: 0x6cf824, size: 0x35c
    // 0x6cf824: EnterFrame
    //     0x6cf824: stp             fp, lr, [SP, #-0x10]!
    //     0x6cf828: mov             fp, SP
    // 0x6cf82c: AllocStack(0xc0)
    //     0x6cf82c: sub             SP, SP, #0xc0
    // 0x6cf830: SetupParameters(SplashProvider this /* r1 => r2, fp-0x88 */, dynamic _ /* r2 => r1, fp-0x90 */)
    //     0x6cf830: stur            NULL, [fp, #-8]
    //     0x6cf834: stur            x1, [fp, #-0x88]
    //     0x6cf838: mov             x16, x2
    //     0x6cf83c: mov             x2, x1
    //     0x6cf840: mov             x1, x16
    //     0x6cf844: stur            x1, [fp, #-0x90]
    // 0x6cf848: CheckStackOverflow
    //     0x6cf848: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cf84c: cmp             SP, x16
    //     0x6cf850: b.ls            #0x6cfb78
    // 0x6cf854: InitAsync() -> Future<void?>
    //     0x6cf854: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6cf858: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6cf85c: ldur            x1, [fp, #-0x90]
    // 0x6cf860: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cf860: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cf864: r0 = of()
    //     0x6cf864: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6cf868: stur            x0, [fp, #-0x90]
    // 0x6cf86c: r1 = LoadStaticField(0xfe4)
    //     0x6cf86c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6cf870: ldr             x1, [x1, #0x1fc8]
    // 0x6cf874: cmp             w1, NULL
    // 0x6cf878: b.ne            #0x6cf884
    // 0x6cf87c: r1 = Null
    //     0x6cf87c: mov             x1, NULL
    // 0x6cf880: b               #0x6cf890
    // 0x6cf884: LoadField: r2 = r1->field_7
    //     0x6cf884: ldur            w2, [x1, #7]
    // 0x6cf888: DecompressPointer r2
    //     0x6cf888: add             x2, x2, HEAP, lsl #32
    // 0x6cf88c: mov             x1, x2
    // 0x6cf890: cmp             w1, NULL
    // 0x6cf894: b.eq            #0x6cf8b0
    // 0x6cf898: LoadField: r2 = r1->field_7
    //     0x6cf898: ldur            w2, [x1, #7]
    // 0x6cf89c: cbz             w2, #0x6cf8b0
    // 0x6cf8a0: r0 = removeUserLocation()
    //     0x6cf8a0: bl              #0x6d0424  ; [package:umrem_demo/common/services/location_firebase_service.dart] LocationFirebaseService::removeUserLocation
    // 0x6cf8a4: mov             x1, x0
    // 0x6cf8a8: stur            x1, [fp, #-0x98]
    // 0x6cf8ac: r0 = Await()
    //     0x6cf8ac: bl              #0x3dd188  ; AwaitStub
    // 0x6cf8b0: r4 = const [0, 0, 0, 0, null]
    //     0x6cf8b0: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x6cf8b4: r0 = app()
    //     0x6cf8b4: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x6cf8b8: mov             x1, x0
    // 0x6cf8bc: r0 = instanceFor()
    //     0x6cf8bc: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x6cf8c0: stur            x0, [fp, #-0x98]
    // 0x6cf8c4: r0 = FirestoreService()
    //     0x6cf8c4: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x6cf8c8: mov             x1, x0
    // 0x6cf8cc: ldur            x0, [fp, #-0x98]
    // 0x6cf8d0: StoreField: r1->field_7 = r0
    //     0x6cf8d0: stur            w0, [x1, #7]
    // 0x6cf8d4: r0 = LoadStaticField(0xfe4)
    //     0x6cf8d4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6cf8d8: ldr             x0, [x0, #0x1fc8]
    // 0x6cf8dc: cmp             w0, NULL
    // 0x6cf8e0: b.ne            #0x6cf8ec
    // 0x6cf8e4: r0 = Null
    //     0x6cf8e4: mov             x0, NULL
    // 0x6cf8e8: b               #0x6cf8f8
    // 0x6cf8ec: LoadField: r2 = r0->field_7
    //     0x6cf8ec: ldur            w2, [x0, #7]
    // 0x6cf8f0: DecompressPointer r2
    //     0x6cf8f0: add             x2, x2, HEAP, lsl #32
    // 0x6cf8f4: mov             x0, x2
    // 0x6cf8f8: cmp             w0, NULL
    // 0x6cf8fc: b.ne            #0x6cf908
    // 0x6cf900: r2 = ""
    //     0x6cf900: ldr             x2, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6cf904: b               #0x6cf90c
    // 0x6cf908: mov             x2, x0
    // 0x6cf90c: r0 = logoutUserFcmToken()
    //     0x6cf90c: bl              #0x6d00e0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::logoutUserFcmToken
    // 0x6cf910: mov             x1, x0
    // 0x6cf914: stur            x1, [fp, #-0x98]
    // 0x6cf918: r0 = Await()
    //     0x6cf918: bl              #0x3dd188  ; AwaitStub
    // 0x6cf91c: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x6cf91c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6cf920: ldr             x0, [x0, #0x1a28]
    //     0x6cf924: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6cf928: cmp             w0, w16
    //     0x6cf92c: b.ne            #0x6cf93c
    //     0x6cf930: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x6cf934: ldr             x2, [x2, #0x70]
    //     0x6cf938: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6cf93c: mov             x1, x0
    // 0x6cf940: r2 = "stopService"
    //     0x6cf940: ldr             x2, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x6cf944: stur            x0, [fp, #-0x98]
    // 0x6cf948: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6cf948: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6cf94c: r0 = invoke()
    //     0x6cf94c: bl              #0x5ed040  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::invoke
    // 0x6cf950: r1 = Null
    //     0x6cf950: mov             x1, NULL
    // 0x6cf954: r2 = Instance_Duration
    //     0x6cf954: add             x2, PP, #0x11, lsl #12  ; [pp+0x119e0] Obj!Duration@a2dc51
    //     0x6cf958: ldr             x2, [x2, #0x9e0]
    // 0x6cf95c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6cf95c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6cf960: r0 = Future.delayed()
    //     0x6cf960: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x6cf964: mov             x1, x0
    // 0x6cf968: stur            x1, [fp, #-0xa0]
    // 0x6cf96c: r0 = Await()
    //     0x6cf96c: bl              #0x3dd188  ; AwaitStub
    // 0x6cf970: b               #0x6cf978
    // 0x6cf974: sub             SP, fp, #0xc0
    // 0x6cf978: r0 = getInstance()
    //     0x6cf978: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6cf97c: mov             x1, x0
    // 0x6cf980: stur            x1, [fp, #-0x98]
    // 0x6cf984: r0 = Await()
    //     0x6cf984: bl              #0x3dd188  ; AwaitStub
    // 0x6cf988: stur            x0, [fp, #-0x98]
    // 0x6cf98c: r0 = clearToken()
    //     0x6cf98c: bl              #0x6d0084  ; [package:umrem_demo/common/services/token_service.dart] TokenService::clearToken
    // 0x6cf990: mov             x1, x0
    // 0x6cf994: stur            x1, [fp, #-0xa0]
    // 0x6cf998: r0 = Await()
    //     0x6cf998: bl              #0x3dd188  ; AwaitStub
    // 0x6cf99c: ldur            x1, [fp, #-0x98]
    // 0x6cf9a0: r2 = "user_token"
    //     0x6cf9a0: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x6cf9a4: r0 = remove()
    //     0x6cf9a4: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cf9a8: mov             x1, x0
    // 0x6cf9ac: stur            x1, [fp, #-0xa0]
    // 0x6cf9b0: r0 = Await()
    //     0x6cf9b0: bl              #0x3dd188  ; AwaitStub
    // 0x6cf9b4: ldur            x1, [fp, #-0x98]
    // 0x6cf9b8: r2 = "cached_user"
    //     0x6cf9b8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b50] "cached_user"
    //     0x6cf9bc: ldr             x2, [x2, #0xb50]
    // 0x6cf9c0: r0 = remove()
    //     0x6cf9c0: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cf9c4: mov             x1, x0
    // 0x6cf9c8: stur            x1, [fp, #-0xa0]
    // 0x6cf9cc: r0 = Await()
    //     0x6cf9cc: bl              #0x3dd188  ; AwaitStub
    // 0x6cf9d0: ldur            x1, [fp, #-0x98]
    // 0x6cf9d4: r2 = "cached_mekke_trip"
    //     0x6cf9d4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b58] "cached_mekke_trip"
    //     0x6cf9d8: ldr             x2, [x2, #0xb58]
    // 0x6cf9dc: r0 = remove()
    //     0x6cf9dc: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cf9e0: mov             x1, x0
    // 0x6cf9e4: stur            x1, [fp, #-0xa0]
    // 0x6cf9e8: r0 = Await()
    //     0x6cf9e8: bl              #0x3dd188  ; AwaitStub
    // 0x6cf9ec: ldur            x1, [fp, #-0x98]
    // 0x6cf9f0: r2 = "cached_mekke_hotel"
    //     0x6cf9f0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b60] "cached_mekke_hotel"
    //     0x6cf9f4: ldr             x2, [x2, #0xb60]
    // 0x6cf9f8: r0 = remove()
    //     0x6cf9f8: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cf9fc: mov             x1, x0
    // 0x6cfa00: stur            x1, [fp, #-0xa0]
    // 0x6cfa04: r0 = Await()
    //     0x6cfa04: bl              #0x3dd188  ; AwaitStub
    // 0x6cfa08: ldur            x1, [fp, #-0x98]
    // 0x6cfa0c: r2 = "cached_mekke_oda"
    //     0x6cfa0c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b68] "cached_mekke_oda"
    //     0x6cfa10: ldr             x2, [x2, #0xb68]
    // 0x6cfa14: r0 = remove()
    //     0x6cfa14: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfa18: mov             x1, x0
    // 0x6cfa1c: stur            x1, [fp, #-0xa0]
    // 0x6cfa20: r0 = Await()
    //     0x6cfa20: bl              #0x3dd188  ; AwaitStub
    // 0x6cfa24: ldur            x1, [fp, #-0x98]
    // 0x6cfa28: r2 = "cached_mekke_prayer"
    //     0x6cfa28: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b70] "cached_mekke_prayer"
    //     0x6cfa2c: ldr             x2, [x2, #0xb70]
    // 0x6cfa30: r0 = remove()
    //     0x6cfa30: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfa34: mov             x1, x0
    // 0x6cfa38: stur            x1, [fp, #-0xa0]
    // 0x6cfa3c: r0 = Await()
    //     0x6cfa3c: bl              #0x3dd188  ; AwaitStub
    // 0x6cfa40: ldur            x1, [fp, #-0x98]
    // 0x6cfa44: r2 = "cached_medine_trip"
    //     0x6cfa44: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b78] "cached_medine_trip"
    //     0x6cfa48: ldr             x2, [x2, #0xb78]
    // 0x6cfa4c: r0 = remove()
    //     0x6cfa4c: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfa50: mov             x1, x0
    // 0x6cfa54: stur            x1, [fp, #-0xa0]
    // 0x6cfa58: r0 = Await()
    //     0x6cfa58: bl              #0x3dd188  ; AwaitStub
    // 0x6cfa5c: ldur            x1, [fp, #-0x98]
    // 0x6cfa60: r2 = "cached_medine_hotel"
    //     0x6cfa60: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b80] "cached_medine_hotel"
    //     0x6cfa64: ldr             x2, [x2, #0xb80]
    // 0x6cfa68: r0 = remove()
    //     0x6cfa68: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfa6c: mov             x1, x0
    // 0x6cfa70: stur            x1, [fp, #-0xa0]
    // 0x6cfa74: r0 = Await()
    //     0x6cfa74: bl              #0x3dd188  ; AwaitStub
    // 0x6cfa78: ldur            x1, [fp, #-0x98]
    // 0x6cfa7c: r2 = "cached_medine_oda"
    //     0x6cfa7c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b88] "cached_medine_oda"
    //     0x6cfa80: ldr             x2, [x2, #0xb88]
    // 0x6cfa84: r0 = remove()
    //     0x6cfa84: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfa88: mov             x1, x0
    // 0x6cfa8c: stur            x1, [fp, #-0xa0]
    // 0x6cfa90: r0 = Await()
    //     0x6cfa90: bl              #0x3dd188  ; AwaitStub
    // 0x6cfa94: ldur            x1, [fp, #-0x98]
    // 0x6cfa98: r2 = "cached_medine_prayer"
    //     0x6cfa98: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b90] "cached_medine_prayer"
    //     0x6cfa9c: ldr             x2, [x2, #0xb90]
    // 0x6cfaa0: r0 = remove()
    //     0x6cfaa0: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfaa4: mov             x1, x0
    // 0x6cfaa8: stur            x1, [fp, #-0xa0]
    // 0x6cfaac: r0 = Await()
    //     0x6cfaac: bl              #0x3dd188  ; AwaitStub
    // 0x6cfab0: ldur            x1, [fp, #-0x98]
    // 0x6cfab4: r2 = "cached_currencies"
    //     0x6cfab4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15b98] "cached_currencies"
    //     0x6cfab8: ldr             x2, [x2, #0xb98]
    // 0x6cfabc: r0 = remove()
    //     0x6cfabc: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfac0: mov             x1, x0
    // 0x6cfac4: stur            x1, [fp, #-0xa0]
    // 0x6cfac8: r0 = Await()
    //     0x6cfac8: bl              #0x3dd188  ; AwaitStub
    // 0x6cfacc: ldur            x1, [fp, #-0x98]
    // 0x6cfad0: r2 = "cached_notifications"
    //     0x6cfad0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ba0] "cached_notifications"
    //     0x6cfad4: ldr             x2, [x2, #0xba0]
    // 0x6cfad8: r0 = remove()
    //     0x6cfad8: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfadc: mov             x1, x0
    // 0x6cfae0: stur            x1, [fp, #-0xa0]
    // 0x6cfae4: r0 = Await()
    //     0x6cfae4: bl              #0x3dd188  ; AwaitStub
    // 0x6cfae8: ldur            x1, [fp, #-0x98]
    // 0x6cfaec: r2 = "last_data_update"
    //     0x6cfaec: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ba8] "last_data_update"
    //     0x6cfaf0: ldr             x2, [x2, #0xba8]
    // 0x6cfaf4: r0 = remove()
    //     0x6cfaf4: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6cfaf8: mov             x1, x0
    // 0x6cfafc: stur            x1, [fp, #-0x98]
    // 0x6cfb00: r0 = Await()
    //     0x6cfb00: bl              #0x3dd188  ; AwaitStub
    // 0x6cfb04: r1 = Null
    //     0x6cfb04: mov             x1, NULL
    // 0x6cfb08: StoreStaticField(0xfe4, r1)
    //     0x6cfb08: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6cfb0c: str             x1, [x0, #0x1fc8]
    // 0x6cfb10: r4 = const [0, 0, 0, 0, null]
    //     0x6cfb10: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x6cfb14: r0 = app()
    //     0x6cfb14: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x6cfb18: mov             x2, x0
    // 0x6cfb1c: r1 = Null
    //     0x6cfb1c: mov             x1, NULL
    // 0x6cfb20: r0 = FirebaseMessaging._instanceFor()
    //     0x6cfb20: bl              #0x5f16d8  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::FirebaseMessaging._instanceFor
    // 0x6cfb24: mov             x1, x0
    // 0x6cfb28: r0 = unsubscribeFromTopic()
    //     0x6cfb28: bl              #0x6cfe88  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::unsubscribeFromTopic
    // 0x6cfb2c: mov             x1, x0
    // 0x6cfb30: stur            x1, [fp, #-0x98]
    // 0x6cfb34: r0 = Await()
    //     0x6cfb34: bl              #0x3dd188  ; AwaitStub
    // 0x6cfb38: r1 = Function '<anonymous closure>':.
    //     0x6cfb38: add             x1, PP, #0x15, lsl #12  ; [pp+0x15bb0] Function: [dart:core] Object::_simpleInstanceOfFalse (0x924db0)
    //     0x6cfb3c: ldr             x1, [x1, #0xbb0]
    // 0x6cfb40: r2 = Null
    //     0x6cfb40: mov             x2, NULL
    // 0x6cfb44: r0 = AllocateClosure()
    //     0x6cfb44: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cfb48: r16 = <Object?>
    //     0x6cfb48: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6cfb4c: ldur            lr, [fp, #-0x90]
    // 0x6cfb50: stp             lr, x16, [SP, #0x10]
    // 0x6cfb54: r16 = "/splash"
    //     0x6cfb54: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c18] "/splash"
    //     0x6cfb58: ldr             x16, [x16, #0xc18]
    // 0x6cfb5c: stp             x0, x16, [SP]
    // 0x6cfb60: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x6cfb60: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x6cfb64: r0 = pushNamedAndRemoveUntil()
    //     0x6cfb64: bl              #0x6cfb80  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pushNamedAndRemoveUntil
    // 0x6cfb68: ldur            x1, [fp, #-0x88]
    // 0x6cfb6c: r0 = notifyListeners()
    //     0x6cfb6c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6cfb70: r0 = Null
    //     0x6cfb70: mov             x0, NULL
    // 0x6cfb74: r0 = ReturnAsyncNotFuture()
    //     0x6cfb74: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6cfb78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cfb78: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cfb7c: b               #0x6cf854
  }
  _ loginWithTc(/* No info */) async {
    // ** addr: 0x7ea184, size: 0xbc
    // 0x7ea184: EnterFrame
    //     0x7ea184: stp             fp, lr, [SP, #-0x10]!
    //     0x7ea188: mov             fp, SP
    // 0x7ea18c: AllocStack(0x70)
    //     0x7ea18c: sub             SP, SP, #0x70
    // 0x7ea190: SetupParameters(SplashProvider this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x7ea190: stur            NULL, [fp, #-8]
    //     0x7ea194: stur            x1, [fp, #-0x60]
    //     0x7ea198: stur            x2, [fp, #-0x68]
    // 0x7ea19c: CheckStackOverflow
    //     0x7ea19c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ea1a0: cmp             SP, x16
    //     0x7ea1a4: b.ls            #0x7ea238
    // 0x7ea1a8: InitAsync() -> Future<bool>
    //     0x7ea1a8: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x7ea1ac: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7ea1b0: ldur            x0, [fp, #-0x60]
    // 0x7ea1b4: mov             x1, x0
    // 0x7ea1b8: r2 = "Kullanıcı bilgileri yükleniyor..."
    //     0x7ea1b8: add             x2, PP, #0x19, lsl #12  ; [pp+0x19ad8] "Kullanıcı bilgileri yükleniyor..."
    //     0x7ea1bc: ldr             x2, [x2, #0xad8]
    // 0x7ea1c0: r0 = didUpdateValue()
    //     0x7ea1c0: bl              #0x81ad7c  ; [package:flutter/src/widgets/scrollable.dart] _RestorableScrollOffset::didUpdateValue
    // 0x7ea1c4: ldur            x0, [fp, #-0x60]
    // 0x7ea1c8: LoadField: r1 = r0->field_33
    //     0x7ea1c8: ldur            w1, [x0, #0x33]
    // 0x7ea1cc: DecompressPointer r1
    //     0x7ea1cc: add             x1, x1, HEAP, lsl #32
    // 0x7ea1d0: ldur            x2, [fp, #-0x68]
    // 0x7ea1d4: r0 = getUserByTc()
    //     0x7ea1d4: bl              #0x6ef2d8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUserByTc
    // 0x7ea1d8: mov             x1, x0
    // 0x7ea1dc: stur            x1, [fp, #-0x70]
    // 0x7ea1e0: r0 = Await()
    //     0x7ea1e0: bl              #0x3dd188  ; AwaitStub
    // 0x7ea1e4: cmp             w0, NULL
    // 0x7ea1e8: b.ne            #0x7ea204
    // 0x7ea1ec: ldur            x2, [fp, #-0x60]
    // 0x7ea1f0: r3 = "Kullanıcı bulunamadı."
    //     0x7ea1f0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ae0] "Kullanıcı bulunamadı."
    //     0x7ea1f4: ldr             x3, [x3, #0xae0]
    // 0x7ea1f8: StoreField: r2->field_2b = r3
    //     0x7ea1f8: stur            w3, [x2, #0x2b]
    // 0x7ea1fc: r0 = false
    //     0x7ea1fc: add             x0, NULL, #0x30  ; false
    // 0x7ea200: r0 = ReturnAsyncNotFuture()
    //     0x7ea200: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7ea204: StoreStaticField(0xfe4, r0)
    //     0x7ea204: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x7ea208: str             x0, [x3, #0x1fc8]
    // 0x7ea20c: r0 = true
    //     0x7ea20c: add             x0, NULL, #0x20  ; true
    // 0x7ea210: r0 = ReturnAsyncNotFuture()
    //     0x7ea210: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7ea214: sub             SP, fp, #0x70
    // 0x7ea218: ldur            x2, [fp, #-0x60]
    // 0x7ea21c: r3 = "Giriş yapılırken bir hata oluştu."
    //     0x7ea21c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ae8] "Giriş yapılırken bir hata oluştu."
    //     0x7ea220: ldr             x3, [x3, #0xae8]
    // 0x7ea224: r3 = "Giriş yapılırken bir hata oluştu."
    //     0x7ea224: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ae8] "Giriş yapılırken bir hata oluştu."
    //     0x7ea228: ldr             x3, [x3, #0xae8]
    // 0x7ea22c: StoreField: r2->field_2b = r3
    //     0x7ea22c: stur            w3, [x2, #0x2b]
    // 0x7ea230: r0 = false
    //     0x7ea230: add             x0, NULL, #0x30  ; false
    // 0x7ea234: r0 = ReturnAsyncNotFuture()
    //     0x7ea234: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7ea238: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ea238: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ea23c: b               #0x7ea1a8
  }
  _ SplashProvider(/* No info */) {
    // ** addr: 0x7ea240, size: 0xf8
    // 0x7ea240: EnterFrame
    //     0x7ea240: stp             fp, lr, [SP, #-0x10]!
    //     0x7ea244: mov             fp, SP
    // 0x7ea248: AllocStack(0x10)
    //     0x7ea248: sub             SP, SP, #0x10
    // 0x7ea24c: r2 = true
    //     0x7ea24c: add             x2, NULL, #0x20  ; true
    // 0x7ea250: r0 = false
    //     0x7ea250: add             x0, NULL, #0x30  ; false
    // 0x7ea254: stur            x1, [fp, #-8]
    // 0x7ea258: CheckStackOverflow
    //     0x7ea258: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ea25c: cmp             SP, x16
    //     0x7ea260: b.ls            #0x7ea330
    // 0x7ea264: StoreField: r1->field_23 = r2
    //     0x7ea264: stur            w2, [x1, #0x23]
    // 0x7ea268: StoreField: r1->field_27 = r0
    //     0x7ea268: stur            w0, [x1, #0x27]
    // 0x7ea26c: r0 = CommonService()
    //     0x7ea26c: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x7ea270: ldur            x1, [fp, #-8]
    // 0x7ea274: StoreField: r1->field_2f = r0
    //     0x7ea274: stur            w0, [x1, #0x2f]
    //     0x7ea278: ldurb           w16, [x1, #-1]
    //     0x7ea27c: ldurb           w17, [x0, #-1]
    //     0x7ea280: and             x16, x17, x16, lsr #2
    //     0x7ea284: tst             x16, HEAP, lsr #32
    //     0x7ea288: b.eq            #0x7ea290
    //     0x7ea28c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7ea290: r4 = const [0, 0, 0, 0, null]
    //     0x7ea290: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7ea294: r0 = app()
    //     0x7ea294: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7ea298: mov             x1, x0
    // 0x7ea29c: r0 = instanceFor()
    //     0x7ea29c: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7ea2a0: stur            x0, [fp, #-0x10]
    // 0x7ea2a4: r0 = FirestoreService()
    //     0x7ea2a4: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7ea2a8: mov             x1, x0
    // 0x7ea2ac: ldur            x0, [fp, #-0x10]
    // 0x7ea2b0: StoreField: r1->field_7 = r0
    //     0x7ea2b0: stur            w0, [x1, #7]
    // 0x7ea2b4: mov             x0, x1
    // 0x7ea2b8: ldur            x1, [fp, #-8]
    // 0x7ea2bc: StoreField: r1->field_33 = r0
    //     0x7ea2bc: stur            w0, [x1, #0x33]
    //     0x7ea2c0: ldurb           w16, [x1, #-1]
    //     0x7ea2c4: ldurb           w17, [x0, #-1]
    //     0x7ea2c8: and             x16, x17, x16, lsr #2
    //     0x7ea2cc: tst             x16, HEAP, lsr #32
    //     0x7ea2d0: b.eq            #0x7ea2d8
    //     0x7ea2d4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7ea2d8: StoreField: r1->field_7 = rZR
    //     0x7ea2d8: stur            xzr, [x1, #7]
    // 0x7ea2dc: StoreField: r1->field_13 = rZR
    //     0x7ea2dc: stur            xzr, [x1, #0x13]
    // 0x7ea2e0: StoreField: r1->field_1b = rZR
    //     0x7ea2e0: stur            xzr, [x1, #0x1b]
    // 0x7ea2e4: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7ea2e4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7ea2e8: ldr             x0, [x0, #0xbc0]
    //     0x7ea2ec: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7ea2f0: cmp             w0, w16
    //     0x7ea2f4: b.ne            #0x7ea300
    //     0x7ea2f8: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7ea2fc: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7ea300: ldur            x1, [fp, #-8]
    // 0x7ea304: StoreField: r1->field_f = r0
    //     0x7ea304: stur            w0, [x1, #0xf]
    //     0x7ea308: ldurb           w16, [x1, #-1]
    //     0x7ea30c: ldurb           w17, [x0, #-1]
    //     0x7ea310: and             x16, x17, x16, lsr #2
    //     0x7ea314: tst             x16, HEAP, lsr #32
    //     0x7ea318: b.eq            #0x7ea320
    //     0x7ea31c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7ea320: r0 = Null
    //     0x7ea320: mov             x0, NULL
    // 0x7ea324: LeaveFrame
    //     0x7ea324: mov             SP, fp
    //     0x7ea328: ldp             fp, lr, [SP], #0x10
    // 0x7ea32c: ret
    //     0x7ea32c: ret             
    // 0x7ea330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ea330: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ea334: b               #0x7ea264
  }
}
