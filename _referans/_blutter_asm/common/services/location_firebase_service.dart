// lib: , url: package:umrem_demo/common/services/location_firebase_service.dart

// class id: 1049491, size: 0x8
class :: {
}

// class id: 216, size: 0x8, field offset: 0x8
abstract class LocationFirebaseService extends Object {

  static late final DatabaseReference _baseRef; // offset: 0xfd0

  static _ removeUserLocation(/* No info */) async {
    // ** addr: 0x6d0424, size: 0x94
    // 0x6d0424: EnterFrame
    //     0x6d0424: stp             fp, lr, [SP, #-0x10]!
    //     0x6d0428: mov             fp, SP
    // 0x6d042c: AllocStack(0x58)
    //     0x6d042c: sub             SP, SP, #0x58
    // 0x6d0430: SetupParameters(dynamic _ /* r1 => r2, fp-0x50 */)
    //     0x6d0430: stur            NULL, [fp, #-8]
    //     0x6d0434: mov             x2, x1
    //     0x6d0438: stur            x1, [fp, #-0x50]
    // 0x6d043c: CheckStackOverflow
    //     0x6d043c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d0440: cmp             SP, x16
    //     0x6d0444: b.ls            #0x6d04b0
    // 0x6d0448: InitAsync() -> Future<void?>
    //     0x6d0448: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d044c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d0450: ldur            x2, [fp, #-0x50]
    // 0x6d0454: LoadField: r0 = r2->field_7
    //     0x6d0454: ldur            w0, [x2, #7]
    // 0x6d0458: cbnz            w0, #0x6d0464
    // 0x6d045c: r0 = Null
    //     0x6d045c: mov             x0, NULL
    // 0x6d0460: r0 = ReturnAsyncNotFuture()
    //     0x6d0460: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d0464: r0 = InitLateStaticField(0xfd0) // [package:umrem_demo/common/services/location_firebase_service.dart] LocationFirebaseService::_baseRef
    //     0x6d0464: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6d0468: ldr             x0, [x0, #0x1fa0]
    //     0x6d046c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6d0470: cmp             w0, w16
    //     0x6d0474: b.ne            #0x6d0480
    //     0x6d0478: ldr             x2, [PP, #0xb0]  ; [pp+0xb0] Field <LocationFirebaseService._baseRef@945011065>: static late final (offset: 0xfd0)
    //     0x6d047c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6d0480: mov             x1, x0
    // 0x6d0484: ldur            x2, [fp, #-0x50]
    // 0x6d0488: r0 = child()
    //     0x6d0488: bl              #0x5e2f94  ; [package:firebase_database/firebase_database.dart] DatabaseReference::child
    // 0x6d048c: mov             x1, x0
    // 0x6d0490: r0 = set()
    //     0x6d0490: bl              #0x6d04b8  ; [package:firebase_database/firebase_database.dart] DatabaseReference::set
    // 0x6d0494: mov             x1, x0
    // 0x6d0498: stur            x1, [fp, #-0x58]
    // 0x6d049c: r0 = Await()
    //     0x6d049c: bl              #0x3dd188  ; AwaitStub
    // 0x6d04a0: b               #0x6d04a8
    // 0x6d04a4: sub             SP, fp, #0x58
    // 0x6d04a8: r0 = Null
    //     0x6d04a8: mov             x0, NULL
    // 0x6d04ac: r0 = ReturnAsyncNotFuture()
    //     0x6d04ac: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d04b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d04b0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d04b4: b               #0x6d0448
  }
  static DatabaseReference _baseRef() {
    // ** addr: 0x6d093c, size: 0x44
    // 0x6d093c: EnterFrame
    //     0x6d093c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d0940: mov             fp, SP
    // 0x6d0944: CheckStackOverflow
    //     0x6d0944: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d0948: cmp             SP, x16
    //     0x6d094c: b.ls            #0x6d0978
    // 0x6d0950: r4 = const [0, 0, 0, 0, null]
    //     0x6d0950: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x6d0954: r0 = app()
    //     0x6d0954: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x6d0958: mov             x1, x0
    // 0x6d095c: r0 = instanceFor()
    //     0x6d095c: bl              #0x5e81b4  ; [package:firebase_database/firebase_database.dart] FirebaseDatabase::instanceFor
    // 0x6d0960: mov             x1, x0
    // 0x6d0964: r2 = "locations"
    //     0x6d0964: ldr             x2, [PP, #0x1610]  ; [pp+0x1610] "locations"
    // 0x6d0968: r0 = ref()
    //     0x6d0968: bl              #0x5e7874  ; [package:firebase_database/firebase_database.dart] FirebaseDatabase::ref
    // 0x6d096c: LeaveFrame
    //     0x6d096c: mov             SP, fp
    //     0x6d0970: ldp             fp, lr, [SP], #0x10
    // 0x6d0974: ret
    //     0x6d0974: ret             
    // 0x6d0978: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d0978: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d097c: b               #0x6d0950
  }
  static _ updateUserLocation(/* No info */) async {
    // ** addr: 0x92b328, size: 0x2b0
    // 0x92b328: EnterFrame
    //     0x92b328: stp             fp, lr, [SP, #-0x10]!
    //     0x92b32c: mov             fp, SP
    // 0x92b330: AllocStack(0x28)
    //     0x92b330: sub             SP, SP, #0x28
    // 0x92b334: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */)
    //     0x92b334: stur            NULL, [fp, #-8]
    //     0x92b338: stur            x1, [fp, #-0x10]
    // 0x92b33c: CheckStackOverflow
    //     0x92b33c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92b340: cmp             SP, x16
    //     0x92b344: b.ls            #0x92b570
    // 0x92b348: InitAsync() -> Future<void?>
    //     0x92b348: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x92b34c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92b350: r0 = getToken()
    //     0x92b350: bl              #0x92bccc  ; [package:umrem_demo/common/services/token_service.dart] TokenService::getToken
    // 0x92b354: mov             x1, x0
    // 0x92b358: stur            x1, [fp, #-0x18]
    // 0x92b35c: r0 = Await()
    //     0x92b35c: bl              #0x3dd188  ; AwaitStub
    // 0x92b360: stur            x0, [fp, #-0x18]
    // 0x92b364: cmp             w0, NULL
    // 0x92b368: b.eq            #0x92b378
    // 0x92b36c: str             x0, [SP]
    // 0x92b370: r0 = isEmpty()
    //     0x92b370: bl              #0x3d2b28  ; [dart:core] _StringBase::isEmpty
    // 0x92b374: tbnz            w0, #4, #0x92b380
    // 0x92b378: r0 = Null
    //     0x92b378: mov             x0, NULL
    // 0x92b37c: r0 = ReturnAsyncNotFuture()
    //     0x92b37c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92b380: ldur            x0, [fp, #-0x10]
    // 0x92b384: r0 = InitLateStaticField(0xfd0) // [package:umrem_demo/common/services/location_firebase_service.dart] LocationFirebaseService::_baseRef
    //     0x92b384: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x92b388: ldr             x0, [x0, #0x1fa0]
    //     0x92b38c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x92b390: cmp             w0, w16
    //     0x92b394: b.ne            #0x92b3a0
    //     0x92b398: ldr             x2, [PP, #0xb0]  ; [pp+0xb0] Field <LocationFirebaseService._baseRef@945011065>: static late final (offset: 0xfd0)
    //     0x92b39c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x92b3a0: mov             x1, x0
    // 0x92b3a4: ldur            x2, [fp, #-0x18]
    // 0x92b3a8: r0 = child()
    //     0x92b3a8: bl              #0x5e2f94  ; [package:firebase_database/firebase_database.dart] DatabaseReference::child
    // 0x92b3ac: r1 = Null
    //     0x92b3ac: mov             x1, NULL
    // 0x92b3b0: r2 = 20
    //     0x92b3b0: mov             x2, #0x14
    // 0x92b3b4: stur            x0, [fp, #-0x18]
    // 0x92b3b8: r0 = AllocateArray()
    //     0x92b3b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x92b3bc: mov             x2, x0
    // 0x92b3c0: r16 = "latitude"
    //     0x92b3c0: ldr             x16, [PP, #0xb8]  ; [pp+0xb8] "latitude"
    // 0x92b3c4: StoreField: r2->field_f = r16
    //     0x92b3c4: stur            w16, [x2, #0xf]
    // 0x92b3c8: ldur            x3, [fp, #-0x10]
    // 0x92b3cc: LoadField: d0 = r3->field_7
    //     0x92b3cc: ldur            d0, [x3, #7]
    // 0x92b3d0: r0 = inline_Allocate_Double()
    //     0x92b3d0: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x92b3d4: add             x0, x0, #0x10
    //     0x92b3d8: cmp             x1, x0
    //     0x92b3dc: b.ls            #0x92b578
    //     0x92b3e0: str             x0, [THR, #0x60]  ; THR::top
    //     0x92b3e4: sub             x0, x0, #0xf
    //     0x92b3e8: mov             x1, #0xe15c
    //     0x92b3ec: movk            x1, #3, lsl #16
    //     0x92b3f0: stur            x1, [x0, #-1]
    // 0x92b3f4: StoreField: r0->field_7 = d0
    //     0x92b3f4: stur            d0, [x0, #7]
    // 0x92b3f8: mov             x1, x2
    // 0x92b3fc: ArrayStore: r1[1] = r0  ; List_4
    //     0x92b3fc: add             x25, x1, #0x13
    //     0x92b400: str             w0, [x25]
    //     0x92b404: tbz             w0, #0, #0x92b420
    //     0x92b408: ldurb           w16, [x1, #-1]
    //     0x92b40c: ldurb           w17, [x0, #-1]
    //     0x92b410: and             x16, x17, x16, lsr #2
    //     0x92b414: tst             x16, HEAP, lsr #32
    //     0x92b418: b.eq            #0x92b420
    //     0x92b41c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x92b420: r16 = "longitude"
    //     0x92b420: ldr             x16, [PP, #0xc0]  ; [pp+0xc0] "longitude"
    // 0x92b424: ArrayStore: r2[0] = r16  ; List_4
    //     0x92b424: stur            w16, [x2, #0x17]
    // 0x92b428: LoadField: d0 = r3->field_f
    //     0x92b428: ldur            d0, [x3, #0xf]
    // 0x92b42c: r0 = inline_Allocate_Double()
    //     0x92b42c: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x92b430: add             x0, x0, #0x10
    //     0x92b434: cmp             x1, x0
    //     0x92b438: b.ls            #0x92b590
    //     0x92b43c: str             x0, [THR, #0x60]  ; THR::top
    //     0x92b440: sub             x0, x0, #0xf
    //     0x92b444: mov             x1, #0xe15c
    //     0x92b448: movk            x1, #3, lsl #16
    //     0x92b44c: stur            x1, [x0, #-1]
    // 0x92b450: StoreField: r0->field_7 = d0
    //     0x92b450: stur            d0, [x0, #7]
    // 0x92b454: mov             x1, x2
    // 0x92b458: ArrayStore: r1[3] = r0  ; List_4
    //     0x92b458: add             x25, x1, #0x1b
    //     0x92b45c: str             w0, [x25]
    //     0x92b460: tbz             w0, #0, #0x92b47c
    //     0x92b464: ldurb           w16, [x1, #-1]
    //     0x92b468: ldurb           w17, [x0, #-1]
    //     0x92b46c: and             x16, x17, x16, lsr #2
    //     0x92b470: tst             x16, HEAP, lsr #32
    //     0x92b474: b.eq            #0x92b47c
    //     0x92b478: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x92b47c: r16 = "accuracy"
    //     0x92b47c: ldr             x16, [PP, #0xc8]  ; [pp+0xc8] "accuracy"
    // 0x92b480: StoreField: r2->field_1f = r16
    //     0x92b480: stur            w16, [x2, #0x1f]
    // 0x92b484: LoadField: d0 = r3->field_2b
    //     0x92b484: ldur            d0, [x3, #0x2b]
    // 0x92b488: r0 = inline_Allocate_Double()
    //     0x92b488: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x92b48c: add             x0, x0, #0x10
    //     0x92b490: cmp             x1, x0
    //     0x92b494: b.ls            #0x92b5a8
    //     0x92b498: str             x0, [THR, #0x60]  ; THR::top
    //     0x92b49c: sub             x0, x0, #0xf
    //     0x92b4a0: mov             x1, #0xe15c
    //     0x92b4a4: movk            x1, #3, lsl #16
    //     0x92b4a8: stur            x1, [x0, #-1]
    // 0x92b4ac: StoreField: r0->field_7 = d0
    //     0x92b4ac: stur            d0, [x0, #7]
    // 0x92b4b0: mov             x1, x2
    // 0x92b4b4: ArrayStore: r1[5] = r0  ; List_4
    //     0x92b4b4: add             x25, x1, #0x23
    //     0x92b4b8: str             w0, [x25]
    //     0x92b4bc: tbz             w0, #0, #0x92b4d8
    //     0x92b4c0: ldurb           w16, [x1, #-1]
    //     0x92b4c4: ldurb           w17, [x0, #-1]
    //     0x92b4c8: and             x16, x17, x16, lsr #2
    //     0x92b4cc: tst             x16, HEAP, lsr #32
    //     0x92b4d0: b.eq            #0x92b4d8
    //     0x92b4d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x92b4d8: r16 = "speed"
    //     0x92b4d8: ldr             x16, [PP, #0xd0]  ; [pp+0xd0] "speed"
    // 0x92b4dc: StoreField: r2->field_27 = r16
    //     0x92b4dc: stur            w16, [x2, #0x27]
    // 0x92b4e0: LoadField: d0 = r3->field_47
    //     0x92b4e0: ldur            d0, [x3, #0x47]
    // 0x92b4e4: r0 = inline_Allocate_Double()
    //     0x92b4e4: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x92b4e8: add             x0, x0, #0x10
    //     0x92b4ec: cmp             x1, x0
    //     0x92b4f0: b.ls            #0x92b5c0
    //     0x92b4f4: str             x0, [THR, #0x60]  ; THR::top
    //     0x92b4f8: sub             x0, x0, #0xf
    //     0x92b4fc: mov             x1, #0xe15c
    //     0x92b500: movk            x1, #3, lsl #16
    //     0x92b504: stur            x1, [x0, #-1]
    // 0x92b508: StoreField: r0->field_7 = d0
    //     0x92b508: stur            d0, [x0, #7]
    // 0x92b50c: mov             x1, x2
    // 0x92b510: ArrayStore: r1[7] = r0  ; List_4
    //     0x92b510: add             x25, x1, #0x2b
    //     0x92b514: str             w0, [x25]
    //     0x92b518: tbz             w0, #0, #0x92b534
    //     0x92b51c: ldurb           w16, [x1, #-1]
    //     0x92b520: ldurb           w17, [x0, #-1]
    //     0x92b524: and             x16, x17, x16, lsr #2
    //     0x92b528: tst             x16, HEAP, lsr #32
    //     0x92b52c: b.eq            #0x92b534
    //     0x92b530: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x92b534: r16 = "updatedAt"
    //     0x92b534: ldr             x16, [PP, #0xd8]  ; [pp+0xd8] "updatedAt"
    // 0x92b538: StoreField: r2->field_2f = r16
    //     0x92b538: stur            w16, [x2, #0x2f]
    // 0x92b53c: r16 = _ConstMap len:1
    //     0x92b53c: ldr             x16, [PP, #0xe0]  ; [pp+0xe0] Map<String, String>(1)
    // 0x92b540: StoreField: r2->field_33 = r16
    //     0x92b540: stur            w16, [x2, #0x33]
    // 0x92b544: r16 = <String, Object?>
    //     0x92b544: ldr             x16, [PP, #0xe8]  ; [pp+0xe8] TypeArguments: <String, Object?>
    // 0x92b548: stp             x2, x16, [SP]
    // 0x92b54c: r0 = Map._fromLiteral()
    //     0x92b54c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x92b550: ldur            x1, [fp, #-0x18]
    // 0x92b554: mov             x2, x0
    // 0x92b558: r0 = update()
    //     0x92b558: bl              #0x92b5d8  ; [package:firebase_database/firebase_database.dart] DatabaseReference::update
    // 0x92b55c: mov             x1, x0
    // 0x92b560: stur            x1, [fp, #-0x10]
    // 0x92b564: r0 = Await()
    //     0x92b564: bl              #0x3dd188  ; AwaitStub
    // 0x92b568: r0 = Null
    //     0x92b568: mov             x0, NULL
    // 0x92b56c: r0 = ReturnAsyncNotFuture()
    //     0x92b56c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92b570: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92b570: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92b574: b               #0x92b348
    // 0x92b578: SaveReg d0
    //     0x92b578: str             q0, [SP, #-0x10]!
    // 0x92b57c: stp             x2, x3, [SP, #-0x10]!
    // 0x92b580: r0 = AllocateDouble()
    //     0x92b580: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x92b584: ldp             x2, x3, [SP], #0x10
    // 0x92b588: RestoreReg d0
    //     0x92b588: ldr             q0, [SP], #0x10
    // 0x92b58c: b               #0x92b3f4
    // 0x92b590: SaveReg d0
    //     0x92b590: str             q0, [SP, #-0x10]!
    // 0x92b594: stp             x2, x3, [SP, #-0x10]!
    // 0x92b598: r0 = AllocateDouble()
    //     0x92b598: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x92b59c: ldp             x2, x3, [SP], #0x10
    // 0x92b5a0: RestoreReg d0
    //     0x92b5a0: ldr             q0, [SP], #0x10
    // 0x92b5a4: b               #0x92b450
    // 0x92b5a8: SaveReg d0
    //     0x92b5a8: str             q0, [SP, #-0x10]!
    // 0x92b5ac: stp             x2, x3, [SP, #-0x10]!
    // 0x92b5b0: r0 = AllocateDouble()
    //     0x92b5b0: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x92b5b4: ldp             x2, x3, [SP], #0x10
    // 0x92b5b8: RestoreReg d0
    //     0x92b5b8: ldr             q0, [SP], #0x10
    // 0x92b5bc: b               #0x92b4ac
    // 0x92b5c0: SaveReg d0
    //     0x92b5c0: str             q0, [SP, #-0x10]!
    // 0x92b5c4: SaveReg r2
    //     0x92b5c4: str             x2, [SP, #-8]!
    // 0x92b5c8: r0 = AllocateDouble()
    //     0x92b5c8: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x92b5cc: RestoreReg r2
    //     0x92b5cc: ldr             x2, [SP], #8
    // 0x92b5d0: RestoreReg d0
    //     0x92b5d0: ldr             q0, [SP], #0x10
    // 0x92b5d4: b               #0x92b508
  }
}
