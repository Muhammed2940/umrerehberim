// lib: , url: package:umrem_demo/features/admin/models/room_model.dart

// class id: 1049515, size: 0x8
class :: {
}

// class id: 201, size: 0x30, field offset: 0x8
class RoomModel extends Object {

  factory _ RoomModel.fromFirestore(/* No info */) {
    // ** addr: 0x5d85dc, size: 0x520
    // 0x5d85dc: EnterFrame
    //     0x5d85dc: stp             fp, lr, [SP, #-0x10]!
    //     0x5d85e0: mov             fp, SP
    // 0x5d85e4: AllocStack(0x48)
    //     0x5d85e4: sub             SP, SP, #0x48
    // 0x5d85e8: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x5d85e8: stur            x2, [fp, #-8]
    // 0x5d85ec: CheckStackOverflow
    //     0x5d85ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d85f0: cmp             SP, x16
    //     0x5d85f4: b.ls            #0x5d8af4
    // 0x5d85f8: r0 = LoadClassIdInstr(r2)
    //     0x5d85f8: ldur            x0, [x2, #-1]
    //     0x5d85fc: ubfx            x0, x0, #0xc, #0x14
    // 0x5d8600: mov             x1, x2
    // 0x5d8604: r0 = GDT[cid_x0 + -0xffe]()
    //     0x5d8604: sub             lr, x0, #0xffe
    //     0x5d8608: ldr             lr, [x21, lr, lsl #3]
    //     0x5d860c: blr             lr
    // 0x5d8610: mov             x3, x0
    // 0x5d8614: r2 = Null
    //     0x5d8614: mov             x2, NULL
    // 0x5d8618: r1 = Null
    //     0x5d8618: mov             x1, NULL
    // 0x5d861c: stur            x3, [fp, #-0x10]
    // 0x5d8620: r8 = Map<String, dynamic>
    //     0x5d8620: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5d8624: r3 = Null
    //     0x5d8624: add             x3, PP, #0x18, lsl #12  ; [pp+0x18fc0] Null
    //     0x5d8628: ldr             x3, [x3, #0xfc0]
    // 0x5d862c: r0 = Map<String, dynamic>()
    //     0x5d862c: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5d8630: ldur            x0, [fp, #-8]
    // 0x5d8634: LoadField: r1 = r0->field_b
    //     0x5d8634: ldur            w1, [x0, #0xb]
    // 0x5d8638: DecompressPointer r1
    //     0x5d8638: add             x1, x1, HEAP, lsl #32
    // 0x5d863c: LoadField: r0 = r1->field_b
    //     0x5d863c: ldur            w0, [x1, #0xb]
    // 0x5d8640: DecompressPointer r0
    //     0x5d8640: add             x0, x0, HEAP, lsl #32
    // 0x5d8644: LoadField: r1 = r0->field_7
    //     0x5d8644: ldur            w1, [x0, #7]
    // 0x5d8648: DecompressPointer r1
    //     0x5d8648: add             x1, x1, HEAP, lsl #32
    // 0x5d864c: r0 = last()
    //     0x5d864c: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5d8650: ldur            x1, [fp, #-0x10]
    // 0x5d8654: r2 = "hotel_id"
    //     0x5d8654: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x5d8658: ldr             x2, [x2, #0xfd0]
    // 0x5d865c: stur            x0, [fp, #-8]
    // 0x5d8660: r0 = _getValueOrData()
    //     0x5d8660: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d8664: ldur            x3, [fp, #-0x10]
    // 0x5d8668: LoadField: r1 = r3->field_f
    //     0x5d8668: ldur            w1, [x3, #0xf]
    // 0x5d866c: DecompressPointer r1
    //     0x5d866c: add             x1, x1, HEAP, lsl #32
    // 0x5d8670: cmp             w1, w0
    // 0x5d8674: b.ne            #0x5d867c
    // 0x5d8678: r0 = Null
    //     0x5d8678: mov             x0, NULL
    // 0x5d867c: cmp             w0, NULL
    // 0x5d8680: b.ne            #0x5d868c
    // 0x5d8684: r4 = ""
    //     0x5d8684: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5d8688: b               #0x5d8690
    // 0x5d868c: mov             x4, x0
    // 0x5d8690: mov             x0, x4
    // 0x5d8694: stur            x4, [fp, #-0x18]
    // 0x5d8698: r2 = Null
    //     0x5d8698: mov             x2, NULL
    // 0x5d869c: r1 = Null
    //     0x5d869c: mov             x1, NULL
    // 0x5d86a0: r4 = 60
    //     0x5d86a0: mov             x4, #0x3c
    // 0x5d86a4: branchIfSmi(r0, 0x5d86b0)
    //     0x5d86a4: tbz             w0, #0, #0x5d86b0
    // 0x5d86a8: r4 = LoadClassIdInstr(r0)
    //     0x5d86a8: ldur            x4, [x0, #-1]
    //     0x5d86ac: ubfx            x4, x4, #0xc, #0x14
    // 0x5d86b0: sub             x4, x4, #0x5e
    // 0x5d86b4: cmp             x4, #1
    // 0x5d86b8: b.ls            #0x5d86cc
    // 0x5d86bc: r8 = String
    //     0x5d86bc: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d86c0: r3 = Null
    //     0x5d86c0: add             x3, PP, #0x18, lsl #12  ; [pp+0x18fd8] Null
    //     0x5d86c4: ldr             x3, [x3, #0xfd8]
    // 0x5d86c8: r0 = String()
    //     0x5d86c8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d86cc: ldur            x1, [fp, #-0x10]
    // 0x5d86d0: r2 = "room_number"
    //     0x5d86d0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x5d86d4: ldr             x2, [x2, #0xfb0]
    // 0x5d86d8: r0 = _getValueOrData()
    //     0x5d86d8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d86dc: ldur            x3, [fp, #-0x10]
    // 0x5d86e0: LoadField: r1 = r3->field_f
    //     0x5d86e0: ldur            w1, [x3, #0xf]
    // 0x5d86e4: DecompressPointer r1
    //     0x5d86e4: add             x1, x1, HEAP, lsl #32
    // 0x5d86e8: cmp             w1, w0
    // 0x5d86ec: b.ne            #0x5d86f4
    // 0x5d86f0: r0 = Null
    //     0x5d86f0: mov             x0, NULL
    // 0x5d86f4: cmp             w0, NULL
    // 0x5d86f8: b.ne            #0x5d8704
    // 0x5d86fc: r4 = ""
    //     0x5d86fc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5d8700: b               #0x5d8708
    // 0x5d8704: mov             x4, x0
    // 0x5d8708: mov             x0, x4
    // 0x5d870c: stur            x4, [fp, #-0x20]
    // 0x5d8710: r2 = Null
    //     0x5d8710: mov             x2, NULL
    // 0x5d8714: r1 = Null
    //     0x5d8714: mov             x1, NULL
    // 0x5d8718: r4 = 60
    //     0x5d8718: mov             x4, #0x3c
    // 0x5d871c: branchIfSmi(r0, 0x5d8728)
    //     0x5d871c: tbz             w0, #0, #0x5d8728
    // 0x5d8720: r4 = LoadClassIdInstr(r0)
    //     0x5d8720: ldur            x4, [x0, #-1]
    //     0x5d8724: ubfx            x4, x4, #0xc, #0x14
    // 0x5d8728: sub             x4, x4, #0x5e
    // 0x5d872c: cmp             x4, #1
    // 0x5d8730: b.ls            #0x5d8744
    // 0x5d8734: r8 = String
    //     0x5d8734: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d8738: r3 = Null
    //     0x5d8738: add             x3, PP, #0x18, lsl #12  ; [pp+0x18fe8] Null
    //     0x5d873c: ldr             x3, [x3, #0xfe8]
    // 0x5d8740: r0 = String()
    //     0x5d8740: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d8744: ldur            x1, [fp, #-0x10]
    // 0x5d8748: r2 = "capacity"
    //     0x5d8748: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5d874c: ldr             x2, [x2, #0x988]
    // 0x5d8750: r0 = _getValueOrData()
    //     0x5d8750: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d8754: mov             x1, x0
    // 0x5d8758: ldur            x0, [fp, #-0x10]
    // 0x5d875c: LoadField: r2 = r0->field_f
    //     0x5d875c: ldur            w2, [x0, #0xf]
    // 0x5d8760: DecompressPointer r2
    //     0x5d8760: add             x2, x2, HEAP, lsl #32
    // 0x5d8764: cmp             w2, w1
    // 0x5d8768: b.ne            #0x5d8770
    // 0x5d876c: r1 = Null
    //     0x5d876c: mov             x1, NULL
    // 0x5d8770: r2 = 60
    //     0x5d8770: mov             x2, #0x3c
    // 0x5d8774: branchIfSmi(r1, 0x5d8780)
    //     0x5d8774: tbz             w1, #0, #0x5d8780
    // 0x5d8778: r2 = LoadClassIdInstr(r1)
    //     0x5d8778: ldur            x2, [x1, #-1]
    //     0x5d877c: ubfx            x2, x2, #0xc, #0x14
    // 0x5d8780: sub             x16, x2, #0x3c
    // 0x5d8784: cmp             x16, #1
    // 0x5d8788: b.hi            #0x5d880c
    // 0x5d878c: mov             x1, x0
    // 0x5d8790: r2 = "capacity"
    //     0x5d8790: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5d8794: ldr             x2, [x2, #0x988]
    // 0x5d8798: r0 = _getValueOrData()
    //     0x5d8798: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d879c: ldur            x3, [fp, #-0x10]
    // 0x5d87a0: LoadField: r1 = r3->field_f
    //     0x5d87a0: ldur            w1, [x3, #0xf]
    // 0x5d87a4: DecompressPointer r1
    //     0x5d87a4: add             x1, x1, HEAP, lsl #32
    // 0x5d87a8: cmp             w1, w0
    // 0x5d87ac: b.ne            #0x5d87b8
    // 0x5d87b0: r4 = Null
    //     0x5d87b0: mov             x4, NULL
    // 0x5d87b4: b               #0x5d87bc
    // 0x5d87b8: mov             x4, x0
    // 0x5d87bc: mov             x0, x4
    // 0x5d87c0: stur            x4, [fp, #-0x28]
    // 0x5d87c4: r2 = Null
    //     0x5d87c4: mov             x2, NULL
    // 0x5d87c8: r1 = Null
    //     0x5d87c8: mov             x1, NULL
    // 0x5d87cc: branchIfSmi(r0, 0x5d87f4)
    //     0x5d87cc: tbz             w0, #0, #0x5d87f4
    // 0x5d87d0: r4 = LoadClassIdInstr(r0)
    //     0x5d87d0: ldur            x4, [x0, #-1]
    //     0x5d87d4: ubfx            x4, x4, #0xc, #0x14
    // 0x5d87d8: sub             x4, x4, #0x3c
    // 0x5d87dc: cmp             x4, #1
    // 0x5d87e0: b.ls            #0x5d87f4
    // 0x5d87e4: r8 = int
    //     0x5d87e4: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x5d87e8: r3 = Null
    //     0x5d87e8: add             x3, PP, #0x18, lsl #12  ; [pp+0x18ff8] Null
    //     0x5d87ec: ldr             x3, [x3, #0xff8]
    // 0x5d87f0: r0 = int()
    //     0x5d87f0: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x5d87f4: ldur            x0, [fp, #-0x28]
    // 0x5d87f8: r1 = LoadInt32Instr(r0)
    //     0x5d87f8: sbfx            x1, x0, #1, #0x1f
    //     0x5d87fc: tbz             w0, #0, #0x5d8804
    //     0x5d8800: ldur            x1, [x0, #7]
    // 0x5d8804: mov             x3, x1
    // 0x5d8808: b               #0x5d8810
    // 0x5d880c: r3 = 0
    //     0x5d880c: mov             x3, #0
    // 0x5d8810: ldur            x0, [fp, #-0x10]
    // 0x5d8814: mov             x1, x0
    // 0x5d8818: stur            x3, [fp, #-0x30]
    // 0x5d881c: r2 = "gender"
    //     0x5d881c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x5d8820: ldr             x2, [x2, #8]
    // 0x5d8824: r0 = _getValueOrData()
    //     0x5d8824: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d8828: ldur            x3, [fp, #-0x10]
    // 0x5d882c: LoadField: r1 = r3->field_f
    //     0x5d882c: ldur            w1, [x3, #0xf]
    // 0x5d8830: DecompressPointer r1
    //     0x5d8830: add             x1, x1, HEAP, lsl #32
    // 0x5d8834: cmp             w1, w0
    // 0x5d8838: b.ne            #0x5d8844
    // 0x5d883c: r4 = Null
    //     0x5d883c: mov             x4, NULL
    // 0x5d8840: b               #0x5d8848
    // 0x5d8844: mov             x4, x0
    // 0x5d8848: mov             x0, x4
    // 0x5d884c: stur            x4, [fp, #-0x28]
    // 0x5d8850: r2 = Null
    //     0x5d8850: mov             x2, NULL
    // 0x5d8854: r1 = Null
    //     0x5d8854: mov             x1, NULL
    // 0x5d8858: r4 = 60
    //     0x5d8858: mov             x4, #0x3c
    // 0x5d885c: branchIfSmi(r0, 0x5d8868)
    //     0x5d885c: tbz             w0, #0, #0x5d8868
    // 0x5d8860: r4 = LoadClassIdInstr(r0)
    //     0x5d8860: ldur            x4, [x0, #-1]
    //     0x5d8864: ubfx            x4, x4, #0xc, #0x14
    // 0x5d8868: sub             x4, x4, #0x5e
    // 0x5d886c: cmp             x4, #1
    // 0x5d8870: b.ls            #0x5d8884
    // 0x5d8874: r8 = String?
    //     0x5d8874: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d8878: r3 = Null
    //     0x5d8878: add             x3, PP, #0x19, lsl #12  ; [pp+0x19010] Null
    //     0x5d887c: ldr             x3, [x3, #0x10]
    // 0x5d8880: r0 = String?()
    //     0x5d8880: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d8884: ldur            x1, [fp, #-0x10]
    // 0x5d8888: r2 = "note"
    //     0x5d8888: add             x2, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x5d888c: ldr             x2, [x2, #0x30]
    // 0x5d8890: r0 = _getValueOrData()
    //     0x5d8890: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d8894: ldur            x3, [fp, #-0x10]
    // 0x5d8898: LoadField: r1 = r3->field_f
    //     0x5d8898: ldur            w1, [x3, #0xf]
    // 0x5d889c: DecompressPointer r1
    //     0x5d889c: add             x1, x1, HEAP, lsl #32
    // 0x5d88a0: cmp             w1, w0
    // 0x5d88a4: b.ne            #0x5d88b0
    // 0x5d88a8: r4 = Null
    //     0x5d88a8: mov             x4, NULL
    // 0x5d88ac: b               #0x5d88b4
    // 0x5d88b0: mov             x4, x0
    // 0x5d88b4: mov             x0, x4
    // 0x5d88b8: stur            x4, [fp, #-0x38]
    // 0x5d88bc: r2 = Null
    //     0x5d88bc: mov             x2, NULL
    // 0x5d88c0: r1 = Null
    //     0x5d88c0: mov             x1, NULL
    // 0x5d88c4: r4 = 60
    //     0x5d88c4: mov             x4, #0x3c
    // 0x5d88c8: branchIfSmi(r0, 0x5d88d4)
    //     0x5d88c8: tbz             w0, #0, #0x5d88d4
    // 0x5d88cc: r4 = LoadClassIdInstr(r0)
    //     0x5d88cc: ldur            x4, [x0, #-1]
    //     0x5d88d0: ubfx            x4, x4, #0xc, #0x14
    // 0x5d88d4: sub             x4, x4, #0x5e
    // 0x5d88d8: cmp             x4, #1
    // 0x5d88dc: b.ls            #0x5d88f0
    // 0x5d88e0: r8 = String?
    //     0x5d88e0: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d88e4: r3 = Null
    //     0x5d88e4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19020] Null
    //     0x5d88e8: ldr             x3, [x3, #0x20]
    // 0x5d88ec: r0 = String?()
    //     0x5d88ec: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d88f0: ldur            x1, [fp, #-0x10]
    // 0x5d88f4: r2 = "agency_id"
    //     0x5d88f4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d88f8: ldr             x2, [x2, #0x40]
    // 0x5d88fc: r0 = _getValueOrData()
    //     0x5d88fc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d8900: ldur            x3, [fp, #-0x10]
    // 0x5d8904: LoadField: r1 = r3->field_f
    //     0x5d8904: ldur            w1, [x3, #0xf]
    // 0x5d8908: DecompressPointer r1
    //     0x5d8908: add             x1, x1, HEAP, lsl #32
    // 0x5d890c: cmp             w1, w0
    // 0x5d8910: b.ne            #0x5d891c
    // 0x5d8914: r4 = Null
    //     0x5d8914: mov             x4, NULL
    // 0x5d8918: b               #0x5d8920
    // 0x5d891c: mov             x4, x0
    // 0x5d8920: mov             x0, x4
    // 0x5d8924: stur            x4, [fp, #-0x40]
    // 0x5d8928: r2 = Null
    //     0x5d8928: mov             x2, NULL
    // 0x5d892c: r1 = Null
    //     0x5d892c: mov             x1, NULL
    // 0x5d8930: r4 = 60
    //     0x5d8930: mov             x4, #0x3c
    // 0x5d8934: branchIfSmi(r0, 0x5d8940)
    //     0x5d8934: tbz             w0, #0, #0x5d8940
    // 0x5d8938: r4 = LoadClassIdInstr(r0)
    //     0x5d8938: ldur            x4, [x0, #-1]
    //     0x5d893c: ubfx            x4, x4, #0xc, #0x14
    // 0x5d8940: sub             x4, x4, #0x5e
    // 0x5d8944: cmp             x4, #1
    // 0x5d8948: b.ls            #0x5d895c
    // 0x5d894c: r8 = String?
    //     0x5d894c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d8950: r3 = Null
    //     0x5d8950: add             x3, PP, #0x19, lsl #12  ; [pp+0x19030] Null
    //     0x5d8954: ldr             x3, [x3, #0x30]
    // 0x5d8958: r0 = String?()
    //     0x5d8958: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d895c: ldur            x1, [fp, #-0x10]
    // 0x5d8960: r2 = "created_at"
    //     0x5d8960: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5d8964: ldr             x2, [x2, #0xc00]
    // 0x5d8968: r0 = _getValueOrData()
    //     0x5d8968: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d896c: ldur            x3, [fp, #-0x10]
    // 0x5d8970: LoadField: r1 = r3->field_f
    //     0x5d8970: ldur            w1, [x3, #0xf]
    // 0x5d8974: DecompressPointer r1
    //     0x5d8974: add             x1, x1, HEAP, lsl #32
    // 0x5d8978: cmp             w1, w0
    // 0x5d897c: b.ne            #0x5d8988
    // 0x5d8980: r4 = Null
    //     0x5d8980: mov             x4, NULL
    // 0x5d8984: b               #0x5d898c
    // 0x5d8988: mov             x4, x0
    // 0x5d898c: mov             x0, x4
    // 0x5d8990: stur            x4, [fp, #-0x48]
    // 0x5d8994: r2 = Null
    //     0x5d8994: mov             x2, NULL
    // 0x5d8998: r1 = Null
    //     0x5d8998: mov             x1, NULL
    // 0x5d899c: r4 = 60
    //     0x5d899c: mov             x4, #0x3c
    // 0x5d89a0: branchIfSmi(r0, 0x5d89ac)
    //     0x5d89a0: tbz             w0, #0, #0x5d89ac
    // 0x5d89a4: r4 = LoadClassIdInstr(r0)
    //     0x5d89a4: ldur            x4, [x0, #-1]
    //     0x5d89a8: ubfx            x4, x4, #0xc, #0x14
    // 0x5d89ac: cmp             x4, #0xe96
    // 0x5d89b0: b.eq            #0x5d89c8
    // 0x5d89b4: r8 = Timestamp?
    //     0x5d89b4: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5d89b8: ldr             x8, [x8, #0x90]
    // 0x5d89bc: r3 = Null
    //     0x5d89bc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19040] Null
    //     0x5d89c0: ldr             x3, [x3, #0x40]
    // 0x5d89c4: r0 = DefaultNullableTypeTest()
    //     0x5d89c4: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5d89c8: ldur            x1, [fp, #-0x48]
    // 0x5d89cc: cmp             w1, NULL
    // 0x5d89d0: b.ne            #0x5d89dc
    // 0x5d89d4: r3 = Null
    //     0x5d89d4: mov             x3, NULL
    // 0x5d89d8: b               #0x5d89e4
    // 0x5d89dc: r0 = toDate()
    //     0x5d89dc: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5d89e0: mov             x3, x0
    // 0x5d89e4: ldur            x0, [fp, #-0x10]
    // 0x5d89e8: mov             x1, x0
    // 0x5d89ec: stur            x3, [fp, #-0x48]
    // 0x5d89f0: r2 = "updated_at"
    //     0x5d89f0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5d89f4: ldr             x2, [x2, #0x58]
    // 0x5d89f8: r0 = _getValueOrData()
    //     0x5d89f8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d89fc: mov             x1, x0
    // 0x5d8a00: ldur            x0, [fp, #-0x10]
    // 0x5d8a04: LoadField: r2 = r0->field_f
    //     0x5d8a04: ldur            w2, [x0, #0xf]
    // 0x5d8a08: DecompressPointer r2
    //     0x5d8a08: add             x2, x2, HEAP, lsl #32
    // 0x5d8a0c: cmp             w2, w1
    // 0x5d8a10: b.ne            #0x5d8a1c
    // 0x5d8a14: r3 = Null
    //     0x5d8a14: mov             x3, NULL
    // 0x5d8a18: b               #0x5d8a20
    // 0x5d8a1c: mov             x3, x1
    // 0x5d8a20: mov             x0, x3
    // 0x5d8a24: stur            x3, [fp, #-0x10]
    // 0x5d8a28: r2 = Null
    //     0x5d8a28: mov             x2, NULL
    // 0x5d8a2c: r1 = Null
    //     0x5d8a2c: mov             x1, NULL
    // 0x5d8a30: r4 = 60
    //     0x5d8a30: mov             x4, #0x3c
    // 0x5d8a34: branchIfSmi(r0, 0x5d8a40)
    //     0x5d8a34: tbz             w0, #0, #0x5d8a40
    // 0x5d8a38: r4 = LoadClassIdInstr(r0)
    //     0x5d8a38: ldur            x4, [x0, #-1]
    //     0x5d8a3c: ubfx            x4, x4, #0xc, #0x14
    // 0x5d8a40: cmp             x4, #0xe96
    // 0x5d8a44: b.eq            #0x5d8a5c
    // 0x5d8a48: r8 = Timestamp?
    //     0x5d8a48: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5d8a4c: ldr             x8, [x8, #0x90]
    // 0x5d8a50: r3 = Null
    //     0x5d8a50: add             x3, PP, #0x19, lsl #12  ; [pp+0x19050] Null
    //     0x5d8a54: ldr             x3, [x3, #0x50]
    // 0x5d8a58: r0 = DefaultNullableTypeTest()
    //     0x5d8a58: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5d8a5c: ldur            x1, [fp, #-0x10]
    // 0x5d8a60: cmp             w1, NULL
    // 0x5d8a64: b.ne            #0x5d8a70
    // 0x5d8a68: r8 = Null
    //     0x5d8a68: mov             x8, NULL
    // 0x5d8a6c: b               #0x5d8a78
    // 0x5d8a70: r0 = toDate()
    //     0x5d8a70: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5d8a74: mov             x8, x0
    // 0x5d8a78: ldur            x6, [fp, #-0x18]
    // 0x5d8a7c: ldur            x5, [fp, #-0x20]
    // 0x5d8a80: ldur            x4, [fp, #-0x30]
    // 0x5d8a84: ldur            x0, [fp, #-0x48]
    // 0x5d8a88: ldur            x3, [fp, #-0x28]
    // 0x5d8a8c: ldur            x2, [fp, #-0x38]
    // 0x5d8a90: ldur            x1, [fp, #-0x40]
    // 0x5d8a94: ldur            x7, [fp, #-8]
    // 0x5d8a98: stur            x8, [fp, #-0x10]
    // 0x5d8a9c: r0 = RoomModel()
    //     0x5d8a9c: bl              #0x5d8df8  ; AllocateRoomModelStub -> RoomModel (size=0x30)
    // 0x5d8aa0: ldur            x1, [fp, #-8]
    // 0x5d8aa4: StoreField: r0->field_7 = r1
    //     0x5d8aa4: stur            w1, [x0, #7]
    // 0x5d8aa8: ldur            x1, [fp, #-0x18]
    // 0x5d8aac: StoreField: r0->field_b = r1
    //     0x5d8aac: stur            w1, [x0, #0xb]
    // 0x5d8ab0: ldur            x1, [fp, #-0x20]
    // 0x5d8ab4: StoreField: r0->field_f = r1
    //     0x5d8ab4: stur            w1, [x0, #0xf]
    // 0x5d8ab8: ldur            x1, [fp, #-0x30]
    // 0x5d8abc: StoreField: r0->field_13 = r1
    //     0x5d8abc: stur            x1, [x0, #0x13]
    // 0x5d8ac0: ldur            x1, [fp, #-0x28]
    // 0x5d8ac4: StoreField: r0->field_1b = r1
    //     0x5d8ac4: stur            w1, [x0, #0x1b]
    // 0x5d8ac8: ldur            x1, [fp, #-0x38]
    // 0x5d8acc: StoreField: r0->field_1f = r1
    //     0x5d8acc: stur            w1, [x0, #0x1f]
    // 0x5d8ad0: ldur            x1, [fp, #-0x40]
    // 0x5d8ad4: StoreField: r0->field_23 = r1
    //     0x5d8ad4: stur            w1, [x0, #0x23]
    // 0x5d8ad8: ldur            x1, [fp, #-0x48]
    // 0x5d8adc: StoreField: r0->field_27 = r1
    //     0x5d8adc: stur            w1, [x0, #0x27]
    // 0x5d8ae0: ldur            x1, [fp, #-0x10]
    // 0x5d8ae4: StoreField: r0->field_2b = r1
    //     0x5d8ae4: stur            w1, [x0, #0x2b]
    // 0x5d8ae8: LeaveFrame
    //     0x5d8ae8: mov             SP, fp
    //     0x5d8aec: ldp             fp, lr, [SP], #0x10
    // 0x5d8af0: ret
    //     0x5d8af0: ret             
    // 0x5d8af4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d8af4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d8af8: b               #0x5d85f8
  }
  Map<String, dynamic> toJson(RoomModel) {
    // ** addr: 0x5d8b5c, size: 0x48
    // 0x5d8b5c: EnterFrame
    //     0x5d8b5c: stp             fp, lr, [SP, #-0x10]!
    //     0x5d8b60: mov             fp, SP
    // 0x5d8b64: CheckStackOverflow
    //     0x5d8b64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d8b68: cmp             SP, x16
    //     0x5d8b6c: b.ls            #0x5d8b84
    // 0x5d8b70: ldr             x1, [fp, #0x10]
    // 0x5d8b74: r0 = toJson()
    //     0x5d8b74: bl              #0x5d8b8c  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::toJson
    // 0x5d8b78: LeaveFrame
    //     0x5d8b78: mov             SP, fp
    //     0x5d8b7c: ldp             fp, lr, [SP], #0x10
    // 0x5d8b80: ret
    //     0x5d8b80: ret             
    // 0x5d8b84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d8b84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d8b88: b               #0x5d8b70
  }
  Map<String, dynamic> toJson(RoomModel) {
    // ** addr: 0x5d8b8c, size: 0x24c
    // 0x5d8b8c: EnterFrame
    //     0x5d8b8c: stp             fp, lr, [SP, #-0x10]!
    //     0x5d8b90: mov             fp, SP
    // 0x5d8b94: AllocStack(0x20)
    //     0x5d8b94: sub             SP, SP, #0x20
    // 0x5d8b98: SetupParameters(RoomModel this /* r1 => r0, fp-0x8 */)
    //     0x5d8b98: mov             x0, x1
    //     0x5d8b9c: stur            x1, [fp, #-8]
    // 0x5d8ba0: CheckStackOverflow
    //     0x5d8ba0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d8ba4: cmp             SP, x16
    //     0x5d8ba8: b.ls            #0x5d8dd0
    // 0x5d8bac: r1 = Null
    //     0x5d8bac: mov             x1, NULL
    // 0x5d8bb0: r2 = 36
    //     0x5d8bb0: mov             x2, #0x24
    // 0x5d8bb4: r0 = AllocateArray()
    //     0x5d8bb4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5d8bb8: mov             x2, x0
    // 0x5d8bbc: stur            x2, [fp, #-0x10]
    // 0x5d8bc0: r16 = "id"
    //     0x5d8bc0: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5d8bc4: ldr             x16, [x16, #0xae8]
    // 0x5d8bc8: StoreField: r2->field_f = r16
    //     0x5d8bc8: stur            w16, [x2, #0xf]
    // 0x5d8bcc: ldur            x3, [fp, #-8]
    // 0x5d8bd0: LoadField: r0 = r3->field_7
    //     0x5d8bd0: ldur            w0, [x3, #7]
    // 0x5d8bd4: DecompressPointer r0
    //     0x5d8bd4: add             x0, x0, HEAP, lsl #32
    // 0x5d8bd8: StoreField: r2->field_13 = r0
    //     0x5d8bd8: stur            w0, [x2, #0x13]
    // 0x5d8bdc: r16 = "hotel_id"
    //     0x5d8bdc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x5d8be0: ldr             x16, [x16, #0xfd0]
    // 0x5d8be4: ArrayStore: r2[0] = r16  ; List_4
    //     0x5d8be4: stur            w16, [x2, #0x17]
    // 0x5d8be8: LoadField: r0 = r3->field_b
    //     0x5d8be8: ldur            w0, [x3, #0xb]
    // 0x5d8bec: DecompressPointer r0
    //     0x5d8bec: add             x0, x0, HEAP, lsl #32
    // 0x5d8bf0: StoreField: r2->field_1b = r0
    //     0x5d8bf0: stur            w0, [x2, #0x1b]
    // 0x5d8bf4: r16 = "room_number"
    //     0x5d8bf4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x5d8bf8: ldr             x16, [x16, #0xfb0]
    // 0x5d8bfc: StoreField: r2->field_1f = r16
    //     0x5d8bfc: stur            w16, [x2, #0x1f]
    // 0x5d8c00: LoadField: r0 = r3->field_f
    //     0x5d8c00: ldur            w0, [x3, #0xf]
    // 0x5d8c04: DecompressPointer r0
    //     0x5d8c04: add             x0, x0, HEAP, lsl #32
    // 0x5d8c08: StoreField: r2->field_23 = r0
    //     0x5d8c08: stur            w0, [x2, #0x23]
    // 0x5d8c0c: r16 = "capacity"
    //     0x5d8c0c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5d8c10: ldr             x16, [x16, #0x988]
    // 0x5d8c14: StoreField: r2->field_27 = r16
    //     0x5d8c14: stur            w16, [x2, #0x27]
    // 0x5d8c18: LoadField: r4 = r3->field_13
    //     0x5d8c18: ldur            x4, [x3, #0x13]
    // 0x5d8c1c: r0 = BoxInt64Instr(r4)
    //     0x5d8c1c: sbfiz           x0, x4, #1, #0x1f
    //     0x5d8c20: cmp             x4, x0, asr #1
    //     0x5d8c24: b.eq            #0x5d8c30
    //     0x5d8c28: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5d8c2c: stur            x4, [x0, #7]
    // 0x5d8c30: mov             x1, x2
    // 0x5d8c34: ArrayStore: r1[7] = r0  ; List_4
    //     0x5d8c34: add             x25, x1, #0x2b
    //     0x5d8c38: str             w0, [x25]
    //     0x5d8c3c: tbz             w0, #0, #0x5d8c58
    //     0x5d8c40: ldurb           w16, [x1, #-1]
    //     0x5d8c44: ldurb           w17, [x0, #-1]
    //     0x5d8c48: and             x16, x17, x16, lsr #2
    //     0x5d8c4c: tst             x16, HEAP, lsr #32
    //     0x5d8c50: b.eq            #0x5d8c58
    //     0x5d8c54: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d8c58: r16 = "gender"
    //     0x5d8c58: add             x16, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x5d8c5c: ldr             x16, [x16, #8]
    // 0x5d8c60: StoreField: r2->field_2f = r16
    //     0x5d8c60: stur            w16, [x2, #0x2f]
    // 0x5d8c64: LoadField: r0 = r3->field_1b
    //     0x5d8c64: ldur            w0, [x3, #0x1b]
    // 0x5d8c68: DecompressPointer r0
    //     0x5d8c68: add             x0, x0, HEAP, lsl #32
    // 0x5d8c6c: mov             x1, x2
    // 0x5d8c70: ArrayStore: r1[9] = r0  ; List_4
    //     0x5d8c70: add             x25, x1, #0x33
    //     0x5d8c74: str             w0, [x25]
    //     0x5d8c78: tbz             w0, #0, #0x5d8c94
    //     0x5d8c7c: ldurb           w16, [x1, #-1]
    //     0x5d8c80: ldurb           w17, [x0, #-1]
    //     0x5d8c84: and             x16, x17, x16, lsr #2
    //     0x5d8c88: tst             x16, HEAP, lsr #32
    //     0x5d8c8c: b.eq            #0x5d8c94
    //     0x5d8c90: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d8c94: r16 = "note"
    //     0x5d8c94: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x5d8c98: ldr             x16, [x16, #0x30]
    // 0x5d8c9c: StoreField: r2->field_37 = r16
    //     0x5d8c9c: stur            w16, [x2, #0x37]
    // 0x5d8ca0: LoadField: r0 = r3->field_1f
    //     0x5d8ca0: ldur            w0, [x3, #0x1f]
    // 0x5d8ca4: DecompressPointer r0
    //     0x5d8ca4: add             x0, x0, HEAP, lsl #32
    // 0x5d8ca8: mov             x1, x2
    // 0x5d8cac: ArrayStore: r1[11] = r0  ; List_4
    //     0x5d8cac: add             x25, x1, #0x3b
    //     0x5d8cb0: str             w0, [x25]
    //     0x5d8cb4: tbz             w0, #0, #0x5d8cd0
    //     0x5d8cb8: ldurb           w16, [x1, #-1]
    //     0x5d8cbc: ldurb           w17, [x0, #-1]
    //     0x5d8cc0: and             x16, x17, x16, lsr #2
    //     0x5d8cc4: tst             x16, HEAP, lsr #32
    //     0x5d8cc8: b.eq            #0x5d8cd0
    //     0x5d8ccc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d8cd0: r16 = "agency_id"
    //     0x5d8cd0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d8cd4: ldr             x16, [x16, #0x40]
    // 0x5d8cd8: StoreField: r2->field_3f = r16
    //     0x5d8cd8: stur            w16, [x2, #0x3f]
    // 0x5d8cdc: LoadField: r0 = r3->field_23
    //     0x5d8cdc: ldur            w0, [x3, #0x23]
    // 0x5d8ce0: DecompressPointer r0
    //     0x5d8ce0: add             x0, x0, HEAP, lsl #32
    // 0x5d8ce4: mov             x1, x2
    // 0x5d8ce8: ArrayStore: r1[13] = r0  ; List_4
    //     0x5d8ce8: add             x25, x1, #0x43
    //     0x5d8cec: str             w0, [x25]
    //     0x5d8cf0: tbz             w0, #0, #0x5d8d0c
    //     0x5d8cf4: ldurb           w16, [x1, #-1]
    //     0x5d8cf8: ldurb           w17, [x0, #-1]
    //     0x5d8cfc: and             x16, x17, x16, lsr #2
    //     0x5d8d00: tst             x16, HEAP, lsr #32
    //     0x5d8d04: b.eq            #0x5d8d0c
    //     0x5d8d08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d8d0c: r16 = "created_at"
    //     0x5d8d0c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5d8d10: ldr             x16, [x16, #0xc00]
    // 0x5d8d14: StoreField: r2->field_47 = r16
    //     0x5d8d14: stur            w16, [x2, #0x47]
    // 0x5d8d18: LoadField: r1 = r3->field_27
    //     0x5d8d18: ldur            w1, [x3, #0x27]
    // 0x5d8d1c: DecompressPointer r1
    //     0x5d8d1c: add             x1, x1, HEAP, lsl #32
    // 0x5d8d20: cmp             w1, NULL
    // 0x5d8d24: b.ne            #0x5d8d30
    // 0x5d8d28: r0 = Null
    //     0x5d8d28: mov             x0, NULL
    // 0x5d8d2c: b               #0x5d8d3c
    // 0x5d8d30: r0 = toIso8601String()
    //     0x5d8d30: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5d8d34: ldur            x3, [fp, #-8]
    // 0x5d8d38: ldur            x2, [fp, #-0x10]
    // 0x5d8d3c: mov             x1, x2
    // 0x5d8d40: ArrayStore: r1[15] = r0  ; List_4
    //     0x5d8d40: add             x25, x1, #0x4b
    //     0x5d8d44: str             w0, [x25]
    //     0x5d8d48: tbz             w0, #0, #0x5d8d64
    //     0x5d8d4c: ldurb           w16, [x1, #-1]
    //     0x5d8d50: ldurb           w17, [x0, #-1]
    //     0x5d8d54: and             x16, x17, x16, lsr #2
    //     0x5d8d58: tst             x16, HEAP, lsr #32
    //     0x5d8d5c: b.eq            #0x5d8d64
    //     0x5d8d60: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d8d64: r16 = "updated_at"
    //     0x5d8d64: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5d8d68: ldr             x16, [x16, #0x58]
    // 0x5d8d6c: StoreField: r2->field_4f = r16
    //     0x5d8d6c: stur            w16, [x2, #0x4f]
    // 0x5d8d70: LoadField: r1 = r3->field_2b
    //     0x5d8d70: ldur            w1, [x3, #0x2b]
    // 0x5d8d74: DecompressPointer r1
    //     0x5d8d74: add             x1, x1, HEAP, lsl #32
    // 0x5d8d78: cmp             w1, NULL
    // 0x5d8d7c: b.ne            #0x5d8d88
    // 0x5d8d80: r0 = Null
    //     0x5d8d80: mov             x0, NULL
    // 0x5d8d84: b               #0x5d8d8c
    // 0x5d8d88: r0 = toIso8601String()
    //     0x5d8d88: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5d8d8c: ldur            x1, [fp, #-0x10]
    // 0x5d8d90: ArrayStore: r1[17] = r0  ; List_4
    //     0x5d8d90: add             x25, x1, #0x53
    //     0x5d8d94: str             w0, [x25]
    //     0x5d8d98: tbz             w0, #0, #0x5d8db4
    //     0x5d8d9c: ldurb           w16, [x1, #-1]
    //     0x5d8da0: ldurb           w17, [x0, #-1]
    //     0x5d8da4: and             x16, x17, x16, lsr #2
    //     0x5d8da8: tst             x16, HEAP, lsr #32
    //     0x5d8dac: b.eq            #0x5d8db4
    //     0x5d8db0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d8db4: r16 = <String, dynamic>
    //     0x5d8db4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5d8db8: ldur            lr, [fp, #-0x10]
    // 0x5d8dbc: stp             lr, x16, [SP]
    // 0x5d8dc0: r0 = Map._fromLiteral()
    //     0x5d8dc0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5d8dc4: LeaveFrame
    //     0x5d8dc4: mov             SP, fp
    //     0x5d8dc8: ldp             fp, lr, [SP], #0x10
    // 0x5d8dcc: ret
    //     0x5d8dcc: ret             
    // 0x5d8dd0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d8dd0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d8dd4: b               #0x5d8bac
  }
  factory _ RoomModel.fromJson(/* No info */) {
    // ** addr: 0x5f26fc, size: 0x590
    // 0x5f26fc: EnterFrame
    //     0x5f26fc: stp             fp, lr, [SP, #-0x10]!
    //     0x5f2700: mov             fp, SP
    // 0x5f2704: AllocStack(0x48)
    //     0x5f2704: sub             SP, SP, #0x48
    // 0x5f2708: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5f2708: mov             x0, x2
    //     0x5f270c: stur            x2, [fp, #-8]
    // 0x5f2710: CheckStackOverflow
    //     0x5f2710: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f2714: cmp             SP, x16
    //     0x5f2718: b.ls            #0x5f2c84
    // 0x5f271c: mov             x1, x0
    // 0x5f2720: r2 = "id"
    //     0x5f2720: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5f2724: ldr             x2, [x2, #0xae8]
    // 0x5f2728: r0 = _getValueOrData()
    //     0x5f2728: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f272c: ldur            x3, [fp, #-8]
    // 0x5f2730: LoadField: r1 = r3->field_f
    //     0x5f2730: ldur            w1, [x3, #0xf]
    // 0x5f2734: DecompressPointer r1
    //     0x5f2734: add             x1, x1, HEAP, lsl #32
    // 0x5f2738: cmp             w1, w0
    // 0x5f273c: b.ne            #0x5f2744
    // 0x5f2740: r0 = Null
    //     0x5f2740: mov             x0, NULL
    // 0x5f2744: cmp             w0, NULL
    // 0x5f2748: b.ne            #0x5f2754
    // 0x5f274c: r4 = ""
    //     0x5f274c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2750: b               #0x5f2758
    // 0x5f2754: mov             x4, x0
    // 0x5f2758: mov             x0, x4
    // 0x5f275c: stur            x4, [fp, #-0x10]
    // 0x5f2760: r2 = Null
    //     0x5f2760: mov             x2, NULL
    // 0x5f2764: r1 = Null
    //     0x5f2764: mov             x1, NULL
    // 0x5f2768: r4 = 60
    //     0x5f2768: mov             x4, #0x3c
    // 0x5f276c: branchIfSmi(r0, 0x5f2778)
    //     0x5f276c: tbz             w0, #0, #0x5f2778
    // 0x5f2770: r4 = LoadClassIdInstr(r0)
    //     0x5f2770: ldur            x4, [x0, #-1]
    //     0x5f2774: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2778: sub             x4, x4, #0x5e
    // 0x5f277c: cmp             x4, #1
    // 0x5f2780: b.ls            #0x5f2794
    // 0x5f2784: r8 = String
    //     0x5f2784: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2788: r3 = Null
    //     0x5f2788: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f00] Null
    //     0x5f278c: ldr             x3, [x3, #0xf00]
    // 0x5f2790: r0 = String()
    //     0x5f2790: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2794: ldur            x1, [fp, #-8]
    // 0x5f2798: r2 = "hotel_id"
    //     0x5f2798: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x5f279c: ldr             x2, [x2, #0xfd0]
    // 0x5f27a0: r0 = _getValueOrData()
    //     0x5f27a0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f27a4: ldur            x3, [fp, #-8]
    // 0x5f27a8: LoadField: r1 = r3->field_f
    //     0x5f27a8: ldur            w1, [x3, #0xf]
    // 0x5f27ac: DecompressPointer r1
    //     0x5f27ac: add             x1, x1, HEAP, lsl #32
    // 0x5f27b0: cmp             w1, w0
    // 0x5f27b4: b.ne            #0x5f27bc
    // 0x5f27b8: r0 = Null
    //     0x5f27b8: mov             x0, NULL
    // 0x5f27bc: cmp             w0, NULL
    // 0x5f27c0: b.ne            #0x5f27cc
    // 0x5f27c4: r4 = ""
    //     0x5f27c4: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f27c8: b               #0x5f27d0
    // 0x5f27cc: mov             x4, x0
    // 0x5f27d0: mov             x0, x4
    // 0x5f27d4: stur            x4, [fp, #-0x18]
    // 0x5f27d8: r2 = Null
    //     0x5f27d8: mov             x2, NULL
    // 0x5f27dc: r1 = Null
    //     0x5f27dc: mov             x1, NULL
    // 0x5f27e0: r4 = 60
    //     0x5f27e0: mov             x4, #0x3c
    // 0x5f27e4: branchIfSmi(r0, 0x5f27f0)
    //     0x5f27e4: tbz             w0, #0, #0x5f27f0
    // 0x5f27e8: r4 = LoadClassIdInstr(r0)
    //     0x5f27e8: ldur            x4, [x0, #-1]
    //     0x5f27ec: ubfx            x4, x4, #0xc, #0x14
    // 0x5f27f0: sub             x4, x4, #0x5e
    // 0x5f27f4: cmp             x4, #1
    // 0x5f27f8: b.ls            #0x5f280c
    // 0x5f27fc: r8 = String
    //     0x5f27fc: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2800: r3 = Null
    //     0x5f2800: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f10] Null
    //     0x5f2804: ldr             x3, [x3, #0xf10]
    // 0x5f2808: r0 = String()
    //     0x5f2808: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f280c: ldur            x1, [fp, #-8]
    // 0x5f2810: r2 = "room_number"
    //     0x5f2810: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x5f2814: ldr             x2, [x2, #0xfb0]
    // 0x5f2818: r0 = _getValueOrData()
    //     0x5f2818: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f281c: ldur            x3, [fp, #-8]
    // 0x5f2820: LoadField: r1 = r3->field_f
    //     0x5f2820: ldur            w1, [x3, #0xf]
    // 0x5f2824: DecompressPointer r1
    //     0x5f2824: add             x1, x1, HEAP, lsl #32
    // 0x5f2828: cmp             w1, w0
    // 0x5f282c: b.ne            #0x5f2834
    // 0x5f2830: r0 = Null
    //     0x5f2830: mov             x0, NULL
    // 0x5f2834: cmp             w0, NULL
    // 0x5f2838: b.ne            #0x5f2844
    // 0x5f283c: r4 = ""
    //     0x5f283c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2840: b               #0x5f2848
    // 0x5f2844: mov             x4, x0
    // 0x5f2848: mov             x0, x4
    // 0x5f284c: stur            x4, [fp, #-0x20]
    // 0x5f2850: r2 = Null
    //     0x5f2850: mov             x2, NULL
    // 0x5f2854: r1 = Null
    //     0x5f2854: mov             x1, NULL
    // 0x5f2858: r4 = 60
    //     0x5f2858: mov             x4, #0x3c
    // 0x5f285c: branchIfSmi(r0, 0x5f2868)
    //     0x5f285c: tbz             w0, #0, #0x5f2868
    // 0x5f2860: r4 = LoadClassIdInstr(r0)
    //     0x5f2860: ldur            x4, [x0, #-1]
    //     0x5f2864: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2868: sub             x4, x4, #0x5e
    // 0x5f286c: cmp             x4, #1
    // 0x5f2870: b.ls            #0x5f2884
    // 0x5f2874: r8 = String
    //     0x5f2874: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2878: r3 = Null
    //     0x5f2878: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f20] Null
    //     0x5f287c: ldr             x3, [x3, #0xf20]
    // 0x5f2880: r0 = String()
    //     0x5f2880: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2884: ldur            x1, [fp, #-8]
    // 0x5f2888: r2 = "capacity"
    //     0x5f2888: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5f288c: ldr             x2, [x2, #0x988]
    // 0x5f2890: r0 = _getValueOrData()
    //     0x5f2890: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2894: mov             x1, x0
    // 0x5f2898: ldur            x0, [fp, #-8]
    // 0x5f289c: LoadField: r2 = r0->field_f
    //     0x5f289c: ldur            w2, [x0, #0xf]
    // 0x5f28a0: DecompressPointer r2
    //     0x5f28a0: add             x2, x2, HEAP, lsl #32
    // 0x5f28a4: cmp             w2, w1
    // 0x5f28a8: b.ne            #0x5f28b0
    // 0x5f28ac: r1 = Null
    //     0x5f28ac: mov             x1, NULL
    // 0x5f28b0: r2 = 60
    //     0x5f28b0: mov             x2, #0x3c
    // 0x5f28b4: branchIfSmi(r1, 0x5f28c0)
    //     0x5f28b4: tbz             w1, #0, #0x5f28c0
    // 0x5f28b8: r2 = LoadClassIdInstr(r1)
    //     0x5f28b8: ldur            x2, [x1, #-1]
    //     0x5f28bc: ubfx            x2, x2, #0xc, #0x14
    // 0x5f28c0: sub             x16, x2, #0x3c
    // 0x5f28c4: cmp             x16, #1
    // 0x5f28c8: b.hi            #0x5f294c
    // 0x5f28cc: mov             x1, x0
    // 0x5f28d0: r2 = "capacity"
    //     0x5f28d0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5f28d4: ldr             x2, [x2, #0x988]
    // 0x5f28d8: r0 = _getValueOrData()
    //     0x5f28d8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f28dc: ldur            x3, [fp, #-8]
    // 0x5f28e0: LoadField: r1 = r3->field_f
    //     0x5f28e0: ldur            w1, [x3, #0xf]
    // 0x5f28e4: DecompressPointer r1
    //     0x5f28e4: add             x1, x1, HEAP, lsl #32
    // 0x5f28e8: cmp             w1, w0
    // 0x5f28ec: b.ne            #0x5f28f8
    // 0x5f28f0: r4 = Null
    //     0x5f28f0: mov             x4, NULL
    // 0x5f28f4: b               #0x5f28fc
    // 0x5f28f8: mov             x4, x0
    // 0x5f28fc: mov             x0, x4
    // 0x5f2900: stur            x4, [fp, #-0x28]
    // 0x5f2904: r2 = Null
    //     0x5f2904: mov             x2, NULL
    // 0x5f2908: r1 = Null
    //     0x5f2908: mov             x1, NULL
    // 0x5f290c: branchIfSmi(r0, 0x5f2934)
    //     0x5f290c: tbz             w0, #0, #0x5f2934
    // 0x5f2910: r4 = LoadClassIdInstr(r0)
    //     0x5f2910: ldur            x4, [x0, #-1]
    //     0x5f2914: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2918: sub             x4, x4, #0x3c
    // 0x5f291c: cmp             x4, #1
    // 0x5f2920: b.ls            #0x5f2934
    // 0x5f2924: r8 = int
    //     0x5f2924: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x5f2928: r3 = Null
    //     0x5f2928: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f30] Null
    //     0x5f292c: ldr             x3, [x3, #0xf30]
    // 0x5f2930: r0 = int()
    //     0x5f2930: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x5f2934: ldur            x0, [fp, #-0x28]
    // 0x5f2938: r1 = LoadInt32Instr(r0)
    //     0x5f2938: sbfx            x1, x0, #1, #0x1f
    //     0x5f293c: tbz             w0, #0, #0x5f2944
    //     0x5f2940: ldur            x1, [x0, #7]
    // 0x5f2944: mov             x3, x1
    // 0x5f2948: b               #0x5f2950
    // 0x5f294c: r3 = 0
    //     0x5f294c: mov             x3, #0
    // 0x5f2950: ldur            x0, [fp, #-8]
    // 0x5f2954: mov             x1, x0
    // 0x5f2958: stur            x3, [fp, #-0x30]
    // 0x5f295c: r2 = "gender"
    //     0x5f295c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x5f2960: ldr             x2, [x2, #8]
    // 0x5f2964: r0 = _getValueOrData()
    //     0x5f2964: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2968: ldur            x3, [fp, #-8]
    // 0x5f296c: LoadField: r1 = r3->field_f
    //     0x5f296c: ldur            w1, [x3, #0xf]
    // 0x5f2970: DecompressPointer r1
    //     0x5f2970: add             x1, x1, HEAP, lsl #32
    // 0x5f2974: cmp             w1, w0
    // 0x5f2978: b.ne            #0x5f2984
    // 0x5f297c: r4 = Null
    //     0x5f297c: mov             x4, NULL
    // 0x5f2980: b               #0x5f2988
    // 0x5f2984: mov             x4, x0
    // 0x5f2988: mov             x0, x4
    // 0x5f298c: stur            x4, [fp, #-0x28]
    // 0x5f2990: r2 = Null
    //     0x5f2990: mov             x2, NULL
    // 0x5f2994: r1 = Null
    //     0x5f2994: mov             x1, NULL
    // 0x5f2998: r4 = 60
    //     0x5f2998: mov             x4, #0x3c
    // 0x5f299c: branchIfSmi(r0, 0x5f29a8)
    //     0x5f299c: tbz             w0, #0, #0x5f29a8
    // 0x5f29a0: r4 = LoadClassIdInstr(r0)
    //     0x5f29a0: ldur            x4, [x0, #-1]
    //     0x5f29a4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f29a8: sub             x4, x4, #0x5e
    // 0x5f29ac: cmp             x4, #1
    // 0x5f29b0: b.ls            #0x5f29c4
    // 0x5f29b4: r8 = String?
    //     0x5f29b4: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f29b8: r3 = Null
    //     0x5f29b8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f40] Null
    //     0x5f29bc: ldr             x3, [x3, #0xf40]
    // 0x5f29c0: r0 = String?()
    //     0x5f29c0: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f29c4: ldur            x1, [fp, #-8]
    // 0x5f29c8: r2 = "note"
    //     0x5f29c8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x5f29cc: ldr             x2, [x2, #0x30]
    // 0x5f29d0: r0 = _getValueOrData()
    //     0x5f29d0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f29d4: ldur            x3, [fp, #-8]
    // 0x5f29d8: LoadField: r1 = r3->field_f
    //     0x5f29d8: ldur            w1, [x3, #0xf]
    // 0x5f29dc: DecompressPointer r1
    //     0x5f29dc: add             x1, x1, HEAP, lsl #32
    // 0x5f29e0: cmp             w1, w0
    // 0x5f29e4: b.ne            #0x5f29f0
    // 0x5f29e8: r4 = Null
    //     0x5f29e8: mov             x4, NULL
    // 0x5f29ec: b               #0x5f29f4
    // 0x5f29f0: mov             x4, x0
    // 0x5f29f4: mov             x0, x4
    // 0x5f29f8: stur            x4, [fp, #-0x38]
    // 0x5f29fc: r2 = Null
    //     0x5f29fc: mov             x2, NULL
    // 0x5f2a00: r1 = Null
    //     0x5f2a00: mov             x1, NULL
    // 0x5f2a04: r4 = 60
    //     0x5f2a04: mov             x4, #0x3c
    // 0x5f2a08: branchIfSmi(r0, 0x5f2a14)
    //     0x5f2a08: tbz             w0, #0, #0x5f2a14
    // 0x5f2a0c: r4 = LoadClassIdInstr(r0)
    //     0x5f2a0c: ldur            x4, [x0, #-1]
    //     0x5f2a10: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2a14: sub             x4, x4, #0x5e
    // 0x5f2a18: cmp             x4, #1
    // 0x5f2a1c: b.ls            #0x5f2a30
    // 0x5f2a20: r8 = String?
    //     0x5f2a20: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f2a24: r3 = Null
    //     0x5f2a24: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f50] Null
    //     0x5f2a28: ldr             x3, [x3, #0xf50]
    // 0x5f2a2c: r0 = String?()
    //     0x5f2a2c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f2a30: ldur            x1, [fp, #-8]
    // 0x5f2a34: r2 = "agency_id"
    //     0x5f2a34: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5f2a38: ldr             x2, [x2, #0x40]
    // 0x5f2a3c: r0 = _getValueOrData()
    //     0x5f2a3c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2a40: ldur            x3, [fp, #-8]
    // 0x5f2a44: LoadField: r1 = r3->field_f
    //     0x5f2a44: ldur            w1, [x3, #0xf]
    // 0x5f2a48: DecompressPointer r1
    //     0x5f2a48: add             x1, x1, HEAP, lsl #32
    // 0x5f2a4c: cmp             w1, w0
    // 0x5f2a50: b.ne            #0x5f2a5c
    // 0x5f2a54: r4 = Null
    //     0x5f2a54: mov             x4, NULL
    // 0x5f2a58: b               #0x5f2a60
    // 0x5f2a5c: mov             x4, x0
    // 0x5f2a60: mov             x0, x4
    // 0x5f2a64: stur            x4, [fp, #-0x40]
    // 0x5f2a68: r2 = Null
    //     0x5f2a68: mov             x2, NULL
    // 0x5f2a6c: r1 = Null
    //     0x5f2a6c: mov             x1, NULL
    // 0x5f2a70: r4 = 60
    //     0x5f2a70: mov             x4, #0x3c
    // 0x5f2a74: branchIfSmi(r0, 0x5f2a80)
    //     0x5f2a74: tbz             w0, #0, #0x5f2a80
    // 0x5f2a78: r4 = LoadClassIdInstr(r0)
    //     0x5f2a78: ldur            x4, [x0, #-1]
    //     0x5f2a7c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2a80: sub             x4, x4, #0x5e
    // 0x5f2a84: cmp             x4, #1
    // 0x5f2a88: b.ls            #0x5f2a9c
    // 0x5f2a8c: r8 = String?
    //     0x5f2a8c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f2a90: r3 = Null
    //     0x5f2a90: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f60] Null
    //     0x5f2a94: ldr             x3, [x3, #0xf60]
    // 0x5f2a98: r0 = String?()
    //     0x5f2a98: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f2a9c: ldur            x1, [fp, #-8]
    // 0x5f2aa0: r2 = "created_at"
    //     0x5f2aa0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f2aa4: ldr             x2, [x2, #0xc00]
    // 0x5f2aa8: r0 = _getValueOrData()
    //     0x5f2aa8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2aac: mov             x1, x0
    // 0x5f2ab0: ldur            x0, [fp, #-8]
    // 0x5f2ab4: LoadField: r2 = r0->field_f
    //     0x5f2ab4: ldur            w2, [x0, #0xf]
    // 0x5f2ab8: DecompressPointer r2
    //     0x5f2ab8: add             x2, x2, HEAP, lsl #32
    // 0x5f2abc: cmp             w2, w1
    // 0x5f2ac0: b.eq            #0x5f2b48
    // 0x5f2ac4: cmp             w1, NULL
    // 0x5f2ac8: b.eq            #0x5f2b48
    // 0x5f2acc: mov             x1, x0
    // 0x5f2ad0: r2 = "created_at"
    //     0x5f2ad0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f2ad4: ldr             x2, [x2, #0xc00]
    // 0x5f2ad8: r0 = _getValueOrData()
    //     0x5f2ad8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2adc: ldur            x3, [fp, #-8]
    // 0x5f2ae0: LoadField: r1 = r3->field_f
    //     0x5f2ae0: ldur            w1, [x3, #0xf]
    // 0x5f2ae4: DecompressPointer r1
    //     0x5f2ae4: add             x1, x1, HEAP, lsl #32
    // 0x5f2ae8: cmp             w1, w0
    // 0x5f2aec: b.ne            #0x5f2af8
    // 0x5f2af0: r4 = Null
    //     0x5f2af0: mov             x4, NULL
    // 0x5f2af4: b               #0x5f2afc
    // 0x5f2af8: mov             x4, x0
    // 0x5f2afc: mov             x0, x4
    // 0x5f2b00: stur            x4, [fp, #-0x48]
    // 0x5f2b04: r2 = Null
    //     0x5f2b04: mov             x2, NULL
    // 0x5f2b08: r1 = Null
    //     0x5f2b08: mov             x1, NULL
    // 0x5f2b0c: r4 = 60
    //     0x5f2b0c: mov             x4, #0x3c
    // 0x5f2b10: branchIfSmi(r0, 0x5f2b1c)
    //     0x5f2b10: tbz             w0, #0, #0x5f2b1c
    // 0x5f2b14: r4 = LoadClassIdInstr(r0)
    //     0x5f2b14: ldur            x4, [x0, #-1]
    //     0x5f2b18: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2b1c: sub             x4, x4, #0x5e
    // 0x5f2b20: cmp             x4, #1
    // 0x5f2b24: b.ls            #0x5f2b38
    // 0x5f2b28: r8 = String
    //     0x5f2b28: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2b2c: r3 = Null
    //     0x5f2b2c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f70] Null
    //     0x5f2b30: ldr             x3, [x3, #0xf70]
    // 0x5f2b34: r0 = String()
    //     0x5f2b34: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2b38: ldur            x1, [fp, #-0x48]
    // 0x5f2b3c: r0 = parse()
    //     0x5f2b3c: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f2b40: mov             x3, x0
    // 0x5f2b44: b               #0x5f2b4c
    // 0x5f2b48: r3 = Null
    //     0x5f2b48: mov             x3, NULL
    // 0x5f2b4c: ldur            x0, [fp, #-8]
    // 0x5f2b50: mov             x1, x0
    // 0x5f2b54: stur            x3, [fp, #-0x48]
    // 0x5f2b58: r2 = "updated_at"
    //     0x5f2b58: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f2b5c: ldr             x2, [x2, #0x58]
    // 0x5f2b60: r0 = _getValueOrData()
    //     0x5f2b60: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2b64: mov             x1, x0
    // 0x5f2b68: ldur            x0, [fp, #-8]
    // 0x5f2b6c: LoadField: r2 = r0->field_f
    //     0x5f2b6c: ldur            w2, [x0, #0xf]
    // 0x5f2b70: DecompressPointer r2
    //     0x5f2b70: add             x2, x2, HEAP, lsl #32
    // 0x5f2b74: cmp             w2, w1
    // 0x5f2b78: b.eq            #0x5f2c04
    // 0x5f2b7c: cmp             w1, NULL
    // 0x5f2b80: b.eq            #0x5f2c04
    // 0x5f2b84: mov             x1, x0
    // 0x5f2b88: r2 = "updated_at"
    //     0x5f2b88: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f2b8c: ldr             x2, [x2, #0x58]
    // 0x5f2b90: r0 = _getValueOrData()
    //     0x5f2b90: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2b94: mov             x1, x0
    // 0x5f2b98: ldur            x0, [fp, #-8]
    // 0x5f2b9c: LoadField: r2 = r0->field_f
    //     0x5f2b9c: ldur            w2, [x0, #0xf]
    // 0x5f2ba0: DecompressPointer r2
    //     0x5f2ba0: add             x2, x2, HEAP, lsl #32
    // 0x5f2ba4: cmp             w2, w1
    // 0x5f2ba8: b.ne            #0x5f2bb4
    // 0x5f2bac: r3 = Null
    //     0x5f2bac: mov             x3, NULL
    // 0x5f2bb0: b               #0x5f2bb8
    // 0x5f2bb4: mov             x3, x1
    // 0x5f2bb8: mov             x0, x3
    // 0x5f2bbc: stur            x3, [fp, #-8]
    // 0x5f2bc0: r2 = Null
    //     0x5f2bc0: mov             x2, NULL
    // 0x5f2bc4: r1 = Null
    //     0x5f2bc4: mov             x1, NULL
    // 0x5f2bc8: r4 = 60
    //     0x5f2bc8: mov             x4, #0x3c
    // 0x5f2bcc: branchIfSmi(r0, 0x5f2bd8)
    //     0x5f2bcc: tbz             w0, #0, #0x5f2bd8
    // 0x5f2bd0: r4 = LoadClassIdInstr(r0)
    //     0x5f2bd0: ldur            x4, [x0, #-1]
    //     0x5f2bd4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2bd8: sub             x4, x4, #0x5e
    // 0x5f2bdc: cmp             x4, #1
    // 0x5f2be0: b.ls            #0x5f2bf4
    // 0x5f2be4: r8 = String
    //     0x5f2be4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2be8: r3 = Null
    //     0x5f2be8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f80] Null
    //     0x5f2bec: ldr             x3, [x3, #0xf80]
    // 0x5f2bf0: r0 = String()
    //     0x5f2bf0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2bf4: ldur            x1, [fp, #-8]
    // 0x5f2bf8: r0 = parse()
    //     0x5f2bf8: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f2bfc: mov             x8, x0
    // 0x5f2c00: b               #0x5f2c08
    // 0x5f2c04: r8 = Null
    //     0x5f2c04: mov             x8, NULL
    // 0x5f2c08: ldur            x7, [fp, #-0x10]
    // 0x5f2c0c: ldur            x6, [fp, #-0x18]
    // 0x5f2c10: ldur            x5, [fp, #-0x20]
    // 0x5f2c14: ldur            x4, [fp, #-0x30]
    // 0x5f2c18: ldur            x0, [fp, #-0x48]
    // 0x5f2c1c: ldur            x3, [fp, #-0x28]
    // 0x5f2c20: ldur            x2, [fp, #-0x38]
    // 0x5f2c24: ldur            x1, [fp, #-0x40]
    // 0x5f2c28: stur            x8, [fp, #-8]
    // 0x5f2c2c: r0 = RoomModel()
    //     0x5f2c2c: bl              #0x5d8df8  ; AllocateRoomModelStub -> RoomModel (size=0x30)
    // 0x5f2c30: ldur            x1, [fp, #-0x10]
    // 0x5f2c34: StoreField: r0->field_7 = r1
    //     0x5f2c34: stur            w1, [x0, #7]
    // 0x5f2c38: ldur            x1, [fp, #-0x18]
    // 0x5f2c3c: StoreField: r0->field_b = r1
    //     0x5f2c3c: stur            w1, [x0, #0xb]
    // 0x5f2c40: ldur            x1, [fp, #-0x20]
    // 0x5f2c44: StoreField: r0->field_f = r1
    //     0x5f2c44: stur            w1, [x0, #0xf]
    // 0x5f2c48: ldur            x1, [fp, #-0x30]
    // 0x5f2c4c: StoreField: r0->field_13 = r1
    //     0x5f2c4c: stur            x1, [x0, #0x13]
    // 0x5f2c50: ldur            x1, [fp, #-0x28]
    // 0x5f2c54: StoreField: r0->field_1b = r1
    //     0x5f2c54: stur            w1, [x0, #0x1b]
    // 0x5f2c58: ldur            x1, [fp, #-0x38]
    // 0x5f2c5c: StoreField: r0->field_1f = r1
    //     0x5f2c5c: stur            w1, [x0, #0x1f]
    // 0x5f2c60: ldur            x1, [fp, #-0x40]
    // 0x5f2c64: StoreField: r0->field_23 = r1
    //     0x5f2c64: stur            w1, [x0, #0x23]
    // 0x5f2c68: ldur            x1, [fp, #-0x48]
    // 0x5f2c6c: StoreField: r0->field_27 = r1
    //     0x5f2c6c: stur            w1, [x0, #0x27]
    // 0x5f2c70: ldur            x1, [fp, #-8]
    // 0x5f2c74: StoreField: r0->field_2b = r1
    //     0x5f2c74: stur            w1, [x0, #0x2b]
    // 0x5f2c78: LeaveFrame
    //     0x5f2c78: mov             SP, fp
    //     0x5f2c7c: ldp             fp, lr, [SP], #0x10
    // 0x5f2c80: ret
    //     0x5f2c80: ret             
    // 0x5f2c84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f2c84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f2c88: b               #0x5f271c
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x6e1264, size: 0x2bc
    // 0x6e1264: EnterFrame
    //     0x6e1264: stp             fp, lr, [SP, #-0x10]!
    //     0x6e1268: mov             fp, SP
    // 0x6e126c: AllocStack(0x48)
    //     0x6e126c: sub             SP, SP, #0x48
    // 0x6e1270: SetupParameters({dynamic capacity = Null /* r3 */, dynamic gender = Null /* r5 */, dynamic id = Null /* r6 */, dynamic note = Null /* r7 */, dynamic roomNumber = Null /* r0 */})
    //     0x6e1270: ldur            w0, [x4, #0x13]
    //     0x6e1274: ldur            w2, [x4, #0x1f]
    //     0x6e1278: add             x2, x2, HEAP, lsl #32
    //     0x6e127c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x6e1280: ldr             x16, [x16, #0x988]
    //     0x6e1284: cmp             w2, w16
    //     0x6e1288: b.ne            #0x6e12ac
    //     0x6e128c: ldur            w2, [x4, #0x23]
    //     0x6e1290: add             x2, x2, HEAP, lsl #32
    //     0x6e1294: sub             w3, w0, w2
    //     0x6e1298: add             x2, fp, w3, sxtw #2
    //     0x6e129c: ldr             x2, [x2, #8]
    //     0x6e12a0: mov             x3, x2
    //     0x6e12a4: mov             x2, #1
    //     0x6e12a8: b               #0x6e12b4
    //     0x6e12ac: mov             x3, NULL
    //     0x6e12b0: mov             x2, #0
    //     0x6e12b4: lsl             x5, x2, #1
    //     0x6e12b8: lsl             w6, w5, #1
    //     0x6e12bc: add             w7, w6, #8
    //     0x6e12c0: add             x16, x4, w7, sxtw #1
    //     0x6e12c4: ldur            w8, [x16, #0xf]
    //     0x6e12c8: add             x8, x8, HEAP, lsl #32
    //     0x6e12cc: add             x16, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x6e12d0: ldr             x16, [x16, #8]
    //     0x6e12d4: cmp             w8, w16
    //     0x6e12d8: b.ne            #0x6e130c
    //     0x6e12dc: add             w2, w6, #0xa
    //     0x6e12e0: add             x16, x4, w2, sxtw #1
    //     0x6e12e4: ldur            w6, [x16, #0xf]
    //     0x6e12e8: add             x6, x6, HEAP, lsl #32
    //     0x6e12ec: sub             w2, w0, w6
    //     0x6e12f0: add             x6, fp, w2, sxtw #2
    //     0x6e12f4: ldr             x6, [x6, #8]
    //     0x6e12f8: add             w2, w5, #2
    //     0x6e12fc: sbfx            x5, x2, #1, #0x1f
    //     0x6e1300: mov             x2, x5
    //     0x6e1304: mov             x5, x6
    //     0x6e1308: b               #0x6e1310
    //     0x6e130c: mov             x5, NULL
    //     0x6e1310: lsl             x6, x2, #1
    //     0x6e1314: lsl             w7, w6, #1
    //     0x6e1318: add             w8, w7, #8
    //     0x6e131c: add             x16, x4, w8, sxtw #1
    //     0x6e1320: ldur            w9, [x16, #0xf]
    //     0x6e1324: add             x9, x9, HEAP, lsl #32
    //     0x6e1328: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x6e132c: ldr             x16, [x16, #0xae8]
    //     0x6e1330: cmp             w9, w16
    //     0x6e1334: b.ne            #0x6e1368
    //     0x6e1338: add             w2, w7, #0xa
    //     0x6e133c: add             x16, x4, w2, sxtw #1
    //     0x6e1340: ldur            w7, [x16, #0xf]
    //     0x6e1344: add             x7, x7, HEAP, lsl #32
    //     0x6e1348: sub             w2, w0, w7
    //     0x6e134c: add             x7, fp, w2, sxtw #2
    //     0x6e1350: ldr             x7, [x7, #8]
    //     0x6e1354: add             w2, w6, #2
    //     0x6e1358: sbfx            x6, x2, #1, #0x1f
    //     0x6e135c: mov             x2, x6
    //     0x6e1360: mov             x6, x7
    //     0x6e1364: b               #0x6e136c
    //     0x6e1368: mov             x6, NULL
    //     0x6e136c: lsl             x7, x2, #1
    //     0x6e1370: lsl             w8, w7, #1
    //     0x6e1374: add             w9, w8, #8
    //     0x6e1378: add             x16, x4, w9, sxtw #1
    //     0x6e137c: ldur            w10, [x16, #0xf]
    //     0x6e1380: add             x10, x10, HEAP, lsl #32
    //     0x6e1384: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x6e1388: ldr             x16, [x16, #0x30]
    //     0x6e138c: cmp             w10, w16
    //     0x6e1390: b.ne            #0x6e13c4
    //     0x6e1394: add             w2, w8, #0xa
    //     0x6e1398: add             x16, x4, w2, sxtw #1
    //     0x6e139c: ldur            w8, [x16, #0xf]
    //     0x6e13a0: add             x8, x8, HEAP, lsl #32
    //     0x6e13a4: sub             w2, w0, w8
    //     0x6e13a8: add             x8, fp, w2, sxtw #2
    //     0x6e13ac: ldr             x8, [x8, #8]
    //     0x6e13b0: add             w2, w7, #2
    //     0x6e13b4: sbfx            x7, x2, #1, #0x1f
    //     0x6e13b8: mov             x2, x7
    //     0x6e13bc: mov             x7, x8
    //     0x6e13c0: b               #0x6e13c8
    //     0x6e13c4: mov             x7, NULL
    //     0x6e13c8: lsl             x8, x2, #1
    //     0x6e13cc: lsl             w2, w8, #1
    //     0x6e13d0: add             w8, w2, #8
    //     0x6e13d4: add             x16, x4, w8, sxtw #1
    //     0x6e13d8: ldur            w9, [x16, #0xf]
    //     0x6e13dc: add             x9, x9, HEAP, lsl #32
    //     0x6e13e0: add             x16, PP, #0x27, lsl #12  ; [pp+0x274b0] "roomNumber"
    //     0x6e13e4: ldr             x16, [x16, #0x4b0]
    //     0x6e13e8: cmp             w9, w16
    //     0x6e13ec: b.ne            #0x6e1410
    //     0x6e13f0: add             w8, w2, #0xa
    //     0x6e13f4: add             x16, x4, w8, sxtw #1
    //     0x6e13f8: ldur            w2, [x16, #0xf]
    //     0x6e13fc: add             x2, x2, HEAP, lsl #32
    //     0x6e1400: sub             w4, w0, w2
    //     0x6e1404: add             x0, fp, w4, sxtw #2
    //     0x6e1408: ldr             x0, [x0, #8]
    //     0x6e140c: b               #0x6e1414
    //     0x6e1410: mov             x0, NULL
    // 0x6e1414: cmp             w6, NULL
    // 0x6e1418: b.ne            #0x6e1428
    // 0x6e141c: LoadField: r2 = r1->field_7
    //     0x6e141c: ldur            w2, [x1, #7]
    // 0x6e1420: DecompressPointer r2
    //     0x6e1420: add             x2, x2, HEAP, lsl #32
    // 0x6e1424: b               #0x6e142c
    // 0x6e1428: mov             x2, x6
    // 0x6e142c: stur            x2, [fp, #-0x48]
    // 0x6e1430: LoadField: r4 = r1->field_b
    //     0x6e1430: ldur            w4, [x1, #0xb]
    // 0x6e1434: DecompressPointer r4
    //     0x6e1434: add             x4, x4, HEAP, lsl #32
    // 0x6e1438: stur            x4, [fp, #-0x40]
    // 0x6e143c: cmp             w0, NULL
    // 0x6e1440: b.ne            #0x6e144c
    // 0x6e1444: LoadField: r0 = r1->field_f
    //     0x6e1444: ldur            w0, [x1, #0xf]
    // 0x6e1448: DecompressPointer r0
    //     0x6e1448: add             x0, x0, HEAP, lsl #32
    // 0x6e144c: stur            x0, [fp, #-0x38]
    // 0x6e1450: cmp             w3, NULL
    // 0x6e1454: b.ne            #0x6e1460
    // 0x6e1458: LoadField: r3 = r1->field_13
    //     0x6e1458: ldur            x3, [x1, #0x13]
    // 0x6e145c: b               #0x6e1470
    // 0x6e1460: r6 = LoadInt32Instr(r3)
    //     0x6e1460: sbfx            x6, x3, #1, #0x1f
    //     0x6e1464: tbz             w3, #0, #0x6e146c
    //     0x6e1468: ldur            x6, [x3, #7]
    // 0x6e146c: mov             x3, x6
    // 0x6e1470: stur            x3, [fp, #-0x30]
    // 0x6e1474: cmp             w5, NULL
    // 0x6e1478: b.ne            #0x6e1484
    // 0x6e147c: LoadField: r5 = r1->field_1b
    //     0x6e147c: ldur            w5, [x1, #0x1b]
    // 0x6e1480: DecompressPointer r5
    //     0x6e1480: add             x5, x5, HEAP, lsl #32
    // 0x6e1484: stur            x5, [fp, #-0x28]
    // 0x6e1488: cmp             w7, NULL
    // 0x6e148c: b.ne            #0x6e149c
    // 0x6e1490: LoadField: r6 = r1->field_1f
    //     0x6e1490: ldur            w6, [x1, #0x1f]
    // 0x6e1494: DecompressPointer r6
    //     0x6e1494: add             x6, x6, HEAP, lsl #32
    // 0x6e1498: b               #0x6e14a0
    // 0x6e149c: mov             x6, x7
    // 0x6e14a0: stur            x6, [fp, #-0x20]
    // 0x6e14a4: LoadField: r7 = r1->field_23
    //     0x6e14a4: ldur            w7, [x1, #0x23]
    // 0x6e14a8: DecompressPointer r7
    //     0x6e14a8: add             x7, x7, HEAP, lsl #32
    // 0x6e14ac: stur            x7, [fp, #-0x18]
    // 0x6e14b0: LoadField: r8 = r1->field_27
    //     0x6e14b0: ldur            w8, [x1, #0x27]
    // 0x6e14b4: DecompressPointer r8
    //     0x6e14b4: add             x8, x8, HEAP, lsl #32
    // 0x6e14b8: stur            x8, [fp, #-0x10]
    // 0x6e14bc: LoadField: r9 = r1->field_2b
    //     0x6e14bc: ldur            w9, [x1, #0x2b]
    // 0x6e14c0: DecompressPointer r9
    //     0x6e14c0: add             x9, x9, HEAP, lsl #32
    // 0x6e14c4: stur            x9, [fp, #-8]
    // 0x6e14c8: r0 = RoomModel()
    //     0x6e14c8: bl              #0x5d8df8  ; AllocateRoomModelStub -> RoomModel (size=0x30)
    // 0x6e14cc: ldur            x1, [fp, #-0x48]
    // 0x6e14d0: StoreField: r0->field_7 = r1
    //     0x6e14d0: stur            w1, [x0, #7]
    // 0x6e14d4: ldur            x1, [fp, #-0x40]
    // 0x6e14d8: StoreField: r0->field_b = r1
    //     0x6e14d8: stur            w1, [x0, #0xb]
    // 0x6e14dc: ldur            x1, [fp, #-0x38]
    // 0x6e14e0: StoreField: r0->field_f = r1
    //     0x6e14e0: stur            w1, [x0, #0xf]
    // 0x6e14e4: ldur            x1, [fp, #-0x30]
    // 0x6e14e8: StoreField: r0->field_13 = r1
    //     0x6e14e8: stur            x1, [x0, #0x13]
    // 0x6e14ec: ldur            x1, [fp, #-0x28]
    // 0x6e14f0: StoreField: r0->field_1b = r1
    //     0x6e14f0: stur            w1, [x0, #0x1b]
    // 0x6e14f4: ldur            x1, [fp, #-0x20]
    // 0x6e14f8: StoreField: r0->field_1f = r1
    //     0x6e14f8: stur            w1, [x0, #0x1f]
    // 0x6e14fc: ldur            x1, [fp, #-0x18]
    // 0x6e1500: StoreField: r0->field_23 = r1
    //     0x6e1500: stur            w1, [x0, #0x23]
    // 0x6e1504: ldur            x1, [fp, #-0x10]
    // 0x6e1508: StoreField: r0->field_27 = r1
    //     0x6e1508: stur            w1, [x0, #0x27]
    // 0x6e150c: ldur            x1, [fp, #-8]
    // 0x6e1510: StoreField: r0->field_2b = r1
    //     0x6e1510: stur            w1, [x0, #0x2b]
    // 0x6e1514: LeaveFrame
    //     0x6e1514: mov             SP, fp
    //     0x6e1518: ldp             fp, lr, [SP], #0x10
    // 0x6e151c: ret
    //     0x6e151c: ret             
  }
  Map<String, dynamic> toFirestore(RoomModel) {
    // ** addr: 0x6e59a4, size: 0x220
    // 0x6e59a4: EnterFrame
    //     0x6e59a4: stp             fp, lr, [SP, #-0x10]!
    //     0x6e59a8: mov             fp, SP
    // 0x6e59ac: AllocStack(0x20)
    //     0x6e59ac: sub             SP, SP, #0x20
    // 0x6e59b0: SetupParameters(RoomModel this /* r1 => r0, fp-0x8 */)
    //     0x6e59b0: mov             x0, x1
    //     0x6e59b4: stur            x1, [fp, #-8]
    // 0x6e59b8: CheckStackOverflow
    //     0x6e59b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e59bc: cmp             SP, x16
    //     0x6e59c0: b.ls            #0x6e5bbc
    // 0x6e59c4: r1 = Null
    //     0x6e59c4: mov             x1, NULL
    // 0x6e59c8: r2 = 32
    //     0x6e59c8: mov             x2, #0x20
    // 0x6e59cc: r0 = AllocateArray()
    //     0x6e59cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e59d0: mov             x3, x0
    // 0x6e59d4: stur            x3, [fp, #-0x10]
    // 0x6e59d8: r16 = "hotel_id"
    //     0x6e59d8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x6e59dc: ldr             x16, [x16, #0xfd0]
    // 0x6e59e0: StoreField: r3->field_f = r16
    //     0x6e59e0: stur            w16, [x3, #0xf]
    // 0x6e59e4: ldur            x2, [fp, #-8]
    // 0x6e59e8: LoadField: r0 = r2->field_b
    //     0x6e59e8: ldur            w0, [x2, #0xb]
    // 0x6e59ec: DecompressPointer r0
    //     0x6e59ec: add             x0, x0, HEAP, lsl #32
    // 0x6e59f0: StoreField: r3->field_13 = r0
    //     0x6e59f0: stur            w0, [x3, #0x13]
    // 0x6e59f4: r16 = "room_number"
    //     0x6e59f4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x6e59f8: ldr             x16, [x16, #0xfb0]
    // 0x6e59fc: ArrayStore: r3[0] = r16  ; List_4
    //     0x6e59fc: stur            w16, [x3, #0x17]
    // 0x6e5a00: LoadField: r0 = r2->field_f
    //     0x6e5a00: ldur            w0, [x2, #0xf]
    // 0x6e5a04: DecompressPointer r0
    //     0x6e5a04: add             x0, x0, HEAP, lsl #32
    // 0x6e5a08: StoreField: r3->field_1b = r0
    //     0x6e5a08: stur            w0, [x3, #0x1b]
    // 0x6e5a0c: r16 = "capacity"
    //     0x6e5a0c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x6e5a10: ldr             x16, [x16, #0x988]
    // 0x6e5a14: StoreField: r3->field_1f = r16
    //     0x6e5a14: stur            w16, [x3, #0x1f]
    // 0x6e5a18: LoadField: r4 = r2->field_13
    //     0x6e5a18: ldur            x4, [x2, #0x13]
    // 0x6e5a1c: r0 = BoxInt64Instr(r4)
    //     0x6e5a1c: sbfiz           x0, x4, #1, #0x1f
    //     0x6e5a20: cmp             x4, x0, asr #1
    //     0x6e5a24: b.eq            #0x6e5a30
    //     0x6e5a28: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6e5a2c: stur            x4, [x0, #7]
    // 0x6e5a30: mov             x1, x3
    // 0x6e5a34: ArrayStore: r1[5] = r0  ; List_4
    //     0x6e5a34: add             x25, x1, #0x23
    //     0x6e5a38: str             w0, [x25]
    //     0x6e5a3c: tbz             w0, #0, #0x6e5a58
    //     0x6e5a40: ldurb           w16, [x1, #-1]
    //     0x6e5a44: ldurb           w17, [x0, #-1]
    //     0x6e5a48: and             x16, x17, x16, lsr #2
    //     0x6e5a4c: tst             x16, HEAP, lsr #32
    //     0x6e5a50: b.eq            #0x6e5a58
    //     0x6e5a54: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5a58: r16 = "gender"
    //     0x6e5a58: add             x16, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x6e5a5c: ldr             x16, [x16, #8]
    // 0x6e5a60: StoreField: r3->field_27 = r16
    //     0x6e5a60: stur            w16, [x3, #0x27]
    // 0x6e5a64: LoadField: r0 = r2->field_1b
    //     0x6e5a64: ldur            w0, [x2, #0x1b]
    // 0x6e5a68: DecompressPointer r0
    //     0x6e5a68: add             x0, x0, HEAP, lsl #32
    // 0x6e5a6c: mov             x1, x3
    // 0x6e5a70: ArrayStore: r1[7] = r0  ; List_4
    //     0x6e5a70: add             x25, x1, #0x2b
    //     0x6e5a74: str             w0, [x25]
    //     0x6e5a78: tbz             w0, #0, #0x6e5a94
    //     0x6e5a7c: ldurb           w16, [x1, #-1]
    //     0x6e5a80: ldurb           w17, [x0, #-1]
    //     0x6e5a84: and             x16, x17, x16, lsr #2
    //     0x6e5a88: tst             x16, HEAP, lsr #32
    //     0x6e5a8c: b.eq            #0x6e5a94
    //     0x6e5a90: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5a94: r16 = "note"
    //     0x6e5a94: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x6e5a98: ldr             x16, [x16, #0x30]
    // 0x6e5a9c: StoreField: r3->field_2f = r16
    //     0x6e5a9c: stur            w16, [x3, #0x2f]
    // 0x6e5aa0: LoadField: r0 = r2->field_1f
    //     0x6e5aa0: ldur            w0, [x2, #0x1f]
    // 0x6e5aa4: DecompressPointer r0
    //     0x6e5aa4: add             x0, x0, HEAP, lsl #32
    // 0x6e5aa8: mov             x1, x3
    // 0x6e5aac: ArrayStore: r1[9] = r0  ; List_4
    //     0x6e5aac: add             x25, x1, #0x33
    //     0x6e5ab0: str             w0, [x25]
    //     0x6e5ab4: tbz             w0, #0, #0x6e5ad0
    //     0x6e5ab8: ldurb           w16, [x1, #-1]
    //     0x6e5abc: ldurb           w17, [x0, #-1]
    //     0x6e5ac0: and             x16, x17, x16, lsr #2
    //     0x6e5ac4: tst             x16, HEAP, lsr #32
    //     0x6e5ac8: b.eq            #0x6e5ad0
    //     0x6e5acc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5ad0: r16 = "agency_id"
    //     0x6e5ad0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6e5ad4: ldr             x16, [x16, #0x40]
    // 0x6e5ad8: StoreField: r3->field_37 = r16
    //     0x6e5ad8: stur            w16, [x3, #0x37]
    // 0x6e5adc: LoadField: r0 = r2->field_23
    //     0x6e5adc: ldur            w0, [x2, #0x23]
    // 0x6e5ae0: DecompressPointer r0
    //     0x6e5ae0: add             x0, x0, HEAP, lsl #32
    // 0x6e5ae4: mov             x1, x3
    // 0x6e5ae8: ArrayStore: r1[11] = r0  ; List_4
    //     0x6e5ae8: add             x25, x1, #0x3b
    //     0x6e5aec: str             w0, [x25]
    //     0x6e5af0: tbz             w0, #0, #0x6e5b0c
    //     0x6e5af4: ldurb           w16, [x1, #-1]
    //     0x6e5af8: ldurb           w17, [x0, #-1]
    //     0x6e5afc: and             x16, x17, x16, lsr #2
    //     0x6e5b00: tst             x16, HEAP, lsr #32
    //     0x6e5b04: b.eq            #0x6e5b0c
    //     0x6e5b08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5b0c: r16 = "created_at"
    //     0x6e5b0c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6e5b10: ldr             x16, [x16, #0xc00]
    // 0x6e5b14: StoreField: r3->field_3f = r16
    //     0x6e5b14: stur            w16, [x3, #0x3f]
    // 0x6e5b18: LoadField: r0 = r2->field_27
    //     0x6e5b18: ldur            w0, [x2, #0x27]
    // 0x6e5b1c: DecompressPointer r0
    //     0x6e5b1c: add             x0, x0, HEAP, lsl #32
    // 0x6e5b20: cmp             w0, NULL
    // 0x6e5b24: b.eq            #0x6e5b38
    // 0x6e5b28: LoadField: r2 = r0->field_b
    //     0x6e5b28: ldur            x2, [x0, #0xb]
    // 0x6e5b2c: r1 = Null
    //     0x6e5b2c: mov             x1, NULL
    // 0x6e5b30: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x6e5b30: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x6e5b34: b               #0x6e5b3c
    // 0x6e5b38: r0 = serverTimestamp()
    //     0x6e5b38: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6e5b3c: ldur            x2, [fp, #-0x10]
    // 0x6e5b40: mov             x1, x2
    // 0x6e5b44: ArrayStore: r1[13] = r0  ; List_4
    //     0x6e5b44: add             x25, x1, #0x43
    //     0x6e5b48: str             w0, [x25]
    //     0x6e5b4c: tbz             w0, #0, #0x6e5b68
    //     0x6e5b50: ldurb           w16, [x1, #-1]
    //     0x6e5b54: ldurb           w17, [x0, #-1]
    //     0x6e5b58: and             x16, x17, x16, lsr #2
    //     0x6e5b5c: tst             x16, HEAP, lsr #32
    //     0x6e5b60: b.eq            #0x6e5b68
    //     0x6e5b64: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5b68: r16 = "updated_at"
    //     0x6e5b68: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6e5b6c: ldr             x16, [x16, #0x58]
    // 0x6e5b70: StoreField: r2->field_47 = r16
    //     0x6e5b70: stur            w16, [x2, #0x47]
    // 0x6e5b74: r0 = serverTimestamp()
    //     0x6e5b74: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6e5b78: ldur            x1, [fp, #-0x10]
    // 0x6e5b7c: ArrayStore: r1[15] = r0  ; List_4
    //     0x6e5b7c: add             x25, x1, #0x4b
    //     0x6e5b80: str             w0, [x25]
    //     0x6e5b84: tbz             w0, #0, #0x6e5ba0
    //     0x6e5b88: ldurb           w16, [x1, #-1]
    //     0x6e5b8c: ldurb           w17, [x0, #-1]
    //     0x6e5b90: and             x16, x17, x16, lsr #2
    //     0x6e5b94: tst             x16, HEAP, lsr #32
    //     0x6e5b98: b.eq            #0x6e5ba0
    //     0x6e5b9c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e5ba0: r16 = <String, dynamic>
    //     0x6e5ba0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6e5ba4: ldur            lr, [fp, #-0x10]
    // 0x6e5ba8: stp             lr, x16, [SP]
    // 0x6e5bac: r0 = Map._fromLiteral()
    //     0x6e5bac: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6e5bb0: LeaveFrame
    //     0x6e5bb0: mov             SP, fp
    //     0x6e5bb4: ldp             fp, lr, [SP], #0x10
    // 0x6e5bb8: ret
    //     0x6e5bb8: ret             
    // 0x6e5bbc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e5bbc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e5bc0: b               #0x6e59c4
  }
}
