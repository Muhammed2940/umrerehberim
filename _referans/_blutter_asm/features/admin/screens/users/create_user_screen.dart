// lib: , url: package:umrem_demo/features/admin/screens/users/create_user_screen.dart

// class id: 1049538, size: 0x8
class :: {
}

// class id: 2484, size: 0x38, field offset: 0x14
class _CreateUserScreenState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e44e8, size: 0x130
    // 0x5e44e8: EnterFrame
    //     0x5e44e8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e44ec: mov             fp, SP
    // 0x5e44f0: AllocStack(0x18)
    //     0x5e44f0: sub             SP, SP, #0x18
    // 0x5e44f4: SetupParameters(_CreateUserScreenState this /* r1 => r1, fp-0x8 */)
    //     0x5e44f4: stur            x1, [fp, #-8]
    // 0x5e44f8: CheckStackOverflow
    //     0x5e44f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e44fc: cmp             SP, x16
    //     0x5e4500: b.ls            #0x5e460c
    // 0x5e4504: r1 = 1
    //     0x5e4504: mov             x1, #1
    // 0x5e4508: r0 = AllocateContext()
    //     0x5e4508: bl              #0x927010  ; AllocateContextStub
    // 0x5e450c: mov             x1, x0
    // 0x5e4510: ldur            x0, [fp, #-8]
    // 0x5e4514: StoreField: r1->field_f = r0
    //     0x5e4514: stur            w0, [x1, #0xf]
    // 0x5e4518: r0 = LoadStaticField(0x834)
    //     0x5e4518: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e451c: ldr             x0, [x0, #0x1068]
    // 0x5e4520: cmp             w0, NULL
    // 0x5e4524: b.eq            #0x5e4614
    // 0x5e4528: LoadField: r3 = r0->field_53
    //     0x5e4528: ldur            w3, [x0, #0x53]
    // 0x5e452c: DecompressPointer r3
    //     0x5e452c: add             x3, x3, HEAP, lsl #32
    // 0x5e4530: stur            x3, [fp, #-0x10]
    // 0x5e4534: LoadField: r0 = r3->field_7
    //     0x5e4534: ldur            w0, [x3, #7]
    // 0x5e4538: DecompressPointer r0
    //     0x5e4538: add             x0, x0, HEAP, lsl #32
    // 0x5e453c: mov             x2, x1
    // 0x5e4540: stur            x0, [fp, #-8]
    // 0x5e4544: r1 = Function '<anonymous closure>':.
    //     0x5e4544: add             x1, PP, #0x18, lsl #12  ; [pp+0x188b8] AnonymousClosure: (0x5e4638), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::initState (0x5e44e8)
    //     0x5e4548: ldr             x1, [x1, #0x8b8]
    // 0x5e454c: r0 = AllocateClosure()
    //     0x5e454c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e4550: ldur            x2, [fp, #-8]
    // 0x5e4554: mov             x3, x0
    // 0x5e4558: r1 = Null
    //     0x5e4558: mov             x1, NULL
    // 0x5e455c: stur            x3, [fp, #-8]
    // 0x5e4560: cmp             w2, NULL
    // 0x5e4564: b.eq            #0x5e4584
    // 0x5e4568: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e4568: ldur            w4, [x2, #0x17]
    // 0x5e456c: DecompressPointer r4
    //     0x5e456c: add             x4, x4, HEAP, lsl #32
    // 0x5e4570: r8 = X0
    //     0x5e4570: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e4574: LoadField: r9 = r4->field_7
    //     0x5e4574: ldur            x9, [x4, #7]
    // 0x5e4578: r3 = Null
    //     0x5e4578: add             x3, PP, #0x18, lsl #12  ; [pp+0x188c0] Null
    //     0x5e457c: ldr             x3, [x3, #0x8c0]
    // 0x5e4580: blr             x9
    // 0x5e4584: ldur            x0, [fp, #-0x10]
    // 0x5e4588: LoadField: r1 = r0->field_b
    //     0x5e4588: ldur            w1, [x0, #0xb]
    // 0x5e458c: LoadField: r2 = r0->field_f
    //     0x5e458c: ldur            w2, [x0, #0xf]
    // 0x5e4590: DecompressPointer r2
    //     0x5e4590: add             x2, x2, HEAP, lsl #32
    // 0x5e4594: LoadField: r3 = r2->field_b
    //     0x5e4594: ldur            w3, [x2, #0xb]
    // 0x5e4598: r2 = LoadInt32Instr(r1)
    //     0x5e4598: sbfx            x2, x1, #1, #0x1f
    // 0x5e459c: stur            x2, [fp, #-0x18]
    // 0x5e45a0: r1 = LoadInt32Instr(r3)
    //     0x5e45a0: sbfx            x1, x3, #1, #0x1f
    // 0x5e45a4: cmp             x2, x1
    // 0x5e45a8: b.ne            #0x5e45b4
    // 0x5e45ac: mov             x1, x0
    // 0x5e45b0: r0 = _growToNextCapacity()
    //     0x5e45b0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e45b4: ldur            x2, [fp, #-0x10]
    // 0x5e45b8: ldur            x3, [fp, #-0x18]
    // 0x5e45bc: add             x4, x3, #1
    // 0x5e45c0: lsl             x5, x4, #1
    // 0x5e45c4: StoreField: r2->field_b = r5
    //     0x5e45c4: stur            w5, [x2, #0xb]
    // 0x5e45c8: LoadField: r1 = r2->field_f
    //     0x5e45c8: ldur            w1, [x2, #0xf]
    // 0x5e45cc: DecompressPointer r1
    //     0x5e45cc: add             x1, x1, HEAP, lsl #32
    // 0x5e45d0: ldur            x0, [fp, #-8]
    // 0x5e45d4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e45d4: add             x25, x1, x3, lsl #2
    //     0x5e45d8: add             x25, x25, #0xf
    //     0x5e45dc: str             w0, [x25]
    //     0x5e45e0: tbz             w0, #0, #0x5e45fc
    //     0x5e45e4: ldurb           w16, [x1, #-1]
    //     0x5e45e8: ldurb           w17, [x0, #-1]
    //     0x5e45ec: and             x16, x17, x16, lsr #2
    //     0x5e45f0: tst             x16, HEAP, lsr #32
    //     0x5e45f4: b.eq            #0x5e45fc
    //     0x5e45f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e45fc: r0 = Null
    //     0x5e45fc: mov             x0, NULL
    // 0x5e4600: LeaveFrame
    //     0x5e4600: mov             SP, fp
    //     0x5e4604: ldp             fp, lr, [SP], #0x10
    // 0x5e4608: ret
    //     0x5e4608: ret             
    // 0x5e460c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e460c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e4610: b               #0x5e4504
    // 0x5e4614: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e4614: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e4638, size: 0xe0
    // 0x5e4638: EnterFrame
    //     0x5e4638: stp             fp, lr, [SP, #-0x10]!
    //     0x5e463c: mov             fp, SP
    // 0x5e4640: AllocStack(0x28)
    //     0x5e4640: sub             SP, SP, #0x28
    // 0x5e4644: SetupParameters([dynamic _ /* r0 */])
    //     0x5e4644: ldr             x0, [fp, #0x18]
    //     0x5e4648: ldur            w1, [x0, #0x17]
    //     0x5e464c: add             x1, x1, HEAP, lsl #32
    //     0x5e4650: stur            x1, [fp, #-8]
    // 0x5e4654: CheckStackOverflow
    //     0x5e4654: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e4658: cmp             SP, x16
    //     0x5e465c: b.ls            #0x5e470c
    // 0x5e4660: r1 = 1
    //     0x5e4660: mov             x1, #1
    // 0x5e4664: r0 = AllocateContext()
    //     0x5e4664: bl              #0x927010  ; AllocateContextStub
    // 0x5e4668: mov             x1, x0
    // 0x5e466c: ldur            x0, [fp, #-8]
    // 0x5e4670: stur            x1, [fp, #-0x10]
    // 0x5e4674: StoreField: r1->field_b = r0
    //     0x5e4674: stur            w0, [x1, #0xb]
    // 0x5e4678: LoadField: r2 = r0->field_f
    //     0x5e4678: ldur            w2, [x0, #0xf]
    // 0x5e467c: DecompressPointer r2
    //     0x5e467c: add             x2, x2, HEAP, lsl #32
    // 0x5e4680: LoadField: r3 = r2->field_f
    //     0x5e4680: ldur            w3, [x2, #0xf]
    // 0x5e4684: DecompressPointer r3
    //     0x5e4684: add             x3, x3, HEAP, lsl #32
    // 0x5e4688: cmp             w3, NULL
    // 0x5e468c: b.eq            #0x5e4714
    // 0x5e4690: r16 = <AdminProvider>
    //     0x5e4690: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x5e4694: ldr             x16, [x16, #0xb50]
    // 0x5e4698: stp             x3, x16, [SP]
    // 0x5e469c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e469c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e46a0: r0 = ReadContext.read()
    //     0x5e46a0: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e46a4: mov             x1, x0
    // 0x5e46a8: ldur            x2, [fp, #-0x10]
    // 0x5e46ac: StoreField: r2->field_f = r0
    //     0x5e46ac: stur            w0, [x2, #0xf]
    //     0x5e46b0: ldurb           w16, [x2, #-1]
    //     0x5e46b4: ldurb           w17, [x0, #-1]
    //     0x5e46b8: and             x16, x17, x16, lsr #2
    //     0x5e46bc: tst             x16, HEAP, lsr #32
    //     0x5e46c0: b.eq            #0x5e46c8
    //     0x5e46c4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e46c8: r0 = isSuperAdmin()
    //     0x5e46c8: bl              #0x5db9dc  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isSuperAdmin
    // 0x5e46cc: tbz             w0, #4, #0x5e46fc
    // 0x5e46d0: ldur            x0, [fp, #-8]
    // 0x5e46d4: LoadField: r3 = r0->field_f
    //     0x5e46d4: ldur            w3, [x0, #0xf]
    // 0x5e46d8: DecompressPointer r3
    //     0x5e46d8: add             x3, x3, HEAP, lsl #32
    // 0x5e46dc: ldur            x2, [fp, #-0x10]
    // 0x5e46e0: stur            x3, [fp, #-0x18]
    // 0x5e46e4: r1 = Function '<anonymous closure>':.
    //     0x5e46e4: add             x1, PP, #0x18, lsl #12  ; [pp+0x188d0] AnonymousClosure: (0x5e4718), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::initState (0x5e44e8)
    //     0x5e46e8: ldr             x1, [x1, #0x8d0]
    // 0x5e46ec: r0 = AllocateClosure()
    //     0x5e46ec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e46f0: ldur            x1, [fp, #-0x18]
    // 0x5e46f4: mov             x2, x0
    // 0x5e46f8: r0 = setState()
    //     0x5e46f8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e46fc: r0 = Null
    //     0x5e46fc: mov             x0, NULL
    // 0x5e4700: LeaveFrame
    //     0x5e4700: mov             SP, fp
    //     0x5e4704: ldp             fp, lr, [SP], #0x10
    // 0x5e4708: ret
    //     0x5e4708: ret             
    // 0x5e470c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e470c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e4710: b               #0x5e4660
    // 0x5e4714: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e4714: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e4718, size: 0x6c
    // 0x5e4718: ldr             x1, [SP]
    // 0x5e471c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e471c: ldur            w2, [x1, #0x17]
    // 0x5e4720: DecompressPointer r2
    //     0x5e4720: add             x2, x2, HEAP, lsl #32
    // 0x5e4724: LoadField: r1 = r2->field_b
    //     0x5e4724: ldur            w1, [x2, #0xb]
    // 0x5e4728: DecompressPointer r1
    //     0x5e4728: add             x1, x1, HEAP, lsl #32
    // 0x5e472c: LoadField: r2 = r1->field_f
    //     0x5e472c: ldur            w2, [x1, #0xf]
    // 0x5e4730: DecompressPointer r2
    //     0x5e4730: add             x2, x2, HEAP, lsl #32
    // 0x5e4734: r1 = LoadStaticField(0xfe4)
    //     0x5e4734: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5e4738: ldr             x1, [x1, #0x1fc8]
    // 0x5e473c: cmp             w1, NULL
    // 0x5e4740: b.ne            #0x5e474c
    // 0x5e4744: r0 = Null
    //     0x5e4744: mov             x0, NULL
    // 0x5e4748: b               #0x5e4758
    // 0x5e474c: LoadField: r3 = r1->field_4b
    //     0x5e474c: ldur            w3, [x1, #0x4b]
    // 0x5e4750: DecompressPointer r3
    //     0x5e4750: add             x3, x3, HEAP, lsl #32
    // 0x5e4754: mov             x0, x3
    // 0x5e4758: StoreField: r2->field_2b = r0
    //     0x5e4758: stur            w0, [x2, #0x2b]
    //     0x5e475c: ldurb           w16, [x2, #-1]
    //     0x5e4760: ldurb           w17, [x0, #-1]
    //     0x5e4764: and             x16, x17, x16, lsr #2
    //     0x5e4768: tst             x16, HEAP, lsr #32
    //     0x5e476c: b.eq            #0x5e477c
    //     0x5e4770: str             lr, [SP, #-8]!
    //     0x5e4774: bl              #0x9267b0  ; WriteBarrierWrappersStub
    //     0x5e4778: ldr             lr, [SP], #8
    // 0x5e477c: r0 = Null
    //     0x5e477c: mov             x0, NULL
    // 0x5e4780: ret
    //     0x5e4780: ret             
  }
  [closure] DropdownMenuItem<String> <anonymous closure>(dynamic, AgencyModel) {
    // ** addr: 0x6de694, size: 0x74
    // 0x6de694: EnterFrame
    //     0x6de694: stp             fp, lr, [SP, #-0x10]!
    //     0x6de698: mov             fp, SP
    // 0x6de69c: AllocStack(0x18)
    //     0x6de69c: sub             SP, SP, #0x18
    // 0x6de6a0: ldr             x0, [fp, #0x10]
    // 0x6de6a4: LoadField: r1 = r0->field_7
    //     0x6de6a4: ldur            w1, [x0, #7]
    // 0x6de6a8: DecompressPointer r1
    //     0x6de6a8: add             x1, x1, HEAP, lsl #32
    // 0x6de6ac: stur            x1, [fp, #-0x10]
    // 0x6de6b0: LoadField: r2 = r0->field_b
    //     0x6de6b0: ldur            w2, [x0, #0xb]
    // 0x6de6b4: DecompressPointer r2
    //     0x6de6b4: add             x2, x2, HEAP, lsl #32
    // 0x6de6b8: stur            x2, [fp, #-8]
    // 0x6de6bc: r0 = Text()
    //     0x6de6bc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6de6c0: mov             x2, x0
    // 0x6de6c4: ldur            x0, [fp, #-8]
    // 0x6de6c8: stur            x2, [fp, #-0x18]
    // 0x6de6cc: StoreField: r2->field_b = r0
    //     0x6de6cc: stur            w0, [x2, #0xb]
    // 0x6de6d0: r1 = <String>
    //     0x6de6d0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6de6d4: r0 = DropdownMenuItem()
    //     0x6de6d4: bl              #0x6de55c  ; AllocateDropdownMenuItemStub -> DropdownMenuItem<X0> (size=0x24)
    // 0x6de6d8: ldur            x1, [fp, #-0x10]
    // 0x6de6dc: StoreField: r0->field_1b = r1
    //     0x6de6dc: stur            w1, [x0, #0x1b]
    // 0x6de6e0: r1 = true
    //     0x6de6e0: add             x1, NULL, #0x20  ; true
    // 0x6de6e4: StoreField: r0->field_1f = r1
    //     0x6de6e4: stur            w1, [x0, #0x1f]
    // 0x6de6e8: r1 = Instance_AlignmentDirectional
    //     0x6de6e8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14330] Obj!AlignmentDirectional@a0ce11
    //     0x6de6ec: ldr             x1, [x1, #0x330]
    // 0x6de6f0: StoreField: r0->field_f = r1
    //     0x6de6f0: stur            w1, [x0, #0xf]
    // 0x6de6f4: ldur            x1, [fp, #-0x18]
    // 0x6de6f8: StoreField: r0->field_b = r1
    //     0x6de6f8: stur            w1, [x0, #0xb]
    // 0x6de6fc: LeaveFrame
    //     0x6de6fc: mov             SP, fp
    //     0x6de700: ldp             fp, lr, [SP], #0x10
    // 0x6de704: ret
    //     0x6de704: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x6eda88, size: 0xba0
    // 0x6eda88: EnterFrame
    //     0x6eda88: stp             fp, lr, [SP, #-0x10]!
    //     0x6eda8c: mov             fp, SP
    // 0x6eda90: AllocStack(0x80)
    //     0x6eda90: sub             SP, SP, #0x80
    // 0x6eda94: SetupParameters(_CreateUserScreenState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6eda94: stur            x1, [fp, #-8]
    //     0x6eda98: stur            x2, [fp, #-0x10]
    // 0x6eda9c: CheckStackOverflow
    //     0x6eda9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6edaa0: cmp             SP, x16
    //     0x6edaa4: b.ls            #0x6ee60c
    // 0x6edaa8: r1 = 3
    //     0x6edaa8: mov             x1, #3
    // 0x6edaac: r0 = AllocateContext()
    //     0x6edaac: bl              #0x927010  ; AllocateContextStub
    // 0x6edab0: mov             x1, x0
    // 0x6edab4: ldur            x0, [fp, #-8]
    // 0x6edab8: stur            x1, [fp, #-0x18]
    // 0x6edabc: StoreField: r1->field_f = r0
    //     0x6edabc: stur            w0, [x1, #0xf]
    // 0x6edac0: ldur            x2, [fp, #-0x10]
    // 0x6edac4: StoreField: r1->field_13 = r2
    //     0x6edac4: stur            w2, [x1, #0x13]
    // 0x6edac8: r16 = <AdminProvider>
    //     0x6edac8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x6edacc: ldr             x16, [x16, #0xb50]
    // 0x6edad0: stp             x2, x16, [SP]
    // 0x6edad4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6edad4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6edad8: r0 = of()
    //     0x6edad8: bl              #0x5de6a0  ; [package:provider/src/provider.dart] Provider::of
    // 0x6edadc: mov             x1, x0
    // 0x6edae0: ldur            x2, [fp, #-0x18]
    // 0x6edae4: stur            x1, [fp, #-0x10]
    // 0x6edae8: ArrayStore: r2[0] = r0  ; List_4
    //     0x6edae8: stur            w0, [x2, #0x17]
    //     0x6edaec: ldurb           w16, [x2, #-1]
    //     0x6edaf0: ldurb           w17, [x0, #-1]
    //     0x6edaf4: and             x16, x17, x16, lsr #2
    //     0x6edaf8: tst             x16, HEAP, lsr #32
    //     0x6edafc: b.eq            #0x6edb04
    //     0x6edb00: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6edb04: r0 = AppBar()
    //     0x6edb04: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6edb08: mov             x1, x0
    // 0x6edb0c: r2 = Instance_Text
    //     0x6edb0c: add             x2, PP, #0x18, lsl #12  ; [pp+0x18758] Obj!Text@a1c031
    //     0x6edb10: ldr             x2, [x2, #0x758]
    // 0x6edb14: stur            x0, [fp, #-0x20]
    // 0x6edb18: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6edb18: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6edb1c: r0 = AppBar()
    //     0x6edb1c: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6edb20: ldur            x0, [fp, #-8]
    // 0x6edb24: LoadField: r3 = r0->field_13
    //     0x6edb24: ldur            w3, [x0, #0x13]
    // 0x6edb28: DecompressPointer r3
    //     0x6edb28: add             x3, x3, HEAP, lsl #32
    // 0x6edb2c: stur            x3, [fp, #-0x30]
    // 0x6edb30: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x6edb30: ldur            w4, [x0, #0x17]
    // 0x6edb34: DecompressPointer r4
    //     0x6edb34: add             x4, x4, HEAP, lsl #32
    // 0x6edb38: stur            x4, [fp, #-0x28]
    // 0x6edb3c: r1 = Function '<anonymous closure>':.
    //     0x6edb3c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18760] AnonymousClosure: (0x6ef90c), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6edb40: ldr             x1, [x1, #0x760]
    // 0x6edb44: r2 = Null
    //     0x6edb44: mov             x2, NULL
    // 0x6edb48: r0 = AllocateClosure()
    //     0x6edb48: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6edb4c: r1 = <String>
    //     0x6edb4c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6edb50: stur            x0, [fp, #-0x38]
    // 0x6edb54: r0 = TextFormField()
    //     0x6edb54: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6edb58: stur            x0, [fp, #-0x40]
    // 0x6edb5c: ldur            x16, [fp, #-0x38]
    // 0x6edb60: str             x16, [SP]
    // 0x6edb64: mov             x1, x0
    // 0x6edb68: ldur            x2, [fp, #-0x28]
    // 0x6edb6c: r3 = Instance_InputDecoration
    //     0x6edb6c: add             x3, PP, #0x18, lsl #12  ; [pp+0x18768] Obj!InputDecoration@a0eb11
    //     0x6edb70: ldr             x3, [x3, #0x768]
    // 0x6edb74: r4 = const [0, 0x4, 0x1, 0x3, validator, 0x3, null]
    //     0x6edb74: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a88] List(7) [0, 0x4, 0x1, 0x3, "validator", 0x3, Null]
    //     0x6edb78: ldr             x4, [x4, #0xa88]
    // 0x6edb7c: r0 = TextFormField()
    //     0x6edb7c: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6edb80: r1 = <Widget>
    //     0x6edb80: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6edb84: r2 = 20
    //     0x6edb84: mov             x2, #0x14
    // 0x6edb88: r0 = AllocateArray()
    //     0x6edb88: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6edb8c: mov             x3, x0
    // 0x6edb90: ldur            x0, [fp, #-0x40]
    // 0x6edb94: stur            x3, [fp, #-0x38]
    // 0x6edb98: StoreField: r3->field_f = r0
    //     0x6edb98: stur            w0, [x3, #0xf]
    // 0x6edb9c: r16 = Instance_SizedBox
    //     0x6edb9c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6edba0: ldr             x16, [x16, #0x220]
    // 0x6edba4: StoreField: r3->field_13 = r16
    //     0x6edba4: stur            w16, [x3, #0x13]
    // 0x6edba8: ldur            x0, [fp, #-8]
    // 0x6edbac: LoadField: r4 = r0->field_1b
    //     0x6edbac: ldur            w4, [x0, #0x1b]
    // 0x6edbb0: DecompressPointer r4
    //     0x6edbb0: add             x4, x4, HEAP, lsl #32
    // 0x6edbb4: stur            x4, [fp, #-0x28]
    // 0x6edbb8: r1 = Function '<anonymous closure>':.
    //     0x6edbb8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18770] AnonymousClosure: (0x6ef8bc), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6edbbc: ldr             x1, [x1, #0x770]
    // 0x6edbc0: r2 = Null
    //     0x6edbc0: mov             x2, NULL
    // 0x6edbc4: r0 = AllocateClosure()
    //     0x6edbc4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6edbc8: r1 = <String>
    //     0x6edbc8: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6edbcc: stur            x0, [fp, #-0x40]
    // 0x6edbd0: r0 = TextFormField()
    //     0x6edbd0: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6edbd4: stur            x0, [fp, #-0x48]
    // 0x6edbd8: r16 = Instance_TextInputType
    //     0x6edbd8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6edbdc: ldr             x16, [x16, #0x948]
    // 0x6edbe0: ldur            lr, [fp, #-0x40]
    // 0x6edbe4: stp             lr, x16, [SP]
    // 0x6edbe8: mov             x1, x0
    // 0x6edbec: ldur            x2, [fp, #-0x28]
    // 0x6edbf0: r3 = Instance_InputDecoration
    //     0x6edbf0: add             x3, PP, #0x18, lsl #12  ; [pp+0x18778] Obj!InputDecoration@a0ea21
    //     0x6edbf4: ldr             x3, [x3, #0x778]
    // 0x6edbf8: r4 = const [0, 0x5, 0x2, 0x3, keyboardType, 0x3, validator, 0x4, null]
    //     0x6edbf8: add             x4, PP, #0x18, lsl #12  ; [pp+0x18780] List(9) [0, 0x5, 0x2, 0x3, "keyboardType", 0x3, "validator", 0x4, Null]
    //     0x6edbfc: ldr             x4, [x4, #0x780]
    // 0x6edc00: r0 = TextFormField()
    //     0x6edc00: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6edc04: ldur            x1, [fp, #-0x38]
    // 0x6edc08: ldur            x0, [fp, #-0x48]
    // 0x6edc0c: ArrayStore: r1[2] = r0  ; List_4
    //     0x6edc0c: add             x25, x1, #0x17
    //     0x6edc10: str             w0, [x25]
    //     0x6edc14: tbz             w0, #0, #0x6edc30
    //     0x6edc18: ldurb           w16, [x1, #-1]
    //     0x6edc1c: ldurb           w17, [x0, #-1]
    //     0x6edc20: and             x16, x17, x16, lsr #2
    //     0x6edc24: tst             x16, HEAP, lsr #32
    //     0x6edc28: b.eq            #0x6edc30
    //     0x6edc2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6edc30: ldur            x0, [fp, #-0x38]
    // 0x6edc34: r16 = Instance_SizedBox
    //     0x6edc34: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6edc38: ldr             x16, [x16, #0x220]
    // 0x6edc3c: StoreField: r0->field_1b = r16
    //     0x6edc3c: stur            w16, [x0, #0x1b]
    // 0x6edc40: ldur            x2, [fp, #-8]
    // 0x6edc44: LoadField: r3 = r2->field_1f
    //     0x6edc44: ldur            w3, [x2, #0x1f]
    // 0x6edc48: DecompressPointer r3
    //     0x6edc48: add             x3, x3, HEAP, lsl #32
    // 0x6edc4c: stur            x3, [fp, #-0x28]
    // 0x6edc50: r1 = <String>
    //     0x6edc50: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6edc54: r0 = TextFormField()
    //     0x6edc54: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6edc58: stur            x0, [fp, #-0x40]
    // 0x6edc5c: r16 = Instance_TextInputType
    //     0x6edc5c: add             x16, PP, #0x18, lsl #12  ; [pp+0x18788] Obj!TextInputType@a0ad41
    //     0x6edc60: ldr             x16, [x16, #0x788]
    // 0x6edc64: str             x16, [SP]
    // 0x6edc68: mov             x1, x0
    // 0x6edc6c: ldur            x2, [fp, #-0x28]
    // 0x6edc70: r3 = Instance_InputDecoration
    //     0x6edc70: add             x3, PP, #0x18, lsl #12  ; [pp+0x18790] Obj!InputDecoration@a0e931
    //     0x6edc74: ldr             x3, [x3, #0x790]
    // 0x6edc78: r4 = const [0, 0x4, 0x1, 0x3, keyboardType, 0x3, null]
    //     0x6edc78: add             x4, PP, #0x14, lsl #12  ; [pp+0x14958] List(7) [0, 0x4, 0x1, 0x3, "keyboardType", 0x3, Null]
    //     0x6edc7c: ldr             x4, [x4, #0x958]
    // 0x6edc80: r0 = TextFormField()
    //     0x6edc80: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6edc84: ldur            x1, [fp, #-0x38]
    // 0x6edc88: ldur            x0, [fp, #-0x40]
    // 0x6edc8c: ArrayStore: r1[4] = r0  ; List_4
    //     0x6edc8c: add             x25, x1, #0x1f
    //     0x6edc90: str             w0, [x25]
    //     0x6edc94: tbz             w0, #0, #0x6edcb0
    //     0x6edc98: ldurb           w16, [x1, #-1]
    //     0x6edc9c: ldurb           w17, [x0, #-1]
    //     0x6edca0: and             x16, x17, x16, lsr #2
    //     0x6edca4: tst             x16, HEAP, lsr #32
    //     0x6edca8: b.eq            #0x6edcb0
    //     0x6edcac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6edcb0: ldur            x0, [fp, #-0x38]
    // 0x6edcb4: r16 = Instance_SizedBox
    //     0x6edcb4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6edcb8: ldr             x16, [x16, #0x220]
    // 0x6edcbc: StoreField: r0->field_23 = r16
    //     0x6edcbc: stur            w16, [x0, #0x23]
    // 0x6edcc0: ldur            x3, [fp, #-8]
    // 0x6edcc4: LoadField: r4 = r3->field_2f
    //     0x6edcc4: ldur            w4, [x3, #0x2f]
    // 0x6edcc8: DecompressPointer r4
    //     0x6edcc8: add             x4, x4, HEAP, lsl #32
    // 0x6edccc: ldur            x2, [fp, #-0x18]
    // 0x6edcd0: stur            x4, [fp, #-0x28]
    // 0x6edcd4: r1 = Function '<anonymous closure>':.
    //     0x6edcd4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18798] AnonymousClosure: (0x6ef7e8), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6edcd8: ldr             x1, [x1, #0x798]
    // 0x6edcdc: r0 = AllocateClosure()
    //     0x6edcdc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6edce0: r1 = <String?>
    //     0x6edce0: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6edce4: stur            x0, [fp, #-0x40]
    // 0x6edce8: r0 = DropdownButtonFormField()
    //     0x6edce8: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6edcec: mov             x1, x0
    // 0x6edcf0: ldur            x3, [fp, #-0x28]
    // 0x6edcf4: ldur            x6, [fp, #-0x40]
    // 0x6edcf8: r2 = Instance_InputDecoration
    //     0x6edcf8: add             x2, PP, #0x18, lsl #12  ; [pp+0x187a0] Obj!InputDecoration@a0e841
    //     0x6edcfc: ldr             x2, [x2, #0x7a0]
    // 0x6edd00: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x6edd00: add             x5, PP, #0x18, lsl #12  ; [pp+0x187a8] List<DropdownMenuItem<String?>>(3)
    //     0x6edd04: ldr             x5, [x5, #0x7a8]
    // 0x6edd08: stur            x0, [fp, #-0x28]
    // 0x6edd0c: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6edd0c: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6edd10: r0 = DropdownButtonFormField()
    //     0x6edd10: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6edd14: ldur            x1, [fp, #-0x38]
    // 0x6edd18: ldur            x0, [fp, #-0x28]
    // 0x6edd1c: ArrayStore: r1[6] = r0  ; List_4
    //     0x6edd1c: add             x25, x1, #0x27
    //     0x6edd20: str             w0, [x25]
    //     0x6edd24: tbz             w0, #0, #0x6edd40
    //     0x6edd28: ldurb           w16, [x1, #-1]
    //     0x6edd2c: ldurb           w17, [x0, #-1]
    //     0x6edd30: and             x16, x17, x16, lsr #2
    //     0x6edd34: tst             x16, HEAP, lsr #32
    //     0x6edd38: b.eq            #0x6edd40
    //     0x6edd3c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6edd40: ldur            x0, [fp, #-0x38]
    // 0x6edd44: r16 = Instance_SizedBox
    //     0x6edd44: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6edd48: ldr             x16, [x16, #0x310]
    // 0x6edd4c: StoreField: r0->field_2b = r16
    //     0x6edd4c: stur            w16, [x0, #0x2b]
    // 0x6edd50: ldur            x2, [fp, #-8]
    // 0x6edd54: LoadField: r1 = r2->field_33
    //     0x6edd54: ldur            w1, [x2, #0x33]
    // 0x6edd58: DecompressPointer r1
    //     0x6edd58: add             x1, x1, HEAP, lsl #32
    // 0x6edd5c: cmp             w1, NULL
    // 0x6edd60: b.eq            #0x6edf44
    // 0x6edd64: r0 = _parts()
    //     0x6edd64: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6edd68: mov             x2, x0
    // 0x6edd6c: LoadField: r0 = r2->field_b
    //     0x6edd6c: ldur            w0, [x2, #0xb]
    // 0x6edd70: r1 = LoadInt32Instr(r0)
    //     0x6edd70: sbfx            x1, x0, #1, #0x1f
    // 0x6edd74: mov             x0, x1
    // 0x6edd78: r1 = 5
    //     0x6edd78: mov             x1, #5
    // 0x6edd7c: cmp             x1, x0
    // 0x6edd80: b.hs            #0x6ee614
    // 0x6edd84: LoadField: r0 = r2->field_23
    //     0x6edd84: ldur            w0, [x2, #0x23]
    // 0x6edd88: DecompressPointer r0
    //     0x6edd88: add             x0, x0, HEAP, lsl #32
    // 0x6edd8c: r1 = 60
    //     0x6edd8c: mov             x1, #0x3c
    // 0x6edd90: branchIfSmi(r0, 0x6edd9c)
    //     0x6edd90: tbz             w0, #0, #0x6edd9c
    // 0x6edd94: r1 = LoadClassIdInstr(r0)
    //     0x6edd94: ldur            x1, [x0, #-1]
    //     0x6edd98: ubfx            x1, x1, #0xc, #0x14
    // 0x6edd9c: str             x0, [SP]
    // 0x6edda0: mov             x0, x1
    // 0x6edda4: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6edda4: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6edda8: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6edda8: mov             x17, #0x21f6
    //     0x6eddac: add             lr, x0, x17
    //     0x6eddb0: ldr             lr, [x21, lr, lsl #3]
    //     0x6eddb4: blr             lr
    // 0x6eddb8: r1 = LoadClassIdInstr(r0)
    //     0x6eddb8: ldur            x1, [x0, #-1]
    //     0x6eddbc: ubfx            x1, x1, #0xc, #0x14
    // 0x6eddc0: mov             x16, x0
    // 0x6eddc4: mov             x0, x1
    // 0x6eddc8: mov             x1, x16
    // 0x6eddcc: r2 = 2
    //     0x6eddcc: mov             x2, #2
    // 0x6eddd0: r3 = "0"
    //     0x6eddd0: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6eddd4: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6eddd4: sub             lr, x0, #0xffc
    //     0x6eddd8: ldr             lr, [x21, lr, lsl #3]
    //     0x6edddc: blr             lr
    // 0x6edde0: r1 = Null
    //     0x6edde0: mov             x1, NULL
    // 0x6edde4: r2 = 10
    //     0x6edde4: mov             x2, #0xa
    // 0x6edde8: stur            x0, [fp, #-0x28]
    // 0x6eddec: r0 = AllocateArray()
    //     0x6eddec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6eddf0: mov             x2, x0
    // 0x6eddf4: ldur            x0, [fp, #-0x28]
    // 0x6eddf8: stur            x2, [fp, #-0x40]
    // 0x6eddfc: StoreField: r2->field_f = r0
    //     0x6eddfc: stur            w0, [x2, #0xf]
    // 0x6ede00: r16 = "/"
    //     0x6ede00: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6ede04: StoreField: r2->field_13 = r16
    //     0x6ede04: stur            w16, [x2, #0x13]
    // 0x6ede08: ldur            x0, [fp, #-8]
    // 0x6ede0c: LoadField: r1 = r0->field_33
    //     0x6ede0c: ldur            w1, [x0, #0x33]
    // 0x6ede10: DecompressPointer r1
    //     0x6ede10: add             x1, x1, HEAP, lsl #32
    // 0x6ede14: cmp             w1, NULL
    // 0x6ede18: b.eq            #0x6ee618
    // 0x6ede1c: r0 = _parts()
    //     0x6ede1c: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6ede20: mov             x2, x0
    // 0x6ede24: LoadField: r0 = r2->field_b
    //     0x6ede24: ldur            w0, [x2, #0xb]
    // 0x6ede28: r1 = LoadInt32Instr(r0)
    //     0x6ede28: sbfx            x1, x0, #1, #0x1f
    // 0x6ede2c: mov             x0, x1
    // 0x6ede30: r1 = 7
    //     0x6ede30: mov             x1, #7
    // 0x6ede34: cmp             x1, x0
    // 0x6ede38: b.hs            #0x6ee61c
    // 0x6ede3c: LoadField: r0 = r2->field_2b
    //     0x6ede3c: ldur            w0, [x2, #0x2b]
    // 0x6ede40: DecompressPointer r0
    //     0x6ede40: add             x0, x0, HEAP, lsl #32
    // 0x6ede44: r1 = 60
    //     0x6ede44: mov             x1, #0x3c
    // 0x6ede48: branchIfSmi(r0, 0x6ede54)
    //     0x6ede48: tbz             w0, #0, #0x6ede54
    // 0x6ede4c: r1 = LoadClassIdInstr(r0)
    //     0x6ede4c: ldur            x1, [x0, #-1]
    //     0x6ede50: ubfx            x1, x1, #0xc, #0x14
    // 0x6ede54: str             x0, [SP]
    // 0x6ede58: mov             x0, x1
    // 0x6ede5c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6ede5c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6ede60: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6ede60: mov             x17, #0x21f6
    //     0x6ede64: add             lr, x0, x17
    //     0x6ede68: ldr             lr, [x21, lr, lsl #3]
    //     0x6ede6c: blr             lr
    // 0x6ede70: r1 = LoadClassIdInstr(r0)
    //     0x6ede70: ldur            x1, [x0, #-1]
    //     0x6ede74: ubfx            x1, x1, #0xc, #0x14
    // 0x6ede78: mov             x16, x0
    // 0x6ede7c: mov             x0, x1
    // 0x6ede80: mov             x1, x16
    // 0x6ede84: r2 = 2
    //     0x6ede84: mov             x2, #2
    // 0x6ede88: r3 = "0"
    //     0x6ede88: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6ede8c: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6ede8c: sub             lr, x0, #0xffc
    //     0x6ede90: ldr             lr, [x21, lr, lsl #3]
    //     0x6ede94: blr             lr
    // 0x6ede98: ldur            x1, [fp, #-0x40]
    // 0x6ede9c: ArrayStore: r1[2] = r0  ; List_4
    //     0x6ede9c: add             x25, x1, #0x17
    //     0x6edea0: str             w0, [x25]
    //     0x6edea4: tbz             w0, #0, #0x6edec0
    //     0x6edea8: ldurb           w16, [x1, #-1]
    //     0x6edeac: ldurb           w17, [x0, #-1]
    //     0x6edeb0: and             x16, x17, x16, lsr #2
    //     0x6edeb4: tst             x16, HEAP, lsr #32
    //     0x6edeb8: b.eq            #0x6edec0
    //     0x6edebc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6edec0: ldur            x0, [fp, #-0x40]
    // 0x6edec4: r16 = "/"
    //     0x6edec4: ldr             x16, [PP, #0xb70]  ; [pp+0xb70] "/"
    // 0x6edec8: StoreField: r0->field_1b = r16
    //     0x6edec8: stur            w16, [x0, #0x1b]
    // 0x6edecc: ldur            x2, [fp, #-8]
    // 0x6eded0: LoadField: r1 = r2->field_33
    //     0x6eded0: ldur            w1, [x2, #0x33]
    // 0x6eded4: DecompressPointer r1
    //     0x6eded4: add             x1, x1, HEAP, lsl #32
    // 0x6eded8: cmp             w1, NULL
    // 0x6ededc: b.eq            #0x6ee620
    // 0x6edee0: r0 = _parts()
    //     0x6edee0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x6edee4: mov             x2, x0
    // 0x6edee8: LoadField: r0 = r2->field_b
    //     0x6edee8: ldur            w0, [x2, #0xb]
    // 0x6edeec: r1 = LoadInt32Instr(r0)
    //     0x6edeec: sbfx            x1, x0, #1, #0x1f
    // 0x6edef0: mov             x0, x1
    // 0x6edef4: r1 = 8
    //     0x6edef4: mov             x1, #8
    // 0x6edef8: cmp             x1, x0
    // 0x6edefc: b.hs            #0x6ee624
    // 0x6edf00: LoadField: r0 = r2->field_2f
    //     0x6edf00: ldur            w0, [x2, #0x2f]
    // 0x6edf04: DecompressPointer r0
    //     0x6edf04: add             x0, x0, HEAP, lsl #32
    // 0x6edf08: ldur            x1, [fp, #-0x40]
    // 0x6edf0c: ArrayStore: r1[4] = r0  ; List_4
    //     0x6edf0c: add             x25, x1, #0x1f
    //     0x6edf10: str             w0, [x25]
    //     0x6edf14: tbz             w0, #0, #0x6edf30
    //     0x6edf18: ldurb           w16, [x1, #-1]
    //     0x6edf1c: ldurb           w17, [x0, #-1]
    //     0x6edf20: and             x16, x17, x16, lsr #2
    //     0x6edf24: tst             x16, HEAP, lsr #32
    //     0x6edf28: b.eq            #0x6edf30
    //     0x6edf2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6edf30: ldur            x16, [fp, #-0x40]
    // 0x6edf34: str             x16, [SP]
    // 0x6edf38: r0 = _interpolate()
    //     0x6edf38: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6edf3c: mov             x2, x0
    // 0x6edf40: b               #0x6edf4c
    // 0x6edf44: r2 = "Tarih Seçiniz"
    //     0x6edf44: add             x2, PP, #0x18, lsl #12  ; [pp+0x187b0] "Tarih Seçiniz"
    //     0x6edf48: ldr             x2, [x2, #0x7b0]
    // 0x6edf4c: ldur            x0, [fp, #-8]
    // 0x6edf50: stur            x2, [fp, #-0x28]
    // 0x6edf54: LoadField: r1 = r0->field_33
    //     0x6edf54: ldur            w1, [x0, #0x33]
    // 0x6edf58: DecompressPointer r1
    //     0x6edf58: add             x1, x1, HEAP, lsl #32
    // 0x6edf5c: cmp             w1, NULL
    // 0x6edf60: b.eq            #0x6edf70
    // 0x6edf64: mov             x0, x2
    // 0x6edf68: r2 = Null
    //     0x6edf68: mov             x2, NULL
    // 0x6edf6c: b               #0x6edf90
    // 0x6edf70: ldur            x3, [fp, #-0x18]
    // 0x6edf74: LoadField: r1 = r3->field_13
    //     0x6edf74: ldur            w1, [x3, #0x13]
    // 0x6edf78: DecompressPointer r1
    //     0x6edf78: add             x1, x1, HEAP, lsl #32
    // 0x6edf7c: r0 = of()
    //     0x6edf7c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x6edf80: LoadField: r1 = r0->field_53
    //     0x6edf80: ldur            w1, [x0, #0x53]
    // 0x6edf84: DecompressPointer r1
    //     0x6edf84: add             x1, x1, HEAP, lsl #32
    // 0x6edf88: mov             x2, x1
    // 0x6edf8c: ldur            x0, [fp, #-0x28]
    // 0x6edf90: ldur            x1, [fp, #-0x38]
    // 0x6edf94: stur            x2, [fp, #-0x40]
    // 0x6edf98: r0 = TextStyle()
    //     0x6edf98: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6edf9c: mov             x1, x0
    // 0x6edfa0: r0 = true
    //     0x6edfa0: add             x0, NULL, #0x20  ; true
    // 0x6edfa4: stur            x1, [fp, #-0x48]
    // 0x6edfa8: StoreField: r1->field_7 = r0
    //     0x6edfa8: stur            w0, [x1, #7]
    // 0x6edfac: ldur            x2, [fp, #-0x40]
    // 0x6edfb0: StoreField: r1->field_b = r2
    //     0x6edfb0: stur            w2, [x1, #0xb]
    // 0x6edfb4: r0 = Text()
    //     0x6edfb4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6edfb8: mov             x1, x0
    // 0x6edfbc: ldur            x0, [fp, #-0x28]
    // 0x6edfc0: stur            x1, [fp, #-0x40]
    // 0x6edfc4: StoreField: r1->field_b = r0
    //     0x6edfc4: stur            w0, [x1, #0xb]
    // 0x6edfc8: ldur            x0, [fp, #-0x48]
    // 0x6edfcc: StoreField: r1->field_13 = r0
    //     0x6edfcc: stur            w0, [x1, #0x13]
    // 0x6edfd0: r0 = InputDecorator()
    //     0x6edfd0: bl              #0x67e7d0  ; AllocateInputDecoratorStub -> InputDecorator (size=0x30)
    // 0x6edfd4: mov             x1, x0
    // 0x6edfd8: r0 = Instance_InputDecoration
    //     0x6edfd8: add             x0, PP, #0x18, lsl #12  ; [pp+0x187b8] Obj!InputDecoration@a0e751
    //     0x6edfdc: ldr             x0, [x0, #0x7b8]
    // 0x6edfe0: stur            x1, [fp, #-0x28]
    // 0x6edfe4: StoreField: r1->field_b = r0
    //     0x6edfe4: stur            w0, [x1, #0xb]
    // 0x6edfe8: r0 = false
    //     0x6edfe8: add             x0, NULL, #0x30  ; false
    // 0x6edfec: StoreField: r1->field_1b = r0
    //     0x6edfec: stur            w0, [x1, #0x1b]
    // 0x6edff0: StoreField: r1->field_1f = r0
    //     0x6edff0: stur            w0, [x1, #0x1f]
    // 0x6edff4: StoreField: r1->field_23 = r0
    //     0x6edff4: stur            w0, [x1, #0x23]
    // 0x6edff8: StoreField: r1->field_27 = r0
    //     0x6edff8: stur            w0, [x1, #0x27]
    // 0x6edffc: ldur            x2, [fp, #-0x40]
    // 0x6ee000: StoreField: r1->field_2b = r2
    //     0x6ee000: stur            w2, [x1, #0x2b]
    // 0x6ee004: r0 = InkWell()
    //     0x6ee004: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x6ee008: mov             x3, x0
    // 0x6ee00c: ldur            x0, [fp, #-0x28]
    // 0x6ee010: stur            x3, [fp, #-0x40]
    // 0x6ee014: StoreField: r3->field_b = r0
    //     0x6ee014: stur            w0, [x3, #0xb]
    // 0x6ee018: ldur            x2, [fp, #-0x18]
    // 0x6ee01c: r1 = Function '<anonymous closure>':.
    //     0x6ee01c: add             x1, PP, #0x18, lsl #12  ; [pp+0x187c0] AnonymousClosure: (0x6ef608), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ee020: ldr             x1, [x1, #0x7c0]
    // 0x6ee024: r0 = AllocateClosure()
    //     0x6ee024: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ee028: mov             x1, x0
    // 0x6ee02c: ldur            x0, [fp, #-0x40]
    // 0x6ee030: StoreField: r0->field_f = r1
    //     0x6ee030: stur            w1, [x0, #0xf]
    // 0x6ee034: r2 = true
    //     0x6ee034: add             x2, NULL, #0x20  ; true
    // 0x6ee038: StoreField: r0->field_47 = r2
    //     0x6ee038: stur            w2, [x0, #0x47]
    // 0x6ee03c: r1 = Instance_BoxShape
    //     0x6ee03c: add             x1, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6ee040: ldr             x1, [x1, #0x1c8]
    // 0x6ee044: StoreField: r0->field_4b = r1
    //     0x6ee044: stur            w1, [x0, #0x4b]
    // 0x6ee048: StoreField: r0->field_73 = r2
    //     0x6ee048: stur            w2, [x0, #0x73]
    // 0x6ee04c: r3 = false
    //     0x6ee04c: add             x3, NULL, #0x30  ; false
    // 0x6ee050: StoreField: r0->field_77 = r3
    //     0x6ee050: stur            w3, [x0, #0x77]
    // 0x6ee054: StoreField: r0->field_87 = r2
    //     0x6ee054: stur            w2, [x0, #0x87]
    // 0x6ee058: StoreField: r0->field_7f = r3
    //     0x6ee058: stur            w3, [x0, #0x7f]
    // 0x6ee05c: ldur            x1, [fp, #-0x38]
    // 0x6ee060: ArrayStore: r1[8] = r0  ; List_4
    //     0x6ee060: add             x25, x1, #0x2f
    //     0x6ee064: str             w0, [x25]
    //     0x6ee068: tbz             w0, #0, #0x6ee084
    //     0x6ee06c: ldurb           w16, [x1, #-1]
    //     0x6ee070: ldurb           w17, [x0, #-1]
    //     0x6ee074: and             x16, x17, x16, lsr #2
    //     0x6ee078: tst             x16, HEAP, lsr #32
    //     0x6ee07c: b.eq            #0x6ee084
    //     0x6ee080: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ee084: ldur            x0, [fp, #-0x38]
    // 0x6ee088: r16 = Instance_SizedBox
    //     0x6ee088: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6ee08c: ldr             x16, [x16, #0x310]
    // 0x6ee090: StoreField: r0->field_33 = r16
    //     0x6ee090: stur            w16, [x0, #0x33]
    // 0x6ee094: r1 = <Widget>
    //     0x6ee094: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ee098: r0 = AllocateGrowableArray()
    //     0x6ee098: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ee09c: mov             x2, x0
    // 0x6ee0a0: ldur            x0, [fp, #-0x38]
    // 0x6ee0a4: stur            x2, [fp, #-0x28]
    // 0x6ee0a8: StoreField: r2->field_f = r0
    //     0x6ee0a8: stur            w0, [x2, #0xf]
    // 0x6ee0ac: r0 = 20
    //     0x6ee0ac: mov             x0, #0x14
    // 0x6ee0b0: StoreField: r2->field_b = r0
    //     0x6ee0b0: stur            w0, [x2, #0xb]
    // 0x6ee0b4: ldur            x1, [fp, #-0x10]
    // 0x6ee0b8: r0 = isSuperAdmin()
    //     0x6ee0b8: bl              #0x5db9dc  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::isSuperAdmin
    // 0x6ee0bc: tbnz            w0, #4, #0x6ee22c
    // 0x6ee0c0: ldur            x0, [fp, #-8]
    // 0x6ee0c4: ldur            x3, [fp, #-0x10]
    // 0x6ee0c8: r4 = 2
    //     0x6ee0c8: mov             x4, #2
    // 0x6ee0cc: LoadField: r5 = r0->field_2b
    //     0x6ee0cc: ldur            w5, [x0, #0x2b]
    // 0x6ee0d0: DecompressPointer r5
    //     0x6ee0d0: add             x5, x5, HEAP, lsl #32
    // 0x6ee0d4: mov             x2, x4
    // 0x6ee0d8: stur            x5, [fp, #-0x38]
    // 0x6ee0dc: r1 = Null
    //     0x6ee0dc: mov             x1, NULL
    // 0x6ee0e0: r0 = AllocateArray()
    //     0x6ee0e0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ee0e4: stur            x0, [fp, #-0x40]
    // 0x6ee0e8: r16 = Instance_DropdownMenuItem
    //     0x6ee0e8: add             x16, PP, #0x18, lsl #12  ; [pp+0x187c8] Obj!DropdownMenuItem<String>@a1f591
    //     0x6ee0ec: ldr             x16, [x16, #0x7c8]
    // 0x6ee0f0: StoreField: r0->field_f = r16
    //     0x6ee0f0: stur            w16, [x0, #0xf]
    // 0x6ee0f4: r1 = <DropdownMenuItem<String>>
    //     0x6ee0f4: add             x1, PP, #0x16, lsl #12  ; [pp+0x16040] TypeArguments: <DropdownMenuItem<String>>
    //     0x6ee0f8: ldr             x1, [x1, #0x40]
    // 0x6ee0fc: r0 = AllocateGrowableArray()
    //     0x6ee0fc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ee100: mov             x3, x0
    // 0x6ee104: ldur            x0, [fp, #-0x40]
    // 0x6ee108: stur            x3, [fp, #-0x48]
    // 0x6ee10c: StoreField: r3->field_f = r0
    //     0x6ee10c: stur            w0, [x3, #0xf]
    // 0x6ee110: r0 = 2
    //     0x6ee110: mov             x0, #2
    // 0x6ee114: StoreField: r3->field_b = r0
    //     0x6ee114: stur            w0, [x3, #0xb]
    // 0x6ee118: ldur            x0, [fp, #-0x10]
    // 0x6ee11c: LoadField: r4 = r0->field_3f
    //     0x6ee11c: ldur            w4, [x0, #0x3f]
    // 0x6ee120: DecompressPointer r4
    //     0x6ee120: add             x4, x4, HEAP, lsl #32
    // 0x6ee124: stur            x4, [fp, #-0x40]
    // 0x6ee128: r1 = Function '<anonymous closure>':.
    //     0x6ee128: add             x1, PP, #0x18, lsl #12  ; [pp+0x187d0] AnonymousClosure: (0x6de694), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ee12c: ldr             x1, [x1, #0x7d0]
    // 0x6ee130: r2 = Null
    //     0x6ee130: mov             x2, NULL
    // 0x6ee134: r0 = AllocateClosure()
    //     0x6ee134: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ee138: mov             x1, x0
    // 0x6ee13c: ldur            x0, [fp, #-0x40]
    // 0x6ee140: r2 = LoadClassIdInstr(r0)
    //     0x6ee140: ldur            x2, [x0, #-1]
    //     0x6ee144: ubfx            x2, x2, #0xc, #0x14
    // 0x6ee148: r16 = <DropdownMenuItem<String>>
    //     0x6ee148: add             x16, PP, #0x16, lsl #12  ; [pp+0x16040] TypeArguments: <DropdownMenuItem<String>>
    //     0x6ee14c: ldr             x16, [x16, #0x40]
    // 0x6ee150: stp             x0, x16, [SP, #8]
    // 0x6ee154: str             x1, [SP]
    // 0x6ee158: mov             x0, x2
    // 0x6ee15c: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6ee15c: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6ee160: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6ee160: mov             x17, #0xd1d6
    //     0x6ee164: add             lr, x0, x17
    //     0x6ee168: ldr             lr, [x21, lr, lsl #3]
    //     0x6ee16c: blr             lr
    // 0x6ee170: ldur            x1, [fp, #-0x48]
    // 0x6ee174: mov             x2, x0
    // 0x6ee178: r0 = addAll()
    //     0x6ee178: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6ee17c: ldur            x2, [fp, #-0x18]
    // 0x6ee180: r1 = Function '<anonymous closure>':.
    //     0x6ee180: add             x1, PP, #0x18, lsl #12  ; [pp+0x187d8] AnonymousClosure: (0x6ef4b0), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ee184: ldr             x1, [x1, #0x7d8]
    // 0x6ee188: r0 = AllocateClosure()
    //     0x6ee188: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ee18c: ldur            x2, [fp, #-0x18]
    // 0x6ee190: r1 = Function '<anonymous closure>':.
    //     0x6ee190: add             x1, PP, #0x18, lsl #12  ; [pp+0x187e0] AnonymousClosure: (0x6ef468), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ee194: ldr             x1, [x1, #0x7e0]
    // 0x6ee198: stur            x0, [fp, #-0x40]
    // 0x6ee19c: r0 = AllocateClosure()
    //     0x6ee19c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ee1a0: r1 = <String>
    //     0x6ee1a0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6ee1a4: stur            x0, [fp, #-0x50]
    // 0x6ee1a8: r0 = DropdownButtonFormField()
    //     0x6ee1a8: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6ee1ac: stur            x0, [fp, #-0x58]
    // 0x6ee1b0: ldur            x16, [fp, #-0x50]
    // 0x6ee1b4: str             x16, [SP]
    // 0x6ee1b8: mov             x1, x0
    // 0x6ee1bc: ldur            x3, [fp, #-0x38]
    // 0x6ee1c0: ldur            x5, [fp, #-0x48]
    // 0x6ee1c4: ldur            x6, [fp, #-0x40]
    // 0x6ee1c8: r2 = Instance_InputDecoration
    //     0x6ee1c8: add             x2, PP, #0x18, lsl #12  ; [pp+0x187e8] Obj!InputDecoration@a0e661
    //     0x6ee1cc: ldr             x2, [x2, #0x7e8]
    // 0x6ee1d0: r4 = const [0, 0x6, 0x1, 0x5, validator, 0x5, null]
    //     0x6ee1d0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14908] List(7) [0, 0x6, 0x1, 0x5, "validator", 0x5, Null]
    //     0x6ee1d4: ldr             x4, [x4, #0x908]
    // 0x6ee1d8: r0 = DropdownButtonFormField()
    //     0x6ee1d8: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6ee1dc: r1 = Null
    //     0x6ee1dc: mov             x1, NULL
    // 0x6ee1e0: r2 = 4
    //     0x6ee1e0: mov             x2, #4
    // 0x6ee1e4: r0 = AllocateArray()
    //     0x6ee1e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6ee1e8: mov             x2, x0
    // 0x6ee1ec: ldur            x0, [fp, #-0x58]
    // 0x6ee1f0: stur            x2, [fp, #-0x38]
    // 0x6ee1f4: StoreField: r2->field_f = r0
    //     0x6ee1f4: stur            w0, [x2, #0xf]
    // 0x6ee1f8: r16 = Instance_SizedBox
    //     0x6ee1f8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6ee1fc: ldr             x16, [x16, #0x310]
    // 0x6ee200: StoreField: r2->field_13 = r16
    //     0x6ee200: stur            w16, [x2, #0x13]
    // 0x6ee204: r1 = <Widget>
    //     0x6ee204: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6ee208: r0 = AllocateGrowableArray()
    //     0x6ee208: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6ee20c: mov             x1, x0
    // 0x6ee210: ldur            x0, [fp, #-0x38]
    // 0x6ee214: StoreField: r1->field_f = r0
    //     0x6ee214: stur            w0, [x1, #0xf]
    // 0x6ee218: r0 = 4
    //     0x6ee218: mov             x0, #4
    // 0x6ee21c: StoreField: r1->field_b = r0
    //     0x6ee21c: stur            w0, [x1, #0xb]
    // 0x6ee220: mov             x2, x1
    // 0x6ee224: ldur            x1, [fp, #-0x28]
    // 0x6ee228: r0 = addAll()
    //     0x6ee228: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6ee22c: ldur            x0, [fp, #-8]
    // 0x6ee230: LoadField: r1 = r0->field_27
    //     0x6ee230: ldur            w1, [x0, #0x27]
    // 0x6ee234: DecompressPointer r1
    //     0x6ee234: add             x1, x1, HEAP, lsl #32
    // 0x6ee238: stur            x1, [fp, #-0x38]
    // 0x6ee23c: tbnz            w1, #4, #0x6ee24c
    // 0x6ee240: r2 = Instance_Text
    //     0x6ee240: add             x2, PP, #0x18, lsl #12  ; [pp+0x187f0] Obj!Text@a1bf91
    //     0x6ee244: ldr             x2, [x2, #0x7f0]
    // 0x6ee248: b               #0x6ee250
    // 0x6ee24c: r2 = Null
    //     0x6ee24c: mov             x2, NULL
    // 0x6ee250: ldur            x0, [fp, #-0x28]
    // 0x6ee254: stur            x2, [fp, #-8]
    // 0x6ee258: r0 = CheckboxListTile()
    //     0x6ee258: bl              #0x6ee628  ; AllocateCheckboxListTileStub -> CheckboxListTile (size=0xa0)
    // 0x6ee25c: mov             x3, x0
    // 0x6ee260: ldur            x0, [fp, #-0x38]
    // 0x6ee264: stur            x3, [fp, #-0x40]
    // 0x6ee268: StoreField: r3->field_b = r0
    //     0x6ee268: stur            w0, [x3, #0xb]
    // 0x6ee26c: ldur            x2, [fp, #-0x18]
    // 0x6ee270: r1 = Function '<anonymous closure>':.
    //     0x6ee270: add             x1, PP, #0x18, lsl #12  ; [pp+0x187f8] AnonymousClosure: (0x6ef3a8), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ee274: ldr             x1, [x1, #0x7f8]
    // 0x6ee278: r0 = AllocateClosure()
    //     0x6ee278: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ee27c: mov             x1, x0
    // 0x6ee280: ldur            x0, [fp, #-0x40]
    // 0x6ee284: StoreField: r0->field_f = r1
    //     0x6ee284: stur            w1, [x0, #0xf]
    // 0x6ee288: r2 = false
    //     0x6ee288: add             x2, NULL, #0x30  ; false
    // 0x6ee28c: StoreField: r0->field_3b = r2
    //     0x6ee28c: stur            w2, [x0, #0x3b]
    // 0x6ee290: StoreField: r0->field_47 = r2
    //     0x6ee290: stur            w2, [x0, #0x47]
    // 0x6ee294: r1 = Instance_Text
    //     0x6ee294: add             x1, PP, #0x18, lsl #12  ; [pp+0x18800] Obj!Text@a1bf41
    //     0x6ee298: ldr             x1, [x1, #0x800]
    // 0x6ee29c: StoreField: r0->field_4f = r1
    //     0x6ee29c: stur            w1, [x0, #0x4f]
    // 0x6ee2a0: ldur            x1, [fp, #-8]
    // 0x6ee2a4: StoreField: r0->field_53 = r1
    //     0x6ee2a4: stur            w1, [x0, #0x53]
    // 0x6ee2a8: StoreField: r0->field_63 = r2
    //     0x6ee2a8: stur            w2, [x0, #0x63]
    // 0x6ee2ac: r1 = Instance_ListTileControlAffinity
    //     0x6ee2ac: add             x1, PP, #0x18, lsl #12  ; [pp+0x18808] Obj!ListTileControlAffinity@a2b7f1
    //     0x6ee2b0: ldr             x1, [x1, #0x808]
    // 0x6ee2b4: StoreField: r0->field_67 = r1
    //     0x6ee2b4: stur            w1, [x0, #0x67]
    // 0x6ee2b8: r1 = Instance_EdgeInsets
    //     0x6ee2b8: ldr             x1, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x6ee2bc: StoreField: r0->field_6b = r1
    //     0x6ee2bc: stur            w1, [x0, #0x6b]
    // 0x6ee2c0: StoreField: r0->field_6f = r2
    //     0x6ee2c0: stur            w2, [x0, #0x6f]
    // 0x6ee2c4: d0 = 1.000000
    //     0x6ee2c4: fmov            d0, #1.00000000
    // 0x6ee2c8: StoreField: r0->field_8f = d0
    //     0x6ee2c8: stur            d0, [x0, #0x8f]
    // 0x6ee2cc: StoreField: r0->field_8b = r2
    //     0x6ee2cc: stur            w2, [x0, #0x8b]
    // 0x6ee2d0: r1 = Instance__CheckboxType
    //     0x6ee2d0: add             x1, PP, #0x18, lsl #12  ; [pp+0x18810] Obj!_CheckboxType@a2bc71
    //     0x6ee2d4: ldr             x1, [x1, #0x810]
    // 0x6ee2d8: StoreField: r0->field_9b = r1
    //     0x6ee2d8: stur            w1, [x0, #0x9b]
    // 0x6ee2dc: ldur            x3, [fp, #-0x28]
    // 0x6ee2e0: LoadField: r1 = r3->field_b
    //     0x6ee2e0: ldur            w1, [x3, #0xb]
    // 0x6ee2e4: LoadField: r4 = r3->field_f
    //     0x6ee2e4: ldur            w4, [x3, #0xf]
    // 0x6ee2e8: DecompressPointer r4
    //     0x6ee2e8: add             x4, x4, HEAP, lsl #32
    // 0x6ee2ec: LoadField: r5 = r4->field_b
    //     0x6ee2ec: ldur            w5, [x4, #0xb]
    // 0x6ee2f0: r4 = LoadInt32Instr(r1)
    //     0x6ee2f0: sbfx            x4, x1, #1, #0x1f
    // 0x6ee2f4: stur            x4, [fp, #-0x60]
    // 0x6ee2f8: r1 = LoadInt32Instr(r5)
    //     0x6ee2f8: sbfx            x1, x5, #1, #0x1f
    // 0x6ee2fc: cmp             x4, x1
    // 0x6ee300: b.ne            #0x6ee30c
    // 0x6ee304: mov             x1, x3
    // 0x6ee308: r0 = _growToNextCapacity()
    //     0x6ee308: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6ee30c: ldur            x2, [fp, #-0x28]
    // 0x6ee310: ldur            x3, [fp, #-0x60]
    // 0x6ee314: add             x4, x3, #1
    // 0x6ee318: stur            x4, [fp, #-0x68]
    // 0x6ee31c: lsl             x0, x4, #1
    // 0x6ee320: StoreField: r2->field_b = r0
    //     0x6ee320: stur            w0, [x2, #0xb]
    // 0x6ee324: LoadField: r5 = r2->field_f
    //     0x6ee324: ldur            w5, [x2, #0xf]
    // 0x6ee328: DecompressPointer r5
    //     0x6ee328: add             x5, x5, HEAP, lsl #32
    // 0x6ee32c: mov             x1, x5
    // 0x6ee330: ldur            x0, [fp, #-0x40]
    // 0x6ee334: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6ee334: add             x25, x1, x3, lsl #2
    //     0x6ee338: add             x25, x25, #0xf
    //     0x6ee33c: str             w0, [x25]
    //     0x6ee340: tbz             w0, #0, #0x6ee35c
    //     0x6ee344: ldurb           w16, [x1, #-1]
    //     0x6ee348: ldurb           w17, [x0, #-1]
    //     0x6ee34c: and             x16, x17, x16, lsr #2
    //     0x6ee350: tst             x16, HEAP, lsr #32
    //     0x6ee354: b.eq            #0x6ee35c
    //     0x6ee358: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ee35c: LoadField: r0 = r5->field_b
    //     0x6ee35c: ldur            w0, [x5, #0xb]
    // 0x6ee360: r1 = LoadInt32Instr(r0)
    //     0x6ee360: sbfx            x1, x0, #1, #0x1f
    // 0x6ee364: cmp             x4, x1
    // 0x6ee368: b.ne            #0x6ee374
    // 0x6ee36c: mov             x1, x2
    // 0x6ee370: r0 = _growToNextCapacity()
    //     0x6ee370: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6ee374: ldur            x1, [fp, #-0x68]
    // 0x6ee378: ldur            x2, [fp, #-0x10]
    // 0x6ee37c: ldur            x0, [fp, #-0x28]
    // 0x6ee380: add             x3, x1, #1
    // 0x6ee384: stur            x3, [fp, #-0x60]
    // 0x6ee388: lsl             x4, x3, #1
    // 0x6ee38c: StoreField: r0->field_b = r4
    //     0x6ee38c: stur            w4, [x0, #0xb]
    // 0x6ee390: LoadField: r4 = r0->field_f
    //     0x6ee390: ldur            w4, [x0, #0xf]
    // 0x6ee394: DecompressPointer r4
    //     0x6ee394: add             x4, x4, HEAP, lsl #32
    // 0x6ee398: stur            x4, [fp, #-0x38]
    // 0x6ee39c: add             x5, x4, x1, lsl #2
    // 0x6ee3a0: r16 = Instance_SizedBox
    //     0x6ee3a0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x6ee3a4: ldr             x16, [x16, #0x320]
    // 0x6ee3a8: StoreField: r5->field_f = r16
    //     0x6ee3a8: stur            w16, [x5, #0xf]
    // 0x6ee3ac: LoadField: r5 = r2->field_2b
    //     0x6ee3ac: ldur            w5, [x2, #0x2b]
    // 0x6ee3b0: DecompressPointer r5
    //     0x6ee3b0: add             x5, x5, HEAP, lsl #32
    // 0x6ee3b4: stur            x5, [fp, #-8]
    // 0x6ee3b8: tbnz            w5, #4, #0x6ee3c8
    // 0x6ee3bc: mov             x0, x5
    // 0x6ee3c0: r1 = Null
    //     0x6ee3c0: mov             x1, NULL
    // 0x6ee3c4: b               #0x6ee3e0
    // 0x6ee3c8: ldur            x2, [fp, #-0x18]
    // 0x6ee3cc: r1 = Function '<anonymous closure>':.
    //     0x6ee3cc: add             x1, PP, #0x18, lsl #12  ; [pp+0x18818] AnonymousClosure: (0x6ee634), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ee3d0: ldr             x1, [x1, #0x818]
    // 0x6ee3d4: r0 = AllocateClosure()
    //     0x6ee3d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ee3d8: mov             x1, x0
    // 0x6ee3dc: ldur            x0, [fp, #-8]
    // 0x6ee3e0: stur            x1, [fp, #-0x10]
    // 0x6ee3e4: tbnz            w0, #4, #0x6ee3f4
    // 0x6ee3e8: r3 = Instance_SizedBox
    //     0x6ee3e8: add             x3, PP, #0x18, lsl #12  ; [pp+0x18820] Obj!SizedBox@a1fbb1
    //     0x6ee3ec: ldr             x3, [x3, #0x820]
    // 0x6ee3f0: b               #0x6ee3fc
    // 0x6ee3f4: r3 = Instance_Text
    //     0x6ee3f4: add             x3, PP, #0x18, lsl #12  ; [pp+0x18828] Obj!Text@a1bef1
    //     0x6ee3f8: ldr             x3, [x3, #0x828]
    // 0x6ee3fc: ldur            x0, [fp, #-0x60]
    // 0x6ee400: ldur            x2, [fp, #-0x38]
    // 0x6ee404: stur            x3, [fp, #-8]
    // 0x6ee408: r0 = ElevatedButton()
    //     0x6ee408: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6ee40c: mov             x1, x0
    // 0x6ee410: ldur            x0, [fp, #-0x10]
    // 0x6ee414: stur            x1, [fp, #-0x18]
    // 0x6ee418: StoreField: r1->field_b = r0
    //     0x6ee418: stur            w0, [x1, #0xb]
    // 0x6ee41c: r0 = false
    //     0x6ee41c: add             x0, NULL, #0x30  ; false
    // 0x6ee420: StoreField: r1->field_27 = r0
    //     0x6ee420: stur            w0, [x1, #0x27]
    // 0x6ee424: r2 = true
    //     0x6ee424: add             x2, NULL, #0x20  ; true
    // 0x6ee428: StoreField: r1->field_2f = r2
    //     0x6ee428: stur            w2, [x1, #0x2f]
    // 0x6ee42c: ldur            x3, [fp, #-8]
    // 0x6ee430: StoreField: r1->field_37 = r3
    //     0x6ee430: stur            w3, [x1, #0x37]
    // 0x6ee434: r0 = SizedBox()
    //     0x6ee434: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6ee438: mov             x2, x0
    // 0x6ee43c: r0 = inf
    //     0x6ee43c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6ee440: ldr             x0, [x0, #0xb20]
    // 0x6ee444: stur            x2, [fp, #-8]
    // 0x6ee448: StoreField: r2->field_f = r0
    //     0x6ee448: stur            w0, [x2, #0xf]
    // 0x6ee44c: ldur            x0, [fp, #-0x18]
    // 0x6ee450: StoreField: r2->field_b = r0
    //     0x6ee450: stur            w0, [x2, #0xb]
    // 0x6ee454: ldur            x0, [fp, #-0x38]
    // 0x6ee458: LoadField: r1 = r0->field_b
    //     0x6ee458: ldur            w1, [x0, #0xb]
    // 0x6ee45c: r0 = LoadInt32Instr(r1)
    //     0x6ee45c: sbfx            x0, x1, #1, #0x1f
    // 0x6ee460: ldur            x3, [fp, #-0x60]
    // 0x6ee464: cmp             x3, x0
    // 0x6ee468: b.ne            #0x6ee474
    // 0x6ee46c: ldur            x1, [fp, #-0x28]
    // 0x6ee470: r0 = _growToNextCapacity()
    //     0x6ee470: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6ee474: ldur            x5, [fp, #-0x20]
    // 0x6ee478: ldur            x4, [fp, #-0x30]
    // 0x6ee47c: ldur            x2, [fp, #-0x60]
    // 0x6ee480: ldur            x3, [fp, #-0x28]
    // 0x6ee484: add             x0, x2, #1
    // 0x6ee488: lsl             x1, x0, #1
    // 0x6ee48c: StoreField: r3->field_b = r1
    //     0x6ee48c: stur            w1, [x3, #0xb]
    // 0x6ee490: LoadField: r1 = r3->field_f
    //     0x6ee490: ldur            w1, [x3, #0xf]
    // 0x6ee494: DecompressPointer r1
    //     0x6ee494: add             x1, x1, HEAP, lsl #32
    // 0x6ee498: ldur            x0, [fp, #-8]
    // 0x6ee49c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6ee49c: add             x25, x1, x2, lsl #2
    //     0x6ee4a0: add             x25, x25, #0xf
    //     0x6ee4a4: str             w0, [x25]
    //     0x6ee4a8: tbz             w0, #0, #0x6ee4c4
    //     0x6ee4ac: ldurb           w16, [x1, #-1]
    //     0x6ee4b0: ldurb           w17, [x0, #-1]
    //     0x6ee4b4: and             x16, x17, x16, lsr #2
    //     0x6ee4b8: tst             x16, HEAP, lsr #32
    //     0x6ee4bc: b.eq            #0x6ee4c4
    //     0x6ee4c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ee4c4: r0 = Column()
    //     0x6ee4c4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6ee4c8: mov             x1, x0
    // 0x6ee4cc: r0 = Instance_Axis
    //     0x6ee4cc: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6ee4d0: stur            x1, [fp, #-8]
    // 0x6ee4d4: StoreField: r1->field_f = r0
    //     0x6ee4d4: stur            w0, [x1, #0xf]
    // 0x6ee4d8: r2 = Instance_MainAxisAlignment
    //     0x6ee4d8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6ee4dc: ldr             x2, [x2, #0x230]
    // 0x6ee4e0: StoreField: r1->field_13 = r2
    //     0x6ee4e0: stur            w2, [x1, #0x13]
    // 0x6ee4e4: r2 = Instance_MainAxisSize
    //     0x6ee4e4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6ee4e8: ldr             x2, [x2, #0x330]
    // 0x6ee4ec: ArrayStore: r1[0] = r2  ; List_4
    //     0x6ee4ec: stur            w2, [x1, #0x17]
    // 0x6ee4f0: r2 = Instance_CrossAxisAlignment
    //     0x6ee4f0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6ee4f4: ldr             x2, [x2, #0x338]
    // 0x6ee4f8: StoreField: r1->field_1b = r2
    //     0x6ee4f8: stur            w2, [x1, #0x1b]
    // 0x6ee4fc: r2 = Instance_VerticalDirection
    //     0x6ee4fc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6ee500: ldr             x2, [x2, #0x340]
    // 0x6ee504: StoreField: r1->field_23 = r2
    //     0x6ee504: stur            w2, [x1, #0x23]
    // 0x6ee508: r2 = Instance_Clip
    //     0x6ee508: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6ee50c: ldr             x2, [x2, #0x348]
    // 0x6ee510: StoreField: r1->field_2b = r2
    //     0x6ee510: stur            w2, [x1, #0x2b]
    // 0x6ee514: StoreField: r1->field_2f = rZR
    //     0x6ee514: stur            xzr, [x1, #0x2f]
    // 0x6ee518: ldur            x2, [fp, #-0x28]
    // 0x6ee51c: StoreField: r1->field_b = r2
    //     0x6ee51c: stur            w2, [x1, #0xb]
    // 0x6ee520: r0 = SingleChildScrollView()
    //     0x6ee520: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6ee524: mov             x1, x0
    // 0x6ee528: r0 = Instance_Axis
    //     0x6ee528: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6ee52c: stur            x1, [fp, #-0x10]
    // 0x6ee530: StoreField: r1->field_b = r0
    //     0x6ee530: stur            w0, [x1, #0xb]
    // 0x6ee534: r0 = false
    //     0x6ee534: add             x0, NULL, #0x30  ; false
    // 0x6ee538: StoreField: r1->field_f = r0
    //     0x6ee538: stur            w0, [x1, #0xf]
    // 0x6ee53c: ldur            x2, [fp, #-8]
    // 0x6ee540: StoreField: r1->field_23 = r2
    //     0x6ee540: stur            w2, [x1, #0x23]
    // 0x6ee544: r2 = Instance_DragStartBehavior
    //     0x6ee544: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6ee548: StoreField: r1->field_27 = r2
    //     0x6ee548: stur            w2, [x1, #0x27]
    // 0x6ee54c: r3 = Instance_Clip
    //     0x6ee54c: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6ee550: ldr             x3, [x3, #0x2d8]
    // 0x6ee554: StoreField: r1->field_2b = r3
    //     0x6ee554: stur            w3, [x1, #0x2b]
    // 0x6ee558: r3 = Instance_HitTestBehavior
    //     0x6ee558: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6ee55c: ldr             x3, [x3, #0xe20]
    // 0x6ee560: StoreField: r1->field_2f = r3
    //     0x6ee560: stur            w3, [x1, #0x2f]
    // 0x6ee564: r0 = Form()
    //     0x6ee564: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6ee568: mov             x1, x0
    // 0x6ee56c: ldur            x0, [fp, #-0x10]
    // 0x6ee570: stur            x1, [fp, #-8]
    // 0x6ee574: StoreField: r1->field_b = r0
    //     0x6ee574: stur            w0, [x1, #0xb]
    // 0x6ee578: r0 = Instance_AutovalidateMode
    //     0x6ee578: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6ee57c: ldr             x0, [x0, #0xb68]
    // 0x6ee580: StoreField: r1->field_23 = r0
    //     0x6ee580: stur            w0, [x1, #0x23]
    // 0x6ee584: ldur            x0, [fp, #-0x30]
    // 0x6ee588: StoreField: r1->field_7 = r0
    //     0x6ee588: stur            w0, [x1, #7]
    // 0x6ee58c: r0 = Padding()
    //     0x6ee58c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6ee590: mov             x1, x0
    // 0x6ee594: r0 = Instance_EdgeInsets
    //     0x6ee594: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6ee598: ldr             x0, [x0, #0x240]
    // 0x6ee59c: stur            x1, [fp, #-0x10]
    // 0x6ee5a0: StoreField: r1->field_f = r0
    //     0x6ee5a0: stur            w0, [x1, #0xf]
    // 0x6ee5a4: ldur            x0, [fp, #-8]
    // 0x6ee5a8: StoreField: r1->field_b = r0
    //     0x6ee5a8: stur            w0, [x1, #0xb]
    // 0x6ee5ac: r0 = Scaffold()
    //     0x6ee5ac: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6ee5b0: ldur            x1, [fp, #-0x20]
    // 0x6ee5b4: ArrayStore: r0[0] = r1  ; List_4
    //     0x6ee5b4: stur            w1, [x0, #0x17]
    // 0x6ee5b8: ldur            x1, [fp, #-0x10]
    // 0x6ee5bc: StoreField: r0->field_1b = r1
    //     0x6ee5bc: stur            w1, [x0, #0x1b]
    // 0x6ee5c0: r1 = Instance_AlignmentDirectional
    //     0x6ee5c0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6ee5c4: ldr             x1, [x1, #0x350]
    // 0x6ee5c8: StoreField: r0->field_2f = r1
    //     0x6ee5c8: stur            w1, [x0, #0x2f]
    // 0x6ee5cc: r1 = true
    //     0x6ee5cc: add             x1, NULL, #0x20  ; true
    // 0x6ee5d0: StoreField: r0->field_5f = r1
    //     0x6ee5d0: stur            w1, [x0, #0x5f]
    // 0x6ee5d4: r2 = Instance_DragStartBehavior
    //     0x6ee5d4: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6ee5d8: StoreField: r0->field_63 = r2
    //     0x6ee5d8: stur            w2, [x0, #0x63]
    // 0x6ee5dc: r2 = false
    //     0x6ee5dc: add             x2, NULL, #0x30  ; false
    // 0x6ee5e0: StoreField: r0->field_b = r2
    //     0x6ee5e0: stur            w2, [x0, #0xb]
    // 0x6ee5e4: StoreField: r0->field_f = r1
    //     0x6ee5e4: stur            w1, [x0, #0xf]
    // 0x6ee5e8: StoreField: r0->field_13 = r2
    //     0x6ee5e8: stur            w2, [x0, #0x13]
    // 0x6ee5ec: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6ee5ec: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6ee5f0: ldr             x2, [x2, #0x358]
    // 0x6ee5f4: StoreField: r0->field_4b = r2
    //     0x6ee5f4: stur            w2, [x0, #0x4b]
    // 0x6ee5f8: StoreField: r0->field_6b = r1
    //     0x6ee5f8: stur            w1, [x0, #0x6b]
    // 0x6ee5fc: StoreField: r0->field_6f = r1
    //     0x6ee5fc: stur            w1, [x0, #0x6f]
    // 0x6ee600: LeaveFrame
    //     0x6ee600: mov             SP, fp
    //     0x6ee604: ldp             fp, lr, [SP], #0x10
    // 0x6ee608: ret
    //     0x6ee608: ret             
    // 0x6ee60c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ee60c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ee610: b               #0x6edaa8
    // 0x6ee614: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ee614: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6ee618: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6ee618: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6ee61c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ee61c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6ee620: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6ee620: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6ee624: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ee624: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6ee634, size: 0x1d8
    // 0x6ee634: EnterFrame
    //     0x6ee634: stp             fp, lr, [SP, #-0x10]!
    //     0x6ee638: mov             fp, SP
    // 0x6ee63c: AllocStack(0x38)
    //     0x6ee63c: sub             SP, SP, #0x38
    // 0x6ee640: SetupParameters(_CreateUserScreenState this /* r1 */)
    //     0x6ee640: stur            NULL, [fp, #-8]
    //     0x6ee644: mov             x0, #0
    //     0x6ee648: add             x1, fp, w0, sxtw #2
    //     0x6ee64c: ldr             x1, [x1, #0x10]
    //     0x6ee650: ldur            w2, [x1, #0x17]
    //     0x6ee654: add             x2, x2, HEAP, lsl #32
    //     0x6ee658: stur            x2, [fp, #-0x10]
    // 0x6ee65c: CheckStackOverflow
    //     0x6ee65c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ee660: cmp             SP, x16
    //     0x6ee664: b.ls            #0x6ee800
    // 0x6ee668: InitAsync() -> Future<void?>
    //     0x6ee668: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6ee66c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6ee670: ldur            x0, [fp, #-0x10]
    // 0x6ee674: LoadField: r1 = r0->field_13
    //     0x6ee674: ldur            w1, [x0, #0x13]
    // 0x6ee678: DecompressPointer r1
    //     0x6ee678: add             x1, x1, HEAP, lsl #32
    // 0x6ee67c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6ee67c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6ee680: r0 = of()
    //     0x6ee680: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x6ee684: mov             x2, x0
    // 0x6ee688: ldur            x0, [fp, #-0x10]
    // 0x6ee68c: stur            x2, [fp, #-0x18]
    // 0x6ee690: LoadField: r1 = r0->field_f
    //     0x6ee690: ldur            w1, [x0, #0xf]
    // 0x6ee694: DecompressPointer r1
    //     0x6ee694: add             x1, x1, HEAP, lsl #32
    // 0x6ee698: LoadField: r3 = r1->field_13
    //     0x6ee698: ldur            w3, [x1, #0x13]
    // 0x6ee69c: DecompressPointer r3
    //     0x6ee69c: add             x3, x3, HEAP, lsl #32
    // 0x6ee6a0: mov             x1, x3
    // 0x6ee6a4: r0 = currentState()
    //     0x6ee6a4: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x6ee6a8: cmp             w0, NULL
    // 0x6ee6ac: b.eq            #0x6ee808
    // 0x6ee6b0: mov             x1, x0
    // 0x6ee6b4: r0 = validate()
    //     0x6ee6b4: bl              #0x67a654  ; [package:flutter/src/widgets/form.dart] FormState::validate
    // 0x6ee6b8: tbz             w0, #4, #0x6ee6c4
    // 0x6ee6bc: r0 = Null
    //     0x6ee6bc: mov             x0, NULL
    // 0x6ee6c0: r0 = ReturnAsyncNotFuture()
    //     0x6ee6c0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ee6c4: ldur            x0, [fp, #-0x10]
    // 0x6ee6c8: LoadField: r1 = r0->field_f
    //     0x6ee6c8: ldur            w1, [x0, #0xf]
    // 0x6ee6cc: DecompressPointer r1
    //     0x6ee6cc: add             x1, x1, HEAP, lsl #32
    // 0x6ee6d0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ee6d0: ldur            w2, [x1, #0x17]
    // 0x6ee6d4: DecompressPointer r2
    //     0x6ee6d4: add             x2, x2, HEAP, lsl #32
    // 0x6ee6d8: LoadField: r1 = r2->field_27
    //     0x6ee6d8: ldur            w1, [x2, #0x27]
    // 0x6ee6dc: DecompressPointer r1
    //     0x6ee6dc: add             x1, x1, HEAP, lsl #32
    // 0x6ee6e0: LoadField: r2 = r1->field_7
    //     0x6ee6e0: ldur            w2, [x1, #7]
    // 0x6ee6e4: DecompressPointer r2
    //     0x6ee6e4: add             x2, x2, HEAP, lsl #32
    // 0x6ee6e8: mov             x1, x2
    // 0x6ee6ec: r0 = trim()
    //     0x6ee6ec: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ee6f0: mov             x2, x0
    // 0x6ee6f4: ldur            x0, [fp, #-0x10]
    // 0x6ee6f8: stur            x2, [fp, #-0x20]
    // 0x6ee6fc: LoadField: r1 = r0->field_f
    //     0x6ee6fc: ldur            w1, [x0, #0xf]
    // 0x6ee700: DecompressPointer r1
    //     0x6ee700: add             x1, x1, HEAP, lsl #32
    // 0x6ee704: LoadField: r3 = r1->field_1b
    //     0x6ee704: ldur            w3, [x1, #0x1b]
    // 0x6ee708: DecompressPointer r3
    //     0x6ee708: add             x3, x3, HEAP, lsl #32
    // 0x6ee70c: LoadField: r1 = r3->field_27
    //     0x6ee70c: ldur            w1, [x3, #0x27]
    // 0x6ee710: DecompressPointer r1
    //     0x6ee710: add             x1, x1, HEAP, lsl #32
    // 0x6ee714: LoadField: r3 = r1->field_7
    //     0x6ee714: ldur            w3, [x1, #7]
    // 0x6ee718: DecompressPointer r3
    //     0x6ee718: add             x3, x3, HEAP, lsl #32
    // 0x6ee71c: mov             x1, x3
    // 0x6ee720: r0 = trim()
    //     0x6ee720: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ee724: mov             x2, x0
    // 0x6ee728: ldur            x0, [fp, #-0x10]
    // 0x6ee72c: stur            x2, [fp, #-0x28]
    // 0x6ee730: LoadField: r1 = r0->field_f
    //     0x6ee730: ldur            w1, [x0, #0xf]
    // 0x6ee734: DecompressPointer r1
    //     0x6ee734: add             x1, x1, HEAP, lsl #32
    // 0x6ee738: LoadField: r3 = r1->field_1f
    //     0x6ee738: ldur            w3, [x1, #0x1f]
    // 0x6ee73c: DecompressPointer r3
    //     0x6ee73c: add             x3, x3, HEAP, lsl #32
    // 0x6ee740: LoadField: r1 = r3->field_27
    //     0x6ee740: ldur            w1, [x3, #0x27]
    // 0x6ee744: DecompressPointer r1
    //     0x6ee744: add             x1, x1, HEAP, lsl #32
    // 0x6ee748: LoadField: r3 = r1->field_7
    //     0x6ee748: ldur            w3, [x1, #7]
    // 0x6ee74c: DecompressPointer r3
    //     0x6ee74c: add             x3, x3, HEAP, lsl #32
    // 0x6ee750: mov             x1, x3
    // 0x6ee754: r0 = trim()
    //     0x6ee754: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ee758: mov             x1, x0
    // 0x6ee75c: ldur            x0, [fp, #-0x10]
    // 0x6ee760: LoadField: r2 = r0->field_f
    //     0x6ee760: ldur            w2, [x0, #0xf]
    // 0x6ee764: DecompressPointer r2
    //     0x6ee764: add             x2, x2, HEAP, lsl #32
    // 0x6ee768: LoadField: r3 = r2->field_27
    //     0x6ee768: ldur            w3, [x2, #0x27]
    // 0x6ee76c: DecompressPointer r3
    //     0x6ee76c: add             x3, x3, HEAP, lsl #32
    // 0x6ee770: tbnz            w3, #4, #0x6ee780
    // 0x6ee774: r3 = "yonetici"
    //     0x6ee774: add             x3, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x6ee778: ldr             x3, [x3, #0x798]
    // 0x6ee77c: b               #0x6ee788
    // 0x6ee780: r3 = "misafir"
    //     0x6ee780: add             x3, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x6ee784: ldr             x3, [x3, #0x588]
    // 0x6ee788: LoadField: r4 = r2->field_2b
    //     0x6ee788: ldur            w4, [x2, #0x2b]
    // 0x6ee78c: DecompressPointer r4
    //     0x6ee78c: add             x4, x4, HEAP, lsl #32
    // 0x6ee790: LoadField: r5 = r2->field_2f
    //     0x6ee790: ldur            w5, [x2, #0x2f]
    // 0x6ee794: DecompressPointer r5
    //     0x6ee794: add             x5, x5, HEAP, lsl #32
    // 0x6ee798: LoadField: r6 = r2->field_33
    //     0x6ee798: ldur            w6, [x2, #0x33]
    // 0x6ee79c: DecompressPointer r6
    //     0x6ee79c: add             x6, x6, HEAP, lsl #32
    // 0x6ee7a0: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6ee7a0: ldur            w2, [x0, #0x17]
    // 0x6ee7a4: DecompressPointer r2
    //     0x6ee7a4: add             x2, x2, HEAP, lsl #32
    // 0x6ee7a8: ldur            x16, [fp, #-0x28]
    // 0x6ee7ac: stp             x3, x16, [SP]
    // 0x6ee7b0: mov             x7, x1
    // 0x6ee7b4: mov             x1, x2
    // 0x6ee7b8: mov             x2, x4
    // 0x6ee7bc: mov             x3, x5
    // 0x6ee7c0: mov             x5, x6
    // 0x6ee7c4: ldur            x6, [fp, #-0x20]
    // 0x6ee7c8: r0 = createUser()
    //     0x6ee7c8: bl              #0x6ee80c  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::createUser
    // 0x6ee7cc: mov             x1, x0
    // 0x6ee7d0: stur            x1, [fp, #-0x20]
    // 0x6ee7d4: r0 = Await()
    //     0x6ee7d4: bl              #0x3dd188  ; AwaitStub
    // 0x6ee7d8: r16 = true
    //     0x6ee7d8: add             x16, NULL, #0x20  ; true
    // 0x6ee7dc: cmp             w0, w16
    // 0x6ee7e0: b.ne            #0x6ee7f8
    // 0x6ee7e4: r16 = <Object?>
    //     0x6ee7e4: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6ee7e8: ldur            lr, [fp, #-0x18]
    // 0x6ee7ec: stp             lr, x16, [SP]
    // 0x6ee7f0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6ee7f0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6ee7f4: r0 = pop()
    //     0x6ee7f4: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x6ee7f8: r0 = Null
    //     0x6ee7f8: mov             x0, NULL
    // 0x6ee7fc: r0 = ReturnAsyncNotFuture()
    //     0x6ee7fc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ee800: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ee800: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ee804: b               #0x6ee668
    // 0x6ee808: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6ee808: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, bool?) {
    // ** addr: 0x6ef3a8, size: 0x84
    // 0x6ef3a8: EnterFrame
    //     0x6ef3a8: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef3ac: mov             fp, SP
    // 0x6ef3b0: AllocStack(0x10)
    //     0x6ef3b0: sub             SP, SP, #0x10
    // 0x6ef3b4: SetupParameters([dynamic _ /* r0 */])
    //     0x6ef3b4: ldr             x0, [fp, #0x18]
    //     0x6ef3b8: ldur            w1, [x0, #0x17]
    //     0x6ef3bc: add             x1, x1, HEAP, lsl #32
    //     0x6ef3c0: stur            x1, [fp, #-8]
    // 0x6ef3c4: CheckStackOverflow
    //     0x6ef3c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef3c8: cmp             SP, x16
    //     0x6ef3cc: b.ls            #0x6ef424
    // 0x6ef3d0: r1 = 1
    //     0x6ef3d0: mov             x1, #1
    // 0x6ef3d4: r0 = AllocateContext()
    //     0x6ef3d4: bl              #0x927010  ; AllocateContextStub
    // 0x6ef3d8: mov             x1, x0
    // 0x6ef3dc: ldur            x0, [fp, #-8]
    // 0x6ef3e0: StoreField: r1->field_b = r0
    //     0x6ef3e0: stur            w0, [x1, #0xb]
    // 0x6ef3e4: ldr             x2, [fp, #0x10]
    // 0x6ef3e8: StoreField: r1->field_f = r2
    //     0x6ef3e8: stur            w2, [x1, #0xf]
    // 0x6ef3ec: LoadField: r3 = r0->field_f
    //     0x6ef3ec: ldur            w3, [x0, #0xf]
    // 0x6ef3f0: DecompressPointer r3
    //     0x6ef3f0: add             x3, x3, HEAP, lsl #32
    // 0x6ef3f4: mov             x2, x1
    // 0x6ef3f8: stur            x3, [fp, #-0x10]
    // 0x6ef3fc: r1 = Function '<anonymous closure>':.
    //     0x6ef3fc: add             x1, PP, #0x18, lsl #12  ; [pp+0x18878] AnonymousClosure: (0x6ef42c), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ef400: ldr             x1, [x1, #0x878]
    // 0x6ef404: r0 = AllocateClosure()
    //     0x6ef404: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ef408: ldur            x1, [fp, #-0x10]
    // 0x6ef40c: mov             x2, x0
    // 0x6ef410: r0 = setState()
    //     0x6ef410: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6ef414: r0 = Null
    //     0x6ef414: mov             x0, NULL
    // 0x6ef418: LeaveFrame
    //     0x6ef418: mov             SP, fp
    //     0x6ef41c: ldp             fp, lr, [SP], #0x10
    // 0x6ef420: ret
    //     0x6ef420: ret             
    // 0x6ef424: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef424: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef428: b               #0x6ef3d0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ef42c, size: 0x3c
    // 0x6ef42c: ldr             x1, [SP]
    // 0x6ef430: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ef430: ldur            w2, [x1, #0x17]
    // 0x6ef434: DecompressPointer r2
    //     0x6ef434: add             x2, x2, HEAP, lsl #32
    // 0x6ef438: LoadField: r1 = r2->field_b
    //     0x6ef438: ldur            w1, [x2, #0xb]
    // 0x6ef43c: DecompressPointer r1
    //     0x6ef43c: add             x1, x1, HEAP, lsl #32
    // 0x6ef440: LoadField: r3 = r1->field_f
    //     0x6ef440: ldur            w3, [x1, #0xf]
    // 0x6ef444: DecompressPointer r3
    //     0x6ef444: add             x3, x3, HEAP, lsl #32
    // 0x6ef448: LoadField: r1 = r2->field_f
    //     0x6ef448: ldur            w1, [x2, #0xf]
    // 0x6ef44c: DecompressPointer r1
    //     0x6ef44c: add             x1, x1, HEAP, lsl #32
    // 0x6ef450: cmp             w1, NULL
    // 0x6ef454: b.ne            #0x6ef45c
    // 0x6ef458: r1 = false
    //     0x6ef458: add             x1, NULL, #0x30  ; false
    // 0x6ef45c: StoreField: r3->field_27 = r1
    //     0x6ef45c: stur            w1, [x3, #0x27]
    // 0x6ef460: r0 = Null
    //     0x6ef460: mov             x0, NULL
    // 0x6ef464: ret
    //     0x6ef464: ret             
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6ef468, size: 0x48
    // 0x6ef468: ldr             x1, [SP, #8]
    // 0x6ef46c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ef46c: ldur            w2, [x1, #0x17]
    // 0x6ef470: DecompressPointer r2
    //     0x6ef470: add             x2, x2, HEAP, lsl #32
    // 0x6ef474: LoadField: r1 = r2->field_f
    //     0x6ef474: ldur            w1, [x2, #0xf]
    // 0x6ef478: DecompressPointer r1
    //     0x6ef478: add             x1, x1, HEAP, lsl #32
    // 0x6ef47c: LoadField: r2 = r1->field_27
    //     0x6ef47c: ldur            w2, [x1, #0x27]
    // 0x6ef480: DecompressPointer r2
    //     0x6ef480: add             x2, x2, HEAP, lsl #32
    // 0x6ef484: tbnz            w2, #4, #0x6ef4a8
    // 0x6ef488: ldr             x1, [SP]
    // 0x6ef48c: cmp             w1, NULL
    // 0x6ef490: b.eq            #0x6ef49c
    // 0x6ef494: LoadField: r2 = r1->field_7
    //     0x6ef494: ldur            w2, [x1, #7]
    // 0x6ef498: cbnz            w2, #0x6ef4a8
    // 0x6ef49c: r0 = "Yönetici için acenta seçimi zorunludur"
    //     0x6ef49c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18880] "Yönetici için acenta seçimi zorunludur"
    //     0x6ef4a0: ldr             x0, [x0, #0x880]
    // 0x6ef4a4: ret
    //     0x6ef4a4: ret             
    // 0x6ef4a8: r0 = Null
    //     0x6ef4a8: mov             x0, NULL
    // 0x6ef4ac: ret
    //     0x6ef4ac: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6ef4b0, size: 0x84
    // 0x6ef4b0: EnterFrame
    //     0x6ef4b0: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef4b4: mov             fp, SP
    // 0x6ef4b8: AllocStack(0x10)
    //     0x6ef4b8: sub             SP, SP, #0x10
    // 0x6ef4bc: SetupParameters([dynamic _ /* r0 */])
    //     0x6ef4bc: ldr             x0, [fp, #0x18]
    //     0x6ef4c0: ldur            w1, [x0, #0x17]
    //     0x6ef4c4: add             x1, x1, HEAP, lsl #32
    //     0x6ef4c8: stur            x1, [fp, #-8]
    // 0x6ef4cc: CheckStackOverflow
    //     0x6ef4cc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef4d0: cmp             SP, x16
    //     0x6ef4d4: b.ls            #0x6ef52c
    // 0x6ef4d8: r1 = 1
    //     0x6ef4d8: mov             x1, #1
    // 0x6ef4dc: r0 = AllocateContext()
    //     0x6ef4dc: bl              #0x927010  ; AllocateContextStub
    // 0x6ef4e0: mov             x1, x0
    // 0x6ef4e4: ldur            x0, [fp, #-8]
    // 0x6ef4e8: StoreField: r1->field_b = r0
    //     0x6ef4e8: stur            w0, [x1, #0xb]
    // 0x6ef4ec: ldr             x2, [fp, #0x10]
    // 0x6ef4f0: StoreField: r1->field_f = r2
    //     0x6ef4f0: stur            w2, [x1, #0xf]
    // 0x6ef4f4: LoadField: r3 = r0->field_f
    //     0x6ef4f4: ldur            w3, [x0, #0xf]
    // 0x6ef4f8: DecompressPointer r3
    //     0x6ef4f8: add             x3, x3, HEAP, lsl #32
    // 0x6ef4fc: mov             x2, x1
    // 0x6ef500: stur            x3, [fp, #-0x10]
    // 0x6ef504: r1 = Function '<anonymous closure>':.
    //     0x6ef504: add             x1, PP, #0x18, lsl #12  ; [pp+0x18888] AnonymousClosure: (0x6ef534), in [package:umrem_demo/features/auth/screens/login.dart] _LoginScreenState::build (0x6f84fc)
    //     0x6ef508: ldr             x1, [x1, #0x888]
    // 0x6ef50c: r0 = AllocateClosure()
    //     0x6ef50c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ef510: ldur            x1, [fp, #-0x10]
    // 0x6ef514: mov             x2, x0
    // 0x6ef518: r0 = setState()
    //     0x6ef518: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6ef51c: r0 = Null
    //     0x6ef51c: mov             x0, NULL
    // 0x6ef520: LeaveFrame
    //     0x6ef520: mov             SP, fp
    //     0x6ef524: ldp             fp, lr, [SP], #0x10
    // 0x6ef528: ret
    //     0x6ef528: ret             
    // 0x6ef52c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef52c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef530: b               #0x6ef4d8
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6ef608, size: 0x190
    // 0x6ef608: EnterFrame
    //     0x6ef608: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef60c: mov             fp, SP
    // 0x6ef610: AllocStack(0x48)
    //     0x6ef610: sub             SP, SP, #0x48
    // 0x6ef614: SetupParameters(_CreateUserScreenState this /* r1 */)
    //     0x6ef614: stur            NULL, [fp, #-8]
    //     0x6ef618: mov             x0, #0
    //     0x6ef61c: add             x1, fp, w0, sxtw #2
    //     0x6ef620: ldr             x1, [x1, #0x10]
    //     0x6ef624: ldur            w2, [x1, #0x17]
    //     0x6ef628: add             x2, x2, HEAP, lsl #32
    //     0x6ef62c: stur            x2, [fp, #-0x10]
    // 0x6ef630: CheckStackOverflow
    //     0x6ef630: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef634: cmp             SP, x16
    //     0x6ef638: b.ls            #0x6ef790
    // 0x6ef63c: InitAsync() -> Future<void?>
    //     0x6ef63c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6ef640: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6ef644: r1 = 1
    //     0x6ef644: mov             x1, #1
    // 0x6ef648: r0 = AllocateContext()
    //     0x6ef648: bl              #0x927010  ; AllocateContextStub
    // 0x6ef64c: mov             x1, x0
    // 0x6ef650: ldur            x0, [fp, #-0x10]
    // 0x6ef654: stur            x1, [fp, #-0x20]
    // 0x6ef658: StoreField: r1->field_b = r0
    //     0x6ef658: stur            w0, [x1, #0xb]
    // 0x6ef65c: LoadField: r2 = r0->field_13
    //     0x6ef65c: ldur            w2, [x0, #0x13]
    // 0x6ef660: DecompressPointer r2
    //     0x6ef660: add             x2, x2, HEAP, lsl #32
    // 0x6ef664: stur            x2, [fp, #-0x18]
    // 0x6ef668: LoadField: r3 = r0->field_f
    //     0x6ef668: ldur            w3, [x0, #0xf]
    // 0x6ef66c: DecompressPointer r3
    //     0x6ef66c: add             x3, x3, HEAP, lsl #32
    // 0x6ef670: LoadField: r4 = r3->field_33
    //     0x6ef670: ldur            w4, [x3, #0x33]
    // 0x6ef674: DecompressPointer r4
    //     0x6ef674: add             x4, x4, HEAP, lsl #32
    // 0x6ef678: cmp             w4, NULL
    // 0x6ef67c: b.ne            #0x6ef6b0
    // 0x6ef680: r0 = DateTime()
    //     0x6ef680: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6ef684: stur            x0, [fp, #-0x28]
    // 0x6ef688: r16 = 2
    //     0x6ef688: mov             x16, #2
    // 0x6ef68c: r30 = 2
    //     0x6ef68c: mov             lr, #2
    // 0x6ef690: stp             lr, x16, [SP]
    // 0x6ef694: mov             x1, x0
    // 0x6ef698: r2 = 1990
    //     0x6ef698: mov             x2, #0x7c6
    // 0x6ef69c: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x6ef69c: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x6ef6a0: ldr             x4, [x4, #0x808]
    // 0x6ef6a4: r0 = DateTime()
    //     0x6ef6a4: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6ef6a8: ldur            x3, [fp, #-0x28]
    // 0x6ef6ac: b               #0x6ef6b4
    // 0x6ef6b0: mov             x3, x4
    // 0x6ef6b4: ldur            x2, [fp, #-0x20]
    // 0x6ef6b8: stur            x3, [fp, #-0x28]
    // 0x6ef6bc: r0 = DateTime()
    //     0x6ef6bc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6ef6c0: mov             x1, x0
    // 0x6ef6c4: r2 = 1900
    //     0x6ef6c4: mov             x2, #0x76c
    // 0x6ef6c8: stur            x0, [fp, #-0x30]
    // 0x6ef6cc: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6ef6cc: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6ef6d0: r0 = DateTime()
    //     0x6ef6d0: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6ef6d4: r0 = DateTime()
    //     0x6ef6d4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6ef6d8: mov             x1, x0
    // 0x6ef6dc: r0 = false
    //     0x6ef6dc: add             x0, NULL, #0x30  ; false
    // 0x6ef6e0: stur            x1, [fp, #-0x38]
    // 0x6ef6e4: StoreField: r1->field_7 = r0
    //     0x6ef6e4: stur            w0, [x1, #7]
    // 0x6ef6e8: r0 = _getCurrentMicros()
    //     0x6ef6e8: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6ef6ec: r1 = LoadInt32Instr(r0)
    //     0x6ef6ec: sbfx            x1, x0, #1, #0x1f
    //     0x6ef6f0: tbz             w0, #0, #0x6ef6f8
    //     0x6ef6f4: ldur            x1, [x0, #7]
    // 0x6ef6f8: ldur            x5, [fp, #-0x38]
    // 0x6ef6fc: StoreField: r5->field_b = r1
    //     0x6ef6fc: stur            x1, [x5, #0xb]
    // 0x6ef700: r16 = Instance_Locale
    //     0x6ef700: add             x16, PP, #0x15, lsl #12  ; [pp+0x151e8] Obj!Locale@a21421
    //     0x6ef704: ldr             x16, [x16, #0x1e8]
    // 0x6ef708: str             x16, [SP]
    // 0x6ef70c: ldur            x1, [fp, #-0x18]
    // 0x6ef710: ldur            x2, [fp, #-0x30]
    // 0x6ef714: ldur            x3, [fp, #-0x28]
    // 0x6ef718: r4 = const [0, 0x5, 0x1, 0x4, locale, 0x4, null]
    //     0x6ef718: add             x4, PP, #0x18, lsl #12  ; [pp+0x18890] List(7) [0, 0x5, 0x1, 0x4, "locale", 0x4, Null]
    //     0x6ef71c: ldr             x4, [x4, #0x890]
    // 0x6ef720: r0 = showDatePicker()
    //     0x6ef720: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x6ef724: mov             x1, x0
    // 0x6ef728: stur            x1, [fp, #-0x18]
    // 0x6ef72c: r0 = Await()
    //     0x6ef72c: bl              #0x3dd188  ; AwaitStub
    // 0x6ef730: mov             x1, x0
    // 0x6ef734: ldur            x2, [fp, #-0x20]
    // 0x6ef738: StoreField: r2->field_f = r0
    //     0x6ef738: stur            w0, [x2, #0xf]
    //     0x6ef73c: tbz             w0, #0, #0x6ef758
    //     0x6ef740: ldurb           w16, [x2, #-1]
    //     0x6ef744: ldurb           w17, [x0, #-1]
    //     0x6ef748: and             x16, x17, x16, lsr #2
    //     0x6ef74c: tst             x16, HEAP, lsr #32
    //     0x6ef750: b.eq            #0x6ef758
    //     0x6ef754: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6ef758: cmp             w1, NULL
    // 0x6ef75c: b.eq            #0x6ef788
    // 0x6ef760: ldur            x0, [fp, #-0x10]
    // 0x6ef764: LoadField: r3 = r0->field_f
    //     0x6ef764: ldur            w3, [x0, #0xf]
    // 0x6ef768: DecompressPointer r3
    //     0x6ef768: add             x3, x3, HEAP, lsl #32
    // 0x6ef76c: stur            x3, [fp, #-0x18]
    // 0x6ef770: r1 = Function '<anonymous closure>':.
    //     0x6ef770: add             x1, PP, #0x18, lsl #12  ; [pp+0x18898] AnonymousClosure: (0x6ef798), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ef774: ldr             x1, [x1, #0x898]
    // 0x6ef778: r0 = AllocateClosure()
    //     0x6ef778: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ef77c: ldur            x1, [fp, #-0x18]
    // 0x6ef780: mov             x2, x0
    // 0x6ef784: r0 = setState()
    //     0x6ef784: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6ef788: r0 = Null
    //     0x6ef788: mov             x0, NULL
    // 0x6ef78c: r0 = ReturnAsyncNotFuture()
    //     0x6ef78c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6ef790: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef790: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef794: b               #0x6ef63c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ef798, size: 0x50
    // 0x6ef798: ldr             x1, [SP]
    // 0x6ef79c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ef79c: ldur            w2, [x1, #0x17]
    // 0x6ef7a0: DecompressPointer r2
    //     0x6ef7a0: add             x2, x2, HEAP, lsl #32
    // 0x6ef7a4: LoadField: r1 = r2->field_b
    //     0x6ef7a4: ldur            w1, [x2, #0xb]
    // 0x6ef7a8: DecompressPointer r1
    //     0x6ef7a8: add             x1, x1, HEAP, lsl #32
    // 0x6ef7ac: LoadField: r3 = r1->field_f
    //     0x6ef7ac: ldur            w3, [x1, #0xf]
    // 0x6ef7b0: DecompressPointer r3
    //     0x6ef7b0: add             x3, x3, HEAP, lsl #32
    // 0x6ef7b4: LoadField: r0 = r2->field_f
    //     0x6ef7b4: ldur            w0, [x2, #0xf]
    // 0x6ef7b8: DecompressPointer r0
    //     0x6ef7b8: add             x0, x0, HEAP, lsl #32
    // 0x6ef7bc: StoreField: r3->field_33 = r0
    //     0x6ef7bc: stur            w0, [x3, #0x33]
    //     0x6ef7c0: ldurb           w16, [x3, #-1]
    //     0x6ef7c4: ldurb           w17, [x0, #-1]
    //     0x6ef7c8: and             x16, x17, x16, lsr #2
    //     0x6ef7cc: tst             x16, HEAP, lsr #32
    //     0x6ef7d0: b.eq            #0x6ef7e0
    //     0x6ef7d4: str             lr, [SP, #-8]!
    //     0x6ef7d8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6ef7dc: ldr             lr, [SP], #8
    // 0x6ef7e0: r0 = Null
    //     0x6ef7e0: mov             x0, NULL
    // 0x6ef7e4: ret
    //     0x6ef7e4: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6ef7e8, size: 0x84
    // 0x6ef7e8: EnterFrame
    //     0x6ef7e8: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef7ec: mov             fp, SP
    // 0x6ef7f0: AllocStack(0x10)
    //     0x6ef7f0: sub             SP, SP, #0x10
    // 0x6ef7f4: SetupParameters([dynamic _ /* r0 */])
    //     0x6ef7f4: ldr             x0, [fp, #0x18]
    //     0x6ef7f8: ldur            w1, [x0, #0x17]
    //     0x6ef7fc: add             x1, x1, HEAP, lsl #32
    //     0x6ef800: stur            x1, [fp, #-8]
    // 0x6ef804: CheckStackOverflow
    //     0x6ef804: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef808: cmp             SP, x16
    //     0x6ef80c: b.ls            #0x6ef864
    // 0x6ef810: r1 = 1
    //     0x6ef810: mov             x1, #1
    // 0x6ef814: r0 = AllocateContext()
    //     0x6ef814: bl              #0x927010  ; AllocateContextStub
    // 0x6ef818: mov             x1, x0
    // 0x6ef81c: ldur            x0, [fp, #-8]
    // 0x6ef820: StoreField: r1->field_b = r0
    //     0x6ef820: stur            w0, [x1, #0xb]
    // 0x6ef824: ldr             x2, [fp, #0x10]
    // 0x6ef828: StoreField: r1->field_f = r2
    //     0x6ef828: stur            w2, [x1, #0xf]
    // 0x6ef82c: LoadField: r3 = r0->field_f
    //     0x6ef82c: ldur            w3, [x0, #0xf]
    // 0x6ef830: DecompressPointer r3
    //     0x6ef830: add             x3, x3, HEAP, lsl #32
    // 0x6ef834: mov             x2, x1
    // 0x6ef838: stur            x3, [fp, #-0x10]
    // 0x6ef83c: r1 = Function '<anonymous closure>':.
    //     0x6ef83c: add             x1, PP, #0x18, lsl #12  ; [pp+0x188a0] AnonymousClosure: (0x6ef86c), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::build (0x6eda88)
    //     0x6ef840: ldr             x1, [x1, #0x8a0]
    // 0x6ef844: r0 = AllocateClosure()
    //     0x6ef844: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6ef848: ldur            x1, [fp, #-0x10]
    // 0x6ef84c: mov             x2, x0
    // 0x6ef850: r0 = setState()
    //     0x6ef850: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6ef854: r0 = Null
    //     0x6ef854: mov             x0, NULL
    // 0x6ef858: LeaveFrame
    //     0x6ef858: mov             SP, fp
    //     0x6ef85c: ldp             fp, lr, [SP], #0x10
    // 0x6ef860: ret
    //     0x6ef860: ret             
    // 0x6ef864: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef864: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef868: b               #0x6ef810
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6ef86c, size: 0x50
    // 0x6ef86c: ldr             x1, [SP]
    // 0x6ef870: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6ef870: ldur            w2, [x1, #0x17]
    // 0x6ef874: DecompressPointer r2
    //     0x6ef874: add             x2, x2, HEAP, lsl #32
    // 0x6ef878: LoadField: r1 = r2->field_b
    //     0x6ef878: ldur            w1, [x2, #0xb]
    // 0x6ef87c: DecompressPointer r1
    //     0x6ef87c: add             x1, x1, HEAP, lsl #32
    // 0x6ef880: LoadField: r3 = r1->field_f
    //     0x6ef880: ldur            w3, [x1, #0xf]
    // 0x6ef884: DecompressPointer r3
    //     0x6ef884: add             x3, x3, HEAP, lsl #32
    // 0x6ef888: LoadField: r0 = r2->field_f
    //     0x6ef888: ldur            w0, [x2, #0xf]
    // 0x6ef88c: DecompressPointer r0
    //     0x6ef88c: add             x0, x0, HEAP, lsl #32
    // 0x6ef890: StoreField: r3->field_2f = r0
    //     0x6ef890: stur            w0, [x3, #0x2f]
    //     0x6ef894: ldurb           w16, [x3, #-1]
    //     0x6ef898: ldurb           w17, [x0, #-1]
    //     0x6ef89c: and             x16, x17, x16, lsr #2
    //     0x6ef8a0: tst             x16, HEAP, lsr #32
    //     0x6ef8a4: b.eq            #0x6ef8b4
    //     0x6ef8a8: str             lr, [SP, #-8]!
    //     0x6ef8ac: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6ef8b0: ldr             lr, [SP], #8
    // 0x6ef8b4: r0 = Null
    //     0x6ef8b4: mov             x0, NULL
    // 0x6ef8b8: ret
    //     0x6ef8b8: ret             
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6ef8bc, size: 0x50
    // 0x6ef8bc: EnterFrame
    //     0x6ef8bc: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef8c0: mov             fp, SP
    // 0x6ef8c4: CheckStackOverflow
    //     0x6ef8c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef8c8: cmp             SP, x16
    //     0x6ef8cc: b.ls            #0x6ef904
    // 0x6ef8d0: ldr             x1, [fp, #0x10]
    // 0x6ef8d4: cmp             w1, NULL
    // 0x6ef8d8: b.eq            #0x6ef8e8
    // 0x6ef8dc: r0 = trim()
    //     0x6ef8dc: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ef8e0: LoadField: r1 = r0->field_7
    //     0x6ef8e0: ldur            w1, [x0, #7]
    // 0x6ef8e4: cbnz            w1, #0x6ef8f4
    // 0x6ef8e8: r0 = "TC gerekli"
    //     0x6ef8e8: add             x0, PP, #0x18, lsl #12  ; [pp+0x188a8] "TC gerekli"
    //     0x6ef8ec: ldr             x0, [x0, #0x8a8]
    // 0x6ef8f0: b               #0x6ef8f8
    // 0x6ef8f4: r0 = Null
    //     0x6ef8f4: mov             x0, NULL
    // 0x6ef8f8: LeaveFrame
    //     0x6ef8f8: mov             SP, fp
    //     0x6ef8fc: ldp             fp, lr, [SP], #0x10
    // 0x6ef900: ret
    //     0x6ef900: ret             
    // 0x6ef904: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef904: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef908: b               #0x6ef8d0
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6ef90c, size: 0x50
    // 0x6ef90c: EnterFrame
    //     0x6ef90c: stp             fp, lr, [SP, #-0x10]!
    //     0x6ef910: mov             fp, SP
    // 0x6ef914: CheckStackOverflow
    //     0x6ef914: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef918: cmp             SP, x16
    //     0x6ef91c: b.ls            #0x6ef954
    // 0x6ef920: ldr             x1, [fp, #0x10]
    // 0x6ef924: cmp             w1, NULL
    // 0x6ef928: b.eq            #0x6ef938
    // 0x6ef92c: r0 = trim()
    //     0x6ef92c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6ef930: LoadField: r1 = r0->field_7
    //     0x6ef930: ldur            w1, [x0, #7]
    // 0x6ef934: cbnz            w1, #0x6ef944
    // 0x6ef938: r0 = "Ad soyad gerekli"
    //     0x6ef938: add             x0, PP, #0x18, lsl #12  ; [pp+0x188b0] "Ad soyad gerekli"
    //     0x6ef93c: ldr             x0, [x0, #0x8b0]
    // 0x6ef940: b               #0x6ef948
    // 0x6ef944: r0 = Null
    //     0x6ef944: mov             x0, NULL
    // 0x6ef948: LeaveFrame
    //     0x6ef948: mov             SP, fp
    //     0x6ef94c: ldp             fp, lr, [SP], #0x10
    // 0x6ef950: ret
    //     0x6ef950: ret             
    // 0x6ef954: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef954: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef958: b               #0x6ef920
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c3cc, size: 0x24
    // 0x74c3cc: EnterFrame
    //     0x74c3cc: stp             fp, lr, [SP, #-0x10]!
    //     0x74c3d0: mov             fp, SP
    // 0x74c3d4: ldr             x2, [fp, #0x10]
    // 0x74c3d8: r1 = Function 'dispose':.
    //     0x74c3d8: add             x1, PP, #0x27, lsl #12  ; [pp+0x27590] AnonymousClosure: (0x74c3f0), in [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::dispose (0x753bd4)
    //     0x74c3dc: ldr             x1, [x1, #0x590]
    // 0x74c3e0: r0 = AllocateClosure()
    //     0x74c3e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c3e4: LeaveFrame
    //     0x74c3e4: mov             SP, fp
    //     0x74c3e8: ldp             fp, lr, [SP], #0x10
    // 0x74c3ec: ret
    //     0x74c3ec: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c3f0, size: 0x38
    // 0x74c3f0: EnterFrame
    //     0x74c3f0: stp             fp, lr, [SP, #-0x10]!
    //     0x74c3f4: mov             fp, SP
    // 0x74c3f8: ldr             x0, [fp, #0x10]
    // 0x74c3fc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c3fc: ldur            w1, [x0, #0x17]
    // 0x74c400: DecompressPointer r1
    //     0x74c400: add             x1, x1, HEAP, lsl #32
    // 0x74c404: CheckStackOverflow
    //     0x74c404: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c408: cmp             SP, x16
    //     0x74c40c: b.ls            #0x74c420
    // 0x74c410: r0 = dispose()
    //     0x74c410: bl              #0x753bd4  ; [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::dispose
    // 0x74c414: LeaveFrame
    //     0x74c414: mov             SP, fp
    //     0x74c418: ldp             fp, lr, [SP], #0x10
    // 0x74c41c: ret
    //     0x74c41c: ret             
    // 0x74c420: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c420: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c424: b               #0x74c410
  }
  _ dispose(/* No info */) {
    // ** addr: 0x753bd4, size: 0x74
    // 0x753bd4: EnterFrame
    //     0x753bd4: stp             fp, lr, [SP, #-0x10]!
    //     0x753bd8: mov             fp, SP
    // 0x753bdc: AllocStack(0x8)
    //     0x753bdc: sub             SP, SP, #8
    // 0x753be0: SetupParameters(_CreateUserScreenState this /* r1 => r0, fp-0x8 */)
    //     0x753be0: mov             x0, x1
    //     0x753be4: stur            x1, [fp, #-8]
    // 0x753be8: CheckStackOverflow
    //     0x753be8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x753bec: cmp             SP, x16
    //     0x753bf0: b.ls            #0x753c40
    // 0x753bf4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x753bf4: ldur            w1, [x0, #0x17]
    // 0x753bf8: DecompressPointer r1
    //     0x753bf8: add             x1, x1, HEAP, lsl #32
    // 0x753bfc: r0 = dispose()
    //     0x753bfc: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753c00: ldur            x0, [fp, #-8]
    // 0x753c04: LoadField: r1 = r0->field_1b
    //     0x753c04: ldur            w1, [x0, #0x1b]
    // 0x753c08: DecompressPointer r1
    //     0x753c08: add             x1, x1, HEAP, lsl #32
    // 0x753c0c: r0 = dispose()
    //     0x753c0c: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753c10: ldur            x0, [fp, #-8]
    // 0x753c14: LoadField: r1 = r0->field_1f
    //     0x753c14: ldur            w1, [x0, #0x1f]
    // 0x753c18: DecompressPointer r1
    //     0x753c18: add             x1, x1, HEAP, lsl #32
    // 0x753c1c: r0 = dispose()
    //     0x753c1c: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753c20: ldur            x0, [fp, #-8]
    // 0x753c24: LoadField: r1 = r0->field_23
    //     0x753c24: ldur            w1, [x0, #0x23]
    // 0x753c28: DecompressPointer r1
    //     0x753c28: add             x1, x1, HEAP, lsl #32
    // 0x753c2c: r0 = dispose()
    //     0x753c2c: bl              #0x758314  ; [package:flutter/src/widgets/shortcuts.dart] _ShortcutManager&Object&Diagnosticable&ChangeNotifier::dispose
    // 0x753c30: r0 = Null
    //     0x753c30: mov             x0, NULL
    // 0x753c34: LeaveFrame
    //     0x753c34: mov             SP, fp
    //     0x753c38: ldp             fp, lr, [SP], #0x10
    // 0x753c3c: ret
    //     0x753c3c: ret             
    // 0x753c40: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x753c40: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x753c44: b               #0x753bf4
  }
  _ _CreateUserScreenState(/* No info */) {
    // ** addr: 0x7bd634, size: 0x15c
    // 0x7bd634: EnterFrame
    //     0x7bd634: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd638: mov             fp, SP
    // 0x7bd63c: AllocStack(0x10)
    //     0x7bd63c: sub             SP, SP, #0x10
    // 0x7bd640: r0 = false
    //     0x7bd640: add             x0, NULL, #0x30  ; false
    // 0x7bd644: mov             x2, x1
    // 0x7bd648: stur            x1, [fp, #-8]
    // 0x7bd64c: CheckStackOverflow
    //     0x7bd64c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd650: cmp             SP, x16
    //     0x7bd654: b.ls            #0x7bd788
    // 0x7bd658: StoreField: r2->field_27 = r0
    //     0x7bd658: stur            w0, [x2, #0x27]
    // 0x7bd65c: r1 = <FormState>
    //     0x7bd65c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x7bd660: ldr             x1, [x1, #0x590]
    // 0x7bd664: r0 = LabeledGlobalKey()
    //     0x7bd664: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bd668: ldur            x2, [fp, #-8]
    // 0x7bd66c: StoreField: r2->field_13 = r0
    //     0x7bd66c: stur            w0, [x2, #0x13]
    //     0x7bd670: ldurb           w16, [x2, #-1]
    //     0x7bd674: ldurb           w17, [x0, #-1]
    //     0x7bd678: and             x16, x17, x16, lsr #2
    //     0x7bd67c: tst             x16, HEAP, lsr #32
    //     0x7bd680: b.eq            #0x7bd688
    //     0x7bd684: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd688: r1 = <TextEditingValue>
    //     0x7bd688: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd68c: r0 = TextEditingController()
    //     0x7bd68c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd690: mov             x1, x0
    // 0x7bd694: stur            x0, [fp, #-0x10]
    // 0x7bd698: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd698: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd69c: r0 = TextEditingController()
    //     0x7bd69c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd6a0: ldur            x0, [fp, #-0x10]
    // 0x7bd6a4: ldur            x2, [fp, #-8]
    // 0x7bd6a8: ArrayStore: r2[0] = r0  ; List_4
    //     0x7bd6a8: stur            w0, [x2, #0x17]
    //     0x7bd6ac: ldurb           w16, [x2, #-1]
    //     0x7bd6b0: ldurb           w17, [x0, #-1]
    //     0x7bd6b4: and             x16, x17, x16, lsr #2
    //     0x7bd6b8: tst             x16, HEAP, lsr #32
    //     0x7bd6bc: b.eq            #0x7bd6c4
    //     0x7bd6c0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd6c4: r1 = <TextEditingValue>
    //     0x7bd6c4: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd6c8: r0 = TextEditingController()
    //     0x7bd6c8: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd6cc: mov             x1, x0
    // 0x7bd6d0: stur            x0, [fp, #-0x10]
    // 0x7bd6d4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd6d4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd6d8: r0 = TextEditingController()
    //     0x7bd6d8: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd6dc: ldur            x0, [fp, #-0x10]
    // 0x7bd6e0: ldur            x2, [fp, #-8]
    // 0x7bd6e4: StoreField: r2->field_1b = r0
    //     0x7bd6e4: stur            w0, [x2, #0x1b]
    //     0x7bd6e8: ldurb           w16, [x2, #-1]
    //     0x7bd6ec: ldurb           w17, [x0, #-1]
    //     0x7bd6f0: and             x16, x17, x16, lsr #2
    //     0x7bd6f4: tst             x16, HEAP, lsr #32
    //     0x7bd6f8: b.eq            #0x7bd700
    //     0x7bd6fc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd700: r1 = <TextEditingValue>
    //     0x7bd700: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd704: r0 = TextEditingController()
    //     0x7bd704: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd708: mov             x1, x0
    // 0x7bd70c: stur            x0, [fp, #-0x10]
    // 0x7bd710: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd710: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd714: r0 = TextEditingController()
    //     0x7bd714: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd718: ldur            x0, [fp, #-0x10]
    // 0x7bd71c: ldur            x2, [fp, #-8]
    // 0x7bd720: StoreField: r2->field_1f = r0
    //     0x7bd720: stur            w0, [x2, #0x1f]
    //     0x7bd724: ldurb           w16, [x2, #-1]
    //     0x7bd728: ldurb           w17, [x0, #-1]
    //     0x7bd72c: and             x16, x17, x16, lsr #2
    //     0x7bd730: tst             x16, HEAP, lsr #32
    //     0x7bd734: b.eq            #0x7bd73c
    //     0x7bd738: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bd73c: r1 = <TextEditingValue>
    //     0x7bd73c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bd740: r0 = TextEditingController()
    //     0x7bd740: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bd744: mov             x1, x0
    // 0x7bd748: stur            x0, [fp, #-0x10]
    // 0x7bd74c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bd74c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bd750: r0 = TextEditingController()
    //     0x7bd750: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bd754: ldur            x0, [fp, #-0x10]
    // 0x7bd758: ldur            x1, [fp, #-8]
    // 0x7bd75c: StoreField: r1->field_23 = r0
    //     0x7bd75c: stur            w0, [x1, #0x23]
    //     0x7bd760: ldurb           w16, [x1, #-1]
    //     0x7bd764: ldurb           w17, [x0, #-1]
    //     0x7bd768: and             x16, x17, x16, lsr #2
    //     0x7bd76c: tst             x16, HEAP, lsr #32
    //     0x7bd770: b.eq            #0x7bd778
    //     0x7bd774: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bd778: r0 = Null
    //     0x7bd778: mov             x0, NULL
    // 0x7bd77c: LeaveFrame
    //     0x7bd77c: mov             SP, fp
    //     0x7bd780: ldp             fp, lr, [SP], #0x10
    // 0x7bd784: ret
    //     0x7bd784: ret             
    // 0x7bd788: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd788: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd78c: b               #0x7bd658
  }
}

// class id: 3210, size: 0xc, field offset: 0xc
//   const constructor, 
class CreateUserScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd5ec, size: 0x48
    // 0x7bd5ec: EnterFrame
    //     0x7bd5ec: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd5f0: mov             fp, SP
    // 0x7bd5f4: AllocStack(0x8)
    //     0x7bd5f4: sub             SP, SP, #8
    // 0x7bd5f8: CheckStackOverflow
    //     0x7bd5f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd5fc: cmp             SP, x16
    //     0x7bd600: b.ls            #0x7bd62c
    // 0x7bd604: r1 = <CreateUserScreen>
    //     0x7bd604: add             x1, PP, #0x12, lsl #12  ; [pp+0x12680] TypeArguments: <CreateUserScreen>
    //     0x7bd608: ldr             x1, [x1, #0x680]
    // 0x7bd60c: r0 = _CreateUserScreenState()
    //     0x7bd60c: bl              #0x7bd790  ; Allocate_CreateUserScreenStateStub -> _CreateUserScreenState (size=0x38)
    // 0x7bd610: mov             x1, x0
    // 0x7bd614: stur            x0, [fp, #-8]
    // 0x7bd618: r0 = _CreateUserScreenState()
    //     0x7bd618: bl              #0x7bd634  ; [package:umrem_demo/features/admin/screens/users/create_user_screen.dart] _CreateUserScreenState::_CreateUserScreenState
    // 0x7bd61c: ldur            x0, [fp, #-8]
    // 0x7bd620: LeaveFrame
    //     0x7bd620: mov             SP, fp
    //     0x7bd624: ldp             fp, lr, [SP], #0x10
    // 0x7bd628: ret
    //     0x7bd628: ret             
    // 0x7bd62c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd62c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd630: b               #0x7bd604
  }
}
