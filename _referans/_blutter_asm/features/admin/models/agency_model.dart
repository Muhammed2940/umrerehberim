// lib: , url: package:umrem_demo/features/admin/models/agency_model.dart

// class id: 1049510, size: 0x8
class :: {
}

// class id: 206, size: 0x2c, field offset: 0x8
class AgencyModel extends Object {

  factory _ AgencyModel.fromFirestore(/* No info */) {
    // ** addr: 0x5dbb78, size: 0x48c
    // 0x5dbb78: EnterFrame
    //     0x5dbb78: stp             fp, lr, [SP, #-0x10]!
    //     0x5dbb7c: mov             fp, SP
    // 0x5dbb80: AllocStack(0x48)
    //     0x5dbb80: sub             SP, SP, #0x48
    // 0x5dbb84: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5dbb84: mov             x0, x2
    //     0x5dbb88: stur            x2, [fp, #-8]
    // 0x5dbb8c: CheckStackOverflow
    //     0x5dbb8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dbb90: cmp             SP, x16
    //     0x5dbb94: b.ls            #0x5dbffc
    // 0x5dbb98: mov             x1, x0
    // 0x5dbb9c: r0 = data()
    //     0x5dbb9c: bl              #0x8d0f60  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQueryDocumentSnapshot::data
    // 0x5dbba0: mov             x2, x0
    // 0x5dbba4: ldur            x0, [fp, #-8]
    // 0x5dbba8: stur            x2, [fp, #-0x10]
    // 0x5dbbac: LoadField: r1 = r0->field_b
    //     0x5dbbac: ldur            w1, [x0, #0xb]
    // 0x5dbbb0: DecompressPointer r1
    //     0x5dbbb0: add             x1, x1, HEAP, lsl #32
    // 0x5dbbb4: LoadField: r0 = r1->field_b
    //     0x5dbbb4: ldur            w0, [x1, #0xb]
    // 0x5dbbb8: DecompressPointer r0
    //     0x5dbbb8: add             x0, x0, HEAP, lsl #32
    // 0x5dbbbc: LoadField: r1 = r0->field_7
    //     0x5dbbbc: ldur            w1, [x0, #7]
    // 0x5dbbc0: DecompressPointer r1
    //     0x5dbbc0: add             x1, x1, HEAP, lsl #32
    // 0x5dbbc4: r0 = last()
    //     0x5dbbc4: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5dbbc8: ldur            x1, [fp, #-0x10]
    // 0x5dbbcc: r2 = "name"
    //     0x5dbbcc: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5dbbd0: stur            x0, [fp, #-8]
    // 0x5dbbd4: r0 = _getValueOrData()
    //     0x5dbbd4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbbd8: ldur            x3, [fp, #-0x10]
    // 0x5dbbdc: LoadField: r1 = r3->field_f
    //     0x5dbbdc: ldur            w1, [x3, #0xf]
    // 0x5dbbe0: DecompressPointer r1
    //     0x5dbbe0: add             x1, x1, HEAP, lsl #32
    // 0x5dbbe4: cmp             w1, w0
    // 0x5dbbe8: b.ne            #0x5dbbf0
    // 0x5dbbec: r0 = Null
    //     0x5dbbec: mov             x0, NULL
    // 0x5dbbf0: cmp             w0, NULL
    // 0x5dbbf4: b.ne            #0x5dbc00
    // 0x5dbbf8: r4 = ""
    //     0x5dbbf8: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5dbbfc: b               #0x5dbc04
    // 0x5dbc00: mov             x4, x0
    // 0x5dbc04: mov             x0, x4
    // 0x5dbc08: stur            x4, [fp, #-0x18]
    // 0x5dbc0c: r2 = Null
    //     0x5dbc0c: mov             x2, NULL
    // 0x5dbc10: r1 = Null
    //     0x5dbc10: mov             x1, NULL
    // 0x5dbc14: r4 = 60
    //     0x5dbc14: mov             x4, #0x3c
    // 0x5dbc18: branchIfSmi(r0, 0x5dbc24)
    //     0x5dbc18: tbz             w0, #0, #0x5dbc24
    // 0x5dbc1c: r4 = LoadClassIdInstr(r0)
    //     0x5dbc1c: ldur            x4, [x0, #-1]
    //     0x5dbc20: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbc24: sub             x4, x4, #0x5e
    // 0x5dbc28: cmp             x4, #1
    // 0x5dbc2c: b.ls            #0x5dbc40
    // 0x5dbc30: r8 = String
    //     0x5dbc30: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5dbc34: r3 = Null
    //     0x5dbc34: add             x3, PP, #0x19, lsl #12  ; [pp+0x19878] Null
    //     0x5dbc38: ldr             x3, [x3, #0x878]
    // 0x5dbc3c: r0 = String()
    //     0x5dbc3c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5dbc40: ldur            x1, [fp, #-0x10]
    // 0x5dbc44: r2 = "description"
    //     0x5dbc44: add             x2, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x5dbc48: ldr             x2, [x2, #0x20]
    // 0x5dbc4c: r0 = _getValueOrData()
    //     0x5dbc4c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbc50: ldur            x3, [fp, #-0x10]
    // 0x5dbc54: LoadField: r1 = r3->field_f
    //     0x5dbc54: ldur            w1, [x3, #0xf]
    // 0x5dbc58: DecompressPointer r1
    //     0x5dbc58: add             x1, x1, HEAP, lsl #32
    // 0x5dbc5c: cmp             w1, w0
    // 0x5dbc60: b.ne            #0x5dbc6c
    // 0x5dbc64: r4 = Null
    //     0x5dbc64: mov             x4, NULL
    // 0x5dbc68: b               #0x5dbc70
    // 0x5dbc6c: mov             x4, x0
    // 0x5dbc70: mov             x0, x4
    // 0x5dbc74: stur            x4, [fp, #-0x20]
    // 0x5dbc78: r2 = Null
    //     0x5dbc78: mov             x2, NULL
    // 0x5dbc7c: r1 = Null
    //     0x5dbc7c: mov             x1, NULL
    // 0x5dbc80: r4 = 60
    //     0x5dbc80: mov             x4, #0x3c
    // 0x5dbc84: branchIfSmi(r0, 0x5dbc90)
    //     0x5dbc84: tbz             w0, #0, #0x5dbc90
    // 0x5dbc88: r4 = LoadClassIdInstr(r0)
    //     0x5dbc88: ldur            x4, [x0, #-1]
    //     0x5dbc8c: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbc90: sub             x4, x4, #0x5e
    // 0x5dbc94: cmp             x4, #1
    // 0x5dbc98: b.ls            #0x5dbcac
    // 0x5dbc9c: r8 = String?
    //     0x5dbc9c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dbca0: r3 = Null
    //     0x5dbca0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19888] Null
    //     0x5dbca4: ldr             x3, [x3, #0x888]
    // 0x5dbca8: r0 = String?()
    //     0x5dbca8: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dbcac: ldur            x1, [fp, #-0x10]
    // 0x5dbcb0: r2 = "phone"
    //     0x5dbcb0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19818] "phone"
    //     0x5dbcb4: ldr             x2, [x2, #0x818]
    // 0x5dbcb8: r0 = _getValueOrData()
    //     0x5dbcb8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbcbc: ldur            x3, [fp, #-0x10]
    // 0x5dbcc0: LoadField: r1 = r3->field_f
    //     0x5dbcc0: ldur            w1, [x3, #0xf]
    // 0x5dbcc4: DecompressPointer r1
    //     0x5dbcc4: add             x1, x1, HEAP, lsl #32
    // 0x5dbcc8: cmp             w1, w0
    // 0x5dbccc: b.ne            #0x5dbcd8
    // 0x5dbcd0: r4 = Null
    //     0x5dbcd0: mov             x4, NULL
    // 0x5dbcd4: b               #0x5dbcdc
    // 0x5dbcd8: mov             x4, x0
    // 0x5dbcdc: mov             x0, x4
    // 0x5dbce0: stur            x4, [fp, #-0x28]
    // 0x5dbce4: r2 = Null
    //     0x5dbce4: mov             x2, NULL
    // 0x5dbce8: r1 = Null
    //     0x5dbce8: mov             x1, NULL
    // 0x5dbcec: r4 = 60
    //     0x5dbcec: mov             x4, #0x3c
    // 0x5dbcf0: branchIfSmi(r0, 0x5dbcfc)
    //     0x5dbcf0: tbz             w0, #0, #0x5dbcfc
    // 0x5dbcf4: r4 = LoadClassIdInstr(r0)
    //     0x5dbcf4: ldur            x4, [x0, #-1]
    //     0x5dbcf8: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbcfc: sub             x4, x4, #0x5e
    // 0x5dbd00: cmp             x4, #1
    // 0x5dbd04: b.ls            #0x5dbd18
    // 0x5dbd08: r8 = String?
    //     0x5dbd08: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dbd0c: r3 = Null
    //     0x5dbd0c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19898] Null
    //     0x5dbd10: ldr             x3, [x3, #0x898]
    // 0x5dbd14: r0 = String?()
    //     0x5dbd14: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dbd18: ldur            x1, [fp, #-0x10]
    // 0x5dbd1c: r2 = "email"
    //     0x5dbd1c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19808] "email"
    //     0x5dbd20: ldr             x2, [x2, #0x808]
    // 0x5dbd24: r0 = _getValueOrData()
    //     0x5dbd24: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbd28: ldur            x3, [fp, #-0x10]
    // 0x5dbd2c: LoadField: r1 = r3->field_f
    //     0x5dbd2c: ldur            w1, [x3, #0xf]
    // 0x5dbd30: DecompressPointer r1
    //     0x5dbd30: add             x1, x1, HEAP, lsl #32
    // 0x5dbd34: cmp             w1, w0
    // 0x5dbd38: b.ne            #0x5dbd44
    // 0x5dbd3c: r4 = Null
    //     0x5dbd3c: mov             x4, NULL
    // 0x5dbd40: b               #0x5dbd48
    // 0x5dbd44: mov             x4, x0
    // 0x5dbd48: mov             x0, x4
    // 0x5dbd4c: stur            x4, [fp, #-0x30]
    // 0x5dbd50: r2 = Null
    //     0x5dbd50: mov             x2, NULL
    // 0x5dbd54: r1 = Null
    //     0x5dbd54: mov             x1, NULL
    // 0x5dbd58: r4 = 60
    //     0x5dbd58: mov             x4, #0x3c
    // 0x5dbd5c: branchIfSmi(r0, 0x5dbd68)
    //     0x5dbd5c: tbz             w0, #0, #0x5dbd68
    // 0x5dbd60: r4 = LoadClassIdInstr(r0)
    //     0x5dbd60: ldur            x4, [x0, #-1]
    //     0x5dbd64: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbd68: sub             x4, x4, #0x5e
    // 0x5dbd6c: cmp             x4, #1
    // 0x5dbd70: b.ls            #0x5dbd84
    // 0x5dbd74: r8 = String?
    //     0x5dbd74: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dbd78: r3 = Null
    //     0x5dbd78: add             x3, PP, #0x19, lsl #12  ; [pp+0x198a8] Null
    //     0x5dbd7c: ldr             x3, [x3, #0x8a8]
    // 0x5dbd80: r0 = String?()
    //     0x5dbd80: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dbd84: ldur            x1, [fp, #-0x10]
    // 0x5dbd88: r2 = "address"
    //     0x5dbd88: add             x2, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x5dbd8c: ldr             x2, [x2, #0x2a8]
    // 0x5dbd90: r0 = _getValueOrData()
    //     0x5dbd90: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbd94: ldur            x3, [fp, #-0x10]
    // 0x5dbd98: LoadField: r1 = r3->field_f
    //     0x5dbd98: ldur            w1, [x3, #0xf]
    // 0x5dbd9c: DecompressPointer r1
    //     0x5dbd9c: add             x1, x1, HEAP, lsl #32
    // 0x5dbda0: cmp             w1, w0
    // 0x5dbda4: b.ne            #0x5dbdb0
    // 0x5dbda8: r4 = Null
    //     0x5dbda8: mov             x4, NULL
    // 0x5dbdac: b               #0x5dbdb4
    // 0x5dbdb0: mov             x4, x0
    // 0x5dbdb4: mov             x0, x4
    // 0x5dbdb8: stur            x4, [fp, #-0x38]
    // 0x5dbdbc: r2 = Null
    //     0x5dbdbc: mov             x2, NULL
    // 0x5dbdc0: r1 = Null
    //     0x5dbdc0: mov             x1, NULL
    // 0x5dbdc4: r4 = 60
    //     0x5dbdc4: mov             x4, #0x3c
    // 0x5dbdc8: branchIfSmi(r0, 0x5dbdd4)
    //     0x5dbdc8: tbz             w0, #0, #0x5dbdd4
    // 0x5dbdcc: r4 = LoadClassIdInstr(r0)
    //     0x5dbdcc: ldur            x4, [x0, #-1]
    //     0x5dbdd0: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbdd4: sub             x4, x4, #0x5e
    // 0x5dbdd8: cmp             x4, #1
    // 0x5dbddc: b.ls            #0x5dbdf0
    // 0x5dbde0: r8 = String?
    //     0x5dbde0: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5dbde4: r3 = Null
    //     0x5dbde4: add             x3, PP, #0x19, lsl #12  ; [pp+0x198b8] Null
    //     0x5dbde8: ldr             x3, [x3, #0x8b8]
    // 0x5dbdec: r0 = String?()
    //     0x5dbdec: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5dbdf0: ldur            x1, [fp, #-0x10]
    // 0x5dbdf4: r2 = "is_active"
    //     0x5dbdf4: add             x2, PP, #0x19, lsl #12  ; [pp+0x19820] "is_active"
    //     0x5dbdf8: ldr             x2, [x2, #0x820]
    // 0x5dbdfc: r0 = _getValueOrData()
    //     0x5dbdfc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbe00: ldur            x3, [fp, #-0x10]
    // 0x5dbe04: LoadField: r1 = r3->field_f
    //     0x5dbe04: ldur            w1, [x3, #0xf]
    // 0x5dbe08: DecompressPointer r1
    //     0x5dbe08: add             x1, x1, HEAP, lsl #32
    // 0x5dbe0c: cmp             w1, w0
    // 0x5dbe10: b.ne            #0x5dbe18
    // 0x5dbe14: r0 = Null
    //     0x5dbe14: mov             x0, NULL
    // 0x5dbe18: cmp             w0, NULL
    // 0x5dbe1c: b.ne            #0x5dbe28
    // 0x5dbe20: r4 = true
    //     0x5dbe20: add             x4, NULL, #0x20  ; true
    // 0x5dbe24: b               #0x5dbe2c
    // 0x5dbe28: mov             x4, x0
    // 0x5dbe2c: mov             x0, x4
    // 0x5dbe30: stur            x4, [fp, #-0x40]
    // 0x5dbe34: r2 = Null
    //     0x5dbe34: mov             x2, NULL
    // 0x5dbe38: r1 = Null
    //     0x5dbe38: mov             x1, NULL
    // 0x5dbe3c: r4 = 60
    //     0x5dbe3c: mov             x4, #0x3c
    // 0x5dbe40: branchIfSmi(r0, 0x5dbe4c)
    //     0x5dbe40: tbz             w0, #0, #0x5dbe4c
    // 0x5dbe44: r4 = LoadClassIdInstr(r0)
    //     0x5dbe44: ldur            x4, [x0, #-1]
    //     0x5dbe48: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbe4c: cmp             x4, #0x3f
    // 0x5dbe50: b.eq            #0x5dbe64
    // 0x5dbe54: r8 = bool
    //     0x5dbe54: ldr             x8, [PP, #0x29b0]  ; [pp+0x29b0] Type: bool
    // 0x5dbe58: r3 = Null
    //     0x5dbe58: add             x3, PP, #0x19, lsl #12  ; [pp+0x198c8] Null
    //     0x5dbe5c: ldr             x3, [x3, #0x8c8]
    // 0x5dbe60: r0 = bool()
    //     0x5dbe60: bl              #0x939a38  ; IsType_bool_Stub
    // 0x5dbe64: ldur            x1, [fp, #-0x10]
    // 0x5dbe68: r2 = "created_at"
    //     0x5dbe68: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5dbe6c: ldr             x2, [x2, #0xc00]
    // 0x5dbe70: r0 = _getValueOrData()
    //     0x5dbe70: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbe74: ldur            x3, [fp, #-0x10]
    // 0x5dbe78: LoadField: r1 = r3->field_f
    //     0x5dbe78: ldur            w1, [x3, #0xf]
    // 0x5dbe7c: DecompressPointer r1
    //     0x5dbe7c: add             x1, x1, HEAP, lsl #32
    // 0x5dbe80: cmp             w1, w0
    // 0x5dbe84: b.ne            #0x5dbe90
    // 0x5dbe88: r4 = Null
    //     0x5dbe88: mov             x4, NULL
    // 0x5dbe8c: b               #0x5dbe94
    // 0x5dbe90: mov             x4, x0
    // 0x5dbe94: mov             x0, x4
    // 0x5dbe98: stur            x4, [fp, #-0x48]
    // 0x5dbe9c: r2 = Null
    //     0x5dbe9c: mov             x2, NULL
    // 0x5dbea0: r1 = Null
    //     0x5dbea0: mov             x1, NULL
    // 0x5dbea4: r4 = 60
    //     0x5dbea4: mov             x4, #0x3c
    // 0x5dbea8: branchIfSmi(r0, 0x5dbeb4)
    //     0x5dbea8: tbz             w0, #0, #0x5dbeb4
    // 0x5dbeac: r4 = LoadClassIdInstr(r0)
    //     0x5dbeac: ldur            x4, [x0, #-1]
    //     0x5dbeb0: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbeb4: cmp             x4, #0xe96
    // 0x5dbeb8: b.eq            #0x5dbed0
    // 0x5dbebc: r8 = Timestamp?
    //     0x5dbebc: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5dbec0: ldr             x8, [x8, #0x90]
    // 0x5dbec4: r3 = Null
    //     0x5dbec4: add             x3, PP, #0x19, lsl #12  ; [pp+0x198d8] Null
    //     0x5dbec8: ldr             x3, [x3, #0x8d8]
    // 0x5dbecc: r0 = DefaultNullableTypeTest()
    //     0x5dbecc: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5dbed0: ldur            x1, [fp, #-0x48]
    // 0x5dbed4: cmp             w1, NULL
    // 0x5dbed8: b.ne            #0x5dbee4
    // 0x5dbedc: r3 = Null
    //     0x5dbedc: mov             x3, NULL
    // 0x5dbee0: b               #0x5dbeec
    // 0x5dbee4: r0 = toDate()
    //     0x5dbee4: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5dbee8: mov             x3, x0
    // 0x5dbeec: ldur            x0, [fp, #-0x10]
    // 0x5dbef0: mov             x1, x0
    // 0x5dbef4: stur            x3, [fp, #-0x48]
    // 0x5dbef8: r2 = "updated_at"
    //     0x5dbef8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5dbefc: ldr             x2, [x2, #0x58]
    // 0x5dbf00: r0 = _getValueOrData()
    //     0x5dbf00: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5dbf04: mov             x1, x0
    // 0x5dbf08: ldur            x0, [fp, #-0x10]
    // 0x5dbf0c: LoadField: r2 = r0->field_f
    //     0x5dbf0c: ldur            w2, [x0, #0xf]
    // 0x5dbf10: DecompressPointer r2
    //     0x5dbf10: add             x2, x2, HEAP, lsl #32
    // 0x5dbf14: cmp             w2, w1
    // 0x5dbf18: b.ne            #0x5dbf24
    // 0x5dbf1c: r3 = Null
    //     0x5dbf1c: mov             x3, NULL
    // 0x5dbf20: b               #0x5dbf28
    // 0x5dbf24: mov             x3, x1
    // 0x5dbf28: mov             x0, x3
    // 0x5dbf2c: stur            x3, [fp, #-0x10]
    // 0x5dbf30: r2 = Null
    //     0x5dbf30: mov             x2, NULL
    // 0x5dbf34: r1 = Null
    //     0x5dbf34: mov             x1, NULL
    // 0x5dbf38: r4 = 60
    //     0x5dbf38: mov             x4, #0x3c
    // 0x5dbf3c: branchIfSmi(r0, 0x5dbf48)
    //     0x5dbf3c: tbz             w0, #0, #0x5dbf48
    // 0x5dbf40: r4 = LoadClassIdInstr(r0)
    //     0x5dbf40: ldur            x4, [x0, #-1]
    //     0x5dbf44: ubfx            x4, x4, #0xc, #0x14
    // 0x5dbf48: cmp             x4, #0xe96
    // 0x5dbf4c: b.eq            #0x5dbf64
    // 0x5dbf50: r8 = Timestamp?
    //     0x5dbf50: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5dbf54: ldr             x8, [x8, #0x90]
    // 0x5dbf58: r3 = Null
    //     0x5dbf58: add             x3, PP, #0x19, lsl #12  ; [pp+0x198e8] Null
    //     0x5dbf5c: ldr             x3, [x3, #0x8e8]
    // 0x5dbf60: r0 = DefaultNullableTypeTest()
    //     0x5dbf60: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5dbf64: ldur            x1, [fp, #-0x10]
    // 0x5dbf68: cmp             w1, NULL
    // 0x5dbf6c: b.ne            #0x5dbf78
    // 0x5dbf70: r8 = Null
    //     0x5dbf70: mov             x8, NULL
    // 0x5dbf74: b               #0x5dbf80
    // 0x5dbf78: r0 = toDate()
    //     0x5dbf78: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5dbf7c: mov             x8, x0
    // 0x5dbf80: ldur            x6, [fp, #-0x18]
    // 0x5dbf84: ldur            x1, [fp, #-0x40]
    // 0x5dbf88: ldur            x0, [fp, #-0x48]
    // 0x5dbf8c: ldur            x5, [fp, #-0x20]
    // 0x5dbf90: ldur            x4, [fp, #-0x28]
    // 0x5dbf94: ldur            x3, [fp, #-0x30]
    // 0x5dbf98: ldur            x2, [fp, #-0x38]
    // 0x5dbf9c: ldur            x7, [fp, #-8]
    // 0x5dbfa0: stur            x8, [fp, #-0x10]
    // 0x5dbfa4: r0 = AgencyModel()
    //     0x5dbfa4: bl              #0x5dc218  ; AllocateAgencyModelStub -> AgencyModel (size=0x2c)
    // 0x5dbfa8: ldur            x1, [fp, #-8]
    // 0x5dbfac: StoreField: r0->field_7 = r1
    //     0x5dbfac: stur            w1, [x0, #7]
    // 0x5dbfb0: ldur            x1, [fp, #-0x18]
    // 0x5dbfb4: StoreField: r0->field_b = r1
    //     0x5dbfb4: stur            w1, [x0, #0xb]
    // 0x5dbfb8: ldur            x1, [fp, #-0x20]
    // 0x5dbfbc: StoreField: r0->field_f = r1
    //     0x5dbfbc: stur            w1, [x0, #0xf]
    // 0x5dbfc0: ldur            x1, [fp, #-0x28]
    // 0x5dbfc4: StoreField: r0->field_13 = r1
    //     0x5dbfc4: stur            w1, [x0, #0x13]
    // 0x5dbfc8: ldur            x1, [fp, #-0x30]
    // 0x5dbfcc: ArrayStore: r0[0] = r1  ; List_4
    //     0x5dbfcc: stur            w1, [x0, #0x17]
    // 0x5dbfd0: ldur            x1, [fp, #-0x38]
    // 0x5dbfd4: StoreField: r0->field_1b = r1
    //     0x5dbfd4: stur            w1, [x0, #0x1b]
    // 0x5dbfd8: ldur            x1, [fp, #-0x40]
    // 0x5dbfdc: StoreField: r0->field_1f = r1
    //     0x5dbfdc: stur            w1, [x0, #0x1f]
    // 0x5dbfe0: ldur            x1, [fp, #-0x48]
    // 0x5dbfe4: StoreField: r0->field_23 = r1
    //     0x5dbfe4: stur            w1, [x0, #0x23]
    // 0x5dbfe8: ldur            x1, [fp, #-0x10]
    // 0x5dbfec: StoreField: r0->field_27 = r1
    //     0x5dbfec: stur            w1, [x0, #0x27]
    // 0x5dbff0: LeaveFrame
    //     0x5dbff0: mov             SP, fp
    //     0x5dbff4: ldp             fp, lr, [SP], #0x10
    // 0x5dbff8: ret
    //     0x5dbff8: ret             
    // 0x5dbffc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dbffc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dc000: b               #0x5dbb98
  }
  Map<String, dynamic> toJson(AgencyModel) {
    // ** addr: 0x5dc01c, size: 0x48
    // 0x5dc01c: EnterFrame
    //     0x5dc01c: stp             fp, lr, [SP, #-0x10]!
    //     0x5dc020: mov             fp, SP
    // 0x5dc024: CheckStackOverflow
    //     0x5dc024: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dc028: cmp             SP, x16
    //     0x5dc02c: b.ls            #0x5dc044
    // 0x5dc030: ldr             x1, [fp, #0x10]
    // 0x5dc034: r0 = toJson()
    //     0x5dc034: bl              #0x5dc04c  ; [package:umrem_demo/features/admin/models/agency_model.dart] AgencyModel::toJson
    // 0x5dc038: LeaveFrame
    //     0x5dc038: mov             SP, fp
    //     0x5dc03c: ldp             fp, lr, [SP], #0x10
    // 0x5dc040: ret
    //     0x5dc040: ret             
    // 0x5dc044: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dc044: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dc048: b               #0x5dc030
  }
  Map<String, dynamic> toJson(AgencyModel) {
    // ** addr: 0x5dc04c, size: 0x1ac
    // 0x5dc04c: EnterFrame
    //     0x5dc04c: stp             fp, lr, [SP, #-0x10]!
    //     0x5dc050: mov             fp, SP
    // 0x5dc054: AllocStack(0x20)
    //     0x5dc054: sub             SP, SP, #0x20
    // 0x5dc058: SetupParameters(AgencyModel this /* r1 => r0, fp-0x8 */)
    //     0x5dc058: mov             x0, x1
    //     0x5dc05c: stur            x1, [fp, #-8]
    // 0x5dc060: CheckStackOverflow
    //     0x5dc060: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dc064: cmp             SP, x16
    //     0x5dc068: b.ls            #0x5dc1f0
    // 0x5dc06c: r1 = Null
    //     0x5dc06c: mov             x1, NULL
    // 0x5dc070: r2 = 36
    //     0x5dc070: mov             x2, #0x24
    // 0x5dc074: r0 = AllocateArray()
    //     0x5dc074: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5dc078: stur            x0, [fp, #-0x10]
    // 0x5dc07c: r16 = "id"
    //     0x5dc07c: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5dc080: ldr             x16, [x16, #0xae8]
    // 0x5dc084: StoreField: r0->field_f = r16
    //     0x5dc084: stur            w16, [x0, #0xf]
    // 0x5dc088: ldur            x2, [fp, #-8]
    // 0x5dc08c: LoadField: r1 = r2->field_7
    //     0x5dc08c: ldur            w1, [x2, #7]
    // 0x5dc090: DecompressPointer r1
    //     0x5dc090: add             x1, x1, HEAP, lsl #32
    // 0x5dc094: StoreField: r0->field_13 = r1
    //     0x5dc094: stur            w1, [x0, #0x13]
    // 0x5dc098: r16 = "name"
    //     0x5dc098: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5dc09c: ArrayStore: r0[0] = r16  ; List_4
    //     0x5dc09c: stur            w16, [x0, #0x17]
    // 0x5dc0a0: LoadField: r1 = r2->field_b
    //     0x5dc0a0: ldur            w1, [x2, #0xb]
    // 0x5dc0a4: DecompressPointer r1
    //     0x5dc0a4: add             x1, x1, HEAP, lsl #32
    // 0x5dc0a8: StoreField: r0->field_1b = r1
    //     0x5dc0a8: stur            w1, [x0, #0x1b]
    // 0x5dc0ac: r16 = "description"
    //     0x5dc0ac: add             x16, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x5dc0b0: ldr             x16, [x16, #0x20]
    // 0x5dc0b4: StoreField: r0->field_1f = r16
    //     0x5dc0b4: stur            w16, [x0, #0x1f]
    // 0x5dc0b8: LoadField: r1 = r2->field_f
    //     0x5dc0b8: ldur            w1, [x2, #0xf]
    // 0x5dc0bc: DecompressPointer r1
    //     0x5dc0bc: add             x1, x1, HEAP, lsl #32
    // 0x5dc0c0: StoreField: r0->field_23 = r1
    //     0x5dc0c0: stur            w1, [x0, #0x23]
    // 0x5dc0c4: r16 = "phone"
    //     0x5dc0c4: add             x16, PP, #0x19, lsl #12  ; [pp+0x19818] "phone"
    //     0x5dc0c8: ldr             x16, [x16, #0x818]
    // 0x5dc0cc: StoreField: r0->field_27 = r16
    //     0x5dc0cc: stur            w16, [x0, #0x27]
    // 0x5dc0d0: LoadField: r1 = r2->field_13
    //     0x5dc0d0: ldur            w1, [x2, #0x13]
    // 0x5dc0d4: DecompressPointer r1
    //     0x5dc0d4: add             x1, x1, HEAP, lsl #32
    // 0x5dc0d8: StoreField: r0->field_2b = r1
    //     0x5dc0d8: stur            w1, [x0, #0x2b]
    // 0x5dc0dc: r16 = "email"
    //     0x5dc0dc: add             x16, PP, #0x19, lsl #12  ; [pp+0x19808] "email"
    //     0x5dc0e0: ldr             x16, [x16, #0x808]
    // 0x5dc0e4: StoreField: r0->field_2f = r16
    //     0x5dc0e4: stur            w16, [x0, #0x2f]
    // 0x5dc0e8: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x5dc0e8: ldur            w1, [x2, #0x17]
    // 0x5dc0ec: DecompressPointer r1
    //     0x5dc0ec: add             x1, x1, HEAP, lsl #32
    // 0x5dc0f0: StoreField: r0->field_33 = r1
    //     0x5dc0f0: stur            w1, [x0, #0x33]
    // 0x5dc0f4: r16 = "address"
    //     0x5dc0f4: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x5dc0f8: ldr             x16, [x16, #0x2a8]
    // 0x5dc0fc: StoreField: r0->field_37 = r16
    //     0x5dc0fc: stur            w16, [x0, #0x37]
    // 0x5dc100: LoadField: r1 = r2->field_1b
    //     0x5dc100: ldur            w1, [x2, #0x1b]
    // 0x5dc104: DecompressPointer r1
    //     0x5dc104: add             x1, x1, HEAP, lsl #32
    // 0x5dc108: StoreField: r0->field_3b = r1
    //     0x5dc108: stur            w1, [x0, #0x3b]
    // 0x5dc10c: r16 = "is_active"
    //     0x5dc10c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19820] "is_active"
    //     0x5dc110: ldr             x16, [x16, #0x820]
    // 0x5dc114: StoreField: r0->field_3f = r16
    //     0x5dc114: stur            w16, [x0, #0x3f]
    // 0x5dc118: LoadField: r1 = r2->field_1f
    //     0x5dc118: ldur            w1, [x2, #0x1f]
    // 0x5dc11c: DecompressPointer r1
    //     0x5dc11c: add             x1, x1, HEAP, lsl #32
    // 0x5dc120: StoreField: r0->field_43 = r1
    //     0x5dc120: stur            w1, [x0, #0x43]
    // 0x5dc124: r16 = "created_at"
    //     0x5dc124: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5dc128: ldr             x16, [x16, #0xc00]
    // 0x5dc12c: StoreField: r0->field_47 = r16
    //     0x5dc12c: stur            w16, [x0, #0x47]
    // 0x5dc130: LoadField: r1 = r2->field_23
    //     0x5dc130: ldur            w1, [x2, #0x23]
    // 0x5dc134: DecompressPointer r1
    //     0x5dc134: add             x1, x1, HEAP, lsl #32
    // 0x5dc138: cmp             w1, NULL
    // 0x5dc13c: b.ne            #0x5dc150
    // 0x5dc140: mov             x3, x2
    // 0x5dc144: mov             x2, x0
    // 0x5dc148: r0 = Null
    //     0x5dc148: mov             x0, NULL
    // 0x5dc14c: b               #0x5dc15c
    // 0x5dc150: r0 = toIso8601String()
    //     0x5dc150: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5dc154: ldur            x3, [fp, #-8]
    // 0x5dc158: ldur            x2, [fp, #-0x10]
    // 0x5dc15c: mov             x1, x2
    // 0x5dc160: ArrayStore: r1[15] = r0  ; List_4
    //     0x5dc160: add             x25, x1, #0x4b
    //     0x5dc164: str             w0, [x25]
    //     0x5dc168: tbz             w0, #0, #0x5dc184
    //     0x5dc16c: ldurb           w16, [x1, #-1]
    //     0x5dc170: ldurb           w17, [x0, #-1]
    //     0x5dc174: and             x16, x17, x16, lsr #2
    //     0x5dc178: tst             x16, HEAP, lsr #32
    //     0x5dc17c: b.eq            #0x5dc184
    //     0x5dc180: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5dc184: r16 = "updated_at"
    //     0x5dc184: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5dc188: ldr             x16, [x16, #0x58]
    // 0x5dc18c: StoreField: r2->field_4f = r16
    //     0x5dc18c: stur            w16, [x2, #0x4f]
    // 0x5dc190: LoadField: r1 = r3->field_27
    //     0x5dc190: ldur            w1, [x3, #0x27]
    // 0x5dc194: DecompressPointer r1
    //     0x5dc194: add             x1, x1, HEAP, lsl #32
    // 0x5dc198: cmp             w1, NULL
    // 0x5dc19c: b.ne            #0x5dc1a8
    // 0x5dc1a0: r0 = Null
    //     0x5dc1a0: mov             x0, NULL
    // 0x5dc1a4: b               #0x5dc1ac
    // 0x5dc1a8: r0 = toIso8601String()
    //     0x5dc1a8: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5dc1ac: ldur            x1, [fp, #-0x10]
    // 0x5dc1b0: ArrayStore: r1[17] = r0  ; List_4
    //     0x5dc1b0: add             x25, x1, #0x53
    //     0x5dc1b4: str             w0, [x25]
    //     0x5dc1b8: tbz             w0, #0, #0x5dc1d4
    //     0x5dc1bc: ldurb           w16, [x1, #-1]
    //     0x5dc1c0: ldurb           w17, [x0, #-1]
    //     0x5dc1c4: and             x16, x17, x16, lsr #2
    //     0x5dc1c8: tst             x16, HEAP, lsr #32
    //     0x5dc1cc: b.eq            #0x5dc1d4
    //     0x5dc1d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5dc1d4: r16 = <String, dynamic>
    //     0x5dc1d4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5dc1d8: ldur            lr, [fp, #-0x10]
    // 0x5dc1dc: stp             lr, x16, [SP]
    // 0x5dc1e0: r0 = Map._fromLiteral()
    //     0x5dc1e0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5dc1e4: LeaveFrame
    //     0x5dc1e4: mov             SP, fp
    //     0x5dc1e8: ldp             fp, lr, [SP], #0x10
    // 0x5dc1ec: ret
    //     0x5dc1ec: ret             
    // 0x5dc1f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dc1f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dc1f4: b               #0x5dc06c
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x6d89d0, size: 0x378
    // 0x6d89d0: EnterFrame
    //     0x6d89d0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d89d4: mov             fp, SP
    // 0x6d89d8: AllocStack(0x48)
    //     0x6d89d8: sub             SP, SP, #0x48
    // 0x6d89dc: SetupParameters({dynamic address = Null /* r3 */, dynamic description = Null /* r5 */, dynamic email = Null /* r6 */, dynamic id = Null /* r7 */, dynamic isActive = Null /* r8 */, dynamic name = Null /* r9 */, dynamic phone = Null /* r0 */})
    //     0x6d89dc: ldur            w0, [x4, #0x13]
    //     0x6d89e0: ldur            w2, [x4, #0x1f]
    //     0x6d89e4: add             x2, x2, HEAP, lsl #32
    //     0x6d89e8: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x6d89ec: ldr             x16, [x16, #0x2a8]
    //     0x6d89f0: cmp             w2, w16
    //     0x6d89f4: b.ne            #0x6d8a18
    //     0x6d89f8: ldur            w2, [x4, #0x23]
    //     0x6d89fc: add             x2, x2, HEAP, lsl #32
    //     0x6d8a00: sub             w3, w0, w2
    //     0x6d8a04: add             x2, fp, w3, sxtw #2
    //     0x6d8a08: ldr             x2, [x2, #8]
    //     0x6d8a0c: mov             x3, x2
    //     0x6d8a10: mov             x2, #1
    //     0x6d8a14: b               #0x6d8a20
    //     0x6d8a18: mov             x3, NULL
    //     0x6d8a1c: mov             x2, #0
    //     0x6d8a20: lsl             x5, x2, #1
    //     0x6d8a24: lsl             w6, w5, #1
    //     0x6d8a28: add             w7, w6, #8
    //     0x6d8a2c: add             x16, x4, w7, sxtw #1
    //     0x6d8a30: ldur            w8, [x16, #0xf]
    //     0x6d8a34: add             x8, x8, HEAP, lsl #32
    //     0x6d8a38: add             x16, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x6d8a3c: ldr             x16, [x16, #0x20]
    //     0x6d8a40: cmp             w8, w16
    //     0x6d8a44: b.ne            #0x6d8a78
    //     0x6d8a48: add             w2, w6, #0xa
    //     0x6d8a4c: add             x16, x4, w2, sxtw #1
    //     0x6d8a50: ldur            w6, [x16, #0xf]
    //     0x6d8a54: add             x6, x6, HEAP, lsl #32
    //     0x6d8a58: sub             w2, w0, w6
    //     0x6d8a5c: add             x6, fp, w2, sxtw #2
    //     0x6d8a60: ldr             x6, [x6, #8]
    //     0x6d8a64: add             w2, w5, #2
    //     0x6d8a68: sbfx            x5, x2, #1, #0x1f
    //     0x6d8a6c: mov             x2, x5
    //     0x6d8a70: mov             x5, x6
    //     0x6d8a74: b               #0x6d8a7c
    //     0x6d8a78: mov             x5, NULL
    //     0x6d8a7c: lsl             x6, x2, #1
    //     0x6d8a80: lsl             w7, w6, #1
    //     0x6d8a84: add             w8, w7, #8
    //     0x6d8a88: add             x16, x4, w8, sxtw #1
    //     0x6d8a8c: ldur            w9, [x16, #0xf]
    //     0x6d8a90: add             x9, x9, HEAP, lsl #32
    //     0x6d8a94: add             x16, PP, #0x19, lsl #12  ; [pp+0x19808] "email"
    //     0x6d8a98: ldr             x16, [x16, #0x808]
    //     0x6d8a9c: cmp             w9, w16
    //     0x6d8aa0: b.ne            #0x6d8ad4
    //     0x6d8aa4: add             w2, w7, #0xa
    //     0x6d8aa8: add             x16, x4, w2, sxtw #1
    //     0x6d8aac: ldur            w7, [x16, #0xf]
    //     0x6d8ab0: add             x7, x7, HEAP, lsl #32
    //     0x6d8ab4: sub             w2, w0, w7
    //     0x6d8ab8: add             x7, fp, w2, sxtw #2
    //     0x6d8abc: ldr             x7, [x7, #8]
    //     0x6d8ac0: add             w2, w6, #2
    //     0x6d8ac4: sbfx            x6, x2, #1, #0x1f
    //     0x6d8ac8: mov             x2, x6
    //     0x6d8acc: mov             x6, x7
    //     0x6d8ad0: b               #0x6d8ad8
    //     0x6d8ad4: mov             x6, NULL
    //     0x6d8ad8: lsl             x7, x2, #1
    //     0x6d8adc: lsl             w8, w7, #1
    //     0x6d8ae0: add             w9, w8, #8
    //     0x6d8ae4: add             x16, x4, w9, sxtw #1
    //     0x6d8ae8: ldur            w10, [x16, #0xf]
    //     0x6d8aec: add             x10, x10, HEAP, lsl #32
    //     0x6d8af0: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x6d8af4: ldr             x16, [x16, #0xae8]
    //     0x6d8af8: cmp             w10, w16
    //     0x6d8afc: b.ne            #0x6d8b30
    //     0x6d8b00: add             w2, w8, #0xa
    //     0x6d8b04: add             x16, x4, w2, sxtw #1
    //     0x6d8b08: ldur            w8, [x16, #0xf]
    //     0x6d8b0c: add             x8, x8, HEAP, lsl #32
    //     0x6d8b10: sub             w2, w0, w8
    //     0x6d8b14: add             x8, fp, w2, sxtw #2
    //     0x6d8b18: ldr             x8, [x8, #8]
    //     0x6d8b1c: add             w2, w7, #2
    //     0x6d8b20: sbfx            x7, x2, #1, #0x1f
    //     0x6d8b24: mov             x2, x7
    //     0x6d8b28: mov             x7, x8
    //     0x6d8b2c: b               #0x6d8b34
    //     0x6d8b30: mov             x7, NULL
    //     0x6d8b34: lsl             x8, x2, #1
    //     0x6d8b38: lsl             w9, w8, #1
    //     0x6d8b3c: add             w10, w9, #8
    //     0x6d8b40: add             x16, x4, w10, sxtw #1
    //     0x6d8b44: ldur            w11, [x16, #0xf]
    //     0x6d8b48: add             x11, x11, HEAP, lsl #32
    //     0x6d8b4c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19810] "isActive"
    //     0x6d8b50: ldr             x16, [x16, #0x810]
    //     0x6d8b54: cmp             w11, w16
    //     0x6d8b58: b.ne            #0x6d8b8c
    //     0x6d8b5c: add             w2, w9, #0xa
    //     0x6d8b60: add             x16, x4, w2, sxtw #1
    //     0x6d8b64: ldur            w9, [x16, #0xf]
    //     0x6d8b68: add             x9, x9, HEAP, lsl #32
    //     0x6d8b6c: sub             w2, w0, w9
    //     0x6d8b70: add             x9, fp, w2, sxtw #2
    //     0x6d8b74: ldr             x9, [x9, #8]
    //     0x6d8b78: add             w2, w8, #2
    //     0x6d8b7c: sbfx            x8, x2, #1, #0x1f
    //     0x6d8b80: mov             x2, x8
    //     0x6d8b84: mov             x8, x9
    //     0x6d8b88: b               #0x6d8b90
    //     0x6d8b8c: mov             x8, NULL
    //     0x6d8b90: lsl             x9, x2, #1
    //     0x6d8b94: lsl             w10, w9, #1
    //     0x6d8b98: add             w11, w10, #8
    //     0x6d8b9c: add             x16, x4, w11, sxtw #1
    //     0x6d8ba0: ldur            w12, [x16, #0xf]
    //     0x6d8ba4: add             x12, x12, HEAP, lsl #32
    //     0x6d8ba8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    //     0x6d8bac: cmp             w12, w16
    //     0x6d8bb0: b.ne            #0x6d8be4
    //     0x6d8bb4: add             w2, w10, #0xa
    //     0x6d8bb8: add             x16, x4, w2, sxtw #1
    //     0x6d8bbc: ldur            w10, [x16, #0xf]
    //     0x6d8bc0: add             x10, x10, HEAP, lsl #32
    //     0x6d8bc4: sub             w2, w0, w10
    //     0x6d8bc8: add             x10, fp, w2, sxtw #2
    //     0x6d8bcc: ldr             x10, [x10, #8]
    //     0x6d8bd0: add             w2, w9, #2
    //     0x6d8bd4: sbfx            x9, x2, #1, #0x1f
    //     0x6d8bd8: mov             x2, x9
    //     0x6d8bdc: mov             x9, x10
    //     0x6d8be0: b               #0x6d8be8
    //     0x6d8be4: mov             x9, NULL
    //     0x6d8be8: lsl             x10, x2, #1
    //     0x6d8bec: lsl             w2, w10, #1
    //     0x6d8bf0: add             w10, w2, #8
    //     0x6d8bf4: add             x16, x4, w10, sxtw #1
    //     0x6d8bf8: ldur            w11, [x16, #0xf]
    //     0x6d8bfc: add             x11, x11, HEAP, lsl #32
    //     0x6d8c00: add             x16, PP, #0x19, lsl #12  ; [pp+0x19818] "phone"
    //     0x6d8c04: ldr             x16, [x16, #0x818]
    //     0x6d8c08: cmp             w11, w16
    //     0x6d8c0c: b.ne            #0x6d8c30
    //     0x6d8c10: add             w10, w2, #0xa
    //     0x6d8c14: add             x16, x4, w10, sxtw #1
    //     0x6d8c18: ldur            w2, [x16, #0xf]
    //     0x6d8c1c: add             x2, x2, HEAP, lsl #32
    //     0x6d8c20: sub             w4, w0, w2
    //     0x6d8c24: add             x0, fp, w4, sxtw #2
    //     0x6d8c28: ldr             x0, [x0, #8]
    //     0x6d8c2c: b               #0x6d8c34
    //     0x6d8c30: mov             x0, NULL
    // 0x6d8c34: cmp             w7, NULL
    // 0x6d8c38: b.ne            #0x6d8c48
    // 0x6d8c3c: LoadField: r2 = r1->field_7
    //     0x6d8c3c: ldur            w2, [x1, #7]
    // 0x6d8c40: DecompressPointer r2
    //     0x6d8c40: add             x2, x2, HEAP, lsl #32
    // 0x6d8c44: b               #0x6d8c4c
    // 0x6d8c48: mov             x2, x7
    // 0x6d8c4c: stur            x2, [fp, #-0x48]
    // 0x6d8c50: cmp             w9, NULL
    // 0x6d8c54: b.ne            #0x6d8c64
    // 0x6d8c58: LoadField: r4 = r1->field_b
    //     0x6d8c58: ldur            w4, [x1, #0xb]
    // 0x6d8c5c: DecompressPointer r4
    //     0x6d8c5c: add             x4, x4, HEAP, lsl #32
    // 0x6d8c60: b               #0x6d8c68
    // 0x6d8c64: mov             x4, x9
    // 0x6d8c68: stur            x4, [fp, #-0x40]
    // 0x6d8c6c: cmp             w5, NULL
    // 0x6d8c70: b.ne            #0x6d8c7c
    // 0x6d8c74: LoadField: r5 = r1->field_f
    //     0x6d8c74: ldur            w5, [x1, #0xf]
    // 0x6d8c78: DecompressPointer r5
    //     0x6d8c78: add             x5, x5, HEAP, lsl #32
    // 0x6d8c7c: stur            x5, [fp, #-0x38]
    // 0x6d8c80: cmp             w0, NULL
    // 0x6d8c84: b.ne            #0x6d8c90
    // 0x6d8c88: LoadField: r0 = r1->field_13
    //     0x6d8c88: ldur            w0, [x1, #0x13]
    // 0x6d8c8c: DecompressPointer r0
    //     0x6d8c8c: add             x0, x0, HEAP, lsl #32
    // 0x6d8c90: stur            x0, [fp, #-0x30]
    // 0x6d8c94: cmp             w6, NULL
    // 0x6d8c98: b.ne            #0x6d8ca4
    // 0x6d8c9c: ArrayLoad: r6 = r1[0]  ; List_4
    //     0x6d8c9c: ldur            w6, [x1, #0x17]
    // 0x6d8ca0: DecompressPointer r6
    //     0x6d8ca0: add             x6, x6, HEAP, lsl #32
    // 0x6d8ca4: stur            x6, [fp, #-0x28]
    // 0x6d8ca8: cmp             w3, NULL
    // 0x6d8cac: b.ne            #0x6d8cb8
    // 0x6d8cb0: LoadField: r3 = r1->field_1b
    //     0x6d8cb0: ldur            w3, [x1, #0x1b]
    // 0x6d8cb4: DecompressPointer r3
    //     0x6d8cb4: add             x3, x3, HEAP, lsl #32
    // 0x6d8cb8: stur            x3, [fp, #-0x20]
    // 0x6d8cbc: cmp             w8, NULL
    // 0x6d8cc0: b.ne            #0x6d8cd0
    // 0x6d8cc4: LoadField: r7 = r1->field_1f
    //     0x6d8cc4: ldur            w7, [x1, #0x1f]
    // 0x6d8cc8: DecompressPointer r7
    //     0x6d8cc8: add             x7, x7, HEAP, lsl #32
    // 0x6d8ccc: b               #0x6d8cd4
    // 0x6d8cd0: mov             x7, x8
    // 0x6d8cd4: stur            x7, [fp, #-0x18]
    // 0x6d8cd8: LoadField: r8 = r1->field_23
    //     0x6d8cd8: ldur            w8, [x1, #0x23]
    // 0x6d8cdc: DecompressPointer r8
    //     0x6d8cdc: add             x8, x8, HEAP, lsl #32
    // 0x6d8ce0: stur            x8, [fp, #-0x10]
    // 0x6d8ce4: LoadField: r9 = r1->field_27
    //     0x6d8ce4: ldur            w9, [x1, #0x27]
    // 0x6d8ce8: DecompressPointer r9
    //     0x6d8ce8: add             x9, x9, HEAP, lsl #32
    // 0x6d8cec: stur            x9, [fp, #-8]
    // 0x6d8cf0: r0 = AgencyModel()
    //     0x6d8cf0: bl              #0x5dc218  ; AllocateAgencyModelStub -> AgencyModel (size=0x2c)
    // 0x6d8cf4: ldur            x1, [fp, #-0x48]
    // 0x6d8cf8: StoreField: r0->field_7 = r1
    //     0x6d8cf8: stur            w1, [x0, #7]
    // 0x6d8cfc: ldur            x1, [fp, #-0x40]
    // 0x6d8d00: StoreField: r0->field_b = r1
    //     0x6d8d00: stur            w1, [x0, #0xb]
    // 0x6d8d04: ldur            x1, [fp, #-0x38]
    // 0x6d8d08: StoreField: r0->field_f = r1
    //     0x6d8d08: stur            w1, [x0, #0xf]
    // 0x6d8d0c: ldur            x1, [fp, #-0x30]
    // 0x6d8d10: StoreField: r0->field_13 = r1
    //     0x6d8d10: stur            w1, [x0, #0x13]
    // 0x6d8d14: ldur            x1, [fp, #-0x28]
    // 0x6d8d18: ArrayStore: r0[0] = r1  ; List_4
    //     0x6d8d18: stur            w1, [x0, #0x17]
    // 0x6d8d1c: ldur            x1, [fp, #-0x20]
    // 0x6d8d20: StoreField: r0->field_1b = r1
    //     0x6d8d20: stur            w1, [x0, #0x1b]
    // 0x6d8d24: ldur            x1, [fp, #-0x18]
    // 0x6d8d28: StoreField: r0->field_1f = r1
    //     0x6d8d28: stur            w1, [x0, #0x1f]
    // 0x6d8d2c: ldur            x1, [fp, #-0x10]
    // 0x6d8d30: StoreField: r0->field_23 = r1
    //     0x6d8d30: stur            w1, [x0, #0x23]
    // 0x6d8d34: ldur            x1, [fp, #-8]
    // 0x6d8d38: StoreField: r0->field_27 = r1
    //     0x6d8d38: stur            w1, [x0, #0x27]
    // 0x6d8d3c: LeaveFrame
    //     0x6d8d3c: mov             SP, fp
    //     0x6d8d40: ldp             fp, lr, [SP], #0x10
    // 0x6d8d44: ret
    //     0x6d8d44: ret             
  }
  Map<String, dynamic> toFirestore(AgencyModel) {
    // ** addr: 0x6d8e24, size: 0x17c
    // 0x6d8e24: EnterFrame
    //     0x6d8e24: stp             fp, lr, [SP, #-0x10]!
    //     0x6d8e28: mov             fp, SP
    // 0x6d8e2c: AllocStack(0x20)
    //     0x6d8e2c: sub             SP, SP, #0x20
    // 0x6d8e30: SetupParameters(AgencyModel this /* r1 => r0, fp-0x8 */)
    //     0x6d8e30: mov             x0, x1
    //     0x6d8e34: stur            x1, [fp, #-8]
    // 0x6d8e38: CheckStackOverflow
    //     0x6d8e38: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d8e3c: cmp             SP, x16
    //     0x6d8e40: b.ls            #0x6d8f98
    // 0x6d8e44: r1 = Null
    //     0x6d8e44: mov             x1, NULL
    // 0x6d8e48: r2 = 32
    //     0x6d8e48: mov             x2, #0x20
    // 0x6d8e4c: r0 = AllocateArray()
    //     0x6d8e4c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d8e50: stur            x0, [fp, #-0x10]
    // 0x6d8e54: r16 = "name"
    //     0x6d8e54: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6d8e58: StoreField: r0->field_f = r16
    //     0x6d8e58: stur            w16, [x0, #0xf]
    // 0x6d8e5c: ldur            x1, [fp, #-8]
    // 0x6d8e60: LoadField: r2 = r1->field_b
    //     0x6d8e60: ldur            w2, [x1, #0xb]
    // 0x6d8e64: DecompressPointer r2
    //     0x6d8e64: add             x2, x2, HEAP, lsl #32
    // 0x6d8e68: StoreField: r0->field_13 = r2
    //     0x6d8e68: stur            w2, [x0, #0x13]
    // 0x6d8e6c: r16 = "description"
    //     0x6d8e6c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x6d8e70: ldr             x16, [x16, #0x20]
    // 0x6d8e74: ArrayStore: r0[0] = r16  ; List_4
    //     0x6d8e74: stur            w16, [x0, #0x17]
    // 0x6d8e78: LoadField: r2 = r1->field_f
    //     0x6d8e78: ldur            w2, [x1, #0xf]
    // 0x6d8e7c: DecompressPointer r2
    //     0x6d8e7c: add             x2, x2, HEAP, lsl #32
    // 0x6d8e80: StoreField: r0->field_1b = r2
    //     0x6d8e80: stur            w2, [x0, #0x1b]
    // 0x6d8e84: r16 = "phone"
    //     0x6d8e84: add             x16, PP, #0x19, lsl #12  ; [pp+0x19818] "phone"
    //     0x6d8e88: ldr             x16, [x16, #0x818]
    // 0x6d8e8c: StoreField: r0->field_1f = r16
    //     0x6d8e8c: stur            w16, [x0, #0x1f]
    // 0x6d8e90: LoadField: r2 = r1->field_13
    //     0x6d8e90: ldur            w2, [x1, #0x13]
    // 0x6d8e94: DecompressPointer r2
    //     0x6d8e94: add             x2, x2, HEAP, lsl #32
    // 0x6d8e98: StoreField: r0->field_23 = r2
    //     0x6d8e98: stur            w2, [x0, #0x23]
    // 0x6d8e9c: r16 = "email"
    //     0x6d8e9c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19808] "email"
    //     0x6d8ea0: ldr             x16, [x16, #0x808]
    // 0x6d8ea4: StoreField: r0->field_27 = r16
    //     0x6d8ea4: stur            w16, [x0, #0x27]
    // 0x6d8ea8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6d8ea8: ldur            w2, [x1, #0x17]
    // 0x6d8eac: DecompressPointer r2
    //     0x6d8eac: add             x2, x2, HEAP, lsl #32
    // 0x6d8eb0: StoreField: r0->field_2b = r2
    //     0x6d8eb0: stur            w2, [x0, #0x2b]
    // 0x6d8eb4: r16 = "address"
    //     0x6d8eb4: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x6d8eb8: ldr             x16, [x16, #0x2a8]
    // 0x6d8ebc: StoreField: r0->field_2f = r16
    //     0x6d8ebc: stur            w16, [x0, #0x2f]
    // 0x6d8ec0: LoadField: r2 = r1->field_1b
    //     0x6d8ec0: ldur            w2, [x1, #0x1b]
    // 0x6d8ec4: DecompressPointer r2
    //     0x6d8ec4: add             x2, x2, HEAP, lsl #32
    // 0x6d8ec8: StoreField: r0->field_33 = r2
    //     0x6d8ec8: stur            w2, [x0, #0x33]
    // 0x6d8ecc: r16 = "is_active"
    //     0x6d8ecc: add             x16, PP, #0x19, lsl #12  ; [pp+0x19820] "is_active"
    //     0x6d8ed0: ldr             x16, [x16, #0x820]
    // 0x6d8ed4: StoreField: r0->field_37 = r16
    //     0x6d8ed4: stur            w16, [x0, #0x37]
    // 0x6d8ed8: LoadField: r2 = r1->field_1f
    //     0x6d8ed8: ldur            w2, [x1, #0x1f]
    // 0x6d8edc: DecompressPointer r2
    //     0x6d8edc: add             x2, x2, HEAP, lsl #32
    // 0x6d8ee0: StoreField: r0->field_3b = r2
    //     0x6d8ee0: stur            w2, [x0, #0x3b]
    // 0x6d8ee4: r16 = "created_at"
    //     0x6d8ee4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6d8ee8: ldr             x16, [x16, #0xc00]
    // 0x6d8eec: StoreField: r0->field_3f = r16
    //     0x6d8eec: stur            w16, [x0, #0x3f]
    // 0x6d8ef0: LoadField: r2 = r1->field_23
    //     0x6d8ef0: ldur            w2, [x1, #0x23]
    // 0x6d8ef4: DecompressPointer r2
    //     0x6d8ef4: add             x2, x2, HEAP, lsl #32
    // 0x6d8ef8: cmp             w2, NULL
    // 0x6d8efc: b.eq            #0x6d8f14
    // 0x6d8f00: LoadField: r1 = r2->field_b
    //     0x6d8f00: ldur            x1, [x2, #0xb]
    // 0x6d8f04: mov             x2, x1
    // 0x6d8f08: r1 = Null
    //     0x6d8f08: mov             x1, NULL
    // 0x6d8f0c: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x6d8f0c: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x6d8f10: b               #0x6d8f18
    // 0x6d8f14: r0 = serverTimestamp()
    //     0x6d8f14: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6d8f18: ldur            x2, [fp, #-0x10]
    // 0x6d8f1c: mov             x1, x2
    // 0x6d8f20: ArrayStore: r1[13] = r0  ; List_4
    //     0x6d8f20: add             x25, x1, #0x43
    //     0x6d8f24: str             w0, [x25]
    //     0x6d8f28: tbz             w0, #0, #0x6d8f44
    //     0x6d8f2c: ldurb           w16, [x1, #-1]
    //     0x6d8f30: ldurb           w17, [x0, #-1]
    //     0x6d8f34: and             x16, x17, x16, lsr #2
    //     0x6d8f38: tst             x16, HEAP, lsr #32
    //     0x6d8f3c: b.eq            #0x6d8f44
    //     0x6d8f40: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d8f44: r16 = "updated_at"
    //     0x6d8f44: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6d8f48: ldr             x16, [x16, #0x58]
    // 0x6d8f4c: StoreField: r2->field_47 = r16
    //     0x6d8f4c: stur            w16, [x2, #0x47]
    // 0x6d8f50: r0 = serverTimestamp()
    //     0x6d8f50: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6d8f54: ldur            x1, [fp, #-0x10]
    // 0x6d8f58: ArrayStore: r1[15] = r0  ; List_4
    //     0x6d8f58: add             x25, x1, #0x4b
    //     0x6d8f5c: str             w0, [x25]
    //     0x6d8f60: tbz             w0, #0, #0x6d8f7c
    //     0x6d8f64: ldurb           w16, [x1, #-1]
    //     0x6d8f68: ldurb           w17, [x0, #-1]
    //     0x6d8f6c: and             x16, x17, x16, lsr #2
    //     0x6d8f70: tst             x16, HEAP, lsr #32
    //     0x6d8f74: b.eq            #0x6d8f7c
    //     0x6d8f78: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d8f7c: r16 = <String, dynamic>
    //     0x6d8f7c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6d8f80: ldur            lr, [fp, #-0x10]
    // 0x6d8f84: stp             lr, x16, [SP]
    // 0x6d8f88: r0 = Map._fromLiteral()
    //     0x6d8f88: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6d8f8c: LeaveFrame
    //     0x6d8f8c: mov             SP, fp
    //     0x6d8f90: ldp             fp, lr, [SP], #0x10
    // 0x6d8f94: ret
    //     0x6d8f94: ret             
    // 0x6d8f98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d8f98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d8f9c: b               #0x6d8e44
  }
}
