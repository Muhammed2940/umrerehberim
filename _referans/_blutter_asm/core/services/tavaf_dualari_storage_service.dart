// lib: , url: package:umrem_demo/core/services/tavaf_dualari_storage_service.dart

// class id: 1049502, size: 0x8
class :: {
}

// class id: 211, size: 0x10, field offset: 0x8
class TavafDualariStorageService extends Object {

  static late final TavafDualariStorageService _instance; // offset: 0x101c

  _ areAllFilesDownloaded(/* No info */) async {
    // ** addr: 0x5e6df4, size: 0x60
    // 0x5e6df4: EnterFrame
    //     0x5e6df4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6df8: mov             fp, SP
    // 0x5e6dfc: AllocStack(0x18)
    //     0x5e6dfc: sub             SP, SP, #0x18
    // 0x5e6e00: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0x10 */)
    //     0x5e6e00: stur            NULL, [fp, #-8]
    //     0x5e6e04: stur            x1, [fp, #-0x10]
    // 0x5e6e08: CheckStackOverflow
    //     0x5e6e08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6e0c: cmp             SP, x16
    //     0x5e6e10: b.ls            #0x5e6e4c
    // 0x5e6e14: InitAsync() -> Future<bool>
    //     0x5e6e14: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5e6e18: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6e1c: r0 = getInstance()
    //     0x5e6e1c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e6e20: mov             x1, x0
    // 0x5e6e24: stur            x1, [fp, #-0x18]
    // 0x5e6e28: r0 = Await()
    //     0x5e6e28: bl              #0x3dd188  ; AwaitStub
    // 0x5e6e2c: mov             x1, x0
    // 0x5e6e30: r2 = "all_tavaf_dualari_downloaded"
    //     0x5e6e30: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a2c0] "all_tavaf_dualari_downloaded"
    //     0x5e6e34: ldr             x2, [x2, #0x2c0]
    // 0x5e6e38: r0 = getBool()
    //     0x5e6e38: bl              #0x5e60a4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getBool
    // 0x5e6e3c: cmp             w0, NULL
    // 0x5e6e40: b.ne            #0x5e6e48
    // 0x5e6e44: r0 = false
    //     0x5e6e44: add             x0, NULL, #0x30  ; false
    // 0x5e6e48: r0 = ReturnAsyncNotFuture()
    //     0x5e6e48: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e6e4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6e4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6e50: b               #0x5e6e14
  }
  static TavafDualariStorageService _instance() {
    // ** addr: 0x5eafdc, size: 0x70
    // 0x5eafdc: EnterFrame
    //     0x5eafdc: stp             fp, lr, [SP, #-0x10]!
    //     0x5eafe0: mov             fp, SP
    // 0x5eafe4: AllocStack(0x8)
    //     0x5eafe4: sub             SP, SP, #8
    // 0x5eafe8: CheckStackOverflow
    //     0x5eafe8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eafec: cmp             SP, x16
    //     0x5eaff0: b.ls            #0x5eb044
    // 0x5eaff4: r0 = TavafDualariStorageService()
    //     0x5eaff4: bl              #0x5ec340  ; AllocateTavafDualariStorageServiceStub -> TavafDualariStorageService (size=0x10)
    // 0x5eaff8: stur            x0, [fp, #-8]
    // 0x5eaffc: r0 = CommonService()
    //     0x5eaffc: bl              #0x5eaabc  ; AllocateCommonServiceStub -> CommonService (size=0x8)
    // 0x5eb000: mov             x1, x0
    // 0x5eb004: ldur            x0, [fp, #-8]
    // 0x5eb008: StoreField: r0->field_7 = r1
    //     0x5eb008: stur            w1, [x0, #7]
    // 0x5eb00c: r1 = Null
    //     0x5eb00c: mov             x1, NULL
    // 0x5eb010: r0 = Client()
    //     0x5eb010: bl              #0x5eb04c  ; [package:http/src/client.dart] Client::Client
    // 0x5eb014: ldur            x1, [fp, #-8]
    // 0x5eb018: StoreField: r1->field_b = r0
    //     0x5eb018: stur            w0, [x1, #0xb]
    //     0x5eb01c: ldurb           w16, [x1, #-1]
    //     0x5eb020: ldurb           w17, [x0, #-1]
    //     0x5eb024: and             x16, x17, x16, lsr #2
    //     0x5eb028: tst             x16, HEAP, lsr #32
    //     0x5eb02c: b.eq            #0x5eb034
    //     0x5eb030: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5eb034: mov             x0, x1
    // 0x5eb038: LeaveFrame
    //     0x5eb038: mov             SP, fp
    //     0x5eb03c: ldp             fp, lr, [SP], #0x10
    // 0x5eb040: ret
    //     0x5eb040: ret             
    // 0x5eb044: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eb044: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eb048: b               #0x5eaff4
  }
  _ getLocalFilePathIfExists(/* No info */) async {
    // ** addr: 0x721900, size: 0x7c
    // 0x721900: EnterFrame
    //     0x721900: stp             fp, lr, [SP, #-0x10]!
    //     0x721904: mov             fp, SP
    // 0x721908: AllocStack(0x20)
    //     0x721908: sub             SP, SP, #0x20
    // 0x72190c: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x72190c: stur            NULL, [fp, #-8]
    //     0x721910: stur            x1, [fp, #-0x10]
    //     0x721914: stur            x2, [fp, #-0x18]
    // 0x721918: CheckStackOverflow
    //     0x721918: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72191c: cmp             SP, x16
    //     0x721920: b.ls            #0x721974
    // 0x721924: InitAsync() -> Future<String?>
    //     0x721924: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x721928: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72192c: ldur            x1, [fp, #-0x10]
    // 0x721930: ldur            x2, [fp, #-0x18]
    // 0x721934: r0 = isFileDownloaded()
    //     0x721934: bl              #0x721af4  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::isFileDownloaded
    // 0x721938: mov             x1, x0
    // 0x72193c: stur            x1, [fp, #-0x20]
    // 0x721940: r0 = Await()
    //     0x721940: bl              #0x3dd188  ; AwaitStub
    // 0x721944: r16 = true
    //     0x721944: add             x16, NULL, #0x20  ; true
    // 0x721948: cmp             w0, w16
    // 0x72194c: b.ne            #0x72196c
    // 0x721950: ldur            x1, [fp, #-0x10]
    // 0x721954: ldur            x2, [fp, #-0x18]
    // 0x721958: r0 = _getLocalFilePath()
    //     0x721958: bl              #0x72197c  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_getLocalFilePath
    // 0x72195c: mov             x1, x0
    // 0x721960: stur            x1, [fp, #-0x10]
    // 0x721964: r0 = Await()
    //     0x721964: bl              #0x3dd188  ; AwaitStub
    // 0x721968: r0 = ReturnAsync()
    //     0x721968: b               #0x427094  ; ReturnAsyncStub
    // 0x72196c: r0 = Null
    //     0x72196c: mov             x0, NULL
    // 0x721970: r0 = ReturnAsyncNotFuture()
    //     0x721970: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x721974: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x721974: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x721978: b               #0x721924
  }
  _ _getLocalFilePath(/* No info */) async {
    // ** addr: 0x72197c, size: 0x178
    // 0x72197c: EnterFrame
    //     0x72197c: stp             fp, lr, [SP, #-0x10]!
    //     0x721980: mov             fp, SP
    // 0x721984: AllocStack(0x38)
    //     0x721984: sub             SP, SP, #0x38
    // 0x721988: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x721988: stur            NULL, [fp, #-8]
    //     0x72198c: stur            x1, [fp, #-0x10]
    //     0x721990: stur            x2, [fp, #-0x18]
    // 0x721994: CheckStackOverflow
    //     0x721994: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x721998: cmp             SP, x16
    //     0x72199c: b.ls            #0x721aec
    // 0x7219a0: InitAsync() -> Future<String>
    //     0x7219a0: ldr             x0, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    //     0x7219a4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7219a8: r0 = getApplicationDocumentsDirectory()
    //     0x7219a8: bl              #0x71a424  ; [package:path_provider/path_provider.dart] ::getApplicationDocumentsDirectory
    // 0x7219ac: mov             x1, x0
    // 0x7219b0: stur            x1, [fp, #-0x20]
    // 0x7219b4: r0 = Await()
    //     0x7219b4: bl              #0x3dd188  ; AwaitStub
    // 0x7219b8: LoadField: r3 = r0->field_7
    //     0x7219b8: ldur            w3, [x0, #7]
    // 0x7219bc: DecompressPointer r3
    //     0x7219bc: add             x3, x3, HEAP, lsl #32
    // 0x7219c0: stur            x3, [fp, #-0x20]
    // 0x7219c4: r1 = Null
    //     0x7219c4: mov             x1, NULL
    // 0x7219c8: r2 = 4
    //     0x7219c8: mov             x2, #4
    // 0x7219cc: r0 = AllocateArray()
    //     0x7219cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7219d0: mov             x1, x0
    // 0x7219d4: ldur            x0, [fp, #-0x20]
    // 0x7219d8: StoreField: r1->field_f = r0
    //     0x7219d8: stur            w0, [x1, #0xf]
    // 0x7219dc: r16 = "/tavaf_dualari"
    //     0x7219dc: add             x16, PP, #0x20, lsl #12  ; [pp+0x201a0] "/tavaf_dualari"
    //     0x7219e0: ldr             x16, [x16, #0x1a0]
    // 0x7219e4: StoreField: r1->field_13 = r16
    //     0x7219e4: stur            w16, [x1, #0x13]
    // 0x7219e8: str             x1, [SP]
    // 0x7219ec: r0 = _interpolate()
    //     0x7219ec: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7219f0: stur            x0, [fp, #-0x20]
    // 0x7219f4: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x7219f4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7219f8: ldr             x0, [x0, #0x6d8]
    //     0x7219fc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x721a00: cmp             w0, w16
    //     0x721a04: b.ne            #0x721a10
    //     0x721a08: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x721a0c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x721a10: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x721a10: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x721a14: ldr             x0, [x0, #0x850]
    //     0x721a18: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x721a1c: cmp             w0, w16
    //     0x721a20: b.ne            #0x721a30
    //     0x721a24: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x721a28: ldr             x2, [x2, #0x918]
    //     0x721a2c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x721a30: r0 = _Directory()
    //     0x721a30: bl              #0x3dafdc  ; Allocate_DirectoryStub -> _Directory (size=0x10)
    // 0x721a34: mov             x2, x0
    // 0x721a38: ldur            x0, [fp, #-0x20]
    // 0x721a3c: stur            x2, [fp, #-0x28]
    // 0x721a40: StoreField: r2->field_7 = r0
    //     0x721a40: stur            w0, [x2, #7]
    // 0x721a44: mov             x1, x0
    // 0x721a48: r0 = _toUtf8Array()
    //     0x721a48: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x721a4c: ldur            x2, [fp, #-0x28]
    // 0x721a50: StoreField: r2->field_b = r0
    //     0x721a50: stur            w0, [x2, #0xb]
    //     0x721a54: ldurb           w16, [x2, #-1]
    //     0x721a58: ldurb           w17, [x0, #-1]
    //     0x721a5c: and             x16, x17, x16, lsr #2
    //     0x721a60: tst             x16, HEAP, lsr #32
    //     0x721a64: b.eq            #0x721a6c
    //     0x721a68: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x721a6c: mov             x1, x2
    // 0x721a70: r0 = exists()
    //     0x721a70: bl              #0x71a2dc  ; [dart:io] _Directory::exists
    // 0x721a74: mov             x1, x0
    // 0x721a78: stur            x1, [fp, #-0x30]
    // 0x721a7c: r0 = Await()
    //     0x721a7c: bl              #0x3dd188  ; AwaitStub
    // 0x721a80: r16 = true
    //     0x721a80: add             x16, NULL, #0x20  ; true
    // 0x721a84: cmp             w0, w16
    // 0x721a88: b.eq            #0x721ab0
    // 0x721a8c: r16 = true
    //     0x721a8c: add             x16, NULL, #0x20  ; true
    // 0x721a90: str             x16, [SP]
    // 0x721a94: ldur            x1, [fp, #-0x28]
    // 0x721a98: r4 = const [0, 0x2, 0x1, 0x1, recursive, 0x1, null]
    //     0x721a98: add             x4, PP, #0x17, lsl #12  ; [pp+0x178d0] List(7) [0, 0x2, 0x1, 0x1, "recursive", 0x1, Null]
    //     0x721a9c: ldr             x4, [x4, #0x8d0]
    // 0x721aa0: r0 = create()
    //     0x721aa0: bl              #0x719d74  ; [dart:io] _Directory::create
    // 0x721aa4: mov             x1, x0
    // 0x721aa8: stur            x1, [fp, #-0x10]
    // 0x721aac: r0 = Await()
    //     0x721aac: bl              #0x3dd188  ; AwaitStub
    // 0x721ab0: ldur            x3, [fp, #-0x18]
    // 0x721ab4: ldur            x0, [fp, #-0x20]
    // 0x721ab8: r1 = Null
    //     0x721ab8: mov             x1, NULL
    // 0x721abc: r2 = 6
    //     0x721abc: mov             x2, #6
    // 0x721ac0: r0 = AllocateArray()
    //     0x721ac0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x721ac4: mov             x1, x0
    // 0x721ac8: ldur            x0, [fp, #-0x20]
    // 0x721acc: StoreField: r1->field_f = r0
    //     0x721acc: stur            w0, [x1, #0xf]
    // 0x721ad0: r16 = "/"
    //     0x721ad0: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x721ad4: StoreField: r1->field_13 = r16
    //     0x721ad4: stur            w16, [x1, #0x13]
    // 0x721ad8: ldur            x0, [fp, #-0x18]
    // 0x721adc: ArrayStore: r1[0] = r0  ; List_4
    //     0x721adc: stur            w0, [x1, #0x17]
    // 0x721ae0: str             x1, [SP]
    // 0x721ae4: r0 = _interpolate()
    //     0x721ae4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x721ae8: r0 = ReturnAsyncNotFuture()
    //     0x721ae8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x721aec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x721aec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x721af0: b               #0x7219a0
  }
  _ isFileDownloaded(/* No info */) async {
    // ** addr: 0x721af4, size: 0xd4
    // 0x721af4: EnterFrame
    //     0x721af4: stp             fp, lr, [SP, #-0x10]!
    //     0x721af8: mov             fp, SP
    // 0x721afc: AllocStack(0x18)
    //     0x721afc: sub             SP, SP, #0x18
    // 0x721b00: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x721b00: stur            NULL, [fp, #-8]
    //     0x721b04: stur            x1, [fp, #-0x10]
    //     0x721b08: stur            x2, [fp, #-0x18]
    // 0x721b0c: CheckStackOverflow
    //     0x721b0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x721b10: cmp             SP, x16
    //     0x721b14: b.ls            #0x721bc0
    // 0x721b18: InitAsync() -> Future<bool>
    //     0x721b18: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x721b1c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x721b20: ldur            x1, [fp, #-0x10]
    // 0x721b24: ldur            x2, [fp, #-0x18]
    // 0x721b28: r0 = _getLocalFilePath()
    //     0x721b28: bl              #0x72197c  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_getLocalFilePath
    // 0x721b2c: mov             x1, x0
    // 0x721b30: stur            x1, [fp, #-0x10]
    // 0x721b34: r0 = Await()
    //     0x721b34: bl              #0x3dd188  ; AwaitStub
    // 0x721b38: stur            x0, [fp, #-0x10]
    // 0x721b3c: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x721b3c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x721b40: ldr             x0, [x0, #0x6d8]
    //     0x721b44: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x721b48: cmp             w0, w16
    //     0x721b4c: b.ne            #0x721b58
    //     0x721b50: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x721b54: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x721b58: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x721b58: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x721b5c: ldr             x0, [x0, #0x850]
    //     0x721b60: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x721b64: cmp             w0, w16
    //     0x721b68: b.ne            #0x721b78
    //     0x721b6c: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x721b70: ldr             x2, [x2, #0x918]
    //     0x721b74: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x721b78: r0 = _File()
    //     0x721b78: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x721b7c: ldur            x1, [fp, #-0x10]
    // 0x721b80: stur            x0, [fp, #-0x18]
    // 0x721b84: StoreField: r0->field_7 = r1
    //     0x721b84: stur            w1, [x0, #7]
    // 0x721b88: r0 = _toUtf8Array()
    //     0x721b88: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x721b8c: ldur            x1, [fp, #-0x18]
    // 0x721b90: StoreField: r1->field_b = r0
    //     0x721b90: stur            w0, [x1, #0xb]
    //     0x721b94: ldurb           w16, [x1, #-1]
    //     0x721b98: ldurb           w17, [x0, #-1]
    //     0x721b9c: and             x16, x17, x16, lsr #2
    //     0x721ba0: tst             x16, HEAP, lsr #32
    //     0x721ba4: b.eq            #0x721bac
    //     0x721ba8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x721bac: r0 = exists()
    //     0x721bac: bl              #0x719a08  ; [dart:io] _File::exists
    // 0x721bb0: mov             x1, x0
    // 0x721bb4: stur            x1, [fp, #-0x10]
    // 0x721bb8: r0 = Await()
    //     0x721bb8: bl              #0x3dd188  ; AwaitStub
    // 0x721bbc: r0 = ReturnAsync()
    //     0x721bbc: b               #0x427094  ; ReturnAsyncStub
    // 0x721bc0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x721bc0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x721bc4: b               #0x721b18
  }
  _ downloadFile(/* No info */) async {
    // ** addr: 0x722340, size: 0x928
    // 0x722340: EnterFrame
    //     0x722340: stp             fp, lr, [SP, #-0x10]!
    //     0x722344: mov             fp, SP
    // 0x722348: AllocStack(0x150)
    //     0x722348: sub             SP, SP, #0x150
    // 0x72234c: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0xc0 */, dynamic _ /* r2 => r2, fp-0xc8 */, {dynamic onProgress = Null /* r3, fp-0xb8 */})
    //     0x72234c: stur            NULL, [fp, #-8]
    //     0x722350: stur            x1, [fp, #-0xc0]
    //     0x722354: stur            x2, [fp, #-0xc8]
    //     0x722358: ldur            w0, [x4, #0x13]
    //     0x72235c: ldur            w3, [x4, #0x1f]
    //     0x722360: add             x3, x3, HEAP, lsl #32
    //     0x722364: add             x16, PP, #0x16, lsl #12  ; [pp+0x16128] "onProgress"
    //     0x722368: ldr             x16, [x16, #0x128]
    //     0x72236c: cmp             w3, w16
    //     0x722370: b.ne            #0x722390
    //     0x722374: ldur            w3, [x4, #0x23]
    //     0x722378: add             x3, x3, HEAP, lsl #32
    //     0x72237c: sub             w4, w0, w3
    //     0x722380: add             x0, fp, w4, sxtw #2
    //     0x722384: ldr             x0, [x0, #8]
    //     0x722388: mov             x3, x0
    //     0x72238c: b               #0x722394
    //     0x722390: mov             x3, NULL
    //     0x722394: stur            x3, [fp, #-0xb8]
    // 0x722398: CheckStackOverflow
    //     0x722398: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72239c: cmp             SP, x16
    //     0x7223a0: b.ls            #0x722c54
    // 0x7223a4: InitAsync() -> Future<String?>
    //     0x7223a4: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x7223a8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7223ac: ldur            x0, [fp, #-0xc0]
    // 0x7223b0: LoadField: r1 = r0->field_7
    //     0x7223b0: ldur            w1, [x0, #7]
    // 0x7223b4: DecompressPointer r1
    //     0x7223b4: add             x1, x1, HEAP, lsl #32
    // 0x7223b8: r0 = hasInternetConnection()
    //     0x7223b8: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x7223bc: mov             x1, x0
    // 0x7223c0: stur            x1, [fp, #-0xd0]
    // 0x7223c4: r0 = Await()
    //     0x7223c4: bl              #0x3dd188  ; AwaitStub
    // 0x7223c8: r16 = true
    //     0x7223c8: add             x16, NULL, #0x20  ; true
    // 0x7223cc: cmp             w0, w16
    // 0x7223d0: b.ne            #0x722b70
    // 0x7223d4: ldur            x1, [fp, #-0xc0]
    // 0x7223d8: ldur            x2, [fp, #-0xc8]
    // 0x7223dc: r0 = _getLocalFilePath()
    //     0x7223dc: bl              #0x72197c  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_getLocalFilePath
    // 0x7223e0: mov             x1, x0
    // 0x7223e4: stur            x1, [fp, #-0xd0]
    // 0x7223e8: r0 = Await()
    //     0x7223e8: bl              #0x3dd188  ; AwaitStub
    // 0x7223ec: stur            x0, [fp, #-0xd0]
    // 0x7223f0: r0 = InitLateStaticField(0x36c) // [dart:async] Zone::_current
    //     0x7223f0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7223f4: ldr             x0, [x0, #0x6d8]
    //     0x7223f8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7223fc: cmp             w0, w16
    //     0x722400: b.ne            #0x72240c
    //     0x722404: ldr             x2, [PP, #0x2f0]  ; [pp+0x2f0] Field <Zone._current@5048458>: static late (offset: 0x36c)
    //     0x722408: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x72240c: stur            x0, [fp, #-0xd8]
    // 0x722410: r0 = InitLateStaticField(0x428) // [dart:io] ::_ioOverridesToken
    //     0x722410: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x722414: ldr             x0, [x0, #0x850]
    //     0x722418: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72241c: cmp             w0, w16
    //     0x722420: b.ne            #0x722430
    //     0x722424: add             x2, PP, #8, lsl #12  ; [pp+0x8918] Field <::._ioOverridesToken@15069316>: static late final (offset: 0x428)
    //     0x722428: ldr             x2, [x2, #0x918]
    //     0x72242c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x722430: r0 = _File()
    //     0x722430: bl              #0x3e1ea0  ; Allocate_FileStub -> _File (size=0x10)
    // 0x722434: mov             x2, x0
    // 0x722438: ldur            x0, [fp, #-0xd0]
    // 0x72243c: stur            x2, [fp, #-0xd8]
    // 0x722440: StoreField: r2->field_7 = r0
    //     0x722440: stur            w0, [x2, #7]
    // 0x722444: mov             x1, x0
    // 0x722448: r0 = _toUtf8Array()
    //     0x722448: bl              #0x3db2f4  ; [dart:io] FileSystemEntity::_toUtf8Array
    // 0x72244c: ldur            x2, [fp, #-0xd8]
    // 0x722450: StoreField: r2->field_b = r0
    //     0x722450: stur            w0, [x2, #0xb]
    //     0x722454: ldurb           w16, [x2, #-1]
    //     0x722458: ldurb           w17, [x0, #-1]
    //     0x72245c: and             x16, x17, x16, lsr #2
    //     0x722460: tst             x16, HEAP, lsr #32
    //     0x722464: b.eq            #0x72246c
    //     0x722468: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x72246c: mov             x1, x2
    // 0x722470: r0 = exists()
    //     0x722470: bl              #0x719a08  ; [dart:io] _File::exists
    // 0x722474: mov             x1, x0
    // 0x722478: stur            x1, [fp, #-0xe0]
    // 0x72247c: r0 = Await()
    //     0x72247c: bl              #0x3dd188  ; AwaitStub
    // 0x722480: r16 = true
    //     0x722480: add             x16, NULL, #0x20  ; true
    // 0x722484: cmp             w0, w16
    // 0x722488: b.ne            #0x722494
    // 0x72248c: ldur            x0, [fp, #-0xd0]
    // 0x722490: r0 = ReturnAsync()
    //     0x722490: b               #0x427094  ; ReturnAsyncStub
    // 0x722494: ldur            x0, [fp, #-0xc0]
    // 0x722498: ldur            x3, [fp, #-0xc8]
    // 0x72249c: r1 = Null
    //     0x72249c: mov             x1, NULL
    // 0x7224a0: r2 = 10
    //     0x7224a0: mov             x2, #0xa
    // 0x7224a4: r0 = AllocateArray()
    //     0x7224a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7224a8: r16 = "https://hactapot.xyz"
    //     0x7224a8: add             x16, PP, #0x16, lsl #12  ; [pp+0x16140] "https://hactapot.xyz"
    //     0x7224ac: ldr             x16, [x16, #0x140]
    // 0x7224b0: StoreField: r0->field_f = r16
    //     0x7224b0: stur            w16, [x0, #0xf]
    // 0x7224b4: r16 = "/"
    //     0x7224b4: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7224b8: StoreField: r0->field_13 = r16
    //     0x7224b8: stur            w16, [x0, #0x13]
    // 0x7224bc: r16 = "tavaf_dualari"
    //     0x7224bc: add             x16, PP, #0x20, lsl #12  ; [pp+0x20180] "tavaf_dualari"
    //     0x7224c0: ldr             x16, [x16, #0x180]
    // 0x7224c4: ArrayStore: r0[0] = r16  ; List_4
    //     0x7224c4: stur            w16, [x0, #0x17]
    // 0x7224c8: r16 = "/"
    //     0x7224c8: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7224cc: StoreField: r0->field_1b = r16
    //     0x7224cc: stur            w16, [x0, #0x1b]
    // 0x7224d0: ldur            x2, [fp, #-0xc8]
    // 0x7224d4: StoreField: r0->field_1f = r2
    //     0x7224d4: stur            w2, [x0, #0x1f]
    // 0x7224d8: str             x0, [SP]
    // 0x7224dc: r0 = _interpolate()
    //     0x7224dc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7224e0: mov             x2, x0
    // 0x7224e4: ldur            x0, [fp, #-0xc0]
    // 0x7224e8: r17 = -272
    //     0x7224e8: mov             x17, #-0x110
    // 0x7224ec: str             x2, [fp, x17]
    // 0x7224f0: LoadField: r3 = r0->field_b
    //     0x7224f0: ldur            w3, [x0, #0xb]
    // 0x7224f4: DecompressPointer r3
    //     0x7224f4: add             x3, x3, HEAP, lsl #32
    // 0x7224f8: r17 = -264
    //     0x7224f8: mov             x17, #-0x108
    // 0x7224fc: str             x3, [fp, x17]
    // 0x722500: r8 = 1
    //     0x722500: mov             x8, #1
    // 0x722504: r7 = Null
    //     0x722504: mov             x7, NULL
    // 0x722508: r6 = Null
    //     0x722508: mov             x6, NULL
    // 0x72250c: r5 = Null
    //     0x72250c: mov             x5, NULL
    // 0x722510: r4 = Null
    //     0x722510: mov             x4, NULL
    // 0x722514: stur            x8, [fp, #-0xe8]
    // 0x722518: stur            x7, [fp, #-0xe0]
    // 0x72251c: stur            x6, [fp, #-0xf0]
    // 0x722520: stur            x5, [fp, #-0xf8]
    // 0x722524: stur            x4, [fp, #-0x100]
    // 0x722528: CheckStackOverflow
    //     0x722528: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72252c: cmp             SP, x16
    //     0x722530: b.ls            #0x722c5c
    // 0x722534: cmp             x8, #3
    // 0x722538: b.gt            #0x722ae0
    // 0x72253c: mov             x1, x2
    // 0x722540: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x722540: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x722544: r0 = parse()
    //     0x722544: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x722548: r1 = Null
    //     0x722548: mov             x1, NULL
    // 0x72254c: r2 = 12
    //     0x72254c: mov             x2, #0xc
    // 0x722550: r17 = -280
    //     0x722550: mov             x17, #-0x118
    // 0x722554: str             x0, [fp, x17]
    // 0x722558: r0 = AllocateArray()
    //     0x722558: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72255c: r16 = "Accept"
    //     0x72255c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16150] "Accept"
    //     0x722560: ldr             x16, [x16, #0x150]
    // 0x722564: StoreField: r0->field_f = r16
    //     0x722564: stur            w16, [x0, #0xf]
    // 0x722568: r16 = "image/*"
    //     0x722568: add             x16, PP, #0x20, lsl #12  ; [pp+0x20018] "image/*"
    //     0x72256c: ldr             x16, [x16, #0x18]
    // 0x722570: StoreField: r0->field_13 = r16
    //     0x722570: stur            w16, [x0, #0x13]
    // 0x722574: r16 = "Connection"
    //     0x722574: add             x16, PP, #0x16, lsl #12  ; [pp+0x16160] "Connection"
    //     0x722578: ldr             x16, [x16, #0x160]
    // 0x72257c: ArrayStore: r0[0] = r16  ; List_4
    //     0x72257c: stur            w16, [x0, #0x17]
    // 0x722580: r16 = "keep-alive"
    //     0x722580: add             x16, PP, #0x16, lsl #12  ; [pp+0x16168] "keep-alive"
    //     0x722584: ldr             x16, [x16, #0x168]
    // 0x722588: StoreField: r0->field_1b = r16
    //     0x722588: stur            w16, [x0, #0x1b]
    // 0x72258c: r16 = "User-Agent"
    //     0x72258c: add             x16, PP, #0x16, lsl #12  ; [pp+0x16170] "User-Agent"
    //     0x722590: ldr             x16, [x16, #0x170]
    // 0x722594: StoreField: r0->field_1f = r16
    //     0x722594: stur            w16, [x0, #0x1f]
    // 0x722598: r16 = "UmremApp/1.0"
    //     0x722598: add             x16, PP, #0x16, lsl #12  ; [pp+0x16178] "UmremApp/1.0"
    //     0x72259c: ldr             x16, [x16, #0x178]
    // 0x7225a0: StoreField: r0->field_23 = r16
    //     0x7225a0: stur            w16, [x0, #0x23]
    // 0x7225a4: r16 = <String, String>
    //     0x7225a4: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x7225a8: ldr             x16, [x16, #0x2a8]
    // 0x7225ac: stp             x0, x16, [SP]
    // 0x7225b0: r0 = Map._fromLiteral()
    //     0x7225b0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7225b4: r17 = -264
    //     0x7225b4: mov             x17, #-0x108
    // 0x7225b8: ldr             x1, [fp, x17]
    // 0x7225bc: r17 = -280
    //     0x7225bc: mov             x17, #-0x118
    // 0x7225c0: ldr             x2, [fp, x17]
    // 0x7225c4: mov             x3, x0
    // 0x7225c8: r17 = -288
    //     0x7225c8: mov             x17, #-0x120
    // 0x7225cc: str             x0, [fp, x17]
    // 0x7225d0: r0 = _sendUnstreamed()
    //     0x7225d0: bl              #0x6ffbd4  ; [package:http/src/base_client.dart] BaseClient::_sendUnstreamed
    // 0x7225d4: r16 = Instance_Duration
    //     0x7225d4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16180] Obj!Duration@a2dea1
    //     0x7225d8: ldr             x16, [x16, #0x180]
    // 0x7225dc: stp             x16, x0, [SP]
    // 0x7225e0: r4 = const [0, 0x2, 0x2, 0x2, null]
    //     0x7225e0: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    // 0x7225e4: r0 = timeout()
    //     0x7225e4: bl              #0x3cbc8c  ; [dart:async] _Future::timeout
    // 0x7225e8: mov             x1, x0
    // 0x7225ec: r17 = -280
    //     0x7225ec: mov             x17, #-0x118
    // 0x7225f0: str             x1, [fp, x17]
    // 0x7225f4: r0 = Await()
    //     0x7225f4: bl              #0x3dd188  ; AwaitStub
    // 0x7225f8: r17 = -280
    //     0x7225f8: mov             x17, #-0x118
    // 0x7225fc: str             x0, [fp, x17]
    // 0x722600: cmp             w0, NULL
    // 0x722604: b.eq            #0x722c64
    // 0x722608: LoadField: r3 = r0->field_b
    //     0x722608: ldur            x3, [x0, #0xb]
    // 0x72260c: r17 = -296
    //     0x72260c: mov             x17, #-0x128
    // 0x722610: str             x3, [fp, x17]
    // 0x722614: cmp             x3, #0xc8
    // 0x722618: b.eq            #0x722758
    // 0x72261c: cmp             x3, #0x1f4
    // 0x722620: b.lt            #0x722b94
    // 0x722624: ldur            x4, [fp, #-0xe8]
    // 0x722628: r1 = Null
    //     0x722628: mov             x1, NULL
    // 0x72262c: r2 = 4
    //     0x72262c: mov             x2, #4
    // 0x722630: r0 = AllocateArray()
    //     0x722630: bl              #0x9280a0  ; AllocateArrayStub
    // 0x722634: mov             x2, x0
    // 0x722638: r16 = "Sunucu hatası: "
    //     0x722638: add             x16, PP, #0x16, lsl #12  ; [pp+0x16188] "Sunucu hatası: "
    //     0x72263c: ldr             x16, [x16, #0x188]
    // 0x722640: StoreField: r2->field_f = r16
    //     0x722640: stur            w16, [x2, #0xf]
    // 0x722644: r17 = -296
    //     0x722644: mov             x17, #-0x128
    // 0x722648: ldr             x3, [fp, x17]
    // 0x72264c: r0 = BoxInt64Instr(r3)
    //     0x72264c: sbfiz           x0, x3, #1, #0x1f
    //     0x722650: cmp             x3, x0, asr #1
    //     0x722654: b.eq            #0x722660
    //     0x722658: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72265c: stur            x3, [x0, #7]
    // 0x722660: StoreField: r2->field_13 = r0
    //     0x722660: stur            w0, [x2, #0x13]
    // 0x722664: str             x2, [SP]
    // 0x722668: r0 = _interpolate()
    //     0x722668: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72266c: r17 = -288
    //     0x72266c: mov             x17, #-0x120
    // 0x722670: str             x0, [fp, x17]
    // 0x722674: r0 = _Exception()
    //     0x722674: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x722678: mov             x1, x0
    // 0x72267c: r17 = -288
    //     0x72267c: mov             x17, #-0x120
    // 0x722680: ldr             x0, [fp, x17]
    // 0x722684: r17 = -304
    //     0x722684: mov             x17, #-0x130
    // 0x722688: str             x1, [fp, x17]
    // 0x72268c: StoreField: r1->field_7 = r0
    //     0x72268c: stur            w0, [x1, #7]
    // 0x722690: ldur            x0, [fp, #-0xe8]
    // 0x722694: cmp             x0, #3
    // 0x722698: b.ge            #0x72273c
    // 0x72269c: r0 = Duration()
    //     0x72269c: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x7226a0: mov             x3, x0
    // 0x7226a4: ldur            x2, [fp, #-0xe8]
    // 0x7226a8: r17 = -288
    //     0x7226a8: mov             x17, #-0x120
    // 0x7226ac: str             x3, [fp, x17]
    // 0x7226b0: r16 = 2000000
    //     0x7226b0: mov             x16, #0x8480
    //     0x7226b4: movk            x16, #0x1e, lsl #16
    // 0x7226b8: mul             x4, x2, x16
    // 0x7226bc: r0 = BoxInt64Instr(r4)
    //     0x7226bc: sbfiz           x0, x4, #1, #0x1f
    //     0x7226c0: cmp             x4, x0, asr #1
    //     0x7226c4: b.eq            #0x7226d0
    //     0x7226c8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7226cc: stur            x4, [x0, #7]
    // 0x7226d0: r1 = 60
    //     0x7226d0: mov             x1, #0x3c
    // 0x7226d4: branchIfSmi(r0, 0x7226e0)
    //     0x7226d4: tbz             w0, #0, #0x7226e0
    // 0x7226d8: r1 = LoadClassIdInstr(r0)
    //     0x7226d8: ldur            x1, [x0, #-1]
    //     0x7226dc: ubfx            x1, x1, #0xc, #0x14
    // 0x7226e0: mov             x16, x0
    // 0x7226e4: mov             x0, x1
    // 0x7226e8: mov             x1, x16
    // 0x7226ec: r0 = GDT[cid_x0 + -0xff9]()
    //     0x7226ec: sub             lr, x0, #0xff9
    //     0x7226f0: ldr             lr, [x21, lr, lsl #3]
    //     0x7226f4: blr             lr
    // 0x7226f8: r17 = -288
    //     0x7226f8: mov             x17, #-0x120
    // 0x7226fc: ldr             x2, [fp, x17]
    // 0x722700: StoreField: r2->field_7 = r0
    //     0x722700: stur            x0, [x2, #7]
    // 0x722704: r1 = Null
    //     0x722704: mov             x1, NULL
    // 0x722708: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x722708: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72270c: r0 = Future.delayed()
    //     0x72270c: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x722710: mov             x1, x0
    // 0x722714: r17 = -288
    //     0x722714: mov             x17, #-0x120
    // 0x722718: str             x1, [fp, x17]
    // 0x72271c: r0 = Await()
    //     0x72271c: bl              #0x3dd188  ; AwaitStub
    // 0x722720: r17 = -304
    //     0x722720: mov             x17, #-0x130
    // 0x722724: ldr             x4, [fp, x17]
    // 0x722728: ldur            x7, [fp, #-0xe0]
    // 0x72272c: ldur            x6, [fp, #-0xf0]
    // 0x722730: r17 = -280
    //     0x722730: mov             x17, #-0x118
    // 0x722734: ldr             x5, [fp, x17]
    // 0x722738: b               #0x722ac0
    // 0x72273c: r17 = -304
    //     0x72273c: mov             x17, #-0x130
    // 0x722740: ldr             x3, [fp, x17]
    // 0x722744: ldur            x2, [fp, #-0xe0]
    // 0x722748: ldur            x1, [fp, #-0xf0]
    // 0x72274c: r17 = -280
    //     0x72274c: mov             x17, #-0x118
    // 0x722750: ldr             x0, [fp, x17]
    // 0x722754: b               #0x722ab0
    // 0x722758: r17 = -280
    //     0x722758: mov             x17, #-0x118
    // 0x72275c: ldr             x0, [fp, x17]
    // 0x722760: b               #0x722ae4
    // 0x722764: sub             SP, fp, #0x150
    // 0x722768: mov             x4, x0
    // 0x72276c: mov             x3, x1
    // 0x722770: r17 = -288
    //     0x722770: mov             x17, #-0x120
    // 0x722774: str             x0, [fp, x17]
    // 0x722778: r17 = -304
    //     0x722778: mov             x17, #-0x130
    // 0x72277c: str             x1, [fp, x17]
    // 0x722780: r2 = Null
    //     0x722780: mov             x2, NULL
    // 0x722784: r1 = Null
    //     0x722784: mov             x1, NULL
    // 0x722788: cmp             w0, NULL
    // 0x72278c: b.eq            #0x7227ac
    // 0x722790: branchIfSmi(r0, 0x7227ac)
    //     0x722790: tbz             w0, #0, #0x7227ac
    // 0x722794: r3 = LoadClassIdInstr(r0)
    //     0x722794: ldur            x3, [x0, #-1]
    //     0x722798: ubfx            x3, x3, #0xc, #0x14
    // 0x72279c: cmp             x3, #0x150
    // 0x7227a0: b.eq            #0x7227b4
    // 0x7227a4: cmp             x3, #0xfe6
    // 0x7227a8: b.eq            #0x7227b4
    // 0x7227ac: r0 = false
    //     0x7227ac: add             x0, NULL, #0x30  ; false
    // 0x7227b0: b               #0x7227b8
    // 0x7227b4: r0 = true
    //     0x7227b4: add             x0, NULL, #0x20  ; true
    // 0x7227b8: tbnz            w0, #4, #0x722890
    // 0x7227bc: ldur            x0, [fp, #-0xe8]
    // 0x7227c0: cmp             x0, #3
    // 0x7227c4: b.ge            #0x722870
    // 0x7227c8: ldur            x1, [fp, #-0xb0]
    // 0x7227cc: r0 = Duration()
    //     0x7227cc: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x7227d0: mov             x3, x0
    // 0x7227d4: ldur            x2, [fp, #-0xe8]
    // 0x7227d8: r17 = -312
    //     0x7227d8: mov             x17, #-0x138
    // 0x7227dc: str             x3, [fp, x17]
    // 0x7227e0: r16 = 2000000
    //     0x7227e0: mov             x16, #0x8480
    //     0x7227e4: movk            x16, #0x1e, lsl #16
    // 0x7227e8: mul             x4, x2, x16
    // 0x7227ec: r0 = BoxInt64Instr(r4)
    //     0x7227ec: sbfiz           x0, x4, #1, #0x1f
    //     0x7227f0: cmp             x4, x0, asr #1
    //     0x7227f4: b.eq            #0x722800
    //     0x7227f8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7227fc: stur            x4, [x0, #7]
    // 0x722800: r1 = 60
    //     0x722800: mov             x1, #0x3c
    // 0x722804: branchIfSmi(r0, 0x722810)
    //     0x722804: tbz             w0, #0, #0x722810
    // 0x722808: r1 = LoadClassIdInstr(r0)
    //     0x722808: ldur            x1, [x0, #-1]
    //     0x72280c: ubfx            x1, x1, #0xc, #0x14
    // 0x722810: mov             x16, x0
    // 0x722814: mov             x0, x1
    // 0x722818: mov             x1, x16
    // 0x72281c: r0 = GDT[cid_x0 + -0xff9]()
    //     0x72281c: sub             lr, x0, #0xff9
    //     0x722820: ldr             lr, [x21, lr, lsl #3]
    //     0x722824: blr             lr
    // 0x722828: r17 = -312
    //     0x722828: mov             x17, #-0x138
    // 0x72282c: ldr             x2, [fp, x17]
    // 0x722830: StoreField: r2->field_7 = r0
    //     0x722830: stur            x0, [x2, #7]
    // 0x722834: r1 = Null
    //     0x722834: mov             x1, NULL
    // 0x722838: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x722838: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72283c: r0 = Future.delayed()
    //     0x72283c: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x722840: mov             x1, x0
    // 0x722844: r17 = -312
    //     0x722844: mov             x17, #-0x138
    // 0x722848: str             x1, [fp, x17]
    // 0x72284c: r0 = Await()
    //     0x72284c: bl              #0x3dd188  ; AwaitStub
    // 0x722850: r17 = -288
    //     0x722850: mov             x17, #-0x120
    // 0x722854: ldr             x4, [fp, x17]
    // 0x722858: r17 = -288
    //     0x722858: mov             x17, #-0x120
    // 0x72285c: ldr             x7, [fp, x17]
    // 0x722860: r17 = -304
    //     0x722860: mov             x17, #-0x130
    // 0x722864: ldr             x6, [fp, x17]
    // 0x722868: ldur            x5, [fp, #-0xb0]
    // 0x72286c: b               #0x722ac0
    // 0x722870: r17 = -288
    //     0x722870: mov             x17, #-0x120
    // 0x722874: ldr             x3, [fp, x17]
    // 0x722878: r17 = -288
    //     0x722878: mov             x17, #-0x120
    // 0x72287c: ldr             x2, [fp, x17]
    // 0x722880: r17 = -304
    //     0x722880: mov             x17, #-0x130
    // 0x722884: ldr             x1, [fp, x17]
    // 0x722888: ldur            x0, [fp, #-0xb0]
    // 0x72288c: b               #0x722ab0
    // 0x722890: r17 = -288
    //     0x722890: mov             x17, #-0x120
    // 0x722894: ldr             x0, [fp, x17]
    // 0x722898: r1 = 60
    //     0x722898: mov             x1, #0x3c
    // 0x72289c: branchIfSmi(r0, 0x7228a8)
    //     0x72289c: tbz             w0, #0, #0x7228a8
    // 0x7228a0: r1 = LoadClassIdInstr(r0)
    //     0x7228a0: ldur            x1, [x0, #-1]
    //     0x7228a4: ubfx            x1, x1, #0xc, #0x14
    // 0x7228a8: r17 = 4570
    //     0x7228a8: mov             x17, #0x11da
    // 0x7228ac: cmp             x1, x17
    // 0x7228b0: b.ne            #0x7229d8
    // 0x7228b4: ldur            x3, [fp, #-0xe8]
    // 0x7228b8: r1 = Null
    //     0x7228b8: mov             x1, NULL
    // 0x7228bc: r2 = 4
    //     0x7228bc: mov             x2, #4
    // 0x7228c0: r0 = AllocateArray()
    //     0x7228c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7228c4: r16 = "Zaman aşımı: "
    //     0x7228c4: add             x16, PP, #0x16, lsl #12  ; [pp+0x16190] "Zaman aşımı: "
    //     0x7228c8: ldr             x16, [x16, #0x190]
    // 0x7228cc: StoreField: r0->field_f = r16
    //     0x7228cc: stur            w16, [x0, #0xf]
    // 0x7228d0: r17 = -288
    //     0x7228d0: mov             x17, #-0x120
    // 0x7228d4: ldr             x1, [fp, x17]
    // 0x7228d8: StoreField: r0->field_13 = r1
    //     0x7228d8: stur            w1, [x0, #0x13]
    // 0x7228dc: str             x0, [SP]
    // 0x7228e0: r0 = _interpolate()
    //     0x7228e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7228e4: r17 = -312
    //     0x7228e4: mov             x17, #-0x138
    // 0x7228e8: str             x0, [fp, x17]
    // 0x7228ec: r0 = _Exception()
    //     0x7228ec: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x7228f0: mov             x1, x0
    // 0x7228f4: r17 = -312
    //     0x7228f4: mov             x17, #-0x138
    // 0x7228f8: ldr             x0, [fp, x17]
    // 0x7228fc: r17 = -320
    //     0x7228fc: mov             x17, #-0x140
    // 0x722900: str             x1, [fp, x17]
    // 0x722904: StoreField: r1->field_7 = r0
    //     0x722904: stur            w0, [x1, #7]
    // 0x722908: ldur            x0, [fp, #-0xe8]
    // 0x72290c: cmp             x0, #3
    // 0x722910: b.ge            #0x7229b8
    // 0x722914: r0 = Duration()
    //     0x722914: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x722918: mov             x3, x0
    // 0x72291c: ldur            x2, [fp, #-0xe8]
    // 0x722920: r17 = -312
    //     0x722920: mov             x17, #-0x138
    // 0x722924: str             x3, [fp, x17]
    // 0x722928: r16 = 2000000
    //     0x722928: mov             x16, #0x8480
    //     0x72292c: movk            x16, #0x1e, lsl #16
    // 0x722930: mul             x4, x2, x16
    // 0x722934: r0 = BoxInt64Instr(r4)
    //     0x722934: sbfiz           x0, x4, #1, #0x1f
    //     0x722938: cmp             x4, x0, asr #1
    //     0x72293c: b.eq            #0x722948
    //     0x722940: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x722944: stur            x4, [x0, #7]
    // 0x722948: r1 = 60
    //     0x722948: mov             x1, #0x3c
    // 0x72294c: branchIfSmi(r0, 0x722958)
    //     0x72294c: tbz             w0, #0, #0x722958
    // 0x722950: r1 = LoadClassIdInstr(r0)
    //     0x722950: ldur            x1, [x0, #-1]
    //     0x722954: ubfx            x1, x1, #0xc, #0x14
    // 0x722958: mov             x16, x0
    // 0x72295c: mov             x0, x1
    // 0x722960: mov             x1, x16
    // 0x722964: r0 = GDT[cid_x0 + -0xff9]()
    //     0x722964: sub             lr, x0, #0xff9
    //     0x722968: ldr             lr, [x21, lr, lsl #3]
    //     0x72296c: blr             lr
    // 0x722970: r17 = -312
    //     0x722970: mov             x17, #-0x138
    // 0x722974: ldr             x2, [fp, x17]
    // 0x722978: StoreField: r2->field_7 = r0
    //     0x722978: stur            x0, [x2, #7]
    // 0x72297c: r1 = Null
    //     0x72297c: mov             x1, NULL
    // 0x722980: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x722980: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x722984: r0 = Future.delayed()
    //     0x722984: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x722988: mov             x1, x0
    // 0x72298c: r17 = -312
    //     0x72298c: mov             x17, #-0x138
    // 0x722990: str             x1, [fp, x17]
    // 0x722994: r0 = Await()
    //     0x722994: bl              #0x3dd188  ; AwaitStub
    // 0x722998: r17 = -320
    //     0x722998: mov             x17, #-0x140
    // 0x72299c: ldr             x4, [fp, x17]
    // 0x7229a0: r17 = -288
    //     0x7229a0: mov             x17, #-0x120
    // 0x7229a4: ldr             x7, [fp, x17]
    // 0x7229a8: r17 = -304
    //     0x7229a8: mov             x17, #-0x130
    // 0x7229ac: ldr             x6, [fp, x17]
    // 0x7229b0: ldur            x5, [fp, #-0xb0]
    // 0x7229b4: b               #0x722ac0
    // 0x7229b8: r17 = -320
    //     0x7229b8: mov             x17, #-0x140
    // 0x7229bc: ldr             x3, [fp, x17]
    // 0x7229c0: r17 = -288
    //     0x7229c0: mov             x17, #-0x120
    // 0x7229c4: ldr             x2, [fp, x17]
    // 0x7229c8: r17 = -304
    //     0x7229c8: mov             x17, #-0x130
    // 0x7229cc: ldr             x1, [fp, x17]
    // 0x7229d0: ldur            x0, [fp, #-0xb0]
    // 0x7229d4: b               #0x722ab0
    // 0x7229d8: sub             x16, x1, #0x14f
    // 0x7229dc: cmp             x16, #2
    // 0x7229e0: b.hi            #0x722c04
    // 0x7229e4: ldur            x0, [fp, #-0xe8]
    // 0x7229e8: cmp             x0, #3
    // 0x7229ec: b.ge            #0x722a94
    // 0x7229f0: r0 = Duration()
    //     0x7229f0: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x7229f4: mov             x3, x0
    // 0x7229f8: ldur            x2, [fp, #-0xe8]
    // 0x7229fc: r17 = -312
    //     0x7229fc: mov             x17, #-0x138
    // 0x722a00: str             x3, [fp, x17]
    // 0x722a04: r16 = 2000000
    //     0x722a04: mov             x16, #0x8480
    //     0x722a08: movk            x16, #0x1e, lsl #16
    // 0x722a0c: mul             x4, x2, x16
    // 0x722a10: r0 = BoxInt64Instr(r4)
    //     0x722a10: sbfiz           x0, x4, #1, #0x1f
    //     0x722a14: cmp             x4, x0, asr #1
    //     0x722a18: b.eq            #0x722a24
    //     0x722a1c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x722a20: stur            x4, [x0, #7]
    // 0x722a24: r1 = 60
    //     0x722a24: mov             x1, #0x3c
    // 0x722a28: branchIfSmi(r0, 0x722a34)
    //     0x722a28: tbz             w0, #0, #0x722a34
    // 0x722a2c: r1 = LoadClassIdInstr(r0)
    //     0x722a2c: ldur            x1, [x0, #-1]
    //     0x722a30: ubfx            x1, x1, #0xc, #0x14
    // 0x722a34: mov             x16, x0
    // 0x722a38: mov             x0, x1
    // 0x722a3c: mov             x1, x16
    // 0x722a40: r0 = GDT[cid_x0 + -0xff9]()
    //     0x722a40: sub             lr, x0, #0xff9
    //     0x722a44: ldr             lr, [x21, lr, lsl #3]
    //     0x722a48: blr             lr
    // 0x722a4c: r17 = -312
    //     0x722a4c: mov             x17, #-0x138
    // 0x722a50: ldr             x2, [fp, x17]
    // 0x722a54: StoreField: r2->field_7 = r0
    //     0x722a54: stur            x0, [x2, #7]
    // 0x722a58: r1 = Null
    //     0x722a58: mov             x1, NULL
    // 0x722a5c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x722a5c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x722a60: r0 = Future.delayed()
    //     0x722a60: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x722a64: mov             x1, x0
    // 0x722a68: r17 = -312
    //     0x722a68: mov             x17, #-0x138
    // 0x722a6c: str             x1, [fp, x17]
    // 0x722a70: r0 = Await()
    //     0x722a70: bl              #0x3dd188  ; AwaitStub
    // 0x722a74: r17 = -288
    //     0x722a74: mov             x17, #-0x120
    // 0x722a78: ldr             x4, [fp, x17]
    // 0x722a7c: r17 = -288
    //     0x722a7c: mov             x17, #-0x120
    // 0x722a80: ldr             x7, [fp, x17]
    // 0x722a84: r17 = -304
    //     0x722a84: mov             x17, #-0x130
    // 0x722a88: ldr             x6, [fp, x17]
    // 0x722a8c: ldur            x5, [fp, #-0xb0]
    // 0x722a90: b               #0x722ac0
    // 0x722a94: r17 = -288
    //     0x722a94: mov             x17, #-0x120
    // 0x722a98: ldr             x3, [fp, x17]
    // 0x722a9c: r17 = -288
    //     0x722a9c: mov             x17, #-0x120
    // 0x722aa0: ldr             x2, [fp, x17]
    // 0x722aa4: r17 = -304
    //     0x722aa4: mov             x17, #-0x130
    // 0x722aa8: ldr             x1, [fp, x17]
    // 0x722aac: ldur            x0, [fp, #-0xb0]
    // 0x722ab0: mov             x4, x3
    // 0x722ab4: mov             x7, x2
    // 0x722ab8: mov             x6, x1
    // 0x722abc: mov             x5, x0
    // 0x722ac0: ldur            x0, [fp, #-0xe8]
    // 0x722ac4: add             x8, x0, #1
    // 0x722ac8: ldur            x0, [fp, #-0xc0]
    // 0x722acc: r17 = -272
    //     0x722acc: mov             x17, #-0x110
    // 0x722ad0: ldr             x2, [fp, x17]
    // 0x722ad4: r17 = -264
    //     0x722ad4: mov             x17, #-0x108
    // 0x722ad8: ldr             x3, [fp, x17]
    // 0x722adc: b               #0x722514
    // 0x722ae0: ldur            x0, [fp, #-0xf8]
    // 0x722ae4: stur            x0, [fp, #-0xf8]
    // 0x722ae8: cmp             w0, NULL
    // 0x722aec: b.eq            #0x722c1c
    // 0x722af0: LoadField: r1 = r0->field_b
    //     0x722af0: ldur            x1, [x0, #0xb]
    // 0x722af4: cmp             x1, #0xc8
    // 0x722af8: b.ne            #0x722c1c
    // 0x722afc: ldur            x3, [fp, #-0xb8]
    // 0x722b00: LoadField: r2 = r0->field_27
    //     0x722b00: ldur            w2, [x0, #0x27]
    // 0x722b04: DecompressPointer r2
    //     0x722b04: add             x2, x2, HEAP, lsl #32
    // 0x722b08: ldur            x1, [fp, #-0xd8]
    // 0x722b0c: r0 = writeAsBytes()
    //     0x722b0c: bl              #0x6fe51c  ; [dart:io] _File::writeAsBytes
    // 0x722b10: mov             x1, x0
    // 0x722b14: r17 = -312
    //     0x722b14: mov             x17, #-0x138
    // 0x722b18: str             x1, [fp, x17]
    // 0x722b1c: r0 = Await()
    //     0x722b1c: bl              #0x3dd188  ; AwaitStub
    // 0x722b20: ldur            x1, [fp, #-0xb8]
    // 0x722b24: cmp             w1, NULL
    // 0x722b28: b.eq            #0x722b44
    // 0x722b2c: r16 = 1.000000
    //     0x722b2c: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x722b30: stp             x16, x1, [SP]
    // 0x722b34: mov             x0, x1
    // 0x722b38: ClosureCall
    //     0x722b38: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x722b3c: ldur            x2, [x0, #0x1f]
    //     0x722b40: blr             x2
    // 0x722b44: ldur            x1, [fp, #-0xc0]
    // 0x722b48: ldur            x2, [fp, #-0xc8]
    // 0x722b4c: r0 = _markFileAsDownloaded()
    //     0x722b4c: bl              #0x722c68  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_markFileAsDownloaded
    // 0x722b50: mov             x1, x0
    // 0x722b54: stur            x1, [fp, #-0xf8]
    // 0x722b58: r0 = Await()
    //     0x722b58: bl              #0x3dd188  ; AwaitStub
    // 0x722b5c: ldur            x0, [fp, #-0xd0]
    // 0x722b60: r0 = ReturnAsync()
    //     0x722b60: b               #0x427094  ; ReturnAsyncStub
    // 0x722b64: sub             SP, fp, #0x150
    // 0x722b68: r0 = Null
    //     0x722b68: mov             x0, NULL
    // 0x722b6c: r0 = ReturnAsyncNotFuture()
    //     0x722b6c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x722b70: r0 = _Exception()
    //     0x722b70: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x722b74: mov             x1, x0
    // 0x722b78: r0 = "İnternet bağlantısı yok"
    //     0x722b78: add             x0, PP, #0x16, lsl #12  ; [pp+0x16198] "İnternet bağlantısı yok"
    //     0x722b7c: ldr             x0, [x0, #0x198]
    // 0x722b80: stur            x1, [fp, #-0xf8]
    // 0x722b84: StoreField: r1->field_7 = r0
    //     0x722b84: stur            w0, [x1, #7]
    // 0x722b88: mov             x0, x1
    // 0x722b8c: r0 = Throw()
    //     0x722b8c: bl              #0x926328  ; ThrowStub
    // 0x722b90: brk             #0
    // 0x722b94: ldur            x0, [fp, #-0xe8]
    // 0x722b98: r1 = Null
    //     0x722b98: mov             x1, NULL
    // 0x722b9c: r2 = 4
    //     0x722b9c: mov             x2, #4
    // 0x722ba0: r0 = AllocateArray()
    //     0x722ba0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x722ba4: mov             x2, x0
    // 0x722ba8: r16 = "İndirme hatası: "
    //     0x722ba8: add             x16, PP, #0x16, lsl #12  ; [pp+0x161a0] "İndirme hatası: "
    //     0x722bac: ldr             x16, [x16, #0x1a0]
    // 0x722bb0: StoreField: r2->field_f = r16
    //     0x722bb0: stur            w16, [x2, #0xf]
    // 0x722bb4: r17 = -296
    //     0x722bb4: mov             x17, #-0x128
    // 0x722bb8: ldr             x3, [fp, x17]
    // 0x722bbc: r0 = BoxInt64Instr(r3)
    //     0x722bbc: sbfiz           x0, x3, #1, #0x1f
    //     0x722bc0: cmp             x3, x0, asr #1
    //     0x722bc4: b.eq            #0x722bd0
    //     0x722bc8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x722bcc: stur            x3, [x0, #7]
    // 0x722bd0: StoreField: r2->field_13 = r0
    //     0x722bd0: stur            w0, [x2, #0x13]
    // 0x722bd4: str             x2, [SP]
    // 0x722bd8: r0 = _interpolate()
    //     0x722bd8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x722bdc: stur            x0, [fp, #-0xf8]
    // 0x722be0: r0 = _Exception()
    //     0x722be0: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x722be4: mov             x1, x0
    // 0x722be8: ldur            x0, [fp, #-0xf8]
    // 0x722bec: r17 = -312
    //     0x722bec: mov             x17, #-0x138
    // 0x722bf0: str             x1, [fp, x17]
    // 0x722bf4: StoreField: r1->field_7 = r0
    //     0x722bf4: stur            w0, [x1, #7]
    // 0x722bf8: mov             x0, x1
    // 0x722bfc: r0 = Throw()
    //     0x722bfc: bl              #0x926328  ; ThrowStub
    // 0x722c00: brk             #0
    // 0x722c04: r17 = -288
    //     0x722c04: mov             x17, #-0x120
    // 0x722c08: ldr             x0, [fp, x17]
    // 0x722c0c: r17 = -304
    //     0x722c0c: mov             x17, #-0x130
    // 0x722c10: ldr             x1, [fp, x17]
    // 0x722c14: r0 = ReThrow()
    //     0x722c14: bl              #0x9262fc  ; ReThrowStub
    // 0x722c18: brk             #0
    // 0x722c1c: ldur            x0, [fp, #-0x100]
    // 0x722c20: cmp             w0, NULL
    // 0x722c24: b.ne            #0x722c40
    // 0x722c28: r0 = _Exception()
    //     0x722c28: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x722c2c: mov             x1, x0
    // 0x722c30: r0 = "İndirme başarısız"
    //     0x722c30: add             x0, PP, #0x16, lsl #12  ; [pp+0x161a8] "İndirme başarısız"
    //     0x722c34: ldr             x0, [x0, #0x1a8]
    // 0x722c38: StoreField: r1->field_7 = r0
    //     0x722c38: stur            w0, [x1, #7]
    // 0x722c3c: b               #0x722c44
    // 0x722c40: mov             x1, x0
    // 0x722c44: mov             x0, x1
    // 0x722c48: stur            x1, [fp, #-0xb8]
    // 0x722c4c: r0 = Throw()
    //     0x722c4c: bl              #0x926328  ; ThrowStub
    // 0x722c50: brk             #0
    // 0x722c54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722c54: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722c58: b               #0x7223a4
    // 0x722c5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722c5c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722c60: b               #0x722534
    // 0x722c64: r0 = NullErrorSharedWithoutFPURegs()
    //     0x722c64: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  _ _markFileAsDownloaded(/* No info */) async {
    // ** addr: 0x722c68, size: 0x154
    // 0x722c68: EnterFrame
    //     0x722c68: stp             fp, lr, [SP, #-0x10]!
    //     0x722c6c: mov             fp, SP
    // 0x722c70: AllocStack(0x28)
    //     0x722c70: sub             SP, SP, #0x28
    // 0x722c74: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x722c74: stur            NULL, [fp, #-8]
    //     0x722c78: stur            x1, [fp, #-0x10]
    //     0x722c7c: stur            x2, [fp, #-0x18]
    // 0x722c80: CheckStackOverflow
    //     0x722c80: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x722c84: cmp             SP, x16
    //     0x722c88: b.ls            #0x722db4
    // 0x722c8c: InitAsync() -> Future<void?>
    //     0x722c8c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x722c90: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x722c94: r0 = getInstance()
    //     0x722c94: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x722c98: mov             x1, x0
    // 0x722c9c: stur            x1, [fp, #-0x20]
    // 0x722ca0: r0 = Await()
    //     0x722ca0: bl              #0x3dd188  ; AwaitStub
    // 0x722ca4: mov             x1, x0
    // 0x722ca8: r2 = "downloaded_tavaf_dualari_files"
    //     0x722ca8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20188] "downloaded_tavaf_dualari_files"
    //     0x722cac: ldr             x2, [x2, #0x188]
    // 0x722cb0: stur            x0, [fp, #-0x10]
    // 0x722cb4: r0 = getStringList()
    //     0x722cb4: bl              #0x6fe404  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getStringList
    // 0x722cb8: cmp             w0, NULL
    // 0x722cbc: b.ne            #0x722ccc
    // 0x722cc0: r1 = <String>
    //     0x722cc0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x722cc4: r2 = 0
    //     0x722cc4: mov             x2, #0
    // 0x722cc8: r0 = _GrowableList()
    //     0x722cc8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x722ccc: mov             x1, x0
    // 0x722cd0: ldur            x2, [fp, #-0x18]
    // 0x722cd4: stur            x0, [fp, #-0x20]
    // 0x722cd8: r0 = contains()
    //     0x722cd8: bl              #0x4ea038  ; [dart:collection] ListBase::contains
    // 0x722cdc: tbz             w0, #4, #0x722dac
    // 0x722ce0: ldur            x3, [fp, #-0x20]
    // 0x722ce4: LoadField: r2 = r3->field_7
    //     0x722ce4: ldur            w2, [x3, #7]
    // 0x722ce8: DecompressPointer r2
    //     0x722ce8: add             x2, x2, HEAP, lsl #32
    // 0x722cec: ldur            x0, [fp, #-0x18]
    // 0x722cf0: r1 = Null
    //     0x722cf0: mov             x1, NULL
    // 0x722cf4: cmp             w2, NULL
    // 0x722cf8: b.eq            #0x722d18
    // 0x722cfc: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x722cfc: ldur            w4, [x2, #0x17]
    // 0x722d00: DecompressPointer r4
    //     0x722d00: add             x4, x4, HEAP, lsl #32
    // 0x722d04: r8 = X0
    //     0x722d04: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x722d08: LoadField: r9 = r4->field_7
    //     0x722d08: ldur            x9, [x4, #7]
    // 0x722d0c: r3 = Null
    //     0x722d0c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20190] Null
    //     0x722d10: ldr             x3, [x3, #0x190]
    // 0x722d14: blr             x9
    // 0x722d18: ldur            x0, [fp, #-0x20]
    // 0x722d1c: LoadField: r1 = r0->field_b
    //     0x722d1c: ldur            w1, [x0, #0xb]
    // 0x722d20: LoadField: r2 = r0->field_f
    //     0x722d20: ldur            w2, [x0, #0xf]
    // 0x722d24: DecompressPointer r2
    //     0x722d24: add             x2, x2, HEAP, lsl #32
    // 0x722d28: LoadField: r3 = r2->field_b
    //     0x722d28: ldur            w3, [x2, #0xb]
    // 0x722d2c: r2 = LoadInt32Instr(r1)
    //     0x722d2c: sbfx            x2, x1, #1, #0x1f
    // 0x722d30: stur            x2, [fp, #-0x28]
    // 0x722d34: r1 = LoadInt32Instr(r3)
    //     0x722d34: sbfx            x1, x3, #1, #0x1f
    // 0x722d38: cmp             x2, x1
    // 0x722d3c: b.ne            #0x722d48
    // 0x722d40: mov             x1, x0
    // 0x722d44: r0 = _growToNextCapacity()
    //     0x722d44: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x722d48: ldur            x3, [fp, #-0x20]
    // 0x722d4c: ldur            x2, [fp, #-0x28]
    // 0x722d50: add             x0, x2, #1
    // 0x722d54: lsl             x1, x0, #1
    // 0x722d58: StoreField: r3->field_b = r1
    //     0x722d58: stur            w1, [x3, #0xb]
    // 0x722d5c: LoadField: r1 = r3->field_f
    //     0x722d5c: ldur            w1, [x3, #0xf]
    // 0x722d60: DecompressPointer r1
    //     0x722d60: add             x1, x1, HEAP, lsl #32
    // 0x722d64: ldur            x0, [fp, #-0x18]
    // 0x722d68: ArrayStore: r1[r2] = r0  ; List_4
    //     0x722d68: add             x25, x1, x2, lsl #2
    //     0x722d6c: add             x25, x25, #0xf
    //     0x722d70: str             w0, [x25]
    //     0x722d74: tbz             w0, #0, #0x722d90
    //     0x722d78: ldurb           w16, [x1, #-1]
    //     0x722d7c: ldurb           w17, [x0, #-1]
    //     0x722d80: and             x16, x17, x16, lsr #2
    //     0x722d84: tst             x16, HEAP, lsr #32
    //     0x722d88: b.eq            #0x722d90
    //     0x722d8c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x722d90: ldur            x1, [fp, #-0x10]
    // 0x722d94: r2 = "downloaded_tavaf_dualari_files"
    //     0x722d94: add             x2, PP, #0x20, lsl #12  ; [pp+0x20188] "downloaded_tavaf_dualari_files"
    //     0x722d98: ldr             x2, [x2, #0x188]
    // 0x722d9c: r0 = setStringList()
    //     0x722d9c: bl              #0x6fe3c8  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setStringList
    // 0x722da0: mov             x1, x0
    // 0x722da4: stur            x1, [fp, #-0x10]
    // 0x722da8: r0 = Await()
    //     0x722da8: bl              #0x3dd188  ; AwaitStub
    // 0x722dac: r0 = Null
    //     0x722dac: mov             x0, NULL
    // 0x722db0: r0 = ReturnAsyncNotFuture()
    //     0x722db0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x722db4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x722db4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x722db8: b               #0x722c8c
  }
  _ downloadAllFiles(/* No info */) async {
    // ** addr: 0x72a934, size: 0x260
    // 0x72a934: EnterFrame
    //     0x72a934: stp             fp, lr, [SP, #-0x10]!
    //     0x72a938: mov             fp, SP
    // 0x72a93c: AllocStack(0xc8)
    //     0x72a93c: sub             SP, SP, #0xc8
    // 0x72a940: SetupParameters(TavafDualariStorageService this /* r1 => r2, fp-0x88 */, dynamic _ /* r2 => r1, fp-0x90 */)
    //     0x72a940: stur            NULL, [fp, #-8]
    //     0x72a944: stur            x1, [fp, #-0x88]
    //     0x72a948: mov             x16, x2
    //     0x72a94c: mov             x2, x1
    //     0x72a950: mov             x1, x16
    //     0x72a954: stur            x1, [fp, #-0x90]
    // 0x72a958: CheckStackOverflow
    //     0x72a958: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a95c: cmp             SP, x16
    //     0x72a960: b.ls            #0x72ab84
    // 0x72a964: InitAsync() -> Future<({String? errorMessage, String? failedFile, bool success})>
    //     0x72a964: add             x0, PP, #0x20, lsl #12  ; [pp+0x20338] TypeArguments: <({String? errorMessage, String? failedFile, bool success})>
    //     0x72a968: ldr             x0, [x0, #0x338]
    //     0x72a96c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72a970: ldur            x0, [fp, #-0x88]
    // 0x72a974: LoadField: r1 = r0->field_7
    //     0x72a974: ldur            w1, [x0, #7]
    // 0x72a978: DecompressPointer r1
    //     0x72a978: add             x1, x1, HEAP, lsl #32
    // 0x72a97c: r0 = hasInternetConnection()
    //     0x72a97c: bl              #0x5f529c  ; [package:umrem_demo/common/services/common_service.dart] CommonService::hasInternetConnection
    // 0x72a980: mov             x1, x0
    // 0x72a984: stur            x1, [fp, #-0x98]
    // 0x72a988: r0 = Await()
    //     0x72a988: bl              #0x3dd188  ; AwaitStub
    // 0x72a98c: r16 = true
    //     0x72a98c: add             x16, NULL, #0x20  ; true
    // 0x72a990: cmp             w0, w16
    // 0x72a994: b.eq            #0x72a9b8
    // 0x72a998: r2 = "İnternet bağlantısı yok"
    //     0x72a998: add             x2, PP, #0x16, lsl #12  ; [pp+0x16198] "İnternet bağlantısı yok"
    //     0x72a99c: ldr             x2, [x2, #0x198]
    // 0x72a9a0: r3 = Null
    //     0x72a9a0: mov             x3, NULL
    // 0x72a9a4: r4 = false
    //     0x72a9a4: add             x4, NULL, #0x30  ; false
    // 0x72a9a8: r1 = 917510
    //     0x72a9a8: mov             x1, #6
    //     0x72a9ac: movk            x1, #0xe, lsl #16
    // 0x72a9b0: r0 = AllocateRecord3Named()
    //     0x72a9b0: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72a9b4: r0 = ReturnAsyncNotFuture()
    //     0x72a9b4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a9b8: r3 = 0
    //     0x72a9b8: mov             x3, #0
    // 0x72a9bc: r0 = const [tavaf-baslangic.jpg, tavaf-arabic-1.png, tavaf-turkish-1.png, tavaf-arabic-2.png, tavaf-turkish-2.png, tavaf-arabic-3.png, tavaf-turkish-3.png, tavaf-arabic-4.png, tavaf-turkish-4.png, tavaf-arabic-5.png, tavaf-turkish-5.png, tavaf-arabic-6.png, tavaf-turkish-6.png, tavaf-arabic-7.png, tavaf-turkish-7.png, tavaf-bitis-1.jpg, tavaf-bitis-2.jpg]
    //     0x72a9bc: add             x0, PP, #0x20, lsl #12  ; [pp+0x20340] List<String>(17)
    //     0x72a9c0: ldr             x0, [x0, #0x340]
    // 0x72a9c4: stur            x3, [fp, #-0xa0]
    // 0x72a9c8: CheckStackOverflow
    //     0x72a9c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a9cc: cmp             SP, x16
    //     0x72a9d0: b.ls            #0x72ab8c
    // 0x72a9d4: cmp             x3, #0x11
    // 0x72a9d8: b.ge            #0x72ab08
    // 0x72a9dc: ArrayLoad: r4 = r0[r3]  ; Unknown_4
    //     0x72a9dc: add             x16, x0, x3, lsl #2
    //     0x72a9e0: ldur            w4, [x16, #0xf]
    // 0x72a9e4: DecompressPointer r4
    //     0x72a9e4: add             x4, x4, HEAP, lsl #32
    // 0x72a9e8: stur            x4, [fp, #-0x98]
    // 0x72a9ec: ldur            x1, [fp, #-0x88]
    // 0x72a9f0: mov             x2, x4
    // 0x72a9f4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x72a9f4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x72a9f8: r0 = downloadFile()
    //     0x72a9f8: bl              #0x722340  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::downloadFile
    // 0x72a9fc: mov             x1, x0
    // 0x72aa00: stur            x1, [fp, #-0xa8]
    // 0x72aa04: r0 = Await()
    //     0x72aa04: bl              #0x3dd188  ; AwaitStub
    // 0x72aa08: cmp             w0, NULL
    // 0x72aa0c: b.eq            #0x72aa48
    // 0x72aa10: ldur            x1, [fp, #-0xa0]
    // 0x72aa14: add             x3, x1, #1
    // 0x72aa18: stur            x3, [fp, #-0xb0]
    // 0x72aa1c: lsl             x0, x3, #1
    // 0x72aa20: ldur            x16, [fp, #-0x90]
    // 0x72aa24: stp             x0, x16, [SP, #8]
    // 0x72aa28: r16 = 34
    //     0x72aa28: mov             x16, #0x22
    // 0x72aa2c: str             x16, [SP]
    // 0x72aa30: ldur            x0, [fp, #-0x90]
    // 0x72aa34: ClosureCall
    //     0x72aa34: ldr             x4, [PP, #0xa90]  ; [pp+0xa90] List(5) [0, 0x3, 0x3, 0x3, Null]
    //     0x72aa38: ldur            x2, [x0, #0x1f]
    //     0x72aa3c: blr             x2
    // 0x72aa40: ldur            x3, [fp, #-0xb0]
    // 0x72aa44: b               #0x72a9bc
    // 0x72aa48: ldur            x3, [fp, #-0x98]
    // 0x72aa4c: r1 = Null
    //     0x72aa4c: mov             x1, NULL
    // 0x72aa50: r2 = 6
    //     0x72aa50: mov             x2, #6
    // 0x72aa54: r0 = AllocateArray()
    //     0x72aa54: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72aa58: r16 = "Dosya "
    //     0x72aa58: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72aa5c: ldr             x16, [x16, #0x318]
    // 0x72aa60: StoreField: r0->field_f = r16
    //     0x72aa60: stur            w16, [x0, #0xf]
    // 0x72aa64: ldur            x3, [fp, #-0x98]
    // 0x72aa68: StoreField: r0->field_13 = r3
    //     0x72aa68: stur            w3, [x0, #0x13]
    // 0x72aa6c: r16 = " indirilemedi."
    //     0x72aa6c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20348] " indirilemedi."
    //     0x72aa70: ldr             x16, [x16, #0x348]
    // 0x72aa74: ArrayStore: r0[0] = r16  ; List_4
    //     0x72aa74: stur            w16, [x0, #0x17]
    // 0x72aa78: str             x0, [SP]
    // 0x72aa7c: r0 = _interpolate()
    //     0x72aa7c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72aa80: mov             x2, x0
    // 0x72aa84: ldur            x3, [fp, #-0x98]
    // 0x72aa88: r4 = false
    //     0x72aa88: add             x4, NULL, #0x30  ; false
    // 0x72aa8c: stur            x0, [fp, #-0x90]
    // 0x72aa90: r1 = 917510
    //     0x72aa90: mov             x1, #6
    //     0x72aa94: movk            x1, #0xe, lsl #16
    // 0x72aa98: r0 = AllocateRecord3Named()
    //     0x72aa98: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72aa9c: r0 = ReturnAsyncNotFuture()
    //     0x72aa9c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72aaa0: sub             SP, fp, #0xc8
    // 0x72aaa4: ldur            x3, [fp, #-0x98]
    // 0x72aaa8: stur            x0, [fp, #-0x90]
    // 0x72aaac: r1 = Null
    //     0x72aaac: mov             x1, NULL
    // 0x72aab0: r2 = 8
    //     0x72aab0: mov             x2, #8
    // 0x72aab4: r0 = AllocateArray()
    //     0x72aab4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72aab8: r16 = "Dosya "
    //     0x72aab8: add             x16, PP, #0x20, lsl #12  ; [pp+0x20318] "Dosya "
    //     0x72aabc: ldr             x16, [x16, #0x318]
    // 0x72aac0: StoreField: r0->field_f = r16
    //     0x72aac0: stur            w16, [x0, #0xf]
    // 0x72aac4: ldur            x3, [fp, #-0x98]
    // 0x72aac8: StoreField: r0->field_13 = r3
    //     0x72aac8: stur            w3, [x0, #0x13]
    // 0x72aacc: r16 = " indirilemedi: "
    //     0x72aacc: add             x16, PP, #0x20, lsl #12  ; [pp+0x20350] " indirilemedi: "
    //     0x72aad0: ldr             x16, [x16, #0x350]
    // 0x72aad4: ArrayStore: r0[0] = r16  ; List_4
    //     0x72aad4: stur            w16, [x0, #0x17]
    // 0x72aad8: ldur            x1, [fp, #-0x90]
    // 0x72aadc: StoreField: r0->field_1b = r1
    //     0x72aadc: stur            w1, [x0, #0x1b]
    // 0x72aae0: str             x0, [SP]
    // 0x72aae4: r0 = _interpolate()
    //     0x72aae4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72aae8: mov             x2, x0
    // 0x72aaec: ldur            x3, [fp, #-0x98]
    // 0x72aaf0: r4 = false
    //     0x72aaf0: add             x4, NULL, #0x30  ; false
    // 0x72aaf4: stur            x0, [fp, #-0xa8]
    // 0x72aaf8: r1 = 917510
    //     0x72aaf8: mov             x1, #6
    //     0x72aafc: movk            x1, #0xe, lsl #16
    // 0x72ab00: r0 = AllocateRecord3Named()
    //     0x72ab00: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72ab04: r0 = ReturnAsyncNotFuture()
    //     0x72ab04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72ab08: ldur            x1, [fp, #-0x88]
    // 0x72ab0c: r0 = _markAllFilesDownloaded()
    //     0x72ab0c: bl              #0x72ab94  ; [package:umrem_demo/core/services/tavaf_dualari_storage_service.dart] TavafDualariStorageService::_markAllFilesDownloaded
    // 0x72ab10: mov             x1, x0
    // 0x72ab14: stur            x1, [fp, #-0x90]
    // 0x72ab18: r0 = Await()
    //     0x72ab18: bl              #0x3dd188  ; AwaitStub
    // 0x72ab1c: r2 = Null
    //     0x72ab1c: mov             x2, NULL
    // 0x72ab20: r3 = Null
    //     0x72ab20: mov             x3, NULL
    // 0x72ab24: r4 = true
    //     0x72ab24: add             x4, NULL, #0x20  ; true
    // 0x72ab28: r1 = 917510
    //     0x72ab28: mov             x1, #6
    //     0x72ab2c: movk            x1, #0xe, lsl #16
    // 0x72ab30: r0 = AllocateRecord3Named()
    //     0x72ab30: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72ab34: r0 = ReturnAsyncNotFuture()
    //     0x72ab34: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72ab38: sub             SP, fp, #0xc8
    // 0x72ab3c: stur            x0, [fp, #-0x88]
    // 0x72ab40: r1 = Null
    //     0x72ab40: mov             x1, NULL
    // 0x72ab44: r2 = 4
    //     0x72ab44: mov             x2, #4
    // 0x72ab48: r0 = AllocateArray()
    //     0x72ab48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ab4c: r16 = "İndirme hatası: "
    //     0x72ab4c: add             x16, PP, #0x16, lsl #12  ; [pp+0x161a0] "İndirme hatası: "
    //     0x72ab50: ldr             x16, [x16, #0x1a0]
    // 0x72ab54: StoreField: r0->field_f = r16
    //     0x72ab54: stur            w16, [x0, #0xf]
    // 0x72ab58: ldur            x1, [fp, #-0x88]
    // 0x72ab5c: StoreField: r0->field_13 = r1
    //     0x72ab5c: stur            w1, [x0, #0x13]
    // 0x72ab60: str             x0, [SP]
    // 0x72ab64: r0 = _interpolate()
    //     0x72ab64: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72ab68: mov             x2, x0
    // 0x72ab6c: r3 = Null
    //     0x72ab6c: mov             x3, NULL
    // 0x72ab70: r4 = false
    //     0x72ab70: add             x4, NULL, #0x30  ; false
    // 0x72ab74: r1 = 917510
    //     0x72ab74: mov             x1, #6
    //     0x72ab78: movk            x1, #0xe, lsl #16
    // 0x72ab7c: r0 = AllocateRecord3Named()
    //     0x72ab7c: bl              #0x926b2c  ; AllocateRecord3NamedStub
    // 0x72ab80: r0 = ReturnAsyncNotFuture()
    //     0x72ab80: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72ab84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72ab84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72ab88: b               #0x72a964
    // 0x72ab8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72ab8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72ab90: b               #0x72a9d4
  }
  _ _markAllFilesDownloaded(/* No info */) async {
    // ** addr: 0x72ab94, size: 0x68
    // 0x72ab94: EnterFrame
    //     0x72ab94: stp             fp, lr, [SP, #-0x10]!
    //     0x72ab98: mov             fp, SP
    // 0x72ab9c: AllocStack(0x18)
    //     0x72ab9c: sub             SP, SP, #0x18
    // 0x72aba0: SetupParameters(TavafDualariStorageService this /* r1 => r1, fp-0x10 */)
    //     0x72aba0: stur            NULL, [fp, #-8]
    //     0x72aba4: stur            x1, [fp, #-0x10]
    // 0x72aba8: CheckStackOverflow
    //     0x72aba8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72abac: cmp             SP, x16
    //     0x72abb0: b.ls            #0x72abf4
    // 0x72abb4: InitAsync() -> Future<void?>
    //     0x72abb4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72abb8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72abbc: r0 = getInstance()
    //     0x72abbc: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x72abc0: mov             x1, x0
    // 0x72abc4: stur            x1, [fp, #-0x18]
    // 0x72abc8: r0 = Await()
    //     0x72abc8: bl              #0x3dd188  ; AwaitStub
    // 0x72abcc: mov             x1, x0
    // 0x72abd0: r2 = "all_tavaf_dualari_downloaded"
    //     0x72abd0: add             x2, PP, #0x1a, lsl #12  ; [pp+0x1a2c0] "all_tavaf_dualari_downloaded"
    //     0x72abd4: ldr             x2, [x2, #0x2c0]
    // 0x72abd8: r3 = true
    //     0x72abd8: add             x3, NULL, #0x20  ; true
    // 0x72abdc: r0 = setBool()
    //     0x72abdc: bl              #0x636ad0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setBool
    // 0x72abe0: mov             x1, x0
    // 0x72abe4: stur            x1, [fp, #-0x18]
    // 0x72abe8: r0 = Await()
    //     0x72abe8: bl              #0x3dd188  ; AwaitStub
    // 0x72abec: r0 = Null
    //     0x72abec: mov             x0, NULL
    // 0x72abf0: r0 = ReturnAsyncNotFuture()
    //     0x72abf0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72abf4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72abf4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72abf8: b               #0x72abb4
  }
}
