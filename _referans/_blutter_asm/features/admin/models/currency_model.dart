// lib: , url: package:umrem_demo/features/admin/models/currency_model.dart

// class id: 1049511, size: 0x8
class :: {
}

// class id: 205, size: 0x28, field offset: 0x8
class CurrencyModel extends Object {

  factory _ CurrencyModel.fromFirestore(/* No info */) {
    // ** addr: 0x5e0a04, size: 0x388
    // 0x5e0a04: EnterFrame
    //     0x5e0a04: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0a08: mov             fp, SP
    // 0x5e0a0c: AllocStack(0x40)
    //     0x5e0a0c: sub             SP, SP, #0x40
    // 0x5e0a10: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5e0a10: mov             x0, x2
    //     0x5e0a14: stur            x2, [fp, #-8]
    // 0x5e0a18: CheckStackOverflow
    //     0x5e0a18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0a1c: cmp             SP, x16
    //     0x5e0a20: b.ls            #0x5e0d84
    // 0x5e0a24: mov             x1, x0
    // 0x5e0a28: r0 = data()
    //     0x5e0a28: bl              #0x8d0f60  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQueryDocumentSnapshot::data
    // 0x5e0a2c: mov             x2, x0
    // 0x5e0a30: ldur            x0, [fp, #-8]
    // 0x5e0a34: stur            x2, [fp, #-0x10]
    // 0x5e0a38: LoadField: r1 = r0->field_b
    //     0x5e0a38: ldur            w1, [x0, #0xb]
    // 0x5e0a3c: DecompressPointer r1
    //     0x5e0a3c: add             x1, x1, HEAP, lsl #32
    // 0x5e0a40: LoadField: r0 = r1->field_b
    //     0x5e0a40: ldur            w0, [x1, #0xb]
    // 0x5e0a44: DecompressPointer r0
    //     0x5e0a44: add             x0, x0, HEAP, lsl #32
    // 0x5e0a48: LoadField: r1 = r0->field_7
    //     0x5e0a48: ldur            w1, [x0, #7]
    // 0x5e0a4c: DecompressPointer r1
    //     0x5e0a4c: add             x1, x1, HEAP, lsl #32
    // 0x5e0a50: r0 = last()
    //     0x5e0a50: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5e0a54: ldur            x1, [fp, #-0x10]
    // 0x5e0a58: r2 = "emoji"
    //     0x5e0a58: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x5e0a5c: ldr             x2, [x2, #0xe10]
    // 0x5e0a60: stur            x0, [fp, #-8]
    // 0x5e0a64: r0 = _getValueOrData()
    //     0x5e0a64: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e0a68: ldur            x3, [fp, #-0x10]
    // 0x5e0a6c: LoadField: r1 = r3->field_f
    //     0x5e0a6c: ldur            w1, [x3, #0xf]
    // 0x5e0a70: DecompressPointer r1
    //     0x5e0a70: add             x1, x1, HEAP, lsl #32
    // 0x5e0a74: cmp             w1, w0
    // 0x5e0a78: b.ne            #0x5e0a80
    // 0x5e0a7c: r0 = Null
    //     0x5e0a7c: mov             x0, NULL
    // 0x5e0a80: cmp             w0, NULL
    // 0x5e0a84: b.ne            #0x5e0a90
    // 0x5e0a88: r4 = ""
    //     0x5e0a88: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5e0a8c: b               #0x5e0a94
    // 0x5e0a90: mov             x4, x0
    // 0x5e0a94: mov             x0, x4
    // 0x5e0a98: stur            x4, [fp, #-0x18]
    // 0x5e0a9c: r2 = Null
    //     0x5e0a9c: mov             x2, NULL
    // 0x5e0aa0: r1 = Null
    //     0x5e0aa0: mov             x1, NULL
    // 0x5e0aa4: r4 = 60
    //     0x5e0aa4: mov             x4, #0x3c
    // 0x5e0aa8: branchIfSmi(r0, 0x5e0ab4)
    //     0x5e0aa8: tbz             w0, #0, #0x5e0ab4
    // 0x5e0aac: r4 = LoadClassIdInstr(r0)
    //     0x5e0aac: ldur            x4, [x0, #-1]
    //     0x5e0ab0: ubfx            x4, x4, #0xc, #0x14
    // 0x5e0ab4: sub             x4, x4, #0x5e
    // 0x5e0ab8: cmp             x4, #1
    // 0x5e0abc: b.ls            #0x5e0ad0
    // 0x5e0ac0: r8 = String
    //     0x5e0ac0: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5e0ac4: r3 = Null
    //     0x5e0ac4: add             x3, PP, #0x18, lsl #12  ; [pp+0x18e40] Null
    //     0x5e0ac8: ldr             x3, [x3, #0xe40]
    // 0x5e0acc: r0 = String()
    //     0x5e0acc: bl              #0x939a58  ; IsType_String_Stub
    // 0x5e0ad0: ldur            x1, [fp, #-0x10]
    // 0x5e0ad4: r2 = "name"
    //     0x5e0ad4: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5e0ad8: r0 = _getValueOrData()
    //     0x5e0ad8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e0adc: ldur            x3, [fp, #-0x10]
    // 0x5e0ae0: LoadField: r1 = r3->field_f
    //     0x5e0ae0: ldur            w1, [x3, #0xf]
    // 0x5e0ae4: DecompressPointer r1
    //     0x5e0ae4: add             x1, x1, HEAP, lsl #32
    // 0x5e0ae8: cmp             w1, w0
    // 0x5e0aec: b.ne            #0x5e0af4
    // 0x5e0af0: r0 = Null
    //     0x5e0af0: mov             x0, NULL
    // 0x5e0af4: cmp             w0, NULL
    // 0x5e0af8: b.ne            #0x5e0b04
    // 0x5e0afc: r4 = ""
    //     0x5e0afc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5e0b00: b               #0x5e0b08
    // 0x5e0b04: mov             x4, x0
    // 0x5e0b08: mov             x0, x4
    // 0x5e0b0c: stur            x4, [fp, #-0x20]
    // 0x5e0b10: r2 = Null
    //     0x5e0b10: mov             x2, NULL
    // 0x5e0b14: r1 = Null
    //     0x5e0b14: mov             x1, NULL
    // 0x5e0b18: r4 = 60
    //     0x5e0b18: mov             x4, #0x3c
    // 0x5e0b1c: branchIfSmi(r0, 0x5e0b28)
    //     0x5e0b1c: tbz             w0, #0, #0x5e0b28
    // 0x5e0b20: r4 = LoadClassIdInstr(r0)
    //     0x5e0b20: ldur            x4, [x0, #-1]
    //     0x5e0b24: ubfx            x4, x4, #0xc, #0x14
    // 0x5e0b28: sub             x4, x4, #0x5e
    // 0x5e0b2c: cmp             x4, #1
    // 0x5e0b30: b.ls            #0x5e0b44
    // 0x5e0b34: r8 = String
    //     0x5e0b34: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5e0b38: r3 = Null
    //     0x5e0b38: add             x3, PP, #0x18, lsl #12  ; [pp+0x18e50] Null
    //     0x5e0b3c: ldr             x3, [x3, #0xe50]
    // 0x5e0b40: r0 = String()
    //     0x5e0b40: bl              #0x939a58  ; IsType_String_Stub
    // 0x5e0b44: ldur            x1, [fp, #-0x10]
    // 0x5e0b48: r2 = "value"
    //     0x5e0b48: ldr             x2, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x5e0b4c: r0 = _getValueOrData()
    //     0x5e0b4c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e0b50: ldur            x1, [fp, #-0x10]
    // 0x5e0b54: LoadField: r2 = r1->field_f
    //     0x5e0b54: ldur            w2, [x1, #0xf]
    // 0x5e0b58: DecompressPointer r2
    //     0x5e0b58: add             x2, x2, HEAP, lsl #32
    // 0x5e0b5c: cmp             w2, w0
    // 0x5e0b60: b.ne            #0x5e0b68
    // 0x5e0b64: r0 = Null
    //     0x5e0b64: mov             x0, NULL
    // 0x5e0b68: cmp             w0, NULL
    // 0x5e0b6c: b.ne            #0x5e0b74
    // 0x5e0b70: r0 = 0
    //     0x5e0b70: mov             x0, #0
    // 0x5e0b74: str             x0, [SP]
    // 0x5e0b78: r4 = 0
    //     0x5e0b78: mov             x4, #0
    // 0x5e0b7c: ldr             x0, [SP]
    // 0x5e0b80: r16 = 139786425482080
    //     0x5e0b80: add             x16, PP, #0x18, lsl #12  ; [pp+0x18e60] IMM: 0x7f22903c3b60
    //     0x5e0b84: add             x16, x16, #0xe60
    // 0x5e0b88: ldp             lr, x5, [x16]
    // 0x5e0b8c: blr             lr
    // 0x5e0b90: ldur            x1, [fp, #-0x10]
    // 0x5e0b94: r2 = "agency_id"
    //     0x5e0b94: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5e0b98: ldr             x2, [x2, #0x40]
    // 0x5e0b9c: stur            x0, [fp, #-0x28]
    // 0x5e0ba0: r0 = _getValueOrData()
    //     0x5e0ba0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e0ba4: ldur            x3, [fp, #-0x10]
    // 0x5e0ba8: LoadField: r1 = r3->field_f
    //     0x5e0ba8: ldur            w1, [x3, #0xf]
    // 0x5e0bac: DecompressPointer r1
    //     0x5e0bac: add             x1, x1, HEAP, lsl #32
    // 0x5e0bb0: cmp             w1, w0
    // 0x5e0bb4: b.ne            #0x5e0bc0
    // 0x5e0bb8: r4 = Null
    //     0x5e0bb8: mov             x4, NULL
    // 0x5e0bbc: b               #0x5e0bc4
    // 0x5e0bc0: mov             x4, x0
    // 0x5e0bc4: mov             x0, x4
    // 0x5e0bc8: stur            x4, [fp, #-0x30]
    // 0x5e0bcc: r2 = Null
    //     0x5e0bcc: mov             x2, NULL
    // 0x5e0bd0: r1 = Null
    //     0x5e0bd0: mov             x1, NULL
    // 0x5e0bd4: r4 = 60
    //     0x5e0bd4: mov             x4, #0x3c
    // 0x5e0bd8: branchIfSmi(r0, 0x5e0be4)
    //     0x5e0bd8: tbz             w0, #0, #0x5e0be4
    // 0x5e0bdc: r4 = LoadClassIdInstr(r0)
    //     0x5e0bdc: ldur            x4, [x0, #-1]
    //     0x5e0be0: ubfx            x4, x4, #0xc, #0x14
    // 0x5e0be4: sub             x4, x4, #0x5e
    // 0x5e0be8: cmp             x4, #1
    // 0x5e0bec: b.ls            #0x5e0c00
    // 0x5e0bf0: r8 = String?
    //     0x5e0bf0: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5e0bf4: r3 = Null
    //     0x5e0bf4: add             x3, PP, #0x18, lsl #12  ; [pp+0x18e70] Null
    //     0x5e0bf8: ldr             x3, [x3, #0xe70]
    // 0x5e0bfc: r0 = String?()
    //     0x5e0bfc: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5e0c00: ldur            x1, [fp, #-0x10]
    // 0x5e0c04: r2 = "created_at"
    //     0x5e0c04: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5e0c08: ldr             x2, [x2, #0xc00]
    // 0x5e0c0c: r0 = _getValueOrData()
    //     0x5e0c0c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e0c10: ldur            x3, [fp, #-0x10]
    // 0x5e0c14: LoadField: r1 = r3->field_f
    //     0x5e0c14: ldur            w1, [x3, #0xf]
    // 0x5e0c18: DecompressPointer r1
    //     0x5e0c18: add             x1, x1, HEAP, lsl #32
    // 0x5e0c1c: cmp             w1, w0
    // 0x5e0c20: b.ne            #0x5e0c2c
    // 0x5e0c24: r4 = Null
    //     0x5e0c24: mov             x4, NULL
    // 0x5e0c28: b               #0x5e0c30
    // 0x5e0c2c: mov             x4, x0
    // 0x5e0c30: mov             x0, x4
    // 0x5e0c34: stur            x4, [fp, #-0x38]
    // 0x5e0c38: r2 = Null
    //     0x5e0c38: mov             x2, NULL
    // 0x5e0c3c: r1 = Null
    //     0x5e0c3c: mov             x1, NULL
    // 0x5e0c40: r4 = 60
    //     0x5e0c40: mov             x4, #0x3c
    // 0x5e0c44: branchIfSmi(r0, 0x5e0c50)
    //     0x5e0c44: tbz             w0, #0, #0x5e0c50
    // 0x5e0c48: r4 = LoadClassIdInstr(r0)
    //     0x5e0c48: ldur            x4, [x0, #-1]
    //     0x5e0c4c: ubfx            x4, x4, #0xc, #0x14
    // 0x5e0c50: cmp             x4, #0xe96
    // 0x5e0c54: b.eq            #0x5e0c6c
    // 0x5e0c58: r8 = Timestamp?
    //     0x5e0c58: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5e0c5c: ldr             x8, [x8, #0x90]
    // 0x5e0c60: r3 = Null
    //     0x5e0c60: add             x3, PP, #0x18, lsl #12  ; [pp+0x18e80] Null
    //     0x5e0c64: ldr             x3, [x3, #0xe80]
    // 0x5e0c68: r0 = DefaultNullableTypeTest()
    //     0x5e0c68: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5e0c6c: ldur            x1, [fp, #-0x38]
    // 0x5e0c70: cmp             w1, NULL
    // 0x5e0c74: b.ne            #0x5e0c80
    // 0x5e0c78: r3 = Null
    //     0x5e0c78: mov             x3, NULL
    // 0x5e0c7c: b               #0x5e0c88
    // 0x5e0c80: r0 = toDate()
    //     0x5e0c80: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5e0c84: mov             x3, x0
    // 0x5e0c88: ldur            x0, [fp, #-0x10]
    // 0x5e0c8c: mov             x1, x0
    // 0x5e0c90: stur            x3, [fp, #-0x38]
    // 0x5e0c94: r2 = "updated_at"
    //     0x5e0c94: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5e0c98: ldr             x2, [x2, #0x58]
    // 0x5e0c9c: r0 = _getValueOrData()
    //     0x5e0c9c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e0ca0: mov             x1, x0
    // 0x5e0ca4: ldur            x0, [fp, #-0x10]
    // 0x5e0ca8: LoadField: r2 = r0->field_f
    //     0x5e0ca8: ldur            w2, [x0, #0xf]
    // 0x5e0cac: DecompressPointer r2
    //     0x5e0cac: add             x2, x2, HEAP, lsl #32
    // 0x5e0cb0: cmp             w2, w1
    // 0x5e0cb4: b.ne            #0x5e0cc0
    // 0x5e0cb8: r3 = Null
    //     0x5e0cb8: mov             x3, NULL
    // 0x5e0cbc: b               #0x5e0cc4
    // 0x5e0cc0: mov             x3, x1
    // 0x5e0cc4: mov             x0, x3
    // 0x5e0cc8: stur            x3, [fp, #-0x10]
    // 0x5e0ccc: r2 = Null
    //     0x5e0ccc: mov             x2, NULL
    // 0x5e0cd0: r1 = Null
    //     0x5e0cd0: mov             x1, NULL
    // 0x5e0cd4: r4 = 60
    //     0x5e0cd4: mov             x4, #0x3c
    // 0x5e0cd8: branchIfSmi(r0, 0x5e0ce4)
    //     0x5e0cd8: tbz             w0, #0, #0x5e0ce4
    // 0x5e0cdc: r4 = LoadClassIdInstr(r0)
    //     0x5e0cdc: ldur            x4, [x0, #-1]
    //     0x5e0ce0: ubfx            x4, x4, #0xc, #0x14
    // 0x5e0ce4: cmp             x4, #0xe96
    // 0x5e0ce8: b.eq            #0x5e0d00
    // 0x5e0cec: r8 = Timestamp?
    //     0x5e0cec: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5e0cf0: ldr             x8, [x8, #0x90]
    // 0x5e0cf4: r3 = Null
    //     0x5e0cf4: add             x3, PP, #0x18, lsl #12  ; [pp+0x18e90] Null
    //     0x5e0cf8: ldr             x3, [x3, #0xe90]
    // 0x5e0cfc: r0 = DefaultNullableTypeTest()
    //     0x5e0cfc: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5e0d00: ldur            x1, [fp, #-0x10]
    // 0x5e0d04: cmp             w1, NULL
    // 0x5e0d08: b.ne            #0x5e0d14
    // 0x5e0d0c: r6 = Null
    //     0x5e0d0c: mov             x6, NULL
    // 0x5e0d10: b               #0x5e0d1c
    // 0x5e0d14: r0 = toDate()
    //     0x5e0d14: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5e0d18: mov             x6, x0
    // 0x5e0d1c: ldur            x4, [fp, #-0x18]
    // 0x5e0d20: ldur            x3, [fp, #-0x20]
    // 0x5e0d24: ldur            x2, [fp, #-0x28]
    // 0x5e0d28: ldur            x0, [fp, #-0x38]
    // 0x5e0d2c: ldur            x1, [fp, #-0x30]
    // 0x5e0d30: ldur            x5, [fp, #-8]
    // 0x5e0d34: stur            x6, [fp, #-0x10]
    // 0x5e0d38: r0 = CurrencyModel()
    //     0x5e0d38: bl              #0x5e0fec  ; AllocateCurrencyModelStub -> CurrencyModel (size=0x28)
    // 0x5e0d3c: ldur            x1, [fp, #-8]
    // 0x5e0d40: StoreField: r0->field_7 = r1
    //     0x5e0d40: stur            w1, [x0, #7]
    // 0x5e0d44: ldur            x1, [fp, #-0x18]
    // 0x5e0d48: StoreField: r0->field_b = r1
    //     0x5e0d48: stur            w1, [x0, #0xb]
    // 0x5e0d4c: ldur            x1, [fp, #-0x20]
    // 0x5e0d50: StoreField: r0->field_f = r1
    //     0x5e0d50: stur            w1, [x0, #0xf]
    // 0x5e0d54: ldur            x1, [fp, #-0x28]
    // 0x5e0d58: LoadField: d0 = r1->field_7
    //     0x5e0d58: ldur            d0, [x1, #7]
    // 0x5e0d5c: StoreField: r0->field_13 = d0
    //     0x5e0d5c: stur            d0, [x0, #0x13]
    // 0x5e0d60: ldur            x1, [fp, #-0x30]
    // 0x5e0d64: StoreField: r0->field_1b = r1
    //     0x5e0d64: stur            w1, [x0, #0x1b]
    // 0x5e0d68: ldur            x1, [fp, #-0x38]
    // 0x5e0d6c: StoreField: r0->field_1f = r1
    //     0x5e0d6c: stur            w1, [x0, #0x1f]
    // 0x5e0d70: ldur            x1, [fp, #-0x10]
    // 0x5e0d74: StoreField: r0->field_23 = r1
    //     0x5e0d74: stur            w1, [x0, #0x23]
    // 0x5e0d78: LeaveFrame
    //     0x5e0d78: mov             SP, fp
    //     0x5e0d7c: ldp             fp, lr, [SP], #0x10
    // 0x5e0d80: ret
    //     0x5e0d80: ret             
    // 0x5e0d84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0d84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0d88: b               #0x5e0a24
  }
  Map<String, dynamic> toJson(CurrencyModel) {
    // ** addr: 0x5e0da4, size: 0x48
    // 0x5e0da4: EnterFrame
    //     0x5e0da4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0da8: mov             fp, SP
    // 0x5e0dac: CheckStackOverflow
    //     0x5e0dac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0db0: cmp             SP, x16
    //     0x5e0db4: b.ls            #0x5e0dcc
    // 0x5e0db8: ldr             x1, [fp, #0x10]
    // 0x5e0dbc: r0 = toJson()
    //     0x5e0dbc: bl              #0x5e0dd4  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::toJson
    // 0x5e0dc0: LeaveFrame
    //     0x5e0dc0: mov             SP, fp
    //     0x5e0dc4: ldp             fp, lr, [SP], #0x10
    // 0x5e0dc8: ret
    //     0x5e0dc8: ret             
    // 0x5e0dcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0dcc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0dd0: b               #0x5e0db8
  }
  Map<String, dynamic> toJson(CurrencyModel) {
    // ** addr: 0x5e0dd4, size: 0x1f8
    // 0x5e0dd4: EnterFrame
    //     0x5e0dd4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0dd8: mov             fp, SP
    // 0x5e0ddc: AllocStack(0x20)
    //     0x5e0ddc: sub             SP, SP, #0x20
    // 0x5e0de0: SetupParameters(CurrencyModel this /* r1 => r0, fp-0x8 */)
    //     0x5e0de0: mov             x0, x1
    //     0x5e0de4: stur            x1, [fp, #-8]
    // 0x5e0de8: CheckStackOverflow
    //     0x5e0de8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0dec: cmp             SP, x16
    //     0x5e0df0: b.ls            #0x5e0fac
    // 0x5e0df4: r1 = Null
    //     0x5e0df4: mov             x1, NULL
    // 0x5e0df8: r2 = 28
    //     0x5e0df8: mov             x2, #0x1c
    // 0x5e0dfc: r0 = AllocateArray()
    //     0x5e0dfc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e0e00: mov             x2, x0
    // 0x5e0e04: stur            x2, [fp, #-0x10]
    // 0x5e0e08: r16 = "id"
    //     0x5e0e08: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5e0e0c: ldr             x16, [x16, #0xae8]
    // 0x5e0e10: StoreField: r2->field_f = r16
    //     0x5e0e10: stur            w16, [x2, #0xf]
    // 0x5e0e14: ldur            x3, [fp, #-8]
    // 0x5e0e18: LoadField: r0 = r3->field_7
    //     0x5e0e18: ldur            w0, [x3, #7]
    // 0x5e0e1c: DecompressPointer r0
    //     0x5e0e1c: add             x0, x0, HEAP, lsl #32
    // 0x5e0e20: StoreField: r2->field_13 = r0
    //     0x5e0e20: stur            w0, [x2, #0x13]
    // 0x5e0e24: r16 = "emoji"
    //     0x5e0e24: add             x16, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x5e0e28: ldr             x16, [x16, #0xe10]
    // 0x5e0e2c: ArrayStore: r2[0] = r16  ; List_4
    //     0x5e0e2c: stur            w16, [x2, #0x17]
    // 0x5e0e30: LoadField: r0 = r3->field_b
    //     0x5e0e30: ldur            w0, [x3, #0xb]
    // 0x5e0e34: DecompressPointer r0
    //     0x5e0e34: add             x0, x0, HEAP, lsl #32
    // 0x5e0e38: StoreField: r2->field_1b = r0
    //     0x5e0e38: stur            w0, [x2, #0x1b]
    // 0x5e0e3c: r16 = "name"
    //     0x5e0e3c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5e0e40: StoreField: r2->field_1f = r16
    //     0x5e0e40: stur            w16, [x2, #0x1f]
    // 0x5e0e44: LoadField: r0 = r3->field_f
    //     0x5e0e44: ldur            w0, [x3, #0xf]
    // 0x5e0e48: DecompressPointer r0
    //     0x5e0e48: add             x0, x0, HEAP, lsl #32
    // 0x5e0e4c: StoreField: r2->field_23 = r0
    //     0x5e0e4c: stur            w0, [x2, #0x23]
    // 0x5e0e50: r16 = "value"
    //     0x5e0e50: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x5e0e54: StoreField: r2->field_27 = r16
    //     0x5e0e54: stur            w16, [x2, #0x27]
    // 0x5e0e58: LoadField: d0 = r3->field_13
    //     0x5e0e58: ldur            d0, [x3, #0x13]
    // 0x5e0e5c: r0 = inline_Allocate_Double()
    //     0x5e0e5c: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x5e0e60: add             x0, x0, #0x10
    //     0x5e0e64: cmp             x1, x0
    //     0x5e0e68: b.ls            #0x5e0fb4
    //     0x5e0e6c: str             x0, [THR, #0x60]  ; THR::top
    //     0x5e0e70: sub             x0, x0, #0xf
    //     0x5e0e74: mov             x1, #0xe15c
    //     0x5e0e78: movk            x1, #3, lsl #16
    //     0x5e0e7c: stur            x1, [x0, #-1]
    // 0x5e0e80: StoreField: r0->field_7 = d0
    //     0x5e0e80: stur            d0, [x0, #7]
    // 0x5e0e84: mov             x1, x2
    // 0x5e0e88: ArrayStore: r1[7] = r0  ; List_4
    //     0x5e0e88: add             x25, x1, #0x2b
    //     0x5e0e8c: str             w0, [x25]
    //     0x5e0e90: tbz             w0, #0, #0x5e0eac
    //     0x5e0e94: ldurb           w16, [x1, #-1]
    //     0x5e0e98: ldurb           w17, [x0, #-1]
    //     0x5e0e9c: and             x16, x17, x16, lsr #2
    //     0x5e0ea0: tst             x16, HEAP, lsr #32
    //     0x5e0ea4: b.eq            #0x5e0eac
    //     0x5e0ea8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e0eac: r16 = "agency_id"
    //     0x5e0eac: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5e0eb0: ldr             x16, [x16, #0x40]
    // 0x5e0eb4: StoreField: r2->field_2f = r16
    //     0x5e0eb4: stur            w16, [x2, #0x2f]
    // 0x5e0eb8: LoadField: r0 = r3->field_1b
    //     0x5e0eb8: ldur            w0, [x3, #0x1b]
    // 0x5e0ebc: DecompressPointer r0
    //     0x5e0ebc: add             x0, x0, HEAP, lsl #32
    // 0x5e0ec0: mov             x1, x2
    // 0x5e0ec4: ArrayStore: r1[9] = r0  ; List_4
    //     0x5e0ec4: add             x25, x1, #0x33
    //     0x5e0ec8: str             w0, [x25]
    //     0x5e0ecc: tbz             w0, #0, #0x5e0ee8
    //     0x5e0ed0: ldurb           w16, [x1, #-1]
    //     0x5e0ed4: ldurb           w17, [x0, #-1]
    //     0x5e0ed8: and             x16, x17, x16, lsr #2
    //     0x5e0edc: tst             x16, HEAP, lsr #32
    //     0x5e0ee0: b.eq            #0x5e0ee8
    //     0x5e0ee4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e0ee8: r16 = "created_at"
    //     0x5e0ee8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5e0eec: ldr             x16, [x16, #0xc00]
    // 0x5e0ef0: StoreField: r2->field_37 = r16
    //     0x5e0ef0: stur            w16, [x2, #0x37]
    // 0x5e0ef4: LoadField: r1 = r3->field_1f
    //     0x5e0ef4: ldur            w1, [x3, #0x1f]
    // 0x5e0ef8: DecompressPointer r1
    //     0x5e0ef8: add             x1, x1, HEAP, lsl #32
    // 0x5e0efc: cmp             w1, NULL
    // 0x5e0f00: b.ne            #0x5e0f0c
    // 0x5e0f04: r0 = Null
    //     0x5e0f04: mov             x0, NULL
    // 0x5e0f08: b               #0x5e0f18
    // 0x5e0f0c: r0 = toIso8601String()
    //     0x5e0f0c: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5e0f10: ldur            x3, [fp, #-8]
    // 0x5e0f14: ldur            x2, [fp, #-0x10]
    // 0x5e0f18: mov             x1, x2
    // 0x5e0f1c: ArrayStore: r1[11] = r0  ; List_4
    //     0x5e0f1c: add             x25, x1, #0x3b
    //     0x5e0f20: str             w0, [x25]
    //     0x5e0f24: tbz             w0, #0, #0x5e0f40
    //     0x5e0f28: ldurb           w16, [x1, #-1]
    //     0x5e0f2c: ldurb           w17, [x0, #-1]
    //     0x5e0f30: and             x16, x17, x16, lsr #2
    //     0x5e0f34: tst             x16, HEAP, lsr #32
    //     0x5e0f38: b.eq            #0x5e0f40
    //     0x5e0f3c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e0f40: r16 = "updated_at"
    //     0x5e0f40: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5e0f44: ldr             x16, [x16, #0x58]
    // 0x5e0f48: StoreField: r2->field_3f = r16
    //     0x5e0f48: stur            w16, [x2, #0x3f]
    // 0x5e0f4c: LoadField: r1 = r3->field_23
    //     0x5e0f4c: ldur            w1, [x3, #0x23]
    // 0x5e0f50: DecompressPointer r1
    //     0x5e0f50: add             x1, x1, HEAP, lsl #32
    // 0x5e0f54: cmp             w1, NULL
    // 0x5e0f58: b.ne            #0x5e0f64
    // 0x5e0f5c: r0 = Null
    //     0x5e0f5c: mov             x0, NULL
    // 0x5e0f60: b               #0x5e0f68
    // 0x5e0f64: r0 = toIso8601String()
    //     0x5e0f64: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5e0f68: ldur            x1, [fp, #-0x10]
    // 0x5e0f6c: ArrayStore: r1[13] = r0  ; List_4
    //     0x5e0f6c: add             x25, x1, #0x43
    //     0x5e0f70: str             w0, [x25]
    //     0x5e0f74: tbz             w0, #0, #0x5e0f90
    //     0x5e0f78: ldurb           w16, [x1, #-1]
    //     0x5e0f7c: ldurb           w17, [x0, #-1]
    //     0x5e0f80: and             x16, x17, x16, lsr #2
    //     0x5e0f84: tst             x16, HEAP, lsr #32
    //     0x5e0f88: b.eq            #0x5e0f90
    //     0x5e0f8c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e0f90: r16 = <String, dynamic>
    //     0x5e0f90: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5e0f94: ldur            lr, [fp, #-0x10]
    // 0x5e0f98: stp             lr, x16, [SP]
    // 0x5e0f9c: r0 = Map._fromLiteral()
    //     0x5e0f9c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5e0fa0: LeaveFrame
    //     0x5e0fa0: mov             SP, fp
    //     0x5e0fa4: ldp             fp, lr, [SP], #0x10
    // 0x5e0fa8: ret
    //     0x5e0fa8: ret             
    // 0x5e0fac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0fac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0fb0: b               #0x5e0df4
    // 0x5e0fb4: SaveReg d0
    //     0x5e0fb4: str             q0, [SP, #-0x10]!
    // 0x5e0fb8: stp             x2, x3, [SP, #-0x10]!
    // 0x5e0fbc: r0 = AllocateDouble()
    //     0x5e0fbc: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x5e0fc0: ldp             x2, x3, [SP], #0x10
    // 0x5e0fc4: RestoreReg d0
    //     0x5e0fc4: ldr             q0, [SP], #0x10
    // 0x5e0fc8: b               #0x5e0e80
  }
  Map<String, dynamic> toFirestore(CurrencyModel) {
    // ** addr: 0x5e146c, size: 0x1cc
    // 0x5e146c: EnterFrame
    //     0x5e146c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e1470: mov             fp, SP
    // 0x5e1474: AllocStack(0x20)
    //     0x5e1474: sub             SP, SP, #0x20
    // 0x5e1478: SetupParameters(CurrencyModel this /* r1 => r0, fp-0x8 */)
    //     0x5e1478: mov             x0, x1
    //     0x5e147c: stur            x1, [fp, #-8]
    // 0x5e1480: CheckStackOverflow
    //     0x5e1480: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1484: cmp             SP, x16
    //     0x5e1488: b.ls            #0x5e1618
    // 0x5e148c: r1 = Null
    //     0x5e148c: mov             x1, NULL
    // 0x5e1490: r2 = 24
    //     0x5e1490: mov             x2, #0x18
    // 0x5e1494: r0 = AllocateArray()
    //     0x5e1494: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e1498: mov             x3, x0
    // 0x5e149c: stur            x3, [fp, #-0x10]
    // 0x5e14a0: r16 = "emoji"
    //     0x5e14a0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x5e14a4: ldr             x16, [x16, #0xe10]
    // 0x5e14a8: StoreField: r3->field_f = r16
    //     0x5e14a8: stur            w16, [x3, #0xf]
    // 0x5e14ac: ldur            x2, [fp, #-8]
    // 0x5e14b0: LoadField: r0 = r2->field_b
    //     0x5e14b0: ldur            w0, [x2, #0xb]
    // 0x5e14b4: DecompressPointer r0
    //     0x5e14b4: add             x0, x0, HEAP, lsl #32
    // 0x5e14b8: StoreField: r3->field_13 = r0
    //     0x5e14b8: stur            w0, [x3, #0x13]
    // 0x5e14bc: r16 = "name"
    //     0x5e14bc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5e14c0: ArrayStore: r3[0] = r16  ; List_4
    //     0x5e14c0: stur            w16, [x3, #0x17]
    // 0x5e14c4: LoadField: r0 = r2->field_f
    //     0x5e14c4: ldur            w0, [x2, #0xf]
    // 0x5e14c8: DecompressPointer r0
    //     0x5e14c8: add             x0, x0, HEAP, lsl #32
    // 0x5e14cc: StoreField: r3->field_1b = r0
    //     0x5e14cc: stur            w0, [x3, #0x1b]
    // 0x5e14d0: r16 = "value"
    //     0x5e14d0: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x5e14d4: StoreField: r3->field_1f = r16
    //     0x5e14d4: stur            w16, [x3, #0x1f]
    // 0x5e14d8: LoadField: d0 = r2->field_13
    //     0x5e14d8: ldur            d0, [x2, #0x13]
    // 0x5e14dc: r0 = inline_Allocate_Double()
    //     0x5e14dc: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x5e14e0: add             x0, x0, #0x10
    //     0x5e14e4: cmp             x1, x0
    //     0x5e14e8: b.ls            #0x5e1620
    //     0x5e14ec: str             x0, [THR, #0x60]  ; THR::top
    //     0x5e14f0: sub             x0, x0, #0xf
    //     0x5e14f4: mov             x1, #0xe15c
    //     0x5e14f8: movk            x1, #3, lsl #16
    //     0x5e14fc: stur            x1, [x0, #-1]
    // 0x5e1500: StoreField: r0->field_7 = d0
    //     0x5e1500: stur            d0, [x0, #7]
    // 0x5e1504: mov             x1, x3
    // 0x5e1508: ArrayStore: r1[5] = r0  ; List_4
    //     0x5e1508: add             x25, x1, #0x23
    //     0x5e150c: str             w0, [x25]
    //     0x5e1510: tbz             w0, #0, #0x5e152c
    //     0x5e1514: ldurb           w16, [x1, #-1]
    //     0x5e1518: ldurb           w17, [x0, #-1]
    //     0x5e151c: and             x16, x17, x16, lsr #2
    //     0x5e1520: tst             x16, HEAP, lsr #32
    //     0x5e1524: b.eq            #0x5e152c
    //     0x5e1528: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e152c: r16 = "agency_id"
    //     0x5e152c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5e1530: ldr             x16, [x16, #0x40]
    // 0x5e1534: StoreField: r3->field_27 = r16
    //     0x5e1534: stur            w16, [x3, #0x27]
    // 0x5e1538: LoadField: r0 = r2->field_1b
    //     0x5e1538: ldur            w0, [x2, #0x1b]
    // 0x5e153c: DecompressPointer r0
    //     0x5e153c: add             x0, x0, HEAP, lsl #32
    // 0x5e1540: mov             x1, x3
    // 0x5e1544: ArrayStore: r1[7] = r0  ; List_4
    //     0x5e1544: add             x25, x1, #0x2b
    //     0x5e1548: str             w0, [x25]
    //     0x5e154c: tbz             w0, #0, #0x5e1568
    //     0x5e1550: ldurb           w16, [x1, #-1]
    //     0x5e1554: ldurb           w17, [x0, #-1]
    //     0x5e1558: and             x16, x17, x16, lsr #2
    //     0x5e155c: tst             x16, HEAP, lsr #32
    //     0x5e1560: b.eq            #0x5e1568
    //     0x5e1564: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e1568: r16 = "created_at"
    //     0x5e1568: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5e156c: ldr             x16, [x16, #0xc00]
    // 0x5e1570: StoreField: r3->field_2f = r16
    //     0x5e1570: stur            w16, [x3, #0x2f]
    // 0x5e1574: LoadField: r0 = r2->field_1f
    //     0x5e1574: ldur            w0, [x2, #0x1f]
    // 0x5e1578: DecompressPointer r0
    //     0x5e1578: add             x0, x0, HEAP, lsl #32
    // 0x5e157c: cmp             w0, NULL
    // 0x5e1580: b.eq            #0x5e1594
    // 0x5e1584: LoadField: r2 = r0->field_b
    //     0x5e1584: ldur            x2, [x0, #0xb]
    // 0x5e1588: r1 = Null
    //     0x5e1588: mov             x1, NULL
    // 0x5e158c: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x5e158c: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x5e1590: b               #0x5e1598
    // 0x5e1594: r0 = serverTimestamp()
    //     0x5e1594: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x5e1598: ldur            x2, [fp, #-0x10]
    // 0x5e159c: mov             x1, x2
    // 0x5e15a0: ArrayStore: r1[9] = r0  ; List_4
    //     0x5e15a0: add             x25, x1, #0x33
    //     0x5e15a4: str             w0, [x25]
    //     0x5e15a8: tbz             w0, #0, #0x5e15c4
    //     0x5e15ac: ldurb           w16, [x1, #-1]
    //     0x5e15b0: ldurb           w17, [x0, #-1]
    //     0x5e15b4: and             x16, x17, x16, lsr #2
    //     0x5e15b8: tst             x16, HEAP, lsr #32
    //     0x5e15bc: b.eq            #0x5e15c4
    //     0x5e15c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e15c4: r16 = "updated_at"
    //     0x5e15c4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5e15c8: ldr             x16, [x16, #0x58]
    // 0x5e15cc: StoreField: r2->field_37 = r16
    //     0x5e15cc: stur            w16, [x2, #0x37]
    // 0x5e15d0: r0 = serverTimestamp()
    //     0x5e15d0: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x5e15d4: ldur            x1, [fp, #-0x10]
    // 0x5e15d8: ArrayStore: r1[11] = r0  ; List_4
    //     0x5e15d8: add             x25, x1, #0x3b
    //     0x5e15dc: str             w0, [x25]
    //     0x5e15e0: tbz             w0, #0, #0x5e15fc
    //     0x5e15e4: ldurb           w16, [x1, #-1]
    //     0x5e15e8: ldurb           w17, [x0, #-1]
    //     0x5e15ec: and             x16, x17, x16, lsr #2
    //     0x5e15f0: tst             x16, HEAP, lsr #32
    //     0x5e15f4: b.eq            #0x5e15fc
    //     0x5e15f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e15fc: r16 = <String, dynamic>
    //     0x5e15fc: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5e1600: ldur            lr, [fp, #-0x10]
    // 0x5e1604: stp             lr, x16, [SP]
    // 0x5e1608: r0 = Map._fromLiteral()
    //     0x5e1608: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5e160c: LeaveFrame
    //     0x5e160c: mov             SP, fp
    //     0x5e1610: ldp             fp, lr, [SP], #0x10
    // 0x5e1614: ret
    //     0x5e1614: ret             
    // 0x5e1618: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e1618: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e161c: b               #0x5e148c
    // 0x5e1620: SaveReg d0
    //     0x5e1620: str             q0, [SP, #-0x10]!
    // 0x5e1624: stp             x2, x3, [SP, #-0x10]!
    // 0x5e1628: r0 = AllocateDouble()
    //     0x5e1628: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x5e162c: ldp             x2, x3, [SP], #0x10
    // 0x5e1630: RestoreReg d0
    //     0x5e1630: ldr             q0, [SP], #0x10
    // 0x5e1634: b               #0x5e1500
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x5e1638, size: 0x21c
    // 0x5e1638: EnterFrame
    //     0x5e1638: stp             fp, lr, [SP, #-0x10]!
    //     0x5e163c: mov             fp, SP
    // 0x5e1640: AllocStack(0x38)
    //     0x5e1640: sub             SP, SP, #0x38
    // 0x5e1644: SetupParameters({dynamic emoji = Null /* r3 */, dynamic id = Null /* r5 */, dynamic name = Null /* r6 */, dynamic value = Null /* r0 */})
    //     0x5e1644: ldur            w0, [x4, #0x13]
    //     0x5e1648: ldur            w2, [x4, #0x1f]
    //     0x5e164c: add             x2, x2, HEAP, lsl #32
    //     0x5e1650: add             x16, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x5e1654: ldr             x16, [x16, #0xe10]
    //     0x5e1658: cmp             w2, w16
    //     0x5e165c: b.ne            #0x5e1680
    //     0x5e1660: ldur            w2, [x4, #0x23]
    //     0x5e1664: add             x2, x2, HEAP, lsl #32
    //     0x5e1668: sub             w3, w0, w2
    //     0x5e166c: add             x2, fp, w3, sxtw #2
    //     0x5e1670: ldr             x2, [x2, #8]
    //     0x5e1674: mov             x3, x2
    //     0x5e1678: mov             x2, #1
    //     0x5e167c: b               #0x5e1688
    //     0x5e1680: mov             x3, NULL
    //     0x5e1684: mov             x2, #0
    //     0x5e1688: lsl             x5, x2, #1
    //     0x5e168c: lsl             w6, w5, #1
    //     0x5e1690: add             w7, w6, #8
    //     0x5e1694: add             x16, x4, w7, sxtw #1
    //     0x5e1698: ldur            w8, [x16, #0xf]
    //     0x5e169c: add             x8, x8, HEAP, lsl #32
    //     0x5e16a0: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5e16a4: ldr             x16, [x16, #0xae8]
    //     0x5e16a8: cmp             w8, w16
    //     0x5e16ac: b.ne            #0x5e16e0
    //     0x5e16b0: add             w2, w6, #0xa
    //     0x5e16b4: add             x16, x4, w2, sxtw #1
    //     0x5e16b8: ldur            w6, [x16, #0xf]
    //     0x5e16bc: add             x6, x6, HEAP, lsl #32
    //     0x5e16c0: sub             w2, w0, w6
    //     0x5e16c4: add             x6, fp, w2, sxtw #2
    //     0x5e16c8: ldr             x6, [x6, #8]
    //     0x5e16cc: add             w2, w5, #2
    //     0x5e16d0: sbfx            x5, x2, #1, #0x1f
    //     0x5e16d4: mov             x2, x5
    //     0x5e16d8: mov             x5, x6
    //     0x5e16dc: b               #0x5e16e4
    //     0x5e16e0: mov             x5, NULL
    //     0x5e16e4: lsl             x6, x2, #1
    //     0x5e16e8: lsl             w7, w6, #1
    //     0x5e16ec: add             w8, w7, #8
    //     0x5e16f0: add             x16, x4, w8, sxtw #1
    //     0x5e16f4: ldur            w9, [x16, #0xf]
    //     0x5e16f8: add             x9, x9, HEAP, lsl #32
    //     0x5e16fc: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    //     0x5e1700: cmp             w9, w16
    //     0x5e1704: b.ne            #0x5e1738
    //     0x5e1708: add             w2, w7, #0xa
    //     0x5e170c: add             x16, x4, w2, sxtw #1
    //     0x5e1710: ldur            w7, [x16, #0xf]
    //     0x5e1714: add             x7, x7, HEAP, lsl #32
    //     0x5e1718: sub             w2, w0, w7
    //     0x5e171c: add             x7, fp, w2, sxtw #2
    //     0x5e1720: ldr             x7, [x7, #8]
    //     0x5e1724: add             w2, w6, #2
    //     0x5e1728: sbfx            x6, x2, #1, #0x1f
    //     0x5e172c: mov             x2, x6
    //     0x5e1730: mov             x6, x7
    //     0x5e1734: b               #0x5e173c
    //     0x5e1738: mov             x6, NULL
    //     0x5e173c: lsl             x7, x2, #1
    //     0x5e1740: lsl             w2, w7, #1
    //     0x5e1744: add             w7, w2, #8
    //     0x5e1748: add             x16, x4, w7, sxtw #1
    //     0x5e174c: ldur            w8, [x16, #0xf]
    //     0x5e1750: add             x8, x8, HEAP, lsl #32
    //     0x5e1754: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    //     0x5e1758: cmp             w8, w16
    //     0x5e175c: b.ne            #0x5e1780
    //     0x5e1760: add             w7, w2, #0xa
    //     0x5e1764: add             x16, x4, w7, sxtw #1
    //     0x5e1768: ldur            w2, [x16, #0xf]
    //     0x5e176c: add             x2, x2, HEAP, lsl #32
    //     0x5e1770: sub             w4, w0, w2
    //     0x5e1774: add             x0, fp, w4, sxtw #2
    //     0x5e1778: ldr             x0, [x0, #8]
    //     0x5e177c: b               #0x5e1784
    //     0x5e1780: mov             x0, NULL
    // 0x5e1784: cmp             w5, NULL
    // 0x5e1788: b.ne            #0x5e1798
    // 0x5e178c: LoadField: r2 = r1->field_7
    //     0x5e178c: ldur            w2, [x1, #7]
    // 0x5e1790: DecompressPointer r2
    //     0x5e1790: add             x2, x2, HEAP, lsl #32
    // 0x5e1794: b               #0x5e179c
    // 0x5e1798: mov             x2, x5
    // 0x5e179c: stur            x2, [fp, #-0x30]
    // 0x5e17a0: cmp             w3, NULL
    // 0x5e17a4: b.ne            #0x5e17b0
    // 0x5e17a8: LoadField: r3 = r1->field_b
    //     0x5e17a8: ldur            w3, [x1, #0xb]
    // 0x5e17ac: DecompressPointer r3
    //     0x5e17ac: add             x3, x3, HEAP, lsl #32
    // 0x5e17b0: stur            x3, [fp, #-0x28]
    // 0x5e17b4: cmp             w6, NULL
    // 0x5e17b8: b.ne            #0x5e17c8
    // 0x5e17bc: LoadField: r4 = r1->field_f
    //     0x5e17bc: ldur            w4, [x1, #0xf]
    // 0x5e17c0: DecompressPointer r4
    //     0x5e17c0: add             x4, x4, HEAP, lsl #32
    // 0x5e17c4: b               #0x5e17cc
    // 0x5e17c8: mov             x4, x6
    // 0x5e17cc: stur            x4, [fp, #-0x20]
    // 0x5e17d0: cmp             w0, NULL
    // 0x5e17d4: b.ne            #0x5e17e0
    // 0x5e17d8: LoadField: d0 = r1->field_13
    //     0x5e17d8: ldur            d0, [x1, #0x13]
    // 0x5e17dc: b               #0x5e17e4
    // 0x5e17e0: LoadField: d0 = r0->field_7
    //     0x5e17e0: ldur            d0, [x0, #7]
    // 0x5e17e4: stur            d0, [fp, #-0x38]
    // 0x5e17e8: LoadField: r0 = r1->field_1b
    //     0x5e17e8: ldur            w0, [x1, #0x1b]
    // 0x5e17ec: DecompressPointer r0
    //     0x5e17ec: add             x0, x0, HEAP, lsl #32
    // 0x5e17f0: stur            x0, [fp, #-0x18]
    // 0x5e17f4: LoadField: r5 = r1->field_1f
    //     0x5e17f4: ldur            w5, [x1, #0x1f]
    // 0x5e17f8: DecompressPointer r5
    //     0x5e17f8: add             x5, x5, HEAP, lsl #32
    // 0x5e17fc: stur            x5, [fp, #-0x10]
    // 0x5e1800: LoadField: r6 = r1->field_23
    //     0x5e1800: ldur            w6, [x1, #0x23]
    // 0x5e1804: DecompressPointer r6
    //     0x5e1804: add             x6, x6, HEAP, lsl #32
    // 0x5e1808: stur            x6, [fp, #-8]
    // 0x5e180c: r0 = CurrencyModel()
    //     0x5e180c: bl              #0x5e0fec  ; AllocateCurrencyModelStub -> CurrencyModel (size=0x28)
    // 0x5e1810: ldur            x1, [fp, #-0x30]
    // 0x5e1814: StoreField: r0->field_7 = r1
    //     0x5e1814: stur            w1, [x0, #7]
    // 0x5e1818: ldur            x1, [fp, #-0x28]
    // 0x5e181c: StoreField: r0->field_b = r1
    //     0x5e181c: stur            w1, [x0, #0xb]
    // 0x5e1820: ldur            x1, [fp, #-0x20]
    // 0x5e1824: StoreField: r0->field_f = r1
    //     0x5e1824: stur            w1, [x0, #0xf]
    // 0x5e1828: ldur            d0, [fp, #-0x38]
    // 0x5e182c: StoreField: r0->field_13 = d0
    //     0x5e182c: stur            d0, [x0, #0x13]
    // 0x5e1830: ldur            x1, [fp, #-0x18]
    // 0x5e1834: StoreField: r0->field_1b = r1
    //     0x5e1834: stur            w1, [x0, #0x1b]
    // 0x5e1838: ldur            x1, [fp, #-0x10]
    // 0x5e183c: StoreField: r0->field_1f = r1
    //     0x5e183c: stur            w1, [x0, #0x1f]
    // 0x5e1840: ldur            x1, [fp, #-8]
    // 0x5e1844: StoreField: r0->field_23 = r1
    //     0x5e1844: stur            w1, [x0, #0x23]
    // 0x5e1848: LeaveFrame
    //     0x5e1848: mov             SP, fp
    //     0x5e184c: ldp             fp, lr, [SP], #0x10
    // 0x5e1850: ret
    //     0x5e1850: ret             
  }
  factory _ CurrencyModel.fromJson(/* No info */) {
    // ** addr: 0x5f497c, size: 0x3e4
    // 0x5f497c: EnterFrame
    //     0x5f497c: stp             fp, lr, [SP, #-0x10]!
    //     0x5f4980: mov             fp, SP
    // 0x5f4984: AllocStack(0x40)
    //     0x5f4984: sub             SP, SP, #0x40
    // 0x5f4988: SetupParameters(dynamic _ /* r2 => r3, fp-0x8 */)
    //     0x5f4988: mov             x3, x2
    //     0x5f498c: stur            x2, [fp, #-8]
    // 0x5f4990: CheckStackOverflow
    //     0x5f4990: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f4994: cmp             SP, x16
    //     0x5f4998: b.ls            #0x5f4d58
    // 0x5f499c: r0 = LoadClassIdInstr(r3)
    //     0x5f499c: ldur            x0, [x3, #-1]
    //     0x5f49a0: ubfx            x0, x0, #0xc, #0x14
    // 0x5f49a4: mov             x1, x3
    // 0x5f49a8: r2 = "id"
    //     0x5f49a8: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5f49ac: ldr             x2, [x2, #0xae8]
    // 0x5f49b0: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f49b0: add             lr, x0, #0x36e
    //     0x5f49b4: ldr             lr, [x21, lr, lsl #3]
    //     0x5f49b8: blr             lr
    // 0x5f49bc: cmp             w0, NULL
    // 0x5f49c0: b.ne            #0x5f49cc
    // 0x5f49c4: r4 = ""
    //     0x5f49c4: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f49c8: b               #0x5f49d0
    // 0x5f49cc: mov             x4, x0
    // 0x5f49d0: ldur            x3, [fp, #-8]
    // 0x5f49d4: mov             x0, x4
    // 0x5f49d8: stur            x4, [fp, #-0x10]
    // 0x5f49dc: r2 = Null
    //     0x5f49dc: mov             x2, NULL
    // 0x5f49e0: r1 = Null
    //     0x5f49e0: mov             x1, NULL
    // 0x5f49e4: r4 = 60
    //     0x5f49e4: mov             x4, #0x3c
    // 0x5f49e8: branchIfSmi(r0, 0x5f49f4)
    //     0x5f49e8: tbz             w0, #0, #0x5f49f4
    // 0x5f49ec: r4 = LoadClassIdInstr(r0)
    //     0x5f49ec: ldur            x4, [x0, #-1]
    //     0x5f49f0: ubfx            x4, x4, #0xc, #0x14
    // 0x5f49f4: sub             x4, x4, #0x5e
    // 0x5f49f8: cmp             x4, #1
    // 0x5f49fc: b.ls            #0x5f4a10
    // 0x5f4a00: r8 = String
    //     0x5f4a00: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4a04: r3 = Null
    //     0x5f4a04: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e00] Null
    //     0x5f4a08: ldr             x3, [x3, #0xe00]
    // 0x5f4a0c: r0 = String()
    //     0x5f4a0c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4a10: ldur            x3, [fp, #-8]
    // 0x5f4a14: r0 = LoadClassIdInstr(r3)
    //     0x5f4a14: ldur            x0, [x3, #-1]
    //     0x5f4a18: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4a1c: mov             x1, x3
    // 0x5f4a20: r2 = "emoji"
    //     0x5f4a20: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x5f4a24: ldr             x2, [x2, #0xe10]
    // 0x5f4a28: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4a28: add             lr, x0, #0x36e
    //     0x5f4a2c: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4a30: blr             lr
    // 0x5f4a34: cmp             w0, NULL
    // 0x5f4a38: b.ne            #0x5f4a44
    // 0x5f4a3c: r4 = ""
    //     0x5f4a3c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f4a40: b               #0x5f4a48
    // 0x5f4a44: mov             x4, x0
    // 0x5f4a48: ldur            x3, [fp, #-8]
    // 0x5f4a4c: mov             x0, x4
    // 0x5f4a50: stur            x4, [fp, #-0x18]
    // 0x5f4a54: r2 = Null
    //     0x5f4a54: mov             x2, NULL
    // 0x5f4a58: r1 = Null
    //     0x5f4a58: mov             x1, NULL
    // 0x5f4a5c: r4 = 60
    //     0x5f4a5c: mov             x4, #0x3c
    // 0x5f4a60: branchIfSmi(r0, 0x5f4a6c)
    //     0x5f4a60: tbz             w0, #0, #0x5f4a6c
    // 0x5f4a64: r4 = LoadClassIdInstr(r0)
    //     0x5f4a64: ldur            x4, [x0, #-1]
    //     0x5f4a68: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4a6c: sub             x4, x4, #0x5e
    // 0x5f4a70: cmp             x4, #1
    // 0x5f4a74: b.ls            #0x5f4a88
    // 0x5f4a78: r8 = String
    //     0x5f4a78: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4a7c: r3 = Null
    //     0x5f4a7c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e10] Null
    //     0x5f4a80: ldr             x3, [x3, #0xe10]
    // 0x5f4a84: r0 = String()
    //     0x5f4a84: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4a88: ldur            x3, [fp, #-8]
    // 0x5f4a8c: r0 = LoadClassIdInstr(r3)
    //     0x5f4a8c: ldur            x0, [x3, #-1]
    //     0x5f4a90: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4a94: mov             x1, x3
    // 0x5f4a98: r2 = "name"
    //     0x5f4a98: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5f4a9c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4a9c: add             lr, x0, #0x36e
    //     0x5f4aa0: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4aa4: blr             lr
    // 0x5f4aa8: cmp             w0, NULL
    // 0x5f4aac: b.ne            #0x5f4ab8
    // 0x5f4ab0: r4 = ""
    //     0x5f4ab0: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f4ab4: b               #0x5f4abc
    // 0x5f4ab8: mov             x4, x0
    // 0x5f4abc: ldur            x3, [fp, #-8]
    // 0x5f4ac0: mov             x0, x4
    // 0x5f4ac4: stur            x4, [fp, #-0x20]
    // 0x5f4ac8: r2 = Null
    //     0x5f4ac8: mov             x2, NULL
    // 0x5f4acc: r1 = Null
    //     0x5f4acc: mov             x1, NULL
    // 0x5f4ad0: r4 = 60
    //     0x5f4ad0: mov             x4, #0x3c
    // 0x5f4ad4: branchIfSmi(r0, 0x5f4ae0)
    //     0x5f4ad4: tbz             w0, #0, #0x5f4ae0
    // 0x5f4ad8: r4 = LoadClassIdInstr(r0)
    //     0x5f4ad8: ldur            x4, [x0, #-1]
    //     0x5f4adc: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4ae0: sub             x4, x4, #0x5e
    // 0x5f4ae4: cmp             x4, #1
    // 0x5f4ae8: b.ls            #0x5f4afc
    // 0x5f4aec: r8 = String
    //     0x5f4aec: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4af0: r3 = Null
    //     0x5f4af0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e20] Null
    //     0x5f4af4: ldr             x3, [x3, #0xe20]
    // 0x5f4af8: r0 = String()
    //     0x5f4af8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4afc: ldur            x3, [fp, #-8]
    // 0x5f4b00: r0 = LoadClassIdInstr(r3)
    //     0x5f4b00: ldur            x0, [x3, #-1]
    //     0x5f4b04: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4b08: mov             x1, x3
    // 0x5f4b0c: r2 = "value"
    //     0x5f4b0c: ldr             x2, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x5f4b10: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4b10: add             lr, x0, #0x36e
    //     0x5f4b14: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4b18: blr             lr
    // 0x5f4b1c: cmp             w0, NULL
    // 0x5f4b20: b.ne            #0x5f4b28
    // 0x5f4b24: r0 = 0
    //     0x5f4b24: mov             x0, #0
    // 0x5f4b28: ldur            x1, [fp, #-8]
    // 0x5f4b2c: str             x0, [SP]
    // 0x5f4b30: r4 = 0
    //     0x5f4b30: mov             x4, #0
    // 0x5f4b34: ldr             x0, [SP]
    // 0x5f4b38: r16 = 139786425482080
    //     0x5f4b38: add             x16, PP, #0x19, lsl #12  ; [pp+0x19e30] IMM: 0x7f22903c3b60
    //     0x5f4b3c: add             x16, x16, #0xe30
    // 0x5f4b40: ldp             lr, x5, [x16]
    // 0x5f4b44: blr             lr
    // 0x5f4b48: mov             x4, x0
    // 0x5f4b4c: ldur            x3, [fp, #-8]
    // 0x5f4b50: stur            x4, [fp, #-0x28]
    // 0x5f4b54: r0 = LoadClassIdInstr(r3)
    //     0x5f4b54: ldur            x0, [x3, #-1]
    //     0x5f4b58: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4b5c: mov             x1, x3
    // 0x5f4b60: r2 = "agency_id"
    //     0x5f4b60: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5f4b64: ldr             x2, [x2, #0x40]
    // 0x5f4b68: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4b68: add             lr, x0, #0x36e
    //     0x5f4b6c: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4b70: blr             lr
    // 0x5f4b74: mov             x3, x0
    // 0x5f4b78: r2 = Null
    //     0x5f4b78: mov             x2, NULL
    // 0x5f4b7c: r1 = Null
    //     0x5f4b7c: mov             x1, NULL
    // 0x5f4b80: stur            x3, [fp, #-0x30]
    // 0x5f4b84: r4 = 60
    //     0x5f4b84: mov             x4, #0x3c
    // 0x5f4b88: branchIfSmi(r0, 0x5f4b94)
    //     0x5f4b88: tbz             w0, #0, #0x5f4b94
    // 0x5f4b8c: r4 = LoadClassIdInstr(r0)
    //     0x5f4b8c: ldur            x4, [x0, #-1]
    //     0x5f4b90: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4b94: sub             x4, x4, #0x5e
    // 0x5f4b98: cmp             x4, #1
    // 0x5f4b9c: b.ls            #0x5f4bb0
    // 0x5f4ba0: r8 = String?
    //     0x5f4ba0: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f4ba4: r3 = Null
    //     0x5f4ba4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e40] Null
    //     0x5f4ba8: ldr             x3, [x3, #0xe40]
    // 0x5f4bac: r0 = String?()
    //     0x5f4bac: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f4bb0: ldur            x3, [fp, #-8]
    // 0x5f4bb4: r0 = LoadClassIdInstr(r3)
    //     0x5f4bb4: ldur            x0, [x3, #-1]
    //     0x5f4bb8: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4bbc: mov             x1, x3
    // 0x5f4bc0: r2 = "created_at"
    //     0x5f4bc0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f4bc4: ldr             x2, [x2, #0xc00]
    // 0x5f4bc8: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4bc8: add             lr, x0, #0x36e
    //     0x5f4bcc: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4bd0: blr             lr
    // 0x5f4bd4: cmp             w0, NULL
    // 0x5f4bd8: b.eq            #0x5f4c4c
    // 0x5f4bdc: ldur            x3, [fp, #-8]
    // 0x5f4be0: r0 = LoadClassIdInstr(r3)
    //     0x5f4be0: ldur            x0, [x3, #-1]
    //     0x5f4be4: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4be8: mov             x1, x3
    // 0x5f4bec: r2 = "created_at"
    //     0x5f4bec: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f4bf0: ldr             x2, [x2, #0xc00]
    // 0x5f4bf4: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4bf4: add             lr, x0, #0x36e
    //     0x5f4bf8: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4bfc: blr             lr
    // 0x5f4c00: mov             x3, x0
    // 0x5f4c04: r2 = Null
    //     0x5f4c04: mov             x2, NULL
    // 0x5f4c08: r1 = Null
    //     0x5f4c08: mov             x1, NULL
    // 0x5f4c0c: stur            x3, [fp, #-0x38]
    // 0x5f4c10: r4 = 60
    //     0x5f4c10: mov             x4, #0x3c
    // 0x5f4c14: branchIfSmi(r0, 0x5f4c20)
    //     0x5f4c14: tbz             w0, #0, #0x5f4c20
    // 0x5f4c18: r4 = LoadClassIdInstr(r0)
    //     0x5f4c18: ldur            x4, [x0, #-1]
    //     0x5f4c1c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4c20: sub             x4, x4, #0x5e
    // 0x5f4c24: cmp             x4, #1
    // 0x5f4c28: b.ls            #0x5f4c3c
    // 0x5f4c2c: r8 = String
    //     0x5f4c2c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4c30: r3 = Null
    //     0x5f4c30: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e50] Null
    //     0x5f4c34: ldr             x3, [x3, #0xe50]
    // 0x5f4c38: r0 = String()
    //     0x5f4c38: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4c3c: ldur            x1, [fp, #-0x38]
    // 0x5f4c40: r0 = parse()
    //     0x5f4c40: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f4c44: mov             x4, x0
    // 0x5f4c48: b               #0x5f4c50
    // 0x5f4c4c: r4 = Null
    //     0x5f4c4c: mov             x4, NULL
    // 0x5f4c50: ldur            x3, [fp, #-8]
    // 0x5f4c54: stur            x4, [fp, #-0x38]
    // 0x5f4c58: r0 = LoadClassIdInstr(r3)
    //     0x5f4c58: ldur            x0, [x3, #-1]
    //     0x5f4c5c: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4c60: mov             x1, x3
    // 0x5f4c64: r2 = "updated_at"
    //     0x5f4c64: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f4c68: ldr             x2, [x2, #0x58]
    // 0x5f4c6c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4c6c: add             lr, x0, #0x36e
    //     0x5f4c70: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4c74: blr             lr
    // 0x5f4c78: cmp             w0, NULL
    // 0x5f4c7c: b.eq            #0x5f4cec
    // 0x5f4c80: ldur            x1, [fp, #-8]
    // 0x5f4c84: r0 = LoadClassIdInstr(r1)
    //     0x5f4c84: ldur            x0, [x1, #-1]
    //     0x5f4c88: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4c8c: r2 = "updated_at"
    //     0x5f4c8c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f4c90: ldr             x2, [x2, #0x58]
    // 0x5f4c94: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4c94: add             lr, x0, #0x36e
    //     0x5f4c98: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4c9c: blr             lr
    // 0x5f4ca0: mov             x3, x0
    // 0x5f4ca4: r2 = Null
    //     0x5f4ca4: mov             x2, NULL
    // 0x5f4ca8: r1 = Null
    //     0x5f4ca8: mov             x1, NULL
    // 0x5f4cac: stur            x3, [fp, #-8]
    // 0x5f4cb0: r4 = 60
    //     0x5f4cb0: mov             x4, #0x3c
    // 0x5f4cb4: branchIfSmi(r0, 0x5f4cc0)
    //     0x5f4cb4: tbz             w0, #0, #0x5f4cc0
    // 0x5f4cb8: r4 = LoadClassIdInstr(r0)
    //     0x5f4cb8: ldur            x4, [x0, #-1]
    //     0x5f4cbc: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4cc0: sub             x4, x4, #0x5e
    // 0x5f4cc4: cmp             x4, #1
    // 0x5f4cc8: b.ls            #0x5f4cdc
    // 0x5f4ccc: r8 = String
    //     0x5f4ccc: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4cd0: r3 = Null
    //     0x5f4cd0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e60] Null
    //     0x5f4cd4: ldr             x3, [x3, #0xe60]
    // 0x5f4cd8: r0 = String()
    //     0x5f4cd8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4cdc: ldur            x1, [fp, #-8]
    // 0x5f4ce0: r0 = parse()
    //     0x5f4ce0: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f4ce4: mov             x6, x0
    // 0x5f4ce8: b               #0x5f4cf0
    // 0x5f4cec: r6 = Null
    //     0x5f4cec: mov             x6, NULL
    // 0x5f4cf0: ldur            x5, [fp, #-0x10]
    // 0x5f4cf4: ldur            x4, [fp, #-0x18]
    // 0x5f4cf8: ldur            x3, [fp, #-0x20]
    // 0x5f4cfc: ldur            x2, [fp, #-0x28]
    // 0x5f4d00: ldur            x1, [fp, #-0x30]
    // 0x5f4d04: ldur            x0, [fp, #-0x38]
    // 0x5f4d08: stur            x6, [fp, #-8]
    // 0x5f4d0c: r0 = CurrencyModel()
    //     0x5f4d0c: bl              #0x5e0fec  ; AllocateCurrencyModelStub -> CurrencyModel (size=0x28)
    // 0x5f4d10: ldur            x1, [fp, #-0x10]
    // 0x5f4d14: StoreField: r0->field_7 = r1
    //     0x5f4d14: stur            w1, [x0, #7]
    // 0x5f4d18: ldur            x1, [fp, #-0x18]
    // 0x5f4d1c: StoreField: r0->field_b = r1
    //     0x5f4d1c: stur            w1, [x0, #0xb]
    // 0x5f4d20: ldur            x1, [fp, #-0x20]
    // 0x5f4d24: StoreField: r0->field_f = r1
    //     0x5f4d24: stur            w1, [x0, #0xf]
    // 0x5f4d28: ldur            x1, [fp, #-0x28]
    // 0x5f4d2c: LoadField: d0 = r1->field_7
    //     0x5f4d2c: ldur            d0, [x1, #7]
    // 0x5f4d30: StoreField: r0->field_13 = d0
    //     0x5f4d30: stur            d0, [x0, #0x13]
    // 0x5f4d34: ldur            x1, [fp, #-0x30]
    // 0x5f4d38: StoreField: r0->field_1b = r1
    //     0x5f4d38: stur            w1, [x0, #0x1b]
    // 0x5f4d3c: ldur            x1, [fp, #-0x38]
    // 0x5f4d40: StoreField: r0->field_1f = r1
    //     0x5f4d40: stur            w1, [x0, #0x1f]
    // 0x5f4d44: ldur            x1, [fp, #-8]
    // 0x5f4d48: StoreField: r0->field_23 = r1
    //     0x5f4d48: stur            w1, [x0, #0x23]
    // 0x5f4d4c: LeaveFrame
    //     0x5f4d4c: mov             SP, fp
    //     0x5f4d50: ldp             fp, lr, [SP], #0x10
    // 0x5f4d54: ret
    //     0x5f4d54: ret             
    // 0x5f4d58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f4d58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f4d5c: b               #0x5f499c
  }
}
