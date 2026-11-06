// lib: , url: package:umrem_demo/core/theme/app_theme.dart

// class id: 1049504, size: 0x8
class :: {
}

// class id: 209, size: 0x8, field offset: 0x8
abstract class AppTheme extends Object {

  ThemeData light() {
    // ** addr: 0x7f11fc, size: 0x6f8
    // 0x7f11fc: EnterFrame
    //     0x7f11fc: stp             fp, lr, [SP, #-0x10]!
    //     0x7f1200: mov             fp, SP
    // 0x7f1204: AllocStack(0xe8)
    //     0x7f1204: sub             SP, SP, #0xe8
    // 0x7f1208: r0 = Instance_Color
    //     0x7f1208: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f120c: ldr             x0, [x0, #0xb78]
    // 0x7f1210: CheckStackOverflow
    //     0x7f1210: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f1214: cmp             SP, x16
    //     0x7f1218: b.ls            #0x7f18ec
    // 0x7f121c: mov             x3, x0
    // 0x7f1220: r1 = Null
    //     0x7f1220: mov             x1, NULL
    // 0x7f1224: r2 = Instance_Brightness
    //     0x7f1224: ldr             x2, [PP, #0x56f8]  ; [pp+0x56f8] Obj!Brightness@a2cbd1
    // 0x7f1228: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x7f1228: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x7f122c: r0 = ColorScheme.fromSeed()
    //     0x7f122c: bl              #0x415470  ; [package:flutter/src/material/color_scheme.dart] ColorScheme::ColorScheme.fromSeed
    // 0x7f1230: stur            x0, [fp, #-8]
    // 0x7f1234: r0 = InitLateStaticField(0x1020) // [package:umrem_demo/core/theme/app_text_styles.dart] AppTextStyles::appBarTitle
    //     0x7f1234: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f1238: ldr             x0, [x0, #0x2040]
    //     0x7f123c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f1240: cmp             w0, w16
    //     0x7f1244: b.ne            #0x7f1254
    //     0x7f1248: add             x2, PP, #0x11, lsl #12  ; [pp+0x11b80] Field <AppTextStyles.appBarTitle>: static late (offset: 0x1020)
    //     0x7f124c: ldr             x2, [x2, #0xb80]
    //     0x7f1250: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7f1254: r0 = AppBarTheme()
    //     0x7f1254: bl              #0x7f1900  ; AllocateAppBarThemeStub -> AppBarTheme (size=0x58)
    // 0x7f1258: mov             x2, x0
    // 0x7f125c: r0 = Instance_Color
    //     0x7f125c: add             x0, PP, #0xc, lsl #12  ; [pp+0xc860] Obj!Color@a22de1
    //     0x7f1260: ldr             x0, [x0, #0x860]
    // 0x7f1264: stur            x2, [fp, #-0x10]
    // 0x7f1268: StoreField: r2->field_13 = r0
    //     0x7f1268: stur            w0, [x2, #0x13]
    // 0x7f126c: r0 = Instance_Color
    //     0x7f126c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b88] Obj!Color@a251e1
    //     0x7f1270: ldr             x0, [x0, #0xb88]
    // 0x7f1274: ArrayStore: r2[0] = r0  ; List_4
    //     0x7f1274: stur            w0, [x2, #0x17]
    // 0x7f1278: r0 = 0.000000
    //     0x7f1278: ldr             x0, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7f127c: StoreField: r2->field_1b = r0
    //     0x7f127c: stur            w0, [x2, #0x1b]
    // 0x7f1280: r0 = false
    //     0x7f1280: add             x0, NULL, #0x30  ; false
    // 0x7f1284: StoreField: r2->field_37 = r0
    //     0x7f1284: stur            w0, [x2, #0x37]
    // 0x7f1288: r1 = Instance_TextStyle
    //     0x7f1288: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b90] Obj!TextStyle@a192e1
    //     0x7f128c: ldr             x1, [x1, #0xb90]
    // 0x7f1290: StoreField: r2->field_4b = r1
    //     0x7f1290: stur            w1, [x2, #0x4b]
    // 0x7f1294: r1 = Instance_SizedBox
    //     0x7f1294: add             x1, PP, #0x11, lsl #12  ; [pp+0x11b98] Obj!SizedBox@a1fc51
    //     0x7f1298: ldr             x1, [x1, #0xb98]
    // 0x7f129c: StoreField: r2->field_b = r1
    //     0x7f129c: stur            w1, [x2, #0xb]
    // 0x7f12a0: mov             x1, x2
    // 0x7f12a4: r0 = _NativeScene._()
    //     0x7f12a4: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x7f12a8: r0 = Radius()
    //     0x7f12a8: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f12ac: d0 = 16.000000
    //     0x7f12ac: fmov            d0, #16.00000000
    // 0x7f12b0: stur            x0, [fp, #-0x18]
    // 0x7f12b4: StoreField: r0->field_7 = d0
    //     0x7f12b4: stur            d0, [x0, #7]
    // 0x7f12b8: StoreField: r0->field_f = d0
    //     0x7f12b8: stur            d0, [x0, #0xf]
    // 0x7f12bc: r0 = BorderRadius()
    //     0x7f12bc: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f12c0: mov             x1, x0
    // 0x7f12c4: ldur            x0, [fp, #-0x18]
    // 0x7f12c8: stur            x1, [fp, #-0x20]
    // 0x7f12cc: StoreField: r1->field_7 = r0
    //     0x7f12cc: stur            w0, [x1, #7]
    // 0x7f12d0: StoreField: r1->field_b = r0
    //     0x7f12d0: stur            w0, [x1, #0xb]
    // 0x7f12d4: StoreField: r1->field_f = r0
    //     0x7f12d4: stur            w0, [x1, #0xf]
    // 0x7f12d8: StoreField: r1->field_13 = r0
    //     0x7f12d8: stur            w0, [x1, #0x13]
    // 0x7f12dc: r0 = RoundedRectangleBorder()
    //     0x7f12dc: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7f12e0: mov             x1, x0
    // 0x7f12e4: ldur            x0, [fp, #-0x20]
    // 0x7f12e8: stur            x1, [fp, #-0x18]
    // 0x7f12ec: StoreField: r1->field_b = r0
    //     0x7f12ec: stur            w0, [x1, #0xb]
    // 0x7f12f0: r0 = Instance_BorderSide
    //     0x7f12f0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7f12f4: ldr             x0, [x0, #0xcb8]
    // 0x7f12f8: StoreField: r1->field_7 = r0
    //     0x7f12f8: stur            w0, [x1, #7]
    // 0x7f12fc: r0 = CardThemeData()
    //     0x7f12fc: bl              #0x56cb74  ; AllocateCardThemeDataStub -> CardThemeData (size=0x24)
    // 0x7f1300: mov             x1, x0
    // 0x7f1304: r0 = 2.000000
    //     0x7f1304: add             x0, PP, #0x11, lsl #12  ; [pp+0x11ba0] 2
    //     0x7f1308: ldr             x0, [x0, #0xba0]
    // 0x7f130c: stur            x1, [fp, #-0x20]
    // 0x7f1310: ArrayStore: r1[0] = r0  ; List_4
    //     0x7f1310: stur            w0, [x1, #0x17]
    // 0x7f1314: ldur            x0, [fp, #-0x18]
    // 0x7f1318: StoreField: r1->field_1f = r0
    //     0x7f1318: stur            w0, [x1, #0x1f]
    // 0x7f131c: r0 = Radius()
    //     0x7f131c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f1320: d0 = 12.000000
    //     0x7f1320: fmov            d0, #12.00000000
    // 0x7f1324: stur            x0, [fp, #-0x18]
    // 0x7f1328: StoreField: r0->field_7 = d0
    //     0x7f1328: stur            d0, [x0, #7]
    // 0x7f132c: StoreField: r0->field_f = d0
    //     0x7f132c: stur            d0, [x0, #0xf]
    // 0x7f1330: r0 = BorderRadius()
    //     0x7f1330: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f1334: mov             x1, x0
    // 0x7f1338: ldur            x0, [fp, #-0x18]
    // 0x7f133c: stur            x1, [fp, #-0x28]
    // 0x7f1340: StoreField: r1->field_7 = r0
    //     0x7f1340: stur            w0, [x1, #7]
    // 0x7f1344: StoreField: r1->field_b = r0
    //     0x7f1344: stur            w0, [x1, #0xb]
    // 0x7f1348: StoreField: r1->field_f = r0
    //     0x7f1348: stur            w0, [x1, #0xf]
    // 0x7f134c: StoreField: r1->field_13 = r0
    //     0x7f134c: stur            w0, [x1, #0x13]
    // 0x7f1350: r0 = RoundedRectangleBorder()
    //     0x7f1350: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7f1354: mov             x1, x0
    // 0x7f1358: ldur            x0, [fp, #-0x28]
    // 0x7f135c: StoreField: r1->field_b = r0
    //     0x7f135c: stur            w0, [x1, #0xb]
    // 0x7f1360: r0 = Instance_BorderSide
    //     0x7f1360: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7f1364: ldr             x0, [x0, #0xcb8]
    // 0x7f1368: StoreField: r1->field_7 = r0
    //     0x7f1368: stur            w0, [x1, #7]
    // 0x7f136c: r16 = Instance_Color
    //     0x7f136c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f1370: ldr             x16, [x16, #0xb78]
    // 0x7f1374: r30 = Instance_Color
    //     0x7f1374: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7f1378: stp             lr, x16, [SP, #0x10]
    // 0x7f137c: r16 = Instance_EdgeInsets
    //     0x7f137c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ba8] Obj!EdgeInsets@a0c651
    //     0x7f1380: ldr             x16, [x16, #0xba8]
    // 0x7f1384: stp             x1, x16, [SP]
    // 0x7f1388: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0, foregroundColor, 0x1, padding, 0x2, shape, 0x3, null]
    //     0x7f1388: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb0] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0, "foregroundColor", 0x1, "padding", 0x2, "shape", 0x3, Null]
    //     0x7f138c: ldr             x4, [x4, #0xbb0]
    // 0x7f1390: r0 = styleFrom()
    //     0x7f1390: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7f1394: stur            x0, [fp, #-0x18]
    // 0x7f1398: r0 = ElevatedButtonThemeData()
    //     0x7f1398: bl              #0x56b6f4  ; AllocateElevatedButtonThemeDataStub -> ElevatedButtonThemeData (size=0xc)
    // 0x7f139c: mov             x1, x0
    // 0x7f13a0: ldur            x0, [fp, #-0x18]
    // 0x7f13a4: stur            x1, [fp, #-0x28]
    // 0x7f13a8: StoreField: r1->field_7 = r0
    //     0x7f13a8: stur            w0, [x1, #7]
    // 0x7f13ac: r16 = Instance_Color
    //     0x7f13ac: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f13b0: ldr             x16, [x16, #0xb78]
    // 0x7f13b4: str             x16, [SP]
    // 0x7f13b8: r4 = const [0, 0x1, 0x1, 0, foregroundColor, 0, null]
    //     0x7f13b8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb8] List(7) [0, 0x1, 0x1, 0, "foregroundColor", 0, Null]
    //     0x7f13bc: ldr             x4, [x4, #0xbb8]
    // 0x7f13c0: r0 = styleFrom()
    //     0x7f13c0: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x7f13c4: stur            x0, [fp, #-0x18]
    // 0x7f13c8: r0 = TextButtonThemeData()
    //     0x7f13c8: bl              #0x5698e4  ; AllocateTextButtonThemeDataStub -> TextButtonThemeData (size=0xc)
    // 0x7f13cc: mov             x1, x0
    // 0x7f13d0: ldur            x0, [fp, #-0x18]
    // 0x7f13d4: stur            x1, [fp, #-0x30]
    // 0x7f13d8: StoreField: r1->field_7 = r0
    //     0x7f13d8: stur            w0, [x1, #7]
    // 0x7f13dc: r0 = BorderSide()
    //     0x7f13dc: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7f13e0: mov             x1, x0
    // 0x7f13e4: r0 = Instance_Color
    //     0x7f13e4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f13e8: ldr             x0, [x0, #0xb78]
    // 0x7f13ec: stur            x1, [fp, #-0x18]
    // 0x7f13f0: StoreField: r1->field_7 = r0
    //     0x7f13f0: stur            w0, [x1, #7]
    // 0x7f13f4: d0 = 1.000000
    //     0x7f13f4: fmov            d0, #1.00000000
    // 0x7f13f8: StoreField: r1->field_b = d0
    //     0x7f13f8: stur            d0, [x1, #0xb]
    // 0x7f13fc: r2 = Instance_BorderStyle
    //     0x7f13fc: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7f1400: ldr             x2, [x2, #0x738]
    // 0x7f1404: StoreField: r1->field_13 = r2
    //     0x7f1404: stur            w2, [x1, #0x13]
    // 0x7f1408: d1 = -1.000000
    //     0x7f1408: fmov            d1, #-1.00000000
    // 0x7f140c: ArrayStore: r1[0] = d1  ; List_8
    //     0x7f140c: stur            d1, [x1, #0x17]
    // 0x7f1410: r0 = Radius()
    //     0x7f1410: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f1414: d0 = 12.000000
    //     0x7f1414: fmov            d0, #12.00000000
    // 0x7f1418: stur            x0, [fp, #-0x38]
    // 0x7f141c: StoreField: r0->field_7 = d0
    //     0x7f141c: stur            d0, [x0, #7]
    // 0x7f1420: StoreField: r0->field_f = d0
    //     0x7f1420: stur            d0, [x0, #0xf]
    // 0x7f1424: r0 = BorderRadius()
    //     0x7f1424: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f1428: mov             x1, x0
    // 0x7f142c: ldur            x0, [fp, #-0x38]
    // 0x7f1430: stur            x1, [fp, #-0x40]
    // 0x7f1434: StoreField: r1->field_7 = r0
    //     0x7f1434: stur            w0, [x1, #7]
    // 0x7f1438: StoreField: r1->field_b = r0
    //     0x7f1438: stur            w0, [x1, #0xb]
    // 0x7f143c: StoreField: r1->field_f = r0
    //     0x7f143c: stur            w0, [x1, #0xf]
    // 0x7f1440: StoreField: r1->field_13 = r0
    //     0x7f1440: stur            w0, [x1, #0x13]
    // 0x7f1444: r0 = RoundedRectangleBorder()
    //     0x7f1444: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7f1448: mov             x1, x0
    // 0x7f144c: ldur            x0, [fp, #-0x40]
    // 0x7f1450: StoreField: r1->field_b = r0
    //     0x7f1450: stur            w0, [x1, #0xb]
    // 0x7f1454: r0 = Instance_BorderSide
    //     0x7f1454: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7f1458: ldr             x0, [x0, #0xcb8]
    // 0x7f145c: StoreField: r1->field_7 = r0
    //     0x7f145c: stur            w0, [x1, #7]
    // 0x7f1460: r16 = Instance_Color
    //     0x7f1460: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f1464: ldr             x16, [x16, #0xb78]
    // 0x7f1468: str             x16, [SP]
    // 0x7f146c: ldur            x2, [fp, #-0x18]
    // 0x7f1470: r4 = const [0, 0x3, 0x1, 0x2, foregroundColor, 0x2, null]
    //     0x7f1470: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bc0] List(7) [0, 0x3, 0x1, 0x2, "foregroundColor", 0x2, Null]
    //     0x7f1474: ldr             x4, [x4, #0xbc0]
    // 0x7f1478: r0 = styleFrom()
    //     0x7f1478: bl              #0x6efdd8  ; [package:flutter/src/material/outlined_button.dart] OutlinedButton::styleFrom
    // 0x7f147c: stur            x0, [fp, #-0x18]
    // 0x7f1480: r0 = OutlinedButtonThemeData()
    //     0x7f1480: bl              #0x56a744  ; AllocateOutlinedButtonThemeDataStub -> OutlinedButtonThemeData (size=0xc)
    // 0x7f1484: mov             x2, x0
    // 0x7f1488: ldur            x0, [fp, #-0x18]
    // 0x7f148c: stur            x2, [fp, #-0x38]
    // 0x7f1490: StoreField: r2->field_7 = r0
    //     0x7f1490: stur            w0, [x2, #7]
    // 0x7f1494: r1 = Instance_MaterialColor
    //     0x7f1494: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7f1498: ldr             x1, [x1, #0xbc8]
    // 0x7f149c: r0 = shade50()
    //     0x7f149c: bl              #0x6d0b8c  ; [package:flutter/src/material/colors.dart] MaterialColor::shade50
    // 0x7f14a0: stur            x0, [fp, #-0x18]
    // 0x7f14a4: r0 = Radius()
    //     0x7f14a4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f14a8: d0 = 12.000000
    //     0x7f14a8: fmov            d0, #12.00000000
    // 0x7f14ac: stur            x0, [fp, #-0x40]
    // 0x7f14b0: StoreField: r0->field_7 = d0
    //     0x7f14b0: stur            d0, [x0, #7]
    // 0x7f14b4: StoreField: r0->field_f = d0
    //     0x7f14b4: stur            d0, [x0, #0xf]
    // 0x7f14b8: r0 = BorderRadius()
    //     0x7f14b8: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f14bc: mov             x1, x0
    // 0x7f14c0: ldur            x0, [fp, #-0x40]
    // 0x7f14c4: stur            x1, [fp, #-0x48]
    // 0x7f14c8: StoreField: r1->field_7 = r0
    //     0x7f14c8: stur            w0, [x1, #7]
    // 0x7f14cc: StoreField: r1->field_b = r0
    //     0x7f14cc: stur            w0, [x1, #0xb]
    // 0x7f14d0: StoreField: r1->field_f = r0
    //     0x7f14d0: stur            w0, [x1, #0xf]
    // 0x7f14d4: StoreField: r1->field_13 = r0
    //     0x7f14d4: stur            w0, [x1, #0x13]
    // 0x7f14d8: r0 = OutlineInputBorder()
    //     0x7f14d8: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7f14dc: mov             x1, x0
    // 0x7f14e0: ldur            x0, [fp, #-0x48]
    // 0x7f14e4: stur            x1, [fp, #-0x40]
    // 0x7f14e8: StoreField: r1->field_13 = r0
    //     0x7f14e8: stur            w0, [x1, #0x13]
    // 0x7f14ec: d0 = 4.000000
    //     0x7f14ec: fmov            d0, #4.00000000
    // 0x7f14f0: StoreField: r1->field_b = d0
    //     0x7f14f0: stur            d0, [x1, #0xb]
    // 0x7f14f4: r0 = Instance_BorderSide
    //     0x7f14f4: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7f14f8: ldr             x0, [x0, #0xcb8]
    // 0x7f14fc: StoreField: r1->field_7 = r0
    //     0x7f14fc: stur            w0, [x1, #7]
    // 0x7f1500: r0 = Radius()
    //     0x7f1500: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f1504: d0 = 12.000000
    //     0x7f1504: fmov            d0, #12.00000000
    // 0x7f1508: stur            x0, [fp, #-0x48]
    // 0x7f150c: StoreField: r0->field_7 = d0
    //     0x7f150c: stur            d0, [x0, #7]
    // 0x7f1510: StoreField: r0->field_f = d0
    //     0x7f1510: stur            d0, [x0, #0xf]
    // 0x7f1514: r0 = BorderRadius()
    //     0x7f1514: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f1518: mov             x2, x0
    // 0x7f151c: ldur            x0, [fp, #-0x48]
    // 0x7f1520: stur            x2, [fp, #-0x50]
    // 0x7f1524: StoreField: r2->field_7 = r0
    //     0x7f1524: stur            w0, [x2, #7]
    // 0x7f1528: StoreField: r2->field_b = r0
    //     0x7f1528: stur            w0, [x2, #0xb]
    // 0x7f152c: StoreField: r2->field_f = r0
    //     0x7f152c: stur            w0, [x2, #0xf]
    // 0x7f1530: StoreField: r2->field_13 = r0
    //     0x7f1530: stur            w0, [x2, #0x13]
    // 0x7f1534: r1 = Instance_MaterialColor
    //     0x7f1534: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7f1538: ldr             x1, [x1, #0xbc8]
    // 0x7f153c: r0 = shade300()
    //     0x7f153c: bl              #0x6dbdb8  ; [package:flutter/src/material/colors.dart] MaterialColor::shade300
    // 0x7f1540: stur            x0, [fp, #-0x48]
    // 0x7f1544: r0 = BorderSide()
    //     0x7f1544: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7f1548: mov             x1, x0
    // 0x7f154c: ldur            x0, [fp, #-0x48]
    // 0x7f1550: stur            x1, [fp, #-0x58]
    // 0x7f1554: StoreField: r1->field_7 = r0
    //     0x7f1554: stur            w0, [x1, #7]
    // 0x7f1558: d0 = 1.000000
    //     0x7f1558: fmov            d0, #1.00000000
    // 0x7f155c: StoreField: r1->field_b = d0
    //     0x7f155c: stur            d0, [x1, #0xb]
    // 0x7f1560: r0 = Instance_BorderStyle
    //     0x7f1560: add             x0, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7f1564: ldr             x0, [x0, #0x738]
    // 0x7f1568: StoreField: r1->field_13 = r0
    //     0x7f1568: stur            w0, [x1, #0x13]
    // 0x7f156c: d0 = -1.000000
    //     0x7f156c: fmov            d0, #-1.00000000
    // 0x7f1570: ArrayStore: r1[0] = d0  ; List_8
    //     0x7f1570: stur            d0, [x1, #0x17]
    // 0x7f1574: r0 = OutlineInputBorder()
    //     0x7f1574: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7f1578: mov             x1, x0
    // 0x7f157c: ldur            x0, [fp, #-0x50]
    // 0x7f1580: stur            x1, [fp, #-0x48]
    // 0x7f1584: StoreField: r1->field_13 = r0
    //     0x7f1584: stur            w0, [x1, #0x13]
    // 0x7f1588: d0 = 4.000000
    //     0x7f1588: fmov            d0, #4.00000000
    // 0x7f158c: StoreField: r1->field_b = d0
    //     0x7f158c: stur            d0, [x1, #0xb]
    // 0x7f1590: ldur            x0, [fp, #-0x58]
    // 0x7f1594: StoreField: r1->field_7 = r0
    //     0x7f1594: stur            w0, [x1, #7]
    // 0x7f1598: r0 = Radius()
    //     0x7f1598: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f159c: d0 = 12.000000
    //     0x7f159c: fmov            d0, #12.00000000
    // 0x7f15a0: stur            x0, [fp, #-0x50]
    // 0x7f15a4: StoreField: r0->field_7 = d0
    //     0x7f15a4: stur            d0, [x0, #7]
    // 0x7f15a8: StoreField: r0->field_f = d0
    //     0x7f15a8: stur            d0, [x0, #0xf]
    // 0x7f15ac: r0 = BorderRadius()
    //     0x7f15ac: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f15b0: mov             x1, x0
    // 0x7f15b4: ldur            x0, [fp, #-0x50]
    // 0x7f15b8: stur            x1, [fp, #-0x58]
    // 0x7f15bc: StoreField: r1->field_7 = r0
    //     0x7f15bc: stur            w0, [x1, #7]
    // 0x7f15c0: StoreField: r1->field_b = r0
    //     0x7f15c0: stur            w0, [x1, #0xb]
    // 0x7f15c4: StoreField: r1->field_f = r0
    //     0x7f15c4: stur            w0, [x1, #0xf]
    // 0x7f15c8: StoreField: r1->field_13 = r0
    //     0x7f15c8: stur            w0, [x1, #0x13]
    // 0x7f15cc: r0 = BorderSide()
    //     0x7f15cc: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7f15d0: mov             x1, x0
    // 0x7f15d4: r0 = Instance_Color
    //     0x7f15d4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f15d8: ldr             x0, [x0, #0xb78]
    // 0x7f15dc: stur            x1, [fp, #-0x50]
    // 0x7f15e0: StoreField: r1->field_7 = r0
    //     0x7f15e0: stur            w0, [x1, #7]
    // 0x7f15e4: d0 = 2.000000
    //     0x7f15e4: fmov            d0, #2.00000000
    // 0x7f15e8: StoreField: r1->field_b = d0
    //     0x7f15e8: stur            d0, [x1, #0xb]
    // 0x7f15ec: r2 = Instance_BorderStyle
    //     0x7f15ec: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7f15f0: ldr             x2, [x2, #0x738]
    // 0x7f15f4: StoreField: r1->field_13 = r2
    //     0x7f15f4: stur            w2, [x1, #0x13]
    // 0x7f15f8: d0 = -1.000000
    //     0x7f15f8: fmov            d0, #-1.00000000
    // 0x7f15fc: ArrayStore: r1[0] = d0  ; List_8
    //     0x7f15fc: stur            d0, [x1, #0x17]
    // 0x7f1600: r0 = OutlineInputBorder()
    //     0x7f1600: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7f1604: mov             x1, x0
    // 0x7f1608: ldur            x0, [fp, #-0x58]
    // 0x7f160c: stur            x1, [fp, #-0x60]
    // 0x7f1610: StoreField: r1->field_13 = r0
    //     0x7f1610: stur            w0, [x1, #0x13]
    // 0x7f1614: d0 = 4.000000
    //     0x7f1614: fmov            d0, #4.00000000
    // 0x7f1618: StoreField: r1->field_b = d0
    //     0x7f1618: stur            d0, [x1, #0xb]
    // 0x7f161c: ldur            x0, [fp, #-0x50]
    // 0x7f1620: StoreField: r1->field_7 = r0
    //     0x7f1620: stur            w0, [x1, #7]
    // 0x7f1624: r0 = Radius()
    //     0x7f1624: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f1628: d0 = 12.000000
    //     0x7f1628: fmov            d0, #12.00000000
    // 0x7f162c: stur            x0, [fp, #-0x50]
    // 0x7f1630: StoreField: r0->field_7 = d0
    //     0x7f1630: stur            d0, [x0, #7]
    // 0x7f1634: StoreField: r0->field_f = d0
    //     0x7f1634: stur            d0, [x0, #0xf]
    // 0x7f1638: r0 = BorderRadius()
    //     0x7f1638: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f163c: mov             x1, x0
    // 0x7f1640: ldur            x0, [fp, #-0x50]
    // 0x7f1644: stur            x1, [fp, #-0x58]
    // 0x7f1648: StoreField: r1->field_7 = r0
    //     0x7f1648: stur            w0, [x1, #7]
    // 0x7f164c: StoreField: r1->field_b = r0
    //     0x7f164c: stur            w0, [x1, #0xb]
    // 0x7f1650: StoreField: r1->field_f = r0
    //     0x7f1650: stur            w0, [x1, #0xf]
    // 0x7f1654: StoreField: r1->field_13 = r0
    //     0x7f1654: stur            w0, [x1, #0x13]
    // 0x7f1658: r0 = OutlineInputBorder()
    //     0x7f1658: bl              #0x6dbe00  ; AllocateOutlineInputBorderStub -> OutlineInputBorder (size=0x18)
    // 0x7f165c: mov             x1, x0
    // 0x7f1660: ldur            x0, [fp, #-0x58]
    // 0x7f1664: stur            x1, [fp, #-0x50]
    // 0x7f1668: StoreField: r1->field_13 = r0
    //     0x7f1668: stur            w0, [x1, #0x13]
    // 0x7f166c: d0 = 4.000000
    //     0x7f166c: fmov            d0, #4.00000000
    // 0x7f1670: StoreField: r1->field_b = d0
    //     0x7f1670: stur            d0, [x1, #0xb]
    // 0x7f1674: r0 = Instance_BorderSide
    //     0x7f1674: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bd0] Obj!BorderSide@a19551
    //     0x7f1678: ldr             x0, [x0, #0xbd0]
    // 0x7f167c: StoreField: r1->field_7 = r0
    //     0x7f167c: stur            w0, [x1, #7]
    // 0x7f1680: r0 = InputDecorationTheme()
    //     0x7f1680: bl              #0x7f18f4  ; AllocateInputDecorationThemeStub -> InputDecorationTheme (size=0xa8)
    // 0x7f1684: mov             x2, x0
    // 0x7f1688: r0 = Instance_FloatingLabelBehavior
    //     0x7f1688: ldr             x0, [PP, #0x5a50]  ; [pp+0x5a50] Obj!FloatingLabelBehavior@a2b9b1
    // 0x7f168c: stur            x2, [fp, #-0x58]
    // 0x7f1690: StoreField: r2->field_37 = r0
    //     0x7f1690: stur            w0, [x2, #0x37]
    // 0x7f1694: r0 = Instance_FloatingLabelAlignment
    //     0x7f1694: ldr             x0, [PP, #0x5a58]  ; [pp+0x5a58] Obj!FloatingLabelAlignment@a0f1a1
    // 0x7f1698: StoreField: r2->field_3b = r0
    //     0x7f1698: stur            w0, [x2, #0x3b]
    // 0x7f169c: r0 = false
    //     0x7f169c: add             x0, NULL, #0x30  ; false
    // 0x7f16a0: StoreField: r2->field_3f = r0
    //     0x7f16a0: stur            w0, [x2, #0x3f]
    // 0x7f16a4: r1 = Instance_EdgeInsets
    //     0x7f16a4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bd8] Obj!EdgeInsets@a0cad1
    //     0x7f16a8: ldr             x1, [x1, #0xbd8]
    // 0x7f16ac: StoreField: r2->field_43 = r1
    //     0x7f16ac: stur            w1, [x2, #0x43]
    // 0x7f16b0: StoreField: r2->field_47 = r0
    //     0x7f16b0: stur            w0, [x2, #0x47]
    // 0x7f16b4: r1 = true
    //     0x7f16b4: add             x1, NULL, #0x20  ; true
    // 0x7f16b8: StoreField: r2->field_6b = r1
    //     0x7f16b8: stur            w1, [x2, #0x6b]
    // 0x7f16bc: ldur            x1, [fp, #-0x18]
    // 0x7f16c0: StoreField: r2->field_6f = r1
    //     0x7f16c0: stur            w1, [x2, #0x6f]
    // 0x7f16c4: ldur            x1, [fp, #-0x50]
    // 0x7f16c8: StoreField: r2->field_83 = r1
    //     0x7f16c8: stur            w1, [x2, #0x83]
    // 0x7f16cc: ldur            x1, [fp, #-0x60]
    // 0x7f16d0: StoreField: r2->field_87 = r1
    //     0x7f16d0: stur            w1, [x2, #0x87]
    // 0x7f16d4: ldur            x1, [fp, #-0x48]
    // 0x7f16d8: StoreField: r2->field_93 = r1
    //     0x7f16d8: stur            w1, [x2, #0x93]
    // 0x7f16dc: ldur            x1, [fp, #-0x40]
    // 0x7f16e0: StoreField: r2->field_97 = r1
    //     0x7f16e0: stur            w1, [x2, #0x97]
    // 0x7f16e4: StoreField: r2->field_9b = r0
    //     0x7f16e4: stur            w0, [x2, #0x9b]
    // 0x7f16e8: r0 = Instance_SizedBox
    //     0x7f16e8: ldr             x0, [PP, #0x4e50]  ; [pp+0x4e50] Obj!SizedBox@a1f951
    // 0x7f16ec: StoreField: r2->field_b = r0
    //     0x7f16ec: stur            w0, [x2, #0xb]
    // 0x7f16f0: mov             x1, x2
    // 0x7f16f4: r0 = _NativeScene._()
    //     0x7f16f4: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x7f16f8: r16 = <Color?>
    //     0x7f16f8: add             x16, PP, #0xc, lsl #12  ; [pp+0xc8f8] TypeArguments: <Color?>
    //     0x7f16fc: ldr             x16, [x16, #0x8f8]
    // 0x7f1700: r30 = Instance_Color
    //     0x7f1700: add             lr, PP, #0x11, lsl #12  ; [pp+0x11be0] Obj!Color@a255d1
    //     0x7f1704: ldr             lr, [lr, #0xbe0]
    // 0x7f1708: stp             lr, x16, [SP]
    // 0x7f170c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7f170c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7f1710: r0 = all()
    //     0x7f1710: bl              #0x6731c4  ; [package:flutter/src/widgets/widget_state.dart] WidgetStateProperty::all
    // 0x7f1714: stur            x0, [fp, #-0x18]
    // 0x7f1718: r0 = SwitchThemeData()
    //     0x7f1718: bl              #0x569b84  ; AllocateSwitchThemeDataStub -> SwitchThemeData (size=0x30)
    // 0x7f171c: mov             x1, x0
    // 0x7f1720: ldur            x0, [fp, #-0x18]
    // 0x7f1724: stur            x1, [fp, #-0x40]
    // 0x7f1728: StoreField: r1->field_7 = r0
    //     0x7f1728: stur            w0, [x1, #7]
    // 0x7f172c: r0 = Radius()
    //     0x7f172c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f1730: d0 = 12.000000
    //     0x7f1730: fmov            d0, #12.00000000
    // 0x7f1734: stur            x0, [fp, #-0x18]
    // 0x7f1738: StoreField: r0->field_7 = d0
    //     0x7f1738: stur            d0, [x0, #7]
    // 0x7f173c: StoreField: r0->field_f = d0
    //     0x7f173c: stur            d0, [x0, #0xf]
    // 0x7f1740: r0 = BorderRadius()
    //     0x7f1740: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f1744: mov             x1, x0
    // 0x7f1748: ldur            x0, [fp, #-0x18]
    // 0x7f174c: stur            x1, [fp, #-0x48]
    // 0x7f1750: StoreField: r1->field_7 = r0
    //     0x7f1750: stur            w0, [x1, #7]
    // 0x7f1754: StoreField: r1->field_b = r0
    //     0x7f1754: stur            w0, [x1, #0xb]
    // 0x7f1758: StoreField: r1->field_f = r0
    //     0x7f1758: stur            w0, [x1, #0xf]
    // 0x7f175c: StoreField: r1->field_13 = r0
    //     0x7f175c: stur            w0, [x1, #0x13]
    // 0x7f1760: r0 = RoundedRectangleBorder()
    //     0x7f1760: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7f1764: mov             x1, x0
    // 0x7f1768: ldur            x0, [fp, #-0x48]
    // 0x7f176c: stur            x1, [fp, #-0x18]
    // 0x7f1770: StoreField: r1->field_b = r0
    //     0x7f1770: stur            w0, [x1, #0xb]
    // 0x7f1774: r0 = Instance_BorderSide
    //     0x7f1774: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7f1778: ldr             x0, [x0, #0xcb8]
    // 0x7f177c: StoreField: r1->field_7 = r0
    //     0x7f177c: stur            w0, [x1, #7]
    // 0x7f1780: r0 = SnackBarThemeData()
    //     0x7f1780: bl              #0x569dac  ; AllocateSnackBarThemeDataStub -> SnackBarThemeData (size=0x44)
    // 0x7f1784: mov             x1, x0
    // 0x7f1788: ldur            x0, [fp, #-0x18]
    // 0x7f178c: stur            x1, [fp, #-0x48]
    // 0x7f1790: StoreField: r1->field_1b = r0
    //     0x7f1790: stur            w0, [x1, #0x1b]
    // 0x7f1794: r0 = Instance_SnackBarBehavior
    //     0x7f1794: add             x0, PP, #0x11, lsl #12  ; [pp+0x11be8] Obj!SnackBarBehavior@a2b211
    //     0x7f1798: ldr             x0, [x0, #0xbe8]
    // 0x7f179c: StoreField: r1->field_1f = r0
    //     0x7f179c: stur            w0, [x1, #0x1f]
    // 0x7f17a0: r0 = BottomNavigationBarThemeData()
    //     0x7f17a0: bl              #0x56cf10  ; AllocateBottomNavigationBarThemeDataStub -> BottomNavigationBarThemeData (size=0x40)
    // 0x7f17a4: mov             x1, x0
    // 0x7f17a8: r0 = Instance_Color
    //     0x7f17a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f17ac: ldr             x0, [x0, #0xb78]
    // 0x7f17b0: stur            x1, [fp, #-0x18]
    // 0x7f17b4: ArrayStore: r1[0] = r0  ; List_4
    //     0x7f17b4: stur            w0, [x1, #0x17]
    // 0x7f17b8: r2 = Instance_MaterialColor
    //     0x7f17b8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7f17bc: ldr             x2, [x2, #0xbc8]
    // 0x7f17c0: StoreField: r1->field_1b = r2
    //     0x7f17c0: stur            w2, [x1, #0x1b]
    // 0x7f17c4: r0 = FloatingActionButtonThemeData()
    //     0x7f17c4: bl              #0x56b4c0  ; AllocateFloatingActionButtonThemeDataStub -> FloatingActionButtonThemeData (size=0x5c)
    // 0x7f17c8: mov             x2, x0
    // 0x7f17cc: r0 = Instance_Color
    //     0x7f17cc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x7f17d0: stur            x2, [fp, #-0x50]
    // 0x7f17d4: StoreField: r2->field_7 = r0
    //     0x7f17d4: stur            w0, [x2, #7]
    // 0x7f17d8: r0 = Instance_Color
    //     0x7f17d8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7f17dc: ldr             x0, [x0, #0xb78]
    // 0x7f17e0: StoreField: r2->field_b = r0
    //     0x7f17e0: stur            w0, [x2, #0xb]
    // 0x7f17e4: r1 = Instance_MaterialColor
    //     0x7f17e4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x7f17e8: ldr             x1, [x1, #0xbc8]
    // 0x7f17ec: r0 = shade200()
    //     0x7f17ec: bl              #0x6d1594  ; [package:flutter/src/material/colors.dart] MaterialColor::shade200
    // 0x7f17f0: stur            x0, [fp, #-0x60]
    // 0x7f17f4: r0 = DividerThemeData()
    //     0x7f17f4: bl              #0x56bb60  ; AllocateDividerThemeDataStub -> DividerThemeData (size=0x20)
    // 0x7f17f8: mov             x1, x0
    // 0x7f17fc: ldur            x0, [fp, #-0x60]
    // 0x7f1800: stur            x1, [fp, #-0x68]
    // 0x7f1804: StoreField: r1->field_7 = r0
    //     0x7f1804: stur            w0, [x1, #7]
    // 0x7f1808: r0 = 1.000000
    //     0x7f1808: ldr             x0, [PP, #0x4ae8]  ; [pp+0x4ae8] 1
    // 0x7f180c: StoreField: r1->field_f = r0
    //     0x7f180c: stur            w0, [x1, #0xf]
    // 0x7f1810: r0 = Radius()
    //     0x7f1810: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7f1814: d0 = 12.000000
    //     0x7f1814: fmov            d0, #12.00000000
    // 0x7f1818: stur            x0, [fp, #-0x60]
    // 0x7f181c: StoreField: r0->field_7 = d0
    //     0x7f181c: stur            d0, [x0, #7]
    // 0x7f1820: StoreField: r0->field_f = d0
    //     0x7f1820: stur            d0, [x0, #0xf]
    // 0x7f1824: r0 = BorderRadius()
    //     0x7f1824: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7f1828: mov             x1, x0
    // 0x7f182c: ldur            x0, [fp, #-0x60]
    // 0x7f1830: stur            x1, [fp, #-0x70]
    // 0x7f1834: StoreField: r1->field_7 = r0
    //     0x7f1834: stur            w0, [x1, #7]
    // 0x7f1838: StoreField: r1->field_b = r0
    //     0x7f1838: stur            w0, [x1, #0xb]
    // 0x7f183c: StoreField: r1->field_f = r0
    //     0x7f183c: stur            w0, [x1, #0xf]
    // 0x7f1840: StoreField: r1->field_13 = r0
    //     0x7f1840: stur            w0, [x1, #0x13]
    // 0x7f1844: r0 = RoundedRectangleBorder()
    //     0x7f1844: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7f1848: mov             x1, x0
    // 0x7f184c: ldur            x0, [fp, #-0x70]
    // 0x7f1850: stur            x1, [fp, #-0x60]
    // 0x7f1854: StoreField: r1->field_b = r0
    //     0x7f1854: stur            w0, [x1, #0xb]
    // 0x7f1858: r0 = Instance_BorderSide
    //     0x7f1858: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7f185c: ldr             x0, [x0, #0xcb8]
    // 0x7f1860: StoreField: r1->field_7 = r0
    //     0x7f1860: stur            w0, [x1, #7]
    // 0x7f1864: r0 = ListTileThemeData()
    //     0x7f1864: bl              #0x56b078  ; AllocateListTileThemeDataStub -> ListTileThemeData (size=0x60)
    // 0x7f1868: mov             x1, x0
    // 0x7f186c: ldur            x0, [fp, #-0x60]
    // 0x7f1870: StoreField: r1->field_b = r0
    //     0x7f1870: stur            w0, [x1, #0xb]
    // 0x7f1874: r16 = true
    //     0x7f1874: add             x16, NULL, #0x20  ; true
    // 0x7f1878: ldur            lr, [fp, #-8]
    // 0x7f187c: stp             lr, x16, [SP, #0x68]
    // 0x7f1880: r16 = Instance_Color
    //     0x7f1880: add             x16, PP, #0x11, lsl #12  ; [pp+0x11bf0] Obj!Color@a258d1
    //     0x7f1884: ldr             x16, [x16, #0xbf0]
    // 0x7f1888: ldur            lr, [fp, #-0x10]
    // 0x7f188c: stp             lr, x16, [SP, #0x58]
    // 0x7f1890: ldur            x16, [fp, #-0x20]
    // 0x7f1894: ldur            lr, [fp, #-0x28]
    // 0x7f1898: stp             lr, x16, [SP, #0x48]
    // 0x7f189c: ldur            x16, [fp, #-0x30]
    // 0x7f18a0: ldur            lr, [fp, #-0x38]
    // 0x7f18a4: stp             lr, x16, [SP, #0x38]
    // 0x7f18a8: ldur            x16, [fp, #-0x58]
    // 0x7f18ac: ldur            lr, [fp, #-0x40]
    // 0x7f18b0: stp             lr, x16, [SP, #0x28]
    // 0x7f18b4: ldur            x16, [fp, #-0x48]
    // 0x7f18b8: ldur            lr, [fp, #-0x18]
    // 0x7f18bc: stp             lr, x16, [SP, #0x18]
    // 0x7f18c0: ldur            x16, [fp, #-0x50]
    // 0x7f18c4: ldur            lr, [fp, #-0x68]
    // 0x7f18c8: stp             lr, x16, [SP, #8]
    // 0x7f18cc: str             x1, [SP]
    // 0x7f18d0: r1 = Null
    //     0x7f18d0: mov             x1, NULL
    // 0x7f18d4: r4 = const [0, 0x10, 0xf, 0x1, appBarTheme, 0x4, bottomNavigationBarTheme, 0xc, cardTheme, 0x5, colorScheme, 0x2, dividerTheme, 0xe, elevatedButtonTheme, 0x6, floatingActionButtonTheme, 0xd, inputDecorationTheme, 0x9, listTileTheme, 0xf, outlinedButtonTheme, 0x8, scaffoldBackgroundColor, 0x3, snackBarTheme, 0xb, switchTheme, 0xa, textButtonTheme, 0x7, useMaterial3, 0x1, null]
    //     0x7f18d4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bf8] List(35) [0, 0x10, 0xf, 0x1, "appBarTheme", 0x4, "bottomNavigationBarTheme", 0xc, "cardTheme", 0x5, "colorScheme", 0x2, "dividerTheme", 0xe, "elevatedButtonTheme", 0x6, "floatingActionButtonTheme", 0xd, "inputDecorationTheme", 0x9, "listTileTheme", 0xf, "outlinedButtonTheme", 0x8, "scaffoldBackgroundColor", 0x3, "snackBarTheme", 0xb, "switchTheme", 0xa, "textButtonTheme", 0x7, "useMaterial3", 0x1, Null]
    //     0x7f18d8: ldr             x4, [x4, #0xbf8]
    // 0x7f18dc: r0 = ThemeData()
    //     0x7f18dc: bl              #0x411fe8  ; [package:flutter/src/material/theme_data.dart] ThemeData::ThemeData
    // 0x7f18e0: LeaveFrame
    //     0x7f18e0: mov             SP, fp
    //     0x7f18e4: ldp             fp, lr, [SP], #0x10
    // 0x7f18e8: ret
    //     0x7f18e8: ret             
    // 0x7f18ec: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f18ec: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f18f0: b               #0x7f121c
  }
}
