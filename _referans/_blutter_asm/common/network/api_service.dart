// lib: , url: package:umrem_demo/common/network/api_service.dart

// class id: 1049485, size: 0x8
class :: {
}

// class id: 220, size: 0xc, field offset: 0x8
class ApiService extends Object {

  _ getPageTranslations(/* No info */) async {
    // ** addr: 0x71b5cc, size: 0x258
    // 0x71b5cc: EnterFrame
    //     0x71b5cc: stp             fp, lr, [SP, #-0x10]!
    //     0x71b5d0: mov             fp, SP
    // 0x71b5d4: AllocStack(0x40)
    //     0x71b5d4: sub             SP, SP, #0x40
    // 0x71b5d8: SetupParameters(ApiService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */)
    //     0x71b5d8: stur            NULL, [fp, #-8]
    //     0x71b5dc: stur            x1, [fp, #-0x10]
    //     0x71b5e0: stur            x2, [fp, #-0x18]
    //     0x71b5e4: stur            x3, [fp, #-0x20]
    // 0x71b5e8: CheckStackOverflow
    //     0x71b5e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71b5ec: cmp             SP, x16
    //     0x71b5f0: b.ls            #0x71b81c
    // 0x71b5f4: InitAsync() -> Future<List<Map<String, dynamic>>>
    //     0x71b5f4: add             x0, PP, #0x17, lsl #12  ; [pp+0x17aa8] TypeArguments: <List<Map<String, dynamic>>>
    //     0x71b5f8: ldr             x0, [x0, #0xaa8]
    //     0x71b5fc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x71b600: r0 = LoadStaticField(0xfc8)
    //     0x71b600: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71b604: ldr             x0, [x0, #0x1f90]
    // 0x71b608: stur            x0, [fp, #-0x28]
    // 0x71b60c: r1 = Null
    //     0x71b60c: mov             x1, NULL
    // 0x71b610: r2 = 12
    //     0x71b610: mov             x2, #0xc
    // 0x71b614: r0 = AllocateArray()
    //     0x71b614: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71b618: mov             x2, x0
    // 0x71b61c: ldur            x0, [fp, #-0x28]
    // 0x71b620: StoreField: r2->field_f = r0
    //     0x71b620: stur            w0, [x2, #0xf]
    // 0x71b624: r0 = LoadStaticField(0xfcc)
    //     0x71b624: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x71b628: ldr             x0, [x0, #0x1f98]
    // 0x71b62c: StoreField: r2->field_13 = r0
    //     0x71b62c: stur            w0, [x2, #0x13]
    // 0x71b630: r16 = "/by_page/"
    //     0x71b630: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ab0] "/by_page/"
    //     0x71b634: ldr             x16, [x16, #0xab0]
    // 0x71b638: ArrayStore: r2[0] = r16  ; List_4
    //     0x71b638: stur            w16, [x2, #0x17]
    // 0x71b63c: ldur            x3, [fp, #-0x18]
    // 0x71b640: r0 = BoxInt64Instr(r3)
    //     0x71b640: sbfiz           x0, x3, #1, #0x1f
    //     0x71b644: cmp             x3, x0, asr #1
    //     0x71b648: b.eq            #0x71b654
    //     0x71b64c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x71b650: stur            x3, [x0, #7]
    // 0x71b654: StoreField: r2->field_1b = r0
    //     0x71b654: stur            w0, [x2, #0x1b]
    // 0x71b658: r16 = "\?translations="
    //     0x71b658: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ab8] "\?translations="
    //     0x71b65c: ldr             x16, [x16, #0xab8]
    // 0x71b660: StoreField: r2->field_1f = r16
    //     0x71b660: stur            w16, [x2, #0x1f]
    // 0x71b664: ldur            x3, [fp, #-0x20]
    // 0x71b668: r0 = BoxInt64Instr(r3)
    //     0x71b668: sbfiz           x0, x3, #1, #0x1f
    //     0x71b66c: cmp             x3, x0, asr #1
    //     0x71b670: b.eq            #0x71b67c
    //     0x71b674: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x71b678: stur            x3, [x0, #7]
    // 0x71b67c: StoreField: r2->field_23 = r0
    //     0x71b67c: stur            w0, [x2, #0x23]
    // 0x71b680: str             x2, [SP]
    // 0x71b684: r0 = _interpolate()
    //     0x71b684: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x71b688: mov             x1, x0
    // 0x71b68c: ldur            x0, [fp, #-0x10]
    // 0x71b690: LoadField: r2 = r0->field_7
    //     0x71b690: ldur            w2, [x0, #7]
    // 0x71b694: DecompressPointer r2
    //     0x71b694: add             x2, x2, HEAP, lsl #32
    // 0x71b698: stur            x2, [fp, #-0x28]
    // 0x71b69c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x71b69c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x71b6a0: r0 = parse()
    //     0x71b6a0: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x71b6a4: ldur            x1, [fp, #-0x28]
    // 0x71b6a8: mov             x2, x0
    // 0x71b6ac: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x71b6ac: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x71b6b0: r0 = get()
    //     0x71b6b0: bl              #0x6fe17c  ; [package:http/src/base_client.dart] BaseClient::get
    // 0x71b6b4: mov             x1, x0
    // 0x71b6b8: stur            x1, [fp, #-0x10]
    // 0x71b6bc: r0 = Await()
    //     0x71b6bc: bl              #0x3dd188  ; AwaitStub
    // 0x71b6c0: LoadField: r3 = r0->field_b
    //     0x71b6c0: ldur            x3, [x0, #0xb]
    // 0x71b6c4: stur            x3, [fp, #-0x18]
    // 0x71b6c8: cmp             x3, #0xc8
    // 0x71b6cc: b.ne            #0x71b7bc
    // 0x71b6d0: mov             x1, x0
    // 0x71b6d4: r0 = body()
    //     0x71b6d4: bl              #0x71b824  ; [package:http/src/response.dart] Response::body
    // 0x71b6d8: mov             x2, x0
    // 0x71b6dc: r1 = Instance_JsonCodec
    //     0x71b6dc: add             x1, PP, #8, lsl #12  ; [pp+0x84f8] Obj!JsonCodec@a27081
    //     0x71b6e0: ldr             x1, [x1, #0x4f8]
    // 0x71b6e4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x71b6e4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x71b6e8: r0 = decode()
    //     0x71b6e8: bl              #0x82b898  ; [dart:convert] JsonCodec::decode
    // 0x71b6ec: r16 = "verses"
    //     0x71b6ec: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ac0] "verses"
    //     0x71b6f0: ldr             x16, [x16, #0xac0]
    // 0x71b6f4: stp             x16, x0, [SP]
    // 0x71b6f8: r4 = 0
    //     0x71b6f8: mov             x4, #0
    // 0x71b6fc: ldr             x0, [SP, #8]
    // 0x71b700: r16 = 139786425482080
    //     0x71b700: add             x16, PP, #0x17, lsl #12  ; [pp+0x17ac8] IMM: 0x7f22903c3b60
    //     0x71b704: add             x16, x16, #0xac8
    // 0x71b708: ldp             lr, x5, [x16]
    // 0x71b70c: blr             lr
    // 0x71b710: mov             x3, x0
    // 0x71b714: r2 = Null
    //     0x71b714: mov             x2, NULL
    // 0x71b718: r1 = Null
    //     0x71b718: mov             x1, NULL
    // 0x71b71c: stur            x3, [fp, #-0x10]
    // 0x71b720: r4 = 60
    //     0x71b720: mov             x4, #0x3c
    // 0x71b724: branchIfSmi(r0, 0x71b730)
    //     0x71b724: tbz             w0, #0, #0x71b730
    // 0x71b728: r4 = LoadClassIdInstr(r0)
    //     0x71b728: ldur            x4, [x0, #-1]
    //     0x71b72c: ubfx            x4, x4, #0xc, #0x14
    // 0x71b730: sub             x4, x4, #0x5a
    // 0x71b734: cmp             x4, #2
    // 0x71b738: b.ls            #0x71b74c
    // 0x71b73c: r8 = List
    //     0x71b73c: ldr             x8, [PP, #0x30b8]  ; [pp+0x30b8] Type: List
    // 0x71b740: r3 = Null
    //     0x71b740: add             x3, PP, #0x17, lsl #12  ; [pp+0x17ad8] Null
    //     0x71b744: ldr             x3, [x3, #0xad8]
    // 0x71b748: r0 = List()
    //     0x71b748: bl              #0x93b5b0  ; IsType_List_Stub
    // 0x71b74c: r1 = Function '<anonymous closure>':.
    //     0x71b74c: add             x1, PP, #0x17, lsl #12  ; [pp+0x17ae8] AnonymousClosure: (0x71d3d0), in [package:umrem_demo/common/network/api_service.dart] ApiService::getPageTranslations (0x71b5cc)
    //     0x71b750: ldr             x1, [x1, #0xae8]
    // 0x71b754: r2 = Null
    //     0x71b754: mov             x2, NULL
    // 0x71b758: r0 = AllocateClosure()
    //     0x71b758: bl              #0x9273d4  ; AllocateClosureStub
    // 0x71b75c: mov             x1, x0
    // 0x71b760: ldur            x0, [fp, #-0x10]
    // 0x71b764: r2 = LoadClassIdInstr(r0)
    //     0x71b764: ldur            x2, [x0, #-1]
    //     0x71b768: ubfx            x2, x2, #0xc, #0x14
    // 0x71b76c: r16 = <Map<String, dynamic>>
    //     0x71b76c: ldr             x16, [PP, #0x3918]  ; [pp+0x3918] TypeArguments: <Map<String, dynamic>>
    // 0x71b770: stp             x0, x16, [SP, #8]
    // 0x71b774: str             x1, [SP]
    // 0x71b778: mov             x0, x2
    // 0x71b77c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x71b77c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x71b780: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x71b780: mov             x17, #0xd1d6
    //     0x71b784: add             lr, x0, x17
    //     0x71b788: ldr             lr, [x21, lr, lsl #3]
    //     0x71b78c: blr             lr
    // 0x71b790: r1 = LoadClassIdInstr(r0)
    //     0x71b790: ldur            x1, [x0, #-1]
    //     0x71b794: ubfx            x1, x1, #0xc, #0x14
    // 0x71b798: mov             x16, x0
    // 0x71b79c: mov             x0, x1
    // 0x71b7a0: mov             x1, x16
    // 0x71b7a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x71b7a4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x71b7a8: r0 = GDT[cid_x0 + 0xd299]()
    //     0x71b7a8: mov             x17, #0xd299
    //     0x71b7ac: add             lr, x0, x17
    //     0x71b7b0: ldr             lr, [x21, lr, lsl #3]
    //     0x71b7b4: blr             lr
    // 0x71b7b8: r0 = ReturnAsyncNotFuture()
    //     0x71b7b8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x71b7bc: r1 = Null
    //     0x71b7bc: mov             x1, NULL
    // 0x71b7c0: r2 = 4
    //     0x71b7c0: mov             x2, #4
    // 0x71b7c4: r0 = AllocateArray()
    //     0x71b7c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71b7c8: mov             x2, x0
    // 0x71b7cc: r16 = "API Error: "
    //     0x71b7cc: add             x16, PP, #0x17, lsl #12  ; [pp+0x17af0] "API Error: "
    //     0x71b7d0: ldr             x16, [x16, #0xaf0]
    // 0x71b7d4: StoreField: r2->field_f = r16
    //     0x71b7d4: stur            w16, [x2, #0xf]
    // 0x71b7d8: ldur            x3, [fp, #-0x18]
    // 0x71b7dc: r0 = BoxInt64Instr(r3)
    //     0x71b7dc: sbfiz           x0, x3, #1, #0x1f
    //     0x71b7e0: cmp             x3, x0, asr #1
    //     0x71b7e4: b.eq            #0x71b7f0
    //     0x71b7e8: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x71b7ec: stur            x3, [x0, #7]
    // 0x71b7f0: StoreField: r2->field_13 = r0
    //     0x71b7f0: stur            w0, [x2, #0x13]
    // 0x71b7f4: str             x2, [SP]
    // 0x71b7f8: r0 = _interpolate()
    //     0x71b7f8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x71b7fc: stur            x0, [fp, #-0x10]
    // 0x71b800: r0 = _Exception()
    //     0x71b800: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x71b804: mov             x1, x0
    // 0x71b808: ldur            x0, [fp, #-0x10]
    // 0x71b80c: StoreField: r1->field_7 = r0
    //     0x71b80c: stur            w0, [x1, #7]
    // 0x71b810: mov             x0, x1
    // 0x71b814: r0 = Throw()
    //     0x71b814: bl              #0x926328  ; ThrowStub
    // 0x71b818: brk             #0
    // 0x71b81c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71b81c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71b820: b               #0x71b5f4
  }
  [closure] Map<String, dynamic> <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x71d3d0, size: 0x168
    // 0x71d3d0: EnterFrame
    //     0x71d3d0: stp             fp, lr, [SP, #-0x10]!
    //     0x71d3d4: mov             fp, SP
    // 0x71d3d8: AllocStack(0x20)
    //     0x71d3d8: sub             SP, SP, #0x20
    // 0x71d3dc: CheckStackOverflow
    //     0x71d3dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x71d3e0: cmp             SP, x16
    //     0x71d3e4: b.ls            #0x71d530
    // 0x71d3e8: ldr             x16, [fp, #0x10]
    // 0x71d3ec: r30 = "verse_number"
    //     0x71d3ec: add             lr, PP, #0x17, lsl #12  ; [pp+0x17af8] "verse_number"
    //     0x71d3f0: ldr             lr, [lr, #0xaf8]
    // 0x71d3f4: stp             lr, x16, [SP]
    // 0x71d3f8: r4 = 0
    //     0x71d3f8: mov             x4, #0
    // 0x71d3fc: ldr             x0, [SP, #8]
    // 0x71d400: r16 = 139786425482080
    //     0x71d400: add             x16, PP, #0x17, lsl #12  ; [pp+0x17b00] IMM: 0x7f22903c3b60
    //     0x71d404: add             x16, x16, #0xb00
    // 0x71d408: ldp             lr, x5, [x16]
    // 0x71d40c: blr             lr
    // 0x71d410: mov             x3, x0
    // 0x71d414: r2 = Null
    //     0x71d414: mov             x2, NULL
    // 0x71d418: r1 = Null
    //     0x71d418: mov             x1, NULL
    // 0x71d41c: stur            x3, [fp, #-8]
    // 0x71d420: branchIfSmi(r0, 0x71d448)
    //     0x71d420: tbz             w0, #0, #0x71d448
    // 0x71d424: r4 = LoadClassIdInstr(r0)
    //     0x71d424: ldur            x4, [x0, #-1]
    //     0x71d428: ubfx            x4, x4, #0xc, #0x14
    // 0x71d42c: sub             x4, x4, #0x3c
    // 0x71d430: cmp             x4, #1
    // 0x71d434: b.ls            #0x71d448
    // 0x71d438: r8 = int
    //     0x71d438: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x71d43c: r3 = Null
    //     0x71d43c: add             x3, PP, #0x17, lsl #12  ; [pp+0x17b10] Null
    //     0x71d440: ldr             x3, [x3, #0xb10]
    // 0x71d444: r0 = int()
    //     0x71d444: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x71d448: ldr             x16, [fp, #0x10]
    // 0x71d44c: r30 = "translations"
    //     0x71d44c: add             lr, PP, #0x17, lsl #12  ; [pp+0x17b20] "translations"
    //     0x71d450: ldr             lr, [lr, #0xb20]
    // 0x71d454: stp             lr, x16, [SP]
    // 0x71d458: r4 = 0
    //     0x71d458: mov             x4, #0
    // 0x71d45c: ldr             x0, [SP, #8]
    // 0x71d460: r16 = 139786425482080
    //     0x71d460: add             x16, PP, #0x17, lsl #12  ; [pp+0x17b28] IMM: 0x7f22903c3b60
    //     0x71d464: add             x16, x16, #0xb28
    // 0x71d468: ldp             lr, x5, [x16]
    // 0x71d46c: blr             lr
    // 0x71d470: stp             xzr, x0, [SP]
    // 0x71d474: r4 = 0
    //     0x71d474: mov             x4, #0
    // 0x71d478: ldr             x0, [SP, #8]
    // 0x71d47c: r16 = 139786425482080
    //     0x71d47c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17b38] IMM: 0x7f22903c3b60
    //     0x71d480: add             x16, x16, #0xb38
    // 0x71d484: ldp             lr, x5, [x16]
    // 0x71d488: blr             lr
    // 0x71d48c: r16 = "text"
    //     0x71d48c: ldr             x16, [PP, #0x7178]  ; [pp+0x7178] "text"
    // 0x71d490: stp             x16, x0, [SP]
    // 0x71d494: r4 = 0
    //     0x71d494: mov             x4, #0
    // 0x71d498: ldr             x0, [SP, #8]
    // 0x71d49c: r16 = 139786425482080
    //     0x71d49c: add             x16, PP, #0x17, lsl #12  ; [pp+0x17b48] IMM: 0x7f22903c3b60
    //     0x71d4a0: add             x16, x16, #0xb48
    // 0x71d4a4: ldp             lr, x5, [x16]
    // 0x71d4a8: blr             lr
    // 0x71d4ac: mov             x3, x0
    // 0x71d4b0: r2 = Null
    //     0x71d4b0: mov             x2, NULL
    // 0x71d4b4: r1 = Null
    //     0x71d4b4: mov             x1, NULL
    // 0x71d4b8: stur            x3, [fp, #-0x10]
    // 0x71d4bc: r4 = 60
    //     0x71d4bc: mov             x4, #0x3c
    // 0x71d4c0: branchIfSmi(r0, 0x71d4cc)
    //     0x71d4c0: tbz             w0, #0, #0x71d4cc
    // 0x71d4c4: r4 = LoadClassIdInstr(r0)
    //     0x71d4c4: ldur            x4, [x0, #-1]
    //     0x71d4c8: ubfx            x4, x4, #0xc, #0x14
    // 0x71d4cc: sub             x4, x4, #0x5e
    // 0x71d4d0: cmp             x4, #1
    // 0x71d4d4: b.ls            #0x71d4e8
    // 0x71d4d8: r8 = String
    //     0x71d4d8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x71d4dc: r3 = Null
    //     0x71d4dc: add             x3, PP, #0x17, lsl #12  ; [pp+0x17b58] Null
    //     0x71d4e0: ldr             x3, [x3, #0xb58]
    // 0x71d4e4: r0 = String()
    //     0x71d4e4: bl              #0x939a58  ; IsType_String_Stub
    // 0x71d4e8: r1 = Null
    //     0x71d4e8: mov             x1, NULL
    // 0x71d4ec: r2 = 8
    //     0x71d4ec: mov             x2, #8
    // 0x71d4f0: r0 = AllocateArray()
    //     0x71d4f0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x71d4f4: r16 = "no"
    //     0x71d4f4: add             x16, PP, #9, lsl #12  ; [pp+0x9c88] "no"
    //     0x71d4f8: ldr             x16, [x16, #0xc88]
    // 0x71d4fc: StoreField: r0->field_f = r16
    //     0x71d4fc: stur            w16, [x0, #0xf]
    // 0x71d500: ldur            x1, [fp, #-8]
    // 0x71d504: StoreField: r0->field_13 = r1
    //     0x71d504: stur            w1, [x0, #0x13]
    // 0x71d508: r16 = "text"
    //     0x71d508: ldr             x16, [PP, #0x7178]  ; [pp+0x7178] "text"
    // 0x71d50c: ArrayStore: r0[0] = r16  ; List_4
    //     0x71d50c: stur            w16, [x0, #0x17]
    // 0x71d510: ldur            x1, [fp, #-0x10]
    // 0x71d514: StoreField: r0->field_1b = r1
    //     0x71d514: stur            w1, [x0, #0x1b]
    // 0x71d518: r16 = <String, dynamic>
    //     0x71d518: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x71d51c: stp             x0, x16, [SP]
    // 0x71d520: r0 = Map._fromLiteral()
    //     0x71d520: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x71d524: LeaveFrame
    //     0x71d524: mov             SP, fp
    //     0x71d528: ldp             fp, lr, [SP], #0x10
    // 0x71d52c: ret
    //     0x71d52c: ret             
    // 0x71d530: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x71d530: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x71d534: b               #0x71d3e8
  }
}
