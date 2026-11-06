// lib: , url: package:umrem_demo/features/dualar/models/model_zikirlerim.dart

// class id: 1049569, size: 0x8
class :: {
}

// class id: 197, size: 0x18, field offset: 0x8
class ModelZikirlerim extends Object {

  _ ModelZikirlerim.fromJson(/* No info */) {
    // ** addr: 0x5e62d4, size: 0x25c
    // 0x5e62d4: EnterFrame
    //     0x5e62d4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e62d8: mov             fp, SP
    // 0x5e62dc: AllocStack(0x18)
    //     0x5e62dc: sub             SP, SP, #0x18
    // 0x5e62e0: r3 = ""
    //     0x5e62e0: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5e62e4: r0 = "0"
    //     0x5e62e4: ldr             x0, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5e62e8: mov             x5, x1
    // 0x5e62ec: mov             x4, x2
    // 0x5e62f0: stur            x1, [fp, #-8]
    // 0x5e62f4: stur            x2, [fp, #-0x10]
    // 0x5e62f8: CheckStackOverflow
    //     0x5e62f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e62fc: cmp             SP, x16
    //     0x5e6300: b.ls            #0x5e6528
    // 0x5e6304: StoreField: r5->field_7 = r3
    //     0x5e6304: stur            w3, [x5, #7]
    // 0x5e6308: StoreField: r5->field_b = r0
    //     0x5e6308: stur            w0, [x5, #0xb]
    // 0x5e630c: StoreField: r5->field_f = r3
    //     0x5e630c: stur            w3, [x5, #0xf]
    // 0x5e6310: r0 = LoadClassIdInstr(r4)
    //     0x5e6310: ldur            x0, [x4, #-1]
    //     0x5e6314: ubfx            x0, x0, #0xc, #0x14
    // 0x5e6318: mov             x1, x4
    // 0x5e631c: r2 = "zikirAdi"
    //     0x5e631c: add             x2, PP, #0x20, lsl #12  ; [pp+0x207b0] "zikirAdi"
    //     0x5e6320: ldr             x2, [x2, #0x7b0]
    // 0x5e6324: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e6324: add             lr, x0, #0x36e
    //     0x5e6328: ldr             lr, [x21, lr, lsl #3]
    //     0x5e632c: blr             lr
    // 0x5e6330: mov             x3, x0
    // 0x5e6334: r2 = Null
    //     0x5e6334: mov             x2, NULL
    // 0x5e6338: r1 = Null
    //     0x5e6338: mov             x1, NULL
    // 0x5e633c: stur            x3, [fp, #-0x18]
    // 0x5e6340: r4 = 60
    //     0x5e6340: mov             x4, #0x3c
    // 0x5e6344: branchIfSmi(r0, 0x5e6350)
    //     0x5e6344: tbz             w0, #0, #0x5e6350
    // 0x5e6348: r4 = LoadClassIdInstr(r0)
    //     0x5e6348: ldur            x4, [x0, #-1]
    //     0x5e634c: ubfx            x4, x4, #0xc, #0x14
    // 0x5e6350: sub             x4, x4, #0x5e
    // 0x5e6354: cmp             x4, #1
    // 0x5e6358: b.ls            #0x5e636c
    // 0x5e635c: r8 = String
    //     0x5e635c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5e6360: r3 = Null
    //     0x5e6360: add             x3, PP, #0x20, lsl #12  ; [pp+0x208a0] Null
    //     0x5e6364: ldr             x3, [x3, #0x8a0]
    // 0x5e6368: r0 = String()
    //     0x5e6368: bl              #0x939a58  ; IsType_String_Stub
    // 0x5e636c: ldur            x0, [fp, #-0x18]
    // 0x5e6370: ldur            x3, [fp, #-8]
    // 0x5e6374: StoreField: r3->field_7 = r0
    //     0x5e6374: stur            w0, [x3, #7]
    //     0x5e6378: ldurb           w16, [x3, #-1]
    //     0x5e637c: ldurb           w17, [x0, #-1]
    //     0x5e6380: and             x16, x17, x16, lsr #2
    //     0x5e6384: tst             x16, HEAP, lsr #32
    //     0x5e6388: b.eq            #0x5e6390
    //     0x5e638c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e6390: ldur            x4, [fp, #-0x10]
    // 0x5e6394: r0 = LoadClassIdInstr(r4)
    //     0x5e6394: ldur            x0, [x4, #-1]
    //     0x5e6398: ubfx            x0, x0, #0xc, #0x14
    // 0x5e639c: mov             x1, x4
    // 0x5e63a0: r2 = "zikirSayisi"
    //     0x5e63a0: add             x2, PP, #0x20, lsl #12  ; [pp+0x207b8] "zikirSayisi"
    //     0x5e63a4: ldr             x2, [x2, #0x7b8]
    // 0x5e63a8: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e63a8: add             lr, x0, #0x36e
    //     0x5e63ac: ldr             lr, [x21, lr, lsl #3]
    //     0x5e63b0: blr             lr
    // 0x5e63b4: mov             x3, x0
    // 0x5e63b8: r2 = Null
    //     0x5e63b8: mov             x2, NULL
    // 0x5e63bc: r1 = Null
    //     0x5e63bc: mov             x1, NULL
    // 0x5e63c0: stur            x3, [fp, #-0x18]
    // 0x5e63c4: r4 = 60
    //     0x5e63c4: mov             x4, #0x3c
    // 0x5e63c8: branchIfSmi(r0, 0x5e63d4)
    //     0x5e63c8: tbz             w0, #0, #0x5e63d4
    // 0x5e63cc: r4 = LoadClassIdInstr(r0)
    //     0x5e63cc: ldur            x4, [x0, #-1]
    //     0x5e63d0: ubfx            x4, x4, #0xc, #0x14
    // 0x5e63d4: sub             x4, x4, #0x5e
    // 0x5e63d8: cmp             x4, #1
    // 0x5e63dc: b.ls            #0x5e63f0
    // 0x5e63e0: r8 = String
    //     0x5e63e0: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5e63e4: r3 = Null
    //     0x5e63e4: add             x3, PP, #0x20, lsl #12  ; [pp+0x208b0] Null
    //     0x5e63e8: ldr             x3, [x3, #0x8b0]
    // 0x5e63ec: r0 = String()
    //     0x5e63ec: bl              #0x939a58  ; IsType_String_Stub
    // 0x5e63f0: ldur            x0, [fp, #-0x18]
    // 0x5e63f4: ldur            x3, [fp, #-8]
    // 0x5e63f8: StoreField: r3->field_b = r0
    //     0x5e63f8: stur            w0, [x3, #0xb]
    //     0x5e63fc: ldurb           w16, [x3, #-1]
    //     0x5e6400: ldurb           w17, [x0, #-1]
    //     0x5e6404: and             x16, x17, x16, lsr #2
    //     0x5e6408: tst             x16, HEAP, lsr #32
    //     0x5e640c: b.eq            #0x5e6414
    //     0x5e6410: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e6414: ldur            x4, [fp, #-0x10]
    // 0x5e6418: r0 = LoadClassIdInstr(r4)
    //     0x5e6418: ldur            x0, [x4, #-1]
    //     0x5e641c: ubfx            x0, x0, #0xc, #0x14
    // 0x5e6420: mov             x1, x4
    // 0x5e6424: r2 = "zikirTarihi"
    //     0x5e6424: add             x2, PP, #0x20, lsl #12  ; [pp+0x207c0] "zikirTarihi"
    //     0x5e6428: ldr             x2, [x2, #0x7c0]
    // 0x5e642c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e642c: add             lr, x0, #0x36e
    //     0x5e6430: ldr             lr, [x21, lr, lsl #3]
    //     0x5e6434: blr             lr
    // 0x5e6438: mov             x3, x0
    // 0x5e643c: r2 = Null
    //     0x5e643c: mov             x2, NULL
    // 0x5e6440: r1 = Null
    //     0x5e6440: mov             x1, NULL
    // 0x5e6444: stur            x3, [fp, #-0x18]
    // 0x5e6448: r4 = 60
    //     0x5e6448: mov             x4, #0x3c
    // 0x5e644c: branchIfSmi(r0, 0x5e6458)
    //     0x5e644c: tbz             w0, #0, #0x5e6458
    // 0x5e6450: r4 = LoadClassIdInstr(r0)
    //     0x5e6450: ldur            x4, [x0, #-1]
    //     0x5e6454: ubfx            x4, x4, #0xc, #0x14
    // 0x5e6458: sub             x4, x4, #0x5e
    // 0x5e645c: cmp             x4, #1
    // 0x5e6460: b.ls            #0x5e6474
    // 0x5e6464: r8 = String
    //     0x5e6464: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5e6468: r3 = Null
    //     0x5e6468: add             x3, PP, #0x20, lsl #12  ; [pp+0x208c0] Null
    //     0x5e646c: ldr             x3, [x3, #0x8c0]
    // 0x5e6470: r0 = String()
    //     0x5e6470: bl              #0x939a58  ; IsType_String_Stub
    // 0x5e6474: ldur            x0, [fp, #-0x18]
    // 0x5e6478: ldur            x3, [fp, #-8]
    // 0x5e647c: StoreField: r3->field_f = r0
    //     0x5e647c: stur            w0, [x3, #0xf]
    //     0x5e6480: ldurb           w16, [x3, #-1]
    //     0x5e6484: ldurb           w17, [x0, #-1]
    //     0x5e6488: and             x16, x17, x16, lsr #2
    //     0x5e648c: tst             x16, HEAP, lsr #32
    //     0x5e6490: b.eq            #0x5e6498
    //     0x5e6494: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e6498: ldur            x1, [fp, #-0x10]
    // 0x5e649c: r0 = LoadClassIdInstr(r1)
    //     0x5e649c: ldur            x0, [x1, #-1]
    //     0x5e64a0: ubfx            x0, x0, #0xc, #0x14
    // 0x5e64a4: r2 = "id"
    //     0x5e64a4: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5e64a8: ldr             x2, [x2, #0xae8]
    // 0x5e64ac: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e64ac: add             lr, x0, #0x36e
    //     0x5e64b0: ldr             lr, [x21, lr, lsl #3]
    //     0x5e64b4: blr             lr
    // 0x5e64b8: mov             x3, x0
    // 0x5e64bc: r2 = Null
    //     0x5e64bc: mov             x2, NULL
    // 0x5e64c0: r1 = Null
    //     0x5e64c0: mov             x1, NULL
    // 0x5e64c4: stur            x3, [fp, #-0x10]
    // 0x5e64c8: branchIfSmi(r0, 0x5e64f0)
    //     0x5e64c8: tbz             w0, #0, #0x5e64f0
    // 0x5e64cc: r4 = LoadClassIdInstr(r0)
    //     0x5e64cc: ldur            x4, [x0, #-1]
    //     0x5e64d0: ubfx            x4, x4, #0xc, #0x14
    // 0x5e64d4: sub             x4, x4, #0x3c
    // 0x5e64d8: cmp             x4, #1
    // 0x5e64dc: b.ls            #0x5e64f0
    // 0x5e64e0: r8 = int?
    //     0x5e64e0: ldr             x8, [PP, #0x1668]  ; [pp+0x1668] Type: int?
    // 0x5e64e4: r3 = Null
    //     0x5e64e4: add             x3, PP, #0x20, lsl #12  ; [pp+0x208d0] Null
    //     0x5e64e8: ldr             x3, [x3, #0x8d0]
    // 0x5e64ec: r0 = int?()
    //     0x5e64ec: bl              #0x93a468  ; IsType_int?_Stub
    // 0x5e64f0: ldur            x0, [fp, #-0x10]
    // 0x5e64f4: ldur            x1, [fp, #-8]
    // 0x5e64f8: StoreField: r1->field_13 = r0
    //     0x5e64f8: stur            w0, [x1, #0x13]
    //     0x5e64fc: tbz             w0, #0, #0x5e6518
    //     0x5e6500: ldurb           w16, [x1, #-1]
    //     0x5e6504: ldurb           w17, [x0, #-1]
    //     0x5e6508: and             x16, x17, x16, lsr #2
    //     0x5e650c: tst             x16, HEAP, lsr #32
    //     0x5e6510: b.eq            #0x5e6518
    //     0x5e6514: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e6518: r0 = Null
    //     0x5e6518: mov             x0, NULL
    // 0x5e651c: LeaveFrame
    //     0x5e651c: mov             SP, fp
    //     0x5e6520: ldp             fp, lr, [SP], #0x10
    // 0x5e6524: ret
    //     0x5e6524: ret             
    // 0x5e6528: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6528: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e652c: b               #0x5e6304
  }
  Map<String, dynamic> toJson(ModelZikirlerim) {
    // ** addr: 0x5e6590, size: 0x48
    // 0x5e6590: EnterFrame
    //     0x5e6590: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6594: mov             fp, SP
    // 0x5e6598: CheckStackOverflow
    //     0x5e6598: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e659c: cmp             SP, x16
    //     0x5e65a0: b.ls            #0x5e65b8
    // 0x5e65a4: ldr             x1, [fp, #0x10]
    // 0x5e65a8: r0 = toJson()
    //     0x5e65a8: bl              #0x5e65c0  ; [package:umrem_demo/features/dualar/models/model_zikirlerim.dart] ModelZikirlerim::toJson
    // 0x5e65ac: LeaveFrame
    //     0x5e65ac: mov             SP, fp
    //     0x5e65b0: ldp             fp, lr, [SP], #0x10
    // 0x5e65b4: ret
    //     0x5e65b4: ret             
    // 0x5e65b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e65b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e65bc: b               #0x5e65a4
  }
  Map<String, dynamic> toJson(ModelZikirlerim) {
    // ** addr: 0x5e65c0, size: 0xbc
    // 0x5e65c0: EnterFrame
    //     0x5e65c0: stp             fp, lr, [SP, #-0x10]!
    //     0x5e65c4: mov             fp, SP
    // 0x5e65c8: AllocStack(0x20)
    //     0x5e65c8: sub             SP, SP, #0x20
    // 0x5e65cc: SetupParameters(ModelZikirlerim this /* r1 => r1, fp-0x8 */)
    //     0x5e65cc: stur            x1, [fp, #-8]
    // 0x5e65d0: CheckStackOverflow
    //     0x5e65d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e65d4: cmp             SP, x16
    //     0x5e65d8: b.ls            #0x5e6674
    // 0x5e65dc: r16 = <String, dynamic>
    //     0x5e65dc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5e65e0: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5e65e4: stp             lr, x16, [SP]
    // 0x5e65e8: r0 = Map._fromLiteral()
    //     0x5e65e8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5e65ec: mov             x4, x0
    // 0x5e65f0: ldur            x0, [fp, #-8]
    // 0x5e65f4: stur            x4, [fp, #-0x10]
    // 0x5e65f8: LoadField: r3 = r0->field_7
    //     0x5e65f8: ldur            w3, [x0, #7]
    // 0x5e65fc: DecompressPointer r3
    //     0x5e65fc: add             x3, x3, HEAP, lsl #32
    // 0x5e6600: mov             x1, x4
    // 0x5e6604: r2 = "zikirAdi"
    //     0x5e6604: add             x2, PP, #0x20, lsl #12  ; [pp+0x207b0] "zikirAdi"
    //     0x5e6608: ldr             x2, [x2, #0x7b0]
    // 0x5e660c: r0 = []=()
    //     0x5e660c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e6610: ldur            x0, [fp, #-8]
    // 0x5e6614: LoadField: r3 = r0->field_b
    //     0x5e6614: ldur            w3, [x0, #0xb]
    // 0x5e6618: DecompressPointer r3
    //     0x5e6618: add             x3, x3, HEAP, lsl #32
    // 0x5e661c: ldur            x1, [fp, #-0x10]
    // 0x5e6620: r2 = "zikirSayisi"
    //     0x5e6620: add             x2, PP, #0x20, lsl #12  ; [pp+0x207b8] "zikirSayisi"
    //     0x5e6624: ldr             x2, [x2, #0x7b8]
    // 0x5e6628: r0 = []=()
    //     0x5e6628: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e662c: ldur            x0, [fp, #-8]
    // 0x5e6630: LoadField: r3 = r0->field_f
    //     0x5e6630: ldur            w3, [x0, #0xf]
    // 0x5e6634: DecompressPointer r3
    //     0x5e6634: add             x3, x3, HEAP, lsl #32
    // 0x5e6638: ldur            x1, [fp, #-0x10]
    // 0x5e663c: r2 = "zikirTarihi"
    //     0x5e663c: add             x2, PP, #0x20, lsl #12  ; [pp+0x207c0] "zikirTarihi"
    //     0x5e6640: ldr             x2, [x2, #0x7c0]
    // 0x5e6644: r0 = []=()
    //     0x5e6644: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e6648: ldur            x0, [fp, #-8]
    // 0x5e664c: LoadField: r3 = r0->field_13
    //     0x5e664c: ldur            w3, [x0, #0x13]
    // 0x5e6650: DecompressPointer r3
    //     0x5e6650: add             x3, x3, HEAP, lsl #32
    // 0x5e6654: ldur            x1, [fp, #-0x10]
    // 0x5e6658: r2 = "id"
    //     0x5e6658: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5e665c: ldr             x2, [x2, #0xae8]
    // 0x5e6660: r0 = []=()
    //     0x5e6660: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e6664: ldur            x0, [fp, #-0x10]
    // 0x5e6668: LeaveFrame
    //     0x5e6668: mov             SP, fp
    //     0x5e666c: ldp             fp, lr, [SP], #0x10
    // 0x5e6670: ret
    //     0x5e6670: ret             
    // 0x5e6674: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6674: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6678: b               #0x5e65dc
  }
}
