// lib: , url: package:umrem_demo/common/services/token_service.dart

// class id: 1049494, size: 0x8
class :: {
}

// class id: 214, size: 0x8, field offset: 0x8
abstract class TokenService extends Object {

  static _ saveUserToken(/* No info */) async {
    // ** addr: 0x5f1ac4, size: 0x68
    // 0x5f1ac4: EnterFrame
    //     0x5f1ac4: stp             fp, lr, [SP, #-0x10]!
    //     0x5f1ac8: mov             fp, SP
    // 0x5f1acc: AllocStack(0x18)
    //     0x5f1acc: sub             SP, SP, #0x18
    // 0x5f1ad0: SetupParameters(dynamic _ /* r1 => r3, fp-0x10 */)
    //     0x5f1ad0: stur            NULL, [fp, #-8]
    //     0x5f1ad4: mov             x3, x1
    //     0x5f1ad8: stur            x1, [fp, #-0x10]
    // 0x5f1adc: CheckStackOverflow
    //     0x5f1adc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f1ae0: cmp             SP, x16
    //     0x5f1ae4: b.ls            #0x5f1b24
    // 0x5f1ae8: InitAsync() -> Future<void?>
    //     0x5f1ae8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5f1aec: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f1af0: r0 = getInstance()
    //     0x5f1af0: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5f1af4: mov             x1, x0
    // 0x5f1af8: stur            x1, [fp, #-0x18]
    // 0x5f1afc: r0 = Await()
    //     0x5f1afc: bl              #0x3dd188  ; AwaitStub
    // 0x5f1b00: mov             x1, x0
    // 0x5f1b04: ldur            x3, [fp, #-0x10]
    // 0x5f1b08: r2 = "user_token"
    //     0x5f1b08: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5f1b0c: r0 = setString()
    //     0x5f1b0c: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x5f1b10: mov             x1, x0
    // 0x5f1b14: stur            x1, [fp, #-0x10]
    // 0x5f1b18: r0 = Await()
    //     0x5f1b18: bl              #0x3dd188  ; AwaitStub
    // 0x5f1b1c: r0 = Null
    //     0x5f1b1c: mov             x0, NULL
    // 0x5f1b20: r0 = ReturnAsyncNotFuture()
    //     0x5f1b20: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f1b24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f1b24: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f1b28: b               #0x5f1ae8
  }
  static Future<void> clearToken() async {
    // ** addr: 0x6d0084, size: 0x5c
    // 0x6d0084: EnterFrame
    //     0x6d0084: stp             fp, lr, [SP, #-0x10]!
    //     0x6d0088: mov             fp, SP
    // 0x6d008c: AllocStack(0x10)
    //     0x6d008c: sub             SP, SP, #0x10
    // 0x6d0090: SetupParameters()
    //     0x6d0090: stur            NULL, [fp, #-8]
    // 0x6d0094: CheckStackOverflow
    //     0x6d0094: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d0098: cmp             SP, x16
    //     0x6d009c: b.ls            #0x6d00d8
    // 0x6d00a0: InitAsync() -> Future<void?>
    //     0x6d00a0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d00a4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d00a8: r0 = getInstance()
    //     0x6d00a8: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6d00ac: mov             x1, x0
    // 0x6d00b0: stur            x1, [fp, #-0x10]
    // 0x6d00b4: r0 = Await()
    //     0x6d00b4: bl              #0x3dd188  ; AwaitStub
    // 0x6d00b8: mov             x1, x0
    // 0x6d00bc: r2 = "user_token"
    //     0x6d00bc: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x6d00c0: r0 = remove()
    //     0x6d00c0: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x6d00c4: mov             x1, x0
    // 0x6d00c8: stur            x1, [fp, #-0x10]
    // 0x6d00cc: r0 = Await()
    //     0x6d00cc: bl              #0x3dd188  ; AwaitStub
    // 0x6d00d0: r0 = Null
    //     0x6d00d0: mov             x0, NULL
    // 0x6d00d4: r0 = ReturnAsyncNotFuture()
    //     0x6d00d4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d00d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d00d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d00dc: b               #0x6d00a0
  }
  static _ getToken(/* No info */) async {
    // ** addr: 0x92bccc, size: 0x4c
    // 0x92bccc: EnterFrame
    //     0x92bccc: stp             fp, lr, [SP, #-0x10]!
    //     0x92bcd0: mov             fp, SP
    // 0x92bcd4: AllocStack(0x10)
    //     0x92bcd4: sub             SP, SP, #0x10
    // 0x92bcd8: SetupParameters()
    //     0x92bcd8: stur            NULL, [fp, #-8]
    // 0x92bcdc: CheckStackOverflow
    //     0x92bcdc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92bce0: cmp             SP, x16
    //     0x92bce4: b.ls            #0x92bd10
    // 0x92bce8: InitAsync() -> Future<String?>
    //     0x92bce8: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x92bcec: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92bcf0: r0 = getInstance()
    //     0x92bcf0: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x92bcf4: mov             x1, x0
    // 0x92bcf8: stur            x1, [fp, #-0x10]
    // 0x92bcfc: r0 = Await()
    //     0x92bcfc: bl              #0x3dd188  ; AwaitStub
    // 0x92bd00: mov             x1, x0
    // 0x92bd04: r2 = "user_token"
    //     0x92bd04: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x92bd08: r0 = getString()
    //     0x92bd08: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x92bd0c: r0 = ReturnAsyncNotFuture()
    //     0x92bd0c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92bd10: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92bd10: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92bd14: b               #0x92bce8
  }
}
