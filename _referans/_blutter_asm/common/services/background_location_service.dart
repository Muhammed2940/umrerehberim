// lib: , url: package:umrem_demo/common/services/background_location_service.dart

// class id: 1049487, size: 0x8
class :: {

  static Future<void> onStart(ServiceInstance) async {
    // ** addr: 0x92a364, size: 0x26c
    // 0x92a364: EnterFrame
    //     0x92a364: stp             fp, lr, [SP, #-0x10]!
    //     0x92a368: mov             fp, SP
    // 0x92a36c: AllocStack(0xa8)
    //     0x92a36c: sub             SP, SP, #0xa8
    // 0x92a370: SetupParameters(dynamic _ /* r1, fp-0x68 */)
    //     0x92a370: stur            NULL, [fp, #-8]
    //     0x92a374: mov             x0, #0
    //     0x92a378: add             x1, fp, w0, sxtw #2
    //     0x92a37c: ldr             x1, [x1, #0x10]
    //     0x92a380: stur            x1, [fp, #-0x68]
    // 0x92a384: CheckStackOverflow
    //     0x92a384: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92a388: cmp             SP, x16
    //     0x92a38c: b.ls            #0x92a5c8
    // 0x92a390: r1 = 1
    //     0x92a390: mov             x1, #1
    // 0x92a394: r0 = AllocateContext()
    //     0x92a394: bl              #0x927010  ; AllocateContextStub
    // 0x92a398: mov             x1, x0
    // 0x92a39c: ldur            x0, [fp, #-0x68]
    // 0x92a3a0: stur            x1, [fp, #-0x70]
    // 0x92a3a4: StoreField: r1->field_f = r0
    //     0x92a3a4: stur            w0, [x1, #0xf]
    // 0x92a3a8: InitAsync() -> Future<void?>
    //     0x92a3a8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x92a3ac: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92a3b0: r0 = ensureInitialized()
    //     0x92a3b0: bl              #0x589e48  ; [package:flutter/src/widgets/binding.dart] WidgetsFlutterBinding::ensureInitialized
    // 0x92a3b4: r0 = initializeApp()
    //     0x92a3b4: bl              #0x92a65c  ; [package:firebase_core/firebase_core.dart] Firebase::initializeApp
    // 0x92a3b8: mov             x1, x0
    // 0x92a3bc: stur            x1, [fp, #-0x68]
    // 0x92a3c0: r0 = Await()
    //     0x92a3c0: bl              #0x3dd188  ; AwaitStub
    // 0x92a3c4: b               #0x92a3cc
    // 0x92a3c8: sub             SP, fp, #0xa8
    // 0x92a3cc: ldur            x2, [fp, #-0x70]
    // 0x92a3d0: LoadField: r0 = r2->field_f
    //     0x92a3d0: ldur            w0, [x2, #0xf]
    // 0x92a3d4: DecompressPointer r0
    //     0x92a3d4: add             x0, x0, HEAP, lsl #32
    // 0x92a3d8: stur            x0, [fp, #-0x68]
    // 0x92a3dc: r1 = LoadClassIdInstr(r0)
    //     0x92a3dc: ldur            x1, [x0, #-1]
    //     0x92a3e0: ubfx            x1, x1, #0xc, #0x14
    // 0x92a3e4: cmp             x1, #0x3d4
    // 0x92a3e8: b.ne            #0x92a488
    // 0x92a3ec: r1 = 1
    //     0x92a3ec: mov             x1, #1
    // 0x92a3f0: r0 = AllocateContext()
    //     0x92a3f0: bl              #0x927010  ; AllocateContextStub
    // 0x92a3f4: mov             x2, x0
    // 0x92a3f8: r0 = "stopService"
    //     0x92a3f8: ldr             x0, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x92a3fc: stur            x2, [fp, #-0x78]
    // 0x92a400: StoreField: r2->field_f = r0
    //     0x92a400: stur            w0, [x2, #0xf]
    // 0x92a404: ldur            x1, [fp, #-0x68]
    // 0x92a408: LoadField: r0 = r1->field_7
    //     0x92a408: ldur            w0, [x1, #7]
    // 0x92a40c: DecompressPointer r0
    //     0x92a40c: add             x0, x0, HEAP, lsl #32
    // 0x92a410: mov             x1, x0
    // 0x92a414: r0 = stream()
    //     0x92a414: bl              #0x8ab76c  ; [dart:async] _BroadcastStreamController::stream
    // 0x92a418: r1 = <dynamic, Map<String, dynamic>?>
    //     0x92a418: ldr             x1, [PP, #0x68]  ; [pp+0x68] TypeArguments: <dynamic, Map<String, dynamic>?>
    // 0x92a41c: stur            x0, [fp, #-0x80]
    // 0x92a420: r0 = _StreamHandlerTransformer()
    //     0x92a420: bl              #0x92a650  ; Allocate_StreamHandlerTransformerStub -> _StreamHandlerTransformer<X0, X1> (size=0x10)
    // 0x92a424: stur            x0, [fp, #-0x88]
    // 0x92a428: r1 = 2
    //     0x92a428: mov             x1, #2
    // 0x92a42c: r0 = AllocateContext()
    //     0x92a42c: bl              #0x927010  ; AllocateContextStub
    // 0x92a430: mov             x3, x0
    // 0x92a434: ldur            x0, [fp, #-0x88]
    // 0x92a438: stur            x3, [fp, #-0x90]
    // 0x92a43c: StoreField: r3->field_f = r0
    //     0x92a43c: stur            w0, [x3, #0xf]
    // 0x92a440: ldur            x2, [fp, #-0x78]
    // 0x92a444: r1 = Function '<anonymous closure>':.
    //     0x92a444: ldr             x1, [PP, #0x70]  ; [pp+0x70] AnonymousClosure: (0x92bed4), of [package:flutter_background_service_ios/flutter_background_service_ios.dart] IOSServiceInstance
    // 0x92a448: r0 = AllocateClosure()
    //     0x92a448: bl              #0x9273d4  ; AllocateClosureStub
    // 0x92a44c: ldur            x2, [fp, #-0x90]
    // 0x92a450: StoreField: r2->field_13 = r0
    //     0x92a450: stur            w0, [x2, #0x13]
    // 0x92a454: r1 = Function '<anonymous closure>':.
    //     0x92a454: ldr             x1, [PP, #0x78]  ; [pp+0x78] AnonymousClosure: (0x92be70), of [dart:async] _StreamHandlerTransformer<X0, X1>
    // 0x92a458: r3 = <dynamic, Map<String, dynamic>?>
    //     0x92a458: ldr             x3, [PP, #0x68]  ; [pp+0x68] TypeArguments: <dynamic, Map<String, dynamic>?>
    // 0x92a45c: r0 = AllocateClosureTA()
    //     0x92a45c: bl              #0x927218  ; AllocateClosureTAStub
    // 0x92a460: mov             x1, x0
    // 0x92a464: ldur            x0, [fp, #-0x88]
    // 0x92a468: StoreField: r0->field_b = r1
    //     0x92a468: stur            w1, [x0, #0xb]
    // 0x92a46c: r16 = <Map<String, dynamic>?>
    //     0x92a46c: ldr             x16, [PP, #0x80]  ; [pp+0x80] TypeArguments: <Map<String, dynamic>?>
    // 0x92a470: ldur            lr, [fp, #-0x80]
    // 0x92a474: stp             lr, x16, [SP, #8]
    // 0x92a478: str             x0, [SP]
    // 0x92a47c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x92a47c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x92a480: r0 = transform()
    //     0x92a480: bl              #0x87d624  ; [dart:async] Stream::transform
    // 0x92a484: b               #0x92a538
    // 0x92a488: mov             x1, x0
    // 0x92a48c: r0 = "stopService"
    //     0x92a48c: ldr             x0, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x92a490: r1 = 1
    //     0x92a490: mov             x1, #1
    // 0x92a494: r0 = AllocateContext()
    //     0x92a494: bl              #0x927010  ; AllocateContextStub
    // 0x92a498: mov             x2, x0
    // 0x92a49c: r0 = "stopService"
    //     0x92a49c: ldr             x0, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x92a4a0: stur            x2, [fp, #-0x80]
    // 0x92a4a4: StoreField: r2->field_f = r0
    //     0x92a4a4: stur            w0, [x2, #0xf]
    // 0x92a4a8: ldur            x0, [fp, #-0x68]
    // 0x92a4ac: LoadField: r3 = r0->field_7
    //     0x92a4ac: ldur            w3, [x0, #7]
    // 0x92a4b0: DecompressPointer r3
    //     0x92a4b0: add             x3, x3, HEAP, lsl #32
    // 0x92a4b4: stur            x3, [fp, #-0x78]
    // 0x92a4b8: r1 = Null
    //     0x92a4b8: mov             x1, NULL
    // 0x92a4bc: r0 = _BroadcastStream()
    //     0x92a4bc: bl              #0x5cda90  ; Allocate_BroadcastStreamStub -> _BroadcastStream<X0> (size=0x10)
    // 0x92a4c0: mov             x2, x0
    // 0x92a4c4: ldur            x0, [fp, #-0x78]
    // 0x92a4c8: stur            x2, [fp, #-0x68]
    // 0x92a4cc: StoreField: r2->field_b = r0
    //     0x92a4cc: stur            w0, [x2, #0xb]
    // 0x92a4d0: r1 = <dynamic, Map<String, dynamic>?>
    //     0x92a4d0: ldr             x1, [PP, #0x68]  ; [pp+0x68] TypeArguments: <dynamic, Map<String, dynamic>?>
    // 0x92a4d4: r0 = _StreamHandlerTransformer()
    //     0x92a4d4: bl              #0x92a650  ; Allocate_StreamHandlerTransformerStub -> _StreamHandlerTransformer<X0, X1> (size=0x10)
    // 0x92a4d8: stur            x0, [fp, #-0x78]
    // 0x92a4dc: r1 = 2
    //     0x92a4dc: mov             x1, #2
    // 0x92a4e0: r0 = AllocateContext()
    //     0x92a4e0: bl              #0x927010  ; AllocateContextStub
    // 0x92a4e4: mov             x3, x0
    // 0x92a4e8: ldur            x0, [fp, #-0x78]
    // 0x92a4ec: stur            x3, [fp, #-0x88]
    // 0x92a4f0: StoreField: r3->field_f = r0
    //     0x92a4f0: stur            w0, [x3, #0xf]
    // 0x92a4f4: ldur            x2, [fp, #-0x80]
    // 0x92a4f8: r1 = Function '<anonymous closure>':.
    //     0x92a4f8: ldr             x1, [PP, #0x88]  ; [pp+0x88] AnonymousClosure: (0x92bd78), of [package:flutter_background_service_android/flutter_background_service_android.dart] AndroidServiceInstance
    // 0x92a4fc: r0 = AllocateClosure()
    //     0x92a4fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x92a500: ldur            x2, [fp, #-0x88]
    // 0x92a504: StoreField: r2->field_13 = r0
    //     0x92a504: stur            w0, [x2, #0x13]
    // 0x92a508: r1 = Function '<anonymous closure>':.
    //     0x92a508: ldr             x1, [PP, #0x78]  ; [pp+0x78] AnonymousClosure: (0x92be70), of [dart:async] _StreamHandlerTransformer<X0, X1>
    // 0x92a50c: r3 = <dynamic, Map<String, dynamic>?>
    //     0x92a50c: ldr             x3, [PP, #0x68]  ; [pp+0x68] TypeArguments: <dynamic, Map<String, dynamic>?>
    // 0x92a510: r0 = AllocateClosureTA()
    //     0x92a510: bl              #0x927218  ; AllocateClosureTAStub
    // 0x92a514: mov             x1, x0
    // 0x92a518: ldur            x0, [fp, #-0x78]
    // 0x92a51c: StoreField: r0->field_b = r1
    //     0x92a51c: stur            w1, [x0, #0xb]
    // 0x92a520: r16 = <Map<String, dynamic>?>
    //     0x92a520: ldr             x16, [PP, #0x80]  ; [pp+0x80] TypeArguments: <Map<String, dynamic>?>
    // 0x92a524: ldur            lr, [fp, #-0x68]
    // 0x92a528: stp             lr, x16, [SP, #8]
    // 0x92a52c: str             x0, [SP]
    // 0x92a530: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x92a530: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x92a534: r0 = transform()
    //     0x92a534: bl              #0x87d624  ; [dart:async] Stream::transform
    // 0x92a538: ldur            x2, [fp, #-0x70]
    // 0x92a53c: stur            x0, [fp, #-0x68]
    // 0x92a540: r1 = Function '<anonymous closure>': static.
    //     0x92a540: ldr             x1, [PP, #0x90]  ; [pp+0x90] AnonymousClosure: static (0x92bd18), in [package:umrem_demo/common/services/background_location_service.dart] ::onStart (0x92a364)
    // 0x92a544: r0 = AllocateClosure()
    //     0x92a544: bl              #0x9273d4  ; AllocateClosureStub
    // 0x92a548: ldur            x1, [fp, #-0x68]
    // 0x92a54c: mov             x2, x0
    // 0x92a550: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x92a550: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x92a554: r0 = listen()
    //     0x92a554: bl              #0x87c4bc  ; [dart:async] _BoundSinkStream::listen
    // 0x92a558: r0 = Duration()
    //     0x92a558: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x92a55c: mov             x1, x0
    // 0x92a560: r0 = 20000000
    //     0x92a560: mov             x0, #0x2d00
    //     0x92a564: movk            x0, #0x131, lsl #16
    // 0x92a568: stur            x1, [fp, #-0x68]
    // 0x92a56c: StoreField: r1->field_7 = r0
    //     0x92a56c: stur            x0, [x1, #7]
    // 0x92a570: r0 = AndroidSettings()
    //     0x92a570: bl              #0x92a644  ; AllocateAndroidSettingsStub -> AndroidSettings (size=0x28)
    // 0x92a574: mov             x1, x0
    // 0x92a578: r0 = false
    //     0x92a578: add             x0, NULL, #0x30  ; false
    // 0x92a57c: ArrayStore: r1[0] = r0  ; List_4
    //     0x92a57c: stur            w0, [x1, #0x17]
    // 0x92a580: ldur            x2, [fp, #-0x68]
    // 0x92a584: StoreField: r1->field_1b = r2
    //     0x92a584: stur            w2, [x1, #0x1b]
    // 0x92a588: StoreField: r1->field_23 = r0
    //     0x92a588: stur            w0, [x1, #0x23]
    // 0x92a58c: r0 = Instance_LocationAccuracy
    //     0x92a58c: ldr             x0, [PP, #0xa0]  ; [pp+0xa0] Obj!LocationAccuracy@a27c61
    // 0x92a590: StoreField: r1->field_7 = r0
    //     0x92a590: stur            w0, [x1, #7]
    // 0x92a594: r0 = 5
    //     0x92a594: mov             x0, #5
    // 0x92a598: StoreField: r1->field_b = r0
    //     0x92a598: stur            x0, [x1, #0xb]
    // 0x92a59c: r0 = getPositionStream()
    //     0x92a59c: bl              #0x92a5d0  ; [package:geolocator/geolocator.dart] Geolocator::getPositionStream
    // 0x92a5a0: r1 = Function '<anonymous closure>': static.
    //     0x92a5a0: ldr             x1, [PP, #0xa8]  ; [pp+0xa8] AnonymousClosure: static (0x92b2bc), in [package:umrem_demo/common/services/background_location_service.dart] ::onStart (0x92a364)
    // 0x92a5a4: r2 = Null
    //     0x92a5a4: mov             x2, NULL
    // 0x92a5a8: stur            x0, [fp, #-0x68]
    // 0x92a5ac: r0 = AllocateClosure()
    //     0x92a5ac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x92a5b0: ldur            x1, [fp, #-0x68]
    // 0x92a5b4: mov             x2, x0
    // 0x92a5b8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x92a5b8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x92a5bc: r0 = listen()
    //     0x92a5bc: bl              #0x87bcb8  ; [dart:async] _ForwardingStream::listen
    // 0x92a5c0: r0 = Null
    //     0x92a5c0: mov             x0, NULL
    // 0x92a5c4: r0 = ReturnAsyncNotFuture()
    //     0x92a5c4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92a5c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92a5c8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92a5cc: b               #0x92a390
  }
  [closure] static Future<void> <anonymous closure>(dynamic, Position) async {
    // ** addr: 0x92b2bc, size: 0x6c
    // 0x92b2bc: EnterFrame
    //     0x92b2bc: stp             fp, lr, [SP, #-0x10]!
    //     0x92b2c0: mov             fp, SP
    // 0x92b2c4: AllocStack(0x18)
    //     0x92b2c4: sub             SP, SP, #0x18
    // 0x92b2c8: SetupParameters(dynamic _ /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x92b2c8: stur            NULL, [fp, #-8]
    //     0x92b2cc: mov             x0, #0
    //     0x92b2d0: add             x1, fp, w0, sxtw #2
    //     0x92b2d4: ldr             x1, [x1, #0x18]
    //     0x92b2d8: add             x2, fp, w0, sxtw #2
    //     0x92b2dc: ldr             x2, [x2, #0x10]
    //     0x92b2e0: stur            x2, [fp, #-0x18]
    //     0x92b2e4: ldur            w3, [x1, #0x17]
    //     0x92b2e8: add             x3, x3, HEAP, lsl #32
    //     0x92b2ec: stur            x3, [fp, #-0x10]
    // 0x92b2f0: CheckStackOverflow
    //     0x92b2f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92b2f4: cmp             SP, x16
    //     0x92b2f8: b.ls            #0x92b320
    // 0x92b2fc: InitAsync() -> Future<void?>
    //     0x92b2fc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x92b300: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92b304: ldur            x1, [fp, #-0x18]
    // 0x92b308: r0 = updateUserLocation()
    //     0x92b308: bl              #0x92b328  ; [package:umrem_demo/common/services/location_firebase_service.dart] LocationFirebaseService::updateUserLocation
    // 0x92b30c: mov             x1, x0
    // 0x92b310: stur            x1, [fp, #-0x18]
    // 0x92b314: r0 = Await()
    //     0x92b314: bl              #0x3dd188  ; AwaitStub
    // 0x92b318: r0 = Null
    //     0x92b318: mov             x0, NULL
    // 0x92b31c: r0 = ReturnAsyncNotFuture()
    //     0x92b31c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92b320: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92b320: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92b324: b               #0x92b2fc
  }
  [closure] static void <anonymous closure>(dynamic, Map<String, dynamic>?) {
    // ** addr: 0x92bd18, size: 0x60
    // 0x92bd18: EnterFrame
    //     0x92bd18: stp             fp, lr, [SP, #-0x10]!
    //     0x92bd1c: mov             fp, SP
    // 0x92bd20: ldr             x0, [fp, #0x18]
    // 0x92bd24: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x92bd24: ldur            w1, [x0, #0x17]
    // 0x92bd28: DecompressPointer r1
    //     0x92bd28: add             x1, x1, HEAP, lsl #32
    // 0x92bd2c: CheckStackOverflow
    //     0x92bd2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92bd30: cmp             SP, x16
    //     0x92bd34: b.ls            #0x92bd70
    // 0x92bd38: LoadField: r0 = r1->field_f
    //     0x92bd38: ldur            w0, [x1, #0xf]
    // 0x92bd3c: DecompressPointer r0
    //     0x92bd3c: add             x0, x0, HEAP, lsl #32
    // 0x92bd40: r1 = LoadClassIdInstr(r0)
    //     0x92bd40: ldur            x1, [x0, #-1]
    //     0x92bd44: ubfx            x1, x1, #0xc, #0x14
    // 0x92bd48: mov             x16, x0
    // 0x92bd4c: mov             x0, x1
    // 0x92bd50: mov             x1, x16
    // 0x92bd54: r0 = GDT[cid_x0 + -0xff7]()
    //     0x92bd54: sub             lr, x0, #0xff7
    //     0x92bd58: ldr             lr, [x21, lr, lsl #3]
    //     0x92bd5c: blr             lr
    // 0x92bd60: r0 = Null
    //     0x92bd60: mov             x0, NULL
    // 0x92bd64: LeaveFrame
    //     0x92bd64: mov             SP, fp
    //     0x92bd68: ldp             fp, lr, [SP], #0x10
    // 0x92bd6c: ret
    //     0x92bd6c: ret             
    // 0x92bd70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92bd70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92bd74: b               #0x92bd38
  }
  [closure] static Future<void> onStart(dynamic, ServiceInstance) {
    // ** addr: 0x92bfcc, size: 0x38
    // 0x92bfcc: EnterFrame
    //     0x92bfcc: stp             fp, lr, [SP, #-0x10]!
    //     0x92bfd0: mov             fp, SP
    // 0x92bfd4: AllocStack(0x8)
    //     0x92bfd4: sub             SP, SP, #8
    // 0x92bfd8: CheckStackOverflow
    //     0x92bfd8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92bfdc: cmp             SP, x16
    //     0x92bfe0: b.ls            #0x92bffc
    // 0x92bfe4: ldr             x16, [fp, #0x10]
    // 0x92bfe8: str             x16, [SP]
    // 0x92bfec: r0 = onStart()
    //     0x92bfec: bl              #0x92a364  ; [package:umrem_demo/common/services/background_location_service.dart] ::onStart
    // 0x92bff0: LeaveFrame
    //     0x92bff0: mov             SP, fp
    //     0x92bff4: ldp             fp, lr, [SP], #0x10
    // 0x92bff8: ret
    //     0x92bff8: ret             
    // 0x92bffc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92bffc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92c000: b               #0x92bfe4
  }
}
