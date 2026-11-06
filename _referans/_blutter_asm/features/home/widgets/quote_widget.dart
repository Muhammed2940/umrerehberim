// lib: , url: package:umrem_demo/features/home/widgets/quote_widget.dart

// class id: 1049595, size: 0x8
class :: {
}

// class id: 2898, size: 0x18, field offset: 0xc
//   const constructor, 
class QuoteWidget extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7ec794, size: 0x74
    // 0x7ec794: EnterFrame
    //     0x7ec794: stp             fp, lr, [SP, #-0x10]!
    //     0x7ec798: mov             fp, SP
    // 0x7ec79c: AllocStack(0x10)
    //     0x7ec79c: sub             SP, SP, #0x10
    // 0x7ec7a0: CheckStackOverflow
    //     0x7ec7a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ec7a4: cmp             SP, x16
    //     0x7ec7a8: b.ls            #0x7ec800
    // 0x7ec7ac: r0 = _formattedQuote()
    //     0x7ec7ac: bl              #0x7ec808  ; [package:umrem_demo/features/home/widgets/quote_widget.dart] QuoteWidget::_formattedQuote
    // 0x7ec7b0: stur            x0, [fp, #-8]
    // 0x7ec7b4: r0 = Text()
    //     0x7ec7b4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ec7b8: mov             x1, x0
    // 0x7ec7bc: ldur            x0, [fp, #-8]
    // 0x7ec7c0: stur            x1, [fp, #-0x10]
    // 0x7ec7c4: StoreField: r1->field_b = r0
    //     0x7ec7c4: stur            w0, [x1, #0xb]
    // 0x7ec7c8: r0 = Instance_TextStyle
    //     0x7ec7c8: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bb48] Obj!TextStyle@a190b1
    //     0x7ec7cc: ldr             x0, [x0, #0xb48]
    // 0x7ec7d0: StoreField: r1->field_13 = r0
    //     0x7ec7d0: stur            w0, [x1, #0x13]
    // 0x7ec7d4: r0 = Instance_TextAlign
    //     0x7ec7d4: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x7ec7d8: StoreField: r1->field_1b = r0
    //     0x7ec7d8: stur            w0, [x1, #0x1b]
    // 0x7ec7dc: r0 = Center()
    //     0x7ec7dc: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x7ec7e0: r1 = Instance_Alignment
    //     0x7ec7e0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x7ec7e4: ldr             x1, [x1, #0x60]
    // 0x7ec7e8: StoreField: r0->field_f = r1
    //     0x7ec7e8: stur            w1, [x0, #0xf]
    // 0x7ec7ec: ldur            x1, [fp, #-0x10]
    // 0x7ec7f0: StoreField: r0->field_b = r1
    //     0x7ec7f0: stur            w1, [x0, #0xb]
    // 0x7ec7f4: LeaveFrame
    //     0x7ec7f4: mov             SP, fp
    //     0x7ec7f8: ldp             fp, lr, [SP], #0x10
    // 0x7ec7fc: ret
    //     0x7ec7fc: ret             
    // 0x7ec800: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ec800: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ec804: b               #0x7ec7ac
  }
  get _ _formattedQuote(/* No info */) {
    // ** addr: 0x7ec808, size: 0x1f4
    // 0x7ec808: EnterFrame
    //     0x7ec808: stp             fp, lr, [SP, #-0x10]!
    //     0x7ec80c: mov             fp, SP
    // 0x7ec810: AllocStack(0x30)
    //     0x7ec810: sub             SP, SP, #0x30
    // 0x7ec814: CheckStackOverflow
    //     0x7ec814: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ec818: cmp             SP, x16
    //     0x7ec81c: b.ls            #0x7ec9f4
    // 0x7ec820: LoadField: r0 = r1->field_b
    //     0x7ec820: ldur            w0, [x1, #0xb]
    // 0x7ec824: DecompressPointer r0
    //     0x7ec824: add             x0, x0, HEAP, lsl #32
    // 0x7ec828: mov             x1, x0
    // 0x7ec82c: r0 = trim()
    //     0x7ec82c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x7ec830: mov             x3, x0
    // 0x7ec834: stur            x3, [fp, #-8]
    // 0x7ec838: r0 = LoadClassIdInstr(r3)
    //     0x7ec838: ldur            x0, [x3, #-1]
    //     0x7ec83c: ubfx            x0, x0, #0xc, #0x14
    // 0x7ec840: mov             x1, x3
    // 0x7ec844: r2 = "\n"
    //     0x7ec844: ldr             x2, [PP, #0x380]  ; [pp+0x380] "\n"
    // 0x7ec848: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7ec848: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7ec84c: r0 = GDT[cid_x0 + -0xff8]()
    //     0x7ec84c: sub             lr, x0, #0xff8
    //     0x7ec850: ldr             lr, [x21, lr, lsl #3]
    //     0x7ec854: blr             lr
    // 0x7ec858: tbnz            w0, #4, #0x7ec86c
    // 0x7ec85c: ldur            x0, [fp, #-8]
    // 0x7ec860: LeaveFrame
    //     0x7ec860: mov             SP, fp
    //     0x7ec864: ldp             fp, lr, [SP], #0x10
    // 0x7ec868: ret
    //     0x7ec868: ret             
    // 0x7ec86c: ldur            x0, [fp, #-8]
    // 0x7ec870: r1 = 2
    //     0x7ec870: mov             x1, #2
    // 0x7ec874: LoadField: r2 = r0->field_7
    //     0x7ec874: ldur            w2, [x0, #7]
    // 0x7ec878: r3 = LoadInt32Instr(r2)
    //     0x7ec878: sbfx            x3, x2, #1, #0x1f
    // 0x7ec87c: stur            x3, [fp, #-0x20]
    // 0x7ec880: sdiv            x4, x3, x1
    // 0x7ec884: stur            x4, [fp, #-0x18]
    // 0x7ec888: lsl             x5, x4, #1
    // 0x7ec88c: stur            x5, [fp, #-0x10]
    // 0x7ec890: str             x5, [SP]
    // 0x7ec894: mov             x1, x0
    // 0x7ec898: r2 = " "
    //     0x7ec898: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x7ec89c: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7ec89c: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7ec8a0: r0 = lastIndexOf()
    //     0x7ec8a0: bl              #0x3e7110  ; [dart:core] _StringBase::lastIndexOf
    // 0x7ec8a4: mov             x4, x0
    // 0x7ec8a8: ldur            x3, [fp, #-8]
    // 0x7ec8ac: stur            x4, [fp, #-0x28]
    // 0x7ec8b0: r0 = LoadClassIdInstr(r3)
    //     0x7ec8b0: ldur            x0, [x3, #-1]
    //     0x7ec8b4: ubfx            x0, x0, #0xc, #0x14
    // 0x7ec8b8: ldur            x16, [fp, #-0x10]
    // 0x7ec8bc: str             x16, [SP]
    // 0x7ec8c0: mov             x1, x3
    // 0x7ec8c4: r2 = " "
    //     0x7ec8c4: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x7ec8c8: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7ec8c8: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7ec8cc: r0 = GDT[cid_x0 + -0xffa]()
    //     0x7ec8cc: sub             lr, x0, #0xffa
    //     0x7ec8d0: ldr             lr, [x21, lr, lsl #3]
    //     0x7ec8d4: blr             lr
    // 0x7ec8d8: mov             x1, x0
    // 0x7ec8dc: ldur            x0, [fp, #-0x28]
    // 0x7ec8e0: cmn             x0, #1
    // 0x7ec8e4: b.ne            #0x7ec900
    // 0x7ec8e8: cmn             x1, #1
    // 0x7ec8ec: b.ne            #0x7ec900
    // 0x7ec8f0: ldur            x0, [fp, #-8]
    // 0x7ec8f4: LeaveFrame
    //     0x7ec8f4: mov             SP, fp
    //     0x7ec8f8: ldp             fp, lr, [SP], #0x10
    // 0x7ec8fc: ret
    //     0x7ec8fc: ret             
    // 0x7ec900: cmn             x0, #1
    // 0x7ec904: b.ne            #0x7ec910
    // 0x7ec908: mov             x3, x1
    // 0x7ec90c: b               #0x7ec934
    // 0x7ec910: cmn             x1, #1
    // 0x7ec914: b.eq            #0x7ec930
    // 0x7ec918: ldur            x2, [fp, #-0x18]
    // 0x7ec91c: sub             x3, x2, x0
    // 0x7ec920: sub             x4, x1, x2
    // 0x7ec924: cmp             x3, x4
    // 0x7ec928: b.le            #0x7ec930
    // 0x7ec92c: mov             x0, x1
    // 0x7ec930: mov             x3, x0
    // 0x7ec934: stur            x3, [fp, #-0x18]
    // 0x7ec938: cmp             x3, #0
    // 0x7ec93c: b.le            #0x7ec950
    // 0x7ec940: ldur            x0, [fp, #-0x20]
    // 0x7ec944: sub             x1, x0, #1
    // 0x7ec948: cmp             x3, x1
    // 0x7ec94c: b.lt            #0x7ec960
    // 0x7ec950: ldur            x0, [fp, #-8]
    // 0x7ec954: LeaveFrame
    //     0x7ec954: mov             SP, fp
    //     0x7ec958: ldp             fp, lr, [SP], #0x10
    // 0x7ec95c: ret
    //     0x7ec95c: ret             
    // 0x7ec960: r0 = BoxInt64Instr(r3)
    //     0x7ec960: sbfiz           x0, x3, #1, #0x1f
    //     0x7ec964: cmp             x3, x0, asr #1
    //     0x7ec968: b.eq            #0x7ec974
    //     0x7ec96c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7ec970: stur            x3, [x0, #7]
    // 0x7ec974: str             x0, [SP]
    // 0x7ec978: ldur            x1, [fp, #-8]
    // 0x7ec97c: r2 = 0
    //     0x7ec97c: mov             x2, #0
    // 0x7ec980: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x7ec980: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x7ec984: r0 = substring()
    //     0x7ec984: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x7ec988: mov             x1, x0
    // 0x7ec98c: r0 = trimRight()
    //     0x7ec98c: bl              #0x3e7318  ; [dart:core] _StringBase::trimRight
    // 0x7ec990: mov             x3, x0
    // 0x7ec994: ldur            x0, [fp, #-0x18]
    // 0x7ec998: stur            x3, [fp, #-0x10]
    // 0x7ec99c: add             x2, x0, #1
    // 0x7ec9a0: ldur            x1, [fp, #-8]
    // 0x7ec9a4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7ec9a4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7ec9a8: r0 = substring()
    //     0x7ec9a8: bl              #0x3d1a70  ; [dart:core] _StringBase::substring
    // 0x7ec9ac: mov             x1, x0
    // 0x7ec9b0: r0 = trimLeft()
    //     0x7ec9b0: bl              #0x3e672c  ; [dart:core] _StringBase::trimLeft
    // 0x7ec9b4: r1 = Null
    //     0x7ec9b4: mov             x1, NULL
    // 0x7ec9b8: r2 = 6
    //     0x7ec9b8: mov             x2, #6
    // 0x7ec9bc: stur            x0, [fp, #-8]
    // 0x7ec9c0: r0 = AllocateArray()
    //     0x7ec9c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ec9c4: mov             x1, x0
    // 0x7ec9c8: ldur            x0, [fp, #-0x10]
    // 0x7ec9cc: StoreField: r1->field_f = r0
    //     0x7ec9cc: stur            w0, [x1, #0xf]
    // 0x7ec9d0: r16 = "\n"
    //     0x7ec9d0: ldr             x16, [PP, #0x380]  ; [pp+0x380] "\n"
    // 0x7ec9d4: StoreField: r1->field_13 = r16
    //     0x7ec9d4: stur            w16, [x1, #0x13]
    // 0x7ec9d8: ldur            x0, [fp, #-8]
    // 0x7ec9dc: ArrayStore: r1[0] = r0  ; List_4
    //     0x7ec9dc: stur            w0, [x1, #0x17]
    // 0x7ec9e0: str             x1, [SP]
    // 0x7ec9e4: r0 = _interpolate()
    //     0x7ec9e4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7ec9e8: LeaveFrame
    //     0x7ec9e8: mov             SP, fp
    //     0x7ec9ec: ldp             fp, lr, [SP], #0x10
    // 0x7ec9f0: ret
    //     0x7ec9f0: ret             
    // 0x7ec9f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ec9f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ec9f8: b               #0x7ec820
  }
}
