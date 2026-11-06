// lib: , url: package:umrem_demo/features/admin/widgets/agency_card.dart

// class id: 1049541, size: 0x8
class :: {
}

// class id: 2923, size: 0x14, field offset: 0xc
//   const constructor, 
class _InfoChipSmall extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e3118, size: 0x198
    // 0x7e3118: EnterFrame
    //     0x7e3118: stp             fp, lr, [SP, #-0x10]!
    //     0x7e311c: mov             fp, SP
    // 0x7e3120: AllocStack(0x20)
    //     0x7e3120: sub             SP, SP, #0x20
    // 0x7e3124: SetupParameters(_InfoChipSmall this /* r1 => r0, fp-0x10 */)
    //     0x7e3124: mov             x0, x1
    //     0x7e3128: stur            x1, [fp, #-0x10]
    // 0x7e312c: CheckStackOverflow
    //     0x7e312c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e3130: cmp             SP, x16
    //     0x7e3134: b.ls            #0x7e32a0
    // 0x7e3138: LoadField: r3 = r0->field_b
    //     0x7e3138: ldur            w3, [x0, #0xb]
    // 0x7e313c: DecompressPointer r3
    //     0x7e313c: add             x3, x3, HEAP, lsl #32
    // 0x7e3140: stur            x3, [fp, #-8]
    // 0x7e3144: r1 = _ConstMap len:12
    //     0x7e3144: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e3148: r2 = 1200
    //     0x7e3148: mov             x2, #0x4b0
    // 0x7e314c: r0 = []()
    //     0x7e314c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e3150: stur            x0, [fp, #-0x18]
    // 0x7e3154: cmp             w0, NULL
    // 0x7e3158: b.eq            #0x7e32a8
    // 0x7e315c: r0 = Icon()
    //     0x7e315c: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e3160: mov             x3, x0
    // 0x7e3164: ldur            x0, [fp, #-8]
    // 0x7e3168: stur            x3, [fp, #-0x20]
    // 0x7e316c: StoreField: r3->field_b = r0
    //     0x7e316c: stur            w0, [x3, #0xb]
    // 0x7e3170: r0 = 14.000000
    //     0x7e3170: add             x0, PP, #0x11, lsl #12  ; [pp+0x111c8] 14
    //     0x7e3174: ldr             x0, [x0, #0x1c8]
    // 0x7e3178: StoreField: r3->field_f = r0
    //     0x7e3178: stur            w0, [x3, #0xf]
    // 0x7e317c: ldur            x0, [fp, #-0x18]
    // 0x7e3180: StoreField: r3->field_23 = r0
    //     0x7e3180: stur            w0, [x3, #0x23]
    // 0x7e3184: ldur            x0, [fp, #-0x10]
    // 0x7e3188: LoadField: r4 = r0->field_f
    //     0x7e3188: ldur            w4, [x0, #0xf]
    // 0x7e318c: DecompressPointer r4
    //     0x7e318c: add             x4, x4, HEAP, lsl #32
    // 0x7e3190: stur            x4, [fp, #-8]
    // 0x7e3194: r1 = _ConstMap len:12
    //     0x7e3194: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e3198: r2 = 1200
    //     0x7e3198: mov             x2, #0x4b0
    // 0x7e319c: r0 = []()
    //     0x7e319c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e31a0: stur            x0, [fp, #-0x10]
    // 0x7e31a4: cmp             w0, NULL
    // 0x7e31a8: b.eq            #0x7e32ac
    // 0x7e31ac: r0 = TextStyle()
    //     0x7e31ac: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e31b0: mov             x1, x0
    // 0x7e31b4: r0 = true
    //     0x7e31b4: add             x0, NULL, #0x20  ; true
    // 0x7e31b8: stur            x1, [fp, #-0x18]
    // 0x7e31bc: StoreField: r1->field_7 = r0
    //     0x7e31bc: stur            w0, [x1, #7]
    // 0x7e31c0: ldur            x0, [fp, #-0x10]
    // 0x7e31c4: StoreField: r1->field_b = r0
    //     0x7e31c4: stur            w0, [x1, #0xb]
    // 0x7e31c8: r0 = 12.000000
    //     0x7e31c8: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7e31cc: ldr             x0, [x0, #0xae0]
    // 0x7e31d0: StoreField: r1->field_1f = r0
    //     0x7e31d0: stur            w0, [x1, #0x1f]
    // 0x7e31d4: r0 = Text()
    //     0x7e31d4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e31d8: mov             x3, x0
    // 0x7e31dc: ldur            x0, [fp, #-8]
    // 0x7e31e0: stur            x3, [fp, #-0x10]
    // 0x7e31e4: StoreField: r3->field_b = r0
    //     0x7e31e4: stur            w0, [x3, #0xb]
    // 0x7e31e8: ldur            x0, [fp, #-0x18]
    // 0x7e31ec: StoreField: r3->field_13 = r0
    //     0x7e31ec: stur            w0, [x3, #0x13]
    // 0x7e31f0: r1 = Null
    //     0x7e31f0: mov             x1, NULL
    // 0x7e31f4: r2 = 6
    //     0x7e31f4: mov             x2, #6
    // 0x7e31f8: r0 = AllocateArray()
    //     0x7e31f8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e31fc: mov             x2, x0
    // 0x7e3200: ldur            x0, [fp, #-0x20]
    // 0x7e3204: stur            x2, [fp, #-8]
    // 0x7e3208: StoreField: r2->field_f = r0
    //     0x7e3208: stur            w0, [x2, #0xf]
    // 0x7e320c: r16 = Instance_SizedBox
    //     0x7e320c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14f68] Obj!SizedBox@a1fb51
    //     0x7e3210: ldr             x16, [x16, #0xf68]
    // 0x7e3214: StoreField: r2->field_13 = r16
    //     0x7e3214: stur            w16, [x2, #0x13]
    // 0x7e3218: ldur            x0, [fp, #-0x10]
    // 0x7e321c: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e321c: stur            w0, [x2, #0x17]
    // 0x7e3220: r1 = <Widget>
    //     0x7e3220: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e3224: r0 = AllocateGrowableArray()
    //     0x7e3224: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e3228: mov             x1, x0
    // 0x7e322c: ldur            x0, [fp, #-8]
    // 0x7e3230: stur            x1, [fp, #-0x10]
    // 0x7e3234: StoreField: r1->field_f = r0
    //     0x7e3234: stur            w0, [x1, #0xf]
    // 0x7e3238: r0 = 6
    //     0x7e3238: mov             x0, #6
    // 0x7e323c: StoreField: r1->field_b = r0
    //     0x7e323c: stur            w0, [x1, #0xb]
    // 0x7e3240: r0 = Row()
    //     0x7e3240: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e3244: r1 = Instance_Axis
    //     0x7e3244: ldr             x1, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e3248: StoreField: r0->field_f = r1
    //     0x7e3248: stur            w1, [x0, #0xf]
    // 0x7e324c: r1 = Instance_MainAxisAlignment
    //     0x7e324c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e3250: ldr             x1, [x1, #0x230]
    // 0x7e3254: StoreField: r0->field_13 = r1
    //     0x7e3254: stur            w1, [x0, #0x13]
    // 0x7e3258: r1 = Instance_MainAxisSize
    //     0x7e3258: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x7e325c: ldr             x1, [x1, #0xb60]
    // 0x7e3260: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e3260: stur            w1, [x0, #0x17]
    // 0x7e3264: r1 = Instance_CrossAxisAlignment
    //     0x7e3264: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e3268: ldr             x1, [x1, #0x338]
    // 0x7e326c: StoreField: r0->field_1b = r1
    //     0x7e326c: stur            w1, [x0, #0x1b]
    // 0x7e3270: r1 = Instance_VerticalDirection
    //     0x7e3270: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e3274: ldr             x1, [x1, #0x340]
    // 0x7e3278: StoreField: r0->field_23 = r1
    //     0x7e3278: stur            w1, [x0, #0x23]
    // 0x7e327c: r1 = Instance_Clip
    //     0x7e327c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e3280: ldr             x1, [x1, #0x348]
    // 0x7e3284: StoreField: r0->field_2b = r1
    //     0x7e3284: stur            w1, [x0, #0x2b]
    // 0x7e3288: StoreField: r0->field_2f = rZR
    //     0x7e3288: stur            xzr, [x0, #0x2f]
    // 0x7e328c: ldur            x1, [fp, #-0x10]
    // 0x7e3290: StoreField: r0->field_b = r1
    //     0x7e3290: stur            w1, [x0, #0xb]
    // 0x7e3294: LeaveFrame
    //     0x7e3294: mov             SP, fp
    //     0x7e3298: ldp             fp, lr, [SP], #0x10
    // 0x7e329c: ret
    //     0x7e329c: ret             
    // 0x7e32a0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e32a0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e32a4: b               #0x7e3138
    // 0x7e32a8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e32a8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e32ac: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e32ac: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}

// class id: 2924, size: 0x1c, field offset: 0xc
//   const constructor, 
class AgencyCard extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7e21c4, size: 0x370
    // 0x7e21c4: EnterFrame
    //     0x7e21c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7e21c8: mov             fp, SP
    // 0x7e21cc: AllocStack(0x38)
    //     0x7e21cc: sub             SP, SP, #0x38
    // 0x7e21d0: SetupParameters(AgencyCard this /* r1 => r1, fp-0x8 */)
    //     0x7e21d0: stur            x1, [fp, #-8]
    // 0x7e21d4: CheckStackOverflow
    //     0x7e21d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e21d8: cmp             SP, x16
    //     0x7e21dc: b.ls            #0x7e252c
    // 0x7e21e0: r0 = Radius()
    //     0x7e21e0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e21e4: d0 = 12.000000
    //     0x7e21e4: fmov            d0, #12.00000000
    // 0x7e21e8: stur            x0, [fp, #-0x10]
    // 0x7e21ec: StoreField: r0->field_7 = d0
    //     0x7e21ec: stur            d0, [x0, #7]
    // 0x7e21f0: StoreField: r0->field_f = d0
    //     0x7e21f0: stur            d0, [x0, #0xf]
    // 0x7e21f4: r0 = BorderRadius()
    //     0x7e21f4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e21f8: mov             x1, x0
    // 0x7e21fc: ldur            x0, [fp, #-0x10]
    // 0x7e2200: stur            x1, [fp, #-0x18]
    // 0x7e2204: StoreField: r1->field_7 = r0
    //     0x7e2204: stur            w0, [x1, #7]
    // 0x7e2208: StoreField: r1->field_b = r0
    //     0x7e2208: stur            w0, [x1, #0xb]
    // 0x7e220c: StoreField: r1->field_f = r0
    //     0x7e220c: stur            w0, [x1, #0xf]
    // 0x7e2210: StoreField: r1->field_13 = r0
    //     0x7e2210: stur            w0, [x1, #0x13]
    // 0x7e2214: r0 = RoundedRectangleBorder()
    //     0x7e2214: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x7e2218: mov             x1, x0
    // 0x7e221c: ldur            x0, [fp, #-0x18]
    // 0x7e2220: stur            x1, [fp, #-0x20]
    // 0x7e2224: StoreField: r1->field_b = r0
    //     0x7e2224: stur            w0, [x1, #0xb]
    // 0x7e2228: r0 = Instance_BorderSide
    //     0x7e2228: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7e222c: ldr             x0, [x0, #0xcb8]
    // 0x7e2230: StoreField: r1->field_7 = r0
    //     0x7e2230: stur            w0, [x1, #7]
    // 0x7e2234: ldur            x0, [fp, #-8]
    // 0x7e2238: LoadField: r2 = r0->field_f
    //     0x7e2238: ldur            w2, [x0, #0xf]
    // 0x7e223c: DecompressPointer r2
    //     0x7e223c: add             x2, x2, HEAP, lsl #32
    // 0x7e2240: stur            x2, [fp, #-0x10]
    // 0x7e2244: r0 = Radius()
    //     0x7e2244: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e2248: d0 = 12.000000
    //     0x7e2248: fmov            d0, #12.00000000
    // 0x7e224c: stur            x0, [fp, #-0x18]
    // 0x7e2250: StoreField: r0->field_7 = d0
    //     0x7e2250: stur            d0, [x0, #7]
    // 0x7e2254: StoreField: r0->field_f = d0
    //     0x7e2254: stur            d0, [x0, #0xf]
    // 0x7e2258: r0 = BorderRadius()
    //     0x7e2258: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e225c: mov             x2, x0
    // 0x7e2260: ldur            x0, [fp, #-0x18]
    // 0x7e2264: stur            x2, [fp, #-0x28]
    // 0x7e2268: StoreField: r2->field_7 = r0
    //     0x7e2268: stur            w0, [x2, #7]
    // 0x7e226c: StoreField: r2->field_b = r0
    //     0x7e226c: stur            w0, [x2, #0xb]
    // 0x7e2270: StoreField: r2->field_f = r0
    //     0x7e2270: stur            w0, [x2, #0xf]
    // 0x7e2274: StoreField: r2->field_13 = r0
    //     0x7e2274: stur            w0, [x2, #0x13]
    // 0x7e2278: ldur            x1, [fp, #-8]
    // 0x7e227c: r0 = _buildHeader()
    //     0x7e227c: bl              #0x7e2b44  ; [package:umrem_demo/features/admin/widgets/agency_card.dart] AgencyCard::_buildHeader
    // 0x7e2280: r1 = Null
    //     0x7e2280: mov             x1, NULL
    // 0x7e2284: r2 = 2
    //     0x7e2284: mov             x2, #2
    // 0x7e2288: stur            x0, [fp, #-0x18]
    // 0x7e228c: r0 = AllocateArray()
    //     0x7e228c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e2290: mov             x2, x0
    // 0x7e2294: ldur            x0, [fp, #-0x18]
    // 0x7e2298: stur            x2, [fp, #-0x30]
    // 0x7e229c: StoreField: r2->field_f = r0
    //     0x7e229c: stur            w0, [x2, #0xf]
    // 0x7e22a0: r1 = <Widget>
    //     0x7e22a0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e22a4: r0 = AllocateGrowableArray()
    //     0x7e22a4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e22a8: mov             x2, x0
    // 0x7e22ac: ldur            x0, [fp, #-0x30]
    // 0x7e22b0: stur            x2, [fp, #-0x18]
    // 0x7e22b4: StoreField: r2->field_f = r0
    //     0x7e22b4: stur            w0, [x2, #0xf]
    // 0x7e22b8: r0 = 2
    //     0x7e22b8: mov             x0, #2
    // 0x7e22bc: StoreField: r2->field_b = r0
    //     0x7e22bc: stur            w0, [x2, #0xb]
    // 0x7e22c0: ldur            x0, [fp, #-8]
    // 0x7e22c4: LoadField: r1 = r0->field_b
    //     0x7e22c4: ldur            w1, [x0, #0xb]
    // 0x7e22c8: DecompressPointer r1
    //     0x7e22c8: add             x1, x1, HEAP, lsl #32
    // 0x7e22cc: LoadField: r3 = r1->field_13
    //     0x7e22cc: ldur            w3, [x1, #0x13]
    // 0x7e22d0: DecompressPointer r3
    //     0x7e22d0: add             x3, x3, HEAP, lsl #32
    // 0x7e22d4: cmp             w3, NULL
    // 0x7e22d8: b.eq            #0x7e22e4
    // 0x7e22dc: LoadField: r4 = r3->field_7
    //     0x7e22dc: ldur            w4, [x3, #7]
    // 0x7e22e0: cbnz            w4, #0x7e22fc
    // 0x7e22e4: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x7e22e4: ldur            w3, [x1, #0x17]
    // 0x7e22e8: DecompressPointer r3
    //     0x7e22e8: add             x3, x3, HEAP, lsl #32
    // 0x7e22ec: cmp             w3, NULL
    // 0x7e22f0: b.eq            #0x7e2384
    // 0x7e22f4: LoadField: r1 = r3->field_7
    //     0x7e22f4: ldur            w1, [x3, #7]
    // 0x7e22f8: cbz             w1, #0x7e2384
    // 0x7e22fc: mov             x1, x0
    // 0x7e2300: r0 = _buildContactInfo()
    //     0x7e2300: bl              #0x7e2854  ; [package:umrem_demo/features/admin/widgets/agency_card.dart] AgencyCard::_buildContactInfo
    // 0x7e2304: mov             x2, x0
    // 0x7e2308: ldur            x0, [fp, #-0x18]
    // 0x7e230c: stur            x2, [fp, #-0x30]
    // 0x7e2310: LoadField: r1 = r0->field_b
    //     0x7e2310: ldur            w1, [x0, #0xb]
    // 0x7e2314: LoadField: r3 = r0->field_f
    //     0x7e2314: ldur            w3, [x0, #0xf]
    // 0x7e2318: DecompressPointer r3
    //     0x7e2318: add             x3, x3, HEAP, lsl #32
    // 0x7e231c: LoadField: r4 = r3->field_b
    //     0x7e231c: ldur            w4, [x3, #0xb]
    // 0x7e2320: r3 = LoadInt32Instr(r1)
    //     0x7e2320: sbfx            x3, x1, #1, #0x1f
    // 0x7e2324: stur            x3, [fp, #-0x38]
    // 0x7e2328: r1 = LoadInt32Instr(r4)
    //     0x7e2328: sbfx            x1, x4, #1, #0x1f
    // 0x7e232c: cmp             x3, x1
    // 0x7e2330: b.ne            #0x7e233c
    // 0x7e2334: mov             x1, x0
    // 0x7e2338: r0 = _growToNextCapacity()
    //     0x7e2338: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e233c: ldur            x2, [fp, #-0x18]
    // 0x7e2340: ldur            x3, [fp, #-0x38]
    // 0x7e2344: add             x0, x3, #1
    // 0x7e2348: lsl             x1, x0, #1
    // 0x7e234c: StoreField: r2->field_b = r1
    //     0x7e234c: stur            w1, [x2, #0xb]
    // 0x7e2350: LoadField: r1 = r2->field_f
    //     0x7e2350: ldur            w1, [x2, #0xf]
    // 0x7e2354: DecompressPointer r1
    //     0x7e2354: add             x1, x1, HEAP, lsl #32
    // 0x7e2358: ldur            x0, [fp, #-0x30]
    // 0x7e235c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e235c: add             x25, x1, x3, lsl #2
    //     0x7e2360: add             x25, x25, #0xf
    //     0x7e2364: str             w0, [x25]
    //     0x7e2368: tbz             w0, #0, #0x7e2384
    //     0x7e236c: ldurb           w16, [x1, #-1]
    //     0x7e2370: ldurb           w17, [x0, #-1]
    //     0x7e2374: and             x16, x17, x16, lsr #2
    //     0x7e2378: tst             x16, HEAP, lsr #32
    //     0x7e237c: b.eq            #0x7e2384
    //     0x7e2380: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e2384: ldur            x1, [fp, #-8]
    // 0x7e2388: r0 = _buildActions()
    //     0x7e2388: bl              #0x7e2534  ; [package:umrem_demo/features/admin/widgets/agency_card.dart] AgencyCard::_buildActions
    // 0x7e238c: mov             x2, x0
    // 0x7e2390: ldur            x0, [fp, #-0x18]
    // 0x7e2394: stur            x2, [fp, #-8]
    // 0x7e2398: LoadField: r1 = r0->field_b
    //     0x7e2398: ldur            w1, [x0, #0xb]
    // 0x7e239c: LoadField: r3 = r0->field_f
    //     0x7e239c: ldur            w3, [x0, #0xf]
    // 0x7e23a0: DecompressPointer r3
    //     0x7e23a0: add             x3, x3, HEAP, lsl #32
    // 0x7e23a4: LoadField: r4 = r3->field_b
    //     0x7e23a4: ldur            w4, [x3, #0xb]
    // 0x7e23a8: r3 = LoadInt32Instr(r1)
    //     0x7e23a8: sbfx            x3, x1, #1, #0x1f
    // 0x7e23ac: stur            x3, [fp, #-0x38]
    // 0x7e23b0: r1 = LoadInt32Instr(r4)
    //     0x7e23b0: sbfx            x1, x4, #1, #0x1f
    // 0x7e23b4: cmp             x3, x1
    // 0x7e23b8: b.ne            #0x7e23c4
    // 0x7e23bc: mov             x1, x0
    // 0x7e23c0: r0 = _growToNextCapacity()
    //     0x7e23c0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e23c4: ldur            x5, [fp, #-0x20]
    // 0x7e23c8: ldur            x4, [fp, #-0x28]
    // 0x7e23cc: ldur            x6, [fp, #-0x10]
    // 0x7e23d0: ldur            x2, [fp, #-0x18]
    // 0x7e23d4: ldur            x3, [fp, #-0x38]
    // 0x7e23d8: add             x0, x3, #1
    // 0x7e23dc: lsl             x1, x0, #1
    // 0x7e23e0: StoreField: r2->field_b = r1
    //     0x7e23e0: stur            w1, [x2, #0xb]
    // 0x7e23e4: LoadField: r1 = r2->field_f
    //     0x7e23e4: ldur            w1, [x2, #0xf]
    // 0x7e23e8: DecompressPointer r1
    //     0x7e23e8: add             x1, x1, HEAP, lsl #32
    // 0x7e23ec: ldur            x0, [fp, #-8]
    // 0x7e23f0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e23f0: add             x25, x1, x3, lsl #2
    //     0x7e23f4: add             x25, x25, #0xf
    //     0x7e23f8: str             w0, [x25]
    //     0x7e23fc: tbz             w0, #0, #0x7e2418
    //     0x7e2400: ldurb           w16, [x1, #-1]
    //     0x7e2404: ldurb           w17, [x0, #-1]
    //     0x7e2408: and             x16, x17, x16, lsr #2
    //     0x7e240c: tst             x16, HEAP, lsr #32
    //     0x7e2410: b.eq            #0x7e2418
    //     0x7e2414: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e2418: r0 = Column()
    //     0x7e2418: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e241c: mov             x1, x0
    // 0x7e2420: r0 = Instance_Axis
    //     0x7e2420: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e2424: stur            x1, [fp, #-8]
    // 0x7e2428: StoreField: r1->field_f = r0
    //     0x7e2428: stur            w0, [x1, #0xf]
    // 0x7e242c: r0 = Instance_MainAxisAlignment
    //     0x7e242c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e2430: ldr             x0, [x0, #0x230]
    // 0x7e2434: StoreField: r1->field_13 = r0
    //     0x7e2434: stur            w0, [x1, #0x13]
    // 0x7e2438: r0 = Instance_MainAxisSize
    //     0x7e2438: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e243c: ldr             x0, [x0, #0x330]
    // 0x7e2440: ArrayStore: r1[0] = r0  ; List_4
    //     0x7e2440: stur            w0, [x1, #0x17]
    // 0x7e2444: r0 = Instance_CrossAxisAlignment
    //     0x7e2444: add             x0, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e2448: ldr             x0, [x0, #0x238]
    // 0x7e244c: StoreField: r1->field_1b = r0
    //     0x7e244c: stur            w0, [x1, #0x1b]
    // 0x7e2450: r0 = Instance_VerticalDirection
    //     0x7e2450: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2454: ldr             x0, [x0, #0x340]
    // 0x7e2458: StoreField: r1->field_23 = r0
    //     0x7e2458: stur            w0, [x1, #0x23]
    // 0x7e245c: r0 = Instance_Clip
    //     0x7e245c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2460: ldr             x0, [x0, #0x348]
    // 0x7e2464: StoreField: r1->field_2b = r0
    //     0x7e2464: stur            w0, [x1, #0x2b]
    // 0x7e2468: StoreField: r1->field_2f = rZR
    //     0x7e2468: stur            xzr, [x1, #0x2f]
    // 0x7e246c: ldur            x0, [fp, #-0x18]
    // 0x7e2470: StoreField: r1->field_b = r0
    //     0x7e2470: stur            w0, [x1, #0xb]
    // 0x7e2474: r0 = Padding()
    //     0x7e2474: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7e2478: mov             x1, x0
    // 0x7e247c: r0 = Instance_EdgeInsets
    //     0x7e247c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x7e2480: ldr             x0, [x0, #0x240]
    // 0x7e2484: stur            x1, [fp, #-0x18]
    // 0x7e2488: StoreField: r1->field_f = r0
    //     0x7e2488: stur            w0, [x1, #0xf]
    // 0x7e248c: ldur            x0, [fp, #-8]
    // 0x7e2490: StoreField: r1->field_b = r0
    //     0x7e2490: stur            w0, [x1, #0xb]
    // 0x7e2494: r0 = InkWell()
    //     0x7e2494: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x7e2498: mov             x1, x0
    // 0x7e249c: ldur            x0, [fp, #-0x18]
    // 0x7e24a0: stur            x1, [fp, #-8]
    // 0x7e24a4: StoreField: r1->field_b = r0
    //     0x7e24a4: stur            w0, [x1, #0xb]
    // 0x7e24a8: ldur            x0, [fp, #-0x10]
    // 0x7e24ac: StoreField: r1->field_f = r0
    //     0x7e24ac: stur            w0, [x1, #0xf]
    // 0x7e24b0: r0 = true
    //     0x7e24b0: add             x0, NULL, #0x20  ; true
    // 0x7e24b4: StoreField: r1->field_47 = r0
    //     0x7e24b4: stur            w0, [x1, #0x47]
    // 0x7e24b8: r2 = Instance_BoxShape
    //     0x7e24b8: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e24bc: ldr             x2, [x2, #0x1c8]
    // 0x7e24c0: StoreField: r1->field_4b = r2
    //     0x7e24c0: stur            w2, [x1, #0x4b]
    // 0x7e24c4: ldur            x2, [fp, #-0x28]
    // 0x7e24c8: StoreField: r1->field_53 = r2
    //     0x7e24c8: stur            w2, [x1, #0x53]
    // 0x7e24cc: StoreField: r1->field_73 = r0
    //     0x7e24cc: stur            w0, [x1, #0x73]
    // 0x7e24d0: r2 = false
    //     0x7e24d0: add             x2, NULL, #0x30  ; false
    // 0x7e24d4: StoreField: r1->field_77 = r2
    //     0x7e24d4: stur            w2, [x1, #0x77]
    // 0x7e24d8: StoreField: r1->field_87 = r0
    //     0x7e24d8: stur            w0, [x1, #0x87]
    // 0x7e24dc: StoreField: r1->field_7f = r2
    //     0x7e24dc: stur            w2, [x1, #0x7f]
    // 0x7e24e0: r0 = Card()
    //     0x7e24e0: bl              #0x6d9f90  ; AllocateCardStub -> Card (size=0x3c)
    // 0x7e24e4: d0 = 2.000000
    //     0x7e24e4: fmov            d0, #2.00000000
    // 0x7e24e8: ArrayStore: r0[0] = d0  ; List_8
    //     0x7e24e8: stur            d0, [x0, #0x17]
    // 0x7e24ec: ldur            x1, [fp, #-0x20]
    // 0x7e24f0: StoreField: r0->field_1f = r1
    //     0x7e24f0: stur            w1, [x0, #0x1f]
    // 0x7e24f4: r1 = true
    //     0x7e24f4: add             x1, NULL, #0x20  ; true
    // 0x7e24f8: StoreField: r0->field_23 = r1
    //     0x7e24f8: stur            w1, [x0, #0x23]
    // 0x7e24fc: r2 = Instance_EdgeInsets
    //     0x7e24fc: add             x2, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x7e2500: ldr             x2, [x2, #0xf18]
    // 0x7e2504: StoreField: r0->field_2b = r2
    //     0x7e2504: stur            w2, [x0, #0x2b]
    // 0x7e2508: ldur            x2, [fp, #-8]
    // 0x7e250c: StoreField: r0->field_33 = r2
    //     0x7e250c: stur            w2, [x0, #0x33]
    // 0x7e2510: StoreField: r0->field_2f = r1
    //     0x7e2510: stur            w1, [x0, #0x2f]
    // 0x7e2514: r1 = Instance__CardVariant
    //     0x7e2514: add             x1, PP, #0x18, lsl #12  ; [pp+0x18d38] Obj!_CardVariant@a2bcd1
    //     0x7e2518: ldr             x1, [x1, #0xd38]
    // 0x7e251c: StoreField: r0->field_37 = r1
    //     0x7e251c: stur            w1, [x0, #0x37]
    // 0x7e2520: LeaveFrame
    //     0x7e2520: mov             SP, fp
    //     0x7e2524: ldp             fp, lr, [SP], #0x10
    // 0x7e2528: ret
    //     0x7e2528: ret             
    // 0x7e252c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e252c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e2530: b               #0x7e21e0
  }
  _ _buildActions(/* No info */) {
    // ** addr: 0x7e2534, size: 0x320
    // 0x7e2534: EnterFrame
    //     0x7e2534: stp             fp, lr, [SP, #-0x10]!
    //     0x7e2538: mov             fp, SP
    // 0x7e253c: AllocStack(0x38)
    //     0x7e253c: sub             SP, SP, #0x38
    // 0x7e2540: SetupParameters(AgencyCard this /* r1 => r0, fp-0x8 */)
    //     0x7e2540: mov             x0, x1
    //     0x7e2544: stur            x1, [fp, #-8]
    // 0x7e2548: CheckStackOverflow
    //     0x7e2548: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e254c: cmp             SP, x16
    //     0x7e2550: b.ls            #0x7e284c
    // 0x7e2554: r1 = <Widget>
    //     0x7e2554: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e2558: r2 = 0
    //     0x7e2558: mov             x2, #0
    // 0x7e255c: r0 = _GrowableList()
    //     0x7e255c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7e2560: mov             x1, x0
    // 0x7e2564: ldur            x0, [fp, #-8]
    // 0x7e2568: stur            x1, [fp, #-0x18]
    // 0x7e256c: LoadField: r5 = r0->field_f
    //     0x7e256c: ldur            w5, [x0, #0xf]
    // 0x7e2570: DecompressPointer r5
    //     0x7e2570: add             x5, x5, HEAP, lsl #32
    // 0x7e2574: stur            x5, [fp, #-0x10]
    // 0x7e2578: r16 = Instance_Color
    //     0x7e2578: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e257c: ldr             x16, [x16, #0xb78]
    // 0x7e2580: str             x16, [SP]
    // 0x7e2584: r4 = const [0, 0x1, 0x1, 0, foregroundColor, 0, null]
    //     0x7e2584: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb8] List(7) [0, 0x1, 0x1, 0, "foregroundColor", 0, Null]
    //     0x7e2588: ldr             x4, [x4, #0xbb8]
    // 0x7e258c: r0 = styleFrom()
    //     0x7e258c: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x7e2590: stur            x0, [fp, #-0x20]
    // 0x7e2594: r0 = _TextButtonWithIcon()
    //     0x7e2594: bl              #0x6d1748  ; Allocate_TextButtonWithIconStub -> _TextButtonWithIcon (size=0x3c)
    // 0x7e2598: mov             x1, x0
    // 0x7e259c: ldur            x5, [fp, #-0x10]
    // 0x7e25a0: ldur            x6, [fp, #-0x20]
    // 0x7e25a4: r2 = Instance_Icon
    //     0x7e25a4: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c438] Obj!Icon@a1efb1
    //     0x7e25a8: ldr             x2, [x2, #0x438]
    // 0x7e25ac: r3 = Instance_Text
    //     0x7e25ac: add             x3, PP, #0x1c, lsl #12  ; [pp+0x1c440] Obj!Text@a1d7f1
    //     0x7e25b0: ldr             x3, [x3, #0x440]
    // 0x7e25b4: stur            x0, [fp, #-0x10]
    // 0x7e25b8: r0 = _TextButtonWithIcon()
    //     0x7e25b8: bl              #0x6d1660  ; [package:flutter/src/material/text_button.dart] _TextButtonWithIcon::_TextButtonWithIcon
    // 0x7e25bc: ldur            x0, [fp, #-0x18]
    // 0x7e25c0: LoadField: r1 = r0->field_b
    //     0x7e25c0: ldur            w1, [x0, #0xb]
    // 0x7e25c4: LoadField: r2 = r0->field_f
    //     0x7e25c4: ldur            w2, [x0, #0xf]
    // 0x7e25c8: DecompressPointer r2
    //     0x7e25c8: add             x2, x2, HEAP, lsl #32
    // 0x7e25cc: LoadField: r3 = r2->field_b
    //     0x7e25cc: ldur            w3, [x2, #0xb]
    // 0x7e25d0: r2 = LoadInt32Instr(r1)
    //     0x7e25d0: sbfx            x2, x1, #1, #0x1f
    // 0x7e25d4: stur            x2, [fp, #-0x28]
    // 0x7e25d8: r1 = LoadInt32Instr(r3)
    //     0x7e25d8: sbfx            x1, x3, #1, #0x1f
    // 0x7e25dc: cmp             x2, x1
    // 0x7e25e0: b.ne            #0x7e25ec
    // 0x7e25e4: mov             x1, x0
    // 0x7e25e8: r0 = _growToNextCapacity()
    //     0x7e25e8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e25ec: ldur            x2, [fp, #-0x18]
    // 0x7e25f0: ldur            x3, [fp, #-0x28]
    // 0x7e25f4: add             x4, x3, #1
    // 0x7e25f8: stur            x4, [fp, #-0x30]
    // 0x7e25fc: lsl             x0, x4, #1
    // 0x7e2600: StoreField: r2->field_b = r0
    //     0x7e2600: stur            w0, [x2, #0xb]
    // 0x7e2604: LoadField: r5 = r2->field_f
    //     0x7e2604: ldur            w5, [x2, #0xf]
    // 0x7e2608: DecompressPointer r5
    //     0x7e2608: add             x5, x5, HEAP, lsl #32
    // 0x7e260c: mov             x1, x5
    // 0x7e2610: ldur            x0, [fp, #-0x10]
    // 0x7e2614: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e2614: add             x25, x1, x3, lsl #2
    //     0x7e2618: add             x25, x25, #0xf
    //     0x7e261c: str             w0, [x25]
    //     0x7e2620: tbz             w0, #0, #0x7e263c
    //     0x7e2624: ldurb           w16, [x1, #-1]
    //     0x7e2628: ldurb           w17, [x0, #-1]
    //     0x7e262c: and             x16, x17, x16, lsr #2
    //     0x7e2630: tst             x16, HEAP, lsr #32
    //     0x7e2634: b.eq            #0x7e263c
    //     0x7e2638: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e263c: LoadField: r0 = r5->field_b
    //     0x7e263c: ldur            w0, [x5, #0xb]
    // 0x7e2640: r1 = LoadInt32Instr(r0)
    //     0x7e2640: sbfx            x1, x0, #1, #0x1f
    // 0x7e2644: cmp             x4, x1
    // 0x7e2648: b.ne            #0x7e2654
    // 0x7e264c: mov             x1, x2
    // 0x7e2650: r0 = _growToNextCapacity()
    //     0x7e2650: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e2654: ldur            x2, [fp, #-8]
    // 0x7e2658: ldur            x1, [fp, #-0x18]
    // 0x7e265c: ldur            x0, [fp, #-0x30]
    // 0x7e2660: add             x3, x0, #1
    // 0x7e2664: lsl             x4, x3, #1
    // 0x7e2668: StoreField: r1->field_b = r4
    //     0x7e2668: stur            w4, [x1, #0xb]
    // 0x7e266c: LoadField: r3 = r1->field_f
    //     0x7e266c: ldur            w3, [x1, #0xf]
    // 0x7e2670: DecompressPointer r3
    //     0x7e2670: add             x3, x3, HEAP, lsl #32
    // 0x7e2674: add             x4, x3, x0, lsl #2
    // 0x7e2678: r16 = Instance_SizedBox
    //     0x7e2678: add             x16, PP, #0x12, lsl #12  ; [pp+0x12368] Obj!SizedBox@a1fab1
    //     0x7e267c: ldr             x16, [x16, #0x368]
    // 0x7e2680: StoreField: r4->field_f = r16
    //     0x7e2680: stur            w16, [x4, #0xf]
    // 0x7e2684: LoadField: r5 = r2->field_13
    //     0x7e2684: ldur            w5, [x2, #0x13]
    // 0x7e2688: DecompressPointer r5
    //     0x7e2688: add             x5, x5, HEAP, lsl #32
    // 0x7e268c: stur            x5, [fp, #-0x10]
    // 0x7e2690: r16 = Instance_MaterialColor
    //     0x7e2690: add             x16, PP, #0x13, lsl #12  ; [pp+0x13b90] Obj!MaterialColor@a25aa1
    //     0x7e2694: ldr             x16, [x16, #0xb90]
    // 0x7e2698: str             x16, [SP]
    // 0x7e269c: r4 = const [0, 0x1, 0x1, 0, foregroundColor, 0, null]
    //     0x7e269c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11bb8] List(7) [0, 0x1, 0x1, 0, "foregroundColor", 0, Null]
    //     0x7e26a0: ldr             x4, [x4, #0xbb8]
    // 0x7e26a4: r0 = styleFrom()
    //     0x7e26a4: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x7e26a8: stur            x0, [fp, #-8]
    // 0x7e26ac: r0 = _TextButtonWithIcon()
    //     0x7e26ac: bl              #0x6d1748  ; Allocate_TextButtonWithIconStub -> _TextButtonWithIcon (size=0x3c)
    // 0x7e26b0: mov             x1, x0
    // 0x7e26b4: ldur            x5, [fp, #-0x10]
    // 0x7e26b8: ldur            x6, [fp, #-8]
    // 0x7e26bc: r2 = Instance_Icon
    //     0x7e26bc: add             x2, PP, #0x1c, lsl #12  ; [pp+0x1c448] Obj!Icon@a1f0b1
    //     0x7e26c0: ldr             x2, [x2, #0x448]
    // 0x7e26c4: r3 = Instance_Text
    //     0x7e26c4: add             x3, PP, #0x14, lsl #12  ; [pp+0x147e0] Obj!Text@a1b1d1
    //     0x7e26c8: ldr             x3, [x3, #0x7e0]
    // 0x7e26cc: stur            x0, [fp, #-8]
    // 0x7e26d0: r0 = _TextButtonWithIcon()
    //     0x7e26d0: bl              #0x6d1660  ; [package:flutter/src/material/text_button.dart] _TextButtonWithIcon::_TextButtonWithIcon
    // 0x7e26d4: ldur            x0, [fp, #-0x18]
    // 0x7e26d8: LoadField: r1 = r0->field_b
    //     0x7e26d8: ldur            w1, [x0, #0xb]
    // 0x7e26dc: LoadField: r2 = r0->field_f
    //     0x7e26dc: ldur            w2, [x0, #0xf]
    // 0x7e26e0: DecompressPointer r2
    //     0x7e26e0: add             x2, x2, HEAP, lsl #32
    // 0x7e26e4: LoadField: r3 = r2->field_b
    //     0x7e26e4: ldur            w3, [x2, #0xb]
    // 0x7e26e8: r2 = LoadInt32Instr(r1)
    //     0x7e26e8: sbfx            x2, x1, #1, #0x1f
    // 0x7e26ec: stur            x2, [fp, #-0x28]
    // 0x7e26f0: r1 = LoadInt32Instr(r3)
    //     0x7e26f0: sbfx            x1, x3, #1, #0x1f
    // 0x7e26f4: cmp             x2, x1
    // 0x7e26f8: b.ne            #0x7e2704
    // 0x7e26fc: mov             x1, x0
    // 0x7e2700: r0 = _growToNextCapacity()
    //     0x7e2700: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e2704: ldur            x2, [fp, #-0x18]
    // 0x7e2708: ldur            x3, [fp, #-0x28]
    // 0x7e270c: add             x0, x3, #1
    // 0x7e2710: lsl             x1, x0, #1
    // 0x7e2714: StoreField: r2->field_b = r1
    //     0x7e2714: stur            w1, [x2, #0xb]
    // 0x7e2718: LoadField: r1 = r2->field_f
    //     0x7e2718: ldur            w1, [x2, #0xf]
    // 0x7e271c: DecompressPointer r1
    //     0x7e271c: add             x1, x1, HEAP, lsl #32
    // 0x7e2720: ldur            x0, [fp, #-8]
    // 0x7e2724: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e2724: add             x25, x1, x3, lsl #2
    //     0x7e2728: add             x25, x25, #0xf
    //     0x7e272c: str             w0, [x25]
    //     0x7e2730: tbz             w0, #0, #0x7e274c
    //     0x7e2734: ldurb           w16, [x1, #-1]
    //     0x7e2738: ldurb           w17, [x0, #-1]
    //     0x7e273c: and             x16, x17, x16, lsr #2
    //     0x7e2740: tst             x16, HEAP, lsr #32
    //     0x7e2744: b.eq            #0x7e274c
    //     0x7e2748: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e274c: r0 = Row()
    //     0x7e274c: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e2750: mov             x3, x0
    // 0x7e2754: r0 = Instance_Axis
    //     0x7e2754: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e2758: stur            x3, [fp, #-8]
    // 0x7e275c: StoreField: r3->field_f = r0
    //     0x7e275c: stur            w0, [x3, #0xf]
    // 0x7e2760: r0 = Instance_MainAxisAlignment
    //     0x7e2760: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1ab28] Obj!MainAxisAlignment@a2a651
    //     0x7e2764: ldr             x0, [x0, #0xb28]
    // 0x7e2768: StoreField: r3->field_13 = r0
    //     0x7e2768: stur            w0, [x3, #0x13]
    // 0x7e276c: r0 = Instance_MainAxisSize
    //     0x7e276c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e2770: ldr             x0, [x0, #0x330]
    // 0x7e2774: ArrayStore: r3[0] = r0  ; List_4
    //     0x7e2774: stur            w0, [x3, #0x17]
    // 0x7e2778: r4 = Instance_CrossAxisAlignment
    //     0x7e2778: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e277c: ldr             x4, [x4, #0x338]
    // 0x7e2780: StoreField: r3->field_1b = r4
    //     0x7e2780: stur            w4, [x3, #0x1b]
    // 0x7e2784: r5 = Instance_VerticalDirection
    //     0x7e2784: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2788: ldr             x5, [x5, #0x340]
    // 0x7e278c: StoreField: r3->field_23 = r5
    //     0x7e278c: stur            w5, [x3, #0x23]
    // 0x7e2790: r6 = Instance_Clip
    //     0x7e2790: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2794: ldr             x6, [x6, #0x348]
    // 0x7e2798: StoreField: r3->field_2b = r6
    //     0x7e2798: stur            w6, [x3, #0x2b]
    // 0x7e279c: StoreField: r3->field_2f = rZR
    //     0x7e279c: stur            xzr, [x3, #0x2f]
    // 0x7e27a0: ldur            x1, [fp, #-0x18]
    // 0x7e27a4: StoreField: r3->field_b = r1
    //     0x7e27a4: stur            w1, [x3, #0xb]
    // 0x7e27a8: r1 = Null
    //     0x7e27a8: mov             x1, NULL
    // 0x7e27ac: r2 = 4
    //     0x7e27ac: mov             x2, #4
    // 0x7e27b0: r0 = AllocateArray()
    //     0x7e27b0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e27b4: stur            x0, [fp, #-0x10]
    // 0x7e27b8: r16 = Instance_SizedBox
    //     0x7e27b8: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7e27bc: ldr             x16, [x16, #0x220]
    // 0x7e27c0: StoreField: r0->field_f = r16
    //     0x7e27c0: stur            w16, [x0, #0xf]
    // 0x7e27c4: ldur            x1, [fp, #-8]
    // 0x7e27c8: StoreField: r0->field_13 = r1
    //     0x7e27c8: stur            w1, [x0, #0x13]
    // 0x7e27cc: r1 = <Widget>
    //     0x7e27cc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e27d0: r0 = AllocateGrowableArray()
    //     0x7e27d0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e27d4: mov             x1, x0
    // 0x7e27d8: ldur            x0, [fp, #-0x10]
    // 0x7e27dc: stur            x1, [fp, #-8]
    // 0x7e27e0: StoreField: r1->field_f = r0
    //     0x7e27e0: stur            w0, [x1, #0xf]
    // 0x7e27e4: r0 = 4
    //     0x7e27e4: mov             x0, #4
    // 0x7e27e8: StoreField: r1->field_b = r0
    //     0x7e27e8: stur            w0, [x1, #0xb]
    // 0x7e27ec: r0 = Column()
    //     0x7e27ec: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e27f0: r1 = Instance_Axis
    //     0x7e27f0: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e27f4: StoreField: r0->field_f = r1
    //     0x7e27f4: stur            w1, [x0, #0xf]
    // 0x7e27f8: r1 = Instance_MainAxisAlignment
    //     0x7e27f8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e27fc: ldr             x1, [x1, #0x230]
    // 0x7e2800: StoreField: r0->field_13 = r1
    //     0x7e2800: stur            w1, [x0, #0x13]
    // 0x7e2804: r1 = Instance_MainAxisSize
    //     0x7e2804: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e2808: ldr             x1, [x1, #0x330]
    // 0x7e280c: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e280c: stur            w1, [x0, #0x17]
    // 0x7e2810: r1 = Instance_CrossAxisAlignment
    //     0x7e2810: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e2814: ldr             x1, [x1, #0x338]
    // 0x7e2818: StoreField: r0->field_1b = r1
    //     0x7e2818: stur            w1, [x0, #0x1b]
    // 0x7e281c: r1 = Instance_VerticalDirection
    //     0x7e281c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2820: ldr             x1, [x1, #0x340]
    // 0x7e2824: StoreField: r0->field_23 = r1
    //     0x7e2824: stur            w1, [x0, #0x23]
    // 0x7e2828: r1 = Instance_Clip
    //     0x7e2828: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e282c: ldr             x1, [x1, #0x348]
    // 0x7e2830: StoreField: r0->field_2b = r1
    //     0x7e2830: stur            w1, [x0, #0x2b]
    // 0x7e2834: StoreField: r0->field_2f = rZR
    //     0x7e2834: stur            xzr, [x0, #0x2f]
    // 0x7e2838: ldur            x1, [fp, #-8]
    // 0x7e283c: StoreField: r0->field_b = r1
    //     0x7e283c: stur            w1, [x0, #0xb]
    // 0x7e2840: LeaveFrame
    //     0x7e2840: mov             SP, fp
    //     0x7e2844: ldp             fp, lr, [SP], #0x10
    // 0x7e2848: ret
    //     0x7e2848: ret             
    // 0x7e284c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e284c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e2850: b               #0x7e2554
  }
  _ _buildContactInfo(/* No info */) {
    // ** addr: 0x7e2854, size: 0x2e4
    // 0x7e2854: EnterFrame
    //     0x7e2854: stp             fp, lr, [SP, #-0x10]!
    //     0x7e2858: mov             fp, SP
    // 0x7e285c: AllocStack(0x28)
    //     0x7e285c: sub             SP, SP, #0x28
    // 0x7e2860: SetupParameters(AgencyCard this /* r1 => r0, fp-0x8 */)
    //     0x7e2860: mov             x0, x1
    //     0x7e2864: stur            x1, [fp, #-8]
    // 0x7e2868: CheckStackOverflow
    //     0x7e2868: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e286c: cmp             SP, x16
    //     0x7e2870: b.ls            #0x7e2b30
    // 0x7e2874: r1 = <Widget>
    //     0x7e2874: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e2878: r2 = 0
    //     0x7e2878: mov             x2, #0
    // 0x7e287c: r0 = _GrowableList()
    //     0x7e287c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7e2880: mov             x1, x0
    // 0x7e2884: ldur            x0, [fp, #-8]
    // 0x7e2888: stur            x1, [fp, #-0x18]
    // 0x7e288c: LoadField: r2 = r0->field_b
    //     0x7e288c: ldur            w2, [x0, #0xb]
    // 0x7e2890: DecompressPointer r2
    //     0x7e2890: add             x2, x2, HEAP, lsl #32
    // 0x7e2894: stur            x2, [fp, #-0x10]
    // 0x7e2898: LoadField: r0 = r2->field_13
    //     0x7e2898: ldur            w0, [x2, #0x13]
    // 0x7e289c: DecompressPointer r0
    //     0x7e289c: add             x0, x0, HEAP, lsl #32
    // 0x7e28a0: stur            x0, [fp, #-8]
    // 0x7e28a4: cmp             w0, NULL
    // 0x7e28a8: b.ne            #0x7e28b4
    // 0x7e28ac: mov             x2, x1
    // 0x7e28b0: b               #0x7e295c
    // 0x7e28b4: LoadField: r3 = r0->field_7
    //     0x7e28b4: ldur            w3, [x0, #7]
    // 0x7e28b8: cbz             w3, #0x7e2958
    // 0x7e28bc: r0 = _InfoChipSmall()
    //     0x7e28bc: bl              #0x7e2b38  ; Allocate_InfoChipSmallStub -> _InfoChipSmall (size=0x14)
    // 0x7e28c0: mov             x2, x0
    // 0x7e28c4: r0 = Instance_IconData
    //     0x7e28c4: add             x0, PP, #0x12, lsl #12  ; [pp+0x12268] Obj!IconData@a09ea1
    //     0x7e28c8: ldr             x0, [x0, #0x268]
    // 0x7e28cc: stur            x2, [fp, #-0x28]
    // 0x7e28d0: StoreField: r2->field_b = r0
    //     0x7e28d0: stur            w0, [x2, #0xb]
    // 0x7e28d4: ldur            x0, [fp, #-8]
    // 0x7e28d8: StoreField: r2->field_f = r0
    //     0x7e28d8: stur            w0, [x2, #0xf]
    // 0x7e28dc: ldur            x0, [fp, #-0x18]
    // 0x7e28e0: LoadField: r1 = r0->field_b
    //     0x7e28e0: ldur            w1, [x0, #0xb]
    // 0x7e28e4: LoadField: r3 = r0->field_f
    //     0x7e28e4: ldur            w3, [x0, #0xf]
    // 0x7e28e8: DecompressPointer r3
    //     0x7e28e8: add             x3, x3, HEAP, lsl #32
    // 0x7e28ec: LoadField: r4 = r3->field_b
    //     0x7e28ec: ldur            w4, [x3, #0xb]
    // 0x7e28f0: r3 = LoadInt32Instr(r1)
    //     0x7e28f0: sbfx            x3, x1, #1, #0x1f
    // 0x7e28f4: stur            x3, [fp, #-0x20]
    // 0x7e28f8: r1 = LoadInt32Instr(r4)
    //     0x7e28f8: sbfx            x1, x4, #1, #0x1f
    // 0x7e28fc: cmp             x3, x1
    // 0x7e2900: b.ne            #0x7e290c
    // 0x7e2904: mov             x1, x0
    // 0x7e2908: r0 = _growToNextCapacity()
    //     0x7e2908: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e290c: ldur            x2, [fp, #-0x18]
    // 0x7e2910: ldur            x3, [fp, #-0x20]
    // 0x7e2914: add             x0, x3, #1
    // 0x7e2918: lsl             x1, x0, #1
    // 0x7e291c: StoreField: r2->field_b = r1
    //     0x7e291c: stur            w1, [x2, #0xb]
    // 0x7e2920: LoadField: r1 = r2->field_f
    //     0x7e2920: ldur            w1, [x2, #0xf]
    // 0x7e2924: DecompressPointer r1
    //     0x7e2924: add             x1, x1, HEAP, lsl #32
    // 0x7e2928: ldur            x0, [fp, #-0x28]
    // 0x7e292c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e292c: add             x25, x1, x3, lsl #2
    //     0x7e2930: add             x25, x25, #0xf
    //     0x7e2934: str             w0, [x25]
    //     0x7e2938: tbz             w0, #0, #0x7e2954
    //     0x7e293c: ldurb           w16, [x1, #-1]
    //     0x7e2940: ldurb           w17, [x0, #-1]
    //     0x7e2944: and             x16, x17, x16, lsr #2
    //     0x7e2948: tst             x16, HEAP, lsr #32
    //     0x7e294c: b.eq            #0x7e2954
    //     0x7e2950: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e2954: b               #0x7e295c
    // 0x7e2958: mov             x2, x1
    // 0x7e295c: ldur            x0, [fp, #-0x10]
    // 0x7e2960: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x7e2960: ldur            w1, [x0, #0x17]
    // 0x7e2964: DecompressPointer r1
    //     0x7e2964: add             x1, x1, HEAP, lsl #32
    // 0x7e2968: stur            x1, [fp, #-8]
    // 0x7e296c: cmp             w1, NULL
    // 0x7e2970: b.eq            #0x7e2a14
    // 0x7e2974: LoadField: r0 = r1->field_7
    //     0x7e2974: ldur            w0, [x1, #7]
    // 0x7e2978: cbz             w0, #0x7e2a14
    // 0x7e297c: r0 = _InfoChipSmall()
    //     0x7e297c: bl              #0x7e2b38  ; Allocate_InfoChipSmallStub -> _InfoChipSmall (size=0x14)
    // 0x7e2980: mov             x2, x0
    // 0x7e2984: r0 = Instance_IconData
    //     0x7e2984: add             x0, PP, #0x12, lsl #12  ; [pp+0x122a8] Obj!IconData@a09e81
    //     0x7e2988: ldr             x0, [x0, #0x2a8]
    // 0x7e298c: stur            x2, [fp, #-0x10]
    // 0x7e2990: StoreField: r2->field_b = r0
    //     0x7e2990: stur            w0, [x2, #0xb]
    // 0x7e2994: ldur            x0, [fp, #-8]
    // 0x7e2998: StoreField: r2->field_f = r0
    //     0x7e2998: stur            w0, [x2, #0xf]
    // 0x7e299c: ldur            x0, [fp, #-0x18]
    // 0x7e29a0: LoadField: r1 = r0->field_b
    //     0x7e29a0: ldur            w1, [x0, #0xb]
    // 0x7e29a4: LoadField: r3 = r0->field_f
    //     0x7e29a4: ldur            w3, [x0, #0xf]
    // 0x7e29a8: DecompressPointer r3
    //     0x7e29a8: add             x3, x3, HEAP, lsl #32
    // 0x7e29ac: LoadField: r4 = r3->field_b
    //     0x7e29ac: ldur            w4, [x3, #0xb]
    // 0x7e29b0: r3 = LoadInt32Instr(r1)
    //     0x7e29b0: sbfx            x3, x1, #1, #0x1f
    // 0x7e29b4: stur            x3, [fp, #-0x20]
    // 0x7e29b8: r1 = LoadInt32Instr(r4)
    //     0x7e29b8: sbfx            x1, x4, #1, #0x1f
    // 0x7e29bc: cmp             x3, x1
    // 0x7e29c0: b.ne            #0x7e29cc
    // 0x7e29c4: mov             x1, x0
    // 0x7e29c8: r0 = _growToNextCapacity()
    //     0x7e29c8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e29cc: ldur            x2, [fp, #-0x18]
    // 0x7e29d0: ldur            x3, [fp, #-0x20]
    // 0x7e29d4: add             x0, x3, #1
    // 0x7e29d8: lsl             x1, x0, #1
    // 0x7e29dc: StoreField: r2->field_b = r1
    //     0x7e29dc: stur            w1, [x2, #0xb]
    // 0x7e29e0: LoadField: r1 = r2->field_f
    //     0x7e29e0: ldur            w1, [x2, #0xf]
    // 0x7e29e4: DecompressPointer r1
    //     0x7e29e4: add             x1, x1, HEAP, lsl #32
    // 0x7e29e8: ldur            x0, [fp, #-0x10]
    // 0x7e29ec: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e29ec: add             x25, x1, x3, lsl #2
    //     0x7e29f0: add             x25, x25, #0xf
    //     0x7e29f4: str             w0, [x25]
    //     0x7e29f8: tbz             w0, #0, #0x7e2a14
    //     0x7e29fc: ldurb           w16, [x1, #-1]
    //     0x7e2a00: ldurb           w17, [x0, #-1]
    //     0x7e2a04: and             x16, x17, x16, lsr #2
    //     0x7e2a08: tst             x16, HEAP, lsr #32
    //     0x7e2a0c: b.eq            #0x7e2a14
    //     0x7e2a10: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e2a14: r0 = Wrap()
    //     0x7e2a14: bl              #0x69a5b8  ; AllocateWrapStub -> Wrap (size=0x3c)
    // 0x7e2a18: mov             x3, x0
    // 0x7e2a1c: r0 = Instance_Axis
    //     0x7e2a1c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e2a20: stur            x3, [fp, #-8]
    // 0x7e2a24: StoreField: r3->field_f = r0
    //     0x7e2a24: stur            w0, [x3, #0xf]
    // 0x7e2a28: r0 = Instance_WrapAlignment
    //     0x7e2a28: add             x0, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x7e2a2c: ldr             x0, [x0, #0x7d8]
    // 0x7e2a30: StoreField: r3->field_13 = r0
    //     0x7e2a30: stur            w0, [x3, #0x13]
    // 0x7e2a34: d0 = 16.000000
    //     0x7e2a34: fmov            d0, #16.00000000
    // 0x7e2a38: ArrayStore: r3[0] = d0  ; List_8
    //     0x7e2a38: stur            d0, [x3, #0x17]
    // 0x7e2a3c: StoreField: r3->field_1f = r0
    //     0x7e2a3c: stur            w0, [x3, #0x1f]
    // 0x7e2a40: d0 = 8.000000
    //     0x7e2a40: fmov            d0, #8.00000000
    // 0x7e2a44: StoreField: r3->field_23 = d0
    //     0x7e2a44: stur            d0, [x3, #0x23]
    // 0x7e2a48: r0 = Instance_WrapCrossAlignment
    //     0x7e2a48: add             x0, PP, #0x12, lsl #12  ; [pp+0x127e0] Obj!WrapCrossAlignment@a2a1b1
    //     0x7e2a4c: ldr             x0, [x0, #0x7e0]
    // 0x7e2a50: StoreField: r3->field_2b = r0
    //     0x7e2a50: stur            w0, [x3, #0x2b]
    // 0x7e2a54: r0 = Instance_VerticalDirection
    //     0x7e2a54: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2a58: ldr             x0, [x0, #0x340]
    // 0x7e2a5c: StoreField: r3->field_33 = r0
    //     0x7e2a5c: stur            w0, [x3, #0x33]
    // 0x7e2a60: r4 = Instance_Clip
    //     0x7e2a60: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2a64: ldr             x4, [x4, #0x348]
    // 0x7e2a68: StoreField: r3->field_37 = r4
    //     0x7e2a68: stur            w4, [x3, #0x37]
    // 0x7e2a6c: ldur            x1, [fp, #-0x18]
    // 0x7e2a70: StoreField: r3->field_b = r1
    //     0x7e2a70: stur            w1, [x3, #0xb]
    // 0x7e2a74: r1 = Null
    //     0x7e2a74: mov             x1, NULL
    // 0x7e2a78: r2 = 8
    //     0x7e2a78: mov             x2, #8
    // 0x7e2a7c: r0 = AllocateArray()
    //     0x7e2a7c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e2a80: stur            x0, [fp, #-0x10]
    // 0x7e2a84: r16 = Instance_SizedBox
    //     0x7e2a84: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7e2a88: ldr             x16, [x16, #0x220]
    // 0x7e2a8c: StoreField: r0->field_f = r16
    //     0x7e2a8c: stur            w16, [x0, #0xf]
    // 0x7e2a90: r16 = Instance_Divider
    //     0x7e2a90: add             x16, PP, #0x1c, lsl #12  ; [pp+0x1c450] Obj!Divider@a1f7d1
    //     0x7e2a94: ldr             x16, [x16, #0x450]
    // 0x7e2a98: StoreField: r0->field_13 = r16
    //     0x7e2a98: stur            w16, [x0, #0x13]
    // 0x7e2a9c: r16 = Instance_SizedBox
    //     0x7e2a9c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7e2aa0: ldr             x16, [x16, #0x220]
    // 0x7e2aa4: ArrayStore: r0[0] = r16  ; List_4
    //     0x7e2aa4: stur            w16, [x0, #0x17]
    // 0x7e2aa8: ldur            x1, [fp, #-8]
    // 0x7e2aac: StoreField: r0->field_1b = r1
    //     0x7e2aac: stur            w1, [x0, #0x1b]
    // 0x7e2ab0: r1 = <Widget>
    //     0x7e2ab0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e2ab4: r0 = AllocateGrowableArray()
    //     0x7e2ab4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e2ab8: mov             x1, x0
    // 0x7e2abc: ldur            x0, [fp, #-0x10]
    // 0x7e2ac0: stur            x1, [fp, #-8]
    // 0x7e2ac4: StoreField: r1->field_f = r0
    //     0x7e2ac4: stur            w0, [x1, #0xf]
    // 0x7e2ac8: r0 = 8
    //     0x7e2ac8: mov             x0, #8
    // 0x7e2acc: StoreField: r1->field_b = r0
    //     0x7e2acc: stur            w0, [x1, #0xb]
    // 0x7e2ad0: r0 = Column()
    //     0x7e2ad0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e2ad4: r1 = Instance_Axis
    //     0x7e2ad4: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e2ad8: StoreField: r0->field_f = r1
    //     0x7e2ad8: stur            w1, [x0, #0xf]
    // 0x7e2adc: r1 = Instance_MainAxisAlignment
    //     0x7e2adc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e2ae0: ldr             x1, [x1, #0x230]
    // 0x7e2ae4: StoreField: r0->field_13 = r1
    //     0x7e2ae4: stur            w1, [x0, #0x13]
    // 0x7e2ae8: r1 = Instance_MainAxisSize
    //     0x7e2ae8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e2aec: ldr             x1, [x1, #0x330]
    // 0x7e2af0: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e2af0: stur            w1, [x0, #0x17]
    // 0x7e2af4: r1 = Instance_CrossAxisAlignment
    //     0x7e2af4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e2af8: ldr             x1, [x1, #0x338]
    // 0x7e2afc: StoreField: r0->field_1b = r1
    //     0x7e2afc: stur            w1, [x0, #0x1b]
    // 0x7e2b00: r1 = Instance_VerticalDirection
    //     0x7e2b00: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2b04: ldr             x1, [x1, #0x340]
    // 0x7e2b08: StoreField: r0->field_23 = r1
    //     0x7e2b08: stur            w1, [x0, #0x23]
    // 0x7e2b0c: r1 = Instance_Clip
    //     0x7e2b0c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2b10: ldr             x1, [x1, #0x348]
    // 0x7e2b14: StoreField: r0->field_2b = r1
    //     0x7e2b14: stur            w1, [x0, #0x2b]
    // 0x7e2b18: StoreField: r0->field_2f = rZR
    //     0x7e2b18: stur            xzr, [x0, #0x2f]
    // 0x7e2b1c: ldur            x1, [fp, #-8]
    // 0x7e2b20: StoreField: r0->field_b = r1
    //     0x7e2b20: stur            w1, [x0, #0xb]
    // 0x7e2b24: LeaveFrame
    //     0x7e2b24: mov             SP, fp
    //     0x7e2b28: ldp             fp, lr, [SP], #0x10
    // 0x7e2b2c: ret
    //     0x7e2b2c: ret             
    // 0x7e2b30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e2b30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e2b34: b               #0x7e2874
  }
  _ _buildHeader(/* No info */) {
    // ** addr: 0x7e2b44, size: 0x3fc
    // 0x7e2b44: EnterFrame
    //     0x7e2b44: stp             fp, lr, [SP, #-0x10]!
    //     0x7e2b48: mov             fp, SP
    // 0x7e2b4c: AllocStack(0x58)
    //     0x7e2b4c: sub             SP, SP, #0x58
    // 0x7e2b50: r0 = Instance_Color
    //     0x7e2b50: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e2b54: ldr             x0, [x0, #0xb78]
    // 0x7e2b58: mov             x2, x1
    // 0x7e2b5c: stur            x1, [fp, #-8]
    // 0x7e2b60: CheckStackOverflow
    //     0x7e2b60: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e2b64: cmp             SP, x16
    //     0x7e2b68: b.ls            #0x7e2f34
    // 0x7e2b6c: r16 = 0.100000
    //     0x7e2b6c: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7e2b70: ldr             x16, [x16, #0x1f8]
    // 0x7e2b74: str             x16, [SP]
    // 0x7e2b78: mov             x1, x0
    // 0x7e2b7c: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7e2b7c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7e2b80: ldr             x4, [x4, #0x198]
    // 0x7e2b84: r0 = withValues()
    //     0x7e2b84: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x7e2b88: stur            x0, [fp, #-0x10]
    // 0x7e2b8c: r0 = Radius()
    //     0x7e2b8c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e2b90: d0 = 12.000000
    //     0x7e2b90: fmov            d0, #12.00000000
    // 0x7e2b94: stur            x0, [fp, #-0x18]
    // 0x7e2b98: StoreField: r0->field_7 = d0
    //     0x7e2b98: stur            d0, [x0, #7]
    // 0x7e2b9c: StoreField: r0->field_f = d0
    //     0x7e2b9c: stur            d0, [x0, #0xf]
    // 0x7e2ba0: r0 = BorderRadius()
    //     0x7e2ba0: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e2ba4: mov             x1, x0
    // 0x7e2ba8: ldur            x0, [fp, #-0x18]
    // 0x7e2bac: stur            x1, [fp, #-0x20]
    // 0x7e2bb0: StoreField: r1->field_7 = r0
    //     0x7e2bb0: stur            w0, [x1, #7]
    // 0x7e2bb4: StoreField: r1->field_b = r0
    //     0x7e2bb4: stur            w0, [x1, #0xb]
    // 0x7e2bb8: StoreField: r1->field_f = r0
    //     0x7e2bb8: stur            w0, [x1, #0xf]
    // 0x7e2bbc: StoreField: r1->field_13 = r0
    //     0x7e2bbc: stur            w0, [x1, #0x13]
    // 0x7e2bc0: r0 = BoxDecoration()
    //     0x7e2bc0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e2bc4: mov             x1, x0
    // 0x7e2bc8: ldur            x0, [fp, #-0x10]
    // 0x7e2bcc: stur            x1, [fp, #-0x18]
    // 0x7e2bd0: StoreField: r1->field_7 = r0
    //     0x7e2bd0: stur            w0, [x1, #7]
    // 0x7e2bd4: ldur            x0, [fp, #-0x20]
    // 0x7e2bd8: StoreField: r1->field_13 = r0
    //     0x7e2bd8: stur            w0, [x1, #0x13]
    // 0x7e2bdc: r0 = Instance_BoxShape
    //     0x7e2bdc: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e2be0: ldr             x0, [x0, #0x1c8]
    // 0x7e2be4: StoreField: r1->field_23 = r0
    //     0x7e2be4: stur            w0, [x1, #0x23]
    // 0x7e2be8: r0 = Icon()
    //     0x7e2be8: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x7e2bec: mov             x1, x0
    // 0x7e2bf0: r0 = Instance_IconData
    //     0x7e2bf0: add             x0, PP, #0x19, lsl #12  ; [pp+0x19700] Obj!IconData@a09ec1
    //     0x7e2bf4: ldr             x0, [x0, #0x700]
    // 0x7e2bf8: stur            x1, [fp, #-0x10]
    // 0x7e2bfc: StoreField: r1->field_b = r0
    //     0x7e2bfc: stur            w0, [x1, #0xb]
    // 0x7e2c00: r0 = 24.000000
    //     0x7e2c00: add             x0, PP, #0xc, lsl #12  ; [pp+0xcf28] 24
    //     0x7e2c04: ldr             x0, [x0, #0xf28]
    // 0x7e2c08: StoreField: r1->field_f = r0
    //     0x7e2c08: stur            w0, [x1, #0xf]
    // 0x7e2c0c: r0 = Instance_Color
    //     0x7e2c0c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x7e2c10: ldr             x0, [x0, #0xb78]
    // 0x7e2c14: StoreField: r1->field_23 = r0
    //     0x7e2c14: stur            w0, [x1, #0x23]
    // 0x7e2c18: r0 = Container()
    //     0x7e2c18: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e2c1c: stur            x0, [fp, #-0x20]
    // 0x7e2c20: r16 = 48.000000
    //     0x7e2c20: add             x16, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x7e2c24: ldr             x16, [x16, #0x948]
    // 0x7e2c28: r30 = 48.000000
    //     0x7e2c28: add             lr, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x7e2c2c: ldr             lr, [lr, #0x948]
    // 0x7e2c30: stp             lr, x16, [SP, #0x10]
    // 0x7e2c34: ldur            x16, [fp, #-0x18]
    // 0x7e2c38: ldur            lr, [fp, #-0x10]
    // 0x7e2c3c: stp             lr, x16, [SP]
    // 0x7e2c40: mov             x1, x0
    // 0x7e2c44: r4 = const [0, 0x5, 0x4, 0x1, child, 0x4, decoration, 0x3, height, 0x2, width, 0x1, null]
    //     0x7e2c44: add             x4, PP, #0x15, lsl #12  ; [pp+0x15990] List(13) [0, 0x5, 0x4, 0x1, "child", 0x4, "decoration", 0x3, "height", 0x2, "width", 0x1, Null]
    //     0x7e2c48: ldr             x4, [x4, #0x990]
    // 0x7e2c4c: r0 = Container()
    //     0x7e2c4c: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e2c50: ldur            x1, [fp, #-8]
    // 0x7e2c54: LoadField: r0 = r1->field_b
    //     0x7e2c54: ldur            w0, [x1, #0xb]
    // 0x7e2c58: DecompressPointer r0
    //     0x7e2c58: add             x0, x0, HEAP, lsl #32
    // 0x7e2c5c: stur            x0, [fp, #-0x18]
    // 0x7e2c60: LoadField: r2 = r0->field_b
    //     0x7e2c60: ldur            w2, [x0, #0xb]
    // 0x7e2c64: DecompressPointer r2
    //     0x7e2c64: add             x2, x2, HEAP, lsl #32
    // 0x7e2c68: stur            x2, [fp, #-0x10]
    // 0x7e2c6c: r0 = Text()
    //     0x7e2c6c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e2c70: mov             x3, x0
    // 0x7e2c74: ldur            x0, [fp, #-0x10]
    // 0x7e2c78: stur            x3, [fp, #-0x28]
    // 0x7e2c7c: StoreField: r3->field_b = r0
    //     0x7e2c7c: stur            w0, [x3, #0xb]
    // 0x7e2c80: r0 = Instance_TextStyle
    //     0x7e2c80: add             x0, PP, #0x1c, lsl #12  ; [pp+0x1c458] Obj!TextStyle@a18c51
    //     0x7e2c84: ldr             x0, [x0, #0x458]
    // 0x7e2c88: StoreField: r3->field_13 = r0
    //     0x7e2c88: stur            w0, [x3, #0x13]
    // 0x7e2c8c: r1 = Null
    //     0x7e2c8c: mov             x1, NULL
    // 0x7e2c90: r2 = 2
    //     0x7e2c90: mov             x2, #2
    // 0x7e2c94: r0 = AllocateArray()
    //     0x7e2c94: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e2c98: mov             x2, x0
    // 0x7e2c9c: ldur            x0, [fp, #-0x28]
    // 0x7e2ca0: stur            x2, [fp, #-0x10]
    // 0x7e2ca4: StoreField: r2->field_f = r0
    //     0x7e2ca4: stur            w0, [x2, #0xf]
    // 0x7e2ca8: r1 = <Widget>
    //     0x7e2ca8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e2cac: r0 = AllocateGrowableArray()
    //     0x7e2cac: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e2cb0: mov             x3, x0
    // 0x7e2cb4: ldur            x0, [fp, #-0x10]
    // 0x7e2cb8: stur            x3, [fp, #-0x28]
    // 0x7e2cbc: StoreField: r3->field_f = r0
    //     0x7e2cbc: stur            w0, [x3, #0xf]
    // 0x7e2cc0: r0 = 2
    //     0x7e2cc0: mov             x0, #2
    // 0x7e2cc4: StoreField: r3->field_b = r0
    //     0x7e2cc4: stur            w0, [x3, #0xb]
    // 0x7e2cc8: ldur            x1, [fp, #-0x18]
    // 0x7e2ccc: LoadField: r4 = r1->field_f
    //     0x7e2ccc: ldur            w4, [x1, #0xf]
    // 0x7e2cd0: DecompressPointer r4
    //     0x7e2cd0: add             x4, x4, HEAP, lsl #32
    // 0x7e2cd4: stur            x4, [fp, #-0x10]
    // 0x7e2cd8: cmp             w4, NULL
    // 0x7e2cdc: b.ne            #0x7e2ce8
    // 0x7e2ce0: mov             x2, x3
    // 0x7e2ce4: b               #0x7e2de0
    // 0x7e2ce8: LoadField: r1 = r4->field_7
    //     0x7e2ce8: ldur            w1, [x4, #7]
    // 0x7e2cec: cbz             w1, #0x7e2ddc
    // 0x7e2cf0: r1 = _ConstMap len:12
    //     0x7e2cf0: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x7e2cf4: r2 = 1200
    //     0x7e2cf4: mov             x2, #0x4b0
    // 0x7e2cf8: r0 = []()
    //     0x7e2cf8: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e2cfc: stur            x0, [fp, #-0x18]
    // 0x7e2d00: cmp             w0, NULL
    // 0x7e2d04: b.eq            #0x7e2f3c
    // 0x7e2d08: r0 = TextStyle()
    //     0x7e2d08: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e2d0c: mov             x1, x0
    // 0x7e2d10: r0 = true
    //     0x7e2d10: add             x0, NULL, #0x20  ; true
    // 0x7e2d14: stur            x1, [fp, #-0x30]
    // 0x7e2d18: StoreField: r1->field_7 = r0
    //     0x7e2d18: stur            w0, [x1, #7]
    // 0x7e2d1c: ldur            x0, [fp, #-0x18]
    // 0x7e2d20: StoreField: r1->field_b = r0
    //     0x7e2d20: stur            w0, [x1, #0xb]
    // 0x7e2d24: r0 = 13.000000
    //     0x7e2d24: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x7e2d28: ldr             x0, [x0, #0xb00]
    // 0x7e2d2c: StoreField: r1->field_1f = r0
    //     0x7e2d2c: stur            w0, [x1, #0x1f]
    // 0x7e2d30: r0 = Text()
    //     0x7e2d30: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e2d34: mov             x2, x0
    // 0x7e2d38: ldur            x0, [fp, #-0x10]
    // 0x7e2d3c: stur            x2, [fp, #-0x18]
    // 0x7e2d40: StoreField: r2->field_b = r0
    //     0x7e2d40: stur            w0, [x2, #0xb]
    // 0x7e2d44: ldur            x0, [fp, #-0x30]
    // 0x7e2d48: StoreField: r2->field_13 = r0
    //     0x7e2d48: stur            w0, [x2, #0x13]
    // 0x7e2d4c: r0 = Instance_TextOverflow
    //     0x7e2d4c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12068] Obj!TextOverflow@a2a871
    //     0x7e2d50: ldr             x0, [x0, #0x68]
    // 0x7e2d54: StoreField: r2->field_2b = r0
    //     0x7e2d54: stur            w0, [x2, #0x2b]
    // 0x7e2d58: r0 = 2
    //     0x7e2d58: mov             x0, #2
    // 0x7e2d5c: StoreField: r2->field_37 = r0
    //     0x7e2d5c: stur            w0, [x2, #0x37]
    // 0x7e2d60: ldur            x0, [fp, #-0x28]
    // 0x7e2d64: LoadField: r1 = r0->field_b
    //     0x7e2d64: ldur            w1, [x0, #0xb]
    // 0x7e2d68: LoadField: r3 = r0->field_f
    //     0x7e2d68: ldur            w3, [x0, #0xf]
    // 0x7e2d6c: DecompressPointer r3
    //     0x7e2d6c: add             x3, x3, HEAP, lsl #32
    // 0x7e2d70: LoadField: r4 = r3->field_b
    //     0x7e2d70: ldur            w4, [x3, #0xb]
    // 0x7e2d74: r3 = LoadInt32Instr(r1)
    //     0x7e2d74: sbfx            x3, x1, #1, #0x1f
    // 0x7e2d78: stur            x3, [fp, #-0x38]
    // 0x7e2d7c: r1 = LoadInt32Instr(r4)
    //     0x7e2d7c: sbfx            x1, x4, #1, #0x1f
    // 0x7e2d80: cmp             x3, x1
    // 0x7e2d84: b.ne            #0x7e2d90
    // 0x7e2d88: mov             x1, x0
    // 0x7e2d8c: r0 = _growToNextCapacity()
    //     0x7e2d8c: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7e2d90: ldur            x2, [fp, #-0x28]
    // 0x7e2d94: ldur            x3, [fp, #-0x38]
    // 0x7e2d98: add             x0, x3, #1
    // 0x7e2d9c: lsl             x1, x0, #1
    // 0x7e2da0: StoreField: r2->field_b = r1
    //     0x7e2da0: stur            w1, [x2, #0xb]
    // 0x7e2da4: LoadField: r1 = r2->field_f
    //     0x7e2da4: ldur            w1, [x2, #0xf]
    // 0x7e2da8: DecompressPointer r1
    //     0x7e2da8: add             x1, x1, HEAP, lsl #32
    // 0x7e2dac: ldur            x0, [fp, #-0x18]
    // 0x7e2db0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7e2db0: add             x25, x1, x3, lsl #2
    //     0x7e2db4: add             x25, x25, #0xf
    //     0x7e2db8: str             w0, [x25]
    //     0x7e2dbc: tbz             w0, #0, #0x7e2dd8
    //     0x7e2dc0: ldurb           w16, [x1, #-1]
    //     0x7e2dc4: ldurb           w17, [x0, #-1]
    //     0x7e2dc8: and             x16, x17, x16, lsr #2
    //     0x7e2dcc: tst             x16, HEAP, lsr #32
    //     0x7e2dd0: b.eq            #0x7e2dd8
    //     0x7e2dd4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7e2dd8: b               #0x7e2de0
    // 0x7e2ddc: mov             x2, x3
    // 0x7e2de0: ldur            x0, [fp, #-0x20]
    // 0x7e2de4: r0 = Column()
    //     0x7e2de4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7e2de8: mov             x2, x0
    // 0x7e2dec: r0 = Instance_Axis
    //     0x7e2dec: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7e2df0: stur            x2, [fp, #-0x10]
    // 0x7e2df4: StoreField: r2->field_f = r0
    //     0x7e2df4: stur            w0, [x2, #0xf]
    // 0x7e2df8: r0 = Instance_MainAxisAlignment
    //     0x7e2df8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e2dfc: ldr             x0, [x0, #0x230]
    // 0x7e2e00: StoreField: r2->field_13 = r0
    //     0x7e2e00: stur            w0, [x2, #0x13]
    // 0x7e2e04: r3 = Instance_MainAxisSize
    //     0x7e2e04: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e2e08: ldr             x3, [x3, #0x330]
    // 0x7e2e0c: ArrayStore: r2[0] = r3  ; List_4
    //     0x7e2e0c: stur            w3, [x2, #0x17]
    // 0x7e2e10: r1 = Instance_CrossAxisAlignment
    //     0x7e2e10: add             x1, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x7e2e14: ldr             x1, [x1, #0x238]
    // 0x7e2e18: StoreField: r2->field_1b = r1
    //     0x7e2e18: stur            w1, [x2, #0x1b]
    // 0x7e2e1c: r4 = Instance_VerticalDirection
    //     0x7e2e1c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2e20: ldr             x4, [x4, #0x340]
    // 0x7e2e24: StoreField: r2->field_23 = r4
    //     0x7e2e24: stur            w4, [x2, #0x23]
    // 0x7e2e28: r5 = Instance_Clip
    //     0x7e2e28: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2e2c: ldr             x5, [x5, #0x348]
    // 0x7e2e30: StoreField: r2->field_2b = r5
    //     0x7e2e30: stur            w5, [x2, #0x2b]
    // 0x7e2e34: StoreField: r2->field_2f = rZR
    //     0x7e2e34: stur            xzr, [x2, #0x2f]
    // 0x7e2e38: ldur            x1, [fp, #-0x28]
    // 0x7e2e3c: StoreField: r2->field_b = r1
    //     0x7e2e3c: stur            w1, [x2, #0xb]
    // 0x7e2e40: r1 = <FlexParentData>
    //     0x7e2e40: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x7e2e44: ldr             x1, [x1, #0x340]
    // 0x7e2e48: r0 = Expanded()
    //     0x7e2e48: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x7e2e4c: mov             x2, x0
    // 0x7e2e50: r0 = 1
    //     0x7e2e50: mov             x0, #1
    // 0x7e2e54: stur            x2, [fp, #-0x18]
    // 0x7e2e58: StoreField: r2->field_13 = r0
    //     0x7e2e58: stur            x0, [x2, #0x13]
    // 0x7e2e5c: r0 = Instance_FlexFit
    //     0x7e2e5c: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x7e2e60: ldr             x0, [x0, #0x348]
    // 0x7e2e64: StoreField: r2->field_1b = r0
    //     0x7e2e64: stur            w0, [x2, #0x1b]
    // 0x7e2e68: ldur            x0, [fp, #-0x10]
    // 0x7e2e6c: StoreField: r2->field_b = r0
    //     0x7e2e6c: stur            w0, [x2, #0xb]
    // 0x7e2e70: ldur            x1, [fp, #-8]
    // 0x7e2e74: r0 = _buildStatusBadge()
    //     0x7e2e74: bl              #0x7e2f40  ; [package:umrem_demo/features/admin/widgets/agency_card.dart] AgencyCard::_buildStatusBadge
    // 0x7e2e78: r1 = Null
    //     0x7e2e78: mov             x1, NULL
    // 0x7e2e7c: r2 = 8
    //     0x7e2e7c: mov             x2, #8
    // 0x7e2e80: stur            x0, [fp, #-8]
    // 0x7e2e84: r0 = AllocateArray()
    //     0x7e2e84: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7e2e88: mov             x2, x0
    // 0x7e2e8c: ldur            x0, [fp, #-0x20]
    // 0x7e2e90: stur            x2, [fp, #-0x10]
    // 0x7e2e94: StoreField: r2->field_f = r0
    //     0x7e2e94: stur            w0, [x2, #0xf]
    // 0x7e2e98: r16 = Instance_SizedBox
    //     0x7e2e98: add             x16, PP, #0x12, lsl #12  ; [pp+0x12360] Obj!SizedBox@a1fad1
    //     0x7e2e9c: ldr             x16, [x16, #0x360]
    // 0x7e2ea0: StoreField: r2->field_13 = r16
    //     0x7e2ea0: stur            w16, [x2, #0x13]
    // 0x7e2ea4: ldur            x0, [fp, #-0x18]
    // 0x7e2ea8: ArrayStore: r2[0] = r0  ; List_4
    //     0x7e2ea8: stur            w0, [x2, #0x17]
    // 0x7e2eac: ldur            x0, [fp, #-8]
    // 0x7e2eb0: StoreField: r2->field_1b = r0
    //     0x7e2eb0: stur            w0, [x2, #0x1b]
    // 0x7e2eb4: r1 = <Widget>
    //     0x7e2eb4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7e2eb8: r0 = AllocateGrowableArray()
    //     0x7e2eb8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7e2ebc: mov             x1, x0
    // 0x7e2ec0: ldur            x0, [fp, #-0x10]
    // 0x7e2ec4: stur            x1, [fp, #-8]
    // 0x7e2ec8: StoreField: r1->field_f = r0
    //     0x7e2ec8: stur            w0, [x1, #0xf]
    // 0x7e2ecc: r0 = 8
    //     0x7e2ecc: mov             x0, #8
    // 0x7e2ed0: StoreField: r1->field_b = r0
    //     0x7e2ed0: stur            w0, [x1, #0xb]
    // 0x7e2ed4: r0 = Row()
    //     0x7e2ed4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x7e2ed8: r1 = Instance_Axis
    //     0x7e2ed8: ldr             x1, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x7e2edc: StoreField: r0->field_f = r1
    //     0x7e2edc: stur            w1, [x0, #0xf]
    // 0x7e2ee0: r1 = Instance_MainAxisAlignment
    //     0x7e2ee0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7e2ee4: ldr             x1, [x1, #0x230]
    // 0x7e2ee8: StoreField: r0->field_13 = r1
    //     0x7e2ee8: stur            w1, [x0, #0x13]
    // 0x7e2eec: r1 = Instance_MainAxisSize
    //     0x7e2eec: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7e2ef0: ldr             x1, [x1, #0x330]
    // 0x7e2ef4: ArrayStore: r0[0] = r1  ; List_4
    //     0x7e2ef4: stur            w1, [x0, #0x17]
    // 0x7e2ef8: r1 = Instance_CrossAxisAlignment
    //     0x7e2ef8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7e2efc: ldr             x1, [x1, #0x338]
    // 0x7e2f00: StoreField: r0->field_1b = r1
    //     0x7e2f00: stur            w1, [x0, #0x1b]
    // 0x7e2f04: r1 = Instance_VerticalDirection
    //     0x7e2f04: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7e2f08: ldr             x1, [x1, #0x340]
    // 0x7e2f0c: StoreField: r0->field_23 = r1
    //     0x7e2f0c: stur            w1, [x0, #0x23]
    // 0x7e2f10: r1 = Instance_Clip
    //     0x7e2f10: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7e2f14: ldr             x1, [x1, #0x348]
    // 0x7e2f18: StoreField: r0->field_2b = r1
    //     0x7e2f18: stur            w1, [x0, #0x2b]
    // 0x7e2f1c: StoreField: r0->field_2f = rZR
    //     0x7e2f1c: stur            xzr, [x0, #0x2f]
    // 0x7e2f20: ldur            x1, [fp, #-8]
    // 0x7e2f24: StoreField: r0->field_b = r1
    //     0x7e2f24: stur            w1, [x0, #0xb]
    // 0x7e2f28: LeaveFrame
    //     0x7e2f28: mov             SP, fp
    //     0x7e2f2c: ldp             fp, lr, [SP], #0x10
    // 0x7e2f30: ret
    //     0x7e2f30: ret             
    // 0x7e2f34: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e2f34: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e2f38: b               #0x7e2b6c
    // 0x7e2f3c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e2f3c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildStatusBadge(/* No info */) {
    // ** addr: 0x7e2f40, size: 0x1d8
    // 0x7e2f40: EnterFrame
    //     0x7e2f40: stp             fp, lr, [SP, #-0x10]!
    //     0x7e2f44: mov             fp, SP
    // 0x7e2f48: AllocStack(0x38)
    //     0x7e2f48: sub             SP, SP, #0x38
    // 0x7e2f4c: CheckStackOverflow
    //     0x7e2f4c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e2f50: cmp             SP, x16
    //     0x7e2f54: b.ls            #0x7e3100
    // 0x7e2f58: LoadField: r0 = r1->field_b
    //     0x7e2f58: ldur            w0, [x1, #0xb]
    // 0x7e2f5c: DecompressPointer r0
    //     0x7e2f5c: add             x0, x0, HEAP, lsl #32
    // 0x7e2f60: LoadField: r3 = r0->field_1f
    //     0x7e2f60: ldur            w3, [x0, #0x1f]
    // 0x7e2f64: DecompressPointer r3
    //     0x7e2f64: add             x3, x3, HEAP, lsl #32
    // 0x7e2f68: stur            x3, [fp, #-8]
    // 0x7e2f6c: tbnz            w3, #4, #0x7e2f90
    // 0x7e2f70: r1 = _ConstMap len:10
    //     0x7e2f70: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x7e2f74: ldr             x1, [x1, #0x918]
    // 0x7e2f78: r2 = 200
    //     0x7e2f78: mov             x2, #0xc8
    // 0x7e2f7c: r0 = []()
    //     0x7e2f7c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e2f80: cmp             w0, NULL
    // 0x7e2f84: b.eq            #0x7e3108
    // 0x7e2f88: mov             x1, x0
    // 0x7e2f8c: b               #0x7e2fa8
    // 0x7e2f90: r1 = _ConstMap len:10
    //     0x7e2f90: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7e2f94: r2 = 200
    //     0x7e2f94: mov             x2, #0xc8
    // 0x7e2f98: r0 = []()
    //     0x7e2f98: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e2f9c: cmp             w0, NULL
    // 0x7e2fa0: b.eq            #0x7e310c
    // 0x7e2fa4: mov             x1, x0
    // 0x7e2fa8: ldur            x0, [fp, #-8]
    // 0x7e2fac: stur            x1, [fp, #-0x10]
    // 0x7e2fb0: r0 = Radius()
    //     0x7e2fb0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x7e2fb4: d0 = 12.000000
    //     0x7e2fb4: fmov            d0, #12.00000000
    // 0x7e2fb8: stur            x0, [fp, #-0x18]
    // 0x7e2fbc: StoreField: r0->field_7 = d0
    //     0x7e2fbc: stur            d0, [x0, #7]
    // 0x7e2fc0: StoreField: r0->field_f = d0
    //     0x7e2fc0: stur            d0, [x0, #0xf]
    // 0x7e2fc4: r0 = BorderRadius()
    //     0x7e2fc4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x7e2fc8: mov             x1, x0
    // 0x7e2fcc: ldur            x0, [fp, #-0x18]
    // 0x7e2fd0: stur            x1, [fp, #-0x20]
    // 0x7e2fd4: StoreField: r1->field_7 = r0
    //     0x7e2fd4: stur            w0, [x1, #7]
    // 0x7e2fd8: StoreField: r1->field_b = r0
    //     0x7e2fd8: stur            w0, [x1, #0xb]
    // 0x7e2fdc: StoreField: r1->field_f = r0
    //     0x7e2fdc: stur            w0, [x1, #0xf]
    // 0x7e2fe0: StoreField: r1->field_13 = r0
    //     0x7e2fe0: stur            w0, [x1, #0x13]
    // 0x7e2fe4: r0 = BoxDecoration()
    //     0x7e2fe4: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x7e2fe8: mov             x3, x0
    // 0x7e2fec: ldur            x0, [fp, #-0x10]
    // 0x7e2ff0: stur            x3, [fp, #-0x18]
    // 0x7e2ff4: StoreField: r3->field_7 = r0
    //     0x7e2ff4: stur            w0, [x3, #7]
    // 0x7e2ff8: ldur            x0, [fp, #-0x20]
    // 0x7e2ffc: StoreField: r3->field_13 = r0
    //     0x7e2ffc: stur            w0, [x3, #0x13]
    // 0x7e3000: r0 = Instance_BoxShape
    //     0x7e3000: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x7e3004: ldr             x0, [x0, #0x1c8]
    // 0x7e3008: StoreField: r3->field_23 = r0
    //     0x7e3008: stur            w0, [x3, #0x23]
    // 0x7e300c: ldur            x0, [fp, #-8]
    // 0x7e3010: tbnz            w0, #4, #0x7e3020
    // 0x7e3014: r4 = "Aktif"
    //     0x7e3014: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a398] "Aktif"
    //     0x7e3018: ldr             x4, [x4, #0x398]
    // 0x7e301c: b               #0x7e3028
    // 0x7e3020: r4 = "Pasif"
    //     0x7e3020: add             x4, PP, #0x1a, lsl #12  ; [pp+0x1a3a0] "Pasif"
    //     0x7e3024: ldr             x4, [x4, #0x3a0]
    // 0x7e3028: stur            x4, [fp, #-0x10]
    // 0x7e302c: tbnz            w0, #4, #0x7e3050
    // 0x7e3030: r1 = _ConstMap len:10
    //     0x7e3030: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x7e3034: ldr             x1, [x1, #0x918]
    // 0x7e3038: r2 = 1400
    //     0x7e3038: mov             x2, #0x578
    // 0x7e303c: r0 = []()
    //     0x7e303c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e3040: cmp             w0, NULL
    // 0x7e3044: b.eq            #0x7e3110
    // 0x7e3048: mov             x1, x0
    // 0x7e304c: b               #0x7e3068
    // 0x7e3050: r1 = _ConstMap len:10
    //     0x7e3050: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x7e3054: r2 = 1400
    //     0x7e3054: mov             x2, #0x578
    // 0x7e3058: r0 = []()
    //     0x7e3058: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x7e305c: cmp             w0, NULL
    // 0x7e3060: b.eq            #0x7e3114
    // 0x7e3064: mov             x1, x0
    // 0x7e3068: ldur            x0, [fp, #-0x10]
    // 0x7e306c: stur            x1, [fp, #-8]
    // 0x7e3070: r0 = TextStyle()
    //     0x7e3070: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7e3074: mov             x1, x0
    // 0x7e3078: r0 = true
    //     0x7e3078: add             x0, NULL, #0x20  ; true
    // 0x7e307c: stur            x1, [fp, #-0x20]
    // 0x7e3080: StoreField: r1->field_7 = r0
    //     0x7e3080: stur            w0, [x1, #7]
    // 0x7e3084: ldur            x0, [fp, #-8]
    // 0x7e3088: StoreField: r1->field_b = r0
    //     0x7e3088: stur            w0, [x1, #0xb]
    // 0x7e308c: r0 = 12.000000
    //     0x7e308c: add             x0, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x7e3090: ldr             x0, [x0, #0xae0]
    // 0x7e3094: StoreField: r1->field_1f = r0
    //     0x7e3094: stur            w0, [x1, #0x1f]
    // 0x7e3098: r0 = Instance_FontWeight
    //     0x7e3098: add             x0, PP, #0x15, lsl #12  ; [pp+0x155d0] Obj!FontWeight@a20fe1
    //     0x7e309c: ldr             x0, [x0, #0x5d0]
    // 0x7e30a0: StoreField: r1->field_23 = r0
    //     0x7e30a0: stur            w0, [x1, #0x23]
    // 0x7e30a4: r0 = Text()
    //     0x7e30a4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7e30a8: mov             x1, x0
    // 0x7e30ac: ldur            x0, [fp, #-0x10]
    // 0x7e30b0: stur            x1, [fp, #-8]
    // 0x7e30b4: StoreField: r1->field_b = r0
    //     0x7e30b4: stur            w0, [x1, #0xb]
    // 0x7e30b8: ldur            x0, [fp, #-0x20]
    // 0x7e30bc: StoreField: r1->field_13 = r0
    //     0x7e30bc: stur            w0, [x1, #0x13]
    // 0x7e30c0: r0 = Container()
    //     0x7e30c0: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x7e30c4: stur            x0, [fp, #-0x10]
    // 0x7e30c8: r16 = Instance_EdgeInsets
    //     0x7e30c8: add             x16, PP, #0x1a, lsl #12  ; [pp+0x1a508] Obj!EdgeInsets@a0c351
    //     0x7e30cc: ldr             x16, [x16, #0x508]
    // 0x7e30d0: ldur            lr, [fp, #-0x18]
    // 0x7e30d4: stp             lr, x16, [SP, #8]
    // 0x7e30d8: ldur            x16, [fp, #-8]
    // 0x7e30dc: str             x16, [SP]
    // 0x7e30e0: mov             x1, x0
    // 0x7e30e4: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7e30e4: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7e30e8: ldr             x4, [x4, #0x1e8]
    // 0x7e30ec: r0 = Container()
    //     0x7e30ec: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7e30f0: ldur            x0, [fp, #-0x10]
    // 0x7e30f4: LeaveFrame
    //     0x7e30f4: mov             SP, fp
    //     0x7e30f8: ldp             fp, lr, [SP], #0x10
    // 0x7e30fc: ret
    //     0x7e30fc: ret             
    // 0x7e3100: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e3100: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e3104: b               #0x7e2f58
    // 0x7e3108: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e3108: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e310c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e310c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e3110: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e3110: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x7e3114: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7e3114: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
}
