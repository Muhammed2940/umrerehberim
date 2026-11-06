// lib: , url: package:umrem_demo/features/home/screens/profil.dart

// class id: 1049585, size: 0x8
class :: {
}

// class id: 2467, size: 0x1c, field offset: 0x14
//   transformed mixin,
abstract class __ProfilScreenState&State&SingleTickerProviderStateMixin extends State<dynamic>
     with SingleTickerProviderStateMixin<X0 bound StatefulWidget> {

  _ createTicker(/* No info */) {
    // ** addr: 0x444ccc, size: 0x98
    // 0x444ccc: EnterFrame
    //     0x444ccc: stp             fp, lr, [SP, #-0x10]!
    //     0x444cd0: mov             fp, SP
    // 0x444cd4: AllocStack(0x10)
    //     0x444cd4: sub             SP, SP, #0x10
    // 0x444cd8: SetupParameters(__ProfilScreenState&State&SingleTickerProviderStateMixin this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x444cd8: stur            x1, [fp, #-8]
    //     0x444cdc: stur            x2, [fp, #-0x10]
    // 0x444ce0: CheckStackOverflow
    //     0x444ce0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444ce4: cmp             SP, x16
    //     0x444ce8: b.ls            #0x444d58
    // 0x444cec: r0 = Ticker()
    //     0x444cec: bl              #0x43cbe4  ; AllocateTickerStub -> Ticker (size=0x1c)
    // 0x444cf0: mov             x1, x0
    // 0x444cf4: r0 = false
    //     0x444cf4: add             x0, NULL, #0x30  ; false
    // 0x444cf8: StoreField: r1->field_b = r0
    //     0x444cf8: stur            w0, [x1, #0xb]
    // 0x444cfc: ldur            x0, [fp, #-0x10]
    // 0x444d00: StoreField: r1->field_13 = r0
    //     0x444d00: stur            w0, [x1, #0x13]
    // 0x444d04: mov             x0, x1
    // 0x444d08: ldur            x2, [fp, #-8]
    // 0x444d0c: StoreField: r2->field_13 = r0
    //     0x444d0c: stur            w0, [x2, #0x13]
    //     0x444d10: ldurb           w16, [x2, #-1]
    //     0x444d14: ldurb           w17, [x0, #-1]
    //     0x444d18: and             x16, x17, x16, lsr #2
    //     0x444d1c: tst             x16, HEAP, lsr #32
    //     0x444d20: b.eq            #0x444d28
    //     0x444d24: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x444d28: mov             x1, x2
    // 0x444d2c: r0 = _updateTickerModeNotifier()
    //     0x444d2c: bl              #0x444d84  ; [package:umrem_demo/features/home/screens/profil.dart] __ProfilScreenState&State&SingleTickerProviderStateMixin::_updateTickerModeNotifier
    // 0x444d30: ldur            x1, [fp, #-8]
    // 0x444d34: r0 = _updateTicker()
    //     0x444d34: bl              #0x43c890  ; [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker
    // 0x444d38: ldur            x1, [fp, #-8]
    // 0x444d3c: LoadField: r0 = r1->field_13
    //     0x444d3c: ldur            w0, [x1, #0x13]
    // 0x444d40: DecompressPointer r0
    //     0x444d40: add             x0, x0, HEAP, lsl #32
    // 0x444d44: cmp             w0, NULL
    // 0x444d48: b.eq            #0x444d60
    // 0x444d4c: LeaveFrame
    //     0x444d4c: mov             SP, fp
    //     0x444d50: ldp             fp, lr, [SP], #0x10
    // 0x444d54: ret
    //     0x444d54: ret             
    // 0x444d58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444d58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444d5c: b               #0x444cec
    // 0x444d60: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x444d60: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _updateTickerModeNotifier(/* No info */) {
    // ** addr: 0x444d84, size: 0x120
    // 0x444d84: EnterFrame
    //     0x444d84: stp             fp, lr, [SP, #-0x10]!
    //     0x444d88: mov             fp, SP
    // 0x444d8c: AllocStack(0x18)
    //     0x444d8c: sub             SP, SP, #0x18
    // 0x444d90: SetupParameters(__ProfilScreenState&State&SingleTickerProviderStateMixin this /* r1 => r2, fp-0x8 */)
    //     0x444d90: mov             x2, x1
    //     0x444d94: stur            x1, [fp, #-8]
    // 0x444d98: CheckStackOverflow
    //     0x444d98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444d9c: cmp             SP, x16
    //     0x444da0: b.ls            #0x444e98
    // 0x444da4: LoadField: r1 = r2->field_f
    //     0x444da4: ldur            w1, [x2, #0xf]
    // 0x444da8: DecompressPointer r1
    //     0x444da8: add             x1, x1, HEAP, lsl #32
    // 0x444dac: cmp             w1, NULL
    // 0x444db0: b.eq            #0x444ea0
    // 0x444db4: r0 = getNotifier()
    //     0x444db4: bl              #0x43cb1c  ; [package:flutter/src/widgets/ticker_provider.dart] TickerMode::getNotifier
    // 0x444db8: mov             x3, x0
    // 0x444dbc: ldur            x0, [fp, #-8]
    // 0x444dc0: stur            x3, [fp, #-0x18]
    // 0x444dc4: ArrayLoad: r4 = r0[0]  ; List_4
    //     0x444dc4: ldur            w4, [x0, #0x17]
    // 0x444dc8: DecompressPointer r4
    //     0x444dc8: add             x4, x4, HEAP, lsl #32
    // 0x444dcc: stur            x4, [fp, #-0x10]
    // 0x444dd0: cmp             w3, w4
    // 0x444dd4: b.ne            #0x444de8
    // 0x444dd8: r0 = Null
    //     0x444dd8: mov             x0, NULL
    // 0x444ddc: LeaveFrame
    //     0x444ddc: mov             SP, fp
    //     0x444de0: ldp             fp, lr, [SP], #0x10
    // 0x444de4: ret
    //     0x444de4: ret             
    // 0x444de8: cmp             w4, NULL
    // 0x444dec: b.eq            #0x444e2c
    // 0x444df0: mov             x2, x0
    // 0x444df4: r1 = Function '_updateTicker@378311458':.
    //     0x444df4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15920] AnonymousClosure: (0x444ea4), in [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker (0x43c890)
    //     0x444df8: ldr             x1, [x1, #0x920]
    // 0x444dfc: r0 = AllocateClosure()
    //     0x444dfc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x444e00: ldur            x1, [fp, #-0x10]
    // 0x444e04: r2 = LoadClassIdInstr(r1)
    //     0x444e04: ldur            x2, [x1, #-1]
    //     0x444e08: ubfx            x2, x2, #0xc, #0x14
    // 0x444e0c: mov             x16, x0
    // 0x444e10: mov             x0, x2
    // 0x444e14: mov             x2, x16
    // 0x444e18: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x444e18: add             lr, x0, #0xfe7
    //     0x444e1c: ldr             lr, [x21, lr, lsl #3]
    //     0x444e20: blr             lr
    // 0x444e24: ldur            x0, [fp, #-8]
    // 0x444e28: ldur            x3, [fp, #-0x18]
    // 0x444e2c: mov             x2, x0
    // 0x444e30: r1 = Function '_updateTicker@378311458':.
    //     0x444e30: add             x1, PP, #0x15, lsl #12  ; [pp+0x15920] AnonymousClosure: (0x444ea4), in [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker (0x43c890)
    //     0x444e34: ldr             x1, [x1, #0x920]
    // 0x444e38: r0 = AllocateClosure()
    //     0x444e38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x444e3c: ldur            x3, [fp, #-0x18]
    // 0x444e40: r1 = LoadClassIdInstr(r3)
    //     0x444e40: ldur            x1, [x3, #-1]
    //     0x444e44: ubfx            x1, x1, #0xc, #0x14
    // 0x444e48: mov             x2, x0
    // 0x444e4c: mov             x0, x1
    // 0x444e50: mov             x1, x3
    // 0x444e54: r0 = GDT[cid_x0 + 0x8cf8]()
    //     0x444e54: mov             x17, #0x8cf8
    //     0x444e58: add             lr, x0, x17
    //     0x444e5c: ldr             lr, [x21, lr, lsl #3]
    //     0x444e60: blr             lr
    // 0x444e64: ldur            x0, [fp, #-0x18]
    // 0x444e68: ldur            x1, [fp, #-8]
    // 0x444e6c: ArrayStore: r1[0] = r0  ; List_4
    //     0x444e6c: stur            w0, [x1, #0x17]
    //     0x444e70: ldurb           w16, [x1, #-1]
    //     0x444e74: ldurb           w17, [x0, #-1]
    //     0x444e78: and             x16, x17, x16, lsr #2
    //     0x444e7c: tst             x16, HEAP, lsr #32
    //     0x444e80: b.eq            #0x444e88
    //     0x444e84: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x444e88: r0 = Null
    //     0x444e88: mov             x0, NULL
    // 0x444e8c: LeaveFrame
    //     0x444e8c: mov             SP, fp
    //     0x444e90: ldp             fp, lr, [SP], #0x10
    // 0x444e94: ret
    //     0x444e94: ret             
    // 0x444e98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444e98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444e9c: b               #0x444da4
    // 0x444ea0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x444ea0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void _updateTicker(dynamic) {
    // ** addr: 0x444ea4, size: 0x38
    // 0x444ea4: EnterFrame
    //     0x444ea4: stp             fp, lr, [SP, #-0x10]!
    //     0x444ea8: mov             fp, SP
    // 0x444eac: ldr             x0, [fp, #0x10]
    // 0x444eb0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x444eb0: ldur            w1, [x0, #0x17]
    // 0x444eb4: DecompressPointer r1
    //     0x444eb4: add             x1, x1, HEAP, lsl #32
    // 0x444eb8: CheckStackOverflow
    //     0x444eb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x444ebc: cmp             SP, x16
    //     0x444ec0: b.ls            #0x444ed4
    // 0x444ec4: r0 = _updateTicker()
    //     0x444ec4: bl              #0x43c890  ; [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker
    // 0x444ec8: LeaveFrame
    //     0x444ec8: mov             SP, fp
    //     0x444ecc: ldp             fp, lr, [SP], #0x10
    // 0x444ed0: ret
    //     0x444ed0: ret             
    // 0x444ed4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x444ed4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x444ed8: b               #0x444ec4
  }
  _ dispose(/* No info */) {
    // ** addr: 0x754084, size: 0x90
    // 0x754084: EnterFrame
    //     0x754084: stp             fp, lr, [SP, #-0x10]!
    //     0x754088: mov             fp, SP
    // 0x75408c: AllocStack(0x10)
    //     0x75408c: sub             SP, SP, #0x10
    // 0x754090: SetupParameters(__ProfilScreenState&State&SingleTickerProviderStateMixin this /* r1 => r0, fp-0x10 */)
    //     0x754090: mov             x0, x1
    //     0x754094: stur            x1, [fp, #-0x10]
    // 0x754098: CheckStackOverflow
    //     0x754098: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75409c: cmp             SP, x16
    //     0x7540a0: b.ls            #0x75410c
    // 0x7540a4: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x7540a4: ldur            w3, [x0, #0x17]
    // 0x7540a8: DecompressPointer r3
    //     0x7540a8: add             x3, x3, HEAP, lsl #32
    // 0x7540ac: stur            x3, [fp, #-8]
    // 0x7540b0: cmp             w3, NULL
    // 0x7540b4: b.ne            #0x7540c0
    // 0x7540b8: mov             x1, x0
    // 0x7540bc: b               #0x7540f8
    // 0x7540c0: mov             x2, x0
    // 0x7540c4: r1 = Function '_updateTicker@378311458':.
    //     0x7540c4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15920] AnonymousClosure: (0x444ea4), in [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker (0x43c890)
    //     0x7540c8: ldr             x1, [x1, #0x920]
    // 0x7540cc: r0 = AllocateClosure()
    //     0x7540cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7540d0: ldur            x1, [fp, #-8]
    // 0x7540d4: r2 = LoadClassIdInstr(r1)
    //     0x7540d4: ldur            x2, [x1, #-1]
    //     0x7540d8: ubfx            x2, x2, #0xc, #0x14
    // 0x7540dc: mov             x16, x0
    // 0x7540e0: mov             x0, x2
    // 0x7540e4: mov             x2, x16
    // 0x7540e8: r0 = GDT[cid_x0 + 0xfe7]()
    //     0x7540e8: add             lr, x0, #0xfe7
    //     0x7540ec: ldr             lr, [x21, lr, lsl #3]
    //     0x7540f0: blr             lr
    // 0x7540f4: ldur            x1, [fp, #-0x10]
    // 0x7540f8: ArrayStore: r1[0] = rNULL  ; List_4
    //     0x7540f8: stur            NULL, [x1, #0x17]
    // 0x7540fc: r0 = Null
    //     0x7540fc: mov             x0, NULL
    // 0x754100: LeaveFrame
    //     0x754100: mov             SP, fp
    //     0x754104: ldp             fp, lr, [SP], #0x10
    // 0x754108: ret
    //     0x754108: ret             
    // 0x75410c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x75410c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754110: b               #0x7540a4
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x754114, size: 0x38
    // 0x754114: EnterFrame
    //     0x754114: stp             fp, lr, [SP, #-0x10]!
    //     0x754118: mov             fp, SP
    // 0x75411c: ldr             x0, [fp, #0x10]
    // 0x754120: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x754120: ldur            w1, [x0, #0x17]
    // 0x754124: DecompressPointer r1
    //     0x754124: add             x1, x1, HEAP, lsl #32
    // 0x754128: CheckStackOverflow
    //     0x754128: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x75412c: cmp             SP, x16
    //     0x754130: b.ls            #0x754144
    // 0x754134: r0 = dispose()
    //     0x754134: bl              #0x754084  ; [package:umrem_demo/features/home/screens/profil.dart] __ProfilScreenState&State&SingleTickerProviderStateMixin::dispose
    // 0x754138: LeaveFrame
    //     0x754138: mov             SP, fp
    //     0x75413c: ldp             fp, lr, [SP], #0x10
    // 0x754140: ret
    //     0x754140: ret             
    // 0x754144: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754144: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754148: b               #0x754134
  }
  _ activate(/* No info */) {
    // ** addr: 0x758e74, size: 0x48
    // 0x758e74: EnterFrame
    //     0x758e74: stp             fp, lr, [SP, #-0x10]!
    //     0x758e78: mov             fp, SP
    // 0x758e7c: AllocStack(0x8)
    //     0x758e7c: sub             SP, SP, #8
    // 0x758e80: SetupParameters(__ProfilScreenState&State&SingleTickerProviderStateMixin this /* r1 => r0, fp-0x8 */)
    //     0x758e80: mov             x0, x1
    //     0x758e84: stur            x1, [fp, #-8]
    // 0x758e88: CheckStackOverflow
    //     0x758e88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x758e8c: cmp             SP, x16
    //     0x758e90: b.ls            #0x758eb4
    // 0x758e94: mov             x1, x0
    // 0x758e98: r0 = _updateTickerModeNotifier()
    //     0x758e98: bl              #0x444d84  ; [package:umrem_demo/features/home/screens/profil.dart] __ProfilScreenState&State&SingleTickerProviderStateMixin::_updateTickerModeNotifier
    // 0x758e9c: ldur            x1, [fp, #-8]
    // 0x758ea0: r0 = _updateTicker()
    //     0x758ea0: bl              #0x43c890  ; [package:flutter/src/material/calendar_date_picker.dart] __DatePickerModeToggleButtonState&State&SingleTickerProviderStateMixin::_updateTicker
    // 0x758ea4: r0 = Null
    //     0x758ea4: mov             x0, NULL
    // 0x758ea8: LeaveFrame
    //     0x758ea8: mov             SP, fp
    //     0x758eac: ldp             fp, lr, [SP], #0x10
    // 0x758eb0: ret
    //     0x758eb0: ret             
    // 0x758eb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x758eb4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x758eb8: b               #0x758e94
  }
}

// class id: 2468, size: 0x38, field offset: 0x1c
class _ProfilScreenState extends __ProfilScreenState&State&SingleTickerProviderStateMixin {

  late Animation<double> _fadeAnimation; // offset: 0x20
  late final String _selectedQuote; // offset: 0x24
  late AnimationController _fadeController; // offset: 0x1c

  _ initState(/* No info */) {
    // ** addr: 0x5e7220, size: 0x170
    // 0x5e7220: EnterFrame
    //     0x5e7220: stp             fp, lr, [SP, #-0x10]!
    //     0x5e7224: mov             fp, SP
    // 0x5e7228: AllocStack(0x18)
    //     0x5e7228: sub             SP, SP, #0x18
    // 0x5e722c: SetupParameters(_ProfilScreenState this /* r1 => r2, fp-0x8 */)
    //     0x5e722c: mov             x2, x1
    //     0x5e7230: stur            x1, [fp, #-8]
    // 0x5e7234: CheckStackOverflow
    //     0x5e7234: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e7238: cmp             SP, x16
    //     0x5e723c: b.ls            #0x5e7384
    // 0x5e7240: r1 = <double>
    //     0x5e7240: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5e7244: r0 = AnimationController()
    //     0x5e7244: bl              #0x42a58c  ; AllocateAnimationControllerStub -> AnimationController (size=0x4c)
    // 0x5e7248: stur            x0, [fp, #-0x10]
    // 0x5e724c: r16 = Instance_Duration
    //     0x5e724c: ldr             x16, [PP, #0x540]  ; [pp+0x540] Obj!Duration@a2dc41
    // 0x5e7250: str             x16, [SP]
    // 0x5e7254: mov             x1, x0
    // 0x5e7258: ldur            x2, [fp, #-8]
    // 0x5e725c: r4 = const [0, 0x3, 0x1, 0x2, duration, 0x2, null]
    //     0x5e725c: add             x4, PP, #0x10, lsl #12  ; [pp+0x10f68] List(7) [0, 0x3, 0x1, 0x2, "duration", 0x2, Null]
    //     0x5e7260: ldr             x4, [x4, #0xf68]
    // 0x5e7264: r0 = AnimationController()
    //     0x5e7264: bl              #0x42a00c  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::AnimationController
    // 0x5e7268: ldur            x0, [fp, #-0x10]
    // 0x5e726c: ldur            x2, [fp, #-8]
    // 0x5e7270: StoreField: r2->field_1b = r0
    //     0x5e7270: stur            w0, [x2, #0x1b]
    //     0x5e7274: ldurb           w16, [x2, #-1]
    //     0x5e7278: ldurb           w17, [x0, #-1]
    //     0x5e727c: and             x16, x17, x16, lsr #2
    //     0x5e7280: tst             x16, HEAP, lsr #32
    //     0x5e7284: b.eq            #0x5e728c
    //     0x5e7288: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e728c: r1 = <double>
    //     0x5e728c: ldr             x1, [PP, #0x42f8]  ; [pp+0x42f8] TypeArguments: <double>
    // 0x5e7290: r0 = CurvedAnimation()
    //     0x5e7290: bl              #0x408c88  ; AllocateCurvedAnimationStub -> CurvedAnimation (size=0x1c)
    // 0x5e7294: mov             x1, x0
    // 0x5e7298: ldur            x3, [fp, #-0x10]
    // 0x5e729c: r2 = Instance_Cubic
    //     0x5e729c: add             x2, PP, #0x15, lsl #12  ; [pp+0x15ca8] Obj!Cubic@a0f931
    //     0x5e72a0: ldr             x2, [x2, #0xca8]
    // 0x5e72a4: stur            x0, [fp, #-0x10]
    // 0x5e72a8: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x5e72a8: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x5e72ac: r0 = CurvedAnimation()
    //     0x5e72ac: bl              #0x408b44  ; [package:flutter/src/animation/animations.dart] CurvedAnimation::CurvedAnimation
    // 0x5e72b0: ldur            x0, [fp, #-0x10]
    // 0x5e72b4: ldur            x2, [fp, #-8]
    // 0x5e72b8: StoreField: r2->field_1f = r0
    //     0x5e72b8: stur            w0, [x2, #0x1f]
    //     0x5e72bc: ldurb           w16, [x2, #-1]
    //     0x5e72c0: ldurb           w17, [x0, #-1]
    //     0x5e72c4: and             x16, x17, x16, lsr #2
    //     0x5e72c8: tst             x16, HEAP, lsr #32
    //     0x5e72cc: b.eq            #0x5e72d4
    //     0x5e72d0: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e72d4: LoadField: r1 = r2->field_1b
    //     0x5e72d4: ldur            w1, [x2, #0x1b]
    // 0x5e72d8: DecompressPointer r1
    //     0x5e72d8: add             x1, x1, HEAP, lsl #32
    // 0x5e72dc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e72dc: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e72e0: r0 = forward()
    //     0x5e72e0: bl              #0x42af68  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::forward
    // 0x5e72e4: r1 = Null
    //     0x5e72e4: mov             x1, NULL
    // 0x5e72e8: r0 = Random()
    //     0x5e72e8: bl              #0x5de3c0  ; [dart:math] Random::Random
    // 0x5e72ec: mov             x1, x0
    // 0x5e72f0: r2 = 10
    //     0x5e72f0: mov             x2, #0xa
    // 0x5e72f4: r0 = nextInt()
    //     0x5e72f4: bl              #0x5de198  ; [dart:math] _Random::nextInt
    // 0x5e72f8: mov             x1, x0
    // 0x5e72fc: mov             x2, x0
    // 0x5e7300: r0 = 10
    //     0x5e7300: mov             x0, #0xa
    // 0x5e7304: cmp             x1, x0
    // 0x5e7308: b.hs            #0x5e738c
    // 0x5e730c: r0 = const ["Allah sabredenlerle beraberdir." (Bakara 2/153), "Zorlukla beraber mutlaka bir kolaylık vardır." (İnşirah 94/6), "Şüphesiz kalpler Allah’ı anmakla huzur bulur." (Ra’d 13/28), "Kim Allah’a tevekkül ederse O, ona yeter." (Talak 65/3), "Rabbinin nimetine şükret ve O’na yönel." (Duha 93/11), "Ameller niyetlere göredir." (Buhârî, Bed’ü’l-Vahy, 1), "Kolaylaştırın, zorlaştırmayın; müjdeleyin, nefret ettirmeyin." (Buhârî, İlim, 11), "Güzel söz sadakadır." (Buhârî, Edeb, 34), "İnsanların en hayırlısı insanlara faydalı olandır." (Dârekutnî), "Komşusu açken tok yatan bizden değildir." (Hâkim, Müstedrek)]
    //     0x5e730c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15cb0] List<String>(10)
    //     0x5e7310: ldr             x0, [x0, #0xcb0]
    // 0x5e7314: ArrayLoad: r1 = r0[r2]  ; Unknown_4
    //     0x5e7314: add             x16, x0, x2, lsl #2
    //     0x5e7318: ldur            w1, [x16, #0xf]
    // 0x5e731c: DecompressPointer r1
    //     0x5e731c: add             x1, x1, HEAP, lsl #32
    // 0x5e7320: ldur            x2, [fp, #-8]
    // 0x5e7324: LoadField: r0 = r2->field_23
    //     0x5e7324: ldur            w0, [x2, #0x23]
    // 0x5e7328: DecompressPointer r0
    //     0x5e7328: add             x0, x0, HEAP, lsl #32
    // 0x5e732c: r16 = Sentinel
    //     0x5e732c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x5e7330: cmp             w0, w16
    // 0x5e7334: b.ne            #0x5e7370
    // 0x5e7338: mov             x0, x1
    // 0x5e733c: StoreField: r2->field_23 = r0
    //     0x5e733c: stur            w0, [x2, #0x23]
    //     0x5e7340: ldurb           w16, [x2, #-1]
    //     0x5e7344: ldurb           w17, [x0, #-1]
    //     0x5e7348: and             x16, x17, x16, lsr #2
    //     0x5e734c: tst             x16, HEAP, lsr #32
    //     0x5e7350: b.eq            #0x5e7358
    //     0x5e7354: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e7358: mov             x1, x2
    // 0x5e735c: r0 = _checkLocationPermission()
    //     0x5e735c: bl              #0x5e7390  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission
    // 0x5e7360: r0 = Null
    //     0x5e7360: mov             x0, NULL
    // 0x5e7364: LeaveFrame
    //     0x5e7364: mov             SP, fp
    //     0x5e7368: ldp             fp, lr, [SP], #0x10
    // 0x5e736c: ret
    //     0x5e736c: ret             
    // 0x5e7370: r16 = "_selectedQuote@936387819"
    //     0x5e7370: add             x16, PP, #0x15, lsl #12  ; [pp+0x15cb8] "_selectedQuote@936387819"
    //     0x5e7374: ldr             x16, [x16, #0xcb8]
    // 0x5e7378: str             x16, [SP]
    // 0x5e737c: r0 = _throwFieldAlreadyInitialized()
    //     0x5e737c: bl              #0x3e637c  ; [dart:_internal] LateError::_throwFieldAlreadyInitialized
    // 0x5e7380: brk             #0
    // 0x5e7384: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e7384: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e7388: b               #0x5e7240
    // 0x5e738c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x5e738c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  _ _checkLocationPermission(/* No info */) async {
    // ** addr: 0x5e7390, size: 0x158
    // 0x5e7390: EnterFrame
    //     0x5e7390: stp             fp, lr, [SP, #-0x10]!
    //     0x5e7394: mov             fp, SP
    // 0x5e7398: AllocStack(0x80)
    //     0x5e7398: sub             SP, SP, #0x80
    // 0x5e739c: SetupParameters(_ProfilScreenState this /* r1 => r1, fp-0x68 */)
    //     0x5e739c: stur            NULL, [fp, #-8]
    //     0x5e73a0: stur            x1, [fp, #-0x68]
    // 0x5e73a4: CheckStackOverflow
    //     0x5e73a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e73a8: cmp             SP, x16
    //     0x5e73ac: b.ls            #0x5e74e0
    // 0x5e73b0: r1 = 4
    //     0x5e73b0: mov             x1, #4
    // 0x5e73b4: r0 = AllocateContext()
    //     0x5e73b4: bl              #0x927010  ; AllocateContextStub
    // 0x5e73b8: mov             x2, x0
    // 0x5e73bc: ldur            x1, [fp, #-0x68]
    // 0x5e73c0: stur            x2, [fp, #-0x70]
    // 0x5e73c4: StoreField: r2->field_f = r1
    //     0x5e73c4: stur            w1, [x2, #0xf]
    // 0x5e73c8: InitAsync() -> Future<void?>
    //     0x5e73c8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e73cc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e73d0: ldur            x2, [fp, #-0x70]
    // 0x5e73d4: r0 = checkPermission()
    //     0x5e73d4: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x5e73d8: mov             x1, x0
    // 0x5e73dc: stur            x1, [fp, #-0x78]
    // 0x5e73e0: r0 = Await()
    //     0x5e73e0: bl              #0x3dd188  ; AwaitStub
    // 0x5e73e4: ldur            x2, [fp, #-0x70]
    // 0x5e73e8: StoreField: r2->field_13 = r0
    //     0x5e73e8: stur            w0, [x2, #0x13]
    //     0x5e73ec: tbz             w0, #0, #0x5e7408
    //     0x5e73f0: ldurb           w16, [x2, #-1]
    //     0x5e73f4: ldurb           w17, [x0, #-1]
    //     0x5e73f8: and             x16, x17, x16, lsr #2
    //     0x5e73fc: tst             x16, HEAP, lsr #32
    //     0x5e7400: b.eq            #0x5e7408
    //     0x5e7404: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e7408: r0 = isLocationServiceEnabled()
    //     0x5e7408: bl              #0x5ab438  ; [package:geolocator/geolocator.dart] Geolocator::isLocationServiceEnabled
    // 0x5e740c: mov             x1, x0
    // 0x5e7410: stur            x1, [fp, #-0x78]
    // 0x5e7414: r0 = Await()
    //     0x5e7414: bl              #0x3dd188  ; AwaitStub
    // 0x5e7418: ldur            x2, [fp, #-0x70]
    // 0x5e741c: ArrayStore: r2[0] = r0  ; List_4
    //     0x5e741c: stur            w0, [x2, #0x17]
    //     0x5e7420: tbz             w0, #0, #0x5e743c
    //     0x5e7424: ldurb           w16, [x2, #-1]
    //     0x5e7428: ldurb           w17, [x0, #-1]
    //     0x5e742c: and             x16, x17, x16, lsr #2
    //     0x5e7430: tst             x16, HEAP, lsr #32
    //     0x5e7434: b.eq            #0x5e743c
    //     0x5e7438: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e743c: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x5e743c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e7440: ldr             x0, [x0, #0x1a28]
    //     0x5e7444: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e7448: cmp             w0, w16
    //     0x5e744c: b.ne            #0x5e745c
    //     0x5e7450: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x5e7454: ldr             x2, [x2, #0x70]
    //     0x5e7458: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5e745c: mov             x1, x0
    // 0x5e7460: stur            x0, [fp, #-0x78]
    // 0x5e7464: r0 = isRunning()
    //     0x5e7464: bl              #0x58989c  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::isRunning
    // 0x5e7468: mov             x1, x0
    // 0x5e746c: stur            x1, [fp, #-0x80]
    // 0x5e7470: r0 = Await()
    //     0x5e7470: bl              #0x3dd188  ; AwaitStub
    // 0x5e7474: ldur            x3, [fp, #-0x70]
    // 0x5e7478: StoreField: r3->field_1b = r0
    //     0x5e7478: stur            w0, [x3, #0x1b]
    //     0x5e747c: tbz             w0, #0, #0x5e7498
    //     0x5e7480: ldurb           w16, [x3, #-1]
    //     0x5e7484: ldurb           w17, [x0, #-1]
    //     0x5e7488: and             x16, x17, x16, lsr #2
    //     0x5e748c: tst             x16, HEAP, lsr #32
    //     0x5e7490: b.eq            #0x5e7498
    //     0x5e7494: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e7498: mov             x2, x3
    // 0x5e749c: r1 = Function '<anonymous closure>':.
    //     0x5e749c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ae0] AnonymousClosure: (0x5e750c), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission (0x5e7390)
    //     0x5e74a0: ldr             x1, [x1, #0xae0]
    // 0x5e74a4: r0 = AllocateClosure()
    //     0x5e74a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e74a8: ldur            x1, [fp, #-0x68]
    // 0x5e74ac: mov             x2, x0
    // 0x5e74b0: r0 = setState()
    //     0x5e74b0: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e74b4: b               #0x5e74d8
    // 0x5e74b8: sub             SP, fp, #0x80
    // 0x5e74bc: ldur            x2, [fp, #-0x70]
    // 0x5e74c0: r1 = Function '<anonymous closure>':.
    //     0x5e74c0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ae8] AnonymousClosure: (0x5e74e8), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission (0x5e7390)
    //     0x5e74c4: ldr             x1, [x1, #0xae8]
    // 0x5e74c8: r0 = AllocateClosure()
    //     0x5e74c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e74cc: ldur            x1, [fp, #-0x68]
    // 0x5e74d0: mov             x2, x0
    // 0x5e74d4: r0 = setState()
    //     0x5e74d4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e74d8: r0 = Null
    //     0x5e74d8: mov             x0, NULL
    // 0x5e74dc: r0 = ReturnAsyncNotFuture()
    //     0x5e74dc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e74e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e74e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e74e4: b               #0x5e73b0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e74e8, size: 0x24
    // 0x5e74e8: r1 = false
    //     0x5e74e8: add             x1, NULL, #0x30  ; false
    // 0x5e74ec: ldr             x2, [SP]
    // 0x5e74f0: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x5e74f0: ldur            w3, [x2, #0x17]
    // 0x5e74f4: DecompressPointer r3
    //     0x5e74f4: add             x3, x3, HEAP, lsl #32
    // 0x5e74f8: LoadField: r2 = r3->field_f
    //     0x5e74f8: ldur            w2, [x3, #0xf]
    // 0x5e74fc: DecompressPointer r2
    //     0x5e74fc: add             x2, x2, HEAP, lsl #32
    // 0x5e7500: StoreField: r2->field_2f = r1
    //     0x5e7500: stur            w1, [x2, #0x2f]
    // 0x5e7504: r0 = Null
    //     0x5e7504: mov             x0, NULL
    // 0x5e7508: ret
    //     0x5e7508: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e750c, size: 0x84
    // 0x5e750c: ldr             x1, [SP]
    // 0x5e7510: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e7510: ldur            w2, [x1, #0x17]
    // 0x5e7514: DecompressPointer r2
    //     0x5e7514: add             x2, x2, HEAP, lsl #32
    // 0x5e7518: LoadField: r1 = r2->field_f
    //     0x5e7518: ldur            w1, [x2, #0xf]
    // 0x5e751c: DecompressPointer r1
    //     0x5e751c: add             x1, x1, HEAP, lsl #32
    // 0x5e7520: LoadField: r3 = r2->field_13
    //     0x5e7520: ldur            w3, [x2, #0x13]
    // 0x5e7524: DecompressPointer r3
    //     0x5e7524: add             x3, x3, HEAP, lsl #32
    // 0x5e7528: r16 = Instance_LocationPermission
    //     0x5e7528: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc98] Obj!LocationPermission@a27c01
    //     0x5e752c: ldr             x16, [x16, #0xc98]
    // 0x5e7530: cmp             w3, w16
    // 0x5e7534: b.ne            #0x5e7540
    // 0x5e7538: r3 = true
    //     0x5e7538: add             x3, NULL, #0x20  ; true
    // 0x5e753c: b               #0x5e755c
    // 0x5e7540: r16 = Instance_LocationPermission
    //     0x5e7540: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc90] Obj!LocationPermission@a27be1
    //     0x5e7544: ldr             x16, [x16, #0xc90]
    // 0x5e7548: cmp             w3, w16
    // 0x5e754c: r16 = true
    //     0x5e754c: add             x16, NULL, #0x20  ; true
    // 0x5e7550: r17 = false
    //     0x5e7550: add             x17, NULL, #0x30  ; false
    // 0x5e7554: csel            x4, x16, x17, eq
    // 0x5e7558: mov             x3, x4
    // 0x5e755c: StoreField: r1->field_2b = r3
    //     0x5e755c: stur            w3, [x1, #0x2b]
    // 0x5e7560: LoadField: r3 = r2->field_1b
    //     0x5e7560: ldur            w3, [x2, #0x1b]
    // 0x5e7564: DecompressPointer r3
    //     0x5e7564: add             x3, x3, HEAP, lsl #32
    // 0x5e7568: tbnz            w3, #4, #0x5e7578
    // 0x5e756c: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x5e756c: ldur            w3, [x2, #0x17]
    // 0x5e7570: DecompressPointer r3
    //     0x5e7570: add             x3, x3, HEAP, lsl #32
    // 0x5e7574: b               #0x5e757c
    // 0x5e7578: r3 = false
    //     0x5e7578: add             x3, NULL, #0x30  ; false
    // 0x5e757c: r2 = false
    //     0x5e757c: add             x2, NULL, #0x30  ; false
    // 0x5e7580: StoreField: r1->field_27 = r3
    //     0x5e7580: stur            w3, [x1, #0x27]
    // 0x5e7584: StoreField: r1->field_2f = r2
    //     0x5e7584: stur            w2, [x1, #0x2f]
    // 0x5e7588: r0 = Null
    //     0x5e7588: mov             x0, NULL
    // 0x5e758c: ret
    //     0x5e758c: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x67ee24, size: 0x24
    // 0x67ee24: r1 = false
    //     0x67ee24: add             x1, NULL, #0x30  ; false
    // 0x67ee28: ldr             x2, [SP]
    // 0x67ee2c: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x67ee2c: ldur            w3, [x2, #0x17]
    // 0x67ee30: DecompressPointer r3
    //     0x67ee30: add             x3, x3, HEAP, lsl #32
    // 0x67ee34: LoadField: r2 = r3->field_f
    //     0x67ee34: ldur            w2, [x3, #0xf]
    // 0x67ee38: DecompressPointer r2
    //     0x67ee38: add             x2, x2, HEAP, lsl #32
    // 0x67ee3c: StoreField: r2->field_27 = r1
    //     0x67ee3c: stur            w1, [x2, #0x27]
    // 0x67ee40: r0 = Null
    //     0x67ee40: mov             x0, NULL
    // 0x67ee44: ret
    //     0x67ee44: ret             
  }
  _ _stopLocationTracking(/* No info */) async {
    // ** addr: 0x67ee48, size: 0xc0
    // 0x67ee48: EnterFrame
    //     0x67ee48: stp             fp, lr, [SP, #-0x10]!
    //     0x67ee4c: mov             fp, SP
    // 0x67ee50: AllocStack(0x70)
    //     0x67ee50: sub             SP, SP, #0x70
    // 0x67ee54: SetupParameters(_ProfilScreenState this /* r1 => r1, fp-0x60 */)
    //     0x67ee54: stur            NULL, [fp, #-8]
    //     0x67ee58: stur            x1, [fp, #-0x60]
    // 0x67ee5c: CheckStackOverflow
    //     0x67ee5c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x67ee60: cmp             SP, x16
    //     0x67ee64: b.ls            #0x67ef00
    // 0x67ee68: r1 = 1
    //     0x67ee68: mov             x1, #1
    // 0x67ee6c: r0 = AllocateContext()
    //     0x67ee6c: bl              #0x927010  ; AllocateContextStub
    // 0x67ee70: mov             x2, x0
    // 0x67ee74: ldur            x1, [fp, #-0x60]
    // 0x67ee78: stur            x2, [fp, #-0x68]
    // 0x67ee7c: StoreField: r2->field_f = r1
    //     0x67ee7c: stur            w1, [x2, #0xf]
    // 0x67ee80: InitAsync() -> Future<void?>
    //     0x67ee80: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x67ee84: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x67ee88: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x67ee88: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x67ee8c: ldr             x0, [x0, #0x1a28]
    //     0x67ee90: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x67ee94: cmp             w0, w16
    //     0x67ee98: b.ne            #0x67eea8
    //     0x67ee9c: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x67eea0: ldr             x2, [x2, #0x70]
    //     0x67eea4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x67eea8: mov             x1, x0
    // 0x67eeac: r2 = "stopService"
    //     0x67eeac: ldr             x2, [PP, #0x60]  ; [pp+0x60] "stopService"
    // 0x67eeb0: stur            x0, [fp, #-0x70]
    // 0x67eeb4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x67eeb4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x67eeb8: r0 = invoke()
    //     0x67eeb8: bl              #0x5ed040  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::invoke
    // 0x67eebc: ldur            x2, [fp, #-0x68]
    // 0x67eec0: r1 = Function '<anonymous closure>':.
    //     0x67eec0: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b18] AnonymousClosure: (0x67ee24), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_stopLocationTracking (0x67ee48)
    //     0x67eec4: ldr             x1, [x1, #0xb18]
    // 0x67eec8: r0 = AllocateClosure()
    //     0x67eec8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x67eecc: ldur            x1, [fp, #-0x60]
    // 0x67eed0: mov             x2, x0
    // 0x67eed4: r0 = setState()
    //     0x67eed4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x67eed8: r1 = "Konum takibi durduruldu."
    //     0x67eed8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b20] "Konum takibi durduruldu."
    //     0x67eedc: ldr             x1, [x1, #0xb20]
    // 0x67eee0: r0 = showSuccess()
    //     0x67eee0: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x67eee4: b               #0x67eef8
    // 0x67eee8: sub             SP, fp, #0x70
    // 0x67eeec: r1 = "Konum takibi durdurulamadı."
    //     0x67eeec: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b28] "Konum takibi durdurulamadı."
    //     0x67eef0: ldr             x1, [x1, #0xb28]
    // 0x67eef4: r0 = showError()
    //     0x67eef4: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x67eef8: r0 = Null
    //     0x67eef8: mov             x0, NULL
    // 0x67eefc: r0 = ReturnAsyncNotFuture()
    //     0x67eefc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x67ef00: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x67ef00: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x67ef04: b               #0x67ee68
  }
  [closure] Future<void> _stopLocationTracking(dynamic) {
    // ** addr: 0x67ef08, size: 0x38
    // 0x67ef08: EnterFrame
    //     0x67ef08: stp             fp, lr, [SP, #-0x10]!
    //     0x67ef0c: mov             fp, SP
    // 0x67ef10: ldr             x0, [fp, #0x10]
    // 0x67ef14: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x67ef14: ldur            w1, [x0, #0x17]
    // 0x67ef18: DecompressPointer r1
    //     0x67ef18: add             x1, x1, HEAP, lsl #32
    // 0x67ef1c: CheckStackOverflow
    //     0x67ef1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x67ef20: cmp             SP, x16
    //     0x67ef24: b.ls            #0x67ef38
    // 0x67ef28: r0 = _stopLocationTracking()
    //     0x67ef28: bl              #0x67ee48  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_stopLocationTracking
    // 0x67ef2c: LeaveFrame
    //     0x67ef2c: mov             SP, fp
    //     0x67ef30: ldp             fp, lr, [SP], #0x10
    // 0x67ef34: ret
    //     0x67ef34: ret             
    // 0x67ef38: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x67ef38: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x67ef3c: b               #0x67ef28
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x67efac, size: 0x24
    // 0x67efac: r1 = true
    //     0x67efac: add             x1, NULL, #0x20  ; true
    // 0x67efb0: ldr             x2, [SP]
    // 0x67efb4: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x67efb4: ldur            w3, [x2, #0x17]
    // 0x67efb8: DecompressPointer r3
    //     0x67efb8: add             x3, x3, HEAP, lsl #32
    // 0x67efbc: LoadField: r2 = r3->field_f
    //     0x67efbc: ldur            w2, [x3, #0xf]
    // 0x67efc0: DecompressPointer r2
    //     0x67efc0: add             x2, x2, HEAP, lsl #32
    // 0x67efc4: StoreField: r2->field_27 = r1
    //     0x67efc4: stur            w1, [x2, #0x27]
    // 0x67efc8: r0 = Null
    //     0x67efc8: mov             x0, NULL
    // 0x67efcc: ret
    //     0x67efcc: ret             
  }
  _ _startLocationTracking(/* No info */) async {
    // ** addr: 0x67efd0, size: 0x224
    // 0x67efd0: EnterFrame
    //     0x67efd0: stp             fp, lr, [SP, #-0x10]!
    //     0x67efd4: mov             fp, SP
    // 0x67efd8: AllocStack(0x90)
    //     0x67efd8: sub             SP, SP, #0x90
    // 0x67efdc: SetupParameters(_ProfilScreenState this /* r1 => r1, fp-0x70 */)
    //     0x67efdc: stur            NULL, [fp, #-8]
    //     0x67efe0: stur            x1, [fp, #-0x70]
    // 0x67efe4: CheckStackOverflow
    //     0x67efe4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x67efe8: cmp             SP, x16
    //     0x67efec: b.ls            #0x67f1ec
    // 0x67eff0: r1 = 1
    //     0x67eff0: mov             x1, #1
    // 0x67eff4: r0 = AllocateContext()
    //     0x67eff4: bl              #0x927010  ; AllocateContextStub
    // 0x67eff8: mov             x2, x0
    // 0x67effc: ldur            x1, [fp, #-0x70]
    // 0x67f000: stur            x2, [fp, #-0x78]
    // 0x67f004: StoreField: r2->field_f = r1
    //     0x67f004: stur            w1, [x2, #0xf]
    // 0x67f008: InitAsync() -> Future<void?>
    //     0x67f008: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x67f00c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x67f010: r0 = isLocationServiceEnabled()
    //     0x67f010: bl              #0x5ab438  ; [package:geolocator/geolocator.dart] Geolocator::isLocationServiceEnabled
    // 0x67f014: mov             x1, x0
    // 0x67f018: stur            x1, [fp, #-0x80]
    // 0x67f01c: r0 = Await()
    //     0x67f01c: bl              #0x3dd188  ; AwaitStub
    // 0x67f020: r16 = true
    //     0x67f020: add             x16, NULL, #0x20  ; true
    // 0x67f024: cmp             w0, w16
    // 0x67f028: b.eq            #0x67f050
    // 0x67f02c: r1 = "Konum servisi kapalı. Lütfen telefonunuzun konum ayarlarını açın."
    //     0x67f02c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15aa8] "Konum servisi kapalı. Lütfen telefonunuzun konum ayarlarını açın."
    //     0x67f030: ldr             x1, [x1, #0xaa8]
    // 0x67f034: r0 = showError()
    //     0x67f034: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x67f038: r0 = openLocationSettings()
    //     0x67f038: bl              #0x65b0b8  ; [package:geolocator/geolocator.dart] Geolocator::openLocationSettings
    // 0x67f03c: mov             x1, x0
    // 0x67f040: stur            x1, [fp, #-0x80]
    // 0x67f044: r0 = Await()
    //     0x67f044: bl              #0x3dd188  ; AwaitStub
    // 0x67f048: r0 = Null
    //     0x67f048: mov             x0, NULL
    // 0x67f04c: r0 = ReturnAsyncNotFuture()
    //     0x67f04c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x67f050: r0 = checkPermission()
    //     0x67f050: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x67f054: mov             x1, x0
    // 0x67f058: stur            x1, [fp, #-0x80]
    // 0x67f05c: r0 = Await()
    //     0x67f05c: bl              #0x3dd188  ; AwaitStub
    // 0x67f060: r16 = Instance_LocationPermission
    //     0x67f060: add             x16, PP, #9, lsl #12  ; [pp+0x95d8] Obj!LocationPermission@a27c41
    //     0x67f064: ldr             x16, [x16, #0x5d8]
    // 0x67f068: cmp             w0, w16
    // 0x67f06c: b.ne            #0x67f0b8
    // 0x67f070: r0 = requestPermission()
    //     0x67f070: bl              #0x65b054  ; [package:geolocator/geolocator.dart] Geolocator::requestPermission
    // 0x67f074: mov             x1, x0
    // 0x67f078: stur            x1, [fp, #-0x80]
    // 0x67f07c: r0 = Await()
    //     0x67f07c: bl              #0x3dd188  ; AwaitStub
    // 0x67f080: r16 = Instance_LocationPermission
    //     0x67f080: add             x16, PP, #9, lsl #12  ; [pp+0x95d8] Obj!LocationPermission@a27c41
    //     0x67f084: ldr             x16, [x16, #0x5d8]
    // 0x67f088: cmp             w0, w16
    // 0x67f08c: b.ne            #0x67f0a4
    // 0x67f090: r1 = "Konum izni reddedildi."
    //     0x67f090: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ab0] "Konum izni reddedildi."
    //     0x67f094: ldr             x1, [x1, #0xab0]
    // 0x67f098: r0 = showError()
    //     0x67f098: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x67f09c: r0 = Null
    //     0x67f09c: mov             x0, NULL
    // 0x67f0a0: r0 = ReturnAsyncNotFuture()
    //     0x67f0a0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x67f0a4: r16 = Instance_LocationPermission
    //     0x67f0a4: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x67f0a8: ldr             x16, [x16, #0x5e0]
    // 0x67f0ac: cmp             w0, w16
    // 0x67f0b0: b.ne            #0x67f0ec
    // 0x67f0b4: b               #0x67f0c8
    // 0x67f0b8: r16 = Instance_LocationPermission
    //     0x67f0b8: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x67f0bc: ldr             x16, [x16, #0x5e0]
    // 0x67f0c0: cmp             w0, w16
    // 0x67f0c4: b.ne            #0x67f0ec
    // 0x67f0c8: r1 = "Konum izni kalıcı olarak reddedildi. Lütfen ayarlardan izin verin."
    //     0x67f0c8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ab8] "Konum izni kalıcı olarak reddedildi. Lütfen ayarlardan izin verin."
    //     0x67f0cc: ldr             x1, [x1, #0xab8]
    // 0x67f0d0: r0 = showError()
    //     0x67f0d0: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x67f0d4: r0 = openAppSettings()
    //     0x67f0d4: bl              #0x65aff0  ; [package:geolocator/geolocator.dart] Geolocator::openAppSettings
    // 0x67f0d8: mov             x1, x0
    // 0x67f0dc: stur            x1, [fp, #-0x80]
    // 0x67f0e0: r0 = Await()
    //     0x67f0e0: bl              #0x3dd188  ; AwaitStub
    // 0x67f0e4: r0 = Null
    //     0x67f0e4: mov             x0, NULL
    // 0x67f0e8: r0 = ReturnAsyncNotFuture()
    //     0x67f0e8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x67f0ec: r0 = InitLateStaticField(0xd14) // [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::_instance
    //     0x67f0ec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x67f0f0: ldr             x0, [x0, #0x1a28]
    //     0x67f0f4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x67f0f8: cmp             w0, w16
    //     0x67f0fc: b.ne            #0x67f10c
    //     0x67f100: add             x2, PP, #9, lsl #12  ; [pp+0x9070] Field <FlutterBackgroundService._instance@737261802>: static late (offset: 0xd14)
    //     0x67f104: ldr             x2, [x2, #0x70]
    //     0x67f108: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x67f10c: mov             x1, x0
    // 0x67f110: stur            x0, [fp, #-0x80]
    // 0x67f114: r0 = startService()
    //     0x67f114: bl              #0x5ecf58  ; [package:flutter_background_service/flutter_background_service.dart] FlutterBackgroundService::startService
    // 0x67f118: mov             x1, x0
    // 0x67f11c: stur            x1, [fp, #-0x88]
    // 0x67f120: r0 = Await()
    //     0x67f120: bl              #0x3dd188  ; AwaitStub
    // 0x67f124: ldur            x2, [fp, #-0x78]
    // 0x67f128: r1 = Function '<anonymous closure>':.
    //     0x67f128: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ac0] AnonymousClosure: (0x67efac), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_startLocationTracking (0x67efd0)
    //     0x67f12c: ldr             x1, [x1, #0xac0]
    // 0x67f130: r0 = AllocateClosure()
    //     0x67f130: bl              #0x9273d4  ; AllocateClosureStub
    // 0x67f134: ldur            x1, [fp, #-0x70]
    // 0x67f138: mov             x2, x0
    // 0x67f13c: r0 = setState()
    //     0x67f13c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x67f140: r1 = "Konum takibi başlatıldı."
    //     0x67f140: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ac8] "Konum takibi başlatıldı."
    //     0x67f144: ldr             x1, [x1, #0xac8]
    // 0x67f148: r0 = showSuccess()
    //     0x67f148: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x67f14c: b               #0x67f1e4
    // 0x67f150: sub             SP, fp, #0x90
    // 0x67f154: stur            x0, [fp, #-0x70]
    // 0x67f158: r1 = Null
    //     0x67f158: mov             x1, NULL
    // 0x67f15c: r2 = 4
    //     0x67f15c: mov             x2, #4
    // 0x67f160: r0 = AllocateArray()
    //     0x67f160: bl              #0x9280a0  ; AllocateArrayStub
    // 0x67f164: mov             x1, x0
    // 0x67f168: stur            x1, [fp, #-0x78]
    // 0x67f16c: r16 = "Konum takibi başlatılamadı: "
    //     0x67f16c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15ad0] "Konum takibi başlatılamadı: "
    //     0x67f170: ldr             x16, [x16, #0xad0]
    // 0x67f174: StoreField: r1->field_f = r16
    //     0x67f174: stur            w16, [x1, #0xf]
    // 0x67f178: ldur            x0, [fp, #-0x70]
    // 0x67f17c: r2 = 60
    //     0x67f17c: mov             x2, #0x3c
    // 0x67f180: branchIfSmi(r0, 0x67f18c)
    //     0x67f180: tbz             w0, #0, #0x67f18c
    // 0x67f184: r2 = LoadClassIdInstr(r0)
    //     0x67f184: ldur            x2, [x0, #-1]
    //     0x67f188: ubfx            x2, x2, #0xc, #0x14
    // 0x67f18c: str             x0, [SP]
    // 0x67f190: mov             x0, x2
    // 0x67f194: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x67f194: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x67f198: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x67f198: mov             x17, #0x21f6
    //     0x67f19c: add             lr, x0, x17
    //     0x67f1a0: ldr             lr, [x21, lr, lsl #3]
    //     0x67f1a4: blr             lr
    // 0x67f1a8: ldur            x1, [fp, #-0x78]
    // 0x67f1ac: ArrayStore: r1[1] = r0  ; List_4
    //     0x67f1ac: add             x25, x1, #0x13
    //     0x67f1b0: str             w0, [x25]
    //     0x67f1b4: tbz             w0, #0, #0x67f1d0
    //     0x67f1b8: ldurb           w16, [x1, #-1]
    //     0x67f1bc: ldurb           w17, [x0, #-1]
    //     0x67f1c0: and             x16, x17, x16, lsr #2
    //     0x67f1c4: tst             x16, HEAP, lsr #32
    //     0x67f1c8: b.eq            #0x67f1d0
    //     0x67f1cc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x67f1d0: ldur            x16, [fp, #-0x78]
    // 0x67f1d4: str             x16, [SP]
    // 0x67f1d8: r0 = _interpolate()
    //     0x67f1d8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x67f1dc: mov             x1, x0
    // 0x67f1e0: r0 = showError()
    //     0x67f1e0: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x67f1e4: r0 = Null
    //     0x67f1e4: mov             x0, NULL
    // 0x67f1e8: r0 = ReturnAsyncNotFuture()
    //     0x67f1e8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x67f1ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x67f1ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x67f1f0: b               #0x67eff0
  }
  [closure] Future<void> _startLocationTracking(dynamic) {
    // ** addr: 0x67f1f4, size: 0x38
    // 0x67f1f4: EnterFrame
    //     0x67f1f4: stp             fp, lr, [SP, #-0x10]!
    //     0x67f1f8: mov             fp, SP
    // 0x67f1fc: ldr             x0, [fp, #0x10]
    // 0x67f200: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x67f200: ldur            w1, [x0, #0x17]
    // 0x67f204: DecompressPointer r1
    //     0x67f204: add             x1, x1, HEAP, lsl #32
    // 0x67f208: CheckStackOverflow
    //     0x67f208: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x67f20c: cmp             SP, x16
    //     0x67f210: b.ls            #0x67f224
    // 0x67f214: r0 = _startLocationTracking()
    //     0x67f214: bl              #0x67efd0  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_startLocationTracking
    // 0x67f218: LeaveFrame
    //     0x67f218: mov             SP, fp
    //     0x67f21c: ldp             fp, lr, [SP], #0x10
    // 0x67f220: ret
    //     0x67f220: ret             
    // 0x67f224: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x67f224: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x67f228: b               #0x67f214
  }
  _ build(/* No info */) {
    // ** addr: 0x7303e0, size: 0x1c00
    // 0x7303e0: EnterFrame
    //     0x7303e0: stp             fp, lr, [SP, #-0x10]!
    //     0x7303e4: mov             fp, SP
    // 0x7303e8: AllocStack(0xb0)
    //     0x7303e8: sub             SP, SP, #0xb0
    // 0x7303ec: SetupParameters(_ProfilScreenState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7303ec: stur            x1, [fp, #-8]
    //     0x7303f0: stur            x2, [fp, #-0x10]
    // 0x7303f4: CheckStackOverflow
    //     0x7303f4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7303f8: cmp             SP, x16
    //     0x7303fc: b.ls            #0x731fb4
    // 0x730400: r1 = 2
    //     0x730400: mov             x1, #2
    // 0x730404: r0 = AllocateContext()
    //     0x730404: bl              #0x927010  ; AllocateContextStub
    // 0x730408: ldur            x1, [fp, #-8]
    // 0x73040c: stur            x0, [fp, #-0x50]
    // 0x730410: StoreField: r0->field_f = r1
    //     0x730410: stur            w1, [x0, #0xf]
    // 0x730414: ldur            x2, [fp, #-0x10]
    // 0x730418: StoreField: r0->field_13 = r2
    //     0x730418: stur            w2, [x0, #0x13]
    // 0x73041c: r2 = LoadStaticField(0xfe4)
    //     0x73041c: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x730420: ldr             x2, [x2, #0x1fc8]
    // 0x730424: stur            x2, [fp, #-0x48]
    // 0x730428: r3 = LoadStaticField(0xff4)
    //     0x730428: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x73042c: ldr             x3, [x3, #0x1fe8]
    // 0x730430: cmp             w3, NULL
    // 0x730434: b.ne            #0x730440
    // 0x730438: r3 = Null
    //     0x730438: mov             x3, NULL
    // 0x73043c: b               #0x73044c
    // 0x730440: LoadField: r4 = r3->field_b
    //     0x730440: ldur            w4, [x3, #0xb]
    // 0x730444: DecompressPointer r4
    //     0x730444: add             x4, x4, HEAP, lsl #32
    // 0x730448: mov             x3, x4
    // 0x73044c: cmp             w3, NULL
    // 0x730450: b.ne            #0x730458
    // 0x730454: r3 = "-"
    //     0x730454: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x730458: stur            x3, [fp, #-0x40]
    // 0x73045c: r4 = LoadStaticField(0xff8)
    //     0x73045c: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x730460: ldr             x4, [x4, #0x1ff0]
    // 0x730464: cmp             w4, NULL
    // 0x730468: b.ne            #0x730474
    // 0x73046c: r4 = Null
    //     0x73046c: mov             x4, NULL
    // 0x730470: b               #0x730480
    // 0x730474: LoadField: r5 = r4->field_b
    //     0x730474: ldur            w5, [x4, #0xb]
    // 0x730478: DecompressPointer r5
    //     0x730478: add             x5, x5, HEAP, lsl #32
    // 0x73047c: mov             x4, x5
    // 0x730480: cmp             w4, NULL
    // 0x730484: b.ne            #0x73048c
    // 0x730488: r4 = "-"
    //     0x730488: ldr             x4, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x73048c: stur            x4, [fp, #-0x38]
    // 0x730490: r5 = LoadStaticField(0xffc)
    //     0x730490: ldr             x5, [THR, #0x78]  ; THR::field_table_values
    //     0x730494: ldr             x5, [x5, #0x1ff8]
    // 0x730498: cmp             w5, NULL
    // 0x73049c: b.ne            #0x7304a8
    // 0x7304a0: r5 = Null
    //     0x7304a0: mov             x5, NULL
    // 0x7304a4: b               #0x7304b4
    // 0x7304a8: LoadField: r6 = r5->field_f
    //     0x7304a8: ldur            w6, [x5, #0xf]
    // 0x7304ac: DecompressPointer r6
    //     0x7304ac: add             x6, x6, HEAP, lsl #32
    // 0x7304b0: mov             x5, x6
    // 0x7304b4: cmp             w5, NULL
    // 0x7304b8: b.ne            #0x7304c0
    // 0x7304bc: r5 = "-"
    //     0x7304bc: ldr             x5, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x7304c0: stur            x5, [fp, #-0x30]
    // 0x7304c4: r6 = LoadStaticField(0x1000)
    //     0x7304c4: ldr             x6, [THR, #0x78]  ; THR::field_table_values
    //     0x7304c8: ldr             x6, [x6, #0x2000]
    // 0x7304cc: cmp             w6, NULL
    // 0x7304d0: b.ne            #0x7304dc
    // 0x7304d4: r6 = Null
    //     0x7304d4: mov             x6, NULL
    // 0x7304d8: b               #0x7304e8
    // 0x7304dc: LoadField: r7 = r6->field_f
    //     0x7304dc: ldur            w7, [x6, #0xf]
    // 0x7304e0: DecompressPointer r7
    //     0x7304e0: add             x7, x7, HEAP, lsl #32
    // 0x7304e4: mov             x6, x7
    // 0x7304e8: cmp             w6, NULL
    // 0x7304ec: b.ne            #0x7304f4
    // 0x7304f0: r6 = "-"
    //     0x7304f0: ldr             x6, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x7304f4: stur            x6, [fp, #-0x28]
    // 0x7304f8: cmp             w2, NULL
    // 0x7304fc: b.ne            #0x730600
    // 0x730500: r0 = AppBar()
    //     0x730500: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x730504: stur            x0, [fp, #-0x10]
    // 0x730508: r16 = Instance_Color
    //     0x730508: ldr             x16, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x73050c: r30 = 0.000000
    //     0x73050c: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x730510: stp             lr, x16, [SP]
    // 0x730514: mov             x1, x0
    // 0x730518: r2 = Instance_Text
    //     0x730518: add             x2, PP, #0x15, lsl #12  ; [pp+0x15928] Obj!Text@a1cc11
    //     0x73051c: ldr             x2, [x2, #0x928]
    // 0x730520: r4 = const [0, 0x4, 0x2, 0x2, backgroundColor, 0x2, elevation, 0x3, null]
    //     0x730520: add             x4, PP, #0x15, lsl #12  ; [pp+0x15930] List(9) [0, 0x4, 0x2, 0x2, "backgroundColor", 0x2, "elevation", 0x3, Null]
    //     0x730524: ldr             x4, [x4, #0x930]
    // 0x730528: r0 = AppBar()
    //     0x730528: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x73052c: r0 = TextStyle()
    //     0x73052c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x730530: mov             x1, x0
    // 0x730534: r0 = true
    //     0x730534: add             x0, NULL, #0x20  ; true
    // 0x730538: stur            x1, [fp, #-0x18]
    // 0x73053c: StoreField: r1->field_7 = r0
    //     0x73053c: stur            w0, [x1, #7]
    // 0x730540: r7 = Instance_Color
    //     0x730540: add             x7, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x730544: ldr             x7, [x7, #0xb88]
    // 0x730548: StoreField: r1->field_b = r7
    //     0x730548: stur            w7, [x1, #0xb]
    // 0x73054c: r8 = 16.000000
    //     0x73054c: add             x8, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x730550: ldr             x8, [x8, #0x358]
    // 0x730554: StoreField: r1->field_1f = r8
    //     0x730554: stur            w8, [x1, #0x1f]
    // 0x730558: r0 = Text()
    //     0x730558: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73055c: mov             x1, x0
    // 0x730560: r0 = "Kullanıcı bilgisi bulunamadı"
    //     0x730560: add             x0, PP, #0x15, lsl #12  ; [pp+0x15938] "Kullanıcı bilgisi bulunamadı"
    //     0x730564: ldr             x0, [x0, #0x938]
    // 0x730568: stur            x1, [fp, #-0x20]
    // 0x73056c: StoreField: r1->field_b = r0
    //     0x73056c: stur            w0, [x1, #0xb]
    // 0x730570: ldur            x0, [fp, #-0x18]
    // 0x730574: StoreField: r1->field_13 = r0
    //     0x730574: stur            w0, [x1, #0x13]
    // 0x730578: r0 = Center()
    //     0x730578: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x73057c: mov             x1, x0
    // 0x730580: r0 = Instance_Alignment
    //     0x730580: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x730584: ldr             x0, [x0, #0x60]
    // 0x730588: stur            x1, [fp, #-0x18]
    // 0x73058c: StoreField: r1->field_f = r0
    //     0x73058c: stur            w0, [x1, #0xf]
    // 0x730590: ldur            x0, [fp, #-0x20]
    // 0x730594: StoreField: r1->field_b = r0
    //     0x730594: stur            w0, [x1, #0xb]
    // 0x730598: r0 = Scaffold()
    //     0x730598: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x73059c: mov             x1, x0
    // 0x7305a0: ldur            x0, [fp, #-0x10]
    // 0x7305a4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7305a4: stur            w0, [x1, #0x17]
    // 0x7305a8: ldur            x0, [fp, #-0x18]
    // 0x7305ac: StoreField: r1->field_1b = r0
    //     0x7305ac: stur            w0, [x1, #0x1b]
    // 0x7305b0: r9 = Instance_AlignmentDirectional
    //     0x7305b0: add             x9, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7305b4: ldr             x9, [x9, #0x350]
    // 0x7305b8: StoreField: r1->field_2f = r9
    //     0x7305b8: stur            w9, [x1, #0x2f]
    // 0x7305bc: r10 = true
    //     0x7305bc: add             x10, NULL, #0x20  ; true
    // 0x7305c0: StoreField: r1->field_5f = r10
    //     0x7305c0: stur            w10, [x1, #0x5f]
    // 0x7305c4: r11 = Instance_DragStartBehavior
    //     0x7305c4: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7305c8: StoreField: r1->field_63 = r11
    //     0x7305c8: stur            w11, [x1, #0x63]
    // 0x7305cc: r12 = false
    //     0x7305cc: add             x12, NULL, #0x30  ; false
    // 0x7305d0: StoreField: r1->field_b = r12
    //     0x7305d0: stur            w12, [x1, #0xb]
    // 0x7305d4: StoreField: r1->field_f = r10
    //     0x7305d4: stur            w10, [x1, #0xf]
    // 0x7305d8: StoreField: r1->field_13 = r12
    //     0x7305d8: stur            w12, [x1, #0x13]
    // 0x7305dc: r13 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7305dc: add             x13, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7305e0: ldr             x13, [x13, #0x358]
    // 0x7305e4: StoreField: r1->field_4b = r13
    //     0x7305e4: stur            w13, [x1, #0x4b]
    // 0x7305e8: StoreField: r1->field_6b = r10
    //     0x7305e8: stur            w10, [x1, #0x6b]
    // 0x7305ec: StoreField: r1->field_6f = r10
    //     0x7305ec: stur            w10, [x1, #0x6f]
    // 0x7305f0: mov             x0, x1
    // 0x7305f4: LeaveFrame
    //     0x7305f4: mov             SP, fp
    //     0x7305f8: ldp             fp, lr, [SP], #0x10
    // 0x7305fc: ret
    //     0x7305fc: ret             
    // 0x730600: r7 = Instance_Color
    //     0x730600: add             x7, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x730604: ldr             x7, [x7, #0xb88]
    // 0x730608: r10 = true
    //     0x730608: add             x10, NULL, #0x20  ; true
    // 0x73060c: r12 = false
    //     0x73060c: add             x12, NULL, #0x30  ; false
    // 0x730610: r8 = 16.000000
    //     0x730610: add             x8, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x730614: ldr             x8, [x8, #0x358]
    // 0x730618: r11 = Instance_DragStartBehavior
    //     0x730618: ldr             x11, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x73061c: r9 = Instance_AlignmentDirectional
    //     0x73061c: add             x9, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x730620: ldr             x9, [x9, #0x350]
    // 0x730624: r13 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x730624: add             x13, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x730628: ldr             x13, [x13, #0x358]
    // 0x73062c: r0 = TextStyle()
    //     0x73062c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x730630: mov             x1, x0
    // 0x730634: r0 = true
    //     0x730634: add             x0, NULL, #0x20  ; true
    // 0x730638: stur            x1, [fp, #-0x10]
    // 0x73063c: StoreField: r1->field_7 = r0
    //     0x73063c: stur            w0, [x1, #7]
    // 0x730640: r2 = Instance_Color
    //     0x730640: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x730644: ldr             x2, [x2, #0xb88]
    // 0x730648: StoreField: r1->field_b = r2
    //     0x730648: stur            w2, [x1, #0xb]
    // 0x73064c: r3 = 24.000000
    //     0x73064c: add             x3, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x730650: ldr             x3, [x3, #0xf28]
    // 0x730654: StoreField: r1->field_1f = r3
    //     0x730654: stur            w3, [x1, #0x1f]
    // 0x730658: r4 = Instance_FontWeight
    //     0x730658: add             x4, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x73065c: ldr             x4, [x4, #0x1d0]
    // 0x730660: StoreField: r1->field_23 = r4
    //     0x730660: stur            w4, [x1, #0x23]
    // 0x730664: r0 = Text()
    //     0x730664: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x730668: mov             x1, x0
    // 0x73066c: r0 = "Profil"
    //     0x73066c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15940] "Profil"
    //     0x730670: ldr             x0, [x0, #0x940]
    // 0x730674: stur            x1, [fp, #-0x18]
    // 0x730678: StoreField: r1->field_b = r0
    //     0x730678: stur            w0, [x1, #0xb]
    // 0x73067c: ldur            x0, [fp, #-0x10]
    // 0x730680: StoreField: r1->field_13 = r0
    //     0x730680: stur            w0, [x1, #0x13]
    // 0x730684: ldur            x0, [fp, #-8]
    // 0x730688: LoadField: r2 = r0->field_33
    //     0x730688: ldur            w2, [x0, #0x33]
    // 0x73068c: DecompressPointer r2
    //     0x73068c: add             x2, x2, HEAP, lsl #32
    // 0x730690: tbnz            w2, #4, #0x730730
    // 0x730694: r0 = CircularProgressIndicator()
    //     0x730694: bl              #0x6d15e8  ; AllocateCircularProgressIndicatorStub -> CircularProgressIndicator (size=0x48)
    // 0x730698: mov             x1, x0
    // 0x73069c: r0 = 2.000000
    //     0x73069c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11ba0] 2
    //     0x7306a0: ldr             x0, [x0, #0xba0]
    // 0x7306a4: stur            x1, [fp, #-0x10]
    // 0x7306a8: StoreField: r1->field_27 = r0
    //     0x7306a8: stur            w0, [x1, #0x27]
    // 0x7306ac: r0 = Instance__ActivityIndicatorType
    //     0x7306ac: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f00] Obj!_ActivityIndicatorType@a2b551
    //     0x7306b0: ldr             x0, [x0, #0xf00]
    // 0x7306b4: StoreField: r1->field_23 = r0
    //     0x7306b4: stur            w0, [x1, #0x23]
    // 0x7306b8: r0 = Instance_Color
    //     0x7306b8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7306bc: ldr             x0, [x0, #0xb88]
    // 0x7306c0: StoreField: r1->field_13 = r0
    //     0x7306c0: stur            w0, [x1, #0x13]
    // 0x7306c4: r0 = SizedBox()
    //     0x7306c4: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x7306c8: mov             x1, x0
    // 0x7306cc: r0 = 24.000000
    //     0x7306cc: add             x0, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x7306d0: ldr             x0, [x0, #0xf28]
    // 0x7306d4: stur            x1, [fp, #-0x20]
    // 0x7306d8: StoreField: r1->field_f = r0
    //     0x7306d8: stur            w0, [x1, #0xf]
    // 0x7306dc: StoreField: r1->field_13 = r0
    //     0x7306dc: stur            w0, [x1, #0x13]
    // 0x7306e0: ldur            x0, [fp, #-0x10]
    // 0x7306e4: StoreField: r1->field_b = r0
    //     0x7306e4: stur            w0, [x1, #0xb]
    // 0x7306e8: r0 = Container()
    //     0x7306e8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7306ec: stur            x0, [fp, #-0x10]
    // 0x7306f0: r16 = 48.000000
    //     0x7306f0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x7306f4: ldr             x16, [x16, #0x948]
    // 0x7306f8: r30 = 48.000000
    //     0x7306f8: add             lr, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x7306fc: ldr             lr, [lr, #0x948]
    // 0x730700: stp             lr, x16, [SP, #0x10]
    // 0x730704: r16 = Instance_Alignment
    //     0x730704: add             x16, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x730708: ldr             x16, [x16, #0x60]
    // 0x73070c: ldur            lr, [fp, #-0x20]
    // 0x730710: stp             lr, x16, [SP]
    // 0x730714: mov             x1, x0
    // 0x730718: r4 = const [0, 0x5, 0x4, 0x1, alignment, 0x3, child, 0x4, height, 0x2, width, 0x1, null]
    //     0x730718: add             x4, PP, #0x15, lsl #12  ; [pp+0x15950] List(13) [0, 0x5, 0x4, 0x1, "alignment", 0x3, "child", 0x4, "height", 0x2, "width", 0x1, Null]
    //     0x73071c: ldr             x4, [x4, #0x950]
    // 0x730720: r0 = Container()
    //     0x730720: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x730724: ldur            x6, [fp, #-0x10]
    // 0x730728: r0 = false
    //     0x730728: add             x0, NULL, #0x30  ; false
    // 0x73072c: b               #0x7307a4
    // 0x730730: r0 = Icon()
    //     0x730730: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x730734: mov             x3, x0
    // 0x730738: r0 = Instance_IconData
    //     0x730738: add             x0, PP, #0x15, lsl #12  ; [pp+0x15958] Obj!IconData@a09e01
    //     0x73073c: ldr             x0, [x0, #0x958]
    // 0x730740: stur            x3, [fp, #-0x10]
    // 0x730744: StoreField: r3->field_b = r0
    //     0x730744: stur            w0, [x3, #0xb]
    // 0x730748: r0 = Instance_Color
    //     0x730748: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x73074c: ldr             x0, [x0, #0xb88]
    // 0x730750: StoreField: r3->field_23 = r0
    //     0x730750: stur            w0, [x3, #0x23]
    // 0x730754: ldur            x2, [fp, #-0x50]
    // 0x730758: r1 = Function '<anonymous closure>':.
    //     0x730758: add             x1, PP, #0x15, lsl #12  ; [pp+0x15960] AnonymousClosure: (0x732f10), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::build (0x7303e0)
    //     0x73075c: ldr             x1, [x1, #0x960]
    // 0x730760: r0 = AllocateClosure()
    //     0x730760: bl              #0x9273d4  ; AllocateClosureStub
    // 0x730764: stur            x0, [fp, #-0x20]
    // 0x730768: r0 = IconButton()
    //     0x730768: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x73076c: mov             x1, x0
    // 0x730770: ldur            x0, [fp, #-0x20]
    // 0x730774: StoreField: r1->field_3b = r0
    //     0x730774: stur            w0, [x1, #0x3b]
    // 0x730778: r0 = false
    //     0x730778: add             x0, NULL, #0x30  ; false
    // 0x73077c: StoreField: r1->field_4f = r0
    //     0x73077c: stur            w0, [x1, #0x4f]
    // 0x730780: r2 = "Çıkış Yap"
    //     0x730780: add             x2, PP, #0x15, lsl #12  ; [pp+0x15968] "Çıkış Yap"
    //     0x730784: ldr             x2, [x2, #0x968]
    // 0x730788: StoreField: r1->field_53 = r2
    //     0x730788: stur            w2, [x1, #0x53]
    // 0x73078c: ldur            x2, [fp, #-0x10]
    // 0x730790: StoreField: r1->field_1f = r2
    //     0x730790: stur            w2, [x1, #0x1f]
    // 0x730794: r2 = Instance__IconButtonVariant
    //     0x730794: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x730798: ldr             x2, [x2, #0x1b8]
    // 0x73079c: StoreField: r1->field_6f = r2
    //     0x73079c: stur            w2, [x1, #0x6f]
    // 0x7307a0: mov             x6, x1
    // 0x7307a4: ldur            x3, [fp, #-8]
    // 0x7307a8: ldur            x4, [fp, #-0x48]
    // 0x7307ac: r5 = 4
    //     0x7307ac: mov             x5, #4
    // 0x7307b0: mov             x2, x5
    // 0x7307b4: stur            x6, [fp, #-0x10]
    // 0x7307b8: r1 = Null
    //     0x7307b8: mov             x1, NULL
    // 0x7307bc: r0 = AllocateArray()
    //     0x7307bc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7307c0: mov             x2, x0
    // 0x7307c4: ldur            x0, [fp, #-0x10]
    // 0x7307c8: stur            x2, [fp, #-0x20]
    // 0x7307cc: StoreField: r2->field_f = r0
    //     0x7307cc: stur            w0, [x2, #0xf]
    // 0x7307d0: r16 = Instance_SizedBox
    //     0x7307d0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7307d4: ldr             x16, [x16, #0xf68]
    // 0x7307d8: StoreField: r2->field_13 = r16
    //     0x7307d8: stur            w16, [x2, #0x13]
    // 0x7307dc: r1 = <Widget>
    //     0x7307dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7307e0: r0 = AllocateGrowableArray()
    //     0x7307e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7307e4: mov             x1, x0
    // 0x7307e8: ldur            x0, [fp, #-0x20]
    // 0x7307ec: stur            x1, [fp, #-0x10]
    // 0x7307f0: StoreField: r1->field_f = r0
    //     0x7307f0: stur            w0, [x1, #0xf]
    // 0x7307f4: r2 = 4
    //     0x7307f4: mov             x2, #4
    // 0x7307f8: StoreField: r1->field_b = r2
    //     0x7307f8: stur            w2, [x1, #0xb]
    // 0x7307fc: r0 = AppBar()
    //     0x7307fc: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x730800: stur            x0, [fp, #-0x20]
    // 0x730804: r16 = 0.000000
    //     0x730804: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x730808: r30 = Instance_Color
    //     0x730808: add             lr, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x73080c: ldr             lr, [lr, #0x860]
    // 0x730810: stp             lr, x16, [SP, #0x10]
    // 0x730814: r16 = false
    //     0x730814: add             x16, NULL, #0x30  ; false
    // 0x730818: ldur            lr, [fp, #-0x10]
    // 0x73081c: stp             lr, x16, [SP]
    // 0x730820: mov             x1, x0
    // 0x730824: ldur            x2, [fp, #-0x18]
    // 0x730828: r4 = const [0, 0x6, 0x4, 0x2, actions, 0x5, backgroundColor, 0x3, centerTitle, 0x4, elevation, 0x2, null]
    //     0x730828: add             x4, PP, #0x15, lsl #12  ; [pp+0x15970] List(13) [0, 0x6, 0x4, 0x2, "actions", 0x5, "backgroundColor", 0x3, "centerTitle", 0x4, "elevation", 0x2, Null]
    //     0x73082c: ldr             x4, [x4, #0x970]
    // 0x730830: r0 = AppBar()
    //     0x730830: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x730834: ldur            x0, [fp, #-8]
    // 0x730838: LoadField: r3 = r0->field_1f
    //     0x730838: ldur            w3, [x0, #0x1f]
    // 0x73083c: DecompressPointer r3
    //     0x73083c: add             x3, x3, HEAP, lsl #32
    // 0x730840: r16 = Sentinel
    //     0x730840: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x730844: cmp             w3, w16
    // 0x730848: b.eq            #0x731fbc
    // 0x73084c: stur            x3, [fp, #-0x10]
    // 0x730850: r1 = Null
    //     0x730850: mov             x1, NULL
    // 0x730854: r2 = 4
    //     0x730854: mov             x2, #4
    // 0x730858: r0 = AllocateArray()
    //     0x730858: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73085c: stur            x0, [fp, #-0x18]
    // 0x730860: r16 = Instance_Color
    //     0x730860: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x730864: ldr             x16, [x16, #0xb78]
    // 0x730868: StoreField: r0->field_f = r16
    //     0x730868: stur            w16, [x0, #0xf]
    // 0x73086c: r16 = Instance_Color
    //     0x73086c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12790] Obj!Color@a25211
    //     0x730870: ldr             x16, [x16, #0x790]
    // 0x730874: StoreField: r0->field_13 = r16
    //     0x730874: stur            w16, [x0, #0x13]
    // 0x730878: r1 = <Color>
    //     0x730878: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x73087c: ldr             x1, [x1, #0x800]
    // 0x730880: r0 = AllocateGrowableArray()
    //     0x730880: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x730884: mov             x1, x0
    // 0x730888: ldur            x0, [fp, #-0x18]
    // 0x73088c: stur            x1, [fp, #-0x58]
    // 0x730890: StoreField: r1->field_f = r0
    //     0x730890: stur            w0, [x1, #0xf]
    // 0x730894: r2 = 4
    //     0x730894: mov             x2, #4
    // 0x730898: StoreField: r1->field_b = r2
    //     0x730898: stur            w2, [x1, #0xb]
    // 0x73089c: r0 = LinearGradient()
    //     0x73089c: bl              #0x55ed60  ; AllocateLinearGradientStub -> LinearGradient (size=0x20)
    // 0x7308a0: mov             x1, x0
    // 0x7308a4: r0 = Instance_Alignment
    //     0x7308a4: add             x0, PP, #0x10, lsl #12  ; [pp+0x10f58] Obj!Alignment@a0ceb1
    //     0x7308a8: ldr             x0, [x0, #0xf58]
    // 0x7308ac: stur            x1, [fp, #-0x18]
    // 0x7308b0: StoreField: r1->field_13 = r0
    //     0x7308b0: stur            w0, [x1, #0x13]
    // 0x7308b4: r0 = Instance_Alignment
    //     0x7308b4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15598] Obj!Alignment@a0cf71
    //     0x7308b8: ldr             x0, [x0, #0x598]
    // 0x7308bc: ArrayStore: r1[0] = r0  ; List_4
    //     0x7308bc: stur            w0, [x1, #0x17]
    // 0x7308c0: r0 = Instance_TileMode
    //     0x7308c0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d08] Obj!TileMode@a2d831
    //     0x7308c4: ldr             x0, [x0, #0xd08]
    // 0x7308c8: StoreField: r1->field_1b = r0
    //     0x7308c8: stur            w0, [x1, #0x1b]
    // 0x7308cc: ldur            x0, [fp, #-0x58]
    // 0x7308d0: StoreField: r1->field_7 = r0
    //     0x7308d0: stur            w0, [x1, #7]
    // 0x7308d4: r0 = Radius()
    //     0x7308d4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7308d8: d0 = 20.000000
    //     0x7308d8: fmov            d0, #20.00000000
    // 0x7308dc: stur            x0, [fp, #-0x58]
    // 0x7308e0: StoreField: r0->field_7 = d0
    //     0x7308e0: stur            d0, [x0, #7]
    // 0x7308e4: StoreField: r0->field_f = d0
    //     0x7308e4: stur            d0, [x0, #0xf]
    // 0x7308e8: r0 = BorderRadius()
    //     0x7308e8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7308ec: mov             x2, x0
    // 0x7308f0: ldur            x0, [fp, #-0x58]
    // 0x7308f4: stur            x2, [fp, #-0x60]
    // 0x7308f8: StoreField: r2->field_7 = r0
    //     0x7308f8: stur            w0, [x2, #7]
    // 0x7308fc: StoreField: r2->field_b = r0
    //     0x7308fc: stur            w0, [x2, #0xb]
    // 0x730900: StoreField: r2->field_f = r0
    //     0x730900: stur            w0, [x2, #0xf]
    // 0x730904: StoreField: r2->field_13 = r0
    //     0x730904: stur            w0, [x2, #0x13]
    // 0x730908: r16 = 0.300000
    //     0x730908: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x73090c: ldr             x16, [x16, #0x320]
    // 0x730910: str             x16, [SP]
    // 0x730914: r1 = Instance_Color
    //     0x730914: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x730918: ldr             x1, [x1, #0xb78]
    // 0x73091c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x73091c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x730920: ldr             x4, [x4, #0x198]
    // 0x730924: r0 = withValues()
    //     0x730924: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x730928: stur            x0, [fp, #-0x58]
    // 0x73092c: r0 = BoxShadow()
    //     0x73092c: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x730930: stur            x0, [fp, #-0x68]
    // 0x730934: ArrayStore: r0[0] = rZR  ; List_8
    //     0x730934: stur            xzr, [x0, #0x17]
    // 0x730938: r1 = Instance_BlurStyle
    //     0x730938: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x73093c: ldr             x1, [x1, #0x9b0]
    // 0x730940: StoreField: r0->field_1f = r1
    //     0x730940: stur            w1, [x0, #0x1f]
    // 0x730944: ldur            x1, [fp, #-0x58]
    // 0x730948: StoreField: r0->field_7 = r1
    //     0x730948: stur            w1, [x0, #7]
    // 0x73094c: r1 = Instance_Offset
    //     0x73094c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15978] Obj!Offset@a26b51
    //     0x730950: ldr             x1, [x1, #0x978]
    // 0x730954: StoreField: r0->field_b = r1
    //     0x730954: stur            w1, [x0, #0xb]
    // 0x730958: d0 = 20.000000
    //     0x730958: fmov            d0, #20.00000000
    // 0x73095c: StoreField: r0->field_f = d0
    //     0x73095c: stur            d0, [x0, #0xf]
    // 0x730960: r1 = Null
    //     0x730960: mov             x1, NULL
    // 0x730964: r2 = 2
    //     0x730964: mov             x2, #2
    // 0x730968: r0 = AllocateArray()
    //     0x730968: bl              #0x9280a0  ; AllocateArrayStub
    // 0x73096c: mov             x2, x0
    // 0x730970: ldur            x0, [fp, #-0x68]
    // 0x730974: stur            x2, [fp, #-0x58]
    // 0x730978: StoreField: r2->field_f = r0
    //     0x730978: stur            w0, [x2, #0xf]
    // 0x73097c: r1 = <BoxShadow>
    //     0x73097c: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x730980: ldr             x1, [x1, #0x9c0]
    // 0x730984: r0 = AllocateGrowableArray()
    //     0x730984: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x730988: mov             x1, x0
    // 0x73098c: ldur            x0, [fp, #-0x58]
    // 0x730990: stur            x1, [fp, #-0x68]
    // 0x730994: StoreField: r1->field_f = r0
    //     0x730994: stur            w0, [x1, #0xf]
    // 0x730998: r0 = 2
    //     0x730998: mov             x0, #2
    // 0x73099c: StoreField: r1->field_b = r0
    //     0x73099c: stur            w0, [x1, #0xb]
    // 0x7309a0: r0 = BoxDecoration()
    //     0x7309a0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7309a4: mov             x2, x0
    // 0x7309a8: ldur            x0, [fp, #-0x60]
    // 0x7309ac: stur            x2, [fp, #-0x58]
    // 0x7309b0: StoreField: r2->field_13 = r0
    //     0x7309b0: stur            w0, [x2, #0x13]
    // 0x7309b4: ldur            x0, [fp, #-0x68]
    // 0x7309b8: ArrayStore: r2[0] = r0  ; List_4
    //     0x7309b8: stur            w0, [x2, #0x17]
    // 0x7309bc: ldur            x0, [fp, #-0x18]
    // 0x7309c0: StoreField: r2->field_1b = r0
    //     0x7309c0: stur            w0, [x2, #0x1b]
    // 0x7309c4: r0 = Instance_BoxShape
    //     0x7309c4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7309c8: ldr             x0, [x0, #0x1c8]
    // 0x7309cc: StoreField: r2->field_23 = r0
    //     0x7309cc: stur            w0, [x2, #0x23]
    // 0x7309d0: r16 = 0.150000
    //     0x7309d0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x7309d4: ldr             x16, [x16, #0xe38]
    // 0x7309d8: str             x16, [SP]
    // 0x7309dc: r1 = Instance_Color
    //     0x7309dc: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7309e0: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7309e0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7309e4: ldr             x4, [x4, #0x198]
    // 0x7309e8: r0 = withValues()
    //     0x7309e8: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7309ec: stur            x0, [fp, #-0x18]
    // 0x7309f0: r0 = Radius()
    //     0x7309f0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7309f4: d0 = 44.000000
    //     0x7309f4: add             x17, PP, #0x15, lsl #12  ; [pp+0x15980] IMM: double(44) from 0x4046000000000000
    //     0x7309f8: ldr             d0, [x17, #0x980]
    // 0x7309fc: stur            x0, [fp, #-0x60]
    // 0x730a00: StoreField: r0->field_7 = d0
    //     0x730a00: stur            d0, [x0, #7]
    // 0x730a04: StoreField: r0->field_f = d0
    //     0x730a04: stur            d0, [x0, #0xf]
    // 0x730a08: r0 = BorderRadius()
    //     0x730a08: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x730a0c: mov             x2, x0
    // 0x730a10: ldur            x0, [fp, #-0x60]
    // 0x730a14: stur            x2, [fp, #-0x68]
    // 0x730a18: StoreField: r2->field_7 = r0
    //     0x730a18: stur            w0, [x2, #7]
    // 0x730a1c: StoreField: r2->field_b = r0
    //     0x730a1c: stur            w0, [x2, #0xb]
    // 0x730a20: StoreField: r2->field_f = r0
    //     0x730a20: stur            w0, [x2, #0xf]
    // 0x730a24: StoreField: r2->field_13 = r0
    //     0x730a24: stur            w0, [x2, #0x13]
    // 0x730a28: r16 = 0.400000
    //     0x730a28: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e90] 0.4
    //     0x730a2c: ldr             x16, [x16, #0xe90]
    // 0x730a30: str             x16, [SP]
    // 0x730a34: r1 = Instance_Color
    //     0x730a34: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x730a38: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x730a38: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x730a3c: ldr             x4, [x4, #0x198]
    // 0x730a40: r0 = withValues()
    //     0x730a40: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x730a44: r16 = 2.000000
    //     0x730a44: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ba0] 2
    //     0x730a48: ldr             x16, [x16, #0xba0]
    // 0x730a4c: stp             x16, x0, [SP]
    // 0x730a50: r1 = Null
    //     0x730a50: mov             x1, NULL
    // 0x730a54: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x730a54: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x730a58: ldr             x4, [x4, #0x208]
    // 0x730a5c: r0 = Border.all()
    //     0x730a5c: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x730a60: stur            x0, [fp, #-0x60]
    // 0x730a64: r0 = BoxDecoration()
    //     0x730a64: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x730a68: mov             x1, x0
    // 0x730a6c: ldur            x0, [fp, #-0x18]
    // 0x730a70: stur            x1, [fp, #-0x70]
    // 0x730a74: StoreField: r1->field_7 = r0
    //     0x730a74: stur            w0, [x1, #7]
    // 0x730a78: ldur            x0, [fp, #-0x60]
    // 0x730a7c: StoreField: r1->field_f = r0
    //     0x730a7c: stur            w0, [x1, #0xf]
    // 0x730a80: ldur            x0, [fp, #-0x68]
    // 0x730a84: StoreField: r1->field_13 = r0
    //     0x730a84: stur            w0, [x1, #0x13]
    // 0x730a88: r0 = Instance_BoxShape
    //     0x730a88: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x730a8c: ldr             x0, [x0, #0x1c8]
    // 0x730a90: StoreField: r1->field_23 = r0
    //     0x730a90: stur            w0, [x1, #0x23]
    // 0x730a94: r0 = Container()
    //     0x730a94: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x730a98: stur            x0, [fp, #-0x18]
    // 0x730a9c: r16 = 88.000000
    //     0x730a9c: add             x16, PP, #0xc, lsl #12  ; [pp+0xcea0] 88
    //     0x730aa0: ldr             x16, [x16, #0xea0]
    // 0x730aa4: r30 = 88.000000
    //     0x730aa4: add             lr, PP, #0xc, lsl #12  ; [pp+0xcea0] 88
    //     0x730aa8: ldr             lr, [lr, #0xea0]
    // 0x730aac: stp             lr, x16, [SP, #0x10]
    // 0x730ab0: ldur            x16, [fp, #-0x70]
    // 0x730ab4: r30 = Instance_Icon
    //     0x730ab4: add             lr, PP, #0x15, lsl #12  ; [pp+0x15988] Obj!Icon@a1eb71
    //     0x730ab8: ldr             lr, [lr, #0x988]
    // 0x730abc: stp             lr, x16, [SP]
    // 0x730ac0: mov             x1, x0
    // 0x730ac4: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x730ac4: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x730ac8: ldr             x4, [x4, #0x990]
    // 0x730acc: r0 = Container()
    //     0x730acc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x730ad0: ldur            x0, [fp, #-0x48]
    // 0x730ad4: LoadField: r1 = r0->field_b
    //     0x730ad4: ldur            w1, [x0, #0xb]
    // 0x730ad8: DecompressPointer r1
    //     0x730ad8: add             x1, x1, HEAP, lsl #32
    // 0x730adc: LoadField: r2 = r1->field_7
    //     0x730adc: ldur            w2, [x1, #7]
    // 0x730ae0: cbnz            w2, #0x730aec
    // 0x730ae4: r1 = "Misafir"
    //     0x730ae4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15998] "Misafir"
    //     0x730ae8: ldr             x1, [x1, #0x998]
    // 0x730aec: stur            x1, [fp, #-0x60]
    // 0x730af0: r0 = Text()
    //     0x730af0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x730af4: mov             x2, x0
    // 0x730af8: ldur            x0, [fp, #-0x60]
    // 0x730afc: stur            x2, [fp, #-0x68]
    // 0x730b00: StoreField: r2->field_b = r0
    //     0x730b00: stur            w0, [x2, #0xb]
    // 0x730b04: r0 = Instance_TextStyle
    //     0x730b04: add             x0, PP, #0x15, lsl #12  ; [pp+0x159a0] Obj!TextStyle@a17bb1
    //     0x730b08: ldr             x0, [x0, #0x9a0]
    // 0x730b0c: StoreField: r2->field_13 = r0
    //     0x730b0c: stur            w0, [x2, #0x13]
    // 0x730b10: r0 = Instance_TextOverflow
    //     0x730b10: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x730b14: ldr             x0, [x0, #0x68]
    // 0x730b18: StoreField: r2->field_2b = r0
    //     0x730b18: stur            w0, [x2, #0x2b]
    // 0x730b1c: r0 = 2
    //     0x730b1c: mov             x0, #2
    // 0x730b20: StoreField: r2->field_37 = r0
    //     0x730b20: stur            w0, [x2, #0x37]
    // 0x730b24: r16 = 0.200000
    //     0x730b24: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x730b28: ldr             x16, [x16, #0x1f0]
    // 0x730b2c: str             x16, [SP]
    // 0x730b30: r1 = Instance_Color
    //     0x730b30: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x730b34: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x730b34: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x730b38: ldr             x4, [x4, #0x198]
    // 0x730b3c: r0 = withValues()
    //     0x730b3c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x730b40: stur            x0, [fp, #-0x60]
    // 0x730b44: r0 = Radius()
    //     0x730b44: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x730b48: d0 = 20.000000
    //     0x730b48: fmov            d0, #20.00000000
    // 0x730b4c: stur            x0, [fp, #-0x70]
    // 0x730b50: StoreField: r0->field_7 = d0
    //     0x730b50: stur            d0, [x0, #7]
    // 0x730b54: StoreField: r0->field_f = d0
    //     0x730b54: stur            d0, [x0, #0xf]
    // 0x730b58: r0 = BorderRadius()
    //     0x730b58: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x730b5c: mov             x1, x0
    // 0x730b60: ldur            x0, [fp, #-0x70]
    // 0x730b64: stur            x1, [fp, #-0x78]
    // 0x730b68: StoreField: r1->field_7 = r0
    //     0x730b68: stur            w0, [x1, #7]
    // 0x730b6c: StoreField: r1->field_b = r0
    //     0x730b6c: stur            w0, [x1, #0xb]
    // 0x730b70: StoreField: r1->field_f = r0
    //     0x730b70: stur            w0, [x1, #0xf]
    // 0x730b74: StoreField: r1->field_13 = r0
    //     0x730b74: stur            w0, [x1, #0x13]
    // 0x730b78: r0 = BoxDecoration()
    //     0x730b78: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x730b7c: mov             x1, x0
    // 0x730b80: ldur            x0, [fp, #-0x60]
    // 0x730b84: stur            x1, [fp, #-0x70]
    // 0x730b88: StoreField: r1->field_7 = r0
    //     0x730b88: stur            w0, [x1, #7]
    // 0x730b8c: ldur            x0, [fp, #-0x78]
    // 0x730b90: StoreField: r1->field_13 = r0
    //     0x730b90: stur            w0, [x1, #0x13]
    // 0x730b94: r0 = Instance_BoxShape
    //     0x730b94: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x730b98: ldr             x0, [x0, #0x1c8]
    // 0x730b9c: StoreField: r1->field_23 = r0
    //     0x730b9c: stur            w0, [x1, #0x23]
    // 0x730ba0: ldur            x2, [fp, #-0x48]
    // 0x730ba4: LoadField: r3 = r2->field_f
    //     0x730ba4: ldur            w3, [x2, #0xf]
    // 0x730ba8: DecompressPointer r3
    //     0x730ba8: add             x3, x3, HEAP, lsl #32
    // 0x730bac: stur            x3, [fp, #-0x60]
    // 0x730bb0: r0 = LoadClassIdInstr(r3)
    //     0x730bb0: ldur            x0, [x3, #-1]
    //     0x730bb4: ubfx            x0, x0, #0xc, #0x14
    // 0x730bb8: r16 = "misafir"
    //     0x730bb8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12588] "misafir"
    //     0x730bbc: ldr             x16, [x16, #0x588]
    // 0x730bc0: stp             x16, x3, [SP]
    // 0x730bc4: mov             lr, x0
    // 0x730bc8: ldr             lr, [x21, lr, lsl #3]
    // 0x730bcc: blr             lr
    // 0x730bd0: tbnz            w0, #4, #0x730be0
    // 0x730bd4: r3 = "Umre Ziyaretçisi"
    //     0x730bd4: add             x3, PP, #0x15, lsl #12  ; [pp+0x159a8] "Umre Ziyaretçisi"
    //     0x730bd8: ldr             x3, [x3, #0x9a8]
    // 0x730bdc: b               #0x730be4
    // 0x730be0: ldur            x3, [fp, #-0x60]
    // 0x730be4: ldur            x0, [fp, #-0x48]
    // 0x730be8: ldur            x2, [fp, #-0x18]
    // 0x730bec: ldur            x1, [fp, #-0x68]
    // 0x730bf0: stur            x3, [fp, #-0x60]
    // 0x730bf4: r0 = Text()
    //     0x730bf4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x730bf8: mov             x1, x0
    // 0x730bfc: ldur            x0, [fp, #-0x60]
    // 0x730c00: stur            x1, [fp, #-0x78]
    // 0x730c04: StoreField: r1->field_b = r0
    //     0x730c04: stur            w0, [x1, #0xb]
    // 0x730c08: r0 = Instance_TextStyle
    //     0x730c08: add             x0, PP, #0x15, lsl #12  ; [pp+0x159b0] Obj!TextStyle@a18161
    //     0x730c0c: ldr             x0, [x0, #0x9b0]
    // 0x730c10: StoreField: r1->field_13 = r0
    //     0x730c10: stur            w0, [x1, #0x13]
    // 0x730c14: r0 = Container()
    //     0x730c14: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x730c18: stur            x0, [fp, #-0x60]
    // 0x730c1c: r16 = Instance_EdgeInsets
    //     0x730c1c: add             x16, PP, #0x15, lsl #12  ; [pp+0x159b8] Obj!EdgeInsets@a0c6b1
    //     0x730c20: ldr             x16, [x16, #0x9b8]
    // 0x730c24: ldur            lr, [fp, #-0x70]
    // 0x730c28: stp             lr, x16, [SP, #8]
    // 0x730c2c: ldur            x16, [fp, #-0x78]
    // 0x730c30: str             x16, [SP]
    // 0x730c34: mov             x1, x0
    // 0x730c38: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x730c38: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x730c3c: ldr             x4, [x4, #0x1e8]
    // 0x730c40: r0 = Container()
    //     0x730c40: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x730c44: r1 = Null
    //     0x730c44: mov             x1, NULL
    // 0x730c48: r2 = 6
    //     0x730c48: mov             x2, #6
    // 0x730c4c: r0 = AllocateArray()
    //     0x730c4c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x730c50: mov             x2, x0
    // 0x730c54: ldur            x0, [fp, #-0x68]
    // 0x730c58: stur            x2, [fp, #-0x70]
    // 0x730c5c: StoreField: r2->field_f = r0
    //     0x730c5c: stur            w0, [x2, #0xf]
    // 0x730c60: r16 = Instance_SizedBox
    //     0x730c60: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x730c64: ldr             x16, [x16, #0x318]
    // 0x730c68: StoreField: r2->field_13 = r16
    //     0x730c68: stur            w16, [x2, #0x13]
    // 0x730c6c: ldur            x0, [fp, #-0x60]
    // 0x730c70: ArrayStore: r2[0] = r0  ; List_4
    //     0x730c70: stur            w0, [x2, #0x17]
    // 0x730c74: r1 = <Widget>
    //     0x730c74: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x730c78: r0 = AllocateGrowableArray()
    //     0x730c78: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x730c7c: mov             x1, x0
    // 0x730c80: ldur            x0, [fp, #-0x70]
    // 0x730c84: stur            x1, [fp, #-0x60]
    // 0x730c88: StoreField: r1->field_f = r0
    //     0x730c88: stur            w0, [x1, #0xf]
    // 0x730c8c: r2 = 6
    //     0x730c8c: mov             x2, #6
    // 0x730c90: StoreField: r1->field_b = r2
    //     0x730c90: stur            w2, [x1, #0xb]
    // 0x730c94: r0 = Column()
    //     0x730c94: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x730c98: mov             x2, x0
    // 0x730c9c: r0 = Instance_Axis
    //     0x730c9c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x730ca0: stur            x2, [fp, #-0x68]
    // 0x730ca4: StoreField: r2->field_f = r0
    //     0x730ca4: stur            w0, [x2, #0xf]
    // 0x730ca8: r3 = Instance_MainAxisAlignment
    //     0x730ca8: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x730cac: ldr             x3, [x3, #0x230]
    // 0x730cb0: StoreField: r2->field_13 = r3
    //     0x730cb0: stur            w3, [x2, #0x13]
    // 0x730cb4: r4 = Instance_MainAxisSize
    //     0x730cb4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x730cb8: ldr             x4, [x4, #0x330]
    // 0x730cbc: ArrayStore: r2[0] = r4  ; List_4
    //     0x730cbc: stur            w4, [x2, #0x17]
    // 0x730cc0: r5 = Instance_CrossAxisAlignment
    //     0x730cc0: add             x5, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x730cc4: ldr             x5, [x5, #0x238]
    // 0x730cc8: StoreField: r2->field_1b = r5
    //     0x730cc8: stur            w5, [x2, #0x1b]
    // 0x730ccc: r6 = Instance_VerticalDirection
    //     0x730ccc: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x730cd0: ldr             x6, [x6, #0x340]
    // 0x730cd4: StoreField: r2->field_23 = r6
    //     0x730cd4: stur            w6, [x2, #0x23]
    // 0x730cd8: r7 = Instance_Clip
    //     0x730cd8: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x730cdc: ldr             x7, [x7, #0x348]
    // 0x730ce0: StoreField: r2->field_2b = r7
    //     0x730ce0: stur            w7, [x2, #0x2b]
    // 0x730ce4: StoreField: r2->field_2f = rZR
    //     0x730ce4: stur            xzr, [x2, #0x2f]
    // 0x730ce8: ldur            x1, [fp, #-0x60]
    // 0x730cec: StoreField: r2->field_b = r1
    //     0x730cec: stur            w1, [x2, #0xb]
    // 0x730cf0: r1 = <FlexParentData>
    //     0x730cf0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x730cf4: ldr             x1, [x1, #0x340]
    // 0x730cf8: r0 = Expanded()
    //     0x730cf8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x730cfc: mov             x3, x0
    // 0x730d00: r0 = 1
    //     0x730d00: mov             x0, #1
    // 0x730d04: stur            x3, [fp, #-0x60]
    // 0x730d08: StoreField: r3->field_13 = r0
    //     0x730d08: stur            x0, [x3, #0x13]
    // 0x730d0c: r0 = Instance_FlexFit
    //     0x730d0c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x730d10: ldr             x0, [x0, #0x348]
    // 0x730d14: StoreField: r3->field_1b = r0
    //     0x730d14: stur            w0, [x3, #0x1b]
    // 0x730d18: ldur            x0, [fp, #-0x68]
    // 0x730d1c: StoreField: r3->field_b = r0
    //     0x730d1c: stur            w0, [x3, #0xb]
    // 0x730d20: r1 = Null
    //     0x730d20: mov             x1, NULL
    // 0x730d24: r2 = 6
    //     0x730d24: mov             x2, #6
    // 0x730d28: r0 = AllocateArray()
    //     0x730d28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x730d2c: mov             x2, x0
    // 0x730d30: ldur            x0, [fp, #-0x18]
    // 0x730d34: stur            x2, [fp, #-0x68]
    // 0x730d38: StoreField: r2->field_f = r0
    //     0x730d38: stur            w0, [x2, #0xf]
    // 0x730d3c: r16 = Instance_SizedBox
    //     0x730d3c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12758] Obj!SizedBox@a1fb91
    //     0x730d40: ldr             x16, [x16, #0x758]
    // 0x730d44: StoreField: r2->field_13 = r16
    //     0x730d44: stur            w16, [x2, #0x13]
    // 0x730d48: ldur            x0, [fp, #-0x60]
    // 0x730d4c: ArrayStore: r2[0] = r0  ; List_4
    //     0x730d4c: stur            w0, [x2, #0x17]
    // 0x730d50: r1 = <Widget>
    //     0x730d50: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x730d54: r0 = AllocateGrowableArray()
    //     0x730d54: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x730d58: mov             x1, x0
    // 0x730d5c: ldur            x0, [fp, #-0x68]
    // 0x730d60: stur            x1, [fp, #-0x18]
    // 0x730d64: StoreField: r1->field_f = r0
    //     0x730d64: stur            w0, [x1, #0xf]
    // 0x730d68: r2 = 6
    //     0x730d68: mov             x2, #6
    // 0x730d6c: StoreField: r1->field_b = r2
    //     0x730d6c: stur            w2, [x1, #0xb]
    // 0x730d70: r0 = Row()
    //     0x730d70: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x730d74: mov             x1, x0
    // 0x730d78: r0 = Instance_Axis
    //     0x730d78: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x730d7c: stur            x1, [fp, #-0x60]
    // 0x730d80: StoreField: r1->field_f = r0
    //     0x730d80: stur            w0, [x1, #0xf]
    // 0x730d84: r0 = Instance_MainAxisAlignment
    //     0x730d84: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x730d88: ldr             x0, [x0, #0x230]
    // 0x730d8c: StoreField: r1->field_13 = r0
    //     0x730d8c: stur            w0, [x1, #0x13]
    // 0x730d90: r2 = Instance_MainAxisSize
    //     0x730d90: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x730d94: ldr             x2, [x2, #0x330]
    // 0x730d98: ArrayStore: r1[0] = r2  ; List_4
    //     0x730d98: stur            w2, [x1, #0x17]
    // 0x730d9c: r3 = Instance_CrossAxisAlignment
    //     0x730d9c: add             x3, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x730da0: ldr             x3, [x3, #0x238]
    // 0x730da4: StoreField: r1->field_1b = r3
    //     0x730da4: stur            w3, [x1, #0x1b]
    // 0x730da8: r4 = Instance_VerticalDirection
    //     0x730da8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x730dac: ldr             x4, [x4, #0x340]
    // 0x730db0: StoreField: r1->field_23 = r4
    //     0x730db0: stur            w4, [x1, #0x23]
    // 0x730db4: r5 = Instance_Clip
    //     0x730db4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x730db8: ldr             x5, [x5, #0x348]
    // 0x730dbc: StoreField: r1->field_2b = r5
    //     0x730dbc: stur            w5, [x1, #0x2b]
    // 0x730dc0: StoreField: r1->field_2f = rZR
    //     0x730dc0: stur            xzr, [x1, #0x2f]
    // 0x730dc4: ldur            x6, [fp, #-0x18]
    // 0x730dc8: StoreField: r1->field_b = r6
    //     0x730dc8: stur            w6, [x1, #0xb]
    // 0x730dcc: r0 = Container()
    //     0x730dcc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x730dd0: stur            x0, [fp, #-0x18]
    // 0x730dd4: r16 = inf
    //     0x730dd4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x730dd8: ldr             x16, [x16, #0xb20]
    // 0x730ddc: r30 = Instance_BoxConstraints
    //     0x730ddc: add             lr, PP, #0x15, lsl #12  ; [pp+0x159c0] Obj!BoxConstraints@a0b571
    //     0x730de0: ldr             lr, [lr, #0x9c0]
    // 0x730de4: stp             lr, x16, [SP, #0x18]
    // 0x730de8: ldur            x16, [fp, #-0x58]
    // 0x730dec: r30 = Instance_EdgeInsets
    //     0x730dec: ldr             lr, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x730df0: stp             lr, x16, [SP, #8]
    // 0x730df4: ldur            x16, [fp, #-0x60]
    // 0x730df8: str             x16, [SP]
    // 0x730dfc: mov             x1, x0
    // 0x730e00: r4 = const [0, 0x6, 0x5, 0x1, child, 0x5, constraints, 0x2, decoration, 0x3, padding, 0x4, width, 0x1, null]
    //     0x730e00: add             x4, PP, #0x15, lsl #12  ; [pp+0x159c8] List(15) [0, 0x6, 0x5, 0x1, "child", 0x5, "constraints", 0x2, "decoration", 0x3, "padding", 0x4, "width", 0x1, Null]
    //     0x730e04: ldr             x4, [x4, #0x9c8]
    // 0x730e08: r0 = Container()
    //     0x730e08: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x730e0c: r1 = <Widget>
    //     0x730e0c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x730e10: r2 = 28
    //     0x730e10: mov             x2, #0x1c
    // 0x730e14: r0 = AllocateArray()
    //     0x730e14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x730e18: mov             x1, x0
    // 0x730e1c: ldur            x0, [fp, #-0x18]
    // 0x730e20: stur            x1, [fp, #-0x58]
    // 0x730e24: StoreField: r1->field_f = r0
    //     0x730e24: stur            w0, [x1, #0xf]
    // 0x730e28: r16 = Instance_SizedBox
    //     0x730e28: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x730e2c: ldr             x16, [x16, #0x320]
    // 0x730e30: StoreField: r1->field_13 = r16
    //     0x730e30: stur            w16, [x1, #0x13]
    // 0x730e34: r0 = TextStyle()
    //     0x730e34: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x730e38: mov             x1, x0
    // 0x730e3c: r0 = true
    //     0x730e3c: add             x0, NULL, #0x20  ; true
    // 0x730e40: stur            x1, [fp, #-0x18]
    // 0x730e44: StoreField: r1->field_7 = r0
    //     0x730e44: stur            w0, [x1, #7]
    // 0x730e48: r2 = Instance_Color
    //     0x730e48: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x730e4c: ldr             x2, [x2, #0xb88]
    // 0x730e50: StoreField: r1->field_b = r2
    //     0x730e50: stur            w2, [x1, #0xb]
    // 0x730e54: r3 = 16.000000
    //     0x730e54: add             x3, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x730e58: ldr             x3, [x3, #0x358]
    // 0x730e5c: StoreField: r1->field_1f = r3
    //     0x730e5c: stur            w3, [x1, #0x1f]
    // 0x730e60: r4 = Instance_FontWeight
    //     0x730e60: add             x4, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x730e64: ldr             x4, [x4, #0x1d0]
    // 0x730e68: StoreField: r1->field_23 = r4
    //     0x730e68: stur            w4, [x1, #0x23]
    // 0x730e6c: r5 = 0.500000
    //     0x730e6c: ldr             x5, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x730e70: StoreField: r1->field_2b = r5
    //     0x730e70: stur            w5, [x1, #0x2b]
    // 0x730e74: r0 = Text()
    //     0x730e74: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x730e78: mov             x1, x0
    // 0x730e7c: r0 = "Hızlı Erişim"
    //     0x730e7c: add             x0, PP, #0x15, lsl #12  ; [pp+0x159d0] "Hızlı Erişim"
    //     0x730e80: ldr             x0, [x0, #0x9d0]
    // 0x730e84: StoreField: r1->field_b = r0
    //     0x730e84: stur            w0, [x1, #0xb]
    // 0x730e88: ldur            x0, [fp, #-0x18]
    // 0x730e8c: StoreField: r1->field_13 = r0
    //     0x730e8c: stur            w0, [x1, #0x13]
    // 0x730e90: mov             x0, x1
    // 0x730e94: ldur            x1, [fp, #-0x58]
    // 0x730e98: ArrayStore: r1[2] = r0  ; List_4
    //     0x730e98: add             x25, x1, #0x17
    //     0x730e9c: str             w0, [x25]
    //     0x730ea0: tbz             w0, #0, #0x730ebc
    //     0x730ea4: ldurb           w16, [x1, #-1]
    //     0x730ea8: ldurb           w17, [x0, #-1]
    //     0x730eac: and             x16, x17, x16, lsr #2
    //     0x730eb0: tst             x16, HEAP, lsr #32
    //     0x730eb4: b.eq            #0x730ebc
    //     0x730eb8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x730ebc: ldur            x1, [fp, #-0x58]
    // 0x730ec0: r16 = Instance_SizedBox
    //     0x730ec0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x730ec4: ldr             x16, [x16, #0x220]
    // 0x730ec8: StoreField: r1->field_1b = r16
    //     0x730ec8: stur            w16, [x1, #0x1b]
    // 0x730ecc: r0 = QuickActionCard()
    //     0x730ecc: bl              #0x732224  ; AllocateQuickActionCardStub -> QuickActionCard (size=0x20)
    // 0x730ed0: mov             x3, x0
    // 0x730ed4: r0 = Instance_IconData
    //     0x730ed4: add             x0, PP, #0x15, lsl #12  ; [pp+0x159d8] Obj!IconData@a0a5c1
    //     0x730ed8: ldr             x0, [x0, #0x9d8]
    // 0x730edc: stur            x3, [fp, #-0x18]
    // 0x730ee0: StoreField: r3->field_b = r0
    //     0x730ee0: stur            w0, [x3, #0xb]
    // 0x730ee4: r0 = "Rehberle İletişim"
    //     0x730ee4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15458] "Rehberle İletişim"
    //     0x730ee8: ldr             x0, [x0, #0x458]
    // 0x730eec: StoreField: r3->field_f = r0
    //     0x730eec: stur            w0, [x3, #0xf]
    // 0x730ef0: r0 = "Rehberinizle iletişim kurun"
    //     0x730ef0: add             x0, PP, #0x15, lsl #12  ; [pp+0x159e0] "Rehberinizle iletişim kurun"
    //     0x730ef4: ldr             x0, [x0, #0x9e0]
    // 0x730ef8: StoreField: r3->field_13 = r0
    //     0x730ef8: stur            w0, [x3, #0x13]
    // 0x730efc: ldur            x2, [fp, #-0x50]
    // 0x730f00: r1 = Function '<anonymous closure>':.
    //     0x730f00: add             x1, PP, #0x15, lsl #12  ; [pp+0x159e8] AnonymousClosure: (0x732344), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::build (0x7303e0)
    //     0x730f04: ldr             x1, [x1, #0x9e8]
    // 0x730f08: r0 = AllocateClosure()
    //     0x730f08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x730f0c: mov             x1, x0
    // 0x730f10: ldur            x0, [fp, #-0x18]
    // 0x730f14: ArrayStore: r0[0] = r1  ; List_4
    //     0x730f14: stur            w1, [x0, #0x17]
    // 0x730f18: ldur            x1, [fp, #-0x58]
    // 0x730f1c: ArrayStore: r1[4] = r0  ; List_4
    //     0x730f1c: add             x25, x1, #0x1f
    //     0x730f20: str             w0, [x25]
    //     0x730f24: tbz             w0, #0, #0x730f40
    //     0x730f28: ldurb           w16, [x1, #-1]
    //     0x730f2c: ldurb           w17, [x0, #-1]
    //     0x730f30: and             x16, x17, x16, lsr #2
    //     0x730f34: tst             x16, HEAP, lsr #32
    //     0x730f38: b.eq            #0x730f40
    //     0x730f3c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x730f40: ldur            x1, [fp, #-0x58]
    // 0x730f44: r16 = Instance_SizedBox
    //     0x730f44: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x730f48: ldr             x16, [x16, #0x320]
    // 0x730f4c: StoreField: r1->field_23 = r16
    //     0x730f4c: stur            w16, [x1, #0x23]
    // 0x730f50: ldur            x0, [fp, #-0x48]
    // 0x730f54: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x730f54: ldur            w2, [x0, #0x17]
    // 0x730f58: DecompressPointer r2
    //     0x730f58: add             x2, x2, HEAP, lsl #32
    // 0x730f5c: LoadField: r3 = r2->field_7
    //     0x730f5c: ldur            w3, [x2, #7]
    // 0x730f60: cbnz            w3, #0x730f68
    // 0x730f64: r2 = "-"
    //     0x730f64: ldr             x2, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x730f68: stur            x2, [fp, #-0x18]
    // 0x730f6c: r0 = InfoCard()
    //     0x730f6c: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x730f70: mov             x1, x0
    // 0x730f74: r0 = Instance_IconData
    //     0x730f74: add             x0, PP, #0x15, lsl #12  ; [pp+0x159f0] Obj!IconData@a0a181
    //     0x730f78: ldr             x0, [x0, #0x9f0]
    // 0x730f7c: StoreField: r1->field_b = r0
    //     0x730f7c: stur            w0, [x1, #0xb]
    // 0x730f80: r0 = "T.C. Kimlik No"
    //     0x730f80: add             x0, PP, #0x15, lsl #12  ; [pp+0x159f8] "T.C. Kimlik No"
    //     0x730f84: ldr             x0, [x0, #0x9f8]
    // 0x730f88: StoreField: r1->field_f = r0
    //     0x730f88: stur            w0, [x1, #0xf]
    // 0x730f8c: ldur            x0, [fp, #-0x18]
    // 0x730f90: StoreField: r1->field_13 = r0
    //     0x730f90: stur            w0, [x1, #0x13]
    // 0x730f94: r2 = Instance_Color
    //     0x730f94: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x730f98: ldr             x2, [x2, #0xb78]
    // 0x730f9c: ArrayStore: r1[0] = r2  ; List_4
    //     0x730f9c: stur            w2, [x1, #0x17]
    // 0x730fa0: mov             x0, x1
    // 0x730fa4: ldur            x1, [fp, #-0x58]
    // 0x730fa8: ArrayStore: r1[6] = r0  ; List_4
    //     0x730fa8: add             x25, x1, #0x27
    //     0x730fac: str             w0, [x25]
    //     0x730fb0: tbz             w0, #0, #0x730fcc
    //     0x730fb4: ldurb           w16, [x1, #-1]
    //     0x730fb8: ldurb           w17, [x0, #-1]
    //     0x730fbc: and             x16, x17, x16, lsr #2
    //     0x730fc0: tst             x16, HEAP, lsr #32
    //     0x730fc4: b.eq            #0x730fcc
    //     0x730fc8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x730fcc: ldur            x1, [fp, #-0x58]
    // 0x730fd0: r16 = Instance_SizedBox
    //     0x730fd0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x730fd4: ldr             x16, [x16, #0x220]
    // 0x730fd8: StoreField: r1->field_2b = r16
    //     0x730fd8: stur            w16, [x1, #0x2b]
    // 0x730fdc: ldur            x0, [fp, #-0x48]
    // 0x730fe0: LoadField: r3 = r0->field_13
    //     0x730fe0: ldur            w3, [x0, #0x13]
    // 0x730fe4: DecompressPointer r3
    //     0x730fe4: add             x3, x3, HEAP, lsl #32
    // 0x730fe8: LoadField: r4 = r3->field_7
    //     0x730fe8: ldur            w4, [x3, #7]
    // 0x730fec: cbnz            w4, #0x730ff4
    // 0x730ff0: r3 = "-"
    //     0x730ff0: ldr             x3, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x730ff4: stur            x3, [fp, #-0x18]
    // 0x730ff8: r0 = InfoCard()
    //     0x730ff8: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x730ffc: mov             x1, x0
    // 0x731000: r0 = Instance_IconData
    //     0x731000: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a00] Obj!IconData@a0a5a1
    //     0x731004: ldr             x0, [x0, #0xa00]
    // 0x731008: StoreField: r1->field_b = r0
    //     0x731008: stur            w0, [x1, #0xb]
    // 0x73100c: r0 = "Telefon"
    //     0x73100c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15488] "Telefon"
    //     0x731010: ldr             x0, [x0, #0x488]
    // 0x731014: StoreField: r1->field_f = r0
    //     0x731014: stur            w0, [x1, #0xf]
    // 0x731018: ldur            x0, [fp, #-0x18]
    // 0x73101c: StoreField: r1->field_13 = r0
    //     0x73101c: stur            w0, [x1, #0x13]
    // 0x731020: r3 = Instance_Color
    //     0x731020: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x731024: ldr             x3, [x3, #0xb78]
    // 0x731028: ArrayStore: r1[0] = r3  ; List_4
    //     0x731028: stur            w3, [x1, #0x17]
    // 0x73102c: mov             x0, x1
    // 0x731030: ldur            x1, [fp, #-0x58]
    // 0x731034: ArrayStore: r1[8] = r0  ; List_4
    //     0x731034: add             x25, x1, #0x2f
    //     0x731038: str             w0, [x25]
    //     0x73103c: tbz             w0, #0, #0x731058
    //     0x731040: ldurb           w16, [x1, #-1]
    //     0x731044: ldurb           w17, [x0, #-1]
    //     0x731048: and             x16, x17, x16, lsr #2
    //     0x73104c: tst             x16, HEAP, lsr #32
    //     0x731050: b.eq            #0x731058
    //     0x731054: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731058: ldur            x0, [fp, #-0x58]
    // 0x73105c: r16 = Instance_SizedBox
    //     0x73105c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x731060: ldr             x16, [x16, #0x220]
    // 0x731064: StoreField: r0->field_33 = r16
    //     0x731064: stur            w16, [x0, #0x33]
    // 0x731068: ldur            x4, [fp, #-0x48]
    // 0x73106c: LoadField: r2 = r4->field_3b
    //     0x73106c: ldur            w2, [x4, #0x3b]
    // 0x731070: DecompressPointer r2
    //     0x731070: add             x2, x2, HEAP, lsl #32
    // 0x731074: cmp             w2, NULL
    // 0x731078: b.eq            #0x73108c
    // 0x73107c: ldur            x1, [fp, #-8]
    // 0x731080: r0 = _formatDate()
    //     0x731080: bl              #0x731fec  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_formatDate
    // 0x731084: mov             x2, x0
    // 0x731088: b               #0x731090
    // 0x73108c: r2 = "-"
    //     0x73108c: ldr             x2, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x731090: ldur            x0, [fp, #-0x48]
    // 0x731094: ldur            x1, [fp, #-0x58]
    // 0x731098: stur            x2, [fp, #-0x18]
    // 0x73109c: r0 = InfoCard()
    //     0x73109c: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x7310a0: mov             x1, x0
    // 0x7310a4: r0 = Instance_IconData
    //     0x7310a4: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a08] Obj!IconData@a0a581
    //     0x7310a8: ldr             x0, [x0, #0xa08]
    // 0x7310ac: StoreField: r1->field_b = r0
    //     0x7310ac: stur            w0, [x1, #0xb]
    // 0x7310b0: r0 = "Doğum Tarihi"
    //     0x7310b0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a10] "Doğum Tarihi"
    //     0x7310b4: ldr             x0, [x0, #0xa10]
    // 0x7310b8: StoreField: r1->field_f = r0
    //     0x7310b8: stur            w0, [x1, #0xf]
    // 0x7310bc: ldur            x0, [fp, #-0x18]
    // 0x7310c0: StoreField: r1->field_13 = r0
    //     0x7310c0: stur            w0, [x1, #0x13]
    // 0x7310c4: r3 = Instance_Color
    //     0x7310c4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7310c8: ldr             x3, [x3, #0xb78]
    // 0x7310cc: ArrayStore: r1[0] = r3  ; List_4
    //     0x7310cc: stur            w3, [x1, #0x17]
    // 0x7310d0: mov             x0, x1
    // 0x7310d4: ldur            x1, [fp, #-0x58]
    // 0x7310d8: ArrayStore: r1[10] = r0  ; List_4
    //     0x7310d8: add             x25, x1, #0x37
    //     0x7310dc: str             w0, [x25]
    //     0x7310e0: tbz             w0, #0, #0x7310fc
    //     0x7310e4: ldurb           w16, [x1, #-1]
    //     0x7310e8: ldurb           w17, [x0, #-1]
    //     0x7310ec: and             x16, x17, x16, lsr #2
    //     0x7310f0: tst             x16, HEAP, lsr #32
    //     0x7310f4: b.eq            #0x7310fc
    //     0x7310f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7310fc: ldur            x0, [fp, #-0x58]
    // 0x731100: r16 = Instance_SizedBox
    //     0x731100: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x731104: ldr             x16, [x16, #0x220]
    // 0x731108: StoreField: r0->field_3b = r16
    //     0x731108: stur            w16, [x0, #0x3b]
    // 0x73110c: ldur            x4, [fp, #-0x48]
    // 0x731110: LoadField: r2 = r4->field_3f
    //     0x731110: ldur            w2, [x4, #0x3f]
    // 0x731114: DecompressPointer r2
    //     0x731114: add             x2, x2, HEAP, lsl #32
    // 0x731118: cmp             w2, NULL
    // 0x73111c: b.eq            #0x731130
    // 0x731120: ldur            x1, [fp, #-8]
    // 0x731124: r0 = _formatDate()
    //     0x731124: bl              #0x731fec  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_formatDate
    // 0x731128: mov             x2, x0
    // 0x73112c: b               #0x731134
    // 0x731130: r2 = "-"
    //     0x731130: ldr             x2, [PP, #0x26f0]  ; [pp+0x26f0] "-"
    // 0x731134: ldur            x0, [fp, #-0x48]
    // 0x731138: ldur            x1, [fp, #-0x58]
    // 0x73113c: stur            x2, [fp, #-0x18]
    // 0x731140: r0 = InfoCard()
    //     0x731140: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x731144: mov             x1, x0
    // 0x731148: r0 = Instance_IconData
    //     0x731148: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ec0] Obj!IconData@a09e41
    //     0x73114c: ldr             x0, [x0, #0xec0]
    // 0x731150: StoreField: r1->field_b = r0
    //     0x731150: stur            w0, [x1, #0xb]
    // 0x731154: r0 = "Kayıt Tarihi"
    //     0x731154: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a18] "Kayıt Tarihi"
    //     0x731158: ldr             x0, [x0, #0xa18]
    // 0x73115c: StoreField: r1->field_f = r0
    //     0x73115c: stur            w0, [x1, #0xf]
    // 0x731160: ldur            x0, [fp, #-0x18]
    // 0x731164: StoreField: r1->field_13 = r0
    //     0x731164: stur            w0, [x1, #0x13]
    // 0x731168: r2 = Instance_Color
    //     0x731168: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x73116c: ldr             x2, [x2, #0xb78]
    // 0x731170: ArrayStore: r1[0] = r2  ; List_4
    //     0x731170: stur            w2, [x1, #0x17]
    // 0x731174: mov             x0, x1
    // 0x731178: ldur            x1, [fp, #-0x58]
    // 0x73117c: ArrayStore: r1[12] = r0  ; List_4
    //     0x73117c: add             x25, x1, #0x3f
    //     0x731180: str             w0, [x25]
    //     0x731184: tbz             w0, #0, #0x7311a0
    //     0x731188: ldurb           w16, [x1, #-1]
    //     0x73118c: ldurb           w17, [x0, #-1]
    //     0x731190: and             x16, x17, x16, lsr #2
    //     0x731194: tst             x16, HEAP, lsr #32
    //     0x731198: b.eq            #0x7311a0
    //     0x73119c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7311a0: ldur            x0, [fp, #-0x58]
    // 0x7311a4: r16 = Instance_SizedBox
    //     0x7311a4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x7311a8: ldr             x16, [x16, #0x320]
    // 0x7311ac: StoreField: r0->field_43 = r16
    //     0x7311ac: stur            w16, [x0, #0x43]
    // 0x7311b0: r1 = <Widget>
    //     0x7311b0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7311b4: r0 = AllocateGrowableArray()
    //     0x7311b4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7311b8: mov             x1, x0
    // 0x7311bc: ldur            x0, [fp, #-0x58]
    // 0x7311c0: stur            x1, [fp, #-0x50]
    // 0x7311c4: StoreField: r1->field_f = r0
    //     0x7311c4: stur            w0, [x1, #0xf]
    // 0x7311c8: r0 = 28
    //     0x7311c8: mov             x0, #0x1c
    // 0x7311cc: StoreField: r1->field_b = r0
    //     0x7311cc: stur            w0, [x1, #0xb]
    // 0x7311d0: ldur            x0, [fp, #-0x48]
    // 0x7311d4: LoadField: r2 = r0->field_1b
    //     0x7311d4: ldur            w2, [x0, #0x1b]
    // 0x7311d8: DecompressPointer r2
    //     0x7311d8: add             x2, x2, HEAP, lsl #32
    // 0x7311dc: stur            x2, [fp, #-0x18]
    // 0x7311e0: cmp             w2, NULL
    // 0x7311e4: b.ne            #0x731218
    // 0x7311e8: LoadField: r3 = r0->field_1f
    //     0x7311e8: ldur            w3, [x0, #0x1f]
    // 0x7311ec: DecompressPointer r3
    //     0x7311ec: add             x3, x3, HEAP, lsl #32
    // 0x7311f0: cmp             w3, NULL
    // 0x7311f4: b.ne            #0x731218
    // 0x7311f8: LoadField: r3 = r0->field_23
    //     0x7311f8: ldur            w3, [x0, #0x23]
    // 0x7311fc: DecompressPointer r3
    //     0x7311fc: add             x3, x3, HEAP, lsl #32
    // 0x731200: cmp             w3, NULL
    // 0x731204: b.ne            #0x731218
    // 0x731208: LoadField: r3 = r0->field_27
    //     0x731208: ldur            w3, [x0, #0x27]
    // 0x73120c: DecompressPointer r3
    //     0x73120c: add             x3, x3, HEAP, lsl #32
    // 0x731210: cmp             w3, NULL
    // 0x731214: b.eq            #0x7319d4
    // 0x731218: r0 = TextStyle()
    //     0x731218: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x73121c: mov             x1, x0
    // 0x731220: r0 = true
    //     0x731220: add             x0, NULL, #0x20  ; true
    // 0x731224: stur            x1, [fp, #-0x58]
    // 0x731228: StoreField: r1->field_7 = r0
    //     0x731228: stur            w0, [x1, #7]
    // 0x73122c: r2 = Instance_Color
    //     0x73122c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x731230: ldr             x2, [x2, #0xb88]
    // 0x731234: StoreField: r1->field_b = r2
    //     0x731234: stur            w2, [x1, #0xb]
    // 0x731238: r3 = 16.000000
    //     0x731238: add             x3, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x73123c: ldr             x3, [x3, #0x358]
    // 0x731240: StoreField: r1->field_1f = r3
    //     0x731240: stur            w3, [x1, #0x1f]
    // 0x731244: r4 = Instance_FontWeight
    //     0x731244: add             x4, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x731248: ldr             x4, [x4, #0x1d0]
    // 0x73124c: StoreField: r1->field_23 = r4
    //     0x73124c: stur            w4, [x1, #0x23]
    // 0x731250: r5 = 0.500000
    //     0x731250: ldr             x5, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x731254: StoreField: r1->field_2b = r5
    //     0x731254: stur            w5, [x1, #0x2b]
    // 0x731258: r0 = Text()
    //     0x731258: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x73125c: mov             x3, x0
    // 0x731260: r0 = "Umre Bilgileri"
    //     0x731260: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a20] "Umre Bilgileri"
    //     0x731264: ldr             x0, [x0, #0xa20]
    // 0x731268: stur            x3, [fp, #-0x60]
    // 0x73126c: StoreField: r3->field_b = r0
    //     0x73126c: stur            w0, [x3, #0xb]
    // 0x731270: ldur            x0, [fp, #-0x58]
    // 0x731274: StoreField: r3->field_13 = r0
    //     0x731274: stur            w0, [x3, #0x13]
    // 0x731278: r1 = Null
    //     0x731278: mov             x1, NULL
    // 0x73127c: r2 = 4
    //     0x73127c: mov             x2, #4
    // 0x731280: r0 = AllocateArray()
    //     0x731280: bl              #0x9280a0  ; AllocateArrayStub
    // 0x731284: mov             x2, x0
    // 0x731288: ldur            x0, [fp, #-0x60]
    // 0x73128c: stur            x2, [fp, #-0x58]
    // 0x731290: StoreField: r2->field_f = r0
    //     0x731290: stur            w0, [x2, #0xf]
    // 0x731294: r16 = Instance_SizedBox
    //     0x731294: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x731298: ldr             x16, [x16, #0x220]
    // 0x73129c: StoreField: r2->field_13 = r16
    //     0x73129c: stur            w16, [x2, #0x13]
    // 0x7312a0: r1 = <Widget>
    //     0x7312a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7312a4: r0 = AllocateGrowableArray()
    //     0x7312a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7312a8: mov             x3, x0
    // 0x7312ac: ldur            x0, [fp, #-0x58]
    // 0x7312b0: stur            x3, [fp, #-0x60]
    // 0x7312b4: StoreField: r3->field_f = r0
    //     0x7312b4: stur            w0, [x3, #0xf]
    // 0x7312b8: r4 = 4
    //     0x7312b8: mov             x4, #4
    // 0x7312bc: StoreField: r3->field_b = r4
    //     0x7312bc: stur            w4, [x3, #0xb]
    // 0x7312c0: ldur            x5, [fp, #-0x18]
    // 0x7312c4: cmp             w5, NULL
    // 0x7312c8: b.eq            #0x731490
    // 0x7312cc: r0 = LoadStaticField(0xfec)
    //     0x7312cc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7312d0: ldr             x0, [x0, #0x1fd8]
    // 0x7312d4: cmp             w0, NULL
    // 0x7312d8: b.eq            #0x7313c4
    // 0x7312dc: LoadField: r2 = r0->field_13
    //     0x7312dc: ldur            w2, [x0, #0x13]
    // 0x7312e0: DecompressPointer r2
    //     0x7312e0: add             x2, x2, HEAP, lsl #32
    // 0x7312e4: cmp             w2, NULL
    // 0x7312e8: b.eq            #0x7313c4
    // 0x7312ec: ldur            x1, [fp, #-8]
    // 0x7312f0: r0 = _formatDate()
    //     0x7312f0: bl              #0x731fec  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_formatDate
    // 0x7312f4: r1 = Null
    //     0x7312f4: mov             x1, NULL
    // 0x7312f8: r2 = 6
    //     0x7312f8: mov             x2, #6
    // 0x7312fc: stur            x0, [fp, #-0x68]
    // 0x731300: r0 = AllocateArray()
    //     0x731300: bl              #0x9280a0  ; AllocateArrayStub
    // 0x731304: mov             x1, x0
    // 0x731308: ldur            x0, [fp, #-0x68]
    // 0x73130c: stur            x1, [fp, #-0x70]
    // 0x731310: StoreField: r1->field_f = r0
    //     0x731310: stur            w0, [x1, #0xf]
    // 0x731314: r16 = " - "
    //     0x731314: add             x16, PP, #0x13, lsl #12  ; [pp+0x139e8] " - "
    //     0x731318: ldr             x16, [x16, #0x9e8]
    // 0x73131c: StoreField: r1->field_13 = r16
    //     0x73131c: stur            w16, [x1, #0x13]
    // 0x731320: r0 = LoadStaticField(0xfec)
    //     0x731320: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x731324: ldr             x0, [x0, #0x1fd8]
    // 0x731328: cmp             w0, NULL
    // 0x73132c: b.ne            #0x731338
    // 0x731330: r0 = Null
    //     0x731330: mov             x0, NULL
    // 0x731334: b               #0x731344
    // 0x731338: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x731338: ldur            w2, [x0, #0x17]
    // 0x73133c: DecompressPointer r2
    //     0x73133c: add             x2, x2, HEAP, lsl #32
    // 0x731340: mov             x0, x2
    // 0x731344: cmp             w0, NULL
    // 0x731348: b.ne            #0x731380
    // 0x73134c: r0 = DateTime()
    //     0x73134c: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x731350: mov             x1, x0
    // 0x731354: r0 = false
    //     0x731354: add             x0, NULL, #0x30  ; false
    // 0x731358: stur            x1, [fp, #-0x68]
    // 0x73135c: StoreField: r1->field_7 = r0
    //     0x73135c: stur            w0, [x1, #7]
    // 0x731360: r0 = _getCurrentMicros()
    //     0x731360: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x731364: r1 = LoadInt32Instr(r0)
    //     0x731364: sbfx            x1, x0, #1, #0x1f
    //     0x731368: tbz             w0, #0, #0x731370
    //     0x73136c: ldur            x1, [x0, #7]
    // 0x731370: ldur            x0, [fp, #-0x68]
    // 0x731374: StoreField: r0->field_b = r1
    //     0x731374: stur            x1, [x0, #0xb]
    // 0x731378: mov             x2, x0
    // 0x73137c: b               #0x731384
    // 0x731380: mov             x2, x0
    // 0x731384: ldur            x1, [fp, #-8]
    // 0x731388: r0 = _formatDate()
    //     0x731388: bl              #0x731fec  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_formatDate
    // 0x73138c: ldur            x1, [fp, #-0x70]
    // 0x731390: ArrayStore: r1[2] = r0  ; List_4
    //     0x731390: add             x25, x1, #0x17
    //     0x731394: str             w0, [x25]
    //     0x731398: tbz             w0, #0, #0x7313b4
    //     0x73139c: ldurb           w16, [x1, #-1]
    //     0x7313a0: ldurb           w17, [x0, #-1]
    //     0x7313a4: and             x16, x17, x16, lsr #2
    //     0x7313a8: tst             x16, HEAP, lsr #32
    //     0x7313ac: b.eq            #0x7313b4
    //     0x7313b0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7313b4: ldur            x16, [fp, #-0x70]
    // 0x7313b8: str             x16, [SP]
    // 0x7313bc: r0 = _interpolate()
    //     0x7313bc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7313c0: b               #0x7313c8
    // 0x7313c4: ldur            x0, [fp, #-0x18]
    // 0x7313c8: ldur            x1, [fp, #-0x60]
    // 0x7313cc: stur            x0, [fp, #-0x68]
    // 0x7313d0: r0 = InfoCard()
    //     0x7313d0: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x7313d4: mov             x2, x0
    // 0x7313d8: r0 = Instance_IconData
    //     0x7313d8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12788] Obj!IconData@a09dc1
    //     0x7313dc: ldr             x0, [x0, #0x788]
    // 0x7313e0: stur            x2, [fp, #-0x70]
    // 0x7313e4: StoreField: r2->field_b = r0
    //     0x7313e4: stur            w0, [x2, #0xb]
    // 0x7313e8: r1 = "Mekke Seferi"
    //     0x7313e8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15a28] "Mekke Seferi"
    //     0x7313ec: ldr             x1, [x1, #0xa28]
    // 0x7313f0: StoreField: r2->field_f = r1
    //     0x7313f0: stur            w1, [x2, #0xf]
    // 0x7313f4: ldur            x1, [fp, #-0x68]
    // 0x7313f8: StoreField: r2->field_13 = r1
    //     0x7313f8: stur            w1, [x2, #0x13]
    // 0x7313fc: r3 = Instance_Color
    //     0x7313fc: add             x3, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x731400: ldr             x3, [x3, #0xb78]
    // 0x731404: ArrayStore: r2[0] = r3  ; List_4
    //     0x731404: stur            w3, [x2, #0x17]
    // 0x731408: ldur            x4, [fp, #-0x60]
    // 0x73140c: LoadField: r1 = r4->field_b
    //     0x73140c: ldur            w1, [x4, #0xb]
    // 0x731410: LoadField: r5 = r4->field_f
    //     0x731410: ldur            w5, [x4, #0xf]
    // 0x731414: DecompressPointer r5
    //     0x731414: add             x5, x5, HEAP, lsl #32
    // 0x731418: LoadField: r6 = r5->field_b
    //     0x731418: ldur            w6, [x5, #0xb]
    // 0x73141c: r5 = LoadInt32Instr(r1)
    //     0x73141c: sbfx            x5, x1, #1, #0x1f
    // 0x731420: stur            x5, [fp, #-0x80]
    // 0x731424: r1 = LoadInt32Instr(r6)
    //     0x731424: sbfx            x1, x6, #1, #0x1f
    // 0x731428: cmp             x5, x1
    // 0x73142c: b.ne            #0x731438
    // 0x731430: mov             x1, x4
    // 0x731434: r0 = _growToNextCapacity()
    //     0x731434: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731438: ldur            x2, [fp, #-0x60]
    // 0x73143c: ldur            x3, [fp, #-0x80]
    // 0x731440: add             x4, x3, #1
    // 0x731444: lsl             x0, x4, #1
    // 0x731448: StoreField: r2->field_b = r0
    //     0x731448: stur            w0, [x2, #0xb]
    // 0x73144c: LoadField: r5 = r2->field_f
    //     0x73144c: ldur            w5, [x2, #0xf]
    // 0x731450: DecompressPointer r5
    //     0x731450: add             x5, x5, HEAP, lsl #32
    // 0x731454: mov             x1, x5
    // 0x731458: ldur            x0, [fp, #-0x70]
    // 0x73145c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x73145c: add             x25, x1, x3, lsl #2
    //     0x731460: add             x25, x25, #0xf
    //     0x731464: str             w0, [x25]
    //     0x731468: tbz             w0, #0, #0x731484
    //     0x73146c: ldurb           w16, [x1, #-1]
    //     0x731470: ldurb           w17, [x0, #-1]
    //     0x731474: and             x16, x17, x16, lsr #2
    //     0x731478: tst             x16, HEAP, lsr #32
    //     0x73147c: b.eq            #0x731484
    //     0x731480: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731484: mov             x1, x5
    // 0x731488: mov             x3, x4
    // 0x73148c: b               #0x73149c
    // 0x731490: mov             x2, x3
    // 0x731494: mov             x1, x0
    // 0x731498: r3 = 2
    //     0x731498: mov             x3, #2
    // 0x73149c: ldur            x0, [fp, #-0x18]
    // 0x7314a0: stur            x3, [fp, #-0x80]
    // 0x7314a4: cmp             w0, NULL
    // 0x7314a8: b.eq            #0x73150c
    // 0x7314ac: LoadField: r0 = r1->field_b
    //     0x7314ac: ldur            w0, [x1, #0xb]
    // 0x7314b0: r1 = LoadInt32Instr(r0)
    //     0x7314b0: sbfx            x1, x0, #1, #0x1f
    // 0x7314b4: cmp             x3, x1
    // 0x7314b8: b.ne            #0x7314c4
    // 0x7314bc: mov             x1, x2
    // 0x7314c0: r0 = _growToNextCapacity()
    //     0x7314c0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7314c4: ldur            x3, [fp, #-0x60]
    // 0x7314c8: ldur            x2, [fp, #-0x80]
    // 0x7314cc: add             x4, x2, #1
    // 0x7314d0: lsl             x0, x4, #1
    // 0x7314d4: StoreField: r3->field_b = r0
    //     0x7314d4: stur            w0, [x3, #0xb]
    // 0x7314d8: mov             x0, x4
    // 0x7314dc: mov             x1, x2
    // 0x7314e0: cmp             x1, x0
    // 0x7314e4: b.hs            #0x731fc8
    // 0x7314e8: LoadField: r0 = r3->field_f
    //     0x7314e8: ldur            w0, [x3, #0xf]
    // 0x7314ec: DecompressPointer r0
    //     0x7314ec: add             x0, x0, HEAP, lsl #32
    // 0x7314f0: add             x1, x0, x2, lsl #2
    // 0x7314f4: r16 = Instance_SizedBox
    //     0x7314f4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7314f8: ldr             x16, [x16, #0x220]
    // 0x7314fc: StoreField: r1->field_f = r16
    //     0x7314fc: stur            w16, [x1, #0xf]
    // 0x731500: mov             x2, x0
    // 0x731504: mov             x1, x4
    // 0x731508: b               #0x731524
    // 0x73150c: mov             x16, x3
    // 0x731510: mov             x3, x2
    // 0x731514: mov             x2, x16
    // 0x731518: mov             x16, x2
    // 0x73151c: mov             x2, x1
    // 0x731520: mov             x1, x16
    // 0x731524: ldur            x0, [fp, #-0x48]
    // 0x731528: LoadField: r4 = r0->field_1f
    //     0x731528: ldur            w4, [x0, #0x1f]
    // 0x73152c: DecompressPointer r4
    //     0x73152c: add             x4, x4, HEAP, lsl #32
    // 0x731530: stur            x4, [fp, #-0x18]
    // 0x731534: cmp             w4, NULL
    // 0x731538: b.eq            #0x731700
    // 0x73153c: r0 = LoadStaticField(0xff0)
    //     0x73153c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x731540: ldr             x0, [x0, #0x1fe0]
    // 0x731544: cmp             w0, NULL
    // 0x731548: b.eq            #0x731634
    // 0x73154c: LoadField: r2 = r0->field_13
    //     0x73154c: ldur            w2, [x0, #0x13]
    // 0x731550: DecompressPointer r2
    //     0x731550: add             x2, x2, HEAP, lsl #32
    // 0x731554: cmp             w2, NULL
    // 0x731558: b.eq            #0x731634
    // 0x73155c: ldur            x1, [fp, #-8]
    // 0x731560: r0 = _formatDate()
    //     0x731560: bl              #0x731fec  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_formatDate
    // 0x731564: r1 = Null
    //     0x731564: mov             x1, NULL
    // 0x731568: r2 = 6
    //     0x731568: mov             x2, #6
    // 0x73156c: stur            x0, [fp, #-0x48]
    // 0x731570: r0 = AllocateArray()
    //     0x731570: bl              #0x9280a0  ; AllocateArrayStub
    // 0x731574: mov             x1, x0
    // 0x731578: ldur            x0, [fp, #-0x48]
    // 0x73157c: stur            x1, [fp, #-0x58]
    // 0x731580: StoreField: r1->field_f = r0
    //     0x731580: stur            w0, [x1, #0xf]
    // 0x731584: r16 = " - "
    //     0x731584: add             x16, PP, #0x13, lsl #12  ; [pp+0x139e8] " - "
    //     0x731588: ldr             x16, [x16, #0x9e8]
    // 0x73158c: StoreField: r1->field_13 = r16
    //     0x73158c: stur            w16, [x1, #0x13]
    // 0x731590: r0 = LoadStaticField(0xff0)
    //     0x731590: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x731594: ldr             x0, [x0, #0x1fe0]
    // 0x731598: cmp             w0, NULL
    // 0x73159c: b.ne            #0x7315a8
    // 0x7315a0: r0 = Null
    //     0x7315a0: mov             x0, NULL
    // 0x7315a4: b               #0x7315b4
    // 0x7315a8: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x7315a8: ldur            w2, [x0, #0x17]
    // 0x7315ac: DecompressPointer r2
    //     0x7315ac: add             x2, x2, HEAP, lsl #32
    // 0x7315b0: mov             x0, x2
    // 0x7315b4: cmp             w0, NULL
    // 0x7315b8: b.ne            #0x7315f0
    // 0x7315bc: r0 = DateTime()
    //     0x7315bc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7315c0: mov             x1, x0
    // 0x7315c4: r0 = false
    //     0x7315c4: add             x0, NULL, #0x30  ; false
    // 0x7315c8: stur            x1, [fp, #-0x48]
    // 0x7315cc: StoreField: r1->field_7 = r0
    //     0x7315cc: stur            w0, [x1, #7]
    // 0x7315d0: r0 = _getCurrentMicros()
    //     0x7315d0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7315d4: r1 = LoadInt32Instr(r0)
    //     0x7315d4: sbfx            x1, x0, #1, #0x1f
    //     0x7315d8: tbz             w0, #0, #0x7315e0
    //     0x7315dc: ldur            x1, [x0, #7]
    // 0x7315e0: ldur            x0, [fp, #-0x48]
    // 0x7315e4: StoreField: r0->field_b = r1
    //     0x7315e4: stur            x1, [x0, #0xb]
    // 0x7315e8: mov             x2, x0
    // 0x7315ec: b               #0x7315f4
    // 0x7315f0: mov             x2, x0
    // 0x7315f4: ldur            x1, [fp, #-8]
    // 0x7315f8: r0 = _formatDate()
    //     0x7315f8: bl              #0x731fec  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_formatDate
    // 0x7315fc: ldur            x1, [fp, #-0x58]
    // 0x731600: ArrayStore: r1[2] = r0  ; List_4
    //     0x731600: add             x25, x1, #0x17
    //     0x731604: str             w0, [x25]
    //     0x731608: tbz             w0, #0, #0x731624
    //     0x73160c: ldurb           w16, [x1, #-1]
    //     0x731610: ldurb           w17, [x0, #-1]
    //     0x731614: and             x16, x17, x16, lsr #2
    //     0x731618: tst             x16, HEAP, lsr #32
    //     0x73161c: b.eq            #0x731624
    //     0x731620: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731624: ldur            x16, [fp, #-0x58]
    // 0x731628: str             x16, [SP]
    // 0x73162c: r0 = _interpolate()
    //     0x73162c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x731630: b               #0x731638
    // 0x731634: ldur            x0, [fp, #-0x18]
    // 0x731638: ldur            x1, [fp, #-0x60]
    // 0x73163c: stur            x0, [fp, #-0x48]
    // 0x731640: r0 = InfoCard()
    //     0x731640: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x731644: mov             x2, x0
    // 0x731648: r0 = Instance_IconData
    //     0x731648: add             x0, PP, #0x12, lsl #12  ; [pp+0x12788] Obj!IconData@a09dc1
    //     0x73164c: ldr             x0, [x0, #0x788]
    // 0x731650: stur            x2, [fp, #-0x58]
    // 0x731654: StoreField: r2->field_b = r0
    //     0x731654: stur            w0, [x2, #0xb]
    // 0x731658: r0 = "Medine Seferi"
    //     0x731658: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a30] "Medine Seferi"
    //     0x73165c: ldr             x0, [x0, #0xa30]
    // 0x731660: StoreField: r2->field_f = r0
    //     0x731660: stur            w0, [x2, #0xf]
    // 0x731664: ldur            x0, [fp, #-0x48]
    // 0x731668: StoreField: r2->field_13 = r0
    //     0x731668: stur            w0, [x2, #0x13]
    // 0x73166c: r0 = Instance_Color
    //     0x73166c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x731670: ldr             x0, [x0, #0xb78]
    // 0x731674: ArrayStore: r2[0] = r0  ; List_4
    //     0x731674: stur            w0, [x2, #0x17]
    // 0x731678: ldur            x3, [fp, #-0x60]
    // 0x73167c: LoadField: r1 = r3->field_b
    //     0x73167c: ldur            w1, [x3, #0xb]
    // 0x731680: LoadField: r4 = r3->field_f
    //     0x731680: ldur            w4, [x3, #0xf]
    // 0x731684: DecompressPointer r4
    //     0x731684: add             x4, x4, HEAP, lsl #32
    // 0x731688: LoadField: r5 = r4->field_b
    //     0x731688: ldur            w5, [x4, #0xb]
    // 0x73168c: r4 = LoadInt32Instr(r1)
    //     0x73168c: sbfx            x4, x1, #1, #0x1f
    // 0x731690: stur            x4, [fp, #-0x80]
    // 0x731694: r1 = LoadInt32Instr(r5)
    //     0x731694: sbfx            x1, x5, #1, #0x1f
    // 0x731698: cmp             x4, x1
    // 0x73169c: b.ne            #0x7316a8
    // 0x7316a0: mov             x1, x3
    // 0x7316a4: r0 = _growToNextCapacity()
    //     0x7316a4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7316a8: ldur            x3, [fp, #-0x60]
    // 0x7316ac: ldur            x2, [fp, #-0x80]
    // 0x7316b0: add             x4, x2, #1
    // 0x7316b4: lsl             x0, x4, #1
    // 0x7316b8: StoreField: r3->field_b = r0
    //     0x7316b8: stur            w0, [x3, #0xb]
    // 0x7316bc: LoadField: r5 = r3->field_f
    //     0x7316bc: ldur            w5, [x3, #0xf]
    // 0x7316c0: DecompressPointer r5
    //     0x7316c0: add             x5, x5, HEAP, lsl #32
    // 0x7316c4: mov             x1, x5
    // 0x7316c8: ldur            x0, [fp, #-0x58]
    // 0x7316cc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x7316cc: add             x25, x1, x2, lsl #2
    //     0x7316d0: add             x25, x25, #0xf
    //     0x7316d4: str             w0, [x25]
    //     0x7316d8: tbz             w0, #0, #0x7316f4
    //     0x7316dc: ldurb           w16, [x1, #-1]
    //     0x7316e0: ldurb           w17, [x0, #-1]
    //     0x7316e4: and             x16, x17, x16, lsr #2
    //     0x7316e8: tst             x16, HEAP, lsr #32
    //     0x7316ec: b.eq            #0x7316f4
    //     0x7316f0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7316f4: mov             x1, x5
    // 0x7316f8: mov             x2, x4
    // 0x7316fc: b               #0x73170c
    // 0x731700: mov             x16, x1
    // 0x731704: mov             x1, x2
    // 0x731708: mov             x2, x16
    // 0x73170c: ldur            x0, [fp, #-0x18]
    // 0x731710: stur            x2, [fp, #-0x80]
    // 0x731714: cmp             w0, NULL
    // 0x731718: b.eq            #0x731770
    // 0x73171c: LoadField: r0 = r1->field_b
    //     0x73171c: ldur            w0, [x1, #0xb]
    // 0x731720: r1 = LoadInt32Instr(r0)
    //     0x731720: sbfx            x1, x0, #1, #0x1f
    // 0x731724: cmp             x2, x1
    // 0x731728: b.ne            #0x731734
    // 0x73172c: mov             x1, x3
    // 0x731730: r0 = _growToNextCapacity()
    //     0x731730: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731734: ldur            x2, [fp, #-0x60]
    // 0x731738: ldur            x3, [fp, #-0x80]
    // 0x73173c: add             x0, x3, #1
    // 0x731740: lsl             x1, x0, #1
    // 0x731744: StoreField: r2->field_b = r1
    //     0x731744: stur            w1, [x2, #0xb]
    // 0x731748: mov             x1, x3
    // 0x73174c: cmp             x1, x0
    // 0x731750: b.hs            #0x731fcc
    // 0x731754: LoadField: r0 = r2->field_f
    //     0x731754: ldur            w0, [x2, #0xf]
    // 0x731758: DecompressPointer r0
    //     0x731758: add             x0, x0, HEAP, lsl #32
    // 0x73175c: add             x1, x0, x3, lsl #2
    // 0x731760: r16 = Instance_SizedBox
    //     0x731760: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x731764: ldr             x16, [x16, #0x220]
    // 0x731768: StoreField: r1->field_f = r16
    //     0x731768: stur            w16, [x1, #0xf]
    // 0x73176c: b               #0x731774
    // 0x731770: mov             x2, x3
    // 0x731774: ldur            x0, [fp, #-0x40]
    // 0x731778: ldur            x1, [fp, #-0x38]
    // 0x73177c: ldur            x3, [fp, #-0x30]
    // 0x731780: ldur            x4, [fp, #-0x28]
    // 0x731784: r0 = Column()
    //     0x731784: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x731788: mov             x3, x0
    // 0x73178c: r0 = Instance_Axis
    //     0x73178c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x731790: stur            x3, [fp, #-0x18]
    // 0x731794: StoreField: r3->field_f = r0
    //     0x731794: stur            w0, [x3, #0xf]
    // 0x731798: r4 = Instance_MainAxisAlignment
    //     0x731798: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x73179c: ldr             x4, [x4, #0x230]
    // 0x7317a0: StoreField: r3->field_13 = r4
    //     0x7317a0: stur            w4, [x3, #0x13]
    // 0x7317a4: r5 = Instance_MainAxisSize
    //     0x7317a4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7317a8: ldr             x5, [x5, #0x330]
    // 0x7317ac: ArrayStore: r3[0] = r5  ; List_4
    //     0x7317ac: stur            w5, [x3, #0x17]
    // 0x7317b0: r6 = Instance_CrossAxisAlignment
    //     0x7317b0: add             x6, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7317b4: ldr             x6, [x6, #0x238]
    // 0x7317b8: StoreField: r3->field_1b = r6
    //     0x7317b8: stur            w6, [x3, #0x1b]
    // 0x7317bc: r7 = Instance_VerticalDirection
    //     0x7317bc: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7317c0: ldr             x7, [x7, #0x340]
    // 0x7317c4: StoreField: r3->field_23 = r7
    //     0x7317c4: stur            w7, [x3, #0x23]
    // 0x7317c8: r8 = Instance_Clip
    //     0x7317c8: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7317cc: ldr             x8, [x8, #0x348]
    // 0x7317d0: StoreField: r3->field_2b = r8
    //     0x7317d0: stur            w8, [x3, #0x2b]
    // 0x7317d4: StoreField: r3->field_2f = rZR
    //     0x7317d4: stur            xzr, [x3, #0x2f]
    // 0x7317d8: ldur            x1, [fp, #-0x60]
    // 0x7317dc: StoreField: r3->field_b = r1
    //     0x7317dc: stur            w1, [x3, #0xb]
    // 0x7317e0: r1 = Null
    //     0x7317e0: mov             x1, NULL
    // 0x7317e4: r2 = 8
    //     0x7317e4: mov             x2, #8
    // 0x7317e8: r0 = AllocateArray()
    //     0x7317e8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7317ec: r16 = "Mekke: "
    //     0x7317ec: add             x16, PP, #0x15, lsl #12  ; [pp+0x15a38] "Mekke: "
    //     0x7317f0: ldr             x16, [x16, #0xa38]
    // 0x7317f4: StoreField: r0->field_f = r16
    //     0x7317f4: stur            w16, [x0, #0xf]
    // 0x7317f8: ldur            x1, [fp, #-0x40]
    // 0x7317fc: StoreField: r0->field_13 = r1
    //     0x7317fc: stur            w1, [x0, #0x13]
    // 0x731800: r16 = "\nMedine: "
    //     0x731800: add             x16, PP, #0x15, lsl #12  ; [pp+0x15a40] "\nMedine: "
    //     0x731804: ldr             x16, [x16, #0xa40]
    // 0x731808: ArrayStore: r0[0] = r16  ; List_4
    //     0x731808: stur            w16, [x0, #0x17]
    // 0x73180c: ldur            x1, [fp, #-0x38]
    // 0x731810: StoreField: r0->field_1b = r1
    //     0x731810: stur            w1, [x0, #0x1b]
    // 0x731814: str             x0, [SP]
    // 0x731818: r0 = _interpolate()
    //     0x731818: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x73181c: stur            x0, [fp, #-0x38]
    // 0x731820: r0 = InfoCard()
    //     0x731820: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x731824: mov             x3, x0
    // 0x731828: r0 = Instance_IconData
    //     0x731828: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a48] Obj!IconData@a0a561
    //     0x73182c: ldr             x0, [x0, #0xa48]
    // 0x731830: stur            x3, [fp, #-0x40]
    // 0x731834: StoreField: r3->field_b = r0
    //     0x731834: stur            w0, [x3, #0xb]
    // 0x731838: r0 = "Otel Bilgileri"
    //     0x731838: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a50] "Otel Bilgileri"
    //     0x73183c: ldr             x0, [x0, #0xa50]
    // 0x731840: StoreField: r3->field_f = r0
    //     0x731840: stur            w0, [x3, #0xf]
    // 0x731844: ldur            x0, [fp, #-0x38]
    // 0x731848: StoreField: r3->field_13 = r0
    //     0x731848: stur            w0, [x3, #0x13]
    // 0x73184c: r0 = Instance_Color
    //     0x73184c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x731850: ldr             x0, [x0, #0xb78]
    // 0x731854: ArrayStore: r3[0] = r0  ; List_4
    //     0x731854: stur            w0, [x3, #0x17]
    // 0x731858: r1 = Null
    //     0x731858: mov             x1, NULL
    // 0x73185c: r2 = 8
    //     0x73185c: mov             x2, #8
    // 0x731860: r0 = AllocateArray()
    //     0x731860: bl              #0x9280a0  ; AllocateArrayStub
    // 0x731864: r16 = "Mekke: "
    //     0x731864: add             x16, PP, #0x15, lsl #12  ; [pp+0x15a38] "Mekke: "
    //     0x731868: ldr             x16, [x16, #0xa38]
    // 0x73186c: StoreField: r0->field_f = r16
    //     0x73186c: stur            w16, [x0, #0xf]
    // 0x731870: ldur            x1, [fp, #-0x30]
    // 0x731874: StoreField: r0->field_13 = r1
    //     0x731874: stur            w1, [x0, #0x13]
    // 0x731878: r16 = "\nMedine: "
    //     0x731878: add             x16, PP, #0x15, lsl #12  ; [pp+0x15a40] "\nMedine: "
    //     0x73187c: ldr             x16, [x16, #0xa40]
    // 0x731880: ArrayStore: r0[0] = r16  ; List_4
    //     0x731880: stur            w16, [x0, #0x17]
    // 0x731884: ldur            x1, [fp, #-0x28]
    // 0x731888: StoreField: r0->field_1b = r1
    //     0x731888: stur            w1, [x0, #0x1b]
    // 0x73188c: str             x0, [SP]
    // 0x731890: r0 = _interpolate()
    //     0x731890: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x731894: stur            x0, [fp, #-0x28]
    // 0x731898: r0 = InfoCard()
    //     0x731898: bl              #0x732218  ; AllocateInfoCardStub -> InfoCard (size=0x1c)
    // 0x73189c: mov             x3, x0
    // 0x7318a0: r0 = Instance_IconData
    //     0x7318a0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a58] Obj!IconData@a0a541
    //     0x7318a4: ldr             x0, [x0, #0xa58]
    // 0x7318a8: stur            x3, [fp, #-0x30]
    // 0x7318ac: StoreField: r3->field_b = r0
    //     0x7318ac: stur            w0, [x3, #0xb]
    // 0x7318b0: r0 = "Oda Bilgileri"
    //     0x7318b0: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a60] "Oda Bilgileri"
    //     0x7318b4: ldr             x0, [x0, #0xa60]
    // 0x7318b8: StoreField: r3->field_f = r0
    //     0x7318b8: stur            w0, [x3, #0xf]
    // 0x7318bc: ldur            x0, [fp, #-0x28]
    // 0x7318c0: StoreField: r3->field_13 = r0
    //     0x7318c0: stur            w0, [x3, #0x13]
    // 0x7318c4: r0 = Instance_Color
    //     0x7318c4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7318c8: ldr             x0, [x0, #0xb78]
    // 0x7318cc: ArrayStore: r3[0] = r0  ; List_4
    //     0x7318cc: stur            w0, [x3, #0x17]
    // 0x7318d0: r1 = Null
    //     0x7318d0: mov             x1, NULL
    // 0x7318d4: r2 = 6
    //     0x7318d4: mov             x2, #6
    // 0x7318d8: r0 = AllocateArray()
    //     0x7318d8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7318dc: mov             x2, x0
    // 0x7318e0: ldur            x0, [fp, #-0x40]
    // 0x7318e4: stur            x2, [fp, #-0x28]
    // 0x7318e8: StoreField: r2->field_f = r0
    //     0x7318e8: stur            w0, [x2, #0xf]
    // 0x7318ec: r16 = Instance_SizedBox
    //     0x7318ec: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7318f0: ldr             x16, [x16, #0x220]
    // 0x7318f4: StoreField: r2->field_13 = r16
    //     0x7318f4: stur            w16, [x2, #0x13]
    // 0x7318f8: ldur            x0, [fp, #-0x30]
    // 0x7318fc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7318fc: stur            w0, [x2, #0x17]
    // 0x731900: r1 = <Widget>
    //     0x731900: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x731904: r0 = AllocateGrowableArray()
    //     0x731904: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x731908: mov             x1, x0
    // 0x73190c: ldur            x0, [fp, #-0x28]
    // 0x731910: stur            x1, [fp, #-0x30]
    // 0x731914: StoreField: r1->field_f = r0
    //     0x731914: stur            w0, [x1, #0xf]
    // 0x731918: r2 = 6
    //     0x731918: mov             x2, #6
    // 0x73191c: StoreField: r1->field_b = r2
    //     0x73191c: stur            w2, [x1, #0xb]
    // 0x731920: r0 = Column()
    //     0x731920: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x731924: mov             x3, x0
    // 0x731928: r0 = Instance_Axis
    //     0x731928: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x73192c: stur            x3, [fp, #-0x28]
    // 0x731930: StoreField: r3->field_f = r0
    //     0x731930: stur            w0, [x3, #0xf]
    // 0x731934: r4 = Instance_MainAxisAlignment
    //     0x731934: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x731938: ldr             x4, [x4, #0x230]
    // 0x73193c: StoreField: r3->field_13 = r4
    //     0x73193c: stur            w4, [x3, #0x13]
    // 0x731940: r5 = Instance_MainAxisSize
    //     0x731940: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x731944: ldr             x5, [x5, #0x330]
    // 0x731948: ArrayStore: r3[0] = r5  ; List_4
    //     0x731948: stur            w5, [x3, #0x17]
    // 0x73194c: r1 = Instance_CrossAxisAlignment
    //     0x73194c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x731950: ldr             x1, [x1, #0x338]
    // 0x731954: StoreField: r3->field_1b = r1
    //     0x731954: stur            w1, [x3, #0x1b]
    // 0x731958: r6 = Instance_VerticalDirection
    //     0x731958: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x73195c: ldr             x6, [x6, #0x340]
    // 0x731960: StoreField: r3->field_23 = r6
    //     0x731960: stur            w6, [x3, #0x23]
    // 0x731964: r7 = Instance_Clip
    //     0x731964: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x731968: ldr             x7, [x7, #0x348]
    // 0x73196c: StoreField: r3->field_2b = r7
    //     0x73196c: stur            w7, [x3, #0x2b]
    // 0x731970: StoreField: r3->field_2f = rZR
    //     0x731970: stur            xzr, [x3, #0x2f]
    // 0x731974: ldur            x1, [fp, #-0x30]
    // 0x731978: StoreField: r3->field_b = r1
    //     0x731978: stur            w1, [x3, #0xb]
    // 0x73197c: r1 = Null
    //     0x73197c: mov             x1, NULL
    // 0x731980: r2 = 6
    //     0x731980: mov             x2, #6
    // 0x731984: r0 = AllocateArray()
    //     0x731984: bl              #0x9280a0  ; AllocateArrayStub
    // 0x731988: mov             x2, x0
    // 0x73198c: ldur            x0, [fp, #-0x18]
    // 0x731990: stur            x2, [fp, #-0x30]
    // 0x731994: StoreField: r2->field_f = r0
    //     0x731994: stur            w0, [x2, #0xf]
    // 0x731998: ldur            x0, [fp, #-0x28]
    // 0x73199c: StoreField: r2->field_13 = r0
    //     0x73199c: stur            w0, [x2, #0x13]
    // 0x7319a0: r16 = Instance_SizedBox
    //     0x7319a0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x7319a4: ldr             x16, [x16, #0x248]
    // 0x7319a8: ArrayStore: r2[0] = r16  ; List_4
    //     0x7319a8: stur            w16, [x2, #0x17]
    // 0x7319ac: r1 = <Widget>
    //     0x7319ac: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7319b0: r0 = AllocateGrowableArray()
    //     0x7319b0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7319b4: mov             x1, x0
    // 0x7319b8: ldur            x0, [fp, #-0x30]
    // 0x7319bc: StoreField: r1->field_f = r0
    //     0x7319bc: stur            w0, [x1, #0xf]
    // 0x7319c0: r0 = 6
    //     0x7319c0: mov             x0, #6
    // 0x7319c4: StoreField: r1->field_b = r0
    //     0x7319c4: stur            w0, [x1, #0xb]
    // 0x7319c8: mov             x2, x1
    // 0x7319cc: ldur            x1, [fp, #-0x50]
    // 0x7319d0: r0 = addAll()
    //     0x7319d0: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7319d4: ldur            x2, [fp, #-8]
    // 0x7319d8: LoadField: r0 = r2->field_2f
    //     0x7319d8: ldur            w0, [x2, #0x2f]
    // 0x7319dc: DecompressPointer r0
    //     0x7319dc: add             x0, x0, HEAP, lsl #32
    // 0x7319e0: tbz             w0, #4, #0x731d18
    // 0x7319e4: r0 = TextStyle()
    //     0x7319e4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7319e8: mov             x1, x0
    // 0x7319ec: r0 = true
    //     0x7319ec: add             x0, NULL, #0x20  ; true
    // 0x7319f0: stur            x1, [fp, #-0x18]
    // 0x7319f4: StoreField: r1->field_7 = r0
    //     0x7319f4: stur            w0, [x1, #7]
    // 0x7319f8: r2 = Instance_Color
    //     0x7319f8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7319fc: ldr             x2, [x2, #0xb88]
    // 0x731a00: StoreField: r1->field_b = r2
    //     0x731a00: stur            w2, [x1, #0xb]
    // 0x731a04: r2 = 16.000000
    //     0x731a04: add             x2, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x731a08: ldr             x2, [x2, #0x358]
    // 0x731a0c: StoreField: r1->field_1f = r2
    //     0x731a0c: stur            w2, [x1, #0x1f]
    // 0x731a10: r2 = Instance_FontWeight
    //     0x731a10: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x731a14: ldr             x2, [x2, #0x1d0]
    // 0x731a18: StoreField: r1->field_23 = r2
    //     0x731a18: stur            w2, [x1, #0x23]
    // 0x731a1c: r2 = 0.500000
    //     0x731a1c: ldr             x2, [PP, #0x4af8]  ; [pp+0x4af8] 0.5
    // 0x731a20: StoreField: r1->field_2b = r2
    //     0x731a20: stur            w2, [x1, #0x2b]
    // 0x731a24: r0 = Text()
    //     0x731a24: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x731a28: mov             x3, x0
    // 0x731a2c: r0 = "Konum Takibi"
    //     0x731a2c: add             x0, PP, #0x15, lsl #12  ; [pp+0x15a68] "Konum Takibi"
    //     0x731a30: ldr             x0, [x0, #0xa68]
    // 0x731a34: stur            x3, [fp, #-0x28]
    // 0x731a38: StoreField: r3->field_b = r0
    //     0x731a38: stur            w0, [x3, #0xb]
    // 0x731a3c: ldur            x0, [fp, #-0x18]
    // 0x731a40: StoreField: r3->field_13 = r0
    //     0x731a40: stur            w0, [x3, #0x13]
    // 0x731a44: r1 = Null
    //     0x731a44: mov             x1, NULL
    // 0x731a48: r2 = 4
    //     0x731a48: mov             x2, #4
    // 0x731a4c: r0 = AllocateArray()
    //     0x731a4c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x731a50: mov             x2, x0
    // 0x731a54: ldur            x0, [fp, #-0x28]
    // 0x731a58: stur            x2, [fp, #-0x18]
    // 0x731a5c: StoreField: r2->field_f = r0
    //     0x731a5c: stur            w0, [x2, #0xf]
    // 0x731a60: r16 = Instance_SizedBox
    //     0x731a60: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x731a64: ldr             x16, [x16, #0x220]
    // 0x731a68: StoreField: r2->field_13 = r16
    //     0x731a68: stur            w16, [x2, #0x13]
    // 0x731a6c: r1 = <Widget>
    //     0x731a6c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x731a70: r0 = AllocateGrowableArray()
    //     0x731a70: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x731a74: mov             x3, x0
    // 0x731a78: ldur            x0, [fp, #-0x18]
    // 0x731a7c: stur            x3, [fp, #-0x28]
    // 0x731a80: StoreField: r3->field_f = r0
    //     0x731a80: stur            w0, [x3, #0xf]
    // 0x731a84: r0 = 4
    //     0x731a84: mov             x0, #4
    // 0x731a88: StoreField: r3->field_b = r0
    //     0x731a88: stur            w0, [x3, #0xb]
    // 0x731a8c: ldur            x0, [fp, #-8]
    // 0x731a90: LoadField: r1 = r0->field_2b
    //     0x731a90: ldur            w1, [x0, #0x2b]
    // 0x731a94: DecompressPointer r1
    //     0x731a94: add             x1, x1, HEAP, lsl #32
    // 0x731a98: tbnz            w1, #4, #0x731b58
    // 0x731a9c: LoadField: r2 = r0->field_27
    //     0x731a9c: ldur            w2, [x0, #0x27]
    // 0x731aa0: DecompressPointer r2
    //     0x731aa0: add             x2, x2, HEAP, lsl #32
    // 0x731aa4: tbnz            w2, #4, #0x731b58
    // 0x731aa8: mov             x2, x0
    // 0x731aac: r1 = Function '_stopLocationTracking@936387819':.
    //     0x731aac: add             x1, PP, #0x15, lsl #12  ; [pp+0x15a70] AnonymousClosure: (0x67ef08), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_stopLocationTracking (0x67ee48)
    //     0x731ab0: ldr             x1, [x1, #0xa70]
    // 0x731ab4: r0 = AllocateClosure()
    //     0x731ab4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x731ab8: mov             x2, x0
    // 0x731abc: r1 = Null
    //     0x731abc: mov             x1, NULL
    // 0x731ac0: r0 = LocationButton.stop()
    //     0x731ac0: bl              #0x6e7e78  ; [package:umrem_demo/features/home/widgets/location_button.dart] LocationButton::LocationButton.stop
    // 0x731ac4: mov             x2, x0
    // 0x731ac8: ldur            x0, [fp, #-0x28]
    // 0x731acc: stur            x2, [fp, #-0x18]
    // 0x731ad0: LoadField: r1 = r0->field_b
    //     0x731ad0: ldur            w1, [x0, #0xb]
    // 0x731ad4: LoadField: r3 = r0->field_f
    //     0x731ad4: ldur            w3, [x0, #0xf]
    // 0x731ad8: DecompressPointer r3
    //     0x731ad8: add             x3, x3, HEAP, lsl #32
    // 0x731adc: LoadField: r4 = r3->field_b
    //     0x731adc: ldur            w4, [x3, #0xb]
    // 0x731ae0: r3 = LoadInt32Instr(r1)
    //     0x731ae0: sbfx            x3, x1, #1, #0x1f
    // 0x731ae4: stur            x3, [fp, #-0x80]
    // 0x731ae8: r1 = LoadInt32Instr(r4)
    //     0x731ae8: sbfx            x1, x4, #1, #0x1f
    // 0x731aec: cmp             x3, x1
    // 0x731af0: b.ne            #0x731afc
    // 0x731af4: mov             x1, x0
    // 0x731af8: r0 = _growToNextCapacity()
    //     0x731af8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731afc: ldur            x3, [fp, #-0x28]
    // 0x731b00: ldur            x2, [fp, #-0x80]
    // 0x731b04: add             x4, x2, #1
    // 0x731b08: lsl             x0, x4, #1
    // 0x731b0c: StoreField: r3->field_b = r0
    //     0x731b0c: stur            w0, [x3, #0xb]
    // 0x731b10: LoadField: r5 = r3->field_f
    //     0x731b10: ldur            w5, [x3, #0xf]
    // 0x731b14: DecompressPointer r5
    //     0x731b14: add             x5, x5, HEAP, lsl #32
    // 0x731b18: mov             x1, x5
    // 0x731b1c: ldur            x0, [fp, #-0x18]
    // 0x731b20: ArrayStore: r1[r2] = r0  ; List_4
    //     0x731b20: add             x25, x1, x2, lsl #2
    //     0x731b24: add             x25, x25, #0xf
    //     0x731b28: str             w0, [x25]
    //     0x731b2c: tbz             w0, #0, #0x731b48
    //     0x731b30: ldurb           w16, [x1, #-1]
    //     0x731b34: ldurb           w17, [x0, #-1]
    //     0x731b38: and             x16, x17, x16, lsr #2
    //     0x731b3c: tst             x16, HEAP, lsr #32
    //     0x731b40: b.eq            #0x731b48
    //     0x731b44: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731b48: mov             x2, x3
    // 0x731b4c: mov             x3, x4
    // 0x731b50: mov             x0, x5
    // 0x731b54: b               #0x731cbc
    // 0x731b58: tbz             w1, #4, #0x731c0c
    // 0x731b5c: ldur            x2, [fp, #-8]
    // 0x731b60: r1 = Function '_requestLocationPermission@936387819':.
    //     0x731b60: add             x1, PP, #0x15, lsl #12  ; [pp+0x15a78] AnonymousClosure: (0x732230), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_requestLocationPermission (0x732268)
    //     0x731b64: ldr             x1, [x1, #0xa78]
    // 0x731b68: r0 = AllocateClosure()
    //     0x731b68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x731b6c: mov             x2, x0
    // 0x731b70: r1 = Null
    //     0x731b70: mov             x1, NULL
    // 0x731b74: r0 = LocationButton.requestPermission()
    //     0x731b74: bl              #0x6e7e20  ; [package:umrem_demo/features/home/widgets/location_button.dart] LocationButton::LocationButton.requestPermission
    // 0x731b78: mov             x2, x0
    // 0x731b7c: ldur            x0, [fp, #-0x28]
    // 0x731b80: stur            x2, [fp, #-0x18]
    // 0x731b84: LoadField: r1 = r0->field_b
    //     0x731b84: ldur            w1, [x0, #0xb]
    // 0x731b88: LoadField: r3 = r0->field_f
    //     0x731b88: ldur            w3, [x0, #0xf]
    // 0x731b8c: DecompressPointer r3
    //     0x731b8c: add             x3, x3, HEAP, lsl #32
    // 0x731b90: LoadField: r4 = r3->field_b
    //     0x731b90: ldur            w4, [x3, #0xb]
    // 0x731b94: r3 = LoadInt32Instr(r1)
    //     0x731b94: sbfx            x3, x1, #1, #0x1f
    // 0x731b98: stur            x3, [fp, #-0x80]
    // 0x731b9c: r1 = LoadInt32Instr(r4)
    //     0x731b9c: sbfx            x1, x4, #1, #0x1f
    // 0x731ba0: cmp             x3, x1
    // 0x731ba4: b.ne            #0x731bb0
    // 0x731ba8: mov             x1, x0
    // 0x731bac: r0 = _growToNextCapacity()
    //     0x731bac: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731bb0: ldur            x3, [fp, #-0x28]
    // 0x731bb4: ldur            x2, [fp, #-0x80]
    // 0x731bb8: add             x4, x2, #1
    // 0x731bbc: lsl             x0, x4, #1
    // 0x731bc0: StoreField: r3->field_b = r0
    //     0x731bc0: stur            w0, [x3, #0xb]
    // 0x731bc4: LoadField: r5 = r3->field_f
    //     0x731bc4: ldur            w5, [x3, #0xf]
    // 0x731bc8: DecompressPointer r5
    //     0x731bc8: add             x5, x5, HEAP, lsl #32
    // 0x731bcc: mov             x1, x5
    // 0x731bd0: ldur            x0, [fp, #-0x18]
    // 0x731bd4: ArrayStore: r1[r2] = r0  ; List_4
    //     0x731bd4: add             x25, x1, x2, lsl #2
    //     0x731bd8: add             x25, x25, #0xf
    //     0x731bdc: str             w0, [x25]
    //     0x731be0: tbz             w0, #0, #0x731bfc
    //     0x731be4: ldurb           w16, [x1, #-1]
    //     0x731be8: ldurb           w17, [x0, #-1]
    //     0x731bec: and             x16, x17, x16, lsr #2
    //     0x731bf0: tst             x16, HEAP, lsr #32
    //     0x731bf4: b.eq            #0x731bfc
    //     0x731bf8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731bfc: mov             x1, x5
    // 0x731c00: mov             x0, x4
    // 0x731c04: mov             x2, x3
    // 0x731c08: b               #0x731cb4
    // 0x731c0c: ldur            x2, [fp, #-8]
    // 0x731c10: r1 = Function '_startLocationTracking@936387819':.
    //     0x731c10: add             x1, PP, #0x15, lsl #12  ; [pp+0x15a80] AnonymousClosure: (0x67f1f4), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_startLocationTracking (0x67efd0)
    //     0x731c14: ldr             x1, [x1, #0xa80]
    // 0x731c18: r0 = AllocateClosure()
    //     0x731c18: bl              #0x9273d4  ; AllocateClosureStub
    // 0x731c1c: mov             x2, x0
    // 0x731c20: r1 = Null
    //     0x731c20: mov             x1, NULL
    // 0x731c24: r0 = LocationButton.start()
    //     0x731c24: bl              #0x6e7dd4  ; [package:umrem_demo/features/home/widgets/location_button.dart] LocationButton::LocationButton.start
    // 0x731c28: mov             x2, x0
    // 0x731c2c: ldur            x0, [fp, #-0x28]
    // 0x731c30: stur            x2, [fp, #-0x18]
    // 0x731c34: LoadField: r1 = r0->field_b
    //     0x731c34: ldur            w1, [x0, #0xb]
    // 0x731c38: LoadField: r3 = r0->field_f
    //     0x731c38: ldur            w3, [x0, #0xf]
    // 0x731c3c: DecompressPointer r3
    //     0x731c3c: add             x3, x3, HEAP, lsl #32
    // 0x731c40: LoadField: r4 = r3->field_b
    //     0x731c40: ldur            w4, [x3, #0xb]
    // 0x731c44: r3 = LoadInt32Instr(r1)
    //     0x731c44: sbfx            x3, x1, #1, #0x1f
    // 0x731c48: stur            x3, [fp, #-0x80]
    // 0x731c4c: r1 = LoadInt32Instr(r4)
    //     0x731c4c: sbfx            x1, x4, #1, #0x1f
    // 0x731c50: cmp             x3, x1
    // 0x731c54: b.ne            #0x731c60
    // 0x731c58: mov             x1, x0
    // 0x731c5c: r0 = _growToNextCapacity()
    //     0x731c5c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731c60: ldur            x2, [fp, #-0x28]
    // 0x731c64: ldur            x3, [fp, #-0x80]
    // 0x731c68: add             x4, x3, #1
    // 0x731c6c: lsl             x0, x4, #1
    // 0x731c70: StoreField: r2->field_b = r0
    //     0x731c70: stur            w0, [x2, #0xb]
    // 0x731c74: LoadField: r5 = r2->field_f
    //     0x731c74: ldur            w5, [x2, #0xf]
    // 0x731c78: DecompressPointer r5
    //     0x731c78: add             x5, x5, HEAP, lsl #32
    // 0x731c7c: mov             x1, x5
    // 0x731c80: ldur            x0, [fp, #-0x18]
    // 0x731c84: ArrayStore: r1[r3] = r0  ; List_4
    //     0x731c84: add             x25, x1, x3, lsl #2
    //     0x731c88: add             x25, x25, #0xf
    //     0x731c8c: str             w0, [x25]
    //     0x731c90: tbz             w0, #0, #0x731cac
    //     0x731c94: ldurb           w16, [x1, #-1]
    //     0x731c98: ldurb           w17, [x0, #-1]
    //     0x731c9c: and             x16, x17, x16, lsr #2
    //     0x731ca0: tst             x16, HEAP, lsr #32
    //     0x731ca4: b.eq            #0x731cac
    //     0x731ca8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731cac: mov             x1, x5
    // 0x731cb0: mov             x0, x4
    // 0x731cb4: mov             x3, x0
    // 0x731cb8: mov             x0, x1
    // 0x731cbc: stur            x3, [fp, #-0x80]
    // 0x731cc0: LoadField: r1 = r0->field_b
    //     0x731cc0: ldur            w1, [x0, #0xb]
    // 0x731cc4: r0 = LoadInt32Instr(r1)
    //     0x731cc4: sbfx            x0, x1, #1, #0x1f
    // 0x731cc8: cmp             x3, x0
    // 0x731ccc: b.ne            #0x731cd8
    // 0x731cd0: mov             x1, x2
    // 0x731cd4: r0 = _growToNextCapacity()
    //     0x731cd4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731cd8: ldur            x2, [fp, #-0x28]
    // 0x731cdc: ldur            x3, [fp, #-0x80]
    // 0x731ce0: add             x0, x3, #1
    // 0x731ce4: lsl             x1, x0, #1
    // 0x731ce8: StoreField: r2->field_b = r1
    //     0x731ce8: stur            w1, [x2, #0xb]
    // 0x731cec: mov             x1, x3
    // 0x731cf0: cmp             x1, x0
    // 0x731cf4: b.hs            #0x731fd0
    // 0x731cf8: LoadField: r0 = r2->field_f
    //     0x731cf8: ldur            w0, [x2, #0xf]
    // 0x731cfc: DecompressPointer r0
    //     0x731cfc: add             x0, x0, HEAP, lsl #32
    // 0x731d00: add             x1, x0, x3, lsl #2
    // 0x731d04: r16 = Instance_SizedBox
    //     0x731d04: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x731d08: ldr             x16, [x16, #0x320]
    // 0x731d0c: StoreField: r1->field_f = r16
    //     0x731d0c: stur            w16, [x1, #0xf]
    // 0x731d10: ldur            x1, [fp, #-0x50]
    // 0x731d14: r0 = addAll()
    //     0x731d14: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x731d18: ldur            x0, [fp, #-0x50]
    // 0x731d1c: LoadField: r1 = r0->field_b
    //     0x731d1c: ldur            w1, [x0, #0xb]
    // 0x731d20: LoadField: r2 = r0->field_f
    //     0x731d20: ldur            w2, [x0, #0xf]
    // 0x731d24: DecompressPointer r2
    //     0x731d24: add             x2, x2, HEAP, lsl #32
    // 0x731d28: LoadField: r3 = r2->field_b
    //     0x731d28: ldur            w3, [x2, #0xb]
    // 0x731d2c: r2 = LoadInt32Instr(r1)
    //     0x731d2c: sbfx            x2, x1, #1, #0x1f
    // 0x731d30: stur            x2, [fp, #-0x80]
    // 0x731d34: r1 = LoadInt32Instr(r3)
    //     0x731d34: sbfx            x1, x3, #1, #0x1f
    // 0x731d38: cmp             x2, x1
    // 0x731d3c: b.ne            #0x731d48
    // 0x731d40: mov             x1, x0
    // 0x731d44: r0 = _growToNextCapacity()
    //     0x731d44: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731d48: ldur            x2, [fp, #-8]
    // 0x731d4c: ldur            x1, [fp, #-0x50]
    // 0x731d50: ldur            x0, [fp, #-0x80]
    // 0x731d54: add             x3, x0, #1
    // 0x731d58: stur            x3, [fp, #-0x88]
    // 0x731d5c: lsl             x4, x3, #1
    // 0x731d60: StoreField: r1->field_b = r4
    //     0x731d60: stur            w4, [x1, #0xb]
    // 0x731d64: LoadField: r4 = r1->field_f
    //     0x731d64: ldur            w4, [x1, #0xf]
    // 0x731d68: DecompressPointer r4
    //     0x731d68: add             x4, x4, HEAP, lsl #32
    // 0x731d6c: stur            x4, [fp, #-0x28]
    // 0x731d70: add             x5, x4, x0, lsl #2
    // 0x731d74: r16 = Instance_SizedBox
    //     0x731d74: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x731d78: ldr             x16, [x16, #0x318]
    // 0x731d7c: StoreField: r5->field_f = r16
    //     0x731d7c: stur            w16, [x5, #0xf]
    // 0x731d80: LoadField: r0 = r2->field_23
    //     0x731d80: ldur            w0, [x2, #0x23]
    // 0x731d84: DecompressPointer r0
    //     0x731d84: add             x0, x0, HEAP, lsl #32
    // 0x731d88: r16 = Sentinel
    //     0x731d88: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x731d8c: cmp             w0, w16
    // 0x731d90: b.eq            #0x731fd4
    // 0x731d94: stur            x0, [fp, #-0x18]
    // 0x731d98: r0 = QuoteWidget()
    //     0x731d98: bl              #0x731fe0  ; AllocateQuoteWidgetStub -> QuoteWidget (size=0x18)
    // 0x731d9c: mov             x2, x0
    // 0x731da0: ldur            x0, [fp, #-0x18]
    // 0x731da4: stur            x2, [fp, #-8]
    // 0x731da8: StoreField: r2->field_b = r0
    //     0x731da8: stur            w0, [x2, #0xb]
    // 0x731dac: r0 = Instance_TextAlign
    //     0x731dac: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x731db0: StoreField: r2->field_13 = r0
    //     0x731db0: stur            w0, [x2, #0x13]
    // 0x731db4: ldur            x0, [fp, #-0x28]
    // 0x731db8: LoadField: r1 = r0->field_b
    //     0x731db8: ldur            w1, [x0, #0xb]
    // 0x731dbc: r0 = LoadInt32Instr(r1)
    //     0x731dbc: sbfx            x0, x1, #1, #0x1f
    // 0x731dc0: ldur            x3, [fp, #-0x88]
    // 0x731dc4: cmp             x3, x0
    // 0x731dc8: b.ne            #0x731dd4
    // 0x731dcc: ldur            x1, [fp, #-0x50]
    // 0x731dd0: r0 = _growToNextCapacity()
    //     0x731dd0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731dd4: ldur            x2, [fp, #-0x88]
    // 0x731dd8: ldur            x3, [fp, #-0x50]
    // 0x731ddc: add             x4, x2, #1
    // 0x731de0: stur            x4, [fp, #-0x80]
    // 0x731de4: lsl             x0, x4, #1
    // 0x731de8: StoreField: r3->field_b = r0
    //     0x731de8: stur            w0, [x3, #0xb]
    // 0x731dec: LoadField: r5 = r3->field_f
    //     0x731dec: ldur            w5, [x3, #0xf]
    // 0x731df0: DecompressPointer r5
    //     0x731df0: add             x5, x5, HEAP, lsl #32
    // 0x731df4: mov             x1, x5
    // 0x731df8: ldur            x0, [fp, #-8]
    // 0x731dfc: ArrayStore: r1[r2] = r0  ; List_4
    //     0x731dfc: add             x25, x1, x2, lsl #2
    //     0x731e00: add             x25, x25, #0xf
    //     0x731e04: str             w0, [x25]
    //     0x731e08: tbz             w0, #0, #0x731e24
    //     0x731e0c: ldurb           w16, [x1, #-1]
    //     0x731e10: ldurb           w17, [x0, #-1]
    //     0x731e14: and             x16, x17, x16, lsr #2
    //     0x731e18: tst             x16, HEAP, lsr #32
    //     0x731e1c: b.eq            #0x731e24
    //     0x731e20: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x731e24: LoadField: r0 = r5->field_b
    //     0x731e24: ldur            w0, [x5, #0xb]
    // 0x731e28: r1 = LoadInt32Instr(r0)
    //     0x731e28: sbfx            x1, x0, #1, #0x1f
    // 0x731e2c: cmp             x4, x1
    // 0x731e30: b.ne            #0x731e3c
    // 0x731e34: mov             x1, x3
    // 0x731e38: r0 = _growToNextCapacity()
    //     0x731e38: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x731e3c: ldur            x3, [fp, #-0x20]
    // 0x731e40: ldur            x1, [fp, #-0x80]
    // 0x731e44: ldur            x2, [fp, #-0x10]
    // 0x731e48: ldur            x0, [fp, #-0x50]
    // 0x731e4c: add             x4, x1, #1
    // 0x731e50: lsl             x5, x4, #1
    // 0x731e54: StoreField: r0->field_b = r5
    //     0x731e54: stur            w5, [x0, #0xb]
    // 0x731e58: LoadField: r4 = r0->field_f
    //     0x731e58: ldur            w4, [x0, #0xf]
    // 0x731e5c: DecompressPointer r4
    //     0x731e5c: add             x4, x4, HEAP, lsl #32
    // 0x731e60: add             x5, x4, x1, lsl #2
    // 0x731e64: r16 = Instance_SizedBox
    //     0x731e64: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x731e68: ldr             x16, [x16, #0x318]
    // 0x731e6c: StoreField: r5->field_f = r16
    //     0x731e6c: stur            w16, [x5, #0xf]
    // 0x731e70: r0 = Column()
    //     0x731e70: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x731e74: mov             x1, x0
    // 0x731e78: r0 = Instance_Axis
    //     0x731e78: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x731e7c: stur            x1, [fp, #-8]
    // 0x731e80: StoreField: r1->field_f = r0
    //     0x731e80: stur            w0, [x1, #0xf]
    // 0x731e84: r2 = Instance_MainAxisAlignment
    //     0x731e84: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x731e88: ldr             x2, [x2, #0x230]
    // 0x731e8c: StoreField: r1->field_13 = r2
    //     0x731e8c: stur            w2, [x1, #0x13]
    // 0x731e90: r2 = Instance_MainAxisSize
    //     0x731e90: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x731e94: ldr             x2, [x2, #0x330]
    // 0x731e98: ArrayStore: r1[0] = r2  ; List_4
    //     0x731e98: stur            w2, [x1, #0x17]
    // 0x731e9c: r2 = Instance_CrossAxisAlignment
    //     0x731e9c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x731ea0: ldr             x2, [x2, #0x238]
    // 0x731ea4: StoreField: r1->field_1b = r2
    //     0x731ea4: stur            w2, [x1, #0x1b]
    // 0x731ea8: r2 = Instance_VerticalDirection
    //     0x731ea8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x731eac: ldr             x2, [x2, #0x340]
    // 0x731eb0: StoreField: r1->field_23 = r2
    //     0x731eb0: stur            w2, [x1, #0x23]
    // 0x731eb4: r2 = Instance_Clip
    //     0x731eb4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x731eb8: ldr             x2, [x2, #0x348]
    // 0x731ebc: StoreField: r1->field_2b = r2
    //     0x731ebc: stur            w2, [x1, #0x2b]
    // 0x731ec0: StoreField: r1->field_2f = rZR
    //     0x731ec0: stur            xzr, [x1, #0x2f]
    // 0x731ec4: ldur            x2, [fp, #-0x50]
    // 0x731ec8: StoreField: r1->field_b = r2
    //     0x731ec8: stur            w2, [x1, #0xb]
    // 0x731ecc: r0 = SingleChildScrollView()
    //     0x731ecc: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x731ed0: mov             x1, x0
    // 0x731ed4: r0 = Instance_Axis
    //     0x731ed4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x731ed8: stur            x1, [fp, #-0x18]
    // 0x731edc: StoreField: r1->field_b = r0
    //     0x731edc: stur            w0, [x1, #0xb]
    // 0x731ee0: r0 = false
    //     0x731ee0: add             x0, NULL, #0x30  ; false
    // 0x731ee4: StoreField: r1->field_f = r0
    //     0x731ee4: stur            w0, [x1, #0xf]
    // 0x731ee8: r2 = Instance_EdgeInsets
    //     0x731ee8: add             x2, PP, #0x15, lsl #12  ; [pp+0x15a88] Obj!EdgeInsets@a0c591
    //     0x731eec: ldr             x2, [x2, #0xa88]
    // 0x731ef0: StoreField: r1->field_13 = r2
    //     0x731ef0: stur            w2, [x1, #0x13]
    // 0x731ef4: r2 = Instance_BouncingScrollPhysics
    //     0x731ef4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15a90] Obj!BouncingScrollPhysics@a0a9e1
    //     0x731ef8: ldr             x2, [x2, #0xa90]
    // 0x731efc: StoreField: r1->field_1f = r2
    //     0x731efc: stur            w2, [x1, #0x1f]
    // 0x731f00: ldur            x2, [fp, #-8]
    // 0x731f04: StoreField: r1->field_23 = r2
    //     0x731f04: stur            w2, [x1, #0x23]
    // 0x731f08: r2 = Instance_DragStartBehavior
    //     0x731f08: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x731f0c: StoreField: r1->field_27 = r2
    //     0x731f0c: stur            w2, [x1, #0x27]
    // 0x731f10: r3 = Instance_Clip
    //     0x731f10: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x731f14: ldr             x3, [x3, #0x2d8]
    // 0x731f18: StoreField: r1->field_2b = r3
    //     0x731f18: stur            w3, [x1, #0x2b]
    // 0x731f1c: r3 = Instance_HitTestBehavior
    //     0x731f1c: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x731f20: ldr             x3, [x3, #0xe20]
    // 0x731f24: StoreField: r1->field_2f = r3
    //     0x731f24: stur            w3, [x1, #0x2f]
    // 0x731f28: r0 = FadeTransition()
    //     0x731f28: bl              #0x40a204  ; AllocateFadeTransitionStub -> FadeTransition (size=0x18)
    // 0x731f2c: mov             x1, x0
    // 0x731f30: ldur            x0, [fp, #-0x10]
    // 0x731f34: stur            x1, [fp, #-8]
    // 0x731f38: StoreField: r1->field_f = r0
    //     0x731f38: stur            w0, [x1, #0xf]
    // 0x731f3c: r0 = false
    //     0x731f3c: add             x0, NULL, #0x30  ; false
    // 0x731f40: StoreField: r1->field_13 = r0
    //     0x731f40: stur            w0, [x1, #0x13]
    // 0x731f44: ldur            x2, [fp, #-0x18]
    // 0x731f48: StoreField: r1->field_b = r2
    //     0x731f48: stur            w2, [x1, #0xb]
    // 0x731f4c: r0 = Scaffold()
    //     0x731f4c: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x731f50: ldur            x1, [fp, #-0x20]
    // 0x731f54: ArrayStore: r0[0] = r1  ; List_4
    //     0x731f54: stur            w1, [x0, #0x17]
    // 0x731f58: ldur            x1, [fp, #-8]
    // 0x731f5c: StoreField: r0->field_1b = r1
    //     0x731f5c: stur            w1, [x0, #0x1b]
    // 0x731f60: r1 = Instance_AlignmentDirectional
    //     0x731f60: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x731f64: ldr             x1, [x1, #0x350]
    // 0x731f68: StoreField: r0->field_2f = r1
    //     0x731f68: stur            w1, [x0, #0x2f]
    // 0x731f6c: r1 = Instance_Color
    //     0x731f6c: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x731f70: StoreField: r0->field_4f = r1
    //     0x731f70: stur            w1, [x0, #0x4f]
    // 0x731f74: r1 = true
    //     0x731f74: add             x1, NULL, #0x20  ; true
    // 0x731f78: StoreField: r0->field_5f = r1
    //     0x731f78: stur            w1, [x0, #0x5f]
    // 0x731f7c: r2 = Instance_DragStartBehavior
    //     0x731f7c: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x731f80: StoreField: r0->field_63 = r2
    //     0x731f80: stur            w2, [x0, #0x63]
    // 0x731f84: r2 = false
    //     0x731f84: add             x2, NULL, #0x30  ; false
    // 0x731f88: StoreField: r0->field_b = r2
    //     0x731f88: stur            w2, [x0, #0xb]
    // 0x731f8c: StoreField: r0->field_f = r1
    //     0x731f8c: stur            w1, [x0, #0xf]
    // 0x731f90: StoreField: r0->field_13 = r2
    //     0x731f90: stur            w2, [x0, #0x13]
    // 0x731f94: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x731f94: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x731f98: ldr             x2, [x2, #0x358]
    // 0x731f9c: StoreField: r0->field_4b = r2
    //     0x731f9c: stur            w2, [x0, #0x4b]
    // 0x731fa0: StoreField: r0->field_6b = r1
    //     0x731fa0: stur            w1, [x0, #0x6b]
    // 0x731fa4: StoreField: r0->field_6f = r1
    //     0x731fa4: stur            w1, [x0, #0x6f]
    // 0x731fa8: LeaveFrame
    //     0x731fa8: mov             SP, fp
    //     0x731fac: ldp             fp, lr, [SP], #0x10
    // 0x731fb0: ret
    //     0x731fb0: ret             
    // 0x731fb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x731fb4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x731fb8: b               #0x730400
    // 0x731fbc: r9 = _fadeAnimation
    //     0x731fbc: add             x9, PP, #0x15, lsl #12  ; [pp+0x15a98] Field <_ProfilScreenState@936387819._fadeAnimation@936387819>: late (offset: 0x20)
    //     0x731fc0: ldr             x9, [x9, #0xa98]
    // 0x731fc4: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x731fc4: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
    // 0x731fc8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x731fc8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x731fcc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x731fcc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x731fd0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x731fd0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x731fd4: r9 = _selectedQuote
    //     0x731fd4: add             x9, PP, #0x15, lsl #12  ; [pp+0x15aa0] Field <_ProfilScreenState@936387819._selectedQuote@936387819>: late final (offset: 0x24)
    //     0x731fd8: ldr             x9, [x9, #0xaa0]
    // 0x731fdc: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x731fdc: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
  _ _formatDate(/* No info */) {
    // ** addr: 0x731fec, size: 0x22c
    // 0x731fec: EnterFrame
    //     0x731fec: stp             fp, lr, [SP, #-0x10]!
    //     0x731ff0: mov             fp, SP
    // 0x731ff4: AllocStack(0x28)
    //     0x731ff4: sub             SP, SP, #0x28
    // 0x731ff8: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x731ff8: mov             x0, x2
    //     0x731ffc: stur            x2, [fp, #-8]
    // 0x732000: CheckStackOverflow
    //     0x732000: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732004: cmp             SP, x16
    //     0x732008: b.ls            #0x732200
    // 0x73200c: r1 = <String>
    //     0x73200c: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x732010: r2 = 24
    //     0x732010: mov             x2, #0x18
    // 0x732014: r0 = AllocateArray()
    //     0x732014: bl              #0x9280a0  ; AllocateArrayStub
    // 0x732018: stur            x0, [fp, #-0x10]
    // 0x73201c: r16 = "Ocak"
    //     0x73201c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c40] "Ocak"
    //     0x732020: ldr             x16, [x16, #0xc40]
    // 0x732024: StoreField: r0->field_f = r16
    //     0x732024: stur            w16, [x0, #0xf]
    // 0x732028: r16 = "Şubat"
    //     0x732028: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c48] "Şubat"
    //     0x73202c: ldr             x16, [x16, #0xc48]
    // 0x732030: StoreField: r0->field_13 = r16
    //     0x732030: stur            w16, [x0, #0x13]
    // 0x732034: r16 = "Mart"
    //     0x732034: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c50] "Mart"
    //     0x732038: ldr             x16, [x16, #0xc50]
    // 0x73203c: ArrayStore: r0[0] = r16  ; List_4
    //     0x73203c: stur            w16, [x0, #0x17]
    // 0x732040: r16 = "Nisan"
    //     0x732040: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c58] "Nisan"
    //     0x732044: ldr             x16, [x16, #0xc58]
    // 0x732048: StoreField: r0->field_1b = r16
    //     0x732048: stur            w16, [x0, #0x1b]
    // 0x73204c: r16 = "Mayıs"
    //     0x73204c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c60] "Mayıs"
    //     0x732050: ldr             x16, [x16, #0xc60]
    // 0x732054: StoreField: r0->field_1f = r16
    //     0x732054: stur            w16, [x0, #0x1f]
    // 0x732058: r16 = "Haziran"
    //     0x732058: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c68] "Haziran"
    //     0x73205c: ldr             x16, [x16, #0xc68]
    // 0x732060: StoreField: r0->field_23 = r16
    //     0x732060: stur            w16, [x0, #0x23]
    // 0x732064: r16 = "Temmuz"
    //     0x732064: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c70] "Temmuz"
    //     0x732068: ldr             x16, [x16, #0xc70]
    // 0x73206c: StoreField: r0->field_27 = r16
    //     0x73206c: stur            w16, [x0, #0x27]
    // 0x732070: r16 = "Ağustos"
    //     0x732070: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c78] "Ağustos"
    //     0x732074: ldr             x16, [x16, #0xc78]
    // 0x732078: StoreField: r0->field_2b = r16
    //     0x732078: stur            w16, [x0, #0x2b]
    // 0x73207c: r16 = "Eylül"
    //     0x73207c: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c80] "Eylül"
    //     0x732080: ldr             x16, [x16, #0xc80]
    // 0x732084: StoreField: r0->field_2f = r16
    //     0x732084: stur            w16, [x0, #0x2f]
    // 0x732088: r16 = "Ekim"
    //     0x732088: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c88] "Ekim"
    //     0x73208c: ldr             x16, [x16, #0xc88]
    // 0x732090: StoreField: r0->field_33 = r16
    //     0x732090: stur            w16, [x0, #0x33]
    // 0x732094: r16 = "Kasım"
    //     0x732094: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c90] "Kasım"
    //     0x732098: ldr             x16, [x16, #0xc90]
    // 0x73209c: StoreField: r0->field_37 = r16
    //     0x73209c: stur            w16, [x0, #0x37]
    // 0x7320a0: r16 = "Aralık"
    //     0x7320a0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15c98] "Aralık"
    //     0x7320a4: ldr             x16, [x16, #0xc98]
    // 0x7320a8: StoreField: r0->field_3b = r16
    //     0x7320a8: stur            w16, [x0, #0x3b]
    // 0x7320ac: ldur            x1, [fp, #-8]
    // 0x7320b0: r0 = _parts()
    //     0x7320b0: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x7320b4: mov             x2, x0
    // 0x7320b8: LoadField: r0 = r2->field_b
    //     0x7320b8: ldur            w0, [x2, #0xb]
    // 0x7320bc: r1 = LoadInt32Instr(r0)
    //     0x7320bc: sbfx            x1, x0, #1, #0x1f
    // 0x7320c0: mov             x0, x1
    // 0x7320c4: r1 = 5
    //     0x7320c4: mov             x1, #5
    // 0x7320c8: cmp             x1, x0
    // 0x7320cc: b.hs            #0x732208
    // 0x7320d0: LoadField: r0 = r2->field_23
    //     0x7320d0: ldur            w0, [x2, #0x23]
    // 0x7320d4: DecompressPointer r0
    //     0x7320d4: add             x0, x0, HEAP, lsl #32
    // 0x7320d8: stur            x0, [fp, #-0x18]
    // 0x7320dc: r1 = Null
    //     0x7320dc: mov             x1, NULL
    // 0x7320e0: r2 = 10
    //     0x7320e0: mov             x2, #0xa
    // 0x7320e4: r0 = AllocateArray()
    //     0x7320e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7320e8: mov             x2, x0
    // 0x7320ec: ldur            x0, [fp, #-0x18]
    // 0x7320f0: stur            x2, [fp, #-0x20]
    // 0x7320f4: StoreField: r2->field_f = r0
    //     0x7320f4: stur            w0, [x2, #0xf]
    // 0x7320f8: r16 = " "
    //     0x7320f8: ldr             x16, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x7320fc: StoreField: r2->field_13 = r16
    //     0x7320fc: stur            w16, [x2, #0x13]
    // 0x732100: ldur            x1, [fp, #-8]
    // 0x732104: r0 = _parts()
    //     0x732104: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x732108: mov             x2, x0
    // 0x73210c: LoadField: r0 = r2->field_b
    //     0x73210c: ldur            w0, [x2, #0xb]
    // 0x732110: r1 = LoadInt32Instr(r0)
    //     0x732110: sbfx            x1, x0, #1, #0x1f
    // 0x732114: mov             x0, x1
    // 0x732118: r1 = 7
    //     0x732118: mov             x1, #7
    // 0x73211c: cmp             x1, x0
    // 0x732120: b.hs            #0x73220c
    // 0x732124: LoadField: r0 = r2->field_2b
    //     0x732124: ldur            w0, [x2, #0x2b]
    // 0x732128: DecompressPointer r0
    //     0x732128: add             x0, x0, HEAP, lsl #32
    // 0x73212c: r1 = LoadInt32Instr(r0)
    //     0x73212c: sbfx            x1, x0, #1, #0x1f
    //     0x732130: tbz             w0, #0, #0x732138
    //     0x732134: ldur            x1, [x0, #7]
    // 0x732138: sub             x2, x1, #1
    // 0x73213c: mov             x1, x2
    // 0x732140: r0 = 12
    //     0x732140: mov             x0, #0xc
    // 0x732144: cmp             x1, x0
    // 0x732148: b.hs            #0x732210
    // 0x73214c: ldur            x0, [fp, #-0x10]
    // 0x732150: ArrayLoad: r1 = r0[r2]  ; Unknown_4
    //     0x732150: add             x16, x0, x2, lsl #2
    //     0x732154: ldur            w1, [x16, #0xf]
    // 0x732158: DecompressPointer r1
    //     0x732158: add             x1, x1, HEAP, lsl #32
    // 0x73215c: mov             x0, x1
    // 0x732160: ldur            x1, [fp, #-0x20]
    // 0x732164: ArrayStore: r1[2] = r0  ; List_4
    //     0x732164: add             x25, x1, #0x17
    //     0x732168: str             w0, [x25]
    //     0x73216c: tbz             w0, #0, #0x732188
    //     0x732170: ldurb           w16, [x1, #-1]
    //     0x732174: ldurb           w17, [x0, #-1]
    //     0x732178: and             x16, x17, x16, lsr #2
    //     0x73217c: tst             x16, HEAP, lsr #32
    //     0x732180: b.eq            #0x732188
    //     0x732184: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x732188: ldur            x0, [fp, #-0x20]
    // 0x73218c: r16 = " "
    //     0x73218c: ldr             x16, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x732190: StoreField: r0->field_1b = r16
    //     0x732190: stur            w16, [x0, #0x1b]
    // 0x732194: ldur            x1, [fp, #-8]
    // 0x732198: r0 = _parts()
    //     0x732198: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x73219c: mov             x2, x0
    // 0x7321a0: LoadField: r0 = r2->field_b
    //     0x7321a0: ldur            w0, [x2, #0xb]
    // 0x7321a4: r1 = LoadInt32Instr(r0)
    //     0x7321a4: sbfx            x1, x0, #1, #0x1f
    // 0x7321a8: mov             x0, x1
    // 0x7321ac: r1 = 8
    //     0x7321ac: mov             x1, #8
    // 0x7321b0: cmp             x1, x0
    // 0x7321b4: b.hs            #0x732214
    // 0x7321b8: LoadField: r0 = r2->field_2f
    //     0x7321b8: ldur            w0, [x2, #0x2f]
    // 0x7321bc: DecompressPointer r0
    //     0x7321bc: add             x0, x0, HEAP, lsl #32
    // 0x7321c0: ldur            x1, [fp, #-0x20]
    // 0x7321c4: ArrayStore: r1[4] = r0  ; List_4
    //     0x7321c4: add             x25, x1, #0x1f
    //     0x7321c8: str             w0, [x25]
    //     0x7321cc: tbz             w0, #0, #0x7321e8
    //     0x7321d0: ldurb           w16, [x1, #-1]
    //     0x7321d4: ldurb           w17, [x0, #-1]
    //     0x7321d8: and             x16, x17, x16, lsr #2
    //     0x7321dc: tst             x16, HEAP, lsr #32
    //     0x7321e0: b.eq            #0x7321e8
    //     0x7321e4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7321e8: ldur            x16, [fp, #-0x20]
    // 0x7321ec: str             x16, [SP]
    // 0x7321f0: r0 = _interpolate()
    //     0x7321f0: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7321f4: LeaveFrame
    //     0x7321f4: mov             SP, fp
    //     0x7321f8: ldp             fp, lr, [SP], #0x10
    // 0x7321fc: ret
    //     0x7321fc: ret             
    // 0x732200: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x732200: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x732204: b               #0x73200c
    // 0x732208: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x732208: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x73220c: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x73220c: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x732210: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x732210: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x732214: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x732214: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> _requestLocationPermission(dynamic) {
    // ** addr: 0x732230, size: 0x38
    // 0x732230: EnterFrame
    //     0x732230: stp             fp, lr, [SP, #-0x10]!
    //     0x732234: mov             fp, SP
    // 0x732238: ldr             x0, [fp, #0x10]
    // 0x73223c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x73223c: ldur            w1, [x0, #0x17]
    // 0x732240: DecompressPointer r1
    //     0x732240: add             x1, x1, HEAP, lsl #32
    // 0x732244: CheckStackOverflow
    //     0x732244: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732248: cmp             SP, x16
    //     0x73224c: b.ls            #0x732260
    // 0x732250: r0 = _requestLocationPermission()
    //     0x732250: bl              #0x732268  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_requestLocationPermission
    // 0x732254: LeaveFrame
    //     0x732254: mov             SP, fp
    //     0x732258: ldp             fp, lr, [SP], #0x10
    // 0x73225c: ret
    //     0x73225c: ret             
    // 0x732260: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x732260: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x732264: b               #0x732250
  }
  _ _requestLocationPermission(/* No info */) async {
    // ** addr: 0x732268, size: 0xdc
    // 0x732268: EnterFrame
    //     0x732268: stp             fp, lr, [SP, #-0x10]!
    //     0x73226c: mov             fp, SP
    // 0x732270: AllocStack(0x18)
    //     0x732270: sub             SP, SP, #0x18
    // 0x732274: SetupParameters(_ProfilScreenState this /* r1 => r1, fp-0x10 */)
    //     0x732274: stur            NULL, [fp, #-8]
    //     0x732278: stur            x1, [fp, #-0x10]
    // 0x73227c: CheckStackOverflow
    //     0x73227c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732280: cmp             SP, x16
    //     0x732284: b.ls            #0x73233c
    // 0x732288: InitAsync() -> Future<void?>
    //     0x732288: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x73228c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x732290: r0 = checkPermission()
    //     0x732290: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x732294: mov             x1, x0
    // 0x732298: stur            x1, [fp, #-0x18]
    // 0x73229c: r0 = Await()
    //     0x73229c: bl              #0x3dd188  ; AwaitStub
    // 0x7322a0: r16 = Instance_LocationPermission
    //     0x7322a0: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x7322a4: ldr             x16, [x16, #0x5e0]
    // 0x7322a8: cmp             w0, w16
    // 0x7322ac: b.ne            #0x7322d4
    // 0x7322b0: r0 = openLocationSettings()
    //     0x7322b0: bl              #0x65b0b8  ; [package:geolocator/geolocator.dart] Geolocator::openLocationSettings
    // 0x7322b4: mov             x1, x0
    // 0x7322b8: stur            x1, [fp, #-0x18]
    // 0x7322bc: r0 = Await()
    //     0x7322bc: bl              #0x3dd188  ; AwaitStub
    // 0x7322c0: r16 = true
    //     0x7322c0: add             x16, NULL, #0x20  ; true
    // 0x7322c4: cmp             w0, w16
    // 0x7322c8: b.ne            #0x732334
    // 0x7322cc: r0 = showInfo()
    //     0x7322cc: bl              #0x6e8008  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showInfo
    // 0x7322d0: b               #0x732334
    // 0x7322d4: r0 = requestPermission()
    //     0x7322d4: bl              #0x65b054  ; [package:geolocator/geolocator.dart] Geolocator::requestPermission
    // 0x7322d8: mov             x1, x0
    // 0x7322dc: stur            x1, [fp, #-0x18]
    // 0x7322e0: r0 = Await()
    //     0x7322e0: bl              #0x3dd188  ; AwaitStub
    // 0x7322e4: r16 = Instance_LocationPermission
    //     0x7322e4: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc98] Obj!LocationPermission@a27c01
    //     0x7322e8: ldr             x16, [x16, #0xc98]
    // 0x7322ec: cmp             w0, w16
    // 0x7322f0: b.eq            #0x732304
    // 0x7322f4: r16 = Instance_LocationPermission
    //     0x7322f4: add             x16, PP, #0xb, lsl #12  ; [pp+0xbc90] Obj!LocationPermission@a27be1
    //     0x7322f8: ldr             x16, [x16, #0xc90]
    // 0x7322fc: cmp             w0, w16
    // 0x732300: b.ne            #0x732328
    // 0x732304: r1 = "Konum izni verildi."
    //     0x732304: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ad8] "Konum izni verildi."
    //     0x732308: ldr             x1, [x1, #0xad8]
    // 0x73230c: r0 = showSuccess()
    //     0x73230c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x732310: ldur            x1, [fp, #-0x10]
    // 0x732314: r0 = _checkLocationPermission()
    //     0x732314: bl              #0x5e7390  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission
    // 0x732318: mov             x1, x0
    // 0x73231c: stur            x1, [fp, #-0x10]
    // 0x732320: r0 = Await()
    //     0x732320: bl              #0x3dd188  ; AwaitStub
    // 0x732324: b               #0x732334
    // 0x732328: r1 = "Konum izni reddedildi."
    //     0x732328: add             x1, PP, #0x15, lsl #12  ; [pp+0x15ab0] "Konum izni reddedildi."
    //     0x73232c: ldr             x1, [x1, #0xab0]
    // 0x732330: r0 = showError()
    //     0x732330: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x732334: r0 = Null
    //     0x732334: mov             x0, NULL
    // 0x732338: r0 = ReturnAsyncNotFuture()
    //     0x732338: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x73233c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x73233c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x732340: b               #0x732288
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x732344, size: 0xb4
    // 0x732344: EnterFrame
    //     0x732344: stp             fp, lr, [SP, #-0x10]!
    //     0x732348: mov             fp, SP
    // 0x73234c: AllocStack(0x30)
    //     0x73234c: sub             SP, SP, #0x30
    // 0x732350: SetupParameters([dynamic _ /* r0 */])
    //     0x732350: ldr             x0, [fp, #0x10]
    //     0x732354: ldur            w1, [x0, #0x17]
    //     0x732358: add             x1, x1, HEAP, lsl #32
    // 0x73235c: CheckStackOverflow
    //     0x73235c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732360: cmp             SP, x16
    //     0x732364: b.ls            #0x7323f0
    // 0x732368: LoadField: r0 = r1->field_13
    //     0x732368: ldur            w0, [x1, #0x13]
    // 0x73236c: DecompressPointer r0
    //     0x73236c: add             x0, x0, HEAP, lsl #32
    // 0x732370: stur            x0, [fp, #-8]
    // 0x732374: r1 = Function '<anonymous closure>':.
    //     0x732374: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b38] AnonymousClosure: static (0x7323f8), in [package:umrem_demo/app/routes.dart] AppRoutes::routes (0x732404)
    //     0x732378: ldr             x1, [x1, #0xb38]
    // 0x73237c: r2 = Null
    //     0x73237c: mov             x2, NULL
    // 0x732380: r0 = AllocateClosure()
    //     0x732380: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732384: r1 = Null
    //     0x732384: mov             x1, NULL
    // 0x732388: stur            x0, [fp, #-0x10]
    // 0x73238c: r0 = MaterialPageRoute()
    //     0x73238c: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x732390: mov             x4, x0
    // 0x732394: ldur            x0, [fp, #-0x10]
    // 0x732398: stur            x4, [fp, #-0x18]
    // 0x73239c: StoreField: r4->field_a3 = r0
    //     0x73239c: stur            w0, [x4, #0xa3]
    // 0x7323a0: r0 = true
    //     0x7323a0: add             x0, NULL, #0x20  ; true
    // 0x7323a4: StoreField: r4->field_a7 = r0
    //     0x7323a4: stur            w0, [x4, #0xa7]
    // 0x7323a8: r1 = false
    //     0x7323a8: add             x1, NULL, #0x30  ; false
    // 0x7323ac: StoreField: r4->field_97 = r1
    //     0x7323ac: stur            w1, [x4, #0x97]
    // 0x7323b0: StoreField: r4->field_9b = r0
    //     0x7323b0: stur            w0, [x4, #0x9b]
    // 0x7323b4: StoreField: r4->field_9f = r1
    //     0x7323b4: stur            w1, [x4, #0x9f]
    // 0x7323b8: mov             x1, x4
    // 0x7323bc: r2 = Null
    //     0x7323bc: mov             x2, NULL
    // 0x7323c0: r3 = Null
    //     0x7323c0: mov             x3, NULL
    // 0x7323c4: r0 = ModalRoute()
    //     0x7323c4: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x7323c8: ldur            x16, [fp, #-8]
    // 0x7323cc: stp             x16, NULL, [SP, #8]
    // 0x7323d0: ldur            x16, [fp, #-0x18]
    // 0x7323d4: str             x16, [SP]
    // 0x7323d8: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7323d8: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7323dc: r0 = push()
    //     0x7323dc: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x7323e0: r0 = Null
    //     0x7323e0: mov             x0, NULL
    // 0x7323e4: LeaveFrame
    //     0x7323e4: mov             SP, fp
    //     0x7323e8: ldp             fp, lr, [SP], #0x10
    // 0x7323ec: ret
    //     0x7323ec: ret             
    // 0x7323f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7323f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7323f4: b               #0x732368
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x732f10, size: 0xf0
    // 0x732f10: EnterFrame
    //     0x732f10: stp             fp, lr, [SP, #-0x10]!
    //     0x732f14: mov             fp, SP
    // 0x732f18: AllocStack(0x28)
    //     0x732f18: sub             SP, SP, #0x28
    // 0x732f1c: SetupParameters(_ProfilScreenState this /* r1 */)
    //     0x732f1c: stur            NULL, [fp, #-8]
    //     0x732f20: mov             x0, #0
    //     0x732f24: add             x1, fp, w0, sxtw #2
    //     0x732f28: ldr             x1, [x1, #0x10]
    //     0x732f2c: ldur            w2, [x1, #0x17]
    //     0x732f30: add             x2, x2, HEAP, lsl #32
    //     0x732f34: stur            x2, [fp, #-0x10]
    // 0x732f38: CheckStackOverflow
    //     0x732f38: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x732f3c: cmp             SP, x16
    //     0x732f40: b.ls            #0x732ff8
    // 0x732f44: InitAsync() -> Future<void?>
    //     0x732f44: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x732f48: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x732f4c: ldur            x0, [fp, #-0x10]
    // 0x732f50: LoadField: r3 = r0->field_f
    //     0x732f50: ldur            w3, [x0, #0xf]
    // 0x732f54: DecompressPointer r3
    //     0x732f54: add             x3, x3, HEAP, lsl #32
    // 0x732f58: mov             x2, x0
    // 0x732f5c: stur            x3, [fp, #-0x18]
    // 0x732f60: r1 = Function '<anonymous closure>':.
    //     0x732f60: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b40] AnonymousClosure: (0x733020), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::build (0x7303e0)
    //     0x732f64: ldr             x1, [x1, #0xb40]
    // 0x732f68: r0 = AllocateClosure()
    //     0x732f68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732f6c: ldur            x1, [fp, #-0x18]
    // 0x732f70: mov             x2, x0
    // 0x732f74: r0 = setState()
    //     0x732f74: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x732f78: ldur            x2, [fp, #-0x10]
    // 0x732f7c: LoadField: r0 = r2->field_13
    //     0x732f7c: ldur            w0, [x2, #0x13]
    // 0x732f80: DecompressPointer r0
    //     0x732f80: add             x0, x0, HEAP, lsl #32
    // 0x732f84: r16 = <SplashProvider>
    //     0x732f84: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b30] TypeArguments: <SplashProvider>
    //     0x732f88: ldr             x16, [x16, #0xb30]
    // 0x732f8c: stp             x0, x16, [SP]
    // 0x732f90: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x732f90: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x732f94: r0 = ReadContext.read()
    //     0x732f94: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x732f98: mov             x1, x0
    // 0x732f9c: ldur            x0, [fp, #-0x10]
    // 0x732fa0: LoadField: r2 = r0->field_13
    //     0x732fa0: ldur            w2, [x0, #0x13]
    // 0x732fa4: DecompressPointer r2
    //     0x732fa4: add             x2, x2, HEAP, lsl #32
    // 0x732fa8: r0 = logout()
    //     0x732fa8: bl              #0x6cf824  ; [package:umrem_demo/features/splash/providers/splash_provider.dart] SplashProvider::logout
    // 0x732fac: mov             x1, x0
    // 0x732fb0: stur            x1, [fp, #-0x18]
    // 0x732fb4: r0 = Await()
    //     0x732fb4: bl              #0x3dd188  ; AwaitStub
    // 0x732fb8: ldur            x2, [fp, #-0x10]
    // 0x732fbc: LoadField: r0 = r2->field_f
    //     0x732fbc: ldur            w0, [x2, #0xf]
    // 0x732fc0: DecompressPointer r0
    //     0x732fc0: add             x0, x0, HEAP, lsl #32
    // 0x732fc4: stur            x0, [fp, #-0x18]
    // 0x732fc8: LoadField: r1 = r0->field_f
    //     0x732fc8: ldur            w1, [x0, #0xf]
    // 0x732fcc: DecompressPointer r1
    //     0x732fcc: add             x1, x1, HEAP, lsl #32
    // 0x732fd0: cmp             w1, NULL
    // 0x732fd4: b.eq            #0x732ff0
    // 0x732fd8: r1 = Function '<anonymous closure>':.
    //     0x732fd8: add             x1, PP, #0x15, lsl #12  ; [pp+0x15b48] AnonymousClosure: (0x733000), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::build (0x7303e0)
    //     0x732fdc: ldr             x1, [x1, #0xb48]
    // 0x732fe0: r0 = AllocateClosure()
    //     0x732fe0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x732fe4: ldur            x1, [fp, #-0x18]
    // 0x732fe8: mov             x2, x0
    // 0x732fec: r0 = setState()
    //     0x732fec: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x732ff0: r0 = Null
    //     0x732ff0: mov             x0, NULL
    // 0x732ff4: r0 = ReturnAsyncNotFuture()
    //     0x732ff4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x732ff8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x732ff8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x732ffc: b               #0x732f44
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x733000, size: 0x20
    // 0x733000: r0 = false
    //     0x733000: add             x0, NULL, #0x30  ; false
    // 0x733004: ldr             x1, [SP]
    // 0x733008: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x733008: ldur            w2, [x1, #0x17]
    // 0x73300c: DecompressPointer r2
    //     0x73300c: add             x2, x2, HEAP, lsl #32
    // 0x733010: LoadField: r1 = r2->field_f
    //     0x733010: ldur            w1, [x2, #0xf]
    // 0x733014: DecompressPointer r1
    //     0x733014: add             x1, x1, HEAP, lsl #32
    // 0x733018: StoreField: r1->field_33 = r0
    //     0x733018: stur            w0, [x1, #0x33]
    // 0x73301c: ret
    //     0x73301c: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x733020, size: 0x20
    // 0x733020: r0 = true
    //     0x733020: add             x0, NULL, #0x20  ; true
    // 0x733024: ldr             x1, [SP]
    // 0x733028: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x733028: ldur            w2, [x1, #0x17]
    // 0x73302c: DecompressPointer r2
    //     0x73302c: add             x2, x2, HEAP, lsl #32
    // 0x733030: LoadField: r1 = r2->field_f
    //     0x733030: ldur            w1, [x2, #0xf]
    // 0x733034: DecompressPointer r1
    //     0x733034: add             x1, x1, HEAP, lsl #32
    // 0x733038: StoreField: r1->field_33 = r0
    //     0x733038: stur            w0, [x1, #0x33]
    // 0x73303c: ret
    //     0x73303c: ret             
  }
  dynamic dispose(dynamic) {
    // ** addr: 0x74c6ac, size: 0x24
    // 0x74c6ac: EnterFrame
    //     0x74c6ac: stp             fp, lr, [SP, #-0x10]!
    //     0x74c6b0: mov             fp, SP
    // 0x74c6b4: ldr             x2, [fp, #0x10]
    // 0x74c6b8: r1 = Function 'dispose':.
    //     0x74c6b8: add             x1, PP, #0x27, lsl #12  ; [pp+0x27560] AnonymousClosure: (0x74c6d0), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::dispose (0x754020)
    //     0x74c6bc: ldr             x1, [x1, #0x560]
    // 0x74c6c0: r0 = AllocateClosure()
    //     0x74c6c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x74c6c4: LeaveFrame
    //     0x74c6c4: mov             SP, fp
    //     0x74c6c8: ldp             fp, lr, [SP], #0x10
    // 0x74c6cc: ret
    //     0x74c6cc: ret             
  }
  [closure] void dispose(dynamic) {
    // ** addr: 0x74c6d0, size: 0x38
    // 0x74c6d0: EnterFrame
    //     0x74c6d0: stp             fp, lr, [SP, #-0x10]!
    //     0x74c6d4: mov             fp, SP
    // 0x74c6d8: ldr             x0, [fp, #0x10]
    // 0x74c6dc: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x74c6dc: ldur            w1, [x0, #0x17]
    // 0x74c6e0: DecompressPointer r1
    //     0x74c6e0: add             x1, x1, HEAP, lsl #32
    // 0x74c6e4: CheckStackOverflow
    //     0x74c6e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x74c6e8: cmp             SP, x16
    //     0x74c6ec: b.ls            #0x74c700
    // 0x74c6f0: r0 = dispose()
    //     0x74c6f0: bl              #0x754020  ; [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::dispose
    // 0x74c6f4: LeaveFrame
    //     0x74c6f4: mov             SP, fp
    //     0x74c6f8: ldp             fp, lr, [SP], #0x10
    // 0x74c6fc: ret
    //     0x74c6fc: ret             
    // 0x74c700: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x74c700: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x74c704: b               #0x74c6f0
  }
  _ dispose(/* No info */) {
    // ** addr: 0x754020, size: 0x64
    // 0x754020: EnterFrame
    //     0x754020: stp             fp, lr, [SP, #-0x10]!
    //     0x754024: mov             fp, SP
    // 0x754028: AllocStack(0x8)
    //     0x754028: sub             SP, SP, #8
    // 0x75402c: SetupParameters(_ProfilScreenState this /* r1 => r0, fp-0x8 */)
    //     0x75402c: mov             x0, x1
    //     0x754030: stur            x1, [fp, #-8]
    // 0x754034: CheckStackOverflow
    //     0x754034: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x754038: cmp             SP, x16
    //     0x75403c: b.ls            #0x754070
    // 0x754040: LoadField: r1 = r0->field_1b
    //     0x754040: ldur            w1, [x0, #0x1b]
    // 0x754044: DecompressPointer r1
    //     0x754044: add             x1, x1, HEAP, lsl #32
    // 0x754048: r16 = Sentinel
    //     0x754048: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x75404c: cmp             w1, w16
    // 0x754050: b.eq            #0x754078
    // 0x754054: r0 = dispose()
    //     0x754054: bl              #0x4ab398  ; [package:flutter/src/animation/animation_controller.dart] AnimationController::dispose
    // 0x754058: ldur            x1, [fp, #-8]
    // 0x75405c: r0 = dispose()
    //     0x75405c: bl              #0x754084  ; [package:umrem_demo/features/home/screens/profil.dart] __ProfilScreenState&State&SingleTickerProviderStateMixin::dispose
    // 0x754060: r0 = Null
    //     0x754060: mov             x0, NULL
    // 0x754064: LeaveFrame
    //     0x754064: mov             SP, fp
    //     0x754068: ldp             fp, lr, [SP], #0x10
    // 0x75406c: ret
    //     0x75406c: ret             
    // 0x754070: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x754070: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x754074: b               #0x754040
    // 0x754078: r9 = _fadeController
    //     0x754078: add             x9, PP, #0x15, lsl #12  ; [pp+0x15ca0] Field <_ProfilScreenState@936387819._fadeController@936387819>: late (offset: 0x1c)
    //     0x75407c: ldr             x9, [x9, #0xca0]
    // 0x754080: r0 = LateInitializationErrorSharedWithoutFPURegs()
    //     0x754080: bl              #0x928ab8  ; LateInitializationErrorSharedWithoutFPURegsStub
  }
}

// class id: 3196, size: 0xc, field offset: 0xc
//   const constructor, 
class ProfilScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bf100, size: 0x4c
    // 0x7bf100: EnterFrame
    //     0x7bf100: stp             fp, lr, [SP, #-0x10]!
    //     0x7bf104: mov             fp, SP
    // 0x7bf108: mov             x0, x1
    // 0x7bf10c: r1 = <ProfilScreen>
    //     0x7bf10c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12558] TypeArguments: <ProfilScreen>
    //     0x7bf110: ldr             x1, [x1, #0x558]
    // 0x7bf114: r0 = _ProfilScreenState()
    //     0x7bf114: bl              #0x7bf14c  ; Allocate_ProfilScreenStateStub -> _ProfilScreenState (size=0x38)
    // 0x7bf118: r1 = Sentinel
    //     0x7bf118: ldr             x1, [PP, #0x40]  ; [pp+0x40] Sentinel
    // 0x7bf11c: StoreField: r0->field_1b = r1
    //     0x7bf11c: stur            w1, [x0, #0x1b]
    // 0x7bf120: StoreField: r0->field_1f = r1
    //     0x7bf120: stur            w1, [x0, #0x1f]
    // 0x7bf124: StoreField: r0->field_23 = r1
    //     0x7bf124: stur            w1, [x0, #0x23]
    // 0x7bf128: r1 = true
    //     0x7bf128: add             x1, NULL, #0x20  ; true
    // 0x7bf12c: StoreField: r0->field_27 = r1
    //     0x7bf12c: stur            w1, [x0, #0x27]
    // 0x7bf130: StoreField: r0->field_2b = r1
    //     0x7bf130: stur            w1, [x0, #0x2b]
    // 0x7bf134: StoreField: r0->field_2f = r1
    //     0x7bf134: stur            w1, [x0, #0x2f]
    // 0x7bf138: r1 = false
    //     0x7bf138: add             x1, NULL, #0x30  ; false
    // 0x7bf13c: StoreField: r0->field_33 = r1
    //     0x7bf13c: stur            w1, [x0, #0x33]
    // 0x7bf140: LeaveFrame
    //     0x7bf140: mov             SP, fp
    //     0x7bf144: ldp             fp, lr, [SP], #0x10
    // 0x7bf148: ret
    //     0x7bf148: ret             
  }
}
