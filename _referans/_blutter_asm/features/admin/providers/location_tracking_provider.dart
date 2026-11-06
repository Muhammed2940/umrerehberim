// lib: , url: package:umrem_demo/features/admin/providers/location_tracking_provider.dart

// class id: 1049522, size: 0x8
class :: {
}

// class id: 3868, size: 0x48, field offset: 0x24
class LocationTrackingProvider extends ChangeNotifier {

  _ startListeningSingleUser(/* No info */) {
    // ** addr: 0x5e1a74, size: 0xf8
    // 0x5e1a74: EnterFrame
    //     0x5e1a74: stp             fp, lr, [SP, #-0x10]!
    //     0x5e1a78: mov             fp, SP
    // 0x5e1a7c: AllocStack(0x20)
    //     0x5e1a7c: sub             SP, SP, #0x20
    // 0x5e1a80: SetupParameters(LocationTrackingProvider this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x5e1a80: stur            x1, [fp, #-8]
    //     0x5e1a84: stur            x2, [fp, #-0x10]
    // 0x5e1a88: CheckStackOverflow
    //     0x5e1a88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e1a8c: cmp             SP, x16
    //     0x5e1a90: b.ls            #0x5e1b64
    // 0x5e1a94: r1 = 2
    //     0x5e1a94: mov             x1, #2
    // 0x5e1a98: r0 = AllocateContext()
    //     0x5e1a98: bl              #0x927010  ; AllocateContextStub
    // 0x5e1a9c: mov             x2, x0
    // 0x5e1aa0: ldur            x0, [fp, #-8]
    // 0x5e1aa4: stur            x2, [fp, #-0x18]
    // 0x5e1aa8: StoreField: r2->field_f = r0
    //     0x5e1aa8: stur            w0, [x2, #0xf]
    // 0x5e1aac: ldur            x1, [fp, #-0x10]
    // 0x5e1ab0: StoreField: r2->field_13 = r1
    //     0x5e1ab0: stur            w1, [x2, #0x13]
    // 0x5e1ab4: LoadField: r1 = r0->field_43
    //     0x5e1ab4: ldur            w1, [x0, #0x43]
    // 0x5e1ab8: DecompressPointer r1
    //     0x5e1ab8: add             x1, x1, HEAP, lsl #32
    // 0x5e1abc: cmp             w1, NULL
    // 0x5e1ac0: b.ne            #0x5e1acc
    // 0x5e1ac4: mov             x3, x2
    // 0x5e1ac8: b               #0x5e1ad8
    // 0x5e1acc: r0 = cancel()
    //     0x5e1acc: bl              #0x88cff4  ; [dart:async] _BufferingStreamSubscription::cancel
    // 0x5e1ad0: ldur            x0, [fp, #-8]
    // 0x5e1ad4: ldur            x3, [fp, #-0x18]
    // 0x5e1ad8: LoadField: r1 = r0->field_23
    //     0x5e1ad8: ldur            w1, [x0, #0x23]
    // 0x5e1adc: DecompressPointer r1
    //     0x5e1adc: add             x1, x1, HEAP, lsl #32
    // 0x5e1ae0: LoadField: r2 = r3->field_13
    //     0x5e1ae0: ldur            w2, [x3, #0x13]
    // 0x5e1ae4: DecompressPointer r2
    //     0x5e1ae4: add             x2, x2, HEAP, lsl #32
    // 0x5e1ae8: r0 = child()
    //     0x5e1ae8: bl              #0x5e2f94  ; [package:firebase_database/firebase_database.dart] DatabaseReference::child
    // 0x5e1aec: mov             x1, x0
    // 0x5e1af0: r0 = onValue()
    //     0x5e1af0: bl              #0x5e1b8c  ; [package:firebase_database/firebase_database.dart] Query::onValue
    // 0x5e1af4: ldur            x2, [fp, #-0x18]
    // 0x5e1af8: r1 = Function '<anonymous closure>':.
    //     0x5e1af8: add             x1, PP, #0x27, lsl #12  ; [pp+0x27318] AnonymousClosure: (0x5e324c), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::startListeningSingleUser (0x5e1a74)
    //     0x5e1afc: ldr             x1, [x1, #0x318]
    // 0x5e1b00: stur            x0, [fp, #-0x10]
    // 0x5e1b04: r0 = AllocateClosure()
    //     0x5e1b04: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e1b08: ldur            x2, [fp, #-0x18]
    // 0x5e1b0c: r1 = Function '<anonymous closure>':.
    //     0x5e1b0c: add             x1, PP, #0x27, lsl #12  ; [pp+0x27320] AnonymousClosure: (0x5e3200), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::startListeningSingleUser (0x5e1a74)
    //     0x5e1b10: ldr             x1, [x1, #0x320]
    // 0x5e1b14: stur            x0, [fp, #-0x18]
    // 0x5e1b18: r0 = AllocateClosure()
    //     0x5e1b18: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e1b1c: str             x0, [SP]
    // 0x5e1b20: ldur            x1, [fp, #-0x10]
    // 0x5e1b24: ldur            x2, [fp, #-0x18]
    // 0x5e1b28: r4 = const [0, 0x3, 0x1, 0x2, onError, 0x2, null]
    //     0x5e1b28: add             x4, PP, #0x14, lsl #12  ; [pp+0x14a38] List(7) [0, 0x3, 0x1, 0x2, "onError", 0x2, Null]
    //     0x5e1b2c: ldr             x4, [x4, #0xa38]
    // 0x5e1b30: r0 = listen()
    //     0x5e1b30: bl              #0x87bcb8  ; [dart:async] _ForwardingStream::listen
    // 0x5e1b34: ldur            x1, [fp, #-8]
    // 0x5e1b38: StoreField: r1->field_43 = r0
    //     0x5e1b38: stur            w0, [x1, #0x43]
    //     0x5e1b3c: ldurb           w16, [x1, #-1]
    //     0x5e1b40: ldurb           w17, [x0, #-1]
    //     0x5e1b44: and             x16, x17, x16, lsr #2
    //     0x5e1b48: tst             x16, HEAP, lsr #32
    //     0x5e1b4c: b.eq            #0x5e1b54
    //     0x5e1b50: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e1b54: r0 = Null
    //     0x5e1b54: mov             x0, NULL
    // 0x5e1b58: LeaveFrame
    //     0x5e1b58: mov             SP, fp
    //     0x5e1b5c: ldp             fp, lr, [SP], #0x10
    // 0x5e1b60: ret
    //     0x5e1b60: ret             
    // 0x5e1b64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e1b64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e1b68: b               #0x5e1a94
  }
  [closure] Null <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x5e3200, size: 0x4c
    // 0x5e3200: EnterFrame
    //     0x5e3200: stp             fp, lr, [SP, #-0x10]!
    //     0x5e3204: mov             fp, SP
    // 0x5e3208: ldr             x0, [fp, #0x18]
    // 0x5e320c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5e320c: ldur            w1, [x0, #0x17]
    // 0x5e3210: DecompressPointer r1
    //     0x5e3210: add             x1, x1, HEAP, lsl #32
    // 0x5e3214: CheckStackOverflow
    //     0x5e3214: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e3218: cmp             SP, x16
    //     0x5e321c: b.ls            #0x5e3244
    // 0x5e3220: LoadField: r0 = r1->field_f
    //     0x5e3220: ldur            w0, [x1, #0xf]
    // 0x5e3224: DecompressPointer r0
    //     0x5e3224: add             x0, x0, HEAP, lsl #32
    // 0x5e3228: StoreField: r0->field_33 = rNULL
    //     0x5e3228: stur            NULL, [x0, #0x33]
    // 0x5e322c: mov             x1, x0
    // 0x5e3230: r0 = notifyListeners()
    //     0x5e3230: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e3234: r0 = Null
    //     0x5e3234: mov             x0, NULL
    // 0x5e3238: LeaveFrame
    //     0x5e3238: mov             SP, fp
    //     0x5e323c: ldp             fp, lr, [SP], #0x10
    // 0x5e3240: ret
    //     0x5e3240: ret             
    // 0x5e3244: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e3244: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e3248: b               #0x5e3220
  }
  [closure] Future<void> <anonymous closure>(dynamic, DatabaseEvent) async {
    // ** addr: 0x5e324c, size: 0x498
    // 0x5e324c: EnterFrame
    //     0x5e324c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e3250: mov             fp, SP
    // 0x5e3254: AllocStack(0xf0)
    //     0x5e3254: sub             SP, SP, #0xf0
    // 0x5e3258: SetupParameters(LocationTrackingProvider this /* r1 */, dynamic _ /* r2, fp-0xa8 */)
    //     0x5e3258: stur            NULL, [fp, #-8]
    //     0x5e325c: mov             x0, #0
    //     0x5e3260: add             x1, fp, w0, sxtw #2
    //     0x5e3264: ldr             x1, [x1, #0x18]
    //     0x5e3268: add             x2, fp, w0, sxtw #2
    //     0x5e326c: ldr             x2, [x2, #0x10]
    //     0x5e3270: stur            x2, [fp, #-0xa8]
    //     0x5e3274: ldur            w3, [x1, #0x17]
    //     0x5e3278: add             x3, x3, HEAP, lsl #32
    //     0x5e327c: stur            x3, [fp, #-0xa0]
    // 0x5e3280: CheckStackOverflow
    //     0x5e3280: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e3284: cmp             SP, x16
    //     0x5e3288: b.ls            #0x5e36dc
    // 0x5e328c: InitAsync() -> Future<void?>
    //     0x5e328c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e3290: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e3294: ldur            x1, [fp, #-0xa8]
    // 0x5e3298: r0 = snapshot()
    //     0x5e3298: bl              #0x5e4184  ; [package:firebase_database/firebase_database.dart] DatabaseEvent::snapshot
    // 0x5e329c: LoadField: r1 = r0->field_7
    //     0x5e329c: ldur            w1, [x0, #7]
    // 0x5e32a0: DecompressPointer r1
    //     0x5e32a0: add             x1, x1, HEAP, lsl #32
    // 0x5e32a4: r0 = value()
    //     0x5e32a4: bl              #0x5e4128  ; [package:firebase_database_platform_interface/src/platform_interface/platform_interface_data_snapshot.dart] DataSnapshotPlatform::value
    // 0x5e32a8: mov             x3, x0
    // 0x5e32ac: stur            x3, [fp, #-0xa8]
    // 0x5e32b0: cmp             w3, NULL
    // 0x5e32b4: b.eq            #0x5e36c0
    // 0x5e32b8: mov             x0, x3
    // 0x5e32bc: r2 = Null
    //     0x5e32bc: mov             x2, NULL
    // 0x5e32c0: r1 = Null
    //     0x5e32c0: mov             x1, NULL
    // 0x5e32c4: cmp             w0, NULL
    // 0x5e32c8: b.eq            #0x5e3360
    // 0x5e32cc: branchIfSmi(r0, 0x5e3360)
    //     0x5e32cc: tbz             w0, #0, #0x5e3360
    // 0x5e32d0: r3 = LoadClassIdInstr(r0)
    //     0x5e32d0: ldur            x3, [x0, #-1]
    //     0x5e32d4: ubfx            x3, x3, #0xc, #0x14
    // 0x5e32d8: r17 = 4626
    //     0x5e32d8: mov             x17, #0x1212
    // 0x5e32dc: cmp             x3, x17
    // 0x5e32e0: b.eq            #0x5e3368
    // 0x5e32e4: r4 = LoadClassIdInstr(r0)
    //     0x5e32e4: ldur            x4, [x0, #-1]
    //     0x5e32e8: ubfx            x4, x4, #0xc, #0x14
    // 0x5e32ec: ldr             x3, [THR, #0x670]  ; THR::isolate_group
    // 0x5e32f0: ldr             x3, [x3, #0x18]
    // 0x5e32f4: ldr             x3, [x3, x4, lsl #3]
    // 0x5e32f8: LoadField: r3 = r3->field_2b
    //     0x5e32f8: ldur            w3, [x3, #0x2b]
    // 0x5e32fc: DecompressPointer r3
    //     0x5e32fc: add             x3, x3, HEAP, lsl #32
    // 0x5e3300: cmp             w3, NULL
    // 0x5e3304: b.eq            #0x5e3360
    // 0x5e3308: LoadField: r3 = r3->field_f
    //     0x5e3308: ldur            w3, [x3, #0xf]
    // 0x5e330c: lsr             x3, x3, #3
    // 0x5e3310: r17 = 4626
    //     0x5e3310: mov             x17, #0x1212
    // 0x5e3314: cmp             x3, x17
    // 0x5e3318: b.eq            #0x5e3368
    // 0x5e331c: r3 = SubtypeTestCache
    //     0x5e331c: add             x3, PP, #0x27, lsl #12  ; [pp+0x27328] SubtypeTestCache
    //     0x5e3320: ldr             x3, [x3, #0x328]
    // 0x5e3324: r30 = Subtype1TestCacheStub
    //     0x5e3324: ldr             lr, [PP, #0x898]  ; [pp+0x898] Stub: Subtype1TestCache (0x3c2f34)
    // 0x5e3328: LoadField: r30 = r30->field_7
    //     0x5e3328: ldur            lr, [lr, #7]
    // 0x5e332c: blr             lr
    // 0x5e3330: cmp             w7, NULL
    // 0x5e3334: b.eq            #0x5e3340
    // 0x5e3338: tbnz            w7, #4, #0x5e3360
    // 0x5e333c: b               #0x5e3368
    // 0x5e3340: r8 = Map
    //     0x5e3340: add             x8, PP, #0x27, lsl #12  ; [pp+0x27330] Type: Map
    //     0x5e3344: ldr             x8, [x8, #0x330]
    // 0x5e3348: r3 = SubtypeTestCache
    //     0x5e3348: add             x3, PP, #0x27, lsl #12  ; [pp+0x27338] SubtypeTestCache
    //     0x5e334c: ldr             x3, [x3, #0x338]
    // 0x5e3350: r30 = InstanceOfStub
    //     0x5e3350: ldr             lr, [PP, #0x758]  ; [pp+0x758] Stub: InstanceOf (0x3b127c)
    // 0x5e3354: LoadField: r30 = r30->field_7
    //     0x5e3354: ldur            lr, [lr, #7]
    // 0x5e3358: blr             lr
    // 0x5e335c: b               #0x5e336c
    // 0x5e3360: r0 = false
    //     0x5e3360: add             x0, NULL, #0x30  ; false
    // 0x5e3364: b               #0x5e336c
    // 0x5e3368: r0 = true
    //     0x5e3368: add             x0, NULL, #0x20  ; true
    // 0x5e336c: tbnz            w0, #4, #0x5e36b8
    // 0x5e3370: ldur            x3, [fp, #-0xa0]
    // 0x5e3374: ldur            x0, [fp, #-0xa8]
    // 0x5e3378: LoadField: r1 = r3->field_f
    //     0x5e3378: ldur            w1, [x3, #0xf]
    // 0x5e337c: DecompressPointer r1
    //     0x5e337c: add             x1, x1, HEAP, lsl #32
    // 0x5e3380: LoadField: r2 = r3->field_13
    //     0x5e3380: ldur            w2, [x3, #0x13]
    // 0x5e3384: DecompressPointer r2
    //     0x5e3384: add             x2, x2, HEAP, lsl #32
    // 0x5e3388: r0 = _getUserInfo()
    //     0x5e3388: bl              #0x5e3784  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::_getUserInfo
    // 0x5e338c: mov             x1, x0
    // 0x5e3390: stur            x1, [fp, #-0xb0]
    // 0x5e3394: r0 = Await()
    //     0x5e3394: bl              #0x3dd188  ; AwaitStub
    // 0x5e3398: mov             x4, x0
    // 0x5e339c: ldur            x3, [fp, #-0xa0]
    // 0x5e33a0: stur            x4, [fp, #-0xc8]
    // 0x5e33a4: LoadField: r5 = r3->field_f
    //     0x5e33a4: ldur            w5, [x3, #0xf]
    // 0x5e33a8: DecompressPointer r5
    //     0x5e33a8: add             x5, x5, HEAP, lsl #32
    // 0x5e33ac: stur            x5, [fp, #-0xc0]
    // 0x5e33b0: LoadField: r6 = r3->field_13
    //     0x5e33b0: ldur            w6, [x3, #0x13]
    // 0x5e33b4: DecompressPointer r6
    //     0x5e33b4: add             x6, x6, HEAP, lsl #32
    // 0x5e33b8: stur            x6, [fp, #-0xb8]
    // 0x5e33bc: LoadField: r7 = r4->field_13
    //     0x5e33bc: ldur            w7, [x4, #0x13]
    // 0x5e33c0: DecompressPointer r7
    //     0x5e33c0: add             x7, x7, HEAP, lsl #32
    // 0x5e33c4: ldur            x8, [fp, #-0xa8]
    // 0x5e33c8: stur            x7, [fp, #-0xb0]
    // 0x5e33cc: r0 = LoadClassIdInstr(r8)
    //     0x5e33cc: ldur            x0, [x8, #-1]
    //     0x5e33d0: ubfx            x0, x0, #0xc, #0x14
    // 0x5e33d4: mov             x1, x8
    // 0x5e33d8: r2 = "latitude"
    //     0x5e33d8: ldr             x2, [PP, #0xb8]  ; [pp+0xb8] "latitude"
    // 0x5e33dc: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e33dc: add             lr, x0, #0x36e
    //     0x5e33e0: ldr             lr, [x21, lr, lsl #3]
    //     0x5e33e4: blr             lr
    // 0x5e33e8: mov             x3, x0
    // 0x5e33ec: r2 = Null
    //     0x5e33ec: mov             x2, NULL
    // 0x5e33f0: r1 = Null
    //     0x5e33f0: mov             x1, NULL
    // 0x5e33f4: stur            x3, [fp, #-0xd0]
    // 0x5e33f8: branchIfSmi(r0, 0x5e3424)
    //     0x5e33f8: tbz             w0, #0, #0x5e3424
    // 0x5e33fc: r4 = LoadClassIdInstr(r0)
    //     0x5e33fc: ldur            x4, [x0, #-1]
    //     0x5e3400: ubfx            x4, x4, #0xc, #0x14
    // 0x5e3404: sub             x4, x4, #0x3c
    // 0x5e3408: cmp             x4, #2
    // 0x5e340c: b.ls            #0x5e3424
    // 0x5e3410: r8 = num?
    //     0x5e3410: add             x8, PP, #0xe, lsl #12  ; [pp+0xecb8] Type: num?
    //     0x5e3414: ldr             x8, [x8, #0xcb8]
    // 0x5e3418: r3 = Null
    //     0x5e3418: add             x3, PP, #0x27, lsl #12  ; [pp+0x27340] Null
    //     0x5e341c: ldr             x3, [x3, #0x340]
    // 0x5e3420: r0 = DefaultNullableTypeTest()
    //     0x5e3420: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5e3424: ldur            x1, [fp, #-0xd0]
    // 0x5e3428: cmp             w1, NULL
    // 0x5e342c: b.ne            #0x5e3438
    // 0x5e3430: r0 = Null
    //     0x5e3430: mov             x0, NULL
    // 0x5e3434: b               #0x5e3458
    // 0x5e3438: r0 = 60
    //     0x5e3438: mov             x0, #0x3c
    // 0x5e343c: branchIfSmi(r1, 0x5e3448)
    //     0x5e343c: tbz             w1, #0, #0x5e3448
    // 0x5e3440: r0 = LoadClassIdInstr(r1)
    //     0x5e3440: ldur            x0, [x1, #-1]
    //     0x5e3444: ubfx            x0, x0, #0xc, #0x14
    // 0x5e3448: str             x1, [SP]
    // 0x5e344c: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e344c: sub             lr, x0, #1, lsl #12
    //     0x5e3450: ldr             lr, [x21, lr, lsl #3]
    //     0x5e3454: blr             lr
    // 0x5e3458: cmp             w0, NULL
    // 0x5e345c: b.ne            #0x5e3468
    // 0x5e3460: d0 = 0.000000
    //     0x5e3460: eor             v0.16b, v0.16b, v0.16b
    // 0x5e3464: b               #0x5e346c
    // 0x5e3468: LoadField: d0 = r0->field_7
    //     0x5e3468: ldur            d0, [x0, #7]
    // 0x5e346c: ldur            x3, [fp, #-0xa8]
    // 0x5e3470: stur            d0, [fp, #-0xe0]
    // 0x5e3474: r0 = LoadClassIdInstr(r3)
    //     0x5e3474: ldur            x0, [x3, #-1]
    //     0x5e3478: ubfx            x0, x0, #0xc, #0x14
    // 0x5e347c: mov             x1, x3
    // 0x5e3480: r2 = "longitude"
    //     0x5e3480: ldr             x2, [PP, #0xc0]  ; [pp+0xc0] "longitude"
    // 0x5e3484: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e3484: add             lr, x0, #0x36e
    //     0x5e3488: ldr             lr, [x21, lr, lsl #3]
    //     0x5e348c: blr             lr
    // 0x5e3490: mov             x3, x0
    // 0x5e3494: r2 = Null
    //     0x5e3494: mov             x2, NULL
    // 0x5e3498: r1 = Null
    //     0x5e3498: mov             x1, NULL
    // 0x5e349c: stur            x3, [fp, #-0xd0]
    // 0x5e34a0: branchIfSmi(r0, 0x5e34cc)
    //     0x5e34a0: tbz             w0, #0, #0x5e34cc
    // 0x5e34a4: r4 = LoadClassIdInstr(r0)
    //     0x5e34a4: ldur            x4, [x0, #-1]
    //     0x5e34a8: ubfx            x4, x4, #0xc, #0x14
    // 0x5e34ac: sub             x4, x4, #0x3c
    // 0x5e34b0: cmp             x4, #2
    // 0x5e34b4: b.ls            #0x5e34cc
    // 0x5e34b8: r8 = num?
    //     0x5e34b8: add             x8, PP, #0xe, lsl #12  ; [pp+0xecb8] Type: num?
    //     0x5e34bc: ldr             x8, [x8, #0xcb8]
    // 0x5e34c0: r3 = Null
    //     0x5e34c0: add             x3, PP, #0x27, lsl #12  ; [pp+0x27350] Null
    //     0x5e34c4: ldr             x3, [x3, #0x350]
    // 0x5e34c8: r0 = DefaultNullableTypeTest()
    //     0x5e34c8: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x5e34cc: ldur            x1, [fp, #-0xd0]
    // 0x5e34d0: cmp             w1, NULL
    // 0x5e34d4: b.ne            #0x5e34e0
    // 0x5e34d8: r0 = Null
    //     0x5e34d8: mov             x0, NULL
    // 0x5e34dc: b               #0x5e3500
    // 0x5e34e0: r0 = 60
    //     0x5e34e0: mov             x0, #0x3c
    // 0x5e34e4: branchIfSmi(r1, 0x5e34f0)
    //     0x5e34e4: tbz             w1, #0, #0x5e34f0
    // 0x5e34e8: r0 = LoadClassIdInstr(r1)
    //     0x5e34e8: ldur            x0, [x1, #-1]
    //     0x5e34ec: ubfx            x0, x0, #0xc, #0x14
    // 0x5e34f0: str             x1, [SP]
    // 0x5e34f4: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e34f4: sub             lr, x0, #1, lsl #12
    //     0x5e34f8: ldr             lr, [x21, lr, lsl #3]
    //     0x5e34fc: blr             lr
    // 0x5e3500: cmp             w0, NULL
    // 0x5e3504: b.ne            #0x5e3510
    // 0x5e3508: d0 = 0.000000
    //     0x5e3508: eor             v0.16b, v0.16b, v0.16b
    // 0x5e350c: b               #0x5e3514
    // 0x5e3510: LoadField: d0 = r0->field_7
    //     0x5e3510: ldur            d0, [x0, #7]
    // 0x5e3514: ldur            x3, [fp, #-0xa8]
    // 0x5e3518: stur            d0, [fp, #-0xe8]
    // 0x5e351c: r0 = LoadClassIdInstr(r3)
    //     0x5e351c: ldur            x0, [x3, #-1]
    //     0x5e3520: ubfx            x0, x0, #0xc, #0x14
    // 0x5e3524: mov             x1, x3
    // 0x5e3528: r2 = "timestamp"
    //     0x5e3528: add             x2, PP, #0xb, lsl #12  ; [pp+0xbae0] "timestamp"
    //     0x5e352c: ldr             x2, [x2, #0xae0]
    // 0x5e3530: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e3530: add             lr, x0, #0x36e
    //     0x5e3534: ldr             lr, [x21, lr, lsl #3]
    //     0x5e3538: blr             lr
    // 0x5e353c: cmp             w0, NULL
    // 0x5e3540: b.eq            #0x5e35e0
    // 0x5e3544: ldur            x1, [fp, #-0xa8]
    // 0x5e3548: r0 = DateTime()
    //     0x5e3548: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e354c: mov             x4, x0
    // 0x5e3550: ldur            x3, [fp, #-0xa8]
    // 0x5e3554: stur            x4, [fp, #-0xd0]
    // 0x5e3558: r0 = LoadClassIdInstr(r3)
    //     0x5e3558: ldur            x0, [x3, #-1]
    //     0x5e355c: ubfx            x0, x0, #0xc, #0x14
    // 0x5e3560: mov             x1, x3
    // 0x5e3564: r2 = "timestamp"
    //     0x5e3564: add             x2, PP, #0xb, lsl #12  ; [pp+0xbae0] "timestamp"
    //     0x5e3568: ldr             x2, [x2, #0xae0]
    // 0x5e356c: r0 = GDT[cid_x0 + 0x36e]()
    //     0x5e356c: add             lr, x0, #0x36e
    //     0x5e3570: ldr             lr, [x21, lr, lsl #3]
    //     0x5e3574: blr             lr
    // 0x5e3578: mov             x3, x0
    // 0x5e357c: r2 = Null
    //     0x5e357c: mov             x2, NULL
    // 0x5e3580: r1 = Null
    //     0x5e3580: mov             x1, NULL
    // 0x5e3584: stur            x3, [fp, #-0xd8]
    // 0x5e3588: branchIfSmi(r0, 0x5e35b0)
    //     0x5e3588: tbz             w0, #0, #0x5e35b0
    // 0x5e358c: r4 = LoadClassIdInstr(r0)
    //     0x5e358c: ldur            x4, [x0, #-1]
    //     0x5e3590: ubfx            x4, x4, #0xc, #0x14
    // 0x5e3594: sub             x4, x4, #0x3c
    // 0x5e3598: cmp             x4, #1
    // 0x5e359c: b.ls            #0x5e35b0
    // 0x5e35a0: r8 = int
    //     0x5e35a0: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x5e35a4: r3 = Null
    //     0x5e35a4: add             x3, PP, #0x27, lsl #12  ; [pp+0x27360] Null
    //     0x5e35a8: ldr             x3, [x3, #0x360]
    // 0x5e35ac: r0 = int()
    //     0x5e35ac: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x5e35b0: ldur            x0, [fp, #-0xd8]
    // 0x5e35b4: r1 = LoadInt32Instr(r0)
    //     0x5e35b4: sbfx            x1, x0, #1, #0x1f
    //     0x5e35b8: tbz             w0, #0, #0x5e35c0
    //     0x5e35bc: ldur            x1, [x0, #7]
    // 0x5e35c0: r0 = _validateMilliseconds()
    //     0x5e35c0: bl              #0x5e3748  ; [dart:core] DateTime::_validateMilliseconds
    // 0x5e35c4: r16 = 1000
    //     0x5e35c4: mov             x16, #0x3e8
    // 0x5e35c8: mul             x2, x0, x16
    // 0x5e35cc: ldur            x1, [fp, #-0xd0]
    // 0x5e35d0: r3 = false
    //     0x5e35d0: add             x3, NULL, #0x30  ; false
    // 0x5e35d4: r0 = DateTime._withValue()
    //     0x5e35d4: bl              #0x4e7190  ; [dart:core] DateTime::DateTime._withValue
    // 0x5e35d8: ldur            x5, [fp, #-0xd0]
    // 0x5e35dc: b               #0x5e3610
    // 0x5e35e0: r0 = DateTime()
    //     0x5e35e0: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5e35e4: mov             x1, x0
    // 0x5e35e8: r0 = false
    //     0x5e35e8: add             x0, NULL, #0x30  ; false
    // 0x5e35ec: stur            x1, [fp, #-0xa8]
    // 0x5e35f0: StoreField: r1->field_7 = r0
    //     0x5e35f0: stur            w0, [x1, #7]
    // 0x5e35f4: r0 = _getCurrentMicros()
    //     0x5e35f4: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5e35f8: r1 = LoadInt32Instr(r0)
    //     0x5e35f8: sbfx            x1, x0, #1, #0x1f
    //     0x5e35fc: tbz             w0, #0, #0x5e3604
    //     0x5e3600: ldur            x1, [x0, #7]
    // 0x5e3604: ldur            x0, [fp, #-0xa8]
    // 0x5e3608: StoreField: r0->field_b = r1
    //     0x5e3608: stur            x1, [x0, #0xb]
    // 0x5e360c: mov             x5, x0
    // 0x5e3610: ldur            x0, [fp, #-0xa0]
    // 0x5e3614: ldur            x1, [fp, #-0xc8]
    // 0x5e3618: ldur            x2, [fp, #-0xc0]
    // 0x5e361c: ldur            x3, [fp, #-0xb8]
    // 0x5e3620: ldur            x4, [fp, #-0xb0]
    // 0x5e3624: ldur            d1, [fp, #-0xe0]
    // 0x5e3628: ldur            d0, [fp, #-0xe8]
    // 0x5e362c: stur            x5, [fp, #-0xd0]
    // 0x5e3630: LoadField: r6 = r1->field_f
    //     0x5e3630: ldur            w6, [x1, #0xf]
    // 0x5e3634: DecompressPointer r6
    //     0x5e3634: add             x6, x6, HEAP, lsl #32
    // 0x5e3638: stur            x6, [fp, #-0xa8]
    // 0x5e363c: r0 = UserLocationModel()
    //     0x5e363c: bl              #0x5e371c  ; AllocateUserLocationModelStub -> UserLocationModel (size=0x24)
    // 0x5e3640: ldur            x2, [fp, #-0xb8]
    // 0x5e3644: StoreField: r0->field_7 = r2
    //     0x5e3644: stur            w2, [x0, #7]
    // 0x5e3648: ldur            x3, [fp, #-0xb0]
    // 0x5e364c: StoreField: r0->field_b = r3
    //     0x5e364c: stur            w3, [x0, #0xb]
    // 0x5e3650: ldur            d0, [fp, #-0xe0]
    // 0x5e3654: StoreField: r0->field_f = d0
    //     0x5e3654: stur            d0, [x0, #0xf]
    // 0x5e3658: ldur            d1, [fp, #-0xe8]
    // 0x5e365c: ArrayStore: r0[0] = d1  ; List_8
    //     0x5e365c: stur            d1, [x0, #0x17]
    // 0x5e3660: ldur            x4, [fp, #-0xd0]
    // 0x5e3664: StoreField: r0->field_1f = r4
    //     0x5e3664: stur            w4, [x0, #0x1f]
    // 0x5e3668: ldur            x1, [fp, #-0xc0]
    // 0x5e366c: StoreField: r1->field_33 = r0
    //     0x5e366c: stur            w0, [x1, #0x33]
    //     0x5e3670: ldurb           w16, [x1, #-1]
    //     0x5e3674: ldurb           w17, [x0, #-1]
    //     0x5e3678: and             x16, x17, x16, lsr #2
    //     0x5e367c: tst             x16, HEAP, lsr #32
    //     0x5e3680: b.eq            #0x5e3688
    //     0x5e3684: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e3688: ldur            x0, [fp, #-0xa0]
    // 0x5e368c: LoadField: r1 = r0->field_f
    //     0x5e368c: ldur            w1, [x0, #0xf]
    // 0x5e3690: DecompressPointer r1
    //     0x5e3690: add             x1, x1, HEAP, lsl #32
    // 0x5e3694: r0 = notifyListeners()
    //     0x5e3694: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e3698: b               #0x5e36d4
    // 0x5e369c: sub             SP, fp, #0xf0
    // 0x5e36a0: ldur            x2, [fp, #-0xa0]
    // 0x5e36a4: LoadField: r1 = r2->field_f
    //     0x5e36a4: ldur            w1, [x2, #0xf]
    // 0x5e36a8: DecompressPointer r1
    //     0x5e36a8: add             x1, x1, HEAP, lsl #32
    // 0x5e36ac: StoreField: r1->field_33 = rNULL
    //     0x5e36ac: stur            NULL, [x1, #0x33]
    // 0x5e36b0: r0 = notifyListeners()
    //     0x5e36b0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e36b4: b               #0x5e36d4
    // 0x5e36b8: ldur            x2, [fp, #-0xa0]
    // 0x5e36bc: b               #0x5e36c4
    // 0x5e36c0: ldur            x2, [fp, #-0xa0]
    // 0x5e36c4: LoadField: r1 = r2->field_f
    //     0x5e36c4: ldur            w1, [x2, #0xf]
    // 0x5e36c8: DecompressPointer r1
    //     0x5e36c8: add             x1, x1, HEAP, lsl #32
    // 0x5e36cc: StoreField: r1->field_33 = rNULL
    //     0x5e36cc: stur            NULL, [x1, #0x33]
    // 0x5e36d0: r0 = notifyListeners()
    //     0x5e36d0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e36d4: r0 = Null
    //     0x5e36d4: mov             x0, NULL
    // 0x5e36d8: r0 = ReturnAsyncNotFuture()
    //     0x5e36d8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e36dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e36dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e36e0: b               #0x5e328c
  }
  _ _getUserInfo(/* No info */) async {
    // ** addr: 0x5e3784, size: 0x3a4
    // 0x5e3784: EnterFrame
    //     0x5e3784: stp             fp, lr, [SP, #-0x10]!
    //     0x5e3788: mov             fp, SP
    // 0x5e378c: AllocStack(0x38)
    //     0x5e378c: sub             SP, SP, #0x38
    // 0x5e3790: SetupParameters(LocationTrackingProvider this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x5e3790: stur            NULL, [fp, #-8]
    //     0x5e3794: stur            x1, [fp, #-0x10]
    //     0x5e3798: stur            x2, [fp, #-0x18]
    // 0x5e379c: CheckStackOverflow
    //     0x5e379c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e37a0: cmp             SP, x16
    //     0x5e37a4: b.ls            #0x5e3b1c
    // 0x5e37a8: InitAsync() -> Future<({String? agencyId, String userName})>
    //     0x5e37a8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14b28] TypeArguments: <({String? agencyId, String userName})>
    //     0x5e37ac: ldr             x0, [x0, #0xb28]
    //     0x5e37b0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e37b4: ldur            x0, [fp, #-0x10]
    // 0x5e37b8: LoadField: r3 = r0->field_2f
    //     0x5e37b8: ldur            w3, [x0, #0x2f]
    // 0x5e37bc: DecompressPointer r3
    //     0x5e37bc: add             x3, x3, HEAP, lsl #32
    // 0x5e37c0: mov             x1, x3
    // 0x5e37c4: ldur            x2, [fp, #-0x18]
    // 0x5e37c8: stur            x3, [fp, #-0x20]
    // 0x5e37cc: r0 = containsKey()
    //     0x5e37cc: bl              #0x8bae24  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::containsKey
    // 0x5e37d0: tbnz            w0, #4, #0x5e3814
    // 0x5e37d4: ldur            x0, [fp, #-0x20]
    // 0x5e37d8: mov             x1, x0
    // 0x5e37dc: ldur            x2, [fp, #-0x18]
    // 0x5e37e0: r0 = _getValueOrData()
    //     0x5e37e0: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e37e4: mov             x1, x0
    // 0x5e37e8: ldur            x0, [fp, #-0x20]
    // 0x5e37ec: LoadField: r2 = r0->field_f
    //     0x5e37ec: ldur            w2, [x0, #0xf]
    // 0x5e37f0: DecompressPointer r2
    //     0x5e37f0: add             x2, x2, HEAP, lsl #32
    // 0x5e37f4: cmp             w2, w1
    // 0x5e37f8: b.ne            #0x5e3804
    // 0x5e37fc: r0 = Null
    //     0x5e37fc: mov             x0, NULL
    // 0x5e3800: b               #0x5e3808
    // 0x5e3804: mov             x0, x1
    // 0x5e3808: cmp             w0, NULL
    // 0x5e380c: b.eq            #0x5e3b24
    // 0x5e3810: r0 = ReturnAsyncNotFuture()
    //     0x5e3810: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e3814: ldur            x3, [fp, #-0x10]
    // 0x5e3818: ldur            x0, [fp, #-0x20]
    // 0x5e381c: LoadField: r1 = r3->field_27
    //     0x5e381c: ldur            w1, [x3, #0x27]
    // 0x5e3820: DecompressPointer r1
    //     0x5e3820: add             x1, x1, HEAP, lsl #32
    // 0x5e3824: r2 = "users"
    //     0x5e3824: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x5e3828: ldr             x2, [x2, #0x808]
    // 0x5e382c: r0 = collection()
    //     0x5e382c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x5e3830: ldur            x16, [fp, #-0x18]
    // 0x5e3834: str             x16, [SP]
    // 0x5e3838: mov             x1, x0
    // 0x5e383c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x5e383c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x5e3840: r0 = doc()
    //     0x5e3840: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x5e3844: mov             x1, x0
    // 0x5e3848: r0 = get()
    //     0x5e3848: bl              #0x5e3b28  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::get
    // 0x5e384c: mov             x1, x0
    // 0x5e3850: stur            x1, [fp, #-0x28]
    // 0x5e3854: r0 = Await()
    //     0x5e3854: bl              #0x3dd188  ; AwaitStub
    // 0x5e3858: mov             x2, x0
    // 0x5e385c: stur            x2, [fp, #-0x10]
    // 0x5e3860: r0 = LoadClassIdInstr(r2)
    //     0x5e3860: ldur            x0, [x2, #-1]
    //     0x5e3864: ubfx            x0, x0, #0xc, #0x14
    // 0x5e3868: mov             x1, x2
    // 0x5e386c: r0 = GDT[cid_x0 + -0x1000]()
    //     0x5e386c: sub             lr, x0, #1, lsl #12
    //     0x5e3870: ldr             lr, [x21, lr, lsl #3]
    //     0x5e3874: blr             lr
    // 0x5e3878: tbnz            w0, #4, #0x5e3b00
    // 0x5e387c: ldur            x1, [fp, #-0x10]
    // 0x5e3880: r0 = LoadClassIdInstr(r1)
    //     0x5e3880: ldur            x0, [x1, #-1]
    //     0x5e3884: ubfx            x0, x0, #0xc, #0x14
    // 0x5e3888: r0 = GDT[cid_x0 + -0xffe]()
    //     0x5e3888: sub             lr, x0, #0xffe
    //     0x5e388c: ldr             lr, [x21, lr, lsl #3]
    //     0x5e3890: blr             lr
    // 0x5e3894: stur            x0, [fp, #-0x10]
    // 0x5e3898: cmp             w0, NULL
    // 0x5e389c: b.ne            #0x5e38ac
    // 0x5e38a0: mov             x3, x0
    // 0x5e38a4: r4 = Null
    //     0x5e38a4: mov             x4, NULL
    // 0x5e38a8: b               #0x5e38d8
    // 0x5e38ac: mov             x1, x0
    // 0x5e38b0: r2 = "user_name"
    //     0x5e38b0: add             x2, PP, #0x14, lsl #12  ; [pp+0x14b30] "user_name"
    //     0x5e38b4: ldr             x2, [x2, #0xb30]
    // 0x5e38b8: r0 = _getValueOrData()
    //     0x5e38b8: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e38bc: ldur            x3, [fp, #-0x10]
    // 0x5e38c0: LoadField: r1 = r3->field_f
    //     0x5e38c0: ldur            w1, [x3, #0xf]
    // 0x5e38c4: DecompressPointer r1
    //     0x5e38c4: add             x1, x1, HEAP, lsl #32
    // 0x5e38c8: cmp             w1, w0
    // 0x5e38cc: b.ne            #0x5e38d4
    // 0x5e38d0: r0 = Null
    //     0x5e38d0: mov             x0, NULL
    // 0x5e38d4: mov             x4, x0
    // 0x5e38d8: mov             x0, x4
    // 0x5e38dc: stur            x4, [fp, #-0x28]
    // 0x5e38e0: r2 = Null
    //     0x5e38e0: mov             x2, NULL
    // 0x5e38e4: r1 = Null
    //     0x5e38e4: mov             x1, NULL
    // 0x5e38e8: r4 = 60
    //     0x5e38e8: mov             x4, #0x3c
    // 0x5e38ec: branchIfSmi(r0, 0x5e38f8)
    //     0x5e38ec: tbz             w0, #0, #0x5e38f8
    // 0x5e38f0: r4 = LoadClassIdInstr(r0)
    //     0x5e38f0: ldur            x4, [x0, #-1]
    //     0x5e38f4: ubfx            x4, x4, #0xc, #0x14
    // 0x5e38f8: sub             x4, x4, #0x5e
    // 0x5e38fc: cmp             x4, #1
    // 0x5e3900: b.ls            #0x5e3914
    // 0x5e3904: r8 = String?
    //     0x5e3904: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5e3908: r3 = Null
    //     0x5e3908: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b38] Null
    //     0x5e390c: ldr             x3, [x3, #0xb38]
    // 0x5e3910: r0 = String?()
    //     0x5e3910: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5e3914: ldur            x0, [fp, #-0x28]
    // 0x5e3918: cmp             w0, NULL
    // 0x5e391c: b.ne            #0x5e39a4
    // 0x5e3920: ldur            x0, [fp, #-0x10]
    // 0x5e3924: cmp             w0, NULL
    // 0x5e3928: b.ne            #0x5e3938
    // 0x5e392c: mov             x3, x0
    // 0x5e3930: r4 = Null
    //     0x5e3930: mov             x4, NULL
    // 0x5e3934: b               #0x5e3964
    // 0x5e3938: mov             x1, x0
    // 0x5e393c: r2 = "userName"
    //     0x5e393c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14b48] "userName"
    //     0x5e3940: ldr             x2, [x2, #0xb48]
    // 0x5e3944: r0 = _getValueOrData()
    //     0x5e3944: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e3948: ldur            x3, [fp, #-0x10]
    // 0x5e394c: LoadField: r1 = r3->field_f
    //     0x5e394c: ldur            w1, [x3, #0xf]
    // 0x5e3950: DecompressPointer r1
    //     0x5e3950: add             x1, x1, HEAP, lsl #32
    // 0x5e3954: cmp             w1, w0
    // 0x5e3958: b.ne            #0x5e3960
    // 0x5e395c: r0 = Null
    //     0x5e395c: mov             x0, NULL
    // 0x5e3960: mov             x4, x0
    // 0x5e3964: mov             x0, x4
    // 0x5e3968: stur            x4, [fp, #-0x30]
    // 0x5e396c: r2 = Null
    //     0x5e396c: mov             x2, NULL
    // 0x5e3970: r1 = Null
    //     0x5e3970: mov             x1, NULL
    // 0x5e3974: r4 = 60
    //     0x5e3974: mov             x4, #0x3c
    // 0x5e3978: branchIfSmi(r0, 0x5e3984)
    //     0x5e3978: tbz             w0, #0, #0x5e3984
    // 0x5e397c: r4 = LoadClassIdInstr(r0)
    //     0x5e397c: ldur            x4, [x0, #-1]
    //     0x5e3980: ubfx            x4, x4, #0xc, #0x14
    // 0x5e3984: sub             x4, x4, #0x5e
    // 0x5e3988: cmp             x4, #1
    // 0x5e398c: b.ls            #0x5e39a0
    // 0x5e3990: r8 = String?
    //     0x5e3990: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5e3994: r3 = Null
    //     0x5e3994: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b50] Null
    //     0x5e3998: ldr             x3, [x3, #0xb50]
    // 0x5e399c: r0 = String?()
    //     0x5e399c: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5e39a0: ldur            x0, [fp, #-0x30]
    // 0x5e39a4: cmp             w0, NULL
    // 0x5e39a8: b.ne            #0x5e3a2c
    // 0x5e39ac: ldur            x0, [fp, #-0x10]
    // 0x5e39b0: cmp             w0, NULL
    // 0x5e39b4: b.ne            #0x5e39c4
    // 0x5e39b8: mov             x3, x0
    // 0x5e39bc: r4 = Null
    //     0x5e39bc: mov             x4, NULL
    // 0x5e39c0: b               #0x5e39ec
    // 0x5e39c4: mov             x1, x0
    // 0x5e39c8: r2 = "name"
    //     0x5e39c8: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x5e39cc: r0 = _getValueOrData()
    //     0x5e39cc: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e39d0: ldur            x3, [fp, #-0x10]
    // 0x5e39d4: LoadField: r1 = r3->field_f
    //     0x5e39d4: ldur            w1, [x3, #0xf]
    // 0x5e39d8: DecompressPointer r1
    //     0x5e39d8: add             x1, x1, HEAP, lsl #32
    // 0x5e39dc: cmp             w1, w0
    // 0x5e39e0: b.ne            #0x5e39e8
    // 0x5e39e4: r0 = Null
    //     0x5e39e4: mov             x0, NULL
    // 0x5e39e8: mov             x4, x0
    // 0x5e39ec: mov             x0, x4
    // 0x5e39f0: stur            x4, [fp, #-0x28]
    // 0x5e39f4: r2 = Null
    //     0x5e39f4: mov             x2, NULL
    // 0x5e39f8: r1 = Null
    //     0x5e39f8: mov             x1, NULL
    // 0x5e39fc: r4 = 60
    //     0x5e39fc: mov             x4, #0x3c
    // 0x5e3a00: branchIfSmi(r0, 0x5e3a0c)
    //     0x5e3a00: tbz             w0, #0, #0x5e3a0c
    // 0x5e3a04: r4 = LoadClassIdInstr(r0)
    //     0x5e3a04: ldur            x4, [x0, #-1]
    //     0x5e3a08: ubfx            x4, x4, #0xc, #0x14
    // 0x5e3a0c: sub             x4, x4, #0x5e
    // 0x5e3a10: cmp             x4, #1
    // 0x5e3a14: b.ls            #0x5e3a28
    // 0x5e3a18: r8 = String?
    //     0x5e3a18: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5e3a1c: r3 = Null
    //     0x5e3a1c: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b60] Null
    //     0x5e3a20: ldr             x3, [x3, #0xb60]
    // 0x5e3a24: r0 = String?()
    //     0x5e3a24: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5e3a28: ldur            x0, [fp, #-0x28]
    // 0x5e3a2c: cmp             w0, NULL
    // 0x5e3a30: b.ne            #0x5e3a40
    // 0x5e3a34: r3 = "Bilinmeyen"
    //     0x5e3a34: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b70] "Bilinmeyen"
    //     0x5e3a38: ldr             x3, [x3, #0xb70]
    // 0x5e3a3c: b               #0x5e3a44
    // 0x5e3a40: mov             x3, x0
    // 0x5e3a44: ldur            x0, [fp, #-0x10]
    // 0x5e3a48: stur            x3, [fp, #-0x28]
    // 0x5e3a4c: cmp             w0, NULL
    // 0x5e3a50: b.ne            #0x5e3a5c
    // 0x5e3a54: r3 = Null
    //     0x5e3a54: mov             x3, NULL
    // 0x5e3a58: b               #0x5e3a94
    // 0x5e3a5c: mov             x1, x0
    // 0x5e3a60: r2 = "agency_id"
    //     0x5e3a60: add             x2, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x5e3a64: ldr             x2, [x2, #0x40]
    // 0x5e3a68: r0 = _getValueOrData()
    //     0x5e3a68: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5e3a6c: mov             x1, x0
    // 0x5e3a70: ldur            x0, [fp, #-0x10]
    // 0x5e3a74: LoadField: r2 = r0->field_f
    //     0x5e3a74: ldur            w2, [x0, #0xf]
    // 0x5e3a78: DecompressPointer r2
    //     0x5e3a78: add             x2, x2, HEAP, lsl #32
    // 0x5e3a7c: cmp             w2, w1
    // 0x5e3a80: b.ne            #0x5e3a8c
    // 0x5e3a84: r0 = Null
    //     0x5e3a84: mov             x0, NULL
    // 0x5e3a88: b               #0x5e3a90
    // 0x5e3a8c: mov             x0, x1
    // 0x5e3a90: mov             x3, x0
    // 0x5e3a94: mov             x0, x3
    // 0x5e3a98: stur            x3, [fp, #-0x10]
    // 0x5e3a9c: r2 = Null
    //     0x5e3a9c: mov             x2, NULL
    // 0x5e3aa0: r1 = Null
    //     0x5e3aa0: mov             x1, NULL
    // 0x5e3aa4: r4 = 60
    //     0x5e3aa4: mov             x4, #0x3c
    // 0x5e3aa8: branchIfSmi(r0, 0x5e3ab4)
    //     0x5e3aa8: tbz             w0, #0, #0x5e3ab4
    // 0x5e3aac: r4 = LoadClassIdInstr(r0)
    //     0x5e3aac: ldur            x4, [x0, #-1]
    //     0x5e3ab0: ubfx            x4, x4, #0xc, #0x14
    // 0x5e3ab4: sub             x4, x4, #0x5e
    // 0x5e3ab8: cmp             x4, #1
    // 0x5e3abc: b.ls            #0x5e3ad0
    // 0x5e3ac0: r8 = String?
    //     0x5e3ac0: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x5e3ac4: r3 = Null
    //     0x5e3ac4: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b78] Null
    //     0x5e3ac8: ldr             x3, [x3, #0xb78]
    // 0x5e3acc: r0 = String?()
    //     0x5e3acc: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x5e3ad0: ldur            x2, [fp, #-0x10]
    // 0x5e3ad4: ldur            x3, [fp, #-0x28]
    // 0x5e3ad8: r1 = 1048580
    //     0x5e3ad8: mov             x1, #4
    //     0x5e3adc: movk            x1, #0x10, lsl #16
    // 0x5e3ae0: r0 = AllocateRecord2Named()
    //     0x5e3ae0: bl              #0x926cac  ; AllocateRecord2NamedStub
    // 0x5e3ae4: ldur            x1, [fp, #-0x20]
    // 0x5e3ae8: ldur            x2, [fp, #-0x18]
    // 0x5e3aec: mov             x3, x0
    // 0x5e3af0: stur            x0, [fp, #-0x10]
    // 0x5e3af4: r0 = []=()
    //     0x5e3af4: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x5e3af8: ldur            x0, [fp, #-0x10]
    // 0x5e3afc: r0 = ReturnAsyncNotFuture()
    //     0x5e3afc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e3b00: r2 = Null
    //     0x5e3b00: mov             x2, NULL
    // 0x5e3b04: r3 = "Bilinmeyen"
    //     0x5e3b04: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b70] "Bilinmeyen"
    //     0x5e3b08: ldr             x3, [x3, #0xb70]
    // 0x5e3b0c: r1 = 1048580
    //     0x5e3b0c: mov             x1, #4
    //     0x5e3b10: movk            x1, #0x10, lsl #16
    // 0x5e3b14: r0 = AllocateRecord2Named()
    //     0x5e3b14: bl              #0x926cac  ; AllocateRecord2NamedStub
    // 0x5e3b18: r0 = ReturnAsyncNotFuture()
    //     0x5e3b18: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e3b1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e3b1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e3b20: b               #0x5e37a8
    // 0x5e3b24: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e3b24: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x63b0d0, size: 0x24
    // 0x63b0d0: EnterFrame
    //     0x63b0d0: stp             fp, lr, [SP, #-0x10]!
    //     0x63b0d4: mov             fp, SP
    // 0x63b0d8: ldr             x2, [fp, #0x10]
    // 0x63b0dc: r1 = Function 'dispose':.
    //     0x63b0dc: add             x1, PP, #0x27, lsl #12  ; [pp+0x27540] AnonymousClosure: (0x63b0f4), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::dispose (0x63d99c)
    //     0x63b0e0: ldr             x1, [x1, #0x540]
    // 0x63b0e4: r0 = AllocateClosure()
    //     0x63b0e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x63b0e8: LeaveFrame
    //     0x63b0e8: mov             SP, fp
    //     0x63b0ec: ldp             fp, lr, [SP], #0x10
    // 0x63b0f0: ret
    //     0x63b0f0: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x63b0f4, size: 0x38
    // 0x63b0f4: EnterFrame
    //     0x63b0f4: stp             fp, lr, [SP, #-0x10]!
    //     0x63b0f8: mov             fp, SP
    // 0x63b0fc: ldr             x0, [fp, #0x10]
    // 0x63b100: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x63b100: ldur            w1, [x0, #0x17]
    // 0x63b104: DecompressPointer r1
    //     0x63b104: add             x1, x1, HEAP, lsl #32
    // 0x63b108: CheckStackOverflow
    //     0x63b108: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63b10c: cmp             SP, x16
    //     0x63b110: b.ls            #0x63b124
    // 0x63b114: r0 = dispose()
    //     0x63b114: bl              #0x63d99c  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::dispose
    // 0x63b118: LeaveFrame
    //     0x63b118: mov             SP, fp
    //     0x63b11c: ldp             fp, lr, [SP], #0x10
    // 0x63b120: ret
    //     0x63b120: ret             
    // 0x63b124: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63b124: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63b128: b               #0x63b114
  }
  _ dispose(/* No info */) {
    // ** addr: 0x63d99c, size: 0x6c
    // 0x63d99c: EnterFrame
    //     0x63d99c: stp             fp, lr, [SP, #-0x10]!
    //     0x63d9a0: mov             fp, SP
    // 0x63d9a4: AllocStack(0x8)
    //     0x63d9a4: sub             SP, SP, #8
    // 0x63d9a8: SetupParameters(LocationTrackingProvider this /* r1 => r0, fp-0x8 */)
    //     0x63d9a8: mov             x0, x1
    //     0x63d9ac: stur            x1, [fp, #-8]
    // 0x63d9b0: CheckStackOverflow
    //     0x63d9b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63d9b4: cmp             SP, x16
    //     0x63d9b8: b.ls            #0x63da00
    // 0x63d9bc: LoadField: r1 = r0->field_3f
    //     0x63d9bc: ldur            w1, [x0, #0x3f]
    // 0x63d9c0: DecompressPointer r1
    //     0x63d9c0: add             x1, x1, HEAP, lsl #32
    // 0x63d9c4: cmp             w1, NULL
    // 0x63d9c8: b.eq            #0x63d9d4
    // 0x63d9cc: r0 = cancel()
    //     0x63d9cc: bl              #0x88cff4  ; [dart:async] _BufferingStreamSubscription::cancel
    // 0x63d9d0: ldur            x0, [fp, #-8]
    // 0x63d9d4: LoadField: r1 = r0->field_43
    //     0x63d9d4: ldur            w1, [x0, #0x43]
    // 0x63d9d8: DecompressPointer r1
    //     0x63d9d8: add             x1, x1, HEAP, lsl #32
    // 0x63d9dc: cmp             w1, NULL
    // 0x63d9e0: b.eq            #0x63d9e8
    // 0x63d9e4: r0 = cancel()
    //     0x63d9e4: bl              #0x88cff4  ; [dart:async] _BufferingStreamSubscription::cancel
    // 0x63d9e8: ldur            x1, [fp, #-8]
    // 0x63d9ec: r0 = dispose()
    //     0x63d9ec: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x63d9f0: r0 = Null
    //     0x63d9f0: mov             x0, NULL
    // 0x63d9f4: LeaveFrame
    //     0x63d9f4: mov             SP, fp
    //     0x63d9f8: ldp             fp, lr, [SP], #0x10
    // 0x63d9fc: ret
    //     0x63d9fc: ret             
    // 0x63da00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63da00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63da04: b               #0x63d9bc
  }
  _ clearSelectedUser(/* No info */) {
    // ** addr: 0x6e9cec, size: 0x60
    // 0x6e9cec: EnterFrame
    //     0x6e9cec: stp             fp, lr, [SP, #-0x10]!
    //     0x6e9cf0: mov             fp, SP
    // 0x6e9cf4: AllocStack(0x8)
    //     0x6e9cf4: sub             SP, SP, #8
    // 0x6e9cf8: SetupParameters(LocationTrackingProvider this /* r1 => r0, fp-0x8 */)
    //     0x6e9cf8: mov             x0, x1
    //     0x6e9cfc: stur            x1, [fp, #-8]
    // 0x6e9d00: CheckStackOverflow
    //     0x6e9d00: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e9d04: cmp             SP, x16
    //     0x6e9d08: b.ls            #0x6e9d44
    // 0x6e9d0c: LoadField: r1 = r0->field_43
    //     0x6e9d0c: ldur            w1, [x0, #0x43]
    // 0x6e9d10: DecompressPointer r1
    //     0x6e9d10: add             x1, x1, HEAP, lsl #32
    // 0x6e9d14: cmp             w1, NULL
    // 0x6e9d18: b.ne            #0x6e9d24
    // 0x6e9d1c: mov             x1, x0
    // 0x6e9d20: b               #0x6e9d2c
    // 0x6e9d24: r0 = cancel()
    //     0x6e9d24: bl              #0x88cff4  ; [dart:async] _BufferingStreamSubscription::cancel
    // 0x6e9d28: ldur            x1, [fp, #-8]
    // 0x6e9d2c: StoreField: r1->field_33 = rNULL
    //     0x6e9d2c: stur            NULL, [x1, #0x33]
    // 0x6e9d30: r0 = notifyListeners()
    //     0x6e9d30: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6e9d34: r0 = Null
    //     0x6e9d34: mov             x0, NULL
    // 0x6e9d38: LeaveFrame
    //     0x6e9d38: mov             SP, fp
    //     0x6e9d3c: ldp             fp, lr, [SP], #0x10
    // 0x6e9d40: ret
    //     0x6e9d40: ret             
    // 0x6e9d44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e9d44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e9d48: b               #0x6e9d0c
  }
  _ LocationTrackingProvider(/* No info */) {
    // ** addr: 0x7dcd8c, size: 0x198
    // 0x7dcd8c: EnterFrame
    //     0x7dcd8c: stp             fp, lr, [SP, #-0x10]!
    //     0x7dcd90: mov             fp, SP
    // 0x7dcd94: AllocStack(0x18)
    //     0x7dcd94: sub             SP, SP, #0x18
    // 0x7dcd98: r2 = false
    //     0x7dcd98: add             x2, NULL, #0x30  ; false
    // 0x7dcd9c: r0 = ""
    //     0x7dcd9c: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7dcda0: stur            x1, [fp, #-8]
    // 0x7dcda4: CheckStackOverflow
    //     0x7dcda4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dcda8: cmp             SP, x16
    //     0x7dcdac: b.ls            #0x7dcf1c
    // 0x7dcdb0: StoreField: r1->field_37 = r2
    //     0x7dcdb0: stur            w2, [x1, #0x37]
    // 0x7dcdb4: StoreField: r1->field_3b = r0
    //     0x7dcdb4: stur            w0, [x1, #0x3b]
    // 0x7dcdb8: r4 = const [0, 0, 0, 0, null]
    //     0x7dcdb8: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7dcdbc: r0 = app()
    //     0x7dcdbc: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7dcdc0: mov             x1, x0
    // 0x7dcdc4: r0 = instanceFor()
    //     0x7dcdc4: bl              #0x5e81b4  ; [package:firebase_database/firebase_database.dart] FirebaseDatabase::instanceFor
    // 0x7dcdc8: mov             x1, x0
    // 0x7dcdcc: r2 = "locations"
    //     0x7dcdcc: ldr             x2, [PP, #0x1610]  ; [pp+0x1610] "locations"
    // 0x7dcdd0: r0 = ref()
    //     0x7dcdd0: bl              #0x5e7874  ; [package:firebase_database/firebase_database.dart] FirebaseDatabase::ref
    // 0x7dcdd4: ldur            x1, [fp, #-8]
    // 0x7dcdd8: StoreField: r1->field_23 = r0
    //     0x7dcdd8: stur            w0, [x1, #0x23]
    //     0x7dcddc: ldurb           w16, [x1, #-1]
    //     0x7dcde0: ldurb           w17, [x0, #-1]
    //     0x7dcde4: and             x16, x17, x16, lsr #2
    //     0x7dcde8: tst             x16, HEAP, lsr #32
    //     0x7dcdec: b.eq            #0x7dcdf4
    //     0x7dcdf0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dcdf4: r4 = const [0, 0, 0, 0, null]
    //     0x7dcdf4: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7dcdf8: r0 = app()
    //     0x7dcdf8: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7dcdfc: mov             x1, x0
    // 0x7dce00: r0 = instanceFor()
    //     0x7dce00: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7dce04: ldur            x1, [fp, #-8]
    // 0x7dce08: StoreField: r1->field_27 = r0
    //     0x7dce08: stur            w0, [x1, #0x27]
    //     0x7dce0c: ldurb           w16, [x1, #-1]
    //     0x7dce10: ldurb           w17, [x0, #-1]
    //     0x7dce14: and             x16, x17, x16, lsr #2
    //     0x7dce18: tst             x16, HEAP, lsr #32
    //     0x7dce1c: b.eq            #0x7dce24
    //     0x7dce20: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dce24: r16 = <String, UserLocationModel>
    //     0x7dce24: add             x16, PP, #0x14, lsl #12  ; [pp+0x14a00] TypeArguments: <String, UserLocationModel>
    //     0x7dce28: ldr             x16, [x16, #0xa00]
    // 0x7dce2c: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7dce30: stp             lr, x16, [SP]
    // 0x7dce34: r0 = Map._fromLiteral()
    //     0x7dce34: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7dce38: ldur            x1, [fp, #-8]
    // 0x7dce3c: StoreField: r1->field_2b = r0
    //     0x7dce3c: stur            w0, [x1, #0x2b]
    //     0x7dce40: ldurb           w16, [x1, #-1]
    //     0x7dce44: ldurb           w17, [x0, #-1]
    //     0x7dce48: and             x16, x17, x16, lsr #2
    //     0x7dce4c: tst             x16, HEAP, lsr #32
    //     0x7dce50: b.eq            #0x7dce58
    //     0x7dce54: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dce58: r16 = <String, ({String? agencyId, String userName})>
    //     0x7dce58: add             x16, PP, #0x14, lsl #12  ; [pp+0x14a08] TypeArguments: <String, ({String? agencyId, String userName})>
    //     0x7dce5c: ldr             x16, [x16, #0xa08]
    // 0x7dce60: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7dce64: stp             lr, x16, [SP]
    // 0x7dce68: r0 = Map._fromLiteral()
    //     0x7dce68: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7dce6c: ldur            x1, [fp, #-8]
    // 0x7dce70: StoreField: r1->field_2f = r0
    //     0x7dce70: stur            w0, [x1, #0x2f]
    //     0x7dce74: ldurb           w16, [x1, #-1]
    //     0x7dce78: ldurb           w17, [x0, #-1]
    //     0x7dce7c: and             x16, x17, x16, lsr #2
    //     0x7dce80: tst             x16, HEAP, lsr #32
    //     0x7dce84: b.eq            #0x7dce8c
    //     0x7dce88: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dce8c: StoreField: r1->field_7 = rZR
    //     0x7dce8c: stur            xzr, [x1, #7]
    // 0x7dce90: StoreField: r1->field_13 = rZR
    //     0x7dce90: stur            xzr, [x1, #0x13]
    // 0x7dce94: StoreField: r1->field_1b = rZR
    //     0x7dce94: stur            xzr, [x1, #0x1b]
    // 0x7dce98: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7dce98: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dce9c: ldr             x0, [x0, #0xbc0]
    //     0x7dcea0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dcea4: cmp             w0, w16
    //     0x7dcea8: b.ne            #0x7dceb4
    //     0x7dceac: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7dceb0: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7dceb4: ldur            x1, [fp, #-8]
    // 0x7dceb8: StoreField: r1->field_f = r0
    //     0x7dceb8: stur            w0, [x1, #0xf]
    //     0x7dcebc: ldurb           w16, [x1, #-1]
    //     0x7dcec0: ldurb           w17, [x0, #-1]
    //     0x7dcec4: and             x16, x17, x16, lsr #2
    //     0x7dcec8: tst             x16, HEAP, lsr #32
    //     0x7dcecc: b.eq            #0x7dced4
    //     0x7dced0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dced4: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7dced4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dced8: ldr             x0, [x0, #0xcb8]
    //     0x7dcedc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dcee0: cmp             w0, w16
    //     0x7dcee4: b.ne            #0x7dcef0
    //     0x7dcee8: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7dceec: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7dcef0: str             NULL, [SP]
    // 0x7dcef4: r1 = "🎯 LocationTrackingProvider: Constructor çağrıldı"
    //     0x7dcef4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a10] "🎯 LocationTrackingProvider: Constructor çağrıldı"
    //     0x7dcef8: ldr             x1, [x1, #0xa10]
    // 0x7dcefc: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dcefc: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dcf00: r0 = debugPrintThrottled()
    //     0x7dcf00: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dcf04: ldur            x1, [fp, #-8]
    // 0x7dcf08: r0 = startListeningAllLocations()
    //     0x7dcf08: bl              #0x7dcf24  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::startListeningAllLocations
    // 0x7dcf0c: r0 = Null
    //     0x7dcf0c: mov             x0, NULL
    // 0x7dcf10: LeaveFrame
    //     0x7dcf10: mov             SP, fp
    //     0x7dcf14: ldp             fp, lr, [SP], #0x10
    // 0x7dcf18: ret
    //     0x7dcf18: ret             
    // 0x7dcf1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dcf1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dcf20: b               #0x7dcdb0
  }
  _ startListeningAllLocations(/* No info */) {
    // ** addr: 0x7dcf24, size: 0x110
    // 0x7dcf24: EnterFrame
    //     0x7dcf24: stp             fp, lr, [SP, #-0x10]!
    //     0x7dcf28: mov             fp, SP
    // 0x7dcf2c: AllocStack(0x20)
    //     0x7dcf2c: sub             SP, SP, #0x20
    // 0x7dcf30: SetupParameters(LocationTrackingProvider this /* r1 => r1, fp-0x8 */)
    //     0x7dcf30: stur            x1, [fp, #-8]
    // 0x7dcf34: CheckStackOverflow
    //     0x7dcf34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dcf38: cmp             SP, x16
    //     0x7dcf3c: b.ls            #0x7dd02c
    // 0x7dcf40: r1 = 1
    //     0x7dcf40: mov             x1, #1
    // 0x7dcf44: r0 = AllocateContext()
    //     0x7dcf44: bl              #0x927010  ; AllocateContextStub
    // 0x7dcf48: ldur            x1, [fp, #-8]
    // 0x7dcf4c: stur            x0, [fp, #-0x10]
    // 0x7dcf50: StoreField: r0->field_f = r1
    //     0x7dcf50: stur            w1, [x0, #0xf]
    // 0x7dcf54: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7dcf54: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dcf58: ldr             x0, [x0, #0xcb8]
    //     0x7dcf5c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dcf60: cmp             w0, w16
    //     0x7dcf64: b.ne            #0x7dcf70
    //     0x7dcf68: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7dcf6c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7dcf70: str             NULL, [SP]
    // 0x7dcf74: r1 = "🚀 LocationTrackingProvider: startListeningAllLocations çağrıldı"
    //     0x7dcf74: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a18] "🚀 LocationTrackingProvider: startListeningAllLocations çağrıldı"
    //     0x7dcf78: ldr             x1, [x1, #0xa18]
    // 0x7dcf7c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dcf7c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dcf80: r0 = debugPrintThrottled()
    //     0x7dcf80: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dcf84: ldur            x0, [fp, #-8]
    // 0x7dcf88: r1 = true
    //     0x7dcf88: add             x1, NULL, #0x20  ; true
    // 0x7dcf8c: StoreField: r0->field_37 = r1
    //     0x7dcf8c: stur            w1, [x0, #0x37]
    // 0x7dcf90: mov             x1, x0
    // 0x7dcf94: r0 = notifyListeners()
    //     0x7dcf94: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7dcf98: str             NULL, [SP]
    // 0x7dcf9c: r1 = "⏳ LocationTrackingProvider: isLoading = true yapıldı"
    //     0x7dcf9c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a20] "⏳ LocationTrackingProvider: isLoading = true yapıldı"
    //     0x7dcfa0: ldr             x1, [x1, #0xa20]
    // 0x7dcfa4: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dcfa4: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dcfa8: r0 = debugPrintThrottled()
    //     0x7dcfa8: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dcfac: ldur            x0, [fp, #-8]
    // 0x7dcfb0: LoadField: r1 = r0->field_23
    //     0x7dcfb0: ldur            w1, [x0, #0x23]
    // 0x7dcfb4: DecompressPointer r1
    //     0x7dcfb4: add             x1, x1, HEAP, lsl #32
    // 0x7dcfb8: r0 = onValue()
    //     0x7dcfb8: bl              #0x5e1b8c  ; [package:firebase_database/firebase_database.dart] Query::onValue
    // 0x7dcfbc: ldur            x2, [fp, #-0x10]
    // 0x7dcfc0: r1 = Function '<anonymous closure>':.
    //     0x7dcfc0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a28] AnonymousClosure: (0x7dd0f4), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::startListeningAllLocations (0x7dcf24)
    //     0x7dcfc4: ldr             x1, [x1, #0xa28]
    // 0x7dcfc8: stur            x0, [fp, #-0x18]
    // 0x7dcfcc: r0 = AllocateClosure()
    //     0x7dcfcc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dcfd0: ldur            x2, [fp, #-0x10]
    // 0x7dcfd4: r1 = Function '<anonymous closure>':.
    //     0x7dcfd4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a30] AnonymousClosure: (0x7dd034), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::startListeningAllLocations (0x7dcf24)
    //     0x7dcfd8: ldr             x1, [x1, #0xa30]
    // 0x7dcfdc: stur            x0, [fp, #-0x10]
    // 0x7dcfe0: r0 = AllocateClosure()
    //     0x7dcfe0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dcfe4: str             x0, [SP]
    // 0x7dcfe8: ldur            x1, [fp, #-0x18]
    // 0x7dcfec: ldur            x2, [fp, #-0x10]
    // 0x7dcff0: r4 = const [0, 0x3, 0x1, 0x2, onError, 0x2, null]
    //     0x7dcff0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14a38] List(7) [0, 0x3, 0x1, 0x2, "onError", 0x2, Null]
    //     0x7dcff4: ldr             x4, [x4, #0xa38]
    // 0x7dcff8: r0 = listen()
    //     0x7dcff8: bl              #0x87bcb8  ; [dart:async] _ForwardingStream::listen
    // 0x7dcffc: ldur            x1, [fp, #-8]
    // 0x7dd000: StoreField: r1->field_3f = r0
    //     0x7dd000: stur            w0, [x1, #0x3f]
    //     0x7dd004: ldurb           w16, [x1, #-1]
    //     0x7dd008: ldurb           w17, [x0, #-1]
    //     0x7dd00c: and             x16, x17, x16, lsr #2
    //     0x7dd010: tst             x16, HEAP, lsr #32
    //     0x7dd014: b.eq            #0x7dd01c
    //     0x7dd018: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dd01c: r0 = Null
    //     0x7dd01c: mov             x0, NULL
    // 0x7dd020: LeaveFrame
    //     0x7dd020: mov             SP, fp
    //     0x7dd024: ldp             fp, lr, [SP], #0x10
    // 0x7dd028: ret
    //     0x7dd028: ret             
    // 0x7dd02c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dd02c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dd030: b               #0x7dcf40
  }
  [closure] Null <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x7dd034, size: 0xc0
    // 0x7dd034: EnterFrame
    //     0x7dd034: stp             fp, lr, [SP, #-0x10]!
    //     0x7dd038: mov             fp, SP
    // 0x7dd03c: AllocStack(0x10)
    //     0x7dd03c: sub             SP, SP, #0x10
    // 0x7dd040: SetupParameters([dynamic _ /* r0 */])
    //     0x7dd040: ldr             x0, [fp, #0x18]
    //     0x7dd044: ldur            w1, [x0, #0x17]
    //     0x7dd048: add             x1, x1, HEAP, lsl #32
    //     0x7dd04c: stur            x1, [fp, #-8]
    // 0x7dd050: CheckStackOverflow
    //     0x7dd050: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dd054: cmp             SP, x16
    //     0x7dd058: b.ls            #0x7dd0ec
    // 0x7dd05c: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7dd05c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dd060: ldr             x0, [x0, #0xcb8]
    //     0x7dd064: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dd068: cmp             w0, w16
    //     0x7dd06c: b.ne            #0x7dd078
    //     0x7dd070: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7dd074: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7dd078: r1 = Null
    //     0x7dd078: mov             x1, NULL
    // 0x7dd07c: r2 = 4
    //     0x7dd07c: mov             x2, #4
    // 0x7dd080: r0 = AllocateArray()
    //     0x7dd080: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dd084: r16 = "❌ LocationTrackingProvider: Konum dinleme hatası: "
    //     0x7dd084: add             x16, PP, #0x14, lsl #12  ; [pp+0x14a40] "❌ LocationTrackingProvider: Konum dinleme hatası: "
    //     0x7dd088: ldr             x16, [x16, #0xa40]
    // 0x7dd08c: StoreField: r0->field_f = r16
    //     0x7dd08c: stur            w16, [x0, #0xf]
    // 0x7dd090: ldr             x1, [fp, #0x10]
    // 0x7dd094: StoreField: r0->field_13 = r1
    //     0x7dd094: stur            w1, [x0, #0x13]
    // 0x7dd098: str             x0, [SP]
    // 0x7dd09c: r0 = _interpolate()
    //     0x7dd09c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dd0a0: str             NULL, [SP]
    // 0x7dd0a4: mov             x1, x0
    // 0x7dd0a8: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd0a8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd0ac: r0 = debugPrintThrottled()
    //     0x7dd0ac: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd0b0: ldur            x0, [fp, #-8]
    // 0x7dd0b4: LoadField: r1 = r0->field_f
    //     0x7dd0b4: ldur            w1, [x0, #0xf]
    // 0x7dd0b8: DecompressPointer r1
    //     0x7dd0b8: add             x1, x1, HEAP, lsl #32
    // 0x7dd0bc: r0 = false
    //     0x7dd0bc: add             x0, NULL, #0x30  ; false
    // 0x7dd0c0: StoreField: r1->field_37 = r0
    //     0x7dd0c0: stur            w0, [x1, #0x37]
    // 0x7dd0c4: r0 = notifyListeners()
    //     0x7dd0c4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7dd0c8: str             NULL, [SP]
    // 0x7dd0cc: r1 = "✅ LocationTrackingProvider: isLoading = false yapıldı (hata)"
    //     0x7dd0cc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a48] "✅ LocationTrackingProvider: isLoading = false yapıldı (hata)"
    //     0x7dd0d0: ldr             x1, [x1, #0xa48]
    // 0x7dd0d4: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd0d4: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd0d8: r0 = debugPrintThrottled()
    //     0x7dd0d8: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd0dc: r0 = Null
    //     0x7dd0dc: mov             x0, NULL
    // 0x7dd0e0: LeaveFrame
    //     0x7dd0e0: mov             SP, fp
    //     0x7dd0e4: ldp             fp, lr, [SP], #0x10
    // 0x7dd0e8: ret
    //     0x7dd0e8: ret             
    // 0x7dd0ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dd0ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dd0f0: b               #0x7dd05c
  }
  [closure] Future<void> <anonymous closure>(dynamic, DatabaseEvent) async {
    // ** addr: 0x7dd0f4, size: 0x69c
    // 0x7dd0f4: EnterFrame
    //     0x7dd0f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7dd0f8: mov             fp, SP
    // 0x7dd0fc: AllocStack(0x50)
    //     0x7dd0fc: sub             SP, SP, #0x50
    // 0x7dd100: SetupParameters(LocationTrackingProvider this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7dd100: stur            NULL, [fp, #-8]
    //     0x7dd104: mov             x0, #0
    //     0x7dd108: add             x1, fp, w0, sxtw #2
    //     0x7dd10c: ldr             x1, [x1, #0x18]
    //     0x7dd110: add             x2, fp, w0, sxtw #2
    //     0x7dd114: ldr             x2, [x2, #0x10]
    //     0x7dd118: stur            x2, [fp, #-0x18]
    //     0x7dd11c: ldur            w3, [x1, #0x17]
    //     0x7dd120: add             x3, x3, HEAP, lsl #32
    //     0x7dd124: stur            x3, [fp, #-0x10]
    // 0x7dd128: CheckStackOverflow
    //     0x7dd128: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dd12c: cmp             SP, x16
    //     0x7dd130: b.ls            #0x7dd778
    // 0x7dd134: InitAsync() -> Future<void?>
    //     0x7dd134: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7dd138: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7dd13c: ldur            x1, [fp, #-0x18]
    // 0x7dd140: r0 = snapshot()
    //     0x7dd140: bl              #0x5e4184  ; [package:firebase_database/firebase_database.dart] DatabaseEvent::snapshot
    // 0x7dd144: mov             x1, x0
    // 0x7dd148: r0 = value()
    //     0x7dd148: bl              #0x5e36e4  ; [package:firebase_database/firebase_database.dart] DataSnapshot::value
    // 0x7dd14c: mov             x3, x0
    // 0x7dd150: stur            x3, [fp, #-0x18]
    // 0x7dd154: cmp             w3, NULL
    // 0x7dd158: b.eq            #0x7dd6c8
    // 0x7dd15c: mov             x0, x3
    // 0x7dd160: r2 = Null
    //     0x7dd160: mov             x2, NULL
    // 0x7dd164: r1 = Null
    //     0x7dd164: mov             x1, NULL
    // 0x7dd168: cmp             w0, NULL
    // 0x7dd16c: b.eq            #0x7dd204
    // 0x7dd170: branchIfSmi(r0, 0x7dd204)
    //     0x7dd170: tbz             w0, #0, #0x7dd204
    // 0x7dd174: r3 = LoadClassIdInstr(r0)
    //     0x7dd174: ldur            x3, [x0, #-1]
    //     0x7dd178: ubfx            x3, x3, #0xc, #0x14
    // 0x7dd17c: r17 = 4626
    //     0x7dd17c: mov             x17, #0x1212
    // 0x7dd180: cmp             x3, x17
    // 0x7dd184: b.eq            #0x7dd20c
    // 0x7dd188: r4 = LoadClassIdInstr(r0)
    //     0x7dd188: ldur            x4, [x0, #-1]
    //     0x7dd18c: ubfx            x4, x4, #0xc, #0x14
    // 0x7dd190: ldr             x3, [THR, #0x670]  ; THR::isolate_group
    // 0x7dd194: ldr             x3, [x3, #0x18]
    // 0x7dd198: ldr             x3, [x3, x4, lsl #3]
    // 0x7dd19c: LoadField: r3 = r3->field_2b
    //     0x7dd19c: ldur            w3, [x3, #0x2b]
    // 0x7dd1a0: DecompressPointer r3
    //     0x7dd1a0: add             x3, x3, HEAP, lsl #32
    // 0x7dd1a4: cmp             w3, NULL
    // 0x7dd1a8: b.eq            #0x7dd204
    // 0x7dd1ac: LoadField: r3 = r3->field_f
    //     0x7dd1ac: ldur            w3, [x3, #0xf]
    // 0x7dd1b0: lsr             x3, x3, #3
    // 0x7dd1b4: r17 = 4626
    //     0x7dd1b4: mov             x17, #0x1212
    // 0x7dd1b8: cmp             x3, x17
    // 0x7dd1bc: b.eq            #0x7dd20c
    // 0x7dd1c0: r3 = SubtypeTestCache
    //     0x7dd1c0: add             x3, PP, #0x14, lsl #12  ; [pp+0x14a50] SubtypeTestCache
    //     0x7dd1c4: ldr             x3, [x3, #0xa50]
    // 0x7dd1c8: r30 = Subtype1TestCacheStub
    //     0x7dd1c8: ldr             lr, [PP, #0x898]  ; [pp+0x898] Stub: Subtype1TestCache (0x3c2f34)
    // 0x7dd1cc: LoadField: r30 = r30->field_7
    //     0x7dd1cc: ldur            lr, [lr, #7]
    // 0x7dd1d0: blr             lr
    // 0x7dd1d4: cmp             w7, NULL
    // 0x7dd1d8: b.eq            #0x7dd1e4
    // 0x7dd1dc: tbnz            w7, #4, #0x7dd204
    // 0x7dd1e0: b               #0x7dd20c
    // 0x7dd1e4: r8 = Map
    //     0x7dd1e4: add             x8, PP, #0x14, lsl #12  ; [pp+0x14a58] Type: Map
    //     0x7dd1e8: ldr             x8, [x8, #0xa58]
    // 0x7dd1ec: r3 = SubtypeTestCache
    //     0x7dd1ec: add             x3, PP, #0x14, lsl #12  ; [pp+0x14a60] SubtypeTestCache
    //     0x7dd1f0: ldr             x3, [x3, #0xa60]
    // 0x7dd1f4: r30 = InstanceOfStub
    //     0x7dd1f4: ldr             lr, [PP, #0x758]  ; [pp+0x758] Stub: InstanceOf (0x3b127c)
    // 0x7dd1f8: LoadField: r30 = r30->field_7
    //     0x7dd1f8: ldur            lr, [lr, #7]
    // 0x7dd1fc: blr             lr
    // 0x7dd200: b               #0x7dd210
    // 0x7dd204: r0 = false
    //     0x7dd204: add             x0, NULL, #0x30  ; false
    // 0x7dd208: b               #0x7dd210
    // 0x7dd20c: r0 = true
    //     0x7dd20c: add             x0, NULL, #0x20  ; true
    // 0x7dd210: tbnz            w0, #4, #0x7dd6bc
    // 0x7dd214: ldur            x0, [fp, #-0x18]
    // 0x7dd218: r1 = <Future<MapEntry<String, UserLocationModel>?>>
    //     0x7dd218: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a68] TypeArguments: <Future<MapEntry<String, UserLocationModel>?>>
    //     0x7dd21c: ldr             x1, [x1, #0xa68]
    // 0x7dd220: r2 = 0
    //     0x7dd220: mov             x2, #0
    // 0x7dd224: r0 = _GrowableList()
    //     0x7dd224: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7dd228: mov             x2, x0
    // 0x7dd22c: ldur            x1, [fp, #-0x18]
    // 0x7dd230: stur            x2, [fp, #-0x20]
    // 0x7dd234: r0 = LoadClassIdInstr(r1)
    //     0x7dd234: ldur            x0, [x1, #-1]
    //     0x7dd238: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd23c: r0 = GDT[cid_x0 + 0x5dc]()
    //     0x7dd23c: add             lr, x0, #0x5dc
    //     0x7dd240: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd244: blr             lr
    // 0x7dd248: r1 = LoadClassIdInstr(r0)
    //     0x7dd248: ldur            x1, [x0, #-1]
    //     0x7dd24c: ubfx            x1, x1, #0xc, #0x14
    // 0x7dd250: mov             x16, x0
    // 0x7dd254: mov             x0, x1
    // 0x7dd258: mov             x1, x16
    // 0x7dd25c: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x7dd25c: mov             x17, #0x90c4
    //     0x7dd260: add             lr, x0, x17
    //     0x7dd264: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd268: blr             lr
    // 0x7dd26c: mov             x2, x0
    // 0x7dd270: stur            x2, [fp, #-0x18]
    // 0x7dd274: ldur            x3, [fp, #-0x20]
    // 0x7dd278: ldur            x4, [fp, #-0x10]
    // 0x7dd27c: CheckStackOverflow
    //     0x7dd27c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dd280: cmp             SP, x16
    //     0x7dd284: b.ls            #0x7dd780
    // 0x7dd288: r0 = LoadClassIdInstr(r2)
    //     0x7dd288: ldur            x0, [x2, #-1]
    //     0x7dd28c: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd290: mov             x1, x2
    // 0x7dd294: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x7dd294: add             lr, x0, #0x4cb
    //     0x7dd298: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd29c: blr             lr
    // 0x7dd2a0: tbnz            w0, #4, #0x7dd47c
    // 0x7dd2a4: ldur            x2, [fp, #-0x18]
    // 0x7dd2a8: r0 = LoadClassIdInstr(r2)
    //     0x7dd2a8: ldur            x0, [x2, #-1]
    //     0x7dd2ac: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd2b0: mov             x1, x2
    // 0x7dd2b4: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x7dd2b4: add             lr, x0, #0x4f1
    //     0x7dd2b8: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd2bc: blr             lr
    // 0x7dd2c0: mov             x1, x0
    // 0x7dd2c4: stur            x1, [fp, #-0x28]
    // 0x7dd2c8: LoadField: r0 = r1->field_b
    //     0x7dd2c8: ldur            w0, [x1, #0xb]
    // 0x7dd2cc: DecompressPointer r0
    //     0x7dd2cc: add             x0, x0, HEAP, lsl #32
    // 0x7dd2d0: r2 = 60
    //     0x7dd2d0: mov             x2, #0x3c
    // 0x7dd2d4: branchIfSmi(r0, 0x7dd2e0)
    //     0x7dd2d4: tbz             w0, #0, #0x7dd2e0
    // 0x7dd2d8: r2 = LoadClassIdInstr(r0)
    //     0x7dd2d8: ldur            x2, [x0, #-1]
    //     0x7dd2dc: ubfx            x2, x2, #0xc, #0x14
    // 0x7dd2e0: str             x0, [SP]
    // 0x7dd2e4: mov             x0, x2
    // 0x7dd2e8: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x7dd2e8: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x7dd2ec: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x7dd2ec: mov             x17, #0x21f6
    //     0x7dd2f0: add             lr, x0, x17
    //     0x7dd2f4: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd2f8: blr             lr
    // 0x7dd2fc: mov             x3, x0
    // 0x7dd300: ldur            x0, [fp, #-0x28]
    // 0x7dd304: stur            x3, [fp, #-0x38]
    // 0x7dd308: LoadField: r4 = r0->field_f
    //     0x7dd308: ldur            w4, [x0, #0xf]
    // 0x7dd30c: DecompressPointer r4
    //     0x7dd30c: add             x4, x4, HEAP, lsl #32
    // 0x7dd310: mov             x0, x4
    // 0x7dd314: stur            x4, [fp, #-0x30]
    // 0x7dd318: r2 = Null
    //     0x7dd318: mov             x2, NULL
    // 0x7dd31c: r1 = Null
    //     0x7dd31c: mov             x1, NULL
    // 0x7dd320: cmp             w0, NULL
    // 0x7dd324: b.eq            #0x7dd3bc
    // 0x7dd328: branchIfSmi(r0, 0x7dd3bc)
    //     0x7dd328: tbz             w0, #0, #0x7dd3bc
    // 0x7dd32c: r3 = LoadClassIdInstr(r0)
    //     0x7dd32c: ldur            x3, [x0, #-1]
    //     0x7dd330: ubfx            x3, x3, #0xc, #0x14
    // 0x7dd334: r17 = 4626
    //     0x7dd334: mov             x17, #0x1212
    // 0x7dd338: cmp             x3, x17
    // 0x7dd33c: b.eq            #0x7dd3c4
    // 0x7dd340: r4 = LoadClassIdInstr(r0)
    //     0x7dd340: ldur            x4, [x0, #-1]
    //     0x7dd344: ubfx            x4, x4, #0xc, #0x14
    // 0x7dd348: ldr             x3, [THR, #0x670]  ; THR::isolate_group
    // 0x7dd34c: ldr             x3, [x3, #0x18]
    // 0x7dd350: ldr             x3, [x3, x4, lsl #3]
    // 0x7dd354: LoadField: r3 = r3->field_2b
    //     0x7dd354: ldur            w3, [x3, #0x2b]
    // 0x7dd358: DecompressPointer r3
    //     0x7dd358: add             x3, x3, HEAP, lsl #32
    // 0x7dd35c: cmp             w3, NULL
    // 0x7dd360: b.eq            #0x7dd3bc
    // 0x7dd364: LoadField: r3 = r3->field_f
    //     0x7dd364: ldur            w3, [x3, #0xf]
    // 0x7dd368: lsr             x3, x3, #3
    // 0x7dd36c: r17 = 4626
    //     0x7dd36c: mov             x17, #0x1212
    // 0x7dd370: cmp             x3, x17
    // 0x7dd374: b.eq            #0x7dd3c4
    // 0x7dd378: r3 = SubtypeTestCache
    //     0x7dd378: add             x3, PP, #0x14, lsl #12  ; [pp+0x14a70] SubtypeTestCache
    //     0x7dd37c: ldr             x3, [x3, #0xa70]
    // 0x7dd380: r30 = Subtype1TestCacheStub
    //     0x7dd380: ldr             lr, [PP, #0x898]  ; [pp+0x898] Stub: Subtype1TestCache (0x3c2f34)
    // 0x7dd384: LoadField: r30 = r30->field_7
    //     0x7dd384: ldur            lr, [lr, #7]
    // 0x7dd388: blr             lr
    // 0x7dd38c: cmp             w7, NULL
    // 0x7dd390: b.eq            #0x7dd39c
    // 0x7dd394: tbnz            w7, #4, #0x7dd3bc
    // 0x7dd398: b               #0x7dd3c4
    // 0x7dd39c: r8 = Map
    //     0x7dd39c: add             x8, PP, #0x14, lsl #12  ; [pp+0x14a78] Type: Map
    //     0x7dd3a0: ldr             x8, [x8, #0xa78]
    // 0x7dd3a4: r3 = SubtypeTestCache
    //     0x7dd3a4: add             x3, PP, #0x14, lsl #12  ; [pp+0x14a80] SubtypeTestCache
    //     0x7dd3a8: ldr             x3, [x3, #0xa80]
    // 0x7dd3ac: r30 = InstanceOfStub
    //     0x7dd3ac: ldr             lr, [PP, #0x758]  ; [pp+0x758] Stub: InstanceOf (0x3b127c)
    // 0x7dd3b0: LoadField: r30 = r30->field_7
    //     0x7dd3b0: ldur            lr, [lr, #7]
    // 0x7dd3b4: blr             lr
    // 0x7dd3b8: b               #0x7dd3c8
    // 0x7dd3bc: r0 = false
    //     0x7dd3bc: add             x0, NULL, #0x30  ; false
    // 0x7dd3c0: b               #0x7dd3c8
    // 0x7dd3c4: r0 = true
    //     0x7dd3c4: add             x0, NULL, #0x20  ; true
    // 0x7dd3c8: tbnz            w0, #4, #0x7dd46c
    // 0x7dd3cc: ldur            x4, [fp, #-0x10]
    // 0x7dd3d0: ldur            x0, [fp, #-0x20]
    // 0x7dd3d4: LoadField: r1 = r4->field_f
    //     0x7dd3d4: ldur            w1, [x4, #0xf]
    // 0x7dd3d8: DecompressPointer r1
    //     0x7dd3d8: add             x1, x1, HEAP, lsl #32
    // 0x7dd3dc: ldur            x2, [fp, #-0x38]
    // 0x7dd3e0: ldur            x3, [fp, #-0x30]
    // 0x7dd3e4: r0 = _createLocationEntry()
    //     0x7dd3e4: bl              #0x7dd790  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::_createLocationEntry
    // 0x7dd3e8: mov             x2, x0
    // 0x7dd3ec: ldur            x0, [fp, #-0x20]
    // 0x7dd3f0: stur            x2, [fp, #-0x28]
    // 0x7dd3f4: LoadField: r1 = r0->field_b
    //     0x7dd3f4: ldur            w1, [x0, #0xb]
    // 0x7dd3f8: LoadField: r3 = r0->field_f
    //     0x7dd3f8: ldur            w3, [x0, #0xf]
    // 0x7dd3fc: DecompressPointer r3
    //     0x7dd3fc: add             x3, x3, HEAP, lsl #32
    // 0x7dd400: LoadField: r4 = r3->field_b
    //     0x7dd400: ldur            w4, [x3, #0xb]
    // 0x7dd404: r3 = LoadInt32Instr(r1)
    //     0x7dd404: sbfx            x3, x1, #1, #0x1f
    // 0x7dd408: stur            x3, [fp, #-0x40]
    // 0x7dd40c: r1 = LoadInt32Instr(r4)
    //     0x7dd40c: sbfx            x1, x4, #1, #0x1f
    // 0x7dd410: cmp             x3, x1
    // 0x7dd414: b.ne            #0x7dd420
    // 0x7dd418: mov             x1, x0
    // 0x7dd41c: r0 = _growToNextCapacity()
    //     0x7dd41c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7dd420: ldur            x2, [fp, #-0x20]
    // 0x7dd424: ldur            x3, [fp, #-0x40]
    // 0x7dd428: add             x0, x3, #1
    // 0x7dd42c: lsl             x1, x0, #1
    // 0x7dd430: StoreField: r2->field_b = r1
    //     0x7dd430: stur            w1, [x2, #0xb]
    // 0x7dd434: LoadField: r1 = r2->field_f
    //     0x7dd434: ldur            w1, [x2, #0xf]
    // 0x7dd438: DecompressPointer r1
    //     0x7dd438: add             x1, x1, HEAP, lsl #32
    // 0x7dd43c: ldur            x0, [fp, #-0x28]
    // 0x7dd440: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7dd440: add             x25, x1, x3, lsl #2
    //     0x7dd444: add             x25, x25, #0xf
    //     0x7dd448: str             w0, [x25]
    //     0x7dd44c: tbz             w0, #0, #0x7dd468
    //     0x7dd450: ldurb           w16, [x1, #-1]
    //     0x7dd454: ldurb           w17, [x0, #-1]
    //     0x7dd458: and             x16, x17, x16, lsr #2
    //     0x7dd45c: tst             x16, HEAP, lsr #32
    //     0x7dd460: b.eq            #0x7dd468
    //     0x7dd464: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7dd468: b               #0x7dd470
    // 0x7dd46c: ldur            x2, [fp, #-0x20]
    // 0x7dd470: mov             x3, x2
    // 0x7dd474: ldur            x2, [fp, #-0x18]
    // 0x7dd478: b               #0x7dd278
    // 0x7dd47c: ldur            x2, [fp, #-0x20]
    // 0x7dd480: r16 = <MapEntry<String, UserLocationModel>?>
    //     0x7dd480: add             x16, PP, #0x14, lsl #12  ; [pp+0x14a88] TypeArguments: <MapEntry<String, UserLocationModel>?>
    //     0x7dd484: ldr             x16, [x16, #0xa88]
    // 0x7dd488: stp             x2, x16, [SP]
    // 0x7dd48c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7dd48c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7dd490: r0 = wait()
    //     0x7dd490: bl              #0x42de24  ; [dart:async] Future::wait
    // 0x7dd494: mov             x1, x0
    // 0x7dd498: stur            x1, [fp, #-0x18]
    // 0x7dd49c: r0 = Await()
    //     0x7dd49c: bl              #0x3dd188  ; AwaitStub
    // 0x7dd4a0: stur            x0, [fp, #-0x18]
    // 0x7dd4a4: r16 = <String, UserLocationModel>
    //     0x7dd4a4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14a00] TypeArguments: <String, UserLocationModel>
    //     0x7dd4a8: ldr             x16, [x16, #0xa00]
    // 0x7dd4ac: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7dd4b0: stp             lr, x16, [SP]
    // 0x7dd4b4: r0 = Map._fromLiteral()
    //     0x7dd4b4: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7dd4b8: mov             x2, x0
    // 0x7dd4bc: ldur            x1, [fp, #-0x18]
    // 0x7dd4c0: stur            x2, [fp, #-0x20]
    // 0x7dd4c4: r0 = LoadClassIdInstr(r1)
    //     0x7dd4c4: ldur            x0, [x1, #-1]
    //     0x7dd4c8: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd4cc: r0 = GDT[cid_x0 + 0x90c4]()
    //     0x7dd4cc: mov             x17, #0x90c4
    //     0x7dd4d0: add             lr, x0, x17
    //     0x7dd4d4: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd4d8: blr             lr
    // 0x7dd4dc: mov             x3, x0
    // 0x7dd4e0: ldur            x2, [fp, #-0x20]
    // 0x7dd4e4: stur            x3, [fp, #-0x28]
    // 0x7dd4e8: LoadField: r4 = r2->field_7
    //     0x7dd4e8: ldur            w4, [x2, #7]
    // 0x7dd4ec: DecompressPointer r4
    //     0x7dd4ec: add             x4, x4, HEAP, lsl #32
    // 0x7dd4f0: stur            x4, [fp, #-0x18]
    // 0x7dd4f4: CheckStackOverflow
    //     0x7dd4f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dd4f8: cmp             SP, x16
    //     0x7dd4fc: b.ls            #0x7dd788
    // 0x7dd500: r0 = LoadClassIdInstr(r3)
    //     0x7dd500: ldur            x0, [x3, #-1]
    //     0x7dd504: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd508: mov             x1, x3
    // 0x7dd50c: r0 = GDT[cid_x0 + 0x4cb]()
    //     0x7dd50c: add             lr, x0, #0x4cb
    //     0x7dd510: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd514: blr             lr
    // 0x7dd518: tbnz            w0, #4, #0x7dd5e8
    // 0x7dd51c: ldur            x2, [fp, #-0x28]
    // 0x7dd520: r0 = LoadClassIdInstr(r2)
    //     0x7dd520: ldur            x0, [x2, #-1]
    //     0x7dd524: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd528: mov             x1, x2
    // 0x7dd52c: r0 = GDT[cid_x0 + 0x4f1]()
    //     0x7dd52c: add             lr, x0, #0x4f1
    //     0x7dd530: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd534: blr             lr
    // 0x7dd538: cmp             w0, NULL
    // 0x7dd53c: b.eq            #0x7dd5d8
    // 0x7dd540: LoadField: r3 = r0->field_b
    //     0x7dd540: ldur            w3, [x0, #0xb]
    // 0x7dd544: DecompressPointer r3
    //     0x7dd544: add             x3, x3, HEAP, lsl #32
    // 0x7dd548: stur            x3, [fp, #-0x38]
    // 0x7dd54c: LoadField: r4 = r0->field_f
    //     0x7dd54c: ldur            w4, [x0, #0xf]
    // 0x7dd550: DecompressPointer r4
    //     0x7dd550: add             x4, x4, HEAP, lsl #32
    // 0x7dd554: mov             x0, x3
    // 0x7dd558: ldur            x2, [fp, #-0x18]
    // 0x7dd55c: stur            x4, [fp, #-0x30]
    // 0x7dd560: r1 = Null
    //     0x7dd560: mov             x1, NULL
    // 0x7dd564: cmp             w2, NULL
    // 0x7dd568: b.eq            #0x7dd588
    // 0x7dd56c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x7dd56c: ldur            w4, [x2, #0x17]
    // 0x7dd570: DecompressPointer r4
    //     0x7dd570: add             x4, x4, HEAP, lsl #32
    // 0x7dd574: r8 = X0
    //     0x7dd574: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x7dd578: LoadField: r9 = r4->field_7
    //     0x7dd578: ldur            x9, [x4, #7]
    // 0x7dd57c: r3 = Null
    //     0x7dd57c: add             x3, PP, #0x14, lsl #12  ; [pp+0x14a90] Null
    //     0x7dd580: ldr             x3, [x3, #0xa90]
    // 0x7dd584: blr             x9
    // 0x7dd588: ldur            x0, [fp, #-0x30]
    // 0x7dd58c: ldur            x2, [fp, #-0x18]
    // 0x7dd590: r1 = Null
    //     0x7dd590: mov             x1, NULL
    // 0x7dd594: cmp             w2, NULL
    // 0x7dd598: b.eq            #0x7dd5b8
    // 0x7dd59c: LoadField: r4 = r2->field_1b
    //     0x7dd59c: ldur            w4, [x2, #0x1b]
    // 0x7dd5a0: DecompressPointer r4
    //     0x7dd5a0: add             x4, x4, HEAP, lsl #32
    // 0x7dd5a4: r8 = X1
    //     0x7dd5a4: ldr             x8, [PP, #0x1a0]  ; [pp+0x1a0] TypeParameter: X1
    // 0x7dd5a8: LoadField: r9 = r4->field_7
    //     0x7dd5a8: ldur            x9, [x4, #7]
    // 0x7dd5ac: r3 = Null
    //     0x7dd5ac: add             x3, PP, #0x14, lsl #12  ; [pp+0x14aa0] Null
    //     0x7dd5b0: ldr             x3, [x3, #0xaa0]
    // 0x7dd5b4: blr             x9
    // 0x7dd5b8: ldur            x1, [fp, #-0x20]
    // 0x7dd5bc: ldur            x2, [fp, #-0x38]
    // 0x7dd5c0: r0 = _hashCode()
    //     0x7dd5c0: bl              #0x923370  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode::_hashCode
    // 0x7dd5c4: ldur            x1, [fp, #-0x20]
    // 0x7dd5c8: ldur            x2, [fp, #-0x38]
    // 0x7dd5cc: ldur            x3, [fp, #-0x30]
    // 0x7dd5d0: mov             x5, x0
    // 0x7dd5d4: r0 = _set()
    //     0x7dd5d4: bl              #0x3cdbcc  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_set
    // 0x7dd5d8: ldur            x2, [fp, #-0x20]
    // 0x7dd5dc: ldur            x3, [fp, #-0x28]
    // 0x7dd5e0: ldur            x4, [fp, #-0x18]
    // 0x7dd5e4: b               #0x7dd4f4
    // 0x7dd5e8: ldur            x1, [fp, #-0x10]
    // 0x7dd5ec: ldur            x0, [fp, #-0x20]
    // 0x7dd5f0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7dd5f0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dd5f4: ldr             x0, [x0, #0xcb8]
    //     0x7dd5f8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dd5fc: cmp             w0, w16
    //     0x7dd600: b.ne            #0x7dd60c
    //     0x7dd604: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7dd608: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7dd60c: r1 = Null
    //     0x7dd60c: mov             x1, NULL
    // 0x7dd610: r2 = 6
    //     0x7dd610: mov             x2, #6
    // 0x7dd614: r0 = AllocateArray()
    //     0x7dd614: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dd618: r16 = "✅ LocationTrackingProvider: "
    //     0x7dd618: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ab0] "✅ LocationTrackingProvider: "
    //     0x7dd61c: ldr             x16, [x16, #0xab0]
    // 0x7dd620: StoreField: r0->field_f = r16
    //     0x7dd620: stur            w16, [x0, #0xf]
    // 0x7dd624: ldur            x1, [fp, #-0x20]
    // 0x7dd628: LoadField: r2 = r1->field_13
    //     0x7dd628: ldur            w2, [x1, #0x13]
    // 0x7dd62c: r3 = LoadInt32Instr(r2)
    //     0x7dd62c: sbfx            x3, x2, #1, #0x1f
    // 0x7dd630: asr             x2, x3, #1
    // 0x7dd634: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x7dd634: ldur            w3, [x1, #0x17]
    // 0x7dd638: r4 = LoadInt32Instr(r3)
    //     0x7dd638: sbfx            x4, x3, #1, #0x1f
    // 0x7dd63c: sub             x3, x2, x4
    // 0x7dd640: lsl             x2, x3, #1
    // 0x7dd644: StoreField: r0->field_13 = r2
    //     0x7dd644: stur            w2, [x0, #0x13]
    // 0x7dd648: r16 = " konum yüklendi"
    //     0x7dd648: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ab8] " konum yüklendi"
    //     0x7dd64c: ldr             x16, [x16, #0xab8]
    // 0x7dd650: ArrayStore: r0[0] = r16  ; List_4
    //     0x7dd650: stur            w16, [x0, #0x17]
    // 0x7dd654: str             x0, [SP]
    // 0x7dd658: r0 = _interpolate()
    //     0x7dd658: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dd65c: str             NULL, [SP]
    // 0x7dd660: mov             x1, x0
    // 0x7dd664: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd664: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd668: r0 = debugPrintThrottled()
    //     0x7dd668: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd66c: ldur            x0, [fp, #-0x10]
    // 0x7dd670: LoadField: r1 = r0->field_f
    //     0x7dd670: ldur            w1, [x0, #0xf]
    // 0x7dd674: DecompressPointer r1
    //     0x7dd674: add             x1, x1, HEAP, lsl #32
    // 0x7dd678: ldur            x0, [fp, #-0x20]
    // 0x7dd67c: StoreField: r1->field_2b = r0
    //     0x7dd67c: stur            w0, [x1, #0x2b]
    //     0x7dd680: ldurb           w16, [x1, #-1]
    //     0x7dd684: ldurb           w17, [x0, #-1]
    //     0x7dd688: and             x16, x17, x16, lsr #2
    //     0x7dd68c: tst             x16, HEAP, lsr #32
    //     0x7dd690: b.eq            #0x7dd698
    //     0x7dd694: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dd698: r2 = false
    //     0x7dd698: add             x2, NULL, #0x30  ; false
    // 0x7dd69c: StoreField: r1->field_37 = r2
    //     0x7dd69c: stur            w2, [x1, #0x37]
    // 0x7dd6a0: r0 = notifyListeners()
    //     0x7dd6a0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7dd6a4: str             NULL, [SP]
    // 0x7dd6a8: r1 = "✅ LocationTrackingProvider: isLoading = false yapıldı"
    //     0x7dd6a8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14ac0] "✅ LocationTrackingProvider: isLoading = false yapıldı"
    //     0x7dd6ac: ldr             x1, [x1, #0xac0]
    // 0x7dd6b0: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd6b0: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd6b4: r0 = debugPrintThrottled()
    //     0x7dd6b4: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd6b8: b               #0x7dd770
    // 0x7dd6bc: ldur            x0, [fp, #-0x10]
    // 0x7dd6c0: r2 = false
    //     0x7dd6c0: add             x2, NULL, #0x30  ; false
    // 0x7dd6c4: b               #0x7dd6d0
    // 0x7dd6c8: ldur            x0, [fp, #-0x10]
    // 0x7dd6cc: r2 = false
    //     0x7dd6cc: add             x2, NULL, #0x30  ; false
    // 0x7dd6d0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7dd6d0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dd6d4: ldr             x0, [x0, #0xcb8]
    //     0x7dd6d8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dd6dc: cmp             w0, w16
    //     0x7dd6e0: b.ne            #0x7dd6ec
    //     0x7dd6e4: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7dd6e8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7dd6ec: str             NULL, [SP]
    // 0x7dd6f0: r1 = "⚠️ LocationTrackingProvider: Konum verisi boş"
    //     0x7dd6f0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14ac8] "⚠️ LocationTrackingProvider: Konum verisi boş"
    //     0x7dd6f4: ldr             x1, [x1, #0xac8]
    // 0x7dd6f8: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd6f8: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd6fc: r0 = debugPrintThrottled()
    //     0x7dd6fc: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd700: ldur            x0, [fp, #-0x10]
    // 0x7dd704: LoadField: r1 = r0->field_f
    //     0x7dd704: ldur            w1, [x0, #0xf]
    // 0x7dd708: DecompressPointer r1
    //     0x7dd708: add             x1, x1, HEAP, lsl #32
    // 0x7dd70c: stur            x1, [fp, #-0x18]
    // 0x7dd710: r16 = <String, UserLocationModel>
    //     0x7dd710: add             x16, PP, #0x14, lsl #12  ; [pp+0x14a00] TypeArguments: <String, UserLocationModel>
    //     0x7dd714: ldr             x16, [x16, #0xa00]
    // 0x7dd718: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7dd71c: stp             lr, x16, [SP]
    // 0x7dd720: r0 = Map._fromLiteral()
    //     0x7dd720: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7dd724: ldur            x1, [fp, #-0x18]
    // 0x7dd728: StoreField: r1->field_2b = r0
    //     0x7dd728: stur            w0, [x1, #0x2b]
    //     0x7dd72c: ldurb           w16, [x1, #-1]
    //     0x7dd730: ldurb           w17, [x0, #-1]
    //     0x7dd734: and             x16, x17, x16, lsr #2
    //     0x7dd738: tst             x16, HEAP, lsr #32
    //     0x7dd73c: b.eq            #0x7dd744
    //     0x7dd740: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7dd744: ldur            x0, [fp, #-0x10]
    // 0x7dd748: LoadField: r1 = r0->field_f
    //     0x7dd748: ldur            w1, [x0, #0xf]
    // 0x7dd74c: DecompressPointer r1
    //     0x7dd74c: add             x1, x1, HEAP, lsl #32
    // 0x7dd750: r0 = false
    //     0x7dd750: add             x0, NULL, #0x30  ; false
    // 0x7dd754: StoreField: r1->field_37 = r0
    //     0x7dd754: stur            w0, [x1, #0x37]
    // 0x7dd758: r0 = notifyListeners()
    //     0x7dd758: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7dd75c: str             NULL, [SP]
    // 0x7dd760: r1 = "✅ LocationTrackingProvider: isLoading = false yapıldı (boş data)"
    //     0x7dd760: add             x1, PP, #0x14, lsl #12  ; [pp+0x14ad0] "✅ LocationTrackingProvider: isLoading = false yapıldı (boş data)"
    //     0x7dd764: ldr             x1, [x1, #0xad0]
    // 0x7dd768: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd768: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd76c: r0 = debugPrintThrottled()
    //     0x7dd76c: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd770: r0 = Null
    //     0x7dd770: mov             x0, NULL
    // 0x7dd774: r0 = ReturnAsyncNotFuture()
    //     0x7dd774: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7dd778: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dd778: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dd77c: b               #0x7dd134
    // 0x7dd780: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dd780: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dd784: b               #0x7dd288
    // 0x7dd788: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dd788: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dd78c: b               #0x7dd500
  }
  _ _createLocationEntry(/* No info */) async {
    // ** addr: 0x7dd790, size: 0x4b4
    // 0x7dd790: EnterFrame
    //     0x7dd790: stp             fp, lr, [SP, #-0x10]!
    //     0x7dd794: mov             fp, SP
    // 0x7dd798: AllocStack(0x100)
    //     0x7dd798: sub             SP, SP, #0x100
    // 0x7dd79c: SetupParameters(LocationTrackingProvider this /* r1 => r3, fp-0xc0 */, dynamic _ /* r3 => r1, fp-0xc8 */)
    //     0x7dd79c: stur            NULL, [fp, #-8]
    //     0x7dd7a0: stur            x1, [fp, #-0xb8]
    //     0x7dd7a4: mov             x16, x3
    //     0x7dd7a8: mov             x3, x1
    //     0x7dd7ac: mov             x1, x16
    //     0x7dd7b0: stur            x2, [fp, #-0xc0]
    //     0x7dd7b4: stur            x1, [fp, #-0xc8]
    // 0x7dd7b8: CheckStackOverflow
    //     0x7dd7b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dd7bc: cmp             SP, x16
    //     0x7dd7c0: b.ls            #0x7ddc3c
    // 0x7dd7c4: InitAsync() -> Future<MapEntry<String, UserLocationModel>?>
    //     0x7dd7c4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14a88] TypeArguments: <MapEntry<String, UserLocationModel>?>
    //     0x7dd7c8: ldr             x0, [x0, #0xa88]
    //     0x7dd7cc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7dd7d0: ldur            x1, [fp, #-0xb8]
    // 0x7dd7d4: ldur            x2, [fp, #-0xc0]
    // 0x7dd7d8: r0 = _getUserInfo()
    //     0x7dd7d8: bl              #0x5e3784  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::_getUserInfo
    // 0x7dd7dc: mov             x1, x0
    // 0x7dd7e0: stur            x1, [fp, #-0xd0]
    // 0x7dd7e4: r0 = Await()
    //     0x7dd7e4: bl              #0x3dd188  ; AwaitStub
    // 0x7dd7e8: mov             x1, x0
    // 0x7dd7ec: stur            x1, [fp, #-0xd0]
    // 0x7dd7f0: r0 = LoadStaticField(0xfe4)
    //     0x7dd7f0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dd7f4: ldr             x0, [x0, #0x1fc8]
    // 0x7dd7f8: cmp             w0, NULL
    // 0x7dd7fc: b.ne            #0x7dd808
    // 0x7dd800: r2 = Null
    //     0x7dd800: mov             x2, NULL
    // 0x7dd804: b               #0x7dd810
    // 0x7dd808: LoadField: r2 = r0->field_4b
    //     0x7dd808: ldur            w2, [x0, #0x4b]
    // 0x7dd80c: DecompressPointer r2
    //     0x7dd80c: add             x2, x2, HEAP, lsl #32
    // 0x7dd810: stur            x2, [fp, #-0xb8]
    // 0x7dd814: r0 = LoadStaticField(0xfe8)
    //     0x7dd814: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dd818: ldr             x0, [x0, #0x1fd0]
    // 0x7dd81c: tbz             w0, #4, #0x7dd900
    // 0x7dd820: cmp             w2, NULL
    // 0x7dd824: b.eq            #0x7dd900
    // 0x7dd828: LoadField: r0 = r1->field_f
    //     0x7dd828: ldur            w0, [x1, #0xf]
    // 0x7dd82c: DecompressPointer r0
    //     0x7dd82c: add             x0, x0, HEAP, lsl #32
    // 0x7dd830: r3 = LoadClassIdInstr(r0)
    //     0x7dd830: ldur            x3, [x0, #-1]
    //     0x7dd834: ubfx            x3, x3, #0xc, #0x14
    // 0x7dd838: stp             x2, x0, [SP]
    // 0x7dd83c: mov             x0, x3
    // 0x7dd840: mov             lr, x0
    // 0x7dd844: ldr             lr, [x21, lr, lsl #3]
    // 0x7dd848: blr             lr
    // 0x7dd84c: tbz             w0, #4, #0x7dd900
    // 0x7dd850: ldur            x2, [fp, #-0xc0]
    // 0x7dd854: ldur            x0, [fp, #-0xd0]
    // 0x7dd858: ldur            x1, [fp, #-0xb8]
    // 0x7dd85c: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7dd85c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7dd860: ldr             x0, [x0, #0xcb8]
    //     0x7dd864: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7dd868: cmp             w0, w16
    //     0x7dd86c: b.ne            #0x7dd878
    //     0x7dd870: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7dd874: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7dd878: r1 = Null
    //     0x7dd878: mov             x1, NULL
    // 0x7dd87c: r2 = 12
    //     0x7dd87c: mov             x2, #0xc
    // 0x7dd880: r0 = AllocateArray()
    //     0x7dd880: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7dd884: r16 = "🚫 LocationTrackingProvider: Farklı acenta - userId: "
    //     0x7dd884: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ad8] "🚫 LocationTrackingProvider: Farklı acenta - userId: "
    //     0x7dd888: ldr             x16, [x16, #0xad8]
    // 0x7dd88c: StoreField: r0->field_f = r16
    //     0x7dd88c: stur            w16, [x0, #0xf]
    // 0x7dd890: ldur            x1, [fp, #-0xc0]
    // 0x7dd894: StoreField: r0->field_13 = r1
    //     0x7dd894: stur            w1, [x0, #0x13]
    // 0x7dd898: r16 = ", userAgency: "
    //     0x7dd898: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ae0] ", userAgency: "
    //     0x7dd89c: ldr             x16, [x16, #0xae0]
    // 0x7dd8a0: ArrayStore: r0[0] = r16  ; List_4
    //     0x7dd8a0: stur            w16, [x0, #0x17]
    // 0x7dd8a4: ldur            x2, [fp, #-0xd0]
    // 0x7dd8a8: LoadField: r3 = r2->field_f
    //     0x7dd8a8: ldur            w3, [x2, #0xf]
    // 0x7dd8ac: DecompressPointer r3
    //     0x7dd8ac: add             x3, x3, HEAP, lsl #32
    // 0x7dd8b0: StoreField: r0->field_1b = r3
    //     0x7dd8b0: stur            w3, [x0, #0x1b]
    // 0x7dd8b4: r16 = ", currentAgency: "
    //     0x7dd8b4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ae8] ", currentAgency: "
    //     0x7dd8b8: ldr             x16, [x16, #0xae8]
    // 0x7dd8bc: StoreField: r0->field_1f = r16
    //     0x7dd8bc: stur            w16, [x0, #0x1f]
    // 0x7dd8c0: ldur            x3, [fp, #-0xb8]
    // 0x7dd8c4: StoreField: r0->field_23 = r3
    //     0x7dd8c4: stur            w3, [x0, #0x23]
    // 0x7dd8c8: str             x0, [SP]
    // 0x7dd8cc: r0 = _interpolate()
    //     0x7dd8cc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7dd8d0: mov             x2, x0
    // 0x7dd8d4: r0 = Closure: (String?, {int? wrapWidth}) => void from Function 'debugPrintThrottled': static.
    //     0x7dd8d4: ldr             x0, [PP, #0x1010]  ; [pp+0x1010] Closure: (String?, {int? wrapWidth}) => void from Function 'debugPrintThrottled': static. (0x7f22903cb80c)
    // 0x7dd8d8: stur            x2, [fp, #-0xe0]
    // 0x7dd8dc: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x7dd8dc: ldur            w3, [x0, #0x17]
    // 0x7dd8e0: DecompressPointer r3
    //     0x7dd8e0: add             x3, x3, HEAP, lsl #32
    // 0x7dd8e4: stur            x3, [fp, #-0xd8]
    // 0x7dd8e8: str             NULL, [SP]
    // 0x7dd8ec: mov             x1, x2
    // 0x7dd8f0: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7dd8f0: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7dd8f4: r0 = debugPrintThrottled()
    //     0x7dd8f4: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7dd8f8: r0 = Null
    //     0x7dd8f8: mov             x0, NULL
    // 0x7dd8fc: r0 = ReturnAsyncNotFuture()
    //     0x7dd8fc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7dd900: ldur            x4, [fp, #-0xc8]
    // 0x7dd904: ldur            x3, [fp, #-0xd0]
    // 0x7dd908: LoadField: r5 = r3->field_13
    //     0x7dd908: ldur            w5, [x3, #0x13]
    // 0x7dd90c: DecompressPointer r5
    //     0x7dd90c: add             x5, x5, HEAP, lsl #32
    // 0x7dd910: stur            x5, [fp, #-0xb8]
    // 0x7dd914: r0 = LoadClassIdInstr(r4)
    //     0x7dd914: ldur            x0, [x4, #-1]
    //     0x7dd918: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd91c: mov             x1, x4
    // 0x7dd920: r2 = "latitude"
    //     0x7dd920: ldr             x2, [PP, #0xb8]  ; [pp+0xb8] "latitude"
    // 0x7dd924: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7dd924: add             lr, x0, #0x36e
    //     0x7dd928: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd92c: blr             lr
    // 0x7dd930: mov             x3, x0
    // 0x7dd934: r2 = Null
    //     0x7dd934: mov             x2, NULL
    // 0x7dd938: r1 = Null
    //     0x7dd938: mov             x1, NULL
    // 0x7dd93c: stur            x3, [fp, #-0xd8]
    // 0x7dd940: branchIfSmi(r0, 0x7dd96c)
    //     0x7dd940: tbz             w0, #0, #0x7dd96c
    // 0x7dd944: r4 = LoadClassIdInstr(r0)
    //     0x7dd944: ldur            x4, [x0, #-1]
    //     0x7dd948: ubfx            x4, x4, #0xc, #0x14
    // 0x7dd94c: sub             x4, x4, #0x3c
    // 0x7dd950: cmp             x4, #2
    // 0x7dd954: b.ls            #0x7dd96c
    // 0x7dd958: r8 = num?
    //     0x7dd958: add             x8, PP, #0xe, lsl #12  ; [pp+0xecb8] Type: num?
    //     0x7dd95c: ldr             x8, [x8, #0xcb8]
    // 0x7dd960: r3 = Null
    //     0x7dd960: add             x3, PP, #0x14, lsl #12  ; [pp+0x14af0] Null
    //     0x7dd964: ldr             x3, [x3, #0xaf0]
    // 0x7dd968: r0 = DefaultNullableTypeTest()
    //     0x7dd968: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x7dd96c: ldur            x1, [fp, #-0xd8]
    // 0x7dd970: cmp             w1, NULL
    // 0x7dd974: b.ne            #0x7dd980
    // 0x7dd978: r0 = Null
    //     0x7dd978: mov             x0, NULL
    // 0x7dd97c: b               #0x7dd9a0
    // 0x7dd980: r0 = 60
    //     0x7dd980: mov             x0, #0x3c
    // 0x7dd984: branchIfSmi(r1, 0x7dd990)
    //     0x7dd984: tbz             w1, #0, #0x7dd990
    // 0x7dd988: r0 = LoadClassIdInstr(r1)
    //     0x7dd988: ldur            x0, [x1, #-1]
    //     0x7dd98c: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd990: str             x1, [SP]
    // 0x7dd994: r0 = GDT[cid_x0 + -0x1000]()
    //     0x7dd994: sub             lr, x0, #1, lsl #12
    //     0x7dd998: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd99c: blr             lr
    // 0x7dd9a0: cmp             w0, NULL
    // 0x7dd9a4: b.ne            #0x7dd9b0
    // 0x7dd9a8: d0 = 0.000000
    //     0x7dd9a8: eor             v0.16b, v0.16b, v0.16b
    // 0x7dd9ac: b               #0x7dd9b4
    // 0x7dd9b0: LoadField: d0 = r0->field_7
    //     0x7dd9b0: ldur            d0, [x0, #7]
    // 0x7dd9b4: ldur            x3, [fp, #-0xc8]
    // 0x7dd9b8: stur            d0, [fp, #-0xe8]
    // 0x7dd9bc: r0 = LoadClassIdInstr(r3)
    //     0x7dd9bc: ldur            x0, [x3, #-1]
    //     0x7dd9c0: ubfx            x0, x0, #0xc, #0x14
    // 0x7dd9c4: mov             x1, x3
    // 0x7dd9c8: r2 = "longitude"
    //     0x7dd9c8: ldr             x2, [PP, #0xc0]  ; [pp+0xc0] "longitude"
    // 0x7dd9cc: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7dd9cc: add             lr, x0, #0x36e
    //     0x7dd9d0: ldr             lr, [x21, lr, lsl #3]
    //     0x7dd9d4: blr             lr
    // 0x7dd9d8: mov             x3, x0
    // 0x7dd9dc: r2 = Null
    //     0x7dd9dc: mov             x2, NULL
    // 0x7dd9e0: r1 = Null
    //     0x7dd9e0: mov             x1, NULL
    // 0x7dd9e4: stur            x3, [fp, #-0xd8]
    // 0x7dd9e8: branchIfSmi(r0, 0x7dda14)
    //     0x7dd9e8: tbz             w0, #0, #0x7dda14
    // 0x7dd9ec: r4 = LoadClassIdInstr(r0)
    //     0x7dd9ec: ldur            x4, [x0, #-1]
    //     0x7dd9f0: ubfx            x4, x4, #0xc, #0x14
    // 0x7dd9f4: sub             x4, x4, #0x3c
    // 0x7dd9f8: cmp             x4, #2
    // 0x7dd9fc: b.ls            #0x7dda14
    // 0x7dda00: r8 = num?
    //     0x7dda00: add             x8, PP, #0xe, lsl #12  ; [pp+0xecb8] Type: num?
    //     0x7dda04: ldr             x8, [x8, #0xcb8]
    // 0x7dda08: r3 = Null
    //     0x7dda08: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b00] Null
    //     0x7dda0c: ldr             x3, [x3, #0xb00]
    // 0x7dda10: r0 = DefaultNullableTypeTest()
    //     0x7dda10: bl              #0x925f80  ; DefaultNullableTypeTestStub
    // 0x7dda14: ldur            x1, [fp, #-0xd8]
    // 0x7dda18: cmp             w1, NULL
    // 0x7dda1c: b.ne            #0x7dda28
    // 0x7dda20: r0 = Null
    //     0x7dda20: mov             x0, NULL
    // 0x7dda24: b               #0x7dda48
    // 0x7dda28: r0 = 60
    //     0x7dda28: mov             x0, #0x3c
    // 0x7dda2c: branchIfSmi(r1, 0x7dda38)
    //     0x7dda2c: tbz             w1, #0, #0x7dda38
    // 0x7dda30: r0 = LoadClassIdInstr(r1)
    //     0x7dda30: ldur            x0, [x1, #-1]
    //     0x7dda34: ubfx            x0, x0, #0xc, #0x14
    // 0x7dda38: str             x1, [SP]
    // 0x7dda3c: r0 = GDT[cid_x0 + -0x1000]()
    //     0x7dda3c: sub             lr, x0, #1, lsl #12
    //     0x7dda40: ldr             lr, [x21, lr, lsl #3]
    //     0x7dda44: blr             lr
    // 0x7dda48: cmp             w0, NULL
    // 0x7dda4c: b.ne            #0x7dda58
    // 0x7dda50: d0 = 0.000000
    //     0x7dda50: eor             v0.16b, v0.16b, v0.16b
    // 0x7dda54: b               #0x7dda5c
    // 0x7dda58: LoadField: d0 = r0->field_7
    //     0x7dda58: ldur            d0, [x0, #7]
    // 0x7dda5c: ldur            x3, [fp, #-0xc8]
    // 0x7dda60: stur            d0, [fp, #-0xf0]
    // 0x7dda64: r0 = LoadClassIdInstr(r3)
    //     0x7dda64: ldur            x0, [x3, #-1]
    //     0x7dda68: ubfx            x0, x0, #0xc, #0x14
    // 0x7dda6c: mov             x1, x3
    // 0x7dda70: r2 = "timestamp"
    //     0x7dda70: add             x2, PP, #0xb, lsl #12  ; [pp+0xbae0] "timestamp"
    //     0x7dda74: ldr             x2, [x2, #0xae0]
    // 0x7dda78: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7dda78: add             lr, x0, #0x36e
    //     0x7dda7c: ldr             lr, [x21, lr, lsl #3]
    //     0x7dda80: blr             lr
    // 0x7dda84: cmp             w0, NULL
    // 0x7dda88: b.eq            #0x7ddb28
    // 0x7dda8c: ldur            x1, [fp, #-0xc8]
    // 0x7dda90: r0 = DateTime()
    //     0x7dda90: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7dda94: mov             x4, x0
    // 0x7dda98: ldur            x3, [fp, #-0xc8]
    // 0x7dda9c: stur            x4, [fp, #-0xd8]
    // 0x7ddaa0: r0 = LoadClassIdInstr(r3)
    //     0x7ddaa0: ldur            x0, [x3, #-1]
    //     0x7ddaa4: ubfx            x0, x0, #0xc, #0x14
    // 0x7ddaa8: mov             x1, x3
    // 0x7ddaac: r2 = "timestamp"
    //     0x7ddaac: add             x2, PP, #0xb, lsl #12  ; [pp+0xbae0] "timestamp"
    //     0x7ddab0: ldr             x2, [x2, #0xae0]
    // 0x7ddab4: r0 = GDT[cid_x0 + 0x36e]()
    //     0x7ddab4: add             lr, x0, #0x36e
    //     0x7ddab8: ldr             lr, [x21, lr, lsl #3]
    //     0x7ddabc: blr             lr
    // 0x7ddac0: mov             x3, x0
    // 0x7ddac4: r2 = Null
    //     0x7ddac4: mov             x2, NULL
    // 0x7ddac8: r1 = Null
    //     0x7ddac8: mov             x1, NULL
    // 0x7ddacc: stur            x3, [fp, #-0xe0]
    // 0x7ddad0: branchIfSmi(r0, 0x7ddaf8)
    //     0x7ddad0: tbz             w0, #0, #0x7ddaf8
    // 0x7ddad4: r4 = LoadClassIdInstr(r0)
    //     0x7ddad4: ldur            x4, [x0, #-1]
    //     0x7ddad8: ubfx            x4, x4, #0xc, #0x14
    // 0x7ddadc: sub             x4, x4, #0x3c
    // 0x7ddae0: cmp             x4, #1
    // 0x7ddae4: b.ls            #0x7ddaf8
    // 0x7ddae8: r8 = int
    //     0x7ddae8: ldr             x8, [PP, #0x478]  ; [pp+0x478] Type: int
    // 0x7ddaec: r3 = Null
    //     0x7ddaec: add             x3, PP, #0x14, lsl #12  ; [pp+0x14b10] Null
    //     0x7ddaf0: ldr             x3, [x3, #0xb10]
    // 0x7ddaf4: r0 = int()
    //     0x7ddaf4: bl              #0x93a4a4  ; IsType_int_Stub
    // 0x7ddaf8: ldur            x0, [fp, #-0xe0]
    // 0x7ddafc: r1 = LoadInt32Instr(r0)
    //     0x7ddafc: sbfx            x1, x0, #1, #0x1f
    //     0x7ddb00: tbz             w0, #0, #0x7ddb08
    //     0x7ddb04: ldur            x1, [x0, #7]
    // 0x7ddb08: r0 = _validateMilliseconds()
    //     0x7ddb08: bl              #0x5e3748  ; [dart:core] DateTime::_validateMilliseconds
    // 0x7ddb0c: r16 = 1000
    //     0x7ddb0c: mov             x16, #0x3e8
    // 0x7ddb10: mul             x2, x0, x16
    // 0x7ddb14: ldur            x1, [fp, #-0xd8]
    // 0x7ddb18: r3 = false
    //     0x7ddb18: add             x3, NULL, #0x30  ; false
    // 0x7ddb1c: r0 = DateTime._withValue()
    //     0x7ddb1c: bl              #0x4e7190  ; [dart:core] DateTime::DateTime._withValue
    // 0x7ddb20: ldur            x3, [fp, #-0xd8]
    // 0x7ddb24: b               #0x7ddb58
    // 0x7ddb28: r0 = DateTime()
    //     0x7ddb28: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7ddb2c: mov             x1, x0
    // 0x7ddb30: r0 = false
    //     0x7ddb30: add             x0, NULL, #0x30  ; false
    // 0x7ddb34: stur            x1, [fp, #-0xc8]
    // 0x7ddb38: StoreField: r1->field_7 = r0
    //     0x7ddb38: stur            w0, [x1, #7]
    // 0x7ddb3c: r0 = _getCurrentMicros()
    //     0x7ddb3c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7ddb40: r1 = LoadInt32Instr(r0)
    //     0x7ddb40: sbfx            x1, x0, #1, #0x1f
    //     0x7ddb44: tbz             w0, #0, #0x7ddb4c
    //     0x7ddb48: ldur            x1, [x0, #7]
    // 0x7ddb4c: ldur            x0, [fp, #-0xc8]
    // 0x7ddb50: StoreField: r0->field_b = r1
    //     0x7ddb50: stur            x1, [x0, #0xb]
    // 0x7ddb54: mov             x3, x0
    // 0x7ddb58: ldur            x2, [fp, #-0xc0]
    // 0x7ddb5c: ldur            x0, [fp, #-0xd0]
    // 0x7ddb60: ldur            x1, [fp, #-0xb8]
    // 0x7ddb64: ldur            d1, [fp, #-0xe8]
    // 0x7ddb68: ldur            d0, [fp, #-0xf0]
    // 0x7ddb6c: stur            x3, [fp, #-0xd8]
    // 0x7ddb70: LoadField: r4 = r0->field_f
    //     0x7ddb70: ldur            w4, [x0, #0xf]
    // 0x7ddb74: DecompressPointer r4
    //     0x7ddb74: add             x4, x4, HEAP, lsl #32
    // 0x7ddb78: stur            x4, [fp, #-0xc8]
    // 0x7ddb7c: r0 = UserLocationModel()
    //     0x7ddb7c: bl              #0x5e371c  ; AllocateUserLocationModelStub -> UserLocationModel (size=0x24)
    // 0x7ddb80: mov             x2, x0
    // 0x7ddb84: ldur            x0, [fp, #-0xc0]
    // 0x7ddb88: stur            x2, [fp, #-0xe0]
    // 0x7ddb8c: StoreField: r2->field_7 = r0
    //     0x7ddb8c: stur            w0, [x2, #7]
    // 0x7ddb90: ldur            x3, [fp, #-0xb8]
    // 0x7ddb94: StoreField: r2->field_b = r3
    //     0x7ddb94: stur            w3, [x2, #0xb]
    // 0x7ddb98: ldur            d0, [fp, #-0xe8]
    // 0x7ddb9c: StoreField: r2->field_f = d0
    //     0x7ddb9c: stur            d0, [x2, #0xf]
    // 0x7ddba0: ldur            d1, [fp, #-0xf0]
    // 0x7ddba4: ArrayStore: r2[0] = d1  ; List_8
    //     0x7ddba4: stur            d1, [x2, #0x17]
    // 0x7ddba8: ldur            x4, [fp, #-0xd8]
    // 0x7ddbac: StoreField: r2->field_1f = r4
    //     0x7ddbac: stur            w4, [x2, #0x1f]
    // 0x7ddbb0: r1 = <String, UserLocationModel>
    //     0x7ddbb0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14a00] TypeArguments: <String, UserLocationModel>
    //     0x7ddbb4: ldr             x1, [x1, #0xa00]
    // 0x7ddbb8: r0 = MapEntry()
    //     0x7ddbb8: bl              #0x5ccea4  ; AllocateMapEntryStub -> MapEntry<X0, X1> (size=0x14)
    // 0x7ddbbc: mov             x1, x0
    // 0x7ddbc0: ldur            x0, [fp, #-0xc0]
    // 0x7ddbc4: StoreField: r1->field_b = r0
    //     0x7ddbc4: stur            w0, [x1, #0xb]
    // 0x7ddbc8: ldur            x0, [fp, #-0xe0]
    // 0x7ddbcc: StoreField: r1->field_f = r0
    //     0x7ddbcc: stur            w0, [x1, #0xf]
    // 0x7ddbd0: mov             x0, x1
    // 0x7ddbd4: r0 = ReturnAsyncNotFuture()
    //     0x7ddbd4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7ddbd8: sub             SP, fp, #0x100
    // 0x7ddbdc: stur            x0, [fp, #-0xb8]
    // 0x7ddbe0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7ddbe0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7ddbe4: ldr             x0, [x0, #0xcb8]
    //     0x7ddbe8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7ddbec: cmp             w0, w16
    //     0x7ddbf0: b.ne            #0x7ddbfc
    //     0x7ddbf4: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7ddbf8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7ddbfc: r1 = Null
    //     0x7ddbfc: mov             x1, NULL
    // 0x7ddc00: r2 = 4
    //     0x7ddc00: mov             x2, #4
    // 0x7ddc04: r0 = AllocateArray()
    //     0x7ddc04: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ddc08: r16 = "❌ LocationTrackingProvider: _createLocationEntry hatası: "
    //     0x7ddc08: add             x16, PP, #0x14, lsl #12  ; [pp+0x14b20] "❌ LocationTrackingProvider: _createLocationEntry hatası: "
    //     0x7ddc0c: ldr             x16, [x16, #0xb20]
    // 0x7ddc10: StoreField: r0->field_f = r16
    //     0x7ddc10: stur            w16, [x0, #0xf]
    // 0x7ddc14: ldur            x1, [fp, #-0xb8]
    // 0x7ddc18: StoreField: r0->field_13 = r1
    //     0x7ddc18: stur            w1, [x0, #0x13]
    // 0x7ddc1c: str             x0, [SP]
    // 0x7ddc20: r0 = _interpolate()
    //     0x7ddc20: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7ddc24: str             NULL, [SP]
    // 0x7ddc28: mov             x1, x0
    // 0x7ddc2c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7ddc2c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7ddc30: r0 = debugPrintThrottled()
    //     0x7ddc30: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7ddc34: r0 = Null
    //     0x7ddc34: mov             x0, NULL
    // 0x7ddc38: r0 = ReturnAsyncNotFuture()
    //     0x7ddc38: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7ddc3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ddc3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ddc40: b               #0x7dd7c4
  }
  get _ filteredLocations(/* No info */) {
    // ** addr: 0x7e0eb8, size: 0x13c
    // 0x7e0eb8: EnterFrame
    //     0x7e0eb8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0ebc: mov             fp, SP
    // 0x7e0ec0: AllocStack(0x20)
    //     0x7e0ec0: sub             SP, SP, #0x20
    // 0x7e0ec4: SetupParameters(LocationTrackingProvider this /* r1 => r1, fp-0x8 */)
    //     0x7e0ec4: stur            x1, [fp, #-8]
    // 0x7e0ec8: CheckStackOverflow
    //     0x7e0ec8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e0ecc: cmp             SP, x16
    //     0x7e0ed0: b.ls            #0x7e0fec
    // 0x7e0ed4: r1 = 1
    //     0x7e0ed4: mov             x1, #1
    // 0x7e0ed8: r0 = AllocateContext()
    //     0x7e0ed8: bl              #0x927010  ; AllocateContextStub
    // 0x7e0edc: mov             x2, x0
    // 0x7e0ee0: ldur            x0, [fp, #-8]
    // 0x7e0ee4: stur            x2, [fp, #-0x18]
    // 0x7e0ee8: StoreField: r2->field_f = r0
    //     0x7e0ee8: stur            w0, [x2, #0xf]
    // 0x7e0eec: LoadField: r1 = r0->field_3b
    //     0x7e0eec: ldur            w1, [x0, #0x3b]
    // 0x7e0ef0: DecompressPointer r1
    //     0x7e0ef0: add             x1, x1, HEAP, lsl #32
    // 0x7e0ef4: LoadField: r3 = r1->field_7
    //     0x7e0ef4: ldur            w3, [x1, #7]
    // 0x7e0ef8: cbnz            w3, #0x7e0f64
    // 0x7e0efc: LoadField: r2 = r0->field_2b
    //     0x7e0efc: ldur            w2, [x0, #0x2b]
    // 0x7e0f00: DecompressPointer r2
    //     0x7e0f00: add             x2, x2, HEAP, lsl #32
    // 0x7e0f04: stur            x2, [fp, #-0x10]
    // 0x7e0f08: r1 = <MapEntry<String, UserLocationModel>, String, UserLocationModel>
    //     0x7e0f08: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c560] TypeArguments: <MapEntry<String, UserLocationModel>, String, UserLocationModel>
    //     0x7e0f0c: ldr             x1, [x1, #0x560]
    // 0x7e0f10: r0 = _CompactEntriesIterable()
    //     0x7e0f10: bl              #0x5a3fc0  ; Allocate_CompactEntriesIterableStub -> _CompactEntriesIterable<C1X0, C1X1> (size=0x10)
    // 0x7e0f14: mov             x1, x0
    // 0x7e0f18: ldur            x0, [fp, #-0x10]
    // 0x7e0f1c: StoreField: r1->field_b = r0
    //     0x7e0f1c: stur            w0, [x1, #0xb]
    // 0x7e0f20: mov             x2, x1
    // 0x7e0f24: r1 = <MapEntry<String, UserLocationModel>, String, UserLocationModel>
    //     0x7e0f24: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c560] TypeArguments: <MapEntry<String, UserLocationModel>, String, UserLocationModel>
    //     0x7e0f28: ldr             x1, [x1, #0x560]
    // 0x7e0f2c: r0 = _GrowableList._ofEfficientLengthIterable()
    //     0x7e0f2c: bl              #0x3c786c  ; [dart:core] _GrowableList::_GrowableList._ofEfficientLengthIterable
    // 0x7e0f30: r1 = Function '<anonymous closure>':.
    //     0x7e0f30: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c568] AnonymousClosure: (0x7e0ff4), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::filteredLocations (0x7e0eb8)
    //     0x7e0f34: ldr             x1, [x1, #0x568]
    // 0x7e0f38: r2 = Null
    //     0x7e0f38: mov             x2, NULL
    // 0x7e0f3c: stur            x0, [fp, #-0x10]
    // 0x7e0f40: r0 = AllocateClosure()
    //     0x7e0f40: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0f44: str             x0, [SP]
    // 0x7e0f48: ldur            x1, [fp, #-0x10]
    // 0x7e0f4c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e0f4c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e0f50: r0 = sort()
    //     0x7e0f50: bl              #0x44d848  ; [dart:collection] ListBase::sort
    // 0x7e0f54: ldur            x0, [fp, #-0x10]
    // 0x7e0f58: LeaveFrame
    //     0x7e0f58: mov             SP, fp
    //     0x7e0f5c: ldp             fp, lr, [SP], #0x10
    // 0x7e0f60: ret
    //     0x7e0f60: ret             
    // 0x7e0f64: LoadField: r3 = r0->field_2b
    //     0x7e0f64: ldur            w3, [x0, #0x2b]
    // 0x7e0f68: DecompressPointer r3
    //     0x7e0f68: add             x3, x3, HEAP, lsl #32
    // 0x7e0f6c: stur            x3, [fp, #-0x10]
    // 0x7e0f70: r1 = <MapEntry<String, UserLocationModel>, String, UserLocationModel>
    //     0x7e0f70: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c560] TypeArguments: <MapEntry<String, UserLocationModel>, String, UserLocationModel>
    //     0x7e0f74: ldr             x1, [x1, #0x560]
    // 0x7e0f78: r0 = _CompactEntriesIterable()
    //     0x7e0f78: bl              #0x5a3fc0  ; Allocate_CompactEntriesIterableStub -> _CompactEntriesIterable<C1X0, C1X1> (size=0x10)
    // 0x7e0f7c: mov             x3, x0
    // 0x7e0f80: ldur            x0, [fp, #-0x10]
    // 0x7e0f84: stur            x3, [fp, #-8]
    // 0x7e0f88: StoreField: r3->field_b = r0
    //     0x7e0f88: stur            w0, [x3, #0xb]
    // 0x7e0f8c: ldur            x2, [fp, #-0x18]
    // 0x7e0f90: r1 = Function '<anonymous closure>':.
    //     0x7e0f90: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c570] AnonymousClosure: (0x7e1154), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::filteredLocations (0x7e0eb8)
    //     0x7e0f94: ldr             x1, [x1, #0x570]
    // 0x7e0f98: r0 = AllocateClosure()
    //     0x7e0f98: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0f9c: ldur            x1, [fp, #-8]
    // 0x7e0fa0: mov             x2, x0
    // 0x7e0fa4: r0 = where()
    //     0x7e0fa4: bl              #0x4e4048  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin::where
    // 0x7e0fa8: LoadField: r1 = r0->field_7
    //     0x7e0fa8: ldur            w1, [x0, #7]
    // 0x7e0fac: DecompressPointer r1
    //     0x7e0fac: add             x1, x1, HEAP, lsl #32
    // 0x7e0fb0: mov             x2, x0
    // 0x7e0fb4: r0 = _GrowableList.of()
    //     0x7e0fb4: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x7e0fb8: r1 = Function '<anonymous closure>':.
    //     0x7e0fb8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c578] AnonymousClosure: (0x7e0ff4), in [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::filteredLocations (0x7e0eb8)
    //     0x7e0fbc: ldr             x1, [x1, #0x578]
    // 0x7e0fc0: r2 = Null
    //     0x7e0fc0: mov             x2, NULL
    // 0x7e0fc4: stur            x0, [fp, #-8]
    // 0x7e0fc8: r0 = AllocateClosure()
    //     0x7e0fc8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e0fcc: str             x0, [SP]
    // 0x7e0fd0: ldur            x1, [fp, #-8]
    // 0x7e0fd4: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e0fd4: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e0fd8: r0 = sort()
    //     0x7e0fd8: bl              #0x44d848  ; [dart:collection] ListBase::sort
    // 0x7e0fdc: ldur            x0, [fp, #-8]
    // 0x7e0fe0: LeaveFrame
    //     0x7e0fe0: mov             SP, fp
    //     0x7e0fe4: ldp             fp, lr, [SP], #0x10
    // 0x7e0fe8: ret
    //     0x7e0fe8: ret             
    // 0x7e0fec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e0fec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e0ff0: b               #0x7e0ed4
  }
  [closure] int <anonymous closure>(dynamic, MapEntry<String, UserLocationModel>, MapEntry<String, UserLocationModel>) {
    // ** addr: 0x7e0ff4, size: 0x8c
    // 0x7e0ff4: EnterFrame
    //     0x7e0ff4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e0ff8: mov             fp, SP
    // 0x7e0ffc: CheckStackOverflow
    //     0x7e0ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1000: cmp             SP, x16
    //     0x7e1004: b.ls            #0x7e1070
    // 0x7e1008: ldr             x0, [fp, #0x18]
    // 0x7e100c: LoadField: r1 = r0->field_f
    //     0x7e100c: ldur            w1, [x0, #0xf]
    // 0x7e1010: DecompressPointer r1
    //     0x7e1010: add             x1, x1, HEAP, lsl #32
    // 0x7e1014: cmp             w1, NULL
    // 0x7e1018: b.eq            #0x7e1078
    // 0x7e101c: LoadField: r0 = r1->field_b
    //     0x7e101c: ldur            w0, [x1, #0xb]
    // 0x7e1020: DecompressPointer r0
    //     0x7e1020: add             x0, x0, HEAP, lsl #32
    // 0x7e1024: ldr             x1, [fp, #0x10]
    // 0x7e1028: LoadField: r2 = r1->field_f
    //     0x7e1028: ldur            w2, [x1, #0xf]
    // 0x7e102c: DecompressPointer r2
    //     0x7e102c: add             x2, x2, HEAP, lsl #32
    // 0x7e1030: cmp             w2, NULL
    // 0x7e1034: b.eq            #0x7e107c
    // 0x7e1038: LoadField: r1 = r2->field_b
    //     0x7e1038: ldur            w1, [x2, #0xb]
    // 0x7e103c: DecompressPointer r1
    //     0x7e103c: add             x1, x1, HEAP, lsl #32
    // 0x7e1040: mov             x2, x1
    // 0x7e1044: mov             x1, x0
    // 0x7e1048: r0 = compareTo()
    //     0x7e1048: bl              #0x442d40  ; [dart:core] _StringBase::compareTo
    // 0x7e104c: mov             x2, x0
    // 0x7e1050: r0 = BoxInt64Instr(r2)
    //     0x7e1050: sbfiz           x0, x2, #1, #0x1f
    //     0x7e1054: cmp             x2, x0, asr #1
    //     0x7e1058: b.eq            #0x7e1064
    //     0x7e105c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7e1060: stur            x2, [x0, #7]
    // 0x7e1064: LeaveFrame
    //     0x7e1064: mov             SP, fp
    //     0x7e1068: ldp             fp, lr, [SP], #0x10
    // 0x7e106c: ret
    //     0x7e106c: ret             
    // 0x7e1070: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1070: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1074: b               #0x7e1008
    // 0x7e1078: r0 = NullErrorSharedWithoutFPURegs()
    //     0x7e1078: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
    // 0x7e107c: r0 = NullErrorSharedWithoutFPURegs()
    //     0x7e107c: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] bool <anonymous closure>(dynamic, MapEntry<String, UserLocationModel>) {
    // ** addr: 0x7e1154, size: 0x128
    // 0x7e1154: EnterFrame
    //     0x7e1154: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1158: mov             fp, SP
    // 0x7e115c: AllocStack(0x20)
    //     0x7e115c: sub             SP, SP, #0x20
    // 0x7e1160: SetupParameters([dynamic _ /* r0 */])
    //     0x7e1160: ldr             x0, [fp, #0x18]
    //     0x7e1164: ldur            w1, [x0, #0x17]
    //     0x7e1168: add             x1, x1, HEAP, lsl #32
    //     0x7e116c: stur            x1, [fp, #-0x10]
    // 0x7e1170: CheckStackOverflow
    //     0x7e1170: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1174: cmp             SP, x16
    //     0x7e1178: b.ls            #0x7e1270
    // 0x7e117c: ldr             x0, [fp, #0x10]
    // 0x7e1180: LoadField: r2 = r0->field_f
    //     0x7e1180: ldur            w2, [x0, #0xf]
    // 0x7e1184: DecompressPointer r2
    //     0x7e1184: add             x2, x2, HEAP, lsl #32
    // 0x7e1188: stur            x2, [fp, #-8]
    // 0x7e118c: cmp             w2, NULL
    // 0x7e1190: b.eq            #0x7e1278
    // 0x7e1194: LoadField: r0 = r2->field_b
    //     0x7e1194: ldur            w0, [x2, #0xb]
    // 0x7e1198: DecompressPointer r0
    //     0x7e1198: add             x0, x0, HEAP, lsl #32
    // 0x7e119c: r3 = LoadClassIdInstr(r0)
    //     0x7e119c: ldur            x3, [x0, #-1]
    //     0x7e11a0: ubfx            x3, x3, #0xc, #0x14
    // 0x7e11a4: str             x0, [SP]
    // 0x7e11a8: mov             x0, x3
    // 0x7e11ac: r0 = GDT[cid_x0 + -0xffe]()
    //     0x7e11ac: sub             lr, x0, #0xffe
    //     0x7e11b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7e11b4: blr             lr
    // 0x7e11b8: mov             x1, x0
    // 0x7e11bc: ldur            x0, [fp, #-8]
    // 0x7e11c0: stur            x1, [fp, #-0x18]
    // 0x7e11c4: LoadField: r2 = r0->field_7
    //     0x7e11c4: ldur            w2, [x0, #7]
    // 0x7e11c8: DecompressPointer r2
    //     0x7e11c8: add             x2, x2, HEAP, lsl #32
    // 0x7e11cc: r0 = LoadClassIdInstr(r2)
    //     0x7e11cc: ldur            x0, [x2, #-1]
    //     0x7e11d0: ubfx            x0, x0, #0xc, #0x14
    // 0x7e11d4: str             x2, [SP]
    // 0x7e11d8: r0 = GDT[cid_x0 + -0xffe]()
    //     0x7e11d8: sub             lr, x0, #0xffe
    //     0x7e11dc: ldr             lr, [x21, lr, lsl #3]
    //     0x7e11e0: blr             lr
    // 0x7e11e4: mov             x4, x0
    // 0x7e11e8: ldur            x3, [fp, #-0x10]
    // 0x7e11ec: stur            x4, [fp, #-8]
    // 0x7e11f0: LoadField: r0 = r3->field_f
    //     0x7e11f0: ldur            w0, [x3, #0xf]
    // 0x7e11f4: DecompressPointer r0
    //     0x7e11f4: add             x0, x0, HEAP, lsl #32
    // 0x7e11f8: LoadField: r2 = r0->field_3b
    //     0x7e11f8: ldur            w2, [x0, #0x3b]
    // 0x7e11fc: DecompressPointer r2
    //     0x7e11fc: add             x2, x2, HEAP, lsl #32
    // 0x7e1200: ldur            x1, [fp, #-0x18]
    // 0x7e1204: r0 = LoadClassIdInstr(r1)
    //     0x7e1204: ldur            x0, [x1, #-1]
    //     0x7e1208: ubfx            x0, x0, #0xc, #0x14
    // 0x7e120c: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e120c: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e1210: r0 = GDT[cid_x0 + -0xff8]()
    //     0x7e1210: sub             lr, x0, #0xff8
    //     0x7e1214: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1218: blr             lr
    // 0x7e121c: tbnz            w0, #4, #0x7e1228
    // 0x7e1220: r0 = true
    //     0x7e1220: add             x0, NULL, #0x20  ; true
    // 0x7e1224: b               #0x7e1264
    // 0x7e1228: ldur            x0, [fp, #-0x10]
    // 0x7e122c: ldur            x1, [fp, #-8]
    // 0x7e1230: LoadField: r2 = r0->field_f
    //     0x7e1230: ldur            w2, [x0, #0xf]
    // 0x7e1234: DecompressPointer r2
    //     0x7e1234: add             x2, x2, HEAP, lsl #32
    // 0x7e1238: LoadField: r0 = r2->field_3b
    //     0x7e1238: ldur            w0, [x2, #0x3b]
    // 0x7e123c: DecompressPointer r0
    //     0x7e123c: add             x0, x0, HEAP, lsl #32
    // 0x7e1240: r2 = LoadClassIdInstr(r1)
    //     0x7e1240: ldur            x2, [x1, #-1]
    //     0x7e1244: ubfx            x2, x2, #0xc, #0x14
    // 0x7e1248: mov             x16, x0
    // 0x7e124c: mov             x0, x2
    // 0x7e1250: mov             x2, x16
    // 0x7e1254: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e1254: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e1258: r0 = GDT[cid_x0 + -0xff8]()
    //     0x7e1258: sub             lr, x0, #0xff8
    //     0x7e125c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1260: blr             lr
    // 0x7e1264: LeaveFrame
    //     0x7e1264: mov             SP, fp
    //     0x7e1268: ldp             fp, lr, [SP], #0x10
    // 0x7e126c: ret
    //     0x7e126c: ret             
    // 0x7e1270: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1270: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1274: b               #0x7e117c
    // 0x7e1278: r0 = NullErrorSharedWithoutFPURegs()
    //     0x7e1278: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  _ setSearchQuery(/* No info */) {
    // ** addr: 0x7e1c50, size: 0x70
    // 0x7e1c50: EnterFrame
    //     0x7e1c50: stp             fp, lr, [SP, #-0x10]!
    //     0x7e1c54: mov             fp, SP
    // 0x7e1c58: AllocStack(0x10)
    //     0x7e1c58: sub             SP, SP, #0x10
    // 0x7e1c5c: SetupParameters(LocationTrackingProvider this /* r1 => r1, fp-0x8 */)
    //     0x7e1c5c: stur            x1, [fp, #-8]
    // 0x7e1c60: CheckStackOverflow
    //     0x7e1c60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e1c64: cmp             SP, x16
    //     0x7e1c68: b.ls            #0x7e1cb8
    // 0x7e1c6c: r0 = LoadClassIdInstr(r2)
    //     0x7e1c6c: ldur            x0, [x2, #-1]
    //     0x7e1c70: ubfx            x0, x0, #0xc, #0x14
    // 0x7e1c74: str             x2, [SP]
    // 0x7e1c78: r0 = GDT[cid_x0 + -0xffe]()
    //     0x7e1c78: sub             lr, x0, #0xffe
    //     0x7e1c7c: ldr             lr, [x21, lr, lsl #3]
    //     0x7e1c80: blr             lr
    // 0x7e1c84: ldur            x1, [fp, #-8]
    // 0x7e1c88: StoreField: r1->field_3b = r0
    //     0x7e1c88: stur            w0, [x1, #0x3b]
    //     0x7e1c8c: ldurb           w16, [x1, #-1]
    //     0x7e1c90: ldurb           w17, [x0, #-1]
    //     0x7e1c94: and             x16, x17, x16, lsr #2
    //     0x7e1c98: tst             x16, HEAP, lsr #32
    //     0x7e1c9c: b.eq            #0x7e1ca4
    //     0x7e1ca0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7e1ca4: r0 = notifyListeners()
    //     0x7e1ca4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e1ca8: r0 = Null
    //     0x7e1ca8: mov             x0, NULL
    // 0x7e1cac: LeaveFrame
    //     0x7e1cac: mov             SP, fp
    //     0x7e1cb0: ldp             fp, lr, [SP], #0x10
    // 0x7e1cb4: ret
    //     0x7e1cb4: ret             
    // 0x7e1cb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e1cb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e1cbc: b               #0x7e1c6c
  }
}
