// lib: , url: package:umrem_demo/features/admin/providers/currency_provider.dart

// class id: 1049520, size: 0x8
class :: {
}

// class id: 3870, size: 0x30, field offset: 0x24
class CurrencyProvider extends ChangeNotifier {

  _ loadCurrencies(/* No info */) async {
    // ** addr: 0x5e02cc, size: 0x1b0
    // 0x5e02cc: EnterFrame
    //     0x5e02cc: stp             fp, lr, [SP, #-0x10]!
    //     0x5e02d0: mov             fp, SP
    // 0x5e02d4: AllocStack(0x98)
    //     0x5e02d4: sub             SP, SP, #0x98
    // 0x5e02d8: SetupParameters(CurrencyProvider this /* r1 => r1, fp-0x90 */, {dynamic agencyId = Null /* r2, fp-0x88 */})
    //     0x5e02d8: stur            NULL, [fp, #-8]
    //     0x5e02dc: stur            x1, [fp, #-0x90]
    //     0x5e02e0: ldur            w0, [x4, #0x13]
    //     0x5e02e4: ldur            w2, [x4, #0x1f]
    //     0x5e02e8: add             x2, x2, HEAP, lsl #32
    //     0x5e02ec: add             x16, PP, #0x14, lsl #12  ; [pp+0x14fe8] "agencyId"
    //     0x5e02f0: ldr             x16, [x16, #0xfe8]
    //     0x5e02f4: cmp             w2, w16
    //     0x5e02f8: b.ne            #0x5e0318
    //     0x5e02fc: ldur            w2, [x4, #0x23]
    //     0x5e0300: add             x2, x2, HEAP, lsl #32
    //     0x5e0304: sub             w3, w0, w2
    //     0x5e0308: add             x0, fp, w3, sxtw #2
    //     0x5e030c: ldr             x0, [x0, #8]
    //     0x5e0310: mov             x2, x0
    //     0x5e0314: b               #0x5e031c
    //     0x5e0318: mov             x2, NULL
    //     0x5e031c: stur            x2, [fp, #-0x88]
    // 0x5e0320: CheckStackOverflow
    //     0x5e0320: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0324: cmp             SP, x16
    //     0x5e0328: b.ls            #0x5e0474
    // 0x5e032c: InitAsync() -> Future<void?>
    //     0x5e032c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e0330: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e0334: ldur            x0, [fp, #-0x90]
    // 0x5e0338: ldur            x2, [fp, #-0x88]
    // 0x5e033c: r1 = true
    //     0x5e033c: add             x1, NULL, #0x20  ; true
    // 0x5e0340: StoreField: r0->field_27 = r1
    //     0x5e0340: stur            w1, [x0, #0x27]
    // 0x5e0344: mov             x1, x0
    // 0x5e0348: r0 = notifyListeners()
    //     0x5e0348: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e034c: ldur            x0, [fp, #-0x88]
    // 0x5e0350: cmp             w0, NULL
    // 0x5e0354: b.ne            #0x5e037c
    // 0x5e0358: r0 = LoadStaticField(0xfe4)
    //     0x5e0358: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e035c: ldr             x0, [x0, #0x1fc8]
    // 0x5e0360: cmp             w0, NULL
    // 0x5e0364: b.ne            #0x5e0370
    // 0x5e0368: r0 = Null
    //     0x5e0368: mov             x0, NULL
    // 0x5e036c: b               #0x5e037c
    // 0x5e0370: LoadField: r1 = r0->field_4b
    //     0x5e0370: ldur            w1, [x0, #0x4b]
    // 0x5e0374: DecompressPointer r1
    //     0x5e0374: add             x1, x1, HEAP, lsl #32
    // 0x5e0378: mov             x0, x1
    // 0x5e037c: stur            x0, [fp, #-0x88]
    // 0x5e0380: cmp             w0, NULL
    // 0x5e0384: b.eq            #0x5e03dc
    // 0x5e0388: LoadField: r1 = r0->field_7
    //     0x5e0388: ldur            w1, [x0, #7]
    // 0x5e038c: cbz             w1, #0x5e03d4
    // 0x5e0390: ldur            x3, [fp, #-0x90]
    // 0x5e0394: LoadField: r1 = r3->field_23
    //     0x5e0394: ldur            w1, [x3, #0x23]
    // 0x5e0398: DecompressPointer r1
    //     0x5e0398: add             x1, x1, HEAP, lsl #32
    // 0x5e039c: mov             x2, x0
    // 0x5e03a0: r0 = getCurrenciesByAgency()
    //     0x5e03a0: bl              #0x5e0ff8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrenciesByAgency
    // 0x5e03a4: mov             x1, x0
    // 0x5e03a8: stur            x1, [fp, #-0x98]
    // 0x5e03ac: r0 = Await()
    //     0x5e03ac: bl              #0x3dd188  ; AwaitStub
    // 0x5e03b0: ldur            x2, [fp, #-0x90]
    // 0x5e03b4: StoreField: r2->field_2b = r0
    //     0x5e03b4: stur            w0, [x2, #0x2b]
    //     0x5e03b8: ldurb           w16, [x2, #-1]
    //     0x5e03bc: ldurb           w17, [x0, #-1]
    //     0x5e03c0: and             x16, x17, x16, lsr #2
    //     0x5e03c4: tst             x16, HEAP, lsr #32
    //     0x5e03c8: b.eq            #0x5e03d0
    //     0x5e03cc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e03d0: b               #0x5e0424
    // 0x5e03d4: ldur            x2, [fp, #-0x90]
    // 0x5e03d8: b               #0x5e03e0
    // 0x5e03dc: ldur            x2, [fp, #-0x90]
    // 0x5e03e0: LoadField: r1 = r2->field_23
    //     0x5e03e0: ldur            w1, [x2, #0x23]
    // 0x5e03e4: DecompressPointer r1
    //     0x5e03e4: add             x1, x1, HEAP, lsl #32
    // 0x5e03e8: r0 = getCurrencies()
    //     0x5e03e8: bl              #0x5e049c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrencies
    // 0x5e03ec: mov             x1, x0
    // 0x5e03f0: stur            x1, [fp, #-0x88]
    // 0x5e03f4: r0 = Await()
    //     0x5e03f4: bl              #0x3dd188  ; AwaitStub
    // 0x5e03f8: ldur            x2, [fp, #-0x90]
    // 0x5e03fc: StoreField: r2->field_2b = r0
    //     0x5e03fc: stur            w0, [x2, #0x2b]
    //     0x5e0400: ldurb           w16, [x2, #-1]
    //     0x5e0404: ldurb           w17, [x0, #-1]
    //     0x5e0408: and             x16, x17, x16, lsr #2
    //     0x5e040c: tst             x16, HEAP, lsr #32
    //     0x5e0410: b.eq            #0x5e0418
    //     0x5e0414: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e0418: b               #0x5e0424
    // 0x5e041c: sub             SP, fp, #0x98
    // 0x5e0420: ldur            x2, [fp, #-0x90]
    // 0x5e0424: r3 = false
    //     0x5e0424: add             x3, NULL, #0x30  ; false
    // 0x5e0428: StoreField: r2->field_27 = r3
    //     0x5e0428: stur            w3, [x2, #0x27]
    // 0x5e042c: mov             x1, x2
    // 0x5e0430: r0 = notifyListeners()
    //     0x5e0430: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e0434: r0 = Null
    //     0x5e0434: mov             x0, NULL
    // 0x5e0438: r0 = ReturnAsyncNotFuture()
    //     0x5e0438: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e043c: sub             SP, fp, #0x98
    // 0x5e0440: ldur            x2, [fp, #-0x90]
    // 0x5e0444: r3 = false
    //     0x5e0444: add             x3, NULL, #0x30  ; false
    // 0x5e0448: mov             x4, x0
    // 0x5e044c: stur            x0, [fp, #-0x88]
    // 0x5e0450: mov             x0, x1
    // 0x5e0454: stur            x1, [fp, #-0x98]
    // 0x5e0458: StoreField: r2->field_27 = r3
    //     0x5e0458: stur            w3, [x2, #0x27]
    // 0x5e045c: mov             x1, x2
    // 0x5e0460: r0 = notifyListeners()
    //     0x5e0460: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e0464: ldur            x0, [fp, #-0x88]
    // 0x5e0468: ldur            x1, [fp, #-0x98]
    // 0x5e046c: r0 = ReThrow()
    //     0x5e046c: bl              #0x9262fc  ; ReThrowStub
    // 0x5e0470: brk             #0
    // 0x5e0474: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0474: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0478: b               #0x5e032c
  }
  _ initializeDefaultCurrencies(/* No info */) async {
    // ** addr: 0x5e116c, size: 0xe4
    // 0x5e116c: EnterFrame
    //     0x5e116c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e1170: mov             fp, SP
    // 0x5e1174: AllocStack(0x18)
    //     0x5e1174: sub             SP, SP, #0x18
    // 0x5e1178: SetupParameters(CurrencyProvider this /* r1 => r1, fp-0x10 */)
    //     0x5e1178: stur            NULL, [fp, #-8]
    //     0x5e117c: stur            x1, [fp, #-0x10]
    // 0x5e1180: CheckStackOverflow
    //     0x5e1180: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1184: cmp             SP, x16
    //     0x5e1188: b.ls            #0x5e1248
    // 0x5e118c: InitAsync() -> Future<void?>
    //     0x5e118c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e1190: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e1194: ldur            x2, [fp, #-0x10]
    // 0x5e1198: LoadField: r1 = r2->field_2b
    //     0x5e1198: ldur            w1, [x2, #0x2b]
    // 0x5e119c: DecompressPointer r1
    //     0x5e119c: add             x1, x1, HEAP, lsl #32
    // 0x5e11a0: r0 = LoadClassIdInstr(r1)
    //     0x5e11a0: ldur            x0, [x1, #-1]
    //     0x5e11a4: ubfx            x0, x0, #0xc, #0x14
    // 0x5e11a8: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x5e11a8: mov             x17, #0xcda7
    //     0x5e11ac: add             lr, x0, x17
    //     0x5e11b0: ldr             lr, [x21, lr, lsl #3]
    //     0x5e11b4: blr             lr
    // 0x5e11b8: tbnz            w0, #4, #0x5e1240
    // 0x5e11bc: ldur            x1, [fp, #-0x10]
    // 0x5e11c0: r2 = "💵"
    //     0x5e11c0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18dc0] "💵"
    //     0x5e11c4: ldr             x2, [x2, #0xdc0]
    // 0x5e11c8: r3 = "USD"
    //     0x5e11c8: add             x3, PP, #0x18, lsl #12  ; [pp+0x18dc8] "USD"
    //     0x5e11cc: ldr             x3, [x3, #0xdc8]
    // 0x5e11d0: d0 = 34.500000
    //     0x5e11d0: add             x17, PP, #0x18, lsl #12  ; [pp+0x18dd0] IMM: double(34.5) from 0x4041400000000000
    //     0x5e11d4: ldr             d0, [x17, #0xdd0]
    // 0x5e11d8: r0 = createCurrency()
    //     0x5e11d8: bl              #0x5e1250  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::createCurrency
    // 0x5e11dc: mov             x1, x0
    // 0x5e11e0: stur            x1, [fp, #-0x18]
    // 0x5e11e4: r0 = Await()
    //     0x5e11e4: bl              #0x3dd188  ; AwaitStub
    // 0x5e11e8: ldur            x1, [fp, #-0x10]
    // 0x5e11ec: r2 = "💶"
    //     0x5e11ec: add             x2, PP, #0x18, lsl #12  ; [pp+0x18dd8] "💶"
    //     0x5e11f0: ldr             x2, [x2, #0xdd8]
    // 0x5e11f4: r3 = "EUR"
    //     0x5e11f4: add             x3, PP, #0x18, lsl #12  ; [pp+0x18de0] "EUR"
    //     0x5e11f8: ldr             x3, [x3, #0xde0]
    // 0x5e11fc: d0 = 37.850000
    //     0x5e11fc: add             x17, PP, #0x18, lsl #12  ; [pp+0x18de8] IMM: double(37.85) from 0x4042eccccccccccd
    //     0x5e1200: ldr             d0, [x17, #0xde8]
    // 0x5e1204: r0 = createCurrency()
    //     0x5e1204: bl              #0x5e1250  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::createCurrency
    // 0x5e1208: mov             x1, x0
    // 0x5e120c: stur            x1, [fp, #-0x18]
    // 0x5e1210: r0 = Await()
    //     0x5e1210: bl              #0x3dd188  ; AwaitStub
    // 0x5e1214: ldur            x1, [fp, #-0x10]
    // 0x5e1218: r2 = "🇸🇦"
    //     0x5e1218: add             x2, PP, #0x18, lsl #12  ; [pp+0x18df0] "🇸🇦"
    //     0x5e121c: ldr             x2, [x2, #0xdf0]
    // 0x5e1220: r3 = "SAR"
    //     0x5e1220: add             x3, PP, #0x18, lsl #12  ; [pp+0x18df8] "SAR"
    //     0x5e1224: ldr             x3, [x3, #0xdf8]
    // 0x5e1228: d0 = 9.200000
    //     0x5e1228: add             x17, PP, #0x18, lsl #12  ; [pp+0x18e00] IMM: double(9.2) from 0x4022666666666666
    //     0x5e122c: ldr             d0, [x17, #0xe00]
    // 0x5e1230: r0 = createCurrency()
    //     0x5e1230: bl              #0x5e1250  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::createCurrency
    // 0x5e1234: mov             x1, x0
    // 0x5e1238: stur            x1, [fp, #-0x10]
    // 0x5e123c: r0 = Await()
    //     0x5e123c: bl              #0x3dd188  ; AwaitStub
    // 0x5e1240: r0 = Null
    //     0x5e1240: mov             x0, NULL
    // 0x5e1244: r0 = ReturnAsyncNotFuture()
    //     0x5e1244: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e1248: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e1248: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e124c: b               #0x5e118c
  }
  _ createCurrency(/* No info */) async {
    // ** addr: 0x5e1250, size: 0x150
    // 0x5e1250: EnterFrame
    //     0x5e1250: stp             fp, lr, [SP, #-0x10]!
    //     0x5e1254: mov             fp, SP
    // 0x5e1258: AllocStack(0xe0)
    //     0x5e1258: sub             SP, SP, #0xe0
    // 0x5e125c: SetupParameters(CurrencyProvider this /* r1 => r1, fp-0xa8 */, dynamic _ /* r2 => r2, fp-0xb0 */, dynamic _ /* r3 => r3, fp-0xb8 */, dynamic _ /* d0 => d0, fp-0xd8 */)
    //     0x5e125c: stur            NULL, [fp, #-8]
    //     0x5e1260: stur            x1, [fp, #-0xa8]
    //     0x5e1264: stur            x2, [fp, #-0xb0]
    //     0x5e1268: stur            x3, [fp, #-0xb8]
    //     0x5e126c: stur            d0, [fp, #-0xd8]
    // 0x5e1270: CheckStackOverflow
    //     0x5e1270: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1274: cmp             SP, x16
    //     0x5e1278: b.ls            #0x5e1398
    // 0x5e127c: InitAsync() -> Future<String?>
    //     0x5e127c: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x5e1280: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e1284: ldur            x1, [fp, #-0xa8]
    // 0x5e1288: r0 = notifyListeners()
    //     0x5e1288: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e128c: r0 = LoadStaticField(0xfe4)
    //     0x5e128c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e1290: ldr             x0, [x0, #0x1fc8]
    // 0x5e1294: cmp             w0, NULL
    // 0x5e1298: b.ne            #0x5e12a4
    // 0x5e129c: r3 = Null
    //     0x5e129c: mov             x3, NULL
    // 0x5e12a0: b               #0x5e12b0
    // 0x5e12a4: LoadField: r1 = r0->field_4b
    //     0x5e12a4: ldur            w1, [x0, #0x4b]
    // 0x5e12a8: DecompressPointer r1
    //     0x5e12a8: add             x1, x1, HEAP, lsl #32
    // 0x5e12ac: mov             x3, x1
    // 0x5e12b0: ldur            x2, [fp, #-0xa8]
    // 0x5e12b4: ldur            x1, [fp, #-0xb0]
    // 0x5e12b8: ldur            x0, [fp, #-0xb8]
    // 0x5e12bc: ldur            d0, [fp, #-0xd8]
    // 0x5e12c0: stur            x3, [fp, #-0xc0]
    // 0x5e12c4: r0 = CurrencyModel()
    //     0x5e12c4: bl              #0x5e0fec  ; AllocateCurrencyModelStub -> CurrencyModel (size=0x28)
    // 0x5e12c8: mov             x3, x0
    // 0x5e12cc: r0 = ""
    //     0x5e12cc: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5e12d0: stur            x3, [fp, #-0xc8]
    // 0x5e12d4: StoreField: r3->field_7 = r0
    //     0x5e12d4: stur            w0, [x3, #7]
    // 0x5e12d8: ldur            x0, [fp, #-0xb0]
    // 0x5e12dc: StoreField: r3->field_b = r0
    //     0x5e12dc: stur            w0, [x3, #0xb]
    // 0x5e12e0: ldur            x4, [fp, #-0xb8]
    // 0x5e12e4: StoreField: r3->field_f = r4
    //     0x5e12e4: stur            w4, [x3, #0xf]
    // 0x5e12e8: ldur            d0, [fp, #-0xd8]
    // 0x5e12ec: StoreField: r3->field_13 = d0
    //     0x5e12ec: stur            d0, [x3, #0x13]
    // 0x5e12f0: ldur            x5, [fp, #-0xc0]
    // 0x5e12f4: StoreField: r3->field_1b = r5
    //     0x5e12f4: stur            w5, [x3, #0x1b]
    // 0x5e12f8: ldur            x6, [fp, #-0xa8]
    // 0x5e12fc: LoadField: r1 = r6->field_23
    //     0x5e12fc: ldur            w1, [x6, #0x23]
    // 0x5e1300: DecompressPointer r1
    //     0x5e1300: add             x1, x1, HEAP, lsl #32
    // 0x5e1304: mov             x2, x3
    // 0x5e1308: r0 = createCurrency()
    //     0x5e1308: bl              #0x5e13a0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createCurrency
    // 0x5e130c: mov             x1, x0
    // 0x5e1310: stur            x1, [fp, #-0xd0]
    // 0x5e1314: r0 = Await()
    //     0x5e1314: bl              #0x3dd188  ; AwaitStub
    // 0x5e1318: stur            x0, [fp, #-0xb0]
    // 0x5e131c: cmp             w0, NULL
    // 0x5e1320: b.eq            #0x5e1348
    // 0x5e1324: ldur            x16, [fp, #-0xc0]
    // 0x5e1328: str             x16, [SP]
    // 0x5e132c: ldur            x1, [fp, #-0xa8]
    // 0x5e1330: r4 = const [0, 0x2, 0x1, 0x1, agencyId, 0x1, null]
    //     0x5e1330: add             x4, PP, #0x18, lsl #12  ; [pp+0x18e08] List(7) [0, 0x2, 0x1, 0x1, "agencyId", 0x1, Null]
    //     0x5e1334: ldr             x4, [x4, #0xe08]
    // 0x5e1338: r0 = loadCurrencies()
    //     0x5e1338: bl              #0x5e02cc  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::loadCurrencies
    // 0x5e133c: mov             x1, x0
    // 0x5e1340: stur            x1, [fp, #-0xb8]
    // 0x5e1344: r0 = Await()
    //     0x5e1344: bl              #0x3dd188  ; AwaitStub
    // 0x5e1348: ldur            x1, [fp, #-0xa8]
    // 0x5e134c: r0 = notifyListeners()
    //     0x5e134c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e1350: ldur            x0, [fp, #-0xb0]
    // 0x5e1354: r0 = ReturnAsync()
    //     0x5e1354: b               #0x427094  ; ReturnAsyncStub
    // 0x5e1358: sub             SP, fp, #0xe0
    // 0x5e135c: ldur            x1, [fp, #-0xa8]
    // 0x5e1360: r0 = notifyListeners()
    //     0x5e1360: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e1364: r0 = Null
    //     0x5e1364: mov             x0, NULL
    // 0x5e1368: r0 = ReturnAsyncNotFuture()
    //     0x5e1368: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e136c: sub             SP, fp, #0xe0
    // 0x5e1370: mov             x2, x0
    // 0x5e1374: stur            x0, [fp, #-0xb0]
    // 0x5e1378: mov             x0, x1
    // 0x5e137c: stur            x1, [fp, #-0xb8]
    // 0x5e1380: ldur            x1, [fp, #-0xa8]
    // 0x5e1384: r0 = notifyListeners()
    //     0x5e1384: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e1388: ldur            x0, [fp, #-0xb0]
    // 0x5e138c: ldur            x1, [fp, #-0xb8]
    // 0x5e1390: r0 = ReThrow()
    //     0x5e1390: bl              #0x9262fc  ; ReThrowStub
    // 0x5e1394: brk             #0
    // 0x5e1398: r0 = StackOverflowSharedWithFPURegs()
    //     0x5e1398: bl              #0x928228  ; StackOverflowSharedWithFPURegsStub
    // 0x5e139c: b               #0x5e127c
  }
  _ updateCurrency(/* No info */) async {
    // ** addr: 0x7e3e10, size: 0x1c0
    // 0x7e3e10: EnterFrame
    //     0x7e3e10: stp             fp, lr, [SP, #-0x10]!
    //     0x7e3e14: mov             fp, SP
    // 0x7e3e18: AllocStack(0xf0)
    //     0x7e3e18: sub             SP, SP, #0xf0
    // 0x7e3e1c: SetupParameters(CurrencyProvider this /* r1 => r1, fp-0xa0 */, dynamic _ /* r2 => r2, fp-0xa8 */, dynamic _ /* r3 => r3, fp-0xb0 */, dynamic _ /* r5 => r5, fp-0xb8 */, dynamic _ /* d0 => d0, fp-0xd8 */)
    //     0x7e3e1c: stur            NULL, [fp, #-8]
    //     0x7e3e20: stur            x1, [fp, #-0xa0]
    //     0x7e3e24: stur            x2, [fp, #-0xa8]
    //     0x7e3e28: stur            x3, [fp, #-0xb0]
    //     0x7e3e2c: stur            x5, [fp, #-0xb8]
    //     0x7e3e30: stur            d0, [fp, #-0xd8]
    // 0x7e3e34: CheckStackOverflow
    //     0x7e3e34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e3e38: cmp             SP, x16
    //     0x7e3e3c: b.ls            #0x7e3fac
    // 0x7e3e40: r1 = 1
    //     0x7e3e40: mov             x1, #1
    // 0x7e3e44: r0 = AllocateContext()
    //     0x7e3e44: bl              #0x927010  ; AllocateContextStub
    // 0x7e3e48: mov             x1, x0
    // 0x7e3e4c: ldur            x0, [fp, #-0xb0]
    // 0x7e3e50: stur            x1, [fp, #-0xc0]
    // 0x7e3e54: StoreField: r1->field_f = r0
    //     0x7e3e54: stur            w0, [x1, #0xf]
    // 0x7e3e58: InitAsync() -> Future<bool>
    //     0x7e3e58: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x7e3e5c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e3e60: ldur            x0, [fp, #-0xa0]
    // 0x7e3e64: ldur            d0, [fp, #-0xd8]
    // 0x7e3e68: mov             x1, x0
    // 0x7e3e6c: r0 = notifyListeners()
    //     0x7e3e6c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e3e70: ldur            x0, [fp, #-0xa0]
    // 0x7e3e74: LoadField: r3 = r0->field_2b
    //     0x7e3e74: ldur            w3, [x0, #0x2b]
    // 0x7e3e78: DecompressPointer r3
    //     0x7e3e78: add             x3, x3, HEAP, lsl #32
    // 0x7e3e7c: ldur            x2, [fp, #-0xc0]
    // 0x7e3e80: stur            x3, [fp, #-0xb0]
    // 0x7e3e84: r1 = Function '<anonymous closure>':.
    //     0x7e3e84: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c408] AnonymousClosure: (0x6179f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber (0x617a58)
    //     0x7e3e88: ldr             x1, [x1, #0x408]
    // 0x7e3e8c: r0 = AllocateClosure()
    //     0x7e3e8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e3e90: ldur            x1, [fp, #-0xb0]
    // 0x7e3e94: r2 = LoadClassIdInstr(r1)
    //     0x7e3e94: ldur            x2, [x1, #-1]
    //     0x7e3e98: ubfx            x2, x2, #0xc, #0x14
    // 0x7e3e9c: mov             x16, x0
    // 0x7e3ea0: mov             x0, x2
    // 0x7e3ea4: mov             x2, x16
    // 0x7e3ea8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e3ea8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e3eac: r0 = GDT[cid_x0 + 0xe48f]()
    //     0x7e3eac: mov             x17, #0xe48f
    //     0x7e3eb0: add             lr, x0, x17
    //     0x7e3eb4: ldr             lr, [x21, lr, lsl #3]
    //     0x7e3eb8: blr             lr
    // 0x7e3ebc: ldur            d0, [fp, #-0xd8]
    // 0x7e3ec0: stur            x0, [fp, #-0xb0]
    // 0x7e3ec4: r1 = inline_Allocate_Double()
    //     0x7e3ec4: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x7e3ec8: add             x1, x1, #0x10
    //     0x7e3ecc: cmp             x2, x1
    //     0x7e3ed0: b.ls            #0x7e3fb4
    //     0x7e3ed4: str             x1, [THR, #0x60]  ; THR::top
    //     0x7e3ed8: sub             x1, x1, #0xf
    //     0x7e3edc: mov             x2, #0xe15c
    //     0x7e3ee0: movk            x2, #3, lsl #16
    //     0x7e3ee4: stur            x2, [x1, #-1]
    // 0x7e3ee8: StoreField: r1->field_7 = d0
    //     0x7e3ee8: stur            d0, [x1, #7]
    // 0x7e3eec: ldur            x16, [fp, #-0xa8]
    // 0x7e3ef0: ldur            lr, [fp, #-0xb8]
    // 0x7e3ef4: stp             lr, x16, [SP, #8]
    // 0x7e3ef8: str             x1, [SP]
    // 0x7e3efc: mov             x1, x0
    // 0x7e3f00: r4 = const [0, 0x4, 0x3, 0x1, emoji, 0x1, name, 0x2, value, 0x3, null]
    //     0x7e3f00: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c410] List(11) [0, 0x4, 0x3, 0x1, "emoji", 0x1, "name", 0x2, "value", 0x3, Null]
    //     0x7e3f04: ldr             x4, [x4, #0x410]
    // 0x7e3f08: r0 = copyWith()
    //     0x7e3f08: bl              #0x5e1638  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::copyWith
    // 0x7e3f0c: mov             x3, x0
    // 0x7e3f10: ldur            x0, [fp, #-0xa0]
    // 0x7e3f14: stur            x3, [fp, #-0xc8]
    // 0x7e3f18: LoadField: r1 = r0->field_23
    //     0x7e3f18: ldur            w1, [x0, #0x23]
    // 0x7e3f1c: DecompressPointer r1
    //     0x7e3f1c: add             x1, x1, HEAP, lsl #32
    // 0x7e3f20: mov             x2, x3
    // 0x7e3f24: r0 = updateCurrency()
    //     0x7e3f24: bl              #0x7e3fd0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateCurrency
    // 0x7e3f28: mov             x1, x0
    // 0x7e3f2c: stur            x1, [fp, #-0xd0]
    // 0x7e3f30: r0 = Await()
    //     0x7e3f30: bl              #0x3dd188  ; AwaitStub
    // 0x7e3f34: stur            x0, [fp, #-0xa8]
    // 0x7e3f38: r16 = true
    //     0x7e3f38: add             x16, NULL, #0x20  ; true
    // 0x7e3f3c: cmp             w0, w16
    // 0x7e3f40: b.ne            #0x7e3f5c
    // 0x7e3f44: ldur            x1, [fp, #-0xa0]
    // 0x7e3f48: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e3f48: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e3f4c: r0 = loadCurrencies()
    //     0x7e3f4c: bl              #0x5e02cc  ; [package:umrem_demo/features/admin/providers/currency_provider.dart] CurrencyProvider::loadCurrencies
    // 0x7e3f50: mov             x1, x0
    // 0x7e3f54: stur            x1, [fp, #-0xb0]
    // 0x7e3f58: r0 = Await()
    //     0x7e3f58: bl              #0x3dd188  ; AwaitStub
    // 0x7e3f5c: ldur            x1, [fp, #-0xa0]
    // 0x7e3f60: r0 = notifyListeners()
    //     0x7e3f60: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e3f64: ldur            x0, [fp, #-0xa8]
    // 0x7e3f68: r0 = ReturnAsync()
    //     0x7e3f68: b               #0x427094  ; ReturnAsyncStub
    // 0x7e3f6c: sub             SP, fp, #0xf0
    // 0x7e3f70: ldur            x1, [fp, #-0xa0]
    // 0x7e3f74: r0 = notifyListeners()
    //     0x7e3f74: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e3f78: r0 = false
    //     0x7e3f78: add             x0, NULL, #0x30  ; false
    // 0x7e3f7c: r0 = ReturnAsyncNotFuture()
    //     0x7e3f7c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e3f80: sub             SP, fp, #0xf0
    // 0x7e3f84: mov             x2, x0
    // 0x7e3f88: stur            x0, [fp, #-0xa8]
    // 0x7e3f8c: mov             x0, x1
    // 0x7e3f90: stur            x1, [fp, #-0xb0]
    // 0x7e3f94: ldur            x1, [fp, #-0xa0]
    // 0x7e3f98: r0 = notifyListeners()
    //     0x7e3f98: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e3f9c: ldur            x0, [fp, #-0xa8]
    // 0x7e3fa0: ldur            x1, [fp, #-0xb0]
    // 0x7e3fa4: r0 = ReThrow()
    //     0x7e3fa4: bl              #0x9262fc  ; ReThrowStub
    // 0x7e3fa8: brk             #0
    // 0x7e3fac: r0 = StackOverflowSharedWithFPURegs()
    //     0x7e3fac: bl              #0x928228  ; StackOverflowSharedWithFPURegsStub
    // 0x7e3fb0: b               #0x7e3e40
    // 0x7e3fb4: SaveReg d0
    //     0x7e3fb4: str             q0, [SP, #-0x10]!
    // 0x7e3fb8: SaveReg r0
    //     0x7e3fb8: str             x0, [SP, #-8]!
    // 0x7e3fbc: r0 = AllocateDouble()
    //     0x7e3fbc: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x7e3fc0: mov             x1, x0
    // 0x7e3fc4: RestoreReg r0
    //     0x7e3fc4: ldr             x0, [SP], #8
    // 0x7e3fc8: RestoreReg d0
    //     0x7e3fc8: ldr             q0, [SP], #0x10
    // 0x7e3fcc: b               #0x7e3ee8
  }
  _ CurrencyProvider(/* No info */) {
    // ** addr: 0x7f0a58, size: 0xfc
    // 0x7f0a58: EnterFrame
    //     0x7f0a58: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0a5c: mov             fp, SP
    // 0x7f0a60: AllocStack(0x10)
    //     0x7f0a60: sub             SP, SP, #0x10
    // 0x7f0a64: r0 = false
    //     0x7f0a64: add             x0, NULL, #0x30  ; false
    // 0x7f0a68: stur            x1, [fp, #-8]
    // 0x7f0a6c: CheckStackOverflow
    //     0x7f0a6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0a70: cmp             SP, x16
    //     0x7f0a74: b.ls            #0x7f0b4c
    // 0x7f0a78: StoreField: r1->field_27 = r0
    //     0x7f0a78: stur            w0, [x1, #0x27]
    // 0x7f0a7c: r4 = const [0, 0, 0, 0, null]
    //     0x7f0a7c: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7f0a80: r0 = app()
    //     0x7f0a80: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7f0a84: mov             x1, x0
    // 0x7f0a88: r0 = instanceFor()
    //     0x7f0a88: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7f0a8c: stur            x0, [fp, #-0x10]
    // 0x7f0a90: r0 = FirestoreService()
    //     0x7f0a90: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7f0a94: mov             x1, x0
    // 0x7f0a98: ldur            x0, [fp, #-0x10]
    // 0x7f0a9c: StoreField: r1->field_7 = r0
    //     0x7f0a9c: stur            w0, [x1, #7]
    // 0x7f0aa0: mov             x0, x1
    // 0x7f0aa4: ldur            x3, [fp, #-8]
    // 0x7f0aa8: StoreField: r3->field_23 = r0
    //     0x7f0aa8: stur            w0, [x3, #0x23]
    //     0x7f0aac: ldurb           w16, [x3, #-1]
    //     0x7f0ab0: ldurb           w17, [x0, #-1]
    //     0x7f0ab4: and             x16, x17, x16, lsr #2
    //     0x7f0ab8: tst             x16, HEAP, lsr #32
    //     0x7f0abc: b.eq            #0x7f0ac4
    //     0x7f0ac0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0ac4: r1 = <CurrencyModel>
    //     0x7f0ac4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x7f0ac8: ldr             x1, [x1, #0xd88]
    // 0x7f0acc: r2 = 0
    //     0x7f0acc: mov             x2, #0
    // 0x7f0ad0: r0 = _GrowableList()
    //     0x7f0ad0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0ad4: ldur            x1, [fp, #-8]
    // 0x7f0ad8: StoreField: r1->field_2b = r0
    //     0x7f0ad8: stur            w0, [x1, #0x2b]
    //     0x7f0adc: ldurb           w16, [x1, #-1]
    //     0x7f0ae0: ldurb           w17, [x0, #-1]
    //     0x7f0ae4: and             x16, x17, x16, lsr #2
    //     0x7f0ae8: tst             x16, HEAP, lsr #32
    //     0x7f0aec: b.eq            #0x7f0af4
    //     0x7f0af0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0af4: StoreField: r1->field_7 = rZR
    //     0x7f0af4: stur            xzr, [x1, #7]
    // 0x7f0af8: StoreField: r1->field_13 = rZR
    //     0x7f0af8: stur            xzr, [x1, #0x13]
    // 0x7f0afc: StoreField: r1->field_1b = rZR
    //     0x7f0afc: stur            xzr, [x1, #0x1b]
    // 0x7f0b00: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f0b00: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0b04: ldr             x0, [x0, #0xbc0]
    //     0x7f0b08: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f0b0c: cmp             w0, w16
    //     0x7f0b10: b.ne            #0x7f0b1c
    //     0x7f0b14: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f0b18: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f0b1c: ldur            x1, [fp, #-8]
    // 0x7f0b20: StoreField: r1->field_f = r0
    //     0x7f0b20: stur            w0, [x1, #0xf]
    //     0x7f0b24: ldurb           w16, [x1, #-1]
    //     0x7f0b28: ldurb           w17, [x0, #-1]
    //     0x7f0b2c: and             x16, x17, x16, lsr #2
    //     0x7f0b30: tst             x16, HEAP, lsr #32
    //     0x7f0b34: b.eq            #0x7f0b3c
    //     0x7f0b38: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0b3c: r0 = Null
    //     0x7f0b3c: mov             x0, NULL
    // 0x7f0b40: LeaveFrame
    //     0x7f0b40: mov             SP, fp
    //     0x7f0b44: ldp             fp, lr, [SP], #0x10
    // 0x7f0b48: ret
    //     0x7f0b48: ret             
    // 0x7f0b4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0b4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0b50: b               #0x7f0a78
  }
}
