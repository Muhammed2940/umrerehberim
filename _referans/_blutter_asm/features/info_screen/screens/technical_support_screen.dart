// lib: , url: package:umrem_demo/features/info_screen/screens/technical_support_screen.dart

// class id: 1049599, size: 0x8
class :: {
}

// class id: 2890, size: 0xc, field offset: 0xc
//   const constructor, 
class TechnicalSupportScreen extends StatelessWidget {

  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7233f8, size: 0x54
    // 0x7233f8: EnterFrame
    //     0x7233f8: stp             fp, lr, [SP, #-0x10]!
    //     0x7233fc: mov             fp, SP
    // 0x723400: AllocStack(0x10)
    //     0x723400: sub             SP, SP, #0x10
    // 0x723404: SetupParameters([dynamic _ /* r0 */])
    //     0x723404: ldr             x0, [fp, #0x10]
    //     0x723408: ldur            w1, [x0, #0x17]
    //     0x72340c: add             x1, x1, HEAP, lsl #32
    // 0x723410: CheckStackOverflow
    //     0x723410: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x723414: cmp             SP, x16
    //     0x723418: b.ls            #0x723444
    // 0x72341c: LoadField: r0 = r1->field_13
    //     0x72341c: ldur            w0, [x1, #0x13]
    // 0x723420: DecompressPointer r0
    //     0x723420: add             x0, x0, HEAP, lsl #32
    // 0x723424: r16 = <Object?>
    //     0x723424: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x723428: stp             x0, x16, [SP]
    // 0x72342c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72342c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x723430: r0 = pop()
    //     0x723430: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x723434: r0 = Null
    //     0x723434: mov             x0, NULL
    // 0x723438: LeaveFrame
    //     0x723438: mov             SP, fp
    //     0x72343c: ldp             fp, lr, [SP], #0x10
    // 0x723440: ret
    //     0x723440: ret             
    // 0x723444: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x723444: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x723448: b               #0x72341c
  }
  _ build(/* No info */) {
    // ** addr: 0x7eef84, size: 0x8a8
    // 0x7eef84: EnterFrame
    //     0x7eef84: stp             fp, lr, [SP, #-0x10]!
    //     0x7eef88: mov             fp, SP
    // 0x7eef8c: AllocStack(0x58)
    //     0x7eef8c: sub             SP, SP, #0x58
    // 0x7eef90: SetupParameters(TechnicalSupportScreen this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x7eef90: stur            x1, [fp, #-8]
    //     0x7eef94: stur            x2, [fp, #-0x10]
    // 0x7eef98: CheckStackOverflow
    //     0x7eef98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eef9c: cmp             SP, x16
    //     0x7eefa0: b.ls            #0x7ef824
    // 0x7eefa4: r1 = 2
    //     0x7eefa4: mov             x1, #2
    // 0x7eefa8: r0 = AllocateContext()
    //     0x7eefa8: bl              #0x927010  ; AllocateContextStub
    // 0x7eefac: mov             x2, x0
    // 0x7eefb0: ldur            x0, [fp, #-8]
    // 0x7eefb4: stur            x2, [fp, #-0x18]
    // 0x7eefb8: StoreField: r2->field_f = r0
    //     0x7eefb8: stur            w0, [x2, #0xf]
    // 0x7eefbc: ldur            x1, [fp, #-0x10]
    // 0x7eefc0: StoreField: r2->field_13 = r1
    //     0x7eefc0: stur            w1, [x2, #0x13]
    // 0x7eefc4: r16 = 0.900000
    //     0x7eefc4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x7eefc8: ldr             x16, [x16, #0x190]
    // 0x7eefcc: str             x16, [SP]
    // 0x7eefd0: r1 = Instance_Color
    //     0x7eefd0: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7eefd4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eefd4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eefd8: ldr             x4, [x4, #0x198]
    // 0x7eefdc: r0 = withValues()
    //     0x7eefdc: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eefe0: stur            x0, [fp, #-0x10]
    // 0x7eefe4: r0 = BoxDecoration()
    //     0x7eefe4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eefe8: mov             x1, x0
    // 0x7eefec: ldur            x0, [fp, #-0x10]
    // 0x7eeff0: stur            x1, [fp, #-0x20]
    // 0x7eeff4: StoreField: r1->field_7 = r0
    //     0x7eeff4: stur            w0, [x1, #7]
    // 0x7eeff8: r0 = Instance_BoxShape
    //     0x7eeff8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x7eeffc: ldr             x0, [x0, #0x1a0]
    // 0x7ef000: StoreField: r1->field_23 = r0
    //     0x7ef000: stur            w0, [x1, #0x23]
    // 0x7ef004: r0 = Icon()
    //     0x7ef004: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7ef008: mov             x3, x0
    // 0x7ef00c: r0 = Instance_IconData
    //     0x7ef00c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a8] Obj!IconData@a09ce1
    //     0x7ef010: ldr             x0, [x0, #0x1a8]
    // 0x7ef014: stur            x3, [fp, #-0x10]
    // 0x7ef018: StoreField: r3->field_b = r0
    //     0x7ef018: stur            w0, [x3, #0xb]
    // 0x7ef01c: r0 = Instance_Color
    //     0x7ef01c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ef020: ldr             x0, [x0, #0xb88]
    // 0x7ef024: StoreField: r3->field_23 = r0
    //     0x7ef024: stur            w0, [x3, #0x23]
    // 0x7ef028: ldur            x2, [fp, #-0x18]
    // 0x7ef02c: r1 = Function '<anonymous closure>':.
    //     0x7ef02c: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b0] AnonymousClosure: (0x7233f8), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7ef030: ldr             x1, [x1, #0x1b0]
    // 0x7ef034: r0 = AllocateClosure()
    //     0x7ef034: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ef038: stur            x0, [fp, #-0x28]
    // 0x7ef03c: r0 = IconButton()
    //     0x7ef03c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7ef040: mov             x1, x0
    // 0x7ef044: ldur            x0, [fp, #-0x28]
    // 0x7ef048: stur            x1, [fp, #-0x30]
    // 0x7ef04c: StoreField: r1->field_3b = r0
    //     0x7ef04c: stur            w0, [x1, #0x3b]
    // 0x7ef050: r0 = false
    //     0x7ef050: add             x0, NULL, #0x30  ; false
    // 0x7ef054: StoreField: r1->field_4f = r0
    //     0x7ef054: stur            w0, [x1, #0x4f]
    // 0x7ef058: ldur            x2, [fp, #-0x10]
    // 0x7ef05c: StoreField: r1->field_1f = r2
    //     0x7ef05c: stur            w2, [x1, #0x1f]
    // 0x7ef060: r2 = Instance__IconButtonVariant
    //     0x7ef060: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7ef064: ldr             x2, [x2, #0x1b8]
    // 0x7ef068: StoreField: r1->field_6f = r2
    //     0x7ef068: stur            w2, [x1, #0x6f]
    // 0x7ef06c: r0 = Container()
    //     0x7ef06c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ef070: stur            x0, [fp, #-0x10]
    // 0x7ef074: r16 = Instance_EdgeInsets
    //     0x7ef074: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7ef078: ldr             x16, [x16, #0xde8]
    // 0x7ef07c: ldur            lr, [fp, #-0x20]
    // 0x7ef080: stp             lr, x16, [SP, #8]
    // 0x7ef084: ldur            x16, [fp, #-0x30]
    // 0x7ef088: str             x16, [SP]
    // 0x7ef08c: mov             x1, x0
    // 0x7ef090: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, margin, 0x1, null]
    //     0x7ef090: add             x4, PP, #0x12, lsl #12  ; [pp+0x121c0] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "margin", 0x1, Null]
    //     0x7ef094: ldr             x4, [x4, #0x1c0]
    // 0x7ef098: r0 = Container()
    //     0x7ef098: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ef09c: r16 = 0.900000
    //     0x7ef09c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12190] 0.9
    //     0x7ef0a0: ldr             x16, [x16, #0x190]
    // 0x7ef0a4: str             x16, [SP]
    // 0x7ef0a8: r1 = Instance_Color
    //     0x7ef0a8: ldr             x1, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7ef0ac: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ef0ac: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ef0b0: ldr             x4, [x4, #0x198]
    // 0x7ef0b4: r0 = withValues()
    //     0x7ef0b4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ef0b8: stur            x0, [fp, #-0x20]
    // 0x7ef0bc: r0 = Radius()
    //     0x7ef0bc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ef0c0: d0 = 20.000000
    //     0x7ef0c0: fmov            d0, #20.00000000
    // 0x7ef0c4: stur            x0, [fp, #-0x28]
    // 0x7ef0c8: StoreField: r0->field_7 = d0
    //     0x7ef0c8: stur            d0, [x0, #7]
    // 0x7ef0cc: StoreField: r0->field_f = d0
    //     0x7ef0cc: stur            d0, [x0, #0xf]
    // 0x7ef0d0: r0 = BorderRadius()
    //     0x7ef0d0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ef0d4: mov             x1, x0
    // 0x7ef0d8: ldur            x0, [fp, #-0x28]
    // 0x7ef0dc: stur            x1, [fp, #-0x30]
    // 0x7ef0e0: StoreField: r1->field_7 = r0
    //     0x7ef0e0: stur            w0, [x1, #7]
    // 0x7ef0e4: StoreField: r1->field_b = r0
    //     0x7ef0e4: stur            w0, [x1, #0xb]
    // 0x7ef0e8: StoreField: r1->field_f = r0
    //     0x7ef0e8: stur            w0, [x1, #0xf]
    // 0x7ef0ec: StoreField: r1->field_13 = r0
    //     0x7ef0ec: stur            w0, [x1, #0x13]
    // 0x7ef0f0: r0 = BoxDecoration()
    //     0x7ef0f0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ef0f4: mov             x1, x0
    // 0x7ef0f8: ldur            x0, [fp, #-0x20]
    // 0x7ef0fc: stur            x1, [fp, #-0x28]
    // 0x7ef100: StoreField: r1->field_7 = r0
    //     0x7ef100: stur            w0, [x1, #7]
    // 0x7ef104: ldur            x0, [fp, #-0x30]
    // 0x7ef108: StoreField: r1->field_13 = r0
    //     0x7ef108: stur            w0, [x1, #0x13]
    // 0x7ef10c: r0 = Instance_BoxShape
    //     0x7ef10c: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ef110: ldr             x0, [x0, #0x1c8]
    // 0x7ef114: StoreField: r1->field_23 = r0
    //     0x7ef114: stur            w0, [x1, #0x23]
    // 0x7ef118: r0 = TextStyle()
    //     0x7ef118: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7ef11c: mov             x1, x0
    // 0x7ef120: r0 = true
    //     0x7ef120: add             x0, NULL, #0x20  ; true
    // 0x7ef124: stur            x1, [fp, #-0x20]
    // 0x7ef128: StoreField: r1->field_7 = r0
    //     0x7ef128: stur            w0, [x1, #7]
    // 0x7ef12c: r2 = Instance_Color
    //     0x7ef12c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7ef130: ldr             x2, [x2, #0xb88]
    // 0x7ef134: StoreField: r1->field_b = r2
    //     0x7ef134: stur            w2, [x1, #0xb]
    // 0x7ef138: r2 = 18.000000
    //     0x7ef138: add             x2, PP, #0xc, lsl #12  ; [pp+0xce08] 18
    //     0x7ef13c: ldr             x2, [x2, #0xe08]
    // 0x7ef140: StoreField: r1->field_1f = r2
    //     0x7ef140: stur            w2, [x1, #0x1f]
    // 0x7ef144: r2 = Instance_FontWeight
    //     0x7ef144: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ef148: ldr             x2, [x2, #0x1d0]
    // 0x7ef14c: StoreField: r1->field_23 = r2
    //     0x7ef14c: stur            w2, [x1, #0x23]
    // 0x7ef150: r0 = Text()
    //     0x7ef150: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ef154: mov             x1, x0
    // 0x7ef158: r0 = "Teknik Servi̇s"
    //     0x7ef158: add             x0, PP, #0x12, lsl #12  ; [pp+0x121d8] "Teknik Servi̇s"
    //     0x7ef15c: ldr             x0, [x0, #0x1d8]
    // 0x7ef160: stur            x1, [fp, #-0x30]
    // 0x7ef164: StoreField: r1->field_b = r0
    //     0x7ef164: stur            w0, [x1, #0xb]
    // 0x7ef168: ldur            x0, [fp, #-0x20]
    // 0x7ef16c: StoreField: r1->field_13 = r0
    //     0x7ef16c: stur            w0, [x1, #0x13]
    // 0x7ef170: r0 = Container()
    //     0x7ef170: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ef174: stur            x0, [fp, #-0x20]
    // 0x7ef178: r16 = Instance_EdgeInsets
    //     0x7ef178: add             x16, PP, #0x12, lsl #12  ; [pp+0x121e0] Obj!EdgeInsets@a0bd51
    //     0x7ef17c: ldr             x16, [x16, #0x1e0]
    // 0x7ef180: ldur            lr, [fp, #-0x28]
    // 0x7ef184: stp             lr, x16, [SP, #8]
    // 0x7ef188: ldur            x16, [fp, #-0x30]
    // 0x7ef18c: str             x16, [SP]
    // 0x7ef190: mov             x1, x0
    // 0x7ef194: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ef194: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ef198: ldr             x4, [x4, #0x1e8]
    // 0x7ef19c: r0 = Container()
    //     0x7ef19c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ef1a0: r0 = AppBar()
    //     0x7ef1a0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7ef1a4: stur            x0, [fp, #-0x28]
    // 0x7ef1a8: r16 = Instance_Color
    //     0x7ef1a8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7ef1ac: ldr             x16, [x16, #0x860]
    // 0x7ef1b0: r30 = 0.000000
    //     0x7ef1b0: ldr             lr, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7ef1b4: stp             lr, x16, [SP, #0x10]
    // 0x7ef1b8: ldur            x16, [fp, #-0x10]
    // 0x7ef1bc: r30 = true
    //     0x7ef1bc: add             lr, NULL, #0x20  ; true
    // 0x7ef1c0: stp             lr, x16, [SP]
    // 0x7ef1c4: mov             x1, x0
    // 0x7ef1c8: ldur            x2, [fp, #-0x20]
    // 0x7ef1cc: r4 = const [0, 0x6, 0x4, 0x2, backgroundColor, 0x2, centerTitle, 0x5, elevation, 0x3, leading, 0x4, null]
    //     0x7ef1cc: add             x4, PP, #0x12, lsl #12  ; [pp+0x121f0] List(13) [0, 0x6, 0x4, 0x2, "backgroundColor", 0x2, "centerTitle", 0x5, "elevation", 0x3, "leading", 0x4, Null]
    //     0x7ef1d0: ldr             x4, [x4, #0x1f0]
    // 0x7ef1d4: r0 = AppBar()
    //     0x7ef1d4: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x7ef1d8: r16 = 0.100000
    //     0x7ef1d8: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7ef1dc: ldr             x16, [x16, #0x1f8]
    // 0x7ef1e0: str             x16, [SP]
    // 0x7ef1e4: r1 = Instance_Color
    //     0x7ef1e4: add             x1, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7ef1e8: ldr             x1, [x1, #0x200]
    // 0x7ef1ec: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ef1ec: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ef1f0: ldr             x4, [x4, #0x198]
    // 0x7ef1f4: r0 = withValues()
    //     0x7ef1f4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ef1f8: stur            x0, [fp, #-0x10]
    // 0x7ef1fc: r0 = Radius()
    //     0x7ef1fc: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ef200: d0 = 8.000000
    //     0x7ef200: fmov            d0, #8.00000000
    // 0x7ef204: stur            x0, [fp, #-0x20]
    // 0x7ef208: StoreField: r0->field_7 = d0
    //     0x7ef208: stur            d0, [x0, #7]
    // 0x7ef20c: StoreField: r0->field_f = d0
    //     0x7ef20c: stur            d0, [x0, #0xf]
    // 0x7ef210: r0 = BorderRadius()
    //     0x7ef210: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ef214: mov             x2, x0
    // 0x7ef218: ldur            x0, [fp, #-0x20]
    // 0x7ef21c: stur            x2, [fp, #-0x30]
    // 0x7ef220: StoreField: r2->field_7 = r0
    //     0x7ef220: stur            w0, [x2, #7]
    // 0x7ef224: StoreField: r2->field_b = r0
    //     0x7ef224: stur            w0, [x2, #0xb]
    // 0x7ef228: StoreField: r2->field_f = r0
    //     0x7ef228: stur            w0, [x2, #0xf]
    // 0x7ef22c: StoreField: r2->field_13 = r0
    //     0x7ef22c: stur            w0, [x2, #0x13]
    // 0x7ef230: r16 = Instance_Color
    //     0x7ef230: add             x16, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7ef234: ldr             x16, [x16, #0x200]
    // 0x7ef238: r30 = 1.000000
    //     0x7ef238: ldr             lr, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7ef23c: stp             lr, x16, [SP]
    // 0x7ef240: r1 = Null
    //     0x7ef240: mov             x1, NULL
    // 0x7ef244: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, width, 0x2, null]
    //     0x7ef244: add             x4, PP, #0x12, lsl #12  ; [pp+0x12208] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "width", 0x2, Null]
    //     0x7ef248: ldr             x4, [x4, #0x208]
    // 0x7ef24c: r0 = Border.all()
    //     0x7ef24c: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7ef250: stur            x0, [fp, #-0x20]
    // 0x7ef254: r0 = BoxDecoration()
    //     0x7ef254: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ef258: mov             x2, x0
    // 0x7ef25c: ldur            x0, [fp, #-0x10]
    // 0x7ef260: stur            x2, [fp, #-0x38]
    // 0x7ef264: StoreField: r2->field_7 = r0
    //     0x7ef264: stur            w0, [x2, #7]
    // 0x7ef268: ldur            x0, [fp, #-0x20]
    // 0x7ef26c: StoreField: r2->field_f = r0
    //     0x7ef26c: stur            w0, [x2, #0xf]
    // 0x7ef270: ldur            x0, [fp, #-0x30]
    // 0x7ef274: StoreField: r2->field_13 = r0
    //     0x7ef274: stur            w0, [x2, #0x13]
    // 0x7ef278: r0 = Instance_BoxShape
    //     0x7ef278: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ef27c: ldr             x0, [x0, #0x1c8]
    // 0x7ef280: StoreField: r2->field_23 = r0
    //     0x7ef280: stur            w0, [x2, #0x23]
    // 0x7ef284: ldur            x0, [fp, #-0x18]
    // 0x7ef288: LoadField: r1 = r0->field_13
    //     0x7ef288: ldur            w1, [x0, #0x13]
    // 0x7ef28c: DecompressPointer r1
    //     0x7ef28c: add             x1, x1, HEAP, lsl #32
    // 0x7ef290: r0 = of()
    //     0x7ef290: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7ef294: LoadField: r1 = r0->field_87
    //     0x7ef294: ldur            w1, [x0, #0x87]
    // 0x7ef298: DecompressPointer r1
    //     0x7ef298: add             x1, x1, HEAP, lsl #32
    // 0x7ef29c: LoadField: r0 = r1->field_1f
    //     0x7ef29c: ldur            w0, [x1, #0x1f]
    // 0x7ef2a0: DecompressPointer r0
    //     0x7ef2a0: add             x0, x0, HEAP, lsl #32
    // 0x7ef2a4: r16 = Instance_Color
    //     0x7ef2a4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7ef2a8: ldr             x16, [x16, #0xb78]
    // 0x7ef2ac: r30 = Instance_FontWeight
    //     0x7ef2ac: add             lr, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ef2b0: ldr             lr, [lr, #0x1d0]
    // 0x7ef2b4: stp             lr, x16, [SP]
    // 0x7ef2b8: mov             x1, x0
    // 0x7ef2bc: r4 = const [0, 0x3, 0x2, 0x1, color, 0x1, fontWeight, 0x2, null]
    //     0x7ef2bc: add             x4, PP, #0x12, lsl #12  ; [pp+0x12210] List(9) [0, 0x3, 0x2, 0x1, "color", 0x1, "fontWeight", 0x2, Null]
    //     0x7ef2c0: ldr             x4, [x4, #0x210]
    // 0x7ef2c4: r0 = copyWith()
    //     0x7ef2c4: bl              #0x4112d4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x7ef2c8: stur            x0, [fp, #-0x10]
    // 0x7ef2cc: r0 = Text()
    //     0x7ef2cc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ef2d0: mov             x3, x0
    // 0x7ef2d4: r0 = "Bize Ulaşın"
    //     0x7ef2d4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12218] "Bize Ulaşın"
    //     0x7ef2d8: ldr             x0, [x0, #0x218]
    // 0x7ef2dc: stur            x3, [fp, #-0x20]
    // 0x7ef2e0: StoreField: r3->field_b = r0
    //     0x7ef2e0: stur            w0, [x3, #0xb]
    // 0x7ef2e4: ldur            x0, [fp, #-0x10]
    // 0x7ef2e8: StoreField: r3->field_13 = r0
    //     0x7ef2e8: stur            w0, [x3, #0x13]
    // 0x7ef2ec: r1 = Null
    //     0x7ef2ec: mov             x1, NULL
    // 0x7ef2f0: r2 = 6
    //     0x7ef2f0: mov             x2, #6
    // 0x7ef2f4: r0 = AllocateArray()
    //     0x7ef2f4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ef2f8: mov             x2, x0
    // 0x7ef2fc: ldur            x0, [fp, #-0x20]
    // 0x7ef300: stur            x2, [fp, #-0x10]
    // 0x7ef304: StoreField: r2->field_f = r0
    //     0x7ef304: stur            w0, [x2, #0xf]
    // 0x7ef308: r16 = Instance_SizedBox
    //     0x7ef308: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7ef30c: ldr             x16, [x16, #0x220]
    // 0x7ef310: StoreField: r2->field_13 = r16
    //     0x7ef310: stur            w16, [x2, #0x13]
    // 0x7ef314: r16 = Instance_Text
    //     0x7ef314: add             x16, PP, #0x12, lsl #12  ; [pp+0x12228] Obj!Text@a1dd91
    //     0x7ef318: ldr             x16, [x16, #0x228]
    // 0x7ef31c: ArrayStore: r2[0] = r16  ; List_4
    //     0x7ef31c: stur            w16, [x2, #0x17]
    // 0x7ef320: r1 = <Widget>
    //     0x7ef320: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ef324: r0 = AllocateGrowableArray()
    //     0x7ef324: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ef328: mov             x1, x0
    // 0x7ef32c: ldur            x0, [fp, #-0x10]
    // 0x7ef330: stur            x1, [fp, #-0x20]
    // 0x7ef334: StoreField: r1->field_f = r0
    //     0x7ef334: stur            w0, [x1, #0xf]
    // 0x7ef338: r0 = 6
    //     0x7ef338: mov             x0, #6
    // 0x7ef33c: StoreField: r1->field_b = r0
    //     0x7ef33c: stur            w0, [x1, #0xb]
    // 0x7ef340: r0 = Column()
    //     0x7ef340: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ef344: mov             x1, x0
    // 0x7ef348: r0 = Instance_Axis
    //     0x7ef348: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ef34c: stur            x1, [fp, #-0x10]
    // 0x7ef350: StoreField: r1->field_f = r0
    //     0x7ef350: stur            w0, [x1, #0xf]
    // 0x7ef354: r2 = Instance_MainAxisAlignment
    //     0x7ef354: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ef358: ldr             x2, [x2, #0x230]
    // 0x7ef35c: StoreField: r1->field_13 = r2
    //     0x7ef35c: stur            w2, [x1, #0x13]
    // 0x7ef360: r3 = Instance_MainAxisSize
    //     0x7ef360: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ef364: ldr             x3, [x3, #0x330]
    // 0x7ef368: ArrayStore: r1[0] = r3  ; List_4
    //     0x7ef368: stur            w3, [x1, #0x17]
    // 0x7ef36c: r4 = Instance_CrossAxisAlignment
    //     0x7ef36c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7ef370: ldr             x4, [x4, #0x238]
    // 0x7ef374: StoreField: r1->field_1b = r4
    //     0x7ef374: stur            w4, [x1, #0x1b]
    // 0x7ef378: r5 = Instance_VerticalDirection
    //     0x7ef378: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ef37c: ldr             x5, [x5, #0x340]
    // 0x7ef380: StoreField: r1->field_23 = r5
    //     0x7ef380: stur            w5, [x1, #0x23]
    // 0x7ef384: r6 = Instance_Clip
    //     0x7ef384: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ef388: ldr             x6, [x6, #0x348]
    // 0x7ef38c: StoreField: r1->field_2b = r6
    //     0x7ef38c: stur            w6, [x1, #0x2b]
    // 0x7ef390: StoreField: r1->field_2f = rZR
    //     0x7ef390: stur            xzr, [x1, #0x2f]
    // 0x7ef394: ldur            x7, [fp, #-0x20]
    // 0x7ef398: StoreField: r1->field_b = r7
    //     0x7ef398: stur            w7, [x1, #0xb]
    // 0x7ef39c: r0 = Container()
    //     0x7ef39c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ef3a0: stur            x0, [fp, #-0x20]
    // 0x7ef3a4: r16 = Instance_EdgeInsets
    //     0x7ef3a4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7ef3a8: ldr             x16, [x16, #0x240]
    // 0x7ef3ac: ldur            lr, [fp, #-0x38]
    // 0x7ef3b0: stp             lr, x16, [SP, #8]
    // 0x7ef3b4: ldur            x16, [fp, #-0x10]
    // 0x7ef3b8: str             x16, [SP]
    // 0x7ef3bc: mov             x1, x0
    // 0x7ef3c0: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ef3c0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ef3c4: ldr             x4, [x4, #0x1e8]
    // 0x7ef3c8: r0 = Container()
    //     0x7ef3c8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ef3cc: r1 = <Widget>
    //     0x7ef3cc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ef3d0: r2 = 28
    //     0x7ef3d0: mov             x2, #0x1c
    // 0x7ef3d4: r0 = AllocateArray()
    //     0x7ef3d4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7ef3d8: mov             x2, x0
    // 0x7ef3dc: ldur            x0, [fp, #-0x20]
    // 0x7ef3e0: stur            x2, [fp, #-0x10]
    // 0x7ef3e4: StoreField: r2->field_f = r0
    //     0x7ef3e4: stur            w0, [x2, #0xf]
    // 0x7ef3e8: r16 = Instance_SizedBox
    //     0x7ef3e8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x7ef3ec: ldr             x16, [x16, #0x248]
    // 0x7ef3f0: StoreField: r2->field_13 = r16
    //     0x7ef3f0: stur            w16, [x2, #0x13]
    // 0x7ef3f4: ldur            x0, [fp, #-0x18]
    // 0x7ef3f8: LoadField: r1 = r0->field_13
    //     0x7ef3f8: ldur            w1, [x0, #0x13]
    // 0x7ef3fc: DecompressPointer r1
    //     0x7ef3fc: add             x1, x1, HEAP, lsl #32
    // 0x7ef400: r0 = of()
    //     0x7ef400: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7ef404: LoadField: r1 = r0->field_87
    //     0x7ef404: ldur            w1, [x0, #0x87]
    // 0x7ef408: DecompressPointer r1
    //     0x7ef408: add             x1, x1, HEAP, lsl #32
    // 0x7ef40c: LoadField: r0 = r1->field_23
    //     0x7ef40c: ldur            w0, [x1, #0x23]
    // 0x7ef410: DecompressPointer r0
    //     0x7ef410: add             x0, x0, HEAP, lsl #32
    // 0x7ef414: r16 = Instance_FontWeight
    //     0x7ef414: add             x16, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ef418: ldr             x16, [x16, #0x1d0]
    // 0x7ef41c: r30 = Instance_Color
    //     0x7ef41c: add             lr, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7ef420: ldr             lr, [lr, #0x200]
    // 0x7ef424: stp             lr, x16, [SP]
    // 0x7ef428: mov             x1, x0
    // 0x7ef42c: r4 = const [0, 0x3, 0x2, 0x1, color, 0x2, fontWeight, 0x1, null]
    //     0x7ef42c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12250] List(9) [0, 0x3, 0x2, 0x1, "color", 0x2, "fontWeight", 0x1, Null]
    //     0x7ef430: ldr             x4, [x4, #0x250]
    // 0x7ef434: r0 = copyWith()
    //     0x7ef434: bl              #0x4112d4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x7ef438: stur            x0, [fp, #-0x20]
    // 0x7ef43c: r0 = Text()
    //     0x7ef43c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ef440: mov             x1, x0
    // 0x7ef444: r0 = "Telefon Numaraları"
    //     0x7ef444: add             x0, PP, #0x12, lsl #12  ; [pp+0x12258] "Telefon Numaraları"
    //     0x7ef448: ldr             x0, [x0, #0x258]
    // 0x7ef44c: StoreField: r1->field_b = r0
    //     0x7ef44c: stur            w0, [x1, #0xb]
    // 0x7ef450: ldur            x0, [fp, #-0x20]
    // 0x7ef454: StoreField: r1->field_13 = r0
    //     0x7ef454: stur            w0, [x1, #0x13]
    // 0x7ef458: mov             x0, x1
    // 0x7ef45c: ldur            x1, [fp, #-0x10]
    // 0x7ef460: ArrayStore: r1[2] = r0  ; List_4
    //     0x7ef460: add             x25, x1, #0x17
    //     0x7ef464: str             w0, [x25]
    //     0x7ef468: tbz             w0, #0, #0x7ef484
    //     0x7ef46c: ldurb           w16, [x1, #-1]
    //     0x7ef470: ldurb           w17, [x0, #-1]
    //     0x7ef474: and             x16, x17, x16, lsr #2
    //     0x7ef478: tst             x16, HEAP, lsr #32
    //     0x7ef47c: b.eq            #0x7ef484
    //     0x7ef480: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ef484: ldur            x0, [fp, #-0x10]
    // 0x7ef488: r16 = Instance_SizedBox
    //     0x7ef488: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7ef48c: ldr             x16, [x16, #0x220]
    // 0x7ef490: StoreField: r0->field_1b = r16
    //     0x7ef490: stur            w16, [x0, #0x1b]
    // 0x7ef494: ldur            x2, [fp, #-0x18]
    // 0x7ef498: r1 = Function '<anonymous closure>':.
    //     0x7ef498: add             x1, PP, #0x12, lsl #12  ; [pp+0x12260] AnonymousClosure: (0x7eff54), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7ef49c: ldr             x1, [x1, #0x260]
    // 0x7ef4a0: r0 = AllocateClosure()
    //     0x7ef4a0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ef4a4: ldur            x1, [fp, #-8]
    // 0x7ef4a8: mov             x3, x0
    // 0x7ef4ac: r2 = Instance_IconData
    //     0x7ef4ac: add             x2, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x7ef4b0: ldr             x2, [x2, #0x268]
    // 0x7ef4b4: r5 = "Birinci Telefon"
    //     0x7ef4b4: add             x5, PP, #0x12, lsl #12  ; [pp+0x12270] "Birinci Telefon"
    //     0x7ef4b8: ldr             x5, [x5, #0x270]
    // 0x7ef4bc: r6 = "+90 555 021 69 74"
    //     0x7ef4bc: add             x6, PP, #0x12, lsl #12  ; [pp+0x12278] "+90 555 021 69 74"
    //     0x7ef4c0: ldr             x6, [x6, #0x278]
    // 0x7ef4c4: r0 = _buildContactCard()
    //     0x7ef4c4: bl              #0x7ef82c  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_buildContactCard
    // 0x7ef4c8: ldur            x1, [fp, #-0x10]
    // 0x7ef4cc: ArrayStore: r1[4] = r0  ; List_4
    //     0x7ef4cc: add             x25, x1, #0x1f
    //     0x7ef4d0: str             w0, [x25]
    //     0x7ef4d4: tbz             w0, #0, #0x7ef4f0
    //     0x7ef4d8: ldurb           w16, [x1, #-1]
    //     0x7ef4dc: ldurb           w17, [x0, #-1]
    //     0x7ef4e0: and             x16, x17, x16, lsr #2
    //     0x7ef4e4: tst             x16, HEAP, lsr #32
    //     0x7ef4e8: b.eq            #0x7ef4f0
    //     0x7ef4ec: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ef4f0: ldur            x0, [fp, #-0x10]
    // 0x7ef4f4: r16 = Instance_SizedBox
    //     0x7ef4f4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7ef4f8: ldr             x16, [x16, #0x318]
    // 0x7ef4fc: StoreField: r0->field_23 = r16
    //     0x7ef4fc: stur            w16, [x0, #0x23]
    // 0x7ef500: ldur            x2, [fp, #-0x18]
    // 0x7ef504: r1 = Function '<anonymous closure>':.
    //     0x7ef504: add             x1, PP, #0x12, lsl #12  ; [pp+0x12280] AnonymousClosure: (0x7efe00), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7ef508: ldr             x1, [x1, #0x280]
    // 0x7ef50c: r0 = AllocateClosure()
    //     0x7ef50c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ef510: ldur            x1, [fp, #-8]
    // 0x7ef514: mov             x3, x0
    // 0x7ef518: r2 = Instance_IconData
    //     0x7ef518: add             x2, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x7ef51c: ldr             x2, [x2, #0x268]
    // 0x7ef520: r5 = "İkinci Telefon"
    //     0x7ef520: add             x5, PP, #0x12, lsl #12  ; [pp+0x12288] "İkinci Telefon"
    //     0x7ef524: ldr             x5, [x5, #0x288]
    // 0x7ef528: r6 = "+90 530 378 09 68"
    //     0x7ef528: add             x6, PP, #0x12, lsl #12  ; [pp+0x12290] "+90 530 378 09 68"
    //     0x7ef52c: ldr             x6, [x6, #0x290]
    // 0x7ef530: r0 = _buildContactCard()
    //     0x7ef530: bl              #0x7ef82c  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_buildContactCard
    // 0x7ef534: ldur            x1, [fp, #-0x10]
    // 0x7ef538: ArrayStore: r1[6] = r0  ; List_4
    //     0x7ef538: add             x25, x1, #0x27
    //     0x7ef53c: str             w0, [x25]
    //     0x7ef540: tbz             w0, #0, #0x7ef55c
    //     0x7ef544: ldurb           w16, [x1, #-1]
    //     0x7ef548: ldurb           w17, [x0, #-1]
    //     0x7ef54c: and             x16, x17, x16, lsr #2
    //     0x7ef550: tst             x16, HEAP, lsr #32
    //     0x7ef554: b.eq            #0x7ef55c
    //     0x7ef558: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ef55c: ldur            x0, [fp, #-0x10]
    // 0x7ef560: r16 = Instance_SizedBox
    //     0x7ef560: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x7ef564: ldr             x16, [x16, #0x248]
    // 0x7ef568: StoreField: r0->field_2b = r16
    //     0x7ef568: stur            w16, [x0, #0x2b]
    // 0x7ef56c: ldur            x2, [fp, #-0x18]
    // 0x7ef570: LoadField: r1 = r2->field_13
    //     0x7ef570: ldur            w1, [x2, #0x13]
    // 0x7ef574: DecompressPointer r1
    //     0x7ef574: add             x1, x1, HEAP, lsl #32
    // 0x7ef578: r0 = of()
    //     0x7ef578: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7ef57c: LoadField: r1 = r0->field_87
    //     0x7ef57c: ldur            w1, [x0, #0x87]
    // 0x7ef580: DecompressPointer r1
    //     0x7ef580: add             x1, x1, HEAP, lsl #32
    // 0x7ef584: LoadField: r0 = r1->field_23
    //     0x7ef584: ldur            w0, [x1, #0x23]
    // 0x7ef588: DecompressPointer r0
    //     0x7ef588: add             x0, x0, HEAP, lsl #32
    // 0x7ef58c: r16 = Instance_FontWeight
    //     0x7ef58c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7ef590: ldr             x16, [x16, #0x1d0]
    // 0x7ef594: r30 = Instance_Color
    //     0x7ef594: add             lr, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7ef598: ldr             lr, [lr, #0x200]
    // 0x7ef59c: stp             lr, x16, [SP]
    // 0x7ef5a0: mov             x1, x0
    // 0x7ef5a4: r4 = const [0, 0x3, 0x2, 0x1, color, 0x2, fontWeight, 0x1, null]
    //     0x7ef5a4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12250] List(9) [0, 0x3, 0x2, 0x1, "color", 0x2, "fontWeight", 0x1, Null]
    //     0x7ef5a8: ldr             x4, [x4, #0x250]
    // 0x7ef5ac: r0 = copyWith()
    //     0x7ef5ac: bl              #0x4112d4  ; [package:flutter/src/painting/text_style.dart] TextStyle::copyWith
    // 0x7ef5b0: stur            x0, [fp, #-0x20]
    // 0x7ef5b4: r0 = Text()
    //     0x7ef5b4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ef5b8: mov             x1, x0
    // 0x7ef5bc: r0 = "E-Posta Adresleri"
    //     0x7ef5bc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12298] "E-Posta Adresleri"
    //     0x7ef5c0: ldr             x0, [x0, #0x298]
    // 0x7ef5c4: StoreField: r1->field_b = r0
    //     0x7ef5c4: stur            w0, [x1, #0xb]
    // 0x7ef5c8: ldur            x0, [fp, #-0x20]
    // 0x7ef5cc: StoreField: r1->field_13 = r0
    //     0x7ef5cc: stur            w0, [x1, #0x13]
    // 0x7ef5d0: mov             x0, x1
    // 0x7ef5d4: ldur            x1, [fp, #-0x10]
    // 0x7ef5d8: ArrayStore: r1[8] = r0  ; List_4
    //     0x7ef5d8: add             x25, x1, #0x2f
    //     0x7ef5dc: str             w0, [x25]
    //     0x7ef5e0: tbz             w0, #0, #0x7ef5fc
    //     0x7ef5e4: ldurb           w16, [x1, #-1]
    //     0x7ef5e8: ldurb           w17, [x0, #-1]
    //     0x7ef5ec: and             x16, x17, x16, lsr #2
    //     0x7ef5f0: tst             x16, HEAP, lsr #32
    //     0x7ef5f4: b.eq            #0x7ef5fc
    //     0x7ef5f8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ef5fc: ldur            x0, [fp, #-0x10]
    // 0x7ef600: r16 = Instance_SizedBox
    //     0x7ef600: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7ef604: ldr             x16, [x16, #0x220]
    // 0x7ef608: StoreField: r0->field_33 = r16
    //     0x7ef608: stur            w16, [x0, #0x33]
    // 0x7ef60c: ldur            x2, [fp, #-0x18]
    // 0x7ef610: r1 = Function '<anonymous closure>':.
    //     0x7ef610: add             x1, PP, #0x12, lsl #12  ; [pp+0x122a0] AnonymousClosure: (0x7efdb4), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7ef614: ldr             x1, [x1, #0x2a0]
    // 0x7ef618: r0 = AllocateClosure()
    //     0x7ef618: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ef61c: ldur            x1, [fp, #-8]
    // 0x7ef620: mov             x3, x0
    // 0x7ef624: r2 = Instance_IconData
    //     0x7ef624: add             x2, PP, #0x12, lsl #12  ; [pp+0x122a8] Obj!IconData@a09e81
    //     0x7ef628: ldr             x2, [x2, #0x2a8]
    // 0x7ef62c: r5 = "Birinci E-Posta"
    //     0x7ef62c: add             x5, PP, #0x12, lsl #12  ; [pp+0x122b0] "Birinci E-Posta"
    //     0x7ef630: ldr             x5, [x5, #0x2b0]
    // 0x7ef634: r6 = "support@umrerehberim.com"
    //     0x7ef634: add             x6, PP, #0x12, lsl #12  ; [pp+0x122b8] "support@umrerehberim.com"
    //     0x7ef638: ldr             x6, [x6, #0x2b8]
    // 0x7ef63c: r0 = _buildContactCard()
    //     0x7ef63c: bl              #0x7ef82c  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_buildContactCard
    // 0x7ef640: ldur            x1, [fp, #-0x10]
    // 0x7ef644: ArrayStore: r1[10] = r0  ; List_4
    //     0x7ef644: add             x25, x1, #0x37
    //     0x7ef648: str             w0, [x25]
    //     0x7ef64c: tbz             w0, #0, #0x7ef668
    //     0x7ef650: ldurb           w16, [x1, #-1]
    //     0x7ef654: ldurb           w17, [x0, #-1]
    //     0x7ef658: and             x16, x17, x16, lsr #2
    //     0x7ef65c: tst             x16, HEAP, lsr #32
    //     0x7ef660: b.eq            #0x7ef668
    //     0x7ef664: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ef668: ldur            x0, [fp, #-0x10]
    // 0x7ef66c: r16 = Instance_SizedBox
    //     0x7ef66c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7ef670: ldr             x16, [x16, #0x318]
    // 0x7ef674: StoreField: r0->field_3b = r16
    //     0x7ef674: stur            w16, [x0, #0x3b]
    // 0x7ef678: ldur            x2, [fp, #-0x18]
    // 0x7ef67c: r1 = Function '<anonymous closure>':.
    //     0x7ef67c: add             x1, PP, #0x12, lsl #12  ; [pp+0x122c0] AnonymousClosure: (0x7efc80), in [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::build (0x7eef84)
    //     0x7ef680: ldr             x1, [x1, #0x2c0]
    // 0x7ef684: r0 = AllocateClosure()
    //     0x7ef684: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7ef688: ldur            x1, [fp, #-8]
    // 0x7ef68c: mov             x3, x0
    // 0x7ef690: r2 = Instance_IconData
    //     0x7ef690: add             x2, PP, #0x12, lsl #12  ; [pp+0x122a8] Obj!IconData@a09e81
    //     0x7ef694: ldr             x2, [x2, #0x2a8]
    // 0x7ef698: r5 = "İkinci E-Posta"
    //     0x7ef698: add             x5, PP, #0x12, lsl #12  ; [pp+0x122c8] "İkinci E-Posta"
    //     0x7ef69c: ldr             x5, [x5, #0x2c8]
    // 0x7ef6a0: r6 = "info@umrerehberim.com"
    //     0x7ef6a0: add             x6, PP, #0x12, lsl #12  ; [pp+0x122d0] "info@umrerehberim.com"
    //     0x7ef6a4: ldr             x6, [x6, #0x2d0]
    // 0x7ef6a8: r0 = _buildContactCard()
    //     0x7ef6a8: bl              #0x7ef82c  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_buildContactCard
    // 0x7ef6ac: ldur            x1, [fp, #-0x10]
    // 0x7ef6b0: ArrayStore: r1[12] = r0  ; List_4
    //     0x7ef6b0: add             x25, x1, #0x3f
    //     0x7ef6b4: str             w0, [x25]
    //     0x7ef6b8: tbz             w0, #0, #0x7ef6d4
    //     0x7ef6bc: ldurb           w16, [x1, #-1]
    //     0x7ef6c0: ldurb           w17, [x0, #-1]
    //     0x7ef6c4: and             x16, x17, x16, lsr #2
    //     0x7ef6c8: tst             x16, HEAP, lsr #32
    //     0x7ef6cc: b.eq            #0x7ef6d4
    //     0x7ef6d0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7ef6d4: ldur            x0, [fp, #-0x10]
    // 0x7ef6d8: r16 = Instance_SizedBox
    //     0x7ef6d8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12248] Obj!SizedBox@a1fd11
    //     0x7ef6dc: ldr             x16, [x16, #0x248]
    // 0x7ef6e0: StoreField: r0->field_43 = r16
    //     0x7ef6e0: stur            w16, [x0, #0x43]
    // 0x7ef6e4: r1 = <Widget>
    //     0x7ef6e4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7ef6e8: r0 = AllocateGrowableArray()
    //     0x7ef6e8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7ef6ec: mov             x1, x0
    // 0x7ef6f0: ldur            x0, [fp, #-0x10]
    // 0x7ef6f4: stur            x1, [fp, #-8]
    // 0x7ef6f8: StoreField: r1->field_f = r0
    //     0x7ef6f8: stur            w0, [x1, #0xf]
    // 0x7ef6fc: r0 = 28
    //     0x7ef6fc: mov             x0, #0x1c
    // 0x7ef700: StoreField: r1->field_b = r0
    //     0x7ef700: stur            w0, [x1, #0xb]
    // 0x7ef704: r0 = Column()
    //     0x7ef704: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7ef708: mov             x1, x0
    // 0x7ef70c: r0 = Instance_Axis
    //     0x7ef70c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ef710: stur            x1, [fp, #-0x10]
    // 0x7ef714: StoreField: r1->field_f = r0
    //     0x7ef714: stur            w0, [x1, #0xf]
    // 0x7ef718: r2 = Instance_MainAxisAlignment
    //     0x7ef718: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7ef71c: ldr             x2, [x2, #0x230]
    // 0x7ef720: StoreField: r1->field_13 = r2
    //     0x7ef720: stur            w2, [x1, #0x13]
    // 0x7ef724: r2 = Instance_MainAxisSize
    //     0x7ef724: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7ef728: ldr             x2, [x2, #0x330]
    // 0x7ef72c: ArrayStore: r1[0] = r2  ; List_4
    //     0x7ef72c: stur            w2, [x1, #0x17]
    // 0x7ef730: r2 = Instance_CrossAxisAlignment
    //     0x7ef730: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7ef734: ldr             x2, [x2, #0x238]
    // 0x7ef738: StoreField: r1->field_1b = r2
    //     0x7ef738: stur            w2, [x1, #0x1b]
    // 0x7ef73c: r2 = Instance_VerticalDirection
    //     0x7ef73c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7ef740: ldr             x2, [x2, #0x340]
    // 0x7ef744: StoreField: r1->field_23 = r2
    //     0x7ef744: stur            w2, [x1, #0x23]
    // 0x7ef748: r2 = Instance_Clip
    //     0x7ef748: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7ef74c: ldr             x2, [x2, #0x348]
    // 0x7ef750: StoreField: r1->field_2b = r2
    //     0x7ef750: stur            w2, [x1, #0x2b]
    // 0x7ef754: StoreField: r1->field_2f = rZR
    //     0x7ef754: stur            xzr, [x1, #0x2f]
    // 0x7ef758: ldur            x2, [fp, #-8]
    // 0x7ef75c: StoreField: r1->field_b = r2
    //     0x7ef75c: stur            w2, [x1, #0xb]
    // 0x7ef760: r0 = Padding()
    //     0x7ef760: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7ef764: mov             x1, x0
    // 0x7ef768: r0 = Instance_EdgeInsets
    //     0x7ef768: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7ef76c: ldr             x0, [x0, #0x240]
    // 0x7ef770: stur            x1, [fp, #-8]
    // 0x7ef774: StoreField: r1->field_f = r0
    //     0x7ef774: stur            w0, [x1, #0xf]
    // 0x7ef778: ldur            x0, [fp, #-0x10]
    // 0x7ef77c: StoreField: r1->field_b = r0
    //     0x7ef77c: stur            w0, [x1, #0xb]
    // 0x7ef780: r0 = SingleChildScrollView()
    //     0x7ef780: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x7ef784: mov             x1, x0
    // 0x7ef788: r0 = Instance_Axis
    //     0x7ef788: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7ef78c: stur            x1, [fp, #-0x10]
    // 0x7ef790: StoreField: r1->field_b = r0
    //     0x7ef790: stur            w0, [x1, #0xb]
    // 0x7ef794: r0 = false
    //     0x7ef794: add             x0, NULL, #0x30  ; false
    // 0x7ef798: StoreField: r1->field_f = r0
    //     0x7ef798: stur            w0, [x1, #0xf]
    // 0x7ef79c: ldur            x2, [fp, #-8]
    // 0x7ef7a0: StoreField: r1->field_23 = r2
    //     0x7ef7a0: stur            w2, [x1, #0x23]
    // 0x7ef7a4: r2 = Instance_DragStartBehavior
    //     0x7ef7a4: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7ef7a8: StoreField: r1->field_27 = r2
    //     0x7ef7a8: stur            w2, [x1, #0x27]
    // 0x7ef7ac: r3 = Instance_Clip
    //     0x7ef7ac: add             x3, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7ef7b0: ldr             x3, [x3, #0x2d8]
    // 0x7ef7b4: StoreField: r1->field_2b = r3
    //     0x7ef7b4: stur            w3, [x1, #0x2b]
    // 0x7ef7b8: r3 = Instance_HitTestBehavior
    //     0x7ef7b8: add             x3, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x7ef7bc: ldr             x3, [x3, #0xe20]
    // 0x7ef7c0: StoreField: r1->field_2f = r3
    //     0x7ef7c0: stur            w3, [x1, #0x2f]
    // 0x7ef7c4: r0 = Scaffold()
    //     0x7ef7c4: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x7ef7c8: ldur            x1, [fp, #-0x28]
    // 0x7ef7cc: ArrayStore: r0[0] = r1  ; List_4
    //     0x7ef7cc: stur            w1, [x0, #0x17]
    // 0x7ef7d0: ldur            x1, [fp, #-0x10]
    // 0x7ef7d4: StoreField: r0->field_1b = r1
    //     0x7ef7d4: stur            w1, [x0, #0x1b]
    // 0x7ef7d8: r1 = Instance_AlignmentDirectional
    //     0x7ef7d8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7ef7dc: ldr             x1, [x1, #0x350]
    // 0x7ef7e0: StoreField: r0->field_2f = r1
    //     0x7ef7e0: stur            w1, [x0, #0x2f]
    // 0x7ef7e4: r1 = true
    //     0x7ef7e4: add             x1, NULL, #0x20  ; true
    // 0x7ef7e8: StoreField: r0->field_5f = r1
    //     0x7ef7e8: stur            w1, [x0, #0x5f]
    // 0x7ef7ec: r2 = Instance_DragStartBehavior
    //     0x7ef7ec: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7ef7f0: StoreField: r0->field_63 = r2
    //     0x7ef7f0: stur            w2, [x0, #0x63]
    // 0x7ef7f4: r2 = false
    //     0x7ef7f4: add             x2, NULL, #0x30  ; false
    // 0x7ef7f8: StoreField: r0->field_b = r2
    //     0x7ef7f8: stur            w2, [x0, #0xb]
    // 0x7ef7fc: StoreField: r0->field_f = r1
    //     0x7ef7fc: stur            w1, [x0, #0xf]
    // 0x7ef800: StoreField: r0->field_13 = r2
    //     0x7ef800: stur            w2, [x0, #0x13]
    // 0x7ef804: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7ef804: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7ef808: ldr             x2, [x2, #0x358]
    // 0x7ef80c: StoreField: r0->field_4b = r2
    //     0x7ef80c: stur            w2, [x0, #0x4b]
    // 0x7ef810: StoreField: r0->field_6b = r1
    //     0x7ef810: stur            w1, [x0, #0x6b]
    // 0x7ef814: StoreField: r0->field_6f = r1
    //     0x7ef814: stur            w1, [x0, #0x6f]
    // 0x7ef818: LeaveFrame
    //     0x7ef818: mov             SP, fp
    //     0x7ef81c: ldp             fp, lr, [SP], #0x10
    // 0x7ef820: ret
    //     0x7ef820: ret             
    // 0x7ef824: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7ef824: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7ef828: b               #0x7eefa4
  }
  _ _buildContactCard(/* No info */) {
    // ** addr: 0x7ef82c, size: 0x454
    // 0x7ef82c: EnterFrame
    //     0x7ef82c: stp             fp, lr, [SP, #-0x10]!
    //     0x7ef830: mov             fp, SP
    // 0x7ef834: AllocStack(0x60)
    //     0x7ef834: sub             SP, SP, #0x60
    // 0x7ef838: SetupParameters(dynamic _ /* r2 => r2, fp-0x8 */, dynamic _ /* r3 => r3, fp-0x10 */, dynamic _ /* r5 => r5, fp-0x18 */, dynamic _ /* r6 => r6, fp-0x20 */)
    //     0x7ef838: stur            x2, [fp, #-8]
    //     0x7ef83c: stur            x3, [fp, #-0x10]
    //     0x7ef840: stur            x5, [fp, #-0x18]
    //     0x7ef844: stur            x6, [fp, #-0x20]
    // 0x7ef848: CheckStackOverflow
    //     0x7ef848: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7ef84c: cmp             SP, x16
    //     0x7ef850: b.ls            #0x7efc78
    // 0x7ef854: r0 = Radius()
    //     0x7ef854: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ef858: d0 = 8.000000
    //     0x7ef858: fmov            d0, #8.00000000
    // 0x7ef85c: stur            x0, [fp, #-0x28]
    // 0x7ef860: StoreField: r0->field_7 = d0
    //     0x7ef860: stur            d0, [x0, #7]
    // 0x7ef864: StoreField: r0->field_f = d0
    //     0x7ef864: stur            d0, [x0, #0xf]
    // 0x7ef868: r0 = BorderRadius()
    //     0x7ef868: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ef86c: mov             x2, x0
    // 0x7ef870: ldur            x0, [fp, #-0x28]
    // 0x7ef874: stur            x2, [fp, #-0x30]
    // 0x7ef878: StoreField: r2->field_7 = r0
    //     0x7ef878: stur            w0, [x2, #7]
    // 0x7ef87c: StoreField: r2->field_b = r0
    //     0x7ef87c: stur            w0, [x2, #0xb]
    // 0x7ef880: StoreField: r2->field_f = r0
    //     0x7ef880: stur            w0, [x2, #0xf]
    // 0x7ef884: StoreField: r2->field_13 = r0
    //     0x7ef884: stur            w0, [x2, #0x13]
    // 0x7ef888: r16 = 0.300000
    //     0x7ef888: add             x16, PP, #0x12, lsl #12  ; [pp+0x12320] 0.3
    //     0x7ef88c: ldr             x16, [x16, #0x320]
    // 0x7ef890: str             x16, [SP]
    // 0x7ef894: r1 = Instance_MaterialColor
    //     0x7ef894: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7ef898: ldr             x1, [x1, #0xbc8]
    // 0x7ef89c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ef89c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ef8a0: ldr             x4, [x4, #0x198]
    // 0x7ef8a4: r0 = withValues()
    //     0x7ef8a4: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ef8a8: str             x0, [SP]
    // 0x7ef8ac: r1 = Null
    //     0x7ef8ac: mov             x1, NULL
    // 0x7ef8b0: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x7ef8b0: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x7ef8b4: ldr             x4, [x4, #0x788]
    // 0x7ef8b8: r0 = Border.all()
    //     0x7ef8b8: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x7ef8bc: stur            x0, [fp, #-0x28]
    // 0x7ef8c0: r0 = Radius()
    //     0x7ef8c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ef8c4: d0 = 8.000000
    //     0x7ef8c4: fmov            d0, #8.00000000
    // 0x7ef8c8: stur            x0, [fp, #-0x38]
    // 0x7ef8cc: StoreField: r0->field_7 = d0
    //     0x7ef8cc: stur            d0, [x0, #7]
    // 0x7ef8d0: StoreField: r0->field_f = d0
    //     0x7ef8d0: stur            d0, [x0, #0xf]
    // 0x7ef8d4: r0 = BorderRadius()
    //     0x7ef8d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ef8d8: mov             x1, x0
    // 0x7ef8dc: ldur            x0, [fp, #-0x38]
    // 0x7ef8e0: stur            x1, [fp, #-0x40]
    // 0x7ef8e4: StoreField: r1->field_7 = r0
    //     0x7ef8e4: stur            w0, [x1, #7]
    // 0x7ef8e8: StoreField: r1->field_b = r0
    //     0x7ef8e8: stur            w0, [x1, #0xb]
    // 0x7ef8ec: StoreField: r1->field_f = r0
    //     0x7ef8ec: stur            w0, [x1, #0xf]
    // 0x7ef8f0: StoreField: r1->field_13 = r0
    //     0x7ef8f0: stur            w0, [x1, #0x13]
    // 0x7ef8f4: r0 = BoxDecoration()
    //     0x7ef8f4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ef8f8: mov             x2, x0
    // 0x7ef8fc: ldur            x0, [fp, #-0x28]
    // 0x7ef900: stur            x2, [fp, #-0x38]
    // 0x7ef904: StoreField: r2->field_f = r0
    //     0x7ef904: stur            w0, [x2, #0xf]
    // 0x7ef908: ldur            x0, [fp, #-0x40]
    // 0x7ef90c: StoreField: r2->field_13 = r0
    //     0x7ef90c: stur            w0, [x2, #0x13]
    // 0x7ef910: r0 = Instance_BoxShape
    //     0x7ef910: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ef914: ldr             x0, [x0, #0x1c8]
    // 0x7ef918: StoreField: r2->field_23 = r0
    //     0x7ef918: stur            w0, [x2, #0x23]
    // 0x7ef91c: r16 = 0.100000
    //     0x7ef91c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7ef920: ldr             x16, [x16, #0x1f8]
    // 0x7ef924: str             x16, [SP]
    // 0x7ef928: r1 = Instance_Color
    //     0x7ef928: add             x1, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7ef92c: ldr             x1, [x1, #0x200]
    // 0x7ef930: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7ef930: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7ef934: ldr             x4, [x4, #0x198]
    // 0x7ef938: r0 = withValues()
    //     0x7ef938: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7ef93c: stur            x0, [fp, #-0x28]
    // 0x7ef940: r0 = Radius()
    //     0x7ef940: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7ef944: d0 = 8.000000
    //     0x7ef944: fmov            d0, #8.00000000
    // 0x7ef948: stur            x0, [fp, #-0x40]
    // 0x7ef94c: StoreField: r0->field_7 = d0
    //     0x7ef94c: stur            d0, [x0, #7]
    // 0x7ef950: StoreField: r0->field_f = d0
    //     0x7ef950: stur            d0, [x0, #0xf]
    // 0x7ef954: r0 = BorderRadius()
    //     0x7ef954: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7ef958: mov             x1, x0
    // 0x7ef95c: ldur            x0, [fp, #-0x40]
    // 0x7ef960: stur            x1, [fp, #-0x48]
    // 0x7ef964: StoreField: r1->field_7 = r0
    //     0x7ef964: stur            w0, [x1, #7]
    // 0x7ef968: StoreField: r1->field_b = r0
    //     0x7ef968: stur            w0, [x1, #0xb]
    // 0x7ef96c: StoreField: r1->field_f = r0
    //     0x7ef96c: stur            w0, [x1, #0xf]
    // 0x7ef970: StoreField: r1->field_13 = r0
    //     0x7ef970: stur            w0, [x1, #0x13]
    // 0x7ef974: r0 = BoxDecoration()
    //     0x7ef974: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7ef978: mov             x1, x0
    // 0x7ef97c: ldur            x0, [fp, #-0x28]
    // 0x7ef980: stur            x1, [fp, #-0x40]
    // 0x7ef984: StoreField: r1->field_7 = r0
    //     0x7ef984: stur            w0, [x1, #7]
    // 0x7ef988: ldur            x0, [fp, #-0x48]
    // 0x7ef98c: StoreField: r1->field_13 = r0
    //     0x7ef98c: stur            w0, [x1, #0x13]
    // 0x7ef990: r0 = Instance_BoxShape
    //     0x7ef990: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7ef994: ldr             x0, [x0, #0x1c8]
    // 0x7ef998: StoreField: r1->field_23 = r0
    //     0x7ef998: stur            w0, [x1, #0x23]
    // 0x7ef99c: r0 = Icon()
    //     0x7ef99c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7ef9a0: mov             x1, x0
    // 0x7ef9a4: ldur            x0, [fp, #-8]
    // 0x7ef9a8: stur            x1, [fp, #-0x28]
    // 0x7ef9ac: StoreField: r1->field_b = r0
    //     0x7ef9ac: stur            w0, [x1, #0xb]
    // 0x7ef9b0: r0 = Instance_Color
    //     0x7ef9b0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7ef9b4: ldr             x0, [x0, #0x200]
    // 0x7ef9b8: StoreField: r1->field_23 = r0
    //     0x7ef9b8: stur            w0, [x1, #0x23]
    // 0x7ef9bc: r0 = Container()
    //     0x7ef9bc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7ef9c0: stur            x0, [fp, #-8]
    // 0x7ef9c4: r16 = Instance_EdgeInsets
    //     0x7ef9c4: add             x16, PP, #0xc, lsl #12  ; [pp+0xcde8] Obj!EdgeInsets@a0bf31
    //     0x7ef9c8: ldr             x16, [x16, #0xde8]
    // 0x7ef9cc: ldur            lr, [fp, #-0x40]
    // 0x7ef9d0: stp             lr, x16, [SP, #8]
    // 0x7ef9d4: ldur            x16, [fp, #-0x28]
    // 0x7ef9d8: str             x16, [SP]
    // 0x7ef9dc: mov             x1, x0
    // 0x7ef9e0: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7ef9e0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7ef9e4: ldr             x4, [x4, #0x1e8]
    // 0x7ef9e8: r0 = Container()
    //     0x7ef9e8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7ef9ec: r0 = Text()
    //     0x7ef9ec: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7ef9f0: mov             x1, x0
    // 0x7ef9f4: ldur            x0, [fp, #-0x18]
    // 0x7ef9f8: stur            x1, [fp, #-0x28]
    // 0x7ef9fc: StoreField: r1->field_b = r0
    //     0x7ef9fc: stur            w0, [x1, #0xb]
    // 0x7efa00: r0 = Instance_TextStyle
    //     0x7efa00: add             x0, PP, #0x12, lsl #12  ; [pp+0x12328] Obj!TextStyle@a180f1
    //     0x7efa04: ldr             x0, [x0, #0x328]
    // 0x7efa08: StoreField: r1->field_13 = r0
    //     0x7efa08: stur            w0, [x1, #0x13]
    // 0x7efa0c: r0 = Text()
    //     0x7efa0c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7efa10: mov             x3, x0
    // 0x7efa14: ldur            x0, [fp, #-0x20]
    // 0x7efa18: stur            x3, [fp, #-0x18]
    // 0x7efa1c: StoreField: r3->field_b = r0
    //     0x7efa1c: stur            w0, [x3, #0xb]
    // 0x7efa20: r0 = Instance_TextStyle
    //     0x7efa20: add             x0, PP, #0x12, lsl #12  ; [pp+0x12330] Obj!TextStyle@a181d1
    //     0x7efa24: ldr             x0, [x0, #0x330]
    // 0x7efa28: StoreField: r3->field_13 = r0
    //     0x7efa28: stur            w0, [x3, #0x13]
    // 0x7efa2c: r1 = Null
    //     0x7efa2c: mov             x1, NULL
    // 0x7efa30: r2 = 6
    //     0x7efa30: mov             x2, #6
    // 0x7efa34: r0 = AllocateArray()
    //     0x7efa34: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7efa38: mov             x2, x0
    // 0x7efa3c: ldur            x0, [fp, #-0x28]
    // 0x7efa40: stur            x2, [fp, #-0x20]
    // 0x7efa44: StoreField: r2->field_f = r0
    //     0x7efa44: stur            w0, [x2, #0xf]
    // 0x7efa48: r16 = Instance_SizedBox
    //     0x7efa48: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7efa4c: ldr             x16, [x16, #0x338]
    // 0x7efa50: StoreField: r2->field_13 = r16
    //     0x7efa50: stur            w16, [x2, #0x13]
    // 0x7efa54: ldur            x0, [fp, #-0x18]
    // 0x7efa58: ArrayStore: r2[0] = r0  ; List_4
    //     0x7efa58: stur            w0, [x2, #0x17]
    // 0x7efa5c: r1 = <Widget>
    //     0x7efa5c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7efa60: r0 = AllocateGrowableArray()
    //     0x7efa60: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7efa64: mov             x1, x0
    // 0x7efa68: ldur            x0, [fp, #-0x20]
    // 0x7efa6c: stur            x1, [fp, #-0x18]
    // 0x7efa70: StoreField: r1->field_f = r0
    //     0x7efa70: stur            w0, [x1, #0xf]
    // 0x7efa74: r0 = 6
    //     0x7efa74: mov             x0, #6
    // 0x7efa78: StoreField: r1->field_b = r0
    //     0x7efa78: stur            w0, [x1, #0xb]
    // 0x7efa7c: r0 = Column()
    //     0x7efa7c: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7efa80: mov             x2, x0
    // 0x7efa84: r0 = Instance_Axis
    //     0x7efa84: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7efa88: stur            x2, [fp, #-0x20]
    // 0x7efa8c: StoreField: r2->field_f = r0
    //     0x7efa8c: stur            w0, [x2, #0xf]
    // 0x7efa90: r0 = Instance_MainAxisAlignment
    //     0x7efa90: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7efa94: ldr             x0, [x0, #0x230]
    // 0x7efa98: StoreField: r2->field_13 = r0
    //     0x7efa98: stur            w0, [x2, #0x13]
    // 0x7efa9c: r3 = Instance_MainAxisSize
    //     0x7efa9c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7efaa0: ldr             x3, [x3, #0x330]
    // 0x7efaa4: ArrayStore: r2[0] = r3  ; List_4
    //     0x7efaa4: stur            w3, [x2, #0x17]
    // 0x7efaa8: r1 = Instance_CrossAxisAlignment
    //     0x7efaa8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7efaac: ldr             x1, [x1, #0x238]
    // 0x7efab0: StoreField: r2->field_1b = r1
    //     0x7efab0: stur            w1, [x2, #0x1b]
    // 0x7efab4: r4 = Instance_VerticalDirection
    //     0x7efab4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7efab8: ldr             x4, [x4, #0x340]
    // 0x7efabc: StoreField: r2->field_23 = r4
    //     0x7efabc: stur            w4, [x2, #0x23]
    // 0x7efac0: r5 = Instance_Clip
    //     0x7efac0: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7efac4: ldr             x5, [x5, #0x348]
    // 0x7efac8: StoreField: r2->field_2b = r5
    //     0x7efac8: stur            w5, [x2, #0x2b]
    // 0x7efacc: StoreField: r2->field_2f = rZR
    //     0x7efacc: stur            xzr, [x2, #0x2f]
    // 0x7efad0: ldur            x1, [fp, #-0x18]
    // 0x7efad4: StoreField: r2->field_b = r1
    //     0x7efad4: stur            w1, [x2, #0xb]
    // 0x7efad8: r1 = <FlexParentData>
    //     0x7efad8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7efadc: ldr             x1, [x1, #0x340]
    // 0x7efae0: r0 = Expanded()
    //     0x7efae0: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7efae4: mov             x1, x0
    // 0x7efae8: r0 = 1
    //     0x7efae8: mov             x0, #1
    // 0x7efaec: stur            x1, [fp, #-0x18]
    // 0x7efaf0: StoreField: r1->field_13 = r0
    //     0x7efaf0: stur            x0, [x1, #0x13]
    // 0x7efaf4: r0 = Instance_FlexFit
    //     0x7efaf4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7efaf8: ldr             x0, [x0, #0x348]
    // 0x7efafc: StoreField: r1->field_1b = r0
    //     0x7efafc: stur            w0, [x1, #0x1b]
    // 0x7efb00: ldur            x0, [fp, #-0x20]
    // 0x7efb04: StoreField: r1->field_b = r0
    //     0x7efb04: stur            w0, [x1, #0xb]
    // 0x7efb08: r0 = Icon()
    //     0x7efb08: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7efb0c: mov             x3, x0
    // 0x7efb10: r0 = Instance_IconData
    //     0x7efb10: add             x0, PP, #0x12, lsl #12  ; [pp+0x12350] Obj!IconData@a0a421
    //     0x7efb14: ldr             x0, [x0, #0x350]
    // 0x7efb18: stur            x3, [fp, #-0x20]
    // 0x7efb1c: StoreField: r3->field_b = r0
    //     0x7efb1c: stur            w0, [x3, #0xb]
    // 0x7efb20: r0 = 16.000000
    //     0x7efb20: add             x0, PP, #0x12, lsl #12  ; [pp+0x12358] 16
    //     0x7efb24: ldr             x0, [x0, #0x358]
    // 0x7efb28: StoreField: r3->field_f = r0
    //     0x7efb28: stur            w0, [x3, #0xf]
    // 0x7efb2c: r0 = Instance_Color
    //     0x7efb2c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12200] Obj!Color@a258a1
    //     0x7efb30: ldr             x0, [x0, #0x200]
    // 0x7efb34: StoreField: r3->field_23 = r0
    //     0x7efb34: stur            w0, [x3, #0x23]
    // 0x7efb38: r1 = Null
    //     0x7efb38: mov             x1, NULL
    // 0x7efb3c: r2 = 10
    //     0x7efb3c: mov             x2, #0xa
    // 0x7efb40: r0 = AllocateArray()
    //     0x7efb40: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7efb44: mov             x2, x0
    // 0x7efb48: ldur            x0, [fp, #-8]
    // 0x7efb4c: stur            x2, [fp, #-0x28]
    // 0x7efb50: StoreField: r2->field_f = r0
    //     0x7efb50: stur            w0, [x2, #0xf]
    // 0x7efb54: r16 = Instance_SizedBox
    //     0x7efb54: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7efb58: ldr             x16, [x16, #0x360]
    // 0x7efb5c: StoreField: r2->field_13 = r16
    //     0x7efb5c: stur            w16, [x2, #0x13]
    // 0x7efb60: ldur            x0, [fp, #-0x18]
    // 0x7efb64: ArrayStore: r2[0] = r0  ; List_4
    //     0x7efb64: stur            w0, [x2, #0x17]
    // 0x7efb68: r16 = Instance_SizedBox
    //     0x7efb68: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7efb6c: ldr             x16, [x16, #0x368]
    // 0x7efb70: StoreField: r2->field_1b = r16
    //     0x7efb70: stur            w16, [x2, #0x1b]
    // 0x7efb74: ldur            x0, [fp, #-0x20]
    // 0x7efb78: StoreField: r2->field_1f = r0
    //     0x7efb78: stur            w0, [x2, #0x1f]
    // 0x7efb7c: r1 = <Widget>
    //     0x7efb7c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7efb80: r0 = AllocateGrowableArray()
    //     0x7efb80: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7efb84: mov             x1, x0
    // 0x7efb88: ldur            x0, [fp, #-0x28]
    // 0x7efb8c: stur            x1, [fp, #-8]
    // 0x7efb90: StoreField: r1->field_f = r0
    //     0x7efb90: stur            w0, [x1, #0xf]
    // 0x7efb94: r0 = 10
    //     0x7efb94: mov             x0, #0xa
    // 0x7efb98: StoreField: r1->field_b = r0
    //     0x7efb98: stur            w0, [x1, #0xb]
    // 0x7efb9c: r0 = Row()
    //     0x7efb9c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7efba0: mov             x1, x0
    // 0x7efba4: r0 = Instance_Axis
    //     0x7efba4: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7efba8: stur            x1, [fp, #-0x18]
    // 0x7efbac: StoreField: r1->field_f = r0
    //     0x7efbac: stur            w0, [x1, #0xf]
    // 0x7efbb0: r0 = Instance_MainAxisAlignment
    //     0x7efbb0: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7efbb4: ldr             x0, [x0, #0x230]
    // 0x7efbb8: StoreField: r1->field_13 = r0
    //     0x7efbb8: stur            w0, [x1, #0x13]
    // 0x7efbbc: r0 = Instance_MainAxisSize
    //     0x7efbbc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7efbc0: ldr             x0, [x0, #0x330]
    // 0x7efbc4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7efbc4: stur            w0, [x1, #0x17]
    // 0x7efbc8: r0 = Instance_CrossAxisAlignment
    //     0x7efbc8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7efbcc: ldr             x0, [x0, #0x338]
    // 0x7efbd0: StoreField: r1->field_1b = r0
    //     0x7efbd0: stur            w0, [x1, #0x1b]
    // 0x7efbd4: r0 = Instance_VerticalDirection
    //     0x7efbd4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7efbd8: ldr             x0, [x0, #0x340]
    // 0x7efbdc: StoreField: r1->field_23 = r0
    //     0x7efbdc: stur            w0, [x1, #0x23]
    // 0x7efbe0: r0 = Instance_Clip
    //     0x7efbe0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7efbe4: ldr             x0, [x0, #0x348]
    // 0x7efbe8: StoreField: r1->field_2b = r0
    //     0x7efbe8: stur            w0, [x1, #0x2b]
    // 0x7efbec: StoreField: r1->field_2f = rZR
    //     0x7efbec: stur            xzr, [x1, #0x2f]
    // 0x7efbf0: ldur            x0, [fp, #-8]
    // 0x7efbf4: StoreField: r1->field_b = r0
    //     0x7efbf4: stur            w0, [x1, #0xb]
    // 0x7efbf8: r0 = Container()
    //     0x7efbf8: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7efbfc: stur            x0, [fp, #-8]
    // 0x7efc00: r16 = Instance_EdgeInsets
    //     0x7efc00: add             x16, PP, #0x12, lsl #12  ; [pp+0x12370] Obj!EdgeInsets@a0bff1
    //     0x7efc04: ldr             x16, [x16, #0x370]
    // 0x7efc08: ldur            lr, [fp, #-0x38]
    // 0x7efc0c: stp             lr, x16, [SP, #8]
    // 0x7efc10: ldur            x16, [fp, #-0x18]
    // 0x7efc14: str             x16, [SP]
    // 0x7efc18: mov             x1, x0
    // 0x7efc1c: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7efc1c: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7efc20: ldr             x4, [x4, #0x1e8]
    // 0x7efc24: r0 = Container()
    //     0x7efc24: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7efc28: r0 = InkWell()
    //     0x7efc28: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7efc2c: ldur            x1, [fp, #-8]
    // 0x7efc30: StoreField: r0->field_b = r1
    //     0x7efc30: stur            w1, [x0, #0xb]
    // 0x7efc34: ldur            x1, [fp, #-0x10]
    // 0x7efc38: StoreField: r0->field_f = r1
    //     0x7efc38: stur            w1, [x0, #0xf]
    // 0x7efc3c: r1 = true
    //     0x7efc3c: add             x1, NULL, #0x20  ; true
    // 0x7efc40: StoreField: r0->field_47 = r1
    //     0x7efc40: stur            w1, [x0, #0x47]
    // 0x7efc44: r2 = Instance_BoxShape
    //     0x7efc44: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7efc48: ldr             x2, [x2, #0x1c8]
    // 0x7efc4c: StoreField: r0->field_4b = r2
    //     0x7efc4c: stur            w2, [x0, #0x4b]
    // 0x7efc50: ldur            x2, [fp, #-0x30]
    // 0x7efc54: StoreField: r0->field_53 = r2
    //     0x7efc54: stur            w2, [x0, #0x53]
    // 0x7efc58: StoreField: r0->field_73 = r1
    //     0x7efc58: stur            w1, [x0, #0x73]
    // 0x7efc5c: r2 = false
    //     0x7efc5c: add             x2, NULL, #0x30  ; false
    // 0x7efc60: StoreField: r0->field_77 = r2
    //     0x7efc60: stur            w2, [x0, #0x77]
    // 0x7efc64: StoreField: r0->field_87 = r1
    //     0x7efc64: stur            w1, [x0, #0x87]
    // 0x7efc68: StoreField: r0->field_7f = r2
    //     0x7efc68: stur            w2, [x0, #0x7f]
    // 0x7efc6c: LeaveFrame
    //     0x7efc6c: mov             SP, fp
    //     0x7efc70: ldp             fp, lr, [SP], #0x10
    // 0x7efc74: ret
    //     0x7efc74: ret             
    // 0x7efc78: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7efc78: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7efc7c: b               #0x7ef854
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7efc80, size: 0x4c
    // 0x7efc80: EnterFrame
    //     0x7efc80: stp             fp, lr, [SP, #-0x10]!
    //     0x7efc84: mov             fp, SP
    // 0x7efc88: ldr             x0, [fp, #0x10]
    // 0x7efc8c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7efc8c: ldur            w1, [x0, #0x17]
    // 0x7efc90: DecompressPointer r1
    //     0x7efc90: add             x1, x1, HEAP, lsl #32
    // 0x7efc94: CheckStackOverflow
    //     0x7efc94: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7efc98: cmp             SP, x16
    //     0x7efc9c: b.ls            #0x7efcc4
    // 0x7efca0: LoadField: r0 = r1->field_f
    //     0x7efca0: ldur            w0, [x1, #0xf]
    // 0x7efca4: DecompressPointer r0
    //     0x7efca4: add             x0, x0, HEAP, lsl #32
    // 0x7efca8: mov             x1, x0
    // 0x7efcac: r2 = "info@umrerehberim.com"
    //     0x7efcac: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d0] "info@umrerehberim.com"
    //     0x7efcb0: ldr             x2, [x2, #0x2d0]
    // 0x7efcb4: r0 = _launchEmail()
    //     0x7efcb4: bl              #0x7efccc  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_launchEmail
    // 0x7efcb8: LeaveFrame
    //     0x7efcb8: mov             SP, fp
    //     0x7efcbc: ldp             fp, lr, [SP], #0x10
    // 0x7efcc0: ret
    //     0x7efcc0: ret             
    // 0x7efcc4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7efcc4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7efcc8: b               #0x7efca0
  }
  _ _launchEmail(/* No info */) async {
    // ** addr: 0x7efccc, size: 0xe8
    // 0x7efccc: EnterFrame
    //     0x7efccc: stp             fp, lr, [SP, #-0x10]!
    //     0x7efcd0: mov             fp, SP
    // 0x7efcd4: AllocStack(0x78)
    //     0x7efcd4: sub             SP, SP, #0x78
    // 0x7efcd8: SetupParameters(TechnicalSupportScreen this /* r1 => r1, fp-0x68 */, dynamic _ /* r2 => r2, fp-0x70 */)
    //     0x7efcd8: stur            NULL, [fp, #-8]
    //     0x7efcdc: stur            x1, [fp, #-0x68]
    //     0x7efce0: stur            x2, [fp, #-0x70]
    // 0x7efce4: CheckStackOverflow
    //     0x7efce4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7efce8: cmp             SP, x16
    //     0x7efcec: b.ls            #0x7efdac
    // 0x7efcf0: InitAsync() -> Future<void?>
    //     0x7efcf0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7efcf4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7efcf8: r1 = Null
    //     0x7efcf8: mov             x1, NULL
    // 0x7efcfc: r2 = 4
    //     0x7efcfc: mov             x2, #4
    // 0x7efd00: r0 = AllocateArray()
    //     0x7efd00: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7efd04: r16 = "mailto:"
    //     0x7efd04: add             x16, PP, #0x12, lsl #12  ; [pp+0x122e0] "mailto:"
    //     0x7efd08: ldr             x16, [x16, #0x2e0]
    // 0x7efd0c: StoreField: r0->field_f = r16
    //     0x7efd0c: stur            w16, [x0, #0xf]
    // 0x7efd10: ldur            x1, [fp, #-0x70]
    // 0x7efd14: StoreField: r0->field_13 = r1
    //     0x7efd14: stur            w1, [x0, #0x13]
    // 0x7efd18: str             x0, [SP]
    // 0x7efd1c: r0 = _interpolate()
    //     0x7efd1c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7efd20: mov             x1, x0
    // 0x7efd24: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7efd24: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7efd28: r0 = parse()
    //     0x7efd28: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x7efd2c: stur            x0, [fp, #-0x68]
    // 0x7efd30: mov             x1, x0
    // 0x7efd34: r0 = launchUrl()
    //     0x7efd34: bl              #0x7343c4  ; [package:url_launcher/src/url_launcher_uri.dart] ::launchUrl
    // 0x7efd38: mov             x1, x0
    // 0x7efd3c: stur            x1, [fp, #-0x70]
    // 0x7efd40: r0 = Await()
    //     0x7efd40: bl              #0x3dd188  ; AwaitStub
    // 0x7efd44: b               #0x7efda4
    // 0x7efd48: sub             SP, fp, #0x78
    // 0x7efd4c: stur            x0, [fp, #-0x68]
    // 0x7efd50: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7efd50: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7efd54: ldr             x0, [x0, #0xcb8]
    //     0x7efd58: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7efd5c: cmp             w0, w16
    //     0x7efd60: b.ne            #0x7efd6c
    //     0x7efd64: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7efd68: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7efd6c: r1 = Null
    //     0x7efd6c: mov             x1, NULL
    // 0x7efd70: r2 = 4
    //     0x7efd70: mov             x2, #4
    // 0x7efd74: r0 = AllocateArray()
    //     0x7efd74: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7efd78: r16 = "Email açılamadı: "
    //     0x7efd78: add             x16, PP, #0x12, lsl #12  ; [pp+0x122e8] "Email açılamadı: "
    //     0x7efd7c: ldr             x16, [x16, #0x2e8]
    // 0x7efd80: StoreField: r0->field_f = r16
    //     0x7efd80: stur            w16, [x0, #0xf]
    // 0x7efd84: ldur            x1, [fp, #-0x68]
    // 0x7efd88: StoreField: r0->field_13 = r1
    //     0x7efd88: stur            w1, [x0, #0x13]
    // 0x7efd8c: str             x0, [SP]
    // 0x7efd90: r0 = _interpolate()
    //     0x7efd90: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7efd94: str             NULL, [SP]
    // 0x7efd98: mov             x1, x0
    // 0x7efd9c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7efd9c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7efda0: r0 = debugPrintThrottled()
    //     0x7efda0: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7efda4: r0 = Null
    //     0x7efda4: mov             x0, NULL
    // 0x7efda8: r0 = ReturnAsyncNotFuture()
    //     0x7efda8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7efdac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7efdac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7efdb0: b               #0x7efcf0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7efdb4, size: 0x4c
    // 0x7efdb4: EnterFrame
    //     0x7efdb4: stp             fp, lr, [SP, #-0x10]!
    //     0x7efdb8: mov             fp, SP
    // 0x7efdbc: ldr             x0, [fp, #0x10]
    // 0x7efdc0: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7efdc0: ldur            w1, [x0, #0x17]
    // 0x7efdc4: DecompressPointer r1
    //     0x7efdc4: add             x1, x1, HEAP, lsl #32
    // 0x7efdc8: CheckStackOverflow
    //     0x7efdc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7efdcc: cmp             SP, x16
    //     0x7efdd0: b.ls            #0x7efdf8
    // 0x7efdd4: LoadField: r0 = r1->field_f
    //     0x7efdd4: ldur            w0, [x1, #0xf]
    // 0x7efdd8: DecompressPointer r0
    //     0x7efdd8: add             x0, x0, HEAP, lsl #32
    // 0x7efddc: mov             x1, x0
    // 0x7efde0: r2 = "support@umrerehberim.com"
    //     0x7efde0: add             x2, PP, #0x12, lsl #12  ; [pp+0x122b8] "support@umrerehberim.com"
    //     0x7efde4: ldr             x2, [x2, #0x2b8]
    // 0x7efde8: r0 = _launchEmail()
    //     0x7efde8: bl              #0x7efccc  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_launchEmail
    // 0x7efdec: LeaveFrame
    //     0x7efdec: mov             SP, fp
    //     0x7efdf0: ldp             fp, lr, [SP], #0x10
    // 0x7efdf4: ret
    //     0x7efdf4: ret             
    // 0x7efdf8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7efdf8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7efdfc: b               #0x7efdd4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7efe00, size: 0x4c
    // 0x7efe00: EnterFrame
    //     0x7efe00: stp             fp, lr, [SP, #-0x10]!
    //     0x7efe04: mov             fp, SP
    // 0x7efe08: ldr             x0, [fp, #0x10]
    // 0x7efe0c: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7efe0c: ldur            w1, [x0, #0x17]
    // 0x7efe10: DecompressPointer r1
    //     0x7efe10: add             x1, x1, HEAP, lsl #32
    // 0x7efe14: CheckStackOverflow
    //     0x7efe14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7efe18: cmp             SP, x16
    //     0x7efe1c: b.ls            #0x7efe44
    // 0x7efe20: LoadField: r0 = r1->field_f
    //     0x7efe20: ldur            w0, [x1, #0xf]
    // 0x7efe24: DecompressPointer r0
    //     0x7efe24: add             x0, x0, HEAP, lsl #32
    // 0x7efe28: mov             x1, x0
    // 0x7efe2c: r2 = "+90 530 378 09 68"
    //     0x7efe2c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12290] "+90 530 378 09 68"
    //     0x7efe30: ldr             x2, [x2, #0x290]
    // 0x7efe34: r0 = _launchPhone()
    //     0x7efe34: bl              #0x7efe4c  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_launchPhone
    // 0x7efe38: LeaveFrame
    //     0x7efe38: mov             SP, fp
    //     0x7efe3c: ldp             fp, lr, [SP], #0x10
    // 0x7efe40: ret
    //     0x7efe40: ret             
    // 0x7efe44: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7efe44: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7efe48: b               #0x7efe20
  }
  _ _launchPhone(/* No info */) async {
    // ** addr: 0x7efe4c, size: 0x108
    // 0x7efe4c: EnterFrame
    //     0x7efe4c: stp             fp, lr, [SP, #-0x10]!
    //     0x7efe50: mov             fp, SP
    // 0x7efe54: AllocStack(0x80)
    //     0x7efe54: sub             SP, SP, #0x80
    // 0x7efe58: SetupParameters(TechnicalSupportScreen this /* r1 => r2, fp-0x70 */, dynamic _ /* r2 => r1, fp-0x78 */)
    //     0x7efe58: stur            NULL, [fp, #-8]
    //     0x7efe5c: stur            x1, [fp, #-0x70]
    //     0x7efe60: mov             x16, x2
    //     0x7efe64: mov             x2, x1
    //     0x7efe68: mov             x1, x16
    //     0x7efe6c: stur            x1, [fp, #-0x78]
    // 0x7efe70: CheckStackOverflow
    //     0x7efe70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7efe74: cmp             SP, x16
    //     0x7efe78: b.ls            #0x7eff4c
    // 0x7efe7c: InitAsync() -> Future<void?>
    //     0x7efe7c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7efe80: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7efe84: ldur            x1, [fp, #-0x78]
    // 0x7efe88: r2 = " "
    //     0x7efe88: ldr             x2, [PP, #0x3b8]  ; [pp+0x3b8] " "
    // 0x7efe8c: r3 = ""
    //     0x7efe8c: ldr             x3, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7efe90: r0 = replaceAll()
    //     0x7efe90: bl              #0x3d9940  ; [dart:core] _StringBase::replaceAll
    // 0x7efe94: r1 = Null
    //     0x7efe94: mov             x1, NULL
    // 0x7efe98: r2 = 4
    //     0x7efe98: mov             x2, #4
    // 0x7efe9c: stur            x0, [fp, #-0x70]
    // 0x7efea0: r0 = AllocateArray()
    //     0x7efea0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7efea4: r16 = "tel:"
    //     0x7efea4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12308] "tel:"
    //     0x7efea8: ldr             x16, [x16, #0x308]
    // 0x7efeac: StoreField: r0->field_f = r16
    //     0x7efeac: stur            w16, [x0, #0xf]
    // 0x7efeb0: ldur            x1, [fp, #-0x70]
    // 0x7efeb4: StoreField: r0->field_13 = r1
    //     0x7efeb4: stur            w1, [x0, #0x13]
    // 0x7efeb8: str             x0, [SP]
    // 0x7efebc: r0 = _interpolate()
    //     0x7efebc: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7efec0: mov             x1, x0
    // 0x7efec4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7efec4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7efec8: r0 = parse()
    //     0x7efec8: bl              #0x3de4e4  ; [dart:core] Uri::parse
    // 0x7efecc: stur            x0, [fp, #-0x70]
    // 0x7efed0: mov             x1, x0
    // 0x7efed4: r0 = launchUrl()
    //     0x7efed4: bl              #0x7343c4  ; [package:url_launcher/src/url_launcher_uri.dart] ::launchUrl
    // 0x7efed8: mov             x1, x0
    // 0x7efedc: stur            x1, [fp, #-0x78]
    // 0x7efee0: r0 = Await()
    //     0x7efee0: bl              #0x3dd188  ; AwaitStub
    // 0x7efee4: b               #0x7eff44
    // 0x7efee8: sub             SP, fp, #0x80
    // 0x7efeec: stur            x0, [fp, #-0x70]
    // 0x7efef0: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x7efef0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7efef4: ldr             x0, [x0, #0xcb8]
    //     0x7efef8: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7efefc: cmp             w0, w16
    //     0x7eff00: b.ne            #0x7eff0c
    //     0x7eff04: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x7eff08: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7eff0c: r1 = Null
    //     0x7eff0c: mov             x1, NULL
    // 0x7eff10: r2 = 4
    //     0x7eff10: mov             x2, #4
    // 0x7eff14: r0 = AllocateArray()
    //     0x7eff14: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eff18: r16 = "Telefon açılamadı: "
    //     0x7eff18: add             x16, PP, #0x12, lsl #12  ; [pp+0x12310] "Telefon açılamadı: "
    //     0x7eff1c: ldr             x16, [x16, #0x310]
    // 0x7eff20: StoreField: r0->field_f = r16
    //     0x7eff20: stur            w16, [x0, #0xf]
    // 0x7eff24: ldur            x1, [fp, #-0x70]
    // 0x7eff28: StoreField: r0->field_13 = r1
    //     0x7eff28: stur            w1, [x0, #0x13]
    // 0x7eff2c: str             x0, [SP]
    // 0x7eff30: r0 = _interpolate()
    //     0x7eff30: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7eff34: str             NULL, [SP]
    // 0x7eff38: mov             x1, x0
    // 0x7eff3c: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x7eff3c: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x7eff40: r0 = debugPrintThrottled()
    //     0x7eff40: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x7eff44: r0 = Null
    //     0x7eff44: mov             x0, NULL
    // 0x7eff48: r0 = ReturnAsyncNotFuture()
    //     0x7eff48: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7eff4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7eff4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7eff50: b               #0x7efe7c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7eff54, size: 0x4c
    // 0x7eff54: EnterFrame
    //     0x7eff54: stp             fp, lr, [SP, #-0x10]!
    //     0x7eff58: mov             fp, SP
    // 0x7eff5c: ldr             x0, [fp, #0x10]
    // 0x7eff60: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7eff60: ldur            w1, [x0, #0x17]
    // 0x7eff64: DecompressPointer r1
    //     0x7eff64: add             x1, x1, HEAP, lsl #32
    // 0x7eff68: CheckStackOverflow
    //     0x7eff68: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eff6c: cmp             SP, x16
    //     0x7eff70: b.ls            #0x7eff98
    // 0x7eff74: LoadField: r0 = r1->field_f
    //     0x7eff74: ldur            w0, [x1, #0xf]
    // 0x7eff78: DecompressPointer r0
    //     0x7eff78: add             x0, x0, HEAP, lsl #32
    // 0x7eff7c: mov             x1, x0
    // 0x7eff80: r2 = "+90 555 021 69 74"
    //     0x7eff80: add             x2, PP, #0x12, lsl #12  ; [pp+0x12278] "+90 555 021 69 74"
    //     0x7eff84: ldr             x2, [x2, #0x278]
    // 0x7eff88: r0 = _launchPhone()
    //     0x7eff88: bl              #0x7efe4c  ; [package:umrem_demo/features/info_screen/screens/technical_support_screen.dart] TechnicalSupportScreen::_launchPhone
    // 0x7eff8c: LeaveFrame
    //     0x7eff8c: mov             SP, fp
    //     0x7eff90: ldp             fp, lr, [SP], #0x10
    // 0x7eff94: ret
    //     0x7eff94: ret             
    // 0x7eff98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7eff98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7eff9c: b               #0x7eff74
  }
}
