// lib: , url: package:umrem_demo/features/admin/widgets/trips/trips_tab.dart

// class id: 1049560, size: 0x8
class :: {
}

// class id: 2912, size: 0x14, field offset: 0xc
//   const constructor, 
class TripsTab extends StatelessWidget {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6dfa38, size: 0x5c
    // 0x6dfa38: EnterFrame
    //     0x6dfa38: stp             fp, lr, [SP, #-0x10]!
    //     0x6dfa3c: mov             fp, SP
    // 0x6dfa40: AllocStack(0x18)
    //     0x6dfa40: sub             SP, SP, #0x18
    // 0x6dfa44: SetupParameters([dynamic _ /* r0 */])
    //     0x6dfa44: ldr             x0, [fp, #0x10]
    //     0x6dfa48: ldur            w1, [x0, #0x17]
    //     0x6dfa4c: add             x1, x1, HEAP, lsl #32
    // 0x6dfa50: CheckStackOverflow
    //     0x6dfa50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dfa54: cmp             SP, x16
    //     0x6dfa58: b.ls            #0x6dfa8c
    // 0x6dfa5c: LoadField: r0 = r1->field_f
    //     0x6dfa5c: ldur            w0, [x1, #0xf]
    // 0x6dfa60: DecompressPointer r0
    //     0x6dfa60: add             x0, x0, HEAP, lsl #32
    // 0x6dfa64: r16 = <bool>
    //     0x6dfa64: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x6dfa68: stp             x0, x16, [SP, #8]
    // 0x6dfa6c: r16 = true
    //     0x6dfa6c: add             x16, NULL, #0x20  ; true
    // 0x6dfa70: str             x16, [SP]
    // 0x6dfa74: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6dfa74: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6dfa78: r0 = pop()
    //     0x6dfa78: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6dfa7c: r0 = Null
    //     0x6dfa7c: mov             x0, NULL
    // 0x6dfa80: LeaveFrame
    //     0x6dfa80: mov             SP, fp
    //     0x6dfa84: ldp             fp, lr, [SP], #0x10
    // 0x6dfa88: ret
    //     0x6dfa88: ret             
    // 0x6dfa8c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dfa8c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dfa90: b               #0x6dfa5c
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6dfa94, size: 0x1d0
    // 0x6dfa94: EnterFrame
    //     0x6dfa94: stp             fp, lr, [SP, #-0x10]!
    //     0x6dfa98: mov             fp, SP
    // 0x6dfa9c: AllocStack(0x30)
    //     0x6dfa9c: sub             SP, SP, #0x30
    // 0x6dfaa0: SetupParameters([dynamic _ /* r0 */])
    //     0x6dfaa0: ldr             x0, [fp, #0x18]
    //     0x6dfaa4: ldur            w1, [x0, #0x17]
    //     0x6dfaa8: add             x1, x1, HEAP, lsl #32
    //     0x6dfaac: stur            x1, [fp, #-8]
    // 0x6dfab0: CheckStackOverflow
    //     0x6dfab0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dfab4: cmp             SP, x16
    //     0x6dfab8: b.ls            #0x6dfc5c
    // 0x6dfabc: r1 = 1
    //     0x6dfabc: mov             x1, #1
    // 0x6dfac0: r0 = AllocateContext()
    //     0x6dfac0: bl              #0x927010  ; AllocateContextStub
    // 0x6dfac4: mov             x3, x0
    // 0x6dfac8: ldur            x0, [fp, #-8]
    // 0x6dfacc: stur            x3, [fp, #-0x10]
    // 0x6dfad0: StoreField: r3->field_b = r0
    //     0x6dfad0: stur            w0, [x3, #0xb]
    // 0x6dfad4: ldr             x1, [fp, #0x10]
    // 0x6dfad8: StoreField: r3->field_f = r1
    //     0x6dfad8: stur            w1, [x3, #0xf]
    // 0x6dfadc: r1 = Null
    //     0x6dfadc: mov             x1, NULL
    // 0x6dfae0: r2 = 6
    //     0x6dfae0: mov             x2, #6
    // 0x6dfae4: r0 = AllocateArray()
    //     0x6dfae4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dfae8: r16 = "\""
    //     0x6dfae8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc040] "\""
    //     0x6dfaec: ldr             x16, [x16, #0x40]
    // 0x6dfaf0: StoreField: r0->field_f = r16
    //     0x6dfaf0: stur            w16, [x0, #0xf]
    // 0x6dfaf4: ldur            x1, [fp, #-8]
    // 0x6dfaf8: LoadField: r2 = r1->field_f
    //     0x6dfaf8: ldur            w2, [x1, #0xf]
    // 0x6dfafc: DecompressPointer r2
    //     0x6dfafc: add             x2, x2, HEAP, lsl #32
    // 0x6dfb00: LoadField: r1 = r2->field_b
    //     0x6dfb00: ldur            w1, [x2, #0xb]
    // 0x6dfb04: DecompressPointer r1
    //     0x6dfb04: add             x1, x1, HEAP, lsl #32
    // 0x6dfb08: StoreField: r0->field_13 = r1
    //     0x6dfb08: stur            w1, [x0, #0x13]
    // 0x6dfb0c: r16 = "\" seferini silmek istediğinize emin misiniz\? Bu işlem geri alınamaz."
    //     0x6dfb0c: add             x16, PP, #0x14, lsl #12  ; [pp+0x147c0] "\" seferini silmek istediğinize emin misiniz\? Bu işlem geri alınamaz."
    //     0x6dfb10: ldr             x16, [x16, #0x7c0]
    // 0x6dfb14: ArrayStore: r0[0] = r16  ; List_4
    //     0x6dfb14: stur            w16, [x0, #0x17]
    // 0x6dfb18: str             x0, [SP]
    // 0x6dfb1c: r0 = _interpolate()
    //     0x6dfb1c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6dfb20: stur            x0, [fp, #-8]
    // 0x6dfb24: r0 = Text()
    //     0x6dfb24: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6dfb28: mov             x3, x0
    // 0x6dfb2c: ldur            x0, [fp, #-8]
    // 0x6dfb30: stur            x3, [fp, #-0x18]
    // 0x6dfb34: StoreField: r3->field_b = r0
    //     0x6dfb34: stur            w0, [x3, #0xb]
    // 0x6dfb38: ldur            x2, [fp, #-0x10]
    // 0x6dfb3c: r1 = Function '<anonymous closure>':.
    //     0x6dfb3c: add             x1, PP, #0x14, lsl #12  ; [pp+0x147c8] AnonymousClosure: (0x6dfc64), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6dfb40: ldr             x1, [x1, #0x7c8]
    // 0x6dfb44: r0 = AllocateClosure()
    //     0x6dfb44: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6dfb48: stur            x0, [fp, #-8]
    // 0x6dfb4c: r0 = TextButton()
    //     0x6dfb4c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6dfb50: mov             x1, x0
    // 0x6dfb54: ldur            x0, [fp, #-8]
    // 0x6dfb58: stur            x1, [fp, #-0x20]
    // 0x6dfb5c: StoreField: r1->field_b = r0
    //     0x6dfb5c: stur            w0, [x1, #0xb]
    // 0x6dfb60: r0 = false
    //     0x6dfb60: add             x0, NULL, #0x30  ; false
    // 0x6dfb64: StoreField: r1->field_27 = r0
    //     0x6dfb64: stur            w0, [x1, #0x27]
    // 0x6dfb68: r2 = true
    //     0x6dfb68: add             x2, NULL, #0x20  ; true
    // 0x6dfb6c: StoreField: r1->field_2f = r2
    //     0x6dfb6c: stur            w2, [x1, #0x2f]
    // 0x6dfb70: r3 = Instance_Text
    //     0x6dfb70: add             x3, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x6dfb74: ldr             x3, [x3, #0x7d0]
    // 0x6dfb78: StoreField: r1->field_37 = r3
    //     0x6dfb78: stur            w3, [x1, #0x37]
    // 0x6dfb7c: r16 = Instance_MaterialColor
    //     0x6dfb7c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x6dfb80: ldr             x16, [x16, #0xb90]
    // 0x6dfb84: str             x16, [SP]
    // 0x6dfb88: r4 = const [0, 0x1, 0x1, 0, foregroundColor, 0, null]
    //     0x6dfb88: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb8] List(7) [0, 0x1, 0x1, 0, "foregroundColor", 0, Null]
    //     0x6dfb8c: ldr             x4, [x4, #0xbb8]
    // 0x6dfb90: r0 = styleFrom()
    //     0x6dfb90: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x6dfb94: ldur            x2, [fp, #-0x10]
    // 0x6dfb98: r1 = Function '<anonymous closure>':.
    //     0x6dfb98: add             x1, PP, #0x14, lsl #12  ; [pp+0x147d8] AnonymousClosure: (0x6dfa38), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6dfb9c: ldr             x1, [x1, #0x7d8]
    // 0x6dfba0: stur            x0, [fp, #-8]
    // 0x6dfba4: r0 = AllocateClosure()
    //     0x6dfba4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6dfba8: stur            x0, [fp, #-0x10]
    // 0x6dfbac: r0 = TextButton()
    //     0x6dfbac: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6dfbb0: mov             x3, x0
    // 0x6dfbb4: ldur            x0, [fp, #-0x10]
    // 0x6dfbb8: stur            x3, [fp, #-0x28]
    // 0x6dfbbc: StoreField: r3->field_b = r0
    //     0x6dfbbc: stur            w0, [x3, #0xb]
    // 0x6dfbc0: ldur            x0, [fp, #-8]
    // 0x6dfbc4: StoreField: r3->field_1b = r0
    //     0x6dfbc4: stur            w0, [x3, #0x1b]
    // 0x6dfbc8: r0 = false
    //     0x6dfbc8: add             x0, NULL, #0x30  ; false
    // 0x6dfbcc: StoreField: r3->field_27 = r0
    //     0x6dfbcc: stur            w0, [x3, #0x27]
    // 0x6dfbd0: r1 = true
    //     0x6dfbd0: add             x1, NULL, #0x20  ; true
    // 0x6dfbd4: StoreField: r3->field_2f = r1
    //     0x6dfbd4: stur            w1, [x3, #0x2f]
    // 0x6dfbd8: r1 = Instance_Text
    //     0x6dfbd8: add             x1, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x6dfbdc: ldr             x1, [x1, #0x7e0]
    // 0x6dfbe0: StoreField: r3->field_37 = r1
    //     0x6dfbe0: stur            w1, [x3, #0x37]
    // 0x6dfbe4: r1 = Null
    //     0x6dfbe4: mov             x1, NULL
    // 0x6dfbe8: r2 = 4
    //     0x6dfbe8: mov             x2, #4
    // 0x6dfbec: r0 = AllocateArray()
    //     0x6dfbec: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6dfbf0: mov             x2, x0
    // 0x6dfbf4: ldur            x0, [fp, #-0x20]
    // 0x6dfbf8: stur            x2, [fp, #-8]
    // 0x6dfbfc: StoreField: r2->field_f = r0
    //     0x6dfbfc: stur            w0, [x2, #0xf]
    // 0x6dfc00: ldur            x0, [fp, #-0x28]
    // 0x6dfc04: StoreField: r2->field_13 = r0
    //     0x6dfc04: stur            w0, [x2, #0x13]
    // 0x6dfc08: r1 = <Widget>
    //     0x6dfc08: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6dfc0c: r0 = AllocateGrowableArray()
    //     0x6dfc0c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6dfc10: mov             x1, x0
    // 0x6dfc14: ldur            x0, [fp, #-8]
    // 0x6dfc18: stur            x1, [fp, #-0x10]
    // 0x6dfc1c: StoreField: r1->field_f = r0
    //     0x6dfc1c: stur            w0, [x1, #0xf]
    // 0x6dfc20: r0 = 4
    //     0x6dfc20: mov             x0, #4
    // 0x6dfc24: StoreField: r1->field_b = r0
    //     0x6dfc24: stur            w0, [x1, #0xb]
    // 0x6dfc28: r0 = AlertDialog()
    //     0x6dfc28: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6dfc2c: r1 = Instance_Text
    //     0x6dfc2c: add             x1, PP, #0x14, lsl #12  ; [pp+0x147e8] Obj!Text@a1b6d1
    //     0x6dfc30: ldr             x1, [x1, #0x7e8]
    // 0x6dfc34: StoreField: r0->field_f = r1
    //     0x6dfc34: stur            w1, [x0, #0xf]
    // 0x6dfc38: ldur            x1, [fp, #-0x18]
    // 0x6dfc3c: StoreField: r0->field_1b = r1
    //     0x6dfc3c: stur            w1, [x0, #0x1b]
    // 0x6dfc40: ldur            x1, [fp, #-0x10]
    // 0x6dfc44: StoreField: r0->field_27 = r1
    //     0x6dfc44: stur            w1, [x0, #0x27]
    // 0x6dfc48: r1 = false
    //     0x6dfc48: add             x1, NULL, #0x30  ; false
    // 0x6dfc4c: StoreField: r0->field_6b = r1
    //     0x6dfc4c: stur            w1, [x0, #0x6b]
    // 0x6dfc50: LeaveFrame
    //     0x6dfc50: mov             SP, fp
    //     0x6dfc54: ldp             fp, lr, [SP], #0x10
    // 0x6dfc58: ret
    //     0x6dfc58: ret             
    // 0x6dfc5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dfc5c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dfc60: b               #0x6dfabc
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6dfc64, size: 0x5c
    // 0x6dfc64: EnterFrame
    //     0x6dfc64: stp             fp, lr, [SP, #-0x10]!
    //     0x6dfc68: mov             fp, SP
    // 0x6dfc6c: AllocStack(0x18)
    //     0x6dfc6c: sub             SP, SP, #0x18
    // 0x6dfc70: SetupParameters([dynamic _ /* r0 */])
    //     0x6dfc70: ldr             x0, [fp, #0x10]
    //     0x6dfc74: ldur            w1, [x0, #0x17]
    //     0x6dfc78: add             x1, x1, HEAP, lsl #32
    // 0x6dfc7c: CheckStackOverflow
    //     0x6dfc7c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dfc80: cmp             SP, x16
    //     0x6dfc84: b.ls            #0x6dfcb8
    // 0x6dfc88: LoadField: r0 = r1->field_f
    //     0x6dfc88: ldur            w0, [x1, #0xf]
    // 0x6dfc8c: DecompressPointer r0
    //     0x6dfc8c: add             x0, x0, HEAP, lsl #32
    // 0x6dfc90: r16 = <bool>
    //     0x6dfc90: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x6dfc94: stp             x0, x16, [SP, #8]
    // 0x6dfc98: r16 = false
    //     0x6dfc98: add             x16, NULL, #0x30  ; false
    // 0x6dfc9c: str             x16, [SP]
    // 0x6dfca0: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6dfca0: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6dfca4: r0 = pop()
    //     0x6dfca4: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6dfca8: r0 = Null
    //     0x6dfca8: mov             x0, NULL
    // 0x6dfcac: LeaveFrame
    //     0x6dfcac: mov             SP, fp
    //     0x6dfcb0: ldp             fp, lr, [SP], #0x10
    // 0x6dfcb4: ret
    //     0x6dfcb4: ret             
    // 0x6dfcb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dfcb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dfcbc: b               #0x6dfc88
  }
  _ _confirmDelete(/* No info */) async {
    // ** addr: 0x6dfcc0, size: 0xec
    // 0x6dfcc0: EnterFrame
    //     0x6dfcc0: stp             fp, lr, [SP, #-0x10]!
    //     0x6dfcc4: mov             fp, SP
    // 0x6dfcc8: AllocStack(0x48)
    //     0x6dfcc8: sub             SP, SP, #0x48
    // 0x6dfccc: SetupParameters(TripsTab this /* r1 => r0, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r1, fp-0x20 */, dynamic _ /* r5 => r5, fp-0x28 */)
    //     0x6dfccc: stur            NULL, [fp, #-8]
    //     0x6dfcd0: mov             x0, x1
    //     0x6dfcd4: stur            x1, [fp, #-0x10]
    //     0x6dfcd8: mov             x1, x3
    //     0x6dfcdc: stur            x2, [fp, #-0x18]
    //     0x6dfce0: stur            x3, [fp, #-0x20]
    //     0x6dfce4: stur            x5, [fp, #-0x28]
    // 0x6dfce8: CheckStackOverflow
    //     0x6dfce8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6dfcec: cmp             SP, x16
    //     0x6dfcf0: b.ls            #0x6dfda4
    // 0x6dfcf4: r1 = 1
    //     0x6dfcf4: mov             x1, #1
    // 0x6dfcf8: r0 = AllocateContext()
    //     0x6dfcf8: bl              #0x927010  ; AllocateContextStub
    // 0x6dfcfc: mov             x1, x0
    // 0x6dfd00: ldur            x0, [fp, #-0x28]
    // 0x6dfd04: stur            x1, [fp, #-0x30]
    // 0x6dfd08: StoreField: r1->field_f = r0
    //     0x6dfd08: stur            w0, [x1, #0xf]
    // 0x6dfd0c: InitAsync() -> Future<void?>
    //     0x6dfd0c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6dfd10: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6dfd14: ldur            x2, [fp, #-0x30]
    // 0x6dfd18: r1 = Function '<anonymous closure>':.
    //     0x6dfd18: add             x1, PP, #0x14, lsl #12  ; [pp+0x147b8] AnonymousClosure: (0x6dfa94), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6dfd1c: ldr             x1, [x1, #0x7b8]
    // 0x6dfd20: r0 = AllocateClosure()
    //     0x6dfd20: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6dfd24: r16 = <bool>
    //     0x6dfd24: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x6dfd28: stp             x0, x16, [SP, #8]
    // 0x6dfd2c: ldur            x16, [fp, #-0x18]
    // 0x6dfd30: str             x16, [SP]
    // 0x6dfd34: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6dfd34: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6dfd38: r0 = showDialog()
    //     0x6dfd38: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6dfd3c: mov             x1, x0
    // 0x6dfd40: stur            x1, [fp, #-0x18]
    // 0x6dfd44: r0 = Await()
    //     0x6dfd44: bl              #0x3dd188  ; AwaitStub
    // 0x6dfd48: r1 = 60
    //     0x6dfd48: mov             x1, #0x3c
    // 0x6dfd4c: branchIfSmi(r0, 0x6dfd58)
    //     0x6dfd4c: tbz             w0, #0, #0x6dfd58
    // 0x6dfd50: r1 = LoadClassIdInstr(r0)
    //     0x6dfd50: ldur            x1, [x0, #-1]
    //     0x6dfd54: ubfx            x1, x1, #0xc, #0x14
    // 0x6dfd58: r16 = true
    //     0x6dfd58: add             x16, NULL, #0x20  ; true
    // 0x6dfd5c: stp             x16, x0, [SP]
    // 0x6dfd60: mov             x0, x1
    // 0x6dfd64: mov             lr, x0
    // 0x6dfd68: ldr             lr, [x21, lr, lsl #3]
    // 0x6dfd6c: blr             lr
    // 0x6dfd70: tbnz            w0, #4, #0x6dfd9c
    // 0x6dfd74: ldur            x0, [fp, #-0x30]
    // 0x6dfd78: LoadField: r1 = r0->field_f
    //     0x6dfd78: ldur            w1, [x0, #0xf]
    // 0x6dfd7c: DecompressPointer r1
    //     0x6dfd7c: add             x1, x1, HEAP, lsl #32
    // 0x6dfd80: LoadField: r2 = r1->field_7
    //     0x6dfd80: ldur            w2, [x1, #7]
    // 0x6dfd84: DecompressPointer r2
    //     0x6dfd84: add             x2, x2, HEAP, lsl #32
    // 0x6dfd88: ldur            x1, [fp, #-0x20]
    // 0x6dfd8c: r0 = deleteTrip()
    //     0x6dfd8c: bl              #0x6d6de0  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::deleteTrip
    // 0x6dfd90: mov             x1, x0
    // 0x6dfd94: stur            x1, [fp, #-0x10]
    // 0x6dfd98: r0 = Await()
    //     0x6dfd98: bl              #0x3dd188  ; AwaitStub
    // 0x6dfd9c: r0 = Null
    //     0x6dfd9c: mov             x0, NULL
    // 0x6dfda0: r0 = ReturnAsyncNotFuture()
    //     0x6dfda0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6dfda4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6dfda4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6dfda8: b               #0x6dfcf4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6e1690, size: 0x5c
    // 0x6e1690: ldr             x1, [SP]
    // 0x6e1694: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6e1694: ldur            w2, [x1, #0x17]
    // 0x6e1698: DecompressPointer r2
    //     0x6e1698: add             x2, x2, HEAP, lsl #32
    // 0x6e169c: LoadField: r1 = r2->field_f
    //     0x6e169c: ldur            w1, [x2, #0xf]
    // 0x6e16a0: DecompressPointer r1
    //     0x6e16a0: add             x1, x1, HEAP, lsl #32
    // 0x6e16a4: LoadField: r3 = r2->field_b
    //     0x6e16a4: ldur            w3, [x2, #0xb]
    // 0x6e16a8: DecompressPointer r3
    //     0x6e16a8: add             x3, x3, HEAP, lsl #32
    // 0x6e16ac: LoadField: r2 = r3->field_b
    //     0x6e16ac: ldur            w2, [x3, #0xb]
    // 0x6e16b0: DecompressPointer r2
    //     0x6e16b0: add             x2, x2, HEAP, lsl #32
    // 0x6e16b4: LoadField: r3 = r2->field_b
    //     0x6e16b4: ldur            w3, [x2, #0xb]
    // 0x6e16b8: DecompressPointer r3
    //     0x6e16b8: add             x3, x3, HEAP, lsl #32
    // 0x6e16bc: mov             x0, x1
    // 0x6e16c0: StoreField: r3->field_27 = r0
    //     0x6e16c0: stur            w0, [x3, #0x27]
    //     0x6e16c4: ldurb           w16, [x3, #-1]
    //     0x6e16c8: ldurb           w17, [x0, #-1]
    //     0x6e16cc: and             x16, x17, x16, lsr #2
    //     0x6e16d0: tst             x16, HEAP, lsr #32
    //     0x6e16d4: b.eq            #0x6e16e4
    //     0x6e16d8: str             lr, [SP, #-8]!
    //     0x6e16dc: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6e16e0: ldr             lr, [SP], #8
    // 0x6e16e4: mov             x0, x1
    // 0x6e16e8: ret
    //     0x6e16e8: ret             
  }
  [closure] void <anonymous closure>(dynamic, DateTime?) {
    // ** addr: 0x6e16ec, size: 0x8c
    // 0x6e16ec: EnterFrame
    //     0x6e16ec: stp             fp, lr, [SP, #-0x10]!
    //     0x6e16f0: mov             fp, SP
    // 0x6e16f4: AllocStack(0x20)
    //     0x6e16f4: sub             SP, SP, #0x20
    // 0x6e16f8: SetupParameters([dynamic _ /* r0 */])
    //     0x6e16f8: ldr             x0, [fp, #0x18]
    //     0x6e16fc: ldur            w1, [x0, #0x17]
    //     0x6e1700: add             x1, x1, HEAP, lsl #32
    //     0x6e1704: stur            x1, [fp, #-8]
    // 0x6e1708: CheckStackOverflow
    //     0x6e1708: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e170c: cmp             SP, x16
    //     0x6e1710: b.ls            #0x6e1770
    // 0x6e1714: r1 = 1
    //     0x6e1714: mov             x1, #1
    // 0x6e1718: r0 = AllocateContext()
    //     0x6e1718: bl              #0x927010  ; AllocateContextStub
    // 0x6e171c: mov             x1, x0
    // 0x6e1720: ldur            x0, [fp, #-8]
    // 0x6e1724: StoreField: r1->field_b = r0
    //     0x6e1724: stur            w0, [x1, #0xb]
    // 0x6e1728: ldr             x2, [fp, #0x10]
    // 0x6e172c: StoreField: r1->field_f = r2
    //     0x6e172c: stur            w2, [x1, #0xf]
    // 0x6e1730: LoadField: r3 = r0->field_13
    //     0x6e1730: ldur            w3, [x0, #0x13]
    // 0x6e1734: DecompressPointer r3
    //     0x6e1734: add             x3, x3, HEAP, lsl #32
    // 0x6e1738: mov             x2, x1
    // 0x6e173c: stur            x3, [fp, #-0x10]
    // 0x6e1740: r1 = Function '<anonymous closure>':.
    //     0x6e1740: add             x1, PP, #0x14, lsl #12  ; [pp+0x14220] AnonymousClosure: (0x6e1690), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e1744: ldr             x1, [x1, #0x220]
    // 0x6e1748: r0 = AllocateClosure()
    //     0x6e1748: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e174c: ldur            x16, [fp, #-0x10]
    // 0x6e1750: stp             x0, x16, [SP]
    // 0x6e1754: ldur            x0, [fp, #-0x10]
    // 0x6e1758: ClosureCall
    //     0x6e1758: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6e175c: ldur            x2, [x0, #0x1f]
    //     0x6e1760: blr             x2
    // 0x6e1764: LeaveFrame
    //     0x6e1764: mov             SP, fp
    //     0x6e1768: ldp             fp, lr, [SP], #0x10
    // 0x6e176c: ret
    //     0x6e176c: ret             
    // 0x6e1770: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e1770: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e1774: b               #0x6e1714
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, (dynamic, (dynamic) => void) => void) {
    // ** addr: 0x6e1778, size: 0xdd0
    // 0x6e1778: EnterFrame
    //     0x6e1778: stp             fp, lr, [SP, #-0x10]!
    //     0x6e177c: mov             fp, SP
    // 0x6e1780: AllocStack(0x80)
    //     0x6e1780: sub             SP, SP, #0x80
    // 0x6e1784: SetupParameters([dynamic _ /* r0 */])
    //     0x6e1784: ldr             x0, [fp, #0x20]
    //     0x6e1788: ldur            w1, [x0, #0x17]
    //     0x6e178c: add             x1, x1, HEAP, lsl #32
    //     0x6e1790: stur            x1, [fp, #-8]
    // 0x6e1794: CheckStackOverflow
    //     0x6e1794: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e1798: cmp             SP, x16
    //     0x6e179c: b.ls            #0x6e2538
    // 0x6e17a0: r1 = 2
    //     0x6e17a0: mov             x1, #2
    // 0x6e17a4: r0 = AllocateContext()
    //     0x6e17a4: bl              #0x927010  ; AllocateContextStub
    // 0x6e17a8: mov             x3, x0
    // 0x6e17ac: ldur            x0, [fp, #-8]
    // 0x6e17b0: stur            x3, [fp, #-0x18]
    // 0x6e17b4: StoreField: r3->field_b = r0
    //     0x6e17b4: stur            w0, [x3, #0xb]
    // 0x6e17b8: ldr             x1, [fp, #0x18]
    // 0x6e17bc: StoreField: r3->field_f = r1
    //     0x6e17bc: stur            w1, [x3, #0xf]
    // 0x6e17c0: ldr             x1, [fp, #0x10]
    // 0x6e17c4: StoreField: r3->field_13 = r1
    //     0x6e17c4: stur            w1, [x3, #0x13]
    // 0x6e17c8: LoadField: r4 = r0->field_b
    //     0x6e17c8: ldur            w4, [x0, #0xb]
    // 0x6e17cc: DecompressPointer r4
    //     0x6e17cc: add             x4, x4, HEAP, lsl #32
    // 0x6e17d0: stur            x4, [fp, #-0x10]
    // 0x6e17d4: LoadField: r1 = r4->field_13
    //     0x6e17d4: ldur            w1, [x4, #0x13]
    // 0x6e17d8: DecompressPointer r1
    //     0x6e17d8: add             x1, x1, HEAP, lsl #32
    // 0x6e17dc: cmp             w1, NULL
    // 0x6e17e0: b.ne            #0x6e17ec
    // 0x6e17e4: r1 = Null
    //     0x6e17e4: mov             x1, NULL
    // 0x6e17e8: b               #0x6e17f8
    // 0x6e17ec: LoadField: r2 = r1->field_1f
    //     0x6e17ec: ldur            w2, [x1, #0x1f]
    // 0x6e17f0: DecompressPointer r2
    //     0x6e17f0: add             x2, x2, HEAP, lsl #32
    // 0x6e17f4: mov             x1, x2
    // 0x6e17f8: cmp             w1, NULL
    // 0x6e17fc: b.ne            #0x6e182c
    // 0x6e1800: r1 = LoadStaticField(0xfe4)
    //     0x6e1800: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6e1804: ldr             x1, [x1, #0x1fc8]
    // 0x6e1808: cmp             w1, NULL
    // 0x6e180c: b.ne            #0x6e1818
    // 0x6e1810: r1 = Null
    //     0x6e1810: mov             x1, NULL
    // 0x6e1814: b               #0x6e1824
    // 0x6e1818: LoadField: r2 = r1->field_4b
    //     0x6e1818: ldur            w2, [x1, #0x4b]
    // 0x6e181c: DecompressPointer r2
    //     0x6e181c: add             x2, x2, HEAP, lsl #32
    // 0x6e1820: mov             x1, x2
    // 0x6e1824: mov             x2, x1
    // 0x6e1828: b               #0x6e1830
    // 0x6e182c: mov             x2, x1
    // 0x6e1830: LoadField: r1 = r4->field_f
    //     0x6e1830: ldur            w1, [x4, #0xf]
    // 0x6e1834: DecompressPointer r1
    //     0x6e1834: add             x1, x1, HEAP, lsl #32
    // 0x6e1838: r0 = getManagerUsersByAgency()
    //     0x6e1838: bl              #0x6e259c  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::getManagerUsersByAgency
    // 0x6e183c: mov             x2, x0
    // 0x6e1840: ldur            x0, [fp, #-8]
    // 0x6e1844: stur            x2, [fp, #-0x20]
    // 0x6e1848: LoadField: r1 = r0->field_f
    //     0x6e1848: ldur            w1, [x0, #0xf]
    // 0x6e184c: DecompressPointer r1
    //     0x6e184c: add             x1, x1, HEAP, lsl #32
    // 0x6e1850: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6e1850: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6e1854: r0 = _of()
    //     0x6e1854: bl              #0x485ba4  ; [package:flutter/src/widgets/media_query.dart] MediaQuery::_of
    // 0x6e1858: LoadField: r1 = r0->field_23
    //     0x6e1858: ldur            w1, [x0, #0x23]
    // 0x6e185c: DecompressPointer r1
    //     0x6e185c: add             x1, x1, HEAP, lsl #32
    // 0x6e1860: LoadField: d0 = r1->field_1f
    //     0x6e1860: ldur            d0, [x1, #0x1f]
    // 0x6e1864: stur            d0, [fp, #-0x60]
    // 0x6e1868: r0 = EdgeInsets()
    //     0x6e1868: bl              #0x409dac  ; AllocateEdgeInsetsStub -> EdgeInsets (size=0x28)
    // 0x6e186c: d0 = 16.000000
    //     0x6e186c: fmov            d0, #16.00000000
    // 0x6e1870: stur            x0, [fp, #-8]
    // 0x6e1874: StoreField: r0->field_7 = d0
    //     0x6e1874: stur            d0, [x0, #7]
    // 0x6e1878: d1 = 20.000000
    //     0x6e1878: fmov            d1, #20.00000000
    // 0x6e187c: StoreField: r0->field_f = d1
    //     0x6e187c: stur            d1, [x0, #0xf]
    // 0x6e1880: ArrayStore: r0[0] = d0  ; List_8
    //     0x6e1880: stur            d0, [x0, #0x17]
    // 0x6e1884: ldur            d0, [fp, #-0x60]
    // 0x6e1888: StoreField: r0->field_1f = d0
    //     0x6e1888: stur            d0, [x0, #0x1f]
    // 0x6e188c: r1 = _ConstMap len:12
    //     0x6e188c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e1890: r2 = 600
    //     0x6e1890: mov             x2, #0x258
    // 0x6e1894: r0 = []()
    //     0x6e1894: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e1898: stur            x0, [fp, #-0x28]
    // 0x6e189c: cmp             w0, NULL
    // 0x6e18a0: b.eq            #0x6e2540
    // 0x6e18a4: r0 = Radius()
    //     0x6e18a4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e18a8: d0 = 20.000000
    //     0x6e18a8: fmov            d0, #20.00000000
    // 0x6e18ac: stur            x0, [fp, #-0x30]
    // 0x6e18b0: StoreField: r0->field_7 = d0
    //     0x6e18b0: stur            d0, [x0, #7]
    // 0x6e18b4: StoreField: r0->field_f = d0
    //     0x6e18b4: stur            d0, [x0, #0xf]
    // 0x6e18b8: r0 = BorderRadius()
    //     0x6e18b8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e18bc: mov             x1, x0
    // 0x6e18c0: ldur            x0, [fp, #-0x30]
    // 0x6e18c4: stur            x1, [fp, #-0x38]
    // 0x6e18c8: StoreField: r1->field_7 = r0
    //     0x6e18c8: stur            w0, [x1, #7]
    // 0x6e18cc: StoreField: r1->field_b = r0
    //     0x6e18cc: stur            w0, [x1, #0xb]
    // 0x6e18d0: StoreField: r1->field_f = r0
    //     0x6e18d0: stur            w0, [x1, #0xf]
    // 0x6e18d4: StoreField: r1->field_13 = r0
    //     0x6e18d4: stur            w0, [x1, #0x13]
    // 0x6e18d8: r0 = BoxDecoration()
    //     0x6e18d8: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e18dc: mov             x1, x0
    // 0x6e18e0: ldur            x0, [fp, #-0x28]
    // 0x6e18e4: stur            x1, [fp, #-0x30]
    // 0x6e18e8: StoreField: r1->field_7 = r0
    //     0x6e18e8: stur            w0, [x1, #7]
    // 0x6e18ec: ldur            x0, [fp, #-0x38]
    // 0x6e18f0: StoreField: r1->field_13 = r0
    //     0x6e18f0: stur            w0, [x1, #0x13]
    // 0x6e18f4: r0 = Instance_BoxShape
    //     0x6e18f4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e18f8: ldr             x0, [x0, #0x1c8]
    // 0x6e18fc: StoreField: r1->field_23 = r0
    //     0x6e18fc: stur            w0, [x1, #0x23]
    // 0x6e1900: r0 = Container()
    //     0x6e1900: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e1904: stur            x0, [fp, #-0x28]
    // 0x6e1908: r16 = 50.000000
    //     0x6e1908: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x6e190c: ldr             x16, [x16, #0xa48]
    // 0x6e1910: r30 = 5.000000
    //     0x6e1910: add             lr, PP, #0x13, lsl #12  ; [pp+0x13a50] 5
    //     0x6e1914: ldr             lr, [lr, #0xa50]
    // 0x6e1918: stp             lr, x16, [SP, #8]
    // 0x6e191c: ldur            x16, [fp, #-0x30]
    // 0x6e1920: str             x16, [SP]
    // 0x6e1924: mov             x1, x0
    // 0x6e1928: r4 = const [0, 0x4, 0x3, 0x1, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x6e1928: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a58] List(11) [0, 0x4, 0x3, 0x1, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x6e192c: ldr             x4, [x4, #0xa58]
    // 0x6e1930: r0 = Container()
    //     0x6e1930: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e1934: r1 = <Widget>
    //     0x6e1934: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e1938: r2 = 32
    //     0x6e1938: mov             x2, #0x20
    // 0x6e193c: r0 = AllocateArray()
    //     0x6e193c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e1940: mov             x1, x0
    // 0x6e1944: ldur            x0, [fp, #-0x28]
    // 0x6e1948: stur            x1, [fp, #-0x38]
    // 0x6e194c: StoreField: r1->field_f = r0
    //     0x6e194c: stur            w0, [x1, #0xf]
    // 0x6e1950: r16 = Instance_SizedBox
    //     0x6e1950: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e1954: ldr             x16, [x16, #0x310]
    // 0x6e1958: StoreField: r1->field_13 = r16
    //     0x6e1958: stur            w16, [x1, #0x13]
    // 0x6e195c: ldur            x0, [fp, #-0x10]
    // 0x6e1960: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x6e1960: ldur            w2, [x0, #0x17]
    // 0x6e1964: DecompressPointer r2
    //     0x6e1964: add             x2, x2, HEAP, lsl #32
    // 0x6e1968: stur            x2, [fp, #-0x30]
    // 0x6e196c: tbnz            w2, #4, #0x6e197c
    // 0x6e1970: r4 = "Sefer Düzenle"
    //     0x6e1970: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a60] "Sefer Düzenle"
    //     0x6e1974: ldr             x4, [x4, #0xa60]
    // 0x6e1978: b               #0x6e1984
    // 0x6e197c: r4 = "Sefer Oluştur"
    //     0x6e197c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a68] "Sefer Oluştur"
    //     0x6e1980: ldr             x4, [x4, #0xa68]
    // 0x6e1984: ldur            x3, [fp, #-0x20]
    // 0x6e1988: stur            x4, [fp, #-0x28]
    // 0x6e198c: r0 = Text()
    //     0x6e198c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e1990: mov             x1, x0
    // 0x6e1994: ldur            x0, [fp, #-0x28]
    // 0x6e1998: StoreField: r1->field_b = r0
    //     0x6e1998: stur            w0, [x1, #0xb]
    // 0x6e199c: r0 = Instance_TextStyle
    //     0x6e199c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a70] Obj!TextStyle@a17831
    //     0x6e19a0: ldr             x0, [x0, #0xa70]
    // 0x6e19a4: StoreField: r1->field_13 = r0
    //     0x6e19a4: stur            w0, [x1, #0x13]
    // 0x6e19a8: mov             x0, x1
    // 0x6e19ac: ldur            x1, [fp, #-0x38]
    // 0x6e19b0: ArrayStore: r1[2] = r0  ; List_4
    //     0x6e19b0: add             x25, x1, #0x17
    //     0x6e19b4: str             w0, [x25]
    //     0x6e19b8: tbz             w0, #0, #0x6e19d4
    //     0x6e19bc: ldurb           w16, [x1, #-1]
    //     0x6e19c0: ldurb           w17, [x0, #-1]
    //     0x6e19c4: and             x16, x17, x16, lsr #2
    //     0x6e19c8: tst             x16, HEAP, lsr #32
    //     0x6e19cc: b.eq            #0x6e19d4
    //     0x6e19d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e19d4: ldur            x0, [fp, #-0x38]
    // 0x6e19d8: r16 = Instance_SizedBox
    //     0x6e19d8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e19dc: ldr             x16, [x16, #0x310]
    // 0x6e19e0: StoreField: r0->field_1b = r16
    //     0x6e19e0: stur            w16, [x0, #0x1b]
    // 0x6e19e4: ldur            x2, [fp, #-0x10]
    // 0x6e19e8: LoadField: r3 = r2->field_1f
    //     0x6e19e8: ldur            w3, [x2, #0x1f]
    // 0x6e19ec: DecompressPointer r3
    //     0x6e19ec: add             x3, x3, HEAP, lsl #32
    // 0x6e19f0: stur            x3, [fp, #-0x28]
    // 0x6e19f4: r1 = <String>
    //     0x6e19f4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e19f8: r0 = TextFormField()
    //     0x6e19f8: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e19fc: r1 = Function '<anonymous closure>':.
    //     0x6e19fc: add             x1, PP, #0x13, lsl #12  ; [pp+0x13a78] AnonymousClosure: (0x6e4790), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e1a00: ldr             x1, [x1, #0xa78]
    // 0x6e1a04: r2 = Null
    //     0x6e1a04: mov             x2, NULL
    // 0x6e1a08: stur            x0, [fp, #-0x40]
    // 0x6e1a0c: r0 = AllocateClosure()
    //     0x6e1a0c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e1a10: str             x0, [SP]
    // 0x6e1a14: ldur            x1, [fp, #-0x40]
    // 0x6e1a18: ldur            x2, [fp, #-0x28]
    // 0x6e1a1c: r3 = Instance_InputDecoration
    //     0x6e1a1c: add             x3, PP, #0x13, lsl #12  ; [pp+0x13a80] Obj!InputDecoration@a0dfd1
    //     0x6e1a20: ldr             x3, [x3, #0xa80]
    // 0x6e1a24: r4 = const [0, 0x4, 0x1, 0x3, validator, 0x3, null]
    //     0x6e1a24: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a88] List(7) [0, 0x4, 0x1, 0x3, "validator", 0x3, Null]
    //     0x6e1a28: ldr             x4, [x4, #0xa88]
    // 0x6e1a2c: r0 = TextFormField()
    //     0x6e1a2c: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e1a30: ldur            x1, [fp, #-0x38]
    // 0x6e1a34: ldur            x0, [fp, #-0x40]
    // 0x6e1a38: ArrayStore: r1[4] = r0  ; List_4
    //     0x6e1a38: add             x25, x1, #0x1f
    //     0x6e1a3c: str             w0, [x25]
    //     0x6e1a40: tbz             w0, #0, #0x6e1a5c
    //     0x6e1a44: ldurb           w16, [x1, #-1]
    //     0x6e1a48: ldurb           w17, [x0, #-1]
    //     0x6e1a4c: and             x16, x17, x16, lsr #2
    //     0x6e1a50: tst             x16, HEAP, lsr #32
    //     0x6e1a54: b.eq            #0x6e1a5c
    //     0x6e1a58: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e1a5c: ldur            x0, [fp, #-0x38]
    // 0x6e1a60: r16 = Instance_SizedBox
    //     0x6e1a60: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e1a64: ldr             x16, [x16, #0x318]
    // 0x6e1a68: StoreField: r0->field_23 = r16
    //     0x6e1a68: stur            w16, [x0, #0x23]
    // 0x6e1a6c: ldur            x3, [fp, #-0x10]
    // 0x6e1a70: LoadField: r4 = r3->field_2f
    //     0x6e1a70: ldur            w4, [x3, #0x2f]
    // 0x6e1a74: DecompressPointer r4
    //     0x6e1a74: add             x4, x4, HEAP, lsl #32
    // 0x6e1a78: ldur            x2, [fp, #-0x18]
    // 0x6e1a7c: stur            x4, [fp, #-0x28]
    // 0x6e1a80: r1 = Function '<anonymous closure>':.
    //     0x6e1a80: add             x1, PP, #0x13, lsl #12  ; [pp+0x13a90] AnonymousClosure: (0x6e46a8), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e1a84: ldr             x1, [x1, #0xa90]
    // 0x6e1a88: r0 = AllocateClosure()
    //     0x6e1a88: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e1a8c: r1 = <String?>
    //     0x6e1a8c: ldr             x1, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    // 0x6e1a90: stur            x0, [fp, #-0x40]
    // 0x6e1a94: r0 = DropdownButtonFormField()
    //     0x6e1a94: bl              #0x6dbbfc  ; AllocateDropdownButtonFormFieldStub -> DropdownButtonFormField<X0> (size=0x34)
    // 0x6e1a98: mov             x1, x0
    // 0x6e1a9c: ldur            x3, [fp, #-0x28]
    // 0x6e1aa0: ldur            x6, [fp, #-0x40]
    // 0x6e1aa4: r2 = Instance_InputDecoration
    //     0x6e1aa4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13a98] Obj!InputDecoration@a0dee1
    //     0x6e1aa8: ldr             x2, [x2, #0xa98]
    // 0x6e1aac: r5 = const [Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>', Instance of 'DropdownMenuItem<String?>']
    //     0x6e1aac: add             x5, PP, #0x13, lsl #12  ; [pp+0x13aa0] List<DropdownMenuItem<String?>>(3)
    //     0x6e1ab0: ldr             x5, [x5, #0xaa0]
    // 0x6e1ab4: stur            x0, [fp, #-0x28]
    // 0x6e1ab8: r4 = const [0, 0x5, 0, 0x5, null]
    //     0x6e1ab8: ldr             x4, [PP, #0xf28]  ; [pp+0xf28] List(5) [0, 0x5, 0, 0x5, Null]
    // 0x6e1abc: r0 = DropdownButtonFormField()
    //     0x6e1abc: bl              #0x6daf98  ; [package:flutter/src/material/dropdown.dart] DropdownButtonFormField::DropdownButtonFormField
    // 0x6e1ac0: ldur            x1, [fp, #-0x38]
    // 0x6e1ac4: ldur            x0, [fp, #-0x28]
    // 0x6e1ac8: ArrayStore: r1[6] = r0  ; List_4
    //     0x6e1ac8: add             x25, x1, #0x27
    //     0x6e1acc: str             w0, [x25]
    //     0x6e1ad0: tbz             w0, #0, #0x6e1aec
    //     0x6e1ad4: ldurb           w16, [x1, #-1]
    //     0x6e1ad8: ldurb           w17, [x0, #-1]
    //     0x6e1adc: and             x16, x17, x16, lsr #2
    //     0x6e1ae0: tst             x16, HEAP, lsr #32
    //     0x6e1ae4: b.eq            #0x6e1aec
    //     0x6e1ae8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e1aec: ldur            x1, [fp, #-0x38]
    // 0x6e1af0: r16 = Instance_SizedBox
    //     0x6e1af0: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e1af4: ldr             x16, [x16, #0x318]
    // 0x6e1af8: StoreField: r1->field_2b = r16
    //     0x6e1af8: stur            w16, [x1, #0x2b]
    // 0x6e1afc: ldur            x0, [fp, #-0x10]
    // 0x6e1b00: LoadField: r2 = r0->field_27
    //     0x6e1b00: ldur            w2, [x0, #0x27]
    // 0x6e1b04: DecompressPointer r2
    //     0x6e1b04: add             x2, x2, HEAP, lsl #32
    // 0x6e1b08: stur            x2, [fp, #-0x28]
    // 0x6e1b0c: r0 = DatePickerField()
    //     0x6e1b0c: bl              #0x6e2590  ; AllocateDatePickerFieldStub -> DatePickerField (size=0x18)
    // 0x6e1b10: mov             x3, x0
    // 0x6e1b14: r0 = "Başlangıç"
    //     0x6e1b14: add             x0, PP, #0x13, lsl #12  ; [pp+0x13aa8] "Başlangıç"
    //     0x6e1b18: ldr             x0, [x0, #0xaa8]
    // 0x6e1b1c: stur            x3, [fp, #-0x40]
    // 0x6e1b20: StoreField: r3->field_b = r0
    //     0x6e1b20: stur            w0, [x3, #0xb]
    // 0x6e1b24: ldur            x0, [fp, #-0x28]
    // 0x6e1b28: StoreField: r3->field_f = r0
    //     0x6e1b28: stur            w0, [x3, #0xf]
    // 0x6e1b2c: ldur            x2, [fp, #-0x18]
    // 0x6e1b30: r1 = Function '<anonymous closure>':.
    //     0x6e1b30: add             x1, PP, #0x13, lsl #12  ; [pp+0x13ab0] AnonymousClosure: (0x6e16ec), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e1b34: ldr             x1, [x1, #0xab0]
    // 0x6e1b38: r0 = AllocateClosure()
    //     0x6e1b38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e1b3c: mov             x1, x0
    // 0x6e1b40: ldur            x0, [fp, #-0x40]
    // 0x6e1b44: StoreField: r0->field_13 = r1
    //     0x6e1b44: stur            w1, [x0, #0x13]
    // 0x6e1b48: r1 = <FlexParentData>
    //     0x6e1b48: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6e1b4c: ldr             x1, [x1, #0x340]
    // 0x6e1b50: r0 = Expanded()
    //     0x6e1b50: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6e1b54: mov             x1, x0
    // 0x6e1b58: r0 = 1
    //     0x6e1b58: mov             x0, #1
    // 0x6e1b5c: stur            x1, [fp, #-0x48]
    // 0x6e1b60: StoreField: r1->field_13 = r0
    //     0x6e1b60: stur            x0, [x1, #0x13]
    // 0x6e1b64: r2 = Instance_FlexFit
    //     0x6e1b64: add             x2, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6e1b68: ldr             x2, [x2, #0x348]
    // 0x6e1b6c: StoreField: r1->field_1b = r2
    //     0x6e1b6c: stur            w2, [x1, #0x1b]
    // 0x6e1b70: ldur            x3, [fp, #-0x40]
    // 0x6e1b74: StoreField: r1->field_b = r3
    //     0x6e1b74: stur            w3, [x1, #0xb]
    // 0x6e1b78: ldur            x3, [fp, #-0x10]
    // 0x6e1b7c: LoadField: r4 = r3->field_2b
    //     0x6e1b7c: ldur            w4, [x3, #0x2b]
    // 0x6e1b80: DecompressPointer r4
    //     0x6e1b80: add             x4, x4, HEAP, lsl #32
    // 0x6e1b84: stur            x4, [fp, #-0x28]
    // 0x6e1b88: r0 = DatePickerField()
    //     0x6e1b88: bl              #0x6e2590  ; AllocateDatePickerFieldStub -> DatePickerField (size=0x18)
    // 0x6e1b8c: mov             x3, x0
    // 0x6e1b90: r0 = "Bitiş"
    //     0x6e1b90: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ab8] "Bitiş"
    //     0x6e1b94: ldr             x0, [x0, #0xab8]
    // 0x6e1b98: stur            x3, [fp, #-0x40]
    // 0x6e1b9c: StoreField: r3->field_b = r0
    //     0x6e1b9c: stur            w0, [x3, #0xb]
    // 0x6e1ba0: ldur            x0, [fp, #-0x28]
    // 0x6e1ba4: StoreField: r3->field_f = r0
    //     0x6e1ba4: stur            w0, [x3, #0xf]
    // 0x6e1ba8: ldur            x2, [fp, #-0x18]
    // 0x6e1bac: r1 = Function '<anonymous closure>':.
    //     0x6e1bac: add             x1, PP, #0x13, lsl #12  ; [pp+0x13ac0] AnonymousClosure: (0x6e4538), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e1bb0: ldr             x1, [x1, #0xac0]
    // 0x6e1bb4: r0 = AllocateClosure()
    //     0x6e1bb4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e1bb8: mov             x1, x0
    // 0x6e1bbc: ldur            x0, [fp, #-0x40]
    // 0x6e1bc0: StoreField: r0->field_13 = r1
    //     0x6e1bc0: stur            w1, [x0, #0x13]
    // 0x6e1bc4: r1 = <FlexParentData>
    //     0x6e1bc4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6e1bc8: ldr             x1, [x1, #0x340]
    // 0x6e1bcc: r0 = Expanded()
    //     0x6e1bcc: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6e1bd0: mov             x3, x0
    // 0x6e1bd4: r0 = 1
    //     0x6e1bd4: mov             x0, #1
    // 0x6e1bd8: stur            x3, [fp, #-0x28]
    // 0x6e1bdc: StoreField: r3->field_13 = r0
    //     0x6e1bdc: stur            x0, [x3, #0x13]
    // 0x6e1be0: r0 = Instance_FlexFit
    //     0x6e1be0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6e1be4: ldr             x0, [x0, #0x348]
    // 0x6e1be8: StoreField: r3->field_1b = r0
    //     0x6e1be8: stur            w0, [x3, #0x1b]
    // 0x6e1bec: ldur            x0, [fp, #-0x40]
    // 0x6e1bf0: StoreField: r3->field_b = r0
    //     0x6e1bf0: stur            w0, [x3, #0xb]
    // 0x6e1bf4: r1 = Null
    //     0x6e1bf4: mov             x1, NULL
    // 0x6e1bf8: r2 = 6
    //     0x6e1bf8: mov             x2, #6
    // 0x6e1bfc: r0 = AllocateArray()
    //     0x6e1bfc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e1c00: mov             x2, x0
    // 0x6e1c04: ldur            x0, [fp, #-0x48]
    // 0x6e1c08: stur            x2, [fp, #-0x40]
    // 0x6e1c0c: StoreField: r2->field_f = r0
    //     0x6e1c0c: stur            w0, [x2, #0xf]
    // 0x6e1c10: r16 = Instance_SizedBox
    //     0x6e1c10: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x6e1c14: ldr             x16, [x16, #0x360]
    // 0x6e1c18: StoreField: r2->field_13 = r16
    //     0x6e1c18: stur            w16, [x2, #0x13]
    // 0x6e1c1c: ldur            x0, [fp, #-0x28]
    // 0x6e1c20: ArrayStore: r2[0] = r0  ; List_4
    //     0x6e1c20: stur            w0, [x2, #0x17]
    // 0x6e1c24: r1 = <Widget>
    //     0x6e1c24: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e1c28: r0 = AllocateGrowableArray()
    //     0x6e1c28: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e1c2c: mov             x1, x0
    // 0x6e1c30: ldur            x0, [fp, #-0x40]
    // 0x6e1c34: stur            x1, [fp, #-0x28]
    // 0x6e1c38: StoreField: r1->field_f = r0
    //     0x6e1c38: stur            w0, [x1, #0xf]
    // 0x6e1c3c: r0 = 6
    //     0x6e1c3c: mov             x0, #6
    // 0x6e1c40: StoreField: r1->field_b = r0
    //     0x6e1c40: stur            w0, [x1, #0xb]
    // 0x6e1c44: r0 = Row()
    //     0x6e1c44: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6e1c48: r2 = Instance_Axis
    //     0x6e1c48: ldr             x2, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e1c4c: StoreField: r0->field_f = r2
    //     0x6e1c4c: stur            w2, [x0, #0xf]
    // 0x6e1c50: r3 = Instance_MainAxisAlignment
    //     0x6e1c50: add             x3, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e1c54: ldr             x3, [x3, #0x230]
    // 0x6e1c58: StoreField: r0->field_13 = r3
    //     0x6e1c58: stur            w3, [x0, #0x13]
    // 0x6e1c5c: r4 = Instance_MainAxisSize
    //     0x6e1c5c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e1c60: ldr             x4, [x4, #0x330]
    // 0x6e1c64: ArrayStore: r0[0] = r4  ; List_4
    //     0x6e1c64: stur            w4, [x0, #0x17]
    // 0x6e1c68: r5 = Instance_CrossAxisAlignment
    //     0x6e1c68: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e1c6c: ldr             x5, [x5, #0x338]
    // 0x6e1c70: StoreField: r0->field_1b = r5
    //     0x6e1c70: stur            w5, [x0, #0x1b]
    // 0x6e1c74: r6 = Instance_VerticalDirection
    //     0x6e1c74: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e1c78: ldr             x6, [x6, #0x340]
    // 0x6e1c7c: StoreField: r0->field_23 = r6
    //     0x6e1c7c: stur            w6, [x0, #0x23]
    // 0x6e1c80: r7 = Instance_Clip
    //     0x6e1c80: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e1c84: ldr             x7, [x7, #0x348]
    // 0x6e1c88: StoreField: r0->field_2b = r7
    //     0x6e1c88: stur            w7, [x0, #0x2b]
    // 0x6e1c8c: StoreField: r0->field_2f = rZR
    //     0x6e1c8c: stur            xzr, [x0, #0x2f]
    // 0x6e1c90: ldur            x1, [fp, #-0x28]
    // 0x6e1c94: StoreField: r0->field_b = r1
    //     0x6e1c94: stur            w1, [x0, #0xb]
    // 0x6e1c98: ldur            x1, [fp, #-0x38]
    // 0x6e1c9c: ArrayStore: r1[8] = r0  ; List_4
    //     0x6e1c9c: add             x25, x1, #0x2f
    //     0x6e1ca0: str             w0, [x25]
    //     0x6e1ca4: tbz             w0, #0, #0x6e1cc0
    //     0x6e1ca8: ldurb           w16, [x1, #-1]
    //     0x6e1cac: ldurb           w17, [x0, #-1]
    //     0x6e1cb0: and             x16, x17, x16, lsr #2
    //     0x6e1cb4: tst             x16, HEAP, lsr #32
    //     0x6e1cb8: b.eq            #0x6e1cc0
    //     0x6e1cbc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e1cc0: ldur            x0, [fp, #-0x38]
    // 0x6e1cc4: r16 = Instance_SizedBox
    //     0x6e1cc4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e1cc8: ldr             x16, [x16, #0x318]
    // 0x6e1ccc: StoreField: r0->field_33 = r16
    //     0x6e1ccc: stur            w16, [x0, #0x33]
    // 0x6e1cd0: ldur            x8, [fp, #-0x10]
    // 0x6e1cd4: LoadField: r9 = r8->field_23
    //     0x6e1cd4: ldur            w9, [x8, #0x23]
    // 0x6e1cd8: DecompressPointer r9
    //     0x6e1cd8: add             x9, x9, HEAP, lsl #32
    // 0x6e1cdc: stur            x9, [fp, #-0x28]
    // 0x6e1ce0: r1 = <String>
    //     0x6e1ce0: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e1ce4: r0 = TextFormField()
    //     0x6e1ce4: bl              #0x687de4  ; AllocateTextFormFieldStub -> TextFormField (size=0x34)
    // 0x6e1ce8: stur            x0, [fp, #-0x40]
    // 0x6e1cec: r16 = 4
    //     0x6e1cec: mov             x16, #4
    // 0x6e1cf0: str             x16, [SP]
    // 0x6e1cf4: mov             x1, x0
    // 0x6e1cf8: ldur            x2, [fp, #-0x28]
    // 0x6e1cfc: r3 = Instance_InputDecoration
    //     0x6e1cfc: add             x3, PP, #0x13, lsl #12  ; [pp+0x13ac8] Obj!InputDecoration@a0ddf1
    //     0x6e1d00: ldr             x3, [x3, #0xac8]
    // 0x6e1d04: r4 = const [0, 0x4, 0x1, 0x3, maxLines, 0x3, null]
    //     0x6e1d04: add             x4, PP, #0x13, lsl #12  ; [pp+0x13ad0] List(7) [0, 0x4, 0x1, 0x3, "maxLines", 0x3, Null]
    //     0x6e1d08: ldr             x4, [x4, #0xad0]
    // 0x6e1d0c: r0 = TextFormField()
    //     0x6e1d0c: bl              #0x683704  ; [package:flutter/src/material/text_form_field.dart] TextFormField::TextFormField
    // 0x6e1d10: ldur            x1, [fp, #-0x38]
    // 0x6e1d14: ldur            x0, [fp, #-0x40]
    // 0x6e1d18: ArrayStore: r1[10] = r0  ; List_4
    //     0x6e1d18: add             x25, x1, #0x37
    //     0x6e1d1c: str             w0, [x25]
    //     0x6e1d20: tbz             w0, #0, #0x6e1d3c
    //     0x6e1d24: ldurb           w16, [x1, #-1]
    //     0x6e1d28: ldurb           w17, [x0, #-1]
    //     0x6e1d2c: and             x16, x17, x16, lsr #2
    //     0x6e1d30: tst             x16, HEAP, lsr #32
    //     0x6e1d34: b.eq            #0x6e1d3c
    //     0x6e1d38: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e1d3c: ldur            x0, [fp, #-0x38]
    // 0x6e1d40: r16 = Instance_SizedBox
    //     0x6e1d40: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e1d44: ldr             x16, [x16, #0x310]
    // 0x6e1d48: StoreField: r0->field_3b = r16
    //     0x6e1d48: stur            w16, [x0, #0x3b]
    // 0x6e1d4c: r1 = _ConstMap len:12
    //     0x6e1d4c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e1d50: r2 = 600
    //     0x6e1d50: mov             x2, #0x258
    // 0x6e1d54: r0 = []()
    //     0x6e1d54: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e1d58: cmp             w0, NULL
    // 0x6e1d5c: b.eq            #0x6e2544
    // 0x6e1d60: str             x0, [SP]
    // 0x6e1d64: r1 = Null
    //     0x6e1d64: mov             x1, NULL
    // 0x6e1d68: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6e1d68: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6e1d6c: ldr             x4, [x4, #0x788]
    // 0x6e1d70: r0 = Border.all()
    //     0x6e1d70: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6e1d74: stur            x0, [fp, #-0x28]
    // 0x6e1d78: r0 = Radius()
    //     0x6e1d78: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e1d7c: d0 = 12.000000
    //     0x6e1d7c: fmov            d0, #12.00000000
    // 0x6e1d80: stur            x0, [fp, #-0x40]
    // 0x6e1d84: StoreField: r0->field_7 = d0
    //     0x6e1d84: stur            d0, [x0, #7]
    // 0x6e1d88: StoreField: r0->field_f = d0
    //     0x6e1d88: stur            d0, [x0, #0xf]
    // 0x6e1d8c: r0 = BorderRadius()
    //     0x6e1d8c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e1d90: mov             x1, x0
    // 0x6e1d94: ldur            x0, [fp, #-0x40]
    // 0x6e1d98: stur            x1, [fp, #-0x48]
    // 0x6e1d9c: StoreField: r1->field_7 = r0
    //     0x6e1d9c: stur            w0, [x1, #7]
    // 0x6e1da0: StoreField: r1->field_b = r0
    //     0x6e1da0: stur            w0, [x1, #0xb]
    // 0x6e1da4: StoreField: r1->field_f = r0
    //     0x6e1da4: stur            w0, [x1, #0xf]
    // 0x6e1da8: StoreField: r1->field_13 = r0
    //     0x6e1da8: stur            w0, [x1, #0x13]
    // 0x6e1dac: r0 = BoxDecoration()
    //     0x6e1dac: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6e1db0: mov             x3, x0
    // 0x6e1db4: ldur            x0, [fp, #-0x28]
    // 0x6e1db8: stur            x3, [fp, #-0x40]
    // 0x6e1dbc: StoreField: r3->field_f = r0
    //     0x6e1dbc: stur            w0, [x3, #0xf]
    // 0x6e1dc0: ldur            x0, [fp, #-0x48]
    // 0x6e1dc4: StoreField: r3->field_13 = r0
    //     0x6e1dc4: stur            w0, [x3, #0x13]
    // 0x6e1dc8: r0 = Instance_BoxShape
    //     0x6e1dc8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6e1dcc: ldr             x0, [x0, #0x1c8]
    // 0x6e1dd0: StoreField: r3->field_23 = r0
    //     0x6e1dd0: stur            w0, [x3, #0x23]
    // 0x6e1dd4: ldur            x0, [fp, #-0x10]
    // 0x6e1dd8: LoadField: r1 = r0->field_33
    //     0x6e1dd8: ldur            w1, [x0, #0x33]
    // 0x6e1ddc: DecompressPointer r1
    //     0x6e1ddc: add             x1, x1, HEAP, lsl #32
    // 0x6e1de0: LoadField: r4 = r1->field_b
    //     0x6e1de0: ldur            w4, [x1, #0xb]
    // 0x6e1de4: stur            x4, [fp, #-0x28]
    // 0x6e1de8: r1 = Null
    //     0x6e1de8: mov             x1, NULL
    // 0x6e1dec: r2 = 4
    //     0x6e1dec: mov             x2, #4
    // 0x6e1df0: r0 = AllocateArray()
    //     0x6e1df0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e1df4: mov             x1, x0
    // 0x6e1df8: ldur            x0, [fp, #-0x28]
    // 0x6e1dfc: StoreField: r1->field_f = r0
    //     0x6e1dfc: stur            w0, [x1, #0xf]
    // 0x6e1e00: r16 = " seçili"
    //     0x6e1e00: add             x16, PP, #0x13, lsl #12  ; [pp+0x13ad8] " seçili"
    //     0x6e1e04: ldr             x16, [x16, #0xad8]
    // 0x6e1e08: StoreField: r1->field_13 = r16
    //     0x6e1e08: stur            w16, [x1, #0x13]
    // 0x6e1e0c: str             x1, [SP]
    // 0x6e1e10: r0 = _interpolate()
    //     0x6e1e10: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6e1e14: r1 = Instance_MaterialColor
    //     0x6e1e14: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6e1e18: ldr             x1, [x1, #0xbc8]
    // 0x6e1e1c: stur            x0, [fp, #-0x28]
    // 0x6e1e20: r0 = shade600()
    //     0x6e1e20: bl              #0x6d154c  ; [package:flutter/src/material/colors.dart] MaterialColor::shade600
    // 0x6e1e24: stur            x0, [fp, #-0x48]
    // 0x6e1e28: r0 = TextStyle()
    //     0x6e1e28: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e1e2c: mov             x1, x0
    // 0x6e1e30: r0 = true
    //     0x6e1e30: add             x0, NULL, #0x20  ; true
    // 0x6e1e34: stur            x1, [fp, #-0x50]
    // 0x6e1e38: StoreField: r1->field_7 = r0
    //     0x6e1e38: stur            w0, [x1, #7]
    // 0x6e1e3c: ldur            x2, [fp, #-0x48]
    // 0x6e1e40: StoreField: r1->field_b = r2
    //     0x6e1e40: stur            w2, [x1, #0xb]
    // 0x6e1e44: r2 = 12.000000
    //     0x6e1e44: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x6e1e48: ldr             x2, [x2, #0xae0]
    // 0x6e1e4c: StoreField: r1->field_1f = r2
    //     0x6e1e4c: stur            w2, [x1, #0x1f]
    // 0x6e1e50: r0 = Text()
    //     0x6e1e50: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e1e54: mov             x3, x0
    // 0x6e1e58: ldur            x0, [fp, #-0x28]
    // 0x6e1e5c: stur            x3, [fp, #-0x48]
    // 0x6e1e60: StoreField: r3->field_b = r0
    //     0x6e1e60: stur            w0, [x3, #0xb]
    // 0x6e1e64: ldur            x0, [fp, #-0x50]
    // 0x6e1e68: StoreField: r3->field_13 = r0
    //     0x6e1e68: stur            w0, [x3, #0x13]
    // 0x6e1e6c: r1 = Null
    //     0x6e1e6c: mov             x1, NULL
    // 0x6e1e70: r2 = 10
    //     0x6e1e70: mov             x2, #0xa
    // 0x6e1e74: r0 = AllocateArray()
    //     0x6e1e74: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e1e78: stur            x0, [fp, #-0x28]
    // 0x6e1e7c: r16 = Instance_Icon
    //     0x6e1e7c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13ae8] Obj!Icon@a1e371
    //     0x6e1e80: ldr             x16, [x16, #0xae8]
    // 0x6e1e84: StoreField: r0->field_f = r16
    //     0x6e1e84: stur            w16, [x0, #0xf]
    // 0x6e1e88: r16 = Instance_SizedBox
    //     0x6e1e88: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x6e1e8c: ldr             x16, [x16, #0x368]
    // 0x6e1e90: StoreField: r0->field_13 = r16
    //     0x6e1e90: stur            w16, [x0, #0x13]
    // 0x6e1e94: r16 = Instance_Text
    //     0x6e1e94: add             x16, PP, #0x13, lsl #12  ; [pp+0x13af0] Obj!Text@a1b721
    //     0x6e1e98: ldr             x16, [x16, #0xaf0]
    // 0x6e1e9c: ArrayStore: r0[0] = r16  ; List_4
    //     0x6e1e9c: stur            w16, [x0, #0x17]
    // 0x6e1ea0: r16 = Instance_Spacer
    //     0x6e1ea0: add             x16, PP, #0x13, lsl #12  ; [pp+0x13af8] Obj!Spacer@a1de91
    //     0x6e1ea4: ldr             x16, [x16, #0xaf8]
    // 0x6e1ea8: StoreField: r0->field_1b = r16
    //     0x6e1ea8: stur            w16, [x0, #0x1b]
    // 0x6e1eac: ldur            x1, [fp, #-0x48]
    // 0x6e1eb0: StoreField: r0->field_1f = r1
    //     0x6e1eb0: stur            w1, [x0, #0x1f]
    // 0x6e1eb4: r1 = <Widget>
    //     0x6e1eb4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e1eb8: r0 = AllocateGrowableArray()
    //     0x6e1eb8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e1ebc: mov             x1, x0
    // 0x6e1ec0: ldur            x0, [fp, #-0x28]
    // 0x6e1ec4: stur            x1, [fp, #-0x48]
    // 0x6e1ec8: StoreField: r1->field_f = r0
    //     0x6e1ec8: stur            w0, [x1, #0xf]
    // 0x6e1ecc: r0 = 10
    //     0x6e1ecc: mov             x0, #0xa
    // 0x6e1ed0: StoreField: r1->field_b = r0
    //     0x6e1ed0: stur            w0, [x1, #0xb]
    // 0x6e1ed4: r0 = Row()
    //     0x6e1ed4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6e1ed8: mov             x3, x0
    // 0x6e1edc: r0 = Instance_Axis
    //     0x6e1edc: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e1ee0: stur            x3, [fp, #-0x28]
    // 0x6e1ee4: StoreField: r3->field_f = r0
    //     0x6e1ee4: stur            w0, [x3, #0xf]
    // 0x6e1ee8: r4 = Instance_MainAxisAlignment
    //     0x6e1ee8: add             x4, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e1eec: ldr             x4, [x4, #0x230]
    // 0x6e1ef0: StoreField: r3->field_13 = r4
    //     0x6e1ef0: stur            w4, [x3, #0x13]
    // 0x6e1ef4: r5 = Instance_MainAxisSize
    //     0x6e1ef4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e1ef8: ldr             x5, [x5, #0x330]
    // 0x6e1efc: ArrayStore: r3[0] = r5  ; List_4
    //     0x6e1efc: stur            w5, [x3, #0x17]
    // 0x6e1f00: r6 = Instance_CrossAxisAlignment
    //     0x6e1f00: add             x6, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e1f04: ldr             x6, [x6, #0x338]
    // 0x6e1f08: StoreField: r3->field_1b = r6
    //     0x6e1f08: stur            w6, [x3, #0x1b]
    // 0x6e1f0c: r7 = Instance_VerticalDirection
    //     0x6e1f0c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e1f10: ldr             x7, [x7, #0x340]
    // 0x6e1f14: StoreField: r3->field_23 = r7
    //     0x6e1f14: stur            w7, [x3, #0x23]
    // 0x6e1f18: r8 = Instance_Clip
    //     0x6e1f18: add             x8, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e1f1c: ldr             x8, [x8, #0x348]
    // 0x6e1f20: StoreField: r3->field_2b = r8
    //     0x6e1f20: stur            w8, [x3, #0x2b]
    // 0x6e1f24: StoreField: r3->field_2f = rZR
    //     0x6e1f24: stur            xzr, [x3, #0x2f]
    // 0x6e1f28: ldur            x1, [fp, #-0x48]
    // 0x6e1f2c: StoreField: r3->field_b = r1
    //     0x6e1f2c: stur            w1, [x3, #0xb]
    // 0x6e1f30: r1 = Null
    //     0x6e1f30: mov             x1, NULL
    // 0x6e1f34: r2 = 4
    //     0x6e1f34: mov             x2, #4
    // 0x6e1f38: r0 = AllocateArray()
    //     0x6e1f38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6e1f3c: mov             x2, x0
    // 0x6e1f40: ldur            x0, [fp, #-0x28]
    // 0x6e1f44: stur            x2, [fp, #-0x48]
    // 0x6e1f48: StoreField: r2->field_f = r0
    //     0x6e1f48: stur            w0, [x2, #0xf]
    // 0x6e1f4c: r16 = Instance_SizedBox
    //     0x6e1f4c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x6e1f50: ldr             x16, [x16, #0x318]
    // 0x6e1f54: StoreField: r2->field_13 = r16
    //     0x6e1f54: stur            w16, [x2, #0x13]
    // 0x6e1f58: r1 = <Widget>
    //     0x6e1f58: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e1f5c: r0 = AllocateGrowableArray()
    //     0x6e1f5c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e1f60: mov             x2, x0
    // 0x6e1f64: ldur            x0, [fp, #-0x48]
    // 0x6e1f68: stur            x2, [fp, #-0x28]
    // 0x6e1f6c: StoreField: r2->field_f = r0
    //     0x6e1f6c: stur            w0, [x2, #0xf]
    // 0x6e1f70: r0 = 4
    //     0x6e1f70: mov             x0, #4
    // 0x6e1f74: StoreField: r2->field_b = r0
    //     0x6e1f74: stur            w0, [x2, #0xb]
    // 0x6e1f78: ldur            x0, [fp, #-0x20]
    // 0x6e1f7c: LoadField: r1 = r0->field_b
    //     0x6e1f7c: ldur            w1, [x0, #0xb]
    // 0x6e1f80: cbnz            w1, #0x6e207c
    // 0x6e1f84: r1 = Instance_MaterialColor
    //     0x6e1f84: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6e1f88: ldr             x1, [x1, #0xbc8]
    // 0x6e1f8c: r0 = shade500()
    //     0x6e1f8c: bl              #0x6e2548  ; [package:flutter/src/material/colors.dart] MaterialColor::shade500
    // 0x6e1f90: stur            x0, [fp, #-0x48]
    // 0x6e1f94: r0 = TextStyle()
    //     0x6e1f94: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e1f98: mov             x1, x0
    // 0x6e1f9c: r0 = true
    //     0x6e1f9c: add             x0, NULL, #0x20  ; true
    // 0x6e1fa0: stur            x1, [fp, #-0x50]
    // 0x6e1fa4: StoreField: r1->field_7 = r0
    //     0x6e1fa4: stur            w0, [x1, #7]
    // 0x6e1fa8: ldur            x2, [fp, #-0x48]
    // 0x6e1fac: StoreField: r1->field_b = r2
    //     0x6e1fac: stur            w2, [x1, #0xb]
    // 0x6e1fb0: r2 = 13.000000
    //     0x6e1fb0: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x6e1fb4: ldr             x2, [x2, #0xb00]
    // 0x6e1fb8: StoreField: r1->field_1f = r2
    //     0x6e1fb8: stur            w2, [x1, #0x1f]
    // 0x6e1fbc: r0 = Text()
    //     0x6e1fbc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e1fc0: mov             x1, x0
    // 0x6e1fc4: r0 = "Yönetici tipinde kullanıcı bulunamadı."
    //     0x6e1fc4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b08] "Yönetici tipinde kullanıcı bulunamadı."
    //     0x6e1fc8: ldr             x0, [x0, #0xb08]
    // 0x6e1fcc: stur            x1, [fp, #-0x48]
    // 0x6e1fd0: StoreField: r1->field_b = r0
    //     0x6e1fd0: stur            w0, [x1, #0xb]
    // 0x6e1fd4: ldur            x0, [fp, #-0x50]
    // 0x6e1fd8: StoreField: r1->field_13 = r0
    //     0x6e1fd8: stur            w0, [x1, #0x13]
    // 0x6e1fdc: r0 = Padding()
    //     0x6e1fdc: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6e1fe0: mov             x2, x0
    // 0x6e1fe4: r0 = Instance_EdgeInsets
    //     0x6e1fe4: add             x0, PP, #0xc, lsl #12  ; [pp+0xca98] Obj!EdgeInsets@a0bde1
    //     0x6e1fe8: ldr             x0, [x0, #0xa98]
    // 0x6e1fec: stur            x2, [fp, #-0x50]
    // 0x6e1ff0: StoreField: r2->field_f = r0
    //     0x6e1ff0: stur            w0, [x2, #0xf]
    // 0x6e1ff4: ldur            x0, [fp, #-0x48]
    // 0x6e1ff8: StoreField: r2->field_b = r0
    //     0x6e1ff8: stur            w0, [x2, #0xb]
    // 0x6e1ffc: ldur            x0, [fp, #-0x28]
    // 0x6e2000: LoadField: r1 = r0->field_b
    //     0x6e2000: ldur            w1, [x0, #0xb]
    // 0x6e2004: LoadField: r3 = r0->field_f
    //     0x6e2004: ldur            w3, [x0, #0xf]
    // 0x6e2008: DecompressPointer r3
    //     0x6e2008: add             x3, x3, HEAP, lsl #32
    // 0x6e200c: LoadField: r4 = r3->field_b
    //     0x6e200c: ldur            w4, [x3, #0xb]
    // 0x6e2010: r3 = LoadInt32Instr(r1)
    //     0x6e2010: sbfx            x3, x1, #1, #0x1f
    // 0x6e2014: stur            x3, [fp, #-0x58]
    // 0x6e2018: r1 = LoadInt32Instr(r4)
    //     0x6e2018: sbfx            x1, x4, #1, #0x1f
    // 0x6e201c: cmp             x3, x1
    // 0x6e2020: b.ne            #0x6e202c
    // 0x6e2024: mov             x1, x0
    // 0x6e2028: r0 = _growToNextCapacity()
    //     0x6e2028: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e202c: ldur            x3, [fp, #-0x28]
    // 0x6e2030: ldur            x2, [fp, #-0x58]
    // 0x6e2034: add             x0, x2, #1
    // 0x6e2038: lsl             x1, x0, #1
    // 0x6e203c: StoreField: r3->field_b = r1
    //     0x6e203c: stur            w1, [x3, #0xb]
    // 0x6e2040: LoadField: r1 = r3->field_f
    //     0x6e2040: ldur            w1, [x3, #0xf]
    // 0x6e2044: DecompressPointer r1
    //     0x6e2044: add             x1, x1, HEAP, lsl #32
    // 0x6e2048: ldur            x0, [fp, #-0x50]
    // 0x6e204c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6e204c: add             x25, x1, x2, lsl #2
    //     0x6e2050: add             x25, x25, #0xf
    //     0x6e2054: str             w0, [x25]
    //     0x6e2058: tbz             w0, #0, #0x6e2074
    //     0x6e205c: ldurb           w16, [x1, #-1]
    //     0x6e2060: ldurb           w17, [x0, #-1]
    //     0x6e2064: and             x16, x17, x16, lsr #2
    //     0x6e2068: tst             x16, HEAP, lsr #32
    //     0x6e206c: b.eq            #0x6e2074
    //     0x6e2070: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e2074: mov             x2, x3
    // 0x6e2078: b               #0x6e2194
    // 0x6e207c: mov             x3, x2
    // 0x6e2080: ldur            x2, [fp, #-0x18]
    // 0x6e2084: r1 = Function '<anonymous closure>':.
    //     0x6e2084: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b10] AnonymousClosure: (0x6e40e0), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e2088: ldr             x1, [x1, #0xb10]
    // 0x6e208c: r0 = AllocateClosure()
    //     0x6e208c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e2090: r16 = <FilterChip>
    //     0x6e2090: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b18] TypeArguments: <FilterChip>
    //     0x6e2094: ldr             x16, [x16, #0xb18]
    // 0x6e2098: ldur            lr, [fp, #-0x20]
    // 0x6e209c: stp             lr, x16, [SP, #8]
    // 0x6e20a0: str             x0, [SP]
    // 0x6e20a4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6e20a4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6e20a8: r0 = map()
    //     0x6e20a8: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6e20ac: LoadField: r1 = r0->field_7
    //     0x6e20ac: ldur            w1, [x0, #7]
    // 0x6e20b0: DecompressPointer r1
    //     0x6e20b0: add             x1, x1, HEAP, lsl #32
    // 0x6e20b4: mov             x2, x0
    // 0x6e20b8: r0 = _GrowableList.of()
    //     0x6e20b8: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6e20bc: stur            x0, [fp, #-0x20]
    // 0x6e20c0: r0 = Wrap()
    //     0x6e20c0: bl              #0x69a5b8  ; AllocateWrapStub -> Wrap (size=0x3c)
    // 0x6e20c4: mov             x2, x0
    // 0x6e20c8: r0 = Instance_Axis
    //     0x6e20c8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6e20cc: stur            x2, [fp, #-0x48]
    // 0x6e20d0: StoreField: r2->field_f = r0
    //     0x6e20d0: stur            w0, [x2, #0xf]
    // 0x6e20d4: r0 = Instance_WrapAlignment
    //     0x6e20d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x6e20d8: ldr             x0, [x0, #0x7d8]
    // 0x6e20dc: StoreField: r2->field_13 = r0
    //     0x6e20dc: stur            w0, [x2, #0x13]
    // 0x6e20e0: d0 = 8.000000
    //     0x6e20e0: fmov            d0, #8.00000000
    // 0x6e20e4: ArrayStore: r2[0] = d0  ; List_8
    //     0x6e20e4: stur            d0, [x2, #0x17]
    // 0x6e20e8: StoreField: r2->field_1f = r0
    //     0x6e20e8: stur            w0, [x2, #0x1f]
    // 0x6e20ec: StoreField: r2->field_23 = d0
    //     0x6e20ec: stur            d0, [x2, #0x23]
    // 0x6e20f0: r0 = Instance_WrapCrossAlignment
    //     0x6e20f0: add             x0, PP, #0x12, lsl #12  ; [pp+0x127e0] Obj!WrapCrossAlignment@a2a1b1
    //     0x6e20f4: ldr             x0, [x0, #0x7e0]
    // 0x6e20f8: StoreField: r2->field_2b = r0
    //     0x6e20f8: stur            w0, [x2, #0x2b]
    // 0x6e20fc: r0 = Instance_VerticalDirection
    //     0x6e20fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e2100: ldr             x0, [x0, #0x340]
    // 0x6e2104: StoreField: r2->field_33 = r0
    //     0x6e2104: stur            w0, [x2, #0x33]
    // 0x6e2108: r3 = Instance_Clip
    //     0x6e2108: add             x3, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e210c: ldr             x3, [x3, #0x348]
    // 0x6e2110: StoreField: r2->field_37 = r3
    //     0x6e2110: stur            w3, [x2, #0x37]
    // 0x6e2114: ldur            x1, [fp, #-0x20]
    // 0x6e2118: StoreField: r2->field_b = r1
    //     0x6e2118: stur            w1, [x2, #0xb]
    // 0x6e211c: ldur            x4, [fp, #-0x28]
    // 0x6e2120: LoadField: r1 = r4->field_b
    //     0x6e2120: ldur            w1, [x4, #0xb]
    // 0x6e2124: LoadField: r5 = r4->field_f
    //     0x6e2124: ldur            w5, [x4, #0xf]
    // 0x6e2128: DecompressPointer r5
    //     0x6e2128: add             x5, x5, HEAP, lsl #32
    // 0x6e212c: LoadField: r6 = r5->field_b
    //     0x6e212c: ldur            w6, [x5, #0xb]
    // 0x6e2130: r5 = LoadInt32Instr(r1)
    //     0x6e2130: sbfx            x5, x1, #1, #0x1f
    // 0x6e2134: stur            x5, [fp, #-0x58]
    // 0x6e2138: r1 = LoadInt32Instr(r6)
    //     0x6e2138: sbfx            x1, x6, #1, #0x1f
    // 0x6e213c: cmp             x5, x1
    // 0x6e2140: b.ne            #0x6e214c
    // 0x6e2144: mov             x1, x4
    // 0x6e2148: r0 = _growToNextCapacity()
    //     0x6e2148: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e214c: ldur            x2, [fp, #-0x28]
    // 0x6e2150: ldur            x3, [fp, #-0x58]
    // 0x6e2154: add             x0, x3, #1
    // 0x6e2158: lsl             x1, x0, #1
    // 0x6e215c: StoreField: r2->field_b = r1
    //     0x6e215c: stur            w1, [x2, #0xb]
    // 0x6e2160: LoadField: r1 = r2->field_f
    //     0x6e2160: ldur            w1, [x2, #0xf]
    // 0x6e2164: DecompressPointer r1
    //     0x6e2164: add             x1, x1, HEAP, lsl #32
    // 0x6e2168: ldur            x0, [fp, #-0x48]
    // 0x6e216c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6e216c: add             x25, x1, x3, lsl #2
    //     0x6e2170: add             x25, x25, #0xf
    //     0x6e2174: str             w0, [x25]
    //     0x6e2178: tbz             w0, #0, #0x6e2194
    //     0x6e217c: ldurb           w16, [x1, #-1]
    //     0x6e2180: ldurb           w17, [x0, #-1]
    //     0x6e2184: and             x16, x17, x16, lsr #2
    //     0x6e2188: tst             x16, HEAP, lsr #32
    //     0x6e218c: b.eq            #0x6e2194
    //     0x6e2190: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e2194: ldur            x0, [fp, #-0x10]
    // 0x6e2198: ldur            x1, [fp, #-0x38]
    // 0x6e219c: r0 = Column()
    //     0x6e219c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e21a0: mov             x1, x0
    // 0x6e21a4: r0 = Instance_Axis
    //     0x6e21a4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e21a8: stur            x1, [fp, #-0x20]
    // 0x6e21ac: StoreField: r1->field_f = r0
    //     0x6e21ac: stur            w0, [x1, #0xf]
    // 0x6e21b0: r2 = Instance_MainAxisAlignment
    //     0x6e21b0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e21b4: ldr             x2, [x2, #0x230]
    // 0x6e21b8: StoreField: r1->field_13 = r2
    //     0x6e21b8: stur            w2, [x1, #0x13]
    // 0x6e21bc: r3 = Instance_MainAxisSize
    //     0x6e21bc: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6e21c0: ldr             x3, [x3, #0x330]
    // 0x6e21c4: ArrayStore: r1[0] = r3  ; List_4
    //     0x6e21c4: stur            w3, [x1, #0x17]
    // 0x6e21c8: r3 = Instance_CrossAxisAlignment
    //     0x6e21c8: add             x3, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6e21cc: ldr             x3, [x3, #0x238]
    // 0x6e21d0: StoreField: r1->field_1b = r3
    //     0x6e21d0: stur            w3, [x1, #0x1b]
    // 0x6e21d4: r3 = Instance_VerticalDirection
    //     0x6e21d4: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e21d8: ldr             x3, [x3, #0x340]
    // 0x6e21dc: StoreField: r1->field_23 = r3
    //     0x6e21dc: stur            w3, [x1, #0x23]
    // 0x6e21e0: r4 = Instance_Clip
    //     0x6e21e0: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e21e4: ldr             x4, [x4, #0x348]
    // 0x6e21e8: StoreField: r1->field_2b = r4
    //     0x6e21e8: stur            w4, [x1, #0x2b]
    // 0x6e21ec: StoreField: r1->field_2f = rZR
    //     0x6e21ec: stur            xzr, [x1, #0x2f]
    // 0x6e21f0: ldur            x5, [fp, #-0x28]
    // 0x6e21f4: StoreField: r1->field_b = r5
    //     0x6e21f4: stur            w5, [x1, #0xb]
    // 0x6e21f8: r0 = Container()
    //     0x6e21f8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6e21fc: stur            x0, [fp, #-0x28]
    // 0x6e2200: r16 = inf
    //     0x6e2200: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6e2204: ldr             x16, [x16, #0xb20]
    // 0x6e2208: r30 = Instance_EdgeInsets
    //     0x6e2208: add             lr, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x6e220c: ldr             lr, [lr, #0x370]
    // 0x6e2210: stp             lr, x16, [SP, #0x10]
    // 0x6e2214: ldur            x16, [fp, #-0x40]
    // 0x6e2218: ldur            lr, [fp, #-0x20]
    // 0x6e221c: stp             lr, x16, [SP]
    // 0x6e2220: mov             x1, x0
    // 0x6e2224: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, padding, 0x2, width, 0x1, null]
    //     0x6e2224: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b28] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "padding", 0x2, "width", 0x1, Null]
    //     0x6e2228: ldr             x4, [x4, #0xb28]
    // 0x6e222c: r0 = Container()
    //     0x6e222c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6e2230: ldur            x1, [fp, #-0x38]
    // 0x6e2234: ldur            x0, [fp, #-0x28]
    // 0x6e2238: ArrayStore: r1[12] = r0  ; List_4
    //     0x6e2238: add             x25, x1, #0x3f
    //     0x6e223c: str             w0, [x25]
    //     0x6e2240: tbz             w0, #0, #0x6e225c
    //     0x6e2244: ldurb           w16, [x1, #-1]
    //     0x6e2248: ldurb           w17, [x0, #-1]
    //     0x6e224c: and             x16, x17, x16, lsr #2
    //     0x6e2250: tst             x16, HEAP, lsr #32
    //     0x6e2254: b.eq            #0x6e225c
    //     0x6e2258: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e225c: ldur            x0, [fp, #-0x38]
    // 0x6e2260: r16 = Instance_SizedBox
    //     0x6e2260: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x6e2264: ldr             x16, [x16, #0x310]
    // 0x6e2268: StoreField: r0->field_43 = r16
    //     0x6e2268: stur            w16, [x0, #0x43]
    // 0x6e226c: ldur            x3, [fp, #-0x10]
    // 0x6e2270: LoadField: r1 = r3->field_f
    //     0x6e2270: ldur            w1, [x3, #0xf]
    // 0x6e2274: DecompressPointer r1
    //     0x6e2274: add             x1, x1, HEAP, lsl #32
    // 0x6e2278: LoadField: r2 = r1->field_2b
    //     0x6e2278: ldur            w2, [x1, #0x2b]
    // 0x6e227c: DecompressPointer r2
    //     0x6e227c: add             x2, x2, HEAP, lsl #32
    // 0x6e2280: tbnz            w2, #4, #0x6e2290
    // 0x6e2284: mov             x0, x3
    // 0x6e2288: r1 = Null
    //     0x6e2288: mov             x1, NULL
    // 0x6e228c: b               #0x6e22a8
    // 0x6e2290: ldur            x2, [fp, #-0x18]
    // 0x6e2294: r1 = Function '<anonymous closure>':.
    //     0x6e2294: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b30] AnonymousClosure: (0x6e27e0), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e2298: ldr             x1, [x1, #0xb30]
    // 0x6e229c: r0 = AllocateClosure()
    //     0x6e229c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e22a0: mov             x1, x0
    // 0x6e22a4: ldur            x0, [fp, #-0x10]
    // 0x6e22a8: stur            x1, [fp, #-0x18]
    // 0x6e22ac: r0 = Radius()
    //     0x6e22ac: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e22b0: d0 = 12.000000
    //     0x6e22b0: fmov            d0, #12.00000000
    // 0x6e22b4: stur            x0, [fp, #-0x20]
    // 0x6e22b8: StoreField: r0->field_7 = d0
    //     0x6e22b8: stur            d0, [x0, #7]
    // 0x6e22bc: StoreField: r0->field_f = d0
    //     0x6e22bc: stur            d0, [x0, #0xf]
    // 0x6e22c0: r0 = BorderRadius()
    //     0x6e22c0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e22c4: mov             x1, x0
    // 0x6e22c8: ldur            x0, [fp, #-0x20]
    // 0x6e22cc: stur            x1, [fp, #-0x28]
    // 0x6e22d0: StoreField: r1->field_7 = r0
    //     0x6e22d0: stur            w0, [x1, #7]
    // 0x6e22d4: StoreField: r1->field_b = r0
    //     0x6e22d4: stur            w0, [x1, #0xb]
    // 0x6e22d8: StoreField: r1->field_f = r0
    //     0x6e22d8: stur            w0, [x1, #0xf]
    // 0x6e22dc: StoreField: r1->field_13 = r0
    //     0x6e22dc: stur            w0, [x1, #0x13]
    // 0x6e22e0: r0 = RoundedRectangleBorder()
    //     0x6e22e0: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6e22e4: mov             x1, x0
    // 0x6e22e8: ldur            x0, [fp, #-0x28]
    // 0x6e22ec: StoreField: r1->field_b = r0
    //     0x6e22ec: stur            w0, [x1, #0xb]
    // 0x6e22f0: r0 = Instance_BorderSide
    //     0x6e22f0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6e22f4: ldr             x0, [x0, #0xcb8]
    // 0x6e22f8: StoreField: r1->field_7 = r0
    //     0x6e22f8: stur            w0, [x1, #7]
    // 0x6e22fc: r16 = Instance_Color
    //     0x6e22fc: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6e2300: ldr             x16, [x16, #0xb78]
    // 0x6e2304: r30 = Instance_Color
    //     0x6e2304: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e2308: stp             lr, x16, [SP, #0x10]
    // 0x6e230c: r16 = Instance_EdgeInsets
    //     0x6e230c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b38] Obj!EdgeInsets@a0c081
    //     0x6e2310: ldr             x16, [x16, #0xb38]
    // 0x6e2314: stp             x1, x16, [SP]
    // 0x6e2318: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x6e2318: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x6e231c: ldr             x4, [x4, #0xbb0]
    // 0x6e2320: r0 = styleFrom()
    //     0x6e2320: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x6e2324: mov             x1, x0
    // 0x6e2328: ldur            x0, [fp, #-0x10]
    // 0x6e232c: stur            x1, [fp, #-0x28]
    // 0x6e2330: LoadField: r2 = r0->field_f
    //     0x6e2330: ldur            w2, [x0, #0xf]
    // 0x6e2334: DecompressPointer r2
    //     0x6e2334: add             x2, x2, HEAP, lsl #32
    // 0x6e2338: LoadField: r3 = r2->field_2b
    //     0x6e2338: ldur            w3, [x2, #0x2b]
    // 0x6e233c: DecompressPointer r3
    //     0x6e233c: add             x3, x3, HEAP, lsl #32
    // 0x6e2340: tbnz            w3, #4, #0x6e2350
    // 0x6e2344: r5 = "Kaydediliyor..."
    //     0x6e2344: add             x5, PP, #0x13, lsl #12  ; [pp+0x13b40] "Kaydediliyor..."
    //     0x6e2348: ldr             x5, [x5, #0xb40]
    // 0x6e234c: b               #0x6e2370
    // 0x6e2350: ldur            x2, [fp, #-0x30]
    // 0x6e2354: tbnz            w2, #4, #0x6e2364
    // 0x6e2358: r2 = "Güncelle"
    //     0x6e2358: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b48] "Güncelle"
    //     0x6e235c: ldr             x2, [x2, #0xb48]
    // 0x6e2360: b               #0x6e236c
    // 0x6e2364: r2 = "Kaydet"
    //     0x6e2364: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x6e2368: ldr             x2, [x2, #0xb50]
    // 0x6e236c: mov             x5, x2
    // 0x6e2370: ldur            x4, [fp, #-8]
    // 0x6e2374: ldur            x3, [fp, #-0x38]
    // 0x6e2378: ldur            x2, [fp, #-0x18]
    // 0x6e237c: stur            x5, [fp, #-0x20]
    // 0x6e2380: r0 = Text()
    //     0x6e2380: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e2384: mov             x1, x0
    // 0x6e2388: ldur            x0, [fp, #-0x20]
    // 0x6e238c: stur            x1, [fp, #-0x30]
    // 0x6e2390: StoreField: r1->field_b = r0
    //     0x6e2390: stur            w0, [x1, #0xb]
    // 0x6e2394: r0 = ElevatedButton()
    //     0x6e2394: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x6e2398: mov             x1, x0
    // 0x6e239c: ldur            x0, [fp, #-0x18]
    // 0x6e23a0: stur            x1, [fp, #-0x20]
    // 0x6e23a4: StoreField: r1->field_b = r0
    //     0x6e23a4: stur            w0, [x1, #0xb]
    // 0x6e23a8: ldur            x0, [fp, #-0x28]
    // 0x6e23ac: StoreField: r1->field_1b = r0
    //     0x6e23ac: stur            w0, [x1, #0x1b]
    // 0x6e23b0: r0 = false
    //     0x6e23b0: add             x0, NULL, #0x30  ; false
    // 0x6e23b4: StoreField: r1->field_27 = r0
    //     0x6e23b4: stur            w0, [x1, #0x27]
    // 0x6e23b8: r2 = true
    //     0x6e23b8: add             x2, NULL, #0x20  ; true
    // 0x6e23bc: StoreField: r1->field_2f = r2
    //     0x6e23bc: stur            w2, [x1, #0x2f]
    // 0x6e23c0: ldur            x2, [fp, #-0x30]
    // 0x6e23c4: StoreField: r1->field_37 = r2
    //     0x6e23c4: stur            w2, [x1, #0x37]
    // 0x6e23c8: r0 = SizedBox()
    //     0x6e23c8: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x6e23cc: mov             x1, x0
    // 0x6e23d0: r0 = inf
    //     0x6e23d0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b20] inf
    //     0x6e23d4: ldr             x0, [x0, #0xb20]
    // 0x6e23d8: StoreField: r1->field_f = r0
    //     0x6e23d8: stur            w0, [x1, #0xf]
    // 0x6e23dc: ldur            x0, [fp, #-0x20]
    // 0x6e23e0: StoreField: r1->field_b = r0
    //     0x6e23e0: stur            w0, [x1, #0xb]
    // 0x6e23e4: mov             x0, x1
    // 0x6e23e8: ldur            x1, [fp, #-0x38]
    // 0x6e23ec: ArrayStore: r1[14] = r0  ; List_4
    //     0x6e23ec: add             x25, x1, #0x47
    //     0x6e23f0: str             w0, [x25]
    //     0x6e23f4: tbz             w0, #0, #0x6e2410
    //     0x6e23f8: ldurb           w16, [x1, #-1]
    //     0x6e23fc: ldurb           w17, [x0, #-1]
    //     0x6e2400: and             x16, x17, x16, lsr #2
    //     0x6e2404: tst             x16, HEAP, lsr #32
    //     0x6e2408: b.eq            #0x6e2410
    //     0x6e240c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e2410: ldur            x0, [fp, #-0x38]
    // 0x6e2414: r16 = Instance_SizedBox
    //     0x6e2414: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b58] Obj!SizedBox@a1faf1
    //     0x6e2418: ldr             x16, [x16, #0xb58]
    // 0x6e241c: StoreField: r0->field_4b = r16
    //     0x6e241c: stur            w16, [x0, #0x4b]
    // 0x6e2420: r1 = <Widget>
    //     0x6e2420: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6e2424: r0 = AllocateGrowableArray()
    //     0x6e2424: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6e2428: mov             x1, x0
    // 0x6e242c: ldur            x0, [fp, #-0x38]
    // 0x6e2430: stur            x1, [fp, #-0x18]
    // 0x6e2434: StoreField: r1->field_f = r0
    //     0x6e2434: stur            w0, [x1, #0xf]
    // 0x6e2438: r0 = 32
    //     0x6e2438: mov             x0, #0x20
    // 0x6e243c: StoreField: r1->field_b = r0
    //     0x6e243c: stur            w0, [x1, #0xb]
    // 0x6e2440: r0 = Column()
    //     0x6e2440: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6e2444: mov             x1, x0
    // 0x6e2448: r0 = Instance_Axis
    //     0x6e2448: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e244c: stur            x1, [fp, #-0x20]
    // 0x6e2450: StoreField: r1->field_f = r0
    //     0x6e2450: stur            w0, [x1, #0xf]
    // 0x6e2454: r2 = Instance_MainAxisAlignment
    //     0x6e2454: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6e2458: ldr             x2, [x2, #0x230]
    // 0x6e245c: StoreField: r1->field_13 = r2
    //     0x6e245c: stur            w2, [x1, #0x13]
    // 0x6e2460: r2 = Instance_MainAxisSize
    //     0x6e2460: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x6e2464: ldr             x2, [x2, #0xb60]
    // 0x6e2468: ArrayStore: r1[0] = r2  ; List_4
    //     0x6e2468: stur            w2, [x1, #0x17]
    // 0x6e246c: r2 = Instance_CrossAxisAlignment
    //     0x6e246c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6e2470: ldr             x2, [x2, #0x338]
    // 0x6e2474: StoreField: r1->field_1b = r2
    //     0x6e2474: stur            w2, [x1, #0x1b]
    // 0x6e2478: r2 = Instance_VerticalDirection
    //     0x6e2478: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6e247c: ldr             x2, [x2, #0x340]
    // 0x6e2480: StoreField: r1->field_23 = r2
    //     0x6e2480: stur            w2, [x1, #0x23]
    // 0x6e2484: r2 = Instance_Clip
    //     0x6e2484: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e2488: ldr             x2, [x2, #0x348]
    // 0x6e248c: StoreField: r1->field_2b = r2
    //     0x6e248c: stur            w2, [x1, #0x2b]
    // 0x6e2490: StoreField: r1->field_2f = rZR
    //     0x6e2490: stur            xzr, [x1, #0x2f]
    // 0x6e2494: ldur            x2, [fp, #-0x18]
    // 0x6e2498: StoreField: r1->field_b = r2
    //     0x6e2498: stur            w2, [x1, #0xb]
    // 0x6e249c: r0 = SingleChildScrollView()
    //     0x6e249c: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x6e24a0: mov             x1, x0
    // 0x6e24a4: r0 = Instance_Axis
    //     0x6e24a4: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6e24a8: stur            x1, [fp, #-0x28]
    // 0x6e24ac: StoreField: r1->field_b = r0
    //     0x6e24ac: stur            w0, [x1, #0xb]
    // 0x6e24b0: r0 = false
    //     0x6e24b0: add             x0, NULL, #0x30  ; false
    // 0x6e24b4: StoreField: r1->field_f = r0
    //     0x6e24b4: stur            w0, [x1, #0xf]
    // 0x6e24b8: ldur            x0, [fp, #-0x20]
    // 0x6e24bc: StoreField: r1->field_23 = r0
    //     0x6e24bc: stur            w0, [x1, #0x23]
    // 0x6e24c0: r0 = Instance_DragStartBehavior
    //     0x6e24c0: ldr             x0, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6e24c4: StoreField: r1->field_27 = r0
    //     0x6e24c4: stur            w0, [x1, #0x27]
    // 0x6e24c8: r0 = Instance_Clip
    //     0x6e24c8: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6e24cc: ldr             x0, [x0, #0x2d8]
    // 0x6e24d0: StoreField: r1->field_2b = r0
    //     0x6e24d0: stur            w0, [x1, #0x2b]
    // 0x6e24d4: r0 = Instance_HitTestBehavior
    //     0x6e24d4: add             x0, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x6e24d8: ldr             x0, [x0, #0xe20]
    // 0x6e24dc: StoreField: r1->field_2f = r0
    //     0x6e24dc: stur            w0, [x1, #0x2f]
    // 0x6e24e0: ldur            x0, [fp, #-0x10]
    // 0x6e24e4: LoadField: r2 = r0->field_1b
    //     0x6e24e4: ldur            w2, [x0, #0x1b]
    // 0x6e24e8: DecompressPointer r2
    //     0x6e24e8: add             x2, x2, HEAP, lsl #32
    // 0x6e24ec: stur            x2, [fp, #-0x18]
    // 0x6e24f0: r0 = Form()
    //     0x6e24f0: bl              #0x679fb0  ; AllocateFormStub -> Form (size=0x28)
    // 0x6e24f4: mov             x1, x0
    // 0x6e24f8: ldur            x0, [fp, #-0x28]
    // 0x6e24fc: stur            x1, [fp, #-0x10]
    // 0x6e2500: StoreField: r1->field_b = r0
    //     0x6e2500: stur            w0, [x1, #0xb]
    // 0x6e2504: r0 = Instance_AutovalidateMode
    //     0x6e2504: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b68] Obj!AutovalidateMode@a29491
    //     0x6e2508: ldr             x0, [x0, #0xb68]
    // 0x6e250c: StoreField: r1->field_23 = r0
    //     0x6e250c: stur            w0, [x1, #0x23]
    // 0x6e2510: ldur            x0, [fp, #-0x18]
    // 0x6e2514: StoreField: r1->field_7 = r0
    //     0x6e2514: stur            w0, [x1, #7]
    // 0x6e2518: r0 = Padding()
    //     0x6e2518: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6e251c: ldur            x1, [fp, #-8]
    // 0x6e2520: StoreField: r0->field_f = r1
    //     0x6e2520: stur            w1, [x0, #0xf]
    // 0x6e2524: ldur            x1, [fp, #-0x10]
    // 0x6e2528: StoreField: r0->field_b = r1
    //     0x6e2528: stur            w1, [x0, #0xb]
    // 0x6e252c: LeaveFrame
    //     0x6e252c: mov             SP, fp
    //     0x6e2530: ldp             fp, lr, [SP], #0x10
    // 0x6e2534: ret
    //     0x6e2534: ret             
    // 0x6e2538: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e2538: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e253c: b               #0x6e17a0
    // 0x6e2540: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e2540: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e2544: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e2544: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6e27e0, size: 0x2b4
    // 0x6e27e0: EnterFrame
    //     0x6e27e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e27e4: mov             fp, SP
    // 0x6e27e8: AllocStack(0x60)
    //     0x6e27e8: sub             SP, SP, #0x60
    // 0x6e27ec: SetupParameters(TripsTab this /* r1 */)
    //     0x6e27ec: stur            NULL, [fp, #-8]
    //     0x6e27f0: mov             x0, #0
    //     0x6e27f4: add             x1, fp, w0, sxtw #2
    //     0x6e27f8: ldr             x1, [x1, #0x10]
    //     0x6e27fc: ldur            w2, [x1, #0x17]
    //     0x6e2800: add             x2, x2, HEAP, lsl #32
    //     0x6e2804: stur            x2, [fp, #-0x10]
    // 0x6e2808: CheckStackOverflow
    //     0x6e2808: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e280c: cmp             SP, x16
    //     0x6e2810: b.ls            #0x6e2a84
    // 0x6e2814: InitAsync() -> Future<void?>
    //     0x6e2814: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6e2818: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e281c: ldur            x0, [fp, #-0x10]
    // 0x6e2820: LoadField: r1 = r0->field_b
    //     0x6e2820: ldur            w1, [x0, #0xb]
    // 0x6e2824: DecompressPointer r1
    //     0x6e2824: add             x1, x1, HEAP, lsl #32
    // 0x6e2828: LoadField: r2 = r1->field_b
    //     0x6e2828: ldur            w2, [x1, #0xb]
    // 0x6e282c: DecompressPointer r2
    //     0x6e282c: add             x2, x2, HEAP, lsl #32
    // 0x6e2830: stur            x2, [fp, #-0x18]
    // 0x6e2834: LoadField: r1 = r2->field_1b
    //     0x6e2834: ldur            w1, [x2, #0x1b]
    // 0x6e2838: DecompressPointer r1
    //     0x6e2838: add             x1, x1, HEAP, lsl #32
    // 0x6e283c: r0 = currentState()
    //     0x6e283c: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x6e2840: cmp             w0, NULL
    // 0x6e2844: b.eq            #0x6e2a8c
    // 0x6e2848: mov             x1, x0
    // 0x6e284c: r0 = validate()
    //     0x6e284c: bl              #0x67a654  ; [package:flutter/src/widgets/form.dart] FormState::validate
    // 0x6e2850: tbz             w0, #4, #0x6e285c
    // 0x6e2854: r0 = Null
    //     0x6e2854: mov             x0, NULL
    // 0x6e2858: r0 = ReturnAsyncNotFuture()
    //     0x6e2858: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e285c: ldur            x0, [fp, #-0x18]
    // 0x6e2860: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6e2860: ldur            w1, [x0, #0x17]
    // 0x6e2864: DecompressPointer r1
    //     0x6e2864: add             x1, x1, HEAP, lsl #32
    // 0x6e2868: tbnz            w1, #4, #0x6e2970
    // 0x6e286c: LoadField: r2 = r0->field_f
    //     0x6e286c: ldur            w2, [x0, #0xf]
    // 0x6e2870: DecompressPointer r2
    //     0x6e2870: add             x2, x2, HEAP, lsl #32
    // 0x6e2874: stur            x2, [fp, #-0x28]
    // 0x6e2878: LoadField: r1 = r0->field_13
    //     0x6e2878: ldur            w1, [x0, #0x13]
    // 0x6e287c: DecompressPointer r1
    //     0x6e287c: add             x1, x1, HEAP, lsl #32
    // 0x6e2880: cmp             w1, NULL
    // 0x6e2884: b.eq            #0x6e2a90
    // 0x6e2888: LoadField: r3 = r1->field_7
    //     0x6e2888: ldur            w3, [x1, #7]
    // 0x6e288c: DecompressPointer r3
    //     0x6e288c: add             x3, x3, HEAP, lsl #32
    // 0x6e2890: stur            x3, [fp, #-0x20]
    // 0x6e2894: LoadField: r1 = r0->field_1f
    //     0x6e2894: ldur            w1, [x0, #0x1f]
    // 0x6e2898: DecompressPointer r1
    //     0x6e2898: add             x1, x1, HEAP, lsl #32
    // 0x6e289c: LoadField: r4 = r1->field_27
    //     0x6e289c: ldur            w4, [x1, #0x27]
    // 0x6e28a0: DecompressPointer r4
    //     0x6e28a0: add             x4, x4, HEAP, lsl #32
    // 0x6e28a4: LoadField: r1 = r4->field_7
    //     0x6e28a4: ldur            w1, [x4, #7]
    // 0x6e28a8: DecompressPointer r1
    //     0x6e28a8: add             x1, x1, HEAP, lsl #32
    // 0x6e28ac: r0 = trim()
    //     0x6e28ac: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e28b0: mov             x2, x0
    // 0x6e28b4: ldur            x0, [fp, #-0x18]
    // 0x6e28b8: stur            x2, [fp, #-0x50]
    // 0x6e28bc: LoadField: r3 = r0->field_2f
    //     0x6e28bc: ldur            w3, [x0, #0x2f]
    // 0x6e28c0: DecompressPointer r3
    //     0x6e28c0: add             x3, x3, HEAP, lsl #32
    // 0x6e28c4: stur            x3, [fp, #-0x48]
    // 0x6e28c8: LoadField: r4 = r0->field_27
    //     0x6e28c8: ldur            w4, [x0, #0x27]
    // 0x6e28cc: DecompressPointer r4
    //     0x6e28cc: add             x4, x4, HEAP, lsl #32
    // 0x6e28d0: stur            x4, [fp, #-0x40]
    // 0x6e28d4: LoadField: r5 = r0->field_2b
    //     0x6e28d4: ldur            w5, [x0, #0x2b]
    // 0x6e28d8: DecompressPointer r5
    //     0x6e28d8: add             x5, x5, HEAP, lsl #32
    // 0x6e28dc: stur            x5, [fp, #-0x38]
    // 0x6e28e0: LoadField: r6 = r0->field_23
    //     0x6e28e0: ldur            w6, [x0, #0x23]
    // 0x6e28e4: DecompressPointer r6
    //     0x6e28e4: add             x6, x6, HEAP, lsl #32
    // 0x6e28e8: stur            x6, [fp, #-0x30]
    // 0x6e28ec: LoadField: r1 = r6->field_27
    //     0x6e28ec: ldur            w1, [x6, #0x27]
    // 0x6e28f0: DecompressPointer r1
    //     0x6e28f0: add             x1, x1, HEAP, lsl #32
    // 0x6e28f4: LoadField: r7 = r1->field_7
    //     0x6e28f4: ldur            w7, [x1, #7]
    // 0x6e28f8: DecompressPointer r7
    //     0x6e28f8: add             x7, x7, HEAP, lsl #32
    // 0x6e28fc: mov             x1, x7
    // 0x6e2900: r0 = trim()
    //     0x6e2900: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e2904: LoadField: r1 = r0->field_7
    //     0x6e2904: ldur            w1, [x0, #7]
    // 0x6e2908: cbnz            w1, #0x6e2914
    // 0x6e290c: r7 = Null
    //     0x6e290c: mov             x7, NULL
    // 0x6e2910: b               #0x6e2934
    // 0x6e2914: ldur            x0, [fp, #-0x30]
    // 0x6e2918: LoadField: r1 = r0->field_27
    //     0x6e2918: ldur            w1, [x0, #0x27]
    // 0x6e291c: DecompressPointer r1
    //     0x6e291c: add             x1, x1, HEAP, lsl #32
    // 0x6e2920: LoadField: r0 = r1->field_7
    //     0x6e2920: ldur            w0, [x1, #7]
    // 0x6e2924: DecompressPointer r0
    //     0x6e2924: add             x0, x0, HEAP, lsl #32
    // 0x6e2928: mov             x1, x0
    // 0x6e292c: r0 = trim()
    //     0x6e292c: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e2930: mov             x7, x0
    // 0x6e2934: ldur            x0, [fp, #-0x18]
    // 0x6e2938: LoadField: r5 = r0->field_33
    //     0x6e2938: ldur            w5, [x0, #0x33]
    // 0x6e293c: DecompressPointer r5
    //     0x6e293c: add             x5, x5, HEAP, lsl #32
    // 0x6e2940: ldur            x16, [fp, #-0x40]
    // 0x6e2944: ldur            lr, [fp, #-0x20]
    // 0x6e2948: stp             lr, x16, [SP]
    // 0x6e294c: ldur            x1, [fp, #-0x28]
    // 0x6e2950: ldur            x2, [fp, #-0x38]
    // 0x6e2954: ldur            x3, [fp, #-0x48]
    // 0x6e2958: ldur            x6, [fp, #-0x50]
    // 0x6e295c: r0 = updateTrip()
    //     0x6e295c: bl              #0x6e3660  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::updateTrip
    // 0x6e2960: mov             x1, x0
    // 0x6e2964: stur            x1, [fp, #-0x20]
    // 0x6e2968: r0 = Await()
    //     0x6e2968: bl              #0x3dd188  ; AwaitStub
    // 0x6e296c: b               #0x6e2a50
    // 0x6e2970: LoadField: r2 = r0->field_f
    //     0x6e2970: ldur            w2, [x0, #0xf]
    // 0x6e2974: DecompressPointer r2
    //     0x6e2974: add             x2, x2, HEAP, lsl #32
    // 0x6e2978: stur            x2, [fp, #-0x20]
    // 0x6e297c: LoadField: r1 = r0->field_1f
    //     0x6e297c: ldur            w1, [x0, #0x1f]
    // 0x6e2980: DecompressPointer r1
    //     0x6e2980: add             x1, x1, HEAP, lsl #32
    // 0x6e2984: LoadField: r3 = r1->field_27
    //     0x6e2984: ldur            w3, [x1, #0x27]
    // 0x6e2988: DecompressPointer r3
    //     0x6e2988: add             x3, x3, HEAP, lsl #32
    // 0x6e298c: LoadField: r1 = r3->field_7
    //     0x6e298c: ldur            w1, [x3, #7]
    // 0x6e2990: DecompressPointer r1
    //     0x6e2990: add             x1, x1, HEAP, lsl #32
    // 0x6e2994: r0 = trim()
    //     0x6e2994: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e2998: mov             x2, x0
    // 0x6e299c: ldur            x0, [fp, #-0x18]
    // 0x6e29a0: stur            x2, [fp, #-0x48]
    // 0x6e29a4: LoadField: r3 = r0->field_2f
    //     0x6e29a4: ldur            w3, [x0, #0x2f]
    // 0x6e29a8: DecompressPointer r3
    //     0x6e29a8: add             x3, x3, HEAP, lsl #32
    // 0x6e29ac: stur            x3, [fp, #-0x40]
    // 0x6e29b0: LoadField: r4 = r0->field_27
    //     0x6e29b0: ldur            w4, [x0, #0x27]
    // 0x6e29b4: DecompressPointer r4
    //     0x6e29b4: add             x4, x4, HEAP, lsl #32
    // 0x6e29b8: stur            x4, [fp, #-0x38]
    // 0x6e29bc: LoadField: r5 = r0->field_2b
    //     0x6e29bc: ldur            w5, [x0, #0x2b]
    // 0x6e29c0: DecompressPointer r5
    //     0x6e29c0: add             x5, x5, HEAP, lsl #32
    // 0x6e29c4: stur            x5, [fp, #-0x30]
    // 0x6e29c8: LoadField: r6 = r0->field_23
    //     0x6e29c8: ldur            w6, [x0, #0x23]
    // 0x6e29cc: DecompressPointer r6
    //     0x6e29cc: add             x6, x6, HEAP, lsl #32
    // 0x6e29d0: stur            x6, [fp, #-0x28]
    // 0x6e29d4: LoadField: r1 = r6->field_27
    //     0x6e29d4: ldur            w1, [x6, #0x27]
    // 0x6e29d8: DecompressPointer r1
    //     0x6e29d8: add             x1, x1, HEAP, lsl #32
    // 0x6e29dc: LoadField: r7 = r1->field_7
    //     0x6e29dc: ldur            w7, [x1, #7]
    // 0x6e29e0: DecompressPointer r7
    //     0x6e29e0: add             x7, x7, HEAP, lsl #32
    // 0x6e29e4: mov             x1, x7
    // 0x6e29e8: r0 = trim()
    //     0x6e29e8: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e29ec: LoadField: r1 = r0->field_7
    //     0x6e29ec: ldur            w1, [x0, #7]
    // 0x6e29f0: cbnz            w1, #0x6e29fc
    // 0x6e29f4: r7 = Null
    //     0x6e29f4: mov             x7, NULL
    // 0x6e29f8: b               #0x6e2a1c
    // 0x6e29fc: ldur            x0, [fp, #-0x28]
    // 0x6e2a00: LoadField: r1 = r0->field_27
    //     0x6e2a00: ldur            w1, [x0, #0x27]
    // 0x6e2a04: DecompressPointer r1
    //     0x6e2a04: add             x1, x1, HEAP, lsl #32
    // 0x6e2a08: LoadField: r0 = r1->field_7
    //     0x6e2a08: ldur            w0, [x1, #7]
    // 0x6e2a0c: DecompressPointer r0
    //     0x6e2a0c: add             x0, x0, HEAP, lsl #32
    // 0x6e2a10: mov             x1, x0
    // 0x6e2a14: r0 = trim()
    //     0x6e2a14: bl              #0x3e8b60  ; [dart:core] _StringBase::trim
    // 0x6e2a18: mov             x7, x0
    // 0x6e2a1c: ldur            x0, [fp, #-0x18]
    // 0x6e2a20: LoadField: r5 = r0->field_33
    //     0x6e2a20: ldur            w5, [x0, #0x33]
    // 0x6e2a24: DecompressPointer r5
    //     0x6e2a24: add             x5, x5, HEAP, lsl #32
    // 0x6e2a28: ldur            x16, [fp, #-0x38]
    // 0x6e2a2c: str             x16, [SP]
    // 0x6e2a30: ldur            x1, [fp, #-0x20]
    // 0x6e2a34: ldur            x2, [fp, #-0x30]
    // 0x6e2a38: ldur            x3, [fp, #-0x40]
    // 0x6e2a3c: ldur            x6, [fp, #-0x48]
    // 0x6e2a40: r0 = createTrip()
    //     0x6e2a40: bl              #0x6e2a94  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::createTrip
    // 0x6e2a44: mov             x1, x0
    // 0x6e2a48: stur            x1, [fp, #-0x18]
    // 0x6e2a4c: r0 = Await()
    //     0x6e2a4c: bl              #0x3dd188  ; AwaitStub
    // 0x6e2a50: ldur            x0, [fp, #-0x10]
    // 0x6e2a54: LoadField: r1 = r0->field_f
    //     0x6e2a54: ldur            w1, [x0, #0xf]
    // 0x6e2a58: DecompressPointer r1
    //     0x6e2a58: add             x1, x1, HEAP, lsl #32
    // 0x6e2a5c: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6e2a5c: ldur            w0, [x1, #0x17]
    // 0x6e2a60: DecompressPointer r0
    //     0x6e2a60: add             x0, x0, HEAP, lsl #32
    // 0x6e2a64: cmp             w0, NULL
    // 0x6e2a68: b.eq            #0x6e2a7c
    // 0x6e2a6c: r16 = <Object?>
    //     0x6e2a6c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6e2a70: stp             x1, x16, [SP]
    // 0x6e2a74: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6e2a74: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6e2a78: r0 = pop()
    //     0x6e2a78: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6e2a7c: r0 = Null
    //     0x6e2a7c: mov             x0, NULL
    // 0x6e2a80: r0 = ReturnAsyncNotFuture()
    //     0x6e2a80: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e2a84: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e2a84: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e2a88: b               #0x6e2814
    // 0x6e2a8c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e2a8c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6e2a90: r0 = NullErrorSharedWithoutFPURegs()
    //     0x6e2a90: bl              #0x9289e0  ; NullErrorSharedWithoutFPURegsStub
  }
  [closure] FilterChip <anonymous closure>(dynamic, UserModel) {
    // ** addr: 0x6e40e0, size: 0x264
    // 0x6e40e0: EnterFrame
    //     0x6e40e0: stp             fp, lr, [SP, #-0x10]!
    //     0x6e40e4: mov             fp, SP
    // 0x6e40e8: AllocStack(0x50)
    //     0x6e40e8: sub             SP, SP, #0x50
    // 0x6e40ec: SetupParameters([dynamic _ /* r0 */])
    //     0x6e40ec: ldr             x0, [fp, #0x18]
    //     0x6e40f0: ldur            w1, [x0, #0x17]
    //     0x6e40f4: add             x1, x1, HEAP, lsl #32
    //     0x6e40f8: stur            x1, [fp, #-8]
    // 0x6e40fc: CheckStackOverflow
    //     0x6e40fc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4100: cmp             SP, x16
    //     0x6e4104: b.ls            #0x6e4338
    // 0x6e4108: r1 = 1
    //     0x6e4108: mov             x1, #1
    // 0x6e410c: r0 = AllocateContext()
    //     0x6e410c: bl              #0x927010  ; AllocateContextStub
    // 0x6e4110: mov             x3, x0
    // 0x6e4114: ldur            x0, [fp, #-8]
    // 0x6e4118: stur            x3, [fp, #-0x10]
    // 0x6e411c: StoreField: r3->field_b = r0
    //     0x6e411c: stur            w0, [x3, #0xb]
    // 0x6e4120: ldr             x4, [fp, #0x10]
    // 0x6e4124: StoreField: r3->field_f = r4
    //     0x6e4124: stur            w4, [x3, #0xf]
    // 0x6e4128: LoadField: r1 = r0->field_b
    //     0x6e4128: ldur            w1, [x0, #0xb]
    // 0x6e412c: DecompressPointer r1
    //     0x6e412c: add             x1, x1, HEAP, lsl #32
    // 0x6e4130: LoadField: r0 = r1->field_b
    //     0x6e4130: ldur            w0, [x1, #0xb]
    // 0x6e4134: DecompressPointer r0
    //     0x6e4134: add             x0, x0, HEAP, lsl #32
    // 0x6e4138: LoadField: r1 = r0->field_33
    //     0x6e4138: ldur            w1, [x0, #0x33]
    // 0x6e413c: DecompressPointer r1
    //     0x6e413c: add             x1, x1, HEAP, lsl #32
    // 0x6e4140: LoadField: r2 = r4->field_7
    //     0x6e4140: ldur            w2, [x4, #7]
    // 0x6e4144: DecompressPointer r2
    //     0x6e4144: add             x2, x2, HEAP, lsl #32
    // 0x6e4148: r0 = contains()
    //     0x6e4148: bl              #0x4ea038  ; [dart:collection] ListBase::contains
    // 0x6e414c: mov             x1, x0
    // 0x6e4150: ldr             x0, [fp, #0x10]
    // 0x6e4154: stur            x1, [fp, #-0x18]
    // 0x6e4158: LoadField: r2 = r0->field_b
    //     0x6e4158: ldur            w2, [x0, #0xb]
    // 0x6e415c: DecompressPointer r2
    //     0x6e415c: add             x2, x2, HEAP, lsl #32
    // 0x6e4160: stur            x2, [fp, #-8]
    // 0x6e4164: r0 = Text()
    //     0x6e4164: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e4168: mov             x2, x0
    // 0x6e416c: ldur            x0, [fp, #-8]
    // 0x6e4170: stur            x2, [fp, #-0x20]
    // 0x6e4174: StoreField: r2->field_b = r0
    //     0x6e4174: stur            w0, [x2, #0xb]
    // 0x6e4178: r16 = 0.200000
    //     0x6e4178: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x6e417c: ldr             x16, [x16, #0x1f0]
    // 0x6e4180: str             x16, [SP]
    // 0x6e4184: r1 = Instance_MaterialColor
    //     0x6e4184: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6e4188: ldr             x1, [x1, #0x1f8]
    // 0x6e418c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6e418c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6e4190: ldr             x4, [x4, #0x198]
    // 0x6e4194: r0 = withValues()
    //     0x6e4194: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6e4198: mov             x3, x0
    // 0x6e419c: ldur            x0, [fp, #-0x18]
    // 0x6e41a0: stur            x3, [fp, #-0x28]
    // 0x6e41a4: tbnz            w0, #4, #0x6e41b4
    // 0x6e41a8: r1 = Instance_MaterialColor
    //     0x6e41a8: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6e41ac: ldr             x1, [x1, #0x1f8]
    // 0x6e41b0: b               #0x6e41cc
    // 0x6e41b4: r1 = _ConstMap len:12
    //     0x6e41b4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6e41b8: r2 = 600
    //     0x6e41b8: mov             x2, #0x258
    // 0x6e41bc: r0 = []()
    //     0x6e41bc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6e41c0: cmp             w0, NULL
    // 0x6e41c4: b.eq            #0x6e4340
    // 0x6e41c8: mov             x1, x0
    // 0x6e41cc: ldur            x0, [fp, #-8]
    // 0x6e41d0: stur            x1, [fp, #-0x30]
    // 0x6e41d4: LoadField: r2 = r0->field_7
    //     0x6e41d4: ldur            w2, [x0, #7]
    // 0x6e41d8: cbz             w2, #0x6e4208
    // 0x6e41dc: stp             xzr, x0, [SP]
    // 0x6e41e0: r0 = []()
    //     0x6e41e0: bl              #0x3ca950  ; [dart:core] _StringBase::[]
    // 0x6e41e4: r1 = LoadClassIdInstr(r0)
    //     0x6e41e4: ldur            x1, [x0, #-1]
    //     0x6e41e8: ubfx            x1, x1, #0xc, #0x14
    // 0x6e41ec: str             x0, [SP]
    // 0x6e41f0: mov             x0, x1
    // 0x6e41f4: r0 = GDT[cid_x0 + -0xff6]()
    //     0x6e41f4: sub             lr, x0, #0xff6
    //     0x6e41f8: ldr             lr, [x21, lr, lsl #3]
    //     0x6e41fc: blr             lr
    // 0x6e4200: mov             x2, x0
    // 0x6e4204: b               #0x6e420c
    // 0x6e4208: r2 = "\?"
    //     0x6e4208: ldr             x2, [PP, #0xf08]  ; [pp+0xf08] "\?"
    // 0x6e420c: ldur            x0, [fp, #-0x18]
    // 0x6e4210: stur            x2, [fp, #-8]
    // 0x6e4214: tbnz            w0, #4, #0x6e4224
    // 0x6e4218: mov             x1, x2
    // 0x6e421c: r5 = Instance_Color
    //     0x6e421c: ldr             x5, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6e4220: b               #0x6e423c
    // 0x6e4224: r1 = Instance_MaterialColor
    //     0x6e4224: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x6e4228: ldr             x1, [x1, #0xbc8]
    // 0x6e422c: r0 = shade600()
    //     0x6e422c: bl              #0x6d154c  ; [package:flutter/src/material/colors.dart] MaterialColor::shade600
    // 0x6e4230: mov             x5, x0
    // 0x6e4234: ldur            x0, [fp, #-0x18]
    // 0x6e4238: ldur            x1, [fp, #-8]
    // 0x6e423c: ldur            x4, [fp, #-0x20]
    // 0x6e4240: ldur            x3, [fp, #-0x28]
    // 0x6e4244: ldur            x2, [fp, #-0x30]
    // 0x6e4248: stur            x5, [fp, #-0x38]
    // 0x6e424c: r0 = TextStyle()
    //     0x6e424c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6e4250: mov             x1, x0
    // 0x6e4254: r0 = true
    //     0x6e4254: add             x0, NULL, #0x20  ; true
    // 0x6e4258: stur            x1, [fp, #-0x40]
    // 0x6e425c: StoreField: r1->field_7 = r0
    //     0x6e425c: stur            w0, [x1, #7]
    // 0x6e4260: ldur            x0, [fp, #-0x38]
    // 0x6e4264: StoreField: r1->field_b = r0
    //     0x6e4264: stur            w0, [x1, #0xb]
    // 0x6e4268: r0 = 12.000000
    //     0x6e4268: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x6e426c: ldr             x0, [x0, #0xae0]
    // 0x6e4270: StoreField: r1->field_1f = r0
    //     0x6e4270: stur            w0, [x1, #0x1f]
    // 0x6e4274: r0 = Text()
    //     0x6e4274: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e4278: mov             x1, x0
    // 0x6e427c: ldur            x0, [fp, #-8]
    // 0x6e4280: stur            x1, [fp, #-0x38]
    // 0x6e4284: StoreField: r1->field_b = r0
    //     0x6e4284: stur            w0, [x1, #0xb]
    // 0x6e4288: ldur            x0, [fp, #-0x40]
    // 0x6e428c: StoreField: r1->field_13 = r0
    //     0x6e428c: stur            w0, [x1, #0x13]
    // 0x6e4290: r0 = CircleAvatar()
    //     0x6e4290: bl              #0x6e4350  ; AllocateCircleAvatarStub -> CircleAvatar (size=0x2c)
    // 0x6e4294: mov             x1, x0
    // 0x6e4298: ldur            x0, [fp, #-0x38]
    // 0x6e429c: stur            x1, [fp, #-8]
    // 0x6e42a0: StoreField: r1->field_b = r0
    //     0x6e42a0: stur            w0, [x1, #0xb]
    // 0x6e42a4: ldur            x0, [fp, #-0x30]
    // 0x6e42a8: StoreField: r1->field_f = r0
    //     0x6e42a8: stur            w0, [x1, #0xf]
    // 0x6e42ac: r0 = FilterChip()
    //     0x6e42ac: bl              #0x6e4344  ; AllocateFilterChipStub -> FilterChip (size=0xa0)
    // 0x6e42b0: mov             x3, x0
    // 0x6e42b4: ldur            x0, [fp, #-8]
    // 0x6e42b8: stur            x3, [fp, #-0x30]
    // 0x6e42bc: StoreField: r3->field_b = r0
    //     0x6e42bc: stur            w0, [x3, #0xb]
    // 0x6e42c0: ldur            x0, [fp, #-0x20]
    // 0x6e42c4: StoreField: r3->field_f = r0
    //     0x6e42c4: stur            w0, [x3, #0xf]
    // 0x6e42c8: ldur            x0, [fp, #-0x18]
    // 0x6e42cc: StoreField: r3->field_1b = r0
    //     0x6e42cc: stur            w0, [x3, #0x1b]
    // 0x6e42d0: ldur            x2, [fp, #-0x10]
    // 0x6e42d4: r1 = Function '<anonymous closure>':.
    //     0x6e42d4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14200] AnonymousClosure: (0x6e435c), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e42d8: ldr             x1, [x1, #0x200]
    // 0x6e42dc: r0 = AllocateClosure()
    //     0x6e42dc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e42e0: mov             x1, x0
    // 0x6e42e4: ldur            x0, [fp, #-0x30]
    // 0x6e42e8: StoreField: r0->field_1f = r1
    //     0x6e42e8: stur            w1, [x0, #0x1f]
    // 0x6e42ec: ldur            x1, [fp, #-0x28]
    // 0x6e42f0: StoreField: r0->field_3b = r1
    //     0x6e42f0: stur            w1, [x0, #0x3b]
    // 0x6e42f4: r1 = Instance_Clip
    //     0x6e42f4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6e42f8: ldr             x1, [x1, #0x348]
    // 0x6e42fc: StoreField: r0->field_4b = r1
    //     0x6e42fc: stur            w1, [x0, #0x4b]
    // 0x6e4300: r1 = false
    //     0x6e4300: add             x1, NULL, #0x30  ; false
    // 0x6e4304: StoreField: r0->field_53 = r1
    //     0x6e4304: stur            w1, [x0, #0x53]
    // 0x6e4308: r1 = Instance_MaterialColor
    //     0x6e4308: add             x1, PP, #0x14, lsl #12  ; [pp+0x141f8] Obj!MaterialColor@a25ba1
    //     0x6e430c: ldr             x1, [x1, #0x1f8]
    // 0x6e4310: StoreField: r0->field_7f = r1
    //     0x6e4310: stur            w1, [x0, #0x7f]
    // 0x6e4314: r1 = Instance_CircleBorder
    //     0x6e4314: add             x1, PP, #0xc, lsl #12  ; [pp+0xcc58] Obj!CircleBorder@a0f2e1
    //     0x6e4318: ldr             x1, [x1, #0xc58]
    // 0x6e431c: StoreField: r0->field_83 = r1
    //     0x6e431c: stur            w1, [x0, #0x83]
    // 0x6e4320: r1 = Instance__ChipVariant
    //     0x6e4320: add             x1, PP, #0x14, lsl #12  ; [pp+0x14208] Obj!_ChipVariant@a2baf1
    //     0x6e4324: ldr             x1, [x1, #0x208]
    // 0x6e4328: StoreField: r0->field_9b = r1
    //     0x6e4328: stur            w1, [x0, #0x9b]
    // 0x6e432c: LeaveFrame
    //     0x6e432c: mov             SP, fp
    //     0x6e4330: ldp             fp, lr, [SP], #0x10
    // 0x6e4334: ret
    //     0x6e4334: ret             
    // 0x6e4338: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e4338: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e433c: b               #0x6e4108
    // 0x6e4340: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6e4340: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, bool) {
    // ** addr: 0x6e435c, size: 0x98
    // 0x6e435c: EnterFrame
    //     0x6e435c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4360: mov             fp, SP
    // 0x6e4364: AllocStack(0x18)
    //     0x6e4364: sub             SP, SP, #0x18
    // 0x6e4368: SetupParameters([dynamic _ /* r0 */])
    //     0x6e4368: ldr             x0, [fp, #0x18]
    //     0x6e436c: ldur            w1, [x0, #0x17]
    //     0x6e4370: add             x1, x1, HEAP, lsl #32
    //     0x6e4374: stur            x1, [fp, #-8]
    // 0x6e4378: CheckStackOverflow
    //     0x6e4378: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e437c: cmp             SP, x16
    //     0x6e4380: b.ls            #0x6e43ec
    // 0x6e4384: r1 = 1
    //     0x6e4384: mov             x1, #1
    // 0x6e4388: r0 = AllocateContext()
    //     0x6e4388: bl              #0x927010  ; AllocateContextStub
    // 0x6e438c: mov             x1, x0
    // 0x6e4390: ldur            x0, [fp, #-8]
    // 0x6e4394: StoreField: r1->field_b = r0
    //     0x6e4394: stur            w0, [x1, #0xb]
    // 0x6e4398: ldr             x2, [fp, #0x10]
    // 0x6e439c: StoreField: r1->field_f = r2
    //     0x6e439c: stur            w2, [x1, #0xf]
    // 0x6e43a0: LoadField: r2 = r0->field_b
    //     0x6e43a0: ldur            w2, [x0, #0xb]
    // 0x6e43a4: DecompressPointer r2
    //     0x6e43a4: add             x2, x2, HEAP, lsl #32
    // 0x6e43a8: LoadField: r0 = r2->field_13
    //     0x6e43a8: ldur            w0, [x2, #0x13]
    // 0x6e43ac: DecompressPointer r0
    //     0x6e43ac: add             x0, x0, HEAP, lsl #32
    // 0x6e43b0: mov             x2, x1
    // 0x6e43b4: stur            x0, [fp, #-8]
    // 0x6e43b8: r1 = Function '<anonymous closure>':.
    //     0x6e43b8: add             x1, PP, #0x14, lsl #12  ; [pp+0x14210] AnonymousClosure: (0x6e43f4), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e43bc: ldr             x1, [x1, #0x210]
    // 0x6e43c0: r0 = AllocateClosure()
    //     0x6e43c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e43c4: ldur            x16, [fp, #-8]
    // 0x6e43c8: stp             x0, x16, [SP]
    // 0x6e43cc: ldur            x0, [fp, #-8]
    // 0x6e43d0: ClosureCall
    //     0x6e43d0: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6e43d4: ldur            x2, [x0, #0x1f]
    //     0x6e43d8: blr             x2
    // 0x6e43dc: r0 = Null
    //     0x6e43dc: mov             x0, NULL
    // 0x6e43e0: LeaveFrame
    //     0x6e43e0: mov             SP, fp
    //     0x6e43e4: ldp             fp, lr, [SP], #0x10
    // 0x6e43e8: ret
    //     0x6e43e8: ret             
    // 0x6e43ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e43ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e43f0: b               #0x6e4384
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6e43f4, size: 0x144
    // 0x6e43f4: EnterFrame
    //     0x6e43f4: stp             fp, lr, [SP, #-0x10]!
    //     0x6e43f8: mov             fp, SP
    // 0x6e43fc: AllocStack(0x18)
    //     0x6e43fc: sub             SP, SP, #0x18
    // 0x6e4400: SetupParameters([dynamic _ /* r0 */])
    //     0x6e4400: ldr             x0, [fp, #0x10]
    //     0x6e4404: ldur            w1, [x0, #0x17]
    //     0x6e4408: add             x1, x1, HEAP, lsl #32
    // 0x6e440c: CheckStackOverflow
    //     0x6e440c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4410: cmp             SP, x16
    //     0x6e4414: b.ls            #0x6e4530
    // 0x6e4418: LoadField: r0 = r1->field_f
    //     0x6e4418: ldur            w0, [x1, #0xf]
    // 0x6e441c: DecompressPointer r0
    //     0x6e441c: add             x0, x0, HEAP, lsl #32
    // 0x6e4420: tbnz            w0, #4, #0x6e44dc
    // 0x6e4424: LoadField: r0 = r1->field_b
    //     0x6e4424: ldur            w0, [x1, #0xb]
    // 0x6e4428: DecompressPointer r0
    //     0x6e4428: add             x0, x0, HEAP, lsl #32
    // 0x6e442c: LoadField: r1 = r0->field_b
    //     0x6e442c: ldur            w1, [x0, #0xb]
    // 0x6e4430: DecompressPointer r1
    //     0x6e4430: add             x1, x1, HEAP, lsl #32
    // 0x6e4434: LoadField: r2 = r1->field_b
    //     0x6e4434: ldur            w2, [x1, #0xb]
    // 0x6e4438: DecompressPointer r2
    //     0x6e4438: add             x2, x2, HEAP, lsl #32
    // 0x6e443c: LoadField: r1 = r2->field_b
    //     0x6e443c: ldur            w1, [x2, #0xb]
    // 0x6e4440: DecompressPointer r1
    //     0x6e4440: add             x1, x1, HEAP, lsl #32
    // 0x6e4444: LoadField: r2 = r1->field_33
    //     0x6e4444: ldur            w2, [x1, #0x33]
    // 0x6e4448: DecompressPointer r2
    //     0x6e4448: add             x2, x2, HEAP, lsl #32
    // 0x6e444c: stur            x2, [fp, #-0x18]
    // 0x6e4450: LoadField: r1 = r0->field_f
    //     0x6e4450: ldur            w1, [x0, #0xf]
    // 0x6e4454: DecompressPointer r1
    //     0x6e4454: add             x1, x1, HEAP, lsl #32
    // 0x6e4458: LoadField: r0 = r1->field_7
    //     0x6e4458: ldur            w0, [x1, #7]
    // 0x6e445c: DecompressPointer r0
    //     0x6e445c: add             x0, x0, HEAP, lsl #32
    // 0x6e4460: stur            x0, [fp, #-0x10]
    // 0x6e4464: LoadField: r1 = r2->field_b
    //     0x6e4464: ldur            w1, [x2, #0xb]
    // 0x6e4468: LoadField: r3 = r2->field_f
    //     0x6e4468: ldur            w3, [x2, #0xf]
    // 0x6e446c: DecompressPointer r3
    //     0x6e446c: add             x3, x3, HEAP, lsl #32
    // 0x6e4470: LoadField: r4 = r3->field_b
    //     0x6e4470: ldur            w4, [x3, #0xb]
    // 0x6e4474: r3 = LoadInt32Instr(r1)
    //     0x6e4474: sbfx            x3, x1, #1, #0x1f
    // 0x6e4478: stur            x3, [fp, #-8]
    // 0x6e447c: r1 = LoadInt32Instr(r4)
    //     0x6e447c: sbfx            x1, x4, #1, #0x1f
    // 0x6e4480: cmp             x3, x1
    // 0x6e4484: b.ne            #0x6e4490
    // 0x6e4488: mov             x1, x2
    // 0x6e448c: r0 = _growToNextCapacity()
    //     0x6e448c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6e4490: ldur            x0, [fp, #-0x18]
    // 0x6e4494: ldur            x2, [fp, #-8]
    // 0x6e4498: add             x1, x2, #1
    // 0x6e449c: lsl             x3, x1, #1
    // 0x6e44a0: StoreField: r0->field_b = r3
    //     0x6e44a0: stur            w3, [x0, #0xb]
    // 0x6e44a4: LoadField: r1 = r0->field_f
    //     0x6e44a4: ldur            w1, [x0, #0xf]
    // 0x6e44a8: DecompressPointer r1
    //     0x6e44a8: add             x1, x1, HEAP, lsl #32
    // 0x6e44ac: ldur            x0, [fp, #-0x10]
    // 0x6e44b0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6e44b0: add             x25, x1, x2, lsl #2
    //     0x6e44b4: add             x25, x25, #0xf
    //     0x6e44b8: str             w0, [x25]
    //     0x6e44bc: tbz             w0, #0, #0x6e44d8
    //     0x6e44c0: ldurb           w16, [x1, #-1]
    //     0x6e44c4: ldurb           w17, [x0, #-1]
    //     0x6e44c8: and             x16, x17, x16, lsr #2
    //     0x6e44cc: tst             x16, HEAP, lsr #32
    //     0x6e44d0: b.eq            #0x6e44d8
    //     0x6e44d4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6e44d8: b               #0x6e4520
    // 0x6e44dc: LoadField: r0 = r1->field_b
    //     0x6e44dc: ldur            w0, [x1, #0xb]
    // 0x6e44e0: DecompressPointer r0
    //     0x6e44e0: add             x0, x0, HEAP, lsl #32
    // 0x6e44e4: LoadField: r1 = r0->field_b
    //     0x6e44e4: ldur            w1, [x0, #0xb]
    // 0x6e44e8: DecompressPointer r1
    //     0x6e44e8: add             x1, x1, HEAP, lsl #32
    // 0x6e44ec: LoadField: r2 = r1->field_b
    //     0x6e44ec: ldur            w2, [x1, #0xb]
    // 0x6e44f0: DecompressPointer r2
    //     0x6e44f0: add             x2, x2, HEAP, lsl #32
    // 0x6e44f4: LoadField: r1 = r2->field_b
    //     0x6e44f4: ldur            w1, [x2, #0xb]
    // 0x6e44f8: DecompressPointer r1
    //     0x6e44f8: add             x1, x1, HEAP, lsl #32
    // 0x6e44fc: LoadField: r2 = r1->field_33
    //     0x6e44fc: ldur            w2, [x1, #0x33]
    // 0x6e4500: DecompressPointer r2
    //     0x6e4500: add             x2, x2, HEAP, lsl #32
    // 0x6e4504: LoadField: r1 = r0->field_f
    //     0x6e4504: ldur            w1, [x0, #0xf]
    // 0x6e4508: DecompressPointer r1
    //     0x6e4508: add             x1, x1, HEAP, lsl #32
    // 0x6e450c: LoadField: r0 = r1->field_7
    //     0x6e450c: ldur            w0, [x1, #7]
    // 0x6e4510: DecompressPointer r0
    //     0x6e4510: add             x0, x0, HEAP, lsl #32
    // 0x6e4514: mov             x1, x2
    // 0x6e4518: mov             x2, x0
    // 0x6e451c: r0 = remove()
    //     0x6e451c: bl              #0x4480b0  ; [dart:core] _GrowableList::remove
    // 0x6e4520: r0 = Null
    //     0x6e4520: mov             x0, NULL
    // 0x6e4524: LeaveFrame
    //     0x6e4524: mov             SP, fp
    //     0x6e4528: ldp             fp, lr, [SP], #0x10
    // 0x6e452c: ret
    //     0x6e452c: ret             
    // 0x6e4530: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e4530: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e4534: b               #0x6e4418
  }
  [closure] void <anonymous closure>(dynamic, DateTime?) {
    // ** addr: 0x6e4538, size: 0x8c
    // 0x6e4538: EnterFrame
    //     0x6e4538: stp             fp, lr, [SP, #-0x10]!
    //     0x6e453c: mov             fp, SP
    // 0x6e4540: AllocStack(0x20)
    //     0x6e4540: sub             SP, SP, #0x20
    // 0x6e4544: SetupParameters([dynamic _ /* r0 */])
    //     0x6e4544: ldr             x0, [fp, #0x18]
    //     0x6e4548: ldur            w1, [x0, #0x17]
    //     0x6e454c: add             x1, x1, HEAP, lsl #32
    //     0x6e4550: stur            x1, [fp, #-8]
    // 0x6e4554: CheckStackOverflow
    //     0x6e4554: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4558: cmp             SP, x16
    //     0x6e455c: b.ls            #0x6e45bc
    // 0x6e4560: r1 = 1
    //     0x6e4560: mov             x1, #1
    // 0x6e4564: r0 = AllocateContext()
    //     0x6e4564: bl              #0x927010  ; AllocateContextStub
    // 0x6e4568: mov             x1, x0
    // 0x6e456c: ldur            x0, [fp, #-8]
    // 0x6e4570: StoreField: r1->field_b = r0
    //     0x6e4570: stur            w0, [x1, #0xb]
    // 0x6e4574: ldr             x2, [fp, #0x10]
    // 0x6e4578: StoreField: r1->field_f = r2
    //     0x6e4578: stur            w2, [x1, #0xf]
    // 0x6e457c: LoadField: r3 = r0->field_13
    //     0x6e457c: ldur            w3, [x0, #0x13]
    // 0x6e4580: DecompressPointer r3
    //     0x6e4580: add             x3, x3, HEAP, lsl #32
    // 0x6e4584: mov             x2, x1
    // 0x6e4588: stur            x3, [fp, #-0x10]
    // 0x6e458c: r1 = Function '<anonymous closure>':.
    //     0x6e458c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14218] AnonymousClosure: (0x6e45c4), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e4590: ldr             x1, [x1, #0x218]
    // 0x6e4594: r0 = AllocateClosure()
    //     0x6e4594: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4598: ldur            x16, [fp, #-0x10]
    // 0x6e459c: stp             x0, x16, [SP]
    // 0x6e45a0: ldur            x0, [fp, #-0x10]
    // 0x6e45a4: ClosureCall
    //     0x6e45a4: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6e45a8: ldur            x2, [x0, #0x1f]
    //     0x6e45ac: blr             x2
    // 0x6e45b0: LeaveFrame
    //     0x6e45b0: mov             SP, fp
    //     0x6e45b4: ldp             fp, lr, [SP], #0x10
    // 0x6e45b8: ret
    //     0x6e45b8: ret             
    // 0x6e45bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e45bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e45c0: b               #0x6e4560
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6e45c4, size: 0x5c
    // 0x6e45c4: ldr             x1, [SP]
    // 0x6e45c8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6e45c8: ldur            w2, [x1, #0x17]
    // 0x6e45cc: DecompressPointer r2
    //     0x6e45cc: add             x2, x2, HEAP, lsl #32
    // 0x6e45d0: LoadField: r1 = r2->field_f
    //     0x6e45d0: ldur            w1, [x2, #0xf]
    // 0x6e45d4: DecompressPointer r1
    //     0x6e45d4: add             x1, x1, HEAP, lsl #32
    // 0x6e45d8: LoadField: r3 = r2->field_b
    //     0x6e45d8: ldur            w3, [x2, #0xb]
    // 0x6e45dc: DecompressPointer r3
    //     0x6e45dc: add             x3, x3, HEAP, lsl #32
    // 0x6e45e0: LoadField: r2 = r3->field_b
    //     0x6e45e0: ldur            w2, [x3, #0xb]
    // 0x6e45e4: DecompressPointer r2
    //     0x6e45e4: add             x2, x2, HEAP, lsl #32
    // 0x6e45e8: LoadField: r3 = r2->field_b
    //     0x6e45e8: ldur            w3, [x2, #0xb]
    // 0x6e45ec: DecompressPointer r3
    //     0x6e45ec: add             x3, x3, HEAP, lsl #32
    // 0x6e45f0: mov             x0, x1
    // 0x6e45f4: StoreField: r3->field_2b = r0
    //     0x6e45f4: stur            w0, [x3, #0x2b]
    //     0x6e45f8: ldurb           w16, [x3, #-1]
    //     0x6e45fc: ldurb           w17, [x0, #-1]
    //     0x6e4600: and             x16, x17, x16, lsr #2
    //     0x6e4604: tst             x16, HEAP, lsr #32
    //     0x6e4608: b.eq            #0x6e4618
    //     0x6e460c: str             lr, [SP, #-8]!
    //     0x6e4610: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6e4614: ldr             lr, [SP], #8
    // 0x6e4618: mov             x0, x1
    // 0x6e461c: ret
    //     0x6e461c: ret             
  }
  [closure] void <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e46a8, size: 0x8c
    // 0x6e46a8: EnterFrame
    //     0x6e46a8: stp             fp, lr, [SP, #-0x10]!
    //     0x6e46ac: mov             fp, SP
    // 0x6e46b0: AllocStack(0x20)
    //     0x6e46b0: sub             SP, SP, #0x20
    // 0x6e46b4: SetupParameters([dynamic _ /* r0 */])
    //     0x6e46b4: ldr             x0, [fp, #0x18]
    //     0x6e46b8: ldur            w1, [x0, #0x17]
    //     0x6e46bc: add             x1, x1, HEAP, lsl #32
    //     0x6e46c0: stur            x1, [fp, #-8]
    // 0x6e46c4: CheckStackOverflow
    //     0x6e46c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e46c8: cmp             SP, x16
    //     0x6e46cc: b.ls            #0x6e472c
    // 0x6e46d0: r1 = 1
    //     0x6e46d0: mov             x1, #1
    // 0x6e46d4: r0 = AllocateContext()
    //     0x6e46d4: bl              #0x927010  ; AllocateContextStub
    // 0x6e46d8: mov             x1, x0
    // 0x6e46dc: ldur            x0, [fp, #-8]
    // 0x6e46e0: StoreField: r1->field_b = r0
    //     0x6e46e0: stur            w0, [x1, #0xb]
    // 0x6e46e4: ldr             x2, [fp, #0x10]
    // 0x6e46e8: StoreField: r1->field_f = r2
    //     0x6e46e8: stur            w2, [x1, #0xf]
    // 0x6e46ec: LoadField: r3 = r0->field_13
    //     0x6e46ec: ldur            w3, [x0, #0x13]
    // 0x6e46f0: DecompressPointer r3
    //     0x6e46f0: add             x3, x3, HEAP, lsl #32
    // 0x6e46f4: mov             x2, x1
    // 0x6e46f8: stur            x3, [fp, #-0x10]
    // 0x6e46fc: r1 = Function '<anonymous closure>':.
    //     0x6e46fc: add             x1, PP, #0x14, lsl #12  ; [pp+0x14228] AnonymousClosure: (0x6e4734), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e4700: ldr             x1, [x1, #0x228]
    // 0x6e4704: r0 = AllocateClosure()
    //     0x6e4704: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4708: ldur            x16, [fp, #-0x10]
    // 0x6e470c: stp             x0, x16, [SP]
    // 0x6e4710: ldur            x0, [fp, #-0x10]
    // 0x6e4714: ClosureCall
    //     0x6e4714: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x6e4718: ldur            x2, [x0, #0x1f]
    //     0x6e471c: blr             x2
    // 0x6e4720: LeaveFrame
    //     0x6e4720: mov             SP, fp
    //     0x6e4724: ldp             fp, lr, [SP], #0x10
    // 0x6e4728: ret
    //     0x6e4728: ret             
    // 0x6e472c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e472c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e4730: b               #0x6e46d0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6e4734, size: 0x5c
    // 0x6e4734: ldr             x1, [SP]
    // 0x6e4738: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6e4738: ldur            w2, [x1, #0x17]
    // 0x6e473c: DecompressPointer r2
    //     0x6e473c: add             x2, x2, HEAP, lsl #32
    // 0x6e4740: LoadField: r1 = r2->field_f
    //     0x6e4740: ldur            w1, [x2, #0xf]
    // 0x6e4744: DecompressPointer r1
    //     0x6e4744: add             x1, x1, HEAP, lsl #32
    // 0x6e4748: LoadField: r3 = r2->field_b
    //     0x6e4748: ldur            w3, [x2, #0xb]
    // 0x6e474c: DecompressPointer r3
    //     0x6e474c: add             x3, x3, HEAP, lsl #32
    // 0x6e4750: LoadField: r2 = r3->field_b
    //     0x6e4750: ldur            w2, [x3, #0xb]
    // 0x6e4754: DecompressPointer r2
    //     0x6e4754: add             x2, x2, HEAP, lsl #32
    // 0x6e4758: LoadField: r3 = r2->field_b
    //     0x6e4758: ldur            w3, [x2, #0xb]
    // 0x6e475c: DecompressPointer r3
    //     0x6e475c: add             x3, x3, HEAP, lsl #32
    // 0x6e4760: mov             x0, x1
    // 0x6e4764: StoreField: r3->field_2f = r0
    //     0x6e4764: stur            w0, [x3, #0x2f]
    //     0x6e4768: ldurb           w16, [x3, #-1]
    //     0x6e476c: ldurb           w17, [x0, #-1]
    //     0x6e4770: and             x16, x17, x16, lsr #2
    //     0x6e4774: tst             x16, HEAP, lsr #32
    //     0x6e4778: b.eq            #0x6e4788
    //     0x6e477c: str             lr, [SP, #-8]!
    //     0x6e4780: bl              #0x9267d0  ; WriteBarrierWrappersStub
    //     0x6e4784: ldr             lr, [SP], #8
    // 0x6e4788: mov             x0, x1
    // 0x6e478c: ret
    //     0x6e478c: ret             
  }
  [closure] String? <anonymous closure>(dynamic, String?) {
    // ** addr: 0x6e4790, size: 0x28
    // 0x6e4790: ldr             x1, [SP]
    // 0x6e4794: cmp             w1, NULL
    // 0x6e4798: b.eq            #0x6e47a4
    // 0x6e479c: LoadField: r2 = r1->field_7
    //     0x6e479c: ldur            w2, [x1, #7]
    // 0x6e47a0: cbnz            w2, #0x6e47b0
    // 0x6e47a4: r0 = "Zorunlu alan"
    //     0x6e47a4: add             x0, PP, #0x14, lsl #12  ; [pp+0x14230] "Zorunlu alan"
    //     0x6e47a8: ldr             x0, [x0, #0x230]
    // 0x6e47ac: b               #0x6e47b4
    // 0x6e47b0: r0 = Null
    //     0x6e47b0: mov             x0, NULL
    // 0x6e47b4: ret
    //     0x6e47b4: ret             
  }
  [closure] StatefulBuilder <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6e47b8, size: 0x64
    // 0x6e47b8: EnterFrame
    //     0x6e47b8: stp             fp, lr, [SP, #-0x10]!
    //     0x6e47bc: mov             fp, SP
    // 0x6e47c0: AllocStack(0x8)
    //     0x6e47c0: sub             SP, SP, #8
    // 0x6e47c4: SetupParameters([dynamic _ /* r0 */])
    //     0x6e47c4: ldr             x0, [fp, #0x18]
    //     0x6e47c8: ldur            w1, [x0, #0x17]
    //     0x6e47cc: add             x1, x1, HEAP, lsl #32
    //     0x6e47d0: stur            x1, [fp, #-8]
    // 0x6e47d4: r1 = 1
    //     0x6e47d4: mov             x1, #1
    // 0x6e47d8: r0 = AllocateContext()
    //     0x6e47d8: bl              #0x927010  ; AllocateContextStub
    // 0x6e47dc: mov             x1, x0
    // 0x6e47e0: ldur            x0, [fp, #-8]
    // 0x6e47e4: StoreField: r1->field_b = r0
    //     0x6e47e4: stur            w0, [x1, #0xb]
    // 0x6e47e8: ldr             x0, [fp, #0x10]
    // 0x6e47ec: StoreField: r1->field_f = r0
    //     0x6e47ec: stur            w0, [x1, #0xf]
    // 0x6e47f0: mov             x2, x1
    // 0x6e47f4: r1 = Function '<anonymous closure>':.
    //     0x6e47f4: add             x1, PP, #0x13, lsl #12  ; [pp+0x13a40] AnonymousClosure: (0x6e1778), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e47f8: ldr             x1, [x1, #0xa40]
    // 0x6e47fc: r0 = AllocateClosure()
    //     0x6e47fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4800: stur            x0, [fp, #-8]
    // 0x6e4804: r0 = StatefulBuilder()
    //     0x6e4804: bl              #0x6d2fbc  ; AllocateStatefulBuilderStub -> StatefulBuilder (size=0x10)
    // 0x6e4808: ldur            x1, [fp, #-8]
    // 0x6e480c: StoreField: r0->field_b = r1
    //     0x6e480c: stur            w1, [x0, #0xb]
    // 0x6e4810: LeaveFrame
    //     0x6e4810: mov             SP, fp
    //     0x6e4814: ldp             fp, lr, [SP], #0x10
    // 0x6e4818: ret
    //     0x6e4818: ret             
  }
  _ _openCreateEditTripSheet(/* No info */) async {
    // ** addr: 0x6e481c, size: 0x338
    // 0x6e481c: EnterFrame
    //     0x6e481c: stp             fp, lr, [SP, #-0x10]!
    //     0x6e4820: mov             fp, SP
    // 0x6e4824: AllocStack(0x58)
    //     0x6e4824: sub             SP, SP, #0x58
    // 0x6e4828: SetupParameters(TripsTab this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */, dynamic _ /* r5 => r5, fp-0x28 */)
    //     0x6e4828: stur            NULL, [fp, #-8]
    //     0x6e482c: stur            x1, [fp, #-0x10]
    //     0x6e4830: stur            x2, [fp, #-0x18]
    //     0x6e4834: stur            x3, [fp, #-0x20]
    //     0x6e4838: stur            x5, [fp, #-0x28]
    // 0x6e483c: CheckStackOverflow
    //     0x6e483c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e4840: cmp             SP, x16
    //     0x6e4844: b.ls            #0x6e4b4c
    // 0x6e4848: r1 = 10
    //     0x6e4848: mov             x1, #0xa
    // 0x6e484c: r0 = AllocateContext()
    //     0x6e484c: bl              #0x927010  ; AllocateContextStub
    // 0x6e4850: mov             x1, x0
    // 0x6e4854: ldur            x0, [fp, #-0x20]
    // 0x6e4858: stur            x1, [fp, #-0x30]
    // 0x6e485c: StoreField: r1->field_f = r0
    //     0x6e485c: stur            w0, [x1, #0xf]
    // 0x6e4860: ldur            x0, [fp, #-0x28]
    // 0x6e4864: StoreField: r1->field_13 = r0
    //     0x6e4864: stur            w0, [x1, #0x13]
    // 0x6e4868: InitAsync() -> Future<void?>
    //     0x6e4868: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6e486c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6e4870: ldur            x2, [fp, #-0x30]
    // 0x6e4874: LoadField: r0 = r2->field_13
    //     0x6e4874: ldur            w0, [x2, #0x13]
    // 0x6e4878: DecompressPointer r0
    //     0x6e4878: add             x0, x0, HEAP, lsl #32
    // 0x6e487c: stur            x0, [fp, #-0x10]
    // 0x6e4880: cmp             w0, NULL
    // 0x6e4884: r16 = true
    //     0x6e4884: add             x16, NULL, #0x20  ; true
    // 0x6e4888: r17 = false
    //     0x6e4888: add             x17, NULL, #0x30  ; false
    // 0x6e488c: csel            x1, x16, x17, ne
    // 0x6e4890: ArrayStore: r2[0] = r1  ; List_4
    //     0x6e4890: stur            w1, [x2, #0x17]
    // 0x6e4894: r1 = <FormState>
    //     0x6e4894: add             x1, PP, #0x12, lsl #12  ; [pp+0x12590] TypeArguments: <FormState>
    //     0x6e4898: ldr             x1, [x1, #0x590]
    // 0x6e489c: r0 = LabeledGlobalKey()
    //     0x6e489c: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x6e48a0: ldur            x2, [fp, #-0x30]
    // 0x6e48a4: StoreField: r2->field_1b = r0
    //     0x6e48a4: stur            w0, [x2, #0x1b]
    //     0x6e48a8: ldurb           w16, [x2, #-1]
    //     0x6e48ac: ldurb           w17, [x0, #-1]
    //     0x6e48b0: and             x16, x17, x16, lsr #2
    //     0x6e48b4: tst             x16, HEAP, lsr #32
    //     0x6e48b8: b.eq            #0x6e48c0
    //     0x6e48bc: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6e48c0: ldur            x0, [fp, #-0x10]
    // 0x6e48c4: cmp             w0, NULL
    // 0x6e48c8: b.ne            #0x6e48d4
    // 0x6e48cc: r0 = Null
    //     0x6e48cc: mov             x0, NULL
    // 0x6e48d0: b               #0x6e48e0
    // 0x6e48d4: LoadField: r1 = r0->field_b
    //     0x6e48d4: ldur            w1, [x0, #0xb]
    // 0x6e48d8: DecompressPointer r1
    //     0x6e48d8: add             x1, x1, HEAP, lsl #32
    // 0x6e48dc: mov             x0, x1
    // 0x6e48e0: cmp             w0, NULL
    // 0x6e48e4: b.ne            #0x6e48ec
    // 0x6e48e8: r0 = ""
    //     0x6e48e8: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6e48ec: stur            x0, [fp, #-0x10]
    // 0x6e48f0: r1 = <TextEditingValue>
    //     0x6e48f0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6e48f4: r0 = TextEditingController()
    //     0x6e48f4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6e48f8: stur            x0, [fp, #-0x20]
    // 0x6e48fc: ldur            x16, [fp, #-0x10]
    // 0x6e4900: str             x16, [SP]
    // 0x6e4904: mov             x1, x0
    // 0x6e4908: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6e4908: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6e490c: ldr             x4, [x4, #0xa20]
    // 0x6e4910: r0 = TextEditingController()
    //     0x6e4910: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6e4914: ldur            x0, [fp, #-0x20]
    // 0x6e4918: ldur            x2, [fp, #-0x30]
    // 0x6e491c: StoreField: r2->field_1f = r0
    //     0x6e491c: stur            w0, [x2, #0x1f]
    //     0x6e4920: ldurb           w16, [x2, #-1]
    //     0x6e4924: ldurb           w17, [x0, #-1]
    //     0x6e4928: and             x16, x17, x16, lsr #2
    //     0x6e492c: tst             x16, HEAP, lsr #32
    //     0x6e4930: b.eq            #0x6e4938
    //     0x6e4934: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6e4938: LoadField: r0 = r2->field_13
    //     0x6e4938: ldur            w0, [x2, #0x13]
    // 0x6e493c: DecompressPointer r0
    //     0x6e493c: add             x0, x0, HEAP, lsl #32
    // 0x6e4940: cmp             w0, NULL
    // 0x6e4944: b.ne            #0x6e4950
    // 0x6e4948: r0 = Null
    //     0x6e4948: mov             x0, NULL
    // 0x6e494c: b               #0x6e495c
    // 0x6e4950: LoadField: r1 = r0->field_1b
    //     0x6e4950: ldur            w1, [x0, #0x1b]
    // 0x6e4954: DecompressPointer r1
    //     0x6e4954: add             x1, x1, HEAP, lsl #32
    // 0x6e4958: mov             x0, x1
    // 0x6e495c: cmp             w0, NULL
    // 0x6e4960: b.ne            #0x6e4968
    // 0x6e4964: r0 = ""
    //     0x6e4964: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6e4968: stur            x0, [fp, #-0x10]
    // 0x6e496c: r1 = <TextEditingValue>
    //     0x6e496c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x6e4970: r0 = TextEditingController()
    //     0x6e4970: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x6e4974: stur            x0, [fp, #-0x20]
    // 0x6e4978: ldur            x16, [fp, #-0x10]
    // 0x6e497c: str             x16, [SP]
    // 0x6e4980: mov             x1, x0
    // 0x6e4984: r4 = const [0, 0x2, 0x1, 0x1, text, 0x1, null]
    //     0x6e4984: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a20] List(7) [0, 0x2, 0x1, 0x1, "text", 0x1, Null]
    //     0x6e4988: ldr             x4, [x4, #0xa20]
    // 0x6e498c: r0 = TextEditingController()
    //     0x6e498c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x6e4990: ldur            x0, [fp, #-0x20]
    // 0x6e4994: ldur            x3, [fp, #-0x30]
    // 0x6e4998: StoreField: r3->field_23 = r0
    //     0x6e4998: stur            w0, [x3, #0x23]
    //     0x6e499c: ldurb           w16, [x3, #-1]
    //     0x6e49a0: ldurb           w17, [x0, #-1]
    //     0x6e49a4: and             x16, x17, x16, lsr #2
    //     0x6e49a8: tst             x16, HEAP, lsr #32
    //     0x6e49ac: b.eq            #0x6e49b4
    //     0x6e49b0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e49b4: LoadField: r1 = r3->field_13
    //     0x6e49b4: ldur            w1, [x3, #0x13]
    // 0x6e49b8: DecompressPointer r1
    //     0x6e49b8: add             x1, x1, HEAP, lsl #32
    // 0x6e49bc: cmp             w1, NULL
    // 0x6e49c0: b.ne            #0x6e49cc
    // 0x6e49c4: r0 = Null
    //     0x6e49c4: mov             x0, NULL
    // 0x6e49c8: b               #0x6e49d4
    // 0x6e49cc: LoadField: r0 = r1->field_13
    //     0x6e49cc: ldur            w0, [x1, #0x13]
    // 0x6e49d0: DecompressPointer r0
    //     0x6e49d0: add             x0, x0, HEAP, lsl #32
    // 0x6e49d4: StoreField: r3->field_27 = r0
    //     0x6e49d4: stur            w0, [x3, #0x27]
    //     0x6e49d8: ldurb           w16, [x3, #-1]
    //     0x6e49dc: ldurb           w17, [x0, #-1]
    //     0x6e49e0: and             x16, x17, x16, lsr #2
    //     0x6e49e4: tst             x16, HEAP, lsr #32
    //     0x6e49e8: b.eq            #0x6e49f0
    //     0x6e49ec: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e49f0: cmp             w1, NULL
    // 0x6e49f4: b.ne            #0x6e4a00
    // 0x6e49f8: r0 = Null
    //     0x6e49f8: mov             x0, NULL
    // 0x6e49fc: b               #0x6e4a08
    // 0x6e4a00: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x6e4a00: ldur            w0, [x1, #0x17]
    // 0x6e4a04: DecompressPointer r0
    //     0x6e4a04: add             x0, x0, HEAP, lsl #32
    // 0x6e4a08: StoreField: r3->field_2b = r0
    //     0x6e4a08: stur            w0, [x3, #0x2b]
    //     0x6e4a0c: ldurb           w16, [x3, #-1]
    //     0x6e4a10: ldurb           w17, [x0, #-1]
    //     0x6e4a14: and             x16, x17, x16, lsr #2
    //     0x6e4a18: tst             x16, HEAP, lsr #32
    //     0x6e4a1c: b.eq            #0x6e4a24
    //     0x6e4a20: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e4a24: cmp             w1, NULL
    // 0x6e4a28: b.ne            #0x6e4a34
    // 0x6e4a2c: r0 = Null
    //     0x6e4a2c: mov             x0, NULL
    // 0x6e4a30: b               #0x6e4a3c
    // 0x6e4a34: LoadField: r0 = r1->field_f
    //     0x6e4a34: ldur            w0, [x1, #0xf]
    // 0x6e4a38: DecompressPointer r0
    //     0x6e4a38: add             x0, x0, HEAP, lsl #32
    // 0x6e4a3c: StoreField: r3->field_2f = r0
    //     0x6e4a3c: stur            w0, [x3, #0x2f]
    //     0x6e4a40: ldurb           w16, [x3, #-1]
    //     0x6e4a44: ldurb           w17, [x0, #-1]
    //     0x6e4a48: and             x16, x17, x16, lsr #2
    //     0x6e4a4c: tst             x16, HEAP, lsr #32
    //     0x6e4a50: b.eq            #0x6e4a58
    //     0x6e4a54: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e4a58: cmp             w1, NULL
    // 0x6e4a5c: b.eq            #0x6e4ad4
    // 0x6e4a60: LoadField: r0 = r3->field_f
    //     0x6e4a60: ldur            w0, [x3, #0xf]
    // 0x6e4a64: DecompressPointer r0
    //     0x6e4a64: add             x0, x0, HEAP, lsl #32
    // 0x6e4a68: LoadField: r2 = r0->field_47
    //     0x6e4a68: ldur            w2, [x0, #0x47]
    // 0x6e4a6c: DecompressPointer r2
    //     0x6e4a6c: add             x2, x2, HEAP, lsl #32
    // 0x6e4a70: LoadField: r0 = r1->field_7
    //     0x6e4a70: ldur            w0, [x1, #7]
    // 0x6e4a74: DecompressPointer r0
    //     0x6e4a74: add             x0, x0, HEAP, lsl #32
    // 0x6e4a78: r1 = LoadClassIdInstr(r2)
    //     0x6e4a78: ldur            x1, [x2, #-1]
    //     0x6e4a7c: ubfx            x1, x1, #0xc, #0x14
    // 0x6e4a80: mov             x16, x2
    // 0x6e4a84: mov             x2, x1
    // 0x6e4a88: mov             x1, x16
    // 0x6e4a8c: mov             x16, x0
    // 0x6e4a90: mov             x0, x2
    // 0x6e4a94: mov             x2, x16
    // 0x6e4a98: r0 = GDT[cid_x0 + 0x36e]()
    //     0x6e4a98: add             lr, x0, #0x36e
    //     0x6e4a9c: ldr             lr, [x21, lr, lsl #3]
    //     0x6e4aa0: blr             lr
    // 0x6e4aa4: cmp             w0, NULL
    // 0x6e4aa8: b.ne            #0x6e4ac0
    // 0x6e4aac: r1 = Null
    //     0x6e4aac: mov             x1, NULL
    // 0x6e4ab0: r2 = 0
    //     0x6e4ab0: mov             x2, #0
    // 0x6e4ab4: r0 = _GrowableList()
    //     0x6e4ab4: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6e4ab8: mov             x2, x0
    // 0x6e4abc: b               #0x6e4ac4
    // 0x6e4ac0: mov             x2, x0
    // 0x6e4ac4: r1 = <String>
    //     0x6e4ac4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e4ac8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6e4ac8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6e4acc: r0 = List.from()
    //     0x6e4acc: bl              #0x490278  ; [dart:core] List::List.from
    // 0x6e4ad0: b               #0x6e4ae0
    // 0x6e4ad4: r1 = <String>
    //     0x6e4ad4: ldr             x1, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6e4ad8: r2 = 0
    //     0x6e4ad8: mov             x2, #0
    // 0x6e4adc: r0 = _GrowableList()
    //     0x6e4adc: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6e4ae0: ldur            x3, [fp, #-0x30]
    // 0x6e4ae4: StoreField: r3->field_33 = r0
    //     0x6e4ae4: stur            w0, [x3, #0x33]
    //     0x6e4ae8: ldurb           w16, [x3, #-1]
    //     0x6e4aec: ldurb           w17, [x0, #-1]
    //     0x6e4af0: and             x16, x17, x16, lsr #2
    //     0x6e4af4: tst             x16, HEAP, lsr #32
    //     0x6e4af8: b.eq            #0x6e4b00
    //     0x6e4afc: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6e4b00: mov             x2, x3
    // 0x6e4b04: r1 = Function '<anonymous closure>':.
    //     0x6e4b04: add             x1, PP, #0x13, lsl #12  ; [pp+0x13a28] AnonymousClosure: (0x6e47b8), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet (0x6e481c)
    //     0x6e4b08: ldr             x1, [x1, #0xa28]
    // 0x6e4b0c: r0 = AllocateClosure()
    //     0x6e4b0c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6e4b10: stp             x0, NULL, [SP, #0x18]
    // 0x6e4b14: ldur            x16, [fp, #-0x18]
    // 0x6e4b18: r30 = true
    //     0x6e4b18: add             lr, NULL, #0x20  ; true
    // 0x6e4b1c: stp             lr, x16, [SP, #8]
    // 0x6e4b20: r16 = Instance_RoundedRectangleBorder
    //     0x6e4b20: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a30] Obj!RoundedRectangleBorder@a0f2a1
    //     0x6e4b24: ldr             x16, [x16, #0xa30]
    // 0x6e4b28: str             x16, [SP]
    // 0x6e4b2c: r4 = const [0x1, 0x4, 0x4, 0x2, isScrollControlled, 0x2, shape, 0x3, null]
    //     0x6e4b2c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13a38] List(9) [0x1, 0x4, 0x4, 0x2, "isScrollControlled", 0x2, "shape", 0x3, Null]
    //     0x6e4b30: ldr             x4, [x4, #0xa38]
    // 0x6e4b34: r0 = showModalBottomSheet()
    //     0x6e4b34: bl              #0x6e0074  ; [package:flutter/src/material/bottom_sheet.dart] ::showModalBottomSheet
    // 0x6e4b38: mov             x1, x0
    // 0x6e4b3c: stur            x1, [fp, #-0x10]
    // 0x6e4b40: r0 = Await()
    //     0x6e4b40: bl              #0x3dd188  ; AwaitStub
    // 0x6e4b44: r0 = Null
    //     0x6e4b44: mov             x0, NULL
    // 0x6e4b48: r0 = ReturnAsyncNotFuture()
    //     0x6e4b48: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6e4b4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e4b4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e4b50: b               #0x6e4848
  }
  _ build(/* No info */) {
    // ** addr: 0x7e7d08, size: 0x58
    // 0x7e7d08: EnterFrame
    //     0x7e7d08: stp             fp, lr, [SP, #-0x10]!
    //     0x7e7d0c: mov             fp, SP
    // 0x7e7d10: AllocStack(0x8)
    //     0x7e7d10: sub             SP, SP, #8
    // 0x7e7d14: SetupParameters(TripsTab this /* r1 => r1, fp-0x8 */)
    //     0x7e7d14: stur            x1, [fp, #-8]
    // 0x7e7d18: r1 = 1
    //     0x7e7d18: mov             x1, #1
    // 0x7e7d1c: r0 = AllocateContext()
    //     0x7e7d1c: bl              #0x927010  ; AllocateContextStub
    // 0x7e7d20: mov             x1, x0
    // 0x7e7d24: ldur            x0, [fp, #-8]
    // 0x7e7d28: StoreField: r1->field_f = r0
    //     0x7e7d28: stur            w0, [x1, #0xf]
    // 0x7e7d2c: mov             x2, x1
    // 0x7e7d30: r1 = Function '<anonymous closure>':.
    //     0x7e7d30: add             x1, PP, #0x13, lsl #12  ; [pp+0x13988] AnonymousClosure: (0x7e7d60), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::build (0x7e7d08)
    //     0x7e7d34: ldr             x1, [x1, #0x988]
    // 0x7e7d38: r0 = AllocateClosure()
    //     0x7e7d38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e7d3c: r1 = <AdminProvider>
    //     0x7e7d3c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b50] TypeArguments: <AdminProvider>
    //     0x7e7d40: ldr             x1, [x1, #0xb50]
    // 0x7e7d44: stur            x0, [fp, #-8]
    // 0x7e7d48: r0 = Consumer()
    //     0x7e7d48: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x7e7d4c: ldur            x1, [fp, #-8]
    // 0x7e7d50: StoreField: r0->field_13 = r1
    //     0x7e7d50: stur            w1, [x0, #0x13]
    // 0x7e7d54: LeaveFrame
    //     0x7e7d54: mov             SP, fp
    //     0x7e7d58: ldp             fp, lr, [SP], #0x10
    // 0x7e7d5c: ret
    //     0x7e7d5c: ret             
  }
  [closure] ListView <anonymous closure>(dynamic, BuildContext, AdminProvider, Widget?) {
    // ** addr: 0x7e7d60, size: 0x448
    // 0x7e7d60: EnterFrame
    //     0x7e7d60: stp             fp, lr, [SP, #-0x10]!
    //     0x7e7d64: mov             fp, SP
    // 0x7e7d68: AllocStack(0x50)
    //     0x7e7d68: sub             SP, SP, #0x50
    // 0x7e7d6c: SetupParameters([dynamic _ /* r0 */])
    //     0x7e7d6c: ldr             x0, [fp, #0x28]
    //     0x7e7d70: ldur            w1, [x0, #0x17]
    //     0x7e7d74: add             x1, x1, HEAP, lsl #32
    //     0x7e7d78: stur            x1, [fp, #-8]
    // 0x7e7d7c: CheckStackOverflow
    //     0x7e7d7c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e7d80: cmp             SP, x16
    //     0x7e7d84: b.ls            #0x7e81a0
    // 0x7e7d88: r1 = 2
    //     0x7e7d88: mov             x1, #2
    // 0x7e7d8c: r0 = AllocateContext()
    //     0x7e7d8c: bl              #0x927010  ; AllocateContextStub
    // 0x7e7d90: mov             x1, x0
    // 0x7e7d94: ldur            x0, [fp, #-8]
    // 0x7e7d98: stur            x1, [fp, #-0x18]
    // 0x7e7d9c: StoreField: r1->field_b = r0
    //     0x7e7d9c: stur            w0, [x1, #0xb]
    // 0x7e7da0: ldr             x2, [fp, #0x20]
    // 0x7e7da4: StoreField: r1->field_f = r2
    //     0x7e7da4: stur            w2, [x1, #0xf]
    // 0x7e7da8: ldr             x2, [fp, #0x18]
    // 0x7e7dac: StoreField: r1->field_13 = r2
    //     0x7e7dac: stur            w2, [x1, #0x13]
    // 0x7e7db0: LoadField: r2 = r0->field_f
    //     0x7e7db0: ldur            w2, [x0, #0xf]
    // 0x7e7db4: DecompressPointer r2
    //     0x7e7db4: add             x2, x2, HEAP, lsl #32
    // 0x7e7db8: LoadField: r3 = r2->field_b
    //     0x7e7db8: ldur            w3, [x2, #0xb]
    // 0x7e7dbc: DecompressPointer r3
    //     0x7e7dbc: add             x3, x3, HEAP, lsl #32
    // 0x7e7dc0: stur            x3, [fp, #-0x10]
    // 0x7e7dc4: r0 = TextStyle()
    //     0x7e7dc4: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e7dc8: mov             x1, x0
    // 0x7e7dcc: r0 = true
    //     0x7e7dcc: add             x0, NULL, #0x20  ; true
    // 0x7e7dd0: stur            x1, [fp, #-0x20]
    // 0x7e7dd4: StoreField: r1->field_7 = r0
    //     0x7e7dd4: stur            w0, [x1, #7]
    // 0x7e7dd8: ldur            x0, [fp, #-0x10]
    // 0x7e7ddc: StoreField: r1->field_b = r0
    //     0x7e7ddc: stur            w0, [x1, #0xb]
    // 0x7e7de0: r0 = Instance_FontWeight
    //     0x7e7de0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x7e7de4: ldr             x0, [x0, #0x990]
    // 0x7e7de8: StoreField: r1->field_23 = r0
    //     0x7e7de8: stur            w0, [x1, #0x23]
    // 0x7e7dec: r0 = Text()
    //     0x7e7dec: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e7df0: mov             x2, x0
    // 0x7e7df4: r0 = "Sefer oluştur, düzenle ve listele."
    //     0x7e7df4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13998] "Sefer oluştur, düzenle ve listele."
    //     0x7e7df8: ldr             x0, [x0, #0x998]
    // 0x7e7dfc: stur            x2, [fp, #-0x10]
    // 0x7e7e00: StoreField: r2->field_b = r0
    //     0x7e7e00: stur            w0, [x2, #0xb]
    // 0x7e7e04: ldur            x0, [fp, #-0x20]
    // 0x7e7e08: StoreField: r2->field_13 = r0
    //     0x7e7e08: stur            w0, [x2, #0x13]
    // 0x7e7e0c: r1 = <FlexParentData>
    //     0x7e7e0c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e7e10: ldr             x1, [x1, #0x340]
    // 0x7e7e14: r0 = Expanded()
    //     0x7e7e14: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e7e18: mov             x1, x0
    // 0x7e7e1c: r0 = 1
    //     0x7e7e1c: mov             x0, #1
    // 0x7e7e20: stur            x1, [fp, #-0x20]
    // 0x7e7e24: StoreField: r1->field_13 = r0
    //     0x7e7e24: stur            x0, [x1, #0x13]
    // 0x7e7e28: r0 = Instance_FlexFit
    //     0x7e7e28: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e7e2c: ldr             x0, [x0, #0x348]
    // 0x7e7e30: StoreField: r1->field_1b = r0
    //     0x7e7e30: stur            w0, [x1, #0x1b]
    // 0x7e7e34: ldur            x0, [fp, #-0x10]
    // 0x7e7e38: StoreField: r1->field_b = r0
    //     0x7e7e38: stur            w0, [x1, #0xb]
    // 0x7e7e3c: r0 = Radius()
    //     0x7e7e3c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e7e40: d0 = 12.000000
    //     0x7e7e40: fmov            d0, #12.00000000
    // 0x7e7e44: stur            x0, [fp, #-0x10]
    // 0x7e7e48: StoreField: r0->field_7 = d0
    //     0x7e7e48: stur            d0, [x0, #7]
    // 0x7e7e4c: StoreField: r0->field_f = d0
    //     0x7e7e4c: stur            d0, [x0, #0xf]
    // 0x7e7e50: r0 = BorderRadius()
    //     0x7e7e50: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e7e54: mov             x1, x0
    // 0x7e7e58: ldur            x0, [fp, #-0x10]
    // 0x7e7e5c: stur            x1, [fp, #-0x28]
    // 0x7e7e60: StoreField: r1->field_7 = r0
    //     0x7e7e60: stur            w0, [x1, #7]
    // 0x7e7e64: StoreField: r1->field_b = r0
    //     0x7e7e64: stur            w0, [x1, #0xb]
    // 0x7e7e68: StoreField: r1->field_f = r0
    //     0x7e7e68: stur            w0, [x1, #0xf]
    // 0x7e7e6c: StoreField: r1->field_13 = r0
    //     0x7e7e6c: stur            w0, [x1, #0x13]
    // 0x7e7e70: r0 = RoundedRectangleBorder()
    //     0x7e7e70: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7e7e74: mov             x1, x0
    // 0x7e7e78: ldur            x0, [fp, #-0x28]
    // 0x7e7e7c: StoreField: r1->field_b = r0
    //     0x7e7e7c: stur            w0, [x1, #0xb]
    // 0x7e7e80: r0 = Instance_BorderSide
    //     0x7e7e80: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7e7e84: ldr             x0, [x0, #0xcb8]
    // 0x7e7e88: StoreField: r1->field_7 = r0
    //     0x7e7e88: stur            w0, [x1, #7]
    // 0x7e7e8c: r16 = Instance_MaterialColor
    //     0x7e7e8c: add             x16, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x7e7e90: ldr             x16, [x16, #0x5d8]
    // 0x7e7e94: r30 = Instance_Color
    //     0x7e7e94: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7e7e98: stp             lr, x16, [SP, #0x10]
    // 0x7e7e9c: r16 = Instance_EdgeInsets
    //     0x7e7e9c: add             x16, PP, #0x13, lsl #12  ; [pp+0x139a0] Obj!EdgeInsets@a0c4a1
    //     0x7e7ea0: ldr             x16, [x16, #0x9a0]
    // 0x7e7ea4: stp             x1, x16, [SP]
    // 0x7e7ea8: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x7e7ea8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x7e7eac: ldr             x4, [x4, #0xbb0]
    // 0x7e7eb0: r0 = styleFrom()
    //     0x7e7eb0: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7e7eb4: mov             x3, x0
    // 0x7e7eb8: ldur            x0, [fp, #-0x18]
    // 0x7e7ebc: stur            x3, [fp, #-0x10]
    // 0x7e7ec0: LoadField: r1 = r0->field_13
    //     0x7e7ec0: ldur            w1, [x0, #0x13]
    // 0x7e7ec4: DecompressPointer r1
    //     0x7e7ec4: add             x1, x1, HEAP, lsl #32
    // 0x7e7ec8: LoadField: r2 = r1->field_2b
    //     0x7e7ec8: ldur            w2, [x1, #0x2b]
    // 0x7e7ecc: DecompressPointer r2
    //     0x7e7ecc: add             x2, x2, HEAP, lsl #32
    // 0x7e7ed0: tbnz            w2, #4, #0x7e7ee0
    // 0x7e7ed4: mov             x2, x0
    // 0x7e7ed8: r5 = Null
    //     0x7e7ed8: mov             x5, NULL
    // 0x7e7edc: b               #0x7e7ef8
    // 0x7e7ee0: mov             x2, x0
    // 0x7e7ee4: r1 = Function '<anonymous closure>':.
    //     0x7e7ee4: add             x1, PP, #0x13, lsl #12  ; [pp+0x139a8] AnonymousClosure: (0x7e86e4), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::build (0x7e7d08)
    //     0x7e7ee8: ldr             x1, [x1, #0x9a8]
    // 0x7e7eec: r0 = AllocateClosure()
    //     0x7e7eec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e7ef0: mov             x5, x0
    // 0x7e7ef4: ldur            x2, [fp, #-0x18]
    // 0x7e7ef8: ldur            x0, [fp, #-0x20]
    // 0x7e7efc: stur            x5, [fp, #-0x28]
    // 0x7e7f00: r0 = _ElevatedButtonWithIcon()
    //     0x7e7f00: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x7e7f04: mov             x1, x0
    // 0x7e7f08: ldur            x5, [fp, #-0x28]
    // 0x7e7f0c: ldur            x6, [fp, #-0x10]
    // 0x7e7f10: r2 = Instance_Icon
    //     0x7e7f10: add             x2, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x7e7f14: ldr             x2, [x2, #0x5b0]
    // 0x7e7f18: r3 = Instance_Text
    //     0x7e7f18: add             x3, PP, #0x13, lsl #12  ; [pp+0x139b0] Obj!Text@a1db61
    //     0x7e7f1c: ldr             x3, [x3, #0x9b0]
    // 0x7e7f20: stur            x0, [fp, #-0x10]
    // 0x7e7f24: r0 = _ElevatedButtonWithIcon()
    //     0x7e7f24: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x7e7f28: r1 = Null
    //     0x7e7f28: mov             x1, NULL
    // 0x7e7f2c: r2 = 4
    //     0x7e7f2c: mov             x2, #4
    // 0x7e7f30: r0 = AllocateArray()
    //     0x7e7f30: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7f34: mov             x2, x0
    // 0x7e7f38: ldur            x0, [fp, #-0x20]
    // 0x7e7f3c: stur            x2, [fp, #-0x28]
    // 0x7e7f40: StoreField: r2->field_f = r0
    //     0x7e7f40: stur            w0, [x2, #0xf]
    // 0x7e7f44: ldur            x0, [fp, #-0x10]
    // 0x7e7f48: StoreField: r2->field_13 = r0
    //     0x7e7f48: stur            w0, [x2, #0x13]
    // 0x7e7f4c: r1 = <Widget>
    //     0x7e7f4c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e7f50: r0 = AllocateGrowableArray()
    //     0x7e7f50: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e7f54: mov             x1, x0
    // 0x7e7f58: ldur            x0, [fp, #-0x28]
    // 0x7e7f5c: stur            x1, [fp, #-0x10]
    // 0x7e7f60: StoreField: r1->field_f = r0
    //     0x7e7f60: stur            w0, [x1, #0xf]
    // 0x7e7f64: r2 = 4
    //     0x7e7f64: mov             x2, #4
    // 0x7e7f68: StoreField: r1->field_b = r2
    //     0x7e7f68: stur            w2, [x1, #0xb]
    // 0x7e7f6c: r0 = Row()
    //     0x7e7f6c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e7f70: mov             x3, x0
    // 0x7e7f74: r0 = Instance_Axis
    //     0x7e7f74: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e7f78: stur            x3, [fp, #-0x20]
    // 0x7e7f7c: StoreField: r3->field_f = r0
    //     0x7e7f7c: stur            w0, [x3, #0xf]
    // 0x7e7f80: r0 = Instance_MainAxisAlignment
    //     0x7e7f80: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e7f84: ldr             x0, [x0, #0x230]
    // 0x7e7f88: StoreField: r3->field_13 = r0
    //     0x7e7f88: stur            w0, [x3, #0x13]
    // 0x7e7f8c: r0 = Instance_MainAxisSize
    //     0x7e7f8c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e7f90: ldr             x0, [x0, #0x330]
    // 0x7e7f94: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e7f94: stur            w0, [x3, #0x17]
    // 0x7e7f98: r0 = Instance_CrossAxisAlignment
    //     0x7e7f98: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e7f9c: ldr             x0, [x0, #0x338]
    // 0x7e7fa0: StoreField: r3->field_1b = r0
    //     0x7e7fa0: stur            w0, [x3, #0x1b]
    // 0x7e7fa4: r0 = Instance_VerticalDirection
    //     0x7e7fa4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e7fa8: ldr             x0, [x0, #0x340]
    // 0x7e7fac: StoreField: r3->field_23 = r0
    //     0x7e7fac: stur            w0, [x3, #0x23]
    // 0x7e7fb0: r0 = Instance_Clip
    //     0x7e7fb0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e7fb4: ldr             x0, [x0, #0x348]
    // 0x7e7fb8: StoreField: r3->field_2b = r0
    //     0x7e7fb8: stur            w0, [x3, #0x2b]
    // 0x7e7fbc: StoreField: r3->field_2f = rZR
    //     0x7e7fbc: stur            xzr, [x3, #0x2f]
    // 0x7e7fc0: ldur            x0, [fp, #-0x10]
    // 0x7e7fc4: StoreField: r3->field_b = r0
    //     0x7e7fc4: stur            w0, [x3, #0xb]
    // 0x7e7fc8: r1 = Null
    //     0x7e7fc8: mov             x1, NULL
    // 0x7e7fcc: r2 = 4
    //     0x7e7fcc: mov             x2, #4
    // 0x7e7fd0: r0 = AllocateArray()
    //     0x7e7fd0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e7fd4: mov             x2, x0
    // 0x7e7fd8: ldur            x0, [fp, #-0x20]
    // 0x7e7fdc: stur            x2, [fp, #-0x10]
    // 0x7e7fe0: StoreField: r2->field_f = r0
    //     0x7e7fe0: stur            w0, [x2, #0xf]
    // 0x7e7fe4: r16 = Instance_SizedBox
    //     0x7e7fe4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7e7fe8: ldr             x16, [x16, #0x310]
    // 0x7e7fec: StoreField: r2->field_13 = r16
    //     0x7e7fec: stur            w16, [x2, #0x13]
    // 0x7e7ff0: r1 = <Widget>
    //     0x7e7ff0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e7ff4: r0 = AllocateGrowableArray()
    //     0x7e7ff4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e7ff8: mov             x3, x0
    // 0x7e7ffc: ldur            x0, [fp, #-0x10]
    // 0x7e8000: stur            x3, [fp, #-0x20]
    // 0x7e8004: StoreField: r3->field_f = r0
    //     0x7e8004: stur            w0, [x3, #0xf]
    // 0x7e8008: r0 = 4
    //     0x7e8008: mov             x0, #4
    // 0x7e800c: StoreField: r3->field_b = r0
    //     0x7e800c: stur            w0, [x3, #0xb]
    // 0x7e8010: ldur            x0, [fp, #-0x18]
    // 0x7e8014: LoadField: r1 = r0->field_13
    //     0x7e8014: ldur            w1, [x0, #0x13]
    // 0x7e8018: DecompressPointer r1
    //     0x7e8018: add             x1, x1, HEAP, lsl #32
    // 0x7e801c: LoadField: r4 = r1->field_37
    //     0x7e801c: ldur            w4, [x1, #0x37]
    // 0x7e8020: DecompressPointer r4
    //     0x7e8020: add             x4, x4, HEAP, lsl #32
    // 0x7e8024: mov             x2, x0
    // 0x7e8028: stur            x4, [fp, #-0x10]
    // 0x7e802c: r1 = Function '<anonymous closure>':.
    //     0x7e802c: add             x1, PP, #0x13, lsl #12  ; [pp+0x139b8] AnonymousClosure: (0x7e81a8), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::build (0x7e7d08)
    //     0x7e8030: ldr             x1, [x1, #0x9b8]
    // 0x7e8034: r0 = AllocateClosure()
    //     0x7e8034: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e8038: mov             x1, x0
    // 0x7e803c: ldur            x0, [fp, #-0x10]
    // 0x7e8040: r2 = LoadClassIdInstr(r0)
    //     0x7e8040: ldur            x2, [x0, #-1]
    //     0x7e8044: ubfx            x2, x2, #0xc, #0x14
    // 0x7e8048: r16 = <Widget>
    //     0x7e8048: ldr             x16, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e804c: stp             x0, x16, [SP, #8]
    // 0x7e8050: str             x1, [SP]
    // 0x7e8054: mov             x0, x2
    // 0x7e8058: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e8058: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e805c: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x7e805c: mov             x17, #0xd1d6
    //     0x7e8060: add             lr, x0, x17
    //     0x7e8064: ldr             lr, [x21, lr, lsl #3]
    //     0x7e8068: blr             lr
    // 0x7e806c: ldur            x1, [fp, #-0x20]
    // 0x7e8070: mov             x2, x0
    // 0x7e8074: r0 = addAll()
    //     0x7e8074: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x7e8078: ldur            x0, [fp, #-0x18]
    // 0x7e807c: LoadField: r1 = r0->field_13
    //     0x7e807c: ldur            w1, [x0, #0x13]
    // 0x7e8080: DecompressPointer r1
    //     0x7e8080: add             x1, x1, HEAP, lsl #32
    // 0x7e8084: LoadField: r0 = r1->field_37
    //     0x7e8084: ldur            w0, [x1, #0x37]
    // 0x7e8088: DecompressPointer r0
    //     0x7e8088: add             x0, x0, HEAP, lsl #32
    // 0x7e808c: r1 = LoadClassIdInstr(r0)
    //     0x7e808c: ldur            x1, [x0, #-1]
    //     0x7e8090: ubfx            x1, x1, #0xc, #0x14
    // 0x7e8094: mov             x16, x0
    // 0x7e8098: mov             x0, x1
    // 0x7e809c: mov             x1, x16
    // 0x7e80a0: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x7e80a0: mov             x17, #0xcda7
    //     0x7e80a4: add             lr, x0, x17
    //     0x7e80a8: ldr             lr, [x21, lr, lsl #3]
    //     0x7e80ac: blr             lr
    // 0x7e80b0: tbnz            w0, #4, #0x7e816c
    // 0x7e80b4: ldur            x0, [fp, #-8]
    // 0x7e80b8: ldur            x1, [fp, #-0x20]
    // 0x7e80bc: LoadField: r2 = r0->field_f
    //     0x7e80bc: ldur            w2, [x0, #0xf]
    // 0x7e80c0: DecompressPointer r2
    //     0x7e80c0: add             x2, x2, HEAP, lsl #32
    // 0x7e80c4: LoadField: r0 = r2->field_b
    //     0x7e80c4: ldur            w0, [x2, #0xb]
    // 0x7e80c8: DecompressPointer r0
    //     0x7e80c8: add             x0, x0, HEAP, lsl #32
    // 0x7e80cc: stur            x0, [fp, #-8]
    // 0x7e80d0: r0 = EmptyCard()
    //     0x7e80d0: bl              #0x7e6ec0  ; AllocateEmptyCardStub -> EmptyCard (size=0x14)
    // 0x7e80d4: mov             x2, x0
    // 0x7e80d8: r0 = "Henüz sefer oluşturulmadı."
    //     0x7e80d8: add             x0, PP, #0x13, lsl #12  ; [pp+0x139c0] "Henüz sefer oluşturulmadı."
    //     0x7e80dc: ldr             x0, [x0, #0x9c0]
    // 0x7e80e0: stur            x2, [fp, #-0x10]
    // 0x7e80e4: StoreField: r2->field_b = r0
    //     0x7e80e4: stur            w0, [x2, #0xb]
    // 0x7e80e8: ldur            x0, [fp, #-8]
    // 0x7e80ec: StoreField: r2->field_f = r0
    //     0x7e80ec: stur            w0, [x2, #0xf]
    // 0x7e80f0: ldur            x0, [fp, #-0x20]
    // 0x7e80f4: LoadField: r1 = r0->field_b
    //     0x7e80f4: ldur            w1, [x0, #0xb]
    // 0x7e80f8: LoadField: r3 = r0->field_f
    //     0x7e80f8: ldur            w3, [x0, #0xf]
    // 0x7e80fc: DecompressPointer r3
    //     0x7e80fc: add             x3, x3, HEAP, lsl #32
    // 0x7e8100: LoadField: r4 = r3->field_b
    //     0x7e8100: ldur            w4, [x3, #0xb]
    // 0x7e8104: r3 = LoadInt32Instr(r1)
    //     0x7e8104: sbfx            x3, x1, #1, #0x1f
    // 0x7e8108: stur            x3, [fp, #-0x30]
    // 0x7e810c: r1 = LoadInt32Instr(r4)
    //     0x7e810c: sbfx            x1, x4, #1, #0x1f
    // 0x7e8110: cmp             x3, x1
    // 0x7e8114: b.ne            #0x7e8120
    // 0x7e8118: mov             x1, x0
    // 0x7e811c: r0 = _growToNextCapacity()
    //     0x7e811c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e8120: ldur            x2, [fp, #-0x20]
    // 0x7e8124: ldur            x3, [fp, #-0x30]
    // 0x7e8128: add             x0, x3, #1
    // 0x7e812c: lsl             x1, x0, #1
    // 0x7e8130: StoreField: r2->field_b = r1
    //     0x7e8130: stur            w1, [x2, #0xb]
    // 0x7e8134: LoadField: r1 = r2->field_f
    //     0x7e8134: ldur            w1, [x2, #0xf]
    // 0x7e8138: DecompressPointer r1
    //     0x7e8138: add             x1, x1, HEAP, lsl #32
    // 0x7e813c: ldur            x0, [fp, #-0x10]
    // 0x7e8140: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e8140: add             x25, x1, x3, lsl #2
    //     0x7e8144: add             x25, x25, #0xf
    //     0x7e8148: str             w0, [x25]
    //     0x7e814c: tbz             w0, #0, #0x7e8168
    //     0x7e8150: ldurb           w16, [x1, #-1]
    //     0x7e8154: ldurb           w17, [x0, #-1]
    //     0x7e8158: and             x16, x17, x16, lsr #2
    //     0x7e815c: tst             x16, HEAP, lsr #32
    //     0x7e8160: b.eq            #0x7e8168
    //     0x7e8164: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8168: b               #0x7e8170
    // 0x7e816c: ldur            x2, [fp, #-0x20]
    // 0x7e8170: r0 = ListView()
    //     0x7e8170: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x7e8174: mov             x1, x0
    // 0x7e8178: ldur            x2, [fp, #-0x20]
    // 0x7e817c: r3 = Instance_EdgeInsets
    //     0x7e817c: add             x3, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e8180: ldr             x3, [x3, #0x240]
    // 0x7e8184: stur            x0, [fp, #-8]
    // 0x7e8188: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x7e8188: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x7e818c: r0 = ListView()
    //     0x7e818c: bl              #0x67cae0  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView
    // 0x7e8190: ldur            x0, [fp, #-8]
    // 0x7e8194: LeaveFrame
    //     0x7e8194: mov             SP, fp
    //     0x7e8198: ldp             fp, lr, [SP], #0x10
    // 0x7e819c: ret
    //     0x7e819c: ret             
    // 0x7e81a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e81a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e81a4: b               #0x7e7d88
  }
  [closure] InfoCard <anonymous closure>(dynamic, TripModel) {
    // ** addr: 0x7e81a8, size: 0x30c
    // 0x7e81a8: EnterFrame
    //     0x7e81a8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e81ac: mov             fp, SP
    // 0x7e81b0: AllocStack(0x48)
    //     0x7e81b0: sub             SP, SP, #0x48
    // 0x7e81b4: SetupParameters([dynamic _ /* r0 */])
    //     0x7e81b4: ldr             x0, [fp, #0x18]
    //     0x7e81b8: ldur            w1, [x0, #0x17]
    //     0x7e81bc: add             x1, x1, HEAP, lsl #32
    //     0x7e81c0: stur            x1, [fp, #-8]
    // 0x7e81c4: CheckStackOverflow
    //     0x7e81c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e81c8: cmp             SP, x16
    //     0x7e81cc: b.ls            #0x7e84ac
    // 0x7e81d0: r1 = 1
    //     0x7e81d0: mov             x1, #1
    // 0x7e81d4: r0 = AllocateContext()
    //     0x7e81d4: bl              #0x927010  ; AllocateContextStub
    // 0x7e81d8: mov             x3, x0
    // 0x7e81dc: ldur            x0, [fp, #-8]
    // 0x7e81e0: stur            x3, [fp, #-0x10]
    // 0x7e81e4: StoreField: r3->field_b = r0
    //     0x7e81e4: stur            w0, [x3, #0xb]
    // 0x7e81e8: ldr             x4, [fp, #0x10]
    // 0x7e81ec: StoreField: r3->field_f = r4
    //     0x7e81ec: stur            w4, [x3, #0xf]
    // 0x7e81f0: LoadField: r1 = r0->field_13
    //     0x7e81f0: ldur            w1, [x0, #0x13]
    // 0x7e81f4: DecompressPointer r1
    //     0x7e81f4: add             x1, x1, HEAP, lsl #32
    // 0x7e81f8: LoadField: r2 = r4->field_7
    //     0x7e81f8: ldur            w2, [x4, #7]
    // 0x7e81fc: DecompressPointer r2
    //     0x7e81fc: add             x2, x2, HEAP, lsl #32
    // 0x7e8200: r0 = getTripManagerUsers()
    //     0x7e8200: bl              #0x7e84b4  ; [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::getTripManagerUsers
    // 0x7e8204: r1 = Function '<anonymous closure>':.
    //     0x7e8204: add             x1, PP, #0x13, lsl #12  ; [pp+0x139c8] Function: [dart:ui] Paint::_objects (0x79b7bc)
    //     0x7e8208: ldr             x1, [x1, #0x9c8]
    // 0x7e820c: r2 = Null
    //     0x7e820c: mov             x2, NULL
    // 0x7e8210: stur            x0, [fp, #-8]
    // 0x7e8214: r0 = AllocateClosure()
    //     0x7e8214: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e8218: r16 = <String>
    //     0x7e8218: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x7e821c: ldur            lr, [fp, #-8]
    // 0x7e8220: stp             lr, x16, [SP, #8]
    // 0x7e8224: str             x0, [SP]
    // 0x7e8228: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7e8228: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7e822c: r0 = map()
    //     0x7e822c: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x7e8230: r16 = ", "
    //     0x7e8230: ldr             x16, [PP, #0xa40]  ; [pp+0xa40] ", "
    // 0x7e8234: str             x16, [SP]
    // 0x7e8238: mov             x1, x0
    // 0x7e823c: r4 = const [0, 0x2, 0x1, 0x2, null]
    //     0x7e823c: ldr             x4, [PP, #0x308]  ; [pp+0x308] List(5) [0, 0x2, 0x1, 0x2, Null]
    // 0x7e8240: r0 = join()
    //     0x7e8240: bl              #0x4d2fa8  ; [dart:_internal] ListIterable::join
    // 0x7e8244: mov             x3, x0
    // 0x7e8248: ldr             x0, [fp, #0x10]
    // 0x7e824c: stur            x3, [fp, #-0x28]
    // 0x7e8250: LoadField: r4 = r0->field_b
    //     0x7e8250: ldur            w4, [x0, #0xb]
    // 0x7e8254: DecompressPointer r4
    //     0x7e8254: add             x4, x4, HEAP, lsl #32
    // 0x7e8258: stur            x4, [fp, #-0x20]
    // 0x7e825c: LoadField: r1 = r0->field_f
    //     0x7e825c: ldur            w1, [x0, #0xf]
    // 0x7e8260: DecompressPointer r1
    //     0x7e8260: add             x1, x1, HEAP, lsl #32
    // 0x7e8264: cmp             w1, NULL
    // 0x7e8268: b.ne            #0x7e8278
    // 0x7e826c: r5 = "Yer belirtilmedi"
    //     0x7e826c: add             x5, PP, #0x13, lsl #12  ; [pp+0x139d0] "Yer belirtilmedi"
    //     0x7e8270: ldr             x5, [x5, #0x9d0]
    // 0x7e8274: b               #0x7e827c
    // 0x7e8278: mov             x5, x1
    // 0x7e827c: stur            x5, [fp, #-0x18]
    // 0x7e8280: r1 = Null
    //     0x7e8280: mov             x1, NULL
    // 0x7e8284: r2 = 10
    //     0x7e8284: mov             x2, #0xa
    // 0x7e8288: r0 = AllocateArray()
    //     0x7e8288: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e828c: mov             x2, x0
    // 0x7e8290: ldur            x0, [fp, #-0x18]
    // 0x7e8294: stur            x2, [fp, #-0x30]
    // 0x7e8298: StoreField: r2->field_f = r0
    //     0x7e8298: stur            w0, [x2, #0xf]
    // 0x7e829c: r16 = " • "
    //     0x7e829c: add             x16, PP, #0x13, lsl #12  ; [pp+0x139d8] " • "
    //     0x7e82a0: ldr             x16, [x16, #0x9d8]
    // 0x7e82a4: StoreField: r2->field_13 = r16
    //     0x7e82a4: stur            w16, [x2, #0x13]
    // 0x7e82a8: ldr             x0, [fp, #0x10]
    // 0x7e82ac: LoadField: r1 = r0->field_13
    //     0x7e82ac: ldur            w1, [x0, #0x13]
    // 0x7e82b0: DecompressPointer r1
    //     0x7e82b0: add             x1, x1, HEAP, lsl #32
    // 0x7e82b4: cmp             w1, NULL
    // 0x7e82b8: b.eq            #0x7e82c4
    // 0x7e82bc: r0 = parseDdMmYyyyToString()
    //     0x7e82bc: bl              #0x6efbf4  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::parseDdMmYyyyToString
    // 0x7e82c0: b               #0x7e82cc
    // 0x7e82c4: r0 = "Tarih yok"
    //     0x7e82c4: add             x0, PP, #0x13, lsl #12  ; [pp+0x139e0] "Tarih yok"
    //     0x7e82c8: ldr             x0, [x0, #0x9e0]
    // 0x7e82cc: ldr             x3, [fp, #0x10]
    // 0x7e82d0: ldur            x2, [fp, #-0x30]
    // 0x7e82d4: mov             x1, x2
    // 0x7e82d8: ArrayStore: r1[2] = r0  ; List_4
    //     0x7e82d8: add             x25, x1, #0x17
    //     0x7e82dc: str             w0, [x25]
    //     0x7e82e0: tbz             w0, #0, #0x7e82fc
    //     0x7e82e4: ldurb           w16, [x1, #-1]
    //     0x7e82e8: ldurb           w17, [x0, #-1]
    //     0x7e82ec: and             x16, x17, x16, lsr #2
    //     0x7e82f0: tst             x16, HEAP, lsr #32
    //     0x7e82f4: b.eq            #0x7e82fc
    //     0x7e82f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e82fc: r16 = " - "
    //     0x7e82fc: add             x16, PP, #0x13, lsl #12  ; [pp+0x139e8] " - "
    //     0x7e8300: ldr             x16, [x16, #0x9e8]
    // 0x7e8304: StoreField: r2->field_1b = r16
    //     0x7e8304: stur            w16, [x2, #0x1b]
    // 0x7e8308: ArrayLoad: r1 = r3[0]  ; List_4
    //     0x7e8308: ldur            w1, [x3, #0x17]
    // 0x7e830c: DecompressPointer r1
    //     0x7e830c: add             x1, x1, HEAP, lsl #32
    // 0x7e8310: cmp             w1, NULL
    // 0x7e8314: b.eq            #0x7e8320
    // 0x7e8318: r0 = parseDdMmYyyyToString()
    //     0x7e8318: bl              #0x6efbf4  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::parseDdMmYyyyToString
    // 0x7e831c: b               #0x7e8328
    // 0x7e8320: r0 = "Tarih yok"
    //     0x7e8320: add             x0, PP, #0x13, lsl #12  ; [pp+0x139e0] "Tarih yok"
    //     0x7e8324: ldr             x0, [x0, #0x9e0]
    // 0x7e8328: ldur            x2, [fp, #-8]
    // 0x7e832c: ldur            x1, [fp, #-0x30]
    // 0x7e8330: ArrayStore: r1[4] = r0  ; List_4
    //     0x7e8330: add             x25, x1, #0x1f
    //     0x7e8334: str             w0, [x25]
    //     0x7e8338: tbz             w0, #0, #0x7e8354
    //     0x7e833c: ldurb           w16, [x1, #-1]
    //     0x7e8340: ldurb           w17, [x0, #-1]
    //     0x7e8344: and             x16, x17, x16, lsr #2
    //     0x7e8348: tst             x16, HEAP, lsr #32
    //     0x7e834c: b.eq            #0x7e8354
    //     0x7e8350: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8354: ldur            x16, [fp, #-0x30]
    // 0x7e8358: str             x16, [SP]
    // 0x7e835c: r0 = _interpolate()
    //     0x7e835c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e8360: mov             x3, x0
    // 0x7e8364: ldur            x0, [fp, #-8]
    // 0x7e8368: stur            x3, [fp, #-0x18]
    // 0x7e836c: LoadField: r1 = r0->field_b
    //     0x7e836c: ldur            w1, [x0, #0xb]
    // 0x7e8370: cbz             w1, #0x7e83d4
    // 0x7e8374: ldr             x0, [fp, #0x10]
    // 0x7e8378: r1 = Null
    //     0x7e8378: mov             x1, NULL
    // 0x7e837c: r2 = 8
    //     0x7e837c: mov             x2, #8
    // 0x7e8380: r0 = AllocateArray()
    //     0x7e8380: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e8384: r16 = "📋 "
    //     0x7e8384: add             x16, PP, #0x13, lsl #12  ; [pp+0x139f0] "📋 "
    //     0x7e8388: ldr             x16, [x16, #0x9f0]
    // 0x7e838c: StoreField: r0->field_f = r16
    //     0x7e838c: stur            w16, [x0, #0xf]
    // 0x7e8390: ldr             x1, [fp, #0x10]
    // 0x7e8394: LoadField: r2 = r1->field_1b
    //     0x7e8394: ldur            w2, [x1, #0x1b]
    // 0x7e8398: DecompressPointer r2
    //     0x7e8398: add             x2, x2, HEAP, lsl #32
    // 0x7e839c: cmp             w2, NULL
    // 0x7e83a0: b.ne            #0x7e83ac
    // 0x7e83a4: r2 = "Açıklama yok"
    //     0x7e83a4: add             x2, PP, #0x13, lsl #12  ; [pp+0x139f8] "Açıklama yok"
    //     0x7e83a8: ldr             x2, [x2, #0x9f8]
    // 0x7e83ac: ldur            x1, [fp, #-0x28]
    // 0x7e83b0: StoreField: r0->field_13 = r2
    //     0x7e83b0: stur            w2, [x0, #0x13]
    // 0x7e83b4: r16 = "\n👤 Yönetici: "
    //     0x7e83b4: add             x16, PP, #0x13, lsl #12  ; [pp+0x13a00] "\n👤 Yönetici: "
    //     0x7e83b8: ldr             x16, [x16, #0xa00]
    // 0x7e83bc: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e83bc: stur            w16, [x0, #0x17]
    // 0x7e83c0: StoreField: r0->field_1b = r1
    //     0x7e83c0: stur            w1, [x0, #0x1b]
    // 0x7e83c4: str             x0, [SP]
    // 0x7e83c8: r0 = _interpolate()
    //     0x7e83c8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7e83cc: mov             x4, x0
    // 0x7e83d0: b               #0x7e83f4
    // 0x7e83d4: ldr             x1, [fp, #0x10]
    // 0x7e83d8: LoadField: r0 = r1->field_1b
    //     0x7e83d8: ldur            w0, [x1, #0x1b]
    // 0x7e83dc: DecompressPointer r0
    //     0x7e83dc: add             x0, x0, HEAP, lsl #32
    // 0x7e83e0: cmp             w0, NULL
    // 0x7e83e4: b.ne            #0x7e83f0
    // 0x7e83e8: r0 = "Açıklama yok"
    //     0x7e83e8: add             x0, PP, #0x13, lsl #12  ; [pp+0x139f8] "Açıklama yok"
    //     0x7e83ec: ldr             x0, [x0, #0x9f8]
    // 0x7e83f0: mov             x4, x0
    // 0x7e83f4: ldur            x3, [fp, #-0x20]
    // 0x7e83f8: ldur            x0, [fp, #-0x18]
    // 0x7e83fc: ldur            x2, [fp, #-0x10]
    // 0x7e8400: stur            x4, [fp, #-8]
    // 0x7e8404: r1 = Function '<anonymous closure>':.
    //     0x7e8404: add             x1, PP, #0x13, lsl #12  ; [pp+0x13a08] AnonymousClosure: (0x7e8674), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::build (0x7e7d08)
    //     0x7e8408: ldr             x1, [x1, #0xa08]
    // 0x7e840c: r0 = AllocateClosure()
    //     0x7e840c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e8410: stur            x0, [fp, #-0x28]
    // 0x7e8414: r0 = IconButton()
    //     0x7e8414: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7e8418: mov             x3, x0
    // 0x7e841c: ldur            x0, [fp, #-0x28]
    // 0x7e8420: stur            x3, [fp, #-0x30]
    // 0x7e8424: StoreField: r3->field_3b = r0
    //     0x7e8424: stur            w0, [x3, #0x3b]
    // 0x7e8428: r0 = false
    //     0x7e8428: add             x0, NULL, #0x30  ; false
    // 0x7e842c: StoreField: r3->field_4f = r0
    //     0x7e842c: stur            w0, [x3, #0x4f]
    // 0x7e8430: r0 = Instance_Icon
    //     0x7e8430: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a10] Obj!Icon@a1f231
    //     0x7e8434: ldr             x0, [x0, #0xa10]
    // 0x7e8438: StoreField: r3->field_1f = r0
    //     0x7e8438: stur            w0, [x3, #0x1f]
    // 0x7e843c: r0 = Instance__IconButtonVariant
    //     0x7e843c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7e8440: ldr             x0, [x0, #0x1b8]
    // 0x7e8444: StoreField: r3->field_6f = r0
    //     0x7e8444: stur            w0, [x3, #0x6f]
    // 0x7e8448: ldur            x2, [fp, #-0x10]
    // 0x7e844c: r1 = Function '<anonymous closure>':.
    //     0x7e844c: add             x1, PP, #0x13, lsl #12  ; [pp+0x13a18] AnonymousClosure: (0x7e8604), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::build (0x7e7d08)
    //     0x7e8450: ldr             x1, [x1, #0xa18]
    // 0x7e8454: r0 = AllocateClosure()
    //     0x7e8454: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7e8458: stur            x0, [fp, #-0x10]
    // 0x7e845c: r0 = InfoCard()
    //     0x7e845c: bl              #0x730134  ; AllocateInfoCardStub -> InfoCard (size=0x28)
    // 0x7e8460: ldur            x1, [fp, #-0x10]
    // 0x7e8464: StoreField: r0->field_1f = r1
    //     0x7e8464: stur            w1, [x0, #0x1f]
    // 0x7e8468: ldur            x1, [fp, #-0x20]
    // 0x7e846c: StoreField: r0->field_b = r1
    //     0x7e846c: stur            w1, [x0, #0xb]
    // 0x7e8470: ldur            x1, [fp, #-0x18]
    // 0x7e8474: StoreField: r0->field_f = r1
    //     0x7e8474: stur            w1, [x0, #0xf]
    // 0x7e8478: ldur            x1, [fp, #-8]
    // 0x7e847c: StoreField: r0->field_13 = r1
    //     0x7e847c: stur            w1, [x0, #0x13]
    // 0x7e8480: r1 = Instance_IconData
    //     0x7e8480: add             x1, PP, #0x12, lsl #12  ; [pp+0x12788] Obj!IconData@a09dc1
    //     0x7e8484: ldr             x1, [x1, #0x788]
    // 0x7e8488: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e8488: stur            w1, [x0, #0x17]
    // 0x7e848c: r1 = Instance_MaterialColor
    //     0x7e848c: add             x1, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x7e8490: ldr             x1, [x1, #0x5d8]
    // 0x7e8494: StoreField: r0->field_1b = r1
    //     0x7e8494: stur            w1, [x0, #0x1b]
    // 0x7e8498: ldur            x1, [fp, #-0x30]
    // 0x7e849c: StoreField: r0->field_23 = r1
    //     0x7e849c: stur            w1, [x0, #0x23]
    // 0x7e84a0: LeaveFrame
    //     0x7e84a0: mov             SP, fp
    //     0x7e84a4: ldp             fp, lr, [SP], #0x10
    // 0x7e84a8: ret
    //     0x7e84a8: ret             
    // 0x7e84ac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e84ac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e84b0: b               #0x7e81d0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e8604, size: 0x70
    // 0x7e8604: EnterFrame
    //     0x7e8604: stp             fp, lr, [SP, #-0x10]!
    //     0x7e8608: mov             fp, SP
    // 0x7e860c: ldr             x0, [fp, #0x10]
    // 0x7e8610: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e8610: ldur            w1, [x0, #0x17]
    // 0x7e8614: DecompressPointer r1
    //     0x7e8614: add             x1, x1, HEAP, lsl #32
    // 0x7e8618: CheckStackOverflow
    //     0x7e8618: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e861c: cmp             SP, x16
    //     0x7e8620: b.ls            #0x7e866c
    // 0x7e8624: LoadField: r0 = r1->field_b
    //     0x7e8624: ldur            w0, [x1, #0xb]
    // 0x7e8628: DecompressPointer r0
    //     0x7e8628: add             x0, x0, HEAP, lsl #32
    // 0x7e862c: LoadField: r2 = r0->field_b
    //     0x7e862c: ldur            w2, [x0, #0xb]
    // 0x7e8630: DecompressPointer r2
    //     0x7e8630: add             x2, x2, HEAP, lsl #32
    // 0x7e8634: LoadField: r3 = r2->field_f
    //     0x7e8634: ldur            w3, [x2, #0xf]
    // 0x7e8638: DecompressPointer r3
    //     0x7e8638: add             x3, x3, HEAP, lsl #32
    // 0x7e863c: LoadField: r2 = r0->field_f
    //     0x7e863c: ldur            w2, [x0, #0xf]
    // 0x7e8640: DecompressPointer r2
    //     0x7e8640: add             x2, x2, HEAP, lsl #32
    // 0x7e8644: LoadField: r4 = r0->field_13
    //     0x7e8644: ldur            w4, [x0, #0x13]
    // 0x7e8648: DecompressPointer r4
    //     0x7e8648: add             x4, x4, HEAP, lsl #32
    // 0x7e864c: LoadField: r5 = r1->field_f
    //     0x7e864c: ldur            w5, [x1, #0xf]
    // 0x7e8650: DecompressPointer r5
    //     0x7e8650: add             x5, x5, HEAP, lsl #32
    // 0x7e8654: mov             x1, x3
    // 0x7e8658: mov             x3, x4
    // 0x7e865c: r0 = _openCreateEditTripSheet()
    //     0x7e865c: bl              #0x6e481c  ; [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet
    // 0x7e8660: LeaveFrame
    //     0x7e8660: mov             SP, fp
    //     0x7e8664: ldp             fp, lr, [SP], #0x10
    // 0x7e8668: ret
    //     0x7e8668: ret             
    // 0x7e866c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e866c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e8670: b               #0x7e8624
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e8674, size: 0x70
    // 0x7e8674: EnterFrame
    //     0x7e8674: stp             fp, lr, [SP, #-0x10]!
    //     0x7e8678: mov             fp, SP
    // 0x7e867c: ldr             x0, [fp, #0x10]
    // 0x7e8680: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e8680: ldur            w1, [x0, #0x17]
    // 0x7e8684: DecompressPointer r1
    //     0x7e8684: add             x1, x1, HEAP, lsl #32
    // 0x7e8688: CheckStackOverflow
    //     0x7e8688: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e868c: cmp             SP, x16
    //     0x7e8690: b.ls            #0x7e86dc
    // 0x7e8694: LoadField: r0 = r1->field_b
    //     0x7e8694: ldur            w0, [x1, #0xb]
    // 0x7e8698: DecompressPointer r0
    //     0x7e8698: add             x0, x0, HEAP, lsl #32
    // 0x7e869c: LoadField: r2 = r0->field_b
    //     0x7e869c: ldur            w2, [x0, #0xb]
    // 0x7e86a0: DecompressPointer r2
    //     0x7e86a0: add             x2, x2, HEAP, lsl #32
    // 0x7e86a4: LoadField: r3 = r2->field_f
    //     0x7e86a4: ldur            w3, [x2, #0xf]
    // 0x7e86a8: DecompressPointer r3
    //     0x7e86a8: add             x3, x3, HEAP, lsl #32
    // 0x7e86ac: LoadField: r2 = r0->field_f
    //     0x7e86ac: ldur            w2, [x0, #0xf]
    // 0x7e86b0: DecompressPointer r2
    //     0x7e86b0: add             x2, x2, HEAP, lsl #32
    // 0x7e86b4: LoadField: r4 = r0->field_13
    //     0x7e86b4: ldur            w4, [x0, #0x13]
    // 0x7e86b8: DecompressPointer r4
    //     0x7e86b8: add             x4, x4, HEAP, lsl #32
    // 0x7e86bc: LoadField: r5 = r1->field_f
    //     0x7e86bc: ldur            w5, [x1, #0xf]
    // 0x7e86c0: DecompressPointer r5
    //     0x7e86c0: add             x5, x5, HEAP, lsl #32
    // 0x7e86c4: mov             x1, x3
    // 0x7e86c8: mov             x3, x4
    // 0x7e86cc: r0 = _confirmDelete()
    //     0x7e86cc: bl              #0x6dfcc0  ; [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete
    // 0x7e86d0: LeaveFrame
    //     0x7e86d0: mov             SP, fp
    //     0x7e86d4: ldp             fp, lr, [SP], #0x10
    // 0x7e86d8: ret
    //     0x7e86d8: ret             
    // 0x7e86dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e86dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e86e0: b               #0x7e8694
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7e86e4, size: 0x64
    // 0x7e86e4: EnterFrame
    //     0x7e86e4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e86e8: mov             fp, SP
    // 0x7e86ec: ldr             x0, [fp, #0x10]
    // 0x7e86f0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e86f0: ldur            w1, [x0, #0x17]
    // 0x7e86f4: DecompressPointer r1
    //     0x7e86f4: add             x1, x1, HEAP, lsl #32
    // 0x7e86f8: CheckStackOverflow
    //     0x7e86f8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e86fc: cmp             SP, x16
    //     0x7e8700: b.ls            #0x7e8740
    // 0x7e8704: LoadField: r0 = r1->field_b
    //     0x7e8704: ldur            w0, [x1, #0xb]
    // 0x7e8708: DecompressPointer r0
    //     0x7e8708: add             x0, x0, HEAP, lsl #32
    // 0x7e870c: LoadField: r2 = r0->field_f
    //     0x7e870c: ldur            w2, [x0, #0xf]
    // 0x7e8710: DecompressPointer r2
    //     0x7e8710: add             x2, x2, HEAP, lsl #32
    // 0x7e8714: LoadField: r0 = r1->field_f
    //     0x7e8714: ldur            w0, [x1, #0xf]
    // 0x7e8718: DecompressPointer r0
    //     0x7e8718: add             x0, x0, HEAP, lsl #32
    // 0x7e871c: LoadField: r3 = r1->field_13
    //     0x7e871c: ldur            w3, [x1, #0x13]
    // 0x7e8720: DecompressPointer r3
    //     0x7e8720: add             x3, x3, HEAP, lsl #32
    // 0x7e8724: mov             x1, x2
    // 0x7e8728: mov             x2, x0
    // 0x7e872c: r5 = Null
    //     0x7e872c: mov             x5, NULL
    // 0x7e8730: r0 = _openCreateEditTripSheet()
    //     0x7e8730: bl              #0x6e481c  ; [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_openCreateEditTripSheet
    // 0x7e8734: LeaveFrame
    //     0x7e8734: mov             SP, fp
    //     0x7e8738: ldp             fp, lr, [SP], #0x10
    // 0x7e873c: ret
    //     0x7e873c: ret             
    // 0x7e8740: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e8740: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e8744: b               #0x7e8704
  }
}
