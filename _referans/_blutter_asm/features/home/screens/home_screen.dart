// lib: , url: package:umrem_demo/features/home/screens/home_screen.dart

// class id: 1049583, size: 0x8
class :: {
}

// class id: 2470, size: 0x1c, field offset: 0x14
//   transformed mixin,
abstract class __HomeScreenState&State&TickerProviderStateMixin extends State<dynamic>
     with TickerProviderStateMixin<X0 bound StatefulWidget> {

  _ createTicker(/* No info */) {
    // ** addr: 0x44487c, size: 0x13c
    // 0x44487c: EnterFrame
    //     0x44487c: stp             fp, lr, [SP, #-0x10]!
    //     0x444880: mov             fp, SP
    // 0x444884: AllocStack(0x18)
    //     0x444884: sub             SP, SP, #0x18
    // 0x444888: SetupParameters(__HomeScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x444888: mov             x0, x1
    //     0x44488c: stur            x1, [fp, #-8]
    //     0x444890: stur            x2, [fp, #-0x10]
    // 0x444894: CheckStackOverflow
    //     0x444894: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444898: cmp             SP, x16
    //     0x44489c: b.ls            #0x4449a8
    // 0x4448a0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x4448a0: ldur            w1, [x0, #0x17]
    // 0x4448a4: DecompressPointer r1
    //     0x4448a4: add             x1, x1, HEAP, lsl #32
    // 0x4448a8: cmp             w1, NULL
    // 0x4448ac: b.ne            #0x4448b8
    // 0x4448b0: mov             x1, x0
    // 0x4448b4: r0 = _updateTickerModeNotifier()
    //     0x4448b4: bl              #0x4449d8  ; [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickerModeNotifier
    // 0x4448b8: ldur            x0, [fp, #-8]
    // 0x4448bc: LoadField: r1 = r0->field_13
    //     0x4448bc: ldur            w1, [x0, #0x13]
    // 0x4448c0: DecompressPointer r1
    //     0x4448c0: add             x1, x1, HEAP, lsl #32
    // 0x4448c4: cmp             w1, NULL
    // 0x4448c8: b.ne            #0x444920
    // 0x4448cc: r1 = <_WidgetTicker>
    //     0x4448cc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15db0] TypeArguments: <_WidgetTicker>
    //     0x4448d0: ldr             x1, [x1, #0xdb0]
    // 0x4448d4: r0 = _Set()
    //     0x4448d4: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x4448d8: mov             x1, x0
    // 0x4448dc: r0 = _Uint32List
    //     0x4448dc: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x4448e0: StoreField: r1->field_1b = r0
    //     0x4448e0: stur            w0, [x1, #0x1b]
    // 0x4448e4: StoreField: r1->field_b = rZR
    //     0x4448e4: stur            wzr, [x1, #0xb]
    // 0x4448e8: r0 = const []
    //     0x4448e8: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x4448ec: StoreField: r1->field_f = r0
    //     0x4448ec: stur            w0, [x1, #0xf]
    // 0x4448f0: StoreField: r1->field_13 = rZR
    //     0x4448f0: stur            wzr, [x1, #0x13]
    // 0x4448f4: ArrayStore: r1[0] = rZR  ; List_4
    //     0x4448f4: stur            wzr, [x1, #0x17]
    // 0x4448f8: mov             x0, x1
    // 0x4448fc: ldur            x1, [fp, #-8]
    // 0x444900: StoreField: r1->field_13 = r0
    //     0x444900: stur            w0, [x1, #0x13]
    //     0x444904: ldurb           w16, [x1, #-1]
    //     0x444908: ldurb           w17, [x0, #-1]
    //     0x44490c: and             x16, x17, x16, lsr #2
    //     0x444910: tst             x16, HEAP, lsr #32
    //     0x444914: b.eq            #0x44491c
    //     0x444918: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x44491c: b               #0x444924
    // 0x444920: mov             x1, x0
    // 0x444924: ldur            x0, [fp, #-0x10]
    // 0x444928: r0 = _WidgetTicker()
    //     0x444928: bl              #0x43d174  ; Allocate_WidgetTickerStub -> _WidgetTicker (size=0x20)
    // 0x44492c: mov             x3, x0
    // 0x444930: ldur            x2, [fp, #-8]
    // 0x444934: stur            x3, [fp, #-0x18]
    // 0x444938: StoreField: r3->field_1b = r2
    //     0x444938: stur            w2, [x3, #0x1b]
    // 0x44493c: r0 = false
    //     0x44493c: add             x0, NULL, #0x30  ; false
    // 0x444940: StoreField: r3->field_b = r0
    //     0x444940: stur            w0, [x3, #0xb]
    // 0x444944: ldur            x0, [fp, #-0x10]
    // 0x444948: StoreField: r3->field_13 = r0
    //     0x444948: stur            w0, [x3, #0x13]
    // 0x44494c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x44494c: ldur            w1, [x2, #0x17]
    // 0x444950: DecompressPointer r1
    //     0x444950: add             x1, x1, HEAP, lsl #32
    // 0x444954: cmp             w1, NULL
    // 0x444958: b.eq            #0x4449b0
    // 0x44495c: r0 = LoadClassIdInstr(r1)
    //     0x44495c: ldur            x0, [x1, #-1]
    //     0x444960: ubfx            x0, x0, #0xc, #0x14
    // 0x444964: r0 = GDT[cid_x0 + -0x1000]()
    //     0x444964: sub             lr, x0, #1, lsl #12
    //     0x444968: ldr             lr, [x21, lr, lsl #3]
    //     0x44496c: blr             lr
    // 0x444970: eor             x2, x0, #0x10
    // 0x444974: ldur            x1, [fp, #-0x18]
    // 0x444978: r0 = muted=()
    //     0x444978: bl              #0x43c97c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::muted=
    // 0x44497c: ldur            x0, [fp, #-8]
    // 0x444980: LoadField: r1 = r0->field_13
    //     0x444980: ldur            w1, [x0, #0x13]
    // 0x444984: DecompressPointer r1
    //     0x444984: add             x1, x1, HEAP, lsl #32
    // 0x444988: cmp             w1, NULL
    // 0x44498c: b.eq            #0x4449b4
    // 0x444990: ldur            x2, [fp, #-0x18]
    // 0x444994: r0 = add()
    //     0x444994: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x444998: ldur            x0, [fp, #-0x18]
    // 0x44499c: LeaveFrame
    //     0x44499c: mov             SP, fp
    //     0x4449a0: ldp             fp, lr, [SP], #0x10
    // 0x4449a4: ret
    //     0x4449a4: ret             
    // 0x4449a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x4449a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x4449ac: b               #0x4448a0
    // 0x4449b0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4449b0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x4449b4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4449b4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _updateTickerModeNotifier(/* No info */) {
    // ** addr: 0x4449d8, size: 0x120
    // 0x4449d8: EnterFrame
    //     0x4449d8: stp             fp, lr, [SP, #-0x10]!
    //     0x4449dc: mov             fp, SP
    // 0x4449e0: AllocStack(0x18)
    //     0x4449e0: sub             SP, SP, #0x18
    // 0x4449e4: SetupParameters(__HomeScreenState&State&TickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x4449e4: mov             x2, x1
    //     0x4449e8: stur            x1, [fp, #-8]
    // 0x4449ec: CheckStackOverflow
    //     0x4449ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x4449f0: cmp             SP, x16
    //     0x4449f4: b.ls            #0x444aec
    // 0x4449f8: LoadField: r1 = r2->field_f
    //     0x4449f8: ldur            w1, [x2, #0xf]
    // 0x4449fc: DecompressPointer r1
    //     0x4449fc: add             x1, x1, HEAP, lsl #32
    // 0x444a00: cmp             w1, NULL
    // 0x444a04: b.eq            #0x444af4
    // 0x444a08: r0 = getNotifier()
    //     0x444a08: bl              #0x43cb1c  ; [package:flutter/src/widgets/ticker_provider.dart] TickerMode::getNotifier
    // 0x444a0c: mov             x3, x0
    // 0x444a10: ldur            x0, [fp, #-8]
    // 0x444a14: stur            x3, [fp, #-0x18]
    // 0x444a18: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x444a18: ldur            w4, [x0, #0x17]
    // 0x444a1c: DecompressPointer r4
    //     0x444a1c: add             x4, x4, HEAP, lsl #32
    // 0x444a20: stur            x4, [fp, #-0x10]
    // 0x444a24: cmp             w3, w4
    // 0x444a28: b.ne            #0x444a3c
    // 0x444a2c: r0 = Null
    //     0x444a2c: mov             x0, NULL
    // 0x444a30: LeaveFrame
    //     0x444a30: mov             SP, fp
    //     0x444a34: ldp             fp, lr, [SP], #0x10
    // 0x444a38: ret
    //     0x444a38: ret             
    // 0x444a3c: cmp             w4, NULL
    // 0x444a40: b.eq            #0x444a80
    // 0x444a44: mov             x2, x0
    // 0x444a48: r1 = Function '_updateTickers@378311458':.
    //     0x444a48: add             x1, PP, #0x15, lsl #12  ; [pp+0x15da8] AnonymousClosure: (0x444af8), in [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickers (0x444b30)
    //     0x444a4c: ldr             x1, [x1, #0xda8]
    // 0x444a50: r0 = AllocateClosure()
    //     0x444a50: bl              #0x9273d4  ; AllocateClosureStub
    // 0x444a54: ldur            x1, [fp, #-0x10]
    // 0x444a58: r2 = LoadClassIdInstr(r1)
    //     0x444a58: ldur            x2, [x1, #-1]
    //     0x444a5c: ubfx            x2, x2, #0xc, #0x14
    // 0x444a60: mov             x16, x0
    // 0x444a64: mov             x0, x2
    // 0x444a68: mov             x2, x16
    // 0x444a6c: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x444a6c: add             lr, x0, #0xfe7
    //     0x444a70: ldr             lr, [x21, lr, lsl #3]
    //     0x444a74: blr             lr
    // 0x444a78: ldur            x0, [fp, #-8]
    // 0x444a7c: ldur            x3, [fp, #-0x18]
    // 0x444a80: mov             x2, x0
    // 0x444a84: r1 = Function '_updateTickers@378311458':.
    //     0x444a84: add             x1, PP, #0x15, lsl #12  ; [pp+0x15da8] AnonymousClosure: (0x444af8), in [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickers (0x444b30)
    //     0x444a88: ldr             x1, [x1, #0xda8]
    // 0x444a8c: r0 = AllocateClosure()
    //     0x444a8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x444a90: ldur            x3, [fp, #-0x18]
    // 0x444a94: r1 = LoadClassIdInstr(r3)
    //     0x444a94: ldur            x1, [x3, #-1]
    //     0x444a98: ubfx            x1, x1, #0xc, #0x14
    // 0x444a9c: mov             x2, x0
    // 0x444aa0: mov             x0, x1
    // 0x444aa4: mov             x1, x3
    // 0x444aa8: r0 = GDT[cid_x0 + 0x8cf8]()
    //     0x444aa8: mov             x17, #0x8cf8
    //     0x444aac: add             lr, x0, x17
    //     0x444ab0: ldr             lr, [x21, lr, lsl #3]
    //     0x444ab4: blr             lr
    // 0x444ab8: ldur            x0, [fp, #-0x18]
    // 0x444abc: ldur            x1, [fp, #-8]
    // 0x444ac0: ArrayStore: r1[0] = r0  ; List_4
    //     0x444ac0: stur            w0, [x1, #0x17]
    //     0x444ac4: ldurb           w16, [x1, #-1]
    //     0x444ac8: ldurb           w17, [x0, #-1]
    //     0x444acc: and             x16, x17, x16, lsr #2
    //     0x444ad0: tst             x16, HEAP, lsr #32
    //     0x444ad4: b.eq            #0x444adc
    //     0x444ad8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x444adc: r0 = Null
    //     0x444adc: mov             x0, NULL
    // 0x444ae0: LeaveFrame
    //     0x444ae0: mov             SP, fp
    //     0x444ae4: ldp             fp, lr, [SP], #0x10
    // 0x444ae8: ret
    //     0x444ae8: ret             
    // 0x444aec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444aec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444af0: b               #0x4449f8
    // 0x444af4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x444af4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void _updateTickers(dynamic) {
    // ** addr: 0x444af8, size: 0x38
    // 0x444af8: EnterFrame
    //     0x444af8: stp             fp, lr, [SP, #-0x10]!
    //     0x444afc: mov             fp, SP
    // 0x444b00: ldr             x0, [fp, #0x10]
    // 0x444b04: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x444b04: ldur            w1, [x0, #0x17]
    // 0x444b08: DecompressPointer r1
    //     0x444b08: add             x1, x1, HEAP, lsl #32
    // 0x444b0c: CheckStackOverflow
    //     0x444b0c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444b10: cmp             SP, x16
    //     0x444b14: b.ls            #0x444b28
    // 0x444b18: r0 = _updateTickers()
    //     0x444b18: bl              #0x444b30  ; [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickers
    // 0x444b1c: LeaveFrame
    //     0x444b1c: mov             SP, fp
    //     0x444b20: ldp             fp, lr, [SP], #0x10
    // 0x444b24: ret
    //     0x444b24: ret             
    // 0x444b28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444b28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444b2c: b               #0x444b18
  }
  _ _updateTickers(/* No info */) {
    // ** addr: 0x444b30, size: 0x15c
    // 0x444b30: EnterFrame
    //     0x444b30: stp             fp, lr, [SP, #-0x10]!
    //     0x444b34: mov             fp, SP
    // 0x444b38: AllocStack(0x20)
    //     0x444b38: sub             SP, SP, #0x20
    // 0x444b3c: SetupParameters(__HomeScreenState&State&TickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x444b3c: mov             x2, x1
    //     0x444b40: stur            x1, [fp, #-8]
    // 0x444b44: CheckStackOverflow
    //     0x444b44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444b48: cmp             SP, x16
    //     0x444b4c: b.ls            #0x444c74
    // 0x444b50: LoadField: r0 = r2->field_13
    //     0x444b50: ldur            w0, [x2, #0x13]
    // 0x444b54: DecompressPointer r0
    //     0x444b54: add             x0, x0, HEAP, lsl #32
    // 0x444b58: cmp             w0, NULL
    // 0x444b5c: b.eq            #0x444c64
    // 0x444b60: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x444b60: ldur            w1, [x2, #0x17]
    // 0x444b64: DecompressPointer r1
    //     0x444b64: add             x1, x1, HEAP, lsl #32
    // 0x444b68: cmp             w1, NULL
    // 0x444b6c: b.eq            #0x444c7c
    // 0x444b70: r0 = LoadClassIdInstr(r1)
    //     0x444b70: ldur            x0, [x1, #-1]
    //     0x444b74: ubfx            x0, x0, #0xc, #0x14
    // 0x444b78: r0 = GDT[cid_x0 + -0x1000]()
    //     0x444b78: sub             lr, x0, #1, lsl #12
    //     0x444b7c: ldr             lr, [x21, lr, lsl #3]
    //     0x444b80: blr             lr
    // 0x444b84: eor             x2, x0, #0x10
    // 0x444b88: ldur            x0, [fp, #-8]
    // 0x444b8c: stur            x2, [fp, #-0x10]
    // 0x444b90: LoadField: r1 = r0->field_13
    //     0x444b90: ldur            w1, [x0, #0x13]
    // 0x444b94: DecompressPointer r1
    //     0x444b94: add             x1, x1, HEAP, lsl #32
    // 0x444b98: cmp             w1, NULL
    // 0x444b9c: b.eq            #0x444c80
    // 0x444ba0: r0 = iterator()
    //     0x444ba0: bl              #0x63deb8  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::iterator
    // 0x444ba4: stur            x0, [fp, #-0x18]
    // 0x444ba8: LoadField: r2 = r0->field_7
    //     0x444ba8: ldur            w2, [x0, #7]
    // 0x444bac: DecompressPointer r2
    //     0x444bac: add             x2, x2, HEAP, lsl #32
    // 0x444bb0: stur            x2, [fp, #-8]
    // 0x444bb4: ldur            x3, [fp, #-0x10]
    // 0x444bb8: CheckStackOverflow
    //     0x444bb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444bbc: cmp             SP, x16
    //     0x444bc0: b.ls            #0x444c84
    // 0x444bc4: mov             x1, x0
    // 0x444bc8: r0 = moveNext()
    //     0x444bc8: bl              #0x863f04  ; [dart:_compact_hash] _CompactIterator::moveNext
    // 0x444bcc: tbnz            w0, #4, #0x444c64
    // 0x444bd0: ldur            x3, [fp, #-0x18]
    // 0x444bd4: LoadField: r4 = r3->field_33
    //     0x444bd4: ldur            w4, [x3, #0x33]
    // 0x444bd8: DecompressPointer r4
    //     0x444bd8: add             x4, x4, HEAP, lsl #32
    // 0x444bdc: stur            x4, [fp, #-0x20]
    // 0x444be0: cmp             w4, NULL
    // 0x444be4: b.ne            #0x444c18
    // 0x444be8: mov             x0, x4
    // 0x444bec: ldur            x2, [fp, #-8]
    // 0x444bf0: r1 = Null
    //     0x444bf0: mov             x1, NULL
    // 0x444bf4: cmp             w2, NULL
    // 0x444bf8: b.eq            #0x444c18
    // 0x444bfc: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x444bfc: ldur            w4, [x2, #0x17]
    // 0x444c00: DecompressPointer r4
    //     0x444c00: add             x4, x4, HEAP, lsl #32
    // 0x444c04: r8 = X0
    //     0x444c04: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x444c08: LoadField: r9 = r4->field_7
    //     0x444c08: ldur            x9, [x4, #7]
    // 0x444c0c: r3 = Null
    //     0x444c0c: add             x3, PP, #0x15, lsl #12  ; [pp+0x15d98] Null
    //     0x444c10: ldr             x3, [x3, #0xd98]
    // 0x444c14: blr             x9
    // 0x444c18: ldur            x2, [fp, #-0x10]
    // 0x444c1c: ldur            x0, [fp, #-0x20]
    // 0x444c20: LoadField: r1 = r0->field_b
    //     0x444c20: ldur            w1, [x0, #0xb]
    // 0x444c24: DecompressPointer r1
    //     0x444c24: add             x1, x1, HEAP, lsl #32
    // 0x444c28: cmp             w2, w1
    // 0x444c2c: b.eq            #0x444c58
    // 0x444c30: StoreField: r0->field_b = r2
    //     0x444c30: stur            w2, [x0, #0xb]
    // 0x444c34: tbnz            w2, #4, #0x444c44
    // 0x444c38: mov             x1, x0
    // 0x444c3c: r0 = unscheduleTick()
    //     0x444c3c: bl              #0x3fc00c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::unscheduleTick
    // 0x444c40: b               #0x444c58
    // 0x444c44: mov             x1, x0
    // 0x444c48: r0 = shouldScheduleTick()
    //     0x444c48: bl              #0x3fb61c  ; [package:flutter/src/scheduler/ticker.dart] Ticker::shouldScheduleTick
    // 0x444c4c: tbnz            w0, #4, #0x444c58
    // 0x444c50: ldur            x1, [fp, #-0x20]
    // 0x444c54: r0 = scheduleTick()
    //     0x444c54: bl              #0x3fa4d4  ; [package:flutter/src/scheduler/ticker.dart] Ticker::scheduleTick
    // 0x444c58: ldur            x0, [fp, #-0x18]
    // 0x444c5c: ldur            x2, [fp, #-8]
    // 0x444c60: b               #0x444bb4
    // 0x444c64: r0 = Null
    //     0x444c64: mov             x0, NULL
    // 0x444c68: LeaveFrame
    //     0x444c68: mov             SP, fp
    //     0x444c6c: ldp             fp, lr, [SP], #0x10
    // 0x444c70: ret
    //     0x444c70: ret             
    // 0x444c74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444c74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444c78: b               #0x444b50
    // 0x444c7c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x444c7c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x444c80: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x444c80: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x444c84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444c84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444c88: b               #0x444bc4
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753f58, size: 0x90
    // 0x753f58: EnterFrame
    //     0x753f58: stp             fp, lr, [SP, #-0x10]!
    //     0x753f5c: mov             fp, SP
    // 0x753f60: AllocStack(0x10)
    //     0x753f60: sub             SP, SP, #0x10
    // 0x753f64: SetupParameters(__HomeScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x10 */)
    //     0x753f64: mov             x0, x1
    //     0x753f68: stur            x1, [fp, #-0x10]
    // 0x753f6c: CheckStackOverflow
    //     0x753f6c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753f70: cmp             SP, x16
    //     0x753f74: b.ls            #0x753fe0
    // 0x753f78: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x753f78: ldur            w3, [x0, #0x17]
    // 0x753f7c: DecompressPointer r3
    //     0x753f7c: add             x3, x3, HEAP, lsl #32
    // 0x753f80: stur            x3, [fp, #-8]
    // 0x753f84: cmp             w3, NULL
    // 0x753f88: b.ne            #0x753f94
    // 0x753f8c: mov             x1, x0
    // 0x753f90: b               #0x753fcc
    // 0x753f94: mov             x2, x0
    // 0x753f98: r1 = Function '_updateTickers@378311458':.
    //     0x753f98: add             x1, PP, #0x15, lsl #12  ; [pp+0x15da8] AnonymousClosure: (0x444af8), in [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickers (0x444b30)
    //     0x753f9c: ldr             x1, [x1, #0xda8]
    // 0x753fa0: r0 = AllocateClosure()
    //     0x753fa0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x753fa4: ldur            x1, [fp, #-8]
    // 0x753fa8: r2 = LoadClassIdInstr(r1)
    //     0x753fa8: ldur            x2, [x1, #-1]
    //     0x753fac: ubfx            x2, x2, #0xc, #0x14
    // 0x753fb0: mov             x16, x0
    // 0x753fb4: mov             x0, x2
    // 0x753fb8: mov             x2, x16
    // 0x753fbc: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x753fbc: add             lr, x0, #0xfe7
    //     0x753fc0: ldr             lr, [x21, lr, lsl #3]
    //     0x753fc4: blr             lr
    // 0x753fc8: ldur            x1, [fp, #-0x10]
    // 0x753fcc: ArrayStore: r1[0] = rNULL  ; List_4
    //     0x753fcc: stur            NULL, [x1, #0x17]
    // 0x753fd0: r0 = Null
    //     0x753fd0: mov             x0, NULL
    // 0x753fd4: LeaveFrame
    //     0x753fd4: mov             SP, fp
    //     0x753fd8: ldp             fp, lr, [SP], #0x10
    // 0x753fdc: ret
    //     0x753fdc: ret             
    // 0x753fe0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753fe0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753fe4: b               #0x753f78
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x753fe8, size: 0x38
    // 0x753fe8: EnterFrame
    //     0x753fe8: stp             fp, lr, [SP, #-0x10]!
    //     0x753fec: mov             fp, SP
    // 0x753ff0: ldr             x0, [fp, #0x10]
    // 0x753ff4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x753ff4: ldur            w1, [x0, #0x17]
    // 0x753ff8: DecompressPointer r1
    //     0x753ff8: add             x1, x1, HEAP, lsl #32
    // 0x753ffc: CheckStackOverflow
    //     0x753ffc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x754000: cmp             SP, x16
    //     0x754004: b.ls            #0x754018
    // 0x754008: r0 = dispose()
    //     0x754008: bl              #0x753f58  ; [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::dispose
    // 0x75400c: LeaveFrame
    //     0x75400c: mov             SP, fp
    //     0x754010: ldp             fp, lr, [SP], #0x10
    // 0x754014: ret
    //     0x754014: ret             
    // 0x754018: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754018: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x75401c: b               #0x754008
  }
  _ activate(/* No info */) {
    // ** addr: 0x758e2c, size: 0x48
    // 0x758e2c: EnterFrame
    //     0x758e2c: stp             fp, lr, [SP, #-0x10]!
    //     0x758e30: mov             fp, SP
    // 0x758e34: AllocStack(0x8)
    //     0x758e34: sub             SP, SP, #8
    // 0x758e38: SetupParameters(__HomeScreenState&State&TickerProviderStateMixin this /* r1 => r0, fp-0x8 */)
    //     0x758e38: mov             x0, x1
    //     0x758e3c: stur            x1, [fp, #-8]
    // 0x758e40: CheckStackOverflow
    //     0x758e40: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x758e44: cmp             SP, x16
    //     0x758e48: b.ls            #0x758e6c
    // 0x758e4c: mov             x1, x0
    // 0x758e50: r0 = _updateTickerModeNotifier()
    //     0x758e50: bl              #0x4449d8  ; [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickerModeNotifier
    // 0x758e54: ldur            x1, [fp, #-8]
    // 0x758e58: r0 = _updateTickers()
    //     0x758e58: bl              #0x444b30  ; [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::_updateTickers
    // 0x758e5c: r0 = Null
    //     0x758e5c: mov             x0, NULL
    // 0x758e60: LeaveFrame
    //     0x758e60: mov             SP, fp
    //     0x758e64: ldp             fp, lr, [SP], #0x10
    // 0x758e68: ret
    //     0x758e68: ret             
    // 0x758e6c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x758e6c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x758e70: b               #0x758e4c
  }
}

// class id: 2471, size: 0x24, field offset: 0x1c
class _HomeScreenState extends __HomeScreenState&State&TickerProviderStateMixin {

  late Animation<double> _fadeAnimation; // offset: 0x20
  late AnimationController _fadeController; // offset: 0x1c

  _ initState(/* No info */) {
    // ** addr: 0x5e713c, size: 0xe4
    // 0x5e713c: EnterFrame
    //     0x5e713c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e7140: mov             fp, SP
    // 0x5e7144: AllocStack(0x18)
    //     0x5e7144: sub             SP, SP, #0x18
    // 0x5e7148: SetupParameters(_HomeScreenState this /* r1 => r2, fp-0x8 */)
    //     0x5e7148: mov             x2, x1
    //     0x5e714c: stur            x1, [fp, #-8]
    // 0x5e7150: CheckStackOverflow
    //     0x5e7150: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e7154: cmp             SP, x16
    //     0x5e7158: b.ls            #0x5e7218
    // 0x5e715c: r1 = <double>
    //     0x5e715c: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5e7160: r0 = AnimationController()
    //     0x5e7160: bl              #0x42a58c  ; AllocateAnimationControllerStub -> AnimationController (size=0x4c)
    // 0x5e7164: stur            x0, [fp, #-0x10]
    // 0x5e7168: r16 = Instance_Duration
    //     0x5e7168: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f00] Obj!Duration@a2dda1
    //     0x5e716c: ldr             x16, [x16, #0xf00]
    // 0x5e7170: str             x16, [SP]
    // 0x5e7174: mov             x1, x0
    // 0x5e7178: ldur            x2, [fp, #-8]
    // 0x5e717c: r4 = const [0, 0x3, 0x1, 0x2, duration, 0x2, null]
    //     0x5e717c: add             x4, PP, #0x10, lsl #12  ; [pp+0x10f68] List(7) [0, 0x3, 0x1, 0x2, "duration", 0x2, Null]
    //     0x5e7180: ldr             x4, [x4, #0xf68]
    // 0x5e7184: r0 = AnimationController()
    //     0x5e7184: bl              #0x42a00c  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::AnimationController
    // 0x5e7188: ldur            x0, [fp, #-0x10]
    // 0x5e718c: ldur            x2, [fp, #-8]
    // 0x5e7190: StoreField: r2->field_1b = r0
    //     0x5e7190: stur            w0, [x2, #0x1b]
    //     0x5e7194: ldurb           w16, [x2, #-1]
    //     0x5e7198: ldurb           w17, [x0, #-1]
    //     0x5e719c: and             x16, x17, x16, lsr #2
    //     0x5e71a0: tst             x16, HEAP, lsr #32
    //     0x5e71a4: b.eq            #0x5e71ac
    //     0x5e71a8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e71ac: r1 = <double>
    //     0x5e71ac: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5e71b0: r0 = CurvedAnimation()
    //     0x5e71b0: bl              #0x408c88  ; AllocateCurvedAnimationStub -> CurvedAnimation (size=0x1c)
    // 0x5e71b4: mov             x1, x0
    // 0x5e71b8: ldur            x3, [fp, #-0x10]
    // 0x5e71bc: r2 = Instance_Cubic
    //     0x5e71bc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ca8] Obj!Cubic@a0f931
    //     0x5e71c0: ldr             x2, [x2, #0xca8]
    // 0x5e71c4: stur            x0, [fp, #-0x10]
    // 0x5e71c8: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x5e71c8: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x5e71cc: r0 = CurvedAnimation()
    //     0x5e71cc: bl              #0x408b44  ; [package:flutter/src/animation/animations.dart] CurvedAnimation::CurvedAnimation
    // 0x5e71d0: ldur            x0, [fp, #-0x10]
    // 0x5e71d4: ldur            x1, [fp, #-8]
    // 0x5e71d8: StoreField: r1->field_1f = r0
    //     0x5e71d8: stur            w0, [x1, #0x1f]
    //     0x5e71dc: ldurb           w16, [x1, #-1]
    //     0x5e71e0: ldurb           w17, [x0, #-1]
    //     0x5e71e4: and             x16, x17, x16, lsr #2
    //     0x5e71e8: tst             x16, HEAP, lsr #32
    //     0x5e71ec: b.eq            #0x5e71f4
    //     0x5e71f0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5e71f4: LoadField: r0 = r1->field_1b
    //     0x5e71f4: ldur            w0, [x1, #0x1b]
    // 0x5e71f8: DecompressPointer r0
    //     0x5e71f8: add             x0, x0, HEAP, lsl #32
    // 0x5e71fc: mov             x1, x0
    // 0x5e7200: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e7200: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e7204: r0 = forward()
    //     0x5e7204: bl              #0x42af68  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::forward
    // 0x5e7208: r0 = Null
    //     0x5e7208: mov             x0, NULL
    // 0x5e720c: LeaveFrame
    //     0x5e720c: mov             SP, fp
    //     0x5e7210: ldp             fp, lr, [SP], #0x10
    // 0x5e7214: ret
    //     0x5e7214: ret             
    // 0x5e7218: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e7218: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e721c: b               #0x5e715c
  }
  _ build(/* No info */) {
    // ** addr: 0x72de1c, size: 0x78
    // 0x72de1c: EnterFrame
    //     0x72de1c: stp             fp, lr, [SP, #-0x10]!
    //     0x72de20: mov             fp, SP
    // 0x72de24: AllocStack(0x8)
    //     0x72de24: sub             SP, SP, #8
    // 0x72de28: SetupParameters(_HomeScreenState this /* r1 => r1, fp-0x8 */)
    //     0x72de28: stur            x1, [fp, #-8]
    // 0x72de2c: r1 = 4
    //     0x72de2c: mov             x1, #4
    // 0x72de30: r0 = AllocateContext()
    //     0x72de30: bl              #0x927010  ; AllocateContextStub
    // 0x72de34: mov             x1, x0
    // 0x72de38: ldur            x0, [fp, #-8]
    // 0x72de3c: StoreField: r1->field_f = r0
    //     0x72de3c: stur            w0, [x1, #0xf]
    // 0x72de40: r0 = Instance_Color
    //     0x72de40: add             x0, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x72de44: ldr             x0, [x0, #0x790]
    // 0x72de48: StoreField: r1->field_13 = r0
    //     0x72de48: stur            w0, [x1, #0x13]
    // 0x72de4c: r0 = Instance_Color
    //     0x72de4c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72de50: ldr             x0, [x0, #0xb88]
    // 0x72de54: ArrayStore: r1[0] = r0  ; List_4
    //     0x72de54: stur            w0, [x1, #0x17]
    // 0x72de58: r0 = Instance_Color
    //     0x72de58: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72de5c: StoreField: r1->field_1b = r0
    //     0x72de5c: stur            w0, [x1, #0x1b]
    // 0x72de60: mov             x2, x1
    // 0x72de64: r1 = Function '<anonymous closure>':.
    //     0x72de64: add             x1, PP, #0x15, lsl #12  ; [pp+0x15db8] AnonymousClosure: (0x72de94), in [package:umrem_demo/features/home/screens/home_screen.dart] _HomeScreenState::build (0x72de1c)
    //     0x72de68: ldr             x1, [x1, #0xdb8]
    // 0x72de6c: r0 = AllocateClosure()
    //     0x72de6c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72de70: r1 = <HomeProvider>
    //     0x72de70: add             x1, PP, #0x10, lsl #12  ; [pp+0x10ba0] TypeArguments: <HomeProvider>
    //     0x72de74: ldr             x1, [x1, #0xba0]
    // 0x72de78: stur            x0, [fp, #-8]
    // 0x72de7c: r0 = Consumer()
    //     0x72de7c: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x72de80: ldur            x1, [fp, #-8]
    // 0x72de84: StoreField: r0->field_13 = r1
    //     0x72de84: stur            w1, [x0, #0x13]
    // 0x72de88: LeaveFrame
    //     0x72de88: mov             SP, fp
    //     0x72de8c: ldp             fp, lr, [SP], #0x10
    // 0x72de90: ret
    //     0x72de90: ret             
  }
  [closure] Scaffold <anonymous closure>(dynamic, BuildContext, HomeProvider, Widget?) {
    // ** addr: 0x72de94, size: 0x13ac
    // 0x72de94: EnterFrame
    //     0x72de94: stp             fp, lr, [SP, #-0x10]!
    //     0x72de98: mov             fp, SP
    // 0x72de9c: AllocStack(0x98)
    //     0x72de9c: sub             SP, SP, #0x98
    // 0x72dea0: SetupParameters([dynamic _ /* r0 */])
    //     0x72dea0: ldr             x0, [fp, #0x28]
    //     0x72dea4: ldur            w1, [x0, #0x17]
    //     0x72dea8: add             x1, x1, HEAP, lsl #32
    //     0x72deac: stur            x1, [fp, #-8]
    // 0x72deb0: CheckStackOverflow
    //     0x72deb0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72deb4: cmp             SP, x16
    //     0x72deb8: b.ls            #0x72f1d0
    // 0x72debc: r1 = 1
    //     0x72debc: mov             x1, #1
    // 0x72dec0: r0 = AllocateContext()
    //     0x72dec0: bl              #0x927010  ; AllocateContextStub
    // 0x72dec4: mov             x1, x0
    // 0x72dec8: ldur            x0, [fp, #-8]
    // 0x72decc: stur            x1, [fp, #-0x18]
    // 0x72ded0: StoreField: r1->field_b = r0
    //     0x72ded0: stur            w0, [x1, #0xb]
    // 0x72ded4: ldr             x2, [fp, #0x18]
    // 0x72ded8: StoreField: r1->field_f = r2
    //     0x72ded8: stur            w2, [x1, #0xf]
    // 0x72dedc: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x72dedc: ldur            w2, [x0, #0x17]
    // 0x72dee0: DecompressPointer r2
    //     0x72dee0: add             x2, x2, HEAP, lsl #32
    // 0x72dee4: stur            x2, [fp, #-0x10]
    // 0x72dee8: r0 = TextStyle()
    //     0x72dee8: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x72deec: mov             x1, x0
    // 0x72def0: r0 = true
    //     0x72def0: add             x0, NULL, #0x20  ; true
    // 0x72def4: stur            x1, [fp, #-0x20]
    // 0x72def8: StoreField: r1->field_7 = r0
    //     0x72def8: stur            w0, [x1, #7]
    // 0x72defc: ldur            x2, [fp, #-0x10]
    // 0x72df00: StoreField: r1->field_b = r2
    //     0x72df00: stur            w2, [x1, #0xb]
    // 0x72df04: r2 = 24.000000
    //     0x72df04: add             x2, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x72df08: ldr             x2, [x2, #0xf28]
    // 0x72df0c: StoreField: r1->field_1f = r2
    //     0x72df0c: stur            w2, [x1, #0x1f]
    // 0x72df10: r2 = Instance_FontWeight
    //     0x72df10: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x72df14: ldr             x2, [x2, #0x1d0]
    // 0x72df18: StoreField: r1->field_23 = r2
    //     0x72df18: stur            w2, [x1, #0x23]
    // 0x72df1c: r2 = -0.500000
    //     0x72df1c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15dc0] -0.5
    //     0x72df20: ldr             x2, [x2, #0xdc0]
    // 0x72df24: StoreField: r1->field_2b = r2
    //     0x72df24: stur            w2, [x1, #0x2b]
    // 0x72df28: r0 = Text()
    //     0x72df28: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72df2c: mov             x1, x0
    // 0x72df30: r0 = "Selamün Aleyküm"
    //     0x72df30: add             x0, PP, #0x15, lsl #12  ; [pp+0x15dc8] "Selamün Aleyküm"
    //     0x72df34: ldr             x0, [x0, #0xdc8]
    // 0x72df38: stur            x1, [fp, #-0x10]
    // 0x72df3c: StoreField: r1->field_b = r0
    //     0x72df3c: stur            w0, [x1, #0xb]
    // 0x72df40: ldur            x0, [fp, #-0x20]
    // 0x72df44: StoreField: r1->field_13 = r0
    //     0x72df44: stur            w0, [x1, #0x13]
    // 0x72df48: r0 = AppBar()
    //     0x72df48: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x72df4c: stur            x0, [fp, #-0x20]
    // 0x72df50: r16 = 0.000000
    //     0x72df50: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x72df54: r30 = Instance_Color
    //     0x72df54: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x72df58: ldr             lr, [lr, #0x860]
    // 0x72df5c: stp             lr, x16, [SP, #8]
    // 0x72df60: r16 = false
    //     0x72df60: add             x16, NULL, #0x30  ; false
    // 0x72df64: str             x16, [SP]
    // 0x72df68: mov             x1, x0
    // 0x72df6c: ldur            x2, [fp, #-0x10]
    // 0x72df70: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x3, centerTitle, 0x4, elevation, 0x2, null]
    //     0x72df70: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e80] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x3, "centerTitle", 0x4, "elevation", 0x2, Null]
    //     0x72df74: ldr             x4, [x4, #0xe80]
    // 0x72df78: r0 = AppBar()
    //     0x72df78: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x72df7c: ldur            x0, [fp, #-8]
    // 0x72df80: LoadField: r1 = r0->field_f
    //     0x72df80: ldur            w1, [x0, #0xf]
    // 0x72df84: DecompressPointer r1
    //     0x72df84: add             x1, x1, HEAP, lsl #32
    // 0x72df88: LoadField: r2 = r1->field_1f
    //     0x72df88: ldur            w2, [x1, #0x1f]
    // 0x72df8c: DecompressPointer r2
    //     0x72df8c: add             x2, x2, HEAP, lsl #32
    // 0x72df90: r16 = Sentinel
    //     0x72df90: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x72df94: cmp             w2, w16
    // 0x72df98: b.eq            #0x72f1d8
    // 0x72df9c: stur            x2, [fp, #-0x10]
    // 0x72dfa0: r0 = SectionHeader()
    //     0x72dfa0: bl              #0x72f7b0  ; AllocateSectionHeaderStub -> SectionHeader (size=0x14)
    // 0x72dfa4: mov             x3, x0
    // 0x72dfa8: r0 = "Kutsal Yolculuk Vakti"
    //     0x72dfa8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15dd0] "Kutsal Yolculuk Vakti"
    //     0x72dfac: ldr             x0, [x0, #0xdd0]
    // 0x72dfb0: stur            x3, [fp, #-0x28]
    // 0x72dfb4: StoreField: r3->field_b = r0
    //     0x72dfb4: stur            w0, [x3, #0xb]
    // 0x72dfb8: r0 = Instance_Color
    //     0x72dfb8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72dfbc: ldr             x0, [x0, #0xb88]
    // 0x72dfc0: StoreField: r3->field_f = r0
    //     0x72dfc0: stur            w0, [x3, #0xf]
    // 0x72dfc4: r1 = <Widget>
    //     0x72dfc4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72dfc8: r2 = 20
    //     0x72dfc8: mov             x2, #0x14
    // 0x72dfcc: r0 = AllocateArray()
    //     0x72dfcc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72dfd0: mov             x2, x0
    // 0x72dfd4: ldur            x0, [fp, #-0x28]
    // 0x72dfd8: stur            x2, [fp, #-0x30]
    // 0x72dfdc: StoreField: r2->field_f = r0
    //     0x72dfdc: stur            w0, [x2, #0xf]
    // 0x72dfe0: r16 = Instance_SizedBox
    //     0x72dfe0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72dfe4: ldr             x16, [x16, #0x310]
    // 0x72dfe8: StoreField: r2->field_13 = r16
    //     0x72dfe8: stur            w16, [x2, #0x13]
    // 0x72dfec: ldur            x0, [fp, #-0x18]
    // 0x72dff0: LoadField: r1 = r0->field_f
    //     0x72dff0: ldur            w1, [x0, #0xf]
    // 0x72dff4: DecompressPointer r1
    //     0x72dff4: add             x1, x1, HEAP, lsl #32
    // 0x72dff8: r0 = daysLeftMekke()
    //     0x72dff8: bl              #0x72f6a4  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::daysLeftMekke
    // 0x72dffc: ldur            x2, [fp, #-0x18]
    // 0x72e000: stur            x0, [fp, #-0x38]
    // 0x72e004: LoadField: r1 = r2->field_f
    //     0x72e004: ldur            w1, [x2, #0xf]
    // 0x72e008: DecompressPointer r1
    //     0x72e008: add             x1, x1, HEAP, lsl #32
    // 0x72e00c: r0 = totalDaysMekke()
    //     0x72e00c: bl              #0x72f604  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::totalDaysMekke
    // 0x72e010: mov             x1, x0
    // 0x72e014: ldur            x0, [fp, #-8]
    // 0x72e018: stur            x1, [fp, #-0x40]
    // 0x72e01c: LoadField: r2 = r0->field_13
    //     0x72e01c: ldur            w2, [x0, #0x13]
    // 0x72e020: DecompressPointer r2
    //     0x72e020: add             x2, x2, HEAP, lsl #32
    // 0x72e024: stur            x2, [fp, #-0x28]
    // 0x72e028: r0 = ModernCountdownCard()
    //     0x72e028: bl              #0x72f5f8  ; AllocateModernCountdownCardStub -> ModernCountdownCard (size=0x24)
    // 0x72e02c: mov             x2, x0
    // 0x72e030: r0 = "Mekke"
    //     0x72e030: add             x0, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x72e034: ldr             x0, [x0, #0xdf0]
    // 0x72e038: stur            x2, [fp, #-0x48]
    // 0x72e03c: StoreField: r2->field_b = r0
    //     0x72e03c: stur            w0, [x2, #0xb]
    // 0x72e040: ldur            x0, [fp, #-0x38]
    // 0x72e044: StoreField: r2->field_f = r0
    //     0x72e044: stur            x0, [x2, #0xf]
    // 0x72e048: ldur            x0, [fp, #-0x40]
    // 0x72e04c: ArrayStore: r2[0] = r0  ; List_8
    //     0x72e04c: stur            x0, [x2, #0x17]
    // 0x72e050: ldur            x0, [fp, #-0x28]
    // 0x72e054: StoreField: r2->field_1f = r0
    //     0x72e054: stur            w0, [x2, #0x1f]
    // 0x72e058: r1 = <FlexParentData>
    //     0x72e058: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x72e05c: ldr             x1, [x1, #0x340]
    // 0x72e060: r0 = Expanded()
    //     0x72e060: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x72e064: mov             x2, x0
    // 0x72e068: r0 = 1
    //     0x72e068: mov             x0, #1
    // 0x72e06c: stur            x2, [fp, #-0x28]
    // 0x72e070: StoreField: r2->field_13 = r0
    //     0x72e070: stur            x0, [x2, #0x13]
    // 0x72e074: r3 = Instance_FlexFit
    //     0x72e074: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x72e078: ldr             x3, [x3, #0x348]
    // 0x72e07c: StoreField: r2->field_1b = r3
    //     0x72e07c: stur            w3, [x2, #0x1b]
    // 0x72e080: ldur            x1, [fp, #-0x48]
    // 0x72e084: StoreField: r2->field_b = r1
    //     0x72e084: stur            w1, [x2, #0xb]
    // 0x72e088: ldur            x4, [fp, #-0x18]
    // 0x72e08c: LoadField: r1 = r4->field_f
    //     0x72e08c: ldur            w1, [x4, #0xf]
    // 0x72e090: DecompressPointer r1
    //     0x72e090: add             x1, x1, HEAP, lsl #32
    // 0x72e094: r0 = daysLeftMedine()
    //     0x72e094: bl              #0x72f4ec  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::daysLeftMedine
    // 0x72e098: ldur            x2, [fp, #-0x18]
    // 0x72e09c: stur            x0, [fp, #-0x38]
    // 0x72e0a0: LoadField: r1 = r2->field_f
    //     0x72e0a0: ldur            w1, [x2, #0xf]
    // 0x72e0a4: DecompressPointer r1
    //     0x72e0a4: add             x1, x1, HEAP, lsl #32
    // 0x72e0a8: r0 = totalDaysMedine()
    //     0x72e0a8: bl              #0x72f2dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::totalDaysMedine
    // 0x72e0ac: stur            x0, [fp, #-0x40]
    // 0x72e0b0: r0 = ModernCountdownCard()
    //     0x72e0b0: bl              #0x72f5f8  ; AllocateModernCountdownCardStub -> ModernCountdownCard (size=0x24)
    // 0x72e0b4: mov             x2, x0
    // 0x72e0b8: r0 = "Medine"
    //     0x72e0b8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x72e0bc: ldr             x0, [x0, #0xe00]
    // 0x72e0c0: stur            x2, [fp, #-0x48]
    // 0x72e0c4: StoreField: r2->field_b = r0
    //     0x72e0c4: stur            w0, [x2, #0xb]
    // 0x72e0c8: ldur            x0, [fp, #-0x38]
    // 0x72e0cc: StoreField: r2->field_f = r0
    //     0x72e0cc: stur            x0, [x2, #0xf]
    // 0x72e0d0: ldur            x0, [fp, #-0x40]
    // 0x72e0d4: ArrayStore: r2[0] = r0  ; List_8
    //     0x72e0d4: stur            x0, [x2, #0x17]
    // 0x72e0d8: r0 = Instance_Color
    //     0x72e0d8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15dd8] Obj!Color@a23051
    //     0x72e0dc: ldr             x0, [x0, #0xdd8]
    // 0x72e0e0: StoreField: r2->field_1f = r0
    //     0x72e0e0: stur            w0, [x2, #0x1f]
    // 0x72e0e4: r1 = <FlexParentData>
    //     0x72e0e4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x72e0e8: ldr             x1, [x1, #0x340]
    // 0x72e0ec: r0 = Expanded()
    //     0x72e0ec: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x72e0f0: mov             x3, x0
    // 0x72e0f4: r0 = 1
    //     0x72e0f4: mov             x0, #1
    // 0x72e0f8: stur            x3, [fp, #-0x50]
    // 0x72e0fc: StoreField: r3->field_13 = r0
    //     0x72e0fc: stur            x0, [x3, #0x13]
    // 0x72e100: r0 = Instance_FlexFit
    //     0x72e100: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x72e104: ldr             x0, [x0, #0x348]
    // 0x72e108: StoreField: r3->field_1b = r0
    //     0x72e108: stur            w0, [x3, #0x1b]
    // 0x72e10c: ldur            x1, [fp, #-0x48]
    // 0x72e110: StoreField: r3->field_b = r1
    //     0x72e110: stur            w1, [x3, #0xb]
    // 0x72e114: r1 = Null
    //     0x72e114: mov             x1, NULL
    // 0x72e118: r2 = 6
    //     0x72e118: mov             x2, #6
    // 0x72e11c: r0 = AllocateArray()
    //     0x72e11c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72e120: mov             x2, x0
    // 0x72e124: ldur            x0, [fp, #-0x28]
    // 0x72e128: stur            x2, [fp, #-0x48]
    // 0x72e12c: StoreField: r2->field_f = r0
    //     0x72e12c: stur            w0, [x2, #0xf]
    // 0x72e130: r16 = Instance_SizedBox
    //     0x72e130: add             x16, PP, #0x12, lsl #12  ; [pp+0x12758] Obj!SizedBox@a1fb91
    //     0x72e134: ldr             x16, [x16, #0x758]
    // 0x72e138: StoreField: r2->field_13 = r16
    //     0x72e138: stur            w16, [x2, #0x13]
    // 0x72e13c: ldur            x0, [fp, #-0x50]
    // 0x72e140: ArrayStore: r2[0] = r0  ; List_4
    //     0x72e140: stur            w0, [x2, #0x17]
    // 0x72e144: r1 = <Widget>
    //     0x72e144: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72e148: r0 = AllocateGrowableArray()
    //     0x72e148: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72e14c: mov             x1, x0
    // 0x72e150: ldur            x0, [fp, #-0x48]
    // 0x72e154: stur            x1, [fp, #-0x28]
    // 0x72e158: StoreField: r1->field_f = r0
    //     0x72e158: stur            w0, [x1, #0xf]
    // 0x72e15c: r2 = 6
    //     0x72e15c: mov             x2, #6
    // 0x72e160: StoreField: r1->field_b = r2
    //     0x72e160: stur            w2, [x1, #0xb]
    // 0x72e164: r0 = Row()
    //     0x72e164: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72e168: r2 = Instance_Axis
    //     0x72e168: ldr             x2, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x72e16c: StoreField: r0->field_f = r2
    //     0x72e16c: stur            w2, [x0, #0xf]
    // 0x72e170: r3 = Instance_MainAxisAlignment
    //     0x72e170: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72e174: ldr             x3, [x3, #0x230]
    // 0x72e178: StoreField: r0->field_13 = r3
    //     0x72e178: stur            w3, [x0, #0x13]
    // 0x72e17c: r4 = Instance_MainAxisSize
    //     0x72e17c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72e180: ldr             x4, [x4, #0x330]
    // 0x72e184: ArrayStore: r0[0] = r4  ; List_4
    //     0x72e184: stur            w4, [x0, #0x17]
    // 0x72e188: r5 = Instance_CrossAxisAlignment
    //     0x72e188: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72e18c: ldr             x5, [x5, #0x338]
    // 0x72e190: StoreField: r0->field_1b = r5
    //     0x72e190: stur            w5, [x0, #0x1b]
    // 0x72e194: r6 = Instance_VerticalDirection
    //     0x72e194: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72e198: ldr             x6, [x6, #0x340]
    // 0x72e19c: StoreField: r0->field_23 = r6
    //     0x72e19c: stur            w6, [x0, #0x23]
    // 0x72e1a0: r7 = Instance_Clip
    //     0x72e1a0: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72e1a4: ldr             x7, [x7, #0x348]
    // 0x72e1a8: StoreField: r0->field_2b = r7
    //     0x72e1a8: stur            w7, [x0, #0x2b]
    // 0x72e1ac: StoreField: r0->field_2f = rZR
    //     0x72e1ac: stur            xzr, [x0, #0x2f]
    // 0x72e1b0: ldur            x1, [fp, #-0x28]
    // 0x72e1b4: StoreField: r0->field_b = r1
    //     0x72e1b4: stur            w1, [x0, #0xb]
    // 0x72e1b8: ldur            x1, [fp, #-0x30]
    // 0x72e1bc: ArrayStore: r1[2] = r0  ; List_4
    //     0x72e1bc: add             x25, x1, #0x17
    //     0x72e1c0: str             w0, [x25]
    //     0x72e1c4: tbz             w0, #0, #0x72e1e0
    //     0x72e1c8: ldurb           w16, [x1, #-1]
    //     0x72e1cc: ldurb           w17, [x0, #-1]
    //     0x72e1d0: and             x16, x17, x16, lsr #2
    //     0x72e1d4: tst             x16, HEAP, lsr #32
    //     0x72e1d8: b.eq            #0x72e1e0
    //     0x72e1dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72e1e0: ldur            x1, [fp, #-0x30]
    // 0x72e1e4: r16 = Instance_SizedBox
    //     0x72e1e4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x72e1e8: ldr             x16, [x16, #0x248]
    // 0x72e1ec: StoreField: r1->field_1b = r16
    //     0x72e1ec: stur            w16, [x1, #0x1b]
    // 0x72e1f0: r0 = SectionHeader()
    //     0x72e1f0: bl              #0x72f7b0  ; AllocateSectionHeaderStub -> SectionHeader (size=0x14)
    // 0x72e1f4: mov             x1, x0
    // 0x72e1f8: r0 = "Ezan Vakitleri"
    //     0x72e1f8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15de0] "Ezan Vakitleri"
    //     0x72e1fc: ldr             x0, [x0, #0xde0]
    // 0x72e200: StoreField: r1->field_b = r0
    //     0x72e200: stur            w0, [x1, #0xb]
    // 0x72e204: r2 = Instance_Color
    //     0x72e204: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72e208: ldr             x2, [x2, #0xb88]
    // 0x72e20c: StoreField: r1->field_f = r2
    //     0x72e20c: stur            w2, [x1, #0xf]
    // 0x72e210: mov             x0, x1
    // 0x72e214: ldur            x1, [fp, #-0x30]
    // 0x72e218: ArrayStore: r1[4] = r0  ; List_4
    //     0x72e218: add             x25, x1, #0x1f
    //     0x72e21c: str             w0, [x25]
    //     0x72e220: tbz             w0, #0, #0x72e23c
    //     0x72e224: ldurb           w16, [x1, #-1]
    //     0x72e228: ldurb           w17, [x0, #-1]
    //     0x72e22c: and             x16, x17, x16, lsr #2
    //     0x72e230: tst             x16, HEAP, lsr #32
    //     0x72e234: b.eq            #0x72e23c
    //     0x72e238: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72e23c: ldur            x1, [fp, #-0x30]
    // 0x72e240: r16 = Instance_SizedBox
    //     0x72e240: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72e244: ldr             x16, [x16, #0x310]
    // 0x72e248: StoreField: r1->field_23 = r16
    //     0x72e248: stur            w16, [x1, #0x23]
    // 0x72e24c: r0 = Radius()
    //     0x72e24c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72e250: d0 = 24.000000
    //     0x72e250: fmov            d0, #24.00000000
    // 0x72e254: stur            x0, [fp, #-0x28]
    // 0x72e258: StoreField: r0->field_7 = d0
    //     0x72e258: stur            d0, [x0, #7]
    // 0x72e25c: StoreField: r0->field_f = d0
    //     0x72e25c: stur            d0, [x0, #0xf]
    // 0x72e260: r0 = BorderRadius()
    //     0x72e260: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x72e264: mov             x3, x0
    // 0x72e268: ldur            x0, [fp, #-0x28]
    // 0x72e26c: stur            x3, [fp, #-0x48]
    // 0x72e270: StoreField: r3->field_7 = r0
    //     0x72e270: stur            w0, [x3, #7]
    // 0x72e274: StoreField: r3->field_b = r0
    //     0x72e274: stur            w0, [x3, #0xb]
    // 0x72e278: StoreField: r3->field_f = r0
    //     0x72e278: stur            w0, [x3, #0xf]
    // 0x72e27c: StoreField: r3->field_13 = r0
    //     0x72e27c: stur            w0, [x3, #0x13]
    // 0x72e280: r1 = Function '<anonymous closure>':.
    //     0x72e280: add             x1, PP, #0x15, lsl #12  ; [pp+0x15de8] AnonymousClosure: (0x72f874), in [package:umrem_demo/features/home/screens/home_screen.dart] _HomeScreenState::build (0x72de1c)
    //     0x72e284: ldr             x1, [x1, #0xde8]
    // 0x72e288: r2 = Null
    //     0x72e288: mov             x2, NULL
    // 0x72e28c: r0 = AllocateClosure()
    //     0x72e28c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72e290: stur            x0, [fp, #-0x28]
    // 0x72e294: r0 = Swiper()
    //     0x72e294: bl              #0x72f2d0  ; AllocateSwiperStub -> Swiper (size=0x8c)
    // 0x72e298: mov             x3, x0
    // 0x72e29c: ldur            x0, [fp, #-0x28]
    // 0x72e2a0: stur            x3, [fp, #-0x50]
    // 0x72e2a4: StoreField: r3->field_13 = r0
    //     0x72e2a4: stur            w0, [x3, #0x13]
    // 0x72e2a8: r0 = 2
    //     0x72e2a8: mov             x0, #2
    // 0x72e2ac: StoreField: r3->field_1b = r0
    //     0x72e2ac: stur            x0, [x3, #0x1b]
    // 0x72e2b0: r4 = true
    //     0x72e2b0: add             x4, NULL, #0x20  ; true
    // 0x72e2b4: StoreField: r3->field_27 = r4
    //     0x72e2b4: stur            w4, [x3, #0x27]
    // 0x72e2b8: r1 = Instance_SwiperLayout
    //     0x72e2b8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15df0] Obj!SwiperLayout@a2cbb1
    //     0x72e2bc: ldr             x1, [x1, #0xdf0]
    // 0x72e2c0: StoreField: r3->field_73 = r1
    //     0x72e2c0: stur            w1, [x3, #0x73]
    // 0x72e2c4: r1 = 4000
    //     0x72e2c4: mov             x1, #0xfa0
    // 0x72e2c8: StoreField: r3->field_2b = r1
    //     0x72e2c8: stur            x1, [x3, #0x2b]
    // 0x72e2cc: StoreField: r3->field_33 = r4
    //     0x72e2cc: stur            w4, [x3, #0x33]
    // 0x72e2d0: r1 = 600
    //     0x72e2d0: mov             x1, #0x258
    // 0x72e2d4: StoreField: r3->field_37 = r1
    //     0x72e2d4: stur            x1, [x3, #0x37]
    // 0x72e2d8: ldur            x2, [fp, #-0x18]
    // 0x72e2dc: r1 = Function '<anonymous closure>':.
    //     0x72e2dc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15df8] AnonymousClosure: (0x72f7e8), in [package:umrem_demo/features/home/screens/home_screen.dart] _HomeScreenState::build (0x72de1c)
    //     0x72e2e0: ldr             x1, [x1, #0xdf8]
    // 0x72e2e4: r0 = AllocateClosure()
    //     0x72e2e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72e2e8: mov             x1, x0
    // 0x72e2ec: ldur            x0, [fp, #-0x50]
    // 0x72e2f0: StoreField: r0->field_23 = r1
    //     0x72e2f0: stur            w1, [x0, #0x23]
    // 0x72e2f4: r1 = true
    //     0x72e2f4: add             x1, NULL, #0x20  ; true
    // 0x72e2f8: StoreField: r0->field_4b = r1
    //     0x72e2f8: stur            w1, [x0, #0x4b]
    // 0x72e2fc: r2 = Instance_Cubic
    //     0x72e2fc: ldr             x2, [PP, #0x51c8]  ; [pp+0x51c8] Obj!Cubic@a0f781
    // 0x72e300: StoreField: r0->field_47 = r2
    //     0x72e300: stur            w2, [x0, #0x47]
    // 0x72e304: r2 = Instance_Axis
    //     0x72e304: ldr             x2, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x72e308: StoreField: r0->field_3f = r2
    //     0x72e308: stur            w2, [x0, #0x3f]
    // 0x72e30c: r3 = Instance_AxisDirection
    //     0x72e30c: ldr             x3, [PP, #0x76f8]  ; [pp+0x76f8] Obj!AxisDirection@a2aa51
    // 0x72e310: StoreField: r0->field_43 = r3
    //     0x72e310: stur            w3, [x0, #0x43]
    // 0x72e314: d0 = 1.000000
    //     0x72e314: fmov            d0, #1.00000000
    // 0x72e318: StoreField: r0->field_6b = d0
    //     0x72e318: stur            d0, [x0, #0x6b]
    // 0x72e31c: StoreField: r0->field_7b = d0
    //     0x72e31c: stur            d0, [x0, #0x7b]
    // 0x72e320: r3 = false
    //     0x72e320: add             x3, NULL, #0x30  ; false
    // 0x72e324: StoreField: r0->field_87 = r3
    //     0x72e324: stur            w3, [x0, #0x87]
    // 0x72e328: r0 = SizedBox()
    //     0x72e328: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x72e32c: mov             x1, x0
    // 0x72e330: r0 = 160.000000
    //     0x72e330: add             x0, PP, #0x14, lsl #12  ; [pp+0x149d0] 160
    //     0x72e334: ldr             x0, [x0, #0x9d0]
    // 0x72e338: stur            x1, [fp, #-0x28]
    // 0x72e33c: StoreField: r1->field_13 = r0
    //     0x72e33c: stur            w0, [x1, #0x13]
    // 0x72e340: ldur            x0, [fp, #-0x50]
    // 0x72e344: StoreField: r1->field_b = r0
    //     0x72e344: stur            w0, [x1, #0xb]
    // 0x72e348: r0 = ClipRRect()
    //     0x72e348: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x72e34c: mov             x3, x0
    // 0x72e350: ldur            x0, [fp, #-0x48]
    // 0x72e354: stur            x3, [fp, #-0x50]
    // 0x72e358: StoreField: r3->field_f = r0
    //     0x72e358: stur            w0, [x3, #0xf]
    // 0x72e35c: r0 = Instance_Clip
    //     0x72e35c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x72e360: ldr             x0, [x0, #0xd38]
    // 0x72e364: ArrayStore: r3[0] = r0  ; List_4
    //     0x72e364: stur            w0, [x3, #0x17]
    // 0x72e368: ldur            x0, [fp, #-0x28]
    // 0x72e36c: StoreField: r3->field_b = r0
    //     0x72e36c: stur            w0, [x3, #0xb]
    // 0x72e370: r1 = <Widget>
    //     0x72e370: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72e374: r2 = 2
    //     0x72e374: mov             x2, #2
    // 0x72e378: r0 = _GrowableList()
    //     0x72e378: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x72e37c: stur            x0, [fp, #-0x28]
    // 0x72e380: r4 = 0
    //     0x72e380: mov             x4, #0
    // 0x72e384: ldur            x3, [fp, #-0x18]
    // 0x72e388: stur            x4, [fp, #-0x38]
    // 0x72e38c: CheckStackOverflow
    //     0x72e38c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72e390: cmp             SP, x16
    //     0x72e394: b.ls            #0x72f1e4
    // 0x72e398: LoadField: r1 = r0->field_b
    //     0x72e398: ldur            w1, [x0, #0xb]
    // 0x72e39c: r2 = LoadInt32Instr(r1)
    //     0x72e39c: sbfx            x2, x1, #1, #0x1f
    // 0x72e3a0: cmp             x4, x2
    // 0x72e3a4: b.ge            #0x72e4ac
    // 0x72e3a8: LoadField: r1 = r3->field_f
    //     0x72e3a8: ldur            w1, [x3, #0xf]
    // 0x72e3ac: DecompressPointer r1
    //     0x72e3ac: add             x1, x1, HEAP, lsl #32
    // 0x72e3b0: LoadField: r2 = r1->field_23
    //     0x72e3b0: ldur            x2, [x1, #0x23]
    // 0x72e3b4: cmp             x2, x4
    // 0x72e3b8: b.ne            #0x72e3cc
    // 0x72e3bc: mov             x1, x4
    // 0x72e3c0: r2 = Instance_Color
    //     0x72e3c0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11be0] Obj!Color@a255d1
    //     0x72e3c4: ldr             x2, [x2, #0xbe0]
    // 0x72e3c8: b               #0x72e3ec
    // 0x72e3cc: r1 = _ConstMap len:12
    //     0x72e3cc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72e3d0: r2 = 600
    //     0x72e3d0: mov             x2, #0x258
    // 0x72e3d4: r0 = []()
    //     0x72e3d4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72e3d8: cmp             w0, NULL
    // 0x72e3dc: b.eq            #0x72f1ec
    // 0x72e3e0: mov             x2, x0
    // 0x72e3e4: ldur            x0, [fp, #-0x28]
    // 0x72e3e8: ldur            x1, [fp, #-0x38]
    // 0x72e3ec: stur            x2, [fp, #-0x48]
    // 0x72e3f0: r0 = BoxDecoration()
    //     0x72e3f0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x72e3f4: mov             x1, x0
    // 0x72e3f8: ldur            x0, [fp, #-0x48]
    // 0x72e3fc: stur            x1, [fp, #-0x58]
    // 0x72e400: StoreField: r1->field_7 = r0
    //     0x72e400: stur            w0, [x1, #7]
    // 0x72e404: r0 = Instance_BoxShape
    //     0x72e404: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x72e408: ldr             x0, [x0, #0x1a0]
    // 0x72e40c: StoreField: r1->field_23 = r0
    //     0x72e40c: stur            w0, [x1, #0x23]
    // 0x72e410: r0 = Container()
    //     0x72e410: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x72e414: stur            x0, [fp, #-0x48]
    // 0x72e418: r16 = 8.000000
    //     0x72e418: add             x16, PP, #0x15, lsl #12  ; [pp+0x15540] 8
    //     0x72e41c: ldr             x16, [x16, #0x540]
    // 0x72e420: r30 = 8.000000
    //     0x72e420: add             lr, PP, #0x15, lsl #12  ; [pp+0x15540] 8
    //     0x72e424: ldr             lr, [lr, #0x540]
    // 0x72e428: stp             lr, x16, [SP, #0x10]
    // 0x72e42c: r16 = Instance_EdgeInsets
    //     0x72e42c: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde0] Obj!EdgeInsets@a0bf01
    //     0x72e430: ldr             x16, [x16, #0xde0]
    // 0x72e434: ldur            lr, [fp, #-0x58]
    // 0x72e438: stp             lr, x16, [SP]
    // 0x72e43c: mov             x1, x0
    // 0x72e440: r4 = const [0, 0x5, 0x4, 0x1, decoration, 0x4, height, 0x2, margin, 0x3, width, 0x1, null]
    //     0x72e440: add             x4, PP, #0x15, lsl #12  ; [pp+0x15e00] List(13) [0, 0x5, 0x4, 0x1, "decoration", 0x4, "height", 0x2, "margin", 0x3, "width", 0x1, Null]
    //     0x72e444: ldr             x4, [x4, #0xe00]
    // 0x72e448: r0 = Container()
    //     0x72e448: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72e44c: ldur            x2, [fp, #-0x28]
    // 0x72e450: LoadField: r0 = r2->field_b
    //     0x72e450: ldur            w0, [x2, #0xb]
    // 0x72e454: r1 = LoadInt32Instr(r0)
    //     0x72e454: sbfx            x1, x0, #1, #0x1f
    // 0x72e458: mov             x0, x1
    // 0x72e45c: ldur            x1, [fp, #-0x38]
    // 0x72e460: cmp             x1, x0
    // 0x72e464: b.hs            #0x72f1f0
    // 0x72e468: LoadField: r1 = r2->field_f
    //     0x72e468: ldur            w1, [x2, #0xf]
    // 0x72e46c: DecompressPointer r1
    //     0x72e46c: add             x1, x1, HEAP, lsl #32
    // 0x72e470: ldur            x0, [fp, #-0x48]
    // 0x72e474: ldur            x3, [fp, #-0x38]
    // 0x72e478: ArrayStore: r1[r3] = r0  ; List_4
    //     0x72e478: add             x25, x1, x3, lsl #2
    //     0x72e47c: add             x25, x25, #0xf
    //     0x72e480: str             w0, [x25]
    //     0x72e484: tbz             w0, #0, #0x72e4a0
    //     0x72e488: ldurb           w16, [x1, #-1]
    //     0x72e48c: ldurb           w17, [x0, #-1]
    //     0x72e490: and             x16, x17, x16, lsr #2
    //     0x72e494: tst             x16, HEAP, lsr #32
    //     0x72e498: b.eq            #0x72e4a0
    //     0x72e49c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72e4a0: add             x4, x3, #1
    // 0x72e4a4: mov             x0, x2
    // 0x72e4a8: b               #0x72e384
    // 0x72e4ac: ldur            x1, [fp, #-0x30]
    // 0x72e4b0: mov             x2, x0
    // 0x72e4b4: ldur            x0, [fp, #-0x50]
    // 0x72e4b8: r0 = Row()
    //     0x72e4b8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72e4bc: mov             x3, x0
    // 0x72e4c0: r0 = Instance_Axis
    //     0x72e4c0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x72e4c4: stur            x3, [fp, #-0x18]
    // 0x72e4c8: StoreField: r3->field_f = r0
    //     0x72e4c8: stur            w0, [x3, #0xf]
    // 0x72e4cc: r1 = Instance_MainAxisAlignment
    //     0x72e4cc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x72e4d0: ldr             x1, [x1, #0x328]
    // 0x72e4d4: StoreField: r3->field_13 = r1
    //     0x72e4d4: stur            w1, [x3, #0x13]
    // 0x72e4d8: r4 = Instance_MainAxisSize
    //     0x72e4d8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72e4dc: ldr             x4, [x4, #0x330]
    // 0x72e4e0: ArrayStore: r3[0] = r4  ; List_4
    //     0x72e4e0: stur            w4, [x3, #0x17]
    // 0x72e4e4: r5 = Instance_CrossAxisAlignment
    //     0x72e4e4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72e4e8: ldr             x5, [x5, #0x338]
    // 0x72e4ec: StoreField: r3->field_1b = r5
    //     0x72e4ec: stur            w5, [x3, #0x1b]
    // 0x72e4f0: r6 = Instance_VerticalDirection
    //     0x72e4f0: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72e4f4: ldr             x6, [x6, #0x340]
    // 0x72e4f8: StoreField: r3->field_23 = r6
    //     0x72e4f8: stur            w6, [x3, #0x23]
    // 0x72e4fc: r7 = Instance_Clip
    //     0x72e4fc: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72e500: ldr             x7, [x7, #0x348]
    // 0x72e504: StoreField: r3->field_2b = r7
    //     0x72e504: stur            w7, [x3, #0x2b]
    // 0x72e508: StoreField: r3->field_2f = rZR
    //     0x72e508: stur            xzr, [x3, #0x2f]
    // 0x72e50c: ldur            x1, [fp, #-0x28]
    // 0x72e510: StoreField: r3->field_b = r1
    //     0x72e510: stur            w1, [x3, #0xb]
    // 0x72e514: r1 = Null
    //     0x72e514: mov             x1, NULL
    // 0x72e518: r2 = 6
    //     0x72e518: mov             x2, #6
    // 0x72e51c: r0 = AllocateArray()
    //     0x72e51c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72e520: mov             x2, x0
    // 0x72e524: ldur            x0, [fp, #-0x50]
    // 0x72e528: stur            x2, [fp, #-0x28]
    // 0x72e52c: StoreField: r2->field_f = r0
    //     0x72e52c: stur            w0, [x2, #0xf]
    // 0x72e530: r16 = Instance_SizedBox
    //     0x72e530: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x72e534: ldr             x16, [x16, #0x220]
    // 0x72e538: StoreField: r2->field_13 = r16
    //     0x72e538: stur            w16, [x2, #0x13]
    // 0x72e53c: ldur            x0, [fp, #-0x18]
    // 0x72e540: ArrayStore: r2[0] = r0  ; List_4
    //     0x72e540: stur            w0, [x2, #0x17]
    // 0x72e544: r1 = <Widget>
    //     0x72e544: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72e548: r0 = AllocateGrowableArray()
    //     0x72e548: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72e54c: mov             x1, x0
    // 0x72e550: ldur            x0, [fp, #-0x28]
    // 0x72e554: stur            x1, [fp, #-0x18]
    // 0x72e558: StoreField: r1->field_f = r0
    //     0x72e558: stur            w0, [x1, #0xf]
    // 0x72e55c: r2 = 6
    //     0x72e55c: mov             x2, #6
    // 0x72e560: StoreField: r1->field_b = r2
    //     0x72e560: stur            w2, [x1, #0xb]
    // 0x72e564: r0 = Column()
    //     0x72e564: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72e568: r2 = Instance_Axis
    //     0x72e568: ldr             x2, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72e56c: StoreField: r0->field_f = r2
    //     0x72e56c: stur            w2, [x0, #0xf]
    // 0x72e570: r3 = Instance_MainAxisAlignment
    //     0x72e570: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72e574: ldr             x3, [x3, #0x230]
    // 0x72e578: StoreField: r0->field_13 = r3
    //     0x72e578: stur            w3, [x0, #0x13]
    // 0x72e57c: r4 = Instance_MainAxisSize
    //     0x72e57c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72e580: ldr             x4, [x4, #0x330]
    // 0x72e584: ArrayStore: r0[0] = r4  ; List_4
    //     0x72e584: stur            w4, [x0, #0x17]
    // 0x72e588: r5 = Instance_CrossAxisAlignment
    //     0x72e588: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72e58c: ldr             x5, [x5, #0x338]
    // 0x72e590: StoreField: r0->field_1b = r5
    //     0x72e590: stur            w5, [x0, #0x1b]
    // 0x72e594: r6 = Instance_VerticalDirection
    //     0x72e594: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72e598: ldr             x6, [x6, #0x340]
    // 0x72e59c: StoreField: r0->field_23 = r6
    //     0x72e59c: stur            w6, [x0, #0x23]
    // 0x72e5a0: r7 = Instance_Clip
    //     0x72e5a0: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72e5a4: ldr             x7, [x7, #0x348]
    // 0x72e5a8: StoreField: r0->field_2b = r7
    //     0x72e5a8: stur            w7, [x0, #0x2b]
    // 0x72e5ac: StoreField: r0->field_2f = rZR
    //     0x72e5ac: stur            xzr, [x0, #0x2f]
    // 0x72e5b0: ldur            x1, [fp, #-0x18]
    // 0x72e5b4: StoreField: r0->field_b = r1
    //     0x72e5b4: stur            w1, [x0, #0xb]
    // 0x72e5b8: ldur            x1, [fp, #-0x30]
    // 0x72e5bc: ArrayStore: r1[6] = r0  ; List_4
    //     0x72e5bc: add             x25, x1, #0x27
    //     0x72e5c0: str             w0, [x25]
    //     0x72e5c4: tbz             w0, #0, #0x72e5e0
    //     0x72e5c8: ldurb           w16, [x1, #-1]
    //     0x72e5cc: ldurb           w17, [x0, #-1]
    //     0x72e5d0: and             x16, x17, x16, lsr #2
    //     0x72e5d4: tst             x16, HEAP, lsr #32
    //     0x72e5d8: b.eq            #0x72e5e0
    //     0x72e5dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72e5e0: ldur            x1, [fp, #-0x30]
    // 0x72e5e4: r16 = Instance_SizedBox
    //     0x72e5e4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x72e5e8: ldr             x16, [x16, #0x248]
    // 0x72e5ec: StoreField: r1->field_2b = r16
    //     0x72e5ec: stur            w16, [x1, #0x2b]
    // 0x72e5f0: r0 = SectionHeader()
    //     0x72e5f0: bl              #0x72f7b0  ; AllocateSectionHeaderStub -> SectionHeader (size=0x14)
    // 0x72e5f4: mov             x1, x0
    // 0x72e5f8: r0 = "Döviz"
    //     0x72e5f8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15e08] "Döviz"
    //     0x72e5fc: ldr             x0, [x0, #0xe08]
    // 0x72e600: stur            x1, [fp, #-0x18]
    // 0x72e604: StoreField: r1->field_b = r0
    //     0x72e604: stur            w0, [x1, #0xb]
    // 0x72e608: r0 = Instance_Color
    //     0x72e608: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72e60c: ldr             x0, [x0, #0xb88]
    // 0x72e610: StoreField: r1->field_f = r0
    //     0x72e610: stur            w0, [x1, #0xf]
    // 0x72e614: r0 = Radius()
    //     0x72e614: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72e618: d0 = 16.000000
    //     0x72e618: fmov            d0, #16.00000000
    // 0x72e61c: stur            x0, [fp, #-0x28]
    // 0x72e620: StoreField: r0->field_7 = d0
    //     0x72e620: stur            d0, [x0, #7]
    // 0x72e624: StoreField: r0->field_f = d0
    //     0x72e624: stur            d0, [x0, #0xf]
    // 0x72e628: r0 = BorderRadius()
    //     0x72e628: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x72e62c: mov             x3, x0
    // 0x72e630: ldur            x0, [fp, #-0x28]
    // 0x72e634: stur            x3, [fp, #-0x48]
    // 0x72e638: StoreField: r3->field_7 = r0
    //     0x72e638: stur            w0, [x3, #7]
    // 0x72e63c: StoreField: r3->field_b = r0
    //     0x72e63c: stur            w0, [x3, #0xb]
    // 0x72e640: StoreField: r3->field_f = r0
    //     0x72e640: stur            w0, [x3, #0xf]
    // 0x72e644: StoreField: r3->field_13 = r0
    //     0x72e644: stur            w0, [x3, #0x13]
    // 0x72e648: r1 = _ConstMap len:12
    //     0x72e648: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72e64c: r2 = 400
    //     0x72e64c: mov             x2, #0x190
    // 0x72e650: r0 = []()
    //     0x72e650: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72e654: cmp             w0, NULL
    // 0x72e658: b.eq            #0x72f1f4
    // 0x72e65c: r16 = 1.000000
    //     0x72e65c: ldr             x16, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x72e660: stp             x16, x0, [SP]
    // 0x72e664: r1 = Null
    //     0x72e664: mov             x1, NULL
    // 0x72e668: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x72e668: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x72e66c: ldr             x4, [x4, #0x208]
    // 0x72e670: r0 = Border.all()
    //     0x72e670: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x72e674: stur            x0, [fp, #-0x28]
    // 0x72e678: r16 = 0.080000
    //     0x72e678: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x72e67c: ldr             x16, [x16, #0xe30]
    // 0x72e680: str             x16, [SP]
    // 0x72e684: r1 = Instance_Color
    //     0x72e684: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x72e688: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72e688: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72e68c: ldr             x4, [x4, #0x198]
    // 0x72e690: r0 = withValues()
    //     0x72e690: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72e694: stur            x0, [fp, #-0x50]
    // 0x72e698: r0 = BoxShadow()
    //     0x72e698: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x72e69c: d0 = 2.000000
    //     0x72e69c: fmov            d0, #2.00000000
    // 0x72e6a0: stur            x0, [fp, #-0x58]
    // 0x72e6a4: ArrayStore: r0[0] = d0  ; List_8
    //     0x72e6a4: stur            d0, [x0, #0x17]
    // 0x72e6a8: r2 = Instance_BlurStyle
    //     0x72e6a8: add             x2, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x72e6ac: ldr             x2, [x2, #0x9b0]
    // 0x72e6b0: StoreField: r0->field_1f = r2
    //     0x72e6b0: stur            w2, [x0, #0x1f]
    // 0x72e6b4: ldur            x1, [fp, #-0x50]
    // 0x72e6b8: StoreField: r0->field_7 = r1
    //     0x72e6b8: stur            w1, [x0, #7]
    // 0x72e6bc: r1 = Instance_Offset
    //     0x72e6bc: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b8] Obj!Offset@a26af1
    //     0x72e6c0: ldr             x1, [x1, #0x9b8]
    // 0x72e6c4: StoreField: r0->field_b = r1
    //     0x72e6c4: stur            w1, [x0, #0xb]
    // 0x72e6c8: d0 = 16.000000
    //     0x72e6c8: fmov            d0, #16.00000000
    // 0x72e6cc: StoreField: r0->field_f = d0
    //     0x72e6cc: stur            d0, [x0, #0xf]
    // 0x72e6d0: r16 = 0.150000
    //     0x72e6d0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x72e6d4: ldr             x16, [x16, #0xe38]
    // 0x72e6d8: str             x16, [SP]
    // 0x72e6dc: r1 = Instance_Color
    //     0x72e6dc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x72e6e0: ldr             x1, [x1, #0xb78]
    // 0x72e6e4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x72e6e4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x72e6e8: ldr             x4, [x4, #0x198]
    // 0x72e6ec: r0 = withValues()
    //     0x72e6ec: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x72e6f0: stur            x0, [fp, #-0x50]
    // 0x72e6f4: r0 = BoxShadow()
    //     0x72e6f4: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x72e6f8: stur            x0, [fp, #-0x60]
    // 0x72e6fc: ArrayStore: r0[0] = rZR  ; List_8
    //     0x72e6fc: stur            xzr, [x0, #0x17]
    // 0x72e700: r1 = Instance_BlurStyle
    //     0x72e700: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x72e704: ldr             x1, [x1, #0x9b0]
    // 0x72e708: StoreField: r0->field_1f = r1
    //     0x72e708: stur            w1, [x0, #0x1f]
    // 0x72e70c: ldur            x1, [fp, #-0x50]
    // 0x72e710: StoreField: r0->field_7 = r1
    //     0x72e710: stur            w1, [x0, #7]
    // 0x72e714: r1 = Instance_Offset
    //     0x72e714: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x72e718: ldr             x1, [x1, #0xe40]
    // 0x72e71c: StoreField: r0->field_b = r1
    //     0x72e71c: stur            w1, [x0, #0xb]
    // 0x72e720: d0 = 24.000000
    //     0x72e720: fmov            d0, #24.00000000
    // 0x72e724: StoreField: r0->field_f = d0
    //     0x72e724: stur            d0, [x0, #0xf]
    // 0x72e728: r1 = Null
    //     0x72e728: mov             x1, NULL
    // 0x72e72c: r2 = 4
    //     0x72e72c: mov             x2, #4
    // 0x72e730: r0 = AllocateArray()
    //     0x72e730: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72e734: mov             x2, x0
    // 0x72e738: ldur            x0, [fp, #-0x58]
    // 0x72e73c: stur            x2, [fp, #-0x50]
    // 0x72e740: StoreField: r2->field_f = r0
    //     0x72e740: stur            w0, [x2, #0xf]
    // 0x72e744: ldur            x0, [fp, #-0x60]
    // 0x72e748: StoreField: r2->field_13 = r0
    //     0x72e748: stur            w0, [x2, #0x13]
    // 0x72e74c: r1 = <BoxShadow>
    //     0x72e74c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x72e750: ldr             x1, [x1, #0x9c0]
    // 0x72e754: r0 = AllocateGrowableArray()
    //     0x72e754: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72e758: mov             x1, x0
    // 0x72e75c: ldur            x0, [fp, #-0x50]
    // 0x72e760: stur            x1, [fp, #-0x58]
    // 0x72e764: StoreField: r1->field_f = r0
    //     0x72e764: stur            w0, [x1, #0xf]
    // 0x72e768: r2 = 4
    //     0x72e768: mov             x2, #4
    // 0x72e76c: StoreField: r1->field_b = r2
    //     0x72e76c: stur            w2, [x1, #0xb]
    // 0x72e770: r0 = BoxDecoration()
    //     0x72e770: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x72e774: mov             x3, x0
    // 0x72e778: r0 = Instance_Color
    //     0x72e778: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x72e77c: stur            x3, [fp, #-0x50]
    // 0x72e780: StoreField: r3->field_7 = r0
    //     0x72e780: stur            w0, [x3, #7]
    // 0x72e784: ldur            x0, [fp, #-0x28]
    // 0x72e788: StoreField: r3->field_f = r0
    //     0x72e788: stur            w0, [x3, #0xf]
    // 0x72e78c: ldur            x0, [fp, #-0x48]
    // 0x72e790: StoreField: r3->field_13 = r0
    //     0x72e790: stur            w0, [x3, #0x13]
    // 0x72e794: ldur            x0, [fp, #-0x58]
    // 0x72e798: ArrayStore: r3[0] = r0  ; List_4
    //     0x72e798: stur            w0, [x3, #0x17]
    // 0x72e79c: r0 = Instance_BoxShape
    //     0x72e79c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x72e7a0: ldr             x0, [x0, #0x1c8]
    // 0x72e7a4: StoreField: r3->field_23 = r0
    //     0x72e7a4: stur            w0, [x3, #0x23]
    // 0x72e7a8: r1 = <Widget>
    //     0x72e7a8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72e7ac: r2 = 0
    //     0x72e7ac: mov             x2, #0
    // 0x72e7b0: r0 = _GrowableList()
    //     0x72e7b0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x72e7b4: stur            x0, [fp, #-0x28]
    // 0x72e7b8: r1 = 0
    //     0x72e7b8: mov             x1, #0
    // 0x72e7bc: stur            x1, [fp, #-0x38]
    // 0x72e7c0: CheckStackOverflow
    //     0x72e7c0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72e7c4: cmp             SP, x16
    //     0x72e7c8: b.ls            #0x72f1f8
    // 0x72e7cc: r0 = InitLateStaticField(0x1004) // [package:umrem_demo/main.dart] MyApp::currencies
    //     0x72e7cc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72e7d0: ldr             x0, [x0, #0x2008]
    //     0x72e7d4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72e7d8: cmp             w0, w16
    //     0x72e7dc: b.ne            #0x72e7ec
    //     0x72e7e0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e10] Field <MyApp.currencies>: static late (offset: 0x1004)
    //     0x72e7e4: ldr             x2, [x2, #0xe10]
    //     0x72e7e8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x72e7ec: r1 = LoadClassIdInstr(r0)
    //     0x72e7ec: ldur            x1, [x0, #-1]
    //     0x72e7f0: ubfx            x1, x1, #0xc, #0x14
    // 0x72e7f4: str             x0, [SP]
    // 0x72e7f8: mov             x0, x1
    // 0x72e7fc: r0 = GDT[cid_x0 + 0x879f]()
    //     0x72e7fc: mov             x17, #0x879f
    //     0x72e800: add             lr, x0, x17
    //     0x72e804: ldr             lr, [x21, lr, lsl #3]
    //     0x72e808: blr             lr
    // 0x72e80c: r1 = LoadInt32Instr(r0)
    //     0x72e80c: sbfx            x1, x0, #1, #0x1f
    // 0x72e810: ldur            x2, [fp, #-0x38]
    // 0x72e814: cmp             x2, x1
    // 0x72e818: b.ge            #0x72ec8c
    // 0x72e81c: r3 = LoadStaticField(0x1004)
    //     0x72e81c: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x72e820: ldr             x3, [x3, #0x2008]
    // 0x72e824: r0 = BoxInt64Instr(r2)
    //     0x72e824: sbfiz           x0, x2, #1, #0x1f
    //     0x72e828: cmp             x2, x0, asr #1
    //     0x72e82c: b.eq            #0x72e838
    //     0x72e830: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72e834: stur            x2, [x0, #7]
    // 0x72e838: mov             x1, x0
    // 0x72e83c: stur            x1, [fp, #-0x48]
    // 0x72e840: r0 = LoadClassIdInstr(r3)
    //     0x72e840: ldur            x0, [x3, #-1]
    //     0x72e844: ubfx            x0, x0, #0xc, #0x14
    // 0x72e848: stp             x1, x3, [SP]
    // 0x72e84c: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x72e84c: sub             lr, x0, #0xdfc
    //     0x72e850: ldr             lr, [x21, lr, lsl #3]
    //     0x72e854: blr             lr
    // 0x72e858: LoadField: r1 = r0->field_f
    //     0x72e858: ldur            w1, [x0, #0xf]
    // 0x72e85c: DecompressPointer r1
    //     0x72e85c: add             x1, x1, HEAP, lsl #32
    // 0x72e860: stur            x1, [fp, #-0x58]
    // 0x72e864: r0 = LoadStaticField(0x1004)
    //     0x72e864: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72e868: ldr             x0, [x0, #0x2008]
    // 0x72e86c: r2 = LoadClassIdInstr(r0)
    //     0x72e86c: ldur            x2, [x0, #-1]
    //     0x72e870: ubfx            x2, x2, #0xc, #0x14
    // 0x72e874: ldur            x16, [fp, #-0x48]
    // 0x72e878: stp             x16, x0, [SP]
    // 0x72e87c: mov             x0, x2
    // 0x72e880: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x72e880: sub             lr, x0, #0xdfc
    //     0x72e884: ldr             lr, [x21, lr, lsl #3]
    //     0x72e888: blr             lr
    // 0x72e88c: LoadField: d0 = r0->field_13
    //     0x72e88c: ldur            d0, [x0, #0x13]
    // 0x72e890: stur            d0, [fp, #-0x78]
    // 0x72e894: r1 = inline_Allocate_Double()
    //     0x72e894: ldp             x1, x0, [THR, #0x60]  ; THR::top
    //     0x72e898: add             x1, x1, #0x10
    //     0x72e89c: cmp             x0, x1
    //     0x72e8a0: b.ls            #0x72f200
    //     0x72e8a4: str             x1, [THR, #0x60]  ; THR::top
    //     0x72e8a8: sub             x1, x1, #0xf
    //     0x72e8ac: mov             x0, #0xe15c
    //     0x72e8b0: movk            x0, #3, lsl #16
    //     0x72e8b4: stur            x0, [x1, #-1]
    // 0x72e8b8: StoreField: r1->field_7 = d0
    //     0x72e8b8: stur            d0, [x1, #7]
    // 0x72e8bc: stur            x1, [fp, #-0x60]
    // 0x72e8c0: r0 = 0
    //     0x72e8c0: mov             x0, #0
    // 0x72e8c4: stur            x0, [fp, #-0x40]
    // 0x72e8c8: CheckStackOverflow
    //     0x72e8c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72e8cc: cmp             SP, x16
    //     0x72e8d0: b.ls            #0x72f214
    // 0x72e8d4: cmp             x0, #0x10
    // 0x72e8d8: b.ge            #0x72e9d0
    // 0x72e8dc: r0 = InitLateStaticField(0x17c) // [dart:core] _Double::_cache
    //     0x72e8dc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72e8e0: ldr             x0, [x0, #0x2f8]
    //     0x72e8e4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72e8e8: cmp             w0, w16
    //     0x72e8ec: b.ne            #0x72e8fc
    //     0x72e8f0: add             x2, PP, #0xe, lsl #12  ; [pp+0xed48] Field <_Double@0150898._cache@0150898>: static late final (offset: 0x17c)
    //     0x72e8f4: ldr             x2, [x2, #0xd48]
    //     0x72e8f8: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x72e8fc: mov             x2, x0
    // 0x72e900: stur            x2, [fp, #-0x70]
    // 0x72e904: LoadField: r0 = r2->field_b
    //     0x72e904: ldur            w0, [x2, #0xb]
    // 0x72e908: r3 = LoadInt32Instr(r0)
    //     0x72e908: sbfx            x3, x0, #1, #0x1f
    // 0x72e90c: mov             x0, x3
    // 0x72e910: ldur            x1, [fp, #-0x40]
    // 0x72e914: stur            x3, [fp, #-0x68]
    // 0x72e918: cmp             x1, x0
    // 0x72e91c: b.hs            #0x72f21c
    // 0x72e920: ldur            x4, [fp, #-0x40]
    // 0x72e924: ArrayLoad: r0 = r2[r4]  ; Unknown_4
    //     0x72e924: add             x16, x2, x4, lsl #2
    //     0x72e928: ldur            w0, [x16, #0xf]
    // 0x72e92c: DecompressPointer r0
    //     0x72e92c: add             x0, x0, HEAP, lsl #32
    // 0x72e930: ldur            x1, [fp, #-0x60]
    // 0x72e934: stp             x1, x0, [SP, #-0x10]!
    // 0x72e938: r30 = OptimizedIdenticalWithNumberCheckStub
    //     0x72e938: ldr             lr, [PP, #0x1180]  ; [pp+0x1180] Stub: OptimizedIdenticalWithNumberCheck (0x3c3214)
    // 0x72e93c: LoadField: r30 = r30->field_7
    //     0x72e93c: ldur            lr, [lr, #7]
    // 0x72e940: blr             lr
    // 0x72e944: ldp             x1, x0, [SP], #0x10
    // 0x72e948: b.eq            #0x72e964
    // 0x72e94c: ldur            x0, [fp, #-0x40]
    // 0x72e950: add             x1, x0, #2
    // 0x72e954: mov             x0, x1
    // 0x72e958: ldur            d0, [fp, #-0x78]
    // 0x72e95c: ldur            x1, [fp, #-0x60]
    // 0x72e960: b               #0x72e8c4
    // 0x72e964: ldur            x0, [fp, #-0x40]
    // 0x72e968: ldur            x2, [fp, #-0x70]
    // 0x72e96c: add             x3, x0, #1
    // 0x72e970: ldur            x0, [fp, #-0x68]
    // 0x72e974: mov             x1, x3
    // 0x72e978: cmp             x1, x0
    // 0x72e97c: b.hs            #0x72f220
    // 0x72e980: ArrayLoad: r4 = r2[r3]  ; Unknown_4
    //     0x72e980: add             x16, x2, x3, lsl #2
    //     0x72e984: ldur            w4, [x16, #0xf]
    // 0x72e988: DecompressPointer r4
    //     0x72e988: add             x4, x4, HEAP, lsl #32
    // 0x72e98c: mov             x0, x4
    // 0x72e990: stur            x4, [fp, #-0x60]
    // 0x72e994: r2 = Null
    //     0x72e994: mov             x2, NULL
    // 0x72e998: r1 = Null
    //     0x72e998: mov             x1, NULL
    // 0x72e99c: r4 = 60
    //     0x72e99c: mov             x4, #0x3c
    // 0x72e9a0: branchIfSmi(r0, 0x72e9ac)
    //     0x72e9a0: tbz             w0, #0, #0x72e9ac
    // 0x72e9a4: r4 = LoadClassIdInstr(r0)
    //     0x72e9a4: ldur            x4, [x0, #-1]
    //     0x72e9a8: ubfx            x4, x4, #0xc, #0x14
    // 0x72e9ac: sub             x4, x4, #0x5e
    // 0x72e9b0: cmp             x4, #1
    // 0x72e9b4: b.ls            #0x72e9c8
    // 0x72e9b8: r8 = String
    //     0x72e9b8: ldr             x8, [PP, #0x278]  ; [pp+0x278] Type: String
    // 0x72e9bc: r3 = Null
    //     0x72e9bc: add             x3, PP, #0x15, lsl #12  ; [pp+0x15e18] Null
    //     0x72e9c0: ldr             x3, [x3, #0xe18]
    // 0x72e9c4: r0 = String()
    //     0x72e9c4: bl              #0x939a58  ; IsType_String_Stub
    // 0x72e9c8: ldur            x2, [fp, #-0x60]
    // 0x72e9cc: b               #0x72eb18
    // 0x72e9d0: r2 = inline_Allocate_Double()
    //     0x72e9d0: ldp             x2, x0, [THR, #0x60]  ; THR::top
    //     0x72e9d4: add             x2, x2, #0x10
    //     0x72e9d8: cmp             x0, x2
    //     0x72e9dc: b.ls            #0x72f224
    //     0x72e9e0: str             x2, [THR, #0x60]  ; THR::top
    //     0x72e9e4: sub             x2, x2, #0xf
    //     0x72e9e8: mov             x0, #0xe15c
    //     0x72e9ec: movk            x0, #3, lsl #16
    //     0x72e9f0: stur            x0, [x2, #-1]
    // 0x72e9f4: StoreField: r2->field_7 = d0
    //     0x72e9f4: stur            d0, [x2, #7]
    // 0x72e9f8: mov             x0, x2
    // 0x72e9fc: stur            x2, [fp, #-0x60]
    // 0x72ea00: r1 = 0.000000
    //     0x72ea00: ldr             x1, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x72ea04: stp             x1, x0, [SP, #-0x10]!
    // 0x72ea08: r30 = OptimizedIdenticalWithNumberCheckStub
    //     0x72ea08: ldr             lr, [PP, #0x1180]  ; [pp+0x1180] Stub: OptimizedIdenticalWithNumberCheck (0x3c3214)
    // 0x72ea0c: LoadField: r30 = r30->field_7
    //     0x72ea0c: ldur            lr, [lr, #7]
    // 0x72ea10: blr             lr
    // 0x72ea14: ldp             x1, x0, [SP], #0x10
    // 0x72ea18: b.ne            #0x72ea28
    // 0x72ea1c: r2 = "0.0"
    //     0x72ea1c: add             x2, PP, #0xe, lsl #12  ; [pp+0xed60] "0.0"
    //     0x72ea20: ldr             x2, [x2, #0xd60]
    // 0x72ea24: b               #0x72eb18
    // 0x72ea28: ldur            x16, [fp, #-0x60]
    // 0x72ea2c: str             x16, [SP]
    // 0x72ea30: r0 = _toString()
    //     0x72ea30: bl              #0x72f24c  ; [dart:core] _Double::_toString
    // 0x72ea34: stur            x0, [fp, #-0x70]
    // 0x72ea38: r0 = InitLateStaticField(0x17c) // [dart:core] _Double::_cache
    //     0x72ea38: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72ea3c: ldr             x0, [x0, #0x2f8]
    //     0x72ea40: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72ea44: cmp             w0, w16
    //     0x72ea48: b.ne            #0x72ea58
    //     0x72ea4c: add             x2, PP, #0xe, lsl #12  ; [pp+0xed48] Field <_Double@0150898._cache@0150898>: static late final (offset: 0x17c)
    //     0x72ea50: ldr             x2, [x2, #0xd48]
    //     0x72ea54: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x72ea58: mov             x2, x0
    // 0x72ea5c: r0 = LoadStaticField(0x180)
    //     0x72ea5c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72ea60: ldr             x0, [x0, #0x300]
    // 0x72ea64: LoadField: r1 = r2->field_b
    //     0x72ea64: ldur            w1, [x2, #0xb]
    // 0x72ea68: r3 = LoadInt32Instr(r0)
    //     0x72ea68: sbfx            x3, x0, #1, #0x1f
    //     0x72ea6c: tbz             w0, #0, #0x72ea74
    //     0x72ea70: ldur            x3, [x0, #7]
    // 0x72ea74: r4 = LoadInt32Instr(r1)
    //     0x72ea74: sbfx            x4, x1, #1, #0x1f
    // 0x72ea78: mov             x0, x4
    // 0x72ea7c: mov             x1, x3
    // 0x72ea80: cmp             x1, x0
    // 0x72ea84: b.hs            #0x72f238
    // 0x72ea88: mov             x1, x2
    // 0x72ea8c: ldur            x0, [fp, #-0x60]
    // 0x72ea90: ArrayStore: r1[r3] = r0  ; List_4
    //     0x72ea90: add             x25, x1, x3, lsl #2
    //     0x72ea94: add             x25, x25, #0xf
    //     0x72ea98: str             w0, [x25]
    //     0x72ea9c: tbz             w0, #0, #0x72eab8
    //     0x72eaa0: ldurb           w16, [x1, #-1]
    //     0x72eaa4: ldurb           w17, [x0, #-1]
    //     0x72eaa8: and             x16, x17, x16, lsr #2
    //     0x72eaac: tst             x16, HEAP, lsr #32
    //     0x72eab0: b.eq            #0x72eab8
    //     0x72eab4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72eab8: add             x5, x3, #1
    // 0x72eabc: mov             x0, x4
    // 0x72eac0: mov             x1, x5
    // 0x72eac4: cmp             x1, x0
    // 0x72eac8: b.hs            #0x72f23c
    // 0x72eacc: mov             x1, x2
    // 0x72ead0: ldur            x0, [fp, #-0x70]
    // 0x72ead4: ArrayStore: r1[r5] = r0  ; List_4
    //     0x72ead4: add             x25, x1, x5, lsl #2
    //     0x72ead8: add             x25, x25, #0xf
    //     0x72eadc: str             w0, [x25]
    //     0x72eae0: tbz             w0, #0, #0x72eafc
    //     0x72eae4: ldurb           w16, [x1, #-1]
    //     0x72eae8: ldurb           w17, [x0, #-1]
    //     0x72eaec: and             x16, x17, x16, lsr #2
    //     0x72eaf0: tst             x16, HEAP, lsr #32
    //     0x72eaf4: b.eq            #0x72eafc
    //     0x72eaf8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72eafc: ubfx            x3, x3, #0, #0x20
    // 0x72eb00: add             w0, w3, #2
    // 0x72eb04: and             w1, w0, #0xf
    // 0x72eb08: lsl             w0, w1, #1
    // 0x72eb0c: StoreStaticField(0x180, r0)
    //     0x72eb0c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x72eb10: str             x0, [x1, #0x300]
    // 0x72eb14: ldur            x2, [fp, #-0x70]
    // 0x72eb18: ldur            x1, [fp, #-0x38]
    // 0x72eb1c: ldur            x0, [fp, #-0x58]
    // 0x72eb20: stur            x2, [fp, #-0x60]
    // 0x72eb24: r0 = InitLateStaticField(0x1004) // [package:umrem_demo/main.dart] MyApp::currencies
    //     0x72eb24: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72eb28: ldr             x0, [x0, #0x2008]
    //     0x72eb2c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72eb30: cmp             w0, w16
    //     0x72eb34: b.ne            #0x72eb44
    //     0x72eb38: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e10] Field <MyApp.currencies>: static late (offset: 0x1004)
    //     0x72eb3c: ldr             x2, [x2, #0xe10]
    //     0x72eb40: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x72eb44: r1 = LoadClassIdInstr(r0)
    //     0x72eb44: ldur            x1, [x0, #-1]
    //     0x72eb48: ubfx            x1, x1, #0xc, #0x14
    // 0x72eb4c: ldur            x16, [fp, #-0x48]
    // 0x72eb50: stp             x16, x0, [SP]
    // 0x72eb54: mov             x0, x1
    // 0x72eb58: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x72eb58: sub             lr, x0, #0xdfc
    //     0x72eb5c: ldr             lr, [x21, lr, lsl #3]
    //     0x72eb60: blr             lr
    // 0x72eb64: LoadField: r1 = r0->field_b
    //     0x72eb64: ldur            w1, [x0, #0xb]
    // 0x72eb68: DecompressPointer r1
    //     0x72eb68: add             x1, x1, HEAP, lsl #32
    // 0x72eb6c: stur            x1, [fp, #-0x48]
    // 0x72eb70: r0 = CurrencyRow()
    //     0x72eb70: bl              #0x72f240  ; AllocateCurrencyRowStub -> CurrencyRow (size=0x18)
    // 0x72eb74: mov             x3, x0
    // 0x72eb78: ldur            x0, [fp, #-0x58]
    // 0x72eb7c: stur            x3, [fp, #-0x70]
    // 0x72eb80: StoreField: r3->field_b = r0
    //     0x72eb80: stur            w0, [x3, #0xb]
    // 0x72eb84: ldur            x0, [fp, #-0x60]
    // 0x72eb88: StoreField: r3->field_f = r0
    //     0x72eb88: stur            w0, [x3, #0xf]
    // 0x72eb8c: ldur            x0, [fp, #-0x48]
    // 0x72eb90: StoreField: r3->field_13 = r0
    //     0x72eb90: stur            w0, [x3, #0x13]
    // 0x72eb94: r1 = Null
    //     0x72eb94: mov             x1, NULL
    // 0x72eb98: r2 = 2
    //     0x72eb98: mov             x2, #2
    // 0x72eb9c: r0 = AllocateArray()
    //     0x72eb9c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72eba0: mov             x2, x0
    // 0x72eba4: ldur            x0, [fp, #-0x70]
    // 0x72eba8: stur            x2, [fp, #-0x48]
    // 0x72ebac: StoreField: r2->field_f = r0
    //     0x72ebac: stur            w0, [x2, #0xf]
    // 0x72ebb0: r1 = <Widget>
    //     0x72ebb0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72ebb4: r0 = AllocateGrowableArray()
    //     0x72ebb4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72ebb8: mov             x1, x0
    // 0x72ebbc: ldur            x0, [fp, #-0x48]
    // 0x72ebc0: stur            x1, [fp, #-0x58]
    // 0x72ebc4: StoreField: r1->field_f = r0
    //     0x72ebc4: stur            w0, [x1, #0xf]
    // 0x72ebc8: r2 = 2
    //     0x72ebc8: mov             x2, #2
    // 0x72ebcc: StoreField: r1->field_b = r2
    //     0x72ebcc: stur            w2, [x1, #0xb]
    // 0x72ebd0: r0 = LoadStaticField(0x1004)
    //     0x72ebd0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72ebd4: ldr             x0, [x0, #0x2008]
    // 0x72ebd8: r3 = LoadClassIdInstr(r0)
    //     0x72ebd8: ldur            x3, [x0, #-1]
    //     0x72ebdc: ubfx            x3, x3, #0xc, #0x14
    // 0x72ebe0: str             x0, [SP]
    // 0x72ebe4: mov             x0, x3
    // 0x72ebe8: r0 = GDT[cid_x0 + 0x879f]()
    //     0x72ebe8: mov             x17, #0x879f
    //     0x72ebec: add             lr, x0, x17
    //     0x72ebf0: ldr             lr, [x21, lr, lsl #3]
    //     0x72ebf4: blr             lr
    // 0x72ebf8: r1 = LoadInt32Instr(r0)
    //     0x72ebf8: sbfx            x1, x0, #1, #0x1f
    // 0x72ebfc: sub             x0, x1, #1
    // 0x72ec00: ldur            x2, [fp, #-0x38]
    // 0x72ec04: cmp             x2, x0
    // 0x72ec08: b.ge            #0x72ec6c
    // 0x72ec0c: ldur            x0, [fp, #-0x58]
    // 0x72ec10: LoadField: r1 = r0->field_b
    //     0x72ec10: ldur            w1, [x0, #0xb]
    // 0x72ec14: LoadField: r3 = r0->field_f
    //     0x72ec14: ldur            w3, [x0, #0xf]
    // 0x72ec18: DecompressPointer r3
    //     0x72ec18: add             x3, x3, HEAP, lsl #32
    // 0x72ec1c: LoadField: r4 = r3->field_b
    //     0x72ec1c: ldur            w4, [x3, #0xb]
    // 0x72ec20: r3 = LoadInt32Instr(r1)
    //     0x72ec20: sbfx            x3, x1, #1, #0x1f
    // 0x72ec24: stur            x3, [fp, #-0x40]
    // 0x72ec28: r1 = LoadInt32Instr(r4)
    //     0x72ec28: sbfx            x1, x4, #1, #0x1f
    // 0x72ec2c: cmp             x3, x1
    // 0x72ec30: b.ne            #0x72ec3c
    // 0x72ec34: mov             x1, x0
    // 0x72ec38: r0 = _growToNextCapacity()
    //     0x72ec38: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x72ec3c: ldur            x2, [fp, #-0x58]
    // 0x72ec40: ldur            x0, [fp, #-0x40]
    // 0x72ec44: add             x1, x0, #1
    // 0x72ec48: lsl             x3, x1, #1
    // 0x72ec4c: StoreField: r2->field_b = r3
    //     0x72ec4c: stur            w3, [x2, #0xb]
    // 0x72ec50: LoadField: r1 = r2->field_f
    //     0x72ec50: ldur            w1, [x2, #0xf]
    // 0x72ec54: DecompressPointer r1
    //     0x72ec54: add             x1, x1, HEAP, lsl #32
    // 0x72ec58: add             x3, x1, x0, lsl #2
    // 0x72ec5c: r16 = Instance_Divider
    //     0x72ec5c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e28] Obj!Divider@a1f771
    //     0x72ec60: ldr             x16, [x16, #0xe28]
    // 0x72ec64: StoreField: r3->field_f = r16
    //     0x72ec64: stur            w16, [x3, #0xf]
    // 0x72ec68: b               #0x72ec70
    // 0x72ec6c: ldur            x2, [fp, #-0x58]
    // 0x72ec70: ldur            x0, [fp, #-0x38]
    // 0x72ec74: ldur            x1, [fp, #-0x28]
    // 0x72ec78: r0 = addAll()
    //     0x72ec78: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x72ec7c: ldur            x0, [fp, #-0x38]
    // 0x72ec80: add             x1, x0, #1
    // 0x72ec84: ldur            x0, [fp, #-0x28]
    // 0x72ec88: b               #0x72e7bc
    // 0x72ec8c: ldur            x3, [fp, #-8]
    // 0x72ec90: ldur            x5, [fp, #-0x20]
    // 0x72ec94: ldur            x2, [fp, #-0x30]
    // 0x72ec98: ldur            x1, [fp, #-0x18]
    // 0x72ec9c: ldur            x0, [fp, #-0x28]
    // 0x72eca0: ldur            x4, [fp, #-0x10]
    // 0x72eca4: r0 = Column()
    //     0x72eca4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72eca8: mov             x1, x0
    // 0x72ecac: r0 = Instance_Axis
    //     0x72ecac: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72ecb0: stur            x1, [fp, #-0x48]
    // 0x72ecb4: StoreField: r1->field_f = r0
    //     0x72ecb4: stur            w0, [x1, #0xf]
    // 0x72ecb8: r2 = Instance_MainAxisAlignment
    //     0x72ecb8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72ecbc: ldr             x2, [x2, #0x230]
    // 0x72ecc0: StoreField: r1->field_13 = r2
    //     0x72ecc0: stur            w2, [x1, #0x13]
    // 0x72ecc4: r3 = Instance_MainAxisSize
    //     0x72ecc4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72ecc8: ldr             x3, [x3, #0x330]
    // 0x72eccc: ArrayStore: r1[0] = r3  ; List_4
    //     0x72eccc: stur            w3, [x1, #0x17]
    // 0x72ecd0: r4 = Instance_CrossAxisAlignment
    //     0x72ecd0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72ecd4: ldr             x4, [x4, #0x338]
    // 0x72ecd8: StoreField: r1->field_1b = r4
    //     0x72ecd8: stur            w4, [x1, #0x1b]
    // 0x72ecdc: r4 = Instance_VerticalDirection
    //     0x72ecdc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72ece0: ldr             x4, [x4, #0x340]
    // 0x72ece4: StoreField: r1->field_23 = r4
    //     0x72ece4: stur            w4, [x1, #0x23]
    // 0x72ece8: r5 = Instance_Clip
    //     0x72ece8: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72ecec: ldr             x5, [x5, #0x348]
    // 0x72ecf0: StoreField: r1->field_2b = r5
    //     0x72ecf0: stur            w5, [x1, #0x2b]
    // 0x72ecf4: StoreField: r1->field_2f = rZR
    //     0x72ecf4: stur            xzr, [x1, #0x2f]
    // 0x72ecf8: ldur            x6, [fp, #-0x28]
    // 0x72ecfc: StoreField: r1->field_b = r6
    //     0x72ecfc: stur            w6, [x1, #0xb]
    // 0x72ed00: r0 = Container()
    //     0x72ed00: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x72ed04: stur            x0, [fp, #-0x28]
    // 0x72ed08: r16 = Instance_EdgeInsets
    //     0x72ed08: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x72ed0c: ldr             x16, [x16, #0x240]
    // 0x72ed10: ldur            lr, [fp, #-0x50]
    // 0x72ed14: stp             lr, x16, [SP, #8]
    // 0x72ed18: ldur            x16, [fp, #-0x48]
    // 0x72ed1c: str             x16, [SP]
    // 0x72ed20: mov             x1, x0
    // 0x72ed24: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x72ed24: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x72ed28: ldr             x4, [x4, #0x1e8]
    // 0x72ed2c: r0 = Container()
    //     0x72ed2c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x72ed30: r1 = Null
    //     0x72ed30: mov             x1, NULL
    // 0x72ed34: r2 = 6
    //     0x72ed34: mov             x2, #6
    // 0x72ed38: r0 = AllocateArray()
    //     0x72ed38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ed3c: mov             x2, x0
    // 0x72ed40: ldur            x0, [fp, #-0x18]
    // 0x72ed44: stur            x2, [fp, #-0x48]
    // 0x72ed48: StoreField: r2->field_f = r0
    //     0x72ed48: stur            w0, [x2, #0xf]
    // 0x72ed4c: r16 = Instance_SizedBox
    //     0x72ed4c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72ed50: ldr             x16, [x16, #0x310]
    // 0x72ed54: StoreField: r2->field_13 = r16
    //     0x72ed54: stur            w16, [x2, #0x13]
    // 0x72ed58: ldur            x0, [fp, #-0x28]
    // 0x72ed5c: ArrayStore: r2[0] = r0  ; List_4
    //     0x72ed5c: stur            w0, [x2, #0x17]
    // 0x72ed60: r1 = <Widget>
    //     0x72ed60: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72ed64: r0 = AllocateGrowableArray()
    //     0x72ed64: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72ed68: mov             x1, x0
    // 0x72ed6c: ldur            x0, [fp, #-0x48]
    // 0x72ed70: stur            x1, [fp, #-0x18]
    // 0x72ed74: StoreField: r1->field_f = r0
    //     0x72ed74: stur            w0, [x1, #0xf]
    // 0x72ed78: r2 = 6
    //     0x72ed78: mov             x2, #6
    // 0x72ed7c: StoreField: r1->field_b = r2
    //     0x72ed7c: stur            w2, [x1, #0xb]
    // 0x72ed80: r0 = Column()
    //     0x72ed80: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72ed84: mov             x2, x0
    // 0x72ed88: r0 = Instance_Axis
    //     0x72ed88: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72ed8c: stur            x2, [fp, #-0x28]
    // 0x72ed90: StoreField: r2->field_f = r0
    //     0x72ed90: stur            w0, [x2, #0xf]
    // 0x72ed94: r3 = Instance_MainAxisAlignment
    //     0x72ed94: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72ed98: ldr             x3, [x3, #0x230]
    // 0x72ed9c: StoreField: r2->field_13 = r3
    //     0x72ed9c: stur            w3, [x2, #0x13]
    // 0x72eda0: r4 = Instance_MainAxisSize
    //     0x72eda0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72eda4: ldr             x4, [x4, #0x330]
    // 0x72eda8: ArrayStore: r2[0] = r4  ; List_4
    //     0x72eda8: stur            w4, [x2, #0x17]
    // 0x72edac: r5 = Instance_CrossAxisAlignment
    //     0x72edac: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x72edb0: ldr             x5, [x5, #0x238]
    // 0x72edb4: StoreField: r2->field_1b = r5
    //     0x72edb4: stur            w5, [x2, #0x1b]
    // 0x72edb8: r6 = Instance_VerticalDirection
    //     0x72edb8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72edbc: ldr             x6, [x6, #0x340]
    // 0x72edc0: StoreField: r2->field_23 = r6
    //     0x72edc0: stur            w6, [x2, #0x23]
    // 0x72edc4: r7 = Instance_Clip
    //     0x72edc4: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72edc8: ldr             x7, [x7, #0x348]
    // 0x72edcc: StoreField: r2->field_2b = r7
    //     0x72edcc: stur            w7, [x2, #0x2b]
    // 0x72edd0: StoreField: r2->field_2f = rZR
    //     0x72edd0: stur            xzr, [x2, #0x2f]
    // 0x72edd4: ldur            x1, [fp, #-0x18]
    // 0x72edd8: StoreField: r2->field_b = r1
    //     0x72edd8: stur            w1, [x2, #0xb]
    // 0x72eddc: r1 = <FlexParentData>
    //     0x72eddc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x72ede0: ldr             x1, [x1, #0x340]
    // 0x72ede4: r0 = Expanded()
    //     0x72ede4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x72ede8: mov             x1, x0
    // 0x72edec: r0 = 4
    //     0x72edec: mov             x0, #4
    // 0x72edf0: stur            x1, [fp, #-0x18]
    // 0x72edf4: StoreField: r1->field_13 = r0
    //     0x72edf4: stur            x0, [x1, #0x13]
    // 0x72edf8: r0 = Instance_FlexFit
    //     0x72edf8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x72edfc: ldr             x0, [x0, #0x348]
    // 0x72ee00: StoreField: r1->field_1b = r0
    //     0x72ee00: stur            w0, [x1, #0x1b]
    // 0x72ee04: ldur            x2, [fp, #-0x28]
    // 0x72ee08: StoreField: r1->field_b = r2
    //     0x72ee08: stur            w2, [x1, #0xb]
    // 0x72ee0c: r0 = SectionHeader()
    //     0x72ee0c: bl              #0x72f7b0  ; AllocateSectionHeaderStub -> SectionHeader (size=0x14)
    // 0x72ee10: mov             x3, x0
    // 0x72ee14: r0 = "Duyurular"
    //     0x72ee14: add             x0, PP, #0x15, lsl #12  ; [pp+0x15e30] "Duyurular"
    //     0x72ee18: ldr             x0, [x0, #0xe30]
    // 0x72ee1c: stur            x3, [fp, #-0x28]
    // 0x72ee20: StoreField: r3->field_b = r0
    //     0x72ee20: stur            w0, [x3, #0xb]
    // 0x72ee24: r0 = Instance_Color
    //     0x72ee24: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x72ee28: ldr             x0, [x0, #0xb88]
    // 0x72ee2c: StoreField: r3->field_f = r0
    //     0x72ee2c: stur            w0, [x3, #0xf]
    // 0x72ee30: r1 = Null
    //     0x72ee30: mov             x1, NULL
    // 0x72ee34: r2 = 4
    //     0x72ee34: mov             x2, #4
    // 0x72ee38: r0 = AllocateArray()
    //     0x72ee38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ee3c: mov             x2, x0
    // 0x72ee40: ldur            x0, [fp, #-0x28]
    // 0x72ee44: stur            x2, [fp, #-0x48]
    // 0x72ee48: StoreField: r2->field_f = r0
    //     0x72ee48: stur            w0, [x2, #0xf]
    // 0x72ee4c: r16 = Instance_SizedBox
    //     0x72ee4c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72ee50: ldr             x16, [x16, #0x310]
    // 0x72ee54: StoreField: r2->field_13 = r16
    //     0x72ee54: stur            w16, [x2, #0x13]
    // 0x72ee58: r1 = <Widget>
    //     0x72ee58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72ee5c: r0 = AllocateGrowableArray()
    //     0x72ee5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72ee60: mov             x1, x0
    // 0x72ee64: ldur            x0, [fp, #-0x48]
    // 0x72ee68: stur            x1, [fp, #-0x28]
    // 0x72ee6c: StoreField: r1->field_f = r0
    //     0x72ee6c: stur            w0, [x1, #0xf]
    // 0x72ee70: r0 = 4
    //     0x72ee70: mov             x0, #4
    // 0x72ee74: StoreField: r1->field_b = r0
    //     0x72ee74: stur            w0, [x1, #0xb]
    // 0x72ee78: r0 = InitLateStaticField(0x1010) // [package:umrem_demo/main.dart] MyApp::notifications
    //     0x72ee78: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72ee7c: ldr             x0, [x0, #0x2020]
    //     0x72ee80: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72ee84: cmp             w0, w16
    //     0x72ee88: b.ne            #0x72ee98
    //     0x72ee8c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e38] Field <MyApp.notifications>: static late (offset: 0x1010)
    //     0x72ee90: ldr             x2, [x2, #0xe38]
    //     0x72ee94: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x72ee98: r1 = Function '<anonymous closure>':.
    //     0x72ee98: add             x1, PP, #0x15, lsl #12  ; [pp+0x15e40] AnonymousClosure: (0x72f7bc), in [package:umrem_demo/features/home/screens/home_screen.dart] _HomeScreenState::build (0x72de1c)
    //     0x72ee9c: ldr             x1, [x1, #0xe40]
    // 0x72eea0: r2 = Null
    //     0x72eea0: mov             x2, NULL
    // 0x72eea4: stur            x0, [fp, #-0x48]
    // 0x72eea8: r0 = AllocateClosure()
    //     0x72eea8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72eeac: mov             x1, x0
    // 0x72eeb0: ldur            x0, [fp, #-0x48]
    // 0x72eeb4: r2 = LoadClassIdInstr(r0)
    //     0x72eeb4: ldur            x2, [x0, #-1]
    //     0x72eeb8: ubfx            x2, x2, #0xc, #0x14
    // 0x72eebc: r16 = <Widget>
    //     0x72eebc: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72eec0: stp             x0, x16, [SP, #8]
    // 0x72eec4: str             x1, [SP]
    // 0x72eec8: mov             x0, x2
    // 0x72eecc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x72eecc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x72eed0: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x72eed0: mov             x17, #0xd1d6
    //     0x72eed4: add             lr, x0, x17
    //     0x72eed8: ldr             lr, [x21, lr, lsl #3]
    //     0x72eedc: blr             lr
    // 0x72eee0: ldur            x1, [fp, #-0x28]
    // 0x72eee4: mov             x2, x0
    // 0x72eee8: r0 = addAll()
    //     0x72eee8: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x72eeec: r0 = Column()
    //     0x72eeec: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72eef0: mov             x2, x0
    // 0x72eef4: r0 = Instance_Axis
    //     0x72eef4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72eef8: stur            x2, [fp, #-0x48]
    // 0x72eefc: StoreField: r2->field_f = r0
    //     0x72eefc: stur            w0, [x2, #0xf]
    // 0x72ef00: r3 = Instance_MainAxisAlignment
    //     0x72ef00: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72ef04: ldr             x3, [x3, #0x230]
    // 0x72ef08: StoreField: r2->field_13 = r3
    //     0x72ef08: stur            w3, [x2, #0x13]
    // 0x72ef0c: r4 = Instance_MainAxisSize
    //     0x72ef0c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72ef10: ldr             x4, [x4, #0x330]
    // 0x72ef14: ArrayStore: r2[0] = r4  ; List_4
    //     0x72ef14: stur            w4, [x2, #0x17]
    // 0x72ef18: r5 = Instance_CrossAxisAlignment
    //     0x72ef18: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x72ef1c: ldr             x5, [x5, #0x238]
    // 0x72ef20: StoreField: r2->field_1b = r5
    //     0x72ef20: stur            w5, [x2, #0x1b]
    // 0x72ef24: r6 = Instance_VerticalDirection
    //     0x72ef24: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72ef28: ldr             x6, [x6, #0x340]
    // 0x72ef2c: StoreField: r2->field_23 = r6
    //     0x72ef2c: stur            w6, [x2, #0x23]
    // 0x72ef30: r7 = Instance_Clip
    //     0x72ef30: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72ef34: ldr             x7, [x7, #0x348]
    // 0x72ef38: StoreField: r2->field_2b = r7
    //     0x72ef38: stur            w7, [x2, #0x2b]
    // 0x72ef3c: StoreField: r2->field_2f = rZR
    //     0x72ef3c: stur            xzr, [x2, #0x2f]
    // 0x72ef40: ldur            x1, [fp, #-0x28]
    // 0x72ef44: StoreField: r2->field_b = r1
    //     0x72ef44: stur            w1, [x2, #0xb]
    // 0x72ef48: r1 = <FlexParentData>
    //     0x72ef48: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x72ef4c: ldr             x1, [x1, #0x340]
    // 0x72ef50: r0 = Expanded()
    //     0x72ef50: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x72ef54: mov             x3, x0
    // 0x72ef58: r0 = 5
    //     0x72ef58: mov             x0, #5
    // 0x72ef5c: stur            x3, [fp, #-0x28]
    // 0x72ef60: StoreField: r3->field_13 = r0
    //     0x72ef60: stur            x0, [x3, #0x13]
    // 0x72ef64: r0 = Instance_FlexFit
    //     0x72ef64: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x72ef68: ldr             x0, [x0, #0x348]
    // 0x72ef6c: StoreField: r3->field_1b = r0
    //     0x72ef6c: stur            w0, [x3, #0x1b]
    // 0x72ef70: ldur            x0, [fp, #-0x48]
    // 0x72ef74: StoreField: r3->field_b = r0
    //     0x72ef74: stur            w0, [x3, #0xb]
    // 0x72ef78: r1 = Null
    //     0x72ef78: mov             x1, NULL
    // 0x72ef7c: r2 = 6
    //     0x72ef7c: mov             x2, #6
    // 0x72ef80: r0 = AllocateArray()
    //     0x72ef80: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ef84: mov             x2, x0
    // 0x72ef88: ldur            x0, [fp, #-0x18]
    // 0x72ef8c: stur            x2, [fp, #-0x48]
    // 0x72ef90: StoreField: r2->field_f = r0
    //     0x72ef90: stur            w0, [x2, #0xf]
    // 0x72ef94: r16 = Instance_SizedBox
    //     0x72ef94: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e48] Obj!SizedBox@a1fc71
    //     0x72ef98: ldr             x16, [x16, #0xe48]
    // 0x72ef9c: StoreField: r2->field_13 = r16
    //     0x72ef9c: stur            w16, [x2, #0x13]
    // 0x72efa0: ldur            x0, [fp, #-0x28]
    // 0x72efa4: ArrayStore: r2[0] = r0  ; List_4
    //     0x72efa4: stur            w0, [x2, #0x17]
    // 0x72efa8: r1 = <Widget>
    //     0x72efa8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72efac: r0 = AllocateGrowableArray()
    //     0x72efac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72efb0: mov             x1, x0
    // 0x72efb4: ldur            x0, [fp, #-0x48]
    // 0x72efb8: stur            x1, [fp, #-0x18]
    // 0x72efbc: StoreField: r1->field_f = r0
    //     0x72efbc: stur            w0, [x1, #0xf]
    // 0x72efc0: r0 = 6
    //     0x72efc0: mov             x0, #6
    // 0x72efc4: StoreField: r1->field_b = r0
    //     0x72efc4: stur            w0, [x1, #0xb]
    // 0x72efc8: r0 = Row()
    //     0x72efc8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72efcc: mov             x1, x0
    // 0x72efd0: r0 = Instance_Axis
    //     0x72efd0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x72efd4: StoreField: r1->field_f = r0
    //     0x72efd4: stur            w0, [x1, #0xf]
    // 0x72efd8: r2 = Instance_MainAxisAlignment
    //     0x72efd8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72efdc: ldr             x2, [x2, #0x230]
    // 0x72efe0: StoreField: r1->field_13 = r2
    //     0x72efe0: stur            w2, [x1, #0x13]
    // 0x72efe4: r3 = Instance_MainAxisSize
    //     0x72efe4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72efe8: ldr             x3, [x3, #0x330]
    // 0x72efec: ArrayStore: r1[0] = r3  ; List_4
    //     0x72efec: stur            w3, [x1, #0x17]
    // 0x72eff0: r4 = Instance_CrossAxisAlignment
    //     0x72eff0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x72eff4: ldr             x4, [x4, #0x238]
    // 0x72eff8: StoreField: r1->field_1b = r4
    //     0x72eff8: stur            w4, [x1, #0x1b]
    // 0x72effc: r5 = Instance_VerticalDirection
    //     0x72effc: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72f000: ldr             x5, [x5, #0x340]
    // 0x72f004: StoreField: r1->field_23 = r5
    //     0x72f004: stur            w5, [x1, #0x23]
    // 0x72f008: r6 = Instance_Clip
    //     0x72f008: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72f00c: ldr             x6, [x6, #0x348]
    // 0x72f010: StoreField: r1->field_2b = r6
    //     0x72f010: stur            w6, [x1, #0x2b]
    // 0x72f014: StoreField: r1->field_2f = rZR
    //     0x72f014: stur            xzr, [x1, #0x2f]
    // 0x72f018: ldur            x0, [fp, #-0x18]
    // 0x72f01c: StoreField: r1->field_b = r0
    //     0x72f01c: stur            w0, [x1, #0xb]
    // 0x72f020: mov             x0, x1
    // 0x72f024: ldur            x1, [fp, #-0x30]
    // 0x72f028: ArrayStore: r1[8] = r0  ; List_4
    //     0x72f028: add             x25, x1, #0x2f
    //     0x72f02c: str             w0, [x25]
    //     0x72f030: tbz             w0, #0, #0x72f04c
    //     0x72f034: ldurb           w16, [x1, #-1]
    //     0x72f038: ldurb           w17, [x0, #-1]
    //     0x72f03c: and             x16, x17, x16, lsr #2
    //     0x72f040: tst             x16, HEAP, lsr #32
    //     0x72f044: b.eq            #0x72f04c
    //     0x72f048: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72f04c: ldur            x0, [fp, #-0x30]
    // 0x72f050: r16 = Instance_SizedBox
    //     0x72f050: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e50] Obj!SizedBox@a1fc31
    //     0x72f054: ldr             x16, [x16, #0xe50]
    // 0x72f058: StoreField: r0->field_33 = r16
    //     0x72f058: stur            w16, [x0, #0x33]
    // 0x72f05c: r1 = <Widget>
    //     0x72f05c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72f060: r0 = AllocateGrowableArray()
    //     0x72f060: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72f064: mov             x1, x0
    // 0x72f068: ldur            x0, [fp, #-0x30]
    // 0x72f06c: stur            x1, [fp, #-0x18]
    // 0x72f070: StoreField: r1->field_f = r0
    //     0x72f070: stur            w0, [x1, #0xf]
    // 0x72f074: r0 = 20
    //     0x72f074: mov             x0, #0x14
    // 0x72f078: StoreField: r1->field_b = r0
    //     0x72f078: stur            w0, [x1, #0xb]
    // 0x72f07c: r0 = Column()
    //     0x72f07c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72f080: mov             x1, x0
    // 0x72f084: r0 = Instance_Axis
    //     0x72f084: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72f088: stur            x1, [fp, #-0x28]
    // 0x72f08c: StoreField: r1->field_f = r0
    //     0x72f08c: stur            w0, [x1, #0xf]
    // 0x72f090: r2 = Instance_MainAxisAlignment
    //     0x72f090: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72f094: ldr             x2, [x2, #0x230]
    // 0x72f098: StoreField: r1->field_13 = r2
    //     0x72f098: stur            w2, [x1, #0x13]
    // 0x72f09c: r2 = Instance_MainAxisSize
    //     0x72f09c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72f0a0: ldr             x2, [x2, #0x330]
    // 0x72f0a4: ArrayStore: r1[0] = r2  ; List_4
    //     0x72f0a4: stur            w2, [x1, #0x17]
    // 0x72f0a8: r2 = Instance_CrossAxisAlignment
    //     0x72f0a8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x72f0ac: ldr             x2, [x2, #0x238]
    // 0x72f0b0: StoreField: r1->field_1b = r2
    //     0x72f0b0: stur            w2, [x1, #0x1b]
    // 0x72f0b4: r2 = Instance_VerticalDirection
    //     0x72f0b4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72f0b8: ldr             x2, [x2, #0x340]
    // 0x72f0bc: StoreField: r1->field_23 = r2
    //     0x72f0bc: stur            w2, [x1, #0x23]
    // 0x72f0c0: r2 = Instance_Clip
    //     0x72f0c0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72f0c4: ldr             x2, [x2, #0x348]
    // 0x72f0c8: StoreField: r1->field_2b = r2
    //     0x72f0c8: stur            w2, [x1, #0x2b]
    // 0x72f0cc: StoreField: r1->field_2f = rZR
    //     0x72f0cc: stur            xzr, [x1, #0x2f]
    // 0x72f0d0: ldur            x2, [fp, #-0x18]
    // 0x72f0d4: StoreField: r1->field_b = r2
    //     0x72f0d4: stur            w2, [x1, #0xb]
    // 0x72f0d8: r0 = SingleChildScrollView()
    //     0x72f0d8: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x72f0dc: mov             x1, x0
    // 0x72f0e0: r0 = Instance_Axis
    //     0x72f0e0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72f0e4: stur            x1, [fp, #-0x18]
    // 0x72f0e8: StoreField: r1->field_b = r0
    //     0x72f0e8: stur            w0, [x1, #0xb]
    // 0x72f0ec: r0 = false
    //     0x72f0ec: add             x0, NULL, #0x30  ; false
    // 0x72f0f0: StoreField: r1->field_f = r0
    //     0x72f0f0: stur            w0, [x1, #0xf]
    // 0x72f0f4: r2 = Instance_EdgeInsets
    //     0x72f0f4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e58] Obj!EdgeInsets@a0c681
    //     0x72f0f8: ldr             x2, [x2, #0xe58]
    // 0x72f0fc: StoreField: r1->field_13 = r2
    //     0x72f0fc: stur            w2, [x1, #0x13]
    // 0x72f100: r2 = Instance_BouncingScrollPhysics
    //     0x72f100: add             x2, PP, #0x15, lsl #12  ; [pp+0x15a90] Obj!BouncingScrollPhysics@a0a9e1
    //     0x72f104: ldr             x2, [x2, #0xa90]
    // 0x72f108: StoreField: r1->field_1f = r2
    //     0x72f108: stur            w2, [x1, #0x1f]
    // 0x72f10c: ldur            x2, [fp, #-0x28]
    // 0x72f110: StoreField: r1->field_23 = r2
    //     0x72f110: stur            w2, [x1, #0x23]
    // 0x72f114: r2 = Instance_DragStartBehavior
    //     0x72f114: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72f118: StoreField: r1->field_27 = r2
    //     0x72f118: stur            w2, [x1, #0x27]
    // 0x72f11c: r3 = Instance_Clip
    //     0x72f11c: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x72f120: ldr             x3, [x3, #0x2d8]
    // 0x72f124: StoreField: r1->field_2b = r3
    //     0x72f124: stur            w3, [x1, #0x2b]
    // 0x72f128: r3 = Instance_HitTestBehavior
    //     0x72f128: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x72f12c: ldr             x3, [x3, #0xe20]
    // 0x72f130: StoreField: r1->field_2f = r3
    //     0x72f130: stur            w3, [x1, #0x2f]
    // 0x72f134: r0 = FadeTransition()
    //     0x72f134: bl              #0x40a204  ; AllocateFadeTransitionStub -> FadeTransition (size=0x18)
    // 0x72f138: mov             x1, x0
    // 0x72f13c: ldur            x0, [fp, #-0x10]
    // 0x72f140: stur            x1, [fp, #-0x28]
    // 0x72f144: StoreField: r1->field_f = r0
    //     0x72f144: stur            w0, [x1, #0xf]
    // 0x72f148: r0 = false
    //     0x72f148: add             x0, NULL, #0x30  ; false
    // 0x72f14c: StoreField: r1->field_13 = r0
    //     0x72f14c: stur            w0, [x1, #0x13]
    // 0x72f150: ldur            x2, [fp, #-0x18]
    // 0x72f154: StoreField: r1->field_b = r2
    //     0x72f154: stur            w2, [x1, #0xb]
    // 0x72f158: ldur            x2, [fp, #-8]
    // 0x72f15c: LoadField: r3 = r2->field_1b
    //     0x72f15c: ldur            w3, [x2, #0x1b]
    // 0x72f160: DecompressPointer r3
    //     0x72f160: add             x3, x3, HEAP, lsl #32
    // 0x72f164: stur            x3, [fp, #-0x10]
    // 0x72f168: r0 = Scaffold()
    //     0x72f168: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x72f16c: ldur            x1, [fp, #-0x20]
    // 0x72f170: ArrayStore: r0[0] = r1  ; List_4
    //     0x72f170: stur            w1, [x0, #0x17]
    // 0x72f174: ldur            x1, [fp, #-0x28]
    // 0x72f178: StoreField: r0->field_1b = r1
    //     0x72f178: stur            w1, [x0, #0x1b]
    // 0x72f17c: r1 = Instance_AlignmentDirectional
    //     0x72f17c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x72f180: ldr             x1, [x1, #0x350]
    // 0x72f184: StoreField: r0->field_2f = r1
    //     0x72f184: stur            w1, [x0, #0x2f]
    // 0x72f188: ldur            x1, [fp, #-0x10]
    // 0x72f18c: StoreField: r0->field_4f = r1
    //     0x72f18c: stur            w1, [x0, #0x4f]
    // 0x72f190: r1 = true
    //     0x72f190: add             x1, NULL, #0x20  ; true
    // 0x72f194: StoreField: r0->field_5f = r1
    //     0x72f194: stur            w1, [x0, #0x5f]
    // 0x72f198: r2 = Instance_DragStartBehavior
    //     0x72f198: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72f19c: StoreField: r0->field_63 = r2
    //     0x72f19c: stur            w2, [x0, #0x63]
    // 0x72f1a0: r2 = false
    //     0x72f1a0: add             x2, NULL, #0x30  ; false
    // 0x72f1a4: StoreField: r0->field_b = r2
    //     0x72f1a4: stur            w2, [x0, #0xb]
    // 0x72f1a8: StoreField: r0->field_f = r1
    //     0x72f1a8: stur            w1, [x0, #0xf]
    // 0x72f1ac: StoreField: r0->field_13 = r2
    //     0x72f1ac: stur            w2, [x0, #0x13]
    // 0x72f1b0: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x72f1b0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x72f1b4: ldr             x2, [x2, #0x358]
    // 0x72f1b8: StoreField: r0->field_4b = r2
    //     0x72f1b8: stur            w2, [x0, #0x4b]
    // 0x72f1bc: StoreField: r0->field_6b = r1
    //     0x72f1bc: stur            w1, [x0, #0x6b]
    // 0x72f1c0: StoreField: r0->field_6f = r1
    //     0x72f1c0: stur            w1, [x0, #0x6f]
    // 0x72f1c4: LeaveFrame
    //     0x72f1c4: mov             SP, fp
    //     0x72f1c8: ldp             fp, lr, [SP], #0x10
    // 0x72f1cc: ret
    //     0x72f1cc: ret             
    // 0x72f1d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f1d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f1d4: b               #0x72debc
    // 0x72f1d8: r9 = _fadeAnimation
    //     0x72f1d8: add             x9, PP, #0x15, lsl #12  ; [pp+0x15e60] Field <_HomeScreenState@934112506._fadeAnimation@934112506>: late (offset: 0x20)
    //     0x72f1dc: ldr             x9, [x9, #0xe60]
    // 0x72f1e0: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x72f1e0: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x72f1e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f1e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f1e8: b               #0x72e398
    // 0x72f1ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72f1ec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72f1f0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f1f0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x72f1f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72f1f4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72f1f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f1f8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f1fc: b               #0x72e7cc
    // 0x72f200: SaveReg d0
    //     0x72f200: str             q0, [SP, #-0x10]!
    // 0x72f204: r0 = AllocateDouble()
    //     0x72f204: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72f208: mov             x1, x0
    // 0x72f20c: RestoreReg d0
    //     0x72f20c: ldr             q0, [SP], #0x10
    // 0x72f210: b               #0x72e8b8
    // 0x72f214: r0 = StackOverflowSharedWithFPURegs()
    //     0x72f214: bl              #0x928228  ; StackOverflowSharedWithFPURegsStub
    // 0x72f218: b               #0x72e8d4
    // 0x72f21c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f21c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x72f220: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f220: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x72f224: SaveReg d0
    //     0x72f224: str             q0, [SP, #-0x10]!
    // 0x72f228: r0 = AllocateDouble()
    //     0x72f228: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72f22c: mov             x2, x0
    // 0x72f230: RestoreReg d0
    //     0x72f230: ldr             q0, [SP], #0x10
    // 0x72f234: b               #0x72e9f4
    // 0x72f238: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f238: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x72f23c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f23c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] NotificationCard <anonymous closure>(dynamic, NotificationModel) {
    // ** addr: 0x72f7bc, size: 0x20
    // 0x72f7bc: EnterFrame
    //     0x72f7bc: stp             fp, lr, [SP, #-0x10]!
    //     0x72f7c0: mov             fp, SP
    // 0x72f7c4: r0 = NotificationCard()
    //     0x72f7c4: bl              #0x72f7dc  ; AllocateNotificationCardStub -> NotificationCard (size=0x10)
    // 0x72f7c8: ldr             x1, [fp, #0x10]
    // 0x72f7cc: StoreField: r0->field_b = r1
    //     0x72f7cc: stur            w1, [x0, #0xb]
    // 0x72f7d0: LeaveFrame
    //     0x72f7d0: mov             SP, fp
    //     0x72f7d4: ldp             fp, lr, [SP], #0x10
    // 0x72f7d8: ret
    //     0x72f7d8: ret             
  }
  [closure] void <anonymous closure>(dynamic, int) {
    // ** addr: 0x72f7e8, size: 0x58
    // 0x72f7e8: EnterFrame
    //     0x72f7e8: stp             fp, lr, [SP, #-0x10]!
    //     0x72f7ec: mov             fp, SP
    // 0x72f7f0: ldr             x0, [fp, #0x18]
    // 0x72f7f4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72f7f4: ldur            w1, [x0, #0x17]
    // 0x72f7f8: DecompressPointer r1
    //     0x72f7f8: add             x1, x1, HEAP, lsl #32
    // 0x72f7fc: CheckStackOverflow
    //     0x72f7fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f800: cmp             SP, x16
    //     0x72f804: b.ls            #0x72f838
    // 0x72f808: LoadField: r0 = r1->field_f
    //     0x72f808: ldur            w0, [x1, #0xf]
    // 0x72f80c: DecompressPointer r0
    //     0x72f80c: add             x0, x0, HEAP, lsl #32
    // 0x72f810: ldr             x1, [fp, #0x10]
    // 0x72f814: r2 = LoadInt32Instr(r1)
    //     0x72f814: sbfx            x2, x1, #1, #0x1f
    //     0x72f818: tbz             w1, #0, #0x72f820
    //     0x72f81c: ldur            x2, [x1, #7]
    // 0x72f820: mov             x1, x0
    // 0x72f824: r0 = setCurrentPrayerIndex()
    //     0x72f824: bl              #0x72f840  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::setCurrentPrayerIndex
    // 0x72f828: r0 = Null
    //     0x72f828: mov             x0, NULL
    // 0x72f82c: LeaveFrame
    //     0x72f82c: mov             SP, fp
    //     0x72f830: ldp             fp, lr, [SP], #0x10
    // 0x72f834: ret
    //     0x72f834: ret             
    // 0x72f838: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f838: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f83c: b               #0x72f808
  }
  [closure] PrayerTimesCard <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x72f874, size: 0x380
    // 0x72f874: EnterFrame
    //     0x72f874: stp             fp, lr, [SP, #-0x10]!
    //     0x72f878: mov             fp, SP
    // 0x72f87c: AllocStack(0x18)
    //     0x72f87c: sub             SP, SP, #0x18
    // 0x72f880: CheckStackOverflow
    //     0x72f880: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f884: cmp             SP, x16
    //     0x72f888: b.ls            #0x72fbec
    // 0x72f88c: ldr             x0, [fp, #0x10]
    // 0x72f890: cbnz            w0, #0x72fa44
    // 0x72f894: r0 = LoadStaticField(0x1008)
    //     0x72f894: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72f898: ldr             x0, [x0, #0x2010]
    // 0x72f89c: stur            x0, [fp, #-8]
    // 0x72f8a0: r1 = Null
    //     0x72f8a0: mov             x1, NULL
    // 0x72f8a4: r2 = 24
    //     0x72f8a4: mov             x2, #0x18
    // 0x72f8a8: r0 = AllocateArray()
    //     0x72f8a8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72f8ac: r16 = "İmsak"
    //     0x72f8ac: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e68] "İmsak"
    //     0x72f8b0: ldr             x16, [x16, #0xe68]
    // 0x72f8b4: StoreField: r0->field_f = r16
    //     0x72f8b4: stur            w16, [x0, #0xf]
    // 0x72f8b8: ldur            x1, [fp, #-8]
    // 0x72f8bc: cmp             w1, NULL
    // 0x72f8c0: b.ne            #0x72f8cc
    // 0x72f8c4: r2 = Null
    //     0x72f8c4: mov             x2, NULL
    // 0x72f8c8: b               #0x72f8d4
    // 0x72f8cc: LoadField: r2 = r1->field_1f
    //     0x72f8cc: ldur            w2, [x1, #0x1f]
    // 0x72f8d0: DecompressPointer r2
    //     0x72f8d0: add             x2, x2, HEAP, lsl #32
    // 0x72f8d4: cmp             w2, NULL
    // 0x72f8d8: b.ne            #0x72f8e4
    // 0x72f8dc: r2 = "06:15"
    //     0x72f8dc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e70] "06:15"
    //     0x72f8e0: ldr             x2, [x2, #0xe70]
    // 0x72f8e4: StoreField: r0->field_13 = r2
    //     0x72f8e4: stur            w2, [x0, #0x13]
    // 0x72f8e8: r16 = "Güneş"
    //     0x72f8e8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e78] "Güneş"
    //     0x72f8ec: ldr             x16, [x16, #0xe78]
    // 0x72f8f0: ArrayStore: r0[0] = r16  ; List_4
    //     0x72f8f0: stur            w16, [x0, #0x17]
    // 0x72f8f4: cmp             w1, NULL
    // 0x72f8f8: b.ne            #0x72f904
    // 0x72f8fc: r2 = Null
    //     0x72f8fc: mov             x2, NULL
    // 0x72f900: b               #0x72f90c
    // 0x72f904: LoadField: r2 = r1->field_13
    //     0x72f904: ldur            w2, [x1, #0x13]
    // 0x72f908: DecompressPointer r2
    //     0x72f908: add             x2, x2, HEAP, lsl #32
    // 0x72f90c: cmp             w2, NULL
    // 0x72f910: b.ne            #0x72f91c
    // 0x72f914: r2 = "07:10"
    //     0x72f914: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e80] "07:10"
    //     0x72f918: ldr             x2, [x2, #0xe80]
    // 0x72f91c: StoreField: r0->field_1b = r2
    //     0x72f91c: stur            w2, [x0, #0x1b]
    // 0x72f920: r16 = "Öğle"
    //     0x72f920: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e88] "Öğle"
    //     0x72f924: ldr             x16, [x16, #0xe88]
    // 0x72f928: StoreField: r0->field_1f = r16
    //     0x72f928: stur            w16, [x0, #0x1f]
    // 0x72f92c: cmp             w1, NULL
    // 0x72f930: b.ne            #0x72f93c
    // 0x72f934: r2 = Null
    //     0x72f934: mov             x2, NULL
    // 0x72f938: b               #0x72f944
    // 0x72f93c: LoadField: r2 = r1->field_23
    //     0x72f93c: ldur            w2, [x1, #0x23]
    // 0x72f940: DecompressPointer r2
    //     0x72f940: add             x2, x2, HEAP, lsl #32
    // 0x72f944: cmp             w2, NULL
    // 0x72f948: b.ne            #0x72f954
    // 0x72f94c: r2 = "12:42"
    //     0x72f94c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e90] "12:42"
    //     0x72f950: ldr             x2, [x2, #0xe90]
    // 0x72f954: StoreField: r0->field_23 = r2
    //     0x72f954: stur            w2, [x0, #0x23]
    // 0x72f958: r16 = "İkindi"
    //     0x72f958: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e98] "İkindi"
    //     0x72f95c: ldr             x16, [x16, #0xe98]
    // 0x72f960: StoreField: r0->field_27 = r16
    //     0x72f960: stur            w16, [x0, #0x27]
    // 0x72f964: cmp             w1, NULL
    // 0x72f968: b.ne            #0x72f974
    // 0x72f96c: r2 = Null
    //     0x72f96c: mov             x2, NULL
    // 0x72f970: b               #0x72f97c
    // 0x72f974: LoadField: r2 = r1->field_1b
    //     0x72f974: ldur            w2, [x1, #0x1b]
    // 0x72f978: DecompressPointer r2
    //     0x72f978: add             x2, x2, HEAP, lsl #32
    // 0x72f97c: cmp             w2, NULL
    // 0x72f980: b.ne            #0x72f98c
    // 0x72f984: r2 = "15:09"
    //     0x72f984: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ea0] "15:09"
    //     0x72f988: ldr             x2, [x2, #0xea0]
    // 0x72f98c: StoreField: r0->field_2b = r2
    //     0x72f98c: stur            w2, [x0, #0x2b]
    // 0x72f990: r16 = "Akşam"
    //     0x72f990: add             x16, PP, #0x15, lsl #12  ; [pp+0x15ea8] "Akşam"
    //     0x72f994: ldr             x16, [x16, #0xea8]
    // 0x72f998: StoreField: r0->field_2f = r16
    //     0x72f998: stur            w16, [x0, #0x2f]
    // 0x72f99c: cmp             w1, NULL
    // 0x72f9a0: b.ne            #0x72f9ac
    // 0x72f9a4: r2 = Null
    //     0x72f9a4: mov             x2, NULL
    // 0x72f9a8: b               #0x72f9b4
    // 0x72f9ac: LoadField: r2 = r1->field_7
    //     0x72f9ac: ldur            w2, [x1, #7]
    // 0x72f9b0: DecompressPointer r2
    //     0x72f9b0: add             x2, x2, HEAP, lsl #32
    // 0x72f9b4: cmp             w2, NULL
    // 0x72f9b8: b.ne            #0x72f9c4
    // 0x72f9bc: r2 = "17:30"
    //     0x72f9bc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15eb0] "17:30"
    //     0x72f9c0: ldr             x2, [x2, #0xeb0]
    // 0x72f9c4: StoreField: r0->field_33 = r2
    //     0x72f9c4: stur            w2, [x0, #0x33]
    // 0x72f9c8: r16 = "Yatsı"
    //     0x72f9c8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15eb8] "Yatsı"
    //     0x72f9cc: ldr             x16, [x16, #0xeb8]
    // 0x72f9d0: StoreField: r0->field_37 = r16
    //     0x72f9d0: stur            w16, [x0, #0x37]
    // 0x72f9d4: cmp             w1, NULL
    // 0x72f9d8: b.ne            #0x72f9e4
    // 0x72f9dc: r1 = Null
    //     0x72f9dc: mov             x1, NULL
    // 0x72f9e0: b               #0x72f9f0
    // 0x72f9e4: LoadField: r2 = r1->field_27
    //     0x72f9e4: ldur            w2, [x1, #0x27]
    // 0x72f9e8: DecompressPointer r2
    //     0x72f9e8: add             x2, x2, HEAP, lsl #32
    // 0x72f9ec: mov             x1, x2
    // 0x72f9f0: cmp             w1, NULL
    // 0x72f9f4: b.ne            #0x72fa00
    // 0x72f9f8: r1 = "18:53"
    //     0x72f9f8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ec0] "18:53"
    //     0x72f9fc: ldr             x1, [x1, #0xec0]
    // 0x72fa00: StoreField: r0->field_3b = r1
    //     0x72fa00: stur            w1, [x0, #0x3b]
    // 0x72fa04: r16 = <String, String>
    //     0x72fa04: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x72fa08: ldr             x16, [x16, #0x2a8]
    // 0x72fa0c: stp             x0, x16, [SP]
    // 0x72fa10: r0 = Map._fromLiteral()
    //     0x72fa10: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x72fa14: stur            x0, [fp, #-8]
    // 0x72fa18: r0 = PrayerTimesCard()
    //     0x72fa18: bl              #0x72fbf4  ; AllocatePrayerTimesCardStub -> PrayerTimesCard (size=0x14)
    // 0x72fa1c: mov             x1, x0
    // 0x72fa20: r0 = "Mekke"
    //     0x72fa20: add             x0, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x72fa24: ldr             x0, [x0, #0xdf0]
    // 0x72fa28: StoreField: r1->field_b = r0
    //     0x72fa28: stur            w0, [x1, #0xb]
    // 0x72fa2c: ldur            x0, [fp, #-8]
    // 0x72fa30: StoreField: r1->field_f = r0
    //     0x72fa30: stur            w0, [x1, #0xf]
    // 0x72fa34: mov             x0, x1
    // 0x72fa38: LeaveFrame
    //     0x72fa38: mov             SP, fp
    //     0x72fa3c: ldp             fp, lr, [SP], #0x10
    // 0x72fa40: ret
    //     0x72fa40: ret             
    // 0x72fa44: r0 = LoadStaticField(0x100c)
    //     0x72fa44: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72fa48: ldr             x0, [x0, #0x2018]
    // 0x72fa4c: stur            x0, [fp, #-8]
    // 0x72fa50: r1 = Null
    //     0x72fa50: mov             x1, NULL
    // 0x72fa54: r2 = 24
    //     0x72fa54: mov             x2, #0x18
    // 0x72fa58: r0 = AllocateArray()
    //     0x72fa58: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72fa5c: r16 = "İmsak"
    //     0x72fa5c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e68] "İmsak"
    //     0x72fa60: ldr             x16, [x16, #0xe68]
    // 0x72fa64: StoreField: r0->field_f = r16
    //     0x72fa64: stur            w16, [x0, #0xf]
    // 0x72fa68: ldur            x1, [fp, #-8]
    // 0x72fa6c: cmp             w1, NULL
    // 0x72fa70: b.ne            #0x72fa7c
    // 0x72fa74: r2 = Null
    //     0x72fa74: mov             x2, NULL
    // 0x72fa78: b               #0x72fa84
    // 0x72fa7c: LoadField: r2 = r1->field_1f
    //     0x72fa7c: ldur            w2, [x1, #0x1f]
    // 0x72fa80: DecompressPointer r2
    //     0x72fa80: add             x2, x2, HEAP, lsl #32
    // 0x72fa84: cmp             w2, NULL
    // 0x72fa88: b.ne            #0x72fa94
    // 0x72fa8c: r2 = "06:05"
    //     0x72fa8c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ec8] "06:05"
    //     0x72fa90: ldr             x2, [x2, #0xec8]
    // 0x72fa94: StoreField: r0->field_13 = r2
    //     0x72fa94: stur            w2, [x0, #0x13]
    // 0x72fa98: r16 = "Güneş"
    //     0x72fa98: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e78] "Güneş"
    //     0x72fa9c: ldr             x16, [x16, #0xe78]
    // 0x72faa0: ArrayStore: r0[0] = r16  ; List_4
    //     0x72faa0: stur            w16, [x0, #0x17]
    // 0x72faa4: cmp             w1, NULL
    // 0x72faa8: b.ne            #0x72fab4
    // 0x72faac: r2 = Null
    //     0x72faac: mov             x2, NULL
    // 0x72fab0: b               #0x72fabc
    // 0x72fab4: LoadField: r2 = r1->field_13
    //     0x72fab4: ldur            w2, [x1, #0x13]
    // 0x72fab8: DecompressPointer r2
    //     0x72fab8: add             x2, x2, HEAP, lsl #32
    // 0x72fabc: cmp             w2, NULL
    // 0x72fac0: b.ne            #0x72facc
    // 0x72fac4: r2 = "07:00"
    //     0x72fac4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ed0] "07:00"
    //     0x72fac8: ldr             x2, [x2, #0xed0]
    // 0x72facc: StoreField: r0->field_1b = r2
    //     0x72facc: stur            w2, [x0, #0x1b]
    // 0x72fad0: r16 = "Öğle"
    //     0x72fad0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e88] "Öğle"
    //     0x72fad4: ldr             x16, [x16, #0xe88]
    // 0x72fad8: StoreField: r0->field_1f = r16
    //     0x72fad8: stur            w16, [x0, #0x1f]
    // 0x72fadc: cmp             w1, NULL
    // 0x72fae0: b.ne            #0x72faec
    // 0x72fae4: r2 = Null
    //     0x72fae4: mov             x2, NULL
    // 0x72fae8: b               #0x72faf4
    // 0x72faec: LoadField: r2 = r1->field_23
    //     0x72faec: ldur            w2, [x1, #0x23]
    // 0x72faf0: DecompressPointer r2
    //     0x72faf0: add             x2, x2, HEAP, lsl #32
    // 0x72faf4: cmp             w2, NULL
    // 0x72faf8: b.ne            #0x72fb04
    // 0x72fafc: r2 = "12:32"
    //     0x72fafc: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ed8] "12:32"
    //     0x72fb00: ldr             x2, [x2, #0xed8]
    // 0x72fb04: StoreField: r0->field_23 = r2
    //     0x72fb04: stur            w2, [x0, #0x23]
    // 0x72fb08: r16 = "İkindi"
    //     0x72fb08: add             x16, PP, #0x15, lsl #12  ; [pp+0x15e98] "İkindi"
    //     0x72fb0c: ldr             x16, [x16, #0xe98]
    // 0x72fb10: StoreField: r0->field_27 = r16
    //     0x72fb10: stur            w16, [x0, #0x27]
    // 0x72fb14: cmp             w1, NULL
    // 0x72fb18: b.ne            #0x72fb24
    // 0x72fb1c: r2 = Null
    //     0x72fb1c: mov             x2, NULL
    // 0x72fb20: b               #0x72fb2c
    // 0x72fb24: LoadField: r2 = r1->field_1b
    //     0x72fb24: ldur            w2, [x1, #0x1b]
    // 0x72fb28: DecompressPointer r2
    //     0x72fb28: add             x2, x2, HEAP, lsl #32
    // 0x72fb2c: cmp             w2, NULL
    // 0x72fb30: b.ne            #0x72fb3c
    // 0x72fb34: r2 = "14:59"
    //     0x72fb34: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ee0] "14:59"
    //     0x72fb38: ldr             x2, [x2, #0xee0]
    // 0x72fb3c: StoreField: r0->field_2b = r2
    //     0x72fb3c: stur            w2, [x0, #0x2b]
    // 0x72fb40: r16 = "Akşam"
    //     0x72fb40: add             x16, PP, #0x15, lsl #12  ; [pp+0x15ea8] "Akşam"
    //     0x72fb44: ldr             x16, [x16, #0xea8]
    // 0x72fb48: StoreField: r0->field_2f = r16
    //     0x72fb48: stur            w16, [x0, #0x2f]
    // 0x72fb4c: cmp             w1, NULL
    // 0x72fb50: b.ne            #0x72fb5c
    // 0x72fb54: r2 = Null
    //     0x72fb54: mov             x2, NULL
    // 0x72fb58: b               #0x72fb64
    // 0x72fb5c: LoadField: r2 = r1->field_7
    //     0x72fb5c: ldur            w2, [x1, #7]
    // 0x72fb60: DecompressPointer r2
    //     0x72fb60: add             x2, x2, HEAP, lsl #32
    // 0x72fb64: cmp             w2, NULL
    // 0x72fb68: b.ne            #0x72fb74
    // 0x72fb6c: r2 = "17:20"
    //     0x72fb6c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ee8] "17:20"
    //     0x72fb70: ldr             x2, [x2, #0xee8]
    // 0x72fb74: StoreField: r0->field_33 = r2
    //     0x72fb74: stur            w2, [x0, #0x33]
    // 0x72fb78: r16 = "Yatsı"
    //     0x72fb78: add             x16, PP, #0x15, lsl #12  ; [pp+0x15eb8] "Yatsı"
    //     0x72fb7c: ldr             x16, [x16, #0xeb8]
    // 0x72fb80: StoreField: r0->field_37 = r16
    //     0x72fb80: stur            w16, [x0, #0x37]
    // 0x72fb84: cmp             w1, NULL
    // 0x72fb88: b.ne            #0x72fb94
    // 0x72fb8c: r1 = Null
    //     0x72fb8c: mov             x1, NULL
    // 0x72fb90: b               #0x72fba0
    // 0x72fb94: LoadField: r2 = r1->field_27
    //     0x72fb94: ldur            w2, [x1, #0x27]
    // 0x72fb98: DecompressPointer r2
    //     0x72fb98: add             x2, x2, HEAP, lsl #32
    // 0x72fb9c: mov             x1, x2
    // 0x72fba0: cmp             w1, NULL
    // 0x72fba4: b.ne            #0x72fbb0
    // 0x72fba8: r1 = "18:43"
    //     0x72fba8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ef0] "18:43"
    //     0x72fbac: ldr             x1, [x1, #0xef0]
    // 0x72fbb0: StoreField: r0->field_3b = r1
    //     0x72fbb0: stur            w1, [x0, #0x3b]
    // 0x72fbb4: r16 = <String, String>
    //     0x72fbb4: add             x16, PP, #9, lsl #12  ; [pp+0x92a8] TypeArguments: <String, String>
    //     0x72fbb8: ldr             x16, [x16, #0x2a8]
    // 0x72fbbc: stp             x0, x16, [SP]
    // 0x72fbc0: r0 = Map._fromLiteral()
    //     0x72fbc0: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x72fbc4: stur            x0, [fp, #-8]
    // 0x72fbc8: r0 = PrayerTimesCard()
    //     0x72fbc8: bl              #0x72fbf4  ; AllocatePrayerTimesCardStub -> PrayerTimesCard (size=0x14)
    // 0x72fbcc: r1 = "Medine"
    //     0x72fbcc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x72fbd0: ldr             x1, [x1, #0xe00]
    // 0x72fbd4: StoreField: r0->field_b = r1
    //     0x72fbd4: stur            w1, [x0, #0xb]
    // 0x72fbd8: ldur            x1, [fp, #-8]
    // 0x72fbdc: StoreField: r0->field_f = r1
    //     0x72fbdc: stur            w1, [x0, #0xf]
    // 0x72fbe0: LeaveFrame
    //     0x72fbe0: mov             SP, fp
    //     0x72fbe4: ldp             fp, lr, [SP], #0x10
    // 0x72fbe8: ret
    //     0x72fbe8: ret             
    // 0x72fbec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72fbec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72fbf0: b               #0x72f88c
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c650, size: 0x24
    // 0x74c650: EnterFrame
    //     0x74c650: stp             fp, lr, [SP, #-0x10]!
    //     0x74c654: mov             fp, SP
    // 0x74c658: ldr             x2, [fp, #0x10]
    // 0x74c65c: r1 = Function 'dispose':.
    //     0x74c65c: add             x1, PP, #0x27, lsl #12  ; [pp+0x27570] AnonymousClosure: (0x74c674), in [package:umrem_demo/features/home/screens/home_screen.dart] _HomeScreenState::dispose (0x753ef4)
    //     0x74c660: ldr             x1, [x1, #0x570]
    // 0x74c664: r0 = AllocateClosure()
    //     0x74c664: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c668: LeaveFrame
    //     0x74c668: mov             SP, fp
    //     0x74c66c: ldp             fp, lr, [SP], #0x10
    // 0x74c670: ret
    //     0x74c670: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c674, size: 0x38
    // 0x74c674: EnterFrame
    //     0x74c674: stp             fp, lr, [SP, #-0x10]!
    //     0x74c678: mov             fp, SP
    // 0x74c67c: ldr             x0, [fp, #0x10]
    // 0x74c680: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c680: ldur            w1, [x0, #0x17]
    // 0x74c684: DecompressPointer r1
    //     0x74c684: add             x1, x1, HEAP, lsl #32
    // 0x74c688: CheckStackOverflow
    //     0x74c688: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c68c: cmp             SP, x16
    //     0x74c690: b.ls            #0x74c6a4
    // 0x74c694: r0 = dispose()
    //     0x74c694: bl              #0x753ef4  ; [package:umrem_demo/features/home/screens/home_screen.dart] _HomeScreenState::dispose
    // 0x74c698: LeaveFrame
    //     0x74c698: mov             SP, fp
    //     0x74c69c: ldp             fp, lr, [SP], #0x10
    // 0x74c6a0: ret
    //     0x74c6a0: ret             
    // 0x74c6a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c6a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c6a8: b               #0x74c694
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753ef4, size: 0x64
    // 0x753ef4: EnterFrame
    //     0x753ef4: stp             fp, lr, [SP, #-0x10]!
    //     0x753ef8: mov             fp, SP
    // 0x753efc: AllocStack(0x8)
    //     0x753efc: sub             SP, SP, #8
    // 0x753f00: SetupParameters(_HomeScreenState this /* r1 => r0, fp-0x8 */)
    //     0x753f00: mov             x0, x1
    //     0x753f04: stur            x1, [fp, #-8]
    // 0x753f08: CheckStackOverflow
    //     0x753f08: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753f0c: cmp             SP, x16
    //     0x753f10: b.ls            #0x753f44
    // 0x753f14: LoadField: r1 = r0->field_1b
    //     0x753f14: ldur            w1, [x0, #0x1b]
    // 0x753f18: DecompressPointer r1
    //     0x753f18: add             x1, x1, HEAP, lsl #32
    // 0x753f1c: r16 = Sentinel
    //     0x753f1c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x753f20: cmp             w1, w16
    // 0x753f24: b.eq            #0x753f4c
    // 0x753f28: r0 = dispose()
    //     0x753f28: bl              #0x4ab398  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::dispose
    // 0x753f2c: ldur            x1, [fp, #-8]
    // 0x753f30: r0 = dispose()
    //     0x753f30: bl              #0x753f58  ; [package:umrem_demo/features/home/screens/home_screen.dart] __HomeScreenState&State&TickerProviderStateMixin::dispose
    // 0x753f34: r0 = Null
    //     0x753f34: mov             x0, NULL
    // 0x753f38: LeaveFrame
    //     0x753f38: mov             SP, fp
    //     0x753f3c: ldp             fp, lr, [SP], #0x10
    // 0x753f40: ret
    //     0x753f40: ret             
    // 0x753f44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753f44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753f48: b               #0x753f14
    // 0x753f4c: r9 = _fadeController
    //     0x753f4c: add             x9, PP, #0x15, lsl #12  ; [pp+0x15ef8] Field <_HomeScreenState@934112506._fadeController@934112506>: late (offset: 0x1c)
    //     0x753f50: ldr             x9, [x9, #0xef8]
    // 0x753f54: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x753f54: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
}

// class id: 3198, size: 0x10, field offset: 0xc
//   const constructor, 
class HomeScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf094, size: 0x30
    // 0x7bf094: EnterFrame
    //     0x7bf094: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf098: mov             fp, SP
    // 0x7bf09c: mov             x0, x1
    // 0x7bf0a0: r1 = <HomeScreen>
    //     0x7bf0a0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12568] TypeArguments: <HomeScreen>
    //     0x7bf0a4: ldr             x1, [x1, #0x568]
    // 0x7bf0a8: r0 = _HomeScreenState()
    //     0x7bf0a8: bl              #0x7bf0c4  ; Allocate_HomeScreenStateStub -> _HomeScreenState (size=0x24)
    // 0x7bf0ac: r1 = Sentinel
    //     0x7bf0ac: ldr             x1, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bf0b0: StoreField: r0->field_1b = r1
    //     0x7bf0b0: stur            w1, [x0, #0x1b]
    // 0x7bf0b4: StoreField: r0->field_1f = r1
    //     0x7bf0b4: stur            w1, [x0, #0x1f]
    // 0x7bf0b8: LeaveFrame
    //     0x7bf0b8: mov             SP, fp
    //     0x7bf0bc: ldp             fp, lr, [SP], #0x10
    // 0x7bf0c0: ret
    //     0x7bf0c0: ret             
  }
}
