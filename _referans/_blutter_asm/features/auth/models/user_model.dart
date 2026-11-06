// lib: , url: package:umrem_demo/features/auth/models/user_model.dart

// class id: 1049561, size: 0x8
class :: {
}

// class id: 198, size: 0x50, field offset: 0x8
class UserModel extends Object {

  factory _ UserModel.fromFirestore(/* No info */) {
    // ** addr: 0x5da624, size: 0xd90
    // 0x5da624: EnterFrame
    //     0x5da624: stp             fp, lr, [SP, #-0x10]!
    //     0x5da628: mov             fp, SP
    // 0x5da62c: AllocStack(0x98)
    //     0x5da62c: sub             SP, SP, #0x98
    // 0x5da630: SetupParameters(dynamic _ /* r1 => r0 */, dynamic _ /* r2 => r1 */)
    //     0x5da630: mov             x0, x1
    //     0x5da634: mov             x1, x2
    // 0x5da638: CheckStackOverflow
    //     0x5da638: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5da63c: cmp             SP, x16
    //     0x5da640: b.ls            #0x5db3ac
    // 0x5da644: r0 = LoadClassIdInstr(r1)
    //     0x5da644: ldur            x0, [x1, #-1]
    //     0x5da648: ubfx            x0, x0, #0xc, #0x14
    // 0x5da64c: r0 = GDT[cid_x0 + -0xffe]()
    //     0x5da64c: sub             lr, x0, #0xffe
    //     0x5da650: ldr             lr, [x21, lr, lsl #3]
    //     0x5da654: blr             lr
    // 0x5da658: mov             x3, x0
    // 0x5da65c: r2 = Null
    //     0x5da65c: mov             x2, NULL
    // 0x5da660: r1 = Null
    //     0x5da660: mov             x1, NULL
    // 0x5da664: stur            x3, [fp, #-8]
    // 0x5da668: r8 = Map<String, dynamic>
    //     0x5da668: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5da66c: r3 = Null
    //     0x5da66c: add             x3, PP, #0x15, lsl #12  ; [pp+0x156e8] Null
    //     0x5da670: ldr             x3, [x3, #0x6e8]
    // 0x5da674: r0 = Map<String, dynamic>()
    //     0x5da674: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5da678: ldur            x1, [fp, #-8]
    // 0x5da67c: r2 = "mekke_seferi_id"
    //     0x5da67c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x5da680: ldr             x2, [x2, #0x810]
    // 0x5da684: r0 = _getValueOrData()
    //     0x5da684: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da688: ldur            x1, [fp, #-8]
    // 0x5da68c: LoadField: r2 = r1->field_f
    //     0x5da68c: ldur            w2, [x1, #0xf]
    // 0x5da690: DecompressPointer r2
    //     0x5da690: add             x2, x2, HEAP, lsl #32
    // 0x5da694: cmp             w2, w0
    // 0x5da698: b.ne            #0x5da6a0
    // 0x5da69c: r0 = Null
    //     0x5da69c: mov             x0, NULL
    // 0x5da6a0: stur            x0, [fp, #-0x10]
    // 0x5da6a4: cmp             w0, NULL
    // 0x5da6a8: b.ne            #0x5da6b8
    // 0x5da6ac: mov             x0, x1
    // 0x5da6b0: r3 = Null
    //     0x5da6b0: mov             x3, NULL
    // 0x5da6b4: b               #0x5da778
    // 0x5da6b8: r2 = 60
    //     0x5da6b8: mov             x2, #0x3c
    // 0x5da6bc: branchIfSmi(r0, 0x5da6c8)
    //     0x5da6bc: tbz             w0, #0, #0x5da6c8
    // 0x5da6c0: r2 = LoadClassIdInstr(r0)
    //     0x5da6c0: ldur            x2, [x0, #-1]
    //     0x5da6c4: ubfx            x2, x2, #0xc, #0x14
    // 0x5da6c8: sub             x16, x2, #0x3c
    // 0x5da6cc: cmp             x16, #1
    // 0x5da6d0: b.hi            #0x5da718
    // 0x5da6d4: cbnz            w0, #0x5da6e0
    // 0x5da6d8: r0 = Null
    //     0x5da6d8: mov             x0, NULL
    // 0x5da6dc: b               #0x5da70c
    // 0x5da6e0: r2 = 60
    //     0x5da6e0: mov             x2, #0x3c
    // 0x5da6e4: branchIfSmi(r0, 0x5da6f0)
    //     0x5da6e4: tbz             w0, #0, #0x5da6f0
    // 0x5da6e8: r2 = LoadClassIdInstr(r0)
    //     0x5da6e8: ldur            x2, [x0, #-1]
    //     0x5da6ec: ubfx            x2, x2, #0xc, #0x14
    // 0x5da6f0: str             x0, [SP]
    // 0x5da6f4: mov             x0, x2
    // 0x5da6f8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5da6f8: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5da6fc: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5da6fc: mov             x17, #0x21f6
    //     0x5da700: add             lr, x0, x17
    //     0x5da704: ldr             lr, [x21, lr, lsl #3]
    //     0x5da708: blr             lr
    // 0x5da70c: mov             x3, x0
    // 0x5da710: ldur            x0, [fp, #-8]
    // 0x5da714: b               #0x5da778
    // 0x5da718: sub             x16, x2, #0x5e
    // 0x5da71c: cmp             x16, #1
    // 0x5da720: b.hi            #0x5da740
    // 0x5da724: mov             x1, x0
    // 0x5da728: r0 = trim()
    //     0x5da728: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5da72c: LoadField: r1 = r0->field_7
    //     0x5da72c: ldur            w1, [x0, #7]
    // 0x5da730: cbnz            w1, #0x5da740
    // 0x5da734: ldur            x0, [fp, #-8]
    // 0x5da738: r3 = Null
    //     0x5da738: mov             x3, NULL
    // 0x5da73c: b               #0x5da778
    // 0x5da740: ldur            x0, [fp, #-0x10]
    // 0x5da744: r1 = 60
    //     0x5da744: mov             x1, #0x3c
    // 0x5da748: branchIfSmi(r0, 0x5da754)
    //     0x5da748: tbz             w0, #0, #0x5da754
    // 0x5da74c: r1 = LoadClassIdInstr(r0)
    //     0x5da74c: ldur            x1, [x0, #-1]
    //     0x5da750: ubfx            x1, x1, #0xc, #0x14
    // 0x5da754: str             x0, [SP]
    // 0x5da758: mov             x0, x1
    // 0x5da75c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5da75c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5da760: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5da760: mov             x17, #0x21f6
    //     0x5da764: add             lr, x0, x17
    //     0x5da768: ldr             lr, [x21, lr, lsl #3]
    //     0x5da76c: blr             lr
    // 0x5da770: mov             x3, x0
    // 0x5da774: ldur            x0, [fp, #-8]
    // 0x5da778: mov             x1, x0
    // 0x5da77c: stur            x3, [fp, #-0x10]
    // 0x5da780: r2 = "medine_seferi_id"
    //     0x5da780: add             x2, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x5da784: ldr             x2, [x2, #0x830]
    // 0x5da788: r0 = _getValueOrData()
    //     0x5da788: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da78c: ldur            x1, [fp, #-8]
    // 0x5da790: LoadField: r2 = r1->field_f
    //     0x5da790: ldur            w2, [x1, #0xf]
    // 0x5da794: DecompressPointer r2
    //     0x5da794: add             x2, x2, HEAP, lsl #32
    // 0x5da798: cmp             w2, w0
    // 0x5da79c: b.ne            #0x5da7a4
    // 0x5da7a0: r0 = Null
    //     0x5da7a0: mov             x0, NULL
    // 0x5da7a4: stur            x0, [fp, #-0x18]
    // 0x5da7a8: cmp             w0, NULL
    // 0x5da7ac: b.ne            #0x5da7bc
    // 0x5da7b0: mov             x0, x1
    // 0x5da7b4: r3 = Null
    //     0x5da7b4: mov             x3, NULL
    // 0x5da7b8: b               #0x5da87c
    // 0x5da7bc: r2 = 60
    //     0x5da7bc: mov             x2, #0x3c
    // 0x5da7c0: branchIfSmi(r0, 0x5da7cc)
    //     0x5da7c0: tbz             w0, #0, #0x5da7cc
    // 0x5da7c4: r2 = LoadClassIdInstr(r0)
    //     0x5da7c4: ldur            x2, [x0, #-1]
    //     0x5da7c8: ubfx            x2, x2, #0xc, #0x14
    // 0x5da7cc: sub             x16, x2, #0x3c
    // 0x5da7d0: cmp             x16, #1
    // 0x5da7d4: b.hi            #0x5da81c
    // 0x5da7d8: cbnz            w0, #0x5da7e4
    // 0x5da7dc: r0 = Null
    //     0x5da7dc: mov             x0, NULL
    // 0x5da7e0: b               #0x5da810
    // 0x5da7e4: r2 = 60
    //     0x5da7e4: mov             x2, #0x3c
    // 0x5da7e8: branchIfSmi(r0, 0x5da7f4)
    //     0x5da7e8: tbz             w0, #0, #0x5da7f4
    // 0x5da7ec: r2 = LoadClassIdInstr(r0)
    //     0x5da7ec: ldur            x2, [x0, #-1]
    //     0x5da7f0: ubfx            x2, x2, #0xc, #0x14
    // 0x5da7f4: str             x0, [SP]
    // 0x5da7f8: mov             x0, x2
    // 0x5da7fc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5da7fc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5da800: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5da800: mov             x17, #0x21f6
    //     0x5da804: add             lr, x0, x17
    //     0x5da808: ldr             lr, [x21, lr, lsl #3]
    //     0x5da80c: blr             lr
    // 0x5da810: mov             x3, x0
    // 0x5da814: ldur            x0, [fp, #-8]
    // 0x5da818: b               #0x5da87c
    // 0x5da81c: sub             x16, x2, #0x5e
    // 0x5da820: cmp             x16, #1
    // 0x5da824: b.hi            #0x5da844
    // 0x5da828: mov             x1, x0
    // 0x5da82c: r0 = trim()
    //     0x5da82c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5da830: LoadField: r1 = r0->field_7
    //     0x5da830: ldur            w1, [x0, #7]
    // 0x5da834: cbnz            w1, #0x5da844
    // 0x5da838: ldur            x0, [fp, #-8]
    // 0x5da83c: r3 = Null
    //     0x5da83c: mov             x3, NULL
    // 0x5da840: b               #0x5da87c
    // 0x5da844: ldur            x0, [fp, #-0x18]
    // 0x5da848: r1 = 60
    //     0x5da848: mov             x1, #0x3c
    // 0x5da84c: branchIfSmi(r0, 0x5da858)
    //     0x5da84c: tbz             w0, #0, #0x5da858
    // 0x5da850: r1 = LoadClassIdInstr(r0)
    //     0x5da850: ldur            x1, [x0, #-1]
    //     0x5da854: ubfx            x1, x1, #0xc, #0x14
    // 0x5da858: str             x0, [SP]
    // 0x5da85c: mov             x0, x1
    // 0x5da860: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5da860: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5da864: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5da864: mov             x17, #0x21f6
    //     0x5da868: add             lr, x0, x17
    //     0x5da86c: ldr             lr, [x21, lr, lsl #3]
    //     0x5da870: blr             lr
    // 0x5da874: mov             x3, x0
    // 0x5da878: ldur            x0, [fp, #-8]
    // 0x5da87c: mov             x1, x0
    // 0x5da880: stur            x3, [fp, #-0x18]
    // 0x5da884: r2 = "mekke_otel_id"
    //     0x5da884: add             x2, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x5da888: ldr             x2, [x2, #0x818]
    // 0x5da88c: r0 = _getValueOrData()
    //     0x5da88c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da890: ldur            x1, [fp, #-8]
    // 0x5da894: LoadField: r2 = r1->field_f
    //     0x5da894: ldur            w2, [x1, #0xf]
    // 0x5da898: DecompressPointer r2
    //     0x5da898: add             x2, x2, HEAP, lsl #32
    // 0x5da89c: cmp             w2, w0
    // 0x5da8a0: b.ne            #0x5da8a8
    // 0x5da8a4: r0 = Null
    //     0x5da8a4: mov             x0, NULL
    // 0x5da8a8: stur            x0, [fp, #-0x20]
    // 0x5da8ac: cmp             w0, NULL
    // 0x5da8b0: b.ne            #0x5da8c0
    // 0x5da8b4: mov             x0, x1
    // 0x5da8b8: r3 = Null
    //     0x5da8b8: mov             x3, NULL
    // 0x5da8bc: b               #0x5da980
    // 0x5da8c0: r2 = 60
    //     0x5da8c0: mov             x2, #0x3c
    // 0x5da8c4: branchIfSmi(r0, 0x5da8d0)
    //     0x5da8c4: tbz             w0, #0, #0x5da8d0
    // 0x5da8c8: r2 = LoadClassIdInstr(r0)
    //     0x5da8c8: ldur            x2, [x0, #-1]
    //     0x5da8cc: ubfx            x2, x2, #0xc, #0x14
    // 0x5da8d0: sub             x16, x2, #0x3c
    // 0x5da8d4: cmp             x16, #1
    // 0x5da8d8: b.hi            #0x5da920
    // 0x5da8dc: cbnz            w0, #0x5da8e8
    // 0x5da8e0: r0 = Null
    //     0x5da8e0: mov             x0, NULL
    // 0x5da8e4: b               #0x5da914
    // 0x5da8e8: r2 = 60
    //     0x5da8e8: mov             x2, #0x3c
    // 0x5da8ec: branchIfSmi(r0, 0x5da8f8)
    //     0x5da8ec: tbz             w0, #0, #0x5da8f8
    // 0x5da8f0: r2 = LoadClassIdInstr(r0)
    //     0x5da8f0: ldur            x2, [x0, #-1]
    //     0x5da8f4: ubfx            x2, x2, #0xc, #0x14
    // 0x5da8f8: str             x0, [SP]
    // 0x5da8fc: mov             x0, x2
    // 0x5da900: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5da900: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5da904: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5da904: mov             x17, #0x21f6
    //     0x5da908: add             lr, x0, x17
    //     0x5da90c: ldr             lr, [x21, lr, lsl #3]
    //     0x5da910: blr             lr
    // 0x5da914: mov             x3, x0
    // 0x5da918: ldur            x0, [fp, #-8]
    // 0x5da91c: b               #0x5da980
    // 0x5da920: sub             x16, x2, #0x5e
    // 0x5da924: cmp             x16, #1
    // 0x5da928: b.hi            #0x5da948
    // 0x5da92c: mov             x1, x0
    // 0x5da930: r0 = trim()
    //     0x5da930: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5da934: LoadField: r1 = r0->field_7
    //     0x5da934: ldur            w1, [x0, #7]
    // 0x5da938: cbnz            w1, #0x5da948
    // 0x5da93c: ldur            x0, [fp, #-8]
    // 0x5da940: r3 = Null
    //     0x5da940: mov             x3, NULL
    // 0x5da944: b               #0x5da980
    // 0x5da948: ldur            x0, [fp, #-0x20]
    // 0x5da94c: r1 = 60
    //     0x5da94c: mov             x1, #0x3c
    // 0x5da950: branchIfSmi(r0, 0x5da95c)
    //     0x5da950: tbz             w0, #0, #0x5da95c
    // 0x5da954: r1 = LoadClassIdInstr(r0)
    //     0x5da954: ldur            x1, [x0, #-1]
    //     0x5da958: ubfx            x1, x1, #0xc, #0x14
    // 0x5da95c: str             x0, [SP]
    // 0x5da960: mov             x0, x1
    // 0x5da964: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5da964: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5da968: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5da968: mov             x17, #0x21f6
    //     0x5da96c: add             lr, x0, x17
    //     0x5da970: ldr             lr, [x21, lr, lsl #3]
    //     0x5da974: blr             lr
    // 0x5da978: mov             x3, x0
    // 0x5da97c: ldur            x0, [fp, #-8]
    // 0x5da980: mov             x1, x0
    // 0x5da984: stur            x3, [fp, #-0x20]
    // 0x5da988: r2 = "medine_otel_id"
    //     0x5da988: add             x2, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x5da98c: ldr             x2, [x2, #0x838]
    // 0x5da990: r0 = _getValueOrData()
    //     0x5da990: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da994: ldur            x1, [fp, #-8]
    // 0x5da998: LoadField: r2 = r1->field_f
    //     0x5da998: ldur            w2, [x1, #0xf]
    // 0x5da99c: DecompressPointer r2
    //     0x5da99c: add             x2, x2, HEAP, lsl #32
    // 0x5da9a0: cmp             w2, w0
    // 0x5da9a4: b.ne            #0x5da9ac
    // 0x5da9a8: r0 = Null
    //     0x5da9a8: mov             x0, NULL
    // 0x5da9ac: stur            x0, [fp, #-0x28]
    // 0x5da9b0: cmp             w0, NULL
    // 0x5da9b4: b.ne            #0x5da9c4
    // 0x5da9b8: mov             x0, x1
    // 0x5da9bc: r3 = Null
    //     0x5da9bc: mov             x3, NULL
    // 0x5da9c0: b               #0x5daa84
    // 0x5da9c4: r2 = 60
    //     0x5da9c4: mov             x2, #0x3c
    // 0x5da9c8: branchIfSmi(r0, 0x5da9d4)
    //     0x5da9c8: tbz             w0, #0, #0x5da9d4
    // 0x5da9cc: r2 = LoadClassIdInstr(r0)
    //     0x5da9cc: ldur            x2, [x0, #-1]
    //     0x5da9d0: ubfx            x2, x2, #0xc, #0x14
    // 0x5da9d4: sub             x16, x2, #0x3c
    // 0x5da9d8: cmp             x16, #1
    // 0x5da9dc: b.hi            #0x5daa24
    // 0x5da9e0: cbnz            w0, #0x5da9ec
    // 0x5da9e4: r0 = Null
    //     0x5da9e4: mov             x0, NULL
    // 0x5da9e8: b               #0x5daa18
    // 0x5da9ec: r2 = 60
    //     0x5da9ec: mov             x2, #0x3c
    // 0x5da9f0: branchIfSmi(r0, 0x5da9fc)
    //     0x5da9f0: tbz             w0, #0, #0x5da9fc
    // 0x5da9f4: r2 = LoadClassIdInstr(r0)
    //     0x5da9f4: ldur            x2, [x0, #-1]
    //     0x5da9f8: ubfx            x2, x2, #0xc, #0x14
    // 0x5da9fc: str             x0, [SP]
    // 0x5daa00: mov             x0, x2
    // 0x5daa04: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5daa04: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5daa08: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5daa08: mov             x17, #0x21f6
    //     0x5daa0c: add             lr, x0, x17
    //     0x5daa10: ldr             lr, [x21, lr, lsl #3]
    //     0x5daa14: blr             lr
    // 0x5daa18: mov             x3, x0
    // 0x5daa1c: ldur            x0, [fp, #-8]
    // 0x5daa20: b               #0x5daa84
    // 0x5daa24: sub             x16, x2, #0x5e
    // 0x5daa28: cmp             x16, #1
    // 0x5daa2c: b.hi            #0x5daa4c
    // 0x5daa30: mov             x1, x0
    // 0x5daa34: r0 = trim()
    //     0x5daa34: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5daa38: LoadField: r1 = r0->field_7
    //     0x5daa38: ldur            w1, [x0, #7]
    // 0x5daa3c: cbnz            w1, #0x5daa4c
    // 0x5daa40: ldur            x0, [fp, #-8]
    // 0x5daa44: r3 = Null
    //     0x5daa44: mov             x3, NULL
    // 0x5daa48: b               #0x5daa84
    // 0x5daa4c: ldur            x0, [fp, #-0x28]
    // 0x5daa50: r1 = 60
    //     0x5daa50: mov             x1, #0x3c
    // 0x5daa54: branchIfSmi(r0, 0x5daa60)
    //     0x5daa54: tbz             w0, #0, #0x5daa60
    // 0x5daa58: r1 = LoadClassIdInstr(r0)
    //     0x5daa58: ldur            x1, [x0, #-1]
    //     0x5daa5c: ubfx            x1, x1, #0xc, #0x14
    // 0x5daa60: str             x0, [SP]
    // 0x5daa64: mov             x0, x1
    // 0x5daa68: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5daa68: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5daa6c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5daa6c: mov             x17, #0x21f6
    //     0x5daa70: add             lr, x0, x17
    //     0x5daa74: ldr             lr, [x21, lr, lsl #3]
    //     0x5daa78: blr             lr
    // 0x5daa7c: mov             x3, x0
    // 0x5daa80: ldur            x0, [fp, #-8]
    // 0x5daa84: mov             x1, x0
    // 0x5daa88: stur            x3, [fp, #-0x28]
    // 0x5daa8c: r2 = "mekke_oda_id"
    //     0x5daa8c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x5daa90: ldr             x2, [x2, #0x820]
    // 0x5daa94: r0 = _getValueOrData()
    //     0x5daa94: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5daa98: ldur            x1, [fp, #-8]
    // 0x5daa9c: LoadField: r2 = r1->field_f
    //     0x5daa9c: ldur            w2, [x1, #0xf]
    // 0x5daaa0: DecompressPointer r2
    //     0x5daaa0: add             x2, x2, HEAP, lsl #32
    // 0x5daaa4: cmp             w2, w0
    // 0x5daaa8: b.ne            #0x5daab0
    // 0x5daaac: r0 = Null
    //     0x5daaac: mov             x0, NULL
    // 0x5daab0: stur            x0, [fp, #-0x30]
    // 0x5daab4: cmp             w0, NULL
    // 0x5daab8: b.ne            #0x5daac8
    // 0x5daabc: mov             x0, x1
    // 0x5daac0: r3 = Null
    //     0x5daac0: mov             x3, NULL
    // 0x5daac4: b               #0x5dab88
    // 0x5daac8: r2 = 60
    //     0x5daac8: mov             x2, #0x3c
    // 0x5daacc: branchIfSmi(r0, 0x5daad8)
    //     0x5daacc: tbz             w0, #0, #0x5daad8
    // 0x5daad0: r2 = LoadClassIdInstr(r0)
    //     0x5daad0: ldur            x2, [x0, #-1]
    //     0x5daad4: ubfx            x2, x2, #0xc, #0x14
    // 0x5daad8: sub             x16, x2, #0x3c
    // 0x5daadc: cmp             x16, #1
    // 0x5daae0: b.hi            #0x5dab28
    // 0x5daae4: cbnz            w0, #0x5daaf0
    // 0x5daae8: r0 = Null
    //     0x5daae8: mov             x0, NULL
    // 0x5daaec: b               #0x5dab1c
    // 0x5daaf0: r2 = 60
    //     0x5daaf0: mov             x2, #0x3c
    // 0x5daaf4: branchIfSmi(r0, 0x5dab00)
    //     0x5daaf4: tbz             w0, #0, #0x5dab00
    // 0x5daaf8: r2 = LoadClassIdInstr(r0)
    //     0x5daaf8: ldur            x2, [x0, #-1]
    //     0x5daafc: ubfx            x2, x2, #0xc, #0x14
    // 0x5dab00: str             x0, [SP]
    // 0x5dab04: mov             x0, x2
    // 0x5dab08: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5dab08: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5dab0c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5dab0c: mov             x17, #0x21f6
    //     0x5dab10: add             lr, x0, x17
    //     0x5dab14: ldr             lr, [x21, lr, lsl #3]
    //     0x5dab18: blr             lr
    // 0x5dab1c: mov             x3, x0
    // 0x5dab20: ldur            x0, [fp, #-8]
    // 0x5dab24: b               #0x5dab88
    // 0x5dab28: sub             x16, x2, #0x5e
    // 0x5dab2c: cmp             x16, #1
    // 0x5dab30: b.hi            #0x5dab50
    // 0x5dab34: mov             x1, x0
    // 0x5dab38: r0 = trim()
    //     0x5dab38: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5dab3c: LoadField: r1 = r0->field_7
    //     0x5dab3c: ldur            w1, [x0, #7]
    // 0x5dab40: cbnz            w1, #0x5dab50
    // 0x5dab44: ldur            x0, [fp, #-8]
    // 0x5dab48: r3 = Null
    //     0x5dab48: mov             x3, NULL
    // 0x5dab4c: b               #0x5dab88
    // 0x5dab50: ldur            x0, [fp, #-0x30]
    // 0x5dab54: r1 = 60
    //     0x5dab54: mov             x1, #0x3c
    // 0x5dab58: branchIfSmi(r0, 0x5dab64)
    //     0x5dab58: tbz             w0, #0, #0x5dab64
    // 0x5dab5c: r1 = LoadClassIdInstr(r0)
    //     0x5dab5c: ldur            x1, [x0, #-1]
    //     0x5dab60: ubfx            x1, x1, #0xc, #0x14
    // 0x5dab64: str             x0, [SP]
    // 0x5dab68: mov             x0, x1
    // 0x5dab6c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5dab6c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5dab70: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5dab70: mov             x17, #0x21f6
    //     0x5dab74: add             lr, x0, x17
    //     0x5dab78: ldr             lr, [x21, lr, lsl #3]
    //     0x5dab7c: blr             lr
    // 0x5dab80: mov             x3, x0
    // 0x5dab84: ldur            x0, [fp, #-8]
    // 0x5dab88: mov             x1, x0
    // 0x5dab8c: stur            x3, [fp, #-0x30]
    // 0x5dab90: r2 = "medine_oda_id"
    //     0x5dab90: add             x2, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x5dab94: ldr             x2, [x2, #0x840]
    // 0x5dab98: r0 = _getValueOrData()
    //     0x5dab98: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dab9c: ldur            x1, [fp, #-8]
    // 0x5daba0: LoadField: r2 = r1->field_f
    //     0x5daba0: ldur            w2, [x1, #0xf]
    // 0x5daba4: DecompressPointer r2
    //     0x5daba4: add             x2, x2, HEAP, lsl #32
    // 0x5daba8: cmp             w2, w0
    // 0x5dabac: b.ne            #0x5dabb4
    // 0x5dabb0: r0 = Null
    //     0x5dabb0: mov             x0, NULL
    // 0x5dabb4: stur            x0, [fp, #-0x38]
    // 0x5dabb8: cmp             w0, NULL
    // 0x5dabbc: b.ne            #0x5dabcc
    // 0x5dabc0: mov             x0, x1
    // 0x5dabc4: r3 = Null
    //     0x5dabc4: mov             x3, NULL
    // 0x5dabc8: b               #0x5dac8c
    // 0x5dabcc: r2 = 60
    //     0x5dabcc: mov             x2, #0x3c
    // 0x5dabd0: branchIfSmi(r0, 0x5dabdc)
    //     0x5dabd0: tbz             w0, #0, #0x5dabdc
    // 0x5dabd4: r2 = LoadClassIdInstr(r0)
    //     0x5dabd4: ldur            x2, [x0, #-1]
    //     0x5dabd8: ubfx            x2, x2, #0xc, #0x14
    // 0x5dabdc: sub             x16, x2, #0x3c
    // 0x5dabe0: cmp             x16, #1
    // 0x5dabe4: b.hi            #0x5dac2c
    // 0x5dabe8: cbnz            w0, #0x5dabf4
    // 0x5dabec: r0 = Null
    //     0x5dabec: mov             x0, NULL
    // 0x5dabf0: b               #0x5dac20
    // 0x5dabf4: r2 = 60
    //     0x5dabf4: mov             x2, #0x3c
    // 0x5dabf8: branchIfSmi(r0, 0x5dac04)
    //     0x5dabf8: tbz             w0, #0, #0x5dac04
    // 0x5dabfc: r2 = LoadClassIdInstr(r0)
    //     0x5dabfc: ldur            x2, [x0, #-1]
    //     0x5dac00: ubfx            x2, x2, #0xc, #0x14
    // 0x5dac04: str             x0, [SP]
    // 0x5dac08: mov             x0, x2
    // 0x5dac0c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5dac0c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5dac10: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5dac10: mov             x17, #0x21f6
    //     0x5dac14: add             lr, x0, x17
    //     0x5dac18: ldr             lr, [x21, lr, lsl #3]
    //     0x5dac1c: blr             lr
    // 0x5dac20: mov             x3, x0
    // 0x5dac24: ldur            x0, [fp, #-8]
    // 0x5dac28: b               #0x5dac8c
    // 0x5dac2c: sub             x16, x2, #0x5e
    // 0x5dac30: cmp             x16, #1
    // 0x5dac34: b.hi            #0x5dac54
    // 0x5dac38: mov             x1, x0
    // 0x5dac3c: r0 = trim()
    //     0x5dac3c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5dac40: LoadField: r1 = r0->field_7
    //     0x5dac40: ldur            w1, [x0, #7]
    // 0x5dac44: cbnz            w1, #0x5dac54
    // 0x5dac48: ldur            x0, [fp, #-8]
    // 0x5dac4c: r3 = Null
    //     0x5dac4c: mov             x3, NULL
    // 0x5dac50: b               #0x5dac8c
    // 0x5dac54: ldur            x0, [fp, #-0x38]
    // 0x5dac58: r1 = 60
    //     0x5dac58: mov             x1, #0x3c
    // 0x5dac5c: branchIfSmi(r0, 0x5dac68)
    //     0x5dac5c: tbz             w0, #0, #0x5dac68
    // 0x5dac60: r1 = LoadClassIdInstr(r0)
    //     0x5dac60: ldur            x1, [x0, #-1]
    //     0x5dac64: ubfx            x1, x1, #0xc, #0x14
    // 0x5dac68: str             x0, [SP]
    // 0x5dac6c: mov             x0, x1
    // 0x5dac70: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5dac70: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5dac74: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5dac74: mov             x17, #0x21f6
    //     0x5dac78: add             lr, x0, x17
    //     0x5dac7c: ldr             lr, [x21, lr, lsl #3]
    //     0x5dac80: blr             lr
    // 0x5dac84: mov             x3, x0
    // 0x5dac88: ldur            x0, [fp, #-8]
    // 0x5dac8c: mov             x1, x0
    // 0x5dac90: stur            x3, [fp, #-0x38]
    // 0x5dac94: r2 = "user_token"
    //     0x5dac94: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5dac98: r0 = _getValueOrData()
    //     0x5dac98: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dac9c: ldur            x3, [fp, #-8]
    // 0x5daca0: LoadField: r1 = r3->field_f
    //     0x5daca0: ldur            w1, [x3, #0xf]
    // 0x5daca4: DecompressPointer r1
    //     0x5daca4: add             x1, x1, HEAP, lsl #32
    // 0x5daca8: cmp             w1, w0
    // 0x5dacac: b.ne            #0x5dacb4
    // 0x5dacb0: r0 = Null
    //     0x5dacb0: mov             x0, NULL
    // 0x5dacb4: cmp             w0, NULL
    // 0x5dacb8: b.ne            #0x5dacc4
    // 0x5dacbc: r4 = ""
    //     0x5dacbc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5dacc0: b               #0x5dacc8
    // 0x5dacc4: mov             x4, x0
    // 0x5dacc8: mov             x0, x4
    // 0x5daccc: stur            x4, [fp, #-0x40]
    // 0x5dacd0: r2 = Null
    //     0x5dacd0: mov             x2, NULL
    // 0x5dacd4: r1 = Null
    //     0x5dacd4: mov             x1, NULL
    // 0x5dacd8: r4 = 60
    //     0x5dacd8: mov             x4, #0x3c
    // 0x5dacdc: branchIfSmi(r0, 0x5dace8)
    //     0x5dacdc: tbz             w0, #0, #0x5dace8
    // 0x5dace0: r4 = LoadClassIdInstr(r0)
    //     0x5dace0: ldur            x4, [x0, #-1]
    //     0x5dace4: ubfx            x4, x4, #0xc, #0x14
    // 0x5dace8: sub             x4, x4, #0x5e
    // 0x5dacec: cmp             x4, #1
    // 0x5dacf0: b.ls            #0x5dad04
    // 0x5dacf4: r8 = String
    //     0x5dacf4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5dacf8: r3 = Null
    //     0x5dacf8: add             x3, PP, #0x15, lsl #12  ; [pp+0x156f8] Null
    //     0x5dacfc: ldr             x3, [x3, #0x6f8]
    // 0x5dad00: r0 = String()
    //     0x5dad00: bl              #0x939a58  ; IsType_String_Stub
    // 0x5dad04: ldur            x1, [fp, #-8]
    // 0x5dad08: r2 = "user_name"
    //     0x5dad08: add             x2, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x5dad0c: ldr             x2, [x2, #0xb30]
    // 0x5dad10: r0 = _getValueOrData()
    //     0x5dad10: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dad14: ldur            x3, [fp, #-8]
    // 0x5dad18: LoadField: r1 = r3->field_f
    //     0x5dad18: ldur            w1, [x3, #0xf]
    // 0x5dad1c: DecompressPointer r1
    //     0x5dad1c: add             x1, x1, HEAP, lsl #32
    // 0x5dad20: cmp             w1, w0
    // 0x5dad24: b.ne            #0x5dad2c
    // 0x5dad28: r0 = Null
    //     0x5dad28: mov             x0, NULL
    // 0x5dad2c: cmp             w0, NULL
    // 0x5dad30: b.ne            #0x5dad3c
    // 0x5dad34: r4 = ""
    //     0x5dad34: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5dad38: b               #0x5dad40
    // 0x5dad3c: mov             x4, x0
    // 0x5dad40: mov             x0, x4
    // 0x5dad44: stur            x4, [fp, #-0x48]
    // 0x5dad48: r2 = Null
    //     0x5dad48: mov             x2, NULL
    // 0x5dad4c: r1 = Null
    //     0x5dad4c: mov             x1, NULL
    // 0x5dad50: r4 = 60
    //     0x5dad50: mov             x4, #0x3c
    // 0x5dad54: branchIfSmi(r0, 0x5dad60)
    //     0x5dad54: tbz             w0, #0, #0x5dad60
    // 0x5dad58: r4 = LoadClassIdInstr(r0)
    //     0x5dad58: ldur            x4, [x0, #-1]
    //     0x5dad5c: ubfx            x4, x4, #0xc, #0x14
    // 0x5dad60: sub             x4, x4, #0x5e
    // 0x5dad64: cmp             x4, #1
    // 0x5dad68: b.ls            #0x5dad7c
    // 0x5dad6c: r8 = String
    //     0x5dad6c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5dad70: r3 = Null
    //     0x5dad70: add             x3, PP, #0x15, lsl #12  ; [pp+0x15708] Null
    //     0x5dad74: ldr             x3, [x3, #0x708]
    // 0x5dad78: r0 = String()
    //     0x5dad78: bl              #0x939a58  ; IsType_String_Stub
    // 0x5dad7c: ldur            x1, [fp, #-8]
    // 0x5dad80: r2 = "user_type"
    //     0x5dad80: add             x2, PP, #0x15, lsl #12  ; [pp+0x15718] "user_type"
    //     0x5dad84: ldr             x2, [x2, #0x718]
    // 0x5dad88: r0 = _getValueOrData()
    //     0x5dad88: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dad8c: ldur            x3, [fp, #-8]
    // 0x5dad90: LoadField: r1 = r3->field_f
    //     0x5dad90: ldur            w1, [x3, #0xf]
    // 0x5dad94: DecompressPointer r1
    //     0x5dad94: add             x1, x1, HEAP, lsl #32
    // 0x5dad98: cmp             w1, w0
    // 0x5dad9c: b.ne            #0x5dada4
    // 0x5dada0: r0 = Null
    //     0x5dada0: mov             x0, NULL
    // 0x5dada4: cmp             w0, NULL
    // 0x5dada8: b.ne            #0x5dadb4
    // 0x5dadac: r4 = ""
    //     0x5dadac: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5dadb0: b               #0x5dadb8
    // 0x5dadb4: mov             x4, x0
    // 0x5dadb8: mov             x0, x4
    // 0x5dadbc: stur            x4, [fp, #-0x50]
    // 0x5dadc0: r2 = Null
    //     0x5dadc0: mov             x2, NULL
    // 0x5dadc4: r1 = Null
    //     0x5dadc4: mov             x1, NULL
    // 0x5dadc8: r4 = 60
    //     0x5dadc8: mov             x4, #0x3c
    // 0x5dadcc: branchIfSmi(r0, 0x5dadd8)
    //     0x5dadcc: tbz             w0, #0, #0x5dadd8
    // 0x5dadd0: r4 = LoadClassIdInstr(r0)
    //     0x5dadd0: ldur            x4, [x0, #-1]
    //     0x5dadd4: ubfx            x4, x4, #0xc, #0x14
    // 0x5dadd8: sub             x4, x4, #0x5e
    // 0x5daddc: cmp             x4, #1
    // 0x5dade0: b.ls            #0x5dadf4
    // 0x5dade4: r8 = String
    //     0x5dade4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5dade8: r3 = Null
    //     0x5dade8: add             x3, PP, #0x15, lsl #12  ; [pp+0x15720] Null
    //     0x5dadec: ldr             x3, [x3, #0x720]
    // 0x5dadf0: r0 = String()
    //     0x5dadf0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5dadf4: ldur            x1, [fp, #-8]
    // 0x5dadf8: r2 = "user_tel"
    //     0x5dadf8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x5dadfc: ldr             x2, [x2, #0x730]
    // 0x5dae00: r0 = _getValueOrData()
    //     0x5dae00: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dae04: ldur            x3, [fp, #-8]
    // 0x5dae08: LoadField: r1 = r3->field_f
    //     0x5dae08: ldur            w1, [x3, #0xf]
    // 0x5dae0c: DecompressPointer r1
    //     0x5dae0c: add             x1, x1, HEAP, lsl #32
    // 0x5dae10: cmp             w1, w0
    // 0x5dae14: b.ne            #0x5dae1c
    // 0x5dae18: r0 = Null
    //     0x5dae18: mov             x0, NULL
    // 0x5dae1c: cmp             w0, NULL
    // 0x5dae20: b.ne            #0x5dae2c
    // 0x5dae24: r4 = ""
    //     0x5dae24: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5dae28: b               #0x5dae30
    // 0x5dae2c: mov             x4, x0
    // 0x5dae30: mov             x0, x4
    // 0x5dae34: stur            x4, [fp, #-0x58]
    // 0x5dae38: r2 = Null
    //     0x5dae38: mov             x2, NULL
    // 0x5dae3c: r1 = Null
    //     0x5dae3c: mov             x1, NULL
    // 0x5dae40: r4 = 60
    //     0x5dae40: mov             x4, #0x3c
    // 0x5dae44: branchIfSmi(r0, 0x5dae50)
    //     0x5dae44: tbz             w0, #0, #0x5dae50
    // 0x5dae48: r4 = LoadClassIdInstr(r0)
    //     0x5dae48: ldur            x4, [x0, #-1]
    //     0x5dae4c: ubfx            x4, x4, #0xc, #0x14
    // 0x5dae50: sub             x4, x4, #0x5e
    // 0x5dae54: cmp             x4, #1
    // 0x5dae58: b.ls            #0x5dae6c
    // 0x5dae5c: r8 = String
    //     0x5dae5c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5dae60: r3 = Null
    //     0x5dae60: add             x3, PP, #0x15, lsl #12  ; [pp+0x15738] Null
    //     0x5dae64: ldr             x3, [x3, #0x738]
    // 0x5dae68: r0 = String()
    //     0x5dae68: bl              #0x939a58  ; IsType_String_Stub
    // 0x5dae6c: ldur            x1, [fp, #-8]
    // 0x5dae70: r2 = "user_tc"
    //     0x5dae70: add             x2, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x5dae74: ldr             x2, [x2, #0x748]
    // 0x5dae78: r0 = _getValueOrData()
    //     0x5dae78: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dae7c: ldur            x3, [fp, #-8]
    // 0x5dae80: LoadField: r1 = r3->field_f
    //     0x5dae80: ldur            w1, [x3, #0xf]
    // 0x5dae84: DecompressPointer r1
    //     0x5dae84: add             x1, x1, HEAP, lsl #32
    // 0x5dae88: cmp             w1, w0
    // 0x5dae8c: b.ne            #0x5dae94
    // 0x5dae90: r0 = Null
    //     0x5dae90: mov             x0, NULL
    // 0x5dae94: cmp             w0, NULL
    // 0x5dae98: b.ne            #0x5daea4
    // 0x5dae9c: r4 = ""
    //     0x5dae9c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5daea0: b               #0x5daea8
    // 0x5daea4: mov             x4, x0
    // 0x5daea8: mov             x0, x4
    // 0x5daeac: stur            x4, [fp, #-0x60]
    // 0x5daeb0: r2 = Null
    //     0x5daeb0: mov             x2, NULL
    // 0x5daeb4: r1 = Null
    //     0x5daeb4: mov             x1, NULL
    // 0x5daeb8: r4 = 60
    //     0x5daeb8: mov             x4, #0x3c
    // 0x5daebc: branchIfSmi(r0, 0x5daec8)
    //     0x5daebc: tbz             w0, #0, #0x5daec8
    // 0x5daec0: r4 = LoadClassIdInstr(r0)
    //     0x5daec0: ldur            x4, [x0, #-1]
    //     0x5daec4: ubfx            x4, x4, #0xc, #0x14
    // 0x5daec8: sub             x4, x4, #0x5e
    // 0x5daecc: cmp             x4, #1
    // 0x5daed0: b.ls            #0x5daee4
    // 0x5daed4: r8 = String
    //     0x5daed4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5daed8: r3 = Null
    //     0x5daed8: add             x3, PP, #0x15, lsl #12  ; [pp+0x15750] Null
    //     0x5daedc: ldr             x3, [x3, #0x750]
    // 0x5daee0: r0 = String()
    //     0x5daee0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5daee4: ldur            x1, [fp, #-8]
    // 0x5daee8: r2 = "user_location"
    //     0x5daee8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x5daeec: ldr             x2, [x2, #0x760]
    // 0x5daef0: r0 = _getValueOrData()
    //     0x5daef0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5daef4: ldur            x3, [fp, #-8]
    // 0x5daef8: LoadField: r1 = r3->field_f
    //     0x5daef8: ldur            w1, [x3, #0xf]
    // 0x5daefc: DecompressPointer r1
    //     0x5daefc: add             x1, x1, HEAP, lsl #32
    // 0x5daf00: cmp             w1, w0
    // 0x5daf04: b.ne            #0x5daf0c
    // 0x5daf08: r0 = Null
    //     0x5daf08: mov             x0, NULL
    // 0x5daf0c: cmp             w0, NULL
    // 0x5daf10: b.ne            #0x5daf1c
    // 0x5daf14: r4 = ""
    //     0x5daf14: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5daf18: b               #0x5daf20
    // 0x5daf1c: mov             x4, x0
    // 0x5daf20: mov             x0, x4
    // 0x5daf24: stur            x4, [fp, #-0x68]
    // 0x5daf28: r2 = Null
    //     0x5daf28: mov             x2, NULL
    // 0x5daf2c: r1 = Null
    //     0x5daf2c: mov             x1, NULL
    // 0x5daf30: r4 = 60
    //     0x5daf30: mov             x4, #0x3c
    // 0x5daf34: branchIfSmi(r0, 0x5daf40)
    //     0x5daf34: tbz             w0, #0, #0x5daf40
    // 0x5daf38: r4 = LoadClassIdInstr(r0)
    //     0x5daf38: ldur            x4, [x0, #-1]
    //     0x5daf3c: ubfx            x4, x4, #0xc, #0x14
    // 0x5daf40: sub             x4, x4, #0x5e
    // 0x5daf44: cmp             x4, #1
    // 0x5daf48: b.ls            #0x5daf5c
    // 0x5daf4c: r8 = String
    //     0x5daf4c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5daf50: r3 = Null
    //     0x5daf50: add             x3, PP, #0x15, lsl #12  ; [pp+0x15768] Null
    //     0x5daf54: ldr             x3, [x3, #0x768]
    // 0x5daf58: r0 = String()
    //     0x5daf58: bl              #0x939a58  ; IsType_String_Stub
    // 0x5daf5c: ldur            x1, [fp, #-8]
    // 0x5daf60: r2 = "cinsiyet"
    //     0x5daf60: add             x2, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x5daf64: ldr             x2, [x2, #0x778]
    // 0x5daf68: r0 = _getValueOrData()
    //     0x5daf68: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5daf6c: ldur            x3, [fp, #-8]
    // 0x5daf70: LoadField: r1 = r3->field_f
    //     0x5daf70: ldur            w1, [x3, #0xf]
    // 0x5daf74: DecompressPointer r1
    //     0x5daf74: add             x1, x1, HEAP, lsl #32
    // 0x5daf78: cmp             w1, w0
    // 0x5daf7c: b.ne            #0x5daf88
    // 0x5daf80: r4 = Null
    //     0x5daf80: mov             x4, NULL
    // 0x5daf84: b               #0x5daf8c
    // 0x5daf88: mov             x4, x0
    // 0x5daf8c: mov             x0, x4
    // 0x5daf90: stur            x4, [fp, #-0x70]
    // 0x5daf94: r2 = Null
    //     0x5daf94: mov             x2, NULL
    // 0x5daf98: r1 = Null
    //     0x5daf98: mov             x1, NULL
    // 0x5daf9c: r4 = 60
    //     0x5daf9c: mov             x4, #0x3c
    // 0x5dafa0: branchIfSmi(r0, 0x5dafac)
    //     0x5dafa0: tbz             w0, #0, #0x5dafac
    // 0x5dafa4: r4 = LoadClassIdInstr(r0)
    //     0x5dafa4: ldur            x4, [x0, #-1]
    //     0x5dafa8: ubfx            x4, x4, #0xc, #0x14
    // 0x5dafac: sub             x4, x4, #0x5e
    // 0x5dafb0: cmp             x4, #1
    // 0x5dafb4: b.ls            #0x5dafc8
    // 0x5dafb8: r8 = String?
    //     0x5dafb8: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dafbc: r3 = Null
    //     0x5dafbc: add             x3, PP, #0x15, lsl #12  ; [pp+0x15780] Null
    //     0x5dafc0: ldr             x3, [x3, #0x780]
    // 0x5dafc4: r0 = String?()
    //     0x5dafc4: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dafc8: ldur            x1, [fp, #-8]
    // 0x5dafcc: r2 = "dogum_tarihi"
    //     0x5dafcc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x5dafd0: ldr             x2, [x2, #0x790]
    // 0x5dafd4: r0 = _getValueOrData()
    //     0x5dafd4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dafd8: mov             x1, x0
    // 0x5dafdc: ldur            x0, [fp, #-8]
    // 0x5dafe0: LoadField: r2 = r0->field_f
    //     0x5dafe0: ldur            w2, [x0, #0xf]
    // 0x5dafe4: DecompressPointer r2
    //     0x5dafe4: add             x2, x2, HEAP, lsl #32
    // 0x5dafe8: cmp             w2, w1
    // 0x5dafec: b.eq            #0x5db074
    // 0x5daff0: cmp             w1, NULL
    // 0x5daff4: b.eq            #0x5db074
    // 0x5daff8: mov             x1, x0
    // 0x5daffc: r2 = "dogum_tarihi"
    //     0x5daffc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x5db000: ldr             x2, [x2, #0x790]
    // 0x5db004: r0 = _getValueOrData()
    //     0x5db004: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db008: ldur            x3, [fp, #-8]
    // 0x5db00c: LoadField: r1 = r3->field_f
    //     0x5db00c: ldur            w1, [x3, #0xf]
    // 0x5db010: DecompressPointer r1
    //     0x5db010: add             x1, x1, HEAP, lsl #32
    // 0x5db014: cmp             w1, w0
    // 0x5db018: b.ne            #0x5db024
    // 0x5db01c: r4 = Null
    //     0x5db01c: mov             x4, NULL
    // 0x5db020: b               #0x5db028
    // 0x5db024: mov             x4, x0
    // 0x5db028: mov             x0, x4
    // 0x5db02c: stur            x4, [fp, #-0x78]
    // 0x5db030: r2 = Null
    //     0x5db030: mov             x2, NULL
    // 0x5db034: r1 = Null
    //     0x5db034: mov             x1, NULL
    // 0x5db038: r4 = 60
    //     0x5db038: mov             x4, #0x3c
    // 0x5db03c: branchIfSmi(r0, 0x5db048)
    //     0x5db03c: tbz             w0, #0, #0x5db048
    // 0x5db040: r4 = LoadClassIdInstr(r0)
    //     0x5db040: ldur            x4, [x0, #-1]
    //     0x5db044: ubfx            x4, x4, #0xc, #0x14
    // 0x5db048: cmp             x4, #0xe96
    // 0x5db04c: b.eq            #0x5db064
    // 0x5db050: r8 = Timestamp
    //     0x5db050: add             x8, PP, #0x15, lsl #12  ; [pp+0x15798] Type: Timestamp
    //     0x5db054: ldr             x8, [x8, #0x798]
    // 0x5db058: r3 = Null
    //     0x5db058: add             x3, PP, #0x15, lsl #12  ; [pp+0x157a0] Null
    //     0x5db05c: ldr             x3, [x3, #0x7a0]
    // 0x5db060: r0 = DefaultTypeTest()
    //     0x5db060: bl              #0x925f98  ; DefaultTypeTestStub
    // 0x5db064: ldur            x1, [fp, #-0x78]
    // 0x5db068: r0 = toDate()
    //     0x5db068: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5db06c: mov             x3, x0
    // 0x5db070: b               #0x5db078
    // 0x5db074: r3 = Null
    //     0x5db074: mov             x3, NULL
    // 0x5db078: ldur            x0, [fp, #-8]
    // 0x5db07c: mov             x1, x0
    // 0x5db080: stur            x3, [fp, #-0x78]
    // 0x5db084: r2 = "created_at"
    //     0x5db084: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5db088: ldr             x2, [x2, #0xc00]
    // 0x5db08c: r0 = _getValueOrData()
    //     0x5db08c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db090: mov             x1, x0
    // 0x5db094: ldur            x0, [fp, #-8]
    // 0x5db098: LoadField: r2 = r0->field_f
    //     0x5db098: ldur            w2, [x0, #0xf]
    // 0x5db09c: DecompressPointer r2
    //     0x5db09c: add             x2, x2, HEAP, lsl #32
    // 0x5db0a0: cmp             w2, w1
    // 0x5db0a4: b.eq            #0x5db12c
    // 0x5db0a8: cmp             w1, NULL
    // 0x5db0ac: b.eq            #0x5db12c
    // 0x5db0b0: mov             x1, x0
    // 0x5db0b4: r2 = "created_at"
    //     0x5db0b4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5db0b8: ldr             x2, [x2, #0xc00]
    // 0x5db0bc: r0 = _getValueOrData()
    //     0x5db0bc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db0c0: ldur            x3, [fp, #-8]
    // 0x5db0c4: LoadField: r1 = r3->field_f
    //     0x5db0c4: ldur            w1, [x3, #0xf]
    // 0x5db0c8: DecompressPointer r1
    //     0x5db0c8: add             x1, x1, HEAP, lsl #32
    // 0x5db0cc: cmp             w1, w0
    // 0x5db0d0: b.ne            #0x5db0dc
    // 0x5db0d4: r4 = Null
    //     0x5db0d4: mov             x4, NULL
    // 0x5db0d8: b               #0x5db0e0
    // 0x5db0dc: mov             x4, x0
    // 0x5db0e0: mov             x0, x4
    // 0x5db0e4: stur            x4, [fp, #-0x80]
    // 0x5db0e8: r2 = Null
    //     0x5db0e8: mov             x2, NULL
    // 0x5db0ec: r1 = Null
    //     0x5db0ec: mov             x1, NULL
    // 0x5db0f0: r4 = 60
    //     0x5db0f0: mov             x4, #0x3c
    // 0x5db0f4: branchIfSmi(r0, 0x5db100)
    //     0x5db0f4: tbz             w0, #0, #0x5db100
    // 0x5db0f8: r4 = LoadClassIdInstr(r0)
    //     0x5db0f8: ldur            x4, [x0, #-1]
    //     0x5db0fc: ubfx            x4, x4, #0xc, #0x14
    // 0x5db100: cmp             x4, #0xe96
    // 0x5db104: b.eq            #0x5db11c
    // 0x5db108: r8 = Timestamp
    //     0x5db108: add             x8, PP, #0x15, lsl #12  ; [pp+0x15798] Type: Timestamp
    //     0x5db10c: ldr             x8, [x8, #0x798]
    // 0x5db110: r3 = Null
    //     0x5db110: add             x3, PP, #0x15, lsl #12  ; [pp+0x157b0] Null
    //     0x5db114: ldr             x3, [x3, #0x7b0]
    // 0x5db118: r0 = DefaultTypeTest()
    //     0x5db118: bl              #0x925f98  ; DefaultTypeTestStub
    // 0x5db11c: ldur            x1, [fp, #-0x80]
    // 0x5db120: r0 = toDate()
    //     0x5db120: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5db124: mov             x3, x0
    // 0x5db128: b               #0x5db130
    // 0x5db12c: r3 = Null
    //     0x5db12c: mov             x3, NULL
    // 0x5db130: ldur            x0, [fp, #-8]
    // 0x5db134: mov             x1, x0
    // 0x5db138: stur            x3, [fp, #-0x80]
    // 0x5db13c: r2 = "updated_at"
    //     0x5db13c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5db140: ldr             x2, [x2, #0x58]
    // 0x5db144: r0 = _getValueOrData()
    //     0x5db144: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db148: mov             x1, x0
    // 0x5db14c: ldur            x0, [fp, #-8]
    // 0x5db150: LoadField: r2 = r0->field_f
    //     0x5db150: ldur            w2, [x0, #0xf]
    // 0x5db154: DecompressPointer r2
    //     0x5db154: add             x2, x2, HEAP, lsl #32
    // 0x5db158: cmp             w2, w1
    // 0x5db15c: b.eq            #0x5db1e4
    // 0x5db160: cmp             w1, NULL
    // 0x5db164: b.eq            #0x5db1e4
    // 0x5db168: mov             x1, x0
    // 0x5db16c: r2 = "updated_at"
    //     0x5db16c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5db170: ldr             x2, [x2, #0x58]
    // 0x5db174: r0 = _getValueOrData()
    //     0x5db174: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db178: ldur            x3, [fp, #-8]
    // 0x5db17c: LoadField: r1 = r3->field_f
    //     0x5db17c: ldur            w1, [x3, #0xf]
    // 0x5db180: DecompressPointer r1
    //     0x5db180: add             x1, x1, HEAP, lsl #32
    // 0x5db184: cmp             w1, w0
    // 0x5db188: b.ne            #0x5db194
    // 0x5db18c: r4 = Null
    //     0x5db18c: mov             x4, NULL
    // 0x5db190: b               #0x5db198
    // 0x5db194: mov             x4, x0
    // 0x5db198: mov             x0, x4
    // 0x5db19c: stur            x4, [fp, #-0x88]
    // 0x5db1a0: r2 = Null
    //     0x5db1a0: mov             x2, NULL
    // 0x5db1a4: r1 = Null
    //     0x5db1a4: mov             x1, NULL
    // 0x5db1a8: r4 = 60
    //     0x5db1a8: mov             x4, #0x3c
    // 0x5db1ac: branchIfSmi(r0, 0x5db1b8)
    //     0x5db1ac: tbz             w0, #0, #0x5db1b8
    // 0x5db1b0: r4 = LoadClassIdInstr(r0)
    //     0x5db1b0: ldur            x4, [x0, #-1]
    //     0x5db1b4: ubfx            x4, x4, #0xc, #0x14
    // 0x5db1b8: cmp             x4, #0xe96
    // 0x5db1bc: b.eq            #0x5db1d4
    // 0x5db1c0: r8 = Timestamp
    //     0x5db1c0: add             x8, PP, #0x15, lsl #12  ; [pp+0x15798] Type: Timestamp
    //     0x5db1c4: ldr             x8, [x8, #0x798]
    // 0x5db1c8: r3 = Null
    //     0x5db1c8: add             x3, PP, #0x15, lsl #12  ; [pp+0x157c0] Null
    //     0x5db1cc: ldr             x3, [x3, #0x7c0]
    // 0x5db1d0: r0 = DefaultTypeTest()
    //     0x5db1d0: bl              #0x925f98  ; DefaultTypeTestStub
    // 0x5db1d4: ldur            x1, [fp, #-0x88]
    // 0x5db1d8: r0 = toDate()
    //     0x5db1d8: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5db1dc: mov             x3, x0
    // 0x5db1e0: b               #0x5db1e8
    // 0x5db1e4: r3 = Null
    //     0x5db1e4: mov             x3, NULL
    // 0x5db1e8: ldur            x0, [fp, #-8]
    // 0x5db1ec: mov             x1, x0
    // 0x5db1f0: stur            x3, [fp, #-0x88]
    // 0x5db1f4: r2 = "fcm_token"
    //     0x5db1f4: add             x2, PP, #0x15, lsl #12  ; [pp+0x157d0] "fcm_token"
    //     0x5db1f8: ldr             x2, [x2, #0x7d0]
    // 0x5db1fc: r0 = _getValueOrData()
    //     0x5db1fc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db200: ldur            x3, [fp, #-8]
    // 0x5db204: LoadField: r1 = r3->field_f
    //     0x5db204: ldur            w1, [x3, #0xf]
    // 0x5db208: DecompressPointer r1
    //     0x5db208: add             x1, x1, HEAP, lsl #32
    // 0x5db20c: cmp             w1, w0
    // 0x5db210: b.ne            #0x5db21c
    // 0x5db214: r4 = Null
    //     0x5db214: mov             x4, NULL
    // 0x5db218: b               #0x5db220
    // 0x5db21c: mov             x4, x0
    // 0x5db220: mov             x0, x4
    // 0x5db224: stur            x4, [fp, #-0x90]
    // 0x5db228: r2 = Null
    //     0x5db228: mov             x2, NULL
    // 0x5db22c: r1 = Null
    //     0x5db22c: mov             x1, NULL
    // 0x5db230: r4 = 60
    //     0x5db230: mov             x4, #0x3c
    // 0x5db234: branchIfSmi(r0, 0x5db240)
    //     0x5db234: tbz             w0, #0, #0x5db240
    // 0x5db238: r4 = LoadClassIdInstr(r0)
    //     0x5db238: ldur            x4, [x0, #-1]
    //     0x5db23c: ubfx            x4, x4, #0xc, #0x14
    // 0x5db240: sub             x4, x4, #0x5e
    // 0x5db244: cmp             x4, #1
    // 0x5db248: b.ls            #0x5db25c
    // 0x5db24c: r8 = String?
    //     0x5db24c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5db250: r3 = Null
    //     0x5db250: add             x3, PP, #0x15, lsl #12  ; [pp+0x157d8] Null
    //     0x5db254: ldr             x3, [x3, #0x7d8]
    // 0x5db258: r0 = String?()
    //     0x5db258: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5db25c: ldur            x1, [fp, #-8]
    // 0x5db260: r2 = "agency_id"
    //     0x5db260: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5db264: ldr             x2, [x2, #0x40]
    // 0x5db268: r0 = _getValueOrData()
    //     0x5db268: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5db26c: mov             x1, x0
    // 0x5db270: ldur            x0, [fp, #-8]
    // 0x5db274: LoadField: r2 = r0->field_f
    //     0x5db274: ldur            w2, [x0, #0xf]
    // 0x5db278: DecompressPointer r2
    //     0x5db278: add             x2, x2, HEAP, lsl #32
    // 0x5db27c: cmp             w2, w1
    // 0x5db280: b.ne            #0x5db28c
    // 0x5db284: r0 = Null
    //     0x5db284: mov             x0, NULL
    // 0x5db288: b               #0x5db290
    // 0x5db28c: mov             x0, x1
    // 0x5db290: ldur            x13, [fp, #-0x40]
    // 0x5db294: ldur            x12, [fp, #-0x48]
    // 0x5db298: ldur            x11, [fp, #-0x50]
    // 0x5db29c: ldur            x10, [fp, #-0x58]
    // 0x5db2a0: ldur            x9, [fp, #-0x60]
    // 0x5db2a4: ldur            x8, [fp, #-0x68]
    // 0x5db2a8: ldur            x6, [fp, #-0x78]
    // 0x5db2ac: ldur            x5, [fp, #-0x80]
    // 0x5db2b0: ldur            x4, [fp, #-0x88]
    // 0x5db2b4: ldur            x3, [fp, #-0x90]
    // 0x5db2b8: ldur            x7, [fp, #-0x70]
    // 0x5db2bc: ldur            x25, [fp, #-0x10]
    // 0x5db2c0: ldur            x24, [fp, #-0x18]
    // 0x5db2c4: ldur            x23, [fp, #-0x20]
    // 0x5db2c8: ldur            x20, [fp, #-0x28]
    // 0x5db2cc: ldur            x19, [fp, #-0x30]
    // 0x5db2d0: ldur            x14, [fp, #-0x38]
    // 0x5db2d4: stur            x0, [fp, #-8]
    // 0x5db2d8: r2 = Null
    //     0x5db2d8: mov             x2, NULL
    // 0x5db2dc: r1 = Null
    //     0x5db2dc: mov             x1, NULL
    // 0x5db2e0: r4 = 60
    //     0x5db2e0: mov             x4, #0x3c
    // 0x5db2e4: branchIfSmi(r0, 0x5db2f0)
    //     0x5db2e4: tbz             w0, #0, #0x5db2f0
    // 0x5db2e8: r4 = LoadClassIdInstr(r0)
    //     0x5db2e8: ldur            x4, [x0, #-1]
    //     0x5db2ec: ubfx            x4, x4, #0xc, #0x14
    // 0x5db2f0: sub             x4, x4, #0x5e
    // 0x5db2f4: cmp             x4, #1
    // 0x5db2f8: b.ls            #0x5db30c
    // 0x5db2fc: r8 = String?
    //     0x5db2fc: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5db300: r3 = Null
    //     0x5db300: add             x3, PP, #0x15, lsl #12  ; [pp+0x157e8] Null
    //     0x5db304: ldr             x3, [x3, #0x7e8]
    // 0x5db308: r0 = String?()
    //     0x5db308: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5db30c: r0 = UserModel()
    //     0x5db30c: bl              #0x5db72c  ; AllocateUserModelStub -> UserModel (size=0x50)
    // 0x5db310: ldur            x1, [fp, #-0x40]
    // 0x5db314: StoreField: r0->field_7 = r1
    //     0x5db314: stur            w1, [x0, #7]
    // 0x5db318: ldur            x1, [fp, #-0x48]
    // 0x5db31c: StoreField: r0->field_b = r1
    //     0x5db31c: stur            w1, [x0, #0xb]
    // 0x5db320: ldur            x1, [fp, #-0x50]
    // 0x5db324: StoreField: r0->field_f = r1
    //     0x5db324: stur            w1, [x0, #0xf]
    // 0x5db328: ldur            x1, [fp, #-0x58]
    // 0x5db32c: StoreField: r0->field_13 = r1
    //     0x5db32c: stur            w1, [x0, #0x13]
    // 0x5db330: ldur            x1, [fp, #-0x60]
    // 0x5db334: ArrayStore: r0[0] = r1  ; List_4
    //     0x5db334: stur            w1, [x0, #0x17]
    // 0x5db338: ldur            x1, [fp, #-0x68]
    // 0x5db33c: StoreField: r0->field_33 = r1
    //     0x5db33c: stur            w1, [x0, #0x33]
    // 0x5db340: ldur            x1, [fp, #-0x70]
    // 0x5db344: StoreField: r0->field_37 = r1
    //     0x5db344: stur            w1, [x0, #0x37]
    // 0x5db348: ldur            x1, [fp, #-0x78]
    // 0x5db34c: StoreField: r0->field_3b = r1
    //     0x5db34c: stur            w1, [x0, #0x3b]
    // 0x5db350: ldur            x1, [fp, #-0x10]
    // 0x5db354: StoreField: r0->field_1b = r1
    //     0x5db354: stur            w1, [x0, #0x1b]
    // 0x5db358: ldur            x1, [fp, #-0x18]
    // 0x5db35c: StoreField: r0->field_1f = r1
    //     0x5db35c: stur            w1, [x0, #0x1f]
    // 0x5db360: ldur            x1, [fp, #-0x20]
    // 0x5db364: StoreField: r0->field_23 = r1
    //     0x5db364: stur            w1, [x0, #0x23]
    // 0x5db368: ldur            x1, [fp, #-0x28]
    // 0x5db36c: StoreField: r0->field_27 = r1
    //     0x5db36c: stur            w1, [x0, #0x27]
    // 0x5db370: ldur            x1, [fp, #-0x30]
    // 0x5db374: StoreField: r0->field_2b = r1
    //     0x5db374: stur            w1, [x0, #0x2b]
    // 0x5db378: ldur            x1, [fp, #-0x38]
    // 0x5db37c: StoreField: r0->field_2f = r1
    //     0x5db37c: stur            w1, [x0, #0x2f]
    // 0x5db380: ldur            x1, [fp, #-0x80]
    // 0x5db384: StoreField: r0->field_3f = r1
    //     0x5db384: stur            w1, [x0, #0x3f]
    // 0x5db388: ldur            x1, [fp, #-0x88]
    // 0x5db38c: StoreField: r0->field_43 = r1
    //     0x5db38c: stur            w1, [x0, #0x43]
    // 0x5db390: ldur            x1, [fp, #-0x90]
    // 0x5db394: StoreField: r0->field_47 = r1
    //     0x5db394: stur            w1, [x0, #0x47]
    // 0x5db398: ldur            x1, [fp, #-8]
    // 0x5db39c: StoreField: r0->field_4b = r1
    //     0x5db39c: stur            w1, [x0, #0x4b]
    // 0x5db3a0: LeaveFrame
    //     0x5db3a0: mov             SP, fp
    //     0x5db3a4: ldp             fp, lr, [SP], #0x10
    // 0x5db3a8: ret
    //     0x5db3a8: ret             
    // 0x5db3ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5db3ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5db3b0: b               #0x5da644
  }
  Map<String, dynamic> toJson(UserModel) {
    // ** addr: 0x5db3cc, size: 0x48
    // 0x5db3cc: EnterFrame
    //     0x5db3cc: stp             fp, lr, [SP, #-0x10]!
    //     0x5db3d0: mov             fp, SP
    // 0x5db3d4: CheckStackOverflow
    //     0x5db3d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5db3d8: cmp             SP, x16
    //     0x5db3dc: b.ls            #0x5db3f4
    // 0x5db3e0: ldr             x1, [fp, #0x10]
    // 0x5db3e4: r0 = toJson()
    //     0x5db3e4: bl              #0x5db3fc  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::toJson
    // 0x5db3e8: LeaveFrame
    //     0x5db3e8: mov             SP, fp
    //     0x5db3ec: ldp             fp, lr, [SP], #0x10
    // 0x5db3f0: ret
    //     0x5db3f0: ret             
    // 0x5db3f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5db3f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5db3f8: b               #0x5db3e0
  }
  Map<String, dynamic> toJson(UserModel) {
    // ** addr: 0x5db3fc, size: 0x310
    // 0x5db3fc: EnterFrame
    //     0x5db3fc: stp             fp, lr, [SP, #-0x10]!
    //     0x5db400: mov             fp, SP
    // 0x5db404: AllocStack(0x20)
    //     0x5db404: sub             SP, SP, #0x20
    // 0x5db408: SetupParameters(UserModel this /* r1 => r0, fp-0x8 */)
    //     0x5db408: mov             x0, x1
    //     0x5db40c: stur            x1, [fp, #-8]
    // 0x5db410: CheckStackOverflow
    //     0x5db410: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5db414: cmp             SP, x16
    //     0x5db418: b.ls            #0x5db704
    // 0x5db41c: r1 = Null
    //     0x5db41c: mov             x1, NULL
    // 0x5db420: r2 = 72
    //     0x5db420: mov             x2, #0x48
    // 0x5db424: r0 = AllocateArray()
    //     0x5db424: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5db428: stur            x0, [fp, #-0x10]
    // 0x5db42c: r16 = "mekke_seferi_id"
    //     0x5db42c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x5db430: ldr             x16, [x16, #0x810]
    // 0x5db434: StoreField: r0->field_f = r16
    //     0x5db434: stur            w16, [x0, #0xf]
    // 0x5db438: ldur            x2, [fp, #-8]
    // 0x5db43c: LoadField: r1 = r2->field_1b
    //     0x5db43c: ldur            w1, [x2, #0x1b]
    // 0x5db440: DecompressPointer r1
    //     0x5db440: add             x1, x1, HEAP, lsl #32
    // 0x5db444: StoreField: r0->field_13 = r1
    //     0x5db444: stur            w1, [x0, #0x13]
    // 0x5db448: r16 = "medine_seferi_id"
    //     0x5db448: add             x16, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x5db44c: ldr             x16, [x16, #0x830]
    // 0x5db450: ArrayStore: r0[0] = r16  ; List_4
    //     0x5db450: stur            w16, [x0, #0x17]
    // 0x5db454: LoadField: r1 = r2->field_1f
    //     0x5db454: ldur            w1, [x2, #0x1f]
    // 0x5db458: DecompressPointer r1
    //     0x5db458: add             x1, x1, HEAP, lsl #32
    // 0x5db45c: StoreField: r0->field_1b = r1
    //     0x5db45c: stur            w1, [x0, #0x1b]
    // 0x5db460: r16 = "mekke_otel_id"
    //     0x5db460: add             x16, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x5db464: ldr             x16, [x16, #0x818]
    // 0x5db468: StoreField: r0->field_1f = r16
    //     0x5db468: stur            w16, [x0, #0x1f]
    // 0x5db46c: LoadField: r1 = r2->field_23
    //     0x5db46c: ldur            w1, [x2, #0x23]
    // 0x5db470: DecompressPointer r1
    //     0x5db470: add             x1, x1, HEAP, lsl #32
    // 0x5db474: StoreField: r0->field_23 = r1
    //     0x5db474: stur            w1, [x0, #0x23]
    // 0x5db478: r16 = "medine_otel_id"
    //     0x5db478: add             x16, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x5db47c: ldr             x16, [x16, #0x838]
    // 0x5db480: StoreField: r0->field_27 = r16
    //     0x5db480: stur            w16, [x0, #0x27]
    // 0x5db484: LoadField: r1 = r2->field_27
    //     0x5db484: ldur            w1, [x2, #0x27]
    // 0x5db488: DecompressPointer r1
    //     0x5db488: add             x1, x1, HEAP, lsl #32
    // 0x5db48c: StoreField: r0->field_2b = r1
    //     0x5db48c: stur            w1, [x0, #0x2b]
    // 0x5db490: r16 = "mekke_oda_id"
    //     0x5db490: add             x16, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x5db494: ldr             x16, [x16, #0x820]
    // 0x5db498: StoreField: r0->field_2f = r16
    //     0x5db498: stur            w16, [x0, #0x2f]
    // 0x5db49c: LoadField: r1 = r2->field_2b
    //     0x5db49c: ldur            w1, [x2, #0x2b]
    // 0x5db4a0: DecompressPointer r1
    //     0x5db4a0: add             x1, x1, HEAP, lsl #32
    // 0x5db4a4: StoreField: r0->field_33 = r1
    //     0x5db4a4: stur            w1, [x0, #0x33]
    // 0x5db4a8: r16 = "medine_oda_id"
    //     0x5db4a8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x5db4ac: ldr             x16, [x16, #0x840]
    // 0x5db4b0: StoreField: r0->field_37 = r16
    //     0x5db4b0: stur            w16, [x0, #0x37]
    // 0x5db4b4: LoadField: r1 = r2->field_2f
    //     0x5db4b4: ldur            w1, [x2, #0x2f]
    // 0x5db4b8: DecompressPointer r1
    //     0x5db4b8: add             x1, x1, HEAP, lsl #32
    // 0x5db4bc: StoreField: r0->field_3b = r1
    //     0x5db4bc: stur            w1, [x0, #0x3b]
    // 0x5db4c0: r16 = "user_token"
    //     0x5db4c0: ldr             x16, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5db4c4: StoreField: r0->field_3f = r16
    //     0x5db4c4: stur            w16, [x0, #0x3f]
    // 0x5db4c8: LoadField: r1 = r2->field_7
    //     0x5db4c8: ldur            w1, [x2, #7]
    // 0x5db4cc: DecompressPointer r1
    //     0x5db4cc: add             x1, x1, HEAP, lsl #32
    // 0x5db4d0: StoreField: r0->field_43 = r1
    //     0x5db4d0: stur            w1, [x0, #0x43]
    // 0x5db4d4: r16 = "user_name"
    //     0x5db4d4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x5db4d8: ldr             x16, [x16, #0xb30]
    // 0x5db4dc: StoreField: r0->field_47 = r16
    //     0x5db4dc: stur            w16, [x0, #0x47]
    // 0x5db4e0: LoadField: r1 = r2->field_b
    //     0x5db4e0: ldur            w1, [x2, #0xb]
    // 0x5db4e4: DecompressPointer r1
    //     0x5db4e4: add             x1, x1, HEAP, lsl #32
    // 0x5db4e8: StoreField: r0->field_4b = r1
    //     0x5db4e8: stur            w1, [x0, #0x4b]
    // 0x5db4ec: r16 = "user_type"
    //     0x5db4ec: add             x16, PP, #0x15, lsl #12  ; [pp+0x15718] "user_type"
    //     0x5db4f0: ldr             x16, [x16, #0x718]
    // 0x5db4f4: StoreField: r0->field_4f = r16
    //     0x5db4f4: stur            w16, [x0, #0x4f]
    // 0x5db4f8: LoadField: r1 = r2->field_f
    //     0x5db4f8: ldur            w1, [x2, #0xf]
    // 0x5db4fc: DecompressPointer r1
    //     0x5db4fc: add             x1, x1, HEAP, lsl #32
    // 0x5db500: StoreField: r0->field_53 = r1
    //     0x5db500: stur            w1, [x0, #0x53]
    // 0x5db504: r16 = "user_tel"
    //     0x5db504: add             x16, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x5db508: ldr             x16, [x16, #0x730]
    // 0x5db50c: StoreField: r0->field_57 = r16
    //     0x5db50c: stur            w16, [x0, #0x57]
    // 0x5db510: LoadField: r1 = r2->field_13
    //     0x5db510: ldur            w1, [x2, #0x13]
    // 0x5db514: DecompressPointer r1
    //     0x5db514: add             x1, x1, HEAP, lsl #32
    // 0x5db518: StoreField: r0->field_5b = r1
    //     0x5db518: stur            w1, [x0, #0x5b]
    // 0x5db51c: r16 = "user_tc"
    //     0x5db51c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x5db520: ldr             x16, [x16, #0x748]
    // 0x5db524: StoreField: r0->field_5f = r16
    //     0x5db524: stur            w16, [x0, #0x5f]
    // 0x5db528: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x5db528: ldur            w1, [x2, #0x17]
    // 0x5db52c: DecompressPointer r1
    //     0x5db52c: add             x1, x1, HEAP, lsl #32
    // 0x5db530: StoreField: r0->field_63 = r1
    //     0x5db530: stur            w1, [x0, #0x63]
    // 0x5db534: r16 = "user_location"
    //     0x5db534: add             x16, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x5db538: ldr             x16, [x16, #0x760]
    // 0x5db53c: StoreField: r0->field_67 = r16
    //     0x5db53c: stur            w16, [x0, #0x67]
    // 0x5db540: LoadField: r1 = r2->field_33
    //     0x5db540: ldur            w1, [x2, #0x33]
    // 0x5db544: DecompressPointer r1
    //     0x5db544: add             x1, x1, HEAP, lsl #32
    // 0x5db548: StoreField: r0->field_6b = r1
    //     0x5db548: stur            w1, [x0, #0x6b]
    // 0x5db54c: r16 = "cinsiyet"
    //     0x5db54c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x5db550: ldr             x16, [x16, #0x778]
    // 0x5db554: StoreField: r0->field_6f = r16
    //     0x5db554: stur            w16, [x0, #0x6f]
    // 0x5db558: LoadField: r1 = r2->field_37
    //     0x5db558: ldur            w1, [x2, #0x37]
    // 0x5db55c: DecompressPointer r1
    //     0x5db55c: add             x1, x1, HEAP, lsl #32
    // 0x5db560: StoreField: r0->field_73 = r1
    //     0x5db560: stur            w1, [x0, #0x73]
    // 0x5db564: r16 = "dogum_tarihi"
    //     0x5db564: add             x16, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x5db568: ldr             x16, [x16, #0x790]
    // 0x5db56c: StoreField: r0->field_77 = r16
    //     0x5db56c: stur            w16, [x0, #0x77]
    // 0x5db570: LoadField: r1 = r2->field_3b
    //     0x5db570: ldur            w1, [x2, #0x3b]
    // 0x5db574: DecompressPointer r1
    //     0x5db574: add             x1, x1, HEAP, lsl #32
    // 0x5db578: cmp             w1, NULL
    // 0x5db57c: b.ne            #0x5db590
    // 0x5db580: mov             x3, x2
    // 0x5db584: mov             x2, x0
    // 0x5db588: r0 = Null
    //     0x5db588: mov             x0, NULL
    // 0x5db58c: b               #0x5db59c
    // 0x5db590: r0 = toIso8601String()
    //     0x5db590: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5db594: ldur            x3, [fp, #-8]
    // 0x5db598: ldur            x2, [fp, #-0x10]
    // 0x5db59c: mov             x1, x2
    // 0x5db5a0: ArrayStore: r1[27] = r0  ; List_4
    //     0x5db5a0: add             x25, x1, #0x7b
    //     0x5db5a4: str             w0, [x25]
    //     0x5db5a8: tbz             w0, #0, #0x5db5c4
    //     0x5db5ac: ldurb           w16, [x1, #-1]
    //     0x5db5b0: ldurb           w17, [x0, #-1]
    //     0x5db5b4: and             x16, x17, x16, lsr #2
    //     0x5db5b8: tst             x16, HEAP, lsr #32
    //     0x5db5bc: b.eq            #0x5db5c4
    //     0x5db5c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5db5c4: r16 = "created_at"
    //     0x5db5c4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5db5c8: ldr             x16, [x16, #0xc00]
    // 0x5db5cc: StoreField: r2->field_7f = r16
    //     0x5db5cc: stur            w16, [x2, #0x7f]
    // 0x5db5d0: LoadField: r1 = r3->field_3f
    //     0x5db5d0: ldur            w1, [x3, #0x3f]
    // 0x5db5d4: DecompressPointer r1
    //     0x5db5d4: add             x1, x1, HEAP, lsl #32
    // 0x5db5d8: cmp             w1, NULL
    // 0x5db5dc: b.ne            #0x5db5e8
    // 0x5db5e0: r0 = Null
    //     0x5db5e0: mov             x0, NULL
    // 0x5db5e4: b               #0x5db5f4
    // 0x5db5e8: r0 = toIso8601String()
    //     0x5db5e8: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5db5ec: ldur            x3, [fp, #-8]
    // 0x5db5f0: ldur            x2, [fp, #-0x10]
    // 0x5db5f4: mov             x1, x2
    // 0x5db5f8: ArrayStore: r1[29] = r0  ; List_4
    //     0x5db5f8: add             x25, x1, #0x83
    //     0x5db5fc: str             w0, [x25]
    //     0x5db600: tbz             w0, #0, #0x5db61c
    //     0x5db604: ldurb           w16, [x1, #-1]
    //     0x5db608: ldurb           w17, [x0, #-1]
    //     0x5db60c: and             x16, x17, x16, lsr #2
    //     0x5db610: tst             x16, HEAP, lsr #32
    //     0x5db614: b.eq            #0x5db61c
    //     0x5db618: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5db61c: r16 = "updated_at"
    //     0x5db61c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5db620: ldr             x16, [x16, #0x58]
    // 0x5db624: StoreField: r2->field_87 = r16
    //     0x5db624: stur            w16, [x2, #0x87]
    // 0x5db628: LoadField: r1 = r3->field_43
    //     0x5db628: ldur            w1, [x3, #0x43]
    // 0x5db62c: DecompressPointer r1
    //     0x5db62c: add             x1, x1, HEAP, lsl #32
    // 0x5db630: cmp             w1, NULL
    // 0x5db634: b.ne            #0x5db640
    // 0x5db638: r0 = Null
    //     0x5db638: mov             x0, NULL
    // 0x5db63c: b               #0x5db64c
    // 0x5db640: r0 = toIso8601String()
    //     0x5db640: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5db644: ldur            x3, [fp, #-8]
    // 0x5db648: ldur            x2, [fp, #-0x10]
    // 0x5db64c: mov             x1, x2
    // 0x5db650: ArrayStore: r1[31] = r0  ; List_4
    //     0x5db650: add             x25, x1, #0x8b
    //     0x5db654: str             w0, [x25]
    //     0x5db658: tbz             w0, #0, #0x5db674
    //     0x5db65c: ldurb           w16, [x1, #-1]
    //     0x5db660: ldurb           w17, [x0, #-1]
    //     0x5db664: and             x16, x17, x16, lsr #2
    //     0x5db668: tst             x16, HEAP, lsr #32
    //     0x5db66c: b.eq            #0x5db674
    //     0x5db670: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5db674: r16 = "fcm_token"
    //     0x5db674: add             x16, PP, #0x15, lsl #12  ; [pp+0x157d0] "fcm_token"
    //     0x5db678: ldr             x16, [x16, #0x7d0]
    // 0x5db67c: StoreField: r2->field_8f = r16
    //     0x5db67c: stur            w16, [x2, #0x8f]
    // 0x5db680: LoadField: r0 = r3->field_47
    //     0x5db680: ldur            w0, [x3, #0x47]
    // 0x5db684: DecompressPointer r0
    //     0x5db684: add             x0, x0, HEAP, lsl #32
    // 0x5db688: mov             x1, x2
    // 0x5db68c: ArrayStore: r1[33] = r0  ; List_4
    //     0x5db68c: add             x25, x1, #0x93
    //     0x5db690: str             w0, [x25]
    //     0x5db694: tbz             w0, #0, #0x5db6b0
    //     0x5db698: ldurb           w16, [x1, #-1]
    //     0x5db69c: ldurb           w17, [x0, #-1]
    //     0x5db6a0: and             x16, x17, x16, lsr #2
    //     0x5db6a4: tst             x16, HEAP, lsr #32
    //     0x5db6a8: b.eq            #0x5db6b0
    //     0x5db6ac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5db6b0: r16 = "agency_id"
    //     0x5db6b0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5db6b4: ldr             x16, [x16, #0x40]
    // 0x5db6b8: StoreField: r2->field_97 = r16
    //     0x5db6b8: stur            w16, [x2, #0x97]
    // 0x5db6bc: LoadField: r0 = r3->field_4b
    //     0x5db6bc: ldur            w0, [x3, #0x4b]
    // 0x5db6c0: DecompressPointer r0
    //     0x5db6c0: add             x0, x0, HEAP, lsl #32
    // 0x5db6c4: mov             x1, x2
    // 0x5db6c8: ArrayStore: r1[35] = r0  ; List_4
    //     0x5db6c8: add             x25, x1, #0x9b
    //     0x5db6cc: str             w0, [x25]
    //     0x5db6d0: tbz             w0, #0, #0x5db6ec
    //     0x5db6d4: ldurb           w16, [x1, #-1]
    //     0x5db6d8: ldurb           w17, [x0, #-1]
    //     0x5db6dc: and             x16, x17, x16, lsr #2
    //     0x5db6e0: tst             x16, HEAP, lsr #32
    //     0x5db6e4: b.eq            #0x5db6ec
    //     0x5db6e8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5db6ec: r16 = <String, dynamic>
    //     0x5db6ec: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5db6f0: stp             x2, x16, [SP]
    // 0x5db6f4: r0 = Map._fromLiteral()
    //     0x5db6f4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5db6f8: LeaveFrame
    //     0x5db6f8: mov             SP, fp
    //     0x5db6fc: ldp             fp, lr, [SP], #0x10
    // 0x5db700: ret
    //     0x5db700: ret             
    // 0x5db704: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5db704: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5db708: b               #0x5db41c
  }
  factory _ UserModel.fromJson(/* No info */) {
    // ** addr: 0x5f37c0, size: 0xd5c
    // 0x5f37c0: EnterFrame
    //     0x5f37c0: stp             fp, lr, [SP, #-0x10]!
    //     0x5f37c4: mov             fp, SP
    // 0x5f37c8: AllocStack(0x98)
    //     0x5f37c8: sub             SP, SP, #0x98
    // 0x5f37cc: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5f37cc: mov             x0, x2
    //     0x5f37d0: stur            x2, [fp, #-8]
    // 0x5f37d4: CheckStackOverflow
    //     0x5f37d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f37d8: cmp             SP, x16
    //     0x5f37dc: b.ls            #0x5f4514
    // 0x5f37e0: mov             x1, x0
    // 0x5f37e4: r2 = "mekke_seferi_id"
    //     0x5f37e4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x5f37e8: ldr             x2, [x2, #0x810]
    // 0x5f37ec: r0 = _getValueOrData()
    //     0x5f37ec: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f37f0: ldur            x1, [fp, #-8]
    // 0x5f37f4: LoadField: r2 = r1->field_f
    //     0x5f37f4: ldur            w2, [x1, #0xf]
    // 0x5f37f8: DecompressPointer r2
    //     0x5f37f8: add             x2, x2, HEAP, lsl #32
    // 0x5f37fc: cmp             w2, w0
    // 0x5f3800: b.ne            #0x5f3808
    // 0x5f3804: r0 = Null
    //     0x5f3804: mov             x0, NULL
    // 0x5f3808: stur            x0, [fp, #-0x10]
    // 0x5f380c: cmp             w0, NULL
    // 0x5f3810: b.ne            #0x5f3820
    // 0x5f3814: mov             x0, x1
    // 0x5f3818: r3 = Null
    //     0x5f3818: mov             x3, NULL
    // 0x5f381c: b               #0x5f38e0
    // 0x5f3820: r2 = 60
    //     0x5f3820: mov             x2, #0x3c
    // 0x5f3824: branchIfSmi(r0, 0x5f3830)
    //     0x5f3824: tbz             w0, #0, #0x5f3830
    // 0x5f3828: r2 = LoadClassIdInstr(r0)
    //     0x5f3828: ldur            x2, [x0, #-1]
    //     0x5f382c: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3830: sub             x16, x2, #0x3c
    // 0x5f3834: cmp             x16, #1
    // 0x5f3838: b.hi            #0x5f3880
    // 0x5f383c: cbnz            w0, #0x5f3848
    // 0x5f3840: r0 = Null
    //     0x5f3840: mov             x0, NULL
    // 0x5f3844: b               #0x5f3874
    // 0x5f3848: r2 = 60
    //     0x5f3848: mov             x2, #0x3c
    // 0x5f384c: branchIfSmi(r0, 0x5f3858)
    //     0x5f384c: tbz             w0, #0, #0x5f3858
    // 0x5f3850: r2 = LoadClassIdInstr(r0)
    //     0x5f3850: ldur            x2, [x0, #-1]
    //     0x5f3854: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3858: str             x0, [SP]
    // 0x5f385c: mov             x0, x2
    // 0x5f3860: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3860: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3864: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3864: mov             x17, #0x21f6
    //     0x5f3868: add             lr, x0, x17
    //     0x5f386c: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3870: blr             lr
    // 0x5f3874: mov             x3, x0
    // 0x5f3878: ldur            x0, [fp, #-8]
    // 0x5f387c: b               #0x5f38e0
    // 0x5f3880: sub             x16, x2, #0x5e
    // 0x5f3884: cmp             x16, #1
    // 0x5f3888: b.hi            #0x5f38a8
    // 0x5f388c: mov             x1, x0
    // 0x5f3890: r0 = trim()
    //     0x5f3890: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5f3894: LoadField: r1 = r0->field_7
    //     0x5f3894: ldur            w1, [x0, #7]
    // 0x5f3898: cbnz            w1, #0x5f38a8
    // 0x5f389c: ldur            x0, [fp, #-8]
    // 0x5f38a0: r3 = Null
    //     0x5f38a0: mov             x3, NULL
    // 0x5f38a4: b               #0x5f38e0
    // 0x5f38a8: ldur            x0, [fp, #-0x10]
    // 0x5f38ac: r1 = 60
    //     0x5f38ac: mov             x1, #0x3c
    // 0x5f38b0: branchIfSmi(r0, 0x5f38bc)
    //     0x5f38b0: tbz             w0, #0, #0x5f38bc
    // 0x5f38b4: r1 = LoadClassIdInstr(r0)
    //     0x5f38b4: ldur            x1, [x0, #-1]
    //     0x5f38b8: ubfx            x1, x1, #0xc, #0x14
    // 0x5f38bc: str             x0, [SP]
    // 0x5f38c0: mov             x0, x1
    // 0x5f38c4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f38c4: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f38c8: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f38c8: mov             x17, #0x21f6
    //     0x5f38cc: add             lr, x0, x17
    //     0x5f38d0: ldr             lr, [x21, lr, lsl #3]
    //     0x5f38d4: blr             lr
    // 0x5f38d8: mov             x3, x0
    // 0x5f38dc: ldur            x0, [fp, #-8]
    // 0x5f38e0: mov             x1, x0
    // 0x5f38e4: stur            x3, [fp, #-0x10]
    // 0x5f38e8: r2 = "medine_seferi_id"
    //     0x5f38e8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x5f38ec: ldr             x2, [x2, #0x830]
    // 0x5f38f0: r0 = _getValueOrData()
    //     0x5f38f0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f38f4: ldur            x1, [fp, #-8]
    // 0x5f38f8: LoadField: r2 = r1->field_f
    //     0x5f38f8: ldur            w2, [x1, #0xf]
    // 0x5f38fc: DecompressPointer r2
    //     0x5f38fc: add             x2, x2, HEAP, lsl #32
    // 0x5f3900: cmp             w2, w0
    // 0x5f3904: b.ne            #0x5f390c
    // 0x5f3908: r0 = Null
    //     0x5f3908: mov             x0, NULL
    // 0x5f390c: stur            x0, [fp, #-0x18]
    // 0x5f3910: cmp             w0, NULL
    // 0x5f3914: b.ne            #0x5f3924
    // 0x5f3918: mov             x0, x1
    // 0x5f391c: r3 = Null
    //     0x5f391c: mov             x3, NULL
    // 0x5f3920: b               #0x5f39e4
    // 0x5f3924: r2 = 60
    //     0x5f3924: mov             x2, #0x3c
    // 0x5f3928: branchIfSmi(r0, 0x5f3934)
    //     0x5f3928: tbz             w0, #0, #0x5f3934
    // 0x5f392c: r2 = LoadClassIdInstr(r0)
    //     0x5f392c: ldur            x2, [x0, #-1]
    //     0x5f3930: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3934: sub             x16, x2, #0x3c
    // 0x5f3938: cmp             x16, #1
    // 0x5f393c: b.hi            #0x5f3984
    // 0x5f3940: cbnz            w0, #0x5f394c
    // 0x5f3944: r0 = Null
    //     0x5f3944: mov             x0, NULL
    // 0x5f3948: b               #0x5f3978
    // 0x5f394c: r2 = 60
    //     0x5f394c: mov             x2, #0x3c
    // 0x5f3950: branchIfSmi(r0, 0x5f395c)
    //     0x5f3950: tbz             w0, #0, #0x5f395c
    // 0x5f3954: r2 = LoadClassIdInstr(r0)
    //     0x5f3954: ldur            x2, [x0, #-1]
    //     0x5f3958: ubfx            x2, x2, #0xc, #0x14
    // 0x5f395c: str             x0, [SP]
    // 0x5f3960: mov             x0, x2
    // 0x5f3964: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3964: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3968: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3968: mov             x17, #0x21f6
    //     0x5f396c: add             lr, x0, x17
    //     0x5f3970: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3974: blr             lr
    // 0x5f3978: mov             x3, x0
    // 0x5f397c: ldur            x0, [fp, #-8]
    // 0x5f3980: b               #0x5f39e4
    // 0x5f3984: sub             x16, x2, #0x5e
    // 0x5f3988: cmp             x16, #1
    // 0x5f398c: b.hi            #0x5f39ac
    // 0x5f3990: mov             x1, x0
    // 0x5f3994: r0 = trim()
    //     0x5f3994: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5f3998: LoadField: r1 = r0->field_7
    //     0x5f3998: ldur            w1, [x0, #7]
    // 0x5f399c: cbnz            w1, #0x5f39ac
    // 0x5f39a0: ldur            x0, [fp, #-8]
    // 0x5f39a4: r3 = Null
    //     0x5f39a4: mov             x3, NULL
    // 0x5f39a8: b               #0x5f39e4
    // 0x5f39ac: ldur            x0, [fp, #-0x18]
    // 0x5f39b0: r1 = 60
    //     0x5f39b0: mov             x1, #0x3c
    // 0x5f39b4: branchIfSmi(r0, 0x5f39c0)
    //     0x5f39b4: tbz             w0, #0, #0x5f39c0
    // 0x5f39b8: r1 = LoadClassIdInstr(r0)
    //     0x5f39b8: ldur            x1, [x0, #-1]
    //     0x5f39bc: ubfx            x1, x1, #0xc, #0x14
    // 0x5f39c0: str             x0, [SP]
    // 0x5f39c4: mov             x0, x1
    // 0x5f39c8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f39c8: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f39cc: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f39cc: mov             x17, #0x21f6
    //     0x5f39d0: add             lr, x0, x17
    //     0x5f39d4: ldr             lr, [x21, lr, lsl #3]
    //     0x5f39d8: blr             lr
    // 0x5f39dc: mov             x3, x0
    // 0x5f39e0: ldur            x0, [fp, #-8]
    // 0x5f39e4: mov             x1, x0
    // 0x5f39e8: stur            x3, [fp, #-0x18]
    // 0x5f39ec: r2 = "mekke_otel_id"
    //     0x5f39ec: add             x2, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x5f39f0: ldr             x2, [x2, #0x818]
    // 0x5f39f4: r0 = _getValueOrData()
    //     0x5f39f4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f39f8: ldur            x1, [fp, #-8]
    // 0x5f39fc: LoadField: r2 = r1->field_f
    //     0x5f39fc: ldur            w2, [x1, #0xf]
    // 0x5f3a00: DecompressPointer r2
    //     0x5f3a00: add             x2, x2, HEAP, lsl #32
    // 0x5f3a04: cmp             w2, w0
    // 0x5f3a08: b.ne            #0x5f3a10
    // 0x5f3a0c: r0 = Null
    //     0x5f3a0c: mov             x0, NULL
    // 0x5f3a10: stur            x0, [fp, #-0x20]
    // 0x5f3a14: cmp             w0, NULL
    // 0x5f3a18: b.ne            #0x5f3a28
    // 0x5f3a1c: mov             x0, x1
    // 0x5f3a20: r3 = Null
    //     0x5f3a20: mov             x3, NULL
    // 0x5f3a24: b               #0x5f3ae8
    // 0x5f3a28: r2 = 60
    //     0x5f3a28: mov             x2, #0x3c
    // 0x5f3a2c: branchIfSmi(r0, 0x5f3a38)
    //     0x5f3a2c: tbz             w0, #0, #0x5f3a38
    // 0x5f3a30: r2 = LoadClassIdInstr(r0)
    //     0x5f3a30: ldur            x2, [x0, #-1]
    //     0x5f3a34: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3a38: sub             x16, x2, #0x3c
    // 0x5f3a3c: cmp             x16, #1
    // 0x5f3a40: b.hi            #0x5f3a88
    // 0x5f3a44: cbnz            w0, #0x5f3a50
    // 0x5f3a48: r0 = Null
    //     0x5f3a48: mov             x0, NULL
    // 0x5f3a4c: b               #0x5f3a7c
    // 0x5f3a50: r2 = 60
    //     0x5f3a50: mov             x2, #0x3c
    // 0x5f3a54: branchIfSmi(r0, 0x5f3a60)
    //     0x5f3a54: tbz             w0, #0, #0x5f3a60
    // 0x5f3a58: r2 = LoadClassIdInstr(r0)
    //     0x5f3a58: ldur            x2, [x0, #-1]
    //     0x5f3a5c: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3a60: str             x0, [SP]
    // 0x5f3a64: mov             x0, x2
    // 0x5f3a68: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3a68: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3a6c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3a6c: mov             x17, #0x21f6
    //     0x5f3a70: add             lr, x0, x17
    //     0x5f3a74: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3a78: blr             lr
    // 0x5f3a7c: mov             x3, x0
    // 0x5f3a80: ldur            x0, [fp, #-8]
    // 0x5f3a84: b               #0x5f3ae8
    // 0x5f3a88: sub             x16, x2, #0x5e
    // 0x5f3a8c: cmp             x16, #1
    // 0x5f3a90: b.hi            #0x5f3ab0
    // 0x5f3a94: mov             x1, x0
    // 0x5f3a98: r0 = trim()
    //     0x5f3a98: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5f3a9c: LoadField: r1 = r0->field_7
    //     0x5f3a9c: ldur            w1, [x0, #7]
    // 0x5f3aa0: cbnz            w1, #0x5f3ab0
    // 0x5f3aa4: ldur            x0, [fp, #-8]
    // 0x5f3aa8: r3 = Null
    //     0x5f3aa8: mov             x3, NULL
    // 0x5f3aac: b               #0x5f3ae8
    // 0x5f3ab0: ldur            x0, [fp, #-0x20]
    // 0x5f3ab4: r1 = 60
    //     0x5f3ab4: mov             x1, #0x3c
    // 0x5f3ab8: branchIfSmi(r0, 0x5f3ac4)
    //     0x5f3ab8: tbz             w0, #0, #0x5f3ac4
    // 0x5f3abc: r1 = LoadClassIdInstr(r0)
    //     0x5f3abc: ldur            x1, [x0, #-1]
    //     0x5f3ac0: ubfx            x1, x1, #0xc, #0x14
    // 0x5f3ac4: str             x0, [SP]
    // 0x5f3ac8: mov             x0, x1
    // 0x5f3acc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3acc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3ad0: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3ad0: mov             x17, #0x21f6
    //     0x5f3ad4: add             lr, x0, x17
    //     0x5f3ad8: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3adc: blr             lr
    // 0x5f3ae0: mov             x3, x0
    // 0x5f3ae4: ldur            x0, [fp, #-8]
    // 0x5f3ae8: mov             x1, x0
    // 0x5f3aec: stur            x3, [fp, #-0x20]
    // 0x5f3af0: r2 = "medine_otel_id"
    //     0x5f3af0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x5f3af4: ldr             x2, [x2, #0x838]
    // 0x5f3af8: r0 = _getValueOrData()
    //     0x5f3af8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3afc: ldur            x1, [fp, #-8]
    // 0x5f3b00: LoadField: r2 = r1->field_f
    //     0x5f3b00: ldur            w2, [x1, #0xf]
    // 0x5f3b04: DecompressPointer r2
    //     0x5f3b04: add             x2, x2, HEAP, lsl #32
    // 0x5f3b08: cmp             w2, w0
    // 0x5f3b0c: b.ne            #0x5f3b14
    // 0x5f3b10: r0 = Null
    //     0x5f3b10: mov             x0, NULL
    // 0x5f3b14: stur            x0, [fp, #-0x28]
    // 0x5f3b18: cmp             w0, NULL
    // 0x5f3b1c: b.ne            #0x5f3b2c
    // 0x5f3b20: mov             x0, x1
    // 0x5f3b24: r3 = Null
    //     0x5f3b24: mov             x3, NULL
    // 0x5f3b28: b               #0x5f3bec
    // 0x5f3b2c: r2 = 60
    //     0x5f3b2c: mov             x2, #0x3c
    // 0x5f3b30: branchIfSmi(r0, 0x5f3b3c)
    //     0x5f3b30: tbz             w0, #0, #0x5f3b3c
    // 0x5f3b34: r2 = LoadClassIdInstr(r0)
    //     0x5f3b34: ldur            x2, [x0, #-1]
    //     0x5f3b38: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3b3c: sub             x16, x2, #0x3c
    // 0x5f3b40: cmp             x16, #1
    // 0x5f3b44: b.hi            #0x5f3b8c
    // 0x5f3b48: cbnz            w0, #0x5f3b54
    // 0x5f3b4c: r0 = Null
    //     0x5f3b4c: mov             x0, NULL
    // 0x5f3b50: b               #0x5f3b80
    // 0x5f3b54: r2 = 60
    //     0x5f3b54: mov             x2, #0x3c
    // 0x5f3b58: branchIfSmi(r0, 0x5f3b64)
    //     0x5f3b58: tbz             w0, #0, #0x5f3b64
    // 0x5f3b5c: r2 = LoadClassIdInstr(r0)
    //     0x5f3b5c: ldur            x2, [x0, #-1]
    //     0x5f3b60: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3b64: str             x0, [SP]
    // 0x5f3b68: mov             x0, x2
    // 0x5f3b6c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3b6c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3b70: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3b70: mov             x17, #0x21f6
    //     0x5f3b74: add             lr, x0, x17
    //     0x5f3b78: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3b7c: blr             lr
    // 0x5f3b80: mov             x3, x0
    // 0x5f3b84: ldur            x0, [fp, #-8]
    // 0x5f3b88: b               #0x5f3bec
    // 0x5f3b8c: sub             x16, x2, #0x5e
    // 0x5f3b90: cmp             x16, #1
    // 0x5f3b94: b.hi            #0x5f3bb4
    // 0x5f3b98: mov             x1, x0
    // 0x5f3b9c: r0 = trim()
    //     0x5f3b9c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5f3ba0: LoadField: r1 = r0->field_7
    //     0x5f3ba0: ldur            w1, [x0, #7]
    // 0x5f3ba4: cbnz            w1, #0x5f3bb4
    // 0x5f3ba8: ldur            x0, [fp, #-8]
    // 0x5f3bac: r3 = Null
    //     0x5f3bac: mov             x3, NULL
    // 0x5f3bb0: b               #0x5f3bec
    // 0x5f3bb4: ldur            x0, [fp, #-0x28]
    // 0x5f3bb8: r1 = 60
    //     0x5f3bb8: mov             x1, #0x3c
    // 0x5f3bbc: branchIfSmi(r0, 0x5f3bc8)
    //     0x5f3bbc: tbz             w0, #0, #0x5f3bc8
    // 0x5f3bc0: r1 = LoadClassIdInstr(r0)
    //     0x5f3bc0: ldur            x1, [x0, #-1]
    //     0x5f3bc4: ubfx            x1, x1, #0xc, #0x14
    // 0x5f3bc8: str             x0, [SP]
    // 0x5f3bcc: mov             x0, x1
    // 0x5f3bd0: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3bd0: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3bd4: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3bd4: mov             x17, #0x21f6
    //     0x5f3bd8: add             lr, x0, x17
    //     0x5f3bdc: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3be0: blr             lr
    // 0x5f3be4: mov             x3, x0
    // 0x5f3be8: ldur            x0, [fp, #-8]
    // 0x5f3bec: mov             x1, x0
    // 0x5f3bf0: stur            x3, [fp, #-0x28]
    // 0x5f3bf4: r2 = "mekke_oda_id"
    //     0x5f3bf4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x5f3bf8: ldr             x2, [x2, #0x820]
    // 0x5f3bfc: r0 = _getValueOrData()
    //     0x5f3bfc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3c00: ldur            x1, [fp, #-8]
    // 0x5f3c04: LoadField: r2 = r1->field_f
    //     0x5f3c04: ldur            w2, [x1, #0xf]
    // 0x5f3c08: DecompressPointer r2
    //     0x5f3c08: add             x2, x2, HEAP, lsl #32
    // 0x5f3c0c: cmp             w2, w0
    // 0x5f3c10: b.ne            #0x5f3c18
    // 0x5f3c14: r0 = Null
    //     0x5f3c14: mov             x0, NULL
    // 0x5f3c18: stur            x0, [fp, #-0x30]
    // 0x5f3c1c: cmp             w0, NULL
    // 0x5f3c20: b.ne            #0x5f3c30
    // 0x5f3c24: mov             x0, x1
    // 0x5f3c28: r3 = Null
    //     0x5f3c28: mov             x3, NULL
    // 0x5f3c2c: b               #0x5f3cf0
    // 0x5f3c30: r2 = 60
    //     0x5f3c30: mov             x2, #0x3c
    // 0x5f3c34: branchIfSmi(r0, 0x5f3c40)
    //     0x5f3c34: tbz             w0, #0, #0x5f3c40
    // 0x5f3c38: r2 = LoadClassIdInstr(r0)
    //     0x5f3c38: ldur            x2, [x0, #-1]
    //     0x5f3c3c: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3c40: sub             x16, x2, #0x3c
    // 0x5f3c44: cmp             x16, #1
    // 0x5f3c48: b.hi            #0x5f3c90
    // 0x5f3c4c: cbnz            w0, #0x5f3c58
    // 0x5f3c50: r0 = Null
    //     0x5f3c50: mov             x0, NULL
    // 0x5f3c54: b               #0x5f3c84
    // 0x5f3c58: r2 = 60
    //     0x5f3c58: mov             x2, #0x3c
    // 0x5f3c5c: branchIfSmi(r0, 0x5f3c68)
    //     0x5f3c5c: tbz             w0, #0, #0x5f3c68
    // 0x5f3c60: r2 = LoadClassIdInstr(r0)
    //     0x5f3c60: ldur            x2, [x0, #-1]
    //     0x5f3c64: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3c68: str             x0, [SP]
    // 0x5f3c6c: mov             x0, x2
    // 0x5f3c70: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3c70: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3c74: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3c74: mov             x17, #0x21f6
    //     0x5f3c78: add             lr, x0, x17
    //     0x5f3c7c: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3c80: blr             lr
    // 0x5f3c84: mov             x3, x0
    // 0x5f3c88: ldur            x0, [fp, #-8]
    // 0x5f3c8c: b               #0x5f3cf0
    // 0x5f3c90: sub             x16, x2, #0x5e
    // 0x5f3c94: cmp             x16, #1
    // 0x5f3c98: b.hi            #0x5f3cb8
    // 0x5f3c9c: mov             x1, x0
    // 0x5f3ca0: r0 = trim()
    //     0x5f3ca0: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5f3ca4: LoadField: r1 = r0->field_7
    //     0x5f3ca4: ldur            w1, [x0, #7]
    // 0x5f3ca8: cbnz            w1, #0x5f3cb8
    // 0x5f3cac: ldur            x0, [fp, #-8]
    // 0x5f3cb0: r3 = Null
    //     0x5f3cb0: mov             x3, NULL
    // 0x5f3cb4: b               #0x5f3cf0
    // 0x5f3cb8: ldur            x0, [fp, #-0x30]
    // 0x5f3cbc: r1 = 60
    //     0x5f3cbc: mov             x1, #0x3c
    // 0x5f3cc0: branchIfSmi(r0, 0x5f3ccc)
    //     0x5f3cc0: tbz             w0, #0, #0x5f3ccc
    // 0x5f3cc4: r1 = LoadClassIdInstr(r0)
    //     0x5f3cc4: ldur            x1, [x0, #-1]
    //     0x5f3cc8: ubfx            x1, x1, #0xc, #0x14
    // 0x5f3ccc: str             x0, [SP]
    // 0x5f3cd0: mov             x0, x1
    // 0x5f3cd4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3cd4: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3cd8: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3cd8: mov             x17, #0x21f6
    //     0x5f3cdc: add             lr, x0, x17
    //     0x5f3ce0: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3ce4: blr             lr
    // 0x5f3ce8: mov             x3, x0
    // 0x5f3cec: ldur            x0, [fp, #-8]
    // 0x5f3cf0: mov             x1, x0
    // 0x5f3cf4: stur            x3, [fp, #-0x30]
    // 0x5f3cf8: r2 = "medine_oda_id"
    //     0x5f3cf8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x5f3cfc: ldr             x2, [x2, #0x840]
    // 0x5f3d00: r0 = _getValueOrData()
    //     0x5f3d00: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3d04: ldur            x1, [fp, #-8]
    // 0x5f3d08: LoadField: r2 = r1->field_f
    //     0x5f3d08: ldur            w2, [x1, #0xf]
    // 0x5f3d0c: DecompressPointer r2
    //     0x5f3d0c: add             x2, x2, HEAP, lsl #32
    // 0x5f3d10: cmp             w2, w0
    // 0x5f3d14: b.ne            #0x5f3d1c
    // 0x5f3d18: r0 = Null
    //     0x5f3d18: mov             x0, NULL
    // 0x5f3d1c: stur            x0, [fp, #-0x38]
    // 0x5f3d20: cmp             w0, NULL
    // 0x5f3d24: b.ne            #0x5f3d34
    // 0x5f3d28: mov             x0, x1
    // 0x5f3d2c: r3 = Null
    //     0x5f3d2c: mov             x3, NULL
    // 0x5f3d30: b               #0x5f3df4
    // 0x5f3d34: r2 = 60
    //     0x5f3d34: mov             x2, #0x3c
    // 0x5f3d38: branchIfSmi(r0, 0x5f3d44)
    //     0x5f3d38: tbz             w0, #0, #0x5f3d44
    // 0x5f3d3c: r2 = LoadClassIdInstr(r0)
    //     0x5f3d3c: ldur            x2, [x0, #-1]
    //     0x5f3d40: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3d44: sub             x16, x2, #0x3c
    // 0x5f3d48: cmp             x16, #1
    // 0x5f3d4c: b.hi            #0x5f3d94
    // 0x5f3d50: cbnz            w0, #0x5f3d5c
    // 0x5f3d54: r0 = Null
    //     0x5f3d54: mov             x0, NULL
    // 0x5f3d58: b               #0x5f3d88
    // 0x5f3d5c: r2 = 60
    //     0x5f3d5c: mov             x2, #0x3c
    // 0x5f3d60: branchIfSmi(r0, 0x5f3d6c)
    //     0x5f3d60: tbz             w0, #0, #0x5f3d6c
    // 0x5f3d64: r2 = LoadClassIdInstr(r0)
    //     0x5f3d64: ldur            x2, [x0, #-1]
    //     0x5f3d68: ubfx            x2, x2, #0xc, #0x14
    // 0x5f3d6c: str             x0, [SP]
    // 0x5f3d70: mov             x0, x2
    // 0x5f3d74: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3d74: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3d78: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3d78: mov             x17, #0x21f6
    //     0x5f3d7c: add             lr, x0, x17
    //     0x5f3d80: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3d84: blr             lr
    // 0x5f3d88: mov             x3, x0
    // 0x5f3d8c: ldur            x0, [fp, #-8]
    // 0x5f3d90: b               #0x5f3df4
    // 0x5f3d94: sub             x16, x2, #0x5e
    // 0x5f3d98: cmp             x16, #1
    // 0x5f3d9c: b.hi            #0x5f3dbc
    // 0x5f3da0: mov             x1, x0
    // 0x5f3da4: r0 = trim()
    //     0x5f3da4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x5f3da8: LoadField: r1 = r0->field_7
    //     0x5f3da8: ldur            w1, [x0, #7]
    // 0x5f3dac: cbnz            w1, #0x5f3dbc
    // 0x5f3db0: ldur            x0, [fp, #-8]
    // 0x5f3db4: r3 = Null
    //     0x5f3db4: mov             x3, NULL
    // 0x5f3db8: b               #0x5f3df4
    // 0x5f3dbc: ldur            x0, [fp, #-0x38]
    // 0x5f3dc0: r1 = 60
    //     0x5f3dc0: mov             x1, #0x3c
    // 0x5f3dc4: branchIfSmi(r0, 0x5f3dd0)
    //     0x5f3dc4: tbz             w0, #0, #0x5f3dd0
    // 0x5f3dc8: r1 = LoadClassIdInstr(r0)
    //     0x5f3dc8: ldur            x1, [x0, #-1]
    //     0x5f3dcc: ubfx            x1, x1, #0xc, #0x14
    // 0x5f3dd0: str             x0, [SP]
    // 0x5f3dd4: mov             x0, x1
    // 0x5f3dd8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5f3dd8: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5f3ddc: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5f3ddc: mov             x17, #0x21f6
    //     0x5f3de0: add             lr, x0, x17
    //     0x5f3de4: ldr             lr, [x21, lr, lsl #3]
    //     0x5f3de8: blr             lr
    // 0x5f3dec: mov             x3, x0
    // 0x5f3df0: ldur            x0, [fp, #-8]
    // 0x5f3df4: mov             x1, x0
    // 0x5f3df8: stur            x3, [fp, #-0x38]
    // 0x5f3dfc: r2 = "user_token"
    //     0x5f3dfc: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5f3e00: r0 = _getValueOrData()
    //     0x5f3e00: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3e04: ldur            x3, [fp, #-8]
    // 0x5f3e08: LoadField: r1 = r3->field_f
    //     0x5f3e08: ldur            w1, [x3, #0xf]
    // 0x5f3e0c: DecompressPointer r1
    //     0x5f3e0c: add             x1, x1, HEAP, lsl #32
    // 0x5f3e10: cmp             w1, w0
    // 0x5f3e14: b.ne            #0x5f3e1c
    // 0x5f3e18: r0 = Null
    //     0x5f3e18: mov             x0, NULL
    // 0x5f3e1c: cmp             w0, NULL
    // 0x5f3e20: b.ne            #0x5f3e2c
    // 0x5f3e24: r4 = ""
    //     0x5f3e24: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f3e28: b               #0x5f3e30
    // 0x5f3e2c: mov             x4, x0
    // 0x5f3e30: mov             x0, x4
    // 0x5f3e34: stur            x4, [fp, #-0x40]
    // 0x5f3e38: r2 = Null
    //     0x5f3e38: mov             x2, NULL
    // 0x5f3e3c: r1 = Null
    //     0x5f3e3c: mov             x1, NULL
    // 0x5f3e40: r4 = 60
    //     0x5f3e40: mov             x4, #0x3c
    // 0x5f3e44: branchIfSmi(r0, 0x5f3e50)
    //     0x5f3e44: tbz             w0, #0, #0x5f3e50
    // 0x5f3e48: r4 = LoadClassIdInstr(r0)
    //     0x5f3e48: ldur            x4, [x0, #-1]
    //     0x5f3e4c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3e50: sub             x4, x4, #0x5e
    // 0x5f3e54: cmp             x4, #1
    // 0x5f3e58: b.ls            #0x5f3e6c
    // 0x5f3e5c: r8 = String
    //     0x5f3e5c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3e60: r3 = Null
    //     0x5f3e60: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a0b0] Null
    //     0x5f3e64: ldr             x3, [x3, #0xb0]
    // 0x5f3e68: r0 = String()
    //     0x5f3e68: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f3e6c: ldur            x1, [fp, #-8]
    // 0x5f3e70: r2 = "user_name"
    //     0x5f3e70: add             x2, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x5f3e74: ldr             x2, [x2, #0xb30]
    // 0x5f3e78: r0 = _getValueOrData()
    //     0x5f3e78: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3e7c: ldur            x3, [fp, #-8]
    // 0x5f3e80: LoadField: r1 = r3->field_f
    //     0x5f3e80: ldur            w1, [x3, #0xf]
    // 0x5f3e84: DecompressPointer r1
    //     0x5f3e84: add             x1, x1, HEAP, lsl #32
    // 0x5f3e88: cmp             w1, w0
    // 0x5f3e8c: b.ne            #0x5f3e94
    // 0x5f3e90: r0 = Null
    //     0x5f3e90: mov             x0, NULL
    // 0x5f3e94: cmp             w0, NULL
    // 0x5f3e98: b.ne            #0x5f3ea4
    // 0x5f3e9c: r4 = ""
    //     0x5f3e9c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f3ea0: b               #0x5f3ea8
    // 0x5f3ea4: mov             x4, x0
    // 0x5f3ea8: mov             x0, x4
    // 0x5f3eac: stur            x4, [fp, #-0x48]
    // 0x5f3eb0: r2 = Null
    //     0x5f3eb0: mov             x2, NULL
    // 0x5f3eb4: r1 = Null
    //     0x5f3eb4: mov             x1, NULL
    // 0x5f3eb8: r4 = 60
    //     0x5f3eb8: mov             x4, #0x3c
    // 0x5f3ebc: branchIfSmi(r0, 0x5f3ec8)
    //     0x5f3ebc: tbz             w0, #0, #0x5f3ec8
    // 0x5f3ec0: r4 = LoadClassIdInstr(r0)
    //     0x5f3ec0: ldur            x4, [x0, #-1]
    //     0x5f3ec4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3ec8: sub             x4, x4, #0x5e
    // 0x5f3ecc: cmp             x4, #1
    // 0x5f3ed0: b.ls            #0x5f3ee4
    // 0x5f3ed4: r8 = String
    //     0x5f3ed4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3ed8: r3 = Null
    //     0x5f3ed8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a0c0] Null
    //     0x5f3edc: ldr             x3, [x3, #0xc0]
    // 0x5f3ee0: r0 = String()
    //     0x5f3ee0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f3ee4: ldur            x1, [fp, #-8]
    // 0x5f3ee8: r2 = "user_type"
    //     0x5f3ee8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15718] "user_type"
    //     0x5f3eec: ldr             x2, [x2, #0x718]
    // 0x5f3ef0: r0 = _getValueOrData()
    //     0x5f3ef0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3ef4: ldur            x3, [fp, #-8]
    // 0x5f3ef8: LoadField: r1 = r3->field_f
    //     0x5f3ef8: ldur            w1, [x3, #0xf]
    // 0x5f3efc: DecompressPointer r1
    //     0x5f3efc: add             x1, x1, HEAP, lsl #32
    // 0x5f3f00: cmp             w1, w0
    // 0x5f3f04: b.ne            #0x5f3f0c
    // 0x5f3f08: r0 = Null
    //     0x5f3f08: mov             x0, NULL
    // 0x5f3f0c: cmp             w0, NULL
    // 0x5f3f10: b.ne            #0x5f3f1c
    // 0x5f3f14: r4 = ""
    //     0x5f3f14: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f3f18: b               #0x5f3f20
    // 0x5f3f1c: mov             x4, x0
    // 0x5f3f20: mov             x0, x4
    // 0x5f3f24: stur            x4, [fp, #-0x50]
    // 0x5f3f28: r2 = Null
    //     0x5f3f28: mov             x2, NULL
    // 0x5f3f2c: r1 = Null
    //     0x5f3f2c: mov             x1, NULL
    // 0x5f3f30: r4 = 60
    //     0x5f3f30: mov             x4, #0x3c
    // 0x5f3f34: branchIfSmi(r0, 0x5f3f40)
    //     0x5f3f34: tbz             w0, #0, #0x5f3f40
    // 0x5f3f38: r4 = LoadClassIdInstr(r0)
    //     0x5f3f38: ldur            x4, [x0, #-1]
    //     0x5f3f3c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3f40: sub             x4, x4, #0x5e
    // 0x5f3f44: cmp             x4, #1
    // 0x5f3f48: b.ls            #0x5f3f5c
    // 0x5f3f4c: r8 = String
    //     0x5f3f4c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3f50: r3 = Null
    //     0x5f3f50: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a0d0] Null
    //     0x5f3f54: ldr             x3, [x3, #0xd0]
    // 0x5f3f58: r0 = String()
    //     0x5f3f58: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f3f5c: ldur            x1, [fp, #-8]
    // 0x5f3f60: r2 = "user_tel"
    //     0x5f3f60: add             x2, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x5f3f64: ldr             x2, [x2, #0x730]
    // 0x5f3f68: r0 = _getValueOrData()
    //     0x5f3f68: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3f6c: ldur            x3, [fp, #-8]
    // 0x5f3f70: LoadField: r1 = r3->field_f
    //     0x5f3f70: ldur            w1, [x3, #0xf]
    // 0x5f3f74: DecompressPointer r1
    //     0x5f3f74: add             x1, x1, HEAP, lsl #32
    // 0x5f3f78: cmp             w1, w0
    // 0x5f3f7c: b.ne            #0x5f3f84
    // 0x5f3f80: r0 = Null
    //     0x5f3f80: mov             x0, NULL
    // 0x5f3f84: cmp             w0, NULL
    // 0x5f3f88: b.ne            #0x5f3f94
    // 0x5f3f8c: r4 = ""
    //     0x5f3f8c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f3f90: b               #0x5f3f98
    // 0x5f3f94: mov             x4, x0
    // 0x5f3f98: mov             x0, x4
    // 0x5f3f9c: stur            x4, [fp, #-0x58]
    // 0x5f3fa0: r2 = Null
    //     0x5f3fa0: mov             x2, NULL
    // 0x5f3fa4: r1 = Null
    //     0x5f3fa4: mov             x1, NULL
    // 0x5f3fa8: r4 = 60
    //     0x5f3fa8: mov             x4, #0x3c
    // 0x5f3fac: branchIfSmi(r0, 0x5f3fb8)
    //     0x5f3fac: tbz             w0, #0, #0x5f3fb8
    // 0x5f3fb0: r4 = LoadClassIdInstr(r0)
    //     0x5f3fb0: ldur            x4, [x0, #-1]
    //     0x5f3fb4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3fb8: sub             x4, x4, #0x5e
    // 0x5f3fbc: cmp             x4, #1
    // 0x5f3fc0: b.ls            #0x5f3fd4
    // 0x5f3fc4: r8 = String
    //     0x5f3fc4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3fc8: r3 = Null
    //     0x5f3fc8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a0e0] Null
    //     0x5f3fcc: ldr             x3, [x3, #0xe0]
    // 0x5f3fd0: r0 = String()
    //     0x5f3fd0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f3fd4: ldur            x1, [fp, #-8]
    // 0x5f3fd8: r2 = "user_tc"
    //     0x5f3fd8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x5f3fdc: ldr             x2, [x2, #0x748]
    // 0x5f3fe0: r0 = _getValueOrData()
    //     0x5f3fe0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3fe4: ldur            x3, [fp, #-8]
    // 0x5f3fe8: LoadField: r1 = r3->field_f
    //     0x5f3fe8: ldur            w1, [x3, #0xf]
    // 0x5f3fec: DecompressPointer r1
    //     0x5f3fec: add             x1, x1, HEAP, lsl #32
    // 0x5f3ff0: cmp             w1, w0
    // 0x5f3ff4: b.ne            #0x5f3ffc
    // 0x5f3ff8: r0 = Null
    //     0x5f3ff8: mov             x0, NULL
    // 0x5f3ffc: cmp             w0, NULL
    // 0x5f4000: b.ne            #0x5f400c
    // 0x5f4004: r4 = ""
    //     0x5f4004: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f4008: b               #0x5f4010
    // 0x5f400c: mov             x4, x0
    // 0x5f4010: mov             x0, x4
    // 0x5f4014: stur            x4, [fp, #-0x60]
    // 0x5f4018: r2 = Null
    //     0x5f4018: mov             x2, NULL
    // 0x5f401c: r1 = Null
    //     0x5f401c: mov             x1, NULL
    // 0x5f4020: r4 = 60
    //     0x5f4020: mov             x4, #0x3c
    // 0x5f4024: branchIfSmi(r0, 0x5f4030)
    //     0x5f4024: tbz             w0, #0, #0x5f4030
    // 0x5f4028: r4 = LoadClassIdInstr(r0)
    //     0x5f4028: ldur            x4, [x0, #-1]
    //     0x5f402c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4030: sub             x4, x4, #0x5e
    // 0x5f4034: cmp             x4, #1
    // 0x5f4038: b.ls            #0x5f404c
    // 0x5f403c: r8 = String
    //     0x5f403c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4040: r3 = Null
    //     0x5f4040: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a0f0] Null
    //     0x5f4044: ldr             x3, [x3, #0xf0]
    // 0x5f4048: r0 = String()
    //     0x5f4048: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f404c: ldur            x1, [fp, #-8]
    // 0x5f4050: r2 = "user_location"
    //     0x5f4050: add             x2, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x5f4054: ldr             x2, [x2, #0x760]
    // 0x5f4058: r0 = _getValueOrData()
    //     0x5f4058: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f405c: ldur            x3, [fp, #-8]
    // 0x5f4060: LoadField: r1 = r3->field_f
    //     0x5f4060: ldur            w1, [x3, #0xf]
    // 0x5f4064: DecompressPointer r1
    //     0x5f4064: add             x1, x1, HEAP, lsl #32
    // 0x5f4068: cmp             w1, w0
    // 0x5f406c: b.ne            #0x5f4074
    // 0x5f4070: r0 = Null
    //     0x5f4070: mov             x0, NULL
    // 0x5f4074: cmp             w0, NULL
    // 0x5f4078: b.ne            #0x5f4084
    // 0x5f407c: r4 = ""
    //     0x5f407c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f4080: b               #0x5f4088
    // 0x5f4084: mov             x4, x0
    // 0x5f4088: mov             x0, x4
    // 0x5f408c: stur            x4, [fp, #-0x68]
    // 0x5f4090: r2 = Null
    //     0x5f4090: mov             x2, NULL
    // 0x5f4094: r1 = Null
    //     0x5f4094: mov             x1, NULL
    // 0x5f4098: r4 = 60
    //     0x5f4098: mov             x4, #0x3c
    // 0x5f409c: branchIfSmi(r0, 0x5f40a8)
    //     0x5f409c: tbz             w0, #0, #0x5f40a8
    // 0x5f40a0: r4 = LoadClassIdInstr(r0)
    //     0x5f40a0: ldur            x4, [x0, #-1]
    //     0x5f40a4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f40a8: sub             x4, x4, #0x5e
    // 0x5f40ac: cmp             x4, #1
    // 0x5f40b0: b.ls            #0x5f40c4
    // 0x5f40b4: r8 = String
    //     0x5f40b4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f40b8: r3 = Null
    //     0x5f40b8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a100] Null
    //     0x5f40bc: ldr             x3, [x3, #0x100]
    // 0x5f40c0: r0 = String()
    //     0x5f40c0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f40c4: ldur            x1, [fp, #-8]
    // 0x5f40c8: r2 = "cinsiyet"
    //     0x5f40c8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x5f40cc: ldr             x2, [x2, #0x778]
    // 0x5f40d0: r0 = _getValueOrData()
    //     0x5f40d0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f40d4: ldur            x3, [fp, #-8]
    // 0x5f40d8: LoadField: r1 = r3->field_f
    //     0x5f40d8: ldur            w1, [x3, #0xf]
    // 0x5f40dc: DecompressPointer r1
    //     0x5f40dc: add             x1, x1, HEAP, lsl #32
    // 0x5f40e0: cmp             w1, w0
    // 0x5f40e4: b.ne            #0x5f40f0
    // 0x5f40e8: r4 = Null
    //     0x5f40e8: mov             x4, NULL
    // 0x5f40ec: b               #0x5f40f4
    // 0x5f40f0: mov             x4, x0
    // 0x5f40f4: mov             x0, x4
    // 0x5f40f8: stur            x4, [fp, #-0x70]
    // 0x5f40fc: r2 = Null
    //     0x5f40fc: mov             x2, NULL
    // 0x5f4100: r1 = Null
    //     0x5f4100: mov             x1, NULL
    // 0x5f4104: r4 = 60
    //     0x5f4104: mov             x4, #0x3c
    // 0x5f4108: branchIfSmi(r0, 0x5f4114)
    //     0x5f4108: tbz             w0, #0, #0x5f4114
    // 0x5f410c: r4 = LoadClassIdInstr(r0)
    //     0x5f410c: ldur            x4, [x0, #-1]
    //     0x5f4110: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4114: sub             x4, x4, #0x5e
    // 0x5f4118: cmp             x4, #1
    // 0x5f411c: b.ls            #0x5f4130
    // 0x5f4120: r8 = String?
    //     0x5f4120: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f4124: r3 = Null
    //     0x5f4124: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a110] Null
    //     0x5f4128: ldr             x3, [x3, #0x110]
    // 0x5f412c: r0 = String?()
    //     0x5f412c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f4130: ldur            x1, [fp, #-8]
    // 0x5f4134: r2 = "dogum_tarihi"
    //     0x5f4134: add             x2, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x5f4138: ldr             x2, [x2, #0x790]
    // 0x5f413c: r0 = _getValueOrData()
    //     0x5f413c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f4140: mov             x1, x0
    // 0x5f4144: ldur            x0, [fp, #-8]
    // 0x5f4148: LoadField: r2 = r0->field_f
    //     0x5f4148: ldur            w2, [x0, #0xf]
    // 0x5f414c: DecompressPointer r2
    //     0x5f414c: add             x2, x2, HEAP, lsl #32
    // 0x5f4150: cmp             w2, w1
    // 0x5f4154: b.eq            #0x5f41dc
    // 0x5f4158: cmp             w1, NULL
    // 0x5f415c: b.eq            #0x5f41dc
    // 0x5f4160: mov             x1, x0
    // 0x5f4164: r2 = "dogum_tarihi"
    //     0x5f4164: add             x2, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x5f4168: ldr             x2, [x2, #0x790]
    // 0x5f416c: r0 = _getValueOrData()
    //     0x5f416c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f4170: ldur            x3, [fp, #-8]
    // 0x5f4174: LoadField: r1 = r3->field_f
    //     0x5f4174: ldur            w1, [x3, #0xf]
    // 0x5f4178: DecompressPointer r1
    //     0x5f4178: add             x1, x1, HEAP, lsl #32
    // 0x5f417c: cmp             w1, w0
    // 0x5f4180: b.ne            #0x5f418c
    // 0x5f4184: r4 = Null
    //     0x5f4184: mov             x4, NULL
    // 0x5f4188: b               #0x5f4190
    // 0x5f418c: mov             x4, x0
    // 0x5f4190: mov             x0, x4
    // 0x5f4194: stur            x4, [fp, #-0x78]
    // 0x5f4198: r2 = Null
    //     0x5f4198: mov             x2, NULL
    // 0x5f419c: r1 = Null
    //     0x5f419c: mov             x1, NULL
    // 0x5f41a0: r4 = 60
    //     0x5f41a0: mov             x4, #0x3c
    // 0x5f41a4: branchIfSmi(r0, 0x5f41b0)
    //     0x5f41a4: tbz             w0, #0, #0x5f41b0
    // 0x5f41a8: r4 = LoadClassIdInstr(r0)
    //     0x5f41a8: ldur            x4, [x0, #-1]
    //     0x5f41ac: ubfx            x4, x4, #0xc, #0x14
    // 0x5f41b0: sub             x4, x4, #0x5e
    // 0x5f41b4: cmp             x4, #1
    // 0x5f41b8: b.ls            #0x5f41cc
    // 0x5f41bc: r8 = String
    //     0x5f41bc: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f41c0: r3 = Null
    //     0x5f41c0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a120] Null
    //     0x5f41c4: ldr             x3, [x3, #0x120]
    // 0x5f41c8: r0 = String()
    //     0x5f41c8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f41cc: ldur            x1, [fp, #-0x78]
    // 0x5f41d0: r0 = parse()
    //     0x5f41d0: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f41d4: mov             x3, x0
    // 0x5f41d8: b               #0x5f41e0
    // 0x5f41dc: r3 = Null
    //     0x5f41dc: mov             x3, NULL
    // 0x5f41e0: ldur            x0, [fp, #-8]
    // 0x5f41e4: mov             x1, x0
    // 0x5f41e8: stur            x3, [fp, #-0x78]
    // 0x5f41ec: r2 = "created_at"
    //     0x5f41ec: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f41f0: ldr             x2, [x2, #0xc00]
    // 0x5f41f4: r0 = _getValueOrData()
    //     0x5f41f4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f41f8: mov             x1, x0
    // 0x5f41fc: ldur            x0, [fp, #-8]
    // 0x5f4200: LoadField: r2 = r0->field_f
    //     0x5f4200: ldur            w2, [x0, #0xf]
    // 0x5f4204: DecompressPointer r2
    //     0x5f4204: add             x2, x2, HEAP, lsl #32
    // 0x5f4208: cmp             w2, w1
    // 0x5f420c: b.eq            #0x5f4294
    // 0x5f4210: cmp             w1, NULL
    // 0x5f4214: b.eq            #0x5f4294
    // 0x5f4218: mov             x1, x0
    // 0x5f421c: r2 = "created_at"
    //     0x5f421c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f4220: ldr             x2, [x2, #0xc00]
    // 0x5f4224: r0 = _getValueOrData()
    //     0x5f4224: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f4228: ldur            x3, [fp, #-8]
    // 0x5f422c: LoadField: r1 = r3->field_f
    //     0x5f422c: ldur            w1, [x3, #0xf]
    // 0x5f4230: DecompressPointer r1
    //     0x5f4230: add             x1, x1, HEAP, lsl #32
    // 0x5f4234: cmp             w1, w0
    // 0x5f4238: b.ne            #0x5f4244
    // 0x5f423c: r4 = Null
    //     0x5f423c: mov             x4, NULL
    // 0x5f4240: b               #0x5f4248
    // 0x5f4244: mov             x4, x0
    // 0x5f4248: mov             x0, x4
    // 0x5f424c: stur            x4, [fp, #-0x80]
    // 0x5f4250: r2 = Null
    //     0x5f4250: mov             x2, NULL
    // 0x5f4254: r1 = Null
    //     0x5f4254: mov             x1, NULL
    // 0x5f4258: r4 = 60
    //     0x5f4258: mov             x4, #0x3c
    // 0x5f425c: branchIfSmi(r0, 0x5f4268)
    //     0x5f425c: tbz             w0, #0, #0x5f4268
    // 0x5f4260: r4 = LoadClassIdInstr(r0)
    //     0x5f4260: ldur            x4, [x0, #-1]
    //     0x5f4264: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4268: sub             x4, x4, #0x5e
    // 0x5f426c: cmp             x4, #1
    // 0x5f4270: b.ls            #0x5f4284
    // 0x5f4274: r8 = String
    //     0x5f4274: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4278: r3 = Null
    //     0x5f4278: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a130] Null
    //     0x5f427c: ldr             x3, [x3, #0x130]
    // 0x5f4280: r0 = String()
    //     0x5f4280: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4284: ldur            x1, [fp, #-0x80]
    // 0x5f4288: r0 = parse()
    //     0x5f4288: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f428c: mov             x3, x0
    // 0x5f4290: b               #0x5f4298
    // 0x5f4294: r3 = Null
    //     0x5f4294: mov             x3, NULL
    // 0x5f4298: ldur            x0, [fp, #-8]
    // 0x5f429c: mov             x1, x0
    // 0x5f42a0: stur            x3, [fp, #-0x80]
    // 0x5f42a4: r2 = "updated_at"
    //     0x5f42a4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f42a8: ldr             x2, [x2, #0x58]
    // 0x5f42ac: r0 = _getValueOrData()
    //     0x5f42ac: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f42b0: mov             x1, x0
    // 0x5f42b4: ldur            x0, [fp, #-8]
    // 0x5f42b8: LoadField: r2 = r0->field_f
    //     0x5f42b8: ldur            w2, [x0, #0xf]
    // 0x5f42bc: DecompressPointer r2
    //     0x5f42bc: add             x2, x2, HEAP, lsl #32
    // 0x5f42c0: cmp             w2, w1
    // 0x5f42c4: b.eq            #0x5f434c
    // 0x5f42c8: cmp             w1, NULL
    // 0x5f42cc: b.eq            #0x5f434c
    // 0x5f42d0: mov             x1, x0
    // 0x5f42d4: r2 = "updated_at"
    //     0x5f42d4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f42d8: ldr             x2, [x2, #0x58]
    // 0x5f42dc: r0 = _getValueOrData()
    //     0x5f42dc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f42e0: ldur            x3, [fp, #-8]
    // 0x5f42e4: LoadField: r1 = r3->field_f
    //     0x5f42e4: ldur            w1, [x3, #0xf]
    // 0x5f42e8: DecompressPointer r1
    //     0x5f42e8: add             x1, x1, HEAP, lsl #32
    // 0x5f42ec: cmp             w1, w0
    // 0x5f42f0: b.ne            #0x5f42fc
    // 0x5f42f4: r4 = Null
    //     0x5f42f4: mov             x4, NULL
    // 0x5f42f8: b               #0x5f4300
    // 0x5f42fc: mov             x4, x0
    // 0x5f4300: mov             x0, x4
    // 0x5f4304: stur            x4, [fp, #-0x88]
    // 0x5f4308: r2 = Null
    //     0x5f4308: mov             x2, NULL
    // 0x5f430c: r1 = Null
    //     0x5f430c: mov             x1, NULL
    // 0x5f4310: r4 = 60
    //     0x5f4310: mov             x4, #0x3c
    // 0x5f4314: branchIfSmi(r0, 0x5f4320)
    //     0x5f4314: tbz             w0, #0, #0x5f4320
    // 0x5f4318: r4 = LoadClassIdInstr(r0)
    //     0x5f4318: ldur            x4, [x0, #-1]
    //     0x5f431c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4320: sub             x4, x4, #0x5e
    // 0x5f4324: cmp             x4, #1
    // 0x5f4328: b.ls            #0x5f433c
    // 0x5f432c: r8 = String
    //     0x5f432c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4330: r3 = Null
    //     0x5f4330: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a140] Null
    //     0x5f4334: ldr             x3, [x3, #0x140]
    // 0x5f4338: r0 = String()
    //     0x5f4338: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f433c: ldur            x1, [fp, #-0x88]
    // 0x5f4340: r0 = parse()
    //     0x5f4340: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f4344: mov             x3, x0
    // 0x5f4348: b               #0x5f4350
    // 0x5f434c: r3 = Null
    //     0x5f434c: mov             x3, NULL
    // 0x5f4350: ldur            x0, [fp, #-8]
    // 0x5f4354: mov             x1, x0
    // 0x5f4358: stur            x3, [fp, #-0x88]
    // 0x5f435c: r2 = "fcm_token"
    //     0x5f435c: add             x2, PP, #0x15, lsl #12  ; [pp+0x157d0] "fcm_token"
    //     0x5f4360: ldr             x2, [x2, #0x7d0]
    // 0x5f4364: r0 = _getValueOrData()
    //     0x5f4364: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f4368: ldur            x3, [fp, #-8]
    // 0x5f436c: LoadField: r1 = r3->field_f
    //     0x5f436c: ldur            w1, [x3, #0xf]
    // 0x5f4370: DecompressPointer r1
    //     0x5f4370: add             x1, x1, HEAP, lsl #32
    // 0x5f4374: cmp             w1, w0
    // 0x5f4378: b.ne            #0x5f4384
    // 0x5f437c: r4 = Null
    //     0x5f437c: mov             x4, NULL
    // 0x5f4380: b               #0x5f4388
    // 0x5f4384: mov             x4, x0
    // 0x5f4388: mov             x0, x4
    // 0x5f438c: stur            x4, [fp, #-0x90]
    // 0x5f4390: r2 = Null
    //     0x5f4390: mov             x2, NULL
    // 0x5f4394: r1 = Null
    //     0x5f4394: mov             x1, NULL
    // 0x5f4398: r4 = 60
    //     0x5f4398: mov             x4, #0x3c
    // 0x5f439c: branchIfSmi(r0, 0x5f43a8)
    //     0x5f439c: tbz             w0, #0, #0x5f43a8
    // 0x5f43a0: r4 = LoadClassIdInstr(r0)
    //     0x5f43a0: ldur            x4, [x0, #-1]
    //     0x5f43a4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f43a8: sub             x4, x4, #0x5e
    // 0x5f43ac: cmp             x4, #1
    // 0x5f43b0: b.ls            #0x5f43c4
    // 0x5f43b4: r8 = String?
    //     0x5f43b4: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f43b8: r3 = Null
    //     0x5f43b8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a150] Null
    //     0x5f43bc: ldr             x3, [x3, #0x150]
    // 0x5f43c0: r0 = String?()
    //     0x5f43c0: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f43c4: ldur            x1, [fp, #-8]
    // 0x5f43c8: r2 = "agency_id"
    //     0x5f43c8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5f43cc: ldr             x2, [x2, #0x40]
    // 0x5f43d0: r0 = _getValueOrData()
    //     0x5f43d0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f43d4: mov             x1, x0
    // 0x5f43d8: ldur            x0, [fp, #-8]
    // 0x5f43dc: LoadField: r2 = r0->field_f
    //     0x5f43dc: ldur            w2, [x0, #0xf]
    // 0x5f43e0: DecompressPointer r2
    //     0x5f43e0: add             x2, x2, HEAP, lsl #32
    // 0x5f43e4: cmp             w2, w1
    // 0x5f43e8: b.ne            #0x5f43f4
    // 0x5f43ec: r0 = Null
    //     0x5f43ec: mov             x0, NULL
    // 0x5f43f0: b               #0x5f43f8
    // 0x5f43f4: mov             x0, x1
    // 0x5f43f8: ldur            x13, [fp, #-0x40]
    // 0x5f43fc: ldur            x12, [fp, #-0x48]
    // 0x5f4400: ldur            x11, [fp, #-0x50]
    // 0x5f4404: ldur            x10, [fp, #-0x58]
    // 0x5f4408: ldur            x9, [fp, #-0x60]
    // 0x5f440c: ldur            x8, [fp, #-0x68]
    // 0x5f4410: ldur            x6, [fp, #-0x78]
    // 0x5f4414: ldur            x5, [fp, #-0x80]
    // 0x5f4418: ldur            x4, [fp, #-0x88]
    // 0x5f441c: ldur            x3, [fp, #-0x90]
    // 0x5f4420: ldur            x7, [fp, #-0x70]
    // 0x5f4424: ldur            x25, [fp, #-0x10]
    // 0x5f4428: ldur            x24, [fp, #-0x18]
    // 0x5f442c: ldur            x23, [fp, #-0x20]
    // 0x5f4430: ldur            x20, [fp, #-0x28]
    // 0x5f4434: ldur            x19, [fp, #-0x30]
    // 0x5f4438: ldur            x14, [fp, #-0x38]
    // 0x5f443c: stur            x0, [fp, #-8]
    // 0x5f4440: r2 = Null
    //     0x5f4440: mov             x2, NULL
    // 0x5f4444: r1 = Null
    //     0x5f4444: mov             x1, NULL
    // 0x5f4448: r4 = 60
    //     0x5f4448: mov             x4, #0x3c
    // 0x5f444c: branchIfSmi(r0, 0x5f4458)
    //     0x5f444c: tbz             w0, #0, #0x5f4458
    // 0x5f4450: r4 = LoadClassIdInstr(r0)
    //     0x5f4450: ldur            x4, [x0, #-1]
    //     0x5f4454: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4458: sub             x4, x4, #0x5e
    // 0x5f445c: cmp             x4, #1
    // 0x5f4460: b.ls            #0x5f4474
    // 0x5f4464: r8 = String?
    //     0x5f4464: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f4468: r3 = Null
    //     0x5f4468: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a160] Null
    //     0x5f446c: ldr             x3, [x3, #0x160]
    // 0x5f4470: r0 = String?()
    //     0x5f4470: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f4474: r0 = UserModel()
    //     0x5f4474: bl              #0x5db72c  ; AllocateUserModelStub -> UserModel (size=0x50)
    // 0x5f4478: ldur            x1, [fp, #-0x40]
    // 0x5f447c: StoreField: r0->field_7 = r1
    //     0x5f447c: stur            w1, [x0, #7]
    // 0x5f4480: ldur            x1, [fp, #-0x48]
    // 0x5f4484: StoreField: r0->field_b = r1
    //     0x5f4484: stur            w1, [x0, #0xb]
    // 0x5f4488: ldur            x1, [fp, #-0x50]
    // 0x5f448c: StoreField: r0->field_f = r1
    //     0x5f448c: stur            w1, [x0, #0xf]
    // 0x5f4490: ldur            x1, [fp, #-0x58]
    // 0x5f4494: StoreField: r0->field_13 = r1
    //     0x5f4494: stur            w1, [x0, #0x13]
    // 0x5f4498: ldur            x1, [fp, #-0x60]
    // 0x5f449c: ArrayStore: r0[0] = r1  ; List_4
    //     0x5f449c: stur            w1, [x0, #0x17]
    // 0x5f44a0: ldur            x1, [fp, #-0x68]
    // 0x5f44a4: StoreField: r0->field_33 = r1
    //     0x5f44a4: stur            w1, [x0, #0x33]
    // 0x5f44a8: ldur            x1, [fp, #-0x70]
    // 0x5f44ac: StoreField: r0->field_37 = r1
    //     0x5f44ac: stur            w1, [x0, #0x37]
    // 0x5f44b0: ldur            x1, [fp, #-0x78]
    // 0x5f44b4: StoreField: r0->field_3b = r1
    //     0x5f44b4: stur            w1, [x0, #0x3b]
    // 0x5f44b8: ldur            x1, [fp, #-0x10]
    // 0x5f44bc: StoreField: r0->field_1b = r1
    //     0x5f44bc: stur            w1, [x0, #0x1b]
    // 0x5f44c0: ldur            x1, [fp, #-0x18]
    // 0x5f44c4: StoreField: r0->field_1f = r1
    //     0x5f44c4: stur            w1, [x0, #0x1f]
    // 0x5f44c8: ldur            x1, [fp, #-0x20]
    // 0x5f44cc: StoreField: r0->field_23 = r1
    //     0x5f44cc: stur            w1, [x0, #0x23]
    // 0x5f44d0: ldur            x1, [fp, #-0x28]
    // 0x5f44d4: StoreField: r0->field_27 = r1
    //     0x5f44d4: stur            w1, [x0, #0x27]
    // 0x5f44d8: ldur            x1, [fp, #-0x30]
    // 0x5f44dc: StoreField: r0->field_2b = r1
    //     0x5f44dc: stur            w1, [x0, #0x2b]
    // 0x5f44e0: ldur            x1, [fp, #-0x38]
    // 0x5f44e4: StoreField: r0->field_2f = r1
    //     0x5f44e4: stur            w1, [x0, #0x2f]
    // 0x5f44e8: ldur            x1, [fp, #-0x80]
    // 0x5f44ec: StoreField: r0->field_3f = r1
    //     0x5f44ec: stur            w1, [x0, #0x3f]
    // 0x5f44f0: ldur            x1, [fp, #-0x88]
    // 0x5f44f4: StoreField: r0->field_43 = r1
    //     0x5f44f4: stur            w1, [x0, #0x43]
    // 0x5f44f8: ldur            x1, [fp, #-0x90]
    // 0x5f44fc: StoreField: r0->field_47 = r1
    //     0x5f44fc: stur            w1, [x0, #0x47]
    // 0x5f4500: ldur            x1, [fp, #-8]
    // 0x5f4504: StoreField: r0->field_4b = r1
    //     0x5f4504: stur            w1, [x0, #0x4b]
    // 0x5f4508: LeaveFrame
    //     0x5f4508: mov             SP, fp
    //     0x5f450c: ldp             fp, lr, [SP], #0x10
    // 0x5f4510: ret
    //     0x5f4510: ret             
    // 0x5f4514: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f4514: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f4518: b               #0x5f37e0
  }
  Map<String, dynamic> toFirestore(UserModel) {
    // ** addr: 0x6eecbc, size: 0x2f0
    // 0x6eecbc: EnterFrame
    //     0x6eecbc: stp             fp, lr, [SP, #-0x10]!
    //     0x6eecc0: mov             fp, SP
    // 0x6eecc4: AllocStack(0x20)
    //     0x6eecc4: sub             SP, SP, #0x20
    // 0x6eecc8: SetupParameters(UserModel this /* r1 => r0, fp-0x8 */)
    //     0x6eecc8: mov             x0, x1
    //     0x6eeccc: stur            x1, [fp, #-8]
    // 0x6eecd0: CheckStackOverflow
    //     0x6eecd0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6eecd4: cmp             SP, x16
    //     0x6eecd8: b.ls            #0x6eefa4
    // 0x6eecdc: r1 = Null
    //     0x6eecdc: mov             x1, NULL
    // 0x6eece0: r2 = 72
    //     0x6eece0: mov             x2, #0x48
    // 0x6eece4: r0 = AllocateArray()
    //     0x6eece4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eece8: stur            x0, [fp, #-0x10]
    // 0x6eecec: r16 = "mekke_seferi_id"
    //     0x6eecec: add             x16, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x6eecf0: ldr             x16, [x16, #0x810]
    // 0x6eecf4: StoreField: r0->field_f = r16
    //     0x6eecf4: stur            w16, [x0, #0xf]
    // 0x6eecf8: ldur            x3, [fp, #-8]
    // 0x6eecfc: LoadField: r1 = r3->field_1b
    //     0x6eecfc: ldur            w1, [x3, #0x1b]
    // 0x6eed00: DecompressPointer r1
    //     0x6eed00: add             x1, x1, HEAP, lsl #32
    // 0x6eed04: StoreField: r0->field_13 = r1
    //     0x6eed04: stur            w1, [x0, #0x13]
    // 0x6eed08: r16 = "medine_seferi_id"
    //     0x6eed08: add             x16, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x6eed0c: ldr             x16, [x16, #0x830]
    // 0x6eed10: ArrayStore: r0[0] = r16  ; List_4
    //     0x6eed10: stur            w16, [x0, #0x17]
    // 0x6eed14: LoadField: r1 = r3->field_1f
    //     0x6eed14: ldur            w1, [x3, #0x1f]
    // 0x6eed18: DecompressPointer r1
    //     0x6eed18: add             x1, x1, HEAP, lsl #32
    // 0x6eed1c: StoreField: r0->field_1b = r1
    //     0x6eed1c: stur            w1, [x0, #0x1b]
    // 0x6eed20: r16 = "mekke_otel_id"
    //     0x6eed20: add             x16, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x6eed24: ldr             x16, [x16, #0x818]
    // 0x6eed28: StoreField: r0->field_1f = r16
    //     0x6eed28: stur            w16, [x0, #0x1f]
    // 0x6eed2c: LoadField: r1 = r3->field_23
    //     0x6eed2c: ldur            w1, [x3, #0x23]
    // 0x6eed30: DecompressPointer r1
    //     0x6eed30: add             x1, x1, HEAP, lsl #32
    // 0x6eed34: StoreField: r0->field_23 = r1
    //     0x6eed34: stur            w1, [x0, #0x23]
    // 0x6eed38: r16 = "medine_otel_id"
    //     0x6eed38: add             x16, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x6eed3c: ldr             x16, [x16, #0x838]
    // 0x6eed40: StoreField: r0->field_27 = r16
    //     0x6eed40: stur            w16, [x0, #0x27]
    // 0x6eed44: LoadField: r1 = r3->field_27
    //     0x6eed44: ldur            w1, [x3, #0x27]
    // 0x6eed48: DecompressPointer r1
    //     0x6eed48: add             x1, x1, HEAP, lsl #32
    // 0x6eed4c: StoreField: r0->field_2b = r1
    //     0x6eed4c: stur            w1, [x0, #0x2b]
    // 0x6eed50: r16 = "mekke_oda_id"
    //     0x6eed50: add             x16, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x6eed54: ldr             x16, [x16, #0x820]
    // 0x6eed58: StoreField: r0->field_2f = r16
    //     0x6eed58: stur            w16, [x0, #0x2f]
    // 0x6eed5c: LoadField: r1 = r3->field_2b
    //     0x6eed5c: ldur            w1, [x3, #0x2b]
    // 0x6eed60: DecompressPointer r1
    //     0x6eed60: add             x1, x1, HEAP, lsl #32
    // 0x6eed64: StoreField: r0->field_33 = r1
    //     0x6eed64: stur            w1, [x0, #0x33]
    // 0x6eed68: r16 = "medine_oda_id"
    //     0x6eed68: add             x16, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x6eed6c: ldr             x16, [x16, #0x840]
    // 0x6eed70: StoreField: r0->field_37 = r16
    //     0x6eed70: stur            w16, [x0, #0x37]
    // 0x6eed74: LoadField: r1 = r3->field_2f
    //     0x6eed74: ldur            w1, [x3, #0x2f]
    // 0x6eed78: DecompressPointer r1
    //     0x6eed78: add             x1, x1, HEAP, lsl #32
    // 0x6eed7c: StoreField: r0->field_3b = r1
    //     0x6eed7c: stur            w1, [x0, #0x3b]
    // 0x6eed80: r16 = "user_token"
    //     0x6eed80: ldr             x16, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x6eed84: StoreField: r0->field_3f = r16
    //     0x6eed84: stur            w16, [x0, #0x3f]
    // 0x6eed88: LoadField: r1 = r3->field_7
    //     0x6eed88: ldur            w1, [x3, #7]
    // 0x6eed8c: DecompressPointer r1
    //     0x6eed8c: add             x1, x1, HEAP, lsl #32
    // 0x6eed90: StoreField: r0->field_43 = r1
    //     0x6eed90: stur            w1, [x0, #0x43]
    // 0x6eed94: r16 = "user_name"
    //     0x6eed94: add             x16, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x6eed98: ldr             x16, [x16, #0xb30]
    // 0x6eed9c: StoreField: r0->field_47 = r16
    //     0x6eed9c: stur            w16, [x0, #0x47]
    // 0x6eeda0: LoadField: r1 = r3->field_b
    //     0x6eeda0: ldur            w1, [x3, #0xb]
    // 0x6eeda4: DecompressPointer r1
    //     0x6eeda4: add             x1, x1, HEAP, lsl #32
    // 0x6eeda8: StoreField: r0->field_4b = r1
    //     0x6eeda8: stur            w1, [x0, #0x4b]
    // 0x6eedac: r16 = "user_type"
    //     0x6eedac: add             x16, PP, #0x15, lsl #12  ; [pp+0x15718] "user_type"
    //     0x6eedb0: ldr             x16, [x16, #0x718]
    // 0x6eedb4: StoreField: r0->field_4f = r16
    //     0x6eedb4: stur            w16, [x0, #0x4f]
    // 0x6eedb8: LoadField: r1 = r3->field_f
    //     0x6eedb8: ldur            w1, [x3, #0xf]
    // 0x6eedbc: DecompressPointer r1
    //     0x6eedbc: add             x1, x1, HEAP, lsl #32
    // 0x6eedc0: StoreField: r0->field_53 = r1
    //     0x6eedc0: stur            w1, [x0, #0x53]
    // 0x6eedc4: r16 = "user_tel"
    //     0x6eedc4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x6eedc8: ldr             x16, [x16, #0x730]
    // 0x6eedcc: StoreField: r0->field_57 = r16
    //     0x6eedcc: stur            w16, [x0, #0x57]
    // 0x6eedd0: LoadField: r1 = r3->field_13
    //     0x6eedd0: ldur            w1, [x3, #0x13]
    // 0x6eedd4: DecompressPointer r1
    //     0x6eedd4: add             x1, x1, HEAP, lsl #32
    // 0x6eedd8: StoreField: r0->field_5b = r1
    //     0x6eedd8: stur            w1, [x0, #0x5b]
    // 0x6eeddc: r16 = "user_tc"
    //     0x6eeddc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x6eede0: ldr             x16, [x16, #0x748]
    // 0x6eede4: StoreField: r0->field_5f = r16
    //     0x6eede4: stur            w16, [x0, #0x5f]
    // 0x6eede8: ArrayLoad: r1 = r3[0]  ; List_4
    //     0x6eede8: ldur            w1, [x3, #0x17]
    // 0x6eedec: DecompressPointer r1
    //     0x6eedec: add             x1, x1, HEAP, lsl #32
    // 0x6eedf0: StoreField: r0->field_63 = r1
    //     0x6eedf0: stur            w1, [x0, #0x63]
    // 0x6eedf4: r16 = "user_location"
    //     0x6eedf4: add             x16, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x6eedf8: ldr             x16, [x16, #0x760]
    // 0x6eedfc: StoreField: r0->field_67 = r16
    //     0x6eedfc: stur            w16, [x0, #0x67]
    // 0x6eee00: LoadField: r1 = r3->field_33
    //     0x6eee00: ldur            w1, [x3, #0x33]
    // 0x6eee04: DecompressPointer r1
    //     0x6eee04: add             x1, x1, HEAP, lsl #32
    // 0x6eee08: StoreField: r0->field_6b = r1
    //     0x6eee08: stur            w1, [x0, #0x6b]
    // 0x6eee0c: r16 = "cinsiyet"
    //     0x6eee0c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x6eee10: ldr             x16, [x16, #0x778]
    // 0x6eee14: StoreField: r0->field_6f = r16
    //     0x6eee14: stur            w16, [x0, #0x6f]
    // 0x6eee18: LoadField: r1 = r3->field_37
    //     0x6eee18: ldur            w1, [x3, #0x37]
    // 0x6eee1c: DecompressPointer r1
    //     0x6eee1c: add             x1, x1, HEAP, lsl #32
    // 0x6eee20: StoreField: r0->field_73 = r1
    //     0x6eee20: stur            w1, [x0, #0x73]
    // 0x6eee24: r16 = "dogum_tarihi"
    //     0x6eee24: add             x16, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x6eee28: ldr             x16, [x16, #0x790]
    // 0x6eee2c: StoreField: r0->field_77 = r16
    //     0x6eee2c: stur            w16, [x0, #0x77]
    // 0x6eee30: LoadField: r1 = r3->field_3b
    //     0x6eee30: ldur            w1, [x3, #0x3b]
    // 0x6eee34: DecompressPointer r1
    //     0x6eee34: add             x1, x1, HEAP, lsl #32
    // 0x6eee38: cmp             w1, NULL
    // 0x6eee3c: b.eq            #0x6eee50
    // 0x6eee40: LoadField: r2 = r1->field_b
    //     0x6eee40: ldur            x2, [x1, #0xb]
    // 0x6eee44: r1 = Null
    //     0x6eee44: mov             x1, NULL
    // 0x6eee48: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x6eee48: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x6eee4c: b               #0x6eee54
    // 0x6eee50: r0 = Null
    //     0x6eee50: mov             x0, NULL
    // 0x6eee54: ldur            x3, [fp, #-8]
    // 0x6eee58: ldur            x2, [fp, #-0x10]
    // 0x6eee5c: mov             x1, x2
    // 0x6eee60: ArrayStore: r1[27] = r0  ; List_4
    //     0x6eee60: add             x25, x1, #0x7b
    //     0x6eee64: str             w0, [x25]
    //     0x6eee68: tbz             w0, #0, #0x6eee84
    //     0x6eee6c: ldurb           w16, [x1, #-1]
    //     0x6eee70: ldurb           w17, [x0, #-1]
    //     0x6eee74: and             x16, x17, x16, lsr #2
    //     0x6eee78: tst             x16, HEAP, lsr #32
    //     0x6eee7c: b.eq            #0x6eee84
    //     0x6eee80: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eee84: r16 = "created_at"
    //     0x6eee84: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6eee88: ldr             x16, [x16, #0xc00]
    // 0x6eee8c: StoreField: r2->field_7f = r16
    //     0x6eee8c: stur            w16, [x2, #0x7f]
    // 0x6eee90: LoadField: r0 = r3->field_3f
    //     0x6eee90: ldur            w0, [x3, #0x3f]
    // 0x6eee94: DecompressPointer r0
    //     0x6eee94: add             x0, x0, HEAP, lsl #32
    // 0x6eee98: cmp             w0, NULL
    // 0x6eee9c: b.ne            #0x6eeea4
    // 0x6eeea0: r0 = serverTimestamp()
    //     0x6eeea0: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6eeea4: ldur            x3, [fp, #-8]
    // 0x6eeea8: ldur            x2, [fp, #-0x10]
    // 0x6eeeac: mov             x1, x2
    // 0x6eeeb0: ArrayStore: r1[29] = r0  ; List_4
    //     0x6eeeb0: add             x25, x1, #0x83
    //     0x6eeeb4: str             w0, [x25]
    //     0x6eeeb8: tbz             w0, #0, #0x6eeed4
    //     0x6eeebc: ldurb           w16, [x1, #-1]
    //     0x6eeec0: ldurb           w17, [x0, #-1]
    //     0x6eeec4: and             x16, x17, x16, lsr #2
    //     0x6eeec8: tst             x16, HEAP, lsr #32
    //     0x6eeecc: b.eq            #0x6eeed4
    //     0x6eeed0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eeed4: r16 = "updated_at"
    //     0x6eeed4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6eeed8: ldr             x16, [x16, #0x58]
    // 0x6eeedc: StoreField: r2->field_87 = r16
    //     0x6eeedc: stur            w16, [x2, #0x87]
    // 0x6eeee0: r0 = serverTimestamp()
    //     0x6eeee0: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6eeee4: ldur            x1, [fp, #-0x10]
    // 0x6eeee8: ArrayStore: r1[31] = r0  ; List_4
    //     0x6eeee8: add             x25, x1, #0x8b
    //     0x6eeeec: str             w0, [x25]
    //     0x6eeef0: tbz             w0, #0, #0x6eef0c
    //     0x6eeef4: ldurb           w16, [x1, #-1]
    //     0x6eeef8: ldurb           w17, [x0, #-1]
    //     0x6eeefc: and             x16, x17, x16, lsr #2
    //     0x6eef00: tst             x16, HEAP, lsr #32
    //     0x6eef04: b.eq            #0x6eef0c
    //     0x6eef08: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eef0c: ldur            x2, [fp, #-0x10]
    // 0x6eef10: r16 = "fcm_token"
    //     0x6eef10: add             x16, PP, #0x15, lsl #12  ; [pp+0x157d0] "fcm_token"
    //     0x6eef14: ldr             x16, [x16, #0x7d0]
    // 0x6eef18: StoreField: r2->field_8f = r16
    //     0x6eef18: stur            w16, [x2, #0x8f]
    // 0x6eef1c: ldur            x3, [fp, #-8]
    // 0x6eef20: LoadField: r0 = r3->field_47
    //     0x6eef20: ldur            w0, [x3, #0x47]
    // 0x6eef24: DecompressPointer r0
    //     0x6eef24: add             x0, x0, HEAP, lsl #32
    // 0x6eef28: mov             x1, x2
    // 0x6eef2c: ArrayStore: r1[33] = r0  ; List_4
    //     0x6eef2c: add             x25, x1, #0x93
    //     0x6eef30: str             w0, [x25]
    //     0x6eef34: tbz             w0, #0, #0x6eef50
    //     0x6eef38: ldurb           w16, [x1, #-1]
    //     0x6eef3c: ldurb           w17, [x0, #-1]
    //     0x6eef40: and             x16, x17, x16, lsr #2
    //     0x6eef44: tst             x16, HEAP, lsr #32
    //     0x6eef48: b.eq            #0x6eef50
    //     0x6eef4c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eef50: r16 = "agency_id"
    //     0x6eef50: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6eef54: ldr             x16, [x16, #0x40]
    // 0x6eef58: StoreField: r2->field_97 = r16
    //     0x6eef58: stur            w16, [x2, #0x97]
    // 0x6eef5c: LoadField: r0 = r3->field_4b
    //     0x6eef5c: ldur            w0, [x3, #0x4b]
    // 0x6eef60: DecompressPointer r0
    //     0x6eef60: add             x0, x0, HEAP, lsl #32
    // 0x6eef64: mov             x1, x2
    // 0x6eef68: ArrayStore: r1[35] = r0  ; List_4
    //     0x6eef68: add             x25, x1, #0x9b
    //     0x6eef6c: str             w0, [x25]
    //     0x6eef70: tbz             w0, #0, #0x6eef8c
    //     0x6eef74: ldurb           w16, [x1, #-1]
    //     0x6eef78: ldurb           w17, [x0, #-1]
    //     0x6eef7c: and             x16, x17, x16, lsr #2
    //     0x6eef80: tst             x16, HEAP, lsr #32
    //     0x6eef84: b.eq            #0x6eef8c
    //     0x6eef88: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6eef8c: r16 = <String, dynamic>
    //     0x6eef8c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6eef90: stp             x2, x16, [SP]
    // 0x6eef94: r0 = Map._fromLiteral()
    //     0x6eef94: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6eef98: LeaveFrame
    //     0x6eef98: mov             SP, fp
    //     0x6eef9c: ldp             fp, lr, [SP], #0x10
    // 0x6eefa0: ret
    //     0x6eefa0: ret             
    // 0x6eefa4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6eefa4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6eefa8: b               #0x6eecdc
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x6f308c, size: 0x5c0
    // 0x6f308c: EnterFrame
    //     0x6f308c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3090: mov             fp, SP
    // 0x6f3094: AllocStack(0x90)
    //     0x6f3094: sub             SP, SP, #0x90
    // 0x6f3098: SetupParameters(dynamic _ /* r2 => r2, fp-0x90 */, {dynamic cinsiyet = Null /* r5 */, dynamic dogumTarihi = Null /* r6 */, dynamic medineOdaId = Null /* r7 */, dynamic medineOtelId = Null /* r8 */, dynamic medineSeferiId = Null /* r9 */, dynamic mekkeOdaId = Null /* r10 */, dynamic mekkeOtelId = Null /* r11 */, dynamic mekkeSeferiId = Null /* r12 */, dynamic userLocation = Null /* r13 */, dynamic userName = Null /* r14 */, dynamic userTel = Null /* r0 */})
    //     0x6f3098: stur            x2, [fp, #-0x90]
    //     0x6f309c: ldur            w0, [x4, #0x13]
    //     0x6f30a0: ldur            w3, [x4, #0x1f]
    //     0x6f30a4: add             x3, x3, HEAP, lsl #32
    //     0x6f30a8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x6f30ac: ldr             x16, [x16, #0x778]
    //     0x6f30b0: cmp             w3, w16
    //     0x6f30b4: b.ne            #0x6f30d8
    //     0x6f30b8: ldur            w3, [x4, #0x23]
    //     0x6f30bc: add             x3, x3, HEAP, lsl #32
    //     0x6f30c0: sub             w5, w0, w3
    //     0x6f30c4: add             x3, fp, w5, sxtw #2
    //     0x6f30c8: ldr             x3, [x3, #8]
    //     0x6f30cc: mov             x5, x3
    //     0x6f30d0: mov             x3, #1
    //     0x6f30d4: b               #0x6f30e0
    //     0x6f30d8: mov             x5, NULL
    //     0x6f30dc: mov             x3, #0
    //     0x6f30e0: lsl             x6, x3, #1
    //     0x6f30e4: lsl             w7, w6, #1
    //     0x6f30e8: add             w8, w7, #8
    //     0x6f30ec: add             x16, x4, w8, sxtw #1
    //     0x6f30f0: ldur            w9, [x16, #0xf]
    //     0x6f30f4: add             x9, x9, HEAP, lsl #32
    //     0x6f30f8: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c300] "dogumTarihi"
    //     0x6f30fc: ldr             x16, [x16, #0x300]
    //     0x6f3100: cmp             w9, w16
    //     0x6f3104: b.ne            #0x6f3138
    //     0x6f3108: add             w3, w7, #0xa
    //     0x6f310c: add             x16, x4, w3, sxtw #1
    //     0x6f3110: ldur            w7, [x16, #0xf]
    //     0x6f3114: add             x7, x7, HEAP, lsl #32
    //     0x6f3118: sub             w3, w0, w7
    //     0x6f311c: add             x7, fp, w3, sxtw #2
    //     0x6f3120: ldr             x7, [x7, #8]
    //     0x6f3124: add             w3, w6, #2
    //     0x6f3128: sbfx            x6, x3, #1, #0x1f
    //     0x6f312c: mov             x3, x6
    //     0x6f3130: mov             x6, x7
    //     0x6f3134: b               #0x6f313c
    //     0x6f3138: mov             x6, NULL
    //     0x6f313c: lsl             x7, x3, #1
    //     0x6f3140: lsl             w8, w7, #1
    //     0x6f3144: add             w9, w8, #8
    //     0x6f3148: add             x16, x4, w9, sxtw #1
    //     0x6f314c: ldur            w10, [x16, #0xf]
    //     0x6f3150: add             x10, x10, HEAP, lsl #32
    //     0x6f3154: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c308] "medineOdaId"
    //     0x6f3158: ldr             x16, [x16, #0x308]
    //     0x6f315c: cmp             w10, w16
    //     0x6f3160: b.ne            #0x6f3194
    //     0x6f3164: add             w3, w8, #0xa
    //     0x6f3168: add             x16, x4, w3, sxtw #1
    //     0x6f316c: ldur            w8, [x16, #0xf]
    //     0x6f3170: add             x8, x8, HEAP, lsl #32
    //     0x6f3174: sub             w3, w0, w8
    //     0x6f3178: add             x8, fp, w3, sxtw #2
    //     0x6f317c: ldr             x8, [x8, #8]
    //     0x6f3180: add             w3, w7, #2
    //     0x6f3184: sbfx            x7, x3, #1, #0x1f
    //     0x6f3188: mov             x3, x7
    //     0x6f318c: mov             x7, x8
    //     0x6f3190: b               #0x6f3198
    //     0x6f3194: mov             x7, NULL
    //     0x6f3198: lsl             x8, x3, #1
    //     0x6f319c: lsl             w9, w8, #1
    //     0x6f31a0: add             w10, w9, #8
    //     0x6f31a4: add             x16, x4, w10, sxtw #1
    //     0x6f31a8: ldur            w11, [x16, #0xf]
    //     0x6f31ac: add             x11, x11, HEAP, lsl #32
    //     0x6f31b0: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c310] "medineOtelId"
    //     0x6f31b4: ldr             x16, [x16, #0x310]
    //     0x6f31b8: cmp             w11, w16
    //     0x6f31bc: b.ne            #0x6f31f0
    //     0x6f31c0: add             w3, w9, #0xa
    //     0x6f31c4: add             x16, x4, w3, sxtw #1
    //     0x6f31c8: ldur            w9, [x16, #0xf]
    //     0x6f31cc: add             x9, x9, HEAP, lsl #32
    //     0x6f31d0: sub             w3, w0, w9
    //     0x6f31d4: add             x9, fp, w3, sxtw #2
    //     0x6f31d8: ldr             x9, [x9, #8]
    //     0x6f31dc: add             w3, w8, #2
    //     0x6f31e0: sbfx            x8, x3, #1, #0x1f
    //     0x6f31e4: mov             x3, x8
    //     0x6f31e8: mov             x8, x9
    //     0x6f31ec: b               #0x6f31f4
    //     0x6f31f0: mov             x8, NULL
    //     0x6f31f4: lsl             x9, x3, #1
    //     0x6f31f8: lsl             w10, w9, #1
    //     0x6f31fc: add             w11, w10, #8
    //     0x6f3200: add             x16, x4, w11, sxtw #1
    //     0x6f3204: ldur            w12, [x16, #0xf]
    //     0x6f3208: add             x12, x12, HEAP, lsl #32
    //     0x6f320c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c318] "medineSeferiId"
    //     0x6f3210: ldr             x16, [x16, #0x318]
    //     0x6f3214: cmp             w12, w16
    //     0x6f3218: b.ne            #0x6f324c
    //     0x6f321c: add             w3, w10, #0xa
    //     0x6f3220: add             x16, x4, w3, sxtw #1
    //     0x6f3224: ldur            w10, [x16, #0xf]
    //     0x6f3228: add             x10, x10, HEAP, lsl #32
    //     0x6f322c: sub             w3, w0, w10
    //     0x6f3230: add             x10, fp, w3, sxtw #2
    //     0x6f3234: ldr             x10, [x10, #8]
    //     0x6f3238: add             w3, w9, #2
    //     0x6f323c: sbfx            x9, x3, #1, #0x1f
    //     0x6f3240: mov             x3, x9
    //     0x6f3244: mov             x9, x10
    //     0x6f3248: b               #0x6f3250
    //     0x6f324c: mov             x9, NULL
    //     0x6f3250: lsl             x10, x3, #1
    //     0x6f3254: lsl             w11, w10, #1
    //     0x6f3258: add             w12, w11, #8
    //     0x6f325c: add             x16, x4, w12, sxtw #1
    //     0x6f3260: ldur            w13, [x16, #0xf]
    //     0x6f3264: add             x13, x13, HEAP, lsl #32
    //     0x6f3268: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c320] "mekkeOdaId"
    //     0x6f326c: ldr             x16, [x16, #0x320]
    //     0x6f3270: cmp             w13, w16
    //     0x6f3274: b.ne            #0x6f32a8
    //     0x6f3278: add             w3, w11, #0xa
    //     0x6f327c: add             x16, x4, w3, sxtw #1
    //     0x6f3280: ldur            w11, [x16, #0xf]
    //     0x6f3284: add             x11, x11, HEAP, lsl #32
    //     0x6f3288: sub             w3, w0, w11
    //     0x6f328c: add             x11, fp, w3, sxtw #2
    //     0x6f3290: ldr             x11, [x11, #8]
    //     0x6f3294: add             w3, w10, #2
    //     0x6f3298: sbfx            x10, x3, #1, #0x1f
    //     0x6f329c: mov             x3, x10
    //     0x6f32a0: mov             x10, x11
    //     0x6f32a4: b               #0x6f32ac
    //     0x6f32a8: mov             x10, NULL
    //     0x6f32ac: lsl             x11, x3, #1
    //     0x6f32b0: lsl             w12, w11, #1
    //     0x6f32b4: add             w13, w12, #8
    //     0x6f32b8: add             x16, x4, w13, sxtw #1
    //     0x6f32bc: ldur            w14, [x16, #0xf]
    //     0x6f32c0: add             x14, x14, HEAP, lsl #32
    //     0x6f32c4: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c328] "mekkeOtelId"
    //     0x6f32c8: ldr             x16, [x16, #0x328]
    //     0x6f32cc: cmp             w14, w16
    //     0x6f32d0: b.ne            #0x6f3304
    //     0x6f32d4: add             w3, w12, #0xa
    //     0x6f32d8: add             x16, x4, w3, sxtw #1
    //     0x6f32dc: ldur            w12, [x16, #0xf]
    //     0x6f32e0: add             x12, x12, HEAP, lsl #32
    //     0x6f32e4: sub             w3, w0, w12
    //     0x6f32e8: add             x12, fp, w3, sxtw #2
    //     0x6f32ec: ldr             x12, [x12, #8]
    //     0x6f32f0: add             w3, w11, #2
    //     0x6f32f4: sbfx            x11, x3, #1, #0x1f
    //     0x6f32f8: mov             x3, x11
    //     0x6f32fc: mov             x11, x12
    //     0x6f3300: b               #0x6f3308
    //     0x6f3304: mov             x11, NULL
    //     0x6f3308: lsl             x12, x3, #1
    //     0x6f330c: lsl             w13, w12, #1
    //     0x6f3310: add             w14, w13, #8
    //     0x6f3314: add             x16, x4, w14, sxtw #1
    //     0x6f3318: ldur            w19, [x16, #0xf]
    //     0x6f331c: add             x19, x19, HEAP, lsl #32
    //     0x6f3320: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c330] "mekkeSeferiId"
    //     0x6f3324: ldr             x16, [x16, #0x330]
    //     0x6f3328: cmp             w19, w16
    //     0x6f332c: b.ne            #0x6f3360
    //     0x6f3330: add             w3, w13, #0xa
    //     0x6f3334: add             x16, x4, w3, sxtw #1
    //     0x6f3338: ldur            w13, [x16, #0xf]
    //     0x6f333c: add             x13, x13, HEAP, lsl #32
    //     0x6f3340: sub             w3, w0, w13
    //     0x6f3344: add             x13, fp, w3, sxtw #2
    //     0x6f3348: ldr             x13, [x13, #8]
    //     0x6f334c: add             w3, w12, #2
    //     0x6f3350: sbfx            x12, x3, #1, #0x1f
    //     0x6f3354: mov             x3, x12
    //     0x6f3358: mov             x12, x13
    //     0x6f335c: b               #0x6f3364
    //     0x6f3360: mov             x12, NULL
    //     0x6f3364: lsl             x13, x3, #1
    //     0x6f3368: lsl             w14, w13, #1
    //     0x6f336c: add             w19, w14, #8
    //     0x6f3370: add             x16, x4, w19, sxtw #1
    //     0x6f3374: ldur            w20, [x16, #0xf]
    //     0x6f3378: add             x20, x20, HEAP, lsl #32
    //     0x6f337c: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c338] "userLocation"
    //     0x6f3380: ldr             x16, [x16, #0x338]
    //     0x6f3384: cmp             w20, w16
    //     0x6f3388: b.ne            #0x6f33bc
    //     0x6f338c: add             w3, w14, #0xa
    //     0x6f3390: add             x16, x4, w3, sxtw #1
    //     0x6f3394: ldur            w14, [x16, #0xf]
    //     0x6f3398: add             x14, x14, HEAP, lsl #32
    //     0x6f339c: sub             w3, w0, w14
    //     0x6f33a0: add             x14, fp, w3, sxtw #2
    //     0x6f33a4: ldr             x14, [x14, #8]
    //     0x6f33a8: add             w3, w13, #2
    //     0x6f33ac: sbfx            x13, x3, #1, #0x1f
    //     0x6f33b0: mov             x3, x13
    //     0x6f33b4: mov             x13, x14
    //     0x6f33b8: b               #0x6f33c0
    //     0x6f33bc: mov             x13, NULL
    //     0x6f33c0: lsl             x14, x3, #1
    //     0x6f33c4: lsl             w19, w14, #1
    //     0x6f33c8: add             w20, w19, #8
    //     0x6f33cc: add             x16, x4, w20, sxtw #1
    //     0x6f33d0: ldur            w23, [x16, #0xf]
    //     0x6f33d4: add             x23, x23, HEAP, lsl #32
    //     0x6f33d8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14b48] "userName"
    //     0x6f33dc: ldr             x16, [x16, #0xb48]
    //     0x6f33e0: cmp             w23, w16
    //     0x6f33e4: b.ne            #0x6f3418
    //     0x6f33e8: add             w3, w19, #0xa
    //     0x6f33ec: add             x16, x4, w3, sxtw #1
    //     0x6f33f0: ldur            w19, [x16, #0xf]
    //     0x6f33f4: add             x19, x19, HEAP, lsl #32
    //     0x6f33f8: sub             w3, w0, w19
    //     0x6f33fc: add             x19, fp, w3, sxtw #2
    //     0x6f3400: ldr             x19, [x19, #8]
    //     0x6f3404: add             w3, w14, #2
    //     0x6f3408: sbfx            x14, x3, #1, #0x1f
    //     0x6f340c: mov             x3, x14
    //     0x6f3410: mov             x14, x19
    //     0x6f3414: b               #0x6f341c
    //     0x6f3418: mov             x14, NULL
    //     0x6f341c: lsl             x19, x3, #1
    //     0x6f3420: lsl             w3, w19, #1
    //     0x6f3424: add             w19, w3, #8
    //     0x6f3428: add             x16, x4, w19, sxtw #1
    //     0x6f342c: ldur            w20, [x16, #0xf]
    //     0x6f3430: add             x20, x20, HEAP, lsl #32
    //     0x6f3434: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c340] "userTel"
    //     0x6f3438: ldr             x16, [x16, #0x340]
    //     0x6f343c: cmp             w20, w16
    //     0x6f3440: b.ne            #0x6f3464
    //     0x6f3444: add             w19, w3, #0xa
    //     0x6f3448: add             x16, x4, w19, sxtw #1
    //     0x6f344c: ldur            w3, [x16, #0xf]
    //     0x6f3450: add             x3, x3, HEAP, lsl #32
    //     0x6f3454: sub             w4, w0, w3
    //     0x6f3458: add             x0, fp, w4, sxtw #2
    //     0x6f345c: ldr             x0, [x0, #8]
    //     0x6f3460: b               #0x6f3468
    //     0x6f3464: mov             x0, NULL
    // 0x6f3468: cmp             w12, NULL
    // 0x6f346c: b.ne            #0x6f347c
    // 0x6f3470: LoadField: r3 = r1->field_1b
    //     0x6f3470: ldur            w3, [x1, #0x1b]
    // 0x6f3474: DecompressPointer r3
    //     0x6f3474: add             x3, x3, HEAP, lsl #32
    // 0x6f3478: b               #0x6f3480
    // 0x6f347c: mov             x3, x12
    // 0x6f3480: stur            x3, [fp, #-0x88]
    // 0x6f3484: cmp             w9, NULL
    // 0x6f3488: b.ne            #0x6f3498
    // 0x6f348c: LoadField: r4 = r1->field_1f
    //     0x6f348c: ldur            w4, [x1, #0x1f]
    // 0x6f3490: DecompressPointer r4
    //     0x6f3490: add             x4, x4, HEAP, lsl #32
    // 0x6f3494: b               #0x6f349c
    // 0x6f3498: mov             x4, x9
    // 0x6f349c: stur            x4, [fp, #-0x80]
    // 0x6f34a0: cmp             w11, NULL
    // 0x6f34a4: b.ne            #0x6f34b4
    // 0x6f34a8: LoadField: r9 = r1->field_23
    //     0x6f34a8: ldur            w9, [x1, #0x23]
    // 0x6f34ac: DecompressPointer r9
    //     0x6f34ac: add             x9, x9, HEAP, lsl #32
    // 0x6f34b0: b               #0x6f34b8
    // 0x6f34b4: mov             x9, x11
    // 0x6f34b8: stur            x9, [fp, #-0x78]
    // 0x6f34bc: cmp             w8, NULL
    // 0x6f34c0: b.ne            #0x6f34cc
    // 0x6f34c4: LoadField: r8 = r1->field_27
    //     0x6f34c4: ldur            w8, [x1, #0x27]
    // 0x6f34c8: DecompressPointer r8
    //     0x6f34c8: add             x8, x8, HEAP, lsl #32
    // 0x6f34cc: stur            x8, [fp, #-0x70]
    // 0x6f34d0: cmp             w10, NULL
    // 0x6f34d4: b.ne            #0x6f34e0
    // 0x6f34d8: LoadField: r10 = r1->field_2b
    //     0x6f34d8: ldur            w10, [x1, #0x2b]
    // 0x6f34dc: DecompressPointer r10
    //     0x6f34dc: add             x10, x10, HEAP, lsl #32
    // 0x6f34e0: stur            x10, [fp, #-0x68]
    // 0x6f34e4: cmp             w7, NULL
    // 0x6f34e8: b.ne            #0x6f34f4
    // 0x6f34ec: LoadField: r7 = r1->field_2f
    //     0x6f34ec: ldur            w7, [x1, #0x2f]
    // 0x6f34f0: DecompressPointer r7
    //     0x6f34f0: add             x7, x7, HEAP, lsl #32
    // 0x6f34f4: stur            x7, [fp, #-0x60]
    // 0x6f34f8: LoadField: r11 = r1->field_7
    //     0x6f34f8: ldur            w11, [x1, #7]
    // 0x6f34fc: DecompressPointer r11
    //     0x6f34fc: add             x11, x11, HEAP, lsl #32
    // 0x6f3500: stur            x11, [fp, #-0x58]
    // 0x6f3504: cmp             w14, NULL
    // 0x6f3508: b.ne            #0x6f3518
    // 0x6f350c: LoadField: r12 = r1->field_b
    //     0x6f350c: ldur            w12, [x1, #0xb]
    // 0x6f3510: DecompressPointer r12
    //     0x6f3510: add             x12, x12, HEAP, lsl #32
    // 0x6f3514: b               #0x6f351c
    // 0x6f3518: mov             x12, x14
    // 0x6f351c: stur            x12, [fp, #-0x50]
    // 0x6f3520: LoadField: r14 = r1->field_f
    //     0x6f3520: ldur            w14, [x1, #0xf]
    // 0x6f3524: DecompressPointer r14
    //     0x6f3524: add             x14, x14, HEAP, lsl #32
    // 0x6f3528: stur            x14, [fp, #-0x48]
    // 0x6f352c: cmp             w0, NULL
    // 0x6f3530: b.ne            #0x6f353c
    // 0x6f3534: LoadField: r0 = r1->field_13
    //     0x6f3534: ldur            w0, [x1, #0x13]
    // 0x6f3538: DecompressPointer r0
    //     0x6f3538: add             x0, x0, HEAP, lsl #32
    // 0x6f353c: stur            x0, [fp, #-0x40]
    // 0x6f3540: ArrayLoad: r19 = r1[0]  ; List_4
    //     0x6f3540: ldur            w19, [x1, #0x17]
    // 0x6f3544: DecompressPointer r19
    //     0x6f3544: add             x19, x19, HEAP, lsl #32
    // 0x6f3548: stur            x19, [fp, #-0x38]
    // 0x6f354c: cmp             w13, NULL
    // 0x6f3550: b.ne            #0x6f355c
    // 0x6f3554: LoadField: r13 = r1->field_33
    //     0x6f3554: ldur            w13, [x1, #0x33]
    // 0x6f3558: DecompressPointer r13
    //     0x6f3558: add             x13, x13, HEAP, lsl #32
    // 0x6f355c: stur            x13, [fp, #-0x30]
    // 0x6f3560: cmp             w5, NULL
    // 0x6f3564: b.ne            #0x6f3570
    // 0x6f3568: LoadField: r5 = r1->field_37
    //     0x6f3568: ldur            w5, [x1, #0x37]
    // 0x6f356c: DecompressPointer r5
    //     0x6f356c: add             x5, x5, HEAP, lsl #32
    // 0x6f3570: stur            x5, [fp, #-0x28]
    // 0x6f3574: cmp             w6, NULL
    // 0x6f3578: b.ne            #0x6f3584
    // 0x6f357c: LoadField: r6 = r1->field_3b
    //     0x6f357c: ldur            w6, [x1, #0x3b]
    // 0x6f3580: DecompressPointer r6
    //     0x6f3580: add             x6, x6, HEAP, lsl #32
    // 0x6f3584: stur            x6, [fp, #-0x20]
    // 0x6f3588: LoadField: r20 = r1->field_3f
    //     0x6f3588: ldur            w20, [x1, #0x3f]
    // 0x6f358c: DecompressPointer r20
    //     0x6f358c: add             x20, x20, HEAP, lsl #32
    // 0x6f3590: stur            x20, [fp, #-0x18]
    // 0x6f3594: LoadField: r23 = r1->field_47
    //     0x6f3594: ldur            w23, [x1, #0x47]
    // 0x6f3598: DecompressPointer r23
    //     0x6f3598: add             x23, x23, HEAP, lsl #32
    // 0x6f359c: stur            x23, [fp, #-0x10]
    // 0x6f35a0: LoadField: r24 = r1->field_4b
    //     0x6f35a0: ldur            w24, [x1, #0x4b]
    // 0x6f35a4: DecompressPointer r24
    //     0x6f35a4: add             x24, x24, HEAP, lsl #32
    // 0x6f35a8: stur            x24, [fp, #-8]
    // 0x6f35ac: r0 = UserModel()
    //     0x6f35ac: bl              #0x5db72c  ; AllocateUserModelStub -> UserModel (size=0x50)
    // 0x6f35b0: ldur            x1, [fp, #-0x58]
    // 0x6f35b4: StoreField: r0->field_7 = r1
    //     0x6f35b4: stur            w1, [x0, #7]
    // 0x6f35b8: ldur            x1, [fp, #-0x50]
    // 0x6f35bc: StoreField: r0->field_b = r1
    //     0x6f35bc: stur            w1, [x0, #0xb]
    // 0x6f35c0: ldur            x1, [fp, #-0x48]
    // 0x6f35c4: StoreField: r0->field_f = r1
    //     0x6f35c4: stur            w1, [x0, #0xf]
    // 0x6f35c8: ldur            x1, [fp, #-0x40]
    // 0x6f35cc: StoreField: r0->field_13 = r1
    //     0x6f35cc: stur            w1, [x0, #0x13]
    // 0x6f35d0: ldur            x1, [fp, #-0x38]
    // 0x6f35d4: ArrayStore: r0[0] = r1  ; List_4
    //     0x6f35d4: stur            w1, [x0, #0x17]
    // 0x6f35d8: ldur            x1, [fp, #-0x30]
    // 0x6f35dc: StoreField: r0->field_33 = r1
    //     0x6f35dc: stur            w1, [x0, #0x33]
    // 0x6f35e0: ldur            x1, [fp, #-0x28]
    // 0x6f35e4: StoreField: r0->field_37 = r1
    //     0x6f35e4: stur            w1, [x0, #0x37]
    // 0x6f35e8: ldur            x1, [fp, #-0x20]
    // 0x6f35ec: StoreField: r0->field_3b = r1
    //     0x6f35ec: stur            w1, [x0, #0x3b]
    // 0x6f35f0: ldur            x1, [fp, #-0x88]
    // 0x6f35f4: StoreField: r0->field_1b = r1
    //     0x6f35f4: stur            w1, [x0, #0x1b]
    // 0x6f35f8: ldur            x1, [fp, #-0x80]
    // 0x6f35fc: StoreField: r0->field_1f = r1
    //     0x6f35fc: stur            w1, [x0, #0x1f]
    // 0x6f3600: ldur            x1, [fp, #-0x78]
    // 0x6f3604: StoreField: r0->field_23 = r1
    //     0x6f3604: stur            w1, [x0, #0x23]
    // 0x6f3608: ldur            x1, [fp, #-0x70]
    // 0x6f360c: StoreField: r0->field_27 = r1
    //     0x6f360c: stur            w1, [x0, #0x27]
    // 0x6f3610: ldur            x1, [fp, #-0x68]
    // 0x6f3614: StoreField: r0->field_2b = r1
    //     0x6f3614: stur            w1, [x0, #0x2b]
    // 0x6f3618: ldur            x1, [fp, #-0x60]
    // 0x6f361c: StoreField: r0->field_2f = r1
    //     0x6f361c: stur            w1, [x0, #0x2f]
    // 0x6f3620: ldur            x1, [fp, #-0x18]
    // 0x6f3624: StoreField: r0->field_3f = r1
    //     0x6f3624: stur            w1, [x0, #0x3f]
    // 0x6f3628: ldur            x1, [fp, #-0x90]
    // 0x6f362c: StoreField: r0->field_43 = r1
    //     0x6f362c: stur            w1, [x0, #0x43]
    // 0x6f3630: ldur            x1, [fp, #-0x10]
    // 0x6f3634: StoreField: r0->field_47 = r1
    //     0x6f3634: stur            w1, [x0, #0x47]
    // 0x6f3638: ldur            x1, [fp, #-8]
    // 0x6f363c: StoreField: r0->field_4b = r1
    //     0x6f363c: stur            w1, [x0, #0x4b]
    // 0x6f3640: LeaveFrame
    //     0x6f3640: mov             SP, fp
    //     0x6f3644: ldp             fp, lr, [SP], #0x10
    // 0x6f3648: ret
    //     0x6f3648: ret             
  }
}
