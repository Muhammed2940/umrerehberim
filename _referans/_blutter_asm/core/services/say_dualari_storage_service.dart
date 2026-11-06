// lib: , url: package:umrem_demo/core/services/say_dualari_storage_service.dart

// class id: 1049501, size: 0x8
class :: {
}

// class id: 212, size: 0x10, field offset: 0x8
class SayDualariStorageService extends Object {

  static late final SayDualariStorageService _instance; // offset: 0x1018

  _ areAllFilesDownloaded(/* No info */) async {
    // ** addr: 0x5e6ec4, size: 0x60
    // 0x5e6ec4: EnterFrame
    //     0x5e6ec4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6ec8: mov             fp, SP
    // 0x5e6ecc: AllocStack(0x18)
    //     0x5e6ecc: sub             SP, SP, #0x18
    // 0x5e6ed0: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0x10 */)
    //     0x5e6ed0: stur            NULL, [fp, #-8]
    //     0x5e6ed4: stur            x1, [fp, #-0x10]
    // 0x5e6ed8: CheckStackOverflow
    //     0x5e6ed8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6edc: cmp             SP, x16
    //     0x5e6ee0: b.ls            #0x5e6f1c
    // 0x5e6ee4: InitAsync() -> Future<bool>
    //     0x5e6ee4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5e6ee8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6eec: r0 = getInstance()
    //     0x5e6eec: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e6ef0: mov             x1, x0
    // 0x5e6ef4: stur            x1, [fp, #-0x18]
    // 0x5e6ef8: r0 = Await()
    //     0x5e6ef8: bl              #0x3dd188  ; AwaitStub
    // 0x5e6efc: mov             x1, x0
    // 0x5e6f00: r2 = "all_say_dualari_downloaded"
    //     0x5e6f00: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a2c8] "all_say_dualari_downloaded"
    //     0x5e6f04: ldr             x2, [x2, #0x2c8]
    // 0x5e6f08: r0 = getBool()
    //     0x5e6f08: bl              #0x5e60a4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getBool
    // 0x5e6f0c: cmp             w0, NULL
    // 0x5e6f10: b.ne            #0x5e6f18
    // 0x5e6f14: r0 = false
    //     0x5e6f14: add             x0, NULL, #0x30  ; false
    // 0x5e6f18: r0 = ReturnAsyncNotFuture()
    //     0x5e6f18: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e6f1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6f1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6f20: b               #0x5e6ee4
  }
  static SayDualariStorageService _instance() {
    // ** addr: 0x5ec34c, size: 0x88
    // 0x5ec34c: EnterFrame
    //     0x5ec34c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ec350: mov             fp, SP
    // 0x5ec354: AllocStack(0x8)
    //     0x5ec354: sub             SP, SP, #8
    // 0x5ec358: CheckStackOverflow
    //     0x5ec358: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ec35c: cmp             SP, x16
    //     0x5ec360: b.ls            #0x5ec3cc
    // 0x5ec364: r0 = SayDualariStorageService()
    //     0x5ec364: bl              #0x5ec3d4  ; AllocateSayDualariStorageServiceStub -> SayDualariStorageService (size=0x10)
    // 0x5ec368: stur            x0, [fp, #-8]
    // 0x5ec36c: r0 = CommonService()
    //     0x5ec36c: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x5ec370: mov             x1, x0
    // 0x5ec374: ldur            x0, [fp, #-8]
    // 0x5ec378: StoreField: r0->field_7 = r1
    //     0x5ec378: stur            w1, [x0, #7]
    // 0x5ec37c: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x5ec37c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ec380: ldr             x0, [x0, #0x6d8]
    //     0x5ec384: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5ec388: cmp             w0, w16
    //     0x5ec38c: b.ne            #0x5ec398
    //     0x5ec390: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x5ec394: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5ec398: r0 = createClient()
    //     0x5ec398: bl              #0x5eb07c  ; [package:http/src/io_client.dart] ::createClient
    // 0x5ec39c: ldur            x1, [fp, #-8]
    // 0x5ec3a0: StoreField: r1->field_b = r0
    //     0x5ec3a0: stur            w0, [x1, #0xb]
    //     0x5ec3a4: ldurb           w16, [x1, #-1]
    //     0x5ec3a8: ldurb           w17, [x0, #-1]
    //     0x5ec3ac: and             x16, x17, x16, lsr #2
    //     0x5ec3b0: tst             x16, HEAP, lsr #32
    //     0x5ec3b4: b.eq            #0x5ec3bc
    //     0x5ec3b8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5ec3bc: mov             x0, x1
    // 0x5ec3c0: LeaveFrame
    //     0x5ec3c0: mov             SP, fp
    //     0x5ec3c4: ldp             fp, lr, [SP], #0x10
    // 0x5ec3c8: ret
    //     0x5ec3c8: ret             
    // 0x5ec3cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ec3cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ec3d0: b               #0x5ec364
  }
  _ getLocalFilePathIfExists(/* No info */) async {
    // ** addr: 0x724880, size: 0x7c
    // 0x724880: EnterFrame
    //     0x724880: stp             fp, lr, [SP, #-0x10]!
    //     0x724884: mov             fp, SP
    // 0x724888: AllocStack(0x20)
    //     0x724888: sub             SP, SP, #0x20
    // 0x72488c: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x72488c: stur            NULL, [fp, #-8]
    //     0x724890: stur            x1, [fp, #-0x10]
    //     0x724894: stur            x2, [fp, #-0x18]
    // 0x724898: CheckStackOverflow
    //     0x724898: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72489c: cmp             SP, x16
    //     0x7248a0: b.ls            #0x7248f4
    // 0x7248a4: InitAsync() -> Future<String?>
    //     0x7248a4: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x7248a8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7248ac: ldur            x1, [fp, #-0x10]
    // 0x7248b0: ldur            x2, [fp, #-0x18]
    // 0x7248b4: r0 = isFileDownloaded()
    //     0x7248b4: bl              #0x724a74  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::isFileDownloaded
    // 0x7248b8: mov             x1, x0
    // 0x7248bc: stur            x1, [fp, #-0x20]
    // 0x7248c0: r0 = Await()
    //     0x7248c0: bl              #0x3dd188  ; AwaitStub
    // 0x7248c4: r16 = true
    //     0x7248c4: add             x16, NULL, #0x20  ; true
    // 0x7248c8: cmp             w0, w16
    // 0x7248cc: b.ne            #0x7248ec
    // 0x7248d0: ldur            x1, [fp, #-0x10]
    // 0x7248d4: ldur            x2, [fp, #-0x18]
    // 0x7248d8: r0 = _getLocalFilePath()
    //     0x7248d8: bl              #0x7248fc  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_getLocalFilePath
    // 0x7248dc: mov             x1, x0
    // 0x7248e0: stur            x1, [fp, #-0x10]
    // 0x7248e4: r0 = Await()
    //     0x7248e4: bl              #0x3dd188  ; AwaitStub
    // 0x7248e8: r0 = ReturnAsync()
    //     0x7248e8: b               #0x427094  ; ReturnAsyncStub
    // 0x7248ec: r0 = Null
    //     0x7248ec: mov             x0, NULL
    // 0x7248f0: r0 = ReturnAsyncNotFuture()
    //     0x7248f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7248f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7248f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7248f8: b               #0x7248a4
  }
  _ _getLocalFilePath(/* No info */) async {
    // ** addr: 0x7248fc, size: 0x178
    // 0x7248fc: EnterFrame
    //     0x7248fc: stp             fp, lr, [SP, #-0x10]!
    //     0x724900: mov             fp, SP
    // 0x724904: AllocStack(0x38)
    //     0x724904: sub             SP, SP, #0x38
    // 0x724908: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x724908: stur            NULL, [fp, #-8]
    //     0x72490c: stur            x1, [fp, #-0x10]
    //     0x724910: stur            x2, [fp, #-0x18]
    // 0x724914: CheckStackOverflow
    //     0x724914: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x724918: cmp             SP, x16
    //     0x72491c: b.ls            #0x724a6c
    // 0x724920: InitAsync() -> Future<String>
    //     0x724920: ldr             x0, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    //     0x724924: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x724928: r0 = getApplicationDocumentsDirectory()
    //     0x724928: bl              #0x71a424  ; [package:path_provider/path_provider.dart] ::getApplicationDocumentsDirectory
    // 0x72492c: mov             x1, x0
    // 0x724930: stur            x1, [fp, #-0x20]
    // 0x724934: r0 = Await()
    //     0x724934: bl              #0x3dd188  ; AwaitStub
    // 0x724938: LoadField: r3 = r0->field_7
    //     0x724938: ldur            w3, [x0, #7]
    // 0x72493c: DecompressPointer r3
    //     0x72493c: add             x3, x3, HEAP, lsl #32
    // 0x724940: stur            x3, [fp, #-0x20]
    // 0x724944: r1 = Null
    //     0x724944: mov             x1, NULL
    // 0x724948: r2 = 4
    //     0x724948: mov             x2, #4
    // 0x72494c: r0 = AllocateArray()
    //     0x72494c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x724950: mov             x1, x0
    // 0x724954: ldur            x0, [fp, #-0x20]
    // 0x724958: StoreField: r1->field_f = r0
    //     0x724958: stur            w0, [x1, #0xf]
    // 0x72495c: r16 = "/say_dualari"
    //     0x72495c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20038] "/say_dualari"
    //     0x724960: ldr             x16, [x16, #0x38]
    // 0x724964: StoreField: r1->field_13 = r16
    //     0x724964: stur            w16, [x1, #0x13]
    // 0x724968: str             x1, [SP]
    // 0x72496c: r0 = _interpolate()
    //     0x72496c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x724970: stur            x0, [fp, #-0x20]
    // 0x724974: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x724974: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x724978: ldr             x0, [x0, #0x6d8]
    //     0x72497c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x724980: cmp             w0, w16
    //     0x724984: b.ne            #0x724990
    //     0x724988: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x72498c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x724990: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x724990: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x724994: ldr             x0, [x0, #0x850]
    //     0x724998: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72499c: cmp             w0, w16
    //     0x7249a0: b.ne            #0x7249b0
    //     0x7249a4: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x7249a8: ldr             x2, [x2, #0x918]
    //     0x7249ac: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7249b0: r0 = _Directory()
    //     0x7249b0: bl              #0x3dafdc  ; Allocate_DirectoryStub -> _Directory (size=0x10)
    // 0x7249b4: mov             x2, x0
    // 0x7249b8: ldur            x0, [fp, #-0x20]
    // 0x7249bc: stur            x2, [fp, #-0x28]
    // 0x7249c0: StoreField: r2->field_7 = r0
    //     0x7249c0: stur            w0, [x2, #7]
    // 0x7249c4: mov             x1, x0
    // 0x7249c8: r0 = _toUtf8Array()
    //     0x7249c8: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x7249cc: ldur            x2, [fp, #-0x28]
    // 0x7249d0: StoreField: r2->field_b = r0
    //     0x7249d0: stur            w0, [x2, #0xb]
    //     0x7249d4: ldurb           w16, [x2, #-1]
    //     0x7249d8: ldurb           w17, [x0, #-1]
    //     0x7249dc: and             x16, x17, x16, lsr #2
    //     0x7249e0: tst             x16, HEAP, lsr #32
    //     0x7249e4: b.eq            #0x7249ec
    //     0x7249e8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7249ec: mov             x1, x2
    // 0x7249f0: r0 = exists()
    //     0x7249f0: bl              #0x71a2dc  ; [dart:io] _Directory::exists
    // 0x7249f4: mov             x1, x0
    // 0x7249f8: stur            x1, [fp, #-0x30]
    // 0x7249fc: r0 = Await()
    //     0x7249fc: bl              #0x3dd188  ; AwaitStub
    // 0x724a00: r16 = true
    //     0x724a00: add             x16, NULL, #0x20  ; true
    // 0x724a04: cmp             w0, w16
    // 0x724a08: b.eq            #0x724a30
    // 0x724a0c: r16 = true
    //     0x724a0c: add             x16, NULL, #0x20  ; true
    // 0x724a10: str             x16, [SP]
    // 0x724a14: ldur            x1, [fp, #-0x28]
    // 0x724a18: r4 = const [0, 0x2, 0x1, 0x1, recursive, 0x1, null]
    //     0x724a18: add             x4, PP, #0x17, lsl #12  ; [pp+0x178d0] List(7) [0, 0x2, 0x1, 0x1, "recursive", 0x1, Null]
    //     0x724a1c: ldr             x4, [x4, #0x8d0]
    // 0x724a20: r0 = create()
    //     0x724a20: bl              #0x719d74  ; [dart:io] _Directory::create
    // 0x724a24: mov             x1, x0
    // 0x724a28: stur            x1, [fp, #-0x10]
    // 0x724a2c: r0 = Await()
    //     0x724a2c: bl              #0x3dd188  ; AwaitStub
    // 0x724a30: ldur            x3, [fp, #-0x18]
    // 0x724a34: ldur            x0, [fp, #-0x20]
    // 0x724a38: r1 = Null
    //     0x724a38: mov             x1, NULL
    // 0x724a3c: r2 = 6
    //     0x724a3c: mov             x2, #6
    // 0x724a40: r0 = AllocateArray()
    //     0x724a40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x724a44: mov             x1, x0
    // 0x724a48: ldur            x0, [fp, #-0x20]
    // 0x724a4c: StoreField: r1->field_f = r0
    //     0x724a4c: stur            w0, [x1, #0xf]
    // 0x724a50: r16 = "/"
    //     0x724a50: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x724a54: StoreField: r1->field_13 = r16
    //     0x724a54: stur            w16, [x1, #0x13]
    // 0x724a58: ldur            x0, [fp, #-0x18]
    // 0x724a5c: ArrayStore: r1[0] = r0  ; List_4
    //     0x724a5c: stur            w0, [x1, #0x17]
    // 0x724a60: str             x1, [SP]
    // 0x724a64: r0 = _interpolate()
    //     0x724a64: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x724a68: r0 = ReturnAsyncNotFuture()
    //     0x724a68: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x724a6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724a6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x724a70: b               #0x724920
  }
  _ isFileDownloaded(/* No info */) async {
    // ** addr: 0x724a74, size: 0xd4
    // 0x724a74: EnterFrame
    //     0x724a74: stp             fp, lr, [SP, #-0x10]!
    //     0x724a78: mov             fp, SP
    // 0x724a7c: AllocStack(0x18)
    //     0x724a7c: sub             SP, SP, #0x18
    // 0x724a80: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x724a80: stur            NULL, [fp, #-8]
    //     0x724a84: stur            x1, [fp, #-0x10]
    //     0x724a88: stur            x2, [fp, #-0x18]
    // 0x724a8c: CheckStackOverflow
    //     0x724a8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x724a90: cmp             SP, x16
    //     0x724a94: b.ls            #0x724b40
    // 0x724a98: InitAsync() -> Future<bool>
    //     0x724a98: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x724a9c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x724aa0: ldur            x1, [fp, #-0x10]
    // 0x724aa4: ldur            x2, [fp, #-0x18]
    // 0x724aa8: r0 = _getLocalFilePath()
    //     0x724aa8: bl              #0x7248fc  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_getLocalFilePath
    // 0x724aac: mov             x1, x0
    // 0x724ab0: stur            x1, [fp, #-0x10]
    // 0x724ab4: r0 = Await()
    //     0x724ab4: bl              #0x3dd188  ; AwaitStub
    // 0x724ab8: stur            x0, [fp, #-0x10]
    // 0x724abc: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x724abc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x724ac0: ldr             x0, [x0, #0x6d8]
    //     0x724ac4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x724ac8: cmp             w0, w16
    //     0x724acc: b.ne            #0x724ad8
    //     0x724ad0: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x724ad4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x724ad8: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x724ad8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x724adc: ldr             x0, [x0, #0x850]
    //     0x724ae0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x724ae4: cmp             w0, w16
    //     0x724ae8: b.ne            #0x724af8
    //     0x724aec: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x724af0: ldr             x2, [x2, #0x918]
    //     0x724af4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x724af8: r0 = _File()
    //     0x724af8: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x724afc: ldur            x1, [fp, #-0x10]
    // 0x724b00: stur            x0, [fp, #-0x18]
    // 0x724b04: StoreField: r0->field_7 = r1
    //     0x724b04: stur            w1, [x0, #7]
    // 0x724b08: r0 = _toUtf8Array()
    //     0x724b08: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x724b0c: ldur            x1, [fp, #-0x18]
    // 0x724b10: StoreField: r1->field_b = r0
    //     0x724b10: stur            w0, [x1, #0xb]
    //     0x724b14: ldurb           w16, [x1, #-1]
    //     0x724b18: ldurb           w17, [x0, #-1]
    //     0x724b1c: and             x16, x17, x16, lsr #2
    //     0x724b20: tst             x16, HEAP, lsr #32
    //     0x724b24: b.eq            #0x724b2c
    //     0x724b28: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x724b2c: r0 = exists()
    //     0x724b2c: bl              #0x719a08  ; [dart:io] _File::exists
    // 0x724b30: mov             x1, x0
    // 0x724b34: stur            x1, [fp, #-0x10]
    // 0x724b38: r0 = Await()
    //     0x724b38: bl              #0x3dd188  ; AwaitStub
    // 0x724b3c: r0 = ReturnAsync()
    //     0x724b3c: b               #0x427094  ; ReturnAsyncStub
    // 0x724b40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x724b40: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x724b44: b               #0x724a98
  }
  _ downloadFile(/* No info */) async {
    // ** addr: 0x7252c0, size: 0x928
    // 0x7252c0: EnterFrame
    //     0x7252c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7252c4: mov             fp, SP
    // 0x7252c8: AllocStack(0x150)
    //     0x7252c8: sub             SP, SP, #0x150
    // 0x7252cc: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0xc0 */, dynamic _ /* r2 => r2, fp-0xc8 */, {dynamic onProgress = Null /* r3, fp-0xb8 */})
    //     0x7252cc: stur            NULL, [fp, #-8]
    //     0x7252d0: stur            x1, [fp, #-0xc0]
    //     0x7252d4: stur            x2, [fp, #-0xc8]
    //     0x7252d8: ldur            w0, [x4, #0x13]
    //     0x7252dc: ldur            w3, [x4, #0x1f]
    //     0x7252e0: add             x3, x3, HEAP, lsl #32
    //     0x7252e4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16128] "onProgress"
    //     0x7252e8: ldr             x16, [x16, #0x128]
    //     0x7252ec: cmp             w3, w16
    //     0x7252f0: b.ne            #0x725310
    //     0x7252f4: ldur            w3, [x4, #0x23]
    //     0x7252f8: add             x3, x3, HEAP, lsl #32
    //     0x7252fc: sub             w4, w0, w3
    //     0x725300: add             x0, fp, w4, sxtw #2
    //     0x725304: ldr             x0, [x0, #8]
    //     0x725308: mov             x3, x0
    //     0x72530c: b               #0x725314
    //     0x725310: mov             x3, NULL
    //     0x725314: stur            x3, [fp, #-0xb8]
    // 0x725318: CheckStackOverflow
    //     0x725318: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72531c: cmp             SP, x16
    //     0x725320: b.ls            #0x725bd4
    // 0x725324: InitAsync() -> Future<String?>
    //     0x725324: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x725328: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72532c: ldur            x0, [fp, #-0xc0]
    // 0x725330: LoadField: r1 = r0->field_7
    //     0x725330: ldur            w1, [x0, #7]
    // 0x725334: DecompressPointer r1
    //     0x725334: add             x1, x1, HEAP, lsl #32
    // 0x725338: r0 = hasInternetConnection()
    //     0x725338: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72533c: mov             x1, x0
    // 0x725340: stur            x1, [fp, #-0xd0]
    // 0x725344: r0 = Await()
    //     0x725344: bl              #0x3dd188  ; AwaitStub
    // 0x725348: r16 = true
    //     0x725348: add             x16, NULL, #0x20  ; true
    // 0x72534c: cmp             w0, w16
    // 0x725350: b.ne            #0x725af0
    // 0x725354: ldur            x1, [fp, #-0xc0]
    // 0x725358: ldur            x2, [fp, #-0xc8]
    // 0x72535c: r0 = _getLocalFilePath()
    //     0x72535c: bl              #0x7248fc  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_getLocalFilePath
    // 0x725360: mov             x1, x0
    // 0x725364: stur            x1, [fp, #-0xd0]
    // 0x725368: r0 = Await()
    //     0x725368: bl              #0x3dd188  ; AwaitStub
    // 0x72536c: stur            x0, [fp, #-0xd0]
    // 0x725370: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x725370: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x725374: ldr             x0, [x0, #0x6d8]
    //     0x725378: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72537c: cmp             w0, w16
    //     0x725380: b.ne            #0x72538c
    //     0x725384: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x725388: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x72538c: stur            x0, [fp, #-0xd8]
    // 0x725390: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x725390: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x725394: ldr             x0, [x0, #0x850]
    //     0x725398: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72539c: cmp             w0, w16
    //     0x7253a0: b.ne            #0x7253b0
    //     0x7253a4: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x7253a8: ldr             x2, [x2, #0x918]
    //     0x7253ac: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7253b0: r0 = _File()
    //     0x7253b0: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x7253b4: mov             x2, x0
    // 0x7253b8: ldur            x0, [fp, #-0xd0]
    // 0x7253bc: stur            x2, [fp, #-0xd8]
    // 0x7253c0: StoreField: r2->field_7 = r0
    //     0x7253c0: stur            w0, [x2, #7]
    // 0x7253c4: mov             x1, x0
    // 0x7253c8: r0 = _toUtf8Array()
    //     0x7253c8: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x7253cc: ldur            x2, [fp, #-0xd8]
    // 0x7253d0: StoreField: r2->field_b = r0
    //     0x7253d0: stur            w0, [x2, #0xb]
    //     0x7253d4: ldurb           w16, [x2, #-1]
    //     0x7253d8: ldurb           w17, [x0, #-1]
    //     0x7253dc: and             x16, x17, x16, lsr #2
    //     0x7253e0: tst             x16, HEAP, lsr #32
    //     0x7253e4: b.eq            #0x7253ec
    //     0x7253e8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7253ec: mov             x1, x2
    // 0x7253f0: r0 = exists()
    //     0x7253f0: bl              #0x719a08  ; [dart:io] _File::exists
    // 0x7253f4: mov             x1, x0
    // 0x7253f8: stur            x1, [fp, #-0xe0]
    // 0x7253fc: r0 = Await()
    //     0x7253fc: bl              #0x3dd188  ; AwaitStub
    // 0x725400: r16 = true
    //     0x725400: add             x16, NULL, #0x20  ; true
    // 0x725404: cmp             w0, w16
    // 0x725408: b.ne            #0x725414
    // 0x72540c: ldur            x0, [fp, #-0xd0]
    // 0x725410: r0 = ReturnAsync()
    //     0x725410: b               #0x427094  ; ReturnAsyncStub
    // 0x725414: ldur            x0, [fp, #-0xc0]
    // 0x725418: ldur            x3, [fp, #-0xc8]
    // 0x72541c: r1 = Null
    //     0x72541c: mov             x1, NULL
    // 0x725420: r2 = 10
    //     0x725420: mov             x2, #0xa
    // 0x725424: r0 = AllocateArray()
    //     0x725424: bl              #0x9280a0  ; AllocateArrayStub
    // 0x725428: r16 = "https://hactapot.xyz"
    //     0x725428: add             x16, PP, #0x16, lsl #12  ; [pp+0x16140] "https://hactapot.xyz"
    //     0x72542c: ldr             x16, [x16, #0x140]
    // 0x725430: StoreField: r0->field_f = r16
    //     0x725430: stur            w16, [x0, #0xf]
    // 0x725434: r16 = "/"
    //     0x725434: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x725438: StoreField: r0->field_13 = r16
    //     0x725438: stur            w16, [x0, #0x13]
    // 0x72543c: r16 = "say_dualari"
    //     0x72543c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20010] "say_dualari"
    //     0x725440: ldr             x16, [x16, #0x10]
    // 0x725444: ArrayStore: r0[0] = r16  ; List_4
    //     0x725444: stur            w16, [x0, #0x17]
    // 0x725448: r16 = "/"
    //     0x725448: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x72544c: StoreField: r0->field_1b = r16
    //     0x72544c: stur            w16, [x0, #0x1b]
    // 0x725450: ldur            x2, [fp, #-0xc8]
    // 0x725454: StoreField: r0->field_1f = r2
    //     0x725454: stur            w2, [x0, #0x1f]
    // 0x725458: str             x0, [SP]
    // 0x72545c: r0 = _interpolate()
    //     0x72545c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x725460: mov             x2, x0
    // 0x725464: ldur            x0, [fp, #-0xc0]
    // 0x725468: r17 = -272
    //     0x725468: mov             x17, #-0x110
    // 0x72546c: str             x2, [fp, x17]
    // 0x725470: LoadField: r3 = r0->field_b
    //     0x725470: ldur            w3, [x0, #0xb]
    // 0x725474: DecompressPointer r3
    //     0x725474: add             x3, x3, HEAP, lsl #32
    // 0x725478: r17 = -264
    //     0x725478: mov             x17, #-0x108
    // 0x72547c: str             x3, [fp, x17]
    // 0x725480: r8 = 1
    //     0x725480: mov             x8, #1
    // 0x725484: r7 = Null
    //     0x725484: mov             x7, NULL
    // 0x725488: r6 = Null
    //     0x725488: mov             x6, NULL
    // 0x72548c: r5 = Null
    //     0x72548c: mov             x5, NULL
    // 0x725490: r4 = Null
    //     0x725490: mov             x4, NULL
    // 0x725494: stur            x8, [fp, #-0xe8]
    // 0x725498: stur            x7, [fp, #-0xe0]
    // 0x72549c: stur            x6, [fp, #-0xf0]
    // 0x7254a0: stur            x5, [fp, #-0xf8]
    // 0x7254a4: stur            x4, [fp, #-0x100]
    // 0x7254a8: CheckStackOverflow
    //     0x7254a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7254ac: cmp             SP, x16
    //     0x7254b0: b.ls            #0x725bdc
    // 0x7254b4: cmp             x8, #3
    // 0x7254b8: b.gt            #0x725a60
    // 0x7254bc: mov             x1, x2
    // 0x7254c0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7254c0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7254c4: r0 = parse()
    //     0x7254c4: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x7254c8: r1 = Null
    //     0x7254c8: mov             x1, NULL
    // 0x7254cc: r2 = 12
    //     0x7254cc: mov             x2, #0xc
    // 0x7254d0: r17 = -280
    //     0x7254d0: mov             x17, #-0x118
    // 0x7254d4: str             x0, [fp, x17]
    // 0x7254d8: r0 = AllocateArray()
    //     0x7254d8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7254dc: r16 = "Accept"
    //     0x7254dc: add             x16, PP, #0x16, lsl #12  ; [pp+0x16150] "Accept"
    //     0x7254e0: ldr             x16, [x16, #0x150]
    // 0x7254e4: StoreField: r0->field_f = r16
    //     0x7254e4: stur            w16, [x0, #0xf]
    // 0x7254e8: r16 = "image/*"
    //     0x7254e8: add             x16, PP, #0x20, lsl #12  ; [pp+0x20018] "image/*"
    //     0x7254ec: ldr             x16, [x16, #0x18]
    // 0x7254f0: StoreField: r0->field_13 = r16
    //     0x7254f0: stur            w16, [x0, #0x13]
    // 0x7254f4: r16 = "Connection"
    //     0x7254f4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16160] "Connection"
    //     0x7254f8: ldr             x16, [x16, #0x160]
    // 0x7254fc: ArrayStore: r0[0] = r16  ; List_4
    //     0x7254fc: stur            w16, [x0, #0x17]
    // 0x725500: r16 = "keep-alive"
    //     0x725500: add             x16, PP, #0x16, lsl #12  ; [pp+0x16168] "keep-alive"
    //     0x725504: ldr             x16, [x16, #0x168]
    // 0x725508: StoreField: r0->field_1b = r16
    //     0x725508: stur            w16, [x0, #0x1b]
    // 0x72550c: r16 = "User-Agent"
    //     0x72550c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16170] "User-Agent"
    //     0x725510: ldr             x16, [x16, #0x170]
    // 0x725514: StoreField: r0->field_1f = r16
    //     0x725514: stur            w16, [x0, #0x1f]
    // 0x725518: r16 = "UmremApp/1.0"
    //     0x725518: add             x16, PP, #0x16, lsl #12  ; [pp+0x16178] "UmremApp/1.0"
    //     0x72551c: ldr             x16, [x16, #0x178]
    // 0x725520: StoreField: r0->field_23 = r16
    //     0x725520: stur            w16, [x0, #0x23]
    // 0x725524: r16 = <String, String>
    //     0x725524: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x725528: ldr             x16, [x16, #0x2a8]
    // 0x72552c: stp             x0, x16, [SP]
    // 0x725530: r0 = Map._fromLiteral()
    //     0x725530: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x725534: r17 = -264
    //     0x725534: mov             x17, #-0x108
    // 0x725538: ldr             x1, [fp, x17]
    // 0x72553c: r17 = -280
    //     0x72553c: mov             x17, #-0x118
    // 0x725540: ldr             x2, [fp, x17]
    // 0x725544: mov             x3, x0
    // 0x725548: r17 = -288
    //     0x725548: mov             x17, #-0x120
    // 0x72554c: str             x0, [fp, x17]
    // 0x725550: r0 = _sendUnstreamed()
    //     0x725550: bl              #0x6ffbd4  ; [package:http/src/base_client.dart] BaseClient::_sendUnstreamed
    // 0x725554: r16 = Instance_Duration
    //     0x725554: add             x16, PP, #0x16, lsl #12  ; [pp+0x16180] Obj!Duration@a2dea1
    //     0x725558: ldr             x16, [x16, #0x180]
    // 0x72555c: stp             x16, x0, [SP]
    // 0x725560: r4 = const [0, 0x2, 0x2, 0x2, null]
    //     0x725560: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    // 0x725564: r0 = timeout()
    //     0x725564: bl              #0x3cbc8c  ; [dart:async] _Future::timeout
    // 0x725568: mov             x1, x0
    // 0x72556c: r17 = -280
    //     0x72556c: mov             x17, #-0x118
    // 0x725570: str             x1, [fp, x17]
    // 0x725574: r0 = Await()
    //     0x725574: bl              #0x3dd188  ; AwaitStub
    // 0x725578: r17 = -280
    //     0x725578: mov             x17, #-0x118
    // 0x72557c: str             x0, [fp, x17]
    // 0x725580: cmp             w0, NULL
    // 0x725584: b.eq            #0x725be4
    // 0x725588: LoadField: r3 = r0->field_b
    //     0x725588: ldur            x3, [x0, #0xb]
    // 0x72558c: r17 = -296
    //     0x72558c: mov             x17, #-0x128
    // 0x725590: str             x3, [fp, x17]
    // 0x725594: cmp             x3, #0xc8
    // 0x725598: b.eq            #0x7256d8
    // 0x72559c: cmp             x3, #0x1f4
    // 0x7255a0: b.lt            #0x725b14
    // 0x7255a4: ldur            x4, [fp, #-0xe8]
    // 0x7255a8: r1 = Null
    //     0x7255a8: mov             x1, NULL
    // 0x7255ac: r2 = 4
    //     0x7255ac: mov             x2, #4
    // 0x7255b0: r0 = AllocateArray()
    //     0x7255b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7255b4: mov             x2, x0
    // 0x7255b8: r16 = "Sunucu hatası: "
    //     0x7255b8: add             x16, PP, #0x16, lsl #12  ; [pp+0x16188] "Sunucu hatası: "
    //     0x7255bc: ldr             x16, [x16, #0x188]
    // 0x7255c0: StoreField: r2->field_f = r16
    //     0x7255c0: stur            w16, [x2, #0xf]
    // 0x7255c4: r17 = -296
    //     0x7255c4: mov             x17, #-0x128
    // 0x7255c8: ldr             x3, [fp, x17]
    // 0x7255cc: r0 = BoxInt64Instr(r3)
    //     0x7255cc: sbfiz           x0, x3, #1, #0x1f
    //     0x7255d0: cmp             x3, x0, asr #1
    //     0x7255d4: b.eq            #0x7255e0
    //     0x7255d8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7255dc: stur            x3, [x0, #7]
    // 0x7255e0: StoreField: r2->field_13 = r0
    //     0x7255e0: stur            w0, [x2, #0x13]
    // 0x7255e4: str             x2, [SP]
    // 0x7255e8: r0 = _interpolate()
    //     0x7255e8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7255ec: r17 = -288
    //     0x7255ec: mov             x17, #-0x120
    // 0x7255f0: str             x0, [fp, x17]
    // 0x7255f4: r0 = _Exception()
    //     0x7255f4: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x7255f8: mov             x1, x0
    // 0x7255fc: r17 = -288
    //     0x7255fc: mov             x17, #-0x120
    // 0x725600: ldr             x0, [fp, x17]
    // 0x725604: r17 = -304
    //     0x725604: mov             x17, #-0x130
    // 0x725608: str             x1, [fp, x17]
    // 0x72560c: StoreField: r1->field_7 = r0
    //     0x72560c: stur            w0, [x1, #7]
    // 0x725610: ldur            x0, [fp, #-0xe8]
    // 0x725614: cmp             x0, #3
    // 0x725618: b.ge            #0x7256bc
    // 0x72561c: r0 = Duration()
    //     0x72561c: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x725620: mov             x3, x0
    // 0x725624: ldur            x2, [fp, #-0xe8]
    // 0x725628: r17 = -288
    //     0x725628: mov             x17, #-0x120
    // 0x72562c: str             x3, [fp, x17]
    // 0x725630: r16 = 2000000
    //     0x725630: mov             x16, #0x8480
    //     0x725634: movk            x16, #0x1e, lsl #16
    // 0x725638: mul             x4, x2, x16
    // 0x72563c: r0 = BoxInt64Instr(r4)
    //     0x72563c: sbfiz           x0, x4, #1, #0x1f
    //     0x725640: cmp             x4, x0, asr #1
    //     0x725644: b.eq            #0x725650
    //     0x725648: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72564c: stur            x4, [x0, #7]
    // 0x725650: r1 = 60
    //     0x725650: mov             x1, #0x3c
    // 0x725654: branchIfSmi(r0, 0x725660)
    //     0x725654: tbz             w0, #0, #0x725660
    // 0x725658: r1 = LoadClassIdInstr(r0)
    //     0x725658: ldur            x1, [x0, #-1]
    //     0x72565c: ubfx            x1, x1, #0xc, #0x14
    // 0x725660: mov             x16, x0
    // 0x725664: mov             x0, x1
    // 0x725668: mov             x1, x16
    // 0x72566c: r0 = GDT[cid_x0 + -0xff9]()
    //     0x72566c: sub             lr, x0, #0xff9
    //     0x725670: ldr             lr, [x21, lr, lsl #3]
    //     0x725674: blr             lr
    // 0x725678: r17 = -288
    //     0x725678: mov             x17, #-0x120
    // 0x72567c: ldr             x2, [fp, x17]
    // 0x725680: StoreField: r2->field_7 = r0
    //     0x725680: stur            x0, [x2, #7]
    // 0x725684: r1 = Null
    //     0x725684: mov             x1, NULL
    // 0x725688: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x725688: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72568c: r0 = Future.delayed()
    //     0x72568c: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x725690: mov             x1, x0
    // 0x725694: r17 = -288
    //     0x725694: mov             x17, #-0x120
    // 0x725698: str             x1, [fp, x17]
    // 0x72569c: r0 = Await()
    //     0x72569c: bl              #0x3dd188  ; AwaitStub
    // 0x7256a0: r17 = -304
    //     0x7256a0: mov             x17, #-0x130
    // 0x7256a4: ldr             x4, [fp, x17]
    // 0x7256a8: ldur            x7, [fp, #-0xe0]
    // 0x7256ac: ldur            x6, [fp, #-0xf0]
    // 0x7256b0: r17 = -280
    //     0x7256b0: mov             x17, #-0x118
    // 0x7256b4: ldr             x5, [fp, x17]
    // 0x7256b8: b               #0x725a40
    // 0x7256bc: r17 = -304
    //     0x7256bc: mov             x17, #-0x130
    // 0x7256c0: ldr             x3, [fp, x17]
    // 0x7256c4: ldur            x2, [fp, #-0xe0]
    // 0x7256c8: ldur            x1, [fp, #-0xf0]
    // 0x7256cc: r17 = -280
    //     0x7256cc: mov             x17, #-0x118
    // 0x7256d0: ldr             x0, [fp, x17]
    // 0x7256d4: b               #0x725a30
    // 0x7256d8: r17 = -280
    //     0x7256d8: mov             x17, #-0x118
    // 0x7256dc: ldr             x0, [fp, x17]
    // 0x7256e0: b               #0x725a64
    // 0x7256e4: sub             SP, fp, #0x150
    // 0x7256e8: mov             x4, x0
    // 0x7256ec: mov             x3, x1
    // 0x7256f0: r17 = -288
    //     0x7256f0: mov             x17, #-0x120
    // 0x7256f4: str             x0, [fp, x17]
    // 0x7256f8: r17 = -304
    //     0x7256f8: mov             x17, #-0x130
    // 0x7256fc: str             x1, [fp, x17]
    // 0x725700: r2 = Null
    //     0x725700: mov             x2, NULL
    // 0x725704: r1 = Null
    //     0x725704: mov             x1, NULL
    // 0x725708: cmp             w0, NULL
    // 0x72570c: b.eq            #0x72572c
    // 0x725710: branchIfSmi(r0, 0x72572c)
    //     0x725710: tbz             w0, #0, #0x72572c
    // 0x725714: r3 = LoadClassIdInstr(r0)
    //     0x725714: ldur            x3, [x0, #-1]
    //     0x725718: ubfx            x3, x3, #0xc, #0x14
    // 0x72571c: cmp             x3, #0x150
    // 0x725720: b.eq            #0x725734
    // 0x725724: cmp             x3, #0xfe6
    // 0x725728: b.eq            #0x725734
    // 0x72572c: r0 = false
    //     0x72572c: add             x0, NULL, #0x30  ; false
    // 0x725730: b               #0x725738
    // 0x725734: r0 = true
    //     0x725734: add             x0, NULL, #0x20  ; true
    // 0x725738: tbnz            w0, #4, #0x725810
    // 0x72573c: ldur            x0, [fp, #-0xe8]
    // 0x725740: cmp             x0, #3
    // 0x725744: b.ge            #0x7257f0
    // 0x725748: ldur            x1, [fp, #-0xb0]
    // 0x72574c: r0 = Duration()
    //     0x72574c: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x725750: mov             x3, x0
    // 0x725754: ldur            x2, [fp, #-0xe8]
    // 0x725758: r17 = -312
    //     0x725758: mov             x17, #-0x138
    // 0x72575c: str             x3, [fp, x17]
    // 0x725760: r16 = 2000000
    //     0x725760: mov             x16, #0x8480
    //     0x725764: movk            x16, #0x1e, lsl #16
    // 0x725768: mul             x4, x2, x16
    // 0x72576c: r0 = BoxInt64Instr(r4)
    //     0x72576c: sbfiz           x0, x4, #1, #0x1f
    //     0x725770: cmp             x4, x0, asr #1
    //     0x725774: b.eq            #0x725780
    //     0x725778: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72577c: stur            x4, [x0, #7]
    // 0x725780: r1 = 60
    //     0x725780: mov             x1, #0x3c
    // 0x725784: branchIfSmi(r0, 0x725790)
    //     0x725784: tbz             w0, #0, #0x725790
    // 0x725788: r1 = LoadClassIdInstr(r0)
    //     0x725788: ldur            x1, [x0, #-1]
    //     0x72578c: ubfx            x1, x1, #0xc, #0x14
    // 0x725790: mov             x16, x0
    // 0x725794: mov             x0, x1
    // 0x725798: mov             x1, x16
    // 0x72579c: r0 = GDT[cid_x0 + -0xff9]()
    //     0x72579c: sub             lr, x0, #0xff9
    //     0x7257a0: ldr             lr, [x21, lr, lsl #3]
    //     0x7257a4: blr             lr
    // 0x7257a8: r17 = -312
    //     0x7257a8: mov             x17, #-0x138
    // 0x7257ac: ldr             x2, [fp, x17]
    // 0x7257b0: StoreField: r2->field_7 = r0
    //     0x7257b0: stur            x0, [x2, #7]
    // 0x7257b4: r1 = Null
    //     0x7257b4: mov             x1, NULL
    // 0x7257b8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7257b8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7257bc: r0 = Future.delayed()
    //     0x7257bc: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x7257c0: mov             x1, x0
    // 0x7257c4: r17 = -312
    //     0x7257c4: mov             x17, #-0x138
    // 0x7257c8: str             x1, [fp, x17]
    // 0x7257cc: r0 = Await()
    //     0x7257cc: bl              #0x3dd188  ; AwaitStub
    // 0x7257d0: r17 = -288
    //     0x7257d0: mov             x17, #-0x120
    // 0x7257d4: ldr             x4, [fp, x17]
    // 0x7257d8: r17 = -288
    //     0x7257d8: mov             x17, #-0x120
    // 0x7257dc: ldr             x7, [fp, x17]
    // 0x7257e0: r17 = -304
    //     0x7257e0: mov             x17, #-0x130
    // 0x7257e4: ldr             x6, [fp, x17]
    // 0x7257e8: ldur            x5, [fp, #-0xb0]
    // 0x7257ec: b               #0x725a40
    // 0x7257f0: r17 = -288
    //     0x7257f0: mov             x17, #-0x120
    // 0x7257f4: ldr             x3, [fp, x17]
    // 0x7257f8: r17 = -288
    //     0x7257f8: mov             x17, #-0x120
    // 0x7257fc: ldr             x2, [fp, x17]
    // 0x725800: r17 = -304
    //     0x725800: mov             x17, #-0x130
    // 0x725804: ldr             x1, [fp, x17]
    // 0x725808: ldur            x0, [fp, #-0xb0]
    // 0x72580c: b               #0x725a30
    // 0x725810: r17 = -288
    //     0x725810: mov             x17, #-0x120
    // 0x725814: ldr             x0, [fp, x17]
    // 0x725818: r1 = 60
    //     0x725818: mov             x1, #0x3c
    // 0x72581c: branchIfSmi(r0, 0x725828)
    //     0x72581c: tbz             w0, #0, #0x725828
    // 0x725820: r1 = LoadClassIdInstr(r0)
    //     0x725820: ldur            x1, [x0, #-1]
    //     0x725824: ubfx            x1, x1, #0xc, #0x14
    // 0x725828: r17 = 4570
    //     0x725828: mov             x17, #0x11da
    // 0x72582c: cmp             x1, x17
    // 0x725830: b.ne            #0x725958
    // 0x725834: ldur            x3, [fp, #-0xe8]
    // 0x725838: r1 = Null
    //     0x725838: mov             x1, NULL
    // 0x72583c: r2 = 4
    //     0x72583c: mov             x2, #4
    // 0x725840: r0 = AllocateArray()
    //     0x725840: bl              #0x9280a0  ; AllocateArrayStub
    // 0x725844: r16 = "Zaman aşımı: "
    //     0x725844: add             x16, PP, #0x16, lsl #12  ; [pp+0x16190] "Zaman aşımı: "
    //     0x725848: ldr             x16, [x16, #0x190]
    // 0x72584c: StoreField: r0->field_f = r16
    //     0x72584c: stur            w16, [x0, #0xf]
    // 0x725850: r17 = -288
    //     0x725850: mov             x17, #-0x120
    // 0x725854: ldr             x1, [fp, x17]
    // 0x725858: StoreField: r0->field_13 = r1
    //     0x725858: stur            w1, [x0, #0x13]
    // 0x72585c: str             x0, [SP]
    // 0x725860: r0 = _interpolate()
    //     0x725860: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x725864: r17 = -312
    //     0x725864: mov             x17, #-0x138
    // 0x725868: str             x0, [fp, x17]
    // 0x72586c: r0 = _Exception()
    //     0x72586c: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x725870: mov             x1, x0
    // 0x725874: r17 = -312
    //     0x725874: mov             x17, #-0x138
    // 0x725878: ldr             x0, [fp, x17]
    // 0x72587c: r17 = -320
    //     0x72587c: mov             x17, #-0x140
    // 0x725880: str             x1, [fp, x17]
    // 0x725884: StoreField: r1->field_7 = r0
    //     0x725884: stur            w0, [x1, #7]
    // 0x725888: ldur            x0, [fp, #-0xe8]
    // 0x72588c: cmp             x0, #3
    // 0x725890: b.ge            #0x725938
    // 0x725894: r0 = Duration()
    //     0x725894: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x725898: mov             x3, x0
    // 0x72589c: ldur            x2, [fp, #-0xe8]
    // 0x7258a0: r17 = -312
    //     0x7258a0: mov             x17, #-0x138
    // 0x7258a4: str             x3, [fp, x17]
    // 0x7258a8: r16 = 2000000
    //     0x7258a8: mov             x16, #0x8480
    //     0x7258ac: movk            x16, #0x1e, lsl #16
    // 0x7258b0: mul             x4, x2, x16
    // 0x7258b4: r0 = BoxInt64Instr(r4)
    //     0x7258b4: sbfiz           x0, x4, #1, #0x1f
    //     0x7258b8: cmp             x4, x0, asr #1
    //     0x7258bc: b.eq            #0x7258c8
    //     0x7258c0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7258c4: stur            x4, [x0, #7]
    // 0x7258c8: r1 = 60
    //     0x7258c8: mov             x1, #0x3c
    // 0x7258cc: branchIfSmi(r0, 0x7258d8)
    //     0x7258cc: tbz             w0, #0, #0x7258d8
    // 0x7258d0: r1 = LoadClassIdInstr(r0)
    //     0x7258d0: ldur            x1, [x0, #-1]
    //     0x7258d4: ubfx            x1, x1, #0xc, #0x14
    // 0x7258d8: mov             x16, x0
    // 0x7258dc: mov             x0, x1
    // 0x7258e0: mov             x1, x16
    // 0x7258e4: r0 = GDT[cid_x0 + -0xff9]()
    //     0x7258e4: sub             lr, x0, #0xff9
    //     0x7258e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7258ec: blr             lr
    // 0x7258f0: r17 = -312
    //     0x7258f0: mov             x17, #-0x138
    // 0x7258f4: ldr             x2, [fp, x17]
    // 0x7258f8: StoreField: r2->field_7 = r0
    //     0x7258f8: stur            x0, [x2, #7]
    // 0x7258fc: r1 = Null
    //     0x7258fc: mov             x1, NULL
    // 0x725900: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x725900: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x725904: r0 = Future.delayed()
    //     0x725904: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x725908: mov             x1, x0
    // 0x72590c: r17 = -312
    //     0x72590c: mov             x17, #-0x138
    // 0x725910: str             x1, [fp, x17]
    // 0x725914: r0 = Await()
    //     0x725914: bl              #0x3dd188  ; AwaitStub
    // 0x725918: r17 = -320
    //     0x725918: mov             x17, #-0x140
    // 0x72591c: ldr             x4, [fp, x17]
    // 0x725920: r17 = -288
    //     0x725920: mov             x17, #-0x120
    // 0x725924: ldr             x7, [fp, x17]
    // 0x725928: r17 = -304
    //     0x725928: mov             x17, #-0x130
    // 0x72592c: ldr             x6, [fp, x17]
    // 0x725930: ldur            x5, [fp, #-0xb0]
    // 0x725934: b               #0x725a40
    // 0x725938: r17 = -320
    //     0x725938: mov             x17, #-0x140
    // 0x72593c: ldr             x3, [fp, x17]
    // 0x725940: r17 = -288
    //     0x725940: mov             x17, #-0x120
    // 0x725944: ldr             x2, [fp, x17]
    // 0x725948: r17 = -304
    //     0x725948: mov             x17, #-0x130
    // 0x72594c: ldr             x1, [fp, x17]
    // 0x725950: ldur            x0, [fp, #-0xb0]
    // 0x725954: b               #0x725a30
    // 0x725958: sub             x16, x1, #0x14f
    // 0x72595c: cmp             x16, #2
    // 0x725960: b.hi            #0x725b84
    // 0x725964: ldur            x0, [fp, #-0xe8]
    // 0x725968: cmp             x0, #3
    // 0x72596c: b.ge            #0x725a14
    // 0x725970: r0 = Duration()
    //     0x725970: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x725974: mov             x3, x0
    // 0x725978: ldur            x2, [fp, #-0xe8]
    // 0x72597c: r17 = -312
    //     0x72597c: mov             x17, #-0x138
    // 0x725980: str             x3, [fp, x17]
    // 0x725984: r16 = 2000000
    //     0x725984: mov             x16, #0x8480
    //     0x725988: movk            x16, #0x1e, lsl #16
    // 0x72598c: mul             x4, x2, x16
    // 0x725990: r0 = BoxInt64Instr(r4)
    //     0x725990: sbfiz           x0, x4, #1, #0x1f
    //     0x725994: cmp             x4, x0, asr #1
    //     0x725998: b.eq            #0x7259a4
    //     0x72599c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7259a0: stur            x4, [x0, #7]
    // 0x7259a4: r1 = 60
    //     0x7259a4: mov             x1, #0x3c
    // 0x7259a8: branchIfSmi(r0, 0x7259b4)
    //     0x7259a8: tbz             w0, #0, #0x7259b4
    // 0x7259ac: r1 = LoadClassIdInstr(r0)
    //     0x7259ac: ldur            x1, [x0, #-1]
    //     0x7259b0: ubfx            x1, x1, #0xc, #0x14
    // 0x7259b4: mov             x16, x0
    // 0x7259b8: mov             x0, x1
    // 0x7259bc: mov             x1, x16
    // 0x7259c0: r0 = GDT[cid_x0 + -0xff9]()
    //     0x7259c0: sub             lr, x0, #0xff9
    //     0x7259c4: ldr             lr, [x21, lr, lsl #3]
    //     0x7259c8: blr             lr
    // 0x7259cc: r17 = -312
    //     0x7259cc: mov             x17, #-0x138
    // 0x7259d0: ldr             x2, [fp, x17]
    // 0x7259d4: StoreField: r2->field_7 = r0
    //     0x7259d4: stur            x0, [x2, #7]
    // 0x7259d8: r1 = Null
    //     0x7259d8: mov             x1, NULL
    // 0x7259dc: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7259dc: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7259e0: r0 = Future.delayed()
    //     0x7259e0: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x7259e4: mov             x1, x0
    // 0x7259e8: r17 = -312
    //     0x7259e8: mov             x17, #-0x138
    // 0x7259ec: str             x1, [fp, x17]
    // 0x7259f0: r0 = Await()
    //     0x7259f0: bl              #0x3dd188  ; AwaitStub
    // 0x7259f4: r17 = -288
    //     0x7259f4: mov             x17, #-0x120
    // 0x7259f8: ldr             x4, [fp, x17]
    // 0x7259fc: r17 = -288
    //     0x7259fc: mov             x17, #-0x120
    // 0x725a00: ldr             x7, [fp, x17]
    // 0x725a04: r17 = -304
    //     0x725a04: mov             x17, #-0x130
    // 0x725a08: ldr             x6, [fp, x17]
    // 0x725a0c: ldur            x5, [fp, #-0xb0]
    // 0x725a10: b               #0x725a40
    // 0x725a14: r17 = -288
    //     0x725a14: mov             x17, #-0x120
    // 0x725a18: ldr             x3, [fp, x17]
    // 0x725a1c: r17 = -288
    //     0x725a1c: mov             x17, #-0x120
    // 0x725a20: ldr             x2, [fp, x17]
    // 0x725a24: r17 = -304
    //     0x725a24: mov             x17, #-0x130
    // 0x725a28: ldr             x1, [fp, x17]
    // 0x725a2c: ldur            x0, [fp, #-0xb0]
    // 0x725a30: mov             x4, x3
    // 0x725a34: mov             x7, x2
    // 0x725a38: mov             x6, x1
    // 0x725a3c: mov             x5, x0
    // 0x725a40: ldur            x0, [fp, #-0xe8]
    // 0x725a44: add             x8, x0, #1
    // 0x725a48: ldur            x0, [fp, #-0xc0]
    // 0x725a4c: r17 = -272
    //     0x725a4c: mov             x17, #-0x110
    // 0x725a50: ldr             x2, [fp, x17]
    // 0x725a54: r17 = -264
    //     0x725a54: mov             x17, #-0x108
    // 0x725a58: ldr             x3, [fp, x17]
    // 0x725a5c: b               #0x725494
    // 0x725a60: ldur            x0, [fp, #-0xf8]
    // 0x725a64: stur            x0, [fp, #-0xf8]
    // 0x725a68: cmp             w0, NULL
    // 0x725a6c: b.eq            #0x725b9c
    // 0x725a70: LoadField: r1 = r0->field_b
    //     0x725a70: ldur            x1, [x0, #0xb]
    // 0x725a74: cmp             x1, #0xc8
    // 0x725a78: b.ne            #0x725b9c
    // 0x725a7c: ldur            x3, [fp, #-0xb8]
    // 0x725a80: LoadField: r2 = r0->field_27
    //     0x725a80: ldur            w2, [x0, #0x27]
    // 0x725a84: DecompressPointer r2
    //     0x725a84: add             x2, x2, HEAP, lsl #32
    // 0x725a88: ldur            x1, [fp, #-0xd8]
    // 0x725a8c: r0 = writeAsBytes()
    //     0x725a8c: bl              #0x6fe51c  ; [dart:io] _File::writeAsBytes
    // 0x725a90: mov             x1, x0
    // 0x725a94: r17 = -312
    //     0x725a94: mov             x17, #-0x138
    // 0x725a98: str             x1, [fp, x17]
    // 0x725a9c: r0 = Await()
    //     0x725a9c: bl              #0x3dd188  ; AwaitStub
    // 0x725aa0: ldur            x1, [fp, #-0xb8]
    // 0x725aa4: cmp             w1, NULL
    // 0x725aa8: b.eq            #0x725ac4
    // 0x725aac: r16 = 1.000000
    //     0x725aac: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x725ab0: stp             x16, x1, [SP]
    // 0x725ab4: mov             x0, x1
    // 0x725ab8: ClosureCall
    //     0x725ab8: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x725abc: ldur            x2, [x0, #0x1f]
    //     0x725ac0: blr             x2
    // 0x725ac4: ldur            x1, [fp, #-0xc0]
    // 0x725ac8: ldur            x2, [fp, #-0xc8]
    // 0x725acc: r0 = _markFileAsDownloaded()
    //     0x725acc: bl              #0x725be8  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_markFileAsDownloaded
    // 0x725ad0: mov             x1, x0
    // 0x725ad4: stur            x1, [fp, #-0xf8]
    // 0x725ad8: r0 = Await()
    //     0x725ad8: bl              #0x3dd188  ; AwaitStub
    // 0x725adc: ldur            x0, [fp, #-0xd0]
    // 0x725ae0: r0 = ReturnAsync()
    //     0x725ae0: b               #0x427094  ; ReturnAsyncStub
    // 0x725ae4: sub             SP, fp, #0x150
    // 0x725ae8: r0 = Null
    //     0x725ae8: mov             x0, NULL
    // 0x725aec: r0 = ReturnAsyncNotFuture()
    //     0x725aec: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x725af0: r0 = _Exception()
    //     0x725af0: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x725af4: mov             x1, x0
    // 0x725af8: r0 = "İnternet bağlantısı yok"
    //     0x725af8: add             x0, PP, #0x16, lsl #12  ; [pp+0x16198] "İnternet bağlantısı yok"
    //     0x725afc: ldr             x0, [x0, #0x198]
    // 0x725b00: stur            x1, [fp, #-0xf8]
    // 0x725b04: StoreField: r1->field_7 = r0
    //     0x725b04: stur            w0, [x1, #7]
    // 0x725b08: mov             x0, x1
    // 0x725b0c: r0 = Throw()
    //     0x725b0c: bl              #0x926328  ; ThrowStub
    // 0x725b10: brk             #0
    // 0x725b14: ldur            x0, [fp, #-0xe8]
    // 0x725b18: r1 = Null
    //     0x725b18: mov             x1, NULL
    // 0x725b1c: r2 = 4
    //     0x725b1c: mov             x2, #4
    // 0x725b20: r0 = AllocateArray()
    //     0x725b20: bl              #0x9280a0  ; AllocateArrayStub
    // 0x725b24: mov             x2, x0
    // 0x725b28: r16 = "İndirme hatası: "
    //     0x725b28: add             x16, PP, #0x16, lsl #12  ; [pp+0x161a0] "İndirme hatası: "
    //     0x725b2c: ldr             x16, [x16, #0x1a0]
    // 0x725b30: StoreField: r2->field_f = r16
    //     0x725b30: stur            w16, [x2, #0xf]
    // 0x725b34: r17 = -296
    //     0x725b34: mov             x17, #-0x128
    // 0x725b38: ldr             x3, [fp, x17]
    // 0x725b3c: r0 = BoxInt64Instr(r3)
    //     0x725b3c: sbfiz           x0, x3, #1, #0x1f
    //     0x725b40: cmp             x3, x0, asr #1
    //     0x725b44: b.eq            #0x725b50
    //     0x725b48: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x725b4c: stur            x3, [x0, #7]
    // 0x725b50: StoreField: r2->field_13 = r0
    //     0x725b50: stur            w0, [x2, #0x13]
    // 0x725b54: str             x2, [SP]
    // 0x725b58: r0 = _interpolate()
    //     0x725b58: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x725b5c: stur            x0, [fp, #-0xf8]
    // 0x725b60: r0 = _Exception()
    //     0x725b60: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x725b64: mov             x1, x0
    // 0x725b68: ldur            x0, [fp, #-0xf8]
    // 0x725b6c: r17 = -312
    //     0x725b6c: mov             x17, #-0x138
    // 0x725b70: str             x1, [fp, x17]
    // 0x725b74: StoreField: r1->field_7 = r0
    //     0x725b74: stur            w0, [x1, #7]
    // 0x725b78: mov             x0, x1
    // 0x725b7c: r0 = Throw()
    //     0x725b7c: bl              #0x926328  ; ThrowStub
    // 0x725b80: brk             #0
    // 0x725b84: r17 = -288
    //     0x725b84: mov             x17, #-0x120
    // 0x725b88: ldr             x0, [fp, x17]
    // 0x725b8c: r17 = -304
    //     0x725b8c: mov             x17, #-0x130
    // 0x725b90: ldr             x1, [fp, x17]
    // 0x725b94: r0 = ReThrow()
    //     0x725b94: bl              #0x9262fc  ; ReThrowStub
    // 0x725b98: brk             #0
    // 0x725b9c: ldur            x0, [fp, #-0x100]
    // 0x725ba0: cmp             w0, NULL
    // 0x725ba4: b.ne            #0x725bc0
    // 0x725ba8: r0 = _Exception()
    //     0x725ba8: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x725bac: mov             x1, x0
    // 0x725bb0: r0 = "İndirme başarısız"
    //     0x725bb0: add             x0, PP, #0x16, lsl #12  ; [pp+0x161a8] "İndirme başarısız"
    //     0x725bb4: ldr             x0, [x0, #0x1a8]
    // 0x725bb8: StoreField: r1->field_7 = r0
    //     0x725bb8: stur            w0, [x1, #7]
    // 0x725bbc: b               #0x725bc4
    // 0x725bc0: mov             x1, x0
    // 0x725bc4: mov             x0, x1
    // 0x725bc8: stur            x1, [fp, #-0xb8]
    // 0x725bcc: r0 = Throw()
    //     0x725bcc: bl              #0x926328  ; ThrowStub
    // 0x725bd0: brk             #0
    // 0x725bd4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x725bd4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x725bd8: b               #0x725324
    // 0x725bdc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x725bdc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x725be0: b               #0x7254b4
    // 0x725be4: r0 = NullErrorSharedWithoutFPURegs()
    //     0x725be4: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  _ _markFileAsDownloaded(/* No info */) async {
    // ** addr: 0x725be8, size: 0x154
    // 0x725be8: EnterFrame
    //     0x725be8: stp             fp, lr, [SP, #-0x10]!
    //     0x725bec: mov             fp, SP
    // 0x725bf0: AllocStack(0x28)
    //     0x725bf0: sub             SP, SP, #0x28
    // 0x725bf4: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x725bf4: stur            NULL, [fp, #-8]
    //     0x725bf8: stur            x1, [fp, #-0x10]
    //     0x725bfc: stur            x2, [fp, #-0x18]
    // 0x725c00: CheckStackOverflow
    //     0x725c00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x725c04: cmp             SP, x16
    //     0x725c08: b.ls            #0x725d34
    // 0x725c0c: InitAsync() -> Future<void?>
    //     0x725c0c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x725c10: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x725c14: r0 = getInstance()
    //     0x725c14: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x725c18: mov             x1, x0
    // 0x725c1c: stur            x1, [fp, #-0x20]
    // 0x725c20: r0 = Await()
    //     0x725c20: bl              #0x3dd188  ; AwaitStub
    // 0x725c24: mov             x1, x0
    // 0x725c28: r2 = "downloaded_say_dualari_files"
    //     0x725c28: add             x2, PP, #0x20, lsl #12  ; [pp+0x20020] "downloaded_say_dualari_files"
    //     0x725c2c: ldr             x2, [x2, #0x20]
    // 0x725c30: stur            x0, [fp, #-0x10]
    // 0x725c34: r0 = getStringList()
    //     0x725c34: bl              #0x6fe404  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getStringList
    // 0x725c38: cmp             w0, NULL
    // 0x725c3c: b.ne            #0x725c4c
    // 0x725c40: r1 = <String>
    //     0x725c40: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x725c44: r2 = 0
    //     0x725c44: mov             x2, #0
    // 0x725c48: r0 = _GrowableList()
    //     0x725c48: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x725c4c: mov             x1, x0
    // 0x725c50: ldur            x2, [fp, #-0x18]
    // 0x725c54: stur            x0, [fp, #-0x20]
    // 0x725c58: r0 = contains()
    //     0x725c58: bl              #0x4ea038  ; [dart:collection] ListBase::contains
    // 0x725c5c: tbz             w0, #4, #0x725d2c
    // 0x725c60: ldur            x3, [fp, #-0x20]
    // 0x725c64: LoadField: r2 = r3->field_7
    //     0x725c64: ldur            w2, [x3, #7]
    // 0x725c68: DecompressPointer r2
    //     0x725c68: add             x2, x2, HEAP, lsl #32
    // 0x725c6c: ldur            x0, [fp, #-0x18]
    // 0x725c70: r1 = Null
    //     0x725c70: mov             x1, NULL
    // 0x725c74: cmp             w2, NULL
    // 0x725c78: b.eq            #0x725c98
    // 0x725c7c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x725c7c: ldur            w4, [x2, #0x17]
    // 0x725c80: DecompressPointer r4
    //     0x725c80: add             x4, x4, HEAP, lsl #32
    // 0x725c84: r8 = X0
    //     0x725c84: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x725c88: LoadField: r9 = r4->field_7
    //     0x725c88: ldur            x9, [x4, #7]
    // 0x725c8c: r3 = Null
    //     0x725c8c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20028] Null
    //     0x725c90: ldr             x3, [x3, #0x28]
    // 0x725c94: blr             x9
    // 0x725c98: ldur            x0, [fp, #-0x20]
    // 0x725c9c: LoadField: r1 = r0->field_b
    //     0x725c9c: ldur            w1, [x0, #0xb]
    // 0x725ca0: LoadField: r2 = r0->field_f
    //     0x725ca0: ldur            w2, [x0, #0xf]
    // 0x725ca4: DecompressPointer r2
    //     0x725ca4: add             x2, x2, HEAP, lsl #32
    // 0x725ca8: LoadField: r3 = r2->field_b
    //     0x725ca8: ldur            w3, [x2, #0xb]
    // 0x725cac: r2 = LoadInt32Instr(r1)
    //     0x725cac: sbfx            x2, x1, #1, #0x1f
    // 0x725cb0: stur            x2, [fp, #-0x28]
    // 0x725cb4: r1 = LoadInt32Instr(r3)
    //     0x725cb4: sbfx            x1, x3, #1, #0x1f
    // 0x725cb8: cmp             x2, x1
    // 0x725cbc: b.ne            #0x725cc8
    // 0x725cc0: mov             x1, x0
    // 0x725cc4: r0 = _growToNextCapacity()
    //     0x725cc4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x725cc8: ldur            x3, [fp, #-0x20]
    // 0x725ccc: ldur            x2, [fp, #-0x28]
    // 0x725cd0: add             x0, x2, #1
    // 0x725cd4: lsl             x1, x0, #1
    // 0x725cd8: StoreField: r3->field_b = r1
    //     0x725cd8: stur            w1, [x3, #0xb]
    // 0x725cdc: LoadField: r1 = r3->field_f
    //     0x725cdc: ldur            w1, [x3, #0xf]
    // 0x725ce0: DecompressPointer r1
    //     0x725ce0: add             x1, x1, HEAP, lsl #32
    // 0x725ce4: ldur            x0, [fp, #-0x18]
    // 0x725ce8: ArrayStore: r1[r2] = r0  ; List_4
    //     0x725ce8: add             x25, x1, x2, lsl #2
    //     0x725cec: add             x25, x25, #0xf
    //     0x725cf0: str             w0, [x25]
    //     0x725cf4: tbz             w0, #0, #0x725d10
    //     0x725cf8: ldurb           w16, [x1, #-1]
    //     0x725cfc: ldurb           w17, [x0, #-1]
    //     0x725d00: and             x16, x17, x16, lsr #2
    //     0x725d04: tst             x16, HEAP, lsr #32
    //     0x725d08: b.eq            #0x725d10
    //     0x725d0c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x725d10: ldur            x1, [fp, #-0x10]
    // 0x725d14: r2 = "downloaded_say_dualari_files"
    //     0x725d14: add             x2, PP, #0x20, lsl #12  ; [pp+0x20020] "downloaded_say_dualari_files"
    //     0x725d18: ldr             x2, [x2, #0x20]
    // 0x725d1c: r0 = setStringList()
    //     0x725d1c: bl              #0x6fe3c8  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setStringList
    // 0x725d20: mov             x1, x0
    // 0x725d24: stur            x1, [fp, #-0x10]
    // 0x725d28: r0 = Await()
    //     0x725d28: bl              #0x3dd188  ; AwaitStub
    // 0x725d2c: r0 = Null
    //     0x725d2c: mov             x0, NULL
    // 0x725d30: r0 = ReturnAsyncNotFuture()
    //     0x725d30: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x725d34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x725d34: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x725d38: b               #0x725c0c
  }
  _ downloadAllFiles(/* No info */) async {
    // ** addr: 0x72af24, size: 0x260
    // 0x72af24: EnterFrame
    //     0x72af24: stp             fp, lr, [SP, #-0x10]!
    //     0x72af28: mov             fp, SP
    // 0x72af2c: AllocStack(0xc8)
    //     0x72af2c: sub             SP, SP, #0xc8
    // 0x72af30: SetupParameters(SayDualariStorageService this /* r1 => r2, fp-0x88 */, dynamic _ /* r2 => r1, fp-0x90 */)
    //     0x72af30: stur            NULL, [fp, #-8]
    //     0x72af34: stur            x1, [fp, #-0x88]
    //     0x72af38: mov             x16, x2
    //     0x72af3c: mov             x2, x1
    //     0x72af40: mov             x1, x16
    //     0x72af44: stur            x1, [fp, #-0x90]
    // 0x72af48: CheckStackOverflow
    //     0x72af48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72af4c: cmp             SP, x16
    //     0x72af50: b.ls            #0x72b174
    // 0x72af54: InitAsync() -> Future<({String? errorMessage, String? failedFile, bool success})>
    //     0x72af54: add             x0, PP, #0x20, lsl #12  ; [pp+0x20338] TypeArguments: <({String? errorMessage, String? failedFile, bool success})>
    //     0x72af58: ldr             x0, [x0, #0x338]
    //     0x72af5c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72af60: ldur            x0, [fp, #-0x88]
    // 0x72af64: LoadField: r1 = r0->field_7
    //     0x72af64: ldur            w1, [x0, #7]
    // 0x72af68: DecompressPointer r1
    //     0x72af68: add             x1, x1, HEAP, lsl #32
    // 0x72af6c: r0 = hasInternetConnection()
    //     0x72af6c: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72af70: mov             x1, x0
    // 0x72af74: stur            x1, [fp, #-0x98]
    // 0x72af78: r0 = Await()
    //     0x72af78: bl              #0x3dd188  ; AwaitStub
    // 0x72af7c: r16 = true
    //     0x72af7c: add             x16, NULL, #0x20  ; true
    // 0x72af80: cmp             w0, w16
    // 0x72af84: b.eq            #0x72afa8
    // 0x72af88: r2 = "İnternet bağlantısı yok"
    //     0x72af88: add             x2, PP, #0x16, lsl #12  ; [pp+0x16198] "İnternet bağlantısı yok"
    //     0x72af8c: ldr             x2, [x2, #0x198]
    // 0x72af90: r3 = Null
    //     0x72af90: mov             x3, NULL
    // 0x72af94: r4 = false
    //     0x72af94: add             x4, NULL, #0x30  ; false
    // 0x72af98: r1 = 917510
    //     0x72af98: mov             x1, #6
    //     0x72af9c: movk            x1, #0xe, lsl #16
    // 0x72afa0: r0 = AllocateRecord3Named()
    //     0x72afa0: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72afa4: r0 = ReturnAsyncNotFuture()
    //     0x72afa4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72afa8: r3 = 0
    //     0x72afa8: mov             x3, #0
    // 0x72afac: r0 = const [say-arabic-1.png, say-arabic-1-1.png, say-turkish-1.png, say-turkish-1-1.png, say-arabic-2.png, say-arabic-2-1.png, say-turkish-2.png, say-turkish-2-1.png, say-arabic-3.png, say-arabic-3-1.png, say-turkish-3.png, say-turkish-3-1.png, say-arabic-4.jpg, say-arabic-4-1.jpg, say-turkish-4.jpg, say-turkish-4-1.jpg, say-arabic-5.jpg, say-arabic-5-1.jpg, say-turkish-5.jpg, say-turkish-5-1.jpg, say-arabic-6.jpg, say-arabic-6-1.jpg, say-turkish-6.jpg, say-turkish-6-1.jpg, say-arabic-7.jpg, say-arabic-7-1.jpg, say-turkish-7.jpg, say-turkish-7-1.jpg, say-bitis-1.jpg, say-bitis-2.jpg]
    //     0x72afac: add             x0, PP, #0x20, lsl #12  ; [pp+0x20368] List<String>(30)
    //     0x72afb0: ldr             x0, [x0, #0x368]
    // 0x72afb4: stur            x3, [fp, #-0xa0]
    // 0x72afb8: CheckStackOverflow
    //     0x72afb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72afbc: cmp             SP, x16
    //     0x72afc0: b.ls            #0x72b17c
    // 0x72afc4: cmp             x3, #0x1e
    // 0x72afc8: b.ge            #0x72b0f8
    // 0x72afcc: ArrayLoad: r4 = r0[r3]  ; Unknown_4
    //     0x72afcc: add             x16, x0, x3, lsl #2
    //     0x72afd0: ldur            w4, [x16, #0xf]
    // 0x72afd4: DecompressPointer r4
    //     0x72afd4: add             x4, x4, HEAP, lsl #32
    // 0x72afd8: stur            x4, [fp, #-0x98]
    // 0x72afdc: ldur            x1, [fp, #-0x88]
    // 0x72afe0: mov             x2, x4
    // 0x72afe4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x72afe4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72afe8: r0 = downloadFile()
    //     0x72afe8: bl              #0x7252c0  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::downloadFile
    // 0x72afec: mov             x1, x0
    // 0x72aff0: stur            x1, [fp, #-0xa8]
    // 0x72aff4: r0 = Await()
    //     0x72aff4: bl              #0x3dd188  ; AwaitStub
    // 0x72aff8: cmp             w0, NULL
    // 0x72affc: b.eq            #0x72b038
    // 0x72b000: ldur            x1, [fp, #-0xa0]
    // 0x72b004: add             x3, x1, #1
    // 0x72b008: stur            x3, [fp, #-0xb0]
    // 0x72b00c: lsl             x0, x3, #1
    // 0x72b010: ldur            x16, [fp, #-0x90]
    // 0x72b014: stp             x0, x16, [SP, #8]
    // 0x72b018: r16 = 60
    //     0x72b018: mov             x16, #0x3c
    // 0x72b01c: str             x16, [SP]
    // 0x72b020: ldur            x0, [fp, #-0x90]
    // 0x72b024: ClosureCall
    //     0x72b024: ldr             x4, [PP, #0xa90]  ; [pp+0xa90] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x72b028: ldur            x2, [x0, #0x1f]
    //     0x72b02c: blr             x2
    // 0x72b030: ldur            x3, [fp, #-0xb0]
    // 0x72b034: b               #0x72afac
    // 0x72b038: ldur            x3, [fp, #-0x98]
    // 0x72b03c: r1 = Null
    //     0x72b03c: mov             x1, NULL
    // 0x72b040: r2 = 6
    //     0x72b040: mov             x2, #6
    // 0x72b044: r0 = AllocateArray()
    //     0x72b044: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b048: r16 = "Dosya "
    //     0x72b048: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72b04c: ldr             x16, [x16, #0x318]
    // 0x72b050: StoreField: r0->field_f = r16
    //     0x72b050: stur            w16, [x0, #0xf]
    // 0x72b054: ldur            x3, [fp, #-0x98]
    // 0x72b058: StoreField: r0->field_13 = r3
    //     0x72b058: stur            w3, [x0, #0x13]
    // 0x72b05c: r16 = " indirilemedi."
    //     0x72b05c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20348] " indirilemedi."
    //     0x72b060: ldr             x16, [x16, #0x348]
    // 0x72b064: ArrayStore: r0[0] = r16  ; List_4
    //     0x72b064: stur            w16, [x0, #0x17]
    // 0x72b068: str             x0, [SP]
    // 0x72b06c: r0 = _interpolate()
    //     0x72b06c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b070: mov             x2, x0
    // 0x72b074: ldur            x3, [fp, #-0x98]
    // 0x72b078: r4 = false
    //     0x72b078: add             x4, NULL, #0x30  ; false
    // 0x72b07c: stur            x0, [fp, #-0x90]
    // 0x72b080: r1 = 917510
    //     0x72b080: mov             x1, #6
    //     0x72b084: movk            x1, #0xe, lsl #16
    // 0x72b088: r0 = AllocateRecord3Named()
    //     0x72b088: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b08c: r0 = ReturnAsyncNotFuture()
    //     0x72b08c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b090: sub             SP, fp, #0xc8
    // 0x72b094: ldur            x3, [fp, #-0x98]
    // 0x72b098: stur            x0, [fp, #-0x90]
    // 0x72b09c: r1 = Null
    //     0x72b09c: mov             x1, NULL
    // 0x72b0a0: r2 = 8
    //     0x72b0a0: mov             x2, #8
    // 0x72b0a4: r0 = AllocateArray()
    //     0x72b0a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b0a8: r16 = "Dosya "
    //     0x72b0a8: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72b0ac: ldr             x16, [x16, #0x318]
    // 0x72b0b0: StoreField: r0->field_f = r16
    //     0x72b0b0: stur            w16, [x0, #0xf]
    // 0x72b0b4: ldur            x3, [fp, #-0x98]
    // 0x72b0b8: StoreField: r0->field_13 = r3
    //     0x72b0b8: stur            w3, [x0, #0x13]
    // 0x72b0bc: r16 = " indirilemedi: "
    //     0x72b0bc: add             x16, PP, #0x20, lsl #12  ; [pp+0x20350] " indirilemedi: "
    //     0x72b0c0: ldr             x16, [x16, #0x350]
    // 0x72b0c4: ArrayStore: r0[0] = r16  ; List_4
    //     0x72b0c4: stur            w16, [x0, #0x17]
    // 0x72b0c8: ldur            x1, [fp, #-0x90]
    // 0x72b0cc: StoreField: r0->field_1b = r1
    //     0x72b0cc: stur            w1, [x0, #0x1b]
    // 0x72b0d0: str             x0, [SP]
    // 0x72b0d4: r0 = _interpolate()
    //     0x72b0d4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b0d8: mov             x2, x0
    // 0x72b0dc: ldur            x3, [fp, #-0x98]
    // 0x72b0e0: r4 = false
    //     0x72b0e0: add             x4, NULL, #0x30  ; false
    // 0x72b0e4: stur            x0, [fp, #-0xa8]
    // 0x72b0e8: r1 = 917510
    //     0x72b0e8: mov             x1, #6
    //     0x72b0ec: movk            x1, #0xe, lsl #16
    // 0x72b0f0: r0 = AllocateRecord3Named()
    //     0x72b0f0: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b0f4: r0 = ReturnAsyncNotFuture()
    //     0x72b0f4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b0f8: ldur            x1, [fp, #-0x88]
    // 0x72b0fc: r0 = _markAllFilesDownloaded()
    //     0x72b0fc: bl              #0x72b184  ; [package:umrem_demo/core/services/say_dualari_storage_service.dart] SayDualariStorageService::_markAllFilesDownloaded
    // 0x72b100: mov             x1, x0
    // 0x72b104: stur            x1, [fp, #-0x90]
    // 0x72b108: r0 = Await()
    //     0x72b108: bl              #0x3dd188  ; AwaitStub
    // 0x72b10c: r2 = Null
    //     0x72b10c: mov             x2, NULL
    // 0x72b110: r3 = Null
    //     0x72b110: mov             x3, NULL
    // 0x72b114: r4 = true
    //     0x72b114: add             x4, NULL, #0x20  ; true
    // 0x72b118: r1 = 917510
    //     0x72b118: mov             x1, #6
    //     0x72b11c: movk            x1, #0xe, lsl #16
    // 0x72b120: r0 = AllocateRecord3Named()
    //     0x72b120: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b124: r0 = ReturnAsyncNotFuture()
    //     0x72b124: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b128: sub             SP, fp, #0xc8
    // 0x72b12c: stur            x0, [fp, #-0x88]
    // 0x72b130: r1 = Null
    //     0x72b130: mov             x1, NULL
    // 0x72b134: r2 = 4
    //     0x72b134: mov             x2, #4
    // 0x72b138: r0 = AllocateArray()
    //     0x72b138: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72b13c: r16 = "İndirme hatası: "
    //     0x72b13c: add             x16, PP, #0x16, lsl #12  ; [pp+0x161a0] "İndirme hatası: "
    //     0x72b140: ldr             x16, [x16, #0x1a0]
    // 0x72b144: StoreField: r0->field_f = r16
    //     0x72b144: stur            w16, [x0, #0xf]
    // 0x72b148: ldur            x1, [fp, #-0x88]
    // 0x72b14c: StoreField: r0->field_13 = r1
    //     0x72b14c: stur            w1, [x0, #0x13]
    // 0x72b150: str             x0, [SP]
    // 0x72b154: r0 = _interpolate()
    //     0x72b154: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72b158: mov             x2, x0
    // 0x72b15c: r3 = Null
    //     0x72b15c: mov             x3, NULL
    // 0x72b160: r4 = false
    //     0x72b160: add             x4, NULL, #0x30  ; false
    // 0x72b164: r1 = 917510
    //     0x72b164: mov             x1, #6
    //     0x72b168: movk            x1, #0xe, lsl #16
    // 0x72b16c: r0 = AllocateRecord3Named()
    //     0x72b16c: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72b170: r0 = ReturnAsyncNotFuture()
    //     0x72b170: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b174: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b174: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b178: b               #0x72af54
    // 0x72b17c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b17c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b180: b               #0x72afc4
  }
  _ _markAllFilesDownloaded(/* No info */) async {
    // ** addr: 0x72b184, size: 0x68
    // 0x72b184: EnterFrame
    //     0x72b184: stp             fp, lr, [SP, #-0x10]!
    //     0x72b188: mov             fp, SP
    // 0x72b18c: AllocStack(0x18)
    //     0x72b18c: sub             SP, SP, #0x18
    // 0x72b190: SetupParameters(SayDualariStorageService this /* r1 => r1, fp-0x10 */)
    //     0x72b190: stur            NULL, [fp, #-8]
    //     0x72b194: stur            x1, [fp, #-0x10]
    // 0x72b198: CheckStackOverflow
    //     0x72b198: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b19c: cmp             SP, x16
    //     0x72b1a0: b.ls            #0x72b1e4
    // 0x72b1a4: InitAsync() -> Future<void?>
    //     0x72b1a4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72b1a8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72b1ac: r0 = getInstance()
    //     0x72b1ac: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x72b1b0: mov             x1, x0
    // 0x72b1b4: stur            x1, [fp, #-0x18]
    // 0x72b1b8: r0 = Await()
    //     0x72b1b8: bl              #0x3dd188  ; AwaitStub
    // 0x72b1bc: mov             x1, x0
    // 0x72b1c0: r2 = "all_say_dualari_downloaded"
    //     0x72b1c0: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a2c8] "all_say_dualari_downloaded"
    //     0x72b1c4: ldr             x2, [x2, #0x2c8]
    // 0x72b1c8: r3 = true
    //     0x72b1c8: add             x3, NULL, #0x20  ; true
    // 0x72b1cc: r0 = setBool()
    //     0x72b1cc: bl              #0x636ad0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setBool
    // 0x72b1d0: mov             x1, x0
    // 0x72b1d4: stur            x1, [fp, #-0x18]
    // 0x72b1d8: r0 = Await()
    //     0x72b1d8: bl              #0x3dd188  ; AwaitStub
    // 0x72b1dc: r0 = Null
    //     0x72b1dc: mov             x0, NULL
    // 0x72b1e0: r0 = ReturnAsyncNotFuture()
    //     0x72b1e0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72b1e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b1e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b1e8: b               #0x72b1a4
  }
}
