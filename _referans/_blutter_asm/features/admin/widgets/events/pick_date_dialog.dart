// lib: , url: package:umrem_demo/features/admin/widgets/events/pick_date_dialog.dart

// class id: 1049552, size: 0x8
class :: {

  static _ pickDate(/* No info */) async {
    // ** addr: 0x6d205c, size: 0xec
    // 0x6d205c: EnterFrame
    //     0x6d205c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2060: mov             fp, SP
    // 0x6d2064: AllocStack(0x40)
    //     0x6d2064: sub             SP, SP, #0x40
    // 0x6d2068: SetupParameters(dynamic _ /* r1 => r3, fp-0x18 */, dynamic _ /* r3 => r1, fp-0x20 */)
    //     0x6d2068: stur            NULL, [fp, #-8]
    //     0x6d206c: stur            x1, [fp, #-0x10]
    //     0x6d2070: mov             x16, x3
    //     0x6d2074: mov             x3, x1
    //     0x6d2078: mov             x1, x16
    //     0x6d207c: mov             x16, x2
    //     0x6d2080: mov             x2, x3
    //     0x6d2084: mov             x3, x16
    //     0x6d2088: stur            x3, [fp, #-0x18]
    //     0x6d208c: stur            x1, [fp, #-0x20]
    // 0x6d2090: CheckStackOverflow
    //     0x6d2090: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2094: cmp             SP, x16
    //     0x6d2098: b.ls            #0x6d2140
    // 0x6d209c: InitAsync() -> Future<void?>
    //     0x6d209c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6d20a0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d20a4: r0 = DateTime()
    //     0x6d20a4: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6d20a8: mov             x1, x0
    // 0x6d20ac: r2 = 2024
    //     0x6d20ac: mov             x2, #0x7e8
    // 0x6d20b0: stur            x0, [fp, #-0x28]
    // 0x6d20b4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d20b4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d20b8: r0 = DateTime()
    //     0x6d20b8: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6d20bc: r0 = DateTime()
    //     0x6d20bc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6d20c0: mov             x1, x0
    // 0x6d20c4: r2 = 2026
    //     0x6d20c4: mov             x2, #0x7ea
    // 0x6d20c8: stur            x0, [fp, #-0x30]
    // 0x6d20cc: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6d20cc: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6d20d0: r0 = DateTime()
    //     0x6d20d0: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x6d20d4: r1 = Function '<anonymous closure>': static.
    //     0x6d20d4: add             x1, PP, #0x19, lsl #12  ; [pp+0x19988] AnonymousClosure: (0x6d25c0), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x6d20d8: ldr             x1, [x1, #0x988]
    // 0x6d20dc: r2 = Null
    //     0x6d20dc: mov             x2, NULL
    // 0x6d20e0: r0 = AllocateClosure()
    //     0x6d20e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d20e4: r16 = Instance_Locale
    //     0x6d20e4: add             x16, PP, #0x15, lsl #12  ; [pp+0x151e8] Obj!Locale@a21421
    //     0x6d20e8: ldr             x16, [x16, #0x1e8]
    // 0x6d20ec: stp             x0, x16, [SP]
    // 0x6d20f0: ldur            x1, [fp, #-0x10]
    // 0x6d20f4: ldur            x2, [fp, #-0x28]
    // 0x6d20f8: ldur            x3, [fp, #-0x18]
    // 0x6d20fc: ldur            x5, [fp, #-0x30]
    // 0x6d2100: r4 = const [0, 0x6, 0x2, 0x4, builder, 0x5, locale, 0x4, null]
    //     0x6d2100: add             x4, PP, #0x15, lsl #12  ; [pp+0x151f0] List(9) [0, 0x6, 0x2, 0x4, "builder", 0x5, "locale", 0x4, Null]
    //     0x6d2104: ldr             x4, [x4, #0x1f0]
    // 0x6d2108: r0 = showDatePicker()
    //     0x6d2108: bl              #0x6d2148  ; [package:flutter/src/material/date_picker.dart] ::showDatePicker
    // 0x6d210c: mov             x1, x0
    // 0x6d2110: stur            x1, [fp, #-0x10]
    // 0x6d2114: r0 = Await()
    //     0x6d2114: bl              #0x3dd188  ; AwaitStub
    // 0x6d2118: cmp             w0, NULL
    // 0x6d211c: b.eq            #0x6d2138
    // 0x6d2120: ldur            x16, [fp, #-0x20]
    // 0x6d2124: stp             x0, x16, [SP]
    // 0x6d2128: ldur            x0, [fp, #-0x20]
    // 0x6d212c: ClosureCall
    //     0x6d212c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6d2130: ldur            x2, [x0, #0x1f]
    //     0x6d2134: blr             x2
    // 0x6d2138: r0 = Null
    //     0x6d2138: mov             x0, NULL
    // 0x6d213c: r0 = ReturnAsyncNotFuture()
    //     0x6d213c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d2140: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2140: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2144: b               #0x6d209c
  }
}
