// lib: , url: package:umrem_demo/common/widgets/empty_state_widget.dart

// class id: 1049496, size: 0x8
class :: {
}

// class id: 2936, size: 0x28, field offset: 0xc
//   const constructor, 
class EmptyStateWidget extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7db894, size: 0x214
    // 0x7db894: EnterFrame
    //     0x7db894: stp             fp, lr, [SP, #-0x10]!
    //     0x7db898: mov             fp, SP
    // 0x7db89c: AllocStack(0x30)
    //     0x7db89c: sub             SP, SP, #0x30
    // 0x7db8a0: SetupParameters(EmptyStateWidget this /* r1 => r0, fp-0x8 */, dynamic _ /* r2 => r1, fp-0x10 */)
    //     0x7db8a0: mov             x0, x1
    //     0x7db8a4: stur            x1, [fp, #-8]
    //     0x7db8a8: mov             x1, x2
    //     0x7db8ac: stur            x2, [fp, #-0x10]
    // 0x7db8b0: CheckStackOverflow
    //     0x7db8b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7db8b4: cmp             SP, x16
    //     0x7db8b8: b.ls            #0x7dbaa0
    // 0x7db8bc: r0 = Icon()
    //     0x7db8bc: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7db8c0: mov             x2, x0
    // 0x7db8c4: r0 = Instance_IconData
    //     0x7db8c4: add             x0, PP, #0x19, lsl #12  ; [pp+0x19700] Obj!IconData@a09ec1
    //     0x7db8c8: ldr             x0, [x0, #0x700]
    // 0x7db8cc: stur            x2, [fp, #-0x18]
    // 0x7db8d0: StoreField: r2->field_b = r0
    //     0x7db8d0: stur            w0, [x2, #0xb]
    // 0x7db8d4: r0 = 64.000000
    //     0x7db8d4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f40] 64
    //     0x7db8d8: ldr             x0, [x0, #0xf40]
    // 0x7db8dc: StoreField: r2->field_f = r0
    //     0x7db8dc: stur            w0, [x2, #0xf]
    // 0x7db8e0: r0 = Instance_Color
    //     0x7db8e0: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c7c8] Obj!Color@a25871
    //     0x7db8e4: ldr             x0, [x0, #0x7c8]
    // 0x7db8e8: StoreField: r2->field_23 = r0
    //     0x7db8e8: stur            w0, [x2, #0x23]
    // 0x7db8ec: ldur            x1, [fp, #-0x10]
    // 0x7db8f0: r0 = of()
    //     0x7db8f0: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7db8f4: LoadField: r1 = r0->field_87
    //     0x7db8f4: ldur            w1, [x0, #0x87]
    // 0x7db8f8: DecompressPointer r1
    //     0x7db8f8: add             x1, x1, HEAP, lsl #32
    // 0x7db8fc: LoadField: r0 = r1->field_23
    //     0x7db8fc: ldur            w0, [x1, #0x23]
    // 0x7db900: DecompressPointer r0
    //     0x7db900: add             x0, x0, HEAP, lsl #32
    // 0x7db904: r16 = Instance_FontWeight
    //     0x7db904: add             x16, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7db908: ldr             x16, [x16, #0x990]
    // 0x7db90c: r30 = Instance_Color
    //     0x7db90c: add             lr, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7db910: ldr             lr, [lr, #0xb88]
    // 0x7db914: stp             lr, x16, [SP]
    // 0x7db918: mov             x1, x0
    // 0x7db91c: r4 = const [0, 0x3, 0x2, 0x1, color, 0x2, fontWeight, 0x1, null]
    //     0x7db91c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12250] List(9) [0, 0x3, 0x2, 0x1, "color", 0x2, "fontWeight", 0x1, Null]
    //     0x7db920: ldr             x4, [x4, #0x250]
    // 0x7db924: r0 = copyWith()
    //     0x7db924: bl              #0x4112d4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x7db928: stur            x0, [fp, #-0x10]
    // 0x7db92c: r0 = Text()
    //     0x7db92c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7db930: mov             x3, x0
    // 0x7db934: r0 = "Henüz acenta eklenmemiş"
    //     0x7db934: add             x0, PP, #0x19, lsl #12  ; [pp+0x19708] "Henüz acenta eklenmemiş"
    //     0x7db938: ldr             x0, [x0, #0x708]
    // 0x7db93c: stur            x3, [fp, #-0x20]
    // 0x7db940: StoreField: r3->field_b = r0
    //     0x7db940: stur            w0, [x3, #0xb]
    // 0x7db944: ldur            x0, [fp, #-0x10]
    // 0x7db948: StoreField: r3->field_13 = r0
    //     0x7db948: stur            w0, [x3, #0x13]
    // 0x7db94c: r0 = Instance_TextAlign
    //     0x7db94c: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x7db950: StoreField: r3->field_1b = r0
    //     0x7db950: stur            w0, [x3, #0x1b]
    // 0x7db954: r1 = Null
    //     0x7db954: mov             x1, NULL
    // 0x7db958: r2 = 6
    //     0x7db958: mov             x2, #6
    // 0x7db95c: r0 = AllocateArray()
    //     0x7db95c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7db960: mov             x2, x0
    // 0x7db964: ldur            x0, [fp, #-0x18]
    // 0x7db968: stur            x2, [fp, #-0x10]
    // 0x7db96c: StoreField: r2->field_f = r0
    //     0x7db96c: stur            w0, [x2, #0xf]
    // 0x7db970: r16 = Instance_SizedBox
    //     0x7db970: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7db974: ldr             x16, [x16, #0x310]
    // 0x7db978: StoreField: r2->field_13 = r16
    //     0x7db978: stur            w16, [x2, #0x13]
    // 0x7db97c: ldur            x0, [fp, #-0x20]
    // 0x7db980: ArrayStore: r2[0] = r0  ; List_4
    //     0x7db980: stur            w0, [x2, #0x17]
    // 0x7db984: r1 = <Widget>
    //     0x7db984: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7db988: r0 = AllocateGrowableArray()
    //     0x7db988: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7db98c: mov             x3, x0
    // 0x7db990: ldur            x0, [fp, #-0x10]
    // 0x7db994: stur            x3, [fp, #-0x18]
    // 0x7db998: StoreField: r3->field_f = r0
    //     0x7db998: stur            w0, [x3, #0xf]
    // 0x7db99c: r0 = 6
    //     0x7db99c: mov             x0, #6
    // 0x7db9a0: StoreField: r3->field_b = r0
    //     0x7db9a0: stur            w0, [x3, #0xb]
    // 0x7db9a4: ldur            x0, [fp, #-8]
    // 0x7db9a8: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x7db9a8: ldur            w4, [x0, #0x17]
    // 0x7db9ac: DecompressPointer r4
    //     0x7db9ac: add             x4, x4, HEAP, lsl #32
    // 0x7db9b0: stur            x4, [fp, #-0x10]
    // 0x7db9b4: r1 = Null
    //     0x7db9b4: mov             x1, NULL
    // 0x7db9b8: r2 = 4
    //     0x7db9b8: mov             x2, #4
    // 0x7db9bc: r0 = AllocateArray()
    //     0x7db9bc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7db9c0: stur            x0, [fp, #-8]
    // 0x7db9c4: r16 = Instance_SizedBox
    //     0x7db9c4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x7db9c8: ldr             x16, [x16, #0x320]
    // 0x7db9cc: StoreField: r0->field_f = r16
    //     0x7db9cc: stur            w16, [x0, #0xf]
    // 0x7db9d0: ldur            x1, [fp, #-0x10]
    // 0x7db9d4: StoreField: r0->field_13 = r1
    //     0x7db9d4: stur            w1, [x0, #0x13]
    // 0x7db9d8: r1 = <Widget>
    //     0x7db9d8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7db9dc: r0 = AllocateGrowableArray()
    //     0x7db9dc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7db9e0: mov             x1, x0
    // 0x7db9e4: ldur            x0, [fp, #-8]
    // 0x7db9e8: StoreField: r1->field_f = r0
    //     0x7db9e8: stur            w0, [x1, #0xf]
    // 0x7db9ec: r0 = 4
    //     0x7db9ec: mov             x0, #4
    // 0x7db9f0: StoreField: r1->field_b = r0
    //     0x7db9f0: stur            w0, [x1, #0xb]
    // 0x7db9f4: mov             x2, x1
    // 0x7db9f8: ldur            x1, [fp, #-0x18]
    // 0x7db9fc: r0 = addAll()
    //     0x7db9fc: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7dba00: r0 = Column()
    //     0x7dba00: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7dba04: mov             x1, x0
    // 0x7dba08: r0 = Instance_Axis
    //     0x7dba08: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7dba0c: stur            x1, [fp, #-8]
    // 0x7dba10: StoreField: r1->field_f = r0
    //     0x7dba10: stur            w0, [x1, #0xf]
    // 0x7dba14: r0 = Instance_MainAxisAlignment
    //     0x7dba14: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x7dba18: ldr             x0, [x0, #0x328]
    // 0x7dba1c: StoreField: r1->field_13 = r0
    //     0x7dba1c: stur            w0, [x1, #0x13]
    // 0x7dba20: r0 = Instance_MainAxisSize
    //     0x7dba20: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7dba24: ldr             x0, [x0, #0x330]
    // 0x7dba28: ArrayStore: r1[0] = r0  ; List_4
    //     0x7dba28: stur            w0, [x1, #0x17]
    // 0x7dba2c: r0 = Instance_CrossAxisAlignment
    //     0x7dba2c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7dba30: ldr             x0, [x0, #0x338]
    // 0x7dba34: StoreField: r1->field_1b = r0
    //     0x7dba34: stur            w0, [x1, #0x1b]
    // 0x7dba38: r0 = Instance_VerticalDirection
    //     0x7dba38: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7dba3c: ldr             x0, [x0, #0x340]
    // 0x7dba40: StoreField: r1->field_23 = r0
    //     0x7dba40: stur            w0, [x1, #0x23]
    // 0x7dba44: r0 = Instance_Clip
    //     0x7dba44: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7dba48: ldr             x0, [x0, #0x348]
    // 0x7dba4c: StoreField: r1->field_2b = r0
    //     0x7dba4c: stur            w0, [x1, #0x2b]
    // 0x7dba50: StoreField: r1->field_2f = rZR
    //     0x7dba50: stur            xzr, [x1, #0x2f]
    // 0x7dba54: ldur            x0, [fp, #-0x18]
    // 0x7dba58: StoreField: r1->field_b = r0
    //     0x7dba58: stur            w0, [x1, #0xb]
    // 0x7dba5c: r0 = Padding()
    //     0x7dba5c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7dba60: mov             x1, x0
    // 0x7dba64: r0 = Instance_EdgeInsets
    //     0x7dba64: add             x0, PP, #0x15, lsl #12  ; [pp+0x15658] Obj!EdgeInsets@a0c561
    //     0x7dba68: ldr             x0, [x0, #0x658]
    // 0x7dba6c: stur            x1, [fp, #-0x10]
    // 0x7dba70: StoreField: r1->field_f = r0
    //     0x7dba70: stur            w0, [x1, #0xf]
    // 0x7dba74: ldur            x0, [fp, #-8]
    // 0x7dba78: StoreField: r1->field_b = r0
    //     0x7dba78: stur            w0, [x1, #0xb]
    // 0x7dba7c: r0 = Center()
    //     0x7dba7c: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x7dba80: r1 = Instance_Alignment
    //     0x7dba80: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x7dba84: ldr             x1, [x1, #0x60]
    // 0x7dba88: StoreField: r0->field_f = r1
    //     0x7dba88: stur            w1, [x0, #0xf]
    // 0x7dba8c: ldur            x1, [fp, #-0x10]
    // 0x7dba90: StoreField: r0->field_b = r1
    //     0x7dba90: stur            w1, [x0, #0xb]
    // 0x7dba94: LeaveFrame
    //     0x7dba94: mov             SP, fp
    //     0x7dba98: ldp             fp, lr, [SP], #0x10
    // 0x7dba9c: ret
    //     0x7dba9c: ret             
    // 0x7dbaa0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7dbaa0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7dbaa4: b               #0x7db8bc
  }
}
