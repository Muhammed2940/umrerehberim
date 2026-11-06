// lib: , url: package:umrem_demo/features/admin/screens/all_locations_map_view.dart

// class id: 1049528, size: 0x8
class :: {
}

// class id: 2932, size: 0xc, field offset: 0xc
//   const constructor, 
class _AllLocationsMapContent extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ddc50, size: 0x144
    // 0x7ddc50: EnterFrame
    //     0x7ddc50: stp             fp, lr, [SP, #-0x10]!
    //     0x7ddc54: mov             fp, SP
    // 0x7ddc58: AllocStack(0x30)
    //     0x7ddc58: sub             SP, SP, #0x30
    // 0x7ddc5c: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */)
    //     0x7ddc5c: stur            x2, [fp, #-8]
    // 0x7ddc60: CheckStackOverflow
    //     0x7ddc60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ddc64: cmp             SP, x16
    //     0x7ddc68: b.ls            #0x7ddd8c
    // 0x7ddc6c: r1 = 1
    //     0x7ddc6c: mov             x1, #1
    // 0x7ddc70: r0 = AllocateContext()
    //     0x7ddc70: bl              #0x927010  ; AllocateContextStub
    // 0x7ddc74: mov             x1, x0
    // 0x7ddc78: ldur            x0, [fp, #-8]
    // 0x7ddc7c: StoreField: r1->field_f = r0
    //     0x7ddc7c: stur            w0, [x1, #0xf]
    // 0x7ddc80: mov             x2, x1
    // 0x7ddc84: r1 = Function '<anonymous closure>':.
    //     0x7ddc84: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c588] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x7ddc88: ldr             x1, [x1, #0x588]
    // 0x7ddc8c: r0 = AllocateClosure()
    //     0x7ddc8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ddc90: stur            x0, [fp, #-8]
    // 0x7ddc94: r0 = IconButton()
    //     0x7ddc94: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7ddc98: mov             x1, x0
    // 0x7ddc9c: ldur            x0, [fp, #-8]
    // 0x7ddca0: stur            x1, [fp, #-0x10]
    // 0x7ddca4: StoreField: r1->field_3b = r0
    //     0x7ddca4: stur            w0, [x1, #0x3b]
    // 0x7ddca8: r0 = false
    //     0x7ddca8: add             x0, NULL, #0x30  ; false
    // 0x7ddcac: StoreField: r1->field_4f = r0
    //     0x7ddcac: stur            w0, [x1, #0x4f]
    // 0x7ddcb0: r2 = Instance_Icon
    //     0x7ddcb0: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c4d8] Obj!Icon@a1e071
    //     0x7ddcb4: ldr             x2, [x2, #0x4d8]
    // 0x7ddcb8: StoreField: r1->field_1f = r2
    //     0x7ddcb8: stur            w2, [x1, #0x1f]
    // 0x7ddcbc: r2 = Instance__IconButtonVariant
    //     0x7ddcbc: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7ddcc0: ldr             x2, [x2, #0x1b8]
    // 0x7ddcc4: StoreField: r1->field_6f = r2
    //     0x7ddcc4: stur            w2, [x1, #0x6f]
    // 0x7ddcc8: r0 = AppBar()
    //     0x7ddcc8: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7ddccc: stur            x0, [fp, #-8]
    // 0x7ddcd0: ldur            x16, [fp, #-0x10]
    // 0x7ddcd4: r30 = true
    //     0x7ddcd4: add             lr, NULL, #0x20  ; true
    // 0x7ddcd8: stp             lr, x16, [SP, #8]
    // 0x7ddcdc: r16 = 0.000000
    //     0x7ddcdc: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7ddce0: str             x16, [SP]
    // 0x7ddce4: mov             x1, x0
    // 0x7ddce8: r2 = Instance_Text
    //     0x7ddce8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12750] Obj!Text@a1d5c1
    //     0x7ddcec: ldr             x2, [x2, #0x750]
    // 0x7ddcf0: r4 = const [0, 0x5, 0x3, 0x2, centerTitle, 0x3, elevation, 0x4, leading, 0x2, null]
    //     0x7ddcf0: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c4e8] List(11) [0, 0x5, 0x3, 0x2, "centerTitle", 0x3, "elevation", 0x4, "leading", 0x2, Null]
    //     0x7ddcf4: ldr             x4, [x4, #0x4e8]
    // 0x7ddcf8: r0 = AppBar()
    //     0x7ddcf8: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7ddcfc: r1 = Function '<anonymous closure>':.
    //     0x7ddcfc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c590] AnonymousClosure: (0x7ddd94), in [package:umrem_demo/features/admin/screens/all_locations_map_view.dart] _AllLocationsMapContent::build (0x7ddc50)
    //     0x7ddd00: ldr             x1, [x1, #0x590]
    // 0x7ddd04: r2 = Null
    //     0x7ddd04: mov             x2, NULL
    // 0x7ddd08: r0 = AllocateClosure()
    //     0x7ddd08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ddd0c: r1 = <LocationTrackingProvider>
    //     0x7ddd0c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7ddd10: ldr             x1, [x1, #0x9e8]
    // 0x7ddd14: stur            x0, [fp, #-0x10]
    // 0x7ddd18: r0 = Consumer()
    //     0x7ddd18: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7ddd1c: mov             x1, x0
    // 0x7ddd20: ldur            x0, [fp, #-0x10]
    // 0x7ddd24: stur            x1, [fp, #-0x18]
    // 0x7ddd28: StoreField: r1->field_13 = r0
    //     0x7ddd28: stur            w0, [x1, #0x13]
    // 0x7ddd2c: r0 = Scaffold()
    //     0x7ddd2c: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7ddd30: ldur            x1, [fp, #-8]
    // 0x7ddd34: ArrayStore: r0[0] = r1  ; List_4
    //     0x7ddd34: stur            w1, [x0, #0x17]
    // 0x7ddd38: ldur            x1, [fp, #-0x18]
    // 0x7ddd3c: StoreField: r0->field_1b = r1
    //     0x7ddd3c: stur            w1, [x0, #0x1b]
    // 0x7ddd40: r1 = Instance_AlignmentDirectional
    //     0x7ddd40: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7ddd44: ldr             x1, [x1, #0x350]
    // 0x7ddd48: StoreField: r0->field_2f = r1
    //     0x7ddd48: stur            w1, [x0, #0x2f]
    // 0x7ddd4c: r1 = true
    //     0x7ddd4c: add             x1, NULL, #0x20  ; true
    // 0x7ddd50: StoreField: r0->field_5f = r1
    //     0x7ddd50: stur            w1, [x0, #0x5f]
    // 0x7ddd54: r2 = Instance_DragStartBehavior
    //     0x7ddd54: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7ddd58: StoreField: r0->field_63 = r2
    //     0x7ddd58: stur            w2, [x0, #0x63]
    // 0x7ddd5c: r2 = false
    //     0x7ddd5c: add             x2, NULL, #0x30  ; false
    // 0x7ddd60: StoreField: r0->field_b = r2
    //     0x7ddd60: stur            w2, [x0, #0xb]
    // 0x7ddd64: StoreField: r0->field_f = r1
    //     0x7ddd64: stur            w1, [x0, #0xf]
    // 0x7ddd68: StoreField: r0->field_13 = r2
    //     0x7ddd68: stur            w2, [x0, #0x13]
    // 0x7ddd6c: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7ddd6c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7ddd70: ldr             x2, [x2, #0x358]
    // 0x7ddd74: StoreField: r0->field_4b = r2
    //     0x7ddd74: stur            w2, [x0, #0x4b]
    // 0x7ddd78: StoreField: r0->field_6b = r1
    //     0x7ddd78: stur            w1, [x0, #0x6b]
    // 0x7ddd7c: StoreField: r0->field_6f = r1
    //     0x7ddd7c: stur            w1, [x0, #0x6f]
    // 0x7ddd80: LeaveFrame
    //     0x7ddd80: mov             SP, fp
    //     0x7ddd84: ldp             fp, lr, [SP], #0x10
    // 0x7ddd88: ret
    //     0x7ddd88: ret             
    // 0x7ddd8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ddd8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ddd90: b               #0x7ddc6c
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, LocationTrackingProvider, Widget?) {
    // ** addr: 0x7ddd94, size: 0x3b0
    // 0x7ddd94: EnterFrame
    //     0x7ddd94: stp             fp, lr, [SP, #-0x10]!
    //     0x7ddd98: mov             fp, SP
    // 0x7ddd9c: AllocStack(0x30)
    //     0x7ddd9c: sub             SP, SP, #0x30
    // 0x7ddda0: SetupParameters([dynamic _ /* r0 */])
    //     0x7ddda0: ldr             x0, [fp, #0x28]
    //     0x7ddda4: ldur            w1, [x0, #0x17]
    //     0x7ddda8: add             x1, x1, HEAP, lsl #32
    //     0x7dddac: stur            x1, [fp, #-8]
    // 0x7dddb0: CheckStackOverflow
    //     0x7dddb0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dddb4: cmp             SP, x16
    //     0x7dddb8: b.ls            #0x7de13c
    // 0x7dddbc: r1 = 2
    //     0x7dddbc: mov             x1, #2
    // 0x7dddc0: r0 = AllocateContext()
    //     0x7dddc0: bl              #0x927010  ; AllocateContextStub
    // 0x7dddc4: mov             x2, x0
    // 0x7dddc8: ldur            x0, [fp, #-8]
    // 0x7dddcc: stur            x2, [fp, #-0x10]
    // 0x7dddd0: StoreField: r2->field_b = r0
    //     0x7dddd0: stur            w0, [x2, #0xb]
    // 0x7dddd4: ldr             x0, [fp, #0x18]
    // 0x7dddd8: LoadField: r1 = r0->field_37
    //     0x7dddd8: ldur            w1, [x0, #0x37]
    // 0x7ddddc: DecompressPointer r1
    //     0x7ddddc: add             x1, x1, HEAP, lsl #32
    // 0x7ddde0: tbnz            w1, #4, #0x7dddf8
    // 0x7ddde4: r0 = Instance_Center
    //     0x7ddde4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12710] Obj!Center@a1fdb1
    //     0x7ddde8: ldr             x0, [x0, #0x710]
    // 0x7dddec: LeaveFrame
    //     0x7dddec: mov             SP, fp
    //     0x7dddf0: ldp             fp, lr, [SP], #0x10
    // 0x7dddf4: ret
    //     0x7dddf4: ret             
    // 0x7dddf8: LoadField: r3 = r0->field_2b
    //     0x7dddf8: ldur            w3, [x0, #0x2b]
    // 0x7dddfc: DecompressPointer r3
    //     0x7dddfc: add             x3, x3, HEAP, lsl #32
    // 0x7dde00: stur            x3, [fp, #-8]
    // 0x7dde04: LoadField: r1 = r3->field_13
    //     0x7dde04: ldur            w1, [x3, #0x13]
    // 0x7dde08: r4 = LoadInt32Instr(r1)
    //     0x7dde08: sbfx            x4, x1, #1, #0x1f
    // 0x7dde0c: asr             x1, x4, #1
    // 0x7dde10: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x7dde10: ldur            w4, [x3, #0x17]
    // 0x7dde14: r5 = LoadInt32Instr(r4)
    //     0x7dde14: sbfx            x5, x4, #1, #0x1f
    // 0x7dde18: sub             x4, x1, x5
    // 0x7dde1c: cbnz            x4, #0x7dde34
    // 0x7dde20: r0 = Instance_Center
    //     0x7dde20: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c598] Obj!Center@a1feb1
    //     0x7dde24: ldr             x0, [x0, #0x598]
    // 0x7dde28: LeaveFrame
    //     0x7dde28: mov             SP, fp
    //     0x7dde2c: ldp             fp, lr, [SP], #0x10
    // 0x7dde30: ret
    //     0x7dde30: ret             
    // 0x7dde34: r1 = <Marker>
    //     0x7dde34: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5a0] TypeArguments: <Marker>
    //     0x7dde38: ldr             x1, [x1, #0x5a0]
    // 0x7dde3c: r0 = _Set()
    //     0x7dde3c: bl              #0x3f1e64  ; Allocate_SetStub -> _Set<X0> (size=-0x8)
    // 0x7dde40: mov             x3, x0
    // 0x7dde44: r0 = _Uint32List
    //     0x7dde44: ldr             x0, [PP, #0x170]  ; [pp+0x170] _Uint32List(1) [0x0]
    // 0x7dde48: stur            x3, [fp, #-0x18]
    // 0x7dde4c: StoreField: r3->field_1b = r0
    //     0x7dde4c: stur            w0, [x3, #0x1b]
    // 0x7dde50: StoreField: r3->field_b = rZR
    //     0x7dde50: stur            wzr, [x3, #0xb]
    // 0x7dde54: r0 = const []
    //     0x7dde54: ldr             x0, [PP, #0x178]  ; [pp+0x178] List(0) []
    // 0x7dde58: StoreField: r3->field_f = r0
    //     0x7dde58: stur            w0, [x3, #0xf]
    // 0x7dde5c: StoreField: r3->field_13 = rZR
    //     0x7dde5c: stur            wzr, [x3, #0x13]
    // 0x7dde60: ArrayStore: r3[0] = rZR  ; List_4
    //     0x7dde60: stur            wzr, [x3, #0x17]
    // 0x7dde64: ldur            x0, [fp, #-0x10]
    // 0x7dde68: StoreField: r0->field_f = r3
    //     0x7dde68: stur            w3, [x0, #0xf]
    // 0x7dde6c: StoreField: r0->field_13 = rNULL
    //     0x7dde6c: stur            NULL, [x0, #0x13]
    // 0x7dde70: mov             x2, x0
    // 0x7dde74: r1 = Function '<anonymous closure>':.
    //     0x7dde74: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5a8] AnonymousClosure: (0x7de2b4), in [package:umrem_demo/features/admin/screens/all_locations_map_view.dart] _AllLocationsMapContent::build (0x7ddc50)
    //     0x7dde78: ldr             x1, [x1, #0x5a8]
    // 0x7dde7c: r0 = AllocateClosure()
    //     0x7dde7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dde80: ldur            x1, [fp, #-8]
    // 0x7dde84: mov             x2, x0
    // 0x7dde88: r0 = forEach()
    //     0x7dde88: bl              #0x8b2ca4  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::forEach
    // 0x7dde8c: ldr             x0, [fp, #0x18]
    // 0x7dde90: LoadField: r2 = r0->field_2b
    //     0x7dde90: ldur            w2, [x0, #0x2b]
    // 0x7dde94: DecompressPointer r2
    //     0x7dde94: add             x2, x2, HEAP, lsl #32
    // 0x7dde98: stur            x2, [fp, #-8]
    // 0x7dde9c: r1 = <UserLocationModel>
    //     0x7dde9c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5b0] TypeArguments: <UserLocationModel>
    //     0x7ddea0: ldr             x1, [x1, #0x5b0]
    // 0x7ddea4: r0 = _CompactValuesIterable()
    //     0x7ddea4: bl              #0x3e33dc  ; Allocate_CompactValuesIterableStub -> _CompactValuesIterable<X0> (size=0x10)
    // 0x7ddea8: mov             x1, x0
    // 0x7ddeac: ldur            x0, [fp, #-8]
    // 0x7ddeb0: StoreField: r1->field_b = r0
    //     0x7ddeb0: stur            w0, [x1, #0xb]
    // 0x7ddeb4: r0 = first()
    //     0x7ddeb4: bl              #0x4da380  ; [dart:core] Iterable::first
    // 0x7ddeb8: LoadField: d0 = r0->field_f
    //     0x7ddeb8: ldur            d0, [x0, #0xf]
    // 0x7ddebc: d1 = 0.000000
    //     0x7ddebc: eor             v1.16b, v1.16b, v1.16b
    // 0x7ddec0: fcmp            d0, d1
    // 0x7ddec4: b.eq            #0x7ddff8
    // 0x7ddec8: ldr             x0, [fp, #0x18]
    // 0x7ddecc: LoadField: r2 = r0->field_2b
    //     0x7ddecc: ldur            w2, [x0, #0x2b]
    // 0x7dded0: DecompressPointer r2
    //     0x7dded0: add             x2, x2, HEAP, lsl #32
    // 0x7dded4: stur            x2, [fp, #-8]
    // 0x7dded8: r1 = <UserLocationModel>
    //     0x7dded8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5b0] TypeArguments: <UserLocationModel>
    //     0x7ddedc: ldr             x1, [x1, #0x5b0]
    // 0x7ddee0: r0 = _CompactValuesIterable()
    //     0x7ddee0: bl              #0x3e33dc  ; Allocate_CompactValuesIterableStub -> _CompactValuesIterable<X0> (size=0x10)
    // 0x7ddee4: mov             x1, x0
    // 0x7ddee8: ldur            x0, [fp, #-8]
    // 0x7ddeec: StoreField: r1->field_b = r0
    //     0x7ddeec: stur            w0, [x1, #0xb]
    // 0x7ddef0: r0 = first()
    //     0x7ddef0: bl              #0x4da380  ; [dart:core] Iterable::first
    // 0x7ddef4: LoadField: d0 = r0->field_f
    //     0x7ddef4: ldur            d0, [x0, #0xf]
    // 0x7ddef8: ldr             x0, [fp, #0x18]
    // 0x7ddefc: stur            d0, [fp, #-0x28]
    // 0x7ddf00: LoadField: r2 = r0->field_2b
    //     0x7ddf00: ldur            w2, [x0, #0x2b]
    // 0x7ddf04: DecompressPointer r2
    //     0x7ddf04: add             x2, x2, HEAP, lsl #32
    // 0x7ddf08: stur            x2, [fp, #-8]
    // 0x7ddf0c: r1 = <UserLocationModel>
    //     0x7ddf0c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5b0] TypeArguments: <UserLocationModel>
    //     0x7ddf10: ldr             x1, [x1, #0x5b0]
    // 0x7ddf14: r0 = _CompactValuesIterable()
    //     0x7ddf14: bl              #0x3e33dc  ; Allocate_CompactValuesIterableStub -> _CompactValuesIterable<X0> (size=0x10)
    // 0x7ddf18: mov             x1, x0
    // 0x7ddf1c: ldur            x0, [fp, #-8]
    // 0x7ddf20: StoreField: r1->field_b = r0
    //     0x7ddf20: stur            w0, [x1, #0xb]
    // 0x7ddf24: r0 = first()
    //     0x7ddf24: bl              #0x4da380  ; [dart:core] Iterable::first
    // 0x7ddf28: ArrayLoad: d0 = r0[0]  ; List_8
    //     0x7ddf28: ldur            d0, [x0, #0x17]
    // 0x7ddf2c: ldur            d1, [fp, #-0x28]
    // 0x7ddf30: stur            d0, [fp, #-0x30]
    // 0x7ddf34: d2 = -90.000000
    //     0x7ddf34: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7ddf38: ldr             d2, [x17, #0x5b8]
    // 0x7ddf3c: fcmp            d2, d1
    // 0x7ddf40: b.le            #0x7ddf50
    // 0x7ddf44: d1 = -90.000000
    //     0x7ddf44: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7ddf48: ldr             d1, [x17, #0x5b8]
    // 0x7ddf4c: b               #0x7ddf60
    // 0x7ddf50: d2 = 90.000000
    //     0x7ddf50: ldr             d2, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7ddf54: fcmp            d1, d2
    // 0x7ddf58: b.le            #0x7ddf60
    // 0x7ddf5c: d1 = 90.000000
    //     0x7ddf5c: ldr             d1, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7ddf60: stur            d1, [fp, #-0x28]
    // 0x7ddf64: r0 = LatLng()
    //     0x7ddf64: bl              #0x6c6214  ; AllocateLatLngStub -> LatLng (size=0x18)
    // 0x7ddf68: mov             x19, x0
    // 0x7ddf6c: ldur            d0, [fp, #-0x28]
    // 0x7ddf70: StoreField: r19->field_7 = d0
    //     0x7ddf70: stur            d0, [x19, #7]
    // 0x7ddf74: ldur            d0, [fp, #-0x30]
    // 0x7ddf78: d1 = -180.000000
    //     0x7ddf78: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5c0] IMM: double(-180) from 0xc066800000000000
    //     0x7ddf7c: ldr             d1, [x17, #0x5c0]
    // 0x7ddf80: fcmp            d0, d1
    // 0x7ddf84: b.lt            #0x7ddf98
    // 0x7ddf88: d2 = 180.000000
    //     0x7ddf88: ldr             d2, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7ddf8c: fcmp            d2, d0
    // 0x7ddf90: b.le            #0x7ddf9c
    // 0x7ddf94: b               #0x7ddfec
    // 0x7ddf98: d2 = 180.000000
    //     0x7ddf98: ldr             d2, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7ddf9c: fadd            d1, d0, d2
    // 0x7ddfa0: mov             v0.16b, v1.16b
    // 0x7ddfa4: d1 = 360.000000
    //     0x7ddfa4: ldr             d1, [PP, #0x5d38]  ; [pp+0x5d38] IMM: double(360) from 0x4076800000000000
    // 0x7ddfa8: stp             fp, lr, [SP, #-0x10]!
    // 0x7ddfac: mov             fp, SP
    // 0x7ddfb0: CallRuntime_DartModulo(double, double) -> double
    //     0x7ddfb0: and             SP, SP, #0xfffffffffffffff0
    //     0x7ddfb4: mov             sp, SP
    //     0x7ddfb8: ldr             x16, [THR, #0x730]  ; THR::DartModulo
    //     0x7ddfbc: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7ddfc0: blr             x16
    //     0x7ddfc4: mov             x16, #8
    //     0x7ddfc8: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7ddfcc: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x7ddfd0: sub             sp, x16, #1, lsl #12
    //     0x7ddfd4: mov             SP, fp
    //     0x7ddfd8: ldp             fp, lr, [SP], #0x10
    // 0x7ddfdc: mov             v1.16b, v0.16b
    // 0x7ddfe0: d0 = 180.000000
    //     0x7ddfe0: ldr             d0, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7ddfe4: fsub            d2, d1, d0
    // 0x7ddfe8: mov             v0.16b, v2.16b
    // 0x7ddfec: StoreField: r19->field_f = d0
    //     0x7ddfec: stur            d0, [x19, #0xf]
    // 0x7ddff0: mov             x1, x19
    // 0x7ddff4: b               #0x7de000
    // 0x7ddff8: r1 = Instance_LatLng
    //     0x7ddff8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5c8] Obj!LatLng@a09001
    //     0x7ddffc: ldr             x1, [x1, #0x5c8]
    // 0x7de000: ldur            x0, [fp, #-0x18]
    // 0x7de004: stur            x1, [fp, #-8]
    // 0x7de008: r0 = CameraPosition()
    //     0x7de008: bl              #0x6c7a34  ; AllocateCameraPositionStub -> CameraPosition (size=0x24)
    // 0x7de00c: stur            x0, [fp, #-0x20]
    // 0x7de010: StoreField: r0->field_7 = rZR
    //     0x7de010: stur            xzr, [x0, #7]
    // 0x7de014: ldur            x1, [fp, #-8]
    // 0x7de018: StoreField: r0->field_f = r1
    //     0x7de018: stur            w1, [x0, #0xf]
    // 0x7de01c: StoreField: r0->field_13 = rZR
    //     0x7de01c: stur            xzr, [x0, #0x13]
    // 0x7de020: d0 = 6.000000
    //     0x7de020: fmov            d0, #6.00000000
    // 0x7de024: StoreField: r0->field_1b = d0
    //     0x7de024: stur            d0, [x0, #0x1b]
    // 0x7de028: r0 = GoogleMap()
    //     0x7de028: bl              #0x6e918c  ; AllocateGoogleMapStub -> GoogleMap (size=0xac)
    // 0x7de02c: mov             x3, x0
    // 0x7de030: ldur            x0, [fp, #-0x20]
    // 0x7de034: stur            x3, [fp, #-8]
    // 0x7de038: StoreField: r3->field_f = r0
    //     0x7de038: stur            w0, [x3, #0xf]
    // 0x7de03c: ldur            x2, [fp, #-0x10]
    // 0x7de040: r1 = Function '<anonymous closure>':.
    //     0x7de040: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5d0] AnonymousClosure: (0x7de144), in [package:umrem_demo/features/admin/screens/all_locations_map_view.dart] _AllLocationsMapContent::build (0x7ddc50)
    //     0x7de044: ldr             x1, [x1, #0x5d0]
    // 0x7de048: r0 = AllocateClosure()
    //     0x7de048: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7de04c: mov             x1, x0
    // 0x7de050: ldur            x0, [fp, #-8]
    // 0x7de054: StoreField: r0->field_b = r1
    //     0x7de054: stur            w1, [x0, #0xb]
    // 0x7de058: r1 = _ConstSet len:0
    //     0x7de058: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5d8] Set<Factory<OneSequenceGestureRecognizer>>(0)
    //     0x7de05c: ldr             x1, [x1, #0x5d8]
    // 0x7de060: StoreField: r0->field_97 = r1
    //     0x7de060: stur            w1, [x0, #0x97]
    // 0x7de064: r1 = true
    //     0x7de064: add             x1, NULL, #0x20  ; true
    // 0x7de068: StoreField: r0->field_a3 = r1
    //     0x7de068: stur            w1, [x0, #0xa3]
    // 0x7de06c: ArrayStore: r0[0] = r1  ; List_4
    //     0x7de06c: stur            w1, [x0, #0x17]
    // 0x7de070: StoreField: r0->field_1b = r1
    //     0x7de070: stur            w1, [x0, #0x1b]
    // 0x7de074: r2 = Instance_CameraTargetBounds
    //     0x7de074: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5e0] Obj!CameraTargetBounds@a08fd1
    //     0x7de078: ldr             x2, [x2, #0x5e0]
    // 0x7de07c: StoreField: r0->field_1f = r2
    //     0x7de07c: stur            w2, [x0, #0x1f]
    // 0x7de080: r2 = Instance_MapType
    //     0x7de080: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5e8] Obj!MapType@a27881
    //     0x7de084: ldr             x2, [x2, #0x5e8]
    // 0x7de088: StoreField: r0->field_23 = r2
    //     0x7de088: stur            w2, [x0, #0x23]
    // 0x7de08c: r2 = Instance_MinMaxZoomPreference
    //     0x7de08c: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c5f0] Obj!MinMaxZoomPreference@a08fc1
    //     0x7de090: ldr             x2, [x2, #0x5f0]
    // 0x7de094: StoreField: r0->field_2b = r2
    //     0x7de094: stur            w2, [x0, #0x2b]
    // 0x7de098: StoreField: r0->field_2f = r1
    //     0x7de098: stur            w1, [x0, #0x2f]
    // 0x7de09c: StoreField: r0->field_33 = r1
    //     0x7de09c: stur            w1, [x0, #0x33]
    // 0x7de0a0: StoreField: r0->field_37 = r1
    //     0x7de0a0: stur            w1, [x0, #0x37]
    // 0x7de0a4: StoreField: r0->field_3b = r1
    //     0x7de0a4: stur            w1, [x0, #0x3b]
    // 0x7de0a8: r2 = false
    //     0x7de0a8: add             x2, NULL, #0x30  ; false
    // 0x7de0ac: StoreField: r0->field_3f = r2
    //     0x7de0ac: stur            w2, [x0, #0x3f]
    // 0x7de0b0: StoreField: r0->field_43 = r1
    //     0x7de0b0: stur            w1, [x0, #0x43]
    // 0x7de0b4: StoreField: r0->field_47 = r2
    //     0x7de0b4: stur            w2, [x0, #0x47]
    // 0x7de0b8: StoreField: r0->field_83 = r2
    //     0x7de0b8: stur            w2, [x0, #0x83]
    // 0x7de0bc: StoreField: r0->field_87 = r2
    //     0x7de0bc: stur            w2, [x0, #0x87]
    // 0x7de0c0: r3 = Instance_EdgeInsets
    //     0x7de0c0: ldr             x3, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7de0c4: StoreField: r0->field_4b = r3
    //     0x7de0c4: stur            w3, [x0, #0x4b]
    // 0x7de0c8: StoreField: r0->field_8b = r2
    //     0x7de0c8: stur            w2, [x0, #0x8b]
    // 0x7de0cc: StoreField: r0->field_8f = r2
    //     0x7de0cc: stur            w2, [x0, #0x8f]
    // 0x7de0d0: StoreField: r0->field_93 = r1
    //     0x7de0d0: stur            w1, [x0, #0x93]
    // 0x7de0d4: ldur            x1, [fp, #-0x18]
    // 0x7de0d8: StoreField: r0->field_4f = r1
    //     0x7de0d8: stur            w1, [x0, #0x4f]
    // 0x7de0dc: r1 = _ConstSet len:0
    //     0x7de0dc: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5f8] Set<Polygon>(0)
    //     0x7de0e0: ldr             x1, [x1, #0x5f8]
    // 0x7de0e4: StoreField: r0->field_53 = r1
    //     0x7de0e4: stur            w1, [x0, #0x53]
    // 0x7de0e8: r1 = _ConstSet len:0
    //     0x7de0e8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c600] Set<Polyline>(0)
    //     0x7de0ec: ldr             x1, [x1, #0x600]
    // 0x7de0f0: StoreField: r0->field_57 = r1
    //     0x7de0f0: stur            w1, [x0, #0x57]
    // 0x7de0f4: r1 = _ConstSet len:0
    //     0x7de0f4: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c608] Set<Circle>(0)
    //     0x7de0f8: ldr             x1, [x1, #0x608]
    // 0x7de0fc: StoreField: r0->field_5b = r1
    //     0x7de0fc: stur            w1, [x0, #0x5b]
    // 0x7de100: r1 = _ConstSet len:0
    //     0x7de100: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c610] Set<ClusterManager>(0)
    //     0x7de104: ldr             x1, [x1, #0x610]
    // 0x7de108: StoreField: r0->field_67 = r1
    //     0x7de108: stur            w1, [x0, #0x67]
    // 0x7de10c: r1 = _ConstSet len:0
    //     0x7de10c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c618] Set<Heatmap>(0)
    //     0x7de110: ldr             x1, [x1, #0x618]
    // 0x7de114: StoreField: r0->field_5f = r1
    //     0x7de114: stur            w1, [x0, #0x5f]
    // 0x7de118: r1 = _ConstSet len:0
    //     0x7de118: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c620] Set<TileOverlay>(0)
    //     0x7de11c: ldr             x1, [x1, #0x620]
    // 0x7de120: StoreField: r0->field_63 = r1
    //     0x7de120: stur            w1, [x0, #0x63]
    // 0x7de124: r1 = _ConstSet len:0
    //     0x7de124: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c628] Set<GroundOverlay>(0)
    //     0x7de128: ldr             x1, [x1, #0x628]
    // 0x7de12c: StoreField: r0->field_6b = r1
    //     0x7de12c: stur            w1, [x0, #0x6b]
    // 0x7de130: LeaveFrame
    //     0x7de130: mov             SP, fp
    //     0x7de134: ldp             fp, lr, [SP], #0x10
    // 0x7de138: ret
    //     0x7de138: ret             
    // 0x7de13c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7de13c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7de140: b               #0x7dddbc
  }
  [closure] void <anonymous closure>(dynamic, GoogleMapController) {
    // ** addr: 0x7de144, size: 0xb4
    // 0x7de144: EnterFrame
    //     0x7de144: stp             fp, lr, [SP, #-0x10]!
    //     0x7de148: mov             fp, SP
    // 0x7de14c: AllocStack(0x10)
    //     0x7de14c: sub             SP, SP, #0x10
    // 0x7de150: SetupParameters([dynamic _ /* r0 */])
    //     0x7de150: ldr             x0, [fp, #0x18]
    //     0x7de154: ldur            w1, [x0, #0x17]
    //     0x7de158: add             x1, x1, HEAP, lsl #32
    //     0x7de15c: stur            x1, [fp, #-8]
    // 0x7de160: CheckStackOverflow
    //     0x7de160: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7de164: cmp             SP, x16
    //     0x7de168: b.ls            #0x7de1f0
    // 0x7de16c: r1 = 1
    //     0x7de16c: mov             x1, #1
    // 0x7de170: r0 = AllocateContext()
    //     0x7de170: bl              #0x927010  ; AllocateContextStub
    // 0x7de174: mov             x1, x0
    // 0x7de178: ldur            x0, [fp, #-8]
    // 0x7de17c: StoreField: r1->field_b = r0
    //     0x7de17c: stur            w0, [x1, #0xb]
    // 0x7de180: ldr             x2, [fp, #0x10]
    // 0x7de184: StoreField: r1->field_f = r2
    //     0x7de184: stur            w2, [x1, #0xf]
    // 0x7de188: LoadField: r2 = r0->field_13
    //     0x7de188: ldur            w2, [x0, #0x13]
    // 0x7de18c: DecompressPointer r2
    //     0x7de18c: add             x2, x2, HEAP, lsl #32
    // 0x7de190: cmp             w2, NULL
    // 0x7de194: b.eq            #0x7de1e0
    // 0x7de198: LoadField: r2 = r0->field_f
    //     0x7de198: ldur            w2, [x0, #0xf]
    // 0x7de19c: DecompressPointer r2
    //     0x7de19c: add             x2, x2, HEAP, lsl #32
    // 0x7de1a0: LoadField: r0 = r2->field_13
    //     0x7de1a0: ldur            w0, [x2, #0x13]
    // 0x7de1a4: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x7de1a4: ldur            w3, [x2, #0x17]
    // 0x7de1a8: r2 = LoadInt32Instr(r0)
    //     0x7de1a8: sbfx            x2, x0, #1, #0x1f
    // 0x7de1ac: r0 = LoadInt32Instr(r3)
    //     0x7de1ac: sbfx            x0, x3, #1, #0x1f
    // 0x7de1b0: sub             x3, x2, x0
    // 0x7de1b4: cmp             x3, #1
    // 0x7de1b8: b.le            #0x7de1e0
    // 0x7de1bc: mov             x2, x1
    // 0x7de1c0: r1 = Function '<anonymous closure>':.
    //     0x7de1c0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c630] AnonymousClosure: (0x7de1f8), in [package:umrem_demo/features/admin/screens/all_locations_map_view.dart] _AllLocationsMapContent::build (0x7ddc50)
    //     0x7de1c4: ldr             x1, [x1, #0x630]
    // 0x7de1c8: r0 = AllocateClosure()
    //     0x7de1c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7de1cc: str             x0, [SP]
    // 0x7de1d0: r1 = <Null?>
    //     0x7de1d0: ldr             x1, [PP, #0x12a8]  ; [pp+0x12a8] TypeArguments: <Null?>
    // 0x7de1d4: r2 = Instance_Duration
    //     0x7de1d4: ldr             x2, [PP, #0x50d0]  ; [pp+0x50d0] Obj!Duration@a2dc91
    // 0x7de1d8: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7de1d8: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7de1dc: r0 = Future.delayed()
    //     0x7de1dc: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x7de1e0: r0 = Null
    //     0x7de1e0: mov             x0, NULL
    // 0x7de1e4: LeaveFrame
    //     0x7de1e4: mov             SP, fp
    //     0x7de1e8: ldp             fp, lr, [SP], #0x10
    // 0x7de1ec: ret
    //     0x7de1ec: ret             
    // 0x7de1f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7de1f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7de1f4: b               #0x7de16c
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x7de1f8, size: 0x74
    // 0x7de1f8: EnterFrame
    //     0x7de1f8: stp             fp, lr, [SP, #-0x10]!
    //     0x7de1fc: mov             fp, SP
    // 0x7de200: AllocStack(0x8)
    //     0x7de200: sub             SP, SP, #8
    // 0x7de204: SetupParameters([dynamic _ /* r0 */])
    //     0x7de204: ldr             x0, [fp, #0x10]
    //     0x7de208: ldur            w1, [x0, #0x17]
    //     0x7de20c: add             x1, x1, HEAP, lsl #32
    // 0x7de210: CheckStackOverflow
    //     0x7de210: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7de214: cmp             SP, x16
    //     0x7de218: b.ls            #0x7de260
    // 0x7de21c: LoadField: r0 = r1->field_f
    //     0x7de21c: ldur            w0, [x1, #0xf]
    // 0x7de220: DecompressPointer r0
    //     0x7de220: add             x0, x0, HEAP, lsl #32
    // 0x7de224: stur            x0, [fp, #-8]
    // 0x7de228: LoadField: r2 = r1->field_b
    //     0x7de228: ldur            w2, [x1, #0xb]
    // 0x7de22c: DecompressPointer r2
    //     0x7de22c: add             x2, x2, HEAP, lsl #32
    // 0x7de230: LoadField: r1 = r2->field_13
    //     0x7de230: ldur            w1, [x2, #0x13]
    // 0x7de234: DecompressPointer r1
    //     0x7de234: add             x1, x1, HEAP, lsl #32
    // 0x7de238: cmp             w1, NULL
    // 0x7de23c: b.eq            #0x7de268
    // 0x7de240: r0 = newLatLngBounds()
    //     0x7de240: bl              #0x7de26c  ; [package:google_maps_flutter_platform_interface/src/types/camera.dart] CameraUpdate::newLatLngBounds
    // 0x7de244: ldur            x1, [fp, #-8]
    // 0x7de248: mov             x2, x0
    // 0x7de24c: r0 = animateCamera()
    //     0x7de24c: bl              #0x6e91d0  ; [package:google_maps_flutter/google_maps_flutter.dart] GoogleMapController::animateCamera
    // 0x7de250: r0 = Null
    //     0x7de250: mov             x0, NULL
    // 0x7de254: LeaveFrame
    //     0x7de254: mov             SP, fp
    //     0x7de258: ldp             fp, lr, [SP], #0x10
    // 0x7de25c: ret
    //     0x7de25c: ret             
    // 0x7de260: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7de260: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7de264: b               #0x7de21c
    // 0x7de268: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7de268: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, String, UserLocationModel) {
    // ** addr: 0x7de2b4, size: 0x59c
    // 0x7de2b4: EnterFrame
    //     0x7de2b4: stp             fp, lr, [SP, #-0x10]!
    //     0x7de2b8: mov             fp, SP
    // 0x7de2bc: AllocStack(0x60)
    //     0x7de2bc: sub             SP, SP, #0x60
    // 0x7de2c0: SetupParameters([dynamic _ /* r0 */])
    //     0x7de2c0: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7de2c4: ldr             d0, [x17, #0x5b8]
    //     0x7de2c8: ldr             x0, [fp, #0x20]
    //     0x7de2cc: ldur            w1, [x0, #0x17]
    //     0x7de2d0: add             x1, x1, HEAP, lsl #32
    //     0x7de2d4: stur            x1, [fp, #-8]
    // 0x7de2c0: d0 = -90.000000
    // 0x7de2d8: CheckStackOverflow
    //     0x7de2d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7de2dc: cmp             SP, x16
    //     0x7de2e0: b.ls            #0x7de840
    // 0x7de2e4: ldr             x0, [fp, #0x10]
    // 0x7de2e8: LoadField: d1 = r0->field_f
    //     0x7de2e8: ldur            d1, [x0, #0xf]
    // 0x7de2ec: ArrayLoad: d2 = r0[0]  ; List_8
    //     0x7de2ec: ldur            d2, [x0, #0x17]
    // 0x7de2f0: stur            d2, [fp, #-0x48]
    // 0x7de2f4: fcmp            d0, d1
    // 0x7de2f8: b.le            #0x7de30c
    // 0x7de2fc: d1 = -90.000000
    //     0x7de2fc: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7de300: ldr             d1, [x17, #0x5b8]
    // 0x7de304: d3 = 90.000000
    //     0x7de304: ldr             d3, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de308: b               #0x7de31c
    // 0x7de30c: d3 = 90.000000
    //     0x7de30c: ldr             d3, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de310: fcmp            d1, d3
    // 0x7de314: b.le            #0x7de31c
    // 0x7de318: d1 = 90.000000
    //     0x7de318: ldr             d1, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de31c: stur            d1, [fp, #-0x40]
    // 0x7de320: r0 = LatLng()
    //     0x7de320: bl              #0x6c6214  ; AllocateLatLngStub -> LatLng (size=0x18)
    // 0x7de324: mov             x19, x0
    // 0x7de328: ldur            d2, [fp, #-0x40]
    // 0x7de32c: stur            x19, [fp, #-0x18]
    // 0x7de330: StoreField: r19->field_7 = d2
    //     0x7de330: stur            d2, [x19, #7]
    // 0x7de334: ldur            d0, [fp, #-0x48]
    // 0x7de338: d3 = -180.000000
    //     0x7de338: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5c0] IMM: double(-180) from 0xc066800000000000
    //     0x7de33c: ldr             d3, [x17, #0x5c0]
    // 0x7de340: fcmp            d0, d3
    // 0x7de344: b.lt            #0x7de360
    // 0x7de348: d4 = 180.000000
    //     0x7de348: ldr             d4, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de34c: fcmp            d4, d0
    // 0x7de350: b.le            #0x7de364
    // 0x7de354: mov             v1.16b, v0.16b
    // 0x7de358: mov             v0.16b, v4.16b
    // 0x7de35c: b               #0x7de3b4
    // 0x7de360: d4 = 180.000000
    //     0x7de360: ldr             d4, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de364: fadd            d1, d0, d4
    // 0x7de368: mov             v0.16b, v1.16b
    // 0x7de36c: d1 = 360.000000
    //     0x7de36c: ldr             d1, [PP, #0x5d38]  ; [pp+0x5d38] IMM: double(360) from 0x4076800000000000
    // 0x7de370: stp             fp, lr, [SP, #-0x10]!
    // 0x7de374: mov             fp, SP
    // 0x7de378: CallRuntime_DartModulo(double, double) -> double
    //     0x7de378: and             SP, SP, #0xfffffffffffffff0
    //     0x7de37c: mov             sp, SP
    //     0x7de380: ldr             x16, [THR, #0x730]  ; THR::DartModulo
    //     0x7de384: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7de388: blr             x16
    //     0x7de38c: mov             x16, #8
    //     0x7de390: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7de394: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x7de398: sub             sp, x16, #1, lsl #12
    //     0x7de39c: mov             SP, fp
    //     0x7de3a0: ldp             fp, lr, [SP], #0x10
    // 0x7de3a4: mov             v1.16b, v0.16b
    // 0x7de3a8: d0 = 180.000000
    //     0x7de3a8: ldr             d0, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de3ac: fsub            d2, d1, d0
    // 0x7de3b0: mov             v1.16b, v2.16b
    // 0x7de3b4: ldr             x3, [fp, #0x18]
    // 0x7de3b8: ldr             x2, [fp, #0x10]
    // 0x7de3bc: ldur            x0, [fp, #-8]
    // 0x7de3c0: stur            d1, [fp, #-0x48]
    // 0x7de3c4: StoreField: r19->field_f = d1
    //     0x7de3c4: stur            d1, [x19, #0xf]
    // 0x7de3c8: LoadField: r4 = r0->field_f
    //     0x7de3c8: ldur            w4, [x0, #0xf]
    // 0x7de3cc: DecompressPointer r4
    //     0x7de3cc: add             x4, x4, HEAP, lsl #32
    // 0x7de3d0: stur            x4, [fp, #-0x10]
    // 0x7de3d4: r1 = <Marker>
    //     0x7de3d4: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c5a0] TypeArguments: <Marker>
    //     0x7de3d8: ldr             x1, [x1, #0x5a0]
    // 0x7de3dc: r0 = MarkerId()
    //     0x7de3dc: bl              #0x6c6264  ; AllocateMarkerIdStub -> MarkerId (size=0x10)
    // 0x7de3e0: mov             x3, x0
    // 0x7de3e4: ldr             x0, [fp, #0x18]
    // 0x7de3e8: stur            x3, [fp, #-0x28]
    // 0x7de3ec: StoreField: r3->field_b = r0
    //     0x7de3ec: stur            w0, [x3, #0xb]
    // 0x7de3f0: ldr             x0, [fp, #0x10]
    // 0x7de3f4: LoadField: r4 = r0->field_b
    //     0x7de3f4: ldur            w4, [x0, #0xb]
    // 0x7de3f8: DecompressPointer r4
    //     0x7de3f8: add             x4, x4, HEAP, lsl #32
    // 0x7de3fc: stur            x4, [fp, #-0x20]
    // 0x7de400: r1 = Null
    //     0x7de400: mov             x1, NULL
    // 0x7de404: r2 = 8
    //     0x7de404: mov             x2, #8
    // 0x7de408: r0 = AllocateArray()
    //     0x7de408: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7de40c: stur            x0, [fp, #-0x38]
    // 0x7de410: r16 = "Son güncelleme: "
    //     0x7de410: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c528] "Son güncelleme: "
    //     0x7de414: ldr             x16, [x16, #0x528]
    // 0x7de418: StoreField: r0->field_f = r16
    //     0x7de418: stur            w16, [x0, #0xf]
    // 0x7de41c: ldr             x1, [fp, #0x10]
    // 0x7de420: LoadField: r2 = r1->field_1f
    //     0x7de420: ldur            w2, [x1, #0x1f]
    // 0x7de424: DecompressPointer r2
    //     0x7de424: add             x2, x2, HEAP, lsl #32
    // 0x7de428: mov             x1, x2
    // 0x7de42c: stur            x2, [fp, #-0x30]
    // 0x7de430: r0 = _parts()
    //     0x7de430: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7de434: mov             x2, x0
    // 0x7de438: LoadField: r0 = r2->field_b
    //     0x7de438: ldur            w0, [x2, #0xb]
    // 0x7de43c: r1 = LoadInt32Instr(r0)
    //     0x7de43c: sbfx            x1, x0, #1, #0x1f
    // 0x7de440: mov             x0, x1
    // 0x7de444: r1 = 4
    //     0x7de444: mov             x1, #4
    // 0x7de448: cmp             x1, x0
    // 0x7de44c: b.hs            #0x7de848
    // 0x7de450: LoadField: r0 = r2->field_1f
    //     0x7de450: ldur            w0, [x2, #0x1f]
    // 0x7de454: DecompressPointer r0
    //     0x7de454: add             x0, x0, HEAP, lsl #32
    // 0x7de458: ldur            x1, [fp, #-0x38]
    // 0x7de45c: ArrayStore: r1[1] = r0  ; List_4
    //     0x7de45c: add             x25, x1, #0x13
    //     0x7de460: str             w0, [x25]
    //     0x7de464: tbz             w0, #0, #0x7de480
    //     0x7de468: ldurb           w16, [x1, #-1]
    //     0x7de46c: ldurb           w17, [x0, #-1]
    //     0x7de470: and             x16, x17, x16, lsr #2
    //     0x7de474: tst             x16, HEAP, lsr #32
    //     0x7de478: b.eq            #0x7de480
    //     0x7de47c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7de480: ldur            x0, [fp, #-0x38]
    // 0x7de484: r16 = ":"
    //     0x7de484: ldr             x16, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x7de488: ArrayStore: r0[0] = r16  ; List_4
    //     0x7de488: stur            w16, [x0, #0x17]
    // 0x7de48c: ldur            x1, [fp, #-0x30]
    // 0x7de490: r0 = _parts()
    //     0x7de490: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7de494: mov             x2, x0
    // 0x7de498: LoadField: r0 = r2->field_b
    //     0x7de498: ldur            w0, [x2, #0xb]
    // 0x7de49c: r1 = LoadInt32Instr(r0)
    //     0x7de49c: sbfx            x1, x0, #1, #0x1f
    // 0x7de4a0: mov             x0, x1
    // 0x7de4a4: r1 = 3
    //     0x7de4a4: mov             x1, #3
    // 0x7de4a8: cmp             x1, x0
    // 0x7de4ac: b.hs            #0x7de84c
    // 0x7de4b0: LoadField: r0 = r2->field_1b
    //     0x7de4b0: ldur            w0, [x2, #0x1b]
    // 0x7de4b4: DecompressPointer r0
    //     0x7de4b4: add             x0, x0, HEAP, lsl #32
    // 0x7de4b8: ldur            x1, [fp, #-0x38]
    // 0x7de4bc: ArrayStore: r1[3] = r0  ; List_4
    //     0x7de4bc: add             x25, x1, #0x1b
    //     0x7de4c0: str             w0, [x25]
    //     0x7de4c4: tbz             w0, #0, #0x7de4e0
    //     0x7de4c8: ldurb           w16, [x1, #-1]
    //     0x7de4cc: ldurb           w17, [x0, #-1]
    //     0x7de4d0: and             x16, x17, x16, lsr #2
    //     0x7de4d4: tst             x16, HEAP, lsr #32
    //     0x7de4d8: b.eq            #0x7de4e0
    //     0x7de4dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7de4e0: ldur            x16, [fp, #-0x38]
    // 0x7de4e4: str             x16, [SP]
    // 0x7de4e8: r0 = _interpolate()
    //     0x7de4e8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7de4ec: stur            x0, [fp, #-0x30]
    // 0x7de4f0: r0 = InfoWindow()
    //     0x7de4f0: bl              #0x6e91c4  ; AllocateInfoWindowStub -> InfoWindow (size=0x18)
    // 0x7de4f4: mov             x1, x0
    // 0x7de4f8: ldur            x0, [fp, #-0x20]
    // 0x7de4fc: stur            x1, [fp, #-0x38]
    // 0x7de500: StoreField: r1->field_7 = r0
    //     0x7de500: stur            w0, [x1, #7]
    // 0x7de504: ldur            x0, [fp, #-0x30]
    // 0x7de508: StoreField: r1->field_b = r0
    //     0x7de508: stur            w0, [x1, #0xb]
    // 0x7de50c: r0 = Instance_Offset
    //     0x7de50c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c790] Obj!Offset@a268b1
    //     0x7de510: ldr             x0, [x0, #0x790]
    // 0x7de514: StoreField: r1->field_f = r0
    //     0x7de514: stur            w0, [x1, #0xf]
    // 0x7de518: r0 = defaultMarkerWithHue()
    //     0x7de518: bl              #0x6e9198  ; [package:google_maps_flutter_platform_interface/src/types/bitmap.dart] BitmapDescriptor::defaultMarkerWithHue
    // 0x7de51c: stur            x0, [fp, #-0x20]
    // 0x7de520: r0 = Marker()
    //     0x7de520: bl              #0x5ccf98  ; AllocateMarkerStub -> Marker (size=0x54)
    // 0x7de524: mov             x1, x0
    // 0x7de528: ldur            x0, [fp, #-0x28]
    // 0x7de52c: StoreField: r1->field_7 = r0
    //     0x7de52c: stur            w0, [x1, #7]
    // 0x7de530: d0 = 1.000000
    //     0x7de530: fmov            d0, #1.00000000
    // 0x7de534: StoreField: r1->field_f = d0
    //     0x7de534: stur            d0, [x1, #0xf]
    // 0x7de538: r0 = Instance_Offset
    //     0x7de538: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c798] Obj!Offset@a268d1
    //     0x7de53c: ldr             x0, [x0, #0x798]
    // 0x7de540: ArrayStore: r1[0] = r0  ; List_4
    //     0x7de540: stur            w0, [x1, #0x17]
    // 0x7de544: r0 = false
    //     0x7de544: add             x0, NULL, #0x30  ; false
    // 0x7de548: StoreField: r1->field_1b = r0
    //     0x7de548: stur            w0, [x1, #0x1b]
    // 0x7de54c: StoreField: r1->field_1f = r0
    //     0x7de54c: stur            w0, [x1, #0x1f]
    // 0x7de550: StoreField: r1->field_23 = r0
    //     0x7de550: stur            w0, [x1, #0x23]
    // 0x7de554: ldur            x0, [fp, #-0x20]
    // 0x7de558: StoreField: r1->field_27 = r0
    //     0x7de558: stur            w0, [x1, #0x27]
    // 0x7de55c: ldur            x0, [fp, #-0x38]
    // 0x7de560: StoreField: r1->field_2b = r0
    //     0x7de560: stur            w0, [x1, #0x2b]
    // 0x7de564: ldur            x0, [fp, #-0x18]
    // 0x7de568: StoreField: r1->field_2f = r0
    //     0x7de568: stur            w0, [x1, #0x2f]
    // 0x7de56c: StoreField: r1->field_33 = rZR
    //     0x7de56c: stur            xzr, [x1, #0x33]
    // 0x7de570: r2 = true
    //     0x7de570: add             x2, NULL, #0x20  ; true
    // 0x7de574: StoreField: r1->field_3b = r2
    //     0x7de574: stur            w2, [x1, #0x3b]
    // 0x7de578: r2 = 0.000000
    //     0x7de578: ldr             x2, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7de57c: StoreField: r1->field_3f = r2
    //     0x7de57c: stur            w2, [x1, #0x3f]
    // 0x7de580: mov             x2, x1
    // 0x7de584: ldur            x1, [fp, #-0x10]
    // 0x7de588: r0 = add()
    //     0x7de588: bl              #0x90be78  ; [dart:_compact_hash] __Set&_HashVMBase&SetMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashSetMixin::add
    // 0x7de58c: ldur            x0, [fp, #-8]
    // 0x7de590: LoadField: r1 = r0->field_13
    //     0x7de590: ldur            w1, [x0, #0x13]
    // 0x7de594: DecompressPointer r1
    //     0x7de594: add             x1, x1, HEAP, lsl #32
    // 0x7de598: stur            x1, [fp, #-0x10]
    // 0x7de59c: cmp             w1, NULL
    // 0x7de5a0: b.ne            #0x7de5e4
    // 0x7de5a4: ldur            x1, [fp, #-0x18]
    // 0x7de5a8: r0 = LatLngBounds()
    //     0x7de5a8: bl              #0x6c603c  ; AllocateLatLngBoundsStub -> LatLngBounds (size=0x10)
    // 0x7de5ac: mov             x1, x0
    // 0x7de5b0: ldur            x0, [fp, #-0x18]
    // 0x7de5b4: StoreField: r1->field_7 = r0
    //     0x7de5b4: stur            w0, [x1, #7]
    // 0x7de5b8: StoreField: r1->field_b = r0
    //     0x7de5b8: stur            w0, [x1, #0xb]
    // 0x7de5bc: mov             x0, x1
    // 0x7de5c0: ldur            x2, [fp, #-8]
    // 0x7de5c4: StoreField: r2->field_13 = r0
    //     0x7de5c4: stur            w0, [x2, #0x13]
    //     0x7de5c8: ldurb           w16, [x2, #-1]
    //     0x7de5cc: ldurb           w17, [x0, #-1]
    //     0x7de5d0: and             x16, x17, x16, lsr #2
    //     0x7de5d4: tst             x16, HEAP, lsr #32
    //     0x7de5d8: b.eq            #0x7de5e0
    //     0x7de5dc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7de5e0: b               #0x7de830
    // 0x7de5e4: mov             x2, x0
    // 0x7de5e8: ldur            d0, [fp, #-0x40]
    // 0x7de5ec: LoadField: r0 = r1->field_7
    //     0x7de5ec: ldur            w0, [x1, #7]
    // 0x7de5f0: DecompressPointer r0
    //     0x7de5f0: add             x0, x0, HEAP, lsl #32
    // 0x7de5f4: LoadField: d1 = r0->field_7
    //     0x7de5f4: ldur            d1, [x0, #7]
    // 0x7de5f8: fcmp            d0, d1
    // 0x7de5fc: b.le            #0x7de608
    // 0x7de600: mov             v2.16b, v1.16b
    // 0x7de604: b               #0x7de60c
    // 0x7de608: mov             v2.16b, v0.16b
    // 0x7de60c: ldur            d1, [fp, #-0x48]
    // 0x7de610: LoadField: d3 = r0->field_f
    //     0x7de610: ldur            d3, [x0, #0xf]
    // 0x7de614: fcmp            d1, d3
    // 0x7de618: b.le            #0x7de624
    // 0x7de61c: mov             v4.16b, v3.16b
    // 0x7de620: b               #0x7de628
    // 0x7de624: mov             v4.16b, v1.16b
    // 0x7de628: d3 = -90.000000
    //     0x7de628: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7de62c: ldr             d3, [x17, #0x5b8]
    // 0x7de630: stur            d4, [fp, #-0x58]
    // 0x7de634: fcmp            d3, d2
    // 0x7de638: b.le            #0x7de64c
    // 0x7de63c: d2 = -90.000000
    //     0x7de63c: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7de640: ldr             d2, [x17, #0x5b8]
    // 0x7de644: d5 = 90.000000
    //     0x7de644: ldr             d5, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de648: b               #0x7de65c
    // 0x7de64c: d5 = 90.000000
    //     0x7de64c: ldr             d5, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de650: fcmp            d2, d5
    // 0x7de654: b.le            #0x7de65c
    // 0x7de658: d2 = 90.000000
    //     0x7de658: ldr             d2, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de65c: stur            d2, [fp, #-0x50]
    // 0x7de660: r0 = LatLng()
    //     0x7de660: bl              #0x6c6214  ; AllocateLatLngStub -> LatLng (size=0x18)
    // 0x7de664: mov             x19, x0
    // 0x7de668: ldur            d0, [fp, #-0x50]
    // 0x7de66c: stur            x19, [fp, #-0x18]
    // 0x7de670: StoreField: r19->field_7 = d0
    //     0x7de670: stur            d0, [x19, #7]
    // 0x7de674: ldur            d0, [fp, #-0x58]
    // 0x7de678: d2 = -180.000000
    //     0x7de678: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5c0] IMM: double(-180) from 0xc066800000000000
    //     0x7de67c: ldr             d2, [x17, #0x5c0]
    // 0x7de680: fcmp            d0, d2
    // 0x7de684: b.lt            #0x7de6a0
    // 0x7de688: d3 = 180.000000
    //     0x7de688: ldr             d3, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de68c: fcmp            d3, d0
    // 0x7de690: b.le            #0x7de6a4
    // 0x7de694: mov             v2.16b, v0.16b
    // 0x7de698: mov             v0.16b, v3.16b
    // 0x7de69c: b               #0x7de6f0
    // 0x7de6a0: d3 = 180.000000
    //     0x7de6a0: ldr             d3, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de6a4: fadd            d1, d0, d3
    // 0x7de6a8: mov             v0.16b, v1.16b
    // 0x7de6ac: d1 = 360.000000
    //     0x7de6ac: ldr             d1, [PP, #0x5d38]  ; [pp+0x5d38] IMM: double(360) from 0x4076800000000000
    // 0x7de6b0: stp             fp, lr, [SP, #-0x10]!
    // 0x7de6b4: mov             fp, SP
    // 0x7de6b8: CallRuntime_DartModulo(double, double) -> double
    //     0x7de6b8: and             SP, SP, #0xfffffffffffffff0
    //     0x7de6bc: mov             sp, SP
    //     0x7de6c0: ldr             x16, [THR, #0x730]  ; THR::DartModulo
    //     0x7de6c4: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7de6c8: blr             x16
    //     0x7de6cc: mov             x16, #8
    //     0x7de6d0: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7de6d4: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x7de6d8: sub             sp, x16, #1, lsl #12
    //     0x7de6dc: mov             SP, fp
    //     0x7de6e0: ldp             fp, lr, [SP], #0x10
    // 0x7de6e4: mov             v1.16b, v0.16b
    // 0x7de6e8: d0 = 180.000000
    //     0x7de6e8: ldr             d0, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de6ec: fsub            d2, d1, d0
    // 0x7de6f0: ldur            x0, [fp, #-0x10]
    // 0x7de6f4: ldur            d1, [fp, #-0x40]
    // 0x7de6f8: StoreField: r19->field_f = d2
    //     0x7de6f8: stur            d2, [x19, #0xf]
    // 0x7de6fc: LoadField: r1 = r0->field_b
    //     0x7de6fc: ldur            w1, [x0, #0xb]
    // 0x7de700: DecompressPointer r1
    //     0x7de700: add             x1, x1, HEAP, lsl #32
    // 0x7de704: LoadField: d2 = r1->field_7
    //     0x7de704: ldur            d2, [x1, #7]
    // 0x7de708: fcmp            d2, d1
    // 0x7de70c: b.gt            #0x7de714
    // 0x7de710: mov             v2.16b, v1.16b
    // 0x7de714: ldur            d1, [fp, #-0x48]
    // 0x7de718: LoadField: d3 = r1->field_f
    //     0x7de718: ldur            d3, [x1, #0xf]
    // 0x7de71c: fcmp            d3, d1
    // 0x7de720: b.gt            #0x7de728
    // 0x7de724: mov             v3.16b, v1.16b
    // 0x7de728: d1 = -90.000000
    //     0x7de728: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7de72c: ldr             d1, [x17, #0x5b8]
    // 0x7de730: stur            d3, [fp, #-0x48]
    // 0x7de734: fcmp            d1, d2
    // 0x7de738: b.le            #0x7de748
    // 0x7de73c: d1 = -90.000000
    //     0x7de73c: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5b8] IMM: double(-90) from 0xc056800000000000
    //     0x7de740: ldr             d1, [x17, #0x5b8]
    // 0x7de744: b               #0x7de760
    // 0x7de748: d1 = 90.000000
    //     0x7de748: ldr             d1, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de74c: fcmp            d2, d1
    // 0x7de750: b.le            #0x7de75c
    // 0x7de754: d1 = 90.000000
    //     0x7de754: ldr             d1, [PP, #0x67f8]  ; [pp+0x67f8] IMM: double(90) from 0x4056800000000000
    // 0x7de758: b               #0x7de760
    // 0x7de75c: mov             v1.16b, v2.16b
    // 0x7de760: stur            d1, [fp, #-0x40]
    // 0x7de764: r0 = LatLng()
    //     0x7de764: bl              #0x6c6214  ; AllocateLatLngStub -> LatLng (size=0x18)
    // 0x7de768: mov             x19, x0
    // 0x7de76c: ldur            d0, [fp, #-0x40]
    // 0x7de770: stur            x19, [fp, #-0x10]
    // 0x7de774: StoreField: r19->field_7 = d0
    //     0x7de774: stur            d0, [x19, #7]
    // 0x7de778: ldur            d0, [fp, #-0x48]
    // 0x7de77c: d1 = -180.000000
    //     0x7de77c: add             x17, PP, #0x1c, lsl #12  ; [pp+0x1c5c0] IMM: double(-180) from 0xc066800000000000
    //     0x7de780: ldr             d1, [x17, #0x5c0]
    // 0x7de784: fcmp            d0, d1
    // 0x7de788: b.lt            #0x7de79c
    // 0x7de78c: d2 = 180.000000
    //     0x7de78c: ldr             d2, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de790: fcmp            d2, d0
    // 0x7de794: b.le            #0x7de7a0
    // 0x7de798: b               #0x7de7f0
    // 0x7de79c: d2 = 180.000000
    //     0x7de79c: ldr             d2, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de7a0: fadd            d1, d0, d2
    // 0x7de7a4: mov             v0.16b, v1.16b
    // 0x7de7a8: d1 = 360.000000
    //     0x7de7a8: ldr             d1, [PP, #0x5d38]  ; [pp+0x5d38] IMM: double(360) from 0x4076800000000000
    // 0x7de7ac: stp             fp, lr, [SP, #-0x10]!
    // 0x7de7b0: mov             fp, SP
    // 0x7de7b4: CallRuntime_DartModulo(double, double) -> double
    //     0x7de7b4: and             SP, SP, #0xfffffffffffffff0
    //     0x7de7b8: mov             sp, SP
    //     0x7de7bc: ldr             x16, [THR, #0x730]  ; THR::DartModulo
    //     0x7de7c0: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7de7c4: blr             x16
    //     0x7de7c8: mov             x16, #8
    //     0x7de7cc: str             x16, [THR, #0x6b0]  ; THR::vm_tag
    //     0x7de7d0: ldr             x16, [THR, #0x678]  ; THR::saved_stack_limit
    //     0x7de7d4: sub             sp, x16, #1, lsl #12
    //     0x7de7d8: mov             SP, fp
    //     0x7de7dc: ldp             fp, lr, [SP], #0x10
    // 0x7de7e0: mov             v1.16b, v0.16b
    // 0x7de7e4: d0 = 180.000000
    //     0x7de7e4: ldr             d0, [PP, #0x5d28]  ; [pp+0x5d28] IMM: double(180) from 0x4066800000000000
    // 0x7de7e8: fsub            d2, d1, d0
    // 0x7de7ec: mov             v0.16b, v2.16b
    // 0x7de7f0: ldur            x1, [fp, #-8]
    // 0x7de7f4: ldur            x0, [fp, #-0x18]
    // 0x7de7f8: StoreField: r19->field_f = d0
    //     0x7de7f8: stur            d0, [x19, #0xf]
    // 0x7de7fc: r0 = LatLngBounds()
    //     0x7de7fc: bl              #0x6c603c  ; AllocateLatLngBoundsStub -> LatLngBounds (size=0x10)
    // 0x7de800: ldur            x1, [fp, #-0x18]
    // 0x7de804: StoreField: r0->field_7 = r1
    //     0x7de804: stur            w1, [x0, #7]
    // 0x7de808: ldur            x1, [fp, #-0x10]
    // 0x7de80c: StoreField: r0->field_b = r1
    //     0x7de80c: stur            w1, [x0, #0xb]
    // 0x7de810: ldur            x1, [fp, #-8]
    // 0x7de814: StoreField: r1->field_13 = r0
    //     0x7de814: stur            w0, [x1, #0x13]
    //     0x7de818: ldurb           w16, [x1, #-1]
    //     0x7de81c: ldurb           w17, [x0, #-1]
    //     0x7de820: and             x16, x17, x16, lsr #2
    //     0x7de824: tst             x16, HEAP, lsr #32
    //     0x7de828: b.eq            #0x7de830
    //     0x7de82c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7de830: r0 = Null
    //     0x7de830: mov             x0, NULL
    // 0x7de834: LeaveFrame
    //     0x7de834: mov             SP, fp
    //     0x7de838: ldp             fp, lr, [SP], #0x10
    // 0x7de83c: ret
    //     0x7de83c: ret             
    // 0x7de840: r0 = StackOverflowSharedWithFPURegs()
    //     0x7de840: bl              #0x928228  ; StackOverflowSharedWithFPURegsStub
    // 0x7de844: b               #0x7de2e4
    // 0x7de848: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7de848: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x7de84c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x7de84c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}

// class id: 2933, size: 0xc, field offset: 0xc
//   const constructor, 
class AllLocationsMapView extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7dcca4, size: 0xa8
    // 0x7dcca4: EnterFrame
    //     0x7dcca4: stp             fp, lr, [SP, #-0x10]!
    //     0x7dcca8: mov             fp, SP
    // 0x7dccac: AllocStack(0x10)
    //     0x7dccac: sub             SP, SP, #0x10
    // 0x7dccb0: CheckStackOverflow
    //     0x7dccb0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dccb4: cmp             SP, x16
    //     0x7dccb8: b.ls            #0x7dcd44
    // 0x7dccbc: r1 = Function '<anonymous closure>':.
    //     0x7dccbc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14cc8] AnonymousClosure: (0x7dcd4c), in [package:umrem_demo/features/admin/screens/all_locations_map_view.dart] AllLocationsMapView::build (0x7dcca4)
    //     0x7dccc0: ldr             x1, [x1, #0xcc8]
    // 0x7dccc4: r2 = Null
    //     0x7dccc4: mov             x2, NULL
    // 0x7dccc8: r0 = AllocateClosure()
    //     0x7dccc8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7dcccc: r1 = <LocationTrackingProvider>
    //     0x7dcccc: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7dccd0: ldr             x1, [x1, #0x9e8]
    // 0x7dccd4: stur            x0, [fp, #-8]
    // 0x7dccd8: r0 = _CreateInheritedProvider()
    //     0x7dccd8: bl              #0x5ea980  ; Allocate_CreateInheritedProviderStub -> _CreateInheritedProvider<X0> (size=0x20)
    // 0x7dccdc: mov             x2, x0
    // 0x7dcce0: ldur            x0, [fp, #-8]
    // 0x7dcce4: stur            x2, [fp, #-0x10]
    // 0x7dcce8: StoreField: r2->field_b = r0
    //     0x7dcce8: stur            w0, [x2, #0xb]
    // 0x7dccec: r0 = Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static.
    //     0x7dccec: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de0] Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static. (0x7f22905eadd4)
    //     0x7dccf0: ldr             x0, [x0, #0xde0]
    // 0x7dccf4: ArrayStore: r2[0] = r0  ; List_4
    //     0x7dccf4: stur            w0, [x2, #0x17]
    // 0x7dccf8: r0 = Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static.
    //     0x7dccf8: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de8] Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static. (0x7f22905ead4c)
    //     0x7dccfc: ldr             x0, [x0, #0xde8]
    // 0x7dcd00: StoreField: r2->field_1b = r0
    //     0x7dcd00: stur            w0, [x2, #0x1b]
    // 0x7dcd04: r1 = <LocationTrackingProvider>
    //     0x7dcd04: add             x1, PP, #0x14, lsl #12  ; [pp+0x149e8] TypeArguments: <LocationTrackingProvider>
    //     0x7dcd08: ldr             x1, [x1, #0x9e8]
    // 0x7dcd0c: r0 = ChangeNotifierProvider()
    //     0x7dcd0c: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x7dcd10: mov             x2, x0
    // 0x7dcd14: ldur            x0, [fp, #-0x10]
    // 0x7dcd18: stur            x2, [fp, #-8]
    // 0x7dcd1c: StoreField: r2->field_13 = r0
    //     0x7dcd1c: stur            w0, [x2, #0x13]
    // 0x7dcd20: r0 = Instance__AllLocationsMapContent
    //     0x7dcd20: add             x0, PP, #0x14, lsl #12  ; [pp+0x14cd0] Obj!_AllLocationsMapContent@a1ae81
    //     0x7dcd24: ldr             x0, [x0, #0xcd0]
    // 0x7dcd28: StoreField: r2->field_b = r0
    //     0x7dcd28: stur            w0, [x2, #0xb]
    // 0x7dcd2c: mov             x1, x2
    // 0x7dcd30: r0 = _NativeScene._()
    //     0x7dcd30: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x7dcd34: ldur            x0, [fp, #-8]
    // 0x7dcd38: LeaveFrame
    //     0x7dcd38: mov             SP, fp
    //     0x7dcd3c: ldp             fp, lr, [SP], #0x10
    // 0x7dcd40: ret
    //     0x7dcd40: ret             
    // 0x7dcd44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dcd44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dcd48: b               #0x7dccbc
  }
  [closure] LocationTrackingProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7dcd4c, size: 0x40
    // 0x7dcd4c: EnterFrame
    //     0x7dcd4c: stp             fp, lr, [SP, #-0x10]!
    //     0x7dcd50: mov             fp, SP
    // 0x7dcd54: AllocStack(0x8)
    //     0x7dcd54: sub             SP, SP, #8
    // 0x7dcd58: CheckStackOverflow
    //     0x7dcd58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dcd5c: cmp             SP, x16
    //     0x7dcd60: b.ls            #0x7dcd84
    // 0x7dcd64: r0 = LocationTrackingProvider()
    //     0x7dcd64: bl              #0x7ddc44  ; AllocateLocationTrackingProviderStub -> LocationTrackingProvider (size=0x48)
    // 0x7dcd68: mov             x1, x0
    // 0x7dcd6c: stur            x0, [fp, #-8]
    // 0x7dcd70: r0 = LocationTrackingProvider()
    //     0x7dcd70: bl              #0x7dcd8c  ; [package:umrem_demo/features/admin/providers/location_tracking_provider.dart] LocationTrackingProvider::LocationTrackingProvider
    // 0x7dcd74: ldur            x0, [fp, #-8]
    // 0x7dcd78: LeaveFrame
    //     0x7dcd78: mov             SP, fp
    //     0x7dcd7c: ldp             fp, lr, [SP], #0x10
    // 0x7dcd80: ret
    //     0x7dcd80: ret             
    // 0x7dcd84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dcd84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dcd88: b               #0x7dcd64
  }
}
