// lib: , url: package:umrem_demo/features/adimsayar/cash_helper.dart

// class id: 1049507, size: 0x8
class :: {
}

// class id: 207, size: 0x8, field offset: 0x8
abstract class CacheHelper extends Object {

  static late SharedPreferences _prefs; // offset: 0x1028

  static _ getInt(/* No info */) async {
    // ** addr: 0x5cea28, size: 0x64
    // 0x5cea28: EnterFrame
    //     0x5cea28: stp             fp, lr, [SP, #-0x10]!
    //     0x5cea2c: mov             fp, SP
    // 0x5cea30: AllocStack(0x10)
    //     0x5cea30: sub             SP, SP, #0x10
    // 0x5cea34: SetupParameters(dynamic _ /* r1 => r2, fp-0x10 */)
    //     0x5cea34: stur            NULL, [fp, #-8]
    //     0x5cea38: mov             x2, x1
    //     0x5cea3c: stur            x1, [fp, #-0x10]
    // 0x5cea40: CheckStackOverflow
    //     0x5cea40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cea44: cmp             SP, x16
    //     0x5cea48: b.ls            #0x5cea78
    // 0x5cea4c: InitAsync() -> Future<int?>
    //     0x5cea4c: ldr             x0, [PP, #0x1c20]  ; [pp+0x1c20] TypeArguments: <int?>
    //     0x5cea50: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cea54: r0 = LoadStaticField(0x1028)
    //     0x5cea54: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5cea58: ldr             x0, [x0, #0x2050]
    //     0x5cea5c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5cea60: cmp             w0, w16
    // 0x5cea64: b.eq            #0x5cea80
    // 0x5cea68: mov             x1, x0
    // 0x5cea6c: ldur            x2, [fp, #-0x10]
    // 0x5cea70: r0 = getInt()
    //     0x5cea70: bl              #0x5cea8c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInt
    // 0x5cea74: r0 = ReturnAsyncNotFuture()
    //     0x5cea74: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cea78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cea78: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cea7c: b               #0x5cea4c
    // 0x5cea80: r9 = _prefs
    //     0x5cea80: add             x9, PP, #0x20, lsl #12  ; [pp+0x20cf8] Field <CacheHelper._prefs@973325217>: static late (offset: 0x1028)
    //     0x5cea84: ldr             x9, [x9, #0xcf8]
    // 0x5cea88: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x5cea88: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  static _ saveInt(/* No info */) async {
    // ** addr: 0x5cfb94, size: 0x80
    // 0x5cfb94: EnterFrame
    //     0x5cfb94: stp             fp, lr, [SP, #-0x10]!
    //     0x5cfb98: mov             fp, SP
    // 0x5cfb9c: AllocStack(0x18)
    //     0x5cfb9c: sub             SP, SP, #0x18
    // 0x5cfba0: SetupParameters(dynamic _ /* r1 => r2, fp-0x10 */, dynamic _ /* r2 => r3, fp-0x18 */)
    //     0x5cfba0: stur            NULL, [fp, #-8]
    //     0x5cfba4: mov             x3, x2
    //     0x5cfba8: stur            x2, [fp, #-0x18]
    //     0x5cfbac: mov             x2, x1
    //     0x5cfbb0: stur            x1, [fp, #-0x10]
    // 0x5cfbb4: CheckStackOverflow
    //     0x5cfbb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cfbb8: cmp             SP, x16
    //     0x5cfbbc: b.ls            #0x5cfc00
    // 0x5cfbc0: InitAsync() -> Future<void?>
    //     0x5cfbc0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5cfbc4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cfbc8: r0 = LoadStaticField(0x1028)
    //     0x5cfbc8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5cfbcc: ldr             x0, [x0, #0x2050]
    //     0x5cfbd0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5cfbd4: cmp             w0, w16
    // 0x5cfbd8: b.eq            #0x5cfc08
    // 0x5cfbdc: mov             x1, x0
    // 0x5cfbe0: ldur            x2, [fp, #-0x10]
    // 0x5cfbe4: ldur            x3, [fp, #-0x18]
    // 0x5cfbe8: r0 = setInt()
    //     0x5cfbe8: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x5cfbec: mov             x1, x0
    // 0x5cfbf0: stur            x1, [fp, #-0x10]
    // 0x5cfbf4: r0 = Await()
    //     0x5cfbf4: bl              #0x3dd188  ; AwaitStub
    // 0x5cfbf8: r0 = Null
    //     0x5cfbf8: mov             x0, NULL
    // 0x5cfbfc: r0 = ReturnAsyncNotFuture()
    //     0x5cfbfc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cfc00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cfc00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cfc04: b               #0x5cfbc0
    // 0x5cfc08: r9 = _prefs
    //     0x5cfc08: add             x9, PP, #0x20, lsl #12  ; [pp+0x20cf8] Field <CacheHelper._prefs@973325217>: static late (offset: 0x1028)
    //     0x5cfc0c: ldr             x9, [x9, #0xcf8]
    // 0x5cfc10: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x5cfc10: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  static Future<void> init() async {
    // ** addr: 0x5d2074, size: 0x4c
    // 0x5d2074: EnterFrame
    //     0x5d2074: stp             fp, lr, [SP, #-0x10]!
    //     0x5d2078: mov             fp, SP
    // 0x5d207c: AllocStack(0x10)
    //     0x5d207c: sub             SP, SP, #0x10
    // 0x5d2080: SetupParameters()
    //     0x5d2080: stur            NULL, [fp, #-8]
    // 0x5d2084: CheckStackOverflow
    //     0x5d2084: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d2088: cmp             SP, x16
    //     0x5d208c: b.ls            #0x5d20b8
    // 0x5d2090: InitAsync() -> Future<void?>
    //     0x5d2090: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5d2094: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d2098: r0 = getInstance()
    //     0x5d2098: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5d209c: mov             x1, x0
    // 0x5d20a0: stur            x1, [fp, #-0x10]
    // 0x5d20a4: r0 = Await()
    //     0x5d20a4: bl              #0x3dd188  ; AwaitStub
    // 0x5d20a8: StoreStaticField(0x1028, r0)
    //     0x5d20a8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5d20ac: str             x0, [x1, #0x2050]
    // 0x5d20b0: r0 = Null
    //     0x5d20b0: mov             x0, NULL
    // 0x5d20b4: r0 = ReturnAsyncNotFuture()
    //     0x5d20b4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d20b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d20b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d20bc: b               #0x5d2090
  }
}
