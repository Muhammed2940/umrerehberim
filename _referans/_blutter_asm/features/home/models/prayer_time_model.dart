// lib: , url: package:umrem_demo/features/home/models/prayer_time_model.dart

// class id: 1049580, size: 0x8
class :: {
}

// class id: 195, size: 0x2c, field offset: 0x8
class PrayerTimeModel extends Object {

  Map<String, dynamic> toJson(PrayerTimeModel) {
    // ** addr: 0x5ed79c, size: 0x128
    // 0x5ed79c: EnterFrame
    //     0x5ed79c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ed7a0: mov             fp, SP
    // 0x5ed7a4: AllocStack(0x18)
    //     0x5ed7a4: sub             SP, SP, #0x18
    // 0x5ed7a8: SetupParameters(PrayerTimeModel this /* r1 => r0, fp-0x8 */)
    //     0x5ed7a8: mov             x0, x1
    //     0x5ed7ac: stur            x1, [fp, #-8]
    // 0x5ed7b0: CheckStackOverflow
    //     0x5ed7b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ed7b4: cmp             SP, x16
    //     0x5ed7b8: b.ls            #0x5ed8bc
    // 0x5ed7bc: r1 = Null
    //     0x5ed7bc: mov             x1, NULL
    // 0x5ed7c0: r2 = 36
    //     0x5ed7c0: mov             x2, #0x24
    // 0x5ed7c4: r0 = AllocateArray()
    //     0x5ed7c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ed7c8: r16 = "aksam"
    //     0x5ed7c8: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b10] "aksam"
    //     0x5ed7cc: ldr             x16, [x16, #0xb10]
    // 0x5ed7d0: StoreField: r0->field_f = r16
    //     0x5ed7d0: stur            w16, [x0, #0xf]
    // 0x5ed7d4: ldur            x1, [fp, #-8]
    // 0x5ed7d8: LoadField: r2 = r1->field_7
    //     0x5ed7d8: ldur            w2, [x1, #7]
    // 0x5ed7dc: DecompressPointer r2
    //     0x5ed7dc: add             x2, x2, HEAP, lsl #32
    // 0x5ed7e0: StoreField: r0->field_13 = r2
    //     0x5ed7e0: stur            w2, [x0, #0x13]
    // 0x5ed7e4: r16 = "date"
    //     0x5ed7e4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5ed7e8: ldr             x16, [x16, #0xff8]
    // 0x5ed7ec: ArrayStore: r0[0] = r16  ; List_4
    //     0x5ed7ec: stur            w16, [x0, #0x17]
    // 0x5ed7f0: LoadField: r2 = r1->field_b
    //     0x5ed7f0: ldur            w2, [x1, #0xb]
    // 0x5ed7f4: DecompressPointer r2
    //     0x5ed7f4: add             x2, x2, HEAP, lsl #32
    // 0x5ed7f8: StoreField: r0->field_1b = r2
    //     0x5ed7f8: stur            w2, [x0, #0x1b]
    // 0x5ed7fc: r16 = "day"
    //     0x5ed7fc: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b18] "day"
    //     0x5ed800: ldr             x16, [x16, #0xb18]
    // 0x5ed804: StoreField: r0->field_1f = r16
    //     0x5ed804: stur            w16, [x0, #0x1f]
    // 0x5ed808: LoadField: r2 = r1->field_f
    //     0x5ed808: ldur            w2, [x1, #0xf]
    // 0x5ed80c: DecompressPointer r2
    //     0x5ed80c: add             x2, x2, HEAP, lsl #32
    // 0x5ed810: StoreField: r0->field_23 = r2
    //     0x5ed810: stur            w2, [x0, #0x23]
    // 0x5ed814: r16 = "gunes"
    //     0x5ed814: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b20] "gunes"
    //     0x5ed818: ldr             x16, [x16, #0xb20]
    // 0x5ed81c: StoreField: r0->field_27 = r16
    //     0x5ed81c: stur            w16, [x0, #0x27]
    // 0x5ed820: LoadField: r2 = r1->field_13
    //     0x5ed820: ldur            w2, [x1, #0x13]
    // 0x5ed824: DecompressPointer r2
    //     0x5ed824: add             x2, x2, HEAP, lsl #32
    // 0x5ed828: StoreField: r0->field_2b = r2
    //     0x5ed828: stur            w2, [x0, #0x2b]
    // 0x5ed82c: r16 = "hicri"
    //     0x5ed82c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b28] "hicri"
    //     0x5ed830: ldr             x16, [x16, #0xb28]
    // 0x5ed834: StoreField: r0->field_2f = r16
    //     0x5ed834: stur            w16, [x0, #0x2f]
    // 0x5ed838: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5ed838: ldur            w2, [x1, #0x17]
    // 0x5ed83c: DecompressPointer r2
    //     0x5ed83c: add             x2, x2, HEAP, lsl #32
    // 0x5ed840: StoreField: r0->field_33 = r2
    //     0x5ed840: stur            w2, [x0, #0x33]
    // 0x5ed844: r16 = "ikindi"
    //     0x5ed844: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b30] "ikindi"
    //     0x5ed848: ldr             x16, [x16, #0xb30]
    // 0x5ed84c: StoreField: r0->field_37 = r16
    //     0x5ed84c: stur            w16, [x0, #0x37]
    // 0x5ed850: LoadField: r2 = r1->field_1b
    //     0x5ed850: ldur            w2, [x1, #0x1b]
    // 0x5ed854: DecompressPointer r2
    //     0x5ed854: add             x2, x2, HEAP, lsl #32
    // 0x5ed858: StoreField: r0->field_3b = r2
    //     0x5ed858: stur            w2, [x0, #0x3b]
    // 0x5ed85c: r16 = "imsak"
    //     0x5ed85c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b38] "imsak"
    //     0x5ed860: ldr             x16, [x16, #0xb38]
    // 0x5ed864: StoreField: r0->field_3f = r16
    //     0x5ed864: stur            w16, [x0, #0x3f]
    // 0x5ed868: LoadField: r2 = r1->field_1f
    //     0x5ed868: ldur            w2, [x1, #0x1f]
    // 0x5ed86c: DecompressPointer r2
    //     0x5ed86c: add             x2, x2, HEAP, lsl #32
    // 0x5ed870: StoreField: r0->field_43 = r2
    //     0x5ed870: stur            w2, [x0, #0x43]
    // 0x5ed874: r16 = "ogle"
    //     0x5ed874: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b40] "ogle"
    //     0x5ed878: ldr             x16, [x16, #0xb40]
    // 0x5ed87c: StoreField: r0->field_47 = r16
    //     0x5ed87c: stur            w16, [x0, #0x47]
    // 0x5ed880: LoadField: r2 = r1->field_23
    //     0x5ed880: ldur            w2, [x1, #0x23]
    // 0x5ed884: DecompressPointer r2
    //     0x5ed884: add             x2, x2, HEAP, lsl #32
    // 0x5ed888: StoreField: r0->field_4b = r2
    //     0x5ed888: stur            w2, [x0, #0x4b]
    // 0x5ed88c: r16 = "yatsi"
    //     0x5ed88c: add             x16, PP, #0x19, lsl #12  ; [pp+0x19b48] "yatsi"
    //     0x5ed890: ldr             x16, [x16, #0xb48]
    // 0x5ed894: StoreField: r0->field_4f = r16
    //     0x5ed894: stur            w16, [x0, #0x4f]
    // 0x5ed898: LoadField: r2 = r1->field_27
    //     0x5ed898: ldur            w2, [x1, #0x27]
    // 0x5ed89c: DecompressPointer r2
    //     0x5ed89c: add             x2, x2, HEAP, lsl #32
    // 0x5ed8a0: StoreField: r0->field_53 = r2
    //     0x5ed8a0: stur            w2, [x0, #0x53]
    // 0x5ed8a4: r16 = <String, dynamic>
    //     0x5ed8a4: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5ed8a8: stp             x0, x16, [SP]
    // 0x5ed8ac: r0 = Map._fromLiteral()
    //     0x5ed8ac: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5ed8b0: LeaveFrame
    //     0x5ed8b0: mov             SP, fp
    //     0x5ed8b4: ldp             fp, lr, [SP], #0x10
    // 0x5ed8b8: ret
    //     0x5ed8b8: ret             
    // 0x5ed8bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ed8bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ed8c0: b               #0x5ed7bc
  }
  Map<String, dynamic> toJson(PrayerTimeModel) {
    // ** addr: 0x5ed8dc, size: 0x48
    // 0x5ed8dc: EnterFrame
    //     0x5ed8dc: stp             fp, lr, [SP, #-0x10]!
    //     0x5ed8e0: mov             fp, SP
    // 0x5ed8e4: CheckStackOverflow
    //     0x5ed8e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ed8e8: cmp             SP, x16
    //     0x5ed8ec: b.ls            #0x5ed904
    // 0x5ed8f0: ldr             x1, [fp, #0x10]
    // 0x5ed8f4: r0 = toJson()
    //     0x5ed8f4: bl              #0x5ed79c  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::toJson
    // 0x5ed8f8: LeaveFrame
    //     0x5ed8f8: mov             SP, fp
    //     0x5ed8fc: ldp             fp, lr, [SP], #0x10
    // 0x5ed900: ret
    //     0x5ed900: ret             
    // 0x5ed904: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ed904: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ed908: b               #0x5ed8f0
  }
  factory _ PrayerTimeModel.fromFirestore(/* No info */) {
    // ** addr: 0x5edf2c, size: 0x4ec
    // 0x5edf2c: EnterFrame
    //     0x5edf2c: stp             fp, lr, [SP, #-0x10]!
    //     0x5edf30: mov             fp, SP
    // 0x5edf34: AllocStack(0x48)
    //     0x5edf34: sub             SP, SP, #0x48
    // 0x5edf38: SetupParameters(dynamic _ /* r1 => r0 */, dynamic _ /* r2 => r1 */)
    //     0x5edf38: mov             x0, x1
    //     0x5edf3c: mov             x1, x2
    // 0x5edf40: CheckStackOverflow
    //     0x5edf40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edf44: cmp             SP, x16
    //     0x5edf48: b.ls            #0x5ee410
    // 0x5edf4c: r0 = data()
    //     0x5edf4c: bl              #0x8d0f60  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQueryDocumentSnapshot::data
    // 0x5edf50: mov             x1, x0
    // 0x5edf54: r2 = "aksam"
    //     0x5edf54: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b10] "aksam"
    //     0x5edf58: ldr             x2, [x2, #0xb10]
    // 0x5edf5c: stur            x0, [fp, #-8]
    // 0x5edf60: r0 = _getValueOrData()
    //     0x5edf60: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5edf64: ldur            x3, [fp, #-8]
    // 0x5edf68: LoadField: r1 = r3->field_f
    //     0x5edf68: ldur            w1, [x3, #0xf]
    // 0x5edf6c: DecompressPointer r1
    //     0x5edf6c: add             x1, x1, HEAP, lsl #32
    // 0x5edf70: cmp             w1, w0
    // 0x5edf74: b.ne            #0x5edf7c
    // 0x5edf78: r0 = Null
    //     0x5edf78: mov             x0, NULL
    // 0x5edf7c: cmp             w0, NULL
    // 0x5edf80: b.ne            #0x5edf8c
    // 0x5edf84: r4 = ""
    //     0x5edf84: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5edf88: b               #0x5edf90
    // 0x5edf8c: mov             x4, x0
    // 0x5edf90: mov             x0, x4
    // 0x5edf94: stur            x4, [fp, #-0x10]
    // 0x5edf98: r2 = Null
    //     0x5edf98: mov             x2, NULL
    // 0x5edf9c: r1 = Null
    //     0x5edf9c: mov             x1, NULL
    // 0x5edfa0: r4 = 60
    //     0x5edfa0: mov             x4, #0x3c
    // 0x5edfa4: branchIfSmi(r0, 0x5edfb0)
    //     0x5edfa4: tbz             w0, #0, #0x5edfb0
    // 0x5edfa8: r4 = LoadClassIdInstr(r0)
    //     0x5edfa8: ldur            x4, [x0, #-1]
    //     0x5edfac: ubfx            x4, x4, #0xc, #0x14
    // 0x5edfb0: sub             x4, x4, #0x5e
    // 0x5edfb4: cmp             x4, #1
    // 0x5edfb8: b.ls            #0x5edfcc
    // 0x5edfbc: r8 = String
    //     0x5edfbc: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5edfc0: r3 = Null
    //     0x5edfc0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b70] Null
    //     0x5edfc4: ldr             x3, [x3, #0xb70]
    // 0x5edfc8: r0 = String()
    //     0x5edfc8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5edfcc: ldur            x1, [fp, #-8]
    // 0x5edfd0: r2 = "date"
    //     0x5edfd0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5edfd4: ldr             x2, [x2, #0xff8]
    // 0x5edfd8: r0 = _getValueOrData()
    //     0x5edfd8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5edfdc: ldur            x3, [fp, #-8]
    // 0x5edfe0: LoadField: r1 = r3->field_f
    //     0x5edfe0: ldur            w1, [x3, #0xf]
    // 0x5edfe4: DecompressPointer r1
    //     0x5edfe4: add             x1, x1, HEAP, lsl #32
    // 0x5edfe8: cmp             w1, w0
    // 0x5edfec: b.ne            #0x5edff4
    // 0x5edff0: r0 = Null
    //     0x5edff0: mov             x0, NULL
    // 0x5edff4: cmp             w0, NULL
    // 0x5edff8: b.ne            #0x5ee004
    // 0x5edffc: r4 = ""
    //     0x5edffc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee000: b               #0x5ee008
    // 0x5ee004: mov             x4, x0
    // 0x5ee008: mov             x0, x4
    // 0x5ee00c: stur            x4, [fp, #-0x18]
    // 0x5ee010: r2 = Null
    //     0x5ee010: mov             x2, NULL
    // 0x5ee014: r1 = Null
    //     0x5ee014: mov             x1, NULL
    // 0x5ee018: r4 = 60
    //     0x5ee018: mov             x4, #0x3c
    // 0x5ee01c: branchIfSmi(r0, 0x5ee028)
    //     0x5ee01c: tbz             w0, #0, #0x5ee028
    // 0x5ee020: r4 = LoadClassIdInstr(r0)
    //     0x5ee020: ldur            x4, [x0, #-1]
    //     0x5ee024: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee028: sub             x4, x4, #0x5e
    // 0x5ee02c: cmp             x4, #1
    // 0x5ee030: b.ls            #0x5ee044
    // 0x5ee034: r8 = String
    //     0x5ee034: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee038: r3 = Null
    //     0x5ee038: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b80] Null
    //     0x5ee03c: ldr             x3, [x3, #0xb80]
    // 0x5ee040: r0 = String()
    //     0x5ee040: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee044: ldur            x1, [fp, #-8]
    // 0x5ee048: r2 = "day"
    //     0x5ee048: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b18] "day"
    //     0x5ee04c: ldr             x2, [x2, #0xb18]
    // 0x5ee050: r0 = _getValueOrData()
    //     0x5ee050: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee054: ldur            x3, [fp, #-8]
    // 0x5ee058: LoadField: r1 = r3->field_f
    //     0x5ee058: ldur            w1, [x3, #0xf]
    // 0x5ee05c: DecompressPointer r1
    //     0x5ee05c: add             x1, x1, HEAP, lsl #32
    // 0x5ee060: cmp             w1, w0
    // 0x5ee064: b.ne            #0x5ee06c
    // 0x5ee068: r0 = Null
    //     0x5ee068: mov             x0, NULL
    // 0x5ee06c: cmp             w0, NULL
    // 0x5ee070: b.ne            #0x5ee07c
    // 0x5ee074: r4 = ""
    //     0x5ee074: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee078: b               #0x5ee080
    // 0x5ee07c: mov             x4, x0
    // 0x5ee080: mov             x0, x4
    // 0x5ee084: stur            x4, [fp, #-0x20]
    // 0x5ee088: r2 = Null
    //     0x5ee088: mov             x2, NULL
    // 0x5ee08c: r1 = Null
    //     0x5ee08c: mov             x1, NULL
    // 0x5ee090: r4 = 60
    //     0x5ee090: mov             x4, #0x3c
    // 0x5ee094: branchIfSmi(r0, 0x5ee0a0)
    //     0x5ee094: tbz             w0, #0, #0x5ee0a0
    // 0x5ee098: r4 = LoadClassIdInstr(r0)
    //     0x5ee098: ldur            x4, [x0, #-1]
    //     0x5ee09c: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee0a0: sub             x4, x4, #0x5e
    // 0x5ee0a4: cmp             x4, #1
    // 0x5ee0a8: b.ls            #0x5ee0bc
    // 0x5ee0ac: r8 = String
    //     0x5ee0ac: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee0b0: r3 = Null
    //     0x5ee0b0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19b90] Null
    //     0x5ee0b4: ldr             x3, [x3, #0xb90]
    // 0x5ee0b8: r0 = String()
    //     0x5ee0b8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee0bc: ldur            x1, [fp, #-8]
    // 0x5ee0c0: r2 = "gunes"
    //     0x5ee0c0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b20] "gunes"
    //     0x5ee0c4: ldr             x2, [x2, #0xb20]
    // 0x5ee0c8: r0 = _getValueOrData()
    //     0x5ee0c8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee0cc: ldur            x3, [fp, #-8]
    // 0x5ee0d0: LoadField: r1 = r3->field_f
    //     0x5ee0d0: ldur            w1, [x3, #0xf]
    // 0x5ee0d4: DecompressPointer r1
    //     0x5ee0d4: add             x1, x1, HEAP, lsl #32
    // 0x5ee0d8: cmp             w1, w0
    // 0x5ee0dc: b.ne            #0x5ee0e4
    // 0x5ee0e0: r0 = Null
    //     0x5ee0e0: mov             x0, NULL
    // 0x5ee0e4: cmp             w0, NULL
    // 0x5ee0e8: b.ne            #0x5ee0f4
    // 0x5ee0ec: r4 = ""
    //     0x5ee0ec: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee0f0: b               #0x5ee0f8
    // 0x5ee0f4: mov             x4, x0
    // 0x5ee0f8: mov             x0, x4
    // 0x5ee0fc: stur            x4, [fp, #-0x28]
    // 0x5ee100: r2 = Null
    //     0x5ee100: mov             x2, NULL
    // 0x5ee104: r1 = Null
    //     0x5ee104: mov             x1, NULL
    // 0x5ee108: r4 = 60
    //     0x5ee108: mov             x4, #0x3c
    // 0x5ee10c: branchIfSmi(r0, 0x5ee118)
    //     0x5ee10c: tbz             w0, #0, #0x5ee118
    // 0x5ee110: r4 = LoadClassIdInstr(r0)
    //     0x5ee110: ldur            x4, [x0, #-1]
    //     0x5ee114: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee118: sub             x4, x4, #0x5e
    // 0x5ee11c: cmp             x4, #1
    // 0x5ee120: b.ls            #0x5ee134
    // 0x5ee124: r8 = String
    //     0x5ee124: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee128: r3 = Null
    //     0x5ee128: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ba0] Null
    //     0x5ee12c: ldr             x3, [x3, #0xba0]
    // 0x5ee130: r0 = String()
    //     0x5ee130: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee134: ldur            x1, [fp, #-8]
    // 0x5ee138: r2 = "hicri"
    //     0x5ee138: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b28] "hicri"
    //     0x5ee13c: ldr             x2, [x2, #0xb28]
    // 0x5ee140: r0 = _getValueOrData()
    //     0x5ee140: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee144: ldur            x3, [fp, #-8]
    // 0x5ee148: LoadField: r1 = r3->field_f
    //     0x5ee148: ldur            w1, [x3, #0xf]
    // 0x5ee14c: DecompressPointer r1
    //     0x5ee14c: add             x1, x1, HEAP, lsl #32
    // 0x5ee150: cmp             w1, w0
    // 0x5ee154: b.ne            #0x5ee15c
    // 0x5ee158: r0 = Null
    //     0x5ee158: mov             x0, NULL
    // 0x5ee15c: cmp             w0, NULL
    // 0x5ee160: b.ne            #0x5ee16c
    // 0x5ee164: r4 = ""
    //     0x5ee164: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee168: b               #0x5ee170
    // 0x5ee16c: mov             x4, x0
    // 0x5ee170: mov             x0, x4
    // 0x5ee174: stur            x4, [fp, #-0x30]
    // 0x5ee178: r2 = Null
    //     0x5ee178: mov             x2, NULL
    // 0x5ee17c: r1 = Null
    //     0x5ee17c: mov             x1, NULL
    // 0x5ee180: r4 = 60
    //     0x5ee180: mov             x4, #0x3c
    // 0x5ee184: branchIfSmi(r0, 0x5ee190)
    //     0x5ee184: tbz             w0, #0, #0x5ee190
    // 0x5ee188: r4 = LoadClassIdInstr(r0)
    //     0x5ee188: ldur            x4, [x0, #-1]
    //     0x5ee18c: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee190: sub             x4, x4, #0x5e
    // 0x5ee194: cmp             x4, #1
    // 0x5ee198: b.ls            #0x5ee1ac
    // 0x5ee19c: r8 = String
    //     0x5ee19c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee1a0: r3 = Null
    //     0x5ee1a0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bb0] Null
    //     0x5ee1a4: ldr             x3, [x3, #0xbb0]
    // 0x5ee1a8: r0 = String()
    //     0x5ee1a8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee1ac: ldur            x1, [fp, #-8]
    // 0x5ee1b0: r2 = "ikindi"
    //     0x5ee1b0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b30] "ikindi"
    //     0x5ee1b4: ldr             x2, [x2, #0xb30]
    // 0x5ee1b8: r0 = _getValueOrData()
    //     0x5ee1b8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee1bc: ldur            x3, [fp, #-8]
    // 0x5ee1c0: LoadField: r1 = r3->field_f
    //     0x5ee1c0: ldur            w1, [x3, #0xf]
    // 0x5ee1c4: DecompressPointer r1
    //     0x5ee1c4: add             x1, x1, HEAP, lsl #32
    // 0x5ee1c8: cmp             w1, w0
    // 0x5ee1cc: b.ne            #0x5ee1d4
    // 0x5ee1d0: r0 = Null
    //     0x5ee1d0: mov             x0, NULL
    // 0x5ee1d4: cmp             w0, NULL
    // 0x5ee1d8: b.ne            #0x5ee1e4
    // 0x5ee1dc: r4 = ""
    //     0x5ee1dc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee1e0: b               #0x5ee1e8
    // 0x5ee1e4: mov             x4, x0
    // 0x5ee1e8: mov             x0, x4
    // 0x5ee1ec: stur            x4, [fp, #-0x38]
    // 0x5ee1f0: r2 = Null
    //     0x5ee1f0: mov             x2, NULL
    // 0x5ee1f4: r1 = Null
    //     0x5ee1f4: mov             x1, NULL
    // 0x5ee1f8: r4 = 60
    //     0x5ee1f8: mov             x4, #0x3c
    // 0x5ee1fc: branchIfSmi(r0, 0x5ee208)
    //     0x5ee1fc: tbz             w0, #0, #0x5ee208
    // 0x5ee200: r4 = LoadClassIdInstr(r0)
    //     0x5ee200: ldur            x4, [x0, #-1]
    //     0x5ee204: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee208: sub             x4, x4, #0x5e
    // 0x5ee20c: cmp             x4, #1
    // 0x5ee210: b.ls            #0x5ee224
    // 0x5ee214: r8 = String
    //     0x5ee214: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee218: r3 = Null
    //     0x5ee218: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bc0] Null
    //     0x5ee21c: ldr             x3, [x3, #0xbc0]
    // 0x5ee220: r0 = String()
    //     0x5ee220: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee224: ldur            x1, [fp, #-8]
    // 0x5ee228: r2 = "imsak"
    //     0x5ee228: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b38] "imsak"
    //     0x5ee22c: ldr             x2, [x2, #0xb38]
    // 0x5ee230: r0 = _getValueOrData()
    //     0x5ee230: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee234: ldur            x3, [fp, #-8]
    // 0x5ee238: LoadField: r1 = r3->field_f
    //     0x5ee238: ldur            w1, [x3, #0xf]
    // 0x5ee23c: DecompressPointer r1
    //     0x5ee23c: add             x1, x1, HEAP, lsl #32
    // 0x5ee240: cmp             w1, w0
    // 0x5ee244: b.ne            #0x5ee24c
    // 0x5ee248: r0 = Null
    //     0x5ee248: mov             x0, NULL
    // 0x5ee24c: cmp             w0, NULL
    // 0x5ee250: b.ne            #0x5ee25c
    // 0x5ee254: r4 = ""
    //     0x5ee254: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee258: b               #0x5ee260
    // 0x5ee25c: mov             x4, x0
    // 0x5ee260: mov             x0, x4
    // 0x5ee264: stur            x4, [fp, #-0x40]
    // 0x5ee268: r2 = Null
    //     0x5ee268: mov             x2, NULL
    // 0x5ee26c: r1 = Null
    //     0x5ee26c: mov             x1, NULL
    // 0x5ee270: r4 = 60
    //     0x5ee270: mov             x4, #0x3c
    // 0x5ee274: branchIfSmi(r0, 0x5ee280)
    //     0x5ee274: tbz             w0, #0, #0x5ee280
    // 0x5ee278: r4 = LoadClassIdInstr(r0)
    //     0x5ee278: ldur            x4, [x0, #-1]
    //     0x5ee27c: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee280: sub             x4, x4, #0x5e
    // 0x5ee284: cmp             x4, #1
    // 0x5ee288: b.ls            #0x5ee29c
    // 0x5ee28c: r8 = String
    //     0x5ee28c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee290: r3 = Null
    //     0x5ee290: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bd0] Null
    //     0x5ee294: ldr             x3, [x3, #0xbd0]
    // 0x5ee298: r0 = String()
    //     0x5ee298: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee29c: ldur            x1, [fp, #-8]
    // 0x5ee2a0: r2 = "ogle"
    //     0x5ee2a0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b40] "ogle"
    //     0x5ee2a4: ldr             x2, [x2, #0xb40]
    // 0x5ee2a8: r0 = _getValueOrData()
    //     0x5ee2a8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee2ac: ldur            x3, [fp, #-8]
    // 0x5ee2b0: LoadField: r1 = r3->field_f
    //     0x5ee2b0: ldur            w1, [x3, #0xf]
    // 0x5ee2b4: DecompressPointer r1
    //     0x5ee2b4: add             x1, x1, HEAP, lsl #32
    // 0x5ee2b8: cmp             w1, w0
    // 0x5ee2bc: b.ne            #0x5ee2c4
    // 0x5ee2c0: r0 = Null
    //     0x5ee2c0: mov             x0, NULL
    // 0x5ee2c4: cmp             w0, NULL
    // 0x5ee2c8: b.ne            #0x5ee2d4
    // 0x5ee2cc: r4 = ""
    //     0x5ee2cc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee2d0: b               #0x5ee2d8
    // 0x5ee2d4: mov             x4, x0
    // 0x5ee2d8: mov             x0, x4
    // 0x5ee2dc: stur            x4, [fp, #-0x48]
    // 0x5ee2e0: r2 = Null
    //     0x5ee2e0: mov             x2, NULL
    // 0x5ee2e4: r1 = Null
    //     0x5ee2e4: mov             x1, NULL
    // 0x5ee2e8: r4 = 60
    //     0x5ee2e8: mov             x4, #0x3c
    // 0x5ee2ec: branchIfSmi(r0, 0x5ee2f8)
    //     0x5ee2ec: tbz             w0, #0, #0x5ee2f8
    // 0x5ee2f0: r4 = LoadClassIdInstr(r0)
    //     0x5ee2f0: ldur            x4, [x0, #-1]
    //     0x5ee2f4: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee2f8: sub             x4, x4, #0x5e
    // 0x5ee2fc: cmp             x4, #1
    // 0x5ee300: b.ls            #0x5ee314
    // 0x5ee304: r8 = String
    //     0x5ee304: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee308: r3 = Null
    //     0x5ee308: add             x3, PP, #0x19, lsl #12  ; [pp+0x19be0] Null
    //     0x5ee30c: ldr             x3, [x3, #0xbe0]
    // 0x5ee310: r0 = String()
    //     0x5ee310: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee314: ldur            x1, [fp, #-8]
    // 0x5ee318: r2 = "yatsi"
    //     0x5ee318: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b48] "yatsi"
    //     0x5ee31c: ldr             x2, [x2, #0xb48]
    // 0x5ee320: r0 = _getValueOrData()
    //     0x5ee320: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ee324: mov             x1, x0
    // 0x5ee328: ldur            x0, [fp, #-8]
    // 0x5ee32c: LoadField: r2 = r0->field_f
    //     0x5ee32c: ldur            w2, [x0, #0xf]
    // 0x5ee330: DecompressPointer r2
    //     0x5ee330: add             x2, x2, HEAP, lsl #32
    // 0x5ee334: cmp             w2, w1
    // 0x5ee338: b.ne            #0x5ee344
    // 0x5ee33c: r0 = Null
    //     0x5ee33c: mov             x0, NULL
    // 0x5ee340: b               #0x5ee348
    // 0x5ee344: mov             x0, x1
    // 0x5ee348: cmp             w0, NULL
    // 0x5ee34c: b.ne            #0x5ee358
    // 0x5ee350: r11 = ""
    //     0x5ee350: ldr             x11, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ee354: b               #0x5ee35c
    // 0x5ee358: mov             x11, x0
    // 0x5ee35c: ldur            x10, [fp, #-0x10]
    // 0x5ee360: ldur            x9, [fp, #-0x18]
    // 0x5ee364: ldur            x8, [fp, #-0x20]
    // 0x5ee368: ldur            x7, [fp, #-0x28]
    // 0x5ee36c: ldur            x6, [fp, #-0x30]
    // 0x5ee370: ldur            x5, [fp, #-0x38]
    // 0x5ee374: ldur            x4, [fp, #-0x40]
    // 0x5ee378: ldur            x3, [fp, #-0x48]
    // 0x5ee37c: mov             x0, x11
    // 0x5ee380: stur            x11, [fp, #-8]
    // 0x5ee384: r2 = Null
    //     0x5ee384: mov             x2, NULL
    // 0x5ee388: r1 = Null
    //     0x5ee388: mov             x1, NULL
    // 0x5ee38c: r4 = 60
    //     0x5ee38c: mov             x4, #0x3c
    // 0x5ee390: branchIfSmi(r0, 0x5ee39c)
    //     0x5ee390: tbz             w0, #0, #0x5ee39c
    // 0x5ee394: r4 = LoadClassIdInstr(r0)
    //     0x5ee394: ldur            x4, [x0, #-1]
    //     0x5ee398: ubfx            x4, x4, #0xc, #0x14
    // 0x5ee39c: sub             x4, x4, #0x5e
    // 0x5ee3a0: cmp             x4, #1
    // 0x5ee3a4: b.ls            #0x5ee3b8
    // 0x5ee3a8: r8 = String
    //     0x5ee3a8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ee3ac: r3 = Null
    //     0x5ee3ac: add             x3, PP, #0x19, lsl #12  ; [pp+0x19bf0] Null
    //     0x5ee3b0: ldr             x3, [x3, #0xbf0]
    // 0x5ee3b4: r0 = String()
    //     0x5ee3b4: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ee3b8: r0 = PrayerTimeModel()
    //     0x5ee3b8: bl              #0x5ee418  ; AllocatePrayerTimeModelStub -> PrayerTimeModel (size=0x2c)
    // 0x5ee3bc: ldur            x1, [fp, #-0x10]
    // 0x5ee3c0: StoreField: r0->field_7 = r1
    //     0x5ee3c0: stur            w1, [x0, #7]
    // 0x5ee3c4: ldur            x1, [fp, #-0x18]
    // 0x5ee3c8: StoreField: r0->field_b = r1
    //     0x5ee3c8: stur            w1, [x0, #0xb]
    // 0x5ee3cc: ldur            x1, [fp, #-0x20]
    // 0x5ee3d0: StoreField: r0->field_f = r1
    //     0x5ee3d0: stur            w1, [x0, #0xf]
    // 0x5ee3d4: ldur            x1, [fp, #-0x28]
    // 0x5ee3d8: StoreField: r0->field_13 = r1
    //     0x5ee3d8: stur            w1, [x0, #0x13]
    // 0x5ee3dc: ldur            x1, [fp, #-0x30]
    // 0x5ee3e0: ArrayStore: r0[0] = r1  ; List_4
    //     0x5ee3e0: stur            w1, [x0, #0x17]
    // 0x5ee3e4: ldur            x1, [fp, #-0x38]
    // 0x5ee3e8: StoreField: r0->field_1b = r1
    //     0x5ee3e8: stur            w1, [x0, #0x1b]
    // 0x5ee3ec: ldur            x1, [fp, #-0x40]
    // 0x5ee3f0: StoreField: r0->field_1f = r1
    //     0x5ee3f0: stur            w1, [x0, #0x1f]
    // 0x5ee3f4: ldur            x1, [fp, #-0x48]
    // 0x5ee3f8: StoreField: r0->field_23 = r1
    //     0x5ee3f8: stur            w1, [x0, #0x23]
    // 0x5ee3fc: ldur            x1, [fp, #-8]
    // 0x5ee400: StoreField: r0->field_27 = r1
    //     0x5ee400: stur            w1, [x0, #0x27]
    // 0x5ee404: LeaveFrame
    //     0x5ee404: mov             SP, fp
    //     0x5ee408: ldp             fp, lr, [SP], #0x10
    // 0x5ee40c: ret
    //     0x5ee40c: ret             
    // 0x5ee410: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ee410: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ee414: b               #0x5edf4c
  }
  factory _ PrayerTimeModel.fromJson(/* No info */) {
    // ** addr: 0x5f2218, size: 0x4e4
    // 0x5f2218: EnterFrame
    //     0x5f2218: stp             fp, lr, [SP, #-0x10]!
    //     0x5f221c: mov             fp, SP
    // 0x5f2220: AllocStack(0x48)
    //     0x5f2220: sub             SP, SP, #0x48
    // 0x5f2224: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5f2224: mov             x0, x2
    //     0x5f2228: stur            x2, [fp, #-8]
    // 0x5f222c: CheckStackOverflow
    //     0x5f222c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f2230: cmp             SP, x16
    //     0x5f2234: b.ls            #0x5f26f4
    // 0x5f2238: mov             x1, x0
    // 0x5f223c: r2 = "aksam"
    //     0x5f223c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b10] "aksam"
    //     0x5f2240: ldr             x2, [x2, #0xb10]
    // 0x5f2244: r0 = _getValueOrData()
    //     0x5f2244: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2248: ldur            x3, [fp, #-8]
    // 0x5f224c: LoadField: r1 = r3->field_f
    //     0x5f224c: ldur            w1, [x3, #0xf]
    // 0x5f2250: DecompressPointer r1
    //     0x5f2250: add             x1, x1, HEAP, lsl #32
    // 0x5f2254: cmp             w1, w0
    // 0x5f2258: b.ne            #0x5f2260
    // 0x5f225c: r0 = Null
    //     0x5f225c: mov             x0, NULL
    // 0x5f2260: cmp             w0, NULL
    // 0x5f2264: b.ne            #0x5f2270
    // 0x5f2268: r4 = ""
    //     0x5f2268: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f226c: b               #0x5f2274
    // 0x5f2270: mov             x4, x0
    // 0x5f2274: mov             x0, x4
    // 0x5f2278: stur            x4, [fp, #-0x10]
    // 0x5f227c: r2 = Null
    //     0x5f227c: mov             x2, NULL
    // 0x5f2280: r1 = Null
    //     0x5f2280: mov             x1, NULL
    // 0x5f2284: r4 = 60
    //     0x5f2284: mov             x4, #0x3c
    // 0x5f2288: branchIfSmi(r0, 0x5f2294)
    //     0x5f2288: tbz             w0, #0, #0x5f2294
    // 0x5f228c: r4 = LoadClassIdInstr(r0)
    //     0x5f228c: ldur            x4, [x0, #-1]
    //     0x5f2290: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2294: sub             x4, x4, #0x5e
    // 0x5f2298: cmp             x4, #1
    // 0x5f229c: b.ls            #0x5f22b0
    // 0x5f22a0: r8 = String
    //     0x5f22a0: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f22a4: r3 = Null
    //     0x5f22a4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e70] Null
    //     0x5f22a8: ldr             x3, [x3, #0xe70]
    // 0x5f22ac: r0 = String()
    //     0x5f22ac: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f22b0: ldur            x1, [fp, #-8]
    // 0x5f22b4: r2 = "date"
    //     0x5f22b4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5f22b8: ldr             x2, [x2, #0xff8]
    // 0x5f22bc: r0 = _getValueOrData()
    //     0x5f22bc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f22c0: ldur            x3, [fp, #-8]
    // 0x5f22c4: LoadField: r1 = r3->field_f
    //     0x5f22c4: ldur            w1, [x3, #0xf]
    // 0x5f22c8: DecompressPointer r1
    //     0x5f22c8: add             x1, x1, HEAP, lsl #32
    // 0x5f22cc: cmp             w1, w0
    // 0x5f22d0: b.ne            #0x5f22d8
    // 0x5f22d4: r0 = Null
    //     0x5f22d4: mov             x0, NULL
    // 0x5f22d8: cmp             w0, NULL
    // 0x5f22dc: b.ne            #0x5f22e8
    // 0x5f22e0: r4 = ""
    //     0x5f22e0: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f22e4: b               #0x5f22ec
    // 0x5f22e8: mov             x4, x0
    // 0x5f22ec: mov             x0, x4
    // 0x5f22f0: stur            x4, [fp, #-0x18]
    // 0x5f22f4: r2 = Null
    //     0x5f22f4: mov             x2, NULL
    // 0x5f22f8: r1 = Null
    //     0x5f22f8: mov             x1, NULL
    // 0x5f22fc: r4 = 60
    //     0x5f22fc: mov             x4, #0x3c
    // 0x5f2300: branchIfSmi(r0, 0x5f230c)
    //     0x5f2300: tbz             w0, #0, #0x5f230c
    // 0x5f2304: r4 = LoadClassIdInstr(r0)
    //     0x5f2304: ldur            x4, [x0, #-1]
    //     0x5f2308: ubfx            x4, x4, #0xc, #0x14
    // 0x5f230c: sub             x4, x4, #0x5e
    // 0x5f2310: cmp             x4, #1
    // 0x5f2314: b.ls            #0x5f2328
    // 0x5f2318: r8 = String
    //     0x5f2318: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f231c: r3 = Null
    //     0x5f231c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e80] Null
    //     0x5f2320: ldr             x3, [x3, #0xe80]
    // 0x5f2324: r0 = String()
    //     0x5f2324: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2328: ldur            x1, [fp, #-8]
    // 0x5f232c: r2 = "day"
    //     0x5f232c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b18] "day"
    //     0x5f2330: ldr             x2, [x2, #0xb18]
    // 0x5f2334: r0 = _getValueOrData()
    //     0x5f2334: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2338: ldur            x3, [fp, #-8]
    // 0x5f233c: LoadField: r1 = r3->field_f
    //     0x5f233c: ldur            w1, [x3, #0xf]
    // 0x5f2340: DecompressPointer r1
    //     0x5f2340: add             x1, x1, HEAP, lsl #32
    // 0x5f2344: cmp             w1, w0
    // 0x5f2348: b.ne            #0x5f2350
    // 0x5f234c: r0 = Null
    //     0x5f234c: mov             x0, NULL
    // 0x5f2350: cmp             w0, NULL
    // 0x5f2354: b.ne            #0x5f2360
    // 0x5f2358: r4 = ""
    //     0x5f2358: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f235c: b               #0x5f2364
    // 0x5f2360: mov             x4, x0
    // 0x5f2364: mov             x0, x4
    // 0x5f2368: stur            x4, [fp, #-0x20]
    // 0x5f236c: r2 = Null
    //     0x5f236c: mov             x2, NULL
    // 0x5f2370: r1 = Null
    //     0x5f2370: mov             x1, NULL
    // 0x5f2374: r4 = 60
    //     0x5f2374: mov             x4, #0x3c
    // 0x5f2378: branchIfSmi(r0, 0x5f2384)
    //     0x5f2378: tbz             w0, #0, #0x5f2384
    // 0x5f237c: r4 = LoadClassIdInstr(r0)
    //     0x5f237c: ldur            x4, [x0, #-1]
    //     0x5f2380: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2384: sub             x4, x4, #0x5e
    // 0x5f2388: cmp             x4, #1
    // 0x5f238c: b.ls            #0x5f23a0
    // 0x5f2390: r8 = String
    //     0x5f2390: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2394: r3 = Null
    //     0x5f2394: add             x3, PP, #0x19, lsl #12  ; [pp+0x19e90] Null
    //     0x5f2398: ldr             x3, [x3, #0xe90]
    // 0x5f239c: r0 = String()
    //     0x5f239c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f23a0: ldur            x1, [fp, #-8]
    // 0x5f23a4: r2 = "gunes"
    //     0x5f23a4: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b20] "gunes"
    //     0x5f23a8: ldr             x2, [x2, #0xb20]
    // 0x5f23ac: r0 = _getValueOrData()
    //     0x5f23ac: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f23b0: ldur            x3, [fp, #-8]
    // 0x5f23b4: LoadField: r1 = r3->field_f
    //     0x5f23b4: ldur            w1, [x3, #0xf]
    // 0x5f23b8: DecompressPointer r1
    //     0x5f23b8: add             x1, x1, HEAP, lsl #32
    // 0x5f23bc: cmp             w1, w0
    // 0x5f23c0: b.ne            #0x5f23c8
    // 0x5f23c4: r0 = Null
    //     0x5f23c4: mov             x0, NULL
    // 0x5f23c8: cmp             w0, NULL
    // 0x5f23cc: b.ne            #0x5f23d8
    // 0x5f23d0: r4 = ""
    //     0x5f23d0: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f23d4: b               #0x5f23dc
    // 0x5f23d8: mov             x4, x0
    // 0x5f23dc: mov             x0, x4
    // 0x5f23e0: stur            x4, [fp, #-0x28]
    // 0x5f23e4: r2 = Null
    //     0x5f23e4: mov             x2, NULL
    // 0x5f23e8: r1 = Null
    //     0x5f23e8: mov             x1, NULL
    // 0x5f23ec: r4 = 60
    //     0x5f23ec: mov             x4, #0x3c
    // 0x5f23f0: branchIfSmi(r0, 0x5f23fc)
    //     0x5f23f0: tbz             w0, #0, #0x5f23fc
    // 0x5f23f4: r4 = LoadClassIdInstr(r0)
    //     0x5f23f4: ldur            x4, [x0, #-1]
    //     0x5f23f8: ubfx            x4, x4, #0xc, #0x14
    // 0x5f23fc: sub             x4, x4, #0x5e
    // 0x5f2400: cmp             x4, #1
    // 0x5f2404: b.ls            #0x5f2418
    // 0x5f2408: r8 = String
    //     0x5f2408: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f240c: r3 = Null
    //     0x5f240c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ea0] Null
    //     0x5f2410: ldr             x3, [x3, #0xea0]
    // 0x5f2414: r0 = String()
    //     0x5f2414: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2418: ldur            x1, [fp, #-8]
    // 0x5f241c: r2 = "hicri"
    //     0x5f241c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b28] "hicri"
    //     0x5f2420: ldr             x2, [x2, #0xb28]
    // 0x5f2424: r0 = _getValueOrData()
    //     0x5f2424: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2428: ldur            x3, [fp, #-8]
    // 0x5f242c: LoadField: r1 = r3->field_f
    //     0x5f242c: ldur            w1, [x3, #0xf]
    // 0x5f2430: DecompressPointer r1
    //     0x5f2430: add             x1, x1, HEAP, lsl #32
    // 0x5f2434: cmp             w1, w0
    // 0x5f2438: b.ne            #0x5f2440
    // 0x5f243c: r0 = Null
    //     0x5f243c: mov             x0, NULL
    // 0x5f2440: cmp             w0, NULL
    // 0x5f2444: b.ne            #0x5f2450
    // 0x5f2448: r4 = ""
    //     0x5f2448: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f244c: b               #0x5f2454
    // 0x5f2450: mov             x4, x0
    // 0x5f2454: mov             x0, x4
    // 0x5f2458: stur            x4, [fp, #-0x30]
    // 0x5f245c: r2 = Null
    //     0x5f245c: mov             x2, NULL
    // 0x5f2460: r1 = Null
    //     0x5f2460: mov             x1, NULL
    // 0x5f2464: r4 = 60
    //     0x5f2464: mov             x4, #0x3c
    // 0x5f2468: branchIfSmi(r0, 0x5f2474)
    //     0x5f2468: tbz             w0, #0, #0x5f2474
    // 0x5f246c: r4 = LoadClassIdInstr(r0)
    //     0x5f246c: ldur            x4, [x0, #-1]
    //     0x5f2470: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2474: sub             x4, x4, #0x5e
    // 0x5f2478: cmp             x4, #1
    // 0x5f247c: b.ls            #0x5f2490
    // 0x5f2480: r8 = String
    //     0x5f2480: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2484: r3 = Null
    //     0x5f2484: add             x3, PP, #0x19, lsl #12  ; [pp+0x19eb0] Null
    //     0x5f2488: ldr             x3, [x3, #0xeb0]
    // 0x5f248c: r0 = String()
    //     0x5f248c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2490: ldur            x1, [fp, #-8]
    // 0x5f2494: r2 = "ikindi"
    //     0x5f2494: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b30] "ikindi"
    //     0x5f2498: ldr             x2, [x2, #0xb30]
    // 0x5f249c: r0 = _getValueOrData()
    //     0x5f249c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f24a0: ldur            x3, [fp, #-8]
    // 0x5f24a4: LoadField: r1 = r3->field_f
    //     0x5f24a4: ldur            w1, [x3, #0xf]
    // 0x5f24a8: DecompressPointer r1
    //     0x5f24a8: add             x1, x1, HEAP, lsl #32
    // 0x5f24ac: cmp             w1, w0
    // 0x5f24b0: b.ne            #0x5f24b8
    // 0x5f24b4: r0 = Null
    //     0x5f24b4: mov             x0, NULL
    // 0x5f24b8: cmp             w0, NULL
    // 0x5f24bc: b.ne            #0x5f24c8
    // 0x5f24c0: r4 = ""
    //     0x5f24c0: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f24c4: b               #0x5f24cc
    // 0x5f24c8: mov             x4, x0
    // 0x5f24cc: mov             x0, x4
    // 0x5f24d0: stur            x4, [fp, #-0x38]
    // 0x5f24d4: r2 = Null
    //     0x5f24d4: mov             x2, NULL
    // 0x5f24d8: r1 = Null
    //     0x5f24d8: mov             x1, NULL
    // 0x5f24dc: r4 = 60
    //     0x5f24dc: mov             x4, #0x3c
    // 0x5f24e0: branchIfSmi(r0, 0x5f24ec)
    //     0x5f24e0: tbz             w0, #0, #0x5f24ec
    // 0x5f24e4: r4 = LoadClassIdInstr(r0)
    //     0x5f24e4: ldur            x4, [x0, #-1]
    //     0x5f24e8: ubfx            x4, x4, #0xc, #0x14
    // 0x5f24ec: sub             x4, x4, #0x5e
    // 0x5f24f0: cmp             x4, #1
    // 0x5f24f4: b.ls            #0x5f2508
    // 0x5f24f8: r8 = String
    //     0x5f24f8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f24fc: r3 = Null
    //     0x5f24fc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ec0] Null
    //     0x5f2500: ldr             x3, [x3, #0xec0]
    // 0x5f2504: r0 = String()
    //     0x5f2504: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2508: ldur            x1, [fp, #-8]
    // 0x5f250c: r2 = "imsak"
    //     0x5f250c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b38] "imsak"
    //     0x5f2510: ldr             x2, [x2, #0xb38]
    // 0x5f2514: r0 = _getValueOrData()
    //     0x5f2514: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2518: ldur            x3, [fp, #-8]
    // 0x5f251c: LoadField: r1 = r3->field_f
    //     0x5f251c: ldur            w1, [x3, #0xf]
    // 0x5f2520: DecompressPointer r1
    //     0x5f2520: add             x1, x1, HEAP, lsl #32
    // 0x5f2524: cmp             w1, w0
    // 0x5f2528: b.ne            #0x5f2530
    // 0x5f252c: r0 = Null
    //     0x5f252c: mov             x0, NULL
    // 0x5f2530: cmp             w0, NULL
    // 0x5f2534: b.ne            #0x5f2540
    // 0x5f2538: r4 = ""
    //     0x5f2538: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f253c: b               #0x5f2544
    // 0x5f2540: mov             x4, x0
    // 0x5f2544: mov             x0, x4
    // 0x5f2548: stur            x4, [fp, #-0x40]
    // 0x5f254c: r2 = Null
    //     0x5f254c: mov             x2, NULL
    // 0x5f2550: r1 = Null
    //     0x5f2550: mov             x1, NULL
    // 0x5f2554: r4 = 60
    //     0x5f2554: mov             x4, #0x3c
    // 0x5f2558: branchIfSmi(r0, 0x5f2564)
    //     0x5f2558: tbz             w0, #0, #0x5f2564
    // 0x5f255c: r4 = LoadClassIdInstr(r0)
    //     0x5f255c: ldur            x4, [x0, #-1]
    //     0x5f2560: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2564: sub             x4, x4, #0x5e
    // 0x5f2568: cmp             x4, #1
    // 0x5f256c: b.ls            #0x5f2580
    // 0x5f2570: r8 = String
    //     0x5f2570: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2574: r3 = Null
    //     0x5f2574: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ed0] Null
    //     0x5f2578: ldr             x3, [x3, #0xed0]
    // 0x5f257c: r0 = String()
    //     0x5f257c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2580: ldur            x1, [fp, #-8]
    // 0x5f2584: r2 = "ogle"
    //     0x5f2584: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b40] "ogle"
    //     0x5f2588: ldr             x2, [x2, #0xb40]
    // 0x5f258c: r0 = _getValueOrData()
    //     0x5f258c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2590: ldur            x3, [fp, #-8]
    // 0x5f2594: LoadField: r1 = r3->field_f
    //     0x5f2594: ldur            w1, [x3, #0xf]
    // 0x5f2598: DecompressPointer r1
    //     0x5f2598: add             x1, x1, HEAP, lsl #32
    // 0x5f259c: cmp             w1, w0
    // 0x5f25a0: b.ne            #0x5f25a8
    // 0x5f25a4: r0 = Null
    //     0x5f25a4: mov             x0, NULL
    // 0x5f25a8: cmp             w0, NULL
    // 0x5f25ac: b.ne            #0x5f25b8
    // 0x5f25b0: r4 = ""
    //     0x5f25b0: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f25b4: b               #0x5f25bc
    // 0x5f25b8: mov             x4, x0
    // 0x5f25bc: mov             x0, x4
    // 0x5f25c0: stur            x4, [fp, #-0x48]
    // 0x5f25c4: r2 = Null
    //     0x5f25c4: mov             x2, NULL
    // 0x5f25c8: r1 = Null
    //     0x5f25c8: mov             x1, NULL
    // 0x5f25cc: r4 = 60
    //     0x5f25cc: mov             x4, #0x3c
    // 0x5f25d0: branchIfSmi(r0, 0x5f25dc)
    //     0x5f25d0: tbz             w0, #0, #0x5f25dc
    // 0x5f25d4: r4 = LoadClassIdInstr(r0)
    //     0x5f25d4: ldur            x4, [x0, #-1]
    //     0x5f25d8: ubfx            x4, x4, #0xc, #0x14
    // 0x5f25dc: sub             x4, x4, #0x5e
    // 0x5f25e0: cmp             x4, #1
    // 0x5f25e4: b.ls            #0x5f25f8
    // 0x5f25e8: r8 = String
    //     0x5f25e8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f25ec: r3 = Null
    //     0x5f25ec: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ee0] Null
    //     0x5f25f0: ldr             x3, [x3, #0xee0]
    // 0x5f25f4: r0 = String()
    //     0x5f25f4: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f25f8: ldur            x1, [fp, #-8]
    // 0x5f25fc: r2 = "yatsi"
    //     0x5f25fc: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b48] "yatsi"
    //     0x5f2600: ldr             x2, [x2, #0xb48]
    // 0x5f2604: r0 = _getValueOrData()
    //     0x5f2604: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2608: mov             x1, x0
    // 0x5f260c: ldur            x0, [fp, #-8]
    // 0x5f2610: LoadField: r2 = r0->field_f
    //     0x5f2610: ldur            w2, [x0, #0xf]
    // 0x5f2614: DecompressPointer r2
    //     0x5f2614: add             x2, x2, HEAP, lsl #32
    // 0x5f2618: cmp             w2, w1
    // 0x5f261c: b.ne            #0x5f2628
    // 0x5f2620: r0 = Null
    //     0x5f2620: mov             x0, NULL
    // 0x5f2624: b               #0x5f262c
    // 0x5f2628: mov             x0, x1
    // 0x5f262c: cmp             w0, NULL
    // 0x5f2630: b.ne            #0x5f263c
    // 0x5f2634: r11 = ""
    //     0x5f2634: ldr             x11, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2638: b               #0x5f2640
    // 0x5f263c: mov             x11, x0
    // 0x5f2640: ldur            x10, [fp, #-0x10]
    // 0x5f2644: ldur            x9, [fp, #-0x18]
    // 0x5f2648: ldur            x8, [fp, #-0x20]
    // 0x5f264c: ldur            x7, [fp, #-0x28]
    // 0x5f2650: ldur            x6, [fp, #-0x30]
    // 0x5f2654: ldur            x5, [fp, #-0x38]
    // 0x5f2658: ldur            x4, [fp, #-0x40]
    // 0x5f265c: ldur            x3, [fp, #-0x48]
    // 0x5f2660: mov             x0, x11
    // 0x5f2664: stur            x11, [fp, #-8]
    // 0x5f2668: r2 = Null
    //     0x5f2668: mov             x2, NULL
    // 0x5f266c: r1 = Null
    //     0x5f266c: mov             x1, NULL
    // 0x5f2670: r4 = 60
    //     0x5f2670: mov             x4, #0x3c
    // 0x5f2674: branchIfSmi(r0, 0x5f2680)
    //     0x5f2674: tbz             w0, #0, #0x5f2680
    // 0x5f2678: r4 = LoadClassIdInstr(r0)
    //     0x5f2678: ldur            x4, [x0, #-1]
    //     0x5f267c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2680: sub             x4, x4, #0x5e
    // 0x5f2684: cmp             x4, #1
    // 0x5f2688: b.ls            #0x5f269c
    // 0x5f268c: r8 = String
    //     0x5f268c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2690: r3 = Null
    //     0x5f2690: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ef0] Null
    //     0x5f2694: ldr             x3, [x3, #0xef0]
    // 0x5f2698: r0 = String()
    //     0x5f2698: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f269c: r0 = PrayerTimeModel()
    //     0x5f269c: bl              #0x5ee418  ; AllocatePrayerTimeModelStub -> PrayerTimeModel (size=0x2c)
    // 0x5f26a0: ldur            x1, [fp, #-0x10]
    // 0x5f26a4: StoreField: r0->field_7 = r1
    //     0x5f26a4: stur            w1, [x0, #7]
    // 0x5f26a8: ldur            x1, [fp, #-0x18]
    // 0x5f26ac: StoreField: r0->field_b = r1
    //     0x5f26ac: stur            w1, [x0, #0xb]
    // 0x5f26b0: ldur            x1, [fp, #-0x20]
    // 0x5f26b4: StoreField: r0->field_f = r1
    //     0x5f26b4: stur            w1, [x0, #0xf]
    // 0x5f26b8: ldur            x1, [fp, #-0x28]
    // 0x5f26bc: StoreField: r0->field_13 = r1
    //     0x5f26bc: stur            w1, [x0, #0x13]
    // 0x5f26c0: ldur            x1, [fp, #-0x30]
    // 0x5f26c4: ArrayStore: r0[0] = r1  ; List_4
    //     0x5f26c4: stur            w1, [x0, #0x17]
    // 0x5f26c8: ldur            x1, [fp, #-0x38]
    // 0x5f26cc: StoreField: r0->field_1b = r1
    //     0x5f26cc: stur            w1, [x0, #0x1b]
    // 0x5f26d0: ldur            x1, [fp, #-0x40]
    // 0x5f26d4: StoreField: r0->field_1f = r1
    //     0x5f26d4: stur            w1, [x0, #0x1f]
    // 0x5f26d8: ldur            x1, [fp, #-0x48]
    // 0x5f26dc: StoreField: r0->field_23 = r1
    //     0x5f26dc: stur            w1, [x0, #0x23]
    // 0x5f26e0: ldur            x1, [fp, #-8]
    // 0x5f26e4: StoreField: r0->field_27 = r1
    //     0x5f26e4: stur            w1, [x0, #0x27]
    // 0x5f26e8: LeaveFrame
    //     0x5f26e8: mov             SP, fp
    //     0x5f26ec: ldp             fp, lr, [SP], #0x10
    // 0x5f26f0: ret
    //     0x5f26f0: ret             
    // 0x5f26f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f26f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f26f8: b               #0x5f2238
  }
}
