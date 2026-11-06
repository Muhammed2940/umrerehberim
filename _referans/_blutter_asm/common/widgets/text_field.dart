// lib: , url: package:umrem_demo/common/widgets/text_field.dart

// class id: 1049497, size: 0x8
class :: {
}

// class id: 2935, size: 0x24, field offset: 0xc
//   const constructor, 
class AppTextField extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7dbaa8, size: 0x438
    // 0x7dbaa8: EnterFrame
    //     0x7dbaa8: stp             fp, lr, [SP, #-0x10]!
    //     0x7dbaac: mov             fp, SP
    // 0x7dbab0: AllocStack(0x80)
    //     0x7dbab0: sub             SP, SP, #0x80
    // 0x7dbab4: CheckStackOverflow
    //     0x7dbab4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7dbab8: cmp             SP, x16
    //     0x7dbabc: b.ls            #0x7dbecc
    // 0x7dbac0: LoadField: r2 = r1->field_b
    //     0x7dbac0: ldur            w2, [x1, #0xb]
    // 0x7dbac4: DecompressPointer r2
    //     0x7dbac4: add             x2, x2, HEAP, lsl #32
    // 0x7dbac8: stur            x2, [fp, #-0x18]
    // 0x7dbacc: LoadField: r0 = r1->field_1b
    //     0x7dbacc: ldur            w0, [x1, #0x1b]
    // 0x7dbad0: DecompressPointer r0
    //     0x7dbad0: add             x0, x0, HEAP, lsl #32
    // 0x7dbad4: stur            x0, [fp, #-0x10]
    // 0x7dbad8: LoadField: r3 = r1->field_1f
    //     0x7dbad8: ldur            w3, [x1, #0x1f]
    // 0x7dbadc: DecompressPointer r3
    //     0x7dbadc: add             x3, x3, HEAP, lsl #32
    // 0x7dbae0: stur            x3, [fp, #-8]
    // 0x7dbae4: r0 = TextStyle()
    //     0x7dbae4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7dbae8: mov             x3, x0
    // 0x7dbaec: r0 = true
    //     0x7dbaec: add             x0, NULL, #0x20  ; true
    // 0x7dbaf0: stur            x3, [fp, #-0x20]
    // 0x7dbaf4: StoreField: r3->field_7 = r0
    //     0x7dbaf4: stur            w0, [x3, #7]
    // 0x7dbaf8: r1 = Instance_Color
    //     0x7dbaf8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7dbafc: ldr             x1, [x1, #0xb88]
    // 0x7dbb00: StoreField: r3->field_b = r1
    //     0x7dbb00: stur            w1, [x3, #0xb]
    // 0x7dbb04: r1 = 16.000000
    //     0x7dbb04: add             x1, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7dbb08: ldr             x1, [x1, #0x358]
    // 0x7dbb0c: StoreField: r3->field_1f = r1
    //     0x7dbb0c: stur            w1, [x3, #0x1f]
    // 0x7dbb10: r1 = Instance_FontWeight
    //     0x7dbb10: add             x1, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7dbb14: ldr             x1, [x1, #0x990]
    // 0x7dbb18: StoreField: r3->field_23 = r1
    //     0x7dbb18: stur            w1, [x3, #0x23]
    // 0x7dbb1c: r1 = _ConstMap len:12
    //     0x7dbb1c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7dbb20: r2 = 1200
    //     0x7dbb20: mov             x2, #0x4b0
    // 0x7dbb24: r0 = []()
    //     0x7dbb24: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dbb28: stur            x0, [fp, #-0x28]
    // 0x7dbb2c: cmp             w0, NULL
    // 0x7dbb30: b.eq            #0x7dbed4
    // 0x7dbb34: r0 = TextStyle()
    //     0x7dbb34: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7dbb38: mov             x1, x0
    // 0x7dbb3c: r0 = true
    //     0x7dbb3c: add             x0, NULL, #0x20  ; true
    // 0x7dbb40: stur            x1, [fp, #-0x30]
    // 0x7dbb44: StoreField: r1->field_7 = r0
    //     0x7dbb44: stur            w0, [x1, #7]
    // 0x7dbb48: ldur            x2, [fp, #-0x28]
    // 0x7dbb4c: StoreField: r1->field_b = r2
    //     0x7dbb4c: stur            w2, [x1, #0xb]
    // 0x7dbb50: r2 = 15.000000
    //     0x7dbb50: add             x2, PP, #0x1b, lsl #12  ; [pp+0x1bf20] 15
    //     0x7dbb54: ldr             x2, [x2, #0xf20]
    // 0x7dbb58: StoreField: r1->field_1f = r2
    //     0x7dbb58: stur            w2, [x1, #0x1f]
    // 0x7dbb5c: r0 = Icon()
    //     0x7dbb5c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7dbb60: mov             x1, x0
    // 0x7dbb64: r0 = Instance_IconData
    //     0x7dbb64: add             x0, PP, #0x15, lsl #12  ; [pp+0x159f0] Obj!IconData@a0a181
    //     0x7dbb68: ldr             x0, [x0, #0x9f0]
    // 0x7dbb6c: stur            x1, [fp, #-0x28]
    // 0x7dbb70: StoreField: r1->field_b = r0
    //     0x7dbb70: stur            w0, [x1, #0xb]
    // 0x7dbb74: r0 = Instance_Color
    //     0x7dbb74: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7dbb78: ldr             x0, [x0, #0xb78]
    // 0x7dbb7c: StoreField: r1->field_23 = r0
    //     0x7dbb7c: stur            w0, [x1, #0x23]
    // 0x7dbb80: r0 = Radius()
    //     0x7dbb80: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dbb84: d0 = 16.000000
    //     0x7dbb84: fmov            d0, #16.00000000
    // 0x7dbb88: stur            x0, [fp, #-0x38]
    // 0x7dbb8c: StoreField: r0->field_7 = d0
    //     0x7dbb8c: stur            d0, [x0, #7]
    // 0x7dbb90: StoreField: r0->field_f = d0
    //     0x7dbb90: stur            d0, [x0, #0xf]
    // 0x7dbb94: r0 = BorderRadius()
    //     0x7dbb94: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dbb98: mov             x3, x0
    // 0x7dbb9c: ldur            x0, [fp, #-0x38]
    // 0x7dbba0: stur            x3, [fp, #-0x40]
    // 0x7dbba4: StoreField: r3->field_7 = r0
    //     0x7dbba4: stur            w0, [x3, #7]
    // 0x7dbba8: StoreField: r3->field_b = r0
    //     0x7dbba8: stur            w0, [x3, #0xb]
    // 0x7dbbac: StoreField: r3->field_f = r0
    //     0x7dbbac: stur            w0, [x3, #0xf]
    // 0x7dbbb0: StoreField: r3->field_13 = r0
    //     0x7dbbb0: stur            w0, [x3, #0x13]
    // 0x7dbbb4: r1 = _ConstMap len:12
    //     0x7dbbb4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7dbbb8: r2 = 600
    //     0x7dbbb8: mov             x2, #0x258
    // 0x7dbbbc: r0 = []()
    //     0x7dbbbc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dbbc0: stur            x0, [fp, #-0x38]
    // 0x7dbbc4: cmp             w0, NULL
    // 0x7dbbc8: b.eq            #0x7dbed8
    // 0x7dbbcc: r0 = BorderSide()
    //     0x7dbbcc: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7dbbd0: mov             x1, x0
    // 0x7dbbd4: ldur            x0, [fp, #-0x38]
    // 0x7dbbd8: stur            x1, [fp, #-0x48]
    // 0x7dbbdc: StoreField: r1->field_7 = r0
    //     0x7dbbdc: stur            w0, [x1, #7]
    // 0x7dbbe0: d0 = 1.000000
    //     0x7dbbe0: fmov            d0, #1.00000000
    // 0x7dbbe4: StoreField: r1->field_b = d0
    //     0x7dbbe4: stur            d0, [x1, #0xb]
    // 0x7dbbe8: r0 = Instance_BorderStyle
    //     0x7dbbe8: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7dbbec: ldr             x0, [x0, #0x738]
    // 0x7dbbf0: StoreField: r1->field_13 = r0
    //     0x7dbbf0: stur            w0, [x1, #0x13]
    // 0x7dbbf4: d0 = -1.000000
    //     0x7dbbf4: fmov            d0, #-1.00000000
    // 0x7dbbf8: ArrayStore: r1[0] = d0  ; List_8
    //     0x7dbbf8: stur            d0, [x1, #0x17]
    // 0x7dbbfc: r0 = OutlineInputBorder()
    //     0x7dbbfc: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7dbc00: mov             x1, x0
    // 0x7dbc04: ldur            x0, [fp, #-0x40]
    // 0x7dbc08: stur            x1, [fp, #-0x38]
    // 0x7dbc0c: StoreField: r1->field_13 = r0
    //     0x7dbc0c: stur            w0, [x1, #0x13]
    // 0x7dbc10: d0 = 4.000000
    //     0x7dbc10: fmov            d0, #4.00000000
    // 0x7dbc14: StoreField: r1->field_b = d0
    //     0x7dbc14: stur            d0, [x1, #0xb]
    // 0x7dbc18: ldur            x0, [fp, #-0x48]
    // 0x7dbc1c: StoreField: r1->field_7 = r0
    //     0x7dbc1c: stur            w0, [x1, #7]
    // 0x7dbc20: r0 = Radius()
    //     0x7dbc20: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dbc24: d0 = 16.000000
    //     0x7dbc24: fmov            d0, #16.00000000
    // 0x7dbc28: stur            x0, [fp, #-0x40]
    // 0x7dbc2c: StoreField: r0->field_7 = d0
    //     0x7dbc2c: stur            d0, [x0, #7]
    // 0x7dbc30: StoreField: r0->field_f = d0
    //     0x7dbc30: stur            d0, [x0, #0xf]
    // 0x7dbc34: r0 = BorderRadius()
    //     0x7dbc34: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dbc38: mov             x3, x0
    // 0x7dbc3c: ldur            x0, [fp, #-0x40]
    // 0x7dbc40: stur            x3, [fp, #-0x48]
    // 0x7dbc44: StoreField: r3->field_7 = r0
    //     0x7dbc44: stur            w0, [x3, #7]
    // 0x7dbc48: StoreField: r3->field_b = r0
    //     0x7dbc48: stur            w0, [x3, #0xb]
    // 0x7dbc4c: StoreField: r3->field_f = r0
    //     0x7dbc4c: stur            w0, [x3, #0xf]
    // 0x7dbc50: StoreField: r3->field_13 = r0
    //     0x7dbc50: stur            w0, [x3, #0x13]
    // 0x7dbc54: r1 = _ConstMap len:12
    //     0x7dbc54: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7dbc58: r2 = 600
    //     0x7dbc58: mov             x2, #0x258
    // 0x7dbc5c: r0 = []()
    //     0x7dbc5c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7dbc60: stur            x0, [fp, #-0x40]
    // 0x7dbc64: cmp             w0, NULL
    // 0x7dbc68: b.eq            #0x7dbedc
    // 0x7dbc6c: r0 = BorderSide()
    //     0x7dbc6c: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7dbc70: mov             x1, x0
    // 0x7dbc74: ldur            x0, [fp, #-0x40]
    // 0x7dbc78: stur            x1, [fp, #-0x50]
    // 0x7dbc7c: StoreField: r1->field_7 = r0
    //     0x7dbc7c: stur            w0, [x1, #7]
    // 0x7dbc80: d0 = 1.500000
    //     0x7dbc80: fmov            d0, #1.50000000
    // 0x7dbc84: StoreField: r1->field_b = d0
    //     0x7dbc84: stur            d0, [x1, #0xb]
    // 0x7dbc88: r0 = Instance_BorderStyle
    //     0x7dbc88: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7dbc8c: ldr             x0, [x0, #0x738]
    // 0x7dbc90: StoreField: r1->field_13 = r0
    //     0x7dbc90: stur            w0, [x1, #0x13]
    // 0x7dbc94: d0 = -1.000000
    //     0x7dbc94: fmov            d0, #-1.00000000
    // 0x7dbc98: ArrayStore: r1[0] = d0  ; List_8
    //     0x7dbc98: stur            d0, [x1, #0x17]
    // 0x7dbc9c: r0 = OutlineInputBorder()
    //     0x7dbc9c: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7dbca0: mov             x1, x0
    // 0x7dbca4: ldur            x0, [fp, #-0x48]
    // 0x7dbca8: stur            x1, [fp, #-0x40]
    // 0x7dbcac: StoreField: r1->field_13 = r0
    //     0x7dbcac: stur            w0, [x1, #0x13]
    // 0x7dbcb0: d0 = 4.000000
    //     0x7dbcb0: fmov            d0, #4.00000000
    // 0x7dbcb4: StoreField: r1->field_b = d0
    //     0x7dbcb4: stur            d0, [x1, #0xb]
    // 0x7dbcb8: ldur            x0, [fp, #-0x50]
    // 0x7dbcbc: StoreField: r1->field_7 = r0
    //     0x7dbcbc: stur            w0, [x1, #7]
    // 0x7dbcc0: r0 = Radius()
    //     0x7dbcc0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dbcc4: d0 = 16.000000
    //     0x7dbcc4: fmov            d0, #16.00000000
    // 0x7dbcc8: stur            x0, [fp, #-0x48]
    // 0x7dbccc: StoreField: r0->field_7 = d0
    //     0x7dbccc: stur            d0, [x0, #7]
    // 0x7dbcd0: StoreField: r0->field_f = d0
    //     0x7dbcd0: stur            d0, [x0, #0xf]
    // 0x7dbcd4: r0 = BorderRadius()
    //     0x7dbcd4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dbcd8: mov             x1, x0
    // 0x7dbcdc: ldur            x0, [fp, #-0x48]
    // 0x7dbce0: stur            x1, [fp, #-0x50]
    // 0x7dbce4: StoreField: r1->field_7 = r0
    //     0x7dbce4: stur            w0, [x1, #7]
    // 0x7dbce8: StoreField: r1->field_b = r0
    //     0x7dbce8: stur            w0, [x1, #0xb]
    // 0x7dbcec: StoreField: r1->field_f = r0
    //     0x7dbcec: stur            w0, [x1, #0xf]
    // 0x7dbcf0: StoreField: r1->field_13 = r0
    //     0x7dbcf0: stur            w0, [x1, #0x13]
    // 0x7dbcf4: r0 = BorderSide()
    //     0x7dbcf4: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7dbcf8: mov             x1, x0
    // 0x7dbcfc: r0 = Instance_Color
    //     0x7dbcfc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7dbd00: ldr             x0, [x0, #0xb78]
    // 0x7dbd04: stur            x1, [fp, #-0x48]
    // 0x7dbd08: StoreField: r1->field_7 = r0
    //     0x7dbd08: stur            w0, [x1, #7]
    // 0x7dbd0c: d0 = 2.000000
    //     0x7dbd0c: fmov            d0, #2.00000000
    // 0x7dbd10: StoreField: r1->field_b = d0
    //     0x7dbd10: stur            d0, [x1, #0xb]
    // 0x7dbd14: r0 = Instance_BorderStyle
    //     0x7dbd14: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7dbd18: ldr             x0, [x0, #0x738]
    // 0x7dbd1c: StoreField: r1->field_13 = r0
    //     0x7dbd1c: stur            w0, [x1, #0x13]
    // 0x7dbd20: d0 = -1.000000
    //     0x7dbd20: fmov            d0, #-1.00000000
    // 0x7dbd24: ArrayStore: r1[0] = d0  ; List_8
    //     0x7dbd24: stur            d0, [x1, #0x17]
    // 0x7dbd28: r0 = OutlineInputBorder()
    //     0x7dbd28: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7dbd2c: mov             x1, x0
    // 0x7dbd30: ldur            x0, [fp, #-0x50]
    // 0x7dbd34: stur            x1, [fp, #-0x58]
    // 0x7dbd38: StoreField: r1->field_13 = r0
    //     0x7dbd38: stur            w0, [x1, #0x13]
    // 0x7dbd3c: d0 = 4.000000
    //     0x7dbd3c: fmov            d0, #4.00000000
    // 0x7dbd40: StoreField: r1->field_b = d0
    //     0x7dbd40: stur            d0, [x1, #0xb]
    // 0x7dbd44: ldur            x0, [fp, #-0x48]
    // 0x7dbd48: StoreField: r1->field_7 = r0
    //     0x7dbd48: stur            w0, [x1, #7]
    // 0x7dbd4c: r0 = Radius()
    //     0x7dbd4c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dbd50: d0 = 16.000000
    //     0x7dbd50: fmov            d0, #16.00000000
    // 0x7dbd54: stur            x0, [fp, #-0x48]
    // 0x7dbd58: StoreField: r0->field_7 = d0
    //     0x7dbd58: stur            d0, [x0, #7]
    // 0x7dbd5c: StoreField: r0->field_f = d0
    //     0x7dbd5c: stur            d0, [x0, #0xf]
    // 0x7dbd60: r0 = BorderRadius()
    //     0x7dbd60: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dbd64: mov             x1, x0
    // 0x7dbd68: ldur            x0, [fp, #-0x48]
    // 0x7dbd6c: stur            x1, [fp, #-0x50]
    // 0x7dbd70: StoreField: r1->field_7 = r0
    //     0x7dbd70: stur            w0, [x1, #7]
    // 0x7dbd74: StoreField: r1->field_b = r0
    //     0x7dbd74: stur            w0, [x1, #0xb]
    // 0x7dbd78: StoreField: r1->field_f = r0
    //     0x7dbd78: stur            w0, [x1, #0xf]
    // 0x7dbd7c: StoreField: r1->field_13 = r0
    //     0x7dbd7c: stur            w0, [x1, #0x13]
    // 0x7dbd80: r0 = OutlineInputBorder()
    //     0x7dbd80: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7dbd84: mov             x1, x0
    // 0x7dbd88: ldur            x0, [fp, #-0x50]
    // 0x7dbd8c: stur            x1, [fp, #-0x48]
    // 0x7dbd90: StoreField: r1->field_13 = r0
    //     0x7dbd90: stur            w0, [x1, #0x13]
    // 0x7dbd94: d0 = 4.000000
    //     0x7dbd94: fmov            d0, #4.00000000
    // 0x7dbd98: StoreField: r1->field_b = d0
    //     0x7dbd98: stur            d0, [x1, #0xb]
    // 0x7dbd9c: r0 = Instance_BorderSide
    //     0x7dbd9c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c7a8] Obj!BorderSide@a195b1
    //     0x7dbda0: ldr             x0, [x0, #0x7a8]
    // 0x7dbda4: StoreField: r1->field_7 = r0
    //     0x7dbda4: stur            w0, [x1, #7]
    // 0x7dbda8: r0 = Radius()
    //     0x7dbda8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7dbdac: d0 = 16.000000
    //     0x7dbdac: fmov            d0, #16.00000000
    // 0x7dbdb0: stur            x0, [fp, #-0x50]
    // 0x7dbdb4: StoreField: r0->field_7 = d0
    //     0x7dbdb4: stur            d0, [x0, #7]
    // 0x7dbdb8: StoreField: r0->field_f = d0
    //     0x7dbdb8: stur            d0, [x0, #0xf]
    // 0x7dbdbc: r0 = BorderRadius()
    //     0x7dbdbc: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7dbdc0: mov             x1, x0
    // 0x7dbdc4: ldur            x0, [fp, #-0x50]
    // 0x7dbdc8: stur            x1, [fp, #-0x60]
    // 0x7dbdcc: StoreField: r1->field_7 = r0
    //     0x7dbdcc: stur            w0, [x1, #7]
    // 0x7dbdd0: StoreField: r1->field_b = r0
    //     0x7dbdd0: stur            w0, [x1, #0xb]
    // 0x7dbdd4: StoreField: r1->field_f = r0
    //     0x7dbdd4: stur            w0, [x1, #0xf]
    // 0x7dbdd8: StoreField: r1->field_13 = r0
    //     0x7dbdd8: stur            w0, [x1, #0x13]
    // 0x7dbddc: r0 = OutlineInputBorder()
    //     0x7dbddc: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7dbde0: mov             x1, x0
    // 0x7dbde4: ldur            x0, [fp, #-0x60]
    // 0x7dbde8: stur            x1, [fp, #-0x50]
    // 0x7dbdec: StoreField: r1->field_13 = r0
    //     0x7dbdec: stur            w0, [x1, #0x13]
    // 0x7dbdf0: d0 = 4.000000
    //     0x7dbdf0: fmov            d0, #4.00000000
    // 0x7dbdf4: StoreField: r1->field_b = d0
    //     0x7dbdf4: stur            d0, [x1, #0xb]
    // 0x7dbdf8: r0 = Instance_BorderSide
    //     0x7dbdf8: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c7b0] Obj!BorderSide@a19591
    //     0x7dbdfc: ldr             x0, [x0, #0x7b0]
    // 0x7dbe00: StoreField: r1->field_7 = r0
    //     0x7dbe00: stur            w0, [x1, #7]
    // 0x7dbe04: r0 = InputDecoration()
    //     0x7dbe04: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x7dbe08: mov             x2, x0
    // 0x7dbe0c: r0 = "TC Kimlik No"
    //     0x7dbe0c: add             x0, PP, #0x18, lsl #12  ; [pp+0x186b8] "TC Kimlik No"
    //     0x7dbe10: ldr             x0, [x0, #0x6b8]
    // 0x7dbe14: stur            x2, [fp, #-0x60]
    // 0x7dbe18: StoreField: r2->field_13 = r0
    //     0x7dbe18: stur            w0, [x2, #0x13]
    // 0x7dbe1c: ldur            x0, [fp, #-0x30]
    // 0x7dbe20: ArrayStore: r2[0] = r0  ; List_4
    //     0x7dbe20: stur            w0, [x2, #0x17]
    // 0x7dbe24: r0 = true
    //     0x7dbe24: add             x0, NULL, #0x20  ; true
    // 0x7dbe28: StoreField: r2->field_47 = r0
    //     0x7dbe28: stur            w0, [x2, #0x47]
    // 0x7dbe2c: StoreField: r2->field_4b = r0
    //     0x7dbe2c: stur            w0, [x2, #0x4b]
    // 0x7dbe30: r1 = Instance_EdgeInsets
    //     0x7dbe30: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c7b8] Obj!EdgeInsets@a0c981
    //     0x7dbe34: ldr             x1, [x1, #0x7b8]
    // 0x7dbe38: StoreField: r2->field_6b = r1
    //     0x7dbe38: stur            w1, [x2, #0x6b]
    // 0x7dbe3c: ldur            x1, [fp, #-0x28]
    // 0x7dbe40: StoreField: r2->field_73 = r1
    //     0x7dbe40: stur            w1, [x2, #0x73]
    // 0x7dbe44: StoreField: r2->field_af = r0
    //     0x7dbe44: stur            w0, [x2, #0xaf]
    // 0x7dbe48: r1 = Instance_Color
    //     0x7dbe48: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7dbe4c: StoreField: r2->field_b3 = r1
    //     0x7dbe4c: stur            w1, [x2, #0xb3]
    // 0x7dbe50: ldur            x1, [fp, #-0x48]
    // 0x7dbe54: StoreField: r2->field_bf = r1
    //     0x7dbe54: stur            w1, [x2, #0xbf]
    // 0x7dbe58: ldur            x1, [fp, #-0x58]
    // 0x7dbe5c: StoreField: r2->field_c3 = r1
    //     0x7dbe5c: stur            w1, [x2, #0xc3]
    // 0x7dbe60: ldur            x1, [fp, #-0x50]
    // 0x7dbe64: StoreField: r2->field_c7 = r1
    //     0x7dbe64: stur            w1, [x2, #0xc7]
    // 0x7dbe68: ldur            x1, [fp, #-0x40]
    // 0x7dbe6c: StoreField: r2->field_cf = r1
    //     0x7dbe6c: stur            w1, [x2, #0xcf]
    // 0x7dbe70: ldur            x1, [fp, #-0x38]
    // 0x7dbe74: StoreField: r2->field_d3 = r1
    //     0x7dbe74: stur            w1, [x2, #0xd3]
    // 0x7dbe78: StoreField: r2->field_d7 = r0
    //     0x7dbe78: stur            w0, [x2, #0xd7]
    // 0x7dbe7c: r1 = <String>
    //     0x7dbe7c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7dbe80: r0 = TextFormField()
    //     0x7dbe80: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x7dbe84: stur            x0, [fp, #-0x28]
    // 0x7dbe88: r16 = Instance_TextInputType
    //     0x7dbe88: add             x16, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x7dbe8c: ldr             x16, [x16, #0x948]
    // 0x7dbe90: ldur            lr, [fp, #-0x10]
    // 0x7dbe94: stp             lr, x16, [SP, #0x10]
    // 0x7dbe98: ldur            x16, [fp, #-8]
    // 0x7dbe9c: ldur            lr, [fp, #-0x20]
    // 0x7dbea0: stp             lr, x16, [SP]
    // 0x7dbea4: mov             x1, x0
    // 0x7dbea8: ldur            x2, [fp, #-0x18]
    // 0x7dbeac: ldur            x3, [fp, #-0x60]
    // 0x7dbeb0: r4 = const [0, 0x7, 0x4, 0x3, inputFormatters, 0x4, keyboardType, 0x3, style, 0x6, validator, 0x5, null]
    //     0x7dbeb0: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c7c0] List(13) [0, 0x7, 0x4, 0x3, "inputFormatters", 0x4, "keyboardType", 0x3, "style", 0x6, "validator", 0x5, Null]
    //     0x7dbeb4: ldr             x4, [x4, #0x7c0]
    // 0x7dbeb8: r0 = TextFormField()
    //     0x7dbeb8: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x7dbebc: ldur            x0, [fp, #-0x28]
    // 0x7dbec0: LeaveFrame
    //     0x7dbec0: mov             SP, fp
    //     0x7dbec4: ldp             fp, lr, [SP], #0x10
    // 0x7dbec8: ret
    //     0x7dbec8: ret             
    // 0x7dbecc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dbecc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dbed0: b               #0x7dbac0
    // 0x7dbed4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7dbed4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7dbed8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7dbed8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7dbedc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7dbedc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}
