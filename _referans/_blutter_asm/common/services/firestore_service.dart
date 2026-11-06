// lib: , url: package:umrem_demo/common/services/firestore_service.dart

// class id: 1049490, size: 0x8
class :: {
}

// class id: 217, size: 0xc, field offset: 0x8
class FirestoreService extends Object {

  static late final Map<String, dynamic> _cache; // offset: 0xfd8
  static late final Map<String, DateTime> _cacheTimestamp; // offset: 0xfdc

  _ getRoomsByAgency(/* No info */) async {
    // ** addr: 0x5d2f74, size: 0xf4
    // 0x5d2f74: EnterFrame
    //     0x5d2f74: stp             fp, lr, [SP, #-0x10]!
    //     0x5d2f78: mov             fp, SP
    // 0x5d2f7c: AllocStack(0x98)
    //     0x5d2f7c: sub             SP, SP, #0x98
    // 0x5d2f80: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5d2f80: stur            NULL, [fp, #-8]
    //     0x5d2f84: mov             x3, x2
    //     0x5d2f88: stur            x1, [fp, #-0x60]
    //     0x5d2f8c: stur            x2, [fp, #-0x68]
    // 0x5d2f90: CheckStackOverflow
    //     0x5d2f90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d2f94: cmp             SP, x16
    //     0x5d2f98: b.ls            #0x5d3060
    // 0x5d2f9c: InitAsync() -> Future<List<RoomModel>>
    //     0x5d2f9c: add             x0, PP, #0x12, lsl #12  ; [pp+0x127b0] TypeArguments: <List<RoomModel>>
    //     0x5d2fa0: ldr             x0, [x0, #0x7b0]
    //     0x5d2fa4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d2fa8: ldur            x1, [fp, #-0x60]
    // 0x5d2fac: r0 = roomsCollection()
    //     0x5d2fac: bl              #0x5d7bf8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::roomsCollection
    // 0x5d2fb0: mov             x1, x0
    // 0x5d2fb4: ldur            x3, [fp, #-0x68]
    // 0x5d2fb8: r2 = "agency_id"
    //     0x5d2fb8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d2fbc: ldr             x2, [x2, #0x40]
    // 0x5d2fc0: r0 = where()
    //     0x5d2fc0: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5d2fc4: mov             x1, x0
    // 0x5d2fc8: r2 = "room_number"
    //     0x5d2fc8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x5d2fcc: ldr             x2, [x2, #0xfb0]
    // 0x5d2fd0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5d2fd0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5d2fd4: r0 = orderBy()
    //     0x5d2fd4: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5d2fd8: mov             x1, x0
    // 0x5d2fdc: r0 = get()
    //     0x5d2fdc: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5d2fe0: mov             x1, x0
    // 0x5d2fe4: stur            x1, [fp, #-0x70]
    // 0x5d2fe8: r0 = Await()
    //     0x5d2fe8: bl              #0x3dd188  ; AwaitStub
    // 0x5d2fec: mov             x1, x0
    // 0x5d2ff0: stur            x0, [fp, #-0x70]
    // 0x5d2ff4: r0 = docs()
    //     0x5d2ff4: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5d2ff8: r1 = Function '<anonymous closure>':.
    //     0x5d2ff8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18fb8] AnonymousClosure: (0x5d85a8), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRoomsByAgency (0x5d2f74)
    //     0x5d2ffc: ldr             x1, [x1, #0xfb8]
    // 0x5d3000: r2 = Null
    //     0x5d3000: mov             x2, NULL
    // 0x5d3004: stur            x0, [fp, #-0x78]
    // 0x5d3008: r0 = AllocateClosure()
    //     0x5d3008: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d300c: r16 = <RoomModel>
    //     0x5d300c: add             x16, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x5d3010: ldr             x16, [x16, #0x6c8]
    // 0x5d3014: ldur            lr, [fp, #-0x78]
    // 0x5d3018: stp             lr, x16, [SP, #8]
    // 0x5d301c: str             x0, [SP]
    // 0x5d3020: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5d3020: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5d3024: r0 = map()
    //     0x5d3024: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5d3028: stur            x0, [fp, #-0x80]
    // 0x5d302c: LoadField: r3 = r0->field_7
    //     0x5d302c: ldur            w3, [x0, #7]
    // 0x5d3030: DecompressPointer r3
    //     0x5d3030: add             x3, x3, HEAP, lsl #32
    // 0x5d3034: mov             x1, x3
    // 0x5d3038: mov             x2, x0
    // 0x5d303c: stur            x3, [fp, #-0x78]
    // 0x5d3040: r0 = _GrowableList.of()
    //     0x5d3040: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5d3044: r0 = ReturnAsyncNotFuture()
    //     0x5d3044: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d3048: sub             SP, fp, #0x98
    // 0x5d304c: r1 = <RoomModel>
    //     0x5d304c: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x5d3050: ldr             x1, [x1, #0x6c8]
    // 0x5d3054: r2 = 0
    //     0x5d3054: mov             x2, #0
    // 0x5d3058: r0 = _GrowableList()
    //     0x5d3058: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5d305c: r0 = ReturnAsyncNotFuture()
    //     0x5d305c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d3060: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d3060: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d3064: b               #0x5d2f9c
  }
  get _ roomsCollection(/* No info */) {
    // ** addr: 0x5d7bf8, size: 0x40
    // 0x5d7bf8: EnterFrame
    //     0x5d7bf8: stp             fp, lr, [SP, #-0x10]!
    //     0x5d7bfc: mov             fp, SP
    // 0x5d7c00: CheckStackOverflow
    //     0x5d7c00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d7c04: cmp             SP, x16
    //     0x5d7c08: b.ls            #0x5d7c30
    // 0x5d7c0c: LoadField: r0 = r1->field_7
    //     0x5d7c0c: ldur            w0, [x1, #7]
    // 0x5d7c10: DecompressPointer r0
    //     0x5d7c10: add             x0, x0, HEAP, lsl #32
    // 0x5d7c14: mov             x1, x0
    // 0x5d7c18: r2 = "rooms"
    //     0x5d7c18: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x5d7c1c: ldr             x2, [x2, #0x60]
    // 0x5d7c20: r0 = collection()
    //     0x5d7c20: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d7c24: LeaveFrame
    //     0x5d7c24: mov             SP, fp
    //     0x5d7c28: ldp             fp, lr, [SP], #0x10
    // 0x5d7c2c: ret
    //     0x5d7c2c: ret             
    // 0x5d7c30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d7c30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d7c34: b               #0x5d7c0c
  }
  [closure] RoomModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5d85a8, size: 0x34
    // 0x5d85a8: EnterFrame
    //     0x5d85a8: stp             fp, lr, [SP, #-0x10]!
    //     0x5d85ac: mov             fp, SP
    // 0x5d85b0: CheckStackOverflow
    //     0x5d85b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d85b4: cmp             SP, x16
    //     0x5d85b8: b.ls            #0x5d85d4
    // 0x5d85bc: ldr             x2, [fp, #0x10]
    // 0x5d85c0: r1 = Null
    //     0x5d85c0: mov             x1, NULL
    // 0x5d85c4: r0 = RoomModel.fromFirestore()
    //     0x5d85c4: bl              #0x5d85dc  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::RoomModel.fromFirestore
    // 0x5d85c8: LeaveFrame
    //     0x5d85c8: mov             SP, fp
    //     0x5d85cc: ldp             fp, lr, [SP], #0x10
    // 0x5d85d0: ret
    //     0x5d85d0: ret             
    // 0x5d85d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d85d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d85d8: b               #0x5d85bc
  }
  _ getRooms(/* No info */) async {
    // ** addr: 0x5d8efc, size: 0xec
    // 0x5d8efc: EnterFrame
    //     0x5d8efc: stp             fp, lr, [SP, #-0x10]!
    //     0x5d8f00: mov             fp, SP
    // 0x5d8f04: AllocStack(0x98)
    //     0x5d8f04: sub             SP, SP, #0x98
    // 0x5d8f08: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */)
    //     0x5d8f08: stur            NULL, [fp, #-8]
    //     0x5d8f0c: stur            x1, [fp, #-0x60]
    // 0x5d8f10: CheckStackOverflow
    //     0x5d8f10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d8f14: cmp             SP, x16
    //     0x5d8f18: b.ls            #0x5d8fe0
    // 0x5d8f1c: InitAsync() -> Future<List<RoomModel>>
    //     0x5d8f1c: add             x0, PP, #0x12, lsl #12  ; [pp+0x127b0] TypeArguments: <List<RoomModel>>
    //     0x5d8f20: ldr             x0, [x0, #0x7b0]
    //     0x5d8f24: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d8f28: ldur            x0, [fp, #-0x60]
    // 0x5d8f2c: LoadField: r1 = r0->field_7
    //     0x5d8f2c: ldur            w1, [x0, #7]
    // 0x5d8f30: DecompressPointer r1
    //     0x5d8f30: add             x1, x1, HEAP, lsl #32
    // 0x5d8f34: r2 = "rooms"
    //     0x5d8f34: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x5d8f38: ldr             x2, [x2, #0x60]
    // 0x5d8f3c: r0 = collection()
    //     0x5d8f3c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d8f40: mov             x1, x0
    // 0x5d8f44: r2 = "room_number"
    //     0x5d8f44: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x5d8f48: ldr             x2, [x2, #0xfb0]
    // 0x5d8f4c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5d8f4c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5d8f50: r0 = orderBy()
    //     0x5d8f50: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5d8f54: mov             x1, x0
    // 0x5d8f58: stur            x0, [fp, #-0x68]
    // 0x5d8f5c: r0 = get()
    //     0x5d8f5c: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5d8f60: mov             x1, x0
    // 0x5d8f64: stur            x1, [fp, #-0x70]
    // 0x5d8f68: r0 = Await()
    //     0x5d8f68: bl              #0x3dd188  ; AwaitStub
    // 0x5d8f6c: mov             x1, x0
    // 0x5d8f70: stur            x0, [fp, #-0x70]
    // 0x5d8f74: r0 = docs()
    //     0x5d8f74: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5d8f78: r1 = Function '<anonymous closure>':.
    //     0x5d8f78: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a698] AnonymousClosure: (0x5d85a8), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRoomsByAgency (0x5d2f74)
    //     0x5d8f7c: ldr             x1, [x1, #0x698]
    // 0x5d8f80: r2 = Null
    //     0x5d8f80: mov             x2, NULL
    // 0x5d8f84: stur            x0, [fp, #-0x78]
    // 0x5d8f88: r0 = AllocateClosure()
    //     0x5d8f88: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d8f8c: r16 = <RoomModel>
    //     0x5d8f8c: add             x16, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x5d8f90: ldr             x16, [x16, #0x6c8]
    // 0x5d8f94: ldur            lr, [fp, #-0x78]
    // 0x5d8f98: stp             lr, x16, [SP, #8]
    // 0x5d8f9c: str             x0, [SP]
    // 0x5d8fa0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5d8fa0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5d8fa4: r0 = map()
    //     0x5d8fa4: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5d8fa8: stur            x0, [fp, #-0x80]
    // 0x5d8fac: LoadField: r3 = r0->field_7
    //     0x5d8fac: ldur            w3, [x0, #7]
    // 0x5d8fb0: DecompressPointer r3
    //     0x5d8fb0: add             x3, x3, HEAP, lsl #32
    // 0x5d8fb4: mov             x1, x3
    // 0x5d8fb8: mov             x2, x0
    // 0x5d8fbc: stur            x3, [fp, #-0x78]
    // 0x5d8fc0: r0 = _GrowableList.of()
    //     0x5d8fc0: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5d8fc4: r0 = ReturnAsyncNotFuture()
    //     0x5d8fc4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d8fc8: sub             SP, fp, #0x98
    // 0x5d8fcc: r1 = <RoomModel>
    //     0x5d8fcc: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x5d8fd0: ldr             x1, [x1, #0x6c8]
    // 0x5d8fd4: r2 = 0
    //     0x5d8fd4: mov             x2, #0
    // 0x5d8fd8: r0 = _GrowableList()
    //     0x5d8fd8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5d8fdc: r0 = ReturnAsyncNotFuture()
    //     0x5d8fdc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d8fe0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d8fe0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d8fe4: b               #0x5d8f1c
  }
  _ getAllTripManagers(/* No info */) async {
    // ** addr: 0x5d8fe8, size: 0x2b8
    // 0x5d8fe8: EnterFrame
    //     0x5d8fe8: stp             fp, lr, [SP, #-0x10]!
    //     0x5d8fec: mov             fp, SP
    // 0x5d8ff0: AllocStack(0xc8)
    //     0x5d8ff0: sub             SP, SP, #0xc8
    // 0x5d8ff4: SetupParameters(FirestoreService this /* r1 => r1, fp-0x80 */)
    //     0x5d8ff4: stur            NULL, [fp, #-8]
    //     0x5d8ff8: stur            x1, [fp, #-0x80]
    // 0x5d8ffc: CheckStackOverflow
    //     0x5d8ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9000: cmp             SP, x16
    //     0x5d9004: b.ls            #0x5d928c
    // 0x5d9008: InitAsync() -> Future<Map<String, List<String>>>
    //     0x5d9008: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f80] TypeArguments: <Map<String, List<String>>>
    //     0x5d900c: ldr             x0, [x0, #0xf80]
    //     0x5d9010: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d9014: ldur            x0, [fp, #-0x80]
    // 0x5d9018: LoadField: r1 = r0->field_7
    //     0x5d9018: ldur            w1, [x0, #7]
    // 0x5d901c: DecompressPointer r1
    //     0x5d901c: add             x1, x1, HEAP, lsl #32
    // 0x5d9020: r2 = "trip_managers"
    //     0x5d9020: add             x2, PP, #0x13, lsl #12  ; [pp+0x13be8] "trip_managers"
    //     0x5d9024: ldr             x2, [x2, #0xbe8]
    // 0x5d9028: r0 = collection()
    //     0x5d9028: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d902c: mov             x1, x0
    // 0x5d9030: r0 = get()
    //     0x5d9030: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5d9034: mov             x1, x0
    // 0x5d9038: stur            x1, [fp, #-0x88]
    // 0x5d903c: r0 = Await()
    //     0x5d903c: bl              #0x3dd188  ; AwaitStub
    // 0x5d9040: stur            x0, [fp, #-0x88]
    // 0x5d9044: r16 = <String, List<String>>
    //     0x5d9044: add             x16, PP, #0x10, lsl #12  ; [pp+0x106b8] TypeArguments: <String, List<String>>
    //     0x5d9048: ldr             x16, [x16, #0x6b8]
    // 0x5d904c: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5d9050: stp             lr, x16, [SP]
    // 0x5d9054: r0 = Map._fromLiteral()
    //     0x5d9054: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5d9058: ldur            x1, [fp, #-0x88]
    // 0x5d905c: stur            x0, [fp, #-0x90]
    // 0x5d9060: r0 = docs()
    //     0x5d9060: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5d9064: stur            x0, [fp, #-0xa0]
    // 0x5d9068: LoadField: r2 = r0->field_7
    //     0x5d9068: ldur            w2, [x0, #7]
    // 0x5d906c: DecompressPointer r2
    //     0x5d906c: add             x2, x2, HEAP, lsl #32
    // 0x5d9070: mov             x1, x2
    // 0x5d9074: stur            x2, [fp, #-0x98]
    // 0x5d9078: r0 = ListIterator()
    //     0x5d9078: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x5d907c: mov             x4, x0
    // 0x5d9080: ldur            x3, [fp, #-0xa0]
    // 0x5d9084: stur            x4, [fp, #-0x98]
    // 0x5d9088: StoreField: r4->field_b = r3
    //     0x5d9088: stur            w3, [x4, #0xb]
    // 0x5d908c: LoadField: r0 = r3->field_b
    //     0x5d908c: ldur            w0, [x3, #0xb]
    // 0x5d9090: r5 = LoadInt32Instr(r0)
    //     0x5d9090: sbfx            x5, x0, #1, #0x1f
    // 0x5d9094: stur            x5, [fp, #-0xa8]
    // 0x5d9098: StoreField: r4->field_f = r5
    //     0x5d9098: stur            x5, [x4, #0xf]
    // 0x5d909c: ArrayStore: r4[0] = rZR  ; List_8
    //     0x5d909c: stur            xzr, [x4, #0x17]
    // 0x5d90a0: CheckStackOverflow
    //     0x5d90a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d90a4: cmp             SP, x16
    //     0x5d90a8: b.ls            #0x5d9294
    // 0x5d90ac: LoadField: r0 = r3->field_b
    //     0x5d90ac: ldur            w0, [x3, #0xb]
    // 0x5d90b0: r1 = LoadInt32Instr(r0)
    //     0x5d90b0: sbfx            x1, x0, #1, #0x1f
    // 0x5d90b4: cmp             x5, x1
    // 0x5d90b8: b.ne            #0x5d9264
    // 0x5d90bc: ArrayLoad: r2 = r4[0]  ; List_8
    //     0x5d90bc: ldur            x2, [x4, #0x17]
    // 0x5d90c0: cmp             x2, x1
    // 0x5d90c4: b.ge            #0x5d9238
    // 0x5d90c8: mov             x0, x1
    // 0x5d90cc: mov             x1, x2
    // 0x5d90d0: cmp             x1, x0
    // 0x5d90d4: b.hs            #0x5d929c
    // 0x5d90d8: LoadField: r0 = r3->field_f
    //     0x5d90d8: ldur            w0, [x3, #0xf]
    // 0x5d90dc: DecompressPointer r0
    //     0x5d90dc: add             x0, x0, HEAP, lsl #32
    // 0x5d90e0: ArrayLoad: r6 = r0[r2]  ; Unknown_4
    //     0x5d90e0: add             x16, x0, x2, lsl #2
    //     0x5d90e4: ldur            w6, [x16, #0xf]
    // 0x5d90e8: DecompressPointer r6
    //     0x5d90e8: add             x6, x6, HEAP, lsl #32
    // 0x5d90ec: mov             x0, x6
    // 0x5d90f0: stur            x6, [fp, #-0x88]
    // 0x5d90f4: StoreField: r4->field_1f = r0
    //     0x5d90f4: stur            w0, [x4, #0x1f]
    //     0x5d90f8: ldurb           w16, [x4, #-1]
    //     0x5d90fc: ldurb           w17, [x0, #-1]
    //     0x5d9100: and             x16, x17, x16, lsr #2
    //     0x5d9104: tst             x16, HEAP, lsr #32
    //     0x5d9108: b.eq            #0x5d9110
    //     0x5d910c: bl              #0x9267f0  ; WriteBarrierWrappersStub
    // 0x5d9110: add             x0, x2, #1
    // 0x5d9114: ArrayStore: r4[0] = r0  ; List_8
    //     0x5d9114: stur            x0, [x4, #0x17]
    // 0x5d9118: LoadField: r0 = r6->field_b
    //     0x5d9118: ldur            w0, [x6, #0xb]
    // 0x5d911c: DecompressPointer r0
    //     0x5d911c: add             x0, x0, HEAP, lsl #32
    // 0x5d9120: mov             x1, x0
    // 0x5d9124: stur            x0, [fp, #-0x80]
    // 0x5d9128: r2 = "trip_id"
    //     0x5d9128: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5d912c: ldr             x2, [x2, #0xbf0]
    // 0x5d9130: r0 = get()
    //     0x5d9130: bl              #0x5d3324  ; [package:cloud_firestore_platform_interface/src/platform_interface/platform_interface_document_snapshot.dart] DocumentSnapshotPlatform::get
    // 0x5d9134: mov             x1, x0
    // 0x5d9138: ldur            x0, [fp, #-0x88]
    // 0x5d913c: LoadField: r3 = r0->field_7
    //     0x5d913c: ldur            w3, [x0, #7]
    // 0x5d9140: DecompressPointer r3
    //     0x5d9140: add             x3, x3, HEAP, lsl #32
    // 0x5d9144: mov             x2, x3
    // 0x5d9148: stur            x3, [fp, #-0xb0]
    // 0x5d914c: r0 = valueDecode()
    //     0x5d914c: bl              #0x5d3a74  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::valueDecode
    // 0x5d9150: mov             x3, x0
    // 0x5d9154: r2 = Null
    //     0x5d9154: mov             x2, NULL
    // 0x5d9158: r1 = Null
    //     0x5d9158: mov             x1, NULL
    // 0x5d915c: stur            x3, [fp, #-0xb8]
    // 0x5d9160: r4 = 60
    //     0x5d9160: mov             x4, #0x3c
    // 0x5d9164: branchIfSmi(r0, 0x5d9170)
    //     0x5d9164: tbz             w0, #0, #0x5d9170
    // 0x5d9168: r4 = LoadClassIdInstr(r0)
    //     0x5d9168: ldur            x4, [x0, #-1]
    //     0x5d916c: ubfx            x4, x4, #0xc, #0x14
    // 0x5d9170: sub             x4, x4, #0x5e
    // 0x5d9174: cmp             x4, #1
    // 0x5d9178: b.ls            #0x5d918c
    // 0x5d917c: r8 = String
    //     0x5d917c: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d9180: r3 = Null
    //     0x5d9180: add             x3, PP, #0x18, lsl #12  ; [pp+0x18f88] Null
    //     0x5d9184: ldr             x3, [x3, #0xf88]
    // 0x5d9188: r0 = String()
    //     0x5d9188: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d918c: ldur            x1, [fp, #-0x80]
    // 0x5d9190: r2 = "user_id"
    //     0x5d9190: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf8] "user_id"
    //     0x5d9194: ldr             x2, [x2, #0xbf8]
    // 0x5d9198: r0 = get()
    //     0x5d9198: bl              #0x5d3324  ; [package:cloud_firestore_platform_interface/src/platform_interface/platform_interface_document_snapshot.dart] DocumentSnapshotPlatform::get
    // 0x5d919c: mov             x1, x0
    // 0x5d91a0: ldur            x2, [fp, #-0xb0]
    // 0x5d91a4: r0 = valueDecode()
    //     0x5d91a4: bl              #0x5d3a74  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::valueDecode
    // 0x5d91a8: mov             x3, x0
    // 0x5d91ac: r2 = Null
    //     0x5d91ac: mov             x2, NULL
    // 0x5d91b0: r1 = Null
    //     0x5d91b0: mov             x1, NULL
    // 0x5d91b4: stur            x3, [fp, #-0x80]
    // 0x5d91b8: r4 = 60
    //     0x5d91b8: mov             x4, #0x3c
    // 0x5d91bc: branchIfSmi(r0, 0x5d91c8)
    //     0x5d91bc: tbz             w0, #0, #0x5d91c8
    // 0x5d91c0: r4 = LoadClassIdInstr(r0)
    //     0x5d91c0: ldur            x4, [x0, #-1]
    //     0x5d91c4: ubfx            x4, x4, #0xc, #0x14
    // 0x5d91c8: sub             x4, x4, #0x5e
    // 0x5d91cc: cmp             x4, #1
    // 0x5d91d0: b.ls            #0x5d91e4
    // 0x5d91d4: r8 = String
    //     0x5d91d4: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5d91d8: r3 = Null
    //     0x5d91d8: add             x3, PP, #0x18, lsl #12  ; [pp+0x18f98] Null
    //     0x5d91dc: ldr             x3, [x3, #0xf98]
    // 0x5d91e0: r0 = String()
    //     0x5d91e0: bl              #0x939a58  ; IsType_String_Stub
    // 0x5d91e4: r1 = Function '<anonymous closure>':.
    //     0x5d91e4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18fa8] AnonymousClosure: (0x5d92e0), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAllTripManagers (0x5d8fe8)
    //     0x5d91e8: ldr             x1, [x1, #0xfa8]
    // 0x5d91ec: r2 = Null
    //     0x5d91ec: mov             x2, NULL
    // 0x5d91f0: r0 = AllocateClosure()
    //     0x5d91f0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d91f4: ldur            x1, [fp, #-0x90]
    // 0x5d91f8: ldur            x2, [fp, #-0xb8]
    // 0x5d91fc: mov             x3, x0
    // 0x5d9200: r0 = putIfAbsent()
    //     0x5d9200: bl              #0x8a8cc8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::putIfAbsent
    // 0x5d9204: r1 = LoadClassIdInstr(r0)
    //     0x5d9204: ldur            x1, [x0, #-1]
    //     0x5d9208: ubfx            x1, x1, #0xc, #0x14
    // 0x5d920c: ldur            x16, [fp, #-0x80]
    // 0x5d9210: stp             x16, x0, [SP]
    // 0x5d9214: mov             x0, x1
    // 0x5d9218: r0 = GDT[cid_x0 + 0xfe05]()
    //     0x5d9218: mov             x17, #0xfe05
    //     0x5d921c: add             lr, x0, x17
    //     0x5d9220: ldr             lr, [x21, lr, lsl #3]
    //     0x5d9224: blr             lr
    // 0x5d9228: ldur            x3, [fp, #-0xa0]
    // 0x5d922c: ldur            x4, [fp, #-0x98]
    // 0x5d9230: ldur            x5, [fp, #-0xa8]
    // 0x5d9234: b               #0x5d90a0
    // 0x5d9238: mov             x0, x4
    // 0x5d923c: StoreField: r0->field_1f = rNULL
    //     0x5d923c: stur            NULL, [x0, #0x1f]
    // 0x5d9240: ldur            x0, [fp, #-0x90]
    // 0x5d9244: r0 = ReturnAsyncNotFuture()
    //     0x5d9244: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d9248: sub             SP, fp, #0xc8
    // 0x5d924c: r16 = <String, List<String>>
    //     0x5d924c: add             x16, PP, #0x10, lsl #12  ; [pp+0x106b8] TypeArguments: <String, List<String>>
    //     0x5d9250: ldr             x16, [x16, #0x6b8]
    // 0x5d9254: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5d9258: stp             lr, x16, [SP]
    // 0x5d925c: r0 = Map._fromLiteral()
    //     0x5d925c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5d9260: r0 = ReturnAsyncNotFuture()
    //     0x5d9260: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d9264: mov             x1, x3
    // 0x5d9268: mov             x0, x4
    // 0x5d926c: r0 = ConcurrentModificationError()
    //     0x5d926c: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x5d9270: mov             x1, x0
    // 0x5d9274: ldur            x0, [fp, #-0xa0]
    // 0x5d9278: stur            x1, [fp, #-0x80]
    // 0x5d927c: StoreField: r1->field_b = r0
    //     0x5d927c: stur            w0, [x1, #0xb]
    // 0x5d9280: mov             x0, x1
    // 0x5d9284: r0 = Throw()
    //     0x5d9284: bl              #0x926328  ; ThrowStub
    // 0x5d9288: brk             #0
    // 0x5d928c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d928c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9290: b               #0x5d9008
    // 0x5d9294: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9294: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9298: b               #0x5d90ac
    // 0x5d929c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5d929c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  get _ tripManagersCollection(/* No info */) {
    // ** addr: 0x5d92a0, size: 0x40
    // 0x5d92a0: EnterFrame
    //     0x5d92a0: stp             fp, lr, [SP, #-0x10]!
    //     0x5d92a4: mov             fp, SP
    // 0x5d92a8: CheckStackOverflow
    //     0x5d92a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d92ac: cmp             SP, x16
    //     0x5d92b0: b.ls            #0x5d92d8
    // 0x5d92b4: LoadField: r0 = r1->field_7
    //     0x5d92b4: ldur            w0, [x1, #7]
    // 0x5d92b8: DecompressPointer r0
    //     0x5d92b8: add             x0, x0, HEAP, lsl #32
    // 0x5d92bc: mov             x1, x0
    // 0x5d92c0: r2 = "trip_managers"
    //     0x5d92c0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13be8] "trip_managers"
    //     0x5d92c4: ldr             x2, [x2, #0xbe8]
    // 0x5d92c8: r0 = collection()
    //     0x5d92c8: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d92cc: LeaveFrame
    //     0x5d92cc: mov             SP, fp
    //     0x5d92d0: ldp             fp, lr, [SP], #0x10
    // 0x5d92d4: ret
    //     0x5d92d4: ret             
    // 0x5d92d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d92d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d92dc: b               #0x5d92b4
  }
  [closure] List<String> <anonymous closure>(dynamic) {
    // ** addr: 0x5d92e0, size: 0x34
    // 0x5d92e0: EnterFrame
    //     0x5d92e0: stp             fp, lr, [SP, #-0x10]!
    //     0x5d92e4: mov             fp, SP
    // 0x5d92e8: CheckStackOverflow
    //     0x5d92e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d92ec: cmp             SP, x16
    //     0x5d92f0: b.ls            #0x5d930c
    // 0x5d92f4: r1 = <String>
    //     0x5d92f4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x5d92f8: r2 = 0
    //     0x5d92f8: mov             x2, #0
    // 0x5d92fc: r0 = _GrowableList()
    //     0x5d92fc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5d9300: LeaveFrame
    //     0x5d9300: mov             SP, fp
    //     0x5d9304: ldp             fp, lr, [SP], #0x10
    // 0x5d9308: ret
    //     0x5d9308: ret             
    // 0x5d930c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d930c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9310: b               #0x5d92f4
  }
  _ getHotelsByAgency(/* No info */) async {
    // ** addr: 0x5d9314, size: 0x100
    // 0x5d9314: EnterFrame
    //     0x5d9314: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9318: mov             fp, SP
    // 0x5d931c: AllocStack(0x98)
    //     0x5d931c: sub             SP, SP, #0x98
    // 0x5d9320: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5d9320: stur            NULL, [fp, #-8]
    //     0x5d9324: mov             x3, x2
    //     0x5d9328: stur            x1, [fp, #-0x60]
    //     0x5d932c: stur            x2, [fp, #-0x68]
    // 0x5d9330: CheckStackOverflow
    //     0x5d9330: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9334: cmp             SP, x16
    //     0x5d9338: b.ls            #0x5d940c
    // 0x5d933c: InitAsync() -> Future<List<HotelModel>>
    //     0x5d933c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19068] TypeArguments: <List<HotelModel>>
    //     0x5d9340: ldr             x0, [x0, #0x68]
    //     0x5d9344: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d9348: ldur            x0, [fp, #-0x60]
    // 0x5d934c: LoadField: r1 = r0->field_7
    //     0x5d934c: ldur            w1, [x0, #7]
    // 0x5d9350: DecompressPointer r1
    //     0x5d9350: add             x1, x1, HEAP, lsl #32
    // 0x5d9354: r2 = "hotels"
    //     0x5d9354: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x5d9358: ldr             x2, [x2, #0x990]
    // 0x5d935c: r0 = collection()
    //     0x5d935c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d9360: mov             x1, x0
    // 0x5d9364: ldur            x3, [fp, #-0x68]
    // 0x5d9368: r2 = "agency_id"
    //     0x5d9368: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d936c: ldr             x2, [x2, #0x40]
    // 0x5d9370: r0 = where()
    //     0x5d9370: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5d9374: mov             x1, x0
    // 0x5d9378: r2 = "name"
    //     0x5d9378: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5d937c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5d937c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5d9380: r0 = orderBy()
    //     0x5d9380: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5d9384: mov             x1, x0
    // 0x5d9388: r0 = get()
    //     0x5d9388: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5d938c: mov             x1, x0
    // 0x5d9390: stur            x1, [fp, #-0x70]
    // 0x5d9394: r0 = Await()
    //     0x5d9394: bl              #0x3dd188  ; AwaitStub
    // 0x5d9398: mov             x1, x0
    // 0x5d939c: stur            x0, [fp, #-0x70]
    // 0x5d93a0: r0 = docs()
    //     0x5d93a0: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5d93a4: r1 = Function '<anonymous closure>':.
    //     0x5d93a4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19070] AnonymousClosure: (0x5d9454), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotelsByAgency (0x5d9314)
    //     0x5d93a8: ldr             x1, [x1, #0x70]
    // 0x5d93ac: r2 = Null
    //     0x5d93ac: mov             x2, NULL
    // 0x5d93b0: stur            x0, [fp, #-0x78]
    // 0x5d93b4: r0 = AllocateClosure()
    //     0x5d93b4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d93b8: r16 = <HotelModel>
    //     0x5d93b8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x5d93bc: ldr             x16, [x16, #0xda8]
    // 0x5d93c0: ldur            lr, [fp, #-0x78]
    // 0x5d93c4: stp             lr, x16, [SP, #8]
    // 0x5d93c8: str             x0, [SP]
    // 0x5d93cc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5d93cc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5d93d0: r0 = map()
    //     0x5d93d0: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5d93d4: stur            x0, [fp, #-0x80]
    // 0x5d93d8: LoadField: r3 = r0->field_7
    //     0x5d93d8: ldur            w3, [x0, #7]
    // 0x5d93dc: DecompressPointer r3
    //     0x5d93dc: add             x3, x3, HEAP, lsl #32
    // 0x5d93e0: mov             x1, x3
    // 0x5d93e4: mov             x2, x0
    // 0x5d93e8: stur            x3, [fp, #-0x78]
    // 0x5d93ec: r0 = _GrowableList.of()
    //     0x5d93ec: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5d93f0: r0 = ReturnAsyncNotFuture()
    //     0x5d93f0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d93f4: sub             SP, fp, #0x98
    // 0x5d93f8: r1 = <HotelModel>
    //     0x5d93f8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x5d93fc: ldr             x1, [x1, #0xda8]
    // 0x5d9400: r2 = 0
    //     0x5d9400: mov             x2, #0
    // 0x5d9404: r0 = _GrowableList()
    //     0x5d9404: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5d9408: r0 = ReturnAsyncNotFuture()
    //     0x5d9408: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d940c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d940c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9410: b               #0x5d933c
  }
  get _ hotelsCollection(/* No info */) {
    // ** addr: 0x5d9414, size: 0x40
    // 0x5d9414: EnterFrame
    //     0x5d9414: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9418: mov             fp, SP
    // 0x5d941c: CheckStackOverflow
    //     0x5d941c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9420: cmp             SP, x16
    //     0x5d9424: b.ls            #0x5d944c
    // 0x5d9428: LoadField: r0 = r1->field_7
    //     0x5d9428: ldur            w0, [x1, #7]
    // 0x5d942c: DecompressPointer r0
    //     0x5d942c: add             x0, x0, HEAP, lsl #32
    // 0x5d9430: mov             x1, x0
    // 0x5d9434: r2 = "hotels"
    //     0x5d9434: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x5d9438: ldr             x2, [x2, #0x990]
    // 0x5d943c: r0 = collection()
    //     0x5d943c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d9440: LeaveFrame
    //     0x5d9440: mov             SP, fp
    //     0x5d9444: ldp             fp, lr, [SP], #0x10
    // 0x5d9448: ret
    //     0x5d9448: ret             
    // 0x5d944c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d944c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9450: b               #0x5d9428
  }
  [closure] HotelModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5d9454, size: 0x34
    // 0x5d9454: EnterFrame
    //     0x5d9454: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9458: mov             fp, SP
    // 0x5d945c: CheckStackOverflow
    //     0x5d945c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9460: cmp             SP, x16
    //     0x5d9464: b.ls            #0x5d9480
    // 0x5d9468: ldr             x2, [fp, #0x10]
    // 0x5d946c: r1 = Null
    //     0x5d946c: mov             x1, NULL
    // 0x5d9470: r0 = HotelModel.fromFirestore()
    //     0x5d9470: bl              #0x5d9488  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::HotelModel.fromFirestore
    // 0x5d9474: LeaveFrame
    //     0x5d9474: mov             SP, fp
    //     0x5d9478: ldp             fp, lr, [SP], #0x10
    // 0x5d947c: ret
    //     0x5d947c: ret             
    // 0x5d9480: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9480: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9484: b               #0x5d9468
  }
  _ getTripsByAgency(/* No info */) async {
    // ** addr: 0x5d9bc0, size: 0x104
    // 0x5d9bc0: EnterFrame
    //     0x5d9bc0: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9bc4: mov             fp, SP
    // 0x5d9bc8: AllocStack(0x98)
    //     0x5d9bc8: sub             SP, SP, #0x98
    // 0x5d9bcc: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5d9bcc: stur            NULL, [fp, #-8]
    //     0x5d9bd0: mov             x3, x2
    //     0x5d9bd4: stur            x1, [fp, #-0x60]
    //     0x5d9bd8: stur            x2, [fp, #-0x68]
    // 0x5d9bdc: CheckStackOverflow
    //     0x5d9bdc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9be0: cmp             SP, x16
    //     0x5d9be4: b.ls            #0x5d9cbc
    // 0x5d9be8: InitAsync() -> Future<List<TripModel>>
    //     0x5d9be8: add             x0, PP, #0x19, lsl #12  ; [pp+0x19108] TypeArguments: <List<TripModel>>
    //     0x5d9bec: ldr             x0, [x0, #0x108]
    //     0x5d9bf0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d9bf4: ldur            x0, [fp, #-0x60]
    // 0x5d9bf8: LoadField: r1 = r0->field_7
    //     0x5d9bf8: ldur            w1, [x0, #7]
    // 0x5d9bfc: DecompressPointer r1
    //     0x5d9bfc: add             x1, x1, HEAP, lsl #32
    // 0x5d9c00: r2 = "trips"
    //     0x5d9c00: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x5d9c04: ldr             x2, [x2, #0x88]
    // 0x5d9c08: r0 = collection()
    //     0x5d9c08: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d9c0c: mov             x1, x0
    // 0x5d9c10: ldur            x3, [fp, #-0x68]
    // 0x5d9c14: r2 = "agency_id"
    //     0x5d9c14: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5d9c18: ldr             x2, [x2, #0x40]
    // 0x5d9c1c: r0 = where()
    //     0x5d9c1c: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5d9c20: mov             x1, x0
    // 0x5d9c24: r2 = "start_date"
    //     0x5d9c24: add             x2, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x5d9c28: ldr             x2, [x2, #0x48]
    // 0x5d9c2c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5d9c2c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5d9c30: r0 = orderBy()
    //     0x5d9c30: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5d9c34: mov             x1, x0
    // 0x5d9c38: r0 = get()
    //     0x5d9c38: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5d9c3c: mov             x1, x0
    // 0x5d9c40: stur            x1, [fp, #-0x70]
    // 0x5d9c44: r0 = Await()
    //     0x5d9c44: bl              #0x3dd188  ; AwaitStub
    // 0x5d9c48: mov             x1, x0
    // 0x5d9c4c: stur            x0, [fp, #-0x70]
    // 0x5d9c50: r0 = docs()
    //     0x5d9c50: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5d9c54: r1 = Function '<anonymous closure>':.
    //     0x5d9c54: add             x1, PP, #0x19, lsl #12  ; [pp+0x19110] AnonymousClosure: (0x5d9d04), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripsByAgency (0x5d9bc0)
    //     0x5d9c58: ldr             x1, [x1, #0x110]
    // 0x5d9c5c: r2 = Null
    //     0x5d9c5c: mov             x2, NULL
    // 0x5d9c60: stur            x0, [fp, #-0x78]
    // 0x5d9c64: r0 = AllocateClosure()
    //     0x5d9c64: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5d9c68: r16 = <TripModel>
    //     0x5d9c68: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x5d9c6c: ldr             x16, [x16, #0xda0]
    // 0x5d9c70: ldur            lr, [fp, #-0x78]
    // 0x5d9c74: stp             lr, x16, [SP, #8]
    // 0x5d9c78: str             x0, [SP]
    // 0x5d9c7c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5d9c7c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5d9c80: r0 = map()
    //     0x5d9c80: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5d9c84: stur            x0, [fp, #-0x80]
    // 0x5d9c88: LoadField: r3 = r0->field_7
    //     0x5d9c88: ldur            w3, [x0, #7]
    // 0x5d9c8c: DecompressPointer r3
    //     0x5d9c8c: add             x3, x3, HEAP, lsl #32
    // 0x5d9c90: mov             x1, x3
    // 0x5d9c94: mov             x2, x0
    // 0x5d9c98: stur            x3, [fp, #-0x78]
    // 0x5d9c9c: r0 = _GrowableList.of()
    //     0x5d9c9c: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5d9ca0: r0 = ReturnAsyncNotFuture()
    //     0x5d9ca0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d9ca4: sub             SP, fp, #0x98
    // 0x5d9ca8: r1 = <TripModel>
    //     0x5d9ca8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x5d9cac: ldr             x1, [x1, #0xda0]
    // 0x5d9cb0: r2 = 0
    //     0x5d9cb0: mov             x2, #0
    // 0x5d9cb4: r0 = _GrowableList()
    //     0x5d9cb4: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5d9cb8: r0 = ReturnAsyncNotFuture()
    //     0x5d9cb8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d9cbc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9cbc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9cc0: b               #0x5d9be8
  }
  get _ tripsCollection(/* No info */) {
    // ** addr: 0x5d9cc4, size: 0x40
    // 0x5d9cc4: EnterFrame
    //     0x5d9cc4: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9cc8: mov             fp, SP
    // 0x5d9ccc: CheckStackOverflow
    //     0x5d9ccc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9cd0: cmp             SP, x16
    //     0x5d9cd4: b.ls            #0x5d9cfc
    // 0x5d9cd8: LoadField: r0 = r1->field_7
    //     0x5d9cd8: ldur            w0, [x1, #7]
    // 0x5d9cdc: DecompressPointer r0
    //     0x5d9cdc: add             x0, x0, HEAP, lsl #32
    // 0x5d9ce0: mov             x1, x0
    // 0x5d9ce4: r2 = "trips"
    //     0x5d9ce4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x5d9ce8: ldr             x2, [x2, #0x88]
    // 0x5d9cec: r0 = collection()
    //     0x5d9cec: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5d9cf0: LeaveFrame
    //     0x5d9cf0: mov             SP, fp
    //     0x5d9cf4: ldp             fp, lr, [SP], #0x10
    // 0x5d9cf8: ret
    //     0x5d9cf8: ret             
    // 0x5d9cfc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9cfc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9d00: b               #0x5d9cd8
  }
  [closure] TripModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5d9d04, size: 0x34
    // 0x5d9d04: EnterFrame
    //     0x5d9d04: stp             fp, lr, [SP, #-0x10]!
    //     0x5d9d08: mov             fp, SP
    // 0x5d9d0c: CheckStackOverflow
    //     0x5d9d0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d9d10: cmp             SP, x16
    //     0x5d9d14: b.ls            #0x5d9d30
    // 0x5d9d18: ldr             x2, [fp, #0x10]
    // 0x5d9d1c: r1 = Null
    //     0x5d9d1c: mov             x1, NULL
    // 0x5d9d20: r0 = TripModel.fromFirestore()
    //     0x5d9d20: bl              #0x5d9d38  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::TripModel.fromFirestore
    // 0x5d9d24: LeaveFrame
    //     0x5d9d24: mov             SP, fp
    //     0x5d9d28: ldp             fp, lr, [SP], #0x10
    // 0x5d9d2c: ret
    //     0x5d9d2c: ret             
    // 0x5d9d30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d9d30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d9d34: b               #0x5d9d18
  }
  _ getUsersByAgency(/* No info */) async {
    // ** addr: 0x5da4c0, size: 0xf0
    // 0x5da4c0: EnterFrame
    //     0x5da4c0: stp             fp, lr, [SP, #-0x10]!
    //     0x5da4c4: mov             fp, SP
    // 0x5da4c8: AllocStack(0x98)
    //     0x5da4c8: sub             SP, SP, #0x98
    // 0x5da4cc: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5da4cc: stur            NULL, [fp, #-8]
    //     0x5da4d0: mov             x3, x2
    //     0x5da4d4: stur            x1, [fp, #-0x60]
    //     0x5da4d8: stur            x2, [fp, #-0x68]
    // 0x5da4dc: CheckStackOverflow
    //     0x5da4dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5da4e0: cmp             SP, x16
    //     0x5da4e4: b.ls            #0x5da5a8
    // 0x5da4e8: InitAsync() -> Future<List<UserModel>>
    //     0x5da4e8: add             x0, PP, #0x19, lsl #12  ; [pp+0x19118] TypeArguments: <List<UserModel>>
    //     0x5da4ec: ldr             x0, [x0, #0x118]
    //     0x5da4f0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5da4f4: ldur            x0, [fp, #-0x60]
    // 0x5da4f8: LoadField: r1 = r0->field_7
    //     0x5da4f8: ldur            w1, [x0, #7]
    // 0x5da4fc: DecompressPointer r1
    //     0x5da4fc: add             x1, x1, HEAP, lsl #32
    // 0x5da500: r2 = "users"
    //     0x5da500: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x5da504: ldr             x2, [x2, #0x808]
    // 0x5da508: r0 = collection()
    //     0x5da508: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5da50c: mov             x1, x0
    // 0x5da510: ldur            x3, [fp, #-0x68]
    // 0x5da514: r2 = "agency_id"
    //     0x5da514: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5da518: ldr             x2, [x2, #0x40]
    // 0x5da51c: r0 = where()
    //     0x5da51c: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5da520: mov             x1, x0
    // 0x5da524: r0 = get()
    //     0x5da524: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5da528: mov             x1, x0
    // 0x5da52c: stur            x1, [fp, #-0x70]
    // 0x5da530: r0 = Await()
    //     0x5da530: bl              #0x3dd188  ; AwaitStub
    // 0x5da534: mov             x1, x0
    // 0x5da538: stur            x0, [fp, #-0x70]
    // 0x5da53c: r0 = docs()
    //     0x5da53c: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5da540: r1 = Function '<anonymous closure>':.
    //     0x5da540: add             x1, PP, #0x19, lsl #12  ; [pp+0x19120] AnonymousClosure: (0x5da5f0), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUsersByAgency (0x5da4c0)
    //     0x5da544: ldr             x1, [x1, #0x120]
    // 0x5da548: r2 = Null
    //     0x5da548: mov             x2, NULL
    // 0x5da54c: stur            x0, [fp, #-0x78]
    // 0x5da550: r0 = AllocateClosure()
    //     0x5da550: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5da554: r16 = <UserModel>
    //     0x5da554: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x5da558: ldr             x16, [x16, #0xd98]
    // 0x5da55c: ldur            lr, [fp, #-0x78]
    // 0x5da560: stp             lr, x16, [SP, #8]
    // 0x5da564: str             x0, [SP]
    // 0x5da568: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5da568: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5da56c: r0 = map()
    //     0x5da56c: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5da570: stur            x0, [fp, #-0x80]
    // 0x5da574: LoadField: r3 = r0->field_7
    //     0x5da574: ldur            w3, [x0, #7]
    // 0x5da578: DecompressPointer r3
    //     0x5da578: add             x3, x3, HEAP, lsl #32
    // 0x5da57c: mov             x1, x3
    // 0x5da580: mov             x2, x0
    // 0x5da584: stur            x3, [fp, #-0x78]
    // 0x5da588: r0 = _GrowableList.of()
    //     0x5da588: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5da58c: r0 = ReturnAsyncNotFuture()
    //     0x5da58c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5da590: sub             SP, fp, #0x98
    // 0x5da594: r1 = <UserModel>
    //     0x5da594: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x5da598: ldr             x1, [x1, #0xd98]
    // 0x5da59c: r2 = 0
    //     0x5da59c: mov             x2, #0
    // 0x5da5a0: r0 = _GrowableList()
    //     0x5da5a0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5da5a4: r0 = ReturnAsyncNotFuture()
    //     0x5da5a4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5da5a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5da5a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5da5ac: b               #0x5da4e8
  }
  get _ usersCollection(/* No info */) {
    // ** addr: 0x5da5b0, size: 0x40
    // 0x5da5b0: EnterFrame
    //     0x5da5b0: stp             fp, lr, [SP, #-0x10]!
    //     0x5da5b4: mov             fp, SP
    // 0x5da5b8: CheckStackOverflow
    //     0x5da5b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5da5bc: cmp             SP, x16
    //     0x5da5c0: b.ls            #0x5da5e8
    // 0x5da5c4: LoadField: r0 = r1->field_7
    //     0x5da5c4: ldur            w0, [x1, #7]
    // 0x5da5c8: DecompressPointer r0
    //     0x5da5c8: add             x0, x0, HEAP, lsl #32
    // 0x5da5cc: mov             x1, x0
    // 0x5da5d0: r2 = "users"
    //     0x5da5d0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x5da5d4: ldr             x2, [x2, #0x808]
    // 0x5da5d8: r0 = collection()
    //     0x5da5d8: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5da5dc: LeaveFrame
    //     0x5da5dc: mov             SP, fp
    //     0x5da5e0: ldp             fp, lr, [SP], #0x10
    // 0x5da5e4: ret
    //     0x5da5e4: ret             
    // 0x5da5e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5da5e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5da5ec: b               #0x5da5c4
  }
  [closure] UserModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5da5f0, size: 0x34
    // 0x5da5f0: EnterFrame
    //     0x5da5f0: stp             fp, lr, [SP, #-0x10]!
    //     0x5da5f4: mov             fp, SP
    // 0x5da5f8: CheckStackOverflow
    //     0x5da5f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5da5fc: cmp             SP, x16
    //     0x5da600: b.ls            #0x5da61c
    // 0x5da604: ldr             x2, [fp, #0x10]
    // 0x5da608: r1 = Null
    //     0x5da608: mov             x1, NULL
    // 0x5da60c: r0 = UserModel.fromFirestore()
    //     0x5da60c: bl              #0x5da624  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::UserModel.fromFirestore
    // 0x5da610: LeaveFrame
    //     0x5da610: mov             SP, fp
    //     0x5da614: ldp             fp, lr, [SP], #0x10
    // 0x5da618: ret
    //     0x5da618: ret             
    // 0x5da61c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5da61c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5da620: b               #0x5da604
  }
  _ getHotels(/* No info */) async {
    // ** addr: 0x5db738, size: 0xe8
    // 0x5db738: EnterFrame
    //     0x5db738: stp             fp, lr, [SP, #-0x10]!
    //     0x5db73c: mov             fp, SP
    // 0x5db740: AllocStack(0x98)
    //     0x5db740: sub             SP, SP, #0x98
    // 0x5db744: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */)
    //     0x5db744: stur            NULL, [fp, #-8]
    //     0x5db748: stur            x1, [fp, #-0x60]
    // 0x5db74c: CheckStackOverflow
    //     0x5db74c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5db750: cmp             SP, x16
    //     0x5db754: b.ls            #0x5db818
    // 0x5db758: InitAsync() -> Future<List<HotelModel>>
    //     0x5db758: add             x0, PP, #0x19, lsl #12  ; [pp+0x19068] TypeArguments: <List<HotelModel>>
    //     0x5db75c: ldr             x0, [x0, #0x68]
    //     0x5db760: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5db764: ldur            x0, [fp, #-0x60]
    // 0x5db768: LoadField: r1 = r0->field_7
    //     0x5db768: ldur            w1, [x0, #7]
    // 0x5db76c: DecompressPointer r1
    //     0x5db76c: add             x1, x1, HEAP, lsl #32
    // 0x5db770: r2 = "hotels"
    //     0x5db770: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x5db774: ldr             x2, [x2, #0x990]
    // 0x5db778: r0 = collection()
    //     0x5db778: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5db77c: mov             x1, x0
    // 0x5db780: r2 = "name"
    //     0x5db780: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5db784: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5db784: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5db788: r0 = orderBy()
    //     0x5db788: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5db78c: mov             x1, x0
    // 0x5db790: stur            x0, [fp, #-0x68]
    // 0x5db794: r0 = get()
    //     0x5db794: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5db798: mov             x1, x0
    // 0x5db79c: stur            x1, [fp, #-0x70]
    // 0x5db7a0: r0 = Await()
    //     0x5db7a0: bl              #0x3dd188  ; AwaitStub
    // 0x5db7a4: mov             x1, x0
    // 0x5db7a8: stur            x0, [fp, #-0x70]
    // 0x5db7ac: r0 = docs()
    //     0x5db7ac: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5db7b0: r1 = Function '<anonymous closure>':.
    //     0x5db7b0: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a6a0] AnonymousClosure: (0x5d9454), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotelsByAgency (0x5d9314)
    //     0x5db7b4: ldr             x1, [x1, #0x6a0]
    // 0x5db7b8: r2 = Null
    //     0x5db7b8: mov             x2, NULL
    // 0x5db7bc: stur            x0, [fp, #-0x78]
    // 0x5db7c0: r0 = AllocateClosure()
    //     0x5db7c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5db7c4: r16 = <HotelModel>
    //     0x5db7c4: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x5db7c8: ldr             x16, [x16, #0xda8]
    // 0x5db7cc: ldur            lr, [fp, #-0x78]
    // 0x5db7d0: stp             lr, x16, [SP, #8]
    // 0x5db7d4: str             x0, [SP]
    // 0x5db7d8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5db7d8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5db7dc: r0 = map()
    //     0x5db7dc: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5db7e0: stur            x0, [fp, #-0x80]
    // 0x5db7e4: LoadField: r3 = r0->field_7
    //     0x5db7e4: ldur            w3, [x0, #7]
    // 0x5db7e8: DecompressPointer r3
    //     0x5db7e8: add             x3, x3, HEAP, lsl #32
    // 0x5db7ec: mov             x1, x3
    // 0x5db7f0: mov             x2, x0
    // 0x5db7f4: stur            x3, [fp, #-0x78]
    // 0x5db7f8: r0 = _GrowableList.of()
    //     0x5db7f8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5db7fc: r0 = ReturnAsyncNotFuture()
    //     0x5db7fc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5db800: sub             SP, fp, #0x98
    // 0x5db804: r1 = <HotelModel>
    //     0x5db804: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x5db808: ldr             x1, [x1, #0xda8]
    // 0x5db80c: r2 = 0
    //     0x5db80c: mov             x2, #0
    // 0x5db810: r0 = _GrowableList()
    //     0x5db810: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5db814: r0 = ReturnAsyncNotFuture()
    //     0x5db814: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5db818: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5db818: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5db81c: b               #0x5db758
  }
  _ getTrips(/* No info */) async {
    // ** addr: 0x5db820, size: 0xe8
    // 0x5db820: EnterFrame
    //     0x5db820: stp             fp, lr, [SP, #-0x10]!
    //     0x5db824: mov             fp, SP
    // 0x5db828: AllocStack(0x88)
    //     0x5db828: sub             SP, SP, #0x88
    // 0x5db82c: SetupParameters(FirestoreService this /* r1 => r1, fp-0x58 */)
    //     0x5db82c: stur            NULL, [fp, #-8]
    //     0x5db830: stur            x1, [fp, #-0x58]
    // 0x5db834: CheckStackOverflow
    //     0x5db834: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5db838: cmp             SP, x16
    //     0x5db83c: b.ls            #0x5db900
    // 0x5db840: InitAsync() -> Future<List<TripModel>>
    //     0x5db840: add             x0, PP, #0x19, lsl #12  ; [pp+0x19108] TypeArguments: <List<TripModel>>
    //     0x5db844: ldr             x0, [x0, #0x108]
    //     0x5db848: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5db84c: ldur            x0, [fp, #-0x58]
    // 0x5db850: LoadField: r1 = r0->field_7
    //     0x5db850: ldur            w1, [x0, #7]
    // 0x5db854: DecompressPointer r1
    //     0x5db854: add             x1, x1, HEAP, lsl #32
    // 0x5db858: r2 = "trips"
    //     0x5db858: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x5db85c: ldr             x2, [x2, #0x88]
    // 0x5db860: r0 = collection()
    //     0x5db860: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5db864: mov             x1, x0
    // 0x5db868: r2 = "start_date"
    //     0x5db868: add             x2, PP, #0x14, lsl #12  ; [pp+0x14048] "start_date"
    //     0x5db86c: ldr             x2, [x2, #0x48]
    // 0x5db870: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5db870: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5db874: r0 = orderBy()
    //     0x5db874: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5db878: mov             x1, x0
    // 0x5db87c: r0 = get()
    //     0x5db87c: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5db880: mov             x1, x0
    // 0x5db884: stur            x1, [fp, #-0x60]
    // 0x5db888: r0 = Await()
    //     0x5db888: bl              #0x3dd188  ; AwaitStub
    // 0x5db88c: mov             x1, x0
    // 0x5db890: stur            x0, [fp, #-0x60]
    // 0x5db894: r0 = docs()
    //     0x5db894: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5db898: r1 = Function '<anonymous closure>':.
    //     0x5db898: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a6a8] AnonymousClosure: (0x5d9d04), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripsByAgency (0x5d9bc0)
    //     0x5db89c: ldr             x1, [x1, #0x6a8]
    // 0x5db8a0: r2 = Null
    //     0x5db8a0: mov             x2, NULL
    // 0x5db8a4: stur            x0, [fp, #-0x68]
    // 0x5db8a8: r0 = AllocateClosure()
    //     0x5db8a8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5db8ac: r16 = <TripModel>
    //     0x5db8ac: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x5db8b0: ldr             x16, [x16, #0xda0]
    // 0x5db8b4: ldur            lr, [fp, #-0x68]
    // 0x5db8b8: stp             lr, x16, [SP, #8]
    // 0x5db8bc: str             x0, [SP]
    // 0x5db8c0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5db8c0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5db8c4: r0 = map()
    //     0x5db8c4: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5db8c8: stur            x0, [fp, #-0x70]
    // 0x5db8cc: LoadField: r3 = r0->field_7
    //     0x5db8cc: ldur            w3, [x0, #7]
    // 0x5db8d0: DecompressPointer r3
    //     0x5db8d0: add             x3, x3, HEAP, lsl #32
    // 0x5db8d4: mov             x1, x3
    // 0x5db8d8: mov             x2, x0
    // 0x5db8dc: stur            x3, [fp, #-0x68]
    // 0x5db8e0: r0 = _GrowableList.of()
    //     0x5db8e0: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5db8e4: r0 = ReturnAsyncNotFuture()
    //     0x5db8e4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5db8e8: sub             SP, fp, #0x88
    // 0x5db8ec: r1 = <TripModel>
    //     0x5db8ec: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x5db8f0: ldr             x1, [x1, #0xda0]
    // 0x5db8f4: r2 = 0
    //     0x5db8f4: mov             x2, #0
    // 0x5db8f8: r0 = _GrowableList()
    //     0x5db8f8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5db8fc: r0 = ReturnAsyncNotFuture()
    //     0x5db8fc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5db900: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5db900: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5db904: b               #0x5db840
  }
  _ getAllUsers(/* No info */) async {
    // ** addr: 0x5db908, size: 0xd4
    // 0x5db908: EnterFrame
    //     0x5db908: stp             fp, lr, [SP, #-0x10]!
    //     0x5db90c: mov             fp, SP
    // 0x5db910: AllocStack(0x88)
    //     0x5db910: sub             SP, SP, #0x88
    // 0x5db914: SetupParameters(FirestoreService this /* r1 => r1, fp-0x58 */)
    //     0x5db914: stur            NULL, [fp, #-8]
    //     0x5db918: stur            x1, [fp, #-0x58]
    // 0x5db91c: CheckStackOverflow
    //     0x5db91c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5db920: cmp             SP, x16
    //     0x5db924: b.ls            #0x5db9d4
    // 0x5db928: InitAsync() -> Future<List<UserModel>>
    //     0x5db928: add             x0, PP, #0x19, lsl #12  ; [pp+0x19118] TypeArguments: <List<UserModel>>
    //     0x5db92c: ldr             x0, [x0, #0x118]
    //     0x5db930: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5db934: ldur            x0, [fp, #-0x58]
    // 0x5db938: LoadField: r1 = r0->field_7
    //     0x5db938: ldur            w1, [x0, #7]
    // 0x5db93c: DecompressPointer r1
    //     0x5db93c: add             x1, x1, HEAP, lsl #32
    // 0x5db940: r2 = "users"
    //     0x5db940: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x5db944: ldr             x2, [x2, #0x808]
    // 0x5db948: r0 = collection()
    //     0x5db948: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5db94c: mov             x1, x0
    // 0x5db950: r0 = get()
    //     0x5db950: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5db954: mov             x1, x0
    // 0x5db958: stur            x1, [fp, #-0x60]
    // 0x5db95c: r0 = Await()
    //     0x5db95c: bl              #0x3dd188  ; AwaitStub
    // 0x5db960: mov             x1, x0
    // 0x5db964: stur            x0, [fp, #-0x60]
    // 0x5db968: r0 = docs()
    //     0x5db968: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5db96c: r1 = Function '<anonymous closure>':.
    //     0x5db96c: add             x1, PP, #0x1a, lsl #12  ; [pp+0x1a6b0] AnonymousClosure: (0x5da5f0), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUsersByAgency (0x5da4c0)
    //     0x5db970: ldr             x1, [x1, #0x6b0]
    // 0x5db974: r2 = Null
    //     0x5db974: mov             x2, NULL
    // 0x5db978: stur            x0, [fp, #-0x68]
    // 0x5db97c: r0 = AllocateClosure()
    //     0x5db97c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5db980: r16 = <UserModel>
    //     0x5db980: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x5db984: ldr             x16, [x16, #0xd98]
    // 0x5db988: ldur            lr, [fp, #-0x68]
    // 0x5db98c: stp             lr, x16, [SP, #8]
    // 0x5db990: str             x0, [SP]
    // 0x5db994: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5db994: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5db998: r0 = map()
    //     0x5db998: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5db99c: stur            x0, [fp, #-0x70]
    // 0x5db9a0: LoadField: r3 = r0->field_7
    //     0x5db9a0: ldur            w3, [x0, #7]
    // 0x5db9a4: DecompressPointer r3
    //     0x5db9a4: add             x3, x3, HEAP, lsl #32
    // 0x5db9a8: mov             x1, x3
    // 0x5db9ac: mov             x2, x0
    // 0x5db9b0: stur            x3, [fp, #-0x68]
    // 0x5db9b4: r0 = _GrowableList.of()
    //     0x5db9b4: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5db9b8: r0 = ReturnAsyncNotFuture()
    //     0x5db9b8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5db9bc: sub             SP, fp, #0x88
    // 0x5db9c0: r1 = <UserModel>
    //     0x5db9c0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x5db9c4: ldr             x1, [x1, #0xd98]
    // 0x5db9c8: r2 = 0
    //     0x5db9c8: mov             x2, #0
    // 0x5db9cc: r0 = _GrowableList()
    //     0x5db9cc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5db9d0: r0 = ReturnAsyncNotFuture()
    //     0x5db9d0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5db9d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5db9d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5db9d8: b               #0x5db928
  }
  _ getAgencies(/* No info */) async {
    // ** addr: 0x5dba20, size: 0xe4
    // 0x5dba20: EnterFrame
    //     0x5dba20: stp             fp, lr, [SP, #-0x10]!
    //     0x5dba24: mov             fp, SP
    // 0x5dba28: AllocStack(0x88)
    //     0x5dba28: sub             SP, SP, #0x88
    // 0x5dba2c: SetupParameters(FirestoreService this /* r1 => r1, fp-0x58 */)
    //     0x5dba2c: stur            NULL, [fp, #-8]
    //     0x5dba30: stur            x1, [fp, #-0x58]
    // 0x5dba34: CheckStackOverflow
    //     0x5dba34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dba38: cmp             SP, x16
    //     0x5dba3c: b.ls            #0x5dbafc
    // 0x5dba40: InitAsync() -> Future<List<AgencyModel>>
    //     0x5dba40: add             x0, PP, #0x19, lsl #12  ; [pp+0x19868] TypeArguments: <List<AgencyModel>>
    //     0x5dba44: ldr             x0, [x0, #0x868]
    //     0x5dba48: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5dba4c: ldur            x0, [fp, #-0x58]
    // 0x5dba50: LoadField: r1 = r0->field_7
    //     0x5dba50: ldur            w1, [x0, #7]
    // 0x5dba54: DecompressPointer r1
    //     0x5dba54: add             x1, x1, HEAP, lsl #32
    // 0x5dba58: r2 = "agencies"
    //     0x5dba58: add             x2, PP, #0x19, lsl #12  ; [pp+0x19770] "agencies"
    //     0x5dba5c: ldr             x2, [x2, #0x770]
    // 0x5dba60: r0 = collection()
    //     0x5dba60: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5dba64: mov             x1, x0
    // 0x5dba68: r2 = "name"
    //     0x5dba68: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5dba6c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5dba6c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5dba70: r0 = orderBy()
    //     0x5dba70: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5dba74: mov             x1, x0
    // 0x5dba78: r0 = get()
    //     0x5dba78: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5dba7c: mov             x1, x0
    // 0x5dba80: stur            x1, [fp, #-0x60]
    // 0x5dba84: r0 = Await()
    //     0x5dba84: bl              #0x3dd188  ; AwaitStub
    // 0x5dba88: mov             x1, x0
    // 0x5dba8c: stur            x0, [fp, #-0x60]
    // 0x5dba90: r0 = docs()
    //     0x5dba90: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5dba94: r1 = Function '<anonymous closure>':.
    //     0x5dba94: add             x1, PP, #0x19, lsl #12  ; [pp+0x19870] AnonymousClosure: (0x5dbb44), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAgencies (0x5dba20)
    //     0x5dba98: ldr             x1, [x1, #0x870]
    // 0x5dba9c: r2 = Null
    //     0x5dba9c: mov             x2, NULL
    // 0x5dbaa0: stur            x0, [fp, #-0x68]
    // 0x5dbaa4: r0 = AllocateClosure()
    //     0x5dbaa4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5dbaa8: r16 = <AgencyModel>
    //     0x5dbaa8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d90] TypeArguments: <AgencyModel>
    //     0x5dbaac: ldr             x16, [x16, #0xd90]
    // 0x5dbab0: ldur            lr, [fp, #-0x68]
    // 0x5dbab4: stp             lr, x16, [SP, #8]
    // 0x5dbab8: str             x0, [SP]
    // 0x5dbabc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5dbabc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5dbac0: r0 = map()
    //     0x5dbac0: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5dbac4: stur            x0, [fp, #-0x70]
    // 0x5dbac8: LoadField: r3 = r0->field_7
    //     0x5dbac8: ldur            w3, [x0, #7]
    // 0x5dbacc: DecompressPointer r3
    //     0x5dbacc: add             x3, x3, HEAP, lsl #32
    // 0x5dbad0: mov             x1, x3
    // 0x5dbad4: mov             x2, x0
    // 0x5dbad8: stur            x3, [fp, #-0x68]
    // 0x5dbadc: r0 = _GrowableList.of()
    //     0x5dbadc: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5dbae0: r0 = ReturnAsyncNotFuture()
    //     0x5dbae0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5dbae4: sub             SP, fp, #0x88
    // 0x5dbae8: r1 = <AgencyModel>
    //     0x5dbae8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d90] TypeArguments: <AgencyModel>
    //     0x5dbaec: ldr             x1, [x1, #0xd90]
    // 0x5dbaf0: r2 = 0
    //     0x5dbaf0: mov             x2, #0
    // 0x5dbaf4: r0 = _GrowableList()
    //     0x5dbaf4: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5dbaf8: r0 = ReturnAsyncNotFuture()
    //     0x5dbaf8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5dbafc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dbafc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dbb00: b               #0x5dba40
  }
  get _ agenciesCollection(/* No info */) {
    // ** addr: 0x5dbb04, size: 0x40
    // 0x5dbb04: EnterFrame
    //     0x5dbb04: stp             fp, lr, [SP, #-0x10]!
    //     0x5dbb08: mov             fp, SP
    // 0x5dbb0c: CheckStackOverflow
    //     0x5dbb0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dbb10: cmp             SP, x16
    //     0x5dbb14: b.ls            #0x5dbb3c
    // 0x5dbb18: LoadField: r0 = r1->field_7
    //     0x5dbb18: ldur            w0, [x1, #7]
    // 0x5dbb1c: DecompressPointer r0
    //     0x5dbb1c: add             x0, x0, HEAP, lsl #32
    // 0x5dbb20: mov             x1, x0
    // 0x5dbb24: r2 = "agencies"
    //     0x5dbb24: add             x2, PP, #0x19, lsl #12  ; [pp+0x19770] "agencies"
    //     0x5dbb28: ldr             x2, [x2, #0x770]
    // 0x5dbb2c: r0 = collection()
    //     0x5dbb2c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5dbb30: LeaveFrame
    //     0x5dbb30: mov             SP, fp
    //     0x5dbb34: ldp             fp, lr, [SP], #0x10
    // 0x5dbb38: ret
    //     0x5dbb38: ret             
    // 0x5dbb3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dbb3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dbb40: b               #0x5dbb18
  }
  [closure] AgencyModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5dbb44, size: 0x34
    // 0x5dbb44: EnterFrame
    //     0x5dbb44: stp             fp, lr, [SP, #-0x10]!
    //     0x5dbb48: mov             fp, SP
    // 0x5dbb4c: CheckStackOverflow
    //     0x5dbb4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dbb50: cmp             SP, x16
    //     0x5dbb54: b.ls            #0x5dbb70
    // 0x5dbb58: ldr             x2, [fp, #0x10]
    // 0x5dbb5c: r1 = Null
    //     0x5dbb5c: mov             x1, NULL
    // 0x5dbb60: r0 = AgencyModel.fromFirestore()
    //     0x5dbb60: bl              #0x5dbb78  ; [package:umrem_demo/features/admin/models/agency_model.dart] AgencyModel::AgencyModel.fromFirestore
    // 0x5dbb64: LeaveFrame
    //     0x5dbb64: mov             SP, fp
    //     0x5dbb68: ldp             fp, lr, [SP], #0x10
    // 0x5dbb6c: ret
    //     0x5dbb6c: ret             
    // 0x5dbb70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dbb70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dbb74: b               #0x5dbb58
  }
  _ createHotel(/* No info */) async {
    // ** addr: 0x5dd1bc, size: 0xc8
    // 0x5dd1bc: EnterFrame
    //     0x5dd1bc: stp             fp, lr, [SP, #-0x10]!
    //     0x5dd1c0: mov             fp, SP
    // 0x5dd1c4: AllocStack(0x98)
    //     0x5dd1c4: sub             SP, SP, #0x98
    // 0x5dd1c8: SetupParameters(FirestoreService this /* r1 => r2, fp-0x70 */, dynamic _ /* r2 => r1, fp-0x78 */)
    //     0x5dd1c8: stur            NULL, [fp, #-8]
    //     0x5dd1cc: stur            x1, [fp, #-0x70]
    //     0x5dd1d0: mov             x16, x2
    //     0x5dd1d4: mov             x2, x1
    //     0x5dd1d8: mov             x1, x16
    //     0x5dd1dc: stur            x1, [fp, #-0x78]
    // 0x5dd1e0: CheckStackOverflow
    //     0x5dd1e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dd1e4: cmp             SP, x16
    //     0x5dd1e8: b.ls            #0x5dd27c
    // 0x5dd1ec: InitAsync() -> Future<String?>
    //     0x5dd1ec: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x5dd1f0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5dd1f4: ldur            x1, [fp, #-0x70]
    // 0x5dd1f8: r0 = hotelsCollection()
    //     0x5dd1f8: bl              #0x5d9414  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::hotelsCollection
    // 0x5dd1fc: mov             x1, x0
    // 0x5dd200: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5dd200: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5dd204: r0 = doc()
    //     0x5dd204: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5dd208: stur            x0, [fp, #-0x88]
    // 0x5dd20c: LoadField: r1 = r0->field_7
    //     0x5dd20c: ldur            w1, [x0, #7]
    // 0x5dd210: DecompressPointer r1
    //     0x5dd210: add             x1, x1, HEAP, lsl #32
    // 0x5dd214: LoadField: r2 = r1->field_b
    //     0x5dd214: ldur            w2, [x1, #0xb]
    // 0x5dd218: DecompressPointer r2
    //     0x5dd218: add             x2, x2, HEAP, lsl #32
    // 0x5dd21c: LoadField: r3 = r2->field_7
    //     0x5dd21c: ldur            w3, [x2, #7]
    // 0x5dd220: DecompressPointer r3
    //     0x5dd220: add             x3, x3, HEAP, lsl #32
    // 0x5dd224: mov             x1, x3
    // 0x5dd228: stur            x3, [fp, #-0x80]
    // 0x5dd22c: r0 = last()
    //     0x5dd22c: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5dd230: ldur            x1, [fp, #-0x78]
    // 0x5dd234: mov             x2, x0
    // 0x5dd238: stur            x0, [fp, #-0x90]
    // 0x5dd23c: r0 = copyWith()
    //     0x5dd23c: bl              #0x5dd0f4  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::copyWith
    // 0x5dd240: mov             x1, x0
    // 0x5dd244: r0 = toFirestore()
    //     0x5dd244: bl              #0x5dd6b8  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::toFirestore
    // 0x5dd248: ldur            x1, [fp, #-0x88]
    // 0x5dd24c: mov             x2, x0
    // 0x5dd250: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5dd250: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5dd254: r0 = set()
    //     0x5dd254: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x5dd258: mov             x1, x0
    // 0x5dd25c: stur            x1, [fp, #-0x98]
    // 0x5dd260: r0 = Await()
    //     0x5dd260: bl              #0x3dd188  ; AwaitStub
    // 0x5dd264: ldur            x1, [fp, #-0x80]
    // 0x5dd268: r0 = last()
    //     0x5dd268: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5dd26c: r0 = ReturnAsync()
    //     0x5dd26c: b               #0x427094  ; ReturnAsyncStub
    // 0x5dd270: sub             SP, fp, #0x98
    // 0x5dd274: r0 = Null
    //     0x5dd274: mov             x0, NULL
    // 0x5dd278: r0 = ReturnAsyncNotFuture()
    //     0x5dd278: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5dd27c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dd27c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dd280: b               #0x5dd1ec
  }
  _ getEventsByDate(/* No info */) async {
    // ** addr: 0x5df3e4, size: 0x104
    // 0x5df3e4: EnterFrame
    //     0x5df3e4: stp             fp, lr, [SP, #-0x10]!
    //     0x5df3e8: mov             fp, SP
    // 0x5df3ec: AllocStack(0xb8)
    //     0x5df3ec: sub             SP, SP, #0xb8
    // 0x5df3f0: SetupParameters(FirestoreService this /* r1 => r1, fp-0x70 */, dynamic _ /* r2 => r2, fp-0x78 */)
    //     0x5df3f0: stur            NULL, [fp, #-8]
    //     0x5df3f4: stur            x1, [fp, #-0x70]
    //     0x5df3f8: stur            x2, [fp, #-0x78]
    // 0x5df3fc: CheckStackOverflow
    //     0x5df3fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df400: cmp             SP, x16
    //     0x5df404: b.ls            #0x5df4e0
    // 0x5df408: InitAsync() -> Future<List<EventModel>>
    //     0x5df408: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ff0] TypeArguments: <List<EventModel>>
    //     0x5df40c: ldr             x0, [x0, #0xff0]
    //     0x5df410: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5df414: ldur            x1, [fp, #-0x70]
    // 0x5df418: ldur            x2, [fp, #-0x78]
    // 0x5df41c: r0 = _formatDateToYMD()
    //     0x5df41c: bl              #0x5df528  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_formatDateToYMD
    // 0x5df420: ldur            x1, [fp, #-0x70]
    // 0x5df424: stur            x0, [fp, #-0x80]
    // 0x5df428: r0 = eventsCollection()
    //     0x5df428: bl              #0x5df4e8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::eventsCollection
    // 0x5df42c: mov             x1, x0
    // 0x5df430: ldur            x3, [fp, #-0x80]
    // 0x5df434: r2 = "date"
    //     0x5df434: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5df438: ldr             x2, [x2, #0xff8]
    // 0x5df43c: r0 = where()
    //     0x5df43c: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5df440: mov             x1, x0
    // 0x5df444: r2 = "time"
    //     0x5df444: add             x2, PP, #0x15, lsl #12  ; [pp+0x15000] "time"
    //     0x5df448: ldr             x2, [x2]
    // 0x5df44c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5df44c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5df450: r0 = orderBy()
    //     0x5df450: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5df454: mov             x1, x0
    // 0x5df458: stur            x0, [fp, #-0x88]
    // 0x5df45c: r0 = get()
    //     0x5df45c: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5df460: mov             x1, x0
    // 0x5df464: stur            x1, [fp, #-0x90]
    // 0x5df468: r0 = Await()
    //     0x5df468: bl              #0x3dd188  ; AwaitStub
    // 0x5df46c: mov             x1, x0
    // 0x5df470: stur            x0, [fp, #-0x90]
    // 0x5df474: r0 = docs()
    //     0x5df474: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5df478: r1 = Function '<anonymous closure>':.
    //     0x5df478: add             x1, PP, #0x15, lsl #12  ; [pp+0x15008] AnonymousClosure: (0x5df734), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getEventsByDate (0x5df3e4)
    //     0x5df47c: ldr             x1, [x1, #8]
    // 0x5df480: r2 = Null
    //     0x5df480: mov             x2, NULL
    // 0x5df484: stur            x0, [fp, #-0x98]
    // 0x5df488: r0 = AllocateClosure()
    //     0x5df488: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5df48c: r16 = <EventModel>
    //     0x5df48c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d80] TypeArguments: <EventModel>
    //     0x5df490: ldr             x16, [x16, #0xd80]
    // 0x5df494: ldur            lr, [fp, #-0x98]
    // 0x5df498: stp             lr, x16, [SP, #8]
    // 0x5df49c: str             x0, [SP]
    // 0x5df4a0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5df4a0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5df4a4: r0 = map()
    //     0x5df4a4: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5df4a8: stur            x0, [fp, #-0xa0]
    // 0x5df4ac: LoadField: r3 = r0->field_7
    //     0x5df4ac: ldur            w3, [x0, #7]
    // 0x5df4b0: DecompressPointer r3
    //     0x5df4b0: add             x3, x3, HEAP, lsl #32
    // 0x5df4b4: mov             x1, x3
    // 0x5df4b8: mov             x2, x0
    // 0x5df4bc: stur            x3, [fp, #-0x98]
    // 0x5df4c0: r0 = _GrowableList.of()
    //     0x5df4c0: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5df4c4: r0 = ReturnAsyncNotFuture()
    //     0x5df4c4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5df4c8: sub             SP, fp, #0xb8
    // 0x5df4cc: r1 = <EventModel>
    //     0x5df4cc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d80] TypeArguments: <EventModel>
    //     0x5df4d0: ldr             x1, [x1, #0xd80]
    // 0x5df4d4: r2 = 0
    //     0x5df4d4: mov             x2, #0
    // 0x5df4d8: r0 = _GrowableList()
    //     0x5df4d8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5df4dc: r0 = ReturnAsyncNotFuture()
    //     0x5df4dc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5df4e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df4e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df4e4: b               #0x5df408
  }
  get _ eventsCollection(/* No info */) {
    // ** addr: 0x5df4e8, size: 0x40
    // 0x5df4e8: EnterFrame
    //     0x5df4e8: stp             fp, lr, [SP, #-0x10]!
    //     0x5df4ec: mov             fp, SP
    // 0x5df4f0: CheckStackOverflow
    //     0x5df4f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df4f4: cmp             SP, x16
    //     0x5df4f8: b.ls            #0x5df520
    // 0x5df4fc: LoadField: r0 = r1->field_7
    //     0x5df4fc: ldur            w0, [x1, #7]
    // 0x5df500: DecompressPointer r0
    //     0x5df500: add             x0, x0, HEAP, lsl #32
    // 0x5df504: mov             x1, x0
    // 0x5df508: r2 = "events"
    //     0x5df508: add             x2, PP, #0x15, lsl #12  ; [pp+0x15130] "events"
    //     0x5df50c: ldr             x2, [x2, #0x130]
    // 0x5df510: r0 = collection()
    //     0x5df510: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5df514: LeaveFrame
    //     0x5df514: mov             SP, fp
    //     0x5df518: ldp             fp, lr, [SP], #0x10
    // 0x5df51c: ret
    //     0x5df51c: ret             
    // 0x5df520: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df520: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df524: b               #0x5df4fc
  }
  _ _formatDateToYMD(/* No info */) {
    // ** addr: 0x5df528, size: 0x20c
    // 0x5df528: EnterFrame
    //     0x5df528: stp             fp, lr, [SP, #-0x10]!
    //     0x5df52c: mov             fp, SP
    // 0x5df530: AllocStack(0x20)
    //     0x5df530: sub             SP, SP, #0x20
    // 0x5df534: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x5df534: mov             x0, x2
    //     0x5df538: stur            x2, [fp, #-8]
    // 0x5df53c: CheckStackOverflow
    //     0x5df53c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df540: cmp             SP, x16
    //     0x5df544: b.ls            #0x5df720
    // 0x5df548: mov             x1, x0
    // 0x5df54c: r0 = _parts()
    //     0x5df54c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5df550: mov             x2, x0
    // 0x5df554: LoadField: r0 = r2->field_b
    //     0x5df554: ldur            w0, [x2, #0xb]
    // 0x5df558: r1 = LoadInt32Instr(r0)
    //     0x5df558: sbfx            x1, x0, #1, #0x1f
    // 0x5df55c: mov             x0, x1
    // 0x5df560: r1 = 8
    //     0x5df560: mov             x1, #8
    // 0x5df564: cmp             x1, x0
    // 0x5df568: b.hs            #0x5df728
    // 0x5df56c: LoadField: r0 = r2->field_2f
    //     0x5df56c: ldur            w0, [x2, #0x2f]
    // 0x5df570: DecompressPointer r0
    //     0x5df570: add             x0, x0, HEAP, lsl #32
    // 0x5df574: r1 = 60
    //     0x5df574: mov             x1, #0x3c
    // 0x5df578: branchIfSmi(r0, 0x5df584)
    //     0x5df578: tbz             w0, #0, #0x5df584
    // 0x5df57c: r1 = LoadClassIdInstr(r0)
    //     0x5df57c: ldur            x1, [x0, #-1]
    //     0x5df580: ubfx            x1, x1, #0xc, #0x14
    // 0x5df584: str             x0, [SP]
    // 0x5df588: mov             x0, x1
    // 0x5df58c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5df58c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5df590: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5df590: mov             x17, #0x21f6
    //     0x5df594: add             lr, x0, x17
    //     0x5df598: ldr             lr, [x21, lr, lsl #3]
    //     0x5df59c: blr             lr
    // 0x5df5a0: r1 = LoadClassIdInstr(r0)
    //     0x5df5a0: ldur            x1, [x0, #-1]
    //     0x5df5a4: ubfx            x1, x1, #0xc, #0x14
    // 0x5df5a8: mov             x16, x0
    // 0x5df5ac: mov             x0, x1
    // 0x5df5b0: mov             x1, x16
    // 0x5df5b4: r2 = 4
    //     0x5df5b4: mov             x2, #4
    // 0x5df5b8: r3 = "0"
    //     0x5df5b8: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5df5bc: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5df5bc: sub             lr, x0, #0xffc
    //     0x5df5c0: ldr             lr, [x21, lr, lsl #3]
    //     0x5df5c4: blr             lr
    // 0x5df5c8: ldur            x1, [fp, #-8]
    // 0x5df5cc: stur            x0, [fp, #-0x10]
    // 0x5df5d0: r0 = _parts()
    //     0x5df5d0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5df5d4: mov             x2, x0
    // 0x5df5d8: LoadField: r0 = r2->field_b
    //     0x5df5d8: ldur            w0, [x2, #0xb]
    // 0x5df5dc: r1 = LoadInt32Instr(r0)
    //     0x5df5dc: sbfx            x1, x0, #1, #0x1f
    // 0x5df5e0: mov             x0, x1
    // 0x5df5e4: r1 = 7
    //     0x5df5e4: mov             x1, #7
    // 0x5df5e8: cmp             x1, x0
    // 0x5df5ec: b.hs            #0x5df72c
    // 0x5df5f0: LoadField: r0 = r2->field_2b
    //     0x5df5f0: ldur            w0, [x2, #0x2b]
    // 0x5df5f4: DecompressPointer r0
    //     0x5df5f4: add             x0, x0, HEAP, lsl #32
    // 0x5df5f8: r1 = 60
    //     0x5df5f8: mov             x1, #0x3c
    // 0x5df5fc: branchIfSmi(r0, 0x5df608)
    //     0x5df5fc: tbz             w0, #0, #0x5df608
    // 0x5df600: r1 = LoadClassIdInstr(r0)
    //     0x5df600: ldur            x1, [x0, #-1]
    //     0x5df604: ubfx            x1, x1, #0xc, #0x14
    // 0x5df608: str             x0, [SP]
    // 0x5df60c: mov             x0, x1
    // 0x5df610: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5df610: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5df614: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5df614: mov             x17, #0x21f6
    //     0x5df618: add             lr, x0, x17
    //     0x5df61c: ldr             lr, [x21, lr, lsl #3]
    //     0x5df620: blr             lr
    // 0x5df624: r1 = LoadClassIdInstr(r0)
    //     0x5df624: ldur            x1, [x0, #-1]
    //     0x5df628: ubfx            x1, x1, #0xc, #0x14
    // 0x5df62c: mov             x16, x0
    // 0x5df630: mov             x0, x1
    // 0x5df634: mov             x1, x16
    // 0x5df638: r2 = 2
    //     0x5df638: mov             x2, #2
    // 0x5df63c: r3 = "0"
    //     0x5df63c: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5df640: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5df640: sub             lr, x0, #0xffc
    //     0x5df644: ldr             lr, [x21, lr, lsl #3]
    //     0x5df648: blr             lr
    // 0x5df64c: ldur            x1, [fp, #-8]
    // 0x5df650: stur            x0, [fp, #-8]
    // 0x5df654: r0 = _parts()
    //     0x5df654: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5df658: mov             x2, x0
    // 0x5df65c: LoadField: r0 = r2->field_b
    //     0x5df65c: ldur            w0, [x2, #0xb]
    // 0x5df660: r1 = LoadInt32Instr(r0)
    //     0x5df660: sbfx            x1, x0, #1, #0x1f
    // 0x5df664: mov             x0, x1
    // 0x5df668: r1 = 5
    //     0x5df668: mov             x1, #5
    // 0x5df66c: cmp             x1, x0
    // 0x5df670: b.hs            #0x5df730
    // 0x5df674: LoadField: r0 = r2->field_23
    //     0x5df674: ldur            w0, [x2, #0x23]
    // 0x5df678: DecompressPointer r0
    //     0x5df678: add             x0, x0, HEAP, lsl #32
    // 0x5df67c: r1 = 60
    //     0x5df67c: mov             x1, #0x3c
    // 0x5df680: branchIfSmi(r0, 0x5df68c)
    //     0x5df680: tbz             w0, #0, #0x5df68c
    // 0x5df684: r1 = LoadClassIdInstr(r0)
    //     0x5df684: ldur            x1, [x0, #-1]
    //     0x5df688: ubfx            x1, x1, #0xc, #0x14
    // 0x5df68c: str             x0, [SP]
    // 0x5df690: mov             x0, x1
    // 0x5df694: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5df694: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5df698: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5df698: mov             x17, #0x21f6
    //     0x5df69c: add             lr, x0, x17
    //     0x5df6a0: ldr             lr, [x21, lr, lsl #3]
    //     0x5df6a4: blr             lr
    // 0x5df6a8: r1 = LoadClassIdInstr(r0)
    //     0x5df6a8: ldur            x1, [x0, #-1]
    //     0x5df6ac: ubfx            x1, x1, #0xc, #0x14
    // 0x5df6b0: mov             x16, x0
    // 0x5df6b4: mov             x0, x1
    // 0x5df6b8: mov             x1, x16
    // 0x5df6bc: r2 = 2
    //     0x5df6bc: mov             x2, #2
    // 0x5df6c0: r3 = "0"
    //     0x5df6c0: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5df6c4: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5df6c4: sub             lr, x0, #0xffc
    //     0x5df6c8: ldr             lr, [x21, lr, lsl #3]
    //     0x5df6cc: blr             lr
    // 0x5df6d0: r1 = Null
    //     0x5df6d0: mov             x1, NULL
    // 0x5df6d4: r2 = 10
    //     0x5df6d4: mov             x2, #0xa
    // 0x5df6d8: stur            x0, [fp, #-0x18]
    // 0x5df6dc: r0 = AllocateArray()
    //     0x5df6dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5df6e0: mov             x1, x0
    // 0x5df6e4: ldur            x0, [fp, #-0x10]
    // 0x5df6e8: StoreField: r1->field_f = r0
    //     0x5df6e8: stur            w0, [x1, #0xf]
    // 0x5df6ec: r16 = "-"
    //     0x5df6ec: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x5df6f0: StoreField: r1->field_13 = r16
    //     0x5df6f0: stur            w16, [x1, #0x13]
    // 0x5df6f4: ldur            x0, [fp, #-8]
    // 0x5df6f8: ArrayStore: r1[0] = r0  ; List_4
    //     0x5df6f8: stur            w0, [x1, #0x17]
    // 0x5df6fc: r16 = "-"
    //     0x5df6fc: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x5df700: StoreField: r1->field_1b = r16
    //     0x5df700: stur            w16, [x1, #0x1b]
    // 0x5df704: ldur            x0, [fp, #-0x18]
    // 0x5df708: StoreField: r1->field_1f = r0
    //     0x5df708: stur            w0, [x1, #0x1f]
    // 0x5df70c: str             x1, [SP]
    // 0x5df710: r0 = _interpolate()
    //     0x5df710: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5df714: LeaveFrame
    //     0x5df714: mov             SP, fp
    //     0x5df718: ldp             fp, lr, [SP], #0x10
    // 0x5df71c: ret
    //     0x5df71c: ret             
    // 0x5df720: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df720: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df724: b               #0x5df548
    // 0x5df728: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5df728: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5df72c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5df72c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5df730: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5df730: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] EventModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5df734, size: 0x34
    // 0x5df734: EnterFrame
    //     0x5df734: stp             fp, lr, [SP, #-0x10]!
    //     0x5df738: mov             fp, SP
    // 0x5df73c: CheckStackOverflow
    //     0x5df73c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df740: cmp             SP, x16
    //     0x5df744: b.ls            #0x5df760
    // 0x5df748: ldr             x2, [fp, #0x10]
    // 0x5df74c: r1 = Null
    //     0x5df74c: mov             x1, NULL
    // 0x5df750: r0 = EventModel.fromFirestore()
    //     0x5df750: bl              #0x5df768  ; [package:umrem_demo/features/admin/models/event_model.dart] EventModel::EventModel.fromFirestore
    // 0x5df754: LeaveFrame
    //     0x5df754: mov             SP, fp
    //     0x5df758: ldp             fp, lr, [SP], #0x10
    // 0x5df75c: ret
    //     0x5df75c: ret             
    // 0x5df760: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df760: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df764: b               #0x5df748
  }
  _ getEventsByAgency(/* No info */) async {
    // ** addr: 0x5dfca0, size: 0x13c
    // 0x5dfca0: EnterFrame
    //     0x5dfca0: stp             fp, lr, [SP, #-0x10]!
    //     0x5dfca4: mov             fp, SP
    // 0x5dfca8: AllocStack(0xb8)
    //     0x5dfca8: sub             SP, SP, #0xb8
    // 0x5dfcac: SetupParameters(dynamic _ /* r2 => r3, fp-0x78 */, dynamic _ /* r3 => r2, fp-0x80 */)
    //     0x5dfcac: stur            NULL, [fp, #-8]
    //     0x5dfcb0: stur            x2, [fp, #-0x78]
    //     0x5dfcb4: mov             x16, x3
    //     0x5dfcb8: mov             x3, x2
    //     0x5dfcbc: mov             x2, x16
    //     0x5dfcc0: stur            x1, [fp, #-0x70]
    //     0x5dfcc4: stur            x2, [fp, #-0x80]
    // 0x5dfcc8: CheckStackOverflow
    //     0x5dfcc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dfccc: cmp             SP, x16
    //     0x5dfcd0: b.ls            #0x5dfdd4
    // 0x5dfcd4: InitAsync() -> Future<List<EventModel>>
    //     0x5dfcd4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ff0] TypeArguments: <List<EventModel>>
    //     0x5dfcd8: ldr             x0, [x0, #0xff0]
    //     0x5dfcdc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5dfce0: ldur            x0, [fp, #-0x70]
    // 0x5dfce4: mov             x1, x0
    // 0x5dfce8: ldur            x2, [fp, #-0x80]
    // 0x5dfcec: r0 = _formatDateToYMD()
    //     0x5dfcec: bl              #0x5df528  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_formatDateToYMD
    // 0x5dfcf0: mov             x3, x0
    // 0x5dfcf4: ldur            x0, [fp, #-0x70]
    // 0x5dfcf8: stur            x3, [fp, #-0x88]
    // 0x5dfcfc: LoadField: r1 = r0->field_7
    //     0x5dfcfc: ldur            w1, [x0, #7]
    // 0x5dfd00: DecompressPointer r1
    //     0x5dfd00: add             x1, x1, HEAP, lsl #32
    // 0x5dfd04: r2 = "events"
    //     0x5dfd04: add             x2, PP, #0x15, lsl #12  ; [pp+0x15130] "events"
    //     0x5dfd08: ldr             x2, [x2, #0x130]
    // 0x5dfd0c: r0 = collection()
    //     0x5dfd0c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5dfd10: mov             x1, x0
    // 0x5dfd14: ldur            x3, [fp, #-0x78]
    // 0x5dfd18: r2 = "agency_id"
    //     0x5dfd18: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5dfd1c: ldr             x2, [x2, #0x40]
    // 0x5dfd20: r0 = where()
    //     0x5dfd20: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5dfd24: mov             x1, x0
    // 0x5dfd28: ldur            x3, [fp, #-0x88]
    // 0x5dfd2c: r2 = "date"
    //     0x5dfd2c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5dfd30: ldr             x2, [x2, #0xff8]
    // 0x5dfd34: r0 = where()
    //     0x5dfd34: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5dfd38: mov             x1, x0
    // 0x5dfd3c: r2 = "time"
    //     0x5dfd3c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15000] "time"
    //     0x5dfd40: ldr             x2, [x2]
    // 0x5dfd44: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5dfd44: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5dfd48: r0 = orderBy()
    //     0x5dfd48: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5dfd4c: mov             x1, x0
    // 0x5dfd50: r0 = get()
    //     0x5dfd50: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5dfd54: mov             x1, x0
    // 0x5dfd58: stur            x1, [fp, #-0x90]
    // 0x5dfd5c: r0 = Await()
    //     0x5dfd5c: bl              #0x3dd188  ; AwaitStub
    // 0x5dfd60: mov             x1, x0
    // 0x5dfd64: stur            x0, [fp, #-0x90]
    // 0x5dfd68: r0 = docs()
    //     0x5dfd68: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5dfd6c: r1 = Function '<anonymous closure>':.
    //     0x5dfd6c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15138] AnonymousClosure: (0x5df734), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getEventsByDate (0x5df3e4)
    //     0x5dfd70: ldr             x1, [x1, #0x138]
    // 0x5dfd74: r2 = Null
    //     0x5dfd74: mov             x2, NULL
    // 0x5dfd78: stur            x0, [fp, #-0x98]
    // 0x5dfd7c: r0 = AllocateClosure()
    //     0x5dfd7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5dfd80: r16 = <EventModel>
    //     0x5dfd80: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d80] TypeArguments: <EventModel>
    //     0x5dfd84: ldr             x16, [x16, #0xd80]
    // 0x5dfd88: ldur            lr, [fp, #-0x98]
    // 0x5dfd8c: stp             lr, x16, [SP, #8]
    // 0x5dfd90: str             x0, [SP]
    // 0x5dfd94: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5dfd94: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5dfd98: r0 = map()
    //     0x5dfd98: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5dfd9c: stur            x0, [fp, #-0xa0]
    // 0x5dfda0: LoadField: r3 = r0->field_7
    //     0x5dfda0: ldur            w3, [x0, #7]
    // 0x5dfda4: DecompressPointer r3
    //     0x5dfda4: add             x3, x3, HEAP, lsl #32
    // 0x5dfda8: mov             x1, x3
    // 0x5dfdac: mov             x2, x0
    // 0x5dfdb0: stur            x3, [fp, #-0x98]
    // 0x5dfdb4: r0 = _GrowableList.of()
    //     0x5dfdb4: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5dfdb8: r0 = ReturnAsyncNotFuture()
    //     0x5dfdb8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5dfdbc: sub             SP, fp, #0xb8
    // 0x5dfdc0: r1 = <EventModel>
    //     0x5dfdc0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d80] TypeArguments: <EventModel>
    //     0x5dfdc4: ldr             x1, [x1, #0xd80]
    // 0x5dfdc8: r2 = 0
    //     0x5dfdc8: mov             x2, #0
    // 0x5dfdcc: r0 = _GrowableList()
    //     0x5dfdcc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5dfdd0: r0 = ReturnAsyncNotFuture()
    //     0x5dfdd0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5dfdd4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dfdd4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dfdd8: b               #0x5dfcd4
  }
  _ getCurrencies(/* No info */) async {
    // ** addr: 0x5e049c, size: 0x144
    // 0x5e049c: EnterFrame
    //     0x5e049c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e04a0: mov             fp, SP
    // 0x5e04a4: AllocStack(0x98)
    //     0x5e04a4: sub             SP, SP, #0x98
    // 0x5e04a8: SetupParameters(FirestoreService this /* r1 => r1, fp-0x68 */)
    //     0x5e04a8: stur            NULL, [fp, #-8]
    //     0x5e04ac: stur            x1, [fp, #-0x68]
    // 0x5e04b0: CheckStackOverflow
    //     0x5e04b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e04b4: cmp             SP, x16
    //     0x5e04b8: b.ls            #0x5e05d8
    // 0x5e04bc: InitAsync() -> Future<List<CurrencyModel>>
    //     0x5e04bc: add             x0, PP, #0x18, lsl #12  ; [pp+0x18e20] TypeArguments: <List<CurrencyModel>>
    //     0x5e04c0: ldr             x0, [x0, #0xe20]
    //     0x5e04c4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e04c8: ldur            x1, [fp, #-0x68]
    // 0x5e04cc: r0 = _getCached()
    //     0x5e04cc: bl              #0x5e0768  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_getCached
    // 0x5e04d0: mov             x3, x0
    // 0x5e04d4: stur            x3, [fp, #-0x70]
    // 0x5e04d8: cmp             w3, NULL
    // 0x5e04dc: b.eq            #0x5e0514
    // 0x5e04e0: mov             x0, x3
    // 0x5e04e4: r2 = Null
    //     0x5e04e4: mov             x2, NULL
    // 0x5e04e8: r1 = Null
    //     0x5e04e8: mov             x1, NULL
    // 0x5e04ec: r8 = Iterable
    //     0x5e04ec: ldr             x8, [PP, #0xda0]  ; [pp+0xda0] Type: Iterable
    // 0x5e04f0: r3 = Null
    //     0x5e04f0: add             x3, PP, #0x18, lsl #12  ; [pp+0x18e28] Null
    //     0x5e04f4: ldr             x3, [x3, #0xe28]
    // 0x5e04f8: r0 = Iterable()
    //     0x5e04f8: bl              #0x3d59fc  ; IsType_Iterable_Stub
    // 0x5e04fc: ldur            x2, [fp, #-0x70]
    // 0x5e0500: r1 = <CurrencyModel>
    //     0x5e0500: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5e0504: ldr             x1, [x1, #0xd88]
    // 0x5e0508: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e0508: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e050c: r0 = List.from()
    //     0x5e050c: bl              #0x490278  ; [dart:core] List::List.from
    // 0x5e0510: r0 = ReturnAsyncNotFuture()
    //     0x5e0510: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e0514: ldur            x0, [fp, #-0x68]
    // 0x5e0518: LoadField: r1 = r0->field_7
    //     0x5e0518: ldur            w1, [x0, #7]
    // 0x5e051c: DecompressPointer r1
    //     0x5e051c: add             x1, x1, HEAP, lsl #32
    // 0x5e0520: r2 = "currencies"
    //     0x5e0520: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e0524: ldr             x2, [x2, #0xe18]
    // 0x5e0528: r0 = collection()
    //     0x5e0528: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e052c: mov             x1, x0
    // 0x5e0530: r2 = "name"
    //     0x5e0530: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5e0534: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e0534: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e0538: r0 = orderBy()
    //     0x5e0538: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5e053c: mov             x1, x0
    // 0x5e0540: r0 = get()
    //     0x5e0540: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5e0544: mov             x1, x0
    // 0x5e0548: stur            x1, [fp, #-0x70]
    // 0x5e054c: r0 = Await()
    //     0x5e054c: bl              #0x3dd188  ; AwaitStub
    // 0x5e0550: mov             x1, x0
    // 0x5e0554: stur            x0, [fp, #-0x70]
    // 0x5e0558: r0 = docs()
    //     0x5e0558: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5e055c: r1 = Function '<anonymous closure>':.
    //     0x5e055c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18e38] AnonymousClosure: (0x5e09d0), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrencies (0x5e049c)
    //     0x5e0560: ldr             x1, [x1, #0xe38]
    // 0x5e0564: r2 = Null
    //     0x5e0564: mov             x2, NULL
    // 0x5e0568: stur            x0, [fp, #-0x78]
    // 0x5e056c: r0 = AllocateClosure()
    //     0x5e056c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e0570: r16 = <CurrencyModel>
    //     0x5e0570: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5e0574: ldr             x16, [x16, #0xd88]
    // 0x5e0578: ldur            lr, [fp, #-0x78]
    // 0x5e057c: stp             lr, x16, [SP, #8]
    // 0x5e0580: str             x0, [SP]
    // 0x5e0584: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5e0584: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5e0588: r0 = map()
    //     0x5e0588: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5e058c: stur            x0, [fp, #-0x80]
    // 0x5e0590: LoadField: r3 = r0->field_7
    //     0x5e0590: ldur            w3, [x0, #7]
    // 0x5e0594: DecompressPointer r3
    //     0x5e0594: add             x3, x3, HEAP, lsl #32
    // 0x5e0598: mov             x1, x3
    // 0x5e059c: mov             x2, x0
    // 0x5e05a0: stur            x3, [fp, #-0x78]
    // 0x5e05a4: r0 = _GrowableList.of()
    //     0x5e05a4: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5e05a8: ldur            x1, [fp, #-0x68]
    // 0x5e05ac: mov             x2, x0
    // 0x5e05b0: stur            x0, [fp, #-0x78]
    // 0x5e05b4: r0 = _setCache()
    //     0x5e05b4: bl              #0x5e0620  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_setCache
    // 0x5e05b8: ldur            x0, [fp, #-0x78]
    // 0x5e05bc: r0 = ReturnAsyncNotFuture()
    //     0x5e05bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e05c0: sub             SP, fp, #0x98
    // 0x5e05c4: r1 = <CurrencyModel>
    //     0x5e05c4: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5e05c8: ldr             x1, [x1, #0xd88]
    // 0x5e05cc: r2 = 0
    //     0x5e05cc: mov             x2, #0
    // 0x5e05d0: r0 = _GrowableList()
    //     0x5e05d0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5e05d4: r0 = ReturnAsyncNotFuture()
    //     0x5e05d4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e05d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e05d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e05dc: b               #0x5e04bc
  }
  get _ currenciesCollection(/* No info */) {
    // ** addr: 0x5e05e0, size: 0x40
    // 0x5e05e0: EnterFrame
    //     0x5e05e0: stp             fp, lr, [SP, #-0x10]!
    //     0x5e05e4: mov             fp, SP
    // 0x5e05e8: CheckStackOverflow
    //     0x5e05e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e05ec: cmp             SP, x16
    //     0x5e05f0: b.ls            #0x5e0618
    // 0x5e05f4: LoadField: r0 = r1->field_7
    //     0x5e05f4: ldur            w0, [x1, #7]
    // 0x5e05f8: DecompressPointer r0
    //     0x5e05f8: add             x0, x0, HEAP, lsl #32
    // 0x5e05fc: mov             x1, x0
    // 0x5e0600: r2 = "currencies"
    //     0x5e0600: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e0604: ldr             x2, [x2, #0xe18]
    // 0x5e0608: r0 = collection()
    //     0x5e0608: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e060c: LeaveFrame
    //     0x5e060c: mov             SP, fp
    //     0x5e0610: ldp             fp, lr, [SP], #0x10
    // 0x5e0614: ret
    //     0x5e0614: ret             
    // 0x5e0618: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0618: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e061c: b               #0x5e05f4
  }
  _ _setCache(/* No info */) {
    // ** addr: 0x5e0620, size: 0xcc
    // 0x5e0620: EnterFrame
    //     0x5e0620: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0624: mov             fp, SP
    // 0x5e0628: AllocStack(0x10)
    //     0x5e0628: sub             SP, SP, #0x10
    // 0x5e062c: SetupParameters(dynamic _ /* r2 => r3, fp-0x8 */)
    //     0x5e062c: mov             x3, x2
    //     0x5e0630: stur            x2, [fp, #-8]
    // 0x5e0634: CheckStackOverflow
    //     0x5e0634: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0638: cmp             SP, x16
    //     0x5e063c: b.ls            #0x5e06e4
    // 0x5e0640: r0 = InitLateStaticField(0xfd8) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cache
    //     0x5e0640: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e0644: ldr             x0, [x0, #0x1fb0]
    //     0x5e0648: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e064c: cmp             w0, w16
    //     0x5e0650: b.ne            #0x5e0660
    //     0x5e0654: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea0] Field <FirestoreService._cache@948068790>: static late final (offset: 0xfd8)
    //     0x5e0658: ldr             x2, [x2, #0xea0]
    //     0x5e065c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e0660: mov             x1, x0
    // 0x5e0664: ldur            x3, [fp, #-8]
    // 0x5e0668: r2 = "currencies"
    //     0x5e0668: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e066c: ldr             x2, [x2, #0xe18]
    // 0x5e0670: r0 = []=()
    //     0x5e0670: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e0674: r0 = InitLateStaticField(0xfdc) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cacheTimestamp
    //     0x5e0674: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e0678: ldr             x0, [x0, #0x1fb8]
    //     0x5e067c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e0680: cmp             w0, w16
    //     0x5e0684: b.ne            #0x5e0694
    //     0x5e0688: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea8] Field <FirestoreService._cacheTimestamp@948068790>: static late final (offset: 0xfdc)
    //     0x5e068c: ldr             x2, [x2, #0xea8]
    //     0x5e0690: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e0694: stur            x0, [fp, #-8]
    // 0x5e0698: r0 = DateTime()
    //     0x5e0698: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e069c: mov             x1, x0
    // 0x5e06a0: r0 = false
    //     0x5e06a0: add             x0, NULL, #0x30  ; false
    // 0x5e06a4: stur            x1, [fp, #-0x10]
    // 0x5e06a8: StoreField: r1->field_7 = r0
    //     0x5e06a8: stur            w0, [x1, #7]
    // 0x5e06ac: r0 = _getCurrentMicros()
    //     0x5e06ac: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5e06b0: r1 = LoadInt32Instr(r0)
    //     0x5e06b0: sbfx            x1, x0, #1, #0x1f
    //     0x5e06b4: tbz             w0, #0, #0x5e06bc
    //     0x5e06b8: ldur            x1, [x0, #7]
    // 0x5e06bc: ldur            x3, [fp, #-0x10]
    // 0x5e06c0: StoreField: r3->field_b = r1
    //     0x5e06c0: stur            x1, [x3, #0xb]
    // 0x5e06c4: ldur            x1, [fp, #-8]
    // 0x5e06c8: r2 = "currencies"
    //     0x5e06c8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e06cc: ldr             x2, [x2, #0xe18]
    // 0x5e06d0: r0 = []=()
    //     0x5e06d0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e06d4: r0 = Null
    //     0x5e06d4: mov             x0, NULL
    // 0x5e06d8: LeaveFrame
    //     0x5e06d8: mov             SP, fp
    //     0x5e06dc: ldp             fp, lr, [SP], #0x10
    // 0x5e06e0: ret
    //     0x5e06e0: ret             
    // 0x5e06e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e06e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e06e8: b               #0x5e0640
  }
  static Map<String, DateTime> _cacheTimestamp() {
    // ** addr: 0x5e06ec, size: 0x40
    // 0x5e06ec: EnterFrame
    //     0x5e06ec: stp             fp, lr, [SP, #-0x10]!
    //     0x5e06f0: mov             fp, SP
    // 0x5e06f4: AllocStack(0x10)
    //     0x5e06f4: sub             SP, SP, #0x10
    // 0x5e06f8: CheckStackOverflow
    //     0x5e06f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e06fc: cmp             SP, x16
    //     0x5e0700: b.ls            #0x5e0724
    // 0x5e0704: r16 = <String, DateTime>
    //     0x5e0704: add             x16, PP, #0x18, lsl #12  ; [pp+0x18eb0] TypeArguments: <String, DateTime>
    //     0x5e0708: ldr             x16, [x16, #0xeb0]
    // 0x5e070c: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5e0710: stp             lr, x16, [SP]
    // 0x5e0714: r0 = Map._fromLiteral()
    //     0x5e0714: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5e0718: LeaveFrame
    //     0x5e0718: mov             SP, fp
    //     0x5e071c: ldp             fp, lr, [SP], #0x10
    // 0x5e0720: ret
    //     0x5e0720: ret             
    // 0x5e0724: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0724: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0728: b               #0x5e0704
  }
  static Map<String, dynamic> _cache() {
    // ** addr: 0x5e072c, size: 0x3c
    // 0x5e072c: EnterFrame
    //     0x5e072c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0730: mov             fp, SP
    // 0x5e0734: AllocStack(0x10)
    //     0x5e0734: sub             SP, SP, #0x10
    // 0x5e0738: CheckStackOverflow
    //     0x5e0738: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e073c: cmp             SP, x16
    //     0x5e0740: b.ls            #0x5e0760
    // 0x5e0744: r16 = <String, dynamic>
    //     0x5e0744: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x5e0748: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5e074c: stp             lr, x16, [SP]
    // 0x5e0750: r0 = Map._fromLiteral()
    //     0x5e0750: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5e0754: LeaveFrame
    //     0x5e0754: mov             SP, fp
    //     0x5e0758: ldp             fp, lr, [SP], #0x10
    // 0x5e075c: ret
    //     0x5e075c: ret             
    // 0x5e0760: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0760: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0764: b               #0x5e0744
  }
  _ _getCached(/* No info */) {
    // ** addr: 0x5e0768, size: 0xfc
    // 0x5e0768: EnterFrame
    //     0x5e0768: stp             fp, lr, [SP, #-0x10]!
    //     0x5e076c: mov             fp, SP
    // 0x5e0770: AllocStack(0x8)
    //     0x5e0770: sub             SP, SP, #8
    // 0x5e0774: CheckStackOverflow
    //     0x5e0774: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0778: cmp             SP, x16
    //     0x5e077c: b.ls            #0x5e085c
    // 0x5e0780: r0 = _isCacheValid()
    //     0x5e0780: bl              #0x5e0864  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_isCacheValid
    // 0x5e0784: tbnz            w0, #4, #0x5e07ec
    // 0x5e0788: r0 = InitLateStaticField(0xfd8) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cache
    //     0x5e0788: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e078c: ldr             x0, [x0, #0x1fb0]
    //     0x5e0790: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e0794: cmp             w0, w16
    //     0x5e0798: b.ne            #0x5e07a8
    //     0x5e079c: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea0] Field <FirestoreService._cache@948068790>: static late final (offset: 0xfd8)
    //     0x5e07a0: ldr             x2, [x2, #0xea0]
    //     0x5e07a4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e07a8: mov             x1, x0
    // 0x5e07ac: r2 = "currencies"
    //     0x5e07ac: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e07b0: ldr             x2, [x2, #0xe18]
    // 0x5e07b4: stur            x0, [fp, #-8]
    // 0x5e07b8: r0 = _getValueOrData()
    //     0x5e07b8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e07bc: mov             x1, x0
    // 0x5e07c0: ldur            x0, [fp, #-8]
    // 0x5e07c4: LoadField: r2 = r0->field_f
    //     0x5e07c4: ldur            w2, [x0, #0xf]
    // 0x5e07c8: DecompressPointer r2
    //     0x5e07c8: add             x2, x2, HEAP, lsl #32
    // 0x5e07cc: cmp             w2, w1
    // 0x5e07d0: b.ne            #0x5e07dc
    // 0x5e07d4: r0 = Null
    //     0x5e07d4: mov             x0, NULL
    // 0x5e07d8: b               #0x5e07e0
    // 0x5e07dc: mov             x0, x1
    // 0x5e07e0: LeaveFrame
    //     0x5e07e0: mov             SP, fp
    //     0x5e07e4: ldp             fp, lr, [SP], #0x10
    // 0x5e07e8: ret
    //     0x5e07e8: ret             
    // 0x5e07ec: r0 = InitLateStaticField(0xfd8) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cache
    //     0x5e07ec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e07f0: ldr             x0, [x0, #0x1fb0]
    //     0x5e07f4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e07f8: cmp             w0, w16
    //     0x5e07fc: b.ne            #0x5e080c
    //     0x5e0800: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea0] Field <FirestoreService._cache@948068790>: static late final (offset: 0xfd8)
    //     0x5e0804: ldr             x2, [x2, #0xea0]
    //     0x5e0808: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e080c: mov             x1, x0
    // 0x5e0810: r2 = "currencies"
    //     0x5e0810: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e0814: ldr             x2, [x2, #0xe18]
    // 0x5e0818: r0 = remove()
    //     0x5e0818: bl              #0x8b20f0  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::remove
    // 0x5e081c: r0 = InitLateStaticField(0xfdc) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cacheTimestamp
    //     0x5e081c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e0820: ldr             x0, [x0, #0x1fb8]
    //     0x5e0824: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e0828: cmp             w0, w16
    //     0x5e082c: b.ne            #0x5e083c
    //     0x5e0830: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea8] Field <FirestoreService._cacheTimestamp@948068790>: static late final (offset: 0xfdc)
    //     0x5e0834: ldr             x2, [x2, #0xea8]
    //     0x5e0838: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e083c: mov             x1, x0
    // 0x5e0840: r2 = "currencies"
    //     0x5e0840: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e0844: ldr             x2, [x2, #0xe18]
    // 0x5e0848: r0 = remove()
    //     0x5e0848: bl              #0x8b20f0  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::remove
    // 0x5e084c: r0 = Null
    //     0x5e084c: mov             x0, NULL
    // 0x5e0850: LeaveFrame
    //     0x5e0850: mov             SP, fp
    //     0x5e0854: ldp             fp, lr, [SP], #0x10
    // 0x5e0858: ret
    //     0x5e0858: ret             
    // 0x5e085c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e085c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0860: b               #0x5e0780
  }
  _ _isCacheValid(/* No info */) {
    // ** addr: 0x5e0864, size: 0x138
    // 0x5e0864: EnterFrame
    //     0x5e0864: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0868: mov             fp, SP
    // 0x5e086c: AllocStack(0x10)
    //     0x5e086c: sub             SP, SP, #0x10
    // 0x5e0870: CheckStackOverflow
    //     0x5e0870: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e0874: cmp             SP, x16
    //     0x5e0878: b.ls            #0x5e0994
    // 0x5e087c: r0 = InitLateStaticField(0xfd8) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cache
    //     0x5e087c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e0880: ldr             x0, [x0, #0x1fb0]
    //     0x5e0884: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e0888: cmp             w0, w16
    //     0x5e088c: b.ne            #0x5e089c
    //     0x5e0890: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea0] Field <FirestoreService._cache@948068790>: static late final (offset: 0xfd8)
    //     0x5e0894: ldr             x2, [x2, #0xea0]
    //     0x5e0898: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e089c: mov             x1, x0
    // 0x5e08a0: r2 = "currencies"
    //     0x5e08a0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e08a4: ldr             x2, [x2, #0xe18]
    // 0x5e08a8: r0 = containsKey()
    //     0x5e08a8: bl              #0x8bae24  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::containsKey
    // 0x5e08ac: tbz             w0, #4, #0x5e08c0
    // 0x5e08b0: r0 = false
    //     0x5e08b0: add             x0, NULL, #0x30  ; false
    // 0x5e08b4: LeaveFrame
    //     0x5e08b4: mov             SP, fp
    //     0x5e08b8: ldp             fp, lr, [SP], #0x10
    // 0x5e08bc: ret
    //     0x5e08bc: ret             
    // 0x5e08c0: r0 = InitLateStaticField(0xfdc) // [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_cacheTimestamp
    //     0x5e08c0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e08c4: ldr             x0, [x0, #0x1fb8]
    //     0x5e08c8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e08cc: cmp             w0, w16
    //     0x5e08d0: b.ne            #0x5e08e0
    //     0x5e08d4: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ea8] Field <FirestoreService._cacheTimestamp@948068790>: static late final (offset: 0xfdc)
    //     0x5e08d8: ldr             x2, [x2, #0xea8]
    //     0x5e08dc: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5e08e0: mov             x1, x0
    // 0x5e08e4: r2 = "currencies"
    //     0x5e08e4: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e08e8: ldr             x2, [x2, #0xe18]
    // 0x5e08ec: stur            x0, [fp, #-8]
    // 0x5e08f0: r0 = _getValueOrData()
    //     0x5e08f0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e08f4: mov             x1, x0
    // 0x5e08f8: ldur            x0, [fp, #-8]
    // 0x5e08fc: LoadField: r2 = r0->field_f
    //     0x5e08fc: ldur            w2, [x0, #0xf]
    // 0x5e0900: DecompressPointer r2
    //     0x5e0900: add             x2, x2, HEAP, lsl #32
    // 0x5e0904: cmp             w2, w1
    // 0x5e0908: b.ne            #0x5e0914
    // 0x5e090c: r2 = Null
    //     0x5e090c: mov             x2, NULL
    // 0x5e0910: b               #0x5e0918
    // 0x5e0914: mov             x2, x1
    // 0x5e0918: stur            x2, [fp, #-8]
    // 0x5e091c: cmp             w2, NULL
    // 0x5e0920: b.ne            #0x5e0934
    // 0x5e0924: r0 = false
    //     0x5e0924: add             x0, NULL, #0x30  ; false
    // 0x5e0928: LeaveFrame
    //     0x5e0928: mov             SP, fp
    //     0x5e092c: ldp             fp, lr, [SP], #0x10
    // 0x5e0930: ret
    //     0x5e0930: ret             
    // 0x5e0934: r0 = DateTime()
    //     0x5e0934: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e0938: mov             x1, x0
    // 0x5e093c: r0 = false
    //     0x5e093c: add             x0, NULL, #0x30  ; false
    // 0x5e0940: stur            x1, [fp, #-0x10]
    // 0x5e0944: StoreField: r1->field_7 = r0
    //     0x5e0944: stur            w0, [x1, #7]
    // 0x5e0948: r0 = _getCurrentMicros()
    //     0x5e0948: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5e094c: r1 = LoadInt32Instr(r0)
    //     0x5e094c: sbfx            x1, x0, #1, #0x1f
    //     0x5e0950: tbz             w0, #0, #0x5e0958
    //     0x5e0954: ldur            x1, [x0, #7]
    // 0x5e0958: ldur            x0, [fp, #-0x10]
    // 0x5e095c: StoreField: r0->field_b = r1
    //     0x5e095c: stur            x1, [x0, #0xb]
    // 0x5e0960: mov             x1, x0
    // 0x5e0964: ldur            x2, [fp, #-8]
    // 0x5e0968: r0 = difference()
    //     0x5e0968: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x5e096c: LoadField: r1 = r0->field_7
    //     0x5e096c: ldur            x1, [x0, #7]
    // 0x5e0970: r17 = 300000000
    //     0x5e0970: mov             x17, #0xa300
    //     0x5e0974: movk            x17, #0x11e1, lsl #16
    // 0x5e0978: cmp             x1, x17
    // 0x5e097c: r16 = true
    //     0x5e097c: add             x16, NULL, #0x20  ; true
    // 0x5e0980: r17 = false
    //     0x5e0980: add             x17, NULL, #0x30  ; false
    // 0x5e0984: csel            x0, x16, x17, lt
    // 0x5e0988: LeaveFrame
    //     0x5e0988: mov             SP, fp
    //     0x5e098c: ldp             fp, lr, [SP], #0x10
    // 0x5e0990: ret
    //     0x5e0990: ret             
    // 0x5e0994: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0994: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0998: b               #0x5e087c
  }
  [closure] CurrencyModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5e09d0, size: 0x34
    // 0x5e09d0: EnterFrame
    //     0x5e09d0: stp             fp, lr, [SP, #-0x10]!
    //     0x5e09d4: mov             fp, SP
    // 0x5e09d8: CheckStackOverflow
    //     0x5e09d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e09dc: cmp             SP, x16
    //     0x5e09e0: b.ls            #0x5e09fc
    // 0x5e09e4: ldr             x2, [fp, #0x10]
    // 0x5e09e8: r1 = Null
    //     0x5e09e8: mov             x1, NULL
    // 0x5e09ec: r0 = CurrencyModel.fromFirestore()
    //     0x5e09ec: bl              #0x5e0a04  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::CurrencyModel.fromFirestore
    // 0x5e09f0: LeaveFrame
    //     0x5e09f0: mov             SP, fp
    //     0x5e09f4: ldp             fp, lr, [SP], #0x10
    // 0x5e09f8: ret
    //     0x5e09f8: ret             
    // 0x5e09fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e09fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0a00: b               #0x5e09e4
  }
  _ getCurrenciesByAgency(/* No info */) async {
    // ** addr: 0x5e0ff8, size: 0x100
    // 0x5e0ff8: EnterFrame
    //     0x5e0ff8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e0ffc: mov             fp, SP
    // 0x5e1000: AllocStack(0x98)
    //     0x5e1000: sub             SP, SP, #0x98
    // 0x5e1004: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5e1004: stur            NULL, [fp, #-8]
    //     0x5e1008: mov             x3, x2
    //     0x5e100c: stur            x1, [fp, #-0x60]
    //     0x5e1010: stur            x2, [fp, #-0x68]
    // 0x5e1014: CheckStackOverflow
    //     0x5e1014: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1018: cmp             SP, x16
    //     0x5e101c: b.ls            #0x5e10f0
    // 0x5e1020: InitAsync() -> Future<List<CurrencyModel>>
    //     0x5e1020: add             x0, PP, #0x18, lsl #12  ; [pp+0x18e20] TypeArguments: <List<CurrencyModel>>
    //     0x5e1024: ldr             x0, [x0, #0xe20]
    //     0x5e1028: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e102c: ldur            x0, [fp, #-0x60]
    // 0x5e1030: LoadField: r1 = r0->field_7
    //     0x5e1030: ldur            w1, [x0, #7]
    // 0x5e1034: DecompressPointer r1
    //     0x5e1034: add             x1, x1, HEAP, lsl #32
    // 0x5e1038: r2 = "currencies"
    //     0x5e1038: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x5e103c: ldr             x2, [x2, #0xe18]
    // 0x5e1040: r0 = collection()
    //     0x5e1040: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e1044: mov             x1, x0
    // 0x5e1048: ldur            x3, [fp, #-0x68]
    // 0x5e104c: r2 = "agency_id"
    //     0x5e104c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5e1050: ldr             x2, [x2, #0x40]
    // 0x5e1054: r0 = where()
    //     0x5e1054: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5e1058: mov             x1, x0
    // 0x5e105c: r2 = "name"
    //     0x5e105c: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5e1060: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e1060: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e1064: r0 = orderBy()
    //     0x5e1064: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5e1068: mov             x1, x0
    // 0x5e106c: r0 = get()
    //     0x5e106c: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5e1070: mov             x1, x0
    // 0x5e1074: stur            x1, [fp, #-0x70]
    // 0x5e1078: r0 = Await()
    //     0x5e1078: bl              #0x3dd188  ; AwaitStub
    // 0x5e107c: mov             x1, x0
    // 0x5e1080: stur            x0, [fp, #-0x70]
    // 0x5e1084: r0 = docs()
    //     0x5e1084: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5e1088: r1 = Function '<anonymous closure>':.
    //     0x5e1088: add             x1, PP, #0x18, lsl #12  ; [pp+0x18eb8] AnonymousClosure: (0x5e09d0), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrencies (0x5e049c)
    //     0x5e108c: ldr             x1, [x1, #0xeb8]
    // 0x5e1090: r2 = Null
    //     0x5e1090: mov             x2, NULL
    // 0x5e1094: stur            x0, [fp, #-0x78]
    // 0x5e1098: r0 = AllocateClosure()
    //     0x5e1098: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e109c: r16 = <CurrencyModel>
    //     0x5e109c: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5e10a0: ldr             x16, [x16, #0xd88]
    // 0x5e10a4: ldur            lr, [fp, #-0x78]
    // 0x5e10a8: stp             lr, x16, [SP, #8]
    // 0x5e10ac: str             x0, [SP]
    // 0x5e10b0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5e10b0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5e10b4: r0 = map()
    //     0x5e10b4: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5e10b8: stur            x0, [fp, #-0x80]
    // 0x5e10bc: LoadField: r3 = r0->field_7
    //     0x5e10bc: ldur            w3, [x0, #7]
    // 0x5e10c0: DecompressPointer r3
    //     0x5e10c0: add             x3, x3, HEAP, lsl #32
    // 0x5e10c4: mov             x1, x3
    // 0x5e10c8: mov             x2, x0
    // 0x5e10cc: stur            x3, [fp, #-0x78]
    // 0x5e10d0: r0 = _GrowableList.of()
    //     0x5e10d0: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5e10d4: r0 = ReturnAsyncNotFuture()
    //     0x5e10d4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e10d8: sub             SP, fp, #0x98
    // 0x5e10dc: r1 = <CurrencyModel>
    //     0x5e10dc: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x5e10e0: ldr             x1, [x1, #0xd88]
    // 0x5e10e4: r2 = 0
    //     0x5e10e4: mov             x2, #0
    // 0x5e10e8: r0 = _GrowableList()
    //     0x5e10e8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5e10ec: r0 = ReturnAsyncNotFuture()
    //     0x5e10ec: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e10f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e10f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e10f4: b               #0x5e1020
  }
  _ createCurrency(/* No info */) async {
    // ** addr: 0x5e13a0, size: 0xcc
    // 0x5e13a0: EnterFrame
    //     0x5e13a0: stp             fp, lr, [SP, #-0x10]!
    //     0x5e13a4: mov             fp, SP
    // 0x5e13a8: AllocStack(0x88)
    //     0x5e13a8: sub             SP, SP, #0x88
    // 0x5e13ac: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x5e13ac: stur            NULL, [fp, #-8]
    //     0x5e13b0: stur            x1, [fp, #-0x60]
    //     0x5e13b4: mov             x16, x2
    //     0x5e13b8: mov             x2, x1
    //     0x5e13bc: mov             x1, x16
    //     0x5e13c0: stur            x1, [fp, #-0x68]
    // 0x5e13c4: CheckStackOverflow
    //     0x5e13c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e13c8: cmp             SP, x16
    //     0x5e13cc: b.ls            #0x5e1464
    // 0x5e13d0: InitAsync() -> Future<String?>
    //     0x5e13d0: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x5e13d4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e13d8: ldur            x1, [fp, #-0x60]
    // 0x5e13dc: r0 = currenciesCollection()
    //     0x5e13dc: bl              #0x5e05e0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::currenciesCollection
    // 0x5e13e0: mov             x1, x0
    // 0x5e13e4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e13e4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e13e8: r0 = doc()
    //     0x5e13e8: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5e13ec: stur            x0, [fp, #-0x78]
    // 0x5e13f0: LoadField: r1 = r0->field_7
    //     0x5e13f0: ldur            w1, [x0, #7]
    // 0x5e13f4: DecompressPointer r1
    //     0x5e13f4: add             x1, x1, HEAP, lsl #32
    // 0x5e13f8: LoadField: r2 = r1->field_b
    //     0x5e13f8: ldur            w2, [x1, #0xb]
    // 0x5e13fc: DecompressPointer r2
    //     0x5e13fc: add             x2, x2, HEAP, lsl #32
    // 0x5e1400: LoadField: r3 = r2->field_7
    //     0x5e1400: ldur            w3, [x2, #7]
    // 0x5e1404: DecompressPointer r3
    //     0x5e1404: add             x3, x3, HEAP, lsl #32
    // 0x5e1408: mov             x1, x3
    // 0x5e140c: stur            x3, [fp, #-0x70]
    // 0x5e1410: r0 = last()
    //     0x5e1410: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5e1414: str             x0, [SP]
    // 0x5e1418: ldur            x1, [fp, #-0x68]
    // 0x5e141c: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x5e141c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x5e1420: ldr             x4, [x4, #0xb78]
    // 0x5e1424: r0 = copyWith()
    //     0x5e1424: bl              #0x5e1638  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::copyWith
    // 0x5e1428: mov             x1, x0
    // 0x5e142c: r0 = toFirestore()
    //     0x5e142c: bl              #0x5e146c  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::toFirestore
    // 0x5e1430: ldur            x1, [fp, #-0x78]
    // 0x5e1434: mov             x2, x0
    // 0x5e1438: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e1438: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e143c: r0 = set()
    //     0x5e143c: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x5e1440: mov             x1, x0
    // 0x5e1444: stur            x1, [fp, #-0x80]
    // 0x5e1448: r0 = Await()
    //     0x5e1448: bl              #0x3dd188  ; AwaitStub
    // 0x5e144c: ldur            x1, [fp, #-0x70]
    // 0x5e1450: r0 = last()
    //     0x5e1450: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x5e1454: r0 = ReturnAsync()
    //     0x5e1454: b               #0x427094  ; ReturnAsyncStub
    // 0x5e1458: sub             SP, fp, #0x88
    // 0x5e145c: r0 = Null
    //     0x5e145c: mov             x0, NULL
    // 0x5e1460: r0 = ReturnAsyncNotFuture()
    //     0x5e1460: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e1464: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e1464: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e1468: b               #0x5e13d0
  }
  _ getUserByToken(/* No info */) async {
    // ** addr: 0x5e8964, size: 0xc0
    // 0x5e8964: EnterFrame
    //     0x5e8964: stp             fp, lr, [SP, #-0x10]!
    //     0x5e8968: mov             fp, SP
    // 0x5e896c: AllocStack(0x78)
    //     0x5e896c: sub             SP, SP, #0x78
    // 0x5e8970: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x5e8970: stur            NULL, [fp, #-8]
    //     0x5e8974: stur            x1, [fp, #-0x60]
    //     0x5e8978: stur            x2, [fp, #-0x68]
    // 0x5e897c: CheckStackOverflow
    //     0x5e897c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8980: cmp             SP, x16
    //     0x5e8984: b.ls            #0x5e8a1c
    // 0x5e8988: InitAsync() -> Future<UserModel?>
    //     0x5e8988: add             x0, PP, #0x15, lsl #12  ; [pp+0x156e0] TypeArguments: <UserModel?>
    //     0x5e898c: ldr             x0, [x0, #0x6e0]
    //     0x5e8990: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e8994: ldur            x0, [fp, #-0x60]
    // 0x5e8998: LoadField: r1 = r0->field_7
    //     0x5e8998: ldur            w1, [x0, #7]
    // 0x5e899c: DecompressPointer r1
    //     0x5e899c: add             x1, x1, HEAP, lsl #32
    // 0x5e89a0: r2 = "users"
    //     0x5e89a0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x5e89a4: ldr             x2, [x2, #0x808]
    // 0x5e89a8: r0 = collection()
    //     0x5e89a8: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e89ac: ldur            x16, [fp, #-0x68]
    // 0x5e89b0: str             x16, [SP]
    // 0x5e89b4: mov             x1, x0
    // 0x5e89b8: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x5e89b8: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x5e89bc: r0 = doc()
    //     0x5e89bc: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5e89c0: mov             x1, x0
    // 0x5e89c4: r0 = get()
    //     0x5e89c4: bl              #0x5e3b28  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::get
    // 0x5e89c8: mov             x1, x0
    // 0x5e89cc: stur            x1, [fp, #-0x70]
    // 0x5e89d0: r0 = Await()
    //     0x5e89d0: bl              #0x3dd188  ; AwaitStub
    // 0x5e89d4: mov             x2, x0
    // 0x5e89d8: stur            x2, [fp, #-0x70]
    // 0x5e89dc: r0 = LoadClassIdInstr(r2)
    //     0x5e89dc: ldur            x0, [x2, #-1]
    //     0x5e89e0: ubfx            x0, x0, #0xc, #0x14
    // 0x5e89e4: mov             x1, x2
    // 0x5e89e8: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e89e8: sub             lr, x0, #1, lsl #12
    //     0x5e89ec: ldr             lr, [x21, lr, lsl #3]
    //     0x5e89f0: blr             lr
    // 0x5e89f4: tbnz            w0, #4, #0x5e8a08
    // 0x5e89f8: ldur            x2, [fp, #-0x70]
    // 0x5e89fc: r1 = Null
    //     0x5e89fc: mov             x1, NULL
    // 0x5e8a00: r0 = UserModel.fromFirestore()
    //     0x5e8a00: bl              #0x5da624  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::UserModel.fromFirestore
    // 0x5e8a04: r0 = ReturnAsyncNotFuture()
    //     0x5e8a04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8a08: r0 = Null
    //     0x5e8a08: mov             x0, NULL
    // 0x5e8a0c: r0 = ReturnAsyncNotFuture()
    //     0x5e8a0c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8a10: sub             SP, fp, #0x78
    // 0x5e8a14: r0 = Null
    //     0x5e8a14: mov             x0, NULL
    // 0x5e8a18: r0 = ReturnAsyncNotFuture()
    //     0x5e8a18: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8a1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e8a1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e8a20: b               #0x5e8988
  }
  _ getTripManagerIds(/* No info */) async {
    // ** addr: 0x5e8a24, size: 0xe8
    // 0x5e8a24: EnterFrame
    //     0x5e8a24: stp             fp, lr, [SP, #-0x10]!
    //     0x5e8a28: mov             fp, SP
    // 0x5e8a2c: AllocStack(0x98)
    //     0x5e8a2c: sub             SP, SP, #0x98
    // 0x5e8a30: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5e8a30: stur            NULL, [fp, #-8]
    //     0x5e8a34: mov             x3, x2
    //     0x5e8a38: stur            x1, [fp, #-0x60]
    //     0x5e8a3c: stur            x2, [fp, #-0x68]
    // 0x5e8a40: CheckStackOverflow
    //     0x5e8a40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8a44: cmp             SP, x16
    //     0x5e8a48: b.ls            #0x5e8b04
    // 0x5e8a4c: InitAsync() -> Future<List<String>>
    //     0x5e8a4c: add             x0, PP, #0x15, lsl #12  ; [pp+0x157f8] TypeArguments: <List<String>>
    //     0x5e8a50: ldr             x0, [x0, #0x7f8]
    //     0x5e8a54: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e8a58: ldur            x0, [fp, #-0x60]
    // 0x5e8a5c: LoadField: r1 = r0->field_7
    //     0x5e8a5c: ldur            w1, [x0, #7]
    // 0x5e8a60: DecompressPointer r1
    //     0x5e8a60: add             x1, x1, HEAP, lsl #32
    // 0x5e8a64: r2 = "trip_managers"
    //     0x5e8a64: add             x2, PP, #0x13, lsl #12  ; [pp+0x13be8] "trip_managers"
    //     0x5e8a68: ldr             x2, [x2, #0xbe8]
    // 0x5e8a6c: r0 = collection()
    //     0x5e8a6c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e8a70: mov             x1, x0
    // 0x5e8a74: ldur            x3, [fp, #-0x68]
    // 0x5e8a78: r2 = "trip_id"
    //     0x5e8a78: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x5e8a7c: ldr             x2, [x2, #0xbf0]
    // 0x5e8a80: r0 = where()
    //     0x5e8a80: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5e8a84: mov             x1, x0
    // 0x5e8a88: r0 = get()
    //     0x5e8a88: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5e8a8c: mov             x1, x0
    // 0x5e8a90: stur            x1, [fp, #-0x70]
    // 0x5e8a94: r0 = Await()
    //     0x5e8a94: bl              #0x3dd188  ; AwaitStub
    // 0x5e8a98: mov             x1, x0
    // 0x5e8a9c: stur            x0, [fp, #-0x70]
    // 0x5e8aa0: r0 = docs()
    //     0x5e8aa0: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5e8aa4: r1 = Function '<anonymous closure>':.
    //     0x5e8aa4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15800] AnonymousClosure: (0x5e8b0c), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripManagerIds (0x5e8a24)
    //     0x5e8aa8: ldr             x1, [x1, #0x800]
    // 0x5e8aac: r2 = Null
    //     0x5e8aac: mov             x2, NULL
    // 0x5e8ab0: stur            x0, [fp, #-0x78]
    // 0x5e8ab4: r0 = AllocateClosure()
    //     0x5e8ab4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e8ab8: r16 = <String>
    //     0x5e8ab8: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x5e8abc: ldur            lr, [fp, #-0x78]
    // 0x5e8ac0: stp             lr, x16, [SP, #8]
    // 0x5e8ac4: str             x0, [SP]
    // 0x5e8ac8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5e8ac8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5e8acc: r0 = map()
    //     0x5e8acc: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5e8ad0: stur            x0, [fp, #-0x80]
    // 0x5e8ad4: LoadField: r3 = r0->field_7
    //     0x5e8ad4: ldur            w3, [x0, #7]
    // 0x5e8ad8: DecompressPointer r3
    //     0x5e8ad8: add             x3, x3, HEAP, lsl #32
    // 0x5e8adc: mov             x1, x3
    // 0x5e8ae0: mov             x2, x0
    // 0x5e8ae4: stur            x3, [fp, #-0x78]
    // 0x5e8ae8: r0 = _GrowableList.of()
    //     0x5e8ae8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5e8aec: r0 = ReturnAsyncNotFuture()
    //     0x5e8aec: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8af0: sub             SP, fp, #0x98
    // 0x5e8af4: r1 = <String>
    //     0x5e8af4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x5e8af8: r2 = 0
    //     0x5e8af8: mov             x2, #0
    // 0x5e8afc: r0 = _GrowableList()
    //     0x5e8afc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5e8b00: r0 = ReturnAsyncNotFuture()
    //     0x5e8b00: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e8b04: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e8b04: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e8b08: b               #0x5e8a4c
  }
  [closure] String <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5e8b0c, size: 0x7c
    // 0x5e8b0c: EnterFrame
    //     0x5e8b0c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e8b10: mov             fp, SP
    // 0x5e8b14: AllocStack(0x8)
    //     0x5e8b14: sub             SP, SP, #8
    // 0x5e8b18: CheckStackOverflow
    //     0x5e8b18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e8b1c: cmp             SP, x16
    //     0x5e8b20: b.ls            #0x5e8b80
    // 0x5e8b24: ldr             x1, [fp, #0x10]
    // 0x5e8b28: r2 = "user_id"
    //     0x5e8b28: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf8] "user_id"
    //     0x5e8b2c: ldr             x2, [x2, #0xbf8]
    // 0x5e8b30: r0 = get()
    //     0x5e8b30: bl              #0x5d3a20  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentSnapshot::get
    // 0x5e8b34: mov             x3, x0
    // 0x5e8b38: r2 = Null
    //     0x5e8b38: mov             x2, NULL
    // 0x5e8b3c: r1 = Null
    //     0x5e8b3c: mov             x1, NULL
    // 0x5e8b40: stur            x3, [fp, #-8]
    // 0x5e8b44: r4 = 60
    //     0x5e8b44: mov             x4, #0x3c
    // 0x5e8b48: branchIfSmi(r0, 0x5e8b54)
    //     0x5e8b48: tbz             w0, #0, #0x5e8b54
    // 0x5e8b4c: r4 = LoadClassIdInstr(r0)
    //     0x5e8b4c: ldur            x4, [x0, #-1]
    //     0x5e8b50: ubfx            x4, x4, #0xc, #0x14
    // 0x5e8b54: sub             x4, x4, #0x5e
    // 0x5e8b58: cmp             x4, #1
    // 0x5e8b5c: b.ls            #0x5e8b70
    // 0x5e8b60: r8 = String
    //     0x5e8b60: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x5e8b64: r3 = Null
    //     0x5e8b64: add             x3, PP, #0x15, lsl #12  ; [pp+0x15808] Null
    //     0x5e8b68: ldr             x3, [x3, #0x808]
    // 0x5e8b6c: r0 = String()
    //     0x5e8b6c: bl              #0x939a58  ; IsType_String_Stub
    // 0x5e8b70: ldur            x0, [fp, #-8]
    // 0x5e8b74: LeaveFrame
    //     0x5e8b74: mov             SP, fp
    //     0x5e8b78: ldp             fp, lr, [SP], #0x10
    // 0x5e8b7c: ret
    //     0x5e8b7c: ret             
    // 0x5e8b80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e8b80: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e8b84: b               #0x5e8b24
  }
  _ getTripById(/* No info */) async {
    // ** addr: 0x5e9600, size: 0xd4
    // 0x5e9600: EnterFrame
    //     0x5e9600: stp             fp, lr, [SP, #-0x10]!
    //     0x5e9604: mov             fp, SP
    // 0x5e9608: AllocStack(0x78)
    //     0x5e9608: sub             SP, SP, #0x78
    // 0x5e960c: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x5e960c: stur            NULL, [fp, #-8]
    //     0x5e9610: stur            x1, [fp, #-0x60]
    //     0x5e9614: stur            x2, [fp, #-0x68]
    // 0x5e9618: CheckStackOverflow
    //     0x5e9618: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e961c: cmp             SP, x16
    //     0x5e9620: b.ls            #0x5e96cc
    // 0x5e9624: InitAsync() -> Future<TripModel?>
    //     0x5e9624: add             x0, PP, #0x15, lsl #12  ; [pp+0x15888] TypeArguments: <TripModel?>
    //     0x5e9628: ldr             x0, [x0, #0x888]
    //     0x5e962c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e9630: ldur            x0, [fp, #-0x68]
    // 0x5e9634: LoadField: r1 = r0->field_7
    //     0x5e9634: ldur            w1, [x0, #7]
    // 0x5e9638: cbnz            w1, #0x5e9644
    // 0x5e963c: r0 = Null
    //     0x5e963c: mov             x0, NULL
    // 0x5e9640: r0 = ReturnAsyncNotFuture()
    //     0x5e9640: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e9644: ldur            x3, [fp, #-0x60]
    // 0x5e9648: LoadField: r1 = r3->field_7
    //     0x5e9648: ldur            w1, [x3, #7]
    // 0x5e964c: DecompressPointer r1
    //     0x5e964c: add             x1, x1, HEAP, lsl #32
    // 0x5e9650: r2 = "trips"
    //     0x5e9650: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x5e9654: ldr             x2, [x2, #0x88]
    // 0x5e9658: r0 = collection()
    //     0x5e9658: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e965c: ldur            x16, [fp, #-0x68]
    // 0x5e9660: str             x16, [SP]
    // 0x5e9664: mov             x1, x0
    // 0x5e9668: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x5e9668: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x5e966c: r0 = doc()
    //     0x5e966c: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5e9670: mov             x1, x0
    // 0x5e9674: r0 = get()
    //     0x5e9674: bl              #0x5e3b28  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::get
    // 0x5e9678: mov             x1, x0
    // 0x5e967c: stur            x1, [fp, #-0x70]
    // 0x5e9680: r0 = Await()
    //     0x5e9680: bl              #0x3dd188  ; AwaitStub
    // 0x5e9684: mov             x2, x0
    // 0x5e9688: stur            x2, [fp, #-0x70]
    // 0x5e968c: r0 = LoadClassIdInstr(r2)
    //     0x5e968c: ldur            x0, [x2, #-1]
    //     0x5e9690: ubfx            x0, x0, #0xc, #0x14
    // 0x5e9694: mov             x1, x2
    // 0x5e9698: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e9698: sub             lr, x0, #1, lsl #12
    //     0x5e969c: ldr             lr, [x21, lr, lsl #3]
    //     0x5e96a0: blr             lr
    // 0x5e96a4: tbnz            w0, #4, #0x5e96b8
    // 0x5e96a8: ldur            x2, [fp, #-0x70]
    // 0x5e96ac: r1 = Null
    //     0x5e96ac: mov             x1, NULL
    // 0x5e96b0: r0 = TripModel.fromFirestore()
    //     0x5e96b0: bl              #0x5d9d38  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::TripModel.fromFirestore
    // 0x5e96b4: r0 = ReturnAsyncNotFuture()
    //     0x5e96b4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e96b8: r0 = Null
    //     0x5e96b8: mov             x0, NULL
    // 0x5e96bc: r0 = ReturnAsyncNotFuture()
    //     0x5e96bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e96c0: sub             SP, fp, #0x78
    // 0x5e96c4: r0 = Null
    //     0x5e96c4: mov             x0, NULL
    // 0x5e96c8: r0 = ReturnAsyncNotFuture()
    //     0x5e96c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e96cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e96cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e96d0: b               #0x5e9624
  }
  _ getPrayerTimeMedineByToday(/* No info */) async {
    // ** addr: 0x5edc08, size: 0x324
    // 0x5edc08: EnterFrame
    //     0x5edc08: stp             fp, lr, [SP, #-0x10]!
    //     0x5edc0c: mov             fp, SP
    // 0x5edc10: AllocStack(0x30)
    //     0x5edc10: sub             SP, SP, #0x30
    // 0x5edc14: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */)
    //     0x5edc14: stur            NULL, [fp, #-8]
    //     0x5edc18: stur            x1, [fp, #-0x10]
    // 0x5edc1c: CheckStackOverflow
    //     0x5edc1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5edc20: cmp             SP, x16
    //     0x5edc24: b.ls            #0x5edf18
    // 0x5edc28: InitAsync() -> Future<PrayerTimeModel>
    //     0x5edc28: add             x0, PP, #0x19, lsl #12  ; [pp+0x19b58] TypeArguments: <PrayerTimeModel>
    //     0x5edc2c: ldr             x0, [x0, #0xb58]
    //     0x5edc30: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5edc34: r0 = DateTime()
    //     0x5edc34: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5edc38: mov             x1, x0
    // 0x5edc3c: r0 = false
    //     0x5edc3c: add             x0, NULL, #0x30  ; false
    // 0x5edc40: stur            x1, [fp, #-0x18]
    // 0x5edc44: StoreField: r1->field_7 = r0
    //     0x5edc44: stur            w0, [x1, #7]
    // 0x5edc48: r0 = _getCurrentMicros()
    //     0x5edc48: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5edc4c: r1 = LoadInt32Instr(r0)
    //     0x5edc4c: sbfx            x1, x0, #1, #0x1f
    //     0x5edc50: tbz             w0, #0, #0x5edc58
    //     0x5edc54: ldur            x1, [x0, #7]
    // 0x5edc58: ldur            x0, [fp, #-0x18]
    // 0x5edc5c: StoreField: r0->field_b = r1
    //     0x5edc5c: stur            x1, [x0, #0xb]
    // 0x5edc60: mov             x1, x0
    // 0x5edc64: r0 = _parts()
    //     0x5edc64: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5edc68: mov             x2, x0
    // 0x5edc6c: LoadField: r0 = r2->field_b
    //     0x5edc6c: ldur            w0, [x2, #0xb]
    // 0x5edc70: r1 = LoadInt32Instr(r0)
    //     0x5edc70: sbfx            x1, x0, #1, #0x1f
    // 0x5edc74: mov             x0, x1
    // 0x5edc78: r1 = 8
    //     0x5edc78: mov             x1, #8
    // 0x5edc7c: cmp             x1, x0
    // 0x5edc80: b.hs            #0x5edf20
    // 0x5edc84: LoadField: r0 = r2->field_2f
    //     0x5edc84: ldur            w0, [x2, #0x2f]
    // 0x5edc88: DecompressPointer r0
    //     0x5edc88: add             x0, x0, HEAP, lsl #32
    // 0x5edc8c: r1 = 60
    //     0x5edc8c: mov             x1, #0x3c
    // 0x5edc90: branchIfSmi(r0, 0x5edc9c)
    //     0x5edc90: tbz             w0, #0, #0x5edc9c
    // 0x5edc94: r1 = LoadClassIdInstr(r0)
    //     0x5edc94: ldur            x1, [x0, #-1]
    //     0x5edc98: ubfx            x1, x1, #0xc, #0x14
    // 0x5edc9c: str             x0, [SP]
    // 0x5edca0: mov             x0, x1
    // 0x5edca4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5edca4: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5edca8: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5edca8: mov             x17, #0x21f6
    //     0x5edcac: add             lr, x0, x17
    //     0x5edcb0: ldr             lr, [x21, lr, lsl #3]
    //     0x5edcb4: blr             lr
    // 0x5edcb8: r1 = LoadClassIdInstr(r0)
    //     0x5edcb8: ldur            x1, [x0, #-1]
    //     0x5edcbc: ubfx            x1, x1, #0xc, #0x14
    // 0x5edcc0: mov             x16, x0
    // 0x5edcc4: mov             x0, x1
    // 0x5edcc8: mov             x1, x16
    // 0x5edccc: r2 = 4
    //     0x5edccc: mov             x2, #4
    // 0x5edcd0: r3 = "0"
    //     0x5edcd0: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5edcd4: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5edcd4: sub             lr, x0, #0xffc
    //     0x5edcd8: ldr             lr, [x21, lr, lsl #3]
    //     0x5edcdc: blr             lr
    // 0x5edce0: r1 = Null
    //     0x5edce0: mov             x1, NULL
    // 0x5edce4: r2 = 10
    //     0x5edce4: mov             x2, #0xa
    // 0x5edce8: stur            x0, [fp, #-0x20]
    // 0x5edcec: r0 = AllocateArray()
    //     0x5edcec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5edcf0: mov             x2, x0
    // 0x5edcf4: ldur            x0, [fp, #-0x20]
    // 0x5edcf8: stur            x2, [fp, #-0x28]
    // 0x5edcfc: StoreField: r2->field_f = r0
    //     0x5edcfc: stur            w0, [x2, #0xf]
    // 0x5edd00: r16 = "-"
    //     0x5edd00: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x5edd04: StoreField: r2->field_13 = r16
    //     0x5edd04: stur            w16, [x2, #0x13]
    // 0x5edd08: ldur            x1, [fp, #-0x18]
    // 0x5edd0c: r0 = _parts()
    //     0x5edd0c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5edd10: mov             x2, x0
    // 0x5edd14: LoadField: r0 = r2->field_b
    //     0x5edd14: ldur            w0, [x2, #0xb]
    // 0x5edd18: r1 = LoadInt32Instr(r0)
    //     0x5edd18: sbfx            x1, x0, #1, #0x1f
    // 0x5edd1c: mov             x0, x1
    // 0x5edd20: r1 = 7
    //     0x5edd20: mov             x1, #7
    // 0x5edd24: cmp             x1, x0
    // 0x5edd28: b.hs            #0x5edf24
    // 0x5edd2c: LoadField: r0 = r2->field_2b
    //     0x5edd2c: ldur            w0, [x2, #0x2b]
    // 0x5edd30: DecompressPointer r0
    //     0x5edd30: add             x0, x0, HEAP, lsl #32
    // 0x5edd34: r1 = 60
    //     0x5edd34: mov             x1, #0x3c
    // 0x5edd38: branchIfSmi(r0, 0x5edd44)
    //     0x5edd38: tbz             w0, #0, #0x5edd44
    // 0x5edd3c: r1 = LoadClassIdInstr(r0)
    //     0x5edd3c: ldur            x1, [x0, #-1]
    //     0x5edd40: ubfx            x1, x1, #0xc, #0x14
    // 0x5edd44: str             x0, [SP]
    // 0x5edd48: mov             x0, x1
    // 0x5edd4c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5edd4c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5edd50: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5edd50: mov             x17, #0x21f6
    //     0x5edd54: add             lr, x0, x17
    //     0x5edd58: ldr             lr, [x21, lr, lsl #3]
    //     0x5edd5c: blr             lr
    // 0x5edd60: r1 = LoadClassIdInstr(r0)
    //     0x5edd60: ldur            x1, [x0, #-1]
    //     0x5edd64: ubfx            x1, x1, #0xc, #0x14
    // 0x5edd68: mov             x16, x0
    // 0x5edd6c: mov             x0, x1
    // 0x5edd70: mov             x1, x16
    // 0x5edd74: r2 = 2
    //     0x5edd74: mov             x2, #2
    // 0x5edd78: r3 = "0"
    //     0x5edd78: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5edd7c: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5edd7c: sub             lr, x0, #0xffc
    //     0x5edd80: ldr             lr, [x21, lr, lsl #3]
    //     0x5edd84: blr             lr
    // 0x5edd88: ldur            x1, [fp, #-0x28]
    // 0x5edd8c: ArrayStore: r1[2] = r0  ; List_4
    //     0x5edd8c: add             x25, x1, #0x17
    //     0x5edd90: str             w0, [x25]
    //     0x5edd94: tbz             w0, #0, #0x5eddb0
    //     0x5edd98: ldurb           w16, [x1, #-1]
    //     0x5edd9c: ldurb           w17, [x0, #-1]
    //     0x5edda0: and             x16, x17, x16, lsr #2
    //     0x5edda4: tst             x16, HEAP, lsr #32
    //     0x5edda8: b.eq            #0x5eddb0
    //     0x5eddac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5eddb0: ldur            x0, [fp, #-0x28]
    // 0x5eddb4: r16 = "-"
    //     0x5eddb4: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x5eddb8: StoreField: r0->field_1b = r16
    //     0x5eddb8: stur            w16, [x0, #0x1b]
    // 0x5eddbc: ldur            x1, [fp, #-0x18]
    // 0x5eddc0: r0 = _parts()
    //     0x5eddc0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5eddc4: mov             x2, x0
    // 0x5eddc8: LoadField: r0 = r2->field_b
    //     0x5eddc8: ldur            w0, [x2, #0xb]
    // 0x5eddcc: r1 = LoadInt32Instr(r0)
    //     0x5eddcc: sbfx            x1, x0, #1, #0x1f
    // 0x5eddd0: mov             x0, x1
    // 0x5eddd4: r1 = 5
    //     0x5eddd4: mov             x1, #5
    // 0x5eddd8: cmp             x1, x0
    // 0x5edddc: b.hs            #0x5edf28
    // 0x5edde0: LoadField: r0 = r2->field_23
    //     0x5edde0: ldur            w0, [x2, #0x23]
    // 0x5edde4: DecompressPointer r0
    //     0x5edde4: add             x0, x0, HEAP, lsl #32
    // 0x5edde8: r1 = 60
    //     0x5edde8: mov             x1, #0x3c
    // 0x5eddec: branchIfSmi(r0, 0x5eddf8)
    //     0x5eddec: tbz             w0, #0, #0x5eddf8
    // 0x5eddf0: r1 = LoadClassIdInstr(r0)
    //     0x5eddf0: ldur            x1, [x0, #-1]
    //     0x5eddf4: ubfx            x1, x1, #0xc, #0x14
    // 0x5eddf8: str             x0, [SP]
    // 0x5eddfc: mov             x0, x1
    // 0x5ede00: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5ede00: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5ede04: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5ede04: mov             x17, #0x21f6
    //     0x5ede08: add             lr, x0, x17
    //     0x5ede0c: ldr             lr, [x21, lr, lsl #3]
    //     0x5ede10: blr             lr
    // 0x5ede14: r1 = LoadClassIdInstr(r0)
    //     0x5ede14: ldur            x1, [x0, #-1]
    //     0x5ede18: ubfx            x1, x1, #0xc, #0x14
    // 0x5ede1c: mov             x16, x0
    // 0x5ede20: mov             x0, x1
    // 0x5ede24: mov             x1, x16
    // 0x5ede28: r2 = 2
    //     0x5ede28: mov             x2, #2
    // 0x5ede2c: r3 = "0"
    //     0x5ede2c: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5ede30: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5ede30: sub             lr, x0, #0xffc
    //     0x5ede34: ldr             lr, [x21, lr, lsl #3]
    //     0x5ede38: blr             lr
    // 0x5ede3c: ldur            x1, [fp, #-0x28]
    // 0x5ede40: ArrayStore: r1[4] = r0  ; List_4
    //     0x5ede40: add             x25, x1, #0x1f
    //     0x5ede44: str             w0, [x25]
    //     0x5ede48: tbz             w0, #0, #0x5ede64
    //     0x5ede4c: ldurb           w16, [x1, #-1]
    //     0x5ede50: ldurb           w17, [x0, #-1]
    //     0x5ede54: and             x16, x17, x16, lsr #2
    //     0x5ede58: tst             x16, HEAP, lsr #32
    //     0x5ede5c: b.eq            #0x5ede64
    //     0x5ede60: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5ede64: ldur            x16, [fp, #-0x28]
    // 0x5ede68: str             x16, [SP]
    // 0x5ede6c: r0 = _interpolate()
    //     0x5ede6c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5ede70: mov             x3, x0
    // 0x5ede74: ldur            x0, [fp, #-0x10]
    // 0x5ede78: stur            x3, [fp, #-0x18]
    // 0x5ede7c: LoadField: r1 = r0->field_7
    //     0x5ede7c: ldur            w1, [x0, #7]
    // 0x5ede80: DecompressPointer r1
    //     0x5ede80: add             x1, x1, HEAP, lsl #32
    // 0x5ede84: r2 = "medine_prayer_times"
    //     0x5ede84: add             x2, PP, #0x19, lsl #12  ; [pp+0x19b60] "medine_prayer_times"
    //     0x5ede88: ldr             x2, [x2, #0xb60]
    // 0x5ede8c: r0 = collection()
    //     0x5ede8c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5ede90: mov             x1, x0
    // 0x5ede94: ldur            x3, [fp, #-0x18]
    // 0x5ede98: r2 = "date"
    //     0x5ede98: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5ede9c: ldr             x2, [x2, #0xff8]
    // 0x5edea0: r0 = where()
    //     0x5edea0: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5edea4: mov             x1, x0
    // 0x5edea8: r2 = 1
    //     0x5edea8: mov             x2, #1
    // 0x5edeac: r0 = limit()
    //     0x5edeac: bl              #0x5ee424  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::limit
    // 0x5edeb0: mov             x1, x0
    // 0x5edeb4: r0 = get()
    //     0x5edeb4: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5edeb8: mov             x1, x0
    // 0x5edebc: stur            x1, [fp, #-0x10]
    // 0x5edec0: r0 = Await()
    //     0x5edec0: bl              #0x3dd188  ; AwaitStub
    // 0x5edec4: mov             x1, x0
    // 0x5edec8: stur            x0, [fp, #-0x10]
    // 0x5edecc: r0 = docs()
    //     0x5edecc: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5eded0: LoadField: r1 = r0->field_b
    //     0x5eded0: ldur            w1, [x0, #0xb]
    // 0x5eded4: cbz             w1, #0x5edef8
    // 0x5eded8: ldur            x1, [fp, #-0x10]
    // 0x5ededc: r0 = docs()
    //     0x5ededc: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5edee0: mov             x1, x0
    // 0x5edee4: r0 = first()
    //     0x5edee4: bl              #0x4ecadc  ; [dart:core] _GrowableList::first
    // 0x5edee8: mov             x2, x0
    // 0x5edeec: r1 = Null
    //     0x5edeec: mov             x1, NULL
    // 0x5edef0: r0 = PrayerTimeModel.fromFirestore()
    //     0x5edef0: bl              #0x5edf2c  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::PrayerTimeModel.fromFirestore
    // 0x5edef4: r0 = ReturnAsyncNotFuture()
    //     0x5edef4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5edef8: r0 = _Exception()
    //     0x5edef8: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x5edefc: mov             x1, x0
    // 0x5edf00: r0 = "Bugünün vakitleri bulunamadı."
    //     0x5edf00: add             x0, PP, #0x19, lsl #12  ; [pp+0x19b68] "Bugünün vakitleri bulunamadı."
    //     0x5edf04: ldr             x0, [x0, #0xb68]
    // 0x5edf08: StoreField: r1->field_7 = r0
    //     0x5edf08: stur            w0, [x1, #7]
    // 0x5edf0c: mov             x0, x1
    // 0x5edf10: r0 = Throw()
    //     0x5edf10: bl              #0x926328  ; ThrowStub
    // 0x5edf14: brk             #0
    // 0x5edf18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5edf18: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5edf1c: b               #0x5edc28
    // 0x5edf20: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5edf20: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5edf24: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5edf24: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5edf28: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5edf28: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ getPrayerTimeMekkeByToday(/* No info */) async {
    // ** addr: 0x5ee588, size: 0x324
    // 0x5ee588: EnterFrame
    //     0x5ee588: stp             fp, lr, [SP, #-0x10]!
    //     0x5ee58c: mov             fp, SP
    // 0x5ee590: AllocStack(0x30)
    //     0x5ee590: sub             SP, SP, #0x30
    // 0x5ee594: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */)
    //     0x5ee594: stur            NULL, [fp, #-8]
    //     0x5ee598: stur            x1, [fp, #-0x10]
    // 0x5ee59c: CheckStackOverflow
    //     0x5ee59c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ee5a0: cmp             SP, x16
    //     0x5ee5a4: b.ls            #0x5ee898
    // 0x5ee5a8: InitAsync() -> Future<PrayerTimeModel>
    //     0x5ee5a8: add             x0, PP, #0x19, lsl #12  ; [pp+0x19b58] TypeArguments: <PrayerTimeModel>
    //     0x5ee5ac: ldr             x0, [x0, #0xb58]
    //     0x5ee5b0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ee5b4: r0 = DateTime()
    //     0x5ee5b4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5ee5b8: mov             x1, x0
    // 0x5ee5bc: r0 = false
    //     0x5ee5bc: add             x0, NULL, #0x30  ; false
    // 0x5ee5c0: stur            x1, [fp, #-0x18]
    // 0x5ee5c4: StoreField: r1->field_7 = r0
    //     0x5ee5c4: stur            w0, [x1, #7]
    // 0x5ee5c8: r0 = _getCurrentMicros()
    //     0x5ee5c8: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5ee5cc: r1 = LoadInt32Instr(r0)
    //     0x5ee5cc: sbfx            x1, x0, #1, #0x1f
    //     0x5ee5d0: tbz             w0, #0, #0x5ee5d8
    //     0x5ee5d4: ldur            x1, [x0, #7]
    // 0x5ee5d8: ldur            x0, [fp, #-0x18]
    // 0x5ee5dc: StoreField: r0->field_b = r1
    //     0x5ee5dc: stur            x1, [x0, #0xb]
    // 0x5ee5e0: mov             x1, x0
    // 0x5ee5e4: r0 = _parts()
    //     0x5ee5e4: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5ee5e8: mov             x2, x0
    // 0x5ee5ec: LoadField: r0 = r2->field_b
    //     0x5ee5ec: ldur            w0, [x2, #0xb]
    // 0x5ee5f0: r1 = LoadInt32Instr(r0)
    //     0x5ee5f0: sbfx            x1, x0, #1, #0x1f
    // 0x5ee5f4: mov             x0, x1
    // 0x5ee5f8: r1 = 8
    //     0x5ee5f8: mov             x1, #8
    // 0x5ee5fc: cmp             x1, x0
    // 0x5ee600: b.hs            #0x5ee8a0
    // 0x5ee604: LoadField: r0 = r2->field_2f
    //     0x5ee604: ldur            w0, [x2, #0x2f]
    // 0x5ee608: DecompressPointer r0
    //     0x5ee608: add             x0, x0, HEAP, lsl #32
    // 0x5ee60c: r1 = 60
    //     0x5ee60c: mov             x1, #0x3c
    // 0x5ee610: branchIfSmi(r0, 0x5ee61c)
    //     0x5ee610: tbz             w0, #0, #0x5ee61c
    // 0x5ee614: r1 = LoadClassIdInstr(r0)
    //     0x5ee614: ldur            x1, [x0, #-1]
    //     0x5ee618: ubfx            x1, x1, #0xc, #0x14
    // 0x5ee61c: str             x0, [SP]
    // 0x5ee620: mov             x0, x1
    // 0x5ee624: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5ee624: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5ee628: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5ee628: mov             x17, #0x21f6
    //     0x5ee62c: add             lr, x0, x17
    //     0x5ee630: ldr             lr, [x21, lr, lsl #3]
    //     0x5ee634: blr             lr
    // 0x5ee638: r1 = LoadClassIdInstr(r0)
    //     0x5ee638: ldur            x1, [x0, #-1]
    //     0x5ee63c: ubfx            x1, x1, #0xc, #0x14
    // 0x5ee640: mov             x16, x0
    // 0x5ee644: mov             x0, x1
    // 0x5ee648: mov             x1, x16
    // 0x5ee64c: r2 = 4
    //     0x5ee64c: mov             x2, #4
    // 0x5ee650: r3 = "0"
    //     0x5ee650: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5ee654: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5ee654: sub             lr, x0, #0xffc
    //     0x5ee658: ldr             lr, [x21, lr, lsl #3]
    //     0x5ee65c: blr             lr
    // 0x5ee660: r1 = Null
    //     0x5ee660: mov             x1, NULL
    // 0x5ee664: r2 = 10
    //     0x5ee664: mov             x2, #0xa
    // 0x5ee668: stur            x0, [fp, #-0x20]
    // 0x5ee66c: r0 = AllocateArray()
    //     0x5ee66c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ee670: mov             x2, x0
    // 0x5ee674: ldur            x0, [fp, #-0x20]
    // 0x5ee678: stur            x2, [fp, #-0x28]
    // 0x5ee67c: StoreField: r2->field_f = r0
    //     0x5ee67c: stur            w0, [x2, #0xf]
    // 0x5ee680: r16 = "-"
    //     0x5ee680: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x5ee684: StoreField: r2->field_13 = r16
    //     0x5ee684: stur            w16, [x2, #0x13]
    // 0x5ee688: ldur            x1, [fp, #-0x18]
    // 0x5ee68c: r0 = _parts()
    //     0x5ee68c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5ee690: mov             x2, x0
    // 0x5ee694: LoadField: r0 = r2->field_b
    //     0x5ee694: ldur            w0, [x2, #0xb]
    // 0x5ee698: r1 = LoadInt32Instr(r0)
    //     0x5ee698: sbfx            x1, x0, #1, #0x1f
    // 0x5ee69c: mov             x0, x1
    // 0x5ee6a0: r1 = 7
    //     0x5ee6a0: mov             x1, #7
    // 0x5ee6a4: cmp             x1, x0
    // 0x5ee6a8: b.hs            #0x5ee8a4
    // 0x5ee6ac: LoadField: r0 = r2->field_2b
    //     0x5ee6ac: ldur            w0, [x2, #0x2b]
    // 0x5ee6b0: DecompressPointer r0
    //     0x5ee6b0: add             x0, x0, HEAP, lsl #32
    // 0x5ee6b4: r1 = 60
    //     0x5ee6b4: mov             x1, #0x3c
    // 0x5ee6b8: branchIfSmi(r0, 0x5ee6c4)
    //     0x5ee6b8: tbz             w0, #0, #0x5ee6c4
    // 0x5ee6bc: r1 = LoadClassIdInstr(r0)
    //     0x5ee6bc: ldur            x1, [x0, #-1]
    //     0x5ee6c0: ubfx            x1, x1, #0xc, #0x14
    // 0x5ee6c4: str             x0, [SP]
    // 0x5ee6c8: mov             x0, x1
    // 0x5ee6cc: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5ee6cc: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5ee6d0: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5ee6d0: mov             x17, #0x21f6
    //     0x5ee6d4: add             lr, x0, x17
    //     0x5ee6d8: ldr             lr, [x21, lr, lsl #3]
    //     0x5ee6dc: blr             lr
    // 0x5ee6e0: r1 = LoadClassIdInstr(r0)
    //     0x5ee6e0: ldur            x1, [x0, #-1]
    //     0x5ee6e4: ubfx            x1, x1, #0xc, #0x14
    // 0x5ee6e8: mov             x16, x0
    // 0x5ee6ec: mov             x0, x1
    // 0x5ee6f0: mov             x1, x16
    // 0x5ee6f4: r2 = 2
    //     0x5ee6f4: mov             x2, #2
    // 0x5ee6f8: r3 = "0"
    //     0x5ee6f8: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5ee6fc: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5ee6fc: sub             lr, x0, #0xffc
    //     0x5ee700: ldr             lr, [x21, lr, lsl #3]
    //     0x5ee704: blr             lr
    // 0x5ee708: ldur            x1, [fp, #-0x28]
    // 0x5ee70c: ArrayStore: r1[2] = r0  ; List_4
    //     0x5ee70c: add             x25, x1, #0x17
    //     0x5ee710: str             w0, [x25]
    //     0x5ee714: tbz             w0, #0, #0x5ee730
    //     0x5ee718: ldurb           w16, [x1, #-1]
    //     0x5ee71c: ldurb           w17, [x0, #-1]
    //     0x5ee720: and             x16, x17, x16, lsr #2
    //     0x5ee724: tst             x16, HEAP, lsr #32
    //     0x5ee728: b.eq            #0x5ee730
    //     0x5ee72c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5ee730: ldur            x0, [fp, #-0x28]
    // 0x5ee734: r16 = "-"
    //     0x5ee734: ldr             x16, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x5ee738: StoreField: r0->field_1b = r16
    //     0x5ee738: stur            w16, [x0, #0x1b]
    // 0x5ee73c: ldur            x1, [fp, #-0x18]
    // 0x5ee740: r0 = _parts()
    //     0x5ee740: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5ee744: mov             x2, x0
    // 0x5ee748: LoadField: r0 = r2->field_b
    //     0x5ee748: ldur            w0, [x2, #0xb]
    // 0x5ee74c: r1 = LoadInt32Instr(r0)
    //     0x5ee74c: sbfx            x1, x0, #1, #0x1f
    // 0x5ee750: mov             x0, x1
    // 0x5ee754: r1 = 5
    //     0x5ee754: mov             x1, #5
    // 0x5ee758: cmp             x1, x0
    // 0x5ee75c: b.hs            #0x5ee8a8
    // 0x5ee760: LoadField: r0 = r2->field_23
    //     0x5ee760: ldur            w0, [x2, #0x23]
    // 0x5ee764: DecompressPointer r0
    //     0x5ee764: add             x0, x0, HEAP, lsl #32
    // 0x5ee768: r1 = 60
    //     0x5ee768: mov             x1, #0x3c
    // 0x5ee76c: branchIfSmi(r0, 0x5ee778)
    //     0x5ee76c: tbz             w0, #0, #0x5ee778
    // 0x5ee770: r1 = LoadClassIdInstr(r0)
    //     0x5ee770: ldur            x1, [x0, #-1]
    //     0x5ee774: ubfx            x1, x1, #0xc, #0x14
    // 0x5ee778: str             x0, [SP]
    // 0x5ee77c: mov             x0, x1
    // 0x5ee780: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x5ee780: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x5ee784: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x5ee784: mov             x17, #0x21f6
    //     0x5ee788: add             lr, x0, x17
    //     0x5ee78c: ldr             lr, [x21, lr, lsl #3]
    //     0x5ee790: blr             lr
    // 0x5ee794: r1 = LoadClassIdInstr(r0)
    //     0x5ee794: ldur            x1, [x0, #-1]
    //     0x5ee798: ubfx            x1, x1, #0xc, #0x14
    // 0x5ee79c: mov             x16, x0
    // 0x5ee7a0: mov             x0, x1
    // 0x5ee7a4: mov             x1, x16
    // 0x5ee7a8: r2 = 2
    //     0x5ee7a8: mov             x2, #2
    // 0x5ee7ac: r3 = "0"
    //     0x5ee7ac: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5ee7b0: r0 = GDT[cid_x0 + -0xffc]()
    //     0x5ee7b0: sub             lr, x0, #0xffc
    //     0x5ee7b4: ldr             lr, [x21, lr, lsl #3]
    //     0x5ee7b8: blr             lr
    // 0x5ee7bc: ldur            x1, [fp, #-0x28]
    // 0x5ee7c0: ArrayStore: r1[4] = r0  ; List_4
    //     0x5ee7c0: add             x25, x1, #0x1f
    //     0x5ee7c4: str             w0, [x25]
    //     0x5ee7c8: tbz             w0, #0, #0x5ee7e4
    //     0x5ee7cc: ldurb           w16, [x1, #-1]
    //     0x5ee7d0: ldurb           w17, [x0, #-1]
    //     0x5ee7d4: and             x16, x17, x16, lsr #2
    //     0x5ee7d8: tst             x16, HEAP, lsr #32
    //     0x5ee7dc: b.eq            #0x5ee7e4
    //     0x5ee7e0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5ee7e4: ldur            x16, [fp, #-0x28]
    // 0x5ee7e8: str             x16, [SP]
    // 0x5ee7ec: r0 = _interpolate()
    //     0x5ee7ec: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5ee7f0: mov             x3, x0
    // 0x5ee7f4: ldur            x0, [fp, #-0x10]
    // 0x5ee7f8: stur            x3, [fp, #-0x18]
    // 0x5ee7fc: LoadField: r1 = r0->field_7
    //     0x5ee7fc: ldur            w1, [x0, #7]
    // 0x5ee800: DecompressPointer r1
    //     0x5ee800: add             x1, x1, HEAP, lsl #32
    // 0x5ee804: r2 = "mekke_prayer_times"
    //     0x5ee804: add             x2, PP, #0x19, lsl #12  ; [pp+0x19c00] "mekke_prayer_times"
    //     0x5ee808: ldr             x2, [x2, #0xc00]
    // 0x5ee80c: r0 = collection()
    //     0x5ee80c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5ee810: mov             x1, x0
    // 0x5ee814: ldur            x3, [fp, #-0x18]
    // 0x5ee818: r2 = "date"
    //     0x5ee818: add             x2, PP, #0x14, lsl #12  ; [pp+0x14ff8] "date"
    //     0x5ee81c: ldr             x2, [x2, #0xff8]
    // 0x5ee820: r0 = where()
    //     0x5ee820: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5ee824: mov             x1, x0
    // 0x5ee828: r2 = 1
    //     0x5ee828: mov             x2, #1
    // 0x5ee82c: r0 = limit()
    //     0x5ee82c: bl              #0x5ee424  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::limit
    // 0x5ee830: mov             x1, x0
    // 0x5ee834: r0 = get()
    //     0x5ee834: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5ee838: mov             x1, x0
    // 0x5ee83c: stur            x1, [fp, #-0x10]
    // 0x5ee840: r0 = Await()
    //     0x5ee840: bl              #0x3dd188  ; AwaitStub
    // 0x5ee844: mov             x1, x0
    // 0x5ee848: stur            x0, [fp, #-0x10]
    // 0x5ee84c: r0 = docs()
    //     0x5ee84c: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5ee850: LoadField: r1 = r0->field_b
    //     0x5ee850: ldur            w1, [x0, #0xb]
    // 0x5ee854: cbz             w1, #0x5ee878
    // 0x5ee858: ldur            x1, [fp, #-0x10]
    // 0x5ee85c: r0 = docs()
    //     0x5ee85c: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5ee860: mov             x1, x0
    // 0x5ee864: r0 = first()
    //     0x5ee864: bl              #0x4ecadc  ; [dart:core] _GrowableList::first
    // 0x5ee868: mov             x2, x0
    // 0x5ee86c: r1 = Null
    //     0x5ee86c: mov             x1, NULL
    // 0x5ee870: r0 = PrayerTimeModel.fromFirestore()
    //     0x5ee870: bl              #0x5edf2c  ; [package:umrem_demo/features/home/models/prayer_time_model.dart] PrayerTimeModel::PrayerTimeModel.fromFirestore
    // 0x5ee874: r0 = ReturnAsyncNotFuture()
    //     0x5ee874: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ee878: r0 = _Exception()
    //     0x5ee878: bl              #0x3ef4a4  ; Allocate_ExceptionStub -> _Exception (size=0xc)
    // 0x5ee87c: mov             x1, x0
    // 0x5ee880: r0 = "Bugünün vakitleri bulunamadı."
    //     0x5ee880: add             x0, PP, #0x19, lsl #12  ; [pp+0x19b68] "Bugünün vakitleri bulunamadı."
    //     0x5ee884: ldr             x0, [x0, #0xb68]
    // 0x5ee888: StoreField: r1->field_7 = r0
    //     0x5ee888: stur            w0, [x1, #7]
    // 0x5ee88c: mov             x0, x1
    // 0x5ee890: r0 = Throw()
    //     0x5ee890: bl              #0x926328  ; ThrowStub
    // 0x5ee894: brk             #0
    // 0x5ee898: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ee898: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ee89c: b               #0x5ee5a8
    // 0x5ee8a0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5ee8a0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5ee8a4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5ee8a4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5ee8a8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5ee8a8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ getRoomById(/* No info */) async {
    // ** addr: 0x5ee990, size: 0xc0
    // 0x5ee990: EnterFrame
    //     0x5ee990: stp             fp, lr, [SP, #-0x10]!
    //     0x5ee994: mov             fp, SP
    // 0x5ee998: AllocStack(0x78)
    //     0x5ee998: sub             SP, SP, #0x78
    // 0x5ee99c: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x5ee99c: stur            NULL, [fp, #-8]
    //     0x5ee9a0: stur            x1, [fp, #-0x60]
    //     0x5ee9a4: stur            x2, [fp, #-0x68]
    // 0x5ee9a8: CheckStackOverflow
    //     0x5ee9a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ee9ac: cmp             SP, x16
    //     0x5ee9b0: b.ls            #0x5eea48
    // 0x5ee9b4: InitAsync() -> Future<RoomModel?>
    //     0x5ee9b4: add             x0, PP, #0x19, lsl #12  ; [pp+0x19c08] TypeArguments: <RoomModel?>
    //     0x5ee9b8: ldr             x0, [x0, #0xc08]
    //     0x5ee9bc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ee9c0: ldur            x0, [fp, #-0x60]
    // 0x5ee9c4: LoadField: r1 = r0->field_7
    //     0x5ee9c4: ldur            w1, [x0, #7]
    // 0x5ee9c8: DecompressPointer r1
    //     0x5ee9c8: add             x1, x1, HEAP, lsl #32
    // 0x5ee9cc: r2 = "rooms"
    //     0x5ee9cc: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x5ee9d0: ldr             x2, [x2, #0x60]
    // 0x5ee9d4: r0 = collection()
    //     0x5ee9d4: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5ee9d8: ldur            x16, [fp, #-0x68]
    // 0x5ee9dc: str             x16, [SP]
    // 0x5ee9e0: mov             x1, x0
    // 0x5ee9e4: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x5ee9e4: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x5ee9e8: r0 = doc()
    //     0x5ee9e8: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5ee9ec: mov             x1, x0
    // 0x5ee9f0: r0 = get()
    //     0x5ee9f0: bl              #0x5e3b28  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::get
    // 0x5ee9f4: mov             x1, x0
    // 0x5ee9f8: stur            x1, [fp, #-0x70]
    // 0x5ee9fc: r0 = Await()
    //     0x5ee9fc: bl              #0x3dd188  ; AwaitStub
    // 0x5eea00: mov             x2, x0
    // 0x5eea04: stur            x2, [fp, #-0x70]
    // 0x5eea08: r0 = LoadClassIdInstr(r2)
    //     0x5eea08: ldur            x0, [x2, #-1]
    //     0x5eea0c: ubfx            x0, x0, #0xc, #0x14
    // 0x5eea10: mov             x1, x2
    // 0x5eea14: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5eea14: sub             lr, x0, #1, lsl #12
    //     0x5eea18: ldr             lr, [x21, lr, lsl #3]
    //     0x5eea1c: blr             lr
    // 0x5eea20: tbnz            w0, #4, #0x5eea34
    // 0x5eea24: ldur            x2, [fp, #-0x70]
    // 0x5eea28: r1 = Null
    //     0x5eea28: mov             x1, NULL
    // 0x5eea2c: r0 = RoomModel.fromFirestore()
    //     0x5eea2c: bl              #0x5d85dc  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::RoomModel.fromFirestore
    // 0x5eea30: r0 = ReturnAsyncNotFuture()
    //     0x5eea30: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eea34: r0 = Null
    //     0x5eea34: mov             x0, NULL
    // 0x5eea38: r0 = ReturnAsyncNotFuture()
    //     0x5eea38: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eea3c: sub             SP, fp, #0x78
    // 0x5eea40: r0 = Null
    //     0x5eea40: mov             x0, NULL
    // 0x5eea44: r0 = ReturnAsyncNotFuture()
    //     0x5eea44: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eea48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eea48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eea4c: b               #0x5ee9b4
  }
  _ getHotelById(/* No info */) async {
    // ** addr: 0x5eec18, size: 0xd4
    // 0x5eec18: EnterFrame
    //     0x5eec18: stp             fp, lr, [SP, #-0x10]!
    //     0x5eec1c: mov             fp, SP
    // 0x5eec20: AllocStack(0x78)
    //     0x5eec20: sub             SP, SP, #0x78
    // 0x5eec24: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x5eec24: stur            NULL, [fp, #-8]
    //     0x5eec28: stur            x1, [fp, #-0x60]
    //     0x5eec2c: stur            x2, [fp, #-0x68]
    // 0x5eec30: CheckStackOverflow
    //     0x5eec30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eec34: cmp             SP, x16
    //     0x5eec38: b.ls            #0x5eece4
    // 0x5eec3c: InitAsync() -> Future<HotelModel?>
    //     0x5eec3c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19c10] TypeArguments: <HotelModel?>
    //     0x5eec40: ldr             x0, [x0, #0xc10]
    //     0x5eec44: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5eec48: ldur            x0, [fp, #-0x68]
    // 0x5eec4c: LoadField: r1 = r0->field_7
    //     0x5eec4c: ldur            w1, [x0, #7]
    // 0x5eec50: cbnz            w1, #0x5eec5c
    // 0x5eec54: r0 = Null
    //     0x5eec54: mov             x0, NULL
    // 0x5eec58: r0 = ReturnAsyncNotFuture()
    //     0x5eec58: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eec5c: ldur            x3, [fp, #-0x60]
    // 0x5eec60: LoadField: r1 = r3->field_7
    //     0x5eec60: ldur            w1, [x3, #7]
    // 0x5eec64: DecompressPointer r1
    //     0x5eec64: add             x1, x1, HEAP, lsl #32
    // 0x5eec68: r2 = "hotels"
    //     0x5eec68: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x5eec6c: ldr             x2, [x2, #0x990]
    // 0x5eec70: r0 = collection()
    //     0x5eec70: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5eec74: ldur            x16, [fp, #-0x68]
    // 0x5eec78: str             x16, [SP]
    // 0x5eec7c: mov             x1, x0
    // 0x5eec80: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x5eec80: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x5eec84: r0 = doc()
    //     0x5eec84: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5eec88: mov             x1, x0
    // 0x5eec8c: r0 = get()
    //     0x5eec8c: bl              #0x5e3b28  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::get
    // 0x5eec90: mov             x1, x0
    // 0x5eec94: stur            x1, [fp, #-0x70]
    // 0x5eec98: r0 = Await()
    //     0x5eec98: bl              #0x3dd188  ; AwaitStub
    // 0x5eec9c: mov             x2, x0
    // 0x5eeca0: stur            x2, [fp, #-0x70]
    // 0x5eeca4: r0 = LoadClassIdInstr(r2)
    //     0x5eeca4: ldur            x0, [x2, #-1]
    //     0x5eeca8: ubfx            x0, x0, #0xc, #0x14
    // 0x5eecac: mov             x1, x2
    // 0x5eecb0: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5eecb0: sub             lr, x0, #1, lsl #12
    //     0x5eecb4: ldr             lr, [x21, lr, lsl #3]
    //     0x5eecb8: blr             lr
    // 0x5eecbc: tbnz            w0, #4, #0x5eecd0
    // 0x5eecc0: ldur            x2, [fp, #-0x70]
    // 0x5eecc4: r1 = Null
    //     0x5eecc4: mov             x1, NULL
    // 0x5eecc8: r0 = HotelModel.fromFirestore()
    //     0x5eecc8: bl              #0x5d9488  ; [package:umrem_demo/features/admin/models/hotel_model.dart] HotelModel::HotelModel.fromFirestore
    // 0x5eeccc: r0 = ReturnAsyncNotFuture()
    //     0x5eeccc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eecd0: r0 = Null
    //     0x5eecd0: mov             x0, NULL
    // 0x5eecd4: r0 = ReturnAsyncNotFuture()
    //     0x5eecd4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eecd8: sub             SP, fp, #0x78
    // 0x5eecdc: r0 = Null
    //     0x5eecdc: mov             x0, NULL
    // 0x5eece0: r0 = ReturnAsyncNotFuture()
    //     0x5eece0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eece4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eece4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eece8: b               #0x5eec3c
  }
  _ getLastNotifications(/* No info */) async {
    // ** addr: 0x5eeeac, size: 0x118
    // 0x5eeeac: EnterFrame
    //     0x5eeeac: stp             fp, lr, [SP, #-0x10]!
    //     0x5eeeb0: mov             fp, SP
    // 0x5eeeb4: AllocStack(0x98)
    //     0x5eeeb4: sub             SP, SP, #0x98
    // 0x5eeeb8: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5eeeb8: stur            NULL, [fp, #-8]
    //     0x5eeebc: mov             x3, x2
    //     0x5eeec0: stur            x1, [fp, #-0x60]
    //     0x5eeec4: stur            x2, [fp, #-0x68]
    // 0x5eeec8: CheckStackOverflow
    //     0x5eeec8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eeecc: cmp             SP, x16
    //     0x5eeed0: b.ls            #0x5eefbc
    // 0x5eeed4: InitAsync() -> Future<List<NotificationModel>>
    //     0x5eeed4: add             x0, PP, #0x19, lsl #12  ; [pp+0x19c18] TypeArguments: <List<NotificationModel>>
    //     0x5eeed8: ldr             x0, [x0, #0xc18]
    //     0x5eeedc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5eeee0: ldur            x0, [fp, #-0x60]
    // 0x5eeee4: LoadField: r1 = r0->field_7
    //     0x5eeee4: ldur            w1, [x0, #7]
    // 0x5eeee8: DecompressPointer r1
    //     0x5eeee8: add             x1, x1, HEAP, lsl #32
    // 0x5eeeec: r2 = "notifications"
    //     0x5eeeec: add             x2, PP, #0x18, lsl #12  ; [pp+0x18aa8] "notifications"
    //     0x5eeef0: ldr             x2, [x2, #0xaa8]
    // 0x5eeef4: r0 = collection()
    //     0x5eeef4: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5eeef8: r16 = true
    //     0x5eeef8: add             x16, NULL, #0x20  ; true
    // 0x5eeefc: str             x16, [SP]
    // 0x5eef00: mov             x1, x0
    // 0x5eef04: r2 = "created_at"
    //     0x5eef04: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5eef08: ldr             x2, [x2, #0xc00]
    // 0x5eef0c: r4 = const [0, 0x3, 0x1, 0x2, descending, 0x2, null]
    //     0x5eef0c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19c20] List(7) [0, 0x3, 0x1, 0x2, "descending", 0x2, Null]
    //     0x5eef10: ldr             x4, [x4, #0xc20]
    // 0x5eef14: r0 = orderBy()
    //     0x5eef14: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5eef18: mov             x1, x0
    // 0x5eef1c: ldur            x3, [fp, #-0x68]
    // 0x5eef20: r2 = "user_token"
    //     0x5eef20: ldr             x2, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x5eef24: r0 = where()
    //     0x5eef24: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5eef28: mov             x1, x0
    // 0x5eef2c: r2 = 3
    //     0x5eef2c: mov             x2, #3
    // 0x5eef30: r0 = limit()
    //     0x5eef30: bl              #0x5ee424  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::limit
    // 0x5eef34: mov             x1, x0
    // 0x5eef38: r0 = get()
    //     0x5eef38: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5eef3c: mov             x1, x0
    // 0x5eef40: stur            x1, [fp, #-0x70]
    // 0x5eef44: r0 = Await()
    //     0x5eef44: bl              #0x3dd188  ; AwaitStub
    // 0x5eef48: mov             x1, x0
    // 0x5eef4c: stur            x0, [fp, #-0x70]
    // 0x5eef50: r0 = docs()
    //     0x5eef50: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5eef54: r1 = Function '<anonymous closure>':.
    //     0x5eef54: add             x1, PP, #0x19, lsl #12  ; [pp+0x19c28] AnonymousClosure: (0x5eefc4), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getLastNotifications (0x5eeeac)
    //     0x5eef58: ldr             x1, [x1, #0xc28]
    // 0x5eef5c: r2 = Null
    //     0x5eef5c: mov             x2, NULL
    // 0x5eef60: stur            x0, [fp, #-0x78]
    // 0x5eef64: r0 = AllocateClosure()
    //     0x5eef64: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5eef68: r16 = <NotificationModel>
    //     0x5eef68: add             x16, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x5eef6c: ldr             x16, [x16, #0xdb8]
    // 0x5eef70: ldur            lr, [fp, #-0x78]
    // 0x5eef74: stp             lr, x16, [SP, #8]
    // 0x5eef78: str             x0, [SP]
    // 0x5eef7c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5eef7c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5eef80: r0 = map()
    //     0x5eef80: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5eef84: stur            x0, [fp, #-0x80]
    // 0x5eef88: LoadField: r3 = r0->field_7
    //     0x5eef88: ldur            w3, [x0, #7]
    // 0x5eef8c: DecompressPointer r3
    //     0x5eef8c: add             x3, x3, HEAP, lsl #32
    // 0x5eef90: mov             x1, x3
    // 0x5eef94: mov             x2, x0
    // 0x5eef98: stur            x3, [fp, #-0x78]
    // 0x5eef9c: r0 = _GrowableList.of()
    //     0x5eef9c: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5eefa0: r0 = ReturnAsyncNotFuture()
    //     0x5eefa0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eefa4: sub             SP, fp, #0x98
    // 0x5eefa8: r1 = <NotificationModel>
    //     0x5eefa8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x5eefac: ldr             x1, [x1, #0xdb8]
    // 0x5eefb0: r2 = 0
    //     0x5eefb0: mov             x2, #0
    // 0x5eefb4: r0 = _GrowableList()
    //     0x5eefb4: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5eefb8: r0 = ReturnAsyncNotFuture()
    //     0x5eefb8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5eefbc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eefbc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eefc0: b               #0x5eeed4
  }
  [closure] NotificationModel <anonymous closure>(dynamic, QueryDocumentSnapshot<Object?>) {
    // ** addr: 0x5eefc4, size: 0x34
    // 0x5eefc4: EnterFrame
    //     0x5eefc4: stp             fp, lr, [SP, #-0x10]!
    //     0x5eefc8: mov             fp, SP
    // 0x5eefcc: CheckStackOverflow
    //     0x5eefcc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5eefd0: cmp             SP, x16
    //     0x5eefd4: b.ls            #0x5eeff0
    // 0x5eefd8: ldr             x2, [fp, #0x10]
    // 0x5eefdc: r1 = Null
    //     0x5eefdc: mov             x1, NULL
    // 0x5eefe0: r0 = NotificationModel.fromFirestore()
    //     0x5eefe0: bl              #0x5eeff8  ; [package:umrem_demo/features/admin/models/notification_model.dart] NotificationModel::NotificationModel.fromFirestore
    // 0x5eefe4: LeaveFrame
    //     0x5eefe4: mov             SP, fp
    //     0x5eefe8: ldp             fp, lr, [SP], #0x10
    // 0x5eefec: ret
    //     0x5eefec: ret             
    // 0x5eeff0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5eeff0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5eeff4: b               #0x5eefd8
  }
  _ getNotificationsByAgency(/* No info */) async {
    // ** addr: 0x5ef348, size: 0x11c
    // 0x5ef348: EnterFrame
    //     0x5ef348: stp             fp, lr, [SP, #-0x10]!
    //     0x5ef34c: mov             fp, SP
    // 0x5ef350: AllocStack(0x98)
    //     0x5ef350: sub             SP, SP, #0x98
    // 0x5ef354: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x5ef354: stur            NULL, [fp, #-8]
    //     0x5ef358: mov             x3, x2
    //     0x5ef35c: stur            x1, [fp, #-0x60]
    //     0x5ef360: stur            x2, [fp, #-0x68]
    // 0x5ef364: CheckStackOverflow
    //     0x5ef364: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef368: cmp             SP, x16
    //     0x5ef36c: b.ls            #0x5ef45c
    // 0x5ef370: InitAsync() -> Future<List<NotificationModel>>
    //     0x5ef370: add             x0, PP, #0x19, lsl #12  ; [pp+0x19c18] TypeArguments: <List<NotificationModel>>
    //     0x5ef374: ldr             x0, [x0, #0xc18]
    //     0x5ef378: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ef37c: ldur            x0, [fp, #-0x60]
    // 0x5ef380: LoadField: r1 = r0->field_7
    //     0x5ef380: ldur            w1, [x0, #7]
    // 0x5ef384: DecompressPointer r1
    //     0x5ef384: add             x1, x1, HEAP, lsl #32
    // 0x5ef388: r2 = "notifications"
    //     0x5ef388: add             x2, PP, #0x18, lsl #12  ; [pp+0x18aa8] "notifications"
    //     0x5ef38c: ldr             x2, [x2, #0xaa8]
    // 0x5ef390: r0 = collection()
    //     0x5ef390: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5ef394: mov             x1, x0
    // 0x5ef398: ldur            x3, [fp, #-0x68]
    // 0x5ef39c: r2 = "agency_id"
    //     0x5ef39c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5ef3a0: ldr             x2, [x2, #0x40]
    // 0x5ef3a4: r0 = where()
    //     0x5ef3a4: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x5ef3a8: r16 = true
    //     0x5ef3a8: add             x16, NULL, #0x20  ; true
    // 0x5ef3ac: str             x16, [SP]
    // 0x5ef3b0: mov             x1, x0
    // 0x5ef3b4: r2 = "created_at"
    //     0x5ef3b4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x5ef3b8: ldr             x2, [x2, #0xc00]
    // 0x5ef3bc: r4 = const [0, 0x3, 0x1, 0x2, descending, 0x2, null]
    //     0x5ef3bc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19c20] List(7) [0, 0x3, 0x1, 0x2, "descending", 0x2, Null]
    //     0x5ef3c0: ldr             x4, [x4, #0xc20]
    // 0x5ef3c4: r0 = orderBy()
    //     0x5ef3c4: bl              #0x5d6608  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::orderBy
    // 0x5ef3c8: mov             x1, x0
    // 0x5ef3cc: r2 = 3
    //     0x5ef3cc: mov             x2, #3
    // 0x5ef3d0: r0 = limit()
    //     0x5ef3d0: bl              #0x5ee424  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::limit
    // 0x5ef3d4: mov             x1, x0
    // 0x5ef3d8: r0 = get()
    //     0x5ef3d8: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x5ef3dc: mov             x1, x0
    // 0x5ef3e0: stur            x1, [fp, #-0x70]
    // 0x5ef3e4: r0 = Await()
    //     0x5ef3e4: bl              #0x3dd188  ; AwaitStub
    // 0x5ef3e8: mov             x1, x0
    // 0x5ef3ec: stur            x0, [fp, #-0x70]
    // 0x5ef3f0: r0 = docs()
    //     0x5ef3f0: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x5ef3f4: r1 = Function '<anonymous closure>':.
    //     0x5ef3f4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19c80] AnonymousClosure: (0x5eefc4), in [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getLastNotifications (0x5eeeac)
    //     0x5ef3f8: ldr             x1, [x1, #0xc80]
    // 0x5ef3fc: r2 = Null
    //     0x5ef3fc: mov             x2, NULL
    // 0x5ef400: stur            x0, [fp, #-0x78]
    // 0x5ef404: r0 = AllocateClosure()
    //     0x5ef404: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ef408: r16 = <NotificationModel>
    //     0x5ef408: add             x16, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x5ef40c: ldr             x16, [x16, #0xdb8]
    // 0x5ef410: ldur            lr, [fp, #-0x78]
    // 0x5ef414: stp             lr, x16, [SP, #8]
    // 0x5ef418: str             x0, [SP]
    // 0x5ef41c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5ef41c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5ef420: r0 = map()
    //     0x5ef420: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x5ef424: stur            x0, [fp, #-0x80]
    // 0x5ef428: LoadField: r3 = r0->field_7
    //     0x5ef428: ldur            w3, [x0, #7]
    // 0x5ef42c: DecompressPointer r3
    //     0x5ef42c: add             x3, x3, HEAP, lsl #32
    // 0x5ef430: mov             x1, x3
    // 0x5ef434: mov             x2, x0
    // 0x5ef438: stur            x3, [fp, #-0x78]
    // 0x5ef43c: r0 = _GrowableList.of()
    //     0x5ef43c: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x5ef440: r0 = ReturnAsyncNotFuture()
    //     0x5ef440: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef444: sub             SP, fp, #0x98
    // 0x5ef448: r1 = <NotificationModel>
    //     0x5ef448: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x5ef44c: ldr             x1, [x1, #0xdb8]
    // 0x5ef450: r2 = 0
    //     0x5ef450: mov             x2, #0
    // 0x5ef454: r0 = _GrowableList()
    //     0x5ef454: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5ef458: r0 = ReturnAsyncNotFuture()
    //     0x5ef458: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef45c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef45c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef460: b               #0x5ef370
  }
  _ updateUserFcmToken(/* No info */) async {
    // ** addr: 0x5ef5f4, size: 0x120
    // 0x5ef5f4: EnterFrame
    //     0x5ef5f4: stp             fp, lr, [SP, #-0x10]!
    //     0x5ef5f8: mov             fp, SP
    // 0x5ef5fc: AllocStack(0x98)
    //     0x5ef5fc: sub             SP, SP, #0x98
    // 0x5ef600: SetupParameters(FirestoreService this /* r1 => r1, fp-0x68 */, dynamic _ /* r2 => r2, fp-0x70 */, dynamic _ /* r3 => r3, fp-0x78 */)
    //     0x5ef600: stur            NULL, [fp, #-8]
    //     0x5ef604: stur            x1, [fp, #-0x68]
    //     0x5ef608: stur            x2, [fp, #-0x70]
    //     0x5ef60c: stur            x3, [fp, #-0x78]
    // 0x5ef610: CheckStackOverflow
    //     0x5ef610: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef614: cmp             SP, x16
    //     0x5ef618: b.ls            #0x5ef70c
    // 0x5ef61c: InitAsync() -> Future<bool>
    //     0x5ef61c: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5ef620: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ef624: ldur            x3, [fp, #-0x68]
    // 0x5ef628: ldur            x0, [fp, #-0x78]
    // 0x5ef62c: LoadField: r1 = r3->field_7
    //     0x5ef62c: ldur            w1, [x3, #7]
    // 0x5ef630: DecompressPointer r1
    //     0x5ef630: add             x1, x1, HEAP, lsl #32
    // 0x5ef634: r2 = "users"
    //     0x5ef634: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x5ef638: ldr             x2, [x2, #0x808]
    // 0x5ef63c: r0 = collection()
    //     0x5ef63c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5ef640: ldur            x16, [fp, #-0x70]
    // 0x5ef644: str             x16, [SP]
    // 0x5ef648: mov             x1, x0
    // 0x5ef64c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x5ef64c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x5ef650: r0 = doc()
    //     0x5ef650: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5ef654: r1 = Null
    //     0x5ef654: mov             x1, NULL
    // 0x5ef658: r2 = 8
    //     0x5ef658: mov             x2, #8
    // 0x5ef65c: stur            x0, [fp, #-0x80]
    // 0x5ef660: r0 = AllocateArray()
    //     0x5ef660: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ef664: stur            x0, [fp, #-0x88]
    // 0x5ef668: r16 = "fcm_token"
    //     0x5ef668: add             x16, PP, #0x15, lsl #12  ; [pp+0x157d0] "fcm_token"
    //     0x5ef66c: ldr             x16, [x16, #0x7d0]
    // 0x5ef670: StoreField: r0->field_f = r16
    //     0x5ef670: stur            w16, [x0, #0xf]
    // 0x5ef674: ldur            x1, [fp, #-0x78]
    // 0x5ef678: StoreField: r0->field_13 = r1
    //     0x5ef678: stur            w1, [x0, #0x13]
    // 0x5ef67c: r16 = "updated_at"
    //     0x5ef67c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x5ef680: ldr             x16, [x16, #0x58]
    // 0x5ef684: ArrayStore: r0[0] = r16  ; List_4
    //     0x5ef684: stur            w16, [x0, #0x17]
    // 0x5ef688: r0 = serverTimestamp()
    //     0x5ef688: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x5ef68c: ldur            x1, [fp, #-0x88]
    // 0x5ef690: ArrayStore: r1[3] = r0  ; List_4
    //     0x5ef690: add             x25, x1, #0x1b
    //     0x5ef694: str             w0, [x25]
    //     0x5ef698: tbz             w0, #0, #0x5ef6b4
    //     0x5ef69c: ldurb           w16, [x1, #-1]
    //     0x5ef6a0: ldurb           w17, [x0, #-1]
    //     0x5ef6a4: and             x16, x17, x16, lsr #2
    //     0x5ef6a8: tst             x16, HEAP, lsr #32
    //     0x5ef6ac: b.eq            #0x5ef6b4
    //     0x5ef6b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5ef6b4: r16 = <String, Object>
    //     0x5ef6b4: ldr             x16, [PP, #0x120]  ; [pp+0x120] TypeArguments: <String, Object>
    // 0x5ef6b8: ldur            lr, [fp, #-0x88]
    // 0x5ef6bc: stp             lr, x16, [SP]
    // 0x5ef6c0: r0 = Map._fromLiteral()
    //     0x5ef6c0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5ef6c4: stur            x0, [fp, #-0x88]
    // 0x5ef6c8: r0 = SetOptions()
    //     0x5ef6c8: bl              #0x5ef714  ; AllocateSetOptionsStub -> SetOptions (size=0x10)
    // 0x5ef6cc: mov             x1, x0
    // 0x5ef6d0: r0 = true
    //     0x5ef6d0: add             x0, NULL, #0x20  ; true
    // 0x5ef6d4: StoreField: r1->field_7 = r0
    //     0x5ef6d4: stur            w0, [x1, #7]
    // 0x5ef6d8: str             x1, [SP]
    // 0x5ef6dc: ldur            x1, [fp, #-0x80]
    // 0x5ef6e0: ldur            x2, [fp, #-0x88]
    // 0x5ef6e4: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x5ef6e4: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x5ef6e8: r0 = set()
    //     0x5ef6e8: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x5ef6ec: mov             x1, x0
    // 0x5ef6f0: stur            x1, [fp, #-0x80]
    // 0x5ef6f4: r0 = Await()
    //     0x5ef6f4: bl              #0x3dd188  ; AwaitStub
    // 0x5ef6f8: r0 = true
    //     0x5ef6f8: add             x0, NULL, #0x20  ; true
    // 0x5ef6fc: r0 = ReturnAsyncNotFuture()
    //     0x5ef6fc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef700: sub             SP, fp, #0x98
    // 0x5ef704: r0 = false
    //     0x5ef704: add             x0, NULL, #0x30  ; false
    // 0x5ef708: r0 = ReturnAsyncNotFuture()
    //     0x5ef708: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef70c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef70c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef710: b               #0x5ef61c
  }
  _ logoutUserFcmToken(/* No info */) async {
    // ** addr: 0x6d00e0, size: 0x114
    // 0x6d00e0: EnterFrame
    //     0x6d00e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d00e4: mov             fp, SP
    // 0x6d00e8: AllocStack(0x88)
    //     0x6d00e8: sub             SP, SP, #0x88
    // 0x6d00ec: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x6d00ec: stur            NULL, [fp, #-8]
    //     0x6d00f0: stur            x1, [fp, #-0x60]
    //     0x6d00f4: stur            x2, [fp, #-0x68]
    // 0x6d00f8: CheckStackOverflow
    //     0x6d00f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d00fc: cmp             SP, x16
    //     0x6d0100: b.ls            #0x6d01ec
    // 0x6d0104: InitAsync() -> Future<void?>
    //     0x6d0104: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d0108: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d010c: ldur            x0, [fp, #-0x60]
    // 0x6d0110: LoadField: r1 = r0->field_7
    //     0x6d0110: ldur            w1, [x0, #7]
    // 0x6d0114: DecompressPointer r1
    //     0x6d0114: add             x1, x1, HEAP, lsl #32
    // 0x6d0118: r2 = "users"
    //     0x6d0118: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6d011c: ldr             x2, [x2, #0x808]
    // 0x6d0120: r0 = collection()
    //     0x6d0120: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d0124: ldur            x16, [fp, #-0x68]
    // 0x6d0128: str             x16, [SP]
    // 0x6d012c: mov             x1, x0
    // 0x6d0130: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6d0130: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6d0134: r0 = doc()
    //     0x6d0134: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d0138: r1 = Null
    //     0x6d0138: mov             x1, NULL
    // 0x6d013c: r2 = 8
    //     0x6d013c: mov             x2, #8
    // 0x6d0140: stur            x0, [fp, #-0x70]
    // 0x6d0144: r0 = AllocateArray()
    //     0x6d0144: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d0148: stur            x0, [fp, #-0x78]
    // 0x6d014c: r16 = "fcm_token"
    //     0x6d014c: add             x16, PP, #0x15, lsl #12  ; [pp+0x157d0] "fcm_token"
    //     0x6d0150: ldr             x16, [x16, #0x7d0]
    // 0x6d0154: StoreField: r0->field_f = r16
    //     0x6d0154: stur            w16, [x0, #0xf]
    // 0x6d0158: StoreField: r0->field_13 = rNULL
    //     0x6d0158: stur            NULL, [x0, #0x13]
    // 0x6d015c: r16 = "updated_at"
    //     0x6d015c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6d0160: ldr             x16, [x16, #0x58]
    // 0x6d0164: ArrayStore: r0[0] = r16  ; List_4
    //     0x6d0164: stur            w16, [x0, #0x17]
    // 0x6d0168: r0 = serverTimestamp()
    //     0x6d0168: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6d016c: ldur            x1, [fp, #-0x78]
    // 0x6d0170: ArrayStore: r1[3] = r0  ; List_4
    //     0x6d0170: add             x25, x1, #0x1b
    //     0x6d0174: str             w0, [x25]
    //     0x6d0178: tbz             w0, #0, #0x6d0194
    //     0x6d017c: ldurb           w16, [x1, #-1]
    //     0x6d0180: ldurb           w17, [x0, #-1]
    //     0x6d0184: and             x16, x17, x16, lsr #2
    //     0x6d0188: tst             x16, HEAP, lsr #32
    //     0x6d018c: b.eq            #0x6d0194
    //     0x6d0190: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d0194: r16 = <String, FieldValue?>
    //     0x6d0194: add             x16, PP, #0x15, lsl #12  ; [pp+0x15be0] TypeArguments: <String, FieldValue?>
    //     0x6d0198: ldr             x16, [x16, #0xbe0]
    // 0x6d019c: ldur            lr, [fp, #-0x78]
    // 0x6d01a0: stp             lr, x16, [SP]
    // 0x6d01a4: r0 = Map._fromLiteral()
    //     0x6d01a4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6d01a8: stur            x0, [fp, #-0x78]
    // 0x6d01ac: r0 = SetOptions()
    //     0x6d01ac: bl              #0x5ef714  ; AllocateSetOptionsStub -> SetOptions (size=0x10)
    // 0x6d01b0: mov             x1, x0
    // 0x6d01b4: r0 = true
    //     0x6d01b4: add             x0, NULL, #0x20  ; true
    // 0x6d01b8: StoreField: r1->field_7 = r0
    //     0x6d01b8: stur            w0, [x1, #7]
    // 0x6d01bc: str             x1, [SP]
    // 0x6d01c0: ldur            x1, [fp, #-0x70]
    // 0x6d01c4: ldur            x2, [fp, #-0x78]
    // 0x6d01c8: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6d01c8: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6d01cc: r0 = set()
    //     0x6d01cc: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6d01d0: mov             x1, x0
    // 0x6d01d4: stur            x1, [fp, #-0x70]
    // 0x6d01d8: r0 = Await()
    //     0x6d01d8: bl              #0x3dd188  ; AwaitStub
    // 0x6d01dc: b               #0x6d01e4
    // 0x6d01e0: sub             SP, fp, #0x88
    // 0x6d01e4: r0 = Null
    //     0x6d01e4: mov             x0, NULL
    // 0x6d01e8: r0 = ReturnAsyncNotFuture()
    //     0x6d01e8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d01ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d01ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d01f0: b               #0x6d0104
  }
  _ updateEvent(/* No info */) async {
    // ** addr: 0x6d3d60, size: 0xb0
    // 0x6d3d60: EnterFrame
    //     0x6d3d60: stp             fp, lr, [SP, #-0x10]!
    //     0x6d3d64: mov             fp, SP
    // 0x6d3d68: AllocStack(0x78)
    //     0x6d3d68: sub             SP, SP, #0x78
    // 0x6d3d6c: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x6d3d6c: stur            NULL, [fp, #-8]
    //     0x6d3d70: stur            x1, [fp, #-0x60]
    //     0x6d3d74: mov             x16, x2
    //     0x6d3d78: mov             x2, x1
    //     0x6d3d7c: mov             x1, x16
    //     0x6d3d80: stur            x1, [fp, #-0x68]
    // 0x6d3d84: CheckStackOverflow
    //     0x6d3d84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d3d88: cmp             SP, x16
    //     0x6d3d8c: b.ls            #0x6d3e08
    // 0x6d3d90: InitAsync() -> Future<bool>
    //     0x6d3d90: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d3d94: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d3d98: ldur            x3, [fp, #-0x60]
    // 0x6d3d9c: ldur            x0, [fp, #-0x68]
    // 0x6d3da0: LoadField: r1 = r3->field_7
    //     0x6d3da0: ldur            w1, [x3, #7]
    // 0x6d3da4: DecompressPointer r1
    //     0x6d3da4: add             x1, x1, HEAP, lsl #32
    // 0x6d3da8: r2 = "events"
    //     0x6d3da8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15130] "events"
    //     0x6d3dac: ldr             x2, [x2, #0x130]
    // 0x6d3db0: r0 = collection()
    //     0x6d3db0: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d3db4: mov             x1, x0
    // 0x6d3db8: ldur            x0, [fp, #-0x68]
    // 0x6d3dbc: LoadField: r2 = r0->field_7
    //     0x6d3dbc: ldur            w2, [x0, #7]
    // 0x6d3dc0: DecompressPointer r2
    //     0x6d3dc0: add             x2, x2, HEAP, lsl #32
    // 0x6d3dc4: str             x2, [SP]
    // 0x6d3dc8: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6d3dc8: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6d3dcc: r0 = doc()
    //     0x6d3dcc: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d3dd0: ldur            x1, [fp, #-0x68]
    // 0x6d3dd4: stur            x0, [fp, #-0x70]
    // 0x6d3dd8: r0 = toFirestore()
    //     0x6d3dd8: bl              #0x6d43e0  ; [package:umrem_demo/features/admin/models/event_model.dart] EventModel::toFirestore
    // 0x6d3ddc: ldur            x1, [fp, #-0x70]
    // 0x6d3de0: mov             x2, x0
    // 0x6d3de4: r0 = update()
    //     0x6d3de4: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x6d3de8: mov             x1, x0
    // 0x6d3dec: stur            x1, [fp, #-0x70]
    // 0x6d3df0: r0 = Await()
    //     0x6d3df0: bl              #0x3dd188  ; AwaitStub
    // 0x6d3df4: r0 = true
    //     0x6d3df4: add             x0, NULL, #0x20  ; true
    // 0x6d3df8: r0 = ReturnAsyncNotFuture()
    //     0x6d3df8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d3dfc: sub             SP, fp, #0x78
    // 0x6d3e00: r0 = false
    //     0x6d3e00: add             x0, NULL, #0x30  ; false
    // 0x6d3e04: r0 = ReturnAsyncNotFuture()
    //     0x6d3e04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d3e08: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d3e08: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d3e0c: b               #0x6d3d90
  }
  _ createEvent(/* No info */) async {
    // ** addr: 0x6d47bc, size: 0xd8
    // 0x6d47bc: EnterFrame
    //     0x6d47bc: stp             fp, lr, [SP, #-0x10]!
    //     0x6d47c0: mov             fp, SP
    // 0x6d47c4: AllocStack(0x98)
    //     0x6d47c4: sub             SP, SP, #0x98
    // 0x6d47c8: SetupParameters(FirestoreService this /* r1 => r2, fp-0x70 */, dynamic _ /* r2 => r1, fp-0x78 */)
    //     0x6d47c8: stur            NULL, [fp, #-8]
    //     0x6d47cc: stur            x1, [fp, #-0x70]
    //     0x6d47d0: mov             x16, x2
    //     0x6d47d4: mov             x2, x1
    //     0x6d47d8: mov             x1, x16
    //     0x6d47dc: stur            x1, [fp, #-0x78]
    // 0x6d47e0: CheckStackOverflow
    //     0x6d47e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d47e4: cmp             SP, x16
    //     0x6d47e8: b.ls            #0x6d488c
    // 0x6d47ec: InitAsync() -> Future<String?>
    //     0x6d47ec: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6d47f0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d47f4: ldur            x0, [fp, #-0x70]
    // 0x6d47f8: LoadField: r1 = r0->field_7
    //     0x6d47f8: ldur            w1, [x0, #7]
    // 0x6d47fc: DecompressPointer r1
    //     0x6d47fc: add             x1, x1, HEAP, lsl #32
    // 0x6d4800: r2 = "events"
    //     0x6d4800: add             x2, PP, #0x15, lsl #12  ; [pp+0x15130] "events"
    //     0x6d4804: ldr             x2, [x2, #0x130]
    // 0x6d4808: r0 = collection()
    //     0x6d4808: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d480c: mov             x1, x0
    // 0x6d4810: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d4810: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d4814: r0 = doc()
    //     0x6d4814: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d4818: stur            x0, [fp, #-0x88]
    // 0x6d481c: LoadField: r1 = r0->field_7
    //     0x6d481c: ldur            w1, [x0, #7]
    // 0x6d4820: DecompressPointer r1
    //     0x6d4820: add             x1, x1, HEAP, lsl #32
    // 0x6d4824: LoadField: r2 = r1->field_b
    //     0x6d4824: ldur            w2, [x1, #0xb]
    // 0x6d4828: DecompressPointer r2
    //     0x6d4828: add             x2, x2, HEAP, lsl #32
    // 0x6d482c: LoadField: r3 = r2->field_7
    //     0x6d482c: ldur            w3, [x2, #7]
    // 0x6d4830: DecompressPointer r3
    //     0x6d4830: add             x3, x3, HEAP, lsl #32
    // 0x6d4834: mov             x1, x3
    // 0x6d4838: stur            x3, [fp, #-0x80]
    // 0x6d483c: r0 = last()
    //     0x6d483c: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6d4840: ldur            x1, [fp, #-0x78]
    // 0x6d4844: mov             x2, x0
    // 0x6d4848: stur            x0, [fp, #-0x90]
    // 0x6d484c: r0 = copyWith()
    //     0x6d484c: bl              #0x6d4894  ; [package:umrem_demo/features/admin/models/event_model.dart] EventModel::copyWith
    // 0x6d4850: mov             x1, x0
    // 0x6d4854: r0 = toFirestore()
    //     0x6d4854: bl              #0x6d43e0  ; [package:umrem_demo/features/admin/models/event_model.dart] EventModel::toFirestore
    // 0x6d4858: ldur            x1, [fp, #-0x88]
    // 0x6d485c: mov             x2, x0
    // 0x6d4860: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d4860: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d4864: r0 = set()
    //     0x6d4864: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6d4868: mov             x1, x0
    // 0x6d486c: stur            x1, [fp, #-0x98]
    // 0x6d4870: r0 = Await()
    //     0x6d4870: bl              #0x3dd188  ; AwaitStub
    // 0x6d4874: ldur            x1, [fp, #-0x80]
    // 0x6d4878: r0 = last()
    //     0x6d4878: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6d487c: r0 = ReturnAsync()
    //     0x6d487c: b               #0x427094  ; ReturnAsyncStub
    // 0x6d4880: sub             SP, fp, #0x98
    // 0x6d4884: r0 = Null
    //     0x6d4884: mov             x0, NULL
    // 0x6d4888: r0 = ReturnAsyncNotFuture()
    //     0x6d4888: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d488c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d488c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d4890: b               #0x6d47ec
  }
  _ deleteAgency(/* No info */) async {
    // ** addr: 0x6d695c, size: 0x78
    // 0x6d695c: EnterFrame
    //     0x6d695c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6960: mov             fp, SP
    // 0x6d6964: AllocStack(0x78)
    //     0x6d6964: sub             SP, SP, #0x78
    // 0x6d6968: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x6d6968: stur            NULL, [fp, #-8]
    //     0x6d696c: stur            x1, [fp, #-0x60]
    //     0x6d6970: stur            x2, [fp, #-0x68]
    // 0x6d6974: CheckStackOverflow
    //     0x6d6974: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d6978: cmp             SP, x16
    //     0x6d697c: b.ls            #0x6d69cc
    // 0x6d6980: InitAsync() -> Future<bool>
    //     0x6d6980: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d6984: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d6988: ldur            x1, [fp, #-0x60]
    // 0x6d698c: r0 = agenciesCollection()
    //     0x6d698c: bl              #0x5dbb04  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::agenciesCollection
    // 0x6d6990: ldur            x16, [fp, #-0x68]
    // 0x6d6994: str             x16, [SP]
    // 0x6d6998: mov             x1, x0
    // 0x6d699c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6d699c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6d69a0: r0 = doc()
    //     0x6d69a0: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d69a4: mov             x1, x0
    // 0x6d69a8: r0 = delete()
    //     0x6d69a8: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x6d69ac: mov             x1, x0
    // 0x6d69b0: stur            x1, [fp, #-0x70]
    // 0x6d69b4: r0 = Await()
    //     0x6d69b4: bl              #0x3dd188  ; AwaitStub
    // 0x6d69b8: r0 = true
    //     0x6d69b8: add             x0, NULL, #0x20  ; true
    // 0x6d69bc: r0 = ReturnAsyncNotFuture()
    //     0x6d69bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d69c0: sub             SP, fp, #0x78
    // 0x6d69c4: r0 = false
    //     0x6d69c4: add             x0, NULL, #0x30  ; false
    // 0x6d69c8: r0 = ReturnAsyncNotFuture()
    //     0x6d69c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d69cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d69cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d69d0: b               #0x6d6980
  }
  _ deleteTrip(/* No info */) async {
    // ** addr: 0x6d6fe4, size: 0x22c
    // 0x6d6fe4: EnterFrame
    //     0x6d6fe4: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6fe8: mov             fp, SP
    // 0x6d6fec: AllocStack(0xa0)
    //     0x6d6fec: sub             SP, SP, #0xa0
    // 0x6d6ff0: SetupParameters(FirestoreService this /* r1 => r1, fp-0x70 */, dynamic _ /* r2 => r2, fp-0x78 */)
    //     0x6d6ff0: stur            NULL, [fp, #-8]
    //     0x6d6ff4: stur            x1, [fp, #-0x70]
    //     0x6d6ff8: stur            x2, [fp, #-0x78]
    // 0x6d6ffc: CheckStackOverflow
    //     0x6d6ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d7000: cmp             SP, x16
    //     0x6d7004: b.ls            #0x6d71fc
    // 0x6d7008: InitAsync() -> Future<bool>
    //     0x6d7008: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d700c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d7010: ldur            x0, [fp, #-0x70]
    // 0x6d7014: mov             x1, x0
    // 0x6d7018: ldur            x2, [fp, #-0x78]
    // 0x6d701c: r0 = _unlinkUsersFromTrip()
    //     0x6d701c: bl              #0x6d7210  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_unlinkUsersFromTrip
    // 0x6d7020: mov             x1, x0
    // 0x6d7024: stur            x1, [fp, #-0x80]
    // 0x6d7028: r0 = Await()
    //     0x6d7028: bl              #0x3dd188  ; AwaitStub
    // 0x6d702c: ldur            x0, [fp, #-0x70]
    // 0x6d7030: LoadField: r3 = r0->field_7
    //     0x6d7030: ldur            w3, [x0, #7]
    // 0x6d7034: DecompressPointer r3
    //     0x6d7034: add             x3, x3, HEAP, lsl #32
    // 0x6d7038: mov             x1, x3
    // 0x6d703c: stur            x3, [fp, #-0x80]
    // 0x6d7040: r2 = "trips"
    //     0x6d7040: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x6d7044: ldr             x2, [x2, #0x88]
    // 0x6d7048: r0 = collection()
    //     0x6d7048: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d704c: ldur            x16, [fp, #-0x78]
    // 0x6d7050: str             x16, [SP]
    // 0x6d7054: mov             x1, x0
    // 0x6d7058: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6d7058: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6d705c: r0 = doc()
    //     0x6d705c: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d7060: mov             x1, x0
    // 0x6d7064: r0 = delete()
    //     0x6d7064: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x6d7068: mov             x1, x0
    // 0x6d706c: stur            x1, [fp, #-0x88]
    // 0x6d7070: r0 = Await()
    //     0x6d7070: bl              #0x3dd188  ; AwaitStub
    // 0x6d7074: ldur            x1, [fp, #-0x80]
    // 0x6d7078: r2 = "trip_managers"
    //     0x6d7078: add             x2, PP, #0x13, lsl #12  ; [pp+0x13be8] "trip_managers"
    //     0x6d707c: ldr             x2, [x2, #0xbe8]
    // 0x6d7080: r0 = collection()
    //     0x6d7080: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d7084: mov             x1, x0
    // 0x6d7088: ldur            x3, [fp, #-0x78]
    // 0x6d708c: r2 = "trip_id"
    //     0x6d708c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x6d7090: ldr             x2, [x2, #0xbf0]
    // 0x6d7094: r0 = where()
    //     0x6d7094: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6d7098: mov             x1, x0
    // 0x6d709c: r0 = get()
    //     0x6d709c: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6d70a0: mov             x1, x0
    // 0x6d70a4: stur            x1, [fp, #-0x80]
    // 0x6d70a8: r0 = Await()
    //     0x6d70a8: bl              #0x3dd188  ; AwaitStub
    // 0x6d70ac: mov             x1, x0
    // 0x6d70b0: stur            x0, [fp, #-0x80]
    // 0x6d70b4: r0 = docs()
    //     0x6d70b4: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6d70b8: stur            x0, [fp, #-0x90]
    // 0x6d70bc: LoadField: r2 = r0->field_7
    //     0x6d70bc: ldur            w2, [x0, #7]
    // 0x6d70c0: DecompressPointer r2
    //     0x6d70c0: add             x2, x2, HEAP, lsl #32
    // 0x6d70c4: mov             x1, x2
    // 0x6d70c8: stur            x2, [fp, #-0x88]
    // 0x6d70cc: r0 = ListIterator()
    //     0x6d70cc: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x6d70d0: mov             x3, x0
    // 0x6d70d4: ldur            x2, [fp, #-0x90]
    // 0x6d70d8: stur            x3, [fp, #-0x78]
    // 0x6d70dc: StoreField: r3->field_b = r2
    //     0x6d70dc: stur            w2, [x3, #0xb]
    // 0x6d70e0: LoadField: r0 = r2->field_b
    //     0x6d70e0: ldur            w0, [x2, #0xb]
    // 0x6d70e4: r4 = LoadInt32Instr(r0)
    //     0x6d70e4: sbfx            x4, x0, #1, #0x1f
    // 0x6d70e8: stur            x4, [fp, #-0x98]
    // 0x6d70ec: StoreField: r3->field_f = r4
    //     0x6d70ec: stur            x4, [x3, #0xf]
    // 0x6d70f0: ArrayStore: r3[0] = rZR  ; List_8
    //     0x6d70f0: stur            xzr, [x3, #0x17]
    // 0x6d70f4: CheckStackOverflow
    //     0x6d70f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d70f8: cmp             SP, x16
    //     0x6d70fc: b.ls            #0x6d7204
    // 0x6d7100: LoadField: r0 = r2->field_b
    //     0x6d7100: ldur            w0, [x2, #0xb]
    // 0x6d7104: r1 = LoadInt32Instr(r0)
    //     0x6d7104: sbfx            x1, x0, #1, #0x1f
    // 0x6d7108: cmp             x4, x1
    // 0x6d710c: b.ne            #0x6d71d4
    // 0x6d7110: ArrayLoad: r5 = r3[0]  ; List_8
    //     0x6d7110: ldur            x5, [x3, #0x17]
    // 0x6d7114: cmp             x5, x1
    // 0x6d7118: b.ge            #0x6d71b8
    // 0x6d711c: mov             x0, x1
    // 0x6d7120: mov             x1, x5
    // 0x6d7124: cmp             x1, x0
    // 0x6d7128: b.hs            #0x6d720c
    // 0x6d712c: LoadField: r0 = r2->field_f
    //     0x6d712c: ldur            w0, [x2, #0xf]
    // 0x6d7130: DecompressPointer r0
    //     0x6d7130: add             x0, x0, HEAP, lsl #32
    // 0x6d7134: ArrayLoad: r6 = r0[r5]  ; Unknown_4
    //     0x6d7134: add             x16, x0, x5, lsl #2
    //     0x6d7138: ldur            w6, [x16, #0xf]
    // 0x6d713c: DecompressPointer r6
    //     0x6d713c: add             x6, x6, HEAP, lsl #32
    // 0x6d7140: mov             x0, x6
    // 0x6d7144: stur            x6, [fp, #-0x70]
    // 0x6d7148: StoreField: r3->field_1f = r0
    //     0x6d7148: stur            w0, [x3, #0x1f]
    //     0x6d714c: ldurb           w16, [x3, #-1]
    //     0x6d7150: ldurb           w17, [x0, #-1]
    //     0x6d7154: and             x16, x17, x16, lsr #2
    //     0x6d7158: tst             x16, HEAP, lsr #32
    //     0x6d715c: b.eq            #0x6d7164
    //     0x6d7160: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6d7164: add             x0, x5, #1
    // 0x6d7168: ArrayStore: r3[0] = r0  ; List_8
    //     0x6d7168: stur            x0, [x3, #0x17]
    // 0x6d716c: mov             x1, x6
    // 0x6d7170: LoadField: r0 = r1->field_f
    //     0x6d7170: ldur            w0, [x1, #0xf]
    // 0x6d7174: DecompressPointer r0
    //     0x6d7174: add             x0, x0, HEAP, lsl #32
    // 0x6d7178: r16 = Sentinel
    //     0x6d7178: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6d717c: cmp             w0, w16
    // 0x6d7180: b.ne            #0x6d7190
    // 0x6d7184: r2 = reference
    //     0x6d7184: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x6d7188: ldr             x2, [x2, #0xb0]
    // 0x6d718c: r0 = InitLateFinalInstanceField()
    //     0x6d718c: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x6d7190: LoadField: r1 = r0->field_7
    //     0x6d7190: ldur            w1, [x0, #7]
    // 0x6d7194: DecompressPointer r1
    //     0x6d7194: add             x1, x1, HEAP, lsl #32
    // 0x6d7198: r0 = delete()
    //     0x6d7198: bl              #0x6d6a0c  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::delete
    // 0x6d719c: mov             x1, x0
    // 0x6d71a0: stur            x1, [fp, #-0x80]
    // 0x6d71a4: r0 = Await()
    //     0x6d71a4: bl              #0x3dd188  ; AwaitStub
    // 0x6d71a8: ldur            x2, [fp, #-0x90]
    // 0x6d71ac: ldur            x3, [fp, #-0x78]
    // 0x6d71b0: ldur            x4, [fp, #-0x98]
    // 0x6d71b4: b               #0x6d70f4
    // 0x6d71b8: mov             x0, x3
    // 0x6d71bc: StoreField: r0->field_1f = rNULL
    //     0x6d71bc: stur            NULL, [x0, #0x1f]
    // 0x6d71c0: r0 = true
    //     0x6d71c0: add             x0, NULL, #0x20  ; true
    // 0x6d71c4: r0 = ReturnAsyncNotFuture()
    //     0x6d71c4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d71c8: sub             SP, fp, #0xa0
    // 0x6d71cc: r0 = false
    //     0x6d71cc: add             x0, NULL, #0x30  ; false
    // 0x6d71d0: r0 = ReturnAsyncNotFuture()
    //     0x6d71d0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d71d4: mov             x1, x2
    // 0x6d71d8: mov             x0, x3
    // 0x6d71dc: r0 = ConcurrentModificationError()
    //     0x6d71dc: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6d71e0: mov             x1, x0
    // 0x6d71e4: ldur            x0, [fp, #-0x90]
    // 0x6d71e8: stur            x1, [fp, #-0x70]
    // 0x6d71ec: StoreField: r1->field_b = r0
    //     0x6d71ec: stur            w0, [x1, #0xb]
    // 0x6d71f0: mov             x0, x1
    // 0x6d71f4: r0 = Throw()
    //     0x6d71f4: bl              #0x926328  ; ThrowStub
    // 0x6d71f8: brk             #0
    // 0x6d71fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d71fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d7200: b               #0x6d7008
    // 0x6d7204: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d7204: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d7208: b               #0x6d7100
    // 0x6d720c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d720c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _unlinkUsersFromTrip(/* No info */) async {
    // ** addr: 0x6d7210, size: 0x558
    // 0x6d7210: EnterFrame
    //     0x6d7210: stp             fp, lr, [SP, #-0x10]!
    //     0x6d7214: mov             fp, SP
    // 0x6d7218: AllocStack(0x70)
    //     0x6d7218: sub             SP, SP, #0x70
    // 0x6d721c: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r3, fp-0x18 */)
    //     0x6d721c: stur            NULL, [fp, #-8]
    //     0x6d7220: mov             x3, x2
    //     0x6d7224: stur            x1, [fp, #-0x10]
    //     0x6d7228: stur            x2, [fp, #-0x18]
    // 0x6d722c: CheckStackOverflow
    //     0x6d722c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d7230: cmp             SP, x16
    //     0x6d7234: b.ls            #0x6d7750
    // 0x6d7238: InitAsync() -> Future<void?>
    //     0x6d7238: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d723c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d7240: ldur            x0, [fp, #-0x10]
    // 0x6d7244: LoadField: r1 = r0->field_7
    //     0x6d7244: ldur            w1, [x0, #7]
    // 0x6d7248: DecompressPointer r1
    //     0x6d7248: add             x1, x1, HEAP, lsl #32
    // 0x6d724c: r2 = "users"
    //     0x6d724c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6d7250: ldr             x2, [x2, #0x808]
    // 0x6d7254: r0 = collection()
    //     0x6d7254: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d7258: mov             x1, x0
    // 0x6d725c: ldur            x3, [fp, #-0x18]
    // 0x6d7260: r2 = "mekke_seferi_id"
    //     0x6d7260: add             x2, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x6d7264: ldr             x2, [x2, #0x810]
    // 0x6d7268: r0 = where()
    //     0x6d7268: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6d726c: mov             x1, x0
    // 0x6d7270: r0 = get()
    //     0x6d7270: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6d7274: mov             x1, x0
    // 0x6d7278: stur            x1, [fp, #-0x20]
    // 0x6d727c: r0 = Await()
    //     0x6d727c: bl              #0x3dd188  ; AwaitStub
    // 0x6d7280: mov             x1, x0
    // 0x6d7284: r0 = docs()
    //     0x6d7284: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6d7288: stur            x0, [fp, #-0x40]
    // 0x6d728c: LoadField: r2 = r0->field_7
    //     0x6d728c: ldur            w2, [x0, #7]
    // 0x6d7290: DecompressPointer r2
    //     0x6d7290: add             x2, x2, HEAP, lsl #32
    // 0x6d7294: stur            x2, [fp, #-0x38]
    // 0x6d7298: LoadField: r1 = r0->field_b
    //     0x6d7298: ldur            w1, [x0, #0xb]
    // 0x6d729c: r3 = LoadInt32Instr(r1)
    //     0x6d729c: sbfx            x3, x1, #1, #0x1f
    // 0x6d72a0: stur            x3, [fp, #-0x30]
    // 0x6d72a4: r1 = 0
    //     0x6d72a4: mov             x1, #0
    // 0x6d72a8: CheckStackOverflow
    //     0x6d72a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d72ac: cmp             SP, x16
    //     0x6d72b0: b.ls            #0x6d7758
    // 0x6d72b4: LoadField: r4 = r0->field_b
    //     0x6d72b4: ldur            w4, [x0, #0xb]
    // 0x6d72b8: r5 = LoadInt32Instr(r4)
    //     0x6d72b8: sbfx            x5, x4, #1, #0x1f
    // 0x6d72bc: cmp             x3, x5
    // 0x6d72c0: b.ne            #0x6d7734
    // 0x6d72c4: cmp             x1, x5
    // 0x6d72c8: b.ge            #0x6d74b0
    // 0x6d72cc: LoadField: r4 = r0->field_f
    //     0x6d72cc: ldur            w4, [x0, #0xf]
    // 0x6d72d0: DecompressPointer r4
    //     0x6d72d0: add             x4, x4, HEAP, lsl #32
    // 0x6d72d4: ArrayLoad: r5 = r4[r1]  ; Unknown_4
    //     0x6d72d4: add             x16, x4, x1, lsl #2
    //     0x6d72d8: ldur            w5, [x16, #0xf]
    // 0x6d72dc: DecompressPointer r5
    //     0x6d72dc: add             x5, x5, HEAP, lsl #32
    // 0x6d72e0: stur            x5, [fp, #-0x20]
    // 0x6d72e4: add             x4, x1, #1
    // 0x6d72e8: mov             x1, x5
    // 0x6d72ec: stur            x4, [fp, #-0x28]
    // 0x6d72f0: LoadField: r0 = r1->field_f
    //     0x6d72f0: ldur            w0, [x1, #0xf]
    // 0x6d72f4: DecompressPointer r0
    //     0x6d72f4: add             x0, x0, HEAP, lsl #32
    // 0x6d72f8: r16 = Sentinel
    //     0x6d72f8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6d72fc: cmp             w0, w16
    // 0x6d7300: b.ne            #0x6d7310
    // 0x6d7304: r2 = reference
    //     0x6d7304: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x6d7308: ldr             x2, [x2, #0xb0]
    // 0x6d730c: r0 = InitLateFinalInstanceField()
    //     0x6d730c: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x6d7310: r1 = Null
    //     0x6d7310: mov             x1, NULL
    // 0x6d7314: r2 = 12
    //     0x6d7314: mov             x2, #0xc
    // 0x6d7318: stur            x0, [fp, #-0x48]
    // 0x6d731c: r0 = AllocateArray()
    //     0x6d731c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d7320: stur            x0, [fp, #-0x50]
    // 0x6d7324: r16 = "mekke_seferi_id"
    //     0x6d7324: add             x16, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x6d7328: ldr             x16, [x16, #0x810]
    // 0x6d732c: StoreField: r0->field_f = r16
    //     0x6d732c: stur            w16, [x0, #0xf]
    // 0x6d7330: r0 = InitLateStaticField(0xac0) // [package:cloud_firestore/cloud_firestore.dart] FieldValue::_factory
    //     0x6d7330: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6d7334: ldr             x0, [x0, #0x1580]
    //     0x6d7338: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6d733c: cmp             w0, w16
    //     0x6d7340: b.ne            #0x6d7350
    //     0x6d7344: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ca8] Field <FieldValue._factory@577385638>: static late final (offset: 0xac0)
    //     0x6d7348: ldr             x2, [x2, #0xca8]
    //     0x6d734c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6d7350: mov             x1, x0
    // 0x6d7354: stur            x0, [fp, #-0x58]
    // 0x6d7358: r0 = delete()
    //     0x6d7358: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6d735c: stur            x0, [fp, #-0x60]
    // 0x6d7360: r0 = FieldValue()
    //     0x6d7360: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6d7364: mov             x1, x0
    // 0x6d7368: ldur            x0, [fp, #-0x60]
    // 0x6d736c: StoreField: r1->field_b = r0
    //     0x6d736c: stur            w0, [x1, #0xb]
    // 0x6d7370: StoreField: r1->field_7 = r0
    //     0x6d7370: stur            w0, [x1, #7]
    // 0x6d7374: mov             x0, x1
    // 0x6d7378: ldur            x1, [fp, #-0x50]
    // 0x6d737c: ArrayStore: r1[1] = r0  ; List_4
    //     0x6d737c: add             x25, x1, #0x13
    //     0x6d7380: str             w0, [x25]
    //     0x6d7384: tbz             w0, #0, #0x6d73a0
    //     0x6d7388: ldurb           w16, [x1, #-1]
    //     0x6d738c: ldurb           w17, [x0, #-1]
    //     0x6d7390: and             x16, x17, x16, lsr #2
    //     0x6d7394: tst             x16, HEAP, lsr #32
    //     0x6d7398: b.eq            #0x6d73a0
    //     0x6d739c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d73a0: ldur            x0, [fp, #-0x50]
    // 0x6d73a4: r16 = "mekke_otel_id"
    //     0x6d73a4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x6d73a8: ldr             x16, [x16, #0x818]
    // 0x6d73ac: ArrayStore: r0[0] = r16  ; List_4
    //     0x6d73ac: stur            w16, [x0, #0x17]
    // 0x6d73b0: ldur            x1, [fp, #-0x58]
    // 0x6d73b4: r0 = delete()
    //     0x6d73b4: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6d73b8: stur            x0, [fp, #-0x60]
    // 0x6d73bc: r0 = FieldValue()
    //     0x6d73bc: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6d73c0: mov             x1, x0
    // 0x6d73c4: ldur            x0, [fp, #-0x60]
    // 0x6d73c8: StoreField: r1->field_b = r0
    //     0x6d73c8: stur            w0, [x1, #0xb]
    // 0x6d73cc: StoreField: r1->field_7 = r0
    //     0x6d73cc: stur            w0, [x1, #7]
    // 0x6d73d0: mov             x0, x1
    // 0x6d73d4: ldur            x1, [fp, #-0x50]
    // 0x6d73d8: ArrayStore: r1[3] = r0  ; List_4
    //     0x6d73d8: add             x25, x1, #0x1b
    //     0x6d73dc: str             w0, [x25]
    //     0x6d73e0: tbz             w0, #0, #0x6d73fc
    //     0x6d73e4: ldurb           w16, [x1, #-1]
    //     0x6d73e8: ldurb           w17, [x0, #-1]
    //     0x6d73ec: and             x16, x17, x16, lsr #2
    //     0x6d73f0: tst             x16, HEAP, lsr #32
    //     0x6d73f4: b.eq            #0x6d73fc
    //     0x6d73f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d73fc: ldur            x0, [fp, #-0x50]
    // 0x6d7400: r16 = "mekke_oda_id"
    //     0x6d7400: add             x16, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x6d7404: ldr             x16, [x16, #0x820]
    // 0x6d7408: StoreField: r0->field_1f = r16
    //     0x6d7408: stur            w16, [x0, #0x1f]
    // 0x6d740c: ldur            x1, [fp, #-0x58]
    // 0x6d7410: r0 = delete()
    //     0x6d7410: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6d7414: stur            x0, [fp, #-0x58]
    // 0x6d7418: r0 = FieldValue()
    //     0x6d7418: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6d741c: mov             x1, x0
    // 0x6d7420: ldur            x0, [fp, #-0x58]
    // 0x6d7424: StoreField: r1->field_b = r0
    //     0x6d7424: stur            w0, [x1, #0xb]
    // 0x6d7428: StoreField: r1->field_7 = r0
    //     0x6d7428: stur            w0, [x1, #7]
    // 0x6d742c: mov             x0, x1
    // 0x6d7430: ldur            x1, [fp, #-0x50]
    // 0x6d7434: ArrayStore: r1[5] = r0  ; List_4
    //     0x6d7434: add             x25, x1, #0x23
    //     0x6d7438: str             w0, [x25]
    //     0x6d743c: tbz             w0, #0, #0x6d7458
    //     0x6d7440: ldurb           w16, [x1, #-1]
    //     0x6d7444: ldurb           w17, [x0, #-1]
    //     0x6d7448: and             x16, x17, x16, lsr #2
    //     0x6d744c: tst             x16, HEAP, lsr #32
    //     0x6d7450: b.eq            #0x6d7458
    //     0x6d7454: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d7458: r16 = <Object, Object?>
    //     0x6d7458: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x6d745c: ldr             x16, [x16, #0x828]
    // 0x6d7460: ldur            lr, [fp, #-0x50]
    // 0x6d7464: stp             lr, x16, [SP]
    // 0x6d7468: r0 = Map._fromLiteral()
    //     0x6d7468: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6d746c: mov             x1, x0
    // 0x6d7470: ldur            x0, [fp, #-0x48]
    // 0x6d7474: LoadField: r2 = r0->field_7
    //     0x6d7474: ldur            w2, [x0, #7]
    // 0x6d7478: DecompressPointer r2
    //     0x6d7478: add             x2, x2, HEAP, lsl #32
    // 0x6d747c: stur            x2, [fp, #-0x50]
    // 0x6d7480: r0 = replaceValueWithDelegatesInMapFieldPath()
    //     0x6d7480: bl              #0x6d41d4  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMapFieldPath
    // 0x6d7484: ldur            x1, [fp, #-0x50]
    // 0x6d7488: mov             x2, x0
    // 0x6d748c: r0 = update()
    //     0x6d748c: bl              #0x6d3e60  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::update
    // 0x6d7490: mov             x1, x0
    // 0x6d7494: stur            x1, [fp, #-0x48]
    // 0x6d7498: r0 = Await()
    //     0x6d7498: bl              #0x3dd188  ; AwaitStub
    // 0x6d749c: ldur            x1, [fp, #-0x28]
    // 0x6d74a0: ldur            x0, [fp, #-0x40]
    // 0x6d74a4: ldur            x2, [fp, #-0x38]
    // 0x6d74a8: ldur            x3, [fp, #-0x30]
    // 0x6d74ac: b               #0x6d72a8
    // 0x6d74b0: ldur            x1, [fp, #-0x10]
    // 0x6d74b4: r0 = usersCollection()
    //     0x6d74b4: bl              #0x5da5b0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::usersCollection
    // 0x6d74b8: mov             x1, x0
    // 0x6d74bc: ldur            x3, [fp, #-0x18]
    // 0x6d74c0: r2 = "medine_seferi_id"
    //     0x6d74c0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x6d74c4: ldr             x2, [x2, #0x830]
    // 0x6d74c8: r0 = where()
    //     0x6d74c8: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6d74cc: mov             x1, x0
    // 0x6d74d0: r0 = get()
    //     0x6d74d0: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6d74d4: mov             x1, x0
    // 0x6d74d8: stur            x1, [fp, #-0x10]
    // 0x6d74dc: r0 = Await()
    //     0x6d74dc: bl              #0x3dd188  ; AwaitStub
    // 0x6d74e0: mov             x1, x0
    // 0x6d74e4: r0 = docs()
    //     0x6d74e4: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6d74e8: stur            x0, [fp, #-0x20]
    // 0x6d74ec: LoadField: r2 = r0->field_7
    //     0x6d74ec: ldur            w2, [x0, #7]
    // 0x6d74f0: DecompressPointer r2
    //     0x6d74f0: add             x2, x2, HEAP, lsl #32
    // 0x6d74f4: stur            x2, [fp, #-0x18]
    // 0x6d74f8: LoadField: r1 = r0->field_b
    //     0x6d74f8: ldur            w1, [x0, #0xb]
    // 0x6d74fc: r3 = LoadInt32Instr(r1)
    //     0x6d74fc: sbfx            x3, x1, #1, #0x1f
    // 0x6d7500: stur            x3, [fp, #-0x30]
    // 0x6d7504: r1 = 0
    //     0x6d7504: mov             x1, #0
    // 0x6d7508: CheckStackOverflow
    //     0x6d7508: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d750c: cmp             SP, x16
    //     0x6d7510: b.ls            #0x6d7760
    // 0x6d7514: LoadField: r4 = r0->field_b
    //     0x6d7514: ldur            w4, [x0, #0xb]
    // 0x6d7518: r5 = LoadInt32Instr(r4)
    //     0x6d7518: sbfx            x5, x4, #1, #0x1f
    // 0x6d751c: cmp             x3, x5
    // 0x6d7520: b.ne            #0x6d7718
    // 0x6d7524: cmp             x1, x5
    // 0x6d7528: b.ge            #0x6d7710
    // 0x6d752c: LoadField: r4 = r0->field_f
    //     0x6d752c: ldur            w4, [x0, #0xf]
    // 0x6d7530: DecompressPointer r4
    //     0x6d7530: add             x4, x4, HEAP, lsl #32
    // 0x6d7534: ArrayLoad: r5 = r4[r1]  ; Unknown_4
    //     0x6d7534: add             x16, x4, x1, lsl #2
    //     0x6d7538: ldur            w5, [x16, #0xf]
    // 0x6d753c: DecompressPointer r5
    //     0x6d753c: add             x5, x5, HEAP, lsl #32
    // 0x6d7540: stur            x5, [fp, #-0x10]
    // 0x6d7544: add             x4, x1, #1
    // 0x6d7548: mov             x1, x5
    // 0x6d754c: stur            x4, [fp, #-0x28]
    // 0x6d7550: LoadField: r0 = r1->field_f
    //     0x6d7550: ldur            w0, [x1, #0xf]
    // 0x6d7554: DecompressPointer r0
    //     0x6d7554: add             x0, x0, HEAP, lsl #32
    // 0x6d7558: r16 = Sentinel
    //     0x6d7558: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6d755c: cmp             w0, w16
    // 0x6d7560: b.ne            #0x6d7570
    // 0x6d7564: r2 = reference
    //     0x6d7564: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x6d7568: ldr             x2, [x2, #0xb0]
    // 0x6d756c: r0 = InitLateFinalInstanceField()
    //     0x6d756c: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x6d7570: r1 = Null
    //     0x6d7570: mov             x1, NULL
    // 0x6d7574: r2 = 12
    //     0x6d7574: mov             x2, #0xc
    // 0x6d7578: stur            x0, [fp, #-0x38]
    // 0x6d757c: r0 = AllocateArray()
    //     0x6d757c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d7580: stur            x0, [fp, #-0x48]
    // 0x6d7584: r16 = "medine_seferi_id"
    //     0x6d7584: add             x16, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x6d7588: ldr             x16, [x16, #0x830]
    // 0x6d758c: StoreField: r0->field_f = r16
    //     0x6d758c: stur            w16, [x0, #0xf]
    // 0x6d7590: r0 = InitLateStaticField(0xac0) // [package:cloud_firestore/cloud_firestore.dart] FieldValue::_factory
    //     0x6d7590: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6d7594: ldr             x0, [x0, #0x1580]
    //     0x6d7598: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6d759c: cmp             w0, w16
    //     0x6d75a0: b.ne            #0x6d75b0
    //     0x6d75a4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ca8] Field <FieldValue._factory@577385638>: static late final (offset: 0xac0)
    //     0x6d75a8: ldr             x2, [x2, #0xca8]
    //     0x6d75ac: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6d75b0: mov             x1, x0
    // 0x6d75b4: stur            x0, [fp, #-0x50]
    // 0x6d75b8: r0 = delete()
    //     0x6d75b8: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6d75bc: stur            x0, [fp, #-0x58]
    // 0x6d75c0: r0 = FieldValue()
    //     0x6d75c0: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6d75c4: mov             x1, x0
    // 0x6d75c8: ldur            x0, [fp, #-0x58]
    // 0x6d75cc: StoreField: r1->field_b = r0
    //     0x6d75cc: stur            w0, [x1, #0xb]
    // 0x6d75d0: StoreField: r1->field_7 = r0
    //     0x6d75d0: stur            w0, [x1, #7]
    // 0x6d75d4: mov             x0, x1
    // 0x6d75d8: ldur            x1, [fp, #-0x48]
    // 0x6d75dc: ArrayStore: r1[1] = r0  ; List_4
    //     0x6d75dc: add             x25, x1, #0x13
    //     0x6d75e0: str             w0, [x25]
    //     0x6d75e4: tbz             w0, #0, #0x6d7600
    //     0x6d75e8: ldurb           w16, [x1, #-1]
    //     0x6d75ec: ldurb           w17, [x0, #-1]
    //     0x6d75f0: and             x16, x17, x16, lsr #2
    //     0x6d75f4: tst             x16, HEAP, lsr #32
    //     0x6d75f8: b.eq            #0x6d7600
    //     0x6d75fc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d7600: ldur            x0, [fp, #-0x48]
    // 0x6d7604: r16 = "medine_otel_id"
    //     0x6d7604: add             x16, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x6d7608: ldr             x16, [x16, #0x838]
    // 0x6d760c: ArrayStore: r0[0] = r16  ; List_4
    //     0x6d760c: stur            w16, [x0, #0x17]
    // 0x6d7610: ldur            x1, [fp, #-0x50]
    // 0x6d7614: r0 = delete()
    //     0x6d7614: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6d7618: stur            x0, [fp, #-0x58]
    // 0x6d761c: r0 = FieldValue()
    //     0x6d761c: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6d7620: mov             x1, x0
    // 0x6d7624: ldur            x0, [fp, #-0x58]
    // 0x6d7628: StoreField: r1->field_b = r0
    //     0x6d7628: stur            w0, [x1, #0xb]
    // 0x6d762c: StoreField: r1->field_7 = r0
    //     0x6d762c: stur            w0, [x1, #7]
    // 0x6d7630: mov             x0, x1
    // 0x6d7634: ldur            x1, [fp, #-0x48]
    // 0x6d7638: ArrayStore: r1[3] = r0  ; List_4
    //     0x6d7638: add             x25, x1, #0x1b
    //     0x6d763c: str             w0, [x25]
    //     0x6d7640: tbz             w0, #0, #0x6d765c
    //     0x6d7644: ldurb           w16, [x1, #-1]
    //     0x6d7648: ldurb           w17, [x0, #-1]
    //     0x6d764c: and             x16, x17, x16, lsr #2
    //     0x6d7650: tst             x16, HEAP, lsr #32
    //     0x6d7654: b.eq            #0x6d765c
    //     0x6d7658: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d765c: ldur            x0, [fp, #-0x48]
    // 0x6d7660: r16 = "medine_oda_id"
    //     0x6d7660: add             x16, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x6d7664: ldr             x16, [x16, #0x840]
    // 0x6d7668: StoreField: r0->field_1f = r16
    //     0x6d7668: stur            w16, [x0, #0x1f]
    // 0x6d766c: ldur            x1, [fp, #-0x50]
    // 0x6d7670: r0 = delete()
    //     0x6d7670: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6d7674: stur            x0, [fp, #-0x50]
    // 0x6d7678: r0 = FieldValue()
    //     0x6d7678: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6d767c: mov             x1, x0
    // 0x6d7680: ldur            x0, [fp, #-0x50]
    // 0x6d7684: StoreField: r1->field_b = r0
    //     0x6d7684: stur            w0, [x1, #0xb]
    // 0x6d7688: StoreField: r1->field_7 = r0
    //     0x6d7688: stur            w0, [x1, #7]
    // 0x6d768c: mov             x0, x1
    // 0x6d7690: ldur            x1, [fp, #-0x48]
    // 0x6d7694: ArrayStore: r1[5] = r0  ; List_4
    //     0x6d7694: add             x25, x1, #0x23
    //     0x6d7698: str             w0, [x25]
    //     0x6d769c: tbz             w0, #0, #0x6d76b8
    //     0x6d76a0: ldurb           w16, [x1, #-1]
    //     0x6d76a4: ldurb           w17, [x0, #-1]
    //     0x6d76a8: and             x16, x17, x16, lsr #2
    //     0x6d76ac: tst             x16, HEAP, lsr #32
    //     0x6d76b0: b.eq            #0x6d76b8
    //     0x6d76b4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d76b8: r16 = <Object, Object?>
    //     0x6d76b8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x6d76bc: ldr             x16, [x16, #0x828]
    // 0x6d76c0: ldur            lr, [fp, #-0x48]
    // 0x6d76c4: stp             lr, x16, [SP]
    // 0x6d76c8: r0 = Map._fromLiteral()
    //     0x6d76c8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6d76cc: mov             x1, x0
    // 0x6d76d0: ldur            x0, [fp, #-0x38]
    // 0x6d76d4: LoadField: r2 = r0->field_7
    //     0x6d76d4: ldur            w2, [x0, #7]
    // 0x6d76d8: DecompressPointer r2
    //     0x6d76d8: add             x2, x2, HEAP, lsl #32
    // 0x6d76dc: stur            x2, [fp, #-0x48]
    // 0x6d76e0: r0 = replaceValueWithDelegatesInMapFieldPath()
    //     0x6d76e0: bl              #0x6d41d4  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMapFieldPath
    // 0x6d76e4: ldur            x1, [fp, #-0x48]
    // 0x6d76e8: mov             x2, x0
    // 0x6d76ec: r0 = update()
    //     0x6d76ec: bl              #0x6d3e60  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::update
    // 0x6d76f0: mov             x1, x0
    // 0x6d76f4: stur            x1, [fp, #-0x38]
    // 0x6d76f8: r0 = Await()
    //     0x6d76f8: bl              #0x3dd188  ; AwaitStub
    // 0x6d76fc: ldur            x1, [fp, #-0x28]
    // 0x6d7700: ldur            x0, [fp, #-0x20]
    // 0x6d7704: ldur            x2, [fp, #-0x18]
    // 0x6d7708: ldur            x3, [fp, #-0x30]
    // 0x6d770c: b               #0x6d7508
    // 0x6d7710: r0 = Null
    //     0x6d7710: mov             x0, NULL
    // 0x6d7714: r0 = ReturnAsyncNotFuture()
    //     0x6d7714: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d7718: r0 = ConcurrentModificationError()
    //     0x6d7718: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6d771c: mov             x1, x0
    // 0x6d7720: ldur            x0, [fp, #-0x20]
    // 0x6d7724: StoreField: r1->field_b = r0
    //     0x6d7724: stur            w0, [x1, #0xb]
    // 0x6d7728: mov             x0, x1
    // 0x6d772c: r0 = Throw()
    //     0x6d772c: bl              #0x926328  ; ThrowStub
    // 0x6d7730: brk             #0
    // 0x6d7734: r0 = ConcurrentModificationError()
    //     0x6d7734: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6d7738: mov             x1, x0
    // 0x6d773c: ldur            x0, [fp, #-0x40]
    // 0x6d7740: StoreField: r1->field_b = r0
    //     0x6d7740: stur            w0, [x1, #0xb]
    // 0x6d7744: mov             x0, x1
    // 0x6d7748: r0 = Throw()
    //     0x6d7748: bl              #0x926328  ; ThrowStub
    // 0x6d774c: brk             #0
    // 0x6d7750: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d7750: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d7754: b               #0x6d7238
    // 0x6d7758: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d7758: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d775c: b               #0x6d72b4
    // 0x6d7760: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d7760: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d7764: b               #0x6d7514
  }
  _ createAgency(/* No info */) async {
    // ** addr: 0x6d8d48, size: 0xdc
    // 0x6d8d48: EnterFrame
    //     0x6d8d48: stp             fp, lr, [SP, #-0x10]!
    //     0x6d8d4c: mov             fp, SP
    // 0x6d8d50: AllocStack(0x88)
    //     0x6d8d50: sub             SP, SP, #0x88
    // 0x6d8d54: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x6d8d54: stur            NULL, [fp, #-8]
    //     0x6d8d58: stur            x1, [fp, #-0x60]
    //     0x6d8d5c: mov             x16, x2
    //     0x6d8d60: mov             x2, x1
    //     0x6d8d64: mov             x1, x16
    //     0x6d8d68: stur            x1, [fp, #-0x68]
    // 0x6d8d6c: CheckStackOverflow
    //     0x6d8d6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d8d70: cmp             SP, x16
    //     0x6d8d74: b.ls            #0x6d8e1c
    // 0x6d8d78: InitAsync() -> Future<String?>
    //     0x6d8d78: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6d8d7c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d8d80: ldur            x0, [fp, #-0x60]
    // 0x6d8d84: LoadField: r1 = r0->field_7
    //     0x6d8d84: ldur            w1, [x0, #7]
    // 0x6d8d88: DecompressPointer r1
    //     0x6d8d88: add             x1, x1, HEAP, lsl #32
    // 0x6d8d8c: r2 = "agencies"
    //     0x6d8d8c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19770] "agencies"
    //     0x6d8d90: ldr             x2, [x2, #0x770]
    // 0x6d8d94: r0 = collection()
    //     0x6d8d94: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d8d98: mov             x1, x0
    // 0x6d8d9c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d8d9c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d8da0: r0 = doc()
    //     0x6d8da0: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d8da4: stur            x0, [fp, #-0x78]
    // 0x6d8da8: LoadField: r1 = r0->field_7
    //     0x6d8da8: ldur            w1, [x0, #7]
    // 0x6d8dac: DecompressPointer r1
    //     0x6d8dac: add             x1, x1, HEAP, lsl #32
    // 0x6d8db0: LoadField: r2 = r1->field_b
    //     0x6d8db0: ldur            w2, [x1, #0xb]
    // 0x6d8db4: DecompressPointer r2
    //     0x6d8db4: add             x2, x2, HEAP, lsl #32
    // 0x6d8db8: LoadField: r3 = r2->field_7
    //     0x6d8db8: ldur            w3, [x2, #7]
    // 0x6d8dbc: DecompressPointer r3
    //     0x6d8dbc: add             x3, x3, HEAP, lsl #32
    // 0x6d8dc0: mov             x1, x3
    // 0x6d8dc4: stur            x3, [fp, #-0x70]
    // 0x6d8dc8: r0 = last()
    //     0x6d8dc8: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6d8dcc: str             x0, [SP]
    // 0x6d8dd0: ldur            x1, [fp, #-0x68]
    // 0x6d8dd4: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x6d8dd4: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x6d8dd8: ldr             x4, [x4, #0xb78]
    // 0x6d8ddc: r0 = copyWith()
    //     0x6d8ddc: bl              #0x6d89d0  ; [package:umrem_demo/features/admin/models/agency_model.dart] AgencyModel::copyWith
    // 0x6d8de0: mov             x1, x0
    // 0x6d8de4: r0 = toFirestore()
    //     0x6d8de4: bl              #0x6d8e24  ; [package:umrem_demo/features/admin/models/agency_model.dart] AgencyModel::toFirestore
    // 0x6d8de8: ldur            x1, [fp, #-0x78]
    // 0x6d8dec: mov             x2, x0
    // 0x6d8df0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d8df0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d8df4: r0 = set()
    //     0x6d8df4: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6d8df8: mov             x1, x0
    // 0x6d8dfc: stur            x1, [fp, #-0x80]
    // 0x6d8e00: r0 = Await()
    //     0x6d8e00: bl              #0x3dd188  ; AwaitStub
    // 0x6d8e04: ldur            x1, [fp, #-0x70]
    // 0x6d8e08: r0 = last()
    //     0x6d8e08: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6d8e0c: r0 = ReturnAsync()
    //     0x6d8e0c: b               #0x427094  ; ReturnAsyncStub
    // 0x6d8e10: sub             SP, fp, #0x88
    // 0x6d8e14: r0 = Null
    //     0x6d8e14: mov             x0, NULL
    // 0x6d8e18: r0 = ReturnAsyncNotFuture()
    //     0x6d8e18: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d8e1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d8e1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d8e20: b               #0x6d8d78
  }
  _ updateAgency(/* No info */) async {
    // ** addr: 0x6d9530, size: 0xb8
    // 0x6d9530: EnterFrame
    //     0x6d9530: stp             fp, lr, [SP, #-0x10]!
    //     0x6d9534: mov             fp, SP
    // 0x6d9538: AllocStack(0x88)
    //     0x6d9538: sub             SP, SP, #0x88
    // 0x6d953c: SetupParameters(FirestoreService this /* r1 => r3, fp-0x70 */, dynamic _ /* r3 => r1, fp-0x78 */)
    //     0x6d953c: stur            NULL, [fp, #-8]
    //     0x6d9540: stur            x1, [fp, #-0x68]
    //     0x6d9544: mov             x16, x3
    //     0x6d9548: mov             x3, x1
    //     0x6d954c: mov             x1, x16
    //     0x6d9550: stur            x2, [fp, #-0x70]
    //     0x6d9554: stur            x1, [fp, #-0x78]
    // 0x6d9558: CheckStackOverflow
    //     0x6d9558: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d955c: cmp             SP, x16
    //     0x6d9560: b.ls            #0x6d95e0
    // 0x6d9564: InitAsync() -> Future<bool>
    //     0x6d9564: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d9568: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d956c: ldur            x0, [fp, #-0x68]
    // 0x6d9570: r0 = serverTimestamp()
    //     0x6d9570: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6d9574: ldur            x1, [fp, #-0x78]
    // 0x6d9578: mov             x3, x0
    // 0x6d957c: r2 = "updated_at"
    //     0x6d957c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6d9580: ldr             x2, [x2, #0x58]
    // 0x6d9584: r0 = []=()
    //     0x6d9584: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d9588: ldur            x0, [fp, #-0x68]
    // 0x6d958c: LoadField: r1 = r0->field_7
    //     0x6d958c: ldur            w1, [x0, #7]
    // 0x6d9590: DecompressPointer r1
    //     0x6d9590: add             x1, x1, HEAP, lsl #32
    // 0x6d9594: r2 = "agencies"
    //     0x6d9594: add             x2, PP, #0x19, lsl #12  ; [pp+0x19770] "agencies"
    //     0x6d9598: ldr             x2, [x2, #0x770]
    // 0x6d959c: r0 = collection()
    //     0x6d959c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6d95a0: ldur            x16, [fp, #-0x70]
    // 0x6d95a4: str             x16, [SP]
    // 0x6d95a8: mov             x1, x0
    // 0x6d95ac: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6d95ac: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6d95b0: r0 = doc()
    //     0x6d95b0: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6d95b4: mov             x1, x0
    // 0x6d95b8: ldur            x2, [fp, #-0x78]
    // 0x6d95bc: r0 = update()
    //     0x6d95bc: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x6d95c0: mov             x1, x0
    // 0x6d95c4: stur            x1, [fp, #-0x80]
    // 0x6d95c8: r0 = Await()
    //     0x6d95c8: bl              #0x3dd188  ; AwaitStub
    // 0x6d95cc: r0 = true
    //     0x6d95cc: add             x0, NULL, #0x20  ; true
    // 0x6d95d0: r0 = ReturnAsyncNotFuture()
    //     0x6d95d0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d95d4: sub             SP, fp, #0x88
    // 0x6d95d8: r0 = false
    //     0x6d95d8: add             x0, NULL, #0x30  ; false
    // 0x6d95dc: r0 = ReturnAsyncNotFuture()
    //     0x6d95dc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d95e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d95e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d95e4: b               #0x6d9564
  }
  _ createNotifications(/* No info */) async {
    // ** addr: 0x6dc4f8, size: 0x33c
    // 0x6dc4f8: EnterFrame
    //     0x6dc4f8: stp             fp, lr, [SP, #-0x10]!
    //     0x6dc4fc: mov             fp, SP
    // 0x6dc500: AllocStack(0x108)
    //     0x6dc500: sub             SP, SP, #0x108
    // 0x6dc504: SetupParameters(FirestoreService this /* r1 => r1, fp-0x80 */, dynamic _ /* r2 => r2, fp-0x88 */)
    //     0x6dc504: stur            NULL, [fp, #-8]
    //     0x6dc508: stur            x1, [fp, #-0x80]
    //     0x6dc50c: stur            x2, [fp, #-0x88]
    // 0x6dc510: CheckStackOverflow
    //     0x6dc510: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dc514: cmp             SP, x16
    //     0x6dc518: b.ls            #0x6dc820
    // 0x6dc51c: InitAsync() -> Future<bool>
    //     0x6dc51c: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6dc520: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6dc524: ldur            x0, [fp, #-0x88]
    // 0x6dc528: LoadField: r1 = r0->field_b
    //     0x6dc528: ldur            w1, [x0, #0xb]
    // 0x6dc52c: cbnz            w1, #0x6dc538
    // 0x6dc530: r0 = true
    //     0x6dc530: add             x0, NULL, #0x20  ; true
    // 0x6dc534: r0 = ReturnAsyncNotFuture()
    //     0x6dc534: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dc538: ldur            x2, [fp, #-0x80]
    // 0x6dc53c: LoadField: r3 = r2->field_7
    //     0x6dc53c: ldur            w3, [x2, #7]
    // 0x6dc540: DecompressPointer r3
    //     0x6dc540: add             x3, x3, HEAP, lsl #32
    // 0x6dc544: mov             x1, x3
    // 0x6dc548: stur            x3, [fp, #-0x90]
    // 0x6dc54c: r0 = batch()
    //     0x6dc54c: bl              #0x6dcd6c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::batch
    // 0x6dc550: mov             x2, x0
    // 0x6dc554: ldur            x0, [fp, #-0x88]
    // 0x6dc558: stur            x2, [fp, #-0xa0]
    // 0x6dc55c: LoadField: r3 = r0->field_7
    //     0x6dc55c: ldur            w3, [x0, #7]
    // 0x6dc560: DecompressPointer r3
    //     0x6dc560: add             x3, x3, HEAP, lsl #32
    // 0x6dc564: mov             x1, x3
    // 0x6dc568: stur            x3, [fp, #-0x98]
    // 0x6dc56c: r0 = ListIterator()
    //     0x6dc56c: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x6dc570: mov             x4, x0
    // 0x6dc574: ldur            x3, [fp, #-0x88]
    // 0x6dc578: stur            x4, [fp, #-0xb8]
    // 0x6dc57c: StoreField: r4->field_b = r3
    //     0x6dc57c: stur            w3, [x4, #0xb]
    // 0x6dc580: LoadField: r0 = r3->field_b
    //     0x6dc580: ldur            w0, [x3, #0xb]
    // 0x6dc584: r5 = LoadInt32Instr(r0)
    //     0x6dc584: sbfx            x5, x0, #1, #0x1f
    // 0x6dc588: stur            x5, [fp, #-0xb0]
    // 0x6dc58c: StoreField: r4->field_f = r5
    //     0x6dc58c: stur            x5, [x4, #0xf]
    // 0x6dc590: ArrayStore: r4[0] = rZR  ; List_8
    //     0x6dc590: stur            xzr, [x4, #0x17]
    // 0x6dc594: ldur            x6, [fp, #-0xa0]
    // 0x6dc598: LoadField: r7 = r6->field_7
    //     0x6dc598: ldur            w7, [x6, #7]
    // 0x6dc59c: DecompressPointer r7
    //     0x6dc59c: add             x7, x7, HEAP, lsl #32
    // 0x6dc5a0: stur            x7, [fp, #-0xa8]
    // 0x6dc5a4: CheckStackOverflow
    //     0x6dc5a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dc5a8: cmp             SP, x16
    //     0x6dc5ac: b.ls            #0x6dc828
    // 0x6dc5b0: LoadField: r0 = r3->field_b
    //     0x6dc5b0: ldur            w0, [x3, #0xb]
    // 0x6dc5b4: r1 = LoadInt32Instr(r0)
    //     0x6dc5b4: sbfx            x1, x0, #1, #0x1f
    // 0x6dc5b8: cmp             x5, x1
    // 0x6dc5bc: b.ne            #0x6dc7f8
    // 0x6dc5c0: ArrayLoad: r2 = r4[0]  ; List_8
    //     0x6dc5c0: ldur            x2, [x4, #0x17]
    // 0x6dc5c4: cmp             x2, x1
    // 0x6dc5c8: b.ge            #0x6dc7c8
    // 0x6dc5cc: mov             x0, x1
    // 0x6dc5d0: mov             x1, x2
    // 0x6dc5d4: cmp             x1, x0
    // 0x6dc5d8: b.hs            #0x6dc830
    // 0x6dc5dc: LoadField: r0 = r3->field_f
    //     0x6dc5dc: ldur            w0, [x3, #0xf]
    // 0x6dc5e0: DecompressPointer r0
    //     0x6dc5e0: add             x0, x0, HEAP, lsl #32
    // 0x6dc5e4: ArrayLoad: r8 = r0[r2]  ; Unknown_4
    //     0x6dc5e4: add             x16, x0, x2, lsl #2
    //     0x6dc5e8: ldur            w8, [x16, #0xf]
    // 0x6dc5ec: DecompressPointer r8
    //     0x6dc5ec: add             x8, x8, HEAP, lsl #32
    // 0x6dc5f0: mov             x0, x8
    // 0x6dc5f4: stur            x8, [fp, #-0x98]
    // 0x6dc5f8: StoreField: r4->field_1f = r0
    //     0x6dc5f8: stur            w0, [x4, #0x1f]
    //     0x6dc5fc: ldurb           w16, [x4, #-1]
    //     0x6dc600: ldurb           w17, [x0, #-1]
    //     0x6dc604: and             x16, x17, x16, lsr #2
    //     0x6dc608: tst             x16, HEAP, lsr #32
    //     0x6dc60c: b.eq            #0x6dc614
    //     0x6dc610: bl              #0x9267f0  ; WriteBarrierWrappersStub
    // 0x6dc614: add             x0, x2, #1
    // 0x6dc618: ArrayStore: r4[0] = r0  ; List_8
    //     0x6dc618: stur            x0, [x4, #0x17]
    // 0x6dc61c: ldur            x1, [fp, #-0x90]
    // 0x6dc620: r2 = "notifications"
    //     0x6dc620: add             x2, PP, #0x18, lsl #12  ; [pp+0x18aa8] "notifications"
    //     0x6dc624: ldr             x2, [x2, #0xaa8]
    // 0x6dc628: r0 = collection()
    //     0x6dc628: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6dc62c: mov             x1, x0
    // 0x6dc630: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6dc630: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6dc634: r0 = doc()
    //     0x6dc634: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6dc638: stur            x0, [fp, #-0xc0]
    // 0x6dc63c: LoadField: r1 = r0->field_7
    //     0x6dc63c: ldur            w1, [x0, #7]
    // 0x6dc640: DecompressPointer r1
    //     0x6dc640: add             x1, x1, HEAP, lsl #32
    // 0x6dc644: LoadField: r2 = r1->field_b
    //     0x6dc644: ldur            w2, [x1, #0xb]
    // 0x6dc648: DecompressPointer r2
    //     0x6dc648: add             x2, x2, HEAP, lsl #32
    // 0x6dc64c: LoadField: r1 = r2->field_7
    //     0x6dc64c: ldur            w1, [x2, #7]
    // 0x6dc650: DecompressPointer r1
    //     0x6dc650: add             x1, x1, HEAP, lsl #32
    // 0x6dc654: r0 = last()
    //     0x6dc654: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6dc658: mov             x1, x0
    // 0x6dc65c: ldur            x0, [fp, #-0x98]
    // 0x6dc660: stur            x1, [fp, #-0xf0]
    // 0x6dc664: LoadField: r2 = r0->field_b
    //     0x6dc664: ldur            w2, [x0, #0xb]
    // 0x6dc668: DecompressPointer r2
    //     0x6dc668: add             x2, x2, HEAP, lsl #32
    // 0x6dc66c: stur            x2, [fp, #-0xe8]
    // 0x6dc670: LoadField: r3 = r0->field_f
    //     0x6dc670: ldur            w3, [x0, #0xf]
    // 0x6dc674: DecompressPointer r3
    //     0x6dc674: add             x3, x3, HEAP, lsl #32
    // 0x6dc678: stur            x3, [fp, #-0xe0]
    // 0x6dc67c: LoadField: r4 = r0->field_13
    //     0x6dc67c: ldur            w4, [x0, #0x13]
    // 0x6dc680: DecompressPointer r4
    //     0x6dc680: add             x4, x4, HEAP, lsl #32
    // 0x6dc684: stur            x4, [fp, #-0xd8]
    // 0x6dc688: ArrayLoad: r5 = r0[0]  ; List_4
    //     0x6dc688: ldur            w5, [x0, #0x17]
    // 0x6dc68c: DecompressPointer r5
    //     0x6dc68c: add             x5, x5, HEAP, lsl #32
    // 0x6dc690: stur            x5, [fp, #-0xd0]
    // 0x6dc694: LoadField: r6 = r0->field_1b
    //     0x6dc694: ldur            w6, [x0, #0x1b]
    // 0x6dc698: DecompressPointer r6
    //     0x6dc698: add             x6, x6, HEAP, lsl #32
    // 0x6dc69c: stur            x6, [fp, #-0xc8]
    // 0x6dc6a0: r0 = NotificationModel()
    //     0x6dc6a0: bl              #0x5ef33c  ; AllocateNotificationModelStub -> NotificationModel (size=0x20)
    // 0x6dc6a4: mov             x3, x0
    // 0x6dc6a8: ldur            x0, [fp, #-0xf0]
    // 0x6dc6ac: stur            x3, [fp, #-0xf8]
    // 0x6dc6b0: StoreField: r3->field_7 = r0
    //     0x6dc6b0: stur            w0, [x3, #7]
    // 0x6dc6b4: ldur            x4, [fp, #-0xe8]
    // 0x6dc6b8: StoreField: r3->field_b = r4
    //     0x6dc6b8: stur            w4, [x3, #0xb]
    // 0x6dc6bc: ldur            x5, [fp, #-0xe0]
    // 0x6dc6c0: StoreField: r3->field_f = r5
    //     0x6dc6c0: stur            w5, [x3, #0xf]
    // 0x6dc6c4: ldur            x6, [fp, #-0xd8]
    // 0x6dc6c8: StoreField: r3->field_13 = r6
    //     0x6dc6c8: stur            w6, [x3, #0x13]
    // 0x6dc6cc: ldur            x7, [fp, #-0xd0]
    // 0x6dc6d0: ArrayStore: r3[0] = r7  ; List_4
    //     0x6dc6d0: stur            w7, [x3, #0x17]
    // 0x6dc6d4: ldur            x8, [fp, #-0xc8]
    // 0x6dc6d8: StoreField: r3->field_1b = r8
    //     0x6dc6d8: stur            w8, [x3, #0x1b]
    // 0x6dc6dc: r1 = Null
    //     0x6dc6dc: mov             x1, NULL
    // 0x6dc6e0: r2 = 20
    //     0x6dc6e0: mov             x2, #0x14
    // 0x6dc6e4: r0 = AllocateArray()
    //     0x6dc6e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dc6e8: stur            x0, [fp, #-0xf8]
    // 0x6dc6ec: r16 = "title"
    //     0x6dc6ec: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x6dc6f0: StoreField: r0->field_f = r16
    //     0x6dc6f0: stur            w16, [x0, #0xf]
    // 0x6dc6f4: ldur            x1, [fp, #-0xe8]
    // 0x6dc6f8: StoreField: r0->field_13 = r1
    //     0x6dc6f8: stur            w1, [x0, #0x13]
    // 0x6dc6fc: r16 = "message"
    //     0x6dc6fc: ldr             x16, [PP, #0x150]  ; [pp+0x150] "message"
    // 0x6dc700: ArrayStore: r0[0] = r16  ; List_4
    //     0x6dc700: stur            w16, [x0, #0x17]
    // 0x6dc704: ldur            x1, [fp, #-0xe0]
    // 0x6dc708: StoreField: r0->field_1b = r1
    //     0x6dc708: stur            w1, [x0, #0x1b]
    // 0x6dc70c: r16 = "user_token"
    //     0x6dc70c: ldr             x16, [PP, #0x1590]  ; [pp+0x1590] "user_token"
    // 0x6dc710: StoreField: r0->field_1f = r16
    //     0x6dc710: stur            w16, [x0, #0x1f]
    // 0x6dc714: ldur            x1, [fp, #-0xd8]
    // 0x6dc718: StoreField: r0->field_23 = r1
    //     0x6dc718: stur            w1, [x0, #0x23]
    // 0x6dc71c: r16 = "agency_id"
    //     0x6dc71c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6dc720: ldr             x16, [x16, #0x40]
    // 0x6dc724: StoreField: r0->field_27 = r16
    //     0x6dc724: stur            w16, [x0, #0x27]
    // 0x6dc728: ldur            x1, [fp, #-0xd0]
    // 0x6dc72c: StoreField: r0->field_2b = r1
    //     0x6dc72c: stur            w1, [x0, #0x2b]
    // 0x6dc730: r16 = "created_at"
    //     0x6dc730: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6dc734: ldr             x16, [x16, #0xc00]
    // 0x6dc738: StoreField: r0->field_2f = r16
    //     0x6dc738: stur            w16, [x0, #0x2f]
    // 0x6dc73c: ldur            x1, [fp, #-0xc8]
    // 0x6dc740: LoadField: r2 = r1->field_b
    //     0x6dc740: ldur            x2, [x1, #0xb]
    // 0x6dc744: r1 = Null
    //     0x6dc744: mov             x1, NULL
    // 0x6dc748: r0 = Timestamp.fromMicrosecondsSinceEpoch()
    //     0x6dc748: bl              #0x5dd9f0  ; [package:cloud_firestore_platform_interface/src/timestamp.dart] Timestamp::Timestamp.fromMicrosecondsSinceEpoch
    // 0x6dc74c: ldur            x1, [fp, #-0xf8]
    // 0x6dc750: ArrayStore: r1[9] = r0  ; List_4
    //     0x6dc750: add             x25, x1, #0x33
    //     0x6dc754: str             w0, [x25]
    //     0x6dc758: tbz             w0, #0, #0x6dc774
    //     0x6dc75c: ldurb           w16, [x1, #-1]
    //     0x6dc760: ldurb           w17, [x0, #-1]
    //     0x6dc764: and             x16, x17, x16, lsr #2
    //     0x6dc768: tst             x16, HEAP, lsr #32
    //     0x6dc76c: b.eq            #0x6dc774
    //     0x6dc770: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6dc774: r16 = <String, dynamic>
    //     0x6dc774: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6dc778: ldur            lr, [fp, #-0xf8]
    // 0x6dc77c: stp             lr, x16, [SP]
    // 0x6dc780: r0 = Map._fromLiteral()
    //     0x6dc780: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6dc784: ldur            x1, [fp, #-0xc0]
    // 0x6dc788: stur            x0, [fp, #-0xc8]
    // 0x6dc78c: r0 = path()
    //     0x6dc78c: bl              #0x6dcd14  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::path
    // 0x6dc790: ldur            x1, [fp, #-0xc8]
    // 0x6dc794: stur            x0, [fp, #-0xc8]
    // 0x6dc798: r0 = replaceValueWithDelegatesInMap()
    //     0x6dc798: bl              #0x5d7b38  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMap
    // 0x6dc79c: ldur            x1, [fp, #-0xa8]
    // 0x6dc7a0: ldur            x2, [fp, #-0xc8]
    // 0x6dc7a4: mov             x3, x0
    // 0x6dc7a8: r5 = Null
    //     0x6dc7a8: mov             x5, NULL
    // 0x6dc7ac: r0 = set()
    //     0x6dc7ac: bl              #0x6dcbe0  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_write_batch.dart] MethodChannelWriteBatch::set
    // 0x6dc7b0: ldur            x3, [fp, #-0x88]
    // 0x6dc7b4: ldur            x6, [fp, #-0xa0]
    // 0x6dc7b8: ldur            x7, [fp, #-0xa8]
    // 0x6dc7bc: ldur            x4, [fp, #-0xb8]
    // 0x6dc7c0: ldur            x5, [fp, #-0xb0]
    // 0x6dc7c4: b               #0x6dc5a4
    // 0x6dc7c8: mov             x0, x4
    // 0x6dc7cc: StoreField: r0->field_1f = rNULL
    //     0x6dc7cc: stur            NULL, [x0, #0x1f]
    // 0x6dc7d0: ldur            x1, [fp, #-0xa0]
    // 0x6dc7d4: r0 = commit()
    //     0x6dc7d4: bl              #0x6dc834  ; [package:cloud_firestore/cloud_firestore.dart] WriteBatch::commit
    // 0x6dc7d8: mov             x1, x0
    // 0x6dc7dc: stur            x1, [fp, #-0x90]
    // 0x6dc7e0: r0 = Await()
    //     0x6dc7e0: bl              #0x3dd188  ; AwaitStub
    // 0x6dc7e4: r0 = true
    //     0x6dc7e4: add             x0, NULL, #0x20  ; true
    // 0x6dc7e8: r0 = ReturnAsyncNotFuture()
    //     0x6dc7e8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dc7ec: sub             SP, fp, #0x108
    // 0x6dc7f0: r0 = false
    //     0x6dc7f0: add             x0, NULL, #0x30  ; false
    // 0x6dc7f4: r0 = ReturnAsyncNotFuture()
    //     0x6dc7f4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dc7f8: mov             x1, x3
    // 0x6dc7fc: mov             x0, x4
    // 0x6dc800: r0 = ConcurrentModificationError()
    //     0x6dc800: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6dc804: mov             x1, x0
    // 0x6dc808: ldur            x0, [fp, #-0x88]
    // 0x6dc80c: stur            x1, [fp, #-0x90]
    // 0x6dc810: StoreField: r1->field_b = r0
    //     0x6dc810: stur            w0, [x1, #0xb]
    // 0x6dc814: mov             x0, x1
    // 0x6dc818: r0 = Throw()
    //     0x6dc818: bl              #0x926328  ; ThrowStub
    // 0x6dc81c: brk             #0
    // 0x6dc820: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dc820: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dc824: b               #0x6dc51c
    // 0x6dc828: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dc828: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dc82c: b               #0x6dc5b0
    // 0x6dc830: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6dc830: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ sendPushToTopic(/* No info */) async {
    // ** addr: 0x6dcf88, size: 0xd4
    // 0x6dcf88: EnterFrame
    //     0x6dcf88: stp             fp, lr, [SP, #-0x10]!
    //     0x6dcf8c: mov             fp, SP
    // 0x6dcf90: AllocStack(0x48)
    //     0x6dcf90: sub             SP, SP, #0x48
    // 0x6dcf94: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */, dynamic _ /* r5 => r5, fp-0x28 */)
    //     0x6dcf94: stur            NULL, [fp, #-8]
    //     0x6dcf98: stur            x1, [fp, #-0x10]
    //     0x6dcf9c: stur            x2, [fp, #-0x18]
    //     0x6dcfa0: stur            x3, [fp, #-0x20]
    //     0x6dcfa4: stur            x5, [fp, #-0x28]
    // 0x6dcfa8: CheckStackOverflow
    //     0x6dcfa8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dcfac: cmp             SP, x16
    //     0x6dcfb0: b.ls            #0x6dd054
    // 0x6dcfb4: InitAsync() -> Future<void?>
    //     0x6dcfb4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6dcfb8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6dcfbc: r4 = const [0, 0, 0, 0, null]
    //     0x6dcfbc: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x6dcfc0: r0 = instanceFor()
    //     0x6dcfc0: bl              #0x6de0a0  ; [package:cloud_functions/cloud_functions.dart] FirebaseFunctions::instanceFor
    // 0x6dcfc4: mov             x1, x0
    // 0x6dcfc8: r2 = "sendPushToTopic"
    //     0x6dcfc8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18b08] "sendPushToTopic"
    //     0x6dcfcc: ldr             x2, [x2, #0xb08]
    // 0x6dcfd0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6dcfd0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6dcfd4: r0 = httpsCallable()
    //     0x6dcfd4: bl              #0x6ddaf0  ; [package:cloud_functions/cloud_functions.dart] FirebaseFunctions::httpsCallable
    // 0x6dcfd8: r1 = Null
    //     0x6dcfd8: mov             x1, NULL
    // 0x6dcfdc: r2 = 12
    //     0x6dcfdc: mov             x2, #0xc
    // 0x6dcfe0: stur            x0, [fp, #-0x30]
    // 0x6dcfe4: r0 = AllocateArray()
    //     0x6dcfe4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dcfe8: r16 = "topic"
    //     0x6dcfe8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15bc8] "topic"
    //     0x6dcfec: ldr             x16, [x16, #0xbc8]
    // 0x6dcff0: StoreField: r0->field_f = r16
    //     0x6dcff0: stur            w16, [x0, #0xf]
    // 0x6dcff4: ldur            x1, [fp, #-0x18]
    // 0x6dcff8: StoreField: r0->field_13 = r1
    //     0x6dcff8: stur            w1, [x0, #0x13]
    // 0x6dcffc: r16 = "title"
    //     0x6dcffc: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x6dd000: ArrayStore: r0[0] = r16  ; List_4
    //     0x6dd000: stur            w16, [x0, #0x17]
    // 0x6dd004: ldur            x1, [fp, #-0x20]
    // 0x6dd008: StoreField: r0->field_1b = r1
    //     0x6dd008: stur            w1, [x0, #0x1b]
    // 0x6dd00c: r16 = "body"
    //     0x6dd00c: ldr             x16, [PP, #0x7de0]  ; [pp+0x7de0] "body"
    // 0x6dd010: StoreField: r0->field_1f = r16
    //     0x6dd010: stur            w16, [x0, #0x1f]
    // 0x6dd014: ldur            x1, [fp, #-0x28]
    // 0x6dd018: StoreField: r0->field_23 = r1
    //     0x6dd018: stur            w1, [x0, #0x23]
    // 0x6dd01c: r16 = <String, String>
    //     0x6dd01c: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x6dd020: ldr             x16, [x16, #0x2a8]
    // 0x6dd024: stp             x0, x16, [SP]
    // 0x6dd028: r0 = Map._fromLiteral()
    //     0x6dd028: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6dd02c: ldur            x16, [fp, #-0x30]
    // 0x6dd030: stp             x16, NULL, [SP, #8]
    // 0x6dd034: str             x0, [SP]
    // 0x6dd038: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6dd038: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6dd03c: r0 = call()
    //     0x6dd03c: bl              #0x6dd05c  ; [package:cloud_functions/cloud_functions.dart] HttpsCallable::call
    // 0x6dd040: mov             x1, x0
    // 0x6dd044: stur            x1, [fp, #-0x18]
    // 0x6dd048: r0 = Await()
    //     0x6dd048: bl              #0x3dd188  ; AwaitStub
    // 0x6dd04c: r0 = Null
    //     0x6dd04c: mov             x0, NULL
    // 0x6dd050: r0 = ReturnAsyncNotFuture()
    //     0x6dd050: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dd054: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dd054: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dd058: b               #0x6dcfb4
  }
  _ sendPushToCondition(/* No info */) async {
    // ** addr: 0x6de2b0, size: 0xd4
    // 0x6de2b0: EnterFrame
    //     0x6de2b0: stp             fp, lr, [SP, #-0x10]!
    //     0x6de2b4: mov             fp, SP
    // 0x6de2b8: AllocStack(0x48)
    //     0x6de2b8: sub             SP, SP, #0x48
    // 0x6de2bc: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */, dynamic _ /* r5 => r5, fp-0x28 */)
    //     0x6de2bc: stur            NULL, [fp, #-8]
    //     0x6de2c0: stur            x1, [fp, #-0x10]
    //     0x6de2c4: stur            x2, [fp, #-0x18]
    //     0x6de2c8: stur            x3, [fp, #-0x20]
    //     0x6de2cc: stur            x5, [fp, #-0x28]
    // 0x6de2d0: CheckStackOverflow
    //     0x6de2d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de2d4: cmp             SP, x16
    //     0x6de2d8: b.ls            #0x6de37c
    // 0x6de2dc: InitAsync() -> Future<void?>
    //     0x6de2dc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6de2e0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6de2e4: r4 = const [0, 0, 0, 0, null]
    //     0x6de2e4: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x6de2e8: r0 = instanceFor()
    //     0x6de2e8: bl              #0x6de0a0  ; [package:cloud_functions/cloud_functions.dart] FirebaseFunctions::instanceFor
    // 0x6de2ec: mov             x1, x0
    // 0x6de2f0: r2 = "sendPushToCondition"
    //     0x6de2f0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18c80] "sendPushToCondition"
    //     0x6de2f4: ldr             x2, [x2, #0xc80]
    // 0x6de2f8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6de2f8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6de2fc: r0 = httpsCallable()
    //     0x6de2fc: bl              #0x6ddaf0  ; [package:cloud_functions/cloud_functions.dart] FirebaseFunctions::httpsCallable
    // 0x6de300: r1 = Null
    //     0x6de300: mov             x1, NULL
    // 0x6de304: r2 = 12
    //     0x6de304: mov             x2, #0xc
    // 0x6de308: stur            x0, [fp, #-0x30]
    // 0x6de30c: r0 = AllocateArray()
    //     0x6de30c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6de310: r16 = "condition"
    //     0x6de310: add             x16, PP, #0x18, lsl #12  ; [pp+0x18c88] "condition"
    //     0x6de314: ldr             x16, [x16, #0xc88]
    // 0x6de318: StoreField: r0->field_f = r16
    //     0x6de318: stur            w16, [x0, #0xf]
    // 0x6de31c: ldur            x1, [fp, #-0x18]
    // 0x6de320: StoreField: r0->field_13 = r1
    //     0x6de320: stur            w1, [x0, #0x13]
    // 0x6de324: r16 = "title"
    //     0x6de324: ldr             x16, [PP, #0x7da8]  ; [pp+0x7da8] "title"
    // 0x6de328: ArrayStore: r0[0] = r16  ; List_4
    //     0x6de328: stur            w16, [x0, #0x17]
    // 0x6de32c: ldur            x1, [fp, #-0x20]
    // 0x6de330: StoreField: r0->field_1b = r1
    //     0x6de330: stur            w1, [x0, #0x1b]
    // 0x6de334: r16 = "body"
    //     0x6de334: ldr             x16, [PP, #0x7de0]  ; [pp+0x7de0] "body"
    // 0x6de338: StoreField: r0->field_1f = r16
    //     0x6de338: stur            w16, [x0, #0x1f]
    // 0x6de33c: ldur            x1, [fp, #-0x28]
    // 0x6de340: StoreField: r0->field_23 = r1
    //     0x6de340: stur            w1, [x0, #0x23]
    // 0x6de344: r16 = <String, String>
    //     0x6de344: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x6de348: ldr             x16, [x16, #0x2a8]
    // 0x6de34c: stp             x0, x16, [SP]
    // 0x6de350: r0 = Map._fromLiteral()
    //     0x6de350: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6de354: ldur            x16, [fp, #-0x30]
    // 0x6de358: stp             x16, NULL, [SP, #8]
    // 0x6de35c: str             x0, [SP]
    // 0x6de360: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6de360: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6de364: r0 = call()
    //     0x6de364: bl              #0x6dd05c  ; [package:cloud_functions/cloud_functions.dart] HttpsCallable::call
    // 0x6de368: mov             x1, x0
    // 0x6de36c: stur            x1, [fp, #-0x18]
    // 0x6de370: r0 = Await()
    //     0x6de370: bl              #0x3dd188  ; AwaitStub
    // 0x6de374: r0 = Null
    //     0x6de374: mov             x0, NULL
    // 0x6de378: r0 = ReturnAsyncNotFuture()
    //     0x6de378: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6de37c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de37c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de380: b               #0x6de2dc
  }
  _ deleteRoom(/* No info */) async {
    // ** addr: 0x6df3fc, size: 0xa4
    // 0x6df3fc: EnterFrame
    //     0x6df3fc: stp             fp, lr, [SP, #-0x10]!
    //     0x6df400: mov             fp, SP
    // 0x6df404: AllocStack(0x78)
    //     0x6df404: sub             SP, SP, #0x78
    // 0x6df408: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x6df408: stur            NULL, [fp, #-8]
    //     0x6df40c: stur            x1, [fp, #-0x60]
    //     0x6df410: stur            x2, [fp, #-0x68]
    // 0x6df414: CheckStackOverflow
    //     0x6df414: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df418: cmp             SP, x16
    //     0x6df41c: b.ls            #0x6df498
    // 0x6df420: InitAsync() -> Future<bool>
    //     0x6df420: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6df424: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6df428: ldur            x0, [fp, #-0x60]
    // 0x6df42c: mov             x1, x0
    // 0x6df430: ldur            x2, [fp, #-0x68]
    // 0x6df434: r0 = _unlinkUsersFromRoom()
    //     0x6df434: bl              #0x6df4a0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_unlinkUsersFromRoom
    // 0x6df438: mov             x1, x0
    // 0x6df43c: stur            x1, [fp, #-0x70]
    // 0x6df440: r0 = Await()
    //     0x6df440: bl              #0x3dd188  ; AwaitStub
    // 0x6df444: ldur            x0, [fp, #-0x60]
    // 0x6df448: LoadField: r1 = r0->field_7
    //     0x6df448: ldur            w1, [x0, #7]
    // 0x6df44c: DecompressPointer r1
    //     0x6df44c: add             x1, x1, HEAP, lsl #32
    // 0x6df450: r2 = "rooms"
    //     0x6df450: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x6df454: ldr             x2, [x2, #0x60]
    // 0x6df458: r0 = collection()
    //     0x6df458: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6df45c: ldur            x16, [fp, #-0x68]
    // 0x6df460: str             x16, [SP]
    // 0x6df464: mov             x1, x0
    // 0x6df468: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6df468: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6df46c: r0 = doc()
    //     0x6df46c: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6df470: mov             x1, x0
    // 0x6df474: r0 = delete()
    //     0x6df474: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x6df478: mov             x1, x0
    // 0x6df47c: stur            x1, [fp, #-0x70]
    // 0x6df480: r0 = Await()
    //     0x6df480: bl              #0x3dd188  ; AwaitStub
    // 0x6df484: r0 = true
    //     0x6df484: add             x0, NULL, #0x20  ; true
    // 0x6df488: r0 = ReturnAsyncNotFuture()
    //     0x6df488: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6df48c: sub             SP, fp, #0x78
    // 0x6df490: r0 = false
    //     0x6df490: add             x0, NULL, #0x30  ; false
    // 0x6df494: r0 = ReturnAsyncNotFuture()
    //     0x6df494: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6df498: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df498: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df49c: b               #0x6df420
  }
  _ _unlinkUsersFromRoom(/* No info */) async {
    // ** addr: 0x6df4a0, size: 0x3f0
    // 0x6df4a0: EnterFrame
    //     0x6df4a0: stp             fp, lr, [SP, #-0x10]!
    //     0x6df4a4: mov             fp, SP
    // 0x6df4a8: AllocStack(0x70)
    //     0x6df4a8: sub             SP, SP, #0x70
    // 0x6df4ac: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r3, fp-0x18 */)
    //     0x6df4ac: stur            NULL, [fp, #-8]
    //     0x6df4b0: mov             x3, x2
    //     0x6df4b4: stur            x1, [fp, #-0x10]
    //     0x6df4b8: stur            x2, [fp, #-0x18]
    // 0x6df4bc: CheckStackOverflow
    //     0x6df4bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df4c0: cmp             SP, x16
    //     0x6df4c4: b.ls            #0x6df878
    // 0x6df4c8: InitAsync() -> Future<void?>
    //     0x6df4c8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6df4cc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6df4d0: ldur            x0, [fp, #-0x10]
    // 0x6df4d4: LoadField: r3 = r0->field_7
    //     0x6df4d4: ldur            w3, [x0, #7]
    // 0x6df4d8: DecompressPointer r3
    //     0x6df4d8: add             x3, x3, HEAP, lsl #32
    // 0x6df4dc: mov             x1, x3
    // 0x6df4e0: stur            x3, [fp, #-0x20]
    // 0x6df4e4: r2 = "users"
    //     0x6df4e4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6df4e8: ldr             x2, [x2, #0x808]
    // 0x6df4ec: r0 = collection()
    //     0x6df4ec: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6df4f0: mov             x1, x0
    // 0x6df4f4: ldur            x3, [fp, #-0x18]
    // 0x6df4f8: r2 = "mekke_oda_id"
    //     0x6df4f8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x6df4fc: ldr             x2, [x2, #0x820]
    // 0x6df500: r0 = where()
    //     0x6df500: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6df504: mov             x1, x0
    // 0x6df508: r0 = get()
    //     0x6df508: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6df50c: mov             x1, x0
    // 0x6df510: stur            x1, [fp, #-0x28]
    // 0x6df514: r0 = Await()
    //     0x6df514: bl              #0x3dd188  ; AwaitStub
    // 0x6df518: mov             x1, x0
    // 0x6df51c: r0 = docs()
    //     0x6df51c: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6df520: stur            x0, [fp, #-0x48]
    // 0x6df524: LoadField: r2 = r0->field_7
    //     0x6df524: ldur            w2, [x0, #7]
    // 0x6df528: DecompressPointer r2
    //     0x6df528: add             x2, x2, HEAP, lsl #32
    // 0x6df52c: stur            x2, [fp, #-0x40]
    // 0x6df530: LoadField: r1 = r0->field_b
    //     0x6df530: ldur            w1, [x0, #0xb]
    // 0x6df534: r3 = LoadInt32Instr(r1)
    //     0x6df534: sbfx            x3, x1, #1, #0x1f
    // 0x6df538: stur            x3, [fp, #-0x38]
    // 0x6df53c: r1 = 0
    //     0x6df53c: mov             x1, #0
    // 0x6df540: CheckStackOverflow
    //     0x6df540: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df544: cmp             SP, x16
    //     0x6df548: b.ls            #0x6df880
    // 0x6df54c: LoadField: r4 = r0->field_b
    //     0x6df54c: ldur            w4, [x0, #0xb]
    // 0x6df550: r5 = LoadInt32Instr(r4)
    //     0x6df550: sbfx            x5, x4, #1, #0x1f
    // 0x6df554: cmp             x3, x5
    // 0x6df558: b.ne            #0x6df85c
    // 0x6df55c: cmp             x1, x5
    // 0x6df560: b.ge            #0x6df68c
    // 0x6df564: LoadField: r4 = r0->field_f
    //     0x6df564: ldur            w4, [x0, #0xf]
    // 0x6df568: DecompressPointer r4
    //     0x6df568: add             x4, x4, HEAP, lsl #32
    // 0x6df56c: ArrayLoad: r5 = r4[r1]  ; Unknown_4
    //     0x6df56c: add             x16, x4, x1, lsl #2
    //     0x6df570: ldur            w5, [x16, #0xf]
    // 0x6df574: DecompressPointer r5
    //     0x6df574: add             x5, x5, HEAP, lsl #32
    // 0x6df578: stur            x5, [fp, #-0x28]
    // 0x6df57c: add             x4, x1, #1
    // 0x6df580: mov             x1, x5
    // 0x6df584: stur            x4, [fp, #-0x30]
    // 0x6df588: LoadField: r0 = r1->field_f
    //     0x6df588: ldur            w0, [x1, #0xf]
    // 0x6df58c: DecompressPointer r0
    //     0x6df58c: add             x0, x0, HEAP, lsl #32
    // 0x6df590: r16 = Sentinel
    //     0x6df590: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6df594: cmp             w0, w16
    // 0x6df598: b.ne            #0x6df5a8
    // 0x6df59c: r2 = reference
    //     0x6df59c: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x6df5a0: ldr             x2, [x2, #0xb0]
    // 0x6df5a4: r0 = InitLateFinalInstanceField()
    //     0x6df5a4: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x6df5a8: r1 = Null
    //     0x6df5a8: mov             x1, NULL
    // 0x6df5ac: r2 = 4
    //     0x6df5ac: mov             x2, #4
    // 0x6df5b0: stur            x0, [fp, #-0x50]
    // 0x6df5b4: r0 = AllocateArray()
    //     0x6df5b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6df5b8: stur            x0, [fp, #-0x58]
    // 0x6df5bc: r16 = "mekke_oda_id"
    //     0x6df5bc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x6df5c0: ldr             x16, [x16, #0x820]
    // 0x6df5c4: StoreField: r0->field_f = r16
    //     0x6df5c4: stur            w16, [x0, #0xf]
    // 0x6df5c8: r0 = InitLateStaticField(0xac0) // [package:cloud_firestore/cloud_firestore.dart] FieldValue::_factory
    //     0x6df5c8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6df5cc: ldr             x0, [x0, #0x1580]
    //     0x6df5d0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6df5d4: cmp             w0, w16
    //     0x6df5d8: b.ne            #0x6df5e8
    //     0x6df5dc: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ca8] Field <FieldValue._factory@577385638>: static late final (offset: 0xac0)
    //     0x6df5e0: ldr             x2, [x2, #0xca8]
    //     0x6df5e4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6df5e8: mov             x1, x0
    // 0x6df5ec: r0 = delete()
    //     0x6df5ec: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6df5f0: stur            x0, [fp, #-0x60]
    // 0x6df5f4: r0 = FieldValue()
    //     0x6df5f4: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6df5f8: mov             x1, x0
    // 0x6df5fc: ldur            x0, [fp, #-0x60]
    // 0x6df600: StoreField: r1->field_b = r0
    //     0x6df600: stur            w0, [x1, #0xb]
    // 0x6df604: StoreField: r1->field_7 = r0
    //     0x6df604: stur            w0, [x1, #7]
    // 0x6df608: mov             x0, x1
    // 0x6df60c: ldur            x1, [fp, #-0x58]
    // 0x6df610: ArrayStore: r1[1] = r0  ; List_4
    //     0x6df610: add             x25, x1, #0x13
    //     0x6df614: str             w0, [x25]
    //     0x6df618: tbz             w0, #0, #0x6df634
    //     0x6df61c: ldurb           w16, [x1, #-1]
    //     0x6df620: ldurb           w17, [x0, #-1]
    //     0x6df624: and             x16, x17, x16, lsr #2
    //     0x6df628: tst             x16, HEAP, lsr #32
    //     0x6df62c: b.eq            #0x6df634
    //     0x6df630: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6df634: r16 = <Object, Object?>
    //     0x6df634: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x6df638: ldr             x16, [x16, #0x828]
    // 0x6df63c: ldur            lr, [fp, #-0x58]
    // 0x6df640: stp             lr, x16, [SP]
    // 0x6df644: r0 = Map._fromLiteral()
    //     0x6df644: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6df648: mov             x1, x0
    // 0x6df64c: ldur            x0, [fp, #-0x50]
    // 0x6df650: LoadField: r2 = r0->field_7
    //     0x6df650: ldur            w2, [x0, #7]
    // 0x6df654: DecompressPointer r2
    //     0x6df654: add             x2, x2, HEAP, lsl #32
    // 0x6df658: stur            x2, [fp, #-0x58]
    // 0x6df65c: r0 = replaceValueWithDelegatesInMapFieldPath()
    //     0x6df65c: bl              #0x6d41d4  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMapFieldPath
    // 0x6df660: ldur            x1, [fp, #-0x58]
    // 0x6df664: mov             x2, x0
    // 0x6df668: r0 = update()
    //     0x6df668: bl              #0x6d3e60  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::update
    // 0x6df66c: mov             x1, x0
    // 0x6df670: stur            x1, [fp, #-0x50]
    // 0x6df674: r0 = Await()
    //     0x6df674: bl              #0x3dd188  ; AwaitStub
    // 0x6df678: ldur            x1, [fp, #-0x30]
    // 0x6df67c: ldur            x0, [fp, #-0x48]
    // 0x6df680: ldur            x2, [fp, #-0x40]
    // 0x6df684: ldur            x3, [fp, #-0x38]
    // 0x6df688: b               #0x6df540
    // 0x6df68c: ldur            x1, [fp, #-0x20]
    // 0x6df690: r2 = "users"
    //     0x6df690: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6df694: ldr             x2, [x2, #0x808]
    // 0x6df698: r0 = collection()
    //     0x6df698: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6df69c: mov             x1, x0
    // 0x6df6a0: ldur            x3, [fp, #-0x18]
    // 0x6df6a4: r2 = "medine_oda_id"
    //     0x6df6a4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x6df6a8: ldr             x2, [x2, #0x840]
    // 0x6df6ac: r0 = where()
    //     0x6df6ac: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6df6b0: mov             x1, x0
    // 0x6df6b4: r0 = get()
    //     0x6df6b4: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6df6b8: mov             x1, x0
    // 0x6df6bc: stur            x1, [fp, #-0x10]
    // 0x6df6c0: r0 = Await()
    //     0x6df6c0: bl              #0x3dd188  ; AwaitStub
    // 0x6df6c4: mov             x1, x0
    // 0x6df6c8: r0 = docs()
    //     0x6df6c8: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6df6cc: stur            x0, [fp, #-0x20]
    // 0x6df6d0: LoadField: r2 = r0->field_7
    //     0x6df6d0: ldur            w2, [x0, #7]
    // 0x6df6d4: DecompressPointer r2
    //     0x6df6d4: add             x2, x2, HEAP, lsl #32
    // 0x6df6d8: stur            x2, [fp, #-0x18]
    // 0x6df6dc: LoadField: r1 = r0->field_b
    //     0x6df6dc: ldur            w1, [x0, #0xb]
    // 0x6df6e0: r3 = LoadInt32Instr(r1)
    //     0x6df6e0: sbfx            x3, x1, #1, #0x1f
    // 0x6df6e4: stur            x3, [fp, #-0x38]
    // 0x6df6e8: r1 = 0
    //     0x6df6e8: mov             x1, #0
    // 0x6df6ec: CheckStackOverflow
    //     0x6df6ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6df6f0: cmp             SP, x16
    //     0x6df6f4: b.ls            #0x6df888
    // 0x6df6f8: LoadField: r4 = r0->field_b
    //     0x6df6f8: ldur            w4, [x0, #0xb]
    // 0x6df6fc: r5 = LoadInt32Instr(r4)
    //     0x6df6fc: sbfx            x5, x4, #1, #0x1f
    // 0x6df700: cmp             x3, x5
    // 0x6df704: b.ne            #0x6df840
    // 0x6df708: cmp             x1, x5
    // 0x6df70c: b.ge            #0x6df838
    // 0x6df710: LoadField: r4 = r0->field_f
    //     0x6df710: ldur            w4, [x0, #0xf]
    // 0x6df714: DecompressPointer r4
    //     0x6df714: add             x4, x4, HEAP, lsl #32
    // 0x6df718: ArrayLoad: r5 = r4[r1]  ; Unknown_4
    //     0x6df718: add             x16, x4, x1, lsl #2
    //     0x6df71c: ldur            w5, [x16, #0xf]
    // 0x6df720: DecompressPointer r5
    //     0x6df720: add             x5, x5, HEAP, lsl #32
    // 0x6df724: stur            x5, [fp, #-0x10]
    // 0x6df728: add             x4, x1, #1
    // 0x6df72c: mov             x1, x5
    // 0x6df730: stur            x4, [fp, #-0x30]
    // 0x6df734: LoadField: r0 = r1->field_f
    //     0x6df734: ldur            w0, [x1, #0xf]
    // 0x6df738: DecompressPointer r0
    //     0x6df738: add             x0, x0, HEAP, lsl #32
    // 0x6df73c: r16 = Sentinel
    //     0x6df73c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6df740: cmp             w0, w16
    // 0x6df744: b.ne            #0x6df754
    // 0x6df748: r2 = reference
    //     0x6df748: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x6df74c: ldr             x2, [x2, #0xb0]
    // 0x6df750: r0 = InitLateFinalInstanceField()
    //     0x6df750: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x6df754: r1 = Null
    //     0x6df754: mov             x1, NULL
    // 0x6df758: r2 = 4
    //     0x6df758: mov             x2, #4
    // 0x6df75c: stur            x0, [fp, #-0x28]
    // 0x6df760: r0 = AllocateArray()
    //     0x6df760: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6df764: stur            x0, [fp, #-0x40]
    // 0x6df768: r16 = "medine_oda_id"
    //     0x6df768: add             x16, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x6df76c: ldr             x16, [x16, #0x840]
    // 0x6df770: StoreField: r0->field_f = r16
    //     0x6df770: stur            w16, [x0, #0xf]
    // 0x6df774: r0 = InitLateStaticField(0xac0) // [package:cloud_firestore/cloud_firestore.dart] FieldValue::_factory
    //     0x6df774: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6df778: ldr             x0, [x0, #0x1580]
    //     0x6df77c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6df780: cmp             w0, w16
    //     0x6df784: b.ne            #0x6df794
    //     0x6df788: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ca8] Field <FieldValue._factory@577385638>: static late final (offset: 0xac0)
    //     0x6df78c: ldr             x2, [x2, #0xca8]
    //     0x6df790: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6df794: mov             x1, x0
    // 0x6df798: r0 = delete()
    //     0x6df798: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x6df79c: stur            x0, [fp, #-0x50]
    // 0x6df7a0: r0 = FieldValue()
    //     0x6df7a0: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x6df7a4: mov             x1, x0
    // 0x6df7a8: ldur            x0, [fp, #-0x50]
    // 0x6df7ac: StoreField: r1->field_b = r0
    //     0x6df7ac: stur            w0, [x1, #0xb]
    // 0x6df7b0: StoreField: r1->field_7 = r0
    //     0x6df7b0: stur            w0, [x1, #7]
    // 0x6df7b4: mov             x0, x1
    // 0x6df7b8: ldur            x1, [fp, #-0x40]
    // 0x6df7bc: ArrayStore: r1[1] = r0  ; List_4
    //     0x6df7bc: add             x25, x1, #0x13
    //     0x6df7c0: str             w0, [x25]
    //     0x6df7c4: tbz             w0, #0, #0x6df7e0
    //     0x6df7c8: ldurb           w16, [x1, #-1]
    //     0x6df7cc: ldurb           w17, [x0, #-1]
    //     0x6df7d0: and             x16, x17, x16, lsr #2
    //     0x6df7d4: tst             x16, HEAP, lsr #32
    //     0x6df7d8: b.eq            #0x6df7e0
    //     0x6df7dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6df7e0: r16 = <Object, Object?>
    //     0x6df7e0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x6df7e4: ldr             x16, [x16, #0x828]
    // 0x6df7e8: ldur            lr, [fp, #-0x40]
    // 0x6df7ec: stp             lr, x16, [SP]
    // 0x6df7f0: r0 = Map._fromLiteral()
    //     0x6df7f0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6df7f4: mov             x1, x0
    // 0x6df7f8: ldur            x0, [fp, #-0x28]
    // 0x6df7fc: LoadField: r2 = r0->field_7
    //     0x6df7fc: ldur            w2, [x0, #7]
    // 0x6df800: DecompressPointer r2
    //     0x6df800: add             x2, x2, HEAP, lsl #32
    // 0x6df804: stur            x2, [fp, #-0x40]
    // 0x6df808: r0 = replaceValueWithDelegatesInMapFieldPath()
    //     0x6df808: bl              #0x6d41d4  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMapFieldPath
    // 0x6df80c: ldur            x1, [fp, #-0x40]
    // 0x6df810: mov             x2, x0
    // 0x6df814: r0 = update()
    //     0x6df814: bl              #0x6d3e60  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::update
    // 0x6df818: mov             x1, x0
    // 0x6df81c: stur            x1, [fp, #-0x28]
    // 0x6df820: r0 = Await()
    //     0x6df820: bl              #0x3dd188  ; AwaitStub
    // 0x6df824: ldur            x1, [fp, #-0x30]
    // 0x6df828: ldur            x0, [fp, #-0x20]
    // 0x6df82c: ldur            x2, [fp, #-0x18]
    // 0x6df830: ldur            x3, [fp, #-0x38]
    // 0x6df834: b               #0x6df6ec
    // 0x6df838: r0 = Null
    //     0x6df838: mov             x0, NULL
    // 0x6df83c: r0 = ReturnAsyncNotFuture()
    //     0x6df83c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6df840: r0 = ConcurrentModificationError()
    //     0x6df840: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6df844: mov             x1, x0
    // 0x6df848: ldur            x0, [fp, #-0x20]
    // 0x6df84c: StoreField: r1->field_b = r0
    //     0x6df84c: stur            w0, [x1, #0xb]
    // 0x6df850: mov             x0, x1
    // 0x6df854: r0 = Throw()
    //     0x6df854: bl              #0x926328  ; ThrowStub
    // 0x6df858: brk             #0
    // 0x6df85c: r0 = ConcurrentModificationError()
    //     0x6df85c: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6df860: mov             x1, x0
    // 0x6df864: ldur            x0, [fp, #-0x48]
    // 0x6df868: StoreField: r1->field_b = r0
    //     0x6df868: stur            w0, [x1, #0xb]
    // 0x6df86c: mov             x0, x1
    // 0x6df870: r0 = Throw()
    //     0x6df870: bl              #0x926328  ; ThrowStub
    // 0x6df874: brk             #0
    // 0x6df878: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df878: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df87c: b               #0x6df4c8
    // 0x6df880: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df880: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df884: b               #0x6df54c
    // 0x6df888: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6df888: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6df88c: b               #0x6df6f8
  }
  _ updateRoom(/* No info */) async {
    // ** addr: 0x6e1520, size: 0xc4
    // 0x6e1520: EnterFrame
    //     0x6e1520: stp             fp, lr, [SP, #-0x10]!
    //     0x6e1524: mov             fp, SP
    // 0x6e1528: AllocStack(0x88)
    //     0x6e1528: sub             SP, SP, #0x88
    // 0x6e152c: SetupParameters(FirestoreService this /* r1 => r3, fp-0x78 */, dynamic _ /* r2 => r1, fp-0x70 */)
    //     0x6e152c: stur            NULL, [fp, #-8]
    //     0x6e1530: stur            x1, [fp, #-0x68]
    //     0x6e1534: mov             x16, x2
    //     0x6e1538: mov             x2, x1
    //     0x6e153c: mov             x1, x16
    //     0x6e1540: mov             x16, x3
    //     0x6e1544: mov             x3, x2
    //     0x6e1548: mov             x2, x16
    //     0x6e154c: stur            x1, [fp, #-0x70]
    //     0x6e1550: stur            x2, [fp, #-0x78]
    // 0x6e1554: CheckStackOverflow
    //     0x6e1554: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e1558: cmp             SP, x16
    //     0x6e155c: b.ls            #0x6e15dc
    // 0x6e1560: InitAsync() -> Future<bool>
    //     0x6e1560: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6e1564: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e1568: ldur            x0, [fp, #-0x68]
    // 0x6e156c: LoadField: r1 = r0->field_7
    //     0x6e156c: ldur            w1, [x0, #7]
    // 0x6e1570: DecompressPointer r1
    //     0x6e1570: add             x1, x1, HEAP, lsl #32
    // 0x6e1574: r2 = "rooms"
    //     0x6e1574: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x6e1578: ldr             x2, [x2, #0x60]
    // 0x6e157c: r0 = collection()
    //     0x6e157c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6e1580: ldur            x16, [fp, #-0x70]
    // 0x6e1584: str             x16, [SP]
    // 0x6e1588: mov             x1, x0
    // 0x6e158c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6e158c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6e1590: r0 = doc()
    //     0x6e1590: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6e1594: stur            x0, [fp, #-0x80]
    // 0x6e1598: r0 = SetOptions()
    //     0x6e1598: bl              #0x5ef714  ; AllocateSetOptionsStub -> SetOptions (size=0x10)
    // 0x6e159c: mov             x1, x0
    // 0x6e15a0: r0 = true
    //     0x6e15a0: add             x0, NULL, #0x20  ; true
    // 0x6e15a4: StoreField: r1->field_7 = r0
    //     0x6e15a4: stur            w0, [x1, #7]
    // 0x6e15a8: str             x1, [SP]
    // 0x6e15ac: ldur            x1, [fp, #-0x80]
    // 0x6e15b0: ldur            x2, [fp, #-0x78]
    // 0x6e15b4: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6e15b4: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6e15b8: r0 = set()
    //     0x6e15b8: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6e15bc: mov             x1, x0
    // 0x6e15c0: stur            x1, [fp, #-0x80]
    // 0x6e15c4: r0 = Await()
    //     0x6e15c4: bl              #0x3dd188  ; AwaitStub
    // 0x6e15c8: r0 = true
    //     0x6e15c8: add             x0, NULL, #0x20  ; true
    // 0x6e15cc: r0 = ReturnAsyncNotFuture()
    //     0x6e15cc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e15d0: sub             SP, fp, #0x88
    // 0x6e15d4: r0 = false
    //     0x6e15d4: add             x0, NULL, #0x30  ; false
    // 0x6e15d8: r0 = ReturnAsyncNotFuture()
    //     0x6e15d8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e15dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e15dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e15e0: b               #0x6e1560
  }
  _ assignTripManager(/* No info */) async {
    // ** addr: 0x6e2e7c, size: 0x204
    // 0x6e2e7c: EnterFrame
    //     0x6e2e7c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e2e80: mov             fp, SP
    // 0x6e2e84: AllocStack(0xa0)
    //     0x6e2e84: sub             SP, SP, #0xa0
    // 0x6e2e88: SetupParameters(FirestoreService this /* r1 => r2, fp-0x80 */, dynamic _ /* r2 => r1, fp-0x78 */)
    //     0x6e2e88: stur            NULL, [fp, #-8]
    //     0x6e2e8c: stur            x1, [fp, #-0x70]
    //     0x6e2e90: mov             x16, x2
    //     0x6e2e94: mov             x2, x1
    //     0x6e2e98: mov             x1, x16
    //     0x6e2e9c: stur            x1, [fp, #-0x78]
    //     0x6e2ea0: stur            x3, [fp, #-0x80]
    // 0x6e2ea4: CheckStackOverflow
    //     0x6e2ea4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e2ea8: cmp             SP, x16
    //     0x6e2eac: b.ls            #0x6e3078
    // 0x6e2eb0: InitAsync() -> Future<bool>
    //     0x6e2eb0: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6e2eb4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e2eb8: ldur            x0, [fp, #-0x70]
    // 0x6e2ebc: LoadField: r1 = r0->field_7
    //     0x6e2ebc: ldur            w1, [x0, #7]
    // 0x6e2ec0: DecompressPointer r1
    //     0x6e2ec0: add             x1, x1, HEAP, lsl #32
    // 0x6e2ec4: r2 = "trip_managers"
    //     0x6e2ec4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13be8] "trip_managers"
    //     0x6e2ec8: ldr             x2, [x2, #0xbe8]
    // 0x6e2ecc: r0 = collection()
    //     0x6e2ecc: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6e2ed0: mov             x1, x0
    // 0x6e2ed4: ldur            x3, [fp, #-0x78]
    // 0x6e2ed8: r2 = "trip_id"
    //     0x6e2ed8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x6e2edc: ldr             x2, [x2, #0xbf0]
    // 0x6e2ee0: r0 = where()
    //     0x6e2ee0: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6e2ee4: mov             x1, x0
    // 0x6e2ee8: ldur            x3, [fp, #-0x80]
    // 0x6e2eec: r2 = "user_id"
    //     0x6e2eec: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf8] "user_id"
    //     0x6e2ef0: ldr             x2, [x2, #0xbf8]
    // 0x6e2ef4: r0 = where()
    //     0x6e2ef4: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6e2ef8: mov             x1, x0
    // 0x6e2efc: r0 = get()
    //     0x6e2efc: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6e2f00: mov             x1, x0
    // 0x6e2f04: stur            x1, [fp, #-0x88]
    // 0x6e2f08: r0 = Await()
    //     0x6e2f08: bl              #0x3dd188  ; AwaitStub
    // 0x6e2f0c: mov             x1, x0
    // 0x6e2f10: stur            x0, [fp, #-0x88]
    // 0x6e2f14: r0 = docs()
    //     0x6e2f14: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6e2f18: LoadField: r1 = r0->field_b
    //     0x6e2f18: ldur            w1, [x0, #0xb]
    // 0x6e2f1c: cbz             w1, #0x6e2f28
    // 0x6e2f20: r0 = true
    //     0x6e2f20: add             x0, NULL, #0x20  ; true
    // 0x6e2f24: r0 = ReturnAsyncNotFuture()
    //     0x6e2f24: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e2f28: ldur            x1, [fp, #-0x70]
    // 0x6e2f2c: r0 = tripManagersCollection()
    //     0x6e2f2c: bl              #0x5d92a0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::tripManagersCollection
    // 0x6e2f30: mov             x1, x0
    // 0x6e2f34: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e2f34: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e2f38: r0 = doc()
    //     0x6e2f38: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6e2f3c: r1 = Null
    //     0x6e2f3c: mov             x1, NULL
    // 0x6e2f40: r2 = 16
    //     0x6e2f40: mov             x2, #0x10
    // 0x6e2f44: stur            x0, [fp, #-0x88]
    // 0x6e2f48: r0 = AllocateArray()
    //     0x6e2f48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e2f4c: stur            x0, [fp, #-0x90]
    // 0x6e2f50: r16 = "id"
    //     0x6e2f50: add             x16, PP, #9, lsl #12  ; [pp+0x9ae8] "id"
    //     0x6e2f54: ldr             x16, [x16, #0xae8]
    // 0x6e2f58: StoreField: r0->field_f = r16
    //     0x6e2f58: stur            w16, [x0, #0xf]
    // 0x6e2f5c: ldur            x1, [fp, #-0x88]
    // 0x6e2f60: r0 = id()
    //     0x6e2f60: bl              #0x5d3d2c  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::id
    // 0x6e2f64: ldur            x1, [fp, #-0x90]
    // 0x6e2f68: ArrayStore: r1[1] = r0  ; List_4
    //     0x6e2f68: add             x25, x1, #0x13
    //     0x6e2f6c: str             w0, [x25]
    //     0x6e2f70: tbz             w0, #0, #0x6e2f8c
    //     0x6e2f74: ldurb           w16, [x1, #-1]
    //     0x6e2f78: ldurb           w17, [x0, #-1]
    //     0x6e2f7c: and             x16, x17, x16, lsr #2
    //     0x6e2f80: tst             x16, HEAP, lsr #32
    //     0x6e2f84: b.eq            #0x6e2f8c
    //     0x6e2f88: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e2f8c: ldur            x2, [fp, #-0x90]
    // 0x6e2f90: r16 = "trip_id"
    //     0x6e2f90: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x6e2f94: ldr             x16, [x16, #0xbf0]
    // 0x6e2f98: ArrayStore: r2[0] = r16  ; List_4
    //     0x6e2f98: stur            w16, [x2, #0x17]
    // 0x6e2f9c: mov             x1, x2
    // 0x6e2fa0: ldur            x0, [fp, #-0x78]
    // 0x6e2fa4: ArrayStore: r1[3] = r0  ; List_4
    //     0x6e2fa4: add             x25, x1, #0x1b
    //     0x6e2fa8: str             w0, [x25]
    //     0x6e2fac: tbz             w0, #0, #0x6e2fc8
    //     0x6e2fb0: ldurb           w16, [x1, #-1]
    //     0x6e2fb4: ldurb           w17, [x0, #-1]
    //     0x6e2fb8: and             x16, x17, x16, lsr #2
    //     0x6e2fbc: tst             x16, HEAP, lsr #32
    //     0x6e2fc0: b.eq            #0x6e2fc8
    //     0x6e2fc4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e2fc8: r16 = "user_id"
    //     0x6e2fc8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13bf8] "user_id"
    //     0x6e2fcc: ldr             x16, [x16, #0xbf8]
    // 0x6e2fd0: StoreField: r2->field_1f = r16
    //     0x6e2fd0: stur            w16, [x2, #0x1f]
    // 0x6e2fd4: mov             x1, x2
    // 0x6e2fd8: ldur            x0, [fp, #-0x80]
    // 0x6e2fdc: ArrayStore: r1[5] = r0  ; List_4
    //     0x6e2fdc: add             x25, x1, #0x23
    //     0x6e2fe0: str             w0, [x25]
    //     0x6e2fe4: tbz             w0, #0, #0x6e3000
    //     0x6e2fe8: ldurb           w16, [x1, #-1]
    //     0x6e2fec: ldurb           w17, [x0, #-1]
    //     0x6e2ff0: and             x16, x17, x16, lsr #2
    //     0x6e2ff4: tst             x16, HEAP, lsr #32
    //     0x6e2ff8: b.eq            #0x6e3000
    //     0x6e2ffc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e3000: r16 = "created_at"
    //     0x6e3000: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6e3004: ldr             x16, [x16, #0xc00]
    // 0x6e3008: StoreField: r2->field_27 = r16
    //     0x6e3008: stur            w16, [x2, #0x27]
    // 0x6e300c: r0 = serverTimestamp()
    //     0x6e300c: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6e3010: ldur            x1, [fp, #-0x90]
    // 0x6e3014: ArrayStore: r1[7] = r0  ; List_4
    //     0x6e3014: add             x25, x1, #0x2b
    //     0x6e3018: str             w0, [x25]
    //     0x6e301c: tbz             w0, #0, #0x6e3038
    //     0x6e3020: ldurb           w16, [x1, #-1]
    //     0x6e3024: ldurb           w17, [x0, #-1]
    //     0x6e3028: and             x16, x17, x16, lsr #2
    //     0x6e302c: tst             x16, HEAP, lsr #32
    //     0x6e3030: b.eq            #0x6e3038
    //     0x6e3034: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e3038: r16 = <String, Object>
    //     0x6e3038: ldr             x16, [PP, #0x120]  ; [pp+0x120] TypeArguments: <String, Object>
    // 0x6e303c: ldur            lr, [fp, #-0x90]
    // 0x6e3040: stp             lr, x16, [SP]
    // 0x6e3044: r0 = Map._fromLiteral()
    //     0x6e3044: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6e3048: ldur            x1, [fp, #-0x88]
    // 0x6e304c: mov             x2, x0
    // 0x6e3050: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e3050: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e3054: r0 = set()
    //     0x6e3054: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6e3058: mov             x1, x0
    // 0x6e305c: stur            x1, [fp, #-0x90]
    // 0x6e3060: r0 = Await()
    //     0x6e3060: bl              #0x3dd188  ; AwaitStub
    // 0x6e3064: r0 = true
    //     0x6e3064: add             x0, NULL, #0x20  ; true
    // 0x6e3068: r0 = ReturnAsyncNotFuture()
    //     0x6e3068: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e306c: sub             SP, fp, #0xa0
    // 0x6e3070: r0 = false
    //     0x6e3070: add             x0, NULL, #0x30  ; false
    // 0x6e3074: r0 = ReturnAsyncNotFuture()
    //     0x6e3074: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e3078: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3078: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e307c: b               #0x6e2eb0
  }
  _ createTrip(/* No info */) async {
    // ** addr: 0x6e3398, size: 0xcc
    // 0x6e3398: EnterFrame
    //     0x6e3398: stp             fp, lr, [SP, #-0x10]!
    //     0x6e339c: mov             fp, SP
    // 0x6e33a0: AllocStack(0x88)
    //     0x6e33a0: sub             SP, SP, #0x88
    // 0x6e33a4: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x6e33a4: stur            NULL, [fp, #-8]
    //     0x6e33a8: stur            x1, [fp, #-0x60]
    //     0x6e33ac: mov             x16, x2
    //     0x6e33b0: mov             x2, x1
    //     0x6e33b4: mov             x1, x16
    //     0x6e33b8: stur            x1, [fp, #-0x68]
    // 0x6e33bc: CheckStackOverflow
    //     0x6e33bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e33c0: cmp             SP, x16
    //     0x6e33c4: b.ls            #0x6e345c
    // 0x6e33c8: InitAsync() -> Future<String?>
    //     0x6e33c8: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6e33cc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e33d0: ldur            x1, [fp, #-0x60]
    // 0x6e33d4: r0 = tripsCollection()
    //     0x6e33d4: bl              #0x5d9cc4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::tripsCollection
    // 0x6e33d8: mov             x1, x0
    // 0x6e33dc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e33dc: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e33e0: r0 = doc()
    //     0x6e33e0: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6e33e4: stur            x0, [fp, #-0x78]
    // 0x6e33e8: LoadField: r1 = r0->field_7
    //     0x6e33e8: ldur            w1, [x0, #7]
    // 0x6e33ec: DecompressPointer r1
    //     0x6e33ec: add             x1, x1, HEAP, lsl #32
    // 0x6e33f0: LoadField: r2 = r1->field_b
    //     0x6e33f0: ldur            w2, [x1, #0xb]
    // 0x6e33f4: DecompressPointer r2
    //     0x6e33f4: add             x2, x2, HEAP, lsl #32
    // 0x6e33f8: LoadField: r3 = r2->field_7
    //     0x6e33f8: ldur            w3, [x2, #7]
    // 0x6e33fc: DecompressPointer r3
    //     0x6e33fc: add             x3, x3, HEAP, lsl #32
    // 0x6e3400: mov             x1, x3
    // 0x6e3404: stur            x3, [fp, #-0x70]
    // 0x6e3408: r0 = last()
    //     0x6e3408: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6e340c: str             x0, [SP]
    // 0x6e3410: ldur            x1, [fp, #-0x68]
    // 0x6e3414: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x6e3414: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x6e3418: ldr             x4, [x4, #0xb78]
    // 0x6e341c: r0 = copyWith()
    //     0x6e341c: bl              #0x6e3080  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::copyWith
    // 0x6e3420: mov             x1, x0
    // 0x6e3424: r0 = toFirestore()
    //     0x6e3424: bl              #0x6e3464  ; [package:umrem_demo/features/admin/models/trip_model.dart] TripModel::toFirestore
    // 0x6e3428: ldur            x1, [fp, #-0x78]
    // 0x6e342c: mov             x2, x0
    // 0x6e3430: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e3430: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e3434: r0 = set()
    //     0x6e3434: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6e3438: mov             x1, x0
    // 0x6e343c: stur            x1, [fp, #-0x80]
    // 0x6e3440: r0 = Await()
    //     0x6e3440: bl              #0x3dd188  ; AwaitStub
    // 0x6e3444: ldur            x1, [fp, #-0x70]
    // 0x6e3448: r0 = last()
    //     0x6e3448: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6e344c: r0 = ReturnAsync()
    //     0x6e344c: b               #0x427094  ; ReturnAsyncStub
    // 0x6e3450: sub             SP, fp, #0x88
    // 0x6e3454: r0 = Null
    //     0x6e3454: mov             x0, NULL
    // 0x6e3458: r0 = ReturnAsyncNotFuture()
    //     0x6e3458: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e345c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e345c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3460: b               #0x6e33c8
  }
  _ removeTripManager(/* No info */) async {
    // ** addr: 0x6e3d14, size: 0x1f4
    // 0x6e3d14: EnterFrame
    //     0x6e3d14: stp             fp, lr, [SP, #-0x10]!
    //     0x6e3d18: mov             fp, SP
    // 0x6e3d1c: AllocStack(0xa8)
    //     0x6e3d1c: sub             SP, SP, #0xa8
    // 0x6e3d20: SetupParameters(FirestoreService this /* r1 => r2, fp-0x88 */, dynamic _ /* r2 => r1, fp-0x80 */)
    //     0x6e3d20: stur            NULL, [fp, #-8]
    //     0x6e3d24: stur            x1, [fp, #-0x78]
    //     0x6e3d28: mov             x16, x2
    //     0x6e3d2c: mov             x2, x1
    //     0x6e3d30: mov             x1, x16
    //     0x6e3d34: stur            x1, [fp, #-0x80]
    //     0x6e3d38: stur            x3, [fp, #-0x88]
    // 0x6e3d3c: CheckStackOverflow
    //     0x6e3d3c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e3d40: cmp             SP, x16
    //     0x6e3d44: b.ls            #0x6e3ef4
    // 0x6e3d48: InitAsync() -> Future<bool>
    //     0x6e3d48: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6e3d4c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e3d50: ldur            x0, [fp, #-0x78]
    // 0x6e3d54: LoadField: r1 = r0->field_7
    //     0x6e3d54: ldur            w1, [x0, #7]
    // 0x6e3d58: DecompressPointer r1
    //     0x6e3d58: add             x1, x1, HEAP, lsl #32
    // 0x6e3d5c: r2 = "trip_managers"
    //     0x6e3d5c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13be8] "trip_managers"
    //     0x6e3d60: ldr             x2, [x2, #0xbe8]
    // 0x6e3d64: r0 = collection()
    //     0x6e3d64: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6e3d68: mov             x1, x0
    // 0x6e3d6c: ldur            x3, [fp, #-0x80]
    // 0x6e3d70: r2 = "trip_id"
    //     0x6e3d70: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf0] "trip_id"
    //     0x6e3d74: ldr             x2, [x2, #0xbf0]
    // 0x6e3d78: r0 = where()
    //     0x6e3d78: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6e3d7c: mov             x1, x0
    // 0x6e3d80: ldur            x3, [fp, #-0x88]
    // 0x6e3d84: r2 = "user_id"
    //     0x6e3d84: add             x2, PP, #0x13, lsl #12  ; [pp+0x13bf8] "user_id"
    //     0x6e3d88: ldr             x2, [x2, #0xbf8]
    // 0x6e3d8c: r0 = where()
    //     0x6e3d8c: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6e3d90: mov             x1, x0
    // 0x6e3d94: r0 = get()
    //     0x6e3d94: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6e3d98: mov             x1, x0
    // 0x6e3d9c: stur            x1, [fp, #-0x90]
    // 0x6e3da0: r0 = Await()
    //     0x6e3da0: bl              #0x3dd188  ; AwaitStub
    // 0x6e3da4: mov             x1, x0
    // 0x6e3da8: stur            x0, [fp, #-0x90]
    // 0x6e3dac: r0 = docs()
    //     0x6e3dac: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6e3db0: stur            x0, [fp, #-0xa0]
    // 0x6e3db4: LoadField: r2 = r0->field_7
    //     0x6e3db4: ldur            w2, [x0, #7]
    // 0x6e3db8: DecompressPointer r2
    //     0x6e3db8: add             x2, x2, HEAP, lsl #32
    // 0x6e3dbc: mov             x1, x2
    // 0x6e3dc0: stur            x2, [fp, #-0x98]
    // 0x6e3dc4: r0 = ListIterator()
    //     0x6e3dc4: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x6e3dc8: mov             x3, x0
    // 0x6e3dcc: ldur            x2, [fp, #-0xa0]
    // 0x6e3dd0: stur            x3, [fp, #-0x80]
    // 0x6e3dd4: StoreField: r3->field_b = r2
    //     0x6e3dd4: stur            w2, [x3, #0xb]
    // 0x6e3dd8: LoadField: r0 = r2->field_b
    //     0x6e3dd8: ldur            w0, [x2, #0xb]
    // 0x6e3ddc: r4 = LoadInt32Instr(r0)
    //     0x6e3ddc: sbfx            x4, x0, #1, #0x1f
    // 0x6e3de0: stur            x4, [fp, #-0xa8]
    // 0x6e3de4: StoreField: r3->field_f = r4
    //     0x6e3de4: stur            x4, [x3, #0xf]
    // 0x6e3de8: ArrayStore: r3[0] = rZR  ; List_8
    //     0x6e3de8: stur            xzr, [x3, #0x17]
    // 0x6e3dec: CheckStackOverflow
    //     0x6e3dec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e3df0: cmp             SP, x16
    //     0x6e3df4: b.ls            #0x6e3efc
    // 0x6e3df8: LoadField: r0 = r2->field_b
    //     0x6e3df8: ldur            w0, [x2, #0xb]
    // 0x6e3dfc: r1 = LoadInt32Instr(r0)
    //     0x6e3dfc: sbfx            x1, x0, #1, #0x1f
    // 0x6e3e00: cmp             x4, x1
    // 0x6e3e04: b.ne            #0x6e3ecc
    // 0x6e3e08: ArrayLoad: r5 = r3[0]  ; List_8
    //     0x6e3e08: ldur            x5, [x3, #0x17]
    // 0x6e3e0c: cmp             x5, x1
    // 0x6e3e10: b.ge            #0x6e3eb0
    // 0x6e3e14: mov             x0, x1
    // 0x6e3e18: mov             x1, x5
    // 0x6e3e1c: cmp             x1, x0
    // 0x6e3e20: b.hs            #0x6e3f04
    // 0x6e3e24: LoadField: r0 = r2->field_f
    //     0x6e3e24: ldur            w0, [x2, #0xf]
    // 0x6e3e28: DecompressPointer r0
    //     0x6e3e28: add             x0, x0, HEAP, lsl #32
    // 0x6e3e2c: ArrayLoad: r6 = r0[r5]  ; Unknown_4
    //     0x6e3e2c: add             x16, x0, x5, lsl #2
    //     0x6e3e30: ldur            w6, [x16, #0xf]
    // 0x6e3e34: DecompressPointer r6
    //     0x6e3e34: add             x6, x6, HEAP, lsl #32
    // 0x6e3e38: mov             x0, x6
    // 0x6e3e3c: stur            x6, [fp, #-0x78]
    // 0x6e3e40: StoreField: r3->field_1f = r0
    //     0x6e3e40: stur            w0, [x3, #0x1f]
    //     0x6e3e44: ldurb           w16, [x3, #-1]
    //     0x6e3e48: ldurb           w17, [x0, #-1]
    //     0x6e3e4c: and             x16, x17, x16, lsr #2
    //     0x6e3e50: tst             x16, HEAP, lsr #32
    //     0x6e3e54: b.eq            #0x6e3e5c
    //     0x6e3e58: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e3e5c: add             x0, x5, #1
    // 0x6e3e60: ArrayStore: r3[0] = r0  ; List_8
    //     0x6e3e60: stur            x0, [x3, #0x17]
    // 0x6e3e64: mov             x1, x6
    // 0x6e3e68: LoadField: r0 = r1->field_f
    //     0x6e3e68: ldur            w0, [x1, #0xf]
    // 0x6e3e6c: DecompressPointer r0
    //     0x6e3e6c: add             x0, x0, HEAP, lsl #32
    // 0x6e3e70: r16 = Sentinel
    //     0x6e3e70: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6e3e74: cmp             w0, w16
    // 0x6e3e78: b.ne            #0x6e3e88
    // 0x6e3e7c: r2 = reference
    //     0x6e3e7c: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x6e3e80: ldr             x2, [x2, #0xb0]
    // 0x6e3e84: r0 = InitLateFinalInstanceField()
    //     0x6e3e84: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x6e3e88: LoadField: r1 = r0->field_7
    //     0x6e3e88: ldur            w1, [x0, #7]
    // 0x6e3e8c: DecompressPointer r1
    //     0x6e3e8c: add             x1, x1, HEAP, lsl #32
    // 0x6e3e90: r0 = delete()
    //     0x6e3e90: bl              #0x6d6a0c  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::delete
    // 0x6e3e94: mov             x1, x0
    // 0x6e3e98: stur            x1, [fp, #-0x88]
    // 0x6e3e9c: r0 = Await()
    //     0x6e3e9c: bl              #0x3dd188  ; AwaitStub
    // 0x6e3ea0: ldur            x2, [fp, #-0xa0]
    // 0x6e3ea4: ldur            x3, [fp, #-0x80]
    // 0x6e3ea8: ldur            x4, [fp, #-0xa8]
    // 0x6e3eac: b               #0x6e3dec
    // 0x6e3eb0: mov             x0, x3
    // 0x6e3eb4: StoreField: r0->field_1f = rNULL
    //     0x6e3eb4: stur            NULL, [x0, #0x1f]
    // 0x6e3eb8: r0 = true
    //     0x6e3eb8: add             x0, NULL, #0x20  ; true
    // 0x6e3ebc: r0 = ReturnAsyncNotFuture()
    //     0x6e3ebc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e3ec0: sub             SP, fp, #0xa8
    // 0x6e3ec4: r0 = false
    //     0x6e3ec4: add             x0, NULL, #0x30  ; false
    // 0x6e3ec8: r0 = ReturnAsyncNotFuture()
    //     0x6e3ec8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e3ecc: mov             x1, x2
    // 0x6e3ed0: mov             x0, x3
    // 0x6e3ed4: r0 = ConcurrentModificationError()
    //     0x6e3ed4: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6e3ed8: mov             x1, x0
    // 0x6e3edc: ldur            x0, [fp, #-0xa0]
    // 0x6e3ee0: stur            x1, [fp, #-0x78]
    // 0x6e3ee4: StoreField: r1->field_b = r0
    //     0x6e3ee4: stur            w0, [x1, #0xb]
    // 0x6e3ee8: mov             x0, x1
    // 0x6e3eec: r0 = Throw()
    //     0x6e3eec: bl              #0x926328  ; ThrowStub
    // 0x6e3ef0: brk             #0
    // 0x6e3ef4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3ef4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3ef8: b               #0x6e3d48
    // 0x6e3efc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3efc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3f00: b               #0x6e3df8
    // 0x6e3f04: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6e3f04: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ updateTrip(/* No info */) async {
    // ** addr: 0x6e3f08, size: 0xb8
    // 0x6e3f08: EnterFrame
    //     0x6e3f08: stp             fp, lr, [SP, #-0x10]!
    //     0x6e3f0c: mov             fp, SP
    // 0x6e3f10: AllocStack(0x88)
    //     0x6e3f10: sub             SP, SP, #0x88
    // 0x6e3f14: SetupParameters(FirestoreService this /* r1 => r3, fp-0x70 */, dynamic _ /* r3 => r1, fp-0x78 */)
    //     0x6e3f14: stur            NULL, [fp, #-8]
    //     0x6e3f18: stur            x1, [fp, #-0x68]
    //     0x6e3f1c: mov             x16, x3
    //     0x6e3f20: mov             x3, x1
    //     0x6e3f24: mov             x1, x16
    //     0x6e3f28: stur            x2, [fp, #-0x70]
    //     0x6e3f2c: stur            x1, [fp, #-0x78]
    // 0x6e3f30: CheckStackOverflow
    //     0x6e3f30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e3f34: cmp             SP, x16
    //     0x6e3f38: b.ls            #0x6e3fb8
    // 0x6e3f3c: InitAsync() -> Future<bool>
    //     0x6e3f3c: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6e3f40: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e3f44: ldur            x0, [fp, #-0x68]
    // 0x6e3f48: r0 = serverTimestamp()
    //     0x6e3f48: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6e3f4c: ldur            x1, [fp, #-0x78]
    // 0x6e3f50: mov             x3, x0
    // 0x6e3f54: r2 = "updated_at"
    //     0x6e3f54: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6e3f58: ldr             x2, [x2, #0x58]
    // 0x6e3f5c: r0 = []=()
    //     0x6e3f5c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6e3f60: ldur            x0, [fp, #-0x68]
    // 0x6e3f64: LoadField: r1 = r0->field_7
    //     0x6e3f64: ldur            w1, [x0, #7]
    // 0x6e3f68: DecompressPointer r1
    //     0x6e3f68: add             x1, x1, HEAP, lsl #32
    // 0x6e3f6c: r2 = "trips"
    //     0x6e3f6c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14088] "trips"
    //     0x6e3f70: ldr             x2, [x2, #0x88]
    // 0x6e3f74: r0 = collection()
    //     0x6e3f74: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6e3f78: ldur            x16, [fp, #-0x70]
    // 0x6e3f7c: str             x16, [SP]
    // 0x6e3f80: mov             x1, x0
    // 0x6e3f84: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6e3f84: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6e3f88: r0 = doc()
    //     0x6e3f88: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6e3f8c: mov             x1, x0
    // 0x6e3f90: ldur            x2, [fp, #-0x78]
    // 0x6e3f94: r0 = update()
    //     0x6e3f94: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x6e3f98: mov             x1, x0
    // 0x6e3f9c: stur            x1, [fp, #-0x80]
    // 0x6e3fa0: r0 = Await()
    //     0x6e3fa0: bl              #0x3dd188  ; AwaitStub
    // 0x6e3fa4: r0 = true
    //     0x6e3fa4: add             x0, NULL, #0x20  ; true
    // 0x6e3fa8: r0 = ReturnAsyncNotFuture()
    //     0x6e3fa8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e3fac: sub             SP, fp, #0x88
    // 0x6e3fb0: r0 = false
    //     0x6e3fb0: add             x0, NULL, #0x30  ; false
    // 0x6e3fb4: r0 = ReturnAsyncNotFuture()
    //     0x6e3fb4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e3fb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e3fb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e3fbc: b               #0x6e3f3c
  }
  _ createRoom(/* No info */) async {
    // ** addr: 0x6e58c8, size: 0xdc
    // 0x6e58c8: EnterFrame
    //     0x6e58c8: stp             fp, lr, [SP, #-0x10]!
    //     0x6e58cc: mov             fp, SP
    // 0x6e58d0: AllocStack(0x88)
    //     0x6e58d0: sub             SP, SP, #0x88
    // 0x6e58d4: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x6e58d4: stur            NULL, [fp, #-8]
    //     0x6e58d8: stur            x1, [fp, #-0x60]
    //     0x6e58dc: mov             x16, x2
    //     0x6e58e0: mov             x2, x1
    //     0x6e58e4: mov             x1, x16
    //     0x6e58e8: stur            x1, [fp, #-0x68]
    // 0x6e58ec: CheckStackOverflow
    //     0x6e58ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e58f0: cmp             SP, x16
    //     0x6e58f4: b.ls            #0x6e599c
    // 0x6e58f8: InitAsync() -> Future<String?>
    //     0x6e58f8: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6e58fc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e5900: ldur            x0, [fp, #-0x60]
    // 0x6e5904: LoadField: r1 = r0->field_7
    //     0x6e5904: ldur            w1, [x0, #7]
    // 0x6e5908: DecompressPointer r1
    //     0x6e5908: add             x1, x1, HEAP, lsl #32
    // 0x6e590c: r2 = "rooms"
    //     0x6e590c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x6e5910: ldr             x2, [x2, #0x60]
    // 0x6e5914: r0 = collection()
    //     0x6e5914: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6e5918: mov             x1, x0
    // 0x6e591c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e591c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e5920: r0 = doc()
    //     0x6e5920: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6e5924: stur            x0, [fp, #-0x78]
    // 0x6e5928: LoadField: r1 = r0->field_7
    //     0x6e5928: ldur            w1, [x0, #7]
    // 0x6e592c: DecompressPointer r1
    //     0x6e592c: add             x1, x1, HEAP, lsl #32
    // 0x6e5930: LoadField: r2 = r1->field_b
    //     0x6e5930: ldur            w2, [x1, #0xb]
    // 0x6e5934: DecompressPointer r2
    //     0x6e5934: add             x2, x2, HEAP, lsl #32
    // 0x6e5938: LoadField: r3 = r2->field_7
    //     0x6e5938: ldur            w3, [x2, #7]
    // 0x6e593c: DecompressPointer r3
    //     0x6e593c: add             x3, x3, HEAP, lsl #32
    // 0x6e5940: mov             x1, x3
    // 0x6e5944: stur            x3, [fp, #-0x70]
    // 0x6e5948: r0 = last()
    //     0x6e5948: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6e594c: str             x0, [SP]
    // 0x6e5950: ldur            x1, [fp, #-0x68]
    // 0x6e5954: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x6e5954: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x6e5958: ldr             x4, [x4, #0xb78]
    // 0x6e595c: r0 = copyWith()
    //     0x6e595c: bl              #0x6e1264  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::copyWith
    // 0x6e5960: mov             x1, x0
    // 0x6e5964: r0 = toFirestore()
    //     0x6e5964: bl              #0x6e59a4  ; [package:umrem_demo/features/admin/models/room_model.dart] RoomModel::toFirestore
    // 0x6e5968: ldur            x1, [fp, #-0x78]
    // 0x6e596c: mov             x2, x0
    // 0x6e5970: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e5970: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e5974: r0 = set()
    //     0x6e5974: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6e5978: mov             x1, x0
    // 0x6e597c: stur            x1, [fp, #-0x80]
    // 0x6e5980: r0 = Await()
    //     0x6e5980: bl              #0x3dd188  ; AwaitStub
    // 0x6e5984: ldur            x1, [fp, #-0x70]
    // 0x6e5988: r0 = last()
    //     0x6e5988: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x6e598c: r0 = ReturnAsync()
    //     0x6e598c: b               #0x427094  ; ReturnAsyncStub
    // 0x6e5990: sub             SP, fp, #0x88
    // 0x6e5994: r0 = Null
    //     0x6e5994: mov             x0, NULL
    // 0x6e5998: r0 = ReturnAsyncNotFuture()
    //     0x6e5998: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e599c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e599c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e59a0: b               #0x6e58f8
  }
  _ createOrUpdateUser(/* No info */) async {
    // ** addr: 0x6eebf0, size: 0xcc
    // 0x6eebf0: EnterFrame
    //     0x6eebf0: stp             fp, lr, [SP, #-0x10]!
    //     0x6eebf4: mov             fp, SP
    // 0x6eebf8: AllocStack(0x80)
    //     0x6eebf8: sub             SP, SP, #0x80
    // 0x6eebfc: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x6eebfc: stur            NULL, [fp, #-8]
    //     0x6eec00: stur            x1, [fp, #-0x60]
    //     0x6eec04: mov             x16, x2
    //     0x6eec08: mov             x2, x1
    //     0x6eec0c: mov             x1, x16
    //     0x6eec10: stur            x1, [fp, #-0x68]
    // 0x6eec14: CheckStackOverflow
    //     0x6eec14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6eec18: cmp             SP, x16
    //     0x6eec1c: b.ls            #0x6eecb4
    // 0x6eec20: InitAsync() -> Future<bool>
    //     0x6eec20: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6eec24: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6eec28: ldur            x3, [fp, #-0x60]
    // 0x6eec2c: ldur            x0, [fp, #-0x68]
    // 0x6eec30: LoadField: r1 = r3->field_7
    //     0x6eec30: ldur            w1, [x3, #7]
    // 0x6eec34: DecompressPointer r1
    //     0x6eec34: add             x1, x1, HEAP, lsl #32
    // 0x6eec38: r2 = "users"
    //     0x6eec38: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6eec3c: ldr             x2, [x2, #0x808]
    // 0x6eec40: r0 = collection()
    //     0x6eec40: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6eec44: mov             x1, x0
    // 0x6eec48: ldur            x0, [fp, #-0x68]
    // 0x6eec4c: LoadField: r2 = r0->field_7
    //     0x6eec4c: ldur            w2, [x0, #7]
    // 0x6eec50: DecompressPointer r2
    //     0x6eec50: add             x2, x2, HEAP, lsl #32
    // 0x6eec54: str             x2, [SP]
    // 0x6eec58: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6eec58: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6eec5c: r0 = doc()
    //     0x6eec5c: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6eec60: ldur            x1, [fp, #-0x68]
    // 0x6eec64: stur            x0, [fp, #-0x70]
    // 0x6eec68: r0 = toFirestore()
    //     0x6eec68: bl              #0x6eecbc  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::toFirestore
    // 0x6eec6c: stur            x0, [fp, #-0x78]
    // 0x6eec70: r0 = SetOptions()
    //     0x6eec70: bl              #0x5ef714  ; AllocateSetOptionsStub -> SetOptions (size=0x10)
    // 0x6eec74: mov             x1, x0
    // 0x6eec78: r0 = true
    //     0x6eec78: add             x0, NULL, #0x20  ; true
    // 0x6eec7c: StoreField: r1->field_7 = r0
    //     0x6eec7c: stur            w0, [x1, #7]
    // 0x6eec80: str             x1, [SP]
    // 0x6eec84: ldur            x1, [fp, #-0x70]
    // 0x6eec88: ldur            x2, [fp, #-0x78]
    // 0x6eec8c: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6eec8c: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6eec90: r0 = set()
    //     0x6eec90: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6eec94: mov             x1, x0
    // 0x6eec98: stur            x1, [fp, #-0x70]
    // 0x6eec9c: r0 = Await()
    //     0x6eec9c: bl              #0x3dd188  ; AwaitStub
    // 0x6eeca0: r0 = true
    //     0x6eeca0: add             x0, NULL, #0x20  ; true
    // 0x6eeca4: r0 = ReturnAsyncNotFuture()
    //     0x6eeca4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6eeca8: sub             SP, fp, #0x80
    // 0x6eecac: r0 = false
    //     0x6eecac: add             x0, NULL, #0x30  ; false
    // 0x6eecb0: r0 = ReturnAsyncNotFuture()
    //     0x6eecb0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6eecb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6eecb4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6eecb8: b               #0x6eec20
  }
  _ getUserByTc(/* No info */) async {
    // ** addr: 0x6ef2d8, size: 0xd0
    // 0x6ef2d8: EnterFrame
    //     0x6ef2d8: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef2dc: mov             fp, SP
    // 0x6ef2e0: AllocStack(0x70)
    //     0x6ef2e0: sub             SP, SP, #0x70
    // 0x6ef2e4: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r3, fp-0x68 */)
    //     0x6ef2e4: stur            NULL, [fp, #-8]
    //     0x6ef2e8: mov             x3, x2
    //     0x6ef2ec: stur            x1, [fp, #-0x60]
    //     0x6ef2f0: stur            x2, [fp, #-0x68]
    // 0x6ef2f4: CheckStackOverflow
    //     0x6ef2f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef2f8: cmp             SP, x16
    //     0x6ef2fc: b.ls            #0x6ef3a0
    // 0x6ef300: InitAsync() -> Future<UserModel?>
    //     0x6ef300: add             x0, PP, #0x15, lsl #12  ; [pp+0x156e0] TypeArguments: <UserModel?>
    //     0x6ef304: ldr             x0, [x0, #0x6e0]
    //     0x6ef308: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6ef30c: ldur            x0, [fp, #-0x60]
    // 0x6ef310: LoadField: r1 = r0->field_7
    //     0x6ef310: ldur            w1, [x0, #7]
    // 0x6ef314: DecompressPointer r1
    //     0x6ef314: add             x1, x1, HEAP, lsl #32
    // 0x6ef318: r2 = "users"
    //     0x6ef318: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6ef31c: ldr             x2, [x2, #0x808]
    // 0x6ef320: r0 = collection()
    //     0x6ef320: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6ef324: mov             x1, x0
    // 0x6ef328: ldur            x3, [fp, #-0x68]
    // 0x6ef32c: r2 = "user_tc"
    //     0x6ef32c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15748] "user_tc"
    //     0x6ef330: ldr             x2, [x2, #0x748]
    // 0x6ef334: r0 = where()
    //     0x6ef334: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x6ef338: mov             x1, x0
    // 0x6ef33c: r2 = 1
    //     0x6ef33c: mov             x2, #1
    // 0x6ef340: r0 = limit()
    //     0x6ef340: bl              #0x5ee424  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::limit
    // 0x6ef344: mov             x1, x0
    // 0x6ef348: r0 = get()
    //     0x6ef348: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x6ef34c: mov             x1, x0
    // 0x6ef350: stur            x1, [fp, #-0x70]
    // 0x6ef354: r0 = Await()
    //     0x6ef354: bl              #0x3dd188  ; AwaitStub
    // 0x6ef358: mov             x1, x0
    // 0x6ef35c: stur            x0, [fp, #-0x70]
    // 0x6ef360: r0 = docs()
    //     0x6ef360: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6ef364: LoadField: r1 = r0->field_b
    //     0x6ef364: ldur            w1, [x0, #0xb]
    // 0x6ef368: cbz             w1, #0x6ef38c
    // 0x6ef36c: ldur            x1, [fp, #-0x70]
    // 0x6ef370: r0 = docs()
    //     0x6ef370: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x6ef374: mov             x1, x0
    // 0x6ef378: r0 = first()
    //     0x6ef378: bl              #0x4ecadc  ; [dart:core] _GrowableList::first
    // 0x6ef37c: mov             x2, x0
    // 0x6ef380: r1 = Null
    //     0x6ef380: mov             x1, NULL
    // 0x6ef384: r0 = UserModel.fromFirestore()
    //     0x6ef384: bl              #0x5da624  ; [package:umrem_demo/features/auth/models/user_model.dart] UserModel::UserModel.fromFirestore
    // 0x6ef388: r0 = ReturnAsyncNotFuture()
    //     0x6ef388: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ef38c: r0 = Null
    //     0x6ef38c: mov             x0, NULL
    // 0x6ef390: r0 = ReturnAsyncNotFuture()
    //     0x6ef390: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ef394: sub             SP, fp, #0x70
    // 0x6ef398: r0 = Null
    //     0x6ef398: mov             x0, NULL
    // 0x6ef39c: r0 = ReturnAsyncNotFuture()
    //     0x6ef39c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ef3a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef3a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef3a4: b               #0x6ef300
  }
  _ updateUserAssignments(/* No info */) async {
    // ** addr: 0x6f2c58, size: 0x1f4
    // 0x6f2c58: EnterFrame
    //     0x6f2c58: stp             fp, lr, [SP, #-0x10]!
    //     0x6f2c5c: mov             fp, SP
    // 0x6f2c60: AllocStack(0xc0)
    //     0x6f2c60: sub             SP, SP, #0xc0
    // 0x6f2c64: SetupParameters(FirestoreService this /* r1 => r5, fp-0x88 */, dynamic _ /* r5 => r2, fp-0x98 */, [dynamic _ /* r3, fp-0xa0 */, dynamic _ /* fp-0xa8 */])
    //     0x6f2c64: stur            NULL, [fp, #-8]
    //     0x6f2c68: stur            x1, [fp, #-0x80]
    //     0x6f2c6c: mov             x16, x5
    //     0x6f2c70: mov             x5, x1
    //     0x6f2c74: mov             x1, x16
    //     0x6f2c78: mov             x4, x2
    //     0x6f2c7c: stur            x2, [fp, #-0x88]
    //     0x6f2c80: mov             x2, x3
    //     0x6f2c84: stur            x3, [fp, #-0x90]
    //     0x6f2c88: mov             x3, x6
    //     0x6f2c8c: stur            x1, [fp, #-0x98]
    //     0x6f2c90: stur            x6, [fp, #-0xa0]
    //     0x6f2c94: stur            x7, [fp, #-0xa8]
    // 0x6f2c98: CheckStackOverflow
    //     0x6f2c98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f2c9c: cmp             SP, x16
    //     0x6f2ca0: b.ls            #0x6f2e44
    // 0x6f2ca4: InitAsync() -> Future<bool>
    //     0x6f2ca4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6f2ca8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f2cac: ldur            x0, [fp, #-0x90]
    // 0x6f2cb0: r16 = <String, dynamic>
    //     0x6f2cb0: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6f2cb4: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x6f2cb8: stp             lr, x16, [SP]
    // 0x6f2cbc: r0 = Map._fromLiteral()
    //     0x6f2cbc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f2cc0: mov             x2, x0
    // 0x6f2cc4: ldur            x1, [fp, #-0x90]
    // 0x6f2cc8: stur            x2, [fp, #-0xb0]
    // 0x6f2ccc: r0 = LoadClassIdInstr(r1)
    //     0x6f2ccc: ldur            x0, [x1, #-1]
    //     0x6f2cd0: ubfx            x0, x0, #0xc, #0x14
    // 0x6f2cd4: r16 = "Mekke"
    //     0x6f2cd4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x6f2cd8: ldr             x16, [x16, #0xdf0]
    // 0x6f2cdc: stp             x16, x1, [SP]
    // 0x6f2ce0: mov             lr, x0
    // 0x6f2ce4: ldr             lr, [x21, lr, lsl #3]
    // 0x6f2ce8: blr             lr
    // 0x6f2cec: tbnz            w0, #4, #0x6f2d54
    // 0x6f2cf0: ldur            x0, [fp, #-0xa0]
    // 0x6f2cf4: cmp             w0, NULL
    // 0x6f2cf8: b.eq            #0x6f2d10
    // 0x6f2cfc: ldur            x1, [fp, #-0xb0]
    // 0x6f2d00: mov             x3, x0
    // 0x6f2d04: r2 = "mekke_seferi_id"
    //     0x6f2d04: add             x2, PP, #0x14, lsl #12  ; [pp+0x14810] "mekke_seferi_id"
    //     0x6f2d08: ldr             x2, [x2, #0x810]
    // 0x6f2d0c: r0 = []=()
    //     0x6f2d0c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2d10: ldur            x0, [fp, #-0x88]
    // 0x6f2d14: cmp             w0, NULL
    // 0x6f2d18: b.eq            #0x6f2d30
    // 0x6f2d1c: ldur            x1, [fp, #-0xb0]
    // 0x6f2d20: mov             x3, x0
    // 0x6f2d24: r2 = "mekke_otel_id"
    //     0x6f2d24: add             x2, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x6f2d28: ldr             x2, [x2, #0x818]
    // 0x6f2d2c: r0 = []=()
    //     0x6f2d2c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2d30: ldur            x0, [fp, #-0x98]
    // 0x6f2d34: cmp             w0, NULL
    // 0x6f2d38: b.eq            #0x6f2db4
    // 0x6f2d3c: ldur            x1, [fp, #-0xb0]
    // 0x6f2d40: mov             x3, x0
    // 0x6f2d44: r2 = "mekke_oda_id"
    //     0x6f2d44: add             x2, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x6f2d48: ldr             x2, [x2, #0x820]
    // 0x6f2d4c: r0 = []=()
    //     0x6f2d4c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2d50: b               #0x6f2db4
    // 0x6f2d54: ldur            x0, [fp, #-0xa0]
    // 0x6f2d58: cmp             w0, NULL
    // 0x6f2d5c: b.eq            #0x6f2d74
    // 0x6f2d60: ldur            x1, [fp, #-0xb0]
    // 0x6f2d64: mov             x3, x0
    // 0x6f2d68: r2 = "medine_seferi_id"
    //     0x6f2d68: add             x2, PP, #0x14, lsl #12  ; [pp+0x14830] "medine_seferi_id"
    //     0x6f2d6c: ldr             x2, [x2, #0x830]
    // 0x6f2d70: r0 = []=()
    //     0x6f2d70: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2d74: ldur            x0, [fp, #-0x88]
    // 0x6f2d78: cmp             w0, NULL
    // 0x6f2d7c: b.eq            #0x6f2d94
    // 0x6f2d80: ldur            x1, [fp, #-0xb0]
    // 0x6f2d84: mov             x3, x0
    // 0x6f2d88: r2 = "medine_otel_id"
    //     0x6f2d88: add             x2, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x6f2d8c: ldr             x2, [x2, #0x838]
    // 0x6f2d90: r0 = []=()
    //     0x6f2d90: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2d94: ldur            x0, [fp, #-0x98]
    // 0x6f2d98: cmp             w0, NULL
    // 0x6f2d9c: b.eq            #0x6f2db4
    // 0x6f2da0: ldur            x1, [fp, #-0xb0]
    // 0x6f2da4: mov             x3, x0
    // 0x6f2da8: r2 = "medine_oda_id"
    //     0x6f2da8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x6f2dac: ldr             x2, [x2, #0x840]
    // 0x6f2db0: r0 = []=()
    //     0x6f2db0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2db4: ldur            x0, [fp, #-0x80]
    // 0x6f2db8: r0 = serverTimestamp()
    //     0x6f2db8: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f2dbc: ldur            x1, [fp, #-0xb0]
    // 0x6f2dc0: mov             x3, x0
    // 0x6f2dc4: r2 = "updated_at"
    //     0x6f2dc4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6f2dc8: ldr             x2, [x2, #0x58]
    // 0x6f2dcc: r0 = []=()
    //     0x6f2dcc: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f2dd0: ldur            x0, [fp, #-0x80]
    // 0x6f2dd4: LoadField: r1 = r0->field_7
    //     0x6f2dd4: ldur            w1, [x0, #7]
    // 0x6f2dd8: DecompressPointer r1
    //     0x6f2dd8: add             x1, x1, HEAP, lsl #32
    // 0x6f2ddc: r2 = "users"
    //     0x6f2ddc: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6f2de0: ldr             x2, [x2, #0x808]
    // 0x6f2de4: r0 = collection()
    //     0x6f2de4: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6f2de8: ldur            x16, [fp, #-0xa8]
    // 0x6f2dec: str             x16, [SP]
    // 0x6f2df0: mov             x1, x0
    // 0x6f2df4: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6f2df4: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6f2df8: r0 = doc()
    //     0x6f2df8: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6f2dfc: stur            x0, [fp, #-0x88]
    // 0x6f2e00: r0 = SetOptions()
    //     0x6f2e00: bl              #0x5ef714  ; AllocateSetOptionsStub -> SetOptions (size=0x10)
    // 0x6f2e04: mov             x1, x0
    // 0x6f2e08: r0 = true
    //     0x6f2e08: add             x0, NULL, #0x20  ; true
    // 0x6f2e0c: StoreField: r1->field_7 = r0
    //     0x6f2e0c: stur            w0, [x1, #7]
    // 0x6f2e10: str             x1, [SP]
    // 0x6f2e14: ldur            x1, [fp, #-0x88]
    // 0x6f2e18: ldur            x2, [fp, #-0xb0]
    // 0x6f2e1c: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6f2e1c: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6f2e20: r0 = set()
    //     0x6f2e20: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6f2e24: mov             x1, x0
    // 0x6f2e28: stur            x1, [fp, #-0x88]
    // 0x6f2e2c: r0 = Await()
    //     0x6f2e2c: bl              #0x3dd188  ; AwaitStub
    // 0x6f2e30: r0 = true
    //     0x6f2e30: add             x0, NULL, #0x20  ; true
    // 0x6f2e34: r0 = ReturnAsyncNotFuture()
    //     0x6f2e34: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f2e38: sub             SP, fp, #0xc0
    // 0x6f2e3c: r0 = false
    //     0x6f2e3c: add             x0, NULL, #0x30  ; false
    // 0x6f2e40: r0 = ReturnAsyncNotFuture()
    //     0x6f2e40: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f2e44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f2e44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f2e48: b               #0x6f2ca4
  }
  _ updateUserFields(/* No info */) async {
    // ** addr: 0x6f39c4, size: 0xd4
    // 0x6f39c4: EnterFrame
    //     0x6f39c4: stp             fp, lr, [SP, #-0x10]!
    //     0x6f39c8: mov             fp, SP
    // 0x6f39cc: AllocStack(0x88)
    //     0x6f39cc: sub             SP, SP, #0x88
    // 0x6f39d0: SetupParameters(FirestoreService this /* r1 => r3, fp-0x70 */, dynamic _ /* r3 => r1, fp-0x78 */)
    //     0x6f39d0: stur            NULL, [fp, #-8]
    //     0x6f39d4: stur            x1, [fp, #-0x68]
    //     0x6f39d8: mov             x16, x3
    //     0x6f39dc: mov             x3, x1
    //     0x6f39e0: mov             x1, x16
    //     0x6f39e4: stur            x2, [fp, #-0x70]
    //     0x6f39e8: stur            x1, [fp, #-0x78]
    // 0x6f39ec: CheckStackOverflow
    //     0x6f39ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f39f0: cmp             SP, x16
    //     0x6f39f4: b.ls            #0x6f3a90
    // 0x6f39f8: InitAsync() -> Future<bool>
    //     0x6f39f8: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6f39fc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f3a00: ldur            x0, [fp, #-0x68]
    // 0x6f3a04: r0 = serverTimestamp()
    //     0x6f3a04: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f3a08: ldur            x1, [fp, #-0x78]
    // 0x6f3a0c: mov             x3, x0
    // 0x6f3a10: r2 = "updated_at"
    //     0x6f3a10: add             x2, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6f3a14: ldr             x2, [x2, #0x58]
    // 0x6f3a18: r0 = []=()
    //     0x6f3a18: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6f3a1c: ldur            x0, [fp, #-0x68]
    // 0x6f3a20: LoadField: r1 = r0->field_7
    //     0x6f3a20: ldur            w1, [x0, #7]
    // 0x6f3a24: DecompressPointer r1
    //     0x6f3a24: add             x1, x1, HEAP, lsl #32
    // 0x6f3a28: r2 = "users"
    //     0x6f3a28: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x6f3a2c: ldr             x2, [x2, #0x808]
    // 0x6f3a30: r0 = collection()
    //     0x6f3a30: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6f3a34: ldur            x16, [fp, #-0x70]
    // 0x6f3a38: str             x16, [SP]
    // 0x6f3a3c: mov             x1, x0
    // 0x6f3a40: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6f3a40: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6f3a44: r0 = doc()
    //     0x6f3a44: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6f3a48: stur            x0, [fp, #-0x80]
    // 0x6f3a4c: r0 = SetOptions()
    //     0x6f3a4c: bl              #0x5ef714  ; AllocateSetOptionsStub -> SetOptions (size=0x10)
    // 0x6f3a50: mov             x1, x0
    // 0x6f3a54: r0 = true
    //     0x6f3a54: add             x0, NULL, #0x20  ; true
    // 0x6f3a58: StoreField: r1->field_7 = r0
    //     0x6f3a58: stur            w0, [x1, #7]
    // 0x6f3a5c: str             x1, [SP]
    // 0x6f3a60: ldur            x1, [fp, #-0x80]
    // 0x6f3a64: ldur            x2, [fp, #-0x78]
    // 0x6f3a68: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x6f3a68: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x6f3a6c: r0 = set()
    //     0x6f3a6c: bl              #0x5dd284  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::set
    // 0x6f3a70: mov             x1, x0
    // 0x6f3a74: stur            x1, [fp, #-0x80]
    // 0x6f3a78: r0 = Await()
    //     0x6f3a78: bl              #0x3dd188  ; AwaitStub
    // 0x6f3a7c: r0 = true
    //     0x6f3a7c: add             x0, NULL, #0x20  ; true
    // 0x6f3a80: r0 = ReturnAsyncNotFuture()
    //     0x6f3a80: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f3a84: sub             SP, fp, #0x88
    // 0x6f3a88: r0 = false
    //     0x6f3a88: add             x0, NULL, #0x30  ; false
    // 0x6f3a8c: r0 = ReturnAsyncNotFuture()
    //     0x6f3a8c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f3a90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f3a90: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f3a94: b               #0x6f39f8
  }
  _ deleteHotel(/* No info */) async {
    // ** addr: 0x745890, size: 0x264
    // 0x745890: EnterFrame
    //     0x745890: stp             fp, lr, [SP, #-0x10]!
    //     0x745894: mov             fp, SP
    // 0x745898: AllocStack(0xb0)
    //     0x745898: sub             SP, SP, #0xb0
    // 0x74589c: SetupParameters(FirestoreService this /* r1 => r1, fp-0x70 */, dynamic _ /* r2 => r2, fp-0x78 */)
    //     0x74589c: stur            NULL, [fp, #-8]
    //     0x7458a0: stur            x1, [fp, #-0x70]
    //     0x7458a4: stur            x2, [fp, #-0x78]
    // 0x7458a8: CheckStackOverflow
    //     0x7458a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7458ac: cmp             SP, x16
    //     0x7458b0: b.ls            #0x745ae0
    // 0x7458b4: InitAsync() -> Future<bool>
    //     0x7458b4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x7458b8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7458bc: ldur            x0, [fp, #-0x70]
    // 0x7458c0: mov             x1, x0
    // 0x7458c4: ldur            x2, [fp, #-0x78]
    // 0x7458c8: r0 = _unlinkUsersFromHotel()
    //     0x7458c8: bl              #0x745af4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_unlinkUsersFromHotel
    // 0x7458cc: mov             x1, x0
    // 0x7458d0: stur            x1, [fp, #-0x80]
    // 0x7458d4: r0 = Await()
    //     0x7458d4: bl              #0x3dd188  ; AwaitStub
    // 0x7458d8: ldur            x0, [fp, #-0x70]
    // 0x7458dc: LoadField: r3 = r0->field_7
    //     0x7458dc: ldur            w3, [x0, #7]
    // 0x7458e0: DecompressPointer r3
    //     0x7458e0: add             x3, x3, HEAP, lsl #32
    // 0x7458e4: mov             x1, x3
    // 0x7458e8: stur            x3, [fp, #-0x80]
    // 0x7458ec: r2 = "rooms"
    //     0x7458ec: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x7458f0: ldr             x2, [x2, #0x60]
    // 0x7458f4: r0 = collection()
    //     0x7458f4: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x7458f8: mov             x1, x0
    // 0x7458fc: ldur            x3, [fp, #-0x78]
    // 0x745900: r2 = "hotel_id"
    //     0x745900: add             x2, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x745904: ldr             x2, [x2, #0xfd0]
    // 0x745908: r0 = where()
    //     0x745908: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x74590c: mov             x1, x0
    // 0x745910: r0 = get()
    //     0x745910: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x745914: mov             x1, x0
    // 0x745918: stur            x1, [fp, #-0x88]
    // 0x74591c: r0 = Await()
    //     0x74591c: bl              #0x3dd188  ; AwaitStub
    // 0x745920: mov             x1, x0
    // 0x745924: stur            x0, [fp, #-0x88]
    // 0x745928: r0 = docs()
    //     0x745928: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x74592c: stur            x0, [fp, #-0x98]
    // 0x745930: LoadField: r2 = r0->field_7
    //     0x745930: ldur            w2, [x0, #7]
    // 0x745934: DecompressPointer r2
    //     0x745934: add             x2, x2, HEAP, lsl #32
    // 0x745938: mov             x1, x2
    // 0x74593c: stur            x2, [fp, #-0x90]
    // 0x745940: r0 = ListIterator()
    //     0x745940: bl              #0x3faf5c  ; AllocateListIteratorStub -> ListIterator<X0> (size=0x24)
    // 0x745944: mov             x3, x0
    // 0x745948: ldur            x2, [fp, #-0x98]
    // 0x74594c: stur            x3, [fp, #-0x90]
    // 0x745950: StoreField: r3->field_b = r2
    //     0x745950: stur            w2, [x3, #0xb]
    // 0x745954: LoadField: r0 = r2->field_b
    //     0x745954: ldur            w0, [x2, #0xb]
    // 0x745958: r4 = LoadInt32Instr(r0)
    //     0x745958: sbfx            x4, x0, #1, #0x1f
    // 0x74595c: stur            x4, [fp, #-0xa0]
    // 0x745960: StoreField: r3->field_f = r4
    //     0x745960: stur            x4, [x3, #0xf]
    // 0x745964: ArrayStore: r3[0] = rZR  ; List_8
    //     0x745964: stur            xzr, [x3, #0x17]
    // 0x745968: CheckStackOverflow
    //     0x745968: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74596c: cmp             SP, x16
    //     0x745970: b.ls            #0x745ae8
    // 0x745974: LoadField: r0 = r2->field_b
    //     0x745974: ldur            w0, [x2, #0xb]
    // 0x745978: r1 = LoadInt32Instr(r0)
    //     0x745978: sbfx            x1, x0, #1, #0x1f
    // 0x74597c: cmp             x4, x1
    // 0x745980: b.ne            #0x745ab8
    // 0x745984: ArrayLoad: r5 = r3[0]  ; List_8
    //     0x745984: ldur            x5, [x3, #0x17]
    // 0x745988: cmp             x5, x1
    // 0x74598c: b.ge            #0x745a64
    // 0x745990: mov             x0, x1
    // 0x745994: mov             x1, x5
    // 0x745998: cmp             x1, x0
    // 0x74599c: b.hs            #0x745af0
    // 0x7459a0: LoadField: r0 = r2->field_f
    //     0x7459a0: ldur            w0, [x2, #0xf]
    // 0x7459a4: DecompressPointer r0
    //     0x7459a4: add             x0, x0, HEAP, lsl #32
    // 0x7459a8: ArrayLoad: r6 = r0[r5]  ; Unknown_4
    //     0x7459a8: add             x16, x0, x5, lsl #2
    //     0x7459ac: ldur            w6, [x16, #0xf]
    // 0x7459b0: DecompressPointer r6
    //     0x7459b0: add             x6, x6, HEAP, lsl #32
    // 0x7459b4: mov             x0, x6
    // 0x7459b8: stur            x6, [fp, #-0x88]
    // 0x7459bc: StoreField: r3->field_1f = r0
    //     0x7459bc: stur            w0, [x3, #0x1f]
    //     0x7459c0: ldurb           w16, [x3, #-1]
    //     0x7459c4: ldurb           w17, [x0, #-1]
    //     0x7459c8: and             x16, x17, x16, lsr #2
    //     0x7459cc: tst             x16, HEAP, lsr #32
    //     0x7459d0: b.eq            #0x7459d8
    //     0x7459d4: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7459d8: add             x0, x5, #1
    // 0x7459dc: ArrayStore: r3[0] = r0  ; List_8
    //     0x7459dc: stur            x0, [x3, #0x17]
    // 0x7459e0: LoadField: r0 = r6->field_b
    //     0x7459e0: ldur            w0, [x6, #0xb]
    // 0x7459e4: DecompressPointer r0
    //     0x7459e4: add             x0, x0, HEAP, lsl #32
    // 0x7459e8: LoadField: r1 = r0->field_b
    //     0x7459e8: ldur            w1, [x0, #0xb]
    // 0x7459ec: DecompressPointer r1
    //     0x7459ec: add             x1, x1, HEAP, lsl #32
    // 0x7459f0: LoadField: r0 = r1->field_7
    //     0x7459f0: ldur            w0, [x1, #7]
    // 0x7459f4: DecompressPointer r0
    //     0x7459f4: add             x0, x0, HEAP, lsl #32
    // 0x7459f8: mov             x1, x0
    // 0x7459fc: r0 = last()
    //     0x7459fc: bl              #0x47acd8  ; [dart:core] _GrowableList::last
    // 0x745a00: ldur            x1, [fp, #-0x70]
    // 0x745a04: mov             x2, x0
    // 0x745a08: r0 = _unlinkUsersFromRoom()
    //     0x745a08: bl              #0x6df4a0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_unlinkUsersFromRoom
    // 0x745a0c: mov             x1, x0
    // 0x745a10: stur            x1, [fp, #-0xa8]
    // 0x745a14: r0 = Await()
    //     0x745a14: bl              #0x3dd188  ; AwaitStub
    // 0x745a18: ldur            x1, [fp, #-0x88]
    // 0x745a1c: LoadField: r0 = r1->field_f
    //     0x745a1c: ldur            w0, [x1, #0xf]
    // 0x745a20: DecompressPointer r0
    //     0x745a20: add             x0, x0, HEAP, lsl #32
    // 0x745a24: r16 = Sentinel
    //     0x745a24: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x745a28: cmp             w0, w16
    // 0x745a2c: b.ne            #0x745a3c
    // 0x745a30: r2 = reference
    //     0x745a30: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x745a34: ldr             x2, [x2, #0xb0]
    // 0x745a38: r0 = InitLateFinalInstanceField()
    //     0x745a38: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x745a3c: LoadField: r1 = r0->field_7
    //     0x745a3c: ldur            w1, [x0, #7]
    // 0x745a40: DecompressPointer r1
    //     0x745a40: add             x1, x1, HEAP, lsl #32
    // 0x745a44: r0 = delete()
    //     0x745a44: bl              #0x6d6a0c  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::delete
    // 0x745a48: mov             x1, x0
    // 0x745a4c: stur            x1, [fp, #-0xa8]
    // 0x745a50: r0 = Await()
    //     0x745a50: bl              #0x3dd188  ; AwaitStub
    // 0x745a54: ldur            x2, [fp, #-0x98]
    // 0x745a58: ldur            x3, [fp, #-0x90]
    // 0x745a5c: ldur            x4, [fp, #-0xa0]
    // 0x745a60: b               #0x745968
    // 0x745a64: mov             x0, x3
    // 0x745a68: StoreField: r0->field_1f = rNULL
    //     0x745a68: stur            NULL, [x0, #0x1f]
    // 0x745a6c: ldur            x1, [fp, #-0x80]
    // 0x745a70: r2 = "hotels"
    //     0x745a70: add             x2, PP, #0x14, lsl #12  ; [pp+0x14990] "hotels"
    //     0x745a74: ldr             x2, [x2, #0x990]
    // 0x745a78: r0 = collection()
    //     0x745a78: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x745a7c: ldur            x16, [fp, #-0x78]
    // 0x745a80: str             x16, [SP]
    // 0x745a84: mov             x1, x0
    // 0x745a88: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x745a88: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x745a8c: r0 = doc()
    //     0x745a8c: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x745a90: mov             x1, x0
    // 0x745a94: r0 = delete()
    //     0x745a94: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x745a98: mov             x1, x0
    // 0x745a9c: stur            x1, [fp, #-0x80]
    // 0x745aa0: r0 = Await()
    //     0x745aa0: bl              #0x3dd188  ; AwaitStub
    // 0x745aa4: r0 = true
    //     0x745aa4: add             x0, NULL, #0x20  ; true
    // 0x745aa8: r0 = ReturnAsyncNotFuture()
    //     0x745aa8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x745aac: sub             SP, fp, #0xb0
    // 0x745ab0: r0 = false
    //     0x745ab0: add             x0, NULL, #0x30  ; false
    // 0x745ab4: r0 = ReturnAsyncNotFuture()
    //     0x745ab4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x745ab8: mov             x1, x2
    // 0x745abc: mov             x0, x3
    // 0x745ac0: r0 = ConcurrentModificationError()
    //     0x745ac0: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x745ac4: mov             x1, x0
    // 0x745ac8: ldur            x0, [fp, #-0x98]
    // 0x745acc: stur            x1, [fp, #-0x80]
    // 0x745ad0: StoreField: r1->field_b = r0
    //     0x745ad0: stur            w0, [x1, #0xb]
    // 0x745ad4: mov             x0, x1
    // 0x745ad8: r0 = Throw()
    //     0x745ad8: bl              #0x926328  ; ThrowStub
    // 0x745adc: brk             #0
    // 0x745ae0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745ae0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745ae4: b               #0x7458b4
    // 0x745ae8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745ae8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745aec: b               #0x745974
    // 0x745af0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x745af0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _unlinkUsersFromHotel(/* No info */) async {
    // ** addr: 0x745af4, size: 0x4b0
    // 0x745af4: EnterFrame
    //     0x745af4: stp             fp, lr, [SP, #-0x10]!
    //     0x745af8: mov             fp, SP
    // 0x745afc: AllocStack(0x78)
    //     0x745afc: sub             SP, SP, #0x78
    // 0x745b00: SetupParameters(FirestoreService this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r3, fp-0x18 */)
    //     0x745b00: stur            NULL, [fp, #-8]
    //     0x745b04: mov             x3, x2
    //     0x745b08: stur            x1, [fp, #-0x10]
    //     0x745b0c: stur            x2, [fp, #-0x18]
    // 0x745b10: CheckStackOverflow
    //     0x745b10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745b14: cmp             SP, x16
    //     0x745b18: b.ls            #0x745f8c
    // 0x745b1c: InitAsync() -> Future<void?>
    //     0x745b1c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x745b20: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x745b24: ldur            x0, [fp, #-0x10]
    // 0x745b28: LoadField: r3 = r0->field_7
    //     0x745b28: ldur            w3, [x0, #7]
    // 0x745b2c: DecompressPointer r3
    //     0x745b2c: add             x3, x3, HEAP, lsl #32
    // 0x745b30: mov             x1, x3
    // 0x745b34: stur            x3, [fp, #-0x20]
    // 0x745b38: r2 = "users"
    //     0x745b38: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x745b3c: ldr             x2, [x2, #0x808]
    // 0x745b40: r0 = collection()
    //     0x745b40: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x745b44: mov             x1, x0
    // 0x745b48: ldur            x3, [fp, #-0x18]
    // 0x745b4c: r2 = "mekke_otel_id"
    //     0x745b4c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x745b50: ldr             x2, [x2, #0x818]
    // 0x745b54: r0 = where()
    //     0x745b54: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x745b58: mov             x1, x0
    // 0x745b5c: r0 = get()
    //     0x745b5c: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x745b60: mov             x1, x0
    // 0x745b64: stur            x1, [fp, #-0x28]
    // 0x745b68: r0 = Await()
    //     0x745b68: bl              #0x3dd188  ; AwaitStub
    // 0x745b6c: mov             x1, x0
    // 0x745b70: r0 = docs()
    //     0x745b70: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x745b74: stur            x0, [fp, #-0x48]
    // 0x745b78: LoadField: r2 = r0->field_7
    //     0x745b78: ldur            w2, [x0, #7]
    // 0x745b7c: DecompressPointer r2
    //     0x745b7c: add             x2, x2, HEAP, lsl #32
    // 0x745b80: stur            x2, [fp, #-0x40]
    // 0x745b84: LoadField: r1 = r0->field_b
    //     0x745b84: ldur            w1, [x0, #0xb]
    // 0x745b88: r3 = LoadInt32Instr(r1)
    //     0x745b88: sbfx            x3, x1, #1, #0x1f
    // 0x745b8c: stur            x3, [fp, #-0x38]
    // 0x745b90: r1 = 0
    //     0x745b90: mov             x1, #0
    // 0x745b94: CheckStackOverflow
    //     0x745b94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745b98: cmp             SP, x16
    //     0x745b9c: b.ls            #0x745f94
    // 0x745ba0: LoadField: r4 = r0->field_b
    //     0x745ba0: ldur            w4, [x0, #0xb]
    // 0x745ba4: r5 = LoadInt32Instr(r4)
    //     0x745ba4: sbfx            x5, x4, #1, #0x1f
    // 0x745ba8: cmp             x3, x5
    // 0x745bac: b.ne            #0x745f70
    // 0x745bb0: cmp             x1, x5
    // 0x745bb4: b.ge            #0x745d40
    // 0x745bb8: LoadField: r4 = r0->field_f
    //     0x745bb8: ldur            w4, [x0, #0xf]
    // 0x745bbc: DecompressPointer r4
    //     0x745bbc: add             x4, x4, HEAP, lsl #32
    // 0x745bc0: ArrayLoad: r5 = r4[r1]  ; Unknown_4
    //     0x745bc0: add             x16, x4, x1, lsl #2
    //     0x745bc4: ldur            w5, [x16, #0xf]
    // 0x745bc8: DecompressPointer r5
    //     0x745bc8: add             x5, x5, HEAP, lsl #32
    // 0x745bcc: stur            x5, [fp, #-0x28]
    // 0x745bd0: add             x4, x1, #1
    // 0x745bd4: mov             x1, x5
    // 0x745bd8: stur            x4, [fp, #-0x30]
    // 0x745bdc: LoadField: r0 = r1->field_f
    //     0x745bdc: ldur            w0, [x1, #0xf]
    // 0x745be0: DecompressPointer r0
    //     0x745be0: add             x0, x0, HEAP, lsl #32
    // 0x745be4: r16 = Sentinel
    //     0x745be4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x745be8: cmp             w0, w16
    // 0x745bec: b.ne            #0x745bfc
    // 0x745bf0: r2 = reference
    //     0x745bf0: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x745bf4: ldr             x2, [x2, #0xb0]
    // 0x745bf8: r0 = InitLateFinalInstanceField()
    //     0x745bf8: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x745bfc: r1 = Null
    //     0x745bfc: mov             x1, NULL
    // 0x745c00: r2 = 8
    //     0x745c00: mov             x2, #8
    // 0x745c04: stur            x0, [fp, #-0x50]
    // 0x745c08: r0 = AllocateArray()
    //     0x745c08: bl              #0x9280a0  ; AllocateArrayStub
    // 0x745c0c: stur            x0, [fp, #-0x58]
    // 0x745c10: r16 = "mekke_otel_id"
    //     0x745c10: add             x16, PP, #0x14, lsl #12  ; [pp+0x14818] "mekke_otel_id"
    //     0x745c14: ldr             x16, [x16, #0x818]
    // 0x745c18: StoreField: r0->field_f = r16
    //     0x745c18: stur            w16, [x0, #0xf]
    // 0x745c1c: r0 = InitLateStaticField(0xac0) // [package:cloud_firestore/cloud_firestore.dart] FieldValue::_factory
    //     0x745c1c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x745c20: ldr             x0, [x0, #0x1580]
    //     0x745c24: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x745c28: cmp             w0, w16
    //     0x745c2c: b.ne            #0x745c3c
    //     0x745c30: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ca8] Field <FieldValue._factory@577385638>: static late final (offset: 0xac0)
    //     0x745c34: ldr             x2, [x2, #0xca8]
    //     0x745c38: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x745c3c: mov             x1, x0
    // 0x745c40: stur            x0, [fp, #-0x60]
    // 0x745c44: r0 = delete()
    //     0x745c44: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x745c48: stur            x0, [fp, #-0x68]
    // 0x745c4c: r0 = FieldValue()
    //     0x745c4c: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x745c50: mov             x1, x0
    // 0x745c54: ldur            x0, [fp, #-0x68]
    // 0x745c58: StoreField: r1->field_b = r0
    //     0x745c58: stur            w0, [x1, #0xb]
    // 0x745c5c: StoreField: r1->field_7 = r0
    //     0x745c5c: stur            w0, [x1, #7]
    // 0x745c60: mov             x0, x1
    // 0x745c64: ldur            x1, [fp, #-0x58]
    // 0x745c68: ArrayStore: r1[1] = r0  ; List_4
    //     0x745c68: add             x25, x1, #0x13
    //     0x745c6c: str             w0, [x25]
    //     0x745c70: tbz             w0, #0, #0x745c8c
    //     0x745c74: ldurb           w16, [x1, #-1]
    //     0x745c78: ldurb           w17, [x0, #-1]
    //     0x745c7c: and             x16, x17, x16, lsr #2
    //     0x745c80: tst             x16, HEAP, lsr #32
    //     0x745c84: b.eq            #0x745c8c
    //     0x745c88: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x745c8c: ldur            x0, [fp, #-0x58]
    // 0x745c90: r16 = "mekke_oda_id"
    //     0x745c90: add             x16, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x745c94: ldr             x16, [x16, #0x820]
    // 0x745c98: ArrayStore: r0[0] = r16  ; List_4
    //     0x745c98: stur            w16, [x0, #0x17]
    // 0x745c9c: ldur            x1, [fp, #-0x60]
    // 0x745ca0: r0 = delete()
    //     0x745ca0: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x745ca4: stur            x0, [fp, #-0x60]
    // 0x745ca8: r0 = FieldValue()
    //     0x745ca8: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x745cac: mov             x1, x0
    // 0x745cb0: ldur            x0, [fp, #-0x60]
    // 0x745cb4: StoreField: r1->field_b = r0
    //     0x745cb4: stur            w0, [x1, #0xb]
    // 0x745cb8: StoreField: r1->field_7 = r0
    //     0x745cb8: stur            w0, [x1, #7]
    // 0x745cbc: mov             x0, x1
    // 0x745cc0: ldur            x1, [fp, #-0x58]
    // 0x745cc4: ArrayStore: r1[3] = r0  ; List_4
    //     0x745cc4: add             x25, x1, #0x1b
    //     0x745cc8: str             w0, [x25]
    //     0x745ccc: tbz             w0, #0, #0x745ce8
    //     0x745cd0: ldurb           w16, [x1, #-1]
    //     0x745cd4: ldurb           w17, [x0, #-1]
    //     0x745cd8: and             x16, x17, x16, lsr #2
    //     0x745cdc: tst             x16, HEAP, lsr #32
    //     0x745ce0: b.eq            #0x745ce8
    //     0x745ce4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x745ce8: r16 = <Object, Object?>
    //     0x745ce8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x745cec: ldr             x16, [x16, #0x828]
    // 0x745cf0: ldur            lr, [fp, #-0x58]
    // 0x745cf4: stp             lr, x16, [SP]
    // 0x745cf8: r0 = Map._fromLiteral()
    //     0x745cf8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x745cfc: mov             x1, x0
    // 0x745d00: ldur            x0, [fp, #-0x50]
    // 0x745d04: LoadField: r2 = r0->field_7
    //     0x745d04: ldur            w2, [x0, #7]
    // 0x745d08: DecompressPointer r2
    //     0x745d08: add             x2, x2, HEAP, lsl #32
    // 0x745d0c: stur            x2, [fp, #-0x58]
    // 0x745d10: r0 = replaceValueWithDelegatesInMapFieldPath()
    //     0x745d10: bl              #0x6d41d4  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMapFieldPath
    // 0x745d14: ldur            x1, [fp, #-0x58]
    // 0x745d18: mov             x2, x0
    // 0x745d1c: r0 = update()
    //     0x745d1c: bl              #0x6d3e60  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::update
    // 0x745d20: mov             x1, x0
    // 0x745d24: stur            x1, [fp, #-0x50]
    // 0x745d28: r0 = Await()
    //     0x745d28: bl              #0x3dd188  ; AwaitStub
    // 0x745d2c: ldur            x1, [fp, #-0x30]
    // 0x745d30: ldur            x0, [fp, #-0x48]
    // 0x745d34: ldur            x2, [fp, #-0x40]
    // 0x745d38: ldur            x3, [fp, #-0x38]
    // 0x745d3c: b               #0x745b94
    // 0x745d40: ldur            x1, [fp, #-0x20]
    // 0x745d44: r2 = "users"
    //     0x745d44: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x745d48: ldr             x2, [x2, #0x808]
    // 0x745d4c: r0 = collection()
    //     0x745d4c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x745d50: mov             x1, x0
    // 0x745d54: ldur            x3, [fp, #-0x18]
    // 0x745d58: r2 = "medine_otel_id"
    //     0x745d58: add             x2, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x745d5c: ldr             x2, [x2, #0x838]
    // 0x745d60: r0 = where()
    //     0x745d60: bl              #0x5d7150  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::where
    // 0x745d64: mov             x1, x0
    // 0x745d68: r0 = get()
    //     0x745d68: bl              #0x5d42fc  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuery::get
    // 0x745d6c: mov             x1, x0
    // 0x745d70: stur            x1, [fp, #-0x10]
    // 0x745d74: r0 = Await()
    //     0x745d74: bl              #0x3dd188  ; AwaitStub
    // 0x745d78: mov             x1, x0
    // 0x745d7c: r0 = docs()
    //     0x745d7c: bl              #0x5d3068  ; [package:cloud_firestore/cloud_firestore.dart] _JsonQuerySnapshot::docs
    // 0x745d80: stur            x0, [fp, #-0x20]
    // 0x745d84: LoadField: r2 = r0->field_7
    //     0x745d84: ldur            w2, [x0, #7]
    // 0x745d88: DecompressPointer r2
    //     0x745d88: add             x2, x2, HEAP, lsl #32
    // 0x745d8c: stur            x2, [fp, #-0x18]
    // 0x745d90: LoadField: r1 = r0->field_b
    //     0x745d90: ldur            w1, [x0, #0xb]
    // 0x745d94: r3 = LoadInt32Instr(r1)
    //     0x745d94: sbfx            x3, x1, #1, #0x1f
    // 0x745d98: stur            x3, [fp, #-0x38]
    // 0x745d9c: r1 = 0
    //     0x745d9c: mov             x1, #0
    // 0x745da0: CheckStackOverflow
    //     0x745da0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x745da4: cmp             SP, x16
    //     0x745da8: b.ls            #0x745f9c
    // 0x745dac: LoadField: r4 = r0->field_b
    //     0x745dac: ldur            w4, [x0, #0xb]
    // 0x745db0: r5 = LoadInt32Instr(r4)
    //     0x745db0: sbfx            x5, x4, #1, #0x1f
    // 0x745db4: cmp             x3, x5
    // 0x745db8: b.ne            #0x745f54
    // 0x745dbc: cmp             x1, x5
    // 0x745dc0: b.ge            #0x745f4c
    // 0x745dc4: LoadField: r4 = r0->field_f
    //     0x745dc4: ldur            w4, [x0, #0xf]
    // 0x745dc8: DecompressPointer r4
    //     0x745dc8: add             x4, x4, HEAP, lsl #32
    // 0x745dcc: ArrayLoad: r5 = r4[r1]  ; Unknown_4
    //     0x745dcc: add             x16, x4, x1, lsl #2
    //     0x745dd0: ldur            w5, [x16, #0xf]
    // 0x745dd4: DecompressPointer r5
    //     0x745dd4: add             x5, x5, HEAP, lsl #32
    // 0x745dd8: stur            x5, [fp, #-0x10]
    // 0x745ddc: add             x4, x1, #1
    // 0x745de0: mov             x1, x5
    // 0x745de4: stur            x4, [fp, #-0x30]
    // 0x745de8: LoadField: r0 = r1->field_f
    //     0x745de8: ldur            w0, [x1, #0xf]
    // 0x745dec: DecompressPointer r0
    //     0x745dec: add             x0, x0, HEAP, lsl #32
    // 0x745df0: r16 = Sentinel
    //     0x745df0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x745df4: cmp             w0, w16
    // 0x745df8: b.ne            #0x745e08
    // 0x745dfc: r2 = reference
    //     0x745dfc: add             x2, PP, #0x14, lsl #12  ; [pp+0x140b0] Field <_JsonDocumentSnapshot@577385638.reference>: late final (offset: 0x10)
    //     0x745e00: ldr             x2, [x2, #0xb0]
    // 0x745e04: r0 = InitLateFinalInstanceField()
    //     0x745e04: bl              #0x9260a4  ; InitLateFinalInstanceFieldStub
    // 0x745e08: r1 = Null
    //     0x745e08: mov             x1, NULL
    // 0x745e0c: r2 = 8
    //     0x745e0c: mov             x2, #8
    // 0x745e10: stur            x0, [fp, #-0x28]
    // 0x745e14: r0 = AllocateArray()
    //     0x745e14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x745e18: stur            x0, [fp, #-0x40]
    // 0x745e1c: r16 = "medine_otel_id"
    //     0x745e1c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14838] "medine_otel_id"
    //     0x745e20: ldr             x16, [x16, #0x838]
    // 0x745e24: StoreField: r0->field_f = r16
    //     0x745e24: stur            w16, [x0, #0xf]
    // 0x745e28: r0 = InitLateStaticField(0xac0) // [package:cloud_firestore/cloud_firestore.dart] FieldValue::_factory
    //     0x745e28: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x745e2c: ldr             x0, [x0, #0x1580]
    //     0x745e30: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x745e34: cmp             w0, w16
    //     0x745e38: b.ne            #0x745e48
    //     0x745e3c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ca8] Field <FieldValue._factory@577385638>: static late final (offset: 0xac0)
    //     0x745e40: ldr             x2, [x2, #0xca8]
    //     0x745e44: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x745e48: mov             x1, x0
    // 0x745e4c: stur            x0, [fp, #-0x50]
    // 0x745e50: r0 = delete()
    //     0x745e50: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x745e54: stur            x0, [fp, #-0x58]
    // 0x745e58: r0 = FieldValue()
    //     0x745e58: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x745e5c: mov             x1, x0
    // 0x745e60: ldur            x0, [fp, #-0x58]
    // 0x745e64: StoreField: r1->field_b = r0
    //     0x745e64: stur            w0, [x1, #0xb]
    // 0x745e68: StoreField: r1->field_7 = r0
    //     0x745e68: stur            w0, [x1, #7]
    // 0x745e6c: mov             x0, x1
    // 0x745e70: ldur            x1, [fp, #-0x40]
    // 0x745e74: ArrayStore: r1[1] = r0  ; List_4
    //     0x745e74: add             x25, x1, #0x13
    //     0x745e78: str             w0, [x25]
    //     0x745e7c: tbz             w0, #0, #0x745e98
    //     0x745e80: ldurb           w16, [x1, #-1]
    //     0x745e84: ldurb           w17, [x0, #-1]
    //     0x745e88: and             x16, x17, x16, lsr #2
    //     0x745e8c: tst             x16, HEAP, lsr #32
    //     0x745e90: b.eq            #0x745e98
    //     0x745e94: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x745e98: ldur            x0, [fp, #-0x40]
    // 0x745e9c: r16 = "medine_oda_id"
    //     0x745e9c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x745ea0: ldr             x16, [x16, #0x840]
    // 0x745ea4: ArrayStore: r0[0] = r16  ; List_4
    //     0x745ea4: stur            w16, [x0, #0x17]
    // 0x745ea8: ldur            x1, [fp, #-0x50]
    // 0x745eac: r0 = delete()
    //     0x745eac: bl              #0x6d7768  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_field_value_factory.dart] MethodChannelFieldValueFactory::delete
    // 0x745eb0: stur            x0, [fp, #-0x50]
    // 0x745eb4: r0 = FieldValue()
    //     0x745eb4: bl              #0x5dd8d4  ; AllocateFieldValueStub -> FieldValue (size=0x10)
    // 0x745eb8: mov             x1, x0
    // 0x745ebc: ldur            x0, [fp, #-0x50]
    // 0x745ec0: StoreField: r1->field_b = r0
    //     0x745ec0: stur            w0, [x1, #0xb]
    // 0x745ec4: StoreField: r1->field_7 = r0
    //     0x745ec4: stur            w0, [x1, #7]
    // 0x745ec8: mov             x0, x1
    // 0x745ecc: ldur            x1, [fp, #-0x40]
    // 0x745ed0: ArrayStore: r1[3] = r0  ; List_4
    //     0x745ed0: add             x25, x1, #0x1b
    //     0x745ed4: str             w0, [x25]
    //     0x745ed8: tbz             w0, #0, #0x745ef4
    //     0x745edc: ldurb           w16, [x1, #-1]
    //     0x745ee0: ldurb           w17, [x0, #-1]
    //     0x745ee4: and             x16, x17, x16, lsr #2
    //     0x745ee8: tst             x16, HEAP, lsr #32
    //     0x745eec: b.eq            #0x745ef4
    //     0x745ef0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x745ef4: r16 = <Object, Object?>
    //     0x745ef4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x745ef8: ldr             x16, [x16, #0x828]
    // 0x745efc: ldur            lr, [fp, #-0x40]
    // 0x745f00: stp             lr, x16, [SP]
    // 0x745f04: r0 = Map._fromLiteral()
    //     0x745f04: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x745f08: mov             x1, x0
    // 0x745f0c: ldur            x0, [fp, #-0x28]
    // 0x745f10: LoadField: r2 = r0->field_7
    //     0x745f10: ldur            w2, [x0, #7]
    // 0x745f14: DecompressPointer r2
    //     0x745f14: add             x2, x2, HEAP, lsl #32
    // 0x745f18: stur            x2, [fp, #-0x40]
    // 0x745f1c: r0 = replaceValueWithDelegatesInMapFieldPath()
    //     0x745f1c: bl              #0x6d41d4  ; [package:cloud_firestore/cloud_firestore.dart] _CodecUtility::replaceValueWithDelegatesInMapFieldPath
    // 0x745f20: ldur            x1, [fp, #-0x40]
    // 0x745f24: mov             x2, x0
    // 0x745f28: r0 = update()
    //     0x745f28: bl              #0x6d3e60  ; [package:cloud_firestore_platform_interface/src/method_channel/method_channel_document_reference.dart] MethodChannelDocumentReference::update
    // 0x745f2c: mov             x1, x0
    // 0x745f30: stur            x1, [fp, #-0x28]
    // 0x745f34: r0 = Await()
    //     0x745f34: bl              #0x3dd188  ; AwaitStub
    // 0x745f38: ldur            x1, [fp, #-0x30]
    // 0x745f3c: ldur            x0, [fp, #-0x20]
    // 0x745f40: ldur            x2, [fp, #-0x18]
    // 0x745f44: ldur            x3, [fp, #-0x38]
    // 0x745f48: b               #0x745da0
    // 0x745f4c: r0 = Null
    //     0x745f4c: mov             x0, NULL
    // 0x745f50: r0 = ReturnAsyncNotFuture()
    //     0x745f50: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x745f54: r0 = ConcurrentModificationError()
    //     0x745f54: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x745f58: mov             x1, x0
    // 0x745f5c: ldur            x0, [fp, #-0x20]
    // 0x745f60: StoreField: r1->field_b = r0
    //     0x745f60: stur            w0, [x1, #0xb]
    // 0x745f64: mov             x0, x1
    // 0x745f68: r0 = Throw()
    //     0x745f68: bl              #0x926328  ; ThrowStub
    // 0x745f6c: brk             #0
    // 0x745f70: r0 = ConcurrentModificationError()
    //     0x745f70: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x745f74: mov             x1, x0
    // 0x745f78: ldur            x0, [fp, #-0x48]
    // 0x745f7c: StoreField: r1->field_b = r0
    //     0x745f7c: stur            w0, [x1, #0xb]
    // 0x745f80: mov             x0, x1
    // 0x745f84: r0 = Throw()
    //     0x745f84: bl              #0x926328  ; ThrowStub
    // 0x745f88: brk             #0
    // 0x745f8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745f8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745f90: b               #0x745b1c
    // 0x745f94: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745f94: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745f98: b               #0x745ba0
    // 0x745f9c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x745f9c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x745fa0: b               #0x745dac
  }
  _ updateCurrency(/* No info */) async {
    // ** addr: 0x7e3fd0, size: 0xb0
    // 0x7e3fd0: EnterFrame
    //     0x7e3fd0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e3fd4: mov             fp, SP
    // 0x7e3fd8: AllocStack(0x78)
    //     0x7e3fd8: sub             SP, SP, #0x78
    // 0x7e3fdc: SetupParameters(FirestoreService this /* r1 => r2, fp-0x60 */, dynamic _ /* r2 => r1, fp-0x68 */)
    //     0x7e3fdc: stur            NULL, [fp, #-8]
    //     0x7e3fe0: stur            x1, [fp, #-0x60]
    //     0x7e3fe4: mov             x16, x2
    //     0x7e3fe8: mov             x2, x1
    //     0x7e3fec: mov             x1, x16
    //     0x7e3ff0: stur            x1, [fp, #-0x68]
    // 0x7e3ff4: CheckStackOverflow
    //     0x7e3ff4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e3ff8: cmp             SP, x16
    //     0x7e3ffc: b.ls            #0x7e4078
    // 0x7e4000: InitAsync() -> Future<bool>
    //     0x7e4000: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x7e4004: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e4008: ldur            x3, [fp, #-0x60]
    // 0x7e400c: ldur            x0, [fp, #-0x68]
    // 0x7e4010: LoadField: r1 = r3->field_7
    //     0x7e4010: ldur            w1, [x3, #7]
    // 0x7e4014: DecompressPointer r1
    //     0x7e4014: add             x1, x1, HEAP, lsl #32
    // 0x7e4018: r2 = "currencies"
    //     0x7e4018: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x7e401c: ldr             x2, [x2, #0xe18]
    // 0x7e4020: r0 = collection()
    //     0x7e4020: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x7e4024: mov             x1, x0
    // 0x7e4028: ldur            x0, [fp, #-0x68]
    // 0x7e402c: LoadField: r2 = r0->field_7
    //     0x7e402c: ldur            w2, [x0, #7]
    // 0x7e4030: DecompressPointer r2
    //     0x7e4030: add             x2, x2, HEAP, lsl #32
    // 0x7e4034: str             x2, [SP]
    // 0x7e4038: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e4038: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e403c: r0 = doc()
    //     0x7e403c: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x7e4040: ldur            x1, [fp, #-0x68]
    // 0x7e4044: stur            x0, [fp, #-0x70]
    // 0x7e4048: r0 = toFirestore()
    //     0x7e4048: bl              #0x5e146c  ; [package:umrem_demo/features/admin/models/currency_model.dart] CurrencyModel::toFirestore
    // 0x7e404c: ldur            x1, [fp, #-0x70]
    // 0x7e4050: mov             x2, x0
    // 0x7e4054: r0 = update()
    //     0x7e4054: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x7e4058: mov             x1, x0
    // 0x7e405c: stur            x1, [fp, #-0x70]
    // 0x7e4060: r0 = Await()
    //     0x7e4060: bl              #0x3dd188  ; AwaitStub
    // 0x7e4064: r0 = true
    //     0x7e4064: add             x0, NULL, #0x20  ; true
    // 0x7e4068: r0 = ReturnAsyncNotFuture()
    //     0x7e4068: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e406c: sub             SP, fp, #0x78
    // 0x7e4070: r0 = false
    //     0x7e4070: add             x0, NULL, #0x30  ; false
    // 0x7e4074: r0 = ReturnAsyncNotFuture()
    //     0x7e4074: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e4078: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e4078: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e407c: b               #0x7e4000
  }
  _ deleteEvent(/* No info */) async {
    // ** addr: 0x7e5658, size: 0x88
    // 0x7e5658: EnterFrame
    //     0x7e5658: stp             fp, lr, [SP, #-0x10]!
    //     0x7e565c: mov             fp, SP
    // 0x7e5660: AllocStack(0x78)
    //     0x7e5660: sub             SP, SP, #0x78
    // 0x7e5664: SetupParameters(FirestoreService this /* r1 => r1, fp-0x60 */, dynamic _ /* r2 => r2, fp-0x68 */)
    //     0x7e5664: stur            NULL, [fp, #-8]
    //     0x7e5668: stur            x1, [fp, #-0x60]
    //     0x7e566c: stur            x2, [fp, #-0x68]
    // 0x7e5670: CheckStackOverflow
    //     0x7e5670: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5674: cmp             SP, x16
    //     0x7e5678: b.ls            #0x7e56d8
    // 0x7e567c: InitAsync() -> Future<bool>
    //     0x7e567c: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x7e5680: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e5684: ldur            x0, [fp, #-0x60]
    // 0x7e5688: LoadField: r1 = r0->field_7
    //     0x7e5688: ldur            w1, [x0, #7]
    // 0x7e568c: DecompressPointer r1
    //     0x7e568c: add             x1, x1, HEAP, lsl #32
    // 0x7e5690: r2 = "events"
    //     0x7e5690: add             x2, PP, #0x15, lsl #12  ; [pp+0x15130] "events"
    //     0x7e5694: ldr             x2, [x2, #0x130]
    // 0x7e5698: r0 = collection()
    //     0x7e5698: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x7e569c: ldur            x16, [fp, #-0x68]
    // 0x7e56a0: str             x16, [SP]
    // 0x7e56a4: mov             x1, x0
    // 0x7e56a8: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e56a8: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e56ac: r0 = doc()
    //     0x7e56ac: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x7e56b0: mov             x1, x0
    // 0x7e56b4: r0 = delete()
    //     0x7e56b4: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x7e56b8: mov             x1, x0
    // 0x7e56bc: stur            x1, [fp, #-0x70]
    // 0x7e56c0: r0 = Await()
    //     0x7e56c0: bl              #0x3dd188  ; AwaitStub
    // 0x7e56c4: r0 = true
    //     0x7e56c4: add             x0, NULL, #0x20  ; true
    // 0x7e56c8: r0 = ReturnAsyncNotFuture()
    //     0x7e56c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e56cc: sub             SP, fp, #0x78
    // 0x7e56d0: r0 = false
    //     0x7e56d0: add             x0, NULL, #0x30  ; false
    // 0x7e56d4: r0 = ReturnAsyncNotFuture()
    //     0x7e56d4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e56d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e56d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e56dc: b               #0x7e567c
  }
}
