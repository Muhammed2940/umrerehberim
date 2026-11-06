// lib: , url: package:umrem_demo/features/admin/models/event_model.dart

// class id: 1049512, size: 0x8
class :: {
}

// class id: 204, size: 0x34, field offset: 0x8
class EventModel extends Object {

  factory _ EventModel.fromFirestore(/* No info */) {
    // ** addr: 0x5df768, size: 0x50c
    // 0x5df768: EnterFrame
    //     0x5df768: stp             fp, lr, [SP, #-0x10]!
    //     0x5df76c: mov             fp, SP
    // 0x5df770: AllocStack(0x50)
    //     0x5df770: sub             SP, SP, #0x50
    // 0x5df774: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5df774: mov             x0, x2
    //     0x5df778: stur            x2, [fp, #-8]
    // 0x5df77c: CheckStackOverflow
    //     0x5df77c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df780: cmp             SP, x16
    //     0x5df784: b.ls            #0x5dfc6c
    // 0x5df788: mov             x1, x0
    // 0x5df78c: r0 = data()
    //     0x5df78c: bl              #0x8d0f60  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQueryDocumentSnapshot::data
    // 0x5df790: ldur            x1, [fp, #-8]
    // 0x5df794: stur            x0, [fp, #-8]
    // 0x5df798: r0 = id()
    //     0x5df798: bl              #0x5d3978  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentSnapshot::id
    // 0x5df79c: ldur            x1, [fp, #-8]
    // 0x5df7a0: r2 = "title"
    //     0x5df7a0: ldr             x2, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x5df7a4: stur            x0, [fp, #-0x10]
    // 0x5df7a8: r0 = _getValueOrData()
    //     0x5df7a8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5df7ac: ldur            x3, [fp, #-8]
    // 0x5df7b0: LoadField: r1 = r3->field_f
    //     0x5df7b0: ldur            w1, [x3, #0xf]
    // 0x5df7b4: DecompressPointer r1
    //     0x5df7b4: add             x1, x1, HEAP, lsl #32
    // 0x5df7b8: cmp             w1, w0
    // 0x5df7bc: b.ne            #0x5df7c4
    // 0x5df7c0: r0 = Null
    //     0x5df7c0: mov             x0, NULL
    // 0x5df7c4: cmp             w0, NULL
    // 0x5df7c8: b.ne            #0x5df7d4
    // 0x5df7cc: r4 = ""
    //     0x5df7cc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5df7d0: b               #0x5df7d8
    // 0x5df7d4: mov             x4, x0
    // 0x5df7d8: mov             x0, x4
    // 0x5df7dc: stur            x4, [fp, #-0x18]
    // 0x5df7e0: r2 = Null
    //     0x5df7e0: mov             x2, NULL
    // 0x5df7e4: r1 = Null
    //     0x5df7e4: mov             x1, NULL
    // 0x5df7e8: r4 = 60
    //     0x5df7e8: mov             x4, #0x3c
    // 0x5df7ec: branchIfSmi(r0, 0x5df7f8)
    //     0x5df7ec: tbz             w0, #0, #0x5df7f8
    // 0x5df7f0: r4 = LoadClassIdInstr(r0)
    //     0x5df7f0: ldur            x4, [x0, #-1]
    //     0x5df7f4: ubfx            x4, x4, #0xc, #0x14
    // 0x5df7f8: sub             x4, x4, #0x5e
    // 0x5df7fc: cmp             x4, #1
    // 0x5df800: b.ls            #0x5df814
    // 0x5df804: r8 = String
    //     0x5df804: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5df808: r3 = Null
    //     0x5df808: add             x3, PP, #0x15, lsl #12  ; [pp+0x15010] Null
    //     0x5df80c: ldr             x3, [x3, #0x10]
    // 0x5df810: r0 = String()
    //     0x5df810: bl              #0x939a58  ; IsType_String_Stub
    // 0x5df814: ldur            x1, [fp, #-8]
    // 0x5df818: r2 = "description"
    //     0x5df818: add             x2, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x5df81c: ldr             x2, [x2, #0x20]
    // 0x5df820: r0 = _getValueOrData()
    //     0x5df820: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5df824: ldur            x3, [fp, #-8]
    // 0x5df828: LoadField: r1 = r3->field_f
    //     0x5df828: ldur            w1, [x3, #0xf]
    // 0x5df82c: DecompressPointer r1
    //     0x5df82c: add             x1, x1, HEAP, lsl #32
    // 0x5df830: cmp             w1, w0
    // 0x5df834: b.ne            #0x5df840
    // 0x5df838: r4 = Null
    //     0x5df838: mov             x4, NULL
    // 0x5df83c: b               #0x5df844
    // 0x5df840: mov             x4, x0
    // 0x5df844: mov             x0, x4
    // 0x5df848: stur            x4, [fp, #-0x20]
    // 0x5df84c: r2 = Null
    //     0x5df84c: mov             x2, NULL
    // 0x5df850: r1 = Null
    //     0x5df850: mov             x1, NULL
    // 0x5df854: r4 = 60
    //     0x5df854: mov             x4, #0x3c
    // 0x5df858: branchIfSmi(r0, 0x5df864)
    //     0x5df858: tbz             w0, #0, #0x5df864
    // 0x5df85c: r4 = LoadClassIdInstr(r0)
    //     0x5df85c: ldur            x4, [x0, #-1]
    //     0x5df860: ubfx            x4, x4, #0xc, #0x14
    // 0x5df864: sub             x4, x4, #0x5e
    // 0x5df868: cmp             x4, #1
    // 0x5df86c: b.ls            #0x5df880
    // 0x5df870: r8 = String?
    //     0x5df870: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5df874: r3 = Null
    //     0x5df874: add             x3, PP, #0x15, lsl #12  ; [pp+0x15028] Null
    //     0x5df878: ldr             x3, [x3, #0x28]
    // 0x5df87c: r0 = String?()
    //     0x5df87c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5df880: ldur            x1, [fp, #-8]
    // 0x5df884: r2 = "date"
    //     0x5df884: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5df888: ldr             x2, [x2, #0xff8]
    // 0x5df88c: r0 = _getValueOrData()
    //     0x5df88c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5df890: ldur            x3, [fp, #-8]
    // 0x5df894: LoadField: r1 = r3->field_f
    //     0x5df894: ldur            w1, [x3, #0xf]
    // 0x5df898: DecompressPointer r1
    //     0x5df898: add             x1, x1, HEAP, lsl #32
    // 0x5df89c: cmp             w1, w0
    // 0x5df8a0: b.ne            #0x5df8a8
    // 0x5df8a4: r0 = Null
    //     0x5df8a4: mov             x0, NULL
    // 0x5df8a8: cmp             w0, NULL
    // 0x5df8ac: b.ne            #0x5df8b8
    // 0x5df8b0: r4 = ""
    //     0x5df8b0: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5df8b4: b               #0x5df8bc
    // 0x5df8b8: mov             x4, x0
    // 0x5df8bc: mov             x0, x4
    // 0x5df8c0: stur            x4, [fp, #-0x28]
    // 0x5df8c4: r2 = Null
    //     0x5df8c4: mov             x2, NULL
    // 0x5df8c8: r1 = Null
    //     0x5df8c8: mov             x1, NULL
    // 0x5df8cc: r4 = 60
    //     0x5df8cc: mov             x4, #0x3c
    // 0x5df8d0: branchIfSmi(r0, 0x5df8dc)
    //     0x5df8d0: tbz             w0, #0, #0x5df8dc
    // 0x5df8d4: r4 = LoadClassIdInstr(r0)
    //     0x5df8d4: ldur            x4, [x0, #-1]
    //     0x5df8d8: ubfx            x4, x4, #0xc, #0x14
    // 0x5df8dc: sub             x4, x4, #0x5e
    // 0x5df8e0: cmp             x4, #1
    // 0x5df8e4: b.ls            #0x5df8f8
    // 0x5df8e8: r8 = String
    //     0x5df8e8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5df8ec: r3 = Null
    //     0x5df8ec: add             x3, PP, #0x15, lsl #12  ; [pp+0x15038] Null
    //     0x5df8f0: ldr             x3, [x3, #0x38]
    // 0x5df8f4: r0 = String()
    //     0x5df8f4: bl              #0x939a58  ; IsType_String_Stub
    // 0x5df8f8: ldur            x1, [fp, #-8]
    // 0x5df8fc: r2 = "time"
    //     0x5df8fc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15000] "time"
    //     0x5df900: ldr             x2, [x2]
    // 0x5df904: r0 = _getValueOrData()
    //     0x5df904: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5df908: ldur            x3, [fp, #-8]
    // 0x5df90c: LoadField: r1 = r3->field_f
    //     0x5df90c: ldur            w1, [x3, #0xf]
    // 0x5df910: DecompressPointer r1
    //     0x5df910: add             x1, x1, HEAP, lsl #32
    // 0x5df914: cmp             w1, w0
    // 0x5df918: b.ne            #0x5df920
    // 0x5df91c: r0 = Null
    //     0x5df91c: mov             x0, NULL
    // 0x5df920: cmp             w0, NULL
    // 0x5df924: b.ne            #0x5df934
    // 0x5df928: r4 = "09:00"
    //     0x5df928: add             x4, PP, #0x15, lsl #12  ; [pp+0x15048] "09:00"
    //     0x5df92c: ldr             x4, [x4, #0x48]
    // 0x5df930: b               #0x5df938
    // 0x5df934: mov             x4, x0
    // 0x5df938: mov             x0, x4
    // 0x5df93c: stur            x4, [fp, #-0x30]
    // 0x5df940: r2 = Null
    //     0x5df940: mov             x2, NULL
    // 0x5df944: r1 = Null
    //     0x5df944: mov             x1, NULL
    // 0x5df948: r4 = 60
    //     0x5df948: mov             x4, #0x3c
    // 0x5df94c: branchIfSmi(r0, 0x5df958)
    //     0x5df94c: tbz             w0, #0, #0x5df958
    // 0x5df950: r4 = LoadClassIdInstr(r0)
    //     0x5df950: ldur            x4, [x0, #-1]
    //     0x5df954: ubfx            x4, x4, #0xc, #0x14
    // 0x5df958: sub             x4, x4, #0x5e
    // 0x5df95c: cmp             x4, #1
    // 0x5df960: b.ls            #0x5df974
    // 0x5df964: r8 = String
    //     0x5df964: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5df968: r3 = Null
    //     0x5df968: add             x3, PP, #0x15, lsl #12  ; [pp+0x15050] Null
    //     0x5df96c: ldr             x3, [x3, #0x50]
    // 0x5df970: r0 = String()
    //     0x5df970: bl              #0x939a58  ; IsType_String_Stub
    // 0x5df974: ldur            x1, [fp, #-8]
    // 0x5df978: r2 = "duration"
    //     0x5df978: ldr             x2, [PP, #0x5008]  ; [pp+0x5008] "duration"
    // 0x5df97c: r0 = _getValueOrData()
    //     0x5df97c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5df980: ldur            x3, [fp, #-8]
    // 0x5df984: LoadField: r1 = r3->field_f
    //     0x5df984: ldur            w1, [x3, #0xf]
    // 0x5df988: DecompressPointer r1
    //     0x5df988: add             x1, x1, HEAP, lsl #32
    // 0x5df98c: cmp             w1, w0
    // 0x5df990: b.ne            #0x5df998
    // 0x5df994: r0 = Null
    //     0x5df994: mov             x0, NULL
    // 0x5df998: cmp             w0, NULL
    // 0x5df99c: b.ne            #0x5df9a8
    // 0x5df9a0: r4 = 120
    //     0x5df9a0: mov             x4, #0x78
    // 0x5df9a4: b               #0x5df9ac
    // 0x5df9a8: mov             x4, x0
    // 0x5df9ac: mov             x0, x4
    // 0x5df9b0: stur            x4, [fp, #-0x38]
    // 0x5df9b4: r2 = Null
    //     0x5df9b4: mov             x2, NULL
    // 0x5df9b8: r1 = Null
    //     0x5df9b8: mov             x1, NULL
    // 0x5df9bc: branchIfSmi(r0, 0x5df9e4)
    //     0x5df9bc: tbz             w0, #0, #0x5df9e4
    // 0x5df9c0: r4 = LoadClassIdInstr(r0)
    //     0x5df9c0: ldur            x4, [x0, #-1]
    //     0x5df9c4: ubfx            x4, x4, #0xc, #0x14
    // 0x5df9c8: sub             x4, x4, #0x3c
    // 0x5df9cc: cmp             x4, #1
    // 0x5df9d0: b.ls            #0x5df9e4
    // 0x5df9d4: r8 = int
    //     0x5df9d4: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x5df9d8: r3 = Null
    //     0x5df9d8: add             x3, PP, #0x15, lsl #12  ; [pp+0x15060] Null
    //     0x5df9dc: ldr             x3, [x3, #0x60]
    // 0x5df9e0: r0 = int()
    //     0x5df9e0: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x5df9e4: ldur            x1, [fp, #-8]
    // 0x5df9e8: r2 = "trip_id"
    //     0x5df9e8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5df9ec: ldr             x2, [x2, #0xbf0]
    // 0x5df9f0: r0 = _getValueOrData()
    //     0x5df9f0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5df9f4: ldur            x3, [fp, #-8]
    // 0x5df9f8: LoadField: r1 = r3->field_f
    //     0x5df9f8: ldur            w1, [x3, #0xf]
    // 0x5df9fc: DecompressPointer r1
    //     0x5df9fc: add             x1, x1, HEAP, lsl #32
    // 0x5dfa00: cmp             w1, w0
    // 0x5dfa04: b.ne            #0x5dfa10
    // 0x5dfa08: r4 = Null
    //     0x5dfa08: mov             x4, NULL
    // 0x5dfa0c: b               #0x5dfa14
    // 0x5dfa10: mov             x4, x0
    // 0x5dfa14: mov             x0, x4
    // 0x5dfa18: stur            x4, [fp, #-0x40]
    // 0x5dfa1c: r2 = Null
    //     0x5dfa1c: mov             x2, NULL
    // 0x5dfa20: r1 = Null
    //     0x5dfa20: mov             x1, NULL
    // 0x5dfa24: r4 = 60
    //     0x5dfa24: mov             x4, #0x3c
    // 0x5dfa28: branchIfSmi(r0, 0x5dfa34)
    //     0x5dfa28: tbz             w0, #0, #0x5dfa34
    // 0x5dfa2c: r4 = LoadClassIdInstr(r0)
    //     0x5dfa2c: ldur            x4, [x0, #-1]
    //     0x5dfa30: ubfx            x4, x4, #0xc, #0x14
    // 0x5dfa34: sub             x4, x4, #0x5e
    // 0x5dfa38: cmp             x4, #1
    // 0x5dfa3c: b.ls            #0x5dfa50
    // 0x5dfa40: r8 = String?
    //     0x5dfa40: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dfa44: r3 = Null
    //     0x5dfa44: add             x3, PP, #0x15, lsl #12  ; [pp+0x15070] Null
    //     0x5dfa48: ldr             x3, [x3, #0x70]
    // 0x5dfa4c: r0 = String?()
    //     0x5dfa4c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dfa50: ldur            x1, [fp, #-8]
    // 0x5dfa54: r2 = "agency_id"
    //     0x5dfa54: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5dfa58: ldr             x2, [x2, #0x40]
    // 0x5dfa5c: r0 = _getValueOrData()
    //     0x5dfa5c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dfa60: ldur            x3, [fp, #-8]
    // 0x5dfa64: LoadField: r1 = r3->field_f
    //     0x5dfa64: ldur            w1, [x3, #0xf]
    // 0x5dfa68: DecompressPointer r1
    //     0x5dfa68: add             x1, x1, HEAP, lsl #32
    // 0x5dfa6c: cmp             w1, w0
    // 0x5dfa70: b.ne            #0x5dfa7c
    // 0x5dfa74: r4 = Null
    //     0x5dfa74: mov             x4, NULL
    // 0x5dfa78: b               #0x5dfa80
    // 0x5dfa7c: mov             x4, x0
    // 0x5dfa80: mov             x0, x4
    // 0x5dfa84: stur            x4, [fp, #-0x48]
    // 0x5dfa88: r2 = Null
    //     0x5dfa88: mov             x2, NULL
    // 0x5dfa8c: r1 = Null
    //     0x5dfa8c: mov             x1, NULL
    // 0x5dfa90: r4 = 60
    //     0x5dfa90: mov             x4, #0x3c
    // 0x5dfa94: branchIfSmi(r0, 0x5dfaa0)
    //     0x5dfa94: tbz             w0, #0, #0x5dfaa0
    // 0x5dfa98: r4 = LoadClassIdInstr(r0)
    //     0x5dfa98: ldur            x4, [x0, #-1]
    //     0x5dfa9c: ubfx            x4, x4, #0xc, #0x14
    // 0x5dfaa0: sub             x4, x4, #0x5e
    // 0x5dfaa4: cmp             x4, #1
    // 0x5dfaa8: b.ls            #0x5dfabc
    // 0x5dfaac: r8 = String?
    //     0x5dfaac: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dfab0: r3 = Null
    //     0x5dfab0: add             x3, PP, #0x15, lsl #12  ; [pp+0x15080] Null
    //     0x5dfab4: ldr             x3, [x3, #0x80]
    // 0x5dfab8: r0 = String?()
    //     0x5dfab8: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dfabc: ldur            x1, [fp, #-8]
    // 0x5dfac0: r2 = "created_at"
    //     0x5dfac0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5dfac4: ldr             x2, [x2, #0xc00]
    // 0x5dfac8: r0 = _getValueOrData()
    //     0x5dfac8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dfacc: ldur            x3, [fp, #-8]
    // 0x5dfad0: LoadField: r1 = r3->field_f
    //     0x5dfad0: ldur            w1, [x3, #0xf]
    // 0x5dfad4: DecompressPointer r1
    //     0x5dfad4: add             x1, x1, HEAP, lsl #32
    // 0x5dfad8: cmp             w1, w0
    // 0x5dfadc: b.ne            #0x5dfae8
    // 0x5dfae0: r4 = Null
    //     0x5dfae0: mov             x4, NULL
    // 0x5dfae4: b               #0x5dfaec
    // 0x5dfae8: mov             x4, x0
    // 0x5dfaec: mov             x0, x4
    // 0x5dfaf0: stur            x4, [fp, #-0x50]
    // 0x5dfaf4: r2 = Null
    //     0x5dfaf4: mov             x2, NULL
    // 0x5dfaf8: r1 = Null
    //     0x5dfaf8: mov             x1, NULL
    // 0x5dfafc: r4 = 60
    //     0x5dfafc: mov             x4, #0x3c
    // 0x5dfb00: branchIfSmi(r0, 0x5dfb0c)
    //     0x5dfb00: tbz             w0, #0, #0x5dfb0c
    // 0x5dfb04: r4 = LoadClassIdInstr(r0)
    //     0x5dfb04: ldur            x4, [x0, #-1]
    //     0x5dfb08: ubfx            x4, x4, #0xc, #0x14
    // 0x5dfb0c: cmp             x4, #0xe96
    // 0x5dfb10: b.eq            #0x5dfb28
    // 0x5dfb14: r8 = Timestamp?
    //     0x5dfb14: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5dfb18: ldr             x8, [x8, #0x90]
    // 0x5dfb1c: r3 = Null
    //     0x5dfb1c: add             x3, PP, #0x15, lsl #12  ; [pp+0x15098] Null
    //     0x5dfb20: ldr             x3, [x3, #0x98]
    // 0x5dfb24: r0 = DefaultNullableTypeTest()
    //     0x5dfb24: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5dfb28: ldur            x1, [fp, #-0x50]
    // 0x5dfb2c: cmp             w1, NULL
    // 0x5dfb30: b.ne            #0x5dfb3c
    // 0x5dfb34: r3 = Null
    //     0x5dfb34: mov             x3, NULL
    // 0x5dfb38: b               #0x5dfb44
    // 0x5dfb3c: r0 = toDate()
    //     0x5dfb3c: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5dfb40: mov             x3, x0
    // 0x5dfb44: ldur            x0, [fp, #-8]
    // 0x5dfb48: mov             x1, x0
    // 0x5dfb4c: stur            x3, [fp, #-0x50]
    // 0x5dfb50: r2 = "updated_at"
    //     0x5dfb50: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5dfb54: ldr             x2, [x2, #0x58]
    // 0x5dfb58: r0 = _getValueOrData()
    //     0x5dfb58: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dfb5c: mov             x1, x0
    // 0x5dfb60: ldur            x0, [fp, #-8]
    // 0x5dfb64: LoadField: r2 = r0->field_f
    //     0x5dfb64: ldur            w2, [x0, #0xf]
    // 0x5dfb68: DecompressPointer r2
    //     0x5dfb68: add             x2, x2, HEAP, lsl #32
    // 0x5dfb6c: cmp             w2, w1
    // 0x5dfb70: b.ne            #0x5dfb7c
    // 0x5dfb74: r3 = Null
    //     0x5dfb74: mov             x3, NULL
    // 0x5dfb78: b               #0x5dfb80
    // 0x5dfb7c: mov             x3, x1
    // 0x5dfb80: mov             x0, x3
    // 0x5dfb84: stur            x3, [fp, #-8]
    // 0x5dfb88: r2 = Null
    //     0x5dfb88: mov             x2, NULL
    // 0x5dfb8c: r1 = Null
    //     0x5dfb8c: mov             x1, NULL
    // 0x5dfb90: r4 = 60
    //     0x5dfb90: mov             x4, #0x3c
    // 0x5dfb94: branchIfSmi(r0, 0x5dfba0)
    //     0x5dfb94: tbz             w0, #0, #0x5dfba0
    // 0x5dfb98: r4 = LoadClassIdInstr(r0)
    //     0x5dfb98: ldur            x4, [x0, #-1]
    //     0x5dfb9c: ubfx            x4, x4, #0xc, #0x14
    // 0x5dfba0: cmp             x4, #0xe96
    // 0x5dfba4: b.eq            #0x5dfbbc
    // 0x5dfba8: r8 = Timestamp?
    //     0x5dfba8: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5dfbac: ldr             x8, [x8, #0x90]
    // 0x5dfbb0: r3 = Null
    //     0x5dfbb0: add             x3, PP, #0x15, lsl #12  ; [pp+0x150a8] Null
    //     0x5dfbb4: ldr             x3, [x3, #0xa8]
    // 0x5dfbb8: r0 = DefaultNullableTypeTest()
    //     0x5dfbb8: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5dfbbc: ldur            x1, [fp, #-8]
    // 0x5dfbc0: cmp             w1, NULL
    // 0x5dfbc4: b.ne            #0x5dfbd0
    // 0x5dfbc8: r9 = Null
    //     0x5dfbc8: mov             x9, NULL
    // 0x5dfbcc: b               #0x5dfbd8
    // 0x5dfbd0: r0 = toDate()
    //     0x5dfbd0: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5dfbd4: mov             x9, x0
    // 0x5dfbd8: ldur            x8, [fp, #-0x10]
    // 0x5dfbdc: ldur            x7, [fp, #-0x18]
    // 0x5dfbe0: ldur            x5, [fp, #-0x28]
    // 0x5dfbe4: ldur            x4, [fp, #-0x30]
    // 0x5dfbe8: ldur            x3, [fp, #-0x38]
    // 0x5dfbec: ldur            x0, [fp, #-0x50]
    // 0x5dfbf0: ldur            x2, [fp, #-0x40]
    // 0x5dfbf4: ldur            x1, [fp, #-0x48]
    // 0x5dfbf8: ldur            x6, [fp, #-0x20]
    // 0x5dfbfc: stur            x9, [fp, #-8]
    // 0x5dfc00: r0 = EventModel()
    //     0x5dfc00: bl              #0x5dfc94  ; AllocateEventModelStub -> EventModel (size=0x34)
    // 0x5dfc04: ldur            x1, [fp, #-0x10]
    // 0x5dfc08: StoreField: r0->field_7 = r1
    //     0x5dfc08: stur            w1, [x0, #7]
    // 0x5dfc0c: ldur            x1, [fp, #-0x18]
    // 0x5dfc10: StoreField: r0->field_b = r1
    //     0x5dfc10: stur            w1, [x0, #0xb]
    // 0x5dfc14: ldur            x1, [fp, #-0x20]
    // 0x5dfc18: StoreField: r0->field_f = r1
    //     0x5dfc18: stur            w1, [x0, #0xf]
    // 0x5dfc1c: ldur            x1, [fp, #-0x28]
    // 0x5dfc20: StoreField: r0->field_13 = r1
    //     0x5dfc20: stur            w1, [x0, #0x13]
    // 0x5dfc24: ldur            x1, [fp, #-0x30]
    // 0x5dfc28: ArrayStore: r0[0] = r1  ; List_4
    //     0x5dfc28: stur            w1, [x0, #0x17]
    // 0x5dfc2c: ldur            x1, [fp, #-0x38]
    // 0x5dfc30: r2 = LoadInt32Instr(r1)
    //     0x5dfc30: sbfx            x2, x1, #1, #0x1f
    //     0x5dfc34: tbz             w1, #0, #0x5dfc3c
    //     0x5dfc38: ldur            x2, [x1, #7]
    // 0x5dfc3c: StoreField: r0->field_1b = r2
    //     0x5dfc3c: stur            x2, [x0, #0x1b]
    // 0x5dfc40: ldur            x1, [fp, #-0x40]
    // 0x5dfc44: StoreField: r0->field_23 = r1
    //     0x5dfc44: stur            w1, [x0, #0x23]
    // 0x5dfc48: ldur            x1, [fp, #-0x48]
    // 0x5dfc4c: StoreField: r0->field_27 = r1
    //     0x5dfc4c: stur            w1, [x0, #0x27]
    // 0x5dfc50: ldur            x1, [fp, #-0x50]
    // 0x5dfc54: StoreField: r0->field_2b = r1
    //     0x5dfc54: stur            w1, [x0, #0x2b]
    // 0x5dfc58: ldur            x1, [fp, #-8]
    // 0x5dfc5c: StoreField: r0->field_2f = r1
    //     0x5dfc5c: stur            w1, [x0, #0x2f]
    // 0x5dfc60: LeaveFrame
    //     0x5dfc60: mov             SP, fp
    //     0x5dfc64: ldp             fp, lr, [SP], #0x10
    // 0x5dfc68: ret
    //     0x5dfc68: ret             
    // 0x5dfc6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dfc6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dfc70: b               #0x5df788
  }
  _ toFirestore(/* No info */) {
    // ** addr: 0x6d43e0, size: 0x20c
    // 0x6d43e0: EnterFrame
    //     0x6d43e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d43e4: mov             fp, SP
    // 0x6d43e8: AllocStack(0x20)
    //     0x6d43e8: sub             SP, SP, #0x20
    // 0x6d43ec: SetupParameters(EventModel this /* r1 => r0, fp-0x8 */)
    //     0x6d43ec: mov             x0, x1
    //     0x6d43f0: stur            x1, [fp, #-8]
    // 0x6d43f4: CheckStackOverflow
    //     0x6d43f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d43f8: cmp             SP, x16
    //     0x6d43fc: b.ls            #0x6d45e4
    // 0x6d4400: r1 = Null
    //     0x6d4400: mov             x1, NULL
    // 0x6d4404: r2 = 36
    //     0x6d4404: mov             x2, #0x24
    // 0x6d4408: r0 = AllocateArray()
    //     0x6d4408: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d440c: mov             x3, x0
    // 0x6d4410: stur            x3, [fp, #-0x10]
    // 0x6d4414: r16 = "title"
    //     0x6d4414: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x6d4418: StoreField: r3->field_f = r16
    //     0x6d4418: stur            w16, [x3, #0xf]
    // 0x6d441c: ldur            x2, [fp, #-8]
    // 0x6d4420: LoadField: r0 = r2->field_b
    //     0x6d4420: ldur            w0, [x2, #0xb]
    // 0x6d4424: DecompressPointer r0
    //     0x6d4424: add             x0, x0, HEAP, lsl #32
    // 0x6d4428: StoreField: r3->field_13 = r0
    //     0x6d4428: stur            w0, [x3, #0x13]
    // 0x6d442c: r16 = "description"
    //     0x6d442c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x6d4430: ldr             x16, [x16, #0x20]
    // 0x6d4434: ArrayStore: r3[0] = r16  ; List_4
    //     0x6d4434: stur            w16, [x3, #0x17]
    // 0x6d4438: LoadField: r0 = r2->field_f
    //     0x6d4438: ldur            w0, [x2, #0xf]
    // 0x6d443c: DecompressPointer r0
    //     0x6d443c: add             x0, x0, HEAP, lsl #32
    // 0x6d4440: StoreField: r3->field_1b = r0
    //     0x6d4440: stur            w0, [x3, #0x1b]
    // 0x6d4444: r16 = "date"
    //     0x6d4444: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x6d4448: ldr             x16, [x16, #0xff8]
    // 0x6d444c: StoreField: r3->field_1f = r16
    //     0x6d444c: stur            w16, [x3, #0x1f]
    // 0x6d4450: LoadField: r0 = r2->field_13
    //     0x6d4450: ldur            w0, [x2, #0x13]
    // 0x6d4454: DecompressPointer r0
    //     0x6d4454: add             x0, x0, HEAP, lsl #32
    // 0x6d4458: StoreField: r3->field_23 = r0
    //     0x6d4458: stur            w0, [x3, #0x23]
    // 0x6d445c: r16 = "time"
    //     0x6d445c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15000] "time"
    //     0x6d4460: ldr             x16, [x16]
    // 0x6d4464: StoreField: r3->field_27 = r16
    //     0x6d4464: stur            w16, [x3, #0x27]
    // 0x6d4468: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x6d4468: ldur            w0, [x2, #0x17]
    // 0x6d446c: DecompressPointer r0
    //     0x6d446c: add             x0, x0, HEAP, lsl #32
    // 0x6d4470: StoreField: r3->field_2b = r0
    //     0x6d4470: stur            w0, [x3, #0x2b]
    // 0x6d4474: r16 = "duration"
    //     0x6d4474: ldr             x16, [PP, #0x5008]  ; [pp+0x5008] "duration"
    // 0x6d4478: StoreField: r3->field_2f = r16
    //     0x6d4478: stur            w16, [x3, #0x2f]
    // 0x6d447c: LoadField: r4 = r2->field_1b
    //     0x6d447c: ldur            x4, [x2, #0x1b]
    // 0x6d4480: r0 = BoxInt64Instr(r4)
    //     0x6d4480: sbfiz           x0, x4, #1, #0x1f
    //     0x6d4484: cmp             x4, x0, asr #1
    //     0x6d4488: b.eq            #0x6d4494
    //     0x6d448c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6d4490: stur            x4, [x0, #7]
    // 0x6d4494: mov             x1, x3
    // 0x6d4498: ArrayStore: r1[9] = r0  ; List_4
    //     0x6d4498: add             x25, x1, #0x33
    //     0x6d449c: str             w0, [x25]
    //     0x6d44a0: tbz             w0, #0, #0x6d44bc
    //     0x6d44a4: ldurb           w16, [x1, #-1]
    //     0x6d44a8: ldurb           w17, [x0, #-1]
    //     0x6d44ac: and             x16, x17, x16, lsr #2
    //     0x6d44b0: tst             x16, HEAP, lsr #32
    //     0x6d44b4: b.eq            #0x6d44bc
    //     0x6d44b8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d44bc: r16 = "trip_id"
    //     0x6d44bc: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x6d44c0: ldr             x16, [x16, #0xbf0]
    // 0x6d44c4: StoreField: r3->field_37 = r16
    //     0x6d44c4: stur            w16, [x3, #0x37]
    // 0x6d44c8: LoadField: r0 = r2->field_23
    //     0x6d44c8: ldur            w0, [x2, #0x23]
    // 0x6d44cc: DecompressPointer r0
    //     0x6d44cc: add             x0, x0, HEAP, lsl #32
    // 0x6d44d0: mov             x1, x3
    // 0x6d44d4: ArrayStore: r1[11] = r0  ; List_4
    //     0x6d44d4: add             x25, x1, #0x3b
    //     0x6d44d8: str             w0, [x25]
    //     0x6d44dc: tbz             w0, #0, #0x6d44f8
    //     0x6d44e0: ldurb           w16, [x1, #-1]
    //     0x6d44e4: ldurb           w17, [x0, #-1]
    //     0x6d44e8: and             x16, x17, x16, lsr #2
    //     0x6d44ec: tst             x16, HEAP, lsr #32
    //     0x6d44f0: b.eq            #0x6d44f8
    //     0x6d44f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d44f8: r16 = "agency_id"
    //     0x6d44f8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6d44fc: ldr             x16, [x16, #0x40]
    // 0x6d4500: StoreField: r3->field_3f = r16
    //     0x6d4500: stur            w16, [x3, #0x3f]
    // 0x6d4504: LoadField: r0 = r2->field_27
    //     0x6d4504: ldur            w0, [x2, #0x27]
    // 0x6d4508: DecompressPointer r0
    //     0x6d4508: add             x0, x0, HEAP, lsl #32
    // 0x6d450c: mov             x1, x3
    // 0x6d4510: ArrayStore: r1[13] = r0  ; List_4
    //     0x6d4510: add             x25, x1, #0x43
    //     0x6d4514: str             w0, [x25]
    //     0x6d4518: tbz             w0, #0, #0x6d4534
    //     0x6d451c: ldurb           w16, [x1, #-1]
    //     0x6d4520: ldurb           w17, [x0, #-1]
    //     0x6d4524: and             x16, x17, x16, lsr #2
    //     0x6d4528: tst             x16, HEAP, lsr #32
    //     0x6d452c: b.eq            #0x6d4534
    //     0x6d4530: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d4534: r16 = "created_at"
    //     0x6d4534: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6d4538: ldr             x16, [x16, #0xc00]
    // 0x6d453c: StoreField: r3->field_47 = r16
    //     0x6d453c: stur            w16, [x3, #0x47]
    // 0x6d4540: LoadField: r0 = r2->field_2b
    //     0x6d4540: ldur            w0, [x2, #0x2b]
    // 0x6d4544: DecompressPointer r0
    //     0x6d4544: add             x0, x0, HEAP, lsl #32
    // 0x6d4548: cmp             w0, NULL
    // 0x6d454c: b.eq            #0x6d4560
    // 0x6d4550: LoadField: r2 = r0->field_b
    //     0x6d4550: ldur            x2, [x0, #0xb]
    // 0x6d4554: r1 = Null
    //     0x6d4554: mov             x1, NULL
    // 0x6d4558: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x6d4558: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x6d455c: b               #0x6d4564
    // 0x6d4560: r0 = serverTimestamp()
    //     0x6d4560: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6d4564: ldur            x2, [fp, #-0x10]
    // 0x6d4568: mov             x1, x2
    // 0x6d456c: ArrayStore: r1[15] = r0  ; List_4
    //     0x6d456c: add             x25, x1, #0x4b
    //     0x6d4570: str             w0, [x25]
    //     0x6d4574: tbz             w0, #0, #0x6d4590
    //     0x6d4578: ldurb           w16, [x1, #-1]
    //     0x6d457c: ldurb           w17, [x0, #-1]
    //     0x6d4580: and             x16, x17, x16, lsr #2
    //     0x6d4584: tst             x16, HEAP, lsr #32
    //     0x6d4588: b.eq            #0x6d4590
    //     0x6d458c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d4590: r16 = "updated_at"
    //     0x6d4590: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6d4594: ldr             x16, [x16, #0x58]
    // 0x6d4598: StoreField: r2->field_4f = r16
    //     0x6d4598: stur            w16, [x2, #0x4f]
    // 0x6d459c: r0 = serverTimestamp()
    //     0x6d459c: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6d45a0: ldur            x1, [fp, #-0x10]
    // 0x6d45a4: ArrayStore: r1[17] = r0  ; List_4
    //     0x6d45a4: add             x25, x1, #0x53
    //     0x6d45a8: str             w0, [x25]
    //     0x6d45ac: tbz             w0, #0, #0x6d45c8
    //     0x6d45b0: ldurb           w16, [x1, #-1]
    //     0x6d45b4: ldurb           w17, [x0, #-1]
    //     0x6d45b8: and             x16, x17, x16, lsr #2
    //     0x6d45bc: tst             x16, HEAP, lsr #32
    //     0x6d45c0: b.eq            #0x6d45c8
    //     0x6d45c4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d45c8: r16 = <String, dynamic>
    //     0x6d45c8: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6d45cc: ldur            lr, [fp, #-0x10]
    // 0x6d45d0: stp             lr, x16, [SP]
    // 0x6d45d4: r0 = Map._fromLiteral()
    //     0x6d45d4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6d45d8: LeaveFrame
    //     0x6d45d8: mov             SP, fp
    //     0x6d45dc: ldp             fp, lr, [SP], #0x10
    // 0x6d45e0: ret
    //     0x6d45e0: ret             
    // 0x6d45e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d45e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d45e8: b               #0x6d4400
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x6d4894, size: 0xd8
    // 0x6d4894: EnterFrame
    //     0x6d4894: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4898: mov             fp, SP
    // 0x6d489c: AllocStack(0x50)
    //     0x6d489c: sub             SP, SP, #0x50
    // 0x6d48a0: SetupParameters(dynamic _ /* r2 => r2, fp-0x50 */)
    //     0x6d48a0: stur            x2, [fp, #-0x50]
    // 0x6d48a4: LoadField: r0 = r1->field_b
    //     0x6d48a4: ldur            w0, [x1, #0xb]
    // 0x6d48a8: DecompressPointer r0
    //     0x6d48a8: add             x0, x0, HEAP, lsl #32
    // 0x6d48ac: stur            x0, [fp, #-0x48]
    // 0x6d48b0: LoadField: r3 = r1->field_f
    //     0x6d48b0: ldur            w3, [x1, #0xf]
    // 0x6d48b4: DecompressPointer r3
    //     0x6d48b4: add             x3, x3, HEAP, lsl #32
    // 0x6d48b8: stur            x3, [fp, #-0x40]
    // 0x6d48bc: LoadField: r4 = r1->field_13
    //     0x6d48bc: ldur            w4, [x1, #0x13]
    // 0x6d48c0: DecompressPointer r4
    //     0x6d48c0: add             x4, x4, HEAP, lsl #32
    // 0x6d48c4: stur            x4, [fp, #-0x38]
    // 0x6d48c8: ArrayLoad: r5 = r1[0]  ; List_4
    //     0x6d48c8: ldur            w5, [x1, #0x17]
    // 0x6d48cc: DecompressPointer r5
    //     0x6d48cc: add             x5, x5, HEAP, lsl #32
    // 0x6d48d0: stur            x5, [fp, #-0x30]
    // 0x6d48d4: LoadField: r6 = r1->field_1b
    //     0x6d48d4: ldur            x6, [x1, #0x1b]
    // 0x6d48d8: stur            x6, [fp, #-0x28]
    // 0x6d48dc: LoadField: r7 = r1->field_23
    //     0x6d48dc: ldur            w7, [x1, #0x23]
    // 0x6d48e0: DecompressPointer r7
    //     0x6d48e0: add             x7, x7, HEAP, lsl #32
    // 0x6d48e4: stur            x7, [fp, #-0x20]
    // 0x6d48e8: LoadField: r8 = r1->field_27
    //     0x6d48e8: ldur            w8, [x1, #0x27]
    // 0x6d48ec: DecompressPointer r8
    //     0x6d48ec: add             x8, x8, HEAP, lsl #32
    // 0x6d48f0: stur            x8, [fp, #-0x18]
    // 0x6d48f4: LoadField: r9 = r1->field_2b
    //     0x6d48f4: ldur            w9, [x1, #0x2b]
    // 0x6d48f8: DecompressPointer r9
    //     0x6d48f8: add             x9, x9, HEAP, lsl #32
    // 0x6d48fc: stur            x9, [fp, #-0x10]
    // 0x6d4900: LoadField: r10 = r1->field_2f
    //     0x6d4900: ldur            w10, [x1, #0x2f]
    // 0x6d4904: DecompressPointer r10
    //     0x6d4904: add             x10, x10, HEAP, lsl #32
    // 0x6d4908: stur            x10, [fp, #-8]
    // 0x6d490c: r0 = EventModel()
    //     0x6d490c: bl              #0x5dfc94  ; AllocateEventModelStub -> EventModel (size=0x34)
    // 0x6d4910: ldur            x1, [fp, #-0x50]
    // 0x6d4914: StoreField: r0->field_7 = r1
    //     0x6d4914: stur            w1, [x0, #7]
    // 0x6d4918: ldur            x1, [fp, #-0x48]
    // 0x6d491c: StoreField: r0->field_b = r1
    //     0x6d491c: stur            w1, [x0, #0xb]
    // 0x6d4920: ldur            x1, [fp, #-0x40]
    // 0x6d4924: StoreField: r0->field_f = r1
    //     0x6d4924: stur            w1, [x0, #0xf]
    // 0x6d4928: ldur            x1, [fp, #-0x38]
    // 0x6d492c: StoreField: r0->field_13 = r1
    //     0x6d492c: stur            w1, [x0, #0x13]
    // 0x6d4930: ldur            x1, [fp, #-0x30]
    // 0x6d4934: ArrayStore: r0[0] = r1  ; List_4
    //     0x6d4934: stur            w1, [x0, #0x17]
    // 0x6d4938: ldur            x1, [fp, #-0x28]
    // 0x6d493c: StoreField: r0->field_1b = r1
    //     0x6d493c: stur            x1, [x0, #0x1b]
    // 0x6d4940: ldur            x1, [fp, #-0x20]
    // 0x6d4944: StoreField: r0->field_23 = r1
    //     0x6d4944: stur            w1, [x0, #0x23]
    // 0x6d4948: ldur            x1, [fp, #-0x18]
    // 0x6d494c: StoreField: r0->field_27 = r1
    //     0x6d494c: stur            w1, [x0, #0x27]
    // 0x6d4950: ldur            x1, [fp, #-0x10]
    // 0x6d4954: StoreField: r0->field_2b = r1
    //     0x6d4954: stur            w1, [x0, #0x2b]
    // 0x6d4958: ldur            x1, [fp, #-8]
    // 0x6d495c: StoreField: r0->field_2f = r1
    //     0x6d495c: stur            w1, [x0, #0x2f]
    // 0x6d4960: LeaveFrame
    //     0x6d4960: mov             SP, fp
    //     0x6d4964: ldp             fp, lr, [SP], #0x10
    // 0x6d4968: ret
    //     0x6d4968: ret             
  }
}
