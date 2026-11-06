// lib: , url: package:umrem_demo/features/admin/models/notification_model.dart

// class id: 1049514, size: 0x8
class :: {
}

// class id: 202, size: 0x20, field offset: 0x8
//   const constructor, 
class NotificationModel extends Object {

  Map<String, dynamic> toJson(NotificationModel) {
    // ** addr: 0x5ed984, size: 0x108
    // 0x5ed984: EnterFrame
    //     0x5ed984: stp             fp, lr, [SP, #-0x10]!
    //     0x5ed988: mov             fp, SP
    // 0x5ed98c: AllocStack(0x20)
    //     0x5ed98c: sub             SP, SP, #0x20
    // 0x5ed990: SetupParameters(NotificationModel this /* r1 => r0, fp-0x8 */)
    //     0x5ed990: mov             x0, x1
    //     0x5ed994: stur            x1, [fp, #-8]
    // 0x5ed998: CheckStackOverflow
    //     0x5ed998: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ed99c: cmp             SP, x16
    //     0x5ed9a0: b.ls            #0x5eda84
    // 0x5ed9a4: r1 = Null
    //     0x5ed9a4: mov             x1, NULL
    // 0x5ed9a8: r2 = 24
    //     0x5ed9a8: mov             x2, #0x18
    // 0x5ed9ac: r0 = AllocateArray()
    //     0x5ed9ac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ed9b0: stur            x0, [fp, #-0x10]
    // 0x5ed9b4: r16 = "id"
    //     0x5ed9b4: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5ed9b8: ldr             x16, [x16, #0xae8]
    // 0x5ed9bc: StoreField: r0->field_f = r16
    //     0x5ed9bc: stur            w16, [x0, #0xf]
    // 0x5ed9c0: ldur            x1, [fp, #-8]
    // 0x5ed9c4: LoadField: r2 = r1->field_7
    //     0x5ed9c4: ldur            w2, [x1, #7]
    // 0x5ed9c8: DecompressPointer r2
    //     0x5ed9c8: add             x2, x2, HEAP, lsl #32
    // 0x5ed9cc: StoreField: r0->field_13 = r2
    //     0x5ed9cc: stur            w2, [x0, #0x13]
    // 0x5ed9d0: r16 = "title"
    //     0x5ed9d0: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x5ed9d4: ArrayStore: r0[0] = r16  ; List_4
    //     0x5ed9d4: stur            w16, [x0, #0x17]
    // 0x5ed9d8: LoadField: r2 = r1->field_b
    //     0x5ed9d8: ldur            w2, [x1, #0xb]
    // 0x5ed9dc: DecompressPointer r2
    //     0x5ed9dc: add             x2, x2, HEAP, lsl #32
    // 0x5ed9e0: StoreField: r0->field_1b = r2
    //     0x5ed9e0: stur            w2, [x0, #0x1b]
    // 0x5ed9e4: r16 = "message"
    //     0x5ed9e4: ldr             x16, [PP, #0x150]  ; [pp+0x150] "message"
    // 0x5ed9e8: StoreField: r0->field_1f = r16
    //     0x5ed9e8: stur            w16, [x0, #0x1f]
    // 0x5ed9ec: LoadField: r2 = r1->field_f
    //     0x5ed9ec: ldur            w2, [x1, #0xf]
    // 0x5ed9f0: DecompressPointer r2
    //     0x5ed9f0: add             x2, x2, HEAP, lsl #32
    // 0x5ed9f4: StoreField: r0->field_23 = r2
    //     0x5ed9f4: stur            w2, [x0, #0x23]
    // 0x5ed9f8: r16 = "user_token"
    //     0x5ed9f8: ldr             x16, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5ed9fc: StoreField: r0->field_27 = r16
    //     0x5ed9fc: stur            w16, [x0, #0x27]
    // 0x5eda00: LoadField: r2 = r1->field_13
    //     0x5eda00: ldur            w2, [x1, #0x13]
    // 0x5eda04: DecompressPointer r2
    //     0x5eda04: add             x2, x2, HEAP, lsl #32
    // 0x5eda08: StoreField: r0->field_2b = r2
    //     0x5eda08: stur            w2, [x0, #0x2b]
    // 0x5eda0c: r16 = "agency_id"
    //     0x5eda0c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5eda10: ldr             x16, [x16, #0x40]
    // 0x5eda14: StoreField: r0->field_2f = r16
    //     0x5eda14: stur            w16, [x0, #0x2f]
    // 0x5eda18: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5eda18: ldur            w2, [x1, #0x17]
    // 0x5eda1c: DecompressPointer r2
    //     0x5eda1c: add             x2, x2, HEAP, lsl #32
    // 0x5eda20: StoreField: r0->field_33 = r2
    //     0x5eda20: stur            w2, [x0, #0x33]
    // 0x5eda24: r16 = "created_at"
    //     0x5eda24: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5eda28: ldr             x16, [x16, #0xc00]
    // 0x5eda2c: StoreField: r0->field_37 = r16
    //     0x5eda2c: stur            w16, [x0, #0x37]
    // 0x5eda30: LoadField: r2 = r1->field_1b
    //     0x5eda30: ldur            w2, [x1, #0x1b]
    // 0x5eda34: DecompressPointer r2
    //     0x5eda34: add             x2, x2, HEAP, lsl #32
    // 0x5eda38: mov             x1, x2
    // 0x5eda3c: r0 = toIso8601String()
    //     0x5eda3c: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5eda40: ldur            x1, [fp, #-0x10]
    // 0x5eda44: ArrayStore: r1[11] = r0  ; List_4
    //     0x5eda44: add             x25, x1, #0x3b
    //     0x5eda48: str             w0, [x25]
    //     0x5eda4c: tbz             w0, #0, #0x5eda68
    //     0x5eda50: ldurb           w16, [x1, #-1]
    //     0x5eda54: ldurb           w17, [x0, #-1]
    //     0x5eda58: and             x16, x17, x16, lsr #2
    //     0x5eda5c: tst             x16, HEAP, lsr #32
    //     0x5eda60: b.eq            #0x5eda68
    //     0x5eda64: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5eda68: r16 = <String, dynamic>
    //     0x5eda68: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5eda6c: ldur            lr, [fp, #-0x10]
    // 0x5eda70: stp             lr, x16, [SP]
    // 0x5eda74: r0 = Map._fromLiteral()
    //     0x5eda74: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5eda78: LeaveFrame
    //     0x5eda78: mov             SP, fp
    //     0x5eda7c: ldp             fp, lr, [SP], #0x10
    // 0x5eda80: ret
    //     0x5eda80: ret             
    // 0x5eda84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eda84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eda88: b               #0x5ed9a4
  }
  Map<String, dynamic> toJson(NotificationModel) {
    // ** addr: 0x5edaa4, size: 0x48
    // 0x5edaa4: EnterFrame
    //     0x5edaa4: stp             fp, lr, [SP, #-0x10]!
    //     0x5edaa8: mov             fp, SP
    // 0x5edaac: CheckStackOverflow
    //     0x5edaac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edab0: cmp             SP, x16
    //     0x5edab4: b.ls            #0x5edacc
    // 0x5edab8: ldr             x1, [fp, #0x10]
    // 0x5edabc: r0 = toJson()
    //     0x5edabc: bl              #0x5ed984  ; [package:umrem_demo/features/admin/models/notification_model.dart] NotificationModel::toJson
    // 0x5edac0: LeaveFrame
    //     0x5edac0: mov             SP, fp
    //     0x5edac4: ldp             fp, lr, [SP], #0x10
    // 0x5edac8: ret
    //     0x5edac8: ret             
    // 0x5edacc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5edacc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5edad0: b               #0x5edab8
  }
  factory _ NotificationModel.fromFirestore(/* No info */) {
    // ** addr: 0x5eeff8, size: 0x344
    // 0x5eeff8: EnterFrame
    //     0x5eeff8: stp             fp, lr, [SP, #-0x10]!
    //     0x5eeffc: mov             fp, SP
    // 0x5ef000: AllocStack(0x30)
    //     0x5ef000: sub             SP, SP, #0x30
    // 0x5ef004: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5ef004: mov             x0, x2
    //     0x5ef008: stur            x2, [fp, #-8]
    // 0x5ef00c: CheckStackOverflow
    //     0x5ef00c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef010: cmp             SP, x16
    //     0x5ef014: b.ls            #0x5ef334
    // 0x5ef018: mov             x1, x0
    // 0x5ef01c: r0 = data()
    //     0x5ef01c: bl              #0x8d0f60  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQueryDocumentSnapshot::data
    // 0x5ef020: mov             x2, x0
    // 0x5ef024: ldur            x0, [fp, #-8]
    // 0x5ef028: stur            x2, [fp, #-0x10]
    // 0x5ef02c: LoadField: r1 = r0->field_b
    //     0x5ef02c: ldur            w1, [x0, #0xb]
    // 0x5ef030: DecompressPointer r1
    //     0x5ef030: add             x1, x1, HEAP, lsl #32
    // 0x5ef034: LoadField: r0 = r1->field_b
    //     0x5ef034: ldur            w0, [x1, #0xb]
    // 0x5ef038: DecompressPointer r0
    //     0x5ef038: add             x0, x0, HEAP, lsl #32
    // 0x5ef03c: LoadField: r1 = r0->field_7
    //     0x5ef03c: ldur            w1, [x0, #7]
    // 0x5ef040: DecompressPointer r1
    //     0x5ef040: add             x1, x1, HEAP, lsl #32
    // 0x5ef044: r0 = last()
    //     0x5ef044: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5ef048: ldur            x1, [fp, #-0x10]
    // 0x5ef04c: r2 = "title"
    //     0x5ef04c: ldr             x2, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x5ef050: stur            x0, [fp, #-8]
    // 0x5ef054: r0 = _getValueOrData()
    //     0x5ef054: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ef058: ldur            x3, [fp, #-0x10]
    // 0x5ef05c: LoadField: r1 = r3->field_f
    //     0x5ef05c: ldur            w1, [x3, #0xf]
    // 0x5ef060: DecompressPointer r1
    //     0x5ef060: add             x1, x1, HEAP, lsl #32
    // 0x5ef064: cmp             w1, w0
    // 0x5ef068: b.ne            #0x5ef070
    // 0x5ef06c: r0 = Null
    //     0x5ef06c: mov             x0, NULL
    // 0x5ef070: cmp             w0, NULL
    // 0x5ef074: b.ne            #0x5ef080
    // 0x5ef078: r4 = ""
    //     0x5ef078: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ef07c: b               #0x5ef084
    // 0x5ef080: mov             x4, x0
    // 0x5ef084: mov             x0, x4
    // 0x5ef088: stur            x4, [fp, #-0x18]
    // 0x5ef08c: r2 = Null
    //     0x5ef08c: mov             x2, NULL
    // 0x5ef090: r1 = Null
    //     0x5ef090: mov             x1, NULL
    // 0x5ef094: r4 = 60
    //     0x5ef094: mov             x4, #0x3c
    // 0x5ef098: branchIfSmi(r0, 0x5ef0a4)
    //     0x5ef098: tbz             w0, #0, #0x5ef0a4
    // 0x5ef09c: r4 = LoadClassIdInstr(r0)
    //     0x5ef09c: ldur            x4, [x0, #-1]
    //     0x5ef0a0: ubfx            x4, x4, #0xc, #0x14
    // 0x5ef0a4: sub             x4, x4, #0x5e
    // 0x5ef0a8: cmp             x4, #1
    // 0x5ef0ac: b.ls            #0x5ef0c0
    // 0x5ef0b0: r8 = String
    //     0x5ef0b0: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ef0b4: r3 = Null
    //     0x5ef0b4: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c30] Null
    //     0x5ef0b8: ldr             x3, [x3, #0xc30]
    // 0x5ef0bc: r0 = String()
    //     0x5ef0bc: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ef0c0: ldur            x1, [fp, #-0x10]
    // 0x5ef0c4: r2 = "message"
    //     0x5ef0c4: ldr             x2, [PP, #0x150]  ; [pp+0x150] "message"
    // 0x5ef0c8: r0 = _getValueOrData()
    //     0x5ef0c8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ef0cc: ldur            x3, [fp, #-0x10]
    // 0x5ef0d0: LoadField: r1 = r3->field_f
    //     0x5ef0d0: ldur            w1, [x3, #0xf]
    // 0x5ef0d4: DecompressPointer r1
    //     0x5ef0d4: add             x1, x1, HEAP, lsl #32
    // 0x5ef0d8: cmp             w1, w0
    // 0x5ef0dc: b.ne            #0x5ef0e4
    // 0x5ef0e0: r0 = Null
    //     0x5ef0e0: mov             x0, NULL
    // 0x5ef0e4: cmp             w0, NULL
    // 0x5ef0e8: b.ne            #0x5ef0f4
    // 0x5ef0ec: r4 = ""
    //     0x5ef0ec: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ef0f0: b               #0x5ef0f8
    // 0x5ef0f4: mov             x4, x0
    // 0x5ef0f8: mov             x0, x4
    // 0x5ef0fc: stur            x4, [fp, #-0x20]
    // 0x5ef100: r2 = Null
    //     0x5ef100: mov             x2, NULL
    // 0x5ef104: r1 = Null
    //     0x5ef104: mov             x1, NULL
    // 0x5ef108: r4 = 60
    //     0x5ef108: mov             x4, #0x3c
    // 0x5ef10c: branchIfSmi(r0, 0x5ef118)
    //     0x5ef10c: tbz             w0, #0, #0x5ef118
    // 0x5ef110: r4 = LoadClassIdInstr(r0)
    //     0x5ef110: ldur            x4, [x0, #-1]
    //     0x5ef114: ubfx            x4, x4, #0xc, #0x14
    // 0x5ef118: sub             x4, x4, #0x5e
    // 0x5ef11c: cmp             x4, #1
    // 0x5ef120: b.ls            #0x5ef134
    // 0x5ef124: r8 = String
    //     0x5ef124: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ef128: r3 = Null
    //     0x5ef128: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c40] Null
    //     0x5ef12c: ldr             x3, [x3, #0xc40]
    // 0x5ef130: r0 = String()
    //     0x5ef130: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ef134: ldur            x1, [fp, #-0x10]
    // 0x5ef138: r2 = "user_token"
    //     0x5ef138: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5ef13c: r0 = _getValueOrData()
    //     0x5ef13c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ef140: ldur            x3, [fp, #-0x10]
    // 0x5ef144: LoadField: r1 = r3->field_f
    //     0x5ef144: ldur            w1, [x3, #0xf]
    // 0x5ef148: DecompressPointer r1
    //     0x5ef148: add             x1, x1, HEAP, lsl #32
    // 0x5ef14c: cmp             w1, w0
    // 0x5ef150: b.ne            #0x5ef158
    // 0x5ef154: r0 = Null
    //     0x5ef154: mov             x0, NULL
    // 0x5ef158: cmp             w0, NULL
    // 0x5ef15c: b.ne            #0x5ef168
    // 0x5ef160: r4 = ""
    //     0x5ef160: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5ef164: b               #0x5ef16c
    // 0x5ef168: mov             x4, x0
    // 0x5ef16c: mov             x0, x4
    // 0x5ef170: stur            x4, [fp, #-0x28]
    // 0x5ef174: r2 = Null
    //     0x5ef174: mov             x2, NULL
    // 0x5ef178: r1 = Null
    //     0x5ef178: mov             x1, NULL
    // 0x5ef17c: r4 = 60
    //     0x5ef17c: mov             x4, #0x3c
    // 0x5ef180: branchIfSmi(r0, 0x5ef18c)
    //     0x5ef180: tbz             w0, #0, #0x5ef18c
    // 0x5ef184: r4 = LoadClassIdInstr(r0)
    //     0x5ef184: ldur            x4, [x0, #-1]
    //     0x5ef188: ubfx            x4, x4, #0xc, #0x14
    // 0x5ef18c: sub             x4, x4, #0x5e
    // 0x5ef190: cmp             x4, #1
    // 0x5ef194: b.ls            #0x5ef1a8
    // 0x5ef198: r8 = String
    //     0x5ef198: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5ef19c: r3 = Null
    //     0x5ef19c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c50] Null
    //     0x5ef1a0: ldr             x3, [x3, #0xc50]
    // 0x5ef1a4: r0 = String()
    //     0x5ef1a4: bl              #0x939a58  ; IsType_String_Stub
    // 0x5ef1a8: ldur            x1, [fp, #-0x10]
    // 0x5ef1ac: r2 = "agency_id"
    //     0x5ef1ac: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5ef1b0: ldr             x2, [x2, #0x40]
    // 0x5ef1b4: r0 = _getValueOrData()
    //     0x5ef1b4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ef1b8: ldur            x3, [fp, #-0x10]
    // 0x5ef1bc: LoadField: r1 = r3->field_f
    //     0x5ef1bc: ldur            w1, [x3, #0xf]
    // 0x5ef1c0: DecompressPointer r1
    //     0x5ef1c0: add             x1, x1, HEAP, lsl #32
    // 0x5ef1c4: cmp             w1, w0
    // 0x5ef1c8: b.ne            #0x5ef1d4
    // 0x5ef1cc: r4 = Null
    //     0x5ef1cc: mov             x4, NULL
    // 0x5ef1d0: b               #0x5ef1d8
    // 0x5ef1d4: mov             x4, x0
    // 0x5ef1d8: mov             x0, x4
    // 0x5ef1dc: stur            x4, [fp, #-0x30]
    // 0x5ef1e0: r2 = Null
    //     0x5ef1e0: mov             x2, NULL
    // 0x5ef1e4: r1 = Null
    //     0x5ef1e4: mov             x1, NULL
    // 0x5ef1e8: r4 = 60
    //     0x5ef1e8: mov             x4, #0x3c
    // 0x5ef1ec: branchIfSmi(r0, 0x5ef1f8)
    //     0x5ef1ec: tbz             w0, #0, #0x5ef1f8
    // 0x5ef1f0: r4 = LoadClassIdInstr(r0)
    //     0x5ef1f0: ldur            x4, [x0, #-1]
    //     0x5ef1f4: ubfx            x4, x4, #0xc, #0x14
    // 0x5ef1f8: sub             x4, x4, #0x5e
    // 0x5ef1fc: cmp             x4, #1
    // 0x5ef200: b.ls            #0x5ef214
    // 0x5ef204: r8 = String?
    //     0x5ef204: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5ef208: r3 = Null
    //     0x5ef208: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c60] Null
    //     0x5ef20c: ldr             x3, [x3, #0xc60]
    // 0x5ef210: r0 = String?()
    //     0x5ef210: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5ef214: ldur            x1, [fp, #-0x10]
    // 0x5ef218: r2 = "created_at"
    //     0x5ef218: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5ef21c: ldr             x2, [x2, #0xc00]
    // 0x5ef220: r0 = _getValueOrData()
    //     0x5ef220: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ef224: mov             x1, x0
    // 0x5ef228: ldur            x0, [fp, #-0x10]
    // 0x5ef22c: LoadField: r2 = r0->field_f
    //     0x5ef22c: ldur            w2, [x0, #0xf]
    // 0x5ef230: DecompressPointer r2
    //     0x5ef230: add             x2, x2, HEAP, lsl #32
    // 0x5ef234: cmp             w2, w1
    // 0x5ef238: b.ne            #0x5ef244
    // 0x5ef23c: r3 = Null
    //     0x5ef23c: mov             x3, NULL
    // 0x5ef240: b               #0x5ef248
    // 0x5ef244: mov             x3, x1
    // 0x5ef248: mov             x0, x3
    // 0x5ef24c: stur            x3, [fp, #-0x10]
    // 0x5ef250: r2 = Null
    //     0x5ef250: mov             x2, NULL
    // 0x5ef254: r1 = Null
    //     0x5ef254: mov             x1, NULL
    // 0x5ef258: r4 = 60
    //     0x5ef258: mov             x4, #0x3c
    // 0x5ef25c: branchIfSmi(r0, 0x5ef268)
    //     0x5ef25c: tbz             w0, #0, #0x5ef268
    // 0x5ef260: r4 = LoadClassIdInstr(r0)
    //     0x5ef260: ldur            x4, [x0, #-1]
    //     0x5ef264: ubfx            x4, x4, #0xc, #0x14
    // 0x5ef268: cmp             x4, #0xe96
    // 0x5ef26c: b.eq            #0x5ef284
    // 0x5ef270: r8 = Timestamp?
    //     0x5ef270: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5ef274: ldr             x8, [x8, #0x90]
    // 0x5ef278: r3 = Null
    //     0x5ef278: add             x3, PP, #0x19, lsl #12  ; [pp+0x19c70] Null
    //     0x5ef27c: ldr             x3, [x3, #0xc70]
    // 0x5ef280: r0 = DefaultNullableTypeTest()
    //     0x5ef280: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5ef284: ldur            x1, [fp, #-0x10]
    // 0x5ef288: cmp             w1, NULL
    // 0x5ef28c: b.ne            #0x5ef298
    // 0x5ef290: r0 = Null
    //     0x5ef290: mov             x0, NULL
    // 0x5ef294: b               #0x5ef29c
    // 0x5ef298: r0 = toDate()
    //     0x5ef298: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5ef29c: cmp             w0, NULL
    // 0x5ef2a0: b.ne            #0x5ef2d8
    // 0x5ef2a4: r0 = DateTime()
    //     0x5ef2a4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5ef2a8: mov             x1, x0
    // 0x5ef2ac: r0 = false
    //     0x5ef2ac: add             x0, NULL, #0x30  ; false
    // 0x5ef2b0: stur            x1, [fp, #-0x10]
    // 0x5ef2b4: StoreField: r1->field_7 = r0
    //     0x5ef2b4: stur            w0, [x1, #7]
    // 0x5ef2b8: r0 = _getCurrentMicros()
    //     0x5ef2b8: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5ef2bc: r1 = LoadInt32Instr(r0)
    //     0x5ef2bc: sbfx            x1, x0, #1, #0x1f
    //     0x5ef2c0: tbz             w0, #0, #0x5ef2c8
    //     0x5ef2c4: ldur            x1, [x0, #7]
    // 0x5ef2c8: ldur            x0, [fp, #-0x10]
    // 0x5ef2cc: StoreField: r0->field_b = r1
    //     0x5ef2cc: stur            x1, [x0, #0xb]
    // 0x5ef2d0: mov             x5, x0
    // 0x5ef2d4: b               #0x5ef2dc
    // 0x5ef2d8: mov             x5, x0
    // 0x5ef2dc: ldur            x3, [fp, #-0x18]
    // 0x5ef2e0: ldur            x2, [fp, #-0x20]
    // 0x5ef2e4: ldur            x1, [fp, #-0x28]
    // 0x5ef2e8: ldur            x0, [fp, #-0x30]
    // 0x5ef2ec: ldur            x4, [fp, #-8]
    // 0x5ef2f0: stur            x5, [fp, #-0x10]
    // 0x5ef2f4: r0 = NotificationModel()
    //     0x5ef2f4: bl              #0x5ef33c  ; AllocateNotificationModelStub -> NotificationModel (size=0x20)
    // 0x5ef2f8: ldur            x1, [fp, #-8]
    // 0x5ef2fc: StoreField: r0->field_7 = r1
    //     0x5ef2fc: stur            w1, [x0, #7]
    // 0x5ef300: ldur            x1, [fp, #-0x18]
    // 0x5ef304: StoreField: r0->field_b = r1
    //     0x5ef304: stur            w1, [x0, #0xb]
    // 0x5ef308: ldur            x1, [fp, #-0x20]
    // 0x5ef30c: StoreField: r0->field_f = r1
    //     0x5ef30c: stur            w1, [x0, #0xf]
    // 0x5ef310: ldur            x1, [fp, #-0x28]
    // 0x5ef314: StoreField: r0->field_13 = r1
    //     0x5ef314: stur            w1, [x0, #0x13]
    // 0x5ef318: ldur            x1, [fp, #-0x30]
    // 0x5ef31c: ArrayStore: r0[0] = r1  ; List_4
    //     0x5ef31c: stur            w1, [x0, #0x17]
    // 0x5ef320: ldur            x1, [fp, #-0x10]
    // 0x5ef324: StoreField: r0->field_1b = r1
    //     0x5ef324: stur            w1, [x0, #0x1b]
    // 0x5ef328: LeaveFrame
    //     0x5ef328: mov             SP, fp
    //     0x5ef32c: ldp             fp, lr, [SP], #0x10
    // 0x5ef330: ret
    //     0x5ef330: ret             
    // 0x5ef334: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef334: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef338: b               #0x5ef018
  }
  factory _ NotificationModel.fromJson(/* No info */) {
    // ** addr: 0x5f45b4, size: 0x378
    // 0x5f45b4: EnterFrame
    //     0x5f45b4: stp             fp, lr, [SP, #-0x10]!
    //     0x5f45b8: mov             fp, SP
    // 0x5f45bc: AllocStack(0x30)
    //     0x5f45bc: sub             SP, SP, #0x30
    // 0x5f45c0: SetupParameters(dynamic _ /* r2 => r3, fp-0x8 */)
    //     0x5f45c0: mov             x3, x2
    //     0x5f45c4: stur            x2, [fp, #-8]
    // 0x5f45c8: CheckStackOverflow
    //     0x5f45c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f45cc: cmp             SP, x16
    //     0x5f45d0: b.ls            #0x5f4924
    // 0x5f45d4: r0 = LoadClassIdInstr(r3)
    //     0x5f45d4: ldur            x0, [x3, #-1]
    //     0x5f45d8: ubfx            x0, x0, #0xc, #0x14
    // 0x5f45dc: mov             x1, x3
    // 0x5f45e0: r2 = "id"
    //     0x5f45e0: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5f45e4: ldr             x2, [x2, #0xae8]
    // 0x5f45e8: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f45e8: add             lr, x0, #0x36e
    //     0x5f45ec: ldr             lr, [x21, lr, lsl #3]
    //     0x5f45f0: blr             lr
    // 0x5f45f4: cmp             w0, NULL
    // 0x5f45f8: b.ne            #0x5f4604
    // 0x5f45fc: r4 = ""
    //     0x5f45fc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f4600: b               #0x5f4608
    // 0x5f4604: mov             x4, x0
    // 0x5f4608: ldur            x3, [fp, #-8]
    // 0x5f460c: mov             x0, x4
    // 0x5f4610: stur            x4, [fp, #-0x10]
    // 0x5f4614: r2 = Null
    //     0x5f4614: mov             x2, NULL
    // 0x5f4618: r1 = Null
    //     0x5f4618: mov             x1, NULL
    // 0x5f461c: r4 = 60
    //     0x5f461c: mov             x4, #0x3c
    // 0x5f4620: branchIfSmi(r0, 0x5f462c)
    //     0x5f4620: tbz             w0, #0, #0x5f462c
    // 0x5f4624: r4 = LoadClassIdInstr(r0)
    //     0x5f4624: ldur            x4, [x0, #-1]
    //     0x5f4628: ubfx            x4, x4, #0xc, #0x14
    // 0x5f462c: sub             x4, x4, #0x5e
    // 0x5f4630: cmp             x4, #1
    // 0x5f4634: b.ls            #0x5f4648
    // 0x5f4638: r8 = String
    //     0x5f4638: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f463c: r3 = Null
    //     0x5f463c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19d90] Null
    //     0x5f4640: ldr             x3, [x3, #0xd90]
    // 0x5f4644: r0 = String()
    //     0x5f4644: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4648: ldur            x3, [fp, #-8]
    // 0x5f464c: r0 = LoadClassIdInstr(r3)
    //     0x5f464c: ldur            x0, [x3, #-1]
    //     0x5f4650: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4654: mov             x1, x3
    // 0x5f4658: r2 = "title"
    //     0x5f4658: ldr             x2, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x5f465c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f465c: add             lr, x0, #0x36e
    //     0x5f4660: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4664: blr             lr
    // 0x5f4668: cmp             w0, NULL
    // 0x5f466c: b.ne            #0x5f4678
    // 0x5f4670: r4 = ""
    //     0x5f4670: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f4674: b               #0x5f467c
    // 0x5f4678: mov             x4, x0
    // 0x5f467c: ldur            x3, [fp, #-8]
    // 0x5f4680: mov             x0, x4
    // 0x5f4684: stur            x4, [fp, #-0x18]
    // 0x5f4688: r2 = Null
    //     0x5f4688: mov             x2, NULL
    // 0x5f468c: r1 = Null
    //     0x5f468c: mov             x1, NULL
    // 0x5f4690: r4 = 60
    //     0x5f4690: mov             x4, #0x3c
    // 0x5f4694: branchIfSmi(r0, 0x5f46a0)
    //     0x5f4694: tbz             w0, #0, #0x5f46a0
    // 0x5f4698: r4 = LoadClassIdInstr(r0)
    //     0x5f4698: ldur            x4, [x0, #-1]
    //     0x5f469c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f46a0: sub             x4, x4, #0x5e
    // 0x5f46a4: cmp             x4, #1
    // 0x5f46a8: b.ls            #0x5f46bc
    // 0x5f46ac: r8 = String
    //     0x5f46ac: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f46b0: r3 = Null
    //     0x5f46b0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19da0] Null
    //     0x5f46b4: ldr             x3, [x3, #0xda0]
    // 0x5f46b8: r0 = String()
    //     0x5f46b8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f46bc: ldur            x3, [fp, #-8]
    // 0x5f46c0: r0 = LoadClassIdInstr(r3)
    //     0x5f46c0: ldur            x0, [x3, #-1]
    //     0x5f46c4: ubfx            x0, x0, #0xc, #0x14
    // 0x5f46c8: mov             x1, x3
    // 0x5f46cc: r2 = "message"
    //     0x5f46cc: ldr             x2, [PP, #0x150]  ; [pp+0x150] "message"
    // 0x5f46d0: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f46d0: add             lr, x0, #0x36e
    //     0x5f46d4: ldr             lr, [x21, lr, lsl #3]
    //     0x5f46d8: blr             lr
    // 0x5f46dc: cmp             w0, NULL
    // 0x5f46e0: b.ne            #0x5f46ec
    // 0x5f46e4: r4 = ""
    //     0x5f46e4: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f46e8: b               #0x5f46f0
    // 0x5f46ec: mov             x4, x0
    // 0x5f46f0: ldur            x3, [fp, #-8]
    // 0x5f46f4: mov             x0, x4
    // 0x5f46f8: stur            x4, [fp, #-0x20]
    // 0x5f46fc: r2 = Null
    //     0x5f46fc: mov             x2, NULL
    // 0x5f4700: r1 = Null
    //     0x5f4700: mov             x1, NULL
    // 0x5f4704: r4 = 60
    //     0x5f4704: mov             x4, #0x3c
    // 0x5f4708: branchIfSmi(r0, 0x5f4714)
    //     0x5f4708: tbz             w0, #0, #0x5f4714
    // 0x5f470c: r4 = LoadClassIdInstr(r0)
    //     0x5f470c: ldur            x4, [x0, #-1]
    //     0x5f4710: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4714: sub             x4, x4, #0x5e
    // 0x5f4718: cmp             x4, #1
    // 0x5f471c: b.ls            #0x5f4730
    // 0x5f4720: r8 = String
    //     0x5f4720: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4724: r3 = Null
    //     0x5f4724: add             x3, PP, #0x19, lsl #12  ; [pp+0x19db0] Null
    //     0x5f4728: ldr             x3, [x3, #0xdb0]
    // 0x5f472c: r0 = String()
    //     0x5f472c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f4730: ldur            x3, [fp, #-8]
    // 0x5f4734: r0 = LoadClassIdInstr(r3)
    //     0x5f4734: ldur            x0, [x3, #-1]
    //     0x5f4738: ubfx            x0, x0, #0xc, #0x14
    // 0x5f473c: mov             x1, x3
    // 0x5f4740: r2 = "user_token"
    //     0x5f4740: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5f4744: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4744: add             lr, x0, #0x36e
    //     0x5f4748: ldr             lr, [x21, lr, lsl #3]
    //     0x5f474c: blr             lr
    // 0x5f4750: cmp             w0, NULL
    // 0x5f4754: b.ne            #0x5f4760
    // 0x5f4758: r4 = ""
    //     0x5f4758: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f475c: b               #0x5f4764
    // 0x5f4760: mov             x4, x0
    // 0x5f4764: ldur            x3, [fp, #-8]
    // 0x5f4768: mov             x0, x4
    // 0x5f476c: stur            x4, [fp, #-0x28]
    // 0x5f4770: r2 = Null
    //     0x5f4770: mov             x2, NULL
    // 0x5f4774: r1 = Null
    //     0x5f4774: mov             x1, NULL
    // 0x5f4778: r4 = 60
    //     0x5f4778: mov             x4, #0x3c
    // 0x5f477c: branchIfSmi(r0, 0x5f4788)
    //     0x5f477c: tbz             w0, #0, #0x5f4788
    // 0x5f4780: r4 = LoadClassIdInstr(r0)
    //     0x5f4780: ldur            x4, [x0, #-1]
    //     0x5f4784: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4788: sub             x4, x4, #0x5e
    // 0x5f478c: cmp             x4, #1
    // 0x5f4790: b.ls            #0x5f47a4
    // 0x5f4794: r8 = String
    //     0x5f4794: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4798: r3 = Null
    //     0x5f4798: add             x3, PP, #0x19, lsl #12  ; [pp+0x19dc0] Null
    //     0x5f479c: ldr             x3, [x3, #0xdc0]
    // 0x5f47a0: r0 = String()
    //     0x5f47a0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f47a4: ldur            x3, [fp, #-8]
    // 0x5f47a8: r0 = LoadClassIdInstr(r3)
    //     0x5f47a8: ldur            x0, [x3, #-1]
    //     0x5f47ac: ubfx            x0, x0, #0xc, #0x14
    // 0x5f47b0: mov             x1, x3
    // 0x5f47b4: r2 = "agency_id"
    //     0x5f47b4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5f47b8: ldr             x2, [x2, #0x40]
    // 0x5f47bc: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f47bc: add             lr, x0, #0x36e
    //     0x5f47c0: ldr             lr, [x21, lr, lsl #3]
    //     0x5f47c4: blr             lr
    // 0x5f47c8: mov             x3, x0
    // 0x5f47cc: r2 = Null
    //     0x5f47cc: mov             x2, NULL
    // 0x5f47d0: r1 = Null
    //     0x5f47d0: mov             x1, NULL
    // 0x5f47d4: stur            x3, [fp, #-0x30]
    // 0x5f47d8: r4 = 60
    //     0x5f47d8: mov             x4, #0x3c
    // 0x5f47dc: branchIfSmi(r0, 0x5f47e8)
    //     0x5f47dc: tbz             w0, #0, #0x5f47e8
    // 0x5f47e0: r4 = LoadClassIdInstr(r0)
    //     0x5f47e0: ldur            x4, [x0, #-1]
    //     0x5f47e4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f47e8: sub             x4, x4, #0x5e
    // 0x5f47ec: cmp             x4, #1
    // 0x5f47f0: b.ls            #0x5f4804
    // 0x5f47f4: r8 = String?
    //     0x5f47f4: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f47f8: r3 = Null
    //     0x5f47f8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19dd0] Null
    //     0x5f47fc: ldr             x3, [x3, #0xdd0]
    // 0x5f4800: r0 = String?()
    //     0x5f4800: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f4804: ldur            x3, [fp, #-8]
    // 0x5f4808: r0 = LoadClassIdInstr(r3)
    //     0x5f4808: ldur            x0, [x3, #-1]
    //     0x5f480c: ubfx            x0, x0, #0xc, #0x14
    // 0x5f4810: mov             x1, x3
    // 0x5f4814: r2 = "created_at"
    //     0x5f4814: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f4818: ldr             x2, [x2, #0xc00]
    // 0x5f481c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f481c: add             lr, x0, #0x36e
    //     0x5f4820: ldr             lr, [x21, lr, lsl #3]
    //     0x5f4824: blr             lr
    // 0x5f4828: cmp             w0, NULL
    // 0x5f482c: b.eq            #0x5f489c
    // 0x5f4830: ldur            x1, [fp, #-8]
    // 0x5f4834: r0 = LoadClassIdInstr(r1)
    //     0x5f4834: ldur            x0, [x1, #-1]
    //     0x5f4838: ubfx            x0, x0, #0xc, #0x14
    // 0x5f483c: r2 = "created_at"
    //     0x5f483c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f4840: ldr             x2, [x2, #0xc00]
    // 0x5f4844: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5f4844: add             lr, x0, #0x36e
    //     0x5f4848: ldr             lr, [x21, lr, lsl #3]
    //     0x5f484c: blr             lr
    // 0x5f4850: mov             x3, x0
    // 0x5f4854: r2 = Null
    //     0x5f4854: mov             x2, NULL
    // 0x5f4858: r1 = Null
    //     0x5f4858: mov             x1, NULL
    // 0x5f485c: stur            x3, [fp, #-8]
    // 0x5f4860: r4 = 60
    //     0x5f4860: mov             x4, #0x3c
    // 0x5f4864: branchIfSmi(r0, 0x5f4870)
    //     0x5f4864: tbz             w0, #0, #0x5f4870
    // 0x5f4868: r4 = LoadClassIdInstr(r0)
    //     0x5f4868: ldur            x4, [x0, #-1]
    //     0x5f486c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f4870: sub             x4, x4, #0x5e
    // 0x5f4874: cmp             x4, #1
    // 0x5f4878: b.ls            #0x5f488c
    // 0x5f487c: r8 = String
    //     0x5f487c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f4880: r3 = Null
    //     0x5f4880: add             x3, PP, #0x19, lsl #12  ; [pp+0x19de0] Null
    //     0x5f4884: ldr             x3, [x3, #0xde0]
    // 0x5f4888: r0 = String()
    //     0x5f4888: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f488c: ldur            x1, [fp, #-8]
    // 0x5f4890: r0 = parse()
    //     0x5f4890: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f4894: mov             x5, x0
    // 0x5f4898: b               #0x5f48cc
    // 0x5f489c: r0 = DateTime()
    //     0x5f489c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5f48a0: mov             x1, x0
    // 0x5f48a4: r0 = false
    //     0x5f48a4: add             x0, NULL, #0x30  ; false
    // 0x5f48a8: stur            x1, [fp, #-8]
    // 0x5f48ac: StoreField: r1->field_7 = r0
    //     0x5f48ac: stur            w0, [x1, #7]
    // 0x5f48b0: r0 = _getCurrentMicros()
    //     0x5f48b0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5f48b4: r1 = LoadInt32Instr(r0)
    //     0x5f48b4: sbfx            x1, x0, #1, #0x1f
    //     0x5f48b8: tbz             w0, #0, #0x5f48c0
    //     0x5f48bc: ldur            x1, [x0, #7]
    // 0x5f48c0: ldur            x0, [fp, #-8]
    // 0x5f48c4: StoreField: r0->field_b = r1
    //     0x5f48c4: stur            x1, [x0, #0xb]
    // 0x5f48c8: mov             x5, x0
    // 0x5f48cc: ldur            x4, [fp, #-0x10]
    // 0x5f48d0: ldur            x3, [fp, #-0x18]
    // 0x5f48d4: ldur            x2, [fp, #-0x20]
    // 0x5f48d8: ldur            x1, [fp, #-0x28]
    // 0x5f48dc: ldur            x0, [fp, #-0x30]
    // 0x5f48e0: stur            x5, [fp, #-8]
    // 0x5f48e4: r0 = NotificationModel()
    //     0x5f48e4: bl              #0x5ef33c  ; AllocateNotificationModelStub -> NotificationModel (size=0x20)
    // 0x5f48e8: ldur            x1, [fp, #-0x10]
    // 0x5f48ec: StoreField: r0->field_7 = r1
    //     0x5f48ec: stur            w1, [x0, #7]
    // 0x5f48f0: ldur            x1, [fp, #-0x18]
    // 0x5f48f4: StoreField: r0->field_b = r1
    //     0x5f48f4: stur            w1, [x0, #0xb]
    // 0x5f48f8: ldur            x1, [fp, #-0x20]
    // 0x5f48fc: StoreField: r0->field_f = r1
    //     0x5f48fc: stur            w1, [x0, #0xf]
    // 0x5f4900: ldur            x1, [fp, #-0x28]
    // 0x5f4904: StoreField: r0->field_13 = r1
    //     0x5f4904: stur            w1, [x0, #0x13]
    // 0x5f4908: ldur            x1, [fp, #-0x30]
    // 0x5f490c: ArrayStore: r0[0] = r1  ; List_4
    //     0x5f490c: stur            w1, [x0, #0x17]
    // 0x5f4910: ldur            x1, [fp, #-8]
    // 0x5f4914: StoreField: r0->field_1b = r1
    //     0x5f4914: stur            w1, [x0, #0x1b]
    // 0x5f4918: LeaveFrame
    //     0x5f4918: mov             SP, fp
    //     0x5f491c: ldp             fp, lr, [SP], #0x10
    // 0x5f4920: ret
    //     0x5f4920: ret             
    // 0x5f4924: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f4924: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f4928: b               #0x5f45d4
  }
}
