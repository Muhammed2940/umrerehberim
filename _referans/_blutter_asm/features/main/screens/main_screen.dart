// lib: , url: package:umrem_demo/features/main/screens/main_screen.dart

// class id: 1049600, size: 0x8
class :: {
}

// class id: 2464, size: 0x20, field offset: 0x14
class _MainScreenState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e99ac, size: 0x30
    // 0x5e99ac: EnterFrame
    //     0x5e99ac: stp             fp, lr, [SP, #-0x10]!
    //     0x5e99b0: mov             fp, SP
    // 0x5e99b4: CheckStackOverflow
    //     0x5e99b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e99b8: cmp             SP, x16
    //     0x5e99bc: b.ls            #0x5e99d4
    // 0x5e99c0: r0 = _checkAndShowContentDownloadDialog()
    //     0x5e99c0: bl              #0x5e99fc  ; [package:umrem_demo/features/main/screens/main_screen.dart] _MainScreenState::_checkAndShowContentDownloadDialog
    // 0x5e99c4: r0 = Null
    //     0x5e99c4: mov             x0, NULL
    // 0x5e99c8: LeaveFrame
    //     0x5e99c8: mov             SP, fp
    //     0x5e99cc: ldp             fp, lr, [SP], #0x10
    // 0x5e99d0: ret
    //     0x5e99d0: ret             
    // 0x5e99d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e99d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e99d8: b               #0x5e99c0
  }
  _ _checkAndShowContentDownloadDialog(/* No info */) async {
    // ** addr: 0x5e99fc, size: 0x310
    // 0x5e99fc: EnterFrame
    //     0x5e99fc: stp             fp, lr, [SP, #-0x10]!
    //     0x5e9a00: mov             fp, SP
    // 0x5e9a04: AllocStack(0xe0)
    //     0x5e9a04: sub             SP, SP, #0xe0
    // 0x5e9a08: SetupParameters(_MainScreenState this /* r1 => r1, fp-0xa0 */)
    //     0x5e9a08: stur            NULL, [fp, #-8]
    //     0x5e9a0c: stur            x1, [fp, #-0xa0]
    // 0x5e9a10: CheckStackOverflow
    //     0x5e9a10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e9a14: cmp             SP, x16
    //     0x5e9a18: b.ls            #0x5e9d00
    // 0x5e9a1c: r1 = 1
    //     0x5e9a1c: mov             x1, #1
    // 0x5e9a20: r0 = AllocateContext()
    //     0x5e9a20: bl              #0x927010  ; AllocateContextStub
    // 0x5e9a24: mov             x1, x0
    // 0x5e9a28: ldur            x0, [fp, #-0xa0]
    // 0x5e9a2c: stur            x1, [fp, #-0xa8]
    // 0x5e9a30: StoreField: r1->field_f = r0
    //     0x5e9a30: stur            w0, [x1, #0xf]
    // 0x5e9a34: InitAsync() -> Future<void?>
    //     0x5e9a34: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e9a38: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e9a3c: r0 = getInstance()
    //     0x5e9a3c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e9a40: mov             x1, x0
    // 0x5e9a44: stur            x1, [fp, #-0xa0]
    // 0x5e9a48: r0 = Await()
    //     0x5e9a48: bl              #0x3dd188  ; AwaitStub
    // 0x5e9a4c: mov             x1, x0
    // 0x5e9a50: r2 = "show_download_dialog_on_login"
    //     0x5e9a50: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a290] "show_download_dialog_on_login"
    //     0x5e9a54: ldr             x2, [x2, #0x290]
    // 0x5e9a58: stur            x0, [fp, #-0xa0]
    // 0x5e9a5c: r0 = getBool()
    //     0x5e9a5c: bl              #0x5e60a4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getBool
    // 0x5e9a60: cmp             w0, NULL
    // 0x5e9a64: b.eq            #0x5e9a6c
    // 0x5e9a68: tbz             w0, #4, #0x5e9a74
    // 0x5e9a6c: r0 = Null
    //     0x5e9a6c: mov             x0, NULL
    // 0x5e9a70: r0 = ReturnAsyncNotFuture()
    //     0x5e9a70: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e9a74: ldur            x1, [fp, #-0xa0]
    // 0x5e9a78: r2 = "show_download_dialog_on_login"
    //     0x5e9a78: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a290] "show_download_dialog_on_login"
    //     0x5e9a7c: ldr             x2, [x2, #0x290]
    // 0x5e9a80: r0 = remove()
    //     0x5e9a80: bl              #0x5e9d0c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::remove
    // 0x5e9a84: mov             x1, x0
    // 0x5e9a88: stur            x1, [fp, #-0xa0]
    // 0x5e9a8c: r0 = Await()
    //     0x5e9a8c: bl              #0x3dd188  ; AwaitStub
    // 0x5e9a90: r0 = InitLateStaticField(0x1014) // [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_instance
    //     0x5e9a90: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e9a94: ldr             x0, [x0, #0x2028]
    //     0x5e9a98: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e9a9c: cmp             w0, w16
    //     0x5e9aa0: b.ne            #0x5e9ab0
    //     0x5e9aa4: add             x2, PP, #0x10, lsl #12  ; [pp+0x10d50] Field <QuranStorageService._instance@966040762>: static late final (offset: 0x1014)
    //     0x5e9aa8: ldr             x2, [x2, #0xd50]
    //     0x5e9aac: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e9ab0: stur            x0, [fp, #-0xa0]
    // 0x5e9ab4: r0 = InitLateStaticField(0x1018) // [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_instance
    //     0x5e9ab4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e9ab8: ldr             x0, [x0, #0x2030]
    //     0x5e9abc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e9ac0: cmp             w0, w16
    //     0x5e9ac4: b.ne            #0x5e9ad4
    //     0x5e9ac8: add             x2, PP, #0x10, lsl #12  ; [pp+0x10d48] Field <SayDualariStorageService._instance@967415537>: static late final (offset: 0x1018)
    //     0x5e9acc: ldr             x2, [x2, #0xd48]
    //     0x5e9ad0: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e9ad4: stur            x0, [fp, #-0xb0]
    // 0x5e9ad8: r0 = InitLateStaticField(0x101c) // [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_instance
    //     0x5e9ad8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e9adc: ldr             x0, [x0, #0x2038]
    //     0x5e9ae0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e9ae4: cmp             w0, w16
    //     0x5e9ae8: b.ne            #0x5e9af8
    //     0x5e9aec: add             x2, PP, #0x10, lsl #12  ; [pp+0x10bf0] Field <TavafDualariStorageService._instance@968405978>: static late final (offset: 0x101c)
    //     0x5e9af0: ldr             x2, [x2, #0xbf0]
    //     0x5e9af4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e9af8: ldur            x1, [fp, #-0xa0]
    // 0x5e9afc: stur            x0, [fp, #-0xb8]
    // 0x5e9b00: r0 = areAllPagesDownloaded()
    //     0x5e9b00: bl              #0x5e6f94  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::areAllPagesDownloaded
    // 0x5e9b04: mov             x1, x0
    // 0x5e9b08: stur            x1, [fp, #-0xc0]
    // 0x5e9b0c: r0 = Await()
    //     0x5e9b0c: bl              #0x3dd188  ; AwaitStub
    // 0x5e9b10: ldur            x1, [fp, #-0xb0]
    // 0x5e9b14: stur            x0, [fp, #-0xc0]
    // 0x5e9b18: r0 = areAllFilesDownloaded()
    //     0x5e9b18: bl              #0x5e6ec4  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::areAllFilesDownloaded
    // 0x5e9b1c: mov             x1, x0
    // 0x5e9b20: stur            x1, [fp, #-0xc8]
    // 0x5e9b24: r0 = Await()
    //     0x5e9b24: bl              #0x3dd188  ; AwaitStub
    // 0x5e9b28: ldur            x1, [fp, #-0xb8]
    // 0x5e9b2c: stur            x0, [fp, #-0xc8]
    // 0x5e9b30: r0 = areAllFilesDownloaded()
    //     0x5e9b30: bl              #0x5e6df4  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::areAllFilesDownloaded
    // 0x5e9b34: mov             x1, x0
    // 0x5e9b38: stur            x1, [fp, #-0xd0]
    // 0x5e9b3c: r0 = Await()
    //     0x5e9b3c: bl              #0x3dd188  ; AwaitStub
    // 0x5e9b40: mov             x1, x0
    // 0x5e9b44: ldur            x0, [fp, #-0xc0]
    // 0x5e9b48: r16 = true
    //     0x5e9b48: add             x16, NULL, #0x20  ; true
    // 0x5e9b4c: cmp             w0, w16
    // 0x5e9b50: b.ne            #0x5e9c14
    // 0x5e9b54: ldur            x0, [fp, #-0xc8]
    // 0x5e9b58: r16 = true
    //     0x5e9b58: add             x16, NULL, #0x20  ; true
    // 0x5e9b5c: cmp             w0, w16
    // 0x5e9b60: b.ne            #0x5e9c14
    // 0x5e9b64: r16 = true
    //     0x5e9b64: add             x16, NULL, #0x20  ; true
    // 0x5e9b68: cmp             w1, w16
    // 0x5e9b6c: b.ne            #0x5e9c14
    // 0x5e9b70: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x5e9b70: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e9b74: ldr             x0, [x0, #0xcb8]
    //     0x5e9b78: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e9b7c: cmp             w0, w16
    //     0x5e9b80: b.ne            #0x5e9b8c
    //     0x5e9b84: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x5e9b88: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5e9b8c: r0 = Closure: (String?, {int? wrapWidth}) => void from Function 'debugPrintThrottled': static.
    //     0x5e9b8c: ldr             x0, [PP, #0x1010]  ; [pp+0x1010] Closure: (String?, {int? wrapWidth}) => void from Function 'debugPrintThrottled': static. (0x7f22903cb80c)
    // 0x5e9b90: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x5e9b90: ldur            w2, [x0, #0x17]
    // 0x5e9b94: DecompressPointer r2
    //     0x5e9b94: add             x2, x2, HEAP, lsl #32
    // 0x5e9b98: stur            x2, [fp, #-0xa0]
    // 0x5e9b9c: str             NULL, [SP]
    // 0x5e9ba0: r1 = "✅ Tüm içerikler zaten indirilmiş, dialog gösterilmiyor."
    //     0x5e9ba0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a298] "✅ Tüm içerikler zaten indirilmiş, dialog gösterilmiyor."
    //     0x5e9ba4: ldr             x1, [x1, #0x298]
    // 0x5e9ba8: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x5e9ba8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x5e9bac: r0 = debugPrintThrottled()
    //     0x5e9bac: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x5e9bb0: r0 = Null
    //     0x5e9bb0: mov             x0, NULL
    // 0x5e9bb4: r0 = ReturnAsyncNotFuture()
    //     0x5e9bb4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e9bb8: sub             SP, fp, #0xe0
    // 0x5e9bbc: stur            x0, [fp, #-0xa0]
    // 0x5e9bc0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x5e9bc0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e9bc4: ldr             x0, [x0, #0xcb8]
    //     0x5e9bc8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e9bcc: cmp             w0, w16
    //     0x5e9bd0: b.ne            #0x5e9bdc
    //     0x5e9bd4: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x5e9bd8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5e9bdc: r1 = Null
    //     0x5e9bdc: mov             x1, NULL
    // 0x5e9be0: r2 = 4
    //     0x5e9be0: mov             x2, #4
    // 0x5e9be4: r0 = AllocateArray()
    //     0x5e9be4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e9be8: r16 = "❌ İndirme durumu kontrol edilemedi: "
    //     0x5e9be8: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a2a0] "❌ İndirme durumu kontrol edilemedi: "
    //     0x5e9bec: ldr             x16, [x16, #0x2a0]
    // 0x5e9bf0: StoreField: r0->field_f = r16
    //     0x5e9bf0: stur            w16, [x0, #0xf]
    // 0x5e9bf4: ldur            x1, [fp, #-0xa0]
    // 0x5e9bf8: StoreField: r0->field_13 = r1
    //     0x5e9bf8: stur            w1, [x0, #0x13]
    // 0x5e9bfc: str             x0, [SP]
    // 0x5e9c00: r0 = _interpolate()
    //     0x5e9c00: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5e9c04: str             NULL, [SP]
    // 0x5e9c08: mov             x1, x0
    // 0x5e9c0c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x5e9c0c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x5e9c10: r0 = debugPrintThrottled()
    //     0x5e9c10: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x5e9c14: r0 = LoadStaticField(0x834)
    //     0x5e9c14: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e9c18: ldr             x0, [x0, #0x1068]
    // 0x5e9c1c: cmp             w0, NULL
    // 0x5e9c20: b.eq            #0x5e9d08
    // 0x5e9c24: LoadField: r3 = r0->field_53
    //     0x5e9c24: ldur            w3, [x0, #0x53]
    // 0x5e9c28: DecompressPointer r3
    //     0x5e9c28: add             x3, x3, HEAP, lsl #32
    // 0x5e9c2c: stur            x3, [fp, #-0xb0]
    // 0x5e9c30: LoadField: r0 = r3->field_7
    //     0x5e9c30: ldur            w0, [x3, #7]
    // 0x5e9c34: DecompressPointer r0
    //     0x5e9c34: add             x0, x0, HEAP, lsl #32
    // 0x5e9c38: ldur            x2, [fp, #-0xa8]
    // 0x5e9c3c: stur            x0, [fp, #-0xa0]
    // 0x5e9c40: r1 = Function '<anonymous closure>':.
    //     0x5e9c40: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a2a8] AnonymousClosure: (0x5e9de8), in [package:umrem_demo/features/main/screens/main_screen.dart] _MainScreenState::_checkAndShowContentDownloadDialog (0x5e99fc)
    //     0x5e9c44: ldr             x1, [x1, #0x2a8]
    // 0x5e9c48: r0 = AllocateClosure()
    //     0x5e9c48: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e9c4c: ldur            x2, [fp, #-0xa0]
    // 0x5e9c50: mov             x3, x0
    // 0x5e9c54: r1 = Null
    //     0x5e9c54: mov             x1, NULL
    // 0x5e9c58: stur            x3, [fp, #-0xa0]
    // 0x5e9c5c: cmp             w2, NULL
    // 0x5e9c60: b.eq            #0x5e9c80
    // 0x5e9c64: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e9c64: ldur            w4, [x2, #0x17]
    // 0x5e9c68: DecompressPointer r4
    //     0x5e9c68: add             x4, x4, HEAP, lsl #32
    // 0x5e9c6c: r8 = X0
    //     0x5e9c6c: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e9c70: LoadField: r9 = r4->field_7
    //     0x5e9c70: ldur            x9, [x4, #7]
    // 0x5e9c74: r3 = Null
    //     0x5e9c74: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a2b0] Null
    //     0x5e9c78: ldr             x3, [x3, #0x2b0]
    // 0x5e9c7c: blr             x9
    // 0x5e9c80: ldur            x0, [fp, #-0xb0]
    // 0x5e9c84: LoadField: r1 = r0->field_b
    //     0x5e9c84: ldur            w1, [x0, #0xb]
    // 0x5e9c88: LoadField: r2 = r0->field_f
    //     0x5e9c88: ldur            w2, [x0, #0xf]
    // 0x5e9c8c: DecompressPointer r2
    //     0x5e9c8c: add             x2, x2, HEAP, lsl #32
    // 0x5e9c90: LoadField: r3 = r2->field_b
    //     0x5e9c90: ldur            w3, [x2, #0xb]
    // 0x5e9c94: r2 = LoadInt32Instr(r1)
    //     0x5e9c94: sbfx            x2, x1, #1, #0x1f
    // 0x5e9c98: stur            x2, [fp, #-0xd8]
    // 0x5e9c9c: r1 = LoadInt32Instr(r3)
    //     0x5e9c9c: sbfx            x1, x3, #1, #0x1f
    // 0x5e9ca0: cmp             x2, x1
    // 0x5e9ca4: b.ne            #0x5e9cb0
    // 0x5e9ca8: mov             x1, x0
    // 0x5e9cac: r0 = _growToNextCapacity()
    //     0x5e9cac: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e9cb0: ldur            x2, [fp, #-0xb0]
    // 0x5e9cb4: ldur            x3, [fp, #-0xd8]
    // 0x5e9cb8: add             x4, x3, #1
    // 0x5e9cbc: lsl             x5, x4, #1
    // 0x5e9cc0: StoreField: r2->field_b = r5
    //     0x5e9cc0: stur            w5, [x2, #0xb]
    // 0x5e9cc4: LoadField: r1 = r2->field_f
    //     0x5e9cc4: ldur            w1, [x2, #0xf]
    // 0x5e9cc8: DecompressPointer r1
    //     0x5e9cc8: add             x1, x1, HEAP, lsl #32
    // 0x5e9ccc: ldur            x0, [fp, #-0xa0]
    // 0x5e9cd0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e9cd0: add             x25, x1, x3, lsl #2
    //     0x5e9cd4: add             x25, x25, #0xf
    //     0x5e9cd8: str             w0, [x25]
    //     0x5e9cdc: tbz             w0, #0, #0x5e9cf8
    //     0x5e9ce0: ldurb           w16, [x1, #-1]
    //     0x5e9ce4: ldurb           w17, [x0, #-1]
    //     0x5e9ce8: and             x16, x17, x16, lsr #2
    //     0x5e9cec: tst             x16, HEAP, lsr #32
    //     0x5e9cf0: b.eq            #0x5e9cf8
    //     0x5e9cf4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e9cf8: r0 = Null
    //     0x5e9cf8: mov             x0, NULL
    // 0x5e9cfc: r0 = ReturnAsyncNotFuture()
    //     0x5e9cfc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e9d00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e9d00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e9d04: b               #0x5e9a1c
    // 0x5e9d08: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e9d08: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e9de8, size: 0x54
    // 0x5e9de8: EnterFrame
    //     0x5e9de8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e9dec: mov             fp, SP
    // 0x5e9df0: ldr             x0, [fp, #0x18]
    // 0x5e9df4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5e9df4: ldur            w1, [x0, #0x17]
    // 0x5e9df8: DecompressPointer r1
    //     0x5e9df8: add             x1, x1, HEAP, lsl #32
    // 0x5e9dfc: CheckStackOverflow
    //     0x5e9dfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e9e00: cmp             SP, x16
    //     0x5e9e04: b.ls            #0x5e9e34
    // 0x5e9e08: LoadField: r0 = r1->field_f
    //     0x5e9e08: ldur            w0, [x1, #0xf]
    // 0x5e9e0c: DecompressPointer r0
    //     0x5e9e0c: add             x0, x0, HEAP, lsl #32
    // 0x5e9e10: LoadField: r1 = r0->field_f
    //     0x5e9e10: ldur            w1, [x0, #0xf]
    // 0x5e9e14: DecompressPointer r1
    //     0x5e9e14: add             x1, x1, HEAP, lsl #32
    // 0x5e9e18: cmp             w1, NULL
    // 0x5e9e1c: b.eq            #0x5e9e24
    // 0x5e9e20: r0 = show()
    //     0x5e9e20: bl              #0x5e9e3c  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] ContentDownloadDialog::show
    // 0x5e9e24: r0 = Null
    //     0x5e9e24: mov             x0, NULL
    // 0x5e9e28: LeaveFrame
    //     0x5e9e28: mov             SP, fp
    //     0x5e9e2c: ldp             fp, lr, [SP], #0x10
    // 0x5e9e30: ret
    //     0x5e9e30: ret             
    // 0x5e9e34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e9e34: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e9e38: b               #0x5e9e08
  }
  _ build(/* No info */) {
    // ** addr: 0x7381fc, size: 0x47c
    // 0x7381fc: EnterFrame
    //     0x7381fc: stp             fp, lr, [SP, #-0x10]!
    //     0x738200: mov             fp, SP
    // 0x738204: AllocStack(0x68)
    //     0x738204: sub             SP, SP, #0x68
    // 0x738208: SetupParameters(_MainScreenState this /* r1 => r1, fp-0x8 */)
    //     0x738208: stur            x1, [fp, #-8]
    // 0x73820c: CheckStackOverflow
    //     0x73820c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x738210: cmp             SP, x16
    //     0x738214: b.ls            #0x738658
    // 0x738218: r1 = 1
    //     0x738218: mov             x1, #1
    // 0x73821c: r0 = AllocateContext()
    //     0x73821c: bl              #0x927010  ; AllocateContextStub
    // 0x738220: mov             x2, x0
    // 0x738224: ldur            x0, [fp, #-8]
    // 0x738228: stur            x2, [fp, #-0x18]
    // 0x73822c: StoreField: r2->field_f = r0
    //     0x73822c: stur            w0, [x2, #0xf]
    // 0x738230: LoadField: r3 = r0->field_1b
    //     0x738230: ldur            w3, [x0, #0x1b]
    // 0x738234: DecompressPointer r3
    //     0x738234: add             x3, x3, HEAP, lsl #32
    // 0x738238: mov             x1, x0
    // 0x73823c: stur            x3, [fp, #-0x10]
    // 0x738240: r0 = _screens()
    //     0x738240: bl              #0x73875c  ; [package:umrem_demo/features/main/screens/main_screen.dart] _MainScreenState::_screens
    // 0x738244: mov             x3, x0
    // 0x738248: ldur            x2, [fp, #-8]
    // 0x73824c: LoadField: r4 = r2->field_13
    //     0x73824c: ldur            x4, [x2, #0x13]
    // 0x738250: LoadField: r0 = r3->field_b
    //     0x738250: ldur            w0, [x3, #0xb]
    // 0x738254: r1 = LoadInt32Instr(r0)
    //     0x738254: sbfx            x1, x0, #1, #0x1f
    // 0x738258: mov             x0, x1
    // 0x73825c: mov             x1, x4
    // 0x738260: cmp             x1, x0
    // 0x738264: b.hs            #0x738660
    // 0x738268: LoadField: r0 = r3->field_f
    //     0x738268: ldur            w0, [x3, #0xf]
    // 0x73826c: DecompressPointer r0
    //     0x73826c: add             x0, x0, HEAP, lsl #32
    // 0x738270: ArrayLoad: r1 = r0[r4]  ; Unknown_4
    //     0x738270: add             x16, x0, x4, lsl #2
    //     0x738274: ldur            w1, [x16, #0xf]
    // 0x738278: DecompressPointer r1
    //     0x738278: add             x1, x1, HEAP, lsl #32
    // 0x73827c: stur            x1, [fp, #-0x20]
    // 0x738280: r0 = Color()
    //     0x738280: bl              #0x415430  ; AllocateColorStub -> Color (size=0x2c)
    // 0x738284: mov             x1, x0
    // 0x738288: r0 = Instance_ColorSpace
    //     0x738288: ldr             x0, [PP, #0x5a30]  ; [pp+0x5a30] Obj!ColorSpace@a2d871
    // 0x73828c: stur            x1, [fp, #-0x28]
    // 0x738290: StoreField: r1->field_27 = r0
    //     0x738290: stur            w0, [x1, #0x27]
    // 0x738294: d0 = 1.000000
    //     0x738294: fmov            d0, #1.00000000
    // 0x738298: StoreField: r1->field_7 = d0
    //     0x738298: stur            d0, [x1, #7]
    // 0x73829c: d1 = 0.011765
    //     0x73829c: add             x17, PP, #0x1a, lsl #12  ; [pp+0x1a190] IMM: double(0.011764705882352941) from 0x3f88181818181818
    //     0x7382a0: ldr             d1, [x17, #0x190]
    // 0x7382a4: StoreField: r1->field_f = d1
    //     0x7382a4: stur            d1, [x1, #0xf]
    // 0x7382a8: d2 = 0.427451
    //     0x7382a8: add             x17, PP, #0x1a, lsl #12  ; [pp+0x1a198] IMM: double(0.42745098039215684) from 0x3fdb5b5b5b5b5b5b
    //     0x7382ac: ldr             d2, [x17, #0x198]
    // 0x7382b0: ArrayStore: r1[0] = d2  ; List_8
    //     0x7382b0: stur            d2, [x1, #0x17]
    // 0x7382b4: d3 = 0.290196
    //     0x7382b4: add             x17, PP, #0x1a, lsl #12  ; [pp+0x1a1a0] IMM: double(0.2901960784313726) from 0x3fd2929292929293
    //     0x7382b8: ldr             d3, [x17, #0x1a0]
    // 0x7382bc: StoreField: r1->field_1f = d3
    //     0x7382bc: stur            d3, [x1, #0x1f]
    // 0x7382c0: r0 = Color()
    //     0x7382c0: bl              #0x415430  ; AllocateColorStub -> Color (size=0x2c)
    // 0x7382c4: mov             x1, x0
    // 0x7382c8: r0 = Instance_ColorSpace
    //     0x7382c8: ldr             x0, [PP, #0x5a30]  ; [pp+0x5a30] Obj!ColorSpace@a2d871
    // 0x7382cc: StoreField: r1->field_27 = r0
    //     0x7382cc: stur            w0, [x1, #0x27]
    // 0x7382d0: d0 = 1.000000
    //     0x7382d0: fmov            d0, #1.00000000
    // 0x7382d4: StoreField: r1->field_7 = d0
    //     0x7382d4: stur            d0, [x1, #7]
    // 0x7382d8: d0 = 0.011765
    //     0x7382d8: add             x17, PP, #0x1a, lsl #12  ; [pp+0x1a190] IMM: double(0.011764705882352941) from 0x3f88181818181818
    //     0x7382dc: ldr             d0, [x17, #0x190]
    // 0x7382e0: StoreField: r1->field_f = d0
    //     0x7382e0: stur            d0, [x1, #0xf]
    // 0x7382e4: d0 = 0.427451
    //     0x7382e4: add             x17, PP, #0x1a, lsl #12  ; [pp+0x1a198] IMM: double(0.42745098039215684) from 0x3fdb5b5b5b5b5b5b
    //     0x7382e8: ldr             d0, [x17, #0x198]
    // 0x7382ec: ArrayStore: r1[0] = d0  ; List_8
    //     0x7382ec: stur            d0, [x1, #0x17]
    // 0x7382f0: d0 = 0.290196
    //     0x7382f0: add             x17, PP, #0x1a, lsl #12  ; [pp+0x1a1a0] IMM: double(0.2901960784313726) from 0x3fd2929292929293
    //     0x7382f4: ldr             d0, [x17, #0x1a0]
    // 0x7382f8: StoreField: r1->field_1f = d0
    //     0x7382f8: stur            d0, [x1, #0x1f]
    // 0x7382fc: r16 = 0.300000
    //     0x7382fc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x738300: ldr             x16, [x16, #0x320]
    // 0x738304: str             x16, [SP]
    // 0x738308: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x738308: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x73830c: ldr             x4, [x4, #0x198]
    // 0x738310: r0 = withValues()
    //     0x738310: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x738314: stur            x0, [fp, #-0x30]
    // 0x738318: r0 = BoxShadow()
    //     0x738318: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x73831c: stur            x0, [fp, #-0x38]
    // 0x738320: ArrayStore: r0[0] = rZR  ; List_8
    //     0x738320: stur            xzr, [x0, #0x17]
    // 0x738324: r1 = Instance_BlurStyle
    //     0x738324: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x738328: ldr             x1, [x1, #0x9b0]
    // 0x73832c: StoreField: r0->field_1f = r1
    //     0x73832c: stur            w1, [x0, #0x1f]
    // 0x738330: ldur            x1, [fp, #-0x30]
    // 0x738334: StoreField: r0->field_7 = r1
    //     0x738334: stur            w1, [x0, #7]
    // 0x738338: r1 = Instance_Offset
    //     0x738338: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a1a8] Obj!Offset@a26b71
    //     0x73833c: ldr             x1, [x1, #0x1a8]
    // 0x738340: StoreField: r0->field_b = r1
    //     0x738340: stur            w1, [x0, #0xb]
    // 0x738344: d0 = 10.000000
    //     0x738344: fmov            d0, #10.00000000
    // 0x738348: StoreField: r0->field_f = d0
    //     0x738348: stur            d0, [x0, #0xf]
    // 0x73834c: r1 = Null
    //     0x73834c: mov             x1, NULL
    // 0x738350: r2 = 2
    //     0x738350: mov             x2, #2
    // 0x738354: r0 = AllocateArray()
    //     0x738354: bl              #0x9280a0  ; AllocateArrayStub
    // 0x738358: mov             x2, x0
    // 0x73835c: ldur            x0, [fp, #-0x38]
    // 0x738360: stur            x2, [fp, #-0x30]
    // 0x738364: StoreField: r2->field_f = r0
    //     0x738364: stur            w0, [x2, #0xf]
    // 0x738368: r1 = <BoxShadow>
    //     0x738368: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x73836c: ldr             x1, [x1, #0x9c0]
    // 0x738370: r0 = AllocateGrowableArray()
    //     0x738370: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x738374: mov             x1, x0
    // 0x738378: ldur            x0, [fp, #-0x30]
    // 0x73837c: stur            x1, [fp, #-0x38]
    // 0x738380: StoreField: r1->field_f = r0
    //     0x738380: stur            w0, [x1, #0xf]
    // 0x738384: r0 = 2
    //     0x738384: mov             x0, #2
    // 0x738388: StoreField: r1->field_b = r0
    //     0x738388: stur            w0, [x1, #0xb]
    // 0x73838c: r0 = BoxDecoration()
    //     0x73838c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x738390: mov             x3, x0
    // 0x738394: ldur            x0, [fp, #-0x28]
    // 0x738398: stur            x3, [fp, #-0x30]
    // 0x73839c: StoreField: r3->field_7 = r0
    //     0x73839c: stur            w0, [x3, #7]
    // 0x7383a0: ldur            x0, [fp, #-0x38]
    // 0x7383a4: ArrayStore: r3[0] = r0  ; List_4
    //     0x7383a4: stur            w0, [x3, #0x17]
    // 0x7383a8: r0 = Instance_BoxShape
    //     0x7383a8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7383ac: ldr             x0, [x0, #0x1c8]
    // 0x7383b0: StoreField: r3->field_23 = r0
    //     0x7383b0: stur            w0, [x3, #0x23]
    // 0x7383b4: ldur            x0, [fp, #-8]
    // 0x7383b8: LoadField: r4 = r0->field_13
    //     0x7383b8: ldur            x4, [x0, #0x13]
    // 0x7383bc: stur            x4, [fp, #-0x40]
    // 0x7383c0: r1 = _ConstMap len:12
    //     0x7383c0: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7383c4: r2 = 600
    //     0x7383c4: mov             x2, #0x258
    // 0x7383c8: r0 = []()
    //     0x7383c8: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7383cc: stur            x0, [fp, #-8]
    // 0x7383d0: cmp             w0, NULL
    // 0x7383d4: b.eq            #0x738664
    // 0x7383d8: r0 = SalomonBottomBarItem()
    //     0x7383d8: bl              #0x738730  ; AllocateSalomonBottomBarItemStub -> SalomonBottomBarItem (size=0x1c)
    // 0x7383dc: mov             x3, x0
    // 0x7383e0: r0 = Instance_Icon
    //     0x7383e0: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1b0] Obj!Icon@a1ec31
    //     0x7383e4: ldr             x0, [x0, #0x1b0]
    // 0x7383e8: stur            x3, [fp, #-0x28]
    // 0x7383ec: StoreField: r3->field_7 = r0
    //     0x7383ec: stur            w0, [x3, #7]
    // 0x7383f0: r0 = Instance_Text
    //     0x7383f0: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1b8] Obj!Text@a1cdf1
    //     0x7383f4: ldr             x0, [x0, #0x1b8]
    // 0x7383f8: StoreField: r3->field_f = r0
    //     0x7383f8: stur            w0, [x3, #0xf]
    // 0x7383fc: r0 = Instance_Color
    //     0x7383fc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x738400: StoreField: r3->field_13 = r0
    //     0x738400: stur            w0, [x3, #0x13]
    // 0x738404: ldur            x1, [fp, #-8]
    // 0x738408: ArrayStore: r3[0] = r1  ; List_4
    //     0x738408: stur            w1, [x3, #0x17]
    // 0x73840c: r1 = _ConstMap len:12
    //     0x73840c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x738410: r2 = 600
    //     0x738410: mov             x2, #0x258
    // 0x738414: r0 = []()
    //     0x738414: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x738418: stur            x0, [fp, #-8]
    // 0x73841c: cmp             w0, NULL
    // 0x738420: b.eq            #0x738668
    // 0x738424: r0 = SalomonBottomBarItem()
    //     0x738424: bl              #0x738730  ; AllocateSalomonBottomBarItemStub -> SalomonBottomBarItem (size=0x1c)
    // 0x738428: mov             x3, x0
    // 0x73842c: r0 = Instance_Icon
    //     0x73842c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19900] Obj!Icon@a1e171
    //     0x738430: ldr             x0, [x0, #0x900]
    // 0x738434: stur            x3, [fp, #-0x38]
    // 0x738438: StoreField: r3->field_7 = r0
    //     0x738438: stur            w0, [x3, #7]
    // 0x73843c: r0 = Instance_Text
    //     0x73843c: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1c0] Obj!Text@a1cda1
    //     0x738440: ldr             x0, [x0, #0x1c0]
    // 0x738444: StoreField: r3->field_f = r0
    //     0x738444: stur            w0, [x3, #0xf]
    // 0x738448: r0 = Instance_Color
    //     0x738448: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73844c: StoreField: r3->field_13 = r0
    //     0x73844c: stur            w0, [x3, #0x13]
    // 0x738450: ldur            x1, [fp, #-8]
    // 0x738454: ArrayStore: r3[0] = r1  ; List_4
    //     0x738454: stur            w1, [x3, #0x17]
    // 0x738458: r1 = _ConstMap len:12
    //     0x738458: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x73845c: r2 = 600
    //     0x73845c: mov             x2, #0x258
    // 0x738460: r0 = []()
    //     0x738460: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x738464: stur            x0, [fp, #-8]
    // 0x738468: cmp             w0, NULL
    // 0x73846c: b.eq            #0x73866c
    // 0x738470: r0 = SalomonBottomBarItem()
    //     0x738470: bl              #0x738730  ; AllocateSalomonBottomBarItemStub -> SalomonBottomBarItem (size=0x1c)
    // 0x738474: mov             x3, x0
    // 0x738478: r0 = Instance_Icon
    //     0x738478: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1c8] Obj!Icon@a1ebf1
    //     0x73847c: ldr             x0, [x0, #0x1c8]
    // 0x738480: stur            x3, [fp, #-0x48]
    // 0x738484: StoreField: r3->field_7 = r0
    //     0x738484: stur            w0, [x3, #7]
    // 0x738488: r0 = Instance_Text
    //     0x738488: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1d0] Obj!Text@a1cd51
    //     0x73848c: ldr             x0, [x0, #0x1d0]
    // 0x738490: StoreField: r3->field_f = r0
    //     0x738490: stur            w0, [x3, #0xf]
    // 0x738494: r0 = Instance_Color
    //     0x738494: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x738498: StoreField: r3->field_13 = r0
    //     0x738498: stur            w0, [x3, #0x13]
    // 0x73849c: ldur            x1, [fp, #-8]
    // 0x7384a0: ArrayStore: r3[0] = r1  ; List_4
    //     0x7384a0: stur            w1, [x3, #0x17]
    // 0x7384a4: r1 = _ConstMap len:12
    //     0x7384a4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7384a8: r2 = 600
    //     0x7384a8: mov             x2, #0x258
    // 0x7384ac: r0 = []()
    //     0x7384ac: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7384b0: stur            x0, [fp, #-8]
    // 0x7384b4: cmp             w0, NULL
    // 0x7384b8: b.eq            #0x738670
    // 0x7384bc: r0 = SalomonBottomBarItem()
    //     0x7384bc: bl              #0x738730  ; AllocateSalomonBottomBarItemStub -> SalomonBottomBarItem (size=0x1c)
    // 0x7384c0: mov             x3, x0
    // 0x7384c4: r0 = Instance_Icon
    //     0x7384c4: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1d8] Obj!Icon@a1ebb1
    //     0x7384c8: ldr             x0, [x0, #0x1d8]
    // 0x7384cc: stur            x3, [fp, #-0x50]
    // 0x7384d0: StoreField: r3->field_7 = r0
    //     0x7384d0: stur            w0, [x3, #7]
    // 0x7384d4: r0 = Instance_Text
    //     0x7384d4: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1e0] Obj!Text@a1cd01
    //     0x7384d8: ldr             x0, [x0, #0x1e0]
    // 0x7384dc: StoreField: r3->field_f = r0
    //     0x7384dc: stur            w0, [x3, #0xf]
    // 0x7384e0: r0 = Instance_Color
    //     0x7384e0: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7384e4: StoreField: r3->field_13 = r0
    //     0x7384e4: stur            w0, [x3, #0x13]
    // 0x7384e8: ldur            x1, [fp, #-8]
    // 0x7384ec: ArrayStore: r3[0] = r1  ; List_4
    //     0x7384ec: stur            w1, [x3, #0x17]
    // 0x7384f0: r1 = _ConstMap len:12
    //     0x7384f0: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7384f4: r2 = 600
    //     0x7384f4: mov             x2, #0x258
    // 0x7384f8: r0 = []()
    //     0x7384f8: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7384fc: stur            x0, [fp, #-8]
    // 0x738500: cmp             w0, NULL
    // 0x738504: b.eq            #0x738674
    // 0x738508: r0 = SalomonBottomBarItem()
    //     0x738508: bl              #0x738730  ; AllocateSalomonBottomBarItemStub -> SalomonBottomBarItem (size=0x1c)
    // 0x73850c: mov             x3, x0
    // 0x738510: r0 = Instance_Icon
    //     0x738510: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a1e8] Obj!Icon@a1e5f1
    //     0x738514: ldr             x0, [x0, #0x1e8]
    // 0x738518: stur            x3, [fp, #-0x58]
    // 0x73851c: StoreField: r3->field_7 = r0
    //     0x73851c: stur            w0, [x3, #7]
    // 0x738520: r0 = Instance_Text
    //     0x738520: add             x0, PP, #0x15, lsl #12  ; [pp+0x15928] Obj!Text@a1cc11
    //     0x738524: ldr             x0, [x0, #0x928]
    // 0x738528: StoreField: r3->field_f = r0
    //     0x738528: stur            w0, [x3, #0xf]
    // 0x73852c: r0 = Instance_Color
    //     0x73852c: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x738530: StoreField: r3->field_13 = r0
    //     0x738530: stur            w0, [x3, #0x13]
    // 0x738534: ldur            x0, [fp, #-8]
    // 0x738538: ArrayStore: r3[0] = r0  ; List_4
    //     0x738538: stur            w0, [x3, #0x17]
    // 0x73853c: r1 = Null
    //     0x73853c: mov             x1, NULL
    // 0x738540: r2 = 10
    //     0x738540: mov             x2, #0xa
    // 0x738544: r0 = AllocateArray()
    //     0x738544: bl              #0x9280a0  ; AllocateArrayStub
    // 0x738548: mov             x2, x0
    // 0x73854c: ldur            x0, [fp, #-0x28]
    // 0x738550: stur            x2, [fp, #-8]
    // 0x738554: StoreField: r2->field_f = r0
    //     0x738554: stur            w0, [x2, #0xf]
    // 0x738558: ldur            x0, [fp, #-0x38]
    // 0x73855c: StoreField: r2->field_13 = r0
    //     0x73855c: stur            w0, [x2, #0x13]
    // 0x738560: ldur            x0, [fp, #-0x48]
    // 0x738564: ArrayStore: r2[0] = r0  ; List_4
    //     0x738564: stur            w0, [x2, #0x17]
    // 0x738568: ldur            x0, [fp, #-0x50]
    // 0x73856c: StoreField: r2->field_1b = r0
    //     0x73856c: stur            w0, [x2, #0x1b]
    // 0x738570: ldur            x0, [fp, #-0x58]
    // 0x738574: StoreField: r2->field_1f = r0
    //     0x738574: stur            w0, [x2, #0x1f]
    // 0x738578: r1 = <SalomonBottomBarItem>
    //     0x738578: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a1f0] TypeArguments: <SalomonBottomBarItem>
    //     0x73857c: ldr             x1, [x1, #0x1f0]
    // 0x738580: r0 = AllocateGrowableArray()
    //     0x738580: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x738584: mov             x3, x0
    // 0x738588: ldur            x0, [fp, #-8]
    // 0x73858c: stur            x3, [fp, #-0x28]
    // 0x738590: StoreField: r3->field_f = r0
    //     0x738590: stur            w0, [x3, #0xf]
    // 0x738594: r0 = 10
    //     0x738594: mov             x0, #0xa
    // 0x738598: StoreField: r3->field_b = r0
    //     0x738598: stur            w0, [x3, #0xb]
    // 0x73859c: ldur            x2, [fp, #-0x18]
    // 0x7385a0: r1 = Function '<anonymous closure>':.
    //     0x7385a0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a1f8] AnonymousClosure: (0x738968), in [package:umrem_demo/features/main/screens/main_screen.dart] _MainScreenState::build (0x7381fc)
    //     0x7385a4: ldr             x1, [x1, #0x1f8]
    // 0x7385a8: r0 = AllocateClosure()
    //     0x7385a8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7385ac: stur            x0, [fp, #-8]
    // 0x7385b0: r0 = SalomonBottomBar()
    //     0x7385b0: bl              #0x738724  ; AllocateSalomonBottomBarStub -> SalomonBottomBar (size=0x38)
    // 0x7385b4: mov             x1, x0
    // 0x7385b8: ldur            x2, [fp, #-0x40]
    // 0x7385bc: ldur            x3, [fp, #-0x28]
    // 0x7385c0: ldur            x5, [fp, #-8]
    // 0x7385c4: stur            x0, [fp, #-8]
    // 0x7385c8: r0 = SalomonBottomBar()
    //     0x7385c8: bl              #0x738678  ; [package:salomon_bottom_bar/salomon_bottom_bar.dart] SalomonBottomBar::SalomonBottomBar
    // 0x7385cc: r0 = Container()
    //     0x7385cc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7385d0: stur            x0, [fp, #-0x18]
    // 0x7385d4: ldur            x16, [fp, #-0x30]
    // 0x7385d8: ldur            lr, [fp, #-8]
    // 0x7385dc: stp             lr, x16, [SP]
    // 0x7385e0: mov             x1, x0
    // 0x7385e4: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x7385e4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x7385e8: ldr             x4, [x4, #0xfa8]
    // 0x7385ec: r0 = Container()
    //     0x7385ec: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7385f0: r0 = Scaffold()
    //     0x7385f0: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7385f4: ldur            x1, [fp, #-0x20]
    // 0x7385f8: StoreField: r0->field_1b = r1
    //     0x7385f8: stur            w1, [x0, #0x1b]
    // 0x7385fc: r1 = Instance_AlignmentDirectional
    //     0x7385fc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x738600: ldr             x1, [x1, #0x350]
    // 0x738604: StoreField: r0->field_2f = r1
    //     0x738604: stur            w1, [x0, #0x2f]
    // 0x738608: ldur            x1, [fp, #-0x18]
    // 0x73860c: StoreField: r0->field_53 = r1
    //     0x73860c: stur            w1, [x0, #0x53]
    // 0x738610: r1 = true
    //     0x738610: add             x1, NULL, #0x20  ; true
    // 0x738614: StoreField: r0->field_5f = r1
    //     0x738614: stur            w1, [x0, #0x5f]
    // 0x738618: r2 = Instance_DragStartBehavior
    //     0x738618: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x73861c: StoreField: r0->field_63 = r2
    //     0x73861c: stur            w2, [x0, #0x63]
    // 0x738620: r2 = false
    //     0x738620: add             x2, NULL, #0x30  ; false
    // 0x738624: StoreField: r0->field_b = r2
    //     0x738624: stur            w2, [x0, #0xb]
    // 0x738628: StoreField: r0->field_f = r1
    //     0x738628: stur            w1, [x0, #0xf]
    // 0x73862c: StoreField: r0->field_13 = r2
    //     0x73862c: stur            w2, [x0, #0x13]
    // 0x738630: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x738630: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x738634: ldr             x2, [x2, #0x358]
    // 0x738638: StoreField: r0->field_4b = r2
    //     0x738638: stur            w2, [x0, #0x4b]
    // 0x73863c: StoreField: r0->field_6b = r1
    //     0x73863c: stur            w1, [x0, #0x6b]
    // 0x738640: StoreField: r0->field_6f = r1
    //     0x738640: stur            w1, [x0, #0x6f]
    // 0x738644: ldur            x1, [fp, #-0x10]
    // 0x738648: StoreField: r0->field_7 = r1
    //     0x738648: stur            w1, [x0, #7]
    // 0x73864c: LeaveFrame
    //     0x73864c: mov             SP, fp
    //     0x738650: ldp             fp, lr, [SP], #0x10
    // 0x738654: ret
    //     0x738654: ret             
    // 0x738658: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x738658: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73865c: b               #0x738218
    // 0x738660: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x738660: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x738664: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x738664: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x738668: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x738668: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73866c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73866c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x738670: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x738670: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x738674: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x738674: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  get _ _screens(/* No info */) {
    // ** addr: 0x73875c, size: 0xb8
    // 0x73875c: EnterFrame
    //     0x73875c: stp             fp, lr, [SP, #-0x10]!
    //     0x738760: mov             fp, SP
    // 0x738764: AllocStack(0x10)
    //     0x738764: sub             SP, SP, #0x10
    // 0x738768: SetupParameters(_MainScreenState this /* r1 => r1, fp-0x8 */)
    //     0x738768: stur            x1, [fp, #-8]
    // 0x73876c: r1 = 1
    //     0x73876c: mov             x1, #1
    // 0x738770: r0 = AllocateContext()
    //     0x738770: bl              #0x927010  ; AllocateContextStub
    // 0x738774: mov             x1, x0
    // 0x738778: ldur            x0, [fp, #-8]
    // 0x73877c: StoreField: r1->field_f = r0
    //     0x73877c: stur            w0, [x1, #0xf]
    // 0x738780: mov             x2, x1
    // 0x738784: r1 = Function '<anonymous closure>':.
    //     0x738784: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a218] AnonymousClosure: (0x738820), in [package:umrem_demo/features/main/screens/main_screen.dart] _MainScreenState::_screens (0x73875c)
    //     0x738788: ldr             x1, [x1, #0x218]
    // 0x73878c: r0 = AllocateClosure()
    //     0x73878c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x738790: stur            x0, [fp, #-8]
    // 0x738794: r0 = HomeScreen()
    //     0x738794: bl              #0x738814  ; AllocateHomeScreenStub -> HomeScreen (size=0x10)
    // 0x738798: mov             x3, x0
    // 0x73879c: ldur            x0, [fp, #-8]
    // 0x7387a0: stur            x3, [fp, #-0x10]
    // 0x7387a4: StoreField: r3->field_b = r0
    //     0x7387a4: stur            w0, [x3, #0xb]
    // 0x7387a8: r1 = Null
    //     0x7387a8: mov             x1, NULL
    // 0x7387ac: r2 = 10
    //     0x7387ac: mov             x2, #0xa
    // 0x7387b0: r0 = AllocateArray()
    //     0x7387b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7387b4: stur            x0, [fp, #-8]
    // 0x7387b8: r16 = Instance_Dualar
    //     0x7387b8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11dd8] Obj!Dualar@a20291
    //     0x7387bc: ldr             x16, [x16, #0xdd8]
    // 0x7387c0: StoreField: r0->field_f = r16
    //     0x7387c0: stur            w16, [x0, #0xf]
    // 0x7387c4: r16 = Instance_TakvimScreen
    //     0x7387c4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e80] Obj!TakvimScreen@a20241
    //     0x7387c8: ldr             x16, [x16, #0xe80]
    // 0x7387cc: StoreField: r0->field_13 = r16
    //     0x7387cc: stur            w16, [x0, #0x13]
    // 0x7387d0: ldur            x1, [fp, #-0x10]
    // 0x7387d4: ArrayStore: r0[0] = r1  ; List_4
    //     0x7387d4: stur            w1, [x0, #0x17]
    // 0x7387d8: r16 = Instance_GeneralInfoScreen
    //     0x7387d8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e88] Obj!GeneralInfoScreen@a20271
    //     0x7387dc: ldr             x16, [x16, #0xe88]
    // 0x7387e0: StoreField: r0->field_1b = r16
    //     0x7387e0: stur            w16, [x0, #0x1b]
    // 0x7387e4: r16 = Instance_ProfilScreen
    //     0x7387e4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11e90] Obj!ProfilScreen@a20261
    //     0x7387e8: ldr             x16, [x16, #0xe90]
    // 0x7387ec: StoreField: r0->field_1f = r16
    //     0x7387ec: stur            w16, [x0, #0x1f]
    // 0x7387f0: r1 = <Widget>
    //     0x7387f0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7387f4: r0 = AllocateGrowableArray()
    //     0x7387f4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7387f8: ldur            x1, [fp, #-8]
    // 0x7387fc: StoreField: r0->field_f = r1
    //     0x7387fc: stur            w1, [x0, #0xf]
    // 0x738800: r1 = 10
    //     0x738800: mov             x1, #0xa
    // 0x738804: StoreField: r0->field_b = r1
    //     0x738804: stur            w1, [x0, #0xb]
    // 0x738808: LeaveFrame
    //     0x738808: mov             SP, fp
    //     0x73880c: ldp             fp, lr, [SP], #0x10
    // 0x738810: ret
    //     0x738810: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x738820, size: 0x5c
    // 0x738820: EnterFrame
    //     0x738820: stp             fp, lr, [SP, #-0x10]!
    //     0x738824: mov             fp, SP
    // 0x738828: ldr             x0, [fp, #0x10]
    // 0x73882c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73882c: ldur            w1, [x0, #0x17]
    // 0x738830: DecompressPointer r1
    //     0x738830: add             x1, x1, HEAP, lsl #32
    // 0x738834: CheckStackOverflow
    //     0x738834: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x738838: cmp             SP, x16
    //     0x73883c: b.ls            #0x738874
    // 0x738840: LoadField: r0 = r1->field_f
    //     0x738840: ldur            w0, [x1, #0xf]
    // 0x738844: DecompressPointer r0
    //     0x738844: add             x0, x0, HEAP, lsl #32
    // 0x738848: LoadField: r1 = r0->field_1b
    //     0x738848: ldur            w1, [x0, #0x1b]
    // 0x73884c: DecompressPointer r1
    //     0x73884c: add             x1, x1, HEAP, lsl #32
    // 0x738850: r0 = currentState()
    //     0x738850: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x738854: cmp             w0, NULL
    // 0x738858: b.eq            #0x738864
    // 0x73885c: mov             x1, x0
    // 0x738860: r0 = openEndDrawer()
    //     0x738860: bl              #0x73887c  ; [package:flutter/src/material/scaffold.dart] ScaffoldState::openEndDrawer
    // 0x738864: r0 = Null
    //     0x738864: mov             x0, NULL
    // 0x738868: LeaveFrame
    //     0x738868: mov             SP, fp
    //     0x73886c: ldp             fp, lr, [SP], #0x10
    // 0x738870: ret
    //     0x738870: ret             
    // 0x738874: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x738874: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x738878: b               #0x738840
  }
  [closure] Null <anonymous closure>(dynamic, int) {
    // ** addr: 0x738968, size: 0x84
    // 0x738968: EnterFrame
    //     0x738968: stp             fp, lr, [SP, #-0x10]!
    //     0x73896c: mov             fp, SP
    // 0x738970: AllocStack(0x10)
    //     0x738970: sub             SP, SP, #0x10
    // 0x738974: SetupParameters([dynamic _ /* r0 */])
    //     0x738974: ldr             x0, [fp, #0x18]
    //     0x738978: ldur            w1, [x0, #0x17]
    //     0x73897c: add             x1, x1, HEAP, lsl #32
    //     0x738980: stur            x1, [fp, #-8]
    // 0x738984: CheckStackOverflow
    //     0x738984: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x738988: cmp             SP, x16
    //     0x73898c: b.ls            #0x7389e4
    // 0x738990: r1 = 1
    //     0x738990: mov             x1, #1
    // 0x738994: r0 = AllocateContext()
    //     0x738994: bl              #0x927010  ; AllocateContextStub
    // 0x738998: mov             x1, x0
    // 0x73899c: ldur            x0, [fp, #-8]
    // 0x7389a0: StoreField: r1->field_b = r0
    //     0x7389a0: stur            w0, [x1, #0xb]
    // 0x7389a4: ldr             x2, [fp, #0x10]
    // 0x7389a8: StoreField: r1->field_f = r2
    //     0x7389a8: stur            w2, [x1, #0xf]
    // 0x7389ac: LoadField: r3 = r0->field_f
    //     0x7389ac: ldur            w3, [x0, #0xf]
    // 0x7389b0: DecompressPointer r3
    //     0x7389b0: add             x3, x3, HEAP, lsl #32
    // 0x7389b4: mov             x2, x1
    // 0x7389b8: stur            x3, [fp, #-0x10]
    // 0x7389bc: r1 = Function '<anonymous closure>':.
    //     0x7389bc: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a200] AnonymousClosure: (0x7389ec), in [package:umrem_demo/features/main/screens/main_screen.dart] _MainScreenState::build (0x7381fc)
    //     0x7389c0: ldr             x1, [x1, #0x200]
    // 0x7389c4: r0 = AllocateClosure()
    //     0x7389c4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7389c8: ldur            x1, [fp, #-0x10]
    // 0x7389cc: mov             x2, x0
    // 0x7389d0: r0 = setState()
    //     0x7389d0: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x7389d4: r0 = Null
    //     0x7389d4: mov             x0, NULL
    // 0x7389d8: LeaveFrame
    //     0x7389d8: mov             SP, fp
    //     0x7389dc: ldp             fp, lr, [SP], #0x10
    // 0x7389e0: ret
    //     0x7389e0: ret             
    // 0x7389e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7389e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7389e8: b               #0x738990
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7389ec, size: 0x3c
    // 0x7389ec: ldr             x1, [SP]
    // 0x7389f0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7389f0: ldur            w2, [x1, #0x17]
    // 0x7389f4: DecompressPointer r2
    //     0x7389f4: add             x2, x2, HEAP, lsl #32
    // 0x7389f8: LoadField: r1 = r2->field_b
    //     0x7389f8: ldur            w1, [x2, #0xb]
    // 0x7389fc: DecompressPointer r1
    //     0x7389fc: add             x1, x1, HEAP, lsl #32
    // 0x738a00: LoadField: r3 = r1->field_f
    //     0x738a00: ldur            w3, [x1, #0xf]
    // 0x738a04: DecompressPointer r3
    //     0x738a04: add             x3, x3, HEAP, lsl #32
    // 0x738a08: LoadField: r1 = r2->field_f
    //     0x738a08: ldur            w1, [x2, #0xf]
    // 0x738a0c: DecompressPointer r1
    //     0x738a0c: add             x1, x1, HEAP, lsl #32
    // 0x738a10: r2 = LoadInt32Instr(r1)
    //     0x738a10: sbfx            x2, x1, #1, #0x1f
    //     0x738a14: tbz             w1, #0, #0x738a1c
    //     0x738a18: ldur            x2, [x1, #7]
    // 0x738a1c: StoreField: r3->field_13 = r2
    //     0x738a1c: stur            x2, [x3, #0x13]
    // 0x738a20: r0 = Null
    //     0x738a20: mov             x0, NULL
    // 0x738a24: ret
    //     0x738a24: ret             
  }
}

// class id: 3193, size: 0xc, field offset: 0xc
//   const constructor, 
class MainScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf22c, size: 0x50
    // 0x7bf22c: EnterFrame
    //     0x7bf22c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf230: mov             fp, SP
    // 0x7bf234: AllocStack(0x8)
    //     0x7bf234: sub             SP, SP, #8
    // 0x7bf238: SetupParameters(MainScreen this /* r1 => r0 */)
    //     0x7bf238: mov             x0, x1
    // 0x7bf23c: r1 = <MainScreen>
    //     0x7bf23c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12818] TypeArguments: <MainScreen>
    //     0x7bf240: ldr             x1, [x1, #0x818]
    // 0x7bf244: r0 = _MainScreenState()
    //     0x7bf244: bl              #0x7bf27c  ; Allocate_MainScreenStateStub -> _MainScreenState (size=0x20)
    // 0x7bf248: mov             x2, x0
    // 0x7bf24c: r0 = 2
    //     0x7bf24c: mov             x0, #2
    // 0x7bf250: stur            x2, [fp, #-8]
    // 0x7bf254: StoreField: r2->field_13 = r0
    //     0x7bf254: stur            x0, [x2, #0x13]
    // 0x7bf258: r1 = <ScaffoldState>
    //     0x7bf258: add             x1, PP, #0x12, lsl #12  ; [pp+0x12820] TypeArguments: <ScaffoldState>
    //     0x7bf25c: ldr             x1, [x1, #0x820]
    // 0x7bf260: r0 = LabeledGlobalKey()
    //     0x7bf260: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bf264: mov             x1, x0
    // 0x7bf268: ldur            x0, [fp, #-8]
    // 0x7bf26c: StoreField: r0->field_1b = r1
    //     0x7bf26c: stur            w1, [x0, #0x1b]
    // 0x7bf270: LeaveFrame
    //     0x7bf270: mov             SP, fp
    //     0x7bf274: ldp             fp, lr, [SP], #0x10
    // 0x7bf278: ret
    //     0x7bf278: ret             
  }
}
