// lib: , url: package:umrem_demo/features/adimsayar/step_controller.dart

// class id: 1049508, size: 0x8
class :: {
}

// class id: 555, size: 0x4c, field offset: 0x1c
class StepController extends GetxController {

  _ initPlatformState(/* No info */) async {
    // ** addr: 0x5cd69c, size: 0xec
    // 0x5cd69c: EnterFrame
    //     0x5cd69c: stp             fp, lr, [SP, #-0x10]!
    //     0x5cd6a0: mov             fp, SP
    // 0x5cd6a4: AllocStack(0x18)
    //     0x5cd6a4: sub             SP, SP, #0x18
    // 0x5cd6a8: SetupParameters(StepController this /* r1 => r1, fp-0x10 */)
    //     0x5cd6a8: stur            NULL, [fp, #-8]
    //     0x5cd6ac: stur            x1, [fp, #-0x10]
    // 0x5cd6b0: CheckStackOverflow
    //     0x5cd6b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cd6b4: cmp             SP, x16
    //     0x5cd6b8: b.ls            #0x5cd780
    // 0x5cd6bc: InitAsync() -> Future<void?>
    //     0x5cd6bc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5cd6c0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cd6c4: ldur            x1, [fp, #-0x10]
    // 0x5cd6c8: r0 = getBaseStep()
    //     0x5cd6c8: bl              #0x5cf6b4  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::getBaseStep
    // 0x5cd6cc: ldur            x1, [fp, #-0x10]
    // 0x5cd6d0: r0 = getWalkingTime()
    //     0x5cd6d0: bl              #0x5cf440  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::getWalkingTime
    // 0x5cd6d4: ldur            x1, [fp, #-0x10]
    // 0x5cd6d8: r0 = getLast7DaysSteps()
    //     0x5cd6d8: bl              #0x5ce440  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::getLast7DaysSteps
    // 0x5cd6dc: r0 = pedestrianStatusStream()
    //     0x5cd6dc: bl              #0x5cdfe4  ; [package:pedometer/pedometer.dart] Pedometer::pedestrianStatusStream
    // 0x5cd6e0: ldur            x2, [fp, #-0x10]
    // 0x5cd6e4: StoreField: r2->field_3f = r0
    //     0x5cd6e4: stur            w0, [x2, #0x3f]
    //     0x5cd6e8: ldurb           w16, [x2, #-1]
    //     0x5cd6ec: ldurb           w17, [x0, #-1]
    //     0x5cd6f0: and             x16, x17, x16, lsr #2
    //     0x5cd6f4: tst             x16, HEAP, lsr #32
    //     0x5cd6f8: b.eq            #0x5cd700
    //     0x5cd6fc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5cd700: r0 = stepCountStream()
    //     0x5cd700: bl              #0x5cd788  ; [package:pedometer/pedometer.dart] Pedometer::stepCountStream
    // 0x5cd704: mov             x4, x0
    // 0x5cd708: ldur            x3, [fp, #-0x10]
    // 0x5cd70c: stur            x4, [fp, #-0x18]
    // 0x5cd710: StoreField: r3->field_3b = r0
    //     0x5cd710: stur            w0, [x3, #0x3b]
    //     0x5cd714: ldurb           w16, [x3, #-1]
    //     0x5cd718: ldurb           w17, [x0, #-1]
    //     0x5cd71c: and             x16, x17, x16, lsr #2
    //     0x5cd720: tst             x16, HEAP, lsr #32
    //     0x5cd724: b.eq            #0x5cd72c
    //     0x5cd728: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5cd72c: mov             x2, x3
    // 0x5cd730: r1 = Function 'onStepCount':.
    //     0x5cd730: add             x1, PP, #0x20, lsl #12  ; [pp+0x20cc8] AnonymousClosure: (0x5cfea4), in [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::onStepCount (0x5cfee0)
    //     0x5cd734: ldr             x1, [x1, #0xcc8]
    // 0x5cd738: r0 = AllocateClosure()
    //     0x5cd738: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5cd73c: ldur            x1, [fp, #-0x18]
    // 0x5cd740: mov             x2, x0
    // 0x5cd744: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5cd744: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5cd748: r0 = listen()
    //     0x5cd748: bl              #0x87bcb8  ; [dart:async] _ForwardingStream::listen
    // 0x5cd74c: ldur            x2, [fp, #-0x10]
    // 0x5cd750: LoadField: r0 = r2->field_3f
    //     0x5cd750: ldur            w0, [x2, #0x3f]
    // 0x5cd754: DecompressPointer r0
    //     0x5cd754: add             x0, x0, HEAP, lsl #32
    // 0x5cd758: stur            x0, [fp, #-0x18]
    // 0x5cd75c: r1 = Function 'onPedestrianStatusChanged':.
    //     0x5cd75c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20cd0] AnonymousClosure: (0x5cf7a0), in [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::onPedestrianStatusChanged (0x5cf7dc)
    //     0x5cd760: ldr             x1, [x1, #0xcd0]
    // 0x5cd764: r0 = AllocateClosure()
    //     0x5cd764: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5cd768: ldur            x1, [fp, #-0x18]
    // 0x5cd76c: mov             x2, x0
    // 0x5cd770: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5cd770: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5cd774: r0 = listen()
    //     0x5cd774: bl              #0x87b680  ; [dart:async] _StreamImpl::listen
    // 0x5cd778: r0 = Null
    //     0x5cd778: mov             x0, NULL
    // 0x5cd77c: r0 = ReturnAsyncNotFuture()
    //     0x5cd77c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cd780: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cd780: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cd784: b               #0x5cd6bc
  }
  _ getLast7DaysSteps(/* No info */) async {
    // ** addr: 0x5ce440, size: 0x23c
    // 0x5ce440: EnterFrame
    //     0x5ce440: stp             fp, lr, [SP, #-0x10]!
    //     0x5ce444: mov             fp, SP
    // 0x5ce448: AllocStack(0x58)
    //     0x5ce448: sub             SP, SP, #0x58
    // 0x5ce44c: SetupParameters(StepController this /* r1 => r1, fp-0x10 */)
    //     0x5ce44c: stur            NULL, [fp, #-8]
    //     0x5ce450: stur            x1, [fp, #-0x10]
    // 0x5ce454: CheckStackOverflow
    //     0x5ce454: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ce458: cmp             SP, x16
    //     0x5ce45c: b.ls            #0x5ce664
    // 0x5ce460: InitAsync() -> Future<void?>
    //     0x5ce460: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ce464: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ce468: r0 = _getCurrentMicros()
    //     0x5ce468: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5ce46c: r1 = LoadInt32Instr(r0)
    //     0x5ce46c: sbfx            x1, x0, #1, #0x1f
    //     0x5ce470: tbz             w0, #0, #0x5ce478
    //     0x5ce474: ldur            x1, [x0, #7]
    // 0x5ce478: stur            x1, [fp, #-0x18]
    // 0x5ce47c: r16 = <String, int>
    //     0x5ce47c: ldr             x16, [PP, #0x980]  ; [pp+0x980] TypeArguments: <String, int>
    // 0x5ce480: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5ce484: stp             lr, x16, [SP]
    // 0x5ce488: r0 = Map._fromLiteral()
    //     0x5ce488: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5ce48c: r1 = _ConstMap len:7
    //     0x5ce48c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b38] Map<int, String>(7)
    //     0x5ce490: ldr             x1, [x1, #0xb38]
    // 0x5ce494: stur            x0, [fp, #-0x38]
    // 0x5ce498: LoadField: r2 = r1->field_f
    //     0x5ce498: ldur            w2, [x1, #0xf]
    // 0x5ce49c: DecompressPointer r2
    //     0x5ce49c: add             x2, x2, HEAP, lsl #32
    // 0x5ce4a0: stur            x2, [fp, #-0x30]
    // 0x5ce4a4: r4 = 6
    //     0x5ce4a4: mov             x4, #6
    // 0x5ce4a8: ldur            x3, [fp, #-0x18]
    // 0x5ce4ac: stur            x4, [fp, #-0x28]
    // 0x5ce4b0: CheckStackOverflow
    //     0x5ce4b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ce4b4: cmp             SP, x16
    //     0x5ce4b8: b.ls            #0x5ce66c
    // 0x5ce4bc: tbnz            x4, #0x3f, #0x5ce648
    // 0x5ce4c0: r16 = 86400000000
    //     0x5ce4c0: ldr             x16, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x5ce4c4: mul             x5, x4, x16
    // 0x5ce4c8: sub             x6, x3, x5
    // 0x5ce4cc: stur            x6, [fp, #-0x20]
    // 0x5ce4d0: r0 = DateTime()
    //     0x5ce4d0: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5ce4d4: mov             x1, x0
    // 0x5ce4d8: ldur            x2, [fp, #-0x20]
    // 0x5ce4dc: r3 = false
    //     0x5ce4dc: add             x3, NULL, #0x30  ; false
    // 0x5ce4e0: stur            x0, [fp, #-0x40]
    // 0x5ce4e4: r0 = DateTime._withValue()
    //     0x5ce4e4: bl              #0x4e7190  ; [dart:core] DateTime::DateTime._withValue
    // 0x5ce4e8: ldur            x1, [fp, #-0x40]
    // 0x5ce4ec: r0 = _parts()
    //     0x5ce4ec: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x5ce4f0: mov             x2, x0
    // 0x5ce4f4: LoadField: r0 = r2->field_b
    //     0x5ce4f4: ldur            w0, [x2, #0xb]
    // 0x5ce4f8: r1 = LoadInt32Instr(r0)
    //     0x5ce4f8: sbfx            x1, x0, #1, #0x1f
    // 0x5ce4fc: mov             x0, x1
    // 0x5ce500: r1 = 6
    //     0x5ce500: mov             x1, #6
    // 0x5ce504: cmp             x1, x0
    // 0x5ce508: b.hs            #0x5ce674
    // 0x5ce50c: LoadField: r0 = r2->field_27
    //     0x5ce50c: ldur            w0, [x2, #0x27]
    // 0x5ce510: DecompressPointer r0
    //     0x5ce510: add             x0, x0, HEAP, lsl #32
    // 0x5ce514: stur            x0, [fp, #-0x48]
    // 0x5ce518: r2 = _ConstMap len:7
    //     0x5ce518: add             x2, PP, #0x20, lsl #12  ; [pp+0x20b38] Map<int, String>(7)
    //     0x5ce51c: ldr             x2, [x2, #0xb38]
    // 0x5ce520: add             x17, x2, #0x1b
    // 0x5ce524: ldar            w1, [x17]
    // 0x5ce528: DecompressPointer r1
    //     0x5ce528: add             x1, x1, HEAP, lsl #32
    // 0x5ce52c: cmp             w1, NULL
    // 0x5ce530: b.ne            #0x5ce53c
    // 0x5ce534: mov             x1, x2
    // 0x5ce538: r0 = _createIndex()
    //     0x5ce538: bl              #0x5c2db4  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::_createIndex
    // 0x5ce53c: ldur            x0, [fp, #-0x30]
    // 0x5ce540: ldur            x2, [fp, #-0x48]
    // 0x5ce544: r1 = _ConstMap len:7
    //     0x5ce544: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b38] Map<int, String>(7)
    //     0x5ce548: ldr             x1, [x1, #0xb38]
    // 0x5ce54c: r0 = _getValueOrData()
    //     0x5ce54c: bl              #0x92473c  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x5ce550: mov             x1, x0
    // 0x5ce554: ldur            x0, [fp, #-0x30]
    // 0x5ce558: cmp             w0, w1
    // 0x5ce55c: b.ne            #0x5ce568
    // 0x5ce560: r2 = Null
    //     0x5ce560: mov             x2, NULL
    // 0x5ce564: b               #0x5ce56c
    // 0x5ce568: mov             x2, x1
    // 0x5ce56c: stur            x2, [fp, #-0x48]
    // 0x5ce570: cmp             w2, NULL
    // 0x5ce574: b.eq            #0x5ce678
    // 0x5ce578: ldur            x1, [fp, #-0x40]
    // 0x5ce57c: r0 = toIso8601String()
    //     0x5ce57c: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5ce580: stur            x0, [fp, #-0x40]
    // 0x5ce584: LoadField: r1 = r0->field_7
    //     0x5ce584: ldur            w1, [x0, #7]
    // 0x5ce588: r3 = LoadInt32Instr(r1)
    //     0x5ce588: sbfx            x3, x1, #1, #0x1f
    // 0x5ce58c: r1 = 0
    //     0x5ce58c: mov             x1, #0
    // 0x5ce590: r2 = 20
    //     0x5ce590: mov             x2, #0x14
    // 0x5ce594: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x5ce594: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x5ce598: r0 = checkValidRange()
    //     0x5ce598: bl              #0x3d1be0  ; [dart:core] RangeError::checkValidRange
    // 0x5ce59c: ldur            x1, [fp, #-0x40]
    // 0x5ce5a0: mov             x3, x0
    // 0x5ce5a4: r2 = 0
    //     0x5ce5a4: mov             x2, #0
    // 0x5ce5a8: r0 = _substringUnchecked()
    //     0x5ce5a8: bl              #0x3d1af4  ; [dart:core] _StringBase::_substringUnchecked
    // 0x5ce5ac: r1 = Null
    //     0x5ce5ac: mov             x1, NULL
    // 0x5ce5b0: r2 = 4
    //     0x5ce5b0: mov             x2, #4
    // 0x5ce5b4: stur            x0, [fp, #-0x40]
    // 0x5ce5b8: r0 = AllocateArray()
    //     0x5ce5b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ce5bc: mov             x1, x0
    // 0x5ce5c0: ldur            x0, [fp, #-0x40]
    // 0x5ce5c4: StoreField: r1->field_f = r0
    //     0x5ce5c4: stur            w0, [x1, #0xf]
    // 0x5ce5c8: r16 = "sp"
    //     0x5ce5c8: add             x16, PP, #0x20, lsl #12  ; [pp+0x20d10] "sp"
    //     0x5ce5cc: ldr             x16, [x16, #0xd10]
    // 0x5ce5d0: StoreField: r1->field_13 = r16
    //     0x5ce5d0: stur            w16, [x1, #0x13]
    // 0x5ce5d4: str             x1, [SP]
    // 0x5ce5d8: r0 = _interpolate()
    //     0x5ce5d8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5ce5dc: mov             x1, x0
    // 0x5ce5e0: r0 = getInt()
    //     0x5ce5e0: bl              #0x5cea28  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::getInt
    // 0x5ce5e4: mov             x1, x0
    // 0x5ce5e8: stur            x1, [fp, #-0x40]
    // 0x5ce5ec: r0 = Await()
    //     0x5ce5ec: bl              #0x3dd188  ; AwaitStub
    // 0x5ce5f0: cmp             w0, NULL
    // 0x5ce5f4: b.ne            #0x5ce600
    // 0x5ce5f8: r3 = 0
    //     0x5ce5f8: mov             x3, #0
    // 0x5ce5fc: b               #0x5ce604
    // 0x5ce600: mov             x3, x0
    // 0x5ce604: ldur            x0, [fp, #-0x28]
    // 0x5ce608: ldur            x1, [fp, #-0x38]
    // 0x5ce60c: ldur            x2, [fp, #-0x48]
    // 0x5ce610: stur            x3, [fp, #-0x40]
    // 0x5ce614: r0 = _hashCode()
    //     0x5ce614: bl              #0x923370  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode::_hashCode
    // 0x5ce618: ldur            x1, [fp, #-0x38]
    // 0x5ce61c: ldur            x2, [fp, #-0x48]
    // 0x5ce620: ldur            x3, [fp, #-0x40]
    // 0x5ce624: mov             x5, x0
    // 0x5ce628: r0 = _set()
    //     0x5ce628: bl              #0x3cdbcc  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_set
    // 0x5ce62c: ldur            x0, [fp, #-0x28]
    // 0x5ce630: sub             x4, x0, #1
    // 0x5ce634: ldur            x0, [fp, #-0x38]
    // 0x5ce638: ldur            x2, [fp, #-0x30]
    // 0x5ce63c: r1 = _ConstMap len:7
    //     0x5ce63c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20b38] Map<int, String>(7)
    //     0x5ce640: ldr             x1, [x1, #0xb38]
    // 0x5ce644: b               #0x5ce4a8
    // 0x5ce648: ldur            x0, [fp, #-0x10]
    // 0x5ce64c: LoadField: r1 = r0->field_37
    //     0x5ce64c: ldur            w1, [x0, #0x37]
    // 0x5ce650: DecompressPointer r1
    //     0x5ce650: add             x1, x1, HEAP, lsl #32
    // 0x5ce654: ldur            x2, [fp, #-0x38]
    // 0x5ce658: r0 = value=()
    //     0x5ce658: bl              #0x5ce734  ; [package:get/get_rx/src/rx_types/rx_types.dart] _RxMap&MapMixin&NotifyManager&RxObjectMixin::value=
    // 0x5ce65c: r0 = Null
    //     0x5ce65c: mov             x0, NULL
    // 0x5ce660: r0 = ReturnAsyncNotFuture()
    //     0x5ce660: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ce664: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ce664: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ce668: b               #0x5ce460
    // 0x5ce66c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ce66c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ce670: b               #0x5ce4bc
    // 0x5ce674: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5ce674: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x5ce678: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ce678: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ getWalkingTime(/* No info */) async {
    // ** addr: 0x5cf440, size: 0x124
    // 0x5cf440: EnterFrame
    //     0x5cf440: stp             fp, lr, [SP, #-0x10]!
    //     0x5cf444: mov             fp, SP
    // 0x5cf448: AllocStack(0x28)
    //     0x5cf448: sub             SP, SP, #0x28
    // 0x5cf44c: SetupParameters(StepController this /* r1 => r1, fp-0x10 */)
    //     0x5cf44c: stur            NULL, [fp, #-8]
    //     0x5cf450: stur            x1, [fp, #-0x10]
    // 0x5cf454: CheckStackOverflow
    //     0x5cf454: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cf458: cmp             SP, x16
    //     0x5cf45c: b.ls            #0x5cf55c
    // 0x5cf460: InitAsync() -> Future<void?>
    //     0x5cf460: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5cf464: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cf468: r0 = DateTime()
    //     0x5cf468: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5cf46c: mov             x1, x0
    // 0x5cf470: r0 = false
    //     0x5cf470: add             x0, NULL, #0x30  ; false
    // 0x5cf474: stur            x1, [fp, #-0x18]
    // 0x5cf478: StoreField: r1->field_7 = r0
    //     0x5cf478: stur            w0, [x1, #7]
    // 0x5cf47c: r0 = _getCurrentMicros()
    //     0x5cf47c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5cf480: r1 = LoadInt32Instr(r0)
    //     0x5cf480: sbfx            x1, x0, #1, #0x1f
    //     0x5cf484: tbz             w0, #0, #0x5cf48c
    //     0x5cf488: ldur            x1, [x0, #7]
    // 0x5cf48c: ldur            x0, [fp, #-0x18]
    // 0x5cf490: StoreField: r0->field_b = r1
    //     0x5cf490: stur            x1, [x0, #0xb]
    // 0x5cf494: mov             x1, x0
    // 0x5cf498: r0 = toIso8601String()
    //     0x5cf498: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5cf49c: r16 = 20
    //     0x5cf49c: mov             x16, #0x14
    // 0x5cf4a0: str             x16, [SP]
    // 0x5cf4a4: mov             x1, x0
    // 0x5cf4a8: r2 = 0
    //     0x5cf4a8: mov             x2, #0
    // 0x5cf4ac: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x5cf4ac: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x5cf4b0: r0 = substring()
    //     0x5cf4b0: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x5cf4b4: r1 = Null
    //     0x5cf4b4: mov             x1, NULL
    // 0x5cf4b8: r2 = 4
    //     0x5cf4b8: mov             x2, #4
    // 0x5cf4bc: stur            x0, [fp, #-0x18]
    // 0x5cf4c0: r0 = AllocateArray()
    //     0x5cf4c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5cf4c4: mov             x1, x0
    // 0x5cf4c8: ldur            x0, [fp, #-0x18]
    // 0x5cf4cc: StoreField: r1->field_f = r0
    //     0x5cf4cc: stur            w0, [x1, #0xf]
    // 0x5cf4d0: r16 = "wt"
    //     0x5cf4d0: add             x16, PP, #0x20, lsl #12  ; [pp+0x20cf0] "wt"
    //     0x5cf4d4: ldr             x16, [x16, #0xcf0]
    // 0x5cf4d8: StoreField: r1->field_13 = r16
    //     0x5cf4d8: stur            w16, [x1, #0x13]
    // 0x5cf4dc: str             x1, [SP]
    // 0x5cf4e0: r0 = _interpolate()
    //     0x5cf4e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5cf4e4: mov             x1, x0
    // 0x5cf4e8: r0 = getInt()
    //     0x5cf4e8: bl              #0x5cea28  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::getInt
    // 0x5cf4ec: mov             x1, x0
    // 0x5cf4f0: stur            x1, [fp, #-0x18]
    // 0x5cf4f4: r0 = Await()
    //     0x5cf4f4: bl              #0x3dd188  ; AwaitStub
    // 0x5cf4f8: cmp             w0, NULL
    // 0x5cf4fc: b.ne            #0x5cf508
    // 0x5cf500: r1 = 0
    //     0x5cf500: mov             x1, #0
    // 0x5cf504: b               #0x5cf50c
    // 0x5cf508: mov             x1, x0
    // 0x5cf50c: ldur            x0, [fp, #-0x10]
    // 0x5cf510: LoadField: r2 = r0->field_33
    //     0x5cf510: ldur            w2, [x0, #0x33]
    // 0x5cf514: DecompressPointer r2
    //     0x5cf514: add             x2, x2, HEAP, lsl #32
    // 0x5cf518: stur            x2, [fp, #-0x18]
    // 0x5cf51c: r0 = LoadInt32Instr(r1)
    //     0x5cf51c: sbfx            x0, x1, #1, #0x1f
    //     0x5cf520: tbz             w1, #0, #0x5cf528
    //     0x5cf524: ldur            x0, [x1, #7]
    // 0x5cf528: r16 = 1000000
    //     0x5cf528: mov             x16, #0x4240
    //     0x5cf52c: movk            x16, #0xf, lsl #16
    // 0x5cf530: mul             x1, x0, x16
    // 0x5cf534: stur            x1, [fp, #-0x20]
    // 0x5cf538: r0 = Duration()
    //     0x5cf538: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x5cf53c: mov             x1, x0
    // 0x5cf540: ldur            x0, [fp, #-0x20]
    // 0x5cf544: StoreField: r1->field_7 = r0
    //     0x5cf544: stur            x0, [x1, #7]
    // 0x5cf548: mov             x2, x1
    // 0x5cf54c: ldur            x1, [fp, #-0x18]
    // 0x5cf550: r0 = value=()
    //     0x5cf550: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5cf554: r0 = Null
    //     0x5cf554: mov             x0, NULL
    // 0x5cf558: r0 = ReturnAsyncNotFuture()
    //     0x5cf558: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cf55c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cf55c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cf560: b               #0x5cf460
  }
  _ getBaseStep(/* No info */) async {
    // ** addr: 0x5cf6b4, size: 0xec
    // 0x5cf6b4: EnterFrame
    //     0x5cf6b4: stp             fp, lr, [SP, #-0x10]!
    //     0x5cf6b8: mov             fp, SP
    // 0x5cf6bc: AllocStack(0x20)
    //     0x5cf6bc: sub             SP, SP, #0x20
    // 0x5cf6c0: SetupParameters(StepController this /* r1 => r1, fp-0x10 */)
    //     0x5cf6c0: stur            NULL, [fp, #-8]
    //     0x5cf6c4: stur            x1, [fp, #-0x10]
    // 0x5cf6c8: CheckStackOverflow
    //     0x5cf6c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cf6cc: cmp             SP, x16
    //     0x5cf6d0: b.ls            #0x5cf798
    // 0x5cf6d4: InitAsync() -> Future<void?>
    //     0x5cf6d4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5cf6d8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cf6dc: r0 = DateTime()
    //     0x5cf6dc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5cf6e0: mov             x1, x0
    // 0x5cf6e4: r0 = false
    //     0x5cf6e4: add             x0, NULL, #0x30  ; false
    // 0x5cf6e8: stur            x1, [fp, #-0x18]
    // 0x5cf6ec: StoreField: r1->field_7 = r0
    //     0x5cf6ec: stur            w0, [x1, #7]
    // 0x5cf6f0: r0 = _getCurrentMicros()
    //     0x5cf6f0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5cf6f4: r1 = LoadInt32Instr(r0)
    //     0x5cf6f4: sbfx            x1, x0, #1, #0x1f
    //     0x5cf6f8: tbz             w0, #0, #0x5cf700
    //     0x5cf6fc: ldur            x1, [x0, #7]
    // 0x5cf700: ldur            x0, [fp, #-0x18]
    // 0x5cf704: StoreField: r0->field_b = r1
    //     0x5cf704: stur            x1, [x0, #0xb]
    // 0x5cf708: mov             x1, x0
    // 0x5cf70c: r0 = toIso8601String()
    //     0x5cf70c: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5cf710: r16 = 20
    //     0x5cf710: mov             x16, #0x14
    // 0x5cf714: str             x16, [SP]
    // 0x5cf718: mov             x1, x0
    // 0x5cf71c: r2 = 0
    //     0x5cf71c: mov             x2, #0
    // 0x5cf720: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x5cf720: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x5cf724: r0 = substring()
    //     0x5cf724: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x5cf728: r1 = Null
    //     0x5cf728: mov             x1, NULL
    // 0x5cf72c: r2 = 4
    //     0x5cf72c: mov             x2, #4
    // 0x5cf730: stur            x0, [fp, #-0x18]
    // 0x5cf734: r0 = AllocateArray()
    //     0x5cf734: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5cf738: mov             x1, x0
    // 0x5cf73c: ldur            x0, [fp, #-0x18]
    // 0x5cf740: StoreField: r1->field_f = r0
    //     0x5cf740: stur            w0, [x1, #0xf]
    // 0x5cf744: r16 = "bsp"
    //     0x5cf744: add             x16, PP, #0x20, lsl #12  ; [pp+0x20d20] "bsp"
    //     0x5cf748: ldr             x16, [x16, #0xd20]
    // 0x5cf74c: StoreField: r1->field_13 = r16
    //     0x5cf74c: stur            w16, [x1, #0x13]
    // 0x5cf750: str             x1, [SP]
    // 0x5cf754: r0 = _interpolate()
    //     0x5cf754: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5cf758: mov             x1, x0
    // 0x5cf75c: r0 = getInt()
    //     0x5cf75c: bl              #0x5cea28  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::getInt
    // 0x5cf760: mov             x1, x0
    // 0x5cf764: stur            x1, [fp, #-0x18]
    // 0x5cf768: r0 = Await()
    //     0x5cf768: bl              #0x3dd188  ; AwaitStub
    // 0x5cf76c: ldur            x1, [fp, #-0x10]
    // 0x5cf770: StoreField: r1->field_1b = r0
    //     0x5cf770: stur            w0, [x1, #0x1b]
    //     0x5cf774: tbz             w0, #0, #0x5cf790
    //     0x5cf778: ldurb           w16, [x1, #-1]
    //     0x5cf77c: ldurb           w17, [x0, #-1]
    //     0x5cf780: and             x16, x17, x16, lsr #2
    //     0x5cf784: tst             x16, HEAP, lsr #32
    //     0x5cf788: b.eq            #0x5cf790
    //     0x5cf78c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5cf790: r0 = Null
    //     0x5cf790: mov             x0, NULL
    // 0x5cf794: r0 = ReturnAsyncNotFuture()
    //     0x5cf794: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cf798: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cf798: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cf79c: b               #0x5cf6d4
  }
  [closure] void onPedestrianStatusChanged(dynamic, PedestrianStatus) {
    // ** addr: 0x5cf7a0, size: 0x3c
    // 0x5cf7a0: EnterFrame
    //     0x5cf7a0: stp             fp, lr, [SP, #-0x10]!
    //     0x5cf7a4: mov             fp, SP
    // 0x5cf7a8: ldr             x0, [fp, #0x18]
    // 0x5cf7ac: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5cf7ac: ldur            w1, [x0, #0x17]
    // 0x5cf7b0: DecompressPointer r1
    //     0x5cf7b0: add             x1, x1, HEAP, lsl #32
    // 0x5cf7b4: CheckStackOverflow
    //     0x5cf7b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cf7b8: cmp             SP, x16
    //     0x5cf7bc: b.ls            #0x5cf7d4
    // 0x5cf7c0: ldr             x2, [fp, #0x10]
    // 0x5cf7c4: r0 = onPedestrianStatusChanged()
    //     0x5cf7c4: bl              #0x5cf7dc  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::onPedestrianStatusChanged
    // 0x5cf7c8: LeaveFrame
    //     0x5cf7c8: mov             SP, fp
    //     0x5cf7cc: ldp             fp, lr, [SP], #0x10
    // 0x5cf7d0: ret
    //     0x5cf7d0: ret             
    // 0x5cf7d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cf7d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cf7d8: b               #0x5cf7c0
  }
  _ onPedestrianStatusChanged(/* No info */) {
    // ** addr: 0x5cf7dc, size: 0x128
    // 0x5cf7dc: EnterFrame
    //     0x5cf7dc: stp             fp, lr, [SP, #-0x10]!
    //     0x5cf7e0: mov             fp, SP
    // 0x5cf7e4: AllocStack(0x20)
    //     0x5cf7e4: sub             SP, SP, #0x20
    // 0x5cf7e8: SetupParameters(StepController this /* r1 => r3, fp-0x8 */, dynamic _ /* r2 => r0, fp-0x10 */)
    //     0x5cf7e8: mov             x3, x1
    //     0x5cf7ec: mov             x0, x2
    //     0x5cf7f0: stur            x1, [fp, #-8]
    //     0x5cf7f4: stur            x2, [fp, #-0x10]
    // 0x5cf7f8: CheckStackOverflow
    //     0x5cf7f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cf7fc: cmp             SP, x16
    //     0x5cf800: b.ls            #0x5cf8f0
    // 0x5cf804: LoadField: r1 = r3->field_23
    //     0x5cf804: ldur            w1, [x3, #0x23]
    // 0x5cf808: DecompressPointer r1
    //     0x5cf808: add             x1, x1, HEAP, lsl #32
    // 0x5cf80c: LoadField: r2 = r0->field_b
    //     0x5cf80c: ldur            w2, [x0, #0xb]
    // 0x5cf810: DecompressPointer r2
    //     0x5cf810: add             x2, x2, HEAP, lsl #32
    // 0x5cf814: r0 = value=()
    //     0x5cf814: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5cf818: ldur            x0, [fp, #-8]
    // 0x5cf81c: LoadField: r1 = r0->field_27
    //     0x5cf81c: ldur            w1, [x0, #0x27]
    // 0x5cf820: DecompressPointer r1
    //     0x5cf820: add             x1, x1, HEAP, lsl #32
    // 0x5cf824: ldur            x3, [fp, #-0x10]
    // 0x5cf828: LoadField: r2 = r3->field_7
    //     0x5cf828: ldur            w2, [x3, #7]
    // 0x5cf82c: DecompressPointer r2
    //     0x5cf82c: add             x2, x2, HEAP, lsl #32
    // 0x5cf830: r16 = Sentinel
    //     0x5cf830: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5cf834: cmp             w2, w16
    // 0x5cf838: b.eq            #0x5cf8f8
    // 0x5cf83c: r0 = value=()
    //     0x5cf83c: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5cf840: ldur            x0, [fp, #-0x10]
    // 0x5cf844: LoadField: r1 = r0->field_b
    //     0x5cf844: ldur            w1, [x0, #0xb]
    // 0x5cf848: DecompressPointer r1
    //     0x5cf848: add             x1, x1, HEAP, lsl #32
    // 0x5cf84c: r0 = LoadClassIdInstr(r1)
    //     0x5cf84c: ldur            x0, [x1, #-1]
    //     0x5cf850: ubfx            x0, x0, #0xc, #0x14
    // 0x5cf854: r16 = "walking"
    //     0x5cf854: add             x16, PP, #0x20, lsl #12  ; [pp+0x20cd8] "walking"
    //     0x5cf858: ldr             x16, [x16, #0xcd8]
    // 0x5cf85c: stp             x16, x1, [SP]
    // 0x5cf860: mov             lr, x0
    // 0x5cf864: ldr             lr, [x21, lr, lsl #3]
    // 0x5cf868: blr             lr
    // 0x5cf86c: tbnz            w0, #4, #0x5cf8d8
    // 0x5cf870: ldur            x1, [fp, #-8]
    // 0x5cf874: LoadField: r0 = r1->field_43
    //     0x5cf874: ldur            w0, [x1, #0x43]
    // 0x5cf878: DecompressPointer r0
    //     0x5cf878: add             x0, x0, HEAP, lsl #32
    // 0x5cf87c: cmp             w0, NULL
    // 0x5cf880: b.ne            #0x5cf8d0
    // 0x5cf884: r0 = DateTime()
    //     0x5cf884: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5cf888: mov             x1, x0
    // 0x5cf88c: r0 = false
    //     0x5cf88c: add             x0, NULL, #0x30  ; false
    // 0x5cf890: stur            x1, [fp, #-0x10]
    // 0x5cf894: StoreField: r1->field_7 = r0
    //     0x5cf894: stur            w0, [x1, #7]
    // 0x5cf898: r0 = _getCurrentMicros()
    //     0x5cf898: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5cf89c: r1 = LoadInt32Instr(r0)
    //     0x5cf89c: sbfx            x1, x0, #1, #0x1f
    //     0x5cf8a0: tbz             w0, #0, #0x5cf8a8
    //     0x5cf8a4: ldur            x1, [x0, #7]
    // 0x5cf8a8: ldur            x0, [fp, #-0x10]
    // 0x5cf8ac: StoreField: r0->field_b = r1
    //     0x5cf8ac: stur            x1, [x0, #0xb]
    // 0x5cf8b0: ldur            x1, [fp, #-8]
    // 0x5cf8b4: StoreField: r1->field_43 = r0
    //     0x5cf8b4: stur            w0, [x1, #0x43]
    //     0x5cf8b8: ldurb           w16, [x1, #-1]
    //     0x5cf8bc: ldurb           w17, [x0, #-1]
    //     0x5cf8c0: and             x16, x17, x16, lsr #2
    //     0x5cf8c4: tst             x16, HEAP, lsr #32
    //     0x5cf8c8: b.eq            #0x5cf8d0
    //     0x5cf8cc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5cf8d0: r0 = _startWalkingTimer()
    //     0x5cf8d0: bl              #0x5cf964  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::_startWalkingTimer
    // 0x5cf8d4: b               #0x5cf8e0
    // 0x5cf8d8: ldur            x1, [fp, #-8]
    // 0x5cf8dc: r0 = _stopWalkingTimer()
    //     0x5cf8dc: bl              #0x5cf904  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::_stopWalkingTimer
    // 0x5cf8e0: r0 = Null
    //     0x5cf8e0: mov             x0, NULL
    // 0x5cf8e4: LeaveFrame
    //     0x5cf8e4: mov             SP, fp
    //     0x5cf8e8: ldp             fp, lr, [SP], #0x10
    // 0x5cf8ec: ret
    //     0x5cf8ec: ret             
    // 0x5cf8f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cf8f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cf8f4: b               #0x5cf804
    // 0x5cf8f8: r9 = _timeStamp
    //     0x5cf8f8: add             x9, PP, #0x20, lsl #12  ; [pp+0x20ce0] Field <PedestrianStatus._timeStamp@890380129>: late (offset: 0x8)
    //     0x5cf8fc: ldr             x9, [x9, #0xce0]
    // 0x5cf900: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x5cf900: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _stopWalkingTimer(/* No info */) {
    // ** addr: 0x5cf904, size: 0x60
    // 0x5cf904: EnterFrame
    //     0x5cf904: stp             fp, lr, [SP, #-0x10]!
    //     0x5cf908: mov             fp, SP
    // 0x5cf90c: AllocStack(0x8)
    //     0x5cf90c: sub             SP, SP, #8
    // 0x5cf910: SetupParameters(StepController this /* r1 => r0, fp-0x8 */)
    //     0x5cf910: mov             x0, x1
    //     0x5cf914: stur            x1, [fp, #-8]
    // 0x5cf918: CheckStackOverflow
    //     0x5cf918: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cf91c: cmp             SP, x16
    //     0x5cf920: b.ls            #0x5cf95c
    // 0x5cf924: LoadField: r1 = r0->field_47
    //     0x5cf924: ldur            w1, [x0, #0x47]
    // 0x5cf928: DecompressPointer r1
    //     0x5cf928: add             x1, x1, HEAP, lsl #32
    // 0x5cf92c: cmp             w1, NULL
    // 0x5cf930: b.ne            #0x5cf93c
    // 0x5cf934: mov             x1, x0
    // 0x5cf938: b               #0x5cf944
    // 0x5cf93c: r0 = cancel()
    //     0x5cf93c: bl              #0x3d07c4  ; [dart:isolate] _Timer::cancel
    // 0x5cf940: ldur            x1, [fp, #-8]
    // 0x5cf944: StoreField: r1->field_47 = rNULL
    //     0x5cf944: stur            NULL, [x1, #0x47]
    // 0x5cf948: StoreField: r1->field_43 = rNULL
    //     0x5cf948: stur            NULL, [x1, #0x43]
    // 0x5cf94c: r0 = Null
    //     0x5cf94c: mov             x0, NULL
    // 0x5cf950: LeaveFrame
    //     0x5cf950: mov             SP, fp
    //     0x5cf954: ldp             fp, lr, [SP], #0x10
    // 0x5cf958: ret
    //     0x5cf958: ret             
    // 0x5cf95c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cf95c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cf960: b               #0x5cf924
  }
  _ _startWalkingTimer(/* No info */) {
    // ** addr: 0x5cf964, size: 0x98
    // 0x5cf964: EnterFrame
    //     0x5cf964: stp             fp, lr, [SP, #-0x10]!
    //     0x5cf968: mov             fp, SP
    // 0x5cf96c: AllocStack(0x8)
    //     0x5cf96c: sub             SP, SP, #8
    // 0x5cf970: SetupParameters(StepController this /* r1 => r1, fp-0x8 */)
    //     0x5cf970: stur            x1, [fp, #-8]
    // 0x5cf974: CheckStackOverflow
    //     0x5cf974: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cf978: cmp             SP, x16
    //     0x5cf97c: b.ls            #0x5cf9f4
    // 0x5cf980: r1 = 1
    //     0x5cf980: mov             x1, #1
    // 0x5cf984: r0 = AllocateContext()
    //     0x5cf984: bl              #0x927010  ; AllocateContextStub
    // 0x5cf988: mov             x1, x0
    // 0x5cf98c: ldur            x0, [fp, #-8]
    // 0x5cf990: StoreField: r1->field_f = r0
    //     0x5cf990: stur            w0, [x1, #0xf]
    // 0x5cf994: LoadField: r2 = r0->field_47
    //     0x5cf994: ldur            w2, [x0, #0x47]
    // 0x5cf998: DecompressPointer r2
    //     0x5cf998: add             x2, x2, HEAP, lsl #32
    // 0x5cf99c: cmp             w2, NULL
    // 0x5cf9a0: b.ne            #0x5cf9e4
    // 0x5cf9a4: mov             x2, x1
    // 0x5cf9a8: r1 = Function '<anonymous closure>':.
    //     0x5cf9a8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20ce8] AnonymousClosure: (0x5cf9fc), in [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::_startWalkingTimer (0x5cf964)
    //     0x5cf9ac: ldr             x1, [x1, #0xce8]
    // 0x5cf9b0: r0 = AllocateClosure()
    //     0x5cf9b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5cf9b4: mov             x3, x0
    // 0x5cf9b8: r1 = Null
    //     0x5cf9b8: mov             x1, NULL
    // 0x5cf9bc: r2 = Instance_Duration
    //     0x5cf9bc: ldr             x2, [PP, #0x540]  ; [pp+0x540] Obj!Duration@a2dc41
    // 0x5cf9c0: r0 = Timer.periodic()
    //     0x5cf9c0: bl              #0x486c0c  ; [dart:async] Timer::Timer.periodic
    // 0x5cf9c4: ldur            x1, [fp, #-8]
    // 0x5cf9c8: StoreField: r1->field_47 = r0
    //     0x5cf9c8: stur            w0, [x1, #0x47]
    //     0x5cf9cc: ldurb           w16, [x1, #-1]
    //     0x5cf9d0: ldurb           w17, [x0, #-1]
    //     0x5cf9d4: and             x16, x17, x16, lsr #2
    //     0x5cf9d8: tst             x16, HEAP, lsr #32
    //     0x5cf9dc: b.eq            #0x5cf9e4
    //     0x5cf9e0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5cf9e4: r0 = Null
    //     0x5cf9e4: mov             x0, NULL
    // 0x5cf9e8: LeaveFrame
    //     0x5cf9e8: mov             SP, fp
    //     0x5cf9ec: ldp             fp, lr, [SP], #0x10
    // 0x5cf9f0: ret
    //     0x5cf9f0: ret             
    // 0x5cf9f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cf9f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cf9f8: b               #0x5cf980
  }
  [closure] void <anonymous closure>(dynamic, Timer) {
    // ** addr: 0x5cf9fc, size: 0xb4
    // 0x5cf9fc: EnterFrame
    //     0x5cf9fc: stp             fp, lr, [SP, #-0x10]!
    //     0x5cfa00: mov             fp, SP
    // 0x5cfa04: AllocStack(0x18)
    //     0x5cfa04: sub             SP, SP, #0x18
    // 0x5cfa08: SetupParameters([dynamic _ /* r0 */])
    //     0x5cfa08: ldr             x0, [fp, #0x18]
    //     0x5cfa0c: ldur            w2, [x0, #0x17]
    //     0x5cfa10: add             x2, x2, HEAP, lsl #32
    //     0x5cfa14: stur            x2, [fp, #-0x10]
    // 0x5cfa18: CheckStackOverflow
    //     0x5cfa18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cfa1c: cmp             SP, x16
    //     0x5cfa20: b.ls            #0x5cfaa8
    // 0x5cfa24: LoadField: r0 = r2->field_f
    //     0x5cfa24: ldur            w0, [x2, #0xf]
    // 0x5cfa28: DecompressPointer r0
    //     0x5cfa28: add             x0, x0, HEAP, lsl #32
    // 0x5cfa2c: LoadField: r3 = r0->field_33
    //     0x5cfa2c: ldur            w3, [x0, #0x33]
    // 0x5cfa30: DecompressPointer r3
    //     0x5cfa30: add             x3, x3, HEAP, lsl #32
    // 0x5cfa34: mov             x1, x3
    // 0x5cfa38: stur            x3, [fp, #-8]
    // 0x5cfa3c: r0 = value()
    //     0x5cfa3c: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x5cfa40: LoadField: r1 = r0->field_7
    //     0x5cfa40: ldur            x1, [x0, #7]
    // 0x5cfa44: r17 = 1000000
    //     0x5cfa44: mov             x17, #0x4240
    //     0x5cfa48: movk            x17, #0xf, lsl #16
    // 0x5cfa4c: add             x0, x1, x17
    // 0x5cfa50: stur            x0, [fp, #-0x18]
    // 0x5cfa54: r0 = Duration()
    //     0x5cfa54: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x5cfa58: mov             x1, x0
    // 0x5cfa5c: ldur            x0, [fp, #-0x18]
    // 0x5cfa60: StoreField: r1->field_7 = r0
    //     0x5cfa60: stur            x0, [x1, #7]
    // 0x5cfa64: mov             x2, x1
    // 0x5cfa68: ldur            x1, [fp, #-8]
    // 0x5cfa6c: r0 = value=()
    //     0x5cfa6c: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5cfa70: ldur            x0, [fp, #-0x10]
    // 0x5cfa74: LoadField: r2 = r0->field_f
    //     0x5cfa74: ldur            w2, [x0, #0xf]
    // 0x5cfa78: DecompressPointer r2
    //     0x5cfa78: add             x2, x2, HEAP, lsl #32
    // 0x5cfa7c: stur            x2, [fp, #-8]
    // 0x5cfa80: LoadField: r1 = r2->field_33
    //     0x5cfa80: ldur            w1, [x2, #0x33]
    // 0x5cfa84: DecompressPointer r1
    //     0x5cfa84: add             x1, x1, HEAP, lsl #32
    // 0x5cfa88: r0 = value()
    //     0x5cfa88: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x5cfa8c: ldur            x1, [fp, #-8]
    // 0x5cfa90: mov             x2, x0
    // 0x5cfa94: r0 = saveWalkingTime()
    //     0x5cfa94: bl              #0x5cfab0  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::saveWalkingTime
    // 0x5cfa98: r0 = Null
    //     0x5cfa98: mov             x0, NULL
    // 0x5cfa9c: LeaveFrame
    //     0x5cfa9c: mov             SP, fp
    //     0x5cfaa0: ldp             fp, lr, [SP], #0x10
    // 0x5cfaa4: ret
    //     0x5cfaa4: ret             
    // 0x5cfaa8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cfaa8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cfaac: b               #0x5cfa24
  }
  _ saveWalkingTime(/* No info */) async {
    // ** addr: 0x5cfab0, size: 0xe4
    // 0x5cfab0: EnterFrame
    //     0x5cfab0: stp             fp, lr, [SP, #-0x10]!
    //     0x5cfab4: mov             fp, SP
    // 0x5cfab8: AllocStack(0x28)
    //     0x5cfab8: sub             SP, SP, #0x28
    // 0x5cfabc: SetupParameters(StepController this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x5cfabc: stur            NULL, [fp, #-8]
    //     0x5cfac0: stur            x1, [fp, #-0x10]
    //     0x5cfac4: stur            x2, [fp, #-0x18]
    // 0x5cfac8: CheckStackOverflow
    //     0x5cfac8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cfacc: cmp             SP, x16
    //     0x5cfad0: b.ls            #0x5cfb8c
    // 0x5cfad4: InitAsync() -> Future<void?>
    //     0x5cfad4: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5cfad8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5cfadc: r0 = DateTime()
    //     0x5cfadc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5cfae0: mov             x1, x0
    // 0x5cfae4: r0 = false
    //     0x5cfae4: add             x0, NULL, #0x30  ; false
    // 0x5cfae8: stur            x1, [fp, #-0x20]
    // 0x5cfaec: StoreField: r1->field_7 = r0
    //     0x5cfaec: stur            w0, [x1, #7]
    // 0x5cfaf0: r0 = _getCurrentMicros()
    //     0x5cfaf0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5cfaf4: r1 = LoadInt32Instr(r0)
    //     0x5cfaf4: sbfx            x1, x0, #1, #0x1f
    //     0x5cfaf8: tbz             w0, #0, #0x5cfb00
    //     0x5cfafc: ldur            x1, [x0, #7]
    // 0x5cfb00: ldur            x0, [fp, #-0x20]
    // 0x5cfb04: StoreField: r0->field_b = r1
    //     0x5cfb04: stur            x1, [x0, #0xb]
    // 0x5cfb08: mov             x1, x0
    // 0x5cfb0c: r0 = toIso8601String()
    //     0x5cfb0c: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5cfb10: r16 = 20
    //     0x5cfb10: mov             x16, #0x14
    // 0x5cfb14: str             x16, [SP]
    // 0x5cfb18: mov             x1, x0
    // 0x5cfb1c: r2 = 0
    //     0x5cfb1c: mov             x2, #0
    // 0x5cfb20: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x5cfb20: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x5cfb24: r0 = substring()
    //     0x5cfb24: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x5cfb28: r1 = Null
    //     0x5cfb28: mov             x1, NULL
    // 0x5cfb2c: r2 = 4
    //     0x5cfb2c: mov             x2, #4
    // 0x5cfb30: stur            x0, [fp, #-0x20]
    // 0x5cfb34: r0 = AllocateArray()
    //     0x5cfb34: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5cfb38: mov             x1, x0
    // 0x5cfb3c: ldur            x0, [fp, #-0x20]
    // 0x5cfb40: StoreField: r1->field_f = r0
    //     0x5cfb40: stur            w0, [x1, #0xf]
    // 0x5cfb44: r16 = "wt"
    //     0x5cfb44: add             x16, PP, #0x20, lsl #12  ; [pp+0x20cf0] "wt"
    //     0x5cfb48: ldr             x16, [x16, #0xcf0]
    // 0x5cfb4c: StoreField: r1->field_13 = r16
    //     0x5cfb4c: stur            w16, [x1, #0x13]
    // 0x5cfb50: str             x1, [SP]
    // 0x5cfb54: r0 = _interpolate()
    //     0x5cfb54: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5cfb58: mov             x1, x0
    // 0x5cfb5c: ldur            x0, [fp, #-0x18]
    // 0x5cfb60: LoadField: r2 = r0->field_7
    //     0x5cfb60: ldur            x2, [x0, #7]
    // 0x5cfb64: r0 = 1000000
    //     0x5cfb64: mov             x0, #0x4240
    //     0x5cfb68: movk            x0, #0xf, lsl #16
    // 0x5cfb6c: sdiv            x3, x2, x0
    // 0x5cfb70: mov             x2, x3
    // 0x5cfb74: r0 = saveInt()
    //     0x5cfb74: bl              #0x5cfb94  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::saveInt
    // 0x5cfb78: mov             x1, x0
    // 0x5cfb7c: stur            x1, [fp, #-0x18]
    // 0x5cfb80: r0 = Await()
    //     0x5cfb80: bl              #0x3dd188  ; AwaitStub
    // 0x5cfb84: r0 = Null
    //     0x5cfb84: mov             x0, NULL
    // 0x5cfb88: r0 = ReturnAsyncNotFuture()
    //     0x5cfb88: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5cfb8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cfb8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cfb90: b               #0x5cfad4
  }
  [closure] void onStepCount(dynamic, StepCount) {
    // ** addr: 0x5cfea4, size: 0x3c
    // 0x5cfea4: EnterFrame
    //     0x5cfea4: stp             fp, lr, [SP, #-0x10]!
    //     0x5cfea8: mov             fp, SP
    // 0x5cfeac: ldr             x0, [fp, #0x18]
    // 0x5cfeb0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5cfeb0: ldur            w1, [x0, #0x17]
    // 0x5cfeb4: DecompressPointer r1
    //     0x5cfeb4: add             x1, x1, HEAP, lsl #32
    // 0x5cfeb8: CheckStackOverflow
    //     0x5cfeb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cfebc: cmp             SP, x16
    //     0x5cfec0: b.ls            #0x5cfed8
    // 0x5cfec4: ldr             x2, [fp, #0x10]
    // 0x5cfec8: r0 = onStepCount()
    //     0x5cfec8: bl              #0x5cfee0  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::onStepCount
    // 0x5cfecc: LeaveFrame
    //     0x5cfecc: mov             SP, fp
    //     0x5cfed0: ldp             fp, lr, [SP], #0x10
    // 0x5cfed4: ret
    //     0x5cfed4: ret             
    // 0x5cfed8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5cfed8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5cfedc: b               #0x5cfec4
  }
  _ onStepCount(/* No info */) {
    // ** addr: 0x5cfee0, size: 0x2c8
    // 0x5cfee0: EnterFrame
    //     0x5cfee0: stp             fp, lr, [SP, #-0x10]!
    //     0x5cfee4: mov             fp, SP
    // 0x5cfee8: AllocStack(0x20)
    //     0x5cfee8: sub             SP, SP, #0x20
    // 0x5cfeec: SetupParameters(StepController this /* r1 => r4, fp-0x8 */, dynamic _ /* r2 => r3, fp-0x10 */)
    //     0x5cfeec: mov             x4, x1
    //     0x5cfef0: mov             x3, x2
    //     0x5cfef4: stur            x1, [fp, #-8]
    //     0x5cfef8: stur            x2, [fp, #-0x10]
    // 0x5cfefc: CheckStackOverflow
    //     0x5cfefc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5cff00: cmp             SP, x16
    //     0x5cff04: b.ls            #0x5d016c
    // 0x5cff08: LoadField: r0 = r4->field_1b
    //     0x5cff08: ldur            w0, [x4, #0x1b]
    // 0x5cff0c: DecompressPointer r0
    //     0x5cff0c: add             x0, x0, HEAP, lsl #32
    // 0x5cff10: cmp             w0, NULL
    // 0x5cff14: b.ne            #0x5cff58
    // 0x5cff18: LoadField: r2 = r3->field_b
    //     0x5cff18: ldur            x2, [x3, #0xb]
    // 0x5cff1c: r0 = BoxInt64Instr(r2)
    //     0x5cff1c: sbfiz           x0, x2, #1, #0x1f
    //     0x5cff20: cmp             x2, x0, asr #1
    //     0x5cff24: b.eq            #0x5cff30
    //     0x5cff28: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5cff2c: stur            x2, [x0, #7]
    // 0x5cff30: StoreField: r4->field_1b = r0
    //     0x5cff30: stur            w0, [x4, #0x1b]
    //     0x5cff34: tbz             w0, #0, #0x5cff50
    //     0x5cff38: ldurb           w16, [x4, #-1]
    //     0x5cff3c: ldurb           w17, [x0, #-1]
    //     0x5cff40: and             x16, x17, x16, lsr #2
    //     0x5cff44: tst             x16, HEAP, lsr #32
    //     0x5cff48: b.eq            #0x5cff50
    //     0x5cff4c: bl              #0x9267f0  ; WriteBarrierWrappersStub
    // 0x5cff50: mov             x1, x4
    // 0x5cff54: r0 = saveBaseStep()
    //     0x5cff54: bl              #0x5d01a8  ; [package:umrem_demo/features/adimsayar/step_controller.dart] StepController::saveBaseStep
    // 0x5cff58: ldur            x4, [fp, #-8]
    // 0x5cff5c: ldur            x3, [fp, #-0x10]
    // 0x5cff60: LoadField: r2 = r4->field_1f
    //     0x5cff60: ldur            w2, [x4, #0x1f]
    // 0x5cff64: DecompressPointer r2
    //     0x5cff64: add             x2, x2, HEAP, lsl #32
    // 0x5cff68: LoadField: r0 = r3->field_b
    //     0x5cff68: ldur            x0, [x3, #0xb]
    // 0x5cff6c: LoadField: r1 = r4->field_1b
    //     0x5cff6c: ldur            w1, [x4, #0x1b]
    // 0x5cff70: DecompressPointer r1
    //     0x5cff70: add             x1, x1, HEAP, lsl #32
    // 0x5cff74: cmp             w1, NULL
    // 0x5cff78: b.ne            #0x5cff84
    // 0x5cff7c: r1 = 0
    //     0x5cff7c: mov             x1, #0
    // 0x5cff80: b               #0x5cff94
    // 0x5cff84: r5 = LoadInt32Instr(r1)
    //     0x5cff84: sbfx            x5, x1, #1, #0x1f
    //     0x5cff88: tbz             w1, #0, #0x5cff90
    //     0x5cff8c: ldur            x5, [x1, #7]
    // 0x5cff90: mov             x1, x5
    // 0x5cff94: sub             x5, x0, x1
    // 0x5cff98: r0 = BoxInt64Instr(r5)
    //     0x5cff98: sbfiz           x0, x5, #1, #0x1f
    //     0x5cff9c: cmp             x5, x0, asr #1
    //     0x5cffa0: b.eq            #0x5cffac
    //     0x5cffa4: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5cffa8: stur            x5, [x0, #7]
    // 0x5cffac: mov             x1, x2
    // 0x5cffb0: mov             x2, x0
    // 0x5cffb4: r0 = value=()
    //     0x5cffb4: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5cffb8: r0 = DateTime()
    //     0x5cffb8: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5cffbc: mov             x1, x0
    // 0x5cffc0: r0 = false
    //     0x5cffc0: add             x0, NULL, #0x30  ; false
    // 0x5cffc4: stur            x1, [fp, #-0x18]
    // 0x5cffc8: StoreField: r1->field_7 = r0
    //     0x5cffc8: stur            w0, [x1, #7]
    // 0x5cffcc: r0 = _getCurrentMicros()
    //     0x5cffcc: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5cffd0: r1 = LoadInt32Instr(r0)
    //     0x5cffd0: sbfx            x1, x0, #1, #0x1f
    //     0x5cffd4: tbz             w0, #0, #0x5cffdc
    //     0x5cffd8: ldur            x1, [x0, #7]
    // 0x5cffdc: ldur            x0, [fp, #-0x18]
    // 0x5cffe0: StoreField: r0->field_b = r1
    //     0x5cffe0: stur            x1, [x0, #0xb]
    // 0x5cffe4: mov             x1, x0
    // 0x5cffe8: r0 = toIso8601String()
    //     0x5cffe8: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5cffec: r16 = 20
    //     0x5cffec: mov             x16, #0x14
    // 0x5cfff0: str             x16, [SP]
    // 0x5cfff4: mov             x1, x0
    // 0x5cfff8: r2 = 0
    //     0x5cfff8: mov             x2, #0
    // 0x5cfffc: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x5cfffc: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x5d0000: r0 = substring()
    //     0x5d0000: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x5d0004: r1 = Null
    //     0x5d0004: mov             x1, NULL
    // 0x5d0008: r2 = 4
    //     0x5d0008: mov             x2, #4
    // 0x5d000c: stur            x0, [fp, #-0x18]
    // 0x5d0010: r0 = AllocateArray()
    //     0x5d0010: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5d0014: mov             x1, x0
    // 0x5d0018: ldur            x0, [fp, #-0x18]
    // 0x5d001c: StoreField: r1->field_f = r0
    //     0x5d001c: stur            w0, [x1, #0xf]
    // 0x5d0020: r16 = "sp"
    //     0x5d0020: add             x16, PP, #0x20, lsl #12  ; [pp+0x20d10] "sp"
    //     0x5d0024: ldr             x16, [x16, #0xd10]
    // 0x5d0028: StoreField: r1->field_13 = r16
    //     0x5d0028: stur            w16, [x1, #0x13]
    // 0x5d002c: str             x1, [SP]
    // 0x5d0030: r0 = _interpolate()
    //     0x5d0030: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5d0034: mov             x2, x0
    // 0x5d0038: ldur            x0, [fp, #-8]
    // 0x5d003c: stur            x2, [fp, #-0x18]
    // 0x5d0040: LoadField: r1 = r0->field_1f
    //     0x5d0040: ldur            w1, [x0, #0x1f]
    // 0x5d0044: DecompressPointer r1
    //     0x5d0044: add             x1, x1, HEAP, lsl #32
    // 0x5d0048: r0 = value()
    //     0x5d0048: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x5d004c: r2 = LoadInt32Instr(r0)
    //     0x5d004c: sbfx            x2, x0, #1, #0x1f
    //     0x5d0050: tbz             w0, #0, #0x5d0058
    //     0x5d0054: ldur            x2, [x0, #7]
    // 0x5d0058: ldur            x1, [fp, #-0x18]
    // 0x5d005c: r0 = saveInt()
    //     0x5d005c: bl              #0x5cfb94  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::saveInt
    // 0x5d0060: ldur            x0, [fp, #-8]
    // 0x5d0064: LoadField: r2 = r0->field_2b
    //     0x5d0064: ldur            w2, [x0, #0x2b]
    // 0x5d0068: DecompressPointer r2
    //     0x5d0068: add             x2, x2, HEAP, lsl #32
    // 0x5d006c: stur            x2, [fp, #-0x18]
    // 0x5d0070: LoadField: r1 = r0->field_1f
    //     0x5d0070: ldur            w1, [x0, #0x1f]
    // 0x5d0074: DecompressPointer r1
    //     0x5d0074: add             x1, x1, HEAP, lsl #32
    // 0x5d0078: r0 = value()
    //     0x5d0078: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x5d007c: r1 = LoadInt32Instr(r0)
    //     0x5d007c: sbfx            x1, x0, #1, #0x1f
    //     0x5d0080: tbz             w0, #0, #0x5d0088
    //     0x5d0084: ldur            x1, [x0, #7]
    // 0x5d0088: scvtf           d0, x1
    // 0x5d008c: d1 = 0.750000
    //     0x5d008c: fmov            d1, #0.75000000
    // 0x5d0090: fmul            d2, d0, d1
    // 0x5d0094: d0 = 1000.000000
    //     0x5d0094: add             x17, PP, #0x1b, lsl #12  ; [pp+0x1b8c0] IMM: double(1000) from 0x408f400000000000
    //     0x5d0098: ldr             d0, [x17, #0x8c0]
    // 0x5d009c: fdiv            d1, d2, d0
    // 0x5d00a0: r2 = inline_Allocate_Double()
    //     0x5d00a0: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0x5d00a4: add             x2, x2, #0x10
    //     0x5d00a8: cmp             x0, x2
    //     0x5d00ac: b.ls            #0x5d0174
    //     0x5d00b0: str             x2, [THR, #0x60]  ; THR::top
    //     0x5d00b4: sub             x2, x2, #0xf
    //     0x5d00b8: mov             x0, #0xe15c
    //     0x5d00bc: movk            x0, #3, lsl #16
    //     0x5d00c0: stur            x0, [x2, #-1]
    // 0x5d00c4: StoreField: r2->field_7 = d1
    //     0x5d00c4: stur            d1, [x2, #7]
    // 0x5d00c8: ldur            x1, [fp, #-0x18]
    // 0x5d00cc: r0 = value=()
    //     0x5d00cc: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5d00d0: ldur            x0, [fp, #-8]
    // 0x5d00d4: LoadField: r2 = r0->field_2f
    //     0x5d00d4: ldur            w2, [x0, #0x2f]
    // 0x5d00d8: DecompressPointer r2
    //     0x5d00d8: add             x2, x2, HEAP, lsl #32
    // 0x5d00dc: stur            x2, [fp, #-0x18]
    // 0x5d00e0: LoadField: r1 = r0->field_1f
    //     0x5d00e0: ldur            w1, [x0, #0x1f]
    // 0x5d00e4: DecompressPointer r1
    //     0x5d00e4: add             x1, x1, HEAP, lsl #32
    // 0x5d00e8: r0 = value()
    //     0x5d00e8: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x5d00ec: r1 = LoadInt32Instr(r0)
    //     0x5d00ec: sbfx            x1, x0, #1, #0x1f
    //     0x5d00f0: tbz             w0, #0, #0x5d00f8
    //     0x5d00f4: ldur            x1, [x0, #7]
    // 0x5d00f8: scvtf           d0, x1
    // 0x5d00fc: d1 = 0.040000
    //     0x5d00fc: ldr             d1, [PP, #0x5740]  ; [pp+0x5740] IMM: double(0.04) from 0x3fa47ae147ae147b
    // 0x5d0100: fmul            d2, d0, d1
    // 0x5d0104: r2 = inline_Allocate_Double()
    //     0x5d0104: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0x5d0108: add             x2, x2, #0x10
    //     0x5d010c: cmp             x0, x2
    //     0x5d0110: b.ls            #0x5d0188
    //     0x5d0114: str             x2, [THR, #0x60]  ; THR::top
    //     0x5d0118: sub             x2, x2, #0xf
    //     0x5d011c: mov             x0, #0xe15c
    //     0x5d0120: movk            x0, #3, lsl #16
    //     0x5d0124: stur            x0, [x2, #-1]
    // 0x5d0128: StoreField: r2->field_7 = d2
    //     0x5d0128: stur            d2, [x2, #7]
    // 0x5d012c: ldur            x1, [fp, #-0x18]
    // 0x5d0130: r0 = value=()
    //     0x5d0130: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5d0134: ldur            x0, [fp, #-8]
    // 0x5d0138: LoadField: r1 = r0->field_27
    //     0x5d0138: ldur            w1, [x0, #0x27]
    // 0x5d013c: DecompressPointer r1
    //     0x5d013c: add             x1, x1, HEAP, lsl #32
    // 0x5d0140: ldur            x0, [fp, #-0x10]
    // 0x5d0144: LoadField: r2 = r0->field_7
    //     0x5d0144: ldur            w2, [x0, #7]
    // 0x5d0148: DecompressPointer r2
    //     0x5d0148: add             x2, x2, HEAP, lsl #32
    // 0x5d014c: r16 = Sentinel
    //     0x5d014c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5d0150: cmp             w2, w16
    // 0x5d0154: b.eq            #0x5d019c
    // 0x5d0158: r0 = value=()
    //     0x5d0158: bl              #0x5cf564  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value=
    // 0x5d015c: r0 = Null
    //     0x5d015c: mov             x0, NULL
    // 0x5d0160: LeaveFrame
    //     0x5d0160: mov             SP, fp
    //     0x5d0164: ldp             fp, lr, [SP], #0x10
    // 0x5d0168: ret
    //     0x5d0168: ret             
    // 0x5d016c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d016c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d0170: b               #0x5cff08
    // 0x5d0174: SaveReg d1
    //     0x5d0174: str             q1, [SP, #-0x10]!
    // 0x5d0178: r0 = AllocateDouble()
    //     0x5d0178: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x5d017c: mov             x2, x0
    // 0x5d0180: RestoreReg d1
    //     0x5d0180: ldr             q1, [SP], #0x10
    // 0x5d0184: b               #0x5d00c4
    // 0x5d0188: SaveReg d2
    //     0x5d0188: str             q2, [SP, #-0x10]!
    // 0x5d018c: r0 = AllocateDouble()
    //     0x5d018c: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x5d0190: mov             x2, x0
    // 0x5d0194: RestoreReg d2
    //     0x5d0194: ldr             q2, [SP], #0x10
    // 0x5d0198: b               #0x5d0128
    // 0x5d019c: r9 = _timeStamp
    //     0x5d019c: add             x9, PP, #0x20, lsl #12  ; [pp+0x20d18] Field <StepCount._timeStamp@890380129>: late (offset: 0x8)
    //     0x5d01a0: ldr             x9, [x9, #0xd18]
    // 0x5d01a4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x5d01a4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ saveBaseStep(/* No info */) async {
    // ** addr: 0x5d01a8, size: 0xd0
    // 0x5d01a8: EnterFrame
    //     0x5d01a8: stp             fp, lr, [SP, #-0x10]!
    //     0x5d01ac: mov             fp, SP
    // 0x5d01b0: AllocStack(0x28)
    //     0x5d01b0: sub             SP, SP, #0x28
    // 0x5d01b4: SetupParameters(StepController this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x5d01b4: stur            NULL, [fp, #-8]
    //     0x5d01b8: stur            x1, [fp, #-0x10]
    //     0x5d01bc: stur            x2, [fp, #-0x18]
    // 0x5d01c0: CheckStackOverflow
    //     0x5d01c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d01c4: cmp             SP, x16
    //     0x5d01c8: b.ls            #0x5d0270
    // 0x5d01cc: InitAsync() -> Future<void?>
    //     0x5d01cc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5d01d0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5d01d4: r0 = DateTime()
    //     0x5d01d4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5d01d8: mov             x1, x0
    // 0x5d01dc: r0 = false
    //     0x5d01dc: add             x0, NULL, #0x30  ; false
    // 0x5d01e0: stur            x1, [fp, #-0x20]
    // 0x5d01e4: StoreField: r1->field_7 = r0
    //     0x5d01e4: stur            w0, [x1, #7]
    // 0x5d01e8: r0 = _getCurrentMicros()
    //     0x5d01e8: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5d01ec: r1 = LoadInt32Instr(r0)
    //     0x5d01ec: sbfx            x1, x0, #1, #0x1f
    //     0x5d01f0: tbz             w0, #0, #0x5d01f8
    //     0x5d01f4: ldur            x1, [x0, #7]
    // 0x5d01f8: ldur            x0, [fp, #-0x20]
    // 0x5d01fc: StoreField: r0->field_b = r1
    //     0x5d01fc: stur            x1, [x0, #0xb]
    // 0x5d0200: mov             x1, x0
    // 0x5d0204: r0 = toIso8601String()
    //     0x5d0204: bl              #0x5ceb3c  ; [dart:core] DateTime::toIso8601String
    // 0x5d0208: r16 = 20
    //     0x5d0208: mov             x16, #0x14
    // 0x5d020c: str             x16, [SP]
    // 0x5d0210: mov             x1, x0
    // 0x5d0214: r2 = 0
    //     0x5d0214: mov             x2, #0
    // 0x5d0218: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x5d0218: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x5d021c: r0 = substring()
    //     0x5d021c: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x5d0220: r1 = Null
    //     0x5d0220: mov             x1, NULL
    // 0x5d0224: r2 = 4
    //     0x5d0224: mov             x2, #4
    // 0x5d0228: stur            x0, [fp, #-0x20]
    // 0x5d022c: r0 = AllocateArray()
    //     0x5d022c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5d0230: mov             x1, x0
    // 0x5d0234: ldur            x0, [fp, #-0x20]
    // 0x5d0238: StoreField: r1->field_f = r0
    //     0x5d0238: stur            w0, [x1, #0xf]
    // 0x5d023c: r16 = "bsp"
    //     0x5d023c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20d20] "bsp"
    //     0x5d0240: ldr             x16, [x16, #0xd20]
    // 0x5d0244: StoreField: r1->field_13 = r16
    //     0x5d0244: stur            w16, [x1, #0x13]
    // 0x5d0248: str             x1, [SP]
    // 0x5d024c: r0 = _interpolate()
    //     0x5d024c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5d0250: mov             x1, x0
    // 0x5d0254: ldur            x2, [fp, #-0x18]
    // 0x5d0258: r0 = saveInt()
    //     0x5d0258: bl              #0x5cfb94  ; [package:umrem_demo/features/adimsayar/cash_helper.dart] CacheHelper::saveInt
    // 0x5d025c: mov             x1, x0
    // 0x5d0260: stur            x1, [fp, #-0x20]
    // 0x5d0264: r0 = Await()
    //     0x5d0264: bl              #0x3dd188  ; AwaitStub
    // 0x5d0268: r0 = Null
    //     0x5d0268: mov             x0, NULL
    // 0x5d026c: r0 = ReturnAsyncNotFuture()
    //     0x5d026c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5d0270: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d0270: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d0274: b               #0x5d01cc
  }
  _ StepController(/* No info */) {
    // ** addr: 0x5d1314, size: 0x1d8
    // 0x5d1314: EnterFrame
    //     0x5d1314: stp             fp, lr, [SP, #-0x10]!
    //     0x5d1318: mov             fp, SP
    // 0x5d131c: AllocStack(0x20)
    //     0x5d131c: sub             SP, SP, #0x20
    // 0x5d1320: r0 = Sentinel
    //     0x5d1320: ldr             x0, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5d1324: stur            x1, [fp, #-8]
    // 0x5d1328: CheckStackOverflow
    //     0x5d1328: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5d132c: cmp             SP, x16
    //     0x5d1330: b.ls            #0x5d14e4
    // 0x5d1334: StoreField: r1->field_3b = r0
    //     0x5d1334: stur            w0, [x1, #0x3b]
    // 0x5d1338: StoreField: r1->field_3f = r0
    //     0x5d1338: stur            w0, [x1, #0x3f]
    // 0x5d133c: r0 = IntExtension.obs()
    //     0x5d133c: bl              #0x5d1dfc  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::IntExtension.obs
    // 0x5d1340: ldur            x1, [fp, #-8]
    // 0x5d1344: StoreField: r1->field_1f = r0
    //     0x5d1344: stur            w0, [x1, #0x1f]
    //     0x5d1348: ldurb           w16, [x1, #-1]
    //     0x5d134c: ldurb           w17, [x0, #-1]
    //     0x5d1350: and             x16, x17, x16, lsr #2
    //     0x5d1354: tst             x16, HEAP, lsr #32
    //     0x5d1358: b.eq            #0x5d1360
    //     0x5d135c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d1360: r0 = StringExtension.obs()
    //     0x5d1360: bl              #0x5d1d90  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::StringExtension.obs
    // 0x5d1364: ldur            x1, [fp, #-8]
    // 0x5d1368: StoreField: r1->field_23 = r0
    //     0x5d1368: stur            w0, [x1, #0x23]
    //     0x5d136c: ldurb           w16, [x1, #-1]
    //     0x5d1370: ldurb           w17, [x0, #-1]
    //     0x5d1374: and             x16, x17, x16, lsr #2
    //     0x5d1378: tst             x16, HEAP, lsr #32
    //     0x5d137c: b.eq            #0x5d1384
    //     0x5d1380: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d1384: r0 = DateTime()
    //     0x5d1384: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x5d1388: mov             x1, x0
    // 0x5d138c: r0 = true
    //     0x5d138c: add             x0, NULL, #0x20  ; true
    // 0x5d1390: stur            x1, [fp, #-0x10]
    // 0x5d1394: StoreField: r1->field_7 = r0
    //     0x5d1394: stur            w0, [x1, #7]
    // 0x5d1398: r0 = _getCurrentMicros()
    //     0x5d1398: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x5d139c: r1 = LoadInt32Instr(r0)
    //     0x5d139c: sbfx            x1, x0, #1, #0x1f
    //     0x5d13a0: tbz             w0, #0, #0x5d13a8
    //     0x5d13a4: ldur            x1, [x0, #7]
    // 0x5d13a8: ldur            x0, [fp, #-0x10]
    // 0x5d13ac: StoreField: r0->field_b = r1
    //     0x5d13ac: stur            x1, [x0, #0xb]
    // 0x5d13b0: r16 = <DateTime>
    //     0x5d13b0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15230] TypeArguments: <DateTime>
    //     0x5d13b4: ldr             x16, [x16, #0x230]
    // 0x5d13b8: stp             x0, x16, [SP]
    // 0x5d13bc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5d13bc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5d13c0: r0 = RxT.obs()
    //     0x5d13c0: bl              #0x5d1cec  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::RxT.obs
    // 0x5d13c4: ldur            x1, [fp, #-8]
    // 0x5d13c8: StoreField: r1->field_27 = r0
    //     0x5d13c8: stur            w0, [x1, #0x27]
    //     0x5d13cc: ldurb           w16, [x1, #-1]
    //     0x5d13d0: ldurb           w17, [x0, #-1]
    //     0x5d13d4: and             x16, x17, x16, lsr #2
    //     0x5d13d8: tst             x16, HEAP, lsr #32
    //     0x5d13dc: b.eq            #0x5d13e4
    //     0x5d13e0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d13e4: r0 = DoubleExtension.obs()
    //     0x5d13e4: bl              #0x5d1b84  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::DoubleExtension.obs
    // 0x5d13e8: ldur            x1, [fp, #-8]
    // 0x5d13ec: StoreField: r1->field_2b = r0
    //     0x5d13ec: stur            w0, [x1, #0x2b]
    //     0x5d13f0: ldurb           w16, [x1, #-1]
    //     0x5d13f4: ldurb           w17, [x0, #-1]
    //     0x5d13f8: and             x16, x17, x16, lsr #2
    //     0x5d13fc: tst             x16, HEAP, lsr #32
    //     0x5d1400: b.eq            #0x5d1408
    //     0x5d1404: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d1408: r0 = DoubleExtension.obs()
    //     0x5d1408: bl              #0x5d1b84  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::DoubleExtension.obs
    // 0x5d140c: ldur            x1, [fp, #-8]
    // 0x5d1410: StoreField: r1->field_2f = r0
    //     0x5d1410: stur            w0, [x1, #0x2f]
    //     0x5d1414: ldurb           w16, [x1, #-1]
    //     0x5d1418: ldurb           w17, [x0, #-1]
    //     0x5d141c: and             x16, x17, x16, lsr #2
    //     0x5d1420: tst             x16, HEAP, lsr #32
    //     0x5d1424: b.eq            #0x5d142c
    //     0x5d1428: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d142c: r16 = <Duration>
    //     0x5d142c: add             x16, PP, #8, lsl #12  ; [pp+0x8370] TypeArguments: <Duration>
    //     0x5d1430: ldr             x16, [x16, #0x370]
    // 0x5d1434: r30 = Instance_Duration
    //     0x5d1434: ldr             lr, [PP, #0x1c40]  ; [pp+0x1c40] Obj!Duration@a2dc31
    // 0x5d1438: stp             lr, x16, [SP]
    // 0x5d143c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5d143c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5d1440: r0 = RxT.obs()
    //     0x5d1440: bl              #0x5d1cec  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::RxT.obs
    // 0x5d1444: ldur            x1, [fp, #-8]
    // 0x5d1448: StoreField: r1->field_33 = r0
    //     0x5d1448: stur            w0, [x1, #0x33]
    //     0x5d144c: ldurb           w16, [x1, #-1]
    //     0x5d1450: ldurb           w17, [x0, #-1]
    //     0x5d1454: and             x16, x17, x16, lsr #2
    //     0x5d1458: tst             x16, HEAP, lsr #32
    //     0x5d145c: b.eq            #0x5d1464
    //     0x5d1460: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d1464: r16 = <String, int>
    //     0x5d1464: ldr             x16, [PP, #0x980]  ; [pp+0x980] TypeArguments: <String, int>
    // 0x5d1468: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x5d146c: stp             lr, x16, [SP]
    // 0x5d1470: r0 = Map._fromLiteral()
    //     0x5d1470: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x5d1474: r16 = <String, int>
    //     0x5d1474: ldr             x16, [PP, #0x980]  ; [pp+0x980] TypeArguments: <String, int>
    // 0x5d1478: stp             x0, x16, [SP]
    // 0x5d147c: r4 = const [0x2, 0x1, 0x1, 0x1, null]
    //     0x5d147c: ldr             x4, [PP, #0x1ce0]  ; [pp+0x1ce0] List(5) [0x2, 0x1, 0x1, 0x1, Null]
    // 0x5d1480: r0 = MapExtension.obs()
    //     0x5d1480: bl              #0x5d1888  ; [package:get/get_rx/src/rx_types/rx_types.dart] ::MapExtension.obs
    // 0x5d1484: ldur            x3, [fp, #-8]
    // 0x5d1488: StoreField: r3->field_37 = r0
    //     0x5d1488: stur            w0, [x3, #0x37]
    //     0x5d148c: ldurb           w16, [x3, #-1]
    //     0x5d1490: ldurb           w17, [x0, #-1]
    //     0x5d1494: and             x16, x17, x16, lsr #2
    //     0x5d1498: tst             x16, HEAP, lsr #32
    //     0x5d149c: b.eq            #0x5d14a4
    //     0x5d14a0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5d14a4: r1 = <((dynamic this) => void?)?>
    //     0x5d14a4: ldr             x1, [PP, #0x2168]  ; [pp+0x2168] TypeArguments: <((dynamic this) => void?)?>
    // 0x5d14a8: r2 = 0
    //     0x5d14a8: mov             x2, #0
    // 0x5d14ac: r0 = _GrowableList()
    //     0x5d14ac: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5d14b0: ldur            x1, [fp, #-8]
    // 0x5d14b4: ArrayStore: r1[0] = r0  ; List_4
    //     0x5d14b4: stur            w0, [x1, #0x17]
    //     0x5d14b8: ldurb           w16, [x1, #-1]
    //     0x5d14bc: ldurb           w17, [x0, #-1]
    //     0x5d14c0: and             x16, x17, x16, lsr #2
    //     0x5d14c4: tst             x16, HEAP, lsr #32
    //     0x5d14c8: b.eq            #0x5d14d0
    //     0x5d14cc: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5d14d0: r0 = GetLifeCycle()
    //     0x5d14d0: bl              #0x5d14ec  ; [package:get/get_instance/src/lifecycle.dart] GetLifeCycle::GetLifeCycle
    // 0x5d14d4: r0 = Null
    //     0x5d14d4: mov             x0, NULL
    // 0x5d14d8: LeaveFrame
    //     0x5d14d8: mov             SP, fp
    //     0x5d14dc: ldp             fp, lr, [SP], #0x10
    // 0x5d14e0: ret
    //     0x5d14e0: ret             
    // 0x5d14e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5d14e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5d14e8: b               #0x5d1334
  }
  get _ walkingTimeText(/* No info */) {
    // ** addr: 0x6cdcc4, size: 0x118
    // 0x6cdcc4: EnterFrame
    //     0x6cdcc4: stp             fp, lr, [SP, #-0x10]!
    //     0x6cdcc8: mov             fp, SP
    // 0x6cdccc: AllocStack(0x18)
    //     0x6cdccc: sub             SP, SP, #0x18
    // 0x6cdcd0: CheckStackOverflow
    //     0x6cdcd0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6cdcd4: cmp             SP, x16
    //     0x6cdcd8: b.ls            #0x6cddcc
    // 0x6cdcdc: LoadField: r0 = r1->field_33
    //     0x6cdcdc: ldur            w0, [x1, #0x33]
    // 0x6cdce0: DecompressPointer r0
    //     0x6cdce0: add             x0, x0, HEAP, lsl #32
    // 0x6cdce4: mov             x1, x0
    // 0x6cdce8: r0 = value()
    //     0x6cdce8: bl              #0x915840  ; [package:get/get_rx/src/rx_types/rx_types.dart] __RxImpl&RxNotifier&RxObjectMixin::value
    // 0x6cdcec: LoadField: r1 = r0->field_7
    //     0x6cdcec: ldur            x1, [x0, #7]
    // 0x6cdcf0: r0 = 3600000000
    //     0x6cdcf0: mov             x0, #0xa400
    //     0x6cdcf4: movk            x0, #0xd693, lsl #16
    // 0x6cdcf8: sdiv            x2, x1, x0
    // 0x6cdcfc: r0 = 60000000
    //     0x6cdcfc: mov             x0, #0x8700
    //     0x6cdd00: movk            x0, #0x393, lsl #16
    // 0x6cdd04: sdiv            x3, x1, x0
    // 0x6cdd08: r0 = 60
    //     0x6cdd08: mov             x0, #0x3c
    // 0x6cdd0c: sdiv            x1, x3, x0
    // 0x6cdd10: msub            x4, x1, x0, x3
    // 0x6cdd14: cmp             x4, xzr
    // 0x6cdd18: b.lt            #0x6cddd4
    // 0x6cdd1c: stur            x4, [fp, #-0x10]
    // 0x6cdd20: cmp             x2, #0
    // 0x6cdd24: b.le            #0x6cdd88
    // 0x6cdd28: r0 = BoxInt64Instr(r2)
    //     0x6cdd28: sbfiz           x0, x2, #1, #0x1f
    //     0x6cdd2c: cmp             x2, x0, asr #1
    //     0x6cdd30: b.eq            #0x6cdd3c
    //     0x6cdd34: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6cdd38: stur            x2, [x0, #7]
    // 0x6cdd3c: r1 = Null
    //     0x6cdd3c: mov             x1, NULL
    // 0x6cdd40: r2 = 8
    //     0x6cdd40: mov             x2, #8
    // 0x6cdd44: stur            x0, [fp, #-8]
    // 0x6cdd48: r0 = AllocateArray()
    //     0x6cdd48: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cdd4c: mov             x1, x0
    // 0x6cdd50: ldur            x0, [fp, #-8]
    // 0x6cdd54: StoreField: r1->field_f = r0
    //     0x6cdd54: stur            w0, [x1, #0xf]
    // 0x6cdd58: r16 = " sa "
    //     0x6cdd58: add             x16, PP, #0x20, lsl #12  ; [pp+0x20bd8] " sa "
    //     0x6cdd5c: ldr             x16, [x16, #0xbd8]
    // 0x6cdd60: StoreField: r1->field_13 = r16
    //     0x6cdd60: stur            w16, [x1, #0x13]
    // 0x6cdd64: ldur            x0, [fp, #-0x10]
    // 0x6cdd68: lsl             x2, x0, #1
    // 0x6cdd6c: ArrayStore: r1[0] = r2  ; List_4
    //     0x6cdd6c: stur            w2, [x1, #0x17]
    // 0x6cdd70: r16 = " dk"
    //     0x6cdd70: add             x16, PP, #0x20, lsl #12  ; [pp+0x20be0] " dk"
    //     0x6cdd74: ldr             x16, [x16, #0xbe0]
    // 0x6cdd78: StoreField: r1->field_1b = r16
    //     0x6cdd78: stur            w16, [x1, #0x1b]
    // 0x6cdd7c: str             x1, [SP]
    // 0x6cdd80: r0 = _interpolate()
    //     0x6cdd80: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6cdd84: b               #0x6cddc0
    // 0x6cdd88: mov             x0, x4
    // 0x6cdd8c: lsl             x3, x0, #1
    // 0x6cdd90: stur            x3, [fp, #-8]
    // 0x6cdd94: r1 = Null
    //     0x6cdd94: mov             x1, NULL
    // 0x6cdd98: r2 = 4
    //     0x6cdd98: mov             x2, #4
    // 0x6cdd9c: r0 = AllocateArray()
    //     0x6cdd9c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6cdda0: mov             x1, x0
    // 0x6cdda4: ldur            x0, [fp, #-8]
    // 0x6cdda8: StoreField: r1->field_f = r0
    //     0x6cdda8: stur            w0, [x1, #0xf]
    // 0x6cddac: r16 = " dk"
    //     0x6cddac: add             x16, PP, #0x20, lsl #12  ; [pp+0x20be0] " dk"
    //     0x6cddb0: ldr             x16, [x16, #0xbe0]
    // 0x6cddb4: StoreField: r1->field_13 = r16
    //     0x6cddb4: stur            w16, [x1, #0x13]
    // 0x6cddb8: str             x1, [SP]
    // 0x6cddbc: r0 = _interpolate()
    //     0x6cddbc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6cddc0: LeaveFrame
    //     0x6cddc0: mov             SP, fp
    //     0x6cddc4: ldp             fp, lr, [SP], #0x10
    // 0x6cddc8: ret
    //     0x6cddc8: ret             
    // 0x6cddcc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6cddcc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6cddd0: b               #0x6cdcdc
    // 0x6cddd4: add             x4, x4, x0
    // 0x6cddd8: b               #0x6cdd1c
  }
}
