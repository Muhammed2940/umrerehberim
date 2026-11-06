// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart

// class id: 1049607, size: 0x8
class :: {
}

// class id: 2456, size: 0x14, field offset: 0x14
class RoomsTabState extends State<dynamic> {

  [closure] DropdownMenuItem<String?> <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x6f42e8, size: 0x74
    // 0x6f42e8: EnterFrame
    //     0x6f42e8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f42ec: mov             fp, SP
    // 0x6f42f0: AllocStack(0x18)
    //     0x6f42f0: sub             SP, SP, #0x18
    // 0x6f42f4: ldr             x0, [fp, #0x10]
    // 0x6f42f8: LoadField: r1 = r0->field_7
    //     0x6f42f8: ldur            w1, [x0, #7]
    // 0x6f42fc: DecompressPointer r1
    //     0x6f42fc: add             x1, x1, HEAP, lsl #32
    // 0x6f4300: stur            x1, [fp, #-0x10]
    // 0x6f4304: LoadField: r2 = r0->field_b
    //     0x6f4304: ldur            w2, [x0, #0xb]
    // 0x6f4308: DecompressPointer r2
    //     0x6f4308: add             x2, x2, HEAP, lsl #32
    // 0x6f430c: stur            x2, [fp, #-8]
    // 0x6f4310: r0 = Text()
    //     0x6f4310: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f4314: mov             x2, x0
    // 0x6f4318: ldur            x0, [fp, #-8]
    // 0x6f431c: stur            x2, [fp, #-0x18]
    // 0x6f4320: StoreField: r2->field_b = r0
    //     0x6f4320: stur            w0, [x2, #0xb]
    // 0x6f4324: r1 = <String?>
    //     0x6f4324: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f4328: r0 = DropdownMenuItem()
    //     0x6f4328: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x6f432c: ldur            x1, [fp, #-0x10]
    // 0x6f4330: StoreField: r0->field_1b = r1
    //     0x6f4330: stur            w1, [x0, #0x1b]
    // 0x6f4334: r1 = true
    //     0x6f4334: add             x1, NULL, #0x20  ; true
    // 0x6f4338: StoreField: r0->field_1f = r1
    //     0x6f4338: stur            w1, [x0, #0x1f]
    // 0x6f433c: r1 = Instance_AlignmentDirectional
    //     0x6f433c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x6f4340: ldr             x1, [x1, #0x330]
    // 0x6f4344: StoreField: r0->field_f = r1
    //     0x6f4344: stur            w1, [x0, #0xf]
    // 0x6f4348: ldur            x1, [fp, #-0x18]
    // 0x6f434c: StoreField: r0->field_b = r1
    //     0x6f434c: stur            w1, [x0, #0xb]
    // 0x6f4350: LeaveFrame
    //     0x6f4350: mov             SP, fp
    //     0x6f4354: ldp             fp, lr, [SP], #0x10
    // 0x6f4358: ret
    //     0x6f4358: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x6f435c, size: 0x8e0
    // 0x6f435c: EnterFrame
    //     0x6f435c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f4360: mov             fp, SP
    // 0x6f4364: AllocStack(0x70)
    //     0x6f4364: sub             SP, SP, #0x70
    // 0x6f4368: SetupParameters([dynamic _ /* r0 */])
    //     0x6f4368: ldr             x0, [fp, #0x20]
    //     0x6f436c: ldur            w1, [x0, #0x17]
    //     0x6f4370: add             x1, x1, HEAP, lsl #32
    //     0x6f4374: stur            x1, [fp, #-8]
    // 0x6f4378: CheckStackOverflow
    //     0x6f4378: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f437c: cmp             SP, x16
    //     0x6f4380: b.ls            #0x6f4c2c
    // 0x6f4384: r1 = 2
    //     0x6f4384: mov             x1, #2
    // 0x6f4388: r0 = AllocateContext()
    //     0x6f4388: bl              #0x927010  ; AllocateContextStub
    // 0x6f438c: mov             x3, x0
    // 0x6f4390: ldur            x0, [fp, #-8]
    // 0x6f4394: stur            x3, [fp, #-0x18]
    // 0x6f4398: StoreField: r3->field_b = r0
    //     0x6f4398: stur            w0, [x3, #0xb]
    // 0x6f439c: ldr             x1, [fp, #0x18]
    // 0x6f43a0: StoreField: r3->field_f = r1
    //     0x6f43a0: stur            w1, [x3, #0xf]
    // 0x6f43a4: ldr             x1, [fp, #0x10]
    // 0x6f43a8: StoreField: r3->field_13 = r1
    //     0x6f43a8: stur            w1, [x3, #0x13]
    // 0x6f43ac: LoadField: r4 = r0->field_b
    //     0x6f43ac: ldur            w4, [x0, #0xb]
    // 0x6f43b0: DecompressPointer r4
    //     0x6f43b0: add             x4, x4, HEAP, lsl #32
    // 0x6f43b4: stur            x4, [fp, #-0x10]
    // 0x6f43b8: LoadField: r0 = r4->field_23
    //     0x6f43b8: ldur            w0, [x4, #0x23]
    // 0x6f43bc: DecompressPointer r0
    //     0x6f43bc: add             x0, x0, HEAP, lsl #32
    // 0x6f43c0: cmp             w0, NULL
    // 0x6f43c4: b.eq            #0x6f4440
    // 0x6f43c8: LoadField: r0 = r4->field_f
    //     0x6f43c8: ldur            w0, [x4, #0xf]
    // 0x6f43cc: DecompressPointer r0
    //     0x6f43cc: add             x0, x0, HEAP, lsl #32
    // 0x6f43d0: LoadField: r1 = r0->field_b
    //     0x6f43d0: ldur            w1, [x0, #0xb]
    // 0x6f43d4: DecompressPointer r1
    //     0x6f43d4: add             x1, x1, HEAP, lsl #32
    // 0x6f43d8: cmp             w1, NULL
    // 0x6f43dc: b.eq            #0x6f4c34
    // 0x6f43e0: LoadField: r0 = r1->field_f
    //     0x6f43e0: ldur            w0, [x1, #0xf]
    // 0x6f43e4: DecompressPointer r0
    //     0x6f43e4: add             x0, x0, HEAP, lsl #32
    // 0x6f43e8: mov             x2, x3
    // 0x6f43ec: stur            x0, [fp, #-8]
    // 0x6f43f0: r1 = Function '<anonymous closure>':.
    //     0x6f43f0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19220] AnonymousClosure: (0x6f6940), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f43f4: ldr             x1, [x1, #0x220]
    // 0x6f43f8: r0 = AllocateClosure()
    //     0x6f43f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f43fc: ldur            x1, [fp, #-8]
    // 0x6f4400: r2 = LoadClassIdInstr(r1)
    //     0x6f4400: ldur            x2, [x1, #-1]
    //     0x6f4404: ubfx            x2, x2, #0xc, #0x14
    // 0x6f4408: mov             x16, x0
    // 0x6f440c: mov             x0, x2
    // 0x6f4410: mov             x2, x16
    // 0x6f4414: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6f4414: mov             x17, #0xd348
    //     0x6f4418: add             lr, x0, x17
    //     0x6f441c: ldr             lr, [x21, lr, lsl #3]
    //     0x6f4420: blr             lr
    // 0x6f4424: LoadField: r1 = r0->field_7
    //     0x6f4424: ldur            w1, [x0, #7]
    // 0x6f4428: DecompressPointer r1
    //     0x6f4428: add             x1, x1, HEAP, lsl #32
    // 0x6f442c: mov             x2, x0
    // 0x6f4430: r0 = _GrowableList.of()
    //     0x6f4430: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6f4434: mov             x1, x0
    // 0x6f4438: ldur            x0, [fp, #-0x10]
    // 0x6f443c: b               #0x6f4464
    // 0x6f4440: mov             x0, x4
    // 0x6f4444: LoadField: r1 = r0->field_f
    //     0x6f4444: ldur            w1, [x0, #0xf]
    // 0x6f4448: DecompressPointer r1
    //     0x6f4448: add             x1, x1, HEAP, lsl #32
    // 0x6f444c: LoadField: r2 = r1->field_b
    //     0x6f444c: ldur            w2, [x1, #0xb]
    // 0x6f4450: DecompressPointer r2
    //     0x6f4450: add             x2, x2, HEAP, lsl #32
    // 0x6f4454: cmp             w2, NULL
    // 0x6f4458: b.eq            #0x6f4c38
    // 0x6f445c: LoadField: r1 = r2->field_f
    //     0x6f445c: ldur            w1, [x2, #0xf]
    // 0x6f4460: DecompressPointer r1
    //     0x6f4460: add             x1, x1, HEAP, lsl #32
    // 0x6f4464: stur            x1, [fp, #-8]
    // 0x6f4468: r0 = Radius()
    //     0x6f4468: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f446c: d0 = 16.000000
    //     0x6f446c: fmov            d0, #16.00000000
    // 0x6f4470: stur            x0, [fp, #-0x20]
    // 0x6f4474: StoreField: r0->field_7 = d0
    //     0x6f4474: stur            d0, [x0, #7]
    // 0x6f4478: StoreField: r0->field_f = d0
    //     0x6f4478: stur            d0, [x0, #0xf]
    // 0x6f447c: r0 = BorderRadius()
    //     0x6f447c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f4480: mov             x1, x0
    // 0x6f4484: ldur            x0, [fp, #-0x20]
    // 0x6f4488: stur            x1, [fp, #-0x28]
    // 0x6f448c: StoreField: r1->field_7 = r0
    //     0x6f448c: stur            w0, [x1, #7]
    // 0x6f4490: StoreField: r1->field_b = r0
    //     0x6f4490: stur            w0, [x1, #0xb]
    // 0x6f4494: StoreField: r1->field_f = r0
    //     0x6f4494: stur            w0, [x1, #0xf]
    // 0x6f4498: StoreField: r1->field_13 = r0
    //     0x6f4498: stur            w0, [x1, #0x13]
    // 0x6f449c: r0 = RoundedRectangleBorder()
    //     0x6f449c: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6f44a0: mov             x1, x0
    // 0x6f44a4: ldur            x0, [fp, #-0x28]
    // 0x6f44a8: stur            x1, [fp, #-0x30]
    // 0x6f44ac: StoreField: r1->field_b = r0
    //     0x6f44ac: stur            w0, [x1, #0xb]
    // 0x6f44b0: r0 = Instance_BorderSide
    //     0x6f44b0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6f44b4: ldr             x0, [x0, #0xcb8]
    // 0x6f44b8: StoreField: r1->field_7 = r0
    //     0x6f44b8: stur            w0, [x1, #7]
    // 0x6f44bc: ldur            x0, [fp, #-0x10]
    // 0x6f44c0: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6f44c0: ldur            w2, [x0, #0x17]
    // 0x6f44c4: DecompressPointer r2
    //     0x6f44c4: add             x2, x2, HEAP, lsl #32
    // 0x6f44c8: stur            x2, [fp, #-0x28]
    // 0x6f44cc: tbnz            w2, #4, #0x6f44dc
    // 0x6f44d0: r3 = "Oda Düzenle"
    //     0x6f44d0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19228] "Oda Düzenle"
    //     0x6f44d4: ldr             x3, [x3, #0x228]
    // 0x6f44d8: b               #0x6f44e4
    // 0x6f44dc: r3 = "Yeni Oda"
    //     0x6f44dc: add             x3, PP, #0x19, lsl #12  ; [pp+0x19230] "Yeni Oda"
    //     0x6f44e0: ldr             x3, [x3, #0x230]
    // 0x6f44e4: stur            x3, [fp, #-0x20]
    // 0x6f44e8: r0 = Text()
    //     0x6f44e8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f44ec: mov             x2, x0
    // 0x6f44f0: ldur            x0, [fp, #-0x20]
    // 0x6f44f4: stur            x2, [fp, #-0x38]
    // 0x6f44f8: StoreField: r2->field_b = r0
    //     0x6f44f8: stur            w0, [x2, #0xb]
    // 0x6f44fc: r0 = Instance_TextStyle
    //     0x6f44fc: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6f4500: ldr             x0, [x0, #0x158]
    // 0x6f4504: StoreField: r2->field_13 = r0
    //     0x6f4504: stur            w0, [x2, #0x13]
    // 0x6f4508: ldur            x0, [fp, #-0x10]
    // 0x6f450c: LoadField: r3 = r0->field_23
    //     0x6f450c: ldur            w3, [x0, #0x23]
    // 0x6f4510: DecompressPointer r3
    //     0x6f4510: add             x3, x3, HEAP, lsl #32
    // 0x6f4514: stur            x3, [fp, #-0x20]
    // 0x6f4518: r1 = "Sefer *"
    //     0x6f4518: add             x1, PP, #0x19, lsl #12  ; [pp+0x19238] "Sefer *"
    //     0x6f451c: ldr             x1, [x1, #0x238]
    // 0x6f4520: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f4520: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f4524: r0 = buildDropdownDecoration()
    //     0x6f4524: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x6f4528: r1 = Null
    //     0x6f4528: mov             x1, NULL
    // 0x6f452c: r2 = 2
    //     0x6f452c: mov             x2, #2
    // 0x6f4530: stur            x0, [fp, #-0x40]
    // 0x6f4534: r0 = AllocateArray()
    //     0x6f4534: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f4538: stur            x0, [fp, #-0x48]
    // 0x6f453c: r16 = Instance_DropdownMenuItem
    //     0x6f453c: add             x16, PP, #0x14, lsl #12  ; [pp+0x148d8] Obj!DropdownMenuItem<String?>@a1f561
    //     0x6f4540: ldr             x16, [x16, #0x8d8]
    // 0x6f4544: StoreField: r0->field_f = r16
    //     0x6f4544: stur            w16, [x0, #0xf]
    // 0x6f4548: r1 = <DropdownMenuItem<String?>>
    //     0x6f4548: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f454c: ldr             x1, [x1, #0x8e0]
    // 0x6f4550: r0 = AllocateGrowableArray()
    //     0x6f4550: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f4554: mov             x2, x0
    // 0x6f4558: ldur            x0, [fp, #-0x48]
    // 0x6f455c: stur            x2, [fp, #-0x50]
    // 0x6f4560: StoreField: r2->field_f = r0
    //     0x6f4560: stur            w0, [x2, #0xf]
    // 0x6f4564: r0 = 2
    //     0x6f4564: mov             x0, #2
    // 0x6f4568: StoreField: r2->field_b = r0
    //     0x6f4568: stur            w0, [x2, #0xb]
    // 0x6f456c: ldur            x3, [fp, #-0x10]
    // 0x6f4570: LoadField: r1 = r3->field_f
    //     0x6f4570: ldur            w1, [x3, #0xf]
    // 0x6f4574: DecompressPointer r1
    //     0x6f4574: add             x1, x1, HEAP, lsl #32
    // 0x6f4578: r0 = textAlign()
    //     0x6f4578: bl              #0x582638  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::textAlign
    // 0x6f457c: r1 = Function '<anonymous closure>':.
    //     0x6f457c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19240] AnonymousClosure: (0x6e6bb4), in [package:umrem_demo/features/admin/widgets/hotel/hotels_tab.dart] HotelsTab::_openCreateHotelSheet (0x6e6dbc)
    //     0x6f4580: ldr             x1, [x1, #0x240]
    // 0x6f4584: r2 = Null
    //     0x6f4584: mov             x2, NULL
    // 0x6f4588: stur            x0, [fp, #-0x48]
    // 0x6f458c: r0 = AllocateClosure()
    //     0x6f458c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f4590: mov             x1, x0
    // 0x6f4594: ldur            x0, [fp, #-0x48]
    // 0x6f4598: r2 = LoadClassIdInstr(r0)
    //     0x6f4598: ldur            x2, [x0, #-1]
    //     0x6f459c: ubfx            x2, x2, #0xc, #0x14
    // 0x6f45a0: r16 = <DropdownMenuItem<String?>>
    //     0x6f45a0: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f45a4: ldr             x16, [x16, #0x8e0]
    // 0x6f45a8: stp             x0, x16, [SP, #8]
    // 0x6f45ac: str             x1, [SP]
    // 0x6f45b0: mov             x0, x2
    // 0x6f45b4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f45b4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f45b8: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6f45b8: mov             x17, #0xd1d6
    //     0x6f45bc: add             lr, x0, x17
    //     0x6f45c0: ldr             lr, [x21, lr, lsl #3]
    //     0x6f45c4: blr             lr
    // 0x6f45c8: ldur            x1, [fp, #-0x50]
    // 0x6f45cc: mov             x2, x0
    // 0x6f45d0: r0 = addAll()
    //     0x6f45d0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f45d4: ldur            x2, [fp, #-0x18]
    // 0x6f45d8: r1 = Function '<anonymous closure>':.
    //     0x6f45d8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19248] AnonymousClosure: (0x6f6858), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f45dc: ldr             x1, [x1, #0x248]
    // 0x6f45e0: r0 = AllocateClosure()
    //     0x6f45e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f45e4: r1 = <String?>
    //     0x6f45e4: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f45e8: stur            x0, [fp, #-0x48]
    // 0x6f45ec: r0 = DropdownButtonFormField()
    //     0x6f45ec: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f45f0: stur            x0, [fp, #-0x58]
    // 0x6f45f4: r16 = Instance_Color
    //     0x6f45f4: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6f45f8: ldr             x16, [x16, #0x1c0]
    // 0x6f45fc: r30 = Instance_TextStyle
    //     0x6f45fc: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6f4600: ldr             lr, [lr, #0x158]
    // 0x6f4604: stp             lr, x16, [SP]
    // 0x6f4608: mov             x1, x0
    // 0x6f460c: ldur            x2, [fp, #-0x40]
    // 0x6f4610: ldur            x3, [fp, #-0x20]
    // 0x6f4614: ldur            x5, [fp, #-0x50]
    // 0x6f4618: ldur            x6, [fp, #-0x48]
    // 0x6f461c: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x6f461c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x6f4620: ldr             x4, [x4, #0x250]
    // 0x6f4624: r0 = DropdownButtonFormField()
    //     0x6f4624: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f4628: r1 = <Widget>
    //     0x6f4628: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f462c: r2 = 18
    //     0x6f462c: mov             x2, #0x12
    // 0x6f4630: r0 = AllocateArray()
    //     0x6f4630: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f4634: mov             x2, x0
    // 0x6f4638: ldur            x0, [fp, #-0x58]
    // 0x6f463c: stur            x2, [fp, #-0x40]
    // 0x6f4640: StoreField: r2->field_f = r0
    //     0x6f4640: stur            w0, [x2, #0xf]
    // 0x6f4644: r16 = Instance_SizedBox
    //     0x6f4644: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f4648: ldr             x16, [x16, #0x220]
    // 0x6f464c: StoreField: r2->field_13 = r16
    //     0x6f464c: stur            w16, [x2, #0x13]
    // 0x6f4650: ldur            x0, [fp, #-0x10]
    // 0x6f4654: LoadField: r3 = r0->field_27
    //     0x6f4654: ldur            w3, [x0, #0x27]
    // 0x6f4658: DecompressPointer r3
    //     0x6f4658: add             x3, x3, HEAP, lsl #32
    // 0x6f465c: stur            x3, [fp, #-0x20]
    // 0x6f4660: r1 = "Otel *"
    //     0x6f4660: add             x1, PP, #0x19, lsl #12  ; [pp+0x19258] "Otel *"
    //     0x6f4664: ldr             x1, [x1, #0x258]
    // 0x6f4668: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f4668: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f466c: r0 = buildDropdownDecoration()
    //     0x6f466c: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x6f4670: mov             x3, x0
    // 0x6f4674: ldur            x0, [fp, #-0x10]
    // 0x6f4678: stur            x3, [fp, #-0x48]
    // 0x6f467c: LoadField: r1 = r0->field_23
    //     0x6f467c: ldur            w1, [x0, #0x23]
    // 0x6f4680: DecompressPointer r1
    //     0x6f4680: add             x1, x1, HEAP, lsl #32
    // 0x6f4684: cmp             w1, NULL
    // 0x6f4688: b.ne            #0x6f46d4
    // 0x6f468c: r4 = 2
    //     0x6f468c: mov             x4, #2
    // 0x6f4690: mov             x2, x4
    // 0x6f4694: r1 = Null
    //     0x6f4694: mov             x1, NULL
    // 0x6f4698: r0 = AllocateArray()
    //     0x6f4698: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f469c: stur            x0, [fp, #-0x50]
    // 0x6f46a0: r16 = Instance_DropdownMenuItem
    //     0x6f46a0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19260] Obj!DropdownMenuItem<String?>@a1f5f1
    //     0x6f46a4: ldr             x16, [x16, #0x260]
    // 0x6f46a8: StoreField: r0->field_f = r16
    //     0x6f46a8: stur            w16, [x0, #0xf]
    // 0x6f46ac: r1 = <DropdownMenuItem<String?>>
    //     0x6f46ac: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f46b0: ldr             x1, [x1, #0x8e0]
    // 0x6f46b4: r0 = AllocateGrowableArray()
    //     0x6f46b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f46b8: mov             x1, x0
    // 0x6f46bc: ldur            x0, [fp, #-0x50]
    // 0x6f46c0: StoreField: r1->field_f = r0
    //     0x6f46c0: stur            w0, [x1, #0xf]
    // 0x6f46c4: r0 = 2
    //     0x6f46c4: mov             x0, #2
    // 0x6f46c8: StoreField: r1->field_b = r0
    //     0x6f46c8: stur            w0, [x1, #0xb]
    // 0x6f46cc: mov             x5, x1
    // 0x6f46d0: b               #0x6f4774
    // 0x6f46d4: ldur            x3, [fp, #-8]
    // 0x6f46d8: r0 = 2
    //     0x6f46d8: mov             x0, #2
    // 0x6f46dc: mov             x2, x0
    // 0x6f46e0: r1 = Null
    //     0x6f46e0: mov             x1, NULL
    // 0x6f46e4: r0 = AllocateArray()
    //     0x6f46e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f46e8: stur            x0, [fp, #-0x50]
    // 0x6f46ec: r16 = Instance_DropdownMenuItem
    //     0x6f46ec: add             x16, PP, #0x19, lsl #12  ; [pp+0x19268] Obj!DropdownMenuItem<String?>@a1f5c1
    //     0x6f46f0: ldr             x16, [x16, #0x268]
    // 0x6f46f4: StoreField: r0->field_f = r16
    //     0x6f46f4: stur            w16, [x0, #0xf]
    // 0x6f46f8: r1 = <DropdownMenuItem<String?>>
    //     0x6f46f8: add             x1, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f46fc: ldr             x1, [x1, #0x8e0]
    // 0x6f4700: r0 = AllocateGrowableArray()
    //     0x6f4700: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f4704: mov             x3, x0
    // 0x6f4708: ldur            x0, [fp, #-0x50]
    // 0x6f470c: stur            x3, [fp, #-0x58]
    // 0x6f4710: StoreField: r3->field_f = r0
    //     0x6f4710: stur            w0, [x3, #0xf]
    // 0x6f4714: r0 = 2
    //     0x6f4714: mov             x0, #2
    // 0x6f4718: StoreField: r3->field_b = r0
    //     0x6f4718: stur            w0, [x3, #0xb]
    // 0x6f471c: r1 = Function '<anonymous closure>':.
    //     0x6f471c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19270] AnonymousClosure: (0x6f42e8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f4720: ldr             x1, [x1, #0x270]
    // 0x6f4724: r2 = Null
    //     0x6f4724: mov             x2, NULL
    // 0x6f4728: r0 = AllocateClosure()
    //     0x6f4728: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f472c: mov             x1, x0
    // 0x6f4730: ldur            x0, [fp, #-8]
    // 0x6f4734: r2 = LoadClassIdInstr(r0)
    //     0x6f4734: ldur            x2, [x0, #-1]
    //     0x6f4738: ubfx            x2, x2, #0xc, #0x14
    // 0x6f473c: r16 = <DropdownMenuItem<String?>>
    //     0x6f473c: add             x16, PP, #0x14, lsl #12  ; [pp+0x148e0] TypeArguments: <DropdownMenuItem<String?>>
    //     0x6f4740: ldr             x16, [x16, #0x8e0]
    // 0x6f4744: stp             x0, x16, [SP, #8]
    // 0x6f4748: str             x1, [SP]
    // 0x6f474c: mov             x0, x2
    // 0x6f4750: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f4750: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f4754: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6f4754: mov             x17, #0xd1d6
    //     0x6f4758: add             lr, x0, x17
    //     0x6f475c: ldr             lr, [x21, lr, lsl #3]
    //     0x6f4760: blr             lr
    // 0x6f4764: ldur            x1, [fp, #-0x58]
    // 0x6f4768: mov             x2, x0
    // 0x6f476c: r0 = addAll()
    //     0x6f476c: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6f4770: ldur            x5, [fp, #-0x58]
    // 0x6f4774: ldur            x0, [fp, #-0x10]
    // 0x6f4778: stur            x5, [fp, #-8]
    // 0x6f477c: LoadField: r1 = r0->field_23
    //     0x6f477c: ldur            w1, [x0, #0x23]
    // 0x6f4780: DecompressPointer r1
    //     0x6f4780: add             x1, x1, HEAP, lsl #32
    // 0x6f4784: cmp             w1, NULL
    // 0x6f4788: b.ne            #0x6f4794
    // 0x6f478c: r6 = Null
    //     0x6f478c: mov             x6, NULL
    // 0x6f4790: b               #0x6f47ac
    // 0x6f4794: ldur            x2, [fp, #-0x18]
    // 0x6f4798: r1 = Function '<anonymous closure>':.
    //     0x6f4798: add             x1, PP, #0x19, lsl #12  ; [pp+0x19278] AnonymousClosure: (0x6f67cc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f479c: ldr             x1, [x1, #0x278]
    // 0x6f47a0: r0 = AllocateClosure()
    //     0x6f47a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f47a4: mov             x6, x0
    // 0x6f47a8: ldur            x0, [fp, #-0x10]
    // 0x6f47ac: ldur            x2, [fp, #-0x40]
    // 0x6f47b0: stur            x6, [fp, #-0x50]
    // 0x6f47b4: r1 = <String?>
    //     0x6f47b4: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f47b8: r0 = DropdownButtonFormField()
    //     0x6f47b8: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f47bc: stur            x0, [fp, #-0x58]
    // 0x6f47c0: r16 = Instance_Color
    //     0x6f47c0: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6f47c4: ldr             x16, [x16, #0x1c0]
    // 0x6f47c8: r30 = Instance_TextStyle
    //     0x6f47c8: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6f47cc: ldr             lr, [lr, #0x158]
    // 0x6f47d0: stp             lr, x16, [SP]
    // 0x6f47d4: mov             x1, x0
    // 0x6f47d8: ldur            x2, [fp, #-0x48]
    // 0x6f47dc: ldur            x3, [fp, #-0x20]
    // 0x6f47e0: ldur            x5, [fp, #-8]
    // 0x6f47e4: ldur            x6, [fp, #-0x50]
    // 0x6f47e8: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x6f47e8: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x6f47ec: ldr             x4, [x4, #0x250]
    // 0x6f47f0: r0 = DropdownButtonFormField()
    //     0x6f47f0: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f47f4: ldur            x1, [fp, #-0x40]
    // 0x6f47f8: ldur            x0, [fp, #-0x58]
    // 0x6f47fc: ArrayStore: r1[2] = r0  ; List_4
    //     0x6f47fc: add             x25, x1, #0x17
    //     0x6f4800: str             w0, [x25]
    //     0x6f4804: tbz             w0, #0, #0x6f4820
    //     0x6f4808: ldurb           w16, [x1, #-1]
    //     0x6f480c: ldurb           w17, [x0, #-1]
    //     0x6f4810: and             x16, x17, x16, lsr #2
    //     0x6f4814: tst             x16, HEAP, lsr #32
    //     0x6f4818: b.eq            #0x6f4820
    //     0x6f481c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f4820: ldur            x0, [fp, #-0x40]
    // 0x6f4824: r16 = Instance_SizedBox
    //     0x6f4824: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f4828: ldr             x16, [x16, #0x220]
    // 0x6f482c: StoreField: r0->field_1b = r16
    //     0x6f482c: stur            w16, [x0, #0x1b]
    // 0x6f4830: ldur            x4, [fp, #-0x10]
    // 0x6f4834: LoadField: r1 = r4->field_1b
    //     0x6f4834: ldur            w1, [x4, #0x1b]
    // 0x6f4838: DecompressPointer r1
    //     0x6f4838: add             x1, x1, HEAP, lsl #32
    // 0x6f483c: r2 = "Oda Numarası *"
    //     0x6f483c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19280] "Oda Numarası *"
    //     0x6f4840: ldr             x2, [x2, #0x280]
    // 0x6f4844: r3 = Instance_IconData
    //     0x6f4844: add             x3, PP, #0x19, lsl #12  ; [pp+0x19288] Obj!IconData@a0a121
    //     0x6f4848: ldr             x3, [x3, #0x288]
    // 0x6f484c: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f484c: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f4850: r0 = buildDialogTextField()
    //     0x6f4850: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x6f4854: ldur            x1, [fp, #-0x40]
    // 0x6f4858: ArrayStore: r1[4] = r0  ; List_4
    //     0x6f4858: add             x25, x1, #0x1f
    //     0x6f485c: str             w0, [x25]
    //     0x6f4860: tbz             w0, #0, #0x6f487c
    //     0x6f4864: ldurb           w16, [x1, #-1]
    //     0x6f4868: ldurb           w17, [x0, #-1]
    //     0x6f486c: and             x16, x17, x16, lsr #2
    //     0x6f4870: tst             x16, HEAP, lsr #32
    //     0x6f4874: b.eq            #0x6f487c
    //     0x6f4878: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f487c: ldur            x0, [fp, #-0x40]
    // 0x6f4880: r16 = Instance_SizedBox
    //     0x6f4880: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f4884: ldr             x16, [x16, #0x220]
    // 0x6f4888: StoreField: r0->field_23 = r16
    //     0x6f4888: stur            w16, [x0, #0x23]
    // 0x6f488c: ldur            x4, [fp, #-0x10]
    // 0x6f4890: LoadField: r1 = r4->field_1f
    //     0x6f4890: ldur            w1, [x4, #0x1f]
    // 0x6f4894: DecompressPointer r1
    //     0x6f4894: add             x1, x1, HEAP, lsl #32
    // 0x6f4898: r16 = Instance_TextInputType
    //     0x6f4898: add             x16, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6f489c: ldr             x16, [x16, #0x948]
    // 0x6f48a0: str             x16, [SP]
    // 0x6f48a4: r2 = "Kapasite"
    //     0x6f48a4: add             x2, PP, #0x19, lsl #12  ; [pp+0x19290] "Kapasite"
    //     0x6f48a8: ldr             x2, [x2, #0x290]
    // 0x6f48ac: r3 = Instance_IconData
    //     0x6f48ac: add             x3, PP, #0x18, lsl #12  ; [pp+0x18ee8] Obj!IconData@a0a141
    //     0x6f48b0: ldr             x3, [x3, #0xee8]
    // 0x6f48b4: r4 = const [0, 0x4, 0x1, 0x3, keyboardType, 0x3, null]
    //     0x6f48b4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14958] List(7) [0, 0x4, 0x1, 0x3, "keyboardType", 0x3, Null]
    //     0x6f48b8: ldr             x4, [x4, #0x958]
    // 0x6f48bc: r0 = buildDialogTextField()
    //     0x6f48bc: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x6f48c0: ldur            x1, [fp, #-0x40]
    // 0x6f48c4: ArrayStore: r1[6] = r0  ; List_4
    //     0x6f48c4: add             x25, x1, #0x27
    //     0x6f48c8: str             w0, [x25]
    //     0x6f48cc: tbz             w0, #0, #0x6f48e8
    //     0x6f48d0: ldurb           w16, [x1, #-1]
    //     0x6f48d4: ldurb           w17, [x0, #-1]
    //     0x6f48d8: and             x16, x17, x16, lsr #2
    //     0x6f48dc: tst             x16, HEAP, lsr #32
    //     0x6f48e0: b.eq            #0x6f48e8
    //     0x6f48e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f48e8: ldur            x0, [fp, #-0x40]
    // 0x6f48ec: r16 = Instance_SizedBox
    //     0x6f48ec: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f48f0: ldr             x16, [x16, #0x220]
    // 0x6f48f4: StoreField: r0->field_2b = r16
    //     0x6f48f4: stur            w16, [x0, #0x2b]
    // 0x6f48f8: ldur            x2, [fp, #-0x10]
    // 0x6f48fc: LoadField: r3 = r2->field_2b
    //     0x6f48fc: ldur            w3, [x2, #0x2b]
    // 0x6f4900: DecompressPointer r3
    //     0x6f4900: add             x3, x3, HEAP, lsl #32
    // 0x6f4904: stur            x3, [fp, #-8]
    // 0x6f4908: r1 = "Oda Cinsiyet Türü *"
    //     0x6f4908: add             x1, PP, #0x19, lsl #12  ; [pp+0x19298] "Oda Cinsiyet Türü *"
    //     0x6f490c: ldr             x1, [x1, #0x298]
    // 0x6f4910: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f4910: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f4914: r0 = buildDropdownDecoration()
    //     0x6f4914: bl              #0x6f4f28  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDropdownDecoration
    // 0x6f4918: ldur            x2, [fp, #-0x18]
    // 0x6f491c: r1 = Function '<anonymous closure>':.
    //     0x6f491c: add             x1, PP, #0x19, lsl #12  ; [pp+0x192a0] AnonymousClosure: (0x6f6740), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f4920: ldr             x1, [x1, #0x2a0]
    // 0x6f4924: stur            x0, [fp, #-0x20]
    // 0x6f4928: r0 = AllocateClosure()
    //     0x6f4928: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f492c: r1 = <String?>
    //     0x6f492c: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6f4930: stur            x0, [fp, #-0x48]
    // 0x6f4934: r0 = DropdownButtonFormField()
    //     0x6f4934: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6f4938: stur            x0, [fp, #-0x50]
    // 0x6f493c: r16 = Instance_Color
    //     0x6f493c: add             x16, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6f4940: ldr             x16, [x16, #0x1c0]
    // 0x6f4944: r30 = Instance_TextStyle
    //     0x6f4944: add             lr, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6f4948: ldr             lr, [lr, #0x158]
    // 0x6f494c: stp             lr, x16, [SP]
    // 0x6f4950: mov             x1, x0
    // 0x6f4954: ldur            x2, [fp, #-0x20]
    // 0x6f4958: ldur            x3, [fp, #-8]
    // 0x6f495c: ldur            x6, [fp, #-0x48]
    // 0x6f4960: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x6f4960: add             x5, PP, #0x19, lsl #12  ; [pp+0x192a8] List<DropdownMenuItem<String?>>(4)
    //     0x6f4964: ldr             x5, [x5, #0x2a8]
    // 0x6f4968: r4 = const [0, 0x7, 0x2, 0x5, dropdownColor, 0x5, style, 0x6, null]
    //     0x6f4968: add             x4, PP, #0x19, lsl #12  ; [pp+0x19250] List(9) [0, 0x7, 0x2, 0x5, "dropdownColor", 0x5, "style", 0x6, Null]
    //     0x6f496c: ldr             x4, [x4, #0x250]
    // 0x6f4970: r0 = DropdownButtonFormField()
    //     0x6f4970: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6f4974: ldur            x1, [fp, #-0x40]
    // 0x6f4978: ldur            x0, [fp, #-0x50]
    // 0x6f497c: ArrayStore: r1[8] = r0  ; List_4
    //     0x6f497c: add             x25, x1, #0x2f
    //     0x6f4980: str             w0, [x25]
    //     0x6f4984: tbz             w0, #0, #0x6f49a0
    //     0x6f4988: ldurb           w16, [x1, #-1]
    //     0x6f498c: ldurb           w17, [x0, #-1]
    //     0x6f4990: and             x16, x17, x16, lsr #2
    //     0x6f4994: tst             x16, HEAP, lsr #32
    //     0x6f4998: b.eq            #0x6f49a0
    //     0x6f499c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f49a0: r1 = <Widget>
    //     0x6f49a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f49a4: r0 = AllocateGrowableArray()
    //     0x6f49a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f49a8: mov             x1, x0
    // 0x6f49ac: ldur            x0, [fp, #-0x40]
    // 0x6f49b0: stur            x1, [fp, #-8]
    // 0x6f49b4: StoreField: r1->field_f = r0
    //     0x6f49b4: stur            w0, [x1, #0xf]
    // 0x6f49b8: r0 = 18
    //     0x6f49b8: mov             x0, #0x12
    // 0x6f49bc: StoreField: r1->field_b = r0
    //     0x6f49bc: stur            w0, [x1, #0xb]
    // 0x6f49c0: r0 = Column()
    //     0x6f49c0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f49c4: mov             x1, x0
    // 0x6f49c8: r0 = Instance_Axis
    //     0x6f49c8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f49cc: stur            x1, [fp, #-0x20]
    // 0x6f49d0: StoreField: r1->field_f = r0
    //     0x6f49d0: stur            w0, [x1, #0xf]
    // 0x6f49d4: r2 = Instance_MainAxisAlignment
    //     0x6f49d4: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f49d8: ldr             x2, [x2, #0x230]
    // 0x6f49dc: StoreField: r1->field_13 = r2
    //     0x6f49dc: stur            w2, [x1, #0x13]
    // 0x6f49e0: r2 = Instance_MainAxisSize
    //     0x6f49e0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6f49e4: ldr             x2, [x2, #0xb60]
    // 0x6f49e8: ArrayStore: r1[0] = r2  ; List_4
    //     0x6f49e8: stur            w2, [x1, #0x17]
    // 0x6f49ec: r2 = Instance_CrossAxisAlignment
    //     0x6f49ec: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f49f0: ldr             x2, [x2, #0x338]
    // 0x6f49f4: StoreField: r1->field_1b = r2
    //     0x6f49f4: stur            w2, [x1, #0x1b]
    // 0x6f49f8: r2 = Instance_VerticalDirection
    //     0x6f49f8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f49fc: ldr             x2, [x2, #0x340]
    // 0x6f4a00: StoreField: r1->field_23 = r2
    //     0x6f4a00: stur            w2, [x1, #0x23]
    // 0x6f4a04: r2 = Instance_Clip
    //     0x6f4a04: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f4a08: ldr             x2, [x2, #0x348]
    // 0x6f4a0c: StoreField: r1->field_2b = r2
    //     0x6f4a0c: stur            w2, [x1, #0x2b]
    // 0x6f4a10: StoreField: r1->field_2f = rZR
    //     0x6f4a10: stur            xzr, [x1, #0x2f]
    // 0x6f4a14: ldur            x2, [fp, #-8]
    // 0x6f4a18: StoreField: r1->field_b = r2
    //     0x6f4a18: stur            w2, [x1, #0xb]
    // 0x6f4a1c: r0 = SingleChildScrollView()
    //     0x6f4a1c: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6f4a20: mov             x3, x0
    // 0x6f4a24: r0 = Instance_Axis
    //     0x6f4a24: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f4a28: stur            x3, [fp, #-8]
    // 0x6f4a2c: StoreField: r3->field_b = r0
    //     0x6f4a2c: stur            w0, [x3, #0xb]
    // 0x6f4a30: r0 = false
    //     0x6f4a30: add             x0, NULL, #0x30  ; false
    // 0x6f4a34: StoreField: r3->field_f = r0
    //     0x6f4a34: stur            w0, [x3, #0xf]
    // 0x6f4a38: ldur            x1, [fp, #-0x20]
    // 0x6f4a3c: StoreField: r3->field_23 = r1
    //     0x6f4a3c: stur            w1, [x3, #0x23]
    // 0x6f4a40: r1 = Instance_DragStartBehavior
    //     0x6f4a40: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f4a44: StoreField: r3->field_27 = r1
    //     0x6f4a44: stur            w1, [x3, #0x27]
    // 0x6f4a48: r1 = Instance_Clip
    //     0x6f4a48: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f4a4c: ldr             x1, [x1, #0x2d8]
    // 0x6f4a50: StoreField: r3->field_2b = r1
    //     0x6f4a50: stur            w1, [x3, #0x2b]
    // 0x6f4a54: r1 = Instance_HitTestBehavior
    //     0x6f4a54: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6f4a58: ldr             x1, [x1, #0xe20]
    // 0x6f4a5c: StoreField: r3->field_2f = r1
    //     0x6f4a5c: stur            w1, [x3, #0x2f]
    // 0x6f4a60: ldur            x2, [fp, #-0x18]
    // 0x6f4a64: r1 = Function '<anonymous closure>':.
    //     0x6f4a64: add             x1, PP, #0x19, lsl #12  ; [pp+0x192b0] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x6f4a68: ldr             x1, [x1, #0x2b0]
    // 0x6f4a6c: r0 = AllocateClosure()
    //     0x6f4a6c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f4a70: stur            x0, [fp, #-0x20]
    // 0x6f4a74: r0 = TextButton()
    //     0x6f4a74: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6f4a78: mov             x3, x0
    // 0x6f4a7c: ldur            x0, [fp, #-0x20]
    // 0x6f4a80: stur            x3, [fp, #-0x40]
    // 0x6f4a84: StoreField: r3->field_b = r0
    //     0x6f4a84: stur            w0, [x3, #0xb]
    // 0x6f4a88: r0 = false
    //     0x6f4a88: add             x0, NULL, #0x30  ; false
    // 0x6f4a8c: StoreField: r3->field_27 = r0
    //     0x6f4a8c: stur            w0, [x3, #0x27]
    // 0x6f4a90: r4 = true
    //     0x6f4a90: add             x4, NULL, #0x20  ; true
    // 0x6f4a94: StoreField: r3->field_2f = r4
    //     0x6f4a94: stur            w4, [x3, #0x2f]
    // 0x6f4a98: r1 = Instance_Text
    //     0x6f4a98: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x6f4a9c: ldr             x1, [x1, #0x198]
    // 0x6f4aa0: StoreField: r3->field_37 = r1
    //     0x6f4aa0: stur            w1, [x3, #0x37]
    // 0x6f4aa4: ldur            x5, [fp, #-0x10]
    // 0x6f4aa8: LoadField: r1 = r5->field_2f
    //     0x6f4aa8: ldur            w1, [x5, #0x2f]
    // 0x6f4aac: DecompressPointer r1
    //     0x6f4aac: add             x1, x1, HEAP, lsl #32
    // 0x6f4ab0: tbnz            w1, #4, #0x6f4ac0
    // 0x6f4ab4: mov             x0, x5
    // 0x6f4ab8: r1 = Null
    //     0x6f4ab8: mov             x1, NULL
    // 0x6f4abc: b               #0x6f4ad8
    // 0x6f4ac0: ldur            x2, [fp, #-0x18]
    // 0x6f4ac4: r1 = Function '<anonymous closure>':.
    //     0x6f4ac4: add             x1, PP, #0x19, lsl #12  ; [pp+0x192b8] AnonymousClosure: (0x6f511c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f4ac8: ldr             x1, [x1, #0x2b8]
    // 0x6f4acc: r0 = AllocateClosure()
    //     0x6f4acc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f4ad0: mov             x1, x0
    // 0x6f4ad4: ldur            x0, [fp, #-0x10]
    // 0x6f4ad8: stur            x1, [fp, #-0x18]
    // 0x6f4adc: r16 = Instance_Color
    //     0x6f4adc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6f4ae0: ldr             x16, [x16, #0xf30]
    // 0x6f4ae4: r30 = Instance_Color
    //     0x6f4ae4: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f4ae8: stp             lr, x16, [SP]
    // 0x6f4aec: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6f4aec: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6f4af0: ldr             x4, [x4, #0x1a8]
    // 0x6f4af4: r0 = styleFrom()
    //     0x6f4af4: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6f4af8: mov             x1, x0
    // 0x6f4afc: ldur            x0, [fp, #-0x10]
    // 0x6f4b00: stur            x1, [fp, #-0x20]
    // 0x6f4b04: LoadField: r2 = r0->field_2f
    //     0x6f4b04: ldur            w2, [x0, #0x2f]
    // 0x6f4b08: DecompressPointer r2
    //     0x6f4b08: add             x2, x2, HEAP, lsl #32
    // 0x6f4b0c: tbnz            w2, #4, #0x6f4b20
    // 0x6f4b10: mov             x0, x1
    // 0x6f4b14: r6 = Instance_SizedBox
    //     0x6f4b14: add             x6, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x6f4b18: ldr             x6, [x6, #0x1b0]
    // 0x6f4b1c: b               #0x6f4b58
    // 0x6f4b20: ldur            x0, [fp, #-0x28]
    // 0x6f4b24: tbnz            w0, #4, #0x6f4b34
    // 0x6f4b28: r0 = "Güncelle"
    //     0x6f4b28: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6f4b2c: ldr             x0, [x0, #0xb48]
    // 0x6f4b30: b               #0x6f4b3c
    // 0x6f4b34: r0 = "Ekle"
    //     0x6f4b34: add             x0, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x6f4b38: ldr             x0, [x0, #0x1b8]
    // 0x6f4b3c: stur            x0, [fp, #-0x10]
    // 0x6f4b40: r0 = Text()
    //     0x6f4b40: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f4b44: mov             x1, x0
    // 0x6f4b48: ldur            x0, [fp, #-0x10]
    // 0x6f4b4c: StoreField: r1->field_b = r0
    //     0x6f4b4c: stur            w0, [x1, #0xb]
    // 0x6f4b50: mov             x6, x1
    // 0x6f4b54: ldur            x0, [fp, #-0x20]
    // 0x6f4b58: ldur            x5, [fp, #-0x30]
    // 0x6f4b5c: ldur            x4, [fp, #-0x38]
    // 0x6f4b60: ldur            x3, [fp, #-8]
    // 0x6f4b64: ldur            x2, [fp, #-0x40]
    // 0x6f4b68: ldur            x1, [fp, #-0x18]
    // 0x6f4b6c: stur            x6, [fp, #-0x10]
    // 0x6f4b70: r0 = ElevatedButton()
    //     0x6f4b70: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6f4b74: mov             x3, x0
    // 0x6f4b78: ldur            x0, [fp, #-0x18]
    // 0x6f4b7c: stur            x3, [fp, #-0x28]
    // 0x6f4b80: StoreField: r3->field_b = r0
    //     0x6f4b80: stur            w0, [x3, #0xb]
    // 0x6f4b84: ldur            x0, [fp, #-0x20]
    // 0x6f4b88: StoreField: r3->field_1b = r0
    //     0x6f4b88: stur            w0, [x3, #0x1b]
    // 0x6f4b8c: r0 = false
    //     0x6f4b8c: add             x0, NULL, #0x30  ; false
    // 0x6f4b90: StoreField: r3->field_27 = r0
    //     0x6f4b90: stur            w0, [x3, #0x27]
    // 0x6f4b94: r1 = true
    //     0x6f4b94: add             x1, NULL, #0x20  ; true
    // 0x6f4b98: StoreField: r3->field_2f = r1
    //     0x6f4b98: stur            w1, [x3, #0x2f]
    // 0x6f4b9c: ldur            x1, [fp, #-0x10]
    // 0x6f4ba0: StoreField: r3->field_37 = r1
    //     0x6f4ba0: stur            w1, [x3, #0x37]
    // 0x6f4ba4: r1 = Null
    //     0x6f4ba4: mov             x1, NULL
    // 0x6f4ba8: r2 = 4
    //     0x6f4ba8: mov             x2, #4
    // 0x6f4bac: r0 = AllocateArray()
    //     0x6f4bac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f4bb0: mov             x2, x0
    // 0x6f4bb4: ldur            x0, [fp, #-0x40]
    // 0x6f4bb8: stur            x2, [fp, #-0x10]
    // 0x6f4bbc: StoreField: r2->field_f = r0
    //     0x6f4bbc: stur            w0, [x2, #0xf]
    // 0x6f4bc0: ldur            x0, [fp, #-0x28]
    // 0x6f4bc4: StoreField: r2->field_13 = r0
    //     0x6f4bc4: stur            w0, [x2, #0x13]
    // 0x6f4bc8: r1 = <Widget>
    //     0x6f4bc8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f4bcc: r0 = AllocateGrowableArray()
    //     0x6f4bcc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f4bd0: mov             x1, x0
    // 0x6f4bd4: ldur            x0, [fp, #-0x10]
    // 0x6f4bd8: stur            x1, [fp, #-0x18]
    // 0x6f4bdc: StoreField: r1->field_f = r0
    //     0x6f4bdc: stur            w0, [x1, #0xf]
    // 0x6f4be0: r0 = 4
    //     0x6f4be0: mov             x0, #4
    // 0x6f4be4: StoreField: r1->field_b = r0
    //     0x6f4be4: stur            w0, [x1, #0xb]
    // 0x6f4be8: r0 = AlertDialog()
    //     0x6f4be8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6f4bec: ldur            x1, [fp, #-0x38]
    // 0x6f4bf0: StoreField: r0->field_f = r1
    //     0x6f4bf0: stur            w1, [x0, #0xf]
    // 0x6f4bf4: ldur            x1, [fp, #-8]
    // 0x6f4bf8: StoreField: r0->field_1b = r1
    //     0x6f4bf8: stur            w1, [x0, #0x1b]
    // 0x6f4bfc: ldur            x1, [fp, #-0x18]
    // 0x6f4c00: StoreField: r0->field_27 = r1
    //     0x6f4c00: stur            w1, [x0, #0x27]
    // 0x6f4c04: r1 = Instance_Color
    //     0x6f4c04: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6f4c08: ldr             x1, [x1, #0x1c0]
    // 0x6f4c0c: StoreField: r0->field_43 = r1
    //     0x6f4c0c: stur            w1, [x0, #0x43]
    // 0x6f4c10: ldur            x1, [fp, #-0x30]
    // 0x6f4c14: StoreField: r0->field_5f = r1
    //     0x6f4c14: stur            w1, [x0, #0x5f]
    // 0x6f4c18: r1 = false
    //     0x6f4c18: add             x1, NULL, #0x30  ; false
    // 0x6f4c1c: StoreField: r0->field_6b = r1
    //     0x6f4c1c: stur            w1, [x0, #0x6b]
    // 0x6f4c20: LeaveFrame
    //     0x6f4c20: mov             SP, fp
    //     0x6f4c24: ldp             fp, lr, [SP], #0x10
    // 0x6f4c28: ret
    //     0x6f4c28: ret             
    // 0x6f4c2c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f4c2c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f4c30: b               #0x6f4384
    // 0x6f4c34: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f4c34: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f4c38: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f4c38: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6f511c, size: 0x708
    // 0x6f511c: EnterFrame
    //     0x6f511c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f5120: mov             fp, SP
    // 0x6f5124: AllocStack(0xa8)
    //     0x6f5124: sub             SP, SP, #0xa8
    // 0x6f5128: SetupParameters(RoomsTabState this /* r1 */)
    //     0x6f5128: stur            NULL, [fp, #-8]
    //     0x6f512c: mov             x0, #0
    //     0x6f5130: add             x1, fp, w0, sxtw #2
    //     0x6f5134: ldr             x1, [x1, #0x10]
    //     0x6f5138: ldur            w2, [x1, #0x17]
    //     0x6f513c: add             x2, x2, HEAP, lsl #32
    //     0x6f5140: stur            x2, [fp, #-0x68]
    // 0x6f5144: CheckStackOverflow
    //     0x6f5144: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f5148: cmp             SP, x16
    //     0x6f514c: b.ls            #0x6f5814
    // 0x6f5150: InitAsync() -> Future<void?>
    //     0x6f5150: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f5154: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f5158: ldur            x2, [fp, #-0x68]
    // 0x6f515c: LoadField: r0 = r2->field_b
    //     0x6f515c: ldur            w0, [x2, #0xb]
    // 0x6f5160: DecompressPointer r0
    //     0x6f5160: add             x0, x0, HEAP, lsl #32
    // 0x6f5164: stur            x0, [fp, #-0x80]
    // 0x6f5168: LoadField: r3 = r0->field_b
    //     0x6f5168: ldur            w3, [x0, #0xb]
    // 0x6f516c: DecompressPointer r3
    //     0x6f516c: add             x3, x3, HEAP, lsl #32
    // 0x6f5170: stur            x3, [fp, #-0x78]
    // 0x6f5174: LoadField: r1 = r3->field_23
    //     0x6f5174: ldur            w1, [x3, #0x23]
    // 0x6f5178: DecompressPointer r1
    //     0x6f5178: add             x1, x1, HEAP, lsl #32
    // 0x6f517c: cmp             w1, NULL
    // 0x6f5180: b.ne            #0x6f51a8
    // 0x6f5184: LoadField: r1 = r2->field_f
    //     0x6f5184: ldur            w1, [x2, #0xf]
    // 0x6f5188: DecompressPointer r1
    //     0x6f5188: add             x1, x1, HEAP, lsl #32
    // 0x6f518c: r0 = of()
    //     0x6f518c: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6f5190: mov             x1, x0
    // 0x6f5194: r2 = Instance_SnackBar
    //     0x6f5194: add             x2, PP, #0x19, lsl #12  ; [pp+0x192c0] Obj!SnackBar@a204b1
    //     0x6f5198: ldr             x2, [x2, #0x2c0]
    // 0x6f519c: r0 = showSnackBar()
    //     0x6f519c: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6f51a0: r0 = Null
    //     0x6f51a0: mov             x0, NULL
    // 0x6f51a4: r0 = ReturnAsyncNotFuture()
    //     0x6f51a4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f51a8: LoadField: r1 = r3->field_2b
    //     0x6f51a8: ldur            w1, [x3, #0x2b]
    // 0x6f51ac: DecompressPointer r1
    //     0x6f51ac: add             x1, x1, HEAP, lsl #32
    // 0x6f51b0: cmp             w1, NULL
    // 0x6f51b4: b.ne            #0x6f51dc
    // 0x6f51b8: LoadField: r1 = r2->field_f
    //     0x6f51b8: ldur            w1, [x2, #0xf]
    // 0x6f51bc: DecompressPointer r1
    //     0x6f51bc: add             x1, x1, HEAP, lsl #32
    // 0x6f51c0: r0 = of()
    //     0x6f51c0: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6f51c4: mov             x1, x0
    // 0x6f51c8: r2 = Instance_SnackBar
    //     0x6f51c8: add             x2, PP, #0x19, lsl #12  ; [pp+0x192c8] Obj!SnackBar@a20451
    //     0x6f51cc: ldr             x2, [x2, #0x2c8]
    // 0x6f51d0: r0 = showSnackBar()
    //     0x6f51d0: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6f51d4: r0 = Null
    //     0x6f51d4: mov             x0, NULL
    // 0x6f51d8: r0 = ReturnAsyncNotFuture()
    //     0x6f51d8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f51dc: LoadField: r4 = r3->field_1b
    //     0x6f51dc: ldur            w4, [x3, #0x1b]
    // 0x6f51e0: DecompressPointer r4
    //     0x6f51e0: add             x4, x4, HEAP, lsl #32
    // 0x6f51e4: stur            x4, [fp, #-0x70]
    // 0x6f51e8: LoadField: r1 = r4->field_27
    //     0x6f51e8: ldur            w1, [x4, #0x27]
    // 0x6f51ec: DecompressPointer r1
    //     0x6f51ec: add             x1, x1, HEAP, lsl #32
    // 0x6f51f0: LoadField: r5 = r1->field_7
    //     0x6f51f0: ldur            w5, [x1, #7]
    // 0x6f51f4: DecompressPointer r5
    //     0x6f51f4: add             x5, x5, HEAP, lsl #32
    // 0x6f51f8: mov             x1, x5
    // 0x6f51fc: r0 = trim()
    //     0x6f51fc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f5200: LoadField: r1 = r0->field_7
    //     0x6f5200: ldur            w1, [x0, #7]
    // 0x6f5204: cbz             w1, #0x6f521c
    // 0x6f5208: ldur            x0, [fp, #-0x78]
    // 0x6f520c: LoadField: r1 = r0->field_27
    //     0x6f520c: ldur            w1, [x0, #0x27]
    // 0x6f5210: DecompressPointer r1
    //     0x6f5210: add             x1, x1, HEAP, lsl #32
    // 0x6f5214: cmp             w1, NULL
    // 0x6f5218: b.ne            #0x6f5244
    // 0x6f521c: ldur            x3, [fp, #-0x68]
    // 0x6f5220: LoadField: r1 = r3->field_f
    //     0x6f5220: ldur            w1, [x3, #0xf]
    // 0x6f5224: DecompressPointer r1
    //     0x6f5224: add             x1, x1, HEAP, lsl #32
    // 0x6f5228: r0 = of()
    //     0x6f5228: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6f522c: mov             x1, x0
    // 0x6f5230: r2 = Instance_SnackBar
    //     0x6f5230: add             x2, PP, #0x19, lsl #12  ; [pp+0x192d0] Obj!SnackBar@a203f1
    //     0x6f5234: ldr             x2, [x2, #0x2d0]
    // 0x6f5238: r0 = showSnackBar()
    //     0x6f5238: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6f523c: r0 = Null
    //     0x6f523c: mov             x0, NULL
    // 0x6f5240: r0 = ReturnAsyncNotFuture()
    //     0x6f5240: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f5244: ldur            x3, [fp, #-0x68]
    // 0x6f5248: LoadField: r4 = r3->field_13
    //     0x6f5248: ldur            w4, [x3, #0x13]
    // 0x6f524c: DecompressPointer r4
    //     0x6f524c: add             x4, x4, HEAP, lsl #32
    // 0x6f5250: mov             x2, x3
    // 0x6f5254: stur            x4, [fp, #-0x88]
    // 0x6f5258: r1 = Function '<anonymous closure>':.
    //     0x6f5258: add             x1, PP, #0x19, lsl #12  ; [pp+0x192d8] AnonymousClosure: (0x6f58e0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f525c: ldr             x1, [x1, #0x2d8]
    // 0x6f5260: r0 = AllocateClosure()
    //     0x6f5260: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f5264: ldur            x16, [fp, #-0x88]
    // 0x6f5268: stp             x0, x16, [SP]
    // 0x6f526c: ldur            x0, [fp, #-0x88]
    // 0x6f5270: ClosureCall
    //     0x6f5270: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6f5274: ldur            x2, [x0, #0x1f]
    //     0x6f5278: blr             x2
    // 0x6f527c: ldur            x0, [fp, #-0x78]
    // 0x6f5280: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f5280: ldur            w1, [x0, #0x17]
    // 0x6f5284: DecompressPointer r1
    //     0x6f5284: add             x1, x1, HEAP, lsl #32
    // 0x6f5288: tbnz            w1, #4, #0x6f54b4
    // 0x6f528c: ldur            x3, [fp, #-0x70]
    // 0x6f5290: LoadField: r1 = r0->field_f
    //     0x6f5290: ldur            w1, [x0, #0xf]
    // 0x6f5294: DecompressPointer r1
    //     0x6f5294: add             x1, x1, HEAP, lsl #32
    // 0x6f5298: LoadField: r2 = r1->field_b
    //     0x6f5298: ldur            w2, [x1, #0xb]
    // 0x6f529c: DecompressPointer r2
    //     0x6f529c: add             x2, x2, HEAP, lsl #32
    // 0x6f52a0: cmp             w2, NULL
    // 0x6f52a4: b.eq            #0x6f581c
    // 0x6f52a8: LoadField: r1 = r2->field_1f
    //     0x6f52a8: ldur            w1, [x2, #0x1f]
    // 0x6f52ac: DecompressPointer r1
    //     0x6f52ac: add             x1, x1, HEAP, lsl #32
    // 0x6f52b0: LoadField: r2 = r1->field_7
    //     0x6f52b0: ldur            w2, [x1, #7]
    // 0x6f52b4: DecompressPointer r2
    //     0x6f52b4: add             x2, x2, HEAP, lsl #32
    // 0x6f52b8: mov             x1, x2
    // 0x6f52bc: r2 = "rooms"
    //     0x6f52bc: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x6f52c0: ldr             x2, [x2, #0x60]
    // 0x6f52c4: r0 = collection()
    //     0x6f52c4: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6f52c8: mov             x1, x0
    // 0x6f52cc: ldur            x0, [fp, #-0x78]
    // 0x6f52d0: LoadField: r2 = r0->field_13
    //     0x6f52d0: ldur            w2, [x0, #0x13]
    // 0x6f52d4: DecompressPointer r2
    //     0x6f52d4: add             x2, x2, HEAP, lsl #32
    // 0x6f52d8: cmp             w2, NULL
    // 0x6f52dc: b.eq            #0x6f5820
    // 0x6f52e0: LoadField: r3 = r2->field_7
    //     0x6f52e0: ldur            w3, [x2, #7]
    // 0x6f52e4: DecompressPointer r3
    //     0x6f52e4: add             x3, x3, HEAP, lsl #32
    // 0x6f52e8: str             x3, [SP]
    // 0x6f52ec: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6f52ec: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6f52f0: r0 = doc()
    //     0x6f52f0: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6f52f4: r1 = Null
    //     0x6f52f4: mov             x1, NULL
    // 0x6f52f8: r2 = 20
    //     0x6f52f8: mov             x2, #0x14
    // 0x6f52fc: stur            x0, [fp, #-0x88]
    // 0x6f5300: r0 = AllocateArray()
    //     0x6f5300: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f5304: stur            x0, [fp, #-0x90]
    // 0x6f5308: r16 = "hotel_id"
    //     0x6f5308: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x6f530c: ldr             x16, [x16, #0xfd0]
    // 0x6f5310: StoreField: r0->field_f = r16
    //     0x6f5310: stur            w16, [x0, #0xf]
    // 0x6f5314: ldur            x2, [fp, #-0x78]
    // 0x6f5318: LoadField: r1 = r2->field_27
    //     0x6f5318: ldur            w1, [x2, #0x27]
    // 0x6f531c: DecompressPointer r1
    //     0x6f531c: add             x1, x1, HEAP, lsl #32
    // 0x6f5320: StoreField: r0->field_13 = r1
    //     0x6f5320: stur            w1, [x0, #0x13]
    // 0x6f5324: r16 = "room_number"
    //     0x6f5324: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x6f5328: ldr             x16, [x16, #0xfb0]
    // 0x6f532c: ArrayStore: r0[0] = r16  ; List_4
    //     0x6f532c: stur            w16, [x0, #0x17]
    // 0x6f5330: ldur            x3, [fp, #-0x70]
    // 0x6f5334: LoadField: r1 = r3->field_27
    //     0x6f5334: ldur            w1, [x3, #0x27]
    // 0x6f5338: DecompressPointer r1
    //     0x6f5338: add             x1, x1, HEAP, lsl #32
    // 0x6f533c: LoadField: r3 = r1->field_7
    //     0x6f533c: ldur            w3, [x1, #7]
    // 0x6f5340: DecompressPointer r3
    //     0x6f5340: add             x3, x3, HEAP, lsl #32
    // 0x6f5344: mov             x1, x3
    // 0x6f5348: r0 = trim()
    //     0x6f5348: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f534c: ldur            x1, [fp, #-0x90]
    // 0x6f5350: ArrayStore: r1[3] = r0  ; List_4
    //     0x6f5350: add             x25, x1, #0x1b
    //     0x6f5354: str             w0, [x25]
    //     0x6f5358: tbz             w0, #0, #0x6f5374
    //     0x6f535c: ldurb           w16, [x1, #-1]
    //     0x6f5360: ldurb           w17, [x0, #-1]
    //     0x6f5364: and             x16, x17, x16, lsr #2
    //     0x6f5368: tst             x16, HEAP, lsr #32
    //     0x6f536c: b.eq            #0x6f5374
    //     0x6f5370: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f5374: ldur            x0, [fp, #-0x90]
    // 0x6f5378: r16 = "capacity"
    //     0x6f5378: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x6f537c: ldr             x16, [x16, #0x988]
    // 0x6f5380: StoreField: r0->field_1f = r16
    //     0x6f5380: stur            w16, [x0, #0x1f]
    // 0x6f5384: ldur            x2, [fp, #-0x78]
    // 0x6f5388: LoadField: r1 = r2->field_1f
    //     0x6f5388: ldur            w1, [x2, #0x1f]
    // 0x6f538c: DecompressPointer r1
    //     0x6f538c: add             x1, x1, HEAP, lsl #32
    // 0x6f5390: LoadField: r3 = r1->field_27
    //     0x6f5390: ldur            w3, [x1, #0x27]
    // 0x6f5394: DecompressPointer r3
    //     0x6f5394: add             x3, x3, HEAP, lsl #32
    // 0x6f5398: LoadField: r1 = r3->field_7
    //     0x6f5398: ldur            w1, [x3, #7]
    // 0x6f539c: DecompressPointer r1
    //     0x6f539c: add             x1, x1, HEAP, lsl #32
    // 0x6f53a0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f53a0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f53a4: r0 = tryParse()
    //     0x6f53a4: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x6f53a8: cmp             w0, NULL
    // 0x6f53ac: b.ne            #0x6f53b8
    // 0x6f53b0: r4 = 4
    //     0x6f53b0: mov             x4, #4
    // 0x6f53b4: b               #0x6f53c8
    // 0x6f53b8: r1 = LoadInt32Instr(r0)
    //     0x6f53b8: sbfx            x1, x0, #1, #0x1f
    //     0x6f53bc: tbz             w0, #0, #0x6f53c4
    //     0x6f53c0: ldur            x1, [x0, #7]
    // 0x6f53c4: mov             x4, x1
    // 0x6f53c8: ldur            x3, [fp, #-0x78]
    // 0x6f53cc: ldur            x2, [fp, #-0x90]
    // 0x6f53d0: stur            x4, [fp, #-0x98]
    // 0x6f53d4: r0 = BoxInt64Instr(r4)
    //     0x6f53d4: sbfiz           x0, x4, #1, #0x1f
    //     0x6f53d8: cmp             x4, x0, asr #1
    //     0x6f53dc: b.eq            #0x6f53e8
    //     0x6f53e0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f53e4: stur            x4, [x0, #7]
    // 0x6f53e8: mov             x1, x2
    // 0x6f53ec: ArrayStore: r1[5] = r0  ; List_4
    //     0x6f53ec: add             x25, x1, #0x23
    //     0x6f53f0: str             w0, [x25]
    //     0x6f53f4: tbz             w0, #0, #0x6f5410
    //     0x6f53f8: ldurb           w16, [x1, #-1]
    //     0x6f53fc: ldurb           w17, [x0, #-1]
    //     0x6f5400: and             x16, x17, x16, lsr #2
    //     0x6f5404: tst             x16, HEAP, lsr #32
    //     0x6f5408: b.eq            #0x6f5410
    //     0x6f540c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f5410: r16 = "gender"
    //     0x6f5410: add             x16, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x6f5414: ldr             x16, [x16, #8]
    // 0x6f5418: StoreField: r2->field_27 = r16
    //     0x6f5418: stur            w16, [x2, #0x27]
    // 0x6f541c: LoadField: r0 = r3->field_2b
    //     0x6f541c: ldur            w0, [x3, #0x2b]
    // 0x6f5420: DecompressPointer r0
    //     0x6f5420: add             x0, x0, HEAP, lsl #32
    // 0x6f5424: mov             x1, x2
    // 0x6f5428: ArrayStore: r1[7] = r0  ; List_4
    //     0x6f5428: add             x25, x1, #0x2b
    //     0x6f542c: str             w0, [x25]
    //     0x6f5430: tbz             w0, #0, #0x6f544c
    //     0x6f5434: ldurb           w16, [x1, #-1]
    //     0x6f5438: ldurb           w17, [x0, #-1]
    //     0x6f543c: and             x16, x17, x16, lsr #2
    //     0x6f5440: tst             x16, HEAP, lsr #32
    //     0x6f5444: b.eq            #0x6f544c
    //     0x6f5448: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f544c: r16 = "updated_at"
    //     0x6f544c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6f5450: ldr             x16, [x16, #0x58]
    // 0x6f5454: StoreField: r2->field_2f = r16
    //     0x6f5454: stur            w16, [x2, #0x2f]
    // 0x6f5458: r0 = serverTimestamp()
    //     0x6f5458: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f545c: ldur            x1, [fp, #-0x90]
    // 0x6f5460: ArrayStore: r1[9] = r0  ; List_4
    //     0x6f5460: add             x25, x1, #0x33
    //     0x6f5464: str             w0, [x25]
    //     0x6f5468: tbz             w0, #0, #0x6f5484
    //     0x6f546c: ldurb           w16, [x1, #-1]
    //     0x6f5470: ldurb           w17, [x0, #-1]
    //     0x6f5474: and             x16, x17, x16, lsr #2
    //     0x6f5478: tst             x16, HEAP, lsr #32
    //     0x6f547c: b.eq            #0x6f5484
    //     0x6f5480: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f5484: r16 = <Object, Object?>
    //     0x6f5484: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x6f5488: ldr             x16, [x16, #0x828]
    // 0x6f548c: ldur            lr, [fp, #-0x90]
    // 0x6f5490: stp             lr, x16, [SP]
    // 0x6f5494: r0 = Map._fromLiteral()
    //     0x6f5494: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f5498: ldur            x1, [fp, #-0x88]
    // 0x6f549c: mov             x2, x0
    // 0x6f54a0: r0 = update()
    //     0x6f54a0: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x6f54a4: mov             x1, x0
    // 0x6f54a8: stur            x1, [fp, #-0x88]
    // 0x6f54ac: r0 = Await()
    //     0x6f54ac: bl              #0x3dd188  ; AwaitStub
    // 0x6f54b0: b               #0x6f5718
    // 0x6f54b4: ldur            x3, [fp, #-0x70]
    // 0x6f54b8: LoadField: r1 = r0->field_f
    //     0x6f54b8: ldur            w1, [x0, #0xf]
    // 0x6f54bc: DecompressPointer r1
    //     0x6f54bc: add             x1, x1, HEAP, lsl #32
    // 0x6f54c0: r0 = firestoreService()
    //     0x6f54c0: bl              #0x6f58b8  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::firestoreService
    // 0x6f54c4: LoadField: r1 = r0->field_7
    //     0x6f54c4: ldur            w1, [x0, #7]
    // 0x6f54c8: DecompressPointer r1
    //     0x6f54c8: add             x1, x1, HEAP, lsl #32
    // 0x6f54cc: r2 = "rooms"
    //     0x6f54cc: add             x2, PP, #0x19, lsl #12  ; [pp+0x19060] "rooms"
    //     0x6f54d0: ldr             x2, [x2, #0x60]
    // 0x6f54d4: r0 = collection()
    //     0x6f54d4: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6f54d8: r1 = Null
    //     0x6f54d8: mov             x1, NULL
    // 0x6f54dc: r2 = 28
    //     0x6f54dc: mov             x2, #0x1c
    // 0x6f54e0: stur            x0, [fp, #-0x88]
    // 0x6f54e4: r0 = AllocateArray()
    //     0x6f54e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f54e8: stur            x0, [fp, #-0x90]
    // 0x6f54ec: r16 = "hotel_id"
    //     0x6f54ec: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fd0] "hotel_id"
    //     0x6f54f0: ldr             x16, [x16, #0xfd0]
    // 0x6f54f4: StoreField: r0->field_f = r16
    //     0x6f54f4: stur            w16, [x0, #0xf]
    // 0x6f54f8: ldur            x2, [fp, #-0x78]
    // 0x6f54fc: LoadField: r1 = r2->field_27
    //     0x6f54fc: ldur            w1, [x2, #0x27]
    // 0x6f5500: DecompressPointer r1
    //     0x6f5500: add             x1, x1, HEAP, lsl #32
    // 0x6f5504: StoreField: r0->field_13 = r1
    //     0x6f5504: stur            w1, [x0, #0x13]
    // 0x6f5508: r16 = "room_number"
    //     0x6f5508: add             x16, PP, #0x18, lsl #12  ; [pp+0x18fb0] "room_number"
    //     0x6f550c: ldr             x16, [x16, #0xfb0]
    // 0x6f5510: ArrayStore: r0[0] = r16  ; List_4
    //     0x6f5510: stur            w16, [x0, #0x17]
    // 0x6f5514: ldur            x1, [fp, #-0x70]
    // 0x6f5518: LoadField: r3 = r1->field_27
    //     0x6f5518: ldur            w3, [x1, #0x27]
    // 0x6f551c: DecompressPointer r3
    //     0x6f551c: add             x3, x3, HEAP, lsl #32
    // 0x6f5520: LoadField: r1 = r3->field_7
    //     0x6f5520: ldur            w1, [x3, #7]
    // 0x6f5524: DecompressPointer r1
    //     0x6f5524: add             x1, x1, HEAP, lsl #32
    // 0x6f5528: r0 = trim()
    //     0x6f5528: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f552c: ldur            x1, [fp, #-0x90]
    // 0x6f5530: ArrayStore: r1[3] = r0  ; List_4
    //     0x6f5530: add             x25, x1, #0x1b
    //     0x6f5534: str             w0, [x25]
    //     0x6f5538: tbz             w0, #0, #0x6f5554
    //     0x6f553c: ldurb           w16, [x1, #-1]
    //     0x6f5540: ldurb           w17, [x0, #-1]
    //     0x6f5544: and             x16, x17, x16, lsr #2
    //     0x6f5548: tst             x16, HEAP, lsr #32
    //     0x6f554c: b.eq            #0x6f5554
    //     0x6f5550: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f5554: ldur            x0, [fp, #-0x90]
    // 0x6f5558: r16 = "capacity"
    //     0x6f5558: add             x16, PP, #0x14, lsl #12  ; [pp+0x14988] "capacity"
    //     0x6f555c: ldr             x16, [x16, #0x988]
    // 0x6f5560: StoreField: r0->field_1f = r16
    //     0x6f5560: stur            w16, [x0, #0x1f]
    // 0x6f5564: ldur            x2, [fp, #-0x78]
    // 0x6f5568: LoadField: r1 = r2->field_1f
    //     0x6f5568: ldur            w1, [x2, #0x1f]
    // 0x6f556c: DecompressPointer r1
    //     0x6f556c: add             x1, x1, HEAP, lsl #32
    // 0x6f5570: LoadField: r3 = r1->field_27
    //     0x6f5570: ldur            w3, [x1, #0x27]
    // 0x6f5574: DecompressPointer r3
    //     0x6f5574: add             x3, x3, HEAP, lsl #32
    // 0x6f5578: LoadField: r1 = r3->field_7
    //     0x6f5578: ldur            w1, [x3, #7]
    // 0x6f557c: DecompressPointer r1
    //     0x6f557c: add             x1, x1, HEAP, lsl #32
    // 0x6f5580: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6f5580: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6f5584: r0 = tryParse()
    //     0x6f5584: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x6f5588: cmp             w0, NULL
    // 0x6f558c: b.ne            #0x6f5598
    // 0x6f5590: r4 = 4
    //     0x6f5590: mov             x4, #4
    // 0x6f5594: b               #0x6f55a8
    // 0x6f5598: r1 = LoadInt32Instr(r0)
    //     0x6f5598: sbfx            x1, x0, #1, #0x1f
    //     0x6f559c: tbz             w0, #0, #0x6f55a4
    //     0x6f55a0: ldur            x1, [x0, #7]
    // 0x6f55a4: mov             x4, x1
    // 0x6f55a8: ldur            x3, [fp, #-0x78]
    // 0x6f55ac: ldur            x2, [fp, #-0x90]
    // 0x6f55b0: stur            x4, [fp, #-0x98]
    // 0x6f55b4: r0 = BoxInt64Instr(r4)
    //     0x6f55b4: sbfiz           x0, x4, #1, #0x1f
    //     0x6f55b8: cmp             x4, x0, asr #1
    //     0x6f55bc: b.eq            #0x6f55c8
    //     0x6f55c0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f55c4: stur            x4, [x0, #7]
    // 0x6f55c8: mov             x1, x2
    // 0x6f55cc: ArrayStore: r1[5] = r0  ; List_4
    //     0x6f55cc: add             x25, x1, #0x23
    //     0x6f55d0: str             w0, [x25]
    //     0x6f55d4: tbz             w0, #0, #0x6f55f0
    //     0x6f55d8: ldurb           w16, [x1, #-1]
    //     0x6f55dc: ldurb           w17, [x0, #-1]
    //     0x6f55e0: and             x16, x17, x16, lsr #2
    //     0x6f55e4: tst             x16, HEAP, lsr #32
    //     0x6f55e8: b.eq            #0x6f55f0
    //     0x6f55ec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f55f0: r16 = "gender"
    //     0x6f55f0: add             x16, PP, #0x19, lsl #12  ; [pp+0x19008] "gender"
    //     0x6f55f4: ldr             x16, [x16, #8]
    // 0x6f55f8: StoreField: r2->field_27 = r16
    //     0x6f55f8: stur            w16, [x2, #0x27]
    // 0x6f55fc: LoadField: r0 = r3->field_2b
    //     0x6f55fc: ldur            w0, [x3, #0x2b]
    // 0x6f5600: DecompressPointer r0
    //     0x6f5600: add             x0, x0, HEAP, lsl #32
    // 0x6f5604: mov             x1, x2
    // 0x6f5608: ArrayStore: r1[7] = r0  ; List_4
    //     0x6f5608: add             x25, x1, #0x2b
    //     0x6f560c: str             w0, [x25]
    //     0x6f5610: tbz             w0, #0, #0x6f562c
    //     0x6f5614: ldurb           w16, [x1, #-1]
    //     0x6f5618: ldurb           w17, [x0, #-1]
    //     0x6f561c: and             x16, x17, x16, lsr #2
    //     0x6f5620: tst             x16, HEAP, lsr #32
    //     0x6f5624: b.eq            #0x6f562c
    //     0x6f5628: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f562c: r16 = "agency_id"
    //     0x6f562c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6f5630: ldr             x16, [x16, #0x40]
    // 0x6f5634: StoreField: r2->field_2f = r16
    //     0x6f5634: stur            w16, [x2, #0x2f]
    // 0x6f5638: LoadField: r1 = r3->field_f
    //     0x6f5638: ldur            w1, [x3, #0xf]
    // 0x6f563c: DecompressPointer r1
    //     0x6f563c: add             x1, x1, HEAP, lsl #32
    // 0x6f5640: r0 = isFocused()
    //     0x6f5640: bl              #0x68a464  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::isFocused
    // 0x6f5644: LoadField: r1 = r0->field_7
    //     0x6f5644: ldur            w1, [x0, #7]
    // 0x6f5648: DecompressPointer r1
    //     0x6f5648: add             x1, x1, HEAP, lsl #32
    // 0x6f564c: mov             x0, x1
    // 0x6f5650: ldur            x1, [fp, #-0x90]
    // 0x6f5654: ArrayStore: r1[9] = r0  ; List_4
    //     0x6f5654: add             x25, x1, #0x33
    //     0x6f5658: str             w0, [x25]
    //     0x6f565c: tbz             w0, #0, #0x6f5678
    //     0x6f5660: ldurb           w16, [x1, #-1]
    //     0x6f5664: ldurb           w17, [x0, #-1]
    //     0x6f5668: and             x16, x17, x16, lsr #2
    //     0x6f566c: tst             x16, HEAP, lsr #32
    //     0x6f5670: b.eq            #0x6f5678
    //     0x6f5674: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f5678: ldur            x1, [fp, #-0x90]
    // 0x6f567c: r16 = "created_at"
    //     0x6f567c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6f5680: ldr             x16, [x16, #0xc00]
    // 0x6f5684: StoreField: r1->field_37 = r16
    //     0x6f5684: stur            w16, [x1, #0x37]
    // 0x6f5688: r0 = serverTimestamp()
    //     0x6f5688: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f568c: ldur            x1, [fp, #-0x90]
    // 0x6f5690: ArrayStore: r1[11] = r0  ; List_4
    //     0x6f5690: add             x25, x1, #0x3b
    //     0x6f5694: str             w0, [x25]
    //     0x6f5698: tbz             w0, #0, #0x6f56b4
    //     0x6f569c: ldurb           w16, [x1, #-1]
    //     0x6f56a0: ldurb           w17, [x0, #-1]
    //     0x6f56a4: and             x16, x17, x16, lsr #2
    //     0x6f56a8: tst             x16, HEAP, lsr #32
    //     0x6f56ac: b.eq            #0x6f56b4
    //     0x6f56b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f56b4: ldur            x1, [fp, #-0x90]
    // 0x6f56b8: r16 = "updated_at"
    //     0x6f56b8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6f56bc: ldr             x16, [x16, #0x58]
    // 0x6f56c0: StoreField: r1->field_3f = r16
    //     0x6f56c0: stur            w16, [x1, #0x3f]
    // 0x6f56c4: r0 = serverTimestamp()
    //     0x6f56c4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f56c8: ldur            x1, [fp, #-0x90]
    // 0x6f56cc: ArrayStore: r1[13] = r0  ; List_4
    //     0x6f56cc: add             x25, x1, #0x43
    //     0x6f56d0: str             w0, [x25]
    //     0x6f56d4: tbz             w0, #0, #0x6f56f0
    //     0x6f56d8: ldurb           w16, [x1, #-1]
    //     0x6f56dc: ldurb           w17, [x0, #-1]
    //     0x6f56e0: and             x16, x17, x16, lsr #2
    //     0x6f56e4: tst             x16, HEAP, lsr #32
    //     0x6f56e8: b.eq            #0x6f56f0
    //     0x6f56ec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f56f0: r16 = <String, Object?>
    //     0x6f56f0: ldr             x16, [PP, #0xe8]  ; [pp+0xe8] TypeArguments: <String, Object?>
    // 0x6f56f4: ldur            lr, [fp, #-0x90]
    // 0x6f56f8: stp             lr, x16, [SP]
    // 0x6f56fc: r0 = Map._fromLiteral()
    //     0x6f56fc: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f5700: ldur            x1, [fp, #-0x88]
    // 0x6f5704: mov             x2, x0
    // 0x6f5708: r0 = add()
    //     0x6f5708: bl              #0x6f584c  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::add
    // 0x6f570c: mov             x1, x0
    // 0x6f5710: stur            x1, [fp, #-0x70]
    // 0x6f5714: r0 = Await()
    //     0x6f5714: bl              #0x3dd188  ; AwaitStub
    // 0x6f5718: ldur            x2, [fp, #-0x80]
    // 0x6f571c: ldur            x0, [fp, #-0x78]
    // 0x6f5720: LoadField: r1 = r0->field_f
    //     0x6f5720: ldur            w1, [x0, #0xf]
    // 0x6f5724: DecompressPointer r1
    //     0x6f5724: add             x1, x1, HEAP, lsl #32
    // 0x6f5728: r0 = onDataChanged()
    //     0x6f5728: bl              #0x6f5824  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::onDataChanged
    // 0x6f572c: stur            x0, [fp, #-0x78]
    // 0x6f5730: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6f5730: ldur            w2, [x0, #0x17]
    // 0x6f5734: DecompressPointer r2
    //     0x6f5734: add             x2, x2, HEAP, lsl #32
    // 0x6f5738: mov             x1, x2
    // 0x6f573c: stur            x2, [fp, #-0x70]
    // 0x6f5740: r0 = _loadAgencyData()
    //     0x6f5740: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x6f5744: ldur            x0, [fp, #-0x80]
    // 0x6f5748: LoadField: r1 = r0->field_f
    //     0x6f5748: ldur            w1, [x0, #0xf]
    // 0x6f574c: DecompressPointer r1
    //     0x6f574c: add             x1, x1, HEAP, lsl #32
    // 0x6f5750: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6f5750: ldur            w0, [x1, #0x17]
    // 0x6f5754: DecompressPointer r0
    //     0x6f5754: add             x0, x0, HEAP, lsl #32
    // 0x6f5758: cmp             w0, NULL
    // 0x6f575c: b.eq            #0x6f580c
    // 0x6f5760: r16 = <Object?>
    //     0x6f5760: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6f5764: stp             x1, x16, [SP]
    // 0x6f5768: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6f5768: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6f576c: r0 = pop()
    //     0x6f576c: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6f5770: b               #0x6f580c
    // 0x6f5774: sub             SP, fp, #0xa8
    // 0x6f5778: ldur            x2, [fp, #-0x68]
    // 0x6f577c: stur            x0, [fp, #-0x70]
    // 0x6f5780: LoadField: r1 = r2->field_f
    //     0x6f5780: ldur            w1, [x2, #0xf]
    // 0x6f5784: DecompressPointer r1
    //     0x6f5784: add             x1, x1, HEAP, lsl #32
    // 0x6f5788: r0 = of()
    //     0x6f5788: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6f578c: r1 = Null
    //     0x6f578c: mov             x1, NULL
    // 0x6f5790: r2 = 4
    //     0x6f5790: mov             x2, #4
    // 0x6f5794: stur            x0, [fp, #-0x68]
    // 0x6f5798: r0 = AllocateArray()
    //     0x6f5798: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f579c: r16 = "Hata: "
    //     0x6f579c: add             x16, PP, #0x19, lsl #12  ; [pp+0x191d8] "Hata: "
    //     0x6f57a0: ldr             x16, [x16, #0x1d8]
    // 0x6f57a4: StoreField: r0->field_f = r16
    //     0x6f57a4: stur            w16, [x0, #0xf]
    // 0x6f57a8: ldur            x1, [fp, #-0x70]
    // 0x6f57ac: StoreField: r0->field_13 = r1
    //     0x6f57ac: stur            w1, [x0, #0x13]
    // 0x6f57b0: str             x0, [SP]
    // 0x6f57b4: r0 = _interpolate()
    //     0x6f57b4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f57b8: stur            x0, [fp, #-0x70]
    // 0x6f57bc: r0 = Text()
    //     0x6f57bc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f57c0: mov             x1, x0
    // 0x6f57c4: ldur            x0, [fp, #-0x70]
    // 0x6f57c8: stur            x1, [fp, #-0x78]
    // 0x6f57cc: StoreField: r1->field_b = r0
    //     0x6f57cc: stur            w0, [x1, #0xb]
    // 0x6f57d0: r0 = SnackBar()
    //     0x6f57d0: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x6f57d4: mov             x1, x0
    // 0x6f57d8: ldur            x0, [fp, #-0x78]
    // 0x6f57dc: StoreField: r1->field_b = r0
    //     0x6f57dc: stur            w0, [x1, #0xb]
    // 0x6f57e0: r0 = Instance_Duration
    //     0x6f57e0: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x6f57e4: ldr             x0, [x0, #0xf78]
    // 0x6f57e8: StoreField: r1->field_3f = r0
    //     0x6f57e8: stur            w0, [x1, #0x3f]
    // 0x6f57ec: r0 = Instance_Clip
    //     0x6f57ec: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f57f0: ldr             x0, [x0, #0x2d8]
    // 0x6f57f4: StoreField: r1->field_53 = r0
    //     0x6f57f4: stur            w0, [x1, #0x53]
    // 0x6f57f8: r0 = false
    //     0x6f57f8: add             x0, NULL, #0x30  ; false
    // 0x6f57fc: StoreField: r1->field_43 = r0
    //     0x6f57fc: stur            w0, [x1, #0x43]
    // 0x6f5800: mov             x2, x1
    // 0x6f5804: ldur            x1, [fp, #-0x68]
    // 0x6f5808: r0 = showSnackBar()
    //     0x6f5808: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6f580c: r0 = Null
    //     0x6f580c: mov             x0, NULL
    // 0x6f5810: r0 = ReturnAsyncNotFuture()
    //     0x6f5810: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f5814: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f5814: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f5818: b               #0x6f5150
    // 0x6f581c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f581c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f5820: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6f5820: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  get _ onDataChanged(/* No info */) {
    // ** addr: 0x6f5824, size: 0x28
    // 0x6f5824: LoadField: r2 = r1->field_b
    //     0x6f5824: ldur            w2, [x1, #0xb]
    // 0x6f5828: DecompressPointer r2
    //     0x6f5828: add             x2, x2, HEAP, lsl #32
    // 0x6f582c: cmp             w2, NULL
    // 0x6f5830: b.eq            #0x6f5840
    // 0x6f5834: LoadField: r0 = r2->field_23
    //     0x6f5834: ldur            w0, [x2, #0x23]
    // 0x6f5838: DecompressPointer r0
    //     0x6f5838: add             x0, x0, HEAP, lsl #32
    // 0x6f583c: ret
    //     0x6f583c: ret             
    // 0x6f5840: EnterFrame
    //     0x6f5840: stp             fp, lr, [SP, #-0x10]!
    //     0x6f5844: mov             fp, SP
    // 0x6f5848: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f5848: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  get _ firestoreService(/* No info */) {
    // ** addr: 0x6f58b8, size: 0x28
    // 0x6f58b8: LoadField: r2 = r1->field_b
    //     0x6f58b8: ldur            w2, [x1, #0xb]
    // 0x6f58bc: DecompressPointer r2
    //     0x6f58bc: add             x2, x2, HEAP, lsl #32
    // 0x6f58c0: cmp             w2, NULL
    // 0x6f58c4: b.eq            #0x6f58d4
    // 0x6f58c8: LoadField: r0 = r2->field_1f
    //     0x6f58c8: ldur            w0, [x2, #0x1f]
    // 0x6f58cc: DecompressPointer r0
    //     0x6f58cc: add             x0, x0, HEAP, lsl #32
    // 0x6f58d0: ret
    //     0x6f58d0: ret             
    // 0x6f58d4: EnterFrame
    //     0x6f58d4: stp             fp, lr, [SP, #-0x10]!
    //     0x6f58d8: mov             fp, SP
    // 0x6f58dc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f58dc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f58e0, size: 0x28
    // 0x6f58e0: r0 = true
    //     0x6f58e0: add             x0, NULL, #0x20  ; true
    // 0x6f58e4: ldr             x1, [SP]
    // 0x6f58e8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f58e8: ldur            w2, [x1, #0x17]
    // 0x6f58ec: DecompressPointer r2
    //     0x6f58ec: add             x2, x2, HEAP, lsl #32
    // 0x6f58f0: LoadField: r1 = r2->field_b
    //     0x6f58f0: ldur            w1, [x2, #0xb]
    // 0x6f58f4: DecompressPointer r1
    //     0x6f58f4: add             x1, x1, HEAP, lsl #32
    // 0x6f58f8: LoadField: r2 = r1->field_b
    //     0x6f58f8: ldur            w2, [x1, #0xb]
    // 0x6f58fc: DecompressPointer r2
    //     0x6f58fc: add             x2, x2, HEAP, lsl #32
    // 0x6f5900: StoreField: r2->field_2f = r0
    //     0x6f5900: stur            w0, [x2, #0x2f]
    // 0x6f5904: ret
    //     0x6f5904: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f6740, size: 0x8c
    // 0x6f6740: EnterFrame
    //     0x6f6740: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6744: mov             fp, SP
    // 0x6f6748: AllocStack(0x20)
    //     0x6f6748: sub             SP, SP, #0x20
    // 0x6f674c: SetupParameters([dynamic _ /* r0 */])
    //     0x6f674c: ldr             x0, [fp, #0x18]
    //     0x6f6750: ldur            w1, [x0, #0x17]
    //     0x6f6754: add             x1, x1, HEAP, lsl #32
    //     0x6f6758: stur            x1, [fp, #-8]
    // 0x6f675c: CheckStackOverflow
    //     0x6f675c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6760: cmp             SP, x16
    //     0x6f6764: b.ls            #0x6f67c4
    // 0x6f6768: r1 = 1
    //     0x6f6768: mov             x1, #1
    // 0x6f676c: r0 = AllocateContext()
    //     0x6f676c: bl              #0x927010  ; AllocateContextStub
    // 0x6f6770: mov             x1, x0
    // 0x6f6774: ldur            x0, [fp, #-8]
    // 0x6f6778: StoreField: r1->field_b = r0
    //     0x6f6778: stur            w0, [x1, #0xb]
    // 0x6f677c: ldr             x2, [fp, #0x10]
    // 0x6f6780: StoreField: r1->field_f = r2
    //     0x6f6780: stur            w2, [x1, #0xf]
    // 0x6f6784: LoadField: r3 = r0->field_13
    //     0x6f6784: ldur            w3, [x0, #0x13]
    // 0x6f6788: DecompressPointer r3
    //     0x6f6788: add             x3, x3, HEAP, lsl #32
    // 0x6f678c: mov             x2, x1
    // 0x6f6790: stur            x3, [fp, #-0x10]
    // 0x6f6794: r1 = Function '<anonymous closure>':.
    //     0x6f6794: add             x1, PP, #0x19, lsl #12  ; [pp+0x192e0] AnonymousClosure: (0x6e45c4), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6f6798: ldr             x1, [x1, #0x2e0]
    // 0x6f679c: r0 = AllocateClosure()
    //     0x6f679c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f67a0: ldur            x16, [fp, #-0x10]
    // 0x6f67a4: stp             x0, x16, [SP]
    // 0x6f67a8: ldur            x0, [fp, #-0x10]
    // 0x6f67ac: ClosureCall
    //     0x6f67ac: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6f67b0: ldur            x2, [x0, #0x1f]
    //     0x6f67b4: blr             x2
    // 0x6f67b8: LeaveFrame
    //     0x6f67b8: mov             SP, fp
    //     0x6f67bc: ldp             fp, lr, [SP], #0x10
    // 0x6f67c0: ret
    //     0x6f67c0: ret             
    // 0x6f67c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f67c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f67c8: b               #0x6f6768
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f67cc, size: 0x8c
    // 0x6f67cc: EnterFrame
    //     0x6f67cc: stp             fp, lr, [SP, #-0x10]!
    //     0x6f67d0: mov             fp, SP
    // 0x6f67d4: AllocStack(0x20)
    //     0x6f67d4: sub             SP, SP, #0x20
    // 0x6f67d8: SetupParameters([dynamic _ /* r0 */])
    //     0x6f67d8: ldr             x0, [fp, #0x18]
    //     0x6f67dc: ldur            w1, [x0, #0x17]
    //     0x6f67e0: add             x1, x1, HEAP, lsl #32
    //     0x6f67e4: stur            x1, [fp, #-8]
    // 0x6f67e8: CheckStackOverflow
    //     0x6f67e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f67ec: cmp             SP, x16
    //     0x6f67f0: b.ls            #0x6f6850
    // 0x6f67f4: r1 = 1
    //     0x6f67f4: mov             x1, #1
    // 0x6f67f8: r0 = AllocateContext()
    //     0x6f67f8: bl              #0x927010  ; AllocateContextStub
    // 0x6f67fc: mov             x1, x0
    // 0x6f6800: ldur            x0, [fp, #-8]
    // 0x6f6804: StoreField: r1->field_b = r0
    //     0x6f6804: stur            w0, [x1, #0xb]
    // 0x6f6808: ldr             x2, [fp, #0x10]
    // 0x6f680c: StoreField: r1->field_f = r2
    //     0x6f680c: stur            w2, [x1, #0xf]
    // 0x6f6810: LoadField: r3 = r0->field_13
    //     0x6f6810: ldur            w3, [x0, #0x13]
    // 0x6f6814: DecompressPointer r3
    //     0x6f6814: add             x3, x3, HEAP, lsl #32
    // 0x6f6818: mov             x2, x1
    // 0x6f681c: stur            x3, [fp, #-0x10]
    // 0x6f6820: r1 = Function '<anonymous closure>':.
    //     0x6f6820: add             x1, PP, #0x19, lsl #12  ; [pp+0x192e8] AnonymousClosure: (0x6e1690), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6f6824: ldr             x1, [x1, #0x2e8]
    // 0x6f6828: r0 = AllocateClosure()
    //     0x6f6828: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f682c: ldur            x16, [fp, #-0x10]
    // 0x6f6830: stp             x0, x16, [SP]
    // 0x6f6834: ldur            x0, [fp, #-0x10]
    // 0x6f6838: ClosureCall
    //     0x6f6838: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6f683c: ldur            x2, [x0, #0x1f]
    //     0x6f6840: blr             x2
    // 0x6f6844: LeaveFrame
    //     0x6f6844: mov             SP, fp
    //     0x6f6848: ldp             fp, lr, [SP], #0x10
    // 0x6f684c: ret
    //     0x6f684c: ret             
    // 0x6f6850: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6850: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f6854: b               #0x6f67f4
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6f6858, size: 0x8c
    // 0x6f6858: EnterFrame
    //     0x6f6858: stp             fp, lr, [SP, #-0x10]!
    //     0x6f685c: mov             fp, SP
    // 0x6f6860: AllocStack(0x20)
    //     0x6f6860: sub             SP, SP, #0x20
    // 0x6f6864: SetupParameters([dynamic _ /* r0 */])
    //     0x6f6864: ldr             x0, [fp, #0x18]
    //     0x6f6868: ldur            w1, [x0, #0x17]
    //     0x6f686c: add             x1, x1, HEAP, lsl #32
    //     0x6f6870: stur            x1, [fp, #-8]
    // 0x6f6874: CheckStackOverflow
    //     0x6f6874: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6878: cmp             SP, x16
    //     0x6f687c: b.ls            #0x6f68dc
    // 0x6f6880: r1 = 1
    //     0x6f6880: mov             x1, #1
    // 0x6f6884: r0 = AllocateContext()
    //     0x6f6884: bl              #0x927010  ; AllocateContextStub
    // 0x6f6888: mov             x1, x0
    // 0x6f688c: ldur            x0, [fp, #-8]
    // 0x6f6890: StoreField: r1->field_b = r0
    //     0x6f6890: stur            w0, [x1, #0xb]
    // 0x6f6894: ldr             x2, [fp, #0x10]
    // 0x6f6898: StoreField: r1->field_f = r2
    //     0x6f6898: stur            w2, [x1, #0xf]
    // 0x6f689c: LoadField: r3 = r0->field_13
    //     0x6f689c: ldur            w3, [x0, #0x13]
    // 0x6f68a0: DecompressPointer r3
    //     0x6f68a0: add             x3, x3, HEAP, lsl #32
    // 0x6f68a4: mov             x2, x1
    // 0x6f68a8: stur            x3, [fp, #-0x10]
    // 0x6f68ac: r1 = Function '<anonymous closure>':.
    //     0x6f68ac: add             x1, PP, #0x19, lsl #12  ; [pp+0x192f0] AnonymousClosure: (0x6f68e4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f68b0: ldr             x1, [x1, #0x2f0]
    // 0x6f68b4: r0 = AllocateClosure()
    //     0x6f68b4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f68b8: ldur            x16, [fp, #-0x10]
    // 0x6f68bc: stp             x0, x16, [SP]
    // 0x6f68c0: ldur            x0, [fp, #-0x10]
    // 0x6f68c4: ClosureCall
    //     0x6f68c4: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6f68c8: ldur            x2, [x0, #0x1f]
    //     0x6f68cc: blr             x2
    // 0x6f68d0: LeaveFrame
    //     0x6f68d0: mov             SP, fp
    //     0x6f68d4: ldp             fp, lr, [SP], #0x10
    // 0x6f68d8: ret
    //     0x6f68d8: ret             
    // 0x6f68dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f68dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f68e0: b               #0x6f6880
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f68e4, size: 0x5c
    // 0x6f68e4: ldr             x1, [SP]
    // 0x6f68e8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f68e8: ldur            w2, [x1, #0x17]
    // 0x6f68ec: DecompressPointer r2
    //     0x6f68ec: add             x2, x2, HEAP, lsl #32
    // 0x6f68f0: LoadField: r0 = r2->field_f
    //     0x6f68f0: ldur            w0, [x2, #0xf]
    // 0x6f68f4: DecompressPointer r0
    //     0x6f68f4: add             x0, x0, HEAP, lsl #32
    // 0x6f68f8: LoadField: r1 = r2->field_b
    //     0x6f68f8: ldur            w1, [x2, #0xb]
    // 0x6f68fc: DecompressPointer r1
    //     0x6f68fc: add             x1, x1, HEAP, lsl #32
    // 0x6f6900: LoadField: r2 = r1->field_b
    //     0x6f6900: ldur            w2, [x1, #0xb]
    // 0x6f6904: DecompressPointer r2
    //     0x6f6904: add             x2, x2, HEAP, lsl #32
    // 0x6f6908: LoadField: r1 = r2->field_b
    //     0x6f6908: ldur            w1, [x2, #0xb]
    // 0x6f690c: DecompressPointer r1
    //     0x6f690c: add             x1, x1, HEAP, lsl #32
    // 0x6f6910: StoreField: r1->field_23 = r0
    //     0x6f6910: stur            w0, [x1, #0x23]
    //     0x6f6914: ldurb           w16, [x1, #-1]
    //     0x6f6918: ldurb           w17, [x0, #-1]
    //     0x6f691c: and             x16, x17, x16, lsr #2
    //     0x6f6920: tst             x16, HEAP, lsr #32
    //     0x6f6924: b.eq            #0x6f6934
    //     0x6f6928: str             lr, [SP, #-8]!
    //     0x6f692c: bl              #0x926790  ; WriteBarrierWrappersStub
    //     0x6f6930: ldr             lr, [SP], #8
    // 0x6f6934: StoreField: r1->field_27 = rNULL
    //     0x6f6934: stur            NULL, [x1, #0x27]
    // 0x6f6938: r0 = Null
    //     0x6f6938: mov             x0, NULL
    // 0x6f693c: ret
    //     0x6f693c: ret             
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x6f6940, size: 0x78
    // 0x6f6940: EnterFrame
    //     0x6f6940: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6944: mov             fp, SP
    // 0x6f6948: AllocStack(0x10)
    //     0x6f6948: sub             SP, SP, #0x10
    // 0x6f694c: SetupParameters([dynamic _ /* r0 */])
    //     0x6f694c: ldr             x0, [fp, #0x18]
    //     0x6f6950: ldur            w1, [x0, #0x17]
    //     0x6f6954: add             x1, x1, HEAP, lsl #32
    // 0x6f6958: CheckStackOverflow
    //     0x6f6958: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f695c: cmp             SP, x16
    //     0x6f6960: b.ls            #0x6f69b0
    // 0x6f6964: ldr             x0, [fp, #0x10]
    // 0x6f6968: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6f6968: ldur            w2, [x0, #0x17]
    // 0x6f696c: DecompressPointer r2
    //     0x6f696c: add             x2, x2, HEAP, lsl #32
    // 0x6f6970: LoadField: r0 = r1->field_b
    //     0x6f6970: ldur            w0, [x1, #0xb]
    // 0x6f6974: DecompressPointer r0
    //     0x6f6974: add             x0, x0, HEAP, lsl #32
    // 0x6f6978: LoadField: r1 = r0->field_b
    //     0x6f6978: ldur            w1, [x0, #0xb]
    // 0x6f697c: DecompressPointer r1
    //     0x6f697c: add             x1, x1, HEAP, lsl #32
    // 0x6f6980: LoadField: r0 = r1->field_23
    //     0x6f6980: ldur            w0, [x1, #0x23]
    // 0x6f6984: DecompressPointer r0
    //     0x6f6984: add             x0, x0, HEAP, lsl #32
    // 0x6f6988: r1 = LoadClassIdInstr(r2)
    //     0x6f6988: ldur            x1, [x2, #-1]
    //     0x6f698c: ubfx            x1, x1, #0xc, #0x14
    // 0x6f6990: stp             x0, x2, [SP]
    // 0x6f6994: mov             x0, x1
    // 0x6f6998: mov             lr, x0
    // 0x6f699c: ldr             lr, [x21, lr, lsl #3]
    // 0x6f69a0: blr             lr
    // 0x6f69a4: LeaveFrame
    //     0x6f69a4: mov             SP, fp
    //     0x6f69a8: ldp             fp, lr, [SP], #0x10
    // 0x6f69ac: ret
    //     0x6f69ac: ret             
    // 0x6f69b0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f69b0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f69b4: b               #0x6f6964
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6f69b8, size: 0x64
    // 0x6f69b8: EnterFrame
    //     0x6f69b8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f69bc: mov             fp, SP
    // 0x6f69c0: AllocStack(0x8)
    //     0x6f69c0: sub             SP, SP, #8
    // 0x6f69c4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f69c4: ldr             x0, [fp, #0x18]
    //     0x6f69c8: ldur            w1, [x0, #0x17]
    //     0x6f69cc: add             x1, x1, HEAP, lsl #32
    //     0x6f69d0: stur            x1, [fp, #-8]
    // 0x6f69d4: r1 = 1
    //     0x6f69d4: mov             x1, #1
    // 0x6f69d8: r0 = AllocateContext()
    //     0x6f69d8: bl              #0x927010  ; AllocateContextStub
    // 0x6f69dc: mov             x1, x0
    // 0x6f69e0: ldur            x0, [fp, #-8]
    // 0x6f69e4: StoreField: r1->field_b = r0
    //     0x6f69e4: stur            w0, [x1, #0xb]
    // 0x6f69e8: ldr             x0, [fp, #0x10]
    // 0x6f69ec: StoreField: r1->field_f = r0
    //     0x6f69ec: stur            w0, [x1, #0xf]
    // 0x6f69f0: mov             x2, x1
    // 0x6f69f4: r1 = Function '<anonymous closure>':.
    //     0x6f69f4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19218] AnonymousClosure: (0x6f435c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f69f8: ldr             x1, [x1, #0x218]
    // 0x6f69fc: r0 = AllocateClosure()
    //     0x6f69fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f6a00: stur            x0, [fp, #-8]
    // 0x6f6a04: r0 = StatefulBuilder()
    //     0x6f6a04: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x6f6a08: ldur            x1, [fp, #-8]
    // 0x6f6a0c: StoreField: r0->field_b = r1
    //     0x6f6a0c: stur            w1, [x0, #0xb]
    // 0x6f6a10: LeaveFrame
    //     0x6f6a10: mov             SP, fp
    //     0x6f6a14: ldp             fp, lr, [SP], #0x10
    // 0x6f6a18: ret
    //     0x6f6a18: ret             
  }
  _ showRoomDialog(/* No info */) {
    // ** addr: 0x6f6a1c, size: 0x2ec
    // 0x6f6a1c: EnterFrame
    //     0x6f6a1c: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6a20: mov             fp, SP
    // 0x6f6a24: AllocStack(0x40)
    //     0x6f6a24: sub             SP, SP, #0x40
    // 0x6f6a28: SetupParameters(RoomsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x6f6a28: stur            x1, [fp, #-8]
    //     0x6f6a2c: stur            x2, [fp, #-0x10]
    //     0x6f6a30: stur            x3, [fp, #-0x18]
    // 0x6f6a34: CheckStackOverflow
    //     0x6f6a34: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6a38: cmp             SP, x16
    //     0x6f6a3c: b.ls            #0x6f6d00
    // 0x6f6a40: r1 = 9
    //     0x6f6a40: mov             x1, #9
    // 0x6f6a44: r0 = AllocateContext()
    //     0x6f6a44: bl              #0x927010  ; AllocateContextStub
    // 0x6f6a48: mov             x2, x0
    // 0x6f6a4c: ldur            x0, [fp, #-8]
    // 0x6f6a50: stur            x2, [fp, #-0x20]
    // 0x6f6a54: StoreField: r2->field_f = r0
    //     0x6f6a54: stur            w0, [x2, #0xf]
    // 0x6f6a58: ldur            x1, [fp, #-0x18]
    // 0x6f6a5c: StoreField: r2->field_13 = r1
    //     0x6f6a5c: stur            w1, [x2, #0x13]
    // 0x6f6a60: cmp             w1, NULL
    // 0x6f6a64: r16 = true
    //     0x6f6a64: add             x16, NULL, #0x20  ; true
    // 0x6f6a68: r17 = false
    //     0x6f6a68: add             x17, NULL, #0x30  ; false
    // 0x6f6a6c: csel            x3, x16, x17, ne
    // 0x6f6a70: ArrayStore: r2[0] = r3  ; List_4
    //     0x6f6a70: stur            w3, [x2, #0x17]
    // 0x6f6a74: cmp             w1, NULL
    // 0x6f6a78: b.ne            #0x6f6a84
    // 0x6f6a7c: r1 = Null
    //     0x6f6a7c: mov             x1, NULL
    // 0x6f6a80: b               #0x6f6a90
    // 0x6f6a84: LoadField: r3 = r1->field_f
    //     0x6f6a84: ldur            w3, [x1, #0xf]
    // 0x6f6a88: DecompressPointer r3
    //     0x6f6a88: add             x3, x3, HEAP, lsl #32
    // 0x6f6a8c: mov             x1, x3
    // 0x6f6a90: cmp             w1, NULL
    // 0x6f6a94: b.ne            #0x6f6aa0
    // 0x6f6a98: r3 = ""
    //     0x6f6a98: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6f6a9c: b               #0x6f6aa4
    // 0x6f6aa0: mov             x3, x1
    // 0x6f6aa4: stur            x3, [fp, #-0x18]
    // 0x6f6aa8: r1 = <TextEditingValue>
    //     0x6f6aa8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6f6aac: r0 = TextEditingController()
    //     0x6f6aac: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6f6ab0: stur            x0, [fp, #-0x28]
    // 0x6f6ab4: ldur            x16, [fp, #-0x18]
    // 0x6f6ab8: str             x16, [SP]
    // 0x6f6abc: mov             x1, x0
    // 0x6f6ac0: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6f6ac0: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6f6ac4: ldr             x4, [x4, #0xa20]
    // 0x6f6ac8: r0 = TextEditingController()
    //     0x6f6ac8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6f6acc: ldur            x0, [fp, #-0x28]
    // 0x6f6ad0: ldur            x2, [fp, #-0x20]
    // 0x6f6ad4: StoreField: r2->field_1b = r0
    //     0x6f6ad4: stur            w0, [x2, #0x1b]
    //     0x6f6ad8: ldurb           w16, [x2, #-1]
    //     0x6f6adc: ldurb           w17, [x0, #-1]
    //     0x6f6ae0: and             x16, x17, x16, lsr #2
    //     0x6f6ae4: tst             x16, HEAP, lsr #32
    //     0x6f6ae8: b.eq            #0x6f6af0
    //     0x6f6aec: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6af0: LoadField: r0 = r2->field_13
    //     0x6f6af0: ldur            w0, [x2, #0x13]
    // 0x6f6af4: DecompressPointer r0
    //     0x6f6af4: add             x0, x0, HEAP, lsl #32
    // 0x6f6af8: cmp             w0, NULL
    // 0x6f6afc: b.ne            #0x6f6b08
    // 0x6f6b00: r0 = Null
    //     0x6f6b00: mov             x0, NULL
    // 0x6f6b04: b               #0x6f6b4c
    // 0x6f6b08: LoadField: r3 = r0->field_13
    //     0x6f6b08: ldur            x3, [x0, #0x13]
    // 0x6f6b0c: r0 = BoxInt64Instr(r3)
    //     0x6f6b0c: sbfiz           x0, x3, #1, #0x1f
    //     0x6f6b10: cmp             x3, x0, asr #1
    //     0x6f6b14: b.eq            #0x6f6b20
    //     0x6f6b18: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6f6b1c: stur            x3, [x0, #7]
    // 0x6f6b20: r1 = 60
    //     0x6f6b20: mov             x1, #0x3c
    // 0x6f6b24: branchIfSmi(r0, 0x6f6b30)
    //     0x6f6b24: tbz             w0, #0, #0x6f6b30
    // 0x6f6b28: r1 = LoadClassIdInstr(r0)
    //     0x6f6b28: ldur            x1, [x0, #-1]
    //     0x6f6b2c: ubfx            x1, x1, #0xc, #0x14
    // 0x6f6b30: str             x0, [SP]
    // 0x6f6b34: mov             x0, x1
    // 0x6f6b38: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6f6b38: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6f6b3c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6f6b3c: mov             x17, #0x21f6
    //     0x6f6b40: add             lr, x0, x17
    //     0x6f6b44: ldr             lr, [x21, lr, lsl #3]
    //     0x6f6b48: blr             lr
    // 0x6f6b4c: cmp             w0, NULL
    // 0x6f6b50: b.ne            #0x6f6b5c
    // 0x6f6b54: r0 = "4"
    //     0x6f6b54: add             x0, PP, #0x19, lsl #12  ; [pp+0x19200] "4"
    //     0x6f6b58: ldr             x0, [x0, #0x200]
    // 0x6f6b5c: ldur            x2, [fp, #-0x20]
    // 0x6f6b60: stur            x0, [fp, #-0x18]
    // 0x6f6b64: r1 = <TextEditingValue>
    //     0x6f6b64: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6f6b68: r0 = TextEditingController()
    //     0x6f6b68: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6f6b6c: stur            x0, [fp, #-0x28]
    // 0x6f6b70: ldur            x16, [fp, #-0x18]
    // 0x6f6b74: str             x16, [SP]
    // 0x6f6b78: mov             x1, x0
    // 0x6f6b7c: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6f6b7c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6f6b80: ldr             x4, [x4, #0xa20]
    // 0x6f6b84: r0 = TextEditingController()
    //     0x6f6b84: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6f6b88: ldur            x0, [fp, #-0x28]
    // 0x6f6b8c: ldur            x2, [fp, #-0x20]
    // 0x6f6b90: StoreField: r2->field_1f = r0
    //     0x6f6b90: stur            w0, [x2, #0x1f]
    //     0x6f6b94: ldurb           w16, [x2, #-1]
    //     0x6f6b98: ldurb           w17, [x0, #-1]
    //     0x6f6b9c: and             x16, x17, x16, lsr #2
    //     0x6f6ba0: tst             x16, HEAP, lsr #32
    //     0x6f6ba4: b.eq            #0x6f6bac
    //     0x6f6ba8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6bac: LoadField: r0 = r2->field_13
    //     0x6f6bac: ldur            w0, [x2, #0x13]
    // 0x6f6bb0: DecompressPointer r0
    //     0x6f6bb0: add             x0, x0, HEAP, lsl #32
    // 0x6f6bb4: cmp             w0, NULL
    // 0x6f6bb8: b.eq            #0x6f6c18
    // 0x6f6bbc: ldur            x1, [fp, #-8]
    // 0x6f6bc0: r0 = onChanged()
    //     0x6f6bc0: bl              #0x582f8c  ; [package:flutter/src/material/checkbox.dart] _CheckboxState::onChanged
    // 0x6f6bc4: ldur            x2, [fp, #-0x20]
    // 0x6f6bc8: r1 = Function '<anonymous closure>':.
    //     0x6f6bc8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19208] AnonymousClosure: (0x6f6d08), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f6bcc: ldr             x1, [x1, #0x208]
    // 0x6f6bd0: stur            x0, [fp, #-8]
    // 0x6f6bd4: r0 = AllocateClosure()
    //     0x6f6bd4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f6bd8: ldur            x1, [fp, #-8]
    // 0x6f6bdc: r2 = LoadClassIdInstr(r1)
    //     0x6f6bdc: ldur            x2, [x1, #-1]
    //     0x6f6be0: ubfx            x2, x2, #0xc, #0x14
    // 0x6f6be4: mov             x16, x0
    // 0x6f6be8: mov             x0, x2
    // 0x6f6bec: mov             x2, x16
    // 0x6f6bf0: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6f6bf0: mov             x17, #0xd348
    //     0x6f6bf4: add             lr, x0, x17
    //     0x6f6bf8: ldr             lr, [x21, lr, lsl #3]
    //     0x6f6bfc: blr             lr
    // 0x6f6c00: r16 = <HotelModel>
    //     0x6f6c00: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x6f6c04: ldr             x16, [x16, #0xda8]
    // 0x6f6c08: stp             x0, x16, [SP]
    // 0x6f6c0c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6f6c0c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6f6c10: r0 = IterableExtensions.firstOrNull()
    //     0x6f6c10: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x6f6c14: b               #0x6f6c1c
    // 0x6f6c18: r0 = Null
    //     0x6f6c18: mov             x0, NULL
    // 0x6f6c1c: cmp             w0, NULL
    // 0x6f6c20: b.ne            #0x6f6c2c
    // 0x6f6c24: r0 = Null
    //     0x6f6c24: mov             x0, NULL
    // 0x6f6c28: b               #0x6f6c38
    // 0x6f6c2c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f6c2c: ldur            w1, [x0, #0x17]
    // 0x6f6c30: DecompressPointer r1
    //     0x6f6c30: add             x1, x1, HEAP, lsl #32
    // 0x6f6c34: mov             x0, x1
    // 0x6f6c38: ldur            x2, [fp, #-0x20]
    // 0x6f6c3c: StoreField: r2->field_23 = r0
    //     0x6f6c3c: stur            w0, [x2, #0x23]
    //     0x6f6c40: ldurb           w16, [x2, #-1]
    //     0x6f6c44: ldurb           w17, [x0, #-1]
    //     0x6f6c48: and             x16, x17, x16, lsr #2
    //     0x6f6c4c: tst             x16, HEAP, lsr #32
    //     0x6f6c50: b.eq            #0x6f6c58
    //     0x6f6c54: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6c58: LoadField: r1 = r2->field_13
    //     0x6f6c58: ldur            w1, [x2, #0x13]
    // 0x6f6c5c: DecompressPointer r1
    //     0x6f6c5c: add             x1, x1, HEAP, lsl #32
    // 0x6f6c60: cmp             w1, NULL
    // 0x6f6c64: b.ne            #0x6f6c70
    // 0x6f6c68: r0 = Null
    //     0x6f6c68: mov             x0, NULL
    // 0x6f6c6c: b               #0x6f6c78
    // 0x6f6c70: LoadField: r0 = r1->field_b
    //     0x6f6c70: ldur            w0, [x1, #0xb]
    // 0x6f6c74: DecompressPointer r0
    //     0x6f6c74: add             x0, x0, HEAP, lsl #32
    // 0x6f6c78: StoreField: r2->field_27 = r0
    //     0x6f6c78: stur            w0, [x2, #0x27]
    //     0x6f6c7c: ldurb           w16, [x2, #-1]
    //     0x6f6c80: ldurb           w17, [x0, #-1]
    //     0x6f6c84: and             x16, x17, x16, lsr #2
    //     0x6f6c88: tst             x16, HEAP, lsr #32
    //     0x6f6c8c: b.eq            #0x6f6c94
    //     0x6f6c90: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6c94: cmp             w1, NULL
    // 0x6f6c98: b.ne            #0x6f6ca4
    // 0x6f6c9c: r0 = Null
    //     0x6f6c9c: mov             x0, NULL
    // 0x6f6ca0: b               #0x6f6cac
    // 0x6f6ca4: LoadField: r0 = r1->field_1b
    //     0x6f6ca4: ldur            w0, [x1, #0x1b]
    // 0x6f6ca8: DecompressPointer r0
    //     0x6f6ca8: add             x0, x0, HEAP, lsl #32
    // 0x6f6cac: r1 = false
    //     0x6f6cac: add             x1, NULL, #0x30  ; false
    // 0x6f6cb0: StoreField: r2->field_2b = r0
    //     0x6f6cb0: stur            w0, [x2, #0x2b]
    //     0x6f6cb4: ldurb           w16, [x2, #-1]
    //     0x6f6cb8: ldurb           w17, [x0, #-1]
    //     0x6f6cbc: and             x16, x17, x16, lsr #2
    //     0x6f6cc0: tst             x16, HEAP, lsr #32
    //     0x6f6cc4: b.eq            #0x6f6ccc
    //     0x6f6cc8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6ccc: StoreField: r2->field_2f = r1
    //     0x6f6ccc: stur            w1, [x2, #0x2f]
    // 0x6f6cd0: r1 = Function '<anonymous closure>':.
    //     0x6f6cd0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19210] AnonymousClosure: (0x6f69b8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog (0x6f6a1c)
    //     0x6f6cd4: ldr             x1, [x1, #0x210]
    // 0x6f6cd8: r0 = AllocateClosure()
    //     0x6f6cd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f6cdc: stp             x0, NULL, [SP, #8]
    // 0x6f6ce0: ldur            x16, [fp, #-0x10]
    // 0x6f6ce4: str             x16, [SP]
    // 0x6f6ce8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f6ce8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f6cec: r0 = showDialog()
    //     0x6f6cec: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6f6cf0: r0 = Null
    //     0x6f6cf0: mov             x0, NULL
    // 0x6f6cf4: LeaveFrame
    //     0x6f6cf4: mov             SP, fp
    //     0x6f6cf8: ldp             fp, lr, [SP], #0x10
    // 0x6f6cfc: ret
    //     0x6f6cfc: ret             
    // 0x6f6d00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6d00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f6d04: b               #0x6f6a40
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x6f6d08, size: 0x78
    // 0x6f6d08: EnterFrame
    //     0x6f6d08: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6d0c: mov             fp, SP
    // 0x6f6d10: AllocStack(0x10)
    //     0x6f6d10: sub             SP, SP, #0x10
    // 0x6f6d14: SetupParameters([dynamic _ /* r0 */])
    //     0x6f6d14: ldr             x0, [fp, #0x18]
    //     0x6f6d18: ldur            w1, [x0, #0x17]
    //     0x6f6d1c: add             x1, x1, HEAP, lsl #32
    // 0x6f6d20: CheckStackOverflow
    //     0x6f6d20: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6d24: cmp             SP, x16
    //     0x6f6d28: b.ls            #0x6f6d74
    // 0x6f6d2c: ldr             x0, [fp, #0x10]
    // 0x6f6d30: LoadField: r2 = r0->field_7
    //     0x6f6d30: ldur            w2, [x0, #7]
    // 0x6f6d34: DecompressPointer r2
    //     0x6f6d34: add             x2, x2, HEAP, lsl #32
    // 0x6f6d38: LoadField: r0 = r1->field_13
    //     0x6f6d38: ldur            w0, [x1, #0x13]
    // 0x6f6d3c: DecompressPointer r0
    //     0x6f6d3c: add             x0, x0, HEAP, lsl #32
    // 0x6f6d40: cmp             w0, NULL
    // 0x6f6d44: b.eq            #0x6f6d7c
    // 0x6f6d48: LoadField: r1 = r0->field_b
    //     0x6f6d48: ldur            w1, [x0, #0xb]
    // 0x6f6d4c: DecompressPointer r1
    //     0x6f6d4c: add             x1, x1, HEAP, lsl #32
    // 0x6f6d50: r0 = LoadClassIdInstr(r2)
    //     0x6f6d50: ldur            x0, [x2, #-1]
    //     0x6f6d54: ubfx            x0, x0, #0xc, #0x14
    // 0x6f6d58: stp             x1, x2, [SP]
    // 0x6f6d5c: mov             lr, x0
    // 0x6f6d60: ldr             lr, [x21, lr, lsl #3]
    // 0x6f6d64: blr             lr
    // 0x6f6d68: LeaveFrame
    //     0x6f6d68: mov             SP, fp
    //     0x6f6d6c: ldp             fp, lr, [SP], #0x10
    // 0x6f6d70: ret
    //     0x6f6d70: ret             
    // 0x6f6d74: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6d74: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f6d78: b               #0x6f6d2c
    // 0x6f6d7c: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6f6d7c: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x746050, size: 0x13c
    // 0x746050: EnterFrame
    //     0x746050: stp             fp, lr, [SP, #-0x10]!
    //     0x746054: mov             fp, SP
    // 0x746058: AllocStack(0x28)
    //     0x746058: sub             SP, SP, #0x28
    // 0x74605c: SetupParameters(RoomsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x74605c: stur            x1, [fp, #-8]
    //     0x746060: stur            x2, [fp, #-0x10]
    // 0x746064: CheckStackOverflow
    //     0x746064: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x746068: cmp             SP, x16
    //     0x74606c: b.ls            #0x746180
    // 0x746070: r1 = 2
    //     0x746070: mov             x1, #2
    // 0x746074: r0 = AllocateContext()
    //     0x746074: bl              #0x927010  ; AllocateContextStub
    // 0x746078: mov             x3, x0
    // 0x74607c: ldur            x2, [fp, #-8]
    // 0x746080: stur            x3, [fp, #-0x18]
    // 0x746084: StoreField: r3->field_f = r2
    //     0x746084: stur            w2, [x3, #0xf]
    // 0x746088: ldur            x0, [fp, #-0x10]
    // 0x74608c: StoreField: r3->field_13 = r0
    //     0x74608c: stur            w0, [x3, #0x13]
    // 0x746090: LoadField: r0 = r2->field_b
    //     0x746090: ldur            w0, [x2, #0xb]
    // 0x746094: DecompressPointer r0
    //     0x746094: add             x0, x0, HEAP, lsl #32
    // 0x746098: cmp             w0, NULL
    // 0x74609c: b.eq            #0x746188
    // 0x7460a0: LoadField: r1 = r0->field_b
    //     0x7460a0: ldur            w1, [x0, #0xb]
    // 0x7460a4: DecompressPointer r1
    //     0x7460a4: add             x1, x1, HEAP, lsl #32
    // 0x7460a8: r0 = LoadClassIdInstr(r1)
    //     0x7460a8: ldur            x0, [x1, #-1]
    //     0x7460ac: ubfx            x0, x0, #0xc, #0x14
    // 0x7460b0: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x7460b0: mov             x17, #0xcda7
    //     0x7460b4: add             lr, x0, x17
    //     0x7460b8: ldr             lr, [x21, lr, lsl #3]
    //     0x7460bc: blr             lr
    // 0x7460c0: tbnz            w0, #4, #0x746100
    // 0x7460c4: ldur            x2, [fp, #-0x18]
    // 0x7460c8: r1 = Function '<anonymous closure>':.
    //     0x7460c8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb70] AnonymousClosure: (0x7483d8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::build (0x746050)
    //     0x7460cc: ldr             x1, [x1, #0xb70]
    // 0x7460d0: r0 = AllocateClosure()
    //     0x7460d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7460d4: mov             x5, x0
    // 0x7460d8: r1 = Instance_IconData
    //     0x7460d8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb78] Obj!IconData@a0a7e1
    //     0x7460dc: ldr             x1, [x1, #0xb78]
    // 0x7460e0: r2 = "Oda bulunamadı"
    //     0x7460e0: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fb80] "Oda bulunamadı"
    //     0x7460e4: ldr             x2, [x2, #0xb80]
    // 0x7460e8: r3 = "Oda Ekle"
    //     0x7460e8: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fb88] "Oda Ekle"
    //     0x7460ec: ldr             x3, [x3, #0xb88]
    // 0x7460f0: r0 = buildEmptyState()
    //     0x7460f0: bl              #0x7438ac  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildEmptyState
    // 0x7460f4: LeaveFrame
    //     0x7460f4: mov             SP, fp
    //     0x7460f8: ldp             fp, lr, [SP], #0x10
    // 0x7460fc: ret
    //     0x7460fc: ret             
    // 0x746100: ldur            x1, [fp, #-8]
    // 0x746104: r0 = build()
    //     0x746104: bl              #0x6beb0c  ; [package:flutter/src/widgets/will_pop_scope.dart] _WillPopScopeState::build
    // 0x746108: r1 = LoadClassIdInstr(r0)
    //     0x746108: ldur            x1, [x0, #-1]
    //     0x74610c: ubfx            x1, x1, #0xc, #0x14
    // 0x746110: str             x0, [SP]
    // 0x746114: mov             x0, x1
    // 0x746118: r0 = GDT[cid_x0 + 0x879f]()
    //     0x746118: mov             x17, #0x879f
    //     0x74611c: add             lr, x0, x17
    //     0x746120: ldr             lr, [x21, lr, lsl #3]
    //     0x746124: blr             lr
    // 0x746128: r3 = LoadInt32Instr(r0)
    //     0x746128: sbfx            x3, x0, #1, #0x1f
    // 0x74612c: ldur            x2, [fp, #-0x18]
    // 0x746130: stur            x3, [fp, #-0x20]
    // 0x746134: r1 = Function '<anonymous closure>':.
    //     0x746134: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb90] AnonymousClosure: (0x74618c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::build (0x746050)
    //     0x746138: ldr             x1, [x1, #0xb90]
    // 0x74613c: r0 = AllocateClosure()
    //     0x74613c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x746140: stur            x0, [fp, #-8]
    // 0x746144: r0 = ListView()
    //     0x746144: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x746148: stur            x0, [fp, #-0x10]
    // 0x74614c: r16 = Instance_EdgeInsets
    //     0x74614c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x746150: ldr             x16, [x16, #0x240]
    // 0x746154: str             x16, [SP]
    // 0x746158: mov             x1, x0
    // 0x74615c: ldur            x2, [fp, #-8]
    // 0x746160: ldur            x3, [fp, #-0x20]
    // 0x746164: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x746164: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x746168: ldr             x4, [x4, #0xe60]
    // 0x74616c: r0 = ListView.builder()
    //     0x74616c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x746170: ldur            x0, [fp, #-0x10]
    // 0x746174: LeaveFrame
    //     0x746174: mov             SP, fp
    //     0x746178: ldp             fp, lr, [SP], #0x10
    // 0x74617c: ret
    //     0x74617c: ret             
    // 0x746180: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x746180: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x746184: b               #0x746070
    // 0x746188: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x746188: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x74618c, size: 0x8c
    // 0x74618c: EnterFrame
    //     0x74618c: stp             fp, lr, [SP, #-0x10]!
    //     0x746190: mov             fp, SP
    // 0x746194: AllocStack(0x18)
    //     0x746194: sub             SP, SP, #0x18
    // 0x746198: SetupParameters([dynamic _ /* r0 */])
    //     0x746198: ldr             x0, [fp, #0x20]
    //     0x74619c: ldur            w1, [x0, #0x17]
    //     0x7461a0: add             x1, x1, HEAP, lsl #32
    // 0x7461a4: CheckStackOverflow
    //     0x7461a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7461a8: cmp             SP, x16
    //     0x7461ac: b.ls            #0x74620c
    // 0x7461b0: LoadField: r2 = r1->field_f
    //     0x7461b0: ldur            w2, [x1, #0xf]
    // 0x7461b4: DecompressPointer r2
    //     0x7461b4: add             x2, x2, HEAP, lsl #32
    // 0x7461b8: stur            x2, [fp, #-8]
    // 0x7461bc: LoadField: r0 = r2->field_b
    //     0x7461bc: ldur            w0, [x2, #0xb]
    // 0x7461c0: DecompressPointer r0
    //     0x7461c0: add             x0, x0, HEAP, lsl #32
    // 0x7461c4: cmp             w0, NULL
    // 0x7461c8: b.eq            #0x746214
    // 0x7461cc: LoadField: r1 = r0->field_b
    //     0x7461cc: ldur            w1, [x0, #0xb]
    // 0x7461d0: DecompressPointer r1
    //     0x7461d0: add             x1, x1, HEAP, lsl #32
    // 0x7461d4: r0 = LoadClassIdInstr(r1)
    //     0x7461d4: ldur            x0, [x1, #-1]
    //     0x7461d8: ubfx            x0, x0, #0xc, #0x14
    // 0x7461dc: ldr             x16, [fp, #0x10]
    // 0x7461e0: stp             x16, x1, [SP]
    // 0x7461e4: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x7461e4: sub             lr, x0, #0xdfc
    //     0x7461e8: ldr             lr, [x21, lr, lsl #3]
    //     0x7461ec: blr             lr
    // 0x7461f0: ldur            x1, [fp, #-8]
    // 0x7461f4: ldr             x2, [fp, #0x18]
    // 0x7461f8: mov             x3, x0
    // 0x7461fc: r0 = _buildRoomCard()
    //     0x7461fc: bl              #0x746218  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_buildRoomCard
    // 0x746200: LeaveFrame
    //     0x746200: mov             SP, fp
    //     0x746204: ldp             fp, lr, [SP], #0x10
    // 0x746208: ret
    //     0x746208: ret             
    // 0x74620c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74620c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x746210: b               #0x7461b0
    // 0x746214: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x746214: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildRoomCard(/* No info */) {
    // ** addr: 0x746218, size: 0xb4c
    // 0x746218: EnterFrame
    //     0x746218: stp             fp, lr, [SP, #-0x10]!
    //     0x74621c: mov             fp, SP
    // 0x746220: AllocStack(0x80)
    //     0x746220: sub             SP, SP, #0x80
    // 0x746224: SetupParameters(RoomsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x746224: stur            x1, [fp, #-8]
    //     0x746228: stur            x2, [fp, #-0x10]
    //     0x74622c: stur            x3, [fp, #-0x18]
    // 0x746230: CheckStackOverflow
    //     0x746230: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x746234: cmp             SP, x16
    //     0x746238: b.ls            #0x746d58
    // 0x74623c: r1 = 3
    //     0x74623c: mov             x1, #3
    // 0x746240: r0 = AllocateContext()
    //     0x746240: bl              #0x927010  ; AllocateContextStub
    // 0x746244: mov             x3, x0
    // 0x746248: ldur            x0, [fp, #-8]
    // 0x74624c: stur            x3, [fp, #-0x20]
    // 0x746250: StoreField: r3->field_f = r0
    //     0x746250: stur            w0, [x3, #0xf]
    // 0x746254: ldur            x1, [fp, #-0x10]
    // 0x746258: StoreField: r3->field_13 = r1
    //     0x746258: stur            w1, [x3, #0x13]
    // 0x74625c: ldur            x1, [fp, #-0x18]
    // 0x746260: ArrayStore: r3[0] = r1  ; List_4
    //     0x746260: stur            w1, [x3, #0x17]
    // 0x746264: LoadField: r1 = r0->field_b
    //     0x746264: ldur            w1, [x0, #0xb]
    // 0x746268: DecompressPointer r1
    //     0x746268: add             x1, x1, HEAP, lsl #32
    // 0x74626c: cmp             w1, NULL
    // 0x746270: b.eq            #0x746d60
    // 0x746274: LoadField: r4 = r1->field_f
    //     0x746274: ldur            w4, [x1, #0xf]
    // 0x746278: DecompressPointer r4
    //     0x746278: add             x4, x4, HEAP, lsl #32
    // 0x74627c: mov             x2, x3
    // 0x746280: stur            x4, [fp, #-0x10]
    // 0x746284: r1 = Function '<anonymous closure>':.
    //     0x746284: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fb98] AnonymousClosure: (0x74836c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_buildRoomCard (0x746218)
    //     0x746288: ldr             x1, [x1, #0xb98]
    // 0x74628c: r0 = AllocateClosure()
    //     0x74628c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x746290: ldur            x1, [fp, #-0x10]
    // 0x746294: r2 = LoadClassIdInstr(r1)
    //     0x746294: ldur            x2, [x1, #-1]
    //     0x746298: ubfx            x2, x2, #0xc, #0x14
    // 0x74629c: mov             x16, x0
    // 0x7462a0: mov             x0, x2
    // 0x7462a4: mov             x2, x16
    // 0x7462a8: r0 = GDT[cid_x0 + 0xd348]()
    //     0x7462a8: mov             x17, #0xd348
    //     0x7462ac: add             lr, x0, x17
    //     0x7462b0: ldr             lr, [x21, lr, lsl #3]
    //     0x7462b4: blr             lr
    // 0x7462b8: r16 = <HotelModel>
    //     0x7462b8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x7462bc: ldr             x16, [x16, #0xda8]
    // 0x7462c0: stp             x0, x16, [SP]
    // 0x7462c4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7462c4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7462c8: r0 = IterableExtensions.firstOrNull()
    //     0x7462c8: bl              #0x617ba4  ; [dart:collection] ::IterableExtensions.firstOrNull
    // 0x7462cc: ldur            x1, [fp, #-8]
    // 0x7462d0: stur            x0, [fp, #-8]
    // 0x7462d4: r0 = onDataChanged()
    //     0x7462d4: bl              #0x617b5c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::onDataChanged
    // 0x7462d8: ldur            x2, [fp, #-0x20]
    // 0x7462dc: r1 = Function '<anonymous closure>':.
    //     0x7462dc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fba0] AnonymousClosure: (0x7482b0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_buildRoomCard (0x746218)
    //     0x7462e0: ldr             x1, [x1, #0xba0]
    // 0x7462e4: stur            x0, [fp, #-0x10]
    // 0x7462e8: r0 = AllocateClosure()
    //     0x7462e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7462ec: ldur            x1, [fp, #-0x10]
    // 0x7462f0: r2 = LoadClassIdInstr(r1)
    //     0x7462f0: ldur            x2, [x1, #-1]
    //     0x7462f4: ubfx            x2, x2, #0xc, #0x14
    // 0x7462f8: mov             x16, x0
    // 0x7462fc: mov             x0, x2
    // 0x746300: mov             x2, x16
    // 0x746304: r0 = GDT[cid_x0 + 0xd348]()
    //     0x746304: mov             x17, #0xd348
    //     0x746308: add             lr, x0, x17
    //     0x74630c: ldr             lr, [x21, lr, lsl #3]
    //     0x746310: blr             lr
    // 0x746314: LoadField: r1 = r0->field_7
    //     0x746314: ldur            w1, [x0, #7]
    // 0x746318: DecompressPointer r1
    //     0x746318: add             x1, x1, HEAP, lsl #32
    // 0x74631c: mov             x2, x0
    // 0x746320: r0 = _GrowableList.of()
    //     0x746320: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x746324: stur            x0, [fp, #-0x18]
    // 0x746328: LoadField: r2 = r0->field_b
    //     0x746328: ldur            w2, [x0, #0xb]
    // 0x74632c: stur            x2, [fp, #-0x10]
    // 0x746330: r16 = 0.080000
    //     0x746330: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x746334: ldr             x16, [x16, #0xe30]
    // 0x746338: str             x16, [SP]
    // 0x74633c: r1 = Instance_Color
    //     0x74633c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x746340: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x746340: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x746344: ldr             x4, [x4, #0x198]
    // 0x746348: r0 = withValues()
    //     0x746348: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x74634c: stur            x0, [fp, #-0x28]
    // 0x746350: r0 = Radius()
    //     0x746350: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x746354: d0 = 12.000000
    //     0x746354: fmov            d0, #12.00000000
    // 0x746358: stur            x0, [fp, #-0x30]
    // 0x74635c: StoreField: r0->field_7 = d0
    //     0x74635c: stur            d0, [x0, #7]
    // 0x746360: StoreField: r0->field_f = d0
    //     0x746360: stur            d0, [x0, #0xf]
    // 0x746364: r0 = BorderRadius()
    //     0x746364: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x746368: mov             x1, x0
    // 0x74636c: ldur            x0, [fp, #-0x30]
    // 0x746370: stur            x1, [fp, #-0x38]
    // 0x746374: StoreField: r1->field_7 = r0
    //     0x746374: stur            w0, [x1, #7]
    // 0x746378: StoreField: r1->field_b = r0
    //     0x746378: stur            w0, [x1, #0xb]
    // 0x74637c: StoreField: r1->field_f = r0
    //     0x74637c: stur            w0, [x1, #0xf]
    // 0x746380: StoreField: r1->field_13 = r0
    //     0x746380: stur            w0, [x1, #0x13]
    // 0x746384: r0 = BoxDecoration()
    //     0x746384: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x746388: mov             x3, x0
    // 0x74638c: ldur            x0, [fp, #-0x28]
    // 0x746390: stur            x3, [fp, #-0x30]
    // 0x746394: StoreField: r3->field_7 = r0
    //     0x746394: stur            w0, [x3, #7]
    // 0x746398: ldur            x0, [fp, #-0x38]
    // 0x74639c: StoreField: r3->field_13 = r0
    //     0x74639c: stur            w0, [x3, #0x13]
    // 0x7463a0: r0 = Instance_BoxShape
    //     0x7463a0: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7463a4: ldr             x0, [x0, #0x1c8]
    // 0x7463a8: StoreField: r3->field_23 = r0
    //     0x7463a8: stur            w0, [x3, #0x23]
    // 0x7463ac: r1 = Null
    //     0x7463ac: mov             x1, NULL
    // 0x7463b0: r2 = 4
    //     0x7463b0: mov             x2, #4
    // 0x7463b4: r0 = AllocateArray()
    //     0x7463b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7463b8: r16 = "Oda "
    //     0x7463b8: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cb0] "Oda "
    //     0x7463bc: ldr             x16, [x16, #0xcb0]
    // 0x7463c0: StoreField: r0->field_f = r16
    //     0x7463c0: stur            w16, [x0, #0xf]
    // 0x7463c4: ldur            x2, [fp, #-0x20]
    // 0x7463c8: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x7463c8: ldur            w1, [x2, #0x17]
    // 0x7463cc: DecompressPointer r1
    //     0x7463cc: add             x1, x1, HEAP, lsl #32
    // 0x7463d0: LoadField: r3 = r1->field_f
    //     0x7463d0: ldur            w3, [x1, #0xf]
    // 0x7463d4: DecompressPointer r3
    //     0x7463d4: add             x3, x3, HEAP, lsl #32
    // 0x7463d8: StoreField: r0->field_13 = r3
    //     0x7463d8: stur            w3, [x0, #0x13]
    // 0x7463dc: str             x0, [SP]
    // 0x7463e0: r0 = _interpolate()
    //     0x7463e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7463e4: stur            x0, [fp, #-0x28]
    // 0x7463e8: r0 = Text()
    //     0x7463e8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7463ec: mov             x2, x0
    // 0x7463f0: ldur            x0, [fp, #-0x28]
    // 0x7463f4: stur            x2, [fp, #-0x38]
    // 0x7463f8: StoreField: r2->field_b = r0
    //     0x7463f8: stur            w0, [x2, #0xb]
    // 0x7463fc: r0 = Instance_TextStyle
    //     0x7463fc: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x746400: ldr             x0, [x0, #0xaf0]
    // 0x746404: StoreField: r2->field_13 = r0
    //     0x746404: stur            w0, [x2, #0x13]
    // 0x746408: r1 = <FlexParentData>
    //     0x746408: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x74640c: ldr             x1, [x1, #0x340]
    // 0x746410: r0 = Expanded()
    //     0x746410: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x746414: mov             x2, x0
    // 0x746418: r0 = 1
    //     0x746418: mov             x0, #1
    // 0x74641c: stur            x2, [fp, #-0x28]
    // 0x746420: StoreField: r2->field_13 = r0
    //     0x746420: stur            x0, [x2, #0x13]
    // 0x746424: r0 = Instance_FlexFit
    //     0x746424: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x746428: ldr             x0, [x0, #0x348]
    // 0x74642c: StoreField: r2->field_1b = r0
    //     0x74642c: stur            w0, [x2, #0x1b]
    // 0x746430: ldur            x0, [fp, #-0x38]
    // 0x746434: StoreField: r2->field_b = r0
    //     0x746434: stur            w0, [x2, #0xb]
    // 0x746438: ldur            x0, [fp, #-0x20]
    // 0x74643c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74643c: ldur            w1, [x0, #0x17]
    // 0x746440: DecompressPointer r1
    //     0x746440: add             x1, x1, HEAP, lsl #32
    // 0x746444: LoadField: r3 = r1->field_13
    //     0x746444: ldur            x3, [x1, #0x13]
    // 0x746448: ldur            x4, [fp, #-0x10]
    // 0x74644c: r5 = LoadInt32Instr(r4)
    //     0x74644c: sbfx            x5, x4, #1, #0x1f
    // 0x746450: stur            x5, [fp, #-0x40]
    // 0x746454: cmp             x5, x3
    // 0x746458: b.lt            #0x746484
    // 0x74645c: r16 = 0.300000
    //     0x74645c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x746460: ldr             x16, [x16, #0x320]
    // 0x746464: str             x16, [SP]
    // 0x746468: r1 = Instance_MaterialColor
    //     0x746468: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x74646c: ldr             x1, [x1, #0xb90]
    // 0x746470: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x746470: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x746474: ldr             x4, [x4, #0x198]
    // 0x746478: r0 = withValues()
    //     0x746478: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x74647c: mov             x1, x0
    // 0x746480: b               #0x7464d8
    // 0x746484: mov             x0, x5
    // 0x746488: cmp             x0, #0
    // 0x74648c: b.le            #0x7464b4
    // 0x746490: r16 = 0.300000
    //     0x746490: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x746494: ldr             x16, [x16, #0x320]
    // 0x746498: str             x16, [SP]
    // 0x74649c: r1 = Instance_MaterialColor
    //     0x74649c: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x7464a0: ldr             x1, [x1, #0x1f8]
    // 0x7464a4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7464a4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7464a8: ldr             x4, [x4, #0x198]
    // 0x7464ac: r0 = withValues()
    //     0x7464ac: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7464b0: b               #0x7464d4
    // 0x7464b4: r16 = 0.300000
    //     0x7464b4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x7464b8: ldr             x16, [x16, #0x320]
    // 0x7464bc: str             x16, [SP]
    // 0x7464c0: r1 = Instance_MaterialColor
    //     0x7464c0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7464c4: ldr             x1, [x1, #0xbc8]
    // 0x7464c8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7464c8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7464cc: ldr             x4, [x4, #0x198]
    // 0x7464d0: r0 = withValues()
    //     0x7464d0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7464d4: mov             x1, x0
    // 0x7464d8: ldur            x2, [fp, #-0x20]
    // 0x7464dc: ldur            x0, [fp, #-0x40]
    // 0x7464e0: stur            x1, [fp, #-0x38]
    // 0x7464e4: r0 = Radius()
    //     0x7464e4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7464e8: d0 = 12.000000
    //     0x7464e8: fmov            d0, #12.00000000
    // 0x7464ec: stur            x0, [fp, #-0x48]
    // 0x7464f0: StoreField: r0->field_7 = d0
    //     0x7464f0: stur            d0, [x0, #7]
    // 0x7464f4: StoreField: r0->field_f = d0
    //     0x7464f4: stur            d0, [x0, #0xf]
    // 0x7464f8: r0 = BorderRadius()
    //     0x7464f8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7464fc: mov             x1, x0
    // 0x746500: ldur            x0, [fp, #-0x48]
    // 0x746504: stur            x1, [fp, #-0x50]
    // 0x746508: StoreField: r1->field_7 = r0
    //     0x746508: stur            w0, [x1, #7]
    // 0x74650c: StoreField: r1->field_b = r0
    //     0x74650c: stur            w0, [x1, #0xb]
    // 0x746510: StoreField: r1->field_f = r0
    //     0x746510: stur            w0, [x1, #0xf]
    // 0x746514: StoreField: r1->field_13 = r0
    //     0x746514: stur            w0, [x1, #0x13]
    // 0x746518: r0 = BoxDecoration()
    //     0x746518: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x74651c: mov             x1, x0
    // 0x746520: ldur            x0, [fp, #-0x38]
    // 0x746524: stur            x1, [fp, #-0x48]
    // 0x746528: StoreField: r1->field_7 = r0
    //     0x746528: stur            w0, [x1, #7]
    // 0x74652c: ldur            x0, [fp, #-0x50]
    // 0x746530: StoreField: r1->field_13 = r0
    //     0x746530: stur            w0, [x1, #0x13]
    // 0x746534: r0 = Instance_BoxShape
    //     0x746534: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x746538: ldr             x0, [x0, #0x1c8]
    // 0x74653c: StoreField: r1->field_23 = r0
    //     0x74653c: stur            w0, [x1, #0x23]
    // 0x746540: ldur            x2, [fp, #-0x20]
    // 0x746544: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x746544: ldur            w0, [x2, #0x17]
    // 0x746548: DecompressPointer r0
    //     0x746548: add             x0, x0, HEAP, lsl #32
    // 0x74654c: LoadField: r3 = r0->field_13
    //     0x74654c: ldur            x3, [x0, #0x13]
    // 0x746550: ldur            x0, [fp, #-0x40]
    // 0x746554: stur            x3, [fp, #-0x58]
    // 0x746558: cmp             x0, x3
    // 0x74655c: b.lt            #0x74656c
    // 0x746560: r5 = Instance_MaterialAccentColor
    //     0x746560: add             x5, PP, #0x1a, lsl #12  ; [pp+0x1a3b0] Obj!MaterialAccentColor@a25961
    //     0x746564: ldr             x5, [x5, #0x3b0]
    // 0x746568: b               #0x74658c
    // 0x74656c: cmp             x0, #0
    // 0x746570: b.le            #0x746580
    // 0x746574: r4 = Instance_MaterialAccentColor
    //     0x746574: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fba8] Obj!MaterialAccentColor@a259e1
    //     0x746578: ldr             x4, [x4, #0xba8]
    // 0x74657c: b               #0x746588
    // 0x746580: r4 = Instance_Color
    //     0x746580: add             x4, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x746584: ldr             x4, [x4, #0x1e8]
    // 0x746588: mov             x5, x4
    // 0x74658c: ldur            x4, [fp, #-0x10]
    // 0x746590: stur            x5, [fp, #-0x38]
    // 0x746594: r0 = Icon()
    //     0x746594: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x746598: mov             x3, x0
    // 0x74659c: r0 = Instance_IconData
    //     0x74659c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ee8] Obj!IconData@a0a141
    //     0x7465a0: ldr             x0, [x0, #0xee8]
    // 0x7465a4: stur            x3, [fp, #-0x50]
    // 0x7465a8: StoreField: r3->field_b = r0
    //     0x7465a8: stur            w0, [x3, #0xb]
    // 0x7465ac: r1 = 14.000000
    //     0x7465ac: add             x1, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7465b0: ldr             x1, [x1, #0x1c8]
    // 0x7465b4: StoreField: r3->field_f = r1
    //     0x7465b4: stur            w1, [x3, #0xf]
    // 0x7465b8: ldur            x1, [fp, #-0x38]
    // 0x7465bc: StoreField: r3->field_23 = r1
    //     0x7465bc: stur            w1, [x3, #0x23]
    // 0x7465c0: r1 = Null
    //     0x7465c0: mov             x1, NULL
    // 0x7465c4: r2 = 6
    //     0x7465c4: mov             x2, #6
    // 0x7465c8: r0 = AllocateArray()
    //     0x7465c8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7465cc: mov             x2, x0
    // 0x7465d0: ldur            x0, [fp, #-0x10]
    // 0x7465d4: StoreField: r2->field_f = r0
    //     0x7465d4: stur            w0, [x2, #0xf]
    // 0x7465d8: r16 = "/"
    //     0x7465d8: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x7465dc: StoreField: r2->field_13 = r16
    //     0x7465dc: stur            w16, [x2, #0x13]
    // 0x7465e0: ldur            x3, [fp, #-0x58]
    // 0x7465e4: r0 = BoxInt64Instr(r3)
    //     0x7465e4: sbfiz           x0, x3, #1, #0x1f
    //     0x7465e8: cmp             x3, x0, asr #1
    //     0x7465ec: b.eq            #0x7465f8
    //     0x7465f0: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7465f4: stur            x3, [x0, #7]
    // 0x7465f8: ArrayStore: r2[0] = r0  ; List_4
    //     0x7465f8: stur            w0, [x2, #0x17]
    // 0x7465fc: str             x2, [SP]
    // 0x746600: r0 = _interpolate()
    //     0x746600: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x746604: ldur            x2, [fp, #-0x20]
    // 0x746608: stur            x0, [fp, #-0x38]
    // 0x74660c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x74660c: ldur            w1, [x2, #0x17]
    // 0x746610: DecompressPointer r1
    //     0x746610: add             x1, x1, HEAP, lsl #32
    // 0x746614: LoadField: r3 = r1->field_13
    //     0x746614: ldur            x3, [x1, #0x13]
    // 0x746618: ldur            x1, [fp, #-0x40]
    // 0x74661c: cmp             x1, x3
    // 0x746620: b.lt            #0x746630
    // 0x746624: r5 = Instance_MaterialAccentColor
    //     0x746624: add             x5, PP, #0x1a, lsl #12  ; [pp+0x1a3b0] Obj!MaterialAccentColor@a25961
    //     0x746628: ldr             x5, [x5, #0x3b0]
    // 0x74662c: b               #0x746650
    // 0x746630: cmp             x1, #0
    // 0x746634: b.le            #0x746644
    // 0x746638: r1 = Instance_MaterialAccentColor
    //     0x746638: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fba8] Obj!MaterialAccentColor@a259e1
    //     0x74663c: ldr             x1, [x1, #0xba8]
    // 0x746640: b               #0x74664c
    // 0x746644: r1 = Instance_Color
    //     0x746644: add             x1, PP, #0x19, lsl #12  ; [pp+0x191e8] Obj!Color@a25301
    //     0x746648: ldr             x1, [x1, #0x1e8]
    // 0x74664c: mov             x5, x1
    // 0x746650: ldur            x4, [fp, #-8]
    // 0x746654: ldur            x3, [fp, #-0x28]
    // 0x746658: ldur            x1, [fp, #-0x50]
    // 0x74665c: stur            x5, [fp, #-0x10]
    // 0x746660: r0 = TextStyle()
    //     0x746660: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x746664: mov             x1, x0
    // 0x746668: r0 = true
    //     0x746668: add             x0, NULL, #0x20  ; true
    // 0x74666c: stur            x1, [fp, #-0x60]
    // 0x746670: StoreField: r1->field_7 = r0
    //     0x746670: stur            w0, [x1, #7]
    // 0x746674: ldur            x2, [fp, #-0x10]
    // 0x746678: StoreField: r1->field_b = r2
    //     0x746678: stur            w2, [x1, #0xb]
    // 0x74667c: r2 = 12.000000
    //     0x74667c: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x746680: ldr             x2, [x2, #0xae0]
    // 0x746684: StoreField: r1->field_1f = r2
    //     0x746684: stur            w2, [x1, #0x1f]
    // 0x746688: r3 = Instance_FontWeight
    //     0x746688: add             x3, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x74668c: ldr             x3, [x3, #0x990]
    // 0x746690: StoreField: r1->field_23 = r3
    //     0x746690: stur            w3, [x1, #0x23]
    // 0x746694: r0 = Text()
    //     0x746694: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x746698: mov             x3, x0
    // 0x74669c: ldur            x0, [fp, #-0x38]
    // 0x7466a0: stur            x3, [fp, #-0x10]
    // 0x7466a4: StoreField: r3->field_b = r0
    //     0x7466a4: stur            w0, [x3, #0xb]
    // 0x7466a8: ldur            x0, [fp, #-0x60]
    // 0x7466ac: StoreField: r3->field_13 = r0
    //     0x7466ac: stur            w0, [x3, #0x13]
    // 0x7466b0: r1 = Null
    //     0x7466b0: mov             x1, NULL
    // 0x7466b4: r2 = 6
    //     0x7466b4: mov             x2, #6
    // 0x7466b8: r0 = AllocateArray()
    //     0x7466b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7466bc: mov             x2, x0
    // 0x7466c0: ldur            x0, [fp, #-0x50]
    // 0x7466c4: stur            x2, [fp, #-0x38]
    // 0x7466c8: StoreField: r2->field_f = r0
    //     0x7466c8: stur            w0, [x2, #0xf]
    // 0x7466cc: r16 = Instance_SizedBox
    //     0x7466cc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7466d0: ldr             x16, [x16, #0xf68]
    // 0x7466d4: StoreField: r2->field_13 = r16
    //     0x7466d4: stur            w16, [x2, #0x13]
    // 0x7466d8: ldur            x0, [fp, #-0x10]
    // 0x7466dc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7466dc: stur            w0, [x2, #0x17]
    // 0x7466e0: r1 = <Widget>
    //     0x7466e0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7466e4: r0 = AllocateGrowableArray()
    //     0x7466e4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7466e8: mov             x1, x0
    // 0x7466ec: ldur            x0, [fp, #-0x38]
    // 0x7466f0: stur            x1, [fp, #-0x10]
    // 0x7466f4: StoreField: r1->field_f = r0
    //     0x7466f4: stur            w0, [x1, #0xf]
    // 0x7466f8: r2 = 6
    //     0x7466f8: mov             x2, #6
    // 0x7466fc: StoreField: r1->field_b = r2
    //     0x7466fc: stur            w2, [x1, #0xb]
    // 0x746700: r0 = Row()
    //     0x746700: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x746704: mov             x1, x0
    // 0x746708: r0 = Instance_Axis
    //     0x746708: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x74670c: stur            x1, [fp, #-0x38]
    // 0x746710: StoreField: r1->field_f = r0
    //     0x746710: stur            w0, [x1, #0xf]
    // 0x746714: r2 = Instance_MainAxisAlignment
    //     0x746714: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x746718: ldr             x2, [x2, #0x230]
    // 0x74671c: StoreField: r1->field_13 = r2
    //     0x74671c: stur            w2, [x1, #0x13]
    // 0x746720: r3 = Instance_MainAxisSize
    //     0x746720: add             x3, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x746724: ldr             x3, [x3, #0xb60]
    // 0x746728: ArrayStore: r1[0] = r3  ; List_4
    //     0x746728: stur            w3, [x1, #0x17]
    // 0x74672c: r3 = Instance_CrossAxisAlignment
    //     0x74672c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x746730: ldr             x3, [x3, #0x338]
    // 0x746734: StoreField: r1->field_1b = r3
    //     0x746734: stur            w3, [x1, #0x1b]
    // 0x746738: r4 = Instance_VerticalDirection
    //     0x746738: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x74673c: ldr             x4, [x4, #0x340]
    // 0x746740: StoreField: r1->field_23 = r4
    //     0x746740: stur            w4, [x1, #0x23]
    // 0x746744: r5 = Instance_Clip
    //     0x746744: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x746748: ldr             x5, [x5, #0x348]
    // 0x74674c: StoreField: r1->field_2b = r5
    //     0x74674c: stur            w5, [x1, #0x2b]
    // 0x746750: StoreField: r1->field_2f = rZR
    //     0x746750: stur            xzr, [x1, #0x2f]
    // 0x746754: ldur            x6, [fp, #-0x10]
    // 0x746758: StoreField: r1->field_b = r6
    //     0x746758: stur            w6, [x1, #0xb]
    // 0x74675c: r0 = Container()
    //     0x74675c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x746760: stur            x0, [fp, #-0x10]
    // 0x746764: r16 = Instance_EdgeInsets
    //     0x746764: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a508] Obj!EdgeInsets@a0c351
    //     0x746768: ldr             x16, [x16, #0x508]
    // 0x74676c: ldur            lr, [fp, #-0x48]
    // 0x746770: stp             lr, x16, [SP, #8]
    // 0x746774: ldur            x16, [fp, #-0x38]
    // 0x746778: str             x16, [SP]
    // 0x74677c: mov             x1, x0
    // 0x746780: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x746780: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x746784: ldr             x4, [x4, #0x1e8]
    // 0x746788: r0 = Container()
    //     0x746788: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x74678c: ldur            x2, [fp, #-0x20]
    // 0x746790: r1 = Function '<anonymous closure>':.
    //     0x746790: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fbb0] AnonymousClosure: (0x748258), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_buildRoomCard (0x746218)
    //     0x746794: ldr             x1, [x1, #0xbb0]
    // 0x746798: r0 = AllocateClosure()
    //     0x746798: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74679c: stur            x0, [fp, #-0x38]
    // 0x7467a0: r0 = IconButton()
    //     0x7467a0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7467a4: mov             x3, x0
    // 0x7467a8: ldur            x0, [fp, #-0x38]
    // 0x7467ac: stur            x3, [fp, #-0x48]
    // 0x7467b0: StoreField: r3->field_3b = r0
    //     0x7467b0: stur            w0, [x3, #0x3b]
    // 0x7467b4: r0 = false
    //     0x7467b4: add             x0, NULL, #0x30  ; false
    // 0x7467b8: StoreField: r3->field_4f = r0
    //     0x7467b8: stur            w0, [x3, #0x4f]
    // 0x7467bc: r1 = Instance_Icon
    //     0x7467bc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa58] Obj!Icon@a1ed71
    //     0x7467c0: ldr             x1, [x1, #0xa58]
    // 0x7467c4: StoreField: r3->field_1f = r1
    //     0x7467c4: stur            w1, [x3, #0x1f]
    // 0x7467c8: r4 = Instance__IconButtonVariant
    //     0x7467c8: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7467cc: ldr             x4, [x4, #0x1b8]
    // 0x7467d0: StoreField: r3->field_6f = r4
    //     0x7467d0: stur            w4, [x3, #0x6f]
    // 0x7467d4: ldur            x2, [fp, #-0x20]
    // 0x7467d8: r1 = Function '<anonymous closure>':.
    //     0x7467d8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fbb8] AnonymousClosure: (0x747d00), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_buildRoomCard (0x746218)
    //     0x7467dc: ldr             x1, [x1, #0xbb8]
    // 0x7467e0: r0 = AllocateClosure()
    //     0x7467e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7467e4: stur            x0, [fp, #-0x38]
    // 0x7467e8: r0 = IconButton()
    //     0x7467e8: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7467ec: mov             x3, x0
    // 0x7467f0: ldur            x0, [fp, #-0x38]
    // 0x7467f4: stur            x3, [fp, #-0x50]
    // 0x7467f8: StoreField: r3->field_3b = r0
    //     0x7467f8: stur            w0, [x3, #0x3b]
    // 0x7467fc: r0 = false
    //     0x7467fc: add             x0, NULL, #0x30  ; false
    // 0x746800: StoreField: r3->field_4f = r0
    //     0x746800: stur            w0, [x3, #0x4f]
    // 0x746804: r0 = Instance_Icon
    //     0x746804: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fa68] Obj!Icon@a1e471
    //     0x746808: ldr             x0, [x0, #0xa68]
    // 0x74680c: StoreField: r3->field_1f = r0
    //     0x74680c: stur            w0, [x3, #0x1f]
    // 0x746810: r0 = Instance__IconButtonVariant
    //     0x746810: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x746814: ldr             x0, [x0, #0x1b8]
    // 0x746818: StoreField: r3->field_6f = r0
    //     0x746818: stur            w0, [x3, #0x6f]
    // 0x74681c: r1 = Null
    //     0x74681c: mov             x1, NULL
    // 0x746820: r2 = 14
    //     0x746820: mov             x2, #0xe
    // 0x746824: r0 = AllocateArray()
    //     0x746824: bl              #0x9280a0  ; AllocateArrayStub
    // 0x746828: stur            x0, [fp, #-0x38]
    // 0x74682c: r16 = Instance_Icon
    //     0x74682c: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fbc0] Obj!Icon@a1ee31
    //     0x746830: ldr             x16, [x16, #0xbc0]
    // 0x746834: StoreField: r0->field_f = r16
    //     0x746834: stur            w16, [x0, #0xf]
    // 0x746838: r16 = Instance_SizedBox
    //     0x746838: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x74683c: ldr             x16, [x16, #0x368]
    // 0x746840: StoreField: r0->field_13 = r16
    //     0x746840: stur            w16, [x0, #0x13]
    // 0x746844: ldur            x1, [fp, #-0x28]
    // 0x746848: ArrayStore: r0[0] = r1  ; List_4
    //     0x746848: stur            w1, [x0, #0x17]
    // 0x74684c: ldur            x1, [fp, #-0x10]
    // 0x746850: StoreField: r0->field_1b = r1
    //     0x746850: stur            w1, [x0, #0x1b]
    // 0x746854: r16 = Instance_SizedBox
    //     0x746854: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x746858: ldr             x16, [x16, #0xf68]
    // 0x74685c: StoreField: r0->field_1f = r16
    //     0x74685c: stur            w16, [x0, #0x1f]
    // 0x746860: ldur            x1, [fp, #-0x48]
    // 0x746864: StoreField: r0->field_23 = r1
    //     0x746864: stur            w1, [x0, #0x23]
    // 0x746868: ldur            x1, [fp, #-0x50]
    // 0x74686c: StoreField: r0->field_27 = r1
    //     0x74686c: stur            w1, [x0, #0x27]
    // 0x746870: r1 = <Widget>
    //     0x746870: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x746874: r0 = AllocateGrowableArray()
    //     0x746874: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x746878: mov             x1, x0
    // 0x74687c: ldur            x0, [fp, #-0x38]
    // 0x746880: stur            x1, [fp, #-0x10]
    // 0x746884: StoreField: r1->field_f = r0
    //     0x746884: stur            w0, [x1, #0xf]
    // 0x746888: r0 = 14
    //     0x746888: mov             x0, #0xe
    // 0x74688c: StoreField: r1->field_b = r0
    //     0x74688c: stur            w0, [x1, #0xb]
    // 0x746890: r0 = Row()
    //     0x746890: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x746894: mov             x4, x0
    // 0x746898: r0 = Instance_Axis
    //     0x746898: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x74689c: stur            x4, [fp, #-0x28]
    // 0x7468a0: StoreField: r4->field_f = r0
    //     0x7468a0: stur            w0, [x4, #0xf]
    // 0x7468a4: r5 = Instance_MainAxisAlignment
    //     0x7468a4: add             x5, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7468a8: ldr             x5, [x5, #0x230]
    // 0x7468ac: StoreField: r4->field_13 = r5
    //     0x7468ac: stur            w5, [x4, #0x13]
    // 0x7468b0: r6 = Instance_MainAxisSize
    //     0x7468b0: add             x6, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7468b4: ldr             x6, [x6, #0x330]
    // 0x7468b8: ArrayStore: r4[0] = r6  ; List_4
    //     0x7468b8: stur            w6, [x4, #0x17]
    // 0x7468bc: r7 = Instance_CrossAxisAlignment
    //     0x7468bc: add             x7, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7468c0: ldr             x7, [x7, #0x338]
    // 0x7468c4: StoreField: r4->field_1b = r7
    //     0x7468c4: stur            w7, [x4, #0x1b]
    // 0x7468c8: r8 = Instance_VerticalDirection
    //     0x7468c8: add             x8, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7468cc: ldr             x8, [x8, #0x340]
    // 0x7468d0: StoreField: r4->field_23 = r8
    //     0x7468d0: stur            w8, [x4, #0x23]
    // 0x7468d4: r9 = Instance_Clip
    //     0x7468d4: add             x9, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7468d8: ldr             x9, [x9, #0x348]
    // 0x7468dc: StoreField: r4->field_2b = r9
    //     0x7468dc: stur            w9, [x4, #0x2b]
    // 0x7468e0: StoreField: r4->field_2f = rZR
    //     0x7468e0: stur            xzr, [x4, #0x2f]
    // 0x7468e4: ldur            x1, [fp, #-0x10]
    // 0x7468e8: StoreField: r4->field_b = r1
    //     0x7468e8: stur            w1, [x4, #0xb]
    // 0x7468ec: ldur            x1, [fp, #-8]
    // 0x7468f0: cmp             w1, NULL
    // 0x7468f4: b.ne            #0x746900
    // 0x7468f8: r1 = Null
    //     0x7468f8: mov             x1, NULL
    // 0x7468fc: b               #0x74690c
    // 0x746900: LoadField: r2 = r1->field_b
    //     0x746900: ldur            w2, [x1, #0xb]
    // 0x746904: DecompressPointer r2
    //     0x746904: add             x2, x2, HEAP, lsl #32
    // 0x746908: mov             x1, x2
    // 0x74690c: cmp             w1, NULL
    // 0x746910: b.ne            #0x746920
    // 0x746914: r3 = "Bilinmiyor"
    //     0x746914: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fbc8] "Bilinmiyor"
    //     0x746918: ldr             x3, [x3, #0xbc8]
    // 0x74691c: b               #0x746924
    // 0x746920: mov             x3, x1
    // 0x746924: ldur            x10, [fp, #-0x20]
    // 0x746928: r1 = Instance_IconData
    //     0x746928: add             x1, PP, #0x12, lsl #12  ; [pp+0x127a0] Obj!IconData@a09da1
    //     0x74692c: ldr             x1, [x1, #0x7a0]
    // 0x746930: r2 = "Otel"
    //     0x746930: add             x2, PP, #0x12, lsl #12  ; [pp+0x12798] "Otel"
    //     0x746934: ldr             x2, [x2, #0x798]
    // 0x746938: r0 = buildInfoRow()
    //     0x746938: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x74693c: mov             x4, x0
    // 0x746940: ldur            x3, [fp, #-0x20]
    // 0x746944: stur            x4, [fp, #-0x10]
    // 0x746948: ArrayLoad: r0 = r3[0]  ; List_4
    //     0x746948: ldur            w0, [x3, #0x17]
    // 0x74694c: DecompressPointer r0
    //     0x74694c: add             x0, x0, HEAP, lsl #32
    // 0x746950: LoadField: r2 = r0->field_13
    //     0x746950: ldur            x2, [x0, #0x13]
    // 0x746954: r0 = BoxInt64Instr(r2)
    //     0x746954: sbfiz           x0, x2, #1, #0x1f
    //     0x746958: cmp             x2, x0, asr #1
    //     0x74695c: b.eq            #0x746968
    //     0x746960: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x746964: stur            x2, [x0, #7]
    // 0x746968: r1 = Null
    //     0x746968: mov             x1, NULL
    // 0x74696c: r2 = 4
    //     0x74696c: mov             x2, #4
    // 0x746970: stur            x0, [fp, #-8]
    // 0x746974: r0 = AllocateArray()
    //     0x746974: bl              #0x9280a0  ; AllocateArrayStub
    // 0x746978: mov             x1, x0
    // 0x74697c: ldur            x0, [fp, #-8]
    // 0x746980: StoreField: r1->field_f = r0
    //     0x746980: stur            w0, [x1, #0xf]
    // 0x746984: r16 = " kişi"
    //     0x746984: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c370] " kişi"
    //     0x746988: ldr             x16, [x16, #0x370]
    // 0x74698c: StoreField: r1->field_13 = r16
    //     0x74698c: stur            w16, [x1, #0x13]
    // 0x746990: str             x1, [SP]
    // 0x746994: r0 = _interpolate()
    //     0x746994: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x746998: mov             x3, x0
    // 0x74699c: r1 = Instance_IconData
    //     0x74699c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ee8] Obj!IconData@a0a141
    //     0x7469a0: ldr             x1, [x1, #0xee8]
    // 0x7469a4: r2 = "Kapasite"
    //     0x7469a4: add             x2, PP, #0x19, lsl #12  ; [pp+0x19290] "Kapasite"
    //     0x7469a8: ldr             x2, [x2, #0x290]
    // 0x7469ac: r0 = buildInfoRow()
    //     0x7469ac: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x7469b0: r1 = Null
    //     0x7469b0: mov             x1, NULL
    // 0x7469b4: r2 = 8
    //     0x7469b4: mov             x2, #8
    // 0x7469b8: stur            x0, [fp, #-8]
    // 0x7469bc: r0 = AllocateArray()
    //     0x7469bc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7469c0: mov             x2, x0
    // 0x7469c4: ldur            x0, [fp, #-0x28]
    // 0x7469c8: stur            x2, [fp, #-0x38]
    // 0x7469cc: StoreField: r2->field_f = r0
    //     0x7469cc: stur            w0, [x2, #0xf]
    // 0x7469d0: r16 = Instance_SizedBox
    //     0x7469d0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7469d4: ldr             x16, [x16, #0x318]
    // 0x7469d8: StoreField: r2->field_13 = r16
    //     0x7469d8: stur            w16, [x2, #0x13]
    // 0x7469dc: ldur            x0, [fp, #-0x10]
    // 0x7469e0: ArrayStore: r2[0] = r0  ; List_4
    //     0x7469e0: stur            w0, [x2, #0x17]
    // 0x7469e4: ldur            x0, [fp, #-8]
    // 0x7469e8: StoreField: r2->field_1b = r0
    //     0x7469e8: stur            w0, [x2, #0x1b]
    // 0x7469ec: r1 = <Widget>
    //     0x7469ec: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7469f0: r0 = AllocateGrowableArray()
    //     0x7469f0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7469f4: mov             x4, x0
    // 0x7469f8: ldur            x0, [fp, #-0x38]
    // 0x7469fc: stur            x4, [fp, #-8]
    // 0x746a00: StoreField: r4->field_f = r0
    //     0x746a00: stur            w0, [x4, #0xf]
    // 0x746a04: r0 = 8
    //     0x746a04: mov             x0, #8
    // 0x746a08: StoreField: r4->field_b = r0
    //     0x746a08: stur            w0, [x4, #0xb]
    // 0x746a0c: ldur            x0, [fp, #-0x20]
    // 0x746a10: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x746a10: ldur            w1, [x0, #0x17]
    // 0x746a14: DecompressPointer r1
    //     0x746a14: add             x1, x1, HEAP, lsl #32
    // 0x746a18: LoadField: r3 = r1->field_1b
    //     0x746a18: ldur            w3, [x1, #0x1b]
    // 0x746a1c: DecompressPointer r3
    //     0x746a1c: add             x3, x3, HEAP, lsl #32
    // 0x746a20: cmp             w3, NULL
    // 0x746a24: b.eq            #0x746ac0
    // 0x746a28: r1 = Instance_IconData
    //     0x746a28: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fbd0] Obj!IconData@a0a7c1
    //     0x746a2c: ldr             x1, [x1, #0xbd0]
    // 0x746a30: r2 = "Cinsiyet"
    //     0x746a30: add             x2, PP, #0x19, lsl #12  ; [pp+0x19528] "Cinsiyet"
    //     0x746a34: ldr             x2, [x2, #0x528]
    // 0x746a38: r0 = buildInfoRow()
    //     0x746a38: bl              #0x745170  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildInfoRow
    // 0x746a3c: mov             x2, x0
    // 0x746a40: ldur            x0, [fp, #-8]
    // 0x746a44: stur            x2, [fp, #-0x10]
    // 0x746a48: LoadField: r1 = r0->field_b
    //     0x746a48: ldur            w1, [x0, #0xb]
    // 0x746a4c: LoadField: r3 = r0->field_f
    //     0x746a4c: ldur            w3, [x0, #0xf]
    // 0x746a50: DecompressPointer r3
    //     0x746a50: add             x3, x3, HEAP, lsl #32
    // 0x746a54: LoadField: r4 = r3->field_b
    //     0x746a54: ldur            w4, [x3, #0xb]
    // 0x746a58: r3 = LoadInt32Instr(r1)
    //     0x746a58: sbfx            x3, x1, #1, #0x1f
    // 0x746a5c: stur            x3, [fp, #-0x40]
    // 0x746a60: r1 = LoadInt32Instr(r4)
    //     0x746a60: sbfx            x1, x4, #1, #0x1f
    // 0x746a64: cmp             x3, x1
    // 0x746a68: b.ne            #0x746a74
    // 0x746a6c: mov             x1, x0
    // 0x746a70: r0 = _growToNextCapacity()
    //     0x746a70: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x746a74: ldur            x2, [fp, #-8]
    // 0x746a78: ldur            x3, [fp, #-0x40]
    // 0x746a7c: add             x0, x3, #1
    // 0x746a80: lsl             x1, x0, #1
    // 0x746a84: StoreField: r2->field_b = r1
    //     0x746a84: stur            w1, [x2, #0xb]
    // 0x746a88: LoadField: r1 = r2->field_f
    //     0x746a88: ldur            w1, [x2, #0xf]
    // 0x746a8c: DecompressPointer r1
    //     0x746a8c: add             x1, x1, HEAP, lsl #32
    // 0x746a90: ldur            x0, [fp, #-0x10]
    // 0x746a94: ArrayStore: r1[r3] = r0  ; List_4
    //     0x746a94: add             x25, x1, x3, lsl #2
    //     0x746a98: add             x25, x25, #0xf
    //     0x746a9c: str             w0, [x25]
    //     0x746aa0: tbz             w0, #0, #0x746abc
    //     0x746aa4: ldurb           w16, [x1, #-1]
    //     0x746aa8: ldurb           w17, [x0, #-1]
    //     0x746aac: and             x16, x17, x16, lsr #2
    //     0x746ab0: tst             x16, HEAP, lsr #32
    //     0x746ab4: b.eq            #0x746abc
    //     0x746ab8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x746abc: b               #0x746ac4
    // 0x746ac0: mov             x2, x4
    // 0x746ac4: ldur            x0, [fp, #-0x18]
    // 0x746ac8: LoadField: r1 = r0->field_b
    //     0x746ac8: ldur            w1, [x0, #0xb]
    // 0x746acc: cbz             w1, #0x746c80
    // 0x746ad0: r16 = 0.500000
    //     0x746ad0: ldr             x16, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x746ad4: str             x16, [SP]
    // 0x746ad8: r1 = Instance_Color
    //     0x746ad8: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x746adc: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x746adc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x746ae0: ldr             x4, [x4, #0x198]
    // 0x746ae4: r0 = withValues()
    //     0x746ae4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x746ae8: stur            x0, [fp, #-0x10]
    // 0x746aec: r0 = Icon()
    //     0x746aec: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x746af0: mov             x2, x0
    // 0x746af4: r0 = Instance_IconData
    //     0x746af4: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fbd8] Obj!IconData@a0a281
    //     0x746af8: ldr             x0, [x0, #0xbd8]
    // 0x746afc: stur            x2, [fp, #-0x18]
    // 0x746b00: StoreField: r2->field_b = r0
    //     0x746b00: stur            w0, [x2, #0xb]
    // 0x746b04: r0 = 12.000000
    //     0x746b04: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x746b08: ldr             x0, [x0, #0xae0]
    // 0x746b0c: StoreField: r2->field_f = r0
    //     0x746b0c: stur            w0, [x2, #0xf]
    // 0x746b10: ldur            x0, [fp, #-0x10]
    // 0x746b14: StoreField: r2->field_23 = r0
    //     0x746b14: stur            w0, [x2, #0x23]
    // 0x746b18: r16 = 0.500000
    //     0x746b18: ldr             x16, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x746b1c: str             x16, [SP]
    // 0x746b20: r1 = Instance_Color
    //     0x746b20: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x746b24: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x746b24: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x746b28: ldr             x4, [x4, #0x198]
    // 0x746b2c: r0 = withValues()
    //     0x746b2c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x746b30: stur            x0, [fp, #-0x10]
    // 0x746b34: r0 = TextStyle()
    //     0x746b34: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x746b38: mov             x1, x0
    // 0x746b3c: r0 = true
    //     0x746b3c: add             x0, NULL, #0x20  ; true
    // 0x746b40: stur            x1, [fp, #-0x28]
    // 0x746b44: StoreField: r1->field_7 = r0
    //     0x746b44: stur            w0, [x1, #7]
    // 0x746b48: ldur            x0, [fp, #-0x10]
    // 0x746b4c: StoreField: r1->field_b = r0
    //     0x746b4c: stur            w0, [x1, #0xb]
    // 0x746b50: r0 = 11.000000
    //     0x746b50: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f60] 11
    //     0x746b54: ldr             x0, [x0, #0xf60]
    // 0x746b58: StoreField: r1->field_1f = r0
    //     0x746b58: stur            w0, [x1, #0x1f]
    // 0x746b5c: r0 = Instance_FontStyle
    //     0x746b5c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15fa0] Obj!FontStyle@a2cfd1
    //     0x746b60: ldr             x0, [x0, #0xfa0]
    // 0x746b64: StoreField: r1->field_27 = r0
    //     0x746b64: stur            w0, [x1, #0x27]
    // 0x746b68: r0 = Text()
    //     0x746b68: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x746b6c: mov             x3, x0
    // 0x746b70: r0 = "Kişileri görmek için tıklayın"
    //     0x746b70: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fbe0] "Kişileri görmek için tıklayın"
    //     0x746b74: ldr             x0, [x0, #0xbe0]
    // 0x746b78: stur            x3, [fp, #-0x10]
    // 0x746b7c: StoreField: r3->field_b = r0
    //     0x746b7c: stur            w0, [x3, #0xb]
    // 0x746b80: ldur            x0, [fp, #-0x28]
    // 0x746b84: StoreField: r3->field_13 = r0
    //     0x746b84: stur            w0, [x3, #0x13]
    // 0x746b88: r1 = Null
    //     0x746b88: mov             x1, NULL
    // 0x746b8c: r2 = 6
    //     0x746b8c: mov             x2, #6
    // 0x746b90: r0 = AllocateArray()
    //     0x746b90: bl              #0x9280a0  ; AllocateArrayStub
    // 0x746b94: mov             x2, x0
    // 0x746b98: ldur            x0, [fp, #-0x18]
    // 0x746b9c: stur            x2, [fp, #-0x28]
    // 0x746ba0: StoreField: r2->field_f = r0
    //     0x746ba0: stur            w0, [x2, #0xf]
    // 0x746ba4: r16 = Instance_SizedBox
    //     0x746ba4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x746ba8: ldr             x16, [x16, #0xf68]
    // 0x746bac: StoreField: r2->field_13 = r16
    //     0x746bac: stur            w16, [x2, #0x13]
    // 0x746bb0: ldur            x0, [fp, #-0x10]
    // 0x746bb4: ArrayStore: r2[0] = r0  ; List_4
    //     0x746bb4: stur            w0, [x2, #0x17]
    // 0x746bb8: r1 = <Widget>
    //     0x746bb8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x746bbc: r0 = AllocateGrowableArray()
    //     0x746bbc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x746bc0: mov             x1, x0
    // 0x746bc4: ldur            x0, [fp, #-0x28]
    // 0x746bc8: stur            x1, [fp, #-0x10]
    // 0x746bcc: StoreField: r1->field_f = r0
    //     0x746bcc: stur            w0, [x1, #0xf]
    // 0x746bd0: r0 = 6
    //     0x746bd0: mov             x0, #6
    // 0x746bd4: StoreField: r1->field_b = r0
    //     0x746bd4: stur            w0, [x1, #0xb]
    // 0x746bd8: r0 = Row()
    //     0x746bd8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x746bdc: mov             x3, x0
    // 0x746be0: r0 = Instance_Axis
    //     0x746be0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x746be4: stur            x3, [fp, #-0x18]
    // 0x746be8: StoreField: r3->field_f = r0
    //     0x746be8: stur            w0, [x3, #0xf]
    // 0x746bec: r0 = Instance_MainAxisAlignment
    //     0x746bec: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x746bf0: ldr             x0, [x0, #0x230]
    // 0x746bf4: StoreField: r3->field_13 = r0
    //     0x746bf4: stur            w0, [x3, #0x13]
    // 0x746bf8: r4 = Instance_MainAxisSize
    //     0x746bf8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x746bfc: ldr             x4, [x4, #0x330]
    // 0x746c00: ArrayStore: r3[0] = r4  ; List_4
    //     0x746c00: stur            w4, [x3, #0x17]
    // 0x746c04: r1 = Instance_CrossAxisAlignment
    //     0x746c04: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x746c08: ldr             x1, [x1, #0x338]
    // 0x746c0c: StoreField: r3->field_1b = r1
    //     0x746c0c: stur            w1, [x3, #0x1b]
    // 0x746c10: r5 = Instance_VerticalDirection
    //     0x746c10: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x746c14: ldr             x5, [x5, #0x340]
    // 0x746c18: StoreField: r3->field_23 = r5
    //     0x746c18: stur            w5, [x3, #0x23]
    // 0x746c1c: r6 = Instance_Clip
    //     0x746c1c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x746c20: ldr             x6, [x6, #0x348]
    // 0x746c24: StoreField: r3->field_2b = r6
    //     0x746c24: stur            w6, [x3, #0x2b]
    // 0x746c28: StoreField: r3->field_2f = rZR
    //     0x746c28: stur            xzr, [x3, #0x2f]
    // 0x746c2c: ldur            x1, [fp, #-0x10]
    // 0x746c30: StoreField: r3->field_b = r1
    //     0x746c30: stur            w1, [x3, #0xb]
    // 0x746c34: r1 = Null
    //     0x746c34: mov             x1, NULL
    // 0x746c38: r2 = 4
    //     0x746c38: mov             x2, #4
    // 0x746c3c: r0 = AllocateArray()
    //     0x746c3c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x746c40: stur            x0, [fp, #-0x10]
    // 0x746c44: r16 = Instance_SizedBox
    //     0x746c44: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x746c48: ldr             x16, [x16, #0x318]
    // 0x746c4c: StoreField: r0->field_f = r16
    //     0x746c4c: stur            w16, [x0, #0xf]
    // 0x746c50: ldur            x1, [fp, #-0x18]
    // 0x746c54: StoreField: r0->field_13 = r1
    //     0x746c54: stur            w1, [x0, #0x13]
    // 0x746c58: r1 = <Widget>
    //     0x746c58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x746c5c: r0 = AllocateGrowableArray()
    //     0x746c5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x746c60: mov             x1, x0
    // 0x746c64: ldur            x0, [fp, #-0x10]
    // 0x746c68: StoreField: r1->field_f = r0
    //     0x746c68: stur            w0, [x1, #0xf]
    // 0x746c6c: r0 = 4
    //     0x746c6c: mov             x0, #4
    // 0x746c70: StoreField: r1->field_b = r0
    //     0x746c70: stur            w0, [x1, #0xb]
    // 0x746c74: mov             x2, x1
    // 0x746c78: ldur            x1, [fp, #-8]
    // 0x746c7c: r0 = addAll()
    //     0x746c7c: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x746c80: ldur            x0, [fp, #-8]
    // 0x746c84: r0 = Column()
    //     0x746c84: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x746c88: mov             x1, x0
    // 0x746c8c: r0 = Instance_Axis
    //     0x746c8c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x746c90: stur            x1, [fp, #-0x10]
    // 0x746c94: StoreField: r1->field_f = r0
    //     0x746c94: stur            w0, [x1, #0xf]
    // 0x746c98: r0 = Instance_MainAxisAlignment
    //     0x746c98: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x746c9c: ldr             x0, [x0, #0x230]
    // 0x746ca0: StoreField: r1->field_13 = r0
    //     0x746ca0: stur            w0, [x1, #0x13]
    // 0x746ca4: r0 = Instance_MainAxisSize
    //     0x746ca4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x746ca8: ldr             x0, [x0, #0x330]
    // 0x746cac: ArrayStore: r1[0] = r0  ; List_4
    //     0x746cac: stur            w0, [x1, #0x17]
    // 0x746cb0: r0 = Instance_CrossAxisAlignment
    //     0x746cb0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x746cb4: ldr             x0, [x0, #0x238]
    // 0x746cb8: StoreField: r1->field_1b = r0
    //     0x746cb8: stur            w0, [x1, #0x1b]
    // 0x746cbc: r0 = Instance_VerticalDirection
    //     0x746cbc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x746cc0: ldr             x0, [x0, #0x340]
    // 0x746cc4: StoreField: r1->field_23 = r0
    //     0x746cc4: stur            w0, [x1, #0x23]
    // 0x746cc8: r0 = Instance_Clip
    //     0x746cc8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x746ccc: ldr             x0, [x0, #0x348]
    // 0x746cd0: StoreField: r1->field_2b = r0
    //     0x746cd0: stur            w0, [x1, #0x2b]
    // 0x746cd4: StoreField: r1->field_2f = rZR
    //     0x746cd4: stur            xzr, [x1, #0x2f]
    // 0x746cd8: ldur            x0, [fp, #-8]
    // 0x746cdc: StoreField: r1->field_b = r0
    //     0x746cdc: stur            w0, [x1, #0xb]
    // 0x746ce0: r0 = Container()
    //     0x746ce0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x746ce4: stur            x0, [fp, #-8]
    // 0x746ce8: r16 = Instance_EdgeInsets
    //     0x746ce8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x746cec: ldr             x16, [x16, #0xf18]
    // 0x746cf0: r30 = Instance_EdgeInsets
    //     0x746cf0: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x746cf4: ldr             lr, [lr, #0x240]
    // 0x746cf8: stp             lr, x16, [SP, #0x10]
    // 0x746cfc: ldur            x16, [fp, #-0x30]
    // 0x746d00: ldur            lr, [fp, #-0x10]
    // 0x746d04: stp             lr, x16, [SP]
    // 0x746d08: mov             x1, x0
    // 0x746d0c: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x746d0c: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x746d10: ldr             x4, [x4, #0x628]
    // 0x746d14: r0 = Container()
    //     0x746d14: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x746d18: r0 = GestureDetector()
    //     0x746d18: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x746d1c: ldur            x2, [fp, #-0x20]
    // 0x746d20: r1 = Function '<anonymous closure>':.
    //     0x746d20: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fbe8] AnonymousClosure: (0x746d64), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_buildRoomCard (0x746218)
    //     0x746d24: ldr             x1, [x1, #0xbe8]
    // 0x746d28: stur            x0, [fp, #-0x10]
    // 0x746d2c: r0 = AllocateClosure()
    //     0x746d2c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x746d30: ldur            x16, [fp, #-8]
    // 0x746d34: stp             x16, x0, [SP]
    // 0x746d38: ldur            x1, [fp, #-0x10]
    // 0x746d3c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x746d3c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x746d40: ldr             x4, [x4, #0xd50]
    // 0x746d44: r0 = GestureDetector()
    //     0x746d44: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x746d48: ldur            x0, [fp, #-0x10]
    // 0x746d4c: LeaveFrame
    //     0x746d4c: mov             SP, fp
    //     0x746d50: ldp             fp, lr, [SP], #0x10
    // 0x746d54: ret
    //     0x746d54: ret             
    // 0x746d58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x746d58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x746d5c: b               #0x74623c
    // 0x746d60: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x746d60: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x746d64, size: 0x58
    // 0x746d64: EnterFrame
    //     0x746d64: stp             fp, lr, [SP, #-0x10]!
    //     0x746d68: mov             fp, SP
    // 0x746d6c: ldr             x0, [fp, #0x10]
    // 0x746d70: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x746d70: ldur            w1, [x0, #0x17]
    // 0x746d74: DecompressPointer r1
    //     0x746d74: add             x1, x1, HEAP, lsl #32
    // 0x746d78: CheckStackOverflow
    //     0x746d78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x746d7c: cmp             SP, x16
    //     0x746d80: b.ls            #0x746db4
    // 0x746d84: LoadField: r0 = r1->field_f
    //     0x746d84: ldur            w0, [x1, #0xf]
    // 0x746d88: DecompressPointer r0
    //     0x746d88: add             x0, x0, HEAP, lsl #32
    // 0x746d8c: LoadField: r2 = r1->field_13
    //     0x746d8c: ldur            w2, [x1, #0x13]
    // 0x746d90: DecompressPointer r2
    //     0x746d90: add             x2, x2, HEAP, lsl #32
    // 0x746d94: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x746d94: ldur            w3, [x1, #0x17]
    // 0x746d98: DecompressPointer r3
    //     0x746d98: add             x3, x3, HEAP, lsl #32
    // 0x746d9c: mov             x1, x0
    // 0x746da0: r0 = _showRoomOccupantsDialog()
    //     0x746da0: bl              #0x746dbc  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog
    // 0x746da4: r0 = Null
    //     0x746da4: mov             x0, NULL
    // 0x746da8: LeaveFrame
    //     0x746da8: mov             SP, fp
    //     0x746dac: ldp             fp, lr, [SP], #0x10
    // 0x746db0: ret
    //     0x746db0: ret             
    // 0x746db4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x746db4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x746db8: b               #0x746d84
  }
  _ _showRoomOccupantsDialog(/* No info */) {
    // ** addr: 0x746dbc, size: 0x7c
    // 0x746dbc: EnterFrame
    //     0x746dbc: stp             fp, lr, [SP, #-0x10]!
    //     0x746dc0: mov             fp, SP
    // 0x746dc4: AllocStack(0x30)
    //     0x746dc4: sub             SP, SP, #0x30
    // 0x746dc8: SetupParameters(RoomsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x746dc8: stur            x1, [fp, #-8]
    //     0x746dcc: stur            x2, [fp, #-0x10]
    //     0x746dd0: stur            x3, [fp, #-0x18]
    // 0x746dd4: CheckStackOverflow
    //     0x746dd4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x746dd8: cmp             SP, x16
    //     0x746ddc: b.ls            #0x746e30
    // 0x746de0: r1 = 2
    //     0x746de0: mov             x1, #2
    // 0x746de4: r0 = AllocateContext()
    //     0x746de4: bl              #0x927010  ; AllocateContextStub
    // 0x746de8: mov             x1, x0
    // 0x746dec: ldur            x0, [fp, #-8]
    // 0x746df0: StoreField: r1->field_f = r0
    //     0x746df0: stur            w0, [x1, #0xf]
    // 0x746df4: ldur            x0, [fp, #-0x18]
    // 0x746df8: StoreField: r1->field_13 = r0
    //     0x746df8: stur            w0, [x1, #0x13]
    // 0x746dfc: mov             x2, x1
    // 0x746e00: r1 = Function '<anonymous closure>':.
    //     0x746e00: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fbf0] AnonymousClosure: (0x746e38), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog (0x746dbc)
    //     0x746e04: ldr             x1, [x1, #0xbf0]
    // 0x746e08: r0 = AllocateClosure()
    //     0x746e08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x746e0c: stp             x0, NULL, [SP, #8]
    // 0x746e10: ldur            x16, [fp, #-0x10]
    // 0x746e14: str             x16, [SP]
    // 0x746e18: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x746e18: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x746e1c: r0 = showDialog()
    //     0x746e1c: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x746e20: r0 = Null
    //     0x746e20: mov             x0, NULL
    // 0x746e24: LeaveFrame
    //     0x746e24: mov             SP, fp
    //     0x746e28: ldp             fp, lr, [SP], #0x10
    // 0x746e2c: ret
    //     0x746e2c: ret             
    // 0x746e30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x746e30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x746e34: b               #0x746de0
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x746e38, size: 0x64
    // 0x746e38: EnterFrame
    //     0x746e38: stp             fp, lr, [SP, #-0x10]!
    //     0x746e3c: mov             fp, SP
    // 0x746e40: AllocStack(0x8)
    //     0x746e40: sub             SP, SP, #8
    // 0x746e44: SetupParameters([dynamic _ /* r0 */])
    //     0x746e44: ldr             x0, [fp, #0x18]
    //     0x746e48: ldur            w1, [x0, #0x17]
    //     0x746e4c: add             x1, x1, HEAP, lsl #32
    //     0x746e50: stur            x1, [fp, #-8]
    // 0x746e54: r1 = 1
    //     0x746e54: mov             x1, #1
    // 0x746e58: r0 = AllocateContext()
    //     0x746e58: bl              #0x927010  ; AllocateContextStub
    // 0x746e5c: mov             x1, x0
    // 0x746e60: ldur            x0, [fp, #-8]
    // 0x746e64: StoreField: r1->field_b = r0
    //     0x746e64: stur            w0, [x1, #0xb]
    // 0x746e68: ldr             x0, [fp, #0x10]
    // 0x746e6c: StoreField: r1->field_f = r0
    //     0x746e6c: stur            w0, [x1, #0xf]
    // 0x746e70: mov             x2, x1
    // 0x746e74: r1 = Function '<anonymous closure>':.
    //     0x746e74: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fbf8] AnonymousClosure: (0x746e9c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog (0x746dbc)
    //     0x746e78: ldr             x1, [x1, #0xbf8]
    // 0x746e7c: r0 = AllocateClosure()
    //     0x746e7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x746e80: stur            x0, [fp, #-8]
    // 0x746e84: r0 = StatefulBuilder()
    //     0x746e84: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x746e88: ldur            x1, [fp, #-8]
    // 0x746e8c: StoreField: r0->field_b = r1
    //     0x746e8c: stur            w1, [x0, #0xb]
    // 0x746e90: LeaveFrame
    //     0x746e90: mov             SP, fp
    //     0x746e94: ldp             fp, lr, [SP], #0x10
    // 0x746e98: ret
    //     0x746e98: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x746e9c, size: 0x304
    // 0x746e9c: EnterFrame
    //     0x746e9c: stp             fp, lr, [SP, #-0x10]!
    //     0x746ea0: mov             fp, SP
    // 0x746ea4: AllocStack(0x38)
    //     0x746ea4: sub             SP, SP, #0x38
    // 0x746ea8: SetupParameters([dynamic _ /* r0 */])
    //     0x746ea8: ldr             x0, [fp, #0x20]
    //     0x746eac: ldur            w1, [x0, #0x17]
    //     0x746eb0: add             x1, x1, HEAP, lsl #32
    //     0x746eb4: stur            x1, [fp, #-8]
    // 0x746eb8: CheckStackOverflow
    //     0x746eb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x746ebc: cmp             SP, x16
    //     0x746ec0: b.ls            #0x747194
    // 0x746ec4: r1 = 2
    //     0x746ec4: mov             x1, #2
    // 0x746ec8: r0 = AllocateContext()
    //     0x746ec8: bl              #0x927010  ; AllocateContextStub
    // 0x746ecc: mov             x3, x0
    // 0x746ed0: ldur            x0, [fp, #-8]
    // 0x746ed4: stur            x3, [fp, #-0x18]
    // 0x746ed8: StoreField: r3->field_b = r0
    //     0x746ed8: stur            w0, [x3, #0xb]
    // 0x746edc: ldr             x1, [fp, #0x10]
    // 0x746ee0: StoreField: r3->field_f = r1
    //     0x746ee0: stur            w1, [x3, #0xf]
    // 0x746ee4: LoadField: r4 = r0->field_b
    //     0x746ee4: ldur            w4, [x0, #0xb]
    // 0x746ee8: DecompressPointer r4
    //     0x746ee8: add             x4, x4, HEAP, lsl #32
    // 0x746eec: stur            x4, [fp, #-0x10]
    // 0x746ef0: LoadField: r0 = r4->field_f
    //     0x746ef0: ldur            w0, [x4, #0xf]
    // 0x746ef4: DecompressPointer r0
    //     0x746ef4: add             x0, x0, HEAP, lsl #32
    // 0x746ef8: LoadField: r1 = r0->field_b
    //     0x746ef8: ldur            w1, [x0, #0xb]
    // 0x746efc: DecompressPointer r1
    //     0x746efc: add             x1, x1, HEAP, lsl #32
    // 0x746f00: cmp             w1, NULL
    // 0x746f04: b.eq            #0x74719c
    // 0x746f08: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x746f08: ldur            w0, [x1, #0x17]
    // 0x746f0c: DecompressPointer r0
    //     0x746f0c: add             x0, x0, HEAP, lsl #32
    // 0x746f10: mov             x2, x3
    // 0x746f14: stur            x0, [fp, #-8]
    // 0x746f18: r1 = Function '<anonymous closure>':.
    //     0x746f18: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc00] AnonymousClosure: (0x747c38), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog (0x746dbc)
    //     0x746f1c: ldr             x1, [x1, #0xc00]
    // 0x746f20: r0 = AllocateClosure()
    //     0x746f20: bl              #0x9273d4  ; AllocateClosureStub
    // 0x746f24: ldur            x1, [fp, #-8]
    // 0x746f28: r2 = LoadClassIdInstr(r1)
    //     0x746f28: ldur            x2, [x1, #-1]
    //     0x746f2c: ubfx            x2, x2, #0xc, #0x14
    // 0x746f30: mov             x16, x0
    // 0x746f34: mov             x0, x2
    // 0x746f38: mov             x2, x16
    // 0x746f3c: r0 = GDT[cid_x0 + 0xd348]()
    //     0x746f3c: mov             x17, #0xd348
    //     0x746f40: add             lr, x0, x17
    //     0x746f44: ldr             lr, [x21, lr, lsl #3]
    //     0x746f48: blr             lr
    // 0x746f4c: LoadField: r1 = r0->field_7
    //     0x746f4c: ldur            w1, [x0, #7]
    // 0x746f50: DecompressPointer r1
    //     0x746f50: add             x1, x1, HEAP, lsl #32
    // 0x746f54: mov             x2, x0
    // 0x746f58: r0 = _GrowableList.of()
    //     0x746f58: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x746f5c: mov             x1, x0
    // 0x746f60: ldur            x2, [fp, #-0x18]
    // 0x746f64: stur            x1, [fp, #-8]
    // 0x746f68: StoreField: r2->field_13 = r0
    //     0x746f68: stur            w0, [x2, #0x13]
    //     0x746f6c: ldurb           w16, [x2, #-1]
    //     0x746f70: ldurb           w17, [x0, #-1]
    //     0x746f74: and             x16, x17, x16, lsr #2
    //     0x746f78: tst             x16, HEAP, lsr #32
    //     0x746f7c: b.eq            #0x746f84
    //     0x746f80: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x746f84: r0 = Radius()
    //     0x746f84: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x746f88: d0 = 16.000000
    //     0x746f88: fmov            d0, #16.00000000
    // 0x746f8c: stur            x0, [fp, #-0x20]
    // 0x746f90: StoreField: r0->field_7 = d0
    //     0x746f90: stur            d0, [x0, #7]
    // 0x746f94: StoreField: r0->field_f = d0
    //     0x746f94: stur            d0, [x0, #0xf]
    // 0x746f98: r0 = BorderRadius()
    //     0x746f98: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x746f9c: mov             x1, x0
    // 0x746fa0: ldur            x0, [fp, #-0x20]
    // 0x746fa4: stur            x1, [fp, #-0x28]
    // 0x746fa8: StoreField: r1->field_7 = r0
    //     0x746fa8: stur            w0, [x1, #7]
    // 0x746fac: StoreField: r1->field_b = r0
    //     0x746fac: stur            w0, [x1, #0xb]
    // 0x746fb0: StoreField: r1->field_f = r0
    //     0x746fb0: stur            w0, [x1, #0xf]
    // 0x746fb4: StoreField: r1->field_13 = r0
    //     0x746fb4: stur            w0, [x1, #0x13]
    // 0x746fb8: r0 = RoundedRectangleBorder()
    //     0x746fb8: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x746fbc: mov             x3, x0
    // 0x746fc0: ldur            x0, [fp, #-0x28]
    // 0x746fc4: stur            x3, [fp, #-0x20]
    // 0x746fc8: StoreField: r3->field_b = r0
    //     0x746fc8: stur            w0, [x3, #0xb]
    // 0x746fcc: r0 = Instance_BorderSide
    //     0x746fcc: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x746fd0: ldr             x0, [x0, #0xcb8]
    // 0x746fd4: StoreField: r3->field_7 = r0
    //     0x746fd4: stur            w0, [x3, #7]
    // 0x746fd8: r1 = Null
    //     0x746fd8: mov             x1, NULL
    // 0x746fdc: r2 = 6
    //     0x746fdc: mov             x2, #6
    // 0x746fe0: r0 = AllocateArray()
    //     0x746fe0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x746fe4: r16 = "Oda "
    //     0x746fe4: add             x16, PP, #0x18, lsl #12  ; [pp+0x18cb0] "Oda "
    //     0x746fe8: ldr             x16, [x16, #0xcb0]
    // 0x746fec: StoreField: r0->field_f = r16
    //     0x746fec: stur            w16, [x0, #0xf]
    // 0x746ff0: ldur            x1, [fp, #-0x10]
    // 0x746ff4: LoadField: r2 = r1->field_13
    //     0x746ff4: ldur            w2, [x1, #0x13]
    // 0x746ff8: DecompressPointer r2
    //     0x746ff8: add             x2, x2, HEAP, lsl #32
    // 0x746ffc: LoadField: r1 = r2->field_f
    //     0x746ffc: ldur            w1, [x2, #0xf]
    // 0x747000: DecompressPointer r1
    //     0x747000: add             x1, x1, HEAP, lsl #32
    // 0x747004: StoreField: r0->field_13 = r1
    //     0x747004: stur            w1, [x0, #0x13]
    // 0x747008: r16 = " - Kişiler"
    //     0x747008: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fc08] " - Kişiler"
    //     0x74700c: ldr             x16, [x16, #0xc08]
    // 0x747010: ArrayStore: r0[0] = r16  ; List_4
    //     0x747010: stur            w16, [x0, #0x17]
    // 0x747014: str             x0, [SP]
    // 0x747018: r0 = _interpolate()
    //     0x747018: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x74701c: stur            x0, [fp, #-0x10]
    // 0x747020: r0 = Text()
    //     0x747020: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x747024: mov             x3, x0
    // 0x747028: ldur            x0, [fp, #-0x10]
    // 0x74702c: stur            x3, [fp, #-0x28]
    // 0x747030: StoreField: r3->field_b = r0
    //     0x747030: stur            w0, [x3, #0xb]
    // 0x747034: r0 = Instance_TextStyle
    //     0x747034: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x747038: ldr             x0, [x0, #0x158]
    // 0x74703c: StoreField: r3->field_13 = r0
    //     0x74703c: stur            w0, [x3, #0x13]
    // 0x747040: ldur            x0, [fp, #-8]
    // 0x747044: LoadField: r1 = r0->field_b
    //     0x747044: ldur            w1, [x0, #0xb]
    // 0x747048: r0 = LoadInt32Instr(r1)
    //     0x747048: sbfx            x0, x1, #1, #0x1f
    // 0x74704c: stur            x0, [fp, #-0x30]
    // 0x747050: cbnz            w1, #0x747064
    // 0x747054: mov             x0, x3
    // 0x747058: r2 = Instance_Padding
    //     0x747058: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fc10] Obj!Padding@a1ff51
    //     0x74705c: ldr             x2, [x2, #0xc10]
    // 0x747060: b               #0x7470a8
    // 0x747064: ldur            x2, [fp, #-0x18]
    // 0x747068: r1 = Function '<anonymous closure>':.
    //     0x747068: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc18] AnonymousClosure: (0x7471a0), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog (0x746dbc)
    //     0x74706c: ldr             x1, [x1, #0xc18]
    // 0x747070: r0 = AllocateClosure()
    //     0x747070: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747074: stur            x0, [fp, #-8]
    // 0x747078: r0 = ListView()
    //     0x747078: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x74707c: stur            x0, [fp, #-0x10]
    // 0x747080: r16 = true
    //     0x747080: add             x16, NULL, #0x20  ; true
    // 0x747084: str             x16, [SP]
    // 0x747088: mov             x1, x0
    // 0x74708c: ldur            x2, [fp, #-8]
    // 0x747090: ldur            x3, [fp, #-0x30]
    // 0x747094: r4 = const [0, 0x4, 0x1, 0x3, shrinkWrap, 0x3, null]
    //     0x747094: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1fc20] List(7) [0, 0x4, 0x1, 0x3, "shrinkWrap", 0x3, Null]
    //     0x747098: ldr             x4, [x4, #0xc20]
    // 0x74709c: r0 = ListView.builder()
    //     0x74709c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x7470a0: ldur            x2, [fp, #-0x10]
    // 0x7470a4: ldur            x0, [fp, #-0x28]
    // 0x7470a8: ldur            x1, [fp, #-0x20]
    // 0x7470ac: stur            x2, [fp, #-8]
    // 0x7470b0: r0 = SizedBox()
    //     0x7470b0: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x7470b4: mov             x3, x0
    // 0x7470b8: r0 = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000
    //     0x7470b8: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fc28] 1.7976931348623157e+308
    //     0x7470bc: ldr             x0, [x0, #0xc28]
    // 0x7470c0: stur            x3, [fp, #-0x10]
    // 0x7470c4: StoreField: r3->field_f = r0
    //     0x7470c4: stur            w0, [x3, #0xf]
    // 0x7470c8: ldur            x0, [fp, #-8]
    // 0x7470cc: StoreField: r3->field_b = r0
    //     0x7470cc: stur            w0, [x3, #0xb]
    // 0x7470d0: ldur            x2, [fp, #-0x18]
    // 0x7470d4: r1 = Function '<anonymous closure>':.
    //     0x7470d4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc30] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x7470d8: ldr             x1, [x1, #0xc30]
    // 0x7470dc: r0 = AllocateClosure()
    //     0x7470dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7470e0: stur            x0, [fp, #-8]
    // 0x7470e4: r0 = TextButton()
    //     0x7470e4: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7470e8: mov             x3, x0
    // 0x7470ec: ldur            x0, [fp, #-8]
    // 0x7470f0: stur            x3, [fp, #-0x18]
    // 0x7470f4: StoreField: r3->field_b = r0
    //     0x7470f4: stur            w0, [x3, #0xb]
    // 0x7470f8: r0 = false
    //     0x7470f8: add             x0, NULL, #0x30  ; false
    // 0x7470fc: StoreField: r3->field_27 = r0
    //     0x7470fc: stur            w0, [x3, #0x27]
    // 0x747100: r1 = true
    //     0x747100: add             x1, NULL, #0x20  ; true
    // 0x747104: StoreField: r3->field_2f = r1
    //     0x747104: stur            w1, [x3, #0x2f]
    // 0x747108: r1 = Instance_Text
    //     0x747108: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc38] Obj!Text@a1d391
    //     0x74710c: ldr             x1, [x1, #0xc38]
    // 0x747110: StoreField: r3->field_37 = r1
    //     0x747110: stur            w1, [x3, #0x37]
    // 0x747114: r1 = Null
    //     0x747114: mov             x1, NULL
    // 0x747118: r2 = 2
    //     0x747118: mov             x2, #2
    // 0x74711c: r0 = AllocateArray()
    //     0x74711c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x747120: mov             x2, x0
    // 0x747124: ldur            x0, [fp, #-0x18]
    // 0x747128: stur            x2, [fp, #-8]
    // 0x74712c: StoreField: r2->field_f = r0
    //     0x74712c: stur            w0, [x2, #0xf]
    // 0x747130: r1 = <Widget>
    //     0x747130: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x747134: r0 = AllocateGrowableArray()
    //     0x747134: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x747138: mov             x1, x0
    // 0x74713c: ldur            x0, [fp, #-8]
    // 0x747140: stur            x1, [fp, #-0x18]
    // 0x747144: StoreField: r1->field_f = r0
    //     0x747144: stur            w0, [x1, #0xf]
    // 0x747148: r0 = 2
    //     0x747148: mov             x0, #2
    // 0x74714c: StoreField: r1->field_b = r0
    //     0x74714c: stur            w0, [x1, #0xb]
    // 0x747150: r0 = AlertDialog()
    //     0x747150: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x747154: ldur            x1, [fp, #-0x28]
    // 0x747158: StoreField: r0->field_f = r1
    //     0x747158: stur            w1, [x0, #0xf]
    // 0x74715c: ldur            x1, [fp, #-0x10]
    // 0x747160: StoreField: r0->field_1b = r1
    //     0x747160: stur            w1, [x0, #0x1b]
    // 0x747164: ldur            x1, [fp, #-0x18]
    // 0x747168: StoreField: r0->field_27 = r1
    //     0x747168: stur            w1, [x0, #0x27]
    // 0x74716c: r1 = Instance_Color
    //     0x74716c: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x747170: ldr             x1, [x1, #0x1c0]
    // 0x747174: StoreField: r0->field_43 = r1
    //     0x747174: stur            w1, [x0, #0x43]
    // 0x747178: ldur            x1, [fp, #-0x20]
    // 0x74717c: StoreField: r0->field_5f = r1
    //     0x74717c: stur            w1, [x0, #0x5f]
    // 0x747180: r1 = false
    //     0x747180: add             x1, NULL, #0x30  ; false
    // 0x747184: StoreField: r0->field_6b = r1
    //     0x747184: stur            w1, [x0, #0x6b]
    // 0x747188: LeaveFrame
    //     0x747188: mov             SP, fp
    //     0x74718c: ldp             fp, lr, [SP], #0x10
    // 0x747190: ret
    //     0x747190: ret             
    // 0x747194: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x747194: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x747198: b               #0x746ec4
    // 0x74719c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74719c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Container <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x7471a0, size: 0x4d8
    // 0x7471a0: EnterFrame
    //     0x7471a0: stp             fp, lr, [SP, #-0x10]!
    //     0x7471a4: mov             fp, SP
    // 0x7471a8: AllocStack(0x58)
    //     0x7471a8: sub             SP, SP, #0x58
    // 0x7471ac: SetupParameters([dynamic _ /* r0 */])
    //     0x7471ac: ldr             x0, [fp, #0x20]
    //     0x7471b0: ldur            w1, [x0, #0x17]
    //     0x7471b4: add             x1, x1, HEAP, lsl #32
    //     0x7471b8: stur            x1, [fp, #-8]
    // 0x7471bc: CheckStackOverflow
    //     0x7471bc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7471c0: cmp             SP, x16
    //     0x7471c4: b.ls            #0x74766c
    // 0x7471c8: r1 = 3
    //     0x7471c8: mov             x1, #3
    // 0x7471cc: r0 = AllocateContext()
    //     0x7471cc: bl              #0x927010  ; AllocateContextStub
    // 0x7471d0: mov             x3, x0
    // 0x7471d4: ldur            x2, [fp, #-8]
    // 0x7471d8: stur            x3, [fp, #-0x18]
    // 0x7471dc: StoreField: r3->field_b = r2
    //     0x7471dc: stur            w2, [x3, #0xb]
    // 0x7471e0: ldr             x0, [fp, #0x18]
    // 0x7471e4: StoreField: r3->field_f = r0
    //     0x7471e4: stur            w0, [x3, #0xf]
    // 0x7471e8: LoadField: r4 = r2->field_13
    //     0x7471e8: ldur            w4, [x2, #0x13]
    // 0x7471ec: DecompressPointer r4
    //     0x7471ec: add             x4, x4, HEAP, lsl #32
    // 0x7471f0: LoadField: r0 = r4->field_b
    //     0x7471f0: ldur            w0, [x4, #0xb]
    // 0x7471f4: ldr             x1, [fp, #0x10]
    // 0x7471f8: r5 = LoadInt32Instr(r1)
    //     0x7471f8: sbfx            x5, x1, #1, #0x1f
    //     0x7471fc: tbz             w1, #0, #0x747204
    //     0x747200: ldur            x5, [x1, #7]
    // 0x747204: r1 = LoadInt32Instr(r0)
    //     0x747204: sbfx            x1, x0, #1, #0x1f
    // 0x747208: mov             x0, x1
    // 0x74720c: mov             x1, x5
    // 0x747210: cmp             x1, x0
    // 0x747214: b.hs            #0x747674
    // 0x747218: LoadField: r0 = r4->field_f
    //     0x747218: ldur            w0, [x4, #0xf]
    // 0x74721c: DecompressPointer r0
    //     0x74721c: add             x0, x0, HEAP, lsl #32
    // 0x747220: ArrayLoad: r1 = r0[r5]  ; Unknown_4
    //     0x747220: add             x16, x0, x5, lsl #2
    //     0x747224: ldur            w1, [x16, #0xf]
    // 0x747228: DecompressPointer r1
    //     0x747228: add             x1, x1, HEAP, lsl #32
    // 0x74722c: stur            x1, [fp, #-0x10]
    // 0x747230: StoreField: r3->field_13 = r1
    //     0x747230: stur            w1, [x3, #0x13]
    // 0x747234: LoadField: r0 = r1->field_2b
    //     0x747234: ldur            w0, [x1, #0x2b]
    // 0x747238: DecompressPointer r0
    //     0x747238: add             x0, x0, HEAP, lsl #32
    // 0x74723c: LoadField: r4 = r2->field_b
    //     0x74723c: ldur            w4, [x2, #0xb]
    // 0x747240: DecompressPointer r4
    //     0x747240: add             x4, x4, HEAP, lsl #32
    // 0x747244: LoadField: r2 = r4->field_b
    //     0x747244: ldur            w2, [x4, #0xb]
    // 0x747248: DecompressPointer r2
    //     0x747248: add             x2, x2, HEAP, lsl #32
    // 0x74724c: LoadField: r4 = r2->field_13
    //     0x74724c: ldur            w4, [x2, #0x13]
    // 0x747250: DecompressPointer r4
    //     0x747250: add             x4, x4, HEAP, lsl #32
    // 0x747254: LoadField: r2 = r4->field_7
    //     0x747254: ldur            w2, [x4, #7]
    // 0x747258: DecompressPointer r2
    //     0x747258: add             x2, x2, HEAP, lsl #32
    // 0x74725c: r4 = LoadClassIdInstr(r0)
    //     0x74725c: ldur            x4, [x0, #-1]
    //     0x747260: ubfx            x4, x4, #0xc, #0x14
    // 0x747264: stp             x2, x0, [SP]
    // 0x747268: mov             x0, x4
    // 0x74726c: mov             lr, x0
    // 0x747270: ldr             lr, [x21, lr, lsl #3]
    // 0x747274: blr             lr
    // 0x747278: ldur            x2, [fp, #-0x18]
    // 0x74727c: ArrayStore: r2[0] = r0  ; List_4
    //     0x74727c: stur            w0, [x2, #0x17]
    // 0x747280: tbnz            w0, #4, #0x747290
    // 0x747284: r3 = "Mekke"
    //     0x747284: add             x3, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x747288: ldr             x3, [x3, #0xdf0]
    // 0x74728c: b               #0x747298
    // 0x747290: r3 = "Medine"
    //     0x747290: add             x3, PP, #0x11, lsl #12  ; [pp+0x11e00] "Medine"
    //     0x747294: ldr             x3, [x3, #0xe00]
    // 0x747298: ldur            x0, [fp, #-0x10]
    // 0x74729c: stur            x3, [fp, #-8]
    // 0x7472a0: r16 = 0.100000
    //     0x7472a0: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7472a4: ldr             x16, [x16, #0x1f8]
    // 0x7472a8: str             x16, [SP]
    // 0x7472ac: r1 = Instance_Color
    //     0x7472ac: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7472b0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7472b0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7472b4: ldr             x4, [x4, #0x198]
    // 0x7472b8: r0 = withValues()
    //     0x7472b8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7472bc: stur            x0, [fp, #-0x20]
    // 0x7472c0: r0 = Radius()
    //     0x7472c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7472c4: d0 = 8.000000
    //     0x7472c4: fmov            d0, #8.00000000
    // 0x7472c8: stur            x0, [fp, #-0x28]
    // 0x7472cc: StoreField: r0->field_7 = d0
    //     0x7472cc: stur            d0, [x0, #7]
    // 0x7472d0: StoreField: r0->field_f = d0
    //     0x7472d0: stur            d0, [x0, #0xf]
    // 0x7472d4: r0 = BorderRadius()
    //     0x7472d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7472d8: mov             x1, x0
    // 0x7472dc: ldur            x0, [fp, #-0x28]
    // 0x7472e0: stur            x1, [fp, #-0x30]
    // 0x7472e4: StoreField: r1->field_7 = r0
    //     0x7472e4: stur            w0, [x1, #7]
    // 0x7472e8: StoreField: r1->field_b = r0
    //     0x7472e8: stur            w0, [x1, #0xb]
    // 0x7472ec: StoreField: r1->field_f = r0
    //     0x7472ec: stur            w0, [x1, #0xf]
    // 0x7472f0: StoreField: r1->field_13 = r0
    //     0x7472f0: stur            w0, [x1, #0x13]
    // 0x7472f4: r0 = BoxDecoration()
    //     0x7472f4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7472f8: mov             x1, x0
    // 0x7472fc: ldur            x0, [fp, #-0x20]
    // 0x747300: stur            x1, [fp, #-0x28]
    // 0x747304: StoreField: r1->field_7 = r0
    //     0x747304: stur            w0, [x1, #7]
    // 0x747308: ldur            x0, [fp, #-0x30]
    // 0x74730c: StoreField: r1->field_13 = r0
    //     0x74730c: stur            w0, [x1, #0x13]
    // 0x747310: r0 = Instance_BoxShape
    //     0x747310: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x747314: ldr             x0, [x0, #0x1c8]
    // 0x747318: StoreField: r1->field_23 = r0
    //     0x747318: stur            w0, [x1, #0x23]
    // 0x74731c: ldur            x0, [fp, #-0x10]
    // 0x747320: LoadField: r2 = r0->field_b
    //     0x747320: ldur            w2, [x0, #0xb]
    // 0x747324: DecompressPointer r2
    //     0x747324: add             x2, x2, HEAP, lsl #32
    // 0x747328: stur            x2, [fp, #-0x20]
    // 0x74732c: LoadField: r3 = r2->field_7
    //     0x74732c: ldur            w3, [x2, #7]
    // 0x747330: cbz             w3, #0x747360
    // 0x747334: stp             xzr, x2, [SP]
    // 0x747338: r0 = []()
    //     0x747338: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x74733c: r1 = LoadClassIdInstr(r0)
    //     0x74733c: ldur            x1, [x0, #-1]
    //     0x747340: ubfx            x1, x1, #0xc, #0x14
    // 0x747344: str             x0, [SP]
    // 0x747348: mov             x0, x1
    // 0x74734c: r0 = GDT[cid_x0 + -0xff6]()
    //     0x74734c: sub             lr, x0, #0xff6
    //     0x747350: ldr             lr, [x21, lr, lsl #3]
    //     0x747354: blr             lr
    // 0x747358: mov             x3, x0
    // 0x74735c: b               #0x747364
    // 0x747360: r3 = "\?"
    //     0x747360: ldr             x3, [PP, #0xf08]  ; [pp+0xf08] "\?"
    // 0x747364: ldur            x2, [fp, #-8]
    // 0x747368: ldur            x1, [fp, #-0x20]
    // 0x74736c: ldur            x0, [fp, #-0x10]
    // 0x747370: stur            x3, [fp, #-0x30]
    // 0x747374: r0 = Text()
    //     0x747374: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x747378: mov             x1, x0
    // 0x74737c: ldur            x0, [fp, #-0x30]
    // 0x747380: stur            x1, [fp, #-0x38]
    // 0x747384: StoreField: r1->field_b = r0
    //     0x747384: stur            w0, [x1, #0xb]
    // 0x747388: r0 = Instance_TextStyle
    //     0x747388: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ed8] Obj!TextStyle@a17441
    //     0x74738c: ldr             x0, [x0, #0xed8]
    // 0x747390: StoreField: r1->field_13 = r0
    //     0x747390: stur            w0, [x1, #0x13]
    // 0x747394: r0 = CircleAvatar()
    //     0x747394: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x747398: mov             x1, x0
    // 0x74739c: ldur            x0, [fp, #-0x38]
    // 0x7473a0: stur            x1, [fp, #-0x30]
    // 0x7473a4: StoreField: r1->field_b = r0
    //     0x7473a4: stur            w0, [x1, #0xb]
    // 0x7473a8: r0 = Instance_Color
    //     0x7473a8: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a388] Obj!Color@a254b1
    //     0x7473ac: ldr             x0, [x0, #0x388]
    // 0x7473b0: StoreField: r1->field_f = r0
    //     0x7473b0: stur            w0, [x1, #0xf]
    // 0x7473b4: r0 = 20.000000
    //     0x7473b4: add             x0, PP, #0xc, lsl #12  ; [pp+0xce48] 20
    //     0x7473b8: ldr             x0, [x0, #0xe48]
    // 0x7473bc: StoreField: r1->field_1f = r0
    //     0x7473bc: stur            w0, [x1, #0x1f]
    // 0x7473c0: r0 = Text()
    //     0x7473c0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7473c4: mov             x3, x0
    // 0x7473c8: ldur            x0, [fp, #-0x20]
    // 0x7473cc: stur            x3, [fp, #-0x38]
    // 0x7473d0: StoreField: r3->field_b = r0
    //     0x7473d0: stur            w0, [x3, #0xb]
    // 0x7473d4: r0 = Instance_TextStyle
    //     0x7473d4: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fc40] Obj!TextStyle@a18471
    //     0x7473d8: ldr             x0, [x0, #0xc40]
    // 0x7473dc: StoreField: r3->field_13 = r0
    //     0x7473dc: stur            w0, [x3, #0x13]
    // 0x7473e0: r1 = Null
    //     0x7473e0: mov             x1, NULL
    // 0x7473e4: r2 = 6
    //     0x7473e4: mov             x2, #6
    // 0x7473e8: r0 = AllocateArray()
    //     0x7473e8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7473ec: mov             x1, x0
    // 0x7473f0: ldur            x0, [fp, #-8]
    // 0x7473f4: StoreField: r1->field_f = r0
    //     0x7473f4: stur            w0, [x1, #0xf]
    // 0x7473f8: r16 = " • "
    //     0x7473f8: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7473fc: ldr             x16, [x16, #0x9d8]
    // 0x747400: StoreField: r1->field_13 = r16
    //     0x747400: stur            w16, [x1, #0x13]
    // 0x747404: ldur            x0, [fp, #-0x10]
    // 0x747408: LoadField: r2 = r0->field_13
    //     0x747408: ldur            w2, [x0, #0x13]
    // 0x74740c: DecompressPointer r2
    //     0x74740c: add             x2, x2, HEAP, lsl #32
    // 0x747410: ArrayStore: r1[0] = r2  ; List_4
    //     0x747410: stur            w2, [x1, #0x17]
    // 0x747414: str             x1, [SP]
    // 0x747418: r0 = _interpolate()
    //     0x747418: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x74741c: stur            x0, [fp, #-8]
    // 0x747420: r0 = Text()
    //     0x747420: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x747424: mov             x3, x0
    // 0x747428: ldur            x0, [fp, #-8]
    // 0x74742c: stur            x3, [fp, #-0x10]
    // 0x747430: StoreField: r3->field_b = r0
    //     0x747430: stur            w0, [x3, #0xb]
    // 0x747434: r0 = Instance_TextStyle
    //     0x747434: add             x0, PP, #0x19, lsl #12  ; [pp+0x19430] Obj!TextStyle@a184e1
    //     0x747438: ldr             x0, [x0, #0x430]
    // 0x74743c: StoreField: r3->field_13 = r0
    //     0x74743c: stur            w0, [x3, #0x13]
    // 0x747440: r1 = Null
    //     0x747440: mov             x1, NULL
    // 0x747444: r2 = 6
    //     0x747444: mov             x2, #6
    // 0x747448: r0 = AllocateArray()
    //     0x747448: bl              #0x9280a0  ; AllocateArrayStub
    // 0x74744c: mov             x2, x0
    // 0x747450: ldur            x0, [fp, #-0x38]
    // 0x747454: stur            x2, [fp, #-8]
    // 0x747458: StoreField: r2->field_f = r0
    //     0x747458: stur            w0, [x2, #0xf]
    // 0x74745c: r16 = Instance_SizedBox
    //     0x74745c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15620] Obj!SizedBox@a1f9b1
    //     0x747460: ldr             x16, [x16, #0x620]
    // 0x747464: StoreField: r2->field_13 = r16
    //     0x747464: stur            w16, [x2, #0x13]
    // 0x747468: ldur            x0, [fp, #-0x10]
    // 0x74746c: ArrayStore: r2[0] = r0  ; List_4
    //     0x74746c: stur            w0, [x2, #0x17]
    // 0x747470: r1 = <Widget>
    //     0x747470: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x747474: r0 = AllocateGrowableArray()
    //     0x747474: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x747478: mov             x1, x0
    // 0x74747c: ldur            x0, [fp, #-8]
    // 0x747480: stur            x1, [fp, #-0x10]
    // 0x747484: StoreField: r1->field_f = r0
    //     0x747484: stur            w0, [x1, #0xf]
    // 0x747488: r0 = 6
    //     0x747488: mov             x0, #6
    // 0x74748c: StoreField: r1->field_b = r0
    //     0x74748c: stur            w0, [x1, #0xb]
    // 0x747490: r0 = Column()
    //     0x747490: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x747494: mov             x2, x0
    // 0x747498: r0 = Instance_Axis
    //     0x747498: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x74749c: stur            x2, [fp, #-8]
    // 0x7474a0: StoreField: r2->field_f = r0
    //     0x7474a0: stur            w0, [x2, #0xf]
    // 0x7474a4: r0 = Instance_MainAxisAlignment
    //     0x7474a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7474a8: ldr             x0, [x0, #0x230]
    // 0x7474ac: StoreField: r2->field_13 = r0
    //     0x7474ac: stur            w0, [x2, #0x13]
    // 0x7474b0: r3 = Instance_MainAxisSize
    //     0x7474b0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7474b4: ldr             x3, [x3, #0x330]
    // 0x7474b8: ArrayStore: r2[0] = r3  ; List_4
    //     0x7474b8: stur            w3, [x2, #0x17]
    // 0x7474bc: r1 = Instance_CrossAxisAlignment
    //     0x7474bc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7474c0: ldr             x1, [x1, #0x238]
    // 0x7474c4: StoreField: r2->field_1b = r1
    //     0x7474c4: stur            w1, [x2, #0x1b]
    // 0x7474c8: r4 = Instance_VerticalDirection
    //     0x7474c8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7474cc: ldr             x4, [x4, #0x340]
    // 0x7474d0: StoreField: r2->field_23 = r4
    //     0x7474d0: stur            w4, [x2, #0x23]
    // 0x7474d4: r5 = Instance_Clip
    //     0x7474d4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7474d8: ldr             x5, [x5, #0x348]
    // 0x7474dc: StoreField: r2->field_2b = r5
    //     0x7474dc: stur            w5, [x2, #0x2b]
    // 0x7474e0: StoreField: r2->field_2f = rZR
    //     0x7474e0: stur            xzr, [x2, #0x2f]
    // 0x7474e4: ldur            x1, [fp, #-0x10]
    // 0x7474e8: StoreField: r2->field_b = r1
    //     0x7474e8: stur            w1, [x2, #0xb]
    // 0x7474ec: r1 = <FlexParentData>
    //     0x7474ec: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7474f0: ldr             x1, [x1, #0x340]
    // 0x7474f4: r0 = Expanded()
    //     0x7474f4: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7474f8: mov             x3, x0
    // 0x7474fc: r0 = 1
    //     0x7474fc: mov             x0, #1
    // 0x747500: stur            x3, [fp, #-0x10]
    // 0x747504: StoreField: r3->field_13 = r0
    //     0x747504: stur            x0, [x3, #0x13]
    // 0x747508: r0 = Instance_FlexFit
    //     0x747508: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x74750c: ldr             x0, [x0, #0x348]
    // 0x747510: StoreField: r3->field_1b = r0
    //     0x747510: stur            w0, [x3, #0x1b]
    // 0x747514: ldur            x0, [fp, #-8]
    // 0x747518: StoreField: r3->field_b = r0
    //     0x747518: stur            w0, [x3, #0xb]
    // 0x74751c: ldur            x2, [fp, #-0x18]
    // 0x747520: r1 = Function '<anonymous closure>':.
    //     0x747520: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc48] AnonymousClosure: (0x747678), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog (0x746dbc)
    //     0x747524: ldr             x1, [x1, #0xc48]
    // 0x747528: r0 = AllocateClosure()
    //     0x747528: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74752c: stur            x0, [fp, #-8]
    // 0x747530: r0 = IconButton()
    //     0x747530: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x747534: mov             x3, x0
    // 0x747538: ldur            x0, [fp, #-8]
    // 0x74753c: stur            x3, [fp, #-0x18]
    // 0x747540: StoreField: r3->field_3b = r0
    //     0x747540: stur            w0, [x3, #0x3b]
    // 0x747544: r0 = false
    //     0x747544: add             x0, NULL, #0x30  ; false
    // 0x747548: StoreField: r3->field_4f = r0
    //     0x747548: stur            w0, [x3, #0x4f]
    // 0x74754c: r0 = "Odadan Çıkar"
    //     0x74754c: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fc50] "Odadan Çıkar"
    //     0x747550: ldr             x0, [x0, #0xc50]
    // 0x747554: StoreField: r3->field_53 = r0
    //     0x747554: stur            w0, [x3, #0x53]
    // 0x747558: r0 = Instance_Icon
    //     0x747558: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fc58] Obj!Icon@a1edf1
    //     0x74755c: ldr             x0, [x0, #0xc58]
    // 0x747560: StoreField: r3->field_1f = r0
    //     0x747560: stur            w0, [x3, #0x1f]
    // 0x747564: r0 = Instance__IconButtonVariant
    //     0x747564: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x747568: ldr             x0, [x0, #0x1b8]
    // 0x74756c: StoreField: r3->field_6f = r0
    //     0x74756c: stur            w0, [x3, #0x6f]
    // 0x747570: r1 = Null
    //     0x747570: mov             x1, NULL
    // 0x747574: r2 = 8
    //     0x747574: mov             x2, #8
    // 0x747578: r0 = AllocateArray()
    //     0x747578: bl              #0x9280a0  ; AllocateArrayStub
    // 0x74757c: mov             x2, x0
    // 0x747580: ldur            x0, [fp, #-0x30]
    // 0x747584: stur            x2, [fp, #-8]
    // 0x747588: StoreField: r2->field_f = r0
    //     0x747588: stur            w0, [x2, #0xf]
    // 0x74758c: r16 = Instance_SizedBox
    //     0x74758c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x747590: ldr             x16, [x16, #0x360]
    // 0x747594: StoreField: r2->field_13 = r16
    //     0x747594: stur            w16, [x2, #0x13]
    // 0x747598: ldur            x0, [fp, #-0x10]
    // 0x74759c: ArrayStore: r2[0] = r0  ; List_4
    //     0x74759c: stur            w0, [x2, #0x17]
    // 0x7475a0: ldur            x0, [fp, #-0x18]
    // 0x7475a4: StoreField: r2->field_1b = r0
    //     0x7475a4: stur            w0, [x2, #0x1b]
    // 0x7475a8: r1 = <Widget>
    //     0x7475a8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7475ac: r0 = AllocateGrowableArray()
    //     0x7475ac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7475b0: mov             x1, x0
    // 0x7475b4: ldur            x0, [fp, #-8]
    // 0x7475b8: stur            x1, [fp, #-0x10]
    // 0x7475bc: StoreField: r1->field_f = r0
    //     0x7475bc: stur            w0, [x1, #0xf]
    // 0x7475c0: r0 = 8
    //     0x7475c0: mov             x0, #8
    // 0x7475c4: StoreField: r1->field_b = r0
    //     0x7475c4: stur            w0, [x1, #0xb]
    // 0x7475c8: r0 = Row()
    //     0x7475c8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7475cc: mov             x1, x0
    // 0x7475d0: r0 = Instance_Axis
    //     0x7475d0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7475d4: stur            x1, [fp, #-8]
    // 0x7475d8: StoreField: r1->field_f = r0
    //     0x7475d8: stur            w0, [x1, #0xf]
    // 0x7475dc: r0 = Instance_MainAxisAlignment
    //     0x7475dc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7475e0: ldr             x0, [x0, #0x230]
    // 0x7475e4: StoreField: r1->field_13 = r0
    //     0x7475e4: stur            w0, [x1, #0x13]
    // 0x7475e8: r0 = Instance_MainAxisSize
    //     0x7475e8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7475ec: ldr             x0, [x0, #0x330]
    // 0x7475f0: ArrayStore: r1[0] = r0  ; List_4
    //     0x7475f0: stur            w0, [x1, #0x17]
    // 0x7475f4: r0 = Instance_CrossAxisAlignment
    //     0x7475f4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7475f8: ldr             x0, [x0, #0x338]
    // 0x7475fc: StoreField: r1->field_1b = r0
    //     0x7475fc: stur            w0, [x1, #0x1b]
    // 0x747600: r0 = Instance_VerticalDirection
    //     0x747600: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x747604: ldr             x0, [x0, #0x340]
    // 0x747608: StoreField: r1->field_23 = r0
    //     0x747608: stur            w0, [x1, #0x23]
    // 0x74760c: r0 = Instance_Clip
    //     0x74760c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x747610: ldr             x0, [x0, #0x348]
    // 0x747614: StoreField: r1->field_2b = r0
    //     0x747614: stur            w0, [x1, #0x2b]
    // 0x747618: StoreField: r1->field_2f = rZR
    //     0x747618: stur            xzr, [x1, #0x2f]
    // 0x74761c: ldur            x0, [fp, #-0x10]
    // 0x747620: StoreField: r1->field_b = r0
    //     0x747620: stur            w0, [x1, #0xb]
    // 0x747624: r0 = Container()
    //     0x747624: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x747628: stur            x0, [fp, #-0x10]
    // 0x74762c: r16 = Instance_EdgeInsets
    //     0x74762c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18d40] Obj!EdgeInsets@a0c2f1
    //     0x747630: ldr             x16, [x16, #0xd40]
    // 0x747634: r30 = Instance_EdgeInsets
    //     0x747634: add             lr, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x747638: ldr             lr, [lr, #0x370]
    // 0x74763c: stp             lr, x16, [SP, #0x10]
    // 0x747640: ldur            x16, [fp, #-0x28]
    // 0x747644: ldur            lr, [fp, #-8]
    // 0x747648: stp             lr, x16, [SP]
    // 0x74764c: mov             x1, x0
    // 0x747650: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x747650: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x747654: ldr             x4, [x4, #0x628]
    // 0x747658: r0 = Container()
    //     0x747658: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x74765c: ldur            x0, [fp, #-0x10]
    // 0x747660: LeaveFrame
    //     0x747660: mov             SP, fp
    //     0x747664: ldp             fp, lr, [SP], #0x10
    // 0x747668: ret
    //     0x747668: ret             
    // 0x74766c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74766c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x747670: b               #0x7471c8
    // 0x747674: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x747674: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x747678, size: 0x37c
    // 0x747678: EnterFrame
    //     0x747678: stp             fp, lr, [SP, #-0x10]!
    //     0x74767c: mov             fp, SP
    // 0x747680: AllocStack(0xa8)
    //     0x747680: sub             SP, SP, #0xa8
    // 0x747684: SetupParameters(RoomsTabState this /* r1 */)
    //     0x747684: stur            NULL, [fp, #-8]
    //     0x747688: mov             x0, #0
    //     0x74768c: add             x1, fp, w0, sxtw #2
    //     0x747690: ldr             x1, [x1, #0x10]
    //     0x747694: ldur            w2, [x1, #0x17]
    //     0x747698: add             x2, x2, HEAP, lsl #32
    //     0x74769c: stur            x2, [fp, #-0x68]
    // 0x7476a0: CheckStackOverflow
    //     0x7476a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7476a4: cmp             SP, x16
    //     0x7476a8: b.ls            #0x7479e4
    // 0x7476ac: InitAsync() -> Future<void?>
    //     0x7476ac: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7476b0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7476b4: ldur            x0, [fp, #-0x68]
    // 0x7476b8: LoadField: r3 = r0->field_f
    //     0x7476b8: ldur            w3, [x0, #0xf]
    // 0x7476bc: DecompressPointer r3
    //     0x7476bc: add             x3, x3, HEAP, lsl #32
    // 0x7476c0: mov             x2, x0
    // 0x7476c4: stur            x3, [fp, #-0x70]
    // 0x7476c8: r1 = Function '<anonymous closure>':.
    //     0x7476c8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc60] AnonymousClosure: (0x7479f4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_showRoomOccupantsDialog (0x746dbc)
    //     0x7476cc: ldr             x1, [x1, #0xc60]
    // 0x7476d0: r0 = AllocateClosure()
    //     0x7476d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7476d4: r16 = <bool>
    //     0x7476d4: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x7476d8: stp             x0, x16, [SP, #8]
    // 0x7476dc: ldur            x16, [fp, #-0x70]
    // 0x7476e0: str             x16, [SP]
    // 0x7476e4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7476e4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7476e8: r0 = showDialog()
    //     0x7476e8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7476ec: mov             x1, x0
    // 0x7476f0: stur            x1, [fp, #-0x70]
    // 0x7476f4: r0 = Await()
    //     0x7476f4: bl              #0x3dd188  ; AwaitStub
    // 0x7476f8: r1 = 60
    //     0x7476f8: mov             x1, #0x3c
    // 0x7476fc: branchIfSmi(r0, 0x747708)
    //     0x7476fc: tbz             w0, #0, #0x747708
    // 0x747700: r1 = LoadClassIdInstr(r0)
    //     0x747700: ldur            x1, [x0, #-1]
    //     0x747704: ubfx            x1, x1, #0xc, #0x14
    // 0x747708: r16 = true
    //     0x747708: add             x16, NULL, #0x20  ; true
    // 0x74770c: stp             x16, x0, [SP]
    // 0x747710: mov             x0, x1
    // 0x747714: mov             lr, x0
    // 0x747718: ldr             lr, [x21, lr, lsl #3]
    // 0x74771c: blr             lr
    // 0x747720: tbnz            w0, #4, #0x7479dc
    // 0x747724: ldur            x0, [fp, #-0x68]
    // 0x747728: r1 = Null
    //     0x747728: mov             x1, NULL
    // 0x74772c: r2 = 4
    //     0x74772c: mov             x2, #4
    // 0x747730: r0 = AllocateArray()
    //     0x747730: bl              #0x9280a0  ; AllocateArrayStub
    // 0x747734: stur            x0, [fp, #-0x70]
    // 0x747738: r16 = "updated_at"
    //     0x747738: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x74773c: ldr             x16, [x16, #0x58]
    // 0x747740: StoreField: r0->field_f = r16
    //     0x747740: stur            w16, [x0, #0xf]
    // 0x747744: r0 = serverTimestamp()
    //     0x747744: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x747748: ldur            x1, [fp, #-0x70]
    // 0x74774c: ArrayStore: r1[1] = r0  ; List_4
    //     0x74774c: add             x25, x1, #0x13
    //     0x747750: str             w0, [x25]
    //     0x747754: tbz             w0, #0, #0x747770
    //     0x747758: ldurb           w16, [x1, #-1]
    //     0x74775c: ldurb           w17, [x0, #-1]
    //     0x747760: and             x16, x17, x16, lsr #2
    //     0x747764: tst             x16, HEAP, lsr #32
    //     0x747768: b.eq            #0x747770
    //     0x74776c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x747770: r16 = <String, dynamic>
    //     0x747770: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x747774: ldur            lr, [fp, #-0x70]
    // 0x747778: stp             lr, x16, [SP]
    // 0x74777c: r0 = Map._fromLiteral()
    //     0x74777c: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x747780: mov             x4, x0
    // 0x747784: ldur            x0, [fp, #-0x68]
    // 0x747788: stur            x4, [fp, #-0x70]
    // 0x74778c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74778c: ldur            w1, [x0, #0x17]
    // 0x747790: DecompressPointer r1
    //     0x747790: add             x1, x1, HEAP, lsl #32
    // 0x747794: tbnz            w1, #4, #0x7477b0
    // 0x747798: mov             x1, x4
    // 0x74779c: r2 = "mekke_oda_id"
    //     0x74779c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14820] "mekke_oda_id"
    //     0x7477a0: ldr             x2, [x2, #0x820]
    // 0x7477a4: r3 = Null
    //     0x7477a4: mov             x3, NULL
    // 0x7477a8: r0 = []=()
    //     0x7477a8: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x7477ac: b               #0x7477c4
    // 0x7477b0: ldur            x1, [fp, #-0x70]
    // 0x7477b4: r2 = "medine_oda_id"
    //     0x7477b4: add             x2, PP, #0x14, lsl #12  ; [pp+0x14840] "medine_oda_id"
    //     0x7477b8: ldr             x2, [x2, #0x840]
    // 0x7477bc: r3 = Null
    //     0x7477bc: mov             x3, NULL
    // 0x7477c0: r0 = []=()
    //     0x7477c0: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x7477c4: ldur            x0, [fp, #-0x68]
    // 0x7477c8: LoadField: r3 = r0->field_b
    //     0x7477c8: ldur            w3, [x0, #0xb]
    // 0x7477cc: DecompressPointer r3
    //     0x7477cc: add             x3, x3, HEAP, lsl #32
    // 0x7477d0: stur            x3, [fp, #-0x80]
    // 0x7477d4: LoadField: r1 = r3->field_b
    //     0x7477d4: ldur            w1, [x3, #0xb]
    // 0x7477d8: DecompressPointer r1
    //     0x7477d8: add             x1, x1, HEAP, lsl #32
    // 0x7477dc: LoadField: r4 = r1->field_b
    //     0x7477dc: ldur            w4, [x1, #0xb]
    // 0x7477e0: DecompressPointer r4
    //     0x7477e0: add             x4, x4, HEAP, lsl #32
    // 0x7477e4: stur            x4, [fp, #-0x78]
    // 0x7477e8: LoadField: r1 = r4->field_f
    //     0x7477e8: ldur            w1, [x4, #0xf]
    // 0x7477ec: DecompressPointer r1
    //     0x7477ec: add             x1, x1, HEAP, lsl #32
    // 0x7477f0: LoadField: r2 = r1->field_b
    //     0x7477f0: ldur            w2, [x1, #0xb]
    // 0x7477f4: DecompressPointer r2
    //     0x7477f4: add             x2, x2, HEAP, lsl #32
    // 0x7477f8: cmp             w2, NULL
    // 0x7477fc: b.eq            #0x7479ec
    // 0x747800: LoadField: r1 = r2->field_1f
    //     0x747800: ldur            w1, [x2, #0x1f]
    // 0x747804: DecompressPointer r1
    //     0x747804: add             x1, x1, HEAP, lsl #32
    // 0x747808: LoadField: r2 = r1->field_7
    //     0x747808: ldur            w2, [x1, #7]
    // 0x74780c: DecompressPointer r2
    //     0x74780c: add             x2, x2, HEAP, lsl #32
    // 0x747810: mov             x1, x2
    // 0x747814: r2 = "users"
    //     0x747814: add             x2, PP, #0x14, lsl #12  ; [pp+0x14808] "users"
    //     0x747818: ldr             x2, [x2, #0x808]
    // 0x74781c: r0 = collection()
    //     0x74781c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x747820: mov             x1, x0
    // 0x747824: ldur            x0, [fp, #-0x68]
    // 0x747828: LoadField: r2 = r0->field_13
    //     0x747828: ldur            w2, [x0, #0x13]
    // 0x74782c: DecompressPointer r2
    //     0x74782c: add             x2, x2, HEAP, lsl #32
    // 0x747830: stur            x2, [fp, #-0x88]
    // 0x747834: LoadField: r3 = r2->field_7
    //     0x747834: ldur            w3, [x2, #7]
    // 0x747838: DecompressPointer r3
    //     0x747838: add             x3, x3, HEAP, lsl #32
    // 0x74783c: str             x3, [SP]
    // 0x747840: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x747840: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x747844: r0 = doc()
    //     0x747844: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x747848: mov             x1, x0
    // 0x74784c: ldur            x2, [fp, #-0x70]
    // 0x747850: r0 = update()
    //     0x747850: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x747854: mov             x1, x0
    // 0x747858: stur            x1, [fp, #-0x90]
    // 0x74785c: r0 = Await()
    //     0x74785c: bl              #0x3dd188  ; AwaitStub
    // 0x747860: ldur            x0, [fp, #-0x78]
    // 0x747864: LoadField: r1 = r0->field_f
    //     0x747864: ldur            w1, [x0, #0xf]
    // 0x747868: DecompressPointer r1
    //     0x747868: add             x1, x1, HEAP, lsl #32
    // 0x74786c: LoadField: r0 = r1->field_b
    //     0x74786c: ldur            w0, [x1, #0xb]
    // 0x747870: DecompressPointer r0
    //     0x747870: add             x0, x0, HEAP, lsl #32
    // 0x747874: cmp             w0, NULL
    // 0x747878: b.eq            #0x7479f0
    // 0x74787c: LoadField: r2 = r0->field_23
    //     0x74787c: ldur            w2, [x0, #0x23]
    // 0x747880: DecompressPointer r2
    //     0x747880: add             x2, x2, HEAP, lsl #32
    // 0x747884: stur            x2, [fp, #-0x90]
    // 0x747888: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x747888: ldur            w0, [x2, #0x17]
    // 0x74788c: DecompressPointer r0
    //     0x74788c: add             x0, x0, HEAP, lsl #32
    // 0x747890: mov             x1, x0
    // 0x747894: stur            x0, [fp, #-0x78]
    // 0x747898: r0 = _loadAgencyData()
    //     0x747898: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x74789c: ldur            x0, [fp, #-0x68]
    // 0x7478a0: LoadField: r1 = r0->field_f
    //     0x7478a0: ldur            w1, [x0, #0xf]
    // 0x7478a4: DecompressPointer r1
    //     0x7478a4: add             x1, x1, HEAP, lsl #32
    // 0x7478a8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x7478a8: ldur            w2, [x1, #0x17]
    // 0x7478ac: DecompressPointer r2
    //     0x7478ac: add             x2, x2, HEAP, lsl #32
    // 0x7478b0: cmp             w2, NULL
    // 0x7478b4: b.eq            #0x7479dc
    // 0x7478b8: ldur            x3, [fp, #-0x80]
    // 0x7478bc: ldur            x2, [fp, #-0x88]
    // 0x7478c0: r0 = of()
    //     0x7478c0: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x7478c4: stur            x0, [fp, #-0x70]
    // 0x7478c8: r0 = Text()
    //     0x7478c8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7478cc: r1 = Null
    //     0x7478cc: mov             x1, NULL
    // 0x7478d0: r2 = 4
    //     0x7478d0: mov             x2, #4
    // 0x7478d4: stur            x0, [fp, #-0x78]
    // 0x7478d8: r0 = AllocateArray()
    //     0x7478d8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7478dc: mov             x1, x0
    // 0x7478e0: ldur            x0, [fp, #-0x88]
    // 0x7478e4: LoadField: r2 = r0->field_b
    //     0x7478e4: ldur            w2, [x0, #0xb]
    // 0x7478e8: DecompressPointer r2
    //     0x7478e8: add             x2, x2, HEAP, lsl #32
    // 0x7478ec: StoreField: r1->field_f = r2
    //     0x7478ec: stur            w2, [x1, #0xf]
    // 0x7478f0: r16 = " odadan çıkarıldı"
    //     0x7478f0: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fc68] " odadan çıkarıldı"
    //     0x7478f4: ldr             x16, [x16, #0xc68]
    // 0x7478f8: StoreField: r1->field_13 = r16
    //     0x7478f8: stur            w16, [x1, #0x13]
    // 0x7478fc: str             x1, [SP]
    // 0x747900: r0 = _interpolate()
    //     0x747900: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x747904: ldur            x1, [fp, #-0x78]
    // 0x747908: StoreField: r1->field_b = r0
    //     0x747908: stur            w0, [x1, #0xb]
    //     0x74790c: ldurb           w16, [x1, #-1]
    //     0x747910: ldurb           w17, [x0, #-1]
    //     0x747914: and             x16, x17, x16, lsr #2
    //     0x747918: tst             x16, HEAP, lsr #32
    //     0x74791c: b.eq            #0x747924
    //     0x747920: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x747924: r0 = SnackBar()
    //     0x747924: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x747928: mov             x1, x0
    // 0x74792c: ldur            x0, [fp, #-0x78]
    // 0x747930: StoreField: r1->field_b = r0
    //     0x747930: stur            w0, [x1, #0xb]
    // 0x747934: r2 = Instance_MaterialColor
    //     0x747934: add             x2, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x747938: ldr             x2, [x2, #0x5d8]
    // 0x74793c: StoreField: r1->field_f = r2
    //     0x74793c: stur            w2, [x1, #0xf]
    // 0x747940: r2 = Instance_Duration
    //     0x747940: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x747944: ldr             x2, [x2, #0xf78]
    // 0x747948: StoreField: r1->field_3f = r2
    //     0x747948: stur            w2, [x1, #0x3f]
    // 0x74794c: r2 = Instance_Clip
    //     0x74794c: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x747950: ldr             x2, [x2, #0x2d8]
    // 0x747954: StoreField: r1->field_53 = r2
    //     0x747954: stur            w2, [x1, #0x53]
    // 0x747958: r2 = false
    //     0x747958: add             x2, NULL, #0x30  ; false
    // 0x74795c: StoreField: r1->field_43 = r2
    //     0x74795c: stur            w2, [x1, #0x43]
    // 0x747960: mov             x2, x1
    // 0x747964: ldur            x1, [fp, #-0x70]
    // 0x747968: r0 = showSnackBar()
    //     0x747968: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x74796c: ldur            x0, [fp, #-0x80]
    // 0x747970: LoadField: r3 = r0->field_f
    //     0x747970: ldur            w3, [x0, #0xf]
    // 0x747974: DecompressPointer r3
    //     0x747974: add             x3, x3, HEAP, lsl #32
    // 0x747978: stur            x3, [fp, #-0x70]
    // 0x74797c: r1 = Function '<anonymous closure>':.
    //     0x74797c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc70] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x747980: ldr             x1, [x1, #0xc70]
    // 0x747984: r2 = Null
    //     0x747984: mov             x2, NULL
    // 0x747988: r0 = AllocateClosure()
    //     0x747988: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74798c: ldur            x16, [fp, #-0x70]
    // 0x747990: stp             x0, x16, [SP]
    // 0x747994: ldur            x0, [fp, #-0x70]
    // 0x747998: ClosureCall
    //     0x747998: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x74799c: ldur            x2, [x0, #0x1f]
    //     0x7479a0: blr             x2
    // 0x7479a4: b               #0x7479dc
    // 0x7479a8: sub             SP, fp, #0xa8
    // 0x7479ac: ldur            x2, [fp, #-0x68]
    // 0x7479b0: LoadField: r1 = r2->field_f
    //     0x7479b0: ldur            w1, [x2, #0xf]
    // 0x7479b4: DecompressPointer r1
    //     0x7479b4: add             x1, x1, HEAP, lsl #32
    // 0x7479b8: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x7479b8: ldur            w0, [x1, #0x17]
    // 0x7479bc: DecompressPointer r0
    //     0x7479bc: add             x0, x0, HEAP, lsl #32
    // 0x7479c0: cmp             w0, NULL
    // 0x7479c4: b.eq            #0x7479dc
    // 0x7479c8: r0 = of()
    //     0x7479c8: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x7479cc: mov             x1, x0
    // 0x7479d0: r2 = Instance_SnackBar
    //     0x7479d0: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fc78] Obj!SnackBar@a207b1
    //     0x7479d4: ldr             x2, [x2, #0xc78]
    // 0x7479d8: r0 = showSnackBar()
    //     0x7479d8: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x7479dc: r0 = Null
    //     0x7479dc: mov             x0, NULL
    // 0x7479e0: r0 = ReturnAsyncNotFuture()
    //     0x7479e0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7479e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7479e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7479e8: b               #0x7476ac
    // 0x7479ec: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7479ec: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7479f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7479f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7479f4, size: 0x244
    // 0x7479f4: EnterFrame
    //     0x7479f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7479f8: mov             fp, SP
    // 0x7479fc: AllocStack(0x38)
    //     0x7479fc: sub             SP, SP, #0x38
    // 0x747a00: SetupParameters([dynamic _ /* r0 */])
    //     0x747a00: ldr             x0, [fp, #0x18]
    //     0x747a04: ldur            w1, [x0, #0x17]
    //     0x747a08: add             x1, x1, HEAP, lsl #32
    //     0x747a0c: stur            x1, [fp, #-8]
    // 0x747a10: CheckStackOverflow
    //     0x747a10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x747a14: cmp             SP, x16
    //     0x747a18: b.ls            #0x747c30
    // 0x747a1c: r1 = 1
    //     0x747a1c: mov             x1, #1
    // 0x747a20: r0 = AllocateContext()
    //     0x747a20: bl              #0x927010  ; AllocateContextStub
    // 0x747a24: mov             x1, x0
    // 0x747a28: ldur            x0, [fp, #-8]
    // 0x747a2c: stur            x1, [fp, #-0x10]
    // 0x747a30: StoreField: r1->field_b = r0
    //     0x747a30: stur            w0, [x1, #0xb]
    // 0x747a34: ldr             x2, [fp, #0x10]
    // 0x747a38: StoreField: r1->field_f = r2
    //     0x747a38: stur            w2, [x1, #0xf]
    // 0x747a3c: r0 = Radius()
    //     0x747a3c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x747a40: d0 = 16.000000
    //     0x747a40: fmov            d0, #16.00000000
    // 0x747a44: stur            x0, [fp, #-0x18]
    // 0x747a48: StoreField: r0->field_7 = d0
    //     0x747a48: stur            d0, [x0, #7]
    // 0x747a4c: StoreField: r0->field_f = d0
    //     0x747a4c: stur            d0, [x0, #0xf]
    // 0x747a50: r0 = BorderRadius()
    //     0x747a50: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x747a54: mov             x1, x0
    // 0x747a58: ldur            x0, [fp, #-0x18]
    // 0x747a5c: stur            x1, [fp, #-0x20]
    // 0x747a60: StoreField: r1->field_7 = r0
    //     0x747a60: stur            w0, [x1, #7]
    // 0x747a64: StoreField: r1->field_b = r0
    //     0x747a64: stur            w0, [x1, #0xb]
    // 0x747a68: StoreField: r1->field_f = r0
    //     0x747a68: stur            w0, [x1, #0xf]
    // 0x747a6c: StoreField: r1->field_13 = r0
    //     0x747a6c: stur            w0, [x1, #0x13]
    // 0x747a70: r0 = RoundedRectangleBorder()
    //     0x747a70: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x747a74: mov             x3, x0
    // 0x747a78: ldur            x0, [fp, #-0x20]
    // 0x747a7c: stur            x3, [fp, #-0x18]
    // 0x747a80: StoreField: r3->field_b = r0
    //     0x747a80: stur            w0, [x3, #0xb]
    // 0x747a84: r0 = Instance_BorderSide
    //     0x747a84: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x747a88: ldr             x0, [x0, #0xcb8]
    // 0x747a8c: StoreField: r3->field_7 = r0
    //     0x747a8c: stur            w0, [x3, #7]
    // 0x747a90: ldur            x0, [fp, #-8]
    // 0x747a94: LoadField: r1 = r0->field_13
    //     0x747a94: ldur            w1, [x0, #0x13]
    // 0x747a98: DecompressPointer r1
    //     0x747a98: add             x1, x1, HEAP, lsl #32
    // 0x747a9c: LoadField: r0 = r1->field_b
    //     0x747a9c: ldur            w0, [x1, #0xb]
    // 0x747aa0: DecompressPointer r0
    //     0x747aa0: add             x0, x0, HEAP, lsl #32
    // 0x747aa4: stur            x0, [fp, #-8]
    // 0x747aa8: r1 = Null
    //     0x747aa8: mov             x1, NULL
    // 0x747aac: r2 = 4
    //     0x747aac: mov             x2, #4
    // 0x747ab0: r0 = AllocateArray()
    //     0x747ab0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x747ab4: mov             x1, x0
    // 0x747ab8: ldur            x0, [fp, #-8]
    // 0x747abc: StoreField: r1->field_f = r0
    //     0x747abc: stur            w0, [x1, #0xf]
    // 0x747ac0: r16 = " kullanıcısını bu odadan çıkarmak istediğinize emin misiniz\?"
    //     0x747ac0: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fc80] " kullanıcısını bu odadan çıkarmak istediğinize emin misiniz\?"
    //     0x747ac4: ldr             x16, [x16, #0xc80]
    // 0x747ac8: StoreField: r1->field_13 = r16
    //     0x747ac8: stur            w16, [x1, #0x13]
    // 0x747acc: str             x1, [SP]
    // 0x747ad0: r0 = _interpolate()
    //     0x747ad0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x747ad4: stur            x0, [fp, #-8]
    // 0x747ad8: r0 = Text()
    //     0x747ad8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x747adc: mov             x3, x0
    // 0x747ae0: ldur            x0, [fp, #-8]
    // 0x747ae4: stur            x3, [fp, #-0x20]
    // 0x747ae8: StoreField: r3->field_b = r0
    //     0x747ae8: stur            w0, [x3, #0xb]
    // 0x747aec: r0 = Instance_TextStyle
    //     0x747aec: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x747af0: ldr             x0, [x0, #0x538]
    // 0x747af4: StoreField: r3->field_13 = r0
    //     0x747af4: stur            w0, [x3, #0x13]
    // 0x747af8: ldur            x2, [fp, #-0x10]
    // 0x747afc: r1 = Function '<anonymous closure>':.
    //     0x747afc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc88] AnonymousClosure: (0x6dfc64), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x747b00: ldr             x1, [x1, #0xc88]
    // 0x747b04: r0 = AllocateClosure()
    //     0x747b04: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747b08: stur            x0, [fp, #-8]
    // 0x747b0c: r0 = TextButton()
    //     0x747b0c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x747b10: mov             x1, x0
    // 0x747b14: ldur            x0, [fp, #-8]
    // 0x747b18: stur            x1, [fp, #-0x28]
    // 0x747b1c: StoreField: r1->field_b = r0
    //     0x747b1c: stur            w0, [x1, #0xb]
    // 0x747b20: r0 = false
    //     0x747b20: add             x0, NULL, #0x30  ; false
    // 0x747b24: StoreField: r1->field_27 = r0
    //     0x747b24: stur            w0, [x1, #0x27]
    // 0x747b28: r2 = true
    //     0x747b28: add             x2, NULL, #0x20  ; true
    // 0x747b2c: StoreField: r1->field_2f = r2
    //     0x747b2c: stur            w2, [x1, #0x2f]
    // 0x747b30: r3 = Instance_Text
    //     0x747b30: add             x3, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x747b34: ldr             x3, [x3, #0x198]
    // 0x747b38: StoreField: r1->field_37 = r3
    //     0x747b38: stur            w3, [x1, #0x37]
    // 0x747b3c: r16 = Instance_MaterialAccentColor
    //     0x747b3c: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a3b0] Obj!MaterialAccentColor@a25961
    //     0x747b40: ldr             x16, [x16, #0x3b0]
    // 0x747b44: str             x16, [SP]
    // 0x747b48: r4 = const [0, 0x1, 0x1, 0, foregroundColor, 0, null]
    //     0x747b48: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb8] List(7) [0, 0x1, 0x1, 0, "foregroundColor", 0, Null]
    //     0x747b4c: ldr             x4, [x4, #0xbb8]
    // 0x747b50: r0 = styleFrom()
    //     0x747b50: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x747b54: ldur            x2, [fp, #-0x10]
    // 0x747b58: r1 = Function '<anonymous closure>':.
    //     0x747b58: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc90] AnonymousClosure: (0x6dfa38), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x747b5c: ldr             x1, [x1, #0xc90]
    // 0x747b60: stur            x0, [fp, #-8]
    // 0x747b64: r0 = AllocateClosure()
    //     0x747b64: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747b68: stur            x0, [fp, #-0x10]
    // 0x747b6c: r0 = TextButton()
    //     0x747b6c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x747b70: mov             x3, x0
    // 0x747b74: ldur            x0, [fp, #-0x10]
    // 0x747b78: stur            x3, [fp, #-0x30]
    // 0x747b7c: StoreField: r3->field_b = r0
    //     0x747b7c: stur            w0, [x3, #0xb]
    // 0x747b80: ldur            x0, [fp, #-8]
    // 0x747b84: StoreField: r3->field_1b = r0
    //     0x747b84: stur            w0, [x3, #0x1b]
    // 0x747b88: r0 = false
    //     0x747b88: add             x0, NULL, #0x30  ; false
    // 0x747b8c: StoreField: r3->field_27 = r0
    //     0x747b8c: stur            w0, [x3, #0x27]
    // 0x747b90: r1 = true
    //     0x747b90: add             x1, NULL, #0x20  ; true
    // 0x747b94: StoreField: r3->field_2f = r1
    //     0x747b94: stur            w1, [x3, #0x2f]
    // 0x747b98: r1 = Instance_Text
    //     0x747b98: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fc98] Obj!Text@a1d481
    //     0x747b9c: ldr             x1, [x1, #0xc98]
    // 0x747ba0: StoreField: r3->field_37 = r1
    //     0x747ba0: stur            w1, [x3, #0x37]
    // 0x747ba4: r1 = Null
    //     0x747ba4: mov             x1, NULL
    // 0x747ba8: r2 = 4
    //     0x747ba8: mov             x2, #4
    // 0x747bac: r0 = AllocateArray()
    //     0x747bac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x747bb0: mov             x2, x0
    // 0x747bb4: ldur            x0, [fp, #-0x28]
    // 0x747bb8: stur            x2, [fp, #-8]
    // 0x747bbc: StoreField: r2->field_f = r0
    //     0x747bbc: stur            w0, [x2, #0xf]
    // 0x747bc0: ldur            x0, [fp, #-0x30]
    // 0x747bc4: StoreField: r2->field_13 = r0
    //     0x747bc4: stur            w0, [x2, #0x13]
    // 0x747bc8: r1 = <Widget>
    //     0x747bc8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x747bcc: r0 = AllocateGrowableArray()
    //     0x747bcc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x747bd0: mov             x1, x0
    // 0x747bd4: ldur            x0, [fp, #-8]
    // 0x747bd8: stur            x1, [fp, #-0x10]
    // 0x747bdc: StoreField: r1->field_f = r0
    //     0x747bdc: stur            w0, [x1, #0xf]
    // 0x747be0: r0 = 4
    //     0x747be0: mov             x0, #4
    // 0x747be4: StoreField: r1->field_b = r0
    //     0x747be4: stur            w0, [x1, #0xb]
    // 0x747be8: r0 = AlertDialog()
    //     0x747be8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x747bec: r1 = Instance_Text
    //     0x747bec: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fca0] Obj!Text@a1d431
    //     0x747bf0: ldr             x1, [x1, #0xca0]
    // 0x747bf4: StoreField: r0->field_f = r1
    //     0x747bf4: stur            w1, [x0, #0xf]
    // 0x747bf8: ldur            x1, [fp, #-0x20]
    // 0x747bfc: StoreField: r0->field_1b = r1
    //     0x747bfc: stur            w1, [x0, #0x1b]
    // 0x747c00: ldur            x1, [fp, #-0x10]
    // 0x747c04: StoreField: r0->field_27 = r1
    //     0x747c04: stur            w1, [x0, #0x27]
    // 0x747c08: r1 = Instance_Color
    //     0x747c08: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x747c0c: ldr             x1, [x1, #0x1c0]
    // 0x747c10: StoreField: r0->field_43 = r1
    //     0x747c10: stur            w1, [x0, #0x43]
    // 0x747c14: ldur            x1, [fp, #-0x18]
    // 0x747c18: StoreField: r0->field_5f = r1
    //     0x747c18: stur            w1, [x0, #0x5f]
    // 0x747c1c: r1 = false
    //     0x747c1c: add             x1, NULL, #0x30  ; false
    // 0x747c20: StoreField: r0->field_6b = r1
    //     0x747c20: stur            w1, [x0, #0x6b]
    // 0x747c24: LeaveFrame
    //     0x747c24: mov             SP, fp
    //     0x747c28: ldp             fp, lr, [SP], #0x10
    // 0x747c2c: ret
    //     0x747c2c: ret             
    // 0x747c30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x747c30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x747c34: b               #0x747a1c
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x747c38, size: 0xc8
    // 0x747c38: EnterFrame
    //     0x747c38: stp             fp, lr, [SP, #-0x10]!
    //     0x747c3c: mov             fp, SP
    // 0x747c40: AllocStack(0x18)
    //     0x747c40: sub             SP, SP, #0x18
    // 0x747c44: SetupParameters([dynamic _ /* r0 */])
    //     0x747c44: ldr             x0, [fp, #0x18]
    //     0x747c48: ldur            w1, [x0, #0x17]
    //     0x747c4c: add             x1, x1, HEAP, lsl #32
    // 0x747c50: CheckStackOverflow
    //     0x747c50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x747c54: cmp             SP, x16
    //     0x747c58: b.ls            #0x747cf8
    // 0x747c5c: ldr             x2, [fp, #0x10]
    // 0x747c60: LoadField: r0 = r2->field_2b
    //     0x747c60: ldur            w0, [x2, #0x2b]
    // 0x747c64: DecompressPointer r0
    //     0x747c64: add             x0, x0, HEAP, lsl #32
    // 0x747c68: LoadField: r3 = r1->field_b
    //     0x747c68: ldur            w3, [x1, #0xb]
    // 0x747c6c: DecompressPointer r3
    //     0x747c6c: add             x3, x3, HEAP, lsl #32
    // 0x747c70: LoadField: r1 = r3->field_b
    //     0x747c70: ldur            w1, [x3, #0xb]
    // 0x747c74: DecompressPointer r1
    //     0x747c74: add             x1, x1, HEAP, lsl #32
    // 0x747c78: stur            x1, [fp, #-8]
    // 0x747c7c: LoadField: r3 = r1->field_13
    //     0x747c7c: ldur            w3, [x1, #0x13]
    // 0x747c80: DecompressPointer r3
    //     0x747c80: add             x3, x3, HEAP, lsl #32
    // 0x747c84: LoadField: r4 = r3->field_7
    //     0x747c84: ldur            w4, [x3, #7]
    // 0x747c88: DecompressPointer r4
    //     0x747c88: add             x4, x4, HEAP, lsl #32
    // 0x747c8c: r3 = LoadClassIdInstr(r0)
    //     0x747c8c: ldur            x3, [x0, #-1]
    //     0x747c90: ubfx            x3, x3, #0xc, #0x14
    // 0x747c94: stp             x4, x0, [SP]
    // 0x747c98: mov             x0, x3
    // 0x747c9c: mov             lr, x0
    // 0x747ca0: ldr             lr, [x21, lr, lsl #3]
    // 0x747ca4: blr             lr
    // 0x747ca8: tbnz            w0, #4, #0x747cb4
    // 0x747cac: r0 = true
    //     0x747cac: add             x0, NULL, #0x20  ; true
    // 0x747cb0: b               #0x747cec
    // 0x747cb4: ldr             x0, [fp, #0x10]
    // 0x747cb8: ldur            x1, [fp, #-8]
    // 0x747cbc: LoadField: r2 = r0->field_2f
    //     0x747cbc: ldur            w2, [x0, #0x2f]
    // 0x747cc0: DecompressPointer r2
    //     0x747cc0: add             x2, x2, HEAP, lsl #32
    // 0x747cc4: LoadField: r0 = r1->field_13
    //     0x747cc4: ldur            w0, [x1, #0x13]
    // 0x747cc8: DecompressPointer r0
    //     0x747cc8: add             x0, x0, HEAP, lsl #32
    // 0x747ccc: LoadField: r1 = r0->field_7
    //     0x747ccc: ldur            w1, [x0, #7]
    // 0x747cd0: DecompressPointer r1
    //     0x747cd0: add             x1, x1, HEAP, lsl #32
    // 0x747cd4: r0 = LoadClassIdInstr(r2)
    //     0x747cd4: ldur            x0, [x2, #-1]
    //     0x747cd8: ubfx            x0, x0, #0xc, #0x14
    // 0x747cdc: stp             x1, x2, [SP]
    // 0x747ce0: mov             lr, x0
    // 0x747ce4: ldr             lr, [x21, lr, lsl #3]
    // 0x747ce8: blr             lr
    // 0x747cec: LeaveFrame
    //     0x747cec: mov             SP, fp
    //     0x747cf0: ldp             fp, lr, [SP], #0x10
    // 0x747cf4: ret
    //     0x747cf4: ret             
    // 0x747cf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x747cf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x747cfc: b               #0x747c5c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x747d00, size: 0x58
    // 0x747d00: EnterFrame
    //     0x747d00: stp             fp, lr, [SP, #-0x10]!
    //     0x747d04: mov             fp, SP
    // 0x747d08: ldr             x0, [fp, #0x10]
    // 0x747d0c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x747d0c: ldur            w1, [x0, #0x17]
    // 0x747d10: DecompressPointer r1
    //     0x747d10: add             x1, x1, HEAP, lsl #32
    // 0x747d14: CheckStackOverflow
    //     0x747d14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x747d18: cmp             SP, x16
    //     0x747d1c: b.ls            #0x747d50
    // 0x747d20: LoadField: r0 = r1->field_f
    //     0x747d20: ldur            w0, [x1, #0xf]
    // 0x747d24: DecompressPointer r0
    //     0x747d24: add             x0, x0, HEAP, lsl #32
    // 0x747d28: LoadField: r2 = r1->field_13
    //     0x747d28: ldur            w2, [x1, #0x13]
    // 0x747d2c: DecompressPointer r2
    //     0x747d2c: add             x2, x2, HEAP, lsl #32
    // 0x747d30: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x747d30: ldur            w3, [x1, #0x17]
    // 0x747d34: DecompressPointer r3
    //     0x747d34: add             x3, x3, HEAP, lsl #32
    // 0x747d38: mov             x1, x0
    // 0x747d3c: r0 = _confirmDeleteRoom()
    //     0x747d3c: bl              #0x747d58  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_confirmDeleteRoom
    // 0x747d40: r0 = Null
    //     0x747d40: mov             x0, NULL
    // 0x747d44: LeaveFrame
    //     0x747d44: mov             SP, fp
    //     0x747d48: ldp             fp, lr, [SP], #0x10
    // 0x747d4c: ret
    //     0x747d4c: ret             
    // 0x747d50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x747d50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x747d54: b               #0x747d20
  }
  _ _confirmDeleteRoom(/* No info */) {
    // ** addr: 0x747d58, size: 0x84
    // 0x747d58: EnterFrame
    //     0x747d58: stp             fp, lr, [SP, #-0x10]!
    //     0x747d5c: mov             fp, SP
    // 0x747d60: AllocStack(0x30)
    //     0x747d60: sub             SP, SP, #0x30
    // 0x747d64: SetupParameters(RoomsTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x747d64: stur            x1, [fp, #-8]
    //     0x747d68: stur            x2, [fp, #-0x10]
    //     0x747d6c: stur            x3, [fp, #-0x18]
    // 0x747d70: CheckStackOverflow
    //     0x747d70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x747d74: cmp             SP, x16
    //     0x747d78: b.ls            #0x747dd4
    // 0x747d7c: r1 = 3
    //     0x747d7c: mov             x1, #3
    // 0x747d80: r0 = AllocateContext()
    //     0x747d80: bl              #0x927010  ; AllocateContextStub
    // 0x747d84: mov             x1, x0
    // 0x747d88: ldur            x0, [fp, #-8]
    // 0x747d8c: StoreField: r1->field_f = r0
    //     0x747d8c: stur            w0, [x1, #0xf]
    // 0x747d90: ldur            x0, [fp, #-0x18]
    // 0x747d94: StoreField: r1->field_13 = r0
    //     0x747d94: stur            w0, [x1, #0x13]
    // 0x747d98: r0 = false
    //     0x747d98: add             x0, NULL, #0x30  ; false
    // 0x747d9c: ArrayStore: r1[0] = r0  ; List_4
    //     0x747d9c: stur            w0, [x1, #0x17]
    // 0x747da0: mov             x2, x1
    // 0x747da4: r1 = Function '<anonymous closure>':.
    //     0x747da4: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fca8] AnonymousClosure: (0x747ddc), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_confirmDeleteRoom (0x747d58)
    //     0x747da8: ldr             x1, [x1, #0xca8]
    // 0x747dac: r0 = AllocateClosure()
    //     0x747dac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747db0: stp             x0, NULL, [SP, #8]
    // 0x747db4: ldur            x16, [fp, #-0x10]
    // 0x747db8: str             x16, [SP]
    // 0x747dbc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x747dbc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x747dc0: r0 = showDialog()
    //     0x747dc0: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x747dc4: r0 = Null
    //     0x747dc4: mov             x0, NULL
    // 0x747dc8: LeaveFrame
    //     0x747dc8: mov             SP, fp
    //     0x747dcc: ldp             fp, lr, [SP], #0x10
    // 0x747dd0: ret
    //     0x747dd0: ret             
    // 0x747dd4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x747dd4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x747dd8: b               #0x747d7c
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x747ddc, size: 0x64
    // 0x747ddc: EnterFrame
    //     0x747ddc: stp             fp, lr, [SP, #-0x10]!
    //     0x747de0: mov             fp, SP
    // 0x747de4: AllocStack(0x8)
    //     0x747de4: sub             SP, SP, #8
    // 0x747de8: SetupParameters([dynamic _ /* r0 */])
    //     0x747de8: ldr             x0, [fp, #0x18]
    //     0x747dec: ldur            w1, [x0, #0x17]
    //     0x747df0: add             x1, x1, HEAP, lsl #32
    //     0x747df4: stur            x1, [fp, #-8]
    // 0x747df8: r1 = 1
    //     0x747df8: mov             x1, #1
    // 0x747dfc: r0 = AllocateContext()
    //     0x747dfc: bl              #0x927010  ; AllocateContextStub
    // 0x747e00: mov             x1, x0
    // 0x747e04: ldur            x0, [fp, #-8]
    // 0x747e08: StoreField: r1->field_b = r0
    //     0x747e08: stur            w0, [x1, #0xb]
    // 0x747e0c: ldr             x0, [fp, #0x10]
    // 0x747e10: StoreField: r1->field_f = r0
    //     0x747e10: stur            w0, [x1, #0xf]
    // 0x747e14: mov             x2, x1
    // 0x747e18: r1 = Function '<anonymous closure>':.
    //     0x747e18: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fcb0] AnonymousClosure: (0x747e40), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_confirmDeleteRoom (0x747d58)
    //     0x747e1c: ldr             x1, [x1, #0xcb0]
    // 0x747e20: r0 = AllocateClosure()
    //     0x747e20: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747e24: stur            x0, [fp, #-8]
    // 0x747e28: r0 = StatefulBuilder()
    //     0x747e28: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x747e2c: ldur            x1, [fp, #-8]
    // 0x747e30: StoreField: r0->field_b = r1
    //     0x747e30: stur            w1, [x0, #0xb]
    // 0x747e34: LeaveFrame
    //     0x747e34: mov             SP, fp
    //     0x747e38: ldp             fp, lr, [SP], #0x10
    // 0x747e3c: ret
    //     0x747e3c: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x747e40, size: 0x2cc
    // 0x747e40: EnterFrame
    //     0x747e40: stp             fp, lr, [SP, #-0x10]!
    //     0x747e44: mov             fp, SP
    // 0x747e48: AllocStack(0x48)
    //     0x747e48: sub             SP, SP, #0x48
    // 0x747e4c: SetupParameters([dynamic _ /* r0 */])
    //     0x747e4c: ldr             x0, [fp, #0x20]
    //     0x747e50: ldur            w1, [x0, #0x17]
    //     0x747e54: add             x1, x1, HEAP, lsl #32
    //     0x747e58: stur            x1, [fp, #-8]
    // 0x747e5c: CheckStackOverflow
    //     0x747e5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x747e60: cmp             SP, x16
    //     0x747e64: b.ls            #0x748104
    // 0x747e68: r1 = 1
    //     0x747e68: mov             x1, #1
    // 0x747e6c: r0 = AllocateContext()
    //     0x747e6c: bl              #0x927010  ; AllocateContextStub
    // 0x747e70: mov             x1, x0
    // 0x747e74: ldur            x0, [fp, #-8]
    // 0x747e78: stur            x1, [fp, #-0x10]
    // 0x747e7c: StoreField: r1->field_b = r0
    //     0x747e7c: stur            w0, [x1, #0xb]
    // 0x747e80: ldr             x2, [fp, #0x10]
    // 0x747e84: StoreField: r1->field_f = r2
    //     0x747e84: stur            w2, [x1, #0xf]
    // 0x747e88: r0 = Radius()
    //     0x747e88: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x747e8c: d0 = 16.000000
    //     0x747e8c: fmov            d0, #16.00000000
    // 0x747e90: stur            x0, [fp, #-0x18]
    // 0x747e94: StoreField: r0->field_7 = d0
    //     0x747e94: stur            d0, [x0, #7]
    // 0x747e98: StoreField: r0->field_f = d0
    //     0x747e98: stur            d0, [x0, #0xf]
    // 0x747e9c: r0 = BorderRadius()
    //     0x747e9c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x747ea0: mov             x1, x0
    // 0x747ea4: ldur            x0, [fp, #-0x18]
    // 0x747ea8: stur            x1, [fp, #-0x20]
    // 0x747eac: StoreField: r1->field_7 = r0
    //     0x747eac: stur            w0, [x1, #7]
    // 0x747eb0: StoreField: r1->field_b = r0
    //     0x747eb0: stur            w0, [x1, #0xb]
    // 0x747eb4: StoreField: r1->field_f = r0
    //     0x747eb4: stur            w0, [x1, #0xf]
    // 0x747eb8: StoreField: r1->field_13 = r0
    //     0x747eb8: stur            w0, [x1, #0x13]
    // 0x747ebc: r0 = RoundedRectangleBorder()
    //     0x747ebc: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x747ec0: mov             x3, x0
    // 0x747ec4: ldur            x0, [fp, #-0x20]
    // 0x747ec8: stur            x3, [fp, #-0x18]
    // 0x747ecc: StoreField: r3->field_b = r0
    //     0x747ecc: stur            w0, [x3, #0xb]
    // 0x747ed0: r0 = Instance_BorderSide
    //     0x747ed0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x747ed4: ldr             x0, [x0, #0xcb8]
    // 0x747ed8: StoreField: r3->field_7 = r0
    //     0x747ed8: stur            w0, [x3, #7]
    // 0x747edc: r1 = Null
    //     0x747edc: mov             x1, NULL
    // 0x747ee0: r2 = 6
    //     0x747ee0: mov             x2, #6
    // 0x747ee4: r0 = AllocateArray()
    //     0x747ee4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x747ee8: r16 = "\"Oda "
    //     0x747ee8: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fcb8] "\"Oda "
    //     0x747eec: ldr             x16, [x16, #0xcb8]
    // 0x747ef0: StoreField: r0->field_f = r16
    //     0x747ef0: stur            w16, [x0, #0xf]
    // 0x747ef4: ldur            x1, [fp, #-8]
    // 0x747ef8: LoadField: r2 = r1->field_b
    //     0x747ef8: ldur            w2, [x1, #0xb]
    // 0x747efc: DecompressPointer r2
    //     0x747efc: add             x2, x2, HEAP, lsl #32
    // 0x747f00: stur            x2, [fp, #-0x20]
    // 0x747f04: LoadField: r1 = r2->field_13
    //     0x747f04: ldur            w1, [x2, #0x13]
    // 0x747f08: DecompressPointer r1
    //     0x747f08: add             x1, x1, HEAP, lsl #32
    // 0x747f0c: LoadField: r3 = r1->field_f
    //     0x747f0c: ldur            w3, [x1, #0xf]
    // 0x747f10: DecompressPointer r3
    //     0x747f10: add             x3, x3, HEAP, lsl #32
    // 0x747f14: StoreField: r0->field_13 = r3
    //     0x747f14: stur            w3, [x0, #0x13]
    // 0x747f18: r16 = "\" odasını silmek istediğinize emin misiniz\?"
    //     0x747f18: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fcc0] "\" odasını silmek istediğinize emin misiniz\?"
    //     0x747f1c: ldr             x16, [x16, #0xcc0]
    // 0x747f20: ArrayStore: r0[0] = r16  ; List_4
    //     0x747f20: stur            w16, [x0, #0x17]
    // 0x747f24: str             x0, [SP]
    // 0x747f28: r0 = _interpolate()
    //     0x747f28: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x747f2c: stur            x0, [fp, #-8]
    // 0x747f30: r0 = Text()
    //     0x747f30: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x747f34: mov             x3, x0
    // 0x747f38: ldur            x0, [fp, #-8]
    // 0x747f3c: stur            x3, [fp, #-0x28]
    // 0x747f40: StoreField: r3->field_b = r0
    //     0x747f40: stur            w0, [x3, #0xb]
    // 0x747f44: r0 = Instance_TextStyle
    //     0x747f44: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x747f48: ldr             x0, [x0, #0x538]
    // 0x747f4c: StoreField: r3->field_13 = r0
    //     0x747f4c: stur            w0, [x3, #0x13]
    // 0x747f50: ldur            x0, [fp, #-0x20]
    // 0x747f54: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x747f54: ldur            w4, [x0, #0x17]
    // 0x747f58: DecompressPointer r4
    //     0x747f58: add             x4, x4, HEAP, lsl #32
    // 0x747f5c: stur            x4, [fp, #-8]
    // 0x747f60: tbnz            w4, #4, #0x747f70
    // 0x747f64: mov             x0, x4
    // 0x747f68: r1 = Null
    //     0x747f68: mov             x1, NULL
    // 0x747f6c: b               #0x747f88
    // 0x747f70: ldur            x2, [fp, #-0x10]
    // 0x747f74: r1 = Function '<anonymous closure>':.
    //     0x747f74: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fcc8] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x747f78: ldr             x1, [x1, #0xcc8]
    // 0x747f7c: r0 = AllocateClosure()
    //     0x747f7c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747f80: mov             x1, x0
    // 0x747f84: ldur            x0, [fp, #-8]
    // 0x747f88: stur            x1, [fp, #-0x30]
    // 0x747f8c: r0 = TextButton()
    //     0x747f8c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x747f90: mov             x3, x0
    // 0x747f94: ldur            x0, [fp, #-0x30]
    // 0x747f98: stur            x3, [fp, #-0x38]
    // 0x747f9c: StoreField: r3->field_b = r0
    //     0x747f9c: stur            w0, [x3, #0xb]
    // 0x747fa0: r0 = false
    //     0x747fa0: add             x0, NULL, #0x30  ; false
    // 0x747fa4: StoreField: r3->field_27 = r0
    //     0x747fa4: stur            w0, [x3, #0x27]
    // 0x747fa8: r4 = true
    //     0x747fa8: add             x4, NULL, #0x20  ; true
    // 0x747fac: StoreField: r3->field_2f = r4
    //     0x747fac: stur            w4, [x3, #0x2f]
    // 0x747fb0: r1 = Instance_Text
    //     0x747fb0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x747fb4: ldr             x1, [x1, #0x198]
    // 0x747fb8: StoreField: r3->field_37 = r1
    //     0x747fb8: stur            w1, [x3, #0x37]
    // 0x747fbc: ldur            x1, [fp, #-8]
    // 0x747fc0: tbnz            w1, #4, #0x747fcc
    // 0x747fc4: r1 = Null
    //     0x747fc4: mov             x1, NULL
    // 0x747fc8: b               #0x747fe0
    // 0x747fcc: ldur            x2, [fp, #-0x10]
    // 0x747fd0: r1 = Function '<anonymous closure>':.
    //     0x747fd0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fcd0] AnonymousClosure: (0x74810c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::_confirmDeleteRoom (0x747d58)
    //     0x747fd4: ldr             x1, [x1, #0xcd0]
    // 0x747fd8: r0 = AllocateClosure()
    //     0x747fd8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x747fdc: mov             x1, x0
    // 0x747fe0: ldur            x0, [fp, #-0x20]
    // 0x747fe4: stur            x1, [fp, #-8]
    // 0x747fe8: r16 = Instance_MaterialColor
    //     0x747fe8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x747fec: ldr             x16, [x16, #0xb90]
    // 0x747ff0: r30 = Instance_Color
    //     0x747ff0: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x747ff4: stp             lr, x16, [SP]
    // 0x747ff8: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x747ff8: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x747ffc: ldr             x4, [x4, #0x1a8]
    // 0x748000: r0 = styleFrom()
    //     0x748000: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x748004: mov             x1, x0
    // 0x748008: ldur            x0, [fp, #-0x20]
    // 0x74800c: stur            x1, [fp, #-0x30]
    // 0x748010: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x748010: ldur            w2, [x0, #0x17]
    // 0x748014: DecompressPointer r2
    //     0x748014: add             x2, x2, HEAP, lsl #32
    // 0x748018: tbnz            w2, #4, #0x748028
    // 0x74801c: r5 = Instance_SizedBox
    //     0x74801c: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x748020: ldr             x5, [x5, #0x1b0]
    // 0x748024: b               #0x748030
    // 0x748028: r5 = Instance_Text
    //     0x748028: add             x5, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x74802c: ldr             x5, [x5, #0x7e0]
    // 0x748030: ldur            x4, [fp, #-0x18]
    // 0x748034: ldur            x3, [fp, #-0x28]
    // 0x748038: ldur            x2, [fp, #-0x38]
    // 0x74803c: ldur            x0, [fp, #-8]
    // 0x748040: stur            x5, [fp, #-0x10]
    // 0x748044: r0 = ElevatedButton()
    //     0x748044: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x748048: mov             x3, x0
    // 0x74804c: ldur            x0, [fp, #-8]
    // 0x748050: stur            x3, [fp, #-0x20]
    // 0x748054: StoreField: r3->field_b = r0
    //     0x748054: stur            w0, [x3, #0xb]
    // 0x748058: ldur            x0, [fp, #-0x30]
    // 0x74805c: StoreField: r3->field_1b = r0
    //     0x74805c: stur            w0, [x3, #0x1b]
    // 0x748060: r0 = false
    //     0x748060: add             x0, NULL, #0x30  ; false
    // 0x748064: StoreField: r3->field_27 = r0
    //     0x748064: stur            w0, [x3, #0x27]
    // 0x748068: r1 = true
    //     0x748068: add             x1, NULL, #0x20  ; true
    // 0x74806c: StoreField: r3->field_2f = r1
    //     0x74806c: stur            w1, [x3, #0x2f]
    // 0x748070: ldur            x1, [fp, #-0x10]
    // 0x748074: StoreField: r3->field_37 = r1
    //     0x748074: stur            w1, [x3, #0x37]
    // 0x748078: r1 = Null
    //     0x748078: mov             x1, NULL
    // 0x74807c: r2 = 4
    //     0x74807c: mov             x2, #4
    // 0x748080: r0 = AllocateArray()
    //     0x748080: bl              #0x9280a0  ; AllocateArrayStub
    // 0x748084: mov             x2, x0
    // 0x748088: ldur            x0, [fp, #-0x38]
    // 0x74808c: stur            x2, [fp, #-8]
    // 0x748090: StoreField: r2->field_f = r0
    //     0x748090: stur            w0, [x2, #0xf]
    // 0x748094: ldur            x0, [fp, #-0x20]
    // 0x748098: StoreField: r2->field_13 = r0
    //     0x748098: stur            w0, [x2, #0x13]
    // 0x74809c: r1 = <Widget>
    //     0x74809c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7480a0: r0 = AllocateGrowableArray()
    //     0x7480a0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7480a4: mov             x1, x0
    // 0x7480a8: ldur            x0, [fp, #-8]
    // 0x7480ac: stur            x1, [fp, #-0x10]
    // 0x7480b0: StoreField: r1->field_f = r0
    //     0x7480b0: stur            w0, [x1, #0xf]
    // 0x7480b4: r0 = 4
    //     0x7480b4: mov             x0, #4
    // 0x7480b8: StoreField: r1->field_b = r0
    //     0x7480b8: stur            w0, [x1, #0xb]
    // 0x7480bc: r0 = AlertDialog()
    //     0x7480bc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7480c0: r1 = Instance_Text
    //     0x7480c0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fcd8] Obj!Text@a1d521
    //     0x7480c4: ldr             x1, [x1, #0xcd8]
    // 0x7480c8: StoreField: r0->field_f = r1
    //     0x7480c8: stur            w1, [x0, #0xf]
    // 0x7480cc: ldur            x1, [fp, #-0x28]
    // 0x7480d0: StoreField: r0->field_1b = r1
    //     0x7480d0: stur            w1, [x0, #0x1b]
    // 0x7480d4: ldur            x1, [fp, #-0x10]
    // 0x7480d8: StoreField: r0->field_27 = r1
    //     0x7480d8: stur            w1, [x0, #0x27]
    // 0x7480dc: r1 = Instance_Color
    //     0x7480dc: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x7480e0: ldr             x1, [x1, #0x1c0]
    // 0x7480e4: StoreField: r0->field_43 = r1
    //     0x7480e4: stur            w1, [x0, #0x43]
    // 0x7480e8: ldur            x1, [fp, #-0x18]
    // 0x7480ec: StoreField: r0->field_5f = r1
    //     0x7480ec: stur            w1, [x0, #0x5f]
    // 0x7480f0: r1 = false
    //     0x7480f0: add             x1, NULL, #0x30  ; false
    // 0x7480f4: StoreField: r0->field_6b = r1
    //     0x7480f4: stur            w1, [x0, #0x6b]
    // 0x7480f8: LeaveFrame
    //     0x7480f8: mov             SP, fp
    //     0x7480fc: ldp             fp, lr, [SP], #0x10
    // 0x748100: ret
    //     0x748100: ret             
    // 0x748104: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748104: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748108: b               #0x747e68
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x74810c, size: 0x14c
    // 0x74810c: EnterFrame
    //     0x74810c: stp             fp, lr, [SP, #-0x10]!
    //     0x748110: mov             fp, SP
    // 0x748114: AllocStack(0x38)
    //     0x748114: sub             SP, SP, #0x38
    // 0x748118: SetupParameters(RoomsTabState this /* r1 */)
    //     0x748118: stur            NULL, [fp, #-8]
    //     0x74811c: mov             x0, #0
    //     0x748120: add             x1, fp, w0, sxtw #2
    //     0x748124: ldr             x1, [x1, #0x10]
    //     0x748128: ldur            w2, [x1, #0x17]
    //     0x74812c: add             x2, x2, HEAP, lsl #32
    //     0x748130: stur            x2, [fp, #-0x10]
    // 0x748134: CheckStackOverflow
    //     0x748134: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748138: cmp             SP, x16
    //     0x74813c: b.ls            #0x748248
    // 0x748140: InitAsync() -> Future<void?>
    //     0x748140: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x748144: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x748148: ldur            x0, [fp, #-0x10]
    // 0x74814c: LoadField: r3 = r0->field_f
    //     0x74814c: ldur            w3, [x0, #0xf]
    // 0x748150: DecompressPointer r3
    //     0x748150: add             x3, x3, HEAP, lsl #32
    // 0x748154: mov             x2, x0
    // 0x748158: stur            x3, [fp, #-0x18]
    // 0x74815c: r1 = Function '<anonymous closure>':.
    //     0x74815c: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fce0] AnonymousClosure: (0x744590), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x748160: ldr             x1, [x1, #0xce0]
    // 0x748164: r0 = AllocateClosure()
    //     0x748164: bl              #0x9273d4  ; AllocateClosureStub
    // 0x748168: ldur            x16, [fp, #-0x18]
    // 0x74816c: stp             x0, x16, [SP]
    // 0x748170: ldur            x0, [fp, #-0x18]
    // 0x748174: ClosureCall
    //     0x748174: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x748178: ldur            x2, [x0, #0x1f]
    //     0x74817c: blr             x2
    // 0x748180: ldur            x0, [fp, #-0x10]
    // 0x748184: LoadField: r3 = r0->field_b
    //     0x748184: ldur            w3, [x0, #0xb]
    // 0x748188: DecompressPointer r3
    //     0x748188: add             x3, x3, HEAP, lsl #32
    // 0x74818c: stur            x3, [fp, #-0x20]
    // 0x748190: LoadField: r4 = r3->field_b
    //     0x748190: ldur            w4, [x3, #0xb]
    // 0x748194: DecompressPointer r4
    //     0x748194: add             x4, x4, HEAP, lsl #32
    // 0x748198: stur            x4, [fp, #-0x18]
    // 0x74819c: LoadField: r1 = r4->field_f
    //     0x74819c: ldur            w1, [x4, #0xf]
    // 0x7481a0: DecompressPointer r1
    //     0x7481a0: add             x1, x1, HEAP, lsl #32
    // 0x7481a4: LoadField: r2 = r1->field_b
    //     0x7481a4: ldur            w2, [x1, #0xb]
    // 0x7481a8: DecompressPointer r2
    //     0x7481a8: add             x2, x2, HEAP, lsl #32
    // 0x7481ac: cmp             w2, NULL
    // 0x7481b0: b.eq            #0x748250
    // 0x7481b4: LoadField: r1 = r2->field_1f
    //     0x7481b4: ldur            w1, [x2, #0x1f]
    // 0x7481b8: DecompressPointer r1
    //     0x7481b8: add             x1, x1, HEAP, lsl #32
    // 0x7481bc: LoadField: r2 = r4->field_13
    //     0x7481bc: ldur            w2, [x4, #0x13]
    // 0x7481c0: DecompressPointer r2
    //     0x7481c0: add             x2, x2, HEAP, lsl #32
    // 0x7481c4: LoadField: r5 = r2->field_7
    //     0x7481c4: ldur            w5, [x2, #7]
    // 0x7481c8: DecompressPointer r5
    //     0x7481c8: add             x5, x5, HEAP, lsl #32
    // 0x7481cc: mov             x2, x5
    // 0x7481d0: r0 = deleteRoom()
    //     0x7481d0: bl              #0x6df3fc  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteRoom
    // 0x7481d4: mov             x1, x0
    // 0x7481d8: stur            x1, [fp, #-0x28]
    // 0x7481dc: r0 = Await()
    //     0x7481dc: bl              #0x3dd188  ; AwaitStub
    // 0x7481e0: ldur            x0, [fp, #-0x18]
    // 0x7481e4: LoadField: r1 = r0->field_f
    //     0x7481e4: ldur            w1, [x0, #0xf]
    // 0x7481e8: DecompressPointer r1
    //     0x7481e8: add             x1, x1, HEAP, lsl #32
    // 0x7481ec: LoadField: r0 = r1->field_b
    //     0x7481ec: ldur            w0, [x1, #0xb]
    // 0x7481f0: DecompressPointer r0
    //     0x7481f0: add             x0, x0, HEAP, lsl #32
    // 0x7481f4: cmp             w0, NULL
    // 0x7481f8: b.eq            #0x748254
    // 0x7481fc: LoadField: r1 = r0->field_23
    //     0x7481fc: ldur            w1, [x0, #0x23]
    // 0x748200: DecompressPointer r1
    //     0x748200: add             x1, x1, HEAP, lsl #32
    // 0x748204: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x748204: ldur            w0, [x1, #0x17]
    // 0x748208: DecompressPointer r0
    //     0x748208: add             x0, x0, HEAP, lsl #32
    // 0x74820c: mov             x1, x0
    // 0x748210: r0 = _loadAgencyData()
    //     0x748210: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x748214: ldur            x0, [fp, #-0x20]
    // 0x748218: LoadField: r1 = r0->field_f
    //     0x748218: ldur            w1, [x0, #0xf]
    // 0x74821c: DecompressPointer r1
    //     0x74821c: add             x1, x1, HEAP, lsl #32
    // 0x748220: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x748220: ldur            w0, [x1, #0x17]
    // 0x748224: DecompressPointer r0
    //     0x748224: add             x0, x0, HEAP, lsl #32
    // 0x748228: cmp             w0, NULL
    // 0x74822c: b.eq            #0x748240
    // 0x748230: r16 = <Object?>
    //     0x748230: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x748234: stp             x1, x16, [SP]
    // 0x748238: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x748238: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x74823c: r0 = pop()
    //     0x74823c: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x748240: r0 = Null
    //     0x748240: mov             x0, NULL
    // 0x748244: r0 = ReturnAsyncNotFuture()
    //     0x748244: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x748248: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748248: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74824c: b               #0x748140
    // 0x748250: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x748250: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x748254: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x748254: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x748258, size: 0x58
    // 0x748258: EnterFrame
    //     0x748258: stp             fp, lr, [SP, #-0x10]!
    //     0x74825c: mov             fp, SP
    // 0x748260: ldr             x0, [fp, #0x10]
    // 0x748264: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x748264: ldur            w1, [x0, #0x17]
    // 0x748268: DecompressPointer r1
    //     0x748268: add             x1, x1, HEAP, lsl #32
    // 0x74826c: CheckStackOverflow
    //     0x74826c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748270: cmp             SP, x16
    //     0x748274: b.ls            #0x7482a8
    // 0x748278: LoadField: r0 = r1->field_f
    //     0x748278: ldur            w0, [x1, #0xf]
    // 0x74827c: DecompressPointer r0
    //     0x74827c: add             x0, x0, HEAP, lsl #32
    // 0x748280: LoadField: r2 = r1->field_13
    //     0x748280: ldur            w2, [x1, #0x13]
    // 0x748284: DecompressPointer r2
    //     0x748284: add             x2, x2, HEAP, lsl #32
    // 0x748288: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x748288: ldur            w3, [x1, #0x17]
    // 0x74828c: DecompressPointer r3
    //     0x74828c: add             x3, x3, HEAP, lsl #32
    // 0x748290: mov             x1, x0
    // 0x748294: r0 = showRoomDialog()
    //     0x748294: bl              #0x6f6a1c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog
    // 0x748298: r0 = Null
    //     0x748298: mov             x0, NULL
    // 0x74829c: LeaveFrame
    //     0x74829c: mov             SP, fp
    //     0x7482a0: ldp             fp, lr, [SP], #0x10
    // 0x7482a4: ret
    //     0x7482a4: ret             
    // 0x7482a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7482a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7482ac: b               #0x748278
  }
  [closure] bool <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x7482b0, size: 0xbc
    // 0x7482b0: EnterFrame
    //     0x7482b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7482b4: mov             fp, SP
    // 0x7482b8: AllocStack(0x18)
    //     0x7482b8: sub             SP, SP, #0x18
    // 0x7482bc: SetupParameters([dynamic _ /* r0 */])
    //     0x7482bc: ldr             x0, [fp, #0x18]
    //     0x7482c0: ldur            w1, [x0, #0x17]
    //     0x7482c4: add             x1, x1, HEAP, lsl #32
    //     0x7482c8: stur            x1, [fp, #-8]
    // 0x7482cc: CheckStackOverflow
    //     0x7482cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7482d0: cmp             SP, x16
    //     0x7482d4: b.ls            #0x748364
    // 0x7482d8: ldr             x2, [fp, #0x10]
    // 0x7482dc: LoadField: r0 = r2->field_2b
    //     0x7482dc: ldur            w0, [x2, #0x2b]
    // 0x7482e0: DecompressPointer r0
    //     0x7482e0: add             x0, x0, HEAP, lsl #32
    // 0x7482e4: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x7482e4: ldur            w3, [x1, #0x17]
    // 0x7482e8: DecompressPointer r3
    //     0x7482e8: add             x3, x3, HEAP, lsl #32
    // 0x7482ec: LoadField: r4 = r3->field_7
    //     0x7482ec: ldur            w4, [x3, #7]
    // 0x7482f0: DecompressPointer r4
    //     0x7482f0: add             x4, x4, HEAP, lsl #32
    // 0x7482f4: r3 = LoadClassIdInstr(r0)
    //     0x7482f4: ldur            x3, [x0, #-1]
    //     0x7482f8: ubfx            x3, x3, #0xc, #0x14
    // 0x7482fc: stp             x4, x0, [SP]
    // 0x748300: mov             x0, x3
    // 0x748304: mov             lr, x0
    // 0x748308: ldr             lr, [x21, lr, lsl #3]
    // 0x74830c: blr             lr
    // 0x748310: tbnz            w0, #4, #0x74831c
    // 0x748314: r0 = true
    //     0x748314: add             x0, NULL, #0x20  ; true
    // 0x748318: b               #0x748358
    // 0x74831c: ldr             x1, [fp, #0x10]
    // 0x748320: ldur            x0, [fp, #-8]
    // 0x748324: LoadField: r2 = r1->field_2f
    //     0x748324: ldur            w2, [x1, #0x2f]
    // 0x748328: DecompressPointer r2
    //     0x748328: add             x2, x2, HEAP, lsl #32
    // 0x74832c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74832c: ldur            w1, [x0, #0x17]
    // 0x748330: DecompressPointer r1
    //     0x748330: add             x1, x1, HEAP, lsl #32
    // 0x748334: LoadField: r0 = r1->field_7
    //     0x748334: ldur            w0, [x1, #7]
    // 0x748338: DecompressPointer r0
    //     0x748338: add             x0, x0, HEAP, lsl #32
    // 0x74833c: r1 = LoadClassIdInstr(r2)
    //     0x74833c: ldur            x1, [x2, #-1]
    //     0x748340: ubfx            x1, x1, #0xc, #0x14
    // 0x748344: stp             x0, x2, [SP]
    // 0x748348: mov             x0, x1
    // 0x74834c: mov             lr, x0
    // 0x748350: ldr             lr, [x21, lr, lsl #3]
    // 0x748354: blr             lr
    // 0x748358: LeaveFrame
    //     0x748358: mov             SP, fp
    //     0x74835c: ldp             fp, lr, [SP], #0x10
    // 0x748360: ret
    //     0x748360: ret             
    // 0x748364: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748364: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748368: b               #0x7482d8
  }
  [closure] bool <anonymous closure>(dynamic, HotelModel) {
    // ** addr: 0x74836c, size: 0x6c
    // 0x74836c: EnterFrame
    //     0x74836c: stp             fp, lr, [SP, #-0x10]!
    //     0x748370: mov             fp, SP
    // 0x748374: AllocStack(0x10)
    //     0x748374: sub             SP, SP, #0x10
    // 0x748378: SetupParameters([dynamic _ /* r0 */])
    //     0x748378: ldr             x0, [fp, #0x18]
    //     0x74837c: ldur            w1, [x0, #0x17]
    //     0x748380: add             x1, x1, HEAP, lsl #32
    // 0x748384: CheckStackOverflow
    //     0x748384: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x748388: cmp             SP, x16
    //     0x74838c: b.ls            #0x7483d0
    // 0x748390: ldr             x0, [fp, #0x10]
    // 0x748394: LoadField: r2 = r0->field_7
    //     0x748394: ldur            w2, [x0, #7]
    // 0x748398: DecompressPointer r2
    //     0x748398: add             x2, x2, HEAP, lsl #32
    // 0x74839c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x74839c: ldur            w0, [x1, #0x17]
    // 0x7483a0: DecompressPointer r0
    //     0x7483a0: add             x0, x0, HEAP, lsl #32
    // 0x7483a4: LoadField: r1 = r0->field_b
    //     0x7483a4: ldur            w1, [x0, #0xb]
    // 0x7483a8: DecompressPointer r1
    //     0x7483a8: add             x1, x1, HEAP, lsl #32
    // 0x7483ac: r0 = LoadClassIdInstr(r2)
    //     0x7483ac: ldur            x0, [x2, #-1]
    //     0x7483b0: ubfx            x0, x0, #0xc, #0x14
    // 0x7483b4: stp             x1, x2, [SP]
    // 0x7483b8: mov             lr, x0
    // 0x7483bc: ldr             lr, [x21, lr, lsl #3]
    // 0x7483c0: blr             lr
    // 0x7483c4: LeaveFrame
    //     0x7483c4: mov             SP, fp
    //     0x7483c8: ldp             fp, lr, [SP], #0x10
    // 0x7483cc: ret
    //     0x7483cc: ret             
    // 0x7483d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7483d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7483d4: b               #0x748390
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7483d8, size: 0x54
    // 0x7483d8: EnterFrame
    //     0x7483d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7483dc: mov             fp, SP
    // 0x7483e0: ldr             x0, [fp, #0x10]
    // 0x7483e4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7483e4: ldur            w1, [x0, #0x17]
    // 0x7483e8: DecompressPointer r1
    //     0x7483e8: add             x1, x1, HEAP, lsl #32
    // 0x7483ec: CheckStackOverflow
    //     0x7483ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7483f0: cmp             SP, x16
    //     0x7483f4: b.ls            #0x748424
    // 0x7483f8: LoadField: r0 = r1->field_f
    //     0x7483f8: ldur            w0, [x1, #0xf]
    // 0x7483fc: DecompressPointer r0
    //     0x7483fc: add             x0, x0, HEAP, lsl #32
    // 0x748400: LoadField: r2 = r1->field_13
    //     0x748400: ldur            w2, [x1, #0x13]
    // 0x748404: DecompressPointer r2
    //     0x748404: add             x2, x2, HEAP, lsl #32
    // 0x748408: mov             x1, x0
    // 0x74840c: r3 = Null
    //     0x74840c: mov             x3, NULL
    // 0x748410: r0 = showRoomDialog()
    //     0x748410: bl              #0x6f6a1c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog
    // 0x748414: r0 = Null
    //     0x748414: mov             x0, NULL
    // 0x748418: LeaveFrame
    //     0x748418: mov             SP, fp
    //     0x74841c: ldp             fp, lr, [SP], #0x10
    // 0x748420: ret
    //     0x748420: ret             
    // 0x748424: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x748424: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x748428: b               #0x7483f8
  }
}

// class id: 3187, size: 0x28, field offset: 0xc
//   const constructor, 
class RoomsTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf67c, size: 0x24
    // 0x7bf67c: EnterFrame
    //     0x7bf67c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf680: mov             fp, SP
    // 0x7bf684: mov             x0, x1
    // 0x7bf688: r1 = <RoomsTab>
    //     0x7bf688: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bb28] TypeArguments: <RoomsTab>
    //     0x7bf68c: ldr             x1, [x1, #0xb28]
    // 0x7bf690: r0 = RoomsTabState()
    //     0x7bf690: bl              #0x7bf6a0  ; AllocateRoomsTabStateStub -> RoomsTabState (size=0x14)
    // 0x7bf694: LeaveFrame
    //     0x7bf694: mov             SP, fp
    //     0x7bf698: ldp             fp, lr, [SP], #0x10
    // 0x7bf69c: ret
    //     0x7bf69c: ret             
  }
}
