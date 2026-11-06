// lib: , url: package:umrem_demo/common/services/firebase_messaging_service.dart

// class id: 1049489, size: 0x8
class :: {

  static Future<void> handleBackgroundMessage(RemoteMessage) async {
    // ** addr: 0x5ef568, size: 0x34
    // 0x5ef568: EnterFrame
    //     0x5ef568: stp             fp, lr, [SP, #-0x10]!
    //     0x5ef56c: mov             fp, SP
    // 0x5ef570: AllocStack(0x8)
    //     0x5ef570: sub             SP, SP, #8
    // 0x5ef574: SetupParameters()
    //     0x5ef574: stur            NULL, [fp, #-8]
    // 0x5ef578: CheckStackOverflow
    //     0x5ef578: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef57c: cmp             SP, x16
    //     0x5ef580: b.ls            #0x5ef594
    // 0x5ef584: InitAsync() -> Future<void?>
    //     0x5ef584: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ef588: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ef58c: r0 = Null
    //     0x5ef58c: mov             x0, NULL
    // 0x5ef590: r0 = ReturnAsyncNotFuture()
    //     0x5ef590: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef594: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef594: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef598: b               #0x5ef584
  }
  [closure] static Future<void> handleBackgroundMessage(dynamic, RemoteMessage) {
    // ** addr: 0x5ef59c, size: 0x38
    // 0x5ef59c: EnterFrame
    //     0x5ef59c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ef5a0: mov             fp, SP
    // 0x5ef5a4: AllocStack(0x8)
    //     0x5ef5a4: sub             SP, SP, #8
    // 0x5ef5a8: CheckStackOverflow
    //     0x5ef5a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef5ac: cmp             SP, x16
    //     0x5ef5b0: b.ls            #0x5ef5cc
    // 0x5ef5b4: ldr             x16, [fp, #0x10]
    // 0x5ef5b8: str             x16, [SP]
    // 0x5ef5bc: r0 = handleBackgroundMessage()
    //     0x5ef5bc: bl              #0x5ef568  ; [package:umrem_demo/common/services/firebase_messaging_service.dart] ::handleBackgroundMessage
    // 0x5ef5c0: LeaveFrame
    //     0x5ef5c0: mov             SP, fp
    //     0x5ef5c4: ldp             fp, lr, [SP], #0x10
    // 0x5ef5c8: ret
    //     0x5ef5c8: ret             
    // 0x5ef5cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef5cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef5d0: b               #0x5ef5b4
  }
  static _ initPushNotification(/* No info */) async {
    // ** addr: 0x92e224, size: 0xb0
    // 0x92e224: EnterFrame
    //     0x92e224: stp             fp, lr, [SP, #-0x10]!
    //     0x92e228: mov             fp, SP
    // 0x92e22c: AllocStack(0x28)
    //     0x92e22c: sub             SP, SP, #0x28
    // 0x92e230: SetupParameters()
    //     0x92e230: stur            NULL, [fp, #-8]
    // 0x92e234: CheckStackOverflow
    //     0x92e234: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92e238: cmp             SP, x16
    //     0x92e23c: b.ls            #0x92e2cc
    // 0x92e240: InitAsync() -> Future
    //     0x92e240: mov             x0, NULL
    //     0x92e244: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92e248: r4 = const [0, 0, 0, 0, null]
    //     0x92e248: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x92e24c: r0 = app()
    //     0x92e24c: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x92e250: mov             x2, x0
    // 0x92e254: r1 = Null
    //     0x92e254: mov             x1, NULL
    // 0x92e258: r0 = FirebaseMessaging._instanceFor()
    //     0x92e258: bl              #0x5f16d8  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::FirebaseMessaging._instanceFor
    // 0x92e25c: mov             x1, x0
    // 0x92e260: r0 = setForegroundNotificationPresentationOptions()
    //     0x92e260: bl              #0x92e478  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::setForegroundNotificationPresentationOptions
    // 0x92e264: mov             x1, x0
    // 0x92e268: stur            x1, [fp, #-0x10]
    // 0x92e26c: r0 = Await()
    //     0x92e26c: bl              #0x3dd188  ; AwaitStub
    // 0x92e270: r4 = const [0, 0, 0, 0, null]
    //     0x92e270: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x92e274: r0 = app()
    //     0x92e274: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x92e278: mov             x2, x0
    // 0x92e27c: r1 = Null
    //     0x92e27c: mov             x1, NULL
    // 0x92e280: r0 = FirebaseMessaging._instanceFor()
    //     0x92e280: bl              #0x5f16d8  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::FirebaseMessaging._instanceFor
    // 0x92e284: mov             x1, x0
    // 0x92e288: r0 = getInitialMessage()
    //     0x92e288: bl              #0x92e338  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::getInitialMessage
    // 0x92e28c: r16 = <void?>
    //     0x92e28c: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x92e290: stp             x0, x16, [SP, #8]
    // 0x92e294: r16 = Closure: (RemoteMessage?) => void from Function 'handleMessage': static.
    //     0x92e294: add             x16, PP, #9, lsl #12  ; [pp+0x96a0] Closure: (RemoteMessage?) => void from Function 'handleMessage': static. (0x7f2290921cc4)
    //     0x92e298: ldr             x16, [x16, #0x6a0]
    // 0x92e29c: str             x16, [SP]
    // 0x92e2a0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x92e2a0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x92e2a4: r0 = then()
    //     0x92e2a4: bl              #0x8bebc4  ; [dart:async] _Future::then
    // 0x92e2a8: r0 = onMessageOpenedApp()
    //     0x92e2a8: bl              #0x92e2d4  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::onMessageOpenedApp
    // 0x92e2ac: mov             x1, x0
    // 0x92e2b0: r2 = Closure: (RemoteMessage?) => void from Function 'handleMessage': static.
    //     0x92e2b0: add             x2, PP, #9, lsl #12  ; [pp+0x96a0] Closure: (RemoteMessage?) => void from Function 'handleMessage': static. (0x7f2290921cc4)
    //     0x92e2b4: ldr             x2, [x2, #0x6a0]
    // 0x92e2b8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x92e2b8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x92e2bc: r0 = listen()
    //     0x92e2bc: bl              #0x87b680  ; [dart:async] _StreamImpl::listen
    // 0x92e2c0: r0 = onBackgroundMessage()
    //     0x92e2c0: bl              #0x92dfec  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::onBackgroundMessage
    // 0x92e2c4: r0 = Null
    //     0x92e2c4: mov             x0, NULL
    // 0x92e2c8: r0 = ReturnAsyncNotFuture()
    //     0x92e2c8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92e2cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92e2cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92e2d0: b               #0x92e240
  }
}

// class id: 218, size: 0xc, field offset: 0x8
class FirebaseApi extends Object {

  _ getFcmToken(/* No info */) async {
    // ** addr: 0x5ef720, size: 0x5c
    // 0x5ef720: EnterFrame
    //     0x5ef720: stp             fp, lr, [SP, #-0x10]!
    //     0x5ef724: mov             fp, SP
    // 0x5ef728: AllocStack(0x60)
    //     0x5ef728: sub             SP, SP, #0x60
    // 0x5ef72c: SetupParameters(FirebaseApi this /* r1 => r1, fp-0x58 */)
    //     0x5ef72c: stur            NULL, [fp, #-8]
    //     0x5ef730: stur            x1, [fp, #-0x58]
    // 0x5ef734: CheckStackOverflow
    //     0x5ef734: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ef738: cmp             SP, x16
    //     0x5ef73c: b.ls            #0x5ef774
    // 0x5ef740: InitAsync() -> Future<String?>
    //     0x5ef740: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x5ef744: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ef748: ldur            x0, [fp, #-0x58]
    // 0x5ef74c: LoadField: r1 = r0->field_7
    //     0x5ef74c: ldur            w1, [x0, #7]
    // 0x5ef750: DecompressPointer r1
    //     0x5ef750: add             x1, x1, HEAP, lsl #32
    // 0x5ef754: r0 = getToken()
    //     0x5ef754: bl              #0x5ef77c  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::getToken
    // 0x5ef758: mov             x1, x0
    // 0x5ef75c: stur            x1, [fp, #-0x60]
    // 0x5ef760: r0 = Await()
    //     0x5ef760: bl              #0x3dd188  ; AwaitStub
    // 0x5ef764: r0 = ReturnAsync()
    //     0x5ef764: b               #0x427094  ; ReturnAsyncStub
    // 0x5ef768: sub             SP, fp, #0x60
    // 0x5ef76c: r0 = Null
    //     0x5ef76c: mov             x0, NULL
    // 0x5ef770: r0 = ReturnAsyncNotFuture()
    //     0x5ef770: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ef774: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ef774: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ef778: b               #0x5ef740
  }
  _ initNotifications(/* No info */) async {
    // ** addr: 0x92e198, size: 0x8c
    // 0x92e198: EnterFrame
    //     0x92e198: stp             fp, lr, [SP, #-0x10]!
    //     0x92e19c: mov             fp, SP
    // 0x92e1a0: AllocStack(0x60)
    //     0x92e1a0: sub             SP, SP, #0x60
    // 0x92e1a4: SetupParameters(FirebaseApi this /* r1 => r1, fp-0x58 */)
    //     0x92e1a4: stur            NULL, [fp, #-8]
    //     0x92e1a8: stur            x1, [fp, #-0x58]
    // 0x92e1ac: CheckStackOverflow
    //     0x92e1ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92e1b0: cmp             SP, x16
    //     0x92e1b4: b.ls            #0x92e21c
    // 0x92e1b8: InitAsync() -> Future<void?>
    //     0x92e1b8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x92e1bc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92e1c0: r0 = LoadStaticField(0xfd4)
    //     0x92e1c0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x92e1c4: ldr             x0, [x0, #0x1fa8]
    // 0x92e1c8: tbnz            w0, #4, #0x92e1d4
    // 0x92e1cc: r0 = Null
    //     0x92e1cc: mov             x0, NULL
    // 0x92e1d0: r0 = ReturnAsyncNotFuture()
    //     0x92e1d0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92e1d4: r0 = true
    //     0x92e1d4: add             x0, NULL, #0x20  ; true
    // 0x92e1d8: StoreStaticField(0xfd4, r0)
    //     0x92e1d8: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x92e1dc: str             x0, [x1, #0x1fa8]
    // 0x92e1e0: ldur            x0, [fp, #-0x58]
    // 0x92e1e4: LoadField: r1 = r0->field_7
    //     0x92e1e4: ldur            w1, [x0, #7]
    // 0x92e1e8: DecompressPointer r1
    //     0x92e1e8: add             x1, x1, HEAP, lsl #32
    // 0x92e1ec: r0 = requestPermission()
    //     0x92e1ec: bl              #0x92e4f0  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::requestPermission
    // 0x92e1f0: mov             x1, x0
    // 0x92e1f4: stur            x1, [fp, #-0x60]
    // 0x92e1f8: r0 = Await()
    //     0x92e1f8: bl              #0x3dd188  ; AwaitStub
    // 0x92e1fc: r0 = initPushNotification()
    //     0x92e1fc: bl              #0x92e224  ; [package:umrem_demo/common/services/firebase_messaging_service.dart] ::initPushNotification
    // 0x92e200: mov             x1, x0
    // 0x92e204: stur            x1, [fp, #-0x60]
    // 0x92e208: r0 = Await()
    //     0x92e208: bl              #0x3dd188  ; AwaitStub
    // 0x92e20c: b               #0x92e214
    // 0x92e210: sub             SP, fp, #0x60
    // 0x92e214: r0 = Null
    //     0x92e214: mov             x0, NULL
    // 0x92e218: r0 = ReturnAsyncNotFuture()
    //     0x92e218: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92e21c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92e21c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92e220: b               #0x92e1b8
  }
}
