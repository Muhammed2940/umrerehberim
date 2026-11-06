// lib: , url: package:umrem_demo/features/adimsayar/step_counter_view.dart

// class id: 1049509, size: 0x8
class :: {
}

// class id: 2494, size: 0x18, field offset: 0x14
class _StepCounterViewState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5cd514, size: 0x30
    // 0x5cd514: EnterFrame
    //     0x5cd514: stp             fp, lr, [SP, #-0x10]!
    //     0x5cd518: mov             fp, SP
    // 0x5cd51c: CheckStackOverflow
    //     0x5cd51c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cd520: cmp             SP, x16
    //     0x5cd524: b.ls            #0x5cd53c
    // 0x5cd528: r0 = init()
    //     0x5cd528: bl              #0x5cd564  ; [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::init
    // 0x5cd52c: r0 = Null
    //     0x5cd52c: mov             x0, NULL
    // 0x5cd530: LeaveFrame
    //     0x5cd530: mov             SP, fp
    //     0x5cd534: ldp             fp, lr, [SP], #0x10
    // 0x5cd538: ret
    //     0x5cd538: ret             
    // 0x5cd53c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cd53c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cd540: b               #0x5cd528
  }
  _ init(/* No info */) async {
    // ** addr: 0x5cd564, size: 0x138
    // 0x5cd564: EnterFrame
    //     0x5cd564: stp             fp, lr, [SP, #-0x10]!
    //     0x5cd568: mov             fp, SP
    // 0x5cd56c: AllocStack(0x30)
    //     0x5cd56c: sub             SP, SP, #0x30
    // 0x5cd570: SetupParameters(_StepCounterViewState this /* r1 => r1, fp-0x10 */)
    //     0x5cd570: stur            NULL, [fp, #-8]
    //     0x5cd574: stur            x1, [fp, #-0x10]
    // 0x5cd578: CheckStackOverflow
    //     0x5cd578: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cd57c: cmp             SP, x16
    //     0x5cd580: b.ls            #0x5cd690
    // 0x5cd584: r1 = 1
    //     0x5cd584: mov             x1, #1
    // 0x5cd588: r0 = AllocateContext()
    //     0x5cd588: bl              #0x927010  ; AllocateContextStub
    // 0x5cd58c: mov             x2, x0
    // 0x5cd590: ldur            x1, [fp, #-0x10]
    // 0x5cd594: stur            x2, [fp, #-0x18]
    // 0x5cd598: StoreField: r2->field_f = r1
    //     0x5cd598: stur            w1, [x2, #0xf]
    // 0x5cd59c: InitAsync() -> Future<void?>
    //     0x5cd59c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5cd5a0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cd5a4: r0 = init()
    //     0x5cd5a4: bl              #0x5d2074  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::init
    // 0x5cd5a8: mov             x1, x0
    // 0x5cd5ac: stur            x1, [fp, #-0x20]
    // 0x5cd5b0: r0 = Await()
    //     0x5cd5b0: bl              #0x3dd188  ; AwaitStub
    // 0x5cd5b4: r0 = InitLateStaticField(0xea4) // [package:get/get_core/src/get_main.dart] ::Get
    //     0x5cd5b4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5cd5b8: ldr             x0, [x0, #0x1d48]
    //     0x5cd5bc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5cd5c0: cmp             w0, w16
    //     0x5cd5c4: b.ne            #0x5cd5d4
    //     0x5cd5c8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20c20] Field <::.Get>: static late final (offset: 0xea4)
    //     0x5cd5cc: ldr             x2, [x2, #0xc20]
    //     0x5cd5d0: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5cd5d4: r16 = <StepController>
    //     0x5cd5d4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20c28] TypeArguments: <StepController>
    //     0x5cd5d8: ldr             x16, [x16, #0xc28]
    // 0x5cd5dc: str             x16, [SP]
    // 0x5cd5e0: r4 = const [0x1, 0, 0, 0, null]
    //     0x5cd5e0: ldr             x4, [PP, #0x50]  ; [pp+0x50] List(5) [0x1, 0, 0, 0, Null]
    // 0x5cd5e4: r0 = Inst.isRegistered()
    //     0x5cd5e4: bl              #0x5d1ff4  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.isRegistered
    // 0x5cd5e8: tbz             w0, #4, #0x5cd614
    // 0x5cd5ec: r0 = StepController()
    //     0x5cd5ec: bl              #0x5d1fe8  ; AllocateStepControllerStub -> StepController (size=0x4c)
    // 0x5cd5f0: mov             x1, x0
    // 0x5cd5f4: stur            x0, [fp, #-0x20]
    // 0x5cd5f8: r0 = StepController()
    //     0x5cd5f8: bl              #0x5d1314  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::StepController
    // 0x5cd5fc: r16 = <StepController>
    //     0x5cd5fc: add             x16, PP, #0x20, lsl #12  ; [pp+0x20c28] TypeArguments: <StepController>
    //     0x5cd600: ldr             x16, [x16, #0xc28]
    // 0x5cd604: ldur            lr, [fp, #-0x20]
    // 0x5cd608: stp             lr, x16, [SP]
    // 0x5cd60c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5cd60c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5cd610: r0 = Inst.put()
    //     0x5cd610: bl              #0x5d082c  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.put
    // 0x5cd614: ldur            x0, [fp, #-0x10]
    // 0x5cd618: LoadField: r1 = r0->field_f
    //     0x5cd618: ldur            w1, [x0, #0xf]
    // 0x5cd61c: DecompressPointer r1
    //     0x5cd61c: add             x1, x1, HEAP, lsl #32
    // 0x5cd620: cmp             w1, NULL
    // 0x5cd624: b.eq            #0x5cd644
    // 0x5cd628: ldur            x2, [fp, #-0x18]
    // 0x5cd62c: r1 = Function '<anonymous closure>':.
    //     0x5cd62c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20c30] AnonymousClosure: (0x5d23cc), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::init (0x5cd564)
    //     0x5cd630: ldr             x1, [x1, #0xc30]
    // 0x5cd634: r0 = AllocateClosure()
    //     0x5cd634: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5cd638: ldur            x1, [fp, #-0x10]
    // 0x5cd63c: mov             x2, x0
    // 0x5cd640: r0 = setState()
    //     0x5cd640: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5cd644: ldur            x1, [fp, #-0x10]
    // 0x5cd648: r0 = checkAndRequestStepPermission()
    //     0x5cd648: bl              #0x5d0278  ; [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::checkAndRequestStepPermission
    // 0x5cd64c: mov             x1, x0
    // 0x5cd650: stur            x1, [fp, #-0x20]
    // 0x5cd654: r0 = Await()
    //     0x5cd654: bl              #0x3dd188  ; AwaitStub
    // 0x5cd658: r16 = true
    //     0x5cd658: add             x16, NULL, #0x20  ; true
    // 0x5cd65c: cmp             w0, w16
    // 0x5cd660: b.ne            #0x5cd688
    // 0x5cd664: ldur            x0, [fp, #-0x10]
    // 0x5cd668: LoadField: r1 = r0->field_13
    //     0x5cd668: ldur            w1, [x0, #0x13]
    // 0x5cd66c: DecompressPointer r1
    //     0x5cd66c: add             x1, x1, HEAP, lsl #32
    // 0x5cd670: cmp             w1, NULL
    // 0x5cd674: b.eq            #0x5cd698
    // 0x5cd678: r0 = initPlatformState()
    //     0x5cd678: bl              #0x5cd69c  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::initPlatformState
    // 0x5cd67c: mov             x1, x0
    // 0x5cd680: stur            x1, [fp, #-0x10]
    // 0x5cd684: r0 = Await()
    //     0x5cd684: bl              #0x3dd188  ; AwaitStub
    // 0x5cd688: r0 = Null
    //     0x5cd688: mov             x0, NULL
    // 0x5cd68c: r0 = ReturnAsyncNotFuture()
    //     0x5cd68c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cd690: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cd690: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cd694: b               #0x5cd584
    // 0x5cd698: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5cd698: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ checkAndRequestStepPermission(/* No info */) async {
    // ** addr: 0x5d0278, size: 0x88
    // 0x5d0278: EnterFrame
    //     0x5d0278: stp             fp, lr, [SP, #-0x10]!
    //     0x5d027c: mov             fp, SP
    // 0x5d0280: AllocStack(0x18)
    //     0x5d0280: sub             SP, SP, #0x18
    // 0x5d0284: SetupParameters(_StepCounterViewState this /* r1 => r1, fp-0x10 */)
    //     0x5d0284: stur            NULL, [fp, #-8]
    //     0x5d0288: stur            x1, [fp, #-0x10]
    // 0x5d028c: CheckStackOverflow
    //     0x5d028c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d0290: cmp             SP, x16
    //     0x5d0294: b.ls            #0x5d02f8
    // 0x5d0298: InitAsync() -> Future<bool>
    //     0x5d0298: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5d029c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d02a0: r0 = PermissionActions.status()
    //     0x5d02a0: bl              #0x5d0720  ; [package:permission_handler/permission_handler.dart] ::PermissionActions.status
    // 0x5d02a4: mov             x1, x0
    // 0x5d02a8: stur            x1, [fp, #-0x18]
    // 0x5d02ac: r0 = Await()
    //     0x5d02ac: bl              #0x3dd188  ; AwaitStub
    // 0x5d02b0: r16 = Instance_PermissionStatus
    //     0x5d02b0: add             x16, PP, #0x20, lsl #12  ; [pp+0x20da8] Obj!PermissionStatus@a274c1
    //     0x5d02b4: ldr             x16, [x16, #0xda8]
    // 0x5d02b8: cmp             w0, w16
    // 0x5d02bc: b.ne            #0x5d02c8
    // 0x5d02c0: r0 = true
    //     0x5d02c0: add             x0, NULL, #0x20  ; true
    // 0x5d02c4: r0 = ReturnAsyncNotFuture()
    //     0x5d02c4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d02c8: r0 = PermissionActions.request()
    //     0x5d02c8: bl              #0x5d0300  ; [package:permission_handler/permission_handler.dart] ::PermissionActions.request
    // 0x5d02cc: mov             x1, x0
    // 0x5d02d0: stur            x1, [fp, #-0x10]
    // 0x5d02d4: r0 = Await()
    //     0x5d02d4: bl              #0x3dd188  ; AwaitStub
    // 0x5d02d8: r16 = Instance_PermissionStatus
    //     0x5d02d8: add             x16, PP, #0x20, lsl #12  ; [pp+0x20da8] Obj!PermissionStatus@a274c1
    //     0x5d02dc: ldr             x16, [x16, #0xda8]
    // 0x5d02e0: cmp             w0, w16
    // 0x5d02e4: r16 = true
    //     0x5d02e4: add             x16, NULL, #0x20  ; true
    // 0x5d02e8: r17 = false
    //     0x5d02e8: add             x17, NULL, #0x30  ; false
    // 0x5d02ec: csel            x1, x16, x17, eq
    // 0x5d02f0: mov             x0, x1
    // 0x5d02f4: r0 = ReturnAsyncNotFuture()
    //     0x5d02f4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d02f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d02f8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d02fc: b               #0x5d0298
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5d23cc, size: 0x9c
    // 0x5d23cc: EnterFrame
    //     0x5d23cc: stp             fp, lr, [SP, #-0x10]!
    //     0x5d23d0: mov             fp, SP
    // 0x5d23d4: AllocStack(0x10)
    //     0x5d23d4: sub             SP, SP, #0x10
    // 0x5d23d8: SetupParameters([dynamic _ /* r0 */])
    //     0x5d23d8: ldr             x0, [fp, #0x10]
    //     0x5d23dc: ldur            w1, [x0, #0x17]
    //     0x5d23e0: add             x1, x1, HEAP, lsl #32
    // 0x5d23e4: CheckStackOverflow
    //     0x5d23e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d23e8: cmp             SP, x16
    //     0x5d23ec: b.ls            #0x5d2460
    // 0x5d23f0: LoadField: r0 = r1->field_f
    //     0x5d23f0: ldur            w0, [x1, #0xf]
    // 0x5d23f4: DecompressPointer r0
    //     0x5d23f4: add             x0, x0, HEAP, lsl #32
    // 0x5d23f8: stur            x0, [fp, #-8]
    // 0x5d23fc: r0 = InitLateStaticField(0xea4) // [package:get/get_core/src/get_main.dart] ::Get
    //     0x5d23fc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5d2400: ldr             x0, [x0, #0x1d48]
    //     0x5d2404: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5d2408: cmp             w0, w16
    //     0x5d240c: b.ne            #0x5d241c
    //     0x5d2410: add             x2, PP, #0x20, lsl #12  ; [pp+0x20c20] Field <::.Get>: static late final (offset: 0xea4)
    //     0x5d2414: ldr             x2, [x2, #0xc20]
    //     0x5d2418: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5d241c: r16 = <StepController>
    //     0x5d241c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20c28] TypeArguments: <StepController>
    //     0x5d2420: ldr             x16, [x16, #0xc28]
    // 0x5d2424: str             x16, [SP]
    // 0x5d2428: r4 = const [0x1, 0, 0, 0, null]
    //     0x5d2428: ldr             x4, [PP, #0x50]  ; [pp+0x50] List(5) [0x1, 0, 0, 0, Null]
    // 0x5d242c: r0 = Inst.find()
    //     0x5d242c: bl              #0x5d2468  ; [package:get/get_instance/src/extension_instance.dart] ::Inst.find
    // 0x5d2430: ldur            x1, [fp, #-8]
    // 0x5d2434: StoreField: r1->field_13 = r0
    //     0x5d2434: stur            w0, [x1, #0x13]
    //     0x5d2438: ldurb           w16, [x1, #-1]
    //     0x5d243c: ldurb           w17, [x0, #-1]
    //     0x5d2440: and             x16, x17, x16, lsr #2
    //     0x5d2444: tst             x16, HEAP, lsr #32
    //     0x5d2448: b.eq            #0x5d2450
    //     0x5d244c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d2450: r0 = Null
    //     0x5d2450: mov             x0, NULL
    // 0x5d2454: LeaveFrame
    //     0x5d2454: mov             SP, fp
    //     0x5d2458: ldp             fp, lr, [SP], #0x10
    // 0x5d245c: ret
    //     0x5d245c: ret             
    // 0x5d2460: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d2460: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d2464: b               #0x5d23f0
  }
  _ build(/* No info */) {
    // ** addr: 0x6c97e4, size: 0x94
    // 0x6c97e4: EnterFrame
    //     0x6c97e4: stp             fp, lr, [SP, #-0x10]!
    //     0x6c97e8: mov             fp, SP
    // 0x6c97ec: AllocStack(0x8)
    //     0x6c97ec: sub             SP, SP, #8
    // 0x6c97f0: SetupParameters(_StepCounterViewState this /* r1 => r1, fp-0x8 */)
    //     0x6c97f0: stur            x1, [fp, #-8]
    // 0x6c97f4: r1 = 2
    //     0x6c97f4: mov             x1, #2
    // 0x6c97f8: r0 = AllocateContext()
    //     0x6c97f8: bl              #0x927010  ; AllocateContextStub
    // 0x6c97fc: mov             x1, x0
    // 0x6c9800: ldur            x0, [fp, #-8]
    // 0x6c9804: StoreField: r1->field_f = r0
    //     0x6c9804: stur            w0, [x1, #0xf]
    // 0x6c9808: r0 = Instance_Color
    //     0x6c9808: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x6c980c: ldr             x0, [x0, #0xb88]
    // 0x6c9810: StoreField: r1->field_13 = r0
    //     0x6c9810: stur            w0, [x1, #0x13]
    // 0x6c9814: mov             x2, x1
    // 0x6c9818: r1 = Function '<anonymous closure>':.
    //     0x6c9818: add             x1, PP, #0x20, lsl #12  ; [pp+0x20948] AnonymousClosure: (0x6c9884), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6c981c: ldr             x1, [x1, #0x948]
    // 0x6c9820: r0 = AllocateClosure()
    //     0x6c9820: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6c9824: stur            x0, [fp, #-8]
    // 0x6c9828: r0 = ScreenUtilInit()
    //     0x6c9828: bl              #0x6c9878  ; AllocateScreenUtilInitStub -> ScreenUtilInit (size=0x38)
    // 0x6c982c: ldur            x1, [fp, #-8]
    // 0x6c9830: StoreField: r0->field_b = r1
    //     0x6c9830: stur            w1, [x0, #0xb]
    // 0x6c9834: r1 = Closure: (MediaQueryData, MediaQueryData) => bool from Function 'size': static.
    //     0x6c9834: add             x1, PP, #0x20, lsl #12  ; [pp+0x20950] Closure: (MediaQueryData, MediaQueryData) => bool from Function 'size': static. (0x7f2290632d3c)
    //     0x6c9838: ldr             x1, [x1, #0x950]
    // 0x6c983c: StoreField: r0->field_27 = r1
    //     0x6c983c: stur            w1, [x0, #0x27]
    // 0x6c9840: r1 = Instance_Size
    //     0x6c9840: add             x1, PP, #0x20, lsl #12  ; [pp+0x20958] Obj!Size@a26571
    //     0x6c9844: ldr             x1, [x1, #0x958]
    // 0x6c9848: StoreField: r0->field_2f = r1
    //     0x6c9848: stur            w1, [x0, #0x2f]
    // 0x6c984c: r1 = true
    //     0x6c984c: add             x1, NULL, #0x20  ; true
    // 0x6c9850: StoreField: r0->field_13 = r1
    //     0x6c9850: stur            w1, [x0, #0x13]
    // 0x6c9854: ArrayStore: r0[0] = r1  ; List_4
    //     0x6c9854: stur            w1, [x0, #0x17]
    // 0x6c9858: r1 = false
    //     0x6c9858: add             x1, NULL, #0x30  ; false
    // 0x6c985c: StoreField: r0->field_1b = r1
    //     0x6c985c: stur            w1, [x0, #0x1b]
    // 0x6c9860: r1 = Closure: (num, ScreenUtil) => double from Function 'width': static.
    //     0x6c9860: add             x1, PP, #0x20, lsl #12  ; [pp+0x20960] Closure: (num, ScreenUtil) => double from Function 'width': static. (0x7f22906c0aac)
    //     0x6c9864: ldr             x1, [x1, #0x960]
    // 0x6c9868: StoreField: r0->field_2b = r1
    //     0x6c9868: stur            w1, [x0, #0x2b]
    // 0x6c986c: LeaveFrame
    //     0x6c986c: mov             SP, fp
    //     0x6c9870: ldp             fp, lr, [SP], #0x10
    // 0x6c9874: ret
    //     0x6c9874: ret             
  }
  [closure] Scaffold <anonymous closure>(dynamic, BuildContext, Widget?) {
    // ** addr: 0x6c9884, size: 0x22b0
    // 0x6c9884: EnterFrame
    //     0x6c9884: stp             fp, lr, [SP, #-0x10]!
    //     0x6c9888: mov             fp, SP
    // 0x6c988c: AllocStack(0xd8)
    //     0x6c988c: sub             SP, SP, #0xd8
    // 0x6c9890: SetupParameters([dynamic _ /* r0 */])
    //     0x6c9890: ldr             x0, [fp, #0x20]
    //     0x6c9894: ldur            w1, [x0, #0x17]
    //     0x6c9898: add             x1, x1, HEAP, lsl #32
    //     0x6c989c: stur            x1, [fp, #-8]
    // 0x6c98a0: CheckStackOverflow
    //     0x6c98a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6c98a4: cmp             SP, x16
    //     0x6c98a8: b.ls            #0x6cb8b4
    // 0x6c98ac: r1 = 1
    //     0x6c98ac: mov             x1, #1
    // 0x6c98b0: r0 = AllocateContext()
    //     0x6c98b0: bl              #0x927010  ; AllocateContextStub
    // 0x6c98b4: mov             x2, x0
    // 0x6c98b8: ldur            x0, [fp, #-8]
    // 0x6c98bc: stur            x2, [fp, #-0x10]
    // 0x6c98c0: StoreField: r2->field_b = r0
    //     0x6c98c0: stur            w0, [x2, #0xb]
    // 0x6c98c4: ldr             x1, [fp, #0x18]
    // 0x6c98c8: StoreField: r2->field_f = r1
    //     0x6c98c8: stur            w1, [x2, #0xf]
    // 0x6c98cc: LoadField: r1 = r0->field_f
    //     0x6c98cc: ldur            w1, [x0, #0xf]
    // 0x6c98d0: DecompressPointer r1
    //     0x6c98d0: add             x1, x1, HEAP, lsl #32
    // 0x6c98d4: LoadField: r3 = r1->field_13
    //     0x6c98d4: ldur            w3, [x1, #0x13]
    // 0x6c98d8: DecompressPointer r3
    //     0x6c98d8: add             x3, x3, HEAP, lsl #32
    // 0x6c98dc: cmp             w3, NULL
    // 0x6c98e0: b.ne            #0x6c98f8
    // 0x6c98e4: r0 = Instance_Scaffold
    //     0x6c98e4: add             x0, PP, #0x20, lsl #12  ; [pp+0x20988] Obj!Scaffold@a208d1
    //     0x6c98e8: ldr             x0, [x0, #0x988]
    // 0x6c98ec: LeaveFrame
    //     0x6c98ec: mov             SP, fp
    //     0x6c98f0: ldp             fp, lr, [SP], #0x10
    // 0x6c98f4: ret
    //     0x6c98f4: ret             
    // 0x6c98f8: r3 = Instance_Color
    //     0x6c98f8: ldr             x3, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6c98fc: r16 = 0.900000
    //     0x6c98fc: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x6c9900: ldr             x16, [x16, #0x190]
    // 0x6c9904: str             x16, [SP]
    // 0x6c9908: mov             x1, x3
    // 0x6c990c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6c990c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6c9910: ldr             x4, [x4, #0x198]
    // 0x6c9914: r0 = withValues()
    //     0x6c9914: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6c9918: stur            x0, [fp, #-0x18]
    // 0x6c991c: r0 = BoxDecoration()
    //     0x6c991c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6c9920: mov             x1, x0
    // 0x6c9924: ldur            x0, [fp, #-0x18]
    // 0x6c9928: stur            x1, [fp, #-0x20]
    // 0x6c992c: StoreField: r1->field_7 = r0
    //     0x6c992c: stur            w0, [x1, #7]
    // 0x6c9930: r0 = Instance_BoxShape
    //     0x6c9930: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x6c9934: ldr             x0, [x0, #0x1a0]
    // 0x6c9938: StoreField: r1->field_23 = r0
    //     0x6c9938: stur            w0, [x1, #0x23]
    // 0x6c993c: ldur            x0, [fp, #-8]
    // 0x6c9940: LoadField: r2 = r0->field_13
    //     0x6c9940: ldur            w2, [x0, #0x13]
    // 0x6c9944: DecompressPointer r2
    //     0x6c9944: add             x2, x2, HEAP, lsl #32
    // 0x6c9948: stur            x2, [fp, #-0x18]
    // 0x6c994c: r0 = Icon()
    //     0x6c994c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6c9950: mov             x3, x0
    // 0x6c9954: r0 = Instance_IconData
    //     0x6c9954: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a8] Obj!IconData@a09ce1
    //     0x6c9958: ldr             x0, [x0, #0x1a8]
    // 0x6c995c: stur            x3, [fp, #-8]
    // 0x6c9960: StoreField: r3->field_b = r0
    //     0x6c9960: stur            w0, [x3, #0xb]
    // 0x6c9964: ldur            x0, [fp, #-0x18]
    // 0x6c9968: StoreField: r3->field_23 = r0
    //     0x6c9968: stur            w0, [x3, #0x23]
    // 0x6c996c: ldur            x2, [fp, #-0x10]
    // 0x6c9970: r1 = Function '<anonymous closure>':.
    //     0x6c9970: add             x1, PP, #0x20, lsl #12  ; [pp+0x20990] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x6c9974: ldr             x1, [x1, #0x990]
    // 0x6c9978: r0 = AllocateClosure()
    //     0x6c9978: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6c997c: stur            x0, [fp, #-0x28]
    // 0x6c9980: r0 = IconButton()
    //     0x6c9980: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6c9984: mov             x1, x0
    // 0x6c9988: ldur            x0, [fp, #-0x28]
    // 0x6c998c: stur            x1, [fp, #-0x30]
    // 0x6c9990: StoreField: r1->field_3b = r0
    //     0x6c9990: stur            w0, [x1, #0x3b]
    // 0x6c9994: r0 = false
    //     0x6c9994: add             x0, NULL, #0x30  ; false
    // 0x6c9998: StoreField: r1->field_4f = r0
    //     0x6c9998: stur            w0, [x1, #0x4f]
    // 0x6c999c: ldur            x2, [fp, #-8]
    // 0x6c99a0: StoreField: r1->field_1f = r2
    //     0x6c99a0: stur            w2, [x1, #0x1f]
    // 0x6c99a4: r2 = Instance__IconButtonVariant
    //     0x6c99a4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6c99a8: ldr             x2, [x2, #0x1b8]
    // 0x6c99ac: StoreField: r1->field_6f = r2
    //     0x6c99ac: stur            w2, [x1, #0x6f]
    // 0x6c99b0: r0 = Container()
    //     0x6c99b0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6c99b4: stur            x0, [fp, #-8]
    // 0x6c99b8: r16 = Instance_EdgeInsets
    //     0x6c99b8: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x6c99bc: ldr             x16, [x16, #0xde8]
    // 0x6c99c0: ldur            lr, [fp, #-0x20]
    // 0x6c99c4: stp             lr, x16, [SP, #8]
    // 0x6c99c8: ldur            x16, [fp, #-0x30]
    // 0x6c99cc: str             x16, [SP]
    // 0x6c99d0: mov             x1, x0
    // 0x6c99d4: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x6c99d4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x6c99d8: ldr             x4, [x4, #0x1c0]
    // 0x6c99dc: r0 = Container()
    //     0x6c99dc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6c99e0: r16 = 0.900000
    //     0x6c99e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x6c99e4: ldr             x16, [x16, #0x190]
    // 0x6c99e8: str             x16, [SP]
    // 0x6c99ec: r1 = Instance_Color
    //     0x6c99ec: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6c99f0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6c99f0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6c99f4: ldr             x4, [x4, #0x198]
    // 0x6c99f8: r0 = withValues()
    //     0x6c99f8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6c99fc: stur            x0, [fp, #-0x20]
    // 0x6c9a00: r0 = Radius()
    //     0x6c9a00: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6c9a04: d0 = 20.000000
    //     0x6c9a04: fmov            d0, #20.00000000
    // 0x6c9a08: stur            x0, [fp, #-0x28]
    // 0x6c9a0c: StoreField: r0->field_7 = d0
    //     0x6c9a0c: stur            d0, [x0, #7]
    // 0x6c9a10: StoreField: r0->field_f = d0
    //     0x6c9a10: stur            d0, [x0, #0xf]
    // 0x6c9a14: r0 = BorderRadius()
    //     0x6c9a14: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6c9a18: mov             x1, x0
    // 0x6c9a1c: ldur            x0, [fp, #-0x28]
    // 0x6c9a20: stur            x1, [fp, #-0x30]
    // 0x6c9a24: StoreField: r1->field_7 = r0
    //     0x6c9a24: stur            w0, [x1, #7]
    // 0x6c9a28: StoreField: r1->field_b = r0
    //     0x6c9a28: stur            w0, [x1, #0xb]
    // 0x6c9a2c: StoreField: r1->field_f = r0
    //     0x6c9a2c: stur            w0, [x1, #0xf]
    // 0x6c9a30: StoreField: r1->field_13 = r0
    //     0x6c9a30: stur            w0, [x1, #0x13]
    // 0x6c9a34: r0 = BoxDecoration()
    //     0x6c9a34: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6c9a38: mov             x1, x0
    // 0x6c9a3c: ldur            x0, [fp, #-0x20]
    // 0x6c9a40: stur            x1, [fp, #-0x28]
    // 0x6c9a44: StoreField: r1->field_7 = r0
    //     0x6c9a44: stur            w0, [x1, #7]
    // 0x6c9a48: ldur            x0, [fp, #-0x30]
    // 0x6c9a4c: StoreField: r1->field_13 = r0
    //     0x6c9a4c: stur            w0, [x1, #0x13]
    // 0x6c9a50: r0 = Instance_BoxShape
    //     0x6c9a50: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6c9a54: ldr             x0, [x0, #0x1c8]
    // 0x6c9a58: StoreField: r1->field_23 = r0
    //     0x6c9a58: stur            w0, [x1, #0x23]
    // 0x6c9a5c: r0 = TextStyle()
    //     0x6c9a5c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6c9a60: mov             x1, x0
    // 0x6c9a64: r0 = true
    //     0x6c9a64: add             x0, NULL, #0x20  ; true
    // 0x6c9a68: stur            x1, [fp, #-0x20]
    // 0x6c9a6c: StoreField: r1->field_7 = r0
    //     0x6c9a6c: stur            w0, [x1, #7]
    // 0x6c9a70: ldur            x2, [fp, #-0x18]
    // 0x6c9a74: StoreField: r1->field_b = r2
    //     0x6c9a74: stur            w2, [x1, #0xb]
    // 0x6c9a78: r2 = 18.000000
    //     0x6c9a78: add             x2, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x6c9a7c: ldr             x2, [x2, #0xe08]
    // 0x6c9a80: StoreField: r1->field_1f = r2
    //     0x6c9a80: stur            w2, [x1, #0x1f]
    // 0x6c9a84: r2 = Instance_FontWeight
    //     0x6c9a84: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6c9a88: ldr             x2, [x2, #0x1d0]
    // 0x6c9a8c: StoreField: r1->field_23 = r2
    //     0x6c9a8c: stur            w2, [x1, #0x23]
    // 0x6c9a90: r0 = Text()
    //     0x6c9a90: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6c9a94: mov             x1, x0
    // 0x6c9a98: r0 = "Adım Sayar"
    //     0x6c9a98: add             x0, PP, #0x15, lsl #12  ; [pp+0x15d38] "Adım Sayar"
    //     0x6c9a9c: ldr             x0, [x0, #0xd38]
    // 0x6c9aa0: stur            x1, [fp, #-0x18]
    // 0x6c9aa4: StoreField: r1->field_b = r0
    //     0x6c9aa4: stur            w0, [x1, #0xb]
    // 0x6c9aa8: ldur            x0, [fp, #-0x20]
    // 0x6c9aac: StoreField: r1->field_13 = r0
    //     0x6c9aac: stur            w0, [x1, #0x13]
    // 0x6c9ab0: r0 = Container()
    //     0x6c9ab0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6c9ab4: stur            x0, [fp, #-0x20]
    // 0x6c9ab8: r16 = Instance_EdgeInsets
    //     0x6c9ab8: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x6c9abc: ldr             x16, [x16, #0x1e0]
    // 0x6c9ac0: ldur            lr, [fp, #-0x28]
    // 0x6c9ac4: stp             lr, x16, [SP, #8]
    // 0x6c9ac8: ldur            x16, [fp, #-0x18]
    // 0x6c9acc: str             x16, [SP]
    // 0x6c9ad0: mov             x1, x0
    // 0x6c9ad4: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6c9ad4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6c9ad8: ldr             x4, [x4, #0x1e8]
    // 0x6c9adc: r0 = Container()
    //     0x6c9adc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6c9ae0: r0 = AppBar()
    //     0x6c9ae0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6c9ae4: stur            x0, [fp, #-0x18]
    // 0x6c9ae8: r16 = Instance_Color
    //     0x6c9ae8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x6c9aec: ldr             x16, [x16, #0x860]
    // 0x6c9af0: r30 = 0.000000
    //     0x6c9af0: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6c9af4: stp             lr, x16, [SP, #0x10]
    // 0x6c9af8: ldur            x16, [fp, #-8]
    // 0x6c9afc: r30 = true
    //     0x6c9afc: add             lr, NULL, #0x20  ; true
    // 0x6c9b00: stp             lr, x16, [SP]
    // 0x6c9b04: mov             x1, x0
    // 0x6c9b08: ldur            x2, [fp, #-0x20]
    // 0x6c9b0c: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x2, centerTitle, 0x5, elevation, 0x3, leading, 0x4, null]
    //     0x6c9b0c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121f0] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x2, "centerTitle", 0x5, "elevation", 0x3, "leading", 0x4, Null]
    //     0x6c9b10: ldr             x4, [x4, #0x1f0]
    // 0x6c9b14: r0 = AppBar()
    //     0x6c9b14: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6c9b18: r1 = 8
    //     0x6c9b18: mov             x1, #8
    // 0x6c9b1c: r0 = SizeExtension.w()
    //     0x6c9b1c: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6c9b20: r1 = 16
    //     0x6c9b20: mov             x1, #0x10
    // 0x6c9b24: stur            d0, [fp, #-0x90]
    // 0x6c9b28: r0 = SizeExtension.h()
    //     0x6c9b28: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6c9b2c: stur            d0, [fp, #-0x98]
    // 0x6c9b30: r0 = EdgeInsets()
    //     0x6c9b30: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6c9b34: ldur            d0, [fp, #-0x90]
    // 0x6c9b38: stur            x0, [fp, #-8]
    // 0x6c9b3c: StoreField: r0->field_7 = d0
    //     0x6c9b3c: stur            d0, [x0, #7]
    // 0x6c9b40: ldur            d1, [fp, #-0x98]
    // 0x6c9b44: StoreField: r0->field_f = d1
    //     0x6c9b44: stur            d1, [x0, #0xf]
    // 0x6c9b48: ArrayStore: r0[0] = d0  ; List_8
    //     0x6c9b48: stur            d0, [x0, #0x17]
    // 0x6c9b4c: StoreField: r0->field_1f = d1
    //     0x6c9b4c: stur            d1, [x0, #0x1f]
    // 0x6c9b50: r1 = 40
    //     0x6c9b50: mov             x1, #0x28
    // 0x6c9b54: r0 = SizeExtension.r()
    //     0x6c9b54: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6c9b58: stur            d0, [fp, #-0x90]
    // 0x6c9b5c: r0 = Icon()
    //     0x6c9b5c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6c9b60: mov             x1, x0
    // 0x6c9b64: r0 = Instance_IconData
    //     0x6c9b64: add             x0, PP, #0x20, lsl #12  ; [pp+0x20998] Obj!IconData@a09cc1
    //     0x6c9b68: ldr             x0, [x0, #0x998]
    // 0x6c9b6c: stur            x1, [fp, #-0x20]
    // 0x6c9b70: StoreField: r1->field_b = r0
    //     0x6c9b70: stur            w0, [x1, #0xb]
    // 0x6c9b74: ldur            d0, [fp, #-0x90]
    // 0x6c9b78: r0 = inline_Allocate_Double()
    //     0x6c9b78: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6c9b7c: add             x0, x0, #0x10
    //     0x6c9b80: cmp             x2, x0
    //     0x6c9b84: b.ls            #0x6cb8bc
    //     0x6c9b88: str             x0, [THR, #0x60]  ; THR::top
    //     0x6c9b8c: sub             x0, x0, #0xf
    //     0x6c9b90: mov             x2, #0xe15c
    //     0x6c9b94: movk            x2, #3, lsl #16
    //     0x6c9b98: stur            x2, [x0, #-1]
    // 0x6c9b9c: StoreField: r0->field_7 = d0
    //     0x6c9b9c: stur            d0, [x0, #7]
    // 0x6c9ba0: StoreField: r1->field_f = r0
    //     0x6c9ba0: stur            w0, [x1, #0xf]
    // 0x6c9ba4: r0 = Obx()
    //     0x6c9ba4: bl              #0x6cbf7c  ; AllocateObxStub -> Obx (size=0x10)
    // 0x6c9ba8: ldur            x2, [fp, #-0x10]
    // 0x6c9bac: r1 = Function '<anonymous closure>':.
    //     0x6c9bac: add             x1, PP, #0x20, lsl #12  ; [pp+0x209a0] AnonymousClosure: (0x6cdfdc), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6c9bb0: ldr             x1, [x1, #0x9a0]
    // 0x6c9bb4: stur            x0, [fp, #-0x28]
    // 0x6c9bb8: r0 = AllocateClosure()
    //     0x6c9bb8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6c9bbc: mov             x1, x0
    // 0x6c9bc0: ldur            x0, [fp, #-0x28]
    // 0x6c9bc4: StoreField: r0->field_b = r1
    //     0x6c9bc4: stur            w1, [x0, #0xb]
    // 0x6c9bc8: r1 = 32
    //     0x6c9bc8: mov             x1, #0x20
    // 0x6c9bcc: r0 = SizeExtension.h()
    //     0x6c9bcc: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6c9bd0: r0 = inline_Allocate_Double()
    //     0x6c9bd0: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x6c9bd4: add             x0, x0, #0x10
    //     0x6c9bd8: cmp             x1, x0
    //     0x6c9bdc: b.ls            #0x6cb8d4
    //     0x6c9be0: str             x0, [THR, #0x60]  ; THR::top
    //     0x6c9be4: sub             x0, x0, #0xf
    //     0x6c9be8: mov             x1, #0xe15c
    //     0x6c9bec: movk            x1, #3, lsl #16
    //     0x6c9bf0: stur            x1, [x0, #-1]
    // 0x6c9bf4: StoreField: r0->field_7 = d0
    //     0x6c9bf4: stur            d0, [x0, #7]
    // 0x6c9bf8: stur            x0, [fp, #-0x30]
    // 0x6c9bfc: r0 = SizedBox()
    //     0x6c9bfc: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6c9c00: mov             x2, x0
    // 0x6c9c04: ldur            x0, [fp, #-0x30]
    // 0x6c9c08: stur            x2, [fp, #-0x38]
    // 0x6c9c0c: StoreField: r2->field_13 = r0
    //     0x6c9c0c: stur            w0, [x2, #0x13]
    // 0x6c9c10: r1 = 8
    //     0x6c9c10: mov             x1, #8
    // 0x6c9c14: r0 = SizeExtension.w()
    //     0x6c9c14: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6c9c18: r1 = 8
    //     0x6c9c18: mov             x1, #8
    // 0x6c9c1c: stur            d0, [fp, #-0x90]
    // 0x6c9c20: r0 = SizeExtension.h()
    //     0x6c9c20: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6c9c24: stur            d0, [fp, #-0x98]
    // 0x6c9c28: r0 = EdgeInsets()
    //     0x6c9c28: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6c9c2c: stur            x0, [fp, #-0x30]
    // 0x6c9c30: StoreField: r0->field_7 = rZR
    //     0x6c9c30: stur            xzr, [x0, #7]
    // 0x6c9c34: ldur            d0, [fp, #-0x98]
    // 0x6c9c38: StoreField: r0->field_f = d0
    //     0x6c9c38: stur            d0, [x0, #0xf]
    // 0x6c9c3c: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6c9c3c: stur            xzr, [x0, #0x17]
    // 0x6c9c40: StoreField: r0->field_1f = d0
    //     0x6c9c40: stur            d0, [x0, #0x1f]
    // 0x6c9c44: r1 = 150
    //     0x6c9c44: mov             x1, #0x96
    // 0x6c9c48: r0 = SizeExtension.h()
    //     0x6c9c48: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6c9c4c: r1 = 20
    //     0x6c9c4c: mov             x1, #0x14
    // 0x6c9c50: stur            d0, [fp, #-0x98]
    // 0x6c9c54: r0 = SizeExtension.r()
    //     0x6c9c54: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6c9c58: stur            d0, [fp, #-0xa0]
    // 0x6c9c5c: r0 = Radius()
    //     0x6c9c5c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6c9c60: ldur            d0, [fp, #-0xa0]
    // 0x6c9c64: stur            x0, [fp, #-0x40]
    // 0x6c9c68: StoreField: r0->field_7 = d0
    //     0x6c9c68: stur            d0, [x0, #7]
    // 0x6c9c6c: StoreField: r0->field_f = d0
    //     0x6c9c6c: stur            d0, [x0, #0xf]
    // 0x6c9c70: r0 = BorderRadius()
    //     0x6c9c70: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6c9c74: mov             x2, x0
    // 0x6c9c78: ldur            x0, [fp, #-0x40]
    // 0x6c9c7c: stur            x2, [fp, #-0x48]
    // 0x6c9c80: StoreField: r2->field_7 = r0
    //     0x6c9c80: stur            w0, [x2, #7]
    // 0x6c9c84: StoreField: r2->field_b = r0
    //     0x6c9c84: stur            w0, [x2, #0xb]
    // 0x6c9c88: StoreField: r2->field_f = r0
    //     0x6c9c88: stur            w0, [x2, #0xf]
    // 0x6c9c8c: StoreField: r2->field_13 = r0
    //     0x6c9c8c: stur            w0, [x2, #0x13]
    // 0x6c9c90: r16 = 0.050000
    //     0x6c9c90: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x6c9c94: str             x16, [SP]
    // 0x6c9c98: r1 = Instance_Color
    //     0x6c9c98: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6c9c9c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6c9c9c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6c9ca0: ldr             x4, [x4, #0x198]
    // 0x6c9ca4: r0 = withValues()
    //     0x6c9ca4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6c9ca8: r1 = 12
    //     0x6c9ca8: mov             x1, #0xc
    // 0x6c9cac: stur            x0, [fp, #-0x40]
    // 0x6c9cb0: r0 = SizeExtension.r()
    //     0x6c9cb0: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6c9cb4: r1 = 6
    //     0x6c9cb4: mov             x1, #6
    // 0x6c9cb8: stur            d0, [fp, #-0xa0]
    // 0x6c9cbc: r0 = SizeExtension.h()
    //     0x6c9cbc: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6c9cc0: stur            d0, [fp, #-0xa8]
    // 0x6c9cc4: r0 = Offset()
    //     0x6c9cc4: bl              #0x3ec40c  ; AllocateOffsetStub -> Offset (size=0x18)
    // 0x6c9cc8: stur            x0, [fp, #-0x50]
    // 0x6c9ccc: StoreField: r0->field_7 = rZR
    //     0x6c9ccc: stur            xzr, [x0, #7]
    // 0x6c9cd0: ldur            d0, [fp, #-0xa8]
    // 0x6c9cd4: StoreField: r0->field_f = d0
    //     0x6c9cd4: stur            d0, [x0, #0xf]
    // 0x6c9cd8: r0 = BoxShadow()
    //     0x6c9cd8: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6c9cdc: stur            x0, [fp, #-0x58]
    // 0x6c9ce0: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6c9ce0: stur            xzr, [x0, #0x17]
    // 0x6c9ce4: r3 = Instance_BlurStyle
    //     0x6c9ce4: add             x3, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6c9ce8: ldr             x3, [x3, #0x9b0]
    // 0x6c9cec: StoreField: r0->field_1f = r3
    //     0x6c9cec: stur            w3, [x0, #0x1f]
    // 0x6c9cf0: ldur            x1, [fp, #-0x40]
    // 0x6c9cf4: StoreField: r0->field_7 = r1
    //     0x6c9cf4: stur            w1, [x0, #7]
    // 0x6c9cf8: ldur            x1, [fp, #-0x50]
    // 0x6c9cfc: StoreField: r0->field_b = r1
    //     0x6c9cfc: stur            w1, [x0, #0xb]
    // 0x6c9d00: ldur            d0, [fp, #-0xa0]
    // 0x6c9d04: StoreField: r0->field_f = d0
    //     0x6c9d04: stur            d0, [x0, #0xf]
    // 0x6c9d08: r1 = Null
    //     0x6c9d08: mov             x1, NULL
    // 0x6c9d0c: r2 = 2
    //     0x6c9d0c: mov             x2, #2
    // 0x6c9d10: r0 = AllocateArray()
    //     0x6c9d10: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6c9d14: mov             x2, x0
    // 0x6c9d18: ldur            x0, [fp, #-0x58]
    // 0x6c9d1c: stur            x2, [fp, #-0x40]
    // 0x6c9d20: StoreField: r2->field_f = r0
    //     0x6c9d20: stur            w0, [x2, #0xf]
    // 0x6c9d24: r1 = <BoxShadow>
    //     0x6c9d24: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6c9d28: ldr             x1, [x1, #0x9c0]
    // 0x6c9d2c: r0 = AllocateGrowableArray()
    //     0x6c9d2c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6c9d30: mov             x1, x0
    // 0x6c9d34: ldur            x0, [fp, #-0x40]
    // 0x6c9d38: stur            x1, [fp, #-0x50]
    // 0x6c9d3c: StoreField: r1->field_f = r0
    //     0x6c9d3c: stur            w0, [x1, #0xf]
    // 0x6c9d40: r2 = 2
    //     0x6c9d40: mov             x2, #2
    // 0x6c9d44: StoreField: r1->field_b = r2
    //     0x6c9d44: stur            w2, [x1, #0xb]
    // 0x6c9d48: r0 = BoxDecoration()
    //     0x6c9d48: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6c9d4c: mov             x2, x0
    // 0x6c9d50: r0 = Instance_Color
    //     0x6c9d50: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6c9d54: stur            x2, [fp, #-0x40]
    // 0x6c9d58: StoreField: r2->field_7 = r0
    //     0x6c9d58: stur            w0, [x2, #7]
    // 0x6c9d5c: ldur            x1, [fp, #-0x48]
    // 0x6c9d60: StoreField: r2->field_13 = r1
    //     0x6c9d60: stur            w1, [x2, #0x13]
    // 0x6c9d64: ldur            x1, [fp, #-0x50]
    // 0x6c9d68: ArrayStore: r2[0] = r1  ; List_4
    //     0x6c9d68: stur            w1, [x2, #0x17]
    // 0x6c9d6c: r3 = Instance_BoxShape
    //     0x6c9d6c: add             x3, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6c9d70: ldr             x3, [x3, #0x1c8]
    // 0x6c9d74: StoreField: r2->field_23 = r3
    //     0x6c9d74: stur            w3, [x2, #0x23]
    // 0x6c9d78: r1 = 8
    //     0x6c9d78: mov             x1, #8
    // 0x6c9d7c: r0 = SizeExtension.w()
    //     0x6c9d7c: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6c9d80: stur            d0, [fp, #-0xa0]
    // 0x6c9d84: r0 = EdgeInsets()
    //     0x6c9d84: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6c9d88: ldur            d0, [fp, #-0xa0]
    // 0x6c9d8c: stur            x0, [fp, #-0x48]
    // 0x6c9d90: StoreField: r0->field_7 = d0
    //     0x6c9d90: stur            d0, [x0, #7]
    // 0x6c9d94: StoreField: r0->field_f = d0
    //     0x6c9d94: stur            d0, [x0, #0xf]
    // 0x6c9d98: ArrayStore: r0[0] = d0  ; List_8
    //     0x6c9d98: stur            d0, [x0, #0x17]
    // 0x6c9d9c: StoreField: r0->field_1f = d0
    //     0x6c9d9c: stur            d0, [x0, #0x1f]
    // 0x6c9da0: r1 = 20
    //     0x6c9da0: mov             x1, #0x14
    // 0x6c9da4: r0 = SizeExtension.sp()
    //     0x6c9da4: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6c9da8: stur            d0, [fp, #-0xa0]
    // 0x6c9dac: r0 = TextStyle()
    //     0x6c9dac: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6c9db0: mov             x1, x0
    // 0x6c9db4: r0 = true
    //     0x6c9db4: add             x0, NULL, #0x20  ; true
    // 0x6c9db8: stur            x1, [fp, #-0x50]
    // 0x6c9dbc: StoreField: r1->field_7 = r0
    //     0x6c9dbc: stur            w0, [x1, #7]
    // 0x6c9dc0: ldur            d0, [fp, #-0xa0]
    // 0x6c9dc4: r2 = inline_Allocate_Double()
    //     0x6c9dc4: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6c9dc8: add             x2, x2, #0x10
    //     0x6c9dcc: cmp             x3, x2
    //     0x6c9dd0: b.ls            #0x6cb8e4
    //     0x6c9dd4: str             x2, [THR, #0x60]  ; THR::top
    //     0x6c9dd8: sub             x2, x2, #0xf
    //     0x6c9ddc: mov             x3, #0xe15c
    //     0x6c9de0: movk            x3, #3, lsl #16
    //     0x6c9de4: stur            x3, [x2, #-1]
    // 0x6c9de8: StoreField: r2->field_7 = d0
    //     0x6c9de8: stur            d0, [x2, #7]
    // 0x6c9dec: StoreField: r1->field_1f = r2
    //     0x6c9dec: stur            w2, [x1, #0x1f]
    // 0x6c9df0: r2 = Instance_FontWeight
    //     0x6c9df0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6c9df4: ldr             x2, [x2, #0x1d0]
    // 0x6c9df8: StoreField: r1->field_23 = r2
    //     0x6c9df8: stur            w2, [x1, #0x23]
    // 0x6c9dfc: r0 = Text()
    //     0x6c9dfc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6c9e00: mov             x1, x0
    // 0x6c9e04: r0 = "Mesafe"
    //     0x6c9e04: add             x0, PP, #0x20, lsl #12  ; [pp+0x209a8] "Mesafe"
    //     0x6c9e08: ldr             x0, [x0, #0x9a8]
    // 0x6c9e0c: stur            x1, [fp, #-0x58]
    // 0x6c9e10: StoreField: r1->field_b = r0
    //     0x6c9e10: stur            w0, [x1, #0xb]
    // 0x6c9e14: ldur            x0, [fp, #-0x50]
    // 0x6c9e18: StoreField: r1->field_13 = r0
    //     0x6c9e18: stur            w0, [x1, #0x13]
    // 0x6c9e1c: r0 = Align()
    //     0x6c9e1c: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6c9e20: mov             x2, x0
    // 0x6c9e24: r0 = Instance_Alignment
    //     0x6c9e24: add             x0, PP, #0x14, lsl #12  ; [pp+0x14cf8] Obj!Alignment@a0cf11
    //     0x6c9e28: ldr             x0, [x0, #0xcf8]
    // 0x6c9e2c: stur            x2, [fp, #-0x50]
    // 0x6c9e30: StoreField: r2->field_f = r0
    //     0x6c9e30: stur            w0, [x2, #0xf]
    // 0x6c9e34: ldur            x1, [fp, #-0x58]
    // 0x6c9e38: StoreField: r2->field_b = r1
    //     0x6c9e38: stur            w1, [x2, #0xb]
    // 0x6c9e3c: r1 = 60
    //     0x6c9e3c: mov             x1, #0x3c
    // 0x6c9e40: r0 = SizeExtension.w()
    //     0x6c9e40: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6c9e44: r1 = 60
    //     0x6c9e44: mov             x1, #0x3c
    // 0x6c9e48: stur            d0, [fp, #-0xa0]
    // 0x6c9e4c: r0 = SizeExtension.h()
    //     0x6c9e4c: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6c9e50: r1 = 30
    //     0x6c9e50: mov             x1, #0x1e
    // 0x6c9e54: stur            d0, [fp, #-0xa8]
    // 0x6c9e58: r0 = SizeExtension.r()
    //     0x6c9e58: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6c9e5c: stur            d0, [fp, #-0xb0]
    // 0x6c9e60: r0 = Radius()
    //     0x6c9e60: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6c9e64: ldur            d0, [fp, #-0xb0]
    // 0x6c9e68: stur            x0, [fp, #-0x58]
    // 0x6c9e6c: StoreField: r0->field_7 = d0
    //     0x6c9e6c: stur            d0, [x0, #7]
    // 0x6c9e70: StoreField: r0->field_f = d0
    //     0x6c9e70: stur            d0, [x0, #0xf]
    // 0x6c9e74: r0 = BorderRadius()
    //     0x6c9e74: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6c9e78: mov             x2, x0
    // 0x6c9e7c: ldur            x0, [fp, #-0x58]
    // 0x6c9e80: stur            x2, [fp, #-0x60]
    // 0x6c9e84: StoreField: r2->field_7 = r0
    //     0x6c9e84: stur            w0, [x2, #7]
    // 0x6c9e88: StoreField: r2->field_b = r0
    //     0x6c9e88: stur            w0, [x2, #0xb]
    // 0x6c9e8c: StoreField: r2->field_f = r0
    //     0x6c9e8c: stur            w0, [x2, #0xf]
    // 0x6c9e90: StoreField: r2->field_13 = r0
    //     0x6c9e90: stur            w0, [x2, #0x13]
    // 0x6c9e94: ldur            x0, [fp, #-0x10]
    // 0x6c9e98: LoadField: r1 = r0->field_f
    //     0x6c9e98: ldur            w1, [x0, #0xf]
    // 0x6c9e9c: DecompressPointer r1
    //     0x6c9e9c: add             x1, x1, HEAP, lsl #32
    // 0x6c9ea0: r0 = of()
    //     0x6c9ea0: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6c9ea4: LoadField: r1 = r0->field_5b
    //     0x6c9ea4: ldur            w1, [x0, #0x5b]
    // 0x6c9ea8: DecompressPointer r1
    //     0x6c9ea8: add             x1, x1, HEAP, lsl #32
    // 0x6c9eac: r0 = LoadClassIdInstr(r1)
    //     0x6c9eac: ldur            x0, [x1, #-1]
    //     0x6c9eb0: ubfx            x0, x0, #0xc, #0x14
    // 0x6c9eb4: r16 = 0.200000
    //     0x6c9eb4: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6c9eb8: ldr             x16, [x16, #0x1f0]
    // 0x6c9ebc: str             x16, [SP]
    // 0x6c9ec0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6c9ec0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6c9ec4: ldr             x4, [x4, #0x198]
    // 0x6c9ec8: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x6c9ec8: sub             lr, x0, #0xfe8
    //     0x6c9ecc: ldr             lr, [x21, lr, lsl #3]
    //     0x6c9ed0: blr             lr
    // 0x6c9ed4: stur            x0, [fp, #-0x58]
    // 0x6c9ed8: r0 = BoxDecoration()
    //     0x6c9ed8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6c9edc: mov             x2, x0
    // 0x6c9ee0: ldur            x0, [fp, #-0x58]
    // 0x6c9ee4: stur            x2, [fp, #-0x68]
    // 0x6c9ee8: StoreField: r2->field_7 = r0
    //     0x6c9ee8: stur            w0, [x2, #7]
    // 0x6c9eec: ldur            x0, [fp, #-0x60]
    // 0x6c9ef0: StoreField: r2->field_13 = r0
    //     0x6c9ef0: stur            w0, [x2, #0x13]
    // 0x6c9ef4: r0 = Instance_BoxShape
    //     0x6c9ef4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6c9ef8: ldr             x0, [x0, #0x1c8]
    // 0x6c9efc: StoreField: r2->field_23 = r0
    //     0x6c9efc: stur            w0, [x2, #0x23]
    // 0x6c9f00: r1 = 30
    //     0x6c9f00: mov             x1, #0x1e
    // 0x6c9f04: r0 = SizeExtension.r()
    //     0x6c9f04: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6c9f08: stur            d0, [fp, #-0xb0]
    // 0x6c9f0c: r0 = Icon()
    //     0x6c9f0c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6c9f10: mov             x1, x0
    // 0x6c9f14: r0 = Instance_IconData
    //     0x6c9f14: add             x0, PP, #0x15, lsl #12  ; [pp+0x15528] Obj!IconData@a09ae1
    //     0x6c9f18: ldr             x0, [x0, #0x528]
    // 0x6c9f1c: stur            x1, [fp, #-0x58]
    // 0x6c9f20: StoreField: r1->field_b = r0
    //     0x6c9f20: stur            w0, [x1, #0xb]
    // 0x6c9f24: ldur            d0, [fp, #-0xb0]
    // 0x6c9f28: r0 = inline_Allocate_Double()
    //     0x6c9f28: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6c9f2c: add             x0, x0, #0x10
    //     0x6c9f30: cmp             x2, x0
    //     0x6c9f34: b.ls            #0x6cb900
    //     0x6c9f38: str             x0, [THR, #0x60]  ; THR::top
    //     0x6c9f3c: sub             x0, x0, #0xf
    //     0x6c9f40: mov             x2, #0xe15c
    //     0x6c9f44: movk            x2, #3, lsl #16
    //     0x6c9f48: stur            x2, [x0, #-1]
    // 0x6c9f4c: StoreField: r0->field_7 = d0
    //     0x6c9f4c: stur            d0, [x0, #7]
    // 0x6c9f50: StoreField: r1->field_f = r0
    //     0x6c9f50: stur            w0, [x1, #0xf]
    // 0x6c9f54: r0 = Center()
    //     0x6c9f54: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6c9f58: mov             x1, x0
    // 0x6c9f5c: r0 = Instance_Alignment
    //     0x6c9f5c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6c9f60: ldr             x0, [x0, #0x60]
    // 0x6c9f64: stur            x1, [fp, #-0x70]
    // 0x6c9f68: StoreField: r1->field_f = r0
    //     0x6c9f68: stur            w0, [x1, #0xf]
    // 0x6c9f6c: ldur            x2, [fp, #-0x58]
    // 0x6c9f70: StoreField: r1->field_b = r2
    //     0x6c9f70: stur            w2, [x1, #0xb]
    // 0x6c9f74: ldur            d0, [fp, #-0xa0]
    // 0x6c9f78: r2 = inline_Allocate_Double()
    //     0x6c9f78: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6c9f7c: add             x2, x2, #0x10
    //     0x6c9f80: cmp             x3, x2
    //     0x6c9f84: b.ls            #0x6cb918
    //     0x6c9f88: str             x2, [THR, #0x60]  ; THR::top
    //     0x6c9f8c: sub             x2, x2, #0xf
    //     0x6c9f90: mov             x3, #0xe15c
    //     0x6c9f94: movk            x3, #3, lsl #16
    //     0x6c9f98: stur            x3, [x2, #-1]
    // 0x6c9f9c: StoreField: r2->field_7 = d0
    //     0x6c9f9c: stur            d0, [x2, #7]
    // 0x6c9fa0: ldur            d0, [fp, #-0xa8]
    // 0x6c9fa4: stur            x2, [fp, #-0x60]
    // 0x6c9fa8: r3 = inline_Allocate_Double()
    //     0x6c9fa8: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0x6c9fac: add             x3, x3, #0x10
    //     0x6c9fb0: cmp             x4, x3
    //     0x6c9fb4: b.ls            #0x6cb934
    //     0x6c9fb8: str             x3, [THR, #0x60]  ; THR::top
    //     0x6c9fbc: sub             x3, x3, #0xf
    //     0x6c9fc0: mov             x4, #0xe15c
    //     0x6c9fc4: movk            x4, #3, lsl #16
    //     0x6c9fc8: stur            x4, [x3, #-1]
    // 0x6c9fcc: StoreField: r3->field_7 = d0
    //     0x6c9fcc: stur            d0, [x3, #7]
    // 0x6c9fd0: stur            x3, [fp, #-0x58]
    // 0x6c9fd4: r0 = Container()
    //     0x6c9fd4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6c9fd8: stur            x0, [fp, #-0x78]
    // 0x6c9fdc: ldur            x16, [fp, #-0x60]
    // 0x6c9fe0: ldur            lr, [fp, #-0x58]
    // 0x6c9fe4: stp             lr, x16, [SP, #0x10]
    // 0x6c9fe8: ldur            x16, [fp, #-0x68]
    // 0x6c9fec: ldur            lr, [fp, #-0x70]
    // 0x6c9ff0: stp             lr, x16, [SP]
    // 0x6c9ff4: mov             x1, x0
    // 0x6c9ff8: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6c9ff8: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6c9ffc: ldr             x4, [x4, #0x990]
    // 0x6ca000: r0 = Container()
    //     0x6ca000: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ca004: r0 = Align()
    //     0x6ca004: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6ca008: mov             x2, x0
    // 0x6ca00c: r0 = Instance_Alignment
    //     0x6ca00c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6ca010: ldr             x0, [x0, #0x60]
    // 0x6ca014: stur            x2, [fp, #-0x58]
    // 0x6ca018: StoreField: r2->field_f = r0
    //     0x6ca018: stur            w0, [x2, #0xf]
    // 0x6ca01c: ldur            x1, [fp, #-0x78]
    // 0x6ca020: StoreField: r2->field_b = r1
    //     0x6ca020: stur            w1, [x2, #0xb]
    // 0x6ca024: r1 = 4
    //     0x6ca024: mov             x1, #4
    // 0x6ca028: r0 = SizeExtension.w()
    //     0x6ca028: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6ca02c: stur            d0, [fp, #-0xa0]
    // 0x6ca030: r0 = Obx()
    //     0x6ca030: bl              #0x6cbf7c  ; AllocateObxStub -> Obx (size=0x10)
    // 0x6ca034: ldur            x2, [fp, #-0x10]
    // 0x6ca038: r1 = Function '<anonymous closure>':.
    //     0x6ca038: add             x1, PP, #0x20, lsl #12  ; [pp+0x209b0] AnonymousClosure: (0x6cdedc), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6ca03c: ldr             x1, [x1, #0x9b0]
    // 0x6ca040: stur            x0, [fp, #-0x60]
    // 0x6ca044: r0 = AllocateClosure()
    //     0x6ca044: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ca048: mov             x1, x0
    // 0x6ca04c: ldur            x0, [fp, #-0x60]
    // 0x6ca050: StoreField: r0->field_b = r1
    //     0x6ca050: stur            w1, [x0, #0xb]
    // 0x6ca054: r1 = 15
    //     0x6ca054: mov             x1, #0xf
    // 0x6ca058: r0 = SizeExtension.sp()
    //     0x6ca058: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6ca05c: stur            d0, [fp, #-0xa8]
    // 0x6ca060: r0 = TextStyle()
    //     0x6ca060: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ca064: mov             x1, x0
    // 0x6ca068: r0 = true
    //     0x6ca068: add             x0, NULL, #0x20  ; true
    // 0x6ca06c: stur            x1, [fp, #-0x68]
    // 0x6ca070: StoreField: r1->field_7 = r0
    //     0x6ca070: stur            w0, [x1, #7]
    // 0x6ca074: r2 = Instance_MaterialColor
    //     0x6ca074: add             x2, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6ca078: ldr             x2, [x2, #0xbc8]
    // 0x6ca07c: StoreField: r1->field_b = r2
    //     0x6ca07c: stur            w2, [x1, #0xb]
    // 0x6ca080: ldur            d0, [fp, #-0xa8]
    // 0x6ca084: r3 = inline_Allocate_Double()
    //     0x6ca084: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0x6ca088: add             x3, x3, #0x10
    //     0x6ca08c: cmp             x4, x3
    //     0x6ca090: b.ls            #0x6cb958
    //     0x6ca094: str             x3, [THR, #0x60]  ; THR::top
    //     0x6ca098: sub             x3, x3, #0xf
    //     0x6ca09c: mov             x4, #0xe15c
    //     0x6ca0a0: movk            x4, #3, lsl #16
    //     0x6ca0a4: stur            x4, [x3, #-1]
    // 0x6ca0a8: StoreField: r3->field_7 = d0
    //     0x6ca0a8: stur            d0, [x3, #7]
    // 0x6ca0ac: StoreField: r1->field_1f = r3
    //     0x6ca0ac: stur            w3, [x1, #0x1f]
    // 0x6ca0b0: r3 = Instance_FontWeight
    //     0x6ca0b0: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6ca0b4: ldr             x3, [x3, #0x1d0]
    // 0x6ca0b8: StoreField: r1->field_23 = r3
    //     0x6ca0b8: stur            w3, [x1, #0x23]
    // 0x6ca0bc: r0 = Text()
    //     0x6ca0bc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ca0c0: mov             x3, x0
    // 0x6ca0c4: r0 = "km"
    //     0x6ca0c4: add             x0, PP, #9, lsl #12  ; [pp+0x9b58] "km"
    //     0x6ca0c8: ldr             x0, [x0, #0xb58]
    // 0x6ca0cc: stur            x3, [fp, #-0x70]
    // 0x6ca0d0: StoreField: r3->field_b = r0
    //     0x6ca0d0: stur            w0, [x3, #0xb]
    // 0x6ca0d4: ldur            x0, [fp, #-0x68]
    // 0x6ca0d8: StoreField: r3->field_13 = r0
    //     0x6ca0d8: stur            w0, [x3, #0x13]
    // 0x6ca0dc: r1 = Null
    //     0x6ca0dc: mov             x1, NULL
    // 0x6ca0e0: r2 = 4
    //     0x6ca0e0: mov             x2, #4
    // 0x6ca0e4: r0 = AllocateArray()
    //     0x6ca0e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ca0e8: mov             x2, x0
    // 0x6ca0ec: ldur            x0, [fp, #-0x60]
    // 0x6ca0f0: stur            x2, [fp, #-0x68]
    // 0x6ca0f4: StoreField: r2->field_f = r0
    //     0x6ca0f4: stur            w0, [x2, #0xf]
    // 0x6ca0f8: ldur            x0, [fp, #-0x70]
    // 0x6ca0fc: StoreField: r2->field_13 = r0
    //     0x6ca0fc: stur            w0, [x2, #0x13]
    // 0x6ca100: r1 = <Widget>
    //     0x6ca100: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ca104: r0 = AllocateGrowableArray()
    //     0x6ca104: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ca108: mov             x1, x0
    // 0x6ca10c: ldur            x0, [fp, #-0x68]
    // 0x6ca110: stur            x1, [fp, #-0x60]
    // 0x6ca114: StoreField: r1->field_f = r0
    //     0x6ca114: stur            w0, [x1, #0xf]
    // 0x6ca118: r2 = 4
    //     0x6ca118: mov             x2, #4
    // 0x6ca11c: StoreField: r1->field_b = r2
    //     0x6ca11c: stur            w2, [x1, #0xb]
    // 0x6ca120: r0 = Row()
    //     0x6ca120: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ca124: mov             x1, x0
    // 0x6ca128: r0 = Instance_Axis
    //     0x6ca128: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ca12c: stur            x1, [fp, #-0x68]
    // 0x6ca130: StoreField: r1->field_f = r0
    //     0x6ca130: stur            w0, [x1, #0xf]
    // 0x6ca134: r2 = Instance_MainAxisAlignment
    //     0x6ca134: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x6ca138: ldr             x2, [x2, #0x328]
    // 0x6ca13c: StoreField: r1->field_13 = r2
    //     0x6ca13c: stur            w2, [x1, #0x13]
    // 0x6ca140: r3 = Instance_MainAxisSize
    //     0x6ca140: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ca144: ldr             x3, [x3, #0x330]
    // 0x6ca148: ArrayStore: r1[0] = r3  ; List_4
    //     0x6ca148: stur            w3, [x1, #0x17]
    // 0x6ca14c: r4 = Instance_CrossAxisAlignment
    //     0x6ca14c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ca150: ldr             x4, [x4, #0x338]
    // 0x6ca154: StoreField: r1->field_1b = r4
    //     0x6ca154: stur            w4, [x1, #0x1b]
    // 0x6ca158: r5 = Instance_VerticalDirection
    //     0x6ca158: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ca15c: ldr             x5, [x5, #0x340]
    // 0x6ca160: StoreField: r1->field_23 = r5
    //     0x6ca160: stur            w5, [x1, #0x23]
    // 0x6ca164: r6 = Instance_Clip
    //     0x6ca164: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ca168: ldr             x6, [x6, #0x348]
    // 0x6ca16c: StoreField: r1->field_2b = r6
    //     0x6ca16c: stur            w6, [x1, #0x2b]
    // 0x6ca170: ldur            d0, [fp, #-0xa0]
    // 0x6ca174: StoreField: r1->field_2f = d0
    //     0x6ca174: stur            d0, [x1, #0x2f]
    // 0x6ca178: ldur            x7, [fp, #-0x60]
    // 0x6ca17c: StoreField: r1->field_b = r7
    //     0x6ca17c: stur            w7, [x1, #0xb]
    // 0x6ca180: r0 = Align()
    //     0x6ca180: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6ca184: mov             x3, x0
    // 0x6ca188: r0 = Instance_Alignment
    //     0x6ca188: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d00] Obj!Alignment@a0ced1
    //     0x6ca18c: ldr             x0, [x0, #0xd00]
    // 0x6ca190: stur            x3, [fp, #-0x60]
    // 0x6ca194: StoreField: r3->field_f = r0
    //     0x6ca194: stur            w0, [x3, #0xf]
    // 0x6ca198: ldur            x1, [fp, #-0x68]
    // 0x6ca19c: StoreField: r3->field_b = r1
    //     0x6ca19c: stur            w1, [x3, #0xb]
    // 0x6ca1a0: r1 = Null
    //     0x6ca1a0: mov             x1, NULL
    // 0x6ca1a4: r2 = 6
    //     0x6ca1a4: mov             x2, #6
    // 0x6ca1a8: r0 = AllocateArray()
    //     0x6ca1a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ca1ac: mov             x2, x0
    // 0x6ca1b0: ldur            x0, [fp, #-0x50]
    // 0x6ca1b4: stur            x2, [fp, #-0x68]
    // 0x6ca1b8: StoreField: r2->field_f = r0
    //     0x6ca1b8: stur            w0, [x2, #0xf]
    // 0x6ca1bc: ldur            x0, [fp, #-0x58]
    // 0x6ca1c0: StoreField: r2->field_13 = r0
    //     0x6ca1c0: stur            w0, [x2, #0x13]
    // 0x6ca1c4: ldur            x0, [fp, #-0x60]
    // 0x6ca1c8: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ca1c8: stur            w0, [x2, #0x17]
    // 0x6ca1cc: r1 = <Widget>
    //     0x6ca1cc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ca1d0: r0 = AllocateGrowableArray()
    //     0x6ca1d0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ca1d4: mov             x1, x0
    // 0x6ca1d8: ldur            x0, [fp, #-0x68]
    // 0x6ca1dc: stur            x1, [fp, #-0x50]
    // 0x6ca1e0: StoreField: r1->field_f = r0
    //     0x6ca1e0: stur            w0, [x1, #0xf]
    // 0x6ca1e4: r2 = 6
    //     0x6ca1e4: mov             x2, #6
    // 0x6ca1e8: StoreField: r1->field_b = r2
    //     0x6ca1e8: stur            w2, [x1, #0xb]
    // 0x6ca1ec: r0 = Stack()
    //     0x6ca1ec: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x6ca1f0: mov             x1, x0
    // 0x6ca1f4: r0 = Instance_AlignmentDirectional
    //     0x6ca1f4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x6ca1f8: ldr             x0, [x0, #0xd28]
    // 0x6ca1fc: stur            x1, [fp, #-0x58]
    // 0x6ca200: StoreField: r1->field_f = r0
    //     0x6ca200: stur            w0, [x1, #0xf]
    // 0x6ca204: r2 = Instance_StackFit
    //     0x6ca204: add             x2, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x6ca208: ldr             x2, [x2, #0x548]
    // 0x6ca20c: ArrayStore: r1[0] = r2  ; List_4
    //     0x6ca20c: stur            w2, [x1, #0x17]
    // 0x6ca210: r3 = Instance_Clip
    //     0x6ca210: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6ca214: ldr             x3, [x3, #0x2d8]
    // 0x6ca218: StoreField: r1->field_1b = r3
    //     0x6ca218: stur            w3, [x1, #0x1b]
    // 0x6ca21c: ldur            x4, [fp, #-0x50]
    // 0x6ca220: StoreField: r1->field_b = r4
    //     0x6ca220: stur            w4, [x1, #0xb]
    // 0x6ca224: r0 = Padding()
    //     0x6ca224: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6ca228: mov             x1, x0
    // 0x6ca22c: ldur            x0, [fp, #-0x48]
    // 0x6ca230: stur            x1, [fp, #-0x50]
    // 0x6ca234: StoreField: r1->field_f = r0
    //     0x6ca234: stur            w0, [x1, #0xf]
    // 0x6ca238: ldur            x0, [fp, #-0x58]
    // 0x6ca23c: StoreField: r1->field_b = r0
    //     0x6ca23c: stur            w0, [x1, #0xb]
    // 0x6ca240: ldur            d0, [fp, #-0x98]
    // 0x6ca244: r0 = inline_Allocate_Double()
    //     0x6ca244: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6ca248: add             x0, x0, #0x10
    //     0x6ca24c: cmp             x2, x0
    //     0x6ca250: b.ls            #0x6cb97c
    //     0x6ca254: str             x0, [THR, #0x60]  ; THR::top
    //     0x6ca258: sub             x0, x0, #0xf
    //     0x6ca25c: mov             x2, #0xe15c
    //     0x6ca260: movk            x2, #3, lsl #16
    //     0x6ca264: stur            x2, [x0, #-1]
    // 0x6ca268: StoreField: r0->field_7 = d0
    //     0x6ca268: stur            d0, [x0, #7]
    // 0x6ca26c: stur            x0, [fp, #-0x48]
    // 0x6ca270: r0 = Container()
    //     0x6ca270: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ca274: stur            x0, [fp, #-0x58]
    // 0x6ca278: ldur            x16, [fp, #-0x30]
    // 0x6ca27c: ldur            lr, [fp, #-0x48]
    // 0x6ca280: stp             lr, x16, [SP, #0x10]
    // 0x6ca284: ldur            x16, [fp, #-0x40]
    // 0x6ca288: ldur            lr, [fp, #-0x50]
    // 0x6ca28c: stp             lr, x16, [SP]
    // 0x6ca290: mov             x1, x0
    // 0x6ca294: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, padding, 0x1, null]
    //     0x6ca294: add             x4, PP, #0x20, lsl #12  ; [pp+0x209b8] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "padding", 0x1, Null]
    //     0x6ca298: ldr             x4, [x4, #0x9b8]
    // 0x6ca29c: r0 = Container()
    //     0x6ca29c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ca2a0: r1 = <FlexParentData>
    //     0x6ca2a0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6ca2a4: ldr             x1, [x1, #0x340]
    // 0x6ca2a8: r0 = Expanded()
    //     0x6ca2a8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6ca2ac: mov             x2, x0
    // 0x6ca2b0: r0 = 1
    //     0x6ca2b0: mov             x0, #1
    // 0x6ca2b4: stur            x2, [fp, #-0x30]
    // 0x6ca2b8: StoreField: r2->field_13 = r0
    //     0x6ca2b8: stur            x0, [x2, #0x13]
    // 0x6ca2bc: r3 = Instance_FlexFit
    //     0x6ca2bc: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6ca2c0: ldr             x3, [x3, #0x348]
    // 0x6ca2c4: StoreField: r2->field_1b = r3
    //     0x6ca2c4: stur            w3, [x2, #0x1b]
    // 0x6ca2c8: ldur            x1, [fp, #-0x58]
    // 0x6ca2cc: StoreField: r2->field_b = r1
    //     0x6ca2cc: stur            w1, [x2, #0xb]
    // 0x6ca2d0: r1 = 8
    //     0x6ca2d0: mov             x1, #8
    // 0x6ca2d4: r0 = SizeExtension.h()
    //     0x6ca2d4: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6ca2d8: stur            d0, [fp, #-0x98]
    // 0x6ca2dc: r0 = EdgeInsets()
    //     0x6ca2dc: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6ca2e0: stur            x0, [fp, #-0x40]
    // 0x6ca2e4: StoreField: r0->field_7 = rZR
    //     0x6ca2e4: stur            xzr, [x0, #7]
    // 0x6ca2e8: ldur            d0, [fp, #-0x98]
    // 0x6ca2ec: StoreField: r0->field_f = d0
    //     0x6ca2ec: stur            d0, [x0, #0xf]
    // 0x6ca2f0: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6ca2f0: stur            xzr, [x0, #0x17]
    // 0x6ca2f4: StoreField: r0->field_1f = d0
    //     0x6ca2f4: stur            d0, [x0, #0x1f]
    // 0x6ca2f8: r1 = 150
    //     0x6ca2f8: mov             x1, #0x96
    // 0x6ca2fc: r0 = SizeExtension.h()
    //     0x6ca2fc: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6ca300: r1 = 20
    //     0x6ca300: mov             x1, #0x14
    // 0x6ca304: stur            d0, [fp, #-0x98]
    // 0x6ca308: r0 = SizeExtension.r()
    //     0x6ca308: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6ca30c: stur            d0, [fp, #-0xa0]
    // 0x6ca310: r0 = Radius()
    //     0x6ca310: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ca314: ldur            d0, [fp, #-0xa0]
    // 0x6ca318: stur            x0, [fp, #-0x48]
    // 0x6ca31c: StoreField: r0->field_7 = d0
    //     0x6ca31c: stur            d0, [x0, #7]
    // 0x6ca320: StoreField: r0->field_f = d0
    //     0x6ca320: stur            d0, [x0, #0xf]
    // 0x6ca324: r0 = BorderRadius()
    //     0x6ca324: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ca328: mov             x2, x0
    // 0x6ca32c: ldur            x0, [fp, #-0x48]
    // 0x6ca330: stur            x2, [fp, #-0x50]
    // 0x6ca334: StoreField: r2->field_7 = r0
    //     0x6ca334: stur            w0, [x2, #7]
    // 0x6ca338: StoreField: r2->field_b = r0
    //     0x6ca338: stur            w0, [x2, #0xb]
    // 0x6ca33c: StoreField: r2->field_f = r0
    //     0x6ca33c: stur            w0, [x2, #0xf]
    // 0x6ca340: StoreField: r2->field_13 = r0
    //     0x6ca340: stur            w0, [x2, #0x13]
    // 0x6ca344: r16 = 0.050000
    //     0x6ca344: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x6ca348: str             x16, [SP]
    // 0x6ca34c: r1 = Instance_Color
    //     0x6ca34c: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6ca350: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ca350: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ca354: ldr             x4, [x4, #0x198]
    // 0x6ca358: r0 = withValues()
    //     0x6ca358: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ca35c: r1 = 12
    //     0x6ca35c: mov             x1, #0xc
    // 0x6ca360: stur            x0, [fp, #-0x48]
    // 0x6ca364: r0 = SizeExtension.r()
    //     0x6ca364: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6ca368: r1 = 6
    //     0x6ca368: mov             x1, #6
    // 0x6ca36c: stur            d0, [fp, #-0xa0]
    // 0x6ca370: r0 = SizeExtension.h()
    //     0x6ca370: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6ca374: stur            d0, [fp, #-0xa8]
    // 0x6ca378: r0 = Offset()
    //     0x6ca378: bl              #0x3ec40c  ; AllocateOffsetStub -> Offset (size=0x18)
    // 0x6ca37c: stur            x0, [fp, #-0x58]
    // 0x6ca380: StoreField: r0->field_7 = rZR
    //     0x6ca380: stur            xzr, [x0, #7]
    // 0x6ca384: ldur            d0, [fp, #-0xa8]
    // 0x6ca388: StoreField: r0->field_f = d0
    //     0x6ca388: stur            d0, [x0, #0xf]
    // 0x6ca38c: r0 = BoxShadow()
    //     0x6ca38c: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6ca390: stur            x0, [fp, #-0x60]
    // 0x6ca394: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6ca394: stur            xzr, [x0, #0x17]
    // 0x6ca398: r3 = Instance_BlurStyle
    //     0x6ca398: add             x3, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6ca39c: ldr             x3, [x3, #0x9b0]
    // 0x6ca3a0: StoreField: r0->field_1f = r3
    //     0x6ca3a0: stur            w3, [x0, #0x1f]
    // 0x6ca3a4: ldur            x1, [fp, #-0x48]
    // 0x6ca3a8: StoreField: r0->field_7 = r1
    //     0x6ca3a8: stur            w1, [x0, #7]
    // 0x6ca3ac: ldur            x1, [fp, #-0x58]
    // 0x6ca3b0: StoreField: r0->field_b = r1
    //     0x6ca3b0: stur            w1, [x0, #0xb]
    // 0x6ca3b4: ldur            d0, [fp, #-0xa0]
    // 0x6ca3b8: StoreField: r0->field_f = d0
    //     0x6ca3b8: stur            d0, [x0, #0xf]
    // 0x6ca3bc: r1 = Null
    //     0x6ca3bc: mov             x1, NULL
    // 0x6ca3c0: r2 = 2
    //     0x6ca3c0: mov             x2, #2
    // 0x6ca3c4: r0 = AllocateArray()
    //     0x6ca3c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ca3c8: mov             x2, x0
    // 0x6ca3cc: ldur            x0, [fp, #-0x60]
    // 0x6ca3d0: stur            x2, [fp, #-0x48]
    // 0x6ca3d4: StoreField: r2->field_f = r0
    //     0x6ca3d4: stur            w0, [x2, #0xf]
    // 0x6ca3d8: r1 = <BoxShadow>
    //     0x6ca3d8: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6ca3dc: ldr             x1, [x1, #0x9c0]
    // 0x6ca3e0: r0 = AllocateGrowableArray()
    //     0x6ca3e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ca3e4: mov             x1, x0
    // 0x6ca3e8: ldur            x0, [fp, #-0x48]
    // 0x6ca3ec: stur            x1, [fp, #-0x58]
    // 0x6ca3f0: StoreField: r1->field_f = r0
    //     0x6ca3f0: stur            w0, [x1, #0xf]
    // 0x6ca3f4: r2 = 2
    //     0x6ca3f4: mov             x2, #2
    // 0x6ca3f8: StoreField: r1->field_b = r2
    //     0x6ca3f8: stur            w2, [x1, #0xb]
    // 0x6ca3fc: r0 = BoxDecoration()
    //     0x6ca3fc: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ca400: mov             x2, x0
    // 0x6ca404: r0 = Instance_Color
    //     0x6ca404: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6ca408: stur            x2, [fp, #-0x48]
    // 0x6ca40c: StoreField: r2->field_7 = r0
    //     0x6ca40c: stur            w0, [x2, #7]
    // 0x6ca410: ldur            x1, [fp, #-0x50]
    // 0x6ca414: StoreField: r2->field_13 = r1
    //     0x6ca414: stur            w1, [x2, #0x13]
    // 0x6ca418: ldur            x1, [fp, #-0x58]
    // 0x6ca41c: ArrayStore: r2[0] = r1  ; List_4
    //     0x6ca41c: stur            w1, [x2, #0x17]
    // 0x6ca420: r3 = Instance_BoxShape
    //     0x6ca420: add             x3, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ca424: ldr             x3, [x3, #0x1c8]
    // 0x6ca428: StoreField: r2->field_23 = r3
    //     0x6ca428: stur            w3, [x2, #0x23]
    // 0x6ca42c: r1 = 8
    //     0x6ca42c: mov             x1, #8
    // 0x6ca430: r0 = SizeExtension.w()
    //     0x6ca430: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6ca434: stur            d0, [fp, #-0xa0]
    // 0x6ca438: r0 = EdgeInsets()
    //     0x6ca438: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6ca43c: ldur            d0, [fp, #-0xa0]
    // 0x6ca440: stur            x0, [fp, #-0x50]
    // 0x6ca444: StoreField: r0->field_7 = d0
    //     0x6ca444: stur            d0, [x0, #7]
    // 0x6ca448: StoreField: r0->field_f = d0
    //     0x6ca448: stur            d0, [x0, #0xf]
    // 0x6ca44c: ArrayStore: r0[0] = d0  ; List_8
    //     0x6ca44c: stur            d0, [x0, #0x17]
    // 0x6ca450: StoreField: r0->field_1f = d0
    //     0x6ca450: stur            d0, [x0, #0x1f]
    // 0x6ca454: r1 = 20
    //     0x6ca454: mov             x1, #0x14
    // 0x6ca458: r0 = SizeExtension.sp()
    //     0x6ca458: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6ca45c: stur            d0, [fp, #-0xa0]
    // 0x6ca460: r0 = TextStyle()
    //     0x6ca460: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ca464: mov             x1, x0
    // 0x6ca468: r0 = true
    //     0x6ca468: add             x0, NULL, #0x20  ; true
    // 0x6ca46c: stur            x1, [fp, #-0x58]
    // 0x6ca470: StoreField: r1->field_7 = r0
    //     0x6ca470: stur            w0, [x1, #7]
    // 0x6ca474: ldur            d0, [fp, #-0xa0]
    // 0x6ca478: r2 = inline_Allocate_Double()
    //     0x6ca478: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6ca47c: add             x2, x2, #0x10
    //     0x6ca480: cmp             x3, x2
    //     0x6ca484: b.ls            #0x6cb994
    //     0x6ca488: str             x2, [THR, #0x60]  ; THR::top
    //     0x6ca48c: sub             x2, x2, #0xf
    //     0x6ca490: mov             x3, #0xe15c
    //     0x6ca494: movk            x3, #3, lsl #16
    //     0x6ca498: stur            x3, [x2, #-1]
    // 0x6ca49c: StoreField: r2->field_7 = d0
    //     0x6ca49c: stur            d0, [x2, #7]
    // 0x6ca4a0: StoreField: r1->field_1f = r2
    //     0x6ca4a0: stur            w2, [x1, #0x1f]
    // 0x6ca4a4: r2 = Instance_FontWeight
    //     0x6ca4a4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6ca4a8: ldr             x2, [x2, #0x1d0]
    // 0x6ca4ac: StoreField: r1->field_23 = r2
    //     0x6ca4ac: stur            w2, [x1, #0x23]
    // 0x6ca4b0: r0 = Text()
    //     0x6ca4b0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ca4b4: mov             x1, x0
    // 0x6ca4b8: r0 = "Kalori"
    //     0x6ca4b8: add             x0, PP, #0x20, lsl #12  ; [pp+0x209c0] "Kalori"
    //     0x6ca4bc: ldr             x0, [x0, #0x9c0]
    // 0x6ca4c0: stur            x1, [fp, #-0x60]
    // 0x6ca4c4: StoreField: r1->field_b = r0
    //     0x6ca4c4: stur            w0, [x1, #0xb]
    // 0x6ca4c8: ldur            x0, [fp, #-0x58]
    // 0x6ca4cc: StoreField: r1->field_13 = r0
    //     0x6ca4cc: stur            w0, [x1, #0x13]
    // 0x6ca4d0: r0 = Align()
    //     0x6ca4d0: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6ca4d4: mov             x2, x0
    // 0x6ca4d8: r0 = Instance_Alignment
    //     0x6ca4d8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14cf8] Obj!Alignment@a0cf11
    //     0x6ca4dc: ldr             x0, [x0, #0xcf8]
    // 0x6ca4e0: stur            x2, [fp, #-0x58]
    // 0x6ca4e4: StoreField: r2->field_f = r0
    //     0x6ca4e4: stur            w0, [x2, #0xf]
    // 0x6ca4e8: ldur            x1, [fp, #-0x60]
    // 0x6ca4ec: StoreField: r2->field_b = r1
    //     0x6ca4ec: stur            w1, [x2, #0xb]
    // 0x6ca4f0: r1 = 60
    //     0x6ca4f0: mov             x1, #0x3c
    // 0x6ca4f4: r0 = SizeExtension.w()
    //     0x6ca4f4: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6ca4f8: r1 = 60
    //     0x6ca4f8: mov             x1, #0x3c
    // 0x6ca4fc: stur            d0, [fp, #-0xa0]
    // 0x6ca500: r0 = SizeExtension.h()
    //     0x6ca500: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6ca504: r1 = 30
    //     0x6ca504: mov             x1, #0x1e
    // 0x6ca508: stur            d0, [fp, #-0xa8]
    // 0x6ca50c: r0 = SizeExtension.r()
    //     0x6ca50c: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6ca510: stur            d0, [fp, #-0xb0]
    // 0x6ca514: r0 = Radius()
    //     0x6ca514: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ca518: ldur            d0, [fp, #-0xb0]
    // 0x6ca51c: stur            x0, [fp, #-0x60]
    // 0x6ca520: StoreField: r0->field_7 = d0
    //     0x6ca520: stur            d0, [x0, #7]
    // 0x6ca524: StoreField: r0->field_f = d0
    //     0x6ca524: stur            d0, [x0, #0xf]
    // 0x6ca528: r0 = BorderRadius()
    //     0x6ca528: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ca52c: mov             x2, x0
    // 0x6ca530: ldur            x0, [fp, #-0x60]
    // 0x6ca534: stur            x2, [fp, #-0x68]
    // 0x6ca538: StoreField: r2->field_7 = r0
    //     0x6ca538: stur            w0, [x2, #7]
    // 0x6ca53c: StoreField: r2->field_b = r0
    //     0x6ca53c: stur            w0, [x2, #0xb]
    // 0x6ca540: StoreField: r2->field_f = r0
    //     0x6ca540: stur            w0, [x2, #0xf]
    // 0x6ca544: StoreField: r2->field_13 = r0
    //     0x6ca544: stur            w0, [x2, #0x13]
    // 0x6ca548: r16 = 0.200000
    //     0x6ca548: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6ca54c: ldr             x16, [x16, #0x1f0]
    // 0x6ca550: str             x16, [SP]
    // 0x6ca554: r1 = Instance_MaterialColor
    //     0x6ca554: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6ca558: ldr             x1, [x1, #0x1f8]
    // 0x6ca55c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ca55c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ca560: ldr             x4, [x4, #0x198]
    // 0x6ca564: r0 = withValues()
    //     0x6ca564: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ca568: stur            x0, [fp, #-0x60]
    // 0x6ca56c: r0 = BoxDecoration()
    //     0x6ca56c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6ca570: mov             x2, x0
    // 0x6ca574: ldur            x0, [fp, #-0x60]
    // 0x6ca578: stur            x2, [fp, #-0x70]
    // 0x6ca57c: StoreField: r2->field_7 = r0
    //     0x6ca57c: stur            w0, [x2, #7]
    // 0x6ca580: ldur            x0, [fp, #-0x68]
    // 0x6ca584: StoreField: r2->field_13 = r0
    //     0x6ca584: stur            w0, [x2, #0x13]
    // 0x6ca588: r0 = Instance_BoxShape
    //     0x6ca588: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ca58c: ldr             x0, [x0, #0x1c8]
    // 0x6ca590: StoreField: r2->field_23 = r0
    //     0x6ca590: stur            w0, [x2, #0x23]
    // 0x6ca594: r1 = 30
    //     0x6ca594: mov             x1, #0x1e
    // 0x6ca598: r0 = SizeExtension.r()
    //     0x6ca598: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6ca59c: stur            d0, [fp, #-0xb0]
    // 0x6ca5a0: r0 = Icon()
    //     0x6ca5a0: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6ca5a4: mov             x1, x0
    // 0x6ca5a8: r0 = Instance_IconData
    //     0x6ca5a8: add             x0, PP, #0x20, lsl #12  ; [pp+0x209c8] Obj!IconData@a09ca1
    //     0x6ca5ac: ldr             x0, [x0, #0x9c8]
    // 0x6ca5b0: stur            x1, [fp, #-0x60]
    // 0x6ca5b4: StoreField: r1->field_b = r0
    //     0x6ca5b4: stur            w0, [x1, #0xb]
    // 0x6ca5b8: ldur            d0, [fp, #-0xb0]
    // 0x6ca5bc: r0 = inline_Allocate_Double()
    //     0x6ca5bc: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6ca5c0: add             x0, x0, #0x10
    //     0x6ca5c4: cmp             x2, x0
    //     0x6ca5c8: b.ls            #0x6cb9b0
    //     0x6ca5cc: str             x0, [THR, #0x60]  ; THR::top
    //     0x6ca5d0: sub             x0, x0, #0xf
    //     0x6ca5d4: mov             x2, #0xe15c
    //     0x6ca5d8: movk            x2, #3, lsl #16
    //     0x6ca5dc: stur            x2, [x0, #-1]
    // 0x6ca5e0: StoreField: r0->field_7 = d0
    //     0x6ca5e0: stur            d0, [x0, #7]
    // 0x6ca5e4: StoreField: r1->field_f = r0
    //     0x6ca5e4: stur            w0, [x1, #0xf]
    // 0x6ca5e8: r0 = Instance_MaterialColor
    //     0x6ca5e8: add             x0, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6ca5ec: ldr             x0, [x0, #0x1f8]
    // 0x6ca5f0: StoreField: r1->field_23 = r0
    //     0x6ca5f0: stur            w0, [x1, #0x23]
    // 0x6ca5f4: r0 = Center()
    //     0x6ca5f4: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6ca5f8: mov             x1, x0
    // 0x6ca5fc: r0 = Instance_Alignment
    //     0x6ca5fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6ca600: ldr             x0, [x0, #0x60]
    // 0x6ca604: stur            x1, [fp, #-0x78]
    // 0x6ca608: StoreField: r1->field_f = r0
    //     0x6ca608: stur            w0, [x1, #0xf]
    // 0x6ca60c: ldur            x2, [fp, #-0x60]
    // 0x6ca610: StoreField: r1->field_b = r2
    //     0x6ca610: stur            w2, [x1, #0xb]
    // 0x6ca614: ldur            d0, [fp, #-0xa0]
    // 0x6ca618: r2 = inline_Allocate_Double()
    //     0x6ca618: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6ca61c: add             x2, x2, #0x10
    //     0x6ca620: cmp             x3, x2
    //     0x6ca624: b.ls            #0x6cb9c8
    //     0x6ca628: str             x2, [THR, #0x60]  ; THR::top
    //     0x6ca62c: sub             x2, x2, #0xf
    //     0x6ca630: mov             x3, #0xe15c
    //     0x6ca634: movk            x3, #3, lsl #16
    //     0x6ca638: stur            x3, [x2, #-1]
    // 0x6ca63c: StoreField: r2->field_7 = d0
    //     0x6ca63c: stur            d0, [x2, #7]
    // 0x6ca640: ldur            d0, [fp, #-0xa8]
    // 0x6ca644: stur            x2, [fp, #-0x68]
    // 0x6ca648: r3 = inline_Allocate_Double()
    //     0x6ca648: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0x6ca64c: add             x3, x3, #0x10
    //     0x6ca650: cmp             x4, x3
    //     0x6ca654: b.ls            #0x6cb9e4
    //     0x6ca658: str             x3, [THR, #0x60]  ; THR::top
    //     0x6ca65c: sub             x3, x3, #0xf
    //     0x6ca660: mov             x4, #0xe15c
    //     0x6ca664: movk            x4, #3, lsl #16
    //     0x6ca668: stur            x4, [x3, #-1]
    // 0x6ca66c: StoreField: r3->field_7 = d0
    //     0x6ca66c: stur            d0, [x3, #7]
    // 0x6ca670: stur            x3, [fp, #-0x60]
    // 0x6ca674: r0 = Container()
    //     0x6ca674: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ca678: stur            x0, [fp, #-0x80]
    // 0x6ca67c: ldur            x16, [fp, #-0x68]
    // 0x6ca680: ldur            lr, [fp, #-0x60]
    // 0x6ca684: stp             lr, x16, [SP, #0x10]
    // 0x6ca688: ldur            x16, [fp, #-0x70]
    // 0x6ca68c: ldur            lr, [fp, #-0x78]
    // 0x6ca690: stp             lr, x16, [SP]
    // 0x6ca694: mov             x1, x0
    // 0x6ca698: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6ca698: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6ca69c: ldr             x4, [x4, #0x990]
    // 0x6ca6a0: r0 = Container()
    //     0x6ca6a0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ca6a4: r0 = Align()
    //     0x6ca6a4: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6ca6a8: mov             x2, x0
    // 0x6ca6ac: r0 = Instance_Alignment
    //     0x6ca6ac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6ca6b0: ldr             x0, [x0, #0x60]
    // 0x6ca6b4: stur            x2, [fp, #-0x60]
    // 0x6ca6b8: StoreField: r2->field_f = r0
    //     0x6ca6b8: stur            w0, [x2, #0xf]
    // 0x6ca6bc: ldur            x1, [fp, #-0x80]
    // 0x6ca6c0: StoreField: r2->field_b = r1
    //     0x6ca6c0: stur            w1, [x2, #0xb]
    // 0x6ca6c4: r1 = 4
    //     0x6ca6c4: mov             x1, #4
    // 0x6ca6c8: r0 = SizeExtension.w()
    //     0x6ca6c8: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6ca6cc: stur            d0, [fp, #-0xa0]
    // 0x6ca6d0: r0 = Obx()
    //     0x6ca6d0: bl              #0x6cbf7c  ; AllocateObxStub -> Obx (size=0x10)
    // 0x6ca6d4: ldur            x2, [fp, #-0x10]
    // 0x6ca6d8: r1 = Function '<anonymous closure>':.
    //     0x6ca6d8: add             x1, PP, #0x20, lsl #12  ; [pp+0x209d0] AnonymousClosure: (0x6cdddc), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6ca6dc: ldr             x1, [x1, #0x9d0]
    // 0x6ca6e0: stur            x0, [fp, #-0x68]
    // 0x6ca6e4: r0 = AllocateClosure()
    //     0x6ca6e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ca6e8: mov             x1, x0
    // 0x6ca6ec: ldur            x0, [fp, #-0x68]
    // 0x6ca6f0: StoreField: r0->field_b = r1
    //     0x6ca6f0: stur            w1, [x0, #0xb]
    // 0x6ca6f4: r1 = 15
    //     0x6ca6f4: mov             x1, #0xf
    // 0x6ca6f8: r0 = SizeExtension.sp()
    //     0x6ca6f8: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6ca6fc: stur            d0, [fp, #-0xa8]
    // 0x6ca700: r0 = TextStyle()
    //     0x6ca700: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ca704: mov             x1, x0
    // 0x6ca708: r0 = true
    //     0x6ca708: add             x0, NULL, #0x20  ; true
    // 0x6ca70c: stur            x1, [fp, #-0x70]
    // 0x6ca710: StoreField: r1->field_7 = r0
    //     0x6ca710: stur            w0, [x1, #7]
    // 0x6ca714: r2 = Instance_MaterialColor
    //     0x6ca714: add             x2, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6ca718: ldr             x2, [x2, #0xbc8]
    // 0x6ca71c: StoreField: r1->field_b = r2
    //     0x6ca71c: stur            w2, [x1, #0xb]
    // 0x6ca720: ldur            d0, [fp, #-0xa8]
    // 0x6ca724: r3 = inline_Allocate_Double()
    //     0x6ca724: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0x6ca728: add             x3, x3, #0x10
    //     0x6ca72c: cmp             x4, x3
    //     0x6ca730: b.ls            #0x6cba08
    //     0x6ca734: str             x3, [THR, #0x60]  ; THR::top
    //     0x6ca738: sub             x3, x3, #0xf
    //     0x6ca73c: mov             x4, #0xe15c
    //     0x6ca740: movk            x4, #3, lsl #16
    //     0x6ca744: stur            x4, [x3, #-1]
    // 0x6ca748: StoreField: r3->field_7 = d0
    //     0x6ca748: stur            d0, [x3, #7]
    // 0x6ca74c: StoreField: r1->field_1f = r3
    //     0x6ca74c: stur            w3, [x1, #0x1f]
    // 0x6ca750: r3 = Instance_FontWeight
    //     0x6ca750: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6ca754: ldr             x3, [x3, #0x1d0]
    // 0x6ca758: StoreField: r1->field_23 = r3
    //     0x6ca758: stur            w3, [x1, #0x23]
    // 0x6ca75c: r0 = Text()
    //     0x6ca75c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ca760: mov             x3, x0
    // 0x6ca764: r0 = "kcal"
    //     0x6ca764: add             x0, PP, #0x20, lsl #12  ; [pp+0x209d8] "kcal"
    //     0x6ca768: ldr             x0, [x0, #0x9d8]
    // 0x6ca76c: stur            x3, [fp, #-0x78]
    // 0x6ca770: StoreField: r3->field_b = r0
    //     0x6ca770: stur            w0, [x3, #0xb]
    // 0x6ca774: ldur            x0, [fp, #-0x70]
    // 0x6ca778: StoreField: r3->field_13 = r0
    //     0x6ca778: stur            w0, [x3, #0x13]
    // 0x6ca77c: r1 = Null
    //     0x6ca77c: mov             x1, NULL
    // 0x6ca780: r2 = 4
    //     0x6ca780: mov             x2, #4
    // 0x6ca784: r0 = AllocateArray()
    //     0x6ca784: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ca788: mov             x2, x0
    // 0x6ca78c: ldur            x0, [fp, #-0x68]
    // 0x6ca790: stur            x2, [fp, #-0x70]
    // 0x6ca794: StoreField: r2->field_f = r0
    //     0x6ca794: stur            w0, [x2, #0xf]
    // 0x6ca798: ldur            x0, [fp, #-0x78]
    // 0x6ca79c: StoreField: r2->field_13 = r0
    //     0x6ca79c: stur            w0, [x2, #0x13]
    // 0x6ca7a0: r1 = <Widget>
    //     0x6ca7a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ca7a4: r0 = AllocateGrowableArray()
    //     0x6ca7a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ca7a8: mov             x1, x0
    // 0x6ca7ac: ldur            x0, [fp, #-0x70]
    // 0x6ca7b0: stur            x1, [fp, #-0x68]
    // 0x6ca7b4: StoreField: r1->field_f = r0
    //     0x6ca7b4: stur            w0, [x1, #0xf]
    // 0x6ca7b8: r2 = 4
    //     0x6ca7b8: mov             x2, #4
    // 0x6ca7bc: StoreField: r1->field_b = r2
    //     0x6ca7bc: stur            w2, [x1, #0xb]
    // 0x6ca7c0: r0 = Row()
    //     0x6ca7c0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6ca7c4: mov             x1, x0
    // 0x6ca7c8: r0 = Instance_Axis
    //     0x6ca7c8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6ca7cc: stur            x1, [fp, #-0x70]
    // 0x6ca7d0: StoreField: r1->field_f = r0
    //     0x6ca7d0: stur            w0, [x1, #0xf]
    // 0x6ca7d4: r2 = Instance_MainAxisAlignment
    //     0x6ca7d4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x6ca7d8: ldr             x2, [x2, #0x328]
    // 0x6ca7dc: StoreField: r1->field_13 = r2
    //     0x6ca7dc: stur            w2, [x1, #0x13]
    // 0x6ca7e0: r3 = Instance_MainAxisSize
    //     0x6ca7e0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ca7e4: ldr             x3, [x3, #0x330]
    // 0x6ca7e8: ArrayStore: r1[0] = r3  ; List_4
    //     0x6ca7e8: stur            w3, [x1, #0x17]
    // 0x6ca7ec: r4 = Instance_CrossAxisAlignment
    //     0x6ca7ec: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ca7f0: ldr             x4, [x4, #0x338]
    // 0x6ca7f4: StoreField: r1->field_1b = r4
    //     0x6ca7f4: stur            w4, [x1, #0x1b]
    // 0x6ca7f8: r5 = Instance_VerticalDirection
    //     0x6ca7f8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ca7fc: ldr             x5, [x5, #0x340]
    // 0x6ca800: StoreField: r1->field_23 = r5
    //     0x6ca800: stur            w5, [x1, #0x23]
    // 0x6ca804: r6 = Instance_Clip
    //     0x6ca804: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ca808: ldr             x6, [x6, #0x348]
    // 0x6ca80c: StoreField: r1->field_2b = r6
    //     0x6ca80c: stur            w6, [x1, #0x2b]
    // 0x6ca810: ldur            d0, [fp, #-0xa0]
    // 0x6ca814: StoreField: r1->field_2f = d0
    //     0x6ca814: stur            d0, [x1, #0x2f]
    // 0x6ca818: ldur            x7, [fp, #-0x68]
    // 0x6ca81c: StoreField: r1->field_b = r7
    //     0x6ca81c: stur            w7, [x1, #0xb]
    // 0x6ca820: r0 = Align()
    //     0x6ca820: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6ca824: mov             x3, x0
    // 0x6ca828: r0 = Instance_Alignment
    //     0x6ca828: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d00] Obj!Alignment@a0ced1
    //     0x6ca82c: ldr             x0, [x0, #0xd00]
    // 0x6ca830: stur            x3, [fp, #-0x68]
    // 0x6ca834: StoreField: r3->field_f = r0
    //     0x6ca834: stur            w0, [x3, #0xf]
    // 0x6ca838: ldur            x1, [fp, #-0x70]
    // 0x6ca83c: StoreField: r3->field_b = r1
    //     0x6ca83c: stur            w1, [x3, #0xb]
    // 0x6ca840: r1 = Null
    //     0x6ca840: mov             x1, NULL
    // 0x6ca844: r2 = 6
    //     0x6ca844: mov             x2, #6
    // 0x6ca848: r0 = AllocateArray()
    //     0x6ca848: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ca84c: mov             x2, x0
    // 0x6ca850: ldur            x0, [fp, #-0x58]
    // 0x6ca854: stur            x2, [fp, #-0x70]
    // 0x6ca858: StoreField: r2->field_f = r0
    //     0x6ca858: stur            w0, [x2, #0xf]
    // 0x6ca85c: ldur            x0, [fp, #-0x60]
    // 0x6ca860: StoreField: r2->field_13 = r0
    //     0x6ca860: stur            w0, [x2, #0x13]
    // 0x6ca864: ldur            x0, [fp, #-0x68]
    // 0x6ca868: ArrayStore: r2[0] = r0  ; List_4
    //     0x6ca868: stur            w0, [x2, #0x17]
    // 0x6ca86c: r1 = <Widget>
    //     0x6ca86c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ca870: r0 = AllocateGrowableArray()
    //     0x6ca870: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ca874: mov             x1, x0
    // 0x6ca878: ldur            x0, [fp, #-0x70]
    // 0x6ca87c: stur            x1, [fp, #-0x58]
    // 0x6ca880: StoreField: r1->field_f = r0
    //     0x6ca880: stur            w0, [x1, #0xf]
    // 0x6ca884: r2 = 6
    //     0x6ca884: mov             x2, #6
    // 0x6ca888: StoreField: r1->field_b = r2
    //     0x6ca888: stur            w2, [x1, #0xb]
    // 0x6ca88c: r0 = Stack()
    //     0x6ca88c: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x6ca890: mov             x1, x0
    // 0x6ca894: r0 = Instance_AlignmentDirectional
    //     0x6ca894: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x6ca898: ldr             x0, [x0, #0xd28]
    // 0x6ca89c: stur            x1, [fp, #-0x60]
    // 0x6ca8a0: StoreField: r1->field_f = r0
    //     0x6ca8a0: stur            w0, [x1, #0xf]
    // 0x6ca8a4: r2 = Instance_StackFit
    //     0x6ca8a4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x6ca8a8: ldr             x2, [x2, #0x548]
    // 0x6ca8ac: ArrayStore: r1[0] = r2  ; List_4
    //     0x6ca8ac: stur            w2, [x1, #0x17]
    // 0x6ca8b0: r3 = Instance_Clip
    //     0x6ca8b0: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6ca8b4: ldr             x3, [x3, #0x2d8]
    // 0x6ca8b8: StoreField: r1->field_1b = r3
    //     0x6ca8b8: stur            w3, [x1, #0x1b]
    // 0x6ca8bc: ldur            x4, [fp, #-0x58]
    // 0x6ca8c0: StoreField: r1->field_b = r4
    //     0x6ca8c0: stur            w4, [x1, #0xb]
    // 0x6ca8c4: r0 = Padding()
    //     0x6ca8c4: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6ca8c8: mov             x1, x0
    // 0x6ca8cc: ldur            x0, [fp, #-0x50]
    // 0x6ca8d0: stur            x1, [fp, #-0x58]
    // 0x6ca8d4: StoreField: r1->field_f = r0
    //     0x6ca8d4: stur            w0, [x1, #0xf]
    // 0x6ca8d8: ldur            x0, [fp, #-0x60]
    // 0x6ca8dc: StoreField: r1->field_b = r0
    //     0x6ca8dc: stur            w0, [x1, #0xb]
    // 0x6ca8e0: ldur            d0, [fp, #-0x98]
    // 0x6ca8e4: r0 = inline_Allocate_Double()
    //     0x6ca8e4: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6ca8e8: add             x0, x0, #0x10
    //     0x6ca8ec: cmp             x2, x0
    //     0x6ca8f0: b.ls            #0x6cba2c
    //     0x6ca8f4: str             x0, [THR, #0x60]  ; THR::top
    //     0x6ca8f8: sub             x0, x0, #0xf
    //     0x6ca8fc: mov             x2, #0xe15c
    //     0x6ca900: movk            x2, #3, lsl #16
    //     0x6ca904: stur            x2, [x0, #-1]
    // 0x6ca908: StoreField: r0->field_7 = d0
    //     0x6ca908: stur            d0, [x0, #7]
    // 0x6ca90c: stur            x0, [fp, #-0x50]
    // 0x6ca910: r0 = Container()
    //     0x6ca910: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6ca914: stur            x0, [fp, #-0x60]
    // 0x6ca918: ldur            x16, [fp, #-0x40]
    // 0x6ca91c: ldur            lr, [fp, #-0x50]
    // 0x6ca920: stp             lr, x16, [SP, #0x10]
    // 0x6ca924: ldur            x16, [fp, #-0x48]
    // 0x6ca928: ldur            lr, [fp, #-0x58]
    // 0x6ca92c: stp             lr, x16, [SP]
    // 0x6ca930: mov             x1, x0
    // 0x6ca934: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, padding, 0x1, null]
    //     0x6ca934: add             x4, PP, #0x20, lsl #12  ; [pp+0x209b8] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "padding", 0x1, Null]
    //     0x6ca938: ldr             x4, [x4, #0x9b8]
    // 0x6ca93c: r0 = Container()
    //     0x6ca93c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6ca940: r1 = <FlexParentData>
    //     0x6ca940: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6ca944: ldr             x1, [x1, #0x340]
    // 0x6ca948: r0 = Expanded()
    //     0x6ca948: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6ca94c: mov             x2, x0
    // 0x6ca950: r0 = 1
    //     0x6ca950: mov             x0, #1
    // 0x6ca954: stur            x2, [fp, #-0x40]
    // 0x6ca958: StoreField: r2->field_13 = r0
    //     0x6ca958: stur            x0, [x2, #0x13]
    // 0x6ca95c: r3 = Instance_FlexFit
    //     0x6ca95c: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6ca960: ldr             x3, [x3, #0x348]
    // 0x6ca964: StoreField: r2->field_1b = r3
    //     0x6ca964: stur            w3, [x2, #0x1b]
    // 0x6ca968: ldur            x1, [fp, #-0x60]
    // 0x6ca96c: StoreField: r2->field_b = r1
    //     0x6ca96c: stur            w1, [x2, #0xb]
    // 0x6ca970: r1 = 8
    //     0x6ca970: mov             x1, #8
    // 0x6ca974: r0 = SizeExtension.h()
    //     0x6ca974: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6ca978: stur            d0, [fp, #-0x98]
    // 0x6ca97c: r0 = EdgeInsets()
    //     0x6ca97c: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6ca980: stur            x0, [fp, #-0x48]
    // 0x6ca984: StoreField: r0->field_7 = rZR
    //     0x6ca984: stur            xzr, [x0, #7]
    // 0x6ca988: ldur            d0, [fp, #-0x98]
    // 0x6ca98c: StoreField: r0->field_f = d0
    //     0x6ca98c: stur            d0, [x0, #0xf]
    // 0x6ca990: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6ca990: stur            xzr, [x0, #0x17]
    // 0x6ca994: StoreField: r0->field_1f = d0
    //     0x6ca994: stur            d0, [x0, #0x1f]
    // 0x6ca998: r1 = 150
    //     0x6ca998: mov             x1, #0x96
    // 0x6ca99c: r0 = SizeExtension.h()
    //     0x6ca99c: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6ca9a0: r1 = 20
    //     0x6ca9a0: mov             x1, #0x14
    // 0x6ca9a4: stur            d0, [fp, #-0x98]
    // 0x6ca9a8: r0 = SizeExtension.r()
    //     0x6ca9a8: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6ca9ac: stur            d0, [fp, #-0xa0]
    // 0x6ca9b0: r0 = Radius()
    //     0x6ca9b0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6ca9b4: ldur            d0, [fp, #-0xa0]
    // 0x6ca9b8: stur            x0, [fp, #-0x50]
    // 0x6ca9bc: StoreField: r0->field_7 = d0
    //     0x6ca9bc: stur            d0, [x0, #7]
    // 0x6ca9c0: StoreField: r0->field_f = d0
    //     0x6ca9c0: stur            d0, [x0, #0xf]
    // 0x6ca9c4: r0 = BorderRadius()
    //     0x6ca9c4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6ca9c8: mov             x2, x0
    // 0x6ca9cc: ldur            x0, [fp, #-0x50]
    // 0x6ca9d0: stur            x2, [fp, #-0x58]
    // 0x6ca9d4: StoreField: r2->field_7 = r0
    //     0x6ca9d4: stur            w0, [x2, #7]
    // 0x6ca9d8: StoreField: r2->field_b = r0
    //     0x6ca9d8: stur            w0, [x2, #0xb]
    // 0x6ca9dc: StoreField: r2->field_f = r0
    //     0x6ca9dc: stur            w0, [x2, #0xf]
    // 0x6ca9e0: StoreField: r2->field_13 = r0
    //     0x6ca9e0: stur            w0, [x2, #0x13]
    // 0x6ca9e4: r16 = 0.050000
    //     0x6ca9e4: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x6ca9e8: str             x16, [SP]
    // 0x6ca9ec: r1 = Instance_Color
    //     0x6ca9ec: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6ca9f0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6ca9f0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6ca9f4: ldr             x4, [x4, #0x198]
    // 0x6ca9f8: r0 = withValues()
    //     0x6ca9f8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6ca9fc: r1 = 12
    //     0x6ca9fc: mov             x1, #0xc
    // 0x6caa00: stur            x0, [fp, #-0x50]
    // 0x6caa04: r0 = SizeExtension.r()
    //     0x6caa04: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6caa08: r1 = 6
    //     0x6caa08: mov             x1, #6
    // 0x6caa0c: stur            d0, [fp, #-0xa0]
    // 0x6caa10: r0 = SizeExtension.h()
    //     0x6caa10: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6caa14: stur            d0, [fp, #-0xa8]
    // 0x6caa18: r0 = Offset()
    //     0x6caa18: bl              #0x3ec40c  ; AllocateOffsetStub -> Offset (size=0x18)
    // 0x6caa1c: stur            x0, [fp, #-0x60]
    // 0x6caa20: StoreField: r0->field_7 = rZR
    //     0x6caa20: stur            xzr, [x0, #7]
    // 0x6caa24: ldur            d0, [fp, #-0xa8]
    // 0x6caa28: StoreField: r0->field_f = d0
    //     0x6caa28: stur            d0, [x0, #0xf]
    // 0x6caa2c: r0 = BoxShadow()
    //     0x6caa2c: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6caa30: stur            x0, [fp, #-0x68]
    // 0x6caa34: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6caa34: stur            xzr, [x0, #0x17]
    // 0x6caa38: r3 = Instance_BlurStyle
    //     0x6caa38: add             x3, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6caa3c: ldr             x3, [x3, #0x9b0]
    // 0x6caa40: StoreField: r0->field_1f = r3
    //     0x6caa40: stur            w3, [x0, #0x1f]
    // 0x6caa44: ldur            x1, [fp, #-0x50]
    // 0x6caa48: StoreField: r0->field_7 = r1
    //     0x6caa48: stur            w1, [x0, #7]
    // 0x6caa4c: ldur            x1, [fp, #-0x60]
    // 0x6caa50: StoreField: r0->field_b = r1
    //     0x6caa50: stur            w1, [x0, #0xb]
    // 0x6caa54: ldur            d0, [fp, #-0xa0]
    // 0x6caa58: StoreField: r0->field_f = d0
    //     0x6caa58: stur            d0, [x0, #0xf]
    // 0x6caa5c: r1 = Null
    //     0x6caa5c: mov             x1, NULL
    // 0x6caa60: r2 = 2
    //     0x6caa60: mov             x2, #2
    // 0x6caa64: r0 = AllocateArray()
    //     0x6caa64: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6caa68: mov             x2, x0
    // 0x6caa6c: ldur            x0, [fp, #-0x68]
    // 0x6caa70: stur            x2, [fp, #-0x50]
    // 0x6caa74: StoreField: r2->field_f = r0
    //     0x6caa74: stur            w0, [x2, #0xf]
    // 0x6caa78: r1 = <BoxShadow>
    //     0x6caa78: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6caa7c: ldr             x1, [x1, #0x9c0]
    // 0x6caa80: r0 = AllocateGrowableArray()
    //     0x6caa80: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6caa84: mov             x1, x0
    // 0x6caa88: ldur            x0, [fp, #-0x50]
    // 0x6caa8c: stur            x1, [fp, #-0x60]
    // 0x6caa90: StoreField: r1->field_f = r0
    //     0x6caa90: stur            w0, [x1, #0xf]
    // 0x6caa94: r2 = 2
    //     0x6caa94: mov             x2, #2
    // 0x6caa98: StoreField: r1->field_b = r2
    //     0x6caa98: stur            w2, [x1, #0xb]
    // 0x6caa9c: r0 = BoxDecoration()
    //     0x6caa9c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6caaa0: mov             x2, x0
    // 0x6caaa4: r0 = Instance_Color
    //     0x6caaa4: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6caaa8: stur            x2, [fp, #-0x50]
    // 0x6caaac: StoreField: r2->field_7 = r0
    //     0x6caaac: stur            w0, [x2, #7]
    // 0x6caab0: ldur            x1, [fp, #-0x58]
    // 0x6caab4: StoreField: r2->field_13 = r1
    //     0x6caab4: stur            w1, [x2, #0x13]
    // 0x6caab8: ldur            x1, [fp, #-0x60]
    // 0x6caabc: ArrayStore: r2[0] = r1  ; List_4
    //     0x6caabc: stur            w1, [x2, #0x17]
    // 0x6caac0: r3 = Instance_BoxShape
    //     0x6caac0: add             x3, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6caac4: ldr             x3, [x3, #0x1c8]
    // 0x6caac8: StoreField: r2->field_23 = r3
    //     0x6caac8: stur            w3, [x2, #0x23]
    // 0x6caacc: r1 = 8
    //     0x6caacc: mov             x1, #8
    // 0x6caad0: r0 = SizeExtension.w()
    //     0x6caad0: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6caad4: stur            d0, [fp, #-0xa0]
    // 0x6caad8: r0 = EdgeInsets()
    //     0x6caad8: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6caadc: ldur            d0, [fp, #-0xa0]
    // 0x6caae0: stur            x0, [fp, #-0x58]
    // 0x6caae4: StoreField: r0->field_7 = d0
    //     0x6caae4: stur            d0, [x0, #7]
    // 0x6caae8: StoreField: r0->field_f = d0
    //     0x6caae8: stur            d0, [x0, #0xf]
    // 0x6caaec: ArrayStore: r0[0] = d0  ; List_8
    //     0x6caaec: stur            d0, [x0, #0x17]
    // 0x6caaf0: StoreField: r0->field_1f = d0
    //     0x6caaf0: stur            d0, [x0, #0x1f]
    // 0x6caaf4: r1 = 20
    //     0x6caaf4: mov             x1, #0x14
    // 0x6caaf8: r0 = SizeExtension.sp()
    //     0x6caaf8: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6caafc: stur            d0, [fp, #-0xa0]
    // 0x6cab00: r0 = TextStyle()
    //     0x6cab00: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cab04: mov             x1, x0
    // 0x6cab08: r0 = true
    //     0x6cab08: add             x0, NULL, #0x20  ; true
    // 0x6cab0c: stur            x1, [fp, #-0x60]
    // 0x6cab10: StoreField: r1->field_7 = r0
    //     0x6cab10: stur            w0, [x1, #7]
    // 0x6cab14: ldur            d0, [fp, #-0xa0]
    // 0x6cab18: r2 = inline_Allocate_Double()
    //     0x6cab18: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6cab1c: add             x2, x2, #0x10
    //     0x6cab20: cmp             x3, x2
    //     0x6cab24: b.ls            #0x6cba44
    //     0x6cab28: str             x2, [THR, #0x60]  ; THR::top
    //     0x6cab2c: sub             x2, x2, #0xf
    //     0x6cab30: mov             x3, #0xe15c
    //     0x6cab34: movk            x3, #3, lsl #16
    //     0x6cab38: stur            x3, [x2, #-1]
    // 0x6cab3c: StoreField: r2->field_7 = d0
    //     0x6cab3c: stur            d0, [x2, #7]
    // 0x6cab40: StoreField: r1->field_1f = r2
    //     0x6cab40: stur            w2, [x1, #0x1f]
    // 0x6cab44: r2 = Instance_FontWeight
    //     0x6cab44: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6cab48: ldr             x2, [x2, #0x1d0]
    // 0x6cab4c: StoreField: r1->field_23 = r2
    //     0x6cab4c: stur            w2, [x1, #0x23]
    // 0x6cab50: r0 = Text()
    //     0x6cab50: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cab54: mov             x1, x0
    // 0x6cab58: r0 = "Süre"
    //     0x6cab58: add             x0, PP, #0x20, lsl #12  ; [pp+0x209e0] "Süre"
    //     0x6cab5c: ldr             x0, [x0, #0x9e0]
    // 0x6cab60: stur            x1, [fp, #-0x68]
    // 0x6cab64: StoreField: r1->field_b = r0
    //     0x6cab64: stur            w0, [x1, #0xb]
    // 0x6cab68: ldur            x0, [fp, #-0x60]
    // 0x6cab6c: StoreField: r1->field_13 = r0
    //     0x6cab6c: stur            w0, [x1, #0x13]
    // 0x6cab70: r0 = Align()
    //     0x6cab70: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6cab74: mov             x2, x0
    // 0x6cab78: r0 = Instance_Alignment
    //     0x6cab78: add             x0, PP, #0x14, lsl #12  ; [pp+0x14cf8] Obj!Alignment@a0cf11
    //     0x6cab7c: ldr             x0, [x0, #0xcf8]
    // 0x6cab80: stur            x2, [fp, #-0x60]
    // 0x6cab84: StoreField: r2->field_f = r0
    //     0x6cab84: stur            w0, [x2, #0xf]
    // 0x6cab88: ldur            x0, [fp, #-0x68]
    // 0x6cab8c: StoreField: r2->field_b = r0
    //     0x6cab8c: stur            w0, [x2, #0xb]
    // 0x6cab90: r1 = 60
    //     0x6cab90: mov             x1, #0x3c
    // 0x6cab94: r0 = SizeExtension.w()
    //     0x6cab94: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cab98: r1 = 60
    //     0x6cab98: mov             x1, #0x3c
    // 0x6cab9c: stur            d0, [fp, #-0xa0]
    // 0x6caba0: r0 = SizeExtension.h()
    //     0x6caba0: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6caba4: r1 = 30
    //     0x6caba4: mov             x1, #0x1e
    // 0x6caba8: stur            d0, [fp, #-0xa8]
    // 0x6cabac: r0 = SizeExtension.r()
    //     0x6cabac: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6cabb0: stur            d0, [fp, #-0xb0]
    // 0x6cabb4: r0 = Radius()
    //     0x6cabb4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6cabb8: ldur            d0, [fp, #-0xb0]
    // 0x6cabbc: stur            x0, [fp, #-0x68]
    // 0x6cabc0: StoreField: r0->field_7 = d0
    //     0x6cabc0: stur            d0, [x0, #7]
    // 0x6cabc4: StoreField: r0->field_f = d0
    //     0x6cabc4: stur            d0, [x0, #0xf]
    // 0x6cabc8: r0 = BorderRadius()
    //     0x6cabc8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6cabcc: mov             x2, x0
    // 0x6cabd0: ldur            x0, [fp, #-0x68]
    // 0x6cabd4: stur            x2, [fp, #-0x70]
    // 0x6cabd8: StoreField: r2->field_7 = r0
    //     0x6cabd8: stur            w0, [x2, #7]
    // 0x6cabdc: StoreField: r2->field_b = r0
    //     0x6cabdc: stur            w0, [x2, #0xb]
    // 0x6cabe0: StoreField: r2->field_f = r0
    //     0x6cabe0: stur            w0, [x2, #0xf]
    // 0x6cabe4: StoreField: r2->field_13 = r0
    //     0x6cabe4: stur            w0, [x2, #0x13]
    // 0x6cabe8: r16 = 0.200000
    //     0x6cabe8: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6cabec: ldr             x16, [x16, #0x1f0]
    // 0x6cabf0: str             x16, [SP]
    // 0x6cabf4: r1 = Instance_MaterialColor
    //     0x6cabf4: ldr             x1, [PP, #0x5720]  ; [pp+0x5720] Obj!MaterialColor@a25a21
    // 0x6cabf8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6cabf8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6cabfc: ldr             x4, [x4, #0x198]
    // 0x6cac00: r0 = withValues()
    //     0x6cac00: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6cac04: stur            x0, [fp, #-0x68]
    // 0x6cac08: r0 = BoxDecoration()
    //     0x6cac08: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6cac0c: mov             x2, x0
    // 0x6cac10: ldur            x0, [fp, #-0x68]
    // 0x6cac14: stur            x2, [fp, #-0x78]
    // 0x6cac18: StoreField: r2->field_7 = r0
    //     0x6cac18: stur            w0, [x2, #7]
    // 0x6cac1c: ldur            x0, [fp, #-0x70]
    // 0x6cac20: StoreField: r2->field_13 = r0
    //     0x6cac20: stur            w0, [x2, #0x13]
    // 0x6cac24: r0 = Instance_BoxShape
    //     0x6cac24: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6cac28: ldr             x0, [x0, #0x1c8]
    // 0x6cac2c: StoreField: r2->field_23 = r0
    //     0x6cac2c: stur            w0, [x2, #0x23]
    // 0x6cac30: r1 = 30
    //     0x6cac30: mov             x1, #0x1e
    // 0x6cac34: r0 = SizeExtension.r()
    //     0x6cac34: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6cac38: stur            d0, [fp, #-0xb0]
    // 0x6cac3c: r0 = Icon()
    //     0x6cac3c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x6cac40: mov             x1, x0
    // 0x6cac44: r0 = Instance_IconData
    //     0x6cac44: add             x0, PP, #0x20, lsl #12  ; [pp+0x209e8] Obj!IconData@a09c81
    //     0x6cac48: ldr             x0, [x0, #0x9e8]
    // 0x6cac4c: stur            x1, [fp, #-0x68]
    // 0x6cac50: StoreField: r1->field_b = r0
    //     0x6cac50: stur            w0, [x1, #0xb]
    // 0x6cac54: ldur            d0, [fp, #-0xb0]
    // 0x6cac58: r0 = inline_Allocate_Double()
    //     0x6cac58: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6cac5c: add             x0, x0, #0x10
    //     0x6cac60: cmp             x2, x0
    //     0x6cac64: b.ls            #0x6cba60
    //     0x6cac68: str             x0, [THR, #0x60]  ; THR::top
    //     0x6cac6c: sub             x0, x0, #0xf
    //     0x6cac70: mov             x2, #0xe15c
    //     0x6cac74: movk            x2, #3, lsl #16
    //     0x6cac78: stur            x2, [x0, #-1]
    // 0x6cac7c: StoreField: r0->field_7 = d0
    //     0x6cac7c: stur            d0, [x0, #7]
    // 0x6cac80: StoreField: r1->field_f = r0
    //     0x6cac80: stur            w0, [x1, #0xf]
    // 0x6cac84: r0 = Instance_MaterialColor
    //     0x6cac84: ldr             x0, [PP, #0x5720]  ; [pp+0x5720] Obj!MaterialColor@a25a21
    // 0x6cac88: StoreField: r1->field_23 = r0
    //     0x6cac88: stur            w0, [x1, #0x23]
    // 0x6cac8c: r0 = Center()
    //     0x6cac8c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6cac90: mov             x1, x0
    // 0x6cac94: r0 = Instance_Alignment
    //     0x6cac94: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6cac98: ldr             x0, [x0, #0x60]
    // 0x6cac9c: stur            x1, [fp, #-0x80]
    // 0x6caca0: StoreField: r1->field_f = r0
    //     0x6caca0: stur            w0, [x1, #0xf]
    // 0x6caca4: ldur            x2, [fp, #-0x68]
    // 0x6caca8: StoreField: r1->field_b = r2
    //     0x6caca8: stur            w2, [x1, #0xb]
    // 0x6cacac: ldur            d0, [fp, #-0xa0]
    // 0x6cacb0: r2 = inline_Allocate_Double()
    //     0x6cacb0: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6cacb4: add             x2, x2, #0x10
    //     0x6cacb8: cmp             x3, x2
    //     0x6cacbc: b.ls            #0x6cba78
    //     0x6cacc0: str             x2, [THR, #0x60]  ; THR::top
    //     0x6cacc4: sub             x2, x2, #0xf
    //     0x6cacc8: mov             x3, #0xe15c
    //     0x6caccc: movk            x3, #3, lsl #16
    //     0x6cacd0: stur            x3, [x2, #-1]
    // 0x6cacd4: StoreField: r2->field_7 = d0
    //     0x6cacd4: stur            d0, [x2, #7]
    // 0x6cacd8: ldur            d0, [fp, #-0xa8]
    // 0x6cacdc: stur            x2, [fp, #-0x70]
    // 0x6cace0: r3 = inline_Allocate_Double()
    //     0x6cace0: ldp             x3, x4, [THR, #0x60]  ; THR::top
    //     0x6cace4: add             x3, x3, #0x10
    //     0x6cace8: cmp             x4, x3
    //     0x6cacec: b.ls            #0x6cba94
    //     0x6cacf0: str             x3, [THR, #0x60]  ; THR::top
    //     0x6cacf4: sub             x3, x3, #0xf
    //     0x6cacf8: mov             x4, #0xe15c
    //     0x6cacfc: movk            x4, #3, lsl #16
    //     0x6cad00: stur            x4, [x3, #-1]
    // 0x6cad04: StoreField: r3->field_7 = d0
    //     0x6cad04: stur            d0, [x3, #7]
    // 0x6cad08: stur            x3, [fp, #-0x68]
    // 0x6cad0c: r0 = Container()
    //     0x6cad0c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6cad10: stur            x0, [fp, #-0x88]
    // 0x6cad14: ldur            x16, [fp, #-0x70]
    // 0x6cad18: ldur            lr, [fp, #-0x68]
    // 0x6cad1c: stp             lr, x16, [SP, #0x10]
    // 0x6cad20: ldur            x16, [fp, #-0x78]
    // 0x6cad24: ldur            lr, [fp, #-0x80]
    // 0x6cad28: stp             lr, x16, [SP]
    // 0x6cad2c: mov             x1, x0
    // 0x6cad30: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6cad30: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6cad34: ldr             x4, [x4, #0x990]
    // 0x6cad38: r0 = Container()
    //     0x6cad38: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6cad3c: r0 = Align()
    //     0x6cad3c: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6cad40: mov             x2, x0
    // 0x6cad44: r0 = Instance_Alignment
    //     0x6cad44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6cad48: ldr             x0, [x0, #0x60]
    // 0x6cad4c: stur            x2, [fp, #-0x68]
    // 0x6cad50: StoreField: r2->field_f = r0
    //     0x6cad50: stur            w0, [x2, #0xf]
    // 0x6cad54: ldur            x1, [fp, #-0x88]
    // 0x6cad58: StoreField: r2->field_b = r1
    //     0x6cad58: stur            w1, [x2, #0xb]
    // 0x6cad5c: r1 = 4
    //     0x6cad5c: mov             x1, #4
    // 0x6cad60: r0 = SizeExtension.w()
    //     0x6cad60: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cad64: stur            d0, [fp, #-0xa0]
    // 0x6cad68: r0 = Obx()
    //     0x6cad68: bl              #0x6cbf7c  ; AllocateObxStub -> Obx (size=0x10)
    // 0x6cad6c: ldur            x2, [fp, #-0x10]
    // 0x6cad70: r1 = Function '<anonymous closure>':.
    //     0x6cad70: add             x1, PP, #0x20, lsl #12  ; [pp+0x209f0] AnonymousClosure: (0x6cdbd4), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6cad74: ldr             x1, [x1, #0x9f0]
    // 0x6cad78: stur            x0, [fp, #-0x70]
    // 0x6cad7c: r0 = AllocateClosure()
    //     0x6cad7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cad80: mov             x1, x0
    // 0x6cad84: ldur            x0, [fp, #-0x70]
    // 0x6cad88: StoreField: r0->field_b = r1
    //     0x6cad88: stur            w1, [x0, #0xb]
    // 0x6cad8c: r1 = Null
    //     0x6cad8c: mov             x1, NULL
    // 0x6cad90: r2 = 2
    //     0x6cad90: mov             x2, #2
    // 0x6cad94: r0 = AllocateArray()
    //     0x6cad94: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cad98: mov             x2, x0
    // 0x6cad9c: ldur            x0, [fp, #-0x70]
    // 0x6cada0: stur            x2, [fp, #-0x78]
    // 0x6cada4: StoreField: r2->field_f = r0
    //     0x6cada4: stur            w0, [x2, #0xf]
    // 0x6cada8: r1 = <Widget>
    //     0x6cada8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cadac: r0 = AllocateGrowableArray()
    //     0x6cadac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cadb0: mov             x1, x0
    // 0x6cadb4: ldur            x0, [fp, #-0x78]
    // 0x6cadb8: stur            x1, [fp, #-0x70]
    // 0x6cadbc: StoreField: r1->field_f = r0
    //     0x6cadbc: stur            w0, [x1, #0xf]
    // 0x6cadc0: r2 = 2
    //     0x6cadc0: mov             x2, #2
    // 0x6cadc4: StoreField: r1->field_b = r2
    //     0x6cadc4: stur            w2, [x1, #0xb]
    // 0x6cadc8: r0 = Row()
    //     0x6cadc8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6cadcc: mov             x1, x0
    // 0x6cadd0: r0 = Instance_Axis
    //     0x6cadd0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6cadd4: stur            x1, [fp, #-0x78]
    // 0x6cadd8: StoreField: r1->field_f = r0
    //     0x6cadd8: stur            w0, [x1, #0xf]
    // 0x6caddc: r2 = Instance_MainAxisAlignment
    //     0x6caddc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x6cade0: ldr             x2, [x2, #0x328]
    // 0x6cade4: StoreField: r1->field_13 = r2
    //     0x6cade4: stur            w2, [x1, #0x13]
    // 0x6cade8: r3 = Instance_MainAxisSize
    //     0x6cade8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cadec: ldr             x3, [x3, #0x330]
    // 0x6cadf0: ArrayStore: r1[0] = r3  ; List_4
    //     0x6cadf0: stur            w3, [x1, #0x17]
    // 0x6cadf4: r4 = Instance_CrossAxisAlignment
    //     0x6cadf4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6cadf8: ldr             x4, [x4, #0x338]
    // 0x6cadfc: StoreField: r1->field_1b = r4
    //     0x6cadfc: stur            w4, [x1, #0x1b]
    // 0x6cae00: r5 = Instance_VerticalDirection
    //     0x6cae00: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cae04: ldr             x5, [x5, #0x340]
    // 0x6cae08: StoreField: r1->field_23 = r5
    //     0x6cae08: stur            w5, [x1, #0x23]
    // 0x6cae0c: r6 = Instance_Clip
    //     0x6cae0c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cae10: ldr             x6, [x6, #0x348]
    // 0x6cae14: StoreField: r1->field_2b = r6
    //     0x6cae14: stur            w6, [x1, #0x2b]
    // 0x6cae18: ldur            d0, [fp, #-0xa0]
    // 0x6cae1c: StoreField: r1->field_2f = d0
    //     0x6cae1c: stur            d0, [x1, #0x2f]
    // 0x6cae20: ldur            x7, [fp, #-0x70]
    // 0x6cae24: StoreField: r1->field_b = r7
    //     0x6cae24: stur            w7, [x1, #0xb]
    // 0x6cae28: r0 = Align()
    //     0x6cae28: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6cae2c: mov             x3, x0
    // 0x6cae30: r0 = Instance_Alignment
    //     0x6cae30: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d00] Obj!Alignment@a0ced1
    //     0x6cae34: ldr             x0, [x0, #0xd00]
    // 0x6cae38: stur            x3, [fp, #-0x70]
    // 0x6cae3c: StoreField: r3->field_f = r0
    //     0x6cae3c: stur            w0, [x3, #0xf]
    // 0x6cae40: ldur            x0, [fp, #-0x78]
    // 0x6cae44: StoreField: r3->field_b = r0
    //     0x6cae44: stur            w0, [x3, #0xb]
    // 0x6cae48: r1 = Null
    //     0x6cae48: mov             x1, NULL
    // 0x6cae4c: r2 = 6
    //     0x6cae4c: mov             x2, #6
    // 0x6cae50: r0 = AllocateArray()
    //     0x6cae50: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cae54: mov             x2, x0
    // 0x6cae58: ldur            x0, [fp, #-0x60]
    // 0x6cae5c: stur            x2, [fp, #-0x78]
    // 0x6cae60: StoreField: r2->field_f = r0
    //     0x6cae60: stur            w0, [x2, #0xf]
    // 0x6cae64: ldur            x0, [fp, #-0x68]
    // 0x6cae68: StoreField: r2->field_13 = r0
    //     0x6cae68: stur            w0, [x2, #0x13]
    // 0x6cae6c: ldur            x0, [fp, #-0x70]
    // 0x6cae70: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cae70: stur            w0, [x2, #0x17]
    // 0x6cae74: r1 = <Widget>
    //     0x6cae74: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cae78: r0 = AllocateGrowableArray()
    //     0x6cae78: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cae7c: mov             x1, x0
    // 0x6cae80: ldur            x0, [fp, #-0x78]
    // 0x6cae84: stur            x1, [fp, #-0x60]
    // 0x6cae88: StoreField: r1->field_f = r0
    //     0x6cae88: stur            w0, [x1, #0xf]
    // 0x6cae8c: r2 = 6
    //     0x6cae8c: mov             x2, #6
    // 0x6cae90: StoreField: r1->field_b = r2
    //     0x6cae90: stur            w2, [x1, #0xb]
    // 0x6cae94: r0 = Stack()
    //     0x6cae94: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x6cae98: mov             x1, x0
    // 0x6cae9c: r0 = Instance_AlignmentDirectional
    //     0x6cae9c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x6caea0: ldr             x0, [x0, #0xd28]
    // 0x6caea4: stur            x1, [fp, #-0x68]
    // 0x6caea8: StoreField: r1->field_f = r0
    //     0x6caea8: stur            w0, [x1, #0xf]
    // 0x6caeac: r0 = Instance_StackFit
    //     0x6caeac: add             x0, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x6caeb0: ldr             x0, [x0, #0x548]
    // 0x6caeb4: ArrayStore: r1[0] = r0  ; List_4
    //     0x6caeb4: stur            w0, [x1, #0x17]
    // 0x6caeb8: r0 = Instance_Clip
    //     0x6caeb8: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6caebc: ldr             x0, [x0, #0x2d8]
    // 0x6caec0: StoreField: r1->field_1b = r0
    //     0x6caec0: stur            w0, [x1, #0x1b]
    // 0x6caec4: ldur            x2, [fp, #-0x60]
    // 0x6caec8: StoreField: r1->field_b = r2
    //     0x6caec8: stur            w2, [x1, #0xb]
    // 0x6caecc: r0 = Padding()
    //     0x6caecc: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6caed0: mov             x1, x0
    // 0x6caed4: ldur            x0, [fp, #-0x58]
    // 0x6caed8: stur            x1, [fp, #-0x60]
    // 0x6caedc: StoreField: r1->field_f = r0
    //     0x6caedc: stur            w0, [x1, #0xf]
    // 0x6caee0: ldur            x0, [fp, #-0x68]
    // 0x6caee4: StoreField: r1->field_b = r0
    //     0x6caee4: stur            w0, [x1, #0xb]
    // 0x6caee8: ldur            d0, [fp, #-0x98]
    // 0x6caeec: r0 = inline_Allocate_Double()
    //     0x6caeec: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6caef0: add             x0, x0, #0x10
    //     0x6caef4: cmp             x2, x0
    //     0x6caef8: b.ls            #0x6cbab8
    //     0x6caefc: str             x0, [THR, #0x60]  ; THR::top
    //     0x6caf00: sub             x0, x0, #0xf
    //     0x6caf04: mov             x2, #0xe15c
    //     0x6caf08: movk            x2, #3, lsl #16
    //     0x6caf0c: stur            x2, [x0, #-1]
    // 0x6caf10: StoreField: r0->field_7 = d0
    //     0x6caf10: stur            d0, [x0, #7]
    // 0x6caf14: stur            x0, [fp, #-0x58]
    // 0x6caf18: r0 = Container()
    //     0x6caf18: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6caf1c: stur            x0, [fp, #-0x68]
    // 0x6caf20: ldur            x16, [fp, #-0x48]
    // 0x6caf24: ldur            lr, [fp, #-0x58]
    // 0x6caf28: stp             lr, x16, [SP, #0x10]
    // 0x6caf2c: ldur            x16, [fp, #-0x50]
    // 0x6caf30: ldur            lr, [fp, #-0x60]
    // 0x6caf34: stp             lr, x16, [SP]
    // 0x6caf38: mov             x1, x0
    // 0x6caf3c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, padding, 0x1, null]
    //     0x6caf3c: add             x4, PP, #0x20, lsl #12  ; [pp+0x209b8] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "padding", 0x1, Null]
    //     0x6caf40: ldr             x4, [x4, #0x9b8]
    // 0x6caf44: r0 = Container()
    //     0x6caf44: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6caf48: r1 = <FlexParentData>
    //     0x6caf48: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6caf4c: ldr             x1, [x1, #0x340]
    // 0x6caf50: r0 = Expanded()
    //     0x6caf50: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6caf54: mov             x3, x0
    // 0x6caf58: r0 = 1
    //     0x6caf58: mov             x0, #1
    // 0x6caf5c: stur            x3, [fp, #-0x48]
    // 0x6caf60: StoreField: r3->field_13 = r0
    //     0x6caf60: stur            x0, [x3, #0x13]
    // 0x6caf64: r4 = Instance_FlexFit
    //     0x6caf64: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6caf68: ldr             x4, [x4, #0x348]
    // 0x6caf6c: StoreField: r3->field_1b = r4
    //     0x6caf6c: stur            w4, [x3, #0x1b]
    // 0x6caf70: ldur            x1, [fp, #-0x68]
    // 0x6caf74: StoreField: r3->field_b = r1
    //     0x6caf74: stur            w1, [x3, #0xb]
    // 0x6caf78: r1 = Null
    //     0x6caf78: mov             x1, NULL
    // 0x6caf7c: r2 = 6
    //     0x6caf7c: mov             x2, #6
    // 0x6caf80: r0 = AllocateArray()
    //     0x6caf80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6caf84: mov             x2, x0
    // 0x6caf88: ldur            x0, [fp, #-0x30]
    // 0x6caf8c: stur            x2, [fp, #-0x50]
    // 0x6caf90: StoreField: r2->field_f = r0
    //     0x6caf90: stur            w0, [x2, #0xf]
    // 0x6caf94: ldur            x0, [fp, #-0x40]
    // 0x6caf98: StoreField: r2->field_13 = r0
    //     0x6caf98: stur            w0, [x2, #0x13]
    // 0x6caf9c: ldur            x0, [fp, #-0x48]
    // 0x6cafa0: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cafa0: stur            w0, [x2, #0x17]
    // 0x6cafa4: r1 = <Widget>
    //     0x6cafa4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cafa8: r0 = AllocateGrowableArray()
    //     0x6cafa8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cafac: mov             x1, x0
    // 0x6cafb0: ldur            x0, [fp, #-0x50]
    // 0x6cafb4: stur            x1, [fp, #-0x30]
    // 0x6cafb8: StoreField: r1->field_f = r0
    //     0x6cafb8: stur            w0, [x1, #0xf]
    // 0x6cafbc: r2 = 6
    //     0x6cafbc: mov             x2, #6
    // 0x6cafc0: StoreField: r1->field_b = r2
    //     0x6cafc0: stur            w2, [x1, #0xb]
    // 0x6cafc4: r0 = Row()
    //     0x6cafc4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6cafc8: mov             x1, x0
    // 0x6cafcc: r0 = Instance_Axis
    //     0x6cafcc: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6cafd0: stur            x1, [fp, #-0x40]
    // 0x6cafd4: StoreField: r1->field_f = r0
    //     0x6cafd4: stur            w0, [x1, #0xf]
    // 0x6cafd8: r2 = Instance_MainAxisAlignment
    //     0x6cafd8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6cafdc: ldr             x2, [x2, #0x230]
    // 0x6cafe0: StoreField: r1->field_13 = r2
    //     0x6cafe0: stur            w2, [x1, #0x13]
    // 0x6cafe4: r3 = Instance_MainAxisSize
    //     0x6cafe4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cafe8: ldr             x3, [x3, #0x330]
    // 0x6cafec: ArrayStore: r1[0] = r3  ; List_4
    //     0x6cafec: stur            w3, [x1, #0x17]
    // 0x6caff0: r4 = Instance_CrossAxisAlignment
    //     0x6caff0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6caff4: ldr             x4, [x4, #0x338]
    // 0x6caff8: StoreField: r1->field_1b = r4
    //     0x6caff8: stur            w4, [x1, #0x1b]
    // 0x6caffc: r5 = Instance_VerticalDirection
    //     0x6caffc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cb000: ldr             x5, [x5, #0x340]
    // 0x6cb004: StoreField: r1->field_23 = r5
    //     0x6cb004: stur            w5, [x1, #0x23]
    // 0x6cb008: r6 = Instance_Clip
    //     0x6cb008: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cb00c: ldr             x6, [x6, #0x348]
    // 0x6cb010: StoreField: r1->field_2b = r6
    //     0x6cb010: stur            w6, [x1, #0x2b]
    // 0x6cb014: ldur            d0, [fp, #-0x90]
    // 0x6cb018: StoreField: r1->field_2f = d0
    //     0x6cb018: stur            d0, [x1, #0x2f]
    // 0x6cb01c: ldur            x7, [fp, #-0x30]
    // 0x6cb020: StoreField: r1->field_b = r7
    //     0x6cb020: stur            w7, [x1, #0xb]
    // 0x6cb024: r0 = SizedBox()
    //     0x6cb024: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6cb028: mov             x2, x0
    // 0x6cb02c: r0 = 32.000000
    //     0x6cb02c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fe0] 32
    //     0x6cb030: ldr             x0, [x0, #0xfe0]
    // 0x6cb034: stur            x2, [fp, #-0x30]
    // 0x6cb038: StoreField: r2->field_13 = r0
    //     0x6cb038: stur            w0, [x2, #0x13]
    // 0x6cb03c: r1 = 16
    //     0x6cb03c: mov             x1, #0x10
    // 0x6cb040: r0 = SizeExtension.w()
    //     0x6cb040: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cb044: stur            d0, [fp, #-0x90]
    // 0x6cb048: r0 = EdgeInsets()
    //     0x6cb048: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6cb04c: ldur            d0, [fp, #-0x90]
    // 0x6cb050: stur            x0, [fp, #-0x48]
    // 0x6cb054: StoreField: r0->field_7 = d0
    //     0x6cb054: stur            d0, [x0, #7]
    // 0x6cb058: StoreField: r0->field_f = d0
    //     0x6cb058: stur            d0, [x0, #0xf]
    // 0x6cb05c: ArrayStore: r0[0] = d0  ; List_8
    //     0x6cb05c: stur            d0, [x0, #0x17]
    // 0x6cb060: StoreField: r0->field_1f = d0
    //     0x6cb060: stur            d0, [x0, #0x1f]
    // 0x6cb064: r1 = 24
    //     0x6cb064: mov             x1, #0x18
    // 0x6cb068: r0 = SizeExtension.sp()
    //     0x6cb068: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cb06c: stur            d0, [fp, #-0x90]
    // 0x6cb070: r0 = TextStyle()
    //     0x6cb070: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cb074: mov             x1, x0
    // 0x6cb078: r0 = true
    //     0x6cb078: add             x0, NULL, #0x20  ; true
    // 0x6cb07c: stur            x1, [fp, #-0x50]
    // 0x6cb080: StoreField: r1->field_7 = r0
    //     0x6cb080: stur            w0, [x1, #7]
    // 0x6cb084: ldur            d0, [fp, #-0x90]
    // 0x6cb088: r2 = inline_Allocate_Double()
    //     0x6cb088: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6cb08c: add             x2, x2, #0x10
    //     0x6cb090: cmp             x3, x2
    //     0x6cb094: b.ls            #0x6cbad0
    //     0x6cb098: str             x2, [THR, #0x60]  ; THR::top
    //     0x6cb09c: sub             x2, x2, #0xf
    //     0x6cb0a0: mov             x3, #0xe15c
    //     0x6cb0a4: movk            x3, #3, lsl #16
    //     0x6cb0a8: stur            x3, [x2, #-1]
    // 0x6cb0ac: StoreField: r2->field_7 = d0
    //     0x6cb0ac: stur            d0, [x2, #7]
    // 0x6cb0b0: StoreField: r1->field_1f = r2
    //     0x6cb0b0: stur            w2, [x1, #0x1f]
    // 0x6cb0b4: r2 = Instance_FontWeight
    //     0x6cb0b4: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6cb0b8: ldr             x2, [x2, #0x1d0]
    // 0x6cb0bc: StoreField: r1->field_23 = r2
    //     0x6cb0bc: stur            w2, [x1, #0x23]
    // 0x6cb0c0: r0 = Text()
    //     0x6cb0c0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cb0c4: mov             x1, x0
    // 0x6cb0c8: r0 = "Son 7 Gün"
    //     0x6cb0c8: add             x0, PP, #0x20, lsl #12  ; [pp+0x209f8] "Son 7 Gün"
    //     0x6cb0cc: ldr             x0, [x0, #0x9f8]
    // 0x6cb0d0: stur            x1, [fp, #-0x58]
    // 0x6cb0d4: StoreField: r1->field_b = r0
    //     0x6cb0d4: stur            w0, [x1, #0xb]
    // 0x6cb0d8: ldur            x0, [fp, #-0x50]
    // 0x6cb0dc: StoreField: r1->field_13 = r0
    //     0x6cb0dc: stur            w0, [x1, #0x13]
    // 0x6cb0e0: r0 = Padding()
    //     0x6cb0e0: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6cb0e4: mov             x3, x0
    // 0x6cb0e8: ldur            x0, [fp, #-0x48]
    // 0x6cb0ec: stur            x3, [fp, #-0x50]
    // 0x6cb0f0: StoreField: r3->field_f = r0
    //     0x6cb0f0: stur            w0, [x3, #0xf]
    // 0x6cb0f4: ldur            x0, [fp, #-0x58]
    // 0x6cb0f8: StoreField: r3->field_b = r0
    //     0x6cb0f8: stur            w0, [x3, #0xb]
    // 0x6cb0fc: r1 = Null
    //     0x6cb0fc: mov             x1, NULL
    // 0x6cb100: r2 = 2
    //     0x6cb100: mov             x2, #2
    // 0x6cb104: r0 = AllocateArray()
    //     0x6cb104: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cb108: mov             x2, x0
    // 0x6cb10c: ldur            x0, [fp, #-0x50]
    // 0x6cb110: stur            x2, [fp, #-0x48]
    // 0x6cb114: StoreField: r2->field_f = r0
    //     0x6cb114: stur            w0, [x2, #0xf]
    // 0x6cb118: r1 = <Widget>
    //     0x6cb118: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cb11c: r0 = AllocateGrowableArray()
    //     0x6cb11c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cb120: mov             x1, x0
    // 0x6cb124: ldur            x0, [fp, #-0x48]
    // 0x6cb128: stur            x1, [fp, #-0x50]
    // 0x6cb12c: StoreField: r1->field_f = r0
    //     0x6cb12c: stur            w0, [x1, #0xf]
    // 0x6cb130: r2 = 2
    //     0x6cb130: mov             x2, #2
    // 0x6cb134: StoreField: r1->field_b = r2
    //     0x6cb134: stur            w2, [x1, #0xb]
    // 0x6cb138: r0 = Row()
    //     0x6cb138: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6cb13c: mov             x2, x0
    // 0x6cb140: r0 = Instance_Axis
    //     0x6cb140: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6cb144: stur            x2, [fp, #-0x48]
    // 0x6cb148: StoreField: r2->field_f = r0
    //     0x6cb148: stur            w0, [x2, #0xf]
    // 0x6cb14c: r0 = Instance_MainAxisAlignment
    //     0x6cb14c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6cb150: ldr             x0, [x0, #0x230]
    // 0x6cb154: StoreField: r2->field_13 = r0
    //     0x6cb154: stur            w0, [x2, #0x13]
    // 0x6cb158: r3 = Instance_MainAxisSize
    //     0x6cb158: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cb15c: ldr             x3, [x3, #0x330]
    // 0x6cb160: ArrayStore: r2[0] = r3  ; List_4
    //     0x6cb160: stur            w3, [x2, #0x17]
    // 0x6cb164: r4 = Instance_CrossAxisAlignment
    //     0x6cb164: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6cb168: ldr             x4, [x4, #0x338]
    // 0x6cb16c: StoreField: r2->field_1b = r4
    //     0x6cb16c: stur            w4, [x2, #0x1b]
    // 0x6cb170: r5 = Instance_VerticalDirection
    //     0x6cb170: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cb174: ldr             x5, [x5, #0x340]
    // 0x6cb178: StoreField: r2->field_23 = r5
    //     0x6cb178: stur            w5, [x2, #0x23]
    // 0x6cb17c: r6 = Instance_Clip
    //     0x6cb17c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cb180: ldr             x6, [x6, #0x348]
    // 0x6cb184: StoreField: r2->field_2b = r6
    //     0x6cb184: stur            w6, [x2, #0x2b]
    // 0x6cb188: StoreField: r2->field_2f = rZR
    //     0x6cb188: stur            xzr, [x2, #0x2f]
    // 0x6cb18c: ldur            x1, [fp, #-0x50]
    // 0x6cb190: StoreField: r2->field_b = r1
    //     0x6cb190: stur            w1, [x2, #0xb]
    // 0x6cb194: r1 = 16
    //     0x6cb194: mov             x1, #0x10
    // 0x6cb198: r0 = SizeExtension.w()
    //     0x6cb198: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cb19c: stur            d0, [fp, #-0x90]
    // 0x6cb1a0: r0 = EdgeInsets()
    //     0x6cb1a0: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6cb1a4: ldur            d0, [fp, #-0x90]
    // 0x6cb1a8: stur            x0, [fp, #-0x50]
    // 0x6cb1ac: StoreField: r0->field_7 = d0
    //     0x6cb1ac: stur            d0, [x0, #7]
    // 0x6cb1b0: StoreField: r0->field_f = rZR
    //     0x6cb1b0: stur            xzr, [x0, #0xf]
    // 0x6cb1b4: ArrayStore: r0[0] = d0  ; List_8
    //     0x6cb1b4: stur            d0, [x0, #0x17]
    // 0x6cb1b8: StoreField: r0->field_1f = rZR
    //     0x6cb1b8: stur            xzr, [x0, #0x1f]
    // 0x6cb1bc: r1 = 8
    //     0x6cb1bc: mov             x1, #8
    // 0x6cb1c0: r0 = SizeExtension.h()
    //     0x6cb1c0: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6cb1c4: stur            d0, [fp, #-0x90]
    // 0x6cb1c8: r0 = EdgeInsets()
    //     0x6cb1c8: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6cb1cc: stur            x0, [fp, #-0x58]
    // 0x6cb1d0: StoreField: r0->field_7 = rZR
    //     0x6cb1d0: stur            xzr, [x0, #7]
    // 0x6cb1d4: ldur            d0, [fp, #-0x90]
    // 0x6cb1d8: StoreField: r0->field_f = d0
    //     0x6cb1d8: stur            d0, [x0, #0xf]
    // 0x6cb1dc: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6cb1dc: stur            xzr, [x0, #0x17]
    // 0x6cb1e0: StoreField: r0->field_1f = d0
    //     0x6cb1e0: stur            d0, [x0, #0x1f]
    // 0x6cb1e4: r1 = 200
    //     0x6cb1e4: mov             x1, #0xc8
    // 0x6cb1e8: r0 = SizeExtension.h()
    //     0x6cb1e8: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6cb1ec: r1 = 20
    //     0x6cb1ec: mov             x1, #0x14
    // 0x6cb1f0: stur            d0, [fp, #-0x90]
    // 0x6cb1f4: r0 = SizeExtension.r()
    //     0x6cb1f4: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6cb1f8: stur            d0, [fp, #-0x98]
    // 0x6cb1fc: r0 = Radius()
    //     0x6cb1fc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6cb200: ldur            d0, [fp, #-0x98]
    // 0x6cb204: stur            x0, [fp, #-0x60]
    // 0x6cb208: StoreField: r0->field_7 = d0
    //     0x6cb208: stur            d0, [x0, #7]
    // 0x6cb20c: StoreField: r0->field_f = d0
    //     0x6cb20c: stur            d0, [x0, #0xf]
    // 0x6cb210: r0 = BorderRadius()
    //     0x6cb210: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6cb214: mov             x2, x0
    // 0x6cb218: ldur            x0, [fp, #-0x60]
    // 0x6cb21c: stur            x2, [fp, #-0x68]
    // 0x6cb220: StoreField: r2->field_7 = r0
    //     0x6cb220: stur            w0, [x2, #7]
    // 0x6cb224: StoreField: r2->field_b = r0
    //     0x6cb224: stur            w0, [x2, #0xb]
    // 0x6cb228: StoreField: r2->field_f = r0
    //     0x6cb228: stur            w0, [x2, #0xf]
    // 0x6cb22c: StoreField: r2->field_13 = r0
    //     0x6cb22c: stur            w0, [x2, #0x13]
    // 0x6cb230: r16 = 0.050000
    //     0x6cb230: ldr             x16, [PP, #0x5020]  ; [pp+0x5020] 0.05
    // 0x6cb234: str             x16, [SP]
    // 0x6cb238: r1 = Instance_Color
    //     0x6cb238: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6cb23c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6cb23c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6cb240: ldr             x4, [x4, #0x198]
    // 0x6cb244: r0 = withValues()
    //     0x6cb244: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6cb248: r1 = 12
    //     0x6cb248: mov             x1, #0xc
    // 0x6cb24c: stur            x0, [fp, #-0x60]
    // 0x6cb250: r0 = SizeExtension.r()
    //     0x6cb250: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6cb254: r1 = 6
    //     0x6cb254: mov             x1, #6
    // 0x6cb258: stur            d0, [fp, #-0x98]
    // 0x6cb25c: r0 = SizeExtension.h()
    //     0x6cb25c: bl              #0x6cc050  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.h
    // 0x6cb260: stur            d0, [fp, #-0xa0]
    // 0x6cb264: r0 = Offset()
    //     0x6cb264: bl              #0x3ec40c  ; AllocateOffsetStub -> Offset (size=0x18)
    // 0x6cb268: stur            x0, [fp, #-0x70]
    // 0x6cb26c: StoreField: r0->field_7 = rZR
    //     0x6cb26c: stur            xzr, [x0, #7]
    // 0x6cb270: ldur            d0, [fp, #-0xa0]
    // 0x6cb274: StoreField: r0->field_f = d0
    //     0x6cb274: stur            d0, [x0, #0xf]
    // 0x6cb278: r0 = BoxShadow()
    //     0x6cb278: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6cb27c: stur            x0, [fp, #-0x78]
    // 0x6cb280: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6cb280: stur            xzr, [x0, #0x17]
    // 0x6cb284: r1 = Instance_BlurStyle
    //     0x6cb284: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6cb288: ldr             x1, [x1, #0x9b0]
    // 0x6cb28c: StoreField: r0->field_1f = r1
    //     0x6cb28c: stur            w1, [x0, #0x1f]
    // 0x6cb290: ldur            x1, [fp, #-0x60]
    // 0x6cb294: StoreField: r0->field_7 = r1
    //     0x6cb294: stur            w1, [x0, #7]
    // 0x6cb298: ldur            x1, [fp, #-0x70]
    // 0x6cb29c: StoreField: r0->field_b = r1
    //     0x6cb29c: stur            w1, [x0, #0xb]
    // 0x6cb2a0: ldur            d0, [fp, #-0x98]
    // 0x6cb2a4: StoreField: r0->field_f = d0
    //     0x6cb2a4: stur            d0, [x0, #0xf]
    // 0x6cb2a8: r1 = Null
    //     0x6cb2a8: mov             x1, NULL
    // 0x6cb2ac: r2 = 2
    //     0x6cb2ac: mov             x2, #2
    // 0x6cb2b0: r0 = AllocateArray()
    //     0x6cb2b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cb2b4: mov             x2, x0
    // 0x6cb2b8: ldur            x0, [fp, #-0x78]
    // 0x6cb2bc: stur            x2, [fp, #-0x60]
    // 0x6cb2c0: StoreField: r2->field_f = r0
    //     0x6cb2c0: stur            w0, [x2, #0xf]
    // 0x6cb2c4: r1 = <BoxShadow>
    //     0x6cb2c4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6cb2c8: ldr             x1, [x1, #0x9c0]
    // 0x6cb2cc: r0 = AllocateGrowableArray()
    //     0x6cb2cc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cb2d0: mov             x1, x0
    // 0x6cb2d4: ldur            x0, [fp, #-0x60]
    // 0x6cb2d8: stur            x1, [fp, #-0x70]
    // 0x6cb2dc: StoreField: r1->field_f = r0
    //     0x6cb2dc: stur            w0, [x1, #0xf]
    // 0x6cb2e0: r0 = 2
    //     0x6cb2e0: mov             x0, #2
    // 0x6cb2e4: StoreField: r1->field_b = r0
    //     0x6cb2e4: stur            w0, [x1, #0xb]
    // 0x6cb2e8: r0 = BoxDecoration()
    //     0x6cb2e8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6cb2ec: mov             x2, x0
    // 0x6cb2f0: r0 = Instance_Color
    //     0x6cb2f0: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6cb2f4: stur            x2, [fp, #-0x60]
    // 0x6cb2f8: StoreField: r2->field_7 = r0
    //     0x6cb2f8: stur            w0, [x2, #7]
    // 0x6cb2fc: ldur            x0, [fp, #-0x68]
    // 0x6cb300: StoreField: r2->field_13 = r0
    //     0x6cb300: stur            w0, [x2, #0x13]
    // 0x6cb304: ldur            x0, [fp, #-0x70]
    // 0x6cb308: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cb308: stur            w0, [x2, #0x17]
    // 0x6cb30c: r0 = Instance_BoxShape
    //     0x6cb30c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6cb310: ldr             x0, [x0, #0x1c8]
    // 0x6cb314: StoreField: r2->field_23 = r0
    //     0x6cb314: stur            w0, [x2, #0x23]
    // 0x6cb318: r1 = 16
    //     0x6cb318: mov             x1, #0x10
    // 0x6cb31c: r0 = SizeExtension.w()
    //     0x6cb31c: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cb320: stur            d0, [fp, #-0x98]
    // 0x6cb324: r0 = EdgeInsets()
    //     0x6cb324: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6cb328: ldur            d0, [fp, #-0x98]
    // 0x6cb32c: stur            x0, [fp, #-0x68]
    // 0x6cb330: StoreField: r0->field_7 = d0
    //     0x6cb330: stur            d0, [x0, #7]
    // 0x6cb334: StoreField: r0->field_f = rZR
    //     0x6cb334: stur            xzr, [x0, #0xf]
    // 0x6cb338: ArrayStore: r0[0] = d0  ; List_8
    //     0x6cb338: stur            d0, [x0, #0x17]
    // 0x6cb33c: StoreField: r0->field_1f = rZR
    //     0x6cb33c: stur            xzr, [x0, #0x1f]
    // 0x6cb340: r1 = 16
    //     0x6cb340: mov             x1, #0x10
    // 0x6cb344: r0 = SizeExtension.sp()
    //     0x6cb344: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cb348: stur            d0, [fp, #-0x98]
    // 0x6cb34c: r0 = TextStyle()
    //     0x6cb34c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cb350: mov             x1, x0
    // 0x6cb354: r0 = true
    //     0x6cb354: add             x0, NULL, #0x20  ; true
    // 0x6cb358: stur            x1, [fp, #-0x70]
    // 0x6cb35c: StoreField: r1->field_7 = r0
    //     0x6cb35c: stur            w0, [x1, #7]
    // 0x6cb360: r2 = Instance_MaterialColor
    //     0x6cb360: add             x2, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6cb364: ldr             x2, [x2, #0xbc8]
    // 0x6cb368: StoreField: r1->field_b = r2
    //     0x6cb368: stur            w2, [x1, #0xb]
    // 0x6cb36c: ldur            d0, [fp, #-0x98]
    // 0x6cb370: r2 = inline_Allocate_Double()
    //     0x6cb370: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6cb374: add             x2, x2, #0x10
    //     0x6cb378: cmp             x3, x2
    //     0x6cb37c: b.ls            #0x6cbaec
    //     0x6cb380: str             x2, [THR, #0x60]  ; THR::top
    //     0x6cb384: sub             x2, x2, #0xf
    //     0x6cb388: mov             x3, #0xe15c
    //     0x6cb38c: movk            x3, #3, lsl #16
    //     0x6cb390: stur            x3, [x2, #-1]
    // 0x6cb394: StoreField: r2->field_7 = d0
    //     0x6cb394: stur            d0, [x2, #7]
    // 0x6cb398: StoreField: r1->field_1f = r2
    //     0x6cb398: stur            w2, [x1, #0x1f]
    // 0x6cb39c: r2 = Instance_FontWeight
    //     0x6cb39c: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x6cb3a0: ldr             x2, [x2, #0x5d0]
    // 0x6cb3a4: StoreField: r1->field_23 = r2
    //     0x6cb3a4: stur            w2, [x1, #0x23]
    // 0x6cb3a8: r0 = Text()
    //     0x6cb3a8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cb3ac: mov             x1, x0
    // 0x6cb3b0: r0 = "Günlük Ortalama"
    //     0x6cb3b0: add             x0, PP, #0x20, lsl #12  ; [pp+0x20a00] "Günlük Ortalama"
    //     0x6cb3b4: ldr             x0, [x0, #0xa00]
    // 0x6cb3b8: stur            x1, [fp, #-0x78]
    // 0x6cb3bc: StoreField: r1->field_b = r0
    //     0x6cb3bc: stur            w0, [x1, #0xb]
    // 0x6cb3c0: ldur            x0, [fp, #-0x70]
    // 0x6cb3c4: StoreField: r1->field_13 = r0
    //     0x6cb3c4: stur            w0, [x1, #0x13]
    // 0x6cb3c8: r0 = Align()
    //     0x6cb3c8: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6cb3cc: mov             x1, x0
    // 0x6cb3d0: r0 = Instance_Alignment
    //     0x6cb3d0: add             x0, PP, #0x17, lsl #12  ; [pp+0x17fc0] Obj!Alignment@a0cef1
    //     0x6cb3d4: ldr             x0, [x0, #0xfc0]
    // 0x6cb3d8: stur            x1, [fp, #-0x70]
    // 0x6cb3dc: StoreField: r1->field_f = r0
    //     0x6cb3dc: stur            w0, [x1, #0xf]
    // 0x6cb3e0: ldur            x2, [fp, #-0x78]
    // 0x6cb3e4: StoreField: r1->field_b = r2
    //     0x6cb3e4: stur            w2, [x1, #0xb]
    // 0x6cb3e8: r0 = Padding()
    //     0x6cb3e8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6cb3ec: mov             x2, x0
    // 0x6cb3f0: ldur            x0, [fp, #-0x68]
    // 0x6cb3f4: stur            x2, [fp, #-0x78]
    // 0x6cb3f8: StoreField: r2->field_f = r0
    //     0x6cb3f8: stur            w0, [x2, #0xf]
    // 0x6cb3fc: ldur            x0, [fp, #-0x70]
    // 0x6cb400: StoreField: r2->field_b = r0
    //     0x6cb400: stur            w0, [x2, #0xb]
    // 0x6cb404: r1 = 16
    //     0x6cb404: mov             x1, #0x10
    // 0x6cb408: r0 = SizeExtension.w()
    //     0x6cb408: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cb40c: stur            d0, [fp, #-0x98]
    // 0x6cb410: r0 = EdgeInsets()
    //     0x6cb410: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6cb414: ldur            d0, [fp, #-0x98]
    // 0x6cb418: stur            x0, [fp, #-0x68]
    // 0x6cb41c: StoreField: r0->field_7 = d0
    //     0x6cb41c: stur            d0, [x0, #7]
    // 0x6cb420: StoreField: r0->field_f = rZR
    //     0x6cb420: stur            xzr, [x0, #0xf]
    // 0x6cb424: ArrayStore: r0[0] = d0  ; List_8
    //     0x6cb424: stur            d0, [x0, #0x17]
    // 0x6cb428: StoreField: r0->field_1f = rZR
    //     0x6cb428: stur            xzr, [x0, #0x1f]
    // 0x6cb42c: r0 = Obx()
    //     0x6cb42c: bl              #0x6cbf7c  ; AllocateObxStub -> Obx (size=0x10)
    // 0x6cb430: ldur            x2, [fp, #-0x10]
    // 0x6cb434: r1 = Function '<anonymous closure>':.
    //     0x6cb434: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a08] AnonymousClosure: (0x6cd400), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6cb438: ldr             x1, [x1, #0xa08]
    // 0x6cb43c: stur            x0, [fp, #-0x70]
    // 0x6cb440: r0 = AllocateClosure()
    //     0x6cb440: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cb444: mov             x1, x0
    // 0x6cb448: ldur            x0, [fp, #-0x70]
    // 0x6cb44c: StoreField: r0->field_b = r1
    //     0x6cb44c: stur            w1, [x0, #0xb]
    // 0x6cb450: r0 = Align()
    //     0x6cb450: bl              #0x652cc8  ; AllocateAlignStub -> Align (size=0x1c)
    // 0x6cb454: mov             x1, x0
    // 0x6cb458: r0 = Instance_Alignment
    //     0x6cb458: add             x0, PP, #0x17, lsl #12  ; [pp+0x17fc0] Obj!Alignment@a0cef1
    //     0x6cb45c: ldr             x0, [x0, #0xfc0]
    // 0x6cb460: stur            x1, [fp, #-0x80]
    // 0x6cb464: StoreField: r1->field_f = r0
    //     0x6cb464: stur            w0, [x1, #0xf]
    // 0x6cb468: ldur            x0, [fp, #-0x70]
    // 0x6cb46c: StoreField: r1->field_b = r0
    //     0x6cb46c: stur            w0, [x1, #0xb]
    // 0x6cb470: r0 = Padding()
    //     0x6cb470: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6cb474: mov             x3, x0
    // 0x6cb478: ldur            x0, [fp, #-0x68]
    // 0x6cb47c: stur            x3, [fp, #-0x70]
    // 0x6cb480: StoreField: r3->field_f = r0
    //     0x6cb480: stur            w0, [x3, #0xf]
    // 0x6cb484: ldur            x0, [fp, #-0x80]
    // 0x6cb488: StoreField: r3->field_b = r0
    //     0x6cb488: stur            w0, [x3, #0xb]
    // 0x6cb48c: r1 = Null
    //     0x6cb48c: mov             x1, NULL
    // 0x6cb490: r2 = 4
    //     0x6cb490: mov             x2, #4
    // 0x6cb494: r0 = AllocateArray()
    //     0x6cb494: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cb498: mov             x2, x0
    // 0x6cb49c: ldur            x0, [fp, #-0x78]
    // 0x6cb4a0: stur            x2, [fp, #-0x68]
    // 0x6cb4a4: StoreField: r2->field_f = r0
    //     0x6cb4a4: stur            w0, [x2, #0xf]
    // 0x6cb4a8: ldur            x0, [fp, #-0x70]
    // 0x6cb4ac: StoreField: r2->field_13 = r0
    //     0x6cb4ac: stur            w0, [x2, #0x13]
    // 0x6cb4b0: r1 = <Widget>
    //     0x6cb4b0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cb4b4: r0 = AllocateGrowableArray()
    //     0x6cb4b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cb4b8: mov             x1, x0
    // 0x6cb4bc: ldur            x0, [fp, #-0x68]
    // 0x6cb4c0: stur            x1, [fp, #-0x70]
    // 0x6cb4c4: StoreField: r1->field_f = r0
    //     0x6cb4c4: stur            w0, [x1, #0xf]
    // 0x6cb4c8: r0 = 4
    //     0x6cb4c8: mov             x0, #4
    // 0x6cb4cc: StoreField: r1->field_b = r0
    //     0x6cb4cc: stur            w0, [x1, #0xb]
    // 0x6cb4d0: r0 = Column()
    //     0x6cb4d0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6cb4d4: mov             x1, x0
    // 0x6cb4d8: r0 = Instance_Axis
    //     0x6cb4d8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cb4dc: stur            x1, [fp, #-0x68]
    // 0x6cb4e0: StoreField: r1->field_f = r0
    //     0x6cb4e0: stur            w0, [x1, #0xf]
    // 0x6cb4e4: r2 = Instance_MainAxisAlignment
    //     0x6cb4e4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6cb4e8: ldr             x2, [x2, #0x230]
    // 0x6cb4ec: StoreField: r1->field_13 = r2
    //     0x6cb4ec: stur            w2, [x1, #0x13]
    // 0x6cb4f0: r3 = Instance_MainAxisSize
    //     0x6cb4f0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cb4f4: ldr             x3, [x3, #0x330]
    // 0x6cb4f8: ArrayStore: r1[0] = r3  ; List_4
    //     0x6cb4f8: stur            w3, [x1, #0x17]
    // 0x6cb4fc: r4 = Instance_CrossAxisAlignment
    //     0x6cb4fc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6cb500: ldr             x4, [x4, #0x338]
    // 0x6cb504: StoreField: r1->field_1b = r4
    //     0x6cb504: stur            w4, [x1, #0x1b]
    // 0x6cb508: r5 = Instance_VerticalDirection
    //     0x6cb508: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cb50c: ldr             x5, [x5, #0x340]
    // 0x6cb510: StoreField: r1->field_23 = r5
    //     0x6cb510: stur            w5, [x1, #0x23]
    // 0x6cb514: r6 = Instance_Clip
    //     0x6cb514: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cb518: ldr             x6, [x6, #0x348]
    // 0x6cb51c: StoreField: r1->field_2b = r6
    //     0x6cb51c: stur            w6, [x1, #0x2b]
    // 0x6cb520: StoreField: r1->field_2f = rZR
    //     0x6cb520: stur            xzr, [x1, #0x2f]
    // 0x6cb524: ldur            x7, [fp, #-0x70]
    // 0x6cb528: StoreField: r1->field_b = r7
    //     0x6cb528: stur            w7, [x1, #0xb]
    // 0x6cb52c: r0 = SizedBox()
    //     0x6cb52c: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6cb530: mov             x2, x0
    // 0x6cb534: r0 = 32.000000
    //     0x6cb534: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fe0] 32
    //     0x6cb538: ldr             x0, [x0, #0xfe0]
    // 0x6cb53c: stur            x2, [fp, #-0x70]
    // 0x6cb540: StoreField: r2->field_13 = r0
    //     0x6cb540: stur            w0, [x2, #0x13]
    // 0x6cb544: r1 = 8
    //     0x6cb544: mov             x1, #8
    // 0x6cb548: r0 = SizeExtension.w()
    //     0x6cb548: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6cb54c: stur            d0, [fp, #-0x98]
    // 0x6cb550: r0 = EdgeInsets()
    //     0x6cb550: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6cb554: ldur            d0, [fp, #-0x98]
    // 0x6cb558: stur            x0, [fp, #-0x78]
    // 0x6cb55c: StoreField: r0->field_7 = d0
    //     0x6cb55c: stur            d0, [x0, #7]
    // 0x6cb560: StoreField: r0->field_f = d0
    //     0x6cb560: stur            d0, [x0, #0xf]
    // 0x6cb564: ArrayStore: r0[0] = d0  ; List_8
    //     0x6cb564: stur            d0, [x0, #0x17]
    // 0x6cb568: StoreField: r0->field_1f = d0
    //     0x6cb568: stur            d0, [x0, #0x1f]
    // 0x6cb56c: r0 = Obx()
    //     0x6cb56c: bl              #0x6cbf7c  ; AllocateObxStub -> Obx (size=0x10)
    // 0x6cb570: ldur            x2, [fp, #-0x10]
    // 0x6cb574: r1 = Function '<anonymous closure>':.
    //     0x6cb574: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a10] AnonymousClosure: (0x6cc74c), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6cb578: ldr             x1, [x1, #0xa10]
    // 0x6cb57c: stur            x0, [fp, #-0x10]
    // 0x6cb580: r0 = AllocateClosure()
    //     0x6cb580: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cb584: mov             x1, x0
    // 0x6cb588: ldur            x0, [fp, #-0x10]
    // 0x6cb58c: StoreField: r0->field_b = r1
    //     0x6cb58c: stur            w1, [x0, #0xb]
    // 0x6cb590: r0 = Padding()
    //     0x6cb590: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6cb594: mov             x2, x0
    // 0x6cb598: ldur            x0, [fp, #-0x78]
    // 0x6cb59c: stur            x2, [fp, #-0x80]
    // 0x6cb5a0: StoreField: r2->field_f = r0
    //     0x6cb5a0: stur            w0, [x2, #0xf]
    // 0x6cb5a4: ldur            x0, [fp, #-0x10]
    // 0x6cb5a8: StoreField: r2->field_b = r0
    //     0x6cb5a8: stur            w0, [x2, #0xb]
    // 0x6cb5ac: r1 = <FlexParentData>
    //     0x6cb5ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6cb5b0: ldr             x1, [x1, #0x340]
    // 0x6cb5b4: r0 = Expanded()
    //     0x6cb5b4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6cb5b8: mov             x3, x0
    // 0x6cb5bc: r0 = 1
    //     0x6cb5bc: mov             x0, #1
    // 0x6cb5c0: stur            x3, [fp, #-0x10]
    // 0x6cb5c4: StoreField: r3->field_13 = r0
    //     0x6cb5c4: stur            x0, [x3, #0x13]
    // 0x6cb5c8: r0 = Instance_FlexFit
    //     0x6cb5c8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6cb5cc: ldr             x0, [x0, #0x348]
    // 0x6cb5d0: StoreField: r3->field_1b = r0
    //     0x6cb5d0: stur            w0, [x3, #0x1b]
    // 0x6cb5d4: ldur            x0, [fp, #-0x80]
    // 0x6cb5d8: StoreField: r3->field_b = r0
    //     0x6cb5d8: stur            w0, [x3, #0xb]
    // 0x6cb5dc: r1 = Null
    //     0x6cb5dc: mov             x1, NULL
    // 0x6cb5e0: r2 = 6
    //     0x6cb5e0: mov             x2, #6
    // 0x6cb5e4: r0 = AllocateArray()
    //     0x6cb5e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cb5e8: mov             x2, x0
    // 0x6cb5ec: ldur            x0, [fp, #-0x68]
    // 0x6cb5f0: stur            x2, [fp, #-0x78]
    // 0x6cb5f4: StoreField: r2->field_f = r0
    //     0x6cb5f4: stur            w0, [x2, #0xf]
    // 0x6cb5f8: ldur            x0, [fp, #-0x70]
    // 0x6cb5fc: StoreField: r2->field_13 = r0
    //     0x6cb5fc: stur            w0, [x2, #0x13]
    // 0x6cb600: ldur            x0, [fp, #-0x10]
    // 0x6cb604: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cb604: stur            w0, [x2, #0x17]
    // 0x6cb608: r1 = <Widget>
    //     0x6cb608: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cb60c: r0 = AllocateGrowableArray()
    //     0x6cb60c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cb610: mov             x1, x0
    // 0x6cb614: ldur            x0, [fp, #-0x78]
    // 0x6cb618: stur            x1, [fp, #-0x10]
    // 0x6cb61c: StoreField: r1->field_f = r0
    //     0x6cb61c: stur            w0, [x1, #0xf]
    // 0x6cb620: r0 = 6
    //     0x6cb620: mov             x0, #6
    // 0x6cb624: StoreField: r1->field_b = r0
    //     0x6cb624: stur            w0, [x1, #0xb]
    // 0x6cb628: r0 = Column()
    //     0x6cb628: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6cb62c: mov             x1, x0
    // 0x6cb630: r0 = Instance_Axis
    //     0x6cb630: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cb634: stur            x1, [fp, #-0x68]
    // 0x6cb638: StoreField: r1->field_f = r0
    //     0x6cb638: stur            w0, [x1, #0xf]
    // 0x6cb63c: r2 = Instance_MainAxisAlignment
    //     0x6cb63c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6cb640: ldr             x2, [x2, #0x230]
    // 0x6cb644: StoreField: r1->field_13 = r2
    //     0x6cb644: stur            w2, [x1, #0x13]
    // 0x6cb648: r2 = Instance_MainAxisSize
    //     0x6cb648: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cb64c: ldr             x2, [x2, #0x330]
    // 0x6cb650: ArrayStore: r1[0] = r2  ; List_4
    //     0x6cb650: stur            w2, [x1, #0x17]
    // 0x6cb654: r3 = Instance_CrossAxisAlignment
    //     0x6cb654: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6cb658: ldr             x3, [x3, #0x338]
    // 0x6cb65c: StoreField: r1->field_1b = r3
    //     0x6cb65c: stur            w3, [x1, #0x1b]
    // 0x6cb660: r4 = Instance_VerticalDirection
    //     0x6cb660: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cb664: ldr             x4, [x4, #0x340]
    // 0x6cb668: StoreField: r1->field_23 = r4
    //     0x6cb668: stur            w4, [x1, #0x23]
    // 0x6cb66c: r5 = Instance_Clip
    //     0x6cb66c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cb670: ldr             x5, [x5, #0x348]
    // 0x6cb674: StoreField: r1->field_2b = r5
    //     0x6cb674: stur            w5, [x1, #0x2b]
    // 0x6cb678: StoreField: r1->field_2f = rZR
    //     0x6cb678: stur            xzr, [x1, #0x2f]
    // 0x6cb67c: ldur            x6, [fp, #-0x10]
    // 0x6cb680: StoreField: r1->field_b = r6
    //     0x6cb680: stur            w6, [x1, #0xb]
    // 0x6cb684: ldur            d0, [fp, #-0x90]
    // 0x6cb688: r6 = inline_Allocate_Double()
    //     0x6cb688: ldp             x6, x7, [THR, #0x60]  ; THR::top
    //     0x6cb68c: add             x6, x6, #0x10
    //     0x6cb690: cmp             x7, x6
    //     0x6cb694: b.ls            #0x6cbb08
    //     0x6cb698: str             x6, [THR, #0x60]  ; THR::top
    //     0x6cb69c: sub             x6, x6, #0xf
    //     0x6cb6a0: mov             x7, #0xe15c
    //     0x6cb6a4: movk            x7, #3, lsl #16
    //     0x6cb6a8: stur            x7, [x6, #-1]
    // 0x6cb6ac: StoreField: r6->field_7 = d0
    //     0x6cb6ac: stur            d0, [x6, #7]
    // 0x6cb6b0: stur            x6, [fp, #-0x10]
    // 0x6cb6b4: r0 = Container()
    //     0x6cb6b4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6cb6b8: stur            x0, [fp, #-0x70]
    // 0x6cb6bc: r16 = inf
    //     0x6cb6bc: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6cb6c0: ldr             x16, [x16, #0xb20]
    // 0x6cb6c4: ldur            lr, [fp, #-0x58]
    // 0x6cb6c8: stp             lr, x16, [SP, #0x18]
    // 0x6cb6cc: ldur            x16, [fp, #-0x10]
    // 0x6cb6d0: ldur            lr, [fp, #-0x60]
    // 0x6cb6d4: stp             lr, x16, [SP, #8]
    // 0x6cb6d8: ldur            x16, [fp, #-0x68]
    // 0x6cb6dc: str             x16, [SP]
    // 0x6cb6e0: mov             x1, x0
    // 0x6cb6e4: r4 = const [0, 0x6, 0x5, 0x1, child, 0x5, decoration, 0x4, height, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6cb6e4: add             x4, PP, #0x20, lsl #12  ; [pp+0x20a18] List(15) [0, 0x6, 0x5, 0x1, "child", 0x5, "decoration", 0x4, "height", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6cb6e8: ldr             x4, [x4, #0xa18]
    // 0x6cb6ec: r0 = Container()
    //     0x6cb6ec: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6cb6f0: r0 = Padding()
    //     0x6cb6f0: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6cb6f4: mov             x3, x0
    // 0x6cb6f8: ldur            x0, [fp, #-0x50]
    // 0x6cb6fc: stur            x3, [fp, #-0x10]
    // 0x6cb700: StoreField: r3->field_f = r0
    //     0x6cb700: stur            w0, [x3, #0xf]
    // 0x6cb704: ldur            x0, [fp, #-0x70]
    // 0x6cb708: StoreField: r3->field_b = r0
    //     0x6cb708: stur            w0, [x3, #0xb]
    // 0x6cb70c: r1 = Null
    //     0x6cb70c: mov             x1, NULL
    // 0x6cb710: r2 = 14
    //     0x6cb710: mov             x2, #0xe
    // 0x6cb714: r0 = AllocateArray()
    //     0x6cb714: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cb718: mov             x2, x0
    // 0x6cb71c: ldur            x0, [fp, #-0x20]
    // 0x6cb720: stur            x2, [fp, #-0x50]
    // 0x6cb724: StoreField: r2->field_f = r0
    //     0x6cb724: stur            w0, [x2, #0xf]
    // 0x6cb728: ldur            x0, [fp, #-0x28]
    // 0x6cb72c: StoreField: r2->field_13 = r0
    //     0x6cb72c: stur            w0, [x2, #0x13]
    // 0x6cb730: ldur            x0, [fp, #-0x38]
    // 0x6cb734: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cb734: stur            w0, [x2, #0x17]
    // 0x6cb738: ldur            x0, [fp, #-0x40]
    // 0x6cb73c: StoreField: r2->field_1b = r0
    //     0x6cb73c: stur            w0, [x2, #0x1b]
    // 0x6cb740: ldur            x0, [fp, #-0x30]
    // 0x6cb744: StoreField: r2->field_1f = r0
    //     0x6cb744: stur            w0, [x2, #0x1f]
    // 0x6cb748: ldur            x0, [fp, #-0x48]
    // 0x6cb74c: StoreField: r2->field_23 = r0
    //     0x6cb74c: stur            w0, [x2, #0x23]
    // 0x6cb750: ldur            x0, [fp, #-0x10]
    // 0x6cb754: StoreField: r2->field_27 = r0
    //     0x6cb754: stur            w0, [x2, #0x27]
    // 0x6cb758: r1 = <Widget>
    //     0x6cb758: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6cb75c: r0 = AllocateGrowableArray()
    //     0x6cb75c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cb760: mov             x1, x0
    // 0x6cb764: ldur            x0, [fp, #-0x50]
    // 0x6cb768: stur            x1, [fp, #-0x10]
    // 0x6cb76c: StoreField: r1->field_f = r0
    //     0x6cb76c: stur            w0, [x1, #0xf]
    // 0x6cb770: r0 = 14
    //     0x6cb770: mov             x0, #0xe
    // 0x6cb774: StoreField: r1->field_b = r0
    //     0x6cb774: stur            w0, [x1, #0xb]
    // 0x6cb778: r0 = Column()
    //     0x6cb778: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6cb77c: mov             x1, x0
    // 0x6cb780: r0 = Instance_Axis
    //     0x6cb780: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cb784: stur            x1, [fp, #-0x20]
    // 0x6cb788: StoreField: r1->field_f = r0
    //     0x6cb788: stur            w0, [x1, #0xf]
    // 0x6cb78c: r2 = Instance_MainAxisAlignment
    //     0x6cb78c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x6cb790: ldr             x2, [x2, #0x328]
    // 0x6cb794: StoreField: r1->field_13 = r2
    //     0x6cb794: stur            w2, [x1, #0x13]
    // 0x6cb798: r2 = Instance_MainAxisSize
    //     0x6cb798: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6cb79c: ldr             x2, [x2, #0x330]
    // 0x6cb7a0: ArrayStore: r1[0] = r2  ; List_4
    //     0x6cb7a0: stur            w2, [x1, #0x17]
    // 0x6cb7a4: r2 = Instance_CrossAxisAlignment
    //     0x6cb7a4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6cb7a8: ldr             x2, [x2, #0x338]
    // 0x6cb7ac: StoreField: r1->field_1b = r2
    //     0x6cb7ac: stur            w2, [x1, #0x1b]
    // 0x6cb7b0: r2 = Instance_VerticalDirection
    //     0x6cb7b0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6cb7b4: ldr             x2, [x2, #0x340]
    // 0x6cb7b8: StoreField: r1->field_23 = r2
    //     0x6cb7b8: stur            w2, [x1, #0x23]
    // 0x6cb7bc: r2 = Instance_Clip
    //     0x6cb7bc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6cb7c0: ldr             x2, [x2, #0x348]
    // 0x6cb7c4: StoreField: r1->field_2b = r2
    //     0x6cb7c4: stur            w2, [x1, #0x2b]
    // 0x6cb7c8: StoreField: r1->field_2f = rZR
    //     0x6cb7c8: stur            xzr, [x1, #0x2f]
    // 0x6cb7cc: ldur            x2, [fp, #-0x10]
    // 0x6cb7d0: StoreField: r1->field_b = r2
    //     0x6cb7d0: stur            w2, [x1, #0xb]
    // 0x6cb7d4: r0 = Padding()
    //     0x6cb7d4: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6cb7d8: mov             x1, x0
    // 0x6cb7dc: ldur            x0, [fp, #-8]
    // 0x6cb7e0: stur            x1, [fp, #-0x10]
    // 0x6cb7e4: StoreField: r1->field_f = r0
    //     0x6cb7e4: stur            w0, [x1, #0xf]
    // 0x6cb7e8: ldur            x0, [fp, #-0x20]
    // 0x6cb7ec: StoreField: r1->field_b = r0
    //     0x6cb7ec: stur            w0, [x1, #0xb]
    // 0x6cb7f0: r0 = SingleChildScrollView()
    //     0x6cb7f0: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6cb7f4: mov             x1, x0
    // 0x6cb7f8: r0 = Instance_Axis
    //     0x6cb7f8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6cb7fc: stur            x1, [fp, #-8]
    // 0x6cb800: StoreField: r1->field_b = r0
    //     0x6cb800: stur            w0, [x1, #0xb]
    // 0x6cb804: r0 = false
    //     0x6cb804: add             x0, NULL, #0x30  ; false
    // 0x6cb808: StoreField: r1->field_f = r0
    //     0x6cb808: stur            w0, [x1, #0xf]
    // 0x6cb80c: ldur            x2, [fp, #-0x10]
    // 0x6cb810: StoreField: r1->field_23 = r2
    //     0x6cb810: stur            w2, [x1, #0x23]
    // 0x6cb814: r2 = Instance_DragStartBehavior
    //     0x6cb814: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6cb818: StoreField: r1->field_27 = r2
    //     0x6cb818: stur            w2, [x1, #0x27]
    // 0x6cb81c: r3 = Instance_Clip
    //     0x6cb81c: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6cb820: ldr             x3, [x3, #0x2d8]
    // 0x6cb824: StoreField: r1->field_2b = r3
    //     0x6cb824: stur            w3, [x1, #0x2b]
    // 0x6cb828: r3 = Instance_HitTestBehavior
    //     0x6cb828: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6cb82c: ldr             x3, [x3, #0xe20]
    // 0x6cb830: StoreField: r1->field_2f = r3
    //     0x6cb830: stur            w3, [x1, #0x2f]
    // 0x6cb834: r0 = Center()
    //     0x6cb834: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6cb838: mov             x1, x0
    // 0x6cb83c: r0 = Instance_Alignment
    //     0x6cb83c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6cb840: ldr             x0, [x0, #0x60]
    // 0x6cb844: stur            x1, [fp, #-0x10]
    // 0x6cb848: StoreField: r1->field_f = r0
    //     0x6cb848: stur            w0, [x1, #0xf]
    // 0x6cb84c: ldur            x0, [fp, #-8]
    // 0x6cb850: StoreField: r1->field_b = r0
    //     0x6cb850: stur            w0, [x1, #0xb]
    // 0x6cb854: r0 = Scaffold()
    //     0x6cb854: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6cb858: ldur            x1, [fp, #-0x18]
    // 0x6cb85c: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cb85c: stur            w1, [x0, #0x17]
    // 0x6cb860: ldur            x1, [fp, #-0x10]
    // 0x6cb864: StoreField: r0->field_1b = r1
    //     0x6cb864: stur            w1, [x0, #0x1b]
    // 0x6cb868: r1 = Instance_AlignmentDirectional
    //     0x6cb868: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6cb86c: ldr             x1, [x1, #0x350]
    // 0x6cb870: StoreField: r0->field_2f = r1
    //     0x6cb870: stur            w1, [x0, #0x2f]
    // 0x6cb874: r1 = true
    //     0x6cb874: add             x1, NULL, #0x20  ; true
    // 0x6cb878: StoreField: r0->field_5f = r1
    //     0x6cb878: stur            w1, [x0, #0x5f]
    // 0x6cb87c: r2 = Instance_DragStartBehavior
    //     0x6cb87c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6cb880: StoreField: r0->field_63 = r2
    //     0x6cb880: stur            w2, [x0, #0x63]
    // 0x6cb884: r2 = false
    //     0x6cb884: add             x2, NULL, #0x30  ; false
    // 0x6cb888: StoreField: r0->field_b = r2
    //     0x6cb888: stur            w2, [x0, #0xb]
    // 0x6cb88c: StoreField: r0->field_f = r1
    //     0x6cb88c: stur            w1, [x0, #0xf]
    // 0x6cb890: StoreField: r0->field_13 = r2
    //     0x6cb890: stur            w2, [x0, #0x13]
    // 0x6cb894: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6cb894: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6cb898: ldr             x2, [x2, #0x358]
    // 0x6cb89c: StoreField: r0->field_4b = r2
    //     0x6cb89c: stur            w2, [x0, #0x4b]
    // 0x6cb8a0: StoreField: r0->field_6b = r1
    //     0x6cb8a0: stur            w1, [x0, #0x6b]
    // 0x6cb8a4: StoreField: r0->field_6f = r1
    //     0x6cb8a4: stur            w1, [x0, #0x6f]
    // 0x6cb8a8: LeaveFrame
    //     0x6cb8a8: mov             SP, fp
    //     0x6cb8ac: ldp             fp, lr, [SP], #0x10
    // 0x6cb8b0: ret
    //     0x6cb8b0: ret             
    // 0x6cb8b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cb8b4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cb8b8: b               #0x6c98ac
    // 0x6cb8bc: SaveReg d0
    //     0x6cb8bc: str             q0, [SP, #-0x10]!
    // 0x6cb8c0: SaveReg r1
    //     0x6cb8c0: str             x1, [SP, #-8]!
    // 0x6cb8c4: r0 = AllocateDouble()
    //     0x6cb8c4: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb8c8: RestoreReg r1
    //     0x6cb8c8: ldr             x1, [SP], #8
    // 0x6cb8cc: RestoreReg d0
    //     0x6cb8cc: ldr             q0, [SP], #0x10
    // 0x6cb8d0: b               #0x6c9b9c
    // 0x6cb8d4: SaveReg d0
    //     0x6cb8d4: str             q0, [SP, #-0x10]!
    // 0x6cb8d8: r0 = AllocateDouble()
    //     0x6cb8d8: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb8dc: RestoreReg d0
    //     0x6cb8dc: ldr             q0, [SP], #0x10
    // 0x6cb8e0: b               #0x6c9bf4
    // 0x6cb8e4: SaveReg d0
    //     0x6cb8e4: str             q0, [SP, #-0x10]!
    // 0x6cb8e8: stp             x0, x1, [SP, #-0x10]!
    // 0x6cb8ec: r0 = AllocateDouble()
    //     0x6cb8ec: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb8f0: mov             x2, x0
    // 0x6cb8f4: ldp             x0, x1, [SP], #0x10
    // 0x6cb8f8: RestoreReg d0
    //     0x6cb8f8: ldr             q0, [SP], #0x10
    // 0x6cb8fc: b               #0x6c9de8
    // 0x6cb900: SaveReg d0
    //     0x6cb900: str             q0, [SP, #-0x10]!
    // 0x6cb904: SaveReg r1
    //     0x6cb904: str             x1, [SP, #-8]!
    // 0x6cb908: r0 = AllocateDouble()
    //     0x6cb908: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb90c: RestoreReg r1
    //     0x6cb90c: ldr             x1, [SP], #8
    // 0x6cb910: RestoreReg d0
    //     0x6cb910: ldr             q0, [SP], #0x10
    // 0x6cb914: b               #0x6c9f4c
    // 0x6cb918: SaveReg d0
    //     0x6cb918: str             q0, [SP, #-0x10]!
    // 0x6cb91c: stp             x0, x1, [SP, #-0x10]!
    // 0x6cb920: r0 = AllocateDouble()
    //     0x6cb920: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb924: mov             x2, x0
    // 0x6cb928: ldp             x0, x1, [SP], #0x10
    // 0x6cb92c: RestoreReg d0
    //     0x6cb92c: ldr             q0, [SP], #0x10
    // 0x6cb930: b               #0x6c9f9c
    // 0x6cb934: SaveReg d0
    //     0x6cb934: str             q0, [SP, #-0x10]!
    // 0x6cb938: stp             x1, x2, [SP, #-0x10]!
    // 0x6cb93c: SaveReg r0
    //     0x6cb93c: str             x0, [SP, #-8]!
    // 0x6cb940: r0 = AllocateDouble()
    //     0x6cb940: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb944: mov             x3, x0
    // 0x6cb948: RestoreReg r0
    //     0x6cb948: ldr             x0, [SP], #8
    // 0x6cb94c: ldp             x1, x2, [SP], #0x10
    // 0x6cb950: RestoreReg d0
    //     0x6cb950: ldr             q0, [SP], #0x10
    // 0x6cb954: b               #0x6c9fcc
    // 0x6cb958: SaveReg d0
    //     0x6cb958: str             q0, [SP, #-0x10]!
    // 0x6cb95c: stp             x1, x2, [SP, #-0x10]!
    // 0x6cb960: SaveReg r0
    //     0x6cb960: str             x0, [SP, #-8]!
    // 0x6cb964: r0 = AllocateDouble()
    //     0x6cb964: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb968: mov             x3, x0
    // 0x6cb96c: RestoreReg r0
    //     0x6cb96c: ldr             x0, [SP], #8
    // 0x6cb970: ldp             x1, x2, [SP], #0x10
    // 0x6cb974: RestoreReg d0
    //     0x6cb974: ldr             q0, [SP], #0x10
    // 0x6cb978: b               #0x6ca0a8
    // 0x6cb97c: SaveReg d0
    //     0x6cb97c: str             q0, [SP, #-0x10]!
    // 0x6cb980: SaveReg r1
    //     0x6cb980: str             x1, [SP, #-8]!
    // 0x6cb984: r0 = AllocateDouble()
    //     0x6cb984: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb988: RestoreReg r1
    //     0x6cb988: ldr             x1, [SP], #8
    // 0x6cb98c: RestoreReg d0
    //     0x6cb98c: ldr             q0, [SP], #0x10
    // 0x6cb990: b               #0x6ca268
    // 0x6cb994: SaveReg d0
    //     0x6cb994: str             q0, [SP, #-0x10]!
    // 0x6cb998: stp             x0, x1, [SP, #-0x10]!
    // 0x6cb99c: r0 = AllocateDouble()
    //     0x6cb99c: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb9a0: mov             x2, x0
    // 0x6cb9a4: ldp             x0, x1, [SP], #0x10
    // 0x6cb9a8: RestoreReg d0
    //     0x6cb9a8: ldr             q0, [SP], #0x10
    // 0x6cb9ac: b               #0x6ca49c
    // 0x6cb9b0: SaveReg d0
    //     0x6cb9b0: str             q0, [SP, #-0x10]!
    // 0x6cb9b4: SaveReg r1
    //     0x6cb9b4: str             x1, [SP, #-8]!
    // 0x6cb9b8: r0 = AllocateDouble()
    //     0x6cb9b8: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb9bc: RestoreReg r1
    //     0x6cb9bc: ldr             x1, [SP], #8
    // 0x6cb9c0: RestoreReg d0
    //     0x6cb9c0: ldr             q0, [SP], #0x10
    // 0x6cb9c4: b               #0x6ca5e0
    // 0x6cb9c8: SaveReg d0
    //     0x6cb9c8: str             q0, [SP, #-0x10]!
    // 0x6cb9cc: stp             x0, x1, [SP, #-0x10]!
    // 0x6cb9d0: r0 = AllocateDouble()
    //     0x6cb9d0: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb9d4: mov             x2, x0
    // 0x6cb9d8: ldp             x0, x1, [SP], #0x10
    // 0x6cb9dc: RestoreReg d0
    //     0x6cb9dc: ldr             q0, [SP], #0x10
    // 0x6cb9e0: b               #0x6ca63c
    // 0x6cb9e4: SaveReg d0
    //     0x6cb9e4: str             q0, [SP, #-0x10]!
    // 0x6cb9e8: stp             x1, x2, [SP, #-0x10]!
    // 0x6cb9ec: SaveReg r0
    //     0x6cb9ec: str             x0, [SP, #-8]!
    // 0x6cb9f0: r0 = AllocateDouble()
    //     0x6cb9f0: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cb9f4: mov             x3, x0
    // 0x6cb9f8: RestoreReg r0
    //     0x6cb9f8: ldr             x0, [SP], #8
    // 0x6cb9fc: ldp             x1, x2, [SP], #0x10
    // 0x6cba00: RestoreReg d0
    //     0x6cba00: ldr             q0, [SP], #0x10
    // 0x6cba04: b               #0x6ca66c
    // 0x6cba08: SaveReg d0
    //     0x6cba08: str             q0, [SP, #-0x10]!
    // 0x6cba0c: stp             x1, x2, [SP, #-0x10]!
    // 0x6cba10: SaveReg r0
    //     0x6cba10: str             x0, [SP, #-8]!
    // 0x6cba14: r0 = AllocateDouble()
    //     0x6cba14: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cba18: mov             x3, x0
    // 0x6cba1c: RestoreReg r0
    //     0x6cba1c: ldr             x0, [SP], #8
    // 0x6cba20: ldp             x1, x2, [SP], #0x10
    // 0x6cba24: RestoreReg d0
    //     0x6cba24: ldr             q0, [SP], #0x10
    // 0x6cba28: b               #0x6ca748
    // 0x6cba2c: SaveReg d0
    //     0x6cba2c: str             q0, [SP, #-0x10]!
    // 0x6cba30: SaveReg r1
    //     0x6cba30: str             x1, [SP, #-8]!
    // 0x6cba34: r0 = AllocateDouble()
    //     0x6cba34: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cba38: RestoreReg r1
    //     0x6cba38: ldr             x1, [SP], #8
    // 0x6cba3c: RestoreReg d0
    //     0x6cba3c: ldr             q0, [SP], #0x10
    // 0x6cba40: b               #0x6ca908
    // 0x6cba44: SaveReg d0
    //     0x6cba44: str             q0, [SP, #-0x10]!
    // 0x6cba48: stp             x0, x1, [SP, #-0x10]!
    // 0x6cba4c: r0 = AllocateDouble()
    //     0x6cba4c: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cba50: mov             x2, x0
    // 0x6cba54: ldp             x0, x1, [SP], #0x10
    // 0x6cba58: RestoreReg d0
    //     0x6cba58: ldr             q0, [SP], #0x10
    // 0x6cba5c: b               #0x6cab3c
    // 0x6cba60: SaveReg d0
    //     0x6cba60: str             q0, [SP, #-0x10]!
    // 0x6cba64: SaveReg r1
    //     0x6cba64: str             x1, [SP, #-8]!
    // 0x6cba68: r0 = AllocateDouble()
    //     0x6cba68: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cba6c: RestoreReg r1
    //     0x6cba6c: ldr             x1, [SP], #8
    // 0x6cba70: RestoreReg d0
    //     0x6cba70: ldr             q0, [SP], #0x10
    // 0x6cba74: b               #0x6cac7c
    // 0x6cba78: SaveReg d0
    //     0x6cba78: str             q0, [SP, #-0x10]!
    // 0x6cba7c: stp             x0, x1, [SP, #-0x10]!
    // 0x6cba80: r0 = AllocateDouble()
    //     0x6cba80: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cba84: mov             x2, x0
    // 0x6cba88: ldp             x0, x1, [SP], #0x10
    // 0x6cba8c: RestoreReg d0
    //     0x6cba8c: ldr             q0, [SP], #0x10
    // 0x6cba90: b               #0x6cacd4
    // 0x6cba94: SaveReg d0
    //     0x6cba94: str             q0, [SP, #-0x10]!
    // 0x6cba98: stp             x1, x2, [SP, #-0x10]!
    // 0x6cba9c: SaveReg r0
    //     0x6cba9c: str             x0, [SP, #-8]!
    // 0x6cbaa0: r0 = AllocateDouble()
    //     0x6cbaa0: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cbaa4: mov             x3, x0
    // 0x6cbaa8: RestoreReg r0
    //     0x6cbaa8: ldr             x0, [SP], #8
    // 0x6cbaac: ldp             x1, x2, [SP], #0x10
    // 0x6cbab0: RestoreReg d0
    //     0x6cbab0: ldr             q0, [SP], #0x10
    // 0x6cbab4: b               #0x6cad04
    // 0x6cbab8: SaveReg d0
    //     0x6cbab8: str             q0, [SP, #-0x10]!
    // 0x6cbabc: SaveReg r1
    //     0x6cbabc: str             x1, [SP, #-8]!
    // 0x6cbac0: r0 = AllocateDouble()
    //     0x6cbac0: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cbac4: RestoreReg r1
    //     0x6cbac4: ldr             x1, [SP], #8
    // 0x6cbac8: RestoreReg d0
    //     0x6cbac8: ldr             q0, [SP], #0x10
    // 0x6cbacc: b               #0x6caf10
    // 0x6cbad0: SaveReg d0
    //     0x6cbad0: str             q0, [SP, #-0x10]!
    // 0x6cbad4: stp             x0, x1, [SP, #-0x10]!
    // 0x6cbad8: r0 = AllocateDouble()
    //     0x6cbad8: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cbadc: mov             x2, x0
    // 0x6cbae0: ldp             x0, x1, [SP], #0x10
    // 0x6cbae4: RestoreReg d0
    //     0x6cbae4: ldr             q0, [SP], #0x10
    // 0x6cbae8: b               #0x6cb0ac
    // 0x6cbaec: SaveReg d0
    //     0x6cbaec: str             q0, [SP, #-0x10]!
    // 0x6cbaf0: stp             x0, x1, [SP, #-0x10]!
    // 0x6cbaf4: r0 = AllocateDouble()
    //     0x6cbaf4: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cbaf8: mov             x2, x0
    // 0x6cbafc: ldp             x0, x1, [SP], #0x10
    // 0x6cbb00: RestoreReg d0
    //     0x6cbb00: ldr             q0, [SP], #0x10
    // 0x6cbb04: b               #0x6cb394
    // 0x6cbb08: SaveReg d0
    //     0x6cbb08: str             q0, [SP, #-0x10]!
    // 0x6cbb0c: stp             x4, x5, [SP, #-0x10]!
    // 0x6cbb10: stp             x2, x3, [SP, #-0x10]!
    // 0x6cbb14: stp             x0, x1, [SP, #-0x10]!
    // 0x6cbb18: r0 = AllocateDouble()
    //     0x6cbb18: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cbb1c: mov             x6, x0
    // 0x6cbb20: ldp             x0, x1, [SP], #0x10
    // 0x6cbb24: ldp             x2, x3, [SP], #0x10
    // 0x6cbb28: ldp             x4, x5, [SP], #0x10
    // 0x6cbb2c: RestoreReg d0
    //     0x6cbb2c: ldr             q0, [SP], #0x10
    // 0x6cbb30: b               #0x6cb6ac
  }
  [closure] BarChart <anonymous closure>(dynamic) {
    // ** addr: 0x6cc74c, size: 0x3dc
    // 0x6cc74c: EnterFrame
    //     0x6cc74c: stp             fp, lr, [SP, #-0x10]!
    //     0x6cc750: mov             fp, SP
    // 0x6cc754: AllocStack(0x48)
    //     0x6cc754: sub             SP, SP, #0x48
    // 0x6cc758: SetupParameters([dynamic _ /* r0 */])
    //     0x6cc758: ldr             x0, [fp, #0x10]
    //     0x6cc75c: ldur            w2, [x0, #0x17]
    //     0x6cc760: add             x2, x2, HEAP, lsl #32
    //     0x6cc764: stur            x2, [fp, #-8]
    // 0x6cc768: CheckStackOverflow
    //     0x6cc768: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cc76c: cmp             SP, x16
    //     0x6cc770: b.ls            #0x6ccb1c
    // 0x6cc774: r0 = BarTouchTooltipData()
    //     0x6cc774: bl              #0x6cd150  ; AllocateBarTouchTooltipDataStub -> BarTouchTooltipData (size=0x4c)
    // 0x6cc778: mov             x3, x0
    // 0x6cc77c: r0 = Instance_EdgeInsets
    //     0x6cc77c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x6cc780: ldr             x0, [x0, #0x1e0]
    // 0x6cc784: stur            x3, [fp, #-0x10]
    // 0x6cc788: StoreField: r3->field_b = r0
    //     0x6cc788: stur            w0, [x3, #0xb]
    // 0x6cc78c: d0 = 16.000000
    //     0x6cc78c: fmov            d0, #16.00000000
    // 0x6cc790: StoreField: r3->field_f = d0
    //     0x6cc790: stur            d0, [x3, #0xf]
    // 0x6cc794: r0 = Instance_FLHorizontalAlignment
    //     0x6cc794: add             x0, PP, #0x20, lsl #12  ; [pp+0x20a20] Obj!FLHorizontalAlignment@a2c4f1
    //     0x6cc798: ldr             x0, [x0, #0xa20]
    // 0x6cc79c: ArrayStore: r3[0] = r0  ; List_4
    //     0x6cc79c: stur            w0, [x3, #0x17]
    // 0x6cc7a0: StoreField: r3->field_1b = rZR
    //     0x6cc7a0: stur            xzr, [x3, #0x1b]
    // 0x6cc7a4: d1 = 120.000000
    //     0x6cc7a4: add             x17, PP, #0x20, lsl #12  ; [pp+0x20a28] IMM: double(120) from 0x405e000000000000
    //     0x6cc7a8: ldr             d1, [x17, #0xa28]
    // 0x6cc7ac: StoreField: r3->field_23 = d1
    //     0x6cc7ac: stur            d1, [x3, #0x23]
    // 0x6cc7b0: r1 = Function '<anonymous closure>':.
    //     0x6cc7b0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a30] AnonymousClosure: (0x6cd354), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6cc7b4: ldr             x1, [x1, #0xa30]
    // 0x6cc7b8: r2 = Null
    //     0x6cc7b8: mov             x2, NULL
    // 0x6cc7bc: r0 = AllocateClosure()
    //     0x6cc7bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cc7c0: mov             x1, x0
    // 0x6cc7c4: ldur            x0, [fp, #-0x10]
    // 0x6cc7c8: StoreField: r0->field_2b = r1
    //     0x6cc7c8: stur            w1, [x0, #0x2b]
    // 0x6cc7cc: r1 = Closure: (BarChartGroupData) => Color from Function 'defaultBarTooltipColor': static.
    //     0x6cc7cc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a38] Closure: (BarChartGroupData) => Color from Function 'defaultBarTooltipColor': static. (0x7f22904acd80)
    //     0x6cc7d0: ldr             x1, [x1, #0xa38]
    // 0x6cc7d4: StoreField: r0->field_47 = r1
    //     0x6cc7d4: stur            w1, [x0, #0x47]
    // 0x6cc7d8: r2 = false
    //     0x6cc7d8: add             x2, NULL, #0x30  ; false
    // 0x6cc7dc: StoreField: r0->field_2f = r2
    //     0x6cc7dc: stur            w2, [x0, #0x2f]
    // 0x6cc7e0: StoreField: r0->field_33 = r2
    //     0x6cc7e0: stur            w2, [x0, #0x33]
    // 0x6cc7e4: r1 = Instance_TooltipDirection
    //     0x6cc7e4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a40] Obj!TooltipDirection@a2c5d1
    //     0x6cc7e8: ldr             x1, [x1, #0xa40]
    // 0x6cc7ec: StoreField: r0->field_37 = r1
    //     0x6cc7ec: stur            w1, [x0, #0x37]
    // 0x6cc7f0: StoreField: r0->field_3b = rZR
    //     0x6cc7f0: stur            xzr, [x0, #0x3b]
    // 0x6cc7f4: r1 = Instance_BorderSide
    //     0x6cc7f4: add             x1, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6cc7f8: ldr             x1, [x1, #0xcb8]
    // 0x6cc7fc: StoreField: r0->field_43 = r1
    //     0x6cc7fc: stur            w1, [x0, #0x43]
    // 0x6cc800: r1 = <BarTouchResponse>
    //     0x6cc800: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a48] TypeArguments: <BarTouchResponse>
    //     0x6cc804: ldr             x1, [x1, #0xa48]
    // 0x6cc808: r0 = BarTouchData()
    //     0x6cc808: bl              #0x64f43c  ; AllocateBarTouchDataStub -> BarTouchData (size=0x2c)
    // 0x6cc80c: mov             x3, x0
    // 0x6cc810: ldur            x0, [fp, #-0x10]
    // 0x6cc814: stur            x3, [fp, #-0x18]
    // 0x6cc818: StoreField: r3->field_1b = r0
    //     0x6cc818: stur            w0, [x3, #0x1b]
    // 0x6cc81c: r0 = Instance_EdgeInsets
    //     0x6cc81c: add             x0, PP, #0x1e, lsl #12  ; [pp+0x1ec00] Obj!EdgeInsets@a0bdb1
    //     0x6cc820: ldr             x0, [x0, #0xc00]
    // 0x6cc824: StoreField: r3->field_1f = r0
    //     0x6cc824: stur            w0, [x3, #0x1f]
    // 0x6cc828: r0 = false
    //     0x6cc828: add             x0, NULL, #0x30  ; false
    // 0x6cc82c: StoreField: r3->field_23 = r0
    //     0x6cc82c: stur            w0, [x3, #0x23]
    // 0x6cc830: r4 = true
    //     0x6cc830: add             x4, NULL, #0x20  ; true
    // 0x6cc834: StoreField: r3->field_27 = r4
    //     0x6cc834: stur            w4, [x3, #0x27]
    // 0x6cc838: StoreField: r3->field_b = r4
    //     0x6cc838: stur            w4, [x3, #0xb]
    // 0x6cc83c: ldur            x5, [fp, #-8]
    // 0x6cc840: LoadField: r1 = r5->field_b
    //     0x6cc840: ldur            w1, [x5, #0xb]
    // 0x6cc844: DecompressPointer r1
    //     0x6cc844: add             x1, x1, HEAP, lsl #32
    // 0x6cc848: LoadField: r2 = r1->field_f
    //     0x6cc848: ldur            w2, [x1, #0xf]
    // 0x6cc84c: DecompressPointer r2
    //     0x6cc84c: add             x2, x2, HEAP, lsl #32
    // 0x6cc850: LoadField: r1 = r2->field_13
    //     0x6cc850: ldur            w1, [x2, #0x13]
    // 0x6cc854: DecompressPointer r1
    //     0x6cc854: add             x1, x1, HEAP, lsl #32
    // 0x6cc858: cmp             w1, NULL
    // 0x6cc85c: b.eq            #0x6ccb24
    // 0x6cc860: LoadField: r6 = r1->field_37
    //     0x6cc860: ldur            w6, [x1, #0x37]
    // 0x6cc864: DecompressPointer r6
    //     0x6cc864: add             x6, x6, HEAP, lsl #32
    // 0x6cc868: mov             x1, x2
    // 0x6cc86c: mov             x2, x6
    // 0x6cc870: r0 = buildBarGroups()
    //     0x6cc870: bl              #0x6ccc28  ; [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::buildBarGroups
    // 0x6cc874: stur            x0, [fp, #-0x10]
    // 0x6cc878: r0 = FlBorderData()
    //     0x6cc878: bl              #0x55c788  ; AllocateFlBorderDataStub -> FlBorderData (size=0x10)
    // 0x6cc87c: mov             x2, x0
    // 0x6cc880: r0 = false
    //     0x6cc880: add             x0, NULL, #0x30  ; false
    // 0x6cc884: stur            x2, [fp, #-0x20]
    // 0x6cc888: StoreField: r2->field_7 = r0
    //     0x6cc888: stur            w0, [x2, #7]
    // 0x6cc88c: r1 = Null
    //     0x6cc88c: mov             x1, NULL
    // 0x6cc890: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6cc890: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6cc894: r0 = Border.all()
    //     0x6cc894: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6cc898: ldur            x5, [fp, #-0x20]
    // 0x6cc89c: StoreField: r5->field_b = r0
    //     0x6cc89c: stur            w0, [x5, #0xb]
    //     0x6cc8a0: ldurb           w16, [x5, #-1]
    //     0x6cc8a4: ldurb           w17, [x0, #-1]
    //     0x6cc8a8: and             x16, x17, x16, lsr #2
    //     0x6cc8ac: tst             x16, HEAP, lsr #32
    //     0x6cc8b0: b.eq            #0x6cc8b8
    //     0x6cc8b4: bl              #0x926810  ; WriteBarrierWrappersStub
    // 0x6cc8b8: r0 = FlGridData()
    //     0x6cc8b8: bl              #0x55ce60  ; AllocateFlGridDataStub -> FlGridData (size=0x2c)
    // 0x6cc8bc: mov             x1, x0
    // 0x6cc8c0: r0 = false
    //     0x6cc8c0: add             x0, NULL, #0x30  ; false
    // 0x6cc8c4: stur            x1, [fp, #-0x28]
    // 0x6cc8c8: StoreField: r1->field_7 = r0
    //     0x6cc8c8: stur            w0, [x1, #7]
    // 0x6cc8cc: r2 = true
    //     0x6cc8cc: add             x2, NULL, #0x20  ; true
    // 0x6cc8d0: StoreField: r1->field_b = r2
    //     0x6cc8d0: stur            w2, [x1, #0xb]
    // 0x6cc8d4: r3 = Closure: (double) => FlLine from Function 'defaultGridLine': static.
    //     0x6cc8d4: add             x3, PP, #0x20, lsl #12  ; [pp+0x20a50] Closure: (double) => FlLine from Function 'defaultGridLine': static. (0x7f229055ce6c)
    //     0x6cc8d8: ldr             x3, [x3, #0xa50]
    // 0x6cc8dc: StoreField: r1->field_13 = r3
    //     0x6cc8dc: stur            w3, [x1, #0x13]
    // 0x6cc8e0: r4 = Closure: (double) => bool from Function 'showAllGrids': static.
    //     0x6cc8e0: add             x4, PP, #0x20, lsl #12  ; [pp+0x20a58] Closure: (double) => bool from Function 'showAllGrids': static. (0x7f229092225c)
    //     0x6cc8e4: ldr             x4, [x4, #0xa58]
    // 0x6cc8e8: ArrayStore: r1[0] = r4  ; List_4
    //     0x6cc8e8: stur            w4, [x1, #0x17]
    // 0x6cc8ec: StoreField: r1->field_1b = r2
    //     0x6cc8ec: stur            w2, [x1, #0x1b]
    // 0x6cc8f0: StoreField: r1->field_23 = r3
    //     0x6cc8f0: stur            w3, [x1, #0x23]
    // 0x6cc8f4: StoreField: r1->field_27 = r4
    //     0x6cc8f4: stur            w4, [x1, #0x27]
    // 0x6cc8f8: r0 = SideTitles()
    //     0x6cc8f8: bl              #0x55d460  ; AllocateSideTitlesStub -> SideTitles (size=0x24)
    // 0x6cc8fc: mov             x1, x0
    // 0x6cc900: r0 = false
    //     0x6cc900: add             x0, NULL, #0x30  ; false
    // 0x6cc904: stur            x1, [fp, #-0x30]
    // 0x6cc908: StoreField: r1->field_7 = r0
    //     0x6cc908: stur            w0, [x1, #7]
    // 0x6cc90c: r2 = Closure: (double, TitleMeta) => Widget from Function 'defaultGetTitle': static.
    //     0x6cc90c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a60] Closure: (double, TitleMeta) => Widget from Function 'defaultGetTitle': static. (0x7f22906cd2ac)
    //     0x6cc910: ldr             x2, [x2, #0xa60]
    // 0x6cc914: StoreField: r1->field_b = r2
    //     0x6cc914: stur            w2, [x1, #0xb]
    // 0x6cc918: d0 = 22.000000
    //     0x6cc918: fmov            d0, #22.00000000
    // 0x6cc91c: StoreField: r1->field_f = d0
    //     0x6cc91c: stur            d0, [x1, #0xf]
    // 0x6cc920: r3 = true
    //     0x6cc920: add             x3, NULL, #0x20  ; true
    // 0x6cc924: StoreField: r1->field_1b = r3
    //     0x6cc924: stur            w3, [x1, #0x1b]
    // 0x6cc928: StoreField: r1->field_1f = r3
    //     0x6cc928: stur            w3, [x1, #0x1f]
    // 0x6cc92c: r0 = AxisTitles()
    //     0x6cc92c: bl              #0x55d290  ; AllocateAxisTitlesStub -> AxisTitles (size=0x20)
    // 0x6cc930: d0 = 16.000000
    //     0x6cc930: fmov            d0, #16.00000000
    // 0x6cc934: stur            x0, [fp, #-0x38]
    // 0x6cc938: StoreField: r0->field_7 = d0
    //     0x6cc938: stur            d0, [x0, #7]
    // 0x6cc93c: ldur            x1, [fp, #-0x30]
    // 0x6cc940: StoreField: r0->field_13 = r1
    //     0x6cc940: stur            w1, [x0, #0x13]
    // 0x6cc944: r1 = true
    //     0x6cc944: add             x1, NULL, #0x20  ; true
    // 0x6cc948: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cc948: stur            w1, [x0, #0x17]
    // 0x6cc94c: r2 = Instance_SideTitleAlignment
    //     0x6cc94c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a68] Obj!SideTitleAlignment@a2c531
    //     0x6cc950: ldr             x2, [x2, #0xa68]
    // 0x6cc954: StoreField: r0->field_1b = r2
    //     0x6cc954: stur            w2, [x0, #0x1b]
    // 0x6cc958: r0 = SideTitles()
    //     0x6cc958: bl              #0x55d460  ; AllocateSideTitlesStub -> SideTitles (size=0x24)
    // 0x6cc95c: mov             x1, x0
    // 0x6cc960: r0 = false
    //     0x6cc960: add             x0, NULL, #0x30  ; false
    // 0x6cc964: stur            x1, [fp, #-0x30]
    // 0x6cc968: StoreField: r1->field_7 = r0
    //     0x6cc968: stur            w0, [x1, #7]
    // 0x6cc96c: r2 = Closure: (double, TitleMeta) => Widget from Function 'defaultGetTitle': static.
    //     0x6cc96c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a60] Closure: (double, TitleMeta) => Widget from Function 'defaultGetTitle': static. (0x7f22906cd2ac)
    //     0x6cc970: ldr             x2, [x2, #0xa60]
    // 0x6cc974: StoreField: r1->field_b = r2
    //     0x6cc974: stur            w2, [x1, #0xb]
    // 0x6cc978: d0 = 22.000000
    //     0x6cc978: fmov            d0, #22.00000000
    // 0x6cc97c: StoreField: r1->field_f = d0
    //     0x6cc97c: stur            d0, [x1, #0xf]
    // 0x6cc980: r3 = true
    //     0x6cc980: add             x3, NULL, #0x20  ; true
    // 0x6cc984: StoreField: r1->field_1b = r3
    //     0x6cc984: stur            w3, [x1, #0x1b]
    // 0x6cc988: StoreField: r1->field_1f = r3
    //     0x6cc988: stur            w3, [x1, #0x1f]
    // 0x6cc98c: r0 = AxisTitles()
    //     0x6cc98c: bl              #0x55d290  ; AllocateAxisTitlesStub -> AxisTitles (size=0x20)
    // 0x6cc990: d0 = 16.000000
    //     0x6cc990: fmov            d0, #16.00000000
    // 0x6cc994: stur            x0, [fp, #-0x40]
    // 0x6cc998: StoreField: r0->field_7 = d0
    //     0x6cc998: stur            d0, [x0, #7]
    // 0x6cc99c: ldur            x1, [fp, #-0x30]
    // 0x6cc9a0: StoreField: r0->field_13 = r1
    //     0x6cc9a0: stur            w1, [x0, #0x13]
    // 0x6cc9a4: r1 = true
    //     0x6cc9a4: add             x1, NULL, #0x20  ; true
    // 0x6cc9a8: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cc9a8: stur            w1, [x0, #0x17]
    // 0x6cc9ac: r2 = Instance_SideTitleAlignment
    //     0x6cc9ac: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a68] Obj!SideTitleAlignment@a2c531
    //     0x6cc9b0: ldr             x2, [x2, #0xa68]
    // 0x6cc9b4: StoreField: r0->field_1b = r2
    //     0x6cc9b4: stur            w2, [x0, #0x1b]
    // 0x6cc9b8: r0 = SideTitles()
    //     0x6cc9b8: bl              #0x55d460  ; AllocateSideTitlesStub -> SideTitles (size=0x24)
    // 0x6cc9bc: mov             x1, x0
    // 0x6cc9c0: r0 = false
    //     0x6cc9c0: add             x0, NULL, #0x30  ; false
    // 0x6cc9c4: stur            x1, [fp, #-0x30]
    // 0x6cc9c8: StoreField: r1->field_7 = r0
    //     0x6cc9c8: stur            w0, [x1, #7]
    // 0x6cc9cc: r0 = Closure: (double, TitleMeta) => Widget from Function 'defaultGetTitle': static.
    //     0x6cc9cc: add             x0, PP, #0x20, lsl #12  ; [pp+0x20a60] Closure: (double, TitleMeta) => Widget from Function 'defaultGetTitle': static. (0x7f22906cd2ac)
    //     0x6cc9d0: ldr             x0, [x0, #0xa60]
    // 0x6cc9d4: StoreField: r1->field_b = r0
    //     0x6cc9d4: stur            w0, [x1, #0xb]
    // 0x6cc9d8: d0 = 22.000000
    //     0x6cc9d8: fmov            d0, #22.00000000
    // 0x6cc9dc: StoreField: r1->field_f = d0
    //     0x6cc9dc: stur            d0, [x1, #0xf]
    // 0x6cc9e0: r0 = true
    //     0x6cc9e0: add             x0, NULL, #0x20  ; true
    // 0x6cc9e4: StoreField: r1->field_1b = r0
    //     0x6cc9e4: stur            w0, [x1, #0x1b]
    // 0x6cc9e8: StoreField: r1->field_1f = r0
    //     0x6cc9e8: stur            w0, [x1, #0x1f]
    // 0x6cc9ec: r0 = AxisTitles()
    //     0x6cc9ec: bl              #0x55d290  ; AllocateAxisTitlesStub -> AxisTitles (size=0x20)
    // 0x6cc9f0: d0 = 16.000000
    //     0x6cc9f0: fmov            d0, #16.00000000
    // 0x6cc9f4: stur            x0, [fp, #-0x48]
    // 0x6cc9f8: StoreField: r0->field_7 = d0
    //     0x6cc9f8: stur            d0, [x0, #7]
    // 0x6cc9fc: ldur            x1, [fp, #-0x30]
    // 0x6cca00: StoreField: r0->field_13 = r1
    //     0x6cca00: stur            w1, [x0, #0x13]
    // 0x6cca04: r1 = true
    //     0x6cca04: add             x1, NULL, #0x20  ; true
    // 0x6cca08: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cca08: stur            w1, [x0, #0x17]
    // 0x6cca0c: r2 = Instance_SideTitleAlignment
    //     0x6cca0c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a68] Obj!SideTitleAlignment@a2c531
    //     0x6cca10: ldr             x2, [x2, #0xa68]
    // 0x6cca14: StoreField: r0->field_1b = r2
    //     0x6cca14: stur            w2, [x0, #0x1b]
    // 0x6cca18: r0 = SideTitles()
    //     0x6cca18: bl              #0x55d460  ; AllocateSideTitlesStub -> SideTitles (size=0x24)
    // 0x6cca1c: mov             x3, x0
    // 0x6cca20: r0 = true
    //     0x6cca20: add             x0, NULL, #0x20  ; true
    // 0x6cca24: stur            x3, [fp, #-0x30]
    // 0x6cca28: StoreField: r3->field_7 = r0
    //     0x6cca28: stur            w0, [x3, #7]
    // 0x6cca2c: ldur            x2, [fp, #-8]
    // 0x6cca30: r1 = Function '<anonymous closure>':.
    //     0x6cca30: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a70] AnonymousClosure: (0x6cd15c), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6cca34: ldr             x1, [x1, #0xa70]
    // 0x6cca38: r0 = AllocateClosure()
    //     0x6cca38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cca3c: mov             x1, x0
    // 0x6cca40: ldur            x0, [fp, #-0x30]
    // 0x6cca44: StoreField: r0->field_b = r1
    //     0x6cca44: stur            w1, [x0, #0xb]
    // 0x6cca48: d0 = 22.000000
    //     0x6cca48: fmov            d0, #22.00000000
    // 0x6cca4c: StoreField: r0->field_f = d0
    //     0x6cca4c: stur            d0, [x0, #0xf]
    // 0x6cca50: r1 = true
    //     0x6cca50: add             x1, NULL, #0x20  ; true
    // 0x6cca54: StoreField: r0->field_1b = r1
    //     0x6cca54: stur            w1, [x0, #0x1b]
    // 0x6cca58: StoreField: r0->field_1f = r1
    //     0x6cca58: stur            w1, [x0, #0x1f]
    // 0x6cca5c: r0 = AxisTitles()
    //     0x6cca5c: bl              #0x55d290  ; AllocateAxisTitlesStub -> AxisTitles (size=0x20)
    // 0x6cca60: d0 = 16.000000
    //     0x6cca60: fmov            d0, #16.00000000
    // 0x6cca64: stur            x0, [fp, #-8]
    // 0x6cca68: StoreField: r0->field_7 = d0
    //     0x6cca68: stur            d0, [x0, #7]
    // 0x6cca6c: ldur            x1, [fp, #-0x30]
    // 0x6cca70: StoreField: r0->field_13 = r1
    //     0x6cca70: stur            w1, [x0, #0x13]
    // 0x6cca74: r1 = true
    //     0x6cca74: add             x1, NULL, #0x20  ; true
    // 0x6cca78: ArrayStore: r0[0] = r1  ; List_4
    //     0x6cca78: stur            w1, [x0, #0x17]
    // 0x6cca7c: r2 = Instance_SideTitleAlignment
    //     0x6cca7c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20a68] Obj!SideTitleAlignment@a2c531
    //     0x6cca80: ldr             x2, [x2, #0xa68]
    // 0x6cca84: StoreField: r0->field_1b = r2
    //     0x6cca84: stur            w2, [x0, #0x1b]
    // 0x6cca88: r0 = FlTitlesData()
    //     0x6cca88: bl              #0x55d0e8  ; AllocateFlTitlesDataStub -> FlTitlesData (size=0x1c)
    // 0x6cca8c: mov             x1, x0
    // 0x6cca90: r0 = true
    //     0x6cca90: add             x0, NULL, #0x20  ; true
    // 0x6cca94: stur            x1, [fp, #-0x30]
    // 0x6cca98: StoreField: r1->field_7 = r0
    //     0x6cca98: stur            w0, [x1, #7]
    // 0x6cca9c: ldur            x0, [fp, #-0x38]
    // 0x6ccaa0: StoreField: r1->field_b = r0
    //     0x6ccaa0: stur            w0, [x1, #0xb]
    // 0x6ccaa4: ldur            x0, [fp, #-0x40]
    // 0x6ccaa8: StoreField: r1->field_f = r0
    //     0x6ccaa8: stur            w0, [x1, #0xf]
    // 0x6ccaac: ldur            x0, [fp, #-0x48]
    // 0x6ccab0: StoreField: r1->field_13 = r0
    //     0x6ccab0: stur            w0, [x1, #0x13]
    // 0x6ccab4: ldur            x0, [fp, #-8]
    // 0x6ccab8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6ccab8: stur            w0, [x1, #0x17]
    // 0x6ccabc: r0 = BarChartData()
    //     0x6ccabc: bl              #0x55bac4  ; AllocateBarChartDataStub -> BarChartData (size=0x70)
    // 0x6ccac0: mov             x1, x0
    // 0x6ccac4: ldur            x2, [fp, #-0x10]
    // 0x6ccac8: ldur            x3, [fp, #-0x18]
    // 0x6ccacc: ldur            x5, [fp, #-0x20]
    // 0x6ccad0: ldur            x6, [fp, #-0x28]
    // 0x6ccad4: ldur            x7, [fp, #-0x30]
    // 0x6ccad8: stur            x0, [fp, #-8]
    // 0x6ccadc: r4 = const [0, 0x6, 0, 0x6, null]
    //     0x6ccadc: ldr             x4, [PP, #0x7698]  ; [pp+0x7698] List(5) [0, 0x6, 0, 0x6, Null]
    // 0x6ccae0: r0 = BarChartData()
    //     0x6ccae0: bl              #0x55b368  ; [package:fl_chart/src/chart/bar_chart/bar_chart_data.dart] BarChartData::BarChartData
    // 0x6ccae4: r0 = BarChart()
    //     0x6ccae4: bl              #0x6ccb28  ; AllocateBarChartStub -> BarChart (size=0x24)
    // 0x6ccae8: ldur            x1, [fp, #-8]
    // 0x6ccaec: ArrayStore: r0[0] = r1  ; List_4
    //     0x6ccaec: stur            w1, [x0, #0x17]
    // 0x6ccaf0: r1 = Instance_FlTransformationConfig
    //     0x6ccaf0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20a78] Obj!FlTransformationConfig@a20c21
    //     0x6ccaf4: ldr             x1, [x1, #0xa78]
    // 0x6ccaf8: StoreField: r0->field_1b = r1
    //     0x6ccaf8: stur            w1, [x0, #0x1b]
    // 0x6ccafc: r1 = Instance__Linear
    //     0x6ccafc: ldr             x1, [PP, #0x5000]  ; [pp+0x5000] Obj!_Linear@a0fe91
    // 0x6ccb00: StoreField: r0->field_b = r1
    //     0x6ccb00: stur            w1, [x0, #0xb]
    // 0x6ccb04: r1 = Instance_Duration
    //     0x6ccb04: add             x1, PP, #0x10, lsl #12  ; [pp+0x10f60] Obj!Duration@a2dcd1
    //     0x6ccb08: ldr             x1, [x1, #0xf60]
    // 0x6ccb0c: StoreField: r0->field_f = r1
    //     0x6ccb0c: stur            w1, [x0, #0xf]
    // 0x6ccb10: LeaveFrame
    //     0x6ccb10: mov             SP, fp
    //     0x6ccb14: ldp             fp, lr, [SP], #0x10
    // 0x6ccb18: ret
    //     0x6ccb18: ret             
    // 0x6ccb1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ccb1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ccb20: b               #0x6cc774
    // 0x6ccb24: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6ccb24: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ buildBarGroups(/* No info */) {
    // ** addr: 0x6ccc28, size: 0x204
    // 0x6ccc28: EnterFrame
    //     0x6ccc28: stp             fp, lr, [SP, #-0x10]!
    //     0x6ccc2c: mov             fp, SP
    // 0x6ccc30: AllocStack(0x40)
    //     0x6ccc30: sub             SP, SP, #0x40
    // 0x6ccc34: SetupParameters(_StepCounterViewState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6ccc34: stur            x1, [fp, #-8]
    //     0x6ccc38: stur            x2, [fp, #-0x10]
    // 0x6ccc3c: CheckStackOverflow
    //     0x6ccc3c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ccc40: cmp             SP, x16
    //     0x6ccc44: b.ls            #0x6cce18
    // 0x6ccc48: r1 = 3
    //     0x6ccc48: mov             x1, #3
    // 0x6ccc4c: r0 = AllocateContext()
    //     0x6ccc4c: bl              #0x927010  ; AllocateContextStub
    // 0x6ccc50: mov             x1, x0
    // 0x6ccc54: ldur            x0, [fp, #-8]
    // 0x6ccc58: stur            x1, [fp, #-0x18]
    // 0x6ccc5c: StoreField: r1->field_f = r0
    //     0x6ccc5c: stur            w0, [x1, #0xf]
    // 0x6ccc60: ldur            x0, [fp, #-0x10]
    // 0x6ccc64: StoreField: r1->field_13 = r0
    //     0x6ccc64: stur            w0, [x1, #0x13]
    // 0x6ccc68: r0 = DateTime()
    //     0x6ccc68: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6ccc6c: mov             x1, x0
    // 0x6ccc70: r0 = false
    //     0x6ccc70: add             x0, NULL, #0x30  ; false
    // 0x6ccc74: stur            x1, [fp, #-8]
    // 0x6ccc78: StoreField: r1->field_7 = r0
    //     0x6ccc78: stur            w0, [x1, #7]
    // 0x6ccc7c: r0 = _getCurrentMicros()
    //     0x6ccc7c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6ccc80: r1 = LoadInt32Instr(r0)
    //     0x6ccc80: sbfx            x1, x0, #1, #0x1f
    //     0x6ccc84: tbz             w0, #0, #0x6ccc8c
    //     0x6ccc88: ldur            x1, [x0, #7]
    // 0x6ccc8c: ldur            x0, [fp, #-8]
    // 0x6ccc90: StoreField: r0->field_b = r1
    //     0x6ccc90: stur            x1, [x0, #0xb]
    // 0x6ccc94: mov             x1, x0
    // 0x6ccc98: r0 = _parts()
    //     0x6ccc98: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6ccc9c: mov             x2, x0
    // 0x6ccca0: LoadField: r0 = r2->field_b
    //     0x6ccca0: ldur            w0, [x2, #0xb]
    // 0x6ccca4: r1 = LoadInt32Instr(r0)
    //     0x6ccca4: sbfx            x1, x0, #1, #0x1f
    // 0x6ccca8: mov             x0, x1
    // 0x6cccac: r1 = 6
    //     0x6cccac: mov             x1, #6
    // 0x6cccb0: cmp             x1, x0
    // 0x6cccb4: b.hs            #0x6cce20
    // 0x6cccb8: LoadField: r0 = r2->field_27
    //     0x6cccb8: ldur            w0, [x2, #0x27]
    // 0x6cccbc: DecompressPointer r0
    //     0x6cccbc: add             x0, x0, HEAP, lsl #32
    // 0x6cccc0: ldur            x2, [fp, #-0x18]
    // 0x6cccc4: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cccc4: stur            w0, [x2, #0x17]
    //     0x6cccc8: tbz             w0, #0, #0x6ccce4
    //     0x6ccccc: ldurb           w16, [x2, #-1]
    //     0x6cccd0: ldurb           w17, [x0, #-1]
    //     0x6cccd4: and             x16, x17, x16, lsr #2
    //     0x6cccd8: tst             x16, HEAP, lsr #32
    //     0x6cccdc: b.eq            #0x6ccce4
    //     0x6ccce0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ccce4: LoadField: r0 = r2->field_13
    //     0x6ccce4: ldur            w0, [x2, #0x13]
    // 0x6ccce8: DecompressPointer r0
    //     0x6ccce8: add             x0, x0, HEAP, lsl #32
    // 0x6cccec: str             x0, [SP]
    // 0x6cccf0: r0 = length()
    //     0x6cccf0: bl              #0x55ace0  ; [dart:collection] MapBase::length
    // 0x6cccf4: ldur            x2, [fp, #-0x18]
    // 0x6cccf8: r1 = Function '<anonymous closure>':.
    //     0x6cccf8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b10] AnonymousClosure: (0x6cce2c), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::buildBarGroups (0x6ccc28)
    //     0x6cccfc: ldr             x1, [x1, #0xb10]
    // 0x6ccd00: stur            x0, [fp, #-8]
    // 0x6ccd04: r0 = AllocateClosure()
    //     0x6ccd04: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ccd08: mov             x3, x0
    // 0x6ccd0c: ldur            x0, [fp, #-8]
    // 0x6ccd10: stur            x3, [fp, #-0x10]
    // 0x6ccd14: r2 = LoadInt32Instr(r0)
    //     0x6ccd14: sbfx            x2, x0, #1, #0x1f
    //     0x6ccd18: tbz             w0, #0, #0x6ccd20
    //     0x6ccd1c: ldur            x2, [x0, #7]
    // 0x6ccd20: r1 = <BarChartGroupData>
    //     0x6ccd20: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b18] TypeArguments: <BarChartGroupData>
    //     0x6ccd24: ldr             x1, [x1, #0xb18]
    // 0x6ccd28: r0 = _GrowableList()
    //     0x6ccd28: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6ccd2c: mov             x1, x0
    // 0x6ccd30: stur            x1, [fp, #-0x18]
    // 0x6ccd34: LoadField: r0 = r1->field_b
    //     0x6ccd34: ldur            w0, [x1, #0xb]
    // 0x6ccd38: r2 = LoadInt32Instr(r0)
    //     0x6ccd38: sbfx            x2, x0, #1, #0x1f
    // 0x6ccd3c: stur            x2, [fp, #-0x28]
    // 0x6ccd40: LoadField: r3 = r1->field_f
    //     0x6ccd40: ldur            w3, [x1, #0xf]
    // 0x6ccd44: DecompressPointer r3
    //     0x6ccd44: add             x3, x3, HEAP, lsl #32
    // 0x6ccd48: stur            x3, [fp, #-8]
    // 0x6ccd4c: r4 = 0
    //     0x6ccd4c: mov             x4, #0
    // 0x6ccd50: stur            x4, [fp, #-0x20]
    // 0x6ccd54: CheckStackOverflow
    //     0x6ccd54: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ccd58: cmp             SP, x16
    //     0x6ccd5c: b.ls            #0x6cce24
    // 0x6ccd60: cmp             x4, x2
    // 0x6ccd64: b.ge            #0x6cce08
    // 0x6ccd68: lsl             x0, x4, #1
    // 0x6ccd6c: ldur            x16, [fp, #-0x10]
    // 0x6ccd70: stp             x0, x16, [SP]
    // 0x6ccd74: ldur            x0, [fp, #-0x10]
    // 0x6ccd78: ClosureCall
    //     0x6ccd78: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6ccd7c: ldur            x2, [x0, #0x1f]
    //     0x6ccd80: blr             x2
    // 0x6ccd84: mov             x3, x0
    // 0x6ccd88: r2 = Null
    //     0x6ccd88: mov             x2, NULL
    // 0x6ccd8c: r1 = Null
    //     0x6ccd8c: mov             x1, NULL
    // 0x6ccd90: stur            x3, [fp, #-0x30]
    // 0x6ccd94: r4 = 60
    //     0x6ccd94: mov             x4, #0x3c
    // 0x6ccd98: branchIfSmi(r0, 0x6ccda4)
    //     0x6ccd98: tbz             w0, #0, #0x6ccda4
    // 0x6ccd9c: r4 = LoadClassIdInstr(r0)
    //     0x6ccd9c: ldur            x4, [x0, #-1]
    //     0x6ccda0: ubfx            x4, x4, #0xc, #0x14
    // 0x6ccda4: cmp             x4, #0xde3
    // 0x6ccda8: b.eq            #0x6ccdc0
    // 0x6ccdac: r8 = BarChartGroupData
    //     0x6ccdac: add             x8, PP, #0x20, lsl #12  ; [pp+0x20b20] Type: BarChartGroupData
    //     0x6ccdb0: ldr             x8, [x8, #0xb20]
    // 0x6ccdb4: r3 = Null
    //     0x6ccdb4: add             x3, PP, #0x20, lsl #12  ; [pp+0x20b28] Null
    //     0x6ccdb8: ldr             x3, [x3, #0xb28]
    // 0x6ccdbc: r0 = BarChartGroupData()
    //     0x6ccdbc: bl              #0x4acdac  ; IsType_BarChartGroupData_Stub
    // 0x6ccdc0: ldur            x1, [fp, #-8]
    // 0x6ccdc4: ldur            x0, [fp, #-0x30]
    // 0x6ccdc8: ldur            x2, [fp, #-0x20]
    // 0x6ccdcc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6ccdcc: add             x25, x1, x2, lsl #2
    //     0x6ccdd0: add             x25, x25, #0xf
    //     0x6ccdd4: str             w0, [x25]
    //     0x6ccdd8: tbz             w0, #0, #0x6ccdf4
    //     0x6ccddc: ldurb           w16, [x1, #-1]
    //     0x6ccde0: ldurb           w17, [x0, #-1]
    //     0x6ccde4: and             x16, x17, x16, lsr #2
    //     0x6ccde8: tst             x16, HEAP, lsr #32
    //     0x6ccdec: b.eq            #0x6ccdf4
    //     0x6ccdf0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ccdf4: add             x4, x2, #1
    // 0x6ccdf8: ldur            x1, [fp, #-0x18]
    // 0x6ccdfc: ldur            x3, [fp, #-8]
    // 0x6cce00: ldur            x2, [fp, #-0x28]
    // 0x6cce04: b               #0x6ccd50
    // 0x6cce08: ldur            x0, [fp, #-0x18]
    // 0x6cce0c: LeaveFrame
    //     0x6cce0c: mov             SP, fp
    //     0x6cce10: ldp             fp, lr, [SP], #0x10
    // 0x6cce14: ret
    //     0x6cce14: ret             
    // 0x6cce18: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cce18: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cce1c: b               #0x6ccc48
    // 0x6cce20: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6cce20: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6cce24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cce24: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cce28: b               #0x6ccd60
  }
  [closure] BarChartGroupData <anonymous closure>(dynamic, int) {
    // ** addr: 0x6cce2c, size: 0x188
    // 0x6cce2c: EnterFrame
    //     0x6cce2c: stp             fp, lr, [SP, #-0x10]!
    //     0x6cce30: mov             fp, SP
    // 0x6cce34: AllocStack(0x38)
    //     0x6cce34: sub             SP, SP, #0x38
    // 0x6cce38: SetupParameters([dynamic _ /* r0 */])
    //     0x6cce38: ldr             x0, [fp, #0x18]
    //     0x6cce3c: ldur            w2, [x0, #0x17]
    //     0x6cce40: add             x2, x2, HEAP, lsl #32
    //     0x6cce44: stur            x2, [fp, #-8]
    // 0x6cce48: CheckStackOverflow
    //     0x6cce48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cce4c: cmp             SP, x16
    //     0x6cce50: b.ls            #0x6ccfa8
    // 0x6cce54: LoadField: r1 = r2->field_13
    //     0x6cce54: ldur            w1, [x2, #0x13]
    // 0x6cce58: DecompressPointer r1
    //     0x6cce58: add             x1, x1, HEAP, lsl #32
    // 0x6cce5c: r0 = value()
    //     0x6cce5c: bl              #0x8c02e0  ; [package:get/get_rx/src/rx_types/rx_types.dart] RxMap::value
    // 0x6cce60: stur            x0, [fp, #-0x18]
    // 0x6cce64: LoadField: r2 = r0->field_7
    //     0x6cce64: ldur            w2, [x0, #7]
    // 0x6cce68: DecompressPointer r2
    //     0x6cce68: add             x2, x2, HEAP, lsl #32
    // 0x6cce6c: mov             x1, x2
    // 0x6cce70: stur            x2, [fp, #-0x10]
    // 0x6cce74: r0 = _CompactKeysIterable()
    //     0x6cce74: bl              #0x3f3f8c  ; Allocate_CompactKeysIterableStub -> _CompactKeysIterable<X0> (size=0x10)
    // 0x6cce78: mov             x1, x0
    // 0x6cce7c: ldur            x0, [fp, #-0x18]
    // 0x6cce80: StoreField: r1->field_b = r0
    //     0x6cce80: stur            w0, [x1, #0xb]
    // 0x6cce84: mov             x2, x1
    // 0x6cce88: ldur            x1, [fp, #-0x10]
    // 0x6cce8c: r0 = _GrowableList._ofEfficientLengthIterable()
    //     0x6cce8c: bl              #0x3c786c  ; [dart:core] _GrowableList::_GrowableList._ofEfficientLengthIterable
    // 0x6cce90: mov             x2, x0
    // 0x6cce94: LoadField: r0 = r2->field_b
    //     0x6cce94: ldur            w0, [x2, #0xb]
    // 0x6cce98: ldr             x1, [fp, #0x10]
    // 0x6cce9c: r3 = LoadInt32Instr(r1)
    //     0x6cce9c: sbfx            x3, x1, #1, #0x1f
    //     0x6ccea0: tbz             w1, #0, #0x6ccea8
    //     0x6ccea4: ldur            x3, [x1, #7]
    // 0x6ccea8: stur            x3, [fp, #-0x20]
    // 0x6cceac: r1 = LoadInt32Instr(r0)
    //     0x6cceac: sbfx            x1, x0, #1, #0x1f
    // 0x6cceb0: mov             x0, x1
    // 0x6cceb4: mov             x1, x3
    // 0x6cceb8: cmp             x1, x0
    // 0x6ccebc: b.hs            #0x6ccfb0
    // 0x6ccec0: LoadField: r0 = r2->field_f
    //     0x6ccec0: ldur            w0, [x2, #0xf]
    // 0x6ccec4: DecompressPointer r0
    //     0x6ccec4: add             x0, x0, HEAP, lsl #32
    // 0x6ccec8: ArrayLoad: r4 = r0[r3]  ; Unknown_4
    //     0x6ccec8: add             x16, x0, x3, lsl #2
    //     0x6ccecc: ldur            w4, [x16, #0xf]
    // 0x6cced0: DecompressPointer r4
    //     0x6cced0: add             x4, x4, HEAP, lsl #32
    // 0x6cced4: ldur            x0, [fp, #-8]
    // 0x6cced8: stur            x4, [fp, #-0x10]
    // 0x6ccedc: LoadField: r1 = r0->field_13
    //     0x6ccedc: ldur            w1, [x0, #0x13]
    // 0x6ccee0: DecompressPointer r1
    //     0x6ccee0: add             x1, x1, HEAP, lsl #32
    // 0x6ccee4: mov             x2, x4
    // 0x6ccee8: r0 = []()
    //     0x6ccee8: bl              #0x872884  ; [package:get/get_rx/src/rx_types/rx_types.dart] RxMap::[]
    // 0x6cceec: cmp             w0, NULL
    // 0x6ccef0: b.ne            #0x6ccefc
    // 0x6ccef4: r4 = 100
    //     0x6ccef4: mov             x4, #0x64
    // 0x6ccef8: b               #0x6ccf0c
    // 0x6ccefc: r1 = LoadInt32Instr(r0)
    //     0x6ccefc: sbfx            x1, x0, #1, #0x1f
    //     0x6ccf00: tbz             w0, #0, #0x6ccf08
    //     0x6ccf04: ldur            x1, [x0, #7]
    // 0x6ccf08: mov             x4, x1
    // 0x6ccf0c: ldur            x3, [fp, #-8]
    // 0x6ccf10: ldur            x2, [fp, #-0x10]
    // 0x6ccf14: LoadField: r5 = r3->field_f
    //     0x6ccf14: ldur            w5, [x3, #0xf]
    // 0x6ccf18: DecompressPointer r5
    //     0x6ccf18: add             x5, x5, HEAP, lsl #32
    // 0x6ccf1c: stur            x5, [fp, #-0x18]
    // 0x6ccf20: r0 = BoxInt64Instr(r4)
    //     0x6ccf20: sbfiz           x0, x4, #1, #0x1f
    //     0x6ccf24: cmp             x4, x0, asr #1
    //     0x6ccf28: b.eq            #0x6ccf34
    //     0x6ccf2c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6ccf30: stur            x4, [x0, #7]
    // 0x6ccf34: stp             x0, NULL, [SP]
    // 0x6ccf38: r0 = _Double.fromInteger()
    //     0x6ccf38: bl              #0x42a4d4  ; [dart:core] _Double::_Double.fromInteger
    // 0x6ccf3c: mov             x3, x0
    // 0x6ccf40: ldur            x0, [fp, #-8]
    // 0x6ccf44: stur            x3, [fp, #-0x28]
    // 0x6ccf48: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6ccf48: ldur            w2, [x0, #0x17]
    // 0x6ccf4c: DecompressPointer r2
    //     0x6ccf4c: add             x2, x2, HEAP, lsl #32
    // 0x6ccf50: r1 = _ConstMap len:7
    //     0x6ccf50: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b38] Map<int, String>(7)
    //     0x6ccf54: ldr             x1, [x1, #0xb38]
    // 0x6ccf58: r0 = []()
    //     0x6ccf58: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6ccf5c: mov             x1, x0
    // 0x6ccf60: ldur            x0, [fp, #-0x10]
    // 0x6ccf64: r2 = LoadClassIdInstr(r0)
    //     0x6ccf64: ldur            x2, [x0, #-1]
    //     0x6ccf68: ubfx            x2, x2, #0xc, #0x14
    // 0x6ccf6c: stp             x1, x0, [SP]
    // 0x6ccf70: mov             x0, x2
    // 0x6ccf74: mov             lr, x0
    // 0x6ccf78: ldr             lr, [x21, lr, lsl #3]
    // 0x6ccf7c: blr             lr
    // 0x6ccf80: mov             x1, x0
    // 0x6ccf84: ldur            x0, [fp, #-0x28]
    // 0x6ccf88: LoadField: d0 = r0->field_7
    //     0x6ccf88: ldur            d0, [x0, #7]
    // 0x6ccf8c: mov             x3, x1
    // 0x6ccf90: ldur            x1, [fp, #-0x18]
    // 0x6ccf94: ldur            x2, [fp, #-0x20]
    // 0x6ccf98: r0 = makeGroup()
    //     0x6ccf98: bl              #0x6ccfb4  ; [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::makeGroup
    // 0x6ccf9c: LeaveFrame
    //     0x6ccf9c: mov             SP, fp
    //     0x6ccfa0: ldp             fp, lr, [SP], #0x10
    // 0x6ccfa4: ret
    //     0x6ccfa4: ret             
    // 0x6ccfa8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ccfa8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ccfac: b               #0x6cce54
    // 0x6ccfb0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ccfb0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ makeGroup(/* No info */) {
    // ** addr: 0x6ccfb4, size: 0x19c
    // 0x6ccfb4: EnterFrame
    //     0x6ccfb4: stp             fp, lr, [SP, #-0x10]!
    //     0x6ccfb8: mov             fp, SP
    // 0x6ccfbc: AllocStack(0x48)
    //     0x6ccfbc: sub             SP, SP, #0x48
    // 0x6ccfc0: SetupParameters(_StepCounterViewState this /* r1 => r2, fp-0x8 */, dynamic _ /* r2 => r0, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */, dynamic _ /* d0 => d0, fp-0x30 */)
    //     0x6ccfc0: mov             x0, x2
    //     0x6ccfc4: stur            x2, [fp, #-0x10]
    //     0x6ccfc8: mov             x2, x1
    //     0x6ccfcc: stur            x1, [fp, #-8]
    //     0x6ccfd0: stur            x3, [fp, #-0x18]
    //     0x6ccfd4: stur            d0, [fp, #-0x30]
    // 0x6ccfd8: CheckStackOverflow
    //     0x6ccfd8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ccfdc: cmp             SP, x16
    //     0x6ccfe0: b.ls            #0x6cd140
    // 0x6ccfe4: r1 = 14
    //     0x6ccfe4: mov             x1, #0xe
    // 0x6ccfe8: r0 = SizeExtension.w()
    //     0x6ccfe8: bl              #0x6cc0fc  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.w
    // 0x6ccfec: r1 = 6
    //     0x6ccfec: mov             x1, #6
    // 0x6ccff0: stur            d0, [fp, #-0x38]
    // 0x6ccff4: r0 = SizeExtension.r()
    //     0x6ccff4: bl              #0x6cbf88  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.r
    // 0x6ccff8: stur            d0, [fp, #-0x40]
    // 0x6ccffc: r0 = Radius()
    //     0x6ccffc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6cd000: ldur            d0, [fp, #-0x40]
    // 0x6cd004: stur            x0, [fp, #-0x20]
    // 0x6cd008: StoreField: r0->field_7 = d0
    //     0x6cd008: stur            d0, [x0, #7]
    // 0x6cd00c: StoreField: r0->field_f = d0
    //     0x6cd00c: stur            d0, [x0, #0xf]
    // 0x6cd010: r0 = BorderRadius()
    //     0x6cd010: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6cd014: mov             x2, x0
    // 0x6cd018: ldur            x0, [fp, #-0x20]
    // 0x6cd01c: stur            x2, [fp, #-0x28]
    // 0x6cd020: StoreField: r2->field_7 = r0
    //     0x6cd020: stur            w0, [x2, #7]
    // 0x6cd024: StoreField: r2->field_b = r0
    //     0x6cd024: stur            w0, [x2, #0xb]
    // 0x6cd028: StoreField: r2->field_f = r0
    //     0x6cd028: stur            w0, [x2, #0xf]
    // 0x6cd02c: StoreField: r2->field_13 = r0
    //     0x6cd02c: stur            w0, [x2, #0x13]
    // 0x6cd030: ldur            x0, [fp, #-0x18]
    // 0x6cd034: tbnz            w0, #4, #0x6cd060
    // 0x6cd038: ldur            x0, [fp, #-8]
    // 0x6cd03c: LoadField: r1 = r0->field_f
    //     0x6cd03c: ldur            w1, [x0, #0xf]
    // 0x6cd040: DecompressPointer r1
    //     0x6cd040: add             x1, x1, HEAP, lsl #32
    // 0x6cd044: cmp             w1, NULL
    // 0x6cd048: b.eq            #0x6cd148
    // 0x6cd04c: r0 = of()
    //     0x6cd04c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6cd050: LoadField: r1 = r0->field_5b
    //     0x6cd050: ldur            w1, [x0, #0x5b]
    // 0x6cd054: DecompressPointer r1
    //     0x6cd054: add             x1, x1, HEAP, lsl #32
    // 0x6cd058: mov             x3, x1
    // 0x6cd05c: b               #0x6cd0ac
    // 0x6cd060: ldur            x0, [fp, #-8]
    // 0x6cd064: LoadField: r1 = r0->field_f
    //     0x6cd064: ldur            w1, [x0, #0xf]
    // 0x6cd068: DecompressPointer r1
    //     0x6cd068: add             x1, x1, HEAP, lsl #32
    // 0x6cd06c: cmp             w1, NULL
    // 0x6cd070: b.eq            #0x6cd14c
    // 0x6cd074: r0 = of()
    //     0x6cd074: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6cd078: LoadField: r1 = r0->field_5b
    //     0x6cd078: ldur            w1, [x0, #0x5b]
    // 0x6cd07c: DecompressPointer r1
    //     0x6cd07c: add             x1, x1, HEAP, lsl #32
    // 0x6cd080: r0 = LoadClassIdInstr(r1)
    //     0x6cd080: ldur            x0, [x1, #-1]
    //     0x6cd084: ubfx            x0, x0, #0xc, #0x14
    // 0x6cd088: r16 = 0.250000
    //     0x6cd088: add             x16, PP, #0xc, lsl #12  ; [pp+0xca20] 0.25
    //     0x6cd08c: ldr             x16, [x16, #0xa20]
    // 0x6cd090: str             x16, [SP]
    // 0x6cd094: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6cd094: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6cd098: ldr             x4, [x4, #0x198]
    // 0x6cd09c: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x6cd09c: sub             lr, x0, #0xfe8
    //     0x6cd0a0: ldr             lr, [x21, lr, lsl #3]
    //     0x6cd0a4: blr             lr
    // 0x6cd0a8: mov             x3, x0
    // 0x6cd0ac: stur            x3, [fp, #-8]
    // 0x6cd0b0: r0 = BarChartRodData()
    //     0x6cd0b0: bl              #0x55e634  ; AllocateBarChartRodDataStub -> BarChartRodData (size=0x40)
    // 0x6cd0b4: mov             x1, x0
    // 0x6cd0b8: ldur            x2, [fp, #-0x28]
    // 0x6cd0bc: ldur            x3, [fp, #-8]
    // 0x6cd0c0: ldur            d0, [fp, #-0x30]
    // 0x6cd0c4: ldur            d1, [fp, #-0x38]
    // 0x6cd0c8: stur            x0, [fp, #-8]
    // 0x6cd0cc: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6cd0cc: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6cd0d0: r0 = BarChartRodData()
    //     0x6cd0d0: bl              #0x55dea4  ; [package:fl_chart/src/chart/bar_chart/bar_chart_data.dart] BarChartRodData::BarChartRodData
    // 0x6cd0d4: r1 = Null
    //     0x6cd0d4: mov             x1, NULL
    // 0x6cd0d8: r2 = 2
    //     0x6cd0d8: mov             x2, #2
    // 0x6cd0dc: r0 = AllocateArray()
    //     0x6cd0dc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cd0e0: mov             x2, x0
    // 0x6cd0e4: ldur            x0, [fp, #-8]
    // 0x6cd0e8: stur            x2, [fp, #-0x18]
    // 0x6cd0ec: StoreField: r2->field_f = r0
    //     0x6cd0ec: stur            w0, [x2, #0xf]
    // 0x6cd0f0: r1 = <BarChartRodData>
    //     0x6cd0f0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b40] TypeArguments: <BarChartRodData>
    //     0x6cd0f4: ldr             x1, [x1, #0xb40]
    // 0x6cd0f8: r0 = AllocateGrowableArray()
    //     0x6cd0f8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cd0fc: mov             x1, x0
    // 0x6cd100: ldur            x0, [fp, #-0x18]
    // 0x6cd104: stur            x1, [fp, #-8]
    // 0x6cd108: StoreField: r1->field_f = r0
    //     0x6cd108: stur            w0, [x1, #0xf]
    // 0x6cd10c: r0 = 2
    //     0x6cd10c: mov             x0, #2
    // 0x6cd110: StoreField: r1->field_b = r0
    //     0x6cd110: stur            w0, [x1, #0xb]
    // 0x6cd114: r0 = BarChartGroupData()
    //     0x6cd114: bl              #0x55d8d4  ; AllocateBarChartGroupDataStub -> BarChartGroupData (size=0x24)
    // 0x6cd118: mov             x1, x0
    // 0x6cd11c: ldur            x2, [fp, #-8]
    // 0x6cd120: ldur            x3, [fp, #-0x10]
    // 0x6cd124: stur            x0, [fp, #-8]
    // 0x6cd128: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6cd128: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6cd12c: r0 = BarChartGroupData()
    //     0x6cd12c: bl              #0x55d730  ; [package:fl_chart/src/chart/bar_chart/bar_chart_data.dart] BarChartGroupData::BarChartGroupData
    // 0x6cd130: ldur            x0, [fp, #-8]
    // 0x6cd134: LeaveFrame
    //     0x6cd134: mov             SP, fp
    //     0x6cd138: ldp             fp, lr, [SP], #0x10
    // 0x6cd13c: ret
    //     0x6cd13c: ret             
    // 0x6cd140: r0 = StackOverflowSharedWithFPURegs()
    //     0x6cd140: bl              #0x928228  ; StackOverflowSharedWithFPURegsStub
    // 0x6cd144: b               #0x6ccfe4
    // 0x6cd148: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cd148: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6cd14c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cd14c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Text <anonymous closure>(dynamic, double, TitleMeta) {
    // ** addr: 0x6cd15c, size: 0x150
    // 0x6cd15c: EnterFrame
    //     0x6cd15c: stp             fp, lr, [SP, #-0x10]!
    //     0x6cd160: mov             fp, SP
    // 0x6cd164: AllocStack(0x10)
    //     0x6cd164: sub             SP, SP, #0x10
    // 0x6cd168: SetupParameters([dynamic _ /* r0 */])
    //     0x6cd168: ldr             x0, [fp, #0x20]
    //     0x6cd16c: ldur            w1, [x0, #0x17]
    //     0x6cd170: add             x1, x1, HEAP, lsl #32
    // 0x6cd174: CheckStackOverflow
    //     0x6cd174: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cd178: cmp             SP, x16
    //     0x6cd17c: b.ls            #0x6cd278
    // 0x6cd180: LoadField: r0 = r1->field_b
    //     0x6cd180: ldur            w0, [x1, #0xb]
    // 0x6cd184: DecompressPointer r0
    //     0x6cd184: add             x0, x0, HEAP, lsl #32
    // 0x6cd188: LoadField: r1 = r0->field_f
    //     0x6cd188: ldur            w1, [x0, #0xf]
    // 0x6cd18c: DecompressPointer r1
    //     0x6cd18c: add             x1, x1, HEAP, lsl #32
    // 0x6cd190: LoadField: r0 = r1->field_13
    //     0x6cd190: ldur            w0, [x1, #0x13]
    // 0x6cd194: DecompressPointer r0
    //     0x6cd194: add             x0, x0, HEAP, lsl #32
    // 0x6cd198: cmp             w0, NULL
    // 0x6cd19c: b.eq            #0x6cd280
    // 0x6cd1a0: LoadField: r1 = r0->field_37
    //     0x6cd1a0: ldur            w1, [x0, #0x37]
    // 0x6cd1a4: DecompressPointer r1
    //     0x6cd1a4: add             x1, x1, HEAP, lsl #32
    // 0x6cd1a8: r0 = value()
    //     0x6cd1a8: bl              #0x8c02e0  ; [package:get/get_rx/src/rx_types/rx_types.dart] RxMap::value
    // 0x6cd1ac: stur            x0, [fp, #-0x10]
    // 0x6cd1b0: LoadField: r2 = r0->field_7
    //     0x6cd1b0: ldur            w2, [x0, #7]
    // 0x6cd1b4: DecompressPointer r2
    //     0x6cd1b4: add             x2, x2, HEAP, lsl #32
    // 0x6cd1b8: mov             x1, x2
    // 0x6cd1bc: stur            x2, [fp, #-8]
    // 0x6cd1c0: r0 = _CompactKeysIterable()
    //     0x6cd1c0: bl              #0x3f3f8c  ; Allocate_CompactKeysIterableStub -> _CompactKeysIterable<X0> (size=0x10)
    // 0x6cd1c4: mov             x1, x0
    // 0x6cd1c8: ldur            x0, [fp, #-0x10]
    // 0x6cd1cc: StoreField: r1->field_b = r0
    //     0x6cd1cc: stur            w0, [x1, #0xb]
    // 0x6cd1d0: mov             x2, x1
    // 0x6cd1d4: ldur            x1, [fp, #-8]
    // 0x6cd1d8: r0 = _GrowableList._ofEfficientLengthIterable()
    //     0x6cd1d8: bl              #0x3c786c  ; [dart:core] _GrowableList::_GrowableList._ofEfficientLengthIterable
    // 0x6cd1dc: mov             x2, x0
    // 0x6cd1e0: ldr             x0, [fp, #0x18]
    // 0x6cd1e4: LoadField: d0 = r0->field_7
    //     0x6cd1e4: ldur            d0, [x0, #7]
    // 0x6cd1e8: fcmp            d0, d0
    // 0x6cd1ec: b.vs            #0x6cd284
    // 0x6cd1f0: fcvtzs          x0, d0
    // 0x6cd1f4: asr             x16, x0, #0x1e
    // 0x6cd1f8: cmp             x16, x0, asr #63
    // 0x6cd1fc: b.ne            #0x6cd284
    // 0x6cd200: lsl             x0, x0, #1
    // 0x6cd204: r3 = LoadInt32Instr(r0)
    //     0x6cd204: sbfx            x3, x0, #1, #0x1f
    //     0x6cd208: tbz             w0, #0, #0x6cd210
    //     0x6cd20c: ldur            x3, [x0, #7]
    // 0x6cd210: tbnz            x3, #0x3f, #0x6cd264
    // 0x6cd214: LoadField: r0 = r2->field_b
    //     0x6cd214: ldur            w0, [x2, #0xb]
    // 0x6cd218: r1 = LoadInt32Instr(r0)
    //     0x6cd218: sbfx            x1, x0, #1, #0x1f
    // 0x6cd21c: cmp             x3, x1
    // 0x6cd220: b.ge            #0x6cd264
    // 0x6cd224: mov             x0, x1
    // 0x6cd228: mov             x1, x3
    // 0x6cd22c: cmp             x1, x0
    // 0x6cd230: b.hs            #0x6cd2a8
    // 0x6cd234: LoadField: r0 = r2->field_f
    //     0x6cd234: ldur            w0, [x2, #0xf]
    // 0x6cd238: DecompressPointer r0
    //     0x6cd238: add             x0, x0, HEAP, lsl #32
    // 0x6cd23c: ArrayLoad: r1 = r0[r3]  ; Unknown_4
    //     0x6cd23c: add             x16, x0, x3, lsl #2
    //     0x6cd240: ldur            w1, [x16, #0xf]
    // 0x6cd244: DecompressPointer r1
    //     0x6cd244: add             x1, x1, HEAP, lsl #32
    // 0x6cd248: stur            x1, [fp, #-8]
    // 0x6cd24c: r0 = Text()
    //     0x6cd24c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cd250: ldur            x1, [fp, #-8]
    // 0x6cd254: StoreField: r0->field_b = r1
    //     0x6cd254: stur            w1, [x0, #0xb]
    // 0x6cd258: LeaveFrame
    //     0x6cd258: mov             SP, fp
    //     0x6cd25c: ldp             fp, lr, [SP], #0x10
    // 0x6cd260: ret
    //     0x6cd260: ret             
    // 0x6cd264: r0 = Instance_Text
    //     0x6cd264: add             x0, PP, #0x20, lsl #12  ; [pp+0x20a80] Obj!Text@a1af51
    //     0x6cd268: ldr             x0, [x0, #0xa80]
    // 0x6cd26c: LeaveFrame
    //     0x6cd26c: mov             SP, fp
    //     0x6cd270: ldp             fp, lr, [SP], #0x10
    // 0x6cd274: ret
    //     0x6cd274: ret             
    // 0x6cd278: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cd278: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cd27c: b               #0x6cd180
    // 0x6cd280: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cd280: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6cd284: SaveReg d0
    //     0x6cd284: str             q0, [SP, #-0x10]!
    // 0x6cd288: SaveReg r2
    //     0x6cd288: str             x2, [SP, #-8]!
    // 0x6cd28c: r0 = 76
    //     0x6cd28c: mov             x0, #0x4c
    // 0x6cd290: r30 = DoubleToIntegerStub
    //     0x6cd290: ldr             lr, [PP, #0x1f38]  ; [pp+0x1f38] Stub: DoubleToInteger (0x3c184c)
    // 0x6cd294: LoadField: r30 = r30->field_7
    //     0x6cd294: ldur            lr, [lr, #7]
    // 0x6cd298: blr             lr
    // 0x6cd29c: RestoreReg r2
    //     0x6cd29c: ldr             x2, [SP], #8
    // 0x6cd2a0: RestoreReg d0
    //     0x6cd2a0: ldr             q0, [SP], #0x10
    // 0x6cd2a4: b               #0x6cd204
    // 0x6cd2a8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6cd2a8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] BarTooltipItem <anonymous closure>(dynamic, BarChartGroupData, int, BarChartRodData, int) {
    // ** addr: 0x6cd354, size: 0xa0
    // 0x6cd354: EnterFrame
    //     0x6cd354: stp             fp, lr, [SP, #-0x10]!
    //     0x6cd358: mov             fp, SP
    // 0x6cd35c: AllocStack(0x10)
    //     0x6cd35c: sub             SP, SP, #0x10
    // 0x6cd360: CheckStackOverflow
    //     0x6cd360: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cd364: cmp             SP, x16
    //     0x6cd368: b.ls            #0x6cd3d0
    // 0x6cd36c: ldr             x0, [fp, #0x18]
    // 0x6cd370: LoadField: d0 = r0->field_f
    //     0x6cd370: ldur            d0, [x0, #0xf]
    // 0x6cd374: fcmp            d0, d0
    // 0x6cd378: b.vs            #0x6cd3d8
    // 0x6cd37c: fcvtzs          x0, d0
    // 0x6cd380: asr             x16, x0, #0x1e
    // 0x6cd384: cmp             x16, x0, asr #63
    // 0x6cd388: b.ne            #0x6cd3d8
    // 0x6cd38c: lsl             x0, x0, #1
    // 0x6cd390: str             x0, [SP]
    // 0x6cd394: r0 = _interpolateSingle()
    //     0x6cd394: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x6cd398: stur            x0, [fp, #-8]
    // 0x6cd39c: r0 = BarTooltipItem()
    //     0x6cd39c: bl              #0x6cd3f4  ; AllocateBarTooltipItemStub -> BarTooltipItem (size=0x1c)
    // 0x6cd3a0: ldur            x1, [fp, #-8]
    // 0x6cd3a4: StoreField: r0->field_7 = r1
    //     0x6cd3a4: stur            w1, [x0, #7]
    // 0x6cd3a8: r1 = Instance_TextStyle
    //     0x6cd3a8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ed8] Obj!TextStyle@a17441
    //     0x6cd3ac: ldr             x1, [x1, #0xed8]
    // 0x6cd3b0: StoreField: r0->field_b = r1
    //     0x6cd3b0: stur            w1, [x0, #0xb]
    // 0x6cd3b4: r1 = Instance_TextAlign
    //     0x6cd3b4: ldr             x1, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x6cd3b8: StoreField: r0->field_f = r1
    //     0x6cd3b8: stur            w1, [x0, #0xf]
    // 0x6cd3bc: r1 = Instance_TextDirection
    //     0x6cd3bc: ldr             x1, [PP, #0x2770]  ; [pp+0x2770] Obj!TextDirection@a2cd91
    // 0x6cd3c0: StoreField: r0->field_13 = r1
    //     0x6cd3c0: stur            w1, [x0, #0x13]
    // 0x6cd3c4: LeaveFrame
    //     0x6cd3c4: mov             SP, fp
    //     0x6cd3c8: ldp             fp, lr, [SP], #0x10
    // 0x6cd3cc: ret
    //     0x6cd3cc: ret             
    // 0x6cd3d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cd3d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cd3d4: b               #0x6cd36c
    // 0x6cd3d8: SaveReg d0
    //     0x6cd3d8: str             q0, [SP, #-0x10]!
    // 0x6cd3dc: r0 = 76
    //     0x6cd3dc: mov             x0, #0x4c
    // 0x6cd3e0: r30 = DoubleToIntegerStub
    //     0x6cd3e0: ldr             lr, [PP, #0x1f38]  ; [pp+0x1f38] Stub: DoubleToInteger (0x3c184c)
    // 0x6cd3e4: LoadField: r30 = r30->field_7
    //     0x6cd3e4: ldur            lr, [lr, #7]
    // 0x6cd3e8: blr             lr
    // 0x6cd3ec: RestoreReg d0
    //     0x6cd3ec: ldr             q0, [SP], #0x10
    // 0x6cd3f0: b               #0x6cd390
  }
  [closure] RichText <anonymous closure>(dynamic) {
    // ** addr: 0x6cd400, size: 0x334
    // 0x6cd400: EnterFrame
    //     0x6cd400: stp             fp, lr, [SP, #-0x10]!
    //     0x6cd404: mov             fp, SP
    // 0x6cd408: AllocStack(0x48)
    //     0x6cd408: sub             SP, SP, #0x48
    // 0x6cd40c: SetupParameters([dynamic _ /* r0 */])
    //     0x6cd40c: ldr             x0, [fp, #0x10]
    //     0x6cd410: ldur            w1, [x0, #0x17]
    //     0x6cd414: add             x1, x1, HEAP, lsl #32
    // 0x6cd418: CheckStackOverflow
    //     0x6cd418: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cd41c: cmp             SP, x16
    //     0x6cd420: b.ls            #0x6cd6d4
    // 0x6cd424: LoadField: r0 = r1->field_b
    //     0x6cd424: ldur            w0, [x1, #0xb]
    // 0x6cd428: DecompressPointer r0
    //     0x6cd428: add             x0, x0, HEAP, lsl #32
    // 0x6cd42c: LoadField: r1 = r0->field_f
    //     0x6cd42c: ldur            w1, [x0, #0xf]
    // 0x6cd430: DecompressPointer r1
    //     0x6cd430: add             x1, x1, HEAP, lsl #32
    // 0x6cd434: LoadField: r0 = r1->field_13
    //     0x6cd434: ldur            w0, [x1, #0x13]
    // 0x6cd438: DecompressPointer r0
    //     0x6cd438: add             x0, x0, HEAP, lsl #32
    // 0x6cd43c: cmp             w0, NULL
    // 0x6cd440: b.eq            #0x6cd6dc
    // 0x6cd444: LoadField: r4 = r0->field_37
    //     0x6cd444: ldur            w4, [x0, #0x37]
    // 0x6cd448: DecompressPointer r4
    //     0x6cd448: add             x4, x4, HEAP, lsl #32
    // 0x6cd44c: stur            x4, [fp, #-8]
    // 0x6cd450: LoadField: r2 = r4->field_7
    //     0x6cd450: ldur            w2, [x4, #7]
    // 0x6cd454: DecompressPointer r2
    //     0x6cd454: add             x2, x2, HEAP, lsl #32
    // 0x6cd458: r1 = Null
    //     0x6cd458: mov             x1, NULL
    // 0x6cd45c: r3 = <X1, X0, X1>
    //     0x6cd45c: add             x3, PP, #0xe, lsl #12  ; [pp+0xe4c8] TypeArguments: <X1, X0, X1>
    //     0x6cd460: ldr             x3, [x3, #0x4c8]
    // 0x6cd464: r0 = Null
    //     0x6cd464: mov             x0, NULL
    // 0x6cd468: cmp             x2, x0
    // 0x6cd46c: b.eq            #0x6cd47c
    // 0x6cd470: r30 = InstantiateTypeArgumentsStub
    //     0x6cd470: ldr             lr, [PP, #0x858]  ; [pp+0x858] Stub: InstantiateTypeArguments (0x3b0f4c)
    // 0x6cd474: LoadField: r30 = r30->field_7
    //     0x6cd474: ldur            lr, [lr, #7]
    // 0x6cd478: blr             lr
    // 0x6cd47c: mov             x1, x0
    // 0x6cd480: stur            x0, [fp, #-0x10]
    // 0x6cd484: r0 = _MapBaseValueIterable()
    //     0x6cd484: bl              #0x6cdb7c  ; Allocate_MapBaseValueIterableStub -> _MapBaseValueIterable<C1X0, C1X1> (size=0x10)
    // 0x6cd488: mov             x1, x0
    // 0x6cd48c: ldur            x0, [fp, #-8]
    // 0x6cd490: StoreField: r1->field_b = r0
    //     0x6cd490: stur            w0, [x1, #0xb]
    // 0x6cd494: mov             x2, x1
    // 0x6cd498: ldur            x1, [fp, #-0x10]
    // 0x6cd49c: r0 = _GrowableList._ofEfficientLengthIterable()
    //     0x6cd49c: bl              #0x3c786c  ; [dart:core] _GrowableList::_GrowableList._ofEfficientLengthIterable
    // 0x6cd4a0: r1 = Function '<anonymous closure>':.
    //     0x6cd4a0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20bc8] AnonymousClosure: (0x6cdb88), in [package:umrem_demo/features/adimsayar/step_counter_view.dart] _StepCounterViewState::build (0x6c97e4)
    //     0x6cd4a4: ldr             x1, [x1, #0xbc8]
    // 0x6cd4a8: r2 = Null
    //     0x6cd4a8: mov             x2, NULL
    // 0x6cd4ac: stur            x0, [fp, #-8]
    // 0x6cd4b0: r0 = AllocateClosure()
    //     0x6cd4b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6cd4b4: r16 = <int>
    //     0x6cd4b4: ldr             x16, [PP, #0xc20]  ; [pp+0xc20] TypeArguments: <int>
    // 0x6cd4b8: ldur            lr, [fp, #-8]
    // 0x6cd4bc: stp             lr, x16, [SP, #0x10]
    // 0x6cd4c0: stp             x0, xzr, [SP]
    // 0x6cd4c4: r4 = const [0x1, 0x3, 0x3, 0x3, null]
    //     0x6cd4c4: ldr             x4, [PP, #0x13a0]  ; [pp+0x13a0] List(5) [0x1, 0x3, 0x3, 0x3, Null]
    // 0x6cd4c8: r0 = fold()
    //     0x6cd4c8: bl              #0x438aa0  ; [dart:collection] ListBase::fold
    // 0x6cd4cc: r1 = LoadInt32Instr(r0)
    //     0x6cd4cc: sbfx            x1, x0, #1, #0x1f
    //     0x6cd4d0: tbz             w0, #0, #0x6cd4d8
    //     0x6cd4d4: ldur            x1, [x0, #7]
    // 0x6cd4d8: scvtf           d0, x1
    // 0x6cd4dc: d1 = 7.000000
    //     0x6cd4dc: fmov            d1, #7.00000000
    // 0x6cd4e0: fdiv            d2, d0, d1
    // 0x6cd4e4: fcmp            d2, d2
    // 0x6cd4e8: b.vs            #0x6cd6e0
    // 0x6cd4ec: fcvtms          x0, d2
    // 0x6cd4f0: asr             x16, x0, #0x1e
    // 0x6cd4f4: cmp             x16, x0, asr #63
    // 0x6cd4f8: b.ne            #0x6cd6e0
    // 0x6cd4fc: lsl             x0, x0, #1
    // 0x6cd500: str             x0, [SP]
    // 0x6cd504: r0 = _interpolateSingle()
    //     0x6cd504: bl              #0x3caa44  ; [dart:core] _StringBase::_interpolateSingle
    // 0x6cd508: r1 = 24
    //     0x6cd508: mov             x1, #0x18
    // 0x6cd50c: stur            x0, [fp, #-8]
    // 0x6cd510: r0 = SizeExtension.sp()
    //     0x6cd510: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cd514: stur            d0, [fp, #-0x28]
    // 0x6cd518: r0 = TextStyle()
    //     0x6cd518: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cd51c: mov             x1, x0
    // 0x6cd520: r0 = true
    //     0x6cd520: add             x0, NULL, #0x20  ; true
    // 0x6cd524: stur            x1, [fp, #-0x10]
    // 0x6cd528: StoreField: r1->field_7 = r0
    //     0x6cd528: stur            w0, [x1, #7]
    // 0x6cd52c: r2 = Instance_Color
    //     0x6cd52c: ldr             x2, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6cd530: StoreField: r1->field_b = r2
    //     0x6cd530: stur            w2, [x1, #0xb]
    // 0x6cd534: ldur            d0, [fp, #-0x28]
    // 0x6cd538: r2 = inline_Allocate_Double()
    //     0x6cd538: ldp             x2, x3, [THR, #0x60]  ; THR::top
    //     0x6cd53c: add             x2, x2, #0x10
    //     0x6cd540: cmp             x3, x2
    //     0x6cd544: b.ls            #0x6cd700
    //     0x6cd548: str             x2, [THR, #0x60]  ; THR::top
    //     0x6cd54c: sub             x2, x2, #0xf
    //     0x6cd550: mov             x3, #0xe15c
    //     0x6cd554: movk            x3, #3, lsl #16
    //     0x6cd558: stur            x3, [x2, #-1]
    // 0x6cd55c: StoreField: r2->field_7 = d0
    //     0x6cd55c: stur            d0, [x2, #7]
    // 0x6cd560: StoreField: r1->field_1f = r2
    //     0x6cd560: stur            w2, [x1, #0x1f]
    // 0x6cd564: r2 = Instance_FontWeight
    //     0x6cd564: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6cd568: ldr             x2, [x2, #0x1d0]
    // 0x6cd56c: StoreField: r1->field_23 = r2
    //     0x6cd56c: stur            w2, [x1, #0x23]
    // 0x6cd570: r0 = TextSpan()
    //     0x6cd570: bl              #0x4adf54  ; AllocateTextSpanStub -> TextSpan (size=0x34)
    // 0x6cd574: mov             x1, x0
    // 0x6cd578: ldur            x0, [fp, #-8]
    // 0x6cd57c: stur            x1, [fp, #-0x18]
    // 0x6cd580: StoreField: r1->field_b = r0
    //     0x6cd580: stur            w0, [x1, #0xb]
    // 0x6cd584: r0 = Instance__DeferringMouseCursor
    //     0x6cd584: ldr             x0, [PP, #0x2500]  ; [pp+0x2500] Obj!_DeferringMouseCursor@a1a4d1
    // 0x6cd588: ArrayStore: r1[0] = r0  ; List_4
    //     0x6cd588: stur            w0, [x1, #0x17]
    // 0x6cd58c: ldur            x2, [fp, #-0x10]
    // 0x6cd590: StoreField: r1->field_7 = r2
    //     0x6cd590: stur            w2, [x1, #7]
    // 0x6cd594: r0 = TextSpan()
    //     0x6cd594: bl              #0x4adf54  ; AllocateTextSpanStub -> TextSpan (size=0x34)
    // 0x6cd598: mov             x2, x0
    // 0x6cd59c: r0 = "  "
    //     0x6cd59c: ldr             x0, [PP, #0x8b0]  ; [pp+0x8b0] "  "
    // 0x6cd5a0: stur            x2, [fp, #-8]
    // 0x6cd5a4: StoreField: r2->field_b = r0
    //     0x6cd5a4: stur            w0, [x2, #0xb]
    // 0x6cd5a8: r0 = Instance__DeferringMouseCursor
    //     0x6cd5a8: ldr             x0, [PP, #0x2500]  ; [pp+0x2500] Obj!_DeferringMouseCursor@a1a4d1
    // 0x6cd5ac: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cd5ac: stur            w0, [x2, #0x17]
    // 0x6cd5b0: r1 = 16
    //     0x6cd5b0: mov             x1, #0x10
    // 0x6cd5b4: r0 = SizeExtension.sp()
    //     0x6cd5b4: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cd5b8: stur            d0, [fp, #-0x28]
    // 0x6cd5bc: r0 = TextStyle()
    //     0x6cd5bc: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cd5c0: mov             x1, x0
    // 0x6cd5c4: r0 = true
    //     0x6cd5c4: add             x0, NULL, #0x20  ; true
    // 0x6cd5c8: stur            x1, [fp, #-0x10]
    // 0x6cd5cc: StoreField: r1->field_7 = r0
    //     0x6cd5cc: stur            w0, [x1, #7]
    // 0x6cd5d0: r0 = Instance_MaterialColor
    //     0x6cd5d0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6cd5d4: ldr             x0, [x0, #0xbc8]
    // 0x6cd5d8: StoreField: r1->field_b = r0
    //     0x6cd5d8: stur            w0, [x1, #0xb]
    // 0x6cd5dc: ldur            d0, [fp, #-0x28]
    // 0x6cd5e0: r0 = inline_Allocate_Double()
    //     0x6cd5e0: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6cd5e4: add             x0, x0, #0x10
    //     0x6cd5e8: cmp             x2, x0
    //     0x6cd5ec: b.ls            #0x6cd71c
    //     0x6cd5f0: str             x0, [THR, #0x60]  ; THR::top
    //     0x6cd5f4: sub             x0, x0, #0xf
    //     0x6cd5f8: mov             x2, #0xe15c
    //     0x6cd5fc: movk            x2, #3, lsl #16
    //     0x6cd600: stur            x2, [x0, #-1]
    // 0x6cd604: StoreField: r0->field_7 = d0
    //     0x6cd604: stur            d0, [x0, #7]
    // 0x6cd608: StoreField: r1->field_1f = r0
    //     0x6cd608: stur            w0, [x1, #0x1f]
    // 0x6cd60c: r0 = Instance_FontWeight
    //     0x6cd60c: add             x0, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x6cd610: ldr             x0, [x0, #0x5d0]
    // 0x6cd614: StoreField: r1->field_23 = r0
    //     0x6cd614: stur            w0, [x1, #0x23]
    // 0x6cd618: r0 = TextSpan()
    //     0x6cd618: bl              #0x4adf54  ; AllocateTextSpanStub -> TextSpan (size=0x34)
    // 0x6cd61c: mov             x3, x0
    // 0x6cd620: r0 = "adım"
    //     0x6cd620: add             x0, PP, #0x20, lsl #12  ; [pp+0x20bd0] "adım"
    //     0x6cd624: ldr             x0, [x0, #0xbd0]
    // 0x6cd628: stur            x3, [fp, #-0x20]
    // 0x6cd62c: StoreField: r3->field_b = r0
    //     0x6cd62c: stur            w0, [x3, #0xb]
    // 0x6cd630: r0 = Instance__DeferringMouseCursor
    //     0x6cd630: ldr             x0, [PP, #0x2500]  ; [pp+0x2500] Obj!_DeferringMouseCursor@a1a4d1
    // 0x6cd634: ArrayStore: r3[0] = r0  ; List_4
    //     0x6cd634: stur            w0, [x3, #0x17]
    // 0x6cd638: ldur            x1, [fp, #-0x10]
    // 0x6cd63c: StoreField: r3->field_7 = r1
    //     0x6cd63c: stur            w1, [x3, #7]
    // 0x6cd640: r1 = Null
    //     0x6cd640: mov             x1, NULL
    // 0x6cd644: r2 = 6
    //     0x6cd644: mov             x2, #6
    // 0x6cd648: r0 = AllocateArray()
    //     0x6cd648: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cd64c: mov             x2, x0
    // 0x6cd650: ldur            x0, [fp, #-0x18]
    // 0x6cd654: stur            x2, [fp, #-0x10]
    // 0x6cd658: StoreField: r2->field_f = r0
    //     0x6cd658: stur            w0, [x2, #0xf]
    // 0x6cd65c: ldur            x0, [fp, #-8]
    // 0x6cd660: StoreField: r2->field_13 = r0
    //     0x6cd660: stur            w0, [x2, #0x13]
    // 0x6cd664: ldur            x0, [fp, #-0x20]
    // 0x6cd668: ArrayStore: r2[0] = r0  ; List_4
    //     0x6cd668: stur            w0, [x2, #0x17]
    // 0x6cd66c: r1 = <InlineSpan>
    //     0x6cd66c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11f08] TypeArguments: <InlineSpan>
    //     0x6cd670: ldr             x1, [x1, #0xf08]
    // 0x6cd674: r0 = AllocateGrowableArray()
    //     0x6cd674: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6cd678: mov             x1, x0
    // 0x6cd67c: ldur            x0, [fp, #-0x10]
    // 0x6cd680: stur            x1, [fp, #-8]
    // 0x6cd684: StoreField: r1->field_f = r0
    //     0x6cd684: stur            w0, [x1, #0xf]
    // 0x6cd688: r0 = 6
    //     0x6cd688: mov             x0, #6
    // 0x6cd68c: StoreField: r1->field_b = r0
    //     0x6cd68c: stur            w0, [x1, #0xb]
    // 0x6cd690: r0 = TextSpan()
    //     0x6cd690: bl              #0x4adf54  ; AllocateTextSpanStub -> TextSpan (size=0x34)
    // 0x6cd694: mov             x1, x0
    // 0x6cd698: ldur            x0, [fp, #-8]
    // 0x6cd69c: stur            x1, [fp, #-0x10]
    // 0x6cd6a0: StoreField: r1->field_f = r0
    //     0x6cd6a0: stur            w0, [x1, #0xf]
    // 0x6cd6a4: r0 = Instance__DeferringMouseCursor
    //     0x6cd6a4: ldr             x0, [PP, #0x2500]  ; [pp+0x2500] Obj!_DeferringMouseCursor@a1a4d1
    // 0x6cd6a8: ArrayStore: r1[0] = r0  ; List_4
    //     0x6cd6a8: stur            w0, [x1, #0x17]
    // 0x6cd6ac: r0 = RichText()
    //     0x6cd6ac: bl              #0x6cdb70  ; AllocateRichTextStub -> RichText (size=0x44)
    // 0x6cd6b0: mov             x1, x0
    // 0x6cd6b4: ldur            x2, [fp, #-0x10]
    // 0x6cd6b8: stur            x0, [fp, #-8]
    // 0x6cd6bc: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6cd6bc: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6cd6c0: r0 = RichText()
    //     0x6cd6c0: bl              #0x6cd734  ; [package:flutter/src/widgets/basic.dart] RichText::RichText
    // 0x6cd6c4: ldur            x0, [fp, #-8]
    // 0x6cd6c8: LeaveFrame
    //     0x6cd6c8: mov             SP, fp
    //     0x6cd6cc: ldp             fp, lr, [SP], #0x10
    // 0x6cd6d0: ret
    //     0x6cd6d0: ret             
    // 0x6cd6d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cd6d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cd6d8: b               #0x6cd424
    // 0x6cd6dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cd6dc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6cd6e0: SaveReg d2
    //     0x6cd6e0: str             q2, [SP, #-0x10]!
    // 0x6cd6e4: d0 = 0.000000
    //     0x6cd6e4: fmov            d0, d2
    // 0x6cd6e8: r0 = 70
    //     0x6cd6e8: mov             x0, #0x46
    // 0x6cd6ec: r30 = DoubleToIntegerStub
    //     0x6cd6ec: ldr             lr, [PP, #0x1f38]  ; [pp+0x1f38] Stub: DoubleToInteger (0x3c184c)
    // 0x6cd6f0: LoadField: r30 = r30->field_7
    //     0x6cd6f0: ldur            lr, [lr, #7]
    // 0x6cd6f4: blr             lr
    // 0x6cd6f8: RestoreReg d2
    //     0x6cd6f8: ldr             q2, [SP], #0x10
    // 0x6cd6fc: b               #0x6cd500
    // 0x6cd700: SaveReg d0
    //     0x6cd700: str             q0, [SP, #-0x10]!
    // 0x6cd704: stp             x0, x1, [SP, #-0x10]!
    // 0x6cd708: r0 = AllocateDouble()
    //     0x6cd708: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cd70c: mov             x2, x0
    // 0x6cd710: ldp             x0, x1, [SP], #0x10
    // 0x6cd714: RestoreReg d0
    //     0x6cd714: ldr             q0, [SP], #0x10
    // 0x6cd718: b               #0x6cd55c
    // 0x6cd71c: SaveReg d0
    //     0x6cd71c: str             q0, [SP, #-0x10]!
    // 0x6cd720: SaveReg r1
    //     0x6cd720: str             x1, [SP, #-8]!
    // 0x6cd724: r0 = AllocateDouble()
    //     0x6cd724: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cd728: RestoreReg r1
    //     0x6cd728: ldr             x1, [SP], #8
    // 0x6cd72c: RestoreReg d0
    //     0x6cd72c: ldr             q0, [SP], #0x10
    // 0x6cd730: b               #0x6cd604
  }
  [closure] int <anonymous closure>(dynamic, int, int) {
    // ** addr: 0x6cdb88, size: 0x4c
    // 0x6cdb88: ldr             x2, [SP, #8]
    // 0x6cdb8c: r3 = LoadInt32Instr(r2)
    //     0x6cdb8c: sbfx            x3, x2, #1, #0x1f
    //     0x6cdb90: tbz             w2, #0, #0x6cdb98
    //     0x6cdb94: ldur            x3, [x2, #7]
    // 0x6cdb98: ldr             x2, [SP]
    // 0x6cdb9c: r4 = LoadInt32Instr(r2)
    //     0x6cdb9c: sbfx            x4, x2, #1, #0x1f
    //     0x6cdba0: tbz             w2, #0, #0x6cdba8
    //     0x6cdba4: ldur            x4, [x2, #7]
    // 0x6cdba8: add             x2, x3, x4
    // 0x6cdbac: r0 = BoxInt64Instr(r2)
    //     0x6cdbac: sbfiz           x0, x2, #1, #0x1f
    //     0x6cdbb0: cmp             x2, x0, asr #1
    //     0x6cdbb4: b.eq            #0x6cdbd0
    //     0x6cdbb8: stp             fp, lr, [SP, #-0x10]!
    //     0x6cdbbc: mov             fp, SP
    //     0x6cdbc0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6cdbc4: mov             SP, fp
    //     0x6cdbc8: ldp             fp, lr, [SP], #0x10
    //     0x6cdbcc: stur            x2, [x0, #7]
    // 0x6cdbd0: ret
    //     0x6cdbd0: ret             
  }
  [closure] Text <anonymous closure>(dynamic) {
    // ** addr: 0x6cdbd4, size: 0xf0
    // 0x6cdbd4: EnterFrame
    //     0x6cdbd4: stp             fp, lr, [SP, #-0x10]!
    //     0x6cdbd8: mov             fp, SP
    // 0x6cdbdc: AllocStack(0x18)
    //     0x6cdbdc: sub             SP, SP, #0x18
    // 0x6cdbe0: SetupParameters([dynamic _ /* r0 */])
    //     0x6cdbe0: ldr             x0, [fp, #0x10]
    //     0x6cdbe4: ldur            w1, [x0, #0x17]
    //     0x6cdbe8: add             x1, x1, HEAP, lsl #32
    // 0x6cdbec: CheckStackOverflow
    //     0x6cdbec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cdbf0: cmp             SP, x16
    //     0x6cdbf4: b.ls            #0x6cdca0
    // 0x6cdbf8: LoadField: r0 = r1->field_b
    //     0x6cdbf8: ldur            w0, [x1, #0xb]
    // 0x6cdbfc: DecompressPointer r0
    //     0x6cdbfc: add             x0, x0, HEAP, lsl #32
    // 0x6cdc00: LoadField: r1 = r0->field_f
    //     0x6cdc00: ldur            w1, [x0, #0xf]
    // 0x6cdc04: DecompressPointer r1
    //     0x6cdc04: add             x1, x1, HEAP, lsl #32
    // 0x6cdc08: LoadField: r0 = r1->field_13
    //     0x6cdc08: ldur            w0, [x1, #0x13]
    // 0x6cdc0c: DecompressPointer r0
    //     0x6cdc0c: add             x0, x0, HEAP, lsl #32
    // 0x6cdc10: cmp             w0, NULL
    // 0x6cdc14: b.eq            #0x6cdca8
    // 0x6cdc18: mov             x1, x0
    // 0x6cdc1c: r0 = walkingTimeText()
    //     0x6cdc1c: bl              #0x6cdcc4  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::walkingTimeText
    // 0x6cdc20: r1 = 20
    //     0x6cdc20: mov             x1, #0x14
    // 0x6cdc24: stur            x0, [fp, #-8]
    // 0x6cdc28: r0 = SizeExtension.sp()
    //     0x6cdc28: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cdc2c: stur            d0, [fp, #-0x18]
    // 0x6cdc30: r0 = TextStyle()
    //     0x6cdc30: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cdc34: mov             x1, x0
    // 0x6cdc38: r0 = true
    //     0x6cdc38: add             x0, NULL, #0x20  ; true
    // 0x6cdc3c: stur            x1, [fp, #-0x10]
    // 0x6cdc40: StoreField: r1->field_7 = r0
    //     0x6cdc40: stur            w0, [x1, #7]
    // 0x6cdc44: ldur            d0, [fp, #-0x18]
    // 0x6cdc48: r0 = inline_Allocate_Double()
    //     0x6cdc48: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6cdc4c: add             x0, x0, #0x10
    //     0x6cdc50: cmp             x2, x0
    //     0x6cdc54: b.ls            #0x6cdcac
    //     0x6cdc58: str             x0, [THR, #0x60]  ; THR::top
    //     0x6cdc5c: sub             x0, x0, #0xf
    //     0x6cdc60: mov             x2, #0xe15c
    //     0x6cdc64: movk            x2, #3, lsl #16
    //     0x6cdc68: stur            x2, [x0, #-1]
    // 0x6cdc6c: StoreField: r0->field_7 = d0
    //     0x6cdc6c: stur            d0, [x0, #7]
    // 0x6cdc70: StoreField: r1->field_1f = r0
    //     0x6cdc70: stur            w0, [x1, #0x1f]
    // 0x6cdc74: r0 = Instance_FontWeight
    //     0x6cdc74: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6cdc78: ldr             x0, [x0, #0x1d0]
    // 0x6cdc7c: StoreField: r1->field_23 = r0
    //     0x6cdc7c: stur            w0, [x1, #0x23]
    // 0x6cdc80: r0 = Text()
    //     0x6cdc80: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cdc84: ldur            x1, [fp, #-8]
    // 0x6cdc88: StoreField: r0->field_b = r1
    //     0x6cdc88: stur            w1, [x0, #0xb]
    // 0x6cdc8c: ldur            x1, [fp, #-0x10]
    // 0x6cdc90: StoreField: r0->field_13 = r1
    //     0x6cdc90: stur            w1, [x0, #0x13]
    // 0x6cdc94: LeaveFrame
    //     0x6cdc94: mov             SP, fp
    //     0x6cdc98: ldp             fp, lr, [SP], #0x10
    // 0x6cdc9c: ret
    //     0x6cdc9c: ret             
    // 0x6cdca0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cdca0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cdca4: b               #0x6cdbf8
    // 0x6cdca8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cdca8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6cdcac: SaveReg d0
    //     0x6cdcac: str             q0, [SP, #-0x10]!
    // 0x6cdcb0: SaveReg r1
    //     0x6cdcb0: str             x1, [SP, #-8]!
    // 0x6cdcb4: r0 = AllocateDouble()
    //     0x6cdcb4: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cdcb8: RestoreReg r1
    //     0x6cdcb8: ldr             x1, [SP], #8
    // 0x6cdcbc: RestoreReg d0
    //     0x6cdcbc: ldr             q0, [SP], #0x10
    // 0x6cdcc0: b               #0x6cdc6c
  }
  [closure] Text <anonymous closure>(dynamic) {
    // ** addr: 0x6cdddc, size: 0x100
    // 0x6cdddc: EnterFrame
    //     0x6cdddc: stp             fp, lr, [SP, #-0x10]!
    //     0x6cdde0: mov             fp, SP
    // 0x6cdde4: AllocStack(0x18)
    //     0x6cdde4: sub             SP, SP, #0x18
    // 0x6cdde8: SetupParameters([dynamic _ /* r0 */])
    //     0x6cdde8: ldr             x0, [fp, #0x10]
    //     0x6cddec: ldur            w1, [x0, #0x17]
    //     0x6cddf0: add             x1, x1, HEAP, lsl #32
    // 0x6cddf4: CheckStackOverflow
    //     0x6cddf4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cddf8: cmp             SP, x16
    //     0x6cddfc: b.ls            #0x6cdeb8
    // 0x6cde00: LoadField: r0 = r1->field_b
    //     0x6cde00: ldur            w0, [x1, #0xb]
    // 0x6cde04: DecompressPointer r0
    //     0x6cde04: add             x0, x0, HEAP, lsl #32
    // 0x6cde08: LoadField: r1 = r0->field_f
    //     0x6cde08: ldur            w1, [x0, #0xf]
    // 0x6cde0c: DecompressPointer r1
    //     0x6cde0c: add             x1, x1, HEAP, lsl #32
    // 0x6cde10: LoadField: r0 = r1->field_13
    //     0x6cde10: ldur            w0, [x1, #0x13]
    // 0x6cde14: DecompressPointer r0
    //     0x6cde14: add             x0, x0, HEAP, lsl #32
    // 0x6cde18: cmp             w0, NULL
    // 0x6cde1c: b.eq            #0x6cdec0
    // 0x6cde20: LoadField: r1 = r0->field_2f
    //     0x6cde20: ldur            w1, [x0, #0x2f]
    // 0x6cde24: DecompressPointer r1
    //     0x6cde24: add             x1, x1, HEAP, lsl #32
    // 0x6cde28: r0 = value()
    //     0x6cde28: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x6cde2c: mov             x1, x0
    // 0x6cde30: r2 = 2
    //     0x6cde30: mov             x2, #2
    // 0x6cde34: r0 = toStringAsFixed()
    //     0x6cde34: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x6cde38: r1 = 20
    //     0x6cde38: mov             x1, #0x14
    // 0x6cde3c: stur            x0, [fp, #-8]
    // 0x6cde40: r0 = SizeExtension.sp()
    //     0x6cde40: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cde44: stur            d0, [fp, #-0x18]
    // 0x6cde48: r0 = TextStyle()
    //     0x6cde48: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cde4c: mov             x1, x0
    // 0x6cde50: r0 = true
    //     0x6cde50: add             x0, NULL, #0x20  ; true
    // 0x6cde54: stur            x1, [fp, #-0x10]
    // 0x6cde58: StoreField: r1->field_7 = r0
    //     0x6cde58: stur            w0, [x1, #7]
    // 0x6cde5c: ldur            d0, [fp, #-0x18]
    // 0x6cde60: r0 = inline_Allocate_Double()
    //     0x6cde60: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6cde64: add             x0, x0, #0x10
    //     0x6cde68: cmp             x2, x0
    //     0x6cde6c: b.ls            #0x6cdec4
    //     0x6cde70: str             x0, [THR, #0x60]  ; THR::top
    //     0x6cde74: sub             x0, x0, #0xf
    //     0x6cde78: mov             x2, #0xe15c
    //     0x6cde7c: movk            x2, #3, lsl #16
    //     0x6cde80: stur            x2, [x0, #-1]
    // 0x6cde84: StoreField: r0->field_7 = d0
    //     0x6cde84: stur            d0, [x0, #7]
    // 0x6cde88: StoreField: r1->field_1f = r0
    //     0x6cde88: stur            w0, [x1, #0x1f]
    // 0x6cde8c: r0 = Instance_FontWeight
    //     0x6cde8c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6cde90: ldr             x0, [x0, #0x1d0]
    // 0x6cde94: StoreField: r1->field_23 = r0
    //     0x6cde94: stur            w0, [x1, #0x23]
    // 0x6cde98: r0 = Text()
    //     0x6cde98: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cde9c: ldur            x1, [fp, #-8]
    // 0x6cdea0: StoreField: r0->field_b = r1
    //     0x6cdea0: stur            w1, [x0, #0xb]
    // 0x6cdea4: ldur            x1, [fp, #-0x10]
    // 0x6cdea8: StoreField: r0->field_13 = r1
    //     0x6cdea8: stur            w1, [x0, #0x13]
    // 0x6cdeac: LeaveFrame
    //     0x6cdeac: mov             SP, fp
    //     0x6cdeb0: ldp             fp, lr, [SP], #0x10
    // 0x6cdeb4: ret
    //     0x6cdeb4: ret             
    // 0x6cdeb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cdeb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cdebc: b               #0x6cde00
    // 0x6cdec0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cdec0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6cdec4: SaveReg d0
    //     0x6cdec4: str             q0, [SP, #-0x10]!
    // 0x6cdec8: SaveReg r1
    //     0x6cdec8: str             x1, [SP, #-8]!
    // 0x6cdecc: r0 = AllocateDouble()
    //     0x6cdecc: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cded0: RestoreReg r1
    //     0x6cded0: ldr             x1, [SP], #8
    // 0x6cded4: RestoreReg d0
    //     0x6cded4: ldr             q0, [SP], #0x10
    // 0x6cded8: b               #0x6cde84
  }
  [closure] Text <anonymous closure>(dynamic) {
    // ** addr: 0x6cdedc, size: 0x100
    // 0x6cdedc: EnterFrame
    //     0x6cdedc: stp             fp, lr, [SP, #-0x10]!
    //     0x6cdee0: mov             fp, SP
    // 0x6cdee4: AllocStack(0x18)
    //     0x6cdee4: sub             SP, SP, #0x18
    // 0x6cdee8: SetupParameters([dynamic _ /* r0 */])
    //     0x6cdee8: ldr             x0, [fp, #0x10]
    //     0x6cdeec: ldur            w1, [x0, #0x17]
    //     0x6cdef0: add             x1, x1, HEAP, lsl #32
    // 0x6cdef4: CheckStackOverflow
    //     0x6cdef4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cdef8: cmp             SP, x16
    //     0x6cdefc: b.ls            #0x6cdfb8
    // 0x6cdf00: LoadField: r0 = r1->field_b
    //     0x6cdf00: ldur            w0, [x1, #0xb]
    // 0x6cdf04: DecompressPointer r0
    //     0x6cdf04: add             x0, x0, HEAP, lsl #32
    // 0x6cdf08: LoadField: r1 = r0->field_f
    //     0x6cdf08: ldur            w1, [x0, #0xf]
    // 0x6cdf0c: DecompressPointer r1
    //     0x6cdf0c: add             x1, x1, HEAP, lsl #32
    // 0x6cdf10: LoadField: r0 = r1->field_13
    //     0x6cdf10: ldur            w0, [x1, #0x13]
    // 0x6cdf14: DecompressPointer r0
    //     0x6cdf14: add             x0, x0, HEAP, lsl #32
    // 0x6cdf18: cmp             w0, NULL
    // 0x6cdf1c: b.eq            #0x6cdfc0
    // 0x6cdf20: LoadField: r1 = r0->field_2b
    //     0x6cdf20: ldur            w1, [x0, #0x2b]
    // 0x6cdf24: DecompressPointer r1
    //     0x6cdf24: add             x1, x1, HEAP, lsl #32
    // 0x6cdf28: r0 = value()
    //     0x6cdf28: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x6cdf2c: mov             x1, x0
    // 0x6cdf30: r2 = 2
    //     0x6cdf30: mov             x2, #2
    // 0x6cdf34: r0 = toStringAsFixed()
    //     0x6cdf34: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x6cdf38: r1 = 20
    //     0x6cdf38: mov             x1, #0x14
    // 0x6cdf3c: stur            x0, [fp, #-8]
    // 0x6cdf40: r0 = SizeExtension.sp()
    //     0x6cdf40: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6cdf44: stur            d0, [fp, #-0x18]
    // 0x6cdf48: r0 = TextStyle()
    //     0x6cdf48: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6cdf4c: mov             x1, x0
    // 0x6cdf50: r0 = true
    //     0x6cdf50: add             x0, NULL, #0x20  ; true
    // 0x6cdf54: stur            x1, [fp, #-0x10]
    // 0x6cdf58: StoreField: r1->field_7 = r0
    //     0x6cdf58: stur            w0, [x1, #7]
    // 0x6cdf5c: ldur            d0, [fp, #-0x18]
    // 0x6cdf60: r0 = inline_Allocate_Double()
    //     0x6cdf60: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6cdf64: add             x0, x0, #0x10
    //     0x6cdf68: cmp             x2, x0
    //     0x6cdf6c: b.ls            #0x6cdfc4
    //     0x6cdf70: str             x0, [THR, #0x60]  ; THR::top
    //     0x6cdf74: sub             x0, x0, #0xf
    //     0x6cdf78: mov             x2, #0xe15c
    //     0x6cdf7c: movk            x2, #3, lsl #16
    //     0x6cdf80: stur            x2, [x0, #-1]
    // 0x6cdf84: StoreField: r0->field_7 = d0
    //     0x6cdf84: stur            d0, [x0, #7]
    // 0x6cdf88: StoreField: r1->field_1f = r0
    //     0x6cdf88: stur            w0, [x1, #0x1f]
    // 0x6cdf8c: r0 = Instance_FontWeight
    //     0x6cdf8c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6cdf90: ldr             x0, [x0, #0x1d0]
    // 0x6cdf94: StoreField: r1->field_23 = r0
    //     0x6cdf94: stur            w0, [x1, #0x23]
    // 0x6cdf98: r0 = Text()
    //     0x6cdf98: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6cdf9c: ldur            x1, [fp, #-8]
    // 0x6cdfa0: StoreField: r0->field_b = r1
    //     0x6cdfa0: stur            w1, [x0, #0xb]
    // 0x6cdfa4: ldur            x1, [fp, #-0x10]
    // 0x6cdfa8: StoreField: r0->field_13 = r1
    //     0x6cdfa8: stur            w1, [x0, #0x13]
    // 0x6cdfac: LeaveFrame
    //     0x6cdfac: mov             SP, fp
    //     0x6cdfb0: ldp             fp, lr, [SP], #0x10
    // 0x6cdfb4: ret
    //     0x6cdfb4: ret             
    // 0x6cdfb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cdfb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cdfbc: b               #0x6cdf00
    // 0x6cdfc0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6cdfc0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6cdfc4: SaveReg d0
    //     0x6cdfc4: str             q0, [SP, #-0x10]!
    // 0x6cdfc8: SaveReg r1
    //     0x6cdfc8: str             x1, [SP, #-8]!
    // 0x6cdfcc: r0 = AllocateDouble()
    //     0x6cdfcc: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6cdfd0: RestoreReg r1
    //     0x6cdfd0: ldr             x1, [SP], #8
    // 0x6cdfd4: RestoreReg d0
    //     0x6cdfd4: ldr             q0, [SP], #0x10
    // 0x6cdfd8: b               #0x6cdf84
  }
  [closure] Text <anonymous closure>(dynamic) {
    // ** addr: 0x6cdfdc, size: 0x128
    // 0x6cdfdc: EnterFrame
    //     0x6cdfdc: stp             fp, lr, [SP, #-0x10]!
    //     0x6cdfe0: mov             fp, SP
    // 0x6cdfe4: AllocStack(0x20)
    //     0x6cdfe4: sub             SP, SP, #0x20
    // 0x6cdfe8: SetupParameters([dynamic _ /* r0 */])
    //     0x6cdfe8: ldr             x0, [fp, #0x10]
    //     0x6cdfec: ldur            w1, [x0, #0x17]
    //     0x6cdff0: add             x1, x1, HEAP, lsl #32
    // 0x6cdff4: CheckStackOverflow
    //     0x6cdff4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cdff8: cmp             SP, x16
    //     0x6cdffc: b.ls            #0x6ce0e0
    // 0x6ce000: LoadField: r0 = r1->field_b
    //     0x6ce000: ldur            w0, [x1, #0xb]
    // 0x6ce004: DecompressPointer r0
    //     0x6ce004: add             x0, x0, HEAP, lsl #32
    // 0x6ce008: LoadField: r1 = r0->field_f
    //     0x6ce008: ldur            w1, [x0, #0xf]
    // 0x6ce00c: DecompressPointer r1
    //     0x6ce00c: add             x1, x1, HEAP, lsl #32
    // 0x6ce010: LoadField: r0 = r1->field_13
    //     0x6ce010: ldur            w0, [x1, #0x13]
    // 0x6ce014: DecompressPointer r0
    //     0x6ce014: add             x0, x0, HEAP, lsl #32
    // 0x6ce018: cmp             w0, NULL
    // 0x6ce01c: b.eq            #0x6ce0e8
    // 0x6ce020: LoadField: r1 = r0->field_1f
    //     0x6ce020: ldur            w1, [x0, #0x1f]
    // 0x6ce024: DecompressPointer r1
    //     0x6ce024: add             x1, x1, HEAP, lsl #32
    // 0x6ce028: r0 = value()
    //     0x6ce028: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x6ce02c: r1 = 60
    //     0x6ce02c: mov             x1, #0x3c
    // 0x6ce030: branchIfSmi(r0, 0x6ce03c)
    //     0x6ce030: tbz             w0, #0, #0x6ce03c
    // 0x6ce034: r1 = LoadClassIdInstr(r0)
    //     0x6ce034: ldur            x1, [x0, #-1]
    //     0x6ce038: ubfx            x1, x1, #0xc, #0x14
    // 0x6ce03c: str             x0, [SP]
    // 0x6ce040: mov             x0, x1
    // 0x6ce044: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6ce044: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6ce048: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6ce048: mov             x17, #0x21f6
    //     0x6ce04c: add             lr, x0, x17
    //     0x6ce050: ldr             lr, [x21, lr, lsl #3]
    //     0x6ce054: blr             lr
    // 0x6ce058: r1 = 50
    //     0x6ce058: mov             x1, #0x32
    // 0x6ce05c: stur            x0, [fp, #-8]
    // 0x6ce060: r0 = SizeExtension.sp()
    //     0x6ce060: bl              #0x6cbb40  ; [package:flutter_screenutil/src/size_extension.dart] ::SizeExtension.sp
    // 0x6ce064: stur            d0, [fp, #-0x18]
    // 0x6ce068: r0 = TextStyle()
    //     0x6ce068: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6ce06c: mov             x1, x0
    // 0x6ce070: r0 = true
    //     0x6ce070: add             x0, NULL, #0x20  ; true
    // 0x6ce074: stur            x1, [fp, #-0x10]
    // 0x6ce078: StoreField: r1->field_7 = r0
    //     0x6ce078: stur            w0, [x1, #7]
    // 0x6ce07c: r0 = Instance_Color
    //     0x6ce07c: ldr             x0, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6ce080: StoreField: r1->field_b = r0
    //     0x6ce080: stur            w0, [x1, #0xb]
    // 0x6ce084: ldur            d0, [fp, #-0x18]
    // 0x6ce088: r0 = inline_Allocate_Double()
    //     0x6ce088: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x6ce08c: add             x0, x0, #0x10
    //     0x6ce090: cmp             x2, x0
    //     0x6ce094: b.ls            #0x6ce0ec
    //     0x6ce098: str             x0, [THR, #0x60]  ; THR::top
    //     0x6ce09c: sub             x0, x0, #0xf
    //     0x6ce0a0: mov             x2, #0xe15c
    //     0x6ce0a4: movk            x2, #3, lsl #16
    //     0x6ce0a8: stur            x2, [x0, #-1]
    // 0x6ce0ac: StoreField: r0->field_7 = d0
    //     0x6ce0ac: stur            d0, [x0, #7]
    // 0x6ce0b0: StoreField: r1->field_1f = r0
    //     0x6ce0b0: stur            w0, [x1, #0x1f]
    // 0x6ce0b4: r0 = Instance_FontWeight
    //     0x6ce0b4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x6ce0b8: ldr             x0, [x0, #0x1d0]
    // 0x6ce0bc: StoreField: r1->field_23 = r0
    //     0x6ce0bc: stur            w0, [x1, #0x23]
    // 0x6ce0c0: r0 = Text()
    //     0x6ce0c0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6ce0c4: ldur            x1, [fp, #-8]
    // 0x6ce0c8: StoreField: r0->field_b = r1
    //     0x6ce0c8: stur            w1, [x0, #0xb]
    // 0x6ce0cc: ldur            x1, [fp, #-0x10]
    // 0x6ce0d0: StoreField: r0->field_13 = r1
    //     0x6ce0d0: stur            w1, [x0, #0x13]
    // 0x6ce0d4: LeaveFrame
    //     0x6ce0d4: mov             SP, fp
    //     0x6ce0d8: ldp             fp, lr, [SP], #0x10
    // 0x6ce0dc: ret
    //     0x6ce0dc: ret             
    // 0x6ce0e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ce0e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ce0e4: b               #0x6ce000
    // 0x6ce0e8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6ce0e8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6ce0ec: SaveReg d0
    //     0x6ce0ec: str             q0, [SP, #-0x10]!
    // 0x6ce0f0: SaveReg r1
    //     0x6ce0f0: str             x1, [SP, #-8]!
    // 0x6ce0f4: r0 = AllocateDouble()
    //     0x6ce0f4: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6ce0f8: RestoreReg r1
    //     0x6ce0f8: ldr             x1, [SP], #8
    // 0x6ce0fc: RestoreReg d0
    //     0x6ce0fc: ldr             q0, [SP], #0x10
    // 0x6ce100: b               #0x6ce0ac
  }
}

// class id: 3220, size: 0xc, field offset: 0xc
//   const constructor, 
class StepCounterView extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd2e0, size: 0x24
    // 0x7bd2e0: EnterFrame
    //     0x7bd2e0: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd2e4: mov             fp, SP
    // 0x7bd2e8: mov             x0, x1
    // 0x7bd2ec: r1 = <StepCounterView>
    //     0x7bd2ec: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c7a0] TypeArguments: <StepCounterView>
    //     0x7bd2f0: ldr             x1, [x1, #0x7a0]
    // 0x7bd2f4: r0 = _StepCounterViewState()
    //     0x7bd2f4: bl              #0x7bd304  ; Allocate_StepCounterViewStateStub -> _StepCounterViewState (size=0x18)
    // 0x7bd2f8: LeaveFrame
    //     0x7bd2f8: mov             SP, fp
    //     0x7bd2fc: ldp             fp, lr, [SP], #0x10
    // 0x7bd300: ret
    //     0x7bd300: ret             
  }
}
