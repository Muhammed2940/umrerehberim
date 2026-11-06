// lib: , url: package:umrem_demo/features/admin/widgets/events/delete_dialog.dart

// class id: 1049547, size: 0x8
class :: {

  static _ showDelete(/* No info */) async {
    // ** addr: 0x7e5458, size: 0x11c
    // 0x7e5458: EnterFrame
    //     0x7e5458: stp             fp, lr, [SP, #-0x10]!
    //     0x7e545c: mov             fp, SP
    // 0x7e5460: AllocStack(0x38)
    //     0x7e5460: sub             SP, SP, #0x38
    // 0x7e5464: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */)
    //     0x7e5464: stur            NULL, [fp, #-8]
    //     0x7e5468: stur            x1, [fp, #-0x10]
    //     0x7e546c: stur            x2, [fp, #-0x18]
    // 0x7e5470: CheckStackOverflow
    //     0x7e5470: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5474: cmp             SP, x16
    //     0x7e5478: b.ls            #0x7e556c
    // 0x7e547c: r1 = 2
    //     0x7e547c: mov             x1, #2
    // 0x7e5480: r0 = AllocateContext()
    //     0x7e5480: bl              #0x927010  ; AllocateContextStub
    // 0x7e5484: mov             x1, x0
    // 0x7e5488: ldur            x0, [fp, #-0x10]
    // 0x7e548c: stur            x1, [fp, #-0x20]
    // 0x7e5490: StoreField: r1->field_f = r0
    //     0x7e5490: stur            w0, [x1, #0xf]
    // 0x7e5494: ldur            x0, [fp, #-0x18]
    // 0x7e5498: StoreField: r1->field_13 = r0
    //     0x7e5498: stur            w0, [x1, #0x13]
    // 0x7e549c: InitAsync() -> Future<void?>
    //     0x7e549c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e54a0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e54a4: ldur            x2, [fp, #-0x20]
    // 0x7e54a8: LoadField: r0 = r2->field_13
    //     0x7e54a8: ldur            w0, [x2, #0x13]
    // 0x7e54ac: DecompressPointer r0
    //     0x7e54ac: add             x0, x0, HEAP, lsl #32
    // 0x7e54b0: r16 = <EventProvider>
    //     0x7e54b0: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x7e54b4: ldr             x16, [x16, #0xb80]
    // 0x7e54b8: stp             x0, x16, [SP]
    // 0x7e54bc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e54bc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e54c0: r0 = ReadContext.read()
    //     0x7e54c0: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x7e54c4: mov             x3, x0
    // 0x7e54c8: ldur            x0, [fp, #-0x20]
    // 0x7e54cc: stur            x3, [fp, #-0x18]
    // 0x7e54d0: LoadField: r4 = r0->field_13
    //     0x7e54d0: ldur            w4, [x0, #0x13]
    // 0x7e54d4: DecompressPointer r4
    //     0x7e54d4: add             x4, x4, HEAP, lsl #32
    // 0x7e54d8: mov             x2, x0
    // 0x7e54dc: stur            x4, [fp, #-0x10]
    // 0x7e54e0: r1 = Function '<anonymous closure>': static.
    //     0x7e54e0: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c498] AnonymousClosure: static (0x7e56e0), in [package:umrem_demo/features/admin/widgets/events/delete_dialog.dart] ::showDelete (0x7e5458)
    //     0x7e54e4: ldr             x1, [x1, #0x498]
    // 0x7e54e8: r0 = AllocateClosure()
    //     0x7e54e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e54ec: r16 = <bool>
    //     0x7e54ec: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x7e54f0: stp             x0, x16, [SP, #8]
    // 0x7e54f4: ldur            x16, [fp, #-0x10]
    // 0x7e54f8: str             x16, [SP]
    // 0x7e54fc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e54fc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e5500: r0 = showDialog()
    //     0x7e5500: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7e5504: mov             x1, x0
    // 0x7e5508: stur            x1, [fp, #-0x10]
    // 0x7e550c: r0 = Await()
    //     0x7e550c: bl              #0x3dd188  ; AwaitStub
    // 0x7e5510: r1 = 60
    //     0x7e5510: mov             x1, #0x3c
    // 0x7e5514: branchIfSmi(r0, 0x7e5520)
    //     0x7e5514: tbz             w0, #0, #0x7e5520
    // 0x7e5518: r1 = LoadClassIdInstr(r0)
    //     0x7e5518: ldur            x1, [x0, #-1]
    //     0x7e551c: ubfx            x1, x1, #0xc, #0x14
    // 0x7e5520: r16 = true
    //     0x7e5520: add             x16, NULL, #0x20  ; true
    // 0x7e5524: stp             x16, x0, [SP]
    // 0x7e5528: mov             x0, x1
    // 0x7e552c: mov             lr, x0
    // 0x7e5530: ldr             lr, [x21, lr, lsl #3]
    // 0x7e5534: blr             lr
    // 0x7e5538: tbnz            w0, #4, #0x7e5564
    // 0x7e553c: ldur            x0, [fp, #-0x20]
    // 0x7e5540: LoadField: r1 = r0->field_f
    //     0x7e5540: ldur            w1, [x0, #0xf]
    // 0x7e5544: DecompressPointer r1
    //     0x7e5544: add             x1, x1, HEAP, lsl #32
    // 0x7e5548: LoadField: r2 = r1->field_7
    //     0x7e5548: ldur            w2, [x1, #7]
    // 0x7e554c: DecompressPointer r2
    //     0x7e554c: add             x2, x2, HEAP, lsl #32
    // 0x7e5550: ldur            x1, [fp, #-0x18]
    // 0x7e5554: r0 = deleteEvent()
    //     0x7e5554: bl              #0x7e5574  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::deleteEvent
    // 0x7e5558: mov             x1, x0
    // 0x7e555c: stur            x1, [fp, #-0x10]
    // 0x7e5560: r0 = Await()
    //     0x7e5560: bl              #0x3dd188  ; AwaitStub
    // 0x7e5564: r0 = Null
    //     0x7e5564: mov             x0, NULL
    // 0x7e5568: r0 = ReturnAsyncNotFuture()
    //     0x7e5568: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e556c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e556c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5570: b               #0x7e547c
  }
  [closure] static AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7e56e0, size: 0x1b4
    // 0x7e56e0: EnterFrame
    //     0x7e56e0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e56e4: mov             fp, SP
    // 0x7e56e8: AllocStack(0x38)
    //     0x7e56e8: sub             SP, SP, #0x38
    // 0x7e56ec: SetupParameters([dynamic _ /* r0 */])
    //     0x7e56ec: ldr             x0, [fp, #0x18]
    //     0x7e56f0: ldur            w3, [x0, #0x17]
    //     0x7e56f4: add             x3, x3, HEAP, lsl #32
    //     0x7e56f8: stur            x3, [fp, #-8]
    // 0x7e56fc: CheckStackOverflow
    //     0x7e56fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5700: cmp             SP, x16
    //     0x7e5704: b.ls            #0x7e588c
    // 0x7e5708: r1 = Null
    //     0x7e5708: mov             x1, NULL
    // 0x7e570c: r2 = 6
    //     0x7e570c: mov             x2, #6
    // 0x7e5710: r0 = AllocateArray()
    //     0x7e5710: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e5714: r16 = "\""
    //     0x7e5714: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x7e5718: ldr             x16, [x16, #0x40]
    // 0x7e571c: StoreField: r0->field_f = r16
    //     0x7e571c: stur            w16, [x0, #0xf]
    // 0x7e5720: ldur            x2, [fp, #-8]
    // 0x7e5724: LoadField: r1 = r2->field_f
    //     0x7e5724: ldur            w1, [x2, #0xf]
    // 0x7e5728: DecompressPointer r1
    //     0x7e5728: add             x1, x1, HEAP, lsl #32
    // 0x7e572c: LoadField: r3 = r1->field_b
    //     0x7e572c: ldur            w3, [x1, #0xb]
    // 0x7e5730: DecompressPointer r3
    //     0x7e5730: add             x3, x3, HEAP, lsl #32
    // 0x7e5734: StoreField: r0->field_13 = r3
    //     0x7e5734: stur            w3, [x0, #0x13]
    // 0x7e5738: r16 = "\" silinsin mi\?"
    //     0x7e5738: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c4a0] "\" silinsin mi\?"
    //     0x7e573c: ldr             x16, [x16, #0x4a0]
    // 0x7e5740: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e5740: stur            w16, [x0, #0x17]
    // 0x7e5744: str             x0, [SP]
    // 0x7e5748: r0 = _interpolate()
    //     0x7e5748: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e574c: stur            x0, [fp, #-0x10]
    // 0x7e5750: r0 = Text()
    //     0x7e5750: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e5754: mov             x3, x0
    // 0x7e5758: ldur            x0, [fp, #-0x10]
    // 0x7e575c: stur            x3, [fp, #-0x18]
    // 0x7e5760: StoreField: r3->field_b = r0
    //     0x7e5760: stur            w0, [x3, #0xb]
    // 0x7e5764: ldur            x2, [fp, #-8]
    // 0x7e5768: r1 = Function '<anonymous closure>': static.
    //     0x7e5768: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c4a8] AnonymousClosure: static (0x7e58f0), in [package:umrem_demo/features/admin/widgets/events/delete_dialog.dart] ::showDelete (0x7e5458)
    //     0x7e576c: ldr             x1, [x1, #0x4a8]
    // 0x7e5770: r0 = AllocateClosure()
    //     0x7e5770: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e5774: stur            x0, [fp, #-0x10]
    // 0x7e5778: r0 = TextButton()
    //     0x7e5778: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7e577c: mov             x1, x0
    // 0x7e5780: ldur            x0, [fp, #-0x10]
    // 0x7e5784: stur            x1, [fp, #-0x20]
    // 0x7e5788: StoreField: r1->field_b = r0
    //     0x7e5788: stur            w0, [x1, #0xb]
    // 0x7e578c: r0 = false
    //     0x7e578c: add             x0, NULL, #0x30  ; false
    // 0x7e5790: StoreField: r1->field_27 = r0
    //     0x7e5790: stur            w0, [x1, #0x27]
    // 0x7e5794: r2 = true
    //     0x7e5794: add             x2, NULL, #0x20  ; true
    // 0x7e5798: StoreField: r1->field_2f = r2
    //     0x7e5798: stur            w2, [x1, #0x2f]
    // 0x7e579c: r3 = Instance_Text
    //     0x7e579c: add             x3, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x7e57a0: ldr             x3, [x3, #0x7d0]
    // 0x7e57a4: StoreField: r1->field_37 = r3
    //     0x7e57a4: stur            w3, [x1, #0x37]
    // 0x7e57a8: r16 = Instance_MaterialColor
    //     0x7e57a8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7e57ac: ldr             x16, [x16, #0xb90]
    // 0x7e57b0: r30 = Instance_Color
    //     0x7e57b0: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e57b4: stp             lr, x16, [SP]
    // 0x7e57b8: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x7e57b8: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x7e57bc: ldr             x4, [x4, #0x1a8]
    // 0x7e57c0: r0 = styleFrom()
    //     0x7e57c0: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7e57c4: ldur            x2, [fp, #-8]
    // 0x7e57c8: r1 = Function '<anonymous closure>': static.
    //     0x7e57c8: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c4b0] AnonymousClosure: static (0x7e5894), in [package:umrem_demo/features/admin/widgets/events/delete_dialog.dart] ::showDelete (0x7e5458)
    //     0x7e57cc: ldr             x1, [x1, #0x4b0]
    // 0x7e57d0: stur            x0, [fp, #-8]
    // 0x7e57d4: r0 = AllocateClosure()
    //     0x7e57d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e57d8: stur            x0, [fp, #-0x10]
    // 0x7e57dc: r0 = ElevatedButton()
    //     0x7e57dc: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7e57e0: mov             x3, x0
    // 0x7e57e4: ldur            x0, [fp, #-0x10]
    // 0x7e57e8: stur            x3, [fp, #-0x28]
    // 0x7e57ec: StoreField: r3->field_b = r0
    //     0x7e57ec: stur            w0, [x3, #0xb]
    // 0x7e57f0: ldur            x0, [fp, #-8]
    // 0x7e57f4: StoreField: r3->field_1b = r0
    //     0x7e57f4: stur            w0, [x3, #0x1b]
    // 0x7e57f8: r0 = false
    //     0x7e57f8: add             x0, NULL, #0x30  ; false
    // 0x7e57fc: StoreField: r3->field_27 = r0
    //     0x7e57fc: stur            w0, [x3, #0x27]
    // 0x7e5800: r1 = true
    //     0x7e5800: add             x1, NULL, #0x20  ; true
    // 0x7e5804: StoreField: r3->field_2f = r1
    //     0x7e5804: stur            w1, [x3, #0x2f]
    // 0x7e5808: r1 = Instance_Text
    //     0x7e5808: add             x1, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x7e580c: ldr             x1, [x1, #0x7e0]
    // 0x7e5810: StoreField: r3->field_37 = r1
    //     0x7e5810: stur            w1, [x3, #0x37]
    // 0x7e5814: r1 = Null
    //     0x7e5814: mov             x1, NULL
    // 0x7e5818: r2 = 4
    //     0x7e5818: mov             x2, #4
    // 0x7e581c: r0 = AllocateArray()
    //     0x7e581c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e5820: mov             x2, x0
    // 0x7e5824: ldur            x0, [fp, #-0x20]
    // 0x7e5828: stur            x2, [fp, #-8]
    // 0x7e582c: StoreField: r2->field_f = r0
    //     0x7e582c: stur            w0, [x2, #0xf]
    // 0x7e5830: ldur            x0, [fp, #-0x28]
    // 0x7e5834: StoreField: r2->field_13 = r0
    //     0x7e5834: stur            w0, [x2, #0x13]
    // 0x7e5838: r1 = <Widget>
    //     0x7e5838: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e583c: r0 = AllocateGrowableArray()
    //     0x7e583c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e5840: mov             x1, x0
    // 0x7e5844: ldur            x0, [fp, #-8]
    // 0x7e5848: stur            x1, [fp, #-0x10]
    // 0x7e584c: StoreField: r1->field_f = r0
    //     0x7e584c: stur            w0, [x1, #0xf]
    // 0x7e5850: r0 = 4
    //     0x7e5850: mov             x0, #4
    // 0x7e5854: StoreField: r1->field_b = r0
    //     0x7e5854: stur            w0, [x1, #0xb]
    // 0x7e5858: r0 = AlertDialog()
    //     0x7e5858: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7e585c: r1 = Instance_Text
    //     0x7e585c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c4b8] Obj!Text@a1dac1
    //     0x7e5860: ldr             x1, [x1, #0x4b8]
    // 0x7e5864: StoreField: r0->field_f = r1
    //     0x7e5864: stur            w1, [x0, #0xf]
    // 0x7e5868: ldur            x1, [fp, #-0x18]
    // 0x7e586c: StoreField: r0->field_1b = r1
    //     0x7e586c: stur            w1, [x0, #0x1b]
    // 0x7e5870: ldur            x1, [fp, #-0x10]
    // 0x7e5874: StoreField: r0->field_27 = r1
    //     0x7e5874: stur            w1, [x0, #0x27]
    // 0x7e5878: r1 = false
    //     0x7e5878: add             x1, NULL, #0x30  ; false
    // 0x7e587c: StoreField: r0->field_6b = r1
    //     0x7e587c: stur            w1, [x0, #0x6b]
    // 0x7e5880: LeaveFrame
    //     0x7e5880: mov             SP, fp
    //     0x7e5884: ldp             fp, lr, [SP], #0x10
    // 0x7e5888: ret
    //     0x7e5888: ret             
    // 0x7e588c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e588c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5890: b               #0x7e5708
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x7e5894, size: 0x5c
    // 0x7e5894: EnterFrame
    //     0x7e5894: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5898: mov             fp, SP
    // 0x7e589c: AllocStack(0x18)
    //     0x7e589c: sub             SP, SP, #0x18
    // 0x7e58a0: SetupParameters([dynamic _ /* r0 */])
    //     0x7e58a0: ldr             x0, [fp, #0x10]
    //     0x7e58a4: ldur            w1, [x0, #0x17]
    //     0x7e58a8: add             x1, x1, HEAP, lsl #32
    // 0x7e58ac: CheckStackOverflow
    //     0x7e58ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e58b0: cmp             SP, x16
    //     0x7e58b4: b.ls            #0x7e58e8
    // 0x7e58b8: LoadField: r0 = r1->field_13
    //     0x7e58b8: ldur            w0, [x1, #0x13]
    // 0x7e58bc: DecompressPointer r0
    //     0x7e58bc: add             x0, x0, HEAP, lsl #32
    // 0x7e58c0: r16 = <bool>
    //     0x7e58c0: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x7e58c4: stp             x0, x16, [SP, #8]
    // 0x7e58c8: r16 = true
    //     0x7e58c8: add             x16, NULL, #0x20  ; true
    // 0x7e58cc: str             x16, [SP]
    // 0x7e58d0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e58d0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e58d4: r0 = pop()
    //     0x7e58d4: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7e58d8: r0 = Null
    //     0x7e58d8: mov             x0, NULL
    // 0x7e58dc: LeaveFrame
    //     0x7e58dc: mov             SP, fp
    //     0x7e58e0: ldp             fp, lr, [SP], #0x10
    // 0x7e58e4: ret
    //     0x7e58e4: ret             
    // 0x7e58e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e58e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e58ec: b               #0x7e58b8
  }
  [closure] static void <anonymous closure>(dynamic) {
    // ** addr: 0x7e58f0, size: 0x5c
    // 0x7e58f0: EnterFrame
    //     0x7e58f0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e58f4: mov             fp, SP
    // 0x7e58f8: AllocStack(0x18)
    //     0x7e58f8: sub             SP, SP, #0x18
    // 0x7e58fc: SetupParameters([dynamic _ /* r0 */])
    //     0x7e58fc: ldr             x0, [fp, #0x10]
    //     0x7e5900: ldur            w1, [x0, #0x17]
    //     0x7e5904: add             x1, x1, HEAP, lsl #32
    // 0x7e5908: CheckStackOverflow
    //     0x7e5908: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e590c: cmp             SP, x16
    //     0x7e5910: b.ls            #0x7e5944
    // 0x7e5914: LoadField: r0 = r1->field_13
    //     0x7e5914: ldur            w0, [x1, #0x13]
    // 0x7e5918: DecompressPointer r0
    //     0x7e5918: add             x0, x0, HEAP, lsl #32
    // 0x7e591c: r16 = <bool>
    //     0x7e591c: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x7e5920: stp             x0, x16, [SP, #8]
    // 0x7e5924: r16 = false
    //     0x7e5924: add             x16, NULL, #0x30  ; false
    // 0x7e5928: str             x16, [SP]
    // 0x7e592c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e592c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e5930: r0 = pop()
    //     0x7e5930: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7e5934: r0 = Null
    //     0x7e5934: mov             x0, NULL
    // 0x7e5938: LeaveFrame
    //     0x7e5938: mov             SP, fp
    //     0x7e593c: ldp             fp, lr, [SP], #0x10
    // 0x7e5940: ret
    //     0x7e5940: ret             
    // 0x7e5944: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5944: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5948: b               #0x7e5914
  }
}
