// lib: , url: package:umrem_demo/features/admin/providers/notification_provider.dart

// class id: 1049523, size: 0x8
class :: {
}

// class id: 3867, size: 0x3c, field offset: 0x24
class NotificationProvider extends ChangeNotifier {

  _ sendNotification(/* No info */) async {
    // ** addr: 0x6dbe80, size: 0x620
    // 0x6dbe80: EnterFrame
    //     0x6dbe80: stp             fp, lr, [SP, #-0x10]!
    //     0x6dbe84: mov             fp, SP
    // 0x6dbe88: AllocStack(0x128)
    //     0x6dbe88: sub             SP, SP, #0x128
    // 0x6dbe8c: SetupParameters(NotificationProvider this /* r1 => r4, fp-0xc8 */, dynamic _ /* r2 => r3, fp-0xe0 */, dynamic _ /* r3 => r2, fp-0xd8 */)
    //     0x6dbe8c: stur            NULL, [fp, #-8]
    //     0x6dbe90: mov             x4, x1
    //     0x6dbe94: stur            x2, [fp, #-0xd0]
    //     0x6dbe98: mov             x16, x3
    //     0x6dbe9c: mov             x3, x2
    //     0x6dbea0: mov             x2, x16
    //     0x6dbea4: stur            x1, [fp, #-0xc8]
    //     0x6dbea8: mov             x1, x5
    //     0x6dbeac: stur            x2, [fp, #-0xd8]
    //     0x6dbeb0: stur            x5, [fp, #-0xe0]
    // 0x6dbeb4: CheckStackOverflow
    //     0x6dbeb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dbeb8: cmp             SP, x16
    //     0x6dbebc: b.ls            #0x6dc498
    // 0x6dbec0: InitAsync() -> Future<void?>
    //     0x6dbec0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6dbec4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6dbec8: ldur            x0, [fp, #-0xd8]
    // 0x6dbecc: LoadField: r1 = r0->field_27
    //     0x6dbecc: ldur            w1, [x0, #0x27]
    // 0x6dbed0: DecompressPointer r1
    //     0x6dbed0: add             x1, x1, HEAP, lsl #32
    // 0x6dbed4: LoadField: r2 = r1->field_7
    //     0x6dbed4: ldur            w2, [x1, #7]
    // 0x6dbed8: DecompressPointer r2
    //     0x6dbed8: add             x2, x2, HEAP, lsl #32
    // 0x6dbedc: mov             x1, x2
    // 0x6dbee0: r0 = trim()
    //     0x6dbee0: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6dbee4: mov             x2, x0
    // 0x6dbee8: ldur            x0, [fp, #-0xe0]
    // 0x6dbeec: stur            x2, [fp, #-0xe8]
    // 0x6dbef0: LoadField: r1 = r0->field_27
    //     0x6dbef0: ldur            w1, [x0, #0x27]
    // 0x6dbef4: DecompressPointer r1
    //     0x6dbef4: add             x1, x1, HEAP, lsl #32
    // 0x6dbef8: LoadField: r3 = r1->field_7
    //     0x6dbef8: ldur            w3, [x1, #7]
    // 0x6dbefc: DecompressPointer r3
    //     0x6dbefc: add             x3, x3, HEAP, lsl #32
    // 0x6dbf00: mov             x1, x3
    // 0x6dbf04: r0 = trim()
    //     0x6dbf04: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6dbf08: ldur            x3, [fp, #-0xe8]
    // 0x6dbf0c: stur            x0, [fp, #-0xf0]
    // 0x6dbf10: LoadField: r1 = r3->field_7
    //     0x6dbf10: ldur            w1, [x3, #7]
    // 0x6dbf14: cbz             w1, #0x6dbf20
    // 0x6dbf18: LoadField: r1 = r0->field_7
    //     0x6dbf18: ldur            w1, [x0, #7]
    // 0x6dbf1c: cbnz            w1, #0x6dbf34
    // 0x6dbf20: r1 = "Başlık ve mesaj zorunlu"
    //     0x6dbf20: add             x1, PP, #0x18, lsl #12  ; [pp+0x18a30] "Başlık ve mesaj zorunlu"
    //     0x6dbf24: ldr             x1, [x1, #0xa30]
    // 0x6dbf28: r0 = showError()
    //     0x6dbf28: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6dbf2c: r0 = Null
    //     0x6dbf2c: mov             x0, NULL
    // 0x6dbf30: r0 = ReturnAsyncNotFuture()
    //     0x6dbf30: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dbf34: ldur            x2, [fp, #-0xc8]
    // 0x6dbf38: r1 = true
    //     0x6dbf38: add             x1, NULL, #0x20  ; true
    // 0x6dbf3c: StoreField: r2->field_27 = r1
    //     0x6dbf3c: stur            w1, [x2, #0x27]
    // 0x6dbf40: mov             x1, x2
    // 0x6dbf44: r0 = notifyListeners()
    //     0x6dbf44: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6dbf48: ldur            x1, [fp, #-0xd0]
    // 0x6dbf4c: r0 = isSuperAdmin()
    //     0x6dbf4c: bl              #0x5db9dc  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isSuperAdmin
    // 0x6dbf50: tbz             w0, #4, #0x6dbfc4
    // 0x6dbf54: ldur            x0, [fp, #-0xc8]
    // 0x6dbf58: LoadField: r1 = r0->field_2b
    //     0x6dbf58: ldur            w1, [x0, #0x2b]
    // 0x6dbf5c: DecompressPointer r1
    //     0x6dbf5c: add             x1, x1, HEAP, lsl #32
    // 0x6dbf60: r16 = Instance_NotificationTargetType
    //     0x6dbf60: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d58] Obj!NotificationTargetType@a27401
    //     0x6dbf64: ldr             x16, [x16, #0xd58]
    // 0x6dbf68: cmp             w1, w16
    // 0x6dbf6c: b.ne            #0x6dbfbc
    // 0x6dbf70: r1 = Null
    //     0x6dbf70: mov             x1, NULL
    // 0x6dbf74: r2 = 4
    //     0x6dbf74: mov             x2, #4
    // 0x6dbf78: r0 = AllocateArray()
    //     0x6dbf78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dbf7c: r16 = "agency_"
    //     0x6dbf7c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a38] "agency_"
    //     0x6dbf80: ldr             x16, [x16, #0xa38]
    // 0x6dbf84: StoreField: r0->field_f = r16
    //     0x6dbf84: stur            w16, [x0, #0xf]
    // 0x6dbf88: r1 = LoadStaticField(0xfe4)
    //     0x6dbf88: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6dbf8c: ldr             x1, [x1, #0x1fc8]
    // 0x6dbf90: cmp             w1, NULL
    // 0x6dbf94: b.ne            #0x6dbfa0
    // 0x6dbf98: r1 = Null
    //     0x6dbf98: mov             x1, NULL
    // 0x6dbf9c: b               #0x6dbfac
    // 0x6dbfa0: LoadField: r2 = r1->field_4b
    //     0x6dbfa0: ldur            w2, [x1, #0x4b]
    // 0x6dbfa4: DecompressPointer r2
    //     0x6dbfa4: add             x2, x2, HEAP, lsl #32
    // 0x6dbfa8: mov             x1, x2
    // 0x6dbfac: StoreField: r0->field_13 = r1
    //     0x6dbfac: stur            w1, [x0, #0x13]
    // 0x6dbfb0: str             x0, [SP]
    // 0x6dbfb4: r0 = _interpolate()
    //     0x6dbfb4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dbfb8: b               #0x6dbfc8
    // 0x6dbfbc: r0 = Null
    //     0x6dbfbc: mov             x0, NULL
    // 0x6dbfc0: b               #0x6dbfc8
    // 0x6dbfc4: r0 = Null
    //     0x6dbfc4: mov             x0, NULL
    // 0x6dbfc8: stur            x0, [fp, #-0xf8]
    // 0x6dbfcc: cmp             w0, NULL
    // 0x6dbfd0: b.ne            #0x6dc18c
    // 0x6dbfd4: ldur            x2, [fp, #-0xc8]
    // 0x6dbfd8: LoadField: r1 = r2->field_2b
    //     0x6dbfd8: ldur            w1, [x2, #0x2b]
    // 0x6dbfdc: DecompressPointer r1
    //     0x6dbfdc: add             x1, x1, HEAP, lsl #32
    // 0x6dbfe0: LoadField: r3 = r1->field_7
    //     0x6dbfe0: ldur            x3, [x1, #7]
    // 0x6dbfe4: cmp             x3, #1
    // 0x6dbfe8: b.gt            #0x6dc090
    // 0x6dbfec: cmp             x3, #0
    // 0x6dbff0: b.gt            #0x6dc018
    // 0x6dbff4: ldur            x1, [fp, #-0xd0]
    // 0x6dbff8: r0 = isSuperAdmin()
    //     0x6dbff8: bl              #0x5db9dc  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isSuperAdmin
    // 0x6dbffc: tbnz            w0, #4, #0x6dc00c
    // 0x6dc000: r0 = "all"
    //     0x6dc000: add             x0, PP, #0x15, lsl #12  ; [pp+0x15bc0] "all"
    //     0x6dc004: ldr             x0, [x0, #0xbc0]
    // 0x6dc008: b               #0x6dc010
    // 0x6dc00c: ldur            x0, [fp, #-0xf8]
    // 0x6dc010: r1 = Null
    //     0x6dc010: mov             x1, NULL
    // 0x6dc014: b               #0x6dc184
    // 0x6dc018: mov             x0, x2
    // 0x6dc01c: LoadField: r3 = r0->field_2f
    //     0x6dc01c: ldur            w3, [x0, #0x2f]
    // 0x6dc020: DecompressPointer r3
    //     0x6dc020: add             x3, x3, HEAP, lsl #32
    // 0x6dc024: stur            x3, [fp, #-0x100]
    // 0x6dc028: cmp             w3, NULL
    // 0x6dc02c: b.eq            #0x6dc080
    // 0x6dc030: LoadField: r1 = r3->field_7
    //     0x6dc030: ldur            w1, [x3, #7]
    // 0x6dc034: cbz             w1, #0x6dc080
    // 0x6dc038: r1 = Null
    //     0x6dc038: mov             x1, NULL
    // 0x6dc03c: r2 = 10
    //     0x6dc03c: mov             x2, #0xa
    // 0x6dc040: r0 = AllocateArray()
    //     0x6dc040: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc044: r16 = "\'mekke_sefer_"
    //     0x6dc044: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a40] "\'mekke_sefer_"
    //     0x6dc048: ldr             x16, [x16, #0xa40]
    // 0x6dc04c: StoreField: r0->field_f = r16
    //     0x6dc04c: stur            w16, [x0, #0xf]
    // 0x6dc050: ldur            x1, [fp, #-0x100]
    // 0x6dc054: StoreField: r0->field_13 = r1
    //     0x6dc054: stur            w1, [x0, #0x13]
    // 0x6dc058: r16 = "\' in topics || \'medine_sefer_"
    //     0x6dc058: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a48] "\' in topics || \'medine_sefer_"
    //     0x6dc05c: ldr             x16, [x16, #0xa48]
    // 0x6dc060: ArrayStore: r0[0] = r16  ; List_4
    //     0x6dc060: stur            w16, [x0, #0x17]
    // 0x6dc064: StoreField: r0->field_1b = r1
    //     0x6dc064: stur            w1, [x0, #0x1b]
    // 0x6dc068: r16 = "\' in topics"
    //     0x6dc068: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a50] "\' in topics"
    //     0x6dc06c: ldr             x16, [x16, #0xa50]
    // 0x6dc070: StoreField: r0->field_1f = r16
    //     0x6dc070: stur            w16, [x0, #0x1f]
    // 0x6dc074: str             x0, [SP]
    // 0x6dc078: r0 = _interpolate()
    //     0x6dc078: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dc07c: b               #0x6dc084
    // 0x6dc080: r0 = Null
    //     0x6dc080: mov             x0, NULL
    // 0x6dc084: mov             x1, x0
    // 0x6dc088: ldur            x0, [fp, #-0xf8]
    // 0x6dc08c: b               #0x6dc184
    // 0x6dc090: cmp             x3, #2
    // 0x6dc094: b.gt            #0x6dc110
    // 0x6dc098: ldur            x0, [fp, #-0xc8]
    // 0x6dc09c: LoadField: r3 = r0->field_33
    //     0x6dc09c: ldur            w3, [x0, #0x33]
    // 0x6dc0a0: DecompressPointer r3
    //     0x6dc0a0: add             x3, x3, HEAP, lsl #32
    // 0x6dc0a4: stur            x3, [fp, #-0x100]
    // 0x6dc0a8: cmp             w3, NULL
    // 0x6dc0ac: b.eq            #0x6dc100
    // 0x6dc0b0: LoadField: r1 = r3->field_7
    //     0x6dc0b0: ldur            w1, [x3, #7]
    // 0x6dc0b4: cbz             w1, #0x6dc100
    // 0x6dc0b8: r1 = Null
    //     0x6dc0b8: mov             x1, NULL
    // 0x6dc0bc: r2 = 10
    //     0x6dc0bc: mov             x2, #0xa
    // 0x6dc0c0: r0 = AllocateArray()
    //     0x6dc0c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc0c4: r16 = "\'mekke_otel_"
    //     0x6dc0c4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a58] "\'mekke_otel_"
    //     0x6dc0c8: ldr             x16, [x16, #0xa58]
    // 0x6dc0cc: StoreField: r0->field_f = r16
    //     0x6dc0cc: stur            w16, [x0, #0xf]
    // 0x6dc0d0: ldur            x1, [fp, #-0x100]
    // 0x6dc0d4: StoreField: r0->field_13 = r1
    //     0x6dc0d4: stur            w1, [x0, #0x13]
    // 0x6dc0d8: r16 = "\' in topics || \'medine_otel_"
    //     0x6dc0d8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a60] "\' in topics || \'medine_otel_"
    //     0x6dc0dc: ldr             x16, [x16, #0xa60]
    // 0x6dc0e0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6dc0e0: stur            w16, [x0, #0x17]
    // 0x6dc0e4: StoreField: r0->field_1b = r1
    //     0x6dc0e4: stur            w1, [x0, #0x1b]
    // 0x6dc0e8: r16 = "\' in topics"
    //     0x6dc0e8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a50] "\' in topics"
    //     0x6dc0ec: ldr             x16, [x16, #0xa50]
    // 0x6dc0f0: StoreField: r0->field_1f = r16
    //     0x6dc0f0: stur            w16, [x0, #0x1f]
    // 0x6dc0f4: str             x0, [SP]
    // 0x6dc0f8: r0 = _interpolate()
    //     0x6dc0f8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dc0fc: b               #0x6dc104
    // 0x6dc100: r0 = Null
    //     0x6dc100: mov             x0, NULL
    // 0x6dc104: mov             x1, x0
    // 0x6dc108: ldur            x0, [fp, #-0xf8]
    // 0x6dc10c: b               #0x6dc184
    // 0x6dc110: ldur            x0, [fp, #-0xc8]
    // 0x6dc114: LoadField: r3 = r0->field_37
    //     0x6dc114: ldur            w3, [x0, #0x37]
    // 0x6dc118: DecompressPointer r3
    //     0x6dc118: add             x3, x3, HEAP, lsl #32
    // 0x6dc11c: stur            x3, [fp, #-0x100]
    // 0x6dc120: cmp             w3, NULL
    // 0x6dc124: b.eq            #0x6dc178
    // 0x6dc128: LoadField: r1 = r3->field_7
    //     0x6dc128: ldur            w1, [x3, #7]
    // 0x6dc12c: cbz             w1, #0x6dc178
    // 0x6dc130: r1 = Null
    //     0x6dc130: mov             x1, NULL
    // 0x6dc134: r2 = 10
    //     0x6dc134: mov             x2, #0xa
    // 0x6dc138: r0 = AllocateArray()
    //     0x6dc138: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc13c: r16 = "\'mekke_oda_"
    //     0x6dc13c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a68] "\'mekke_oda_"
    //     0x6dc140: ldr             x16, [x16, #0xa68]
    // 0x6dc144: StoreField: r0->field_f = r16
    //     0x6dc144: stur            w16, [x0, #0xf]
    // 0x6dc148: ldur            x1, [fp, #-0x100]
    // 0x6dc14c: StoreField: r0->field_13 = r1
    //     0x6dc14c: stur            w1, [x0, #0x13]
    // 0x6dc150: r16 = "\' in topics || \'medine_oda_"
    //     0x6dc150: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a70] "\' in topics || \'medine_oda_"
    //     0x6dc154: ldr             x16, [x16, #0xa70]
    // 0x6dc158: ArrayStore: r0[0] = r16  ; List_4
    //     0x6dc158: stur            w16, [x0, #0x17]
    // 0x6dc15c: StoreField: r0->field_1b = r1
    //     0x6dc15c: stur            w1, [x0, #0x1b]
    // 0x6dc160: r16 = "\' in topics"
    //     0x6dc160: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a50] "\' in topics"
    //     0x6dc164: ldr             x16, [x16, #0xa50]
    // 0x6dc168: StoreField: r0->field_1f = r16
    //     0x6dc168: stur            w16, [x0, #0x1f]
    // 0x6dc16c: str             x0, [SP]
    // 0x6dc170: r0 = _interpolate()
    //     0x6dc170: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dc174: b               #0x6dc17c
    // 0x6dc178: r0 = Null
    //     0x6dc178: mov             x0, NULL
    // 0x6dc17c: mov             x1, x0
    // 0x6dc180: ldur            x0, [fp, #-0xf8]
    // 0x6dc184: mov             x4, x1
    // 0x6dc188: b               #0x6dc194
    // 0x6dc18c: ldur            x0, [fp, #-0xf8]
    // 0x6dc190: r4 = Null
    //     0x6dc190: mov             x4, NULL
    // 0x6dc194: stur            x4, [fp, #-0xf8]
    // 0x6dc198: stur            x0, [fp, #-0x100]
    // 0x6dc19c: cmp             w0, NULL
    // 0x6dc1a0: b.ne            #0x6dc1f8
    // 0x6dc1a4: cmp             w4, NULL
    // 0x6dc1a8: b.ne            #0x6dc1ec
    // 0x6dc1ac: ldur            x0, [fp, #-0xc8]
    // 0x6dc1b0: r1 = "Lütfen geçerli bir hedef seçiniz."
    //     0x6dc1b0: add             x1, PP, #0x18, lsl #12  ; [pp+0x18a78] "Lütfen geçerli bir hedef seçiniz."
    //     0x6dc1b4: ldr             x1, [x1, #0xa78]
    // 0x6dc1b8: r0 = showError()
    //     0x6dc1b8: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6dc1bc: ldur            x0, [fp, #-0xc8]
    // 0x6dc1c0: r2 = false
    //     0x6dc1c0: add             x2, NULL, #0x30  ; false
    // 0x6dc1c4: StoreField: r0->field_27 = r2
    //     0x6dc1c4: stur            w2, [x0, #0x27]
    // 0x6dc1c8: mov             x1, x0
    // 0x6dc1cc: r0 = notifyListeners()
    //     0x6dc1cc: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6dc1d0: ldur            x6, [fp, #-0xc8]
    // 0x6dc1d4: r7 = false
    //     0x6dc1d4: add             x7, NULL, #0x30  ; false
    // 0x6dc1d8: StoreField: r6->field_27 = r7
    //     0x6dc1d8: stur            w7, [x6, #0x27]
    // 0x6dc1dc: mov             x1, x6
    // 0x6dc1e0: r0 = notifyListeners()
    //     0x6dc1e0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6dc1e4: r0 = Null
    //     0x6dc1e4: mov             x0, NULL
    // 0x6dc1e8: r0 = ReturnAsyncNotFuture()
    //     0x6dc1e8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dc1ec: ldur            x6, [fp, #-0xc8]
    // 0x6dc1f0: r7 = false
    //     0x6dc1f0: add             x7, NULL, #0x30  ; false
    // 0x6dc1f4: b               #0x6dc200
    // 0x6dc1f8: ldur            x6, [fp, #-0xc8]
    // 0x6dc1fc: r7 = false
    //     0x6dc1fc: add             x7, NULL, #0x30  ; false
    // 0x6dc200: cmp             w4, NULL
    // 0x6dc204: b.eq            #0x6dc234
    // 0x6dc208: LoadField: r1 = r6->field_23
    //     0x6dc208: ldur            w1, [x6, #0x23]
    // 0x6dc20c: DecompressPointer r1
    //     0x6dc20c: add             x1, x1, HEAP, lsl #32
    // 0x6dc210: mov             x2, x4
    // 0x6dc214: ldur            x3, [fp, #-0xe8]
    // 0x6dc218: ldur            x5, [fp, #-0xf0]
    // 0x6dc21c: r0 = sendPushToCondition()
    //     0x6dc21c: bl              #0x6de2b0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::sendPushToCondition
    // 0x6dc220: mov             x1, x0
    // 0x6dc224: r17 = -264
    //     0x6dc224: mov             x17, #-0x108
    // 0x6dc228: str             x1, [fp, x17]
    // 0x6dc22c: r0 = Await()
    //     0x6dc22c: bl              #0x3dd188  ; AwaitStub
    // 0x6dc230: b               #0x6dc268
    // 0x6dc234: cmp             w0, NULL
    // 0x6dc238: b.eq            #0x6dc268
    // 0x6dc23c: ldur            x4, [fp, #-0xc8]
    // 0x6dc240: LoadField: r1 = r4->field_23
    //     0x6dc240: ldur            w1, [x4, #0x23]
    // 0x6dc244: DecompressPointer r1
    //     0x6dc244: add             x1, x1, HEAP, lsl #32
    // 0x6dc248: mov             x2, x0
    // 0x6dc24c: ldur            x3, [fp, #-0xe8]
    // 0x6dc250: ldur            x5, [fp, #-0xf0]
    // 0x6dc254: r0 = sendPushToTopic()
    //     0x6dc254: bl              #0x6dcf88  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::sendPushToTopic
    // 0x6dc258: mov             x1, x0
    // 0x6dc25c: r17 = -264
    //     0x6dc25c: mov             x17, #-0x108
    // 0x6dc260: str             x1, [fp, x17]
    // 0x6dc264: r0 = Await()
    //     0x6dc264: bl              #0x3dd188  ; AwaitStub
    // 0x6dc268: ldur            x0, [fp, #-0xf8]
    // 0x6dc26c: r0 = DateTime()
    //     0x6dc26c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6dc270: mov             x1, x0
    // 0x6dc274: r0 = false
    //     0x6dc274: add             x0, NULL, #0x30  ; false
    // 0x6dc278: r17 = -264
    //     0x6dc278: mov             x17, #-0x108
    // 0x6dc27c: str             x1, [fp, x17]
    // 0x6dc280: StoreField: r1->field_7 = r0
    //     0x6dc280: stur            w0, [x1, #7]
    // 0x6dc284: r0 = _getCurrentMicros()
    //     0x6dc284: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6dc288: r1 = LoadInt32Instr(r0)
    //     0x6dc288: sbfx            x1, x0, #1, #0x1f
    //     0x6dc28c: tbz             w0, #0, #0x6dc294
    //     0x6dc290: ldur            x1, [x0, #7]
    // 0x6dc294: r17 = -264
    //     0x6dc294: mov             x17, #-0x108
    // 0x6dc298: ldr             x0, [fp, x17]
    // 0x6dc29c: StoreField: r0->field_b = r1
    //     0x6dc29c: stur            x1, [x0, #0xb]
    // 0x6dc2a0: ldur            x3, [fp, #-0xf8]
    // 0x6dc2a4: cmp             w3, NULL
    // 0x6dc2a8: b.eq            #0x6dc2d8
    // 0x6dc2ac: r1 = Null
    //     0x6dc2ac: mov             x1, NULL
    // 0x6dc2b0: r2 = 4
    //     0x6dc2b0: mov             x2, #4
    // 0x6dc2b4: r0 = AllocateArray()
    //     0x6dc2b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc2b8: r16 = "CONDITION: "
    //     0x6dc2b8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a80] "CONDITION: "
    //     0x6dc2bc: ldr             x16, [x16, #0xa80]
    // 0x6dc2c0: StoreField: r0->field_f = r16
    //     0x6dc2c0: stur            w16, [x0, #0xf]
    // 0x6dc2c4: ldur            x1, [fp, #-0xf8]
    // 0x6dc2c8: StoreField: r0->field_13 = r1
    //     0x6dc2c8: stur            w1, [x0, #0x13]
    // 0x6dc2cc: str             x0, [SP]
    // 0x6dc2d0: r0 = _interpolate()
    //     0x6dc2d0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dc2d4: b               #0x6dc304
    // 0x6dc2d8: ldur            x0, [fp, #-0x100]
    // 0x6dc2dc: r1 = Null
    //     0x6dc2dc: mov             x1, NULL
    // 0x6dc2e0: r2 = 4
    //     0x6dc2e0: mov             x2, #4
    // 0x6dc2e4: r0 = AllocateArray()
    //     0x6dc2e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc2e8: r16 = "TOPIC: "
    //     0x6dc2e8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a88] "TOPIC: "
    //     0x6dc2ec: ldr             x16, [x16, #0xa88]
    // 0x6dc2f0: StoreField: r0->field_f = r16
    //     0x6dc2f0: stur            w16, [x0, #0xf]
    // 0x6dc2f4: ldur            x1, [fp, #-0x100]
    // 0x6dc2f8: StoreField: r0->field_13 = r1
    //     0x6dc2f8: stur            w1, [x0, #0x13]
    // 0x6dc2fc: str             x0, [SP]
    // 0x6dc300: r0 = _interpolate()
    //     0x6dc300: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dc304: stur            x0, [fp, #-0x100]
    // 0x6dc308: r1 = LoadStaticField(0xfe4)
    //     0x6dc308: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6dc30c: ldr             x1, [x1, #0x1fc8]
    // 0x6dc310: cmp             w1, NULL
    // 0x6dc314: b.ne            #0x6dc320
    // 0x6dc318: r5 = Null
    //     0x6dc318: mov             x5, NULL
    // 0x6dc31c: b               #0x6dc32c
    // 0x6dc320: LoadField: r2 = r1->field_4b
    //     0x6dc320: ldur            w2, [x1, #0x4b]
    // 0x6dc324: DecompressPointer r2
    //     0x6dc324: add             x2, x2, HEAP, lsl #32
    // 0x6dc328: mov             x5, x2
    // 0x6dc32c: ldur            x2, [fp, #-0xc8]
    // 0x6dc330: ldur            x3, [fp, #-0xe8]
    // 0x6dc334: ldur            x4, [fp, #-0xf0]
    // 0x6dc338: r17 = -264
    //     0x6dc338: mov             x17, #-0x108
    // 0x6dc33c: ldr             x1, [fp, x17]
    // 0x6dc340: stur            x5, [fp, #-0xf8]
    // 0x6dc344: r0 = NotificationModel()
    //     0x6dc344: bl              #0x5ef33c  ; AllocateNotificationModelStub -> NotificationModel (size=0x20)
    // 0x6dc348: mov             x3, x0
    // 0x6dc34c: r0 = ""
    //     0x6dc34c: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6dc350: r17 = -280
    //     0x6dc350: mov             x17, #-0x118
    // 0x6dc354: str             x3, [fp, x17]
    // 0x6dc358: StoreField: r3->field_7 = r0
    //     0x6dc358: stur            w0, [x3, #7]
    // 0x6dc35c: ldur            x0, [fp, #-0xe8]
    // 0x6dc360: StoreField: r3->field_b = r0
    //     0x6dc360: stur            w0, [x3, #0xb]
    // 0x6dc364: ldur            x4, [fp, #-0xf0]
    // 0x6dc368: StoreField: r3->field_f = r4
    //     0x6dc368: stur            w4, [x3, #0xf]
    // 0x6dc36c: ldur            x5, [fp, #-0x100]
    // 0x6dc370: StoreField: r3->field_13 = r5
    //     0x6dc370: stur            w5, [x3, #0x13]
    // 0x6dc374: ldur            x6, [fp, #-0xf8]
    // 0x6dc378: ArrayStore: r3[0] = r6  ; List_4
    //     0x6dc378: stur            w6, [x3, #0x17]
    // 0x6dc37c: r17 = -264
    //     0x6dc37c: mov             x17, #-0x108
    // 0x6dc380: ldr             x7, [fp, x17]
    // 0x6dc384: StoreField: r3->field_1b = r7
    //     0x6dc384: stur            w7, [x3, #0x1b]
    // 0x6dc388: ldur            x8, [fp, #-0xc8]
    // 0x6dc38c: LoadField: r9 = r8->field_23
    //     0x6dc38c: ldur            w9, [x8, #0x23]
    // 0x6dc390: DecompressPointer r9
    //     0x6dc390: add             x9, x9, HEAP, lsl #32
    // 0x6dc394: r17 = -272
    //     0x6dc394: mov             x17, #-0x110
    // 0x6dc398: str             x9, [fp, x17]
    // 0x6dc39c: r1 = Null
    //     0x6dc39c: mov             x1, NULL
    // 0x6dc3a0: r2 = 2
    //     0x6dc3a0: mov             x2, #2
    // 0x6dc3a4: r0 = AllocateArray()
    //     0x6dc3a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc3a8: mov             x2, x0
    // 0x6dc3ac: r17 = -280
    //     0x6dc3ac: mov             x17, #-0x118
    // 0x6dc3b0: ldr             x0, [fp, x17]
    // 0x6dc3b4: r17 = -288
    //     0x6dc3b4: mov             x17, #-0x120
    // 0x6dc3b8: str             x2, [fp, x17]
    // 0x6dc3bc: StoreField: r2->field_f = r0
    //     0x6dc3bc: stur            w0, [x2, #0xf]
    // 0x6dc3c0: r1 = <NotificationModel>
    //     0x6dc3c0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x6dc3c4: ldr             x1, [x1, #0xdb8]
    // 0x6dc3c8: r0 = AllocateGrowableArray()
    //     0x6dc3c8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6dc3cc: mov             x1, x0
    // 0x6dc3d0: r17 = -288
    //     0x6dc3d0: mov             x17, #-0x120
    // 0x6dc3d4: ldr             x0, [fp, x17]
    // 0x6dc3d8: StoreField: r1->field_f = r0
    //     0x6dc3d8: stur            w0, [x1, #0xf]
    // 0x6dc3dc: r0 = 2
    //     0x6dc3dc: mov             x0, #2
    // 0x6dc3e0: StoreField: r1->field_b = r0
    //     0x6dc3e0: stur            w0, [x1, #0xb]
    // 0x6dc3e4: mov             x2, x1
    // 0x6dc3e8: r17 = -272
    //     0x6dc3e8: mov             x17, #-0x110
    // 0x6dc3ec: ldr             x1, [fp, x17]
    // 0x6dc3f0: r0 = createNotifications()
    //     0x6dc3f0: bl              #0x6dc4f8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createNotifications
    // 0x6dc3f4: mov             x1, x0
    // 0x6dc3f8: r17 = -272
    //     0x6dc3f8: mov             x17, #-0x110
    // 0x6dc3fc: str             x1, [fp, x17]
    // 0x6dc400: r0 = Await()
    //     0x6dc400: bl              #0x3dd188  ; AwaitStub
    // 0x6dc404: ldur            x1, [fp, #-0xd8]
    // 0x6dc408: r0 = clear()
    //     0x6dc408: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x6dc40c: ldur            x1, [fp, #-0xe0]
    // 0x6dc410: r0 = clear()
    //     0x6dc410: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x6dc414: r1 = "Bildirim gönderildi."
    //     0x6dc414: add             x1, PP, #0x18, lsl #12  ; [pp+0x18a90] "Bildirim gönderildi."
    //     0x6dc418: ldr             x1, [x1, #0xa90]
    // 0x6dc41c: r0 = showSuccess()
    //     0x6dc41c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6dc420: b               #0x6dc444
    // 0x6dc424: sub             SP, fp, #0x128
    // 0x6dc428: mov             x2, x0
    // 0x6dc42c: stur            x0, [fp, #-0xd0]
    // 0x6dc430: mov             x0, x1
    // 0x6dc434: stur            x1, [fp, #-0xd8]
    // 0x6dc438: r1 = "Bildirim gönderilirken hata oluştu."
    //     0x6dc438: add             x1, PP, #0x18, lsl #12  ; [pp+0x18a98] "Bildirim gönderilirken hata oluştu."
    //     0x6dc43c: ldr             x1, [x1, #0xa98]
    // 0x6dc440: r0 = showError()
    //     0x6dc440: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6dc444: ldur            x2, [fp, #-0xc8]
    // 0x6dc448: r3 = false
    //     0x6dc448: add             x3, NULL, #0x30  ; false
    // 0x6dc44c: StoreField: r2->field_27 = r3
    //     0x6dc44c: stur            w3, [x2, #0x27]
    // 0x6dc450: mov             x1, x2
    // 0x6dc454: r0 = notifyListeners()
    //     0x6dc454: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6dc458: r0 = Null
    //     0x6dc458: mov             x0, NULL
    // 0x6dc45c: r0 = ReturnAsyncNotFuture()
    //     0x6dc45c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dc460: sub             SP, fp, #0x128
    // 0x6dc464: ldur            x2, [fp, #-0xc8]
    // 0x6dc468: r3 = false
    //     0x6dc468: add             x3, NULL, #0x30  ; false
    // 0x6dc46c: mov             x4, x0
    // 0x6dc470: stur            x0, [fp, #-0xd0]
    // 0x6dc474: mov             x0, x1
    // 0x6dc478: stur            x1, [fp, #-0xd8]
    // 0x6dc47c: StoreField: r2->field_27 = r3
    //     0x6dc47c: stur            w3, [x2, #0x27]
    // 0x6dc480: mov             x1, x2
    // 0x6dc484: r0 = notifyListeners()
    //     0x6dc484: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6dc488: ldur            x0, [fp, #-0xd0]
    // 0x6dc48c: ldur            x1, [fp, #-0xd8]
    // 0x6dc490: r0 = ReThrow()
    //     0x6dc490: bl              #0x9262fc  ; ReThrowStub
    // 0x6dc494: brk             #0
    // 0x6dc498: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dc498: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dc49c: b               #0x6dbec0
  }
  _ setOda(/* No info */) {
    // ** addr: 0x6de3d0, size: 0x50
    // 0x6de3d0: EnterFrame
    //     0x6de3d0: stp             fp, lr, [SP, #-0x10]!
    //     0x6de3d4: mov             fp, SP
    // 0x6de3d8: mov             x0, x2
    // 0x6de3dc: CheckStackOverflow
    //     0x6de3dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de3e0: cmp             SP, x16
    //     0x6de3e4: b.ls            #0x6de418
    // 0x6de3e8: StoreField: r1->field_37 = r0
    //     0x6de3e8: stur            w0, [x1, #0x37]
    //     0x6de3ec: ldurb           w16, [x1, #-1]
    //     0x6de3f0: ldurb           w17, [x0, #-1]
    //     0x6de3f4: and             x16, x17, x16, lsr #2
    //     0x6de3f8: tst             x16, HEAP, lsr #32
    //     0x6de3fc: b.eq            #0x6de404
    //     0x6de400: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6de404: r0 = notifyListeners()
    //     0x6de404: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6de408: r0 = Null
    //     0x6de408: mov             x0, NULL
    // 0x6de40c: LeaveFrame
    //     0x6de40c: mov             SP, fp
    //     0x6de410: ldp             fp, lr, [SP], #0x10
    // 0x6de414: ret
    //     0x6de414: ret             
    // 0x6de418: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de418: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de41c: b               #0x6de3e8
  }
  _ setOtel(/* No info */) {
    // ** addr: 0x6de644, size: 0x50
    // 0x6de644: EnterFrame
    //     0x6de644: stp             fp, lr, [SP, #-0x10]!
    //     0x6de648: mov             fp, SP
    // 0x6de64c: mov             x0, x2
    // 0x6de650: CheckStackOverflow
    //     0x6de650: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de654: cmp             SP, x16
    //     0x6de658: b.ls            #0x6de68c
    // 0x6de65c: StoreField: r1->field_33 = r0
    //     0x6de65c: stur            w0, [x1, #0x33]
    //     0x6de660: ldurb           w16, [x1, #-1]
    //     0x6de664: ldurb           w17, [x0, #-1]
    //     0x6de668: and             x16, x17, x16, lsr #2
    //     0x6de66c: tst             x16, HEAP, lsr #32
    //     0x6de670: b.eq            #0x6de678
    //     0x6de674: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6de678: r0 = notifyListeners()
    //     0x6de678: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6de67c: r0 = Null
    //     0x6de67c: mov             x0, NULL
    // 0x6de680: LeaveFrame
    //     0x6de680: mov             SP, fp
    //     0x6de684: ldp             fp, lr, [SP], #0x10
    // 0x6de688: ret
    //     0x6de688: ret             
    // 0x6de68c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de68c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de690: b               #0x6de65c
  }
  _ setSefer(/* No info */) {
    // ** addr: 0x6de7e4, size: 0x70
    // 0x6de7e4: EnterFrame
    //     0x6de7e4: stp             fp, lr, [SP, #-0x10]!
    //     0x6de7e8: mov             fp, SP
    // 0x6de7ec: mov             x0, x2
    // 0x6de7f0: CheckStackOverflow
    //     0x6de7f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de7f4: cmp             SP, x16
    //     0x6de7f8: b.ls            #0x6de84c
    // 0x6de7fc: StoreField: r1->field_2f = r0
    //     0x6de7fc: stur            w0, [x1, #0x2f]
    //     0x6de800: ldurb           w16, [x1, #-1]
    //     0x6de804: ldurb           w17, [x0, #-1]
    //     0x6de808: and             x16, x17, x16, lsr #2
    //     0x6de80c: tst             x16, HEAP, lsr #32
    //     0x6de810: b.eq            #0x6de818
    //     0x6de814: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6de818: LoadField: r0 = r1->field_2b
    //     0x6de818: ldur            w0, [x1, #0x2b]
    // 0x6de81c: DecompressPointer r0
    //     0x6de81c: add             x0, x0, HEAP, lsl #32
    // 0x6de820: r16 = Instance_NotificationTargetType
    //     0x6de820: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cc8] Obj!NotificationTargetType@a273e1
    //     0x6de824: ldr             x16, [x16, #0xcc8]
    // 0x6de828: cmp             w0, w16
    // 0x6de82c: b.eq            #0x6de838
    // 0x6de830: StoreField: r1->field_33 = rNULL
    //     0x6de830: stur            NULL, [x1, #0x33]
    // 0x6de834: StoreField: r1->field_37 = rNULL
    //     0x6de834: stur            NULL, [x1, #0x37]
    // 0x6de838: r0 = notifyListeners()
    //     0x6de838: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6de83c: r0 = Null
    //     0x6de83c: mov             x0, NULL
    // 0x6de840: LeaveFrame
    //     0x6de840: mov             SP, fp
    //     0x6de844: ldp             fp, lr, [SP], #0x10
    // 0x6de848: ret
    //     0x6de848: ret             
    // 0x6de84c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de84c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de850: b               #0x6de7fc
  }
  _ setTargetType(/* No info */) {
    // ** addr: 0x6de8a8, size: 0x5c
    // 0x6de8a8: EnterFrame
    //     0x6de8a8: stp             fp, lr, [SP, #-0x10]!
    //     0x6de8ac: mov             fp, SP
    // 0x6de8b0: mov             x0, x2
    // 0x6de8b4: CheckStackOverflow
    //     0x6de8b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de8b8: cmp             SP, x16
    //     0x6de8bc: b.ls            #0x6de8fc
    // 0x6de8c0: StoreField: r1->field_2b = r0
    //     0x6de8c0: stur            w0, [x1, #0x2b]
    //     0x6de8c4: ldurb           w16, [x1, #-1]
    //     0x6de8c8: ldurb           w17, [x0, #-1]
    //     0x6de8cc: and             x16, x17, x16, lsr #2
    //     0x6de8d0: tst             x16, HEAP, lsr #32
    //     0x6de8d4: b.eq            #0x6de8dc
    //     0x6de8d8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6de8dc: StoreField: r1->field_2f = rNULL
    //     0x6de8dc: stur            NULL, [x1, #0x2f]
    // 0x6de8e0: StoreField: r1->field_33 = rNULL
    //     0x6de8e0: stur            NULL, [x1, #0x33]
    // 0x6de8e4: StoreField: r1->field_37 = rNULL
    //     0x6de8e4: stur            NULL, [x1, #0x37]
    // 0x6de8e8: r0 = notifyListeners()
    //     0x6de8e8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6de8ec: r0 = Null
    //     0x6de8ec: mov             x0, NULL
    // 0x6de8f0: LeaveFrame
    //     0x6de8f0: mov             SP, fp
    //     0x6de8f4: ldp             fp, lr, [SP], #0x10
    // 0x6de8f8: ret
    //     0x6de8f8: ret             
    // 0x6de8fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de8fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de900: b               #0x6de8c0
  }
  _ NotificationProvider(/* No info */) {
    // ** addr: 0x7f07a0, size: 0xd8
    // 0x7f07a0: EnterFrame
    //     0x7f07a0: stp             fp, lr, [SP, #-0x10]!
    //     0x7f07a4: mov             fp, SP
    // 0x7f07a8: AllocStack(0x10)
    //     0x7f07a8: sub             SP, SP, #0x10
    // 0x7f07ac: r2 = false
    //     0x7f07ac: add             x2, NULL, #0x30  ; false
    // 0x7f07b0: r0 = Instance_NotificationTargetType
    //     0x7f07b0: add             x0, PP, #0x10, lsl #12  ; [pp+0x10d58] Obj!NotificationTargetType@a27401
    //     0x7f07b4: ldr             x0, [x0, #0xd58]
    // 0x7f07b8: stur            x1, [fp, #-8]
    // 0x7f07bc: CheckStackOverflow
    //     0x7f07bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f07c0: cmp             SP, x16
    //     0x7f07c4: b.ls            #0x7f0870
    // 0x7f07c8: StoreField: r1->field_27 = r2
    //     0x7f07c8: stur            w2, [x1, #0x27]
    // 0x7f07cc: StoreField: r1->field_2b = r0
    //     0x7f07cc: stur            w0, [x1, #0x2b]
    // 0x7f07d0: r4 = const [0, 0, 0, 0, null]
    //     0x7f07d0: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7f07d4: r0 = app()
    //     0x7f07d4: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7f07d8: mov             x1, x0
    // 0x7f07dc: r0 = instanceFor()
    //     0x7f07dc: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7f07e0: stur            x0, [fp, #-0x10]
    // 0x7f07e4: r0 = FirestoreService()
    //     0x7f07e4: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7f07e8: mov             x1, x0
    // 0x7f07ec: ldur            x0, [fp, #-0x10]
    // 0x7f07f0: StoreField: r1->field_7 = r0
    //     0x7f07f0: stur            w0, [x1, #7]
    // 0x7f07f4: mov             x0, x1
    // 0x7f07f8: ldur            x1, [fp, #-8]
    // 0x7f07fc: StoreField: r1->field_23 = r0
    //     0x7f07fc: stur            w0, [x1, #0x23]
    //     0x7f0800: ldurb           w16, [x1, #-1]
    //     0x7f0804: ldurb           w17, [x0, #-1]
    //     0x7f0808: and             x16, x17, x16, lsr #2
    //     0x7f080c: tst             x16, HEAP, lsr #32
    //     0x7f0810: b.eq            #0x7f0818
    //     0x7f0814: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0818: StoreField: r1->field_7 = rZR
    //     0x7f0818: stur            xzr, [x1, #7]
    // 0x7f081c: StoreField: r1->field_13 = rZR
    //     0x7f081c: stur            xzr, [x1, #0x13]
    // 0x7f0820: StoreField: r1->field_1b = rZR
    //     0x7f0820: stur            xzr, [x1, #0x1b]
    // 0x7f0824: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f0824: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0828: ldr             x0, [x0, #0xbc0]
    //     0x7f082c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f0830: cmp             w0, w16
    //     0x7f0834: b.ne            #0x7f0840
    //     0x7f0838: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f083c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f0840: ldur            x1, [fp, #-8]
    // 0x7f0844: StoreField: r1->field_f = r0
    //     0x7f0844: stur            w0, [x1, #0xf]
    //     0x7f0848: ldurb           w16, [x1, #-1]
    //     0x7f084c: ldurb           w17, [x0, #-1]
    //     0x7f0850: and             x16, x17, x16, lsr #2
    //     0x7f0854: tst             x16, HEAP, lsr #32
    //     0x7f0858: b.eq            #0x7f0860
    //     0x7f085c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0860: r0 = Null
    //     0x7f0860: mov             x0, NULL
    // 0x7f0864: LeaveFrame
    //     0x7f0864: mov             SP, fp
    //     0x7f0868: ldp             fp, lr, [SP], #0x10
    // 0x7f086c: ret
    //     0x7f086c: ret             
    // 0x7f0870: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0870: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0874: b               #0x7f07c8
  }
}

// class id: 4725, size: 0x14, field offset: 0x14
enum NotificationTargetType extends _Enum {

  _Mint field_8;
  _OneByteString field_10;

  _ _enumToString(/* No info */) {
    // ** addr: 0x7c5200, size: 0x64
    // 0x7c5200: EnterFrame
    //     0x7c5200: stp             fp, lr, [SP, #-0x10]!
    //     0x7c5204: mov             fp, SP
    // 0x7c5208: AllocStack(0x10)
    //     0x7c5208: sub             SP, SP, #0x10
    // 0x7c520c: SetupParameters(NotificationTargetType this /* r1 => r0, fp-0x8 */)
    //     0x7c520c: mov             x0, x1
    //     0x7c5210: stur            x1, [fp, #-8]
    // 0x7c5214: CheckStackOverflow
    //     0x7c5214: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7c5218: cmp             SP, x16
    //     0x7c521c: b.ls            #0x7c525c
    // 0x7c5220: r1 = Null
    //     0x7c5220: mov             x1, NULL
    // 0x7c5224: r2 = 4
    //     0x7c5224: mov             x2, #4
    // 0x7c5228: r0 = AllocateArray()
    //     0x7c5228: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7c522c: r16 = "NotificationTargetType."
    //     0x7c522c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11298] "NotificationTargetType."
    //     0x7c5230: ldr             x16, [x16, #0x298]
    // 0x7c5234: StoreField: r0->field_f = r16
    //     0x7c5234: stur            w16, [x0, #0xf]
    // 0x7c5238: ldur            x1, [fp, #-8]
    // 0x7c523c: LoadField: r2 = r1->field_f
    //     0x7c523c: ldur            w2, [x1, #0xf]
    // 0x7c5240: DecompressPointer r2
    //     0x7c5240: add             x2, x2, HEAP, lsl #32
    // 0x7c5244: StoreField: r0->field_13 = r2
    //     0x7c5244: stur            w2, [x0, #0x13]
    // 0x7c5248: str             x0, [SP]
    // 0x7c524c: r0 = _interpolate()
    //     0x7c524c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7c5250: LeaveFrame
    //     0x7c5250: mov             SP, fp
    //     0x7c5254: ldp             fp, lr, [SP], #0x10
    // 0x7c5258: ret
    //     0x7c5258: ret             
    // 0x7c525c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7c525c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7c5260: b               #0x7c5220
  }
}
