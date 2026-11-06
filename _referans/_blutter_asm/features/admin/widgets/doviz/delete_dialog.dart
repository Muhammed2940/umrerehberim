// lib: , url: package:umrem_demo/features/admin/widgets/doviz/delete_dialog.dart

// class id: 1049543, size: 0x8
class :: {
}

// class id: 2922, size: 0x10, field offset: 0xc
//   const constructor, 
class DeleteDialog extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e32b0, size: 0x188
    // 0x7e32b0: EnterFrame
    //     0x7e32b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7e32b4: mov             fp, SP
    // 0x7e32b8: AllocStack(0x38)
    //     0x7e32b8: sub             SP, SP, #0x38
    // 0x7e32bc: SetupParameters(DeleteDialog this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7e32bc: stur            x1, [fp, #-8]
    //     0x7e32c0: stur            x2, [fp, #-0x10]
    // 0x7e32c4: CheckStackOverflow
    //     0x7e32c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e32c8: cmp             SP, x16
    //     0x7e32cc: b.ls            #0x7e3430
    // 0x7e32d0: r1 = 2
    //     0x7e32d0: mov             x1, #2
    // 0x7e32d4: r0 = AllocateContext()
    //     0x7e32d4: bl              #0x927010  ; AllocateContextStub
    // 0x7e32d8: mov             x1, x0
    // 0x7e32dc: ldur            x0, [fp, #-8]
    // 0x7e32e0: stur            x1, [fp, #-0x18]
    // 0x7e32e4: StoreField: r1->field_f = r0
    //     0x7e32e4: stur            w0, [x1, #0xf]
    // 0x7e32e8: ldur            x0, [fp, #-0x10]
    // 0x7e32ec: StoreField: r1->field_13 = r0
    //     0x7e32ec: stur            w0, [x1, #0x13]
    // 0x7e32f0: r0 = Text()
    //     0x7e32f0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e32f4: mov             x3, x0
    // 0x7e32f8: r0 = "null dövizini silmek istediğinize emin misiniz\?"
    //     0x7e32f8: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c418] "null dövizini silmek istediğinize emin misiniz\?"
    //     0x7e32fc: ldr             x0, [x0, #0x418]
    // 0x7e3300: stur            x3, [fp, #-8]
    // 0x7e3304: StoreField: r3->field_b = r0
    //     0x7e3304: stur            w0, [x3, #0xb]
    // 0x7e3308: ldur            x2, [fp, #-0x18]
    // 0x7e330c: r1 = Function '<anonymous closure>':.
    //     0x7e330c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c420] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7e3310: ldr             x1, [x1, #0x420]
    // 0x7e3314: r0 = AllocateClosure()
    //     0x7e3314: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e3318: stur            x0, [fp, #-0x10]
    // 0x7e331c: r0 = TextButton()
    //     0x7e331c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7e3320: mov             x1, x0
    // 0x7e3324: ldur            x0, [fp, #-0x10]
    // 0x7e3328: stur            x1, [fp, #-0x20]
    // 0x7e332c: StoreField: r1->field_b = r0
    //     0x7e332c: stur            w0, [x1, #0xb]
    // 0x7e3330: r0 = false
    //     0x7e3330: add             x0, NULL, #0x30  ; false
    // 0x7e3334: StoreField: r1->field_27 = r0
    //     0x7e3334: stur            w0, [x1, #0x27]
    // 0x7e3338: r2 = true
    //     0x7e3338: add             x2, NULL, #0x20  ; true
    // 0x7e333c: StoreField: r1->field_2f = r2
    //     0x7e333c: stur            w2, [x1, #0x2f]
    // 0x7e3340: r3 = Instance_Text
    //     0x7e3340: add             x3, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x7e3344: ldr             x3, [x3, #0x7d0]
    // 0x7e3348: StoreField: r1->field_37 = r3
    //     0x7e3348: stur            w3, [x1, #0x37]
    // 0x7e334c: r16 = Instance_MaterialColor
    //     0x7e334c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7e3350: ldr             x16, [x16, #0xb90]
    // 0x7e3354: r30 = Instance_Color
    //     0x7e3354: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e3358: stp             lr, x16, [SP]
    // 0x7e335c: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x7e335c: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x7e3360: ldr             x4, [x4, #0x1a8]
    // 0x7e3364: r0 = styleFrom()
    //     0x7e3364: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7e3368: ldur            x2, [fp, #-0x18]
    // 0x7e336c: r1 = Function '<anonymous closure>':.
    //     0x7e336c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c428] AnonymousClosure: (0x7e3438), in [package:umrem_demo/features/admin/widgets/doviz/delete_dialog.dart] DeleteDialog::build (0x7e32b0)
    //     0x7e3370: ldr             x1, [x1, #0x428]
    // 0x7e3374: stur            x0, [fp, #-0x10]
    // 0x7e3378: r0 = AllocateClosure()
    //     0x7e3378: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e337c: stur            x0, [fp, #-0x18]
    // 0x7e3380: r0 = ElevatedButton()
    //     0x7e3380: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7e3384: mov             x3, x0
    // 0x7e3388: ldur            x0, [fp, #-0x18]
    // 0x7e338c: stur            x3, [fp, #-0x28]
    // 0x7e3390: StoreField: r3->field_b = r0
    //     0x7e3390: stur            w0, [x3, #0xb]
    // 0x7e3394: ldur            x0, [fp, #-0x10]
    // 0x7e3398: StoreField: r3->field_1b = r0
    //     0x7e3398: stur            w0, [x3, #0x1b]
    // 0x7e339c: r0 = false
    //     0x7e339c: add             x0, NULL, #0x30  ; false
    // 0x7e33a0: StoreField: r3->field_27 = r0
    //     0x7e33a0: stur            w0, [x3, #0x27]
    // 0x7e33a4: r1 = true
    //     0x7e33a4: add             x1, NULL, #0x20  ; true
    // 0x7e33a8: StoreField: r3->field_2f = r1
    //     0x7e33a8: stur            w1, [x3, #0x2f]
    // 0x7e33ac: r1 = Instance_Text
    //     0x7e33ac: add             x1, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x7e33b0: ldr             x1, [x1, #0x7e0]
    // 0x7e33b4: StoreField: r3->field_37 = r1
    //     0x7e33b4: stur            w1, [x3, #0x37]
    // 0x7e33b8: r1 = Null
    //     0x7e33b8: mov             x1, NULL
    // 0x7e33bc: r2 = 4
    //     0x7e33bc: mov             x2, #4
    // 0x7e33c0: r0 = AllocateArray()
    //     0x7e33c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e33c4: mov             x2, x0
    // 0x7e33c8: ldur            x0, [fp, #-0x20]
    // 0x7e33cc: stur            x2, [fp, #-0x10]
    // 0x7e33d0: StoreField: r2->field_f = r0
    //     0x7e33d0: stur            w0, [x2, #0xf]
    // 0x7e33d4: ldur            x0, [fp, #-0x28]
    // 0x7e33d8: StoreField: r2->field_13 = r0
    //     0x7e33d8: stur            w0, [x2, #0x13]
    // 0x7e33dc: r1 = <Widget>
    //     0x7e33dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e33e0: r0 = AllocateGrowableArray()
    //     0x7e33e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e33e4: mov             x1, x0
    // 0x7e33e8: ldur            x0, [fp, #-0x10]
    // 0x7e33ec: stur            x1, [fp, #-0x18]
    // 0x7e33f0: StoreField: r1->field_f = r0
    //     0x7e33f0: stur            w0, [x1, #0xf]
    // 0x7e33f4: r0 = 4
    //     0x7e33f4: mov             x0, #4
    // 0x7e33f8: StoreField: r1->field_b = r0
    //     0x7e33f8: stur            w0, [x1, #0xb]
    // 0x7e33fc: r0 = AlertDialog()
    //     0x7e33fc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7e3400: r1 = Instance_Text
    //     0x7e3400: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c430] Obj!Text@a1d9d1
    //     0x7e3404: ldr             x1, [x1, #0x430]
    // 0x7e3408: StoreField: r0->field_f = r1
    //     0x7e3408: stur            w1, [x0, #0xf]
    // 0x7e340c: ldur            x1, [fp, #-8]
    // 0x7e3410: StoreField: r0->field_1b = r1
    //     0x7e3410: stur            w1, [x0, #0x1b]
    // 0x7e3414: ldur            x1, [fp, #-0x18]
    // 0x7e3418: StoreField: r0->field_27 = r1
    //     0x7e3418: stur            w1, [x0, #0x27]
    // 0x7e341c: r1 = false
    //     0x7e341c: add             x1, NULL, #0x30  ; false
    // 0x7e3420: StoreField: r0->field_6b = r1
    //     0x7e3420: stur            w1, [x0, #0x6b]
    // 0x7e3424: LeaveFrame
    //     0x7e3424: mov             SP, fp
    //     0x7e3428: ldp             fp, lr, [SP], #0x10
    // 0x7e342c: ret
    //     0x7e342c: ret             
    // 0x7e3430: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e3430: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e3434: b               #0x7e32d0
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x7e3438, size: 0x90
    // 0x7e3438: EnterFrame
    //     0x7e3438: stp             fp, lr, [SP, #-0x10]!
    //     0x7e343c: mov             fp, SP
    // 0x7e3440: AllocStack(0x20)
    //     0x7e3440: sub             SP, SP, #0x20
    // 0x7e3444: SetupParameters(DeleteDialog this /* r1 */)
    //     0x7e3444: stur            NULL, [fp, #-8]
    //     0x7e3448: mov             x0, #0
    //     0x7e344c: add             x1, fp, w0, sxtw #2
    //     0x7e3450: ldr             x1, [x1, #0x10]
    //     0x7e3454: ldur            w2, [x1, #0x17]
    //     0x7e3458: add             x2, x2, HEAP, lsl #32
    //     0x7e345c: stur            x2, [fp, #-0x10]
    // 0x7e3460: CheckStackOverflow
    //     0x7e3460: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e3464: cmp             SP, x16
    //     0x7e3468: b.ls            #0x7e34c0
    // 0x7e346c: InitAsync() -> Future<void?>
    //     0x7e346c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7e3470: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e3474: ldur            x0, [fp, #-0x10]
    // 0x7e3478: LoadField: r1 = r0->field_13
    //     0x7e3478: ldur            w1, [x0, #0x13]
    // 0x7e347c: DecompressPointer r1
    //     0x7e347c: add             x1, x1, HEAP, lsl #32
    // 0x7e3480: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7e3480: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7e3484: r0 = of()
    //     0x7e3484: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x7e3488: ldur            x0, [fp, #-0x10]
    // 0x7e348c: LoadField: r1 = r0->field_13
    //     0x7e348c: ldur            w1, [x0, #0x13]
    // 0x7e3490: DecompressPointer r1
    //     0x7e3490: add             x1, x1, HEAP, lsl #32
    // 0x7e3494: r0 = of()
    //     0x7e3494: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x7e3498: ldur            x0, [fp, #-0x10]
    // 0x7e349c: LoadField: r1 = r0->field_13
    //     0x7e349c: ldur            w1, [x0, #0x13]
    // 0x7e34a0: DecompressPointer r1
    //     0x7e34a0: add             x1, x1, HEAP, lsl #32
    // 0x7e34a4: r16 = <CurrencyProvider>
    //     0x7e34a4: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b70] TypeArguments: <CurrencyProvider>
    //     0x7e34a8: ldr             x16, [x16, #0xb70]
    // 0x7e34ac: stp             x1, x16, [SP]
    // 0x7e34b0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7e34b0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7e34b4: r0 = ReadContext.read()
    //     0x7e34b4: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x7e34b8: r0 = Null
    //     0x7e34b8: mov             x0, NULL
    // 0x7e34bc: r0 = ReturnAsyncNotFuture()
    //     0x7e34bc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e34c0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e34c0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e34c4: b               #0x7e346c
  }
}
