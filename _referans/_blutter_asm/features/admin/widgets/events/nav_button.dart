// lib: , url: package:umrem_demo/features/admin/widgets/events/nav_button.dart

// class id: 1049551, size: 0x8
class :: {
}

// class id: 2917, size: 0x18, field offset: 0xc
//   const constructor, 
class NavButton extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e5bb4, size: 0x2ac
    // 0x7e5bb4: EnterFrame
    //     0x7e5bb4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5bb8: mov             fp, SP
    // 0x7e5bbc: AllocStack(0x50)
    //     0x7e5bbc: sub             SP, SP, #0x50
    // 0x7e5bc0: SetupParameters(NavButton this /* r1 => r1, fp-0x10 */)
    //     0x7e5bc0: stur            x1, [fp, #-0x10]
    // 0x7e5bc4: CheckStackOverflow
    //     0x7e5bc4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5bc8: cmp             SP, x16
    //     0x7e5bcc: b.ls            #0x7e5e50
    // 0x7e5bd0: LoadField: r0 = r1->field_13
    //     0x7e5bd0: ldur            w0, [x1, #0x13]
    // 0x7e5bd4: DecompressPointer r0
    //     0x7e5bd4: add             x0, x0, HEAP, lsl #32
    // 0x7e5bd8: stur            x0, [fp, #-8]
    // 0x7e5bdc: r0 = Radius()
    //     0x7e5bdc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e5be0: d0 = 12.000000
    //     0x7e5be0: fmov            d0, #12.00000000
    // 0x7e5be4: stur            x0, [fp, #-0x18]
    // 0x7e5be8: StoreField: r0->field_7 = d0
    //     0x7e5be8: stur            d0, [x0, #7]
    // 0x7e5bec: StoreField: r0->field_f = d0
    //     0x7e5bec: stur            d0, [x0, #0xf]
    // 0x7e5bf0: r0 = BorderRadius()
    //     0x7e5bf0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e5bf4: mov             x1, x0
    // 0x7e5bf8: ldur            x0, [fp, #-0x18]
    // 0x7e5bfc: stur            x1, [fp, #-0x20]
    // 0x7e5c00: StoreField: r1->field_7 = r0
    //     0x7e5c00: stur            w0, [x1, #7]
    // 0x7e5c04: StoreField: r1->field_b = r0
    //     0x7e5c04: stur            w0, [x1, #0xb]
    // 0x7e5c08: StoreField: r1->field_f = r0
    //     0x7e5c08: stur            w0, [x1, #0xf]
    // 0x7e5c0c: StoreField: r1->field_13 = r0
    //     0x7e5c0c: stur            w0, [x1, #0x13]
    // 0x7e5c10: r0 = Radius()
    //     0x7e5c10: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e5c14: d0 = 12.000000
    //     0x7e5c14: fmov            d0, #12.00000000
    // 0x7e5c18: stur            x0, [fp, #-0x18]
    // 0x7e5c1c: StoreField: r0->field_7 = d0
    //     0x7e5c1c: stur            d0, [x0, #7]
    // 0x7e5c20: StoreField: r0->field_f = d0
    //     0x7e5c20: stur            d0, [x0, #0xf]
    // 0x7e5c24: r0 = BorderRadius()
    //     0x7e5c24: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e5c28: mov             x3, x0
    // 0x7e5c2c: ldur            x0, [fp, #-0x18]
    // 0x7e5c30: stur            x3, [fp, #-0x28]
    // 0x7e5c34: StoreField: r3->field_7 = r0
    //     0x7e5c34: stur            w0, [x3, #7]
    // 0x7e5c38: StoreField: r3->field_b = r0
    //     0x7e5c38: stur            w0, [x3, #0xb]
    // 0x7e5c3c: StoreField: r3->field_f = r0
    //     0x7e5c3c: stur            w0, [x3, #0xf]
    // 0x7e5c40: StoreField: r3->field_13 = r0
    //     0x7e5c40: stur            w0, [x3, #0x13]
    // 0x7e5c44: r1 = _ConstMap len:12
    //     0x7e5c44: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e5c48: r2 = 600
    //     0x7e5c48: mov             x2, #0x258
    // 0x7e5c4c: r0 = []()
    //     0x7e5c4c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e5c50: cmp             w0, NULL
    // 0x7e5c54: b.eq            #0x7e5e58
    // 0x7e5c58: str             x0, [SP]
    // 0x7e5c5c: r1 = Null
    //     0x7e5c5c: mov             x1, NULL
    // 0x7e5c60: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7e5c60: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7e5c64: ldr             x4, [x4, #0x788]
    // 0x7e5c68: r0 = Border.all()
    //     0x7e5c68: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7e5c6c: r1 = _ConstMap len:12
    //     0x7e5c6c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e5c70: r2 = 200
    //     0x7e5c70: mov             x2, #0xc8
    // 0x7e5c74: stur            x0, [fp, #-0x18]
    // 0x7e5c78: r0 = []()
    //     0x7e5c78: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e5c7c: stur            x0, [fp, #-0x30]
    // 0x7e5c80: cmp             w0, NULL
    // 0x7e5c84: b.eq            #0x7e5e5c
    // 0x7e5c88: r0 = BoxDecoration()
    //     0x7e5c88: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e5c8c: mov             x1, x0
    // 0x7e5c90: ldur            x0, [fp, #-0x30]
    // 0x7e5c94: stur            x1, [fp, #-0x38]
    // 0x7e5c98: StoreField: r1->field_7 = r0
    //     0x7e5c98: stur            w0, [x1, #7]
    // 0x7e5c9c: ldur            x0, [fp, #-0x18]
    // 0x7e5ca0: StoreField: r1->field_f = r0
    //     0x7e5ca0: stur            w0, [x1, #0xf]
    // 0x7e5ca4: ldur            x0, [fp, #-0x28]
    // 0x7e5ca8: StoreField: r1->field_13 = r0
    //     0x7e5ca8: stur            w0, [x1, #0x13]
    // 0x7e5cac: r0 = Instance_BoxShape
    //     0x7e5cac: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e5cb0: ldr             x0, [x0, #0x1c8]
    // 0x7e5cb4: StoreField: r1->field_23 = r0
    //     0x7e5cb4: stur            w0, [x1, #0x23]
    // 0x7e5cb8: ldur            x2, [fp, #-0x10]
    // 0x7e5cbc: LoadField: r3 = r2->field_b
    //     0x7e5cbc: ldur            w3, [x2, #0xb]
    // 0x7e5cc0: DecompressPointer r3
    //     0x7e5cc0: add             x3, x3, HEAP, lsl #32
    // 0x7e5cc4: stur            x3, [fp, #-0x18]
    // 0x7e5cc8: r0 = Icon()
    //     0x7e5cc8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e5ccc: mov             x1, x0
    // 0x7e5cd0: ldur            x0, [fp, #-0x18]
    // 0x7e5cd4: stur            x1, [fp, #-0x28]
    // 0x7e5cd8: StoreField: r1->field_b = r0
    //     0x7e5cd8: stur            w0, [x1, #0xb]
    // 0x7e5cdc: r0 = 22.000000
    //     0x7e5cdc: add             x0, PP, #0x15, lsl #12  ; [pp+0x15290] 22
    //     0x7e5ce0: ldr             x0, [x0, #0x290]
    // 0x7e5ce4: StoreField: r1->field_f = r0
    //     0x7e5ce4: stur            w0, [x1, #0xf]
    // 0x7e5ce8: r0 = Instance_Color
    //     0x7e5ce8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e5cec: ldr             x0, [x0, #0xb78]
    // 0x7e5cf0: StoreField: r1->field_23 = r0
    //     0x7e5cf0: stur            w0, [x1, #0x23]
    // 0x7e5cf4: ldur            x0, [fp, #-0x10]
    // 0x7e5cf8: LoadField: r2 = r0->field_f
    //     0x7e5cf8: ldur            w2, [x0, #0xf]
    // 0x7e5cfc: DecompressPointer r2
    //     0x7e5cfc: add             x2, x2, HEAP, lsl #32
    // 0x7e5d00: stur            x2, [fp, #-0x18]
    // 0x7e5d04: r0 = Text()
    //     0x7e5d04: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e5d08: mov             x3, x0
    // 0x7e5d0c: ldur            x0, [fp, #-0x18]
    // 0x7e5d10: stur            x3, [fp, #-0x10]
    // 0x7e5d14: StoreField: r3->field_b = r0
    //     0x7e5d14: stur            w0, [x3, #0xb]
    // 0x7e5d18: r0 = Instance_TextStyle
    //     0x7e5d18: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc88] Obj!TextStyle@a18d31
    //     0x7e5d1c: ldr             x0, [x0, #0xc88]
    // 0x7e5d20: StoreField: r3->field_13 = r0
    //     0x7e5d20: stur            w0, [x3, #0x13]
    // 0x7e5d24: r1 = Null
    //     0x7e5d24: mov             x1, NULL
    // 0x7e5d28: r2 = 6
    //     0x7e5d28: mov             x2, #6
    // 0x7e5d2c: r0 = AllocateArray()
    //     0x7e5d2c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e5d30: mov             x2, x0
    // 0x7e5d34: ldur            x0, [fp, #-0x28]
    // 0x7e5d38: stur            x2, [fp, #-0x18]
    // 0x7e5d3c: StoreField: r2->field_f = r0
    //     0x7e5d3c: stur            w0, [x2, #0xf]
    // 0x7e5d40: r16 = Instance_SizedBox
    //     0x7e5d40: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7e5d44: ldr             x16, [x16, #0x368]
    // 0x7e5d48: StoreField: r2->field_13 = r16
    //     0x7e5d48: stur            w16, [x2, #0x13]
    // 0x7e5d4c: ldur            x0, [fp, #-0x10]
    // 0x7e5d50: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e5d50: stur            w0, [x2, #0x17]
    // 0x7e5d54: r1 = <Widget>
    //     0x7e5d54: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e5d58: r0 = AllocateGrowableArray()
    //     0x7e5d58: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e5d5c: mov             x1, x0
    // 0x7e5d60: ldur            x0, [fp, #-0x18]
    // 0x7e5d64: stur            x1, [fp, #-0x10]
    // 0x7e5d68: StoreField: r1->field_f = r0
    //     0x7e5d68: stur            w0, [x1, #0xf]
    // 0x7e5d6c: r0 = 6
    //     0x7e5d6c: mov             x0, #6
    // 0x7e5d70: StoreField: r1->field_b = r0
    //     0x7e5d70: stur            w0, [x1, #0xb]
    // 0x7e5d74: r0 = Row()
    //     0x7e5d74: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e5d78: mov             x1, x0
    // 0x7e5d7c: r0 = Instance_Axis
    //     0x7e5d7c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e5d80: stur            x1, [fp, #-0x18]
    // 0x7e5d84: StoreField: r1->field_f = r0
    //     0x7e5d84: stur            w0, [x1, #0xf]
    // 0x7e5d88: r0 = Instance_MainAxisAlignment
    //     0x7e5d88: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7e5d8c: ldr             x0, [x0, #0x328]
    // 0x7e5d90: StoreField: r1->field_13 = r0
    //     0x7e5d90: stur            w0, [x1, #0x13]
    // 0x7e5d94: r0 = Instance_MainAxisSize
    //     0x7e5d94: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e5d98: ldr             x0, [x0, #0x330]
    // 0x7e5d9c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e5d9c: stur            w0, [x1, #0x17]
    // 0x7e5da0: r0 = Instance_CrossAxisAlignment
    //     0x7e5da0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e5da4: ldr             x0, [x0, #0x338]
    // 0x7e5da8: StoreField: r1->field_1b = r0
    //     0x7e5da8: stur            w0, [x1, #0x1b]
    // 0x7e5dac: r0 = Instance_VerticalDirection
    //     0x7e5dac: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e5db0: ldr             x0, [x0, #0x340]
    // 0x7e5db4: StoreField: r1->field_23 = r0
    //     0x7e5db4: stur            w0, [x1, #0x23]
    // 0x7e5db8: r0 = Instance_Clip
    //     0x7e5db8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e5dbc: ldr             x0, [x0, #0x348]
    // 0x7e5dc0: StoreField: r1->field_2b = r0
    //     0x7e5dc0: stur            w0, [x1, #0x2b]
    // 0x7e5dc4: StoreField: r1->field_2f = rZR
    //     0x7e5dc4: stur            xzr, [x1, #0x2f]
    // 0x7e5dc8: ldur            x0, [fp, #-0x10]
    // 0x7e5dcc: StoreField: r1->field_b = r0
    //     0x7e5dcc: stur            w0, [x1, #0xb]
    // 0x7e5dd0: r0 = Container()
    //     0x7e5dd0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e5dd4: stur            x0, [fp, #-0x10]
    // 0x7e5dd8: r16 = Instance_EdgeInsets
    //     0x7e5dd8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7e5ddc: ldr             x16, [x16, #0x370]
    // 0x7e5de0: ldur            lr, [fp, #-0x38]
    // 0x7e5de4: stp             lr, x16, [SP, #8]
    // 0x7e5de8: ldur            x16, [fp, #-0x18]
    // 0x7e5dec: str             x16, [SP]
    // 0x7e5df0: mov             x1, x0
    // 0x7e5df4: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e5df4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e5df8: ldr             x4, [x4, #0x1e8]
    // 0x7e5dfc: r0 = Container()
    //     0x7e5dfc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e5e00: r0 = InkWell()
    //     0x7e5e00: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7e5e04: ldur            x1, [fp, #-0x10]
    // 0x7e5e08: StoreField: r0->field_b = r1
    //     0x7e5e08: stur            w1, [x0, #0xb]
    // 0x7e5e0c: ldur            x1, [fp, #-8]
    // 0x7e5e10: StoreField: r0->field_f = r1
    //     0x7e5e10: stur            w1, [x0, #0xf]
    // 0x7e5e14: r1 = true
    //     0x7e5e14: add             x1, NULL, #0x20  ; true
    // 0x7e5e18: StoreField: r0->field_47 = r1
    //     0x7e5e18: stur            w1, [x0, #0x47]
    // 0x7e5e1c: r2 = Instance_BoxShape
    //     0x7e5e1c: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e5e20: ldr             x2, [x2, #0x1c8]
    // 0x7e5e24: StoreField: r0->field_4b = r2
    //     0x7e5e24: stur            w2, [x0, #0x4b]
    // 0x7e5e28: ldur            x2, [fp, #-0x20]
    // 0x7e5e2c: StoreField: r0->field_53 = r2
    //     0x7e5e2c: stur            w2, [x0, #0x53]
    // 0x7e5e30: StoreField: r0->field_73 = r1
    //     0x7e5e30: stur            w1, [x0, #0x73]
    // 0x7e5e34: r2 = false
    //     0x7e5e34: add             x2, NULL, #0x30  ; false
    // 0x7e5e38: StoreField: r0->field_77 = r2
    //     0x7e5e38: stur            w2, [x0, #0x77]
    // 0x7e5e3c: StoreField: r0->field_87 = r1
    //     0x7e5e3c: stur            w1, [x0, #0x87]
    // 0x7e5e40: StoreField: r0->field_7f = r2
    //     0x7e5e40: stur            w2, [x0, #0x7f]
    // 0x7e5e44: LeaveFrame
    //     0x7e5e44: mov             SP, fp
    //     0x7e5e48: ldp             fp, lr, [SP], #0x10
    // 0x7e5e4c: ret
    //     0x7e5e4c: ret             
    // 0x7e5e50: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5e50: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5e54: b               #0x7e5bd0
    // 0x7e5e58: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5e58: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e5e5c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e5e5c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}
