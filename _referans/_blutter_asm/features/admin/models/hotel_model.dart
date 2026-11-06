// lib: , url: package:umrem_demo/features/admin/models/hotel_model.dart

// class id: 1049513, size: 0x8
class :: {
}

// class id: 203, size: 0x2c, field offset: 0x8
class HotelModel extends Object {

  factory _ HotelModel.fromFirestore(/* No info */) {
    // ** addr: 0x5d9488, size: 0x518
    // 0x5d9488: EnterFrame
    //     0x5d9488: stp             fp, lr, [SP, #-0x10]!
    //     0x5d948c: mov             fp, SP
    // 0x5d9490: AllocStack(0x48)
    //     0x5d9490: sub             SP, SP, #0x48
    // 0x5d9494: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x5d9494: stur            x2, [fp, #-8]
    // 0x5d9498: CheckStackOverflow
    //     0x5d9498: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d949c: cmp             SP, x16
    //     0x5d94a0: b.ls            #0x5d9998
    // 0x5d94a4: r0 = LoadClassIdInstr(r2)
    //     0x5d94a4: ldur            x0, [x2, #-1]
    //     0x5d94a8: ubfx            x0, x0, #0xc, #0x14
    // 0x5d94ac: mov             x1, x2
    // 0x5d94b0: r0 = GDT[cid_x0 + -0xffe]()
    //     0x5d94b0: sub             lr, x0, #0xffe
    //     0x5d94b4: ldr             lr, [x21, lr, lsl #3]
    //     0x5d94b8: blr             lr
    // 0x5d94bc: mov             x3, x0
    // 0x5d94c0: r2 = Null
    //     0x5d94c0: mov             x2, NULL
    // 0x5d94c4: r1 = Null
    //     0x5d94c4: mov             x1, NULL
    // 0x5d94c8: stur            x3, [fp, #-0x10]
    // 0x5d94cc: r8 = Map<String, dynamic>
    //     0x5d94cc: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5d94d0: r3 = Null
    //     0x5d94d0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19078] Null
    //     0x5d94d4: ldr             x3, [x3, #0x78]
    // 0x5d94d8: r0 = Map<String, dynamic>()
    //     0x5d94d8: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5d94dc: ldur            x0, [fp, #-8]
    // 0x5d94e0: LoadField: r1 = r0->field_b
    //     0x5d94e0: ldur            w1, [x0, #0xb]
    // 0x5d94e4: DecompressPointer r1
    //     0x5d94e4: add             x1, x1, HEAP, lsl #32
    // 0x5d94e8: LoadField: r0 = r1->field_b
    //     0x5d94e8: ldur            w0, [x1, #0xb]
    // 0x5d94ec: DecompressPointer r0
    //     0x5d94ec: add             x0, x0, HEAP, lsl #32
    // 0x5d94f0: LoadField: r1 = r0->field_7
    //     0x5d94f0: ldur            w1, [x0, #7]
    // 0x5d94f4: DecompressPointer r1
    //     0x5d94f4: add             x1, x1, HEAP, lsl #32
    // 0x5d94f8: r0 = last()
    //     0x5d94f8: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5d94fc: ldur            x1, [fp, #-0x10]
    // 0x5d9500: r2 = "name"
    //     0x5d9500: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5d9504: stur            x0, [fp, #-8]
    // 0x5d9508: r0 = _getValueOrData()
    //     0x5d9508: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d950c: ldur            x3, [fp, #-0x10]
    // 0x5d9510: LoadField: r1 = r3->field_f
    //     0x5d9510: ldur            w1, [x3, #0xf]
    // 0x5d9514: DecompressPointer r1
    //     0x5d9514: add             x1, x1, HEAP, lsl #32
    // 0x5d9518: cmp             w1, w0
    // 0x5d951c: b.ne            #0x5d9524
    // 0x5d9520: r0 = Null
    //     0x5d9520: mov             x0, NULL
    // 0x5d9524: cmp             w0, NULL
    // 0x5d9528: b.ne            #0x5d9534
    // 0x5d952c: r4 = ""
    //     0x5d952c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5d9530: b               #0x5d9538
    // 0x5d9534: mov             x4, x0
    // 0x5d9538: mov             x0, x4
    // 0x5d953c: stur            x4, [fp, #-0x18]
    // 0x5d9540: r2 = Null
    //     0x5d9540: mov             x2, NULL
    // 0x5d9544: r1 = Null
    //     0x5d9544: mov             x1, NULL
    // 0x5d9548: r4 = 60
    //     0x5d9548: mov             x4, #0x3c
    // 0x5d954c: branchIfSmi(r0, 0x5d9558)
    //     0x5d954c: tbz             w0, #0, #0x5d9558
    // 0x5d9550: r4 = LoadClassIdInstr(r0)
    //     0x5d9550: ldur            x4, [x0, #-1]
    //     0x5d9554: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9558: sub             x4, x4, #0x5e
    // 0x5d955c: cmp             x4, #1
    // 0x5d9560: b.ls            #0x5d9574
    // 0x5d9564: r8 = String
    //     0x5d9564: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d9568: r3 = Null
    //     0x5d9568: add             x3, PP, #0x19, lsl #12  ; [pp+0x19088] Null
    //     0x5d956c: ldr             x3, [x3, #0x88]
    // 0x5d9570: r0 = String()
    //     0x5d9570: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d9574: ldur            x1, [fp, #-0x10]
    // 0x5d9578: r2 = "city"
    //     0x5d9578: add             x2, PP, #0x14, lsl #12  ; [pp+0x14980] "city"
    //     0x5d957c: ldr             x2, [x2, #0x980]
    // 0x5d9580: r0 = _getValueOrData()
    //     0x5d9580: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9584: ldur            x3, [fp, #-0x10]
    // 0x5d9588: LoadField: r1 = r3->field_f
    //     0x5d9588: ldur            w1, [x3, #0xf]
    // 0x5d958c: DecompressPointer r1
    //     0x5d958c: add             x1, x1, HEAP, lsl #32
    // 0x5d9590: cmp             w1, w0
    // 0x5d9594: b.ne            #0x5d959c
    // 0x5d9598: r0 = Null
    //     0x5d9598: mov             x0, NULL
    // 0x5d959c: cmp             w0, NULL
    // 0x5d95a0: b.ne            #0x5d95ac
    // 0x5d95a4: r4 = ""
    //     0x5d95a4: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5d95a8: b               #0x5d95b0
    // 0x5d95ac: mov             x4, x0
    // 0x5d95b0: mov             x0, x4
    // 0x5d95b4: stur            x4, [fp, #-0x20]
    // 0x5d95b8: r2 = Null
    //     0x5d95b8: mov             x2, NULL
    // 0x5d95bc: r1 = Null
    //     0x5d95bc: mov             x1, NULL
    // 0x5d95c0: r4 = 60
    //     0x5d95c0: mov             x4, #0x3c
    // 0x5d95c4: branchIfSmi(r0, 0x5d95d0)
    //     0x5d95c4: tbz             w0, #0, #0x5d95d0
    // 0x5d95c8: r4 = LoadClassIdInstr(r0)
    //     0x5d95c8: ldur            x4, [x0, #-1]
    //     0x5d95cc: ubfx            x4, x4, #0xc, #0x14
    // 0x5d95d0: sub             x4, x4, #0x5e
    // 0x5d95d4: cmp             x4, #1
    // 0x5d95d8: b.ls            #0x5d95ec
    // 0x5d95dc: r8 = String
    //     0x5d95dc: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d95e0: r3 = Null
    //     0x5d95e0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19098] Null
    //     0x5d95e4: ldr             x3, [x3, #0x98]
    // 0x5d95e8: r0 = String()
    //     0x5d95e8: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d95ec: ldur            x1, [fp, #-0x10]
    // 0x5d95f0: r2 = "address"
    //     0x5d95f0: add             x2, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x5d95f4: ldr             x2, [x2, #0x2a8]
    // 0x5d95f8: r0 = _getValueOrData()
    //     0x5d95f8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d95fc: ldur            x3, [fp, #-0x10]
    // 0x5d9600: LoadField: r1 = r3->field_f
    //     0x5d9600: ldur            w1, [x3, #0xf]
    // 0x5d9604: DecompressPointer r1
    //     0x5d9604: add             x1, x1, HEAP, lsl #32
    // 0x5d9608: cmp             w1, w0
    // 0x5d960c: b.ne            #0x5d9614
    // 0x5d9610: r0 = Null
    //     0x5d9610: mov             x0, NULL
    // 0x5d9614: cmp             w0, NULL
    // 0x5d9618: b.ne            #0x5d9624
    // 0x5d961c: r4 = ""
    //     0x5d961c: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5d9620: b               #0x5d9628
    // 0x5d9624: mov             x4, x0
    // 0x5d9628: mov             x0, x4
    // 0x5d962c: stur            x4, [fp, #-0x28]
    // 0x5d9630: r2 = Null
    //     0x5d9630: mov             x2, NULL
    // 0x5d9634: r1 = Null
    //     0x5d9634: mov             x1, NULL
    // 0x5d9638: r4 = 60
    //     0x5d9638: mov             x4, #0x3c
    // 0x5d963c: branchIfSmi(r0, 0x5d9648)
    //     0x5d963c: tbz             w0, #0, #0x5d9648
    // 0x5d9640: r4 = LoadClassIdInstr(r0)
    //     0x5d9640: ldur            x4, [x0, #-1]
    //     0x5d9644: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9648: sub             x4, x4, #0x5e
    // 0x5d964c: cmp             x4, #1
    // 0x5d9650: b.ls            #0x5d9664
    // 0x5d9654: r8 = String
    //     0x5d9654: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d9658: r3 = Null
    //     0x5d9658: add             x3, PP, #0x19, lsl #12  ; [pp+0x190a8] Null
    //     0x5d965c: ldr             x3, [x3, #0xa8]
    // 0x5d9660: r0 = String()
    //     0x5d9660: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d9664: ldur            x1, [fp, #-0x10]
    // 0x5d9668: r2 = "trip_id"
    //     0x5d9668: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5d966c: ldr             x2, [x2, #0xbf0]
    // 0x5d9670: r0 = _getValueOrData()
    //     0x5d9670: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9674: ldur            x3, [fp, #-0x10]
    // 0x5d9678: LoadField: r1 = r3->field_f
    //     0x5d9678: ldur            w1, [x3, #0xf]
    // 0x5d967c: DecompressPointer r1
    //     0x5d967c: add             x1, x1, HEAP, lsl #32
    // 0x5d9680: cmp             w1, w0
    // 0x5d9684: b.ne            #0x5d9690
    // 0x5d9688: r4 = Null
    //     0x5d9688: mov             x4, NULL
    // 0x5d968c: b               #0x5d9694
    // 0x5d9690: mov             x4, x0
    // 0x5d9694: mov             x0, x4
    // 0x5d9698: stur            x4, [fp, #-0x30]
    // 0x5d969c: r2 = Null
    //     0x5d969c: mov             x2, NULL
    // 0x5d96a0: r1 = Null
    //     0x5d96a0: mov             x1, NULL
    // 0x5d96a4: r4 = 60
    //     0x5d96a4: mov             x4, #0x3c
    // 0x5d96a8: branchIfSmi(r0, 0x5d96b4)
    //     0x5d96a8: tbz             w0, #0, #0x5d96b4
    // 0x5d96ac: r4 = LoadClassIdInstr(r0)
    //     0x5d96ac: ldur            x4, [x0, #-1]
    //     0x5d96b0: ubfx            x4, x4, #0xc, #0x14
    // 0x5d96b4: sub             x4, x4, #0x5e
    // 0x5d96b8: cmp             x4, #1
    // 0x5d96bc: b.ls            #0x5d96d0
    // 0x5d96c0: r8 = String?
    //     0x5d96c0: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d96c4: r3 = Null
    //     0x5d96c4: add             x3, PP, #0x19, lsl #12  ; [pp+0x190b8] Null
    //     0x5d96c8: ldr             x3, [x3, #0xb8]
    // 0x5d96cc: r0 = String?()
    //     0x5d96cc: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d96d0: ldur            x1, [fp, #-0x10]
    // 0x5d96d4: r2 = "agency_id"
    //     0x5d96d4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d96d8: ldr             x2, [x2, #0x40]
    // 0x5d96dc: r0 = _getValueOrData()
    //     0x5d96dc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d96e0: ldur            x3, [fp, #-0x10]
    // 0x5d96e4: LoadField: r1 = r3->field_f
    //     0x5d96e4: ldur            w1, [x3, #0xf]
    // 0x5d96e8: DecompressPointer r1
    //     0x5d96e8: add             x1, x1, HEAP, lsl #32
    // 0x5d96ec: cmp             w1, w0
    // 0x5d96f0: b.ne            #0x5d96fc
    // 0x5d96f4: r4 = Null
    //     0x5d96f4: mov             x4, NULL
    // 0x5d96f8: b               #0x5d9700
    // 0x5d96fc: mov             x4, x0
    // 0x5d9700: mov             x0, x4
    // 0x5d9704: stur            x4, [fp, #-0x38]
    // 0x5d9708: r2 = Null
    //     0x5d9708: mov             x2, NULL
    // 0x5d970c: r1 = Null
    //     0x5d970c: mov             x1, NULL
    // 0x5d9710: r4 = 60
    //     0x5d9710: mov             x4, #0x3c
    // 0x5d9714: branchIfSmi(r0, 0x5d9720)
    //     0x5d9714: tbz             w0, #0, #0x5d9720
    // 0x5d9718: r4 = LoadClassIdInstr(r0)
    //     0x5d9718: ldur            x4, [x0, #-1]
    //     0x5d971c: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9720: sub             x4, x4, #0x5e
    // 0x5d9724: cmp             x4, #1
    // 0x5d9728: b.ls            #0x5d973c
    // 0x5d972c: r8 = String?
    //     0x5d972c: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5d9730: r3 = Null
    //     0x5d9730: add             x3, PP, #0x19, lsl #12  ; [pp+0x190c8] Null
    //     0x5d9734: ldr             x3, [x3, #0xc8]
    // 0x5d9738: r0 = String?()
    //     0x5d9738: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5d973c: ldur            x1, [fp, #-0x10]
    // 0x5d9740: r2 = "capacity"
    //     0x5d9740: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5d9744: ldr             x2, [x2, #0x988]
    // 0x5d9748: r0 = _getValueOrData()
    //     0x5d9748: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d974c: mov             x1, x0
    // 0x5d9750: ldur            x0, [fp, #-0x10]
    // 0x5d9754: LoadField: r2 = r0->field_f
    //     0x5d9754: ldur            w2, [x0, #0xf]
    // 0x5d9758: DecompressPointer r2
    //     0x5d9758: add             x2, x2, HEAP, lsl #32
    // 0x5d975c: cmp             w2, w1
    // 0x5d9760: b.ne            #0x5d9768
    // 0x5d9764: r1 = Null
    //     0x5d9764: mov             x1, NULL
    // 0x5d9768: r2 = 60
    //     0x5d9768: mov             x2, #0x3c
    // 0x5d976c: branchIfSmi(r1, 0x5d9778)
    //     0x5d976c: tbz             w1, #0, #0x5d9778
    // 0x5d9770: r2 = LoadClassIdInstr(r1)
    //     0x5d9770: ldur            x2, [x1, #-1]
    //     0x5d9774: ubfx            x2, x2, #0xc, #0x14
    // 0x5d9778: sub             x16, x2, #0x3c
    // 0x5d977c: cmp             x16, #1
    // 0x5d9780: b.hi            #0x5d97f4
    // 0x5d9784: mov             x1, x0
    // 0x5d9788: r2 = "capacity"
    //     0x5d9788: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5d978c: ldr             x2, [x2, #0x988]
    // 0x5d9790: r0 = _getValueOrData()
    //     0x5d9790: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9794: ldur            x3, [fp, #-0x10]
    // 0x5d9798: LoadField: r1 = r3->field_f
    //     0x5d9798: ldur            w1, [x3, #0xf]
    // 0x5d979c: DecompressPointer r1
    //     0x5d979c: add             x1, x1, HEAP, lsl #32
    // 0x5d97a0: cmp             w1, w0
    // 0x5d97a4: b.ne            #0x5d97b0
    // 0x5d97a8: r4 = Null
    //     0x5d97a8: mov             x4, NULL
    // 0x5d97ac: b               #0x5d97b4
    // 0x5d97b0: mov             x4, x0
    // 0x5d97b4: mov             x0, x4
    // 0x5d97b8: stur            x4, [fp, #-0x40]
    // 0x5d97bc: r2 = Null
    //     0x5d97bc: mov             x2, NULL
    // 0x5d97c0: r1 = Null
    //     0x5d97c0: mov             x1, NULL
    // 0x5d97c4: branchIfSmi(r0, 0x5d97ec)
    //     0x5d97c4: tbz             w0, #0, #0x5d97ec
    // 0x5d97c8: r4 = LoadClassIdInstr(r0)
    //     0x5d97c8: ldur            x4, [x0, #-1]
    //     0x5d97cc: ubfx            x4, x4, #0xc, #0x14
    // 0x5d97d0: sub             x4, x4, #0x3c
    // 0x5d97d4: cmp             x4, #1
    // 0x5d97d8: b.ls            #0x5d97ec
    // 0x5d97dc: r8 = int
    //     0x5d97dc: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x5d97e0: r3 = Null
    //     0x5d97e0: add             x3, PP, #0x19, lsl #12  ; [pp+0x190d8] Null
    //     0x5d97e4: ldr             x3, [x3, #0xd8]
    // 0x5d97e8: r0 = int()
    //     0x5d97e8: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x5d97ec: ldur            x3, [fp, #-0x40]
    // 0x5d97f0: b               #0x5d97f8
    // 0x5d97f4: r3 = Null
    //     0x5d97f4: mov             x3, NULL
    // 0x5d97f8: ldur            x0, [fp, #-0x10]
    // 0x5d97fc: mov             x1, x0
    // 0x5d9800: stur            x3, [fp, #-0x40]
    // 0x5d9804: r2 = "created_at"
    //     0x5d9804: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5d9808: ldr             x2, [x2, #0xc00]
    // 0x5d980c: r0 = _getValueOrData()
    //     0x5d980c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d9810: ldur            x3, [fp, #-0x10]
    // 0x5d9814: LoadField: r1 = r3->field_f
    //     0x5d9814: ldur            w1, [x3, #0xf]
    // 0x5d9818: DecompressPointer r1
    //     0x5d9818: add             x1, x1, HEAP, lsl #32
    // 0x5d981c: cmp             w1, w0
    // 0x5d9820: b.ne            #0x5d982c
    // 0x5d9824: r4 = Null
    //     0x5d9824: mov             x4, NULL
    // 0x5d9828: b               #0x5d9830
    // 0x5d982c: mov             x4, x0
    // 0x5d9830: mov             x0, x4
    // 0x5d9834: stur            x4, [fp, #-0x48]
    // 0x5d9838: r2 = Null
    //     0x5d9838: mov             x2, NULL
    // 0x5d983c: r1 = Null
    //     0x5d983c: mov             x1, NULL
    // 0x5d9840: r4 = 60
    //     0x5d9840: mov             x4, #0x3c
    // 0x5d9844: branchIfSmi(r0, 0x5d9850)
    //     0x5d9844: tbz             w0, #0, #0x5d9850
    // 0x5d9848: r4 = LoadClassIdInstr(r0)
    //     0x5d9848: ldur            x4, [x0, #-1]
    //     0x5d984c: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9850: cmp             x4, #0xe96
    // 0x5d9854: b.eq            #0x5d986c
    // 0x5d9858: r8 = Timestamp?
    //     0x5d9858: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5d985c: ldr             x8, [x8, #0x90]
    // 0x5d9860: r3 = Null
    //     0x5d9860: add             x3, PP, #0x19, lsl #12  ; [pp+0x190e8] Null
    //     0x5d9864: ldr             x3, [x3, #0xe8]
    // 0x5d9868: r0 = DefaultNullableTypeTest()
    //     0x5d9868: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5d986c: ldur            x1, [fp, #-0x48]
    // 0x5d9870: cmp             w1, NULL
    // 0x5d9874: b.ne            #0x5d9880
    // 0x5d9878: r3 = Null
    //     0x5d9878: mov             x3, NULL
    // 0x5d987c: b               #0x5d9888
    // 0x5d9880: r0 = toDate()
    //     0x5d9880: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5d9884: mov             x3, x0
    // 0x5d9888: ldur            x0, [fp, #-0x10]
    // 0x5d988c: mov             x1, x0
    // 0x5d9890: stur            x3, [fp, #-0x48]
    // 0x5d9894: r2 = "updated_at"
    //     0x5d9894: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5d9898: ldr             x2, [x2, #0x58]
    // 0x5d989c: r0 = _getValueOrData()
    //     0x5d989c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5d98a0: mov             x1, x0
    // 0x5d98a4: ldur            x0, [fp, #-0x10]
    // 0x5d98a8: LoadField: r2 = r0->field_f
    //     0x5d98a8: ldur            w2, [x0, #0xf]
    // 0x5d98ac: DecompressPointer r2
    //     0x5d98ac: add             x2, x2, HEAP, lsl #32
    // 0x5d98b0: cmp             w2, w1
    // 0x5d98b4: b.ne            #0x5d98c0
    // 0x5d98b8: r3 = Null
    //     0x5d98b8: mov             x3, NULL
    // 0x5d98bc: b               #0x5d98c4
    // 0x5d98c0: mov             x3, x1
    // 0x5d98c4: mov             x0, x3
    // 0x5d98c8: stur            x3, [fp, #-0x10]
    // 0x5d98cc: r2 = Null
    //     0x5d98cc: mov             x2, NULL
    // 0x5d98d0: r1 = Null
    //     0x5d98d0: mov             x1, NULL
    // 0x5d98d4: r4 = 60
    //     0x5d98d4: mov             x4, #0x3c
    // 0x5d98d8: branchIfSmi(r0, 0x5d98e4)
    //     0x5d98d8: tbz             w0, #0, #0x5d98e4
    // 0x5d98dc: r4 = LoadClassIdInstr(r0)
    //     0x5d98dc: ldur            x4, [x0, #-1]
    //     0x5d98e0: ubfx            x4, x4, #0xc, #0x14
    // 0x5d98e4: cmp             x4, #0xe96
    // 0x5d98e8: b.eq            #0x5d9900
    // 0x5d98ec: r8 = Timestamp?
    //     0x5d98ec: add             x8, PP, #0x15, lsl #12  ; [pp+0x15090] Type: Timestamp?
    //     0x5d98f0: ldr             x8, [x8, #0x90]
    // 0x5d98f4: r3 = Null
    //     0x5d98f4: add             x3, PP, #0x19, lsl #12  ; [pp+0x190f8] Null
    //     0x5d98f8: ldr             x3, [x3, #0xf8]
    // 0x5d98fc: r0 = DefaultNullableTypeTest()
    //     0x5d98fc: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5d9900: ldur            x1, [fp, #-0x10]
    // 0x5d9904: cmp             w1, NULL
    // 0x5d9908: b.ne            #0x5d9914
    // 0x5d990c: r8 = Null
    //     0x5d990c: mov             x8, NULL
    // 0x5d9910: b               #0x5d991c
    // 0x5d9914: r0 = toDate()
    //     0x5d9914: bl              #0x5d8e04  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::toDate
    // 0x5d9918: mov             x8, x0
    // 0x5d991c: ldur            x6, [fp, #-0x18]
    // 0x5d9920: ldur            x5, [fp, #-0x20]
    // 0x5d9924: ldur            x4, [fp, #-0x28]
    // 0x5d9928: ldur            x1, [fp, #-0x40]
    // 0x5d992c: ldur            x0, [fp, #-0x48]
    // 0x5d9930: ldur            x3, [fp, #-0x30]
    // 0x5d9934: ldur            x2, [fp, #-0x38]
    // 0x5d9938: ldur            x7, [fp, #-8]
    // 0x5d993c: stur            x8, [fp, #-0x10]
    // 0x5d9940: r0 = HotelModel()
    //     0x5d9940: bl              #0x5d9bb4  ; AllocateHotelModelStub -> HotelModel (size=0x2c)
    // 0x5d9944: ldur            x1, [fp, #-8]
    // 0x5d9948: StoreField: r0->field_7 = r1
    //     0x5d9948: stur            w1, [x0, #7]
    // 0x5d994c: ldur            x1, [fp, #-0x18]
    // 0x5d9950: StoreField: r0->field_b = r1
    //     0x5d9950: stur            w1, [x0, #0xb]
    // 0x5d9954: ldur            x1, [fp, #-0x20]
    // 0x5d9958: StoreField: r0->field_f = r1
    //     0x5d9958: stur            w1, [x0, #0xf]
    // 0x5d995c: ldur            x1, [fp, #-0x28]
    // 0x5d9960: StoreField: r0->field_13 = r1
    //     0x5d9960: stur            w1, [x0, #0x13]
    // 0x5d9964: ldur            x1, [fp, #-0x30]
    // 0x5d9968: ArrayStore: r0[0] = r1  ; List_4
    //     0x5d9968: stur            w1, [x0, #0x17]
    // 0x5d996c: ldur            x1, [fp, #-0x38]
    // 0x5d9970: StoreField: r0->field_1b = r1
    //     0x5d9970: stur            w1, [x0, #0x1b]
    // 0x5d9974: ldur            x1, [fp, #-0x40]
    // 0x5d9978: StoreField: r0->field_1f = r1
    //     0x5d9978: stur            w1, [x0, #0x1f]
    // 0x5d997c: ldur            x1, [fp, #-0x48]
    // 0x5d9980: StoreField: r0->field_23 = r1
    //     0x5d9980: stur            w1, [x0, #0x23]
    // 0x5d9984: ldur            x1, [fp, #-0x10]
    // 0x5d9988: StoreField: r0->field_27 = r1
    //     0x5d9988: stur            w1, [x0, #0x27]
    // 0x5d998c: LeaveFrame
    //     0x5d998c: mov             SP, fp
    //     0x5d9990: ldp             fp, lr, [SP], #0x10
    // 0x5d9994: ret
    //     0x5d9994: ret             
    // 0x5d9998: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9998: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d999c: b               #0x5d94a4
  }
  Map<String, dynamic> toJson(HotelModel) {
    // ** addr: 0x5d99b8, size: 0x48
    // 0x5d99b8: EnterFrame
    //     0x5d99b8: stp             fp, lr, [SP, #-0x10]!
    //     0x5d99bc: mov             fp, SP
    // 0x5d99c0: CheckStackOverflow
    //     0x5d99c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d99c4: cmp             SP, x16
    //     0x5d99c8: b.ls            #0x5d99e0
    // 0x5d99cc: ldr             x1, [fp, #0x10]
    // 0x5d99d0: r0 = toJson()
    //     0x5d99d0: bl              #0x5d99e8  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::toJson
    // 0x5d99d4: LeaveFrame
    //     0x5d99d4: mov             SP, fp
    //     0x5d99d8: ldp             fp, lr, [SP], #0x10
    // 0x5d99dc: ret
    //     0x5d99dc: ret             
    // 0x5d99e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d99e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d99e4: b               #0x5d99cc
  }
  Map<String, dynamic> toJson(HotelModel) {
    // ** addr: 0x5d99e8, size: 0x1ac
    // 0x5d99e8: EnterFrame
    //     0x5d99e8: stp             fp, lr, [SP, #-0x10]!
    //     0x5d99ec: mov             fp, SP
    // 0x5d99f0: AllocStack(0x20)
    //     0x5d99f0: sub             SP, SP, #0x20
    // 0x5d99f4: SetupParameters(HotelModel this /* r1 => r0, fp-0x8 */)
    //     0x5d99f4: mov             x0, x1
    //     0x5d99f8: stur            x1, [fp, #-8]
    // 0x5d99fc: CheckStackOverflow
    //     0x5d99fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9a00: cmp             SP, x16
    //     0x5d9a04: b.ls            #0x5d9b8c
    // 0x5d9a08: r1 = Null
    //     0x5d9a08: mov             x1, NULL
    // 0x5d9a0c: r2 = 36
    //     0x5d9a0c: mov             x2, #0x24
    // 0x5d9a10: r0 = AllocateArray()
    //     0x5d9a10: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5d9a14: stur            x0, [fp, #-0x10]
    // 0x5d9a18: r16 = "id"
    //     0x5d9a18: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5d9a1c: ldr             x16, [x16, #0xae8]
    // 0x5d9a20: StoreField: r0->field_f = r16
    //     0x5d9a20: stur            w16, [x0, #0xf]
    // 0x5d9a24: ldur            x2, [fp, #-8]
    // 0x5d9a28: LoadField: r1 = r2->field_7
    //     0x5d9a28: ldur            w1, [x2, #7]
    // 0x5d9a2c: DecompressPointer r1
    //     0x5d9a2c: add             x1, x1, HEAP, lsl #32
    // 0x5d9a30: StoreField: r0->field_13 = r1
    //     0x5d9a30: stur            w1, [x0, #0x13]
    // 0x5d9a34: r16 = "name"
    //     0x5d9a34: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5d9a38: ArrayStore: r0[0] = r16  ; List_4
    //     0x5d9a38: stur            w16, [x0, #0x17]
    // 0x5d9a3c: LoadField: r1 = r2->field_b
    //     0x5d9a3c: ldur            w1, [x2, #0xb]
    // 0x5d9a40: DecompressPointer r1
    //     0x5d9a40: add             x1, x1, HEAP, lsl #32
    // 0x5d9a44: StoreField: r0->field_1b = r1
    //     0x5d9a44: stur            w1, [x0, #0x1b]
    // 0x5d9a48: r16 = "city"
    //     0x5d9a48: add             x16, PP, #0x14, lsl #12  ; [pp+0x14980] "city"
    //     0x5d9a4c: ldr             x16, [x16, #0x980]
    // 0x5d9a50: StoreField: r0->field_1f = r16
    //     0x5d9a50: stur            w16, [x0, #0x1f]
    // 0x5d9a54: LoadField: r1 = r2->field_f
    //     0x5d9a54: ldur            w1, [x2, #0xf]
    // 0x5d9a58: DecompressPointer r1
    //     0x5d9a58: add             x1, x1, HEAP, lsl #32
    // 0x5d9a5c: StoreField: r0->field_23 = r1
    //     0x5d9a5c: stur            w1, [x0, #0x23]
    // 0x5d9a60: r16 = "address"
    //     0x5d9a60: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x5d9a64: ldr             x16, [x16, #0x2a8]
    // 0x5d9a68: StoreField: r0->field_27 = r16
    //     0x5d9a68: stur            w16, [x0, #0x27]
    // 0x5d9a6c: LoadField: r1 = r2->field_13
    //     0x5d9a6c: ldur            w1, [x2, #0x13]
    // 0x5d9a70: DecompressPointer r1
    //     0x5d9a70: add             x1, x1, HEAP, lsl #32
    // 0x5d9a74: StoreField: r0->field_2b = r1
    //     0x5d9a74: stur            w1, [x0, #0x2b]
    // 0x5d9a78: r16 = "trip_id"
    //     0x5d9a78: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5d9a7c: ldr             x16, [x16, #0xbf0]
    // 0x5d9a80: StoreField: r0->field_2f = r16
    //     0x5d9a80: stur            w16, [x0, #0x2f]
    // 0x5d9a84: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x5d9a84: ldur            w1, [x2, #0x17]
    // 0x5d9a88: DecompressPointer r1
    //     0x5d9a88: add             x1, x1, HEAP, lsl #32
    // 0x5d9a8c: StoreField: r0->field_33 = r1
    //     0x5d9a8c: stur            w1, [x0, #0x33]
    // 0x5d9a90: r16 = "agency_id"
    //     0x5d9a90: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d9a94: ldr             x16, [x16, #0x40]
    // 0x5d9a98: StoreField: r0->field_37 = r16
    //     0x5d9a98: stur            w16, [x0, #0x37]
    // 0x5d9a9c: LoadField: r1 = r2->field_1b
    //     0x5d9a9c: ldur            w1, [x2, #0x1b]
    // 0x5d9aa0: DecompressPointer r1
    //     0x5d9aa0: add             x1, x1, HEAP, lsl #32
    // 0x5d9aa4: StoreField: r0->field_3b = r1
    //     0x5d9aa4: stur            w1, [x0, #0x3b]
    // 0x5d9aa8: r16 = "capacity"
    //     0x5d9aa8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5d9aac: ldr             x16, [x16, #0x988]
    // 0x5d9ab0: StoreField: r0->field_3f = r16
    //     0x5d9ab0: stur            w16, [x0, #0x3f]
    // 0x5d9ab4: LoadField: r1 = r2->field_1f
    //     0x5d9ab4: ldur            w1, [x2, #0x1f]
    // 0x5d9ab8: DecompressPointer r1
    //     0x5d9ab8: add             x1, x1, HEAP, lsl #32
    // 0x5d9abc: StoreField: r0->field_43 = r1
    //     0x5d9abc: stur            w1, [x0, #0x43]
    // 0x5d9ac0: r16 = "created_at"
    //     0x5d9ac0: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5d9ac4: ldr             x16, [x16, #0xc00]
    // 0x5d9ac8: StoreField: r0->field_47 = r16
    //     0x5d9ac8: stur            w16, [x0, #0x47]
    // 0x5d9acc: LoadField: r1 = r2->field_23
    //     0x5d9acc: ldur            w1, [x2, #0x23]
    // 0x5d9ad0: DecompressPointer r1
    //     0x5d9ad0: add             x1, x1, HEAP, lsl #32
    // 0x5d9ad4: cmp             w1, NULL
    // 0x5d9ad8: b.ne            #0x5d9aec
    // 0x5d9adc: mov             x3, x2
    // 0x5d9ae0: mov             x2, x0
    // 0x5d9ae4: r0 = Null
    //     0x5d9ae4: mov             x0, NULL
    // 0x5d9ae8: b               #0x5d9af8
    // 0x5d9aec: r0 = toIso8601String()
    //     0x5d9aec: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5d9af0: ldur            x3, [fp, #-8]
    // 0x5d9af4: ldur            x2, [fp, #-0x10]
    // 0x5d9af8: mov             x1, x2
    // 0x5d9afc: ArrayStore: r1[15] = r0  ; List_4
    //     0x5d9afc: add             x25, x1, #0x4b
    //     0x5d9b00: str             w0, [x25]
    //     0x5d9b04: tbz             w0, #0, #0x5d9b20
    //     0x5d9b08: ldurb           w16, [x1, #-1]
    //     0x5d9b0c: ldurb           w17, [x0, #-1]
    //     0x5d9b10: and             x16, x17, x16, lsr #2
    //     0x5d9b14: tst             x16, HEAP, lsr #32
    //     0x5d9b18: b.eq            #0x5d9b20
    //     0x5d9b1c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d9b20: r16 = "updated_at"
    //     0x5d9b20: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5d9b24: ldr             x16, [x16, #0x58]
    // 0x5d9b28: StoreField: r2->field_4f = r16
    //     0x5d9b28: stur            w16, [x2, #0x4f]
    // 0x5d9b2c: LoadField: r1 = r3->field_27
    //     0x5d9b2c: ldur            w1, [x3, #0x27]
    // 0x5d9b30: DecompressPointer r1
    //     0x5d9b30: add             x1, x1, HEAP, lsl #32
    // 0x5d9b34: cmp             w1, NULL
    // 0x5d9b38: b.ne            #0x5d9b44
    // 0x5d9b3c: r0 = Null
    //     0x5d9b3c: mov             x0, NULL
    // 0x5d9b40: b               #0x5d9b48
    // 0x5d9b44: r0 = toIso8601String()
    //     0x5d9b44: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5d9b48: ldur            x1, [fp, #-0x10]
    // 0x5d9b4c: ArrayStore: r1[17] = r0  ; List_4
    //     0x5d9b4c: add             x25, x1, #0x53
    //     0x5d9b50: str             w0, [x25]
    //     0x5d9b54: tbz             w0, #0, #0x5d9b70
    //     0x5d9b58: ldurb           w16, [x1, #-1]
    //     0x5d9b5c: ldurb           w17, [x0, #-1]
    //     0x5d9b60: and             x16, x17, x16, lsr #2
    //     0x5d9b64: tst             x16, HEAP, lsr #32
    //     0x5d9b68: b.eq            #0x5d9b70
    //     0x5d9b6c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5d9b70: r16 = <String, dynamic>
    //     0x5d9b70: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5d9b74: ldur            lr, [fp, #-0x10]
    // 0x5d9b78: stp             lr, x16, [SP]
    // 0x5d9b7c: r0 = Map._fromLiteral()
    //     0x5d9b7c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5d9b80: LeaveFrame
    //     0x5d9b80: mov             SP, fp
    //     0x5d9b84: ldp             fp, lr, [SP], #0x10
    // 0x5d9b88: ret
    //     0x5d9b88: ret             
    // 0x5d9b8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9b8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9b90: b               #0x5d9a08
  }
  _ copyWith(/* No info */) {
    // ** addr: 0x5dd0f4, size: 0xc8
    // 0x5dd0f4: EnterFrame
    //     0x5dd0f4: stp             fp, lr, [SP, #-0x10]!
    //     0x5dd0f8: mov             fp, SP
    // 0x5dd0fc: AllocStack(0x48)
    //     0x5dd0fc: sub             SP, SP, #0x48
    // 0x5dd100: SetupParameters(dynamic _ /* r2 => r2, fp-0x48 */)
    //     0x5dd100: stur            x2, [fp, #-0x48]
    // 0x5dd104: LoadField: r0 = r1->field_b
    //     0x5dd104: ldur            w0, [x1, #0xb]
    // 0x5dd108: DecompressPointer r0
    //     0x5dd108: add             x0, x0, HEAP, lsl #32
    // 0x5dd10c: stur            x0, [fp, #-0x40]
    // 0x5dd110: LoadField: r3 = r1->field_f
    //     0x5dd110: ldur            w3, [x1, #0xf]
    // 0x5dd114: DecompressPointer r3
    //     0x5dd114: add             x3, x3, HEAP, lsl #32
    // 0x5dd118: stur            x3, [fp, #-0x38]
    // 0x5dd11c: LoadField: r4 = r1->field_13
    //     0x5dd11c: ldur            w4, [x1, #0x13]
    // 0x5dd120: DecompressPointer r4
    //     0x5dd120: add             x4, x4, HEAP, lsl #32
    // 0x5dd124: stur            x4, [fp, #-0x30]
    // 0x5dd128: ArrayLoad: r5 = r1[0]  ; List_4
    //     0x5dd128: ldur            w5, [x1, #0x17]
    // 0x5dd12c: DecompressPointer r5
    //     0x5dd12c: add             x5, x5, HEAP, lsl #32
    // 0x5dd130: stur            x5, [fp, #-0x28]
    // 0x5dd134: LoadField: r6 = r1->field_1b
    //     0x5dd134: ldur            w6, [x1, #0x1b]
    // 0x5dd138: DecompressPointer r6
    //     0x5dd138: add             x6, x6, HEAP, lsl #32
    // 0x5dd13c: stur            x6, [fp, #-0x20]
    // 0x5dd140: LoadField: r7 = r1->field_1f
    //     0x5dd140: ldur            w7, [x1, #0x1f]
    // 0x5dd144: DecompressPointer r7
    //     0x5dd144: add             x7, x7, HEAP, lsl #32
    // 0x5dd148: stur            x7, [fp, #-0x18]
    // 0x5dd14c: LoadField: r8 = r1->field_23
    //     0x5dd14c: ldur            w8, [x1, #0x23]
    // 0x5dd150: DecompressPointer r8
    //     0x5dd150: add             x8, x8, HEAP, lsl #32
    // 0x5dd154: stur            x8, [fp, #-0x10]
    // 0x5dd158: LoadField: r9 = r1->field_27
    //     0x5dd158: ldur            w9, [x1, #0x27]
    // 0x5dd15c: DecompressPointer r9
    //     0x5dd15c: add             x9, x9, HEAP, lsl #32
    // 0x5dd160: stur            x9, [fp, #-8]
    // 0x5dd164: r0 = HotelModel()
    //     0x5dd164: bl              #0x5d9bb4  ; AllocateHotelModelStub -> HotelModel (size=0x2c)
    // 0x5dd168: ldur            x1, [fp, #-0x48]
    // 0x5dd16c: StoreField: r0->field_7 = r1
    //     0x5dd16c: stur            w1, [x0, #7]
    // 0x5dd170: ldur            x1, [fp, #-0x40]
    // 0x5dd174: StoreField: r0->field_b = r1
    //     0x5dd174: stur            w1, [x0, #0xb]
    // 0x5dd178: ldur            x1, [fp, #-0x38]
    // 0x5dd17c: StoreField: r0->field_f = r1
    //     0x5dd17c: stur            w1, [x0, #0xf]
    // 0x5dd180: ldur            x1, [fp, #-0x30]
    // 0x5dd184: StoreField: r0->field_13 = r1
    //     0x5dd184: stur            w1, [x0, #0x13]
    // 0x5dd188: ldur            x1, [fp, #-0x28]
    // 0x5dd18c: ArrayStore: r0[0] = r1  ; List_4
    //     0x5dd18c: stur            w1, [x0, #0x17]
    // 0x5dd190: ldur            x1, [fp, #-0x20]
    // 0x5dd194: StoreField: r0->field_1b = r1
    //     0x5dd194: stur            w1, [x0, #0x1b]
    // 0x5dd198: ldur            x1, [fp, #-0x18]
    // 0x5dd19c: StoreField: r0->field_1f = r1
    //     0x5dd19c: stur            w1, [x0, #0x1f]
    // 0x5dd1a0: ldur            x1, [fp, #-0x10]
    // 0x5dd1a4: StoreField: r0->field_23 = r1
    //     0x5dd1a4: stur            w1, [x0, #0x23]
    // 0x5dd1a8: ldur            x1, [fp, #-8]
    // 0x5dd1ac: StoreField: r0->field_27 = r1
    //     0x5dd1ac: stur            w1, [x0, #0x27]
    // 0x5dd1b0: LeaveFrame
    //     0x5dd1b0: mov             SP, fp
    //     0x5dd1b4: ldp             fp, lr, [SP], #0x10
    // 0x5dd1b8: ret
    //     0x5dd1b8: ret             
  }
  Map<String, dynamic> toFirestore(HotelModel) {
    // ** addr: 0x5dd6b8, size: 0x17c
    // 0x5dd6b8: EnterFrame
    //     0x5dd6b8: stp             fp, lr, [SP, #-0x10]!
    //     0x5dd6bc: mov             fp, SP
    // 0x5dd6c0: AllocStack(0x20)
    //     0x5dd6c0: sub             SP, SP, #0x20
    // 0x5dd6c4: SetupParameters(HotelModel this /* r1 => r0, fp-0x8 */)
    //     0x5dd6c4: mov             x0, x1
    //     0x5dd6c8: stur            x1, [fp, #-8]
    // 0x5dd6cc: CheckStackOverflow
    //     0x5dd6cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dd6d0: cmp             SP, x16
    //     0x5dd6d4: b.ls            #0x5dd82c
    // 0x5dd6d8: r1 = Null
    //     0x5dd6d8: mov             x1, NULL
    // 0x5dd6dc: r2 = 32
    //     0x5dd6dc: mov             x2, #0x20
    // 0x5dd6e0: r0 = AllocateArray()
    //     0x5dd6e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5dd6e4: stur            x0, [fp, #-0x10]
    // 0x5dd6e8: r16 = "name"
    //     0x5dd6e8: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5dd6ec: StoreField: r0->field_f = r16
    //     0x5dd6ec: stur            w16, [x0, #0xf]
    // 0x5dd6f0: ldur            x1, [fp, #-8]
    // 0x5dd6f4: LoadField: r2 = r1->field_b
    //     0x5dd6f4: ldur            w2, [x1, #0xb]
    // 0x5dd6f8: DecompressPointer r2
    //     0x5dd6f8: add             x2, x2, HEAP, lsl #32
    // 0x5dd6fc: StoreField: r0->field_13 = r2
    //     0x5dd6fc: stur            w2, [x0, #0x13]
    // 0x5dd700: r16 = "city"
    //     0x5dd700: add             x16, PP, #0x14, lsl #12  ; [pp+0x14980] "city"
    //     0x5dd704: ldr             x16, [x16, #0x980]
    // 0x5dd708: ArrayStore: r0[0] = r16  ; List_4
    //     0x5dd708: stur            w16, [x0, #0x17]
    // 0x5dd70c: LoadField: r2 = r1->field_f
    //     0x5dd70c: ldur            w2, [x1, #0xf]
    // 0x5dd710: DecompressPointer r2
    //     0x5dd710: add             x2, x2, HEAP, lsl #32
    // 0x5dd714: StoreField: r0->field_1b = r2
    //     0x5dd714: stur            w2, [x0, #0x1b]
    // 0x5dd718: r16 = "address"
    //     0x5dd718: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x5dd71c: ldr             x16, [x16, #0x2a8]
    // 0x5dd720: StoreField: r0->field_1f = r16
    //     0x5dd720: stur            w16, [x0, #0x1f]
    // 0x5dd724: LoadField: r2 = r1->field_13
    //     0x5dd724: ldur            w2, [x1, #0x13]
    // 0x5dd728: DecompressPointer r2
    //     0x5dd728: add             x2, x2, HEAP, lsl #32
    // 0x5dd72c: StoreField: r0->field_23 = r2
    //     0x5dd72c: stur            w2, [x0, #0x23]
    // 0x5dd730: r16 = "trip_id"
    //     0x5dd730: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5dd734: ldr             x16, [x16, #0xbf0]
    // 0x5dd738: StoreField: r0->field_27 = r16
    //     0x5dd738: stur            w16, [x0, #0x27]
    // 0x5dd73c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5dd73c: ldur            w2, [x1, #0x17]
    // 0x5dd740: DecompressPointer r2
    //     0x5dd740: add             x2, x2, HEAP, lsl #32
    // 0x5dd744: StoreField: r0->field_2b = r2
    //     0x5dd744: stur            w2, [x0, #0x2b]
    // 0x5dd748: r16 = "agency_id"
    //     0x5dd748: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5dd74c: ldr             x16, [x16, #0x40]
    // 0x5dd750: StoreField: r0->field_2f = r16
    //     0x5dd750: stur            w16, [x0, #0x2f]
    // 0x5dd754: LoadField: r2 = r1->field_1b
    //     0x5dd754: ldur            w2, [x1, #0x1b]
    // 0x5dd758: DecompressPointer r2
    //     0x5dd758: add             x2, x2, HEAP, lsl #32
    // 0x5dd75c: StoreField: r0->field_33 = r2
    //     0x5dd75c: stur            w2, [x0, #0x33]
    // 0x5dd760: r16 = "capacity"
    //     0x5dd760: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5dd764: ldr             x16, [x16, #0x988]
    // 0x5dd768: StoreField: r0->field_37 = r16
    //     0x5dd768: stur            w16, [x0, #0x37]
    // 0x5dd76c: LoadField: r2 = r1->field_1f
    //     0x5dd76c: ldur            w2, [x1, #0x1f]
    // 0x5dd770: DecompressPointer r2
    //     0x5dd770: add             x2, x2, HEAP, lsl #32
    // 0x5dd774: StoreField: r0->field_3b = r2
    //     0x5dd774: stur            w2, [x0, #0x3b]
    // 0x5dd778: r16 = "created_at"
    //     0x5dd778: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5dd77c: ldr             x16, [x16, #0xc00]
    // 0x5dd780: StoreField: r0->field_3f = r16
    //     0x5dd780: stur            w16, [x0, #0x3f]
    // 0x5dd784: LoadField: r2 = r1->field_23
    //     0x5dd784: ldur            w2, [x1, #0x23]
    // 0x5dd788: DecompressPointer r2
    //     0x5dd788: add             x2, x2, HEAP, lsl #32
    // 0x5dd78c: cmp             w2, NULL
    // 0x5dd790: b.eq            #0x5dd7a8
    // 0x5dd794: LoadField: r1 = r2->field_b
    //     0x5dd794: ldur            x1, [x2, #0xb]
    // 0x5dd798: mov             x2, x1
    // 0x5dd79c: r1 = Null
    //     0x5dd79c: mov             x1, NULL
    // 0x5dd7a0: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x5dd7a0: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x5dd7a4: b               #0x5dd7ac
    // 0x5dd7a8: r0 = serverTimestamp()
    //     0x5dd7a8: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x5dd7ac: ldur            x2, [fp, #-0x10]
    // 0x5dd7b0: mov             x1, x2
    // 0x5dd7b4: ArrayStore: r1[13] = r0  ; List_4
    //     0x5dd7b4: add             x25, x1, #0x43
    //     0x5dd7b8: str             w0, [x25]
    //     0x5dd7bc: tbz             w0, #0, #0x5dd7d8
    //     0x5dd7c0: ldurb           w16, [x1, #-1]
    //     0x5dd7c4: ldurb           w17, [x0, #-1]
    //     0x5dd7c8: and             x16, x17, x16, lsr #2
    //     0x5dd7cc: tst             x16, HEAP, lsr #32
    //     0x5dd7d0: b.eq            #0x5dd7d8
    //     0x5dd7d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5dd7d8: r16 = "updated_at"
    //     0x5dd7d8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5dd7dc: ldr             x16, [x16, #0x58]
    // 0x5dd7e0: StoreField: r2->field_47 = r16
    //     0x5dd7e0: stur            w16, [x2, #0x47]
    // 0x5dd7e4: r0 = serverTimestamp()
    //     0x5dd7e4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x5dd7e8: ldur            x1, [fp, #-0x10]
    // 0x5dd7ec: ArrayStore: r1[15] = r0  ; List_4
    //     0x5dd7ec: add             x25, x1, #0x4b
    //     0x5dd7f0: str             w0, [x25]
    //     0x5dd7f4: tbz             w0, #0, #0x5dd810
    //     0x5dd7f8: ldurb           w16, [x1, #-1]
    //     0x5dd7fc: ldurb           w17, [x0, #-1]
    //     0x5dd800: and             x16, x17, x16, lsr #2
    //     0x5dd804: tst             x16, HEAP, lsr #32
    //     0x5dd808: b.eq            #0x5dd810
    //     0x5dd80c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5dd810: r16 = <String, dynamic>
    //     0x5dd810: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5dd814: ldur            lr, [fp, #-0x10]
    // 0x5dd818: stp             lr, x16, [SP]
    // 0x5dd81c: r0 = Map._fromLiteral()
    //     0x5dd81c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5dd820: LeaveFrame
    //     0x5dd820: mov             SP, fp
    //     0x5dd824: ldp             fp, lr, [SP], #0x10
    // 0x5dd828: ret
    //     0x5dd828: ret             
    // 0x5dd82c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dd82c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dd830: b               #0x5dd6d8
  }
  factory _ HotelModel.fromJson(/* No info */) {
    // ** addr: 0x5f2c8c, size: 0x588
    // 0x5f2c8c: EnterFrame
    //     0x5f2c8c: stp             fp, lr, [SP, #-0x10]!
    //     0x5f2c90: mov             fp, SP
    // 0x5f2c94: AllocStack(0x48)
    //     0x5f2c94: sub             SP, SP, #0x48
    // 0x5f2c98: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5f2c98: mov             x0, x2
    //     0x5f2c9c: stur            x2, [fp, #-8]
    // 0x5f2ca0: CheckStackOverflow
    //     0x5f2ca0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f2ca4: cmp             SP, x16
    //     0x5f2ca8: b.ls            #0x5f320c
    // 0x5f2cac: mov             x1, x0
    // 0x5f2cb0: r2 = "id"
    //     0x5f2cb0: add             x2, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x5f2cb4: ldr             x2, [x2, #0xae8]
    // 0x5f2cb8: r0 = _getValueOrData()
    //     0x5f2cb8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2cbc: ldur            x3, [fp, #-8]
    // 0x5f2cc0: LoadField: r1 = r3->field_f
    //     0x5f2cc0: ldur            w1, [x3, #0xf]
    // 0x5f2cc4: DecompressPointer r1
    //     0x5f2cc4: add             x1, x1, HEAP, lsl #32
    // 0x5f2cc8: cmp             w1, w0
    // 0x5f2ccc: b.ne            #0x5f2cd4
    // 0x5f2cd0: r0 = Null
    //     0x5f2cd0: mov             x0, NULL
    // 0x5f2cd4: cmp             w0, NULL
    // 0x5f2cd8: b.ne            #0x5f2ce4
    // 0x5f2cdc: r4 = ""
    //     0x5f2cdc: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2ce0: b               #0x5f2ce8
    // 0x5f2ce4: mov             x4, x0
    // 0x5f2ce8: mov             x0, x4
    // 0x5f2cec: stur            x4, [fp, #-0x10]
    // 0x5f2cf0: r2 = Null
    //     0x5f2cf0: mov             x2, NULL
    // 0x5f2cf4: r1 = Null
    //     0x5f2cf4: mov             x1, NULL
    // 0x5f2cf8: r4 = 60
    //     0x5f2cf8: mov             x4, #0x3c
    // 0x5f2cfc: branchIfSmi(r0, 0x5f2d08)
    //     0x5f2cfc: tbz             w0, #0, #0x5f2d08
    // 0x5f2d00: r4 = LoadClassIdInstr(r0)
    //     0x5f2d00: ldur            x4, [x0, #-1]
    //     0x5f2d04: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2d08: sub             x4, x4, #0x5e
    // 0x5f2d0c: cmp             x4, #1
    // 0x5f2d10: b.ls            #0x5f2d24
    // 0x5f2d14: r8 = String
    //     0x5f2d14: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2d18: r3 = Null
    //     0x5f2d18: add             x3, PP, #0x19, lsl #12  ; [pp+0x19f90] Null
    //     0x5f2d1c: ldr             x3, [x3, #0xf90]
    // 0x5f2d20: r0 = String()
    //     0x5f2d20: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2d24: ldur            x1, [fp, #-8]
    // 0x5f2d28: r2 = "name"
    //     0x5f2d28: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5f2d2c: r0 = _getValueOrData()
    //     0x5f2d2c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2d30: ldur            x3, [fp, #-8]
    // 0x5f2d34: LoadField: r1 = r3->field_f
    //     0x5f2d34: ldur            w1, [x3, #0xf]
    // 0x5f2d38: DecompressPointer r1
    //     0x5f2d38: add             x1, x1, HEAP, lsl #32
    // 0x5f2d3c: cmp             w1, w0
    // 0x5f2d40: b.ne            #0x5f2d48
    // 0x5f2d44: r0 = Null
    //     0x5f2d44: mov             x0, NULL
    // 0x5f2d48: cmp             w0, NULL
    // 0x5f2d4c: b.ne            #0x5f2d58
    // 0x5f2d50: r4 = ""
    //     0x5f2d50: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2d54: b               #0x5f2d5c
    // 0x5f2d58: mov             x4, x0
    // 0x5f2d5c: mov             x0, x4
    // 0x5f2d60: stur            x4, [fp, #-0x18]
    // 0x5f2d64: r2 = Null
    //     0x5f2d64: mov             x2, NULL
    // 0x5f2d68: r1 = Null
    //     0x5f2d68: mov             x1, NULL
    // 0x5f2d6c: r4 = 60
    //     0x5f2d6c: mov             x4, #0x3c
    // 0x5f2d70: branchIfSmi(r0, 0x5f2d7c)
    //     0x5f2d70: tbz             w0, #0, #0x5f2d7c
    // 0x5f2d74: r4 = LoadClassIdInstr(r0)
    //     0x5f2d74: ldur            x4, [x0, #-1]
    //     0x5f2d78: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2d7c: sub             x4, x4, #0x5e
    // 0x5f2d80: cmp             x4, #1
    // 0x5f2d84: b.ls            #0x5f2d98
    // 0x5f2d88: r8 = String
    //     0x5f2d88: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2d8c: r3 = Null
    //     0x5f2d8c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fa0] Null
    //     0x5f2d90: ldr             x3, [x3, #0xfa0]
    // 0x5f2d94: r0 = String()
    //     0x5f2d94: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2d98: ldur            x1, [fp, #-8]
    // 0x5f2d9c: r2 = "city"
    //     0x5f2d9c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14980] "city"
    //     0x5f2da0: ldr             x2, [x2, #0x980]
    // 0x5f2da4: r0 = _getValueOrData()
    //     0x5f2da4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2da8: ldur            x3, [fp, #-8]
    // 0x5f2dac: LoadField: r1 = r3->field_f
    //     0x5f2dac: ldur            w1, [x3, #0xf]
    // 0x5f2db0: DecompressPointer r1
    //     0x5f2db0: add             x1, x1, HEAP, lsl #32
    // 0x5f2db4: cmp             w1, w0
    // 0x5f2db8: b.ne            #0x5f2dc0
    // 0x5f2dbc: r0 = Null
    //     0x5f2dbc: mov             x0, NULL
    // 0x5f2dc0: cmp             w0, NULL
    // 0x5f2dc4: b.ne            #0x5f2dd0
    // 0x5f2dc8: r4 = ""
    //     0x5f2dc8: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2dcc: b               #0x5f2dd4
    // 0x5f2dd0: mov             x4, x0
    // 0x5f2dd4: mov             x0, x4
    // 0x5f2dd8: stur            x4, [fp, #-0x20]
    // 0x5f2ddc: r2 = Null
    //     0x5f2ddc: mov             x2, NULL
    // 0x5f2de0: r1 = Null
    //     0x5f2de0: mov             x1, NULL
    // 0x5f2de4: r4 = 60
    //     0x5f2de4: mov             x4, #0x3c
    // 0x5f2de8: branchIfSmi(r0, 0x5f2df4)
    //     0x5f2de8: tbz             w0, #0, #0x5f2df4
    // 0x5f2dec: r4 = LoadClassIdInstr(r0)
    //     0x5f2dec: ldur            x4, [x0, #-1]
    //     0x5f2df0: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2df4: sub             x4, x4, #0x5e
    // 0x5f2df8: cmp             x4, #1
    // 0x5f2dfc: b.ls            #0x5f2e10
    // 0x5f2e00: r8 = String
    //     0x5f2e00: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2e04: r3 = Null
    //     0x5f2e04: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fb0] Null
    //     0x5f2e08: ldr             x3, [x3, #0xfb0]
    // 0x5f2e0c: r0 = String()
    //     0x5f2e0c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2e10: ldur            x1, [fp, #-8]
    // 0x5f2e14: r2 = "address"
    //     0x5f2e14: add             x2, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x5f2e18: ldr             x2, [x2, #0x2a8]
    // 0x5f2e1c: r0 = _getValueOrData()
    //     0x5f2e1c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2e20: ldur            x3, [fp, #-8]
    // 0x5f2e24: LoadField: r1 = r3->field_f
    //     0x5f2e24: ldur            w1, [x3, #0xf]
    // 0x5f2e28: DecompressPointer r1
    //     0x5f2e28: add             x1, x1, HEAP, lsl #32
    // 0x5f2e2c: cmp             w1, w0
    // 0x5f2e30: b.ne            #0x5f2e38
    // 0x5f2e34: r0 = Null
    //     0x5f2e34: mov             x0, NULL
    // 0x5f2e38: cmp             w0, NULL
    // 0x5f2e3c: b.ne            #0x5f2e48
    // 0x5f2e40: r4 = ""
    //     0x5f2e40: ldr             x4, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5f2e44: b               #0x5f2e4c
    // 0x5f2e48: mov             x4, x0
    // 0x5f2e4c: mov             x0, x4
    // 0x5f2e50: stur            x4, [fp, #-0x28]
    // 0x5f2e54: r2 = Null
    //     0x5f2e54: mov             x2, NULL
    // 0x5f2e58: r1 = Null
    //     0x5f2e58: mov             x1, NULL
    // 0x5f2e5c: r4 = 60
    //     0x5f2e5c: mov             x4, #0x3c
    // 0x5f2e60: branchIfSmi(r0, 0x5f2e6c)
    //     0x5f2e60: tbz             w0, #0, #0x5f2e6c
    // 0x5f2e64: r4 = LoadClassIdInstr(r0)
    //     0x5f2e64: ldur            x4, [x0, #-1]
    //     0x5f2e68: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2e6c: sub             x4, x4, #0x5e
    // 0x5f2e70: cmp             x4, #1
    // 0x5f2e74: b.ls            #0x5f2e88
    // 0x5f2e78: r8 = String
    //     0x5f2e78: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f2e7c: r3 = Null
    //     0x5f2e7c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fc0] Null
    //     0x5f2e80: ldr             x3, [x3, #0xfc0]
    // 0x5f2e84: r0 = String()
    //     0x5f2e84: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f2e88: ldur            x1, [fp, #-8]
    // 0x5f2e8c: r2 = "trip_id"
    //     0x5f2e8c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5f2e90: ldr             x2, [x2, #0xbf0]
    // 0x5f2e94: r0 = _getValueOrData()
    //     0x5f2e94: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2e98: ldur            x3, [fp, #-8]
    // 0x5f2e9c: LoadField: r1 = r3->field_f
    //     0x5f2e9c: ldur            w1, [x3, #0xf]
    // 0x5f2ea0: DecompressPointer r1
    //     0x5f2ea0: add             x1, x1, HEAP, lsl #32
    // 0x5f2ea4: cmp             w1, w0
    // 0x5f2ea8: b.ne            #0x5f2eb4
    // 0x5f2eac: r4 = Null
    //     0x5f2eac: mov             x4, NULL
    // 0x5f2eb0: b               #0x5f2eb8
    // 0x5f2eb4: mov             x4, x0
    // 0x5f2eb8: mov             x0, x4
    // 0x5f2ebc: stur            x4, [fp, #-0x30]
    // 0x5f2ec0: r2 = Null
    //     0x5f2ec0: mov             x2, NULL
    // 0x5f2ec4: r1 = Null
    //     0x5f2ec4: mov             x1, NULL
    // 0x5f2ec8: r4 = 60
    //     0x5f2ec8: mov             x4, #0x3c
    // 0x5f2ecc: branchIfSmi(r0, 0x5f2ed8)
    //     0x5f2ecc: tbz             w0, #0, #0x5f2ed8
    // 0x5f2ed0: r4 = LoadClassIdInstr(r0)
    //     0x5f2ed0: ldur            x4, [x0, #-1]
    //     0x5f2ed4: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2ed8: sub             x4, x4, #0x5e
    // 0x5f2edc: cmp             x4, #1
    // 0x5f2ee0: b.ls            #0x5f2ef4
    // 0x5f2ee4: r8 = String?
    //     0x5f2ee4: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f2ee8: r3 = Null
    //     0x5f2ee8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fd0] Null
    //     0x5f2eec: ldr             x3, [x3, #0xfd0]
    // 0x5f2ef0: r0 = String?()
    //     0x5f2ef0: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f2ef4: ldur            x1, [fp, #-8]
    // 0x5f2ef8: r2 = "agency_id"
    //     0x5f2ef8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5f2efc: ldr             x2, [x2, #0x40]
    // 0x5f2f00: r0 = _getValueOrData()
    //     0x5f2f00: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2f04: ldur            x3, [fp, #-8]
    // 0x5f2f08: LoadField: r1 = r3->field_f
    //     0x5f2f08: ldur            w1, [x3, #0xf]
    // 0x5f2f0c: DecompressPointer r1
    //     0x5f2f0c: add             x1, x1, HEAP, lsl #32
    // 0x5f2f10: cmp             w1, w0
    // 0x5f2f14: b.ne            #0x5f2f20
    // 0x5f2f18: r4 = Null
    //     0x5f2f18: mov             x4, NULL
    // 0x5f2f1c: b               #0x5f2f24
    // 0x5f2f20: mov             x4, x0
    // 0x5f2f24: mov             x0, x4
    // 0x5f2f28: stur            x4, [fp, #-0x38]
    // 0x5f2f2c: r2 = Null
    //     0x5f2f2c: mov             x2, NULL
    // 0x5f2f30: r1 = Null
    //     0x5f2f30: mov             x1, NULL
    // 0x5f2f34: r4 = 60
    //     0x5f2f34: mov             x4, #0x3c
    // 0x5f2f38: branchIfSmi(r0, 0x5f2f44)
    //     0x5f2f38: tbz             w0, #0, #0x5f2f44
    // 0x5f2f3c: r4 = LoadClassIdInstr(r0)
    //     0x5f2f3c: ldur            x4, [x0, #-1]
    //     0x5f2f40: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2f44: sub             x4, x4, #0x5e
    // 0x5f2f48: cmp             x4, #1
    // 0x5f2f4c: b.ls            #0x5f2f60
    // 0x5f2f50: r8 = String?
    //     0x5f2f50: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5f2f54: r3 = Null
    //     0x5f2f54: add             x3, PP, #0x19, lsl #12  ; [pp+0x19fe0] Null
    //     0x5f2f58: ldr             x3, [x3, #0xfe0]
    // 0x5f2f5c: r0 = String?()
    //     0x5f2f5c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5f2f60: ldur            x1, [fp, #-8]
    // 0x5f2f64: r2 = "capacity"
    //     0x5f2f64: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5f2f68: ldr             x2, [x2, #0x988]
    // 0x5f2f6c: r0 = _getValueOrData()
    //     0x5f2f6c: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2f70: mov             x1, x0
    // 0x5f2f74: ldur            x0, [fp, #-8]
    // 0x5f2f78: LoadField: r2 = r0->field_f
    //     0x5f2f78: ldur            w2, [x0, #0xf]
    // 0x5f2f7c: DecompressPointer r2
    //     0x5f2f7c: add             x2, x2, HEAP, lsl #32
    // 0x5f2f80: cmp             w2, w1
    // 0x5f2f84: b.ne            #0x5f2f8c
    // 0x5f2f88: r1 = Null
    //     0x5f2f88: mov             x1, NULL
    // 0x5f2f8c: r2 = 60
    //     0x5f2f8c: mov             x2, #0x3c
    // 0x5f2f90: branchIfSmi(r1, 0x5f2f9c)
    //     0x5f2f90: tbz             w1, #0, #0x5f2f9c
    // 0x5f2f94: r2 = LoadClassIdInstr(r1)
    //     0x5f2f94: ldur            x2, [x1, #-1]
    //     0x5f2f98: ubfx            x2, x2, #0xc, #0x14
    // 0x5f2f9c: sub             x16, x2, #0x3c
    // 0x5f2fa0: cmp             x16, #1
    // 0x5f2fa4: b.hi            #0x5f3018
    // 0x5f2fa8: mov             x1, x0
    // 0x5f2fac: r2 = "capacity"
    //     0x5f2fac: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x5f2fb0: ldr             x2, [x2, #0x988]
    // 0x5f2fb4: r0 = _getValueOrData()
    //     0x5f2fb4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f2fb8: ldur            x3, [fp, #-8]
    // 0x5f2fbc: LoadField: r1 = r3->field_f
    //     0x5f2fbc: ldur            w1, [x3, #0xf]
    // 0x5f2fc0: DecompressPointer r1
    //     0x5f2fc0: add             x1, x1, HEAP, lsl #32
    // 0x5f2fc4: cmp             w1, w0
    // 0x5f2fc8: b.ne            #0x5f2fd4
    // 0x5f2fcc: r4 = Null
    //     0x5f2fcc: mov             x4, NULL
    // 0x5f2fd0: b               #0x5f2fd8
    // 0x5f2fd4: mov             x4, x0
    // 0x5f2fd8: mov             x0, x4
    // 0x5f2fdc: stur            x4, [fp, #-0x40]
    // 0x5f2fe0: r2 = Null
    //     0x5f2fe0: mov             x2, NULL
    // 0x5f2fe4: r1 = Null
    //     0x5f2fe4: mov             x1, NULL
    // 0x5f2fe8: branchIfSmi(r0, 0x5f3010)
    //     0x5f2fe8: tbz             w0, #0, #0x5f3010
    // 0x5f2fec: r4 = LoadClassIdInstr(r0)
    //     0x5f2fec: ldur            x4, [x0, #-1]
    //     0x5f2ff0: ubfx            x4, x4, #0xc, #0x14
    // 0x5f2ff4: sub             x4, x4, #0x3c
    // 0x5f2ff8: cmp             x4, #1
    // 0x5f2ffc: b.ls            #0x5f3010
    // 0x5f3000: r8 = int
    //     0x5f3000: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x5f3004: r3 = Null
    //     0x5f3004: add             x3, PP, #0x19, lsl #12  ; [pp+0x19ff0] Null
    //     0x5f3008: ldr             x3, [x3, #0xff0]
    // 0x5f300c: r0 = int()
    //     0x5f300c: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x5f3010: ldur            x3, [fp, #-0x40]
    // 0x5f3014: b               #0x5f301c
    // 0x5f3018: r3 = Null
    //     0x5f3018: mov             x3, NULL
    // 0x5f301c: ldur            x0, [fp, #-8]
    // 0x5f3020: mov             x1, x0
    // 0x5f3024: stur            x3, [fp, #-0x40]
    // 0x5f3028: r2 = "created_at"
    //     0x5f3028: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f302c: ldr             x2, [x2, #0xc00]
    // 0x5f3030: r0 = _getValueOrData()
    //     0x5f3030: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3034: mov             x1, x0
    // 0x5f3038: ldur            x0, [fp, #-8]
    // 0x5f303c: LoadField: r2 = r0->field_f
    //     0x5f303c: ldur            w2, [x0, #0xf]
    // 0x5f3040: DecompressPointer r2
    //     0x5f3040: add             x2, x2, HEAP, lsl #32
    // 0x5f3044: cmp             w2, w1
    // 0x5f3048: b.eq            #0x5f30d0
    // 0x5f304c: cmp             w1, NULL
    // 0x5f3050: b.eq            #0x5f30d0
    // 0x5f3054: mov             x1, x0
    // 0x5f3058: r2 = "created_at"
    //     0x5f3058: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5f305c: ldr             x2, [x2, #0xc00]
    // 0x5f3060: r0 = _getValueOrData()
    //     0x5f3060: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f3064: ldur            x3, [fp, #-8]
    // 0x5f3068: LoadField: r1 = r3->field_f
    //     0x5f3068: ldur            w1, [x3, #0xf]
    // 0x5f306c: DecompressPointer r1
    //     0x5f306c: add             x1, x1, HEAP, lsl #32
    // 0x5f3070: cmp             w1, w0
    // 0x5f3074: b.ne            #0x5f3080
    // 0x5f3078: r4 = Null
    //     0x5f3078: mov             x4, NULL
    // 0x5f307c: b               #0x5f3084
    // 0x5f3080: mov             x4, x0
    // 0x5f3084: mov             x0, x4
    // 0x5f3088: stur            x4, [fp, #-0x48]
    // 0x5f308c: r2 = Null
    //     0x5f308c: mov             x2, NULL
    // 0x5f3090: r1 = Null
    //     0x5f3090: mov             x1, NULL
    // 0x5f3094: r4 = 60
    //     0x5f3094: mov             x4, #0x3c
    // 0x5f3098: branchIfSmi(r0, 0x5f30a4)
    //     0x5f3098: tbz             w0, #0, #0x5f30a4
    // 0x5f309c: r4 = LoadClassIdInstr(r0)
    //     0x5f309c: ldur            x4, [x0, #-1]
    //     0x5f30a0: ubfx            x4, x4, #0xc, #0x14
    // 0x5f30a4: sub             x4, x4, #0x5e
    // 0x5f30a8: cmp             x4, #1
    // 0x5f30ac: b.ls            #0x5f30c0
    // 0x5f30b0: r8 = String
    //     0x5f30b0: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f30b4: r3 = Null
    //     0x5f30b4: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a000] Null
    //     0x5f30b8: ldr             x3, [x3]
    // 0x5f30bc: r0 = String()
    //     0x5f30bc: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f30c0: ldur            x1, [fp, #-0x48]
    // 0x5f30c4: r0 = parse()
    //     0x5f30c4: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f30c8: mov             x3, x0
    // 0x5f30cc: b               #0x5f30d4
    // 0x5f30d0: r3 = Null
    //     0x5f30d0: mov             x3, NULL
    // 0x5f30d4: ldur            x0, [fp, #-8]
    // 0x5f30d8: mov             x1, x0
    // 0x5f30dc: stur            x3, [fp, #-0x48]
    // 0x5f30e0: r2 = "updated_at"
    //     0x5f30e0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f30e4: ldr             x2, [x2, #0x58]
    // 0x5f30e8: r0 = _getValueOrData()
    //     0x5f30e8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f30ec: mov             x1, x0
    // 0x5f30f0: ldur            x0, [fp, #-8]
    // 0x5f30f4: LoadField: r2 = r0->field_f
    //     0x5f30f4: ldur            w2, [x0, #0xf]
    // 0x5f30f8: DecompressPointer r2
    //     0x5f30f8: add             x2, x2, HEAP, lsl #32
    // 0x5f30fc: cmp             w2, w1
    // 0x5f3100: b.eq            #0x5f318c
    // 0x5f3104: cmp             w1, NULL
    // 0x5f3108: b.eq            #0x5f318c
    // 0x5f310c: mov             x1, x0
    // 0x5f3110: r2 = "updated_at"
    //     0x5f3110: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5f3114: ldr             x2, [x2, #0x58]
    // 0x5f3118: r0 = _getValueOrData()
    //     0x5f3118: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5f311c: mov             x1, x0
    // 0x5f3120: ldur            x0, [fp, #-8]
    // 0x5f3124: LoadField: r2 = r0->field_f
    //     0x5f3124: ldur            w2, [x0, #0xf]
    // 0x5f3128: DecompressPointer r2
    //     0x5f3128: add             x2, x2, HEAP, lsl #32
    // 0x5f312c: cmp             w2, w1
    // 0x5f3130: b.ne            #0x5f313c
    // 0x5f3134: r3 = Null
    //     0x5f3134: mov             x3, NULL
    // 0x5f3138: b               #0x5f3140
    // 0x5f313c: mov             x3, x1
    // 0x5f3140: mov             x0, x3
    // 0x5f3144: stur            x3, [fp, #-8]
    // 0x5f3148: r2 = Null
    //     0x5f3148: mov             x2, NULL
    // 0x5f314c: r1 = Null
    //     0x5f314c: mov             x1, NULL
    // 0x5f3150: r4 = 60
    //     0x5f3150: mov             x4, #0x3c
    // 0x5f3154: branchIfSmi(r0, 0x5f3160)
    //     0x5f3154: tbz             w0, #0, #0x5f3160
    // 0x5f3158: r4 = LoadClassIdInstr(r0)
    //     0x5f3158: ldur            x4, [x0, #-1]
    //     0x5f315c: ubfx            x4, x4, #0xc, #0x14
    // 0x5f3160: sub             x4, x4, #0x5e
    // 0x5f3164: cmp             x4, #1
    // 0x5f3168: b.ls            #0x5f317c
    // 0x5f316c: r8 = String
    //     0x5f316c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5f3170: r3 = Null
    //     0x5f3170: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a010] Null
    //     0x5f3174: ldr             x3, [x3, #0x10]
    // 0x5f3178: r0 = String()
    //     0x5f3178: bl              #0x939a58  ; IsType_String_Stub
    // 0x5f317c: ldur            x1, [fp, #-8]
    // 0x5f3180: r0 = parse()
    //     0x5f3180: bl              #0x5f4d60  ; [dart:core] DateTime::parse
    // 0x5f3184: mov             x8, x0
    // 0x5f3188: b               #0x5f3190
    // 0x5f318c: r8 = Null
    //     0x5f318c: mov             x8, NULL
    // 0x5f3190: ldur            x7, [fp, #-0x10]
    // 0x5f3194: ldur            x6, [fp, #-0x18]
    // 0x5f3198: ldur            x5, [fp, #-0x20]
    // 0x5f319c: ldur            x4, [fp, #-0x28]
    // 0x5f31a0: ldur            x1, [fp, #-0x40]
    // 0x5f31a4: ldur            x0, [fp, #-0x48]
    // 0x5f31a8: ldur            x3, [fp, #-0x30]
    // 0x5f31ac: ldur            x2, [fp, #-0x38]
    // 0x5f31b0: stur            x8, [fp, #-8]
    // 0x5f31b4: r0 = HotelModel()
    //     0x5f31b4: bl              #0x5d9bb4  ; AllocateHotelModelStub -> HotelModel (size=0x2c)
    // 0x5f31b8: ldur            x1, [fp, #-0x10]
    // 0x5f31bc: StoreField: r0->field_7 = r1
    //     0x5f31bc: stur            w1, [x0, #7]
    // 0x5f31c0: ldur            x1, [fp, #-0x18]
    // 0x5f31c4: StoreField: r0->field_b = r1
    //     0x5f31c4: stur            w1, [x0, #0xb]
    // 0x5f31c8: ldur            x1, [fp, #-0x20]
    // 0x5f31cc: StoreField: r0->field_f = r1
    //     0x5f31cc: stur            w1, [x0, #0xf]
    // 0x5f31d0: ldur            x1, [fp, #-0x28]
    // 0x5f31d4: StoreField: r0->field_13 = r1
    //     0x5f31d4: stur            w1, [x0, #0x13]
    // 0x5f31d8: ldur            x1, [fp, #-0x30]
    // 0x5f31dc: ArrayStore: r0[0] = r1  ; List_4
    //     0x5f31dc: stur            w1, [x0, #0x17]
    // 0x5f31e0: ldur            x1, [fp, #-0x38]
    // 0x5f31e4: StoreField: r0->field_1b = r1
    //     0x5f31e4: stur            w1, [x0, #0x1b]
    // 0x5f31e8: ldur            x1, [fp, #-0x40]
    // 0x5f31ec: StoreField: r0->field_1f = r1
    //     0x5f31ec: stur            w1, [x0, #0x1f]
    // 0x5f31f0: ldur            x1, [fp, #-0x48]
    // 0x5f31f4: StoreField: r0->field_23 = r1
    //     0x5f31f4: stur            w1, [x0, #0x23]
    // 0x5f31f8: ldur            x1, [fp, #-8]
    // 0x5f31fc: StoreField: r0->field_27 = r1
    //     0x5f31fc: stur            w1, [x0, #0x27]
    // 0x5f3200: LeaveFrame
    //     0x5f3200: mov             SP, fp
    //     0x5f3204: ldp             fp, lr, [SP], #0x10
    // 0x5f3208: ret
    //     0x5f3208: ret             
    // 0x5f320c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f320c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f3210: b               #0x5f2cac
  }
}
