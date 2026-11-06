// lib: , url: package:umrem_demo/common/services/notification_topic_service.dart

// class id: 1049493, size: 0x8
class :: {
}

// class id: 215, size: 0x8, field offset: 0x8
abstract class NotificationTopicService extends Object {

  static late final FirebaseMessaging _fcm; // offset: 0xfe0

  static _ syncUserTopics(/* No info */) async {
    // ** addr: 0x7e9c7c, size: 0x29c
    // 0x7e9c7c: EnterFrame
    //     0x7e9c7c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e9c80: mov             fp, SP
    // 0x7e9c84: AllocStack(0x20)
    //     0x7e9c84: sub             SP, SP, #0x20
    // 0x7e9c88: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */)
    //     0x7e9c88: stur            NULL, [fp, #-8]
    //     0x7e9c8c: stur            x1, [fp, #-0x10]
    // 0x7e9c90: CheckStackOverflow
    //     0x7e9c90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e9c94: cmp             SP, x16
    //     0x7e9c98: b.ls            #0x7e9f10
    // 0x7e9c9c: InitAsync() -> Future<void?>
    //     0x7e9c9c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e9ca0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e9ca4: r1 = "all"
    //     0x7e9ca4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15bc0] "all"
    //     0x7e9ca8: ldr             x1, [x1, #0xbc0]
    // 0x7e9cac: r0 = _safeSubscribe()
    //     0x7e9cac: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9cb0: mov             x1, x0
    // 0x7e9cb4: stur            x1, [fp, #-0x18]
    // 0x7e9cb8: r0 = Await()
    //     0x7e9cb8: bl              #0x3dd188  ; AwaitStub
    // 0x7e9cbc: ldur            x0, [fp, #-0x10]
    // 0x7e9cc0: LoadField: r3 = r0->field_4b
    //     0x7e9cc0: ldur            w3, [x0, #0x4b]
    // 0x7e9cc4: DecompressPointer r3
    //     0x7e9cc4: add             x3, x3, HEAP, lsl #32
    // 0x7e9cc8: stur            x3, [fp, #-0x18]
    // 0x7e9ccc: cmp             w3, NULL
    // 0x7e9cd0: b.eq            #0x7e9d10
    // 0x7e9cd4: r1 = Null
    //     0x7e9cd4: mov             x1, NULL
    // 0x7e9cd8: r2 = 4
    //     0x7e9cd8: mov             x2, #4
    // 0x7e9cdc: r0 = AllocateArray()
    //     0x7e9cdc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9ce0: r16 = "agency_"
    //     0x7e9ce0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18a38] "agency_"
    //     0x7e9ce4: ldr             x16, [x16, #0xa38]
    // 0x7e9ce8: StoreField: r0->field_f = r16
    //     0x7e9ce8: stur            w16, [x0, #0xf]
    // 0x7e9cec: ldur            x1, [fp, #-0x18]
    // 0x7e9cf0: StoreField: r0->field_13 = r1
    //     0x7e9cf0: stur            w1, [x0, #0x13]
    // 0x7e9cf4: str             x0, [SP]
    // 0x7e9cf8: r0 = _interpolate()
    //     0x7e9cf8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9cfc: mov             x1, x0
    // 0x7e9d00: r0 = _safeSubscribe()
    //     0x7e9d00: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9d04: mov             x1, x0
    // 0x7e9d08: stur            x1, [fp, #-0x18]
    // 0x7e9d0c: r0 = Await()
    //     0x7e9d0c: bl              #0x3dd188  ; AwaitStub
    // 0x7e9d10: ldur            x0, [fp, #-0x10]
    // 0x7e9d14: LoadField: r3 = r0->field_23
    //     0x7e9d14: ldur            w3, [x0, #0x23]
    // 0x7e9d18: DecompressPointer r3
    //     0x7e9d18: add             x3, x3, HEAP, lsl #32
    // 0x7e9d1c: stur            x3, [fp, #-0x18]
    // 0x7e9d20: cmp             w3, NULL
    // 0x7e9d24: b.eq            #0x7e9d64
    // 0x7e9d28: r1 = Null
    //     0x7e9d28: mov             x1, NULL
    // 0x7e9d2c: r2 = 4
    //     0x7e9d2c: mov             x2, #4
    // 0x7e9d30: r0 = AllocateArray()
    //     0x7e9d30: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9d34: r16 = "mekke_otel_"
    //     0x7e9d34: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfa8] "mekke_otel_"
    //     0x7e9d38: ldr             x16, [x16, #0xfa8]
    // 0x7e9d3c: StoreField: r0->field_f = r16
    //     0x7e9d3c: stur            w16, [x0, #0xf]
    // 0x7e9d40: ldur            x1, [fp, #-0x18]
    // 0x7e9d44: StoreField: r0->field_13 = r1
    //     0x7e9d44: stur            w1, [x0, #0x13]
    // 0x7e9d48: str             x0, [SP]
    // 0x7e9d4c: r0 = _interpolate()
    //     0x7e9d4c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9d50: mov             x1, x0
    // 0x7e9d54: r0 = _safeSubscribe()
    //     0x7e9d54: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9d58: mov             x1, x0
    // 0x7e9d5c: stur            x1, [fp, #-0x18]
    // 0x7e9d60: r0 = Await()
    //     0x7e9d60: bl              #0x3dd188  ; AwaitStub
    // 0x7e9d64: ldur            x0, [fp, #-0x10]
    // 0x7e9d68: LoadField: r3 = r0->field_2b
    //     0x7e9d68: ldur            w3, [x0, #0x2b]
    // 0x7e9d6c: DecompressPointer r3
    //     0x7e9d6c: add             x3, x3, HEAP, lsl #32
    // 0x7e9d70: stur            x3, [fp, #-0x18]
    // 0x7e9d74: cmp             w3, NULL
    // 0x7e9d78: b.eq            #0x7e9db8
    // 0x7e9d7c: r1 = Null
    //     0x7e9d7c: mov             x1, NULL
    // 0x7e9d80: r2 = 4
    //     0x7e9d80: mov             x2, #4
    // 0x7e9d84: r0 = AllocateArray()
    //     0x7e9d84: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9d88: r16 = "mekke_oda_"
    //     0x7e9d88: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfb0] "mekke_oda_"
    //     0x7e9d8c: ldr             x16, [x16, #0xfb0]
    // 0x7e9d90: StoreField: r0->field_f = r16
    //     0x7e9d90: stur            w16, [x0, #0xf]
    // 0x7e9d94: ldur            x1, [fp, #-0x18]
    // 0x7e9d98: StoreField: r0->field_13 = r1
    //     0x7e9d98: stur            w1, [x0, #0x13]
    // 0x7e9d9c: str             x0, [SP]
    // 0x7e9da0: r0 = _interpolate()
    //     0x7e9da0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9da4: mov             x1, x0
    // 0x7e9da8: r0 = _safeSubscribe()
    //     0x7e9da8: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9dac: mov             x1, x0
    // 0x7e9db0: stur            x1, [fp, #-0x18]
    // 0x7e9db4: r0 = Await()
    //     0x7e9db4: bl              #0x3dd188  ; AwaitStub
    // 0x7e9db8: ldur            x0, [fp, #-0x10]
    // 0x7e9dbc: LoadField: r3 = r0->field_1b
    //     0x7e9dbc: ldur            w3, [x0, #0x1b]
    // 0x7e9dc0: DecompressPointer r3
    //     0x7e9dc0: add             x3, x3, HEAP, lsl #32
    // 0x7e9dc4: stur            x3, [fp, #-0x18]
    // 0x7e9dc8: cmp             w3, NULL
    // 0x7e9dcc: b.eq            #0x7e9e0c
    // 0x7e9dd0: r1 = Null
    //     0x7e9dd0: mov             x1, NULL
    // 0x7e9dd4: r2 = 4
    //     0x7e9dd4: mov             x2, #4
    // 0x7e9dd8: r0 = AllocateArray()
    //     0x7e9dd8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9ddc: r16 = "mekke_sefer_"
    //     0x7e9ddc: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfb8] "mekke_sefer_"
    //     0x7e9de0: ldr             x16, [x16, #0xfb8]
    // 0x7e9de4: StoreField: r0->field_f = r16
    //     0x7e9de4: stur            w16, [x0, #0xf]
    // 0x7e9de8: ldur            x1, [fp, #-0x18]
    // 0x7e9dec: StoreField: r0->field_13 = r1
    //     0x7e9dec: stur            w1, [x0, #0x13]
    // 0x7e9df0: str             x0, [SP]
    // 0x7e9df4: r0 = _interpolate()
    //     0x7e9df4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9df8: mov             x1, x0
    // 0x7e9dfc: r0 = _safeSubscribe()
    //     0x7e9dfc: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9e00: mov             x1, x0
    // 0x7e9e04: stur            x1, [fp, #-0x18]
    // 0x7e9e08: r0 = Await()
    //     0x7e9e08: bl              #0x3dd188  ; AwaitStub
    // 0x7e9e0c: ldur            x0, [fp, #-0x10]
    // 0x7e9e10: LoadField: r3 = r0->field_27
    //     0x7e9e10: ldur            w3, [x0, #0x27]
    // 0x7e9e14: DecompressPointer r3
    //     0x7e9e14: add             x3, x3, HEAP, lsl #32
    // 0x7e9e18: stur            x3, [fp, #-0x18]
    // 0x7e9e1c: cmp             w3, NULL
    // 0x7e9e20: b.eq            #0x7e9e60
    // 0x7e9e24: r1 = Null
    //     0x7e9e24: mov             x1, NULL
    // 0x7e9e28: r2 = 4
    //     0x7e9e28: mov             x2, #4
    // 0x7e9e2c: r0 = AllocateArray()
    //     0x7e9e2c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9e30: r16 = "medine_otel_"
    //     0x7e9e30: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfc0] "medine_otel_"
    //     0x7e9e34: ldr             x16, [x16, #0xfc0]
    // 0x7e9e38: StoreField: r0->field_f = r16
    //     0x7e9e38: stur            w16, [x0, #0xf]
    // 0x7e9e3c: ldur            x1, [fp, #-0x18]
    // 0x7e9e40: StoreField: r0->field_13 = r1
    //     0x7e9e40: stur            w1, [x0, #0x13]
    // 0x7e9e44: str             x0, [SP]
    // 0x7e9e48: r0 = _interpolate()
    //     0x7e9e48: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9e4c: mov             x1, x0
    // 0x7e9e50: r0 = _safeSubscribe()
    //     0x7e9e50: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9e54: mov             x1, x0
    // 0x7e9e58: stur            x1, [fp, #-0x18]
    // 0x7e9e5c: r0 = Await()
    //     0x7e9e5c: bl              #0x3dd188  ; AwaitStub
    // 0x7e9e60: ldur            x0, [fp, #-0x10]
    // 0x7e9e64: LoadField: r3 = r0->field_2f
    //     0x7e9e64: ldur            w3, [x0, #0x2f]
    // 0x7e9e68: DecompressPointer r3
    //     0x7e9e68: add             x3, x3, HEAP, lsl #32
    // 0x7e9e6c: stur            x3, [fp, #-0x18]
    // 0x7e9e70: cmp             w3, NULL
    // 0x7e9e74: b.eq            #0x7e9eb4
    // 0x7e9e78: r1 = Null
    //     0x7e9e78: mov             x1, NULL
    // 0x7e9e7c: r2 = 4
    //     0x7e9e7c: mov             x2, #4
    // 0x7e9e80: r0 = AllocateArray()
    //     0x7e9e80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9e84: r16 = "medine_oda_"
    //     0x7e9e84: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfc8] "medine_oda_"
    //     0x7e9e88: ldr             x16, [x16, #0xfc8]
    // 0x7e9e8c: StoreField: r0->field_f = r16
    //     0x7e9e8c: stur            w16, [x0, #0xf]
    // 0x7e9e90: ldur            x1, [fp, #-0x18]
    // 0x7e9e94: StoreField: r0->field_13 = r1
    //     0x7e9e94: stur            w1, [x0, #0x13]
    // 0x7e9e98: str             x0, [SP]
    // 0x7e9e9c: r0 = _interpolate()
    //     0x7e9e9c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9ea0: mov             x1, x0
    // 0x7e9ea4: r0 = _safeSubscribe()
    //     0x7e9ea4: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9ea8: mov             x1, x0
    // 0x7e9eac: stur            x1, [fp, #-0x18]
    // 0x7e9eb0: r0 = Await()
    //     0x7e9eb0: bl              #0x3dd188  ; AwaitStub
    // 0x7e9eb4: ldur            x0, [fp, #-0x10]
    // 0x7e9eb8: LoadField: r3 = r0->field_1f
    //     0x7e9eb8: ldur            w3, [x0, #0x1f]
    // 0x7e9ebc: DecompressPointer r3
    //     0x7e9ebc: add             x3, x3, HEAP, lsl #32
    // 0x7e9ec0: stur            x3, [fp, #-0x18]
    // 0x7e9ec4: cmp             w3, NULL
    // 0x7e9ec8: b.eq            #0x7e9f08
    // 0x7e9ecc: r1 = Null
    //     0x7e9ecc: mov             x1, NULL
    // 0x7e9ed0: r2 = 4
    //     0x7e9ed0: mov             x2, #4
    // 0x7e9ed4: r0 = AllocateArray()
    //     0x7e9ed4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9ed8: r16 = "medine_sefer_"
    //     0x7e9ed8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfd0] "medine_sefer_"
    //     0x7e9edc: ldr             x16, [x16, #0xfd0]
    // 0x7e9ee0: StoreField: r0->field_f = r16
    //     0x7e9ee0: stur            w16, [x0, #0xf]
    // 0x7e9ee4: ldur            x1, [fp, #-0x18]
    // 0x7e9ee8: StoreField: r0->field_13 = r1
    //     0x7e9ee8: stur            w1, [x0, #0x13]
    // 0x7e9eec: str             x0, [SP]
    // 0x7e9ef0: r0 = _interpolate()
    //     0x7e9ef0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e9ef4: mov             x1, x0
    // 0x7e9ef8: r0 = _safeSubscribe()
    //     0x7e9ef8: bl              #0x7e9f18  ; [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_safeSubscribe
    // 0x7e9efc: mov             x1, x0
    // 0x7e9f00: stur            x1, [fp, #-0x10]
    // 0x7e9f04: r0 = Await()
    //     0x7e9f04: bl              #0x3dd188  ; AwaitStub
    // 0x7e9f08: r0 = Null
    //     0x7e9f08: mov             x0, NULL
    // 0x7e9f0c: r0 = ReturnAsyncNotFuture()
    //     0x7e9f0c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9f10: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e9f10: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e9f14: b               #0x7e9c9c
  }
  static _ _safeSubscribe(/* No info */) async {
    // ** addr: 0x7e9f18, size: 0x74
    // 0x7e9f18: EnterFrame
    //     0x7e9f18: stp             fp, lr, [SP, #-0x10]!
    //     0x7e9f1c: mov             fp, SP
    // 0x7e9f20: AllocStack(0x10)
    //     0x7e9f20: sub             SP, SP, #0x10
    // 0x7e9f24: SetupParameters(dynamic _ /* r1 => r2, fp-0x10 */)
    //     0x7e9f24: stur            NULL, [fp, #-8]
    //     0x7e9f28: mov             x2, x1
    //     0x7e9f2c: stur            x1, [fp, #-0x10]
    // 0x7e9f30: CheckStackOverflow
    //     0x7e9f30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e9f34: cmp             SP, x16
    //     0x7e9f38: b.ls            #0x7e9f84
    // 0x7e9f3c: InitAsync() -> Future<void?>
    //     0x7e9f3c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e9f40: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e9f44: r0 = InitLateStaticField(0xfe0) // [package:umrem_demo/common/services/notification_topic_service.dart] NotificationTopicService::_fcm
    //     0x7e9f44: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7e9f48: ldr             x0, [x0, #0x1fc0]
    //     0x7e9f4c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7e9f50: cmp             w0, w16
    //     0x7e9f54: b.ne            #0x7e9f64
    //     0x7e9f58: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bfd8] Field <NotificationTopicService._fcm@960397551>: static late final (offset: 0xfe0)
    //     0x7e9f5c: ldr             x2, [x2, #0xfd8]
    //     0x7e9f60: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7e9f64: mov             x1, x0
    // 0x7e9f68: ldur            x2, [fp, #-0x10]
    // 0x7e9f6c: r0 = subscribeToTopic()
    //     0x7e9f6c: bl              #0x7e9f8c  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::subscribeToTopic
    // 0x7e9f70: mov             x1, x0
    // 0x7e9f74: stur            x1, [fp, #-0x10]
    // 0x7e9f78: r0 = Await()
    //     0x7e9f78: bl              #0x3dd188  ; AwaitStub
    // 0x7e9f7c: r0 = Null
    //     0x7e9f7c: mov             x0, NULL
    // 0x7e9f80: r0 = ReturnAsyncNotFuture()
    //     0x7e9f80: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e9f84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e9f84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e9f88: b               #0x7e9f3c
  }
  static FirebaseMessaging _fcm() {
    // ** addr: 0x7ea148, size: 0x3c
    // 0x7ea148: EnterFrame
    //     0x7ea148: stp             fp, lr, [SP, #-0x10]!
    //     0x7ea14c: mov             fp, SP
    // 0x7ea150: CheckStackOverflow
    //     0x7ea150: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ea154: cmp             SP, x16
    //     0x7ea158: b.ls            #0x7ea17c
    // 0x7ea15c: r4 = const [0, 0, 0, 0, null]
    //     0x7ea15c: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7ea160: r0 = app()
    //     0x7ea160: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7ea164: mov             x2, x0
    // 0x7ea168: r1 = Null
    //     0x7ea168: mov             x1, NULL
    // 0x7ea16c: r0 = FirebaseMessaging._instanceFor()
    //     0x7ea16c: bl              #0x5f16d8  ; [package:firebase_messaging/firebase_messaging.dart] FirebaseMessaging::FirebaseMessaging._instanceFor
    // 0x7ea170: LeaveFrame
    //     0x7ea170: mov             SP, fp
    //     0x7ea174: ldp             fp, lr, [SP], #0x10
    // 0x7ea178: ret
    //     0x7ea178: ret             
    // 0x7ea17c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ea17c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ea180: b               #0x7ea15c
  }
}
