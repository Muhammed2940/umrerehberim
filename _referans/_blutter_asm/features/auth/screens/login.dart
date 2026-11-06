// lib: , url: package:umrem_demo/features/auth/screens/login.dart

// class id: 1049563, size: 0x8
class :: {
}

// class id: 2479, size: 0x1c, field offset: 0x14
//   transformed mixin,
abstract class __LoginScreenState&State&TickerProviderStateMixin extends State<dynamic>
     with TickerProviderStateMixin<X0 bound StatefulWidget> {

  _ createTicker(/* No info */) {
    // ** addr: 0x44446c, size: 0x13c
    // 0x44446c: EnterFrame
    //     0x44446c: stp             fp, lr, [SP, #-0x10]!
    //     0x444470: mov             fp, SP
    // 0x444474: AllocStack(0x18)
    //     0x444474: sub             SP, SP, #0x18
    // 0x444478: SetupParameters(__LoginScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x444478: mov             x0, x1
    //     0x44447c: stur            x1, [fp, #-8]
    //     0x444480: stur            x2, [fp, #-0x10]
    // 0x444484: CheckStackOverflow
    //     0x444484: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444488: cmp             SP, x16
    //     0x44448c: b.ls            #0x444598
    // 0x444490: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x444490: ldur            w1, [x0, #0x17]
    // 0x444494: DecompressPointer r1
    //     0x444494: add             x1, x1, HEAP, lsl #32
    // 0x444498: cmp             w1, NULL
    // 0x44449c: b.ne            #0x4444a8
    // 0x4444a0: mov             x1, x0
    // 0x4444a4: r0 = _updateTickerModeNotifier()
    //     0x4444a4: bl              #0x4445c8  ; [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickerModeNotifier
    // 0x4444a8: ldur            x0, [fp, #-8]
    // 0x4444ac: LoadField: r1 = r0->field_13
    //     0x4444ac: ldur            w1, [x0, #0x13]
    // 0x4444b0: DecompressPointer r1
    //     0x4444b0: add             x1, x1, HEAP, lsl #32
    // 0x4444b4: cmp             w1, NULL
    // 0x4444b8: b.ne            #0x444510
    // 0x4444bc: r1 = <_WidgetTicker>
    //     0x4444bc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15db0] TypeArguments: <_WidgetTicker>
    //     0x4444c0: ldr             x1, [x1, #0xdb0]
    // 0x4444c4: r0 = _Set()
    //     0x4444c4: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x4444c8: mov             x1, x0
    // 0x4444cc: r0 = _Uint32List
    //     0x4444cc: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x4444d0: StoreField: r1->field_1b = r0
    //     0x4444d0: stur            w0, [x1, #0x1b]
    // 0x4444d4: StoreField: r1->field_b = rZR
    //     0x4444d4: stur            wzr, [x1, #0xb]
    // 0x4444d8: r0 = const []
    //     0x4444d8: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x4444dc: StoreField: r1->field_f = r0
    //     0x4444dc: stur            w0, [x1, #0xf]
    // 0x4444e0: StoreField: r1->field_13 = rZR
    //     0x4444e0: stur            wzr, [x1, #0x13]
    // 0x4444e4: ArrayStore: r1[0] = rZR  ; List_4
    //     0x4444e4: stur            wzr, [x1, #0x17]
    // 0x4444e8: mov             x0, x1
    // 0x4444ec: ldur            x1, [fp, #-8]
    // 0x4444f0: StoreField: r1->field_13 = r0
    //     0x4444f0: stur            w0, [x1, #0x13]
    //     0x4444f4: ldurb           w16, [x1, #-1]
    //     0x4444f8: ldurb           w17, [x0, #-1]
    //     0x4444fc: and             x16, x17, x16, lsr #2
    //     0x444500: tst             x16, HEAP, lsr #32
    //     0x444504: b.eq            #0x44450c
    //     0x444508: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x44450c: b               #0x444514
    // 0x444510: mov             x1, x0
    // 0x444514: ldur            x0, [fp, #-0x10]
    // 0x444518: r0 = _WidgetTicker()
    //     0x444518: bl              #0x43d174  ; Allocate_WidgetTickerStub -> _WidgetTicker (size=0x20)
    // 0x44451c: mov             x3, x0
    // 0x444520: ldur            x2, [fp, #-8]
    // 0x444524: stur            x3, [fp, #-0x18]
    // 0x444528: StoreField: r3->field_1b = r2
    //     0x444528: stur            w2, [x3, #0x1b]
    // 0x44452c: r0 = false
    //     0x44452c: add             x0, NULL, #0x30  ; false
    // 0x444530: StoreField: r3->field_b = r0
    //     0x444530: stur            w0, [x3, #0xb]
    // 0x444534: ldur            x0, [fp, #-0x10]
    // 0x444538: StoreField: r3->field_13 = r0
    //     0x444538: stur            w0, [x3, #0x13]
    // 0x44453c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x44453c: ldur            w1, [x2, #0x17]
    // 0x444540: DecompressPointer r1
    //     0x444540: add             x1, x1, HEAP, lsl #32
    // 0x444544: cmp             w1, NULL
    // 0x444548: b.eq            #0x4445a0
    // 0x44454c: r0 = LoadClassIdInstr(r1)
    //     0x44454c: ldur            x0, [x1, #-1]
    //     0x444550: ubfx            x0, x0, #0xc, #0x14
    // 0x444554: r0 = GDT[cid_x0 + -0x1000]()
    //     0x444554: sub             lr, x0, #1, lsl #12
    //     0x444558: ldr             lr, [x21, lr, lsl #3]
    //     0x44455c: blr             lr
    // 0x444560: eor             x2, x0, #0x10
    // 0x444564: ldur            x1, [fp, #-0x18]
    // 0x444568: r0 = muted=()
    //     0x444568: bl              #0x43c97c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::muted=
    // 0x44456c: ldur            x0, [fp, #-8]
    // 0x444570: LoadField: r1 = r0->field_13
    //     0x444570: ldur            w1, [x0, #0x13]
    // 0x444574: DecompressPointer r1
    //     0x444574: add             x1, x1, HEAP, lsl #32
    // 0x444578: cmp             w1, NULL
    // 0x44457c: b.eq            #0x4445a4
    // 0x444580: ldur            x2, [fp, #-0x18]
    // 0x444584: r0 = add()
    //     0x444584: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x444588: ldur            x0, [fp, #-0x18]
    // 0x44458c: LeaveFrame
    //     0x44458c: mov             SP, fp
    //     0x444590: ldp             fp, lr, [SP], #0x10
    // 0x444594: ret
    //     0x444594: ret             
    // 0x444598: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444598: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x44459c: b               #0x444490
    // 0x4445a0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4445a0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x4445a4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4445a4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _updateTickerModeNotifier(/* No info */) {
    // ** addr: 0x4445c8, size: 0x120
    // 0x4445c8: EnterFrame
    //     0x4445c8: stp             fp, lr, [SP, #-0x10]!
    //     0x4445cc: mov             fp, SP
    // 0x4445d0: AllocStack(0x18)
    //     0x4445d0: sub             SP, SP, #0x18
    // 0x4445d4: SetupParameters(__LoginScreenState&State&TickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x4445d4: mov             x2, x1
    //     0x4445d8: stur            x1, [fp, #-8]
    // 0x4445dc: CheckStackOverflow
    //     0x4445dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x4445e0: cmp             SP, x16
    //     0x4445e4: b.ls            #0x4446dc
    // 0x4445e8: LoadField: r1 = r2->field_f
    //     0x4445e8: ldur            w1, [x2, #0xf]
    // 0x4445ec: DecompressPointer r1
    //     0x4445ec: add             x1, x1, HEAP, lsl #32
    // 0x4445f0: cmp             w1, NULL
    // 0x4445f4: b.eq            #0x4446e4
    // 0x4445f8: r0 = getNotifier()
    //     0x4445f8: bl              #0x43cb1c  ; [package:flutter/src/widgets/ticker_provider.dart] TickerMode::getNotifier
    // 0x4445fc: mov             x3, x0
    // 0x444600: ldur            x0, [fp, #-8]
    // 0x444604: stur            x3, [fp, #-0x18]
    // 0x444608: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x444608: ldur            w4, [x0, #0x17]
    // 0x44460c: DecompressPointer r4
    //     0x44460c: add             x4, x4, HEAP, lsl #32
    // 0x444610: stur            x4, [fp, #-0x10]
    // 0x444614: cmp             w3, w4
    // 0x444618: b.ne            #0x44462c
    // 0x44461c: r0 = Null
    //     0x44461c: mov             x0, NULL
    // 0x444620: LeaveFrame
    //     0x444620: mov             SP, fp
    //     0x444624: ldp             fp, lr, [SP], #0x10
    // 0x444628: ret
    //     0x444628: ret             
    // 0x44462c: cmp             w4, NULL
    // 0x444630: b.eq            #0x444670
    // 0x444634: mov             x2, x0
    // 0x444638: r1 = Function '_updateTickers@378311458':.
    //     0x444638: add             x1, PP, #0x18, lsl #12  ; [pp+0x18650] AnonymousClosure: (0x4446e8), in [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickers (0x444720)
    //     0x44463c: ldr             x1, [x1, #0x650]
    // 0x444640: r0 = AllocateClosure()
    //     0x444640: bl              #0x9273d4  ; AllocateClosureStub
    // 0x444644: ldur            x1, [fp, #-0x10]
    // 0x444648: r2 = LoadClassIdInstr(r1)
    //     0x444648: ldur            x2, [x1, #-1]
    //     0x44464c: ubfx            x2, x2, #0xc, #0x14
    // 0x444650: mov             x16, x0
    // 0x444654: mov             x0, x2
    // 0x444658: mov             x2, x16
    // 0x44465c: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x44465c: add             lr, x0, #0xfe7
    //     0x444660: ldr             lr, [x21, lr, lsl #3]
    //     0x444664: blr             lr
    // 0x444668: ldur            x0, [fp, #-8]
    // 0x44466c: ldur            x3, [fp, #-0x18]
    // 0x444670: mov             x2, x0
    // 0x444674: r1 = Function '_updateTickers@378311458':.
    //     0x444674: add             x1, PP, #0x18, lsl #12  ; [pp+0x18650] AnonymousClosure: (0x4446e8), in [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickers (0x444720)
    //     0x444678: ldr             x1, [x1, #0x650]
    // 0x44467c: r0 = AllocateClosure()
    //     0x44467c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x444680: ldur            x3, [fp, #-0x18]
    // 0x444684: r1 = LoadClassIdInstr(r3)
    //     0x444684: ldur            x1, [x3, #-1]
    //     0x444688: ubfx            x1, x1, #0xc, #0x14
    // 0x44468c: mov             x2, x0
    // 0x444690: mov             x0, x1
    // 0x444694: mov             x1, x3
    // 0x444698: r0 = GDT[cid_x0 + 0x8cf8]()
    //     0x444698: mov             x17, #0x8cf8
    //     0x44469c: add             lr, x0, x17
    //     0x4446a0: ldr             lr, [x21, lr, lsl #3]
    //     0x4446a4: blr             lr
    // 0x4446a8: ldur            x0, [fp, #-0x18]
    // 0x4446ac: ldur            x1, [fp, #-8]
    // 0x4446b0: ArrayStore: r1[0] = r0  ; List_4
    //     0x4446b0: stur            w0, [x1, #0x17]
    //     0x4446b4: ldurb           w16, [x1, #-1]
    //     0x4446b8: ldurb           w17, [x0, #-1]
    //     0x4446bc: and             x16, x17, x16, lsr #2
    //     0x4446c0: tst             x16, HEAP, lsr #32
    //     0x4446c4: b.eq            #0x4446cc
    //     0x4446c8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x4446cc: r0 = Null
    //     0x4446cc: mov             x0, NULL
    // 0x4446d0: LeaveFrame
    //     0x4446d0: mov             SP, fp
    //     0x4446d4: ldp             fp, lr, [SP], #0x10
    // 0x4446d8: ret
    //     0x4446d8: ret             
    // 0x4446dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x4446dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x4446e0: b               #0x4445e8
    // 0x4446e4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4446e4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void _updateTickers(dynamic) {
    // ** addr: 0x4446e8, size: 0x38
    // 0x4446e8: EnterFrame
    //     0x4446e8: stp             fp, lr, [SP, #-0x10]!
    //     0x4446ec: mov             fp, SP
    // 0x4446f0: ldr             x0, [fp, #0x10]
    // 0x4446f4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x4446f4: ldur            w1, [x0, #0x17]
    // 0x4446f8: DecompressPointer r1
    //     0x4446f8: add             x1, x1, HEAP, lsl #32
    // 0x4446fc: CheckStackOverflow
    //     0x4446fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444700: cmp             SP, x16
    //     0x444704: b.ls            #0x444718
    // 0x444708: r0 = _updateTickers()
    //     0x444708: bl              #0x444720  ; [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickers
    // 0x44470c: LeaveFrame
    //     0x44470c: mov             SP, fp
    //     0x444710: ldp             fp, lr, [SP], #0x10
    // 0x444714: ret
    //     0x444714: ret             
    // 0x444718: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444718: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x44471c: b               #0x444708
  }
  _ _updateTickers(/* No info */) {
    // ** addr: 0x444720, size: 0x15c
    // 0x444720: EnterFrame
    //     0x444720: stp             fp, lr, [SP, #-0x10]!
    //     0x444724: mov             fp, SP
    // 0x444728: AllocStack(0x20)
    //     0x444728: sub             SP, SP, #0x20
    // 0x44472c: SetupParameters(__LoginScreenState&State&TickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x44472c: mov             x2, x1
    //     0x444730: stur            x1, [fp, #-8]
    // 0x444734: CheckStackOverflow
    //     0x444734: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444738: cmp             SP, x16
    //     0x44473c: b.ls            #0x444864
    // 0x444740: LoadField: r0 = r2->field_13
    //     0x444740: ldur            w0, [x2, #0x13]
    // 0x444744: DecompressPointer r0
    //     0x444744: add             x0, x0, HEAP, lsl #32
    // 0x444748: cmp             w0, NULL
    // 0x44474c: b.eq            #0x444854
    // 0x444750: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x444750: ldur            w1, [x2, #0x17]
    // 0x444754: DecompressPointer r1
    //     0x444754: add             x1, x1, HEAP, lsl #32
    // 0x444758: cmp             w1, NULL
    // 0x44475c: b.eq            #0x44486c
    // 0x444760: r0 = LoadClassIdInstr(r1)
    //     0x444760: ldur            x0, [x1, #-1]
    //     0x444764: ubfx            x0, x0, #0xc, #0x14
    // 0x444768: r0 = GDT[cid_x0 + -0x1000]()
    //     0x444768: sub             lr, x0, #1, lsl #12
    //     0x44476c: ldr             lr, [x21, lr, lsl #3]
    //     0x444770: blr             lr
    // 0x444774: eor             x2, x0, #0x10
    // 0x444778: ldur            x0, [fp, #-8]
    // 0x44477c: stur            x2, [fp, #-0x10]
    // 0x444780: LoadField: r1 = r0->field_13
    //     0x444780: ldur            w1, [x0, #0x13]
    // 0x444784: DecompressPointer r1
    //     0x444784: add             x1, x1, HEAP, lsl #32
    // 0x444788: cmp             w1, NULL
    // 0x44478c: b.eq            #0x444870
    // 0x444790: r0 = iterator()
    //     0x444790: bl              #0x63deb8  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::iterator
    // 0x444794: stur            x0, [fp, #-0x18]
    // 0x444798: LoadField: r2 = r0->field_7
    //     0x444798: ldur            w2, [x0, #7]
    // 0x44479c: DecompressPointer r2
    //     0x44479c: add             x2, x2, HEAP, lsl #32
    // 0x4447a0: stur            x2, [fp, #-8]
    // 0x4447a4: ldur            x3, [fp, #-0x10]
    // 0x4447a8: CheckStackOverflow
    //     0x4447a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x4447ac: cmp             SP, x16
    //     0x4447b0: b.ls            #0x444874
    // 0x4447b4: mov             x1, x0
    // 0x4447b8: r0 = moveNext()
    //     0x4447b8: bl              #0x863f04  ; [dart:_compact_hash] _CompactIterator::moveNext
    // 0x4447bc: tbnz            w0, #4, #0x444854
    // 0x4447c0: ldur            x3, [fp, #-0x18]
    // 0x4447c4: LoadField: r4 = r3->field_33
    //     0x4447c4: ldur            w4, [x3, #0x33]
    // 0x4447c8: DecompressPointer r4
    //     0x4447c8: add             x4, x4, HEAP, lsl #32
    // 0x4447cc: stur            x4, [fp, #-0x20]
    // 0x4447d0: cmp             w4, NULL
    // 0x4447d4: b.ne            #0x444808
    // 0x4447d8: mov             x0, x4
    // 0x4447dc: ldur            x2, [fp, #-8]
    // 0x4447e0: r1 = Null
    //     0x4447e0: mov             x1, NULL
    // 0x4447e4: cmp             w2, NULL
    // 0x4447e8: b.eq            #0x444808
    // 0x4447ec: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x4447ec: ldur            w4, [x2, #0x17]
    // 0x4447f0: DecompressPointer r4
    //     0x4447f0: add             x4, x4, HEAP, lsl #32
    // 0x4447f4: r8 = X0
    //     0x4447f4: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x4447f8: LoadField: r9 = r4->field_7
    //     0x4447f8: ldur            x9, [x4, #7]
    // 0x4447fc: r3 = Null
    //     0x4447fc: add             x3, PP, #0x18, lsl #12  ; [pp+0x18640] Null
    //     0x444800: ldr             x3, [x3, #0x640]
    // 0x444804: blr             x9
    // 0x444808: ldur            x2, [fp, #-0x10]
    // 0x44480c: ldur            x0, [fp, #-0x20]
    // 0x444810: LoadField: r1 = r0->field_b
    //     0x444810: ldur            w1, [x0, #0xb]
    // 0x444814: DecompressPointer r1
    //     0x444814: add             x1, x1, HEAP, lsl #32
    // 0x444818: cmp             w2, w1
    // 0x44481c: b.eq            #0x444848
    // 0x444820: StoreField: r0->field_b = r2
    //     0x444820: stur            w2, [x0, #0xb]
    // 0x444824: tbnz            w2, #4, #0x444834
    // 0x444828: mov             x1, x0
    // 0x44482c: r0 = unscheduleTick()
    //     0x44482c: bl              #0x3fc00c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::unscheduleTick
    // 0x444830: b               #0x444848
    // 0x444834: mov             x1, x0
    // 0x444838: r0 = shouldScheduleTick()
    //     0x444838: bl              #0x3fb61c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::shouldScheduleTick
    // 0x44483c: tbnz            w0, #4, #0x444848
    // 0x444840: ldur            x1, [fp, #-0x20]
    // 0x444844: r0 = scheduleTick()
    //     0x444844: bl              #0x3fa4d4  ; [package:flutter/src/scheduler/ticker.dart] Ticker::scheduleTick
    // 0x444848: ldur            x0, [fp, #-0x18]
    // 0x44484c: ldur            x2, [fp, #-8]
    // 0x444850: b               #0x4447a4
    // 0x444854: r0 = Null
    //     0x444854: mov             x0, NULL
    // 0x444858: LeaveFrame
    //     0x444858: mov             SP, fp
    //     0x44485c: ldp             fp, lr, [SP], #0x10
    // 0x444860: ret
    //     0x444860: ret             
    // 0x444864: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444864: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444868: b               #0x444740
    // 0x44486c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x44486c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x444870: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x444870: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x444874: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444874: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444878: b               #0x4447b4
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753db4, size: 0x90
    // 0x753db4: EnterFrame
    //     0x753db4: stp             fp, lr, [SP, #-0x10]!
    //     0x753db8: mov             fp, SP
    // 0x753dbc: AllocStack(0x10)
    //     0x753dbc: sub             SP, SP, #0x10
    // 0x753dc0: SetupParameters(__LoginScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x10 */)
    //     0x753dc0: mov             x0, x1
    //     0x753dc4: stur            x1, [fp, #-0x10]
    // 0x753dc8: CheckStackOverflow
    //     0x753dc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753dcc: cmp             SP, x16
    //     0x753dd0: b.ls            #0x753e3c
    // 0x753dd4: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x753dd4: ldur            w3, [x0, #0x17]
    // 0x753dd8: DecompressPointer r3
    //     0x753dd8: add             x3, x3, HEAP, lsl #32
    // 0x753ddc: stur            x3, [fp, #-8]
    // 0x753de0: cmp             w3, NULL
    // 0x753de4: b.ne            #0x753df0
    // 0x753de8: mov             x1, x0
    // 0x753dec: b               #0x753e28
    // 0x753df0: mov             x2, x0
    // 0x753df4: r1 = Function '_updateTickers@378311458':.
    //     0x753df4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18650] AnonymousClosure: (0x4446e8), in [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickers (0x444720)
    //     0x753df8: ldr             x1, [x1, #0x650]
    // 0x753dfc: r0 = AllocateClosure()
    //     0x753dfc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x753e00: ldur            x1, [fp, #-8]
    // 0x753e04: r2 = LoadClassIdInstr(r1)
    //     0x753e04: ldur            x2, [x1, #-1]
    //     0x753e08: ubfx            x2, x2, #0xc, #0x14
    // 0x753e0c: mov             x16, x0
    // 0x753e10: mov             x0, x2
    // 0x753e14: mov             x2, x16
    // 0x753e18: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x753e18: add             lr, x0, #0xfe7
    //     0x753e1c: ldr             lr, [x21, lr, lsl #3]
    //     0x753e20: blr             lr
    // 0x753e24: ldur            x1, [fp, #-0x10]
    // 0x753e28: ArrayStore: r1[0] = rNULL  ; List_4
    //     0x753e28: stur            NULL, [x1, #0x17]
    // 0x753e2c: r0 = Null
    //     0x753e2c: mov             x0, NULL
    // 0x753e30: LeaveFrame
    //     0x753e30: mov             SP, fp
    //     0x753e34: ldp             fp, lr, [SP], #0x10
    // 0x753e38: ret
    //     0x753e38: ret             
    // 0x753e3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753e3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753e40: b               #0x753dd4
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x753e44, size: 0x38
    // 0x753e44: EnterFrame
    //     0x753e44: stp             fp, lr, [SP, #-0x10]!
    //     0x753e48: mov             fp, SP
    // 0x753e4c: ldr             x0, [fp, #0x10]
    // 0x753e50: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x753e50: ldur            w1, [x0, #0x17]
    // 0x753e54: DecompressPointer r1
    //     0x753e54: add             x1, x1, HEAP, lsl #32
    // 0x753e58: CheckStackOverflow
    //     0x753e58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753e5c: cmp             SP, x16
    //     0x753e60: b.ls            #0x753e74
    // 0x753e64: r0 = dispose()
    //     0x753e64: bl              #0x753db4  ; [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::dispose
    // 0x753e68: LeaveFrame
    //     0x753e68: mov             SP, fp
    //     0x753e6c: ldp             fp, lr, [SP], #0x10
    // 0x753e70: ret
    //     0x753e70: ret             
    // 0x753e74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753e74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753e78: b               #0x753e64
  }
  _ activate(/* No info */) {
    // ** addr: 0x758de4, size: 0x48
    // 0x758de4: EnterFrame
    //     0x758de4: stp             fp, lr, [SP, #-0x10]!
    //     0x758de8: mov             fp, SP
    // 0x758dec: AllocStack(0x8)
    //     0x758dec: sub             SP, SP, #8
    // 0x758df0: SetupParameters(__LoginScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x8 */)
    //     0x758df0: mov             x0, x1
    //     0x758df4: stur            x1, [fp, #-8]
    // 0x758df8: CheckStackOverflow
    //     0x758df8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x758dfc: cmp             SP, x16
    //     0x758e00: b.ls            #0x758e24
    // 0x758e04: mov             x1, x0
    // 0x758e08: r0 = _updateTickerModeNotifier()
    //     0x758e08: bl              #0x4445c8  ; [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickerModeNotifier
    // 0x758e0c: ldur            x1, [fp, #-8]
    // 0x758e10: r0 = _updateTickers()
    //     0x758e10: bl              #0x444720  ; [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::_updateTickers
    // 0x758e14: r0 = Null
    //     0x758e14: mov             x0, NULL
    // 0x758e18: LeaveFrame
    //     0x758e18: mov             SP, fp
    //     0x758e1c: ldp             fp, lr, [SP], #0x10
    // 0x758e20: ret
    //     0x758e20: ret             
    // 0x758e24: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x758e24: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x758e28: b               #0x758e04
  }
}

// class id: 2480, size: 0x3c, field offset: 0x1c
class _LoginScreenState extends __LoginScreenState&State&TickerProviderStateMixin {

  late Animation<double> _fadeAnimation; // offset: 0x38
  late AnimationController _fadeController; // offset: 0x34

  _ initState(/* No info */) {
    // ** addr: 0x5e4cb4, size: 0xe4
    // 0x5e4cb4: EnterFrame
    //     0x5e4cb4: stp             fp, lr, [SP, #-0x10]!
    //     0x5e4cb8: mov             fp, SP
    // 0x5e4cbc: AllocStack(0x18)
    //     0x5e4cbc: sub             SP, SP, #0x18
    // 0x5e4cc0: SetupParameters(_LoginScreenState this /* r1 => r2, fp-0x8 */)
    //     0x5e4cc0: mov             x2, x1
    //     0x5e4cc4: stur            x1, [fp, #-8]
    // 0x5e4cc8: CheckStackOverflow
    //     0x5e4cc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e4ccc: cmp             SP, x16
    //     0x5e4cd0: b.ls            #0x5e4d90
    // 0x5e4cd4: r1 = <double>
    //     0x5e4cd4: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5e4cd8: r0 = AnimationController()
    //     0x5e4cd8: bl              #0x42a58c  ; AllocateAnimationControllerStub -> AnimationController (size=0x4c)
    // 0x5e4cdc: stur            x0, [fp, #-0x10]
    // 0x5e4ce0: r16 = Instance_Duration
    //     0x5e4ce0: add             x16, PP, #0x13, lsl #12  ; [pp+0x133a0] Obj!Duration@a2dce1
    //     0x5e4ce4: ldr             x16, [x16, #0x3a0]
    // 0x5e4ce8: str             x16, [SP]
    // 0x5e4cec: mov             x1, x0
    // 0x5e4cf0: ldur            x2, [fp, #-8]
    // 0x5e4cf4: r4 = const [0, 0x3, 0x1, 0x2, duration, 0x2, null]
    //     0x5e4cf4: add             x4, PP, #0x10, lsl #12  ; [pp+0x10f68] List(7) [0, 0x3, 0x1, 0x2, "duration", 0x2, Null]
    //     0x5e4cf8: ldr             x4, [x4, #0xf68]
    // 0x5e4cfc: r0 = AnimationController()
    //     0x5e4cfc: bl              #0x42a00c  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::AnimationController
    // 0x5e4d00: ldur            x0, [fp, #-0x10]
    // 0x5e4d04: ldur            x2, [fp, #-8]
    // 0x5e4d08: StoreField: r2->field_33 = r0
    //     0x5e4d08: stur            w0, [x2, #0x33]
    //     0x5e4d0c: ldurb           w16, [x2, #-1]
    //     0x5e4d10: ldurb           w17, [x0, #-1]
    //     0x5e4d14: and             x16, x17, x16, lsr #2
    //     0x5e4d18: tst             x16, HEAP, lsr #32
    //     0x5e4d1c: b.eq            #0x5e4d24
    //     0x5e4d20: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e4d24: r1 = <double>
    //     0x5e4d24: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5e4d28: r0 = CurvedAnimation()
    //     0x5e4d28: bl              #0x408c88  ; AllocateCurvedAnimationStub -> CurvedAnimation (size=0x1c)
    // 0x5e4d2c: mov             x1, x0
    // 0x5e4d30: ldur            x3, [fp, #-0x10]
    // 0x5e4d34: r2 = Instance_Cubic
    //     0x5e4d34: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ca8] Obj!Cubic@a0f931
    //     0x5e4d38: ldr             x2, [x2, #0xca8]
    // 0x5e4d3c: stur            x0, [fp, #-0x10]
    // 0x5e4d40: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x5e4d40: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x5e4d44: r0 = CurvedAnimation()
    //     0x5e4d44: bl              #0x408b44  ; [package:flutter/src/animation/animations.dart] CurvedAnimation::CurvedAnimation
    // 0x5e4d48: ldur            x0, [fp, #-0x10]
    // 0x5e4d4c: ldur            x1, [fp, #-8]
    // 0x5e4d50: StoreField: r1->field_37 = r0
    //     0x5e4d50: stur            w0, [x1, #0x37]
    //     0x5e4d54: ldurb           w16, [x1, #-1]
    //     0x5e4d58: ldurb           w17, [x0, #-1]
    //     0x5e4d5c: and             x16, x17, x16, lsr #2
    //     0x5e4d60: tst             x16, HEAP, lsr #32
    //     0x5e4d64: b.eq            #0x5e4d6c
    //     0x5e4d68: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e4d6c: LoadField: r0 = r1->field_33
    //     0x5e4d6c: ldur            w0, [x1, #0x33]
    // 0x5e4d70: DecompressPointer r0
    //     0x5e4d70: add             x0, x0, HEAP, lsl #32
    // 0x5e4d74: mov             x1, x0
    // 0x5e4d78: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e4d78: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e4d7c: r0 = forward()
    //     0x5e4d7c: bl              #0x42af68  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::forward
    // 0x5e4d80: r0 = Null
    //     0x5e4d80: mov             x0, NULL
    // 0x5e4d84: LeaveFrame
    //     0x5e4d84: mov             SP, fp
    //     0x5e4d88: ldp             fp, lr, [SP], #0x10
    // 0x5e4d8c: ret
    //     0x5e4d8c: ret             
    // 0x5e4d90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e4d90: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e4d94: b               #0x5e4cd4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ef534, size: 0x50
    // 0x6ef534: ldr             x1, [SP]
    // 0x6ef538: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ef538: ldur            w2, [x1, #0x17]
    // 0x6ef53c: DecompressPointer r2
    //     0x6ef53c: add             x2, x2, HEAP, lsl #32
    // 0x6ef540: LoadField: r1 = r2->field_b
    //     0x6ef540: ldur            w1, [x2, #0xb]
    // 0x6ef544: DecompressPointer r1
    //     0x6ef544: add             x1, x1, HEAP, lsl #32
    // 0x6ef548: LoadField: r3 = r1->field_f
    //     0x6ef548: ldur            w3, [x1, #0xf]
    // 0x6ef54c: DecompressPointer r3
    //     0x6ef54c: add             x3, x3, HEAP, lsl #32
    // 0x6ef550: LoadField: r0 = r2->field_f
    //     0x6ef550: ldur            w0, [x2, #0xf]
    // 0x6ef554: DecompressPointer r0
    //     0x6ef554: add             x0, x0, HEAP, lsl #32
    // 0x6ef558: StoreField: r3->field_2b = r0
    //     0x6ef558: stur            w0, [x3, #0x2b]
    //     0x6ef55c: ldurb           w16, [x3, #-1]
    //     0x6ef560: ldurb           w17, [x0, #-1]
    //     0x6ef564: and             x16, x17, x16, lsr #2
    //     0x6ef568: tst             x16, HEAP, lsr #32
    //     0x6ef56c: b.eq            #0x6ef57c
    //     0x6ef570: str             lr, [SP, #-8]!
    //     0x6ef574: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6ef578: ldr             lr, [SP], #8
    // 0x6ef57c: r0 = Null
    //     0x6ef57c: mov             x0, NULL
    // 0x6ef580: ret
    //     0x6ef580: ret             
  }
  [closure] void <anonymous closure>(dynamic, String) {
    // ** addr: 0x6ef584, size: 0x84
    // 0x6ef584: EnterFrame
    //     0x6ef584: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef588: mov             fp, SP
    // 0x6ef58c: AllocStack(0x10)
    //     0x6ef58c: sub             SP, SP, #0x10
    // 0x6ef590: SetupParameters([dynamic _ /* r0 */])
    //     0x6ef590: ldr             x0, [fp, #0x18]
    //     0x6ef594: ldur            w1, [x0, #0x17]
    //     0x6ef598: add             x1, x1, HEAP, lsl #32
    //     0x6ef59c: stur            x1, [fp, #-8]
    // 0x6ef5a0: CheckStackOverflow
    //     0x6ef5a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef5a4: cmp             SP, x16
    //     0x6ef5a8: b.ls            #0x6ef600
    // 0x6ef5ac: r1 = 1
    //     0x6ef5ac: mov             x1, #1
    // 0x6ef5b0: r0 = AllocateContext()
    //     0x6ef5b0: bl              #0x927010  ; AllocateContextStub
    // 0x6ef5b4: mov             x1, x0
    // 0x6ef5b8: ldur            x0, [fp, #-8]
    // 0x6ef5bc: StoreField: r1->field_b = r0
    //     0x6ef5bc: stur            w0, [x1, #0xb]
    // 0x6ef5c0: ldr             x2, [fp, #0x10]
    // 0x6ef5c4: StoreField: r1->field_f = r2
    //     0x6ef5c4: stur            w2, [x1, #0xf]
    // 0x6ef5c8: LoadField: r3 = r0->field_f
    //     0x6ef5c8: ldur            w3, [x0, #0xf]
    // 0x6ef5cc: DecompressPointer r3
    //     0x6ef5cc: add             x3, x3, HEAP, lsl #32
    // 0x6ef5d0: mov             x2, x1
    // 0x6ef5d4: stur            x3, [fp, #-0x10]
    // 0x6ef5d8: r1 = Function '<anonymous closure>':.
    //     0x6ef5d8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18740] AnonymousClosure: (0x6ef534), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6ef5dc: ldr             x1, [x1, #0x740]
    // 0x6ef5e0: r0 = AllocateClosure()
    //     0x6ef5e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ef5e4: ldur            x1, [fp, #-0x10]
    // 0x6ef5e8: mov             x2, x0
    // 0x6ef5ec: r0 = setState()
    //     0x6ef5ec: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6ef5f0: r0 = Null
    //     0x6ef5f0: mov             x0, NULL
    // 0x6ef5f4: LeaveFrame
    //     0x6ef5f4: mov             SP, fp
    //     0x6ef5f8: ldp             fp, lr, [SP], #0x10
    // 0x6ef5fc: ret
    //     0x6ef5fc: ret             
    // 0x6ef600: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef600: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef604: b               #0x6ef5ac
  }
  _ build(/* No info */) {
    // ** addr: 0x6f84fc, size: 0x9f4
    // 0x6f84fc: EnterFrame
    //     0x6f84fc: stp             fp, lr, [SP, #-0x10]!
    //     0x6f8500: mov             fp, SP
    // 0x6f8504: AllocStack(0x60)
    //     0x6f8504: sub             SP, SP, #0x60
    // 0x6f8508: SetupParameters(_LoginScreenState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6f8508: stur            x1, [fp, #-8]
    //     0x6f850c: stur            x2, [fp, #-0x10]
    // 0x6f8510: CheckStackOverflow
    //     0x6f8510: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f8514: cmp             SP, x16
    //     0x6f8518: b.ls            #0x6f8ed4
    // 0x6f851c: r1 = 2
    //     0x6f851c: mov             x1, #2
    // 0x6f8520: r0 = AllocateContext()
    //     0x6f8520: bl              #0x927010  ; AllocateContextStub
    // 0x6f8524: mov             x3, x0
    // 0x6f8528: ldur            x0, [fp, #-8]
    // 0x6f852c: stur            x3, [fp, #-0x18]
    // 0x6f8530: StoreField: r3->field_f = r0
    //     0x6f8530: stur            w0, [x3, #0xf]
    // 0x6f8534: ldur            x1, [fp, #-0x10]
    // 0x6f8538: StoreField: r3->field_13 = r1
    //     0x6f8538: stur            w1, [x3, #0x13]
    // 0x6f853c: LoadField: r4 = r0->field_37
    //     0x6f853c: ldur            w4, [x0, #0x37]
    // 0x6f8540: DecompressPointer r4
    //     0x6f8540: add             x4, x4, HEAP, lsl #32
    // 0x6f8544: r16 = Sentinel
    //     0x6f8544: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x6f8548: cmp             w4, w16
    // 0x6f854c: b.eq            #0x6f8edc
    // 0x6f8550: stur            x4, [fp, #-0x10]
    // 0x6f8554: r1 = <Widget>
    //     0x6f8554: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f8558: r2 = 34
    //     0x6f8558: mov             x2, #0x22
    // 0x6f855c: r0 = AllocateArray()
    //     0x6f855c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f8560: stur            x0, [fp, #-0x20]
    // 0x6f8564: r16 = Instance_SizedBox
    //     0x6f8564: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e50] Obj!SizedBox@a1fc31
    //     0x6f8568: ldr             x16, [x16, #0xe50]
    // 0x6f856c: StoreField: r0->field_f = r16
    //     0x6f856c: stur            w16, [x0, #0xf]
    // 0x6f8570: r16 = 0.100000
    //     0x6f8570: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x6f8574: ldr             x16, [x16, #0x1f8]
    // 0x6f8578: str             x16, [SP]
    // 0x6f857c: r1 = Instance_Color
    //     0x6f857c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6f8580: ldr             x1, [x1, #0xb78]
    // 0x6f8584: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6f8584: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6f8588: ldr             x4, [x4, #0x198]
    // 0x6f858c: r0 = withValues()
    //     0x6f858c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6f8590: stur            x0, [fp, #-0x28]
    // 0x6f8594: r0 = BoxDecoration()
    //     0x6f8594: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6f8598: mov             x1, x0
    // 0x6f859c: ldur            x0, [fp, #-0x28]
    // 0x6f85a0: stur            x1, [fp, #-0x30]
    // 0x6f85a4: StoreField: r1->field_7 = r0
    //     0x6f85a4: stur            w0, [x1, #7]
    // 0x6f85a8: r0 = Instance_BoxShape
    //     0x6f85a8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x6f85ac: ldr             x0, [x0, #0x1a0]
    // 0x6f85b0: StoreField: r1->field_23 = r0
    //     0x6f85b0: stur            w0, [x1, #0x23]
    // 0x6f85b4: r0 = Image()
    //     0x6f85b4: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x6f85b8: stur            x0, [fp, #-0x28]
    // 0x6f85bc: r16 = 150.000000
    //     0x6f85bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18658] 150
    //     0x6f85c0: ldr             x16, [x16, #0x658]
    // 0x6f85c4: str             x16, [SP]
    // 0x6f85c8: mov             x1, x0
    // 0x6f85cc: r2 = "assets/icons/logo.png"
    //     0x6f85cc: add             x2, PP, #0x18, lsl #12  ; [pp+0x18660] "assets/icons/logo.png"
    //     0x6f85d0: ldr             x2, [x2, #0x660]
    // 0x6f85d4: r4 = const [0, 0x3, 0x1, 0x2, width, 0x2, null]
    //     0x6f85d4: add             x4, PP, #0x18, lsl #12  ; [pp+0x18668] List(7) [0, 0x3, 0x1, 0x2, "width", 0x2, Null]
    //     0x6f85d8: ldr             x4, [x4, #0x668]
    // 0x6f85dc: r0 = Image.asset()
    //     0x6f85dc: bl              #0x6f8f2c  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0x6f85e0: r0 = Container()
    //     0x6f85e0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6f85e4: stur            x0, [fp, #-0x38]
    // 0x6f85e8: r16 = Instance_EdgeInsets
    //     0x6f85e8: ldr             x16, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6f85ec: ldur            lr, [fp, #-0x30]
    // 0x6f85f0: stp             lr, x16, [SP, #8]
    // 0x6f85f4: ldur            x16, [fp, #-0x28]
    // 0x6f85f8: str             x16, [SP]
    // 0x6f85fc: mov             x1, x0
    // 0x6f8600: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6f8600: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6f8604: ldr             x4, [x4, #0x1e8]
    // 0x6f8608: r0 = Container()
    //     0x6f8608: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6f860c: ldur            x1, [fp, #-0x20]
    // 0x6f8610: ldur            x0, [fp, #-0x38]
    // 0x6f8614: ArrayStore: r1[1] = r0  ; List_4
    //     0x6f8614: add             x25, x1, #0x13
    //     0x6f8618: str             w0, [x25]
    //     0x6f861c: tbz             w0, #0, #0x6f8638
    //     0x6f8620: ldurb           w16, [x1, #-1]
    //     0x6f8624: ldurb           w17, [x0, #-1]
    //     0x6f8628: and             x16, x17, x16, lsr #2
    //     0x6f862c: tst             x16, HEAP, lsr #32
    //     0x6f8630: b.eq            #0x6f8638
    //     0x6f8634: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f8638: ldur            x1, [fp, #-0x20]
    // 0x6f863c: r16 = Instance_SizedBox
    //     0x6f863c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18670] Obj!SizedBox@a1fc11
    //     0x6f8640: ldr             x16, [x16, #0x670]
    // 0x6f8644: ArrayStore: r1[0] = r16  ; List_4
    //     0x6f8644: stur            w16, [x1, #0x17]
    // 0x6f8648: r0 = TextStyle()
    //     0x6f8648: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f864c: mov             x1, x0
    // 0x6f8650: r0 = true
    //     0x6f8650: add             x0, NULL, #0x20  ; true
    // 0x6f8654: stur            x1, [fp, #-0x28]
    // 0x6f8658: StoreField: r1->field_7 = r0
    //     0x6f8658: stur            w0, [x1, #7]
    // 0x6f865c: r2 = Instance_Color
    //     0x6f865c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x6f8660: ldr             x2, [x2, #0x790]
    // 0x6f8664: StoreField: r1->field_b = r2
    //     0x6f8664: stur            w2, [x1, #0xb]
    // 0x6f8668: r3 = 28.000000
    //     0x6f8668: add             x3, PP, #0x18, lsl #12  ; [pp+0x18678] 28
    //     0x6f866c: ldr             x3, [x3, #0x678]
    // 0x6f8670: StoreField: r1->field_1f = r3
    //     0x6f8670: stur            w3, [x1, #0x1f]
    // 0x6f8674: r3 = Instance_FontWeight
    //     0x6f8674: add             x3, PP, #0x14, lsl #12  ; [pp+0x149c8] Obj!FontWeight@a21041
    //     0x6f8678: ldr             x3, [x3, #0x9c8]
    // 0x6f867c: StoreField: r1->field_23 = r3
    //     0x6f867c: stur            w3, [x1, #0x23]
    // 0x6f8680: r3 = -0.500000
    //     0x6f8680: add             x3, PP, #0x15, lsl #12  ; [pp+0x15dc0] -0.5
    //     0x6f8684: ldr             x3, [x3, #0xdc0]
    // 0x6f8688: StoreField: r1->field_2b = r3
    //     0x6f8688: stur            w3, [x1, #0x2b]
    // 0x6f868c: r3 = 1.300000
    //     0x6f868c: add             x3, PP, #0x18, lsl #12  ; [pp+0x18680] 1.3
    //     0x6f8690: ldr             x3, [x3, #0x680]
    // 0x6f8694: StoreField: r1->field_37 = r3
    //     0x6f8694: stur            w3, [x1, #0x37]
    // 0x6f8698: r0 = Text()
    //     0x6f8698: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f869c: mov             x1, x0
    // 0x6f86a0: r0 = "Kutsal Yolculukta\nYanınızdaki Rehber"
    //     0x6f86a0: add             x0, PP, #0x18, lsl #12  ; [pp+0x18688] "Kutsal Yolculukta\nYanınızdaki Rehber"
    //     0x6f86a4: ldr             x0, [x0, #0x688]
    // 0x6f86a8: StoreField: r1->field_b = r0
    //     0x6f86a8: stur            w0, [x1, #0xb]
    // 0x6f86ac: ldur            x0, [fp, #-0x28]
    // 0x6f86b0: StoreField: r1->field_13 = r0
    //     0x6f86b0: stur            w0, [x1, #0x13]
    // 0x6f86b4: r0 = Instance_TextAlign
    //     0x6f86b4: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x6f86b8: StoreField: r1->field_1b = r0
    //     0x6f86b8: stur            w0, [x1, #0x1b]
    // 0x6f86bc: mov             x0, x1
    // 0x6f86c0: ldur            x1, [fp, #-0x20]
    // 0x6f86c4: ArrayStore: r1[3] = r0  ; List_4
    //     0x6f86c4: add             x25, x1, #0x1b
    //     0x6f86c8: str             w0, [x25]
    //     0x6f86cc: tbz             w0, #0, #0x6f86e8
    //     0x6f86d0: ldurb           w16, [x1, #-1]
    //     0x6f86d4: ldurb           w17, [x0, #-1]
    //     0x6f86d8: and             x16, x17, x16, lsr #2
    //     0x6f86dc: tst             x16, HEAP, lsr #32
    //     0x6f86e0: b.eq            #0x6f86e8
    //     0x6f86e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f86e8: ldur            x0, [fp, #-0x20]
    // 0x6f86ec: r16 = Instance_SizedBox
    //     0x6f86ec: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b58] Obj!SizedBox@a1faf1
    //     0x6f86f0: ldr             x16, [x16, #0xb58]
    // 0x6f86f4: StoreField: r0->field_1f = r16
    //     0x6f86f4: stur            w16, [x0, #0x1f]
    // 0x6f86f8: r1 = _ConstMap len:12
    //     0x6f86f8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f86fc: r2 = 1200
    //     0x6f86fc: mov             x2, #0x4b0
    // 0x6f8700: r0 = []()
    //     0x6f8700: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f8704: stur            x0, [fp, #-0x28]
    // 0x6f8708: cmp             w0, NULL
    // 0x6f870c: b.eq            #0x6f8ee8
    // 0x6f8710: r0 = TextStyle()
    //     0x6f8710: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f8714: mov             x1, x0
    // 0x6f8718: r0 = true
    //     0x6f8718: add             x0, NULL, #0x20  ; true
    // 0x6f871c: stur            x1, [fp, #-0x30]
    // 0x6f8720: StoreField: r1->field_7 = r0
    //     0x6f8720: stur            w0, [x1, #7]
    // 0x6f8724: ldur            x2, [fp, #-0x28]
    // 0x6f8728: StoreField: r1->field_b = r2
    //     0x6f8728: stur            w2, [x1, #0xb]
    // 0x6f872c: r2 = 16.000000
    //     0x6f872c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x6f8730: ldr             x2, [x2, #0x358]
    // 0x6f8734: StoreField: r1->field_1f = r2
    //     0x6f8734: stur            w2, [x1, #0x1f]
    // 0x6f8738: r2 = Instance_FontWeight
    //     0x6f8738: add             x2, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x6f873c: ldr             x2, [x2, #0x5d0]
    // 0x6f8740: StoreField: r1->field_23 = r2
    //     0x6f8740: stur            w2, [x1, #0x23]
    // 0x6f8744: r0 = Text()
    //     0x6f8744: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f8748: mov             x1, x0
    // 0x6f874c: r0 = "Selamün Aleyküm!"
    //     0x6f874c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18690] "Selamün Aleyküm!"
    //     0x6f8750: ldr             x0, [x0, #0x690]
    // 0x6f8754: StoreField: r1->field_b = r0
    //     0x6f8754: stur            w0, [x1, #0xb]
    // 0x6f8758: ldur            x0, [fp, #-0x30]
    // 0x6f875c: StoreField: r1->field_13 = r0
    //     0x6f875c: stur            w0, [x1, #0x13]
    // 0x6f8760: mov             x0, x1
    // 0x6f8764: ldur            x1, [fp, #-0x20]
    // 0x6f8768: ArrayStore: r1[5] = r0  ; List_4
    //     0x6f8768: add             x25, x1, #0x23
    //     0x6f876c: str             w0, [x25]
    //     0x6f8770: tbz             w0, #0, #0x6f878c
    //     0x6f8774: ldurb           w16, [x1, #-1]
    //     0x6f8778: ldurb           w17, [x0, #-1]
    //     0x6f877c: and             x16, x17, x16, lsr #2
    //     0x6f8780: tst             x16, HEAP, lsr #32
    //     0x6f8784: b.eq            #0x6f878c
    //     0x6f8788: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f878c: ldur            x1, [fp, #-0x20]
    // 0x6f8790: r16 = Instance_SizedBox
    //     0x6f8790: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e50] Obj!SizedBox@a1fc31
    //     0x6f8794: ldr             x16, [x16, #0xe50]
    // 0x6f8798: StoreField: r1->field_27 = r16
    //     0x6f8798: stur            w16, [x1, #0x27]
    // 0x6f879c: r0 = SectionTitle()
    //     0x6f879c: bl              #0x6f8f20  ; AllocateSectionTitleStub -> SectionTitle (size=0x10)
    // 0x6f87a0: mov             x1, x0
    // 0x6f87a4: r0 = "Giriş Tipi"
    //     0x6f87a4: add             x0, PP, #0x18, lsl #12  ; [pp+0x18698] "Giriş Tipi"
    //     0x6f87a8: ldr             x0, [x0, #0x698]
    // 0x6f87ac: StoreField: r1->field_b = r0
    //     0x6f87ac: stur            w0, [x1, #0xb]
    // 0x6f87b0: mov             x0, x1
    // 0x6f87b4: ldur            x1, [fp, #-0x20]
    // 0x6f87b8: ArrayStore: r1[7] = r0  ; List_4
    //     0x6f87b8: add             x25, x1, #0x2b
    //     0x6f87bc: str             w0, [x25]
    //     0x6f87c0: tbz             w0, #0, #0x6f87dc
    //     0x6f87c4: ldurb           w16, [x1, #-1]
    //     0x6f87c8: ldurb           w17, [x0, #-1]
    //     0x6f87cc: and             x16, x17, x16, lsr #2
    //     0x6f87d0: tst             x16, HEAP, lsr #32
    //     0x6f87d4: b.eq            #0x6f87dc
    //     0x6f87d8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f87dc: ldur            x1, [fp, #-0x20]
    // 0x6f87e0: r16 = Instance_SizedBox
    //     0x6f87e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f87e4: ldr             x16, [x16, #0x220]
    // 0x6f87e8: StoreField: r1->field_2f = r16
    //     0x6f87e8: stur            w16, [x1, #0x2f]
    // 0x6f87ec: ldur            x0, [fp, #-8]
    // 0x6f87f0: LoadField: r2 = r0->field_2b
    //     0x6f87f0: ldur            w2, [x0, #0x2b]
    // 0x6f87f4: DecompressPointer r2
    //     0x6f87f4: add             x2, x2, HEAP, lsl #32
    // 0x6f87f8: stur            x2, [fp, #-0x28]
    // 0x6f87fc: r0 = UserTypeSelector()
    //     0x6f87fc: bl              #0x6f8f14  ; AllocateUserTypeSelectorStub -> UserTypeSelector (size=0x1c)
    // 0x6f8800: mov             x3, x0
    // 0x6f8804: r0 = Instance_Color
    //     0x6f8804: add             x0, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x6f8808: ldr             x0, [x0, #0x790]
    // 0x6f880c: stur            x3, [fp, #-0x30]
    // 0x6f8810: StoreField: r3->field_b = r0
    //     0x6f8810: stur            w0, [x3, #0xb]
    // 0x6f8814: r0 = Instance_Color
    //     0x6f8814: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6f8818: ldr             x0, [x0, #0xb78]
    // 0x6f881c: StoreField: r3->field_f = r0
    //     0x6f881c: stur            w0, [x3, #0xf]
    // 0x6f8820: ldur            x1, [fp, #-0x28]
    // 0x6f8824: StoreField: r3->field_13 = r1
    //     0x6f8824: stur            w1, [x3, #0x13]
    // 0x6f8828: ldur            x2, [fp, #-0x18]
    // 0x6f882c: r1 = Function '<anonymous closure>':.
    //     0x6f882c: add             x1, PP, #0x18, lsl #12  ; [pp+0x186a0] AnonymousClosure: (0x6ef584), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f8830: ldr             x1, [x1, #0x6a0]
    // 0x6f8834: r0 = AllocateClosure()
    //     0x6f8834: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f8838: mov             x1, x0
    // 0x6f883c: ldur            x0, [fp, #-0x30]
    // 0x6f8840: ArrayStore: r0[0] = r1  ; List_4
    //     0x6f8840: stur            w1, [x0, #0x17]
    // 0x6f8844: ldur            x1, [fp, #-0x20]
    // 0x6f8848: ArrayStore: r1[9] = r0  ; List_4
    //     0x6f8848: add             x25, x1, #0x33
    //     0x6f884c: str             w0, [x25]
    //     0x6f8850: tbz             w0, #0, #0x6f886c
    //     0x6f8854: ldurb           w16, [x1, #-1]
    //     0x6f8858: ldurb           w17, [x0, #-1]
    //     0x6f885c: and             x16, x17, x16, lsr #2
    //     0x6f8860: tst             x16, HEAP, lsr #32
    //     0x6f8864: b.eq            #0x6f886c
    //     0x6f8868: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f886c: ldur            x1, [fp, #-0x20]
    // 0x6f8870: r16 = Instance_SizedBox
    //     0x6f8870: add             x16, PP, #0x18, lsl #12  ; [pp+0x18670] Obj!SizedBox@a1fc11
    //     0x6f8874: ldr             x16, [x16, #0x670]
    // 0x6f8878: StoreField: r1->field_37 = r16
    //     0x6f8878: stur            w16, [x1, #0x37]
    // 0x6f887c: ldur            x0, [fp, #-8]
    // 0x6f8880: LoadField: r2 = r0->field_1b
    //     0x6f8880: ldur            w2, [x0, #0x1b]
    // 0x6f8884: DecompressPointer r2
    //     0x6f8884: add             x2, x2, HEAP, lsl #32
    // 0x6f8888: stur            x2, [fp, #-0x30]
    // 0x6f888c: LoadField: r3 = r0->field_1f
    //     0x6f888c: ldur            w3, [x0, #0x1f]
    // 0x6f8890: DecompressPointer r3
    //     0x6f8890: add             x3, x3, HEAP, lsl #32
    // 0x6f8894: stur            x3, [fp, #-0x28]
    // 0x6f8898: r0 = InitLateStaticField(0x5f4) // [package:flutter/src/services/text_formatter.dart] FilteringTextInputFormatter::digitsOnly
    //     0x6f8898: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6f889c: ldr             x0, [x0, #0xbe8]
    //     0x6f88a0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6f88a4: cmp             w0, w16
    //     0x6f88a8: b.ne            #0x6f88b8
    //     0x6f88ac: add             x2, PP, #0x18, lsl #12  ; [pp+0x186a8] Field <FilteringTextInputFormatter.digitsOnly>: static late final (offset: 0x5f4)
    //     0x6f88b0: ldr             x2, [x2, #0x6a8]
    //     0x6f88b4: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6f88b8: stur            x0, [fp, #-0x38]
    // 0x6f88bc: r0 = LengthLimitingTextInputFormatter()
    //     0x6f88bc: bl              #0x6a0330  ; AllocateLengthLimitingTextInputFormatterStub -> LengthLimitingTextInputFormatter (size=0x10)
    // 0x6f88c0: mov             x3, x0
    // 0x6f88c4: r0 = 22
    //     0x6f88c4: mov             x0, #0x16
    // 0x6f88c8: stur            x3, [fp, #-0x40]
    // 0x6f88cc: StoreField: r3->field_7 = r0
    //     0x6f88cc: stur            w0, [x3, #7]
    // 0x6f88d0: r1 = Null
    //     0x6f88d0: mov             x1, NULL
    // 0x6f88d4: r2 = 4
    //     0x6f88d4: mov             x2, #4
    // 0x6f88d8: r0 = AllocateArray()
    //     0x6f88d8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f88dc: mov             x2, x0
    // 0x6f88e0: ldur            x0, [fp, #-0x38]
    // 0x6f88e4: stur            x2, [fp, #-0x48]
    // 0x6f88e8: StoreField: r2->field_f = r0
    //     0x6f88e8: stur            w0, [x2, #0xf]
    // 0x6f88ec: ldur            x0, [fp, #-0x40]
    // 0x6f88f0: StoreField: r2->field_13 = r0
    //     0x6f88f0: stur            w0, [x2, #0x13]
    // 0x6f88f4: r1 = <TextInputFormatter>
    //     0x6f88f4: add             x1, PP, #0x18, lsl #12  ; [pp+0x186b0] TypeArguments: <TextInputFormatter>
    //     0x6f88f8: ldr             x1, [x1, #0x6b0]
    // 0x6f88fc: r0 = AllocateGrowableArray()
    //     0x6f88fc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f8900: mov             x1, x0
    // 0x6f8904: ldur            x0, [fp, #-0x48]
    // 0x6f8908: stur            x1, [fp, #-0x38]
    // 0x6f890c: StoreField: r1->field_f = r0
    //     0x6f890c: stur            w0, [x1, #0xf]
    // 0x6f8910: r2 = 4
    //     0x6f8910: mov             x2, #4
    // 0x6f8914: StoreField: r1->field_b = r2
    //     0x6f8914: stur            w2, [x1, #0xb]
    // 0x6f8918: r0 = AppTextField()
    //     0x6f8918: bl              #0x6f8f08  ; AllocateAppTextFieldStub -> AppTextField (size=0x24)
    // 0x6f891c: mov             x3, x0
    // 0x6f8920: ldur            x0, [fp, #-0x28]
    // 0x6f8924: stur            x3, [fp, #-0x40]
    // 0x6f8928: StoreField: r3->field_b = r0
    //     0x6f8928: stur            w0, [x3, #0xb]
    // 0x6f892c: r1 = "TC Kimlik No"
    //     0x6f892c: add             x1, PP, #0x18, lsl #12  ; [pp+0x186b8] "TC Kimlik No"
    //     0x6f8930: ldr             x1, [x1, #0x6b8]
    // 0x6f8934: StoreField: r3->field_f = r1
    //     0x6f8934: stur            w1, [x3, #0xf]
    // 0x6f8938: r1 = Instance_IconData
    //     0x6f8938: add             x1, PP, #0x15, lsl #12  ; [pp+0x159f0] Obj!IconData@a0a181
    //     0x6f893c: ldr             x1, [x1, #0x9f0]
    // 0x6f8940: StoreField: r3->field_13 = r1
    //     0x6f8940: stur            w1, [x3, #0x13]
    // 0x6f8944: r1 = Instance_TextInputType
    //     0x6f8944: add             x1, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6f8948: ldr             x1, [x1, #0x948]
    // 0x6f894c: ArrayStore: r3[0] = r1  ; List_4
    //     0x6f894c: stur            w1, [x3, #0x17]
    // 0x6f8950: ldur            x1, [fp, #-0x38]
    // 0x6f8954: StoreField: r3->field_1b = r1
    //     0x6f8954: stur            w1, [x3, #0x1b]
    // 0x6f8958: r1 = Function '<anonymous closure>':.
    //     0x6f8958: add             x1, PP, #0x18, lsl #12  ; [pp+0x186c0] AnonymousClosure: (0x6f9580), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f895c: ldr             x1, [x1, #0x6c0]
    // 0x6f8960: r2 = Null
    //     0x6f8960: mov             x2, NULL
    // 0x6f8964: r0 = AllocateClosure()
    //     0x6f8964: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f8968: mov             x1, x0
    // 0x6f896c: ldur            x0, [fp, #-0x40]
    // 0x6f8970: StoreField: r0->field_1f = r1
    //     0x6f8970: stur            w1, [x0, #0x1f]
    // 0x6f8974: r1 = Null
    //     0x6f8974: mov             x1, NULL
    // 0x6f8978: r2 = 2
    //     0x6f8978: mov             x2, #2
    // 0x6f897c: r0 = AllocateArray()
    //     0x6f897c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f8980: mov             x2, x0
    // 0x6f8984: ldur            x0, [fp, #-0x40]
    // 0x6f8988: stur            x2, [fp, #-0x38]
    // 0x6f898c: StoreField: r2->field_f = r0
    //     0x6f898c: stur            w0, [x2, #0xf]
    // 0x6f8990: r1 = <Widget>
    //     0x6f8990: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f8994: r0 = AllocateGrowableArray()
    //     0x6f8994: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f8998: mov             x1, x0
    // 0x6f899c: ldur            x0, [fp, #-0x38]
    // 0x6f89a0: stur            x1, [fp, #-0x40]
    // 0x6f89a4: StoreField: r1->field_f = r0
    //     0x6f89a4: stur            w0, [x1, #0xf]
    // 0x6f89a8: r0 = 2
    //     0x6f89a8: mov             x0, #2
    // 0x6f89ac: StoreField: r1->field_b = r0
    //     0x6f89ac: stur            w0, [x1, #0xb]
    // 0x6f89b0: r0 = Column()
    //     0x6f89b0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f89b4: mov             x1, x0
    // 0x6f89b8: r0 = Instance_Axis
    //     0x6f89b8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f89bc: stur            x1, [fp, #-0x38]
    // 0x6f89c0: StoreField: r1->field_f = r0
    //     0x6f89c0: stur            w0, [x1, #0xf]
    // 0x6f89c4: r2 = Instance_MainAxisAlignment
    //     0x6f89c4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f89c8: ldr             x2, [x2, #0x230]
    // 0x6f89cc: StoreField: r1->field_13 = r2
    //     0x6f89cc: stur            w2, [x1, #0x13]
    // 0x6f89d0: r3 = Instance_MainAxisSize
    //     0x6f89d0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f89d4: ldr             x3, [x3, #0x330]
    // 0x6f89d8: ArrayStore: r1[0] = r3  ; List_4
    //     0x6f89d8: stur            w3, [x1, #0x17]
    // 0x6f89dc: r4 = Instance_CrossAxisAlignment
    //     0x6f89dc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f89e0: ldr             x4, [x4, #0x338]
    // 0x6f89e4: StoreField: r1->field_1b = r4
    //     0x6f89e4: stur            w4, [x1, #0x1b]
    // 0x6f89e8: r5 = Instance_VerticalDirection
    //     0x6f89e8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f89ec: ldr             x5, [x5, #0x340]
    // 0x6f89f0: StoreField: r1->field_23 = r5
    //     0x6f89f0: stur            w5, [x1, #0x23]
    // 0x6f89f4: r6 = Instance_Clip
    //     0x6f89f4: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f89f8: ldr             x6, [x6, #0x348]
    // 0x6f89fc: StoreField: r1->field_2b = r6
    //     0x6f89fc: stur            w6, [x1, #0x2b]
    // 0x6f8a00: StoreField: r1->field_2f = rZR
    //     0x6f8a00: stur            xzr, [x1, #0x2f]
    // 0x6f8a04: ldur            x7, [fp, #-0x40]
    // 0x6f8a08: StoreField: r1->field_b = r7
    //     0x6f8a08: stur            w7, [x1, #0xb]
    // 0x6f8a0c: r0 = Form()
    //     0x6f8a0c: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6f8a10: mov             x1, x0
    // 0x6f8a14: ldur            x0, [fp, #-0x38]
    // 0x6f8a18: StoreField: r1->field_b = r0
    //     0x6f8a18: stur            w0, [x1, #0xb]
    // 0x6f8a1c: r0 = Instance_AutovalidateMode
    //     0x6f8a1c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6f8a20: ldr             x0, [x0, #0xb68]
    // 0x6f8a24: StoreField: r1->field_23 = r0
    //     0x6f8a24: stur            w0, [x1, #0x23]
    // 0x6f8a28: ldur            x2, [fp, #-0x30]
    // 0x6f8a2c: StoreField: r1->field_7 = r2
    //     0x6f8a2c: stur            w2, [x1, #7]
    // 0x6f8a30: mov             x0, x1
    // 0x6f8a34: ldur            x1, [fp, #-0x20]
    // 0x6f8a38: ArrayStore: r1[11] = r0  ; List_4
    //     0x6f8a38: add             x25, x1, #0x3b
    //     0x6f8a3c: str             w0, [x25]
    //     0x6f8a40: tbz             w0, #0, #0x6f8a5c
    //     0x6f8a44: ldurb           w16, [x1, #-1]
    //     0x6f8a48: ldurb           w17, [x0, #-1]
    //     0x6f8a4c: and             x16, x17, x16, lsr #2
    //     0x6f8a50: tst             x16, HEAP, lsr #32
    //     0x6f8a54: b.eq            #0x6f8a5c
    //     0x6f8a58: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f8a5c: ldur            x1, [fp, #-0x20]
    // 0x6f8a60: r16 = Instance_SizedBox
    //     0x6f8a60: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x6f8a64: ldr             x16, [x16, #0x470]
    // 0x6f8a68: StoreField: r1->field_3f = r16
    //     0x6f8a68: stur            w16, [x1, #0x3f]
    // 0x6f8a6c: ldur            x0, [fp, #-8]
    // 0x6f8a70: LoadField: r3 = r0->field_2f
    //     0x6f8a70: ldur            w3, [x0, #0x2f]
    // 0x6f8a74: DecompressPointer r3
    //     0x6f8a74: add             x3, x3, HEAP, lsl #32
    // 0x6f8a78: stur            x3, [fp, #-0x38]
    // 0x6f8a7c: r0 = Checkbox()
    //     0x6f8a7c: bl              #0x6f8efc  ; AllocateCheckboxStub -> Checkbox (size=0x5c)
    // 0x6f8a80: mov             x3, x0
    // 0x6f8a84: ldur            x0, [fp, #-0x38]
    // 0x6f8a88: stur            x3, [fp, #-0x40]
    // 0x6f8a8c: StoreField: r3->field_b = r0
    //     0x6f8a8c: stur            w0, [x3, #0xb]
    // 0x6f8a90: r0 = false
    //     0x6f8a90: add             x0, NULL, #0x30  ; false
    // 0x6f8a94: StoreField: r3->field_23 = r0
    //     0x6f8a94: stur            w0, [x3, #0x23]
    // 0x6f8a98: ldur            x2, [fp, #-0x18]
    // 0x6f8a9c: r1 = Function '<anonymous closure>':.
    //     0x6f8a9c: add             x1, PP, #0x18, lsl #12  ; [pp+0x186c8] AnonymousClosure: (0x6f9460), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f8aa0: ldr             x1, [x1, #0x6c8]
    // 0x6f8aa4: r0 = AllocateClosure()
    //     0x6f8aa4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f8aa8: mov             x1, x0
    // 0x6f8aac: ldur            x0, [fp, #-0x40]
    // 0x6f8ab0: StoreField: r0->field_f = r1
    //     0x6f8ab0: stur            w1, [x0, #0xf]
    // 0x6f8ab4: r3 = Instance_Color
    //     0x6f8ab4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6f8ab8: ldr             x3, [x3, #0xb78]
    // 0x6f8abc: ArrayStore: r0[0] = r3  ; List_4
    //     0x6f8abc: stur            w3, [x0, #0x17]
    // 0x6f8ac0: r4 = false
    //     0x6f8ac0: add             x4, NULL, #0x30  ; false
    // 0x6f8ac4: StoreField: r0->field_43 = r4
    //     0x6f8ac4: stur            w4, [x0, #0x43]
    // 0x6f8ac8: StoreField: r0->field_4f = r4
    //     0x6f8ac8: stur            w4, [x0, #0x4f]
    // 0x6f8acc: r1 = Instance__CheckboxType
    //     0x6f8acc: add             x1, PP, #0x18, lsl #12  ; [pp+0x186d0] Obj!_CheckboxType@a2bc91
    //     0x6f8ad0: ldr             x1, [x1, #0x6d0]
    // 0x6f8ad4: StoreField: r0->field_57 = r1
    //     0x6f8ad4: stur            w1, [x0, #0x57]
    // 0x6f8ad8: r1 = _ConstMap len:12
    //     0x6f8ad8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6f8adc: r2 = 1400
    //     0x6f8adc: mov             x2, #0x578
    // 0x6f8ae0: r0 = []()
    //     0x6f8ae0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6f8ae4: stur            x0, [fp, #-0x38]
    // 0x6f8ae8: cmp             w0, NULL
    // 0x6f8aec: b.eq            #0x6f8eec
    // 0x6f8af0: r0 = TextStyle()
    //     0x6f8af0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6f8af4: mov             x1, x0
    // 0x6f8af8: r0 = true
    //     0x6f8af8: add             x0, NULL, #0x20  ; true
    // 0x6f8afc: stur            x1, [fp, #-0x48]
    // 0x6f8b00: StoreField: r1->field_7 = r0
    //     0x6f8b00: stur            w0, [x1, #7]
    // 0x6f8b04: ldur            x2, [fp, #-0x38]
    // 0x6f8b08: StoreField: r1->field_b = r2
    //     0x6f8b08: stur            w2, [x1, #0xb]
    // 0x6f8b0c: r2 = 14.000000
    //     0x6f8b0c: add             x2, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x6f8b10: ldr             x2, [x2, #0x1c8]
    // 0x6f8b14: StoreField: r1->field_1f = r2
    //     0x6f8b14: stur            w2, [x1, #0x1f]
    // 0x6f8b18: r0 = Text()
    //     0x6f8b18: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f8b1c: mov             x2, x0
    // 0x6f8b20: r0 = "KVKK Aydınlatma Metnini okudum ve onaylıyorum"
    //     0x6f8b20: add             x0, PP, #0x18, lsl #12  ; [pp+0x186d8] "KVKK Aydınlatma Metnini okudum ve onaylıyorum"
    //     0x6f8b24: ldr             x0, [x0, #0x6d8]
    // 0x6f8b28: stur            x2, [fp, #-0x38]
    // 0x6f8b2c: StoreField: r2->field_b = r0
    //     0x6f8b2c: stur            w0, [x2, #0xb]
    // 0x6f8b30: ldur            x0, [fp, #-0x48]
    // 0x6f8b34: StoreField: r2->field_13 = r0
    //     0x6f8b34: stur            w0, [x2, #0x13]
    // 0x6f8b38: r1 = <FlexParentData>
    //     0x6f8b38: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6f8b3c: ldr             x1, [x1, #0x340]
    // 0x6f8b40: r0 = Expanded()
    //     0x6f8b40: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6f8b44: mov             x3, x0
    // 0x6f8b48: r0 = 1
    //     0x6f8b48: mov             x0, #1
    // 0x6f8b4c: stur            x3, [fp, #-0x48]
    // 0x6f8b50: StoreField: r3->field_13 = r0
    //     0x6f8b50: stur            x0, [x3, #0x13]
    // 0x6f8b54: r0 = Instance_FlexFit
    //     0x6f8b54: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6f8b58: ldr             x0, [x0, #0x348]
    // 0x6f8b5c: StoreField: r3->field_1b = r0
    //     0x6f8b5c: stur            w0, [x3, #0x1b]
    // 0x6f8b60: ldur            x0, [fp, #-0x38]
    // 0x6f8b64: StoreField: r3->field_b = r0
    //     0x6f8b64: stur            w0, [x3, #0xb]
    // 0x6f8b68: r1 = Null
    //     0x6f8b68: mov             x1, NULL
    // 0x6f8b6c: r2 = 4
    //     0x6f8b6c: mov             x2, #4
    // 0x6f8b70: r0 = AllocateArray()
    //     0x6f8b70: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f8b74: mov             x2, x0
    // 0x6f8b78: ldur            x0, [fp, #-0x40]
    // 0x6f8b7c: stur            x2, [fp, #-0x38]
    // 0x6f8b80: StoreField: r2->field_f = r0
    //     0x6f8b80: stur            w0, [x2, #0xf]
    // 0x6f8b84: ldur            x0, [fp, #-0x48]
    // 0x6f8b88: StoreField: r2->field_13 = r0
    //     0x6f8b88: stur            w0, [x2, #0x13]
    // 0x6f8b8c: r1 = <Widget>
    //     0x6f8b8c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f8b90: r0 = AllocateGrowableArray()
    //     0x6f8b90: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f8b94: mov             x1, x0
    // 0x6f8b98: ldur            x0, [fp, #-0x38]
    // 0x6f8b9c: stur            x1, [fp, #-0x40]
    // 0x6f8ba0: StoreField: r1->field_f = r0
    //     0x6f8ba0: stur            w0, [x1, #0xf]
    // 0x6f8ba4: r0 = 4
    //     0x6f8ba4: mov             x0, #4
    // 0x6f8ba8: StoreField: r1->field_b = r0
    //     0x6f8ba8: stur            w0, [x1, #0xb]
    // 0x6f8bac: r0 = Row()
    //     0x6f8bac: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6f8bb0: mov             x1, x0
    // 0x6f8bb4: r0 = Instance_Axis
    //     0x6f8bb4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6f8bb8: stur            x1, [fp, #-0x38]
    // 0x6f8bbc: StoreField: r1->field_f = r0
    //     0x6f8bbc: stur            w0, [x1, #0xf]
    // 0x6f8bc0: r0 = Instance_MainAxisAlignment
    //     0x6f8bc0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f8bc4: ldr             x0, [x0, #0x230]
    // 0x6f8bc8: StoreField: r1->field_13 = r0
    //     0x6f8bc8: stur            w0, [x1, #0x13]
    // 0x6f8bcc: r2 = Instance_MainAxisSize
    //     0x6f8bcc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f8bd0: ldr             x2, [x2, #0x330]
    // 0x6f8bd4: ArrayStore: r1[0] = r2  ; List_4
    //     0x6f8bd4: stur            w2, [x1, #0x17]
    // 0x6f8bd8: r3 = Instance_CrossAxisAlignment
    //     0x6f8bd8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f8bdc: ldr             x3, [x3, #0x338]
    // 0x6f8be0: StoreField: r1->field_1b = r3
    //     0x6f8be0: stur            w3, [x1, #0x1b]
    // 0x6f8be4: r4 = Instance_VerticalDirection
    //     0x6f8be4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f8be8: ldr             x4, [x4, #0x340]
    // 0x6f8bec: StoreField: r1->field_23 = r4
    //     0x6f8bec: stur            w4, [x1, #0x23]
    // 0x6f8bf0: r5 = Instance_Clip
    //     0x6f8bf0: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f8bf4: ldr             x5, [x5, #0x348]
    // 0x6f8bf8: StoreField: r1->field_2b = r5
    //     0x6f8bf8: stur            w5, [x1, #0x2b]
    // 0x6f8bfc: StoreField: r1->field_2f = rZR
    //     0x6f8bfc: stur            xzr, [x1, #0x2f]
    // 0x6f8c00: ldur            x6, [fp, #-0x40]
    // 0x6f8c04: StoreField: r1->field_b = r6
    //     0x6f8c04: stur            w6, [x1, #0xb]
    // 0x6f8c08: r0 = InkWell()
    //     0x6f8c08: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x6f8c0c: mov             x3, x0
    // 0x6f8c10: ldur            x0, [fp, #-0x38]
    // 0x6f8c14: stur            x3, [fp, #-0x40]
    // 0x6f8c18: StoreField: r3->field_b = r0
    //     0x6f8c18: stur            w0, [x3, #0xb]
    // 0x6f8c1c: ldur            x2, [fp, #-0x18]
    // 0x6f8c20: r1 = Function '<anonymous closure>':.
    //     0x6f8c20: add             x1, PP, #0x18, lsl #12  ; [pp+0x186e0] AnonymousClosure: (0x6f9264), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f8c24: ldr             x1, [x1, #0x6e0]
    // 0x6f8c28: r0 = AllocateClosure()
    //     0x6f8c28: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f8c2c: mov             x1, x0
    // 0x6f8c30: ldur            x0, [fp, #-0x40]
    // 0x6f8c34: StoreField: r0->field_f = r1
    //     0x6f8c34: stur            w1, [x0, #0xf]
    // 0x6f8c38: r2 = true
    //     0x6f8c38: add             x2, NULL, #0x20  ; true
    // 0x6f8c3c: StoreField: r0->field_47 = r2
    //     0x6f8c3c: stur            w2, [x0, #0x47]
    // 0x6f8c40: r1 = Instance_BoxShape
    //     0x6f8c40: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6f8c44: ldr             x1, [x1, #0x1c8]
    // 0x6f8c48: StoreField: r0->field_4b = r1
    //     0x6f8c48: stur            w1, [x0, #0x4b]
    // 0x6f8c4c: StoreField: r0->field_73 = r2
    //     0x6f8c4c: stur            w2, [x0, #0x73]
    // 0x6f8c50: r3 = false
    //     0x6f8c50: add             x3, NULL, #0x30  ; false
    // 0x6f8c54: StoreField: r0->field_77 = r3
    //     0x6f8c54: stur            w3, [x0, #0x77]
    // 0x6f8c58: StoreField: r0->field_87 = r2
    //     0x6f8c58: stur            w2, [x0, #0x87]
    // 0x6f8c5c: StoreField: r0->field_7f = r3
    //     0x6f8c5c: stur            w3, [x0, #0x7f]
    // 0x6f8c60: ldur            x1, [fp, #-0x20]
    // 0x6f8c64: ArrayStore: r1[13] = r0  ; List_4
    //     0x6f8c64: add             x25, x1, #0x43
    //     0x6f8c68: str             w0, [x25]
    //     0x6f8c6c: tbz             w0, #0, #0x6f8c88
    //     0x6f8c70: ldurb           w16, [x1, #-1]
    //     0x6f8c74: ldurb           w17, [x0, #-1]
    //     0x6f8c78: and             x16, x17, x16, lsr #2
    //     0x6f8c7c: tst             x16, HEAP, lsr #32
    //     0x6f8c80: b.eq            #0x6f8c88
    //     0x6f8c84: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f8c88: ldur            x1, [fp, #-0x20]
    // 0x6f8c8c: r16 = Instance_SizedBox
    //     0x6f8c8c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18670] Obj!SizedBox@a1fc11
    //     0x6f8c90: ldr             x16, [x16, #0x670]
    // 0x6f8c94: StoreField: r1->field_47 = r16
    //     0x6f8c94: stur            w16, [x1, #0x47]
    // 0x6f8c98: ldur            x0, [fp, #-8]
    // 0x6f8c9c: LoadField: r4 = r0->field_2b
    //     0x6f8c9c: ldur            w4, [x0, #0x2b]
    // 0x6f8ca0: DecompressPointer r4
    //     0x6f8ca0: add             x4, x4, HEAP, lsl #32
    // 0x6f8ca4: stur            x4, [fp, #-0x40]
    // 0x6f8ca8: LoadField: r5 = r0->field_27
    //     0x6f8ca8: ldur            w5, [x0, #0x27]
    // 0x6f8cac: DecompressPointer r5
    //     0x6f8cac: add             x5, x5, HEAP, lsl #32
    // 0x6f8cb0: stur            x5, [fp, #-0x38]
    // 0x6f8cb4: r0 = LoginButton()
    //     0x6f8cb4: bl              #0x6f8ef0  ; AllocateLoginButtonStub -> LoginButton (size=0x24)
    // 0x6f8cb8: mov             x3, x0
    // 0x6f8cbc: r0 = Instance_Color
    //     0x6f8cbc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6f8cc0: ldr             x0, [x0, #0xb78]
    // 0x6f8cc4: stur            x3, [fp, #-8]
    // 0x6f8cc8: StoreField: r3->field_b = r0
    //     0x6f8cc8: stur            w0, [x3, #0xb]
    // 0x6f8ccc: ldur            x0, [fp, #-0x30]
    // 0x6f8cd0: StoreField: r3->field_f = r0
    //     0x6f8cd0: stur            w0, [x3, #0xf]
    // 0x6f8cd4: ldur            x0, [fp, #-0x28]
    // 0x6f8cd8: StoreField: r3->field_13 = r0
    //     0x6f8cd8: stur            w0, [x3, #0x13]
    // 0x6f8cdc: ldur            x0, [fp, #-0x40]
    // 0x6f8ce0: ArrayStore: r3[0] = r0  ; List_4
    //     0x6f8ce0: stur            w0, [x3, #0x17]
    // 0x6f8ce4: ldur            x0, [fp, #-0x38]
    // 0x6f8ce8: StoreField: r3->field_1b = r0
    //     0x6f8ce8: stur            w0, [x3, #0x1b]
    // 0x6f8cec: ldur            x2, [fp, #-0x18]
    // 0x6f8cf0: r1 = Function '<anonymous closure>':.
    //     0x6f8cf0: add             x1, PP, #0x18, lsl #12  ; [pp+0x186e8] AnonymousClosure: (0x6f91b0), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f8cf4: ldr             x1, [x1, #0x6e8]
    // 0x6f8cf8: r0 = AllocateClosure()
    //     0x6f8cf8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f8cfc: mov             x1, x0
    // 0x6f8d00: ldur            x0, [fp, #-8]
    // 0x6f8d04: StoreField: r0->field_1f = r1
    //     0x6f8d04: stur            w1, [x0, #0x1f]
    // 0x6f8d08: ldur            x1, [fp, #-0x20]
    // 0x6f8d0c: ArrayStore: r1[15] = r0  ; List_4
    //     0x6f8d0c: add             x25, x1, #0x4b
    //     0x6f8d10: str             w0, [x25]
    //     0x6f8d14: tbz             w0, #0, #0x6f8d30
    //     0x6f8d18: ldurb           w16, [x1, #-1]
    //     0x6f8d1c: ldurb           w17, [x0, #-1]
    //     0x6f8d20: and             x16, x17, x16, lsr #2
    //     0x6f8d24: tst             x16, HEAP, lsr #32
    //     0x6f8d28: b.eq            #0x6f8d30
    //     0x6f8d2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f8d30: ldur            x0, [fp, #-0x20]
    // 0x6f8d34: r16 = Instance_SizedBox
    //     0x6f8d34: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e50] Obj!SizedBox@a1fc31
    //     0x6f8d38: ldr             x16, [x16, #0xe50]
    // 0x6f8d3c: StoreField: r0->field_4f = r16
    //     0x6f8d3c: stur            w16, [x0, #0x4f]
    // 0x6f8d40: r1 = <Widget>
    //     0x6f8d40: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f8d44: r0 = AllocateGrowableArray()
    //     0x6f8d44: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f8d48: mov             x1, x0
    // 0x6f8d4c: ldur            x0, [fp, #-0x20]
    // 0x6f8d50: stur            x1, [fp, #-8]
    // 0x6f8d54: StoreField: r1->field_f = r0
    //     0x6f8d54: stur            w0, [x1, #0xf]
    // 0x6f8d58: r0 = 34
    //     0x6f8d58: mov             x0, #0x22
    // 0x6f8d5c: StoreField: r1->field_b = r0
    //     0x6f8d5c: stur            w0, [x1, #0xb]
    // 0x6f8d60: r0 = Column()
    //     0x6f8d60: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f8d64: mov             x1, x0
    // 0x6f8d68: r0 = Instance_Axis
    //     0x6f8d68: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f8d6c: stur            x1, [fp, #-0x18]
    // 0x6f8d70: StoreField: r1->field_f = r0
    //     0x6f8d70: stur            w0, [x1, #0xf]
    // 0x6f8d74: r2 = Instance_MainAxisAlignment
    //     0x6f8d74: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f8d78: ldr             x2, [x2, #0x230]
    // 0x6f8d7c: StoreField: r1->field_13 = r2
    //     0x6f8d7c: stur            w2, [x1, #0x13]
    // 0x6f8d80: r2 = Instance_MainAxisSize
    //     0x6f8d80: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6f8d84: ldr             x2, [x2, #0x330]
    // 0x6f8d88: ArrayStore: r1[0] = r2  ; List_4
    //     0x6f8d88: stur            w2, [x1, #0x17]
    // 0x6f8d8c: r2 = Instance_CrossAxisAlignment
    //     0x6f8d8c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f8d90: ldr             x2, [x2, #0x338]
    // 0x6f8d94: StoreField: r1->field_1b = r2
    //     0x6f8d94: stur            w2, [x1, #0x1b]
    // 0x6f8d98: r2 = Instance_VerticalDirection
    //     0x6f8d98: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f8d9c: ldr             x2, [x2, #0x340]
    // 0x6f8da0: StoreField: r1->field_23 = r2
    //     0x6f8da0: stur            w2, [x1, #0x23]
    // 0x6f8da4: r2 = Instance_Clip
    //     0x6f8da4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f8da8: ldr             x2, [x2, #0x348]
    // 0x6f8dac: StoreField: r1->field_2b = r2
    //     0x6f8dac: stur            w2, [x1, #0x2b]
    // 0x6f8db0: StoreField: r1->field_2f = rZR
    //     0x6f8db0: stur            xzr, [x1, #0x2f]
    // 0x6f8db4: ldur            x2, [fp, #-8]
    // 0x6f8db8: StoreField: r1->field_b = r2
    //     0x6f8db8: stur            w2, [x1, #0xb]
    // 0x6f8dbc: r0 = SingleChildScrollView()
    //     0x6f8dbc: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6f8dc0: mov             x1, x0
    // 0x6f8dc4: r0 = Instance_Axis
    //     0x6f8dc4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f8dc8: stur            x1, [fp, #-8]
    // 0x6f8dcc: StoreField: r1->field_b = r0
    //     0x6f8dcc: stur            w0, [x1, #0xb]
    // 0x6f8dd0: r0 = false
    //     0x6f8dd0: add             x0, NULL, #0x30  ; false
    // 0x6f8dd4: StoreField: r1->field_f = r0
    //     0x6f8dd4: stur            w0, [x1, #0xf]
    // 0x6f8dd8: r2 = Instance_EdgeInsets
    //     0x6f8dd8: add             x2, PP, #0xc, lsl #12  ; [pp+0xce90] Obj!EdgeInsets@a0bf61
    //     0x6f8ddc: ldr             x2, [x2, #0xe90]
    // 0x6f8de0: StoreField: r1->field_13 = r2
    //     0x6f8de0: stur            w2, [x1, #0x13]
    // 0x6f8de4: r2 = Instance_BouncingScrollPhysics
    //     0x6f8de4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15a90] Obj!BouncingScrollPhysics@a0a9e1
    //     0x6f8de8: ldr             x2, [x2, #0xa90]
    // 0x6f8dec: StoreField: r1->field_1f = r2
    //     0x6f8dec: stur            w2, [x1, #0x1f]
    // 0x6f8df0: ldur            x2, [fp, #-0x18]
    // 0x6f8df4: StoreField: r1->field_23 = r2
    //     0x6f8df4: stur            w2, [x1, #0x23]
    // 0x6f8df8: r2 = Instance_DragStartBehavior
    //     0x6f8df8: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f8dfc: StoreField: r1->field_27 = r2
    //     0x6f8dfc: stur            w2, [x1, #0x27]
    // 0x6f8e00: r3 = Instance_Clip
    //     0x6f8e00: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f8e04: ldr             x3, [x3, #0x2d8]
    // 0x6f8e08: StoreField: r1->field_2b = r3
    //     0x6f8e08: stur            w3, [x1, #0x2b]
    // 0x6f8e0c: r3 = Instance_HitTestBehavior
    //     0x6f8e0c: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6f8e10: ldr             x3, [x3, #0xe20]
    // 0x6f8e14: StoreField: r1->field_2f = r3
    //     0x6f8e14: stur            w3, [x1, #0x2f]
    // 0x6f8e18: r0 = SafeArea()
    //     0x6f8e18: bl              #0x5ea210  ; AllocateSafeAreaStub -> SafeArea (size=0x28)
    // 0x6f8e1c: mov             x1, x0
    // 0x6f8e20: r0 = true
    //     0x6f8e20: add             x0, NULL, #0x20  ; true
    // 0x6f8e24: stur            x1, [fp, #-0x18]
    // 0x6f8e28: StoreField: r1->field_b = r0
    //     0x6f8e28: stur            w0, [x1, #0xb]
    // 0x6f8e2c: StoreField: r1->field_f = r0
    //     0x6f8e2c: stur            w0, [x1, #0xf]
    // 0x6f8e30: StoreField: r1->field_13 = r0
    //     0x6f8e30: stur            w0, [x1, #0x13]
    // 0x6f8e34: ArrayStore: r1[0] = r0  ; List_4
    //     0x6f8e34: stur            w0, [x1, #0x17]
    // 0x6f8e38: r2 = Instance_EdgeInsets
    //     0x6f8e38: ldr             x2, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x6f8e3c: StoreField: r1->field_1b = r2
    //     0x6f8e3c: stur            w2, [x1, #0x1b]
    // 0x6f8e40: r2 = false
    //     0x6f8e40: add             x2, NULL, #0x30  ; false
    // 0x6f8e44: StoreField: r1->field_1f = r2
    //     0x6f8e44: stur            w2, [x1, #0x1f]
    // 0x6f8e48: ldur            x3, [fp, #-8]
    // 0x6f8e4c: StoreField: r1->field_23 = r3
    //     0x6f8e4c: stur            w3, [x1, #0x23]
    // 0x6f8e50: r0 = FadeTransition()
    //     0x6f8e50: bl              #0x40a204  ; AllocateFadeTransitionStub -> FadeTransition (size=0x18)
    // 0x6f8e54: mov             x1, x0
    // 0x6f8e58: ldur            x0, [fp, #-0x10]
    // 0x6f8e5c: stur            x1, [fp, #-8]
    // 0x6f8e60: StoreField: r1->field_f = r0
    //     0x6f8e60: stur            w0, [x1, #0xf]
    // 0x6f8e64: r0 = false
    //     0x6f8e64: add             x0, NULL, #0x30  ; false
    // 0x6f8e68: StoreField: r1->field_13 = r0
    //     0x6f8e68: stur            w0, [x1, #0x13]
    // 0x6f8e6c: ldur            x2, [fp, #-0x18]
    // 0x6f8e70: StoreField: r1->field_b = r2
    //     0x6f8e70: stur            w2, [x1, #0xb]
    // 0x6f8e74: r0 = Scaffold()
    //     0x6f8e74: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6f8e78: ldur            x1, [fp, #-8]
    // 0x6f8e7c: StoreField: r0->field_1b = r1
    //     0x6f8e7c: stur            w1, [x0, #0x1b]
    // 0x6f8e80: r1 = Instance_AlignmentDirectional
    //     0x6f8e80: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6f8e84: ldr             x1, [x1, #0x350]
    // 0x6f8e88: StoreField: r0->field_2f = r1
    //     0x6f8e88: stur            w1, [x0, #0x2f]
    // 0x6f8e8c: r1 = Instance_Color
    //     0x6f8e8c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f8e90: StoreField: r0->field_4f = r1
    //     0x6f8e90: stur            w1, [x0, #0x4f]
    // 0x6f8e94: r1 = true
    //     0x6f8e94: add             x1, NULL, #0x20  ; true
    // 0x6f8e98: StoreField: r0->field_5f = r1
    //     0x6f8e98: stur            w1, [x0, #0x5f]
    // 0x6f8e9c: r2 = Instance_DragStartBehavior
    //     0x6f8e9c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f8ea0: StoreField: r0->field_63 = r2
    //     0x6f8ea0: stur            w2, [x0, #0x63]
    // 0x6f8ea4: r2 = false
    //     0x6f8ea4: add             x2, NULL, #0x30  ; false
    // 0x6f8ea8: StoreField: r0->field_b = r2
    //     0x6f8ea8: stur            w2, [x0, #0xb]
    // 0x6f8eac: StoreField: r0->field_f = r1
    //     0x6f8eac: stur            w1, [x0, #0xf]
    // 0x6f8eb0: StoreField: r0->field_13 = r2
    //     0x6f8eb0: stur            w2, [x0, #0x13]
    // 0x6f8eb4: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6f8eb4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6f8eb8: ldr             x2, [x2, #0x358]
    // 0x6f8ebc: StoreField: r0->field_4b = r2
    //     0x6f8ebc: stur            w2, [x0, #0x4b]
    // 0x6f8ec0: StoreField: r0->field_6b = r1
    //     0x6f8ec0: stur            w1, [x0, #0x6b]
    // 0x6f8ec4: StoreField: r0->field_6f = r1
    //     0x6f8ec4: stur            w1, [x0, #0x6f]
    // 0x6f8ec8: LeaveFrame
    //     0x6f8ec8: mov             SP, fp
    //     0x6f8ecc: ldp             fp, lr, [SP], #0x10
    // 0x6f8ed0: ret
    //     0x6f8ed0: ret             
    // 0x6f8ed4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f8ed4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f8ed8: b               #0x6f851c
    // 0x6f8edc: r9 = _fadeAnimation
    //     0x6f8edc: add             x9, PP, #0x18, lsl #12  ; [pp+0x186f0] Field <_LoginScreenState@931302831._fadeAnimation@931302831>: late (offset: 0x38)
    //     0x6f8ee0: ldr             x9, [x9, #0x6f0]
    // 0x6f8ee4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x6f8ee4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x6f8ee8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f8ee8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f8eec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f8eec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, bool) {
    // ** addr: 0x6f91b0, size: 0x84
    // 0x6f91b0: EnterFrame
    //     0x6f91b0: stp             fp, lr, [SP, #-0x10]!
    //     0x6f91b4: mov             fp, SP
    // 0x6f91b8: AllocStack(0x10)
    //     0x6f91b8: sub             SP, SP, #0x10
    // 0x6f91bc: SetupParameters([dynamic _ /* r0 */])
    //     0x6f91bc: ldr             x0, [fp, #0x18]
    //     0x6f91c0: ldur            w1, [x0, #0x17]
    //     0x6f91c4: add             x1, x1, HEAP, lsl #32
    //     0x6f91c8: stur            x1, [fp, #-8]
    // 0x6f91cc: CheckStackOverflow
    //     0x6f91cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f91d0: cmp             SP, x16
    //     0x6f91d4: b.ls            #0x6f922c
    // 0x6f91d8: r1 = 1
    //     0x6f91d8: mov             x1, #1
    // 0x6f91dc: r0 = AllocateContext()
    //     0x6f91dc: bl              #0x927010  ; AllocateContextStub
    // 0x6f91e0: mov             x1, x0
    // 0x6f91e4: ldur            x0, [fp, #-8]
    // 0x6f91e8: StoreField: r1->field_b = r0
    //     0x6f91e8: stur            w0, [x1, #0xb]
    // 0x6f91ec: ldr             x2, [fp, #0x10]
    // 0x6f91f0: StoreField: r1->field_f = r2
    //     0x6f91f0: stur            w2, [x1, #0xf]
    // 0x6f91f4: LoadField: r3 = r0->field_f
    //     0x6f91f4: ldur            w3, [x0, #0xf]
    // 0x6f91f8: DecompressPointer r3
    //     0x6f91f8: add             x3, x3, HEAP, lsl #32
    // 0x6f91fc: mov             x2, x1
    // 0x6f9200: stur            x3, [fp, #-0x10]
    // 0x6f9204: r1 = Function '<anonymous closure>':.
    //     0x6f9204: add             x1, PP, #0x18, lsl #12  ; [pp+0x186f8] AnonymousClosure: (0x6f9234), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f9208: ldr             x1, [x1, #0x6f8]
    // 0x6f920c: r0 = AllocateClosure()
    //     0x6f920c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9210: ldur            x1, [fp, #-0x10]
    // 0x6f9214: mov             x2, x0
    // 0x6f9218: r0 = setState()
    //     0x6f9218: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f921c: r0 = Null
    //     0x6f921c: mov             x0, NULL
    // 0x6f9220: LeaveFrame
    //     0x6f9220: mov             SP, fp
    //     0x6f9224: ldp             fp, lr, [SP], #0x10
    // 0x6f9228: ret
    //     0x6f9228: ret             
    // 0x6f922c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f922c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9230: b               #0x6f91d8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f9234, size: 0x30
    // 0x6f9234: ldr             x1, [SP]
    // 0x6f9238: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f9238: ldur            w2, [x1, #0x17]
    // 0x6f923c: DecompressPointer r2
    //     0x6f923c: add             x2, x2, HEAP, lsl #32
    // 0x6f9240: LoadField: r1 = r2->field_b
    //     0x6f9240: ldur            w1, [x2, #0xb]
    // 0x6f9244: DecompressPointer r1
    //     0x6f9244: add             x1, x1, HEAP, lsl #32
    // 0x6f9248: LoadField: r3 = r1->field_f
    //     0x6f9248: ldur            w3, [x1, #0xf]
    // 0x6f924c: DecompressPointer r3
    //     0x6f924c: add             x3, x3, HEAP, lsl #32
    // 0x6f9250: LoadField: r1 = r2->field_f
    //     0x6f9250: ldur            w1, [x2, #0xf]
    // 0x6f9254: DecompressPointer r1
    //     0x6f9254: add             x1, x1, HEAP, lsl #32
    // 0x6f9258: StoreField: r3->field_27 = r1
    //     0x6f9258: stur            w1, [x3, #0x27]
    // 0x6f925c: r0 = Null
    //     0x6f925c: mov             x0, NULL
    // 0x6f9260: ret
    //     0x6f9260: ret             
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6f9264, size: 0xd4
    // 0x6f9264: EnterFrame
    //     0x6f9264: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9268: mov             fp, SP
    // 0x6f926c: AllocStack(0x20)
    //     0x6f926c: sub             SP, SP, #0x20
    // 0x6f9270: SetupParameters(_LoginScreenState this /* r1 */)
    //     0x6f9270: stur            NULL, [fp, #-8]
    //     0x6f9274: mov             x0, #0
    //     0x6f9278: add             x1, fp, w0, sxtw #2
    //     0x6f927c: ldr             x1, [x1, #0x10]
    //     0x6f9280: ldur            w2, [x1, #0x17]
    //     0x6f9284: add             x2, x2, HEAP, lsl #32
    //     0x6f9288: stur            x2, [fp, #-0x10]
    // 0x6f928c: CheckStackOverflow
    //     0x6f928c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9290: cmp             SP, x16
    //     0x6f9294: b.ls            #0x6f9330
    // 0x6f9298: InitAsync() -> Future<void?>
    //     0x6f9298: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f929c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f92a0: r1 = 1
    //     0x6f92a0: mov             x1, #1
    // 0x6f92a4: r0 = AllocateContext()
    //     0x6f92a4: bl              #0x927010  ; AllocateContextStub
    // 0x6f92a8: mov             x2, x0
    // 0x6f92ac: ldur            x0, [fp, #-0x10]
    // 0x6f92b0: stur            x2, [fp, #-0x18]
    // 0x6f92b4: StoreField: r2->field_b = r0
    //     0x6f92b4: stur            w0, [x2, #0xb]
    // 0x6f92b8: LoadField: r1 = r0->field_13
    //     0x6f92b8: ldur            w1, [x0, #0x13]
    // 0x6f92bc: DecompressPointer r1
    //     0x6f92bc: add             x1, x1, HEAP, lsl #32
    // 0x6f92c0: r0 = show()
    //     0x6f92c0: bl              #0x6f9338  ; [package:umrem_demo/features/auth/widgets/kvkk_dialog.dart] KvkkDialog::show
    // 0x6f92c4: mov             x1, x0
    // 0x6f92c8: stur            x1, [fp, #-0x20]
    // 0x6f92cc: r0 = Await()
    //     0x6f92cc: bl              #0x3dd188  ; AwaitStub
    // 0x6f92d0: mov             x1, x0
    // 0x6f92d4: ldur            x2, [fp, #-0x18]
    // 0x6f92d8: StoreField: r2->field_f = r0
    //     0x6f92d8: stur            w0, [x2, #0xf]
    //     0x6f92dc: tbz             w0, #0, #0x6f92f8
    //     0x6f92e0: ldurb           w16, [x2, #-1]
    //     0x6f92e4: ldurb           w17, [x0, #-1]
    //     0x6f92e8: and             x16, x17, x16, lsr #2
    //     0x6f92ec: tst             x16, HEAP, lsr #32
    //     0x6f92f0: b.eq            #0x6f92f8
    //     0x6f92f4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f92f8: cmp             w1, NULL
    // 0x6f92fc: b.eq            #0x6f9328
    // 0x6f9300: ldur            x0, [fp, #-0x10]
    // 0x6f9304: LoadField: r3 = r0->field_f
    //     0x6f9304: ldur            w3, [x0, #0xf]
    // 0x6f9308: DecompressPointer r3
    //     0x6f9308: add             x3, x3, HEAP, lsl #32
    // 0x6f930c: stur            x3, [fp, #-0x20]
    // 0x6f9310: r1 = Function '<anonymous closure>':.
    //     0x6f9310: add             x1, PP, #0x18, lsl #12  ; [pp+0x18700] AnonymousClosure: (0x6f9430), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f9314: ldr             x1, [x1, #0x700]
    // 0x6f9318: r0 = AllocateClosure()
    //     0x6f9318: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f931c: ldur            x1, [fp, #-0x20]
    // 0x6f9320: mov             x2, x0
    // 0x6f9324: r0 = setState()
    //     0x6f9324: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f9328: r0 = Null
    //     0x6f9328: mov             x0, NULL
    // 0x6f932c: r0 = ReturnAsyncNotFuture()
    //     0x6f932c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f9330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9330: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9334: b               #0x6f9298
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f9430, size: 0x30
    // 0x6f9430: ldr             x1, [SP]
    // 0x6f9434: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f9434: ldur            w2, [x1, #0x17]
    // 0x6f9438: DecompressPointer r2
    //     0x6f9438: add             x2, x2, HEAP, lsl #32
    // 0x6f943c: LoadField: r1 = r2->field_b
    //     0x6f943c: ldur            w1, [x2, #0xb]
    // 0x6f9440: DecompressPointer r1
    //     0x6f9440: add             x1, x1, HEAP, lsl #32
    // 0x6f9444: LoadField: r3 = r1->field_f
    //     0x6f9444: ldur            w3, [x1, #0xf]
    // 0x6f9448: DecompressPointer r3
    //     0x6f9448: add             x3, x3, HEAP, lsl #32
    // 0x6f944c: LoadField: r1 = r2->field_f
    //     0x6f944c: ldur            w1, [x2, #0xf]
    // 0x6f9450: DecompressPointer r1
    //     0x6f9450: add             x1, x1, HEAP, lsl #32
    // 0x6f9454: StoreField: r3->field_2f = r1
    //     0x6f9454: stur            w1, [x3, #0x2f]
    // 0x6f9458: r0 = Null
    //     0x6f9458: mov             x0, NULL
    // 0x6f945c: ret
    //     0x6f945c: ret             
  }
  [closure] Future<void> <anonymous closure>(dynamic, bool?) async {
    // ** addr: 0x6f9460, size: 0x120
    // 0x6f9460: EnterFrame
    //     0x6f9460: stp             fp, lr, [SP, #-0x10]!
    //     0x6f9464: mov             fp, SP
    // 0x6f9468: AllocStack(0x20)
    //     0x6f9468: sub             SP, SP, #0x20
    // 0x6f946c: SetupParameters(_LoginScreenState this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x6f946c: stur            NULL, [fp, #-8]
    //     0x6f9470: mov             x0, #0
    //     0x6f9474: add             x1, fp, w0, sxtw #2
    //     0x6f9478: ldr             x1, [x1, #0x18]
    //     0x6f947c: add             x2, fp, w0, sxtw #2
    //     0x6f9480: ldr             x2, [x2, #0x10]
    //     0x6f9484: stur            x2, [fp, #-0x18]
    //     0x6f9488: ldur            w3, [x1, #0x17]
    //     0x6f948c: add             x3, x3, HEAP, lsl #32
    //     0x6f9490: stur            x3, [fp, #-0x10]
    // 0x6f9494: CheckStackOverflow
    //     0x6f9494: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9498: cmp             SP, x16
    //     0x6f949c: b.ls            #0x6f9578
    // 0x6f94a0: InitAsync() -> Future<void?>
    //     0x6f94a0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f94a4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f94a8: ldur            x0, [fp, #-0x18]
    // 0x6f94ac: r16 = true
    //     0x6f94ac: add             x16, NULL, #0x20  ; true
    // 0x6f94b0: cmp             w0, w16
    // 0x6f94b4: b.ne            #0x6f9544
    // 0x6f94b8: ldur            x2, [fp, #-0x10]
    // 0x6f94bc: r1 = 1
    //     0x6f94bc: mov             x1, #1
    // 0x6f94c0: r0 = AllocateContext()
    //     0x6f94c0: bl              #0x927010  ; AllocateContextStub
    // 0x6f94c4: ldur            x2, [fp, #-0x10]
    // 0x6f94c8: stur            x0, [fp, #-0x18]
    // 0x6f94cc: StoreField: r0->field_b = r2
    //     0x6f94cc: stur            w2, [x0, #0xb]
    // 0x6f94d0: LoadField: r1 = r2->field_13
    //     0x6f94d0: ldur            w1, [x2, #0x13]
    // 0x6f94d4: DecompressPointer r1
    //     0x6f94d4: add             x1, x1, HEAP, lsl #32
    // 0x6f94d8: r0 = show()
    //     0x6f94d8: bl              #0x6f9338  ; [package:umrem_demo/features/auth/widgets/kvkk_dialog.dart] KvkkDialog::show
    // 0x6f94dc: mov             x1, x0
    // 0x6f94e0: stur            x1, [fp, #-0x20]
    // 0x6f94e4: r0 = Await()
    //     0x6f94e4: bl              #0x3dd188  ; AwaitStub
    // 0x6f94e8: mov             x1, x0
    // 0x6f94ec: ldur            x2, [fp, #-0x18]
    // 0x6f94f0: StoreField: r2->field_f = r0
    //     0x6f94f0: stur            w0, [x2, #0xf]
    //     0x6f94f4: tbz             w0, #0, #0x6f9510
    //     0x6f94f8: ldurb           w16, [x2, #-1]
    //     0x6f94fc: ldurb           w17, [x0, #-1]
    //     0x6f9500: and             x16, x17, x16, lsr #2
    //     0x6f9504: tst             x16, HEAP, lsr #32
    //     0x6f9508: b.eq            #0x6f9510
    //     0x6f950c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f9510: cmp             w1, NULL
    // 0x6f9514: b.eq            #0x6f9570
    // 0x6f9518: ldur            x0, [fp, #-0x10]
    // 0x6f951c: LoadField: r3 = r0->field_f
    //     0x6f951c: ldur            w3, [x0, #0xf]
    // 0x6f9520: DecompressPointer r3
    //     0x6f9520: add             x3, x3, HEAP, lsl #32
    // 0x6f9524: stur            x3, [fp, #-0x20]
    // 0x6f9528: r1 = Function '<anonymous closure>':.
    //     0x6f9528: add             x1, PP, #0x18, lsl #12  ; [pp+0x18720] AnonymousClosure: (0x6f9430), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6f952c: ldr             x1, [x1, #0x720]
    // 0x6f9530: r0 = AllocateClosure()
    //     0x6f9530: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9534: ldur            x1, [fp, #-0x20]
    // 0x6f9538: mov             x2, x0
    // 0x6f953c: r0 = setState()
    //     0x6f953c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f9540: b               #0x6f9570
    // 0x6f9544: ldur            x0, [fp, #-0x10]
    // 0x6f9548: LoadField: r3 = r0->field_f
    //     0x6f9548: ldur            w3, [x0, #0xf]
    // 0x6f954c: DecompressPointer r3
    //     0x6f954c: add             x3, x3, HEAP, lsl #32
    // 0x6f9550: mov             x2, x0
    // 0x6f9554: stur            x3, [fp, #-0x18]
    // 0x6f9558: r1 = Function '<anonymous closure>':.
    //     0x6f9558: add             x1, PP, #0x18, lsl #12  ; [pp+0x18728] AnonymousClosure: (0x5e74e8), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission (0x5e7390)
    //     0x6f955c: ldr             x1, [x1, #0x728]
    // 0x6f9560: r0 = AllocateClosure()
    //     0x6f9560: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9564: ldur            x1, [fp, #-0x18]
    // 0x6f9568: mov             x2, x0
    // 0x6f956c: r0 = setState()
    //     0x6f956c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6f9570: r0 = Null
    //     0x6f9570: mov             x0, NULL
    // 0x6f9574: r0 = ReturnAsyncNotFuture()
    //     0x6f9574: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f9578: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9578: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f957c: b               #0x6f94a0
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f9580, size: 0x3c
    // 0x6f9580: ldr             x1, [SP]
    // 0x6f9584: cmp             w1, NULL
    // 0x6f9588: b.eq            #0x6f9594
    // 0x6f958c: LoadField: r2 = r1->field_7
    //     0x6f958c: ldur            w2, [x1, #7]
    // 0x6f9590: cbnz            w2, #0x6f95a0
    // 0x6f9594: r0 = "Bu alan boş bırakılamaz"
    //     0x6f9594: add             x0, PP, #0x18, lsl #12  ; [pp+0x18730] "Bu alan boş bırakılamaz"
    //     0x6f9598: ldr             x0, [x0, #0x730]
    // 0x6f959c: ret
    //     0x6f959c: ret             
    // 0x6f95a0: cmp             w2, #0x16
    // 0x6f95a4: b.eq            #0x6f95b4
    // 0x6f95a8: r0 = "TC kimlik numarası 11 haneli olmalıdır"
    //     0x6f95a8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18738] "TC kimlik numarası 11 haneli olmalıdır"
    //     0x6f95ac: ldr             x0, [x0, #0x738]
    // 0x6f95b0: ret
    //     0x6f95b0: ret             
    // 0x6f95b4: r0 = Null
    //     0x6f95b4: mov             x0, NULL
    // 0x6f95b8: ret
    //     0x6f95b8: ret             
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c4e0, size: 0x24
    // 0x74c4e0: EnterFrame
    //     0x74c4e0: stp             fp, lr, [SP, #-0x10]!
    //     0x74c4e4: mov             fp, SP
    // 0x74c4e8: ldr             x2, [fp, #0x10]
    // 0x74c4ec: r1 = Function 'dispose':.
    //     0x74c4ec: add             x1, PP, #0x27, lsl #12  ; [pp+0x27588] AnonymousClosure: (0x74c504), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::dispose (0x753d30)
    //     0x74c4f0: ldr             x1, [x1, #0x588]
    // 0x74c4f4: r0 = AllocateClosure()
    //     0x74c4f4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c4f8: LeaveFrame
    //     0x74c4f8: mov             SP, fp
    //     0x74c4fc: ldp             fp, lr, [SP], #0x10
    // 0x74c500: ret
    //     0x74c500: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c504, size: 0x38
    // 0x74c504: EnterFrame
    //     0x74c504: stp             fp, lr, [SP, #-0x10]!
    //     0x74c508: mov             fp, SP
    // 0x74c50c: ldr             x0, [fp, #0x10]
    // 0x74c510: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c510: ldur            w1, [x0, #0x17]
    // 0x74c514: DecompressPointer r1
    //     0x74c514: add             x1, x1, HEAP, lsl #32
    // 0x74c518: CheckStackOverflow
    //     0x74c518: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c51c: cmp             SP, x16
    //     0x74c520: b.ls            #0x74c534
    // 0x74c524: r0 = dispose()
    //     0x74c524: bl              #0x753d30  ; [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::dispose
    // 0x74c528: LeaveFrame
    //     0x74c528: mov             SP, fp
    //     0x74c52c: ldp             fp, lr, [SP], #0x10
    // 0x74c530: ret
    //     0x74c530: ret             
    // 0x74c534: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c534: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c538: b               #0x74c524
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753d30, size: 0x84
    // 0x753d30: EnterFrame
    //     0x753d30: stp             fp, lr, [SP, #-0x10]!
    //     0x753d34: mov             fp, SP
    // 0x753d38: AllocStack(0x8)
    //     0x753d38: sub             SP, SP, #8
    // 0x753d3c: SetupParameters(_LoginScreenState this /* r1 => r0, fp-0x8 */)
    //     0x753d3c: mov             x0, x1
    //     0x753d40: stur            x1, [fp, #-8]
    // 0x753d44: CheckStackOverflow
    //     0x753d44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753d48: cmp             SP, x16
    //     0x753d4c: b.ls            #0x753da0
    // 0x753d50: LoadField: r1 = r0->field_1f
    //     0x753d50: ldur            w1, [x0, #0x1f]
    // 0x753d54: DecompressPointer r1
    //     0x753d54: add             x1, x1, HEAP, lsl #32
    // 0x753d58: r0 = dispose()
    //     0x753d58: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753d5c: ldur            x0, [fp, #-8]
    // 0x753d60: LoadField: r1 = r0->field_23
    //     0x753d60: ldur            w1, [x0, #0x23]
    // 0x753d64: DecompressPointer r1
    //     0x753d64: add             x1, x1, HEAP, lsl #32
    // 0x753d68: r0 = dispose()
    //     0x753d68: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753d6c: ldur            x0, [fp, #-8]
    // 0x753d70: LoadField: r1 = r0->field_33
    //     0x753d70: ldur            w1, [x0, #0x33]
    // 0x753d74: DecompressPointer r1
    //     0x753d74: add             x1, x1, HEAP, lsl #32
    // 0x753d78: r16 = Sentinel
    //     0x753d78: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x753d7c: cmp             w1, w16
    // 0x753d80: b.eq            #0x753da8
    // 0x753d84: r0 = dispose()
    //     0x753d84: bl              #0x4ab398  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::dispose
    // 0x753d88: ldur            x1, [fp, #-8]
    // 0x753d8c: r0 = dispose()
    //     0x753d8c: bl              #0x753db4  ; [package:umrem_demo/features/auth/screens/login.dart] __LoginScreenState&State&TickerProviderStateMixin::dispose
    // 0x753d90: r0 = Null
    //     0x753d90: mov             x0, NULL
    // 0x753d94: LeaveFrame
    //     0x753d94: mov             SP, fp
    //     0x753d98: ldp             fp, lr, [SP], #0x10
    // 0x753d9c: ret
    //     0x753d9c: ret             
    // 0x753da0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753da0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753da4: b               #0x753d50
    // 0x753da8: r9 = _fadeController
    //     0x753da8: add             x9, PP, #0x18, lsl #12  ; [pp+0x18750] Field <_LoginScreenState@931302831._fadeController@931302831>: late (offset: 0x34)
    //     0x753dac: ldr             x9, [x9, #0x750]
    // 0x753db0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x753db0: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _LoginScreenState(/* No info */) {
    // ** addr: 0x7bd8c4, size: 0x100
    // 0x7bd8c4: EnterFrame
    //     0x7bd8c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd8c8: mov             fp, SP
    // 0x7bd8cc: AllocStack(0x10)
    //     0x7bd8cc: sub             SP, SP, #0x10
    // 0x7bd8d0: r3 = false
    //     0x7bd8d0: add             x3, NULL, #0x30  ; false
    // 0x7bd8d4: r2 = "misafir"
    //     0x7bd8d4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x7bd8d8: ldr             x2, [x2, #0x588]
    // 0x7bd8dc: r0 = Sentinel
    //     0x7bd8dc: ldr             x0, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bd8e0: mov             x4, x1
    // 0x7bd8e4: stur            x1, [fp, #-8]
    // 0x7bd8e8: CheckStackOverflow
    //     0x7bd8e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd8ec: cmp             SP, x16
    //     0x7bd8f0: b.ls            #0x7bd9bc
    // 0x7bd8f4: StoreField: r4->field_27 = r3
    //     0x7bd8f4: stur            w3, [x4, #0x27]
    // 0x7bd8f8: StoreField: r4->field_2b = r2
    //     0x7bd8f8: stur            w2, [x4, #0x2b]
    // 0x7bd8fc: StoreField: r4->field_2f = r3
    //     0x7bd8fc: stur            w3, [x4, #0x2f]
    // 0x7bd900: StoreField: r4->field_33 = r0
    //     0x7bd900: stur            w0, [x4, #0x33]
    // 0x7bd904: StoreField: r4->field_37 = r0
    //     0x7bd904: stur            w0, [x4, #0x37]
    // 0x7bd908: r1 = <FormState>
    //     0x7bd908: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x7bd90c: ldr             x1, [x1, #0x590]
    // 0x7bd910: r0 = LabeledGlobalKey()
    //     0x7bd910: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bd914: ldur            x2, [fp, #-8]
    // 0x7bd918: StoreField: r2->field_1b = r0
    //     0x7bd918: stur            w0, [x2, #0x1b]
    //     0x7bd91c: ldurb           w16, [x2, #-1]
    //     0x7bd920: ldurb           w17, [x0, #-1]
    //     0x7bd924: and             x16, x17, x16, lsr #2
    //     0x7bd928: tst             x16, HEAP, lsr #32
    //     0x7bd92c: b.eq            #0x7bd934
    //     0x7bd930: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd934: r1 = <TextEditingValue>
    //     0x7bd934: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd938: r0 = TextEditingController()
    //     0x7bd938: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd93c: mov             x1, x0
    // 0x7bd940: stur            x0, [fp, #-0x10]
    // 0x7bd944: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd944: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd948: r0 = TextEditingController()
    //     0x7bd948: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd94c: ldur            x0, [fp, #-0x10]
    // 0x7bd950: ldur            x2, [fp, #-8]
    // 0x7bd954: StoreField: r2->field_1f = r0
    //     0x7bd954: stur            w0, [x2, #0x1f]
    //     0x7bd958: ldurb           w16, [x2, #-1]
    //     0x7bd95c: ldurb           w17, [x0, #-1]
    //     0x7bd960: and             x16, x17, x16, lsr #2
    //     0x7bd964: tst             x16, HEAP, lsr #32
    //     0x7bd968: b.eq            #0x7bd970
    //     0x7bd96c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd970: r1 = <TextEditingValue>
    //     0x7bd970: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd974: r0 = TextEditingController()
    //     0x7bd974: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd978: mov             x1, x0
    // 0x7bd97c: stur            x0, [fp, #-0x10]
    // 0x7bd980: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd980: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd984: r0 = TextEditingController()
    //     0x7bd984: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd988: ldur            x0, [fp, #-0x10]
    // 0x7bd98c: ldur            x1, [fp, #-8]
    // 0x7bd990: StoreField: r1->field_23 = r0
    //     0x7bd990: stur            w0, [x1, #0x23]
    //     0x7bd994: ldurb           w16, [x1, #-1]
    //     0x7bd998: ldurb           w17, [x0, #-1]
    //     0x7bd99c: and             x16, x17, x16, lsr #2
    //     0x7bd9a0: tst             x16, HEAP, lsr #32
    //     0x7bd9a4: b.eq            #0x7bd9ac
    //     0x7bd9a8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bd9ac: r0 = Null
    //     0x7bd9ac: mov             x0, NULL
    // 0x7bd9b0: LeaveFrame
    //     0x7bd9b0: mov             SP, fp
    //     0x7bd9b4: ldp             fp, lr, [SP], #0x10
    // 0x7bd9b8: ret
    //     0x7bd9b8: ret             
    // 0x7bd9bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd9bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd9c0: b               #0x7bd8f4
  }
}

// class id: 3206, size: 0xc, field offset: 0xc
//   const constructor, 
class LoginScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd87c, size: 0x48
    // 0x7bd87c: EnterFrame
    //     0x7bd87c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd880: mov             fp, SP
    // 0x7bd884: AllocStack(0x8)
    //     0x7bd884: sub             SP, SP, #8
    // 0x7bd888: CheckStackOverflow
    //     0x7bd888: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd88c: cmp             SP, x16
    //     0x7bd890: b.ls            #0x7bd8bc
    // 0x7bd894: r1 = <LoginScreen>
    //     0x7bd894: add             x1, PP, #0x12, lsl #12  ; [pp+0x12580] TypeArguments: <LoginScreen>
    //     0x7bd898: ldr             x1, [x1, #0x580]
    // 0x7bd89c: r0 = _LoginScreenState()
    //     0x7bd89c: bl              #0x7bd9c4  ; Allocate_LoginScreenStateStub -> _LoginScreenState (size=0x3c)
    // 0x7bd8a0: mov             x1, x0
    // 0x7bd8a4: stur            x0, [fp, #-8]
    // 0x7bd8a8: r0 = _LoginScreenState()
    //     0x7bd8a8: bl              #0x7bd8c4  ; [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::_LoginScreenState
    // 0x7bd8ac: ldur            x0, [fp, #-8]
    // 0x7bd8b0: LeaveFrame
    //     0x7bd8b0: mov             SP, fp
    //     0x7bd8b4: ldp             fp, lr, [SP], #0x10
    // 0x7bd8b8: ret
    //     0x7bd8b8: ret             
    // 0x7bd8bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd8bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd8c0: b               #0x7bd894
  }
}
