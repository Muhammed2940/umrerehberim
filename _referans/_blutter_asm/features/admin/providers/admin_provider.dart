// lib: , url: package:umrem_demo/features/admin/providers/admin_provider.dart

// class id: 1049518, size: 0x8
class :: {
}

// class id: 3872, size: 0x50, field offset: 0x24
class AdminProvider extends ChangeNotifier {

  _ loadInitial(/* No info */) async {
    // ** addr: 0x5d2a74, size: 0x4a8
    // 0x5d2a74: EnterFrame
    //     0x5d2a74: stp             fp, lr, [SP, #-0x10]!
    //     0x5d2a78: mov             fp, SP
    // 0x5d2a7c: AllocStack(0xa8)
    //     0x5d2a7c: sub             SP, SP, #0xa8
    // 0x5d2a80: SetupParameters(AdminProvider this /* r1 => r1, fp-0x78 */)
    //     0x5d2a80: stur            NULL, [fp, #-8]
    //     0x5d2a84: stur            x1, [fp, #-0x78]
    // 0x5d2a88: CheckStackOverflow
    //     0x5d2a88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d2a8c: cmp             SP, x16
    //     0x5d2a90: b.ls            #0x5d2efc
    // 0x5d2a94: InitAsync() -> Future<void?>
    //     0x5d2a94: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5d2a98: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d2a9c: ldur            x0, [fp, #-0x78]
    // 0x5d2aa0: r1 = true
    //     0x5d2aa0: add             x1, NULL, #0x20  ; true
    // 0x5d2aa4: StoreField: r0->field_27 = r1
    //     0x5d2aa4: stur            w1, [x0, #0x27]
    // 0x5d2aa8: StoreField: r0->field_2f = rNULL
    //     0x5d2aa8: stur            NULL, [x0, #0x2f]
    // 0x5d2aac: mov             x1, x0
    // 0x5d2ab0: r0 = notifyListeners()
    //     0x5d2ab0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5d2ab4: ldur            x0, [fp, #-0x78]
    // 0x5d2ab8: LoadField: r2 = r0->field_23
    //     0x5d2ab8: ldur            w2, [x0, #0x23]
    // 0x5d2abc: DecompressPointer r2
    //     0x5d2abc: add             x2, x2, HEAP, lsl #32
    // 0x5d2ac0: mov             x1, x2
    // 0x5d2ac4: stur            x2, [fp, #-0x80]
    // 0x5d2ac8: r0 = getAgencies()
    //     0x5d2ac8: bl              #0x5dba20  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAgencies
    // 0x5d2acc: mov             x1, x0
    // 0x5d2ad0: stur            x1, [fp, #-0x88]
    // 0x5d2ad4: r0 = Await()
    //     0x5d2ad4: bl              #0x3dd188  ; AwaitStub
    // 0x5d2ad8: ldur            x2, [fp, #-0x78]
    // 0x5d2adc: StoreField: r2->field_3f = r0
    //     0x5d2adc: stur            w0, [x2, #0x3f]
    //     0x5d2ae0: ldurb           w16, [x2, #-1]
    //     0x5d2ae4: ldurb           w17, [x0, #-1]
    //     0x5d2ae8: and             x16, x17, x16, lsr #2
    //     0x5d2aec: tst             x16, HEAP, lsr #32
    //     0x5d2af0: b.eq            #0x5d2af8
    //     0x5d2af4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5d2af8: mov             x1, x2
    // 0x5d2afc: r0 = isSuperAdmin()
    //     0x5d2afc: bl              #0x5db9dc  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isSuperAdmin
    // 0x5d2b00: tbnz            w0, #4, #0x5d2bac
    // 0x5d2b04: ldur            x0, [fp, #-0x78]
    // 0x5d2b08: ldur            x1, [fp, #-0x80]
    // 0x5d2b0c: r0 = getAllUsers()
    //     0x5d2b0c: bl              #0x5db908  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAllUsers
    // 0x5d2b10: mov             x1, x0
    // 0x5d2b14: stur            x1, [fp, #-0x88]
    // 0x5d2b18: r0 = Await()
    //     0x5d2b18: bl              #0x3dd188  ; AwaitStub
    // 0x5d2b1c: ldur            x2, [fp, #-0x78]
    // 0x5d2b20: StoreField: r2->field_33 = r0
    //     0x5d2b20: stur            w0, [x2, #0x33]
    //     0x5d2b24: ldurb           w16, [x2, #-1]
    //     0x5d2b28: ldurb           w17, [x0, #-1]
    //     0x5d2b2c: and             x16, x17, x16, lsr #2
    //     0x5d2b30: tst             x16, HEAP, lsr #32
    //     0x5d2b34: b.eq            #0x5d2b3c
    //     0x5d2b38: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5d2b3c: ldur            x1, [fp, #-0x80]
    // 0x5d2b40: r0 = getTrips()
    //     0x5d2b40: bl              #0x5db820  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTrips
    // 0x5d2b44: mov             x1, x0
    // 0x5d2b48: stur            x1, [fp, #-0x88]
    // 0x5d2b4c: r0 = Await()
    //     0x5d2b4c: bl              #0x3dd188  ; AwaitStub
    // 0x5d2b50: ldur            x2, [fp, #-0x78]
    // 0x5d2b54: StoreField: r2->field_37 = r0
    //     0x5d2b54: stur            w0, [x2, #0x37]
    //     0x5d2b58: ldurb           w16, [x2, #-1]
    //     0x5d2b5c: ldurb           w17, [x0, #-1]
    //     0x5d2b60: and             x16, x17, x16, lsr #2
    //     0x5d2b64: tst             x16, HEAP, lsr #32
    //     0x5d2b68: b.eq            #0x5d2b70
    //     0x5d2b6c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5d2b70: ldur            x1, [fp, #-0x80]
    // 0x5d2b74: r0 = getHotels()
    //     0x5d2b74: bl              #0x5db738  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotels
    // 0x5d2b78: mov             x1, x0
    // 0x5d2b7c: stur            x1, [fp, #-0x88]
    // 0x5d2b80: r0 = Await()
    //     0x5d2b80: bl              #0x3dd188  ; AwaitStub
    // 0x5d2b84: ldur            x3, [fp, #-0x78]
    // 0x5d2b88: StoreField: r3->field_3b = r0
    //     0x5d2b88: stur            w0, [x3, #0x3b]
    //     0x5d2b8c: ldurb           w16, [x3, #-1]
    //     0x5d2b90: ldurb           w17, [x0, #-1]
    //     0x5d2b94: and             x16, x17, x16, lsr #2
    //     0x5d2b98: tst             x16, HEAP, lsr #32
    //     0x5d2b9c: b.eq            #0x5d2ba4
    //     0x5d2ba0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5d2ba4: mov             x2, x3
    // 0x5d2ba8: b               #0x5d2cd0
    // 0x5d2bac: ldur            x3, [fp, #-0x78]
    // 0x5d2bb0: r0 = LoadStaticField(0xfe4)
    //     0x5d2bb0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5d2bb4: ldr             x0, [x0, #0x1fc8]
    // 0x5d2bb8: cmp             w0, NULL
    // 0x5d2bbc: b.ne            #0x5d2bc8
    // 0x5d2bc0: r2 = Null
    //     0x5d2bc0: mov             x2, NULL
    // 0x5d2bc4: b               #0x5d2bd4
    // 0x5d2bc8: LoadField: r1 = r0->field_4b
    //     0x5d2bc8: ldur            w1, [x0, #0x4b]
    // 0x5d2bcc: DecompressPointer r1
    //     0x5d2bcc: add             x1, x1, HEAP, lsl #32
    // 0x5d2bd0: mov             x2, x1
    // 0x5d2bd4: cmp             w2, NULL
    // 0x5d2bd8: b.eq            #0x5d2f04
    // 0x5d2bdc: ldur            x1, [fp, #-0x80]
    // 0x5d2be0: r0 = getUsersByAgency()
    //     0x5d2be0: bl              #0x5da4c0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUsersByAgency
    // 0x5d2be4: mov             x1, x0
    // 0x5d2be8: stur            x1, [fp, #-0x88]
    // 0x5d2bec: r0 = Await()
    //     0x5d2bec: bl              #0x3dd188  ; AwaitStub
    // 0x5d2bf0: ldur            x3, [fp, #-0x78]
    // 0x5d2bf4: StoreField: r3->field_33 = r0
    //     0x5d2bf4: stur            w0, [x3, #0x33]
    //     0x5d2bf8: ldurb           w16, [x3, #-1]
    //     0x5d2bfc: ldurb           w17, [x0, #-1]
    //     0x5d2c00: and             x16, x17, x16, lsr #2
    //     0x5d2c04: tst             x16, HEAP, lsr #32
    //     0x5d2c08: b.eq            #0x5d2c10
    //     0x5d2c0c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5d2c10: r0 = LoadStaticField(0xfe4)
    //     0x5d2c10: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5d2c14: ldr             x0, [x0, #0x1fc8]
    // 0x5d2c18: cmp             w0, NULL
    // 0x5d2c1c: b.ne            #0x5d2c28
    // 0x5d2c20: r2 = Null
    //     0x5d2c20: mov             x2, NULL
    // 0x5d2c24: b               #0x5d2c34
    // 0x5d2c28: LoadField: r1 = r0->field_4b
    //     0x5d2c28: ldur            w1, [x0, #0x4b]
    // 0x5d2c2c: DecompressPointer r1
    //     0x5d2c2c: add             x1, x1, HEAP, lsl #32
    // 0x5d2c30: mov             x2, x1
    // 0x5d2c34: cmp             w2, NULL
    // 0x5d2c38: b.eq            #0x5d2f08
    // 0x5d2c3c: ldur            x1, [fp, #-0x80]
    // 0x5d2c40: r0 = getTripsByAgency()
    //     0x5d2c40: bl              #0x5d9bc0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripsByAgency
    // 0x5d2c44: mov             x1, x0
    // 0x5d2c48: stur            x1, [fp, #-0x88]
    // 0x5d2c4c: r0 = Await()
    //     0x5d2c4c: bl              #0x3dd188  ; AwaitStub
    // 0x5d2c50: ldur            x3, [fp, #-0x78]
    // 0x5d2c54: StoreField: r3->field_37 = r0
    //     0x5d2c54: stur            w0, [x3, #0x37]
    //     0x5d2c58: ldurb           w16, [x3, #-1]
    //     0x5d2c5c: ldurb           w17, [x0, #-1]
    //     0x5d2c60: and             x16, x17, x16, lsr #2
    //     0x5d2c64: tst             x16, HEAP, lsr #32
    //     0x5d2c68: b.eq            #0x5d2c70
    //     0x5d2c6c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5d2c70: r0 = LoadStaticField(0xfe4)
    //     0x5d2c70: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5d2c74: ldr             x0, [x0, #0x1fc8]
    // 0x5d2c78: cmp             w0, NULL
    // 0x5d2c7c: b.ne            #0x5d2c88
    // 0x5d2c80: r2 = Null
    //     0x5d2c80: mov             x2, NULL
    // 0x5d2c84: b               #0x5d2c94
    // 0x5d2c88: LoadField: r1 = r0->field_4b
    //     0x5d2c88: ldur            w1, [x0, #0x4b]
    // 0x5d2c8c: DecompressPointer r1
    //     0x5d2c8c: add             x1, x1, HEAP, lsl #32
    // 0x5d2c90: mov             x2, x1
    // 0x5d2c94: cmp             w2, NULL
    // 0x5d2c98: b.eq            #0x5d2f0c
    // 0x5d2c9c: ldur            x1, [fp, #-0x80]
    // 0x5d2ca0: r0 = getHotelsByAgency()
    //     0x5d2ca0: bl              #0x5d9314  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotelsByAgency
    // 0x5d2ca4: mov             x1, x0
    // 0x5d2ca8: stur            x1, [fp, #-0x88]
    // 0x5d2cac: r0 = Await()
    //     0x5d2cac: bl              #0x3dd188  ; AwaitStub
    // 0x5d2cb0: ldur            x2, [fp, #-0x78]
    // 0x5d2cb4: StoreField: r2->field_3b = r0
    //     0x5d2cb4: stur            w0, [x2, #0x3b]
    //     0x5d2cb8: ldurb           w16, [x2, #-1]
    //     0x5d2cbc: ldurb           w17, [x0, #-1]
    //     0x5d2cc0: and             x16, x17, x16, lsr #2
    //     0x5d2cc4: tst             x16, HEAP, lsr #32
    //     0x5d2cc8: b.eq            #0x5d2cd0
    //     0x5d2ccc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5d2cd0: ldur            x1, [fp, #-0x80]
    // 0x5d2cd4: r0 = getAllTripManagers()
    //     0x5d2cd4: bl              #0x5d8fe8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAllTripManagers
    // 0x5d2cd8: mov             x1, x0
    // 0x5d2cdc: stur            x1, [fp, #-0x88]
    // 0x5d2ce0: r0 = Await()
    //     0x5d2ce0: bl              #0x3dd188  ; AwaitStub
    // 0x5d2ce4: ldur            x2, [fp, #-0x78]
    // 0x5d2ce8: StoreField: r2->field_47 = r0
    //     0x5d2ce8: stur            w0, [x2, #0x47]
    //     0x5d2cec: ldurb           w16, [x2, #-1]
    //     0x5d2cf0: ldurb           w17, [x0, #-1]
    //     0x5d2cf4: and             x16, x17, x16, lsr #2
    //     0x5d2cf8: tst             x16, HEAP, lsr #32
    //     0x5d2cfc: b.eq            #0x5d2d04
    //     0x5d2d00: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5d2d04: mov             x1, x2
    // 0x5d2d08: r0 = isSuperAdmin()
    //     0x5d2d08: bl              #0x5db9dc  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isSuperAdmin
    // 0x5d2d0c: tbnz            w0, #4, #0x5d2d28
    // 0x5d2d10: ldur            x1, [fp, #-0x80]
    // 0x5d2d14: r0 = getRooms()
    //     0x5d2d14: bl              #0x5d8efc  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRooms
    // 0x5d2d18: mov             x1, x0
    // 0x5d2d1c: stur            x1, [fp, #-0x88]
    // 0x5d2d20: r0 = Await()
    //     0x5d2d20: bl              #0x3dd188  ; AwaitStub
    // 0x5d2d24: b               #0x5d2d68
    // 0x5d2d28: r0 = LoadStaticField(0xfe4)
    //     0x5d2d28: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5d2d2c: ldr             x0, [x0, #0x1fc8]
    // 0x5d2d30: cmp             w0, NULL
    // 0x5d2d34: b.ne            #0x5d2d40
    // 0x5d2d38: r2 = Null
    //     0x5d2d38: mov             x2, NULL
    // 0x5d2d3c: b               #0x5d2d4c
    // 0x5d2d40: LoadField: r1 = r0->field_4b
    //     0x5d2d40: ldur            w1, [x0, #0x4b]
    // 0x5d2d44: DecompressPointer r1
    //     0x5d2d44: add             x1, x1, HEAP, lsl #32
    // 0x5d2d48: mov             x2, x1
    // 0x5d2d4c: cmp             w2, NULL
    // 0x5d2d50: b.eq            #0x5d2f10
    // 0x5d2d54: ldur            x1, [fp, #-0x80]
    // 0x5d2d58: r0 = getRoomsByAgency()
    //     0x5d2d58: bl              #0x5d2f74  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRoomsByAgency
    // 0x5d2d5c: mov             x1, x0
    // 0x5d2d60: stur            x1, [fp, #-0x80]
    // 0x5d2d64: r0 = Await()
    //     0x5d2d64: bl              #0x3dd188  ; AwaitStub
    // 0x5d2d68: ldur            x1, [fp, #-0x78]
    // 0x5d2d6c: stur            x0, [fp, #-0x80]
    // 0x5d2d70: r16 = <String, List<RoomModel>>
    //     0x5d2d70: add             x16, PP, #0x10, lsl #12  ; [pp+0x10db0] TypeArguments: <String, List<RoomModel>>
    //     0x5d2d74: ldr             x16, [x16, #0xdb0]
    // 0x5d2d78: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5d2d7c: stp             lr, x16, [SP]
    // 0x5d2d80: r0 = Map._fromLiteral()
    //     0x5d2d80: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5d2d84: ldur            x2, [fp, #-0x78]
    // 0x5d2d88: StoreField: r2->field_43 = r0
    //     0x5d2d88: stur            w0, [x2, #0x43]
    //     0x5d2d8c: ldurb           w16, [x2, #-1]
    //     0x5d2d90: ldurb           w17, [x0, #-1]
    //     0x5d2d94: and             x16, x17, x16, lsr #2
    //     0x5d2d98: tst             x16, HEAP, lsr #32
    //     0x5d2d9c: b.eq            #0x5d2da4
    //     0x5d2da0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5d2da4: ldur            x3, [fp, #-0x80]
    // 0x5d2da8: r0 = LoadClassIdInstr(r3)
    //     0x5d2da8: ldur            x0, [x3, #-1]
    //     0x5d2dac: ubfx            x0, x0, #0xc, #0x14
    // 0x5d2db0: mov             x1, x3
    // 0x5d2db4: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x5d2db4: mov             x17, #0x90c4
    //     0x5d2db8: add             lr, x0, x17
    //     0x5d2dbc: ldr             lr, [x21, lr, lsl #3]
    //     0x5d2dc0: blr             lr
    // 0x5d2dc4: mov             x2, x0
    // 0x5d2dc8: stur            x2, [fp, #-0x80]
    // 0x5d2dcc: ldur            x3, [fp, #-0x78]
    // 0x5d2dd0: CheckStackOverflow
    //     0x5d2dd0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d2dd4: cmp             SP, x16
    //     0x5d2dd8: b.ls            #0x5d2f14
    // 0x5d2ddc: r0 = LoadClassIdInstr(r2)
    //     0x5d2ddc: ldur            x0, [x2, #-1]
    //     0x5d2de0: ubfx            x0, x0, #0xc, #0x14
    // 0x5d2de4: mov             x1, x2
    // 0x5d2de8: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x5d2de8: add             lr, x0, #0x4cb
    //     0x5d2dec: ldr             lr, [x21, lr, lsl #3]
    //     0x5d2df0: blr             lr
    // 0x5d2df4: tbnz            w0, #4, #0x5d2e88
    // 0x5d2df8: ldur            x3, [fp, #-0x78]
    // 0x5d2dfc: ldur            x2, [fp, #-0x80]
    // 0x5d2e00: r0 = LoadClassIdInstr(r2)
    //     0x5d2e00: ldur            x0, [x2, #-1]
    //     0x5d2e04: ubfx            x0, x0, #0xc, #0x14
    // 0x5d2e08: mov             x1, x2
    // 0x5d2e0c: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x5d2e0c: add             lr, x0, #0x4f1
    //     0x5d2e10: ldr             lr, [x21, lr, lsl #3]
    //     0x5d2e14: blr             lr
    // 0x5d2e18: mov             x3, x0
    // 0x5d2e1c: ldur            x0, [fp, #-0x78]
    // 0x5d2e20: stur            x3, [fp, #-0x98]
    // 0x5d2e24: LoadField: r4 = r0->field_43
    //     0x5d2e24: ldur            w4, [x0, #0x43]
    // 0x5d2e28: DecompressPointer r4
    //     0x5d2e28: add             x4, x4, HEAP, lsl #32
    // 0x5d2e2c: stur            x4, [fp, #-0x90]
    // 0x5d2e30: LoadField: r5 = r3->field_b
    //     0x5d2e30: ldur            w5, [x3, #0xb]
    // 0x5d2e34: DecompressPointer r5
    //     0x5d2e34: add             x5, x5, HEAP, lsl #32
    // 0x5d2e38: stur            x5, [fp, #-0x88]
    // 0x5d2e3c: r1 = Function '<anonymous closure>':.
    //     0x5d2e3c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a688] AnonymousClosure: (0x5dc224), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::createHotel (0x5dc25c)
    //     0x5d2e40: ldr             x1, [x1, #0x688]
    // 0x5d2e44: r2 = Null
    //     0x5d2e44: mov             x2, NULL
    // 0x5d2e48: r0 = AllocateClosure()
    //     0x5d2e48: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d2e4c: ldur            x1, [fp, #-0x90]
    // 0x5d2e50: ldur            x2, [fp, #-0x88]
    // 0x5d2e54: mov             x3, x0
    // 0x5d2e58: r0 = putIfAbsent()
    //     0x5d2e58: bl              #0x8a8cc8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::putIfAbsent
    // 0x5d2e5c: r1 = LoadClassIdInstr(r0)
    //     0x5d2e5c: ldur            x1, [x0, #-1]
    //     0x5d2e60: ubfx            x1, x1, #0xc, #0x14
    // 0x5d2e64: ldur            x16, [fp, #-0x98]
    // 0x5d2e68: stp             x16, x0, [SP]
    // 0x5d2e6c: mov             x0, x1
    // 0x5d2e70: r0 = GDT[cid_x0 + 0xfe05]()
    //     0x5d2e70: mov             x17, #0xfe05
    //     0x5d2e74: add             lr, x0, x17
    //     0x5d2e78: ldr             lr, [x21, lr, lsl #3]
    //     0x5d2e7c: blr             lr
    // 0x5d2e80: ldur            x2, [fp, #-0x80]
    // 0x5d2e84: b               #0x5d2dcc
    // 0x5d2e88: ldur            x2, [fp, #-0x78]
    // 0x5d2e8c: b               #0x5d2eac
    // 0x5d2e90: sub             SP, fp, #0xa8
    // 0x5d2e94: ldur            x2, [fp, #-0x78]
    // 0x5d2e98: r3 = "Veriler yüklenirken bir hata oluştu"
    //     0x5d2e98: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a690] "Veriler yüklenirken bir hata oluştu"
    //     0x5d2e9c: ldr             x3, [x3, #0x690]
    // 0x5d2ea0: r3 = "Veriler yüklenirken bir hata oluştu"
    //     0x5d2ea0: add             x3, PP, #0x1a, lsl #12  ; [pp+0x1a690] "Veriler yüklenirken bir hata oluştu"
    //     0x5d2ea4: ldr             x3, [x3, #0x690]
    // 0x5d2ea8: StoreField: r2->field_2f = r3
    //     0x5d2ea8: stur            w3, [x2, #0x2f]
    // 0x5d2eac: r3 = false
    //     0x5d2eac: add             x3, NULL, #0x30  ; false
    // 0x5d2eb0: StoreField: r2->field_27 = r3
    //     0x5d2eb0: stur            w3, [x2, #0x27]
    // 0x5d2eb4: mov             x1, x2
    // 0x5d2eb8: r0 = notifyListeners()
    //     0x5d2eb8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5d2ebc: r0 = Null
    //     0x5d2ebc: mov             x0, NULL
    // 0x5d2ec0: r0 = ReturnAsyncNotFuture()
    //     0x5d2ec0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d2ec4: sub             SP, fp, #0xa8
    // 0x5d2ec8: ldur            x2, [fp, #-0x78]
    // 0x5d2ecc: r3 = false
    //     0x5d2ecc: add             x3, NULL, #0x30  ; false
    // 0x5d2ed0: mov             x4, x0
    // 0x5d2ed4: stur            x0, [fp, #-0x80]
    // 0x5d2ed8: mov             x0, x1
    // 0x5d2edc: stur            x1, [fp, #-0x88]
    // 0x5d2ee0: StoreField: r2->field_27 = r3
    //     0x5d2ee0: stur            w3, [x2, #0x27]
    // 0x5d2ee4: mov             x1, x2
    // 0x5d2ee8: r0 = notifyListeners()
    //     0x5d2ee8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5d2eec: ldur            x0, [fp, #-0x80]
    // 0x5d2ef0: ldur            x1, [fp, #-0x88]
    // 0x5d2ef4: r0 = ReThrow()
    //     0x5d2ef4: bl              #0x9262fc  ; ReThrowStub
    // 0x5d2ef8: brk             #0
    // 0x5d2efc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d2efc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d2f00: b               #0x5d2a94
    // 0x5d2f04: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5d2f04: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5d2f08: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5d2f08: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5d2f0c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5d2f0c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5d2f10: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5d2f10: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5d2f14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d2f14: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d2f18: b               #0x5d2ddc
  }
  [closure] Future<void> loadInitial(dynamic) {
    // ** addr: 0x5d2f1c, size: 0x38
    // 0x5d2f1c: EnterFrame
    //     0x5d2f1c: stp             fp, lr, [SP, #-0x10]!
    //     0x5d2f20: mov             fp, SP
    // 0x5d2f24: ldr             x0, [fp, #0x10]
    // 0x5d2f28: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5d2f28: ldur            w1, [x0, #0x17]
    // 0x5d2f2c: DecompressPointer r1
    //     0x5d2f2c: add             x1, x1, HEAP, lsl #32
    // 0x5d2f30: CheckStackOverflow
    //     0x5d2f30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d2f34: cmp             SP, x16
    //     0x5d2f38: b.ls            #0x5d2f4c
    // 0x5d2f3c: r0 = loadInitial()
    //     0x5d2f3c: bl              #0x5d2a74  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::loadInitial
    // 0x5d2f40: LeaveFrame
    //     0x5d2f40: mov             SP, fp
    //     0x5d2f44: ldp             fp, lr, [SP], #0x10
    // 0x5d2f48: ret
    //     0x5d2f48: ret             
    // 0x5d2f4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d2f4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d2f50: b               #0x5d2f3c
  }
  get _ isSuperAdmin(/* No info */) {
    // ** addr: 0x5db9dc, size: 0x44
    // 0x5db9dc: r1 = LoadStaticField(0xfe4)
    //     0x5db9dc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5db9e0: ldr             x1, [x1, #0x1fc8]
    // 0x5db9e4: cmp             w1, NULL
    // 0x5db9e8: b.eq            #0x5db9fc
    // 0x5db9ec: LoadField: r2 = r1->field_4b
    //     0x5db9ec: ldur            w2, [x1, #0x4b]
    // 0x5db9f0: DecompressPointer r2
    //     0x5db9f0: add             x2, x2, HEAP, lsl #32
    // 0x5db9f4: cmp             w2, NULL
    // 0x5db9f8: b.ne            #0x5dba04
    // 0x5db9fc: r0 = true
    //     0x5db9fc: add             x0, NULL, #0x20  ; true
    // 0x5dba00: b               #0x5dba1c
    // 0x5dba04: LoadField: r1 = r2->field_7
    //     0x5dba04: ldur            w1, [x2, #7]
    // 0x5dba08: cbz             w1, #0x5dba14
    // 0x5dba0c: r2 = false
    //     0x5dba0c: add             x2, NULL, #0x30  ; false
    // 0x5dba10: b               #0x5dba18
    // 0x5dba14: r2 = true
    //     0x5dba14: add             x2, NULL, #0x20  ; true
    // 0x5dba18: mov             x0, x2
    // 0x5dba1c: ret
    //     0x5dba1c: ret             
  }
  [closure] List<RoomModel> <anonymous closure>(dynamic) {
    // ** addr: 0x5dc224, size: 0x38
    // 0x5dc224: EnterFrame
    //     0x5dc224: stp             fp, lr, [SP, #-0x10]!
    //     0x5dc228: mov             fp, SP
    // 0x5dc22c: CheckStackOverflow
    //     0x5dc22c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dc230: cmp             SP, x16
    //     0x5dc234: b.ls            #0x5dc254
    // 0x5dc238: r1 = <RoomModel>
    //     0x5dc238: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x5dc23c: ldr             x1, [x1, #0x6c8]
    // 0x5dc240: r2 = 0
    //     0x5dc240: mov             x2, #0
    // 0x5dc244: r0 = _GrowableList()
    //     0x5dc244: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5dc248: LeaveFrame
    //     0x5dc248: mov             SP, fp
    //     0x5dc24c: ldp             fp, lr, [SP], #0x10
    // 0x5dc250: ret
    //     0x5dc250: ret             
    // 0x5dc254: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dc254: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dc258: b               #0x5dc238
  }
  _ createHotel(/* No info */) async {
    // ** addr: 0x5dc25c, size: 0x264
    // 0x5dc25c: EnterFrame
    //     0x5dc25c: stp             fp, lr, [SP, #-0x10]!
    //     0x5dc260: mov             fp, SP
    // 0x5dc264: AllocStack(0xe8)
    //     0x5dc264: sub             SP, SP, #0xe8
    // 0x5dc268: SetupParameters(AdminProvider this /* r1 => r1, fp-0xa8 */, dynamic _ /* r2 => r2, fp-0xb0 */, dynamic _ /* r3 => r3, fp-0xb8 */, dynamic _ /* r5 => r5, fp-0xc0 */, dynamic _ /* r6 => r6, fp-0xc8 */, dynamic _ /* r7 => r7, fp-0xd0 */)
    //     0x5dc268: stur            NULL, [fp, #-8]
    //     0x5dc26c: stur            x1, [fp, #-0xa8]
    //     0x5dc270: stur            x2, [fp, #-0xb0]
    //     0x5dc274: stur            x3, [fp, #-0xb8]
    //     0x5dc278: stur            x5, [fp, #-0xc0]
    //     0x5dc27c: stur            x6, [fp, #-0xc8]
    //     0x5dc280: stur            x7, [fp, #-0xd0]
    // 0x5dc284: CheckStackOverflow
    //     0x5dc284: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dc288: cmp             SP, x16
    //     0x5dc28c: b.ls            #0x5dc4b8
    // 0x5dc290: InitAsync() -> Future<String?>
    //     0x5dc290: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x5dc294: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5dc298: ldur            x0, [fp, #-0xa8]
    // 0x5dc29c: r1 = true
    //     0x5dc29c: add             x1, NULL, #0x20  ; true
    // 0x5dc2a0: StoreField: r0->field_2b = r1
    //     0x5dc2a0: stur            w1, [x0, #0x2b]
    // 0x5dc2a4: mov             x1, x0
    // 0x5dc2a8: r0 = notifyListeners()
    //     0x5dc2a8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5dc2ac: r0 = LoadStaticField(0xfe4)
    //     0x5dc2ac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5dc2b0: ldr             x0, [x0, #0x1fc8]
    // 0x5dc2b4: cmp             w0, NULL
    // 0x5dc2b8: b.ne            #0x5dc2c4
    // 0x5dc2bc: r6 = Null
    //     0x5dc2bc: mov             x6, NULL
    // 0x5dc2c0: b               #0x5dc2d0
    // 0x5dc2c4: LoadField: r1 = r0->field_4b
    //     0x5dc2c4: ldur            w1, [x0, #0x4b]
    // 0x5dc2c8: DecompressPointer r1
    //     0x5dc2c8: add             x1, x1, HEAP, lsl #32
    // 0x5dc2cc: mov             x6, x1
    // 0x5dc2d0: ldur            x1, [fp, #-0xa8]
    // 0x5dc2d4: ldur            x5, [fp, #-0xb0]
    // 0x5dc2d8: ldur            x4, [fp, #-0xb8]
    // 0x5dc2dc: ldur            x3, [fp, #-0xc0]
    // 0x5dc2e0: ldur            x2, [fp, #-0xc8]
    // 0x5dc2e4: ldur            x0, [fp, #-0xd0]
    // 0x5dc2e8: stur            x6, [fp, #-0xd8]
    // 0x5dc2ec: r0 = HotelModel()
    //     0x5dc2ec: bl              #0x5d9bb4  ; AllocateHotelModelStub -> HotelModel (size=0x2c)
    // 0x5dc2f0: mov             x3, x0
    // 0x5dc2f4: r0 = ""
    //     0x5dc2f4: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x5dc2f8: stur            x3, [fp, #-0xe0]
    // 0x5dc2fc: StoreField: r3->field_7 = r0
    //     0x5dc2fc: stur            w0, [x3, #7]
    // 0x5dc300: ldur            x0, [fp, #-0xc8]
    // 0x5dc304: StoreField: r3->field_b = r0
    //     0x5dc304: stur            w0, [x3, #0xb]
    // 0x5dc308: ldur            x4, [fp, #-0xc0]
    // 0x5dc30c: StoreField: r3->field_f = r4
    //     0x5dc30c: stur            w4, [x3, #0xf]
    // 0x5dc310: ldur            x5, [fp, #-0xb0]
    // 0x5dc314: StoreField: r3->field_13 = r5
    //     0x5dc314: stur            w5, [x3, #0x13]
    // 0x5dc318: ldur            x6, [fp, #-0xd0]
    // 0x5dc31c: ArrayStore: r3[0] = r6  ; List_4
    //     0x5dc31c: stur            w6, [x3, #0x17]
    // 0x5dc320: ldur            x7, [fp, #-0xd8]
    // 0x5dc324: StoreField: r3->field_1b = r7
    //     0x5dc324: stur            w7, [x3, #0x1b]
    // 0x5dc328: ldur            x8, [fp, #-0xb8]
    // 0x5dc32c: StoreField: r3->field_1f = r8
    //     0x5dc32c: stur            w8, [x3, #0x1f]
    // 0x5dc330: ldur            x9, [fp, #-0xa8]
    // 0x5dc334: LoadField: r1 = r9->field_23
    //     0x5dc334: ldur            w1, [x9, #0x23]
    // 0x5dc338: DecompressPointer r1
    //     0x5dc338: add             x1, x1, HEAP, lsl #32
    // 0x5dc33c: mov             x2, x3
    // 0x5dc340: r0 = createHotel()
    //     0x5dc340: bl              #0x5dd1bc  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createHotel
    // 0x5dc344: mov             x1, x0
    // 0x5dc348: stur            x1, [fp, #-0xe8]
    // 0x5dc34c: r0 = Await()
    //     0x5dc34c: bl              #0x3dd188  ; AwaitStub
    // 0x5dc350: stur            x0, [fp, #-0xb0]
    // 0x5dc354: cmp             w0, NULL
    // 0x5dc358: b.eq            #0x5dc420
    // 0x5dc35c: ldur            x3, [fp, #-0xa8]
    // 0x5dc360: ldur            x1, [fp, #-0xe0]
    // 0x5dc364: mov             x2, x0
    // 0x5dc368: r0 = copyWith()
    //     0x5dc368: bl              #0x5dd0f4  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::copyWith
    // 0x5dc36c: r1 = Null
    //     0x5dc36c: mov             x1, NULL
    // 0x5dc370: r2 = 2
    //     0x5dc370: mov             x2, #2
    // 0x5dc374: stur            x0, [fp, #-0xb8]
    // 0x5dc378: r0 = AllocateArray()
    //     0x5dc378: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5dc37c: mov             x2, x0
    // 0x5dc380: ldur            x0, [fp, #-0xb8]
    // 0x5dc384: stur            x2, [fp, #-0xc0]
    // 0x5dc388: StoreField: r2->field_f = r0
    //     0x5dc388: stur            w0, [x2, #0xf]
    // 0x5dc38c: r1 = <HotelModel>
    //     0x5dc38c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x5dc390: ldr             x1, [x1, #0xda8]
    // 0x5dc394: r0 = AllocateGrowableArray()
    //     0x5dc394: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x5dc398: mov             x3, x0
    // 0x5dc39c: ldur            x0, [fp, #-0xc0]
    // 0x5dc3a0: stur            x3, [fp, #-0xb8]
    // 0x5dc3a4: StoreField: r3->field_f = r0
    //     0x5dc3a4: stur            w0, [x3, #0xf]
    // 0x5dc3a8: r0 = 2
    //     0x5dc3a8: mov             x0, #2
    // 0x5dc3ac: StoreField: r3->field_b = r0
    //     0x5dc3ac: stur            w0, [x3, #0xb]
    // 0x5dc3b0: ldur            x0, [fp, #-0xa8]
    // 0x5dc3b4: LoadField: r2 = r0->field_3b
    //     0x5dc3b4: ldur            w2, [x0, #0x3b]
    // 0x5dc3b8: DecompressPointer r2
    //     0x5dc3b8: add             x2, x2, HEAP, lsl #32
    // 0x5dc3bc: mov             x1, x3
    // 0x5dc3c0: r0 = addAll()
    //     0x5dc3c0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x5dc3c4: ldur            x0, [fp, #-0xb8]
    // 0x5dc3c8: ldur            x3, [fp, #-0xa8]
    // 0x5dc3cc: StoreField: r3->field_3b = r0
    //     0x5dc3cc: stur            w0, [x3, #0x3b]
    //     0x5dc3d0: ldurb           w16, [x3, #-1]
    //     0x5dc3d4: ldurb           w17, [x0, #-1]
    //     0x5dc3d8: and             x16, x17, x16, lsr #2
    //     0x5dc3dc: tst             x16, HEAP, lsr #32
    //     0x5dc3e0: b.eq            #0x5dc3e8
    //     0x5dc3e4: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5dc3e8: LoadField: r0 = r3->field_43
    //     0x5dc3e8: ldur            w0, [x3, #0x43]
    // 0x5dc3ec: DecompressPointer r0
    //     0x5dc3ec: add             x0, x0, HEAP, lsl #32
    // 0x5dc3f0: stur            x0, [fp, #-0xc0]
    // 0x5dc3f4: r1 = Function '<anonymous closure>':.
    //     0x5dc3f4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14968] AnonymousClosure: (0x5dc224), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::createHotel (0x5dc25c)
    //     0x5dc3f8: ldr             x1, [x1, #0x968]
    // 0x5dc3fc: r2 = Null
    //     0x5dc3fc: mov             x2, NULL
    // 0x5dc400: r0 = AllocateClosure()
    //     0x5dc400: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5dc404: ldur            x1, [fp, #-0xc0]
    // 0x5dc408: ldur            x2, [fp, #-0xb0]
    // 0x5dc40c: mov             x3, x0
    // 0x5dc410: r0 = putIfAbsent()
    //     0x5dc410: bl              #0x8a8cc8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::putIfAbsent
    // 0x5dc414: r1 = "Otel oluşturuldu"
    //     0x5dc414: add             x1, PP, #0x14, lsl #12  ; [pp+0x14970] "Otel oluşturuldu"
    //     0x5dc418: ldr             x1, [x1, #0x970]
    // 0x5dc41c: r0 = showSuccess()
    //     0x5dc41c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x5dc420: ldur            x2, [fp, #-0xa8]
    // 0x5dc424: r3 = false
    //     0x5dc424: add             x3, NULL, #0x30  ; false
    // 0x5dc428: StoreField: r2->field_2b = r3
    //     0x5dc428: stur            w3, [x2, #0x2b]
    // 0x5dc42c: mov             x1, x2
    // 0x5dc430: r0 = notifyListeners()
    //     0x5dc430: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5dc434: ldur            x0, [fp, #-0xb0]
    // 0x5dc438: r0 = ReturnAsync()
    //     0x5dc438: b               #0x427094  ; ReturnAsyncStub
    // 0x5dc43c: sub             SP, fp, #0xe8
    // 0x5dc440: ldur            x2, [fp, #-0xa8]
    // 0x5dc444: r3 = false
    //     0x5dc444: add             x3, NULL, #0x30  ; false
    // 0x5dc448: mov             x4, x0
    // 0x5dc44c: stur            x0, [fp, #-0xb0]
    // 0x5dc450: mov             x0, x1
    // 0x5dc454: stur            x1, [fp, #-0xb8]
    // 0x5dc458: r1 = "Otel oluşturulamadı"
    //     0x5dc458: add             x1, PP, #0x14, lsl #12  ; [pp+0x14978] "Otel oluşturulamadı"
    //     0x5dc45c: ldr             x1, [x1, #0x978]
    // 0x5dc460: r0 = showError()
    //     0x5dc460: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x5dc464: ldur            x2, [fp, #-0xa8]
    // 0x5dc468: r3 = false
    //     0x5dc468: add             x3, NULL, #0x30  ; false
    // 0x5dc46c: StoreField: r2->field_2b = r3
    //     0x5dc46c: stur            w3, [x2, #0x2b]
    // 0x5dc470: mov             x1, x2
    // 0x5dc474: r0 = notifyListeners()
    //     0x5dc474: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5dc478: r0 = Null
    //     0x5dc478: mov             x0, NULL
    // 0x5dc47c: r0 = ReturnAsyncNotFuture()
    //     0x5dc47c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5dc480: sub             SP, fp, #0xe8
    // 0x5dc484: ldur            x2, [fp, #-0xa8]
    // 0x5dc488: r3 = false
    //     0x5dc488: add             x3, NULL, #0x30  ; false
    // 0x5dc48c: mov             x4, x0
    // 0x5dc490: stur            x0, [fp, #-0xb0]
    // 0x5dc494: mov             x0, x1
    // 0x5dc498: stur            x1, [fp, #-0xb8]
    // 0x5dc49c: StoreField: r2->field_2b = r3
    //     0x5dc49c: stur            w3, [x2, #0x2b]
    // 0x5dc4a0: mov             x1, x2
    // 0x5dc4a4: r0 = notifyListeners()
    //     0x5dc4a4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5dc4a8: ldur            x0, [fp, #-0xb0]
    // 0x5dc4ac: ldur            x1, [fp, #-0xb8]
    // 0x5dc4b0: r0 = ReThrow()
    //     0x5dc4b0: bl              #0x9262fc  ; ReThrowStub
    // 0x5dc4b4: brk             #0
    // 0x5dc4b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dc4b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dc4bc: b               #0x5dc290
  }
  [closure] bool <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x6d6d70, size: 0x70
    // 0x6d6d70: EnterFrame
    //     0x6d6d70: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6d74: mov             fp, SP
    // 0x6d6d78: AllocStack(0x10)
    //     0x6d6d78: sub             SP, SP, #0x10
    // 0x6d6d7c: SetupParameters([dynamic _ /* r0 */])
    //     0x6d6d7c: ldr             x0, [fp, #0x18]
    //     0x6d6d80: ldur            w1, [x0, #0x17]
    //     0x6d6d84: add             x1, x1, HEAP, lsl #32
    // 0x6d6d88: CheckStackOverflow
    //     0x6d6d88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d6d8c: cmp             SP, x16
    //     0x6d6d90: b.ls            #0x6d6dd8
    // 0x6d6d94: ldr             x0, [fp, #0x10]
    // 0x6d6d98: LoadField: r2 = r0->field_7
    //     0x6d6d98: ldur            w2, [x0, #7]
    // 0x6d6d9c: DecompressPointer r2
    //     0x6d6d9c: add             x2, x2, HEAP, lsl #32
    // 0x6d6da0: LoadField: r0 = r1->field_f
    //     0x6d6da0: ldur            w0, [x1, #0xf]
    // 0x6d6da4: DecompressPointer r0
    //     0x6d6da4: add             x0, x0, HEAP, lsl #32
    // 0x6d6da8: r1 = LoadClassIdInstr(r2)
    //     0x6d6da8: ldur            x1, [x2, #-1]
    //     0x6d6dac: ubfx            x1, x1, #0xc, #0x14
    // 0x6d6db0: stp             x0, x2, [SP]
    // 0x6d6db4: mov             x0, x1
    // 0x6d6db8: mov             lr, x0
    // 0x6d6dbc: ldr             lr, [x21, lr, lsl #3]
    // 0x6d6dc0: blr             lr
    // 0x6d6dc4: eor             x1, x0, #0x10
    // 0x6d6dc8: mov             x0, x1
    // 0x6d6dcc: LeaveFrame
    //     0x6d6dcc: mov             SP, fp
    //     0x6d6dd0: ldp             fp, lr, [SP], #0x10
    // 0x6d6dd4: ret
    //     0x6d6dd4: ret             
    // 0x6d6dd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d6dd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d6ddc: b               #0x6d6d94
  }
  _ deleteTrip(/* No info */) async {
    // ** addr: 0x6d6de0, size: 0x204
    // 0x6d6de0: EnterFrame
    //     0x6d6de0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6de4: mov             fp, SP
    // 0x6d6de8: AllocStack(0x98)
    //     0x6d6de8: sub             SP, SP, #0x98
    // 0x6d6dec: SetupParameters(AdminProvider this /* r1 => r1, fp-0x78 */, dynamic _ /* r2 => r2, fp-0x80 */)
    //     0x6d6dec: stur            NULL, [fp, #-8]
    //     0x6d6df0: stur            x1, [fp, #-0x78]
    //     0x6d6df4: stur            x2, [fp, #-0x80]
    // 0x6d6df8: CheckStackOverflow
    //     0x6d6df8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d6dfc: cmp             SP, x16
    //     0x6d6e00: b.ls            #0x6d6fdc
    // 0x6d6e04: r1 = 1
    //     0x6d6e04: mov             x1, #1
    // 0x6d6e08: r0 = AllocateContext()
    //     0x6d6e08: bl              #0x927010  ; AllocateContextStub
    // 0x6d6e0c: mov             x1, x0
    // 0x6d6e10: ldur            x0, [fp, #-0x80]
    // 0x6d6e14: stur            x1, [fp, #-0x88]
    // 0x6d6e18: StoreField: r1->field_f = r0
    //     0x6d6e18: stur            w0, [x1, #0xf]
    // 0x6d6e1c: InitAsync() -> Future<bool>
    //     0x6d6e1c: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d6e20: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d6e24: ldur            x0, [fp, #-0x78]
    // 0x6d6e28: ldur            x2, [fp, #-0x88]
    // 0x6d6e2c: r1 = true
    //     0x6d6e2c: add             x1, NULL, #0x20  ; true
    // 0x6d6e30: StoreField: r0->field_2b = r1
    //     0x6d6e30: stur            w1, [x0, #0x2b]
    // 0x6d6e34: mov             x1, x0
    // 0x6d6e38: r0 = notifyListeners()
    //     0x6d6e38: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d6e3c: ldur            x0, [fp, #-0x78]
    // 0x6d6e40: LoadField: r1 = r0->field_23
    //     0x6d6e40: ldur            w1, [x0, #0x23]
    // 0x6d6e44: DecompressPointer r1
    //     0x6d6e44: add             x1, x1, HEAP, lsl #32
    // 0x6d6e48: ldur            x3, [fp, #-0x88]
    // 0x6d6e4c: LoadField: r2 = r3->field_f
    //     0x6d6e4c: ldur            w2, [x3, #0xf]
    // 0x6d6e50: DecompressPointer r2
    //     0x6d6e50: add             x2, x2, HEAP, lsl #32
    // 0x6d6e54: r0 = deleteTrip()
    //     0x6d6e54: bl              #0x6d6fe4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteTrip
    // 0x6d6e58: mov             x1, x0
    // 0x6d6e5c: stur            x1, [fp, #-0x80]
    // 0x6d6e60: r0 = Await()
    //     0x6d6e60: bl              #0x3dd188  ; AwaitStub
    // 0x6d6e64: stur            x0, [fp, #-0x90]
    // 0x6d6e68: r16 = true
    //     0x6d6e68: add             x16, NULL, #0x20  ; true
    // 0x6d6e6c: cmp             w0, w16
    // 0x6d6e70: b.ne            #0x6d6f34
    // 0x6d6e74: ldur            x3, [fp, #-0x78]
    // 0x6d6e78: ldur            x4, [fp, #-0x88]
    // 0x6d6e7c: LoadField: r5 = r3->field_37
    //     0x6d6e7c: ldur            w5, [x3, #0x37]
    // 0x6d6e80: DecompressPointer r5
    //     0x6d6e80: add             x5, x5, HEAP, lsl #32
    // 0x6d6e84: mov             x2, x4
    // 0x6d6e88: stur            x5, [fp, #-0x80]
    // 0x6d6e8c: r1 = Function '<anonymous closure>':.
    //     0x6d6e8c: add             x1, PP, #0x14, lsl #12  ; [pp+0x147f0] AnonymousClosure: (0x6d6d70), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::deleteTrip (0x6d6de0)
    //     0x6d6e90: ldr             x1, [x1, #0x7f0]
    // 0x6d6e94: r0 = AllocateClosure()
    //     0x6d6e94: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d6e98: ldur            x1, [fp, #-0x80]
    // 0x6d6e9c: r2 = LoadClassIdInstr(r1)
    //     0x6d6e9c: ldur            x2, [x1, #-1]
    //     0x6d6ea0: ubfx            x2, x2, #0xc, #0x14
    // 0x6d6ea4: mov             x16, x0
    // 0x6d6ea8: mov             x0, x2
    // 0x6d6eac: mov             x2, x16
    // 0x6d6eb0: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6d6eb0: mov             x17, #0xd348
    //     0x6d6eb4: add             lr, x0, x17
    //     0x6d6eb8: ldr             lr, [x21, lr, lsl #3]
    //     0x6d6ebc: blr             lr
    // 0x6d6ec0: stur            x0, [fp, #-0x98]
    // 0x6d6ec4: LoadField: r3 = r0->field_7
    //     0x6d6ec4: ldur            w3, [x0, #7]
    // 0x6d6ec8: DecompressPointer r3
    //     0x6d6ec8: add             x3, x3, HEAP, lsl #32
    // 0x6d6ecc: mov             x1, x3
    // 0x6d6ed0: mov             x2, x0
    // 0x6d6ed4: stur            x3, [fp, #-0x80]
    // 0x6d6ed8: r0 = _GrowableList.of()
    //     0x6d6ed8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6d6edc: ldur            x3, [fp, #-0x78]
    // 0x6d6ee0: StoreField: r3->field_37 = r0
    //     0x6d6ee0: stur            w0, [x3, #0x37]
    //     0x6d6ee4: ldurb           w16, [x3, #-1]
    //     0x6d6ee8: ldurb           w17, [x0, #-1]
    //     0x6d6eec: and             x16, x17, x16, lsr #2
    //     0x6d6ef0: tst             x16, HEAP, lsr #32
    //     0x6d6ef4: b.eq            #0x6d6efc
    //     0x6d6ef8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6d6efc: LoadField: r1 = r3->field_47
    //     0x6d6efc: ldur            w1, [x3, #0x47]
    // 0x6d6f00: DecompressPointer r1
    //     0x6d6f00: add             x1, x1, HEAP, lsl #32
    // 0x6d6f04: ldur            x4, [fp, #-0x88]
    // 0x6d6f08: LoadField: r2 = r4->field_f
    //     0x6d6f08: ldur            w2, [x4, #0xf]
    // 0x6d6f0c: DecompressPointer r2
    //     0x6d6f0c: add             x2, x2, HEAP, lsl #32
    // 0x6d6f10: r0 = LoadClassIdInstr(r1)
    //     0x6d6f10: ldur            x0, [x1, #-1]
    //     0x6d6f14: ubfx            x0, x0, #0xc, #0x14
    // 0x6d6f18: r0 = GDT[cid_x0 + 0x5ba]()
    //     0x6d6f18: add             lr, x0, #0x5ba
    //     0x6d6f1c: ldr             lr, [x21, lr, lsl #3]
    //     0x6d6f20: blr             lr
    // 0x6d6f24: r1 = "Sefer silindi"
    //     0x6d6f24: add             x1, PP, #0x14, lsl #12  ; [pp+0x147f8] "Sefer silindi"
    //     0x6d6f28: ldr             x1, [x1, #0x7f8]
    // 0x6d6f2c: r0 = showSuccess()
    //     0x6d6f2c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6d6f30: b               #0x6d6f40
    // 0x6d6f34: r1 = "Sefer silinemedi"
    //     0x6d6f34: add             x1, PP, #0x14, lsl #12  ; [pp+0x14800] "Sefer silinemedi"
    //     0x6d6f38: ldr             x1, [x1, #0x800]
    // 0x6d6f3c: r0 = showError()
    //     0x6d6f3c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d6f40: ldur            x2, [fp, #-0x78]
    // 0x6d6f44: r3 = false
    //     0x6d6f44: add             x3, NULL, #0x30  ; false
    // 0x6d6f48: StoreField: r2->field_2b = r3
    //     0x6d6f48: stur            w3, [x2, #0x2b]
    // 0x6d6f4c: mov             x1, x2
    // 0x6d6f50: r0 = notifyListeners()
    //     0x6d6f50: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d6f54: ldur            x0, [fp, #-0x90]
    // 0x6d6f58: r0 = ReturnAsync()
    //     0x6d6f58: b               #0x427094  ; ReturnAsyncStub
    // 0x6d6f5c: sub             SP, fp, #0x98
    // 0x6d6f60: ldur            x2, [fp, #-0x78]
    // 0x6d6f64: r3 = false
    //     0x6d6f64: add             x3, NULL, #0x30  ; false
    // 0x6d6f68: mov             x4, x0
    // 0x6d6f6c: stur            x0, [fp, #-0x80]
    // 0x6d6f70: mov             x0, x1
    // 0x6d6f74: stur            x1, [fp, #-0x90]
    // 0x6d6f78: r1 = "Sefer silinemedi"
    //     0x6d6f78: add             x1, PP, #0x14, lsl #12  ; [pp+0x14800] "Sefer silinemedi"
    //     0x6d6f7c: ldr             x1, [x1, #0x800]
    // 0x6d6f80: r0 = showError()
    //     0x6d6f80: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d6f84: ldur            x2, [fp, #-0x78]
    // 0x6d6f88: r0 = false
    //     0x6d6f88: add             x0, NULL, #0x30  ; false
    // 0x6d6f8c: StoreField: r2->field_2b = r0
    //     0x6d6f8c: stur            w0, [x2, #0x2b]
    // 0x6d6f90: mov             x1, x2
    // 0x6d6f94: r0 = notifyListeners()
    //     0x6d6f94: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d6f98: r0 = false
    //     0x6d6f98: add             x0, NULL, #0x30  ; false
    // 0x6d6f9c: r0 = ReturnAsyncNotFuture()
    //     0x6d6f9c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d6fa0: sub             SP, fp, #0x98
    // 0x6d6fa4: ldur            x2, [fp, #-0x78]
    // 0x6d6fa8: r3 = false
    //     0x6d6fa8: add             x3, NULL, #0x30  ; false
    // 0x6d6fac: mov             x4, x0
    // 0x6d6fb0: stur            x0, [fp, #-0x80]
    // 0x6d6fb4: mov             x0, x1
    // 0x6d6fb8: stur            x1, [fp, #-0x88]
    // 0x6d6fbc: r3 = false
    //     0x6d6fbc: add             x3, NULL, #0x30  ; false
    // 0x6d6fc0: StoreField: r2->field_2b = r3
    //     0x6d6fc0: stur            w3, [x2, #0x2b]
    // 0x6d6fc4: mov             x1, x2
    // 0x6d6fc8: r0 = notifyListeners()
    //     0x6d6fc8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d6fcc: ldur            x0, [fp, #-0x80]
    // 0x6d6fd0: ldur            x1, [fp, #-0x88]
    // 0x6d6fd4: r0 = ReThrow()
    //     0x6d6fd4: bl              #0x9262fc  ; ReThrowStub
    // 0x6d6fd8: brk             #0
    // 0x6d6fdc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d6fdc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d6fe0: b               #0x6d6e04
  }
  _ deleteRoom(/* No info */) async {
    // ** addr: 0x6df16c, size: 0x290
    // 0x6df16c: EnterFrame
    //     0x6df16c: stp             fp, lr, [SP, #-0x10]!
    //     0x6df170: mov             fp, SP
    // 0x6df174: AllocStack(0xc8)
    //     0x6df174: sub             SP, SP, #0xc8
    // 0x6df178: SetupParameters(AdminProvider this /* r1 => r1, fp-0x98 */, dynamic _ /* r2 => r2, fp-0xa0 */)
    //     0x6df178: stur            NULL, [fp, #-8]
    //     0x6df17c: stur            x1, [fp, #-0x98]
    //     0x6df180: stur            x2, [fp, #-0xa0]
    // 0x6df184: CheckStackOverflow
    //     0x6df184: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df188: cmp             SP, x16
    //     0x6df18c: b.ls            #0x6df3ec
    // 0x6df190: r1 = 1
    //     0x6df190: mov             x1, #1
    // 0x6df194: r0 = AllocateContext()
    //     0x6df194: bl              #0x927010  ; AllocateContextStub
    // 0x6df198: mov             x1, x0
    // 0x6df19c: ldur            x0, [fp, #-0xa0]
    // 0x6df1a0: stur            x1, [fp, #-0xa8]
    // 0x6df1a4: StoreField: r1->field_f = r0
    //     0x6df1a4: stur            w0, [x1, #0xf]
    // 0x6df1a8: InitAsync() -> Future<bool>
    //     0x6df1a8: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6df1ac: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6df1b0: ldur            x0, [fp, #-0x98]
    // 0x6df1b4: ldur            x2, [fp, #-0xa8]
    // 0x6df1b8: r1 = true
    //     0x6df1b8: add             x1, NULL, #0x20  ; true
    // 0x6df1bc: StoreField: r0->field_2b = r1
    //     0x6df1bc: stur            w1, [x0, #0x2b]
    // 0x6df1c0: mov             x1, x0
    // 0x6df1c4: r0 = notifyListeners()
    //     0x6df1c4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6df1c8: ldur            x0, [fp, #-0x98]
    // 0x6df1cc: LoadField: r1 = r0->field_23
    //     0x6df1cc: ldur            w1, [x0, #0x23]
    // 0x6df1d0: DecompressPointer r1
    //     0x6df1d0: add             x1, x1, HEAP, lsl #32
    // 0x6df1d4: ldur            x3, [fp, #-0xa8]
    // 0x6df1d8: LoadField: r2 = r3->field_f
    //     0x6df1d8: ldur            w2, [x3, #0xf]
    // 0x6df1dc: DecompressPointer r2
    //     0x6df1dc: add             x2, x2, HEAP, lsl #32
    // 0x6df1e0: r0 = deleteRoom()
    //     0x6df1e0: bl              #0x6df3fc  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteRoom
    // 0x6df1e4: mov             x1, x0
    // 0x6df1e8: stur            x1, [fp, #-0xa0]
    // 0x6df1ec: r0 = Await()
    //     0x6df1ec: bl              #0x3dd188  ; AwaitStub
    // 0x6df1f0: stur            x0, [fp, #-0xb0]
    // 0x6df1f4: r16 = true
    //     0x6df1f4: add             x16, NULL, #0x20  ; true
    // 0x6df1f8: cmp             w0, w16
    // 0x6df1fc: b.ne            #0x6df344
    // 0x6df200: ldur            x2, [fp, #-0x98]
    // 0x6df204: LoadField: r3 = r2->field_43
    //     0x6df204: ldur            w3, [x2, #0x43]
    // 0x6df208: DecompressPointer r3
    //     0x6df208: add             x3, x3, HEAP, lsl #32
    // 0x6df20c: stur            x3, [fp, #-0xa0]
    // 0x6df210: r1 = <String, List<RoomModel>>
    //     0x6df210: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db0] TypeArguments: <String, List<RoomModel>>
    //     0x6df214: ldr             x1, [x1, #0xdb0]
    // 0x6df218: r0 = _CompactKeysIterable()
    //     0x6df218: bl              #0x3f3f8c  ; Allocate_CompactKeysIterableStub -> _CompactKeysIterable<X0> (size=0x10)
    // 0x6df21c: mov             x1, x0
    // 0x6df220: ldur            x0, [fp, #-0xa0]
    // 0x6df224: StoreField: r1->field_b = r0
    //     0x6df224: stur            w0, [x1, #0xb]
    // 0x6df228: r0 = iterator()
    //     0x6df228: bl              #0x54010c  ; [dart:_compact_hash] _CompactKeysIterable::iterator
    // 0x6df22c: stur            x0, [fp, #-0xb8]
    // 0x6df230: LoadField: r2 = r0->field_7
    //     0x6df230: ldur            w2, [x0, #7]
    // 0x6df234: DecompressPointer r2
    //     0x6df234: add             x2, x2, HEAP, lsl #32
    // 0x6df238: stur            x2, [fp, #-0xa0]
    // 0x6df23c: ldur            x3, [fp, #-0x98]
    // 0x6df240: CheckStackOverflow
    //     0x6df240: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df244: cmp             SP, x16
    //     0x6df248: b.ls            #0x6df3f4
    // 0x6df24c: mov             x1, x0
    // 0x6df250: r0 = moveNext()
    //     0x6df250: bl              #0x863f04  ; [dart:_compact_hash] _CompactIterator::moveNext
    // 0x6df254: tbnz            w0, #4, #0x6df334
    // 0x6df258: ldur            x3, [fp, #-0xb8]
    // 0x6df25c: LoadField: r4 = r3->field_33
    //     0x6df25c: ldur            w4, [x3, #0x33]
    // 0x6df260: DecompressPointer r4
    //     0x6df260: add             x4, x4, HEAP, lsl #32
    // 0x6df264: stur            x4, [fp, #-0xc0]
    // 0x6df268: cmp             w4, NULL
    // 0x6df26c: b.ne            #0x6df2a0
    // 0x6df270: mov             x0, x4
    // 0x6df274: ldur            x2, [fp, #-0xa0]
    // 0x6df278: r1 = Null
    //     0x6df278: mov             x1, NULL
    // 0x6df27c: cmp             w2, NULL
    // 0x6df280: b.eq            #0x6df2a0
    // 0x6df284: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x6df284: ldur            w4, [x2, #0x17]
    // 0x6df288: DecompressPointer r4
    //     0x6df288: add             x4, x4, HEAP, lsl #32
    // 0x6df28c: r8 = X0
    //     0x6df28c: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x6df290: LoadField: r9 = r4->field_7
    //     0x6df290: ldur            x9, [x4, #7]
    // 0x6df294: r3 = Null
    //     0x6df294: add             x3, PP, #0x27, lsl #12  ; [pp+0x273f0] Null
    //     0x6df298: ldr             x3, [x3, #0x3f0]
    // 0x6df29c: blr             x9
    // 0x6df2a0: ldur            x0, [fp, #-0x98]
    // 0x6df2a4: LoadField: r3 = r0->field_43
    //     0x6df2a4: ldur            w3, [x0, #0x43]
    // 0x6df2a8: DecompressPointer r3
    //     0x6df2a8: add             x3, x3, HEAP, lsl #32
    // 0x6df2ac: mov             x1, x3
    // 0x6df2b0: ldur            x2, [fp, #-0xc0]
    // 0x6df2b4: stur            x3, [fp, #-0xc8]
    // 0x6df2b8: r0 = _getValueOrData()
    //     0x6df2b8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x6df2bc: mov             x1, x0
    // 0x6df2c0: ldur            x0, [fp, #-0xc8]
    // 0x6df2c4: LoadField: r2 = r0->field_f
    //     0x6df2c4: ldur            w2, [x0, #0xf]
    // 0x6df2c8: DecompressPointer r2
    //     0x6df2c8: add             x2, x2, HEAP, lsl #32
    // 0x6df2cc: cmp             w2, w1
    // 0x6df2d0: b.ne            #0x6df2dc
    // 0x6df2d4: r0 = Null
    //     0x6df2d4: mov             x0, NULL
    // 0x6df2d8: b               #0x6df2e0
    // 0x6df2dc: mov             x0, x1
    // 0x6df2e0: stur            x0, [fp, #-0xc0]
    // 0x6df2e4: cmp             w0, NULL
    // 0x6df2e8: b.eq            #0x6df328
    // 0x6df2ec: ldur            x2, [fp, #-0xa8]
    // 0x6df2f0: r1 = Function '<anonymous closure>':.
    //     0x6df2f0: add             x1, PP, #0x27, lsl #12  ; [pp+0x27400] AnonymousClosure: (0x6179f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber (0x617a58)
    //     0x6df2f4: ldr             x1, [x1, #0x400]
    // 0x6df2f8: r0 = AllocateClosure()
    //     0x6df2f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6df2fc: ldur            x3, [fp, #-0xc0]
    // 0x6df300: r1 = LoadClassIdInstr(r3)
    //     0x6df300: ldur            x1, [x3, #-1]
    //     0x6df304: ubfx            x1, x1, #0xc, #0x14
    // 0x6df308: mov             x2, x0
    // 0x6df30c: mov             x0, x1
    // 0x6df310: mov             x1, x3
    // 0x6df314: r0 = GDT[cid_x0 + 0x10106]()
    //     0x6df314: mov             x17, #0x106
    //     0x6df318: movk            x17, #1, lsl #16
    //     0x6df31c: add             lr, x0, x17
    //     0x6df320: ldr             lr, [x21, lr, lsl #3]
    //     0x6df324: blr             lr
    // 0x6df328: ldur            x0, [fp, #-0xb8]
    // 0x6df32c: ldur            x2, [fp, #-0xa0]
    // 0x6df330: b               #0x6df23c
    // 0x6df334: r1 = "Oda silindi"
    //     0x6df334: add             x1, PP, #0x27, lsl #12  ; [pp+0x27408] "Oda silindi"
    //     0x6df338: ldr             x1, [x1, #0x408]
    // 0x6df33c: r0 = showSuccess()
    //     0x6df33c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6df340: b               #0x6df350
    // 0x6df344: r1 = "Oda silinemedi"
    //     0x6df344: add             x1, PP, #0x27, lsl #12  ; [pp+0x27410] "Oda silinemedi"
    //     0x6df348: ldr             x1, [x1, #0x410]
    // 0x6df34c: r0 = showError()
    //     0x6df34c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6df350: ldur            x2, [fp, #-0x98]
    // 0x6df354: r3 = false
    //     0x6df354: add             x3, NULL, #0x30  ; false
    // 0x6df358: StoreField: r2->field_2b = r3
    //     0x6df358: stur            w3, [x2, #0x2b]
    // 0x6df35c: mov             x1, x2
    // 0x6df360: r0 = notifyListeners()
    //     0x6df360: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6df364: ldur            x0, [fp, #-0xb0]
    // 0x6df368: r0 = ReturnAsync()
    //     0x6df368: b               #0x427094  ; ReturnAsyncStub
    // 0x6df36c: sub             SP, fp, #0xc8
    // 0x6df370: ldur            x2, [fp, #-0x98]
    // 0x6df374: r3 = false
    //     0x6df374: add             x3, NULL, #0x30  ; false
    // 0x6df378: mov             x4, x0
    // 0x6df37c: stur            x0, [fp, #-0xa0]
    // 0x6df380: mov             x0, x1
    // 0x6df384: stur            x1, [fp, #-0xb0]
    // 0x6df388: r1 = "Oda silinemedi"
    //     0x6df388: add             x1, PP, #0x27, lsl #12  ; [pp+0x27410] "Oda silinemedi"
    //     0x6df38c: ldr             x1, [x1, #0x410]
    // 0x6df390: r0 = showError()
    //     0x6df390: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6df394: ldur            x2, [fp, #-0x98]
    // 0x6df398: r0 = false
    //     0x6df398: add             x0, NULL, #0x30  ; false
    // 0x6df39c: StoreField: r2->field_2b = r0
    //     0x6df39c: stur            w0, [x2, #0x2b]
    // 0x6df3a0: mov             x1, x2
    // 0x6df3a4: r0 = notifyListeners()
    //     0x6df3a4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6df3a8: r0 = false
    //     0x6df3a8: add             x0, NULL, #0x30  ; false
    // 0x6df3ac: r0 = ReturnAsyncNotFuture()
    //     0x6df3ac: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6df3b0: sub             SP, fp, #0xc8
    // 0x6df3b4: ldur            x2, [fp, #-0x98]
    // 0x6df3b8: r3 = false
    //     0x6df3b8: add             x3, NULL, #0x30  ; false
    // 0x6df3bc: mov             x4, x0
    // 0x6df3c0: stur            x0, [fp, #-0xa0]
    // 0x6df3c4: mov             x0, x1
    // 0x6df3c8: stur            x1, [fp, #-0xa8]
    // 0x6df3cc: r3 = false
    //     0x6df3cc: add             x3, NULL, #0x30  ; false
    // 0x6df3d0: StoreField: r2->field_2b = r3
    //     0x6df3d0: stur            w3, [x2, #0x2b]
    // 0x6df3d4: mov             x1, x2
    // 0x6df3d8: r0 = notifyListeners()
    //     0x6df3d8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6df3dc: ldur            x0, [fp, #-0xa0]
    // 0x6df3e0: ldur            x1, [fp, #-0xa8]
    // 0x6df3e4: r0 = ReThrow()
    //     0x6df3e4: bl              #0x9262fc  ; ReThrowStub
    // 0x6df3e8: brk             #0
    // 0x6df3ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df3ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df3f0: b               #0x6df190
    // 0x6df3f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df3f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df3f8: b               #0x6df24c
  }
  _ updateRoom(/* No info */) async {
    // ** addr: 0x6e0d10, size: 0x554
    // 0x6e0d10: EnterFrame
    //     0x6e0d10: stp             fp, lr, [SP, #-0x10]!
    //     0x6e0d14: mov             fp, SP
    // 0x6e0d18: AllocStack(0x170)
    //     0x6e0d18: sub             SP, SP, #0x170
    // 0x6e0d1c: SetupParameters(AdminProvider this /* r1 => r4, fp-0xe0 */, dynamic _ /* r2 => r2, fp-0xe8 */, dynamic _ /* r3 => r1, fp-0xf0 */, dynamic _ /* r5 => r0, fp-0xf8 */, dynamic _ /* r6 => r6, fp-0x100 */, dynamic _ /* r7 => r3 */)
    //     0x6e0d1c: stur            NULL, [fp, #-8]
    //     0x6e0d20: mov             x4, x1
    //     0x6e0d24: stur            x1, [fp, #-0xe0]
    //     0x6e0d28: mov             x1, x3
    //     0x6e0d2c: mov             x0, x5
    //     0x6e0d30: stur            x3, [fp, #-0xf0]
    //     0x6e0d34: mov             x3, x7
    //     0x6e0d38: stur            x2, [fp, #-0xe8]
    //     0x6e0d3c: stur            x5, [fp, #-0xf8]
    //     0x6e0d40: stur            x6, [fp, #-0x100]
    //     0x6e0d44: mov             x17, #-0x108
    // 0x6e0d44: r17 = -264
    // 0x6e0d48: str             x7, [fp, x17]
    // 0x6e0d4c: CheckStackOverflow
    //     0x6e0d4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e0d50: cmp             SP, x16
    //     0x6e0d54: b.ls            #0x6e1254
    // 0x6e0d58: r1 = 1
    //     0x6e0d58: mov             x1, #1
    // 0x6e0d5c: r0 = AllocateContext()
    //     0x6e0d5c: bl              #0x927010  ; AllocateContextStub
    // 0x6e0d60: mov             x1, x0
    // 0x6e0d64: ldur            x0, [fp, #-0x100]
    // 0x6e0d68: r17 = -272
    //     0x6e0d68: mov             x17, #-0x110
    // 0x6e0d6c: str             x1, [fp, x17]
    // 0x6e0d70: StoreField: r1->field_f = r0
    //     0x6e0d70: stur            w0, [x1, #0xf]
    // 0x6e0d74: InitAsync() -> Future<bool>
    //     0x6e0d74: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6e0d78: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e0d7c: ldur            x2, [fp, #-0xe0]
    // 0x6e0d80: ldur            x0, [fp, #-0xe8]
    // 0x6e0d84: ldur            x3, [fp, #-0xf0]
    // 0x6e0d88: r4 = true
    //     0x6e0d88: add             x4, NULL, #0x20  ; true
    // 0x6e0d8c: StoreField: r2->field_2b = r4
    //     0x6e0d8c: stur            w4, [x2, #0x2b]
    // 0x6e0d90: mov             x1, x2
    // 0x6e0d94: r0 = notifyListeners()
    //     0x6e0d94: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e0d98: r16 = <String, dynamic>
    //     0x6e0d98: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6e0d9c: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x6e0da0: stp             lr, x16, [SP]
    // 0x6e0da4: r0 = Map._fromLiteral()
    //     0x6e0da4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6e0da8: mov             x1, x0
    // 0x6e0dac: r17 = -264
    //     0x6e0dac: mov             x17, #-0x108
    // 0x6e0db0: ldr             x3, [fp, x17]
    // 0x6e0db4: r2 = "room_number"
    //     0x6e0db4: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x6e0db8: ldr             x2, [x2, #0xfb0]
    // 0x6e0dbc: stur            x0, [fp, #-0x100]
    // 0x6e0dc0: r0 = []=()
    //     0x6e0dc0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e0dc4: ldur            x4, [fp, #-0xe8]
    // 0x6e0dc8: r0 = BoxInt64Instr(r4)
    //     0x6e0dc8: sbfiz           x0, x4, #1, #0x1f
    //     0x6e0dcc: cmp             x4, x0, asr #1
    //     0x6e0dd0: b.eq            #0x6e0ddc
    //     0x6e0dd4: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6e0dd8: stur            x4, [x0, #7]
    // 0x6e0ddc: ldur            x1, [fp, #-0x100]
    // 0x6e0de0: mov             x3, x0
    // 0x6e0de4: r2 = "capacity"
    //     0x6e0de4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x6e0de8: ldr             x2, [x2, #0x988]
    // 0x6e0dec: r17 = -280
    //     0x6e0dec: mov             x17, #-0x118
    // 0x6e0df0: str             x0, [fp, x17]
    // 0x6e0df4: r0 = []=()
    //     0x6e0df4: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e0df8: ldur            x0, [fp, #-0xf0]
    // 0x6e0dfc: cmp             w0, NULL
    // 0x6e0e00: b.eq            #0x6e0e18
    // 0x6e0e04: ldur            x1, [fp, #-0x100]
    // 0x6e0e08: mov             x3, x0
    // 0x6e0e0c: r2 = "gender"
    //     0x6e0e0c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x6e0e10: ldr             x2, [x2, #8]
    // 0x6e0e14: r0 = []=()
    //     0x6e0e14: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e0e18: ldur            x0, [fp, #-0xf8]
    // 0x6e0e1c: cmp             w0, NULL
    // 0x6e0e20: b.eq            #0x6e0e38
    // 0x6e0e24: ldur            x1, [fp, #-0x100]
    // 0x6e0e28: mov             x3, x0
    // 0x6e0e2c: r2 = "note"
    //     0x6e0e2c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x6e0e30: ldr             x2, [x2, #0x30]
    // 0x6e0e34: r0 = []=()
    //     0x6e0e34: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e0e38: ldur            x0, [fp, #-0x100]
    // 0x6e0e3c: LoadField: r1 = r0->field_13
    //     0x6e0e3c: ldur            w1, [x0, #0x13]
    // 0x6e0e40: r2 = LoadInt32Instr(r1)
    //     0x6e0e40: sbfx            x2, x1, #1, #0x1f
    // 0x6e0e44: asr             x1, x2, #1
    // 0x6e0e48: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6e0e48: ldur            w2, [x0, #0x17]
    // 0x6e0e4c: r3 = LoadInt32Instr(r2)
    //     0x6e0e4c: sbfx            x3, x2, #1, #0x1f
    // 0x6e0e50: sub             x2, x1, x3
    // 0x6e0e54: cbnz            x2, #0x6e0e74
    // 0x6e0e58: ldur            x4, [fp, #-0xe0]
    // 0x6e0e5c: r5 = false
    //     0x6e0e5c: add             x5, NULL, #0x30  ; false
    // 0x6e0e60: StoreField: r4->field_2b = r5
    //     0x6e0e60: stur            w5, [x4, #0x2b]
    // 0x6e0e64: mov             x1, x4
    // 0x6e0e68: r0 = notifyListeners()
    //     0x6e0e68: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e0e6c: r0 = true
    //     0x6e0e6c: add             x0, NULL, #0x20  ; true
    // 0x6e0e70: r0 = ReturnAsyncNotFuture()
    //     0x6e0e70: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e0e74: ldur            x4, [fp, #-0xe0]
    // 0x6e0e78: r17 = -272
    //     0x6e0e78: mov             x17, #-0x110
    // 0x6e0e7c: ldr             x6, [fp, x17]
    // 0x6e0e80: r5 = false
    //     0x6e0e80: add             x5, NULL, #0x30  ; false
    // 0x6e0e84: LoadField: r1 = r4->field_23
    //     0x6e0e84: ldur            w1, [x4, #0x23]
    // 0x6e0e88: DecompressPointer r1
    //     0x6e0e88: add             x1, x1, HEAP, lsl #32
    // 0x6e0e8c: LoadField: r2 = r6->field_f
    //     0x6e0e8c: ldur            w2, [x6, #0xf]
    // 0x6e0e90: DecompressPointer r2
    //     0x6e0e90: add             x2, x2, HEAP, lsl #32
    // 0x6e0e94: mov             x3, x0
    // 0x6e0e98: r0 = updateRoom()
    //     0x6e0e98: bl              #0x6e1520  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateRoom
    // 0x6e0e9c: mov             x1, x0
    // 0x6e0ea0: r17 = -288
    //     0x6e0ea0: mov             x17, #-0x120
    // 0x6e0ea4: str             x1, [fp, x17]
    // 0x6e0ea8: r0 = Await()
    //     0x6e0ea8: bl              #0x3dd188  ; AwaitStub
    // 0x6e0eac: r17 = -288
    //     0x6e0eac: mov             x17, #-0x120
    // 0x6e0eb0: str             x0, [fp, x17]
    // 0x6e0eb4: r16 = true
    //     0x6e0eb4: add             x16, NULL, #0x20  ; true
    // 0x6e0eb8: cmp             w0, w16
    // 0x6e0ebc: b.ne            #0x6e11a8
    // 0x6e0ec0: ldur            x2, [fp, #-0xe0]
    // 0x6e0ec4: LoadField: r3 = r2->field_43
    //     0x6e0ec4: ldur            w3, [x2, #0x43]
    // 0x6e0ec8: DecompressPointer r3
    //     0x6e0ec8: add             x3, x3, HEAP, lsl #32
    // 0x6e0ecc: stur            x3, [fp, #-0x100]
    // 0x6e0ed0: r1 = <String, List<RoomModel>>
    //     0x6e0ed0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db0] TypeArguments: <String, List<RoomModel>>
    //     0x6e0ed4: ldr             x1, [x1, #0xdb0]
    // 0x6e0ed8: r0 = _CompactKeysIterable()
    //     0x6e0ed8: bl              #0x3f3f8c  ; Allocate_CompactKeysIterableStub -> _CompactKeysIterable<X0> (size=0x10)
    // 0x6e0edc: mov             x1, x0
    // 0x6e0ee0: ldur            x0, [fp, #-0x100]
    // 0x6e0ee4: StoreField: r1->field_b = r0
    //     0x6e0ee4: stur            w0, [x1, #0xb]
    // 0x6e0ee8: r0 = iterator()
    //     0x6e0ee8: bl              #0x54010c  ; [dart:_compact_hash] _CompactKeysIterable::iterator
    // 0x6e0eec: r17 = -296
    //     0x6e0eec: mov             x17, #-0x128
    // 0x6e0ef0: str             x0, [fp, x17]
    // 0x6e0ef4: LoadField: r2 = r0->field_7
    //     0x6e0ef4: ldur            w2, [x0, #7]
    // 0x6e0ef8: DecompressPointer r2
    //     0x6e0ef8: add             x2, x2, HEAP, lsl #32
    // 0x6e0efc: stur            x2, [fp, #-0x100]
    // 0x6e0f00: ldur            x5, [fp, #-0xf0]
    // 0x6e0f04: ldur            x4, [fp, #-0xf8]
    // 0x6e0f08: ldur            x3, [fp, #-0xe0]
    // 0x6e0f0c: CheckStackOverflow
    //     0x6e0f0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e0f10: cmp             SP, x16
    //     0x6e0f14: b.ls            #0x6e125c
    // 0x6e0f18: mov             x1, x0
    // 0x6e0f1c: r0 = moveNext()
    //     0x6e0f1c: bl              #0x863f04  ; [dart:_compact_hash] _CompactIterator::moveNext
    // 0x6e0f20: tbnz            w0, #4, #0x6e1198
    // 0x6e0f24: r17 = -296
    //     0x6e0f24: mov             x17, #-0x128
    // 0x6e0f28: ldr             x3, [fp, x17]
    // 0x6e0f2c: LoadField: r4 = r3->field_33
    //     0x6e0f2c: ldur            w4, [x3, #0x33]
    // 0x6e0f30: DecompressPointer r4
    //     0x6e0f30: add             x4, x4, HEAP, lsl #32
    // 0x6e0f34: r17 = -304
    //     0x6e0f34: mov             x17, #-0x130
    // 0x6e0f38: str             x4, [fp, x17]
    // 0x6e0f3c: cmp             w4, NULL
    // 0x6e0f40: b.ne            #0x6e0f74
    // 0x6e0f44: mov             x0, x4
    // 0x6e0f48: ldur            x2, [fp, #-0x100]
    // 0x6e0f4c: r1 = Null
    //     0x6e0f4c: mov             x1, NULL
    // 0x6e0f50: cmp             w2, NULL
    // 0x6e0f54: b.eq            #0x6e0f74
    // 0x6e0f58: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x6e0f58: ldur            w4, [x2, #0x17]
    // 0x6e0f5c: DecompressPointer r4
    //     0x6e0f5c: add             x4, x4, HEAP, lsl #32
    // 0x6e0f60: r8 = X0
    //     0x6e0f60: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x6e0f64: LoadField: r9 = r4->field_7
    //     0x6e0f64: ldur            x9, [x4, #7]
    // 0x6e0f68: r3 = Null
    //     0x6e0f68: add             x3, PP, #0x27, lsl #12  ; [pp+0x27480] Null
    //     0x6e0f6c: ldr             x3, [x3, #0x480]
    // 0x6e0f70: blr             x9
    // 0x6e0f74: ldur            x0, [fp, #-0xe0]
    // 0x6e0f78: LoadField: r3 = r0->field_43
    //     0x6e0f78: ldur            w3, [x0, #0x43]
    // 0x6e0f7c: DecompressPointer r3
    //     0x6e0f7c: add             x3, x3, HEAP, lsl #32
    // 0x6e0f80: mov             x1, x3
    // 0x6e0f84: r17 = -304
    //     0x6e0f84: mov             x17, #-0x130
    // 0x6e0f88: ldr             x2, [fp, x17]
    // 0x6e0f8c: r17 = -312
    //     0x6e0f8c: mov             x17, #-0x138
    // 0x6e0f90: str             x3, [fp, x17]
    // 0x6e0f94: r0 = _getValueOrData()
    //     0x6e0f94: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x6e0f98: mov             x1, x0
    // 0x6e0f9c: r17 = -312
    //     0x6e0f9c: mov             x17, #-0x138
    // 0x6e0fa0: ldr             x0, [fp, x17]
    // 0x6e0fa4: LoadField: r2 = r0->field_f
    //     0x6e0fa4: ldur            w2, [x0, #0xf]
    // 0x6e0fa8: DecompressPointer r2
    //     0x6e0fa8: add             x2, x2, HEAP, lsl #32
    // 0x6e0fac: cmp             w2, w1
    // 0x6e0fb0: b.ne            #0x6e0fbc
    // 0x6e0fb4: r0 = Null
    //     0x6e0fb4: mov             x0, NULL
    // 0x6e0fb8: b               #0x6e0fc0
    // 0x6e0fbc: mov             x0, x1
    // 0x6e0fc0: r17 = -304
    //     0x6e0fc0: mov             x17, #-0x130
    // 0x6e0fc4: str             x0, [fp, x17]
    // 0x6e0fc8: cmp             w0, NULL
    // 0x6e0fcc: b.ne            #0x6e0fd8
    // 0x6e0fd0: r0 = Null
    //     0x6e0fd0: mov             x0, NULL
    // 0x6e0fd4: b               #0x6e1034
    // 0x6e0fd8: r17 = -272
    //     0x6e0fd8: mov             x17, #-0x110
    // 0x6e0fdc: ldr             x2, [fp, x17]
    // 0x6e0fe0: r1 = Function '<anonymous closure>':.
    //     0x6e0fe0: add             x1, PP, #0x27, lsl #12  ; [pp+0x27490] AnonymousClosure: (0x6179f0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::_getRoomNumber (0x617a58)
    //     0x6e0fe4: ldr             x1, [x1, #0x490]
    // 0x6e0fe8: r0 = AllocateClosure()
    //     0x6e0fe8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e0fec: r17 = -304
    //     0x6e0fec: mov             x17, #-0x130
    // 0x6e0ff0: ldr             x3, [fp, x17]
    // 0x6e0ff4: r1 = LoadClassIdInstr(r3)
    //     0x6e0ff4: ldur            x1, [x3, #-1]
    //     0x6e0ff8: ubfx            x1, x1, #0xc, #0x14
    // 0x6e0ffc: mov             x2, x0
    // 0x6e1000: mov             x0, x1
    // 0x6e1004: mov             x1, x3
    // 0x6e1008: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e1008: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e100c: r0 = GDT[cid_x0 + 0xfba5]()
    //     0x6e100c: mov             x17, #0xfba5
    //     0x6e1010: add             lr, x0, x17
    //     0x6e1014: ldr             lr, [x21, lr, lsl #3]
    //     0x6e1018: blr             lr
    // 0x6e101c: mov             x2, x0
    // 0x6e1020: r0 = BoxInt64Instr(r2)
    //     0x6e1020: sbfiz           x0, x2, #1, #0x1f
    //     0x6e1024: cmp             x2, x0, asr #1
    //     0x6e1028: b.eq            #0x6e1034
    //     0x6e102c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6e1030: stur            x2, [x0, #7]
    // 0x6e1034: cmp             w0, NULL
    // 0x6e1038: b.ne            #0x6e1044
    // 0x6e103c: r2 = -1
    //     0x6e103c: mov             x2, #-1
    // 0x6e1040: b               #0x6e1054
    // 0x6e1044: r1 = LoadInt32Instr(r0)
    //     0x6e1044: sbfx            x1, x0, #1, #0x1f
    //     0x6e1048: tbz             w0, #0, #0x6e1050
    //     0x6e104c: ldur            x1, [x0, #7]
    // 0x6e1050: mov             x2, x1
    // 0x6e1054: r17 = -320
    //     0x6e1054: mov             x17, #-0x140
    // 0x6e1058: str             x2, [fp, x17]
    // 0x6e105c: r0 = BoxInt64Instr(r2)
    //     0x6e105c: sbfiz           x0, x2, #1, #0x1f
    //     0x6e1060: cmp             x2, x0, asr #1
    //     0x6e1064: b.eq            #0x6e1070
    //     0x6e1068: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6e106c: stur            x2, [x0, #7]
    // 0x6e1070: mov             x3, x0
    // 0x6e1074: r17 = -312
    //     0x6e1074: mov             x17, #-0x138
    // 0x6e1078: str             x3, [fp, x17]
    // 0x6e107c: r0 = BoxInt64Instr(r2)
    //     0x6e107c: sbfiz           x0, x2, #1, #0x1f
    //     0x6e1080: cmp             x2, x0, asr #1
    //     0x6e1084: b.eq            #0x6e1090
    //     0x6e1088: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6e108c: stur            x2, [x0, #7]
    // 0x6e1090: cmn             w0, #2
    // 0x6e1094: b.eq            #0x6e1178
    // 0x6e1098: r17 = -304
    //     0x6e1098: mov             x17, #-0x130
    // 0x6e109c: ldr             x1, [fp, x17]
    // 0x6e10a0: cmp             w1, NULL
    // 0x6e10a4: b.ne            #0x6e10b4
    // 0x6e10a8: ldur            x0, [fp, #-0xf0]
    // 0x6e10ac: ldur            x2, [fp, #-0xf8]
    // 0x6e10b0: b               #0x6e1180
    // 0x6e10b4: ldur            x4, [fp, #-0xf0]
    // 0x6e10b8: r0 = LoadClassIdInstr(r1)
    //     0x6e10b8: ldur            x0, [x1, #-1]
    //     0x6e10bc: ubfx            x0, x0, #0xc, #0x14
    // 0x6e10c0: stp             x3, x1, [SP]
    // 0x6e10c4: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x6e10c4: sub             lr, x0, #0xdfc
    //     0x6e10c8: ldr             lr, [x21, lr, lsl #3]
    //     0x6e10cc: blr             lr
    // 0x6e10d0: mov             x1, x0
    // 0x6e10d4: ldur            x0, [fp, #-0xf0]
    // 0x6e10d8: cmp             w0, NULL
    // 0x6e10dc: b.ne            #0x6e10e8
    // 0x6e10e0: LoadField: r0 = r1->field_1b
    //     0x6e10e0: ldur            w0, [x1, #0x1b]
    // 0x6e10e4: DecompressPointer r0
    //     0x6e10e4: add             x0, x0, HEAP, lsl #32
    // 0x6e10e8: ldur            x2, [fp, #-0xf8]
    // 0x6e10ec: cmp             w2, NULL
    // 0x6e10f0: b.ne            #0x6e1104
    // 0x6e10f4: LoadField: r2 = r1->field_1f
    //     0x6e10f4: ldur            w2, [x1, #0x1f]
    // 0x6e10f8: DecompressPointer r2
    //     0x6e10f8: add             x2, x2, HEAP, lsl #32
    // 0x6e10fc: mov             x3, x2
    // 0x6e1100: b               #0x6e1108
    // 0x6e1104: mov             x3, x2
    // 0x6e1108: r17 = -304
    //     0x6e1108: mov             x17, #-0x130
    // 0x6e110c: ldr             x2, [fp, x17]
    // 0x6e1110: r17 = -328
    //     0x6e1110: mov             x17, #-0x148
    // 0x6e1114: str             x3, [fp, x17]
    // 0x6e1118: r17 = -264
    //     0x6e1118: mov             x17, #-0x108
    // 0x6e111c: ldr             x16, [fp, x17]
    // 0x6e1120: r17 = -280
    //     0x6e1120: mov             x17, #-0x118
    // 0x6e1124: ldr             lr, [fp, x17]
    // 0x6e1128: stp             lr, x16, [SP, #0x10]
    // 0x6e112c: stp             x3, x0, [SP]
    // 0x6e1130: r4 = const [0, 0x5, 0x4, 0x1, capacity, 0x2, gender, 0x3, note, 0x4, roomNumber, 0x1, null]
    //     0x6e1130: add             x4, PP, #0x27, lsl #12  ; [pp+0x27498] List(13) [0, 0x5, 0x4, 0x1, "capacity", 0x2, "gender", 0x3, "note", 0x4, "roomNumber", 0x1, Null]
    //     0x6e1134: ldr             x4, [x4, #0x498]
    // 0x6e1138: r0 = copyWith()
    //     0x6e1138: bl              #0x6e1264  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::copyWith
    // 0x6e113c: mov             x2, x0
    // 0x6e1140: r17 = -304
    //     0x6e1140: mov             x17, #-0x130
    // 0x6e1144: ldr             x1, [fp, x17]
    // 0x6e1148: r17 = -336
    //     0x6e1148: mov             x17, #-0x150
    // 0x6e114c: str             x2, [fp, x17]
    // 0x6e1150: r0 = LoadClassIdInstr(r1)
    //     0x6e1150: ldur            x0, [x1, #-1]
    //     0x6e1154: ubfx            x0, x0, #0xc, #0x14
    // 0x6e1158: r17 = -312
    //     0x6e1158: mov             x17, #-0x138
    // 0x6e115c: ldr             x16, [fp, x17]
    // 0x6e1160: stp             x16, x1, [SP, #8]
    // 0x6e1164: str             x2, [SP]
    // 0x6e1168: r0 = GDT[cid_x0 + -0xd77]()
    //     0x6e1168: sub             lr, x0, #0xd77
    //     0x6e116c: ldr             lr, [x21, lr, lsl #3]
    //     0x6e1170: blr             lr
    // 0x6e1174: b               #0x6e1198
    // 0x6e1178: ldur            x0, [fp, #-0xf0]
    // 0x6e117c: ldur            x2, [fp, #-0xf8]
    // 0x6e1180: mov             x5, x0
    // 0x6e1184: mov             x4, x2
    // 0x6e1188: r17 = -296
    //     0x6e1188: mov             x17, #-0x128
    // 0x6e118c: ldr             x0, [fp, x17]
    // 0x6e1190: ldur            x2, [fp, #-0x100]
    // 0x6e1194: b               #0x6e0f08
    // 0x6e1198: r1 = "Oda güncellendi"
    //     0x6e1198: add             x1, PP, #0x27, lsl #12  ; [pp+0x274a0] "Oda güncellendi"
    //     0x6e119c: ldr             x1, [x1, #0x4a0]
    // 0x6e11a0: r0 = showSuccess()
    //     0x6e11a0: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6e11a4: b               #0x6e11b4
    // 0x6e11a8: r1 = "Oda güncellenemedi"
    //     0x6e11a8: add             x1, PP, #0x27, lsl #12  ; [pp+0x274a8] "Oda güncellenemedi"
    //     0x6e11ac: ldr             x1, [x1, #0x4a8]
    // 0x6e11b0: r0 = showError()
    //     0x6e11b0: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e11b4: ldur            x2, [fp, #-0xe0]
    // 0x6e11b8: r3 = false
    //     0x6e11b8: add             x3, NULL, #0x30  ; false
    // 0x6e11bc: StoreField: r2->field_2b = r3
    //     0x6e11bc: stur            w3, [x2, #0x2b]
    // 0x6e11c0: mov             x1, x2
    // 0x6e11c4: r0 = notifyListeners()
    //     0x6e11c4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e11c8: r17 = -288
    //     0x6e11c8: mov             x17, #-0x120
    // 0x6e11cc: ldr             x0, [fp, x17]
    // 0x6e11d0: r0 = ReturnAsync()
    //     0x6e11d0: b               #0x427094  ; ReturnAsyncStub
    // 0x6e11d4: sub             SP, fp, #0x170
    // 0x6e11d8: ldur            x2, [fp, #-0xe0]
    // 0x6e11dc: r3 = false
    //     0x6e11dc: add             x3, NULL, #0x30  ; false
    // 0x6e11e0: mov             x4, x0
    // 0x6e11e4: stur            x0, [fp, #-0xf0]
    // 0x6e11e8: mov             x0, x1
    // 0x6e11ec: stur            x1, [fp, #-0xf8]
    // 0x6e11f0: r1 = "Oda güncellenemedi"
    //     0x6e11f0: add             x1, PP, #0x27, lsl #12  ; [pp+0x274a8] "Oda güncellenemedi"
    //     0x6e11f4: ldr             x1, [x1, #0x4a8]
    // 0x6e11f8: r0 = showError()
    //     0x6e11f8: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e11fc: ldur            x2, [fp, #-0xe0]
    // 0x6e1200: r0 = false
    //     0x6e1200: add             x0, NULL, #0x30  ; false
    // 0x6e1204: StoreField: r2->field_2b = r0
    //     0x6e1204: stur            w0, [x2, #0x2b]
    // 0x6e1208: mov             x1, x2
    // 0x6e120c: r0 = notifyListeners()
    //     0x6e120c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e1210: r0 = false
    //     0x6e1210: add             x0, NULL, #0x30  ; false
    // 0x6e1214: r0 = ReturnAsyncNotFuture()
    //     0x6e1214: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e1218: sub             SP, fp, #0x170
    // 0x6e121c: ldur            x2, [fp, #-0xe0]
    // 0x6e1220: r3 = false
    //     0x6e1220: add             x3, NULL, #0x30  ; false
    // 0x6e1224: mov             x4, x0
    // 0x6e1228: stur            x0, [fp, #-0xf0]
    // 0x6e122c: mov             x0, x1
    // 0x6e1230: stur            x1, [fp, #-0xf8]
    // 0x6e1234: r3 = false
    //     0x6e1234: add             x3, NULL, #0x30  ; false
    // 0x6e1238: StoreField: r2->field_2b = r3
    //     0x6e1238: stur            w3, [x2, #0x2b]
    // 0x6e123c: mov             x1, x2
    // 0x6e1240: r0 = notifyListeners()
    //     0x6e1240: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e1244: ldur            x0, [fp, #-0xf0]
    // 0x6e1248: ldur            x1, [fp, #-0xf8]
    // 0x6e124c: r0 = ReThrow()
    //     0x6e124c: bl              #0x9262fc  ; ReThrowStub
    // 0x6e1250: brk             #0
    // 0x6e1254: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e1254: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e1258: b               #0x6e0d58
    // 0x6e125c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e125c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e1260: b               #0x6e0f18
  }
  _ getManagerUsersByAgency(/* No info */) {
    // ** addr: 0x6e259c, size: 0xc4
    // 0x6e259c: EnterFrame
    //     0x6e259c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e25a0: mov             fp, SP
    // 0x6e25a4: AllocStack(0x10)
    //     0x6e25a4: sub             SP, SP, #0x10
    // 0x6e25a8: SetupParameters(AdminProvider this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6e25a8: stur            x1, [fp, #-8]
    //     0x6e25ac: stur            x2, [fp, #-0x10]
    // 0x6e25b0: CheckStackOverflow
    //     0x6e25b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e25b4: cmp             SP, x16
    //     0x6e25b8: b.ls            #0x6e2658
    // 0x6e25bc: r1 = 1
    //     0x6e25bc: mov             x1, #1
    // 0x6e25c0: r0 = AllocateContext()
    //     0x6e25c0: bl              #0x927010  ; AllocateContextStub
    // 0x6e25c4: mov             x1, x0
    // 0x6e25c8: ldur            x0, [fp, #-0x10]
    // 0x6e25cc: StoreField: r1->field_f = r0
    //     0x6e25cc: stur            w0, [x1, #0xf]
    // 0x6e25d0: cmp             w0, NULL
    // 0x6e25d4: b.eq            #0x6e25e0
    // 0x6e25d8: LoadField: r2 = r0->field_7
    //     0x6e25d8: ldur            w2, [x0, #7]
    // 0x6e25dc: cbnz            w2, #0x6e25f4
    // 0x6e25e0: ldur            x1, [fp, #-8]
    // 0x6e25e4: r0 = managerUsers()
    //     0x6e25e4: bl              #0x6e2660  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::managerUsers
    // 0x6e25e8: LeaveFrame
    //     0x6e25e8: mov             SP, fp
    //     0x6e25ec: ldp             fp, lr, [SP], #0x10
    // 0x6e25f0: ret
    //     0x6e25f0: ret             
    // 0x6e25f4: ldur            x0, [fp, #-8]
    // 0x6e25f8: LoadField: r3 = r0->field_33
    //     0x6e25f8: ldur            w3, [x0, #0x33]
    // 0x6e25fc: DecompressPointer r3
    //     0x6e25fc: add             x3, x3, HEAP, lsl #32
    // 0x6e2600: mov             x2, x1
    // 0x6e2604: stur            x3, [fp, #-0x10]
    // 0x6e2608: r1 = Function '<anonymous closure>':.
    //     0x6e2608: add             x1, PP, #0x14, lsl #12  ; [pp+0x14790] AnonymousClosure: (0x6e2738), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::getManagerUsersByAgency (0x6e259c)
    //     0x6e260c: ldr             x1, [x1, #0x790]
    // 0x6e2610: r0 = AllocateClosure()
    //     0x6e2610: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e2614: ldur            x1, [fp, #-0x10]
    // 0x6e2618: r2 = LoadClassIdInstr(r1)
    //     0x6e2618: ldur            x2, [x1, #-1]
    //     0x6e261c: ubfx            x2, x2, #0xc, #0x14
    // 0x6e2620: mov             x16, x0
    // 0x6e2624: mov             x0, x2
    // 0x6e2628: mov             x2, x16
    // 0x6e262c: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6e262c: mov             x17, #0xd348
    //     0x6e2630: add             lr, x0, x17
    //     0x6e2634: ldr             lr, [x21, lr, lsl #3]
    //     0x6e2638: blr             lr
    // 0x6e263c: LoadField: r1 = r0->field_7
    //     0x6e263c: ldur            w1, [x0, #7]
    // 0x6e2640: DecompressPointer r1
    //     0x6e2640: add             x1, x1, HEAP, lsl #32
    // 0x6e2644: mov             x2, x0
    // 0x6e2648: r0 = _GrowableList.of()
    //     0x6e2648: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6e264c: LeaveFrame
    //     0x6e264c: mov             SP, fp
    //     0x6e2650: ldp             fp, lr, [SP], #0x10
    // 0x6e2654: ret
    //     0x6e2654: ret             
    // 0x6e2658: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e2658: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e265c: b               #0x6e25bc
  }
  get _ managerUsers(/* No info */) {
    // ** addr: 0x6e2660, size: 0x80
    // 0x6e2660: EnterFrame
    //     0x6e2660: stp             fp, lr, [SP, #-0x10]!
    //     0x6e2664: mov             fp, SP
    // 0x6e2668: AllocStack(0x8)
    //     0x6e2668: sub             SP, SP, #8
    // 0x6e266c: CheckStackOverflow
    //     0x6e266c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e2670: cmp             SP, x16
    //     0x6e2674: b.ls            #0x6e26d8
    // 0x6e2678: LoadField: r0 = r1->field_33
    //     0x6e2678: ldur            w0, [x1, #0x33]
    // 0x6e267c: DecompressPointer r0
    //     0x6e267c: add             x0, x0, HEAP, lsl #32
    // 0x6e2680: stur            x0, [fp, #-8]
    // 0x6e2684: r1 = Function '<anonymous closure>':.
    //     0x6e2684: add             x1, PP, #0x14, lsl #12  ; [pp+0x147a0] AnonymousClosure: (0x6e26e0), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::managerUsers (0x6e2660)
    //     0x6e2688: ldr             x1, [x1, #0x7a0]
    // 0x6e268c: r2 = Null
    //     0x6e268c: mov             x2, NULL
    // 0x6e2690: r0 = AllocateClosure()
    //     0x6e2690: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e2694: ldur            x1, [fp, #-8]
    // 0x6e2698: r2 = LoadClassIdInstr(r1)
    //     0x6e2698: ldur            x2, [x1, #-1]
    //     0x6e269c: ubfx            x2, x2, #0xc, #0x14
    // 0x6e26a0: mov             x16, x0
    // 0x6e26a4: mov             x0, x2
    // 0x6e26a8: mov             x2, x16
    // 0x6e26ac: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6e26ac: mov             x17, #0xd348
    //     0x6e26b0: add             lr, x0, x17
    //     0x6e26b4: ldr             lr, [x21, lr, lsl #3]
    //     0x6e26b8: blr             lr
    // 0x6e26bc: LoadField: r1 = r0->field_7
    //     0x6e26bc: ldur            w1, [x0, #7]
    // 0x6e26c0: DecompressPointer r1
    //     0x6e26c0: add             x1, x1, HEAP, lsl #32
    // 0x6e26c4: mov             x2, x0
    // 0x6e26c8: r0 = _GrowableList.of()
    //     0x6e26c8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6e26cc: LeaveFrame
    //     0x6e26cc: mov             SP, fp
    //     0x6e26d0: ldp             fp, lr, [SP], #0x10
    // 0x6e26d4: ret
    //     0x6e26d4: ret             
    // 0x6e26d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e26d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e26dc: b               #0x6e2678
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6e26e0, size: 0x58
    // 0x6e26e0: EnterFrame
    //     0x6e26e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e26e4: mov             fp, SP
    // 0x6e26e8: AllocStack(0x10)
    //     0x6e26e8: sub             SP, SP, #0x10
    // 0x6e26ec: CheckStackOverflow
    //     0x6e26ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e26f0: cmp             SP, x16
    //     0x6e26f4: b.ls            #0x6e2730
    // 0x6e26f8: ldr             x0, [fp, #0x10]
    // 0x6e26fc: LoadField: r1 = r0->field_f
    //     0x6e26fc: ldur            w1, [x0, #0xf]
    // 0x6e2700: DecompressPointer r1
    //     0x6e2700: add             x1, x1, HEAP, lsl #32
    // 0x6e2704: r0 = LoadClassIdInstr(r1)
    //     0x6e2704: ldur            x0, [x1, #-1]
    //     0x6e2708: ubfx            x0, x0, #0xc, #0x14
    // 0x6e270c: r16 = "yonetici"
    //     0x6e270c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x6e2710: ldr             x16, [x16, #0x798]
    // 0x6e2714: stp             x16, x1, [SP]
    // 0x6e2718: mov             lr, x0
    // 0x6e271c: ldr             lr, [x21, lr, lsl #3]
    // 0x6e2720: blr             lr
    // 0x6e2724: LeaveFrame
    //     0x6e2724: mov             SP, fp
    //     0x6e2728: ldp             fp, lr, [SP], #0x10
    // 0x6e272c: ret
    //     0x6e272c: ret             
    // 0x6e2730: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e2730: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e2734: b               #0x6e26f8
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6e2738, size: 0xa8
    // 0x6e2738: EnterFrame
    //     0x6e2738: stp             fp, lr, [SP, #-0x10]!
    //     0x6e273c: mov             fp, SP
    // 0x6e2740: AllocStack(0x18)
    //     0x6e2740: sub             SP, SP, #0x18
    // 0x6e2744: SetupParameters([dynamic _ /* r0 */])
    //     0x6e2744: ldr             x0, [fp, #0x18]
    //     0x6e2748: ldur            w1, [x0, #0x17]
    //     0x6e274c: add             x1, x1, HEAP, lsl #32
    //     0x6e2750: stur            x1, [fp, #-8]
    // 0x6e2754: CheckStackOverflow
    //     0x6e2754: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e2758: cmp             SP, x16
    //     0x6e275c: b.ls            #0x6e27d8
    // 0x6e2760: ldr             x2, [fp, #0x10]
    // 0x6e2764: LoadField: r0 = r2->field_f
    //     0x6e2764: ldur            w0, [x2, #0xf]
    // 0x6e2768: DecompressPointer r0
    //     0x6e2768: add             x0, x0, HEAP, lsl #32
    // 0x6e276c: r3 = LoadClassIdInstr(r0)
    //     0x6e276c: ldur            x3, [x0, #-1]
    //     0x6e2770: ubfx            x3, x3, #0xc, #0x14
    // 0x6e2774: r16 = "yonetici"
    //     0x6e2774: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x6e2778: ldr             x16, [x16, #0x798]
    // 0x6e277c: stp             x16, x0, [SP]
    // 0x6e2780: mov             x0, x3
    // 0x6e2784: mov             lr, x0
    // 0x6e2788: ldr             lr, [x21, lr, lsl #3]
    // 0x6e278c: blr             lr
    // 0x6e2790: tbnz            w0, #4, #0x6e27c8
    // 0x6e2794: ldr             x1, [fp, #0x10]
    // 0x6e2798: ldur            x0, [fp, #-8]
    // 0x6e279c: LoadField: r2 = r1->field_4b
    //     0x6e279c: ldur            w2, [x1, #0x4b]
    // 0x6e27a0: DecompressPointer r2
    //     0x6e27a0: add             x2, x2, HEAP, lsl #32
    // 0x6e27a4: LoadField: r1 = r0->field_f
    //     0x6e27a4: ldur            w1, [x0, #0xf]
    // 0x6e27a8: DecompressPointer r1
    //     0x6e27a8: add             x1, x1, HEAP, lsl #32
    // 0x6e27ac: r0 = LoadClassIdInstr(r2)
    //     0x6e27ac: ldur            x0, [x2, #-1]
    //     0x6e27b0: ubfx            x0, x0, #0xc, #0x14
    // 0x6e27b4: stp             x1, x2, [SP]
    // 0x6e27b8: mov             lr, x0
    // 0x6e27bc: ldr             lr, [x21, lr, lsl #3]
    // 0x6e27c0: blr             lr
    // 0x6e27c4: b               #0x6e27cc
    // 0x6e27c8: r0 = false
    //     0x6e27c8: add             x0, NULL, #0x30  ; false
    // 0x6e27cc: LeaveFrame
    //     0x6e27cc: mov             SP, fp
    //     0x6e27d0: ldp             fp, lr, [SP], #0x10
    // 0x6e27d4: ret
    //     0x6e27d4: ret             
    // 0x6e27d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e27d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e27dc: b               #0x6e2760
  }
  _ createTrip(/* No info */) async {
    // ** addr: 0x6e2a94, size: 0x3e8
    // 0x6e2a94: EnterFrame
    //     0x6e2a94: stp             fp, lr, [SP, #-0x10]!
    //     0x6e2a98: mov             fp, SP
    // 0x6e2a9c: AllocStack(0x118)
    //     0x6e2a9c: sub             SP, SP, #0x118
    // 0x6e2aa0: SetupParameters(AdminProvider this /* r1 => r4, fp-0xc0 */, dynamic _ /* r2 => r1, fp-0xc8 */, dynamic _ /* r3 => r3, fp-0xd0 */, dynamic _ /* r5 => r2, fp-0xd8 */, dynamic _ /* r6 => r6, fp-0xe0 */, dynamic _ /* r7 => r7, fp-0xe8 */, dynamic _ /* r5, fp-0xb8 */)
    //     0x6e2aa0: stur            NULL, [fp, #-8]
    //     0x6e2aa4: mov             x0, #0
    //     0x6e2aa8: mov             x4, x1
    //     0x6e2aac: stur            x1, [fp, #-0xc0]
    //     0x6e2ab0: mov             x1, x2
    //     0x6e2ab4: stur            x2, [fp, #-0xc8]
    //     0x6e2ab8: mov             x2, x5
    //     0x6e2abc: stur            x3, [fp, #-0xd0]
    //     0x6e2ac0: stur            x5, [fp, #-0xd8]
    //     0x6e2ac4: stur            x6, [fp, #-0xe0]
    //     0x6e2ac8: stur            x7, [fp, #-0xe8]
    //     0x6e2acc: add             x5, fp, w0, sxtw #2
    //     0x6e2ad0: ldr             x5, [x5, #0x10]
    //     0x6e2ad4: stur            x5, [fp, #-0xb8]
    // 0x6e2ad8: CheckStackOverflow
    //     0x6e2ad8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e2adc: cmp             SP, x16
    //     0x6e2ae0: b.ls            #0x6e2e68
    // 0x6e2ae4: InitAsync() -> Future<String?>
    //     0x6e2ae4: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6e2ae8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e2aec: ldur            x0, [fp, #-0xc0]
    // 0x6e2af0: r1 = true
    //     0x6e2af0: add             x1, NULL, #0x20  ; true
    // 0x6e2af4: StoreField: r0->field_2b = r1
    //     0x6e2af4: stur            w1, [x0, #0x2b]
    // 0x6e2af8: mov             x1, x0
    // 0x6e2afc: r0 = notifyListeners()
    //     0x6e2afc: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e2b00: r0 = LoadStaticField(0xfe4)
    //     0x6e2b00: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6e2b04: ldr             x0, [x0, #0x1fc8]
    // 0x6e2b08: cmp             w0, NULL
    // 0x6e2b0c: b.ne            #0x6e2b18
    // 0x6e2b10: r6 = Null
    //     0x6e2b10: mov             x6, NULL
    // 0x6e2b14: b               #0x6e2b24
    // 0x6e2b18: LoadField: r1 = r0->field_4b
    //     0x6e2b18: ldur            w1, [x0, #0x4b]
    // 0x6e2b1c: DecompressPointer r1
    //     0x6e2b1c: add             x1, x1, HEAP, lsl #32
    // 0x6e2b20: mov             x6, x1
    // 0x6e2b24: ldur            x1, [fp, #-0xc0]
    // 0x6e2b28: ldur            x4, [fp, #-0xc8]
    // 0x6e2b2c: ldur            x3, [fp, #-0xd0]
    // 0x6e2b30: ldur            x2, [fp, #-0xe0]
    // 0x6e2b34: ldur            x0, [fp, #-0xe8]
    // 0x6e2b38: ldur            x5, [fp, #-0xb8]
    // 0x6e2b3c: stur            x6, [fp, #-0xf0]
    // 0x6e2b40: r0 = TripModel()
    //     0x6e2b40: bl              #0x5da4b4  ; AllocateTripModelStub -> TripModel (size=0x2c)
    // 0x6e2b44: mov             x3, x0
    // 0x6e2b48: r0 = ""
    //     0x6e2b48: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6e2b4c: stur            x3, [fp, #-0x100]
    // 0x6e2b50: StoreField: r3->field_7 = r0
    //     0x6e2b50: stur            w0, [x3, #7]
    // 0x6e2b54: ldur            x0, [fp, #-0xe0]
    // 0x6e2b58: StoreField: r3->field_b = r0
    //     0x6e2b58: stur            w0, [x3, #0xb]
    // 0x6e2b5c: ldur            x4, [fp, #-0xd0]
    // 0x6e2b60: StoreField: r3->field_f = r4
    //     0x6e2b60: stur            w4, [x3, #0xf]
    // 0x6e2b64: ldur            x5, [fp, #-0xb8]
    // 0x6e2b68: StoreField: r3->field_13 = r5
    //     0x6e2b68: stur            w5, [x3, #0x13]
    // 0x6e2b6c: ldur            x6, [fp, #-0xc8]
    // 0x6e2b70: ArrayStore: r3[0] = r6  ; List_4
    //     0x6e2b70: stur            w6, [x3, #0x17]
    // 0x6e2b74: ldur            x7, [fp, #-0xe8]
    // 0x6e2b78: StoreField: r3->field_1b = r7
    //     0x6e2b78: stur            w7, [x3, #0x1b]
    // 0x6e2b7c: ldur            x8, [fp, #-0xf0]
    // 0x6e2b80: StoreField: r3->field_1f = r8
    //     0x6e2b80: stur            w8, [x3, #0x1f]
    // 0x6e2b84: ldur            x9, [fp, #-0xc0]
    // 0x6e2b88: LoadField: r10 = r9->field_23
    //     0x6e2b88: ldur            w10, [x9, #0x23]
    // 0x6e2b8c: DecompressPointer r10
    //     0x6e2b8c: add             x10, x10, HEAP, lsl #32
    // 0x6e2b90: mov             x1, x10
    // 0x6e2b94: mov             x2, x3
    // 0x6e2b98: stur            x10, [fp, #-0xf8]
    // 0x6e2b9c: r0 = createTrip()
    //     0x6e2b9c: bl              #0x6e3398  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createTrip
    // 0x6e2ba0: mov             x1, x0
    // 0x6e2ba4: r17 = -264
    //     0x6e2ba4: mov             x17, #-0x108
    // 0x6e2ba8: str             x1, [fp, x17]
    // 0x6e2bac: r0 = Await()
    //     0x6e2bac: bl              #0x3dd188  ; AwaitStub
    // 0x6e2bb0: stur            x0, [fp, #-0xb8]
    // 0x6e2bb4: cmp             w0, NULL
    // 0x6e2bb8: b.eq            #0x6e2da0
    // 0x6e2bbc: ldur            x2, [fp, #-0xc0]
    // 0x6e2bc0: ldur            x3, [fp, #-0xd8]
    // 0x6e2bc4: str             x0, [SP]
    // 0x6e2bc8: ldur            x1, [fp, #-0x100]
    // 0x6e2bcc: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x6e2bcc: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x6e2bd0: ldr             x4, [x4, #0xb78]
    // 0x6e2bd4: r0 = copyWith()
    //     0x6e2bd4: bl              #0x6e3080  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::copyWith
    // 0x6e2bd8: r1 = Null
    //     0x6e2bd8: mov             x1, NULL
    // 0x6e2bdc: r2 = 2
    //     0x6e2bdc: mov             x2, #2
    // 0x6e2be0: stur            x0, [fp, #-0xc8]
    // 0x6e2be4: r0 = AllocateArray()
    //     0x6e2be4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e2be8: mov             x2, x0
    // 0x6e2bec: ldur            x0, [fp, #-0xc8]
    // 0x6e2bf0: stur            x2, [fp, #-0xd0]
    // 0x6e2bf4: StoreField: r2->field_f = r0
    //     0x6e2bf4: stur            w0, [x2, #0xf]
    // 0x6e2bf8: r1 = <TripModel>
    //     0x6e2bf8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x6e2bfc: ldr             x1, [x1, #0xda0]
    // 0x6e2c00: r0 = AllocateGrowableArray()
    //     0x6e2c00: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e2c04: mov             x3, x0
    // 0x6e2c08: ldur            x0, [fp, #-0xd0]
    // 0x6e2c0c: stur            x3, [fp, #-0xc8]
    // 0x6e2c10: StoreField: r3->field_f = r0
    //     0x6e2c10: stur            w0, [x3, #0xf]
    // 0x6e2c14: r0 = 2
    //     0x6e2c14: mov             x0, #2
    // 0x6e2c18: StoreField: r3->field_b = r0
    //     0x6e2c18: stur            w0, [x3, #0xb]
    // 0x6e2c1c: ldur            x0, [fp, #-0xc0]
    // 0x6e2c20: LoadField: r2 = r0->field_37
    //     0x6e2c20: ldur            w2, [x0, #0x37]
    // 0x6e2c24: DecompressPointer r2
    //     0x6e2c24: add             x2, x2, HEAP, lsl #32
    // 0x6e2c28: mov             x1, x3
    // 0x6e2c2c: r0 = addAll()
    //     0x6e2c2c: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6e2c30: ldur            x0, [fp, #-0xc8]
    // 0x6e2c34: ldur            x2, [fp, #-0xc0]
    // 0x6e2c38: StoreField: r2->field_37 = r0
    //     0x6e2c38: stur            w0, [x2, #0x37]
    //     0x6e2c3c: ldurb           w16, [x2, #-1]
    //     0x6e2c40: ldurb           w17, [x0, #-1]
    //     0x6e2c44: and             x16, x17, x16, lsr #2
    //     0x6e2c48: tst             x16, HEAP, lsr #32
    //     0x6e2c4c: b.eq            #0x6e2c54
    //     0x6e2c50: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6e2c54: ldur            x0, [fp, #-0xd8]
    // 0x6e2c58: LoadField: r1 = r0->field_b
    //     0x6e2c58: ldur            w1, [x0, #0xb]
    // 0x6e2c5c: r3 = LoadInt32Instr(r1)
    //     0x6e2c5c: sbfx            x3, x1, #1, #0x1f
    // 0x6e2c60: r17 = -272
    //     0x6e2c60: mov             x17, #-0x110
    // 0x6e2c64: str             x3, [fp, x17]
    // 0x6e2c68: cbz             x3, #0x6e2d94
    // 0x6e2c6c: LoadField: r4 = r0->field_7
    //     0x6e2c6c: ldur            w4, [x0, #7]
    // 0x6e2c70: DecompressPointer r4
    //     0x6e2c70: add             x4, x4, HEAP, lsl #32
    // 0x6e2c74: mov             x1, x4
    // 0x6e2c78: stur            x4, [fp, #-0xc8]
    // 0x6e2c7c: r0 = ListIterator()
    //     0x6e2c7c: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x6e2c80: mov             x5, x0
    // 0x6e2c84: ldur            x4, [fp, #-0xd8]
    // 0x6e2c88: stur            x5, [fp, #-0xd0]
    // 0x6e2c8c: StoreField: r5->field_b = r4
    //     0x6e2c8c: stur            w4, [x5, #0xb]
    // 0x6e2c90: r17 = -272
    //     0x6e2c90: mov             x17, #-0x110
    // 0x6e2c94: ldr             x6, [fp, x17]
    // 0x6e2c98: StoreField: r5->field_f = r6
    //     0x6e2c98: stur            x6, [x5, #0xf]
    // 0x6e2c9c: ArrayStore: r5[0] = rZR  ; List_8
    //     0x6e2c9c: stur            xzr, [x5, #0x17]
    // 0x6e2ca0: CheckStackOverflow
    //     0x6e2ca0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e2ca4: cmp             SP, x16
    //     0x6e2ca8: b.ls            #0x6e2e70
    // 0x6e2cac: LoadField: r0 = r4->field_b
    //     0x6e2cac: ldur            w0, [x4, #0xb]
    // 0x6e2cb0: r1 = LoadInt32Instr(r0)
    //     0x6e2cb0: sbfx            x1, x0, #1, #0x1f
    // 0x6e2cb4: cmp             x6, x1
    // 0x6e2cb8: b.ne            #0x6e2dfc
    // 0x6e2cbc: ArrayLoad: r2 = r5[0]  ; List_8
    //     0x6e2cbc: ldur            x2, [x5, #0x17]
    // 0x6e2cc0: cmp             x2, x1
    // 0x6e2cc4: b.ge            #0x6e2d48
    // 0x6e2cc8: mov             x0, x1
    // 0x6e2ccc: mov             x1, x2
    // 0x6e2cd0: cmp             x1, x0
    // 0x6e2cd4: b.hs            #0x6e2e78
    // 0x6e2cd8: LoadField: r0 = r4->field_f
    //     0x6e2cd8: ldur            w0, [x4, #0xf]
    // 0x6e2cdc: DecompressPointer r0
    //     0x6e2cdc: add             x0, x0, HEAP, lsl #32
    // 0x6e2ce0: ArrayLoad: r7 = r0[r2]  ; Unknown_4
    //     0x6e2ce0: add             x16, x0, x2, lsl #2
    //     0x6e2ce4: ldur            w7, [x16, #0xf]
    // 0x6e2ce8: DecompressPointer r7
    //     0x6e2ce8: add             x7, x7, HEAP, lsl #32
    // 0x6e2cec: mov             x0, x7
    // 0x6e2cf0: stur            x7, [fp, #-0xc8]
    // 0x6e2cf4: StoreField: r5->field_1f = r0
    //     0x6e2cf4: stur            w0, [x5, #0x1f]
    //     0x6e2cf8: ldurb           w16, [x5, #-1]
    //     0x6e2cfc: ldurb           w17, [x0, #-1]
    //     0x6e2d00: and             x16, x17, x16, lsr #2
    //     0x6e2d04: tst             x16, HEAP, lsr #32
    //     0x6e2d08: b.eq            #0x6e2d10
    //     0x6e2d0c: bl              #0x926810  ; WriteBarrierWrappersStub
    // 0x6e2d10: add             x0, x2, #1
    // 0x6e2d14: ArrayStore: r5[0] = r0  ; List_8
    //     0x6e2d14: stur            x0, [x5, #0x17]
    // 0x6e2d18: ldur            x1, [fp, #-0xf8]
    // 0x6e2d1c: ldur            x2, [fp, #-0xb8]
    // 0x6e2d20: mov             x3, x7
    // 0x6e2d24: r0 = assignTripManager()
    //     0x6e2d24: bl              #0x6e2e7c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::assignTripManager
    // 0x6e2d28: mov             x1, x0
    // 0x6e2d2c: stur            x1, [fp, #-0xe0]
    // 0x6e2d30: r0 = Await()
    //     0x6e2d30: bl              #0x3dd188  ; AwaitStub
    // 0x6e2d34: ldur            x4, [fp, #-0xd8]
    // 0x6e2d38: ldur            x5, [fp, #-0xd0]
    // 0x6e2d3c: r17 = -272
    //     0x6e2d3c: mov             x17, #-0x110
    // 0x6e2d40: ldr             x6, [fp, x17]
    // 0x6e2d44: b               #0x6e2ca0
    // 0x6e2d48: ldur            x3, [fp, #-0xc0]
    // 0x6e2d4c: mov             x0, x5
    // 0x6e2d50: StoreField: r0->field_1f = rNULL
    //     0x6e2d50: stur            NULL, [x0, #0x1f]
    // 0x6e2d54: LoadField: r0 = r3->field_47
    //     0x6e2d54: ldur            w0, [x3, #0x47]
    // 0x6e2d58: DecompressPointer r0
    //     0x6e2d58: add             x0, x0, HEAP, lsl #32
    // 0x6e2d5c: ldur            x2, [fp, #-0xd8]
    // 0x6e2d60: stur            x0, [fp, #-0xc8]
    // 0x6e2d64: r1 = <String>
    //     0x6e2d64: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e2d68: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e2d68: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e2d6c: r0 = List.from()
    //     0x6e2d6c: bl              #0x490278  ; [dart:core] List::List.from
    // 0x6e2d70: ldur            x1, [fp, #-0xc8]
    // 0x6e2d74: r2 = LoadClassIdInstr(r1)
    //     0x6e2d74: ldur            x2, [x1, #-1]
    //     0x6e2d78: ubfx            x2, x2, #0xc, #0x14
    // 0x6e2d7c: mov             x3, x0
    // 0x6e2d80: mov             x0, x2
    // 0x6e2d84: ldur            x2, [fp, #-0xb8]
    // 0x6e2d88: r0 = GDT[cid_x0 + 0x571]()
    //     0x6e2d88: add             lr, x0, #0x571
    //     0x6e2d8c: ldr             lr, [x21, lr, lsl #3]
    //     0x6e2d90: blr             lr
    // 0x6e2d94: r1 = "Sefer oluşturuldu"
    //     0x6e2d94: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b80] "Sefer oluşturuldu"
    //     0x6e2d98: ldr             x1, [x1, #0xb80]
    // 0x6e2d9c: r0 = showSuccess()
    //     0x6e2d9c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6e2da0: ldur            x2, [fp, #-0xc0]
    // 0x6e2da4: r3 = false
    //     0x6e2da4: add             x3, NULL, #0x30  ; false
    // 0x6e2da8: StoreField: r2->field_2b = r3
    //     0x6e2da8: stur            w3, [x2, #0x2b]
    // 0x6e2dac: mov             x1, x2
    // 0x6e2db0: r0 = notifyListeners()
    //     0x6e2db0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e2db4: ldur            x0, [fp, #-0xb8]
    // 0x6e2db8: r0 = ReturnAsync()
    //     0x6e2db8: b               #0x427094  ; ReturnAsyncStub
    // 0x6e2dbc: sub             SP, fp, #0x118
    // 0x6e2dc0: ldur            x2, [fp, #-0xc0]
    // 0x6e2dc4: r3 = false
    //     0x6e2dc4: add             x3, NULL, #0x30  ; false
    // 0x6e2dc8: mov             x4, x0
    // 0x6e2dcc: stur            x0, [fp, #-0xc8]
    // 0x6e2dd0: mov             x0, x1
    // 0x6e2dd4: stur            x1, [fp, #-0xe0]
    // 0x6e2dd8: r1 = "Sefer oluşturulamadı"
    //     0x6e2dd8: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b88] "Sefer oluşturulamadı"
    //     0x6e2ddc: ldr             x1, [x1, #0xb88]
    // 0x6e2de0: r0 = showError()
    //     0x6e2de0: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e2de4: ldur            x1, [fp, #-0xc0]
    // 0x6e2de8: r2 = false
    //     0x6e2de8: add             x2, NULL, #0x30  ; false
    // 0x6e2dec: StoreField: r1->field_2b = r2
    //     0x6e2dec: stur            w2, [x1, #0x2b]
    // 0x6e2df0: r0 = notifyListeners()
    //     0x6e2df0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e2df4: r0 = Null
    //     0x6e2df4: mov             x0, NULL
    // 0x6e2df8: r0 = ReturnAsyncNotFuture()
    //     0x6e2df8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e2dfc: ldur            x1, [fp, #-0xc0]
    // 0x6e2e00: mov             x3, x4
    // 0x6e2e04: mov             x0, x5
    // 0x6e2e08: r2 = false
    //     0x6e2e08: add             x2, NULL, #0x30  ; false
    // 0x6e2e0c: r0 = ConcurrentModificationError()
    //     0x6e2e0c: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6e2e10: mov             x2, x0
    // 0x6e2e14: ldur            x1, [fp, #-0xd8]
    // 0x6e2e18: stur            x2, [fp, #-0xc8]
    // 0x6e2e1c: StoreField: r2->field_b = r1
    //     0x6e2e1c: stur            w1, [x2, #0xb]
    // 0x6e2e20: mov             x0, x2
    // 0x6e2e24: r0 = Throw()
    //     0x6e2e24: bl              #0x926328  ; ThrowStub
    // 0x6e2e28: brk             #0
    // 0x6e2e2c: sub             SP, fp, #0x118
    // 0x6e2e30: ldur            x2, [fp, #-0xc0]
    // 0x6e2e34: r3 = false
    //     0x6e2e34: add             x3, NULL, #0x30  ; false
    // 0x6e2e38: mov             x4, x0
    // 0x6e2e3c: stur            x0, [fp, #-0xb8]
    // 0x6e2e40: mov             x0, x1
    // 0x6e2e44: stur            x1, [fp, #-0xc8]
    // 0x6e2e48: r3 = false
    //     0x6e2e48: add             x3, NULL, #0x30  ; false
    // 0x6e2e4c: StoreField: r2->field_2b = r3
    //     0x6e2e4c: stur            w3, [x2, #0x2b]
    // 0x6e2e50: mov             x1, x2
    // 0x6e2e54: r0 = notifyListeners()
    //     0x6e2e54: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e2e58: ldur            x0, [fp, #-0xb8]
    // 0x6e2e5c: ldur            x1, [fp, #-0xc8]
    // 0x6e2e60: r0 = ReThrow()
    //     0x6e2e60: bl              #0x9262fc  ; ReThrowStub
    // 0x6e2e64: brk             #0
    // 0x6e2e68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e2e68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e2e6c: b               #0x6e2ae4
    // 0x6e2e70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e2e70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e2e74: b               #0x6e2cac
    // 0x6e2e78: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e2e78: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ updateTrip(/* No info */) async {
    // ** addr: 0x6e3660, size: 0x6b4
    // 0x6e3660: EnterFrame
    //     0x6e3660: stp             fp, lr, [SP, #-0x10]!
    //     0x6e3664: mov             fp, SP
    // 0x6e3668: AllocStack(0x158)
    //     0x6e3668: sub             SP, SP, #0x158
    // 0x6e366c: SetupParameters(AdminProvider this /* r1 => r4 */)
    //     0x6e366c: stur            NULL, [fp, #-8]
    //     0x6e3670: mov             x0, #0
    //     0x6e3674: mov             x4, x1
    //     0x6e3678: mov             x17, #-0x108
    // 0x6e3678: r17 = -264
    // 0x6e367c: str             x1, [fp, x17]
    // 0x6e3680: mov             x1, x5
    // 0x6e3684: r17 = -272
    //     0x6e3684: mov             x17, #-0x110
    // 0x6e3688: str             x2, [fp, x17]
    // 0x6e368c: r17 = -280
    //     0x6e368c: mov             x17, #-0x118
    // 0x6e3690: str             x3, [fp, x17]
    // 0x6e3694: r17 = -288
    //     0x6e3694: mov             x17, #-0x120
    // 0x6e3698: str             x5, [fp, x17]
    // 0x6e369c: r17 = -296
    //     0x6e369c: mov             x17, #-0x128
    // 0x6e36a0: str             x6, [fp, x17]
    // 0x6e36a4: r17 = -304
    //     0x6e36a4: mov             x17, #-0x130
    // 0x6e36a8: str             x7, [fp, x17]
    // 0x6e36ac: add             x5, fp, w0, sxtw #2
    // 0x6e36b0: ldr             x5, [x5, #0x18]
    // 0x6e36b4: stur            x5, [fp, #-0x100]
    // 0x6e36b8: add             x8, fp, w0, sxtw #2
    // 0x6e36bc: ldr             x8, [x8, #0x10]
    // 0x6e36c0: stur            x8, [fp, #-0xf8]
    // 0x6e36c4: CheckStackOverflow
    //     0x6e36c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e36c8: cmp             SP, x16
    //     0x6e36cc: b.ls            #0x6e3cf8
    // 0x6e36d0: r1 = 6
    //     0x6e36d0: mov             x1, #6
    // 0x6e36d4: r0 = AllocateContext()
    //     0x6e36d4: bl              #0x927010  ; AllocateContextStub
    // 0x6e36d8: mov             x1, x0
    // 0x6e36dc: r17 = -272
    //     0x6e36dc: mov             x17, #-0x110
    // 0x6e36e0: ldr             x0, [fp, x17]
    // 0x6e36e4: r17 = -312
    //     0x6e36e4: mov             x17, #-0x138
    // 0x6e36e8: str             x1, [fp, x17]
    // 0x6e36ec: StoreField: r1->field_f = r0
    //     0x6e36ec: stur            w0, [x1, #0xf]
    // 0x6e36f0: r17 = -280
    //     0x6e36f0: mov             x17, #-0x118
    // 0x6e36f4: ldr             x0, [fp, x17]
    // 0x6e36f8: StoreField: r1->field_13 = r0
    //     0x6e36f8: stur            w0, [x1, #0x13]
    // 0x6e36fc: r17 = -296
    //     0x6e36fc: mov             x17, #-0x128
    // 0x6e3700: ldr             x0, [fp, x17]
    // 0x6e3704: ArrayStore: r1[0] = r0  ; List_4
    //     0x6e3704: stur            w0, [x1, #0x17]
    // 0x6e3708: r17 = -304
    //     0x6e3708: mov             x17, #-0x130
    // 0x6e370c: ldr             x0, [fp, x17]
    // 0x6e3710: StoreField: r1->field_1b = r0
    //     0x6e3710: stur            w0, [x1, #0x1b]
    // 0x6e3714: ldur            x0, [fp, #-0x100]
    // 0x6e3718: StoreField: r1->field_1f = r0
    //     0x6e3718: stur            w0, [x1, #0x1f]
    // 0x6e371c: ldur            x0, [fp, #-0xf8]
    // 0x6e3720: StoreField: r1->field_23 = r0
    //     0x6e3720: stur            w0, [x1, #0x23]
    // 0x6e3724: InitAsync() -> Future<bool>
    //     0x6e3724: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6e3728: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e372c: r17 = -264
    //     0x6e372c: mov             x17, #-0x108
    // 0x6e3730: ldr             x0, [fp, x17]
    // 0x6e3734: r17 = -312
    //     0x6e3734: mov             x17, #-0x138
    // 0x6e3738: ldr             x2, [fp, x17]
    // 0x6e373c: r1 = true
    //     0x6e373c: add             x1, NULL, #0x20  ; true
    // 0x6e3740: StoreField: r0->field_2b = r1
    //     0x6e3740: stur            w1, [x0, #0x2b]
    // 0x6e3744: mov             x1, x0
    // 0x6e3748: r0 = notifyListeners()
    //     0x6e3748: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e374c: r16 = <String, dynamic>
    //     0x6e374c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6e3750: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x6e3754: stp             lr, x16, [SP]
    // 0x6e3758: r0 = Map._fromLiteral()
    //     0x6e3758: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6e375c: mov             x4, x0
    // 0x6e3760: r17 = -312
    //     0x6e3760: mov             x17, #-0x138
    // 0x6e3764: ldr             x0, [fp, x17]
    // 0x6e3768: stur            x4, [fp, #-0xf8]
    // 0x6e376c: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6e376c: ldur            w3, [x0, #0x17]
    // 0x6e3770: DecompressPointer r3
    //     0x6e3770: add             x3, x3, HEAP, lsl #32
    // 0x6e3774: mov             x1, x4
    // 0x6e3778: r2 = "name"
    //     0x6e3778: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6e377c: r0 = []=()
    //     0x6e377c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e3780: r17 = -312
    //     0x6e3780: mov             x17, #-0x138
    // 0x6e3784: ldr             x0, [fp, x17]
    // 0x6e3788: LoadField: r3 = r0->field_13
    //     0x6e3788: ldur            w3, [x0, #0x13]
    // 0x6e378c: DecompressPointer r3
    //     0x6e378c: add             x3, x3, HEAP, lsl #32
    // 0x6e3790: cmp             w3, NULL
    // 0x6e3794: b.eq            #0x6e37a4
    // 0x6e3798: ldur            x1, [fp, #-0xf8]
    // 0x6e379c: r2 = "location"
    //     0x6e379c: ldr             x2, [PP, #0x1e28]  ; [pp+0x1e28] "location"
    // 0x6e37a0: r0 = []=()
    //     0x6e37a0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e37a4: r17 = -312
    //     0x6e37a4: mov             x17, #-0x138
    // 0x6e37a8: ldr             x0, [fp, x17]
    // 0x6e37ac: LoadField: r3 = r0->field_1f
    //     0x6e37ac: ldur            w3, [x0, #0x1f]
    // 0x6e37b0: DecompressPointer r3
    //     0x6e37b0: add             x3, x3, HEAP, lsl #32
    // 0x6e37b4: cmp             w3, NULL
    // 0x6e37b8: b.eq            #0x6e37cc
    // 0x6e37bc: ldur            x1, [fp, #-0xf8]
    // 0x6e37c0: r2 = "start_date"
    //     0x6e37c0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x6e37c4: ldr             x2, [x2, #0x48]
    // 0x6e37c8: r0 = []=()
    //     0x6e37c8: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e37cc: r17 = -312
    //     0x6e37cc: mov             x17, #-0x138
    // 0x6e37d0: ldr             x0, [fp, x17]
    // 0x6e37d4: LoadField: r3 = r0->field_f
    //     0x6e37d4: ldur            w3, [x0, #0xf]
    // 0x6e37d8: DecompressPointer r3
    //     0x6e37d8: add             x3, x3, HEAP, lsl #32
    // 0x6e37dc: cmp             w3, NULL
    // 0x6e37e0: b.eq            #0x6e37f4
    // 0x6e37e4: ldur            x1, [fp, #-0xf8]
    // 0x6e37e8: r2 = "end_date"
    //     0x6e37e8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14050] "end_date"
    //     0x6e37ec: ldr             x2, [x2, #0x50]
    // 0x6e37f0: r0 = []=()
    //     0x6e37f0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e37f4: r17 = -312
    //     0x6e37f4: mov             x17, #-0x138
    // 0x6e37f8: ldr             x0, [fp, x17]
    // 0x6e37fc: LoadField: r3 = r0->field_1b
    //     0x6e37fc: ldur            w3, [x0, #0x1b]
    // 0x6e3800: DecompressPointer r3
    //     0x6e3800: add             x3, x3, HEAP, lsl #32
    // 0x6e3804: cmp             w3, NULL
    // 0x6e3808: b.eq            #0x6e381c
    // 0x6e380c: ldur            x1, [fp, #-0xf8]
    // 0x6e3810: r2 = "note"
    //     0x6e3810: add             x2, PP, #0x14, lsl #12  ; [pp+0x14030] "note"
    //     0x6e3814: ldr             x2, [x2, #0x30]
    // 0x6e3818: r0 = []=()
    //     0x6e3818: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e381c: r17 = -264
    //     0x6e381c: mov             x17, #-0x108
    // 0x6e3820: ldr             x4, [fp, x17]
    // 0x6e3824: r17 = -312
    //     0x6e3824: mov             x17, #-0x138
    // 0x6e3828: ldr             x0, [fp, x17]
    // 0x6e382c: LoadField: r5 = r4->field_23
    //     0x6e382c: ldur            w5, [x4, #0x23]
    // 0x6e3830: DecompressPointer r5
    //     0x6e3830: add             x5, x5, HEAP, lsl #32
    // 0x6e3834: stur            x5, [fp, #-0x100]
    // 0x6e3838: LoadField: r2 = r0->field_23
    //     0x6e3838: ldur            w2, [x0, #0x23]
    // 0x6e383c: DecompressPointer r2
    //     0x6e383c: add             x2, x2, HEAP, lsl #32
    // 0x6e3840: mov             x1, x5
    // 0x6e3844: ldur            x3, [fp, #-0xf8]
    // 0x6e3848: r0 = updateTrip()
    //     0x6e3848: bl              #0x6e3f08  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateTrip
    // 0x6e384c: mov             x1, x0
    // 0x6e3850: r17 = -272
    //     0x6e3850: mov             x17, #-0x110
    // 0x6e3854: str             x1, [fp, x17]
    // 0x6e3858: r0 = Await()
    //     0x6e3858: bl              #0x3dd188  ; AwaitStub
    // 0x6e385c: r17 = -272
    //     0x6e385c: mov             x17, #-0x110
    // 0x6e3860: str             x0, [fp, x17]
    // 0x6e3864: r16 = true
    //     0x6e3864: add             x16, NULL, #0x20  ; true
    // 0x6e3868: cmp             w0, w16
    // 0x6e386c: b.ne            #0x6e3c04
    // 0x6e3870: r17 = -264
    //     0x6e3870: mov             x17, #-0x108
    // 0x6e3874: ldr             x4, [fp, x17]
    // 0x6e3878: r17 = -312
    //     0x6e3878: mov             x17, #-0x138
    // 0x6e387c: ldr             x3, [fp, x17]
    // 0x6e3880: LoadField: r5 = r4->field_37
    //     0x6e3880: ldur            w5, [x4, #0x37]
    // 0x6e3884: DecompressPointer r5
    //     0x6e3884: add             x5, x5, HEAP, lsl #32
    // 0x6e3888: mov             x2, x3
    // 0x6e388c: stur            x5, [fp, #-0xf8]
    // 0x6e3890: r1 = Function '<anonymous closure>':.
    //     0x6e3890: add             x1, PP, #0x14, lsl #12  ; [pp+0x14090] AnonymousClosure: (0x6e3fc0), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::updateTrip (0x6e3660)
    //     0x6e3894: ldr             x1, [x1, #0x90]
    // 0x6e3898: r0 = AllocateClosure()
    //     0x6e3898: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e389c: mov             x1, x0
    // 0x6e38a0: ldur            x0, [fp, #-0xf8]
    // 0x6e38a4: r2 = LoadClassIdInstr(r0)
    //     0x6e38a4: ldur            x2, [x0, #-1]
    //     0x6e38a8: ubfx            x2, x2, #0xc, #0x14
    // 0x6e38ac: r16 = <TripModel>
    //     0x6e38ac: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x6e38b0: ldr             x16, [x16, #0xda0]
    // 0x6e38b4: stp             x0, x16, [SP, #8]
    // 0x6e38b8: str             x1, [SP]
    // 0x6e38bc: mov             x0, x2
    // 0x6e38c0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6e38c0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6e38c4: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6e38c4: mov             x17, #0xd1d6
    //     0x6e38c8: add             lr, x0, x17
    //     0x6e38cc: ldr             lr, [x21, lr, lsl #3]
    //     0x6e38d0: blr             lr
    // 0x6e38d4: r1 = LoadClassIdInstr(r0)
    //     0x6e38d4: ldur            x1, [x0, #-1]
    //     0x6e38d8: ubfx            x1, x1, #0xc, #0x14
    // 0x6e38dc: mov             x16, x0
    // 0x6e38e0: mov             x0, x1
    // 0x6e38e4: mov             x1, x16
    // 0x6e38e8: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e38e8: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e38ec: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6e38ec: mov             x17, #0xd299
    //     0x6e38f0: add             lr, x0, x17
    //     0x6e38f4: ldr             lr, [x21, lr, lsl #3]
    //     0x6e38f8: blr             lr
    // 0x6e38fc: r17 = -264
    //     0x6e38fc: mov             x17, #-0x108
    // 0x6e3900: ldr             x3, [fp, x17]
    // 0x6e3904: StoreField: r3->field_37 = r0
    //     0x6e3904: stur            w0, [x3, #0x37]
    //     0x6e3908: ldurb           w16, [x3, #-1]
    //     0x6e390c: ldurb           w17, [x0, #-1]
    //     0x6e3910: and             x16, x17, x16, lsr #2
    //     0x6e3914: tst             x16, HEAP, lsr #32
    //     0x6e3918: b.eq            #0x6e3920
    //     0x6e391c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e3920: LoadField: r1 = r3->field_47
    //     0x6e3920: ldur            w1, [x3, #0x47]
    // 0x6e3924: DecompressPointer r1
    //     0x6e3924: add             x1, x1, HEAP, lsl #32
    // 0x6e3928: r17 = -312
    //     0x6e3928: mov             x17, #-0x138
    // 0x6e392c: ldr             x4, [fp, x17]
    // 0x6e3930: LoadField: r2 = r4->field_23
    //     0x6e3930: ldur            w2, [x4, #0x23]
    // 0x6e3934: DecompressPointer r2
    //     0x6e3934: add             x2, x2, HEAP, lsl #32
    // 0x6e3938: r0 = LoadClassIdInstr(r1)
    //     0x6e3938: ldur            x0, [x1, #-1]
    //     0x6e393c: ubfx            x0, x0, #0xc, #0x14
    // 0x6e3940: r0 = GDT[cid_x0 + 0x36e]()
    //     0x6e3940: add             lr, x0, #0x36e
    //     0x6e3944: ldr             lr, [x21, lr, lsl #3]
    //     0x6e3948: blr             lr
    // 0x6e394c: cmp             w0, NULL
    // 0x6e3950: b.ne            #0x6e3968
    // 0x6e3954: r1 = <String>
    //     0x6e3954: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e3958: r2 = 0
    //     0x6e3958: mov             x2, #0
    // 0x6e395c: r0 = _GrowableList()
    //     0x6e395c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6e3960: mov             x2, x0
    // 0x6e3964: b               #0x6e396c
    // 0x6e3968: mov             x2, x0
    // 0x6e396c: stur            x2, [fp, #-0xf8]
    // 0x6e3970: r0 = LoadClassIdInstr(r2)
    //     0x6e3970: ldur            x0, [x2, #-1]
    //     0x6e3974: ubfx            x0, x0, #0xc, #0x14
    // 0x6e3978: mov             x1, x2
    // 0x6e397c: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x6e397c: mov             x17, #0x90c4
    //     0x6e3980: add             lr, x0, x17
    //     0x6e3984: ldr             lr, [x21, lr, lsl #3]
    //     0x6e3988: blr             lr
    // 0x6e398c: mov             x2, x0
    // 0x6e3990: r17 = -280
    //     0x6e3990: mov             x17, #-0x118
    // 0x6e3994: str             x2, [fp, x17]
    // 0x6e3998: r17 = -312
    //     0x6e3998: mov             x17, #-0x138
    // 0x6e399c: ldr             x3, [fp, x17]
    // 0x6e39a0: CheckStackOverflow
    //     0x6e39a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e39a4: cmp             SP, x16
    //     0x6e39a8: b.ls            #0x6e3d00
    // 0x6e39ac: r0 = LoadClassIdInstr(r2)
    //     0x6e39ac: ldur            x0, [x2, #-1]
    //     0x6e39b0: ubfx            x0, x0, #0xc, #0x14
    // 0x6e39b4: mov             x1, x2
    // 0x6e39b8: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x6e39b8: add             lr, x0, #0x4cb
    //     0x6e39bc: ldr             lr, [x21, lr, lsl #3]
    //     0x6e39c0: blr             lr
    // 0x6e39c4: tbnz            w0, #4, #0x6e3a40
    // 0x6e39c8: r17 = -280
    //     0x6e39c8: mov             x17, #-0x118
    // 0x6e39cc: ldr             x2, [fp, x17]
    // 0x6e39d0: r0 = LoadClassIdInstr(r2)
    //     0x6e39d0: ldur            x0, [x2, #-1]
    //     0x6e39d4: ubfx            x0, x0, #0xc, #0x14
    // 0x6e39d8: mov             x1, x2
    // 0x6e39dc: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x6e39dc: add             lr, x0, #0x4f1
    //     0x6e39e0: ldr             lr, [x21, lr, lsl #3]
    //     0x6e39e4: blr             lr
    // 0x6e39e8: r17 = -288
    //     0x6e39e8: mov             x17, #-0x120
    // 0x6e39ec: ldr             x1, [fp, x17]
    // 0x6e39f0: mov             x2, x0
    // 0x6e39f4: r17 = -296
    //     0x6e39f4: mov             x17, #-0x128
    // 0x6e39f8: str             x0, [fp, x17]
    // 0x6e39fc: r0 = contains()
    //     0x6e39fc: bl              #0x4ea038  ; [dart:collection] ListBase::contains
    // 0x6e3a00: tbz             w0, #4, #0x6e3a34
    // 0x6e3a04: r17 = -312
    //     0x6e3a04: mov             x17, #-0x138
    // 0x6e3a08: ldr             x0, [fp, x17]
    // 0x6e3a0c: LoadField: r2 = r0->field_23
    //     0x6e3a0c: ldur            w2, [x0, #0x23]
    // 0x6e3a10: DecompressPointer r2
    //     0x6e3a10: add             x2, x2, HEAP, lsl #32
    // 0x6e3a14: ldur            x1, [fp, #-0x100]
    // 0x6e3a18: r17 = -296
    //     0x6e3a18: mov             x17, #-0x128
    // 0x6e3a1c: ldr             x3, [fp, x17]
    // 0x6e3a20: r0 = removeTripManager()
    //     0x6e3a20: bl              #0x6e3d14  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::removeTripManager
    // 0x6e3a24: mov             x1, x0
    // 0x6e3a28: r17 = -304
    //     0x6e3a28: mov             x17, #-0x130
    // 0x6e3a2c: str             x1, [fp, x17]
    // 0x6e3a30: r0 = Await()
    //     0x6e3a30: bl              #0x3dd188  ; AwaitStub
    // 0x6e3a34: r17 = -280
    //     0x6e3a34: mov             x17, #-0x118
    // 0x6e3a38: ldr             x2, [fp, x17]
    // 0x6e3a3c: b               #0x6e3998
    // 0x6e3a40: r17 = -288
    //     0x6e3a40: mov             x17, #-0x120
    // 0x6e3a44: ldr             x2, [fp, x17]
    // 0x6e3a48: LoadField: r0 = r2->field_7
    //     0x6e3a48: ldur            w0, [x2, #7]
    // 0x6e3a4c: DecompressPointer r0
    //     0x6e3a4c: add             x0, x0, HEAP, lsl #32
    // 0x6e3a50: mov             x1, x0
    // 0x6e3a54: r17 = -280
    //     0x6e3a54: mov             x17, #-0x118
    // 0x6e3a58: str             x0, [fp, x17]
    // 0x6e3a5c: r0 = ListIterator()
    //     0x6e3a5c: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x6e3a60: mov             x4, x0
    // 0x6e3a64: r17 = -288
    //     0x6e3a64: mov             x17, #-0x120
    // 0x6e3a68: ldr             x3, [fp, x17]
    // 0x6e3a6c: r17 = -296
    //     0x6e3a6c: mov             x17, #-0x128
    // 0x6e3a70: str             x4, [fp, x17]
    // 0x6e3a74: StoreField: r4->field_b = r3
    //     0x6e3a74: stur            w3, [x4, #0xb]
    // 0x6e3a78: LoadField: r0 = r3->field_b
    //     0x6e3a78: ldur            w0, [x3, #0xb]
    // 0x6e3a7c: r5 = LoadInt32Instr(r0)
    //     0x6e3a7c: sbfx            x5, x0, #1, #0x1f
    // 0x6e3a80: r17 = -320
    //     0x6e3a80: mov             x17, #-0x140
    // 0x6e3a84: str             x5, [fp, x17]
    // 0x6e3a88: StoreField: r4->field_f = r5
    //     0x6e3a88: stur            x5, [x4, #0xf]
    // 0x6e3a8c: ArrayStore: r4[0] = rZR  ; List_8
    //     0x6e3a8c: stur            xzr, [x4, #0x17]
    // 0x6e3a90: r17 = -312
    //     0x6e3a90: mov             x17, #-0x138
    // 0x6e3a94: ldr             x6, [fp, x17]
    // 0x6e3a98: ldur            x7, [fp, #-0xf8]
    // 0x6e3a9c: CheckStackOverflow
    //     0x6e3a9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e3aa0: cmp             SP, x16
    //     0x6e3aa4: b.ls            #0x6e3d08
    // 0x6e3aa8: LoadField: r0 = r3->field_b
    //     0x6e3aa8: ldur            w0, [x3, #0xb]
    // 0x6e3aac: r1 = LoadInt32Instr(r0)
    //     0x6e3aac: sbfx            x1, x0, #1, #0x1f
    // 0x6e3ab0: cmp             x5, x1
    // 0x6e3ab4: b.ne            #0x6e3c84
    // 0x6e3ab8: ArrayLoad: r2 = r4[0]  ; List_8
    //     0x6e3ab8: ldur            x2, [x4, #0x17]
    // 0x6e3abc: cmp             x2, x1
    // 0x6e3ac0: b.ge            #0x6e3b88
    // 0x6e3ac4: mov             x0, x1
    // 0x6e3ac8: mov             x1, x2
    // 0x6e3acc: cmp             x1, x0
    // 0x6e3ad0: b.hs            #0x6e3d10
    // 0x6e3ad4: LoadField: r0 = r3->field_f
    //     0x6e3ad4: ldur            w0, [x3, #0xf]
    // 0x6e3ad8: DecompressPointer r0
    //     0x6e3ad8: add             x0, x0, HEAP, lsl #32
    // 0x6e3adc: ArrayLoad: r8 = r0[r2]  ; Unknown_4
    //     0x6e3adc: add             x16, x0, x2, lsl #2
    //     0x6e3ae0: ldur            w8, [x16, #0xf]
    // 0x6e3ae4: DecompressPointer r8
    //     0x6e3ae4: add             x8, x8, HEAP, lsl #32
    // 0x6e3ae8: mov             x0, x8
    // 0x6e3aec: r17 = -280
    //     0x6e3aec: mov             x17, #-0x118
    // 0x6e3af0: str             x8, [fp, x17]
    // 0x6e3af4: StoreField: r4->field_1f = r0
    //     0x6e3af4: stur            w0, [x4, #0x1f]
    //     0x6e3af8: ldurb           w16, [x4, #-1]
    //     0x6e3afc: ldurb           w17, [x0, #-1]
    //     0x6e3b00: and             x16, x17, x16, lsr #2
    //     0x6e3b04: tst             x16, HEAP, lsr #32
    //     0x6e3b08: b.eq            #0x6e3b10
    //     0x6e3b0c: bl              #0x9267f0  ; WriteBarrierWrappersStub
    // 0x6e3b10: add             x0, x2, #1
    // 0x6e3b14: ArrayStore: r4[0] = r0  ; List_8
    //     0x6e3b14: stur            x0, [x4, #0x17]
    // 0x6e3b18: r0 = LoadClassIdInstr(r7)
    //     0x6e3b18: ldur            x0, [x7, #-1]
    //     0x6e3b1c: ubfx            x0, x0, #0xc, #0x14
    // 0x6e3b20: mov             x1, x7
    // 0x6e3b24: mov             x2, x8
    // 0x6e3b28: r0 = GDT[cid_x0 + 0xd089]()
    //     0x6e3b28: mov             x17, #0xd089
    //     0x6e3b2c: add             lr, x0, x17
    //     0x6e3b30: ldr             lr, [x21, lr, lsl #3]
    //     0x6e3b34: blr             lr
    // 0x6e3b38: tbz             w0, #4, #0x6e3b6c
    // 0x6e3b3c: r17 = -312
    //     0x6e3b3c: mov             x17, #-0x138
    // 0x6e3b40: ldr             x0, [fp, x17]
    // 0x6e3b44: LoadField: r2 = r0->field_23
    //     0x6e3b44: ldur            w2, [x0, #0x23]
    // 0x6e3b48: DecompressPointer r2
    //     0x6e3b48: add             x2, x2, HEAP, lsl #32
    // 0x6e3b4c: ldur            x1, [fp, #-0x100]
    // 0x6e3b50: r17 = -280
    //     0x6e3b50: mov             x17, #-0x118
    // 0x6e3b54: ldr             x3, [fp, x17]
    // 0x6e3b58: r0 = assignTripManager()
    //     0x6e3b58: bl              #0x6e2e7c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::assignTripManager
    // 0x6e3b5c: mov             x1, x0
    // 0x6e3b60: r17 = -304
    //     0x6e3b60: mov             x17, #-0x130
    // 0x6e3b64: str             x1, [fp, x17]
    // 0x6e3b68: r0 = Await()
    //     0x6e3b68: bl              #0x3dd188  ; AwaitStub
    // 0x6e3b6c: r17 = -288
    //     0x6e3b6c: mov             x17, #-0x120
    // 0x6e3b70: ldr             x3, [fp, x17]
    // 0x6e3b74: r17 = -296
    //     0x6e3b74: mov             x17, #-0x128
    // 0x6e3b78: ldr             x4, [fp, x17]
    // 0x6e3b7c: r17 = -320
    //     0x6e3b7c: mov             x17, #-0x140
    // 0x6e3b80: ldr             x5, [fp, x17]
    // 0x6e3b84: b               #0x6e3a90
    // 0x6e3b88: r17 = -264
    //     0x6e3b88: mov             x17, #-0x108
    // 0x6e3b8c: ldr             x3, [fp, x17]
    // 0x6e3b90: mov             x0, x6
    // 0x6e3b94: mov             x1, x4
    // 0x6e3b98: StoreField: r1->field_1f = rNULL
    //     0x6e3b98: stur            NULL, [x1, #0x1f]
    // 0x6e3b9c: LoadField: r4 = r3->field_47
    //     0x6e3b9c: ldur            w4, [x3, #0x47]
    // 0x6e3ba0: DecompressPointer r4
    //     0x6e3ba0: add             x4, x4, HEAP, lsl #32
    // 0x6e3ba4: r17 = -280
    //     0x6e3ba4: mov             x17, #-0x118
    // 0x6e3ba8: str             x4, [fp, x17]
    // 0x6e3bac: LoadField: r5 = r0->field_23
    //     0x6e3bac: ldur            w5, [x0, #0x23]
    // 0x6e3bb0: DecompressPointer r5
    //     0x6e3bb0: add             x5, x5, HEAP, lsl #32
    // 0x6e3bb4: r17 = -288
    //     0x6e3bb4: mov             x17, #-0x120
    // 0x6e3bb8: ldr             x2, [fp, x17]
    // 0x6e3bbc: stur            x5, [fp, #-0x100]
    // 0x6e3bc0: r1 = <String>
    //     0x6e3bc0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e3bc4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e3bc4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e3bc8: r0 = List.from()
    //     0x6e3bc8: bl              #0x490278  ; [dart:core] List::List.from
    // 0x6e3bcc: r17 = -280
    //     0x6e3bcc: mov             x17, #-0x118
    // 0x6e3bd0: ldr             x1, [fp, x17]
    // 0x6e3bd4: r2 = LoadClassIdInstr(r1)
    //     0x6e3bd4: ldur            x2, [x1, #-1]
    //     0x6e3bd8: ubfx            x2, x2, #0xc, #0x14
    // 0x6e3bdc: mov             x3, x0
    // 0x6e3be0: mov             x0, x2
    // 0x6e3be4: ldur            x2, [fp, #-0x100]
    // 0x6e3be8: r0 = GDT[cid_x0 + 0x571]()
    //     0x6e3be8: add             lr, x0, #0x571
    //     0x6e3bec: ldr             lr, [x21, lr, lsl #3]
    //     0x6e3bf0: blr             lr
    // 0x6e3bf4: r1 = "Sefer güncellendi"
    //     0x6e3bf4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14098] "Sefer güncellendi"
    //     0x6e3bf8: ldr             x1, [x1, #0x98]
    // 0x6e3bfc: r0 = showSuccess()
    //     0x6e3bfc: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6e3c00: b               #0x6e3c10
    // 0x6e3c04: r1 = "Sefer güncellenemedi"
    //     0x6e3c04: add             x1, PP, #0x14, lsl #12  ; [pp+0x140a0] "Sefer güncellenemedi"
    //     0x6e3c08: ldr             x1, [x1, #0xa0]
    // 0x6e3c0c: r0 = showError()
    //     0x6e3c0c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e3c10: r17 = -264
    //     0x6e3c10: mov             x17, #-0x108
    // 0x6e3c14: ldr             x2, [fp, x17]
    // 0x6e3c18: r3 = false
    //     0x6e3c18: add             x3, NULL, #0x30  ; false
    // 0x6e3c1c: StoreField: r2->field_2b = r3
    //     0x6e3c1c: stur            w3, [x2, #0x2b]
    // 0x6e3c20: mov             x1, x2
    // 0x6e3c24: r0 = notifyListeners()
    //     0x6e3c24: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e3c28: r17 = -272
    //     0x6e3c28: mov             x17, #-0x110
    // 0x6e3c2c: ldr             x0, [fp, x17]
    // 0x6e3c30: r0 = ReturnAsync()
    //     0x6e3c30: b               #0x427094  ; ReturnAsyncStub
    // 0x6e3c34: sub             SP, fp, #0x158
    // 0x6e3c38: r17 = -264
    //     0x6e3c38: mov             x17, #-0x108
    // 0x6e3c3c: ldr             x2, [fp, x17]
    // 0x6e3c40: r3 = false
    //     0x6e3c40: add             x3, NULL, #0x30  ; false
    // 0x6e3c44: mov             x4, x0
    // 0x6e3c48: stur            x0, [fp, #-0x100]
    // 0x6e3c4c: mov             x0, x1
    // 0x6e3c50: r17 = -280
    //     0x6e3c50: mov             x17, #-0x118
    // 0x6e3c54: str             x1, [fp, x17]
    // 0x6e3c58: r1 = "Sefer güncellenemedi"
    //     0x6e3c58: add             x1, PP, #0x14, lsl #12  ; [pp+0x140a0] "Sefer güncellenemedi"
    //     0x6e3c5c: ldr             x1, [x1, #0xa0]
    // 0x6e3c60: r0 = showError()
    //     0x6e3c60: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e3c64: r17 = -264
    //     0x6e3c64: mov             x17, #-0x108
    // 0x6e3c68: ldr             x0, [fp, x17]
    // 0x6e3c6c: r2 = false
    //     0x6e3c6c: add             x2, NULL, #0x30  ; false
    // 0x6e3c70: StoreField: r0->field_2b = r2
    //     0x6e3c70: stur            w2, [x0, #0x2b]
    // 0x6e3c74: mov             x1, x0
    // 0x6e3c78: r0 = notifyListeners()
    //     0x6e3c78: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e3c7c: r0 = false
    //     0x6e3c7c: add             x0, NULL, #0x30  ; false
    // 0x6e3c80: r0 = ReturnAsyncNotFuture()
    //     0x6e3c80: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e3c84: r17 = -264
    //     0x6e3c84: mov             x17, #-0x108
    // 0x6e3c88: ldr             x0, [fp, x17]
    // 0x6e3c8c: mov             x2, x3
    // 0x6e3c90: mov             x1, x4
    // 0x6e3c94: r0 = ConcurrentModificationError()
    //     0x6e3c94: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6e3c98: mov             x2, x0
    // 0x6e3c9c: r17 = -288
    //     0x6e3c9c: mov             x17, #-0x120
    // 0x6e3ca0: ldr             x1, [fp, x17]
    // 0x6e3ca4: stur            x2, [fp, #-0x100]
    // 0x6e3ca8: StoreField: r2->field_b = r1
    //     0x6e3ca8: stur            w1, [x2, #0xb]
    // 0x6e3cac: mov             x0, x2
    // 0x6e3cb0: r0 = Throw()
    //     0x6e3cb0: bl              #0x926328  ; ThrowStub
    // 0x6e3cb4: brk             #0
    // 0x6e3cb8: sub             SP, fp, #0x158
    // 0x6e3cbc: r17 = -264
    //     0x6e3cbc: mov             x17, #-0x108
    // 0x6e3cc0: ldr             x2, [fp, x17]
    // 0x6e3cc4: r3 = false
    //     0x6e3cc4: add             x3, NULL, #0x30  ; false
    // 0x6e3cc8: mov             x4, x0
    // 0x6e3ccc: stur            x0, [fp, #-0xf8]
    // 0x6e3cd0: mov             x0, x1
    // 0x6e3cd4: stur            x1, [fp, #-0x100]
    // 0x6e3cd8: r3 = false
    //     0x6e3cd8: add             x3, NULL, #0x30  ; false
    // 0x6e3cdc: StoreField: r2->field_2b = r3
    //     0x6e3cdc: stur            w3, [x2, #0x2b]
    // 0x6e3ce0: mov             x1, x2
    // 0x6e3ce4: r0 = notifyListeners()
    //     0x6e3ce4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e3ce8: ldur            x0, [fp, #-0xf8]
    // 0x6e3cec: ldur            x1, [fp, #-0x100]
    // 0x6e3cf0: r0 = ReThrow()
    //     0x6e3cf0: bl              #0x9262fc  ; ReThrowStub
    // 0x6e3cf4: brk             #0
    // 0x6e3cf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3cf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3cfc: b               #0x6e36d0
    // 0x6e3d00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3d00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3d04: b               #0x6e39ac
    // 0x6e3d08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3d08: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3d0c: b               #0x6e3aa8
    // 0x6e3d10: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e3d10: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] TripModel <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x6e3fc0, size: 0x120
    // 0x6e3fc0: EnterFrame
    //     0x6e3fc0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e3fc4: mov             fp, SP
    // 0x6e3fc8: AllocStack(0x30)
    //     0x6e3fc8: sub             SP, SP, #0x30
    // 0x6e3fcc: SetupParameters([dynamic _ /* r0 */])
    //     0x6e3fcc: ldr             x0, [fp, #0x18]
    //     0x6e3fd0: ldur            w1, [x0, #0x17]
    //     0x6e3fd4: add             x1, x1, HEAP, lsl #32
    //     0x6e3fd8: stur            x1, [fp, #-8]
    // 0x6e3fdc: CheckStackOverflow
    //     0x6e3fdc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e3fe0: cmp             SP, x16
    //     0x6e3fe4: b.ls            #0x6e40d8
    // 0x6e3fe8: ldr             x2, [fp, #0x10]
    // 0x6e3fec: LoadField: r0 = r2->field_7
    //     0x6e3fec: ldur            w0, [x2, #7]
    // 0x6e3ff0: DecompressPointer r0
    //     0x6e3ff0: add             x0, x0, HEAP, lsl #32
    // 0x6e3ff4: LoadField: r3 = r1->field_23
    //     0x6e3ff4: ldur            w3, [x1, #0x23]
    // 0x6e3ff8: DecompressPointer r3
    //     0x6e3ff8: add             x3, x3, HEAP, lsl #32
    // 0x6e3ffc: r4 = LoadClassIdInstr(r0)
    //     0x6e3ffc: ldur            x4, [x0, #-1]
    //     0x6e4000: ubfx            x4, x4, #0xc, #0x14
    // 0x6e4004: stp             x3, x0, [SP]
    // 0x6e4008: mov             x0, x4
    // 0x6e400c: mov             lr, x0
    // 0x6e4010: ldr             lr, [x21, lr, lsl #3]
    // 0x6e4014: blr             lr
    // 0x6e4018: tbnz            w0, #4, #0x6e40c4
    // 0x6e401c: ldur            x0, [fp, #-8]
    // 0x6e4020: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6e4020: ldur            w1, [x0, #0x17]
    // 0x6e4024: DecompressPointer r1
    //     0x6e4024: add             x1, x1, HEAP, lsl #32
    // 0x6e4028: LoadField: r2 = r0->field_13
    //     0x6e4028: ldur            w2, [x0, #0x13]
    // 0x6e402c: DecompressPointer r2
    //     0x6e402c: add             x2, x2, HEAP, lsl #32
    // 0x6e4030: cmp             w2, NULL
    // 0x6e4034: b.ne            #0x6e4048
    // 0x6e4038: ldr             x3, [fp, #0x10]
    // 0x6e403c: LoadField: r2 = r3->field_f
    //     0x6e403c: ldur            w2, [x3, #0xf]
    // 0x6e4040: DecompressPointer r2
    //     0x6e4040: add             x2, x2, HEAP, lsl #32
    // 0x6e4044: b               #0x6e404c
    // 0x6e4048: ldr             x3, [fp, #0x10]
    // 0x6e404c: LoadField: r4 = r0->field_1f
    //     0x6e404c: ldur            w4, [x0, #0x1f]
    // 0x6e4050: DecompressPointer r4
    //     0x6e4050: add             x4, x4, HEAP, lsl #32
    // 0x6e4054: cmp             w4, NULL
    // 0x6e4058: b.ne            #0x6e4064
    // 0x6e405c: LoadField: r4 = r3->field_13
    //     0x6e405c: ldur            w4, [x3, #0x13]
    // 0x6e4060: DecompressPointer r4
    //     0x6e4060: add             x4, x4, HEAP, lsl #32
    // 0x6e4064: LoadField: r5 = r0->field_f
    //     0x6e4064: ldur            w5, [x0, #0xf]
    // 0x6e4068: DecompressPointer r5
    //     0x6e4068: add             x5, x5, HEAP, lsl #32
    // 0x6e406c: cmp             w5, NULL
    // 0x6e4070: b.ne            #0x6e407c
    // 0x6e4074: ArrayLoad: r5 = r3[0]  ; List_4
    //     0x6e4074: ldur            w5, [x3, #0x17]
    // 0x6e4078: DecompressPointer r5
    //     0x6e4078: add             x5, x5, HEAP, lsl #32
    // 0x6e407c: LoadField: r6 = r0->field_1b
    //     0x6e407c: ldur            w6, [x0, #0x1b]
    // 0x6e4080: DecompressPointer r6
    //     0x6e4080: add             x6, x6, HEAP, lsl #32
    // 0x6e4084: cmp             w6, NULL
    // 0x6e4088: b.ne            #0x6e4098
    // 0x6e408c: LoadField: r0 = r3->field_1b
    //     0x6e408c: ldur            w0, [x3, #0x1b]
    // 0x6e4090: DecompressPointer r0
    //     0x6e4090: add             x0, x0, HEAP, lsl #32
    // 0x6e4094: b               #0x6e409c
    // 0x6e4098: mov             x0, x6
    // 0x6e409c: stp             x2, x1, [SP, #0x18]
    // 0x6e40a0: stp             x5, x4, [SP, #8]
    // 0x6e40a4: str             x0, [SP]
    // 0x6e40a8: mov             x1, x3
    // 0x6e40ac: r4 = const [0, 0x6, 0x5, 0x1, endDate, 0x4, location, 0x2, name, 0x1, note, 0x5, startDate, 0x3, null]
    //     0x6e40ac: add             x4, PP, #0x14, lsl #12  ; [pp+0x140a8] List(15) [0, 0x6, 0x5, 0x1, "endDate", 0x4, "location", 0x2, "name", 0x1, "note", 0x5, "startDate", 0x3, Null]
    //     0x6e40b0: ldr             x4, [x4, #0xa8]
    // 0x6e40b4: r0 = copyWith()
    //     0x6e40b4: bl              #0x6e3080  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::copyWith
    // 0x6e40b8: LeaveFrame
    //     0x6e40b8: mov             SP, fp
    //     0x6e40bc: ldp             fp, lr, [SP], #0x10
    // 0x6e40c0: ret
    //     0x6e40c0: ret             
    // 0x6e40c4: ldr             x3, [fp, #0x10]
    // 0x6e40c8: mov             x0, x3
    // 0x6e40cc: LeaveFrame
    //     0x6e40cc: mov             SP, fp
    //     0x6e40d0: ldp             fp, lr, [SP], #0x10
    // 0x6e40d4: ret
    //     0x6e40d4: ret             
    // 0x6e40d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e40d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e40dc: b               #0x6e3fe8
  }
  _ createRoom(/* No info */) async {
    // ** addr: 0x6e5690, size: 0x238
    // 0x6e5690: EnterFrame
    //     0x6e5690: stp             fp, lr, [SP, #-0x10]!
    //     0x6e5694: mov             fp, SP
    // 0x6e5698: AllocStack(0xf0)
    //     0x6e5698: sub             SP, SP, #0xf0
    // 0x6e569c: SetupParameters(AdminProvider this /* r1 => r4, fp-0xa8 */, dynamic _ /* r2 => r1, fp-0xb0 */, dynamic _ /* r3 => r3, fp-0xb8 */, dynamic _ /* r5 => r2, fp-0xc0 */, dynamic _ /* r6 => r6, fp-0xc8 */, dynamic _ /* r7 => r7, fp-0xd0 */)
    //     0x6e569c: stur            NULL, [fp, #-8]
    //     0x6e56a0: mov             x4, x1
    //     0x6e56a4: stur            x1, [fp, #-0xa8]
    //     0x6e56a8: mov             x1, x2
    //     0x6e56ac: stur            x2, [fp, #-0xb0]
    //     0x6e56b0: mov             x2, x5
    //     0x6e56b4: stur            x3, [fp, #-0xb8]
    //     0x6e56b8: stur            x5, [fp, #-0xc0]
    //     0x6e56bc: stur            x6, [fp, #-0xc8]
    //     0x6e56c0: stur            x7, [fp, #-0xd0]
    // 0x6e56c4: CheckStackOverflow
    //     0x6e56c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e56c8: cmp             SP, x16
    //     0x6e56cc: b.ls            #0x6e58c0
    // 0x6e56d0: InitAsync() -> Future<String?>
    //     0x6e56d0: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6e56d4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e56d8: ldur            x0, [fp, #-0xa8]
    // 0x6e56dc: r1 = true
    //     0x6e56dc: add             x1, NULL, #0x20  ; true
    // 0x6e56e0: StoreField: r0->field_2b = r1
    //     0x6e56e0: stur            w1, [x0, #0x2b]
    // 0x6e56e4: mov             x1, x0
    // 0x6e56e8: r0 = notifyListeners()
    //     0x6e56e8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e56ec: r0 = LoadStaticField(0xfe4)
    //     0x6e56ec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6e56f0: ldr             x0, [x0, #0x1fc8]
    // 0x6e56f4: cmp             w0, NULL
    // 0x6e56f8: b.ne            #0x6e5704
    // 0x6e56fc: r6 = Null
    //     0x6e56fc: mov             x6, NULL
    // 0x6e5700: b               #0x6e5710
    // 0x6e5704: LoadField: r1 = r0->field_4b
    //     0x6e5704: ldur            w1, [x0, #0x4b]
    // 0x6e5708: DecompressPointer r1
    //     0x6e5708: add             x1, x1, HEAP, lsl #32
    // 0x6e570c: mov             x6, x1
    // 0x6e5710: ldur            x1, [fp, #-0xa8]
    // 0x6e5714: ldur            x5, [fp, #-0xb0]
    // 0x6e5718: ldur            x4, [fp, #-0xb8]
    // 0x6e571c: ldur            x3, [fp, #-0xc0]
    // 0x6e5720: ldur            x2, [fp, #-0xc8]
    // 0x6e5724: ldur            x0, [fp, #-0xd0]
    // 0x6e5728: stur            x6, [fp, #-0xd8]
    // 0x6e572c: r0 = RoomModel()
    //     0x6e572c: bl              #0x5d8df8  ; AllocateRoomModelStub -> RoomModel (size=0x30)
    // 0x6e5730: mov             x3, x0
    // 0x6e5734: r0 = ""
    //     0x6e5734: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6e5738: stur            x3, [fp, #-0xe0]
    // 0x6e573c: StoreField: r3->field_7 = r0
    //     0x6e573c: stur            w0, [x3, #7]
    // 0x6e5740: ldur            x0, [fp, #-0xc0]
    // 0x6e5744: StoreField: r3->field_b = r0
    //     0x6e5744: stur            w0, [x3, #0xb]
    // 0x6e5748: ldur            x4, [fp, #-0xd0]
    // 0x6e574c: StoreField: r3->field_f = r4
    //     0x6e574c: stur            w4, [x3, #0xf]
    // 0x6e5750: ldur            x5, [fp, #-0xb0]
    // 0x6e5754: StoreField: r3->field_13 = r5
    //     0x6e5754: stur            x5, [x3, #0x13]
    // 0x6e5758: ldur            x6, [fp, #-0xb8]
    // 0x6e575c: StoreField: r3->field_1b = r6
    //     0x6e575c: stur            w6, [x3, #0x1b]
    // 0x6e5760: ldur            x7, [fp, #-0xc8]
    // 0x6e5764: StoreField: r3->field_1f = r7
    //     0x6e5764: stur            w7, [x3, #0x1f]
    // 0x6e5768: ldur            x8, [fp, #-0xd8]
    // 0x6e576c: StoreField: r3->field_23 = r8
    //     0x6e576c: stur            w8, [x3, #0x23]
    // 0x6e5770: ldur            x9, [fp, #-0xa8]
    // 0x6e5774: LoadField: r1 = r9->field_23
    //     0x6e5774: ldur            w1, [x9, #0x23]
    // 0x6e5778: DecompressPointer r1
    //     0x6e5778: add             x1, x1, HEAP, lsl #32
    // 0x6e577c: mov             x2, x3
    // 0x6e5780: r0 = createRoom()
    //     0x6e5780: bl              #0x6e58c8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createRoom
    // 0x6e5784: mov             x1, x0
    // 0x6e5788: stur            x1, [fp, #-0xe8]
    // 0x6e578c: r0 = Await()
    //     0x6e578c: bl              #0x3dd188  ; AwaitStub
    // 0x6e5790: stur            x0, [fp, #-0xb8]
    // 0x6e5794: cmp             w0, NULL
    // 0x6e5798: b.eq            #0x6e5828
    // 0x6e579c: ldur            x2, [fp, #-0xa8]
    // 0x6e57a0: str             x0, [SP]
    // 0x6e57a4: ldur            x1, [fp, #-0xe0]
    // 0x6e57a8: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x6e57a8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x6e57ac: ldr             x4, [x4, #0xb78]
    // 0x6e57b0: r0 = copyWith()
    //     0x6e57b0: bl              #0x6e1264  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::copyWith
    // 0x6e57b4: mov             x3, x0
    // 0x6e57b8: ldur            x0, [fp, #-0xa8]
    // 0x6e57bc: stur            x3, [fp, #-0xd0]
    // 0x6e57c0: LoadField: r4 = r0->field_43
    //     0x6e57c0: ldur            w4, [x0, #0x43]
    // 0x6e57c4: DecompressPointer r4
    //     0x6e57c4: add             x4, x4, HEAP, lsl #32
    // 0x6e57c8: stur            x4, [fp, #-0xc8]
    // 0x6e57cc: r1 = Function '<anonymous closure>':.
    //     0x6e57cc: add             x1, PP, #0x27, lsl #12  ; [pp+0x27520] AnonymousClosure: (0x5dc224), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::createHotel (0x5dc25c)
    //     0x6e57d0: ldr             x1, [x1, #0x520]
    // 0x6e57d4: r2 = Null
    //     0x6e57d4: mov             x2, NULL
    // 0x6e57d8: r0 = AllocateClosure()
    //     0x6e57d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e57dc: ldur            x1, [fp, #-0xc8]
    // 0x6e57e0: ldur            x2, [fp, #-0xc0]
    // 0x6e57e4: mov             x3, x0
    // 0x6e57e8: r0 = putIfAbsent()
    //     0x6e57e8: bl              #0x8a8cc8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::putIfAbsent
    // 0x6e57ec: r1 = LoadClassIdInstr(r0)
    //     0x6e57ec: ldur            x1, [x0, #-1]
    //     0x6e57f0: ubfx            x1, x1, #0xc, #0x14
    // 0x6e57f4: mov             x16, x0
    // 0x6e57f8: mov             x0, x1
    // 0x6e57fc: mov             x1, x16
    // 0x6e5800: ldur            x3, [fp, #-0xd0]
    // 0x6e5804: r2 = 0
    //     0x6e5804: mov             x2, #0
    // 0x6e5808: r0 = GDT[cid_x0 + 0x1015b]()
    //     0x6e5808: mov             x17, #0x15b
    //     0x6e580c: movk            x17, #1, lsl #16
    //     0x6e5810: add             lr, x0, x17
    //     0x6e5814: ldr             lr, [x21, lr, lsl #3]
    //     0x6e5818: blr             lr
    // 0x6e581c: r1 = "Oda oluşturuldu"
    //     0x6e581c: add             x1, PP, #0x27, lsl #12  ; [pp+0x27528] "Oda oluşturuldu"
    //     0x6e5820: ldr             x1, [x1, #0x528]
    // 0x6e5824: r0 = showSuccess()
    //     0x6e5824: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6e5828: ldur            x2, [fp, #-0xa8]
    // 0x6e582c: r3 = false
    //     0x6e582c: add             x3, NULL, #0x30  ; false
    // 0x6e5830: StoreField: r2->field_2b = r3
    //     0x6e5830: stur            w3, [x2, #0x2b]
    // 0x6e5834: mov             x1, x2
    // 0x6e5838: r0 = notifyListeners()
    //     0x6e5838: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e583c: ldur            x0, [fp, #-0xb8]
    // 0x6e5840: r0 = ReturnAsync()
    //     0x6e5840: b               #0x427094  ; ReturnAsyncStub
    // 0x6e5844: sub             SP, fp, #0xf0
    // 0x6e5848: ldur            x2, [fp, #-0xa8]
    // 0x6e584c: r3 = false
    //     0x6e584c: add             x3, NULL, #0x30  ; false
    // 0x6e5850: mov             x4, x0
    // 0x6e5854: stur            x0, [fp, #-0xb8]
    // 0x6e5858: mov             x0, x1
    // 0x6e585c: stur            x1, [fp, #-0xc0]
    // 0x6e5860: r1 = "Oda oluşturulamadı"
    //     0x6e5860: add             x1, PP, #0x27, lsl #12  ; [pp+0x27530] "Oda oluşturulamadı"
    //     0x6e5864: ldr             x1, [x1, #0x530]
    // 0x6e5868: r0 = showError()
    //     0x6e5868: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6e586c: ldur            x2, [fp, #-0xa8]
    // 0x6e5870: r3 = false
    //     0x6e5870: add             x3, NULL, #0x30  ; false
    // 0x6e5874: StoreField: r2->field_2b = r3
    //     0x6e5874: stur            w3, [x2, #0x2b]
    // 0x6e5878: mov             x1, x2
    // 0x6e587c: r0 = notifyListeners()
    //     0x6e587c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e5880: r0 = Null
    //     0x6e5880: mov             x0, NULL
    // 0x6e5884: r0 = ReturnAsyncNotFuture()
    //     0x6e5884: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e5888: sub             SP, fp, #0xf0
    // 0x6e588c: ldur            x2, [fp, #-0xa8]
    // 0x6e5890: r3 = false
    //     0x6e5890: add             x3, NULL, #0x30  ; false
    // 0x6e5894: mov             x4, x0
    // 0x6e5898: stur            x0, [fp, #-0xb8]
    // 0x6e589c: mov             x0, x1
    // 0x6e58a0: stur            x1, [fp, #-0xc0]
    // 0x6e58a4: StoreField: r2->field_2b = r3
    //     0x6e58a4: stur            w3, [x2, #0x2b]
    // 0x6e58a8: mov             x1, x2
    // 0x6e58ac: r0 = notifyListeners()
    //     0x6e58ac: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e58b0: ldur            x0, [fp, #-0xb8]
    // 0x6e58b4: ldur            x1, [fp, #-0xc0]
    // 0x6e58b8: r0 = ReThrow()
    //     0x6e58b8: bl              #0x9262fc  ; ReThrowStub
    // 0x6e58bc: brk             #0
    // 0x6e58c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e58c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e58c4: b               #0x6e56d0
  }
  _ createUser(/* No info */) async {
    // ** addr: 0x6ee80c, size: 0x3e4
    // 0x6ee80c: EnterFrame
    //     0x6ee80c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ee810: mov             fp, SP
    // 0x6ee814: AllocStack(0x158)
    //     0x6ee814: sub             SP, SP, #0x158
    // 0x6ee818: SetupParameters()
    //     0x6ee818: stur            NULL, [fp, #-8]
    //     0x6ee81c: mov             x0, #0
    //     0x6ee820: mov             x17, #-0x110
    // 0x6ee820: r17 = -272
    // 0x6ee824: str             x1, [fp, x17]
    // 0x6ee828: r17 = -280
    //     0x6ee828: mov             x17, #-0x118
    // 0x6ee82c: str             x2, [fp, x17]
    // 0x6ee830: r17 = -288
    //     0x6ee830: mov             x17, #-0x120
    // 0x6ee834: str             x3, [fp, x17]
    // 0x6ee838: r17 = -296
    //     0x6ee838: mov             x17, #-0x128
    // 0x6ee83c: str             x5, [fp, x17]
    // 0x6ee840: r17 = -304
    //     0x6ee840: mov             x17, #-0x130
    // 0x6ee844: str             x6, [fp, x17]
    // 0x6ee848: r17 = -312
    //     0x6ee848: mov             x17, #-0x138
    // 0x6ee84c: str             x7, [fp, x17]
    // 0x6ee850: add             x4, fp, w0, sxtw #2
    // 0x6ee854: ldr             x4, [x4, #0x18]
    // 0x6ee858: r17 = -264
    //     0x6ee858: mov             x17, #-0x108
    // 0x6ee85c: str             x4, [fp, x17]
    // 0x6ee860: add             x8, fp, w0, sxtw #2
    // 0x6ee864: ldr             x8, [x8, #0x10]
    // 0x6ee868: stur            x8, [fp, #-0x100]
    // 0x6ee86c: CheckStackOverflow
    //     0x6ee86c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ee870: cmp             SP, x16
    //     0x6ee874: b.ls            #0x6eebe8
    // 0x6ee878: InitAsync() -> Future<bool>
    //     0x6ee878: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6ee87c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6ee880: r17 = -272
    //     0x6ee880: mov             x17, #-0x110
    // 0x6ee884: ldr             x2, [fp, x17]
    // 0x6ee888: r0 = true
    //     0x6ee888: add             x0, NULL, #0x20  ; true
    // 0x6ee88c: StoreField: r2->field_2b = r0
    //     0x6ee88c: stur            w0, [x2, #0x2b]
    // 0x6ee890: mov             x1, x2
    // 0x6ee894: r0 = notifyListeners()
    //     0x6ee894: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6ee898: r17 = -272
    //     0x6ee898: mov             x17, #-0x110
    // 0x6ee89c: ldr             x0, [fp, x17]
    // 0x6ee8a0: LoadField: r3 = r0->field_23
    //     0x6ee8a0: ldur            w3, [x0, #0x23]
    // 0x6ee8a4: DecompressPointer r3
    //     0x6ee8a4: add             x3, x3, HEAP, lsl #32
    // 0x6ee8a8: mov             x1, x3
    // 0x6ee8ac: r17 = -264
    //     0x6ee8ac: mov             x17, #-0x108
    // 0x6ee8b0: ldr             x2, [fp, x17]
    // 0x6ee8b4: r17 = -320
    //     0x6ee8b4: mov             x17, #-0x140
    // 0x6ee8b8: str             x3, [fp, x17]
    // 0x6ee8bc: r0 = getUserByTc()
    //     0x6ee8bc: bl              #0x6ef2d8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUserByTc
    // 0x6ee8c0: mov             x1, x0
    // 0x6ee8c4: r17 = -328
    //     0x6ee8c4: mov             x17, #-0x148
    // 0x6ee8c8: str             x1, [fp, x17]
    // 0x6ee8cc: r0 = Await()
    //     0x6ee8cc: bl              #0x3dd188  ; AwaitStub
    // 0x6ee8d0: cmp             w0, NULL
    // 0x6ee8d4: b.eq            #0x6ee900
    // 0x6ee8d8: r1 = "Bu TC ile kayıt var."
    //     0x6ee8d8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18830] "Bu TC ile kayıt var."
    //     0x6ee8dc: ldr             x1, [x1, #0x830]
    // 0x6ee8e0: r0 = showError()
    //     0x6ee8e0: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6ee8e4: r17 = -272
    //     0x6ee8e4: mov             x17, #-0x110
    // 0x6ee8e8: ldr             x1, [fp, x17]
    // 0x6ee8ec: r0 = false
    //     0x6ee8ec: add             x0, NULL, #0x30  ; false
    // 0x6ee8f0: StoreField: r1->field_2b = r0
    //     0x6ee8f0: stur            w0, [x1, #0x2b]
    // 0x6ee8f4: r0 = notifyListeners()
    //     0x6ee8f4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6ee8f8: r0 = false
    //     0x6ee8f8: add             x0, NULL, #0x30  ; false
    // 0x6ee8fc: r0 = ReturnAsyncNotFuture()
    //     0x6ee8fc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ee900: r17 = -272
    //     0x6ee900: mov             x17, #-0x110
    // 0x6ee904: ldr             x1, [fp, x17]
    // 0x6ee908: r17 = -280
    //     0x6ee908: mov             x17, #-0x118
    // 0x6ee90c: ldr             x0, [fp, x17]
    // 0x6ee910: cmp             w0, NULL
    // 0x6ee914: b.ne            #0x6ee944
    // 0x6ee918: r0 = LoadStaticField(0xfe4)
    //     0x6ee918: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6ee91c: ldr             x0, [x0, #0x1fc8]
    // 0x6ee920: cmp             w0, NULL
    // 0x6ee924: b.ne            #0x6ee930
    // 0x6ee928: r0 = Null
    //     0x6ee928: mov             x0, NULL
    // 0x6ee92c: b               #0x6ee93c
    // 0x6ee930: LoadField: r2 = r0->field_4b
    //     0x6ee930: ldur            w2, [x0, #0x4b]
    // 0x6ee934: DecompressPointer r2
    //     0x6ee934: add             x2, x2, HEAP, lsl #32
    // 0x6ee938: mov             x0, x2
    // 0x6ee93c: mov             x7, x0
    // 0x6ee940: b               #0x6ee948
    // 0x6ee944: mov             x7, x0
    // 0x6ee948: r17 = -288
    //     0x6ee948: mov             x17, #-0x120
    // 0x6ee94c: ldr             x4, [fp, x17]
    // 0x6ee950: r17 = -296
    //     0x6ee950: mov             x17, #-0x128
    // 0x6ee954: ldr             x3, [fp, x17]
    // 0x6ee958: r17 = -304
    //     0x6ee958: mov             x17, #-0x130
    // 0x6ee95c: ldr             x2, [fp, x17]
    // 0x6ee960: r17 = -312
    //     0x6ee960: mov             x17, #-0x138
    // 0x6ee964: ldr             x0, [fp, x17]
    // 0x6ee968: r17 = -264
    //     0x6ee968: mov             x17, #-0x108
    // 0x6ee96c: ldr             x5, [fp, x17]
    // 0x6ee970: ldur            x6, [fp, #-0x100]
    // 0x6ee974: r17 = -280
    //     0x6ee974: mov             x17, #-0x118
    // 0x6ee978: str             x7, [fp, x17]
    // 0x6ee97c: r0 = generateSecureToken()
    //     0x6ee97c: bl              #0x6eefac  ; [package:umrem_demo/core/func/token_create.dart] ::generateSecureToken
    // 0x6ee980: r17 = -328
    //     0x6ee980: mov             x17, #-0x148
    // 0x6ee984: str             x0, [fp, x17]
    // 0x6ee988: r0 = DateTime()
    //     0x6ee988: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6ee98c: mov             x1, x0
    // 0x6ee990: r0 = false
    //     0x6ee990: add             x0, NULL, #0x30  ; false
    // 0x6ee994: r17 = -336
    //     0x6ee994: mov             x17, #-0x150
    // 0x6ee998: str             x1, [fp, x17]
    // 0x6ee99c: StoreField: r1->field_7 = r0
    //     0x6ee99c: stur            w0, [x1, #7]
    // 0x6ee9a0: r0 = _getCurrentMicros()
    //     0x6ee9a0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6ee9a4: r1 = LoadInt32Instr(r0)
    //     0x6ee9a4: sbfx            x1, x0, #1, #0x1f
    //     0x6ee9a8: tbz             w0, #0, #0x6ee9b0
    //     0x6ee9ac: ldur            x1, [x0, #7]
    // 0x6ee9b0: r17 = -336
    //     0x6ee9b0: mov             x17, #-0x150
    // 0x6ee9b4: ldr             x0, [fp, x17]
    // 0x6ee9b8: StoreField: r0->field_b = r1
    //     0x6ee9b8: stur            x1, [x0, #0xb]
    // 0x6ee9bc: r0 = UserModel()
    //     0x6ee9bc: bl              #0x5db72c  ; AllocateUserModelStub -> UserModel (size=0x50)
    // 0x6ee9c0: mov             x3, x0
    // 0x6ee9c4: r17 = -328
    //     0x6ee9c4: mov             x17, #-0x148
    // 0x6ee9c8: ldr             x0, [fp, x17]
    // 0x6ee9cc: r17 = -344
    //     0x6ee9cc: mov             x17, #-0x158
    // 0x6ee9d0: str             x3, [fp, x17]
    // 0x6ee9d4: StoreField: r3->field_7 = r0
    //     0x6ee9d4: stur            w0, [x3, #7]
    // 0x6ee9d8: r17 = -304
    //     0x6ee9d8: mov             x17, #-0x130
    // 0x6ee9dc: ldr             x4, [fp, x17]
    // 0x6ee9e0: StoreField: r3->field_b = r4
    //     0x6ee9e0: stur            w4, [x3, #0xb]
    // 0x6ee9e4: ldur            x5, [fp, #-0x100]
    // 0x6ee9e8: StoreField: r3->field_f = r5
    //     0x6ee9e8: stur            w5, [x3, #0xf]
    // 0x6ee9ec: r17 = -312
    //     0x6ee9ec: mov             x17, #-0x138
    // 0x6ee9f0: ldr             x6, [fp, x17]
    // 0x6ee9f4: StoreField: r3->field_13 = r6
    //     0x6ee9f4: stur            w6, [x3, #0x13]
    // 0x6ee9f8: r17 = -264
    //     0x6ee9f8: mov             x17, #-0x108
    // 0x6ee9fc: ldr             x7, [fp, x17]
    // 0x6eea00: ArrayStore: r3[0] = r7  ; List_4
    //     0x6eea00: stur            w7, [x3, #0x17]
    // 0x6eea04: r1 = ""
    //     0x6eea04: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6eea08: StoreField: r3->field_33 = r1
    //     0x6eea08: stur            w1, [x3, #0x33]
    // 0x6eea0c: r17 = -288
    //     0x6eea0c: mov             x17, #-0x120
    // 0x6eea10: ldr             x8, [fp, x17]
    // 0x6eea14: StoreField: r3->field_37 = r8
    //     0x6eea14: stur            w8, [x3, #0x37]
    // 0x6eea18: r17 = -296
    //     0x6eea18: mov             x17, #-0x128
    // 0x6eea1c: ldr             x9, [fp, x17]
    // 0x6eea20: StoreField: r3->field_3b = r9
    //     0x6eea20: stur            w9, [x3, #0x3b]
    // 0x6eea24: r17 = -336
    //     0x6eea24: mov             x17, #-0x150
    // 0x6eea28: ldr             x10, [fp, x17]
    // 0x6eea2c: StoreField: r3->field_3f = r10
    //     0x6eea2c: stur            w10, [x3, #0x3f]
    // 0x6eea30: r17 = -280
    //     0x6eea30: mov             x17, #-0x118
    // 0x6eea34: ldr             x11, [fp, x17]
    // 0x6eea38: StoreField: r3->field_4b = r11
    //     0x6eea38: stur            w11, [x3, #0x4b]
    // 0x6eea3c: r17 = -320
    //     0x6eea3c: mov             x17, #-0x140
    // 0x6eea40: ldr             x1, [fp, x17]
    // 0x6eea44: mov             x2, x3
    // 0x6eea48: r0 = createOrUpdateUser()
    //     0x6eea48: bl              #0x6eebf0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createOrUpdateUser
    // 0x6eea4c: mov             x1, x0
    // 0x6eea50: r17 = -320
    //     0x6eea50: mov             x17, #-0x140
    // 0x6eea54: str             x1, [fp, x17]
    // 0x6eea58: r0 = Await()
    //     0x6eea58: bl              #0x3dd188  ; AwaitStub
    // 0x6eea5c: stur            x0, [fp, #-0x100]
    // 0x6eea60: r16 = true
    //     0x6eea60: add             x16, NULL, #0x20  ; true
    // 0x6eea64: cmp             w0, w16
    // 0x6eea68: b.ne            #0x6eeb24
    // 0x6eea6c: r17 = -272
    //     0x6eea6c: mov             x17, #-0x110
    // 0x6eea70: ldr             x4, [fp, x17]
    // 0x6eea74: r17 = -344
    //     0x6eea74: mov             x17, #-0x158
    // 0x6eea78: ldr             x3, [fp, x17]
    // 0x6eea7c: r5 = 2
    //     0x6eea7c: mov             x5, #2
    // 0x6eea80: mov             x2, x5
    // 0x6eea84: r1 = Null
    //     0x6eea84: mov             x1, NULL
    // 0x6eea88: r0 = AllocateArray()
    //     0x6eea88: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eea8c: mov             x2, x0
    // 0x6eea90: r17 = -344
    //     0x6eea90: mov             x17, #-0x158
    // 0x6eea94: ldr             x0, [fp, x17]
    // 0x6eea98: r17 = -264
    //     0x6eea98: mov             x17, #-0x108
    // 0x6eea9c: str             x2, [fp, x17]
    // 0x6eeaa0: StoreField: r2->field_f = r0
    //     0x6eeaa0: stur            w0, [x2, #0xf]
    // 0x6eeaa4: r1 = <UserModel>
    //     0x6eeaa4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x6eeaa8: ldr             x1, [x1, #0xd98]
    // 0x6eeaac: r0 = AllocateGrowableArray()
    //     0x6eeaac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6eeab0: mov             x3, x0
    // 0x6eeab4: r17 = -264
    //     0x6eeab4: mov             x17, #-0x108
    // 0x6eeab8: ldr             x0, [fp, x17]
    // 0x6eeabc: r17 = -280
    //     0x6eeabc: mov             x17, #-0x118
    // 0x6eeac0: str             x3, [fp, x17]
    // 0x6eeac4: StoreField: r3->field_f = r0
    //     0x6eeac4: stur            w0, [x3, #0xf]
    // 0x6eeac8: r0 = 2
    //     0x6eeac8: mov             x0, #2
    // 0x6eeacc: StoreField: r3->field_b = r0
    //     0x6eeacc: stur            w0, [x3, #0xb]
    // 0x6eead0: r17 = -272
    //     0x6eead0: mov             x17, #-0x110
    // 0x6eead4: ldr             x0, [fp, x17]
    // 0x6eead8: LoadField: r2 = r0->field_33
    //     0x6eead8: ldur            w2, [x0, #0x33]
    // 0x6eeadc: DecompressPointer r2
    //     0x6eeadc: add             x2, x2, HEAP, lsl #32
    // 0x6eeae0: mov             x1, x3
    // 0x6eeae4: r0 = addAll()
    //     0x6eeae4: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6eeae8: r17 = -280
    //     0x6eeae8: mov             x17, #-0x118
    // 0x6eeaec: ldr             x0, [fp, x17]
    // 0x6eeaf0: r17 = -272
    //     0x6eeaf0: mov             x17, #-0x110
    // 0x6eeaf4: ldr             x2, [fp, x17]
    // 0x6eeaf8: StoreField: r2->field_33 = r0
    //     0x6eeaf8: stur            w0, [x2, #0x33]
    //     0x6eeafc: ldurb           w16, [x2, #-1]
    //     0x6eeb00: ldurb           w17, [x0, #-1]
    //     0x6eeb04: and             x16, x17, x16, lsr #2
    //     0x6eeb08: tst             x16, HEAP, lsr #32
    //     0x6eeb0c: b.eq            #0x6eeb14
    //     0x6eeb10: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6eeb14: r1 = "Kişi oluşturuldu"
    //     0x6eeb14: add             x1, PP, #0x18, lsl #12  ; [pp+0x18838] "Kişi oluşturuldu"
    //     0x6eeb18: ldr             x1, [x1, #0x838]
    // 0x6eeb1c: r0 = showSuccess()
    //     0x6eeb1c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6eeb20: b               #0x6eeb30
    // 0x6eeb24: r1 = "Kişi oluşturulamadı"
    //     0x6eeb24: add             x1, PP, #0x18, lsl #12  ; [pp+0x18840] "Kişi oluşturulamadı"
    //     0x6eeb28: ldr             x1, [x1, #0x840]
    // 0x6eeb2c: r0 = showError()
    //     0x6eeb2c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6eeb30: r17 = -272
    //     0x6eeb30: mov             x17, #-0x110
    // 0x6eeb34: ldr             x2, [fp, x17]
    // 0x6eeb38: r3 = false
    //     0x6eeb38: add             x3, NULL, #0x30  ; false
    // 0x6eeb3c: StoreField: r2->field_2b = r3
    //     0x6eeb3c: stur            w3, [x2, #0x2b]
    // 0x6eeb40: mov             x1, x2
    // 0x6eeb44: r0 = notifyListeners()
    //     0x6eeb44: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6eeb48: ldur            x0, [fp, #-0x100]
    // 0x6eeb4c: r0 = ReturnAsync()
    //     0x6eeb4c: b               #0x427094  ; ReturnAsyncStub
    // 0x6eeb50: sub             SP, fp, #0x158
    // 0x6eeb54: r17 = -272
    //     0x6eeb54: mov             x17, #-0x110
    // 0x6eeb58: ldr             x2, [fp, x17]
    // 0x6eeb5c: r3 = false
    //     0x6eeb5c: add             x3, NULL, #0x30  ; false
    // 0x6eeb60: mov             x4, x0
    // 0x6eeb64: stur            x0, [fp, #-0x100]
    // 0x6eeb68: mov             x0, x1
    // 0x6eeb6c: r17 = -264
    //     0x6eeb6c: mov             x17, #-0x108
    // 0x6eeb70: str             x1, [fp, x17]
    // 0x6eeb74: r1 = "Kişi oluşturulamadı"
    //     0x6eeb74: add             x1, PP, #0x18, lsl #12  ; [pp+0x18840] "Kişi oluşturulamadı"
    //     0x6eeb78: ldr             x1, [x1, #0x840]
    // 0x6eeb7c: r0 = showError()
    //     0x6eeb7c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6eeb80: r17 = -272
    //     0x6eeb80: mov             x17, #-0x110
    // 0x6eeb84: ldr             x2, [fp, x17]
    // 0x6eeb88: r0 = false
    //     0x6eeb88: add             x0, NULL, #0x30  ; false
    // 0x6eeb8c: StoreField: r2->field_2b = r0
    //     0x6eeb8c: stur            w0, [x2, #0x2b]
    // 0x6eeb90: mov             x1, x2
    // 0x6eeb94: r0 = notifyListeners()
    //     0x6eeb94: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6eeb98: r0 = false
    //     0x6eeb98: add             x0, NULL, #0x30  ; false
    // 0x6eeb9c: r0 = ReturnAsyncNotFuture()
    //     0x6eeb9c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6eeba0: sub             SP, fp, #0x158
    // 0x6eeba4: r17 = -272
    //     0x6eeba4: mov             x17, #-0x110
    // 0x6eeba8: ldr             x2, [fp, x17]
    // 0x6eebac: r3 = false
    //     0x6eebac: add             x3, NULL, #0x30  ; false
    // 0x6eebb0: mov             x4, x0
    // 0x6eebb4: stur            x0, [fp, #-0x100]
    // 0x6eebb8: mov             x0, x1
    // 0x6eebbc: r17 = -264
    //     0x6eebbc: mov             x17, #-0x108
    // 0x6eebc0: str             x1, [fp, x17]
    // 0x6eebc4: r3 = false
    //     0x6eebc4: add             x3, NULL, #0x30  ; false
    // 0x6eebc8: StoreField: r2->field_2b = r3
    //     0x6eebc8: stur            w3, [x2, #0x2b]
    // 0x6eebcc: mov             x1, x2
    // 0x6eebd0: r0 = notifyListeners()
    //     0x6eebd0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6eebd4: ldur            x0, [fp, #-0x100]
    // 0x6eebd8: r17 = -264
    //     0x6eebd8: mov             x17, #-0x108
    // 0x6eebdc: ldr             x1, [fp, x17]
    // 0x6eebe0: r0 = ReThrow()
    //     0x6eebe0: bl              #0x9262fc  ; ReThrowStub
    // 0x6eebe4: brk             #0
    // 0x6eebe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6eebe8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6eebec: b               #0x6ee878
  }
  _ isUserSaving(/* No info */) {
    // ** addr: 0x6f24b0, size: 0x38
    // 0x6f24b0: EnterFrame
    //     0x6f24b0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f24b4: mov             fp, SP
    // 0x6f24b8: CheckStackOverflow
    //     0x6f24b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f24bc: cmp             SP, x16
    //     0x6f24c0: b.ls            #0x6f24e0
    // 0x6f24c4: LoadField: r0 = r1->field_4b
    //     0x6f24c4: ldur            w0, [x1, #0x4b]
    // 0x6f24c8: DecompressPointer r0
    //     0x6f24c8: add             x0, x0, HEAP, lsl #32
    // 0x6f24cc: mov             x1, x0
    // 0x6f24d0: r0 = contains()
    //     0x6f24d0: bl              #0x4eaa30  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::contains
    // 0x6f24d4: LeaveFrame
    //     0x6f24d4: mov             SP, fp
    //     0x6f24d8: ldp             fp, lr, [SP], #0x10
    // 0x6f24dc: ret
    //     0x6f24dc: ret             
    // 0x6f24e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f24e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f24e4: b               #0x6f24c4
  }
  _ assignUser(/* No info */) async {
    // ** addr: 0x6f29ac, size: 0x2ac
    // 0x6f29ac: EnterFrame
    //     0x6f29ac: stp             fp, lr, [SP, #-0x10]!
    //     0x6f29b0: mov             fp, SP
    // 0x6f29b4: AllocStack(0x148)
    //     0x6f29b4: sub             SP, SP, #0x148
    // 0x6f29b8: SetupParameters(AdminProvider this /* r1 => r1, fp-0xe8 */, dynamic _ /* r2 => r2, fp-0xf0 */, dynamic _ /* r3 => r3, fp-0xf8 */, dynamic _ /* r5 => r5, fp-0x100 */)
    //     0x6f29b8: stur            NULL, [fp, #-8]
    //     0x6f29bc: stur            x1, [fp, #-0xe8]
    //     0x6f29c0: stur            x2, [fp, #-0xf0]
    //     0x6f29c4: stur            x3, [fp, #-0xf8]
    //     0x6f29c8: stur            x5, [fp, #-0x100]
    //     0x6f29cc: mov             x17, #-0x108
    // 0x6f29cc: r17 = -264
    // 0x6f29d0: str             x6, [fp, x17]
    // 0x6f29d4: r17 = -272
    //     0x6f29d4: mov             x17, #-0x110
    // 0x6f29d8: str             x7, [fp, x17]
    // 0x6f29dc: CheckStackOverflow
    //     0x6f29dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f29e0: cmp             SP, x16
    //     0x6f29e4: b.ls            #0x6f2c50
    // 0x6f29e8: r1 = 5
    //     0x6f29e8: mov             x1, #5
    // 0x6f29ec: r0 = AllocateContext()
    //     0x6f29ec: bl              #0x927010  ; AllocateContextStub
    // 0x6f29f0: mov             x1, x0
    // 0x6f29f4: ldur            x0, [fp, #-0xf0]
    // 0x6f29f8: r17 = -280
    //     0x6f29f8: mov             x17, #-0x118
    // 0x6f29fc: str             x1, [fp, x17]
    // 0x6f2a00: StoreField: r1->field_f = r0
    //     0x6f2a00: stur            w0, [x1, #0xf]
    // 0x6f2a04: ldur            x0, [fp, #-0xf8]
    // 0x6f2a08: StoreField: r1->field_13 = r0
    //     0x6f2a08: stur            w0, [x1, #0x13]
    // 0x6f2a0c: ldur            x0, [fp, #-0x100]
    // 0x6f2a10: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f2a10: stur            w0, [x1, #0x17]
    // 0x6f2a14: r17 = -264
    //     0x6f2a14: mov             x17, #-0x108
    // 0x6f2a18: ldr             x0, [fp, x17]
    // 0x6f2a1c: StoreField: r1->field_1b = r0
    //     0x6f2a1c: stur            w0, [x1, #0x1b]
    // 0x6f2a20: r17 = -272
    //     0x6f2a20: mov             x17, #-0x110
    // 0x6f2a24: ldr             x0, [fp, x17]
    // 0x6f2a28: StoreField: r1->field_1f = r0
    //     0x6f2a28: stur            w0, [x1, #0x1f]
    // 0x6f2a2c: InitAsync() -> Future<bool>
    //     0x6f2a2c: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6f2a30: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f2a34: ldur            x0, [fp, #-0xe8]
    // 0x6f2a38: LoadField: r3 = r0->field_4b
    //     0x6f2a38: ldur            w3, [x0, #0x4b]
    // 0x6f2a3c: DecompressPointer r3
    //     0x6f2a3c: add             x3, x3, HEAP, lsl #32
    // 0x6f2a40: r17 = -280
    //     0x6f2a40: mov             x17, #-0x118
    // 0x6f2a44: ldr             x4, [fp, x17]
    // 0x6f2a48: stur            x3, [fp, #-0xf0]
    // 0x6f2a4c: LoadField: r1 = r4->field_1f
    //     0x6f2a4c: ldur            w1, [x4, #0x1f]
    // 0x6f2a50: DecompressPointer r1
    //     0x6f2a50: add             x1, x1, HEAP, lsl #32
    // 0x6f2a54: LoadField: r2 = r1->field_7
    //     0x6f2a54: ldur            w2, [x1, #7]
    // 0x6f2a58: DecompressPointer r2
    //     0x6f2a58: add             x2, x2, HEAP, lsl #32
    // 0x6f2a5c: mov             x1, x3
    // 0x6f2a60: r0 = add()
    //     0x6f2a60: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x6f2a64: ldur            x1, [fp, #-0xe8]
    // 0x6f2a68: r0 = notifyListeners()
    //     0x6f2a68: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f2a6c: ldur            x0, [fp, #-0xe8]
    // 0x6f2a70: r17 = -280
    //     0x6f2a70: mov             x17, #-0x118
    // 0x6f2a74: ldr             x4, [fp, x17]
    // 0x6f2a78: LoadField: r8 = r0->field_23
    //     0x6f2a78: ldur            w8, [x0, #0x23]
    // 0x6f2a7c: DecompressPointer r8
    //     0x6f2a7c: add             x8, x8, HEAP, lsl #32
    // 0x6f2a80: r17 = -296
    //     0x6f2a80: mov             x17, #-0x128
    // 0x6f2a84: str             x8, [fp, x17]
    // 0x6f2a88: LoadField: r1 = r4->field_1f
    //     0x6f2a88: ldur            w1, [x4, #0x1f]
    // 0x6f2a8c: DecompressPointer r1
    //     0x6f2a8c: add             x1, x1, HEAP, lsl #32
    // 0x6f2a90: LoadField: r9 = r1->field_7
    //     0x6f2a90: ldur            w9, [x1, #7]
    // 0x6f2a94: DecompressPointer r9
    //     0x6f2a94: add             x9, x9, HEAP, lsl #32
    // 0x6f2a98: r17 = -288
    //     0x6f2a98: mov             x17, #-0x120
    // 0x6f2a9c: str             x9, [fp, x17]
    // 0x6f2aa0: LoadField: r10 = r4->field_13
    //     0x6f2aa0: ldur            w10, [x4, #0x13]
    // 0x6f2aa4: DecompressPointer r10
    //     0x6f2aa4: add             x10, x10, HEAP, lsl #32
    // 0x6f2aa8: r17 = -272
    //     0x6f2aa8: mov             x17, #-0x110
    // 0x6f2aac: str             x10, [fp, x17]
    // 0x6f2ab0: LoadField: r11 = r4->field_1b
    //     0x6f2ab0: ldur            w11, [x4, #0x1b]
    // 0x6f2ab4: DecompressPointer r11
    //     0x6f2ab4: add             x11, x11, HEAP, lsl #32
    // 0x6f2ab8: r17 = -264
    //     0x6f2ab8: mov             x17, #-0x108
    // 0x6f2abc: str             x11, [fp, x17]
    // 0x6f2ac0: LoadField: r12 = r4->field_f
    //     0x6f2ac0: ldur            w12, [x4, #0xf]
    // 0x6f2ac4: DecompressPointer r12
    //     0x6f2ac4: add             x12, x12, HEAP, lsl #32
    // 0x6f2ac8: stur            x12, [fp, #-0x100]
    // 0x6f2acc: ArrayLoad: r13 = r4[0]  ; List_4
    //     0x6f2acc: ldur            w13, [x4, #0x17]
    // 0x6f2ad0: DecompressPointer r13
    //     0x6f2ad0: add             x13, x13, HEAP, lsl #32
    // 0x6f2ad4: mov             x1, x8
    // 0x6f2ad8: mov             x2, x12
    // 0x6f2adc: mov             x3, x10
    // 0x6f2ae0: mov             x5, x13
    // 0x6f2ae4: mov             x6, x11
    // 0x6f2ae8: mov             x7, x9
    // 0x6f2aec: stur            x13, [fp, #-0xf8]
    // 0x6f2af0: r0 = updateUserAssignments()
    //     0x6f2af0: bl              #0x6f2c58  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateUserAssignments
    // 0x6f2af4: mov             x1, x0
    // 0x6f2af8: r17 = -304
    //     0x6f2af8: mov             x17, #-0x130
    // 0x6f2afc: str             x1, [fp, x17]
    // 0x6f2b00: r0 = Await()
    //     0x6f2b00: bl              #0x3dd188  ; AwaitStub
    // 0x6f2b04: stur            x0, [fp, #-0x100]
    // 0x6f2b08: r16 = true
    //     0x6f2b08: add             x16, NULL, #0x20  ; true
    // 0x6f2b0c: cmp             w0, w16
    // 0x6f2b10: b.ne            #0x6f2bc8
    // 0x6f2b14: ldur            x3, [fp, #-0xe8]
    // 0x6f2b18: LoadField: r4 = r3->field_33
    //     0x6f2b18: ldur            w4, [x3, #0x33]
    // 0x6f2b1c: DecompressPointer r4
    //     0x6f2b1c: add             x4, x4, HEAP, lsl #32
    // 0x6f2b20: r17 = -280
    //     0x6f2b20: mov             x17, #-0x118
    // 0x6f2b24: ldr             x2, [fp, x17]
    // 0x6f2b28: stur            x4, [fp, #-0xf8]
    // 0x6f2b2c: r1 = Function '<anonymous closure>':.
    //     0x6f2b2c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c2d8] AnonymousClosure: (0x6f2e4c), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::assignUser (0x6f29ac)
    //     0x6f2b30: ldr             x1, [x1, #0x2d8]
    // 0x6f2b34: r0 = AllocateClosure()
    //     0x6f2b34: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f2b38: mov             x1, x0
    // 0x6f2b3c: ldur            x0, [fp, #-0xf8]
    // 0x6f2b40: r2 = LoadClassIdInstr(r0)
    //     0x6f2b40: ldur            x2, [x0, #-1]
    //     0x6f2b44: ubfx            x2, x2, #0xc, #0x14
    // 0x6f2b48: r16 = <UserModel>
    //     0x6f2b48: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x6f2b4c: ldr             x16, [x16, #0xd98]
    // 0x6f2b50: stp             x0, x16, [SP, #8]
    // 0x6f2b54: str             x1, [SP]
    // 0x6f2b58: mov             x0, x2
    // 0x6f2b5c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f2b5c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f2b60: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6f2b60: mov             x17, #0xd1d6
    //     0x6f2b64: add             lr, x0, x17
    //     0x6f2b68: ldr             lr, [x21, lr, lsl #3]
    //     0x6f2b6c: blr             lr
    // 0x6f2b70: r1 = LoadClassIdInstr(r0)
    //     0x6f2b70: ldur            x1, [x0, #-1]
    //     0x6f2b74: ubfx            x1, x1, #0xc, #0x14
    // 0x6f2b78: mov             x16, x0
    // 0x6f2b7c: mov             x0, x1
    // 0x6f2b80: mov             x1, x16
    // 0x6f2b84: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f2b84: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f2b88: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6f2b88: mov             x17, #0xd299
    //     0x6f2b8c: add             lr, x0, x17
    //     0x6f2b90: ldr             lr, [x21, lr, lsl #3]
    //     0x6f2b94: blr             lr
    // 0x6f2b98: ldur            x2, [fp, #-0xe8]
    // 0x6f2b9c: StoreField: r2->field_33 = r0
    //     0x6f2b9c: stur            w0, [x2, #0x33]
    //     0x6f2ba0: ldurb           w16, [x2, #-1]
    //     0x6f2ba4: ldurb           w17, [x0, #-1]
    //     0x6f2ba8: and             x16, x17, x16, lsr #2
    //     0x6f2bac: tst             x16, HEAP, lsr #32
    //     0x6f2bb0: b.eq            #0x6f2bb8
    //     0x6f2bb4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f2bb8: r1 = "Atama güncellendi"
    //     0x6f2bb8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c2e0] "Atama güncellendi"
    //     0x6f2bbc: ldr             x1, [x1, #0x2e0]
    // 0x6f2bc0: r0 = showSuccess()
    //     0x6f2bc0: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6f2bc4: b               #0x6f2bd4
    // 0x6f2bc8: r1 = "Atama kaydedilemedi"
    //     0x6f2bc8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c2e8] "Atama kaydedilemedi"
    //     0x6f2bcc: ldr             x1, [x1, #0x2e8]
    // 0x6f2bd0: r0 = showError()
    //     0x6f2bd0: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6f2bd4: r17 = -280
    //     0x6f2bd4: mov             x17, #-0x118
    // 0x6f2bd8: ldr             x2, [fp, x17]
    // 0x6f2bdc: LoadField: r0 = r2->field_1f
    //     0x6f2bdc: ldur            w0, [x2, #0x1f]
    // 0x6f2be0: DecompressPointer r0
    //     0x6f2be0: add             x0, x0, HEAP, lsl #32
    // 0x6f2be4: LoadField: r2 = r0->field_7
    //     0x6f2be4: ldur            w2, [x0, #7]
    // 0x6f2be8: DecompressPointer r2
    //     0x6f2be8: add             x2, x2, HEAP, lsl #32
    // 0x6f2bec: ldur            x1, [fp, #-0xf0]
    // 0x6f2bf0: r0 = remove()
    //     0x6f2bf0: bl              #0x8fc724  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove
    // 0x6f2bf4: ldur            x1, [fp, #-0xe8]
    // 0x6f2bf8: r0 = notifyListeners()
    //     0x6f2bf8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f2bfc: ldur            x0, [fp, #-0x100]
    // 0x6f2c00: r0 = ReturnAsync()
    //     0x6f2c00: b               #0x427094  ; ReturnAsyncStub
    // 0x6f2c04: sub             SP, fp, #0x148
    // 0x6f2c08: r17 = -280
    //     0x6f2c08: mov             x17, #-0x118
    // 0x6f2c0c: ldr             x2, [fp, x17]
    // 0x6f2c10: mov             x3, x0
    // 0x6f2c14: stur            x0, [fp, #-0xf8]
    // 0x6f2c18: mov             x0, x1
    // 0x6f2c1c: stur            x1, [fp, #-0x100]
    // 0x6f2c20: LoadField: r1 = r2->field_1f
    //     0x6f2c20: ldur            w1, [x2, #0x1f]
    // 0x6f2c24: DecompressPointer r1
    //     0x6f2c24: add             x1, x1, HEAP, lsl #32
    // 0x6f2c28: LoadField: r2 = r1->field_7
    //     0x6f2c28: ldur            w2, [x1, #7]
    // 0x6f2c2c: DecompressPointer r2
    //     0x6f2c2c: add             x2, x2, HEAP, lsl #32
    // 0x6f2c30: ldur            x1, [fp, #-0xf0]
    // 0x6f2c34: r0 = remove()
    //     0x6f2c34: bl              #0x8fc724  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove
    // 0x6f2c38: ldur            x1, [fp, #-0xe8]
    // 0x6f2c3c: r0 = notifyListeners()
    //     0x6f2c3c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f2c40: ldur            x0, [fp, #-0xf8]
    // 0x6f2c44: ldur            x1, [fp, #-0x100]
    // 0x6f2c48: r0 = ReThrow()
    //     0x6f2c48: bl              #0x9262fc  ; ReThrowStub
    // 0x6f2c4c: brk             #0
    // 0x6f2c50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f2c50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f2c54: b               #0x6f29e8
  }
  [closure] UserModel <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6f2e4c, size: 0x240
    // 0x6f2e4c: EnterFrame
    //     0x6f2e4c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f2e50: mov             fp, SP
    // 0x6f2e54: AllocStack(0x40)
    //     0x6f2e54: sub             SP, SP, #0x40
    // 0x6f2e58: SetupParameters([dynamic _ /* r0 */])
    //     0x6f2e58: ldr             x0, [fp, #0x18]
    //     0x6f2e5c: ldur            w1, [x0, #0x17]
    //     0x6f2e60: add             x1, x1, HEAP, lsl #32
    //     0x6f2e64: stur            x1, [fp, #-8]
    // 0x6f2e68: CheckStackOverflow
    //     0x6f2e68: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f2e6c: cmp             SP, x16
    //     0x6f2e70: b.ls            #0x6f3084
    // 0x6f2e74: ldr             x2, [fp, #0x10]
    // 0x6f2e78: LoadField: r0 = r2->field_7
    //     0x6f2e78: ldur            w0, [x2, #7]
    // 0x6f2e7c: DecompressPointer r0
    //     0x6f2e7c: add             x0, x0, HEAP, lsl #32
    // 0x6f2e80: LoadField: r3 = r1->field_1f
    //     0x6f2e80: ldur            w3, [x1, #0x1f]
    // 0x6f2e84: DecompressPointer r3
    //     0x6f2e84: add             x3, x3, HEAP, lsl #32
    // 0x6f2e88: LoadField: r4 = r3->field_7
    //     0x6f2e88: ldur            w4, [x3, #7]
    // 0x6f2e8c: DecompressPointer r4
    //     0x6f2e8c: add             x4, x4, HEAP, lsl #32
    // 0x6f2e90: r3 = LoadClassIdInstr(r0)
    //     0x6f2e90: ldur            x3, [x0, #-1]
    //     0x6f2e94: ubfx            x3, x3, #0xc, #0x14
    // 0x6f2e98: stp             x4, x0, [SP]
    // 0x6f2e9c: mov             x0, x3
    // 0x6f2ea0: mov             lr, x0
    // 0x6f2ea4: ldr             lr, [x21, lr, lsl #3]
    // 0x6f2ea8: blr             lr
    // 0x6f2eac: tbnz            w0, #4, #0x6f3074
    // 0x6f2eb0: ldur            x1, [fp, #-8]
    // 0x6f2eb4: LoadField: r0 = r1->field_13
    //     0x6f2eb4: ldur            w0, [x1, #0x13]
    // 0x6f2eb8: DecompressPointer r0
    //     0x6f2eb8: add             x0, x0, HEAP, lsl #32
    // 0x6f2ebc: r2 = LoadClassIdInstr(r0)
    //     0x6f2ebc: ldur            x2, [x0, #-1]
    //     0x6f2ec0: ubfx            x2, x2, #0xc, #0x14
    // 0x6f2ec4: r16 = "Mekke"
    //     0x6f2ec4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x6f2ec8: ldr             x16, [x16, #0xdf0]
    // 0x6f2ecc: stp             x16, x0, [SP]
    // 0x6f2ed0: mov             x0, x2
    // 0x6f2ed4: mov             lr, x0
    // 0x6f2ed8: ldr             lr, [x21, lr, lsl #3]
    // 0x6f2edc: blr             lr
    // 0x6f2ee0: tbnz            w0, #4, #0x6f2fa8
    // 0x6f2ee4: ldur            x0, [fp, #-8]
    // 0x6f2ee8: LoadField: r1 = r0->field_1b
    //     0x6f2ee8: ldur            w1, [x0, #0x1b]
    // 0x6f2eec: DecompressPointer r1
    //     0x6f2eec: add             x1, x1, HEAP, lsl #32
    // 0x6f2ef0: cmp             w1, NULL
    // 0x6f2ef4: b.ne            #0x6f2f08
    // 0x6f2ef8: ldr             x2, [fp, #0x10]
    // 0x6f2efc: LoadField: r1 = r2->field_1b
    //     0x6f2efc: ldur            w1, [x2, #0x1b]
    // 0x6f2f00: DecompressPointer r1
    //     0x6f2f00: add             x1, x1, HEAP, lsl #32
    // 0x6f2f04: b               #0x6f2f0c
    // 0x6f2f08: ldr             x2, [fp, #0x10]
    // 0x6f2f0c: stur            x1, [fp, #-0x20]
    // 0x6f2f10: LoadField: r3 = r0->field_f
    //     0x6f2f10: ldur            w3, [x0, #0xf]
    // 0x6f2f14: DecompressPointer r3
    //     0x6f2f14: add             x3, x3, HEAP, lsl #32
    // 0x6f2f18: cmp             w3, NULL
    // 0x6f2f1c: b.ne            #0x6f2f28
    // 0x6f2f20: LoadField: r3 = r2->field_23
    //     0x6f2f20: ldur            w3, [x2, #0x23]
    // 0x6f2f24: DecompressPointer r3
    //     0x6f2f24: add             x3, x3, HEAP, lsl #32
    // 0x6f2f28: stur            x3, [fp, #-0x18]
    // 0x6f2f2c: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x6f2f2c: ldur            w4, [x0, #0x17]
    // 0x6f2f30: DecompressPointer r4
    //     0x6f2f30: add             x4, x4, HEAP, lsl #32
    // 0x6f2f34: cmp             w4, NULL
    // 0x6f2f38: b.ne            #0x6f2f48
    // 0x6f2f3c: LoadField: r0 = r2->field_2b
    //     0x6f2f3c: ldur            w0, [x2, #0x2b]
    // 0x6f2f40: DecompressPointer r0
    //     0x6f2f40: add             x0, x0, HEAP, lsl #32
    // 0x6f2f44: b               #0x6f2f4c
    // 0x6f2f48: mov             x0, x4
    // 0x6f2f4c: stur            x0, [fp, #-0x10]
    // 0x6f2f50: r0 = DateTime()
    //     0x6f2f50: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f2f54: r1 = false
    //     0x6f2f54: add             x1, NULL, #0x30  ; false
    // 0x6f2f58: stur            x0, [fp, #-0x28]
    // 0x6f2f5c: StoreField: r0->field_7 = r1
    //     0x6f2f5c: stur            w1, [x0, #7]
    // 0x6f2f60: r0 = _getCurrentMicros()
    //     0x6f2f60: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6f2f64: r1 = LoadInt32Instr(r0)
    //     0x6f2f64: sbfx            x1, x0, #1, #0x1f
    //     0x6f2f68: tbz             w0, #0, #0x6f2f70
    //     0x6f2f6c: ldur            x1, [x0, #7]
    // 0x6f2f70: ldur            x2, [fp, #-0x28]
    // 0x6f2f74: StoreField: r2->field_b = r1
    //     0x6f2f74: stur            x1, [x2, #0xb]
    // 0x6f2f78: ldur            x16, [fp, #-0x20]
    // 0x6f2f7c: ldur            lr, [fp, #-0x18]
    // 0x6f2f80: stp             lr, x16, [SP, #8]
    // 0x6f2f84: ldur            x16, [fp, #-0x10]
    // 0x6f2f88: str             x16, [SP]
    // 0x6f2f8c: ldr             x1, [fp, #0x10]
    // 0x6f2f90: r4 = const [0, 0x5, 0x3, 0x2, mekkeOdaId, 0x4, mekkeOtelId, 0x3, mekkeSeferiId, 0x2, null]
    //     0x6f2f90: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c2f0] List(11) [0, 0x5, 0x3, 0x2, "mekkeOdaId", 0x4, "mekkeOtelId", 0x3, "mekkeSeferiId", 0x2, Null]
    //     0x6f2f94: ldr             x4, [x4, #0x2f0]
    // 0x6f2f98: r0 = copyWith()
    //     0x6f2f98: bl              #0x6f308c  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::copyWith
    // 0x6f2f9c: LeaveFrame
    //     0x6f2f9c: mov             SP, fp
    //     0x6f2fa0: ldp             fp, lr, [SP], #0x10
    // 0x6f2fa4: ret
    //     0x6f2fa4: ret             
    // 0x6f2fa8: ldur            x0, [fp, #-8]
    // 0x6f2fac: r1 = false
    //     0x6f2fac: add             x1, NULL, #0x30  ; false
    // 0x6f2fb0: LoadField: r2 = r0->field_1b
    //     0x6f2fb0: ldur            w2, [x0, #0x1b]
    // 0x6f2fb4: DecompressPointer r2
    //     0x6f2fb4: add             x2, x2, HEAP, lsl #32
    // 0x6f2fb8: cmp             w2, NULL
    // 0x6f2fbc: b.ne            #0x6f2fd0
    // 0x6f2fc0: ldr             x3, [fp, #0x10]
    // 0x6f2fc4: LoadField: r2 = r3->field_1f
    //     0x6f2fc4: ldur            w2, [x3, #0x1f]
    // 0x6f2fc8: DecompressPointer r2
    //     0x6f2fc8: add             x2, x2, HEAP, lsl #32
    // 0x6f2fcc: b               #0x6f2fd4
    // 0x6f2fd0: ldr             x3, [fp, #0x10]
    // 0x6f2fd4: stur            x2, [fp, #-0x18]
    // 0x6f2fd8: LoadField: r4 = r0->field_f
    //     0x6f2fd8: ldur            w4, [x0, #0xf]
    // 0x6f2fdc: DecompressPointer r4
    //     0x6f2fdc: add             x4, x4, HEAP, lsl #32
    // 0x6f2fe0: cmp             w4, NULL
    // 0x6f2fe4: b.ne            #0x6f2ff0
    // 0x6f2fe8: LoadField: r4 = r3->field_27
    //     0x6f2fe8: ldur            w4, [x3, #0x27]
    // 0x6f2fec: DecompressPointer r4
    //     0x6f2fec: add             x4, x4, HEAP, lsl #32
    // 0x6f2ff0: stur            x4, [fp, #-0x10]
    // 0x6f2ff4: ArrayLoad: r5 = r0[0]  ; List_4
    //     0x6f2ff4: ldur            w5, [x0, #0x17]
    // 0x6f2ff8: DecompressPointer r5
    //     0x6f2ff8: add             x5, x5, HEAP, lsl #32
    // 0x6f2ffc: cmp             w5, NULL
    // 0x6f3000: b.ne            #0x6f3010
    // 0x6f3004: LoadField: r0 = r3->field_2f
    //     0x6f3004: ldur            w0, [x3, #0x2f]
    // 0x6f3008: DecompressPointer r0
    //     0x6f3008: add             x0, x0, HEAP, lsl #32
    // 0x6f300c: b               #0x6f3014
    // 0x6f3010: mov             x0, x5
    // 0x6f3014: stur            x0, [fp, #-8]
    // 0x6f3018: r0 = DateTime()
    //     0x6f3018: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f301c: mov             x1, x0
    // 0x6f3020: r0 = false
    //     0x6f3020: add             x0, NULL, #0x30  ; false
    // 0x6f3024: stur            x1, [fp, #-0x20]
    // 0x6f3028: StoreField: r1->field_7 = r0
    //     0x6f3028: stur            w0, [x1, #7]
    // 0x6f302c: r0 = _getCurrentMicros()
    //     0x6f302c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6f3030: r1 = LoadInt32Instr(r0)
    //     0x6f3030: sbfx            x1, x0, #1, #0x1f
    //     0x6f3034: tbz             w0, #0, #0x6f303c
    //     0x6f3038: ldur            x1, [x0, #7]
    // 0x6f303c: ldur            x2, [fp, #-0x20]
    // 0x6f3040: StoreField: r2->field_b = r1
    //     0x6f3040: stur            x1, [x2, #0xb]
    // 0x6f3044: ldur            x16, [fp, #-0x18]
    // 0x6f3048: ldur            lr, [fp, #-0x10]
    // 0x6f304c: stp             lr, x16, [SP, #8]
    // 0x6f3050: ldur            x16, [fp, #-8]
    // 0x6f3054: str             x16, [SP]
    // 0x6f3058: ldr             x1, [fp, #0x10]
    // 0x6f305c: r4 = const [0, 0x5, 0x3, 0x2, medineOdaId, 0x4, medineOtelId, 0x3, medineSeferiId, 0x2, null]
    //     0x6f305c: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c2f8] List(11) [0, 0x5, 0x3, 0x2, "medineOdaId", 0x4, "medineOtelId", 0x3, "medineSeferiId", 0x2, Null]
    //     0x6f3060: ldr             x4, [x4, #0x2f8]
    // 0x6f3064: r0 = copyWith()
    //     0x6f3064: bl              #0x6f308c  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::copyWith
    // 0x6f3068: LeaveFrame
    //     0x6f3068: mov             SP, fp
    //     0x6f306c: ldp             fp, lr, [SP], #0x10
    // 0x6f3070: ret
    //     0x6f3070: ret             
    // 0x6f3074: ldr             x0, [fp, #0x10]
    // 0x6f3078: LeaveFrame
    //     0x6f3078: mov             SP, fp
    //     0x6f307c: ldp             fp, lr, [SP], #0x10
    // 0x6f3080: ret
    //     0x6f3080: ret             
    // 0x6f3084: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3084: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3088: b               #0x6f2e74
  }
  _ updateUserDetails(/* No info */) async {
    // ** addr: 0x6f364c, size: 0x378
    // 0x6f364c: EnterFrame
    //     0x6f364c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3650: mov             fp, SP
    // 0x6f3654: AllocStack(0x120)
    //     0x6f3654: sub             SP, SP, #0x120
    // 0x6f3658: SetupParameters(AdminProvider this /* r1 => r1, fp-0xd8 */, dynamic _ /* r2 => r2, fp-0xe0 */, dynamic _ /* r3 => r3, fp-0xe8 */, dynamic _ /* r5 => r5, fp-0xf0 */, dynamic _ /* r6 => r6, fp-0xf8 */, dynamic _ /* r7 => r7, fp-0x100 */, dynamic _ /* r4, fp-0xd0 */)
    //     0x6f3658: stur            NULL, [fp, #-8]
    //     0x6f365c: mov             x0, #0
    //     0x6f3660: stur            x1, [fp, #-0xd8]
    //     0x6f3664: stur            x2, [fp, #-0xe0]
    //     0x6f3668: stur            x3, [fp, #-0xe8]
    //     0x6f366c: stur            x5, [fp, #-0xf0]
    //     0x6f3670: stur            x6, [fp, #-0xf8]
    //     0x6f3674: stur            x7, [fp, #-0x100]
    //     0x6f3678: add             x4, fp, w0, sxtw #2
    //     0x6f367c: ldr             x4, [x4, #0x10]
    //     0x6f3680: stur            x4, [fp, #-0xd0]
    // 0x6f3684: CheckStackOverflow
    //     0x6f3684: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3688: cmp             SP, x16
    //     0x6f368c: b.ls            #0x6f39bc
    // 0x6f3690: r1 = 6
    //     0x6f3690: mov             x1, #6
    // 0x6f3694: r0 = AllocateContext()
    //     0x6f3694: bl              #0x927010  ; AllocateContextStub
    // 0x6f3698: mov             x1, x0
    // 0x6f369c: ldur            x0, [fp, #-0xe0]
    // 0x6f36a0: r17 = -264
    //     0x6f36a0: mov             x17, #-0x108
    // 0x6f36a4: str             x1, [fp, x17]
    // 0x6f36a8: StoreField: r1->field_f = r0
    //     0x6f36a8: stur            w0, [x1, #0xf]
    // 0x6f36ac: ldur            x0, [fp, #-0xe8]
    // 0x6f36b0: StoreField: r1->field_13 = r0
    //     0x6f36b0: stur            w0, [x1, #0x13]
    // 0x6f36b4: ldur            x0, [fp, #-0xf0]
    // 0x6f36b8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f36b8: stur            w0, [x1, #0x17]
    // 0x6f36bc: ldur            x0, [fp, #-0xf8]
    // 0x6f36c0: StoreField: r1->field_1b = r0
    //     0x6f36c0: stur            w0, [x1, #0x1b]
    // 0x6f36c4: ldur            x0, [fp, #-0x100]
    // 0x6f36c8: StoreField: r1->field_1f = r0
    //     0x6f36c8: stur            w0, [x1, #0x1f]
    // 0x6f36cc: ldur            x0, [fp, #-0xd0]
    // 0x6f36d0: StoreField: r1->field_23 = r0
    //     0x6f36d0: stur            w0, [x1, #0x23]
    // 0x6f36d4: InitAsync() -> Future<bool>
    //     0x6f36d4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6f36d8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f36dc: ldur            x0, [fp, #-0xd8]
    // 0x6f36e0: LoadField: r3 = r0->field_4b
    //     0x6f36e0: ldur            w3, [x0, #0x4b]
    // 0x6f36e4: DecompressPointer r3
    //     0x6f36e4: add             x3, x3, HEAP, lsl #32
    // 0x6f36e8: r17 = -264
    //     0x6f36e8: mov             x17, #-0x108
    // 0x6f36ec: ldr             x4, [fp, x17]
    // 0x6f36f0: stur            x3, [fp, #-0xd0]
    // 0x6f36f4: LoadField: r1 = r4->field_23
    //     0x6f36f4: ldur            w1, [x4, #0x23]
    // 0x6f36f8: DecompressPointer r1
    //     0x6f36f8: add             x1, x1, HEAP, lsl #32
    // 0x6f36fc: LoadField: r2 = r1->field_7
    //     0x6f36fc: ldur            w2, [x1, #7]
    // 0x6f3700: DecompressPointer r2
    //     0x6f3700: add             x2, x2, HEAP, lsl #32
    // 0x6f3704: mov             x1, x3
    // 0x6f3708: r0 = add()
    //     0x6f3708: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x6f370c: ldur            x1, [fp, #-0xd8]
    // 0x6f3710: r0 = notifyListeners()
    //     0x6f3710: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f3714: r17 = -264
    //     0x6f3714: mov             x17, #-0x108
    // 0x6f3718: ldr             x2, [fp, x17]
    // 0x6f371c: r16 = <String, dynamic>
    //     0x6f371c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6f3720: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x6f3724: stp             lr, x16, [SP]
    // 0x6f3728: r0 = Map._fromLiteral()
    //     0x6f3728: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f372c: mov             x4, x0
    // 0x6f3730: r17 = -264
    //     0x6f3730: mov             x17, #-0x108
    // 0x6f3734: ldr             x0, [fp, x17]
    // 0x6f3738: stur            x4, [fp, #-0xe0]
    // 0x6f373c: LoadField: r3 = r0->field_1b
    //     0x6f373c: ldur            w3, [x0, #0x1b]
    // 0x6f3740: DecompressPointer r3
    //     0x6f3740: add             x3, x3, HEAP, lsl #32
    // 0x6f3744: mov             x1, x4
    // 0x6f3748: r2 = "user_name"
    //     0x6f3748: add             x2, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x6f374c: ldr             x2, [x2, #0xb30]
    // 0x6f3750: r0 = []=()
    //     0x6f3750: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f3754: r17 = -264
    //     0x6f3754: mov             x17, #-0x108
    // 0x6f3758: ldr             x0, [fp, x17]
    // 0x6f375c: LoadField: r3 = r0->field_1f
    //     0x6f375c: ldur            w3, [x0, #0x1f]
    // 0x6f3760: DecompressPointer r3
    //     0x6f3760: add             x3, x3, HEAP, lsl #32
    // 0x6f3764: ldur            x1, [fp, #-0xe0]
    // 0x6f3768: r2 = "user_tel"
    //     0x6f3768: add             x2, PP, #0x15, lsl #12  ; [pp+0x15730] "user_tel"
    //     0x6f376c: ldr             x2, [x2, #0x730]
    // 0x6f3770: r0 = []=()
    //     0x6f3770: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f3774: r17 = -264
    //     0x6f3774: mov             x17, #-0x108
    // 0x6f3778: ldr             x0, [fp, x17]
    // 0x6f377c: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6f377c: ldur            w3, [x0, #0x17]
    // 0x6f3780: DecompressPointer r3
    //     0x6f3780: add             x3, x3, HEAP, lsl #32
    // 0x6f3784: ldur            x1, [fp, #-0xe0]
    // 0x6f3788: r2 = "user_location"
    //     0x6f3788: add             x2, PP, #0x15, lsl #12  ; [pp+0x15760] "user_location"
    //     0x6f378c: ldr             x2, [x2, #0x760]
    // 0x6f3790: r0 = []=()
    //     0x6f3790: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f3794: r17 = -264
    //     0x6f3794: mov             x17, #-0x108
    // 0x6f3798: ldr             x0, [fp, x17]
    // 0x6f379c: LoadField: r3 = r0->field_f
    //     0x6f379c: ldur            w3, [x0, #0xf]
    // 0x6f37a0: DecompressPointer r3
    //     0x6f37a0: add             x3, x3, HEAP, lsl #32
    // 0x6f37a4: cmp             w3, NULL
    // 0x6f37a8: b.eq            #0x6f37bc
    // 0x6f37ac: ldur            x1, [fp, #-0xe0]
    // 0x6f37b0: r2 = "cinsiyet"
    //     0x6f37b0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15778] "cinsiyet"
    //     0x6f37b4: ldr             x2, [x2, #0x778]
    // 0x6f37b8: r0 = []=()
    //     0x6f37b8: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f37bc: r17 = -264
    //     0x6f37bc: mov             x17, #-0x108
    // 0x6f37c0: ldr             x0, [fp, x17]
    // 0x6f37c4: LoadField: r3 = r0->field_13
    //     0x6f37c4: ldur            w3, [x0, #0x13]
    // 0x6f37c8: DecompressPointer r3
    //     0x6f37c8: add             x3, x3, HEAP, lsl #32
    // 0x6f37cc: cmp             w3, NULL
    // 0x6f37d0: b.eq            #0x6f37e4
    // 0x6f37d4: ldur            x1, [fp, #-0xe0]
    // 0x6f37d8: r2 = "dogum_tarihi"
    //     0x6f37d8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15790] "dogum_tarihi"
    //     0x6f37dc: ldr             x2, [x2, #0x790]
    // 0x6f37e0: r0 = []=()
    //     0x6f37e0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f37e4: ldur            x0, [fp, #-0xe0]
    // 0x6f37e8: LoadField: r1 = r0->field_13
    //     0x6f37e8: ldur            w1, [x0, #0x13]
    // 0x6f37ec: r2 = LoadInt32Instr(r1)
    //     0x6f37ec: sbfx            x2, x1, #1, #0x1f
    // 0x6f37f0: asr             x1, x2, #1
    // 0x6f37f4: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6f37f4: ldur            w2, [x0, #0x17]
    // 0x6f37f8: r3 = LoadInt32Instr(r2)
    //     0x6f37f8: sbfx            x3, x2, #1, #0x1f
    // 0x6f37fc: sub             x2, x1, x3
    // 0x6f3800: cbnz            x2, #0x6f3834
    // 0x6f3804: r17 = -264
    //     0x6f3804: mov             x17, #-0x108
    // 0x6f3808: ldr             x4, [fp, x17]
    // 0x6f380c: LoadField: r0 = r4->field_23
    //     0x6f380c: ldur            w0, [x4, #0x23]
    // 0x6f3810: DecompressPointer r0
    //     0x6f3810: add             x0, x0, HEAP, lsl #32
    // 0x6f3814: LoadField: r2 = r0->field_7
    //     0x6f3814: ldur            w2, [x0, #7]
    // 0x6f3818: DecompressPointer r2
    //     0x6f3818: add             x2, x2, HEAP, lsl #32
    // 0x6f381c: ldur            x1, [fp, #-0xd0]
    // 0x6f3820: r0 = remove()
    //     0x6f3820: bl              #0x8fc724  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove
    // 0x6f3824: ldur            x1, [fp, #-0xd8]
    // 0x6f3828: r0 = notifyListeners()
    //     0x6f3828: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f382c: r0 = true
    //     0x6f382c: add             x0, NULL, #0x20  ; true
    // 0x6f3830: r0 = ReturnAsyncNotFuture()
    //     0x6f3830: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f3834: ldur            x5, [fp, #-0xd8]
    // 0x6f3838: r17 = -264
    //     0x6f3838: mov             x17, #-0x108
    // 0x6f383c: ldr             x4, [fp, x17]
    // 0x6f3840: LoadField: r1 = r5->field_23
    //     0x6f3840: ldur            w1, [x5, #0x23]
    // 0x6f3844: DecompressPointer r1
    //     0x6f3844: add             x1, x1, HEAP, lsl #32
    // 0x6f3848: LoadField: r2 = r4->field_23
    //     0x6f3848: ldur            w2, [x4, #0x23]
    // 0x6f384c: DecompressPointer r2
    //     0x6f384c: add             x2, x2, HEAP, lsl #32
    // 0x6f3850: LoadField: r3 = r2->field_7
    //     0x6f3850: ldur            w3, [x2, #7]
    // 0x6f3854: DecompressPointer r3
    //     0x6f3854: add             x3, x3, HEAP, lsl #32
    // 0x6f3858: mov             x2, x3
    // 0x6f385c: mov             x3, x0
    // 0x6f3860: r0 = updateUserFields()
    //     0x6f3860: bl              #0x6f39c4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateUserFields
    // 0x6f3864: mov             x1, x0
    // 0x6f3868: stur            x1, [fp, #-0xe8]
    // 0x6f386c: r0 = Await()
    //     0x6f386c: bl              #0x3dd188  ; AwaitStub
    // 0x6f3870: stur            x0, [fp, #-0xe8]
    // 0x6f3874: r16 = true
    //     0x6f3874: add             x16, NULL, #0x20  ; true
    // 0x6f3878: cmp             w0, w16
    // 0x6f387c: b.ne            #0x6f3934
    // 0x6f3880: ldur            x3, [fp, #-0xd8]
    // 0x6f3884: LoadField: r4 = r3->field_33
    //     0x6f3884: ldur            w4, [x3, #0x33]
    // 0x6f3888: DecompressPointer r4
    //     0x6f3888: add             x4, x4, HEAP, lsl #32
    // 0x6f388c: r17 = -264
    //     0x6f388c: mov             x17, #-0x108
    // 0x6f3890: ldr             x2, [fp, x17]
    // 0x6f3894: stur            x4, [fp, #-0xe0]
    // 0x6f3898: r1 = Function '<anonymous closure>':.
    //     0x6f3898: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c348] AnonymousClosure: (0x6f3a98), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::updateUserDetails (0x6f364c)
    //     0x6f389c: ldr             x1, [x1, #0x348]
    // 0x6f38a0: r0 = AllocateClosure()
    //     0x6f38a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f38a4: mov             x1, x0
    // 0x6f38a8: ldur            x0, [fp, #-0xe0]
    // 0x6f38ac: r2 = LoadClassIdInstr(r0)
    //     0x6f38ac: ldur            x2, [x0, #-1]
    //     0x6f38b0: ubfx            x2, x2, #0xc, #0x14
    // 0x6f38b4: r16 = <UserModel>
    //     0x6f38b4: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x6f38b8: ldr             x16, [x16, #0xd98]
    // 0x6f38bc: stp             x0, x16, [SP, #8]
    // 0x6f38c0: str             x1, [SP]
    // 0x6f38c4: mov             x0, x2
    // 0x6f38c8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f38c8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f38cc: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6f38cc: mov             x17, #0xd1d6
    //     0x6f38d0: add             lr, x0, x17
    //     0x6f38d4: ldr             lr, [x21, lr, lsl #3]
    //     0x6f38d8: blr             lr
    // 0x6f38dc: r1 = LoadClassIdInstr(r0)
    //     0x6f38dc: ldur            x1, [x0, #-1]
    //     0x6f38e0: ubfx            x1, x1, #0xc, #0x14
    // 0x6f38e4: mov             x16, x0
    // 0x6f38e8: mov             x0, x1
    // 0x6f38ec: mov             x1, x16
    // 0x6f38f0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f38f0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f38f4: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6f38f4: mov             x17, #0xd299
    //     0x6f38f8: add             lr, x0, x17
    //     0x6f38fc: ldr             lr, [x21, lr, lsl #3]
    //     0x6f3900: blr             lr
    // 0x6f3904: ldur            x2, [fp, #-0xd8]
    // 0x6f3908: StoreField: r2->field_33 = r0
    //     0x6f3908: stur            w0, [x2, #0x33]
    //     0x6f390c: ldurb           w16, [x2, #-1]
    //     0x6f3910: ldurb           w17, [x0, #-1]
    //     0x6f3914: and             x16, x17, x16, lsr #2
    //     0x6f3918: tst             x16, HEAP, lsr #32
    //     0x6f391c: b.eq            #0x6f3924
    //     0x6f3920: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f3924: r1 = "Kullanıcı bilgileri güncellendi"
    //     0x6f3924: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c350] "Kullanıcı bilgileri güncellendi"
    //     0x6f3928: ldr             x1, [x1, #0x350]
    // 0x6f392c: r0 = showSuccess()
    //     0x6f392c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6f3930: b               #0x6f3940
    // 0x6f3934: r1 = "Kullanıcı bilgileri kaydedilemedi"
    //     0x6f3934: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c358] "Kullanıcı bilgileri kaydedilemedi"
    //     0x6f3938: ldr             x1, [x1, #0x358]
    // 0x6f393c: r0 = showError()
    //     0x6f393c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6f3940: r17 = -264
    //     0x6f3940: mov             x17, #-0x108
    // 0x6f3944: ldr             x2, [fp, x17]
    // 0x6f3948: LoadField: r0 = r2->field_23
    //     0x6f3948: ldur            w0, [x2, #0x23]
    // 0x6f394c: DecompressPointer r0
    //     0x6f394c: add             x0, x0, HEAP, lsl #32
    // 0x6f3950: LoadField: r2 = r0->field_7
    //     0x6f3950: ldur            w2, [x0, #7]
    // 0x6f3954: DecompressPointer r2
    //     0x6f3954: add             x2, x2, HEAP, lsl #32
    // 0x6f3958: ldur            x1, [fp, #-0xd0]
    // 0x6f395c: r0 = remove()
    //     0x6f395c: bl              #0x8fc724  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove
    // 0x6f3960: ldur            x1, [fp, #-0xd8]
    // 0x6f3964: r0 = notifyListeners()
    //     0x6f3964: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f3968: ldur            x0, [fp, #-0xe8]
    // 0x6f396c: r0 = ReturnAsync()
    //     0x6f396c: b               #0x427094  ; ReturnAsyncStub
    // 0x6f3970: sub             SP, fp, #0x120
    // 0x6f3974: r17 = -264
    //     0x6f3974: mov             x17, #-0x108
    // 0x6f3978: ldr             x2, [fp, x17]
    // 0x6f397c: mov             x3, x0
    // 0x6f3980: stur            x0, [fp, #-0xe0]
    // 0x6f3984: mov             x0, x1
    // 0x6f3988: stur            x1, [fp, #-0xe8]
    // 0x6f398c: LoadField: r1 = r2->field_23
    //     0x6f398c: ldur            w1, [x2, #0x23]
    // 0x6f3990: DecompressPointer r1
    //     0x6f3990: add             x1, x1, HEAP, lsl #32
    // 0x6f3994: LoadField: r2 = r1->field_7
    //     0x6f3994: ldur            w2, [x1, #7]
    // 0x6f3998: DecompressPointer r2
    //     0x6f3998: add             x2, x2, HEAP, lsl #32
    // 0x6f399c: ldur            x1, [fp, #-0xd0]
    // 0x6f39a0: r0 = remove()
    //     0x6f39a0: bl              #0x8fc724  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove
    // 0x6f39a4: ldur            x1, [fp, #-0xd8]
    // 0x6f39a8: r0 = notifyListeners()
    //     0x6f39a8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6f39ac: ldur            x0, [fp, #-0xe0]
    // 0x6f39b0: ldur            x1, [fp, #-0xe8]
    // 0x6f39b4: r0 = ReThrow()
    //     0x6f39b4: bl              #0x9262fc  ; ReThrowStub
    // 0x6f39b8: brk             #0
    // 0x6f39bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f39bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f39c0: b               #0x6f3690
  }
  [closure] UserModel <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6f3a98, size: 0x158
    // 0x6f3a98: EnterFrame
    //     0x6f3a98: stp             fp, lr, [SP, #-0x10]!
    //     0x6f3a9c: mov             fp, SP
    // 0x6f3aa0: AllocStack(0x58)
    //     0x6f3aa0: sub             SP, SP, #0x58
    // 0x6f3aa4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f3aa4: ldr             x0, [fp, #0x18]
    //     0x6f3aa8: ldur            w1, [x0, #0x17]
    //     0x6f3aac: add             x1, x1, HEAP, lsl #32
    //     0x6f3ab0: stur            x1, [fp, #-8]
    // 0x6f3ab4: CheckStackOverflow
    //     0x6f3ab4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f3ab8: cmp             SP, x16
    //     0x6f3abc: b.ls            #0x6f3be8
    // 0x6f3ac0: ldr             x2, [fp, #0x10]
    // 0x6f3ac4: LoadField: r0 = r2->field_7
    //     0x6f3ac4: ldur            w0, [x2, #7]
    // 0x6f3ac8: DecompressPointer r0
    //     0x6f3ac8: add             x0, x0, HEAP, lsl #32
    // 0x6f3acc: LoadField: r3 = r1->field_23
    //     0x6f3acc: ldur            w3, [x1, #0x23]
    // 0x6f3ad0: DecompressPointer r3
    //     0x6f3ad0: add             x3, x3, HEAP, lsl #32
    // 0x6f3ad4: LoadField: r4 = r3->field_7
    //     0x6f3ad4: ldur            w4, [x3, #7]
    // 0x6f3ad8: DecompressPointer r4
    //     0x6f3ad8: add             x4, x4, HEAP, lsl #32
    // 0x6f3adc: r3 = LoadClassIdInstr(r0)
    //     0x6f3adc: ldur            x3, [x0, #-1]
    //     0x6f3ae0: ubfx            x3, x3, #0xc, #0x14
    // 0x6f3ae4: stp             x4, x0, [SP]
    // 0x6f3ae8: mov             x0, x3
    // 0x6f3aec: mov             lr, x0
    // 0x6f3af0: ldr             lr, [x21, lr, lsl #3]
    // 0x6f3af4: blr             lr
    // 0x6f3af8: tbnz            w0, #4, #0x6f3bd8
    // 0x6f3afc: ldur            x0, [fp, #-8]
    // 0x6f3b00: LoadField: r1 = r0->field_1b
    //     0x6f3b00: ldur            w1, [x0, #0x1b]
    // 0x6f3b04: DecompressPointer r1
    //     0x6f3b04: add             x1, x1, HEAP, lsl #32
    // 0x6f3b08: stur            x1, [fp, #-0x28]
    // 0x6f3b0c: LoadField: r2 = r0->field_1f
    //     0x6f3b0c: ldur            w2, [x0, #0x1f]
    // 0x6f3b10: DecompressPointer r2
    //     0x6f3b10: add             x2, x2, HEAP, lsl #32
    // 0x6f3b14: stur            x2, [fp, #-0x20]
    // 0x6f3b18: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6f3b18: ldur            w3, [x0, #0x17]
    // 0x6f3b1c: DecompressPointer r3
    //     0x6f3b1c: add             x3, x3, HEAP, lsl #32
    // 0x6f3b20: stur            x3, [fp, #-0x18]
    // 0x6f3b24: LoadField: r4 = r0->field_f
    //     0x6f3b24: ldur            w4, [x0, #0xf]
    // 0x6f3b28: DecompressPointer r4
    //     0x6f3b28: add             x4, x4, HEAP, lsl #32
    // 0x6f3b2c: cmp             w4, NULL
    // 0x6f3b30: b.ne            #0x6f3b44
    // 0x6f3b34: ldr             x5, [fp, #0x10]
    // 0x6f3b38: LoadField: r4 = r5->field_37
    //     0x6f3b38: ldur            w4, [x5, #0x37]
    // 0x6f3b3c: DecompressPointer r4
    //     0x6f3b3c: add             x4, x4, HEAP, lsl #32
    // 0x6f3b40: b               #0x6f3b48
    // 0x6f3b44: ldr             x5, [fp, #0x10]
    // 0x6f3b48: stur            x4, [fp, #-0x10]
    // 0x6f3b4c: LoadField: r6 = r0->field_13
    //     0x6f3b4c: ldur            w6, [x0, #0x13]
    // 0x6f3b50: DecompressPointer r6
    //     0x6f3b50: add             x6, x6, HEAP, lsl #32
    // 0x6f3b54: cmp             w6, NULL
    // 0x6f3b58: b.ne            #0x6f3b68
    // 0x6f3b5c: LoadField: r0 = r5->field_3b
    //     0x6f3b5c: ldur            w0, [x5, #0x3b]
    // 0x6f3b60: DecompressPointer r0
    //     0x6f3b60: add             x0, x0, HEAP, lsl #32
    // 0x6f3b64: b               #0x6f3b6c
    // 0x6f3b68: mov             x0, x6
    // 0x6f3b6c: stur            x0, [fp, #-8]
    // 0x6f3b70: r0 = DateTime()
    //     0x6f3b70: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6f3b74: mov             x1, x0
    // 0x6f3b78: r0 = false
    //     0x6f3b78: add             x0, NULL, #0x30  ; false
    // 0x6f3b7c: stur            x1, [fp, #-0x30]
    // 0x6f3b80: StoreField: r1->field_7 = r0
    //     0x6f3b80: stur            w0, [x1, #7]
    // 0x6f3b84: r0 = _getCurrentMicros()
    //     0x6f3b84: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6f3b88: r1 = LoadInt32Instr(r0)
    //     0x6f3b88: sbfx            x1, x0, #1, #0x1f
    //     0x6f3b8c: tbz             w0, #0, #0x6f3b94
    //     0x6f3b90: ldur            x1, [x0, #7]
    // 0x6f3b94: ldur            x2, [fp, #-0x30]
    // 0x6f3b98: StoreField: r2->field_b = r1
    //     0x6f3b98: stur            x1, [x2, #0xb]
    // 0x6f3b9c: ldur            x16, [fp, #-0x28]
    // 0x6f3ba0: ldur            lr, [fp, #-0x20]
    // 0x6f3ba4: stp             lr, x16, [SP, #0x18]
    // 0x6f3ba8: ldur            x16, [fp, #-0x18]
    // 0x6f3bac: ldur            lr, [fp, #-0x10]
    // 0x6f3bb0: stp             lr, x16, [SP, #8]
    // 0x6f3bb4: ldur            x16, [fp, #-8]
    // 0x6f3bb8: str             x16, [SP]
    // 0x6f3bbc: ldr             x1, [fp, #0x10]
    // 0x6f3bc0: r4 = const [0, 0x7, 0x5, 0x2, cinsiyet, 0x5, dogumTarihi, 0x6, userLocation, 0x4, userName, 0x2, userTel, 0x3, null]
    //     0x6f3bc0: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c360] List(15) [0, 0x7, 0x5, 0x2, "cinsiyet", 0x5, "dogumTarihi", 0x6, "userLocation", 0x4, "userName", 0x2, "userTel", 0x3, Null]
    //     0x6f3bc4: ldr             x4, [x4, #0x360]
    // 0x6f3bc8: r0 = copyWith()
    //     0x6f3bc8: bl              #0x6f308c  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::copyWith
    // 0x6f3bcc: LeaveFrame
    //     0x6f3bcc: mov             SP, fp
    //     0x6f3bd0: ldp             fp, lr, [SP], #0x10
    // 0x6f3bd4: ret
    //     0x6f3bd4: ret             
    // 0x6f3bd8: ldr             x0, [fp, #0x10]
    // 0x6f3bdc: LeaveFrame
    //     0x6f3bdc: mov             SP, fp
    //     0x6f3be0: ldp             fp, lr, [SP], #0x10
    // 0x6f3be4: ret
    //     0x6f3be4: ret             
    // 0x6f3be8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3be8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3bec: b               #0x6f3ac0
  }
  _ getTripManagerUsers(/* No info */) {
    // ** addr: 0x7e84b4, size: 0xe4
    // 0x7e84b4: EnterFrame
    //     0x7e84b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e84b8: mov             fp, SP
    // 0x7e84bc: AllocStack(0x10)
    //     0x7e84bc: sub             SP, SP, #0x10
    // 0x7e84c0: SetupParameters(AdminProvider this /* r1 => r3, fp-0x8 */)
    //     0x7e84c0: mov             x3, x1
    //     0x7e84c4: stur            x1, [fp, #-8]
    // 0x7e84c8: CheckStackOverflow
    //     0x7e84c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e84cc: cmp             SP, x16
    //     0x7e84d0: b.ls            #0x7e8590
    // 0x7e84d4: LoadField: r1 = r3->field_47
    //     0x7e84d4: ldur            w1, [x3, #0x47]
    // 0x7e84d8: DecompressPointer r1
    //     0x7e84d8: add             x1, x1, HEAP, lsl #32
    // 0x7e84dc: r0 = LoadClassIdInstr(r1)
    //     0x7e84dc: ldur            x0, [x1, #-1]
    //     0x7e84e0: ubfx            x0, x0, #0xc, #0x14
    // 0x7e84e4: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7e84e4: add             lr, x0, #0x36e
    //     0x7e84e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7e84ec: blr             lr
    // 0x7e84f0: cmp             w0, NULL
    // 0x7e84f4: b.ne            #0x7e850c
    // 0x7e84f8: r1 = <String>
    //     0x7e84f8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7e84fc: r2 = 0
    //     0x7e84fc: mov             x2, #0
    // 0x7e8500: r0 = _GrowableList()
    //     0x7e8500: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7e8504: mov             x1, x0
    // 0x7e8508: b               #0x7e8510
    // 0x7e850c: mov             x1, x0
    // 0x7e8510: ldur            x0, [fp, #-8]
    // 0x7e8514: stur            x1, [fp, #-0x10]
    // 0x7e8518: r1 = 1
    //     0x7e8518: mov             x1, #1
    // 0x7e851c: r0 = AllocateContext()
    //     0x7e851c: bl              #0x927010  ; AllocateContextStub
    // 0x7e8520: mov             x1, x0
    // 0x7e8524: ldur            x0, [fp, #-0x10]
    // 0x7e8528: StoreField: r1->field_f = r0
    //     0x7e8528: stur            w0, [x1, #0xf]
    // 0x7e852c: ldur            x0, [fp, #-8]
    // 0x7e8530: LoadField: r3 = r0->field_33
    //     0x7e8530: ldur            w3, [x0, #0x33]
    // 0x7e8534: DecompressPointer r3
    //     0x7e8534: add             x3, x3, HEAP, lsl #32
    // 0x7e8538: mov             x2, x1
    // 0x7e853c: stur            x3, [fp, #-0x10]
    // 0x7e8540: r1 = Function '<anonymous closure>':.
    //     0x7e8540: add             x1, PP, #0x14, lsl #12  ; [pp+0x14870] AnonymousClosure: (0x7e8598), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::getTripManagerUsers (0x7e84b4)
    //     0x7e8544: ldr             x1, [x1, #0x870]
    // 0x7e8548: r0 = AllocateClosure()
    //     0x7e8548: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e854c: ldur            x1, [fp, #-0x10]
    // 0x7e8550: r2 = LoadClassIdInstr(r1)
    //     0x7e8550: ldur            x2, [x1, #-1]
    //     0x7e8554: ubfx            x2, x2, #0xc, #0x14
    // 0x7e8558: mov             x16, x0
    // 0x7e855c: mov             x0, x2
    // 0x7e8560: mov             x2, x16
    // 0x7e8564: r0 = GDT[cid_x0 + 0xd348]()
    //     0x7e8564: mov             x17, #0xd348
    //     0x7e8568: add             lr, x0, x17
    //     0x7e856c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e8570: blr             lr
    // 0x7e8574: LoadField: r1 = r0->field_7
    //     0x7e8574: ldur            w1, [x0, #7]
    // 0x7e8578: DecompressPointer r1
    //     0x7e8578: add             x1, x1, HEAP, lsl #32
    // 0x7e857c: mov             x2, x0
    // 0x7e8580: r0 = _GrowableList.of()
    //     0x7e8580: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x7e8584: LeaveFrame
    //     0x7e8584: mov             SP, fp
    //     0x7e8588: ldp             fp, lr, [SP], #0x10
    // 0x7e858c: ret
    //     0x7e858c: ret             
    // 0x7e8590: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e8590: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e8594: b               #0x7e84d4
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x7e8598, size: 0x6c
    // 0x7e8598: EnterFrame
    //     0x7e8598: stp             fp, lr, [SP, #-0x10]!
    //     0x7e859c: mov             fp, SP
    // 0x7e85a0: ldr             x0, [fp, #0x18]
    // 0x7e85a4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e85a4: ldur            w1, [x0, #0x17]
    // 0x7e85a8: DecompressPointer r1
    //     0x7e85a8: add             x1, x1, HEAP, lsl #32
    // 0x7e85ac: CheckStackOverflow
    //     0x7e85ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e85b0: cmp             SP, x16
    //     0x7e85b4: b.ls            #0x7e85fc
    // 0x7e85b8: LoadField: r0 = r1->field_f
    //     0x7e85b8: ldur            w0, [x1, #0xf]
    // 0x7e85bc: DecompressPointer r0
    //     0x7e85bc: add             x0, x0, HEAP, lsl #32
    // 0x7e85c0: ldr             x1, [fp, #0x10]
    // 0x7e85c4: LoadField: r2 = r1->field_7
    //     0x7e85c4: ldur            w2, [x1, #7]
    // 0x7e85c8: DecompressPointer r2
    //     0x7e85c8: add             x2, x2, HEAP, lsl #32
    // 0x7e85cc: r1 = LoadClassIdInstr(r0)
    //     0x7e85cc: ldur            x1, [x0, #-1]
    //     0x7e85d0: ubfx            x1, x1, #0xc, #0x14
    // 0x7e85d4: mov             x16, x0
    // 0x7e85d8: mov             x0, x1
    // 0x7e85dc: mov             x1, x16
    // 0x7e85e0: r0 = GDT[cid_x0 + 0xd089]()
    //     0x7e85e0: mov             x17, #0xd089
    //     0x7e85e4: add             lr, x0, x17
    //     0x7e85e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7e85ec: blr             lr
    // 0x7e85f0: LeaveFrame
    //     0x7e85f0: mov             SP, fp
    //     0x7e85f4: ldp             fp, lr, [SP], #0x10
    // 0x7e85f8: ret
    //     0x7e85f8: ret             
    // 0x7e85fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e85fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e8600: b               #0x7e85b8
  }
  _ AdminProvider(/* No info */) {
    // ** addr: 0x7f0cec, size: 0x244
    // 0x7f0cec: EnterFrame
    //     0x7f0cec: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0cf0: mov             fp, SP
    // 0x7f0cf4: AllocStack(0x20)
    //     0x7f0cf4: sub             SP, SP, #0x20
    // 0x7f0cf8: r0 = false
    //     0x7f0cf8: add             x0, NULL, #0x30  ; false
    // 0x7f0cfc: stur            x1, [fp, #-8]
    // 0x7f0d00: CheckStackOverflow
    //     0x7f0d00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0d04: cmp             SP, x16
    //     0x7f0d08: b.ls            #0x7f0f28
    // 0x7f0d0c: StoreField: r1->field_27 = r0
    //     0x7f0d0c: stur            w0, [x1, #0x27]
    // 0x7f0d10: StoreField: r1->field_2b = r0
    //     0x7f0d10: stur            w0, [x1, #0x2b]
    // 0x7f0d14: r4 = const [0, 0, 0, 0, null]
    //     0x7f0d14: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7f0d18: r0 = app()
    //     0x7f0d18: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7f0d1c: mov             x1, x0
    // 0x7f0d20: r0 = instanceFor()
    //     0x7f0d20: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7f0d24: stur            x0, [fp, #-0x10]
    // 0x7f0d28: r0 = FirestoreService()
    //     0x7f0d28: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7f0d2c: mov             x1, x0
    // 0x7f0d30: ldur            x0, [fp, #-0x10]
    // 0x7f0d34: StoreField: r1->field_7 = r0
    //     0x7f0d34: stur            w0, [x1, #7]
    // 0x7f0d38: mov             x0, x1
    // 0x7f0d3c: ldur            x3, [fp, #-8]
    // 0x7f0d40: StoreField: r3->field_23 = r0
    //     0x7f0d40: stur            w0, [x3, #0x23]
    //     0x7f0d44: ldurb           w16, [x3, #-1]
    //     0x7f0d48: ldurb           w17, [x0, #-1]
    //     0x7f0d4c: and             x16, x17, x16, lsr #2
    //     0x7f0d50: tst             x16, HEAP, lsr #32
    //     0x7f0d54: b.eq            #0x7f0d5c
    //     0x7f0d58: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0d5c: r1 = <UserModel>
    //     0x7f0d5c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x7f0d60: ldr             x1, [x1, #0xd98]
    // 0x7f0d64: r2 = 0
    //     0x7f0d64: mov             x2, #0
    // 0x7f0d68: r0 = _GrowableList()
    //     0x7f0d68: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0d6c: ldur            x3, [fp, #-8]
    // 0x7f0d70: StoreField: r3->field_33 = r0
    //     0x7f0d70: stur            w0, [x3, #0x33]
    //     0x7f0d74: ldurb           w16, [x3, #-1]
    //     0x7f0d78: ldurb           w17, [x0, #-1]
    //     0x7f0d7c: and             x16, x17, x16, lsr #2
    //     0x7f0d80: tst             x16, HEAP, lsr #32
    //     0x7f0d84: b.eq            #0x7f0d8c
    //     0x7f0d88: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0d8c: r1 = <TripModel>
    //     0x7f0d8c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x7f0d90: ldr             x1, [x1, #0xda0]
    // 0x7f0d94: r2 = 0
    //     0x7f0d94: mov             x2, #0
    // 0x7f0d98: r0 = _GrowableList()
    //     0x7f0d98: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0d9c: ldur            x3, [fp, #-8]
    // 0x7f0da0: StoreField: r3->field_37 = r0
    //     0x7f0da0: stur            w0, [x3, #0x37]
    //     0x7f0da4: ldurb           w16, [x3, #-1]
    //     0x7f0da8: ldurb           w17, [x0, #-1]
    //     0x7f0dac: and             x16, x17, x16, lsr #2
    //     0x7f0db0: tst             x16, HEAP, lsr #32
    //     0x7f0db4: b.eq            #0x7f0dbc
    //     0x7f0db8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0dbc: r1 = <HotelModel>
    //     0x7f0dbc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x7f0dc0: ldr             x1, [x1, #0xda8]
    // 0x7f0dc4: r2 = 0
    //     0x7f0dc4: mov             x2, #0
    // 0x7f0dc8: r0 = _GrowableList()
    //     0x7f0dc8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0dcc: ldur            x3, [fp, #-8]
    // 0x7f0dd0: StoreField: r3->field_3b = r0
    //     0x7f0dd0: stur            w0, [x3, #0x3b]
    //     0x7f0dd4: ldurb           w16, [x3, #-1]
    //     0x7f0dd8: ldurb           w17, [x0, #-1]
    //     0x7f0ddc: and             x16, x17, x16, lsr #2
    //     0x7f0de0: tst             x16, HEAP, lsr #32
    //     0x7f0de4: b.eq            #0x7f0dec
    //     0x7f0de8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0dec: r1 = <AgencyModel>
    //     0x7f0dec: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d90] TypeArguments: <AgencyModel>
    //     0x7f0df0: ldr             x1, [x1, #0xd90]
    // 0x7f0df4: r2 = 0
    //     0x7f0df4: mov             x2, #0
    // 0x7f0df8: r0 = _GrowableList()
    //     0x7f0df8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0dfc: ldur            x1, [fp, #-8]
    // 0x7f0e00: StoreField: r1->field_3f = r0
    //     0x7f0e00: stur            w0, [x1, #0x3f]
    //     0x7f0e04: ldurb           w16, [x1, #-1]
    //     0x7f0e08: ldurb           w17, [x0, #-1]
    //     0x7f0e0c: and             x16, x17, x16, lsr #2
    //     0x7f0e10: tst             x16, HEAP, lsr #32
    //     0x7f0e14: b.eq            #0x7f0e1c
    //     0x7f0e18: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0e1c: r16 = <String, List<RoomModel>>
    //     0x7f0e1c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10db0] TypeArguments: <String, List<RoomModel>>
    //     0x7f0e20: ldr             x16, [x16, #0xdb0]
    // 0x7f0e24: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7f0e28: stp             lr, x16, [SP]
    // 0x7f0e2c: r0 = Map._fromLiteral()
    //     0x7f0e2c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7f0e30: ldur            x1, [fp, #-8]
    // 0x7f0e34: StoreField: r1->field_43 = r0
    //     0x7f0e34: stur            w0, [x1, #0x43]
    //     0x7f0e38: ldurb           w16, [x1, #-1]
    //     0x7f0e3c: ldurb           w17, [x0, #-1]
    //     0x7f0e40: and             x16, x17, x16, lsr #2
    //     0x7f0e44: tst             x16, HEAP, lsr #32
    //     0x7f0e48: b.eq            #0x7f0e50
    //     0x7f0e4c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0e50: r16 = <String, List<String>>
    //     0x7f0e50: add             x16, PP, #0x10, lsl #12  ; [pp+0x106b8] TypeArguments: <String, List<String>>
    //     0x7f0e54: ldr             x16, [x16, #0x6b8]
    // 0x7f0e58: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7f0e5c: stp             lr, x16, [SP]
    // 0x7f0e60: r0 = Map._fromLiteral()
    //     0x7f0e60: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7f0e64: ldur            x2, [fp, #-8]
    // 0x7f0e68: StoreField: r2->field_47 = r0
    //     0x7f0e68: stur            w0, [x2, #0x47]
    //     0x7f0e6c: ldurb           w16, [x2, #-1]
    //     0x7f0e70: ldurb           w17, [x0, #-1]
    //     0x7f0e74: and             x16, x17, x16, lsr #2
    //     0x7f0e78: tst             x16, HEAP, lsr #32
    //     0x7f0e7c: b.eq            #0x7f0e84
    //     0x7f0e80: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7f0e84: r1 = <String>
    //     0x7f0e84: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7f0e88: r0 = _Set()
    //     0x7f0e88: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x7f0e8c: mov             x1, x0
    // 0x7f0e90: r0 = _Uint32List
    //     0x7f0e90: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x7f0e94: StoreField: r1->field_1b = r0
    //     0x7f0e94: stur            w0, [x1, #0x1b]
    // 0x7f0e98: StoreField: r1->field_b = rZR
    //     0x7f0e98: stur            wzr, [x1, #0xb]
    // 0x7f0e9c: r0 = const []
    //     0x7f0e9c: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x7f0ea0: StoreField: r1->field_f = r0
    //     0x7f0ea0: stur            w0, [x1, #0xf]
    // 0x7f0ea4: StoreField: r1->field_13 = rZR
    //     0x7f0ea4: stur            wzr, [x1, #0x13]
    // 0x7f0ea8: ArrayStore: r1[0] = rZR  ; List_4
    //     0x7f0ea8: stur            wzr, [x1, #0x17]
    // 0x7f0eac: mov             x0, x1
    // 0x7f0eb0: ldur            x1, [fp, #-8]
    // 0x7f0eb4: StoreField: r1->field_4b = r0
    //     0x7f0eb4: stur            w0, [x1, #0x4b]
    //     0x7f0eb8: ldurb           w16, [x1, #-1]
    //     0x7f0ebc: ldurb           w17, [x0, #-1]
    //     0x7f0ec0: and             x16, x17, x16, lsr #2
    //     0x7f0ec4: tst             x16, HEAP, lsr #32
    //     0x7f0ec8: b.eq            #0x7f0ed0
    //     0x7f0ecc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0ed0: StoreField: r1->field_7 = rZR
    //     0x7f0ed0: stur            xzr, [x1, #7]
    // 0x7f0ed4: StoreField: r1->field_13 = rZR
    //     0x7f0ed4: stur            xzr, [x1, #0x13]
    // 0x7f0ed8: StoreField: r1->field_1b = rZR
    //     0x7f0ed8: stur            xzr, [x1, #0x1b]
    // 0x7f0edc: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f0edc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0ee0: ldr             x0, [x0, #0xbc0]
    //     0x7f0ee4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f0ee8: cmp             w0, w16
    //     0x7f0eec: b.ne            #0x7f0ef8
    //     0x7f0ef0: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f0ef4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f0ef8: ldur            x1, [fp, #-8]
    // 0x7f0efc: StoreField: r1->field_f = r0
    //     0x7f0efc: stur            w0, [x1, #0xf]
    //     0x7f0f00: ldurb           w16, [x1, #-1]
    //     0x7f0f04: ldurb           w17, [x0, #-1]
    //     0x7f0f08: and             x16, x17, x16, lsr #2
    //     0x7f0f0c: tst             x16, HEAP, lsr #32
    //     0x7f0f10: b.eq            #0x7f0f18
    //     0x7f0f14: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0f18: r0 = Null
    //     0x7f0f18: mov             x0, NULL
    // 0x7f0f1c: LeaveFrame
    //     0x7f0f1c: mov             SP, fp
    //     0x7f0f20: ldp             fp, lr, [SP], #0x10
    // 0x7f0f24: ret
    //     0x7f0f24: ret             
    // 0x7f0f28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0f28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0f2c: b               #0x7f0d0c
  }
}
