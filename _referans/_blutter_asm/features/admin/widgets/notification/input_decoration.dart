// lib: , url: package:umrem_demo/features/admin/widgets/notification/input_decoration.dart

// class id: 1049558, size: 0x8
class :: {

  static _ inputDecoration(/* No info */) {
    // ** addr: 0x6dbc08, size: 0x1b0
    // 0x6dbc08: EnterFrame
    //     0x6dbc08: stp             fp, lr, [SP, #-0x10]!
    //     0x6dbc0c: mov             fp, SP
    // 0x6dbc10: AllocStack(0x28)
    //     0x6dbc10: sub             SP, SP, #0x28
    // 0x6dbc14: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */)
    //     0x6dbc14: stur            x1, [fp, #-8]
    // 0x6dbc18: CheckStackOverflow
    //     0x6dbc18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dbc1c: cmp             SP, x16
    //     0x6dbc20: b.ls            #0x6dbda8
    // 0x6dbc24: r0 = Radius()
    //     0x6dbc24: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6dbc28: d0 = 12.000000
    //     0x6dbc28: fmov            d0, #12.00000000
    // 0x6dbc2c: stur            x0, [fp, #-0x10]
    // 0x6dbc30: StoreField: r0->field_7 = d0
    //     0x6dbc30: stur            d0, [x0, #7]
    // 0x6dbc34: StoreField: r0->field_f = d0
    //     0x6dbc34: stur            d0, [x0, #0xf]
    // 0x6dbc38: r0 = BorderRadius()
    //     0x6dbc38: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6dbc3c: mov             x3, x0
    // 0x6dbc40: ldur            x0, [fp, #-0x10]
    // 0x6dbc44: stur            x3, [fp, #-0x18]
    // 0x6dbc48: StoreField: r3->field_7 = r0
    //     0x6dbc48: stur            w0, [x3, #7]
    // 0x6dbc4c: StoreField: r3->field_b = r0
    //     0x6dbc4c: stur            w0, [x3, #0xb]
    // 0x6dbc50: StoreField: r3->field_f = r0
    //     0x6dbc50: stur            w0, [x3, #0xf]
    // 0x6dbc54: StoreField: r3->field_13 = r0
    //     0x6dbc54: stur            w0, [x3, #0x13]
    // 0x6dbc58: r1 = _ConstMap len:12
    //     0x6dbc58: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6dbc5c: r2 = 600
    //     0x6dbc5c: mov             x2, #0x258
    // 0x6dbc60: r0 = []()
    //     0x6dbc60: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6dbc64: stur            x0, [fp, #-0x10]
    // 0x6dbc68: cmp             w0, NULL
    // 0x6dbc6c: b.eq            #0x6dbdb0
    // 0x6dbc70: r0 = BorderSide()
    //     0x6dbc70: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6dbc74: mov             x1, x0
    // 0x6dbc78: ldur            x0, [fp, #-0x10]
    // 0x6dbc7c: stur            x1, [fp, #-0x20]
    // 0x6dbc80: StoreField: r1->field_7 = r0
    //     0x6dbc80: stur            w0, [x1, #7]
    // 0x6dbc84: d0 = 1.000000
    //     0x6dbc84: fmov            d0, #1.00000000
    // 0x6dbc88: StoreField: r1->field_b = d0
    //     0x6dbc88: stur            d0, [x1, #0xb]
    // 0x6dbc8c: r0 = Instance_BorderStyle
    //     0x6dbc8c: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6dbc90: ldr             x0, [x0, #0x738]
    // 0x6dbc94: StoreField: r1->field_13 = r0
    //     0x6dbc94: stur            w0, [x1, #0x13]
    // 0x6dbc98: d1 = -1.000000
    //     0x6dbc98: fmov            d1, #-1.00000000
    // 0x6dbc9c: ArrayStore: r1[0] = d1  ; List_8
    //     0x6dbc9c: stur            d1, [x1, #0x17]
    // 0x6dbca0: r0 = OutlineInputBorder()
    //     0x6dbca0: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6dbca4: mov             x1, x0
    // 0x6dbca8: ldur            x0, [fp, #-0x18]
    // 0x6dbcac: stur            x1, [fp, #-0x10]
    // 0x6dbcb0: StoreField: r1->field_13 = r0
    //     0x6dbcb0: stur            w0, [x1, #0x13]
    // 0x6dbcb4: d0 = 4.000000
    //     0x6dbcb4: fmov            d0, #4.00000000
    // 0x6dbcb8: StoreField: r1->field_b = d0
    //     0x6dbcb8: stur            d0, [x1, #0xb]
    // 0x6dbcbc: ldur            x0, [fp, #-0x20]
    // 0x6dbcc0: StoreField: r1->field_7 = r0
    //     0x6dbcc0: stur            w0, [x1, #7]
    // 0x6dbcc4: r0 = Radius()
    //     0x6dbcc4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6dbcc8: d0 = 12.000000
    //     0x6dbcc8: fmov            d0, #12.00000000
    // 0x6dbccc: stur            x0, [fp, #-0x18]
    // 0x6dbcd0: StoreField: r0->field_7 = d0
    //     0x6dbcd0: stur            d0, [x0, #7]
    // 0x6dbcd4: StoreField: r0->field_f = d0
    //     0x6dbcd4: stur            d0, [x0, #0xf]
    // 0x6dbcd8: r0 = BorderRadius()
    //     0x6dbcd8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6dbcdc: mov             x3, x0
    // 0x6dbce0: ldur            x0, [fp, #-0x18]
    // 0x6dbce4: stur            x3, [fp, #-0x20]
    // 0x6dbce8: StoreField: r3->field_7 = r0
    //     0x6dbce8: stur            w0, [x3, #7]
    // 0x6dbcec: StoreField: r3->field_b = r0
    //     0x6dbcec: stur            w0, [x3, #0xb]
    // 0x6dbcf0: StoreField: r3->field_f = r0
    //     0x6dbcf0: stur            w0, [x3, #0xf]
    // 0x6dbcf4: StoreField: r3->field_13 = r0
    //     0x6dbcf4: stur            w0, [x3, #0x13]
    // 0x6dbcf8: r1 = _ConstMap len:12
    //     0x6dbcf8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6dbcfc: r2 = 600
    //     0x6dbcfc: mov             x2, #0x258
    // 0x6dbd00: r0 = []()
    //     0x6dbd00: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6dbd04: stur            x0, [fp, #-0x18]
    // 0x6dbd08: cmp             w0, NULL
    // 0x6dbd0c: b.eq            #0x6dbdb4
    // 0x6dbd10: r0 = BorderSide()
    //     0x6dbd10: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6dbd14: mov             x1, x0
    // 0x6dbd18: ldur            x0, [fp, #-0x18]
    // 0x6dbd1c: stur            x1, [fp, #-0x28]
    // 0x6dbd20: StoreField: r1->field_7 = r0
    //     0x6dbd20: stur            w0, [x1, #7]
    // 0x6dbd24: d0 = 1.000000
    //     0x6dbd24: fmov            d0, #1.00000000
    // 0x6dbd28: StoreField: r1->field_b = d0
    //     0x6dbd28: stur            d0, [x1, #0xb]
    // 0x6dbd2c: r0 = Instance_BorderStyle
    //     0x6dbd2c: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6dbd30: ldr             x0, [x0, #0x738]
    // 0x6dbd34: StoreField: r1->field_13 = r0
    //     0x6dbd34: stur            w0, [x1, #0x13]
    // 0x6dbd38: d0 = -1.000000
    //     0x6dbd38: fmov            d0, #-1.00000000
    // 0x6dbd3c: ArrayStore: r1[0] = d0  ; List_8
    //     0x6dbd3c: stur            d0, [x1, #0x17]
    // 0x6dbd40: r0 = OutlineInputBorder()
    //     0x6dbd40: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x6dbd44: mov             x1, x0
    // 0x6dbd48: ldur            x0, [fp, #-0x20]
    // 0x6dbd4c: stur            x1, [fp, #-0x18]
    // 0x6dbd50: StoreField: r1->field_13 = r0
    //     0x6dbd50: stur            w0, [x1, #0x13]
    // 0x6dbd54: d0 = 4.000000
    //     0x6dbd54: fmov            d0, #4.00000000
    // 0x6dbd58: StoreField: r1->field_b = d0
    //     0x6dbd58: stur            d0, [x1, #0xb]
    // 0x6dbd5c: ldur            x0, [fp, #-0x28]
    // 0x6dbd60: StoreField: r1->field_7 = r0
    //     0x6dbd60: stur            w0, [x1, #7]
    // 0x6dbd64: r0 = InputDecoration()
    //     0x6dbd64: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6dbd68: ldur            x1, [fp, #-8]
    // 0x6dbd6c: StoreField: r0->field_13 = r1
    //     0x6dbd6c: stur            w1, [x0, #0x13]
    // 0x6dbd70: r1 = true
    //     0x6dbd70: add             x1, NULL, #0x20  ; true
    // 0x6dbd74: StoreField: r0->field_47 = r1
    //     0x6dbd74: stur            w1, [x0, #0x47]
    // 0x6dbd78: StoreField: r0->field_4b = r1
    //     0x6dbd78: stur            w1, [x0, #0x4b]
    // 0x6dbd7c: StoreField: r0->field_af = r1
    //     0x6dbd7c: stur            w1, [x0, #0xaf]
    // 0x6dbd80: r2 = Instance_Color
    //     0x6dbd80: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6dbd84: StoreField: r0->field_b3 = r2
    //     0x6dbd84: stur            w2, [x0, #0xb3]
    // 0x6dbd88: ldur            x2, [fp, #-0x18]
    // 0x6dbd8c: StoreField: r0->field_cf = r2
    //     0x6dbd8c: stur            w2, [x0, #0xcf]
    // 0x6dbd90: ldur            x2, [fp, #-0x10]
    // 0x6dbd94: StoreField: r0->field_d3 = r2
    //     0x6dbd94: stur            w2, [x0, #0xd3]
    // 0x6dbd98: StoreField: r0->field_d7 = r1
    //     0x6dbd98: stur            w1, [x0, #0xd7]
    // 0x6dbd9c: LeaveFrame
    //     0x6dbd9c: mov             SP, fp
    //     0x6dbda0: ldp             fp, lr, [SP], #0x10
    // 0x6dbda4: ret
    //     0x6dbda4: ret             
    // 0x6dbda8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dbda8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dbdac: b               #0x6dbc24
    // 0x6dbdb0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dbdb0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6dbdb4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6dbdb4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}
