// lib: , url: package:umrem_demo/features/super_admin/screens/agency_detail_page.dart

// class id: 1049603, size: 0x8
class :: {
}

// class id: 2460, size: 0x1c, field offset: 0x14
//   transformed mixin,
abstract class __AgencyDetailPageState&State&SingleTickerProviderStateMixin extends State<dynamic>
     with SingleTickerProviderStateMixin<X0 bound StatefulWidget> {

  _ createTicker(/* No info */) {
    // ** addr: 0x4452cc, size: 0x98
    // 0x4452cc: EnterFrame
    //     0x4452cc: stp             fp, lr, [SP, #-0x10]!
    //     0x4452d0: mov             fp, SP
    // 0x4452d4: AllocStack(0x10)
    //     0x4452d4: sub             SP, SP, #0x10
    // 0x4452d8: SetupParameters(__AgencyDetailPageState&State&SingleTickerProviderStateMixin this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x4452d8: stur            x1, [fp, #-8]
    //     0x4452dc: stur            x2, [fp, #-0x10]
    // 0x4452e0: CheckStackOverflow
    //     0x4452e0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x4452e4: cmp             SP, x16
    //     0x4452e8: b.ls            #0x445358
    // 0x4452ec: r0 = Ticker()
    //     0x4452ec: bl              #0x43cbe4  ; AllocateTickerStub -> Ticker (size=0x1c)
    // 0x4452f0: mov             x1, x0
    // 0x4452f4: r0 = false
    //     0x4452f4: add             x0, NULL, #0x30  ; false
    // 0x4452f8: StoreField: r1->field_b = r0
    //     0x4452f8: stur            w0, [x1, #0xb]
    // 0x4452fc: ldur            x0, [fp, #-0x10]
    // 0x445300: StoreField: r1->field_13 = r0
    //     0x445300: stur            w0, [x1, #0x13]
    // 0x445304: mov             x0, x1
    // 0x445308: ldur            x2, [fp, #-8]
    // 0x44530c: StoreField: r2->field_13 = r0
    //     0x44530c: stur            w0, [x2, #0x13]
    //     0x445310: ldurb           w16, [x2, #-1]
    //     0x445314: ldurb           w17, [x0, #-1]
    //     0x445318: and             x16, x17, x16, lsr #2
    //     0x44531c: tst             x16, HEAP, lsr #32
    //     0x445320: b.eq            #0x445328
    //     0x445324: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x445328: mov             x1, x2
    // 0x44532c: r0 = _updateTickerModeNotifier()
    //     0x44532c: bl              #0x445384  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] __AgencyDetailPageState&State&SingleTickerProviderStateMixin::_updateTickerModeNotifier
    // 0x445330: ldur            x1, [fp, #-8]
    // 0x445334: r0 = _updateTicker()
    //     0x445334: bl              #0x43c890  ; [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker
    // 0x445338: ldur            x1, [fp, #-8]
    // 0x44533c: LoadField: r0 = r1->field_13
    //     0x44533c: ldur            w0, [x1, #0x13]
    // 0x445340: DecompressPointer r0
    //     0x445340: add             x0, x0, HEAP, lsl #32
    // 0x445344: cmp             w0, NULL
    // 0x445348: b.eq            #0x445360
    // 0x44534c: LeaveFrame
    //     0x44534c: mov             SP, fp
    //     0x445350: ldp             fp, lr, [SP], #0x10
    // 0x445354: ret
    //     0x445354: ret             
    // 0x445358: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x445358: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x44535c: b               #0x4452ec
    // 0x445360: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x445360: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _updateTickerModeNotifier(/* No info */) {
    // ** addr: 0x445384, size: 0x120
    // 0x445384: EnterFrame
    //     0x445384: stp             fp, lr, [SP, #-0x10]!
    //     0x445388: mov             fp, SP
    // 0x44538c: AllocStack(0x18)
    //     0x44538c: sub             SP, SP, #0x18
    // 0x445390: SetupParameters(__AgencyDetailPageState&State&SingleTickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x445390: mov             x2, x1
    //     0x445394: stur            x1, [fp, #-8]
    // 0x445398: CheckStackOverflow
    //     0x445398: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x44539c: cmp             SP, x16
    //     0x4453a0: b.ls            #0x445498
    // 0x4453a4: LoadField: r1 = r2->field_f
    //     0x4453a4: ldur            w1, [x2, #0xf]
    // 0x4453a8: DecompressPointer r1
    //     0x4453a8: add             x1, x1, HEAP, lsl #32
    // 0x4453ac: cmp             w1, NULL
    // 0x4453b0: b.eq            #0x4454a0
    // 0x4453b4: r0 = getNotifier()
    //     0x4453b4: bl              #0x43cb1c  ; [package:flutter/src/widgets/ticker_provider.dart] TickerMode::getNotifier
    // 0x4453b8: mov             x3, x0
    // 0x4453bc: ldur            x0, [fp, #-8]
    // 0x4453c0: stur            x3, [fp, #-0x18]
    // 0x4453c4: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x4453c4: ldur            w4, [x0, #0x17]
    // 0x4453c8: DecompressPointer r4
    //     0x4453c8: add             x4, x4, HEAP, lsl #32
    // 0x4453cc: stur            x4, [fp, #-0x10]
    // 0x4453d0: cmp             w3, w4
    // 0x4453d4: b.ne            #0x4453e8
    // 0x4453d8: r0 = Null
    //     0x4453d8: mov             x0, NULL
    // 0x4453dc: LeaveFrame
    //     0x4453dc: mov             SP, fp
    //     0x4453e0: ldp             fp, lr, [SP], #0x10
    // 0x4453e4: ret
    //     0x4453e4: ret             
    // 0x4453e8: cmp             w4, NULL
    // 0x4453ec: b.eq            #0x44542c
    // 0x4453f0: mov             x2, x0
    // 0x4453f4: r1 = Function '_updateTicker@378311458':.
    //     0x4453f4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ec0] AnonymousClosure: (0x4454a4), in [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker (0x43c890)
    //     0x4453f8: ldr             x1, [x1, #0xec0]
    // 0x4453fc: r0 = AllocateClosure()
    //     0x4453fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x445400: ldur            x1, [fp, #-0x10]
    // 0x445404: r2 = LoadClassIdInstr(r1)
    //     0x445404: ldur            x2, [x1, #-1]
    //     0x445408: ubfx            x2, x2, #0xc, #0x14
    // 0x44540c: mov             x16, x0
    // 0x445410: mov             x0, x2
    // 0x445414: mov             x2, x16
    // 0x445418: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x445418: add             lr, x0, #0xfe7
    //     0x44541c: ldr             lr, [x21, lr, lsl #3]
    //     0x445420: blr             lr
    // 0x445424: ldur            x0, [fp, #-8]
    // 0x445428: ldur            x3, [fp, #-0x18]
    // 0x44542c: mov             x2, x0
    // 0x445430: r1 = Function '_updateTicker@378311458':.
    //     0x445430: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ec0] AnonymousClosure: (0x4454a4), in [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker (0x43c890)
    //     0x445434: ldr             x1, [x1, #0xec0]
    // 0x445438: r0 = AllocateClosure()
    //     0x445438: bl              #0x9273d4  ; AllocateClosureStub
    // 0x44543c: ldur            x3, [fp, #-0x18]
    // 0x445440: r1 = LoadClassIdInstr(r3)
    //     0x445440: ldur            x1, [x3, #-1]
    //     0x445444: ubfx            x1, x1, #0xc, #0x14
    // 0x445448: mov             x2, x0
    // 0x44544c: mov             x0, x1
    // 0x445450: mov             x1, x3
    // 0x445454: r0 = GDT[cid_x0 + 0x8cf8]()
    //     0x445454: mov             x17, #0x8cf8
    //     0x445458: add             lr, x0, x17
    //     0x44545c: ldr             lr, [x21, lr, lsl #3]
    //     0x445460: blr             lr
    // 0x445464: ldur            x0, [fp, #-0x18]
    // 0x445468: ldur            x1, [fp, #-8]
    // 0x44546c: ArrayStore: r1[0] = r0  ; List_4
    //     0x44546c: stur            w0, [x1, #0x17]
    //     0x445470: ldurb           w16, [x1, #-1]
    //     0x445474: ldurb           w17, [x0, #-1]
    //     0x445478: and             x16, x17, x16, lsr #2
    //     0x44547c: tst             x16, HEAP, lsr #32
    //     0x445480: b.eq            #0x445488
    //     0x445484: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x445488: r0 = Null
    //     0x445488: mov             x0, NULL
    // 0x44548c: LeaveFrame
    //     0x44548c: mov             SP, fp
    //     0x445490: ldp             fp, lr, [SP], #0x10
    // 0x445494: ret
    //     0x445494: ret             
    // 0x445498: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x445498: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x44549c: b               #0x4453a4
    // 0x4454a0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x4454a0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void _updateTicker(dynamic) {
    // ** addr: 0x4454a4, size: 0x38
    // 0x4454a4: EnterFrame
    //     0x4454a4: stp             fp, lr, [SP, #-0x10]!
    //     0x4454a8: mov             fp, SP
    // 0x4454ac: ldr             x0, [fp, #0x10]
    // 0x4454b0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x4454b0: ldur            w1, [x0, #0x17]
    // 0x4454b4: DecompressPointer r1
    //     0x4454b4: add             x1, x1, HEAP, lsl #32
    // 0x4454b8: CheckStackOverflow
    //     0x4454b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x4454bc: cmp             SP, x16
    //     0x4454c0: b.ls            #0x4454d4
    // 0x4454c4: r0 = _updateTicker()
    //     0x4454c4: bl              #0x43c890  ; [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker
    // 0x4454c8: LeaveFrame
    //     0x4454c8: mov             SP, fp
    //     0x4454cc: ldp             fp, lr, [SP], #0x10
    // 0x4454d0: ret
    //     0x4454d0: ret             
    // 0x4454d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x4454d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x4454d8: b               #0x4454c4
  }
  _ dispose(/* No info */) {
    // ** addr: 0x754374, size: 0x90
    // 0x754374: EnterFrame
    //     0x754374: stp             fp, lr, [SP, #-0x10]!
    //     0x754378: mov             fp, SP
    // 0x75437c: AllocStack(0x10)
    //     0x75437c: sub             SP, SP, #0x10
    // 0x754380: SetupParameters(__AgencyDetailPageState&State&SingleTickerProviderStateMixin this /* r1 => r0, fp-0x10 */)
    //     0x754380: mov             x0, x1
    //     0x754384: stur            x1, [fp, #-0x10]
    // 0x754388: CheckStackOverflow
    //     0x754388: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75438c: cmp             SP, x16
    //     0x754390: b.ls            #0x7543fc
    // 0x754394: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x754394: ldur            w3, [x0, #0x17]
    // 0x754398: DecompressPointer r3
    //     0x754398: add             x3, x3, HEAP, lsl #32
    // 0x75439c: stur            x3, [fp, #-8]
    // 0x7543a0: cmp             w3, NULL
    // 0x7543a4: b.ne            #0x7543b0
    // 0x7543a8: mov             x1, x0
    // 0x7543ac: b               #0x7543e8
    // 0x7543b0: mov             x2, x0
    // 0x7543b4: r1 = Function '_updateTicker@378311458':.
    //     0x7543b4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ec0] AnonymousClosure: (0x4454a4), in [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker (0x43c890)
    //     0x7543b8: ldr             x1, [x1, #0xec0]
    // 0x7543bc: r0 = AllocateClosure()
    //     0x7543bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7543c0: ldur            x1, [fp, #-8]
    // 0x7543c4: r2 = LoadClassIdInstr(r1)
    //     0x7543c4: ldur            x2, [x1, #-1]
    //     0x7543c8: ubfx            x2, x2, #0xc, #0x14
    // 0x7543cc: mov             x16, x0
    // 0x7543d0: mov             x0, x2
    // 0x7543d4: mov             x2, x16
    // 0x7543d8: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x7543d8: add             lr, x0, #0xfe7
    //     0x7543dc: ldr             lr, [x21, lr, lsl #3]
    //     0x7543e0: blr             lr
    // 0x7543e4: ldur            x1, [fp, #-0x10]
    // 0x7543e8: ArrayStore: r1[0] = rNULL  ; List_4
    //     0x7543e8: stur            NULL, [x1, #0x17]
    // 0x7543ec: r0 = Null
    //     0x7543ec: mov             x0, NULL
    // 0x7543f0: LeaveFrame
    //     0x7543f0: mov             SP, fp
    //     0x7543f4: ldp             fp, lr, [SP], #0x10
    // 0x7543f8: ret
    //     0x7543f8: ret             
    // 0x7543fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7543fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754400: b               #0x754394
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x754404, size: 0x38
    // 0x754404: EnterFrame
    //     0x754404: stp             fp, lr, [SP, #-0x10]!
    //     0x754408: mov             fp, SP
    // 0x75440c: ldr             x0, [fp, #0x10]
    // 0x754410: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x754410: ldur            w1, [x0, #0x17]
    // 0x754414: DecompressPointer r1
    //     0x754414: add             x1, x1, HEAP, lsl #32
    // 0x754418: CheckStackOverflow
    //     0x754418: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75441c: cmp             SP, x16
    //     0x754420: b.ls            #0x754434
    // 0x754424: r0 = dispose()
    //     0x754424: bl              #0x754374  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] __AgencyDetailPageState&State&SingleTickerProviderStateMixin::dispose
    // 0x754428: LeaveFrame
    //     0x754428: mov             SP, fp
    //     0x75442c: ldp             fp, lr, [SP], #0x10
    // 0x754430: ret
    //     0x754430: ret             
    // 0x754434: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754434: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754438: b               #0x754424
  }
  _ activate(/* No info */) {
    // ** addr: 0x758f04, size: 0x48
    // 0x758f04: EnterFrame
    //     0x758f04: stp             fp, lr, [SP, #-0x10]!
    //     0x758f08: mov             fp, SP
    // 0x758f0c: AllocStack(0x8)
    //     0x758f0c: sub             SP, SP, #8
    // 0x758f10: SetupParameters(__AgencyDetailPageState&State&SingleTickerProviderStateMixin this /* r1 => r0, fp-0x8 */)
    //     0x758f10: mov             x0, x1
    //     0x758f14: stur            x1, [fp, #-8]
    // 0x758f18: CheckStackOverflow
    //     0x758f18: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x758f1c: cmp             SP, x16
    //     0x758f20: b.ls            #0x758f44
    // 0x758f24: mov             x1, x0
    // 0x758f28: r0 = _updateTickerModeNotifier()
    //     0x758f28: bl              #0x445384  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] __AgencyDetailPageState&State&SingleTickerProviderStateMixin::_updateTickerModeNotifier
    // 0x758f2c: ldur            x1, [fp, #-8]
    // 0x758f30: r0 = _updateTicker()
    //     0x758f30: bl              #0x43c890  ; [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker
    // 0x758f34: r0 = Null
    //     0x758f34: mov             x0, NULL
    // 0x758f38: LeaveFrame
    //     0x758f38: mov             SP, fp
    //     0x758f3c: ldp             fp, lr, [SP], #0x10
    // 0x758f40: ret
    //     0x758f40: ret             
    // 0x758f44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x758f44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x758f48: b               #0x758f24
  }
}

// class id: 2461, size: 0x58, field offset: 0x1c
class _AgencyDetailPageState extends __AgencyDetailPageState&State&SingleTickerProviderStateMixin {

  late TabController _tabController; // offset: 0x1c

  _ initState(/* No info */) {
    // ** addr: 0x5f6618, size: 0x70
    // 0x5f6618: EnterFrame
    //     0x5f6618: stp             fp, lr, [SP, #-0x10]!
    //     0x5f661c: mov             fp, SP
    // 0x5f6620: AllocStack(0x10)
    //     0x5f6620: sub             SP, SP, #0x10
    // 0x5f6624: SetupParameters(_AgencyDetailPageState this /* r1 => r2, fp-0x8 */)
    //     0x5f6624: mov             x2, x1
    //     0x5f6628: stur            x1, [fp, #-8]
    // 0x5f662c: CheckStackOverflow
    //     0x5f662c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f6630: cmp             SP, x16
    //     0x5f6634: b.ls            #0x5f6680
    // 0x5f6638: r0 = TabController()
    //     0x5f6638: bl              #0x5f677c  ; AllocateTabControllerStub -> TabController (size=0x4c)
    // 0x5f663c: mov             x1, x0
    // 0x5f6640: ldur            x2, [fp, #-8]
    // 0x5f6644: stur            x0, [fp, #-0x10]
    // 0x5f6648: r0 = TabController()
    //     0x5f6648: bl              #0x5f6688  ; [package:flutter/src/material/tab_controller.dart] TabController::TabController
    // 0x5f664c: ldur            x0, [fp, #-0x10]
    // 0x5f6650: ldur            x1, [fp, #-8]
    // 0x5f6654: StoreField: r1->field_1b = r0
    //     0x5f6654: stur            w0, [x1, #0x1b]
    //     0x5f6658: ldurb           w16, [x1, #-1]
    //     0x5f665c: ldurb           w17, [x0, #-1]
    //     0x5f6660: and             x16, x17, x16, lsr #2
    //     0x5f6664: tst             x16, HEAP, lsr #32
    //     0x5f6668: b.eq            #0x5f6670
    //     0x5f666c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x5f6670: r0 = Null
    //     0x5f6670: mov             x0, NULL
    // 0x5f6674: LeaveFrame
    //     0x5f6674: mov             SP, fp
    //     0x5f6678: ldp             fp, lr, [SP], #0x10
    // 0x5f667c: ret
    //     0x5f667c: ret             
    // 0x5f6680: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f6680: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f6684: b               #0x5f6638
  }
  _ didChangeDependencies(/* No info */) {
    // ** addr: 0x63a594, size: 0xc4
    // 0x63a594: EnterFrame
    //     0x63a594: stp             fp, lr, [SP, #-0x10]!
    //     0x63a598: mov             fp, SP
    // 0x63a59c: AllocStack(0x18)
    //     0x63a59c: sub             SP, SP, #0x18
    // 0x63a5a0: SetupParameters(_AgencyDetailPageState this /* r1 => r1, fp-0x8 */)
    //     0x63a5a0: stur            x1, [fp, #-8]
    // 0x63a5a4: CheckStackOverflow
    //     0x63a5a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63a5a8: cmp             SP, x16
    //     0x63a5ac: b.ls            #0x63a64c
    // 0x63a5b0: LoadField: r0 = r1->field_23
    //     0x63a5b0: ldur            w0, [x1, #0x23]
    // 0x63a5b4: DecompressPointer r0
    //     0x63a5b4: add             x0, x0, HEAP, lsl #32
    // 0x63a5b8: cmp             w0, NULL
    // 0x63a5bc: b.ne            #0x63a63c
    // 0x63a5c0: LoadField: r0 = r1->field_f
    //     0x63a5c0: ldur            w0, [x1, #0xf]
    // 0x63a5c4: DecompressPointer r0
    //     0x63a5c4: add             x0, x0, HEAP, lsl #32
    // 0x63a5c8: cmp             w0, NULL
    // 0x63a5cc: b.eq            #0x63a654
    // 0x63a5d0: r16 = <Object?>
    //     0x63a5d0: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x63a5d4: stp             x0, x16, [SP]
    // 0x63a5d8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x63a5d8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x63a5dc: r0 = of()
    //     0x63a5dc: bl              #0x40b89c  ; [package:flutter/src/widgets/routes.dart] ModalRoute::of
    // 0x63a5e0: cmp             w0, NULL
    // 0x63a5e4: b.ne            #0x63a5f0
    // 0x63a5e8: r0 = Null
    //     0x63a5e8: mov             x0, NULL
    // 0x63a5ec: b               #0x63a600
    // 0x63a5f0: LoadField: r1 = r0->field_13
    //     0x63a5f0: ldur            w1, [x0, #0x13]
    // 0x63a5f4: DecompressPointer r1
    //     0x63a5f4: add             x1, x1, HEAP, lsl #32
    // 0x63a5f8: LoadField: r0 = r1->field_b
    //     0x63a5f8: ldur            w0, [x1, #0xb]
    // 0x63a5fc: DecompressPointer r0
    //     0x63a5fc: add             x0, x0, HEAP, lsl #32
    // 0x63a600: r1 = 60
    //     0x63a600: mov             x1, #0x3c
    // 0x63a604: branchIfSmi(r0, 0x63a610)
    //     0x63a604: tbz             w0, #0, #0x63a610
    // 0x63a608: r1 = LoadClassIdInstr(r0)
    //     0x63a608: ldur            x1, [x0, #-1]
    //     0x63a60c: ubfx            x1, x1, #0xc, #0x14
    // 0x63a610: cmp             x1, #0xce
    // 0x63a614: b.ne            #0x63a63c
    // 0x63a618: ldur            x1, [fp, #-8]
    // 0x63a61c: StoreField: r1->field_23 = r0
    //     0x63a61c: stur            w0, [x1, #0x23]
    //     0x63a620: ldurb           w16, [x1, #-1]
    //     0x63a624: ldurb           w17, [x0, #-1]
    //     0x63a628: and             x16, x17, x16, lsr #2
    //     0x63a62c: tst             x16, HEAP, lsr #32
    //     0x63a630: b.eq            #0x63a638
    //     0x63a634: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x63a638: r0 = _loadAgencyData()
    //     0x63a638: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x63a63c: r0 = Null
    //     0x63a63c: mov             x0, NULL
    // 0x63a640: LeaveFrame
    //     0x63a640: mov             SP, fp
    //     0x63a644: ldp             fp, lr, [SP], #0x10
    // 0x63a648: ret
    //     0x63a648: ret             
    // 0x63a64c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63a64c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63a650: b               #0x63a5b0
    // 0x63a654: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x63a654: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _loadAgencyData(/* No info */) async {
    // ** addr: 0x63a658, size: 0x2e8
    // 0x63a658: EnterFrame
    //     0x63a658: stp             fp, lr, [SP, #-0x10]!
    //     0x63a65c: mov             fp, SP
    // 0x63a660: AllocStack(0x90)
    //     0x63a660: sub             SP, SP, #0x90
    // 0x63a664: SetupParameters(_AgencyDetailPageState this /* r1 => r1, fp-0x68 */)
    //     0x63a664: stur            NULL, [fp, #-8]
    //     0x63a668: stur            x1, [fp, #-0x68]
    // 0x63a66c: CheckStackOverflow
    //     0x63a66c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63a670: cmp             SP, x16
    //     0x63a674: b.ls            #0x63a934
    // 0x63a678: r1 = 1
    //     0x63a678: mov             x1, #1
    // 0x63a67c: r0 = AllocateContext()
    //     0x63a67c: bl              #0x927010  ; AllocateContextStub
    // 0x63a680: mov             x2, x0
    // 0x63a684: ldur            x1, [fp, #-0x68]
    // 0x63a688: stur            x2, [fp, #-0x70]
    // 0x63a68c: StoreField: r2->field_f = r1
    //     0x63a68c: stur            w1, [x2, #0xf]
    // 0x63a690: InitAsync() -> Future<void?>
    //     0x63a690: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x63a694: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x63a698: ldur            x0, [fp, #-0x68]
    // 0x63a69c: LoadField: r1 = r0->field_23
    //     0x63a69c: ldur            w1, [x0, #0x23]
    // 0x63a6a0: DecompressPointer r1
    //     0x63a6a0: add             x1, x1, HEAP, lsl #32
    // 0x63a6a4: cmp             w1, NULL
    // 0x63a6a8: b.ne            #0x63a6b4
    // 0x63a6ac: r0 = Null
    //     0x63a6ac: mov             x0, NULL
    // 0x63a6b0: r0 = ReturnAsyncNotFuture()
    //     0x63a6b0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x63a6b4: ldur            x2, [fp, #-0x70]
    // 0x63a6b8: r1 = Function '<anonymous closure>':.
    //     0x63a6b8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f58] AnonymousClosure: (0x63a9f0), in [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData (0x63a658)
    //     0x63a6bc: ldr             x1, [x1, #0xf58]
    // 0x63a6c0: r0 = AllocateClosure()
    //     0x63a6c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x63a6c4: ldur            x1, [fp, #-0x68]
    // 0x63a6c8: mov             x2, x0
    // 0x63a6cc: r0 = setState()
    //     0x63a6cc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x63a6d0: ldur            x0, [fp, #-0x68]
    // 0x63a6d4: LoadField: r1 = r0->field_23
    //     0x63a6d4: ldur            w1, [x0, #0x23]
    // 0x63a6d8: DecompressPointer r1
    //     0x63a6d8: add             x1, x1, HEAP, lsl #32
    // 0x63a6dc: cmp             w1, NULL
    // 0x63a6e0: b.eq            #0x63a93c
    // 0x63a6e4: LoadField: r3 = r1->field_7
    //     0x63a6e4: ldur            w3, [x1, #7]
    // 0x63a6e8: DecompressPointer r3
    //     0x63a6e8: add             x3, x3, HEAP, lsl #32
    // 0x63a6ec: stur            x3, [fp, #-0x80]
    // 0x63a6f0: LoadField: r4 = r0->field_1f
    //     0x63a6f0: ldur            w4, [x0, #0x1f]
    // 0x63a6f4: DecompressPointer r4
    //     0x63a6f4: add             x4, x4, HEAP, lsl #32
    // 0x63a6f8: mov             x1, x4
    // 0x63a6fc: mov             x2, x3
    // 0x63a700: stur            x4, [fp, #-0x78]
    // 0x63a704: r0 = getUsersByAgency()
    //     0x63a704: bl              #0x5da4c0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getUsersByAgency
    // 0x63a708: mov             x1, x0
    // 0x63a70c: stur            x1, [fp, #-0x88]
    // 0x63a710: r0 = Await()
    //     0x63a710: bl              #0x3dd188  ; AwaitStub
    // 0x63a714: ldur            x3, [fp, #-0x68]
    // 0x63a718: StoreField: r3->field_2b = r0
    //     0x63a718: stur            w0, [x3, #0x2b]
    //     0x63a71c: ldurb           w16, [x3, #-1]
    //     0x63a720: ldurb           w17, [x0, #-1]
    //     0x63a724: and             x16, x17, x16, lsr #2
    //     0x63a728: tst             x16, HEAP, lsr #32
    //     0x63a72c: b.eq            #0x63a734
    //     0x63a730: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x63a734: ldur            x1, [fp, #-0x78]
    // 0x63a738: ldur            x2, [fp, #-0x80]
    // 0x63a73c: r0 = getTripsByAgency()
    //     0x63a73c: bl              #0x5d9bc0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getTripsByAgency
    // 0x63a740: mov             x1, x0
    // 0x63a744: stur            x1, [fp, #-0x88]
    // 0x63a748: r0 = Await()
    //     0x63a748: bl              #0x3dd188  ; AwaitStub
    // 0x63a74c: ldur            x3, [fp, #-0x68]
    // 0x63a750: StoreField: r3->field_2f = r0
    //     0x63a750: stur            w0, [x3, #0x2f]
    //     0x63a754: ldurb           w16, [x3, #-1]
    //     0x63a758: ldurb           w17, [x0, #-1]
    //     0x63a75c: and             x16, x17, x16, lsr #2
    //     0x63a760: tst             x16, HEAP, lsr #32
    //     0x63a764: b.eq            #0x63a76c
    //     0x63a768: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x63a76c: ldur            x1, [fp, #-0x78]
    // 0x63a770: ldur            x2, [fp, #-0x80]
    // 0x63a774: r0 = getHotelsByAgency()
    //     0x63a774: bl              #0x5d9314  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getHotelsByAgency
    // 0x63a778: mov             x1, x0
    // 0x63a77c: stur            x1, [fp, #-0x88]
    // 0x63a780: r0 = Await()
    //     0x63a780: bl              #0x3dd188  ; AwaitStub
    // 0x63a784: ldur            x3, [fp, #-0x68]
    // 0x63a788: StoreField: r3->field_33 = r0
    //     0x63a788: stur            w0, [x3, #0x33]
    //     0x63a78c: ldurb           w16, [x3, #-1]
    //     0x63a790: ldurb           w17, [x0, #-1]
    //     0x63a794: and             x16, x17, x16, lsr #2
    //     0x63a798: tst             x16, HEAP, lsr #32
    //     0x63a79c: b.eq            #0x63a7a4
    //     0x63a7a0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x63a7a4: ldur            x1, [fp, #-0x78]
    // 0x63a7a8: ldur            x2, [fp, #-0x80]
    // 0x63a7ac: r0 = getRoomsByAgency()
    //     0x63a7ac: bl              #0x5d2f74  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getRoomsByAgency
    // 0x63a7b0: mov             x1, x0
    // 0x63a7b4: stur            x1, [fp, #-0x88]
    // 0x63a7b8: r0 = Await()
    //     0x63a7b8: bl              #0x3dd188  ; AwaitStub
    // 0x63a7bc: ldur            x3, [fp, #-0x68]
    // 0x63a7c0: StoreField: r3->field_37 = r0
    //     0x63a7c0: stur            w0, [x3, #0x37]
    //     0x63a7c4: ldurb           w16, [x3, #-1]
    //     0x63a7c8: ldurb           w17, [x0, #-1]
    //     0x63a7cc: and             x16, x17, x16, lsr #2
    //     0x63a7d0: tst             x16, HEAP, lsr #32
    //     0x63a7d4: b.eq            #0x63a7dc
    //     0x63a7d8: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x63a7dc: ldur            x1, [fp, #-0x78]
    // 0x63a7e0: ldur            x2, [fp, #-0x80]
    // 0x63a7e4: r0 = getCurrenciesByAgency()
    //     0x63a7e4: bl              #0x5e0ff8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getCurrenciesByAgency
    // 0x63a7e8: mov             x1, x0
    // 0x63a7ec: stur            x1, [fp, #-0x88]
    // 0x63a7f0: r0 = Await()
    //     0x63a7f0: bl              #0x3dd188  ; AwaitStub
    // 0x63a7f4: ldur            x2, [fp, #-0x68]
    // 0x63a7f8: StoreField: r2->field_3b = r0
    //     0x63a7f8: stur            w0, [x2, #0x3b]
    //     0x63a7fc: ldurb           w16, [x2, #-1]
    //     0x63a800: ldurb           w17, [x0, #-1]
    //     0x63a804: and             x16, x17, x16, lsr #2
    //     0x63a808: tst             x16, HEAP, lsr #32
    //     0x63a80c: b.eq            #0x63a814
    //     0x63a810: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x63a814: ldur            x1, [fp, #-0x78]
    // 0x63a818: r0 = getAllTripManagers()
    //     0x63a818: bl              #0x5d8fe8  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAllTripManagers
    // 0x63a81c: mov             x1, x0
    // 0x63a820: stur            x1, [fp, #-0x78]
    // 0x63a824: r0 = Await()
    //     0x63a824: bl              #0x3dd188  ; AwaitStub
    // 0x63a828: ldur            x3, [fp, #-0x68]
    // 0x63a82c: StoreField: r3->field_3f = r0
    //     0x63a82c: stur            w0, [x3, #0x3f]
    //     0x63a830: ldurb           w16, [x3, #-1]
    //     0x63a834: ldurb           w17, [x0, #-1]
    //     0x63a838: and             x16, x17, x16, lsr #2
    //     0x63a83c: tst             x16, HEAP, lsr #32
    //     0x63a840: b.eq            #0x63a848
    //     0x63a844: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x63a848: ldur            x2, [fp, #-0x70]
    // 0x63a84c: r1 = Function '<anonymous closure>':.
    //     0x63a84c: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f60] AnonymousClosure: (0x63a9d0), in [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData (0x63a658)
    //     0x63a850: ldr             x1, [x1, #0xf60]
    // 0x63a854: r0 = AllocateClosure()
    //     0x63a854: bl              #0x9273d4  ; AllocateClosureStub
    // 0x63a858: ldur            x1, [fp, #-0x68]
    // 0x63a85c: mov             x2, x0
    // 0x63a860: r0 = setState()
    //     0x63a860: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x63a864: b               #0x63a92c
    // 0x63a868: sub             SP, fp, #0x90
    // 0x63a86c: ldur            x3, [fp, #-0x68]
    // 0x63a870: ldur            x2, [fp, #-0x70]
    // 0x63a874: stur            x0, [fp, #-0x78]
    // 0x63a878: r1 = Function '<anonymous closure>':.
    //     0x63a878: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f68] AnonymousClosure: (0x63a9d0), in [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData (0x63a658)
    //     0x63a87c: ldr             x1, [x1, #0xf68]
    // 0x63a880: r0 = AllocateClosure()
    //     0x63a880: bl              #0x9273d4  ; AllocateClosureStub
    // 0x63a884: ldur            x1, [fp, #-0x68]
    // 0x63a888: mov             x2, x0
    // 0x63a88c: r0 = setState()
    //     0x63a88c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x63a890: ldur            x0, [fp, #-0x68]
    // 0x63a894: LoadField: r1 = r0->field_f
    //     0x63a894: ldur            w1, [x0, #0xf]
    // 0x63a898: DecompressPointer r1
    //     0x63a898: add             x1, x1, HEAP, lsl #32
    // 0x63a89c: cmp             w1, NULL
    // 0x63a8a0: b.eq            #0x63a92c
    // 0x63a8a4: ldur            x0, [fp, #-0x78]
    // 0x63a8a8: r0 = of()
    //     0x63a8a8: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x63a8ac: r1 = Null
    //     0x63a8ac: mov             x1, NULL
    // 0x63a8b0: r2 = 4
    //     0x63a8b0: mov             x2, #4
    // 0x63a8b4: stur            x0, [fp, #-0x68]
    // 0x63a8b8: r0 = AllocateArray()
    //     0x63a8b8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x63a8bc: r16 = "Veri yüklenirken hata: "
    //     0x63a8bc: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f70] "Veri yüklenirken hata: "
    //     0x63a8c0: ldr             x16, [x16, #0xf70]
    // 0x63a8c4: StoreField: r0->field_f = r16
    //     0x63a8c4: stur            w16, [x0, #0xf]
    // 0x63a8c8: ldur            x1, [fp, #-0x78]
    // 0x63a8cc: StoreField: r0->field_13 = r1
    //     0x63a8cc: stur            w1, [x0, #0x13]
    // 0x63a8d0: str             x0, [SP]
    // 0x63a8d4: r0 = _interpolate()
    //     0x63a8d4: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x63a8d8: stur            x0, [fp, #-0x70]
    // 0x63a8dc: r0 = Text()
    //     0x63a8dc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x63a8e0: mov             x1, x0
    // 0x63a8e4: ldur            x0, [fp, #-0x70]
    // 0x63a8e8: stur            x1, [fp, #-0x78]
    // 0x63a8ec: StoreField: r1->field_b = r0
    //     0x63a8ec: stur            w0, [x1, #0xb]
    // 0x63a8f0: r0 = SnackBar()
    //     0x63a8f0: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x63a8f4: mov             x1, x0
    // 0x63a8f8: ldur            x0, [fp, #-0x78]
    // 0x63a8fc: StoreField: r1->field_b = r0
    //     0x63a8fc: stur            w0, [x1, #0xb]
    // 0x63a900: r0 = Instance_Duration
    //     0x63a900: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f78] Obj!Duration@a2dde1
    //     0x63a904: ldr             x0, [x0, #0xf78]
    // 0x63a908: StoreField: r1->field_3f = r0
    //     0x63a908: stur            w0, [x1, #0x3f]
    // 0x63a90c: r0 = Instance_Clip
    //     0x63a90c: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x63a910: ldr             x0, [x0, #0x2d8]
    // 0x63a914: StoreField: r1->field_53 = r0
    //     0x63a914: stur            w0, [x1, #0x53]
    // 0x63a918: r0 = false
    //     0x63a918: add             x0, NULL, #0x30  ; false
    // 0x63a91c: StoreField: r1->field_43 = r0
    //     0x63a91c: stur            w0, [x1, #0x43]
    // 0x63a920: mov             x2, x1
    // 0x63a924: ldur            x1, [fp, #-0x68]
    // 0x63a928: r0 = showSnackBar()
    //     0x63a928: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x63a92c: r0 = Null
    //     0x63a92c: mov             x0, NULL
    // 0x63a930: r0 = ReturnAsyncNotFuture()
    //     0x63a930: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x63a934: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63a934: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63a938: b               #0x63a678
    // 0x63a93c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x63a93c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> _loadAgencyData(dynamic) {
    // ** addr: 0x63a940, size: 0x38
    // 0x63a940: EnterFrame
    //     0x63a940: stp             fp, lr, [SP, #-0x10]!
    //     0x63a944: mov             fp, SP
    // 0x63a948: ldr             x0, [fp, #0x10]
    // 0x63a94c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x63a94c: ldur            w1, [x0, #0x17]
    // 0x63a950: DecompressPointer r1
    //     0x63a950: add             x1, x1, HEAP, lsl #32
    // 0x63a954: CheckStackOverflow
    //     0x63a954: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x63a958: cmp             SP, x16
    //     0x63a95c: b.ls            #0x63a970
    // 0x63a960: r0 = _loadAgencyData()
    //     0x63a960: bl              #0x63a658  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData
    // 0x63a964: LeaveFrame
    //     0x63a964: mov             SP, fp
    //     0x63a968: ldp             fp, lr, [SP], #0x10
    // 0x63a96c: ret
    //     0x63a96c: ret             
    // 0x63a970: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x63a970: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x63a974: b               #0x63a960
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x63a9d0, size: 0x20
    // 0x63a9d0: r0 = false
    //     0x63a9d0: add             x0, NULL, #0x30  ; false
    // 0x63a9d4: ldr             x1, [SP]
    // 0x63a9d8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x63a9d8: ldur            w2, [x1, #0x17]
    // 0x63a9dc: DecompressPointer r2
    //     0x63a9dc: add             x2, x2, HEAP, lsl #32
    // 0x63a9e0: LoadField: r1 = r2->field_f
    //     0x63a9e0: ldur            w1, [x2, #0xf]
    // 0x63a9e4: DecompressPointer r1
    //     0x63a9e4: add             x1, x1, HEAP, lsl #32
    // 0x63a9e8: StoreField: r1->field_27 = r0
    //     0x63a9e8: stur            w0, [x1, #0x27]
    // 0x63a9ec: ret
    //     0x63a9ec: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x63a9f0, size: 0x20
    // 0x63a9f0: r0 = true
    //     0x63a9f0: add             x0, NULL, #0x20  ; true
    // 0x63a9f4: ldr             x1, [SP]
    // 0x63a9f8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x63a9f8: ldur            w2, [x1, #0x17]
    // 0x63a9fc: DecompressPointer r2
    //     0x63a9fc: add             x2, x2, HEAP, lsl #32
    // 0x63aa00: LoadField: r1 = r2->field_f
    //     0x63aa00: ldur            w1, [x2, #0xf]
    // 0x63aa04: DecompressPointer r1
    //     0x63aa04: add             x1, x1, HEAP, lsl #32
    // 0x63aa08: StoreField: r1->field_27 = r0
    //     0x63aa08: stur            w0, [x1, #0x27]
    // 0x63aa0c: ret
    //     0x63aa0c: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x738c7c, size: 0x7cc
    // 0x738c7c: EnterFrame
    //     0x738c7c: stp             fp, lr, [SP, #-0x10]!
    //     0x738c80: mov             fp, SP
    // 0x738c84: AllocStack(0xa8)
    //     0x738c84: sub             SP, SP, #0xa8
    // 0x738c88: SetupParameters(_AgencyDetailPageState this /* r1 => r0, fp-0x10 */)
    //     0x738c88: mov             x0, x1
    //     0x738c8c: stur            x1, [fp, #-0x10]
    // 0x738c90: CheckStackOverflow
    //     0x738c90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x738c94: cmp             SP, x16
    //     0x738c98: b.ls            #0x739430
    // 0x738c9c: LoadField: r1 = r0->field_23
    //     0x738c9c: ldur            w1, [x0, #0x23]
    // 0x738ca0: DecompressPointer r1
    //     0x738ca0: add             x1, x1, HEAP, lsl #32
    // 0x738ca4: cmp             w1, NULL
    // 0x738ca8: b.ne            #0x738d34
    // 0x738cac: r0 = AppBar()
    //     0x738cac: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x738cb0: mov             x1, x0
    // 0x738cb4: r2 = Instance_Text
    //     0x738cb4: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ec8] Obj!Text@a1bbd1
    //     0x738cb8: ldr             x2, [x2, #0xec8]
    // 0x738cbc: stur            x0, [fp, #-8]
    // 0x738cc0: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x738cc0: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x738cc4: r0 = AppBar()
    //     0x738cc4: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x738cc8: r0 = Scaffold()
    //     0x738cc8: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x738ccc: mov             x1, x0
    // 0x738cd0: ldur            x0, [fp, #-8]
    // 0x738cd4: ArrayStore: r1[0] = r0  ; List_4
    //     0x738cd4: stur            w0, [x1, #0x17]
    // 0x738cd8: r0 = Instance_Center
    //     0x738cd8: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ed0] Obj!Center@a1fe91
    //     0x738cdc: ldr             x0, [x0, #0xed0]
    // 0x738ce0: StoreField: r1->field_1b = r0
    //     0x738ce0: stur            w0, [x1, #0x1b]
    // 0x738ce4: r2 = Instance_AlignmentDirectional
    //     0x738ce4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x738ce8: ldr             x2, [x2, #0x350]
    // 0x738cec: StoreField: r1->field_2f = r2
    //     0x738cec: stur            w2, [x1, #0x2f]
    // 0x738cf0: r5 = true
    //     0x738cf0: add             x5, NULL, #0x20  ; true
    // 0x738cf4: StoreField: r1->field_5f = r5
    //     0x738cf4: stur            w5, [x1, #0x5f]
    // 0x738cf8: r3 = Instance_DragStartBehavior
    //     0x738cf8: ldr             x3, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x738cfc: StoreField: r1->field_63 = r3
    //     0x738cfc: stur            w3, [x1, #0x63]
    // 0x738d00: r4 = false
    //     0x738d00: add             x4, NULL, #0x30  ; false
    // 0x738d04: StoreField: r1->field_b = r4
    //     0x738d04: stur            w4, [x1, #0xb]
    // 0x738d08: StoreField: r1->field_f = r5
    //     0x738d08: stur            w5, [x1, #0xf]
    // 0x738d0c: StoreField: r1->field_13 = r4
    //     0x738d0c: stur            w4, [x1, #0x13]
    // 0x738d10: r6 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x738d10: add             x6, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x738d14: ldr             x6, [x6, #0x358]
    // 0x738d18: StoreField: r1->field_4b = r6
    //     0x738d18: stur            w6, [x1, #0x4b]
    // 0x738d1c: StoreField: r1->field_6b = r5
    //     0x738d1c: stur            w5, [x1, #0x6b]
    // 0x738d20: StoreField: r1->field_6f = r5
    //     0x738d20: stur            w5, [x1, #0x6f]
    // 0x738d24: mov             x0, x1
    // 0x738d28: LeaveFrame
    //     0x738d28: mov             SP, fp
    //     0x738d2c: ldp             fp, lr, [SP], #0x10
    // 0x738d30: ret
    //     0x738d30: ret             
    // 0x738d34: r5 = true
    //     0x738d34: add             x5, NULL, #0x20  ; true
    // 0x738d38: r4 = false
    //     0x738d38: add             x4, NULL, #0x30  ; false
    // 0x738d3c: r2 = Instance_AlignmentDirectional
    //     0x738d3c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x738d40: ldr             x2, [x2, #0x350]
    // 0x738d44: r3 = Instance_DragStartBehavior
    //     0x738d44: ldr             x3, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x738d48: r6 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x738d48: add             x6, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x738d4c: ldr             x6, [x6, #0x358]
    // 0x738d50: LoadField: r7 = r1->field_b
    //     0x738d50: ldur            w7, [x1, #0xb]
    // 0x738d54: DecompressPointer r7
    //     0x738d54: add             x7, x7, HEAP, lsl #32
    // 0x738d58: stur            x7, [fp, #-8]
    // 0x738d5c: r0 = Text()
    //     0x738d5c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x738d60: mov             x3, x0
    // 0x738d64: ldur            x0, [fp, #-8]
    // 0x738d68: stur            x3, [fp, #-0x18]
    // 0x738d6c: StoreField: r3->field_b = r0
    //     0x738d6c: stur            w0, [x3, #0xb]
    // 0x738d70: r0 = Instance_TextStyle
    //     0x738d70: add             x0, PP, #0x18, lsl #12  ; [pp+0x18ed8] Obj!TextStyle@a17441
    //     0x738d74: ldr             x0, [x0, #0xed8]
    // 0x738d78: StoreField: r3->field_13 = r0
    //     0x738d78: stur            w0, [x3, #0x13]
    // 0x738d7c: ldur            x2, [fp, #-0x10]
    // 0x738d80: r1 = Function '_loadAgencyData@922294929':.
    //     0x738d80: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ee0] AnonymousClosure: (0x63a940), in [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_loadAgencyData (0x63a658)
    //     0x738d84: ldr             x1, [x1, #0xee0]
    // 0x738d88: r0 = AllocateClosure()
    //     0x738d88: bl              #0x9273d4  ; AllocateClosureStub
    // 0x738d8c: stur            x0, [fp, #-8]
    // 0x738d90: r0 = IconButton()
    //     0x738d90: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x738d94: mov             x3, x0
    // 0x738d98: ldur            x0, [fp, #-8]
    // 0x738d9c: stur            x3, [fp, #-0x20]
    // 0x738da0: StoreField: r3->field_3b = r0
    //     0x738da0: stur            w0, [x3, #0x3b]
    // 0x738da4: r5 = false
    //     0x738da4: add             x5, NULL, #0x30  ; false
    // 0x738da8: StoreField: r3->field_4f = r5
    //     0x738da8: stur            w5, [x3, #0x4f]
    // 0x738dac: r1 = Instance_Icon
    //     0x738dac: add             x1, PP, #0x16, lsl #12  ; [pp+0x160d0] Obj!Icon@a1e8b1
    //     0x738db0: ldr             x1, [x1, #0xd0]
    // 0x738db4: StoreField: r3->field_1f = r1
    //     0x738db4: stur            w1, [x3, #0x1f]
    // 0x738db8: r1 = Instance__IconButtonVariant
    //     0x738db8: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x738dbc: ldr             x1, [x1, #0x1b8]
    // 0x738dc0: StoreField: r3->field_6f = r1
    //     0x738dc0: stur            w1, [x3, #0x6f]
    // 0x738dc4: r1 = Null
    //     0x738dc4: mov             x1, NULL
    // 0x738dc8: r2 = 2
    //     0x738dc8: mov             x2, #2
    // 0x738dcc: r0 = AllocateArray()
    //     0x738dcc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x738dd0: mov             x2, x0
    // 0x738dd4: ldur            x0, [fp, #-0x20]
    // 0x738dd8: stur            x2, [fp, #-0x28]
    // 0x738ddc: StoreField: r2->field_f = r0
    //     0x738ddc: stur            w0, [x2, #0xf]
    // 0x738de0: r1 = <Widget>
    //     0x738de0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x738de4: r0 = AllocateGrowableArray()
    //     0x738de4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x738de8: mov             x1, x0
    // 0x738dec: ldur            x0, [fp, #-0x28]
    // 0x738df0: stur            x1, [fp, #-0x30]
    // 0x738df4: StoreField: r1->field_f = r0
    //     0x738df4: stur            w0, [x1, #0xf]
    // 0x738df8: r0 = 2
    //     0x738df8: mov             x0, #2
    // 0x738dfc: StoreField: r1->field_b = r0
    //     0x738dfc: stur            w0, [x1, #0xb]
    // 0x738e00: ldur            x2, [fp, #-0x10]
    // 0x738e04: LoadField: r3 = r2->field_1b
    //     0x738e04: ldur            w3, [x2, #0x1b]
    // 0x738e08: DecompressPointer r3
    //     0x738e08: add             x3, x3, HEAP, lsl #32
    // 0x738e0c: r16 = Sentinel
    //     0x738e0c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x738e10: cmp             w3, w16
    // 0x738e14: b.eq            #0x739438
    // 0x738e18: stur            x3, [fp, #-0x20]
    // 0x738e1c: LoadField: r0 = r2->field_2b
    //     0x738e1c: ldur            w0, [x2, #0x2b]
    // 0x738e20: DecompressPointer r0
    //     0x738e20: add             x0, x0, HEAP, lsl #32
    // 0x738e24: r4 = LoadClassIdInstr(r0)
    //     0x738e24: ldur            x4, [x0, #-1]
    //     0x738e28: ubfx            x4, x4, #0xc, #0x14
    // 0x738e2c: str             x0, [SP]
    // 0x738e30: mov             x0, x4
    // 0x738e34: r0 = GDT[cid_x0 + 0x879f]()
    //     0x738e34: mov             x17, #0x879f
    //     0x738e38: add             lr, x0, x17
    //     0x738e3c: ldr             lr, [x21, lr, lsl #3]
    //     0x738e40: blr             lr
    // 0x738e44: r3 = LoadInt32Instr(r0)
    //     0x738e44: sbfx            x3, x0, #1, #0x1f
    // 0x738e48: r1 = Instance_IconData
    //     0x738e48: add             x1, PP, #0x18, lsl #12  ; [pp+0x18ee8] Obj!IconData@a0a141
    //     0x738e4c: ldr             x1, [x1, #0xee8]
    // 0x738e50: r2 = "Kullanıcılar"
    //     0x738e50: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ef0] "Kullanıcılar"
    //     0x738e54: ldr             x2, [x2, #0xef0]
    // 0x738e58: r5 = true
    //     0x738e58: add             x5, NULL, #0x20  ; true
    // 0x738e5c: r0 = buildTab()
    //     0x738e5c: bl              #0x741544  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildTab
    // 0x738e60: mov             x2, x0
    // 0x738e64: ldur            x1, [fp, #-0x10]
    // 0x738e68: stur            x2, [fp, #-0x28]
    // 0x738e6c: LoadField: r0 = r1->field_2f
    //     0x738e6c: ldur            w0, [x1, #0x2f]
    // 0x738e70: DecompressPointer r0
    //     0x738e70: add             x0, x0, HEAP, lsl #32
    // 0x738e74: r3 = LoadClassIdInstr(r0)
    //     0x738e74: ldur            x3, [x0, #-1]
    //     0x738e78: ubfx            x3, x3, #0xc, #0x14
    // 0x738e7c: str             x0, [SP]
    // 0x738e80: mov             x0, x3
    // 0x738e84: r0 = GDT[cid_x0 + 0x879f]()
    //     0x738e84: mov             x17, #0x879f
    //     0x738e88: add             lr, x0, x17
    //     0x738e8c: ldr             lr, [x21, lr, lsl #3]
    //     0x738e90: blr             lr
    // 0x738e94: r3 = LoadInt32Instr(r0)
    //     0x738e94: sbfx            x3, x0, #1, #0x1f
    // 0x738e98: r1 = Instance_IconData
    //     0x738e98: add             x1, PP, #0x15, lsl #12  ; [pp+0x15608] Obj!IconData@a0a641
    //     0x738e9c: ldr             x1, [x1, #0x608]
    // 0x738ea0: r2 = "Seferler"
    //     0x738ea0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18ef8] "Seferler"
    //     0x738ea4: ldr             x2, [x2, #0xef8]
    // 0x738ea8: r5 = true
    //     0x738ea8: add             x5, NULL, #0x20  ; true
    // 0x738eac: r0 = buildTab()
    //     0x738eac: bl              #0x741544  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildTab
    // 0x738eb0: mov             x2, x0
    // 0x738eb4: ldur            x1, [fp, #-0x10]
    // 0x738eb8: stur            x2, [fp, #-0x38]
    // 0x738ebc: LoadField: r0 = r1->field_33
    //     0x738ebc: ldur            w0, [x1, #0x33]
    // 0x738ec0: DecompressPointer r0
    //     0x738ec0: add             x0, x0, HEAP, lsl #32
    // 0x738ec4: r3 = LoadClassIdInstr(r0)
    //     0x738ec4: ldur            x3, [x0, #-1]
    //     0x738ec8: ubfx            x3, x3, #0xc, #0x14
    // 0x738ecc: str             x0, [SP]
    // 0x738ed0: mov             x0, x3
    // 0x738ed4: r0 = GDT[cid_x0 + 0x879f]()
    //     0x738ed4: mov             x17, #0x879f
    //     0x738ed8: add             lr, x0, x17
    //     0x738edc: ldr             lr, [x21, lr, lsl #3]
    //     0x738ee0: blr             lr
    // 0x738ee4: r3 = LoadInt32Instr(r0)
    //     0x738ee4: sbfx            x3, x0, #1, #0x1f
    // 0x738ee8: r1 = Instance_IconData
    //     0x738ee8: add             x1, PP, #0x12, lsl #12  ; [pp+0x127a0] Obj!IconData@a09da1
    //     0x738eec: ldr             x1, [x1, #0x7a0]
    // 0x738ef0: r2 = "Oteller"
    //     0x738ef0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f00] "Oteller"
    //     0x738ef4: ldr             x2, [x2, #0xf00]
    // 0x738ef8: r5 = true
    //     0x738ef8: add             x5, NULL, #0x20  ; true
    // 0x738efc: r0 = buildTab()
    //     0x738efc: bl              #0x741544  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildTab
    // 0x738f00: mov             x2, x0
    // 0x738f04: ldur            x1, [fp, #-0x10]
    // 0x738f08: stur            x2, [fp, #-0x40]
    // 0x738f0c: LoadField: r0 = r1->field_37
    //     0x738f0c: ldur            w0, [x1, #0x37]
    // 0x738f10: DecompressPointer r0
    //     0x738f10: add             x0, x0, HEAP, lsl #32
    // 0x738f14: r3 = LoadClassIdInstr(r0)
    //     0x738f14: ldur            x3, [x0, #-1]
    //     0x738f18: ubfx            x3, x3, #0xc, #0x14
    // 0x738f1c: str             x0, [SP]
    // 0x738f20: mov             x0, x3
    // 0x738f24: r0 = GDT[cid_x0 + 0x879f]()
    //     0x738f24: mov             x17, #0x879f
    //     0x738f28: add             lr, x0, x17
    //     0x738f2c: ldr             lr, [x21, lr, lsl #3]
    //     0x738f30: blr             lr
    // 0x738f34: r3 = LoadInt32Instr(r0)
    //     0x738f34: sbfx            x3, x0, #1, #0x1f
    // 0x738f38: r1 = Instance_IconData
    //     0x738f38: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f08] Obj!IconData@a0a761
    //     0x738f3c: ldr             x1, [x1, #0xf08]
    // 0x738f40: r2 = "Odalar"
    //     0x738f40: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f10] "Odalar"
    //     0x738f44: ldr             x2, [x2, #0xf10]
    // 0x738f48: r5 = true
    //     0x738f48: add             x5, NULL, #0x20  ; true
    // 0x738f4c: r0 = buildTab()
    //     0x738f4c: bl              #0x741544  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildTab
    // 0x738f50: mov             x2, x0
    // 0x738f54: ldur            x1, [fp, #-0x10]
    // 0x738f58: stur            x2, [fp, #-0x48]
    // 0x738f5c: LoadField: r0 = r1->field_3b
    //     0x738f5c: ldur            w0, [x1, #0x3b]
    // 0x738f60: DecompressPointer r0
    //     0x738f60: add             x0, x0, HEAP, lsl #32
    // 0x738f64: r3 = LoadClassIdInstr(r0)
    //     0x738f64: ldur            x3, [x0, #-1]
    //     0x738f68: ubfx            x3, x3, #0xc, #0x14
    // 0x738f6c: str             x0, [SP]
    // 0x738f70: mov             x0, x3
    // 0x738f74: r0 = GDT[cid_x0 + 0x879f]()
    //     0x738f74: mov             x17, #0x879f
    //     0x738f78: add             lr, x0, x17
    //     0x738f7c: ldr             lr, [x21, lr, lsl #3]
    //     0x738f80: blr             lr
    // 0x738f84: r3 = LoadInt32Instr(r0)
    //     0x738f84: sbfx            x3, x0, #1, #0x1f
    // 0x738f88: r1 = Instance_IconData
    //     0x738f88: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f18] Obj!IconData@a09d81
    //     0x738f8c: ldr             x1, [x1, #0xf18]
    // 0x738f90: r2 = "Döviz"
    //     0x738f90: add             x2, PP, #0x15, lsl #12  ; [pp+0x15e08] "Döviz"
    //     0x738f94: ldr             x2, [x2, #0xe08]
    // 0x738f98: r5 = true
    //     0x738f98: add             x5, NULL, #0x20  ; true
    // 0x738f9c: r0 = buildTab()
    //     0x738f9c: bl              #0x741544  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildTab
    // 0x738fa0: r1 = Instance_IconData
    //     0x738fa0: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f20] Obj!IconData@a09e61
    //     0x738fa4: ldr             x1, [x1, #0xf20]
    // 0x738fa8: r2 = "Takvim"
    //     0x738fa8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18f28] "Takvim"
    //     0x738fac: ldr             x2, [x2, #0xf28]
    // 0x738fb0: r3 = 0
    //     0x738fb0: mov             x3, #0
    // 0x738fb4: r5 = false
    //     0x738fb4: add             x5, NULL, #0x30  ; false
    // 0x738fb8: stur            x0, [fp, #-0x50]
    // 0x738fbc: r0 = buildTab()
    //     0x738fbc: bl              #0x741544  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/shared_widgets.dart] ::buildTab
    // 0x738fc0: r1 = Null
    //     0x738fc0: mov             x1, NULL
    // 0x738fc4: r2 = 12
    //     0x738fc4: mov             x2, #0xc
    // 0x738fc8: stur            x0, [fp, #-0x58]
    // 0x738fcc: r0 = AllocateArray()
    //     0x738fcc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x738fd0: mov             x2, x0
    // 0x738fd4: ldur            x0, [fp, #-0x28]
    // 0x738fd8: stur            x2, [fp, #-0x60]
    // 0x738fdc: StoreField: r2->field_f = r0
    //     0x738fdc: stur            w0, [x2, #0xf]
    // 0x738fe0: ldur            x0, [fp, #-0x38]
    // 0x738fe4: StoreField: r2->field_13 = r0
    //     0x738fe4: stur            w0, [x2, #0x13]
    // 0x738fe8: ldur            x0, [fp, #-0x40]
    // 0x738fec: ArrayStore: r2[0] = r0  ; List_4
    //     0x738fec: stur            w0, [x2, #0x17]
    // 0x738ff0: ldur            x0, [fp, #-0x48]
    // 0x738ff4: StoreField: r2->field_1b = r0
    //     0x738ff4: stur            w0, [x2, #0x1b]
    // 0x738ff8: ldur            x0, [fp, #-0x50]
    // 0x738ffc: StoreField: r2->field_1f = r0
    //     0x738ffc: stur            w0, [x2, #0x1f]
    // 0x739000: ldur            x0, [fp, #-0x58]
    // 0x739004: StoreField: r2->field_23 = r0
    //     0x739004: stur            w0, [x2, #0x23]
    // 0x739008: r1 = <Widget>
    //     0x739008: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73900c: r0 = AllocateGrowableArray()
    //     0x73900c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x739010: mov             x1, x0
    // 0x739014: ldur            x0, [fp, #-0x60]
    // 0x739018: stur            x1, [fp, #-0x28]
    // 0x73901c: StoreField: r1->field_f = r0
    //     0x73901c: stur            w0, [x1, #0xf]
    // 0x739020: r2 = 12
    //     0x739020: mov             x2, #0xc
    // 0x739024: StoreField: r1->field_b = r2
    //     0x739024: stur            w2, [x1, #0xb]
    // 0x739028: r0 = TabBar()
    //     0x739028: bl              #0x741538  ; AllocateTabBarStub -> TabBar (size=0x8c)
    // 0x73902c: mov             x1, x0
    // 0x739030: ldur            x0, [fp, #-0x28]
    // 0x739034: stur            x1, [fp, #-0x38]
    // 0x739038: StoreField: r1->field_b = r0
    //     0x739038: stur            w0, [x1, #0xb]
    // 0x73903c: ldur            x0, [fp, #-0x20]
    // 0x739040: StoreField: r1->field_f = r0
    //     0x739040: stur            w0, [x1, #0xf]
    // 0x739044: r0 = true
    //     0x739044: add             x0, NULL, #0x20  ; true
    // 0x739048: StoreField: r1->field_13 = r0
    //     0x739048: stur            w0, [x1, #0x13]
    // 0x73904c: r2 = Instance_Color
    //     0x73904c: ldr             x2, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x739050: StoreField: r1->field_1b = r2
    //     0x739050: stur            w2, [x1, #0x1b]
    // 0x739054: StoreField: r1->field_2f = r0
    //     0x739054: stur            w0, [x1, #0x2f]
    // 0x739058: d0 = 2.000000
    //     0x739058: fmov            d0, #2.00000000
    // 0x73905c: StoreField: r1->field_1f = d0
    //     0x73905c: stur            d0, [x1, #0x1f]
    // 0x739060: r3 = Instance_EdgeInsets
    //     0x739060: ldr             x3, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x739064: StoreField: r1->field_27 = r3
    //     0x739064: stur            w3, [x1, #0x27]
    // 0x739068: StoreField: r1->field_3f = r2
    //     0x739068: stur            w2, [x1, #0x3f]
    // 0x73906c: r2 = Instance_Color
    //     0x73906c: ldr             x2, [PP, #0x5778]  ; [pp+0x5778] Obj!Color@a21c11
    // 0x739070: StoreField: r1->field_43 = r2
    //     0x739070: stur            w2, [x1, #0x43]
    // 0x739074: r2 = Instance_DragStartBehavior
    //     0x739074: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x739078: StoreField: r1->field_57 = r2
    //     0x739078: stur            w2, [x1, #0x57]
    // 0x73907c: StoreField: r1->field_87 = r0
    //     0x73907c: stur            w0, [x1, #0x87]
    // 0x739080: r0 = AppBar()
    //     0x739080: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x739084: stur            x0, [fp, #-0x20]
    // 0x739088: r16 = Instance_Color
    //     0x739088: add             x16, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x73908c: ldr             x16, [x16, #0xf30]
    // 0x739090: r30 = true
    //     0x739090: add             lr, NULL, #0x20  ; true
    // 0x739094: stp             lr, x16, [SP, #0x18]
    // 0x739098: r16 = Instance_IconThemeData
    //     0x739098: ldr             x16, [PP, #0x57e0]  ; [pp+0x57e0] Obj!IconThemeData@a1a731
    // 0x73909c: ldur            lr, [fp, #-0x30]
    // 0x7390a0: stp             lr, x16, [SP, #8]
    // 0x7390a4: ldur            x16, [fp, #-0x38]
    // 0x7390a8: str             x16, [SP]
    // 0x7390ac: mov             x1, x0
    // 0x7390b0: ldur            x2, [fp, #-0x18]
    // 0x7390b4: r4 = const [0, 0x7, 0x5, 0x2, actions, 0x5, backgroundColor, 0x2, bottom, 0x6, centerTitle, 0x3, iconTheme, 0x4, null]
    //     0x7390b4: add             x4, PP, #0x18, lsl #12  ; [pp+0x18f38] List(15) [0, 0x7, 0x5, 0x2, "actions", 0x5, "backgroundColor", 0x2, "bottom", 0x6, "centerTitle", 0x3, "iconTheme", 0x4, Null]
    //     0x7390b8: ldr             x4, [x4, #0xf38]
    // 0x7390bc: r0 = AppBar()
    //     0x7390bc: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7390c0: ldur            x1, [fp, #-0x10]
    // 0x7390c4: r0 = _buildFAB()
    //     0x7390c4: bl              #0x7394dc  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_buildFAB
    // 0x7390c8: mov             x1, x0
    // 0x7390cc: ldur            x0, [fp, #-0x10]
    // 0x7390d0: stur            x1, [fp, #-0x60]
    // 0x7390d4: LoadField: r2 = r0->field_27
    //     0x7390d4: ldur            w2, [x0, #0x27]
    // 0x7390d8: DecompressPointer r2
    //     0x7390d8: add             x2, x2, HEAP, lsl #32
    // 0x7390dc: tbnz            w2, #4, #0x7390f0
    // 0x7390e0: r3 = Instance_Center
    //     0x7390e0: add             x3, PP, #0x18, lsl #12  ; [pp+0x18f40] Obj!Center@a1fe11
    //     0x7390e4: ldr             x3, [x3, #0xf40]
    // 0x7390e8: r0 = Instance_DragStartBehavior
    //     0x7390e8: ldr             x0, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7390ec: b               #0x7393b4
    // 0x7390f0: ldur            x2, [fp, #-8]
    // 0x7390f4: LoadField: r3 = r0->field_1b
    //     0x7390f4: ldur            w3, [x0, #0x1b]
    // 0x7390f8: DecompressPointer r3
    //     0x7390f8: add             x3, x3, HEAP, lsl #32
    // 0x7390fc: stur            x3, [fp, #-0x58]
    // 0x739100: LoadField: r4 = r0->field_43
    //     0x739100: ldur            w4, [x0, #0x43]
    // 0x739104: DecompressPointer r4
    //     0x739104: add             x4, x4, HEAP, lsl #32
    // 0x739108: stur            x4, [fp, #-0x50]
    // 0x73910c: LoadField: r5 = r0->field_2b
    //     0x73910c: ldur            w5, [x0, #0x2b]
    // 0x739110: DecompressPointer r5
    //     0x739110: add             x5, x5, HEAP, lsl #32
    // 0x739114: stur            x5, [fp, #-0x48]
    // 0x739118: LoadField: r6 = r0->field_2f
    //     0x739118: ldur            w6, [x0, #0x2f]
    // 0x73911c: DecompressPointer r6
    //     0x73911c: add             x6, x6, HEAP, lsl #32
    // 0x739120: stur            x6, [fp, #-0x40]
    // 0x739124: LoadField: r7 = r0->field_33
    //     0x739124: ldur            w7, [x0, #0x33]
    // 0x739128: DecompressPointer r7
    //     0x739128: add             x7, x7, HEAP, lsl #32
    // 0x73912c: stur            x7, [fp, #-0x38]
    // 0x739130: LoadField: r8 = r0->field_37
    //     0x739130: ldur            w8, [x0, #0x37]
    // 0x739134: DecompressPointer r8
    //     0x739134: add             x8, x8, HEAP, lsl #32
    // 0x739138: stur            x8, [fp, #-0x30]
    // 0x73913c: LoadField: r9 = r0->field_23
    //     0x73913c: ldur            w9, [x0, #0x23]
    // 0x739140: DecompressPointer r9
    //     0x739140: add             x9, x9, HEAP, lsl #32
    // 0x739144: stur            x9, [fp, #-0x28]
    // 0x739148: cmp             w9, NULL
    // 0x73914c: b.eq            #0x739444
    // 0x739150: LoadField: r10 = r0->field_1f
    //     0x739150: ldur            w10, [x0, #0x1f]
    // 0x739154: DecompressPointer r10
    //     0x739154: add             x10, x10, HEAP, lsl #32
    // 0x739158: stur            x10, [fp, #-0x18]
    // 0x73915c: r0 = UsersTab()
    //     0x73915c: bl              #0x7394d0  ; AllocateUsersTabStub -> UsersTab (size=0x28)
    // 0x739160: mov             x1, x0
    // 0x739164: ldur            x0, [fp, #-0x48]
    // 0x739168: stur            x1, [fp, #-0x70]
    // 0x73916c: StoreField: r1->field_b = r0
    //     0x73916c: stur            w0, [x1, #0xb]
    // 0x739170: ldur            x2, [fp, #-0x40]
    // 0x739174: StoreField: r1->field_f = r2
    //     0x739174: stur            w2, [x1, #0xf]
    // 0x739178: ldur            x3, [fp, #-0x38]
    // 0x73917c: StoreField: r1->field_13 = r3
    //     0x73917c: stur            w3, [x1, #0x13]
    // 0x739180: ldur            x4, [fp, #-0x30]
    // 0x739184: ArrayStore: r1[0] = r4  ; List_4
    //     0x739184: stur            w4, [x1, #0x17]
    // 0x739188: ldur            x5, [fp, #-0x28]
    // 0x73918c: StoreField: r1->field_1b = r5
    //     0x73918c: stur            w5, [x1, #0x1b]
    // 0x739190: ldur            x6, [fp, #-0x18]
    // 0x739194: StoreField: r1->field_1f = r6
    //     0x739194: stur            w6, [x1, #0x1f]
    // 0x739198: ldur            x7, [fp, #-8]
    // 0x73919c: StoreField: r1->field_23 = r7
    //     0x73919c: stur            w7, [x1, #0x23]
    // 0x7391a0: ldur            x8, [fp, #-0x50]
    // 0x7391a4: StoreField: r1->field_7 = r8
    //     0x7391a4: stur            w8, [x1, #7]
    // 0x7391a8: ldur            x8, [fp, #-0x10]
    // 0x7391ac: LoadField: r9 = r8->field_47
    //     0x7391ac: ldur            w9, [x8, #0x47]
    // 0x7391b0: DecompressPointer r9
    //     0x7391b0: add             x9, x9, HEAP, lsl #32
    // 0x7391b4: stur            x9, [fp, #-0x68]
    // 0x7391b8: LoadField: r10 = r8->field_3f
    //     0x7391b8: ldur            w10, [x8, #0x3f]
    // 0x7391bc: DecompressPointer r10
    //     0x7391bc: add             x10, x10, HEAP, lsl #32
    // 0x7391c0: stur            x10, [fp, #-0x50]
    // 0x7391c4: r0 = TripsTab()
    //     0x7391c4: bl              #0x7394a4  ; AllocateTripsTabStub -> TripsTab (size=0x24)
    // 0x7391c8: mov             x1, x0
    // 0x7391cc: ldur            x0, [fp, #-0x40]
    // 0x7391d0: stur            x1, [fp, #-0x78]
    // 0x7391d4: StoreField: r1->field_b = r0
    //     0x7391d4: stur            w0, [x1, #0xb]
    // 0x7391d8: ldur            x2, [fp, #-0x48]
    // 0x7391dc: StoreField: r1->field_f = r2
    //     0x7391dc: stur            w2, [x1, #0xf]
    // 0x7391e0: ldur            x3, [fp, #-0x50]
    // 0x7391e4: StoreField: r1->field_13 = r3
    //     0x7391e4: stur            w3, [x1, #0x13]
    // 0x7391e8: ldur            x3, [fp, #-0x28]
    // 0x7391ec: ArrayStore: r1[0] = r3  ; List_4
    //     0x7391ec: stur            w3, [x1, #0x17]
    // 0x7391f0: ldur            x4, [fp, #-0x18]
    // 0x7391f4: StoreField: r1->field_1b = r4
    //     0x7391f4: stur            w4, [x1, #0x1b]
    // 0x7391f8: ldur            x5, [fp, #-8]
    // 0x7391fc: StoreField: r1->field_1f = r5
    //     0x7391fc: stur            w5, [x1, #0x1f]
    // 0x739200: ldur            x6, [fp, #-0x68]
    // 0x739204: StoreField: r1->field_7 = r6
    //     0x739204: stur            w6, [x1, #7]
    // 0x739208: ldur            x6, [fp, #-0x10]
    // 0x73920c: LoadField: r7 = r6->field_4b
    //     0x73920c: ldur            w7, [x6, #0x4b]
    // 0x739210: DecompressPointer r7
    //     0x739210: add             x7, x7, HEAP, lsl #32
    // 0x739214: stur            x7, [fp, #-0x50]
    // 0x739218: r0 = HotelsTab()
    //     0x739218: bl              #0x739478  ; AllocateHotelsTabStub -> HotelsTab (size=0x20)
    // 0x73921c: mov             x1, x0
    // 0x739220: ldur            x0, [fp, #-0x38]
    // 0x739224: stur            x1, [fp, #-0x68]
    // 0x739228: StoreField: r1->field_b = r0
    //     0x739228: stur            w0, [x1, #0xb]
    // 0x73922c: ldur            x2, [fp, #-0x40]
    // 0x739230: StoreField: r1->field_f = r2
    //     0x739230: stur            w2, [x1, #0xf]
    // 0x739234: ldur            x3, [fp, #-0x28]
    // 0x739238: StoreField: r1->field_13 = r3
    //     0x739238: stur            w3, [x1, #0x13]
    // 0x73923c: ldur            x4, [fp, #-0x18]
    // 0x739240: ArrayStore: r1[0] = r4  ; List_4
    //     0x739240: stur            w4, [x1, #0x17]
    // 0x739244: ldur            x5, [fp, #-8]
    // 0x739248: StoreField: r1->field_1b = r5
    //     0x739248: stur            w5, [x1, #0x1b]
    // 0x73924c: ldur            x6, [fp, #-0x50]
    // 0x739250: StoreField: r1->field_7 = r6
    //     0x739250: stur            w6, [x1, #7]
    // 0x739254: ldur            x6, [fp, #-0x10]
    // 0x739258: LoadField: r7 = r6->field_4f
    //     0x739258: ldur            w7, [x6, #0x4f]
    // 0x73925c: DecompressPointer r7
    //     0x73925c: add             x7, x7, HEAP, lsl #32
    // 0x739260: stur            x7, [fp, #-0x50]
    // 0x739264: r0 = RoomsTab()
    //     0x739264: bl              #0x73946c  ; AllocateRoomsTabStub -> RoomsTab (size=0x28)
    // 0x739268: mov             x1, x0
    // 0x73926c: ldur            x0, [fp, #-0x30]
    // 0x739270: stur            x1, [fp, #-0x80]
    // 0x739274: StoreField: r1->field_b = r0
    //     0x739274: stur            w0, [x1, #0xb]
    // 0x739278: ldur            x0, [fp, #-0x38]
    // 0x73927c: StoreField: r1->field_f = r0
    //     0x73927c: stur            w0, [x1, #0xf]
    // 0x739280: ldur            x0, [fp, #-0x40]
    // 0x739284: StoreField: r1->field_13 = r0
    //     0x739284: stur            w0, [x1, #0x13]
    // 0x739288: ldur            x0, [fp, #-0x48]
    // 0x73928c: ArrayStore: r1[0] = r0  ; List_4
    //     0x73928c: stur            w0, [x1, #0x17]
    // 0x739290: ldur            x0, [fp, #-0x28]
    // 0x739294: StoreField: r1->field_1b = r0
    //     0x739294: stur            w0, [x1, #0x1b]
    // 0x739298: ldur            x2, [fp, #-0x18]
    // 0x73929c: StoreField: r1->field_1f = r2
    //     0x73929c: stur            w2, [x1, #0x1f]
    // 0x7392a0: ldur            x3, [fp, #-8]
    // 0x7392a4: StoreField: r1->field_23 = r3
    //     0x7392a4: stur            w3, [x1, #0x23]
    // 0x7392a8: ldur            x4, [fp, #-0x50]
    // 0x7392ac: StoreField: r1->field_7 = r4
    //     0x7392ac: stur            w4, [x1, #7]
    // 0x7392b0: ldur            x4, [fp, #-0x10]
    // 0x7392b4: LoadField: r5 = r4->field_53
    //     0x7392b4: ldur            w5, [x4, #0x53]
    // 0x7392b8: DecompressPointer r5
    //     0x7392b8: add             x5, x5, HEAP, lsl #32
    // 0x7392bc: stur            x5, [fp, #-0x38]
    // 0x7392c0: LoadField: r6 = r4->field_3b
    //     0x7392c0: ldur            w6, [x4, #0x3b]
    // 0x7392c4: DecompressPointer r6
    //     0x7392c4: add             x6, x6, HEAP, lsl #32
    // 0x7392c8: stur            x6, [fp, #-0x30]
    // 0x7392cc: r0 = CurrenciesTab()
    //     0x7392cc: bl              #0x739460  ; AllocateCurrenciesTabStub -> CurrenciesTab (size=0x1c)
    // 0x7392d0: mov             x1, x0
    // 0x7392d4: ldur            x0, [fp, #-0x30]
    // 0x7392d8: stur            x1, [fp, #-0x10]
    // 0x7392dc: StoreField: r1->field_b = r0
    //     0x7392dc: stur            w0, [x1, #0xb]
    // 0x7392e0: ldur            x0, [fp, #-0x28]
    // 0x7392e4: StoreField: r1->field_f = r0
    //     0x7392e4: stur            w0, [x1, #0xf]
    // 0x7392e8: ldur            x2, [fp, #-0x18]
    // 0x7392ec: StoreField: r1->field_13 = r2
    //     0x7392ec: stur            w2, [x1, #0x13]
    // 0x7392f0: ldur            x2, [fp, #-8]
    // 0x7392f4: ArrayStore: r1[0] = r2  ; List_4
    //     0x7392f4: stur            w2, [x1, #0x17]
    // 0x7392f8: ldur            x2, [fp, #-0x38]
    // 0x7392fc: StoreField: r1->field_7 = r2
    //     0x7392fc: stur            w2, [x1, #7]
    // 0x739300: r0 = CalendarTab()
    //     0x739300: bl              #0x739454  ; AllocateCalendarTabStub -> CalendarTab (size=0x10)
    // 0x739304: mov             x3, x0
    // 0x739308: ldur            x0, [fp, #-0x28]
    // 0x73930c: stur            x3, [fp, #-8]
    // 0x739310: StoreField: r3->field_b = r0
    //     0x739310: stur            w0, [x3, #0xb]
    // 0x739314: r1 = Null
    //     0x739314: mov             x1, NULL
    // 0x739318: r2 = 12
    //     0x739318: mov             x2, #0xc
    // 0x73931c: r0 = AllocateArray()
    //     0x73931c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x739320: mov             x2, x0
    // 0x739324: ldur            x0, [fp, #-0x70]
    // 0x739328: stur            x2, [fp, #-0x18]
    // 0x73932c: StoreField: r2->field_f = r0
    //     0x73932c: stur            w0, [x2, #0xf]
    // 0x739330: ldur            x0, [fp, #-0x78]
    // 0x739334: StoreField: r2->field_13 = r0
    //     0x739334: stur            w0, [x2, #0x13]
    // 0x739338: ldur            x0, [fp, #-0x68]
    // 0x73933c: ArrayStore: r2[0] = r0  ; List_4
    //     0x73933c: stur            w0, [x2, #0x17]
    // 0x739340: ldur            x0, [fp, #-0x80]
    // 0x739344: StoreField: r2->field_1b = r0
    //     0x739344: stur            w0, [x2, #0x1b]
    // 0x739348: ldur            x0, [fp, #-0x10]
    // 0x73934c: StoreField: r2->field_1f = r0
    //     0x73934c: stur            w0, [x2, #0x1f]
    // 0x739350: ldur            x0, [fp, #-8]
    // 0x739354: StoreField: r2->field_23 = r0
    //     0x739354: stur            w0, [x2, #0x23]
    // 0x739358: r1 = <Widget>
    //     0x739358: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x73935c: r0 = AllocateGrowableArray()
    //     0x73935c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x739360: mov             x1, x0
    // 0x739364: ldur            x0, [fp, #-0x18]
    // 0x739368: stur            x1, [fp, #-8]
    // 0x73936c: StoreField: r1->field_f = r0
    //     0x73936c: stur            w0, [x1, #0xf]
    // 0x739370: r0 = 12
    //     0x739370: mov             x0, #0xc
    // 0x739374: StoreField: r1->field_b = r0
    //     0x739374: stur            w0, [x1, #0xb]
    // 0x739378: r0 = TabBarView()
    //     0x739378: bl              #0x739448  ; AllocateTabBarViewStub -> TabBarView (size=0x28)
    // 0x73937c: mov             x1, x0
    // 0x739380: ldur            x0, [fp, #-8]
    // 0x739384: StoreField: r1->field_f = r0
    //     0x739384: stur            w0, [x1, #0xf]
    // 0x739388: ldur            x0, [fp, #-0x58]
    // 0x73938c: StoreField: r1->field_b = r0
    //     0x73938c: stur            w0, [x1, #0xb]
    // 0x739390: r0 = Instance_DragStartBehavior
    //     0x739390: ldr             x0, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x739394: ArrayStore: r1[0] = r0  ; List_4
    //     0x739394: stur            w0, [x1, #0x17]
    // 0x739398: d0 = 1.000000
    //     0x739398: fmov            d0, #1.00000000
    // 0x73939c: StoreField: r1->field_1b = d0
    //     0x73939c: stur            d0, [x1, #0x1b]
    // 0x7393a0: r2 = Instance_Clip
    //     0x7393a0: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7393a4: ldr             x2, [x2, #0x2d8]
    // 0x7393a8: StoreField: r1->field_23 = r2
    //     0x7393a8: stur            w2, [x1, #0x23]
    // 0x7393ac: mov             x3, x1
    // 0x7393b0: ldur            x1, [fp, #-0x60]
    // 0x7393b4: ldur            x2, [fp, #-0x20]
    // 0x7393b8: stur            x3, [fp, #-8]
    // 0x7393bc: r0 = Scaffold()
    //     0x7393bc: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7393c0: ldur            x1, [fp, #-0x20]
    // 0x7393c4: ArrayStore: r0[0] = r1  ; List_4
    //     0x7393c4: stur            w1, [x0, #0x17]
    // 0x7393c8: ldur            x1, [fp, #-8]
    // 0x7393cc: StoreField: r0->field_1b = r1
    //     0x7393cc: stur            w1, [x0, #0x1b]
    // 0x7393d0: ldur            x1, [fp, #-0x60]
    // 0x7393d4: StoreField: r0->field_1f = r1
    //     0x7393d4: stur            w1, [x0, #0x1f]
    // 0x7393d8: r1 = Instance_AlignmentDirectional
    //     0x7393d8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7393dc: ldr             x1, [x1, #0x350]
    // 0x7393e0: StoreField: r0->field_2f = r1
    //     0x7393e0: stur            w1, [x0, #0x2f]
    // 0x7393e4: r1 = Instance_Color
    //     0x7393e4: add             x1, PP, #0x18, lsl #12  ; [pp+0x18f48] Obj!Color@a25511
    //     0x7393e8: ldr             x1, [x1, #0xf48]
    // 0x7393ec: StoreField: r0->field_4f = r1
    //     0x7393ec: stur            w1, [x0, #0x4f]
    // 0x7393f0: r1 = true
    //     0x7393f0: add             x1, NULL, #0x20  ; true
    // 0x7393f4: StoreField: r0->field_5f = r1
    //     0x7393f4: stur            w1, [x0, #0x5f]
    // 0x7393f8: r2 = Instance_DragStartBehavior
    //     0x7393f8: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7393fc: StoreField: r0->field_63 = r2
    //     0x7393fc: stur            w2, [x0, #0x63]
    // 0x739400: r2 = false
    //     0x739400: add             x2, NULL, #0x30  ; false
    // 0x739404: StoreField: r0->field_b = r2
    //     0x739404: stur            w2, [x0, #0xb]
    // 0x739408: StoreField: r0->field_f = r1
    //     0x739408: stur            w1, [x0, #0xf]
    // 0x73940c: StoreField: r0->field_13 = r2
    //     0x73940c: stur            w2, [x0, #0x13]
    // 0x739410: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x739410: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x739414: ldr             x2, [x2, #0x358]
    // 0x739418: StoreField: r0->field_4b = r2
    //     0x739418: stur            w2, [x0, #0x4b]
    // 0x73941c: StoreField: r0->field_6b = r1
    //     0x73941c: stur            w1, [x0, #0x6b]
    // 0x739420: StoreField: r0->field_6f = r1
    //     0x739420: stur            w1, [x0, #0x6f]
    // 0x739424: LeaveFrame
    //     0x739424: mov             SP, fp
    //     0x739428: ldp             fp, lr, [SP], #0x10
    // 0x73942c: ret
    //     0x73942c: ret             
    // 0x739430: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x739430: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x739434: b               #0x738c9c
    // 0x739438: r9 = _tabController
    //     0x739438: add             x9, PP, #0x18, lsl #12  ; [pp+0x18f50] Field <_AgencyDetailPageState@922294929._tabController@922294929>: late (offset: 0x1c)
    //     0x73943c: ldr             x9, [x9, #0xf50]
    // 0x739440: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x739440: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x739444: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x739444: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildFAB(/* No info */) {
    // ** addr: 0x7394dc, size: 0xa4
    // 0x7394dc: EnterFrame
    //     0x7394dc: stp             fp, lr, [SP, #-0x10]!
    //     0x7394e0: mov             fp, SP
    // 0x7394e4: AllocStack(0x10)
    //     0x7394e4: sub             SP, SP, #0x10
    // 0x7394e8: SetupParameters(_AgencyDetailPageState this /* r1 => r1, fp-0x8 */)
    //     0x7394e8: stur            x1, [fp, #-8]
    // 0x7394ec: r1 = 1
    //     0x7394ec: mov             x1, #1
    // 0x7394f0: r0 = AllocateContext()
    //     0x7394f0: bl              #0x927010  ; AllocateContextStub
    // 0x7394f4: mov             x1, x0
    // 0x7394f8: ldur            x0, [fp, #-8]
    // 0x7394fc: stur            x1, [fp, #-0x10]
    // 0x739500: StoreField: r1->field_f = r0
    //     0x739500: stur            w0, [x1, #0xf]
    // 0x739504: r0 = FloatingActionButton()
    //     0x739504: bl              #0x6d51a8  ; AllocateFloatingActionButtonStub -> FloatingActionButton (size=0x78)
    // 0x739508: mov             x3, x0
    // 0x73950c: r0 = Instance_Icon
    //     0x73950c: add             x0, PP, #0x19, lsl #12  ; [pp+0x19128] Obj!Icon@a1e271
    //     0x739510: ldr             x0, [x0, #0x128]
    // 0x739514: stur            x3, [fp, #-8]
    // 0x739518: StoreField: r3->field_b = r0
    //     0x739518: stur            w0, [x3, #0xb]
    // 0x73951c: r0 = Instance_Color
    //     0x73951c: add             x0, PP, #0x18, lsl #12  ; [pp+0x18f30] Obj!Color@a25541
    //     0x739520: ldr             x0, [x0, #0xf30]
    // 0x739524: ArrayStore: r3[0] = r0  ; List_4
    //     0x739524: stur            w0, [x3, #0x17]
    // 0x739528: r0 = Instance__DefaultHeroTag
    //     0x739528: add             x0, PP, #0x12, lsl #12  ; [pp+0x125b8] Obj!_DefaultHeroTag@a0f381
    //     0x73952c: ldr             x0, [x0, #0x5b8]
    // 0x739530: StoreField: r3->field_27 = r0
    //     0x739530: stur            w0, [x3, #0x27]
    // 0x739534: ldur            x2, [fp, #-0x10]
    // 0x739538: r1 = Function '<anonymous closure>':.
    //     0x739538: add             x1, PP, #0x19, lsl #12  ; [pp+0x19130] AnonymousClosure: (0x739580), in [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_buildFAB (0x7394dc)
    //     0x73953c: ldr             x1, [x1, #0x130]
    // 0x739540: r0 = AllocateClosure()
    //     0x739540: bl              #0x9273d4  ; AllocateClosureStub
    // 0x739544: mov             x1, x0
    // 0x739548: ldur            x0, [fp, #-8]
    // 0x73954c: StoreField: r0->field_2b = r1
    //     0x73954c: stur            w1, [x0, #0x2b]
    // 0x739550: r1 = Instance_Clip
    //     0x739550: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x739554: ldr             x1, [x1, #0x348]
    // 0x739558: StoreField: r0->field_4b = r1
    //     0x739558: stur            w1, [x0, #0x4b]
    // 0x73955c: r1 = false
    //     0x73955c: add             x1, NULL, #0x30  ; false
    // 0x739560: StoreField: r0->field_57 = r1
    //     0x739560: stur            w1, [x0, #0x57]
    // 0x739564: StoreField: r0->field_4f = r1
    //     0x739564: stur            w1, [x0, #0x4f]
    // 0x739568: r1 = Instance__FloatingActionButtonType
    //     0x739568: add             x1, PP, #0x12, lsl #12  ; [pp+0x125c8] Obj!_FloatingActionButtonType@a2ba91
    //     0x73956c: ldr             x1, [x1, #0x5c8]
    // 0x739570: StoreField: r0->field_6f = r1
    //     0x739570: stur            w1, [x0, #0x6f]
    // 0x739574: LeaveFrame
    //     0x739574: mov             SP, fp
    //     0x739578: ldp             fp, lr, [SP], #0x10
    // 0x73957c: ret
    //     0x73957c: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x739580, size: 0x220
    // 0x739580: EnterFrame
    //     0x739580: stp             fp, lr, [SP, #-0x10]!
    //     0x739584: mov             fp, SP
    // 0x739588: AllocStack(0x8)
    //     0x739588: sub             SP, SP, #8
    // 0x73958c: SetupParameters([dynamic _ /* r0 */])
    //     0x73958c: ldr             x0, [fp, #0x10]
    //     0x739590: ldur            w2, [x0, #0x17]
    //     0x739594: add             x2, x2, HEAP, lsl #32
    //     0x739598: stur            x2, [fp, #-8]
    // 0x73959c: CheckStackOverflow
    //     0x73959c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7395a0: cmp             SP, x16
    //     0x7395a4: b.ls            #0x739778
    // 0x7395a8: LoadField: r3 = r2->field_f
    //     0x7395a8: ldur            w3, [x2, #0xf]
    // 0x7395ac: DecompressPointer r3
    //     0x7395ac: add             x3, x3, HEAP, lsl #32
    // 0x7395b0: LoadField: r0 = r3->field_1b
    //     0x7395b0: ldur            w0, [x3, #0x1b]
    // 0x7395b4: DecompressPointer r0
    //     0x7395b4: add             x0, x0, HEAP, lsl #32
    // 0x7395b8: r16 = Sentinel
    //     0x7395b8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7395bc: cmp             w0, w16
    // 0x7395c0: b.eq            #0x739780
    // 0x7395c4: LoadField: r4 = r0->field_33
    //     0x7395c4: ldur            x4, [x0, #0x33]
    // 0x7395c8: cmp             x4, #2
    // 0x7395cc: b.gt            #0x7396b8
    // 0x7395d0: cmp             x4, #1
    // 0x7395d4: b.gt            #0x739678
    // 0x7395d8: cmp             x4, #0
    // 0x7395dc: b.gt            #0x739638
    // 0x7395e0: r0 = BoxInt64Instr(r4)
    //     0x7395e0: sbfiz           x0, x4, #1, #0x1f
    //     0x7395e4: cmp             x4, x0, asr #1
    //     0x7395e8: b.eq            #0x7395f4
    //     0x7395ec: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x7395f0: stur            x4, [x0, #7]
    // 0x7395f4: cbnz            w0, #0x739768
    // 0x7395f8: LoadField: r1 = r3->field_43
    //     0x7395f8: ldur            w1, [x3, #0x43]
    // 0x7395fc: DecompressPointer r1
    //     0x7395fc: add             x1, x1, HEAP, lsl #32
    // 0x739600: r0 = currentState()
    //     0x739600: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x739604: cmp             w0, NULL
    // 0x739608: b.eq            #0x739768
    // 0x73960c: ldur            x2, [fp, #-8]
    // 0x739610: LoadField: r1 = r2->field_f
    //     0x739610: ldur            w1, [x2, #0xf]
    // 0x739614: DecompressPointer r1
    //     0x739614: add             x1, x1, HEAP, lsl #32
    // 0x739618: LoadField: r2 = r1->field_f
    //     0x739618: ldur            w2, [x1, #0xf]
    // 0x73961c: DecompressPointer r2
    //     0x73961c: add             x2, x2, HEAP, lsl #32
    // 0x739620: cmp             w2, NULL
    // 0x739624: b.eq            #0x73978c
    // 0x739628: mov             x1, x0
    // 0x73962c: r3 = Null
    //     0x73962c: mov             x3, NULL
    // 0x739630: r0 = showUserDialog()
    //     0x739630: bl              #0x73cfd4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/users_tab.dart] UsersTabState::showUserDialog
    // 0x739634: b               #0x739768
    // 0x739638: LoadField: r1 = r3->field_47
    //     0x739638: ldur            w1, [x3, #0x47]
    // 0x73963c: DecompressPointer r1
    //     0x73963c: add             x1, x1, HEAP, lsl #32
    // 0x739640: r0 = currentState()
    //     0x739640: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x739644: cmp             w0, NULL
    // 0x739648: b.eq            #0x739768
    // 0x73964c: ldur            x2, [fp, #-8]
    // 0x739650: LoadField: r1 = r2->field_f
    //     0x739650: ldur            w1, [x2, #0xf]
    // 0x739654: DecompressPointer r1
    //     0x739654: add             x1, x1, HEAP, lsl #32
    // 0x739658: LoadField: r2 = r1->field_f
    //     0x739658: ldur            w2, [x1, #0xf]
    // 0x73965c: DecompressPointer r2
    //     0x73965c: add             x2, x2, HEAP, lsl #32
    // 0x739660: cmp             w2, NULL
    // 0x739664: b.eq            #0x739790
    // 0x739668: mov             x1, x0
    // 0x73966c: r3 = Null
    //     0x73966c: mov             x3, NULL
    // 0x739670: r0 = showTripDialog()
    //     0x739670: bl              #0x73aae4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/trips_tab.dart] TripsTabState::showTripDialog
    // 0x739674: b               #0x739768
    // 0x739678: LoadField: r1 = r3->field_4b
    //     0x739678: ldur            w1, [x3, #0x4b]
    // 0x73967c: DecompressPointer r1
    //     0x73967c: add             x1, x1, HEAP, lsl #32
    // 0x739680: r0 = currentState()
    //     0x739680: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x739684: cmp             w0, NULL
    // 0x739688: b.eq            #0x739768
    // 0x73968c: ldur            x2, [fp, #-8]
    // 0x739690: LoadField: r1 = r2->field_f
    //     0x739690: ldur            w1, [x2, #0xf]
    // 0x739694: DecompressPointer r1
    //     0x739694: add             x1, x1, HEAP, lsl #32
    // 0x739698: LoadField: r2 = r1->field_f
    //     0x739698: ldur            w2, [x1, #0xf]
    // 0x73969c: DecompressPointer r2
    //     0x73969c: add             x2, x2, HEAP, lsl #32
    // 0x7396a0: cmp             w2, NULL
    // 0x7396a4: b.eq            #0x739794
    // 0x7396a8: mov             x1, x0
    // 0x7396ac: r3 = Null
    //     0x7396ac: mov             x3, NULL
    // 0x7396b0: r0 = showHotelDialog()
    //     0x7396b0: bl              #0x7397a0  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/hotels_tab.dart] HotelsTabState::showHotelDialog
    // 0x7396b4: b               #0x739768
    // 0x7396b8: cmp             x4, #4
    // 0x7396bc: b.gt            #0x73974c
    // 0x7396c0: cmp             x4, #3
    // 0x7396c4: b.gt            #0x739708
    // 0x7396c8: LoadField: r1 = r3->field_4f
    //     0x7396c8: ldur            w1, [x3, #0x4f]
    // 0x7396cc: DecompressPointer r1
    //     0x7396cc: add             x1, x1, HEAP, lsl #32
    // 0x7396d0: r0 = currentState()
    //     0x7396d0: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x7396d4: cmp             w0, NULL
    // 0x7396d8: b.eq            #0x739768
    // 0x7396dc: ldur            x2, [fp, #-8]
    // 0x7396e0: LoadField: r1 = r2->field_f
    //     0x7396e0: ldur            w1, [x2, #0xf]
    // 0x7396e4: DecompressPointer r1
    //     0x7396e4: add             x1, x1, HEAP, lsl #32
    // 0x7396e8: LoadField: r2 = r1->field_f
    //     0x7396e8: ldur            w2, [x1, #0xf]
    // 0x7396ec: DecompressPointer r2
    //     0x7396ec: add             x2, x2, HEAP, lsl #32
    // 0x7396f0: cmp             w2, NULL
    // 0x7396f4: b.eq            #0x739798
    // 0x7396f8: mov             x1, x0
    // 0x7396fc: r3 = Null
    //     0x7396fc: mov             x3, NULL
    // 0x739700: r0 = showRoomDialog()
    //     0x739700: bl              #0x6f6a1c  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/rooms_tab.dart] RoomsTabState::showRoomDialog
    // 0x739704: b               #0x739768
    // 0x739708: LoadField: r1 = r3->field_53
    //     0x739708: ldur            w1, [x3, #0x53]
    // 0x73970c: DecompressPointer r1
    //     0x73970c: add             x1, x1, HEAP, lsl #32
    // 0x739710: r0 = currentState()
    //     0x739710: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x739714: cmp             w0, NULL
    // 0x739718: b.eq            #0x739768
    // 0x73971c: ldur            x1, [fp, #-8]
    // 0x739720: LoadField: r2 = r1->field_f
    //     0x739720: ldur            w2, [x1, #0xf]
    // 0x739724: DecompressPointer r2
    //     0x739724: add             x2, x2, HEAP, lsl #32
    // 0x739728: LoadField: r1 = r2->field_f
    //     0x739728: ldur            w1, [x2, #0xf]
    // 0x73972c: DecompressPointer r1
    //     0x73972c: add             x1, x1, HEAP, lsl #32
    // 0x739730: cmp             w1, NULL
    // 0x739734: b.eq            #0x73979c
    // 0x739738: mov             x2, x1
    // 0x73973c: mov             x1, x0
    // 0x739740: r3 = Null
    //     0x739740: mov             x3, NULL
    // 0x739744: r0 = showCurrencyDialog()
    //     0x739744: bl              #0x6f64f4  ; [package:umrem_demo/features/super_admin/widgets/agency_detail/currencies_tab.dart] CurrenciesTabState::showCurrencyDialog
    // 0x739748: b               #0x739768
    // 0x73974c: r0 = BoxInt64Instr(r4)
    //     0x73974c: sbfiz           x0, x4, #1, #0x1f
    //     0x739750: cmp             x4, x0, asr #1
    //     0x739754: b.eq            #0x739760
    //     0x739758: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x73975c: stur            x4, [x0, #7]
    // 0x739760: cmp             w0, #0xa
    // 0x739764: b.eq            #0x739768
    // 0x739768: r0 = Null
    //     0x739768: mov             x0, NULL
    // 0x73976c: LeaveFrame
    //     0x73976c: mov             SP, fp
    //     0x739770: ldp             fp, lr, [SP], #0x10
    // 0x739774: ret
    //     0x739774: ret             
    // 0x739778: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x739778: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x73977c: b               #0x7395a8
    // 0x739780: r9 = _tabController
    //     0x739780: add             x9, PP, #0x18, lsl #12  ; [pp+0x18f50] Field <_AgencyDetailPageState@922294929._tabController@922294929>: late (offset: 0x1c)
    //     0x739784: ldr             x9, [x9, #0xf50]
    // 0x739788: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x739788: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x73978c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73978c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x739790: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x739790: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x739794: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x739794: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x739798: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x739798: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x73979c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x73979c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c81c, size: 0x24
    // 0x74c81c: EnterFrame
    //     0x74c81c: stp             fp, lr, [SP, #-0x10]!
    //     0x74c820: mov             fp, SP
    // 0x74c824: ldr             x2, [fp, #0x10]
    // 0x74c828: r1 = Function 'dispose':.
    //     0x74c828: add             x1, PP, #0x27, lsl #12  ; [pp+0x275a8] AnonymousClosure: (0x74c840), in [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::dispose (0x754310)
    //     0x74c82c: ldr             x1, [x1, #0x5a8]
    // 0x74c830: r0 = AllocateClosure()
    //     0x74c830: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c834: LeaveFrame
    //     0x74c834: mov             SP, fp
    //     0x74c838: ldp             fp, lr, [SP], #0x10
    // 0x74c83c: ret
    //     0x74c83c: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c840, size: 0x38
    // 0x74c840: EnterFrame
    //     0x74c840: stp             fp, lr, [SP, #-0x10]!
    //     0x74c844: mov             fp, SP
    // 0x74c848: ldr             x0, [fp, #0x10]
    // 0x74c84c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c84c: ldur            w1, [x0, #0x17]
    // 0x74c850: DecompressPointer r1
    //     0x74c850: add             x1, x1, HEAP, lsl #32
    // 0x74c854: CheckStackOverflow
    //     0x74c854: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c858: cmp             SP, x16
    //     0x74c85c: b.ls            #0x74c870
    // 0x74c860: r0 = dispose()
    //     0x74c860: bl              #0x754310  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::dispose
    // 0x74c864: LeaveFrame
    //     0x74c864: mov             SP, fp
    //     0x74c868: ldp             fp, lr, [SP], #0x10
    // 0x74c86c: ret
    //     0x74c86c: ret             
    // 0x74c870: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c870: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c874: b               #0x74c860
  }
  _ dispose(/* No info */) {
    // ** addr: 0x754310, size: 0x64
    // 0x754310: EnterFrame
    //     0x754310: stp             fp, lr, [SP, #-0x10]!
    //     0x754314: mov             fp, SP
    // 0x754318: AllocStack(0x8)
    //     0x754318: sub             SP, SP, #8
    // 0x75431c: SetupParameters(_AgencyDetailPageState this /* r1 => r0, fp-0x8 */)
    //     0x75431c: mov             x0, x1
    //     0x754320: stur            x1, [fp, #-8]
    // 0x754324: CheckStackOverflow
    //     0x754324: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x754328: cmp             SP, x16
    //     0x75432c: b.ls            #0x754360
    // 0x754330: LoadField: r1 = r0->field_1b
    //     0x754330: ldur            w1, [x0, #0x1b]
    // 0x754334: DecompressPointer r1
    //     0x754334: add             x1, x1, HEAP, lsl #32
    // 0x754338: r16 = Sentinel
    //     0x754338: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x75433c: cmp             w1, w16
    // 0x754340: b.eq            #0x754368
    // 0x754344: r0 = dispose()
    //     0x754344: bl              #0x63d304  ; [package:flutter/src/material/tab_controller.dart] TabController::dispose
    // 0x754348: ldur            x1, [fp, #-8]
    // 0x75434c: r0 = dispose()
    //     0x75434c: bl              #0x754374  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] __AgencyDetailPageState&State&SingleTickerProviderStateMixin::dispose
    // 0x754350: r0 = Null
    //     0x754350: mov             x0, NULL
    // 0x754354: LeaveFrame
    //     0x754354: mov             SP, fp
    //     0x754358: ldp             fp, lr, [SP], #0x10
    // 0x75435c: ret
    //     0x75435c: ret             
    // 0x754360: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754360: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754364: b               #0x754330
    // 0x754368: r9 = _tabController
    //     0x754368: add             x9, PP, #0x18, lsl #12  ; [pp+0x18f50] Field <_AgencyDetailPageState@922294929._tabController@922294929>: late (offset: 0x1c)
    //     0x75436c: ldr             x9, [x9, #0xf50]
    // 0x754370: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x754370: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _AgencyDetailPageState(/* No info */) {
    // ** addr: 0x7bf30c, size: 0x28c
    // 0x7bf30c: EnterFrame
    //     0x7bf30c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf310: mov             fp, SP
    // 0x7bf314: AllocStack(0x20)
    //     0x7bf314: sub             SP, SP, #0x20
    // 0x7bf318: r2 = Sentinel
    //     0x7bf318: ldr             x2, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bf31c: r0 = true
    //     0x7bf31c: add             x0, NULL, #0x20  ; true
    // 0x7bf320: stur            x1, [fp, #-8]
    // 0x7bf324: CheckStackOverflow
    //     0x7bf324: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf328: cmp             SP, x16
    //     0x7bf32c: b.ls            #0x7bf590
    // 0x7bf330: StoreField: r1->field_1b = r2
    //     0x7bf330: stur            w2, [x1, #0x1b]
    // 0x7bf334: StoreField: r1->field_27 = r0
    //     0x7bf334: stur            w0, [x1, #0x27]
    // 0x7bf338: r4 = const [0, 0, 0, 0, null]
    //     0x7bf338: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7bf33c: r0 = app()
    //     0x7bf33c: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7bf340: mov             x1, x0
    // 0x7bf344: r0 = instanceFor()
    //     0x7bf344: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7bf348: stur            x0, [fp, #-0x10]
    // 0x7bf34c: r0 = FirestoreService()
    //     0x7bf34c: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7bf350: mov             x1, x0
    // 0x7bf354: ldur            x0, [fp, #-0x10]
    // 0x7bf358: StoreField: r1->field_7 = r0
    //     0x7bf358: stur            w0, [x1, #7]
    // 0x7bf35c: mov             x0, x1
    // 0x7bf360: ldur            x3, [fp, #-8]
    // 0x7bf364: StoreField: r3->field_1f = r0
    //     0x7bf364: stur            w0, [x3, #0x1f]
    //     0x7bf368: ldurb           w16, [x3, #-1]
    //     0x7bf36c: ldurb           w17, [x0, #-1]
    //     0x7bf370: and             x16, x17, x16, lsr #2
    //     0x7bf374: tst             x16, HEAP, lsr #32
    //     0x7bf378: b.eq            #0x7bf380
    //     0x7bf37c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7bf380: r1 = <UserModel>
    //     0x7bf380: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d98] TypeArguments: <UserModel>
    //     0x7bf384: ldr             x1, [x1, #0xd98]
    // 0x7bf388: r2 = 0
    //     0x7bf388: mov             x2, #0
    // 0x7bf38c: r0 = _GrowableList()
    //     0x7bf38c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7bf390: ldur            x3, [fp, #-8]
    // 0x7bf394: StoreField: r3->field_2b = r0
    //     0x7bf394: stur            w0, [x3, #0x2b]
    //     0x7bf398: ldurb           w16, [x3, #-1]
    //     0x7bf39c: ldurb           w17, [x0, #-1]
    //     0x7bf3a0: and             x16, x17, x16, lsr #2
    //     0x7bf3a4: tst             x16, HEAP, lsr #32
    //     0x7bf3a8: b.eq            #0x7bf3b0
    //     0x7bf3ac: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7bf3b0: r1 = <TripModel>
    //     0x7bf3b0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da0] TypeArguments: <TripModel>
    //     0x7bf3b4: ldr             x1, [x1, #0xda0]
    // 0x7bf3b8: r2 = 0
    //     0x7bf3b8: mov             x2, #0
    // 0x7bf3bc: r0 = _GrowableList()
    //     0x7bf3bc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7bf3c0: ldur            x3, [fp, #-8]
    // 0x7bf3c4: StoreField: r3->field_2f = r0
    //     0x7bf3c4: stur            w0, [x3, #0x2f]
    //     0x7bf3c8: ldurb           w16, [x3, #-1]
    //     0x7bf3cc: ldurb           w17, [x0, #-1]
    //     0x7bf3d0: and             x16, x17, x16, lsr #2
    //     0x7bf3d4: tst             x16, HEAP, lsr #32
    //     0x7bf3d8: b.eq            #0x7bf3e0
    //     0x7bf3dc: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7bf3e0: r1 = <HotelModel>
    //     0x7bf3e0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10da8] TypeArguments: <HotelModel>
    //     0x7bf3e4: ldr             x1, [x1, #0xda8]
    // 0x7bf3e8: r2 = 0
    //     0x7bf3e8: mov             x2, #0
    // 0x7bf3ec: r0 = _GrowableList()
    //     0x7bf3ec: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7bf3f0: ldur            x3, [fp, #-8]
    // 0x7bf3f4: StoreField: r3->field_33 = r0
    //     0x7bf3f4: stur            w0, [x3, #0x33]
    //     0x7bf3f8: ldurb           w16, [x3, #-1]
    //     0x7bf3fc: ldurb           w17, [x0, #-1]
    //     0x7bf400: and             x16, x17, x16, lsr #2
    //     0x7bf404: tst             x16, HEAP, lsr #32
    //     0x7bf408: b.eq            #0x7bf410
    //     0x7bf40c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7bf410: r1 = <RoomModel>
    //     0x7bf410: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c8] TypeArguments: <RoomModel>
    //     0x7bf414: ldr             x1, [x1, #0x6c8]
    // 0x7bf418: r2 = 0
    //     0x7bf418: mov             x2, #0
    // 0x7bf41c: r0 = _GrowableList()
    //     0x7bf41c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7bf420: ldur            x3, [fp, #-8]
    // 0x7bf424: StoreField: r3->field_37 = r0
    //     0x7bf424: stur            w0, [x3, #0x37]
    //     0x7bf428: ldurb           w16, [x3, #-1]
    //     0x7bf42c: ldurb           w17, [x0, #-1]
    //     0x7bf430: and             x16, x17, x16, lsr #2
    //     0x7bf434: tst             x16, HEAP, lsr #32
    //     0x7bf438: b.eq            #0x7bf440
    //     0x7bf43c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7bf440: r1 = <CurrencyModel>
    //     0x7bf440: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x7bf444: ldr             x1, [x1, #0xd88]
    // 0x7bf448: r2 = 0
    //     0x7bf448: mov             x2, #0
    // 0x7bf44c: r0 = _GrowableList()
    //     0x7bf44c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7bf450: ldur            x1, [fp, #-8]
    // 0x7bf454: StoreField: r1->field_3b = r0
    //     0x7bf454: stur            w0, [x1, #0x3b]
    //     0x7bf458: ldurb           w16, [x1, #-1]
    //     0x7bf45c: ldurb           w17, [x0, #-1]
    //     0x7bf460: and             x16, x17, x16, lsr #2
    //     0x7bf464: tst             x16, HEAP, lsr #32
    //     0x7bf468: b.eq            #0x7bf470
    //     0x7bf46c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bf470: r16 = <String, List<String>>
    //     0x7bf470: add             x16, PP, #0x10, lsl #12  ; [pp+0x106b8] TypeArguments: <String, List<String>>
    //     0x7bf474: ldr             x16, [x16, #0x6b8]
    // 0x7bf478: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x7bf47c: stp             lr, x16, [SP]
    // 0x7bf480: r0 = Map._fromLiteral()
    //     0x7bf480: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x7bf484: ldur            x2, [fp, #-8]
    // 0x7bf488: StoreField: r2->field_3f = r0
    //     0x7bf488: stur            w0, [x2, #0x3f]
    //     0x7bf48c: ldurb           w16, [x2, #-1]
    //     0x7bf490: ldurb           w17, [x0, #-1]
    //     0x7bf494: and             x16, x17, x16, lsr #2
    //     0x7bf498: tst             x16, HEAP, lsr #32
    //     0x7bf49c: b.eq            #0x7bf4a4
    //     0x7bf4a0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bf4a4: r1 = <UsersTabState>
    //     0x7bf4a4: add             x1, PP, #0x12, lsl #12  ; [pp+0x126d0] TypeArguments: <UsersTabState>
    //     0x7bf4a8: ldr             x1, [x1, #0x6d0]
    // 0x7bf4ac: r0 = LabeledGlobalKey()
    //     0x7bf4ac: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bf4b0: ldur            x2, [fp, #-8]
    // 0x7bf4b4: StoreField: r2->field_43 = r0
    //     0x7bf4b4: stur            w0, [x2, #0x43]
    //     0x7bf4b8: ldurb           w16, [x2, #-1]
    //     0x7bf4bc: ldurb           w17, [x0, #-1]
    //     0x7bf4c0: and             x16, x17, x16, lsr #2
    //     0x7bf4c4: tst             x16, HEAP, lsr #32
    //     0x7bf4c8: b.eq            #0x7bf4d0
    //     0x7bf4cc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bf4d0: r1 = <TripsTabState>
    //     0x7bf4d0: add             x1, PP, #0x12, lsl #12  ; [pp+0x126d8] TypeArguments: <TripsTabState>
    //     0x7bf4d4: ldr             x1, [x1, #0x6d8]
    // 0x7bf4d8: r0 = LabeledGlobalKey()
    //     0x7bf4d8: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bf4dc: ldur            x2, [fp, #-8]
    // 0x7bf4e0: StoreField: r2->field_47 = r0
    //     0x7bf4e0: stur            w0, [x2, #0x47]
    //     0x7bf4e4: ldurb           w16, [x2, #-1]
    //     0x7bf4e8: ldurb           w17, [x0, #-1]
    //     0x7bf4ec: and             x16, x17, x16, lsr #2
    //     0x7bf4f0: tst             x16, HEAP, lsr #32
    //     0x7bf4f4: b.eq            #0x7bf4fc
    //     0x7bf4f8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bf4fc: r1 = <HotelsTabState>
    //     0x7bf4fc: add             x1, PP, #0x12, lsl #12  ; [pp+0x126e0] TypeArguments: <HotelsTabState>
    //     0x7bf500: ldr             x1, [x1, #0x6e0]
    // 0x7bf504: r0 = LabeledGlobalKey()
    //     0x7bf504: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bf508: ldur            x2, [fp, #-8]
    // 0x7bf50c: StoreField: r2->field_4b = r0
    //     0x7bf50c: stur            w0, [x2, #0x4b]
    //     0x7bf510: ldurb           w16, [x2, #-1]
    //     0x7bf514: ldurb           w17, [x0, #-1]
    //     0x7bf518: and             x16, x17, x16, lsr #2
    //     0x7bf51c: tst             x16, HEAP, lsr #32
    //     0x7bf520: b.eq            #0x7bf528
    //     0x7bf524: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bf528: r1 = <RoomsTabState>
    //     0x7bf528: add             x1, PP, #0x12, lsl #12  ; [pp+0x126e8] TypeArguments: <RoomsTabState>
    //     0x7bf52c: ldr             x1, [x1, #0x6e8]
    // 0x7bf530: r0 = LabeledGlobalKey()
    //     0x7bf530: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bf534: ldur            x2, [fp, #-8]
    // 0x7bf538: StoreField: r2->field_4f = r0
    //     0x7bf538: stur            w0, [x2, #0x4f]
    //     0x7bf53c: ldurb           w16, [x2, #-1]
    //     0x7bf540: ldurb           w17, [x0, #-1]
    //     0x7bf544: and             x16, x17, x16, lsr #2
    //     0x7bf548: tst             x16, HEAP, lsr #32
    //     0x7bf54c: b.eq            #0x7bf554
    //     0x7bf550: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bf554: r1 = <CurrenciesTabState>
    //     0x7bf554: add             x1, PP, #0x12, lsl #12  ; [pp+0x126f0] TypeArguments: <CurrenciesTabState>
    //     0x7bf558: ldr             x1, [x1, #0x6f0]
    // 0x7bf55c: r0 = LabeledGlobalKey()
    //     0x7bf55c: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x7bf560: ldur            x1, [fp, #-8]
    // 0x7bf564: StoreField: r1->field_53 = r0
    //     0x7bf564: stur            w0, [x1, #0x53]
    //     0x7bf568: ldurb           w16, [x1, #-1]
    //     0x7bf56c: ldurb           w17, [x0, #-1]
    //     0x7bf570: and             x16, x17, x16, lsr #2
    //     0x7bf574: tst             x16, HEAP, lsr #32
    //     0x7bf578: b.eq            #0x7bf580
    //     0x7bf57c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7bf580: r0 = Null
    //     0x7bf580: mov             x0, NULL
    // 0x7bf584: LeaveFrame
    //     0x7bf584: mov             SP, fp
    //     0x7bf588: ldp             fp, lr, [SP], #0x10
    // 0x7bf58c: ret
    //     0x7bf58c: ret             
    // 0x7bf590: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf590: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf594: b               #0x7bf330
  }
}

// class id: 3191, size: 0xc, field offset: 0xc
//   const constructor, 
class AgencyDetailPage extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf2c4, size: 0x48
    // 0x7bf2c4: EnterFrame
    //     0x7bf2c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf2c8: mov             fp, SP
    // 0x7bf2cc: AllocStack(0x8)
    //     0x7bf2cc: sub             SP, SP, #8
    // 0x7bf2d0: CheckStackOverflow
    //     0x7bf2d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bf2d4: cmp             SP, x16
    //     0x7bf2d8: b.ls            #0x7bf304
    // 0x7bf2dc: r1 = <AgencyDetailPage>
    //     0x7bf2dc: add             x1, PP, #0x12, lsl #12  ; [pp+0x126c0] TypeArguments: <AgencyDetailPage>
    //     0x7bf2e0: ldr             x1, [x1, #0x6c0]
    // 0x7bf2e4: r0 = _AgencyDetailPageState()
    //     0x7bf2e4: bl              #0x7bf598  ; Allocate_AgencyDetailPageStateStub -> _AgencyDetailPageState (size=0x58)
    // 0x7bf2e8: mov             x1, x0
    // 0x7bf2ec: stur            x0, [fp, #-8]
    // 0x7bf2f0: r0 = _AgencyDetailPageState()
    //     0x7bf2f0: bl              #0x7bf30c  ; [package:umrem_demo/features/super_admin/screens/agency_detail_page.dart] _AgencyDetailPageState::_AgencyDetailPageState
    // 0x7bf2f4: ldur            x0, [fp, #-8]
    // 0x7bf2f8: LeaveFrame
    //     0x7bf2f8: mov             SP, fp
    //     0x7bf2fc: ldp             fp, lr, [SP], #0x10
    // 0x7bf300: ret
    //     0x7bf300: ret             
    // 0x7bf304: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf304: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf308: b               #0x7bf2dc
  }
}
