// lib: , url: package:umrem_demo/features/admin/screens/notifications_page.dart

// class id: 1049531, size: 0x8
class :: {
}

// class id: 2489, size: 0x1c, field offset: 0x14
class _NotificationsPageState extends State<dynamic> {

  _ build(/* No info */) {
    // ** addr: 0x6da2d8, size: 0xa8
    // 0x6da2d8: EnterFrame
    //     0x6da2d8: stp             fp, lr, [SP, #-0x10]!
    //     0x6da2dc: mov             fp, SP
    // 0x6da2e0: AllocStack(0x28)
    //     0x6da2e0: sub             SP, SP, #0x28
    // 0x6da2e4: SetupParameters(_NotificationsPageState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6da2e4: stur            x1, [fp, #-8]
    //     0x6da2e8: stur            x2, [fp, #-0x10]
    // 0x6da2ec: CheckStackOverflow
    //     0x6da2ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6da2f0: cmp             SP, x16
    //     0x6da2f4: b.ls            #0x6da378
    // 0x6da2f8: r1 = 2
    //     0x6da2f8: mov             x1, #2
    // 0x6da2fc: r0 = AllocateContext()
    //     0x6da2fc: bl              #0x927010  ; AllocateContextStub
    // 0x6da300: mov             x1, x0
    // 0x6da304: ldur            x0, [fp, #-8]
    // 0x6da308: stur            x1, [fp, #-0x18]
    // 0x6da30c: StoreField: r1->field_f = r0
    //     0x6da30c: stur            w0, [x1, #0xf]
    // 0x6da310: r16 = <AdminProvider>
    //     0x6da310: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x6da314: ldr             x16, [x16, #0xb50]
    // 0x6da318: ldur            lr, [fp, #-0x10]
    // 0x6da31c: stp             lr, x16, [SP]
    // 0x6da320: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6da320: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6da324: r0 = of()
    //     0x6da324: bl              #0x5de6a0  ; [package:provider/src/provider.dart] Provider::of
    // 0x6da328: ldur            x2, [fp, #-0x18]
    // 0x6da32c: StoreField: r2->field_13 = r0
    //     0x6da32c: stur            w0, [x2, #0x13]
    //     0x6da330: ldurb           w16, [x2, #-1]
    //     0x6da334: ldurb           w17, [x0, #-1]
    //     0x6da338: and             x16, x17, x16, lsr #2
    //     0x6da33c: tst             x16, HEAP, lsr #32
    //     0x6da340: b.eq            #0x6da348
    //     0x6da344: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6da348: r1 = Function '<anonymous closure>':.
    //     0x6da348: add             x1, PP, #0x18, lsl #12  ; [pp+0x18950] AnonymousClosure: (0x6da3a0), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da34c: ldr             x1, [x1, #0x950]
    // 0x6da350: r0 = AllocateClosure()
    //     0x6da350: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da354: r1 = <NotificationProvider>
    //     0x6da354: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b90] TypeArguments: <NotificationProvider>
    //     0x6da358: ldr             x1, [x1, #0xb90]
    // 0x6da35c: stur            x0, [fp, #-8]
    // 0x6da360: r0 = Consumer()
    //     0x6da360: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6da364: ldur            x1, [fp, #-8]
    // 0x6da368: StoreField: r0->field_13 = r1
    //     0x6da368: stur            w1, [x0, #0x13]
    // 0x6da36c: LeaveFrame
    //     0x6da36c: mov             SP, fp
    //     0x6da370: ldp             fp, lr, [SP], #0x10
    // 0x6da374: ret
    //     0x6da374: ret             
    // 0x6da378: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6da378: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6da37c: b               #0x6da2f8
  }
  [closure] Scaffold <anonymous closure>(dynamic, BuildContext, NotificationProvider, Widget?) {
    // ** addr: 0x6da3a0, size: 0xbf8
    // 0x6da3a0: EnterFrame
    //     0x6da3a0: stp             fp, lr, [SP, #-0x10]!
    //     0x6da3a4: mov             fp, SP
    // 0x6da3a8: AllocStack(0x70)
    //     0x6da3a8: sub             SP, SP, #0x70
    // 0x6da3ac: SetupParameters([dynamic _ /* r0 */])
    //     0x6da3ac: ldr             x0, [fp, #0x28]
    //     0x6da3b0: ldur            w1, [x0, #0x17]
    //     0x6da3b4: add             x1, x1, HEAP, lsl #32
    //     0x6da3b8: stur            x1, [fp, #-8]
    // 0x6da3bc: CheckStackOverflow
    //     0x6da3bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6da3c0: cmp             SP, x16
    //     0x6da3c4: b.ls            #0x6daf90
    // 0x6da3c8: r1 = 1
    //     0x6da3c8: mov             x1, #1
    // 0x6da3cc: r0 = AllocateContext()
    //     0x6da3cc: bl              #0x927010  ; AllocateContextStub
    // 0x6da3d0: mov             x1, x0
    // 0x6da3d4: ldur            x0, [fp, #-8]
    // 0x6da3d8: stur            x1, [fp, #-0x10]
    // 0x6da3dc: StoreField: r1->field_b = r0
    //     0x6da3dc: stur            w0, [x1, #0xb]
    // 0x6da3e0: ldr             x2, [fp, #0x18]
    // 0x6da3e4: StoreField: r1->field_f = r2
    //     0x6da3e4: stur            w2, [x1, #0xf]
    // 0x6da3e8: r0 = AppBar()
    //     0x6da3e8: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6da3ec: mov             x1, x0
    // 0x6da3f0: r2 = Instance_Text
    //     0x6da3f0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18958] Obj!Text@a1b5e1
    //     0x6da3f4: ldr             x2, [x2, #0x958]
    // 0x6da3f8: stur            x0, [fp, #-0x18]
    // 0x6da3fc: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6da3fc: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6da400: r0 = AppBar()
    //     0x6da400: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6da404: ldur            x2, [fp, #-0x10]
    // 0x6da408: LoadField: r0 = r2->field_f
    //     0x6da408: ldur            w0, [x2, #0xf]
    // 0x6da40c: DecompressPointer r0
    //     0x6da40c: add             x0, x0, HEAP, lsl #32
    // 0x6da410: LoadField: r3 = r0->field_2b
    //     0x6da410: ldur            w3, [x0, #0x2b]
    // 0x6da414: DecompressPointer r3
    //     0x6da414: add             x3, x3, HEAP, lsl #32
    // 0x6da418: stur            x3, [fp, #-0x20]
    // 0x6da41c: r1 = "Gönderilecek Hedef"
    //     0x6da41c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18960] "Gönderilecek Hedef"
    //     0x6da420: ldr             x1, [x1, #0x960]
    // 0x6da424: r0 = inputDecoration()
    //     0x6da424: bl              #0x6dbc08  ; [package:umrem_demo/features/admin/widgets/notification/input_decoration.dart] ::inputDecoration
    // 0x6da428: ldur            x2, [fp, #-0x10]
    // 0x6da42c: r1 = Function '<anonymous closure>':.
    //     0x6da42c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18968] AnonymousClosure: (0x6de854), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da430: ldr             x1, [x1, #0x968]
    // 0x6da434: stur            x0, [fp, #-0x28]
    // 0x6da438: r0 = AllocateClosure()
    //     0x6da438: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da43c: r1 = <NotificationTargetType>
    //     0x6da43c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18970] TypeArguments: <NotificationTargetType>
    //     0x6da440: ldr             x1, [x1, #0x970]
    // 0x6da444: stur            x0, [fp, #-0x30]
    // 0x6da448: r0 = DropdownButtonFormField()
    //     0x6da448: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6da44c: mov             x1, x0
    // 0x6da450: ldur            x2, [fp, #-0x28]
    // 0x6da454: ldur            x3, [fp, #-0x20]
    // 0x6da458: ldur            x6, [fp, #-0x30]
    // 0x6da45c: r5 = const [Instance of 'DropdownMenuItem<NotificationTargetType>', Instance of 'DropdownMenuItem<NotificationTargetType>', Instance of 'DropdownMenuItem<NotificationTargetType>', Instance of 'DropdownMenuItem<NotificationTargetType>']
    //     0x6da45c: add             x5, PP, #0x18, lsl #12  ; [pp+0x18978] List<DropdownMenuItem<NotificationTargetType>>(4)
    //     0x6da460: ldr             x5, [x5, #0x978]
    // 0x6da464: stur            x0, [fp, #-0x20]
    // 0x6da468: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6da468: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6da46c: r0 = DropdownButtonFormField()
    //     0x6da46c: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6da470: r1 = Null
    //     0x6da470: mov             x1, NULL
    // 0x6da474: r2 = 4
    //     0x6da474: mov             x2, #4
    // 0x6da478: r0 = AllocateArray()
    //     0x6da478: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6da47c: mov             x2, x0
    // 0x6da480: ldur            x0, [fp, #-0x20]
    // 0x6da484: stur            x2, [fp, #-0x28]
    // 0x6da488: StoreField: r2->field_f = r0
    //     0x6da488: stur            w0, [x2, #0xf]
    // 0x6da48c: r16 = Instance_SizedBox
    //     0x6da48c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6da490: ldr             x16, [x16, #0x310]
    // 0x6da494: StoreField: r2->field_13 = r16
    //     0x6da494: stur            w16, [x2, #0x13]
    // 0x6da498: r1 = <Widget>
    //     0x6da498: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6da49c: r0 = AllocateGrowableArray()
    //     0x6da49c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6da4a0: mov             x2, x0
    // 0x6da4a4: ldur            x0, [fp, #-0x28]
    // 0x6da4a8: stur            x2, [fp, #-0x30]
    // 0x6da4ac: StoreField: r2->field_f = r0
    //     0x6da4ac: stur            w0, [x2, #0xf]
    // 0x6da4b0: r0 = 4
    //     0x6da4b0: mov             x0, #4
    // 0x6da4b4: StoreField: r2->field_b = r0
    //     0x6da4b4: stur            w0, [x2, #0xb]
    // 0x6da4b8: ldur            x3, [fp, #-0x10]
    // 0x6da4bc: LoadField: r1 = r3->field_f
    //     0x6da4bc: ldur            w1, [x3, #0xf]
    // 0x6da4c0: DecompressPointer r1
    //     0x6da4c0: add             x1, x1, HEAP, lsl #32
    // 0x6da4c4: LoadField: r4 = r1->field_2b
    //     0x6da4c4: ldur            w4, [x1, #0x2b]
    // 0x6da4c8: DecompressPointer r4
    //     0x6da4c8: add             x4, x4, HEAP, lsl #32
    // 0x6da4cc: r16 = Instance_NotificationTargetType
    //     0x6da4cc: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d58] Obj!NotificationTargetType@a27401
    //     0x6da4d0: ldr             x16, [x16, #0xd58]
    // 0x6da4d4: cmp             w4, w16
    // 0x6da4d8: b.eq            #0x6da62c
    // 0x6da4dc: ldur            x4, [fp, #-8]
    // 0x6da4e0: LoadField: r5 = r1->field_2f
    //     0x6da4e0: ldur            w5, [x1, #0x2f]
    // 0x6da4e4: DecompressPointer r5
    //     0x6da4e4: add             x5, x5, HEAP, lsl #32
    // 0x6da4e8: stur            x5, [fp, #-0x20]
    // 0x6da4ec: r1 = "Sefer"
    //     0x6da4ec: add             x1, PP, #0x12, lsl #12  ; [pp+0x12780] "Sefer"
    //     0x6da4f0: ldr             x1, [x1, #0x780]
    // 0x6da4f4: r0 = inputDecoration()
    //     0x6da4f4: bl              #0x6dbc08  ; [package:umrem_demo/features/admin/widgets/notification/input_decoration.dart] ::inputDecoration
    // 0x6da4f8: mov             x3, x0
    // 0x6da4fc: ldur            x0, [fp, #-8]
    // 0x6da500: stur            x3, [fp, #-0x38]
    // 0x6da504: LoadField: r1 = r0->field_13
    //     0x6da504: ldur            w1, [x0, #0x13]
    // 0x6da508: DecompressPointer r1
    //     0x6da508: add             x1, x1, HEAP, lsl #32
    // 0x6da50c: LoadField: r4 = r1->field_37
    //     0x6da50c: ldur            w4, [x1, #0x37]
    // 0x6da510: DecompressPointer r4
    //     0x6da510: add             x4, x4, HEAP, lsl #32
    // 0x6da514: stur            x4, [fp, #-0x28]
    // 0x6da518: r1 = Function '<anonymous closure>':.
    //     0x6da518: add             x1, PP, #0x18, lsl #12  ; [pp+0x18980] AnonymousClosure: (0x6de694), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6da51c: ldr             x1, [x1, #0x980]
    // 0x6da520: r2 = Null
    //     0x6da520: mov             x2, NULL
    // 0x6da524: r0 = AllocateClosure()
    //     0x6da524: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da528: mov             x1, x0
    // 0x6da52c: ldur            x0, [fp, #-0x28]
    // 0x6da530: r2 = LoadClassIdInstr(r0)
    //     0x6da530: ldur            x2, [x0, #-1]
    //     0x6da534: ubfx            x2, x2, #0xc, #0x14
    // 0x6da538: r16 = <DropdownMenuItem<String>>
    //     0x6da538: add             x16, PP, #0x16, lsl #12  ; [pp+0x16040] TypeArguments: <DropdownMenuItem<String>>
    //     0x6da53c: ldr             x16, [x16, #0x40]
    // 0x6da540: stp             x0, x16, [SP, #8]
    // 0x6da544: str             x1, [SP]
    // 0x6da548: mov             x0, x2
    // 0x6da54c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6da54c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6da550: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6da550: mov             x17, #0xd1d6
    //     0x6da554: add             lr, x0, x17
    //     0x6da558: ldr             lr, [x21, lr, lsl #3]
    //     0x6da55c: blr             lr
    // 0x6da560: r1 = LoadClassIdInstr(r0)
    //     0x6da560: ldur            x1, [x0, #-1]
    //     0x6da564: ubfx            x1, x1, #0xc, #0x14
    // 0x6da568: mov             x16, x0
    // 0x6da56c: mov             x0, x1
    // 0x6da570: mov             x1, x16
    // 0x6da574: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6da574: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6da578: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6da578: mov             x17, #0xd299
    //     0x6da57c: add             lr, x0, x17
    //     0x6da580: ldr             lr, [x21, lr, lsl #3]
    //     0x6da584: blr             lr
    // 0x6da588: ldur            x2, [fp, #-0x10]
    // 0x6da58c: r1 = Function '<anonymous closure>':.
    //     0x6da58c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18988] AnonymousClosure: (0x6de798), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da590: ldr             x1, [x1, #0x988]
    // 0x6da594: stur            x0, [fp, #-0x28]
    // 0x6da598: r0 = AllocateClosure()
    //     0x6da598: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da59c: r1 = <String>
    //     0x6da59c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6da5a0: stur            x0, [fp, #-0x40]
    // 0x6da5a4: r0 = DropdownButtonFormField()
    //     0x6da5a4: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6da5a8: stur            x0, [fp, #-0x48]
    // 0x6da5ac: r16 = true
    //     0x6da5ac: add             x16, NULL, #0x20  ; true
    // 0x6da5b0: r30 = Instance_Text
    //     0x6da5b0: add             lr, PP, #0x18, lsl #12  ; [pp+0x18990] Obj!Text@a1b451
    //     0x6da5b4: ldr             lr, [lr, #0x990]
    // 0x6da5b8: stp             lr, x16, [SP]
    // 0x6da5bc: mov             x1, x0
    // 0x6da5c0: ldur            x2, [fp, #-0x38]
    // 0x6da5c4: ldur            x3, [fp, #-0x20]
    // 0x6da5c8: ldur            x5, [fp, #-0x28]
    // 0x6da5cc: ldur            x6, [fp, #-0x40]
    // 0x6da5d0: r4 = const [0, 0x7, 0x2, 0x5, hint, 0x6, isExpanded, 0x5, null]
    //     0x6da5d0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18998] List(9) [0, 0x7, 0x2, 0x5, "hint", 0x6, "isExpanded", 0x5, Null]
    //     0x6da5d4: ldr             x4, [x4, #0x998]
    // 0x6da5d8: r0 = DropdownButtonFormField()
    //     0x6da5d8: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6da5dc: r1 = Null
    //     0x6da5dc: mov             x1, NULL
    // 0x6da5e0: r2 = 4
    //     0x6da5e0: mov             x2, #4
    // 0x6da5e4: r0 = AllocateArray()
    //     0x6da5e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6da5e8: mov             x2, x0
    // 0x6da5ec: ldur            x0, [fp, #-0x48]
    // 0x6da5f0: stur            x2, [fp, #-0x20]
    // 0x6da5f4: StoreField: r2->field_f = r0
    //     0x6da5f4: stur            w0, [x2, #0xf]
    // 0x6da5f8: r16 = Instance_SizedBox
    //     0x6da5f8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6da5fc: ldr             x16, [x16, #0x310]
    // 0x6da600: StoreField: r2->field_13 = r16
    //     0x6da600: stur            w16, [x2, #0x13]
    // 0x6da604: r1 = <Widget>
    //     0x6da604: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6da608: r0 = AllocateGrowableArray()
    //     0x6da608: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6da60c: mov             x1, x0
    // 0x6da610: ldur            x0, [fp, #-0x20]
    // 0x6da614: StoreField: r1->field_f = r0
    //     0x6da614: stur            w0, [x1, #0xf]
    // 0x6da618: r0 = 4
    //     0x6da618: mov             x0, #4
    // 0x6da61c: StoreField: r1->field_b = r0
    //     0x6da61c: stur            w0, [x1, #0xb]
    // 0x6da620: mov             x2, x1
    // 0x6da624: ldur            x1, [fp, #-0x30]
    // 0x6da628: r0 = addAll()
    //     0x6da628: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6da62c: ldur            x2, [fp, #-0x10]
    // 0x6da630: LoadField: r0 = r2->field_f
    //     0x6da630: ldur            w0, [x2, #0xf]
    // 0x6da634: DecompressPointer r0
    //     0x6da634: add             x0, x0, HEAP, lsl #32
    // 0x6da638: LoadField: r1 = r0->field_2b
    //     0x6da638: ldur            w1, [x0, #0x2b]
    // 0x6da63c: DecompressPointer r1
    //     0x6da63c: add             x1, x1, HEAP, lsl #32
    // 0x6da640: r16 = Instance_NotificationTargetType
    //     0x6da640: add             x16, PP, #0x18, lsl #12  ; [pp+0x189a0] Obj!NotificationTargetType@a273c1
    //     0x6da644: ldr             x16, [x16, #0x9a0]
    // 0x6da648: cmp             w1, w16
    // 0x6da64c: b.eq            #0x6da660
    // 0x6da650: r16 = Instance_NotificationTargetType
    //     0x6da650: add             x16, PP, #0x18, lsl #12  ; [pp+0x189a8] Obj!NotificationTargetType@a273a1
    //     0x6da654: ldr             x16, [x16, #0x9a8]
    // 0x6da658: cmp             w1, w16
    // 0x6da65c: b.ne            #0x6da838
    // 0x6da660: LoadField: r3 = r0->field_33
    //     0x6da660: ldur            w3, [x0, #0x33]
    // 0x6da664: DecompressPointer r3
    //     0x6da664: add             x3, x3, HEAP, lsl #32
    // 0x6da668: stur            x3, [fp, #-0x20]
    // 0x6da66c: r1 = "Otel"
    //     0x6da66c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12798] "Otel"
    //     0x6da670: ldr             x1, [x1, #0x798]
    // 0x6da674: r0 = inputDecoration()
    //     0x6da674: bl              #0x6dbc08  ; [package:umrem_demo/features/admin/widgets/notification/input_decoration.dart] ::inputDecoration
    // 0x6da678: mov             x3, x0
    // 0x6da67c: ldur            x0, [fp, #-0x10]
    // 0x6da680: stur            x3, [fp, #-0x38]
    // 0x6da684: LoadField: r1 = r0->field_f
    //     0x6da684: ldur            w1, [x0, #0xf]
    // 0x6da688: DecompressPointer r1
    //     0x6da688: add             x1, x1, HEAP, lsl #32
    // 0x6da68c: LoadField: r2 = r1->field_2f
    //     0x6da68c: ldur            w2, [x1, #0x2f]
    // 0x6da690: DecompressPointer r2
    //     0x6da690: add             x2, x2, HEAP, lsl #32
    // 0x6da694: cmp             w2, NULL
    // 0x6da698: b.eq            #0x6da708
    // 0x6da69c: ldur            x4, [fp, #-8]
    // 0x6da6a0: LoadField: r1 = r4->field_13
    //     0x6da6a0: ldur            w1, [x4, #0x13]
    // 0x6da6a4: DecompressPointer r1
    //     0x6da6a4: add             x1, x1, HEAP, lsl #32
    // 0x6da6a8: LoadField: r5 = r1->field_3b
    //     0x6da6a8: ldur            w5, [x1, #0x3b]
    // 0x6da6ac: DecompressPointer r5
    //     0x6da6ac: add             x5, x5, HEAP, lsl #32
    // 0x6da6b0: mov             x2, x0
    // 0x6da6b4: stur            x5, [fp, #-0x28]
    // 0x6da6b8: r1 = Function '<anonymous closure>':.
    //     0x6da6b8: add             x1, PP, #0x18, lsl #12  ; [pp+0x189b0] AnonymousClosure: (0x6de708), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da6bc: ldr             x1, [x1, #0x9b0]
    // 0x6da6c0: r0 = AllocateClosure()
    //     0x6da6c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da6c4: ldur            x1, [fp, #-0x28]
    // 0x6da6c8: r2 = LoadClassIdInstr(r1)
    //     0x6da6c8: ldur            x2, [x1, #-1]
    //     0x6da6cc: ubfx            x2, x2, #0xc, #0x14
    // 0x6da6d0: mov             x16, x0
    // 0x6da6d4: mov             x0, x2
    // 0x6da6d8: mov             x2, x16
    // 0x6da6dc: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6da6dc: mov             x17, #0xd348
    //     0x6da6e0: add             lr, x0, x17
    //     0x6da6e4: ldr             lr, [x21, lr, lsl #3]
    //     0x6da6e8: blr             lr
    // 0x6da6ec: LoadField: r1 = r0->field_7
    //     0x6da6ec: ldur            w1, [x0, #7]
    // 0x6da6f0: DecompressPointer r1
    //     0x6da6f0: add             x1, x1, HEAP, lsl #32
    // 0x6da6f4: mov             x2, x0
    // 0x6da6f8: r0 = _GrowableList.of()
    //     0x6da6f8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6da6fc: mov             x3, x0
    // 0x6da700: ldur            x0, [fp, #-8]
    // 0x6da704: b               #0x6da720
    // 0x6da708: ldur            x0, [fp, #-8]
    // 0x6da70c: LoadField: r1 = r0->field_13
    //     0x6da70c: ldur            w1, [x0, #0x13]
    // 0x6da710: DecompressPointer r1
    //     0x6da710: add             x1, x1, HEAP, lsl #32
    // 0x6da714: LoadField: r2 = r1->field_3b
    //     0x6da714: ldur            w2, [x1, #0x3b]
    // 0x6da718: DecompressPointer r2
    //     0x6da718: add             x2, x2, HEAP, lsl #32
    // 0x6da71c: mov             x3, x2
    // 0x6da720: stur            x3, [fp, #-0x28]
    // 0x6da724: r1 = Function '<anonymous closure>':.
    //     0x6da724: add             x1, PP, #0x18, lsl #12  ; [pp+0x189b8] AnonymousClosure: (0x6de694), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6da728: ldr             x1, [x1, #0x9b8]
    // 0x6da72c: r2 = Null
    //     0x6da72c: mov             x2, NULL
    // 0x6da730: r0 = AllocateClosure()
    //     0x6da730: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da734: mov             x1, x0
    // 0x6da738: ldur            x0, [fp, #-0x28]
    // 0x6da73c: r2 = LoadClassIdInstr(r0)
    //     0x6da73c: ldur            x2, [x0, #-1]
    //     0x6da740: ubfx            x2, x2, #0xc, #0x14
    // 0x6da744: r16 = <DropdownMenuItem<String>>
    //     0x6da744: add             x16, PP, #0x16, lsl #12  ; [pp+0x16040] TypeArguments: <DropdownMenuItem<String>>
    //     0x6da748: ldr             x16, [x16, #0x40]
    // 0x6da74c: stp             x0, x16, [SP, #8]
    // 0x6da750: str             x1, [SP]
    // 0x6da754: mov             x0, x2
    // 0x6da758: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6da758: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6da75c: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6da75c: mov             x17, #0xd1d6
    //     0x6da760: add             lr, x0, x17
    //     0x6da764: ldr             lr, [x21, lr, lsl #3]
    //     0x6da768: blr             lr
    // 0x6da76c: r1 = LoadClassIdInstr(r0)
    //     0x6da76c: ldur            x1, [x0, #-1]
    //     0x6da770: ubfx            x1, x1, #0xc, #0x14
    // 0x6da774: mov             x16, x0
    // 0x6da778: mov             x0, x1
    // 0x6da77c: mov             x1, x16
    // 0x6da780: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6da780: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6da784: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6da784: mov             x17, #0xd299
    //     0x6da788: add             lr, x0, x17
    //     0x6da78c: ldr             lr, [x21, lr, lsl #3]
    //     0x6da790: blr             lr
    // 0x6da794: ldur            x2, [fp, #-0x10]
    // 0x6da798: r1 = Function '<anonymous closure>':.
    //     0x6da798: add             x1, PP, #0x18, lsl #12  ; [pp+0x189c0] AnonymousClosure: (0x6de5f8), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da79c: ldr             x1, [x1, #0x9c0]
    // 0x6da7a0: stur            x0, [fp, #-0x28]
    // 0x6da7a4: r0 = AllocateClosure()
    //     0x6da7a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da7a8: r1 = <String>
    //     0x6da7a8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6da7ac: stur            x0, [fp, #-0x40]
    // 0x6da7b0: r0 = DropdownButtonFormField()
    //     0x6da7b0: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6da7b4: stur            x0, [fp, #-0x48]
    // 0x6da7b8: r16 = true
    //     0x6da7b8: add             x16, NULL, #0x20  ; true
    // 0x6da7bc: r30 = Instance_Text
    //     0x6da7bc: add             lr, PP, #0x18, lsl #12  ; [pp+0x189c8] Obj!Text@a1b401
    //     0x6da7c0: ldr             lr, [lr, #0x9c8]
    // 0x6da7c4: stp             lr, x16, [SP]
    // 0x6da7c8: mov             x1, x0
    // 0x6da7cc: ldur            x2, [fp, #-0x38]
    // 0x6da7d0: ldur            x3, [fp, #-0x20]
    // 0x6da7d4: ldur            x5, [fp, #-0x28]
    // 0x6da7d8: ldur            x6, [fp, #-0x40]
    // 0x6da7dc: r4 = const [0, 0x7, 0x2, 0x5, hint, 0x6, isExpanded, 0x5, null]
    //     0x6da7dc: add             x4, PP, #0x18, lsl #12  ; [pp+0x18998] List(9) [0, 0x7, 0x2, 0x5, "hint", 0x6, "isExpanded", 0x5, Null]
    //     0x6da7e0: ldr             x4, [x4, #0x998]
    // 0x6da7e4: r0 = DropdownButtonFormField()
    //     0x6da7e4: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6da7e8: r1 = Null
    //     0x6da7e8: mov             x1, NULL
    // 0x6da7ec: r2 = 4
    //     0x6da7ec: mov             x2, #4
    // 0x6da7f0: r0 = AllocateArray()
    //     0x6da7f0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6da7f4: mov             x2, x0
    // 0x6da7f8: ldur            x0, [fp, #-0x48]
    // 0x6da7fc: stur            x2, [fp, #-0x20]
    // 0x6da800: StoreField: r2->field_f = r0
    //     0x6da800: stur            w0, [x2, #0xf]
    // 0x6da804: r16 = Instance_SizedBox
    //     0x6da804: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6da808: ldr             x16, [x16, #0x310]
    // 0x6da80c: StoreField: r2->field_13 = r16
    //     0x6da80c: stur            w16, [x2, #0x13]
    // 0x6da810: r1 = <Widget>
    //     0x6da810: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6da814: r0 = AllocateGrowableArray()
    //     0x6da814: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6da818: mov             x1, x0
    // 0x6da81c: ldur            x0, [fp, #-0x20]
    // 0x6da820: StoreField: r1->field_f = r0
    //     0x6da820: stur            w0, [x1, #0xf]
    // 0x6da824: r0 = 4
    //     0x6da824: mov             x0, #4
    // 0x6da828: StoreField: r1->field_b = r0
    //     0x6da828: stur            w0, [x1, #0xb]
    // 0x6da82c: mov             x2, x1
    // 0x6da830: ldur            x1, [fp, #-0x30]
    // 0x6da834: r0 = addAll()
    //     0x6da834: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6da838: ldur            x2, [fp, #-0x10]
    // 0x6da83c: LoadField: r0 = r2->field_f
    //     0x6da83c: ldur            w0, [x2, #0xf]
    // 0x6da840: DecompressPointer r0
    //     0x6da840: add             x0, x0, HEAP, lsl #32
    // 0x6da844: LoadField: r1 = r0->field_2b
    //     0x6da844: ldur            w1, [x0, #0x2b]
    // 0x6da848: DecompressPointer r1
    //     0x6da848: add             x1, x1, HEAP, lsl #32
    // 0x6da84c: r16 = Instance_NotificationTargetType
    //     0x6da84c: add             x16, PP, #0x18, lsl #12  ; [pp+0x189a8] Obj!NotificationTargetType@a273a1
    //     0x6da850: ldr             x16, [x16, #0x9a8]
    // 0x6da854: cmp             w1, w16
    // 0x6da858: b.ne            #0x6daa1c
    // 0x6da85c: LoadField: r3 = r0->field_37
    //     0x6da85c: ldur            w3, [x0, #0x37]
    // 0x6da860: DecompressPointer r3
    //     0x6da860: add             x3, x3, HEAP, lsl #32
    // 0x6da864: stur            x3, [fp, #-0x20]
    // 0x6da868: r1 = "Oda"
    //     0x6da868: add             x1, PP, #0x12, lsl #12  ; [pp+0x127c0] "Oda"
    //     0x6da86c: ldr             x1, [x1, #0x7c0]
    // 0x6da870: r0 = inputDecoration()
    //     0x6da870: bl              #0x6dbc08  ; [package:umrem_demo/features/admin/widgets/notification/input_decoration.dart] ::inputDecoration
    // 0x6da874: mov             x3, x0
    // 0x6da878: ldur            x0, [fp, #-0x10]
    // 0x6da87c: stur            x3, [fp, #-0x38]
    // 0x6da880: LoadField: r1 = r0->field_f
    //     0x6da880: ldur            w1, [x0, #0xf]
    // 0x6da884: DecompressPointer r1
    //     0x6da884: add             x1, x1, HEAP, lsl #32
    // 0x6da888: LoadField: r2 = r1->field_33
    //     0x6da888: ldur            w2, [x1, #0x33]
    // 0x6da88c: DecompressPointer r2
    //     0x6da88c: add             x2, x2, HEAP, lsl #32
    // 0x6da890: cmp             w2, NULL
    // 0x6da894: b.eq            #0x6da8f8
    // 0x6da898: ldur            x4, [fp, #-8]
    // 0x6da89c: LoadField: r1 = r4->field_13
    //     0x6da89c: ldur            w1, [x4, #0x13]
    // 0x6da8a0: DecompressPointer r1
    //     0x6da8a0: add             x1, x1, HEAP, lsl #32
    // 0x6da8a4: LoadField: r5 = r1->field_43
    //     0x6da8a4: ldur            w5, [x1, #0x43]
    // 0x6da8a8: DecompressPointer r5
    //     0x6da8a8: add             x5, x5, HEAP, lsl #32
    // 0x6da8ac: mov             x1, x5
    // 0x6da8b0: stur            x5, [fp, #-0x28]
    // 0x6da8b4: r0 = _getValueOrData()
    //     0x6da8b4: bl              #0x9249b8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::_getValueOrData
    // 0x6da8b8: mov             x1, x0
    // 0x6da8bc: ldur            x0, [fp, #-0x28]
    // 0x6da8c0: LoadField: r2 = r0->field_f
    //     0x6da8c0: ldur            w2, [x0, #0xf]
    // 0x6da8c4: DecompressPointer r2
    //     0x6da8c4: add             x2, x2, HEAP, lsl #32
    // 0x6da8c8: cmp             w2, w1
    // 0x6da8cc: b.ne            #0x6da8d8
    // 0x6da8d0: r0 = Null
    //     0x6da8d0: mov             x0, NULL
    // 0x6da8d4: b               #0x6da8dc
    // 0x6da8d8: mov             x0, x1
    // 0x6da8dc: cmp             w0, NULL
    // 0x6da8e0: b.ne            #0x6da904
    // 0x6da8e4: r1 = <RoomModel>
    //     0x6da8e4: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x6da8e8: ldr             x1, [x1, #0x6c8]
    // 0x6da8ec: r2 = 0
    //     0x6da8ec: mov             x2, #0
    // 0x6da8f0: r0 = _GrowableList()
    //     0x6da8f0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6da8f4: b               #0x6da904
    // 0x6da8f8: r1 = Null
    //     0x6da8f8: mov             x1, NULL
    // 0x6da8fc: r2 = 0
    //     0x6da8fc: mov             x2, #0
    // 0x6da900: r0 = _GrowableList()
    //     0x6da900: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6da904: stur            x0, [fp, #-0x28]
    // 0x6da908: r1 = Function '<anonymous closure>':.
    //     0x6da908: add             x1, PP, #0x18, lsl #12  ; [pp+0x189d0] AnonymousClosure: (0x6de420), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da90c: ldr             x1, [x1, #0x9d0]
    // 0x6da910: r2 = Null
    //     0x6da910: mov             x2, NULL
    // 0x6da914: r0 = AllocateClosure()
    //     0x6da914: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da918: mov             x1, x0
    // 0x6da91c: ldur            x0, [fp, #-0x28]
    // 0x6da920: r2 = LoadClassIdInstr(r0)
    //     0x6da920: ldur            x2, [x0, #-1]
    //     0x6da924: ubfx            x2, x2, #0xc, #0x14
    // 0x6da928: r16 = <DropdownMenuItem<String>>
    //     0x6da928: add             x16, PP, #0x16, lsl #12  ; [pp+0x16040] TypeArguments: <DropdownMenuItem<String>>
    //     0x6da92c: ldr             x16, [x16, #0x40]
    // 0x6da930: stp             x0, x16, [SP, #8]
    // 0x6da934: str             x1, [SP]
    // 0x6da938: mov             x0, x2
    // 0x6da93c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6da93c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6da940: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6da940: mov             x17, #0xd1d6
    //     0x6da944: add             lr, x0, x17
    //     0x6da948: ldr             lr, [x21, lr, lsl #3]
    //     0x6da94c: blr             lr
    // 0x6da950: r1 = LoadClassIdInstr(r0)
    //     0x6da950: ldur            x1, [x0, #-1]
    //     0x6da954: ubfx            x1, x1, #0xc, #0x14
    // 0x6da958: mov             x16, x0
    // 0x6da95c: mov             x0, x1
    // 0x6da960: mov             x1, x16
    // 0x6da964: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6da964: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6da968: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6da968: mov             x17, #0xd299
    //     0x6da96c: add             lr, x0, x17
    //     0x6da970: ldr             lr, [x21, lr, lsl #3]
    //     0x6da974: blr             lr
    // 0x6da978: ldur            x2, [fp, #-0x10]
    // 0x6da97c: r1 = Function '<anonymous closure>':.
    //     0x6da97c: add             x1, PP, #0x18, lsl #12  ; [pp+0x189d8] AnonymousClosure: (0x6de384), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6da980: ldr             x1, [x1, #0x9d8]
    // 0x6da984: stur            x0, [fp, #-0x28]
    // 0x6da988: r0 = AllocateClosure()
    //     0x6da988: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6da98c: r1 = <String>
    //     0x6da98c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6da990: stur            x0, [fp, #-0x40]
    // 0x6da994: r0 = DropdownButtonFormField()
    //     0x6da994: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6da998: stur            x0, [fp, #-0x48]
    // 0x6da99c: r16 = true
    //     0x6da99c: add             x16, NULL, #0x20  ; true
    // 0x6da9a0: r30 = Instance_Text
    //     0x6da9a0: add             lr, PP, #0x18, lsl #12  ; [pp+0x189e0] Obj!Text@a1b3b1
    //     0x6da9a4: ldr             lr, [lr, #0x9e0]
    // 0x6da9a8: stp             lr, x16, [SP]
    // 0x6da9ac: mov             x1, x0
    // 0x6da9b0: ldur            x2, [fp, #-0x38]
    // 0x6da9b4: ldur            x3, [fp, #-0x20]
    // 0x6da9b8: ldur            x5, [fp, #-0x28]
    // 0x6da9bc: ldur            x6, [fp, #-0x40]
    // 0x6da9c0: r4 = const [0, 0x7, 0x2, 0x5, hint, 0x6, isExpanded, 0x5, null]
    //     0x6da9c0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18998] List(9) [0, 0x7, 0x2, 0x5, "hint", 0x6, "isExpanded", 0x5, Null]
    //     0x6da9c4: ldr             x4, [x4, #0x998]
    // 0x6da9c8: r0 = DropdownButtonFormField()
    //     0x6da9c8: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6da9cc: r1 = Null
    //     0x6da9cc: mov             x1, NULL
    // 0x6da9d0: r2 = 4
    //     0x6da9d0: mov             x2, #4
    // 0x6da9d4: r0 = AllocateArray()
    //     0x6da9d4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6da9d8: mov             x2, x0
    // 0x6da9dc: ldur            x0, [fp, #-0x48]
    // 0x6da9e0: stur            x2, [fp, #-0x20]
    // 0x6da9e4: StoreField: r2->field_f = r0
    //     0x6da9e4: stur            w0, [x2, #0xf]
    // 0x6da9e8: r16 = Instance_SizedBox
    //     0x6da9e8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6da9ec: ldr             x16, [x16, #0x310]
    // 0x6da9f0: StoreField: r2->field_13 = r16
    //     0x6da9f0: stur            w16, [x2, #0x13]
    // 0x6da9f4: r1 = <Widget>
    //     0x6da9f4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6da9f8: r0 = AllocateGrowableArray()
    //     0x6da9f8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6da9fc: mov             x1, x0
    // 0x6daa00: ldur            x0, [fp, #-0x20]
    // 0x6daa04: StoreField: r1->field_f = r0
    //     0x6daa04: stur            w0, [x1, #0xf]
    // 0x6daa08: r0 = 4
    //     0x6daa08: mov             x0, #4
    // 0x6daa0c: StoreField: r1->field_b = r0
    //     0x6daa0c: stur            w0, [x1, #0xb]
    // 0x6daa10: mov             x2, x1
    // 0x6daa14: ldur            x1, [fp, #-0x30]
    // 0x6daa18: r0 = addAll()
    //     0x6daa18: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6daa1c: ldur            x0, [fp, #-0x30]
    // 0x6daa20: LoadField: r1 = r0->field_b
    //     0x6daa20: ldur            w1, [x0, #0xb]
    // 0x6daa24: LoadField: r2 = r0->field_f
    //     0x6daa24: ldur            w2, [x0, #0xf]
    // 0x6daa28: DecompressPointer r2
    //     0x6daa28: add             x2, x2, HEAP, lsl #32
    // 0x6daa2c: LoadField: r3 = r2->field_b
    //     0x6daa2c: ldur            w3, [x2, #0xb]
    // 0x6daa30: r2 = LoadInt32Instr(r1)
    //     0x6daa30: sbfx            x2, x1, #1, #0x1f
    // 0x6daa34: stur            x2, [fp, #-0x50]
    // 0x6daa38: r1 = LoadInt32Instr(r3)
    //     0x6daa38: sbfx            x1, x3, #1, #0x1f
    // 0x6daa3c: cmp             x2, x1
    // 0x6daa40: b.ne            #0x6daa4c
    // 0x6daa44: mov             x1, x0
    // 0x6daa48: r0 = _growToNextCapacity()
    //     0x6daa48: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6daa4c: ldur            x0, [fp, #-0x30]
    // 0x6daa50: ldur            x1, [fp, #-0x50]
    // 0x6daa54: add             x2, x1, #1
    // 0x6daa58: stur            x2, [fp, #-0x58]
    // 0x6daa5c: lsl             x3, x2, #1
    // 0x6daa60: StoreField: r0->field_b = r3
    //     0x6daa60: stur            w3, [x0, #0xb]
    // 0x6daa64: LoadField: r3 = r0->field_f
    //     0x6daa64: ldur            w3, [x0, #0xf]
    // 0x6daa68: DecompressPointer r3
    //     0x6daa68: add             x3, x3, HEAP, lsl #32
    // 0x6daa6c: add             x4, x3, x1, lsl #2
    // 0x6daa70: r16 = Instance_Divider
    //     0x6daa70: add             x16, PP, #0x18, lsl #12  ; [pp+0x189e8] Obj!Divider@a1f6b1
    //     0x6daa74: ldr             x16, [x16, #0x9e8]
    // 0x6daa78: StoreField: r4->field_f = r16
    //     0x6daa78: stur            w16, [x4, #0xf]
    // 0x6daa7c: LoadField: r1 = r3->field_b
    //     0x6daa7c: ldur            w1, [x3, #0xb]
    // 0x6daa80: r3 = LoadInt32Instr(r1)
    //     0x6daa80: sbfx            x3, x1, #1, #0x1f
    // 0x6daa84: cmp             x2, x3
    // 0x6daa88: b.ne            #0x6daa94
    // 0x6daa8c: mov             x1, x0
    // 0x6daa90: r0 = _growToNextCapacity()
    //     0x6daa90: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6daa94: ldur            x2, [fp, #-8]
    // 0x6daa98: ldur            x1, [fp, #-0x58]
    // 0x6daa9c: ldur            x0, [fp, #-0x30]
    // 0x6daaa0: add             x3, x1, #1
    // 0x6daaa4: lsl             x4, x3, #1
    // 0x6daaa8: StoreField: r0->field_b = r4
    //     0x6daaa8: stur            w4, [x0, #0xb]
    // 0x6daaac: LoadField: r3 = r0->field_f
    //     0x6daaac: ldur            w3, [x0, #0xf]
    // 0x6daab0: DecompressPointer r3
    //     0x6daab0: add             x3, x3, HEAP, lsl #32
    // 0x6daab4: add             x4, x3, x1, lsl #2
    // 0x6daab8: r16 = Instance_SizedBox
    //     0x6daab8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6daabc: ldr             x16, [x16, #0x310]
    // 0x6daac0: StoreField: r4->field_f = r16
    //     0x6daac0: stur            w16, [x4, #0xf]
    // 0x6daac4: LoadField: r1 = r2->field_f
    //     0x6daac4: ldur            w1, [x2, #0xf]
    // 0x6daac8: DecompressPointer r1
    //     0x6daac8: add             x1, x1, HEAP, lsl #32
    // 0x6daacc: LoadField: r3 = r1->field_13
    //     0x6daacc: ldur            w3, [x1, #0x13]
    // 0x6daad0: DecompressPointer r3
    //     0x6daad0: add             x3, x3, HEAP, lsl #32
    // 0x6daad4: stur            x3, [fp, #-0x20]
    // 0x6daad8: r1 = "Başlık"
    //     0x6daad8: add             x1, PP, #0x18, lsl #12  ; [pp+0x189f0] "Başlık"
    //     0x6daadc: ldr             x1, [x1, #0x9f0]
    // 0x6daae0: r0 = inputDecoration()
    //     0x6daae0: bl              #0x6dbc08  ; [package:umrem_demo/features/admin/widgets/notification/input_decoration.dart] ::inputDecoration
    // 0x6daae4: stur            x0, [fp, #-0x28]
    // 0x6daae8: r0 = TextField()
    //     0x6daae8: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6daaec: mov             x2, x0
    // 0x6daaf0: r0 = EditableText
    //     0x6daaf0: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6daaf4: stur            x2, [fp, #-0x38]
    // 0x6daaf8: StoreField: r2->field_f = r0
    //     0x6daaf8: stur            w0, [x2, #0xf]
    // 0x6daafc: ldur            x1, [fp, #-0x20]
    // 0x6dab00: StoreField: r2->field_13 = r1
    //     0x6dab00: stur            w1, [x2, #0x13]
    // 0x6dab04: ldur            x1, [fp, #-0x28]
    // 0x6dab08: StoreField: r2->field_1b = r1
    //     0x6dab08: stur            w1, [x2, #0x1b]
    // 0x6dab0c: r3 = Instance_TextCapitalization
    //     0x6dab0c: add             x3, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6dab10: ldr             x3, [x3, #0x4f0]
    // 0x6dab14: StoreField: r2->field_27 = r3
    //     0x6dab14: stur            w3, [x2, #0x27]
    // 0x6dab18: r4 = Instance_TextAlign
    //     0x6dab18: ldr             x4, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6dab1c: StoreField: r2->field_33 = r4
    //     0x6dab1c: stur            w4, [x2, #0x33]
    // 0x6dab20: r5 = false
    //     0x6dab20: add             x5, NULL, #0x30  ; false
    // 0x6dab24: StoreField: r2->field_6b = r5
    //     0x6dab24: stur            w5, [x2, #0x6b]
    // 0x6dab28: StoreField: r2->field_3f = r5
    //     0x6dab28: stur            w5, [x2, #0x3f]
    // 0x6dab2c: r6 = "•"
    //     0x6dab2c: add             x6, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6dab30: ldr             x6, [x6, #0x4f8]
    // 0x6dab34: StoreField: r2->field_47 = r6
    //     0x6dab34: stur            w6, [x2, #0x47]
    // 0x6dab38: StoreField: r2->field_4b = r5
    //     0x6dab38: stur            w5, [x2, #0x4b]
    // 0x6dab3c: r7 = true
    //     0x6dab3c: add             x7, NULL, #0x20  ; true
    // 0x6dab40: StoreField: r2->field_5b = r7
    //     0x6dab40: stur            w7, [x2, #0x5b]
    // 0x6dab44: r1 = 2
    //     0x6dab44: mov             x1, #2
    // 0x6dab48: StoreField: r2->field_5f = r1
    //     0x6dab48: stur            w1, [x2, #0x5f]
    // 0x6dab4c: StoreField: r2->field_67 = r5
    //     0x6dab4c: stur            w5, [x2, #0x67]
    // 0x6dab50: d0 = 2.000000
    //     0x6dab50: fmov            d0, #2.00000000
    // 0x6dab54: StoreField: r2->field_9b = d0
    //     0x6dab54: stur            d0, [x2, #0x9b]
    // 0x6dab58: r8 = Instance_EdgeInsets
    //     0x6dab58: ldr             x8, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6dab5c: StoreField: r2->field_c3 = r8
    //     0x6dab5c: stur            w8, [x2, #0xc3]
    // 0x6dab60: r9 = Instance_DragStartBehavior
    //     0x6dab60: ldr             x9, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6dab64: StoreField: r2->field_d3 = r9
    //     0x6dab64: stur            w9, [x2, #0xd3]
    // 0x6dab68: StoreField: r2->field_db = r5
    //     0x6dab68: stur            w5, [x2, #0xdb]
    // 0x6dab6c: r10 = const []
    //     0x6dab6c: ldr             x10, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6dab70: StoreField: r2->field_f7 = r10
    //     0x6dab70: stur            w10, [x2, #0xf7]
    // 0x6dab74: r11 = Instance_Clip
    //     0x6dab74: add             x11, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6dab78: ldr             x11, [x11, #0x2d8]
    // 0x6dab7c: StoreField: r2->field_fb = r11
    //     0x6dab7c: stur            w11, [x2, #0xfb]
    // 0x6dab80: r17 = 259
    //     0x6dab80: mov             x17, #0x103
    // 0x6dab84: str             w7, [x2, x17]
    // 0x6dab88: r17 = 263
    //     0x6dab88: mov             x17, #0x107
    // 0x6dab8c: str             w7, [x2, x17]
    // 0x6dab90: r17 = 267
    //     0x6dab90: mov             x17, #0x10b
    // 0x6dab94: str             w7, [x2, x17]
    // 0x6dab98: r12 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6dab98: add             x12, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6dab9c: ldr             x12, [x12, #0x9f8]
    // 0x6daba0: r17 = 275
    //     0x6daba0: mov             x17, #0x113
    // 0x6daba4: str             w12, [x2, x17]
    // 0x6daba8: r17 = 279
    //     0x6daba8: mov             x17, #0x117
    // 0x6dabac: str             w7, [x2, x17]
    // 0x6dabb0: r13 = Instance_SmartDashesType
    //     0x6dabb0: ldr             x13, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6dabb4: StoreField: r2->field_53 = r13
    //     0x6dabb4: stur            w13, [x2, #0x53]
    // 0x6dabb8: r14 = Instance_SmartQuotesType
    //     0x6dabb8: add             x14, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6dabbc: ldr             x14, [x14, #0x520]
    // 0x6dabc0: StoreField: r2->field_57 = r14
    //     0x6dabc0: stur            w14, [x2, #0x57]
    // 0x6dabc4: r1 = Instance_TextInputType
    //     0x6dabc4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6dabc8: ldr             x1, [x1, #0x528]
    // 0x6dabcc: StoreField: r2->field_1f = r1
    //     0x6dabcc: stur            w1, [x2, #0x1f]
    // 0x6dabd0: StoreField: r2->field_c7 = r7
    //     0x6dabd0: stur            w7, [x2, #0xc7]
    // 0x6dabd4: ldur            x19, [fp, #-0x30]
    // 0x6dabd8: LoadField: r1 = r19->field_b
    //     0x6dabd8: ldur            w1, [x19, #0xb]
    // 0x6dabdc: LoadField: r20 = r19->field_f
    //     0x6dabdc: ldur            w20, [x19, #0xf]
    // 0x6dabe0: DecompressPointer r20
    //     0x6dabe0: add             x20, x20, HEAP, lsl #32
    // 0x6dabe4: LoadField: r23 = r20->field_b
    //     0x6dabe4: ldur            w23, [x20, #0xb]
    // 0x6dabe8: r20 = LoadInt32Instr(r1)
    //     0x6dabe8: sbfx            x20, x1, #1, #0x1f
    // 0x6dabec: stur            x20, [fp, #-0x50]
    // 0x6dabf0: r1 = LoadInt32Instr(r23)
    //     0x6dabf0: sbfx            x1, x23, #1, #0x1f
    // 0x6dabf4: cmp             x20, x1
    // 0x6dabf8: b.ne            #0x6dac04
    // 0x6dabfc: mov             x1, x19
    // 0x6dac00: r0 = _growToNextCapacity()
    //     0x6dac00: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6dac04: ldur            x2, [fp, #-0x30]
    // 0x6dac08: ldur            x3, [fp, #-0x50]
    // 0x6dac0c: add             x4, x3, #1
    // 0x6dac10: stur            x4, [fp, #-0x58]
    // 0x6dac14: lsl             x0, x4, #1
    // 0x6dac18: StoreField: r2->field_b = r0
    //     0x6dac18: stur            w0, [x2, #0xb]
    // 0x6dac1c: LoadField: r5 = r2->field_f
    //     0x6dac1c: ldur            w5, [x2, #0xf]
    // 0x6dac20: DecompressPointer r5
    //     0x6dac20: add             x5, x5, HEAP, lsl #32
    // 0x6dac24: mov             x1, x5
    // 0x6dac28: ldur            x0, [fp, #-0x38]
    // 0x6dac2c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6dac2c: add             x25, x1, x3, lsl #2
    //     0x6dac30: add             x25, x25, #0xf
    //     0x6dac34: str             w0, [x25]
    //     0x6dac38: tbz             w0, #0, #0x6dac54
    //     0x6dac3c: ldurb           w16, [x1, #-1]
    //     0x6dac40: ldurb           w17, [x0, #-1]
    //     0x6dac44: and             x16, x17, x16, lsr #2
    //     0x6dac48: tst             x16, HEAP, lsr #32
    //     0x6dac4c: b.eq            #0x6dac54
    //     0x6dac50: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6dac54: LoadField: r0 = r5->field_b
    //     0x6dac54: ldur            w0, [x5, #0xb]
    // 0x6dac58: r1 = LoadInt32Instr(r0)
    //     0x6dac58: sbfx            x1, x0, #1, #0x1f
    // 0x6dac5c: cmp             x4, x1
    // 0x6dac60: b.ne            #0x6dac6c
    // 0x6dac64: mov             x1, x2
    // 0x6dac68: r0 = _growToNextCapacity()
    //     0x6dac68: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6dac6c: ldur            x2, [fp, #-8]
    // 0x6dac70: ldur            x1, [fp, #-0x58]
    // 0x6dac74: ldur            x0, [fp, #-0x30]
    // 0x6dac78: add             x3, x1, #1
    // 0x6dac7c: lsl             x4, x3, #1
    // 0x6dac80: StoreField: r0->field_b = r4
    //     0x6dac80: stur            w4, [x0, #0xb]
    // 0x6dac84: LoadField: r3 = r0->field_f
    //     0x6dac84: ldur            w3, [x0, #0xf]
    // 0x6dac88: DecompressPointer r3
    //     0x6dac88: add             x3, x3, HEAP, lsl #32
    // 0x6dac8c: add             x4, x3, x1, lsl #2
    // 0x6dac90: r16 = Instance_SizedBox
    //     0x6dac90: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6dac94: ldr             x16, [x16, #0x220]
    // 0x6dac98: StoreField: r4->field_f = r16
    //     0x6dac98: stur            w16, [x4, #0xf]
    // 0x6dac9c: LoadField: r1 = r2->field_f
    //     0x6dac9c: ldur            w1, [x2, #0xf]
    // 0x6daca0: DecompressPointer r1
    //     0x6daca0: add             x1, x1, HEAP, lsl #32
    // 0x6daca4: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6daca4: ldur            w2, [x1, #0x17]
    // 0x6daca8: DecompressPointer r2
    //     0x6daca8: add             x2, x2, HEAP, lsl #32
    // 0x6dacac: stur            x2, [fp, #-8]
    // 0x6dacb0: r1 = "Mesaj"
    //     0x6dacb0: add             x1, PP, #0x18, lsl #12  ; [pp+0x18a00] "Mesaj"
    //     0x6dacb4: ldr             x1, [x1, #0xa00]
    // 0x6dacb8: r0 = inputDecoration()
    //     0x6dacb8: bl              #0x6dbc08  ; [package:umrem_demo/features/admin/widgets/notification/input_decoration.dart] ::inputDecoration
    // 0x6dacbc: stur            x0, [fp, #-0x20]
    // 0x6dacc0: r0 = TextField()
    //     0x6dacc0: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6dacc4: mov             x2, x0
    // 0x6dacc8: r0 = EditableText
    //     0x6dacc8: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6daccc: stur            x2, [fp, #-0x28]
    // 0x6dacd0: StoreField: r2->field_f = r0
    //     0x6dacd0: stur            w0, [x2, #0xf]
    // 0x6dacd4: ldur            x0, [fp, #-8]
    // 0x6dacd8: StoreField: r2->field_13 = r0
    //     0x6dacd8: stur            w0, [x2, #0x13]
    // 0x6dacdc: ldur            x0, [fp, #-0x20]
    // 0x6dace0: StoreField: r2->field_1b = r0
    //     0x6dace0: stur            w0, [x2, #0x1b]
    // 0x6dace4: r0 = Instance_TextCapitalization
    //     0x6dace4: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6dace8: ldr             x0, [x0, #0x4f0]
    // 0x6dacec: StoreField: r2->field_27 = r0
    //     0x6dacec: stur            w0, [x2, #0x27]
    // 0x6dacf0: r0 = Instance_TextAlign
    //     0x6dacf0: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6dacf4: StoreField: r2->field_33 = r0
    //     0x6dacf4: stur            w0, [x2, #0x33]
    // 0x6dacf8: r0 = false
    //     0x6dacf8: add             x0, NULL, #0x30  ; false
    // 0x6dacfc: StoreField: r2->field_6b = r0
    //     0x6dacfc: stur            w0, [x2, #0x6b]
    // 0x6dad00: StoreField: r2->field_3f = r0
    //     0x6dad00: stur            w0, [x2, #0x3f]
    // 0x6dad04: r1 = "•"
    //     0x6dad04: add             x1, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6dad08: ldr             x1, [x1, #0x4f8]
    // 0x6dad0c: StoreField: r2->field_47 = r1
    //     0x6dad0c: stur            w1, [x2, #0x47]
    // 0x6dad10: StoreField: r2->field_4b = r0
    //     0x6dad10: stur            w0, [x2, #0x4b]
    // 0x6dad14: r3 = true
    //     0x6dad14: add             x3, NULL, #0x20  ; true
    // 0x6dad18: StoreField: r2->field_5b = r3
    //     0x6dad18: stur            w3, [x2, #0x5b]
    // 0x6dad1c: r1 = 10
    //     0x6dad1c: mov             x1, #0xa
    // 0x6dad20: StoreField: r2->field_5f = r1
    //     0x6dad20: stur            w1, [x2, #0x5f]
    // 0x6dad24: StoreField: r2->field_67 = r0
    //     0x6dad24: stur            w0, [x2, #0x67]
    // 0x6dad28: d0 = 2.000000
    //     0x6dad28: fmov            d0, #2.00000000
    // 0x6dad2c: StoreField: r2->field_9b = d0
    //     0x6dad2c: stur            d0, [x2, #0x9b]
    // 0x6dad30: r1 = Instance_EdgeInsets
    //     0x6dad30: ldr             x1, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6dad34: StoreField: r2->field_c3 = r1
    //     0x6dad34: stur            w1, [x2, #0xc3]
    // 0x6dad38: r4 = Instance_DragStartBehavior
    //     0x6dad38: ldr             x4, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6dad3c: StoreField: r2->field_d3 = r4
    //     0x6dad3c: stur            w4, [x2, #0xd3]
    // 0x6dad40: StoreField: r2->field_db = r0
    //     0x6dad40: stur            w0, [x2, #0xdb]
    // 0x6dad44: r1 = const []
    //     0x6dad44: ldr             x1, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6dad48: StoreField: r2->field_f7 = r1
    //     0x6dad48: stur            w1, [x2, #0xf7]
    // 0x6dad4c: r1 = Instance_Clip
    //     0x6dad4c: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6dad50: ldr             x1, [x1, #0x2d8]
    // 0x6dad54: StoreField: r2->field_fb = r1
    //     0x6dad54: stur            w1, [x2, #0xfb]
    // 0x6dad58: r17 = 259
    //     0x6dad58: mov             x17, #0x103
    // 0x6dad5c: str             w3, [x2, x17]
    // 0x6dad60: r17 = 263
    //     0x6dad60: mov             x17, #0x107
    // 0x6dad64: str             w3, [x2, x17]
    // 0x6dad68: r17 = 267
    //     0x6dad68: mov             x17, #0x10b
    // 0x6dad6c: str             w3, [x2, x17]
    // 0x6dad70: r1 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6dad70: add             x1, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6dad74: ldr             x1, [x1, #0x9f8]
    // 0x6dad78: r17 = 275
    //     0x6dad78: mov             x17, #0x113
    // 0x6dad7c: str             w1, [x2, x17]
    // 0x6dad80: r17 = 279
    //     0x6dad80: mov             x17, #0x117
    // 0x6dad84: str             w3, [x2, x17]
    // 0x6dad88: r1 = Instance_SmartDashesType
    //     0x6dad88: ldr             x1, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6dad8c: StoreField: r2->field_53 = r1
    //     0x6dad8c: stur            w1, [x2, #0x53]
    // 0x6dad90: r1 = Instance_SmartQuotesType
    //     0x6dad90: add             x1, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6dad94: ldr             x1, [x1, #0x520]
    // 0x6dad98: StoreField: r2->field_57 = r1
    //     0x6dad98: stur            w1, [x2, #0x57]
    // 0x6dad9c: r1 = Instance_TextInputType
    //     0x6dad9c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14530] Obj!TextInputType@a0aca1
    //     0x6dada0: ldr             x1, [x1, #0x530]
    // 0x6dada4: StoreField: r2->field_1f = r1
    //     0x6dada4: stur            w1, [x2, #0x1f]
    // 0x6dada8: StoreField: r2->field_c7 = r3
    //     0x6dada8: stur            w3, [x2, #0xc7]
    // 0x6dadac: ldur            x5, [fp, #-0x30]
    // 0x6dadb0: LoadField: r1 = r5->field_b
    //     0x6dadb0: ldur            w1, [x5, #0xb]
    // 0x6dadb4: LoadField: r6 = r5->field_f
    //     0x6dadb4: ldur            w6, [x5, #0xf]
    // 0x6dadb8: DecompressPointer r6
    //     0x6dadb8: add             x6, x6, HEAP, lsl #32
    // 0x6dadbc: LoadField: r7 = r6->field_b
    //     0x6dadbc: ldur            w7, [x6, #0xb]
    // 0x6dadc0: r6 = LoadInt32Instr(r1)
    //     0x6dadc0: sbfx            x6, x1, #1, #0x1f
    // 0x6dadc4: stur            x6, [fp, #-0x50]
    // 0x6dadc8: r1 = LoadInt32Instr(r7)
    //     0x6dadc8: sbfx            x1, x7, #1, #0x1f
    // 0x6dadcc: cmp             x6, x1
    // 0x6dadd0: b.ne            #0x6daddc
    // 0x6dadd4: mov             x1, x5
    // 0x6dadd8: r0 = _growToNextCapacity()
    //     0x6dadd8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6daddc: ldur            x4, [fp, #-0x10]
    // 0x6dade0: ldur            x2, [fp, #-0x30]
    // 0x6dade4: ldur            x3, [fp, #-0x50]
    // 0x6dade8: add             x0, x3, #1
    // 0x6dadec: lsl             x1, x0, #1
    // 0x6dadf0: StoreField: r2->field_b = r1
    //     0x6dadf0: stur            w1, [x2, #0xb]
    // 0x6dadf4: LoadField: r1 = r2->field_f
    //     0x6dadf4: ldur            w1, [x2, #0xf]
    // 0x6dadf8: DecompressPointer r1
    //     0x6dadf8: add             x1, x1, HEAP, lsl #32
    // 0x6dadfc: ldur            x0, [fp, #-0x28]
    // 0x6dae00: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6dae00: add             x25, x1, x3, lsl #2
    //     0x6dae04: add             x25, x25, #0xf
    //     0x6dae08: str             w0, [x25]
    //     0x6dae0c: tbz             w0, #0, #0x6dae28
    //     0x6dae10: ldurb           w16, [x1, #-1]
    //     0x6dae14: ldurb           w17, [x0, #-1]
    //     0x6dae18: and             x16, x17, x16, lsr #2
    //     0x6dae1c: tst             x16, HEAP, lsr #32
    //     0x6dae20: b.eq            #0x6dae28
    //     0x6dae24: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6dae28: r0 = ListView()
    //     0x6dae28: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6dae2c: mov             x1, x0
    // 0x6dae30: ldur            x2, [fp, #-0x30]
    // 0x6dae34: r3 = Instance_EdgeInsets
    //     0x6dae34: add             x3, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6dae38: ldr             x3, [x3, #0x240]
    // 0x6dae3c: stur            x0, [fp, #-8]
    // 0x6dae40: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6dae40: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6dae44: r0 = ListView()
    //     0x6dae44: bl              #0x67cae0  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView
    // 0x6dae48: ldur            x2, [fp, #-0x10]
    // 0x6dae4c: LoadField: r0 = r2->field_f
    //     0x6dae4c: ldur            w0, [x2, #0xf]
    // 0x6dae50: DecompressPointer r0
    //     0x6dae50: add             x0, x0, HEAP, lsl #32
    // 0x6dae54: LoadField: r3 = r0->field_27
    //     0x6dae54: ldur            w3, [x0, #0x27]
    // 0x6dae58: DecompressPointer r3
    //     0x6dae58: add             x3, x3, HEAP, lsl #32
    // 0x6dae5c: stur            x3, [fp, #-0x20]
    // 0x6dae60: tbnz            w3, #4, #0x6dae70
    // 0x6dae64: mov             x0, x3
    // 0x6dae68: r1 = Null
    //     0x6dae68: mov             x1, NULL
    // 0x6dae6c: b               #0x6dae84
    // 0x6dae70: r1 = Function '<anonymous closure>':.
    //     0x6dae70: add             x1, PP, #0x18, lsl #12  ; [pp+0x18a08] AnonymousClosure: (0x6dbe0c), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::build (0x6da2d8)
    //     0x6dae74: ldr             x1, [x1, #0xa08]
    // 0x6dae78: r0 = AllocateClosure()
    //     0x6dae78: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6dae7c: mov             x1, x0
    // 0x6dae80: ldur            x0, [fp, #-0x20]
    // 0x6dae84: stur            x1, [fp, #-0x30]
    // 0x6dae88: tbnz            w0, #4, #0x6dae98
    // 0x6dae8c: r2 = Instance_SizedBox
    //     0x6dae8c: add             x2, PP, #0x18, lsl #12  ; [pp+0x18a10] Obj!SizedBox@a1fa71
    //     0x6dae90: ldr             x2, [x2, #0xa10]
    // 0x6dae94: b               #0x6daea0
    // 0x6dae98: r2 = Instance_Text
    //     0x6dae98: add             x2, PP, #0x18, lsl #12  ; [pp+0x18a18] Obj!Text@a1b361
    //     0x6dae9c: ldr             x2, [x2, #0xa18]
    // 0x6daea0: stur            x2, [fp, #-0x28]
    // 0x6daea4: tbnz            w0, #4, #0x6daeb0
    // 0x6daea8: r4 = Null
    //     0x6daea8: mov             x4, NULL
    // 0x6daeac: b               #0x6daeb8
    // 0x6daeb0: r4 = Instance_Icon
    //     0x6daeb0: add             x4, PP, #0x18, lsl #12  ; [pp+0x18a20] Obj!Icon@a1e331
    //     0x6daeb4: ldr             x4, [x4, #0xa20]
    // 0x6daeb8: ldur            x3, [fp, #-0x18]
    // 0x6daebc: ldur            x0, [fp, #-8]
    // 0x6daec0: stur            x4, [fp, #-0x10]
    // 0x6daec4: r0 = FloatingActionButton()
    //     0x6daec4: bl              #0x6d51a8  ; AllocateFloatingActionButtonStub -> FloatingActionButton (size=0x78)
    // 0x6daec8: mov             x1, x0
    // 0x6daecc: r0 = Instance__DefaultHeroTag
    //     0x6daecc: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b8] Obj!_DefaultHeroTag@a0f381
    //     0x6daed0: ldr             x0, [x0, #0x5b8]
    // 0x6daed4: stur            x1, [fp, #-0x20]
    // 0x6daed8: StoreField: r1->field_27 = r0
    //     0x6daed8: stur            w0, [x1, #0x27]
    // 0x6daedc: ldur            x0, [fp, #-0x30]
    // 0x6daee0: StoreField: r1->field_2b = r0
    //     0x6daee0: stur            w0, [x1, #0x2b]
    // 0x6daee4: r0 = Instance_SystemMouseCursor
    //     0x6daee4: add             x0, PP, #0x18, lsl #12  ; [pp+0x18a28] Obj!SystemMouseCursor@a1a4a1
    //     0x6daee8: ldr             x0, [x0, #0xa28]
    // 0x6daeec: StoreField: r1->field_2f = r0
    //     0x6daeec: stur            w0, [x1, #0x2f]
    // 0x6daef0: r0 = true
    //     0x6daef0: add             x0, NULL, #0x20  ; true
    // 0x6daef4: StoreField: r1->field_4f = r0
    //     0x6daef4: stur            w0, [x1, #0x4f]
    // 0x6daef8: r2 = Instance_Clip
    //     0x6daef8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6daefc: ldr             x2, [x2, #0x348]
    // 0x6daf00: StoreField: r1->field_4b = r2
    //     0x6daf00: stur            w2, [x1, #0x4b]
    // 0x6daf04: r2 = false
    //     0x6daf04: add             x2, NULL, #0x30  ; false
    // 0x6daf08: StoreField: r1->field_57 = r2
    //     0x6daf08: stur            w2, [x1, #0x57]
    // 0x6daf0c: r3 = Instance__FloatingActionButtonType
    //     0x6daf0c: add             x3, PP, #0xc, lsl #12  ; [pp+0xcc48] Obj!_FloatingActionButtonType@a2bab1
    //     0x6daf10: ldr             x3, [x3, #0xc48]
    // 0x6daf14: StoreField: r1->field_6f = r3
    //     0x6daf14: stur            w3, [x1, #0x6f]
    // 0x6daf18: ldur            x3, [fp, #-0x10]
    // 0x6daf1c: StoreField: r1->field_b = r3
    //     0x6daf1c: stur            w3, [x1, #0xb]
    // 0x6daf20: ldur            x3, [fp, #-0x28]
    // 0x6daf24: StoreField: r1->field_73 = r3
    //     0x6daf24: stur            w3, [x1, #0x73]
    // 0x6daf28: r0 = Scaffold()
    //     0x6daf28: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6daf2c: ldur            x1, [fp, #-0x18]
    // 0x6daf30: ArrayStore: r0[0] = r1  ; List_4
    //     0x6daf30: stur            w1, [x0, #0x17]
    // 0x6daf34: ldur            x1, [fp, #-8]
    // 0x6daf38: StoreField: r0->field_1b = r1
    //     0x6daf38: stur            w1, [x0, #0x1b]
    // 0x6daf3c: ldur            x1, [fp, #-0x20]
    // 0x6daf40: StoreField: r0->field_1f = r1
    //     0x6daf40: stur            w1, [x0, #0x1f]
    // 0x6daf44: r1 = Instance_AlignmentDirectional
    //     0x6daf44: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6daf48: ldr             x1, [x1, #0x350]
    // 0x6daf4c: StoreField: r0->field_2f = r1
    //     0x6daf4c: stur            w1, [x0, #0x2f]
    // 0x6daf50: r1 = true
    //     0x6daf50: add             x1, NULL, #0x20  ; true
    // 0x6daf54: StoreField: r0->field_5f = r1
    //     0x6daf54: stur            w1, [x0, #0x5f]
    // 0x6daf58: r2 = Instance_DragStartBehavior
    //     0x6daf58: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6daf5c: StoreField: r0->field_63 = r2
    //     0x6daf5c: stur            w2, [x0, #0x63]
    // 0x6daf60: r2 = false
    //     0x6daf60: add             x2, NULL, #0x30  ; false
    // 0x6daf64: StoreField: r0->field_b = r2
    //     0x6daf64: stur            w2, [x0, #0xb]
    // 0x6daf68: StoreField: r0->field_f = r1
    //     0x6daf68: stur            w1, [x0, #0xf]
    // 0x6daf6c: StoreField: r0->field_13 = r2
    //     0x6daf6c: stur            w2, [x0, #0x13]
    // 0x6daf70: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6daf70: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6daf74: ldr             x2, [x2, #0x358]
    // 0x6daf78: StoreField: r0->field_4b = r2
    //     0x6daf78: stur            w2, [x0, #0x4b]
    // 0x6daf7c: StoreField: r0->field_6b = r1
    //     0x6daf7c: stur            w1, [x0, #0x6b]
    // 0x6daf80: StoreField: r0->field_6f = r1
    //     0x6daf80: stur            w1, [x0, #0x6f]
    // 0x6daf84: LeaveFrame
    //     0x6daf84: mov             SP, fp
    //     0x6daf88: ldp             fp, lr, [SP], #0x10
    // 0x6daf8c: ret
    //     0x6daf8c: ret             
    // 0x6daf90: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6daf90: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6daf94: b               #0x6da3c8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6dbe0c, size: 0x74
    // 0x6dbe0c: EnterFrame
    //     0x6dbe0c: stp             fp, lr, [SP, #-0x10]!
    //     0x6dbe10: mov             fp, SP
    // 0x6dbe14: ldr             x0, [fp, #0x10]
    // 0x6dbe18: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6dbe18: ldur            w1, [x0, #0x17]
    // 0x6dbe1c: DecompressPointer r1
    //     0x6dbe1c: add             x1, x1, HEAP, lsl #32
    // 0x6dbe20: CheckStackOverflow
    //     0x6dbe20: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dbe24: cmp             SP, x16
    //     0x6dbe28: b.ls            #0x6dbe78
    // 0x6dbe2c: LoadField: r0 = r1->field_f
    //     0x6dbe2c: ldur            w0, [x1, #0xf]
    // 0x6dbe30: DecompressPointer r0
    //     0x6dbe30: add             x0, x0, HEAP, lsl #32
    // 0x6dbe34: LoadField: r2 = r1->field_b
    //     0x6dbe34: ldur            w2, [x1, #0xb]
    // 0x6dbe38: DecompressPointer r2
    //     0x6dbe38: add             x2, x2, HEAP, lsl #32
    // 0x6dbe3c: LoadField: r1 = r2->field_13
    //     0x6dbe3c: ldur            w1, [x2, #0x13]
    // 0x6dbe40: DecompressPointer r1
    //     0x6dbe40: add             x1, x1, HEAP, lsl #32
    // 0x6dbe44: LoadField: r3 = r2->field_f
    //     0x6dbe44: ldur            w3, [x2, #0xf]
    // 0x6dbe48: DecompressPointer r3
    //     0x6dbe48: add             x3, x3, HEAP, lsl #32
    // 0x6dbe4c: LoadField: r2 = r3->field_13
    //     0x6dbe4c: ldur            w2, [x3, #0x13]
    // 0x6dbe50: DecompressPointer r2
    //     0x6dbe50: add             x2, x2, HEAP, lsl #32
    // 0x6dbe54: ArrayLoad: r5 = r3[0]  ; List_4
    //     0x6dbe54: ldur            w5, [x3, #0x17]
    // 0x6dbe58: DecompressPointer r5
    //     0x6dbe58: add             x5, x5, HEAP, lsl #32
    // 0x6dbe5c: mov             x3, x2
    // 0x6dbe60: mov             x2, x1
    // 0x6dbe64: mov             x1, x0
    // 0x6dbe68: r0 = sendNotification()
    //     0x6dbe68: bl              #0x6dbe80  ; [package:umrem_demo/features/admin/providers/notification_provider.dart] NotificationProvider::sendNotification
    // 0x6dbe6c: LeaveFrame
    //     0x6dbe6c: mov             SP, fp
    //     0x6dbe70: ldp             fp, lr, [SP], #0x10
    // 0x6dbe74: ret
    //     0x6dbe74: ret             
    // 0x6dbe78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dbe78: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dbe7c: b               #0x6dbe2c
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6de384, size: 0x4c
    // 0x6de384: EnterFrame
    //     0x6de384: stp             fp, lr, [SP, #-0x10]!
    //     0x6de388: mov             fp, SP
    // 0x6de38c: ldr             x0, [fp, #0x18]
    // 0x6de390: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6de390: ldur            w1, [x0, #0x17]
    // 0x6de394: DecompressPointer r1
    //     0x6de394: add             x1, x1, HEAP, lsl #32
    // 0x6de398: CheckStackOverflow
    //     0x6de398: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de39c: cmp             SP, x16
    //     0x6de3a0: b.ls            #0x6de3c8
    // 0x6de3a4: LoadField: r0 = r1->field_f
    //     0x6de3a4: ldur            w0, [x1, #0xf]
    // 0x6de3a8: DecompressPointer r0
    //     0x6de3a8: add             x0, x0, HEAP, lsl #32
    // 0x6de3ac: mov             x1, x0
    // 0x6de3b0: ldr             x2, [fp, #0x10]
    // 0x6de3b4: r0 = setOda()
    //     0x6de3b4: bl              #0x6de3d0  ; [package:umrem_demo/features/admin/providers/notification_provider.dart] NotificationProvider::setOda
    // 0x6de3b8: r0 = Null
    //     0x6de3b8: mov             x0, NULL
    // 0x6de3bc: LeaveFrame
    //     0x6de3bc: mov             SP, fp
    //     0x6de3c0: ldp             fp, lr, [SP], #0x10
    // 0x6de3c4: ret
    //     0x6de3c4: ret             
    // 0x6de3c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de3c8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de3cc: b               #0x6de3a4
  }
  [closure] DropdownMenuItem<String> <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x6de420, size: 0x13c
    // 0x6de420: EnterFrame
    //     0x6de420: stp             fp, lr, [SP, #-0x10]!
    //     0x6de424: mov             fp, SP
    // 0x6de428: AllocStack(0x20)
    //     0x6de428: sub             SP, SP, #0x20
    // 0x6de42c: CheckStackOverflow
    //     0x6de42c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de430: cmp             SP, x16
    //     0x6de434: b.ls            #0x6de554
    // 0x6de438: ldr             x16, [fp, #0x10]
    // 0x6de43c: str             x16, [SP]
    // 0x6de440: r4 = 0
    //     0x6de440: mov             x4, #0
    // 0x6de444: ldr             x0, [SP]
    // 0x6de448: r16 = 139786425482080
    //     0x6de448: add             x16, PP, #0x18, lsl #12  ; [pp+0x18c90] IMM: 0x7f22903c3b60
    //     0x6de44c: add             x16, x16, #0xc90
    // 0x6de450: ldp             lr, x5, [x16]
    // 0x6de454: blr             lr
    // 0x6de458: mov             x3, x0
    // 0x6de45c: r2 = Null
    //     0x6de45c: mov             x2, NULL
    // 0x6de460: r1 = Null
    //     0x6de460: mov             x1, NULL
    // 0x6de464: stur            x3, [fp, #-8]
    // 0x6de468: r4 = 60
    //     0x6de468: mov             x4, #0x3c
    // 0x6de46c: branchIfSmi(r0, 0x6de478)
    //     0x6de46c: tbz             w0, #0, #0x6de478
    // 0x6de470: r4 = LoadClassIdInstr(r0)
    //     0x6de470: ldur            x4, [x0, #-1]
    //     0x6de474: ubfx            x4, x4, #0xc, #0x14
    // 0x6de478: sub             x4, x4, #0x5e
    // 0x6de47c: cmp             x4, #1
    // 0x6de480: b.ls            #0x6de494
    // 0x6de484: r8 = String?
    //     0x6de484: ldr             x8, [PP, #0x138]  ; [pp+0x138] Type: String?
    // 0x6de488: r3 = Null
    //     0x6de488: add             x3, PP, #0x18, lsl #12  ; [pp+0x18ca0] Null
    //     0x6de48c: ldr             x3, [x3, #0xca0]
    // 0x6de490: r0 = String?()
    //     0x6de490: bl              #0x3cb888  ; IsType_String?_Stub
    // 0x6de494: r1 = Null
    //     0x6de494: mov             x1, NULL
    // 0x6de498: r2 = 4
    //     0x6de498: mov             x2, #4
    // 0x6de49c: r0 = AllocateArray()
    //     0x6de49c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6de4a0: stur            x0, [fp, #-0x10]
    // 0x6de4a4: r16 = "Oda "
    //     0x6de4a4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cb0] "Oda "
    //     0x6de4a8: ldr             x16, [x16, #0xcb0]
    // 0x6de4ac: StoreField: r0->field_f = r16
    //     0x6de4ac: stur            w16, [x0, #0xf]
    // 0x6de4b0: ldr             x16, [fp, #0x10]
    // 0x6de4b4: str             x16, [SP]
    // 0x6de4b8: r4 = 0
    //     0x6de4b8: mov             x4, #0
    // 0x6de4bc: ldr             x0, [SP]
    // 0x6de4c0: r16 = 139786425482080
    //     0x6de4c0: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cb8] IMM: 0x7f22903c3b60
    //     0x6de4c4: add             x16, x16, #0xcb8
    // 0x6de4c8: ldp             lr, x5, [x16]
    // 0x6de4cc: blr             lr
    // 0x6de4d0: ldur            x1, [fp, #-0x10]
    // 0x6de4d4: ArrayStore: r1[1] = r0  ; List_4
    //     0x6de4d4: add             x25, x1, #0x13
    //     0x6de4d8: str             w0, [x25]
    //     0x6de4dc: tbz             w0, #0, #0x6de4f8
    //     0x6de4e0: ldurb           w16, [x1, #-1]
    //     0x6de4e4: ldurb           w17, [x0, #-1]
    //     0x6de4e8: and             x16, x17, x16, lsr #2
    //     0x6de4ec: tst             x16, HEAP, lsr #32
    //     0x6de4f0: b.eq            #0x6de4f8
    //     0x6de4f4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6de4f8: ldur            x16, [fp, #-0x10]
    // 0x6de4fc: str             x16, [SP]
    // 0x6de500: r0 = _interpolate()
    //     0x6de500: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6de504: stur            x0, [fp, #-0x10]
    // 0x6de508: r0 = Text()
    //     0x6de508: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6de50c: mov             x2, x0
    // 0x6de510: ldur            x0, [fp, #-0x10]
    // 0x6de514: stur            x2, [fp, #-0x18]
    // 0x6de518: StoreField: r2->field_b = r0
    //     0x6de518: stur            w0, [x2, #0xb]
    // 0x6de51c: r1 = <String>
    //     0x6de51c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6de520: r0 = DropdownMenuItem()
    //     0x6de520: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x6de524: ldur            x1, [fp, #-8]
    // 0x6de528: StoreField: r0->field_1b = r1
    //     0x6de528: stur            w1, [x0, #0x1b]
    // 0x6de52c: r1 = true
    //     0x6de52c: add             x1, NULL, #0x20  ; true
    // 0x6de530: StoreField: r0->field_1f = r1
    //     0x6de530: stur            w1, [x0, #0x1f]
    // 0x6de534: r1 = Instance_AlignmentDirectional
    //     0x6de534: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x6de538: ldr             x1, [x1, #0x330]
    // 0x6de53c: StoreField: r0->field_f = r1
    //     0x6de53c: stur            w1, [x0, #0xf]
    // 0x6de540: ldur            x1, [fp, #-0x18]
    // 0x6de544: StoreField: r0->field_b = r1
    //     0x6de544: stur            w1, [x0, #0xb]
    // 0x6de548: LeaveFrame
    //     0x6de548: mov             SP, fp
    //     0x6de54c: ldp             fp, lr, [SP], #0x10
    // 0x6de550: ret
    //     0x6de550: ret             
    // 0x6de554: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de554: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de558: b               #0x6de438
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6de5f8, size: 0x4c
    // 0x6de5f8: EnterFrame
    //     0x6de5f8: stp             fp, lr, [SP, #-0x10]!
    //     0x6de5fc: mov             fp, SP
    // 0x6de600: ldr             x0, [fp, #0x18]
    // 0x6de604: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6de604: ldur            w1, [x0, #0x17]
    // 0x6de608: DecompressPointer r1
    //     0x6de608: add             x1, x1, HEAP, lsl #32
    // 0x6de60c: CheckStackOverflow
    //     0x6de60c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de610: cmp             SP, x16
    //     0x6de614: b.ls            #0x6de63c
    // 0x6de618: LoadField: r0 = r1->field_f
    //     0x6de618: ldur            w0, [x1, #0xf]
    // 0x6de61c: DecompressPointer r0
    //     0x6de61c: add             x0, x0, HEAP, lsl #32
    // 0x6de620: mov             x1, x0
    // 0x6de624: ldr             x2, [fp, #0x10]
    // 0x6de628: r0 = setOtel()
    //     0x6de628: bl              #0x6de644  ; [package:umrem_demo/features/admin/providers/notification_provider.dart] NotificationProvider::setOtel
    // 0x6de62c: r0 = Null
    //     0x6de62c: mov             x0, NULL
    // 0x6de630: LeaveFrame
    //     0x6de630: mov             SP, fp
    //     0x6de634: ldp             fp, lr, [SP], #0x10
    // 0x6de638: ret
    //     0x6de638: ret             
    // 0x6de63c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de63c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de640: b               #0x6de618
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x6de708, size: 0x6c
    // 0x6de708: EnterFrame
    //     0x6de708: stp             fp, lr, [SP, #-0x10]!
    //     0x6de70c: mov             fp, SP
    // 0x6de710: AllocStack(0x10)
    //     0x6de710: sub             SP, SP, #0x10
    // 0x6de714: SetupParameters([dynamic _ /* r0 */])
    //     0x6de714: ldr             x0, [fp, #0x18]
    //     0x6de718: ldur            w1, [x0, #0x17]
    //     0x6de71c: add             x1, x1, HEAP, lsl #32
    // 0x6de720: CheckStackOverflow
    //     0x6de720: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de724: cmp             SP, x16
    //     0x6de728: b.ls            #0x6de76c
    // 0x6de72c: ldr             x0, [fp, #0x10]
    // 0x6de730: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6de730: ldur            w2, [x0, #0x17]
    // 0x6de734: DecompressPointer r2
    //     0x6de734: add             x2, x2, HEAP, lsl #32
    // 0x6de738: LoadField: r0 = r1->field_f
    //     0x6de738: ldur            w0, [x1, #0xf]
    // 0x6de73c: DecompressPointer r0
    //     0x6de73c: add             x0, x0, HEAP, lsl #32
    // 0x6de740: LoadField: r1 = r0->field_2f
    //     0x6de740: ldur            w1, [x0, #0x2f]
    // 0x6de744: DecompressPointer r1
    //     0x6de744: add             x1, x1, HEAP, lsl #32
    // 0x6de748: r0 = LoadClassIdInstr(r2)
    //     0x6de748: ldur            x0, [x2, #-1]
    //     0x6de74c: ubfx            x0, x0, #0xc, #0x14
    // 0x6de750: stp             x1, x2, [SP]
    // 0x6de754: mov             lr, x0
    // 0x6de758: ldr             lr, [x21, lr, lsl #3]
    // 0x6de75c: blr             lr
    // 0x6de760: LeaveFrame
    //     0x6de760: mov             SP, fp
    //     0x6de764: ldp             fp, lr, [SP], #0x10
    // 0x6de768: ret
    //     0x6de768: ret             
    // 0x6de76c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de76c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de770: b               #0x6de72c
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6de798, size: 0x4c
    // 0x6de798: EnterFrame
    //     0x6de798: stp             fp, lr, [SP, #-0x10]!
    //     0x6de79c: mov             fp, SP
    // 0x6de7a0: ldr             x0, [fp, #0x18]
    // 0x6de7a4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6de7a4: ldur            w1, [x0, #0x17]
    // 0x6de7a8: DecompressPointer r1
    //     0x6de7a8: add             x1, x1, HEAP, lsl #32
    // 0x6de7ac: CheckStackOverflow
    //     0x6de7ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de7b0: cmp             SP, x16
    //     0x6de7b4: b.ls            #0x6de7dc
    // 0x6de7b8: LoadField: r0 = r1->field_f
    //     0x6de7b8: ldur            w0, [x1, #0xf]
    // 0x6de7bc: DecompressPointer r0
    //     0x6de7bc: add             x0, x0, HEAP, lsl #32
    // 0x6de7c0: mov             x1, x0
    // 0x6de7c4: ldr             x2, [fp, #0x10]
    // 0x6de7c8: r0 = setSefer()
    //     0x6de7c8: bl              #0x6de7e4  ; [package:umrem_demo/features/admin/providers/notification_provider.dart] NotificationProvider::setSefer
    // 0x6de7cc: r0 = Null
    //     0x6de7cc: mov             x0, NULL
    // 0x6de7d0: LeaveFrame
    //     0x6de7d0: mov             SP, fp
    //     0x6de7d4: ldp             fp, lr, [SP], #0x10
    // 0x6de7d8: ret
    //     0x6de7d8: ret             
    // 0x6de7dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de7dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de7e0: b               #0x6de7b8
  }
  [closure] void <anonymous closure>(dynamic, NotificationTargetType?) {
    // ** addr: 0x6de854, size: 0x54
    // 0x6de854: EnterFrame
    //     0x6de854: stp             fp, lr, [SP, #-0x10]!
    //     0x6de858: mov             fp, SP
    // 0x6de85c: ldr             x0, [fp, #0x18]
    // 0x6de860: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6de860: ldur            w1, [x0, #0x17]
    // 0x6de864: DecompressPointer r1
    //     0x6de864: add             x1, x1, HEAP, lsl #32
    // 0x6de868: CheckStackOverflow
    //     0x6de868: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6de86c: cmp             SP, x16
    //     0x6de870: b.ls            #0x6de8a0
    // 0x6de874: ldr             x2, [fp, #0x10]
    // 0x6de878: cmp             w2, NULL
    // 0x6de87c: b.eq            #0x6de890
    // 0x6de880: LoadField: r0 = r1->field_f
    //     0x6de880: ldur            w0, [x1, #0xf]
    // 0x6de884: DecompressPointer r0
    //     0x6de884: add             x0, x0, HEAP, lsl #32
    // 0x6de888: mov             x1, x0
    // 0x6de88c: r0 = setTargetType()
    //     0x6de88c: bl              #0x6de8a8  ; [package:umrem_demo/features/admin/providers/notification_provider.dart] NotificationProvider::setTargetType
    // 0x6de890: r0 = Null
    //     0x6de890: mov             x0, NULL
    // 0x6de894: LeaveFrame
    //     0x6de894: mov             SP, fp
    //     0x6de898: ldp             fp, lr, [SP], #0x10
    // 0x6de89c: ret
    //     0x6de89c: ret             
    // 0x6de8a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6de8a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6de8a4: b               #0x6de874
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c314, size: 0x24
    // 0x74c314: EnterFrame
    //     0x74c314: stp             fp, lr, [SP, #-0x10]!
    //     0x74c318: mov             fp, SP
    // 0x74c31c: ldr             x2, [fp, #0x10]
    // 0x74c320: r1 = Function 'dispose':.
    //     0x74c320: add             x1, PP, #0x27, lsl #12  ; [pp+0x27598] AnonymousClosure: (0x74c338), in [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::dispose (0x753b3c)
    //     0x74c324: ldr             x1, [x1, #0x598]
    // 0x74c328: r0 = AllocateClosure()
    //     0x74c328: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c32c: LeaveFrame
    //     0x74c32c: mov             SP, fp
    //     0x74c330: ldp             fp, lr, [SP], #0x10
    // 0x74c334: ret
    //     0x74c334: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c338, size: 0x38
    // 0x74c338: EnterFrame
    //     0x74c338: stp             fp, lr, [SP, #-0x10]!
    //     0x74c33c: mov             fp, SP
    // 0x74c340: ldr             x0, [fp, #0x10]
    // 0x74c344: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c344: ldur            w1, [x0, #0x17]
    // 0x74c348: DecompressPointer r1
    //     0x74c348: add             x1, x1, HEAP, lsl #32
    // 0x74c34c: CheckStackOverflow
    //     0x74c34c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c350: cmp             SP, x16
    //     0x74c354: b.ls            #0x74c368
    // 0x74c358: r0 = dispose()
    //     0x74c358: bl              #0x753b3c  ; [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::dispose
    // 0x74c35c: LeaveFrame
    //     0x74c35c: mov             SP, fp
    //     0x74c360: ldp             fp, lr, [SP], #0x10
    // 0x74c364: ret
    //     0x74c364: ret             
    // 0x74c368: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c368: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c36c: b               #0x74c358
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753b3c, size: 0x54
    // 0x753b3c: EnterFrame
    //     0x753b3c: stp             fp, lr, [SP, #-0x10]!
    //     0x753b40: mov             fp, SP
    // 0x753b44: AllocStack(0x8)
    //     0x753b44: sub             SP, SP, #8
    // 0x753b48: SetupParameters(_NotificationsPageState this /* r1 => r0, fp-0x8 */)
    //     0x753b48: mov             x0, x1
    //     0x753b4c: stur            x1, [fp, #-8]
    // 0x753b50: CheckStackOverflow
    //     0x753b50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753b54: cmp             SP, x16
    //     0x753b58: b.ls            #0x753b88
    // 0x753b5c: LoadField: r1 = r0->field_13
    //     0x753b5c: ldur            w1, [x0, #0x13]
    // 0x753b60: DecompressPointer r1
    //     0x753b60: add             x1, x1, HEAP, lsl #32
    // 0x753b64: r0 = dispose()
    //     0x753b64: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753b68: ldur            x0, [fp, #-8]
    // 0x753b6c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x753b6c: ldur            w1, [x0, #0x17]
    // 0x753b70: DecompressPointer r1
    //     0x753b70: add             x1, x1, HEAP, lsl #32
    // 0x753b74: r0 = dispose()
    //     0x753b74: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753b78: r0 = Null
    //     0x753b78: mov             x0, NULL
    // 0x753b7c: LeaveFrame
    //     0x753b7c: mov             SP, fp
    //     0x753b80: ldp             fp, lr, [SP], #0x10
    // 0x753b84: ret
    //     0x753b84: ret             
    // 0x753b88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753b88: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753b8c: b               #0x753b5c
  }
  _ _NotificationsPageState(/* No info */) {
    // ** addr: 0x7bd460, size: 0xb0
    // 0x7bd460: EnterFrame
    //     0x7bd460: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd464: mov             fp, SP
    // 0x7bd468: AllocStack(0x10)
    //     0x7bd468: sub             SP, SP, #0x10
    // 0x7bd46c: SetupParameters(_NotificationsPageState this /* r1 => r0, fp-0x8 */)
    //     0x7bd46c: mov             x0, x1
    //     0x7bd470: stur            x1, [fp, #-8]
    // 0x7bd474: CheckStackOverflow
    //     0x7bd474: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd478: cmp             SP, x16
    //     0x7bd47c: b.ls            #0x7bd508
    // 0x7bd480: r1 = <TextEditingValue>
    //     0x7bd480: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd484: r0 = TextEditingController()
    //     0x7bd484: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd488: mov             x1, x0
    // 0x7bd48c: stur            x0, [fp, #-0x10]
    // 0x7bd490: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd490: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd494: r0 = TextEditingController()
    //     0x7bd494: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd498: ldur            x0, [fp, #-0x10]
    // 0x7bd49c: ldur            x2, [fp, #-8]
    // 0x7bd4a0: StoreField: r2->field_13 = r0
    //     0x7bd4a0: stur            w0, [x2, #0x13]
    //     0x7bd4a4: ldurb           w16, [x2, #-1]
    //     0x7bd4a8: ldurb           w17, [x0, #-1]
    //     0x7bd4ac: and             x16, x17, x16, lsr #2
    //     0x7bd4b0: tst             x16, HEAP, lsr #32
    //     0x7bd4b4: b.eq            #0x7bd4bc
    //     0x7bd4b8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd4bc: r1 = <TextEditingValue>
    //     0x7bd4bc: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd4c0: r0 = TextEditingController()
    //     0x7bd4c0: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd4c4: mov             x1, x0
    // 0x7bd4c8: stur            x0, [fp, #-0x10]
    // 0x7bd4cc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd4cc: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd4d0: r0 = TextEditingController()
    //     0x7bd4d0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd4d4: ldur            x0, [fp, #-0x10]
    // 0x7bd4d8: ldur            x1, [fp, #-8]
    // 0x7bd4dc: ArrayStore: r1[0] = r0  ; List_4
    //     0x7bd4dc: stur            w0, [x1, #0x17]
    //     0x7bd4e0: ldurb           w16, [x1, #-1]
    //     0x7bd4e4: ldurb           w17, [x0, #-1]
    //     0x7bd4e8: and             x16, x17, x16, lsr #2
    //     0x7bd4ec: tst             x16, HEAP, lsr #32
    //     0x7bd4f0: b.eq            #0x7bd4f8
    //     0x7bd4f4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bd4f8: r0 = Null
    //     0x7bd4f8: mov             x0, NULL
    // 0x7bd4fc: LeaveFrame
    //     0x7bd4fc: mov             SP, fp
    //     0x7bd500: ldp             fp, lr, [SP], #0x10
    // 0x7bd504: ret
    //     0x7bd504: ret             
    // 0x7bd508: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd508: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd50c: b               #0x7bd480
  }
}

// class id: 3215, size: 0xc, field offset: 0xc
//   const constructor, 
class NotificationsPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd418, size: 0x48
    // 0x7bd418: EnterFrame
    //     0x7bd418: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd41c: mov             fp, SP
    // 0x7bd420: AllocStack(0x8)
    //     0x7bd420: sub             SP, SP, #8
    // 0x7bd424: CheckStackOverflow
    //     0x7bd424: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd428: cmp             SP, x16
    //     0x7bd42c: b.ls            #0x7bd458
    // 0x7bd430: r1 = <NotificationsPage>
    //     0x7bd430: add             x1, PP, #0x12, lsl #12  ; [pp+0x126a0] TypeArguments: <NotificationsPage>
    //     0x7bd434: ldr             x1, [x1, #0x6a0]
    // 0x7bd438: r0 = _NotificationsPageState()
    //     0x7bd438: bl              #0x7bd510  ; Allocate_NotificationsPageStateStub -> _NotificationsPageState (size=0x1c)
    // 0x7bd43c: mov             x1, x0
    // 0x7bd440: stur            x0, [fp, #-8]
    // 0x7bd444: r0 = _NotificationsPageState()
    //     0x7bd444: bl              #0x7bd460  ; [package:umrem_demo/features/admin/screens/notifications_page.dart] _NotificationsPageState::_NotificationsPageState
    // 0x7bd448: ldur            x0, [fp, #-8]
    // 0x7bd44c: LeaveFrame
    //     0x7bd44c: mov             SP, fp
    //     0x7bd450: ldp             fp, lr, [SP], #0x10
    // 0x7bd454: ret
    //     0x7bd454: ret             
    // 0x7bd458: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd458: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd45c: b               #0x7bd430
  }
}
