// lib: , url: package:umrem_demo/core/utils/global_snackbar.dart

// class id: 1049506, size: 0x8
class :: {
}

// class id: 208, size: 0x8, field offset: 0x8
abstract class GlobalSnackBar extends Object {

  static late final GlobalKey<ScaffoldMessengerState> _messengerKey; // offset: 0x1024

  static void showError(String) {
    // ** addr: 0x5dc4c0, size: 0x144
    // 0x5dc4c0: EnterFrame
    //     0x5dc4c0: stp             fp, lr, [SP, #-0x10]!
    //     0x5dc4c4: mov             fp, SP
    // 0x5dc4c8: AllocStack(0x28)
    //     0x5dc4c8: sub             SP, SP, #0x28
    // 0x5dc4cc: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */)
    //     0x5dc4cc: stur            x1, [fp, #-8]
    // 0x5dc4d0: CheckStackOverflow
    //     0x5dc4d0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dc4d4: cmp             SP, x16
    //     0x5dc4d8: b.ls            #0x5dc5fc
    // 0x5dc4dc: r0 = InitLateStaticField(0x1024) // [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::_messengerKey
    //     0x5dc4dc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5dc4e0: ldr             x0, [x0, #0x2048]
    //     0x5dc4e4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5dc4e8: cmp             w0, w16
    //     0x5dc4ec: b.ne            #0x5dc4fc
    //     0x5dc4f0: add             x2, PP, #0x11, lsl #12  ; [pp+0x112a0] Field <GlobalSnackBar._messengerKey@972197353>: static late final (offset: 0x1024)
    //     0x5dc4f4: ldr             x2, [x2, #0x2a0]
    //     0x5dc4f8: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5dc4fc: mov             x1, x0
    // 0x5dc500: r0 = currentState()
    //     0x5dc500: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x5dc504: stur            x0, [fp, #-0x10]
    // 0x5dc508: cmp             w0, NULL
    // 0x5dc50c: b.eq            #0x5dc5ec
    // 0x5dc510: ldur            x1, [fp, #-8]
    // 0x5dc514: r0 = Duration()
    //     0x5dc514: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x5dc518: mov             x1, x0
    // 0x5dc51c: r0 = 2000000
    //     0x5dc51c: mov             x0, #0x8480
    //     0x5dc520: movk            x0, #0x1e, lsl #16
    // 0x5dc524: stur            x1, [fp, #-0x18]
    // 0x5dc528: StoreField: r1->field_7 = r0
    //     0x5dc528: stur            x0, [x1, #7]
    // 0x5dc52c: r0 = Text()
    //     0x5dc52c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x5dc530: mov             x1, x0
    // 0x5dc534: ldur            x0, [fp, #-8]
    // 0x5dc538: stur            x1, [fp, #-0x20]
    // 0x5dc53c: StoreField: r1->field_b = r0
    //     0x5dc53c: stur            w0, [x1, #0xb]
    // 0x5dc540: r0 = Radius()
    //     0x5dc540: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x5dc544: d0 = 12.000000
    //     0x5dc544: fmov            d0, #12.00000000
    // 0x5dc548: stur            x0, [fp, #-8]
    // 0x5dc54c: StoreField: r0->field_7 = d0
    //     0x5dc54c: stur            d0, [x0, #7]
    // 0x5dc550: StoreField: r0->field_f = d0
    //     0x5dc550: stur            d0, [x0, #0xf]
    // 0x5dc554: r0 = BorderRadius()
    //     0x5dc554: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x5dc558: mov             x1, x0
    // 0x5dc55c: ldur            x0, [fp, #-8]
    // 0x5dc560: stur            x1, [fp, #-0x28]
    // 0x5dc564: StoreField: r1->field_7 = r0
    //     0x5dc564: stur            w0, [x1, #7]
    // 0x5dc568: StoreField: r1->field_b = r0
    //     0x5dc568: stur            w0, [x1, #0xb]
    // 0x5dc56c: StoreField: r1->field_f = r0
    //     0x5dc56c: stur            w0, [x1, #0xf]
    // 0x5dc570: StoreField: r1->field_13 = r0
    //     0x5dc570: stur            w0, [x1, #0x13]
    // 0x5dc574: r0 = RoundedRectangleBorder()
    //     0x5dc574: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x5dc578: mov             x1, x0
    // 0x5dc57c: ldur            x0, [fp, #-0x28]
    // 0x5dc580: stur            x1, [fp, #-8]
    // 0x5dc584: StoreField: r1->field_b = r0
    //     0x5dc584: stur            w0, [x1, #0xb]
    // 0x5dc588: r0 = Instance_BorderSide
    //     0x5dc588: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x5dc58c: ldr             x0, [x0, #0xcb8]
    // 0x5dc590: StoreField: r1->field_7 = r0
    //     0x5dc590: stur            w0, [x1, #7]
    // 0x5dc594: r0 = SnackBar()
    //     0x5dc594: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x5dc598: mov             x1, x0
    // 0x5dc59c: ldur            x0, [fp, #-0x20]
    // 0x5dc5a0: StoreField: r1->field_b = r0
    //     0x5dc5a0: stur            w0, [x1, #0xb]
    // 0x5dc5a4: r0 = Instance_MaterialColor
    //     0x5dc5a4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x5dc5a8: ldr             x0, [x0, #0xb90]
    // 0x5dc5ac: StoreField: r1->field_f = r0
    //     0x5dc5ac: stur            w0, [x1, #0xf]
    // 0x5dc5b0: ldur            x0, [fp, #-8]
    // 0x5dc5b4: StoreField: r1->field_23 = r0
    //     0x5dc5b4: stur            w0, [x1, #0x23]
    // 0x5dc5b8: r0 = Instance_SnackBarBehavior
    //     0x5dc5b8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11be8] Obj!SnackBarBehavior@a2b211
    //     0x5dc5bc: ldr             x0, [x0, #0xbe8]
    // 0x5dc5c0: StoreField: r1->field_2b = r0
    //     0x5dc5c0: stur            w0, [x1, #0x2b]
    // 0x5dc5c4: ldur            x0, [fp, #-0x18]
    // 0x5dc5c8: StoreField: r1->field_3f = r0
    //     0x5dc5c8: stur            w0, [x1, #0x3f]
    // 0x5dc5cc: r0 = Instance_Clip
    //     0x5dc5cc: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x5dc5d0: ldr             x0, [x0, #0x2d8]
    // 0x5dc5d4: StoreField: r1->field_53 = r0
    //     0x5dc5d4: stur            w0, [x1, #0x53]
    // 0x5dc5d8: r0 = false
    //     0x5dc5d8: add             x0, NULL, #0x30  ; false
    // 0x5dc5dc: StoreField: r1->field_43 = r0
    //     0x5dc5dc: stur            w0, [x1, #0x43]
    // 0x5dc5e0: mov             x2, x1
    // 0x5dc5e4: ldur            x1, [fp, #-0x10]
    // 0x5dc5e8: r0 = showSnackBar()
    //     0x5dc5e8: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x5dc5ec: r0 = Null
    //     0x5dc5ec: mov             x0, NULL
    // 0x5dc5f0: LeaveFrame
    //     0x5dc5f0: mov             SP, fp
    //     0x5dc5f4: ldp             fp, lr, [SP], #0x10
    // 0x5dc5f8: ret
    //     0x5dc5f8: ret             
    // 0x5dc5fc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dc5fc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dc600: b               #0x5dc4dc
  }
  static GlobalKey<ScaffoldMessengerState> _messengerKey() {
    // ** addr: 0x5dcf90, size: 0x20
    // 0x5dcf90: EnterFrame
    //     0x5dcf90: stp             fp, lr, [SP, #-0x10]!
    //     0x5dcf94: mov             fp, SP
    // 0x5dcf98: r1 = <ScaffoldMessengerState>
    //     0x5dcf98: add             x1, PP, #0x11, lsl #12  ; [pp+0x11ec0] TypeArguments: <ScaffoldMessengerState>
    //     0x5dcf9c: ldr             x1, [x1, #0xec0]
    // 0x5dcfa0: r0 = LabeledGlobalKey()
    //     0x5dcfa0: bl              #0x408748  ; AllocateLabeledGlobalKeyStub -> LabeledGlobalKey<X0 bound State> (size=0x10)
    // 0x5dcfa4: LeaveFrame
    //     0x5dcfa4: mov             SP, fp
    //     0x5dcfa8: ldp             fp, lr, [SP], #0x10
    // 0x5dcfac: ret
    //     0x5dcfac: ret             
  }
  static void showSuccess(String) {
    // ** addr: 0x5dcfb0, size: 0x144
    // 0x5dcfb0: EnterFrame
    //     0x5dcfb0: stp             fp, lr, [SP, #-0x10]!
    //     0x5dcfb4: mov             fp, SP
    // 0x5dcfb8: AllocStack(0x28)
    //     0x5dcfb8: sub             SP, SP, #0x28
    // 0x5dcfbc: SetupParameters(dynamic _ /* r1 => r1, fp-0x8 */)
    //     0x5dcfbc: stur            x1, [fp, #-8]
    // 0x5dcfc0: CheckStackOverflow
    //     0x5dcfc0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dcfc4: cmp             SP, x16
    //     0x5dcfc8: b.ls            #0x5dd0ec
    // 0x5dcfcc: r0 = InitLateStaticField(0x1024) // [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::_messengerKey
    //     0x5dcfcc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5dcfd0: ldr             x0, [x0, #0x2048]
    //     0x5dcfd4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5dcfd8: cmp             w0, w16
    //     0x5dcfdc: b.ne            #0x5dcfec
    //     0x5dcfe0: add             x2, PP, #0x11, lsl #12  ; [pp+0x112a0] Field <GlobalSnackBar._messengerKey@972197353>: static late final (offset: 0x1024)
    //     0x5dcfe4: ldr             x2, [x2, #0x2a0]
    //     0x5dcfe8: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x5dcfec: mov             x1, x0
    // 0x5dcff0: r0 = currentState()
    //     0x5dcff0: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x5dcff4: stur            x0, [fp, #-0x10]
    // 0x5dcff8: cmp             w0, NULL
    // 0x5dcffc: b.eq            #0x5dd0dc
    // 0x5dd000: ldur            x1, [fp, #-8]
    // 0x5dd004: r0 = Duration()
    //     0x5dd004: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x5dd008: mov             x1, x0
    // 0x5dd00c: r0 = 2000000
    //     0x5dd00c: mov             x0, #0x8480
    //     0x5dd010: movk            x0, #0x1e, lsl #16
    // 0x5dd014: stur            x1, [fp, #-0x18]
    // 0x5dd018: StoreField: r1->field_7 = r0
    //     0x5dd018: stur            x0, [x1, #7]
    // 0x5dd01c: r0 = Text()
    //     0x5dd01c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x5dd020: mov             x1, x0
    // 0x5dd024: ldur            x0, [fp, #-8]
    // 0x5dd028: stur            x1, [fp, #-0x20]
    // 0x5dd02c: StoreField: r1->field_b = r0
    //     0x5dd02c: stur            w0, [x1, #0xb]
    // 0x5dd030: r0 = Radius()
    //     0x5dd030: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x5dd034: d0 = 12.000000
    //     0x5dd034: fmov            d0, #12.00000000
    // 0x5dd038: stur            x0, [fp, #-8]
    // 0x5dd03c: StoreField: r0->field_7 = d0
    //     0x5dd03c: stur            d0, [x0, #7]
    // 0x5dd040: StoreField: r0->field_f = d0
    //     0x5dd040: stur            d0, [x0, #0xf]
    // 0x5dd044: r0 = BorderRadius()
    //     0x5dd044: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x5dd048: mov             x1, x0
    // 0x5dd04c: ldur            x0, [fp, #-8]
    // 0x5dd050: stur            x1, [fp, #-0x28]
    // 0x5dd054: StoreField: r1->field_7 = r0
    //     0x5dd054: stur            w0, [x1, #7]
    // 0x5dd058: StoreField: r1->field_b = r0
    //     0x5dd058: stur            w0, [x1, #0xb]
    // 0x5dd05c: StoreField: r1->field_f = r0
    //     0x5dd05c: stur            w0, [x1, #0xf]
    // 0x5dd060: StoreField: r1->field_13 = r0
    //     0x5dd060: stur            w0, [x1, #0x13]
    // 0x5dd064: r0 = RoundedRectangleBorder()
    //     0x5dd064: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x5dd068: mov             x1, x0
    // 0x5dd06c: ldur            x0, [fp, #-0x28]
    // 0x5dd070: stur            x1, [fp, #-8]
    // 0x5dd074: StoreField: r1->field_b = r0
    //     0x5dd074: stur            w0, [x1, #0xb]
    // 0x5dd078: r0 = Instance_BorderSide
    //     0x5dd078: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x5dd07c: ldr             x0, [x0, #0xcb8]
    // 0x5dd080: StoreField: r1->field_7 = r0
    //     0x5dd080: stur            w0, [x1, #7]
    // 0x5dd084: r0 = SnackBar()
    //     0x5dd084: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x5dd088: mov             x1, x0
    // 0x5dd08c: ldur            x0, [fp, #-0x20]
    // 0x5dd090: StoreField: r1->field_b = r0
    //     0x5dd090: stur            w0, [x1, #0xb]
    // 0x5dd094: r0 = Instance_MaterialColor
    //     0x5dd094: add             x0, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x5dd098: ldr             x0, [x0, #0x5d8]
    // 0x5dd09c: StoreField: r1->field_f = r0
    //     0x5dd09c: stur            w0, [x1, #0xf]
    // 0x5dd0a0: ldur            x0, [fp, #-8]
    // 0x5dd0a4: StoreField: r1->field_23 = r0
    //     0x5dd0a4: stur            w0, [x1, #0x23]
    // 0x5dd0a8: r0 = Instance_SnackBarBehavior
    //     0x5dd0a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11be8] Obj!SnackBarBehavior@a2b211
    //     0x5dd0ac: ldr             x0, [x0, #0xbe8]
    // 0x5dd0b0: StoreField: r1->field_2b = r0
    //     0x5dd0b0: stur            w0, [x1, #0x2b]
    // 0x5dd0b4: ldur            x0, [fp, #-0x18]
    // 0x5dd0b8: StoreField: r1->field_3f = r0
    //     0x5dd0b8: stur            w0, [x1, #0x3f]
    // 0x5dd0bc: r0 = Instance_Clip
    //     0x5dd0bc: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x5dd0c0: ldr             x0, [x0, #0x2d8]
    // 0x5dd0c4: StoreField: r1->field_53 = r0
    //     0x5dd0c4: stur            w0, [x1, #0x53]
    // 0x5dd0c8: r0 = false
    //     0x5dd0c8: add             x0, NULL, #0x30  ; false
    // 0x5dd0cc: StoreField: r1->field_43 = r0
    //     0x5dd0cc: stur            w0, [x1, #0x43]
    // 0x5dd0d0: mov             x2, x1
    // 0x5dd0d4: ldur            x1, [fp, #-0x10]
    // 0x5dd0d8: r0 = showSnackBar()
    //     0x5dd0d8: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x5dd0dc: r0 = Null
    //     0x5dd0dc: mov             x0, NULL
    // 0x5dd0e0: LeaveFrame
    //     0x5dd0e0: mov             SP, fp
    //     0x5dd0e4: ldp             fp, lr, [SP], #0x10
    // 0x5dd0e8: ret
    //     0x5dd0e8: ret             
    // 0x5dd0ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5dd0ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5dd0f0: b               #0x5dcfcc
  }
  static void showInfo() {
    // ** addr: 0x6e8008, size: 0x140
    // 0x6e8008: EnterFrame
    //     0x6e8008: stp             fp, lr, [SP, #-0x10]!
    //     0x6e800c: mov             fp, SP
    // 0x6e8010: AllocStack(0x28)
    //     0x6e8010: sub             SP, SP, #0x28
    // 0x6e8014: CheckStackOverflow
    //     0x6e8014: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6e8018: cmp             SP, x16
    //     0x6e801c: b.ls            #0x6e8140
    // 0x6e8020: r0 = InitLateStaticField(0x1024) // [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::_messengerKey
    //     0x6e8020: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6e8024: ldr             x0, [x0, #0x2048]
    //     0x6e8028: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6e802c: cmp             w0, w16
    //     0x6e8030: b.ne            #0x6e8040
    //     0x6e8034: add             x2, PP, #0x11, lsl #12  ; [pp+0x112a0] Field <GlobalSnackBar._messengerKey@972197353>: static late final (offset: 0x1024)
    //     0x6e8038: ldr             x2, [x2, #0x2a0]
    //     0x6e803c: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6e8040: mov             x1, x0
    // 0x6e8044: r0 = currentState()
    //     0x6e8044: bl              #0x40483c  ; [package:flutter/src/widgets/framework.dart] GlobalKey::currentState
    // 0x6e8048: stur            x0, [fp, #-8]
    // 0x6e804c: cmp             w0, NULL
    // 0x6e8050: b.eq            #0x6e8130
    // 0x6e8054: r0 = Duration()
    //     0x6e8054: bl              #0x3c6c20  ; AllocateDurationStub -> Duration (size=0x10)
    // 0x6e8058: mov             x1, x0
    // 0x6e805c: r0 = 2000000
    //     0x6e805c: mov             x0, #0x8480
    //     0x6e8060: movk            x0, #0x1e, lsl #16
    // 0x6e8064: stur            x1, [fp, #-0x10]
    // 0x6e8068: StoreField: r1->field_7 = r0
    //     0x6e8068: stur            x0, [x1, #7]
    // 0x6e806c: r0 = Text()
    //     0x6e806c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6e8070: mov             x1, x0
    // 0x6e8074: r0 = "Lütfen konum iznini açın ve uygulamayı yeniden başlatın."
    //     0x6e8074: add             x0, PP, #0x15, lsl #12  ; [pp+0x15b08] "Lütfen konum iznini açın ve uygulamayı yeniden başlatın."
    //     0x6e8078: ldr             x0, [x0, #0xb08]
    // 0x6e807c: stur            x1, [fp, #-0x18]
    // 0x6e8080: StoreField: r1->field_b = r0
    //     0x6e8080: stur            w0, [x1, #0xb]
    // 0x6e8084: r0 = Radius()
    //     0x6e8084: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6e8088: d0 = 12.000000
    //     0x6e8088: fmov            d0, #12.00000000
    // 0x6e808c: stur            x0, [fp, #-0x20]
    // 0x6e8090: StoreField: r0->field_7 = d0
    //     0x6e8090: stur            d0, [x0, #7]
    // 0x6e8094: StoreField: r0->field_f = d0
    //     0x6e8094: stur            d0, [x0, #0xf]
    // 0x6e8098: r0 = BorderRadius()
    //     0x6e8098: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6e809c: mov             x1, x0
    // 0x6e80a0: ldur            x0, [fp, #-0x20]
    // 0x6e80a4: stur            x1, [fp, #-0x28]
    // 0x6e80a8: StoreField: r1->field_7 = r0
    //     0x6e80a8: stur            w0, [x1, #7]
    // 0x6e80ac: StoreField: r1->field_b = r0
    //     0x6e80ac: stur            w0, [x1, #0xb]
    // 0x6e80b0: StoreField: r1->field_f = r0
    //     0x6e80b0: stur            w0, [x1, #0xf]
    // 0x6e80b4: StoreField: r1->field_13 = r0
    //     0x6e80b4: stur            w0, [x1, #0x13]
    // 0x6e80b8: r0 = RoundedRectangleBorder()
    //     0x6e80b8: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6e80bc: mov             x1, x0
    // 0x6e80c0: ldur            x0, [fp, #-0x28]
    // 0x6e80c4: stur            x1, [fp, #-0x20]
    // 0x6e80c8: StoreField: r1->field_b = r0
    //     0x6e80c8: stur            w0, [x1, #0xb]
    // 0x6e80cc: r0 = Instance_BorderSide
    //     0x6e80cc: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6e80d0: ldr             x0, [x0, #0xcb8]
    // 0x6e80d4: StoreField: r1->field_7 = r0
    //     0x6e80d4: stur            w0, [x1, #7]
    // 0x6e80d8: r0 = SnackBar()
    //     0x6e80d8: bl              #0x5dcf84  ; AllocateSnackBarStub -> SnackBar (size=0x58)
    // 0x6e80dc: mov             x1, x0
    // 0x6e80e0: ldur            x0, [fp, #-0x18]
    // 0x6e80e4: StoreField: r1->field_b = r0
    //     0x6e80e4: stur            w0, [x1, #0xb]
    // 0x6e80e8: r0 = Instance_Color
    //     0x6e80e8: add             x0, PP, #0x15, lsl #12  ; [pp+0x15b10] Obj!Color@a252d1
    //     0x6e80ec: ldr             x0, [x0, #0xb10]
    // 0x6e80f0: StoreField: r1->field_f = r0
    //     0x6e80f0: stur            w0, [x1, #0xf]
    // 0x6e80f4: ldur            x0, [fp, #-0x20]
    // 0x6e80f8: StoreField: r1->field_23 = r0
    //     0x6e80f8: stur            w0, [x1, #0x23]
    // 0x6e80fc: r0 = Instance_SnackBarBehavior
    //     0x6e80fc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11be8] Obj!SnackBarBehavior@a2b211
    //     0x6e8100: ldr             x0, [x0, #0xbe8]
    // 0x6e8104: StoreField: r1->field_2b = r0
    //     0x6e8104: stur            w0, [x1, #0x2b]
    // 0x6e8108: ldur            x0, [fp, #-0x10]
    // 0x6e810c: StoreField: r1->field_3f = r0
    //     0x6e810c: stur            w0, [x1, #0x3f]
    // 0x6e8110: r0 = Instance_Clip
    //     0x6e8110: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6e8114: ldr             x0, [x0, #0x2d8]
    // 0x6e8118: StoreField: r1->field_53 = r0
    //     0x6e8118: stur            w0, [x1, #0x53]
    // 0x6e811c: r0 = false
    //     0x6e811c: add             x0, NULL, #0x30  ; false
    // 0x6e8120: StoreField: r1->field_43 = r0
    //     0x6e8120: stur            w0, [x1, #0x43]
    // 0x6e8124: mov             x2, x1
    // 0x6e8128: ldur            x1, [fp, #-8]
    // 0x6e812c: r0 = showSnackBar()
    //     0x6e812c: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x6e8130: r0 = Null
    //     0x6e8130: mov             x0, NULL
    // 0x6e8134: LeaveFrame
    //     0x6e8134: mov             SP, fp
    //     0x6e8138: ldp             fp, lr, [SP], #0x10
    // 0x6e813c: ret
    //     0x6e813c: ret             
    // 0x6e8140: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6e8140: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6e8144: b               #0x6e8020
  }
}
