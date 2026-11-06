// lib: , url: package:umrem_demo/features/auth/widgets/kvkk_dialog.dart

// class id: 1049565, size: 0x8
class :: {
}

// class id: 2909, size: 0x14, field offset: 0xc
//   const constructor, 
class _KvkkSection extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e90a8, size: 0x13c
    // 0x7e90a8: EnterFrame
    //     0x7e90a8: stp             fp, lr, [SP, #-0x10]!
    //     0x7e90ac: mov             fp, SP
    // 0x7e90b0: AllocStack(0x18)
    //     0x7e90b0: sub             SP, SP, #0x18
    // 0x7e90b4: SetupParameters(_KvkkSection this /* r1 => r1, fp-0x10 */)
    //     0x7e90b4: stur            x1, [fp, #-0x10]
    // 0x7e90b8: LoadField: r0 = r1->field_b
    //     0x7e90b8: ldur            w0, [x1, #0xb]
    // 0x7e90bc: DecompressPointer r0
    //     0x7e90bc: add             x0, x0, HEAP, lsl #32
    // 0x7e90c0: stur            x0, [fp, #-8]
    // 0x7e90c4: r0 = Text()
    //     0x7e90c4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e90c8: mov             x1, x0
    // 0x7e90cc: ldur            x0, [fp, #-8]
    // 0x7e90d0: stur            x1, [fp, #-0x18]
    // 0x7e90d4: StoreField: r1->field_b = r0
    //     0x7e90d4: stur            w0, [x1, #0xb]
    // 0x7e90d8: r0 = Instance_TextStyle
    //     0x7e90d8: add             x0, PP, #0x20, lsl #12  ; [pp+0x20900] Obj!TextStyle@a18e11
    //     0x7e90dc: ldr             x0, [x0, #0x900]
    // 0x7e90e0: StoreField: r1->field_13 = r0
    //     0x7e90e0: stur            w0, [x1, #0x13]
    // 0x7e90e4: ldur            x0, [fp, #-0x10]
    // 0x7e90e8: LoadField: r2 = r0->field_f
    //     0x7e90e8: ldur            w2, [x0, #0xf]
    // 0x7e90ec: DecompressPointer r2
    //     0x7e90ec: add             x2, x2, HEAP, lsl #32
    // 0x7e90f0: stur            x2, [fp, #-8]
    // 0x7e90f4: r0 = Text()
    //     0x7e90f4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e90f8: mov             x3, x0
    // 0x7e90fc: ldur            x0, [fp, #-8]
    // 0x7e9100: stur            x3, [fp, #-0x10]
    // 0x7e9104: StoreField: r3->field_b = r0
    //     0x7e9104: stur            w0, [x3, #0xb]
    // 0x7e9108: r0 = Instance_TextStyle
    //     0x7e9108: add             x0, PP, #0x20, lsl #12  ; [pp+0x20908] Obj!TextStyle@a18da1
    //     0x7e910c: ldr             x0, [x0, #0x908]
    // 0x7e9110: StoreField: r3->field_13 = r0
    //     0x7e9110: stur            w0, [x3, #0x13]
    // 0x7e9114: r1 = Null
    //     0x7e9114: mov             x1, NULL
    // 0x7e9118: r2 = 6
    //     0x7e9118: mov             x2, #6
    // 0x7e911c: r0 = AllocateArray()
    //     0x7e911c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9120: mov             x2, x0
    // 0x7e9124: ldur            x0, [fp, #-0x18]
    // 0x7e9128: stur            x2, [fp, #-8]
    // 0x7e912c: StoreField: r2->field_f = r0
    //     0x7e912c: stur            w0, [x2, #0xf]
    // 0x7e9130: r16 = Instance_SizedBox
    //     0x7e9130: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x7e9134: ldr             x16, [x16, #0x338]
    // 0x7e9138: StoreField: r2->field_13 = r16
    //     0x7e9138: stur            w16, [x2, #0x13]
    // 0x7e913c: ldur            x0, [fp, #-0x10]
    // 0x7e9140: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e9140: stur            w0, [x2, #0x17]
    // 0x7e9144: r1 = <Widget>
    //     0x7e9144: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e9148: r0 = AllocateGrowableArray()
    //     0x7e9148: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e914c: mov             x1, x0
    // 0x7e9150: ldur            x0, [fp, #-8]
    // 0x7e9154: stur            x1, [fp, #-0x10]
    // 0x7e9158: StoreField: r1->field_f = r0
    //     0x7e9158: stur            w0, [x1, #0xf]
    // 0x7e915c: r0 = 6
    //     0x7e915c: mov             x0, #6
    // 0x7e9160: StoreField: r1->field_b = r0
    //     0x7e9160: stur            w0, [x1, #0xb]
    // 0x7e9164: r0 = Column()
    //     0x7e9164: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e9168: mov             x1, x0
    // 0x7e916c: r0 = Instance_Axis
    //     0x7e916c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e9170: stur            x1, [fp, #-8]
    // 0x7e9174: StoreField: r1->field_f = r0
    //     0x7e9174: stur            w0, [x1, #0xf]
    // 0x7e9178: r0 = Instance_MainAxisAlignment
    //     0x7e9178: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e917c: ldr             x0, [x0, #0x230]
    // 0x7e9180: StoreField: r1->field_13 = r0
    //     0x7e9180: stur            w0, [x1, #0x13]
    // 0x7e9184: r0 = Instance_MainAxisSize
    //     0x7e9184: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e9188: ldr             x0, [x0, #0x330]
    // 0x7e918c: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e918c: stur            w0, [x1, #0x17]
    // 0x7e9190: r0 = Instance_CrossAxisAlignment
    //     0x7e9190: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e9194: ldr             x0, [x0, #0x238]
    // 0x7e9198: StoreField: r1->field_1b = r0
    //     0x7e9198: stur            w0, [x1, #0x1b]
    // 0x7e919c: r0 = Instance_VerticalDirection
    //     0x7e919c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e91a0: ldr             x0, [x0, #0x340]
    // 0x7e91a4: StoreField: r1->field_23 = r0
    //     0x7e91a4: stur            w0, [x1, #0x23]
    // 0x7e91a8: r0 = Instance_Clip
    //     0x7e91a8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e91ac: ldr             x0, [x0, #0x348]
    // 0x7e91b0: StoreField: r1->field_2b = r0
    //     0x7e91b0: stur            w0, [x1, #0x2b]
    // 0x7e91b4: StoreField: r1->field_2f = rZR
    //     0x7e91b4: stur            xzr, [x1, #0x2f]
    // 0x7e91b8: ldur            x0, [fp, #-0x10]
    // 0x7e91bc: StoreField: r1->field_b = r0
    //     0x7e91bc: stur            w0, [x1, #0xb]
    // 0x7e91c0: r0 = Padding()
    //     0x7e91c0: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7e91c4: r1 = Instance_EdgeInsets
    //     0x7e91c4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7e91c8: ldr             x1, [x1, #0xf18]
    // 0x7e91cc: StoreField: r0->field_f = r1
    //     0x7e91cc: stur            w1, [x0, #0xf]
    // 0x7e91d0: ldur            x1, [fp, #-8]
    // 0x7e91d4: StoreField: r0->field_b = r1
    //     0x7e91d4: stur            w1, [x0, #0xb]
    // 0x7e91d8: LeaveFrame
    //     0x7e91d8: mov             SP, fp
    //     0x7e91dc: ldp             fp, lr, [SP], #0x10
    // 0x7e91e0: ret
    //     0x7e91e0: ret             
  }
}

// class id: 2910, size: 0x14, field offset: 0xc
//   const constructor, 
class KvkkDialog extends StatelessWidget {

  static _ show(/* No info */) async {
    // ** addr: 0x6f9338, size: 0x60
    // 0x6f9338: EnterFrame
    //     0x6f9338: stp             fp, lr, [SP, #-0x10]!
    //     0x6f933c: mov             fp, SP
    // 0x6f9340: AllocStack(0x28)
    //     0x6f9340: sub             SP, SP, #0x28
    // 0x6f9344: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */)
    //     0x6f9344: stur            NULL, [fp, #-8]
    //     0x6f9348: stur            x1, [fp, #-0x10]
    // 0x6f934c: CheckStackOverflow
    //     0x6f934c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6f9350: cmp             SP, x16
    //     0x6f9354: b.ls            #0x6f9390
    // 0x6f9358: InitAsync() -> Future<bool?>
    //     0x6f9358: add             x0, PP, #0x10, lsl #12  ; [pp+0x104f8] TypeArguments: <bool?>
    //     0x6f935c: ldr             x0, [x0, #0x4f8]
    //     0x6f9360: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6f9364: r1 = Function '<anonymous closure>': static.
    //     0x6f9364: add             x1, PP, #0x18, lsl #12  ; [pp+0x18708] AnonymousClosure: static (0x6f9398), in [package:umrem_demo/features/auth/widgets/kvkk_dialog.dart] KvkkDialog::show (0x6f9338)
    //     0x6f9368: ldr             x1, [x1, #0x708]
    // 0x6f936c: r2 = Null
    //     0x6f936c: mov             x2, NULL
    // 0x6f9370: r0 = AllocateClosure()
    //     0x6f9370: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f9374: r16 = <bool>
    //     0x6f9374: ldr             x16, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    // 0x6f9378: stp             x0, x16, [SP, #8]
    // 0x6f937c: ldur            x16, [fp, #-0x10]
    // 0x6f9380: str             x16, [SP]
    // 0x6f9384: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6f9384: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6f9388: r0 = showDialog()
    //     0x6f9388: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6f938c: r0 = ReturnAsync()
    //     0x6f938c: b               #0x427094  ; ReturnAsyncStub
    // 0x6f9390: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6f9390: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6f9394: b               #0x6f9358
  }
  [closure] static KvkkDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6f9398, size: 0x8c
    // 0x6f9398: EnterFrame
    //     0x6f9398: stp             fp, lr, [SP, #-0x10]!
    //     0x6f939c: mov             fp, SP
    // 0x6f93a0: AllocStack(0x18)
    //     0x6f93a0: sub             SP, SP, #0x18
    // 0x6f93a4: SetupParameters([dynamic _ /* r0 */])
    //     0x6f93a4: ldr             x0, [fp, #0x18]
    //     0x6f93a8: ldur            w1, [x0, #0x17]
    //     0x6f93ac: add             x1, x1, HEAP, lsl #32
    //     0x6f93b0: stur            x1, [fp, #-8]
    // 0x6f93b4: r1 = 1
    //     0x6f93b4: mov             x1, #1
    // 0x6f93b8: r0 = AllocateContext()
    //     0x6f93b8: bl              #0x927010  ; AllocateContextStub
    // 0x6f93bc: mov             x3, x0
    // 0x6f93c0: ldur            x0, [fp, #-8]
    // 0x6f93c4: stur            x3, [fp, #-0x10]
    // 0x6f93c8: StoreField: r3->field_b = r0
    //     0x6f93c8: stur            w0, [x3, #0xb]
    // 0x6f93cc: ldr             x0, [fp, #0x10]
    // 0x6f93d0: StoreField: r3->field_f = r0
    //     0x6f93d0: stur            w0, [x3, #0xf]
    // 0x6f93d4: mov             x2, x3
    // 0x6f93d8: r1 = Function '<anonymous closure>': static.
    //     0x6f93d8: add             x1, PP, #0x18, lsl #12  ; [pp+0x18710] AnonymousClosure: (0x6dfa38), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6f93dc: ldr             x1, [x1, #0x710]
    // 0x6f93e0: r0 = AllocateClosure()
    //     0x6f93e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f93e4: stur            x0, [fp, #-8]
    // 0x6f93e8: r0 = KvkkDialog()
    //     0x6f93e8: bl              #0x6f9424  ; AllocateKvkkDialogStub -> KvkkDialog (size=0x14)
    // 0x6f93ec: mov             x3, x0
    // 0x6f93f0: ldur            x0, [fp, #-8]
    // 0x6f93f4: stur            x3, [fp, #-0x18]
    // 0x6f93f8: StoreField: r3->field_b = r0
    //     0x6f93f8: stur            w0, [x3, #0xb]
    // 0x6f93fc: ldur            x2, [fp, #-0x10]
    // 0x6f9400: r1 = Function '<anonymous closure>': static.
    //     0x6f9400: add             x1, PP, #0x18, lsl #12  ; [pp+0x18718] AnonymousClosure: (0x6dfc64), in [package:umrem_demo/features/admin/widgets/trips/trips_tab.dart] TripsTab::_confirmDelete (0x6dfcc0)
    //     0x6f9404: ldr             x1, [x1, #0x718]
    // 0x6f9408: r0 = AllocateClosure()
    //     0x6f9408: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6f940c: mov             x1, x0
    // 0x6f9410: ldur            x0, [fp, #-0x18]
    // 0x6f9414: StoreField: r0->field_f = r1
    //     0x6f9414: stur            w1, [x0, #0xf]
    // 0x6f9418: LeaveFrame
    //     0x6f9418: mov             SP, fp
    //     0x6f941c: ldp             fp, lr, [SP], #0x10
    // 0x6f9420: ret
    //     0x6f9420: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x7e8b6c, size: 0x530
    // 0x7e8b6c: EnterFrame
    //     0x7e8b6c: stp             fp, lr, [SP, #-0x10]!
    //     0x7e8b70: mov             fp, SP
    // 0x7e8b74: AllocStack(0x30)
    //     0x7e8b74: sub             SP, SP, #0x30
    // 0x7e8b78: r0 = 32
    //     0x7e8b78: mov             x0, #0x20
    // 0x7e8b7c: mov             x3, x1
    // 0x7e8b80: stur            x1, [fp, #-8]
    // 0x7e8b84: CheckStackOverflow
    //     0x7e8b84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e8b88: cmp             SP, x16
    //     0x7e8b8c: b.ls            #0x7e9090
    // 0x7e8b90: mov             x2, x0
    // 0x7e8b94: r1 = <Widget>
    //     0x7e8b94: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e8b98: r0 = AllocateArray()
    //     0x7e8b98: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e8b9c: stur            x0, [fp, #-0x10]
    // 0x7e8ba0: r16 = Instance_Text
    //     0x7e8ba0: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bfe8] Obj!Text@a1dd41
    //     0x7e8ba4: ldr             x16, [x16, #0xfe8]
    // 0x7e8ba8: StoreField: r0->field_f = r16
    //     0x7e8ba8: stur            w16, [x0, #0xf]
    // 0x7e8bac: r16 = Instance_SizedBox
    //     0x7e8bac: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7e8bb0: ldr             x16, [x16, #0x310]
    // 0x7e8bb4: StoreField: r0->field_13 = r16
    //     0x7e8bb4: stur            w16, [x0, #0x13]
    // 0x7e8bb8: r0 = _KvkkSection()
    //     0x7e8bb8: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8bbc: mov             x1, x0
    // 0x7e8bc0: r0 = "Veri Sorumlusu:"
    //     0x7e8bc0: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bff0] "Veri Sorumlusu:"
    //     0x7e8bc4: ldr             x0, [x0, #0xff0]
    // 0x7e8bc8: StoreField: r1->field_b = r0
    //     0x7e8bc8: stur            w0, [x1, #0xb]
    // 0x7e8bcc: r0 = "Hacktapot Software"
    //     0x7e8bcc: add             x0, PP, #0x1b, lsl #12  ; [pp+0x1bff8] "Hacktapot Software"
    //     0x7e8bd0: ldr             x0, [x0, #0xff8]
    // 0x7e8bd4: StoreField: r1->field_f = r0
    //     0x7e8bd4: stur            w0, [x1, #0xf]
    // 0x7e8bd8: mov             x0, x1
    // 0x7e8bdc: ldur            x1, [fp, #-0x10]
    // 0x7e8be0: ArrayStore: r1[2] = r0  ; List_4
    //     0x7e8be0: add             x25, x1, #0x17
    //     0x7e8be4: str             w0, [x25]
    //     0x7e8be8: tbz             w0, #0, #0x7e8c04
    //     0x7e8bec: ldurb           w16, [x1, #-1]
    //     0x7e8bf0: ldurb           w17, [x0, #-1]
    //     0x7e8bf4: and             x16, x17, x16, lsr #2
    //     0x7e8bf8: tst             x16, HEAP, lsr #32
    //     0x7e8bfc: b.eq            #0x7e8c04
    //     0x7e8c00: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8c04: r0 = _KvkkSection()
    //     0x7e8c04: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8c08: mov             x1, x0
    // 0x7e8c0c: r0 = "İşlenen Kişisel Veriler:"
    //     0x7e8c0c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c000] "İşlenen Kişisel Veriler:"
    //     0x7e8c10: ldr             x0, [x0]
    // 0x7e8c14: StoreField: r1->field_b = r0
    //     0x7e8c14: stur            w0, [x1, #0xb]
    // 0x7e8c18: r0 = "Kimlik (Ad, Soyad, T.C. Kimlik No), İletişim (Telefon No), Demografik (Cinsiyet, Yaş), Konum bilgisi (anlık ve uygulama kullanım süresince), Uygulama kullanım verileri."
    //     0x7e8c18: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c008] "Kimlik (Ad, Soyad, T.C. Kimlik No), İletişim (Telefon No), Demografik (Cinsiyet, Yaş), Konum bilgisi (anlık ve uygulama kullanım süresince), Uygulama kullanım verileri."
    //     0x7e8c1c: ldr             x0, [x0, #8]
    // 0x7e8c20: StoreField: r1->field_f = r0
    //     0x7e8c20: stur            w0, [x1, #0xf]
    // 0x7e8c24: mov             x0, x1
    // 0x7e8c28: ldur            x1, [fp, #-0x10]
    // 0x7e8c2c: ArrayStore: r1[3] = r0  ; List_4
    //     0x7e8c2c: add             x25, x1, #0x1b
    //     0x7e8c30: str             w0, [x25]
    //     0x7e8c34: tbz             w0, #0, #0x7e8c50
    //     0x7e8c38: ldurb           w16, [x1, #-1]
    //     0x7e8c3c: ldurb           w17, [x0, #-1]
    //     0x7e8c40: and             x16, x17, x16, lsr #2
    //     0x7e8c44: tst             x16, HEAP, lsr #32
    //     0x7e8c48: b.eq            #0x7e8c50
    //     0x7e8c4c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8c50: r0 = _KvkkSection()
    //     0x7e8c50: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8c54: mov             x1, x0
    // 0x7e8c58: r0 = "İşlenme Amaçları:"
    //     0x7e8c58: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c010] "İşlenme Amaçları:"
    //     0x7e8c5c: ldr             x0, [x0, #0x10]
    // 0x7e8c60: StoreField: r1->field_b = r0
    //     0x7e8c60: stur            w0, [x1, #0xb]
    // 0x7e8c64: r0 = "Kullanıcı hesabı oluşturma ve yönetme, Umre Rehberi ile anlık iletişim, acil durumlarda kullanıcıya ulaşma, grup takibi ve rehberlik hizmetleri, bildirim gönderme, uygulama güvenliğini sağlama."
    //     0x7e8c64: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c018] "Kullanıcı hesabı oluşturma ve yönetme, Umre Rehberi ile anlık iletişim, acil durumlarda kullanıcıya ulaşma, grup takibi ve rehberlik hizmetleri, bildirim gönderme, uygulama güvenliğini sağlama."
    //     0x7e8c68: ldr             x0, [x0, #0x18]
    // 0x7e8c6c: StoreField: r1->field_f = r0
    //     0x7e8c6c: stur            w0, [x1, #0xf]
    // 0x7e8c70: mov             x0, x1
    // 0x7e8c74: ldur            x1, [fp, #-0x10]
    // 0x7e8c78: ArrayStore: r1[4] = r0  ; List_4
    //     0x7e8c78: add             x25, x1, #0x1f
    //     0x7e8c7c: str             w0, [x25]
    //     0x7e8c80: tbz             w0, #0, #0x7e8c9c
    //     0x7e8c84: ldurb           w16, [x1, #-1]
    //     0x7e8c88: ldurb           w17, [x0, #-1]
    //     0x7e8c8c: and             x16, x17, x16, lsr #2
    //     0x7e8c90: tst             x16, HEAP, lsr #32
    //     0x7e8c94: b.eq            #0x7e8c9c
    //     0x7e8c98: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8c9c: r0 = _KvkkSection()
    //     0x7e8c9c: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8ca0: mov             x1, x0
    // 0x7e8ca4: r0 = "Konum Bilgisi:"
    //     0x7e8ca4: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c020] "Konum Bilgisi:"
    //     0x7e8ca8: ldr             x0, [x0, #0x20]
    // 0x7e8cac: StoreField: r1->field_b = r0
    //     0x7e8cac: stur            w0, [x1, #0xb]
    // 0x7e8cb0: r0 = "Uygulama aktifken takip edilir, arka planda veya çıkıldığında izleme yapılmaz. Kullanıcının güvenliği ve rehberlik hizmeti için zorunludur. İzin verilmemesi durumunda bazı temel özellikler kullanılamayabilir."
    //     0x7e8cb0: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c028] "Uygulama aktifken takip edilir, arka planda veya çıkıldığında izleme yapılmaz. Kullanıcının güvenliği ve rehberlik hizmeti için zorunludur. İzin verilmemesi durumunda bazı temel özellikler kullanılamayabilir."
    //     0x7e8cb4: ldr             x0, [x0, #0x28]
    // 0x7e8cb8: StoreField: r1->field_f = r0
    //     0x7e8cb8: stur            w0, [x1, #0xf]
    // 0x7e8cbc: mov             x0, x1
    // 0x7e8cc0: ldur            x1, [fp, #-0x10]
    // 0x7e8cc4: ArrayStore: r1[5] = r0  ; List_4
    //     0x7e8cc4: add             x25, x1, #0x23
    //     0x7e8cc8: str             w0, [x25]
    //     0x7e8ccc: tbz             w0, #0, #0x7e8ce8
    //     0x7e8cd0: ldurb           w16, [x1, #-1]
    //     0x7e8cd4: ldurb           w17, [x0, #-1]
    //     0x7e8cd8: and             x16, x17, x16, lsr #2
    //     0x7e8cdc: tst             x16, HEAP, lsr #32
    //     0x7e8ce0: b.eq            #0x7e8ce8
    //     0x7e8ce4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8ce8: r0 = _KvkkSection()
    //     0x7e8ce8: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8cec: mov             x1, x0
    // 0x7e8cf0: r0 = "Kişisel Verilerin Aktarılması:"
    //     0x7e8cf0: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c030] "Kişisel Verilerin Aktarılması:"
    //     0x7e8cf4: ldr             x0, [x0, #0x30]
    // 0x7e8cf8: StoreField: r1->field_b = r0
    //     0x7e8cf8: stur            w0, [x1, #0xb]
    // 0x7e8cfc: r0 = "Üçüncü kişilerle paylaşılmaz. Hacktapot Software\'in güvenli veri merkezlerinde saklanır. Yalnızca savcılık/adli makam kararı bulunması halinde veya ilgili tur firması ile sınırlı olarak paylaşılabilir."
    //     0x7e8cfc: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c038] "Üçüncü kişilerle paylaşılmaz. Hacktapot Software\'in güvenli veri merkezlerinde saklanır. Yalnızca savcılık/adli makam kararı bulunması halinde veya ilgili tur firması ile sınırlı olarak paylaşılabilir."
    //     0x7e8d00: ldr             x0, [x0, #0x38]
    // 0x7e8d04: StoreField: r1->field_f = r0
    //     0x7e8d04: stur            w0, [x1, #0xf]
    // 0x7e8d08: mov             x0, x1
    // 0x7e8d0c: ldur            x1, [fp, #-0x10]
    // 0x7e8d10: ArrayStore: r1[6] = r0  ; List_4
    //     0x7e8d10: add             x25, x1, #0x27
    //     0x7e8d14: str             w0, [x25]
    //     0x7e8d18: tbz             w0, #0, #0x7e8d34
    //     0x7e8d1c: ldurb           w16, [x1, #-1]
    //     0x7e8d20: ldurb           w17, [x0, #-1]
    //     0x7e8d24: and             x16, x17, x16, lsr #2
    //     0x7e8d28: tst             x16, HEAP, lsr #32
    //     0x7e8d2c: b.eq            #0x7e8d34
    //     0x7e8d30: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8d34: r0 = _KvkkSection()
    //     0x7e8d34: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8d38: mov             x1, x0
    // 0x7e8d3c: r0 = "Yurt Dışına Veri Aktarımı:"
    //     0x7e8d3c: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c040] "Yurt Dışına Veri Aktarımı:"
    //     0x7e8d40: ldr             x0, [x0, #0x40]
    // 0x7e8d44: StoreField: r1->field_b = r0
    //     0x7e8d44: stur            w0, [x1, #0xb]
    // 0x7e8d48: r0 = "Google Firebase ve Cloudflare hizmetleri aracılığıyla yurt dışında bulunan güvenli sunucularda depolanabilir. Bu aktarım KVKK\'ya uygun teknik ve idari tedbirler alınarak yapılmaktadır."
    //     0x7e8d48: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c048] "Google Firebase ve Cloudflare hizmetleri aracılığıyla yurt dışında bulunan güvenli sunucularda depolanabilir. Bu aktarım KVKK\'ya uygun teknik ve idari tedbirler alınarak yapılmaktadır."
    //     0x7e8d4c: ldr             x0, [x0, #0x48]
    // 0x7e8d50: StoreField: r1->field_f = r0
    //     0x7e8d50: stur            w0, [x1, #0xf]
    // 0x7e8d54: mov             x0, x1
    // 0x7e8d58: ldur            x1, [fp, #-0x10]
    // 0x7e8d5c: ArrayStore: r1[7] = r0  ; List_4
    //     0x7e8d5c: add             x25, x1, #0x2b
    //     0x7e8d60: str             w0, [x25]
    //     0x7e8d64: tbz             w0, #0, #0x7e8d80
    //     0x7e8d68: ldurb           w16, [x1, #-1]
    //     0x7e8d6c: ldurb           w17, [x0, #-1]
    //     0x7e8d70: and             x16, x17, x16, lsr #2
    //     0x7e8d74: tst             x16, HEAP, lsr #32
    //     0x7e8d78: b.eq            #0x7e8d80
    //     0x7e8d7c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8d80: r0 = _KvkkSection()
    //     0x7e8d80: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8d84: mov             x1, x0
    // 0x7e8d88: r0 = "Toplanma Yöntemi ve Hukuki Sebebi:"
    //     0x7e8d88: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c050] "Toplanma Yöntemi ve Hukuki Sebebi:"
    //     0x7e8d8c: ldr             x0, [x0, #0x50]
    // 0x7e8d90: StoreField: r1->field_b = r0
    //     0x7e8d90: stur            w0, [x1, #0xb]
    // 0x7e8d94: r0 = "Mobil uygulama üzerinden elektronik ortamda, kullanıcının açık rızasına dayanarak, KVKK\'nın 5. ve 6. maddeleri kapsamında toplanmakta ve işlenmektedir."
    //     0x7e8d94: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c058] "Mobil uygulama üzerinden elektronik ortamda, kullanıcının açık rızasına dayanarak, KVKK\'nın 5. ve 6. maddeleri kapsamında toplanmakta ve işlenmektedir."
    //     0x7e8d98: ldr             x0, [x0, #0x58]
    // 0x7e8d9c: StoreField: r1->field_f = r0
    //     0x7e8d9c: stur            w0, [x1, #0xf]
    // 0x7e8da0: mov             x0, x1
    // 0x7e8da4: ldur            x1, [fp, #-0x10]
    // 0x7e8da8: ArrayStore: r1[8] = r0  ; List_4
    //     0x7e8da8: add             x25, x1, #0x2f
    //     0x7e8dac: str             w0, [x25]
    //     0x7e8db0: tbz             w0, #0, #0x7e8dcc
    //     0x7e8db4: ldurb           w16, [x1, #-1]
    //     0x7e8db8: ldurb           w17, [x0, #-1]
    //     0x7e8dbc: and             x16, x17, x16, lsr #2
    //     0x7e8dc0: tst             x16, HEAP, lsr #32
    //     0x7e8dc4: b.eq            #0x7e8dcc
    //     0x7e8dc8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8dcc: r0 = _KvkkSection()
    //     0x7e8dcc: bl              #0x7e909c  ; Allocate_KvkkSectionStub -> _KvkkSection (size=0x14)
    // 0x7e8dd0: mov             x1, x0
    // 0x7e8dd4: r0 = "KVKK Kapsamındaki Haklarınız:"
    //     0x7e8dd4: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c060] "KVKK Kapsamındaki Haklarınız:"
    //     0x7e8dd8: ldr             x0, [x0, #0x60]
    // 0x7e8ddc: StoreField: r1->field_b = r0
    //     0x7e8ddc: stur            w0, [x1, #0xb]
    // 0x7e8de0: r0 = "Verilerinizin işlenip işlenmediğini öğrenme, bilgi talep etme, yanlış veya eksik verilerin düzeltilmesini isteme, verilerin silinmesini veya yok edilmesini talep etme. Taleplerinizi support@umrerehberim.com adresine iletebilirsiniz."
    //     0x7e8de0: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c068] "Verilerinizin işlenip işlenmediğini öğrenme, bilgi talep etme, yanlış veya eksik verilerin düzeltilmesini isteme, verilerin silinmesini veya yok edilmesini talep etme. Taleplerinizi support@umrerehberim.com adresine iletebilirsiniz."
    //     0x7e8de4: ldr             x0, [x0, #0x68]
    // 0x7e8de8: StoreField: r1->field_f = r0
    //     0x7e8de8: stur            w0, [x1, #0xf]
    // 0x7e8dec: mov             x0, x1
    // 0x7e8df0: ldur            x1, [fp, #-0x10]
    // 0x7e8df4: ArrayStore: r1[9] = r0  ; List_4
    //     0x7e8df4: add             x25, x1, #0x33
    //     0x7e8df8: str             w0, [x25]
    //     0x7e8dfc: tbz             w0, #0, #0x7e8e18
    //     0x7e8e00: ldurb           w16, [x1, #-1]
    //     0x7e8e04: ldurb           w17, [x0, #-1]
    //     0x7e8e08: and             x16, x17, x16, lsr #2
    //     0x7e8e0c: tst             x16, HEAP, lsr #32
    //     0x7e8e10: b.eq            #0x7e8e18
    //     0x7e8e14: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e8e18: ldur            x0, [fp, #-0x10]
    // 0x7e8e1c: r16 = Instance_SizedBox
    //     0x7e8e1c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x7e8e20: ldr             x16, [x16, #0x310]
    // 0x7e8e24: StoreField: r0->field_37 = r16
    //     0x7e8e24: stur            w16, [x0, #0x37]
    // 0x7e8e28: r16 = Instance_Text
    //     0x7e8e28: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c070] Obj!Text@a1dcf1
    //     0x7e8e2c: ldr             x16, [x16, #0x70]
    // 0x7e8e30: StoreField: r0->field_3b = r16
    //     0x7e8e30: stur            w16, [x0, #0x3b]
    // 0x7e8e34: r16 = Instance_SizedBox
    //     0x7e8e34: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7e8e38: ldr             x16, [x16, #0x318]
    // 0x7e8e3c: StoreField: r0->field_3f = r16
    //     0x7e8e3c: stur            w16, [x0, #0x3f]
    // 0x7e8e40: r16 = Instance_Text
    //     0x7e8e40: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c078] Obj!Text@a1dca1
    //     0x7e8e44: ldr             x16, [x16, #0x78]
    // 0x7e8e48: StoreField: r0->field_43 = r16
    //     0x7e8e48: stur            w16, [x0, #0x43]
    // 0x7e8e4c: r16 = Instance_SizedBox
    //     0x7e8e4c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x7e8e50: ldr             x16, [x16, #0x318]
    // 0x7e8e54: StoreField: r0->field_47 = r16
    //     0x7e8e54: stur            w16, [x0, #0x47]
    // 0x7e8e58: r16 = Instance_Text
    //     0x7e8e58: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c080] Obj!Text@a1dc51
    //     0x7e8e5c: ldr             x16, [x16, #0x80]
    // 0x7e8e60: StoreField: r0->field_4b = r16
    //     0x7e8e60: stur            w16, [x0, #0x4b]
    // 0x7e8e64: r1 = <Widget>
    //     0x7e8e64: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e8e68: r0 = AllocateGrowableArray()
    //     0x7e8e68: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e8e6c: mov             x1, x0
    // 0x7e8e70: ldur            x0, [fp, #-0x10]
    // 0x7e8e74: stur            x1, [fp, #-0x18]
    // 0x7e8e78: StoreField: r1->field_f = r0
    //     0x7e8e78: stur            w0, [x1, #0xf]
    // 0x7e8e7c: r0 = 32
    //     0x7e8e7c: mov             x0, #0x20
    // 0x7e8e80: StoreField: r1->field_b = r0
    //     0x7e8e80: stur            w0, [x1, #0xb]
    // 0x7e8e84: r0 = Column()
    //     0x7e8e84: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e8e88: mov             x1, x0
    // 0x7e8e8c: r0 = Instance_Axis
    //     0x7e8e8c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e8e90: stur            x1, [fp, #-0x10]
    // 0x7e8e94: StoreField: r1->field_f = r0
    //     0x7e8e94: stur            w0, [x1, #0xf]
    // 0x7e8e98: r2 = Instance_MainAxisAlignment
    //     0x7e8e98: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e8e9c: ldr             x2, [x2, #0x230]
    // 0x7e8ea0: StoreField: r1->field_13 = r2
    //     0x7e8ea0: stur            w2, [x1, #0x13]
    // 0x7e8ea4: r2 = Instance_MainAxisSize
    //     0x7e8ea4: add             x2, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e8ea8: ldr             x2, [x2, #0xb60]
    // 0x7e8eac: ArrayStore: r1[0] = r2  ; List_4
    //     0x7e8eac: stur            w2, [x1, #0x17]
    // 0x7e8eb0: r2 = Instance_CrossAxisAlignment
    //     0x7e8eb0: add             x2, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e8eb4: ldr             x2, [x2, #0x238]
    // 0x7e8eb8: StoreField: r1->field_1b = r2
    //     0x7e8eb8: stur            w2, [x1, #0x1b]
    // 0x7e8ebc: r2 = Instance_VerticalDirection
    //     0x7e8ebc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e8ec0: ldr             x2, [x2, #0x340]
    // 0x7e8ec4: StoreField: r1->field_23 = r2
    //     0x7e8ec4: stur            w2, [x1, #0x23]
    // 0x7e8ec8: r2 = Instance_Clip
    //     0x7e8ec8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e8ecc: ldr             x2, [x2, #0x348]
    // 0x7e8ed0: StoreField: r1->field_2b = r2
    //     0x7e8ed0: stur            w2, [x1, #0x2b]
    // 0x7e8ed4: StoreField: r1->field_2f = rZR
    //     0x7e8ed4: stur            xzr, [x1, #0x2f]
    // 0x7e8ed8: ldur            x2, [fp, #-0x18]
    // 0x7e8edc: StoreField: r1->field_b = r2
    //     0x7e8edc: stur            w2, [x1, #0xb]
    // 0x7e8ee0: r0 = SingleChildScrollView()
    //     0x7e8ee0: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x7e8ee4: mov             x3, x0
    // 0x7e8ee8: r0 = Instance_Axis
    //     0x7e8ee8: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e8eec: stur            x3, [fp, #-0x18]
    // 0x7e8ef0: StoreField: r3->field_b = r0
    //     0x7e8ef0: stur            w0, [x3, #0xb]
    // 0x7e8ef4: r0 = false
    //     0x7e8ef4: add             x0, NULL, #0x30  ; false
    // 0x7e8ef8: StoreField: r3->field_f = r0
    //     0x7e8ef8: stur            w0, [x3, #0xf]
    // 0x7e8efc: ldur            x1, [fp, #-0x10]
    // 0x7e8f00: StoreField: r3->field_23 = r1
    //     0x7e8f00: stur            w1, [x3, #0x23]
    // 0x7e8f04: r1 = Instance_DragStartBehavior
    //     0x7e8f04: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7e8f08: StoreField: r3->field_27 = r1
    //     0x7e8f08: stur            w1, [x3, #0x27]
    // 0x7e8f0c: r1 = Instance_Clip
    //     0x7e8f0c: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x7e8f10: ldr             x1, [x1, #0x2d8]
    // 0x7e8f14: StoreField: r3->field_2b = r1
    //     0x7e8f14: stur            w1, [x3, #0x2b]
    // 0x7e8f18: r1 = Instance_HitTestBehavior
    //     0x7e8f18: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x7e8f1c: ldr             x1, [x1, #0xe20]
    // 0x7e8f20: StoreField: r3->field_2f = r1
    //     0x7e8f20: stur            w1, [x3, #0x2f]
    // 0x7e8f24: ldur            x4, [fp, #-8]
    // 0x7e8f28: LoadField: r5 = r4->field_f
    //     0x7e8f28: ldur            w5, [x4, #0xf]
    // 0x7e8f2c: DecompressPointer r5
    //     0x7e8f2c: add             x5, x5, HEAP, lsl #32
    // 0x7e8f30: stur            x5, [fp, #-0x10]
    // 0x7e8f34: r1 = _ConstMap len:12
    //     0x7e8f34: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e8f38: r2 = 1200
    //     0x7e8f38: mov             x2, #0x4b0
    // 0x7e8f3c: r0 = []()
    //     0x7e8f3c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e8f40: stur            x0, [fp, #-0x20]
    // 0x7e8f44: cmp             w0, NULL
    // 0x7e8f48: b.eq            #0x7e9098
    // 0x7e8f4c: r0 = TextStyle()
    //     0x7e8f4c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e8f50: mov             x1, x0
    // 0x7e8f54: r0 = true
    //     0x7e8f54: add             x0, NULL, #0x20  ; true
    // 0x7e8f58: stur            x1, [fp, #-0x28]
    // 0x7e8f5c: StoreField: r1->field_7 = r0
    //     0x7e8f5c: stur            w0, [x1, #7]
    // 0x7e8f60: ldur            x2, [fp, #-0x20]
    // 0x7e8f64: StoreField: r1->field_b = r2
    //     0x7e8f64: stur            w2, [x1, #0xb]
    // 0x7e8f68: r0 = Text()
    //     0x7e8f68: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e8f6c: mov             x1, x0
    // 0x7e8f70: r0 = "Reddet"
    //     0x7e8f70: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c088] "Reddet"
    //     0x7e8f74: ldr             x0, [x0, #0x88]
    // 0x7e8f78: stur            x1, [fp, #-0x20]
    // 0x7e8f7c: StoreField: r1->field_b = r0
    //     0x7e8f7c: stur            w0, [x1, #0xb]
    // 0x7e8f80: ldur            x0, [fp, #-0x28]
    // 0x7e8f84: StoreField: r1->field_13 = r0
    //     0x7e8f84: stur            w0, [x1, #0x13]
    // 0x7e8f88: r0 = TextButton()
    //     0x7e8f88: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7e8f8c: mov             x1, x0
    // 0x7e8f90: ldur            x0, [fp, #-0x10]
    // 0x7e8f94: stur            x1, [fp, #-0x28]
    // 0x7e8f98: StoreField: r1->field_b = r0
    //     0x7e8f98: stur            w0, [x1, #0xb]
    // 0x7e8f9c: r0 = false
    //     0x7e8f9c: add             x0, NULL, #0x30  ; false
    // 0x7e8fa0: StoreField: r1->field_27 = r0
    //     0x7e8fa0: stur            w0, [x1, #0x27]
    // 0x7e8fa4: r2 = true
    //     0x7e8fa4: add             x2, NULL, #0x20  ; true
    // 0x7e8fa8: StoreField: r1->field_2f = r2
    //     0x7e8fa8: stur            w2, [x1, #0x2f]
    // 0x7e8fac: ldur            x3, [fp, #-0x20]
    // 0x7e8fb0: StoreField: r1->field_37 = r3
    //     0x7e8fb0: stur            w3, [x1, #0x37]
    // 0x7e8fb4: ldur            x3, [fp, #-8]
    // 0x7e8fb8: LoadField: r4 = r3->field_b
    //     0x7e8fb8: ldur            w4, [x3, #0xb]
    // 0x7e8fbc: DecompressPointer r4
    //     0x7e8fbc: add             x4, x4, HEAP, lsl #32
    // 0x7e8fc0: stur            x4, [fp, #-0x10]
    // 0x7e8fc4: r16 = Instance_Color
    //     0x7e8fc4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e8fc8: ldr             x16, [x16, #0xb78]
    // 0x7e8fcc: str             x16, [SP]
    // 0x7e8fd0: r4 = const [0, 0x1, 0x1, 0, backgroundColor, 0, null]
    //     0x7e8fd0: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c090] List(7) [0, 0x1, 0x1, 0, "backgroundColor", 0, Null]
    //     0x7e8fd4: ldr             x4, [x4, #0x90]
    // 0x7e8fd8: r0 = styleFrom()
    //     0x7e8fd8: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7e8fdc: stur            x0, [fp, #-8]
    // 0x7e8fe0: r0 = ElevatedButton()
    //     0x7e8fe0: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7e8fe4: mov             x3, x0
    // 0x7e8fe8: ldur            x0, [fp, #-0x10]
    // 0x7e8fec: stur            x3, [fp, #-0x20]
    // 0x7e8ff0: StoreField: r3->field_b = r0
    //     0x7e8ff0: stur            w0, [x3, #0xb]
    // 0x7e8ff4: ldur            x0, [fp, #-8]
    // 0x7e8ff8: StoreField: r3->field_1b = r0
    //     0x7e8ff8: stur            w0, [x3, #0x1b]
    // 0x7e8ffc: r0 = false
    //     0x7e8ffc: add             x0, NULL, #0x30  ; false
    // 0x7e9000: StoreField: r3->field_27 = r0
    //     0x7e9000: stur            w0, [x3, #0x27]
    // 0x7e9004: r1 = true
    //     0x7e9004: add             x1, NULL, #0x20  ; true
    // 0x7e9008: StoreField: r3->field_2f = r1
    //     0x7e9008: stur            w1, [x3, #0x2f]
    // 0x7e900c: r1 = Instance_Text
    //     0x7e900c: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c098] Obj!Text@a1dc01
    //     0x7e9010: ldr             x1, [x1, #0x98]
    // 0x7e9014: StoreField: r3->field_37 = r1
    //     0x7e9014: stur            w1, [x3, #0x37]
    // 0x7e9018: r1 = Null
    //     0x7e9018: mov             x1, NULL
    // 0x7e901c: r2 = 4
    //     0x7e901c: mov             x2, #4
    // 0x7e9020: r0 = AllocateArray()
    //     0x7e9020: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e9024: mov             x2, x0
    // 0x7e9028: ldur            x0, [fp, #-0x28]
    // 0x7e902c: stur            x2, [fp, #-8]
    // 0x7e9030: StoreField: r2->field_f = r0
    //     0x7e9030: stur            w0, [x2, #0xf]
    // 0x7e9034: ldur            x0, [fp, #-0x20]
    // 0x7e9038: StoreField: r2->field_13 = r0
    //     0x7e9038: stur            w0, [x2, #0x13]
    // 0x7e903c: r1 = <Widget>
    //     0x7e903c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e9040: r0 = AllocateGrowableArray()
    //     0x7e9040: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e9044: mov             x1, x0
    // 0x7e9048: ldur            x0, [fp, #-8]
    // 0x7e904c: stur            x1, [fp, #-0x10]
    // 0x7e9050: StoreField: r1->field_f = r0
    //     0x7e9050: stur            w0, [x1, #0xf]
    // 0x7e9054: r0 = 4
    //     0x7e9054: mov             x0, #4
    // 0x7e9058: StoreField: r1->field_b = r0
    //     0x7e9058: stur            w0, [x1, #0xb]
    // 0x7e905c: r0 = AlertDialog()
    //     0x7e905c: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7e9060: r1 = Instance_Text
    //     0x7e9060: add             x1, PP, #0x1c, lsl #12  ; [pp+0x1c0a0] Obj!Text@a1dbb1
    //     0x7e9064: ldr             x1, [x1, #0xa0]
    // 0x7e9068: StoreField: r0->field_f = r1
    //     0x7e9068: stur            w1, [x0, #0xf]
    // 0x7e906c: ldur            x1, [fp, #-0x18]
    // 0x7e9070: StoreField: r0->field_1b = r1
    //     0x7e9070: stur            w1, [x0, #0x1b]
    // 0x7e9074: ldur            x1, [fp, #-0x10]
    // 0x7e9078: StoreField: r0->field_27 = r1
    //     0x7e9078: stur            w1, [x0, #0x27]
    // 0x7e907c: r1 = false
    //     0x7e907c: add             x1, NULL, #0x30  ; false
    // 0x7e9080: StoreField: r0->field_6b = r1
    //     0x7e9080: stur            w1, [x0, #0x6b]
    // 0x7e9084: LeaveFrame
    //     0x7e9084: mov             SP, fp
    //     0x7e9088: ldp             fp, lr, [SP], #0x10
    // 0x7e908c: ret
    //     0x7e908c: ret             
    // 0x7e9090: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e9090: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e9094: b               #0x7e8b90
    // 0x7e9098: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e9098: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}
