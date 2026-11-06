// lib: , url: package:umrem_demo/core/services/quran_storage_service.dart

// class id: 1049500, size: 0x8
class :: {
}

// class id: 213, size: 0x10, field offset: 0x8
class QuranStorageService extends Object {

  static late final QuranStorageService _instance; // offset: 0x1014

  _ areAllPagesDownloaded(/* No info */) async {
    // ** addr: 0x5e6f94, size: 0x60
    // 0x5e6f94: EnterFrame
    //     0x5e6f94: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6f98: mov             fp, SP
    // 0x5e6f9c: AllocStack(0x18)
    //     0x5e6f9c: sub             SP, SP, #0x18
    // 0x5e6fa0: SetupParameters(QuranStorageService this /* r1 => r1, fp-0x10 */)
    //     0x5e6fa0: stur            NULL, [fp, #-8]
    //     0x5e6fa4: stur            x1, [fp, #-0x10]
    // 0x5e6fa8: CheckStackOverflow
    //     0x5e6fa8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6fac: cmp             SP, x16
    //     0x5e6fb0: b.ls            #0x5e6fec
    // 0x5e6fb4: InitAsync() -> Future<bool>
    //     0x5e6fb4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5e6fb8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6fbc: r0 = getInstance()
    //     0x5e6fbc: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e6fc0: mov             x1, x0
    // 0x5e6fc4: stur            x1, [fp, #-0x18]
    // 0x5e6fc8: r0 = Await()
    //     0x5e6fc8: bl              #0x3dd188  ; AwaitStub
    // 0x5e6fcc: mov             x1, x0
    // 0x5e6fd0: r2 = "all_quran_pages_downloaded"
    //     0x5e6fd0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18610] "all_quran_pages_downloaded"
    //     0x5e6fd4: ldr             x2, [x2, #0x610]
    // 0x5e6fd8: r0 = getBool()
    //     0x5e6fd8: bl              #0x5e60a4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getBool
    // 0x5e6fdc: cmp             w0, NULL
    // 0x5e6fe0: b.ne            #0x5e6fe8
    // 0x5e6fe4: r0 = false
    //     0x5e6fe4: add             x0, NULL, #0x30  ; false
    // 0x5e6fe8: r0 = ReturnAsyncNotFuture()
    //     0x5e6fe8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e6fec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6fec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6ff0: b               #0x5e6fb4
  }
  static QuranStorageService _instance() {
    // ** addr: 0x5ec3e0, size: 0x88
    // 0x5ec3e0: EnterFrame
    //     0x5ec3e0: stp             fp, lr, [SP, #-0x10]!
    //     0x5ec3e4: mov             fp, SP
    // 0x5ec3e8: AllocStack(0x8)
    //     0x5ec3e8: sub             SP, SP, #8
    // 0x5ec3ec: CheckStackOverflow
    //     0x5ec3ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ec3f0: cmp             SP, x16
    //     0x5ec3f4: b.ls            #0x5ec460
    // 0x5ec3f8: r0 = QuranStorageService()
    //     0x5ec3f8: bl              #0x5ec468  ; AllocateQuranStorageServiceStub -> QuranStorageService (size=0x10)
    // 0x5ec3fc: stur            x0, [fp, #-8]
    // 0x5ec400: r0 = CommonService()
    //     0x5ec400: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x5ec404: mov             x1, x0
    // 0x5ec408: ldur            x0, [fp, #-8]
    // 0x5ec40c: StoreField: r0->field_7 = r1
    //     0x5ec40c: stur            w1, [x0, #7]
    // 0x5ec410: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x5ec410: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ec414: ldr             x0, [x0, #0x6d8]
    //     0x5ec418: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5ec41c: cmp             w0, w16
    //     0x5ec420: b.ne            #0x5ec42c
    //     0x5ec424: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x5ec428: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5ec42c: r0 = createClient()
    //     0x5ec42c: bl              #0x5eb07c  ; [package:http/src/io_client.dart] ::createClient
    // 0x5ec430: ldur            x1, [fp, #-8]
    // 0x5ec434: StoreField: r1->field_b = r0
    //     0x5ec434: stur            w0, [x1, #0xb]
    //     0x5ec438: ldurb           w16, [x1, #-1]
    //     0x5ec43c: ldurb           w17, [x0, #-1]
    //     0x5ec440: and             x16, x17, x16, lsr #2
    //     0x5ec444: tst             x16, HEAP, lsr #32
    //     0x5ec448: b.eq            #0x5ec450
    //     0x5ec44c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5ec450: mov             x0, x1
    // 0x5ec454: LeaveFrame
    //     0x5ec454: mov             SP, fp
    //     0x5ec458: ldp             fp, lr, [SP], #0x10
    // 0x5ec45c: ret
    //     0x5ec45c: ret             
    // 0x5ec460: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ec460: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ec464: b               #0x5ec3f8
  }
  _ downloadPage(/* No info */) async {
    // ** addr: 0x6fd77c, size: 0xa00
    // 0x6fd77c: EnterFrame
    //     0x6fd77c: stp             fp, lr, [SP, #-0x10]!
    //     0x6fd780: mov             fp, SP
    // 0x6fd784: AllocStack(0x158)
    //     0x6fd784: sub             SP, SP, #0x158
    // 0x6fd788: SetupParameters(QuranStorageService this /* r1 => r1, fp-0xc8 */, dynamic _ /* r2 => r2, fp-0xd0 */, {dynamic onProgress = Null /* r3, fp-0xc0 */})
    //     0x6fd788: stur            NULL, [fp, #-8]
    //     0x6fd78c: stur            x1, [fp, #-0xc8]
    //     0x6fd790: stur            x2, [fp, #-0xd0]
    //     0x6fd794: ldur            w0, [x4, #0x13]
    //     0x6fd798: ldur            w3, [x4, #0x1f]
    //     0x6fd79c: add             x3, x3, HEAP, lsl #32
    //     0x6fd7a0: add             x16, PP, #0x16, lsl #12  ; [pp+0x16128] "onProgress"
    //     0x6fd7a4: ldr             x16, [x16, #0x128]
    //     0x6fd7a8: cmp             w3, w16
    //     0x6fd7ac: b.ne            #0x6fd7cc
    //     0x6fd7b0: ldur            w3, [x4, #0x23]
    //     0x6fd7b4: add             x3, x3, HEAP, lsl #32
    //     0x6fd7b8: sub             w4, w0, w3
    //     0x6fd7bc: add             x0, fp, w4, sxtw #2
    //     0x6fd7c0: ldr             x0, [x0, #8]
    //     0x6fd7c4: mov             x3, x0
    //     0x6fd7c8: b               #0x6fd7d0
    //     0x6fd7cc: mov             x3, NULL
    //     0x6fd7d0: stur            x3, [fp, #-0xc0]
    // 0x6fd7d4: CheckStackOverflow
    //     0x6fd7d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fd7d8: cmp             SP, x16
    //     0x6fd7dc: b.ls            #0x6fe168
    // 0x6fd7e0: InitAsync() -> Future<String?>
    //     0x6fd7e0: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6fd7e4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fd7e8: ldur            x0, [fp, #-0xc8]
    // 0x6fd7ec: LoadField: r1 = r0->field_7
    //     0x6fd7ec: ldur            w1, [x0, #7]
    // 0x6fd7f0: DecompressPointer r1
    //     0x6fd7f0: add             x1, x1, HEAP, lsl #32
    // 0x6fd7f4: r0 = hasInternetConnection()
    //     0x6fd7f4: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x6fd7f8: mov             x1, x0
    // 0x6fd7fc: stur            x1, [fp, #-0xd8]
    // 0x6fd800: r0 = Await()
    //     0x6fd800: bl              #0x3dd188  ; AwaitStub
    // 0x6fd804: r16 = true
    //     0x6fd804: add             x16, NULL, #0x20  ; true
    // 0x6fd808: cmp             w0, w16
    // 0x6fd80c: b.ne            #0x6fe080
    // 0x6fd810: ldur            x1, [fp, #-0xc8]
    // 0x6fd814: ldur            x2, [fp, #-0xd0]
    // 0x6fd818: r0 = _getLocalPagePath()
    //     0x6fd818: bl              #0x719b58  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_getLocalPagePath
    // 0x6fd81c: mov             x1, x0
    // 0x6fd820: stur            x1, [fp, #-0xd8]
    // 0x6fd824: r0 = Await()
    //     0x6fd824: bl              #0x3dd188  ; AwaitStub
    // 0x6fd828: stur            x0, [fp, #-0xd8]
    // 0x6fd82c: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x6fd82c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fd830: ldr             x0, [x0, #0x6d8]
    //     0x6fd834: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fd838: cmp             w0, w16
    //     0x6fd83c: b.ne            #0x6fd848
    //     0x6fd840: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x6fd844: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fd848: stur            x0, [fp, #-0xe0]
    // 0x6fd84c: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x6fd84c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fd850: ldr             x0, [x0, #0x850]
    //     0x6fd854: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fd858: cmp             w0, w16
    //     0x6fd85c: b.ne            #0x6fd86c
    //     0x6fd860: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x6fd864: ldr             x2, [x2, #0x918]
    //     0x6fd868: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6fd86c: r0 = _File()
    //     0x6fd86c: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x6fd870: mov             x2, x0
    // 0x6fd874: ldur            x0, [fp, #-0xd8]
    // 0x6fd878: stur            x2, [fp, #-0xe0]
    // 0x6fd87c: StoreField: r2->field_7 = r0
    //     0x6fd87c: stur            w0, [x2, #7]
    // 0x6fd880: mov             x1, x0
    // 0x6fd884: r0 = _toUtf8Array()
    //     0x6fd884: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x6fd888: ldur            x2, [fp, #-0xe0]
    // 0x6fd88c: StoreField: r2->field_b = r0
    //     0x6fd88c: stur            w0, [x2, #0xb]
    //     0x6fd890: ldurb           w16, [x2, #-1]
    //     0x6fd894: ldurb           w17, [x0, #-1]
    //     0x6fd898: and             x16, x17, x16, lsr #2
    //     0x6fd89c: tst             x16, HEAP, lsr #32
    //     0x6fd8a0: b.eq            #0x6fd8a8
    //     0x6fd8a4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6fd8a8: mov             x1, x2
    // 0x6fd8ac: r0 = exists()
    //     0x6fd8ac: bl              #0x719a08  ; [dart:io] _File::exists
    // 0x6fd8b0: mov             x1, x0
    // 0x6fd8b4: stur            x1, [fp, #-0xe8]
    // 0x6fd8b8: r0 = Await()
    //     0x6fd8b8: bl              #0x3dd188  ; AwaitStub
    // 0x6fd8bc: r16 = true
    //     0x6fd8bc: add             x16, NULL, #0x20  ; true
    // 0x6fd8c0: cmp             w0, w16
    // 0x6fd8c4: b.ne            #0x6fd8d0
    // 0x6fd8c8: ldur            x0, [fp, #-0xd8]
    // 0x6fd8cc: r0 = ReturnAsync()
    //     0x6fd8cc: b               #0x427094  ; ReturnAsyncStub
    // 0x6fd8d0: ldur            x0, [fp, #-0xc8]
    // 0x6fd8d4: ldur            x3, [fp, #-0xd0]
    // 0x6fd8d8: r1 = Null
    //     0x6fd8d8: mov             x1, NULL
    // 0x6fd8dc: r2 = 6
    //     0x6fd8dc: mov             x2, #6
    // 0x6fd8e0: r0 = AllocateArray()
    //     0x6fd8e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fd8e4: mov             x2, x0
    // 0x6fd8e8: stur            x2, [fp, #-0xe8]
    // 0x6fd8ec: r16 = "kuran-"
    //     0x6fd8ec: add             x16, PP, #0x16, lsl #12  ; [pp+0x16130] "kuran-"
    //     0x6fd8f0: ldr             x16, [x16, #0x130]
    // 0x6fd8f4: StoreField: r2->field_f = r16
    //     0x6fd8f4: stur            w16, [x2, #0xf]
    // 0x6fd8f8: ldur            x3, [fp, #-0xd0]
    // 0x6fd8fc: r0 = BoxInt64Instr(r3)
    //     0x6fd8fc: sbfiz           x0, x3, #1, #0x1f
    //     0x6fd900: cmp             x3, x0, asr #1
    //     0x6fd904: b.eq            #0x6fd910
    //     0x6fd908: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fd90c: stur            x3, [x0, #7]
    // 0x6fd910: r1 = 60
    //     0x6fd910: mov             x1, #0x3c
    // 0x6fd914: branchIfSmi(r0, 0x6fd920)
    //     0x6fd914: tbz             w0, #0, #0x6fd920
    // 0x6fd918: r1 = LoadClassIdInstr(r0)
    //     0x6fd918: ldur            x1, [x0, #-1]
    //     0x6fd91c: ubfx            x1, x1, #0xc, #0x14
    // 0x6fd920: str             x0, [SP]
    // 0x6fd924: mov             x0, x1
    // 0x6fd928: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6fd928: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6fd92c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6fd92c: mov             x17, #0x21f6
    //     0x6fd930: add             lr, x0, x17
    //     0x6fd934: ldr             lr, [x21, lr, lsl #3]
    //     0x6fd938: blr             lr
    // 0x6fd93c: r1 = LoadClassIdInstr(r0)
    //     0x6fd93c: ldur            x1, [x0, #-1]
    //     0x6fd940: ubfx            x1, x1, #0xc, #0x14
    // 0x6fd944: mov             x16, x0
    // 0x6fd948: mov             x0, x1
    // 0x6fd94c: mov             x1, x16
    // 0x6fd950: r2 = 3
    //     0x6fd950: mov             x2, #3
    // 0x6fd954: r3 = "0"
    //     0x6fd954: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6fd958: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6fd958: sub             lr, x0, #0xffc
    //     0x6fd95c: ldr             lr, [x21, lr, lsl #3]
    //     0x6fd960: blr             lr
    // 0x6fd964: ldur            x1, [fp, #-0xe8]
    // 0x6fd968: ArrayStore: r1[1] = r0  ; List_4
    //     0x6fd968: add             x25, x1, #0x13
    //     0x6fd96c: str             w0, [x25]
    //     0x6fd970: tbz             w0, #0, #0x6fd98c
    //     0x6fd974: ldurb           w16, [x1, #-1]
    //     0x6fd978: ldurb           w17, [x0, #-1]
    //     0x6fd97c: and             x16, x17, x16, lsr #2
    //     0x6fd980: tst             x16, HEAP, lsr #32
    //     0x6fd984: b.eq            #0x6fd98c
    //     0x6fd988: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6fd98c: ldur            x0, [fp, #-0xe8]
    // 0x6fd990: r16 = ".png"
    //     0x6fd990: add             x16, PP, #0x16, lsl #12  ; [pp+0x16138] ".png"
    //     0x6fd994: ldr             x16, [x16, #0x138]
    // 0x6fd998: ArrayStore: r0[0] = r16  ; List_4
    //     0x6fd998: stur            w16, [x0, #0x17]
    // 0x6fd99c: str             x0, [SP]
    // 0x6fd9a0: r0 = _interpolate()
    //     0x6fd9a0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fd9a4: r1 = Null
    //     0x6fd9a4: mov             x1, NULL
    // 0x6fd9a8: r2 = 10
    //     0x6fd9a8: mov             x2, #0xa
    // 0x6fd9ac: stur            x0, [fp, #-0xe8]
    // 0x6fd9b0: r0 = AllocateArray()
    //     0x6fd9b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fd9b4: r16 = "https://hactapot.xyz"
    //     0x6fd9b4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16140] "https://hactapot.xyz"
    //     0x6fd9b8: ldr             x16, [x16, #0x140]
    // 0x6fd9bc: StoreField: r0->field_f = r16
    //     0x6fd9bc: stur            w16, [x0, #0xf]
    // 0x6fd9c0: r16 = "/"
    //     0x6fd9c0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6fd9c4: StoreField: r0->field_13 = r16
    //     0x6fd9c4: stur            w16, [x0, #0x13]
    // 0x6fd9c8: r16 = "quran-pages"
    //     0x6fd9c8: add             x16, PP, #0x16, lsl #12  ; [pp+0x16148] "quran-pages"
    //     0x6fd9cc: ldr             x16, [x16, #0x148]
    // 0x6fd9d0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6fd9d0: stur            w16, [x0, #0x17]
    // 0x6fd9d4: r16 = "/"
    //     0x6fd9d4: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6fd9d8: StoreField: r0->field_1b = r16
    //     0x6fd9d8: stur            w16, [x0, #0x1b]
    // 0x6fd9dc: ldur            x1, [fp, #-0xe8]
    // 0x6fd9e0: StoreField: r0->field_1f = r1
    //     0x6fd9e0: stur            w1, [x0, #0x1f]
    // 0x6fd9e4: str             x0, [SP]
    // 0x6fd9e8: r0 = _interpolate()
    //     0x6fd9e8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fd9ec: mov             x2, x0
    // 0x6fd9f0: ldur            x0, [fp, #-0xc8]
    // 0x6fd9f4: r17 = -280
    //     0x6fd9f4: mov             x17, #-0x118
    // 0x6fd9f8: str             x2, [fp, x17]
    // 0x6fd9fc: LoadField: r3 = r0->field_b
    //     0x6fd9fc: ldur            w3, [x0, #0xb]
    // 0x6fda00: DecompressPointer r3
    //     0x6fda00: add             x3, x3, HEAP, lsl #32
    // 0x6fda04: r17 = -272
    //     0x6fda04: mov             x17, #-0x110
    // 0x6fda08: str             x3, [fp, x17]
    // 0x6fda0c: r8 = 1
    //     0x6fda0c: mov             x8, #1
    // 0x6fda10: r7 = Null
    //     0x6fda10: mov             x7, NULL
    // 0x6fda14: r6 = Null
    //     0x6fda14: mov             x6, NULL
    // 0x6fda18: r5 = Null
    //     0x6fda18: mov             x5, NULL
    // 0x6fda1c: r4 = Null
    //     0x6fda1c: mov             x4, NULL
    // 0x6fda20: stur            x8, [fp, #-0xf0]
    // 0x6fda24: stur            x7, [fp, #-0xe8]
    // 0x6fda28: stur            x6, [fp, #-0xf8]
    // 0x6fda2c: stur            x5, [fp, #-0x100]
    // 0x6fda30: r17 = -264
    //     0x6fda30: mov             x17, #-0x108
    // 0x6fda34: str             x4, [fp, x17]
    // 0x6fda38: CheckStackOverflow
    //     0x6fda38: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fda3c: cmp             SP, x16
    //     0x6fda40: b.ls            #0x6fe170
    // 0x6fda44: cmp             x8, #3
    // 0x6fda48: b.gt            #0x6fdff0
    // 0x6fda4c: mov             x1, x2
    // 0x6fda50: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6fda50: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6fda54: r0 = parse()
    //     0x6fda54: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x6fda58: r1 = Null
    //     0x6fda58: mov             x1, NULL
    // 0x6fda5c: r2 = 12
    //     0x6fda5c: mov             x2, #0xc
    // 0x6fda60: r17 = -288
    //     0x6fda60: mov             x17, #-0x120
    // 0x6fda64: str             x0, [fp, x17]
    // 0x6fda68: r0 = AllocateArray()
    //     0x6fda68: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fda6c: r16 = "Accept"
    //     0x6fda6c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16150] "Accept"
    //     0x6fda70: ldr             x16, [x16, #0x150]
    // 0x6fda74: StoreField: r0->field_f = r16
    //     0x6fda74: stur            w16, [x0, #0xf]
    // 0x6fda78: r16 = "image/png,image/*"
    //     0x6fda78: add             x16, PP, #0x16, lsl #12  ; [pp+0x16158] "image/png,image/*"
    //     0x6fda7c: ldr             x16, [x16, #0x158]
    // 0x6fda80: StoreField: r0->field_13 = r16
    //     0x6fda80: stur            w16, [x0, #0x13]
    // 0x6fda84: r16 = "Connection"
    //     0x6fda84: add             x16, PP, #0x16, lsl #12  ; [pp+0x16160] "Connection"
    //     0x6fda88: ldr             x16, [x16, #0x160]
    // 0x6fda8c: ArrayStore: r0[0] = r16  ; List_4
    //     0x6fda8c: stur            w16, [x0, #0x17]
    // 0x6fda90: r16 = "keep-alive"
    //     0x6fda90: add             x16, PP, #0x16, lsl #12  ; [pp+0x16168] "keep-alive"
    //     0x6fda94: ldr             x16, [x16, #0x168]
    // 0x6fda98: StoreField: r0->field_1b = r16
    //     0x6fda98: stur            w16, [x0, #0x1b]
    // 0x6fda9c: r16 = "User-Agent"
    //     0x6fda9c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16170] "User-Agent"
    //     0x6fdaa0: ldr             x16, [x16, #0x170]
    // 0x6fdaa4: StoreField: r0->field_1f = r16
    //     0x6fdaa4: stur            w16, [x0, #0x1f]
    // 0x6fdaa8: r16 = "UmremApp/1.0"
    //     0x6fdaa8: add             x16, PP, #0x16, lsl #12  ; [pp+0x16178] "UmremApp/1.0"
    //     0x6fdaac: ldr             x16, [x16, #0x178]
    // 0x6fdab0: StoreField: r0->field_23 = r16
    //     0x6fdab0: stur            w16, [x0, #0x23]
    // 0x6fdab4: r16 = <String, String>
    //     0x6fdab4: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x6fdab8: ldr             x16, [x16, #0x2a8]
    // 0x6fdabc: stp             x0, x16, [SP]
    // 0x6fdac0: r0 = Map._fromLiteral()
    //     0x6fdac0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6fdac4: r17 = -272
    //     0x6fdac4: mov             x17, #-0x110
    // 0x6fdac8: ldr             x1, [fp, x17]
    // 0x6fdacc: r17 = -288
    //     0x6fdacc: mov             x17, #-0x120
    // 0x6fdad0: ldr             x2, [fp, x17]
    // 0x6fdad4: mov             x3, x0
    // 0x6fdad8: r17 = -296
    //     0x6fdad8: mov             x17, #-0x128
    // 0x6fdadc: str             x0, [fp, x17]
    // 0x6fdae0: r0 = _sendUnstreamed()
    //     0x6fdae0: bl              #0x6ffbd4  ; [package:http/src/base_client.dart] BaseClient::_sendUnstreamed
    // 0x6fdae4: r16 = Instance_Duration
    //     0x6fdae4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16180] Obj!Duration@a2dea1
    //     0x6fdae8: ldr             x16, [x16, #0x180]
    // 0x6fdaec: stp             x16, x0, [SP]
    // 0x6fdaf0: r4 = const [0, 0x2, 0x2, 0x2, null]
    //     0x6fdaf0: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    // 0x6fdaf4: r0 = timeout()
    //     0x6fdaf4: bl              #0x3cbc8c  ; [dart:async] _Future::timeout
    // 0x6fdaf8: mov             x1, x0
    // 0x6fdafc: r17 = -288
    //     0x6fdafc: mov             x17, #-0x120
    // 0x6fdb00: str             x1, [fp, x17]
    // 0x6fdb04: r0 = Await()
    //     0x6fdb04: bl              #0x3dd188  ; AwaitStub
    // 0x6fdb08: r17 = -288
    //     0x6fdb08: mov             x17, #-0x120
    // 0x6fdb0c: str             x0, [fp, x17]
    // 0x6fdb10: cmp             w0, NULL
    // 0x6fdb14: b.eq            #0x6fe178
    // 0x6fdb18: LoadField: r3 = r0->field_b
    //     0x6fdb18: ldur            x3, [x0, #0xb]
    // 0x6fdb1c: r17 = -304
    //     0x6fdb1c: mov             x17, #-0x130
    // 0x6fdb20: str             x3, [fp, x17]
    // 0x6fdb24: cmp             x3, #0xc8
    // 0x6fdb28: b.eq            #0x6fdc68
    // 0x6fdb2c: cmp             x3, #0x1f4
    // 0x6fdb30: b.lt            #0x6fe0a4
    // 0x6fdb34: ldur            x4, [fp, #-0xf0]
    // 0x6fdb38: r1 = Null
    //     0x6fdb38: mov             x1, NULL
    // 0x6fdb3c: r2 = 4
    //     0x6fdb3c: mov             x2, #4
    // 0x6fdb40: r0 = AllocateArray()
    //     0x6fdb40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fdb44: mov             x2, x0
    // 0x6fdb48: r16 = "Sunucu hatası: "
    //     0x6fdb48: add             x16, PP, #0x16, lsl #12  ; [pp+0x16188] "Sunucu hatası: "
    //     0x6fdb4c: ldr             x16, [x16, #0x188]
    // 0x6fdb50: StoreField: r2->field_f = r16
    //     0x6fdb50: stur            w16, [x2, #0xf]
    // 0x6fdb54: r17 = -304
    //     0x6fdb54: mov             x17, #-0x130
    // 0x6fdb58: ldr             x3, [fp, x17]
    // 0x6fdb5c: r0 = BoxInt64Instr(r3)
    //     0x6fdb5c: sbfiz           x0, x3, #1, #0x1f
    //     0x6fdb60: cmp             x3, x0, asr #1
    //     0x6fdb64: b.eq            #0x6fdb70
    //     0x6fdb68: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fdb6c: stur            x3, [x0, #7]
    // 0x6fdb70: StoreField: r2->field_13 = r0
    //     0x6fdb70: stur            w0, [x2, #0x13]
    // 0x6fdb74: str             x2, [SP]
    // 0x6fdb78: r0 = _interpolate()
    //     0x6fdb78: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fdb7c: r17 = -296
    //     0x6fdb7c: mov             x17, #-0x128
    // 0x6fdb80: str             x0, [fp, x17]
    // 0x6fdb84: r0 = _Exception()
    //     0x6fdb84: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x6fdb88: mov             x1, x0
    // 0x6fdb8c: r17 = -296
    //     0x6fdb8c: mov             x17, #-0x128
    // 0x6fdb90: ldr             x0, [fp, x17]
    // 0x6fdb94: r17 = -312
    //     0x6fdb94: mov             x17, #-0x138
    // 0x6fdb98: str             x1, [fp, x17]
    // 0x6fdb9c: StoreField: r1->field_7 = r0
    //     0x6fdb9c: stur            w0, [x1, #7]
    // 0x6fdba0: ldur            x0, [fp, #-0xf0]
    // 0x6fdba4: cmp             x0, #3
    // 0x6fdba8: b.ge            #0x6fdc4c
    // 0x6fdbac: r0 = Duration()
    //     0x6fdbac: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x6fdbb0: mov             x3, x0
    // 0x6fdbb4: ldur            x2, [fp, #-0xf0]
    // 0x6fdbb8: r17 = -296
    //     0x6fdbb8: mov             x17, #-0x128
    // 0x6fdbbc: str             x3, [fp, x17]
    // 0x6fdbc0: r16 = 2000000
    //     0x6fdbc0: mov             x16, #0x8480
    //     0x6fdbc4: movk            x16, #0x1e, lsl #16
    // 0x6fdbc8: mul             x4, x2, x16
    // 0x6fdbcc: r0 = BoxInt64Instr(r4)
    //     0x6fdbcc: sbfiz           x0, x4, #1, #0x1f
    //     0x6fdbd0: cmp             x4, x0, asr #1
    //     0x6fdbd4: b.eq            #0x6fdbe0
    //     0x6fdbd8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fdbdc: stur            x4, [x0, #7]
    // 0x6fdbe0: r1 = 60
    //     0x6fdbe0: mov             x1, #0x3c
    // 0x6fdbe4: branchIfSmi(r0, 0x6fdbf0)
    //     0x6fdbe4: tbz             w0, #0, #0x6fdbf0
    // 0x6fdbe8: r1 = LoadClassIdInstr(r0)
    //     0x6fdbe8: ldur            x1, [x0, #-1]
    //     0x6fdbec: ubfx            x1, x1, #0xc, #0x14
    // 0x6fdbf0: mov             x16, x0
    // 0x6fdbf4: mov             x0, x1
    // 0x6fdbf8: mov             x1, x16
    // 0x6fdbfc: r0 = GDT[cid_x0 + -0xff9]()
    //     0x6fdbfc: sub             lr, x0, #0xff9
    //     0x6fdc00: ldr             lr, [x21, lr, lsl #3]
    //     0x6fdc04: blr             lr
    // 0x6fdc08: r17 = -296
    //     0x6fdc08: mov             x17, #-0x128
    // 0x6fdc0c: ldr             x2, [fp, x17]
    // 0x6fdc10: StoreField: r2->field_7 = r0
    //     0x6fdc10: stur            x0, [x2, #7]
    // 0x6fdc14: r1 = Null
    //     0x6fdc14: mov             x1, NULL
    // 0x6fdc18: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fdc18: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fdc1c: r0 = Future.delayed()
    //     0x6fdc1c: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x6fdc20: mov             x1, x0
    // 0x6fdc24: r17 = -296
    //     0x6fdc24: mov             x17, #-0x128
    // 0x6fdc28: str             x1, [fp, x17]
    // 0x6fdc2c: r0 = Await()
    //     0x6fdc2c: bl              #0x3dd188  ; AwaitStub
    // 0x6fdc30: r17 = -312
    //     0x6fdc30: mov             x17, #-0x138
    // 0x6fdc34: ldr             x4, [fp, x17]
    // 0x6fdc38: ldur            x7, [fp, #-0xe8]
    // 0x6fdc3c: ldur            x6, [fp, #-0xf8]
    // 0x6fdc40: r17 = -288
    //     0x6fdc40: mov             x17, #-0x120
    // 0x6fdc44: ldr             x5, [fp, x17]
    // 0x6fdc48: b               #0x6fdfd0
    // 0x6fdc4c: r17 = -312
    //     0x6fdc4c: mov             x17, #-0x138
    // 0x6fdc50: ldr             x3, [fp, x17]
    // 0x6fdc54: ldur            x2, [fp, #-0xe8]
    // 0x6fdc58: ldur            x1, [fp, #-0xf8]
    // 0x6fdc5c: r17 = -288
    //     0x6fdc5c: mov             x17, #-0x120
    // 0x6fdc60: ldr             x0, [fp, x17]
    // 0x6fdc64: b               #0x6fdfc0
    // 0x6fdc68: r17 = -288
    //     0x6fdc68: mov             x17, #-0x120
    // 0x6fdc6c: ldr             x0, [fp, x17]
    // 0x6fdc70: b               #0x6fdff4
    // 0x6fdc74: sub             SP, fp, #0x158
    // 0x6fdc78: mov             x4, x0
    // 0x6fdc7c: mov             x3, x1
    // 0x6fdc80: r17 = -296
    //     0x6fdc80: mov             x17, #-0x128
    // 0x6fdc84: str             x0, [fp, x17]
    // 0x6fdc88: r17 = -312
    //     0x6fdc88: mov             x17, #-0x138
    // 0x6fdc8c: str             x1, [fp, x17]
    // 0x6fdc90: r2 = Null
    //     0x6fdc90: mov             x2, NULL
    // 0x6fdc94: r1 = Null
    //     0x6fdc94: mov             x1, NULL
    // 0x6fdc98: cmp             w0, NULL
    // 0x6fdc9c: b.eq            #0x6fdcbc
    // 0x6fdca0: branchIfSmi(r0, 0x6fdcbc)
    //     0x6fdca0: tbz             w0, #0, #0x6fdcbc
    // 0x6fdca4: r3 = LoadClassIdInstr(r0)
    //     0x6fdca4: ldur            x3, [x0, #-1]
    //     0x6fdca8: ubfx            x3, x3, #0xc, #0x14
    // 0x6fdcac: cmp             x3, #0x150
    // 0x6fdcb0: b.eq            #0x6fdcc4
    // 0x6fdcb4: cmp             x3, #0xfe6
    // 0x6fdcb8: b.eq            #0x6fdcc4
    // 0x6fdcbc: r0 = false
    //     0x6fdcbc: add             x0, NULL, #0x30  ; false
    // 0x6fdcc0: b               #0x6fdcc8
    // 0x6fdcc4: r0 = true
    //     0x6fdcc4: add             x0, NULL, #0x20  ; true
    // 0x6fdcc8: tbnz            w0, #4, #0x6fdda0
    // 0x6fdccc: ldur            x0, [fp, #-0xf0]
    // 0x6fdcd0: cmp             x0, #3
    // 0x6fdcd4: b.ge            #0x6fdd80
    // 0x6fdcd8: ldur            x1, [fp, #-0xb8]
    // 0x6fdcdc: r0 = Duration()
    //     0x6fdcdc: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x6fdce0: mov             x3, x0
    // 0x6fdce4: ldur            x2, [fp, #-0xf0]
    // 0x6fdce8: r17 = -320
    //     0x6fdce8: mov             x17, #-0x140
    // 0x6fdcec: str             x3, [fp, x17]
    // 0x6fdcf0: r16 = 2000000
    //     0x6fdcf0: mov             x16, #0x8480
    //     0x6fdcf4: movk            x16, #0x1e, lsl #16
    // 0x6fdcf8: mul             x4, x2, x16
    // 0x6fdcfc: r0 = BoxInt64Instr(r4)
    //     0x6fdcfc: sbfiz           x0, x4, #1, #0x1f
    //     0x6fdd00: cmp             x4, x0, asr #1
    //     0x6fdd04: b.eq            #0x6fdd10
    //     0x6fdd08: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fdd0c: stur            x4, [x0, #7]
    // 0x6fdd10: r1 = 60
    //     0x6fdd10: mov             x1, #0x3c
    // 0x6fdd14: branchIfSmi(r0, 0x6fdd20)
    //     0x6fdd14: tbz             w0, #0, #0x6fdd20
    // 0x6fdd18: r1 = LoadClassIdInstr(r0)
    //     0x6fdd18: ldur            x1, [x0, #-1]
    //     0x6fdd1c: ubfx            x1, x1, #0xc, #0x14
    // 0x6fdd20: mov             x16, x0
    // 0x6fdd24: mov             x0, x1
    // 0x6fdd28: mov             x1, x16
    // 0x6fdd2c: r0 = GDT[cid_x0 + -0xff9]()
    //     0x6fdd2c: sub             lr, x0, #0xff9
    //     0x6fdd30: ldr             lr, [x21, lr, lsl #3]
    //     0x6fdd34: blr             lr
    // 0x6fdd38: r17 = -320
    //     0x6fdd38: mov             x17, #-0x140
    // 0x6fdd3c: ldr             x2, [fp, x17]
    // 0x6fdd40: StoreField: r2->field_7 = r0
    //     0x6fdd40: stur            x0, [x2, #7]
    // 0x6fdd44: r1 = Null
    //     0x6fdd44: mov             x1, NULL
    // 0x6fdd48: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fdd48: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fdd4c: r0 = Future.delayed()
    //     0x6fdd4c: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x6fdd50: mov             x1, x0
    // 0x6fdd54: r17 = -320
    //     0x6fdd54: mov             x17, #-0x140
    // 0x6fdd58: str             x1, [fp, x17]
    // 0x6fdd5c: r0 = Await()
    //     0x6fdd5c: bl              #0x3dd188  ; AwaitStub
    // 0x6fdd60: r17 = -296
    //     0x6fdd60: mov             x17, #-0x128
    // 0x6fdd64: ldr             x4, [fp, x17]
    // 0x6fdd68: r17 = -296
    //     0x6fdd68: mov             x17, #-0x128
    // 0x6fdd6c: ldr             x7, [fp, x17]
    // 0x6fdd70: r17 = -312
    //     0x6fdd70: mov             x17, #-0x138
    // 0x6fdd74: ldr             x6, [fp, x17]
    // 0x6fdd78: ldur            x5, [fp, #-0xb8]
    // 0x6fdd7c: b               #0x6fdfd0
    // 0x6fdd80: r17 = -296
    //     0x6fdd80: mov             x17, #-0x128
    // 0x6fdd84: ldr             x3, [fp, x17]
    // 0x6fdd88: r17 = -296
    //     0x6fdd88: mov             x17, #-0x128
    // 0x6fdd8c: ldr             x2, [fp, x17]
    // 0x6fdd90: r17 = -312
    //     0x6fdd90: mov             x17, #-0x138
    // 0x6fdd94: ldr             x1, [fp, x17]
    // 0x6fdd98: ldur            x0, [fp, #-0xb8]
    // 0x6fdd9c: b               #0x6fdfc0
    // 0x6fdda0: r17 = -296
    //     0x6fdda0: mov             x17, #-0x128
    // 0x6fdda4: ldr             x0, [fp, x17]
    // 0x6fdda8: r1 = 60
    //     0x6fdda8: mov             x1, #0x3c
    // 0x6fddac: branchIfSmi(r0, 0x6fddb8)
    //     0x6fddac: tbz             w0, #0, #0x6fddb8
    // 0x6fddb0: r1 = LoadClassIdInstr(r0)
    //     0x6fddb0: ldur            x1, [x0, #-1]
    //     0x6fddb4: ubfx            x1, x1, #0xc, #0x14
    // 0x6fddb8: r17 = 4570
    //     0x6fddb8: mov             x17, #0x11da
    // 0x6fddbc: cmp             x1, x17
    // 0x6fddc0: b.ne            #0x6fdee8
    // 0x6fddc4: ldur            x3, [fp, #-0xf0]
    // 0x6fddc8: r1 = Null
    //     0x6fddc8: mov             x1, NULL
    // 0x6fddcc: r2 = 4
    //     0x6fddcc: mov             x2, #4
    // 0x6fddd0: r0 = AllocateArray()
    //     0x6fddd0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fddd4: r16 = "Zaman aşımı: "
    //     0x6fddd4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16190] "Zaman aşımı: "
    //     0x6fddd8: ldr             x16, [x16, #0x190]
    // 0x6fdddc: StoreField: r0->field_f = r16
    //     0x6fdddc: stur            w16, [x0, #0xf]
    // 0x6fdde0: r17 = -296
    //     0x6fdde0: mov             x17, #-0x128
    // 0x6fdde4: ldr             x1, [fp, x17]
    // 0x6fdde8: StoreField: r0->field_13 = r1
    //     0x6fdde8: stur            w1, [x0, #0x13]
    // 0x6fddec: str             x0, [SP]
    // 0x6fddf0: r0 = _interpolate()
    //     0x6fddf0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fddf4: r17 = -320
    //     0x6fddf4: mov             x17, #-0x140
    // 0x6fddf8: str             x0, [fp, x17]
    // 0x6fddfc: r0 = _Exception()
    //     0x6fddfc: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x6fde00: mov             x1, x0
    // 0x6fde04: r17 = -320
    //     0x6fde04: mov             x17, #-0x140
    // 0x6fde08: ldr             x0, [fp, x17]
    // 0x6fde0c: r17 = -328
    //     0x6fde0c: mov             x17, #-0x148
    // 0x6fde10: str             x1, [fp, x17]
    // 0x6fde14: StoreField: r1->field_7 = r0
    //     0x6fde14: stur            w0, [x1, #7]
    // 0x6fde18: ldur            x0, [fp, #-0xf0]
    // 0x6fde1c: cmp             x0, #3
    // 0x6fde20: b.ge            #0x6fdec8
    // 0x6fde24: r0 = Duration()
    //     0x6fde24: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x6fde28: mov             x3, x0
    // 0x6fde2c: ldur            x2, [fp, #-0xf0]
    // 0x6fde30: r17 = -320
    //     0x6fde30: mov             x17, #-0x140
    // 0x6fde34: str             x3, [fp, x17]
    // 0x6fde38: r16 = 2000000
    //     0x6fde38: mov             x16, #0x8480
    //     0x6fde3c: movk            x16, #0x1e, lsl #16
    // 0x6fde40: mul             x4, x2, x16
    // 0x6fde44: r0 = BoxInt64Instr(r4)
    //     0x6fde44: sbfiz           x0, x4, #1, #0x1f
    //     0x6fde48: cmp             x4, x0, asr #1
    //     0x6fde4c: b.eq            #0x6fde58
    //     0x6fde50: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fde54: stur            x4, [x0, #7]
    // 0x6fde58: r1 = 60
    //     0x6fde58: mov             x1, #0x3c
    // 0x6fde5c: branchIfSmi(r0, 0x6fde68)
    //     0x6fde5c: tbz             w0, #0, #0x6fde68
    // 0x6fde60: r1 = LoadClassIdInstr(r0)
    //     0x6fde60: ldur            x1, [x0, #-1]
    //     0x6fde64: ubfx            x1, x1, #0xc, #0x14
    // 0x6fde68: mov             x16, x0
    // 0x6fde6c: mov             x0, x1
    // 0x6fde70: mov             x1, x16
    // 0x6fde74: r0 = GDT[cid_x0 + -0xff9]()
    //     0x6fde74: sub             lr, x0, #0xff9
    //     0x6fde78: ldr             lr, [x21, lr, lsl #3]
    //     0x6fde7c: blr             lr
    // 0x6fde80: r17 = -320
    //     0x6fde80: mov             x17, #-0x140
    // 0x6fde84: ldr             x2, [fp, x17]
    // 0x6fde88: StoreField: r2->field_7 = r0
    //     0x6fde88: stur            x0, [x2, #7]
    // 0x6fde8c: r1 = Null
    //     0x6fde8c: mov             x1, NULL
    // 0x6fde90: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fde90: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fde94: r0 = Future.delayed()
    //     0x6fde94: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x6fde98: mov             x1, x0
    // 0x6fde9c: r17 = -320
    //     0x6fde9c: mov             x17, #-0x140
    // 0x6fdea0: str             x1, [fp, x17]
    // 0x6fdea4: r0 = Await()
    //     0x6fdea4: bl              #0x3dd188  ; AwaitStub
    // 0x6fdea8: r17 = -328
    //     0x6fdea8: mov             x17, #-0x148
    // 0x6fdeac: ldr             x4, [fp, x17]
    // 0x6fdeb0: r17 = -296
    //     0x6fdeb0: mov             x17, #-0x128
    // 0x6fdeb4: ldr             x7, [fp, x17]
    // 0x6fdeb8: r17 = -312
    //     0x6fdeb8: mov             x17, #-0x138
    // 0x6fdebc: ldr             x6, [fp, x17]
    // 0x6fdec0: ldur            x5, [fp, #-0xb8]
    // 0x6fdec4: b               #0x6fdfd0
    // 0x6fdec8: r17 = -328
    //     0x6fdec8: mov             x17, #-0x148
    // 0x6fdecc: ldr             x3, [fp, x17]
    // 0x6fded0: r17 = -296
    //     0x6fded0: mov             x17, #-0x128
    // 0x6fded4: ldr             x2, [fp, x17]
    // 0x6fded8: r17 = -312
    //     0x6fded8: mov             x17, #-0x138
    // 0x6fdedc: ldr             x1, [fp, x17]
    // 0x6fdee0: ldur            x0, [fp, #-0xb8]
    // 0x6fdee4: b               #0x6fdfc0
    // 0x6fdee8: sub             x16, x1, #0x14f
    // 0x6fdeec: cmp             x16, #2
    // 0x6fdef0: b.hi            #0x6fe114
    // 0x6fdef4: ldur            x0, [fp, #-0xf0]
    // 0x6fdef8: cmp             x0, #3
    // 0x6fdefc: b.ge            #0x6fdfa4
    // 0x6fdf00: r0 = Duration()
    //     0x6fdf00: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x6fdf04: mov             x3, x0
    // 0x6fdf08: ldur            x2, [fp, #-0xf0]
    // 0x6fdf0c: r17 = -320
    //     0x6fdf0c: mov             x17, #-0x140
    // 0x6fdf10: str             x3, [fp, x17]
    // 0x6fdf14: r16 = 2000000
    //     0x6fdf14: mov             x16, #0x8480
    //     0x6fdf18: movk            x16, #0x1e, lsl #16
    // 0x6fdf1c: mul             x4, x2, x16
    // 0x6fdf20: r0 = BoxInt64Instr(r4)
    //     0x6fdf20: sbfiz           x0, x4, #1, #0x1f
    //     0x6fdf24: cmp             x4, x0, asr #1
    //     0x6fdf28: b.eq            #0x6fdf34
    //     0x6fdf2c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fdf30: stur            x4, [x0, #7]
    // 0x6fdf34: r1 = 60
    //     0x6fdf34: mov             x1, #0x3c
    // 0x6fdf38: branchIfSmi(r0, 0x6fdf44)
    //     0x6fdf38: tbz             w0, #0, #0x6fdf44
    // 0x6fdf3c: r1 = LoadClassIdInstr(r0)
    //     0x6fdf3c: ldur            x1, [x0, #-1]
    //     0x6fdf40: ubfx            x1, x1, #0xc, #0x14
    // 0x6fdf44: mov             x16, x0
    // 0x6fdf48: mov             x0, x1
    // 0x6fdf4c: mov             x1, x16
    // 0x6fdf50: r0 = GDT[cid_x0 + -0xff9]()
    //     0x6fdf50: sub             lr, x0, #0xff9
    //     0x6fdf54: ldr             lr, [x21, lr, lsl #3]
    //     0x6fdf58: blr             lr
    // 0x6fdf5c: r17 = -320
    //     0x6fdf5c: mov             x17, #-0x140
    // 0x6fdf60: ldr             x2, [fp, x17]
    // 0x6fdf64: StoreField: r2->field_7 = r0
    //     0x6fdf64: stur            x0, [x2, #7]
    // 0x6fdf68: r1 = Null
    //     0x6fdf68: mov             x1, NULL
    // 0x6fdf6c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fdf6c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fdf70: r0 = Future.delayed()
    //     0x6fdf70: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x6fdf74: mov             x1, x0
    // 0x6fdf78: r17 = -320
    //     0x6fdf78: mov             x17, #-0x140
    // 0x6fdf7c: str             x1, [fp, x17]
    // 0x6fdf80: r0 = Await()
    //     0x6fdf80: bl              #0x3dd188  ; AwaitStub
    // 0x6fdf84: r17 = -296
    //     0x6fdf84: mov             x17, #-0x128
    // 0x6fdf88: ldr             x4, [fp, x17]
    // 0x6fdf8c: r17 = -296
    //     0x6fdf8c: mov             x17, #-0x128
    // 0x6fdf90: ldr             x7, [fp, x17]
    // 0x6fdf94: r17 = -312
    //     0x6fdf94: mov             x17, #-0x138
    // 0x6fdf98: ldr             x6, [fp, x17]
    // 0x6fdf9c: ldur            x5, [fp, #-0xb8]
    // 0x6fdfa0: b               #0x6fdfd0
    // 0x6fdfa4: r17 = -296
    //     0x6fdfa4: mov             x17, #-0x128
    // 0x6fdfa8: ldr             x3, [fp, x17]
    // 0x6fdfac: r17 = -296
    //     0x6fdfac: mov             x17, #-0x128
    // 0x6fdfb0: ldr             x2, [fp, x17]
    // 0x6fdfb4: r17 = -312
    //     0x6fdfb4: mov             x17, #-0x138
    // 0x6fdfb8: ldr             x1, [fp, x17]
    // 0x6fdfbc: ldur            x0, [fp, #-0xb8]
    // 0x6fdfc0: mov             x4, x3
    // 0x6fdfc4: mov             x7, x2
    // 0x6fdfc8: mov             x6, x1
    // 0x6fdfcc: mov             x5, x0
    // 0x6fdfd0: ldur            x0, [fp, #-0xf0]
    // 0x6fdfd4: add             x8, x0, #1
    // 0x6fdfd8: ldur            x0, [fp, #-0xc8]
    // 0x6fdfdc: r17 = -280
    //     0x6fdfdc: mov             x17, #-0x118
    // 0x6fdfe0: ldr             x2, [fp, x17]
    // 0x6fdfe4: r17 = -272
    //     0x6fdfe4: mov             x17, #-0x110
    // 0x6fdfe8: ldr             x3, [fp, x17]
    // 0x6fdfec: b               #0x6fda20
    // 0x6fdff0: ldur            x0, [fp, #-0x100]
    // 0x6fdff4: stur            x0, [fp, #-0x100]
    // 0x6fdff8: cmp             w0, NULL
    // 0x6fdffc: b.eq            #0x6fe12c
    // 0x6fe000: LoadField: r1 = r0->field_b
    //     0x6fe000: ldur            x1, [x0, #0xb]
    // 0x6fe004: cmp             x1, #0xc8
    // 0x6fe008: b.ne            #0x6fe12c
    // 0x6fe00c: ldur            x3, [fp, #-0xc0]
    // 0x6fe010: LoadField: r2 = r0->field_27
    //     0x6fe010: ldur            w2, [x0, #0x27]
    // 0x6fe014: DecompressPointer r2
    //     0x6fe014: add             x2, x2, HEAP, lsl #32
    // 0x6fe018: ldur            x1, [fp, #-0xe0]
    // 0x6fe01c: r0 = writeAsBytes()
    //     0x6fe01c: bl              #0x6fe51c  ; [dart:io] _File::writeAsBytes
    // 0x6fe020: mov             x1, x0
    // 0x6fe024: r17 = -320
    //     0x6fe024: mov             x17, #-0x140
    // 0x6fe028: str             x1, [fp, x17]
    // 0x6fe02c: r0 = Await()
    //     0x6fe02c: bl              #0x3dd188  ; AwaitStub
    // 0x6fe030: ldur            x1, [fp, #-0xc0]
    // 0x6fe034: cmp             w1, NULL
    // 0x6fe038: b.eq            #0x6fe054
    // 0x6fe03c: r16 = 1.000000
    //     0x6fe03c: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x6fe040: stp             x16, x1, [SP]
    // 0x6fe044: mov             x0, x1
    // 0x6fe048: ClosureCall
    //     0x6fe048: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6fe04c: ldur            x2, [x0, #0x1f]
    //     0x6fe050: blr             x2
    // 0x6fe054: ldur            x1, [fp, #-0xc8]
    // 0x6fe058: ldur            x2, [fp, #-0xd0]
    // 0x6fe05c: r0 = _markPageAsDownloaded()
    //     0x6fe05c: bl              #0x6fe1e4  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_markPageAsDownloaded
    // 0x6fe060: mov             x1, x0
    // 0x6fe064: stur            x1, [fp, #-0x100]
    // 0x6fe068: r0 = Await()
    //     0x6fe068: bl              #0x3dd188  ; AwaitStub
    // 0x6fe06c: ldur            x0, [fp, #-0xd8]
    // 0x6fe070: r0 = ReturnAsync()
    //     0x6fe070: b               #0x427094  ; ReturnAsyncStub
    // 0x6fe074: sub             SP, fp, #0x158
    // 0x6fe078: r0 = Null
    //     0x6fe078: mov             x0, NULL
    // 0x6fe07c: r0 = ReturnAsyncNotFuture()
    //     0x6fe07c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fe080: r0 = _Exception()
    //     0x6fe080: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x6fe084: mov             x1, x0
    // 0x6fe088: r0 = "İnternet bağlantısı yok"
    //     0x6fe088: add             x0, PP, #0x16, lsl #12  ; [pp+0x16198] "İnternet bağlantısı yok"
    //     0x6fe08c: ldr             x0, [x0, #0x198]
    // 0x6fe090: stur            x1, [fp, #-0x100]
    // 0x6fe094: StoreField: r1->field_7 = r0
    //     0x6fe094: stur            w0, [x1, #7]
    // 0x6fe098: mov             x0, x1
    // 0x6fe09c: r0 = Throw()
    //     0x6fe09c: bl              #0x926328  ; ThrowStub
    // 0x6fe0a0: brk             #0
    // 0x6fe0a4: ldur            x0, [fp, #-0xf0]
    // 0x6fe0a8: r1 = Null
    //     0x6fe0a8: mov             x1, NULL
    // 0x6fe0ac: r2 = 4
    //     0x6fe0ac: mov             x2, #4
    // 0x6fe0b0: r0 = AllocateArray()
    //     0x6fe0b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6fe0b4: mov             x2, x0
    // 0x6fe0b8: r16 = "İndirme hatası: "
    //     0x6fe0b8: add             x16, PP, #0x16, lsl #12  ; [pp+0x161a0] "İndirme hatası: "
    //     0x6fe0bc: ldr             x16, [x16, #0x1a0]
    // 0x6fe0c0: StoreField: r2->field_f = r16
    //     0x6fe0c0: stur            w16, [x2, #0xf]
    // 0x6fe0c4: r17 = -304
    //     0x6fe0c4: mov             x17, #-0x130
    // 0x6fe0c8: ldr             x3, [fp, x17]
    // 0x6fe0cc: r0 = BoxInt64Instr(r3)
    //     0x6fe0cc: sbfiz           x0, x3, #1, #0x1f
    //     0x6fe0d0: cmp             x3, x0, asr #1
    //     0x6fe0d4: b.eq            #0x6fe0e0
    //     0x6fe0d8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fe0dc: stur            x3, [x0, #7]
    // 0x6fe0e0: StoreField: r2->field_13 = r0
    //     0x6fe0e0: stur            w0, [x2, #0x13]
    // 0x6fe0e4: str             x2, [SP]
    // 0x6fe0e8: r0 = _interpolate()
    //     0x6fe0e8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6fe0ec: stur            x0, [fp, #-0x100]
    // 0x6fe0f0: r0 = _Exception()
    //     0x6fe0f0: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x6fe0f4: mov             x1, x0
    // 0x6fe0f8: ldur            x0, [fp, #-0x100]
    // 0x6fe0fc: r17 = -320
    //     0x6fe0fc: mov             x17, #-0x140
    // 0x6fe100: str             x1, [fp, x17]
    // 0x6fe104: StoreField: r1->field_7 = r0
    //     0x6fe104: stur            w0, [x1, #7]
    // 0x6fe108: mov             x0, x1
    // 0x6fe10c: r0 = Throw()
    //     0x6fe10c: bl              #0x926328  ; ThrowStub
    // 0x6fe110: brk             #0
    // 0x6fe114: r17 = -296
    //     0x6fe114: mov             x17, #-0x128
    // 0x6fe118: ldr             x0, [fp, x17]
    // 0x6fe11c: r17 = -312
    //     0x6fe11c: mov             x17, #-0x138
    // 0x6fe120: ldr             x1, [fp, x17]
    // 0x6fe124: r0 = ReThrow()
    //     0x6fe124: bl              #0x9262fc  ; ReThrowStub
    // 0x6fe128: brk             #0
    // 0x6fe12c: r17 = -264
    //     0x6fe12c: mov             x17, #-0x108
    // 0x6fe130: ldr             x0, [fp, x17]
    // 0x6fe134: cmp             w0, NULL
    // 0x6fe138: b.ne            #0x6fe154
    // 0x6fe13c: r0 = _Exception()
    //     0x6fe13c: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x6fe140: mov             x1, x0
    // 0x6fe144: r0 = "İndirme başarısız"
    //     0x6fe144: add             x0, PP, #0x16, lsl #12  ; [pp+0x161a8] "İndirme başarısız"
    //     0x6fe148: ldr             x0, [x0, #0x1a8]
    // 0x6fe14c: StoreField: r1->field_7 = r0
    //     0x6fe14c: stur            w0, [x1, #7]
    // 0x6fe150: b               #0x6fe158
    // 0x6fe154: mov             x1, x0
    // 0x6fe158: mov             x0, x1
    // 0x6fe15c: stur            x1, [fp, #-0xc0]
    // 0x6fe160: r0 = Throw()
    //     0x6fe160: bl              #0x926328  ; ThrowStub
    // 0x6fe164: brk             #0
    // 0x6fe168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fe168: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fe16c: b               #0x6fd7e0
    // 0x6fe170: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fe170: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fe174: b               #0x6fda44
    // 0x6fe178: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6fe178: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  _ _markPageAsDownloaded(/* No info */) async {
    // ** addr: 0x6fe1e4, size: 0x1e4
    // 0x6fe1e4: EnterFrame
    //     0x6fe1e4: stp             fp, lr, [SP, #-0x10]!
    //     0x6fe1e8: mov             fp, SP
    // 0x6fe1ec: AllocStack(0x30)
    //     0x6fe1ec: sub             SP, SP, #0x30
    // 0x6fe1f0: SetupParameters(QuranStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x6fe1f0: stur            NULL, [fp, #-8]
    //     0x6fe1f4: stur            x1, [fp, #-0x10]
    //     0x6fe1f8: stur            x2, [fp, #-0x18]
    // 0x6fe1fc: CheckStackOverflow
    //     0x6fe1fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fe200: cmp             SP, x16
    //     0x6fe204: b.ls            #0x6fe3c0
    // 0x6fe208: InitAsync() -> Future<void?>
    //     0x6fe208: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6fe20c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fe210: r0 = getInstance()
    //     0x6fe210: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6fe214: mov             x1, x0
    // 0x6fe218: stur            x1, [fp, #-0x20]
    // 0x6fe21c: r0 = Await()
    //     0x6fe21c: bl              #0x3dd188  ; AwaitStub
    // 0x6fe220: mov             x1, x0
    // 0x6fe224: r2 = "downloaded_quran_pages"
    //     0x6fe224: add             x2, PP, #0x16, lsl #12  ; [pp+0x161b8] "downloaded_quran_pages"
    //     0x6fe228: ldr             x2, [x2, #0x1b8]
    // 0x6fe22c: stur            x0, [fp, #-0x10]
    // 0x6fe230: r0 = getStringList()
    //     0x6fe230: bl              #0x6fe404  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getStringList
    // 0x6fe234: cmp             w0, NULL
    // 0x6fe238: b.ne            #0x6fe250
    // 0x6fe23c: r1 = <String>
    //     0x6fe23c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6fe240: r2 = 0
    //     0x6fe240: mov             x2, #0
    // 0x6fe244: r0 = _GrowableList()
    //     0x6fe244: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6fe248: mov             x3, x0
    // 0x6fe24c: b               #0x6fe254
    // 0x6fe250: mov             x3, x0
    // 0x6fe254: ldur            x2, [fp, #-0x18]
    // 0x6fe258: stur            x3, [fp, #-0x28]
    // 0x6fe25c: r0 = BoxInt64Instr(r2)
    //     0x6fe25c: sbfiz           x0, x2, #1, #0x1f
    //     0x6fe260: cmp             x2, x0, asr #1
    //     0x6fe264: b.eq            #0x6fe270
    //     0x6fe268: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6fe26c: stur            x2, [x0, #7]
    // 0x6fe270: mov             x1, x0
    // 0x6fe274: stur            x1, [fp, #-0x20]
    // 0x6fe278: r0 = 60
    //     0x6fe278: mov             x0, #0x3c
    // 0x6fe27c: branchIfSmi(r1, 0x6fe288)
    //     0x6fe27c: tbz             w1, #0, #0x6fe288
    // 0x6fe280: r0 = LoadClassIdInstr(r1)
    //     0x6fe280: ldur            x0, [x1, #-1]
    //     0x6fe284: ubfx            x0, x0, #0xc, #0x14
    // 0x6fe288: str             x1, [SP]
    // 0x6fe28c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6fe28c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6fe290: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6fe290: mov             x17, #0x21f6
    //     0x6fe294: add             lr, x0, x17
    //     0x6fe298: ldr             lr, [x21, lr, lsl #3]
    //     0x6fe29c: blr             lr
    // 0x6fe2a0: ldur            x1, [fp, #-0x28]
    // 0x6fe2a4: mov             x2, x0
    // 0x6fe2a8: r0 = contains()
    //     0x6fe2a8: bl              #0x4ea038  ; [dart:collection] ListBase::contains
    // 0x6fe2ac: tbz             w0, #4, #0x6fe3b8
    // 0x6fe2b0: ldur            x1, [fp, #-0x28]
    // 0x6fe2b4: ldur            x0, [fp, #-0x20]
    // 0x6fe2b8: r2 = 60
    //     0x6fe2b8: mov             x2, #0x3c
    // 0x6fe2bc: branchIfSmi(r0, 0x6fe2c8)
    //     0x6fe2bc: tbz             w0, #0, #0x6fe2c8
    // 0x6fe2c0: r2 = LoadClassIdInstr(r0)
    //     0x6fe2c0: ldur            x2, [x0, #-1]
    //     0x6fe2c4: ubfx            x2, x2, #0xc, #0x14
    // 0x6fe2c8: str             x0, [SP]
    // 0x6fe2cc: mov             x0, x2
    // 0x6fe2d0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6fe2d0: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6fe2d4: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6fe2d4: mov             x17, #0x21f6
    //     0x6fe2d8: add             lr, x0, x17
    //     0x6fe2dc: ldr             lr, [x21, lr, lsl #3]
    //     0x6fe2e0: blr             lr
    // 0x6fe2e4: mov             x4, x0
    // 0x6fe2e8: ldur            x3, [fp, #-0x28]
    // 0x6fe2ec: stur            x4, [fp, #-0x20]
    // 0x6fe2f0: LoadField: r2 = r3->field_7
    //     0x6fe2f0: ldur            w2, [x3, #7]
    // 0x6fe2f4: DecompressPointer r2
    //     0x6fe2f4: add             x2, x2, HEAP, lsl #32
    // 0x6fe2f8: mov             x0, x4
    // 0x6fe2fc: r1 = Null
    //     0x6fe2fc: mov             x1, NULL
    // 0x6fe300: cmp             w2, NULL
    // 0x6fe304: b.eq            #0x6fe324
    // 0x6fe308: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x6fe308: ldur            w4, [x2, #0x17]
    // 0x6fe30c: DecompressPointer r4
    //     0x6fe30c: add             x4, x4, HEAP, lsl #32
    // 0x6fe310: r8 = X0
    //     0x6fe310: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x6fe314: LoadField: r9 = r4->field_7
    //     0x6fe314: ldur            x9, [x4, #7]
    // 0x6fe318: r3 = Null
    //     0x6fe318: add             x3, PP, #0x16, lsl #12  ; [pp+0x161c0] Null
    //     0x6fe31c: ldr             x3, [x3, #0x1c0]
    // 0x6fe320: blr             x9
    // 0x6fe324: ldur            x0, [fp, #-0x28]
    // 0x6fe328: LoadField: r1 = r0->field_b
    //     0x6fe328: ldur            w1, [x0, #0xb]
    // 0x6fe32c: LoadField: r2 = r0->field_f
    //     0x6fe32c: ldur            w2, [x0, #0xf]
    // 0x6fe330: DecompressPointer r2
    //     0x6fe330: add             x2, x2, HEAP, lsl #32
    // 0x6fe334: LoadField: r3 = r2->field_b
    //     0x6fe334: ldur            w3, [x2, #0xb]
    // 0x6fe338: r2 = LoadInt32Instr(r1)
    //     0x6fe338: sbfx            x2, x1, #1, #0x1f
    // 0x6fe33c: stur            x2, [fp, #-0x18]
    // 0x6fe340: r1 = LoadInt32Instr(r3)
    //     0x6fe340: sbfx            x1, x3, #1, #0x1f
    // 0x6fe344: cmp             x2, x1
    // 0x6fe348: b.ne            #0x6fe354
    // 0x6fe34c: mov             x1, x0
    // 0x6fe350: r0 = _growToNextCapacity()
    //     0x6fe350: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6fe354: ldur            x3, [fp, #-0x28]
    // 0x6fe358: ldur            x2, [fp, #-0x18]
    // 0x6fe35c: add             x0, x2, #1
    // 0x6fe360: lsl             x1, x0, #1
    // 0x6fe364: StoreField: r3->field_b = r1
    //     0x6fe364: stur            w1, [x3, #0xb]
    // 0x6fe368: LoadField: r1 = r3->field_f
    //     0x6fe368: ldur            w1, [x3, #0xf]
    // 0x6fe36c: DecompressPointer r1
    //     0x6fe36c: add             x1, x1, HEAP, lsl #32
    // 0x6fe370: ldur            x0, [fp, #-0x20]
    // 0x6fe374: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6fe374: add             x25, x1, x2, lsl #2
    //     0x6fe378: add             x25, x25, #0xf
    //     0x6fe37c: str             w0, [x25]
    //     0x6fe380: tbz             w0, #0, #0x6fe39c
    //     0x6fe384: ldurb           w16, [x1, #-1]
    //     0x6fe388: ldurb           w17, [x0, #-1]
    //     0x6fe38c: and             x16, x17, x16, lsr #2
    //     0x6fe390: tst             x16, HEAP, lsr #32
    //     0x6fe394: b.eq            #0x6fe39c
    //     0x6fe398: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6fe39c: ldur            x1, [fp, #-0x10]
    // 0x6fe3a0: r2 = "downloaded_quran_pages"
    //     0x6fe3a0: add             x2, PP, #0x16, lsl #12  ; [pp+0x161b8] "downloaded_quran_pages"
    //     0x6fe3a4: ldr             x2, [x2, #0x1b8]
    // 0x6fe3a8: r0 = setStringList()
    //     0x6fe3a8: bl              #0x6fe3c8  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setStringList
    // 0x6fe3ac: mov             x1, x0
    // 0x6fe3b0: stur            x1, [fp, #-0x10]
    // 0x6fe3b4: r0 = Await()
    //     0x6fe3b4: bl              #0x3dd188  ; AwaitStub
    // 0x6fe3b8: r0 = Null
    //     0x6fe3b8: mov             x0, NULL
    // 0x6fe3bc: r0 = ReturnAsyncNotFuture()
    //     0x6fe3bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fe3c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fe3c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fe3c4: b               #0x6fe208
  }
  _ _getLocalPagePath(/* No info */) async {
    // ** addr: 0x719b58, size: 0x21c
    // 0x719b58: EnterFrame
    //     0x719b58: stp             fp, lr, [SP, #-0x10]!
    //     0x719b5c: mov             fp, SP
    // 0x719b60: AllocStack(0x38)
    //     0x719b60: sub             SP, SP, #0x38
    // 0x719b64: SetupParameters(QuranStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x719b64: stur            NULL, [fp, #-8]
    //     0x719b68: stur            x1, [fp, #-0x10]
    //     0x719b6c: stur            x2, [fp, #-0x18]
    // 0x719b70: CheckStackOverflow
    //     0x719b70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x719b74: cmp             SP, x16
    //     0x719b78: b.ls            #0x719d6c
    // 0x719b7c: InitAsync() -> Future<String>
    //     0x719b7c: ldr             x0, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    //     0x719b80: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x719b84: r0 = getApplicationDocumentsDirectory()
    //     0x719b84: bl              #0x71a424  ; [package:path_provider/path_provider.dart] ::getApplicationDocumentsDirectory
    // 0x719b88: mov             x1, x0
    // 0x719b8c: stur            x1, [fp, #-0x20]
    // 0x719b90: r0 = Await()
    //     0x719b90: bl              #0x3dd188  ; AwaitStub
    // 0x719b94: LoadField: r3 = r0->field_7
    //     0x719b94: ldur            w3, [x0, #7]
    // 0x719b98: DecompressPointer r3
    //     0x719b98: add             x3, x3, HEAP, lsl #32
    // 0x719b9c: stur            x3, [fp, #-0x20]
    // 0x719ba0: r1 = Null
    //     0x719ba0: mov             x1, NULL
    // 0x719ba4: r2 = 4
    //     0x719ba4: mov             x2, #4
    // 0x719ba8: r0 = AllocateArray()
    //     0x719ba8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x719bac: mov             x1, x0
    // 0x719bb0: ldur            x0, [fp, #-0x20]
    // 0x719bb4: StoreField: r1->field_f = r0
    //     0x719bb4: stur            w0, [x1, #0xf]
    // 0x719bb8: r16 = "/quran_pages"
    //     0x719bb8: add             x16, PP, #0x17, lsl #12  ; [pp+0x178c8] "/quran_pages"
    //     0x719bbc: ldr             x16, [x16, #0x8c8]
    // 0x719bc0: StoreField: r1->field_13 = r16
    //     0x719bc0: stur            w16, [x1, #0x13]
    // 0x719bc4: str             x1, [SP]
    // 0x719bc8: r0 = _interpolate()
    //     0x719bc8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x719bcc: stur            x0, [fp, #-0x20]
    // 0x719bd0: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x719bd0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x719bd4: ldr             x0, [x0, #0x6d8]
    //     0x719bd8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x719bdc: cmp             w0, w16
    //     0x719be0: b.ne            #0x719bec
    //     0x719be4: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x719be8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x719bec: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x719bec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x719bf0: ldr             x0, [x0, #0x850]
    //     0x719bf4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x719bf8: cmp             w0, w16
    //     0x719bfc: b.ne            #0x719c0c
    //     0x719c00: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x719c04: ldr             x2, [x2, #0x918]
    //     0x719c08: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x719c0c: r0 = _Directory()
    //     0x719c0c: bl              #0x3dafdc  ; Allocate_DirectoryStub -> _Directory (size=0x10)
    // 0x719c10: mov             x2, x0
    // 0x719c14: ldur            x0, [fp, #-0x20]
    // 0x719c18: stur            x2, [fp, #-0x28]
    // 0x719c1c: StoreField: r2->field_7 = r0
    //     0x719c1c: stur            w0, [x2, #7]
    // 0x719c20: mov             x1, x0
    // 0x719c24: r0 = _toUtf8Array()
    //     0x719c24: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x719c28: ldur            x2, [fp, #-0x28]
    // 0x719c2c: StoreField: r2->field_b = r0
    //     0x719c2c: stur            w0, [x2, #0xb]
    //     0x719c30: ldurb           w16, [x2, #-1]
    //     0x719c34: ldurb           w17, [x0, #-1]
    //     0x719c38: and             x16, x17, x16, lsr #2
    //     0x719c3c: tst             x16, HEAP, lsr #32
    //     0x719c40: b.eq            #0x719c48
    //     0x719c44: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x719c48: mov             x1, x2
    // 0x719c4c: r0 = exists()
    //     0x719c4c: bl              #0x71a2dc  ; [dart:io] _Directory::exists
    // 0x719c50: mov             x1, x0
    // 0x719c54: stur            x1, [fp, #-0x30]
    // 0x719c58: r0 = Await()
    //     0x719c58: bl              #0x3dd188  ; AwaitStub
    // 0x719c5c: r16 = true
    //     0x719c5c: add             x16, NULL, #0x20  ; true
    // 0x719c60: cmp             w0, w16
    // 0x719c64: b.eq            #0x719c8c
    // 0x719c68: r16 = true
    //     0x719c68: add             x16, NULL, #0x20  ; true
    // 0x719c6c: str             x16, [SP]
    // 0x719c70: ldur            x1, [fp, #-0x28]
    // 0x719c74: r4 = const [0, 0x2, 0x1, 0x1, recursive, 0x1, null]
    //     0x719c74: add             x4, PP, #0x17, lsl #12  ; [pp+0x178d0] List(7) [0, 0x2, 0x1, 0x1, "recursive", 0x1, Null]
    //     0x719c78: ldr             x4, [x4, #0x8d0]
    // 0x719c7c: r0 = create()
    //     0x719c7c: bl              #0x719d74  ; [dart:io] _Directory::create
    // 0x719c80: mov             x1, x0
    // 0x719c84: stur            x1, [fp, #-0x10]
    // 0x719c88: r0 = Await()
    //     0x719c88: bl              #0x3dd188  ; AwaitStub
    // 0x719c8c: ldur            x3, [fp, #-0x18]
    // 0x719c90: ldur            x0, [fp, #-0x20]
    // 0x719c94: r1 = Null
    //     0x719c94: mov             x1, NULL
    // 0x719c98: r2 = 8
    //     0x719c98: mov             x2, #8
    // 0x719c9c: r0 = AllocateArray()
    //     0x719c9c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x719ca0: mov             x2, x0
    // 0x719ca4: ldur            x0, [fp, #-0x20]
    // 0x719ca8: stur            x2, [fp, #-0x10]
    // 0x719cac: StoreField: r2->field_f = r0
    //     0x719cac: stur            w0, [x2, #0xf]
    // 0x719cb0: r16 = "/kuran-"
    //     0x719cb0: add             x16, PP, #0x17, lsl #12  ; [pp+0x178d8] "/kuran-"
    //     0x719cb4: ldr             x16, [x16, #0x8d8]
    // 0x719cb8: StoreField: r2->field_13 = r16
    //     0x719cb8: stur            w16, [x2, #0x13]
    // 0x719cbc: ldur            x3, [fp, #-0x18]
    // 0x719cc0: r0 = BoxInt64Instr(r3)
    //     0x719cc0: sbfiz           x0, x3, #1, #0x1f
    //     0x719cc4: cmp             x3, x0, asr #1
    //     0x719cc8: b.eq            #0x719cd4
    //     0x719ccc: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x719cd0: stur            x3, [x0, #7]
    // 0x719cd4: r1 = 60
    //     0x719cd4: mov             x1, #0x3c
    // 0x719cd8: branchIfSmi(r0, 0x719ce4)
    //     0x719cd8: tbz             w0, #0, #0x719ce4
    // 0x719cdc: r1 = LoadClassIdInstr(r0)
    //     0x719cdc: ldur            x1, [x0, #-1]
    //     0x719ce0: ubfx            x1, x1, #0xc, #0x14
    // 0x719ce4: str             x0, [SP]
    // 0x719ce8: mov             x0, x1
    // 0x719cec: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x719cec: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x719cf0: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x719cf0: mov             x17, #0x21f6
    //     0x719cf4: add             lr, x0, x17
    //     0x719cf8: ldr             lr, [x21, lr, lsl #3]
    //     0x719cfc: blr             lr
    // 0x719d00: r1 = LoadClassIdInstr(r0)
    //     0x719d00: ldur            x1, [x0, #-1]
    //     0x719d04: ubfx            x1, x1, #0xc, #0x14
    // 0x719d08: mov             x16, x0
    // 0x719d0c: mov             x0, x1
    // 0x719d10: mov             x1, x16
    // 0x719d14: r2 = 3
    //     0x719d14: mov             x2, #3
    // 0x719d18: r3 = "0"
    //     0x719d18: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x719d1c: r0 = GDT[cid_x0 + -0xffc]()
    //     0x719d1c: sub             lr, x0, #0xffc
    //     0x719d20: ldr             lr, [x21, lr, lsl #3]
    //     0x719d24: blr             lr
    // 0x719d28: ldur            x1, [fp, #-0x10]
    // 0x719d2c: ArrayStore: r1[2] = r0  ; List_4
    //     0x719d2c: add             x25, x1, #0x17
    //     0x719d30: str             w0, [x25]
    //     0x719d34: tbz             w0, #0, #0x719d50
    //     0x719d38: ldurb           w16, [x1, #-1]
    //     0x719d3c: ldurb           w17, [x0, #-1]
    //     0x719d40: and             x16, x17, x16, lsr #2
    //     0x719d44: tst             x16, HEAP, lsr #32
    //     0x719d48: b.eq            #0x719d50
    //     0x719d4c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x719d50: ldur            x0, [fp, #-0x10]
    // 0x719d54: r16 = ".png"
    //     0x719d54: add             x16, PP, #0x16, lsl #12  ; [pp+0x16138] ".png"
    //     0x719d58: ldr             x16, [x16, #0x138]
    // 0x719d5c: StoreField: r0->field_1b = r16
    //     0x719d5c: stur            w16, [x0, #0x1b]
    // 0x719d60: str             x0, [SP]
    // 0x719d64: r0 = _interpolate()
    //     0x719d64: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x719d68: r0 = ReturnAsyncNotFuture()
    //     0x719d68: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x719d6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x719d6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x719d70: b               #0x719b7c
  }
  _ getLocalPagePathIfExists(/* No info */) async {
    // ** addr: 0x71af34, size: 0x7c
    // 0x71af34: EnterFrame
    //     0x71af34: stp             fp, lr, [SP, #-0x10]!
    //     0x71af38: mov             fp, SP
    // 0x71af3c: AllocStack(0x20)
    //     0x71af3c: sub             SP, SP, #0x20
    // 0x71af40: SetupParameters(QuranStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x71af40: stur            NULL, [fp, #-8]
    //     0x71af44: stur            x1, [fp, #-0x10]
    //     0x71af48: stur            x2, [fp, #-0x18]
    // 0x71af4c: CheckStackOverflow
    //     0x71af4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71af50: cmp             SP, x16
    //     0x71af54: b.ls            #0x71afa8
    // 0x71af58: InitAsync() -> Future<String?>
    //     0x71af58: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x71af5c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x71af60: ldur            x1, [fp, #-0x10]
    // 0x71af64: ldur            x2, [fp, #-0x18]
    // 0x71af68: r0 = isPageDownloaded()
    //     0x71af68: bl              #0x71afb0  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::isPageDownloaded
    // 0x71af6c: mov             x1, x0
    // 0x71af70: stur            x1, [fp, #-0x20]
    // 0x71af74: r0 = Await()
    //     0x71af74: bl              #0x3dd188  ; AwaitStub
    // 0x71af78: r16 = true
    //     0x71af78: add             x16, NULL, #0x20  ; true
    // 0x71af7c: cmp             w0, w16
    // 0x71af80: b.ne            #0x71afa0
    // 0x71af84: ldur            x1, [fp, #-0x10]
    // 0x71af88: ldur            x2, [fp, #-0x18]
    // 0x71af8c: r0 = _getLocalPagePath()
    //     0x71af8c: bl              #0x719b58  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_getLocalPagePath
    // 0x71af90: mov             x1, x0
    // 0x71af94: stur            x1, [fp, #-0x10]
    // 0x71af98: r0 = Await()
    //     0x71af98: bl              #0x3dd188  ; AwaitStub
    // 0x71af9c: r0 = ReturnAsync()
    //     0x71af9c: b               #0x427094  ; ReturnAsyncStub
    // 0x71afa0: r0 = Null
    //     0x71afa0: mov             x0, NULL
    // 0x71afa4: r0 = ReturnAsyncNotFuture()
    //     0x71afa4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x71afa8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71afa8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71afac: b               #0x71af58
  }
  _ isPageDownloaded(/* No info */) async {
    // ** addr: 0x71afb0, size: 0xd4
    // 0x71afb0: EnterFrame
    //     0x71afb0: stp             fp, lr, [SP, #-0x10]!
    //     0x71afb4: mov             fp, SP
    // 0x71afb8: AllocStack(0x20)
    //     0x71afb8: sub             SP, SP, #0x20
    // 0x71afbc: SetupParameters(QuranStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x71afbc: stur            NULL, [fp, #-8]
    //     0x71afc0: stur            x1, [fp, #-0x10]
    //     0x71afc4: stur            x2, [fp, #-0x18]
    // 0x71afc8: CheckStackOverflow
    //     0x71afc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71afcc: cmp             SP, x16
    //     0x71afd0: b.ls            #0x71b07c
    // 0x71afd4: InitAsync() -> Future<bool>
    //     0x71afd4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x71afd8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x71afdc: ldur            x1, [fp, #-0x10]
    // 0x71afe0: ldur            x2, [fp, #-0x18]
    // 0x71afe4: r0 = _getLocalPagePath()
    //     0x71afe4: bl              #0x719b58  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_getLocalPagePath
    // 0x71afe8: mov             x1, x0
    // 0x71afec: stur            x1, [fp, #-0x10]
    // 0x71aff0: r0 = Await()
    //     0x71aff0: bl              #0x3dd188  ; AwaitStub
    // 0x71aff4: stur            x0, [fp, #-0x10]
    // 0x71aff8: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x71aff8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71affc: ldr             x0, [x0, #0x6d8]
    //     0x71b000: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x71b004: cmp             w0, w16
    //     0x71b008: b.ne            #0x71b014
    //     0x71b00c: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x71b010: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x71b014: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x71b014: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71b018: ldr             x0, [x0, #0x850]
    //     0x71b01c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x71b020: cmp             w0, w16
    //     0x71b024: b.ne            #0x71b034
    //     0x71b028: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x71b02c: ldr             x2, [x2, #0x918]
    //     0x71b030: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x71b034: r0 = _File()
    //     0x71b034: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x71b038: ldur            x1, [fp, #-0x10]
    // 0x71b03c: stur            x0, [fp, #-0x20]
    // 0x71b040: StoreField: r0->field_7 = r1
    //     0x71b040: stur            w1, [x0, #7]
    // 0x71b044: r0 = _toUtf8Array()
    //     0x71b044: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x71b048: ldur            x1, [fp, #-0x20]
    // 0x71b04c: StoreField: r1->field_b = r0
    //     0x71b04c: stur            w0, [x1, #0xb]
    //     0x71b050: ldurb           w16, [x1, #-1]
    //     0x71b054: ldurb           w17, [x0, #-1]
    //     0x71b058: and             x16, x17, x16, lsr #2
    //     0x71b05c: tst             x16, HEAP, lsr #32
    //     0x71b060: b.eq            #0x71b068
    //     0x71b064: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x71b068: r0 = exists()
    //     0x71b068: bl              #0x719a08  ; [dart:io] _File::exists
    // 0x71b06c: mov             x1, x0
    // 0x71b070: stur            x1, [fp, #-0x10]
    // 0x71b074: r0 = Await()
    //     0x71b074: bl              #0x3dd188  ; AwaitStub
    // 0x71b078: r0 = ReturnAsync()
    //     0x71b078: b               #0x427094  ; ReturnAsyncStub
    // 0x71b07c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b07c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b080: b               #0x71afd4
  }
  _ downloadAllPages(/* No info */) async {
    // ** addr: 0x72b424, size: 0x290
    // 0x72b424: EnterFrame
    //     0x72b424: stp             fp, lr, [SP, #-0x10]!
    //     0x72b428: mov             fp, SP
    // 0x72b42c: AllocStack(0xb0)
    //     0x72b42c: sub             SP, SP, #0xb0
    // 0x72b430: SetupParameters(QuranStorageService this /* r1 => r2, fp-0x80 */, dynamic _ /* r2 => r1, fp-0x88 */)
    //     0x72b430: stur            NULL, [fp, #-8]
    //     0x72b434: stur            x1, [fp, #-0x80]
    //     0x72b438: mov             x16, x2
    //     0x72b43c: mov             x2, x1
    //     0x72b440: mov             x1, x16
    //     0x72b444: stur            x1, [fp, #-0x88]
    // 0x72b448: CheckStackOverflow
    //     0x72b448: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b44c: cmp             SP, x16
    //     0x72b450: b.ls            #0x72b6a4
    // 0x72b454: InitAsync() -> Future<({String? errorMessage, int? failedPage, bool success})>
    //     0x72b454: add             x0, PP, #0x20, lsl #12  ; [pp+0x20388] TypeArguments: <({String? errorMessage, int? failedPage, bool success})>
    //     0x72b458: ldr             x0, [x0, #0x388]
    //     0x72b45c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72b460: ldur            x0, [fp, #-0x80]
    // 0x72b464: LoadField: r1 = r0->field_7
    //     0x72b464: ldur            w1, [x0, #7]
    // 0x72b468: DecompressPointer r1
    //     0x72b468: add             x1, x1, HEAP, lsl #32
    // 0x72b46c: r0 = hasInternetConnection()
    //     0x72b46c: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72b470: mov             x1, x0
    // 0x72b474: stur            x1, [fp, #-0x90]
    // 0x72b478: r0 = Await()
    //     0x72b478: bl              #0x3dd188  ; AwaitStub
    // 0x72b47c: r16 = true
    //     0x72b47c: add             x16, NULL, #0x20  ; true
    // 0x72b480: cmp             w0, w16
    // 0x72b484: b.eq            #0x72b4a8
    // 0x72b488: r2 = "İnternet bağlantısı yok"
    //     0x72b488: add             x2, PP, #0x16, lsl #12  ; [pp+0x16198] "İnternet bağlantısı yok"
    //     0x72b48c: ldr             x2, [x2, #0x198]
    // 0x72b490: r3 = Null
    //     0x72b490: mov             x3, NULL
    // 0x72b494: r4 = false
    //     0x72b494: add             x4, NULL, #0x30  ; false
    // 0x72b498: r1 = 786438
    //     0x72b498: mov             x1, #6
    //     0x72b49c: movk            x1, #0xc, lsl #16
    // 0x72b4a0: r0 = AllocateRecord3Named()
    //     0x72b4a0: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b4a4: r0 = ReturnAsyncNotFuture()
    //     0x72b4a4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b4a8: r0 = 1
    //     0x72b4a8: mov             x0, #1
    // 0x72b4ac: stur            x0, [fp, #-0x98]
    // 0x72b4b0: CheckStackOverflow
    //     0x72b4b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b4b4: cmp             SP, x16
    //     0x72b4b8: b.ls            #0x72b6ac
    // 0x72b4bc: cmp             x0, #0x25d
    // 0x72b4c0: b.gt            #0x72b628
    // 0x72b4c4: ldur            x1, [fp, #-0x80]
    // 0x72b4c8: mov             x2, x0
    // 0x72b4cc: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x72b4cc: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72b4d0: r0 = downloadPage()
    //     0x72b4d0: bl              #0x6fd77c  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::downloadPage
    // 0x72b4d4: mov             x1, x0
    // 0x72b4d8: stur            x1, [fp, #-0x90]
    // 0x72b4dc: r0 = Await()
    //     0x72b4dc: bl              #0x3dd188  ; AwaitStub
    // 0x72b4e0: cmp             w0, NULL
    // 0x72b4e4: b.eq            #0x72b530
    // 0x72b4e8: ldur            x2, [fp, #-0x98]
    // 0x72b4ec: r0 = BoxInt64Instr(r2)
    //     0x72b4ec: sbfiz           x0, x2, #1, #0x1f
    //     0x72b4f0: cmp             x2, x0, asr #1
    //     0x72b4f4: b.eq            #0x72b500
    //     0x72b4f8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72b4fc: stur            x2, [x0, #7]
    // 0x72b500: ldur            x16, [fp, #-0x88]
    // 0x72b504: stp             x0, x16, [SP, #8]
    // 0x72b508: r16 = 1210
    //     0x72b508: mov             x16, #0x4ba
    // 0x72b50c: str             x16, [SP]
    // 0x72b510: ldur            x0, [fp, #-0x88]
    // 0x72b514: ClosureCall
    //     0x72b514: ldr             x4, [PP, #0xa90]  ; [pp+0xa90] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x72b518: ldur            x2, [x0, #0x1f]
    //     0x72b51c: blr             x2
    // 0x72b520: ldur            x0, [fp, #-0x98]
    // 0x72b524: add             x1, x0, #1
    // 0x72b528: mov             x0, x1
    // 0x72b52c: b               #0x72b4ac
    // 0x72b530: ldur            x0, [fp, #-0x98]
    // 0x72b534: r1 = Null
    //     0x72b534: mov             x1, NULL
    // 0x72b538: r2 = 6
    //     0x72b538: mov             x2, #6
    // 0x72b53c: r0 = AllocateArray()
    //     0x72b53c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b540: mov             x2, x0
    // 0x72b544: r16 = "Sayfa "
    //     0x72b544: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x72b548: ldr             x16, [x16, #0x98]
    // 0x72b54c: StoreField: r2->field_f = r16
    //     0x72b54c: stur            w16, [x2, #0xf]
    // 0x72b550: ldur            x3, [fp, #-0x98]
    // 0x72b554: r0 = BoxInt64Instr(r3)
    //     0x72b554: sbfiz           x0, x3, #1, #0x1f
    //     0x72b558: cmp             x3, x0, asr #1
    //     0x72b55c: b.eq            #0x72b568
    //     0x72b560: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72b564: stur            x3, [x0, #7]
    // 0x72b568: stur            x0, [fp, #-0x88]
    // 0x72b56c: StoreField: r2->field_13 = r0
    //     0x72b56c: stur            w0, [x2, #0x13]
    // 0x72b570: r16 = " indirilemedi. Lütfen internet bağlantınızı kontrol edin."
    //     0x72b570: add             x16, PP, #0x20, lsl #12  ; [pp+0x20390] " indirilemedi. Lütfen internet bağlantınızı kontrol edin."
    //     0x72b574: ldr             x16, [x16, #0x390]
    // 0x72b578: ArrayStore: r2[0] = r16  ; List_4
    //     0x72b578: stur            w16, [x2, #0x17]
    // 0x72b57c: str             x2, [SP]
    // 0x72b580: r0 = _interpolate()
    //     0x72b580: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b584: mov             x2, x0
    // 0x72b588: ldur            x3, [fp, #-0x88]
    // 0x72b58c: r4 = false
    //     0x72b58c: add             x4, NULL, #0x30  ; false
    // 0x72b590: stur            x0, [fp, #-0x88]
    // 0x72b594: r1 = 786438
    //     0x72b594: mov             x1, #6
    //     0x72b598: movk            x1, #0xc, lsl #16
    // 0x72b59c: r0 = AllocateRecord3Named()
    //     0x72b59c: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b5a0: r0 = ReturnAsyncNotFuture()
    //     0x72b5a0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b5a4: sub             SP, fp, #0xb0
    // 0x72b5a8: ldur            x3, [fp, #-0x98]
    // 0x72b5ac: stur            x0, [fp, #-0x88]
    // 0x72b5b0: r1 = Null
    //     0x72b5b0: mov             x1, NULL
    // 0x72b5b4: r2 = 8
    //     0x72b5b4: mov             x2, #8
    // 0x72b5b8: r0 = AllocateArray()
    //     0x72b5b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b5bc: mov             x2, x0
    // 0x72b5c0: r16 = "Sayfa "
    //     0x72b5c0: add             x16, PP, #0x16, lsl #12  ; [pp+0x16098] "Sayfa "
    //     0x72b5c4: ldr             x16, [x16, #0x98]
    // 0x72b5c8: StoreField: r2->field_f = r16
    //     0x72b5c8: stur            w16, [x2, #0xf]
    // 0x72b5cc: ldur            x3, [fp, #-0x98]
    // 0x72b5d0: r0 = BoxInt64Instr(r3)
    //     0x72b5d0: sbfiz           x0, x3, #1, #0x1f
    //     0x72b5d4: cmp             x3, x0, asr #1
    //     0x72b5d8: b.eq            #0x72b5e4
    //     0x72b5dc: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72b5e0: stur            x3, [x0, #7]
    // 0x72b5e4: stur            x0, [fp, #-0x90]
    // 0x72b5e8: StoreField: r2->field_13 = r0
    //     0x72b5e8: stur            w0, [x2, #0x13]
    // 0x72b5ec: r16 = " indirilemedi: "
    //     0x72b5ec: add             x16, PP, #0x20, lsl #12  ; [pp+0x20350] " indirilemedi: "
    //     0x72b5f0: ldr             x16, [x16, #0x350]
    // 0x72b5f4: ArrayStore: r2[0] = r16  ; List_4
    //     0x72b5f4: stur            w16, [x2, #0x17]
    // 0x72b5f8: ldur            x1, [fp, #-0x88]
    // 0x72b5fc: StoreField: r2->field_1b = r1
    //     0x72b5fc: stur            w1, [x2, #0x1b]
    // 0x72b600: str             x2, [SP]
    // 0x72b604: r0 = _interpolate()
    //     0x72b604: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b608: mov             x2, x0
    // 0x72b60c: ldur            x3, [fp, #-0x90]
    // 0x72b610: r4 = false
    //     0x72b610: add             x4, NULL, #0x30  ; false
    // 0x72b614: stur            x0, [fp, #-0x90]
    // 0x72b618: r1 = 786438
    //     0x72b618: mov             x1, #6
    //     0x72b61c: movk            x1, #0xc, lsl #16
    // 0x72b620: r0 = AllocateRecord3Named()
    //     0x72b620: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b624: r0 = ReturnAsyncNotFuture()
    //     0x72b624: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b628: ldur            x1, [fp, #-0x80]
    // 0x72b62c: r0 = _markAllPagesDownloaded()
    //     0x72b62c: bl              #0x72b6b4  ; [package:umrem_demo/core/services/quran_storage_service.dart] QuranStorageService::_markAllPagesDownloaded
    // 0x72b630: mov             x1, x0
    // 0x72b634: stur            x1, [fp, #-0x88]
    // 0x72b638: r0 = Await()
    //     0x72b638: bl              #0x3dd188  ; AwaitStub
    // 0x72b63c: r2 = Null
    //     0x72b63c: mov             x2, NULL
    // 0x72b640: r3 = Null
    //     0x72b640: mov             x3, NULL
    // 0x72b644: r4 = true
    //     0x72b644: add             x4, NULL, #0x20  ; true
    // 0x72b648: r1 = 786438
    //     0x72b648: mov             x1, #6
    //     0x72b64c: movk            x1, #0xc, lsl #16
    // 0x72b650: r0 = AllocateRecord3Named()
    //     0x72b650: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b654: r0 = ReturnAsyncNotFuture()
    //     0x72b654: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b658: sub             SP, fp, #0xb0
    // 0x72b65c: stur            x0, [fp, #-0x80]
    // 0x72b660: r1 = Null
    //     0x72b660: mov             x1, NULL
    // 0x72b664: r2 = 4
    //     0x72b664: mov             x2, #4
    // 0x72b668: r0 = AllocateArray()
    //     0x72b668: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b66c: r16 = "İndirme hatası: "
    //     0x72b66c: add             x16, PP, #0x16, lsl #12  ; [pp+0x161a0] "İndirme hatası: "
    //     0x72b670: ldr             x16, [x16, #0x1a0]
    // 0x72b674: StoreField: r0->field_f = r16
    //     0x72b674: stur            w16, [x0, #0xf]
    // 0x72b678: ldur            x1, [fp, #-0x80]
    // 0x72b67c: StoreField: r0->field_13 = r1
    //     0x72b67c: stur            w1, [x0, #0x13]
    // 0x72b680: str             x0, [SP]
    // 0x72b684: r0 = _interpolate()
    //     0x72b684: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b688: mov             x2, x0
    // 0x72b68c: r3 = Null
    //     0x72b68c: mov             x3, NULL
    // 0x72b690: r4 = false
    //     0x72b690: add             x4, NULL, #0x30  ; false
    // 0x72b694: r1 = 786438
    //     0x72b694: mov             x1, #6
    //     0x72b698: movk            x1, #0xc, lsl #16
    // 0x72b69c: r0 = AllocateRecord3Named()
    //     0x72b69c: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b6a0: r0 = ReturnAsyncNotFuture()
    //     0x72b6a0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b6a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b6a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b6a8: b               #0x72b454
    // 0x72b6ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b6ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b6b0: b               #0x72b4bc
  }
  _ _markAllPagesDownloaded(/* No info */) async {
    // ** addr: 0x72b6b4, size: 0x68
    // 0x72b6b4: EnterFrame
    //     0x72b6b4: stp             fp, lr, [SP, #-0x10]!
    //     0x72b6b8: mov             fp, SP
    // 0x72b6bc: AllocStack(0x18)
    //     0x72b6bc: sub             SP, SP, #0x18
    // 0x72b6c0: SetupParameters(QuranStorageService this /* r1 => r1, fp-0x10 */)
    //     0x72b6c0: stur            NULL, [fp, #-8]
    //     0x72b6c4: stur            x1, [fp, #-0x10]
    // 0x72b6c8: CheckStackOverflow
    //     0x72b6c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b6cc: cmp             SP, x16
    //     0x72b6d0: b.ls            #0x72b714
    // 0x72b6d4: InitAsync() -> Future<void?>
    //     0x72b6d4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72b6d8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72b6dc: r0 = getInstance()
    //     0x72b6dc: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x72b6e0: mov             x1, x0
    // 0x72b6e4: stur            x1, [fp, #-0x18]
    // 0x72b6e8: r0 = Await()
    //     0x72b6e8: bl              #0x3dd188  ; AwaitStub
    // 0x72b6ec: mov             x1, x0
    // 0x72b6f0: r2 = "all_quran_pages_downloaded"
    //     0x72b6f0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18610] "all_quran_pages_downloaded"
    //     0x72b6f4: ldr             x2, [x2, #0x610]
    // 0x72b6f8: r3 = true
    //     0x72b6f8: add             x3, NULL, #0x20  ; true
    // 0x72b6fc: r0 = setBool()
    //     0x72b6fc: bl              #0x636ad0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setBool
    // 0x72b700: mov             x1, x0
    // 0x72b704: stur            x1, [fp, #-0x18]
    // 0x72b708: r0 = Await()
    //     0x72b708: bl              #0x3dd188  ; AwaitStub
    // 0x72b70c: r0 = Null
    //     0x72b70c: mov             x0, NULL
    // 0x72b710: r0 = ReturnAsyncNotFuture()
    //     0x72b710: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b714: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b714: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b718: b               #0x72b6d4
  }
}
