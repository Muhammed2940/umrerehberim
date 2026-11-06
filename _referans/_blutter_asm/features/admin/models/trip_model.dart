// lib: , url: package:umrem_demo/features/admin/models/trip_model.dart

// class id: 1049516, size: 0x8
class :: {
}

// class id: 200, size: 0x2c, field offset: 0x8
class TripModel extends Object {

  factory _ TripModel.fromFirestore(/* No info */) {
    // ** addr: 0x5d9d38, size: 0x4ec
    // 0x5d9d38: EnterFrame
    //     0x5d9d38: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9d3c: mov             fp, SP
    // 0x5d9d40: AllocStack(0x48)
    //     0x5d9d40: sub             SP, SP, #0x48
    // 0x5d9d44: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x5d9d44: stur            x2, [fp, #-8]
    // 0x5d9d48: CheckStackOverflow
    //     0x5d9d48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9d4c: cmp             SP, x16
    //     0x5d9d50: b.ls            #0x5da21c
    // 0x5d9d54: r0 = LoadClassIdInstr(r2)
    //     0x5d9d54: ldur            x0, [x2, #-1]
    //     0x5d9d58: ubfx            x0, x0, #0xc, #0x14
    // 0x5d9d5c: mov             x1, x2
    // 0x5d9d60: r0 = GDT[cid_x0 + -0xffe]()
    //     0x5d9d60: sub             lr, x0, #0xffe
    //     0x5d9d64: ldr             lr, [x21, lr, lsl #3]
    //     0x5d9d68: blr             lr
    // 0x5d9d6c: mov             x3, x0
    // 0x5d9d70: r2 = Null
    //     0x5d9d70: mov             x2, NULL
    // 0x5d9d74: r1 = Null
    //     0x5d9d74: mov             x1, NULL
    // 0x5d9d78: stur            x3, [fp, #-0x10]
    // 0x5d9d7c: r8 = Map<String, dynamic>
    //     0x5d9d7c: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5d9d80: r3 = Null
    //     0x5d9d80: add             x3, PP, #0x15, lsl #12  ; [pp+0x15890] Null
    //     0x5d9d84: ldr             x3, [x3, #0x890]
    // 0x5d9d88: r0 = Map<String, dynamic>()
    //     0x5d9d88: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5d9d8c: ldur            x0, [fp, #-8]
    // 0x5d9d90: LoadField: r1 = r0->field_b
    //     0x5d9d90: ldur            w1, [x0, #0xb]
    // 0x5d9d94: DecompressPointer r1
    //     0x5d9d94: add             x1, x1, HEAP, lsl #32
    // 0x5d9d98: LoadField: r0 = r1->field_b
    //     0x5d9d98: ldur            w0, [x1, #0xb]
    // 0x5d9d9c: DecompressPointer r0
    //     0x5d9d9c: add             x0, x0, HEAP, lsl #32
    // 0x5d9da0: LoadField: r1 = r0->field_7
    //     0x5d9da0: ldur            w1, [x0, #7]
    // 0x5d9da4: DecompressPointer r1
    //     0x5d9da4: add             x1, x1, HEAP, lsl #32
    // 0x5d9da8: r0 = last()
    //     0x5d9da8: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5d9dac: ldur            x1, [fp, #-0x10]
    // 0x5d9db0: r2 = "name"
    //     0x5d9db0: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5d9db4: stur            x0, [fp, #-8]
    // 0x5d9db8: r0 = _getValueOrData()
    //     0x5d9db8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9dbc: ldur            x3, [fp, #-0x10]
    // 0x5d9dc0: LoadField: r1 = r3->field_f
    //     0x5d9dc0: ldur            w1, [x3, #0xf]
    // 0x5d9dc4: DecompressPointer r1
    //     0x5d9dc4: add             x1, x1, HEAP, lsl #32
    // 0x5d9dc8: cmp             w1, w0
    // 0x5d9dcc: b.ne            #0x5d9dd4
    // 0x5d9dd0: r0 = Null
    //     0x5d9dd0: mov             x0, NULL
    // 0x5d9dd4: cmp             w0, NULL
    // 0x5d9dd8: b.ne            #0x5d9de4
    // 0x5d9ddc: r4 = ""
    //     0x5d9ddc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5d9de0: b               #0x5d9de8
    // 0x5d9de4: mov             x4, x0
    // 0x5d9de8: mov             x0, x4
    // 0x5d9dec: stur            x4, [fp, #-0x18]
    // 0x5d9df0: r2 = Null
    //     0x5d9df0: mov             x2, NULL
    // 0x5d9df4: r1 = Null
    //     0x5d9df4: mov             x1, NULL
    // 0x5d9df8: r4 = 60
    //     0x5d9df8: mov             x4, #0x3c
    // 0x5d9dfc: branchIfSmi(r0, 0x5d9e08)
    //     0x5d9dfc: tbz             w0, #0, #0x5d9e08
    // 0x5d9e00: r4 = LoadClassIdInstr(r0)
    //     0x5d9e00: ldur            x4, [x0, #-1]
    //     0x5d9e04: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9e08: sub             x4, x4, #0x5e
    // 0x5d9e0c: cmp             x4, #1
    // 0x5d9e10: b.ls            #0x5d9e24
    // 0x5d9e14: r8 = String
    //     0x5d9e14: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d9e18: r3 = Null
    //     0x5d9e18: add             x3, PP, #0x15, lsl #12  ; [pp+0x158a0] Null
    //     0x5d9e1c: ldr             x3, [x3, #0x8a0]
    // 0x5d9e20: r0 = String()
    //     0x5d9e20: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d9e24: ldur            x1, [fp, #-0x10]
    // 0x5d9e28: r2 = "location"
    //     0x5d9e28: ldr             x2, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x5d9e2c: r0 = _getValueOrData()
    //     0x5d9e2c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9e30: ldur            x3, [fp, #-0x10]
    // 0x5d9e34: LoadField: r1 = r3->field_f
    //     0x5d9e34: ldur            w1, [x3, #0xf]
    // 0x5d9e38: DecompressPointer r1
    //     0x5d9e38: add             x1, x1, HEAP, lsl #32
    // 0x5d9e3c: cmp             w1, w0
    // 0x5d9e40: b.ne            #0x5d9e4c
    // 0x5d9e44: r4 = Null
    //     0x5d9e44: mov             x4, NULL
    // 0x5d9e48: b               #0x5d9e50
    // 0x5d9e4c: mov             x4, x0
    // 0x5d9e50: mov             x0, x4
    // 0x5d9e54: stur            x4, [fp, #-0x20]
    // 0x5d9e58: r2 = Null
    //     0x5d9e58: mov             x2, NULL
    // 0x5d9e5c: r1 = Null
    //     0x5d9e5c: mov             x1, NULL
    // 0x5d9e60: r4 = 60
    //     0x5d9e60: mov             x4, #0x3c
    // 0x5d9e64: branchIfSmi(r0, 0x5d9e70)
    //     0x5d9e64: tbz             w0, #0, #0x5d9e70
    // 0x5d9e68: r4 = LoadClassIdInstr(r0)
    //     0x5d9e68: ldur            x4, [x0, #-1]
    //     0x5d9e6c: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9e70: sub             x4, x4, #0x5e
    // 0x5d9e74: cmp             x4, #1
    // 0x5d9e78: b.ls            #0x5d9e8c
    // 0x5d9e7c: r8 = String?
    //     0x5d9e7c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d9e80: r3 = Null
    //     0x5d9e80: add             x3, PP, #0x15, lsl #12  ; [pp+0x158b0] Null
    //     0x5d9e84: ldr             x3, [x3, #0x8b0]
    // 0x5d9e88: r0 = String?()
    //     0x5d9e88: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d9e8c: ldur            x1, [fp, #-0x10]
    // 0x5d9e90: r2 = "note"
    //     0x5d9e90: add             x2, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x5d9e94: ldr             x2, [x2, #0x30]
    // 0x5d9e98: r0 = _getValueOrData()
    //     0x5d9e98: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9e9c: ldur            x3, [fp, #-0x10]
    // 0x5d9ea0: LoadField: r1 = r3->field_f
    //     0x5d9ea0: ldur            w1, [x3, #0xf]
    // 0x5d9ea4: DecompressPointer r1
    //     0x5d9ea4: add             x1, x1, HEAP, lsl #32
    // 0x5d9ea8: cmp             w1, w0
    // 0x5d9eac: b.ne            #0x5d9eb8
    // 0x5d9eb0: r4 = Null
    //     0x5d9eb0: mov             x4, NULL
    // 0x5d9eb4: b               #0x5d9ebc
    // 0x5d9eb8: mov             x4, x0
    // 0x5d9ebc: mov             x0, x4
    // 0x5d9ec0: stur            x4, [fp, #-0x28]
    // 0x5d9ec4: r2 = Null
    //     0x5d9ec4: mov             x2, NULL
    // 0x5d9ec8: r1 = Null
    //     0x5d9ec8: mov             x1, NULL
    // 0x5d9ecc: r4 = 60
    //     0x5d9ecc: mov             x4, #0x3c
    // 0x5d9ed0: branchIfSmi(r0, 0x5d9edc)
    //     0x5d9ed0: tbz             w0, #0, #0x5d9edc
    // 0x5d9ed4: r4 = LoadClassIdInstr(r0)
    //     0x5d9ed4: ldur            x4, [x0, #-1]
    //     0x5d9ed8: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9edc: sub             x4, x4, #0x5e
    // 0x5d9ee0: cmp             x4, #1
    // 0x5d9ee4: b.ls            #0x5d9ef8
    // 0x5d9ee8: r8 = String?
    //     0x5d9ee8: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d9eec: r3 = Null
    //     0x5d9eec: add             x3, PP, #0x15, lsl #12  ; [pp+0x158c0] Null
    //     0x5d9ef0: ldr             x3, [x3, #0x8c0]
    // 0x5d9ef4: r0 = String?()
    //     0x5d9ef4: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d9ef8: ldur            x1, [fp, #-0x10]
    // 0x5d9efc: r2 = "agency_id"
    //     0x5d9efc: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d9f00: ldr             x2, [x2, #0x40]
    // 0x5d9f04: r0 = _getValueOrData()
    //     0x5d9f04: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9f08: ldur            x3, [fp, #-0x10]
    // 0x5d9f0c: LoadField: r1 = r3->field_f
    //     0x5d9f0c: ldur            w1, [x3, #0xf]
    // 0x5d9f10: DecompressPointer r1
    //     0x5d9f10: add             x1, x1, HEAP, lsl #32
    // 0x5d9f14: cmp             w1, w0
    // 0x5d9f18: b.ne            #0x5d9f24
    // 0x5d9f1c: r4 = Null
    //     0x5d9f1c: mov             x4, NULL
    // 0x5d9f20: b               #0x5d9f28
    // 0x5d9f24: mov             x4, x0
    // 0x5d9f28: mov             x0, x4
    // 0x5d9f2c: stur            x4, [fp, #-0x30]
    // 0x5d9f30: r2 = Null
    //     0x5d9f30: mov             x2, NULL
    // 0x5d9f34: r1 = Null
    //     0x5d9f34: mov             x1, NULL
    // 0x5d9f38: r4 = 60
    //     0x5d9f38: mov             x4, #0x3c
    // 0x5d9f3c: branchIfSmi(r0, 0x5d9f48)
    //     0x5d9f3c: tbz             w0, #0, #0x5d9f48
    // 0x5d9f40: r4 = LoadClassIdInstr(r0)
    //     0x5d9f40: ldur            x4, [x0, #-1]
    //     0x5d9f44: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9f48: sub             x4, x4, #0x5e
    // 0x5d9f4c: cmp             x4, #1
    // 0x5d9f50: b.ls            #0x5d9f64
    // 0x5d9f54: r8 = String?
    //     0x5d9f54: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d9f58: r3 = Null
    //     0x5d9f58: add             x3, PP, #0x15, lsl #12  ; [pp+0x158d0] Null
    //     0x5d9f5c: ldr             x3, [x3, #0x8d0]
    // 0x5d9f60: r0 = String?()
    //     0x5d9f60: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d9f64: ldur            x1, [fp, #-0x10]
    // 0x5d9f68: r2 = "start_date"
    //     0x5d9f68: add             x2, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x5d9f6c: ldr             x2, [x2, #0x48]
    // 0x5d9f70: r0 = _getValueOrData()
    //     0x5d9f70: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9f74: ldur            x3, [fp, #-0x10]
    // 0x5d9f78: LoadField: r1 = r3->field_f
    //     0x5d9f78: ldur            w1, [x3, #0xf]
    // 0x5d9f7c: DecompressPointer r1
    //     0x5d9f7c: add             x1, x1, HEAP, lsl #32
    // 0x5d9f80: cmp             w1, w0
    // 0x5d9f84: b.ne            #0x5d9f90
    // 0x5d9f88: r4 = Null
    //     0x5d9f88: mov             x4, NULL
    // 0x5d9f8c: b               #0x5d9f94
    // 0x5d9f90: mov             x4, x0
    // 0x5d9f94: mov             x0, x4
    // 0x5d9f98: stur            x4, [fp, #-0x38]
    // 0x5d9f9c: r2 = Null
    //     0x5d9f9c: mov             x2, NULL
    // 0x5d9fa0: r1 = Null
    //     0x5d9fa0: mov             x1, NULL
    // 0x5d9fa4: r4 = 60
    //     0x5d9fa4: mov             x4, #0x3c
    // 0x5d9fa8: branchIfSmi(r0, 0x5d9fb4)
    //     0x5d9fa8: tbz             w0, #0, #0x5d9fb4
    // 0x5d9fac: r4 = LoadClassIdInstr(r0)
    //     0x5d9fac: ldur            x4, [x0, #-1]
    //     0x5d9fb0: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9fb4: cmp             x4, #0xe96
    // 0x5d9fb8: b.eq            #0x5d9fd0
    // 0x5d9fbc: r8 = Timestamp?
    //     0x5d9fbc: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5d9fc0: ldr             x8, [x8, #0x90]
    // 0x5d9fc4: r3 = Null
    //     0x5d9fc4: add             x3, PP, #0x15, lsl #12  ; [pp+0x158e0] Null
    //     0x5d9fc8: ldr             x3, [x3, #0x8e0]
    // 0x5d9fcc: r0 = DefaultNullableTypeTest()
    //     0x5d9fcc: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5d9fd0: ldur            x1, [fp, #-0x38]
    // 0x5d9fd4: cmp             w1, NULL
    // 0x5d9fd8: b.ne            #0x5d9fe4
    // 0x5d9fdc: r3 = Null
    //     0x5d9fdc: mov             x3, NULL
    // 0x5d9fe0: b               #0x5d9fec
    // 0x5d9fe4: r0 = toDate()
    //     0x5d9fe4: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5d9fe8: mov             x3, x0
    // 0x5d9fec: ldur            x0, [fp, #-0x10]
    // 0x5d9ff0: mov             x1, x0
    // 0x5d9ff4: stur            x3, [fp, #-0x38]
    // 0x5d9ff8: r2 = "end_date"
    //     0x5d9ff8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x5d9ffc: ldr             x2, [x2, #0x50]
    // 0x5da000: r0 = _getValueOrData()
    //     0x5da000: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da004: ldur            x3, [fp, #-0x10]
    // 0x5da008: LoadField: r1 = r3->field_f
    //     0x5da008: ldur            w1, [x3, #0xf]
    // 0x5da00c: DecompressPointer r1
    //     0x5da00c: add             x1, x1, HEAP, lsl #32
    // 0x5da010: cmp             w1, w0
    // 0x5da014: b.ne            #0x5da020
    // 0x5da018: r4 = Null
    //     0x5da018: mov             x4, NULL
    // 0x5da01c: b               #0x5da024
    // 0x5da020: mov             x4, x0
    // 0x5da024: mov             x0, x4
    // 0x5da028: stur            x4, [fp, #-0x40]
    // 0x5da02c: r2 = Null
    //     0x5da02c: mov             x2, NULL
    // 0x5da030: r1 = Null
    //     0x5da030: mov             x1, NULL
    // 0x5da034: r4 = 60
    //     0x5da034: mov             x4, #0x3c
    // 0x5da038: branchIfSmi(r0, 0x5da044)
    //     0x5da038: tbz             w0, #0, #0x5da044
    // 0x5da03c: r4 = LoadClassIdInstr(r0)
    //     0x5da03c: ldur            x4, [x0, #-1]
    //     0x5da040: ubfx            x4, x4, #0xc, #0x14
    // 0x5da044: cmp             x4, #0xe96
    // 0x5da048: b.eq            #0x5da060
    // 0x5da04c: r8 = Timestamp?
    //     0x5da04c: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5da050: ldr             x8, [x8, #0x90]
    // 0x5da054: r3 = Null
    //     0x5da054: add             x3, PP, #0x15, lsl #12  ; [pp+0x158f0] Null
    //     0x5da058: ldr             x3, [x3, #0x8f0]
    // 0x5da05c: r0 = DefaultNullableTypeTest()
    //     0x5da05c: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5da060: ldur            x1, [fp, #-0x40]
    // 0x5da064: cmp             w1, NULL
    // 0x5da068: b.ne            #0x5da074
    // 0x5da06c: r3 = Null
    //     0x5da06c: mov             x3, NULL
    // 0x5da070: b               #0x5da07c
    // 0x5da074: r0 = toDate()
    //     0x5da074: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5da078: mov             x3, x0
    // 0x5da07c: ldur            x0, [fp, #-0x10]
    // 0x5da080: mov             x1, x0
    // 0x5da084: stur            x3, [fp, #-0x40]
    // 0x5da088: r2 = "created_at"
    //     0x5da088: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5da08c: ldr             x2, [x2, #0xc00]
    // 0x5da090: r0 = _getValueOrData()
    //     0x5da090: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da094: ldur            x3, [fp, #-0x10]
    // 0x5da098: LoadField: r1 = r3->field_f
    //     0x5da098: ldur            w1, [x3, #0xf]
    // 0x5da09c: DecompressPointer r1
    //     0x5da09c: add             x1, x1, HEAP, lsl #32
    // 0x5da0a0: cmp             w1, w0
    // 0x5da0a4: b.ne            #0x5da0b0
    // 0x5da0a8: r4 = Null
    //     0x5da0a8: mov             x4, NULL
    // 0x5da0ac: b               #0x5da0b4
    // 0x5da0b0: mov             x4, x0
    // 0x5da0b4: mov             x0, x4
    // 0x5da0b8: stur            x4, [fp, #-0x48]
    // 0x5da0bc: r2 = Null
    //     0x5da0bc: mov             x2, NULL
    // 0x5da0c0: r1 = Null
    //     0x5da0c0: mov             x1, NULL
    // 0x5da0c4: r4 = 60
    //     0x5da0c4: mov             x4, #0x3c
    // 0x5da0c8: branchIfSmi(r0, 0x5da0d4)
    //     0x5da0c8: tbz             w0, #0, #0x5da0d4
    // 0x5da0cc: r4 = LoadClassIdInstr(r0)
    //     0x5da0cc: ldur            x4, [x0, #-1]
    //     0x5da0d0: ubfx            x4, x4, #0xc, #0x14
    // 0x5da0d4: cmp             x4, #0xe96
    // 0x5da0d8: b.eq            #0x5da0f0
    // 0x5da0dc: r8 = Timestamp?
    //     0x5da0dc: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5da0e0: ldr             x8, [x8, #0x90]
    // 0x5da0e4: r3 = Null
    //     0x5da0e4: add             x3, PP, #0x15, lsl #12  ; [pp+0x15900] Null
    //     0x5da0e8: ldr             x3, [x3, #0x900]
    // 0x5da0ec: r0 = DefaultNullableTypeTest()
    //     0x5da0ec: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5da0f0: ldur            x1, [fp, #-0x48]
    // 0x5da0f4: cmp             w1, NULL
    // 0x5da0f8: b.ne            #0x5da104
    // 0x5da0fc: r3 = Null
    //     0x5da0fc: mov             x3, NULL
    // 0x5da100: b               #0x5da10c
    // 0x5da104: r0 = toDate()
    //     0x5da104: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5da108: mov             x3, x0
    // 0x5da10c: ldur            x0, [fp, #-0x10]
    // 0x5da110: mov             x1, x0
    // 0x5da114: stur            x3, [fp, #-0x48]
    // 0x5da118: r2 = "updated_at"
    //     0x5da118: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5da11c: ldr             x2, [x2, #0x58]
    // 0x5da120: r0 = _getValueOrData()
    //     0x5da120: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5da124: mov             x1, x0
    // 0x5da128: ldur            x0, [fp, #-0x10]
    // 0x5da12c: LoadField: r2 = r0->field_f
    //     0x5da12c: ldur            w2, [x0, #0xf]
    // 0x5da130: DecompressPointer r2
    //     0x5da130: add             x2, x2, HEAP, lsl #32
    // 0x5da134: cmp             w2, w1
    // 0x5da138: b.ne            #0x5da144
    // 0x5da13c: r3 = Null
    //     0x5da13c: mov             x3, NULL
    // 0x5da140: b               #0x5da148
    // 0x5da144: mov             x3, x1
    // 0x5da148: mov             x0, x3
    // 0x5da14c: stur            x3, [fp, #-0x10]
    // 0x5da150: r2 = Null
    //     0x5da150: mov             x2, NULL
    // 0x5da154: r1 = Null
    //     0x5da154: mov             x1, NULL
    // 0x5da158: r4 = 60
    //     0x5da158: mov             x4, #0x3c
    // 0x5da15c: branchIfSmi(r0, 0x5da168)
    //     0x5da15c: tbz             w0, #0, #0x5da168
    // 0x5da160: r4 = LoadClassIdInstr(r0)
    //     0x5da160: ldur            x4, [x0, #-1]
    //     0x5da164: ubfx            x4, x4, #0xc, #0x14
    // 0x5da168: cmp             x4, #0xe96
    // 0x5da16c: b.eq            #0x5da184
    // 0x5da170: r8 = Timestamp?
    //     0x5da170: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5da174: ldr             x8, [x8, #0x90]
    // 0x5da178: r3 = Null
    //     0x5da178: add             x3, PP, #0x15, lsl #12  ; [pp+0x15910] Null
    //     0x5da17c: ldr             x3, [x3, #0x910]
    // 0x5da180: r0 = DefaultNullableTypeTest()
    //     0x5da180: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5da184: ldur            x1, [fp, #-0x10]
    // 0x5da188: cmp             w1, NULL
    // 0x5da18c: b.ne            #0x5da198
    // 0x5da190: r8 = Null
    //     0x5da190: mov             x8, NULL
    // 0x5da194: b               #0x5da1a0
    // 0x5da198: r0 = toDate()
    //     0x5da198: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5da19c: mov             x8, x0
    // 0x5da1a0: ldur            x6, [fp, #-0x18]
    // 0x5da1a4: ldur            x2, [fp, #-0x38]
    // 0x5da1a8: ldur            x1, [fp, #-0x40]
    // 0x5da1ac: ldur            x0, [fp, #-0x48]
    // 0x5da1b0: ldur            x5, [fp, #-0x20]
    // 0x5da1b4: ldur            x4, [fp, #-0x28]
    // 0x5da1b8: ldur            x3, [fp, #-0x30]
    // 0x5da1bc: ldur            x7, [fp, #-8]
    // 0x5da1c0: stur            x8, [fp, #-0x10]
    // 0x5da1c4: r0 = TripModel()
    //     0x5da1c4: bl              #0x5da4b4  ; AllocateTripModelStub -> TripModel (size=0x2c)
    // 0x5da1c8: ldur            x1, [fp, #-8]
    // 0x5da1cc: StoreField: r0->field_7 = r1
    //     0x5da1cc: stur            w1, [x0, #7]
    // 0x5da1d0: ldur            x1, [fp, #-0x18]
    // 0x5da1d4: StoreField: r0->field_b = r1
    //     0x5da1d4: stur            w1, [x0, #0xb]
    // 0x5da1d8: ldur            x1, [fp, #-0x20]
    // 0x5da1dc: StoreField: r0->field_f = r1
    //     0x5da1dc: stur            w1, [x0, #0xf]
    // 0x5da1e0: ldur            x1, [fp, #-0x38]
    // 0x5da1e4: StoreField: r0->field_13 = r1
    //     0x5da1e4: stur            w1, [x0, #0x13]
    // 0x5da1e8: ldur            x1, [fp, #-0x40]
    // 0x5da1ec: ArrayStore: r0[0] = r1  ; List_4
    //     0x5da1ec: stur            w1, [x0, #0x17]
    // 0x5da1f0: ldur            x1, [fp, #-0x28]
    // 0x5da1f4: StoreField: r0->field_1b = r1
    //     0x5da1f4: stur            w1, [x0, #0x1b]
    // 0x5da1f8: ldur            x1, [fp, #-0x30]
    // 0x5da1fc: StoreField: r0->field_1f = r1
    //     0x5da1fc: stur            w1, [x0, #0x1f]
    // 0x5da200: ldur            x1, [fp, #-0x48]
    // 0x5da204: StoreField: r0->field_23 = r1
    //     0x5da204: stur            w1, [x0, #0x23]
    // 0x5da208: ldur            x1, [fp, #-0x10]
    // 0x5da20c: StoreField: r0->field_27 = r1
    //     0x5da20c: stur            w1, [x0, #0x27]
    // 0x5da210: LeaveFrame
    //     0x5da210: mov             SP, fp
    //     0x5da214: ldp             fp, lr, [SP], #0x10
    // 0x5da218: ret
    //     0x5da218: ret             
    // 0x5da21c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5da21c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5da220: b               #0x5d9d54
  }
  Map<String, dynamic> toJson(TripModel) {
    // ** addr: 0x5da23c, size: 0x48
    // 0x5da23c: EnterFrame
    //     0x5da23c: stp             fp, lr, [SP, #-0x10]!
    //     0x5da240: mov             fp, SP
    // 0x5da244: CheckStackOverflow
    //     0x5da244: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5da248: cmp             SP, x16
    //     0x5da24c: b.ls            #0x5da264
    // 0x5da250: ldr             x1, [fp, #0x10]
    // 0x5da254: r0 = toJson()
    //     0x5da254: bl              #0x5da26c  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::toJson
    // 0x5da258: LeaveFrame
    //     0x5da258: mov             SP, fp
    //     0x5da25c: ldp             fp, lr, [SP], #0x10
    // 0x5da260: ret
    //     0x5da260: ret             
    // 0x5da264: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5da264: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5da268: b               #0x5da250
  }
  Map<String, dynamic> toJson(TripModel) {
    // ** addr: 0x5da26c, size: 0x228
    // 0x5da26c: EnterFrame
    //     0x5da26c: stp             fp, lr, [SP, #-0x10]!
    //     0x5da270: mov             fp, SP
    // 0x5da274: AllocStack(0x20)
    //     0x5da274: sub             SP, SP, #0x20
    // 0x5da278: SetupParameters(TripModel this /* r1 => r0, fp-0x8 */)
    //     0x5da278: mov             x0, x1
    //     0x5da27c: stur            x1, [fp, #-8]
    // 0x5da280: CheckStackOverflow
    //     0x5da280: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5da284: cmp             SP, x16
    //     0x5da288: b.ls            #0x5da48c
    // 0x5da28c: r1 = Null
    //     0x5da28c: mov             x1, NULL
    // 0x5da290: r2 = 36
    //     0x5da290: mov             x2, #0x24
    // 0x5da294: r0 = AllocateArray()
    //     0x5da294: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5da298: stur            x0, [fp, #-0x10]
    // 0x5da29c: r16 = "id"
    //     0x5da29c: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5da2a0: ldr             x16, [x16, #0xae8]
    // 0x5da2a4: StoreField: r0->field_f = r16
    //     0x5da2a4: stur            w16, [x0, #0xf]
    // 0x5da2a8: ldur            x2, [fp, #-8]
    // 0x5da2ac: LoadField: r1 = r2->field_7
    //     0x5da2ac: ldur            w1, [x2, #7]
    // 0x5da2b0: DecompressPointer r1
    //     0x5da2b0: add             x1, x1, HEAP, lsl #32
    // 0x5da2b4: StoreField: r0->field_13 = r1
    //     0x5da2b4: stur            w1, [x0, #0x13]
    // 0x5da2b8: r16 = "name"
    //     0x5da2b8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5da2bc: ArrayStore: r0[0] = r16  ; List_4
    //     0x5da2bc: stur            w16, [x0, #0x17]
    // 0x5da2c0: LoadField: r1 = r2->field_b
    //     0x5da2c0: ldur            w1, [x2, #0xb]
    // 0x5da2c4: DecompressPointer r1
    //     0x5da2c4: add             x1, x1, HEAP, lsl #32
    // 0x5da2c8: StoreField: r0->field_1b = r1
    //     0x5da2c8: stur            w1, [x0, #0x1b]
    // 0x5da2cc: r16 = "location"
    //     0x5da2cc: ldr             x16, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x5da2d0: StoreField: r0->field_1f = r16
    //     0x5da2d0: stur            w16, [x0, #0x1f]
    // 0x5da2d4: LoadField: r1 = r2->field_f
    //     0x5da2d4: ldur            w1, [x2, #0xf]
    // 0x5da2d8: DecompressPointer r1
    //     0x5da2d8: add             x1, x1, HEAP, lsl #32
    // 0x5da2dc: StoreField: r0->field_23 = r1
    //     0x5da2dc: stur            w1, [x0, #0x23]
    // 0x5da2e0: r16 = "note"
    //     0x5da2e0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x5da2e4: ldr             x16, [x16, #0x30]
    // 0x5da2e8: StoreField: r0->field_27 = r16
    //     0x5da2e8: stur            w16, [x0, #0x27]
    // 0x5da2ec: LoadField: r1 = r2->field_1b
    //     0x5da2ec: ldur            w1, [x2, #0x1b]
    // 0x5da2f0: DecompressPointer r1
    //     0x5da2f0: add             x1, x1, HEAP, lsl #32
    // 0x5da2f4: StoreField: r0->field_2b = r1
    //     0x5da2f4: stur            w1, [x0, #0x2b]
    // 0x5da2f8: r16 = "agency_id"
    //     0x5da2f8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5da2fc: ldr             x16, [x16, #0x40]
    // 0x5da300: StoreField: r0->field_2f = r16
    //     0x5da300: stur            w16, [x0, #0x2f]
    // 0x5da304: LoadField: r1 = r2->field_1f
    //     0x5da304: ldur            w1, [x2, #0x1f]
    // 0x5da308: DecompressPointer r1
    //     0x5da308: add             x1, x1, HEAP, lsl #32
    // 0x5da30c: StoreField: r0->field_33 = r1
    //     0x5da30c: stur            w1, [x0, #0x33]
    // 0x5da310: r16 = "start_date"
    //     0x5da310: add             x16, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x5da314: ldr             x16, [x16, #0x48]
    // 0x5da318: StoreField: r0->field_37 = r16
    //     0x5da318: stur            w16, [x0, #0x37]
    // 0x5da31c: LoadField: r1 = r2->field_13
    //     0x5da31c: ldur            w1, [x2, #0x13]
    // 0x5da320: DecompressPointer r1
    //     0x5da320: add             x1, x1, HEAP, lsl #32
    // 0x5da324: cmp             w1, NULL
    // 0x5da328: b.ne            #0x5da33c
    // 0x5da32c: mov             x3, x2
    // 0x5da330: mov             x2, x0
    // 0x5da334: r0 = Null
    //     0x5da334: mov             x0, NULL
    // 0x5da338: b               #0x5da348
    // 0x5da33c: r0 = toIso8601String()
    //     0x5da33c: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5da340: ldur            x3, [fp, #-8]
    // 0x5da344: ldur            x2, [fp, #-0x10]
    // 0x5da348: mov             x1, x2
    // 0x5da34c: ArrayStore: r1[11] = r0  ; List_4
    //     0x5da34c: add             x25, x1, #0x3b
    //     0x5da350: str             w0, [x25]
    //     0x5da354: tbz             w0, #0, #0x5da370
    //     0x5da358: ldurb           w16, [x1, #-1]
    //     0x5da35c: ldurb           w17, [x0, #-1]
    //     0x5da360: and             x16, x17, x16, lsr #2
    //     0x5da364: tst             x16, HEAP, lsr #32
    //     0x5da368: b.eq            #0x5da370
    //     0x5da36c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5da370: r16 = "end_date"
    //     0x5da370: add             x16, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x5da374: ldr             x16, [x16, #0x50]
    // 0x5da378: StoreField: r2->field_3f = r16
    //     0x5da378: stur            w16, [x2, #0x3f]
    // 0x5da37c: ArrayLoad: r1 = r3[0]  ; List_4
    //     0x5da37c: ldur            w1, [x3, #0x17]
    // 0x5da380: DecompressPointer r1
    //     0x5da380: add             x1, x1, HEAP, lsl #32
    // 0x5da384: cmp             w1, NULL
    // 0x5da388: b.ne            #0x5da394
    // 0x5da38c: r0 = Null
    //     0x5da38c: mov             x0, NULL
    // 0x5da390: b               #0x5da3a0
    // 0x5da394: r0 = toIso8601String()
    //     0x5da394: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5da398: ldur            x3, [fp, #-8]
    // 0x5da39c: ldur            x2, [fp, #-0x10]
    // 0x5da3a0: mov             x1, x2
    // 0x5da3a4: ArrayStore: r1[13] = r0  ; List_4
    //     0x5da3a4: add             x25, x1, #0x43
    //     0x5da3a8: str             w0, [x25]
    //     0x5da3ac: tbz             w0, #0, #0x5da3c8
    //     0x5da3b0: ldurb           w16, [x1, #-1]
    //     0x5da3b4: ldurb           w17, [x0, #-1]
    //     0x5da3b8: and             x16, x17, x16, lsr #2
    //     0x5da3bc: tst             x16, HEAP, lsr #32
    //     0x5da3c0: b.eq            #0x5da3c8
    //     0x5da3c4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5da3c8: r16 = "created_at"
    //     0x5da3c8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5da3cc: ldr             x16, [x16, #0xc00]
    // 0x5da3d0: StoreField: r2->field_47 = r16
    //     0x5da3d0: stur            w16, [x2, #0x47]
    // 0x5da3d4: LoadField: r1 = r3->field_23
    //     0x5da3d4: ldur            w1, [x3, #0x23]
    // 0x5da3d8: DecompressPointer r1
    //     0x5da3d8: add             x1, x1, HEAP, lsl #32
    // 0x5da3dc: cmp             w1, NULL
    // 0x5da3e0: b.ne            #0x5da3ec
    // 0x5da3e4: r0 = Null
    //     0x5da3e4: mov             x0, NULL
    // 0x5da3e8: b               #0x5da3f8
    // 0x5da3ec: r0 = toIso8601String()
    //     0x5da3ec: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5da3f0: ldur            x3, [fp, #-8]
    // 0x5da3f4: ldur            x2, [fp, #-0x10]
    // 0x5da3f8: mov             x1, x2
    // 0x5da3fc: ArrayStore: r1[15] = r0  ; List_4
    //     0x5da3fc: add             x25, x1, #0x4b
    //     0x5da400: str             w0, [x25]
    //     0x5da404: tbz             w0, #0, #0x5da420
    //     0x5da408: ldurb           w16, [x1, #-1]
    //     0x5da40c: ldurb           w17, [x0, #-1]
    //     0x5da410: and             x16, x17, x16, lsr #2
    //     0x5da414: tst             x16, HEAP, lsr #32
    //     0x5da418: b.eq            #0x5da420
    //     0x5da41c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5da420: r16 = "updated_at"
    //     0x5da420: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5da424: ldr             x16, [x16, #0x58]
    // 0x5da428: StoreField: r2->field_4f = r16
    //     0x5da428: stur            w16, [x2, #0x4f]
    // 0x5da42c: LoadField: r1 = r3->field_27
    //     0x5da42c: ldur            w1, [x3, #0x27]
    // 0x5da430: DecompressPointer r1
    //     0x5da430: add             x1, x1, HEAP, lsl #32
    // 0x5da434: cmp             w1, NULL
    // 0x5da438: b.ne            #0x5da444
    // 0x5da43c: r0 = Null
    //     0x5da43c: mov             x0, NULL
    // 0x5da440: b               #0x5da448
    // 0x5da444: r0 = toIso8601String()
    //     0x5da444: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5da448: ldur            x1, [fp, #-0x10]
    // 0x5da44c: ArrayStore: r1[17] = r0  ; List_4
    //     0x5da44c: add             x25, x1, #0x53
    //     0x5da450: str             w0, [x25]
    //     0x5da454: tbz             w0, #0, #0x5da470
    //     0x5da458: ldurb           w16, [x1, #-1]
    //     0x5da45c: ldurb           w17, [x0, #-1]
    //     0x5da460: and             x16, x17, x16, lsr #2
    //     0x5da464: tst             x16, HEAP, lsr #32
    //     0x5da468: b.eq            #0x5da470
    //     0x5da46c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5da470: r16 = <String, dynamic>
    //     0x5da470: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5da474: ldur            lr, [fp, #-0x10]
    // 0x5da478: stp             lr, x16, [SP]
    // 0x5da47c: r0 = Map._fromLiteral()
    //     0x5da47c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5da480: LeaveFrame
    //     0x5da480: mov             SP, fp
    //     0x5da484: ldp             fp, lr, [SP], #0x10
    // 0x5da488: ret
    //     0x5da488: ret             
    // 0x5da48c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5da48c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5da490: b               #0x5da28c
  }
  factory _ TripModel.fromJson(/* No info */) {
    // ** addr: 0x5f3214, size: 0x5ac
    // 0x5f3214: EnterFrame
    //     0x5f3214: stp             fp, lr, [SP, #-0x10]!
    //     0x5f3218: mov             fp, SP
    // 0x5f321c: AllocStack(0x48)
    //     0x5f321c: sub             SP, SP, #0x48
    // 0x5f3220: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5f3220: mov             x0, x2
    //     0x5f3224: stur            x2, [fp, #-8]
    // 0x5f3228: CheckStackOverflow
    //     0x5f3228: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f322c: cmp             SP, x16
    //     0x5f3230: b.ls            #0x5f37b8
    // 0x5f3234: mov             x1, x0
    // 0x5f3238: r2 = "id"
    //     0x5f3238: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5f323c: ldr             x2, [x2, #0xae8]
    // 0x5f3240: r0 = _getValueOrData()
    //     0x5f3240: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3244: ldur            x3, [fp, #-8]
    // 0x5f3248: LoadField: r1 = r3->field_f
    //     0x5f3248: ldur            w1, [x3, #0xf]
    // 0x5f324c: DecompressPointer r1
    //     0x5f324c: add             x1, x1, HEAP, lsl #32
    // 0x5f3250: cmp             w1, w0
    // 0x5f3254: b.ne            #0x5f325c
    // 0x5f3258: r0 = Null
    //     0x5f3258: mov             x0, NULL
    // 0x5f325c: cmp             w0, NULL
    // 0x5f3260: b.ne            #0x5f326c
    // 0x5f3264: r4 = ""
    //     0x5f3264: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f3268: b               #0x5f3270
    // 0x5f326c: mov             x4, x0
    // 0x5f3270: mov             x0, x4
    // 0x5f3274: stur            x4, [fp, #-0x10]
    // 0x5f3278: r2 = Null
    //     0x5f3278: mov             x2, NULL
    // 0x5f327c: r1 = Null
    //     0x5f327c: mov             x1, NULL
    // 0x5f3280: r4 = 60
    //     0x5f3280: mov             x4, #0x3c
    // 0x5f3284: branchIfSmi(r0, 0x5f3290)
    //     0x5f3284: tbz             w0, #0, #0x5f3290
    // 0x5f3288: r4 = LoadClassIdInstr(r0)
    //     0x5f3288: ldur            x4, [x0, #-1]
    //     0x5f328c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3290: sub             x4, x4, #0x5e
    // 0x5f3294: cmp             x4, #1
    // 0x5f3298: b.ls            #0x5f32ac
    // 0x5f329c: r8 = String
    //     0x5f329c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f32a0: r3 = Null
    //     0x5f32a0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a020] Null
    //     0x5f32a4: ldr             x3, [x3, #0x20]
    // 0x5f32a8: r0 = String()
    //     0x5f32a8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f32ac: ldur            x1, [fp, #-8]
    // 0x5f32b0: r2 = "name"
    //     0x5f32b0: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5f32b4: r0 = _getValueOrData()
    //     0x5f32b4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f32b8: ldur            x3, [fp, #-8]
    // 0x5f32bc: LoadField: r1 = r3->field_f
    //     0x5f32bc: ldur            w1, [x3, #0xf]
    // 0x5f32c0: DecompressPointer r1
    //     0x5f32c0: add             x1, x1, HEAP, lsl #32
    // 0x5f32c4: cmp             w1, w0
    // 0x5f32c8: b.ne            #0x5f32d0
    // 0x5f32cc: r0 = Null
    //     0x5f32cc: mov             x0, NULL
    // 0x5f32d0: cmp             w0, NULL
    // 0x5f32d4: b.ne            #0x5f32e0
    // 0x5f32d8: r4 = ""
    //     0x5f32d8: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f32dc: b               #0x5f32e4
    // 0x5f32e0: mov             x4, x0
    // 0x5f32e4: mov             x0, x4
    // 0x5f32e8: stur            x4, [fp, #-0x18]
    // 0x5f32ec: r2 = Null
    //     0x5f32ec: mov             x2, NULL
    // 0x5f32f0: r1 = Null
    //     0x5f32f0: mov             x1, NULL
    // 0x5f32f4: r4 = 60
    //     0x5f32f4: mov             x4, #0x3c
    // 0x5f32f8: branchIfSmi(r0, 0x5f3304)
    //     0x5f32f8: tbz             w0, #0, #0x5f3304
    // 0x5f32fc: r4 = LoadClassIdInstr(r0)
    //     0x5f32fc: ldur            x4, [x0, #-1]
    //     0x5f3300: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3304: sub             x4, x4, #0x5e
    // 0x5f3308: cmp             x4, #1
    // 0x5f330c: b.ls            #0x5f3320
    // 0x5f3310: r8 = String
    //     0x5f3310: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3314: r3 = Null
    //     0x5f3314: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a030] Null
    //     0x5f3318: ldr             x3, [x3, #0x30]
    // 0x5f331c: r0 = String()
    //     0x5f331c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f3320: ldur            x1, [fp, #-8]
    // 0x5f3324: r2 = "location"
    //     0x5f3324: ldr             x2, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x5f3328: r0 = _getValueOrData()
    //     0x5f3328: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f332c: ldur            x3, [fp, #-8]
    // 0x5f3330: LoadField: r1 = r3->field_f
    //     0x5f3330: ldur            w1, [x3, #0xf]
    // 0x5f3334: DecompressPointer r1
    //     0x5f3334: add             x1, x1, HEAP, lsl #32
    // 0x5f3338: cmp             w1, w0
    // 0x5f333c: b.ne            #0x5f3348
    // 0x5f3340: r4 = Null
    //     0x5f3340: mov             x4, NULL
    // 0x5f3344: b               #0x5f334c
    // 0x5f3348: mov             x4, x0
    // 0x5f334c: mov             x0, x4
    // 0x5f3350: stur            x4, [fp, #-0x20]
    // 0x5f3354: r2 = Null
    //     0x5f3354: mov             x2, NULL
    // 0x5f3358: r1 = Null
    //     0x5f3358: mov             x1, NULL
    // 0x5f335c: r4 = 60
    //     0x5f335c: mov             x4, #0x3c
    // 0x5f3360: branchIfSmi(r0, 0x5f336c)
    //     0x5f3360: tbz             w0, #0, #0x5f336c
    // 0x5f3364: r4 = LoadClassIdInstr(r0)
    //     0x5f3364: ldur            x4, [x0, #-1]
    //     0x5f3368: ubfx            x4, x4, #0xc, #0x14
    // 0x5f336c: sub             x4, x4, #0x5e
    // 0x5f3370: cmp             x4, #1
    // 0x5f3374: b.ls            #0x5f3388
    // 0x5f3378: r8 = String?
    //     0x5f3378: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f337c: r3 = Null
    //     0x5f337c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a040] Null
    //     0x5f3380: ldr             x3, [x3, #0x40]
    // 0x5f3384: r0 = String?()
    //     0x5f3384: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f3388: ldur            x1, [fp, #-8]
    // 0x5f338c: r2 = "note"
    //     0x5f338c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x5f3390: ldr             x2, [x2, #0x30]
    // 0x5f3394: r0 = _getValueOrData()
    //     0x5f3394: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3398: ldur            x3, [fp, #-8]
    // 0x5f339c: LoadField: r1 = r3->field_f
    //     0x5f339c: ldur            w1, [x3, #0xf]
    // 0x5f33a0: DecompressPointer r1
    //     0x5f33a0: add             x1, x1, HEAP, lsl #32
    // 0x5f33a4: cmp             w1, w0
    // 0x5f33a8: b.ne            #0x5f33b4
    // 0x5f33ac: r4 = Null
    //     0x5f33ac: mov             x4, NULL
    // 0x5f33b0: b               #0x5f33b8
    // 0x5f33b4: mov             x4, x0
    // 0x5f33b8: mov             x0, x4
    // 0x5f33bc: stur            x4, [fp, #-0x28]
    // 0x5f33c0: r2 = Null
    //     0x5f33c0: mov             x2, NULL
    // 0x5f33c4: r1 = Null
    //     0x5f33c4: mov             x1, NULL
    // 0x5f33c8: r4 = 60
    //     0x5f33c8: mov             x4, #0x3c
    // 0x5f33cc: branchIfSmi(r0, 0x5f33d8)
    //     0x5f33cc: tbz             w0, #0, #0x5f33d8
    // 0x5f33d0: r4 = LoadClassIdInstr(r0)
    //     0x5f33d0: ldur            x4, [x0, #-1]
    //     0x5f33d4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f33d8: sub             x4, x4, #0x5e
    // 0x5f33dc: cmp             x4, #1
    // 0x5f33e0: b.ls            #0x5f33f4
    // 0x5f33e4: r8 = String?
    //     0x5f33e4: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f33e8: r3 = Null
    //     0x5f33e8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a050] Null
    //     0x5f33ec: ldr             x3, [x3, #0x50]
    // 0x5f33f0: r0 = String?()
    //     0x5f33f0: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f33f4: ldur            x1, [fp, #-8]
    // 0x5f33f8: r2 = "agency_id"
    //     0x5f33f8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5f33fc: ldr             x2, [x2, #0x40]
    // 0x5f3400: r0 = _getValueOrData()
    //     0x5f3400: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3404: ldur            x3, [fp, #-8]
    // 0x5f3408: LoadField: r1 = r3->field_f
    //     0x5f3408: ldur            w1, [x3, #0xf]
    // 0x5f340c: DecompressPointer r1
    //     0x5f340c: add             x1, x1, HEAP, lsl #32
    // 0x5f3410: cmp             w1, w0
    // 0x5f3414: b.ne            #0x5f3420
    // 0x5f3418: r4 = Null
    //     0x5f3418: mov             x4, NULL
    // 0x5f341c: b               #0x5f3424
    // 0x5f3420: mov             x4, x0
    // 0x5f3424: mov             x0, x4
    // 0x5f3428: stur            x4, [fp, #-0x30]
    // 0x5f342c: r2 = Null
    //     0x5f342c: mov             x2, NULL
    // 0x5f3430: r1 = Null
    //     0x5f3430: mov             x1, NULL
    // 0x5f3434: r4 = 60
    //     0x5f3434: mov             x4, #0x3c
    // 0x5f3438: branchIfSmi(r0, 0x5f3444)
    //     0x5f3438: tbz             w0, #0, #0x5f3444
    // 0x5f343c: r4 = LoadClassIdInstr(r0)
    //     0x5f343c: ldur            x4, [x0, #-1]
    //     0x5f3440: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3444: sub             x4, x4, #0x5e
    // 0x5f3448: cmp             x4, #1
    // 0x5f344c: b.ls            #0x5f3460
    // 0x5f3450: r8 = String?
    //     0x5f3450: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f3454: r3 = Null
    //     0x5f3454: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a060] Null
    //     0x5f3458: ldr             x3, [x3, #0x60]
    // 0x5f345c: r0 = String?()
    //     0x5f345c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f3460: ldur            x1, [fp, #-8]
    // 0x5f3464: r2 = "start_date"
    //     0x5f3464: add             x2, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x5f3468: ldr             x2, [x2, #0x48]
    // 0x5f346c: r0 = _getValueOrData()
    //     0x5f346c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3470: mov             x1, x0
    // 0x5f3474: ldur            x0, [fp, #-8]
    // 0x5f3478: LoadField: r2 = r0->field_f
    //     0x5f3478: ldur            w2, [x0, #0xf]
    // 0x5f347c: DecompressPointer r2
    //     0x5f347c: add             x2, x2, HEAP, lsl #32
    // 0x5f3480: cmp             w2, w1
    // 0x5f3484: b.eq            #0x5f350c
    // 0x5f3488: cmp             w1, NULL
    // 0x5f348c: b.eq            #0x5f350c
    // 0x5f3490: mov             x1, x0
    // 0x5f3494: r2 = "start_date"
    //     0x5f3494: add             x2, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x5f3498: ldr             x2, [x2, #0x48]
    // 0x5f349c: r0 = _getValueOrData()
    //     0x5f349c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f34a0: ldur            x3, [fp, #-8]
    // 0x5f34a4: LoadField: r1 = r3->field_f
    //     0x5f34a4: ldur            w1, [x3, #0xf]
    // 0x5f34a8: DecompressPointer r1
    //     0x5f34a8: add             x1, x1, HEAP, lsl #32
    // 0x5f34ac: cmp             w1, w0
    // 0x5f34b0: b.ne            #0x5f34bc
    // 0x5f34b4: r4 = Null
    //     0x5f34b4: mov             x4, NULL
    // 0x5f34b8: b               #0x5f34c0
    // 0x5f34bc: mov             x4, x0
    // 0x5f34c0: mov             x0, x4
    // 0x5f34c4: stur            x4, [fp, #-0x38]
    // 0x5f34c8: r2 = Null
    //     0x5f34c8: mov             x2, NULL
    // 0x5f34cc: r1 = Null
    //     0x5f34cc: mov             x1, NULL
    // 0x5f34d0: r4 = 60
    //     0x5f34d0: mov             x4, #0x3c
    // 0x5f34d4: branchIfSmi(r0, 0x5f34e0)
    //     0x5f34d4: tbz             w0, #0, #0x5f34e0
    // 0x5f34d8: r4 = LoadClassIdInstr(r0)
    //     0x5f34d8: ldur            x4, [x0, #-1]
    //     0x5f34dc: ubfx            x4, x4, #0xc, #0x14
    // 0x5f34e0: sub             x4, x4, #0x5e
    // 0x5f34e4: cmp             x4, #1
    // 0x5f34e8: b.ls            #0x5f34fc
    // 0x5f34ec: r8 = String
    //     0x5f34ec: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f34f0: r3 = Null
    //     0x5f34f0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a070] Null
    //     0x5f34f4: ldr             x3, [x3, #0x70]
    // 0x5f34f8: r0 = String()
    //     0x5f34f8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f34fc: ldur            x1, [fp, #-0x38]
    // 0x5f3500: r0 = parse()
    //     0x5f3500: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f3504: mov             x3, x0
    // 0x5f3508: b               #0x5f3510
    // 0x5f350c: r3 = Null
    //     0x5f350c: mov             x3, NULL
    // 0x5f3510: ldur            x0, [fp, #-8]
    // 0x5f3514: mov             x1, x0
    // 0x5f3518: stur            x3, [fp, #-0x38]
    // 0x5f351c: r2 = "end_date"
    //     0x5f351c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x5f3520: ldr             x2, [x2, #0x50]
    // 0x5f3524: r0 = _getValueOrData()
    //     0x5f3524: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3528: mov             x1, x0
    // 0x5f352c: ldur            x0, [fp, #-8]
    // 0x5f3530: LoadField: r2 = r0->field_f
    //     0x5f3530: ldur            w2, [x0, #0xf]
    // 0x5f3534: DecompressPointer r2
    //     0x5f3534: add             x2, x2, HEAP, lsl #32
    // 0x5f3538: cmp             w2, w1
    // 0x5f353c: b.eq            #0x5f35c4
    // 0x5f3540: cmp             w1, NULL
    // 0x5f3544: b.eq            #0x5f35c4
    // 0x5f3548: mov             x1, x0
    // 0x5f354c: r2 = "end_date"
    //     0x5f354c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x5f3550: ldr             x2, [x2, #0x50]
    // 0x5f3554: r0 = _getValueOrData()
    //     0x5f3554: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3558: ldur            x3, [fp, #-8]
    // 0x5f355c: LoadField: r1 = r3->field_f
    //     0x5f355c: ldur            w1, [x3, #0xf]
    // 0x5f3560: DecompressPointer r1
    //     0x5f3560: add             x1, x1, HEAP, lsl #32
    // 0x5f3564: cmp             w1, w0
    // 0x5f3568: b.ne            #0x5f3574
    // 0x5f356c: r4 = Null
    //     0x5f356c: mov             x4, NULL
    // 0x5f3570: b               #0x5f3578
    // 0x5f3574: mov             x4, x0
    // 0x5f3578: mov             x0, x4
    // 0x5f357c: stur            x4, [fp, #-0x40]
    // 0x5f3580: r2 = Null
    //     0x5f3580: mov             x2, NULL
    // 0x5f3584: r1 = Null
    //     0x5f3584: mov             x1, NULL
    // 0x5f3588: r4 = 60
    //     0x5f3588: mov             x4, #0x3c
    // 0x5f358c: branchIfSmi(r0, 0x5f3598)
    //     0x5f358c: tbz             w0, #0, #0x5f3598
    // 0x5f3590: r4 = LoadClassIdInstr(r0)
    //     0x5f3590: ldur            x4, [x0, #-1]
    //     0x5f3594: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3598: sub             x4, x4, #0x5e
    // 0x5f359c: cmp             x4, #1
    // 0x5f35a0: b.ls            #0x5f35b4
    // 0x5f35a4: r8 = String
    //     0x5f35a4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f35a8: r3 = Null
    //     0x5f35a8: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a080] Null
    //     0x5f35ac: ldr             x3, [x3, #0x80]
    // 0x5f35b0: r0 = String()
    //     0x5f35b0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f35b4: ldur            x1, [fp, #-0x40]
    // 0x5f35b8: r0 = parse()
    //     0x5f35b8: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f35bc: mov             x3, x0
    // 0x5f35c0: b               #0x5f35c8
    // 0x5f35c4: r3 = Null
    //     0x5f35c4: mov             x3, NULL
    // 0x5f35c8: ldur            x0, [fp, #-8]
    // 0x5f35cc: mov             x1, x0
    // 0x5f35d0: stur            x3, [fp, #-0x40]
    // 0x5f35d4: r2 = "created_at"
    //     0x5f35d4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f35d8: ldr             x2, [x2, #0xc00]
    // 0x5f35dc: r0 = _getValueOrData()
    //     0x5f35dc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f35e0: mov             x1, x0
    // 0x5f35e4: ldur            x0, [fp, #-8]
    // 0x5f35e8: LoadField: r2 = r0->field_f
    //     0x5f35e8: ldur            w2, [x0, #0xf]
    // 0x5f35ec: DecompressPointer r2
    //     0x5f35ec: add             x2, x2, HEAP, lsl #32
    // 0x5f35f0: cmp             w2, w1
    // 0x5f35f4: b.eq            #0x5f367c
    // 0x5f35f8: cmp             w1, NULL
    // 0x5f35fc: b.eq            #0x5f367c
    // 0x5f3600: mov             x1, x0
    // 0x5f3604: r2 = "created_at"
    //     0x5f3604: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f3608: ldr             x2, [x2, #0xc00]
    // 0x5f360c: r0 = _getValueOrData()
    //     0x5f360c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3610: ldur            x3, [fp, #-8]
    // 0x5f3614: LoadField: r1 = r3->field_f
    //     0x5f3614: ldur            w1, [x3, #0xf]
    // 0x5f3618: DecompressPointer r1
    //     0x5f3618: add             x1, x1, HEAP, lsl #32
    // 0x5f361c: cmp             w1, w0
    // 0x5f3620: b.ne            #0x5f362c
    // 0x5f3624: r4 = Null
    //     0x5f3624: mov             x4, NULL
    // 0x5f3628: b               #0x5f3630
    // 0x5f362c: mov             x4, x0
    // 0x5f3630: mov             x0, x4
    // 0x5f3634: stur            x4, [fp, #-0x48]
    // 0x5f3638: r2 = Null
    //     0x5f3638: mov             x2, NULL
    // 0x5f363c: r1 = Null
    //     0x5f363c: mov             x1, NULL
    // 0x5f3640: r4 = 60
    //     0x5f3640: mov             x4, #0x3c
    // 0x5f3644: branchIfSmi(r0, 0x5f3650)
    //     0x5f3644: tbz             w0, #0, #0x5f3650
    // 0x5f3648: r4 = LoadClassIdInstr(r0)
    //     0x5f3648: ldur            x4, [x0, #-1]
    //     0x5f364c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3650: sub             x4, x4, #0x5e
    // 0x5f3654: cmp             x4, #1
    // 0x5f3658: b.ls            #0x5f366c
    // 0x5f365c: r8 = String
    //     0x5f365c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3660: r3 = Null
    //     0x5f3660: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a090] Null
    //     0x5f3664: ldr             x3, [x3, #0x90]
    // 0x5f3668: r0 = String()
    //     0x5f3668: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f366c: ldur            x1, [fp, #-0x48]
    // 0x5f3670: r0 = parse()
    //     0x5f3670: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f3674: mov             x3, x0
    // 0x5f3678: b               #0x5f3680
    // 0x5f367c: r3 = Null
    //     0x5f367c: mov             x3, NULL
    // 0x5f3680: ldur            x0, [fp, #-8]
    // 0x5f3684: mov             x1, x0
    // 0x5f3688: stur            x3, [fp, #-0x48]
    // 0x5f368c: r2 = "updated_at"
    //     0x5f368c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f3690: ldr             x2, [x2, #0x58]
    // 0x5f3694: r0 = _getValueOrData()
    //     0x5f3694: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3698: mov             x1, x0
    // 0x5f369c: ldur            x0, [fp, #-8]
    // 0x5f36a0: LoadField: r2 = r0->field_f
    //     0x5f36a0: ldur            w2, [x0, #0xf]
    // 0x5f36a4: DecompressPointer r2
    //     0x5f36a4: add             x2, x2, HEAP, lsl #32
    // 0x5f36a8: cmp             w2, w1
    // 0x5f36ac: b.eq            #0x5f3738
    // 0x5f36b0: cmp             w1, NULL
    // 0x5f36b4: b.eq            #0x5f3738
    // 0x5f36b8: mov             x1, x0
    // 0x5f36bc: r2 = "updated_at"
    //     0x5f36bc: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f36c0: ldr             x2, [x2, #0x58]
    // 0x5f36c4: r0 = _getValueOrData()
    //     0x5f36c4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f36c8: mov             x1, x0
    // 0x5f36cc: ldur            x0, [fp, #-8]
    // 0x5f36d0: LoadField: r2 = r0->field_f
    //     0x5f36d0: ldur            w2, [x0, #0xf]
    // 0x5f36d4: DecompressPointer r2
    //     0x5f36d4: add             x2, x2, HEAP, lsl #32
    // 0x5f36d8: cmp             w2, w1
    // 0x5f36dc: b.ne            #0x5f36e8
    // 0x5f36e0: r3 = Null
    //     0x5f36e0: mov             x3, NULL
    // 0x5f36e4: b               #0x5f36ec
    // 0x5f36e8: mov             x3, x1
    // 0x5f36ec: mov             x0, x3
    // 0x5f36f0: stur            x3, [fp, #-8]
    // 0x5f36f4: r2 = Null
    //     0x5f36f4: mov             x2, NULL
    // 0x5f36f8: r1 = Null
    //     0x5f36f8: mov             x1, NULL
    // 0x5f36fc: r4 = 60
    //     0x5f36fc: mov             x4, #0x3c
    // 0x5f3700: branchIfSmi(r0, 0x5f370c)
    //     0x5f3700: tbz             w0, #0, #0x5f370c
    // 0x5f3704: r4 = LoadClassIdInstr(r0)
    //     0x5f3704: ldur            x4, [x0, #-1]
    //     0x5f3708: ubfx            x4, x4, #0xc, #0x14
    // 0x5f370c: sub             x4, x4, #0x5e
    // 0x5f3710: cmp             x4, #1
    // 0x5f3714: b.ls            #0x5f3728
    // 0x5f3718: r8 = String
    //     0x5f3718: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f371c: r3 = Null
    //     0x5f371c: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a0a0] Null
    //     0x5f3720: ldr             x3, [x3, #0xa0]
    // 0x5f3724: r0 = String()
    //     0x5f3724: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f3728: ldur            x1, [fp, #-8]
    // 0x5f372c: r0 = parse()
    //     0x5f372c: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f3730: mov             x8, x0
    // 0x5f3734: b               #0x5f373c
    // 0x5f3738: r8 = Null
    //     0x5f3738: mov             x8, NULL
    // 0x5f373c: ldur            x7, [fp, #-0x10]
    // 0x5f3740: ldur            x6, [fp, #-0x18]
    // 0x5f3744: ldur            x2, [fp, #-0x38]
    // 0x5f3748: ldur            x1, [fp, #-0x40]
    // 0x5f374c: ldur            x0, [fp, #-0x48]
    // 0x5f3750: ldur            x5, [fp, #-0x20]
    // 0x5f3754: ldur            x4, [fp, #-0x28]
    // 0x5f3758: ldur            x3, [fp, #-0x30]
    // 0x5f375c: stur            x8, [fp, #-8]
    // 0x5f3760: r0 = TripModel()
    //     0x5f3760: bl              #0x5da4b4  ; AllocateTripModelStub -> TripModel (size=0x2c)
    // 0x5f3764: ldur            x1, [fp, #-0x10]
    // 0x5f3768: StoreField: r0->field_7 = r1
    //     0x5f3768: stur            w1, [x0, #7]
    // 0x5f376c: ldur            x1, [fp, #-0x18]
    // 0x5f3770: StoreField: r0->field_b = r1
    //     0x5f3770: stur            w1, [x0, #0xb]
    // 0x5f3774: ldur            x1, [fp, #-0x20]
    // 0x5f3778: StoreField: r0->field_f = r1
    //     0x5f3778: stur            w1, [x0, #0xf]
    // 0x5f377c: ldur            x1, [fp, #-0x38]
    // 0x5f3780: StoreField: r0->field_13 = r1
    //     0x5f3780: stur            w1, [x0, #0x13]
    // 0x5f3784: ldur            x1, [fp, #-0x40]
    // 0x5f3788: ArrayStore: r0[0] = r1  ; List_4
    //     0x5f3788: stur            w1, [x0, #0x17]
    // 0x5f378c: ldur            x1, [fp, #-0x28]
    // 0x5f3790: StoreField: r0->field_1b = r1
    //     0x5f3790: stur            w1, [x0, #0x1b]
    // 0x5f3794: ldur            x1, [fp, #-0x30]
    // 0x5f3798: StoreField: r0->field_1f = r1
    //     0x5f3798: stur            w1, [x0, #0x1f]
    // 0x5f379c: ldur            x1, [fp, #-0x48]
    // 0x5f37a0: StoreField: r0->field_23 = r1
    //     0x5f37a0: stur            w1, [x0, #0x23]
    // 0x5f37a4: ldur            x1, [fp, #-8]
    // 0x5f37a8: StoreField: r0->field_27 = r1
    //     0x5f37a8: stur            w1, [x0, #0x27]
    // 0x5f37ac: LeaveFrame
    //     0x5f37ac: mov             SP, fp
    //     0x5f37b0: ldp             fp, lr, [SP], #0x10
    // 0x5f37b4: ret
    //     0x5f37b4: ret             
    // 0x5f37b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f37b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f37bc: b               #0x5f3234
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x6e3080, size: 0x318
    // 0x6e3080: EnterFrame
    //     0x6e3080: stp             fp, lr, [SP, #-0x10]!
    //     0x6e3084: mov             fp, SP
    // 0x6e3088: AllocStack(0x48)
    //     0x6e3088: sub             SP, SP, #0x48
    // 0x6e308c: SetupParameters({dynamic endDate = Null /* r3 */, dynamic id = Null /* r5 */, dynamic location = Null /* r6 */, dynamic name = Null /* r7 */, dynamic note = Null /* r8 */, dynamic startDate = Null /* r0 */})
    //     0x6e308c: ldur            w0, [x4, #0x13]
    //     0x6e3090: ldur            w2, [x4, #0x1f]
    //     0x6e3094: add             x2, x2, HEAP, lsl #32
    //     0x6e3098: add             x16, PP, #0x14, lsl #12  ; [pp+0x14028] "endDate"
    //     0x6e309c: ldr             x16, [x16, #0x28]
    //     0x6e30a0: cmp             w2, w16
    //     0x6e30a4: b.ne            #0x6e30c8
    //     0x6e30a8: ldur            w2, [x4, #0x23]
    //     0x6e30ac: add             x2, x2, HEAP, lsl #32
    //     0x6e30b0: sub             w3, w0, w2
    //     0x6e30b4: add             x2, fp, w3, sxtw #2
    //     0x6e30b8: ldr             x2, [x2, #8]
    //     0x6e30bc: mov             x3, x2
    //     0x6e30c0: mov             x2, #1
    //     0x6e30c4: b               #0x6e30d0
    //     0x6e30c8: mov             x3, NULL
    //     0x6e30cc: mov             x2, #0
    //     0x6e30d0: lsl             x5, x2, #1
    //     0x6e30d4: lsl             w6, w5, #1
    //     0x6e30d8: add             w7, w6, #8
    //     0x6e30dc: add             x16, x4, w7, sxtw #1
    //     0x6e30e0: ldur            w8, [x16, #0xf]
    //     0x6e30e4: add             x8, x8, HEAP, lsl #32
    //     0x6e30e8: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x6e30ec: ldr             x16, [x16, #0xae8]
    //     0x6e30f0: cmp             w8, w16
    //     0x6e30f4: b.ne            #0x6e3128
    //     0x6e30f8: add             w2, w6, #0xa
    //     0x6e30fc: add             x16, x4, w2, sxtw #1
    //     0x6e3100: ldur            w6, [x16, #0xf]
    //     0x6e3104: add             x6, x6, HEAP, lsl #32
    //     0x6e3108: sub             w2, w0, w6
    //     0x6e310c: add             x6, fp, w2, sxtw #2
    //     0x6e3110: ldr             x6, [x6, #8]
    //     0x6e3114: add             w2, w5, #2
    //     0x6e3118: sbfx            x5, x2, #1, #0x1f
    //     0x6e311c: mov             x2, x5
    //     0x6e3120: mov             x5, x6
    //     0x6e3124: b               #0x6e312c
    //     0x6e3128: mov             x5, NULL
    //     0x6e312c: lsl             x6, x2, #1
    //     0x6e3130: lsl             w7, w6, #1
    //     0x6e3134: add             w8, w7, #8
    //     0x6e3138: add             x16, x4, w8, sxtw #1
    //     0x6e313c: ldur            w9, [x16, #0xf]
    //     0x6e3140: add             x9, x9, HEAP, lsl #32
    //     0x6e3144: ldr             x16, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    //     0x6e3148: cmp             w9, w16
    //     0x6e314c: b.ne            #0x6e3180
    //     0x6e3150: add             w2, w7, #0xa
    //     0x6e3154: add             x16, x4, w2, sxtw #1
    //     0x6e3158: ldur            w7, [x16, #0xf]
    //     0x6e315c: add             x7, x7, HEAP, lsl #32
    //     0x6e3160: sub             w2, w0, w7
    //     0x6e3164: add             x7, fp, w2, sxtw #2
    //     0x6e3168: ldr             x7, [x7, #8]
    //     0x6e316c: add             w2, w6, #2
    //     0x6e3170: sbfx            x6, x2, #1, #0x1f
    //     0x6e3174: mov             x2, x6
    //     0x6e3178: mov             x6, x7
    //     0x6e317c: b               #0x6e3184
    //     0x6e3180: mov             x6, NULL
    //     0x6e3184: lsl             x7, x2, #1
    //     0x6e3188: lsl             w8, w7, #1
    //     0x6e318c: add             w9, w8, #8
    //     0x6e3190: add             x16, x4, w9, sxtw #1
    //     0x6e3194: ldur            w10, [x16, #0xf]
    //     0x6e3198: add             x10, x10, HEAP, lsl #32
    //     0x6e319c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    //     0x6e31a0: cmp             w10, w16
    //     0x6e31a4: b.ne            #0x6e31d8
    //     0x6e31a8: add             w2, w8, #0xa
    //     0x6e31ac: add             x16, x4, w2, sxtw #1
    //     0x6e31b0: ldur            w8, [x16, #0xf]
    //     0x6e31b4: add             x8, x8, HEAP, lsl #32
    //     0x6e31b8: sub             w2, w0, w8
    //     0x6e31bc: add             x8, fp, w2, sxtw #2
    //     0x6e31c0: ldr             x8, [x8, #8]
    //     0x6e31c4: add             w2, w7, #2
    //     0x6e31c8: sbfx            x7, x2, #1, #0x1f
    //     0x6e31cc: mov             x2, x7
    //     0x6e31d0: mov             x7, x8
    //     0x6e31d4: b               #0x6e31dc
    //     0x6e31d8: mov             x7, NULL
    //     0x6e31dc: lsl             x8, x2, #1
    //     0x6e31e0: lsl             w9, w8, #1
    //     0x6e31e4: add             w10, w9, #8
    //     0x6e31e8: add             x16, x4, w10, sxtw #1
    //     0x6e31ec: ldur            w11, [x16, #0xf]
    //     0x6e31f0: add             x11, x11, HEAP, lsl #32
    //     0x6e31f4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x6e31f8: ldr             x16, [x16, #0x30]
    //     0x6e31fc: cmp             w11, w16
    //     0x6e3200: b.ne            #0x6e3234
    //     0x6e3204: add             w2, w9, #0xa
    //     0x6e3208: add             x16, x4, w2, sxtw #1
    //     0x6e320c: ldur            w9, [x16, #0xf]
    //     0x6e3210: add             x9, x9, HEAP, lsl #32
    //     0x6e3214: sub             w2, w0, w9
    //     0x6e3218: add             x9, fp, w2, sxtw #2
    //     0x6e321c: ldr             x9, [x9, #8]
    //     0x6e3220: add             w2, w8, #2
    //     0x6e3224: sbfx            x8, x2, #1, #0x1f
    //     0x6e3228: mov             x2, x8
    //     0x6e322c: mov             x8, x9
    //     0x6e3230: b               #0x6e3238
    //     0x6e3234: mov             x8, NULL
    //     0x6e3238: lsl             x9, x2, #1
    //     0x6e323c: lsl             w2, w9, #1
    //     0x6e3240: add             w9, w2, #8
    //     0x6e3244: add             x16, x4, w9, sxtw #1
    //     0x6e3248: ldur            w10, [x16, #0xf]
    //     0x6e324c: add             x10, x10, HEAP, lsl #32
    //     0x6e3250: add             x16, PP, #0x14, lsl #12  ; [pp+0x14038] "startDate"
    //     0x6e3254: ldr             x16, [x16, #0x38]
    //     0x6e3258: cmp             w10, w16
    //     0x6e325c: b.ne            #0x6e3280
    //     0x6e3260: add             w9, w2, #0xa
    //     0x6e3264: add             x16, x4, w9, sxtw #1
    //     0x6e3268: ldur            w2, [x16, #0xf]
    //     0x6e326c: add             x2, x2, HEAP, lsl #32
    //     0x6e3270: sub             w4, w0, w2
    //     0x6e3274: add             x0, fp, w4, sxtw #2
    //     0x6e3278: ldr             x0, [x0, #8]
    //     0x6e327c: b               #0x6e3284
    //     0x6e3280: mov             x0, NULL
    // 0x6e3284: cmp             w5, NULL
    // 0x6e3288: b.ne            #0x6e3298
    // 0x6e328c: LoadField: r2 = r1->field_7
    //     0x6e328c: ldur            w2, [x1, #7]
    // 0x6e3290: DecompressPointer r2
    //     0x6e3290: add             x2, x2, HEAP, lsl #32
    // 0x6e3294: b               #0x6e329c
    // 0x6e3298: mov             x2, x5
    // 0x6e329c: stur            x2, [fp, #-0x48]
    // 0x6e32a0: cmp             w7, NULL
    // 0x6e32a4: b.ne            #0x6e32b4
    // 0x6e32a8: LoadField: r4 = r1->field_b
    //     0x6e32a8: ldur            w4, [x1, #0xb]
    // 0x6e32ac: DecompressPointer r4
    //     0x6e32ac: add             x4, x4, HEAP, lsl #32
    // 0x6e32b0: b               #0x6e32b8
    // 0x6e32b4: mov             x4, x7
    // 0x6e32b8: stur            x4, [fp, #-0x40]
    // 0x6e32bc: cmp             w6, NULL
    // 0x6e32c0: b.ne            #0x6e32d0
    // 0x6e32c4: LoadField: r5 = r1->field_f
    //     0x6e32c4: ldur            w5, [x1, #0xf]
    // 0x6e32c8: DecompressPointer r5
    //     0x6e32c8: add             x5, x5, HEAP, lsl #32
    // 0x6e32cc: b               #0x6e32d4
    // 0x6e32d0: mov             x5, x6
    // 0x6e32d4: stur            x5, [fp, #-0x38]
    // 0x6e32d8: cmp             w0, NULL
    // 0x6e32dc: b.ne            #0x6e32e8
    // 0x6e32e0: LoadField: r0 = r1->field_13
    //     0x6e32e0: ldur            w0, [x1, #0x13]
    // 0x6e32e4: DecompressPointer r0
    //     0x6e32e4: add             x0, x0, HEAP, lsl #32
    // 0x6e32e8: stur            x0, [fp, #-0x30]
    // 0x6e32ec: cmp             w3, NULL
    // 0x6e32f0: b.ne            #0x6e32fc
    // 0x6e32f4: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x6e32f4: ldur            w3, [x1, #0x17]
    // 0x6e32f8: DecompressPointer r3
    //     0x6e32f8: add             x3, x3, HEAP, lsl #32
    // 0x6e32fc: stur            x3, [fp, #-0x28]
    // 0x6e3300: cmp             w8, NULL
    // 0x6e3304: b.ne            #0x6e3314
    // 0x6e3308: LoadField: r6 = r1->field_1b
    //     0x6e3308: ldur            w6, [x1, #0x1b]
    // 0x6e330c: DecompressPointer r6
    //     0x6e330c: add             x6, x6, HEAP, lsl #32
    // 0x6e3310: b               #0x6e3318
    // 0x6e3314: mov             x6, x8
    // 0x6e3318: stur            x6, [fp, #-0x20]
    // 0x6e331c: LoadField: r7 = r1->field_1f
    //     0x6e331c: ldur            w7, [x1, #0x1f]
    // 0x6e3320: DecompressPointer r7
    //     0x6e3320: add             x7, x7, HEAP, lsl #32
    // 0x6e3324: stur            x7, [fp, #-0x18]
    // 0x6e3328: LoadField: r8 = r1->field_23
    //     0x6e3328: ldur            w8, [x1, #0x23]
    // 0x6e332c: DecompressPointer r8
    //     0x6e332c: add             x8, x8, HEAP, lsl #32
    // 0x6e3330: stur            x8, [fp, #-0x10]
    // 0x6e3334: LoadField: r9 = r1->field_27
    //     0x6e3334: ldur            w9, [x1, #0x27]
    // 0x6e3338: DecompressPointer r9
    //     0x6e3338: add             x9, x9, HEAP, lsl #32
    // 0x6e333c: stur            x9, [fp, #-8]
    // 0x6e3340: r0 = TripModel()
    //     0x6e3340: bl              #0x5da4b4  ; AllocateTripModelStub -> TripModel (size=0x2c)
    // 0x6e3344: ldur            x1, [fp, #-0x48]
    // 0x6e3348: StoreField: r0->field_7 = r1
    //     0x6e3348: stur            w1, [x0, #7]
    // 0x6e334c: ldur            x1, [fp, #-0x40]
    // 0x6e3350: StoreField: r0->field_b = r1
    //     0x6e3350: stur            w1, [x0, #0xb]
    // 0x6e3354: ldur            x1, [fp, #-0x38]
    // 0x6e3358: StoreField: r0->field_f = r1
    //     0x6e3358: stur            w1, [x0, #0xf]
    // 0x6e335c: ldur            x1, [fp, #-0x30]
    // 0x6e3360: StoreField: r0->field_13 = r1
    //     0x6e3360: stur            w1, [x0, #0x13]
    // 0x6e3364: ldur            x1, [fp, #-0x28]
    // 0x6e3368: ArrayStore: r0[0] = r1  ; List_4
    //     0x6e3368: stur            w1, [x0, #0x17]
    // 0x6e336c: ldur            x1, [fp, #-0x20]
    // 0x6e3370: StoreField: r0->field_1b = r1
    //     0x6e3370: stur            w1, [x0, #0x1b]
    // 0x6e3374: ldur            x1, [fp, #-0x18]
    // 0x6e3378: StoreField: r0->field_1f = r1
    //     0x6e3378: stur            w1, [x0, #0x1f]
    // 0x6e337c: ldur            x1, [fp, #-0x10]
    // 0x6e3380: StoreField: r0->field_23 = r1
    //     0x6e3380: stur            w1, [x0, #0x23]
    // 0x6e3384: ldur            x1, [fp, #-8]
    // 0x6e3388: StoreField: r0->field_27 = r1
    //     0x6e3388: stur            w1, [x0, #0x27]
    // 0x6e338c: LeaveFrame
    //     0x6e338c: mov             SP, fp
    //     0x6e3390: ldp             fp, lr, [SP], #0x10
    // 0x6e3394: ret
    //     0x6e3394: ret             
  }
  Map<String, dynamic> toFirestore(TripModel) {
    // ** addr: 0x6e3464, size: 0x1fc
    // 0x6e3464: EnterFrame
    //     0x6e3464: stp             fp, lr, [SP, #-0x10]!
    //     0x6e3468: mov             fp, SP
    // 0x6e346c: AllocStack(0x20)
    //     0x6e346c: sub             SP, SP, #0x20
    // 0x6e3470: SetupParameters(TripModel this /* r1 => r0, fp-0x8 */)
    //     0x6e3470: mov             x0, x1
    //     0x6e3474: stur            x1, [fp, #-8]
    // 0x6e3478: CheckStackOverflow
    //     0x6e3478: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e347c: cmp             SP, x16
    //     0x6e3480: b.ls            #0x6e3658
    // 0x6e3484: r1 = Null
    //     0x6e3484: mov             x1, NULL
    // 0x6e3488: r2 = 32
    //     0x6e3488: mov             x2, #0x20
    // 0x6e348c: r0 = AllocateArray()
    //     0x6e348c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e3490: stur            x0, [fp, #-0x10]
    // 0x6e3494: r16 = "name"
    //     0x6e3494: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6e3498: StoreField: r0->field_f = r16
    //     0x6e3498: stur            w16, [x0, #0xf]
    // 0x6e349c: ldur            x3, [fp, #-8]
    // 0x6e34a0: LoadField: r1 = r3->field_b
    //     0x6e34a0: ldur            w1, [x3, #0xb]
    // 0x6e34a4: DecompressPointer r1
    //     0x6e34a4: add             x1, x1, HEAP, lsl #32
    // 0x6e34a8: StoreField: r0->field_13 = r1
    //     0x6e34a8: stur            w1, [x0, #0x13]
    // 0x6e34ac: r16 = "location"
    //     0x6e34ac: ldr             x16, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x6e34b0: ArrayStore: r0[0] = r16  ; List_4
    //     0x6e34b0: stur            w16, [x0, #0x17]
    // 0x6e34b4: LoadField: r1 = r3->field_f
    //     0x6e34b4: ldur            w1, [x3, #0xf]
    // 0x6e34b8: DecompressPointer r1
    //     0x6e34b8: add             x1, x1, HEAP, lsl #32
    // 0x6e34bc: StoreField: r0->field_1b = r1
    //     0x6e34bc: stur            w1, [x0, #0x1b]
    // 0x6e34c0: r16 = "note"
    //     0x6e34c0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x6e34c4: ldr             x16, [x16, #0x30]
    // 0x6e34c8: StoreField: r0->field_1f = r16
    //     0x6e34c8: stur            w16, [x0, #0x1f]
    // 0x6e34cc: LoadField: r1 = r3->field_1b
    //     0x6e34cc: ldur            w1, [x3, #0x1b]
    // 0x6e34d0: DecompressPointer r1
    //     0x6e34d0: add             x1, x1, HEAP, lsl #32
    // 0x6e34d4: StoreField: r0->field_23 = r1
    //     0x6e34d4: stur            w1, [x0, #0x23]
    // 0x6e34d8: r16 = "agency_id"
    //     0x6e34d8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6e34dc: ldr             x16, [x16, #0x40]
    // 0x6e34e0: StoreField: r0->field_27 = r16
    //     0x6e34e0: stur            w16, [x0, #0x27]
    // 0x6e34e4: LoadField: r1 = r3->field_1f
    //     0x6e34e4: ldur            w1, [x3, #0x1f]
    // 0x6e34e8: DecompressPointer r1
    //     0x6e34e8: add             x1, x1, HEAP, lsl #32
    // 0x6e34ec: StoreField: r0->field_2b = r1
    //     0x6e34ec: stur            w1, [x0, #0x2b]
    // 0x6e34f0: r16 = "start_date"
    //     0x6e34f0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x6e34f4: ldr             x16, [x16, #0x48]
    // 0x6e34f8: StoreField: r0->field_2f = r16
    //     0x6e34f8: stur            w16, [x0, #0x2f]
    // 0x6e34fc: LoadField: r2 = r3->field_13
    //     0x6e34fc: ldur            w2, [x3, #0x13]
    // 0x6e3500: DecompressPointer r2
    //     0x6e3500: add             x2, x2, HEAP, lsl #32
    // 0x6e3504: cmp             w2, NULL
    // 0x6e3508: b.eq            #0x6e3518
    // 0x6e350c: r1 = Null
    //     0x6e350c: mov             x1, NULL
    // 0x6e3510: r0 = Timestamp.fromDate()
    //     0x6e3510: bl              #0x5dd834  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromDate
    // 0x6e3514: b               #0x6e351c
    // 0x6e3518: r0 = Null
    //     0x6e3518: mov             x0, NULL
    // 0x6e351c: ldur            x4, [fp, #-8]
    // 0x6e3520: ldur            x3, [fp, #-0x10]
    // 0x6e3524: mov             x1, x3
    // 0x6e3528: ArrayStore: r1[9] = r0  ; List_4
    //     0x6e3528: add             x25, x1, #0x33
    //     0x6e352c: str             w0, [x25]
    //     0x6e3530: tbz             w0, #0, #0x6e354c
    //     0x6e3534: ldurb           w16, [x1, #-1]
    //     0x6e3538: ldurb           w17, [x0, #-1]
    //     0x6e353c: and             x16, x17, x16, lsr #2
    //     0x6e3540: tst             x16, HEAP, lsr #32
    //     0x6e3544: b.eq            #0x6e354c
    //     0x6e3548: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e354c: r16 = "end_date"
    //     0x6e354c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x6e3550: ldr             x16, [x16, #0x50]
    // 0x6e3554: StoreField: r3->field_37 = r16
    //     0x6e3554: stur            w16, [x3, #0x37]
    // 0x6e3558: ArrayLoad: r2 = r4[0]  ; List_4
    //     0x6e3558: ldur            w2, [x4, #0x17]
    // 0x6e355c: DecompressPointer r2
    //     0x6e355c: add             x2, x2, HEAP, lsl #32
    // 0x6e3560: cmp             w2, NULL
    // 0x6e3564: b.eq            #0x6e3574
    // 0x6e3568: r1 = Null
    //     0x6e3568: mov             x1, NULL
    // 0x6e356c: r0 = Timestamp.fromDate()
    //     0x6e356c: bl              #0x5dd834  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromDate
    // 0x6e3570: b               #0x6e3578
    // 0x6e3574: r0 = Null
    //     0x6e3574: mov             x0, NULL
    // 0x6e3578: ldur            x2, [fp, #-8]
    // 0x6e357c: ldur            x3, [fp, #-0x10]
    // 0x6e3580: mov             x1, x3
    // 0x6e3584: ArrayStore: r1[11] = r0  ; List_4
    //     0x6e3584: add             x25, x1, #0x3b
    //     0x6e3588: str             w0, [x25]
    //     0x6e358c: tbz             w0, #0, #0x6e35a8
    //     0x6e3590: ldurb           w16, [x1, #-1]
    //     0x6e3594: ldurb           w17, [x0, #-1]
    //     0x6e3598: and             x16, x17, x16, lsr #2
    //     0x6e359c: tst             x16, HEAP, lsr #32
    //     0x6e35a0: b.eq            #0x6e35a8
    //     0x6e35a4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e35a8: r16 = "created_at"
    //     0x6e35a8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6e35ac: ldr             x16, [x16, #0xc00]
    // 0x6e35b0: StoreField: r3->field_3f = r16
    //     0x6e35b0: stur            w16, [x3, #0x3f]
    // 0x6e35b4: LoadField: r0 = r2->field_23
    //     0x6e35b4: ldur            w0, [x2, #0x23]
    // 0x6e35b8: DecompressPointer r0
    //     0x6e35b8: add             x0, x0, HEAP, lsl #32
    // 0x6e35bc: cmp             w0, NULL
    // 0x6e35c0: b.eq            #0x6e35d4
    // 0x6e35c4: mov             x2, x0
    // 0x6e35c8: r1 = Null
    //     0x6e35c8: mov             x1, NULL
    // 0x6e35cc: r0 = Timestamp.fromDate()
    //     0x6e35cc: bl              #0x5dd834  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromDate
    // 0x6e35d0: b               #0x6e35d8
    // 0x6e35d4: r0 = serverTimestamp()
    //     0x6e35d4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6e35d8: ldur            x2, [fp, #-0x10]
    // 0x6e35dc: mov             x1, x2
    // 0x6e35e0: ArrayStore: r1[13] = r0  ; List_4
    //     0x6e35e0: add             x25, x1, #0x43
    //     0x6e35e4: str             w0, [x25]
    //     0x6e35e8: tbz             w0, #0, #0x6e3604
    //     0x6e35ec: ldurb           w16, [x1, #-1]
    //     0x6e35f0: ldurb           w17, [x0, #-1]
    //     0x6e35f4: and             x16, x17, x16, lsr #2
    //     0x6e35f8: tst             x16, HEAP, lsr #32
    //     0x6e35fc: b.eq            #0x6e3604
    //     0x6e3600: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e3604: r16 = "updated_at"
    //     0x6e3604: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6e3608: ldr             x16, [x16, #0x58]
    // 0x6e360c: StoreField: r2->field_47 = r16
    //     0x6e360c: stur            w16, [x2, #0x47]
    // 0x6e3610: r0 = serverTimestamp()
    //     0x6e3610: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6e3614: ldur            x1, [fp, #-0x10]
    // 0x6e3618: ArrayStore: r1[15] = r0  ; List_4
    //     0x6e3618: add             x25, x1, #0x4b
    //     0x6e361c: str             w0, [x25]
    //     0x6e3620: tbz             w0, #0, #0x6e363c
    //     0x6e3624: ldurb           w16, [x1, #-1]
    //     0x6e3628: ldurb           w17, [x0, #-1]
    //     0x6e362c: and             x16, x17, x16, lsr #2
    //     0x6e3630: tst             x16, HEAP, lsr #32
    //     0x6e3634: b.eq            #0x6e363c
    //     0x6e3638: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e363c: r16 = <String, dynamic>
    //     0x6e363c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6e3640: ldur            lr, [fp, #-0x10]
    // 0x6e3644: stp             lr, x16, [SP]
    // 0x6e3648: r0 = Map._fromLiteral()
    //     0x6e3648: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6e364c: LeaveFrame
    //     0x6e364c: mov             SP, fp
    //     0x6e3650: ldp             fp, lr, [SP], #0x10
    // 0x6e3654: ret
    //     0x6e3654: ret             
    // 0x6e3658: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3658: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e365c: b               #0x6e3484
  }
}
