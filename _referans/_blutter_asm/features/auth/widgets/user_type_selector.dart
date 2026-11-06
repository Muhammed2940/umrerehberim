// lib: , url: package:umrem_demo/features/auth/widgets/user_type_selector.dart

// class id: 1049568, size: 0x8
class :: {
}

// class id: 2906, size: 0x1c, field offset: 0xc
//   const constructor, 
class UserTypeSelector extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ea3d8, size: 0x2e8
    // 0x7ea3d8: EnterFrame
    //     0x7ea3d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7ea3dc: mov             fp, SP
    // 0x7ea3e0: AllocStack(0x30)
    //     0x7ea3e0: sub             SP, SP, #0x30
    // 0x7ea3e4: SetupParameters(UserTypeSelector this /* r1 => r1, fp-0x8 */)
    //     0x7ea3e4: stur            x1, [fp, #-8]
    // 0x7ea3e8: CheckStackOverflow
    //     0x7ea3e8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ea3ec: cmp             SP, x16
    //     0x7ea3f0: b.ls            #0x7ea6b8
    // 0x7ea3f4: r1 = 1
    //     0x7ea3f4: mov             x1, #1
    // 0x7ea3f8: r0 = AllocateContext()
    //     0x7ea3f8: bl              #0x927010  ; AllocateContextStub
    // 0x7ea3fc: mov             x1, x0
    // 0x7ea400: ldur            x0, [fp, #-8]
    // 0x7ea404: stur            x1, [fp, #-0x18]
    // 0x7ea408: StoreField: r1->field_f = r0
    //     0x7ea408: stur            w0, [x1, #0xf]
    // 0x7ea40c: LoadField: r2 = r0->field_13
    //     0x7ea40c: ldur            w2, [x0, #0x13]
    // 0x7ea410: DecompressPointer r2
    //     0x7ea410: add             x2, x2, HEAP, lsl #32
    // 0x7ea414: stur            x2, [fp, #-0x10]
    // 0x7ea418: r0 = LoadClassIdInstr(r2)
    //     0x7ea418: ldur            x0, [x2, #-1]
    //     0x7ea41c: ubfx            x0, x0, #0xc, #0x14
    // 0x7ea420: r16 = "misafir"
    //     0x7ea420: add             x16, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x7ea424: ldr             x16, [x16, #0x588]
    // 0x7ea428: stp             x16, x2, [SP]
    // 0x7ea42c: mov             lr, x0
    // 0x7ea430: ldr             lr, [x21, lr, lsl #3]
    // 0x7ea434: blr             lr
    // 0x7ea438: stur            x0, [fp, #-8]
    // 0x7ea43c: r0 = ChoiceChipLogin()
    //     0x7ea43c: bl              #0x7ea6c0  ; AllocateChoiceChipLoginStub -> ChoiceChipLogin (size=0x20)
    // 0x7ea440: mov             x3, x0
    // 0x7ea444: r0 = "Misafir"
    //     0x7ea444: add             x0, PP, #0x15, lsl #12  ; [pp+0x15998] "Misafir"
    //     0x7ea448: ldr             x0, [x0, #0x998]
    // 0x7ea44c: stur            x3, [fp, #-0x20]
    // 0x7ea450: StoreField: r3->field_b = r0
    //     0x7ea450: stur            w0, [x3, #0xb]
    // 0x7ea454: r0 = Instance_IconData
    //     0x7ea454: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bef8] Obj!IconData@a0a961
    //     0x7ea458: ldr             x0, [x0, #0xef8]
    // 0x7ea45c: StoreField: r3->field_f = r0
    //     0x7ea45c: stur            w0, [x3, #0xf]
    // 0x7ea460: ldur            x0, [fp, #-8]
    // 0x7ea464: StoreField: r3->field_13 = r0
    //     0x7ea464: stur            w0, [x3, #0x13]
    // 0x7ea468: ldur            x2, [fp, #-0x18]
    // 0x7ea46c: r1 = Function '<anonymous closure>':.
    //     0x7ea46c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf00] AnonymousClosure: (0x7ea734), in [package:umrem_demo/features/auth/widgets/user_type_selector.dart] UserTypeSelector::build (0x7ea3d8)
    //     0x7ea470: ldr             x1, [x1, #0xf00]
    // 0x7ea474: r0 = AllocateClosure()
    //     0x7ea474: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ea478: mov             x1, x0
    // 0x7ea47c: ldur            x0, [fp, #-0x20]
    // 0x7ea480: ArrayStore: r0[0] = r1  ; List_4
    //     0x7ea480: stur            w1, [x0, #0x17]
    // 0x7ea484: r2 = Instance_Color
    //     0x7ea484: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ea488: ldr             x2, [x2, #0xb78]
    // 0x7ea48c: StoreField: r0->field_1b = r2
    //     0x7ea48c: stur            w2, [x0, #0x1b]
    // 0x7ea490: r1 = <FlexParentData>
    //     0x7ea490: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7ea494: ldr             x1, [x1, #0x340]
    // 0x7ea498: r0 = Expanded()
    //     0x7ea498: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7ea49c: mov             x2, x0
    // 0x7ea4a0: r1 = 1
    //     0x7ea4a0: mov             x1, #1
    // 0x7ea4a4: stur            x2, [fp, #-8]
    // 0x7ea4a8: StoreField: r2->field_13 = r1
    //     0x7ea4a8: stur            x1, [x2, #0x13]
    // 0x7ea4ac: r3 = Instance_FlexFit
    //     0x7ea4ac: add             x3, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7ea4b0: ldr             x3, [x3, #0x348]
    // 0x7ea4b4: StoreField: r2->field_1b = r3
    //     0x7ea4b4: stur            w3, [x2, #0x1b]
    // 0x7ea4b8: ldur            x0, [fp, #-0x20]
    // 0x7ea4bc: StoreField: r2->field_b = r0
    //     0x7ea4bc: stur            w0, [x2, #0xb]
    // 0x7ea4c0: ldur            x0, [fp, #-0x10]
    // 0x7ea4c4: r4 = LoadClassIdInstr(r0)
    //     0x7ea4c4: ldur            x4, [x0, #-1]
    //     0x7ea4c8: ubfx            x4, x4, #0xc, #0x14
    // 0x7ea4cc: r16 = "yonetici"
    //     0x7ea4cc: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x7ea4d0: ldr             x16, [x16, #0x798]
    // 0x7ea4d4: stp             x16, x0, [SP]
    // 0x7ea4d8: mov             x0, x4
    // 0x7ea4dc: mov             lr, x0
    // 0x7ea4e0: ldr             lr, [x21, lr, lsl #3]
    // 0x7ea4e4: blr             lr
    // 0x7ea4e8: stur            x0, [fp, #-0x10]
    // 0x7ea4ec: r0 = ChoiceChipLogin()
    //     0x7ea4ec: bl              #0x7ea6c0  ; AllocateChoiceChipLoginStub -> ChoiceChipLogin (size=0x20)
    // 0x7ea4f0: mov             x3, x0
    // 0x7ea4f4: r0 = "Yönetici"
    //     0x7ea4f4: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bf08] "Yönetici"
    //     0x7ea4f8: ldr             x0, [x0, #0xf08]
    // 0x7ea4fc: stur            x3, [fp, #-0x20]
    // 0x7ea500: StoreField: r3->field_b = r0
    //     0x7ea500: stur            w0, [x3, #0xb]
    // 0x7ea504: r0 = Instance_IconData
    //     0x7ea504: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bf10] Obj!IconData@a0a941
    //     0x7ea508: ldr             x0, [x0, #0xf10]
    // 0x7ea50c: StoreField: r3->field_f = r0
    //     0x7ea50c: stur            w0, [x3, #0xf]
    // 0x7ea510: ldur            x0, [fp, #-0x10]
    // 0x7ea514: StoreField: r3->field_13 = r0
    //     0x7ea514: stur            w0, [x3, #0x13]
    // 0x7ea518: ldur            x2, [fp, #-0x18]
    // 0x7ea51c: r1 = Function '<anonymous closure>':.
    //     0x7ea51c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bf18] AnonymousClosure: (0x7ea6cc), in [package:umrem_demo/features/auth/widgets/user_type_selector.dart] UserTypeSelector::build (0x7ea3d8)
    //     0x7ea520: ldr             x1, [x1, #0xf18]
    // 0x7ea524: r0 = AllocateClosure()
    //     0x7ea524: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ea528: mov             x1, x0
    // 0x7ea52c: ldur            x0, [fp, #-0x20]
    // 0x7ea530: ArrayStore: r0[0] = r1  ; List_4
    //     0x7ea530: stur            w1, [x0, #0x17]
    // 0x7ea534: r1 = Instance_Color
    //     0x7ea534: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ea538: ldr             x1, [x1, #0xb78]
    // 0x7ea53c: StoreField: r0->field_1b = r1
    //     0x7ea53c: stur            w1, [x0, #0x1b]
    // 0x7ea540: r1 = <FlexParentData>
    //     0x7ea540: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7ea544: ldr             x1, [x1, #0x340]
    // 0x7ea548: r0 = Expanded()
    //     0x7ea548: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7ea54c: mov             x3, x0
    // 0x7ea550: r0 = 1
    //     0x7ea550: mov             x0, #1
    // 0x7ea554: stur            x3, [fp, #-0x10]
    // 0x7ea558: StoreField: r3->field_13 = r0
    //     0x7ea558: stur            x0, [x3, #0x13]
    // 0x7ea55c: r0 = Instance_FlexFit
    //     0x7ea55c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7ea560: ldr             x0, [x0, #0x348]
    // 0x7ea564: StoreField: r3->field_1b = r0
    //     0x7ea564: stur            w0, [x3, #0x1b]
    // 0x7ea568: ldur            x0, [fp, #-0x20]
    // 0x7ea56c: StoreField: r3->field_b = r0
    //     0x7ea56c: stur            w0, [x3, #0xb]
    // 0x7ea570: r1 = Null
    //     0x7ea570: mov             x1, NULL
    // 0x7ea574: r2 = 6
    //     0x7ea574: mov             x2, #6
    // 0x7ea578: r0 = AllocateArray()
    //     0x7ea578: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ea57c: mov             x2, x0
    // 0x7ea580: ldur            x0, [fp, #-8]
    // 0x7ea584: stur            x2, [fp, #-0x18]
    // 0x7ea588: StoreField: r2->field_f = r0
    //     0x7ea588: stur            w0, [x2, #0xf]
    // 0x7ea58c: r16 = Instance_SizedBox
    //     0x7ea58c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7ea590: ldr             x16, [x16, #0x360]
    // 0x7ea594: StoreField: r2->field_13 = r16
    //     0x7ea594: stur            w16, [x2, #0x13]
    // 0x7ea598: ldur            x0, [fp, #-0x10]
    // 0x7ea59c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7ea59c: stur            w0, [x2, #0x17]
    // 0x7ea5a0: r1 = <Widget>
    //     0x7ea5a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ea5a4: r0 = AllocateGrowableArray()
    //     0x7ea5a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ea5a8: mov             x1, x0
    // 0x7ea5ac: ldur            x0, [fp, #-0x18]
    // 0x7ea5b0: stur            x1, [fp, #-8]
    // 0x7ea5b4: StoreField: r1->field_f = r0
    //     0x7ea5b4: stur            w0, [x1, #0xf]
    // 0x7ea5b8: r0 = 6
    //     0x7ea5b8: mov             x0, #6
    // 0x7ea5bc: StoreField: r1->field_b = r0
    //     0x7ea5bc: stur            w0, [x1, #0xb]
    // 0x7ea5c0: r0 = Row()
    //     0x7ea5c0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7ea5c4: mov             x3, x0
    // 0x7ea5c8: r0 = Instance_Axis
    //     0x7ea5c8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7ea5cc: stur            x3, [fp, #-0x10]
    // 0x7ea5d0: StoreField: r3->field_f = r0
    //     0x7ea5d0: stur            w0, [x3, #0xf]
    // 0x7ea5d4: r0 = Instance_MainAxisAlignment
    //     0x7ea5d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ea5d8: ldr             x0, [x0, #0x230]
    // 0x7ea5dc: StoreField: r3->field_13 = r0
    //     0x7ea5dc: stur            w0, [x3, #0x13]
    // 0x7ea5e0: r4 = Instance_MainAxisSize
    //     0x7ea5e0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ea5e4: ldr             x4, [x4, #0x330]
    // 0x7ea5e8: ArrayStore: r3[0] = r4  ; List_4
    //     0x7ea5e8: stur            w4, [x3, #0x17]
    // 0x7ea5ec: r5 = Instance_CrossAxisAlignment
    //     0x7ea5ec: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7ea5f0: ldr             x5, [x5, #0x338]
    // 0x7ea5f4: StoreField: r3->field_1b = r5
    //     0x7ea5f4: stur            w5, [x3, #0x1b]
    // 0x7ea5f8: r6 = Instance_VerticalDirection
    //     0x7ea5f8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ea5fc: ldr             x6, [x6, #0x340]
    // 0x7ea600: StoreField: r3->field_23 = r6
    //     0x7ea600: stur            w6, [x3, #0x23]
    // 0x7ea604: r7 = Instance_Clip
    //     0x7ea604: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ea608: ldr             x7, [x7, #0x348]
    // 0x7ea60c: StoreField: r3->field_2b = r7
    //     0x7ea60c: stur            w7, [x3, #0x2b]
    // 0x7ea610: StoreField: r3->field_2f = rZR
    //     0x7ea610: stur            xzr, [x3, #0x2f]
    // 0x7ea614: ldur            x1, [fp, #-8]
    // 0x7ea618: StoreField: r3->field_b = r1
    //     0x7ea618: stur            w1, [x3, #0xb]
    // 0x7ea61c: r1 = Null
    //     0x7ea61c: mov             x1, NULL
    // 0x7ea620: r2 = 2
    //     0x7ea620: mov             x2, #2
    // 0x7ea624: r0 = AllocateArray()
    //     0x7ea624: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ea628: mov             x2, x0
    // 0x7ea62c: ldur            x0, [fp, #-0x10]
    // 0x7ea630: stur            x2, [fp, #-8]
    // 0x7ea634: StoreField: r2->field_f = r0
    //     0x7ea634: stur            w0, [x2, #0xf]
    // 0x7ea638: r1 = <Widget>
    //     0x7ea638: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ea63c: r0 = AllocateGrowableArray()
    //     0x7ea63c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ea640: mov             x1, x0
    // 0x7ea644: ldur            x0, [fp, #-8]
    // 0x7ea648: stur            x1, [fp, #-0x10]
    // 0x7ea64c: StoreField: r1->field_f = r0
    //     0x7ea64c: stur            w0, [x1, #0xf]
    // 0x7ea650: r0 = 2
    //     0x7ea650: mov             x0, #2
    // 0x7ea654: StoreField: r1->field_b = r0
    //     0x7ea654: stur            w0, [x1, #0xb]
    // 0x7ea658: r0 = Column()
    //     0x7ea658: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ea65c: r1 = Instance_Axis
    //     0x7ea65c: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ea660: StoreField: r0->field_f = r1
    //     0x7ea660: stur            w1, [x0, #0xf]
    // 0x7ea664: r1 = Instance_MainAxisAlignment
    //     0x7ea664: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ea668: ldr             x1, [x1, #0x230]
    // 0x7ea66c: StoreField: r0->field_13 = r1
    //     0x7ea66c: stur            w1, [x0, #0x13]
    // 0x7ea670: r1 = Instance_MainAxisSize
    //     0x7ea670: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ea674: ldr             x1, [x1, #0x330]
    // 0x7ea678: ArrayStore: r0[0] = r1  ; List_4
    //     0x7ea678: stur            w1, [x0, #0x17]
    // 0x7ea67c: r1 = Instance_CrossAxisAlignment
    //     0x7ea67c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7ea680: ldr             x1, [x1, #0x338]
    // 0x7ea684: StoreField: r0->field_1b = r1
    //     0x7ea684: stur            w1, [x0, #0x1b]
    // 0x7ea688: r1 = Instance_VerticalDirection
    //     0x7ea688: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ea68c: ldr             x1, [x1, #0x340]
    // 0x7ea690: StoreField: r0->field_23 = r1
    //     0x7ea690: stur            w1, [x0, #0x23]
    // 0x7ea694: r1 = Instance_Clip
    //     0x7ea694: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ea698: ldr             x1, [x1, #0x348]
    // 0x7ea69c: StoreField: r0->field_2b = r1
    //     0x7ea69c: stur            w1, [x0, #0x2b]
    // 0x7ea6a0: StoreField: r0->field_2f = rZR
    //     0x7ea6a0: stur            xzr, [x0, #0x2f]
    // 0x7ea6a4: ldur            x1, [fp, #-0x10]
    // 0x7ea6a8: StoreField: r0->field_b = r1
    //     0x7ea6a8: stur            w1, [x0, #0xb]
    // 0x7ea6ac: LeaveFrame
    //     0x7ea6ac: mov             SP, fp
    //     0x7ea6b0: ldp             fp, lr, [SP], #0x10
    // 0x7ea6b4: ret
    //     0x7ea6b4: ret             
    // 0x7ea6b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ea6b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ea6bc: b               #0x7ea3f4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7ea6cc, size: 0x68
    // 0x7ea6cc: EnterFrame
    //     0x7ea6cc: stp             fp, lr, [SP, #-0x10]!
    //     0x7ea6d0: mov             fp, SP
    // 0x7ea6d4: AllocStack(0x10)
    //     0x7ea6d4: sub             SP, SP, #0x10
    // 0x7ea6d8: SetupParameters([dynamic _ /* r0 */])
    //     0x7ea6d8: ldr             x0, [fp, #0x10]
    //     0x7ea6dc: ldur            w1, [x0, #0x17]
    //     0x7ea6e0: add             x1, x1, HEAP, lsl #32
    // 0x7ea6e4: CheckStackOverflow
    //     0x7ea6e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ea6e8: cmp             SP, x16
    //     0x7ea6ec: b.ls            #0x7ea72c
    // 0x7ea6f0: LoadField: r0 = r1->field_f
    //     0x7ea6f0: ldur            w0, [x1, #0xf]
    // 0x7ea6f4: DecompressPointer r0
    //     0x7ea6f4: add             x0, x0, HEAP, lsl #32
    // 0x7ea6f8: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7ea6f8: ldur            w1, [x0, #0x17]
    // 0x7ea6fc: DecompressPointer r1
    //     0x7ea6fc: add             x1, x1, HEAP, lsl #32
    // 0x7ea700: r16 = "yonetici"
    //     0x7ea700: add             x16, PP, #0x14, lsl #12  ; [pp+0x14798] "yonetici"
    //     0x7ea704: ldr             x16, [x16, #0x798]
    // 0x7ea708: stp             x16, x1, [SP]
    // 0x7ea70c: mov             x0, x1
    // 0x7ea710: ClosureCall
    //     0x7ea710: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7ea714: ldur            x2, [x0, #0x1f]
    //     0x7ea718: blr             x2
    // 0x7ea71c: r0 = Null
    //     0x7ea71c: mov             x0, NULL
    // 0x7ea720: LeaveFrame
    //     0x7ea720: mov             SP, fp
    //     0x7ea724: ldp             fp, lr, [SP], #0x10
    // 0x7ea728: ret
    //     0x7ea728: ret             
    // 0x7ea72c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ea72c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ea730: b               #0x7ea6f0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7ea734, size: 0x68
    // 0x7ea734: EnterFrame
    //     0x7ea734: stp             fp, lr, [SP, #-0x10]!
    //     0x7ea738: mov             fp, SP
    // 0x7ea73c: AllocStack(0x10)
    //     0x7ea73c: sub             SP, SP, #0x10
    // 0x7ea740: SetupParameters([dynamic _ /* r0 */])
    //     0x7ea740: ldr             x0, [fp, #0x10]
    //     0x7ea744: ldur            w1, [x0, #0x17]
    //     0x7ea748: add             x1, x1, HEAP, lsl #32
    // 0x7ea74c: CheckStackOverflow
    //     0x7ea74c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ea750: cmp             SP, x16
    //     0x7ea754: b.ls            #0x7ea794
    // 0x7ea758: LoadField: r0 = r1->field_f
    //     0x7ea758: ldur            w0, [x1, #0xf]
    // 0x7ea75c: DecompressPointer r0
    //     0x7ea75c: add             x0, x0, HEAP, lsl #32
    // 0x7ea760: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7ea760: ldur            w1, [x0, #0x17]
    // 0x7ea764: DecompressPointer r1
    //     0x7ea764: add             x1, x1, HEAP, lsl #32
    // 0x7ea768: r16 = "misafir"
    //     0x7ea768: add             x16, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x7ea76c: ldr             x16, [x16, #0x588]
    // 0x7ea770: stp             x16, x1, [SP]
    // 0x7ea774: mov             x0, x1
    // 0x7ea778: ClosureCall
    //     0x7ea778: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x7ea77c: ldur            x2, [x0, #0x1f]
    //     0x7ea780: blr             x2
    // 0x7ea784: r0 = Null
    //     0x7ea784: mov             x0, NULL
    // 0x7ea788: LeaveFrame
    //     0x7ea788: mov             SP, fp
    //     0x7ea78c: ldp             fp, lr, [SP], #0x10
    // 0x7ea790: ret
    //     0x7ea790: ret             
    // 0x7ea794: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ea794: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ea798: b               #0x7ea758
  }
}
