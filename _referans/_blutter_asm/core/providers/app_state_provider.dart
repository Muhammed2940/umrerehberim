// lib: , url: package:umrem_demo/core/providers/app_state_provider.dart

// class id: 1049499, size: 0x8
class :: {
}

// class id: 3873, size: 0x2c, field offset: 0x24
class AppStateProvider extends ChangeNotifier {

  _ AppStateProvider(/* No info */) {
    // ** addr: 0x7f1030, size: 0xac
    // 0x7f1030: EnterFrame
    //     0x7f1030: stp             fp, lr, [SP, #-0x10]!
    //     0x7f1034: mov             fp, SP
    // 0x7f1038: AllocStack(0x8)
    //     0x7f1038: sub             SP, SP, #8
    // 0x7f103c: r0 = false
    //     0x7f103c: add             x0, NULL, #0x30  ; false
    // 0x7f1040: mov             x3, x1
    // 0x7f1044: stur            x1, [fp, #-8]
    // 0x7f1048: CheckStackOverflow
    //     0x7f1048: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f104c: cmp             SP, x16
    //     0x7f1050: b.ls            #0x7f10d4
    // 0x7f1054: StoreField: r3->field_27 = r0
    //     0x7f1054: stur            w0, [x3, #0x27]
    // 0x7f1058: r1 = <CurrencyModel>
    //     0x7f1058: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d88] TypeArguments: <CurrencyModel>
    //     0x7f105c: ldr             x1, [x1, #0xd88]
    // 0x7f1060: r2 = 0
    //     0x7f1060: mov             x2, #0
    // 0x7f1064: r0 = _GrowableList()
    //     0x7f1064: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f1068: r1 = <NotificationModel>
    //     0x7f1068: add             x1, PP, #0x10, lsl #12  ; [pp+0x10db8] TypeArguments: <NotificationModel>
    //     0x7f106c: ldr             x1, [x1, #0xdb8]
    // 0x7f1070: r2 = 0
    //     0x7f1070: mov             x2, #0
    // 0x7f1074: r0 = _GrowableList()
    //     0x7f1074: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f1078: ldur            x0, [fp, #-8]
    // 0x7f107c: StoreField: r0->field_7 = rZR
    //     0x7f107c: stur            xzr, [x0, #7]
    // 0x7f1080: StoreField: r0->field_13 = rZR
    //     0x7f1080: stur            xzr, [x0, #0x13]
    // 0x7f1084: StoreField: r0->field_1b = rZR
    //     0x7f1084: stur            xzr, [x0, #0x1b]
    // 0x7f1088: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f1088: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f108c: ldr             x0, [x0, #0xbc0]
    //     0x7f1090: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f1094: cmp             w0, w16
    //     0x7f1098: b.ne            #0x7f10a4
    //     0x7f109c: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f10a0: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f10a4: ldur            x1, [fp, #-8]
    // 0x7f10a8: StoreField: r1->field_f = r0
    //     0x7f10a8: stur            w0, [x1, #0xf]
    //     0x7f10ac: ldurb           w16, [x1, #-1]
    //     0x7f10b0: ldurb           w17, [x0, #-1]
    //     0x7f10b4: and             x16, x17, x16, lsr #2
    //     0x7f10b8: tst             x16, HEAP, lsr #32
    //     0x7f10bc: b.eq            #0x7f10c4
    //     0x7f10c0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f10c4: r0 = Null
    //     0x7f10c4: mov             x0, NULL
    // 0x7f10c8: LeaveFrame
    //     0x7f10c8: mov             SP, fp
    //     0x7f10cc: ldp             fp, lr, [SP], #0x10
    // 0x7f10d0: ret
    //     0x7f10d0: ret             
    // 0x7f10d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f10d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f10d8: b               #0x7f1054
  }
}
