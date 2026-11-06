// lib: , url: package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart

// class id: 1049605, size: 0x8
class :: {
}

// class id: 2458, size: 0x14, field offset: 0x14
class CurrenciesTabState extends State<dynamic> {

  get _ onDataChanged(/* No info */) {
    // ** addr: 0x617b5c, size: 0x28
    // 0x617b5c: LoadField: r2 = r1->field_b
    //     0x617b5c: ldur            w2, [x1, #0xb]
    // 0x617b60: DecompressPointer r2
    //     0x617b60: add             x2, x2, HEAP, lsl #32
    // 0x617b64: cmp             w2, NULL
    // 0x617b68: b.eq            #0x617b78
    // 0x617b6c: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x617b6c: ldur            w0, [x2, #0x17]
    // 0x617b70: DecompressPointer r0
    //     0x617b70: add             x0, x0, HEAP, lsl #32
    // 0x617b74: ret
    //     0x617b74: ret             
    // 0x617b78: EnterFrame
    //     0x617b78: stp             fp, lr, [SP, #-0x10]!
    //     0x617b7c: mov             fp, SP
    // 0x617b80: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x617b80: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f5908, size: 0x5c
    // 0x6f5908: EnterFrame
    //     0x6f5908: stp             fp, lr, [SP, #-0x10]!
    //     0x6f590c: mov             fp, SP
    // 0x6f5910: AllocStack(0x10)
    //     0x6f5910: sub             SP, SP, #0x10
    // 0x6f5914: SetupParameters([dynamic _ /* r0 */])
    //     0x6f5914: ldr             x0, [fp, #0x10]
    //     0x6f5918: ldur            w1, [x0, #0x17]
    //     0x6f591c: add             x1, x1, HEAP, lsl #32
    // 0x6f5920: CheckStackOverflow
    //     0x6f5920: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f5924: cmp             SP, x16
    //     0x6f5928: b.ls            #0x6f595c
    // 0x6f592c: LoadField: r0 = r1->field_b
    //     0x6f592c: ldur            w0, [x1, #0xb]
    // 0x6f5930: DecompressPointer r0
    //     0x6f5930: add             x0, x0, HEAP, lsl #32
    // 0x6f5934: LoadField: r1 = r0->field_f
    //     0x6f5934: ldur            w1, [x0, #0xf]
    // 0x6f5938: DecompressPointer r1
    //     0x6f5938: add             x1, x1, HEAP, lsl #32
    // 0x6f593c: r16 = <Object?>
    //     0x6f593c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6f5940: stp             x1, x16, [SP]
    // 0x6f5944: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6f5944: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6f5948: r0 = pop()
    //     0x6f5948: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6f594c: r0 = Null
    //     0x6f594c: mov             x0, NULL
    // 0x6f5950: LeaveFrame
    //     0x6f5950: mov             SP, fp
    //     0x6f5954: ldp             fp, lr, [SP], #0x10
    // 0x6f5958: ret
    //     0x6f5958: ret             
    // 0x6f595c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f595c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f5960: b               #0x6f592c
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x6f5964, size: 0x464
    // 0x6f5964: EnterFrame
    //     0x6f5964: stp             fp, lr, [SP, #-0x10]!
    //     0x6f5968: mov             fp, SP
    // 0x6f596c: AllocStack(0x58)
    //     0x6f596c: sub             SP, SP, #0x58
    // 0x6f5970: SetupParameters([dynamic _ /* r0 */])
    //     0x6f5970: ldr             x0, [fp, #0x20]
    //     0x6f5974: ldur            w1, [x0, #0x17]
    //     0x6f5978: add             x1, x1, HEAP, lsl #32
    //     0x6f597c: stur            x1, [fp, #-8]
    // 0x6f5980: CheckStackOverflow
    //     0x6f5980: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f5984: cmp             SP, x16
    //     0x6f5988: b.ls            #0x6f5dc0
    // 0x6f598c: r1 = 2
    //     0x6f598c: mov             x1, #2
    // 0x6f5990: r0 = AllocateContext()
    //     0x6f5990: bl              #0x927010  ; AllocateContextStub
    // 0x6f5994: mov             x1, x0
    // 0x6f5998: ldur            x0, [fp, #-8]
    // 0x6f599c: stur            x1, [fp, #-0x10]
    // 0x6f59a0: StoreField: r1->field_b = r0
    //     0x6f59a0: stur            w0, [x1, #0xb]
    // 0x6f59a4: ldr             x2, [fp, #0x18]
    // 0x6f59a8: StoreField: r1->field_f = r2
    //     0x6f59a8: stur            w2, [x1, #0xf]
    // 0x6f59ac: ldr             x2, [fp, #0x10]
    // 0x6f59b0: StoreField: r1->field_13 = r2
    //     0x6f59b0: stur            w2, [x1, #0x13]
    // 0x6f59b4: r0 = Radius()
    //     0x6f59b4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6f59b8: d0 = 16.000000
    //     0x6f59b8: fmov            d0, #16.00000000
    // 0x6f59bc: stur            x0, [fp, #-0x18]
    // 0x6f59c0: StoreField: r0->field_7 = d0
    //     0x6f59c0: stur            d0, [x0, #7]
    // 0x6f59c4: StoreField: r0->field_f = d0
    //     0x6f59c4: stur            d0, [x0, #0xf]
    // 0x6f59c8: r0 = BorderRadius()
    //     0x6f59c8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6f59cc: mov             x1, x0
    // 0x6f59d0: ldur            x0, [fp, #-0x18]
    // 0x6f59d4: stur            x1, [fp, #-0x20]
    // 0x6f59d8: StoreField: r1->field_7 = r0
    //     0x6f59d8: stur            w0, [x1, #7]
    // 0x6f59dc: StoreField: r1->field_b = r0
    //     0x6f59dc: stur            w0, [x1, #0xb]
    // 0x6f59e0: StoreField: r1->field_f = r0
    //     0x6f59e0: stur            w0, [x1, #0xf]
    // 0x6f59e4: StoreField: r1->field_13 = r0
    //     0x6f59e4: stur            w0, [x1, #0x13]
    // 0x6f59e8: r0 = RoundedRectangleBorder()
    //     0x6f59e8: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6f59ec: mov             x1, x0
    // 0x6f59f0: ldur            x0, [fp, #-0x20]
    // 0x6f59f4: stur            x1, [fp, #-0x28]
    // 0x6f59f8: StoreField: r1->field_b = r0
    //     0x6f59f8: stur            w0, [x1, #0xb]
    // 0x6f59fc: r0 = Instance_BorderSide
    //     0x6f59fc: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6f5a00: ldr             x0, [x0, #0xcb8]
    // 0x6f5a04: StoreField: r1->field_7 = r0
    //     0x6f5a04: stur            w0, [x1, #7]
    // 0x6f5a08: ldur            x0, [fp, #-8]
    // 0x6f5a0c: LoadField: r2 = r0->field_b
    //     0x6f5a0c: ldur            w2, [x0, #0xb]
    // 0x6f5a10: DecompressPointer r2
    //     0x6f5a10: add             x2, x2, HEAP, lsl #32
    // 0x6f5a14: stur            x2, [fp, #-0x20]
    // 0x6f5a18: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x6f5a18: ldur            w0, [x2, #0x17]
    // 0x6f5a1c: DecompressPointer r0
    //     0x6f5a1c: add             x0, x0, HEAP, lsl #32
    // 0x6f5a20: stur            x0, [fp, #-0x18]
    // 0x6f5a24: tbnz            w0, #4, #0x6f5a34
    // 0x6f5a28: r3 = "Döviz Düzenle"
    //     0x6f5a28: add             x3, PP, #0x19, lsl #12  ; [pp+0x19148] "Döviz Düzenle"
    //     0x6f5a2c: ldr             x3, [x3, #0x148]
    // 0x6f5a30: b               #0x6f5a3c
    // 0x6f5a34: r3 = "Yeni Döviz"
    //     0x6f5a34: add             x3, PP, #0x19, lsl #12  ; [pp+0x19150] "Yeni Döviz"
    //     0x6f5a38: ldr             x3, [x3, #0x150]
    // 0x6f5a3c: stur            x3, [fp, #-8]
    // 0x6f5a40: r0 = Text()
    //     0x6f5a40: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f5a44: mov             x4, x0
    // 0x6f5a48: ldur            x0, [fp, #-8]
    // 0x6f5a4c: stur            x4, [fp, #-0x30]
    // 0x6f5a50: StoreField: r4->field_b = r0
    //     0x6f5a50: stur            w0, [x4, #0xb]
    // 0x6f5a54: r0 = Instance_TextStyle
    //     0x6f5a54: add             x0, PP, #0x19, lsl #12  ; [pp+0x19158] Obj!TextStyle@a17601
    //     0x6f5a58: ldr             x0, [x0, #0x158]
    // 0x6f5a5c: StoreField: r4->field_13 = r0
    //     0x6f5a5c: stur            w0, [x4, #0x13]
    // 0x6f5a60: ldur            x0, [fp, #-0x20]
    // 0x6f5a64: LoadField: r1 = r0->field_1b
    //     0x6f5a64: ldur            w1, [x0, #0x1b]
    // 0x6f5a68: DecompressPointer r1
    //     0x6f5a68: add             x1, x1, HEAP, lsl #32
    // 0x6f5a6c: r2 = "Döviz Adı *"
    //     0x6f5a6c: add             x2, PP, #0x19, lsl #12  ; [pp+0x19160] "Döviz Adı *"
    //     0x6f5a70: ldr             x2, [x2, #0x160]
    // 0x6f5a74: r3 = Instance_IconData
    //     0x6f5a74: add             x3, PP, #0x19, lsl #12  ; [pp+0x19168] Obj!IconData@a0a101
    //     0x6f5a78: ldr             x3, [x3, #0x168]
    // 0x6f5a7c: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f5a7c: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f5a80: r0 = buildDialogTextField()
    //     0x6f5a80: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x6f5a84: mov             x4, x0
    // 0x6f5a88: ldur            x0, [fp, #-0x20]
    // 0x6f5a8c: stur            x4, [fp, #-8]
    // 0x6f5a90: LoadField: r1 = r0->field_1f
    //     0x6f5a90: ldur            w1, [x0, #0x1f]
    // 0x6f5a94: DecompressPointer r1
    //     0x6f5a94: add             x1, x1, HEAP, lsl #32
    // 0x6f5a98: r2 = "Emoji"
    //     0x6f5a98: add             x2, PP, #0x19, lsl #12  ; [pp+0x19170] "Emoji"
    //     0x6f5a9c: ldr             x2, [x2, #0x170]
    // 0x6f5aa0: r3 = Instance_IconData
    //     0x6f5aa0: add             x3, PP, #0x19, lsl #12  ; [pp+0x19178] Obj!IconData@a0a0e1
    //     0x6f5aa4: ldr             x3, [x3, #0x178]
    // 0x6f5aa8: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6f5aa8: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6f5aac: r0 = buildDialogTextField()
    //     0x6f5aac: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x6f5ab0: mov             x4, x0
    // 0x6f5ab4: ldur            x0, [fp, #-0x20]
    // 0x6f5ab8: stur            x4, [fp, #-0x38]
    // 0x6f5abc: LoadField: r1 = r0->field_23
    //     0x6f5abc: ldur            w1, [x0, #0x23]
    // 0x6f5ac0: DecompressPointer r1
    //     0x6f5ac0: add             x1, x1, HEAP, lsl #32
    // 0x6f5ac4: r16 = Instance_TextInputType
    //     0x6f5ac4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x6f5ac8: ldr             x16, [x16, #0x948]
    // 0x6f5acc: str             x16, [SP]
    // 0x6f5ad0: r2 = "Kur Değeri (TL) *"
    //     0x6f5ad0: add             x2, PP, #0x19, lsl #12  ; [pp+0x19180] "Kur Değeri (TL) *"
    //     0x6f5ad4: ldr             x2, [x2, #0x180]
    // 0x6f5ad8: r3 = Instance_IconData
    //     0x6f5ad8: add             x3, PP, #0x19, lsl #12  ; [pp+0x19188] Obj!IconData@a0a0c1
    //     0x6f5adc: ldr             x3, [x3, #0x188]
    // 0x6f5ae0: r4 = const [0, 0x4, 0x1, 0x3, keyboardType, 0x3, null]
    //     0x6f5ae0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14958] List(7) [0, 0x4, 0x1, 0x3, "keyboardType", 0x3, Null]
    //     0x6f5ae4: ldr             x4, [x4, #0x958]
    // 0x6f5ae8: r0 = buildDialogTextField()
    //     0x6f5ae8: bl              #0x6f4c3c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildDialogTextField
    // 0x6f5aec: r1 = Null
    //     0x6f5aec: mov             x1, NULL
    // 0x6f5af0: r2 = 10
    //     0x6f5af0: mov             x2, #0xa
    // 0x6f5af4: stur            x0, [fp, #-0x40]
    // 0x6f5af8: r0 = AllocateArray()
    //     0x6f5af8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f5afc: mov             x2, x0
    // 0x6f5b00: ldur            x0, [fp, #-8]
    // 0x6f5b04: stur            x2, [fp, #-0x48]
    // 0x6f5b08: StoreField: r2->field_f = r0
    //     0x6f5b08: stur            w0, [x2, #0xf]
    // 0x6f5b0c: r16 = Instance_SizedBox
    //     0x6f5b0c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f5b10: ldr             x16, [x16, #0x220]
    // 0x6f5b14: StoreField: r2->field_13 = r16
    //     0x6f5b14: stur            w16, [x2, #0x13]
    // 0x6f5b18: ldur            x0, [fp, #-0x38]
    // 0x6f5b1c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6f5b1c: stur            w0, [x2, #0x17]
    // 0x6f5b20: r16 = Instance_SizedBox
    //     0x6f5b20: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x6f5b24: ldr             x16, [x16, #0x220]
    // 0x6f5b28: StoreField: r2->field_1b = r16
    //     0x6f5b28: stur            w16, [x2, #0x1b]
    // 0x6f5b2c: ldur            x0, [fp, #-0x40]
    // 0x6f5b30: StoreField: r2->field_1f = r0
    //     0x6f5b30: stur            w0, [x2, #0x1f]
    // 0x6f5b34: r1 = <Widget>
    //     0x6f5b34: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f5b38: r0 = AllocateGrowableArray()
    //     0x6f5b38: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f5b3c: mov             x1, x0
    // 0x6f5b40: ldur            x0, [fp, #-0x48]
    // 0x6f5b44: stur            x1, [fp, #-8]
    // 0x6f5b48: StoreField: r1->field_f = r0
    //     0x6f5b48: stur            w0, [x1, #0xf]
    // 0x6f5b4c: r0 = 10
    //     0x6f5b4c: mov             x0, #0xa
    // 0x6f5b50: StoreField: r1->field_b = r0
    //     0x6f5b50: stur            w0, [x1, #0xb]
    // 0x6f5b54: r0 = Column()
    //     0x6f5b54: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6f5b58: mov             x1, x0
    // 0x6f5b5c: r0 = Instance_Axis
    //     0x6f5b5c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f5b60: stur            x1, [fp, #-0x38]
    // 0x6f5b64: StoreField: r1->field_f = r0
    //     0x6f5b64: stur            w0, [x1, #0xf]
    // 0x6f5b68: r2 = Instance_MainAxisAlignment
    //     0x6f5b68: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6f5b6c: ldr             x2, [x2, #0x230]
    // 0x6f5b70: StoreField: r1->field_13 = r2
    //     0x6f5b70: stur            w2, [x1, #0x13]
    // 0x6f5b74: r2 = Instance_MainAxisSize
    //     0x6f5b74: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6f5b78: ldr             x2, [x2, #0xb60]
    // 0x6f5b7c: ArrayStore: r1[0] = r2  ; List_4
    //     0x6f5b7c: stur            w2, [x1, #0x17]
    // 0x6f5b80: r2 = Instance_CrossAxisAlignment
    //     0x6f5b80: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6f5b84: ldr             x2, [x2, #0x338]
    // 0x6f5b88: StoreField: r1->field_1b = r2
    //     0x6f5b88: stur            w2, [x1, #0x1b]
    // 0x6f5b8c: r2 = Instance_VerticalDirection
    //     0x6f5b8c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6f5b90: ldr             x2, [x2, #0x340]
    // 0x6f5b94: StoreField: r1->field_23 = r2
    //     0x6f5b94: stur            w2, [x1, #0x23]
    // 0x6f5b98: r2 = Instance_Clip
    //     0x6f5b98: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6f5b9c: ldr             x2, [x2, #0x348]
    // 0x6f5ba0: StoreField: r1->field_2b = r2
    //     0x6f5ba0: stur            w2, [x1, #0x2b]
    // 0x6f5ba4: StoreField: r1->field_2f = rZR
    //     0x6f5ba4: stur            xzr, [x1, #0x2f]
    // 0x6f5ba8: ldur            x2, [fp, #-8]
    // 0x6f5bac: StoreField: r1->field_b = r2
    //     0x6f5bac: stur            w2, [x1, #0xb]
    // 0x6f5bb0: r0 = SingleChildScrollView()
    //     0x6f5bb0: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6f5bb4: mov             x3, x0
    // 0x6f5bb8: r0 = Instance_Axis
    //     0x6f5bb8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6f5bbc: stur            x3, [fp, #-8]
    // 0x6f5bc0: StoreField: r3->field_b = r0
    //     0x6f5bc0: stur            w0, [x3, #0xb]
    // 0x6f5bc4: r0 = false
    //     0x6f5bc4: add             x0, NULL, #0x30  ; false
    // 0x6f5bc8: StoreField: r3->field_f = r0
    //     0x6f5bc8: stur            w0, [x3, #0xf]
    // 0x6f5bcc: ldur            x1, [fp, #-0x38]
    // 0x6f5bd0: StoreField: r3->field_23 = r1
    //     0x6f5bd0: stur            w1, [x3, #0x23]
    // 0x6f5bd4: r1 = Instance_DragStartBehavior
    //     0x6f5bd4: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6f5bd8: StoreField: r3->field_27 = r1
    //     0x6f5bd8: stur            w1, [x3, #0x27]
    // 0x6f5bdc: r1 = Instance_Clip
    //     0x6f5bdc: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f5be0: ldr             x1, [x1, #0x2d8]
    // 0x6f5be4: StoreField: r3->field_2b = r1
    //     0x6f5be4: stur            w1, [x3, #0x2b]
    // 0x6f5be8: r1 = Instance_HitTestBehavior
    //     0x6f5be8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6f5bec: ldr             x1, [x1, #0xe20]
    // 0x6f5bf0: StoreField: r3->field_2f = r1
    //     0x6f5bf0: stur            w1, [x3, #0x2f]
    // 0x6f5bf4: ldur            x2, [fp, #-0x10]
    // 0x6f5bf8: r1 = Function '<anonymous closure>':.
    //     0x6f5bf8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19190] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x6f5bfc: ldr             x1, [x1, #0x190]
    // 0x6f5c00: r0 = AllocateClosure()
    //     0x6f5c00: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f5c04: stur            x0, [fp, #-0x38]
    // 0x6f5c08: r0 = TextButton()
    //     0x6f5c08: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6f5c0c: mov             x3, x0
    // 0x6f5c10: ldur            x0, [fp, #-0x38]
    // 0x6f5c14: stur            x3, [fp, #-0x40]
    // 0x6f5c18: StoreField: r3->field_b = r0
    //     0x6f5c18: stur            w0, [x3, #0xb]
    // 0x6f5c1c: r0 = false
    //     0x6f5c1c: add             x0, NULL, #0x30  ; false
    // 0x6f5c20: StoreField: r3->field_27 = r0
    //     0x6f5c20: stur            w0, [x3, #0x27]
    // 0x6f5c24: r4 = true
    //     0x6f5c24: add             x4, NULL, #0x20  ; true
    // 0x6f5c28: StoreField: r3->field_2f = r4
    //     0x6f5c28: stur            w4, [x3, #0x2f]
    // 0x6f5c2c: r1 = Instance_Text
    //     0x6f5c2c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x6f5c30: ldr             x1, [x1, #0x198]
    // 0x6f5c34: StoreField: r3->field_37 = r1
    //     0x6f5c34: stur            w1, [x3, #0x37]
    // 0x6f5c38: ldur            x5, [fp, #-0x20]
    // 0x6f5c3c: LoadField: r1 = r5->field_27
    //     0x6f5c3c: ldur            w1, [x5, #0x27]
    // 0x6f5c40: DecompressPointer r1
    //     0x6f5c40: add             x1, x1, HEAP, lsl #32
    // 0x6f5c44: tbnz            w1, #4, #0x6f5c54
    // 0x6f5c48: mov             x0, x5
    // 0x6f5c4c: r1 = Null
    //     0x6f5c4c: mov             x1, NULL
    // 0x6f5c50: b               #0x6f5c6c
    // 0x6f5c54: ldur            x2, [fp, #-0x10]
    // 0x6f5c58: r1 = Function '<anonymous closure>':.
    //     0x6f5c58: add             x1, PP, #0x19, lsl #12  ; [pp+0x191a0] AnonymousClosure: (0x6f5dc8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x6f5c5c: ldr             x1, [x1, #0x1a0]
    // 0x6f5c60: r0 = AllocateClosure()
    //     0x6f5c60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f5c64: mov             x1, x0
    // 0x6f5c68: ldur            x0, [fp, #-0x20]
    // 0x6f5c6c: stur            x1, [fp, #-0x10]
    // 0x6f5c70: r16 = Instance_Color
    //     0x6f5c70: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x6f5c74: ldr             x16, [x16, #0xf30]
    // 0x6f5c78: r30 = Instance_Color
    //     0x6f5c78: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6f5c7c: stp             lr, x16, [SP]
    // 0x6f5c80: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x6f5c80: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x6f5c84: ldr             x4, [x4, #0x1a8]
    // 0x6f5c88: r0 = styleFrom()
    //     0x6f5c88: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6f5c8c: mov             x1, x0
    // 0x6f5c90: ldur            x0, [fp, #-0x20]
    // 0x6f5c94: stur            x1, [fp, #-0x38]
    // 0x6f5c98: LoadField: r2 = r0->field_27
    //     0x6f5c98: ldur            w2, [x0, #0x27]
    // 0x6f5c9c: DecompressPointer r2
    //     0x6f5c9c: add             x2, x2, HEAP, lsl #32
    // 0x6f5ca0: tbnz            w2, #4, #0x6f5cb4
    // 0x6f5ca4: mov             x0, x1
    // 0x6f5ca8: r6 = Instance_SizedBox
    //     0x6f5ca8: add             x6, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x6f5cac: ldr             x6, [x6, #0x1b0]
    // 0x6f5cb0: b               #0x6f5cec
    // 0x6f5cb4: ldur            x0, [fp, #-0x18]
    // 0x6f5cb8: tbnz            w0, #4, #0x6f5cc8
    // 0x6f5cbc: r0 = "Güncelle"
    //     0x6f5cbc: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6f5cc0: ldr             x0, [x0, #0xb48]
    // 0x6f5cc4: b               #0x6f5cd0
    // 0x6f5cc8: r0 = "Ekle"
    //     0x6f5cc8: add             x0, PP, #0x19, lsl #12  ; [pp+0x191b8] "Ekle"
    //     0x6f5ccc: ldr             x0, [x0, #0x1b8]
    // 0x6f5cd0: stur            x0, [fp, #-0x18]
    // 0x6f5cd4: r0 = Text()
    //     0x6f5cd4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f5cd8: mov             x1, x0
    // 0x6f5cdc: ldur            x0, [fp, #-0x18]
    // 0x6f5ce0: StoreField: r1->field_b = r0
    //     0x6f5ce0: stur            w0, [x1, #0xb]
    // 0x6f5ce4: mov             x6, x1
    // 0x6f5ce8: ldur            x0, [fp, #-0x38]
    // 0x6f5cec: ldur            x5, [fp, #-0x28]
    // 0x6f5cf0: ldur            x4, [fp, #-0x30]
    // 0x6f5cf4: ldur            x3, [fp, #-8]
    // 0x6f5cf8: ldur            x2, [fp, #-0x40]
    // 0x6f5cfc: ldur            x1, [fp, #-0x10]
    // 0x6f5d00: stur            x6, [fp, #-0x18]
    // 0x6f5d04: r0 = ElevatedButton()
    //     0x6f5d04: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6f5d08: mov             x3, x0
    // 0x6f5d0c: ldur            x0, [fp, #-0x10]
    // 0x6f5d10: stur            x3, [fp, #-0x20]
    // 0x6f5d14: StoreField: r3->field_b = r0
    //     0x6f5d14: stur            w0, [x3, #0xb]
    // 0x6f5d18: ldur            x0, [fp, #-0x38]
    // 0x6f5d1c: StoreField: r3->field_1b = r0
    //     0x6f5d1c: stur            w0, [x3, #0x1b]
    // 0x6f5d20: r0 = false
    //     0x6f5d20: add             x0, NULL, #0x30  ; false
    // 0x6f5d24: StoreField: r3->field_27 = r0
    //     0x6f5d24: stur            w0, [x3, #0x27]
    // 0x6f5d28: r1 = true
    //     0x6f5d28: add             x1, NULL, #0x20  ; true
    // 0x6f5d2c: StoreField: r3->field_2f = r1
    //     0x6f5d2c: stur            w1, [x3, #0x2f]
    // 0x6f5d30: ldur            x1, [fp, #-0x18]
    // 0x6f5d34: StoreField: r3->field_37 = r1
    //     0x6f5d34: stur            w1, [x3, #0x37]
    // 0x6f5d38: r1 = Null
    //     0x6f5d38: mov             x1, NULL
    // 0x6f5d3c: r2 = 4
    //     0x6f5d3c: mov             x2, #4
    // 0x6f5d40: r0 = AllocateArray()
    //     0x6f5d40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f5d44: mov             x2, x0
    // 0x6f5d48: ldur            x0, [fp, #-0x40]
    // 0x6f5d4c: stur            x2, [fp, #-0x10]
    // 0x6f5d50: StoreField: r2->field_f = r0
    //     0x6f5d50: stur            w0, [x2, #0xf]
    // 0x6f5d54: ldur            x0, [fp, #-0x20]
    // 0x6f5d58: StoreField: r2->field_13 = r0
    //     0x6f5d58: stur            w0, [x2, #0x13]
    // 0x6f5d5c: r1 = <Widget>
    //     0x6f5d5c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6f5d60: r0 = AllocateGrowableArray()
    //     0x6f5d60: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6f5d64: mov             x1, x0
    // 0x6f5d68: ldur            x0, [fp, #-0x10]
    // 0x6f5d6c: stur            x1, [fp, #-0x18]
    // 0x6f5d70: StoreField: r1->field_f = r0
    //     0x6f5d70: stur            w0, [x1, #0xf]
    // 0x6f5d74: r0 = 4
    //     0x6f5d74: mov             x0, #4
    // 0x6f5d78: StoreField: r1->field_b = r0
    //     0x6f5d78: stur            w0, [x1, #0xb]
    // 0x6f5d7c: r0 = AlertDialog()
    //     0x6f5d7c: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6f5d80: ldur            x1, [fp, #-0x30]
    // 0x6f5d84: StoreField: r0->field_f = r1
    //     0x6f5d84: stur            w1, [x0, #0xf]
    // 0x6f5d88: ldur            x1, [fp, #-8]
    // 0x6f5d8c: StoreField: r0->field_1b = r1
    //     0x6f5d8c: stur            w1, [x0, #0x1b]
    // 0x6f5d90: ldur            x1, [fp, #-0x18]
    // 0x6f5d94: StoreField: r0->field_27 = r1
    //     0x6f5d94: stur            w1, [x0, #0x27]
    // 0x6f5d98: r1 = Instance_Color
    //     0x6f5d98: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x6f5d9c: ldr             x1, [x1, #0x1c0]
    // 0x6f5da0: StoreField: r0->field_43 = r1
    //     0x6f5da0: stur            w1, [x0, #0x43]
    // 0x6f5da4: ldur            x1, [fp, #-0x28]
    // 0x6f5da8: StoreField: r0->field_5f = r1
    //     0x6f5da8: stur            w1, [x0, #0x5f]
    // 0x6f5dac: r1 = false
    //     0x6f5dac: add             x1, NULL, #0x30  ; false
    // 0x6f5db0: StoreField: r0->field_6b = r1
    //     0x6f5db0: stur            w1, [x0, #0x6b]
    // 0x6f5db4: LeaveFrame
    //     0x6f5db4: mov             SP, fp
    //     0x6f5db8: ldp             fp, lr, [SP], #0x10
    // 0x6f5dbc: ret
    //     0x6f5dbc: ret             
    // 0x6f5dc0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f5dc0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f5dc4: b               #0x6f598c
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6f5dc8, size: 0x6a0
    // 0x6f5dc8: EnterFrame
    //     0x6f5dc8: stp             fp, lr, [SP, #-0x10]!
    //     0x6f5dcc: mov             fp, SP
    // 0x6f5dd0: AllocStack(0xb8)
    //     0x6f5dd0: sub             SP, SP, #0xb8
    // 0x6f5dd4: SetupParameters(CurrenciesTabState this /* r1 */)
    //     0x6f5dd4: stur            NULL, [fp, #-8]
    //     0x6f5dd8: mov             x0, #0
    //     0x6f5ddc: add             x1, fp, w0, sxtw #2
    //     0x6f5de0: ldr             x1, [x1, #0x10]
    //     0x6f5de4: ldur            w2, [x1, #0x17]
    //     0x6f5de8: add             x2, x2, HEAP, lsl #32
    //     0x6f5dec: stur            x2, [fp, #-0x68]
    // 0x6f5df0: CheckStackOverflow
    //     0x6f5df0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f5df4: cmp             SP, x16
    //     0x6f5df8: b.ls            #0x6f6440
    // 0x6f5dfc: InitAsync() -> Future<void?>
    //     0x6f5dfc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6f5e00: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f5e04: ldur            x2, [fp, #-0x68]
    // 0x6f5e08: LoadField: r0 = r2->field_b
    //     0x6f5e08: ldur            w0, [x2, #0xb]
    // 0x6f5e0c: DecompressPointer r0
    //     0x6f5e0c: add             x0, x0, HEAP, lsl #32
    // 0x6f5e10: stur            x0, [fp, #-0x80]
    // 0x6f5e14: LoadField: r3 = r0->field_b
    //     0x6f5e14: ldur            w3, [x0, #0xb]
    // 0x6f5e18: DecompressPointer r3
    //     0x6f5e18: add             x3, x3, HEAP, lsl #32
    // 0x6f5e1c: stur            x3, [fp, #-0x78]
    // 0x6f5e20: LoadField: r4 = r3->field_1b
    //     0x6f5e20: ldur            w4, [x3, #0x1b]
    // 0x6f5e24: DecompressPointer r4
    //     0x6f5e24: add             x4, x4, HEAP, lsl #32
    // 0x6f5e28: stur            x4, [fp, #-0x70]
    // 0x6f5e2c: LoadField: r1 = r4->field_27
    //     0x6f5e2c: ldur            w1, [x4, #0x27]
    // 0x6f5e30: DecompressPointer r1
    //     0x6f5e30: add             x1, x1, HEAP, lsl #32
    // 0x6f5e34: LoadField: r5 = r1->field_7
    //     0x6f5e34: ldur            w5, [x1, #7]
    // 0x6f5e38: DecompressPointer r5
    //     0x6f5e38: add             x5, x5, HEAP, lsl #32
    // 0x6f5e3c: mov             x1, x5
    // 0x6f5e40: r0 = trim()
    //     0x6f5e40: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f5e44: LoadField: r1 = r0->field_7
    //     0x6f5e44: ldur            w1, [x0, #7]
    // 0x6f5e48: cbz             w1, #0x6f5e7c
    // 0x6f5e4c: ldur            x0, [fp, #-0x78]
    // 0x6f5e50: LoadField: r2 = r0->field_23
    //     0x6f5e50: ldur            w2, [x0, #0x23]
    // 0x6f5e54: DecompressPointer r2
    //     0x6f5e54: add             x2, x2, HEAP, lsl #32
    // 0x6f5e58: stur            x2, [fp, #-0x88]
    // 0x6f5e5c: LoadField: r1 = r2->field_27
    //     0x6f5e5c: ldur            w1, [x2, #0x27]
    // 0x6f5e60: DecompressPointer r1
    //     0x6f5e60: add             x1, x1, HEAP, lsl #32
    // 0x6f5e64: LoadField: r3 = r1->field_7
    //     0x6f5e64: ldur            w3, [x1, #7]
    // 0x6f5e68: DecompressPointer r3
    //     0x6f5e68: add             x3, x3, HEAP, lsl #32
    // 0x6f5e6c: mov             x1, x3
    // 0x6f5e70: r0 = trim()
    //     0x6f5e70: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f5e74: LoadField: r1 = r0->field_7
    //     0x6f5e74: ldur            w1, [x0, #7]
    // 0x6f5e78: cbnz            w1, #0x6f5ea4
    // 0x6f5e7c: ldur            x0, [fp, #-0x68]
    // 0x6f5e80: LoadField: r1 = r0->field_f
    //     0x6f5e80: ldur            w1, [x0, #0xf]
    // 0x6f5e84: DecompressPointer r1
    //     0x6f5e84: add             x1, x1, HEAP, lsl #32
    // 0x6f5e88: r0 = of()
    //     0x6f5e88: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6f5e8c: mov             x1, x0
    // 0x6f5e90: r2 = Instance_SnackBar
    //     0x6f5e90: add             x2, PP, #0x19, lsl #12  ; [pp+0x191c8] Obj!SnackBar@a20511
    //     0x6f5e94: ldr             x2, [x2, #0x1c8]
    // 0x6f5e98: r0 = showSnackBar()
    //     0x6f5e98: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6f5e9c: r0 = Null
    //     0x6f5e9c: mov             x0, NULL
    // 0x6f5ea0: r0 = ReturnAsyncNotFuture()
    //     0x6f5ea0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f5ea4: ldur            x0, [fp, #-0x68]
    // 0x6f5ea8: LoadField: r3 = r0->field_13
    //     0x6f5ea8: ldur            w3, [x0, #0x13]
    // 0x6f5eac: DecompressPointer r3
    //     0x6f5eac: add             x3, x3, HEAP, lsl #32
    // 0x6f5eb0: mov             x2, x0
    // 0x6f5eb4: stur            x3, [fp, #-0x90]
    // 0x6f5eb8: r1 = Function '<anonymous closure>':.
    //     0x6f5eb8: add             x1, PP, #0x19, lsl #12  ; [pp+0x191d0] AnonymousClosure: (0x6f6468), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x6f5ebc: ldr             x1, [x1, #0x1d0]
    // 0x6f5ec0: r0 = AllocateClosure()
    //     0x6f5ec0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f5ec4: ldur            x16, [fp, #-0x90]
    // 0x6f5ec8: stp             x0, x16, [SP]
    // 0x6f5ecc: ldur            x0, [fp, #-0x90]
    // 0x6f5ed0: ClosureCall
    //     0x6f5ed0: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6f5ed4: ldur            x2, [x0, #0x1f]
    //     0x6f5ed8: blr             x2
    // 0x6f5edc: ldur            x0, [fp, #-0x78]
    // 0x6f5ee0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6f5ee0: ldur            w1, [x0, #0x17]
    // 0x6f5ee4: DecompressPointer r1
    //     0x6f5ee4: add             x1, x1, HEAP, lsl #32
    // 0x6f5ee8: tbnz            w1, #4, #0x6f60e8
    // 0x6f5eec: ldur            x4, [fp, #-0x70]
    // 0x6f5ef0: ldur            x3, [fp, #-0x88]
    // 0x6f5ef4: LoadField: r1 = r0->field_f
    //     0x6f5ef4: ldur            w1, [x0, #0xf]
    // 0x6f5ef8: DecompressPointer r1
    //     0x6f5ef8: add             x1, x1, HEAP, lsl #32
    // 0x6f5efc: LoadField: r2 = r1->field_b
    //     0x6f5efc: ldur            w2, [x1, #0xb]
    // 0x6f5f00: DecompressPointer r2
    //     0x6f5f00: add             x2, x2, HEAP, lsl #32
    // 0x6f5f04: cmp             w2, NULL
    // 0x6f5f08: b.eq            #0x6f6448
    // 0x6f5f0c: LoadField: r1 = r2->field_13
    //     0x6f5f0c: ldur            w1, [x2, #0x13]
    // 0x6f5f10: DecompressPointer r1
    //     0x6f5f10: add             x1, x1, HEAP, lsl #32
    // 0x6f5f14: LoadField: r2 = r1->field_7
    //     0x6f5f14: ldur            w2, [x1, #7]
    // 0x6f5f18: DecompressPointer r2
    //     0x6f5f18: add             x2, x2, HEAP, lsl #32
    // 0x6f5f1c: mov             x1, x2
    // 0x6f5f20: r2 = "currencies"
    //     0x6f5f20: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x6f5f24: ldr             x2, [x2, #0xe18]
    // 0x6f5f28: r0 = collection()
    //     0x6f5f28: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6f5f2c: mov             x1, x0
    // 0x6f5f30: ldur            x0, [fp, #-0x78]
    // 0x6f5f34: LoadField: r2 = r0->field_13
    //     0x6f5f34: ldur            w2, [x0, #0x13]
    // 0x6f5f38: DecompressPointer r2
    //     0x6f5f38: add             x2, x2, HEAP, lsl #32
    // 0x6f5f3c: cmp             w2, NULL
    // 0x6f5f40: b.eq            #0x6f644c
    // 0x6f5f44: LoadField: r3 = r2->field_7
    //     0x6f5f44: ldur            w3, [x2, #7]
    // 0x6f5f48: DecompressPointer r3
    //     0x6f5f48: add             x3, x3, HEAP, lsl #32
    // 0x6f5f4c: str             x3, [SP]
    // 0x6f5f50: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x6f5f50: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x6f5f54: r0 = doc()
    //     0x6f5f54: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x6f5f58: r1 = Null
    //     0x6f5f58: mov             x1, NULL
    // 0x6f5f5c: r2 = 16
    //     0x6f5f5c: mov             x2, #0x10
    // 0x6f5f60: stur            x0, [fp, #-0x90]
    // 0x6f5f64: r0 = AllocateArray()
    //     0x6f5f64: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f5f68: stur            x0, [fp, #-0x98]
    // 0x6f5f6c: r16 = "name"
    //     0x6f5f6c: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6f5f70: StoreField: r0->field_f = r16
    //     0x6f5f70: stur            w16, [x0, #0xf]
    // 0x6f5f74: ldur            x2, [fp, #-0x70]
    // 0x6f5f78: LoadField: r1 = r2->field_27
    //     0x6f5f78: ldur            w1, [x2, #0x27]
    // 0x6f5f7c: DecompressPointer r1
    //     0x6f5f7c: add             x1, x1, HEAP, lsl #32
    // 0x6f5f80: LoadField: r2 = r1->field_7
    //     0x6f5f80: ldur            w2, [x1, #7]
    // 0x6f5f84: DecompressPointer r2
    //     0x6f5f84: add             x2, x2, HEAP, lsl #32
    // 0x6f5f88: mov             x1, x2
    // 0x6f5f8c: r0 = trim()
    //     0x6f5f8c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f5f90: ldur            x1, [fp, #-0x98]
    // 0x6f5f94: ArrayStore: r1[1] = r0  ; List_4
    //     0x6f5f94: add             x25, x1, #0x13
    //     0x6f5f98: str             w0, [x25]
    //     0x6f5f9c: tbz             w0, #0, #0x6f5fb8
    //     0x6f5fa0: ldurb           w16, [x1, #-1]
    //     0x6f5fa4: ldurb           w17, [x0, #-1]
    //     0x6f5fa8: and             x16, x17, x16, lsr #2
    //     0x6f5fac: tst             x16, HEAP, lsr #32
    //     0x6f5fb0: b.eq            #0x6f5fb8
    //     0x6f5fb4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f5fb8: ldur            x0, [fp, #-0x98]
    // 0x6f5fbc: r16 = "emoji"
    //     0x6f5fbc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x6f5fc0: ldr             x16, [x16, #0xe10]
    // 0x6f5fc4: ArrayStore: r0[0] = r16  ; List_4
    //     0x6f5fc4: stur            w16, [x0, #0x17]
    // 0x6f5fc8: ldur            x2, [fp, #-0x78]
    // 0x6f5fcc: LoadField: r1 = r2->field_1f
    //     0x6f5fcc: ldur            w1, [x2, #0x1f]
    // 0x6f5fd0: DecompressPointer r1
    //     0x6f5fd0: add             x1, x1, HEAP, lsl #32
    // 0x6f5fd4: LoadField: r3 = r1->field_27
    //     0x6f5fd4: ldur            w3, [x1, #0x27]
    // 0x6f5fd8: DecompressPointer r3
    //     0x6f5fd8: add             x3, x3, HEAP, lsl #32
    // 0x6f5fdc: LoadField: r1 = r3->field_7
    //     0x6f5fdc: ldur            w1, [x3, #7]
    // 0x6f5fe0: DecompressPointer r1
    //     0x6f5fe0: add             x1, x1, HEAP, lsl #32
    // 0x6f5fe4: r0 = trim()
    //     0x6f5fe4: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f5fe8: ldur            x1, [fp, #-0x98]
    // 0x6f5fec: ArrayStore: r1[3] = r0  ; List_4
    //     0x6f5fec: add             x25, x1, #0x1b
    //     0x6f5ff0: str             w0, [x25]
    //     0x6f5ff4: tbz             w0, #0, #0x6f6010
    //     0x6f5ff8: ldurb           w16, [x1, #-1]
    //     0x6f5ffc: ldurb           w17, [x0, #-1]
    //     0x6f6000: and             x16, x17, x16, lsr #2
    //     0x6f6004: tst             x16, HEAP, lsr #32
    //     0x6f6008: b.eq            #0x6f6010
    //     0x6f600c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f6010: ldur            x0, [fp, #-0x98]
    // 0x6f6014: r16 = "value"
    //     0x6f6014: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x6f6018: StoreField: r0->field_1f = r16
    //     0x6f6018: stur            w16, [x0, #0x1f]
    // 0x6f601c: ldur            x3, [fp, #-0x88]
    // 0x6f6020: LoadField: r1 = r3->field_27
    //     0x6f6020: ldur            w1, [x3, #0x27]
    // 0x6f6024: DecompressPointer r1
    //     0x6f6024: add             x1, x1, HEAP, lsl #32
    // 0x6f6028: LoadField: r2 = r1->field_7
    //     0x6f6028: ldur            w2, [x1, #7]
    // 0x6f602c: DecompressPointer r2
    //     0x6f602c: add             x2, x2, HEAP, lsl #32
    // 0x6f6030: mov             x1, x2
    // 0x6f6034: r0 = _parse()
    //     0x6f6034: bl              #0x4b3d18  ; [dart:core] double::_parse
    // 0x6f6038: cmp             w0, NULL
    // 0x6f603c: b.ne            #0x6f6048
    // 0x6f6040: r3 = 0
    //     0x6f6040: mov             x3, #0
    // 0x6f6044: b               #0x6f604c
    // 0x6f6048: mov             x3, x0
    // 0x6f604c: ldur            x2, [fp, #-0x98]
    // 0x6f6050: mov             x1, x2
    // 0x6f6054: mov             x0, x3
    // 0x6f6058: stur            x3, [fp, #-0xa0]
    // 0x6f605c: ArrayStore: r1[5] = r0  ; List_4
    //     0x6f605c: add             x25, x1, #0x23
    //     0x6f6060: str             w0, [x25]
    //     0x6f6064: tbz             w0, #0, #0x6f6080
    //     0x6f6068: ldurb           w16, [x1, #-1]
    //     0x6f606c: ldurb           w17, [x0, #-1]
    //     0x6f6070: and             x16, x17, x16, lsr #2
    //     0x6f6074: tst             x16, HEAP, lsr #32
    //     0x6f6078: b.eq            #0x6f6080
    //     0x6f607c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f6080: r16 = "updated_at"
    //     0x6f6080: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6f6084: ldr             x16, [x16, #0x58]
    // 0x6f6088: StoreField: r2->field_27 = r16
    //     0x6f6088: stur            w16, [x2, #0x27]
    // 0x6f608c: r0 = serverTimestamp()
    //     0x6f608c: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f6090: ldur            x1, [fp, #-0x98]
    // 0x6f6094: ArrayStore: r1[7] = r0  ; List_4
    //     0x6f6094: add             x25, x1, #0x2b
    //     0x6f6098: str             w0, [x25]
    //     0x6f609c: tbz             w0, #0, #0x6f60b8
    //     0x6f60a0: ldurb           w16, [x1, #-1]
    //     0x6f60a4: ldurb           w17, [x0, #-1]
    //     0x6f60a8: and             x16, x17, x16, lsr #2
    //     0x6f60ac: tst             x16, HEAP, lsr #32
    //     0x6f60b0: b.eq            #0x6f60b8
    //     0x6f60b4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f60b8: r16 = <Object, Object?>
    //     0x6f60b8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14828] TypeArguments: <Object, Object?>
    //     0x6f60bc: ldr             x16, [x16, #0x828]
    // 0x6f60c0: ldur            lr, [fp, #-0x98]
    // 0x6f60c4: stp             lr, x16, [SP]
    // 0x6f60c8: r0 = Map._fromLiteral()
    //     0x6f60c8: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f60cc: ldur            x1, [fp, #-0x90]
    // 0x6f60d0: mov             x2, x0
    // 0x6f60d4: r0 = update()
    //     0x6f60d4: bl              #0x6d3e10  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::update
    // 0x6f60d8: mov             x1, x0
    // 0x6f60dc: stur            x1, [fp, #-0x90]
    // 0x6f60e0: r0 = Await()
    //     0x6f60e0: bl              #0x3dd188  ; AwaitStub
    // 0x6f60e4: b               #0x6f6344
    // 0x6f60e8: ldur            x2, [fp, #-0x70]
    // 0x6f60ec: ldur            x3, [fp, #-0x88]
    // 0x6f60f0: LoadField: r1 = r0->field_f
    //     0x6f60f0: ldur            w1, [x0, #0xf]
    // 0x6f60f4: DecompressPointer r1
    //     0x6f60f4: add             x1, x1, HEAP, lsl #32
    // 0x6f60f8: r0 = textAlign()
    //     0x6f60f8: bl              #0x582638  ; [package:flutter/src/material/input_decorator.dart] _InputDecoratorState::textAlign
    // 0x6f60fc: LoadField: r1 = r0->field_7
    //     0x6f60fc: ldur            w1, [x0, #7]
    // 0x6f6100: DecompressPointer r1
    //     0x6f6100: add             x1, x1, HEAP, lsl #32
    // 0x6f6104: r2 = "currencies"
    //     0x6f6104: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x6f6108: ldr             x2, [x2, #0xe18]
    // 0x6f610c: r0 = collection()
    //     0x6f610c: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x6f6110: r1 = Null
    //     0x6f6110: mov             x1, NULL
    // 0x6f6114: r2 = 24
    //     0x6f6114: mov             x2, #0x18
    // 0x6f6118: stur            x0, [fp, #-0x90]
    // 0x6f611c: r0 = AllocateArray()
    //     0x6f611c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f6120: stur            x0, [fp, #-0x98]
    // 0x6f6124: r16 = "name"
    //     0x6f6124: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6f6128: StoreField: r0->field_f = r16
    //     0x6f6128: stur            w16, [x0, #0xf]
    // 0x6f612c: ldur            x1, [fp, #-0x70]
    // 0x6f6130: LoadField: r2 = r1->field_27
    //     0x6f6130: ldur            w2, [x1, #0x27]
    // 0x6f6134: DecompressPointer r2
    //     0x6f6134: add             x2, x2, HEAP, lsl #32
    // 0x6f6138: LoadField: r1 = r2->field_7
    //     0x6f6138: ldur            w1, [x2, #7]
    // 0x6f613c: DecompressPointer r1
    //     0x6f613c: add             x1, x1, HEAP, lsl #32
    // 0x6f6140: r0 = trim()
    //     0x6f6140: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f6144: ldur            x1, [fp, #-0x98]
    // 0x6f6148: ArrayStore: r1[1] = r0  ; List_4
    //     0x6f6148: add             x25, x1, #0x13
    //     0x6f614c: str             w0, [x25]
    //     0x6f6150: tbz             w0, #0, #0x6f616c
    //     0x6f6154: ldurb           w16, [x1, #-1]
    //     0x6f6158: ldurb           w17, [x0, #-1]
    //     0x6f615c: and             x16, x17, x16, lsr #2
    //     0x6f6160: tst             x16, HEAP, lsr #32
    //     0x6f6164: b.eq            #0x6f616c
    //     0x6f6168: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f616c: ldur            x0, [fp, #-0x98]
    // 0x6f6170: r16 = "emoji"
    //     0x6f6170: add             x16, PP, #0x18, lsl #12  ; [pp+0x18e10] "emoji"
    //     0x6f6174: ldr             x16, [x16, #0xe10]
    // 0x6f6178: ArrayStore: r0[0] = r16  ; List_4
    //     0x6f6178: stur            w16, [x0, #0x17]
    // 0x6f617c: ldur            x2, [fp, #-0x78]
    // 0x6f6180: LoadField: r1 = r2->field_1f
    //     0x6f6180: ldur            w1, [x2, #0x1f]
    // 0x6f6184: DecompressPointer r1
    //     0x6f6184: add             x1, x1, HEAP, lsl #32
    // 0x6f6188: LoadField: r3 = r1->field_27
    //     0x6f6188: ldur            w3, [x1, #0x27]
    // 0x6f618c: DecompressPointer r3
    //     0x6f618c: add             x3, x3, HEAP, lsl #32
    // 0x6f6190: LoadField: r1 = r3->field_7
    //     0x6f6190: ldur            w1, [x3, #7]
    // 0x6f6194: DecompressPointer r1
    //     0x6f6194: add             x1, x1, HEAP, lsl #32
    // 0x6f6198: r0 = trim()
    //     0x6f6198: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6f619c: ldur            x1, [fp, #-0x98]
    // 0x6f61a0: ArrayStore: r1[3] = r0  ; List_4
    //     0x6f61a0: add             x25, x1, #0x1b
    //     0x6f61a4: str             w0, [x25]
    //     0x6f61a8: tbz             w0, #0, #0x6f61c4
    //     0x6f61ac: ldurb           w16, [x1, #-1]
    //     0x6f61b0: ldurb           w17, [x0, #-1]
    //     0x6f61b4: and             x16, x17, x16, lsr #2
    //     0x6f61b8: tst             x16, HEAP, lsr #32
    //     0x6f61bc: b.eq            #0x6f61c4
    //     0x6f61c0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f61c4: ldur            x0, [fp, #-0x98]
    // 0x6f61c8: r16 = "value"
    //     0x6f61c8: ldr             x16, [PP, #0x4f60]  ; [pp+0x4f60] "value"
    // 0x6f61cc: StoreField: r0->field_1f = r16
    //     0x6f61cc: stur            w16, [x0, #0x1f]
    // 0x6f61d0: ldur            x1, [fp, #-0x88]
    // 0x6f61d4: LoadField: r2 = r1->field_27
    //     0x6f61d4: ldur            w2, [x1, #0x27]
    // 0x6f61d8: DecompressPointer r2
    //     0x6f61d8: add             x2, x2, HEAP, lsl #32
    // 0x6f61dc: LoadField: r1 = r2->field_7
    //     0x6f61dc: ldur            w1, [x2, #7]
    // 0x6f61e0: DecompressPointer r1
    //     0x6f61e0: add             x1, x1, HEAP, lsl #32
    // 0x6f61e4: r0 = _parse()
    //     0x6f61e4: bl              #0x4b3d18  ; [dart:core] double::_parse
    // 0x6f61e8: cmp             w0, NULL
    // 0x6f61ec: b.ne            #0x6f61f8
    // 0x6f61f0: d0 = 0.000000
    //     0x6f61f0: eor             v0.16b, v0.16b, v0.16b
    // 0x6f61f4: b               #0x6f61fc
    // 0x6f61f8: LoadField: d0 = r0->field_7
    //     0x6f61f8: ldur            d0, [x0, #7]
    // 0x6f61fc: ldur            x3, [fp, #-0x78]
    // 0x6f6200: ldur            x2, [fp, #-0x98]
    // 0x6f6204: stur            d0, [fp, #-0xa8]
    // 0x6f6208: r0 = inline_Allocate_Double()
    //     0x6f6208: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x6f620c: add             x0, x0, #0x10
    //     0x6f6210: cmp             x1, x0
    //     0x6f6214: b.ls            #0x6f6450
    //     0x6f6218: str             x0, [THR, #0x60]  ; THR::top
    //     0x6f621c: sub             x0, x0, #0xf
    //     0x6f6220: mov             x1, #0xe15c
    //     0x6f6224: movk            x1, #3, lsl #16
    //     0x6f6228: stur            x1, [x0, #-1]
    // 0x6f622c: StoreField: r0->field_7 = d0
    //     0x6f622c: stur            d0, [x0, #7]
    // 0x6f6230: mov             x1, x2
    // 0x6f6234: ArrayStore: r1[5] = r0  ; List_4
    //     0x6f6234: add             x25, x1, #0x23
    //     0x6f6238: str             w0, [x25]
    //     0x6f623c: tbz             w0, #0, #0x6f6258
    //     0x6f6240: ldurb           w16, [x1, #-1]
    //     0x6f6244: ldurb           w17, [x0, #-1]
    //     0x6f6248: and             x16, x17, x16, lsr #2
    //     0x6f624c: tst             x16, HEAP, lsr #32
    //     0x6f6250: b.eq            #0x6f6258
    //     0x6f6254: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f6258: r16 = "agency_id"
    //     0x6f6258: add             x16, PP, #0x14, lsl #12  ; [pp+0x14040] "agency_id"
    //     0x6f625c: ldr             x16, [x16, #0x40]
    // 0x6f6260: StoreField: r2->field_27 = r16
    //     0x6f6260: stur            w16, [x2, #0x27]
    // 0x6f6264: LoadField: r1 = r3->field_f
    //     0x6f6264: ldur            w1, [x3, #0xf]
    // 0x6f6268: DecompressPointer r1
    //     0x6f6268: add             x1, x1, HEAP, lsl #32
    // 0x6f626c: r0 = onChanged()
    //     0x6f626c: bl              #0x582f8c  ; [package:flutter/src/material/checkbox.dart] _CheckboxState::onChanged
    // 0x6f6270: LoadField: r1 = r0->field_7
    //     0x6f6270: ldur            w1, [x0, #7]
    // 0x6f6274: DecompressPointer r1
    //     0x6f6274: add             x1, x1, HEAP, lsl #32
    // 0x6f6278: mov             x0, x1
    // 0x6f627c: ldur            x1, [fp, #-0x98]
    // 0x6f6280: ArrayStore: r1[7] = r0  ; List_4
    //     0x6f6280: add             x25, x1, #0x2b
    //     0x6f6284: str             w0, [x25]
    //     0x6f6288: tbz             w0, #0, #0x6f62a4
    //     0x6f628c: ldurb           w16, [x1, #-1]
    //     0x6f6290: ldurb           w17, [x0, #-1]
    //     0x6f6294: and             x16, x17, x16, lsr #2
    //     0x6f6298: tst             x16, HEAP, lsr #32
    //     0x6f629c: b.eq            #0x6f62a4
    //     0x6f62a0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f62a4: ldur            x1, [fp, #-0x98]
    // 0x6f62a8: r16 = "created_at"
    //     0x6f62a8: add             x16, PP, #0x13, lsl #12  ; [pp+0x13c00] "created_at"
    //     0x6f62ac: ldr             x16, [x16, #0xc00]
    // 0x6f62b0: StoreField: r1->field_2f = r16
    //     0x6f62b0: stur            w16, [x1, #0x2f]
    // 0x6f62b4: r0 = serverTimestamp()
    //     0x6f62b4: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f62b8: ldur            x1, [fp, #-0x98]
    // 0x6f62bc: ArrayStore: r1[9] = r0  ; List_4
    //     0x6f62bc: add             x25, x1, #0x33
    //     0x6f62c0: str             w0, [x25]
    //     0x6f62c4: tbz             w0, #0, #0x6f62e0
    //     0x6f62c8: ldurb           w16, [x1, #-1]
    //     0x6f62cc: ldurb           w17, [x0, #-1]
    //     0x6f62d0: and             x16, x17, x16, lsr #2
    //     0x6f62d4: tst             x16, HEAP, lsr #32
    //     0x6f62d8: b.eq            #0x6f62e0
    //     0x6f62dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f62e0: ldur            x1, [fp, #-0x98]
    // 0x6f62e4: r16 = "updated_at"
    //     0x6f62e4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14058] "updated_at"
    //     0x6f62e8: ldr             x16, [x16, #0x58]
    // 0x6f62ec: StoreField: r1->field_37 = r16
    //     0x6f62ec: stur            w16, [x1, #0x37]
    // 0x6f62f0: r0 = serverTimestamp()
    //     0x6f62f0: bl              #0x5dd86c  ; [package:cloud_firestore/cloud_firestore.dart] FieldValue::serverTimestamp
    // 0x6f62f4: ldur            x1, [fp, #-0x98]
    // 0x6f62f8: ArrayStore: r1[11] = r0  ; List_4
    //     0x6f62f8: add             x25, x1, #0x3b
    //     0x6f62fc: str             w0, [x25]
    //     0x6f6300: tbz             w0, #0, #0x6f631c
    //     0x6f6304: ldurb           w16, [x1, #-1]
    //     0x6f6308: ldurb           w17, [x0, #-1]
    //     0x6f630c: and             x16, x17, x16, lsr #2
    //     0x6f6310: tst             x16, HEAP, lsr #32
    //     0x6f6314: b.eq            #0x6f631c
    //     0x6f6318: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6f631c: r16 = <String, Object>
    //     0x6f631c: ldr             x16, [PP, #0x120]  ; [pp+0x120] TypeArguments: <String, Object>
    // 0x6f6320: ldur            lr, [fp, #-0x98]
    // 0x6f6324: stp             lr, x16, [SP]
    // 0x6f6328: r0 = Map._fromLiteral()
    //     0x6f6328: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6f632c: ldur            x1, [fp, #-0x90]
    // 0x6f6330: mov             x2, x0
    // 0x6f6334: r0 = add()
    //     0x6f6334: bl              #0x6f584c  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::add
    // 0x6f6338: mov             x1, x0
    // 0x6f633c: stur            x1, [fp, #-0x70]
    // 0x6f6340: r0 = Await()
    //     0x6f6340: bl              #0x3dd188  ; AwaitStub
    // 0x6f6344: ldur            x2, [fp, #-0x80]
    // 0x6f6348: ldur            x0, [fp, #-0x78]
    // 0x6f634c: LoadField: r1 = r0->field_f
    //     0x6f634c: ldur            w1, [x0, #0xf]
    // 0x6f6350: DecompressPointer r1
    //     0x6f6350: add             x1, x1, HEAP, lsl #32
    // 0x6f6354: r0 = onDataChanged()
    //     0x6f6354: bl              #0x617b5c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::onDataChanged
    // 0x6f6358: stur            x0, [fp, #-0x78]
    // 0x6f635c: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6f635c: ldur            w2, [x0, #0x17]
    // 0x6f6360: DecompressPointer r2
    //     0x6f6360: add             x2, x2, HEAP, lsl #32
    // 0x6f6364: mov             x1, x2
    // 0x6f6368: stur            x2, [fp, #-0x70]
    // 0x6f636c: r0 = _loadAgencyData()
    //     0x6f636c: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x6f6370: ldur            x0, [fp, #-0x80]
    // 0x6f6374: LoadField: r1 = r0->field_f
    //     0x6f6374: ldur            w1, [x0, #0xf]
    // 0x6f6378: DecompressPointer r1
    //     0x6f6378: add             x1, x1, HEAP, lsl #32
    // 0x6f637c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6f637c: ldur            w0, [x1, #0x17]
    // 0x6f6380: DecompressPointer r0
    //     0x6f6380: add             x0, x0, HEAP, lsl #32
    // 0x6f6384: cmp             w0, NULL
    // 0x6f6388: b.eq            #0x6f6438
    // 0x6f638c: r16 = <Object?>
    //     0x6f638c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6f6390: stp             x1, x16, [SP]
    // 0x6f6394: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6f6394: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6f6398: r0 = pop()
    //     0x6f6398: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6f639c: b               #0x6f6438
    // 0x6f63a0: sub             SP, fp, #0xb8
    // 0x6f63a4: ldur            x2, [fp, #-0x68]
    // 0x6f63a8: stur            x0, [fp, #-0x70]
    // 0x6f63ac: LoadField: r1 = r2->field_f
    //     0x6f63ac: ldur            w1, [x2, #0xf]
    // 0x6f63b0: DecompressPointer r1
    //     0x6f63b0: add             x1, x1, HEAP, lsl #32
    // 0x6f63b4: r0 = of()
    //     0x6f63b4: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x6f63b8: r1 = Null
    //     0x6f63b8: mov             x1, NULL
    // 0x6f63bc: r2 = 4
    //     0x6f63bc: mov             x2, #4
    // 0x6f63c0: stur            x0, [fp, #-0x68]
    // 0x6f63c4: r0 = AllocateArray()
    //     0x6f63c4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6f63c8: r16 = "Hata: "
    //     0x6f63c8: add             x16, PP, #0x19, lsl #12  ; [pp+0x191d8] "Hata: "
    //     0x6f63cc: ldr             x16, [x16, #0x1d8]
    // 0x6f63d0: StoreField: r0->field_f = r16
    //     0x6f63d0: stur            w16, [x0, #0xf]
    // 0x6f63d4: ldur            x1, [fp, #-0x70]
    // 0x6f63d8: StoreField: r0->field_13 = r1
    //     0x6f63d8: stur            w1, [x0, #0x13]
    // 0x6f63dc: str             x0, [SP]
    // 0x6f63e0: r0 = _interpolate()
    //     0x6f63e0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6f63e4: stur            x0, [fp, #-0x70]
    // 0x6f63e8: r0 = Text()
    //     0x6f63e8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6f63ec: mov             x1, x0
    // 0x6f63f0: ldur            x0, [fp, #-0x70]
    // 0x6f63f4: stur            x1, [fp, #-0x78]
    // 0x6f63f8: StoreField: r1->field_b = r0
    //     0x6f63f8: stur            w0, [x1, #0xb]
    // 0x6f63fc: r0 = SnackBar()
    //     0x6f63fc: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x6f6400: mov             x1, x0
    // 0x6f6404: ldur            x0, [fp, #-0x78]
    // 0x6f6408: StoreField: r1->field_b = r0
    //     0x6f6408: stur            w0, [x1, #0xb]
    // 0x6f640c: r0 = Instance_Duration
    //     0x6f640c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x6f6410: ldr             x0, [x0, #0xf78]
    // 0x6f6414: StoreField: r1->field_3f = r0
    //     0x6f6414: stur            w0, [x1, #0x3f]
    // 0x6f6418: r0 = Instance_Clip
    //     0x6f6418: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6f641c: ldr             x0, [x0, #0x2d8]
    // 0x6f6420: StoreField: r1->field_53 = r0
    //     0x6f6420: stur            w0, [x1, #0x53]
    // 0x6f6424: r0 = false
    //     0x6f6424: add             x0, NULL, #0x30  ; false
    // 0x6f6428: StoreField: r1->field_43 = r0
    //     0x6f6428: stur            w0, [x1, #0x43]
    // 0x6f642c: mov             x2, x1
    // 0x6f6430: ldur            x1, [fp, #-0x68]
    // 0x6f6434: r0 = showSnackBar()
    //     0x6f6434: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6f6438: r0 = Null
    //     0x6f6438: mov             x0, NULL
    // 0x6f643c: r0 = ReturnAsyncNotFuture()
    //     0x6f643c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6f6440: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6440: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f6444: b               #0x6f5dfc
    // 0x6f6448: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6f6448: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6f644c: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6f644c: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
    // 0x6f6450: SaveReg d0
    //     0x6f6450: str             q0, [SP, #-0x10]!
    // 0x6f6454: stp             x2, x3, [SP, #-0x10]!
    // 0x6f6458: r0 = AllocateDouble()
    //     0x6f6458: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6f645c: ldp             x2, x3, [SP], #0x10
    // 0x6f6460: RestoreReg d0
    //     0x6f6460: ldr             q0, [SP], #0x10
    // 0x6f6464: b               #0x6f622c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6f6468, size: 0x28
    // 0x6f6468: r0 = true
    //     0x6f6468: add             x0, NULL, #0x20  ; true
    // 0x6f646c: ldr             x1, [SP]
    // 0x6f6470: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6f6470: ldur            w2, [x1, #0x17]
    // 0x6f6474: DecompressPointer r2
    //     0x6f6474: add             x2, x2, HEAP, lsl #32
    // 0x6f6478: LoadField: r1 = r2->field_b
    //     0x6f6478: ldur            w1, [x2, #0xb]
    // 0x6f647c: DecompressPointer r1
    //     0x6f647c: add             x1, x1, HEAP, lsl #32
    // 0x6f6480: LoadField: r2 = r1->field_b
    //     0x6f6480: ldur            w2, [x1, #0xb]
    // 0x6f6484: DecompressPointer r2
    //     0x6f6484: add             x2, x2, HEAP, lsl #32
    // 0x6f6488: StoreField: r2->field_27 = r0
    //     0x6f6488: stur            w0, [x2, #0x27]
    // 0x6f648c: ret
    //     0x6f648c: ret             
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6f6490, size: 0x64
    // 0x6f6490: EnterFrame
    //     0x6f6490: stp             fp, lr, [SP, #-0x10]!
    //     0x6f6494: mov             fp, SP
    // 0x6f6498: AllocStack(0x8)
    //     0x6f6498: sub             SP, SP, #8
    // 0x6f649c: SetupParameters([dynamic _ /* r0 */])
    //     0x6f649c: ldr             x0, [fp, #0x18]
    //     0x6f64a0: ldur            w1, [x0, #0x17]
    //     0x6f64a4: add             x1, x1, HEAP, lsl #32
    //     0x6f64a8: stur            x1, [fp, #-8]
    // 0x6f64ac: r1 = 1
    //     0x6f64ac: mov             x1, #1
    // 0x6f64b0: r0 = AllocateContext()
    //     0x6f64b0: bl              #0x927010  ; AllocateContextStub
    // 0x6f64b4: mov             x1, x0
    // 0x6f64b8: ldur            x0, [fp, #-8]
    // 0x6f64bc: StoreField: r1->field_b = r0
    //     0x6f64bc: stur            w0, [x1, #0xb]
    // 0x6f64c0: ldr             x0, [fp, #0x10]
    // 0x6f64c4: StoreField: r1->field_f = r0
    //     0x6f64c4: stur            w0, [x1, #0xf]
    // 0x6f64c8: mov             x2, x1
    // 0x6f64cc: r1 = Function '<anonymous closure>':.
    //     0x6f64cc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19140] AnonymousClosure: (0x6f5964), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x6f64d0: ldr             x1, [x1, #0x140]
    // 0x6f64d4: r0 = AllocateClosure()
    //     0x6f64d4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f64d8: stur            x0, [fp, #-8]
    // 0x6f64dc: r0 = StatefulBuilder()
    //     0x6f64dc: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x6f64e0: ldur            x1, [fp, #-8]
    // 0x6f64e4: StoreField: r0->field_b = r1
    //     0x6f64e4: stur            w1, [x0, #0xb]
    // 0x6f64e8: LeaveFrame
    //     0x6f64e8: mov             SP, fp
    //     0x6f64ec: ldp             fp, lr, [SP], #0x10
    // 0x6f64f0: ret
    //     0x6f64f0: ret             
  }
  _ showCurrencyDialog(/* No info */) {
    // ** addr: 0x6f64f4, size: 0x24c
    // 0x6f64f4: EnterFrame
    //     0x6f64f4: stp             fp, lr, [SP, #-0x10]!
    //     0x6f64f8: mov             fp, SP
    // 0x6f64fc: AllocStack(0x38)
    //     0x6f64fc: sub             SP, SP, #0x38
    // 0x6f6500: SetupParameters(CurrenciesTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x6f6500: stur            x1, [fp, #-8]
    //     0x6f6504: stur            x2, [fp, #-0x10]
    //     0x6f6508: stur            x3, [fp, #-0x18]
    // 0x6f650c: CheckStackOverflow
    //     0x6f650c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f6510: cmp             SP, x16
    //     0x6f6514: b.ls            #0x6f6720
    // 0x6f6518: r1 = 7
    //     0x6f6518: mov             x1, #7
    // 0x6f651c: r0 = AllocateContext()
    //     0x6f651c: bl              #0x927010  ; AllocateContextStub
    // 0x6f6520: mov             x2, x0
    // 0x6f6524: ldur            x0, [fp, #-8]
    // 0x6f6528: stur            x2, [fp, #-0x20]
    // 0x6f652c: StoreField: r2->field_f = r0
    //     0x6f652c: stur            w0, [x2, #0xf]
    // 0x6f6530: ldur            x0, [fp, #-0x18]
    // 0x6f6534: StoreField: r2->field_13 = r0
    //     0x6f6534: stur            w0, [x2, #0x13]
    // 0x6f6538: cmp             w0, NULL
    // 0x6f653c: r16 = true
    //     0x6f653c: add             x16, NULL, #0x20  ; true
    // 0x6f6540: r17 = false
    //     0x6f6540: add             x17, NULL, #0x30  ; false
    // 0x6f6544: csel            x1, x16, x17, ne
    // 0x6f6548: ArrayStore: r2[0] = r1  ; List_4
    //     0x6f6548: stur            w1, [x2, #0x17]
    // 0x6f654c: cmp             w0, NULL
    // 0x6f6550: b.ne            #0x6f655c
    // 0x6f6554: r0 = Null
    //     0x6f6554: mov             x0, NULL
    // 0x6f6558: b               #0x6f6568
    // 0x6f655c: LoadField: r1 = r0->field_f
    //     0x6f655c: ldur            w1, [x0, #0xf]
    // 0x6f6560: DecompressPointer r1
    //     0x6f6560: add             x1, x1, HEAP, lsl #32
    // 0x6f6564: mov             x0, x1
    // 0x6f6568: cmp             w0, NULL
    // 0x6f656c: b.ne            #0x6f6574
    // 0x6f6570: r0 = ""
    //     0x6f6570: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6f6574: stur            x0, [fp, #-8]
    // 0x6f6578: r1 = <TextEditingValue>
    //     0x6f6578: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6f657c: r0 = TextEditingController()
    //     0x6f657c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6f6580: stur            x0, [fp, #-0x18]
    // 0x6f6584: ldur            x16, [fp, #-8]
    // 0x6f6588: str             x16, [SP]
    // 0x6f658c: mov             x1, x0
    // 0x6f6590: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6f6590: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6f6594: ldr             x4, [x4, #0xa20]
    // 0x6f6598: r0 = TextEditingController()
    //     0x6f6598: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6f659c: ldur            x0, [fp, #-0x18]
    // 0x6f65a0: ldur            x2, [fp, #-0x20]
    // 0x6f65a4: StoreField: r2->field_1b = r0
    //     0x6f65a4: stur            w0, [x2, #0x1b]
    //     0x6f65a8: ldurb           w16, [x2, #-1]
    //     0x6f65ac: ldurb           w17, [x0, #-1]
    //     0x6f65b0: and             x16, x17, x16, lsr #2
    //     0x6f65b4: tst             x16, HEAP, lsr #32
    //     0x6f65b8: b.eq            #0x6f65c0
    //     0x6f65bc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f65c0: LoadField: r0 = r2->field_13
    //     0x6f65c0: ldur            w0, [x2, #0x13]
    // 0x6f65c4: DecompressPointer r0
    //     0x6f65c4: add             x0, x0, HEAP, lsl #32
    // 0x6f65c8: cmp             w0, NULL
    // 0x6f65cc: b.ne            #0x6f65d8
    // 0x6f65d0: r0 = Null
    //     0x6f65d0: mov             x0, NULL
    // 0x6f65d4: b               #0x6f65e4
    // 0x6f65d8: LoadField: r1 = r0->field_b
    //     0x6f65d8: ldur            w1, [x0, #0xb]
    // 0x6f65dc: DecompressPointer r1
    //     0x6f65dc: add             x1, x1, HEAP, lsl #32
    // 0x6f65e0: mov             x0, x1
    // 0x6f65e4: cmp             w0, NULL
    // 0x6f65e8: b.ne            #0x6f65f4
    // 0x6f65ec: r0 = "💵"
    //     0x6f65ec: add             x0, PP, #0x18, lsl #12  ; [pp+0x18dc0] "💵"
    //     0x6f65f0: ldr             x0, [x0, #0xdc0]
    // 0x6f65f4: stur            x0, [fp, #-8]
    // 0x6f65f8: r1 = <TextEditingValue>
    //     0x6f65f8: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6f65fc: r0 = TextEditingController()
    //     0x6f65fc: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6f6600: stur            x0, [fp, #-0x18]
    // 0x6f6604: ldur            x16, [fp, #-8]
    // 0x6f6608: str             x16, [SP]
    // 0x6f660c: mov             x1, x0
    // 0x6f6610: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6f6610: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6f6614: ldr             x4, [x4, #0xa20]
    // 0x6f6618: r0 = TextEditingController()
    //     0x6f6618: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6f661c: ldur            x0, [fp, #-0x18]
    // 0x6f6620: ldur            x2, [fp, #-0x20]
    // 0x6f6624: StoreField: r2->field_1f = r0
    //     0x6f6624: stur            w0, [x2, #0x1f]
    //     0x6f6628: ldurb           w16, [x2, #-1]
    //     0x6f662c: ldurb           w17, [x0, #-1]
    //     0x6f6630: and             x16, x17, x16, lsr #2
    //     0x6f6634: tst             x16, HEAP, lsr #32
    //     0x6f6638: b.eq            #0x6f6640
    //     0x6f663c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f6640: LoadField: r0 = r2->field_13
    //     0x6f6640: ldur            w0, [x2, #0x13]
    // 0x6f6644: DecompressPointer r0
    //     0x6f6644: add             x0, x0, HEAP, lsl #32
    // 0x6f6648: cmp             w0, NULL
    // 0x6f664c: b.ne            #0x6f6658
    // 0x6f6650: r0 = Null
    //     0x6f6650: mov             x0, NULL
    // 0x6f6654: b               #0x6f668c
    // 0x6f6658: LoadField: d0 = r0->field_13
    //     0x6f6658: ldur            d0, [x0, #0x13]
    // 0x6f665c: r0 = inline_Allocate_Double()
    //     0x6f665c: ldp             x0, x1, [THR, #0x60]  ; THR::top
    //     0x6f6660: add             x0, x0, #0x10
    //     0x6f6664: cmp             x1, x0
    //     0x6f6668: b.ls            #0x6f6728
    //     0x6f666c: str             x0, [THR, #0x60]  ; THR::top
    //     0x6f6670: sub             x0, x0, #0xf
    //     0x6f6674: mov             x1, #0xe15c
    //     0x6f6678: movk            x1, #3, lsl #16
    //     0x6f667c: stur            x1, [x0, #-1]
    // 0x6f6680: StoreField: r0->field_7 = d0
    //     0x6f6680: stur            d0, [x0, #7]
    // 0x6f6684: str             x0, [SP]
    // 0x6f6688: r0 = toString()
    //     0x6f6688: bl              #0x7b549c  ; [dart:core] _Double::toString
    // 0x6f668c: cmp             w0, NULL
    // 0x6f6690: b.ne            #0x6f6698
    // 0x6f6694: r0 = ""
    //     0x6f6694: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6f6698: ldur            x2, [fp, #-0x20]
    // 0x6f669c: stur            x0, [fp, #-8]
    // 0x6f66a0: r1 = <TextEditingValue>
    //     0x6f66a0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6f66a4: r0 = TextEditingController()
    //     0x6f66a4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6f66a8: stur            x0, [fp, #-0x18]
    // 0x6f66ac: ldur            x16, [fp, #-8]
    // 0x6f66b0: str             x16, [SP]
    // 0x6f66b4: mov             x1, x0
    // 0x6f66b8: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6f66b8: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6f66bc: ldr             x4, [x4, #0xa20]
    // 0x6f66c0: r0 = TextEditingController()
    //     0x6f66c0: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6f66c4: ldur            x0, [fp, #-0x18]
    // 0x6f66c8: ldur            x2, [fp, #-0x20]
    // 0x6f66cc: StoreField: r2->field_23 = r0
    //     0x6f66cc: stur            w0, [x2, #0x23]
    //     0x6f66d0: ldurb           w16, [x2, #-1]
    //     0x6f66d4: ldurb           w17, [x0, #-1]
    //     0x6f66d8: and             x16, x17, x16, lsr #2
    //     0x6f66dc: tst             x16, HEAP, lsr #32
    //     0x6f66e0: b.eq            #0x6f66e8
    //     0x6f66e4: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6f66e8: r0 = false
    //     0x6f66e8: add             x0, NULL, #0x30  ; false
    // 0x6f66ec: StoreField: r2->field_27 = r0
    //     0x6f66ec: stur            w0, [x2, #0x27]
    // 0x6f66f0: r1 = Function '<anonymous closure>':.
    //     0x6f66f0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19138] AnonymousClosure: (0x6f6490), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x6f66f4: ldr             x1, [x1, #0x138]
    // 0x6f66f8: r0 = AllocateClosure()
    //     0x6f66f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f66fc: stp             x0, NULL, [SP, #8]
    // 0x6f6700: ldur            x16, [fp, #-0x10]
    // 0x6f6704: str             x16, [SP]
    // 0x6f6708: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f6708: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f670c: r0 = showDialog()
    //     0x6f670c: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6f6710: r0 = Null
    //     0x6f6710: mov             x0, NULL
    // 0x6f6714: LeaveFrame
    //     0x6f6714: mov             SP, fp
    //     0x6f6718: ldp             fp, lr, [SP], #0x10
    // 0x6f671c: ret
    //     0x6f671c: ret             
    // 0x6f6720: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f6720: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f6724: b               #0x6f6518
    // 0x6f6728: SaveReg d0
    //     0x6f6728: str             q0, [SP, #-0x10]!
    // 0x6f672c: SaveReg r2
    //     0x6f672c: str             x2, [SP, #-8]!
    // 0x6f6730: r0 = AllocateDouble()
    //     0x6f6730: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x6f6734: RestoreReg r2
    //     0x6f6734: ldr             x2, [SP], #8
    // 0x6f6738: RestoreReg d0
    //     0x6f6738: ldr             q0, [SP], #0x10
    // 0x6f673c: b               #0x6f6680
  }
  _ build(/* No info */) {
    // ** addr: 0x743770, size: 0x13c
    // 0x743770: EnterFrame
    //     0x743770: stp             fp, lr, [SP, #-0x10]!
    //     0x743774: mov             fp, SP
    // 0x743778: AllocStack(0x28)
    //     0x743778: sub             SP, SP, #0x28
    // 0x74377c: SetupParameters(CurrenciesTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x74377c: stur            x1, [fp, #-8]
    //     0x743780: stur            x2, [fp, #-0x10]
    // 0x743784: CheckStackOverflow
    //     0x743784: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x743788: cmp             SP, x16
    //     0x74378c: b.ls            #0x7438a0
    // 0x743790: r1 = 2
    //     0x743790: mov             x1, #2
    // 0x743794: r0 = AllocateContext()
    //     0x743794: bl              #0x927010  ; AllocateContextStub
    // 0x743798: mov             x3, x0
    // 0x74379c: ldur            x2, [fp, #-8]
    // 0x7437a0: stur            x3, [fp, #-0x18]
    // 0x7437a4: StoreField: r3->field_f = r2
    //     0x7437a4: stur            w2, [x3, #0xf]
    // 0x7437a8: ldur            x0, [fp, #-0x10]
    // 0x7437ac: StoreField: r3->field_13 = r0
    //     0x7437ac: stur            w0, [x3, #0x13]
    // 0x7437b0: LoadField: r0 = r2->field_b
    //     0x7437b0: ldur            w0, [x2, #0xb]
    // 0x7437b4: DecompressPointer r0
    //     0x7437b4: add             x0, x0, HEAP, lsl #32
    // 0x7437b8: cmp             w0, NULL
    // 0x7437bc: b.eq            #0x7438a8
    // 0x7437c0: LoadField: r1 = r0->field_b
    //     0x7437c0: ldur            w1, [x0, #0xb]
    // 0x7437c4: DecompressPointer r1
    //     0x7437c4: add             x1, x1, HEAP, lsl #32
    // 0x7437c8: r0 = LoadClassIdInstr(r1)
    //     0x7437c8: ldur            x0, [x1, #-1]
    //     0x7437cc: ubfx            x0, x0, #0xc, #0x14
    // 0x7437d0: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x7437d0: mov             x17, #0xcda7
    //     0x7437d4: add             lr, x0, x17
    //     0x7437d8: ldr             lr, [x21, lr, lsl #3]
    //     0x7437dc: blr             lr
    // 0x7437e0: tbnz            w0, #4, #0x743820
    // 0x7437e4: ldur            x2, [fp, #-0x18]
    // 0x7437e8: r1 = Function '<anonymous closure>':.
    //     0x7437e8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd68] AnonymousClosure: (0x744b3c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::build (0x743770)
    //     0x7437ec: ldr             x1, [x1, #0xd68]
    // 0x7437f0: r0 = AllocateClosure()
    //     0x7437f0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7437f4: mov             x5, x0
    // 0x7437f8: r1 = Instance_IconData
    //     0x7437f8: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd70] Obj!IconData@a0a781
    //     0x7437fc: ldr             x1, [x1, #0xd70]
    // 0x743800: r2 = "Döviz kuru bulunamadı"
    //     0x743800: add             x2, PP, #0x1f, lsl #12  ; [pp+0x1fd78] "Döviz kuru bulunamadı"
    //     0x743804: ldr             x2, [x2, #0xd78]
    // 0x743808: r3 = "Döviz Ekle"
    //     0x743808: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1fd80] "Döviz Ekle"
    //     0x74380c: ldr             x3, [x3, #0xd80]
    // 0x743810: r0 = buildEmptyState()
    //     0x743810: bl              #0x7438ac  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildEmptyState
    // 0x743814: LeaveFrame
    //     0x743814: mov             SP, fp
    //     0x743818: ldp             fp, lr, [SP], #0x10
    // 0x74381c: ret
    //     0x74381c: ret             
    // 0x743820: ldur            x1, [fp, #-8]
    // 0x743824: r0 = build()
    //     0x743824: bl              #0x6beb0c  ; [package:flutter/src/widgets/will_pop_scope.dart] _WillPopScopeState::build
    // 0x743828: r1 = LoadClassIdInstr(r0)
    //     0x743828: ldur            x1, [x0, #-1]
    //     0x74382c: ubfx            x1, x1, #0xc, #0x14
    // 0x743830: str             x0, [SP]
    // 0x743834: mov             x0, x1
    // 0x743838: r0 = GDT[cid_x0 + 0x879f]()
    //     0x743838: mov             x17, #0x879f
    //     0x74383c: add             lr, x0, x17
    //     0x743840: ldr             lr, [x21, lr, lsl #3]
    //     0x743844: blr             lr
    // 0x743848: r3 = LoadInt32Instr(r0)
    //     0x743848: sbfx            x3, x0, #1, #0x1f
    // 0x74384c: ldur            x2, [fp, #-0x18]
    // 0x743850: stur            x3, [fp, #-0x20]
    // 0x743854: r1 = Function '<anonymous closure>':.
    //     0x743854: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fd88] AnonymousClosure: (0x743a60), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::build (0x743770)
    //     0x743858: ldr             x1, [x1, #0xd88]
    // 0x74385c: r0 = AllocateClosure()
    //     0x74385c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x743860: stur            x0, [fp, #-8]
    // 0x743864: r0 = ListView()
    //     0x743864: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x743868: stur            x0, [fp, #-0x10]
    // 0x74386c: r16 = Instance_EdgeInsets
    //     0x74386c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x743870: ldr             x16, [x16, #0x240]
    // 0x743874: str             x16, [SP]
    // 0x743878: mov             x1, x0
    // 0x74387c: ldur            x2, [fp, #-8]
    // 0x743880: ldur            x3, [fp, #-0x20]
    // 0x743884: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x743884: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x743888: ldr             x4, [x4, #0xe60]
    // 0x74388c: r0 = ListView.builder()
    //     0x74388c: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x743890: ldur            x0, [fp, #-0x10]
    // 0x743894: LeaveFrame
    //     0x743894: mov             SP, fp
    //     0x743898: ldp             fp, lr, [SP], #0x10
    // 0x74389c: ret
    //     0x74389c: ret             
    // 0x7438a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7438a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7438a4: b               #0x743790
    // 0x7438a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7438a8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x743a60, size: 0x8c
    // 0x743a60: EnterFrame
    //     0x743a60: stp             fp, lr, [SP, #-0x10]!
    //     0x743a64: mov             fp, SP
    // 0x743a68: AllocStack(0x18)
    //     0x743a68: sub             SP, SP, #0x18
    // 0x743a6c: SetupParameters([dynamic _ /* r0 */])
    //     0x743a6c: ldr             x0, [fp, #0x20]
    //     0x743a70: ldur            w1, [x0, #0x17]
    //     0x743a74: add             x1, x1, HEAP, lsl #32
    // 0x743a78: CheckStackOverflow
    //     0x743a78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x743a7c: cmp             SP, x16
    //     0x743a80: b.ls            #0x743ae0
    // 0x743a84: LoadField: r2 = r1->field_f
    //     0x743a84: ldur            w2, [x1, #0xf]
    // 0x743a88: DecompressPointer r2
    //     0x743a88: add             x2, x2, HEAP, lsl #32
    // 0x743a8c: stur            x2, [fp, #-8]
    // 0x743a90: LoadField: r0 = r2->field_b
    //     0x743a90: ldur            w0, [x2, #0xb]
    // 0x743a94: DecompressPointer r0
    //     0x743a94: add             x0, x0, HEAP, lsl #32
    // 0x743a98: cmp             w0, NULL
    // 0x743a9c: b.eq            #0x743ae8
    // 0x743aa0: LoadField: r1 = r0->field_b
    //     0x743aa0: ldur            w1, [x0, #0xb]
    // 0x743aa4: DecompressPointer r1
    //     0x743aa4: add             x1, x1, HEAP, lsl #32
    // 0x743aa8: r0 = LoadClassIdInstr(r1)
    //     0x743aa8: ldur            x0, [x1, #-1]
    //     0x743aac: ubfx            x0, x0, #0xc, #0x14
    // 0x743ab0: ldr             x16, [fp, #0x10]
    // 0x743ab4: stp             x16, x1, [SP]
    // 0x743ab8: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x743ab8: sub             lr, x0, #0xdfc
    //     0x743abc: ldr             lr, [x21, lr, lsl #3]
    //     0x743ac0: blr             lr
    // 0x743ac4: ldur            x1, [fp, #-8]
    // 0x743ac8: ldr             x2, [fp, #0x18]
    // 0x743acc: mov             x3, x0
    // 0x743ad0: r0 = _buildCurrencyCard()
    //     0x743ad0: bl              #0x743aec  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_buildCurrencyCard
    // 0x743ad4: LeaveFrame
    //     0x743ad4: mov             SP, fp
    //     0x743ad8: ldp             fp, lr, [SP], #0x10
    // 0x743adc: ret
    //     0x743adc: ret             
    // 0x743ae0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743ae0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743ae4: b               #0x743a84
    // 0x743ae8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x743ae8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildCurrencyCard(/* No info */) {
    // ** addr: 0x743aec, size: 0x520
    // 0x743aec: EnterFrame
    //     0x743aec: stp             fp, lr, [SP, #-0x10]!
    //     0x743af0: mov             fp, SP
    // 0x743af4: AllocStack(0x50)
    //     0x743af4: sub             SP, SP, #0x50
    // 0x743af8: SetupParameters(CurrenciesTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x743af8: stur            x1, [fp, #-8]
    //     0x743afc: stur            x2, [fp, #-0x10]
    //     0x743b00: stur            x3, [fp, #-0x18]
    // 0x743b04: CheckStackOverflow
    //     0x743b04: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x743b08: cmp             SP, x16
    //     0x743b0c: b.ls            #0x743fe8
    // 0x743b10: r1 = 3
    //     0x743b10: mov             x1, #3
    // 0x743b14: r0 = AllocateContext()
    //     0x743b14: bl              #0x927010  ; AllocateContextStub
    // 0x743b18: mov             x2, x0
    // 0x743b1c: ldur            x0, [fp, #-8]
    // 0x743b20: stur            x2, [fp, #-0x20]
    // 0x743b24: StoreField: r2->field_f = r0
    //     0x743b24: stur            w0, [x2, #0xf]
    // 0x743b28: ldur            x0, [fp, #-0x10]
    // 0x743b2c: StoreField: r2->field_13 = r0
    //     0x743b2c: stur            w0, [x2, #0x13]
    // 0x743b30: ldur            x0, [fp, #-0x18]
    // 0x743b34: ArrayStore: r2[0] = r0  ; List_4
    //     0x743b34: stur            w0, [x2, #0x17]
    // 0x743b38: r16 = 0.080000
    //     0x743b38: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e30] 0.08
    //     0x743b3c: ldr             x16, [x16, #0xe30]
    // 0x743b40: str             x16, [SP]
    // 0x743b44: r1 = Instance_Color
    //     0x743b44: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x743b48: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x743b48: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x743b4c: ldr             x4, [x4, #0x198]
    // 0x743b50: r0 = withValues()
    //     0x743b50: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x743b54: stur            x0, [fp, #-8]
    // 0x743b58: r0 = Radius()
    //     0x743b58: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x743b5c: d0 = 12.000000
    //     0x743b5c: fmov            d0, #12.00000000
    // 0x743b60: stur            x0, [fp, #-0x10]
    // 0x743b64: StoreField: r0->field_7 = d0
    //     0x743b64: stur            d0, [x0, #7]
    // 0x743b68: StoreField: r0->field_f = d0
    //     0x743b68: stur            d0, [x0, #0xf]
    // 0x743b6c: r0 = BorderRadius()
    //     0x743b6c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x743b70: mov             x1, x0
    // 0x743b74: ldur            x0, [fp, #-0x10]
    // 0x743b78: stur            x1, [fp, #-0x18]
    // 0x743b7c: StoreField: r1->field_7 = r0
    //     0x743b7c: stur            w0, [x1, #7]
    // 0x743b80: StoreField: r1->field_b = r0
    //     0x743b80: stur            w0, [x1, #0xb]
    // 0x743b84: StoreField: r1->field_f = r0
    //     0x743b84: stur            w0, [x1, #0xf]
    // 0x743b88: StoreField: r1->field_13 = r0
    //     0x743b88: stur            w0, [x1, #0x13]
    // 0x743b8c: r0 = BoxDecoration()
    //     0x743b8c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x743b90: mov             x2, x0
    // 0x743b94: ldur            x0, [fp, #-8]
    // 0x743b98: stur            x2, [fp, #-0x10]
    // 0x743b9c: StoreField: r2->field_7 = r0
    //     0x743b9c: stur            w0, [x2, #7]
    // 0x743ba0: ldur            x0, [fp, #-0x18]
    // 0x743ba4: StoreField: r2->field_13 = r0
    //     0x743ba4: stur            w0, [x2, #0x13]
    // 0x743ba8: r0 = Instance_BoxShape
    //     0x743ba8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x743bac: ldr             x0, [x0, #0x1c8]
    // 0x743bb0: StoreField: r2->field_23 = r0
    //     0x743bb0: stur            w0, [x2, #0x23]
    // 0x743bb4: r16 = 0.200000
    //     0x743bb4: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x743bb8: ldr             x16, [x16, #0x1f0]
    // 0x743bbc: str             x16, [SP]
    // 0x743bc0: r1 = Instance_Color
    //     0x743bc0: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x743bc4: ldr             x1, [x1, #0xf30]
    // 0x743bc8: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x743bc8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x743bcc: ldr             x4, [x4, #0x198]
    // 0x743bd0: r0 = withValues()
    //     0x743bd0: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x743bd4: stur            x0, [fp, #-8]
    // 0x743bd8: r0 = Radius()
    //     0x743bd8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x743bdc: d0 = 8.000000
    //     0x743bdc: fmov            d0, #8.00000000
    // 0x743be0: stur            x0, [fp, #-0x18]
    // 0x743be4: StoreField: r0->field_7 = d0
    //     0x743be4: stur            d0, [x0, #7]
    // 0x743be8: StoreField: r0->field_f = d0
    //     0x743be8: stur            d0, [x0, #0xf]
    // 0x743bec: r0 = BorderRadius()
    //     0x743bec: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x743bf0: mov             x1, x0
    // 0x743bf4: ldur            x0, [fp, #-0x18]
    // 0x743bf8: stur            x1, [fp, #-0x28]
    // 0x743bfc: StoreField: r1->field_7 = r0
    //     0x743bfc: stur            w0, [x1, #7]
    // 0x743c00: StoreField: r1->field_b = r0
    //     0x743c00: stur            w0, [x1, #0xb]
    // 0x743c04: StoreField: r1->field_f = r0
    //     0x743c04: stur            w0, [x1, #0xf]
    // 0x743c08: StoreField: r1->field_13 = r0
    //     0x743c08: stur            w0, [x1, #0x13]
    // 0x743c0c: r0 = BoxDecoration()
    //     0x743c0c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x743c10: mov             x1, x0
    // 0x743c14: ldur            x0, [fp, #-8]
    // 0x743c18: stur            x1, [fp, #-0x18]
    // 0x743c1c: StoreField: r1->field_7 = r0
    //     0x743c1c: stur            w0, [x1, #7]
    // 0x743c20: ldur            x0, [fp, #-0x28]
    // 0x743c24: StoreField: r1->field_13 = r0
    //     0x743c24: stur            w0, [x1, #0x13]
    // 0x743c28: r0 = Instance_BoxShape
    //     0x743c28: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x743c2c: ldr             x0, [x0, #0x1c8]
    // 0x743c30: StoreField: r1->field_23 = r0
    //     0x743c30: stur            w0, [x1, #0x23]
    // 0x743c34: ldur            x2, [fp, #-0x20]
    // 0x743c38: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x743c38: ldur            w0, [x2, #0x17]
    // 0x743c3c: DecompressPointer r0
    //     0x743c3c: add             x0, x0, HEAP, lsl #32
    // 0x743c40: LoadField: r3 = r0->field_b
    //     0x743c40: ldur            w3, [x0, #0xb]
    // 0x743c44: DecompressPointer r3
    //     0x743c44: add             x3, x3, HEAP, lsl #32
    // 0x743c48: stur            x3, [fp, #-8]
    // 0x743c4c: r0 = Text()
    //     0x743c4c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x743c50: mov             x1, x0
    // 0x743c54: ldur            x0, [fp, #-8]
    // 0x743c58: stur            x1, [fp, #-0x28]
    // 0x743c5c: StoreField: r1->field_b = r0
    //     0x743c5c: stur            w0, [x1, #0xb]
    // 0x743c60: r0 = Instance_TextStyle
    //     0x743c60: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fd90] Obj!TextStyle@a189b1
    //     0x743c64: ldr             x0, [x0, #0xd90]
    // 0x743c68: StoreField: r1->field_13 = r0
    //     0x743c68: stur            w0, [x1, #0x13]
    // 0x743c6c: r0 = Container()
    //     0x743c6c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x743c70: stur            x0, [fp, #-8]
    // 0x743c74: r16 = Instance_EdgeInsets
    //     0x743c74: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x743c78: ldr             x16, [x16, #0x370]
    // 0x743c7c: ldur            lr, [fp, #-0x18]
    // 0x743c80: stp             lr, x16, [SP, #8]
    // 0x743c84: ldur            x16, [fp, #-0x28]
    // 0x743c88: str             x16, [SP]
    // 0x743c8c: mov             x1, x0
    // 0x743c90: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x743c90: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x743c94: ldr             x4, [x4, #0x1e8]
    // 0x743c98: r0 = Container()
    //     0x743c98: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x743c9c: ldur            x2, [fp, #-0x20]
    // 0x743ca0: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x743ca0: ldur            w0, [x2, #0x17]
    // 0x743ca4: DecompressPointer r0
    //     0x743ca4: add             x0, x0, HEAP, lsl #32
    // 0x743ca8: stur            x0, [fp, #-0x28]
    // 0x743cac: LoadField: r1 = r0->field_f
    //     0x743cac: ldur            w1, [x0, #0xf]
    // 0x743cb0: DecompressPointer r1
    //     0x743cb0: add             x1, x1, HEAP, lsl #32
    // 0x743cb4: stur            x1, [fp, #-0x18]
    // 0x743cb8: r0 = Text()
    //     0x743cb8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x743cbc: mov             x3, x0
    // 0x743cc0: ldur            x0, [fp, #-0x18]
    // 0x743cc4: stur            x3, [fp, #-0x30]
    // 0x743cc8: StoreField: r3->field_b = r0
    //     0x743cc8: stur            w0, [x3, #0xb]
    // 0x743ccc: r0 = Instance_TextStyle
    //     0x743ccc: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1faf0] Obj!TextStyle@a17ec1
    //     0x743cd0: ldr             x0, [x0, #0xaf0]
    // 0x743cd4: StoreField: r3->field_13 = r0
    //     0x743cd4: stur            w0, [x3, #0x13]
    // 0x743cd8: r1 = Null
    //     0x743cd8: mov             x1, NULL
    // 0x743cdc: r2 = 4
    //     0x743cdc: mov             x2, #4
    // 0x743ce0: r0 = AllocateArray()
    //     0x743ce0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x743ce4: stur            x0, [fp, #-0x18]
    // 0x743ce8: r16 = "₺"
    //     0x743ce8: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fd98] "₺"
    //     0x743cec: ldr             x16, [x16, #0xd98]
    // 0x743cf0: StoreField: r0->field_f = r16
    //     0x743cf0: stur            w16, [x0, #0xf]
    // 0x743cf4: ldur            x1, [fp, #-0x28]
    // 0x743cf8: LoadField: d0 = r1->field_13
    //     0x743cf8: ldur            d0, [x1, #0x13]
    // 0x743cfc: r1 = inline_Allocate_Double()
    //     0x743cfc: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x743d00: add             x1, x1, #0x10
    //     0x743d04: cmp             x2, x1
    //     0x743d08: b.ls            #0x743ff0
    //     0x743d0c: str             x1, [THR, #0x60]  ; THR::top
    //     0x743d10: sub             x1, x1, #0xf
    //     0x743d14: mov             x2, #0xe15c
    //     0x743d18: movk            x2, #3, lsl #16
    //     0x743d1c: stur            x2, [x1, #-1]
    // 0x743d20: StoreField: r1->field_7 = d0
    //     0x743d20: stur            d0, [x1, #7]
    // 0x743d24: r2 = 2
    //     0x743d24: mov             x2, #2
    // 0x743d28: r0 = toStringAsFixed()
    //     0x743d28: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x743d2c: ldur            x1, [fp, #-0x18]
    // 0x743d30: ArrayStore: r1[1] = r0  ; List_4
    //     0x743d30: add             x25, x1, #0x13
    //     0x743d34: str             w0, [x25]
    //     0x743d38: tbz             w0, #0, #0x743d54
    //     0x743d3c: ldurb           w16, [x1, #-1]
    //     0x743d40: ldurb           w17, [x0, #-1]
    //     0x743d44: and             x16, x17, x16, lsr #2
    //     0x743d48: tst             x16, HEAP, lsr #32
    //     0x743d4c: b.eq            #0x743d54
    //     0x743d50: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x743d54: ldur            x16, [fp, #-0x18]
    // 0x743d58: str             x16, [SP]
    // 0x743d5c: r0 = _interpolate()
    //     0x743d5c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x743d60: stur            x0, [fp, #-0x18]
    // 0x743d64: r0 = Text()
    //     0x743d64: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x743d68: mov             x3, x0
    // 0x743d6c: ldur            x0, [fp, #-0x18]
    // 0x743d70: stur            x3, [fp, #-0x28]
    // 0x743d74: StoreField: r3->field_b = r0
    //     0x743d74: stur            w0, [x3, #0xb]
    // 0x743d78: r0 = Instance_TextStyle
    //     0x743d78: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fda0] Obj!TextStyle@a18941
    //     0x743d7c: ldr             x0, [x0, #0xda0]
    // 0x743d80: StoreField: r3->field_13 = r0
    //     0x743d80: stur            w0, [x3, #0x13]
    // 0x743d84: r1 = Null
    //     0x743d84: mov             x1, NULL
    // 0x743d88: r2 = 4
    //     0x743d88: mov             x2, #4
    // 0x743d8c: r0 = AllocateArray()
    //     0x743d8c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x743d90: mov             x2, x0
    // 0x743d94: ldur            x0, [fp, #-0x30]
    // 0x743d98: stur            x2, [fp, #-0x18]
    // 0x743d9c: StoreField: r2->field_f = r0
    //     0x743d9c: stur            w0, [x2, #0xf]
    // 0x743da0: ldur            x0, [fp, #-0x28]
    // 0x743da4: StoreField: r2->field_13 = r0
    //     0x743da4: stur            w0, [x2, #0x13]
    // 0x743da8: r1 = <Widget>
    //     0x743da8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x743dac: r0 = AllocateGrowableArray()
    //     0x743dac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x743db0: mov             x1, x0
    // 0x743db4: ldur            x0, [fp, #-0x18]
    // 0x743db8: stur            x1, [fp, #-0x28]
    // 0x743dbc: StoreField: r1->field_f = r0
    //     0x743dbc: stur            w0, [x1, #0xf]
    // 0x743dc0: r0 = 4
    //     0x743dc0: mov             x0, #4
    // 0x743dc4: StoreField: r1->field_b = r0
    //     0x743dc4: stur            w0, [x1, #0xb]
    // 0x743dc8: r0 = Column()
    //     0x743dc8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x743dcc: mov             x2, x0
    // 0x743dd0: r0 = Instance_Axis
    //     0x743dd0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x743dd4: stur            x2, [fp, #-0x18]
    // 0x743dd8: StoreField: r2->field_f = r0
    //     0x743dd8: stur            w0, [x2, #0xf]
    // 0x743ddc: r0 = Instance_MainAxisAlignment
    //     0x743ddc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x743de0: ldr             x0, [x0, #0x230]
    // 0x743de4: StoreField: r2->field_13 = r0
    //     0x743de4: stur            w0, [x2, #0x13]
    // 0x743de8: r3 = Instance_MainAxisSize
    //     0x743de8: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x743dec: ldr             x3, [x3, #0x330]
    // 0x743df0: ArrayStore: r2[0] = r3  ; List_4
    //     0x743df0: stur            w3, [x2, #0x17]
    // 0x743df4: r1 = Instance_CrossAxisAlignment
    //     0x743df4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x743df8: ldr             x1, [x1, #0x238]
    // 0x743dfc: StoreField: r2->field_1b = r1
    //     0x743dfc: stur            w1, [x2, #0x1b]
    // 0x743e00: r4 = Instance_VerticalDirection
    //     0x743e00: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x743e04: ldr             x4, [x4, #0x340]
    // 0x743e08: StoreField: r2->field_23 = r4
    //     0x743e08: stur            w4, [x2, #0x23]
    // 0x743e0c: r5 = Instance_Clip
    //     0x743e0c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x743e10: ldr             x5, [x5, #0x348]
    // 0x743e14: StoreField: r2->field_2b = r5
    //     0x743e14: stur            w5, [x2, #0x2b]
    // 0x743e18: StoreField: r2->field_2f = rZR
    //     0x743e18: stur            xzr, [x2, #0x2f]
    // 0x743e1c: ldur            x1, [fp, #-0x28]
    // 0x743e20: StoreField: r2->field_b = r1
    //     0x743e20: stur            w1, [x2, #0xb]
    // 0x743e24: r1 = <FlexParentData>
    //     0x743e24: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x743e28: ldr             x1, [x1, #0x340]
    // 0x743e2c: r0 = Expanded()
    //     0x743e2c: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x743e30: mov             x3, x0
    // 0x743e34: r0 = 1
    //     0x743e34: mov             x0, #1
    // 0x743e38: stur            x3, [fp, #-0x28]
    // 0x743e3c: StoreField: r3->field_13 = r0
    //     0x743e3c: stur            x0, [x3, #0x13]
    // 0x743e40: r0 = Instance_FlexFit
    //     0x743e40: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x743e44: ldr             x0, [x0, #0x348]
    // 0x743e48: StoreField: r3->field_1b = r0
    //     0x743e48: stur            w0, [x3, #0x1b]
    // 0x743e4c: ldur            x0, [fp, #-0x18]
    // 0x743e50: StoreField: r3->field_b = r0
    //     0x743e50: stur            w0, [x3, #0xb]
    // 0x743e54: ldur            x2, [fp, #-0x20]
    // 0x743e58: r1 = Function '<anonymous closure>':.
    //     0x743e58: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fda8] AnonymousClosure: (0x744ae4), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_buildCurrencyCard (0x743aec)
    //     0x743e5c: ldr             x1, [x1, #0xda8]
    // 0x743e60: r0 = AllocateClosure()
    //     0x743e60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x743e64: stur            x0, [fp, #-0x18]
    // 0x743e68: r0 = IconButton()
    //     0x743e68: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x743e6c: mov             x3, x0
    // 0x743e70: ldur            x0, [fp, #-0x18]
    // 0x743e74: stur            x3, [fp, #-0x30]
    // 0x743e78: StoreField: r3->field_3b = r0
    //     0x743e78: stur            w0, [x3, #0x3b]
    // 0x743e7c: r0 = false
    //     0x743e7c: add             x0, NULL, #0x30  ; false
    // 0x743e80: StoreField: r3->field_4f = r0
    //     0x743e80: stur            w0, [x3, #0x4f]
    // 0x743e84: r1 = Instance_Icon
    //     0x743e84: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fa58] Obj!Icon@a1ed71
    //     0x743e88: ldr             x1, [x1, #0xa58]
    // 0x743e8c: StoreField: r3->field_1f = r1
    //     0x743e8c: stur            w1, [x3, #0x1f]
    // 0x743e90: r4 = Instance__IconButtonVariant
    //     0x743e90: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x743e94: ldr             x4, [x4, #0x1b8]
    // 0x743e98: StoreField: r3->field_6f = r4
    //     0x743e98: stur            w4, [x3, #0x6f]
    // 0x743e9c: ldur            x2, [fp, #-0x20]
    // 0x743ea0: r1 = Function '<anonymous closure>':.
    //     0x743ea0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fdb0] AnonymousClosure: (0x74400c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_buildCurrencyCard (0x743aec)
    //     0x743ea4: ldr             x1, [x1, #0xdb0]
    // 0x743ea8: r0 = AllocateClosure()
    //     0x743ea8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x743eac: stur            x0, [fp, #-0x18]
    // 0x743eb0: r0 = IconButton()
    //     0x743eb0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x743eb4: mov             x3, x0
    // 0x743eb8: ldur            x0, [fp, #-0x18]
    // 0x743ebc: stur            x3, [fp, #-0x20]
    // 0x743ec0: StoreField: r3->field_3b = r0
    //     0x743ec0: stur            w0, [x3, #0x3b]
    // 0x743ec4: r0 = false
    //     0x743ec4: add             x0, NULL, #0x30  ; false
    // 0x743ec8: StoreField: r3->field_4f = r0
    //     0x743ec8: stur            w0, [x3, #0x4f]
    // 0x743ecc: r0 = Instance_Icon
    //     0x743ecc: add             x0, PP, #0x1f, lsl #12  ; [pp+0x1fa68] Obj!Icon@a1e471
    //     0x743ed0: ldr             x0, [x0, #0xa68]
    // 0x743ed4: StoreField: r3->field_1f = r0
    //     0x743ed4: stur            w0, [x3, #0x1f]
    // 0x743ed8: r0 = Instance__IconButtonVariant
    //     0x743ed8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x743edc: ldr             x0, [x0, #0x1b8]
    // 0x743ee0: StoreField: r3->field_6f = r0
    //     0x743ee0: stur            w0, [x3, #0x6f]
    // 0x743ee4: r1 = Null
    //     0x743ee4: mov             x1, NULL
    // 0x743ee8: r2 = 10
    //     0x743ee8: mov             x2, #0xa
    // 0x743eec: r0 = AllocateArray()
    //     0x743eec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x743ef0: mov             x2, x0
    // 0x743ef4: ldur            x0, [fp, #-8]
    // 0x743ef8: stur            x2, [fp, #-0x18]
    // 0x743efc: StoreField: r2->field_f = r0
    //     0x743efc: stur            w0, [x2, #0xf]
    // 0x743f00: r16 = Instance_SizedBox
    //     0x743f00: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x743f04: ldr             x16, [x16, #0x360]
    // 0x743f08: StoreField: r2->field_13 = r16
    //     0x743f08: stur            w16, [x2, #0x13]
    // 0x743f0c: ldur            x0, [fp, #-0x28]
    // 0x743f10: ArrayStore: r2[0] = r0  ; List_4
    //     0x743f10: stur            w0, [x2, #0x17]
    // 0x743f14: ldur            x0, [fp, #-0x30]
    // 0x743f18: StoreField: r2->field_1b = r0
    //     0x743f18: stur            w0, [x2, #0x1b]
    // 0x743f1c: ldur            x0, [fp, #-0x20]
    // 0x743f20: StoreField: r2->field_1f = r0
    //     0x743f20: stur            w0, [x2, #0x1f]
    // 0x743f24: r1 = <Widget>
    //     0x743f24: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x743f28: r0 = AllocateGrowableArray()
    //     0x743f28: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x743f2c: mov             x1, x0
    // 0x743f30: ldur            x0, [fp, #-0x18]
    // 0x743f34: stur            x1, [fp, #-8]
    // 0x743f38: StoreField: r1->field_f = r0
    //     0x743f38: stur            w0, [x1, #0xf]
    // 0x743f3c: r0 = 10
    //     0x743f3c: mov             x0, #0xa
    // 0x743f40: StoreField: r1->field_b = r0
    //     0x743f40: stur            w0, [x1, #0xb]
    // 0x743f44: r0 = Row()
    //     0x743f44: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x743f48: mov             x1, x0
    // 0x743f4c: r0 = Instance_Axis
    //     0x743f4c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x743f50: stur            x1, [fp, #-0x18]
    // 0x743f54: StoreField: r1->field_f = r0
    //     0x743f54: stur            w0, [x1, #0xf]
    // 0x743f58: r0 = Instance_MainAxisAlignment
    //     0x743f58: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x743f5c: ldr             x0, [x0, #0x230]
    // 0x743f60: StoreField: r1->field_13 = r0
    //     0x743f60: stur            w0, [x1, #0x13]
    // 0x743f64: r0 = Instance_MainAxisSize
    //     0x743f64: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x743f68: ldr             x0, [x0, #0x330]
    // 0x743f6c: ArrayStore: r1[0] = r0  ; List_4
    //     0x743f6c: stur            w0, [x1, #0x17]
    // 0x743f70: r0 = Instance_CrossAxisAlignment
    //     0x743f70: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x743f74: ldr             x0, [x0, #0x338]
    // 0x743f78: StoreField: r1->field_1b = r0
    //     0x743f78: stur            w0, [x1, #0x1b]
    // 0x743f7c: r0 = Instance_VerticalDirection
    //     0x743f7c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x743f80: ldr             x0, [x0, #0x340]
    // 0x743f84: StoreField: r1->field_23 = r0
    //     0x743f84: stur            w0, [x1, #0x23]
    // 0x743f88: r0 = Instance_Clip
    //     0x743f88: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x743f8c: ldr             x0, [x0, #0x348]
    // 0x743f90: StoreField: r1->field_2b = r0
    //     0x743f90: stur            w0, [x1, #0x2b]
    // 0x743f94: StoreField: r1->field_2f = rZR
    //     0x743f94: stur            xzr, [x1, #0x2f]
    // 0x743f98: ldur            x0, [fp, #-8]
    // 0x743f9c: StoreField: r1->field_b = r0
    //     0x743f9c: stur            w0, [x1, #0xb]
    // 0x743fa0: r0 = Container()
    //     0x743fa0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x743fa4: stur            x0, [fp, #-8]
    // 0x743fa8: r16 = Instance_EdgeInsets
    //     0x743fa8: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x743fac: ldr             x16, [x16, #0xf18]
    // 0x743fb0: r30 = Instance_EdgeInsets
    //     0x743fb0: add             lr, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x743fb4: ldr             lr, [lr, #0x240]
    // 0x743fb8: stp             lr, x16, [SP, #0x10]
    // 0x743fbc: ldur            x16, [fp, #-0x10]
    // 0x743fc0: ldur            lr, [fp, #-0x18]
    // 0x743fc4: stp             lr, x16, [SP]
    // 0x743fc8: mov             x1, x0
    // 0x743fcc: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x1, padding, 0x2, null]
    //     0x743fcc: add             x4, PP, #0x15, lsl #12  ; [pp+0x15628] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x1, "padding", 0x2, Null]
    //     0x743fd0: ldr             x4, [x4, #0x628]
    // 0x743fd4: r0 = Container()
    //     0x743fd4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x743fd8: ldur            x0, [fp, #-8]
    // 0x743fdc: LeaveFrame
    //     0x743fdc: mov             SP, fp
    //     0x743fe0: ldp             fp, lr, [SP], #0x10
    // 0x743fe4: ret
    //     0x743fe4: ret             
    // 0x743fe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x743fe8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x743fec: b               #0x743b10
    // 0x743ff0: SaveReg d0
    //     0x743ff0: str             q0, [SP, #-0x10]!
    // 0x743ff4: SaveReg r0
    //     0x743ff4: str             x0, [SP, #-8]!
    // 0x743ff8: r0 = AllocateDouble()
    //     0x743ff8: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x743ffc: mov             x1, x0
    // 0x744000: RestoreReg r0
    //     0x744000: ldr             x0, [SP], #8
    // 0x744004: RestoreReg d0
    //     0x744004: ldr             q0, [SP], #0x10
    // 0x744008: b               #0x743d20
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x74400c, size: 0x58
    // 0x74400c: EnterFrame
    //     0x74400c: stp             fp, lr, [SP, #-0x10]!
    //     0x744010: mov             fp, SP
    // 0x744014: ldr             x0, [fp, #0x10]
    // 0x744018: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x744018: ldur            w1, [x0, #0x17]
    // 0x74401c: DecompressPointer r1
    //     0x74401c: add             x1, x1, HEAP, lsl #32
    // 0x744020: CheckStackOverflow
    //     0x744020: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744024: cmp             SP, x16
    //     0x744028: b.ls            #0x74405c
    // 0x74402c: LoadField: r0 = r1->field_f
    //     0x74402c: ldur            w0, [x1, #0xf]
    // 0x744030: DecompressPointer r0
    //     0x744030: add             x0, x0, HEAP, lsl #32
    // 0x744034: LoadField: r2 = r1->field_13
    //     0x744034: ldur            w2, [x1, #0x13]
    // 0x744038: DecompressPointer r2
    //     0x744038: add             x2, x2, HEAP, lsl #32
    // 0x74403c: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x74403c: ldur            w3, [x1, #0x17]
    // 0x744040: DecompressPointer r3
    //     0x744040: add             x3, x3, HEAP, lsl #32
    // 0x744044: mov             x1, x0
    // 0x744048: r0 = _confirmDeleteCurrency()
    //     0x744048: bl              #0x744064  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_confirmDeleteCurrency
    // 0x74404c: r0 = Null
    //     0x74404c: mov             x0, NULL
    // 0x744050: LeaveFrame
    //     0x744050: mov             SP, fp
    //     0x744054: ldp             fp, lr, [SP], #0x10
    // 0x744058: ret
    //     0x744058: ret             
    // 0x74405c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74405c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744060: b               #0x74402c
  }
  _ _confirmDeleteCurrency(/* No info */) {
    // ** addr: 0x744064, size: 0x84
    // 0x744064: EnterFrame
    //     0x744064: stp             fp, lr, [SP, #-0x10]!
    //     0x744068: mov             fp, SP
    // 0x74406c: AllocStack(0x30)
    //     0x74406c: sub             SP, SP, #0x30
    // 0x744070: SetupParameters(CurrenciesTabState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */)
    //     0x744070: stur            x1, [fp, #-8]
    //     0x744074: stur            x2, [fp, #-0x10]
    //     0x744078: stur            x3, [fp, #-0x18]
    // 0x74407c: CheckStackOverflow
    //     0x74407c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744080: cmp             SP, x16
    //     0x744084: b.ls            #0x7440e0
    // 0x744088: r1 = 3
    //     0x744088: mov             x1, #3
    // 0x74408c: r0 = AllocateContext()
    //     0x74408c: bl              #0x927010  ; AllocateContextStub
    // 0x744090: mov             x1, x0
    // 0x744094: ldur            x0, [fp, #-8]
    // 0x744098: StoreField: r1->field_f = r0
    //     0x744098: stur            w0, [x1, #0xf]
    // 0x74409c: ldur            x0, [fp, #-0x18]
    // 0x7440a0: StoreField: r1->field_13 = r0
    //     0x7440a0: stur            w0, [x1, #0x13]
    // 0x7440a4: r0 = false
    //     0x7440a4: add             x0, NULL, #0x30  ; false
    // 0x7440a8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7440a8: stur            w0, [x1, #0x17]
    // 0x7440ac: mov             x2, x1
    // 0x7440b0: r1 = Function '<anonymous closure>':.
    //     0x7440b0: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fdb8] AnonymousClosure: (0x7440e8), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_confirmDeleteCurrency (0x744064)
    //     0x7440b4: ldr             x1, [x1, #0xdb8]
    // 0x7440b8: r0 = AllocateClosure()
    //     0x7440b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7440bc: stp             x0, NULL, [SP, #8]
    // 0x7440c0: ldur            x16, [fp, #-0x10]
    // 0x7440c4: str             x16, [SP]
    // 0x7440c8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7440c8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7440cc: r0 = showDialog()
    //     0x7440cc: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7440d0: r0 = Null
    //     0x7440d0: mov             x0, NULL
    // 0x7440d4: LeaveFrame
    //     0x7440d4: mov             SP, fp
    //     0x7440d8: ldp             fp, lr, [SP], #0x10
    // 0x7440dc: ret
    //     0x7440dc: ret             
    // 0x7440e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7440e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7440e4: b               #0x744088
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7440e8, size: 0x64
    // 0x7440e8: EnterFrame
    //     0x7440e8: stp             fp, lr, [SP, #-0x10]!
    //     0x7440ec: mov             fp, SP
    // 0x7440f0: AllocStack(0x8)
    //     0x7440f0: sub             SP, SP, #8
    // 0x7440f4: SetupParameters([dynamic _ /* r0 */])
    //     0x7440f4: ldr             x0, [fp, #0x18]
    //     0x7440f8: ldur            w1, [x0, #0x17]
    //     0x7440fc: add             x1, x1, HEAP, lsl #32
    //     0x744100: stur            x1, [fp, #-8]
    // 0x744104: r1 = 1
    //     0x744104: mov             x1, #1
    // 0x744108: r0 = AllocateContext()
    //     0x744108: bl              #0x927010  ; AllocateContextStub
    // 0x74410c: mov             x1, x0
    // 0x744110: ldur            x0, [fp, #-8]
    // 0x744114: StoreField: r1->field_b = r0
    //     0x744114: stur            w0, [x1, #0xb]
    // 0x744118: ldr             x0, [fp, #0x10]
    // 0x74411c: StoreField: r1->field_f = r0
    //     0x74411c: stur            w0, [x1, #0xf]
    // 0x744120: mov             x2, x1
    // 0x744124: r1 = Function '<anonymous closure>':.
    //     0x744124: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fdc0] AnonymousClosure: (0x74414c), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_confirmDeleteCurrency (0x744064)
    //     0x744128: ldr             x1, [x1, #0xdc0]
    // 0x74412c: r0 = AllocateClosure()
    //     0x74412c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744130: stur            x0, [fp, #-8]
    // 0x744134: r0 = StatefulBuilder()
    //     0x744134: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x744138: ldur            x1, [fp, #-8]
    // 0x74413c: StoreField: r0->field_b = r1
    //     0x74413c: stur            w1, [x0, #0xb]
    // 0x744140: LeaveFrame
    //     0x744140: mov             SP, fp
    //     0x744144: ldp             fp, lr, [SP], #0x10
    // 0x744148: ret
    //     0x744148: ret             
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x74414c, size: 0x2cc
    // 0x74414c: EnterFrame
    //     0x74414c: stp             fp, lr, [SP, #-0x10]!
    //     0x744150: mov             fp, SP
    // 0x744154: AllocStack(0x48)
    //     0x744154: sub             SP, SP, #0x48
    // 0x744158: SetupParameters([dynamic _ /* r0 */])
    //     0x744158: ldr             x0, [fp, #0x20]
    //     0x74415c: ldur            w1, [x0, #0x17]
    //     0x744160: add             x1, x1, HEAP, lsl #32
    //     0x744164: stur            x1, [fp, #-8]
    // 0x744168: CheckStackOverflow
    //     0x744168: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74416c: cmp             SP, x16
    //     0x744170: b.ls            #0x744410
    // 0x744174: r1 = 1
    //     0x744174: mov             x1, #1
    // 0x744178: r0 = AllocateContext()
    //     0x744178: bl              #0x927010  ; AllocateContextStub
    // 0x74417c: mov             x1, x0
    // 0x744180: ldur            x0, [fp, #-8]
    // 0x744184: stur            x1, [fp, #-0x10]
    // 0x744188: StoreField: r1->field_b = r0
    //     0x744188: stur            w0, [x1, #0xb]
    // 0x74418c: ldr             x2, [fp, #0x10]
    // 0x744190: StoreField: r1->field_f = r2
    //     0x744190: stur            w2, [x1, #0xf]
    // 0x744194: r0 = Radius()
    //     0x744194: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x744198: d0 = 16.000000
    //     0x744198: fmov            d0, #16.00000000
    // 0x74419c: stur            x0, [fp, #-0x18]
    // 0x7441a0: StoreField: r0->field_7 = d0
    //     0x7441a0: stur            d0, [x0, #7]
    // 0x7441a4: StoreField: r0->field_f = d0
    //     0x7441a4: stur            d0, [x0, #0xf]
    // 0x7441a8: r0 = BorderRadius()
    //     0x7441a8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7441ac: mov             x1, x0
    // 0x7441b0: ldur            x0, [fp, #-0x18]
    // 0x7441b4: stur            x1, [fp, #-0x20]
    // 0x7441b8: StoreField: r1->field_7 = r0
    //     0x7441b8: stur            w0, [x1, #7]
    // 0x7441bc: StoreField: r1->field_b = r0
    //     0x7441bc: stur            w0, [x1, #0xb]
    // 0x7441c0: StoreField: r1->field_f = r0
    //     0x7441c0: stur            w0, [x1, #0xf]
    // 0x7441c4: StoreField: r1->field_13 = r0
    //     0x7441c4: stur            w0, [x1, #0x13]
    // 0x7441c8: r0 = RoundedRectangleBorder()
    //     0x7441c8: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7441cc: mov             x3, x0
    // 0x7441d0: ldur            x0, [fp, #-0x20]
    // 0x7441d4: stur            x3, [fp, #-0x18]
    // 0x7441d8: StoreField: r3->field_b = r0
    //     0x7441d8: stur            w0, [x3, #0xb]
    // 0x7441dc: r0 = Instance_BorderSide
    //     0x7441dc: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7441e0: ldr             x0, [x0, #0xcb8]
    // 0x7441e4: StoreField: r3->field_7 = r0
    //     0x7441e4: stur            w0, [x3, #7]
    // 0x7441e8: r1 = Null
    //     0x7441e8: mov             x1, NULL
    // 0x7441ec: r2 = 6
    //     0x7441ec: mov             x2, #6
    // 0x7441f0: r0 = AllocateArray()
    //     0x7441f0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7441f4: r16 = "\""
    //     0x7441f4: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x7441f8: ldr             x16, [x16, #0x40]
    // 0x7441fc: StoreField: r0->field_f = r16
    //     0x7441fc: stur            w16, [x0, #0xf]
    // 0x744200: ldur            x1, [fp, #-8]
    // 0x744204: LoadField: r2 = r1->field_b
    //     0x744204: ldur            w2, [x1, #0xb]
    // 0x744208: DecompressPointer r2
    //     0x744208: add             x2, x2, HEAP, lsl #32
    // 0x74420c: stur            x2, [fp, #-0x20]
    // 0x744210: LoadField: r1 = r2->field_13
    //     0x744210: ldur            w1, [x2, #0x13]
    // 0x744214: DecompressPointer r1
    //     0x744214: add             x1, x1, HEAP, lsl #32
    // 0x744218: LoadField: r3 = r1->field_f
    //     0x744218: ldur            w3, [x1, #0xf]
    // 0x74421c: DecompressPointer r3
    //     0x74421c: add             x3, x3, HEAP, lsl #32
    // 0x744220: StoreField: r0->field_13 = r3
    //     0x744220: stur            w3, [x0, #0x13]
    // 0x744224: r16 = "\" dövizini silmek istediğinize emin misiniz\?"
    //     0x744224: add             x16, PP, #0x1f, lsl #12  ; [pp+0x1fdc8] "\" dövizini silmek istediğinize emin misiniz\?"
    //     0x744228: ldr             x16, [x16, #0xdc8]
    // 0x74422c: ArrayStore: r0[0] = r16  ; List_4
    //     0x74422c: stur            w16, [x0, #0x17]
    // 0x744230: str             x0, [SP]
    // 0x744234: r0 = _interpolate()
    //     0x744234: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x744238: stur            x0, [fp, #-8]
    // 0x74423c: r0 = Text()
    //     0x74423c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x744240: mov             x3, x0
    // 0x744244: ldur            x0, [fp, #-8]
    // 0x744248: stur            x3, [fp, #-0x28]
    // 0x74424c: StoreField: r3->field_b = r0
    //     0x74424c: stur            w0, [x3, #0xb]
    // 0x744250: r0 = Instance_TextStyle
    //     0x744250: add             x0, PP, #0x19, lsl #12  ; [pp+0x19538] Obj!TextStyle@a179f1
    //     0x744254: ldr             x0, [x0, #0x538]
    // 0x744258: StoreField: r3->field_13 = r0
    //     0x744258: stur            w0, [x3, #0x13]
    // 0x74425c: ldur            x0, [fp, #-0x20]
    // 0x744260: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x744260: ldur            w4, [x0, #0x17]
    // 0x744264: DecompressPointer r4
    //     0x744264: add             x4, x4, HEAP, lsl #32
    // 0x744268: stur            x4, [fp, #-8]
    // 0x74426c: tbnz            w4, #4, #0x74427c
    // 0x744270: mov             x0, x4
    // 0x744274: r1 = Null
    //     0x744274: mov             x1, NULL
    // 0x744278: b               #0x744294
    // 0x74427c: ldur            x2, [fp, #-0x10]
    // 0x744280: r1 = Function '<anonymous closure>':.
    //     0x744280: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fdd0] AnonymousClosure: (0x6f5908), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog (0x6f64f4)
    //     0x744284: ldr             x1, [x1, #0xdd0]
    // 0x744288: r0 = AllocateClosure()
    //     0x744288: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74428c: mov             x1, x0
    // 0x744290: ldur            x0, [fp, #-8]
    // 0x744294: stur            x1, [fp, #-0x30]
    // 0x744298: r0 = TextButton()
    //     0x744298: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x74429c: mov             x3, x0
    // 0x7442a0: ldur            x0, [fp, #-0x30]
    // 0x7442a4: stur            x3, [fp, #-0x38]
    // 0x7442a8: StoreField: r3->field_b = r0
    //     0x7442a8: stur            w0, [x3, #0xb]
    // 0x7442ac: r0 = false
    //     0x7442ac: add             x0, NULL, #0x30  ; false
    // 0x7442b0: StoreField: r3->field_27 = r0
    //     0x7442b0: stur            w0, [x3, #0x27]
    // 0x7442b4: r4 = true
    //     0x7442b4: add             x4, NULL, #0x20  ; true
    // 0x7442b8: StoreField: r3->field_2f = r4
    //     0x7442b8: stur            w4, [x3, #0x2f]
    // 0x7442bc: r1 = Instance_Text
    //     0x7442bc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19198] Obj!Text@a1ba91
    //     0x7442c0: ldr             x1, [x1, #0x198]
    // 0x7442c4: StoreField: r3->field_37 = r1
    //     0x7442c4: stur            w1, [x3, #0x37]
    // 0x7442c8: ldur            x1, [fp, #-8]
    // 0x7442cc: tbnz            w1, #4, #0x7442d8
    // 0x7442d0: r1 = Null
    //     0x7442d0: mov             x1, NULL
    // 0x7442d4: b               #0x7442ec
    // 0x7442d8: ldur            x2, [fp, #-0x10]
    // 0x7442dc: r1 = Function '<anonymous closure>':.
    //     0x7442dc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fdd8] AnonymousClosure: (0x744418), in [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::_confirmDeleteCurrency (0x744064)
    //     0x7442e0: ldr             x1, [x1, #0xdd8]
    // 0x7442e4: r0 = AllocateClosure()
    //     0x7442e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7442e8: mov             x1, x0
    // 0x7442ec: ldur            x0, [fp, #-0x20]
    // 0x7442f0: stur            x1, [fp, #-8]
    // 0x7442f4: r16 = Instance_MaterialColor
    //     0x7442f4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7442f8: ldr             x16, [x16, #0xb90]
    // 0x7442fc: r30 = Instance_Color
    //     0x7442fc: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x744300: stp             lr, x16, [SP]
    // 0x744304: r4 = const [0, 0x2, 0x2, 0, backgroundColor, 0, foregroundColor, 0x1, null]
    //     0x744304: add             x4, PP, #0x19, lsl #12  ; [pp+0x191a8] List(9) [0, 0x2, 0x2, 0, "backgroundColor", 0, "foregroundColor", 0x1, Null]
    //     0x744308: ldr             x4, [x4, #0x1a8]
    // 0x74430c: r0 = styleFrom()
    //     0x74430c: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x744310: mov             x1, x0
    // 0x744314: ldur            x0, [fp, #-0x20]
    // 0x744318: stur            x1, [fp, #-0x30]
    // 0x74431c: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x74431c: ldur            w2, [x0, #0x17]
    // 0x744320: DecompressPointer r2
    //     0x744320: add             x2, x2, HEAP, lsl #32
    // 0x744324: tbnz            w2, #4, #0x744334
    // 0x744328: r5 = Instance_SizedBox
    //     0x744328: add             x5, PP, #0x19, lsl #12  ; [pp+0x191b0] Obj!SizedBox@a1fa51
    //     0x74432c: ldr             x5, [x5, #0x1b0]
    // 0x744330: b               #0x74433c
    // 0x744334: r5 = Instance_Text
    //     0x744334: add             x5, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x744338: ldr             x5, [x5, #0x7e0]
    // 0x74433c: ldur            x4, [fp, #-0x18]
    // 0x744340: ldur            x3, [fp, #-0x28]
    // 0x744344: ldur            x2, [fp, #-0x38]
    // 0x744348: ldur            x0, [fp, #-8]
    // 0x74434c: stur            x5, [fp, #-0x10]
    // 0x744350: r0 = ElevatedButton()
    //     0x744350: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x744354: mov             x3, x0
    // 0x744358: ldur            x0, [fp, #-8]
    // 0x74435c: stur            x3, [fp, #-0x20]
    // 0x744360: StoreField: r3->field_b = r0
    //     0x744360: stur            w0, [x3, #0xb]
    // 0x744364: ldur            x0, [fp, #-0x30]
    // 0x744368: StoreField: r3->field_1b = r0
    //     0x744368: stur            w0, [x3, #0x1b]
    // 0x74436c: r0 = false
    //     0x74436c: add             x0, NULL, #0x30  ; false
    // 0x744370: StoreField: r3->field_27 = r0
    //     0x744370: stur            w0, [x3, #0x27]
    // 0x744374: r1 = true
    //     0x744374: add             x1, NULL, #0x20  ; true
    // 0x744378: StoreField: r3->field_2f = r1
    //     0x744378: stur            w1, [x3, #0x2f]
    // 0x74437c: ldur            x1, [fp, #-0x10]
    // 0x744380: StoreField: r3->field_37 = r1
    //     0x744380: stur            w1, [x3, #0x37]
    // 0x744384: r1 = Null
    //     0x744384: mov             x1, NULL
    // 0x744388: r2 = 4
    //     0x744388: mov             x2, #4
    // 0x74438c: r0 = AllocateArray()
    //     0x74438c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x744390: mov             x2, x0
    // 0x744394: ldur            x0, [fp, #-0x38]
    // 0x744398: stur            x2, [fp, #-8]
    // 0x74439c: StoreField: r2->field_f = r0
    //     0x74439c: stur            w0, [x2, #0xf]
    // 0x7443a0: ldur            x0, [fp, #-0x20]
    // 0x7443a4: StoreField: r2->field_13 = r0
    //     0x7443a4: stur            w0, [x2, #0x13]
    // 0x7443a8: r1 = <Widget>
    //     0x7443a8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7443ac: r0 = AllocateGrowableArray()
    //     0x7443ac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7443b0: mov             x1, x0
    // 0x7443b4: ldur            x0, [fp, #-8]
    // 0x7443b8: stur            x1, [fp, #-0x10]
    // 0x7443bc: StoreField: r1->field_f = r0
    //     0x7443bc: stur            w0, [x1, #0xf]
    // 0x7443c0: r0 = 4
    //     0x7443c0: mov             x0, #4
    // 0x7443c4: StoreField: r1->field_b = r0
    //     0x7443c4: stur            w0, [x1, #0xb]
    // 0x7443c8: r0 = AlertDialog()
    //     0x7443c8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7443cc: r1 = Instance_Text
    //     0x7443cc: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fde0] Obj!Text@a1d2a1
    //     0x7443d0: ldr             x1, [x1, #0xde0]
    // 0x7443d4: StoreField: r0->field_f = r1
    //     0x7443d4: stur            w1, [x0, #0xf]
    // 0x7443d8: ldur            x1, [fp, #-0x28]
    // 0x7443dc: StoreField: r0->field_1b = r1
    //     0x7443dc: stur            w1, [x0, #0x1b]
    // 0x7443e0: ldur            x1, [fp, #-0x10]
    // 0x7443e4: StoreField: r0->field_27 = r1
    //     0x7443e4: stur            w1, [x0, #0x27]
    // 0x7443e8: r1 = Instance_Color
    //     0x7443e8: add             x1, PP, #0x19, lsl #12  ; [pp+0x191c0] Obj!Color@a254e1
    //     0x7443ec: ldr             x1, [x1, #0x1c0]
    // 0x7443f0: StoreField: r0->field_43 = r1
    //     0x7443f0: stur            w1, [x0, #0x43]
    // 0x7443f4: ldur            x1, [fp, #-0x18]
    // 0x7443f8: StoreField: r0->field_5f = r1
    //     0x7443f8: stur            w1, [x0, #0x5f]
    // 0x7443fc: r1 = false
    //     0x7443fc: add             x1, NULL, #0x30  ; false
    // 0x744400: StoreField: r0->field_6b = r1
    //     0x744400: stur            w1, [x0, #0x6b]
    // 0x744404: LeaveFrame
    //     0x744404: mov             SP, fp
    //     0x744408: ldp             fp, lr, [SP], #0x10
    // 0x74440c: ret
    //     0x74440c: ret             
    // 0x744410: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744410: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744414: b               #0x744174
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x744418, size: 0x178
    // 0x744418: EnterFrame
    //     0x744418: stp             fp, lr, [SP, #-0x10]!
    //     0x74441c: mov             fp, SP
    // 0x744420: AllocStack(0x38)
    //     0x744420: sub             SP, SP, #0x38
    // 0x744424: SetupParameters(CurrenciesTabState this /* r1 */)
    //     0x744424: stur            NULL, [fp, #-8]
    //     0x744428: mov             x0, #0
    //     0x74442c: add             x1, fp, w0, sxtw #2
    //     0x744430: ldr             x1, [x1, #0x10]
    //     0x744434: ldur            w2, [x1, #0x17]
    //     0x744438: add             x2, x2, HEAP, lsl #32
    //     0x74443c: stur            x2, [fp, #-0x10]
    // 0x744440: CheckStackOverflow
    //     0x744440: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744444: cmp             SP, x16
    //     0x744448: b.ls            #0x744580
    // 0x74444c: InitAsync() -> Future<void?>
    //     0x74444c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x744450: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x744454: ldur            x0, [fp, #-0x10]
    // 0x744458: LoadField: r3 = r0->field_f
    //     0x744458: ldur            w3, [x0, #0xf]
    // 0x74445c: DecompressPointer r3
    //     0x74445c: add             x3, x3, HEAP, lsl #32
    // 0x744460: mov             x2, x0
    // 0x744464: stur            x3, [fp, #-0x18]
    // 0x744468: r1 = Function '<anonymous closure>':.
    //     0x744468: add             x1, PP, #0x1f, lsl #12  ; [pp+0x1fde8] AnonymousClosure: (0x744590), in [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::confirmDeleteUser (0x744a60)
    //     0x74446c: ldr             x1, [x1, #0xde8]
    // 0x744470: r0 = AllocateClosure()
    //     0x744470: bl              #0x9273d4  ; AllocateClosureStub
    // 0x744474: ldur            x16, [fp, #-0x18]
    // 0x744478: stp             x0, x16, [SP]
    // 0x74447c: ldur            x0, [fp, #-0x18]
    // 0x744480: ClosureCall
    //     0x744480: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x744484: ldur            x2, [x0, #0x1f]
    //     0x744488: blr             x2
    // 0x74448c: ldur            x0, [fp, #-0x10]
    // 0x744490: LoadField: r3 = r0->field_b
    //     0x744490: ldur            w3, [x0, #0xb]
    // 0x744494: DecompressPointer r3
    //     0x744494: add             x3, x3, HEAP, lsl #32
    // 0x744498: stur            x3, [fp, #-0x20]
    // 0x74449c: LoadField: r4 = r3->field_b
    //     0x74449c: ldur            w4, [x3, #0xb]
    // 0x7444a0: DecompressPointer r4
    //     0x7444a0: add             x4, x4, HEAP, lsl #32
    // 0x7444a4: stur            x4, [fp, #-0x18]
    // 0x7444a8: LoadField: r1 = r4->field_f
    //     0x7444a8: ldur            w1, [x4, #0xf]
    // 0x7444ac: DecompressPointer r1
    //     0x7444ac: add             x1, x1, HEAP, lsl #32
    // 0x7444b0: LoadField: r2 = r1->field_b
    //     0x7444b0: ldur            w2, [x1, #0xb]
    // 0x7444b4: DecompressPointer r2
    //     0x7444b4: add             x2, x2, HEAP, lsl #32
    // 0x7444b8: cmp             w2, NULL
    // 0x7444bc: b.eq            #0x744588
    // 0x7444c0: LoadField: r1 = r2->field_13
    //     0x7444c0: ldur            w1, [x2, #0x13]
    // 0x7444c4: DecompressPointer r1
    //     0x7444c4: add             x1, x1, HEAP, lsl #32
    // 0x7444c8: LoadField: r2 = r1->field_7
    //     0x7444c8: ldur            w2, [x1, #7]
    // 0x7444cc: DecompressPointer r2
    //     0x7444cc: add             x2, x2, HEAP, lsl #32
    // 0x7444d0: mov             x1, x2
    // 0x7444d4: r2 = "currencies"
    //     0x7444d4: add             x2, PP, #0x18, lsl #12  ; [pp+0x18e18] "currencies"
    //     0x7444d8: ldr             x2, [x2, #0xe18]
    // 0x7444dc: r0 = collection()
    //     0x7444dc: bl              #0x5d7c38  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::collection
    // 0x7444e0: mov             x1, x0
    // 0x7444e4: ldur            x0, [fp, #-0x18]
    // 0x7444e8: LoadField: r2 = r0->field_13
    //     0x7444e8: ldur            w2, [x0, #0x13]
    // 0x7444ec: DecompressPointer r2
    //     0x7444ec: add             x2, x2, HEAP, lsl #32
    // 0x7444f0: LoadField: r3 = r2->field_7
    //     0x7444f0: ldur            w3, [x2, #7]
    // 0x7444f4: DecompressPointer r3
    //     0x7444f4: add             x3, x3, HEAP, lsl #32
    // 0x7444f8: str             x3, [SP]
    // 0x7444fc: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7444fc: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x744500: r0 = doc()
    //     0x744500: bl              #0x5ddc38  ; [package:cloud_firestore/cloud_firestore.dart] _JsonCollectionReference::doc
    // 0x744504: mov             x1, x0
    // 0x744508: r0 = delete()
    //     0x744508: bl              #0x6d69d4  ; [package:cloud_firestore/cloud_firestore.dart] _JsonDocumentReference::delete
    // 0x74450c: mov             x1, x0
    // 0x744510: stur            x1, [fp, #-0x28]
    // 0x744514: r0 = Await()
    //     0x744514: bl              #0x3dd188  ; AwaitStub
    // 0x744518: ldur            x0, [fp, #-0x18]
    // 0x74451c: LoadField: r1 = r0->field_f
    //     0x74451c: ldur            w1, [x0, #0xf]
    // 0x744520: DecompressPointer r1
    //     0x744520: add             x1, x1, HEAP, lsl #32
    // 0x744524: LoadField: r0 = r1->field_b
    //     0x744524: ldur            w0, [x1, #0xb]
    // 0x744528: DecompressPointer r0
    //     0x744528: add             x0, x0, HEAP, lsl #32
    // 0x74452c: cmp             w0, NULL
    // 0x744530: b.eq            #0x74458c
    // 0x744534: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x744534: ldur            w1, [x0, #0x17]
    // 0x744538: DecompressPointer r1
    //     0x744538: add             x1, x1, HEAP, lsl #32
    // 0x74453c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x74453c: ldur            w0, [x1, #0x17]
    // 0x744540: DecompressPointer r0
    //     0x744540: add             x0, x0, HEAP, lsl #32
    // 0x744544: mov             x1, x0
    // 0x744548: r0 = _loadAgencyData()
    //     0x744548: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x74454c: ldur            x0, [fp, #-0x20]
    // 0x744550: LoadField: r1 = r0->field_f
    //     0x744550: ldur            w1, [x0, #0xf]
    // 0x744554: DecompressPointer r1
    //     0x744554: add             x1, x1, HEAP, lsl #32
    // 0x744558: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x744558: ldur            w0, [x1, #0x17]
    // 0x74455c: DecompressPointer r0
    //     0x74455c: add             x0, x0, HEAP, lsl #32
    // 0x744560: cmp             w0, NULL
    // 0x744564: b.eq            #0x744578
    // 0x744568: r16 = <Object?>
    //     0x744568: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x74456c: stp             x1, x16, [SP]
    // 0x744570: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x744570: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x744574: r0 = pop()
    //     0x744574: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x744578: r0 = Null
    //     0x744578: mov             x0, NULL
    // 0x74457c: r0 = ReturnAsyncNotFuture()
    //     0x74457c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x744580: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744580: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744584: b               #0x74444c
    // 0x744588: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x744588: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x74458c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x74458c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x744ae4, size: 0x58
    // 0x744ae4: EnterFrame
    //     0x744ae4: stp             fp, lr, [SP, #-0x10]!
    //     0x744ae8: mov             fp, SP
    // 0x744aec: ldr             x0, [fp, #0x10]
    // 0x744af0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x744af0: ldur            w1, [x0, #0x17]
    // 0x744af4: DecompressPointer r1
    //     0x744af4: add             x1, x1, HEAP, lsl #32
    // 0x744af8: CheckStackOverflow
    //     0x744af8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744afc: cmp             SP, x16
    //     0x744b00: b.ls            #0x744b34
    // 0x744b04: LoadField: r0 = r1->field_f
    //     0x744b04: ldur            w0, [x1, #0xf]
    // 0x744b08: DecompressPointer r0
    //     0x744b08: add             x0, x0, HEAP, lsl #32
    // 0x744b0c: LoadField: r2 = r1->field_13
    //     0x744b0c: ldur            w2, [x1, #0x13]
    // 0x744b10: DecompressPointer r2
    //     0x744b10: add             x2, x2, HEAP, lsl #32
    // 0x744b14: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x744b14: ldur            w3, [x1, #0x17]
    // 0x744b18: DecompressPointer r3
    //     0x744b18: add             x3, x3, HEAP, lsl #32
    // 0x744b1c: mov             x1, x0
    // 0x744b20: r0 = showCurrencyDialog()
    //     0x744b20: bl              #0x6f64f4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog
    // 0x744b24: r0 = Null
    //     0x744b24: mov             x0, NULL
    // 0x744b28: LeaveFrame
    //     0x744b28: mov             SP, fp
    //     0x744b2c: ldp             fp, lr, [SP], #0x10
    // 0x744b30: ret
    //     0x744b30: ret             
    // 0x744b34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744b34: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744b38: b               #0x744b04
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x744b3c, size: 0x54
    // 0x744b3c: EnterFrame
    //     0x744b3c: stp             fp, lr, [SP, #-0x10]!
    //     0x744b40: mov             fp, SP
    // 0x744b44: ldr             x0, [fp, #0x10]
    // 0x744b48: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x744b48: ldur            w1, [x0, #0x17]
    // 0x744b4c: DecompressPointer r1
    //     0x744b4c: add             x1, x1, HEAP, lsl #32
    // 0x744b50: CheckStackOverflow
    //     0x744b50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x744b54: cmp             SP, x16
    //     0x744b58: b.ls            #0x744b88
    // 0x744b5c: LoadField: r0 = r1->field_f
    //     0x744b5c: ldur            w0, [x1, #0xf]
    // 0x744b60: DecompressPointer r0
    //     0x744b60: add             x0, x0, HEAP, lsl #32
    // 0x744b64: LoadField: r2 = r1->field_13
    //     0x744b64: ldur            w2, [x1, #0x13]
    // 0x744b68: DecompressPointer r2
    //     0x744b68: add             x2, x2, HEAP, lsl #32
    // 0x744b6c: mov             x1, x0
    // 0x744b70: r3 = Null
    //     0x744b70: mov             x3, NULL
    // 0x744b74: r0 = showCurrencyDialog()
    //     0x744b74: bl              #0x6f64f4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog
    // 0x744b78: r0 = Null
    //     0x744b78: mov             x0, NULL
    // 0x744b7c: LeaveFrame
    //     0x744b7c: mov             SP, fp
    //     0x744b80: ldp             fp, lr, [SP], #0x10
    // 0x744b84: ret
    //     0x744b84: ret             
    // 0x744b88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x744b88: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x744b8c: b               #0x744b5c
  }
}

// class id: 3189, size: 0x1c, field offset: 0xc
//   const constructor, 
class CurrenciesTab extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf61c, size: 0x24
    // 0x7bf61c: EnterFrame
    //     0x7bf61c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf620: mov             fp, SP
    // 0x7bf624: mov             x0, x1
    // 0x7bf628: r1 = <CurrenciesTab>
    //     0x7bf628: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bb38] TypeArguments: <CurrenciesTab>
    //     0x7bf62c: ldr             x1, [x1, #0xb38]
    // 0x7bf630: r0 = CurrenciesTabState()
    //     0x7bf630: bl              #0x7bf640  ; AllocateCurrenciesTabStateStub -> CurrenciesTabState (size=0x14)
    // 0x7bf634: LeaveFrame
    //     0x7bf634: mov             SP, fp
    //     0x7bf638: ldp             fp, lr, [SP], #0x10
    // 0x7bf63c: ret
    //     0x7bf63c: ret             
  }
}
