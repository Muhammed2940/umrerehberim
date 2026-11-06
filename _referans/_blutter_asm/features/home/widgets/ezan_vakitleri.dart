// lib: , url: package:umrem_demo/features/home/widgets/ezan_vakitleri.dart

// class id: 1049591, size: 0x8
class :: {
}

// class id: 2902, size: 0x14, field offset: 0xc
//   const constructor, 
class PrayerTimesCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7eafb8, size: 0x620
    // 0x7eafb8: EnterFrame
    //     0x7eafb8: stp             fp, lr, [SP, #-0x10]!
    //     0x7eafbc: mov             fp, SP
    // 0x7eafc0: AllocStack(0x60)
    //     0x7eafc0: sub             SP, SP, #0x60
    // 0x7eafc4: SetupParameters(PrayerTimesCard this /* r1 => r1, fp-0x8 */)
    //     0x7eafc4: stur            x1, [fp, #-8]
    // 0x7eafc8: CheckStackOverflow
    //     0x7eafc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7eafcc: cmp             SP, x16
    //     0x7eafd0: b.ls            #0x7eb5d0
    // 0x7eafd4: r0 = Radius()
    //     0x7eafd4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eafd8: d0 = 24.000000
    //     0x7eafd8: fmov            d0, #24.00000000
    // 0x7eafdc: stur            x0, [fp, #-0x10]
    // 0x7eafe0: StoreField: r0->field_7 = d0
    //     0x7eafe0: stur            d0, [x0, #7]
    // 0x7eafe4: StoreField: r0->field_f = d0
    //     0x7eafe4: stur            d0, [x0, #0xf]
    // 0x7eafe8: r0 = BorderRadius()
    //     0x7eafe8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eafec: mov             x2, x0
    // 0x7eaff0: ldur            x0, [fp, #-0x10]
    // 0x7eaff4: stur            x2, [fp, #-0x18]
    // 0x7eaff8: StoreField: r2->field_7 = r0
    //     0x7eaff8: stur            w0, [x2, #7]
    // 0x7eaffc: StoreField: r2->field_b = r0
    //     0x7eaffc: stur            w0, [x2, #0xb]
    // 0x7eb000: StoreField: r2->field_f = r0
    //     0x7eb000: stur            w0, [x2, #0xf]
    // 0x7eb004: StoreField: r2->field_13 = r0
    //     0x7eb004: stur            w0, [x2, #0x13]
    // 0x7eb008: r16 = 0.200000
    //     0x7eb008: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x7eb00c: ldr             x16, [x16, #0x1f0]
    // 0x7eb010: str             x16, [SP]
    // 0x7eb014: r1 = Instance_Color
    //     0x7eb014: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7eb018: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eb018: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eb01c: ldr             x4, [x4, #0x198]
    // 0x7eb020: r0 = withValues()
    //     0x7eb020: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eb024: stur            x0, [fp, #-0x10]
    // 0x7eb028: r0 = BoxShadow()
    //     0x7eb028: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x7eb02c: stur            x0, [fp, #-0x20]
    // 0x7eb030: ArrayStore: r0[0] = rZR  ; List_8
    //     0x7eb030: stur            xzr, [x0, #0x17]
    // 0x7eb034: r1 = Instance_BlurStyle
    //     0x7eb034: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x7eb038: ldr             x1, [x1, #0x9b0]
    // 0x7eb03c: StoreField: r0->field_1f = r1
    //     0x7eb03c: stur            w1, [x0, #0x1f]
    // 0x7eb040: ldur            x1, [fp, #-0x10]
    // 0x7eb044: StoreField: r0->field_7 = r1
    //     0x7eb044: stur            w1, [x0, #7]
    // 0x7eb048: r1 = Instance_Offset
    //     0x7eb048: add             x1, PP, #0x14, lsl #12  ; [pp+0x14e40] Obj!Offset@a26a51
    //     0x7eb04c: ldr             x1, [x1, #0xe40]
    // 0x7eb050: StoreField: r0->field_b = r1
    //     0x7eb050: stur            w1, [x0, #0xb]
    // 0x7eb054: d0 = 15.000000
    //     0x7eb054: fmov            d0, #15.00000000
    // 0x7eb058: StoreField: r0->field_f = d0
    //     0x7eb058: stur            d0, [x0, #0xf]
    // 0x7eb05c: r1 = Null
    //     0x7eb05c: mov             x1, NULL
    // 0x7eb060: r2 = 2
    //     0x7eb060: mov             x2, #2
    // 0x7eb064: r0 = AllocateArray()
    //     0x7eb064: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eb068: mov             x2, x0
    // 0x7eb06c: ldur            x0, [fp, #-0x20]
    // 0x7eb070: stur            x2, [fp, #-0x10]
    // 0x7eb074: StoreField: r2->field_f = r0
    //     0x7eb074: stur            w0, [x2, #0xf]
    // 0x7eb078: r1 = <BoxShadow>
    //     0x7eb078: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x7eb07c: ldr             x1, [x1, #0x9c0]
    // 0x7eb080: r0 = AllocateGrowableArray()
    //     0x7eb080: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eb084: mov             x1, x0
    // 0x7eb088: ldur            x0, [fp, #-0x10]
    // 0x7eb08c: stur            x1, [fp, #-0x20]
    // 0x7eb090: StoreField: r1->field_f = r0
    //     0x7eb090: stur            w0, [x1, #0xf]
    // 0x7eb094: r0 = 2
    //     0x7eb094: mov             x0, #2
    // 0x7eb098: StoreField: r1->field_b = r0
    //     0x7eb098: stur            w0, [x1, #0xb]
    // 0x7eb09c: r0 = BoxDecoration()
    //     0x7eb09c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eb0a0: mov             x1, x0
    // 0x7eb0a4: ldur            x0, [fp, #-0x18]
    // 0x7eb0a8: stur            x1, [fp, #-0x10]
    // 0x7eb0ac: StoreField: r1->field_13 = r0
    //     0x7eb0ac: stur            w0, [x1, #0x13]
    // 0x7eb0b0: ldur            x0, [fp, #-0x20]
    // 0x7eb0b4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eb0b4: stur            w0, [x1, #0x17]
    // 0x7eb0b8: r0 = Instance_BoxShape
    //     0x7eb0b8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eb0bc: ldr             x0, [x0, #0x1c8]
    // 0x7eb0c0: StoreField: r1->field_23 = r0
    //     0x7eb0c0: stur            w0, [x1, #0x23]
    // 0x7eb0c4: r0 = Radius()
    //     0x7eb0c4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eb0c8: d0 = 24.000000
    //     0x7eb0c8: fmov            d0, #24.00000000
    // 0x7eb0cc: stur            x0, [fp, #-0x18]
    // 0x7eb0d0: StoreField: r0->field_7 = d0
    //     0x7eb0d0: stur            d0, [x0, #7]
    // 0x7eb0d4: StoreField: r0->field_f = d0
    //     0x7eb0d4: stur            d0, [x0, #0xf]
    // 0x7eb0d8: r0 = BorderRadius()
    //     0x7eb0d8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eb0dc: mov             x1, x0
    // 0x7eb0e0: ldur            x0, [fp, #-0x18]
    // 0x7eb0e4: stur            x1, [fp, #-0x20]
    // 0x7eb0e8: StoreField: r1->field_7 = r0
    //     0x7eb0e8: stur            w0, [x1, #7]
    // 0x7eb0ec: StoreField: r1->field_b = r0
    //     0x7eb0ec: stur            w0, [x1, #0xb]
    // 0x7eb0f0: StoreField: r1->field_f = r0
    //     0x7eb0f0: stur            w0, [x1, #0xf]
    // 0x7eb0f4: StoreField: r1->field_13 = r0
    //     0x7eb0f4: stur            w0, [x1, #0x13]
    // 0x7eb0f8: ldur            x0, [fp, #-8]
    // 0x7eb0fc: LoadField: r2 = r0->field_b
    //     0x7eb0fc: ldur            w2, [x0, #0xb]
    // 0x7eb100: DecompressPointer r2
    //     0x7eb100: add             x2, x2, HEAP, lsl #32
    // 0x7eb104: stur            x2, [fp, #-0x18]
    // 0x7eb108: r16 = "Mekke"
    //     0x7eb108: add             x16, PP, #0x11, lsl #12  ; [pp+0x11df0] "Mekke"
    //     0x7eb10c: ldr             x16, [x16, #0xdf0]
    // 0x7eb110: stp             x16, x2, [SP]
    // 0x7eb114: r0 = ==()
    //     0x7eb114: bl              #0x8c2848  ; [dart:core] _OneByteString::==
    // 0x7eb118: tbnz            w0, #4, #0x7eb128
    // 0x7eb11c: r3 = "assets/images/kabe.webp"
    //     0x7eb11c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11de8] "assets/images/kabe.webp"
    //     0x7eb120: ldr             x3, [x3, #0xde8]
    // 0x7eb124: b               #0x7eb130
    // 0x7eb128: r3 = "assets/images/medine.jpg"
    //     0x7eb128: add             x3, PP, #0x11, lsl #12  ; [pp+0x11df8] "assets/images/medine.jpg"
    //     0x7eb12c: ldr             x3, [x3, #0xdf8]
    // 0x7eb130: ldur            x1, [fp, #-8]
    // 0x7eb134: ldur            x0, [fp, #-0x20]
    // 0x7eb138: ldur            x2, [fp, #-0x18]
    // 0x7eb13c: stur            x3, [fp, #-0x28]
    // 0x7eb140: r0 = Image()
    //     0x7eb140: bl              #0x6bf938  ; AllocateImageStub -> Image (size=0x58)
    // 0x7eb144: stur            x0, [fp, #-0x30]
    // 0x7eb148: r16 = Instance_BoxFit
    //     0x7eb148: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ce0] Obj!BoxFit@a2a971
    //     0x7eb14c: ldr             x16, [x16, #0xce0]
    // 0x7eb150: str             x16, [SP]
    // 0x7eb154: mov             x1, x0
    // 0x7eb158: ldur            x2, [fp, #-0x28]
    // 0x7eb15c: r4 = const [0, 0x3, 0x1, 0x2, fit, 0x2, null]
    //     0x7eb15c: add             x4, PP, #0x1b, lsl #12  ; [pp+0x1bc10] List(7) [0, 0x3, 0x1, 0x2, "fit", 0x2, Null]
    //     0x7eb160: ldr             x4, [x4, #0xc10]
    // 0x7eb164: r0 = Image.asset()
    //     0x7eb164: bl              #0x6f8f2c  ; [package:flutter/src/widgets/image.dart] Image::Image.asset
    // 0x7eb168: r0 = ClipRRect()
    //     0x7eb168: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x7eb16c: mov             x2, x0
    // 0x7eb170: ldur            x0, [fp, #-0x20]
    // 0x7eb174: stur            x2, [fp, #-0x28]
    // 0x7eb178: StoreField: r2->field_f = r0
    //     0x7eb178: stur            w0, [x2, #0xf]
    // 0x7eb17c: r0 = Instance_Clip
    //     0x7eb17c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x7eb180: ldr             x0, [x0, #0xd38]
    // 0x7eb184: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eb184: stur            w0, [x2, #0x17]
    // 0x7eb188: ldur            x1, [fp, #-0x30]
    // 0x7eb18c: StoreField: r2->field_b = r1
    //     0x7eb18c: stur            w1, [x2, #0xb]
    // 0x7eb190: r1 = <StackParentData>
    //     0x7eb190: add             x1, PP, #0x11, lsl #12  ; [pp+0x116a8] TypeArguments: <StackParentData>
    //     0x7eb194: ldr             x1, [x1, #0x6a8]
    // 0x7eb198: r0 = Positioned()
    //     0x7eb198: bl              #0x40a1ec  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0x7eb19c: mov             x1, x0
    // 0x7eb1a0: r0 = 0.000000
    //     0x7eb1a0: ldr             x0, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7eb1a4: stur            x1, [fp, #-0x20]
    // 0x7eb1a8: StoreField: r1->field_13 = r0
    //     0x7eb1a8: stur            w0, [x1, #0x13]
    // 0x7eb1ac: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eb1ac: stur            w0, [x1, #0x17]
    // 0x7eb1b0: StoreField: r1->field_1b = r0
    //     0x7eb1b0: stur            w0, [x1, #0x1b]
    // 0x7eb1b4: StoreField: r1->field_1f = r0
    //     0x7eb1b4: stur            w0, [x1, #0x1f]
    // 0x7eb1b8: ldur            x2, [fp, #-0x28]
    // 0x7eb1bc: StoreField: r1->field_b = r2
    //     0x7eb1bc: stur            w2, [x1, #0xb]
    // 0x7eb1c0: r0 = Radius()
    //     0x7eb1c0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7eb1c4: d0 = 24.000000
    //     0x7eb1c4: fmov            d0, #24.00000000
    // 0x7eb1c8: stur            x0, [fp, #-0x28]
    // 0x7eb1cc: StoreField: r0->field_7 = d0
    //     0x7eb1cc: stur            d0, [x0, #7]
    // 0x7eb1d0: StoreField: r0->field_f = d0
    //     0x7eb1d0: stur            d0, [x0, #0xf]
    // 0x7eb1d4: r0 = BorderRadius()
    //     0x7eb1d4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7eb1d8: mov             x2, x0
    // 0x7eb1dc: ldur            x0, [fp, #-0x28]
    // 0x7eb1e0: stur            x2, [fp, #-0x30]
    // 0x7eb1e4: StoreField: r2->field_7 = r0
    //     0x7eb1e4: stur            w0, [x2, #7]
    // 0x7eb1e8: StoreField: r2->field_b = r0
    //     0x7eb1e8: stur            w0, [x2, #0xb]
    // 0x7eb1ec: StoreField: r2->field_f = r0
    //     0x7eb1ec: stur            w0, [x2, #0xf]
    // 0x7eb1f0: StoreField: r2->field_13 = r0
    //     0x7eb1f0: stur            w0, [x2, #0x13]
    // 0x7eb1f4: r16 = 0.150000
    //     0x7eb1f4: add             x16, PP, #0x14, lsl #12  ; [pp+0x14e38] 0.15
    //     0x7eb1f8: ldr             x16, [x16, #0xe38]
    // 0x7eb1fc: str             x16, [SP]
    // 0x7eb200: r1 = Instance_Color
    //     0x7eb200: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7eb204: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eb204: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eb208: ldr             x4, [x4, #0x198]
    // 0x7eb20c: r0 = withValues()
    //     0x7eb20c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eb210: stur            x0, [fp, #-0x28]
    // 0x7eb214: r16 = 0.600000
    //     0x7eb214: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc38] 0.6
    //     0x7eb218: ldr             x16, [x16, #0xc38]
    // 0x7eb21c: str             x16, [SP]
    // 0x7eb220: r1 = Instance_Color
    //     0x7eb220: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x7eb224: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7eb224: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7eb228: ldr             x4, [x4, #0x198]
    // 0x7eb22c: r0 = withValues()
    //     0x7eb22c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7eb230: r1 = Null
    //     0x7eb230: mov             x1, NULL
    // 0x7eb234: r2 = 4
    //     0x7eb234: mov             x2, #4
    // 0x7eb238: stur            x0, [fp, #-0x38]
    // 0x7eb23c: r0 = AllocateArray()
    //     0x7eb23c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eb240: mov             x2, x0
    // 0x7eb244: ldur            x0, [fp, #-0x28]
    // 0x7eb248: stur            x2, [fp, #-0x40]
    // 0x7eb24c: StoreField: r2->field_f = r0
    //     0x7eb24c: stur            w0, [x2, #0xf]
    // 0x7eb250: ldur            x0, [fp, #-0x38]
    // 0x7eb254: StoreField: r2->field_13 = r0
    //     0x7eb254: stur            w0, [x2, #0x13]
    // 0x7eb258: r1 = <Color>
    //     0x7eb258: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x7eb25c: ldr             x1, [x1, #0x800]
    // 0x7eb260: r0 = AllocateGrowableArray()
    //     0x7eb260: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eb264: mov             x1, x0
    // 0x7eb268: ldur            x0, [fp, #-0x40]
    // 0x7eb26c: stur            x1, [fp, #-0x28]
    // 0x7eb270: StoreField: r1->field_f = r0
    //     0x7eb270: stur            w0, [x1, #0xf]
    // 0x7eb274: r0 = 4
    //     0x7eb274: mov             x0, #4
    // 0x7eb278: StoreField: r1->field_b = r0
    //     0x7eb278: stur            w0, [x1, #0xb]
    // 0x7eb27c: r0 = LinearGradient()
    //     0x7eb27c: bl              #0x55ed60  ; AllocateLinearGradientStub -> LinearGradient (size=0x20)
    // 0x7eb280: mov             x1, x0
    // 0x7eb284: r0 = Instance_Alignment
    //     0x7eb284: add             x0, PP, #0x14, lsl #12  ; [pp+0x14cf8] Obj!Alignment@a0cf11
    //     0x7eb288: ldr             x0, [x0, #0xcf8]
    // 0x7eb28c: stur            x1, [fp, #-0x38]
    // 0x7eb290: StoreField: r1->field_13 = r0
    //     0x7eb290: stur            w0, [x1, #0x13]
    // 0x7eb294: r0 = Instance_Alignment
    //     0x7eb294: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d00] Obj!Alignment@a0ced1
    //     0x7eb298: ldr             x0, [x0, #0xd00]
    // 0x7eb29c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eb29c: stur            w0, [x1, #0x17]
    // 0x7eb2a0: r0 = Instance_TileMode
    //     0x7eb2a0: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d08] Obj!TileMode@a2d831
    //     0x7eb2a4: ldr             x0, [x0, #0xd08]
    // 0x7eb2a8: StoreField: r1->field_1b = r0
    //     0x7eb2a8: stur            w0, [x1, #0x1b]
    // 0x7eb2ac: ldur            x0, [fp, #-0x28]
    // 0x7eb2b0: StoreField: r1->field_7 = r0
    //     0x7eb2b0: stur            w0, [x1, #7]
    // 0x7eb2b4: r0 = BoxDecoration()
    //     0x7eb2b4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7eb2b8: mov             x1, x0
    // 0x7eb2bc: ldur            x0, [fp, #-0x38]
    // 0x7eb2c0: stur            x1, [fp, #-0x28]
    // 0x7eb2c4: StoreField: r1->field_1b = r0
    //     0x7eb2c4: stur            w0, [x1, #0x1b]
    // 0x7eb2c8: r0 = Instance_BoxShape
    //     0x7eb2c8: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7eb2cc: ldr             x0, [x0, #0x1c8]
    // 0x7eb2d0: StoreField: r1->field_23 = r0
    //     0x7eb2d0: stur            w0, [x1, #0x23]
    // 0x7eb2d4: r0 = Container()
    //     0x7eb2d4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eb2d8: stur            x0, [fp, #-0x38]
    // 0x7eb2dc: ldur            x16, [fp, #-0x28]
    // 0x7eb2e0: str             x16, [SP]
    // 0x7eb2e4: mov             x1, x0
    // 0x7eb2e8: r4 = const [0, 0x2, 0x1, 0x1, decoration, 0x1, null]
    //     0x7eb2e8: add             x4, PP, #0x1b, lsl #12  ; [pp+0x1bc40] List(7) [0, 0x2, 0x1, 0x1, "decoration", 0x1, Null]
    //     0x7eb2ec: ldr             x4, [x4, #0xc40]
    // 0x7eb2f0: r0 = Container()
    //     0x7eb2f0: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eb2f4: r0 = ClipRRect()
    //     0x7eb2f4: bl              #0x67cabc  ; AllocateClipRRectStub -> ClipRRect (size=0x1c)
    // 0x7eb2f8: mov             x2, x0
    // 0x7eb2fc: ldur            x0, [fp, #-0x30]
    // 0x7eb300: stur            x2, [fp, #-0x28]
    // 0x7eb304: StoreField: r2->field_f = r0
    //     0x7eb304: stur            w0, [x2, #0xf]
    // 0x7eb308: r0 = Instance_Clip
    //     0x7eb308: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x7eb30c: ldr             x0, [x0, #0xd38]
    // 0x7eb310: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eb310: stur            w0, [x2, #0x17]
    // 0x7eb314: ldur            x0, [fp, #-0x38]
    // 0x7eb318: StoreField: r2->field_b = r0
    //     0x7eb318: stur            w0, [x2, #0xb]
    // 0x7eb31c: r1 = <StackParentData>
    //     0x7eb31c: add             x1, PP, #0x11, lsl #12  ; [pp+0x116a8] TypeArguments: <StackParentData>
    //     0x7eb320: ldr             x1, [x1, #0x6a8]
    // 0x7eb324: r0 = Positioned()
    //     0x7eb324: bl              #0x40a1ec  ; AllocatePositionedStub -> Positioned (size=0x2c)
    // 0x7eb328: mov             x1, x0
    // 0x7eb32c: r0 = 0.000000
    //     0x7eb32c: ldr             x0, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7eb330: stur            x1, [fp, #-0x30]
    // 0x7eb334: StoreField: r1->field_13 = r0
    //     0x7eb334: stur            w0, [x1, #0x13]
    // 0x7eb338: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eb338: stur            w0, [x1, #0x17]
    // 0x7eb33c: StoreField: r1->field_1b = r0
    //     0x7eb33c: stur            w0, [x1, #0x1b]
    // 0x7eb340: StoreField: r1->field_1f = r0
    //     0x7eb340: stur            w0, [x1, #0x1f]
    // 0x7eb344: ldur            x0, [fp, #-0x28]
    // 0x7eb348: StoreField: r1->field_b = r0
    //     0x7eb348: stur            w0, [x1, #0xb]
    // 0x7eb34c: r0 = Text()
    //     0x7eb34c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eb350: mov             x2, x0
    // 0x7eb354: ldur            x0, [fp, #-0x18]
    // 0x7eb358: stur            x2, [fp, #-0x28]
    // 0x7eb35c: StoreField: r2->field_b = r0
    //     0x7eb35c: stur            w0, [x2, #0xb]
    // 0x7eb360: r0 = Instance_TextStyle
    //     0x7eb360: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a390] Obj!TextStyle@a17ad1
    //     0x7eb364: ldr             x0, [x0, #0x390]
    // 0x7eb368: StoreField: r2->field_13 = r0
    //     0x7eb368: stur            w0, [x2, #0x13]
    // 0x7eb36c: ldur            x0, [fp, #-8]
    // 0x7eb370: LoadField: r3 = r0->field_f
    //     0x7eb370: ldur            w3, [x0, #0xf]
    // 0x7eb374: DecompressPointer r3
    //     0x7eb374: add             x3, x3, HEAP, lsl #32
    // 0x7eb378: stur            x3, [fp, #-0x18]
    // 0x7eb37c: r1 = <MapEntry<String, String>, String, String>
    //     0x7eb37c: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bc48] TypeArguments: <MapEntry<String, String>, String, String>
    //     0x7eb380: ldr             x1, [x1, #0xc48]
    // 0x7eb384: r0 = _CompactEntriesIterable()
    //     0x7eb384: bl              #0x5a3fc0  ; Allocate_CompactEntriesIterableStub -> _CompactEntriesIterable<C1X0, C1X1> (size=0x10)
    // 0x7eb388: mov             x3, x0
    // 0x7eb38c: ldur            x0, [fp, #-0x18]
    // 0x7eb390: stur            x3, [fp, #-8]
    // 0x7eb394: StoreField: r3->field_b = r0
    //     0x7eb394: stur            w0, [x3, #0xb]
    // 0x7eb398: r1 = Function '<anonymous closure>':.
    //     0x7eb398: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bc50] AnonymousClosure: (0x7eb5d8), in [package:umrem_demo/features/home/widgets/ezan_vakitleri.dart] PrayerTimesCard::build (0x7eafb8)
    //     0x7eb39c: ldr             x1, [x1, #0xc50]
    // 0x7eb3a0: r2 = Null
    //     0x7eb3a0: mov             x2, NULL
    // 0x7eb3a4: r0 = AllocateClosure()
    //     0x7eb3a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7eb3a8: r16 = <Expanded>
    //     0x7eb3a8: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc58] TypeArguments: <Expanded>
    //     0x7eb3ac: ldr             x16, [x16, #0xc58]
    // 0x7eb3b0: ldur            lr, [fp, #-8]
    // 0x7eb3b4: stp             lr, x16, [SP, #8]
    // 0x7eb3b8: str             x0, [SP]
    // 0x7eb3bc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7eb3bc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7eb3c0: r0 = map()
    //     0x7eb3c0: bl              #0x4d4140  ; [dart:core] Iterable::map
    // 0x7eb3c4: LoadField: r1 = r0->field_7
    //     0x7eb3c4: ldur            w1, [x0, #7]
    // 0x7eb3c8: DecompressPointer r1
    //     0x7eb3c8: add             x1, x1, HEAP, lsl #32
    // 0x7eb3cc: mov             x2, x0
    // 0x7eb3d0: r0 = _GrowableList.of()
    //     0x7eb3d0: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x7eb3d4: stur            x0, [fp, #-8]
    // 0x7eb3d8: r0 = Row()
    //     0x7eb3d8: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7eb3dc: mov             x3, x0
    // 0x7eb3e0: r0 = Instance_Axis
    //     0x7eb3e0: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7eb3e4: stur            x3, [fp, #-0x18]
    // 0x7eb3e8: StoreField: r3->field_f = r0
    //     0x7eb3e8: stur            w0, [x3, #0xf]
    // 0x7eb3ec: r0 = Instance_MainAxisAlignment
    //     0x7eb3ec: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x7eb3f0: ldr             x0, [x0, #0xd20]
    // 0x7eb3f4: StoreField: r3->field_13 = r0
    //     0x7eb3f4: stur            w0, [x3, #0x13]
    // 0x7eb3f8: r0 = Instance_MainAxisSize
    //     0x7eb3f8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7eb3fc: ldr             x0, [x0, #0x330]
    // 0x7eb400: ArrayStore: r3[0] = r0  ; List_4
    //     0x7eb400: stur            w0, [x3, #0x17]
    // 0x7eb404: r1 = Instance_CrossAxisAlignment
    //     0x7eb404: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7eb408: ldr             x1, [x1, #0x338]
    // 0x7eb40c: StoreField: r3->field_1b = r1
    //     0x7eb40c: stur            w1, [x3, #0x1b]
    // 0x7eb410: r4 = Instance_VerticalDirection
    //     0x7eb410: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7eb414: ldr             x4, [x4, #0x340]
    // 0x7eb418: StoreField: r3->field_23 = r4
    //     0x7eb418: stur            w4, [x3, #0x23]
    // 0x7eb41c: r5 = Instance_Clip
    //     0x7eb41c: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7eb420: ldr             x5, [x5, #0x348]
    // 0x7eb424: StoreField: r3->field_2b = r5
    //     0x7eb424: stur            w5, [x3, #0x2b]
    // 0x7eb428: StoreField: r3->field_2f = rZR
    //     0x7eb428: stur            xzr, [x3, #0x2f]
    // 0x7eb42c: ldur            x1, [fp, #-8]
    // 0x7eb430: StoreField: r3->field_b = r1
    //     0x7eb430: stur            w1, [x3, #0xb]
    // 0x7eb434: r1 = Null
    //     0x7eb434: mov             x1, NULL
    // 0x7eb438: r2 = 8
    //     0x7eb438: mov             x2, #8
    // 0x7eb43c: r0 = AllocateArray()
    //     0x7eb43c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eb440: mov             x2, x0
    // 0x7eb444: ldur            x0, [fp, #-0x28]
    // 0x7eb448: stur            x2, [fp, #-8]
    // 0x7eb44c: StoreField: r2->field_f = r0
    //     0x7eb44c: stur            w0, [x2, #0xf]
    // 0x7eb450: r16 = Instance_SizedBox
    //     0x7eb450: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7eb454: ldr             x16, [x16, #0x310]
    // 0x7eb458: StoreField: r2->field_13 = r16
    //     0x7eb458: stur            w16, [x2, #0x13]
    // 0x7eb45c: r16 = Instance_Spacer
    //     0x7eb45c: add             x16, PP, #0x13, lsl #12  ; [pp+0x13af8] Obj!Spacer@a1de91
    //     0x7eb460: ldr             x16, [x16, #0xaf8]
    // 0x7eb464: ArrayStore: r2[0] = r16  ; List_4
    //     0x7eb464: stur            w16, [x2, #0x17]
    // 0x7eb468: ldur            x0, [fp, #-0x18]
    // 0x7eb46c: StoreField: r2->field_1b = r0
    //     0x7eb46c: stur            w0, [x2, #0x1b]
    // 0x7eb470: r1 = <Widget>
    //     0x7eb470: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7eb474: r0 = AllocateGrowableArray()
    //     0x7eb474: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eb478: mov             x1, x0
    // 0x7eb47c: ldur            x0, [fp, #-8]
    // 0x7eb480: stur            x1, [fp, #-0x18]
    // 0x7eb484: StoreField: r1->field_f = r0
    //     0x7eb484: stur            w0, [x1, #0xf]
    // 0x7eb488: r0 = 8
    //     0x7eb488: mov             x0, #8
    // 0x7eb48c: StoreField: r1->field_b = r0
    //     0x7eb48c: stur            w0, [x1, #0xb]
    // 0x7eb490: r0 = Column()
    //     0x7eb490: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7eb494: mov             x1, x0
    // 0x7eb498: r0 = Instance_Axis
    //     0x7eb498: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7eb49c: stur            x1, [fp, #-8]
    // 0x7eb4a0: StoreField: r1->field_f = r0
    //     0x7eb4a0: stur            w0, [x1, #0xf]
    // 0x7eb4a4: r0 = Instance_MainAxisAlignment
    //     0x7eb4a4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7eb4a8: ldr             x0, [x0, #0x230]
    // 0x7eb4ac: StoreField: r1->field_13 = r0
    //     0x7eb4ac: stur            w0, [x1, #0x13]
    // 0x7eb4b0: r0 = Instance_MainAxisSize
    //     0x7eb4b0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7eb4b4: ldr             x0, [x0, #0x330]
    // 0x7eb4b8: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eb4b8: stur            w0, [x1, #0x17]
    // 0x7eb4bc: r0 = Instance_CrossAxisAlignment
    //     0x7eb4bc: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7eb4c0: ldr             x0, [x0, #0x238]
    // 0x7eb4c4: StoreField: r1->field_1b = r0
    //     0x7eb4c4: stur            w0, [x1, #0x1b]
    // 0x7eb4c8: r0 = Instance_VerticalDirection
    //     0x7eb4c8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7eb4cc: ldr             x0, [x0, #0x340]
    // 0x7eb4d0: StoreField: r1->field_23 = r0
    //     0x7eb4d0: stur            w0, [x1, #0x23]
    // 0x7eb4d4: r0 = Instance_Clip
    //     0x7eb4d4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7eb4d8: ldr             x0, [x0, #0x348]
    // 0x7eb4dc: StoreField: r1->field_2b = r0
    //     0x7eb4dc: stur            w0, [x1, #0x2b]
    // 0x7eb4e0: StoreField: r1->field_2f = rZR
    //     0x7eb4e0: stur            xzr, [x1, #0x2f]
    // 0x7eb4e4: ldur            x0, [fp, #-0x18]
    // 0x7eb4e8: StoreField: r1->field_b = r0
    //     0x7eb4e8: stur            w0, [x1, #0xb]
    // 0x7eb4ec: r0 = Padding()
    //     0x7eb4ec: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7eb4f0: mov             x3, x0
    // 0x7eb4f4: r0 = Instance_EdgeInsets
    //     0x7eb4f4: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc60] Obj!EdgeInsets@a0ca41
    //     0x7eb4f8: ldr             x0, [x0, #0xc60]
    // 0x7eb4fc: stur            x3, [fp, #-0x18]
    // 0x7eb500: StoreField: r3->field_f = r0
    //     0x7eb500: stur            w0, [x3, #0xf]
    // 0x7eb504: ldur            x0, [fp, #-8]
    // 0x7eb508: StoreField: r3->field_b = r0
    //     0x7eb508: stur            w0, [x3, #0xb]
    // 0x7eb50c: r1 = Null
    //     0x7eb50c: mov             x1, NULL
    // 0x7eb510: r2 = 6
    //     0x7eb510: mov             x2, #6
    // 0x7eb514: r0 = AllocateArray()
    //     0x7eb514: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eb518: mov             x2, x0
    // 0x7eb51c: ldur            x0, [fp, #-0x20]
    // 0x7eb520: stur            x2, [fp, #-8]
    // 0x7eb524: StoreField: r2->field_f = r0
    //     0x7eb524: stur            w0, [x2, #0xf]
    // 0x7eb528: ldur            x0, [fp, #-0x30]
    // 0x7eb52c: StoreField: r2->field_13 = r0
    //     0x7eb52c: stur            w0, [x2, #0x13]
    // 0x7eb530: ldur            x0, [fp, #-0x18]
    // 0x7eb534: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eb534: stur            w0, [x2, #0x17]
    // 0x7eb538: r1 = <Widget>
    //     0x7eb538: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7eb53c: r0 = AllocateGrowableArray()
    //     0x7eb53c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eb540: mov             x1, x0
    // 0x7eb544: ldur            x0, [fp, #-8]
    // 0x7eb548: stur            x1, [fp, #-0x18]
    // 0x7eb54c: StoreField: r1->field_f = r0
    //     0x7eb54c: stur            w0, [x1, #0xf]
    // 0x7eb550: r0 = 6
    //     0x7eb550: mov             x0, #6
    // 0x7eb554: StoreField: r1->field_b = r0
    //     0x7eb554: stur            w0, [x1, #0xb]
    // 0x7eb558: r0 = Stack()
    //     0x7eb558: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x7eb55c: mov             x1, x0
    // 0x7eb560: r0 = Instance_AlignmentDirectional
    //     0x7eb560: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x7eb564: ldr             x0, [x0, #0xd28]
    // 0x7eb568: stur            x1, [fp, #-8]
    // 0x7eb56c: StoreField: r1->field_f = r0
    //     0x7eb56c: stur            w0, [x1, #0xf]
    // 0x7eb570: r0 = Instance_StackFit
    //     0x7eb570: add             x0, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x7eb574: ldr             x0, [x0, #0x548]
    // 0x7eb578: ArrayStore: r1[0] = r0  ; List_4
    //     0x7eb578: stur            w0, [x1, #0x17]
    // 0x7eb57c: r0 = Instance_Clip
    //     0x7eb57c: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7eb580: ldr             x0, [x0, #0x2d8]
    // 0x7eb584: StoreField: r1->field_1b = r0
    //     0x7eb584: stur            w0, [x1, #0x1b]
    // 0x7eb588: ldur            x0, [fp, #-0x18]
    // 0x7eb58c: StoreField: r1->field_b = r0
    //     0x7eb58c: stur            w0, [x1, #0xb]
    // 0x7eb590: r0 = Container()
    //     0x7eb590: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7eb594: stur            x0, [fp, #-0x18]
    // 0x7eb598: r16 = Instance_EdgeInsets
    //     0x7eb598: ldr             x16, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7eb59c: r30 = Instance_EdgeInsets
    //     0x7eb59c: ldr             lr, [PP, #0x5140]  ; [pp+0x5140] Obj!EdgeInsets@a0bcc1
    // 0x7eb5a0: stp             lr, x16, [SP, #0x10]
    // 0x7eb5a4: ldur            x16, [fp, #-0x10]
    // 0x7eb5a8: ldur            lr, [fp, #-8]
    // 0x7eb5ac: stp             lr, x16, [SP]
    // 0x7eb5b0: mov             x1, x0
    // 0x7eb5b4: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, margin, 0x2, padding, 0x1, null]
    //     0x7eb5b4: add             x4, PP, #0x1b, lsl #12  ; [pp+0x1bc68] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "margin", 0x2, "padding", 0x1, Null]
    //     0x7eb5b8: ldr             x4, [x4, #0xc68]
    // 0x7eb5bc: r0 = Container()
    //     0x7eb5bc: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7eb5c0: ldur            x0, [fp, #-0x18]
    // 0x7eb5c4: LeaveFrame
    //     0x7eb5c4: mov             SP, fp
    //     0x7eb5c8: ldp             fp, lr, [SP], #0x10
    // 0x7eb5cc: ret
    //     0x7eb5cc: ret             
    // 0x7eb5d0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7eb5d0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7eb5d4: b               #0x7eafd4
  }
  [closure] Expanded <anonymous closure>(dynamic, MapEntry<String, String>) {
    // ** addr: 0x7eb5d8, size: 0x14c
    // 0x7eb5d8: EnterFrame
    //     0x7eb5d8: stp             fp, lr, [SP, #-0x10]!
    //     0x7eb5dc: mov             fp, SP
    // 0x7eb5e0: AllocStack(0x18)
    //     0x7eb5e0: sub             SP, SP, #0x18
    // 0x7eb5e4: ldr             x0, [fp, #0x10]
    // 0x7eb5e8: LoadField: r1 = r0->field_b
    //     0x7eb5e8: ldur            w1, [x0, #0xb]
    // 0x7eb5ec: DecompressPointer r1
    //     0x7eb5ec: add             x1, x1, HEAP, lsl #32
    // 0x7eb5f0: stur            x1, [fp, #-8]
    // 0x7eb5f4: r0 = Text()
    //     0x7eb5f4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eb5f8: mov             x1, x0
    // 0x7eb5fc: ldur            x0, [fp, #-8]
    // 0x7eb600: stur            x1, [fp, #-0x10]
    // 0x7eb604: StoreField: r1->field_b = r0
    //     0x7eb604: stur            w0, [x1, #0xb]
    // 0x7eb608: r0 = Instance_TextStyle
    //     0x7eb608: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc70] Obj!TextStyle@a19041
    //     0x7eb60c: ldr             x0, [x0, #0xc70]
    // 0x7eb610: StoreField: r1->field_13 = r0
    //     0x7eb610: stur            w0, [x1, #0x13]
    // 0x7eb614: ldr             x0, [fp, #0x10]
    // 0x7eb618: LoadField: r2 = r0->field_f
    //     0x7eb618: ldur            w2, [x0, #0xf]
    // 0x7eb61c: DecompressPointer r2
    //     0x7eb61c: add             x2, x2, HEAP, lsl #32
    // 0x7eb620: stur            x2, [fp, #-8]
    // 0x7eb624: r0 = Text()
    //     0x7eb624: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7eb628: mov             x3, x0
    // 0x7eb62c: ldur            x0, [fp, #-8]
    // 0x7eb630: stur            x3, [fp, #-0x18]
    // 0x7eb634: StoreField: r3->field_b = r0
    //     0x7eb634: stur            w0, [x3, #0xb]
    // 0x7eb638: r0 = Instance_TextStyle
    //     0x7eb638: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bc78] Obj!TextStyle@a18fd1
    //     0x7eb63c: ldr             x0, [x0, #0xc78]
    // 0x7eb640: StoreField: r3->field_13 = r0
    //     0x7eb640: stur            w0, [x3, #0x13]
    // 0x7eb644: r1 = Null
    //     0x7eb644: mov             x1, NULL
    // 0x7eb648: r2 = 6
    //     0x7eb648: mov             x2, #6
    // 0x7eb64c: r0 = AllocateArray()
    //     0x7eb64c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7eb650: mov             x2, x0
    // 0x7eb654: ldur            x0, [fp, #-0x10]
    // 0x7eb658: stur            x2, [fp, #-8]
    // 0x7eb65c: StoreField: r2->field_f = r0
    //     0x7eb65c: stur            w0, [x2, #0xf]
    // 0x7eb660: r16 = Instance_SizedBox
    //     0x7eb660: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bc80] Obj!SizedBox@a1fd51
    //     0x7eb664: ldr             x16, [x16, #0xc80]
    // 0x7eb668: StoreField: r2->field_13 = r16
    //     0x7eb668: stur            w16, [x2, #0x13]
    // 0x7eb66c: ldur            x0, [fp, #-0x18]
    // 0x7eb670: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eb670: stur            w0, [x2, #0x17]
    // 0x7eb674: r1 = <Widget>
    //     0x7eb674: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7eb678: r0 = AllocateGrowableArray()
    //     0x7eb678: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7eb67c: mov             x1, x0
    // 0x7eb680: ldur            x0, [fp, #-8]
    // 0x7eb684: stur            x1, [fp, #-0x10]
    // 0x7eb688: StoreField: r1->field_f = r0
    //     0x7eb688: stur            w0, [x1, #0xf]
    // 0x7eb68c: r0 = 6
    //     0x7eb68c: mov             x0, #6
    // 0x7eb690: StoreField: r1->field_b = r0
    //     0x7eb690: stur            w0, [x1, #0xb]
    // 0x7eb694: r0 = Column()
    //     0x7eb694: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7eb698: mov             x2, x0
    // 0x7eb69c: r0 = Instance_Axis
    //     0x7eb69c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7eb6a0: stur            x2, [fp, #-8]
    // 0x7eb6a4: StoreField: r2->field_f = r0
    //     0x7eb6a4: stur            w0, [x2, #0xf]
    // 0x7eb6a8: r0 = Instance_MainAxisAlignment
    //     0x7eb6a8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7eb6ac: ldr             x0, [x0, #0x230]
    // 0x7eb6b0: StoreField: r2->field_13 = r0
    //     0x7eb6b0: stur            w0, [x2, #0x13]
    // 0x7eb6b4: r0 = Instance_MainAxisSize
    //     0x7eb6b4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7eb6b8: ldr             x0, [x0, #0x330]
    // 0x7eb6bc: ArrayStore: r2[0] = r0  ; List_4
    //     0x7eb6bc: stur            w0, [x2, #0x17]
    // 0x7eb6c0: r0 = Instance_CrossAxisAlignment
    //     0x7eb6c0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7eb6c4: ldr             x0, [x0, #0x338]
    // 0x7eb6c8: StoreField: r2->field_1b = r0
    //     0x7eb6c8: stur            w0, [x2, #0x1b]
    // 0x7eb6cc: r0 = Instance_VerticalDirection
    //     0x7eb6cc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7eb6d0: ldr             x0, [x0, #0x340]
    // 0x7eb6d4: StoreField: r2->field_23 = r0
    //     0x7eb6d4: stur            w0, [x2, #0x23]
    // 0x7eb6d8: r0 = Instance_Clip
    //     0x7eb6d8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7eb6dc: ldr             x0, [x0, #0x348]
    // 0x7eb6e0: StoreField: r2->field_2b = r0
    //     0x7eb6e0: stur            w0, [x2, #0x2b]
    // 0x7eb6e4: StoreField: r2->field_2f = rZR
    //     0x7eb6e4: stur            xzr, [x2, #0x2f]
    // 0x7eb6e8: ldur            x0, [fp, #-0x10]
    // 0x7eb6ec: StoreField: r2->field_b = r0
    //     0x7eb6ec: stur            w0, [x2, #0xb]
    // 0x7eb6f0: r1 = <FlexParentData>
    //     0x7eb6f0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7eb6f4: ldr             x1, [x1, #0x340]
    // 0x7eb6f8: r0 = Expanded()
    //     0x7eb6f8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7eb6fc: r1 = 1
    //     0x7eb6fc: mov             x1, #1
    // 0x7eb700: StoreField: r0->field_13 = r1
    //     0x7eb700: stur            x1, [x0, #0x13]
    // 0x7eb704: r1 = Instance_FlexFit
    //     0x7eb704: add             x1, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7eb708: ldr             x1, [x1, #0x348]
    // 0x7eb70c: StoreField: r0->field_1b = r1
    //     0x7eb70c: stur            w1, [x0, #0x1b]
    // 0x7eb710: ldur            x1, [fp, #-8]
    // 0x7eb714: StoreField: r0->field_b = r1
    //     0x7eb714: stur            w1, [x0, #0xb]
    // 0x7eb718: LeaveFrame
    //     0x7eb718: mov             SP, fp
    //     0x7eb71c: ldp             fp, lr, [SP], #0x10
    // 0x7eb720: ret
    //     0x7eb720: ret             
  }
}
