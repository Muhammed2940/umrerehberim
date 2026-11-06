// lib: , url: package:umrem_demo/features/splash/screens/splash_screen.dart

// class id: 1049602, size: 0x8
class :: {
}

// class id: 2462, size: 0x1c, field offset: 0x14
//   transformed mixin,
abstract class __SplashScreenState&State&TickerProviderStateMixin extends State<dynamic>
     with TickerProviderStateMixin<X0 bound StatefulWidget> {

  _ _removeTicker(/* No info */) {
    // ** addr: 0x43b640, size: 0x48
    // 0x43b640: EnterFrame
    //     0x43b640: stp             fp, lr, [SP, #-0x10]!
    //     0x43b644: mov             fp, SP
    // 0x43b648: CheckStackOverflow
    //     0x43b648: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x43b64c: cmp             SP, x16
    //     0x43b650: b.ls            #0x43b67c
    // 0x43b654: LoadField: r0 = r1->field_13
    //     0x43b654: ldur            w0, [x1, #0x13]
    // 0x43b658: DecompressPointer r0
    //     0x43b658: add             x0, x0, HEAP, lsl #32
    // 0x43b65c: cmp             w0, NULL
    // 0x43b660: b.eq            #0x43b684
    // 0x43b664: mov             x1, x0
    // 0x43b668: r0 = remove()
    //     0x43b668: bl              #0x8fc724  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::remove
    // 0x43b66c: r0 = Null
    //     0x43b66c: mov             x0, NULL
    // 0x43b670: LeaveFrame
    //     0x43b670: mov             SP, fp
    //     0x43b674: ldp             fp, lr, [SP], #0x10
    // 0x43b678: ret
    //     0x43b678: ret             
    // 0x43b67c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x43b67c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x43b680: b               #0x43b654
    // 0x43b684: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x43b684: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ createTicker(/* No info */) {
    // ** addr: 0x444edc, size: 0x13c
    // 0x444edc: EnterFrame
    //     0x444edc: stp             fp, lr, [SP, #-0x10]!
    //     0x444ee0: mov             fp, SP
    // 0x444ee4: AllocStack(0x18)
    //     0x444ee4: sub             SP, SP, #0x18
    // 0x444ee8: SetupParameters(__SplashScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x444ee8: mov             x0, x1
    //     0x444eec: stur            x1, [fp, #-8]
    //     0x444ef0: stur            x2, [fp, #-0x10]
    // 0x444ef4: CheckStackOverflow
    //     0x444ef4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444ef8: cmp             SP, x16
    //     0x444efc: b.ls            #0x445008
    // 0x444f00: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x444f00: ldur            w1, [x0, #0x17]
    // 0x444f04: DecompressPointer r1
    //     0x444f04: add             x1, x1, HEAP, lsl #32
    // 0x444f08: cmp             w1, NULL
    // 0x444f0c: b.ne            #0x444f18
    // 0x444f10: mov             x1, x0
    // 0x444f14: r0 = _updateTickerModeNotifier()
    //     0x444f14: bl              #0x445018  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickerModeNotifier
    // 0x444f18: ldur            x0, [fp, #-8]
    // 0x444f1c: LoadField: r1 = r0->field_13
    //     0x444f1c: ldur            w1, [x0, #0x13]
    // 0x444f20: DecompressPointer r1
    //     0x444f20: add             x1, x1, HEAP, lsl #32
    // 0x444f24: cmp             w1, NULL
    // 0x444f28: b.ne            #0x444f80
    // 0x444f2c: r1 = <_WidgetTicker>
    //     0x444f2c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15db0] TypeArguments: <_WidgetTicker>
    //     0x444f30: ldr             x1, [x1, #0xdb0]
    // 0x444f34: r0 = _Set()
    //     0x444f34: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x444f38: mov             x1, x0
    // 0x444f3c: r0 = _Uint32List
    //     0x444f3c: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x444f40: StoreField: r1->field_1b = r0
    //     0x444f40: stur            w0, [x1, #0x1b]
    // 0x444f44: StoreField: r1->field_b = rZR
    //     0x444f44: stur            wzr, [x1, #0xb]
    // 0x444f48: r0 = const []
    //     0x444f48: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x444f4c: StoreField: r1->field_f = r0
    //     0x444f4c: stur            w0, [x1, #0xf]
    // 0x444f50: StoreField: r1->field_13 = rZR
    //     0x444f50: stur            wzr, [x1, #0x13]
    // 0x444f54: ArrayStore: r1[0] = rZR  ; List_4
    //     0x444f54: stur            wzr, [x1, #0x17]
    // 0x444f58: mov             x0, x1
    // 0x444f5c: ldur            x1, [fp, #-8]
    // 0x444f60: StoreField: r1->field_13 = r0
    //     0x444f60: stur            w0, [x1, #0x13]
    //     0x444f64: ldurb           w16, [x1, #-1]
    //     0x444f68: ldurb           w17, [x0, #-1]
    //     0x444f6c: and             x16, x17, x16, lsr #2
    //     0x444f70: tst             x16, HEAP, lsr #32
    //     0x444f74: b.eq            #0x444f7c
    //     0x444f78: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x444f7c: b               #0x444f84
    // 0x444f80: mov             x1, x0
    // 0x444f84: ldur            x0, [fp, #-0x10]
    // 0x444f88: r0 = _WidgetTicker()
    //     0x444f88: bl              #0x43d174  ; Allocate_WidgetTickerStub -> _WidgetTicker (size=0x20)
    // 0x444f8c: mov             x3, x0
    // 0x444f90: ldur            x2, [fp, #-8]
    // 0x444f94: stur            x3, [fp, #-0x18]
    // 0x444f98: StoreField: r3->field_1b = r2
    //     0x444f98: stur            w2, [x3, #0x1b]
    // 0x444f9c: r0 = false
    //     0x444f9c: add             x0, NULL, #0x30  ; false
    // 0x444fa0: StoreField: r3->field_b = r0
    //     0x444fa0: stur            w0, [x3, #0xb]
    // 0x444fa4: ldur            x0, [fp, #-0x10]
    // 0x444fa8: StoreField: r3->field_13 = r0
    //     0x444fa8: stur            w0, [x3, #0x13]
    // 0x444fac: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x444fac: ldur            w1, [x2, #0x17]
    // 0x444fb0: DecompressPointer r1
    //     0x444fb0: add             x1, x1, HEAP, lsl #32
    // 0x444fb4: cmp             w1, NULL
    // 0x444fb8: b.eq            #0x445010
    // 0x444fbc: r0 = LoadClassIdInstr(r1)
    //     0x444fbc: ldur            x0, [x1, #-1]
    //     0x444fc0: ubfx            x0, x0, #0xc, #0x14
    // 0x444fc4: r0 = GDT[cid_x0 + -0x1000]()
    //     0x444fc4: sub             lr, x0, #1, lsl #12
    //     0x444fc8: ldr             lr, [x21, lr, lsl #3]
    //     0x444fcc: blr             lr
    // 0x444fd0: eor             x2, x0, #0x10
    // 0x444fd4: ldur            x1, [fp, #-0x18]
    // 0x444fd8: r0 = muted=()
    //     0x444fd8: bl              #0x43c97c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::muted=
    // 0x444fdc: ldur            x0, [fp, #-8]
    // 0x444fe0: LoadField: r1 = r0->field_13
    //     0x444fe0: ldur            w1, [x0, #0x13]
    // 0x444fe4: DecompressPointer r1
    //     0x444fe4: add             x1, x1, HEAP, lsl #32
    // 0x444fe8: cmp             w1, NULL
    // 0x444fec: b.eq            #0x445014
    // 0x444ff0: ldur            x2, [fp, #-0x18]
    // 0x444ff4: r0 = add()
    //     0x444ff4: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x444ff8: ldur            x0, [fp, #-0x18]
    // 0x444ffc: LeaveFrame
    //     0x444ffc: mov             SP, fp
    //     0x445000: ldp             fp, lr, [SP], #0x10
    // 0x445004: ret
    //     0x445004: ret             
    // 0x445008: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x445008: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x44500c: b               #0x444f00
    // 0x445010: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x445010: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x445014: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x445014: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _updateTickerModeNotifier(/* No info */) {
    // ** addr: 0x445018, size: 0x120
    // 0x445018: EnterFrame
    //     0x445018: stp             fp, lr, [SP, #-0x10]!
    //     0x44501c: mov             fp, SP
    // 0x445020: AllocStack(0x18)
    //     0x445020: sub             SP, SP, #0x18
    // 0x445024: SetupParameters(__SplashScreenState&State&TickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x445024: mov             x2, x1
    //     0x445028: stur            x1, [fp, #-8]
    // 0x44502c: CheckStackOverflow
    //     0x44502c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x445030: cmp             SP, x16
    //     0x445034: b.ls            #0x44512c
    // 0x445038: LoadField: r1 = r2->field_f
    //     0x445038: ldur            w1, [x2, #0xf]
    // 0x44503c: DecompressPointer r1
    //     0x44503c: add             x1, x1, HEAP, lsl #32
    // 0x445040: cmp             w1, NULL
    // 0x445044: b.eq            #0x445134
    // 0x445048: r0 = getNotifier()
    //     0x445048: bl              #0x43cb1c  ; [package:flutter/src/widgets/ticker_provider.dart] TickerMode::getNotifier
    // 0x44504c: mov             x3, x0
    // 0x445050: ldur            x0, [fp, #-8]
    // 0x445054: stur            x3, [fp, #-0x18]
    // 0x445058: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x445058: ldur            w4, [x0, #0x17]
    // 0x44505c: DecompressPointer r4
    //     0x44505c: add             x4, x4, HEAP, lsl #32
    // 0x445060: stur            x4, [fp, #-0x10]
    // 0x445064: cmp             w3, w4
    // 0x445068: b.ne            #0x44507c
    // 0x44506c: r0 = Null
    //     0x44506c: mov             x0, NULL
    // 0x445070: LeaveFrame
    //     0x445070: mov             SP, fp
    //     0x445074: ldp             fp, lr, [SP], #0x10
    // 0x445078: ret
    //     0x445078: ret             
    // 0x44507c: cmp             w4, NULL
    // 0x445080: b.eq            #0x4450c0
    // 0x445084: mov             x2, x0
    // 0x445088: r1 = Function '_updateTickers@378311458':.
    //     0x445088: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a50] AnonymousClosure: (0x445138), in [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickers (0x445170)
    //     0x44508c: ldr             x1, [x1, #0xa50]
    // 0x445090: r0 = AllocateClosure()
    //     0x445090: bl              #0x9273d4  ; AllocateClosureStub
    // 0x445094: ldur            x1, [fp, #-0x10]
    // 0x445098: r2 = LoadClassIdInstr(r1)
    //     0x445098: ldur            x2, [x1, #-1]
    //     0x44509c: ubfx            x2, x2, #0xc, #0x14
    // 0x4450a0: mov             x16, x0
    // 0x4450a4: mov             x0, x2
    // 0x4450a8: mov             x2, x16
    // 0x4450ac: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x4450ac: add             lr, x0, #0xfe7
    //     0x4450b0: ldr             lr, [x21, lr, lsl #3]
    //     0x4450b4: blr             lr
    // 0x4450b8: ldur            x0, [fp, #-8]
    // 0x4450bc: ldur            x3, [fp, #-0x18]
    // 0x4450c0: mov             x2, x0
    // 0x4450c4: r1 = Function '_updateTickers@378311458':.
    //     0x4450c4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a50] AnonymousClosure: (0x445138), in [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickers (0x445170)
    //     0x4450c8: ldr             x1, [x1, #0xa50]
    // 0x4450cc: r0 = AllocateClosure()
    //     0x4450cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x4450d0: ldur            x3, [fp, #-0x18]
    // 0x4450d4: r1 = LoadClassIdInstr(r3)
    //     0x4450d4: ldur            x1, [x3, #-1]
    //     0x4450d8: ubfx            x1, x1, #0xc, #0x14
    // 0x4450dc: mov             x2, x0
    // 0x4450e0: mov             x0, x1
    // 0x4450e4: mov             x1, x3
    // 0x4450e8: r0 = GDT[cid_x0 + 0x8cf8]()
    //     0x4450e8: mov             x17, #0x8cf8
    //     0x4450ec: add             lr, x0, x17
    //     0x4450f0: ldr             lr, [x21, lr, lsl #3]
    //     0x4450f4: blr             lr
    // 0x4450f8: ldur            x0, [fp, #-0x18]
    // 0x4450fc: ldur            x1, [fp, #-8]
    // 0x445100: ArrayStore: r1[0] = r0  ; List_4
    //     0x445100: stur            w0, [x1, #0x17]
    //     0x445104: ldurb           w16, [x1, #-1]
    //     0x445108: ldurb           w17, [x0, #-1]
    //     0x44510c: and             x16, x17, x16, lsr #2
    //     0x445110: tst             x16, HEAP, lsr #32
    //     0x445114: b.eq            #0x44511c
    //     0x445118: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x44511c: r0 = Null
    //     0x44511c: mov             x0, NULL
    // 0x445120: LeaveFrame
    //     0x445120: mov             SP, fp
    //     0x445124: ldp             fp, lr, [SP], #0x10
    // 0x445128: ret
    //     0x445128: ret             
    // 0x44512c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x44512c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x445130: b               #0x445038
    // 0x445134: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x445134: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void _updateTickers(dynamic) {
    // ** addr: 0x445138, size: 0x38
    // 0x445138: EnterFrame
    //     0x445138: stp             fp, lr, [SP, #-0x10]!
    //     0x44513c: mov             fp, SP
    // 0x445140: ldr             x0, [fp, #0x10]
    // 0x445144: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x445144: ldur            w1, [x0, #0x17]
    // 0x445148: DecompressPointer r1
    //     0x445148: add             x1, x1, HEAP, lsl #32
    // 0x44514c: CheckStackOverflow
    //     0x44514c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x445150: cmp             SP, x16
    //     0x445154: b.ls            #0x445168
    // 0x445158: r0 = _updateTickers()
    //     0x445158: bl              #0x445170  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickers
    // 0x44515c: LeaveFrame
    //     0x44515c: mov             SP, fp
    //     0x445160: ldp             fp, lr, [SP], #0x10
    // 0x445164: ret
    //     0x445164: ret             
    // 0x445168: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x445168: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x44516c: b               #0x445158
  }
  _ _updateTickers(/* No info */) {
    // ** addr: 0x445170, size: 0x15c
    // 0x445170: EnterFrame
    //     0x445170: stp             fp, lr, [SP, #-0x10]!
    //     0x445174: mov             fp, SP
    // 0x445178: AllocStack(0x20)
    //     0x445178: sub             SP, SP, #0x20
    // 0x44517c: SetupParameters(__SplashScreenState&State&TickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x44517c: mov             x2, x1
    //     0x445180: stur            x1, [fp, #-8]
    // 0x445184: CheckStackOverflow
    //     0x445184: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x445188: cmp             SP, x16
    //     0x44518c: b.ls            #0x4452b4
    // 0x445190: LoadField: r0 = r2->field_13
    //     0x445190: ldur            w0, [x2, #0x13]
    // 0x445194: DecompressPointer r0
    //     0x445194: add             x0, x0, HEAP, lsl #32
    // 0x445198: cmp             w0, NULL
    // 0x44519c: b.eq            #0x4452a4
    // 0x4451a0: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x4451a0: ldur            w1, [x2, #0x17]
    // 0x4451a4: DecompressPointer r1
    //     0x4451a4: add             x1, x1, HEAP, lsl #32
    // 0x4451a8: cmp             w1, NULL
    // 0x4451ac: b.eq            #0x4452bc
    // 0x4451b0: r0 = LoadClassIdInstr(r1)
    //     0x4451b0: ldur            x0, [x1, #-1]
    //     0x4451b4: ubfx            x0, x0, #0xc, #0x14
    // 0x4451b8: r0 = GDT[cid_x0 + -0x1000]()
    //     0x4451b8: sub             lr, x0, #1, lsl #12
    //     0x4451bc: ldr             lr, [x21, lr, lsl #3]
    //     0x4451c0: blr             lr
    // 0x4451c4: eor             x2, x0, #0x10
    // 0x4451c8: ldur            x0, [fp, #-8]
    // 0x4451cc: stur            x2, [fp, #-0x10]
    // 0x4451d0: LoadField: r1 = r0->field_13
    //     0x4451d0: ldur            w1, [x0, #0x13]
    // 0x4451d4: DecompressPointer r1
    //     0x4451d4: add             x1, x1, HEAP, lsl #32
    // 0x4451d8: cmp             w1, NULL
    // 0x4451dc: b.eq            #0x4452c0
    // 0x4451e0: r0 = iterator()
    //     0x4451e0: bl              #0x63deb8  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::iterator
    // 0x4451e4: stur            x0, [fp, #-0x18]
    // 0x4451e8: LoadField: r2 = r0->field_7
    //     0x4451e8: ldur            w2, [x0, #7]
    // 0x4451ec: DecompressPointer r2
    //     0x4451ec: add             x2, x2, HEAP, lsl #32
    // 0x4451f0: stur            x2, [fp, #-8]
    // 0x4451f4: ldur            x3, [fp, #-0x10]
    // 0x4451f8: CheckStackOverflow
    //     0x4451f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x4451fc: cmp             SP, x16
    //     0x445200: b.ls            #0x4452c4
    // 0x445204: mov             x1, x0
    // 0x445208: r0 = moveNext()
    //     0x445208: bl              #0x863f04  ; [dart:_compact_hash] _CompactIterator::moveNext
    // 0x44520c: tbnz            w0, #4, #0x4452a4
    // 0x445210: ldur            x3, [fp, #-0x18]
    // 0x445214: LoadField: r4 = r3->field_33
    //     0x445214: ldur            w4, [x3, #0x33]
    // 0x445218: DecompressPointer r4
    //     0x445218: add             x4, x4, HEAP, lsl #32
    // 0x44521c: stur            x4, [fp, #-0x20]
    // 0x445220: cmp             w4, NULL
    // 0x445224: b.ne            #0x445258
    // 0x445228: mov             x0, x4
    // 0x44522c: ldur            x2, [fp, #-8]
    // 0x445230: r1 = Null
    //     0x445230: mov             x1, NULL
    // 0x445234: cmp             w2, NULL
    // 0x445238: b.eq            #0x445258
    // 0x44523c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x44523c: ldur            w4, [x2, #0x17]
    // 0x445240: DecompressPointer r4
    //     0x445240: add             x4, x4, HEAP, lsl #32
    // 0x445244: r8 = X0
    //     0x445244: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x445248: LoadField: r9 = r4->field_7
    //     0x445248: ldur            x9, [x4, #7]
    // 0x44524c: r3 = Null
    //     0x44524c: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a40] Null
    //     0x445250: ldr             x3, [x3, #0xa40]
    // 0x445254: blr             x9
    // 0x445258: ldur            x2, [fp, #-0x10]
    // 0x44525c: ldur            x0, [fp, #-0x20]
    // 0x445260: LoadField: r1 = r0->field_b
    //     0x445260: ldur            w1, [x0, #0xb]
    // 0x445264: DecompressPointer r1
    //     0x445264: add             x1, x1, HEAP, lsl #32
    // 0x445268: cmp             w2, w1
    // 0x44526c: b.eq            #0x445298
    // 0x445270: StoreField: r0->field_b = r2
    //     0x445270: stur            w2, [x0, #0xb]
    // 0x445274: tbnz            w2, #4, #0x445284
    // 0x445278: mov             x1, x0
    // 0x44527c: r0 = unscheduleTick()
    //     0x44527c: bl              #0x3fc00c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::unscheduleTick
    // 0x445280: b               #0x445298
    // 0x445284: mov             x1, x0
    // 0x445288: r0 = shouldScheduleTick()
    //     0x445288: bl              #0x3fb61c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::shouldScheduleTick
    // 0x44528c: tbnz            w0, #4, #0x445298
    // 0x445290: ldur            x1, [fp, #-0x20]
    // 0x445294: r0 = scheduleTick()
    //     0x445294: bl              #0x3fa4d4  ; [package:flutter/src/scheduler/ticker.dart] Ticker::scheduleTick
    // 0x445298: ldur            x0, [fp, #-0x18]
    // 0x44529c: ldur            x2, [fp, #-8]
    // 0x4452a0: b               #0x4451f4
    // 0x4452a4: r0 = Null
    //     0x4452a4: mov             x0, NULL
    // 0x4452a8: LeaveFrame
    //     0x4452a8: mov             SP, fp
    //     0x4452ac: ldp             fp, lr, [SP], #0x10
    // 0x4452b0: ret
    //     0x4452b0: ret             
    // 0x4452b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x4452b4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x4452b8: b               #0x445190
    // 0x4452bc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4452bc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x4452c0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4452c0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x4452c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x4452c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x4452c8: b               #0x445204
  }
  _ dispose(/* No info */) {
    // ** addr: 0x754248, size: 0x90
    // 0x754248: EnterFrame
    //     0x754248: stp             fp, lr, [SP, #-0x10]!
    //     0x75424c: mov             fp, SP
    // 0x754250: AllocStack(0x10)
    //     0x754250: sub             SP, SP, #0x10
    // 0x754254: SetupParameters(__SplashScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x10 */)
    //     0x754254: mov             x0, x1
    //     0x754258: stur            x1, [fp, #-0x10]
    // 0x75425c: CheckStackOverflow
    //     0x75425c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x754260: cmp             SP, x16
    //     0x754264: b.ls            #0x7542d0
    // 0x754268: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x754268: ldur            w3, [x0, #0x17]
    // 0x75426c: DecompressPointer r3
    //     0x75426c: add             x3, x3, HEAP, lsl #32
    // 0x754270: stur            x3, [fp, #-8]
    // 0x754274: cmp             w3, NULL
    // 0x754278: b.ne            #0x754284
    // 0x75427c: mov             x1, x0
    // 0x754280: b               #0x7542bc
    // 0x754284: mov             x2, x0
    // 0x754288: r1 = Function '_updateTickers@378311458':.
    //     0x754288: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a50] AnonymousClosure: (0x445138), in [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickers (0x445170)
    //     0x75428c: ldr             x1, [x1, #0xa50]
    // 0x754290: r0 = AllocateClosure()
    //     0x754290: bl              #0x9273d4  ; AllocateClosureStub
    // 0x754294: ldur            x1, [fp, #-8]
    // 0x754298: r2 = LoadClassIdInstr(r1)
    //     0x754298: ldur            x2, [x1, #-1]
    //     0x75429c: ubfx            x2, x2, #0xc, #0x14
    // 0x7542a0: mov             x16, x0
    // 0x7542a4: mov             x0, x2
    // 0x7542a8: mov             x2, x16
    // 0x7542ac: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x7542ac: add             lr, x0, #0xfe7
    //     0x7542b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7542b4: blr             lr
    // 0x7542b8: ldur            x1, [fp, #-0x10]
    // 0x7542bc: ArrayStore: r1[0] = rNULL  ; List_4
    //     0x7542bc: stur            NULL, [x1, #0x17]
    // 0x7542c0: r0 = Null
    //     0x7542c0: mov             x0, NULL
    // 0x7542c4: LeaveFrame
    //     0x7542c4: mov             SP, fp
    //     0x7542c8: ldp             fp, lr, [SP], #0x10
    // 0x7542cc: ret
    //     0x7542cc: ret             
    // 0x7542d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7542d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7542d4: b               #0x754268
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x7542d8, size: 0x38
    // 0x7542d8: EnterFrame
    //     0x7542d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7542dc: mov             fp, SP
    // 0x7542e0: ldr             x0, [fp, #0x10]
    // 0x7542e4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7542e4: ldur            w1, [x0, #0x17]
    // 0x7542e8: DecompressPointer r1
    //     0x7542e8: add             x1, x1, HEAP, lsl #32
    // 0x7542ec: CheckStackOverflow
    //     0x7542ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7542f0: cmp             SP, x16
    //     0x7542f4: b.ls            #0x754308
    // 0x7542f8: r0 = dispose()
    //     0x7542f8: bl              #0x754248  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::dispose
    // 0x7542fc: LeaveFrame
    //     0x7542fc: mov             SP, fp
    //     0x754300: ldp             fp, lr, [SP], #0x10
    // 0x754304: ret
    //     0x754304: ret             
    // 0x754308: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754308: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x75430c: b               #0x7542f8
  }
  _ activate(/* No info */) {
    // ** addr: 0x758ebc, size: 0x48
    // 0x758ebc: EnterFrame
    //     0x758ebc: stp             fp, lr, [SP, #-0x10]!
    //     0x758ec0: mov             fp, SP
    // 0x758ec4: AllocStack(0x8)
    //     0x758ec4: sub             SP, SP, #8
    // 0x758ec8: SetupParameters(__SplashScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x8 */)
    //     0x758ec8: mov             x0, x1
    //     0x758ecc: stur            x1, [fp, #-8]
    // 0x758ed0: CheckStackOverflow
    //     0x758ed0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x758ed4: cmp             SP, x16
    //     0x758ed8: b.ls            #0x758efc
    // 0x758edc: mov             x1, x0
    // 0x758ee0: r0 = _updateTickerModeNotifier()
    //     0x758ee0: bl              #0x445018  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickerModeNotifier
    // 0x758ee4: ldur            x1, [fp, #-8]
    // 0x758ee8: r0 = _updateTickers()
    //     0x758ee8: bl              #0x445170  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::_updateTickers
    // 0x758eec: r0 = Null
    //     0x758eec: mov             x0, NULL
    // 0x758ef0: LeaveFrame
    //     0x758ef0: mov             SP, fp
    //     0x758ef4: ldp             fp, lr, [SP], #0x10
    // 0x758ef8: ret
    //     0x758ef8: ret             
    // 0x758efc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x758efc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x758f00: b               #0x758edc
  }
}

// class id: 2463, size: 0x24, field offset: 0x1c
class _SplashScreenState extends __SplashScreenState&State&TickerProviderStateMixin {

  late Animation<double> _logoAnimation; // offset: 0x20
  late AnimationController _logoController; // offset: 0x1c

  _ initState(/* No info */) {
    // ** addr: 0x5ec474, size: 0x208
    // 0x5ec474: EnterFrame
    //     0x5ec474: stp             fp, lr, [SP, #-0x10]!
    //     0x5ec478: mov             fp, SP
    // 0x5ec47c: AllocStack(0x30)
    //     0x5ec47c: sub             SP, SP, #0x30
    // 0x5ec480: SetupParameters(_SplashScreenState this /* r1 => r2, fp-0x8 */)
    //     0x5ec480: mov             x2, x1
    //     0x5ec484: stur            x1, [fp, #-8]
    // 0x5ec488: CheckStackOverflow
    //     0x5ec488: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ec48c: cmp             SP, x16
    //     0x5ec490: b.ls            #0x5ec670
    // 0x5ec494: r1 = 1
    //     0x5ec494: mov             x1, #1
    // 0x5ec498: r0 = AllocateContext()
    //     0x5ec498: bl              #0x927010  ; AllocateContextStub
    // 0x5ec49c: ldur            x2, [fp, #-8]
    // 0x5ec4a0: stur            x0, [fp, #-0x10]
    // 0x5ec4a4: StoreField: r0->field_f = r2
    //     0x5ec4a4: stur            w2, [x0, #0xf]
    // 0x5ec4a8: r1 = <double>
    //     0x5ec4a8: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5ec4ac: r0 = AnimationController()
    //     0x5ec4ac: bl              #0x42a58c  ; AllocateAnimationControllerStub -> AnimationController (size=0x4c)
    // 0x5ec4b0: stur            x0, [fp, #-0x18]
    // 0x5ec4b4: r16 = Instance_Duration
    //     0x5ec4b4: add             x16, PP, #0x19, lsl #12  ; [pp+0x19a80] Obj!Duration@a2ddc1
    //     0x5ec4b8: ldr             x16, [x16, #0xa80]
    // 0x5ec4bc: str             x16, [SP]
    // 0x5ec4c0: mov             x1, x0
    // 0x5ec4c4: ldur            x2, [fp, #-8]
    // 0x5ec4c8: r4 = const [0, 0x3, 0x1, 0x2, duration, 0x2, null]
    //     0x5ec4c8: add             x4, PP, #0x10, lsl #12  ; [pp+0x10f68] List(7) [0, 0x3, 0x1, 0x2, "duration", 0x2, Null]
    //     0x5ec4cc: ldr             x4, [x4, #0xf68]
    // 0x5ec4d0: r0 = AnimationController()
    //     0x5ec4d0: bl              #0x42a00c  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::AnimationController
    // 0x5ec4d4: ldur            x0, [fp, #-0x18]
    // 0x5ec4d8: ldur            x2, [fp, #-8]
    // 0x5ec4dc: StoreField: r2->field_1b = r0
    //     0x5ec4dc: stur            w0, [x2, #0x1b]
    //     0x5ec4e0: ldurb           w16, [x2, #-1]
    //     0x5ec4e4: ldurb           w17, [x0, #-1]
    //     0x5ec4e8: and             x16, x17, x16, lsr #2
    //     0x5ec4ec: tst             x16, HEAP, lsr #32
    //     0x5ec4f0: b.eq            #0x5ec4f8
    //     0x5ec4f4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5ec4f8: r1 = <double>
    //     0x5ec4f8: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5ec4fc: r0 = Tween()
    //     0x5ec4fc: bl              #0x3f9224  ; AllocateTweenStub -> Tween<X0> (size=0x14)
    // 0x5ec500: mov             x2, x0
    // 0x5ec504: r0 = 0.000000
    //     0x5ec504: ldr             x0, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x5ec508: stur            x2, [fp, #-0x20]
    // 0x5ec50c: StoreField: r2->field_b = r0
    //     0x5ec50c: stur            w0, [x2, #0xb]
    // 0x5ec510: r0 = 1.000000
    //     0x5ec510: ldr             x0, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x5ec514: StoreField: r2->field_f = r0
    //     0x5ec514: stur            w0, [x2, #0xf]
    // 0x5ec518: r1 = <double>
    //     0x5ec518: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5ec51c: r0 = CurvedAnimation()
    //     0x5ec51c: bl              #0x408c88  ; AllocateCurvedAnimationStub -> CurvedAnimation (size=0x1c)
    // 0x5ec520: mov             x1, x0
    // 0x5ec524: ldur            x3, [fp, #-0x18]
    // 0x5ec528: r2 = Instance_ElasticOutCurve
    //     0x5ec528: add             x2, PP, #0x19, lsl #12  ; [pp+0x19a88] Obj!ElasticOutCurve@a0f6e1
    //     0x5ec52c: ldr             x2, [x2, #0xa88]
    // 0x5ec530: stur            x0, [fp, #-0x18]
    // 0x5ec534: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x5ec534: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x5ec538: r0 = CurvedAnimation()
    //     0x5ec538: bl              #0x408b44  ; [package:flutter/src/animation/animations.dart] CurvedAnimation::CurvedAnimation
    // 0x5ec53c: ldur            x1, [fp, #-0x20]
    // 0x5ec540: ldur            x2, [fp, #-0x18]
    // 0x5ec544: r0 = animate()
    //     0x5ec544: bl              #0x3f6a9c  ; [package:flutter/src/animation/tween.dart] Animatable::animate
    // 0x5ec548: ldur            x1, [fp, #-8]
    // 0x5ec54c: StoreField: r1->field_1f = r0
    //     0x5ec54c: stur            w0, [x1, #0x1f]
    //     0x5ec550: ldurb           w16, [x1, #-1]
    //     0x5ec554: ldurb           w17, [x0, #-1]
    //     0x5ec558: and             x16, x17, x16, lsr #2
    //     0x5ec55c: tst             x16, HEAP, lsr #32
    //     0x5ec560: b.eq            #0x5ec568
    //     0x5ec564: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5ec568: LoadField: r0 = r1->field_1b
    //     0x5ec568: ldur            w0, [x1, #0x1b]
    // 0x5ec56c: DecompressPointer r0
    //     0x5ec56c: add             x0, x0, HEAP, lsl #32
    // 0x5ec570: mov             x1, x0
    // 0x5ec574: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5ec574: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5ec578: r0 = forward()
    //     0x5ec578: bl              #0x42af68  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::forward
    // 0x5ec57c: r0 = LoadStaticField(0x834)
    //     0x5ec57c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ec580: ldr             x0, [x0, #0x1068]
    // 0x5ec584: cmp             w0, NULL
    // 0x5ec588: b.eq            #0x5ec678
    // 0x5ec58c: LoadField: r3 = r0->field_53
    //     0x5ec58c: ldur            w3, [x0, #0x53]
    // 0x5ec590: DecompressPointer r3
    //     0x5ec590: add             x3, x3, HEAP, lsl #32
    // 0x5ec594: stur            x3, [fp, #-0x18]
    // 0x5ec598: LoadField: r0 = r3->field_7
    //     0x5ec598: ldur            w0, [x3, #7]
    // 0x5ec59c: DecompressPointer r0
    //     0x5ec59c: add             x0, x0, HEAP, lsl #32
    // 0x5ec5a0: ldur            x2, [fp, #-0x10]
    // 0x5ec5a4: stur            x0, [fp, #-8]
    // 0x5ec5a8: r1 = Function '<anonymous closure>':.
    //     0x5ec5a8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a90] AnonymousClosure: (0x5ec67c), in [package:umrem_demo/features/splash/screens/splash_screen.dart] _SplashScreenState::initState (0x5ec474)
    //     0x5ec5ac: ldr             x1, [x1, #0xa90]
    // 0x5ec5b0: r0 = AllocateClosure()
    //     0x5ec5b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ec5b4: ldur            x2, [fp, #-8]
    // 0x5ec5b8: mov             x3, x0
    // 0x5ec5bc: r1 = Null
    //     0x5ec5bc: mov             x1, NULL
    // 0x5ec5c0: stur            x3, [fp, #-8]
    // 0x5ec5c4: cmp             w2, NULL
    // 0x5ec5c8: b.eq            #0x5ec5e8
    // 0x5ec5cc: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5ec5cc: ldur            w4, [x2, #0x17]
    // 0x5ec5d0: DecompressPointer r4
    //     0x5ec5d0: add             x4, x4, HEAP, lsl #32
    // 0x5ec5d4: r8 = X0
    //     0x5ec5d4: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5ec5d8: LoadField: r9 = r4->field_7
    //     0x5ec5d8: ldur            x9, [x4, #7]
    // 0x5ec5dc: r3 = Null
    //     0x5ec5dc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a98] Null
    //     0x5ec5e0: ldr             x3, [x3, #0xa98]
    // 0x5ec5e4: blr             x9
    // 0x5ec5e8: ldur            x0, [fp, #-0x18]
    // 0x5ec5ec: LoadField: r1 = r0->field_b
    //     0x5ec5ec: ldur            w1, [x0, #0xb]
    // 0x5ec5f0: LoadField: r2 = r0->field_f
    //     0x5ec5f0: ldur            w2, [x0, #0xf]
    // 0x5ec5f4: DecompressPointer r2
    //     0x5ec5f4: add             x2, x2, HEAP, lsl #32
    // 0x5ec5f8: LoadField: r3 = r2->field_b
    //     0x5ec5f8: ldur            w3, [x2, #0xb]
    // 0x5ec5fc: r2 = LoadInt32Instr(r1)
    //     0x5ec5fc: sbfx            x2, x1, #1, #0x1f
    // 0x5ec600: stur            x2, [fp, #-0x28]
    // 0x5ec604: r1 = LoadInt32Instr(r3)
    //     0x5ec604: sbfx            x1, x3, #1, #0x1f
    // 0x5ec608: cmp             x2, x1
    // 0x5ec60c: b.ne            #0x5ec618
    // 0x5ec610: mov             x1, x0
    // 0x5ec614: r0 = _growToNextCapacity()
    //     0x5ec614: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5ec618: ldur            x2, [fp, #-0x18]
    // 0x5ec61c: ldur            x3, [fp, #-0x28]
    // 0x5ec620: add             x4, x3, #1
    // 0x5ec624: lsl             x5, x4, #1
    // 0x5ec628: StoreField: r2->field_b = r5
    //     0x5ec628: stur            w5, [x2, #0xb]
    // 0x5ec62c: LoadField: r1 = r2->field_f
    //     0x5ec62c: ldur            w1, [x2, #0xf]
    // 0x5ec630: DecompressPointer r1
    //     0x5ec630: add             x1, x1, HEAP, lsl #32
    // 0x5ec634: ldur            x0, [fp, #-8]
    // 0x5ec638: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5ec638: add             x25, x1, x3, lsl #2
    //     0x5ec63c: add             x25, x25, #0xf
    //     0x5ec640: str             w0, [x25]
    //     0x5ec644: tbz             w0, #0, #0x5ec660
    //     0x5ec648: ldurb           w16, [x1, #-1]
    //     0x5ec64c: ldurb           w17, [x0, #-1]
    //     0x5ec650: and             x16, x17, x16, lsr #2
    //     0x5ec654: tst             x16, HEAP, lsr #32
    //     0x5ec658: b.eq            #0x5ec660
    //     0x5ec65c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5ec660: r0 = Null
    //     0x5ec660: mov             x0, NULL
    // 0x5ec664: LeaveFrame
    //     0x5ec664: mov             SP, fp
    //     0x5ec668: ldp             fp, lr, [SP], #0x10
    // 0x5ec66c: ret
    //     0x5ec66c: ret             
    // 0x5ec670: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ec670: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ec674: b               #0x5ec494
    // 0x5ec678: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ec678: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic, Duration) async {
    // ** addr: 0x5ec67c, size: 0x19c
    // 0x5ec67c: EnterFrame
    //     0x5ec67c: stp             fp, lr, [SP, #-0x10]!
    //     0x5ec680: mov             fp, SP
    // 0x5ec684: AllocStack(0x38)
    //     0x5ec684: sub             SP, SP, #0x38
    // 0x5ec688: SetupParameters(_SplashScreenState this /* r1 */)
    //     0x5ec688: stur            NULL, [fp, #-8]
    //     0x5ec68c: mov             x0, #0
    //     0x5ec690: add             x1, fp, w0, sxtw #2
    //     0x5ec694: ldr             x1, [x1, #0x18]
    //     0x5ec698: ldur            w2, [x1, #0x17]
    //     0x5ec69c: add             x2, x2, HEAP, lsl #32
    //     0x5ec6a0: stur            x2, [fp, #-0x10]
    // 0x5ec6a4: CheckStackOverflow
    //     0x5ec6a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ec6a8: cmp             SP, x16
    //     0x5ec6ac: b.ls            #0x5ec804
    // 0x5ec6b0: InitAsync() -> Future<void?>
    //     0x5ec6b0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5ec6b4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5ec6b8: ldur            x0, [fp, #-0x10]
    // 0x5ec6bc: LoadField: r1 = r0->field_f
    //     0x5ec6bc: ldur            w1, [x0, #0xf]
    // 0x5ec6c0: DecompressPointer r1
    //     0x5ec6c0: add             x1, x1, HEAP, lsl #32
    // 0x5ec6c4: LoadField: r2 = r1->field_f
    //     0x5ec6c4: ldur            w2, [x1, #0xf]
    // 0x5ec6c8: DecompressPointer r2
    //     0x5ec6c8: add             x2, x2, HEAP, lsl #32
    // 0x5ec6cc: cmp             w2, NULL
    // 0x5ec6d0: b.eq            #0x5ec80c
    // 0x5ec6d4: r16 = <SplashProvider>
    //     0x5ec6d4: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b30] TypeArguments: <SplashProvider>
    //     0x5ec6d8: ldr             x16, [x16, #0xb30]
    // 0x5ec6dc: stp             x2, x16, [SP]
    // 0x5ec6e0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5ec6e0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5ec6e4: r0 = ReadContext.read()
    //     0x5ec6e4: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5ec6e8: mov             x1, x0
    // 0x5ec6ec: stur            x0, [fp, #-0x18]
    // 0x5ec6f0: r0 = initializeApp()
    //     0x5ec6f0: bl              #0x5ecb80  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::initializeApp
    // 0x5ec6f4: mov             x1, x0
    // 0x5ec6f8: stur            x1, [fp, #-0x20]
    // 0x5ec6fc: r0 = Await()
    //     0x5ec6fc: bl              #0x3dd188  ; AwaitStub
    // 0x5ec700: ldur            x1, [fp, #-0x18]
    // 0x5ec704: r0 = closeLoading()
    //     0x5ec704: bl              #0x5ecb28  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::closeLoading
    // 0x5ec708: ldur            x1, [fp, #-0x10]
    // 0x5ec70c: LoadField: r0 = r1->field_f
    //     0x5ec70c: ldur            w0, [x1, #0xf]
    // 0x5ec710: DecompressPointer r0
    //     0x5ec710: add             x0, x0, HEAP, lsl #32
    // 0x5ec714: LoadField: r2 = r0->field_f
    //     0x5ec714: ldur            w2, [x0, #0xf]
    // 0x5ec718: DecompressPointer r2
    //     0x5ec718: add             x2, x2, HEAP, lsl #32
    // 0x5ec71c: cmp             w2, NULL
    // 0x5ec720: b.ne            #0x5ec72c
    // 0x5ec724: r0 = Null
    //     0x5ec724: mov             x0, NULL
    // 0x5ec728: r0 = ReturnAsyncNotFuture()
    //     0x5ec728: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ec72c: r0 = LoadStaticField(0xfe4)
    //     0x5ec72c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5ec730: ldr             x0, [x0, #0x1fc8]
    // 0x5ec734: cmp             w0, NULL
    // 0x5ec738: b.eq            #0x5ec7e0
    // 0x5ec73c: LoadField: r2 = r0->field_f
    //     0x5ec73c: ldur            w2, [x0, #0xf]
    // 0x5ec740: DecompressPointer r2
    //     0x5ec740: add             x2, x2, HEAP, lsl #32
    // 0x5ec744: r0 = LoadClassIdInstr(r2)
    //     0x5ec744: ldur            x0, [x2, #-1]
    //     0x5ec748: ubfx            x0, x0, #0xc, #0x14
    // 0x5ec74c: r16 = "yonetici"
    //     0x5ec74c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x5ec750: ldr             x16, [x16, #0x798]
    // 0x5ec754: stp             x16, x2, [SP]
    // 0x5ec758: mov             lr, x0
    // 0x5ec75c: ldr             lr, [x21, lr, lsl #3]
    // 0x5ec760: blr             lr
    // 0x5ec764: tbnz            w0, #4, #0x5ec7a4
    // 0x5ec768: ldur            x0, [fp, #-0x10]
    // 0x5ec76c: LoadField: r1 = r0->field_f
    //     0x5ec76c: ldur            w1, [x0, #0xf]
    // 0x5ec770: DecompressPointer r1
    //     0x5ec770: add             x1, x1, HEAP, lsl #32
    // 0x5ec774: LoadField: r0 = r1->field_f
    //     0x5ec774: ldur            w0, [x1, #0xf]
    // 0x5ec778: DecompressPointer r0
    //     0x5ec778: add             x0, x0, HEAP, lsl #32
    // 0x5ec77c: cmp             w0, NULL
    // 0x5ec780: b.eq            #0x5ec810
    // 0x5ec784: r16 = <Object?, Object?>
    //     0x5ec784: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x5ec788: stp             x0, x16, [SP, #8]
    // 0x5ec78c: r16 = "/admin"
    //     0x5ec78c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c90] "/admin"
    //     0x5ec790: ldr             x16, [x16, #0xc90]
    // 0x5ec794: str             x16, [SP]
    // 0x5ec798: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x5ec798: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x5ec79c: r0 = pushReplacementNamed()
    //     0x5ec79c: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x5ec7a0: b               #0x5ec7fc
    // 0x5ec7a4: ldur            x0, [fp, #-0x10]
    // 0x5ec7a8: LoadField: r1 = r0->field_f
    //     0x5ec7a8: ldur            w1, [x0, #0xf]
    // 0x5ec7ac: DecompressPointer r1
    //     0x5ec7ac: add             x1, x1, HEAP, lsl #32
    // 0x5ec7b0: LoadField: r0 = r1->field_f
    //     0x5ec7b0: ldur            w0, [x1, #0xf]
    // 0x5ec7b4: DecompressPointer r0
    //     0x5ec7b4: add             x0, x0, HEAP, lsl #32
    // 0x5ec7b8: cmp             w0, NULL
    // 0x5ec7bc: b.eq            #0x5ec814
    // 0x5ec7c0: r16 = <Object?, Object?>
    //     0x5ec7c0: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x5ec7c4: stp             x0, x16, [SP, #8]
    // 0x5ec7c8: r16 = "/main"
    //     0x5ec7c8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11368] "/main"
    //     0x5ec7cc: ldr             x16, [x16, #0x368]
    // 0x5ec7d0: str             x16, [SP]
    // 0x5ec7d4: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x5ec7d4: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x5ec7d8: r0 = pushReplacementNamed()
    //     0x5ec7d8: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x5ec7dc: b               #0x5ec7fc
    // 0x5ec7e0: r16 = <Object?, Object?>
    //     0x5ec7e0: ldr             x16, [PP, #0x4120]  ; [pp+0x4120] TypeArguments: <Object?, Object?>
    // 0x5ec7e4: stp             x2, x16, [SP, #8]
    // 0x5ec7e8: r16 = "/login"
    //     0x5ec7e8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11c28] "/login"
    //     0x5ec7ec: ldr             x16, [x16, #0xc28]
    // 0x5ec7f0: str             x16, [SP]
    // 0x5ec7f4: r4 = const [0x2, 0x2, 0x2, 0x2, null]
    //     0x5ec7f4: ldr             x4, [PP, #0x3fe8]  ; [pp+0x3fe8] List(5) [0x2, 0x2, 0x2, 0x2, Null]
    // 0x5ec7f8: r0 = pushReplacementNamed()
    //     0x5ec7f8: bl              #0x5ec818  ; [package:flutter/src/widgets/navigator.dart] Navigator::pushReplacementNamed
    // 0x5ec7fc: r0 = Null
    //     0x5ec7fc: mov             x0, NULL
    // 0x5ec800: r0 = ReturnAsyncNotFuture()
    //     0x5ec800: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5ec804: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ec804: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ec808: b               #0x5ec6b0
    // 0x5ec80c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ec80c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5ec810: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ec810: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5ec814: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5ec814: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x738a28, size: 0x254
    // 0x738a28: EnterFrame
    //     0x738a28: stp             fp, lr, [SP, #-0x10]!
    //     0x738a2c: mov             fp, SP
    // 0x738a30: AllocStack(0x28)
    //     0x738a30: sub             SP, SP, #0x28
    // 0x738a34: CheckStackOverflow
    //     0x738a34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x738a38: cmp             SP, x16
    //     0x738a3c: b.ls            #0x738c68
    // 0x738a40: LoadField: r0 = r1->field_1f
    //     0x738a40: ldur            w0, [x1, #0x1f]
    // 0x738a44: DecompressPointer r0
    //     0x738a44: add             x0, x0, HEAP, lsl #32
    // 0x738a48: r16 = Sentinel
    //     0x738a48: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x738a4c: cmp             w0, w16
    // 0x738a50: b.eq            #0x738c70
    // 0x738a54: stur            x0, [fp, #-8]
    // 0x738a58: r0 = Image()
    //     0x738a58: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x738a5c: stur            x0, [fp, #-0x10]
    // 0x738a60: r16 = 200.000000
    //     0x738a60: add             x16, PP, #0x14, lsl #12  ; [pp+0x14d40] 200
    //     0x738a64: ldr             x16, [x16, #0xd40]
    // 0x738a68: r30 = 200.000000
    //     0x738a68: add             lr, PP, #0x14, lsl #12  ; [pp+0x14d40] 200
    //     0x738a6c: ldr             lr, [lr, #0xd40]
    // 0x738a70: stp             lr, x16, [SP]
    // 0x738a74: mov             x1, x0
    // 0x738a78: r2 = "assets/images/play_store_512.png"
    //     0x738a78: add             x2, PP, #0x19, lsl #12  ; [pp+0x19a58] "assets/images/play_store_512.png"
    //     0x738a7c: ldr             x2, [x2, #0xa58]
    // 0x738a80: r4 = const [0, 0x4, 0x2, 0x2, height, 0x3, width, 0x2, null]
    //     0x738a80: add             x4, PP, #0x19, lsl #12  ; [pp+0x19a60] List(9) [0, 0x4, 0x2, 0x2, "height", 0x3, "width", 0x2, Null]
    //     0x738a84: ldr             x4, [x4, #0xa60]
    // 0x738a88: r0 = Image.asset()
    //     0x738a88: bl              #0x6f8f2c  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0x738a8c: r0 = ScaleTransition()
    //     0x738a8c: bl              #0x693e04  ; AllocateScaleTransitionStub -> ScaleTransition (size=0x20)
    // 0x738a90: mov             x1, x0
    // 0x738a94: r0 = Closure: (double) => Matrix4 from Function '_handleScaleMatrix@381170175': static.
    //     0x738a94: add             x0, PP, #0x19, lsl #12  ; [pp+0x19a68] Closure: (double) => Matrix4 from Function '_handleScaleMatrix@381170175': static. (0x7f2290695180)
    //     0x738a98: ldr             x0, [x0, #0xa68]
    // 0x738a9c: stur            x1, [fp, #-0x18]
    // 0x738aa0: StoreField: r1->field_f = r0
    //     0x738aa0: stur            w0, [x1, #0xf]
    // 0x738aa4: r0 = Instance_Alignment
    //     0x738aa4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x738aa8: ldr             x0, [x0, #0x60]
    // 0x738aac: StoreField: r1->field_13 = r0
    //     0x738aac: stur            w0, [x1, #0x13]
    // 0x738ab0: ldur            x2, [fp, #-0x10]
    // 0x738ab4: StoreField: r1->field_1b = r2
    //     0x738ab4: stur            w2, [x1, #0x1b]
    // 0x738ab8: ldur            x2, [fp, #-8]
    // 0x738abc: StoreField: r1->field_b = r2
    //     0x738abc: stur            w2, [x1, #0xb]
    // 0x738ac0: r0 = FadeTransition()
    //     0x738ac0: bl              #0x40a204  ; AllocateFadeTransitionStub -> FadeTransition (size=0x18)
    // 0x738ac4: mov             x2, x0
    // 0x738ac8: ldur            x0, [fp, #-8]
    // 0x738acc: stur            x2, [fp, #-0x10]
    // 0x738ad0: StoreField: r2->field_f = r0
    //     0x738ad0: stur            w0, [x2, #0xf]
    // 0x738ad4: r0 = false
    //     0x738ad4: add             x0, NULL, #0x30  ; false
    // 0x738ad8: StoreField: r2->field_13 = r0
    //     0x738ad8: stur            w0, [x2, #0x13]
    // 0x738adc: ldur            x1, [fp, #-0x18]
    // 0x738ae0: StoreField: r2->field_b = r1
    //     0x738ae0: stur            w1, [x2, #0xb]
    // 0x738ae4: r1 = <Color>
    //     0x738ae4: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x738ae8: ldr             x1, [x1, #0x800]
    // 0x738aec: r0 = AlwaysStoppedAnimation()
    //     0x738aec: bl              #0x5fcb78  ; AllocateAlwaysStoppedAnimationStub -> AlwaysStoppedAnimation<X0> (size=0x10)
    // 0x738af0: mov             x1, x0
    // 0x738af4: r0 = Instance_Color
    //     0x738af4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11be0] Obj!Color@a255d1
    //     0x738af8: ldr             x0, [x0, #0xbe0]
    // 0x738afc: stur            x1, [fp, #-8]
    // 0x738b00: StoreField: r1->field_b = r0
    //     0x738b00: stur            w0, [x1, #0xb]
    // 0x738b04: r0 = CircularProgressIndicator()
    //     0x738b04: bl              #0x6d15e8  ; AllocateCircularProgressIndicatorStub -> CircularProgressIndicator (size=0x48)
    // 0x738b08: mov             x3, x0
    // 0x738b0c: r0 = 5.000000
    //     0x738b0c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a50] 5
    //     0x738b10: ldr             x0, [x0, #0xa50]
    // 0x738b14: stur            x3, [fp, #-0x18]
    // 0x738b18: StoreField: r3->field_27 = r0
    //     0x738b18: stur            w0, [x3, #0x27]
    // 0x738b1c: r0 = Instance__ActivityIndicatorType
    //     0x738b1c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f00] Obj!_ActivityIndicatorType@a2b551
    //     0x738b20: ldr             x0, [x0, #0xf00]
    // 0x738b24: StoreField: r3->field_23 = r0
    //     0x738b24: stur            w0, [x3, #0x23]
    // 0x738b28: r0 = Instance_MaterialColor
    //     0x738b28: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x738b2c: ldr             x0, [x0, #0xbc8]
    // 0x738b30: StoreField: r3->field_f = r0
    //     0x738b30: stur            w0, [x3, #0xf]
    // 0x738b34: ldur            x0, [fp, #-8]
    // 0x738b38: ArrayStore: r3[0] = r0  ; List_4
    //     0x738b38: stur            w0, [x3, #0x17]
    // 0x738b3c: r1 = Null
    //     0x738b3c: mov             x1, NULL
    // 0x738b40: r2 = 6
    //     0x738b40: mov             x2, #6
    // 0x738b44: r0 = AllocateArray()
    //     0x738b44: bl              #0x9280a0  ; AllocateArrayStub
    // 0x738b48: mov             x2, x0
    // 0x738b4c: ldur            x0, [fp, #-0x10]
    // 0x738b50: stur            x2, [fp, #-8]
    // 0x738b54: StoreField: r2->field_f = r0
    //     0x738b54: stur            w0, [x2, #0xf]
    // 0x738b58: r16 = Instance_SizedBox
    //     0x738b58: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x738b5c: ldr             x16, [x16, #0x248]
    // 0x738b60: StoreField: r2->field_13 = r16
    //     0x738b60: stur            w16, [x2, #0x13]
    // 0x738b64: ldur            x0, [fp, #-0x18]
    // 0x738b68: ArrayStore: r2[0] = r0  ; List_4
    //     0x738b68: stur            w0, [x2, #0x17]
    // 0x738b6c: r1 = <Widget>
    //     0x738b6c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x738b70: r0 = AllocateGrowableArray()
    //     0x738b70: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x738b74: mov             x1, x0
    // 0x738b78: ldur            x0, [fp, #-8]
    // 0x738b7c: stur            x1, [fp, #-0x10]
    // 0x738b80: StoreField: r1->field_f = r0
    //     0x738b80: stur            w0, [x1, #0xf]
    // 0x738b84: r0 = 6
    //     0x738b84: mov             x0, #6
    // 0x738b88: StoreField: r1->field_b = r0
    //     0x738b88: stur            w0, [x1, #0xb]
    // 0x738b8c: r0 = Column()
    //     0x738b8c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x738b90: mov             x1, x0
    // 0x738b94: r0 = Instance_Axis
    //     0x738b94: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x738b98: stur            x1, [fp, #-8]
    // 0x738b9c: StoreField: r1->field_f = r0
    //     0x738b9c: stur            w0, [x1, #0xf]
    // 0x738ba0: r0 = Instance_MainAxisAlignment
    //     0x738ba0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x738ba4: ldr             x0, [x0, #0x328]
    // 0x738ba8: StoreField: r1->field_13 = r0
    //     0x738ba8: stur            w0, [x1, #0x13]
    // 0x738bac: r0 = Instance_MainAxisSize
    //     0x738bac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x738bb0: ldr             x0, [x0, #0x330]
    // 0x738bb4: ArrayStore: r1[0] = r0  ; List_4
    //     0x738bb4: stur            w0, [x1, #0x17]
    // 0x738bb8: r0 = Instance_CrossAxisAlignment
    //     0x738bb8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x738bbc: ldr             x0, [x0, #0x338]
    // 0x738bc0: StoreField: r1->field_1b = r0
    //     0x738bc0: stur            w0, [x1, #0x1b]
    // 0x738bc4: r0 = Instance_VerticalDirection
    //     0x738bc4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x738bc8: ldr             x0, [x0, #0x340]
    // 0x738bcc: StoreField: r1->field_23 = r0
    //     0x738bcc: stur            w0, [x1, #0x23]
    // 0x738bd0: r0 = Instance_Clip
    //     0x738bd0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x738bd4: ldr             x0, [x0, #0x348]
    // 0x738bd8: StoreField: r1->field_2b = r0
    //     0x738bd8: stur            w0, [x1, #0x2b]
    // 0x738bdc: StoreField: r1->field_2f = rZR
    //     0x738bdc: stur            xzr, [x1, #0x2f]
    // 0x738be0: ldur            x0, [fp, #-0x10]
    // 0x738be4: StoreField: r1->field_b = r0
    //     0x738be4: stur            w0, [x1, #0xb]
    // 0x738be8: r0 = Center()
    //     0x738be8: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x738bec: mov             x1, x0
    // 0x738bf0: r0 = Instance_Alignment
    //     0x738bf0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x738bf4: ldr             x0, [x0, #0x60]
    // 0x738bf8: stur            x1, [fp, #-0x10]
    // 0x738bfc: StoreField: r1->field_f = r0
    //     0x738bfc: stur            w0, [x1, #0xf]
    // 0x738c00: ldur            x0, [fp, #-8]
    // 0x738c04: StoreField: r1->field_b = r0
    //     0x738c04: stur            w0, [x1, #0xb]
    // 0x738c08: r0 = Scaffold()
    //     0x738c08: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x738c0c: ldur            x1, [fp, #-0x10]
    // 0x738c10: StoreField: r0->field_1b = r1
    //     0x738c10: stur            w1, [x0, #0x1b]
    // 0x738c14: r1 = Instance_AlignmentDirectional
    //     0x738c14: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x738c18: ldr             x1, [x1, #0x350]
    // 0x738c1c: StoreField: r0->field_2f = r1
    //     0x738c1c: stur            w1, [x0, #0x2f]
    // 0x738c20: r1 = Instance_Color
    //     0x738c20: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x738c24: StoreField: r0->field_4f = r1
    //     0x738c24: stur            w1, [x0, #0x4f]
    // 0x738c28: r1 = true
    //     0x738c28: add             x1, NULL, #0x20  ; true
    // 0x738c2c: StoreField: r0->field_5f = r1
    //     0x738c2c: stur            w1, [x0, #0x5f]
    // 0x738c30: r2 = Instance_DragStartBehavior
    //     0x738c30: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x738c34: StoreField: r0->field_63 = r2
    //     0x738c34: stur            w2, [x0, #0x63]
    // 0x738c38: r2 = false
    //     0x738c38: add             x2, NULL, #0x30  ; false
    // 0x738c3c: StoreField: r0->field_b = r2
    //     0x738c3c: stur            w2, [x0, #0xb]
    // 0x738c40: StoreField: r0->field_f = r1
    //     0x738c40: stur            w1, [x0, #0xf]
    // 0x738c44: StoreField: r0->field_13 = r2
    //     0x738c44: stur            w2, [x0, #0x13]
    // 0x738c48: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x738c48: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x738c4c: ldr             x2, [x2, #0x358]
    // 0x738c50: StoreField: r0->field_4b = r2
    //     0x738c50: stur            w2, [x0, #0x4b]
    // 0x738c54: StoreField: r0->field_6b = r1
    //     0x738c54: stur            w1, [x0, #0x6b]
    // 0x738c58: StoreField: r0->field_6f = r1
    //     0x738c58: stur            w1, [x0, #0x6f]
    // 0x738c5c: LeaveFrame
    //     0x738c5c: mov             SP, fp
    //     0x738c60: ldp             fp, lr, [SP], #0x10
    // 0x738c64: ret
    //     0x738c64: ret             
    // 0x738c68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x738c68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x738c6c: b               #0x738a40
    // 0x738c70: r9 = _logoAnimation
    //     0x738c70: add             x9, PP, #0x19, lsl #12  ; [pp+0x19a70] Field <_SplashScreenState@917291845._logoAnimation@917291845>: late (offset: 0x20)
    //     0x738c74: ldr             x9, [x9, #0xa70]
    // 0x738c78: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x738c78: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c7c0, size: 0x24
    // 0x74c7c0: EnterFrame
    //     0x74c7c0: stp             fp, lr, [SP, #-0x10]!
    //     0x74c7c4: mov             fp, SP
    // 0x74c7c8: ldr             x2, [fp, #0x10]
    // 0x74c7cc: r1 = Function 'dispose':.
    //     0x74c7cc: add             x1, PP, #0x27, lsl #12  ; [pp+0x275b8] AnonymousClosure: (0x74c7e4), in [package:umrem_demo/features/splash/screens/splash_screen.dart] _SplashScreenState::dispose (0x7541e4)
    //     0x74c7d0: ldr             x1, [x1, #0x5b8]
    // 0x74c7d4: r0 = AllocateClosure()
    //     0x74c7d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c7d8: LeaveFrame
    //     0x74c7d8: mov             SP, fp
    //     0x74c7dc: ldp             fp, lr, [SP], #0x10
    // 0x74c7e0: ret
    //     0x74c7e0: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c7e4, size: 0x38
    // 0x74c7e4: EnterFrame
    //     0x74c7e4: stp             fp, lr, [SP, #-0x10]!
    //     0x74c7e8: mov             fp, SP
    // 0x74c7ec: ldr             x0, [fp, #0x10]
    // 0x74c7f0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c7f0: ldur            w1, [x0, #0x17]
    // 0x74c7f4: DecompressPointer r1
    //     0x74c7f4: add             x1, x1, HEAP, lsl #32
    // 0x74c7f8: CheckStackOverflow
    //     0x74c7f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c7fc: cmp             SP, x16
    //     0x74c800: b.ls            #0x74c814
    // 0x74c804: r0 = dispose()
    //     0x74c804: bl              #0x7541e4  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] _SplashScreenState::dispose
    // 0x74c808: LeaveFrame
    //     0x74c808: mov             SP, fp
    //     0x74c80c: ldp             fp, lr, [SP], #0x10
    // 0x74c810: ret
    //     0x74c810: ret             
    // 0x74c814: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c814: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c818: b               #0x74c804
  }
  _ dispose(/* No info */) {
    // ** addr: 0x7541e4, size: 0x64
    // 0x7541e4: EnterFrame
    //     0x7541e4: stp             fp, lr, [SP, #-0x10]!
    //     0x7541e8: mov             fp, SP
    // 0x7541ec: AllocStack(0x8)
    //     0x7541ec: sub             SP, SP, #8
    // 0x7541f0: SetupParameters(_SplashScreenState this /* r1 => r0, fp-0x8 */)
    //     0x7541f0: mov             x0, x1
    //     0x7541f4: stur            x1, [fp, #-8]
    // 0x7541f8: CheckStackOverflow
    //     0x7541f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7541fc: cmp             SP, x16
    //     0x754200: b.ls            #0x754234
    // 0x754204: LoadField: r1 = r0->field_1b
    //     0x754204: ldur            w1, [x0, #0x1b]
    // 0x754208: DecompressPointer r1
    //     0x754208: add             x1, x1, HEAP, lsl #32
    // 0x75420c: r16 = Sentinel
    //     0x75420c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x754210: cmp             w1, w16
    // 0x754214: b.eq            #0x75423c
    // 0x754218: r0 = dispose()
    //     0x754218: bl              #0x4ab398  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::dispose
    // 0x75421c: ldur            x1, [fp, #-8]
    // 0x754220: r0 = dispose()
    //     0x754220: bl              #0x754248  ; [package:umrem_demo/features/splash/screens/splash_screen.dart] __SplashScreenState&State&TickerProviderStateMixin::dispose
    // 0x754224: r0 = Null
    //     0x754224: mov             x0, NULL
    // 0x754228: LeaveFrame
    //     0x754228: mov             SP, fp
    //     0x75422c: ldp             fp, lr, [SP], #0x10
    // 0x754230: ret
    //     0x754230: ret             
    // 0x754234: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754234: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754238: b               #0x754204
    // 0x75423c: r9 = _logoController
    //     0x75423c: add             x9, PP, #0x19, lsl #12  ; [pp+0x19a78] Field <_SplashScreenState@917291845._logoController@917291845>: late (offset: 0x1c)
    //     0x754240: ldr             x9, [x9, #0xa78]
    // 0x754244: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x754244: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
}

// class id: 3192, size: 0xc, field offset: 0xc
//   const constructor, 
class SplashScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf288, size: 0x30
    // 0x7bf288: EnterFrame
    //     0x7bf288: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf28c: mov             fp, SP
    // 0x7bf290: mov             x0, x1
    // 0x7bf294: r1 = <SplashScreen>
    //     0x7bf294: add             x1, PP, #0x12, lsl #12  ; [pp+0x12810] TypeArguments: <SplashScreen>
    //     0x7bf298: ldr             x1, [x1, #0x810]
    // 0x7bf29c: r0 = _SplashScreenState()
    //     0x7bf29c: bl              #0x7bf2b8  ; Allocate_SplashScreenStateStub -> _SplashScreenState (size=0x24)
    // 0x7bf2a0: r1 = Sentinel
    //     0x7bf2a0: ldr             x1, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bf2a4: StoreField: r0->field_1b = r1
    //     0x7bf2a4: stur            w1, [x0, #0x1b]
    // 0x7bf2a8: StoreField: r0->field_1f = r1
    //     0x7bf2a8: stur            w1, [x0, #0x1f]
    // 0x7bf2ac: LeaveFrame
    //     0x7bf2ac: mov             SP, fp
    //     0x7bf2b0: ldp             fp, lr, [SP], #0x10
    // 0x7bf2b4: ret
    //     0x7bf2b4: ret             
  }
}
