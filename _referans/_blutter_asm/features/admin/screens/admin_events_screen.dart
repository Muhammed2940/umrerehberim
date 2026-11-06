// lib: , url: package:umrem_demo/features/admin/screens/admin_events_screen.dart

// class id: 1049526, size: 0x8
class :: {
}

// class id: 2492, size: 0x18, field offset: 0x14
class _AdminEventsScreenState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5deff4, size: 0x130
    // 0x5deff4: EnterFrame
    //     0x5deff4: stp             fp, lr, [SP, #-0x10]!
    //     0x5deff8: mov             fp, SP
    // 0x5deffc: AllocStack(0x18)
    //     0x5deffc: sub             SP, SP, #0x18
    // 0x5df000: SetupParameters(_AdminEventsScreenState this /* r1 => r1, fp-0x8 */)
    //     0x5df000: stur            x1, [fp, #-8]
    // 0x5df004: CheckStackOverflow
    //     0x5df004: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df008: cmp             SP, x16
    //     0x5df00c: b.ls            #0x5df118
    // 0x5df010: r1 = 1
    //     0x5df010: mov             x1, #1
    // 0x5df014: r0 = AllocateContext()
    //     0x5df014: bl              #0x927010  ; AllocateContextStub
    // 0x5df018: mov             x1, x0
    // 0x5df01c: ldur            x0, [fp, #-8]
    // 0x5df020: StoreField: r1->field_f = r0
    //     0x5df020: stur            w0, [x1, #0xf]
    // 0x5df024: r0 = LoadStaticField(0x834)
    //     0x5df024: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5df028: ldr             x0, [x0, #0x1068]
    // 0x5df02c: cmp             w0, NULL
    // 0x5df030: b.eq            #0x5df120
    // 0x5df034: LoadField: r3 = r0->field_53
    //     0x5df034: ldur            w3, [x0, #0x53]
    // 0x5df038: DecompressPointer r3
    //     0x5df038: add             x3, x3, HEAP, lsl #32
    // 0x5df03c: stur            x3, [fp, #-0x10]
    // 0x5df040: LoadField: r0 = r3->field_7
    //     0x5df040: ldur            w0, [x3, #7]
    // 0x5df044: DecompressPointer r0
    //     0x5df044: add             x0, x0, HEAP, lsl #32
    // 0x5df048: mov             x2, x1
    // 0x5df04c: stur            x0, [fp, #-8]
    // 0x5df050: r1 = Function '<anonymous closure>':.
    //     0x5df050: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a28] AnonymousClosure: (0x5df144), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::initState (0x5deff4)
    //     0x5df054: ldr             x1, [x1, #0xa28]
    // 0x5df058: r0 = AllocateClosure()
    //     0x5df058: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5df05c: ldur            x2, [fp, #-8]
    // 0x5df060: mov             x3, x0
    // 0x5df064: r1 = Null
    //     0x5df064: mov             x1, NULL
    // 0x5df068: stur            x3, [fp, #-8]
    // 0x5df06c: cmp             w2, NULL
    // 0x5df070: b.eq            #0x5df090
    // 0x5df074: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5df074: ldur            w4, [x2, #0x17]
    // 0x5df078: DecompressPointer r4
    //     0x5df078: add             x4, x4, HEAP, lsl #32
    // 0x5df07c: r8 = X0
    //     0x5df07c: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5df080: LoadField: r9 = r4->field_7
    //     0x5df080: ldur            x9, [x4, #7]
    // 0x5df084: r3 = Null
    //     0x5df084: add             x3, PP, #0x19, lsl #12  ; [pp+0x19a30] Null
    //     0x5df088: ldr             x3, [x3, #0xa30]
    // 0x5df08c: blr             x9
    // 0x5df090: ldur            x0, [fp, #-0x10]
    // 0x5df094: LoadField: r1 = r0->field_b
    //     0x5df094: ldur            w1, [x0, #0xb]
    // 0x5df098: LoadField: r2 = r0->field_f
    //     0x5df098: ldur            w2, [x0, #0xf]
    // 0x5df09c: DecompressPointer r2
    //     0x5df09c: add             x2, x2, HEAP, lsl #32
    // 0x5df0a0: LoadField: r3 = r2->field_b
    //     0x5df0a0: ldur            w3, [x2, #0xb]
    // 0x5df0a4: r2 = LoadInt32Instr(r1)
    //     0x5df0a4: sbfx            x2, x1, #1, #0x1f
    // 0x5df0a8: stur            x2, [fp, #-0x18]
    // 0x5df0ac: r1 = LoadInt32Instr(r3)
    //     0x5df0ac: sbfx            x1, x3, #1, #0x1f
    // 0x5df0b0: cmp             x2, x1
    // 0x5df0b4: b.ne            #0x5df0c0
    // 0x5df0b8: mov             x1, x0
    // 0x5df0bc: r0 = _growToNextCapacity()
    //     0x5df0bc: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5df0c0: ldur            x2, [fp, #-0x10]
    // 0x5df0c4: ldur            x3, [fp, #-0x18]
    // 0x5df0c8: add             x4, x3, #1
    // 0x5df0cc: lsl             x5, x4, #1
    // 0x5df0d0: StoreField: r2->field_b = r5
    //     0x5df0d0: stur            w5, [x2, #0xb]
    // 0x5df0d4: LoadField: r1 = r2->field_f
    //     0x5df0d4: ldur            w1, [x2, #0xf]
    // 0x5df0d8: DecompressPointer r1
    //     0x5df0d8: add             x1, x1, HEAP, lsl #32
    // 0x5df0dc: ldur            x0, [fp, #-8]
    // 0x5df0e0: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5df0e0: add             x25, x1, x3, lsl #2
    //     0x5df0e4: add             x25, x25, #0xf
    //     0x5df0e8: str             w0, [x25]
    //     0x5df0ec: tbz             w0, #0, #0x5df108
    //     0x5df0f0: ldurb           w16, [x1, #-1]
    //     0x5df0f4: ldurb           w17, [x0, #-1]
    //     0x5df0f8: and             x16, x17, x16, lsr #2
    //     0x5df0fc: tst             x16, HEAP, lsr #32
    //     0x5df100: b.eq            #0x5df108
    //     0x5df104: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5df108: r0 = Null
    //     0x5df108: mov             x0, NULL
    // 0x5df10c: LeaveFrame
    //     0x5df10c: mov             SP, fp
    //     0x5df110: ldp             fp, lr, [SP], #0x10
    // 0x5df114: ret
    //     0x5df114: ret             
    // 0x5df118: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df118: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df11c: b               #0x5df010
    // 0x5df120: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5df120: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5df144, size: 0x94
    // 0x5df144: EnterFrame
    //     0x5df144: stp             fp, lr, [SP, #-0x10]!
    //     0x5df148: mov             fp, SP
    // 0x5df14c: AllocStack(0x18)
    //     0x5df14c: sub             SP, SP, #0x18
    // 0x5df150: SetupParameters([dynamic _ /* r0 */])
    //     0x5df150: ldr             x0, [fp, #0x18]
    //     0x5df154: ldur            w1, [x0, #0x17]
    //     0x5df158: add             x1, x1, HEAP, lsl #32
    //     0x5df15c: stur            x1, [fp, #-8]
    // 0x5df160: CheckStackOverflow
    //     0x5df160: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df164: cmp             SP, x16
    //     0x5df168: b.ls            #0x5df1cc
    // 0x5df16c: LoadField: r0 = r1->field_f
    //     0x5df16c: ldur            w0, [x1, #0xf]
    // 0x5df170: DecompressPointer r0
    //     0x5df170: add             x0, x0, HEAP, lsl #32
    // 0x5df174: LoadField: r2 = r0->field_f
    //     0x5df174: ldur            w2, [x0, #0xf]
    // 0x5df178: DecompressPointer r2
    //     0x5df178: add             x2, x2, HEAP, lsl #32
    // 0x5df17c: cmp             w2, NULL
    // 0x5df180: b.eq            #0x5df1d4
    // 0x5df184: r16 = <EventProvider>
    //     0x5df184: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x5df188: ldr             x16, [x16, #0xb80]
    // 0x5df18c: stp             x2, x16, [SP]
    // 0x5df190: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5df190: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5df194: r0 = ReadContext.read()
    //     0x5df194: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5df198: mov             x1, x0
    // 0x5df19c: ldur            x0, [fp, #-8]
    // 0x5df1a0: LoadField: r2 = r0->field_f
    //     0x5df1a0: ldur            w2, [x0, #0xf]
    // 0x5df1a4: DecompressPointer r2
    //     0x5df1a4: add             x2, x2, HEAP, lsl #32
    // 0x5df1a8: LoadField: r0 = r2->field_13
    //     0x5df1a8: ldur            w0, [x2, #0x13]
    // 0x5df1ac: DecompressPointer r0
    //     0x5df1ac: add             x0, x0, HEAP, lsl #32
    // 0x5df1b0: mov             x2, x0
    // 0x5df1b4: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5df1b4: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5df1b8: r0 = loadEventsByDate()
    //     0x5df1b8: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x5df1bc: r0 = Null
    //     0x5df1bc: mov             x0, NULL
    // 0x5df1c0: LeaveFrame
    //     0x5df1c0: mov             SP, fp
    //     0x5df1c4: ldp             fp, lr, [SP], #0x10
    // 0x5df1c8: ret
    //     0x5df1c8: ret             
    // 0x5df1cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df1cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df1d0: b               #0x5df16c
    // 0x5df1d4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5df1d4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ build(/* No info */) {
    // ** addr: 0x6d0980, size: 0x20c
    // 0x6d0980: EnterFrame
    //     0x6d0980: stp             fp, lr, [SP, #-0x10]!
    //     0x6d0984: mov             fp, SP
    // 0x6d0988: AllocStack(0x48)
    //     0x6d0988: sub             SP, SP, #0x48
    // 0x6d098c: SetupParameters(_AdminEventsScreenState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x6d098c: stur            x1, [fp, #-8]
    //     0x6d0990: stur            x2, [fp, #-0x10]
    // 0x6d0994: CheckStackOverflow
    //     0x6d0994: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d0998: cmp             SP, x16
    //     0x6d099c: b.ls            #0x6d0b80
    // 0x6d09a0: r1 = 2
    //     0x6d09a0: mov             x1, #2
    // 0x6d09a4: r0 = AllocateContext()
    //     0x6d09a4: bl              #0x927010  ; AllocateContextStub
    // 0x6d09a8: mov             x3, x0
    // 0x6d09ac: ldur            x0, [fp, #-8]
    // 0x6d09b0: stur            x3, [fp, #-0x18]
    // 0x6d09b4: StoreField: r3->field_f = r0
    //     0x6d09b4: stur            w0, [x3, #0xf]
    // 0x6d09b8: ldur            x0, [fp, #-0x10]
    // 0x6d09bc: StoreField: r3->field_13 = r0
    //     0x6d09bc: stur            w0, [x3, #0x13]
    // 0x6d09c0: r1 = _ConstMap len:12
    //     0x6d09c0: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6d09c4: r2 = 100
    //     0x6d09c4: mov             x2, #0x64
    // 0x6d09c8: r0 = []()
    //     0x6d09c8: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6d09cc: stur            x0, [fp, #-8]
    // 0x6d09d0: cmp             w0, NULL
    // 0x6d09d4: b.eq            #0x6d0b88
    // 0x6d09d8: ldur            x2, [fp, #-0x18]
    // 0x6d09dc: r1 = Function '<anonymous closure>':.
    //     0x6d09dc: add             x1, PP, #0x19, lsl #12  ; [pp+0x198f8] AnonymousClosure: (0x6d4efc), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d09e0: ldr             x1, [x1, #0x8f8]
    // 0x6d09e4: r0 = AllocateClosure()
    //     0x6d09e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d09e8: stur            x0, [fp, #-0x10]
    // 0x6d09ec: r0 = IconButton()
    //     0x6d09ec: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6d09f0: mov             x3, x0
    // 0x6d09f4: ldur            x0, [fp, #-0x10]
    // 0x6d09f8: stur            x3, [fp, #-0x20]
    // 0x6d09fc: StoreField: r3->field_3b = r0
    //     0x6d09fc: stur            w0, [x3, #0x3b]
    // 0x6d0a00: r0 = false
    //     0x6d0a00: add             x0, NULL, #0x30  ; false
    // 0x6d0a04: StoreField: r3->field_4f = r0
    //     0x6d0a04: stur            w0, [x3, #0x4f]
    // 0x6d0a08: r1 = Instance_Icon
    //     0x6d0a08: add             x1, PP, #0x19, lsl #12  ; [pp+0x19900] Obj!Icon@a1e171
    //     0x6d0a0c: ldr             x1, [x1, #0x900]
    // 0x6d0a10: StoreField: r3->field_1f = r1
    //     0x6d0a10: stur            w1, [x3, #0x1f]
    // 0x6d0a14: r4 = Instance__IconButtonVariant
    //     0x6d0a14: add             x4, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6d0a18: ldr             x4, [x4, #0x1b8]
    // 0x6d0a1c: StoreField: r3->field_6f = r4
    //     0x6d0a1c: stur            w4, [x3, #0x6f]
    // 0x6d0a20: ldur            x2, [fp, #-0x18]
    // 0x6d0a24: r1 = Function '<anonymous closure>':.
    //     0x6d0a24: add             x1, PP, #0x19, lsl #12  ; [pp+0x19908] AnonymousClosure: (0x6d4ea0), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d0a28: ldr             x1, [x1, #0x908]
    // 0x6d0a2c: r0 = AllocateClosure()
    //     0x6d0a2c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d0a30: stur            x0, [fp, #-0x10]
    // 0x6d0a34: r0 = IconButton()
    //     0x6d0a34: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x6d0a38: mov             x3, x0
    // 0x6d0a3c: ldur            x0, [fp, #-0x10]
    // 0x6d0a40: stur            x3, [fp, #-0x28]
    // 0x6d0a44: StoreField: r3->field_3b = r0
    //     0x6d0a44: stur            w0, [x3, #0x3b]
    // 0x6d0a48: r0 = false
    //     0x6d0a48: add             x0, NULL, #0x30  ; false
    // 0x6d0a4c: StoreField: r3->field_4f = r0
    //     0x6d0a4c: stur            w0, [x3, #0x4f]
    // 0x6d0a50: r1 = Instance_Icon
    //     0x6d0a50: add             x1, PP, #0x12, lsl #12  ; [pp+0x125b0] Obj!Icon@a1e1b1
    //     0x6d0a54: ldr             x1, [x1, #0x5b0]
    // 0x6d0a58: StoreField: r3->field_1f = r1
    //     0x6d0a58: stur            w1, [x3, #0x1f]
    // 0x6d0a5c: r1 = Instance__IconButtonVariant
    //     0x6d0a5c: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x6d0a60: ldr             x1, [x1, #0x1b8]
    // 0x6d0a64: StoreField: r3->field_6f = r1
    //     0x6d0a64: stur            w1, [x3, #0x6f]
    // 0x6d0a68: r1 = Null
    //     0x6d0a68: mov             x1, NULL
    // 0x6d0a6c: r2 = 4
    //     0x6d0a6c: mov             x2, #4
    // 0x6d0a70: r0 = AllocateArray()
    //     0x6d0a70: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d0a74: mov             x2, x0
    // 0x6d0a78: ldur            x0, [fp, #-0x20]
    // 0x6d0a7c: stur            x2, [fp, #-0x10]
    // 0x6d0a80: StoreField: r2->field_f = r0
    //     0x6d0a80: stur            w0, [x2, #0xf]
    // 0x6d0a84: ldur            x0, [fp, #-0x28]
    // 0x6d0a88: StoreField: r2->field_13 = r0
    //     0x6d0a88: stur            w0, [x2, #0x13]
    // 0x6d0a8c: r1 = <Widget>
    //     0x6d0a8c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d0a90: r0 = AllocateGrowableArray()
    //     0x6d0a90: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d0a94: mov             x1, x0
    // 0x6d0a98: ldur            x0, [fp, #-0x10]
    // 0x6d0a9c: stur            x1, [fp, #-0x20]
    // 0x6d0aa0: StoreField: r1->field_f = r0
    //     0x6d0aa0: stur            w0, [x1, #0xf]
    // 0x6d0aa4: r0 = 4
    //     0x6d0aa4: mov             x0, #4
    // 0x6d0aa8: StoreField: r1->field_b = r0
    //     0x6d0aa8: stur            w0, [x1, #0xb]
    // 0x6d0aac: r0 = AppBar()
    //     0x6d0aac: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x6d0ab0: stur            x0, [fp, #-0x10]
    // 0x6d0ab4: r16 = Instance_Color
    //     0x6d0ab4: add             x16, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d0ab8: ldr             x16, [x16, #0xb78]
    // 0x6d0abc: r30 = Instance_Color
    //     0x6d0abc: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d0ac0: stp             lr, x16, [SP, #0x10]
    // 0x6d0ac4: r16 = 0.000000
    //     0x6d0ac4: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x6d0ac8: ldur            lr, [fp, #-0x20]
    // 0x6d0acc: stp             lr, x16, [SP]
    // 0x6d0ad0: mov             x1, x0
    // 0x6d0ad4: r2 = Instance_Text
    //     0x6d0ad4: add             x2, PP, #0x19, lsl #12  ; [pp+0x19910] Obj!Text@a1b131
    //     0x6d0ad8: ldr             x2, [x2, #0x910]
    // 0x6d0adc: r4 = const [0, 0x6, 0x4, 0x2, actions, 0x5, backgroundColor, 0x2, elevation, 0x4, foregroundColor, 0x3, null]
    //     0x6d0adc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19918] List(13) [0, 0x6, 0x4, 0x2, "actions", 0x5, "backgroundColor", 0x2, "elevation", 0x4, "foregroundColor", 0x3, Null]
    //     0x6d0ae0: ldr             x4, [x4, #0x918]
    // 0x6d0ae4: r0 = AppBar()
    //     0x6d0ae4: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x6d0ae8: ldur            x2, [fp, #-0x18]
    // 0x6d0aec: r1 = Function '<anonymous closure>':.
    //     0x6d0aec: add             x1, PP, #0x19, lsl #12  ; [pp+0x19920] AnonymousClosure: (0x6d0bd4), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d0af0: ldr             x1, [x1, #0x920]
    // 0x6d0af4: r0 = AllocateClosure()
    //     0x6d0af4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d0af8: r1 = <EventProvider>
    //     0x6d0af8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d0afc: ldr             x1, [x1, #0xb80]
    // 0x6d0b00: stur            x0, [fp, #-0x18]
    // 0x6d0b04: r0 = Consumer()
    //     0x6d0b04: bl              #0x6ce964  ; AllocateConsumerStub -> Consumer<X0> (size=0x18)
    // 0x6d0b08: mov             x1, x0
    // 0x6d0b0c: ldur            x0, [fp, #-0x18]
    // 0x6d0b10: stur            x1, [fp, #-0x20]
    // 0x6d0b14: StoreField: r1->field_13 = r0
    //     0x6d0b14: stur            w0, [x1, #0x13]
    // 0x6d0b18: r0 = Scaffold()
    //     0x6d0b18: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x6d0b1c: ldur            x1, [fp, #-0x10]
    // 0x6d0b20: ArrayStore: r0[0] = r1  ; List_4
    //     0x6d0b20: stur            w1, [x0, #0x17]
    // 0x6d0b24: ldur            x1, [fp, #-0x20]
    // 0x6d0b28: StoreField: r0->field_1b = r1
    //     0x6d0b28: stur            w1, [x0, #0x1b]
    // 0x6d0b2c: r1 = Instance_AlignmentDirectional
    //     0x6d0b2c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x6d0b30: ldr             x1, [x1, #0x350]
    // 0x6d0b34: StoreField: r0->field_2f = r1
    //     0x6d0b34: stur            w1, [x0, #0x2f]
    // 0x6d0b38: ldur            x1, [fp, #-8]
    // 0x6d0b3c: StoreField: r0->field_4f = r1
    //     0x6d0b3c: stur            w1, [x0, #0x4f]
    // 0x6d0b40: r1 = true
    //     0x6d0b40: add             x1, NULL, #0x20  ; true
    // 0x6d0b44: StoreField: r0->field_5f = r1
    //     0x6d0b44: stur            w1, [x0, #0x5f]
    // 0x6d0b48: r2 = Instance_DragStartBehavior
    //     0x6d0b48: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6d0b4c: StoreField: r0->field_63 = r2
    //     0x6d0b4c: stur            w2, [x0, #0x63]
    // 0x6d0b50: r2 = false
    //     0x6d0b50: add             x2, NULL, #0x30  ; false
    // 0x6d0b54: StoreField: r0->field_b = r2
    //     0x6d0b54: stur            w2, [x0, #0xb]
    // 0x6d0b58: StoreField: r0->field_f = r1
    //     0x6d0b58: stur            w1, [x0, #0xf]
    // 0x6d0b5c: StoreField: r0->field_13 = r2
    //     0x6d0b5c: stur            w2, [x0, #0x13]
    // 0x6d0b60: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x6d0b60: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x6d0b64: ldr             x2, [x2, #0x358]
    // 0x6d0b68: StoreField: r0->field_4b = r2
    //     0x6d0b68: stur            w2, [x0, #0x4b]
    // 0x6d0b6c: StoreField: r0->field_6b = r1
    //     0x6d0b6c: stur            w1, [x0, #0x6b]
    // 0x6d0b70: StoreField: r0->field_6f = r1
    //     0x6d0b70: stur            w1, [x0, #0x6f]
    // 0x6d0b74: LeaveFrame
    //     0x6d0b74: mov             SP, fp
    //     0x6d0b78: ldp             fp, lr, [SP], #0x10
    // 0x6d0b7c: ret
    //     0x6d0b7c: ret             
    // 0x6d0b80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d0b80: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d0b84: b               #0x6d09a0
    // 0x6d0b88: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d0b88: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Column <anonymous closure>(dynamic, BuildContext, EventProvider, Widget?) {
    // ** addr: 0x6d0bd4, size: 0x978
    // 0x6d0bd4: EnterFrame
    //     0x6d0bd4: stp             fp, lr, [SP, #-0x10]!
    //     0x6d0bd8: mov             fp, SP
    // 0x6d0bdc: AllocStack(0x68)
    //     0x6d0bdc: sub             SP, SP, #0x68
    // 0x6d0be0: SetupParameters([dynamic _ /* r0 */])
    //     0x6d0be0: ldr             x0, [fp, #0x28]
    //     0x6d0be4: ldur            w1, [x0, #0x17]
    //     0x6d0be8: add             x1, x1, HEAP, lsl #32
    //     0x6d0bec: stur            x1, [fp, #-8]
    // 0x6d0bf0: CheckStackOverflow
    //     0x6d0bf0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d0bf4: cmp             SP, x16
    //     0x6d0bf8: b.ls            #0x6d153c
    // 0x6d0bfc: r1 = 2
    //     0x6d0bfc: mov             x1, #2
    // 0x6d0c00: r0 = AllocateContext()
    //     0x6d0c00: bl              #0x927010  ; AllocateContextStub
    // 0x6d0c04: mov             x1, x0
    // 0x6d0c08: ldur            x0, [fp, #-8]
    // 0x6d0c0c: stur            x1, [fp, #-0x10]
    // 0x6d0c10: StoreField: r1->field_b = r0
    //     0x6d0c10: stur            w0, [x1, #0xb]
    // 0x6d0c14: ldr             x2, [fp, #0x20]
    // 0x6d0c18: StoreField: r1->field_f = r2
    //     0x6d0c18: stur            w2, [x1, #0xf]
    // 0x6d0c1c: ldr             x2, [fp, #0x18]
    // 0x6d0c20: StoreField: r1->field_13 = r2
    //     0x6d0c20: stur            w2, [x1, #0x13]
    // 0x6d0c24: r0 = Radius()
    //     0x6d0c24: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6d0c28: d0 = 16.000000
    //     0x6d0c28: fmov            d0, #16.00000000
    // 0x6d0c2c: stur            x0, [fp, #-0x18]
    // 0x6d0c30: StoreField: r0->field_7 = d0
    //     0x6d0c30: stur            d0, [x0, #7]
    // 0x6d0c34: StoreField: r0->field_f = d0
    //     0x6d0c34: stur            d0, [x0, #0xf]
    // 0x6d0c38: r0 = BorderRadius()
    //     0x6d0c38: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6d0c3c: mov             x3, x0
    // 0x6d0c40: ldur            x0, [fp, #-0x18]
    // 0x6d0c44: stur            x3, [fp, #-0x20]
    // 0x6d0c48: StoreField: r3->field_7 = r0
    //     0x6d0c48: stur            w0, [x3, #7]
    // 0x6d0c4c: StoreField: r3->field_b = r0
    //     0x6d0c4c: stur            w0, [x3, #0xb]
    // 0x6d0c50: StoreField: r3->field_f = r0
    //     0x6d0c50: stur            w0, [x3, #0xf]
    // 0x6d0c54: StoreField: r3->field_13 = r0
    //     0x6d0c54: stur            w0, [x3, #0x13]
    // 0x6d0c58: r1 = _ConstMap len:12
    //     0x6d0c58: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6d0c5c: r2 = 400
    //     0x6d0c5c: mov             x2, #0x190
    // 0x6d0c60: r0 = []()
    //     0x6d0c60: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6d0c64: cmp             w0, NULL
    // 0x6d0c68: b.eq            #0x6d1544
    // 0x6d0c6c: str             x0, [SP]
    // 0x6d0c70: r1 = Null
    //     0x6d0c70: mov             x1, NULL
    // 0x6d0c74: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x6d0c74: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x6d0c78: ldr             x4, [x4, #0x788]
    // 0x6d0c7c: r0 = Border.all()
    //     0x6d0c7c: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x6d0c80: stur            x0, [fp, #-0x18]
    // 0x6d0c84: r16 = 0.030000
    //     0x6d0c84: add             x16, PP, #0x14, lsl #12  ; [pp+0x149a8] 0.03
    //     0x6d0c88: ldr             x16, [x16, #0x9a8]
    // 0x6d0c8c: str             x16, [SP]
    // 0x6d0c90: r1 = Instance_Color
    //     0x6d0c90: ldr             x1, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x6d0c94: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x6d0c94: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x6d0c98: ldr             x4, [x4, #0x198]
    // 0x6d0c9c: r0 = withValues()
    //     0x6d0c9c: bl              #0x8c4c60  ; [dart:ui] Color::withValues
    // 0x6d0ca0: stur            x0, [fp, #-0x28]
    // 0x6d0ca4: r0 = BoxShadow()
    //     0x6d0ca4: bl              #0x4bdaa4  ; AllocateBoxShadowStub -> BoxShadow (size=0x24)
    // 0x6d0ca8: stur            x0, [fp, #-0x30]
    // 0x6d0cac: ArrayStore: r0[0] = rZR  ; List_8
    //     0x6d0cac: stur            xzr, [x0, #0x17]
    // 0x6d0cb0: r1 = Instance_BlurStyle
    //     0x6d0cb0: add             x1, PP, #0x14, lsl #12  ; [pp+0x149b0] Obj!BlurStyle@a2d851
    //     0x6d0cb4: ldr             x1, [x1, #0x9b0]
    // 0x6d0cb8: StoreField: r0->field_1f = r1
    //     0x6d0cb8: stur            w1, [x0, #0x1f]
    // 0x6d0cbc: ldur            x1, [fp, #-0x28]
    // 0x6d0cc0: StoreField: r0->field_7 = r1
    //     0x6d0cc0: stur            w1, [x0, #7]
    // 0x6d0cc4: r1 = Instance_Offset
    //     0x6d0cc4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f28] Obj!Offset@a26a11
    //     0x6d0cc8: ldr             x1, [x1, #0xf28]
    // 0x6d0ccc: StoreField: r0->field_b = r1
    //     0x6d0ccc: stur            w1, [x0, #0xb]
    // 0x6d0cd0: d0 = 12.000000
    //     0x6d0cd0: fmov            d0, #12.00000000
    // 0x6d0cd4: StoreField: r0->field_f = d0
    //     0x6d0cd4: stur            d0, [x0, #0xf]
    // 0x6d0cd8: r1 = Null
    //     0x6d0cd8: mov             x1, NULL
    // 0x6d0cdc: r2 = 2
    //     0x6d0cdc: mov             x2, #2
    // 0x6d0ce0: r0 = AllocateArray()
    //     0x6d0ce0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d0ce4: mov             x2, x0
    // 0x6d0ce8: ldur            x0, [fp, #-0x30]
    // 0x6d0cec: stur            x2, [fp, #-0x28]
    // 0x6d0cf0: StoreField: r2->field_f = r0
    //     0x6d0cf0: stur            w0, [x2, #0xf]
    // 0x6d0cf4: r1 = <BoxShadow>
    //     0x6d0cf4: add             x1, PP, #0x14, lsl #12  ; [pp+0x149c0] TypeArguments: <BoxShadow>
    //     0x6d0cf8: ldr             x1, [x1, #0x9c0]
    // 0x6d0cfc: r0 = AllocateGrowableArray()
    //     0x6d0cfc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d0d00: mov             x1, x0
    // 0x6d0d04: ldur            x0, [fp, #-0x28]
    // 0x6d0d08: stur            x1, [fp, #-0x30]
    // 0x6d0d0c: StoreField: r1->field_f = r0
    //     0x6d0d0c: stur            w0, [x1, #0xf]
    // 0x6d0d10: r0 = 2
    //     0x6d0d10: mov             x0, #2
    // 0x6d0d14: StoreField: r1->field_b = r0
    //     0x6d0d14: stur            w0, [x1, #0xb]
    // 0x6d0d18: r0 = BoxDecoration()
    //     0x6d0d18: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x6d0d1c: mov             x2, x0
    // 0x6d0d20: r0 = Instance_Color
    //     0x6d0d20: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d0d24: stur            x2, [fp, #-0x28]
    // 0x6d0d28: StoreField: r2->field_7 = r0
    //     0x6d0d28: stur            w0, [x2, #7]
    // 0x6d0d2c: ldur            x0, [fp, #-0x18]
    // 0x6d0d30: StoreField: r2->field_f = r0
    //     0x6d0d30: stur            w0, [x2, #0xf]
    // 0x6d0d34: ldur            x0, [fp, #-0x20]
    // 0x6d0d38: StoreField: r2->field_13 = r0
    //     0x6d0d38: stur            w0, [x2, #0x13]
    // 0x6d0d3c: ldur            x0, [fp, #-0x30]
    // 0x6d0d40: ArrayStore: r2[0] = r0  ; List_4
    //     0x6d0d40: stur            w0, [x2, #0x17]
    // 0x6d0d44: r0 = Instance_BoxShape
    //     0x6d0d44: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x6d0d48: ldr             x0, [x0, #0x1c8]
    // 0x6d0d4c: StoreField: r2->field_23 = r0
    //     0x6d0d4c: stur            w0, [x2, #0x23]
    // 0x6d0d50: ldur            x0, [fp, #-8]
    // 0x6d0d54: LoadField: r1 = r0->field_f
    //     0x6d0d54: ldur            w1, [x0, #0xf]
    // 0x6d0d58: DecompressPointer r1
    //     0x6d0d58: add             x1, x1, HEAP, lsl #32
    // 0x6d0d5c: LoadField: r3 = r1->field_13
    //     0x6d0d5c: ldur            w3, [x1, #0x13]
    // 0x6d0d60: DecompressPointer r3
    //     0x6d0d60: add             x3, x3, HEAP, lsl #32
    // 0x6d0d64: mov             x1, x3
    // 0x6d0d68: r0 = formatDayOfWeek()
    //     0x6d0d68: bl              #0x6d1b14  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::formatDayOfWeek
    // 0x6d0d6c: r1 = _ConstMap len:12
    //     0x6d0d6c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x6d0d70: r2 = 1200
    //     0x6d0d70: mov             x2, #0x4b0
    // 0x6d0d74: stur            x0, [fp, #-0x18]
    // 0x6d0d78: r0 = []()
    //     0x6d0d78: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x6d0d7c: stur            x0, [fp, #-0x20]
    // 0x6d0d80: cmp             w0, NULL
    // 0x6d0d84: b.eq            #0x6d1548
    // 0x6d0d88: r0 = TextStyle()
    //     0x6d0d88: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x6d0d8c: mov             x1, x0
    // 0x6d0d90: r0 = true
    //     0x6d0d90: add             x0, NULL, #0x20  ; true
    // 0x6d0d94: stur            x1, [fp, #-0x30]
    // 0x6d0d98: StoreField: r1->field_7 = r0
    //     0x6d0d98: stur            w0, [x1, #7]
    // 0x6d0d9c: ldur            x0, [fp, #-0x20]
    // 0x6d0da0: StoreField: r1->field_b = r0
    //     0x6d0da0: stur            w0, [x1, #0xb]
    // 0x6d0da4: r0 = 13.000000
    //     0x6d0da4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b00] 13
    //     0x6d0da8: ldr             x0, [x0, #0xb00]
    // 0x6d0dac: StoreField: r1->field_1f = r0
    //     0x6d0dac: stur            w0, [x1, #0x1f]
    // 0x6d0db0: r0 = Instance_FontWeight
    //     0x6d0db0: add             x0, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x6d0db4: ldr             x0, [x0, #0x990]
    // 0x6d0db8: StoreField: r1->field_23 = r0
    //     0x6d0db8: stur            w0, [x1, #0x23]
    // 0x6d0dbc: r0 = 0.400000
    //     0x6d0dbc: add             x0, PP, #0x14, lsl #12  ; [pp+0x14e90] 0.4
    //     0x6d0dc0: ldr             x0, [x0, #0xe90]
    // 0x6d0dc4: StoreField: r1->field_2b = r0
    //     0x6d0dc4: stur            w0, [x1, #0x2b]
    // 0x6d0dc8: r0 = Text()
    //     0x6d0dc8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d0dcc: mov             x2, x0
    // 0x6d0dd0: ldur            x0, [fp, #-0x18]
    // 0x6d0dd4: stur            x2, [fp, #-0x20]
    // 0x6d0dd8: StoreField: r2->field_b = r0
    //     0x6d0dd8: stur            w0, [x2, #0xb]
    // 0x6d0ddc: ldur            x0, [fp, #-0x30]
    // 0x6d0de0: StoreField: r2->field_13 = r0
    //     0x6d0de0: stur            w0, [x2, #0x13]
    // 0x6d0de4: ldur            x0, [fp, #-8]
    // 0x6d0de8: LoadField: r1 = r0->field_f
    //     0x6d0de8: ldur            w1, [x0, #0xf]
    // 0x6d0dec: DecompressPointer r1
    //     0x6d0dec: add             x1, x1, HEAP, lsl #32
    // 0x6d0df0: LoadField: r3 = r1->field_13
    //     0x6d0df0: ldur            w3, [x1, #0x13]
    // 0x6d0df4: DecompressPointer r3
    //     0x6d0df4: add             x3, x3, HEAP, lsl #32
    // 0x6d0df8: mov             x1, x3
    // 0x6d0dfc: r0 = formatDate()
    //     0x6d0dfc: bl              #0x6d1754  ; [package:umrem_demo/core/utils/date_input_formatter.dart] ::formatDate
    // 0x6d0e00: stur            x0, [fp, #-0x18]
    // 0x6d0e04: r0 = Text()
    //     0x6d0e04: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x6d0e08: mov             x3, x0
    // 0x6d0e0c: ldur            x0, [fp, #-0x18]
    // 0x6d0e10: stur            x3, [fp, #-0x30]
    // 0x6d0e14: StoreField: r3->field_b = r0
    //     0x6d0e14: stur            w0, [x3, #0xb]
    // 0x6d0e18: r0 = Instance_TextStyle
    //     0x6d0e18: add             x0, PP, #0x14, lsl #12  ; [pp+0x14e98] Obj!TextStyle@a17591
    //     0x6d0e1c: ldr             x0, [x0, #0xe98]
    // 0x6d0e20: StoreField: r3->field_13 = r0
    //     0x6d0e20: stur            w0, [x3, #0x13]
    // 0x6d0e24: r1 = Null
    //     0x6d0e24: mov             x1, NULL
    // 0x6d0e28: r2 = 6
    //     0x6d0e28: mov             x2, #6
    // 0x6d0e2c: r0 = AllocateArray()
    //     0x6d0e2c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d0e30: mov             x2, x0
    // 0x6d0e34: ldur            x0, [fp, #-0x20]
    // 0x6d0e38: stur            x2, [fp, #-0x18]
    // 0x6d0e3c: StoreField: r2->field_f = r0
    //     0x6d0e3c: stur            w0, [x2, #0xf]
    // 0x6d0e40: r16 = Instance_SizedBox
    //     0x6d0e40: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x6d0e44: ldr             x16, [x16, #0x338]
    // 0x6d0e48: StoreField: r2->field_13 = r16
    //     0x6d0e48: stur            w16, [x2, #0x13]
    // 0x6d0e4c: ldur            x0, [fp, #-0x30]
    // 0x6d0e50: ArrayStore: r2[0] = r0  ; List_4
    //     0x6d0e50: stur            w0, [x2, #0x17]
    // 0x6d0e54: r1 = <Widget>
    //     0x6d0e54: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d0e58: r0 = AllocateGrowableArray()
    //     0x6d0e58: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d0e5c: mov             x1, x0
    // 0x6d0e60: ldur            x0, [fp, #-0x18]
    // 0x6d0e64: stur            x1, [fp, #-0x20]
    // 0x6d0e68: StoreField: r1->field_f = r0
    //     0x6d0e68: stur            w0, [x1, #0xf]
    // 0x6d0e6c: r2 = 6
    //     0x6d0e6c: mov             x2, #6
    // 0x6d0e70: StoreField: r1->field_b = r2
    //     0x6d0e70: stur            w2, [x1, #0xb]
    // 0x6d0e74: r0 = Column()
    //     0x6d0e74: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6d0e78: mov             x1, x0
    // 0x6d0e7c: r0 = Instance_Axis
    //     0x6d0e7c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d0e80: stur            x1, [fp, #-0x18]
    // 0x6d0e84: StoreField: r1->field_f = r0
    //     0x6d0e84: stur            w0, [x1, #0xf]
    // 0x6d0e88: r2 = Instance_MainAxisAlignment
    //     0x6d0e88: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d0e8c: ldr             x2, [x2, #0x230]
    // 0x6d0e90: StoreField: r1->field_13 = r2
    //     0x6d0e90: stur            w2, [x1, #0x13]
    // 0x6d0e94: r3 = Instance_MainAxisSize
    //     0x6d0e94: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6d0e98: ldr             x3, [x3, #0x330]
    // 0x6d0e9c: ArrayStore: r1[0] = r3  ; List_4
    //     0x6d0e9c: stur            w3, [x1, #0x17]
    // 0x6d0ea0: r4 = Instance_CrossAxisAlignment
    //     0x6d0ea0: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6d0ea4: ldr             x4, [x4, #0x238]
    // 0x6d0ea8: StoreField: r1->field_1b = r4
    //     0x6d0ea8: stur            w4, [x1, #0x1b]
    // 0x6d0eac: r5 = Instance_VerticalDirection
    //     0x6d0eac: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d0eb0: ldr             x5, [x5, #0x340]
    // 0x6d0eb4: StoreField: r1->field_23 = r5
    //     0x6d0eb4: stur            w5, [x1, #0x23]
    // 0x6d0eb8: r6 = Instance_Clip
    //     0x6d0eb8: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d0ebc: ldr             x6, [x6, #0x348]
    // 0x6d0ec0: StoreField: r1->field_2b = r6
    //     0x6d0ec0: stur            w6, [x1, #0x2b]
    // 0x6d0ec4: StoreField: r1->field_2f = rZR
    //     0x6d0ec4: stur            xzr, [x1, #0x2f]
    // 0x6d0ec8: ldur            x7, [fp, #-0x20]
    // 0x6d0ecc: StoreField: r1->field_b = r7
    //     0x6d0ecc: stur            w7, [x1, #0xb]
    // 0x6d0ed0: r0 = Radius()
    //     0x6d0ed0: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x6d0ed4: d0 = 12.000000
    //     0x6d0ed4: fmov            d0, #12.00000000
    // 0x6d0ed8: stur            x0, [fp, #-0x20]
    // 0x6d0edc: StoreField: r0->field_7 = d0
    //     0x6d0edc: stur            d0, [x0, #7]
    // 0x6d0ee0: StoreField: r0->field_f = d0
    //     0x6d0ee0: stur            d0, [x0, #0xf]
    // 0x6d0ee4: r0 = BorderRadius()
    //     0x6d0ee4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x6d0ee8: mov             x1, x0
    // 0x6d0eec: ldur            x0, [fp, #-0x20]
    // 0x6d0ef0: stur            x1, [fp, #-0x30]
    // 0x6d0ef4: StoreField: r1->field_7 = r0
    //     0x6d0ef4: stur            w0, [x1, #7]
    // 0x6d0ef8: StoreField: r1->field_b = r0
    //     0x6d0ef8: stur            w0, [x1, #0xb]
    // 0x6d0efc: StoreField: r1->field_f = r0
    //     0x6d0efc: stur            w0, [x1, #0xf]
    // 0x6d0f00: StoreField: r1->field_13 = r0
    //     0x6d0f00: stur            w0, [x1, #0x13]
    // 0x6d0f04: r0 = RoundedRectangleBorder()
    //     0x6d0f04: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x6d0f08: mov             x1, x0
    // 0x6d0f0c: ldur            x0, [fp, #-0x30]
    // 0x6d0f10: StoreField: r1->field_b = r0
    //     0x6d0f10: stur            w0, [x1, #0xb]
    // 0x6d0f14: r0 = Instance_BorderSide
    //     0x6d0f14: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x6d0f18: ldr             x0, [x0, #0xcb8]
    // 0x6d0f1c: StoreField: r1->field_7 = r0
    //     0x6d0f1c: stur            w0, [x1, #7]
    // 0x6d0f20: r16 = Instance_EdgeInsets
    //     0x6d0f20: add             x16, PP, #0x19, lsl #12  ; [pp+0x19928] Obj!EdgeInsets@a0c291
    //     0x6d0f24: ldr             x16, [x16, #0x928]
    // 0x6d0f28: r30 = Instance_Color
    //     0x6d0f28: add             lr, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d0f2c: ldr             lr, [lr, #0xb78]
    // 0x6d0f30: stp             lr, x16, [SP, #0x10]
    // 0x6d0f34: r16 = Instance_Color
    //     0x6d0f34: ldr             x16, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x6d0f38: stp             x1, x16, [SP]
    // 0x6d0f3c: r4 = const [0, 0x4, 0x4, 0, backgroundColor, 0x1, foregroundColor, 0x2, padding, 0, shape, 0x3, null]
    //     0x6d0f3c: add             x4, PP, #0x19, lsl #12  ; [pp+0x19930] List(13) [0, 0x4, 0x4, 0, "backgroundColor", 0x1, "foregroundColor", 0x2, "padding", 0, "shape", 0x3, Null]
    //     0x6d0f40: ldr             x4, [x4, #0x930]
    // 0x6d0f44: r0 = styleFrom()
    //     0x6d0f44: bl              #0x678590  ; [package:flutter/src/material/text_button.dart] TextButton::styleFrom
    // 0x6d0f48: ldur            x2, [fp, #-0x10]
    // 0x6d0f4c: r1 = Function '<anonymous closure>':.
    //     0x6d0f4c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19938] AnonymousClosure: (0x6d2c64), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d0f50: ldr             x1, [x1, #0x938]
    // 0x6d0f54: stur            x0, [fp, #-0x20]
    // 0x6d0f58: r0 = AllocateClosure()
    //     0x6d0f58: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d0f5c: mov             x5, x0
    // 0x6d0f60: ldur            x6, [fp, #-0x20]
    // 0x6d0f64: r1 = Null
    //     0x6d0f64: mov             x1, NULL
    // 0x6d0f68: r2 = Instance_Icon
    //     0x6d0f68: add             x2, PP, #0x19, lsl #12  ; [pp+0x19940] Obj!Icon@a1e131
    //     0x6d0f6c: ldr             x2, [x2, #0x940]
    // 0x6d0f70: r3 = Instance_Text
    //     0x6d0f70: add             x3, PP, #0x19, lsl #12  ; [pp+0x19948] Obj!Text@a1b041
    //     0x6d0f74: ldr             x3, [x3, #0x948]
    // 0x6d0f78: r0 = TextButton.icon()
    //     0x6d0f78: bl              #0x6d1600  ; [package:flutter/src/material/text_button.dart] TextButton::TextButton.icon
    // 0x6d0f7c: r1 = Null
    //     0x6d0f7c: mov             x1, NULL
    // 0x6d0f80: r2 = 4
    //     0x6d0f80: mov             x2, #4
    // 0x6d0f84: stur            x0, [fp, #-0x20]
    // 0x6d0f88: r0 = AllocateArray()
    //     0x6d0f88: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d0f8c: mov             x2, x0
    // 0x6d0f90: ldur            x0, [fp, #-0x18]
    // 0x6d0f94: stur            x2, [fp, #-0x30]
    // 0x6d0f98: StoreField: r2->field_f = r0
    //     0x6d0f98: stur            w0, [x2, #0xf]
    // 0x6d0f9c: ldur            x0, [fp, #-0x20]
    // 0x6d0fa0: StoreField: r2->field_13 = r0
    //     0x6d0fa0: stur            w0, [x2, #0x13]
    // 0x6d0fa4: r1 = <Widget>
    //     0x6d0fa4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d0fa8: r0 = AllocateGrowableArray()
    //     0x6d0fa8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d0fac: mov             x1, x0
    // 0x6d0fb0: ldur            x0, [fp, #-0x30]
    // 0x6d0fb4: stur            x1, [fp, #-0x18]
    // 0x6d0fb8: StoreField: r1->field_f = r0
    //     0x6d0fb8: stur            w0, [x1, #0xf]
    // 0x6d0fbc: r2 = 4
    //     0x6d0fbc: mov             x2, #4
    // 0x6d0fc0: StoreField: r1->field_b = r2
    //     0x6d0fc0: stur            w2, [x1, #0xb]
    // 0x6d0fc4: r0 = Row()
    //     0x6d0fc4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6d0fc8: mov             x1, x0
    // 0x6d0fcc: r0 = Instance_Axis
    //     0x6d0fcc: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6d0fd0: stur            x1, [fp, #-0x20]
    // 0x6d0fd4: StoreField: r1->field_f = r0
    //     0x6d0fd4: stur            w0, [x1, #0xf]
    // 0x6d0fd8: r2 = Instance_MainAxisAlignment
    //     0x6d0fd8: add             x2, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x6d0fdc: ldr             x2, [x2, #0xd20]
    // 0x6d0fe0: StoreField: r1->field_13 = r2
    //     0x6d0fe0: stur            w2, [x1, #0x13]
    // 0x6d0fe4: r2 = Instance_MainAxisSize
    //     0x6d0fe4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6d0fe8: ldr             x2, [x2, #0x330]
    // 0x6d0fec: ArrayStore: r1[0] = r2  ; List_4
    //     0x6d0fec: stur            w2, [x1, #0x17]
    // 0x6d0ff0: r3 = Instance_CrossAxisAlignment
    //     0x6d0ff0: add             x3, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6d0ff4: ldr             x3, [x3, #0x238]
    // 0x6d0ff8: StoreField: r1->field_1b = r3
    //     0x6d0ff8: stur            w3, [x1, #0x1b]
    // 0x6d0ffc: r4 = Instance_VerticalDirection
    //     0x6d0ffc: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d1000: ldr             x4, [x4, #0x340]
    // 0x6d1004: StoreField: r1->field_23 = r4
    //     0x6d1004: stur            w4, [x1, #0x23]
    // 0x6d1008: r5 = Instance_Clip
    //     0x6d1008: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d100c: ldr             x5, [x5, #0x348]
    // 0x6d1010: StoreField: r1->field_2b = r5
    //     0x6d1010: stur            w5, [x1, #0x2b]
    // 0x6d1014: StoreField: r1->field_2f = rZR
    //     0x6d1014: stur            xzr, [x1, #0x2f]
    // 0x6d1018: ldur            x6, [fp, #-0x18]
    // 0x6d101c: StoreField: r1->field_b = r6
    //     0x6d101c: stur            w6, [x1, #0xb]
    // 0x6d1020: r0 = NavButton()
    //     0x6d1020: bl              #0x6d15f4  ; AllocateNavButtonStub -> NavButton (size=0x18)
    // 0x6d1024: mov             x3, x0
    // 0x6d1028: r0 = Instance_IconData
    //     0x6d1028: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ea8] Obj!IconData@a09b41
    //     0x6d102c: ldr             x0, [x0, #0xea8]
    // 0x6d1030: stur            x3, [fp, #-0x18]
    // 0x6d1034: StoreField: r3->field_b = r0
    //     0x6d1034: stur            w0, [x3, #0xb]
    // 0x6d1038: r0 = "Önceki"
    //     0x6d1038: add             x0, PP, #0x14, lsl #12  ; [pp+0x14eb0] "Önceki"
    //     0x6d103c: ldr             x0, [x0, #0xeb0]
    // 0x6d1040: StoreField: r3->field_f = r0
    //     0x6d1040: stur            w0, [x3, #0xf]
    // 0x6d1044: ldur            x2, [fp, #-0x10]
    // 0x6d1048: r1 = Function '<anonymous closure>':.
    //     0x6d1048: add             x1, PP, #0x19, lsl #12  ; [pp+0x19950] AnonymousClosure: (0x6d2b2c), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d104c: ldr             x1, [x1, #0x950]
    // 0x6d1050: r0 = AllocateClosure()
    //     0x6d1050: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d1054: mov             x1, x0
    // 0x6d1058: ldur            x0, [fp, #-0x18]
    // 0x6d105c: StoreField: r0->field_13 = r1
    //     0x6d105c: stur            w1, [x0, #0x13]
    // 0x6d1060: r1 = <FlexParentData>
    //     0x6d1060: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6d1064: ldr             x1, [x1, #0x340]
    // 0x6d1068: r0 = Expanded()
    //     0x6d1068: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6d106c: mov             x1, x0
    // 0x6d1070: r0 = 1
    //     0x6d1070: mov             x0, #1
    // 0x6d1074: stur            x1, [fp, #-0x30]
    // 0x6d1078: StoreField: r1->field_13 = r0
    //     0x6d1078: stur            x0, [x1, #0x13]
    // 0x6d107c: r2 = Instance_FlexFit
    //     0x6d107c: add             x2, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6d1080: ldr             x2, [x2, #0x348]
    // 0x6d1084: StoreField: r1->field_1b = r2
    //     0x6d1084: stur            w2, [x1, #0x1b]
    // 0x6d1088: ldur            x3, [fp, #-0x18]
    // 0x6d108c: StoreField: r1->field_b = r3
    //     0x6d108c: stur            w3, [x1, #0xb]
    // 0x6d1090: r0 = NavButton()
    //     0x6d1090: bl              #0x6d15f4  ; AllocateNavButtonStub -> NavButton (size=0x18)
    // 0x6d1094: mov             x3, x0
    // 0x6d1098: r0 = Instance_IconData
    //     0x6d1098: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ec0] Obj!IconData@a09e41
    //     0x6d109c: ldr             x0, [x0, #0xec0]
    // 0x6d10a0: stur            x3, [fp, #-0x18]
    // 0x6d10a4: StoreField: r3->field_b = r0
    //     0x6d10a4: stur            w0, [x3, #0xb]
    // 0x6d10a8: r0 = "Gün Seç"
    //     0x6d10a8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ec8] "Gün Seç"
    //     0x6d10ac: ldr             x0, [x0, #0xec8]
    // 0x6d10b0: StoreField: r3->field_f = r0
    //     0x6d10b0: stur            w0, [x3, #0xf]
    // 0x6d10b4: ldur            x2, [fp, #-0x10]
    // 0x6d10b8: r1 = Function '<anonymous closure>':.
    //     0x6d10b8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19958] AnonymousClosure: (0x6d1fe0), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d10bc: ldr             x1, [x1, #0x958]
    // 0x6d10c0: r0 = AllocateClosure()
    //     0x6d10c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d10c4: mov             x1, x0
    // 0x6d10c8: ldur            x0, [fp, #-0x18]
    // 0x6d10cc: StoreField: r0->field_13 = r1
    //     0x6d10cc: stur            w1, [x0, #0x13]
    // 0x6d10d0: r1 = <FlexParentData>
    //     0x6d10d0: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6d10d4: ldr             x1, [x1, #0x340]
    // 0x6d10d8: r0 = Expanded()
    //     0x6d10d8: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6d10dc: mov             x1, x0
    // 0x6d10e0: r0 = 1
    //     0x6d10e0: mov             x0, #1
    // 0x6d10e4: stur            x1, [fp, #-0x38]
    // 0x6d10e8: StoreField: r1->field_13 = r0
    //     0x6d10e8: stur            x0, [x1, #0x13]
    // 0x6d10ec: r2 = Instance_FlexFit
    //     0x6d10ec: add             x2, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6d10f0: ldr             x2, [x2, #0x348]
    // 0x6d10f4: StoreField: r1->field_1b = r2
    //     0x6d10f4: stur            w2, [x1, #0x1b]
    // 0x6d10f8: ldur            x3, [fp, #-0x18]
    // 0x6d10fc: StoreField: r1->field_b = r3
    //     0x6d10fc: stur            w3, [x1, #0xb]
    // 0x6d1100: r0 = NavButton()
    //     0x6d1100: bl              #0x6d15f4  ; AllocateNavButtonStub -> NavButton (size=0x18)
    // 0x6d1104: mov             x3, x0
    // 0x6d1108: r0 = Instance_IconData
    //     0x6d1108: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ed8] Obj!IconData@a09b21
    //     0x6d110c: ldr             x0, [x0, #0xed8]
    // 0x6d1110: stur            x3, [fp, #-0x18]
    // 0x6d1114: StoreField: r3->field_b = r0
    //     0x6d1114: stur            w0, [x3, #0xb]
    // 0x6d1118: r0 = "Sonraki"
    //     0x6d1118: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ee0] "Sonraki"
    //     0x6d111c: ldr             x0, [x0, #0xee0]
    // 0x6d1120: StoreField: r3->field_f = r0
    //     0x6d1120: stur            w0, [x3, #0xf]
    // 0x6d1124: ldur            x2, [fp, #-0x10]
    // 0x6d1128: r1 = Function '<anonymous closure>':.
    //     0x6d1128: add             x1, PP, #0x19, lsl #12  ; [pp+0x19960] AnonymousClosure: (0x6d1e68), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d112c: ldr             x1, [x1, #0x960]
    // 0x6d1130: r0 = AllocateClosure()
    //     0x6d1130: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d1134: mov             x1, x0
    // 0x6d1138: ldur            x0, [fp, #-0x18]
    // 0x6d113c: StoreField: r0->field_13 = r1
    //     0x6d113c: stur            w1, [x0, #0x13]
    // 0x6d1140: r1 = <FlexParentData>
    //     0x6d1140: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6d1144: ldr             x1, [x1, #0x340]
    // 0x6d1148: r0 = Expanded()
    //     0x6d1148: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6d114c: mov             x3, x0
    // 0x6d1150: r0 = 1
    //     0x6d1150: mov             x0, #1
    // 0x6d1154: stur            x3, [fp, #-0x40]
    // 0x6d1158: StoreField: r3->field_13 = r0
    //     0x6d1158: stur            x0, [x3, #0x13]
    // 0x6d115c: r4 = Instance_FlexFit
    //     0x6d115c: add             x4, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6d1160: ldr             x4, [x4, #0x348]
    // 0x6d1164: StoreField: r3->field_1b = r4
    //     0x6d1164: stur            w4, [x3, #0x1b]
    // 0x6d1168: ldur            x1, [fp, #-0x18]
    // 0x6d116c: StoreField: r3->field_b = r1
    //     0x6d116c: stur            w1, [x3, #0xb]
    // 0x6d1170: r1 = Null
    //     0x6d1170: mov             x1, NULL
    // 0x6d1174: r2 = 10
    //     0x6d1174: mov             x2, #0xa
    // 0x6d1178: r0 = AllocateArray()
    //     0x6d1178: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d117c: mov             x2, x0
    // 0x6d1180: ldur            x0, [fp, #-0x30]
    // 0x6d1184: stur            x2, [fp, #-0x18]
    // 0x6d1188: StoreField: r2->field_f = r0
    //     0x6d1188: stur            w0, [x2, #0xf]
    // 0x6d118c: r16 = Instance_SizedBox
    //     0x6d118c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ee8] Obj!SizedBox@a1fa31
    //     0x6d1190: ldr             x16, [x16, #0xee8]
    // 0x6d1194: StoreField: r2->field_13 = r16
    //     0x6d1194: stur            w16, [x2, #0x13]
    // 0x6d1198: ldur            x0, [fp, #-0x38]
    // 0x6d119c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6d119c: stur            w0, [x2, #0x17]
    // 0x6d11a0: r16 = Instance_SizedBox
    //     0x6d11a0: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ee8] Obj!SizedBox@a1fa31
    //     0x6d11a4: ldr             x16, [x16, #0xee8]
    // 0x6d11a8: StoreField: r2->field_1b = r16
    //     0x6d11a8: stur            w16, [x2, #0x1b]
    // 0x6d11ac: ldur            x0, [fp, #-0x40]
    // 0x6d11b0: StoreField: r2->field_1f = r0
    //     0x6d11b0: stur            w0, [x2, #0x1f]
    // 0x6d11b4: r1 = <Widget>
    //     0x6d11b4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d11b8: r0 = AllocateGrowableArray()
    //     0x6d11b8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d11bc: mov             x1, x0
    // 0x6d11c0: ldur            x0, [fp, #-0x18]
    // 0x6d11c4: stur            x1, [fp, #-0x30]
    // 0x6d11c8: StoreField: r1->field_f = r0
    //     0x6d11c8: stur            w0, [x1, #0xf]
    // 0x6d11cc: r0 = 10
    //     0x6d11cc: mov             x0, #0xa
    // 0x6d11d0: StoreField: r1->field_b = r0
    //     0x6d11d0: stur            w0, [x1, #0xb]
    // 0x6d11d4: r0 = Row()
    //     0x6d11d4: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x6d11d8: mov             x3, x0
    // 0x6d11dc: r0 = Instance_Axis
    //     0x6d11dc: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x6d11e0: stur            x3, [fp, #-0x18]
    // 0x6d11e4: StoreField: r3->field_f = r0
    //     0x6d11e4: stur            w0, [x3, #0xf]
    // 0x6d11e8: r0 = Instance_MainAxisAlignment
    //     0x6d11e8: add             x0, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d11ec: ldr             x0, [x0, #0x230]
    // 0x6d11f0: StoreField: r3->field_13 = r0
    //     0x6d11f0: stur            w0, [x3, #0x13]
    // 0x6d11f4: r4 = Instance_MainAxisSize
    //     0x6d11f4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6d11f8: ldr             x4, [x4, #0x330]
    // 0x6d11fc: ArrayStore: r3[0] = r4  ; List_4
    //     0x6d11fc: stur            w4, [x3, #0x17]
    // 0x6d1200: r5 = Instance_CrossAxisAlignment
    //     0x6d1200: add             x5, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6d1204: ldr             x5, [x5, #0x338]
    // 0x6d1208: StoreField: r3->field_1b = r5
    //     0x6d1208: stur            w5, [x3, #0x1b]
    // 0x6d120c: r6 = Instance_VerticalDirection
    //     0x6d120c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d1210: ldr             x6, [x6, #0x340]
    // 0x6d1214: StoreField: r3->field_23 = r6
    //     0x6d1214: stur            w6, [x3, #0x23]
    // 0x6d1218: r7 = Instance_Clip
    //     0x6d1218: add             x7, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d121c: ldr             x7, [x7, #0x348]
    // 0x6d1220: StoreField: r3->field_2b = r7
    //     0x6d1220: stur            w7, [x3, #0x2b]
    // 0x6d1224: StoreField: r3->field_2f = rZR
    //     0x6d1224: stur            xzr, [x3, #0x2f]
    // 0x6d1228: ldur            x1, [fp, #-0x30]
    // 0x6d122c: StoreField: r3->field_b = r1
    //     0x6d122c: stur            w1, [x3, #0xb]
    // 0x6d1230: r1 = Null
    //     0x6d1230: mov             x1, NULL
    // 0x6d1234: r2 = 6
    //     0x6d1234: mov             x2, #6
    // 0x6d1238: r0 = AllocateArray()
    //     0x6d1238: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d123c: mov             x2, x0
    // 0x6d1240: ldur            x0, [fp, #-0x20]
    // 0x6d1244: stur            x2, [fp, #-0x30]
    // 0x6d1248: StoreField: r2->field_f = r0
    //     0x6d1248: stur            w0, [x2, #0xf]
    // 0x6d124c: r16 = Instance_SizedBox
    //     0x6d124c: add             x16, PP, #0x14, lsl #12  ; [pp+0x14ef0] Obj!SizedBox@a1fa11
    //     0x6d1250: ldr             x16, [x16, #0xef0]
    // 0x6d1254: StoreField: r2->field_13 = r16
    //     0x6d1254: stur            w16, [x2, #0x13]
    // 0x6d1258: ldur            x0, [fp, #-0x18]
    // 0x6d125c: ArrayStore: r2[0] = r0  ; List_4
    //     0x6d125c: stur            w0, [x2, #0x17]
    // 0x6d1260: r1 = <Widget>
    //     0x6d1260: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d1264: r0 = AllocateGrowableArray()
    //     0x6d1264: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d1268: mov             x1, x0
    // 0x6d126c: ldur            x0, [fp, #-0x30]
    // 0x6d1270: stur            x1, [fp, #-0x18]
    // 0x6d1274: StoreField: r1->field_f = r0
    //     0x6d1274: stur            w0, [x1, #0xf]
    // 0x6d1278: r0 = 6
    //     0x6d1278: mov             x0, #6
    // 0x6d127c: StoreField: r1->field_b = r0
    //     0x6d127c: stur            w0, [x1, #0xb]
    // 0x6d1280: r0 = Column()
    //     0x6d1280: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6d1284: mov             x1, x0
    // 0x6d1288: r0 = Instance_Axis
    //     0x6d1288: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d128c: stur            x1, [fp, #-0x20]
    // 0x6d1290: StoreField: r1->field_f = r0
    //     0x6d1290: stur            w0, [x1, #0xf]
    // 0x6d1294: r2 = Instance_MainAxisAlignment
    //     0x6d1294: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d1298: ldr             x2, [x2, #0x230]
    // 0x6d129c: StoreField: r1->field_13 = r2
    //     0x6d129c: stur            w2, [x1, #0x13]
    // 0x6d12a0: r3 = Instance_MainAxisSize
    //     0x6d12a0: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6d12a4: ldr             x3, [x3, #0x330]
    // 0x6d12a8: ArrayStore: r1[0] = r3  ; List_4
    //     0x6d12a8: stur            w3, [x1, #0x17]
    // 0x6d12ac: r4 = Instance_CrossAxisAlignment
    //     0x6d12ac: add             x4, PP, #0x12, lsl #12  ; [pp+0x12238] Obj!CrossAxisAlignment@a2a5d1
    //     0x6d12b0: ldr             x4, [x4, #0x238]
    // 0x6d12b4: StoreField: r1->field_1b = r4
    //     0x6d12b4: stur            w4, [x1, #0x1b]
    // 0x6d12b8: r4 = Instance_VerticalDirection
    //     0x6d12b8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d12bc: ldr             x4, [x4, #0x340]
    // 0x6d12c0: StoreField: r1->field_23 = r4
    //     0x6d12c0: stur            w4, [x1, #0x23]
    // 0x6d12c4: r5 = Instance_Clip
    //     0x6d12c4: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d12c8: ldr             x5, [x5, #0x348]
    // 0x6d12cc: StoreField: r1->field_2b = r5
    //     0x6d12cc: stur            w5, [x1, #0x2b]
    // 0x6d12d0: StoreField: r1->field_2f = rZR
    //     0x6d12d0: stur            xzr, [x1, #0x2f]
    // 0x6d12d4: ldur            x6, [fp, #-0x18]
    // 0x6d12d8: StoreField: r1->field_b = r6
    //     0x6d12d8: stur            w6, [x1, #0xb]
    // 0x6d12dc: r0 = Container()
    //     0x6d12dc: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x6d12e0: stur            x0, [fp, #-0x18]
    // 0x6d12e4: r16 = Instance_EdgeInsets
    //     0x6d12e4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6d12e8: ldr             x16, [x16, #0x240]
    // 0x6d12ec: ldur            lr, [fp, #-0x28]
    // 0x6d12f0: stp             lr, x16, [SP, #8]
    // 0x6d12f4: ldur            x16, [fp, #-0x20]
    // 0x6d12f8: str             x16, [SP]
    // 0x6d12fc: mov             x1, x0
    // 0x6d1300: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x6d1300: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x6d1304: ldr             x4, [x4, #0x1e8]
    // 0x6d1308: r0 = Container()
    //     0x6d1308: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x6d130c: r0 = Padding()
    //     0x6d130c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6d1310: mov             x1, x0
    // 0x6d1314: r0 = Instance_EdgeInsets
    //     0x6d1314: add             x0, PP, #0x14, lsl #12  ; [pp+0x14ef8] Obj!EdgeInsets@a0c2c1
    //     0x6d1318: ldr             x0, [x0, #0xef8]
    // 0x6d131c: stur            x1, [fp, #-0x20]
    // 0x6d1320: StoreField: r1->field_f = r0
    //     0x6d1320: stur            w0, [x1, #0xf]
    // 0x6d1324: ldur            x0, [fp, #-0x18]
    // 0x6d1328: StoreField: r1->field_b = r0
    //     0x6d1328: stur            w0, [x1, #0xb]
    // 0x6d132c: ldur            x2, [fp, #-0x10]
    // 0x6d1330: LoadField: r0 = r2->field_13
    //     0x6d1330: ldur            w0, [x2, #0x13]
    // 0x6d1334: DecompressPointer r0
    //     0x6d1334: add             x0, x0, HEAP, lsl #32
    // 0x6d1338: LoadField: r3 = r0->field_27
    //     0x6d1338: ldur            w3, [x0, #0x27]
    // 0x6d133c: DecompressPointer r3
    //     0x6d133c: add             x3, x3, HEAP, lsl #32
    // 0x6d1340: tbnz            w3, #4, #0x6d138c
    // 0x6d1344: r0 = CircularProgressIndicator()
    //     0x6d1344: bl              #0x6d15e8  ; AllocateCircularProgressIndicatorStub -> CircularProgressIndicator (size=0x48)
    // 0x6d1348: mov             x1, x0
    // 0x6d134c: r0 = Instance__ActivityIndicatorType
    //     0x6d134c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f00] Obj!_ActivityIndicatorType@a2b551
    //     0x6d1350: ldr             x0, [x0, #0xf00]
    // 0x6d1354: stur            x1, [fp, #-0x18]
    // 0x6d1358: StoreField: r1->field_23 = r0
    //     0x6d1358: stur            w0, [x1, #0x23]
    // 0x6d135c: r0 = Instance_Color
    //     0x6d135c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11b78] Obj!Color@a252a1
    //     0x6d1360: ldr             x0, [x0, #0xb78]
    // 0x6d1364: StoreField: r1->field_13 = r0
    //     0x6d1364: stur            w0, [x1, #0x13]
    // 0x6d1368: r0 = Center()
    //     0x6d1368: bl              #0x660078  ; AllocateCenterStub -> Center (size=0x1c)
    // 0x6d136c: mov             x1, x0
    // 0x6d1370: r0 = Instance_Alignment
    //     0x6d1370: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x6d1374: ldr             x0, [x0, #0x60]
    // 0x6d1378: StoreField: r1->field_f = r0
    //     0x6d1378: stur            w0, [x1, #0xf]
    // 0x6d137c: ldur            x0, [fp, #-0x18]
    // 0x6d1380: StoreField: r1->field_b = r0
    //     0x6d1380: stur            w0, [x1, #0xb]
    // 0x6d1384: mov             x2, x1
    // 0x6d1388: b               #0x6d1460
    // 0x6d138c: LoadField: r1 = r0->field_2b
    //     0x6d138c: ldur            w1, [x0, #0x2b]
    // 0x6d1390: DecompressPointer r1
    //     0x6d1390: add             x1, x1, HEAP, lsl #32
    // 0x6d1394: r0 = LoadClassIdInstr(r1)
    //     0x6d1394: ldur            x0, [x1, #-1]
    //     0x6d1398: ubfx            x0, x0, #0xc, #0x14
    // 0x6d139c: r0 = GDT[cid_x0 + 0xcda7]()
    //     0x6d139c: mov             x17, #0xcda7
    //     0x6d13a0: add             lr, x0, x17
    //     0x6d13a4: ldr             lr, [x21, lr, lsl #3]
    //     0x6d13a8: blr             lr
    // 0x6d13ac: tbnz            w0, #4, #0x6d13e0
    // 0x6d13b0: ldur            x0, [fp, #-8]
    // 0x6d13b4: LoadField: r1 = r0->field_f
    //     0x6d13b4: ldur            w1, [x0, #0xf]
    // 0x6d13b8: DecompressPointer r1
    //     0x6d13b8: add             x1, x1, HEAP, lsl #32
    // 0x6d13bc: LoadField: r0 = r1->field_13
    //     0x6d13bc: ldur            w0, [x1, #0x13]
    // 0x6d13c0: DecompressPointer r0
    //     0x6d13c0: add             x0, x0, HEAP, lsl #32
    // 0x6d13c4: stur            x0, [fp, #-8]
    // 0x6d13c8: r0 = EmptyCard()
    //     0x6d13c8: bl              #0x6d15dc  ; AllocateEmptyCardStub -> EmptyCard (size=0x10)
    // 0x6d13cc: mov             x1, x0
    // 0x6d13d0: ldur            x0, [fp, #-8]
    // 0x6d13d4: StoreField: r1->field_b = r0
    //     0x6d13d4: stur            w0, [x1, #0xb]
    // 0x6d13d8: mov             x0, x1
    // 0x6d13dc: b               #0x6d145c
    // 0x6d13e0: ldur            x2, [fp, #-0x10]
    // 0x6d13e4: LoadField: r0 = r2->field_13
    //     0x6d13e4: ldur            w0, [x2, #0x13]
    // 0x6d13e8: DecompressPointer r0
    //     0x6d13e8: add             x0, x0, HEAP, lsl #32
    // 0x6d13ec: LoadField: r1 = r0->field_2b
    //     0x6d13ec: ldur            w1, [x0, #0x2b]
    // 0x6d13f0: DecompressPointer r1
    //     0x6d13f0: add             x1, x1, HEAP, lsl #32
    // 0x6d13f4: r0 = LoadClassIdInstr(r1)
    //     0x6d13f4: ldur            x0, [x1, #-1]
    //     0x6d13f8: ubfx            x0, x0, #0xc, #0x14
    // 0x6d13fc: str             x1, [SP]
    // 0x6d1400: r0 = GDT[cid_x0 + 0x879f]()
    //     0x6d1400: mov             x17, #0x879f
    //     0x6d1404: add             lr, x0, x17
    //     0x6d1408: ldr             lr, [x21, lr, lsl #3]
    //     0x6d140c: blr             lr
    // 0x6d1410: r3 = LoadInt32Instr(r0)
    //     0x6d1410: sbfx            x3, x0, #1, #0x1f
    // 0x6d1414: ldur            x2, [fp, #-0x10]
    // 0x6d1418: stur            x3, [fp, #-0x48]
    // 0x6d141c: r1 = Function '<anonymous closure>':.
    //     0x6d141c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19968] AnonymousClosure: (0x6d1b7c), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d1420: ldr             x1, [x1, #0x968]
    // 0x6d1424: r0 = AllocateClosure()
    //     0x6d1424: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d1428: stur            x0, [fp, #-8]
    // 0x6d142c: r0 = ListView()
    //     0x6d142c: bl              #0x67cc90  ; AllocateListViewStub -> ListView (size=0x68)
    // 0x6d1430: stur            x0, [fp, #-0x10]
    // 0x6d1434: r16 = Instance_EdgeInsets
    //     0x6d1434: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x6d1438: ldr             x16, [x16, #0x240]
    // 0x6d143c: str             x16, [SP]
    // 0x6d1440: mov             x1, x0
    // 0x6d1444: ldur            x2, [fp, #-8]
    // 0x6d1448: ldur            x3, [fp, #-0x48]
    // 0x6d144c: r4 = const [0, 0x4, 0x1, 0x3, padding, 0x3, null]
    //     0x6d144c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14e60] List(7) [0, 0x4, 0x1, 0x3, "padding", 0x3, Null]
    //     0x6d1450: ldr             x4, [x4, #0xe60]
    // 0x6d1454: r0 = ListView.builder()
    //     0x6d1454: bl              #0x6ce4a8  ; [package:flutter/src/widgets/scroll_view.dart] ListView::ListView.builder
    // 0x6d1458: ldur            x0, [fp, #-0x10]
    // 0x6d145c: mov             x2, x0
    // 0x6d1460: ldur            x0, [fp, #-0x20]
    // 0x6d1464: stur            x2, [fp, #-8]
    // 0x6d1468: r1 = <FlexParentData>
    //     0x6d1468: add             x1, PP, #0x12, lsl #12  ; [pp+0x12340] TypeArguments: <FlexParentData>
    //     0x6d146c: ldr             x1, [x1, #0x340]
    // 0x6d1470: r0 = Expanded()
    //     0x6d1470: bl              #0x66bfd0  ; AllocateExpandedStub -> Expanded (size=0x20)
    // 0x6d1474: mov             x3, x0
    // 0x6d1478: r0 = 1
    //     0x6d1478: mov             x0, #1
    // 0x6d147c: stur            x3, [fp, #-0x10]
    // 0x6d1480: StoreField: r3->field_13 = r0
    //     0x6d1480: stur            x0, [x3, #0x13]
    // 0x6d1484: r0 = Instance_FlexFit
    //     0x6d1484: add             x0, PP, #0x12, lsl #12  ; [pp+0x12348] Obj!FlexFit@a2a711
    //     0x6d1488: ldr             x0, [x0, #0x348]
    // 0x6d148c: StoreField: r3->field_1b = r0
    //     0x6d148c: stur            w0, [x3, #0x1b]
    // 0x6d1490: ldur            x0, [fp, #-8]
    // 0x6d1494: StoreField: r3->field_b = r0
    //     0x6d1494: stur            w0, [x3, #0xb]
    // 0x6d1498: r1 = Null
    //     0x6d1498: mov             x1, NULL
    // 0x6d149c: r2 = 4
    //     0x6d149c: mov             x2, #4
    // 0x6d14a0: r0 = AllocateArray()
    //     0x6d14a0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d14a4: mov             x2, x0
    // 0x6d14a8: ldur            x0, [fp, #-0x20]
    // 0x6d14ac: stur            x2, [fp, #-8]
    // 0x6d14b0: StoreField: r2->field_f = r0
    //     0x6d14b0: stur            w0, [x2, #0xf]
    // 0x6d14b4: ldur            x0, [fp, #-0x10]
    // 0x6d14b8: StoreField: r2->field_13 = r0
    //     0x6d14b8: stur            w0, [x2, #0x13]
    // 0x6d14bc: r1 = <Widget>
    //     0x6d14bc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6d14c0: r0 = AllocateGrowableArray()
    //     0x6d14c0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d14c4: mov             x1, x0
    // 0x6d14c8: ldur            x0, [fp, #-8]
    // 0x6d14cc: stur            x1, [fp, #-0x10]
    // 0x6d14d0: StoreField: r1->field_f = r0
    //     0x6d14d0: stur            w0, [x1, #0xf]
    // 0x6d14d4: r0 = 4
    //     0x6d14d4: mov             x0, #4
    // 0x6d14d8: StoreField: r1->field_b = r0
    //     0x6d14d8: stur            w0, [x1, #0xb]
    // 0x6d14dc: r0 = Column()
    //     0x6d14dc: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x6d14e0: r1 = Instance_Axis
    //     0x6d14e0: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x6d14e4: StoreField: r0->field_f = r1
    //     0x6d14e4: stur            w1, [x0, #0xf]
    // 0x6d14e8: r1 = Instance_MainAxisAlignment
    //     0x6d14e8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x6d14ec: ldr             x1, [x1, #0x230]
    // 0x6d14f0: StoreField: r0->field_13 = r1
    //     0x6d14f0: stur            w1, [x0, #0x13]
    // 0x6d14f4: r1 = Instance_MainAxisSize
    //     0x6d14f4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x6d14f8: ldr             x1, [x1, #0x330]
    // 0x6d14fc: ArrayStore: r0[0] = r1  ; List_4
    //     0x6d14fc: stur            w1, [x0, #0x17]
    // 0x6d1500: r1 = Instance_CrossAxisAlignment
    //     0x6d1500: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x6d1504: ldr             x1, [x1, #0x338]
    // 0x6d1508: StoreField: r0->field_1b = r1
    //     0x6d1508: stur            w1, [x0, #0x1b]
    // 0x6d150c: r1 = Instance_VerticalDirection
    //     0x6d150c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x6d1510: ldr             x1, [x1, #0x340]
    // 0x6d1514: StoreField: r0->field_23 = r1
    //     0x6d1514: stur            w1, [x0, #0x23]
    // 0x6d1518: r1 = Instance_Clip
    //     0x6d1518: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x6d151c: ldr             x1, [x1, #0x348]
    // 0x6d1520: StoreField: r0->field_2b = r1
    //     0x6d1520: stur            w1, [x0, #0x2b]
    // 0x6d1524: StoreField: r0->field_2f = rZR
    //     0x6d1524: stur            xzr, [x0, #0x2f]
    // 0x6d1528: ldur            x1, [fp, #-0x10]
    // 0x6d152c: StoreField: r0->field_b = r1
    //     0x6d152c: stur            w1, [x0, #0xb]
    // 0x6d1530: LeaveFrame
    //     0x6d1530: mov             SP, fp
    //     0x6d1534: ldp             fp, lr, [SP], #0x10
    // 0x6d1538: ret
    //     0x6d1538: ret             
    // 0x6d153c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d153c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1540: b               #0x6d0bfc
    // 0x6d1544: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d1544: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6d1548: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6d1548: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Padding <anonymous closure>(dynamic, BuildContext, int) {
    // ** addr: 0x6d1b7c, size: 0xf0
    // 0x6d1b7c: EnterFrame
    //     0x6d1b7c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1b80: mov             fp, SP
    // 0x6d1b84: AllocStack(0x30)
    //     0x6d1b84: sub             SP, SP, #0x30
    // 0x6d1b88: SetupParameters([dynamic _ /* r0 */])
    //     0x6d1b88: ldr             x0, [fp, #0x20]
    //     0x6d1b8c: ldur            w1, [x0, #0x17]
    //     0x6d1b90: add             x1, x1, HEAP, lsl #32
    //     0x6d1b94: stur            x1, [fp, #-8]
    // 0x6d1b98: CheckStackOverflow
    //     0x6d1b98: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1b9c: cmp             SP, x16
    //     0x6d1ba0: b.ls            #0x6d1c64
    // 0x6d1ba4: LoadField: r0 = r1->field_13
    //     0x6d1ba4: ldur            w0, [x1, #0x13]
    // 0x6d1ba8: DecompressPointer r0
    //     0x6d1ba8: add             x0, x0, HEAP, lsl #32
    // 0x6d1bac: LoadField: r2 = r0->field_2b
    //     0x6d1bac: ldur            w2, [x0, #0x2b]
    // 0x6d1bb0: DecompressPointer r2
    //     0x6d1bb0: add             x2, x2, HEAP, lsl #32
    // 0x6d1bb4: r0 = LoadClassIdInstr(r2)
    //     0x6d1bb4: ldur            x0, [x2, #-1]
    //     0x6d1bb8: ubfx            x0, x0, #0xc, #0x14
    // 0x6d1bbc: ldr             x16, [fp, #0x10]
    // 0x6d1bc0: stp             x16, x2, [SP]
    // 0x6d1bc4: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x6d1bc4: sub             lr, x0, #0xdfc
    //     0x6d1bc8: ldr             lr, [x21, lr, lsl #3]
    //     0x6d1bcc: blr             lr
    // 0x6d1bd0: mov             x4, x0
    // 0x6d1bd4: ldur            x0, [fp, #-8]
    // 0x6d1bd8: stur            x4, [fp, #-0x10]
    // 0x6d1bdc: LoadField: r1 = r0->field_13
    //     0x6d1bdc: ldur            w1, [x0, #0x13]
    // 0x6d1be0: DecompressPointer r1
    //     0x6d1be0: add             x1, x1, HEAP, lsl #32
    // 0x6d1be4: ArrayLoad: r2 = r4[0]  ; List_4
    //     0x6d1be4: ldur            w2, [x4, #0x17]
    // 0x6d1be8: DecompressPointer r2
    //     0x6d1be8: add             x2, x2, HEAP, lsl #32
    // 0x6d1bec: LoadField: r3 = r4->field_1b
    //     0x6d1bec: ldur            x3, [x4, #0x1b]
    // 0x6d1bf0: r0 = getEndTime()
    //     0x6d1bf0: bl              #0x6d1c78  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::getEndTime
    // 0x6d1bf4: mov             x1, x0
    // 0x6d1bf8: ldur            x0, [fp, #-8]
    // 0x6d1bfc: stur            x1, [fp, #-0x18]
    // 0x6d1c00: LoadField: r2 = r0->field_b
    //     0x6d1c00: ldur            w2, [x0, #0xb]
    // 0x6d1c04: DecompressPointer r2
    //     0x6d1c04: add             x2, x2, HEAP, lsl #32
    // 0x6d1c08: LoadField: r0 = r2->field_f
    //     0x6d1c08: ldur            w0, [x2, #0xf]
    // 0x6d1c0c: DecompressPointer r0
    //     0x6d1c0c: add             x0, x0, HEAP, lsl #32
    // 0x6d1c10: LoadField: r2 = r0->field_13
    //     0x6d1c10: ldur            w2, [x0, #0x13]
    // 0x6d1c14: DecompressPointer r2
    //     0x6d1c14: add             x2, x2, HEAP, lsl #32
    // 0x6d1c18: stur            x2, [fp, #-8]
    // 0x6d1c1c: r0 = EventCard()
    //     0x6d1c1c: bl              #0x6d1c6c  ; AllocateEventCardStub -> EventCard (size=0x18)
    // 0x6d1c20: mov             x1, x0
    // 0x6d1c24: ldur            x0, [fp, #-0x10]
    // 0x6d1c28: stur            x1, [fp, #-0x20]
    // 0x6d1c2c: StoreField: r1->field_b = r0
    //     0x6d1c2c: stur            w0, [x1, #0xb]
    // 0x6d1c30: ldur            x0, [fp, #-0x18]
    // 0x6d1c34: StoreField: r1->field_f = r0
    //     0x6d1c34: stur            w0, [x1, #0xf]
    // 0x6d1c38: ldur            x0, [fp, #-8]
    // 0x6d1c3c: StoreField: r1->field_13 = r0
    //     0x6d1c3c: stur            w0, [x1, #0x13]
    // 0x6d1c40: r0 = Padding()
    //     0x6d1c40: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x6d1c44: r1 = Instance_EdgeInsets
    //     0x6d1c44: add             x1, PP, #0x14, lsl #12  ; [pp+0x14f18] Obj!EdgeInsets@a0c261
    //     0x6d1c48: ldr             x1, [x1, #0xf18]
    // 0x6d1c4c: StoreField: r0->field_f = r1
    //     0x6d1c4c: stur            w1, [x0, #0xf]
    // 0x6d1c50: ldur            x1, [fp, #-0x20]
    // 0x6d1c54: StoreField: r0->field_b = r1
    //     0x6d1c54: stur            w1, [x0, #0xb]
    // 0x6d1c58: LeaveFrame
    //     0x6d1c58: mov             SP, fp
    //     0x6d1c5c: ldp             fp, lr, [SP], #0x10
    // 0x6d1c60: ret
    //     0x6d1c60: ret             
    // 0x6d1c64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d1c64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1c68: b               #0x6d1ba4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d1e68, size: 0xb4
    // 0x6d1e68: EnterFrame
    //     0x6d1e68: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1e6c: mov             fp, SP
    // 0x6d1e70: AllocStack(0x28)
    //     0x6d1e70: sub             SP, SP, #0x28
    // 0x6d1e74: SetupParameters([dynamic _ /* r0 */])
    //     0x6d1e74: ldr             x0, [fp, #0x10]
    //     0x6d1e78: ldur            w3, [x0, #0x17]
    //     0x6d1e7c: add             x3, x3, HEAP, lsl #32
    //     0x6d1e80: stur            x3, [fp, #-0x18]
    // 0x6d1e84: CheckStackOverflow
    //     0x6d1e84: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1e88: cmp             SP, x16
    //     0x6d1e8c: b.ls            #0x6d1f14
    // 0x6d1e90: LoadField: r0 = r3->field_b
    //     0x6d1e90: ldur            w0, [x3, #0xb]
    // 0x6d1e94: DecompressPointer r0
    //     0x6d1e94: add             x0, x0, HEAP, lsl #32
    // 0x6d1e98: stur            x0, [fp, #-0x10]
    // 0x6d1e9c: LoadField: r4 = r0->field_f
    //     0x6d1e9c: ldur            w4, [x0, #0xf]
    // 0x6d1ea0: DecompressPointer r4
    //     0x6d1ea0: add             x4, x4, HEAP, lsl #32
    // 0x6d1ea4: mov             x2, x3
    // 0x6d1ea8: stur            x4, [fp, #-8]
    // 0x6d1eac: r1 = Function '<anonymous closure>':.
    //     0x6d1eac: add             x1, PP, #0x19, lsl #12  ; [pp+0x19970] AnonymousClosure: (0x6d1f5c), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d1eb0: ldr             x1, [x1, #0x970]
    // 0x6d1eb4: r0 = AllocateClosure()
    //     0x6d1eb4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d1eb8: ldur            x1, [fp, #-8]
    // 0x6d1ebc: mov             x2, x0
    // 0x6d1ec0: r0 = setState()
    //     0x6d1ec0: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6d1ec4: ldur            x0, [fp, #-0x18]
    // 0x6d1ec8: LoadField: r1 = r0->field_f
    //     0x6d1ec8: ldur            w1, [x0, #0xf]
    // 0x6d1ecc: DecompressPointer r1
    //     0x6d1ecc: add             x1, x1, HEAP, lsl #32
    // 0x6d1ed0: r16 = <EventProvider>
    //     0x6d1ed0: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d1ed4: ldr             x16, [x16, #0xb80]
    // 0x6d1ed8: stp             x1, x16, [SP]
    // 0x6d1edc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d1edc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d1ee0: r0 = ReadContext.read()
    //     0x6d1ee0: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6d1ee4: mov             x1, x0
    // 0x6d1ee8: ldur            x0, [fp, #-0x10]
    // 0x6d1eec: LoadField: r2 = r0->field_f
    //     0x6d1eec: ldur            w2, [x0, #0xf]
    // 0x6d1ef0: DecompressPointer r2
    //     0x6d1ef0: add             x2, x2, HEAP, lsl #32
    // 0x6d1ef4: LoadField: r0 = r2->field_13
    //     0x6d1ef4: ldur            w0, [x2, #0x13]
    // 0x6d1ef8: DecompressPointer r0
    //     0x6d1ef8: add             x0, x0, HEAP, lsl #32
    // 0x6d1efc: mov             x2, x0
    // 0x6d1f00: r0 = selectDate()
    //     0x6d1f00: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x6d1f04: r0 = Null
    //     0x6d1f04: mov             x0, NULL
    // 0x6d1f08: LeaveFrame
    //     0x6d1f08: mov             SP, fp
    //     0x6d1f0c: ldp             fp, lr, [SP], #0x10
    // 0x6d1f10: ret
    //     0x6d1f10: ret             
    // 0x6d1f14: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d1f14: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1f18: b               #0x6d1e90
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d1f5c, size: 0x84
    // 0x6d1f5c: EnterFrame
    //     0x6d1f5c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1f60: mov             fp, SP
    // 0x6d1f64: AllocStack(0x8)
    //     0x6d1f64: sub             SP, SP, #8
    // 0x6d1f68: SetupParameters([dynamic _ /* r0 */])
    //     0x6d1f68: ldr             x0, [fp, #0x10]
    //     0x6d1f6c: ldur            w1, [x0, #0x17]
    //     0x6d1f70: add             x1, x1, HEAP, lsl #32
    // 0x6d1f74: CheckStackOverflow
    //     0x6d1f74: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1f78: cmp             SP, x16
    //     0x6d1f7c: b.ls            #0x6d1fd8
    // 0x6d1f80: LoadField: r0 = r1->field_b
    //     0x6d1f80: ldur            w0, [x1, #0xb]
    // 0x6d1f84: DecompressPointer r0
    //     0x6d1f84: add             x0, x0, HEAP, lsl #32
    // 0x6d1f88: LoadField: r3 = r0->field_f
    //     0x6d1f88: ldur            w3, [x0, #0xf]
    // 0x6d1f8c: DecompressPointer r3
    //     0x6d1f8c: add             x3, x3, HEAP, lsl #32
    // 0x6d1f90: stur            x3, [fp, #-8]
    // 0x6d1f94: LoadField: r1 = r3->field_13
    //     0x6d1f94: ldur            w1, [x3, #0x13]
    // 0x6d1f98: DecompressPointer r1
    //     0x6d1f98: add             x1, x1, HEAP, lsl #32
    // 0x6d1f9c: r2 = Instance_Duration
    //     0x6d1f9c: add             x2, PP, #0x14, lsl #12  ; [pp+0x14fd8] Obj!Duration@a2de61
    //     0x6d1fa0: ldr             x2, [x2, #0xfd8]
    // 0x6d1fa4: r0 = add()
    //     0x6d1fa4: bl              #0x4e712c  ; [dart:core] DateTime::add
    // 0x6d1fa8: ldur            x1, [fp, #-8]
    // 0x6d1fac: StoreField: r1->field_13 = r0
    //     0x6d1fac: stur            w0, [x1, #0x13]
    //     0x6d1fb0: ldurb           w16, [x1, #-1]
    //     0x6d1fb4: ldurb           w17, [x0, #-1]
    //     0x6d1fb8: and             x16, x17, x16, lsr #2
    //     0x6d1fbc: tst             x16, HEAP, lsr #32
    //     0x6d1fc0: b.eq            #0x6d1fc8
    //     0x6d1fc4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6d1fc8: r0 = Null
    //     0x6d1fc8: mov             x0, NULL
    // 0x6d1fcc: LeaveFrame
    //     0x6d1fcc: mov             SP, fp
    //     0x6d1fd0: ldp             fp, lr, [SP], #0x10
    // 0x6d1fd4: ret
    //     0x6d1fd4: ret             
    // 0x6d1fd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d1fd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1fdc: b               #0x6d1f80
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d1fe0, size: 0x7c
    // 0x6d1fe0: EnterFrame
    //     0x6d1fe0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1fe4: mov             fp, SP
    // 0x6d1fe8: AllocStack(0x10)
    //     0x6d1fe8: sub             SP, SP, #0x10
    // 0x6d1fec: SetupParameters([dynamic _ /* r0 */])
    //     0x6d1fec: ldr             x0, [fp, #0x10]
    //     0x6d1ff0: ldur            w2, [x0, #0x17]
    //     0x6d1ff4: add             x2, x2, HEAP, lsl #32
    // 0x6d1ff8: CheckStackOverflow
    //     0x6d1ff8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1ffc: cmp             SP, x16
    //     0x6d2000: b.ls            #0x6d2054
    // 0x6d2004: LoadField: r0 = r2->field_f
    //     0x6d2004: ldur            w0, [x2, #0xf]
    // 0x6d2008: DecompressPointer r0
    //     0x6d2008: add             x0, x0, HEAP, lsl #32
    // 0x6d200c: stur            x0, [fp, #-0x10]
    // 0x6d2010: LoadField: r1 = r2->field_b
    //     0x6d2010: ldur            w1, [x2, #0xb]
    // 0x6d2014: DecompressPointer r1
    //     0x6d2014: add             x1, x1, HEAP, lsl #32
    // 0x6d2018: LoadField: r3 = r1->field_f
    //     0x6d2018: ldur            w3, [x1, #0xf]
    // 0x6d201c: DecompressPointer r3
    //     0x6d201c: add             x3, x3, HEAP, lsl #32
    // 0x6d2020: LoadField: r4 = r3->field_13
    //     0x6d2020: ldur            w4, [x3, #0x13]
    // 0x6d2024: DecompressPointer r4
    //     0x6d2024: add             x4, x4, HEAP, lsl #32
    // 0x6d2028: stur            x4, [fp, #-8]
    // 0x6d202c: r1 = Function '<anonymous closure>':.
    //     0x6d202c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19978] AnonymousClosure: (0x6d2a10), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d2030: ldr             x1, [x1, #0x978]
    // 0x6d2034: r0 = AllocateClosure()
    //     0x6d2034: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2038: ldur            x1, [fp, #-0x10]
    // 0x6d203c: ldur            x2, [fp, #-8]
    // 0x6d2040: mov             x3, x0
    // 0x6d2044: r0 = pickDate()
    //     0x6d2044: bl              #0x6d205c  ; [package:umrem_demo/features/admin/widgets/events/pick_date_dialog.dart] ::pickDate
    // 0x6d2048: LeaveFrame
    //     0x6d2048: mov             SP, fp
    //     0x6d204c: ldp             fp, lr, [SP], #0x10
    // 0x6d2050: ret
    //     0x6d2050: ret             
    // 0x6d2054: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2054: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2058: b               #0x6d2004
  }
  [closure] Null <anonymous closure>(dynamic, DateTime) {
    // ** addr: 0x6d2a10, size: 0xc4
    // 0x6d2a10: EnterFrame
    //     0x6d2a10: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2a14: mov             fp, SP
    // 0x6d2a18: AllocStack(0x28)
    //     0x6d2a18: sub             SP, SP, #0x28
    // 0x6d2a1c: SetupParameters([dynamic _ /* r0 */])
    //     0x6d2a1c: ldr             x0, [fp, #0x18]
    //     0x6d2a20: ldur            w1, [x0, #0x17]
    //     0x6d2a24: add             x1, x1, HEAP, lsl #32
    //     0x6d2a28: stur            x1, [fp, #-8]
    // 0x6d2a2c: CheckStackOverflow
    //     0x6d2a2c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2a30: cmp             SP, x16
    //     0x6d2a34: b.ls            #0x6d2acc
    // 0x6d2a38: r1 = 1
    //     0x6d2a38: mov             x1, #1
    // 0x6d2a3c: r0 = AllocateContext()
    //     0x6d2a3c: bl              #0x927010  ; AllocateContextStub
    // 0x6d2a40: mov             x3, x0
    // 0x6d2a44: ldur            x0, [fp, #-8]
    // 0x6d2a48: stur            x3, [fp, #-0x18]
    // 0x6d2a4c: StoreField: r3->field_b = r0
    //     0x6d2a4c: stur            w0, [x3, #0xb]
    // 0x6d2a50: ldr             x1, [fp, #0x10]
    // 0x6d2a54: StoreField: r3->field_f = r1
    //     0x6d2a54: stur            w1, [x3, #0xf]
    // 0x6d2a58: LoadField: r1 = r0->field_b
    //     0x6d2a58: ldur            w1, [x0, #0xb]
    // 0x6d2a5c: DecompressPointer r1
    //     0x6d2a5c: add             x1, x1, HEAP, lsl #32
    // 0x6d2a60: LoadField: r4 = r1->field_f
    //     0x6d2a60: ldur            w4, [x1, #0xf]
    // 0x6d2a64: DecompressPointer r4
    //     0x6d2a64: add             x4, x4, HEAP, lsl #32
    // 0x6d2a68: mov             x2, x3
    // 0x6d2a6c: stur            x4, [fp, #-0x10]
    // 0x6d2a70: r1 = Function '<anonymous closure>':.
    //     0x6d2a70: add             x1, PP, #0x19, lsl #12  ; [pp+0x19980] AnonymousClosure: (0x6d2ad4), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d2a74: ldr             x1, [x1, #0x980]
    // 0x6d2a78: r0 = AllocateClosure()
    //     0x6d2a78: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2a7c: ldur            x1, [fp, #-0x10]
    // 0x6d2a80: mov             x2, x0
    // 0x6d2a84: r0 = setState()
    //     0x6d2a84: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6d2a88: ldur            x0, [fp, #-8]
    // 0x6d2a8c: LoadField: r1 = r0->field_f
    //     0x6d2a8c: ldur            w1, [x0, #0xf]
    // 0x6d2a90: DecompressPointer r1
    //     0x6d2a90: add             x1, x1, HEAP, lsl #32
    // 0x6d2a94: r16 = <EventProvider>
    //     0x6d2a94: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d2a98: ldr             x16, [x16, #0xb80]
    // 0x6d2a9c: stp             x1, x16, [SP]
    // 0x6d2aa0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d2aa0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d2aa4: r0 = ReadContext.read()
    //     0x6d2aa4: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6d2aa8: mov             x1, x0
    // 0x6d2aac: ldur            x0, [fp, #-0x18]
    // 0x6d2ab0: LoadField: r2 = r0->field_f
    //     0x6d2ab0: ldur            w2, [x0, #0xf]
    // 0x6d2ab4: DecompressPointer r2
    //     0x6d2ab4: add             x2, x2, HEAP, lsl #32
    // 0x6d2ab8: r0 = selectDate()
    //     0x6d2ab8: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x6d2abc: r0 = Null
    //     0x6d2abc: mov             x0, NULL
    // 0x6d2ac0: LeaveFrame
    //     0x6d2ac0: mov             SP, fp
    //     0x6d2ac4: ldp             fp, lr, [SP], #0x10
    // 0x6d2ac8: ret
    //     0x6d2ac8: ret             
    // 0x6d2acc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2acc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2ad0: b               #0x6d2a38
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d2ad4, size: 0x58
    // 0x6d2ad4: ldr             x1, [SP]
    // 0x6d2ad8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x6d2ad8: ldur            w2, [x1, #0x17]
    // 0x6d2adc: DecompressPointer r2
    //     0x6d2adc: add             x2, x2, HEAP, lsl #32
    // 0x6d2ae0: LoadField: r1 = r2->field_b
    //     0x6d2ae0: ldur            w1, [x2, #0xb]
    // 0x6d2ae4: DecompressPointer r1
    //     0x6d2ae4: add             x1, x1, HEAP, lsl #32
    // 0x6d2ae8: LoadField: r3 = r1->field_b
    //     0x6d2ae8: ldur            w3, [x1, #0xb]
    // 0x6d2aec: DecompressPointer r3
    //     0x6d2aec: add             x3, x3, HEAP, lsl #32
    // 0x6d2af0: LoadField: r1 = r3->field_f
    //     0x6d2af0: ldur            w1, [x3, #0xf]
    // 0x6d2af4: DecompressPointer r1
    //     0x6d2af4: add             x1, x1, HEAP, lsl #32
    // 0x6d2af8: LoadField: r0 = r2->field_f
    //     0x6d2af8: ldur            w0, [x2, #0xf]
    // 0x6d2afc: DecompressPointer r0
    //     0x6d2afc: add             x0, x0, HEAP, lsl #32
    // 0x6d2b00: StoreField: r1->field_13 = r0
    //     0x6d2b00: stur            w0, [x1, #0x13]
    //     0x6d2b04: ldurb           w16, [x1, #-1]
    //     0x6d2b08: ldurb           w17, [x0, #-1]
    //     0x6d2b0c: and             x16, x17, x16, lsr #2
    //     0x6d2b10: tst             x16, HEAP, lsr #32
    //     0x6d2b14: b.eq            #0x6d2b24
    //     0x6d2b18: str             lr, [SP, #-8]!
    //     0x6d2b1c: bl              #0x926790  ; WriteBarrierWrappersStub
    //     0x6d2b20: ldr             lr, [SP], #8
    // 0x6d2b24: r0 = Null
    //     0x6d2b24: mov             x0, NULL
    // 0x6d2b28: ret
    //     0x6d2b28: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d2b2c, size: 0xb4
    // 0x6d2b2c: EnterFrame
    //     0x6d2b2c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2b30: mov             fp, SP
    // 0x6d2b34: AllocStack(0x28)
    //     0x6d2b34: sub             SP, SP, #0x28
    // 0x6d2b38: SetupParameters([dynamic _ /* r0 */])
    //     0x6d2b38: ldr             x0, [fp, #0x10]
    //     0x6d2b3c: ldur            w3, [x0, #0x17]
    //     0x6d2b40: add             x3, x3, HEAP, lsl #32
    //     0x6d2b44: stur            x3, [fp, #-0x18]
    // 0x6d2b48: CheckStackOverflow
    //     0x6d2b48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2b4c: cmp             SP, x16
    //     0x6d2b50: b.ls            #0x6d2bd8
    // 0x6d2b54: LoadField: r0 = r3->field_b
    //     0x6d2b54: ldur            w0, [x3, #0xb]
    // 0x6d2b58: DecompressPointer r0
    //     0x6d2b58: add             x0, x0, HEAP, lsl #32
    // 0x6d2b5c: stur            x0, [fp, #-0x10]
    // 0x6d2b60: LoadField: r4 = r0->field_f
    //     0x6d2b60: ldur            w4, [x0, #0xf]
    // 0x6d2b64: DecompressPointer r4
    //     0x6d2b64: add             x4, x4, HEAP, lsl #32
    // 0x6d2b68: mov             x2, x3
    // 0x6d2b6c: stur            x4, [fp, #-8]
    // 0x6d2b70: r1 = Function '<anonymous closure>':.
    //     0x6d2b70: add             x1, PP, #0x19, lsl #12  ; [pp+0x19990] AnonymousClosure: (0x6d2be0), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d2b74: ldr             x1, [x1, #0x990]
    // 0x6d2b78: r0 = AllocateClosure()
    //     0x6d2b78: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d2b7c: ldur            x1, [fp, #-8]
    // 0x6d2b80: mov             x2, x0
    // 0x6d2b84: r0 = setState()
    //     0x6d2b84: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6d2b88: ldur            x0, [fp, #-0x18]
    // 0x6d2b8c: LoadField: r1 = r0->field_f
    //     0x6d2b8c: ldur            w1, [x0, #0xf]
    // 0x6d2b90: DecompressPointer r1
    //     0x6d2b90: add             x1, x1, HEAP, lsl #32
    // 0x6d2b94: r16 = <EventProvider>
    //     0x6d2b94: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d2b98: ldr             x16, [x16, #0xb80]
    // 0x6d2b9c: stp             x1, x16, [SP]
    // 0x6d2ba0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d2ba0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d2ba4: r0 = ReadContext.read()
    //     0x6d2ba4: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6d2ba8: mov             x1, x0
    // 0x6d2bac: ldur            x0, [fp, #-0x10]
    // 0x6d2bb0: LoadField: r2 = r0->field_f
    //     0x6d2bb0: ldur            w2, [x0, #0xf]
    // 0x6d2bb4: DecompressPointer r2
    //     0x6d2bb4: add             x2, x2, HEAP, lsl #32
    // 0x6d2bb8: LoadField: r0 = r2->field_13
    //     0x6d2bb8: ldur            w0, [x2, #0x13]
    // 0x6d2bbc: DecompressPointer r0
    //     0x6d2bbc: add             x0, x0, HEAP, lsl #32
    // 0x6d2bc0: mov             x2, x0
    // 0x6d2bc4: r0 = selectDate()
    //     0x6d2bc4: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x6d2bc8: r0 = Null
    //     0x6d2bc8: mov             x0, NULL
    // 0x6d2bcc: LeaveFrame
    //     0x6d2bcc: mov             SP, fp
    //     0x6d2bd0: ldp             fp, lr, [SP], #0x10
    // 0x6d2bd4: ret
    //     0x6d2bd4: ret             
    // 0x6d2bd8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2bd8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2bdc: b               #0x6d2b54
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d2be0, size: 0x84
    // 0x6d2be0: EnterFrame
    //     0x6d2be0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2be4: mov             fp, SP
    // 0x6d2be8: AllocStack(0x8)
    //     0x6d2be8: sub             SP, SP, #8
    // 0x6d2bec: SetupParameters([dynamic _ /* r0 */])
    //     0x6d2bec: ldr             x0, [fp, #0x10]
    //     0x6d2bf0: ldur            w1, [x0, #0x17]
    //     0x6d2bf4: add             x1, x1, HEAP, lsl #32
    // 0x6d2bf8: CheckStackOverflow
    //     0x6d2bf8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2bfc: cmp             SP, x16
    //     0x6d2c00: b.ls            #0x6d2c5c
    // 0x6d2c04: LoadField: r0 = r1->field_b
    //     0x6d2c04: ldur            w0, [x1, #0xb]
    // 0x6d2c08: DecompressPointer r0
    //     0x6d2c08: add             x0, x0, HEAP, lsl #32
    // 0x6d2c0c: LoadField: r3 = r0->field_f
    //     0x6d2c0c: ldur            w3, [x0, #0xf]
    // 0x6d2c10: DecompressPointer r3
    //     0x6d2c10: add             x3, x3, HEAP, lsl #32
    // 0x6d2c14: stur            x3, [fp, #-8]
    // 0x6d2c18: LoadField: r1 = r3->field_13
    //     0x6d2c18: ldur            w1, [x3, #0x13]
    // 0x6d2c1c: DecompressPointer r1
    //     0x6d2c1c: add             x1, x1, HEAP, lsl #32
    // 0x6d2c20: r2 = Instance_Duration
    //     0x6d2c20: add             x2, PP, #0x14, lsl #12  ; [pp+0x14fd8] Obj!Duration@a2de61
    //     0x6d2c24: ldr             x2, [x2, #0xfd8]
    // 0x6d2c28: r0 = subtract()
    //     0x6d2c28: bl              #0x5ce6d0  ; [dart:core] DateTime::subtract
    // 0x6d2c2c: ldur            x1, [fp, #-8]
    // 0x6d2c30: StoreField: r1->field_13 = r0
    //     0x6d2c30: stur            w0, [x1, #0x13]
    //     0x6d2c34: ldurb           w16, [x1, #-1]
    //     0x6d2c38: ldurb           w17, [x0, #-1]
    //     0x6d2c3c: and             x16, x17, x16, lsr #2
    //     0x6d2c40: tst             x16, HEAP, lsr #32
    //     0x6d2c44: b.eq            #0x6d2c4c
    //     0x6d2c48: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6d2c4c: r0 = Null
    //     0x6d2c4c: mov             x0, NULL
    // 0x6d2c50: LeaveFrame
    //     0x6d2c50: mov             SP, fp
    //     0x6d2c54: ldp             fp, lr, [SP], #0x10
    // 0x6d2c58: ret
    //     0x6d2c58: ret             
    // 0x6d2c5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2c5c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2c60: b               #0x6d2c04
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d2c64, size: 0x64
    // 0x6d2c64: EnterFrame
    //     0x6d2c64: stp             fp, lr, [SP, #-0x10]!
    //     0x6d2c68: mov             fp, SP
    // 0x6d2c6c: ldr             x0, [fp, #0x10]
    // 0x6d2c70: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d2c70: ldur            w1, [x0, #0x17]
    // 0x6d2c74: DecompressPointer r1
    //     0x6d2c74: add             x1, x1, HEAP, lsl #32
    // 0x6d2c78: CheckStackOverflow
    //     0x6d2c78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d2c7c: cmp             SP, x16
    //     0x6d2c80: b.ls            #0x6d2cc0
    // 0x6d2c84: LoadField: r2 = r1->field_f
    //     0x6d2c84: ldur            w2, [x1, #0xf]
    // 0x6d2c88: DecompressPointer r2
    //     0x6d2c88: add             x2, x2, HEAP, lsl #32
    // 0x6d2c8c: LoadField: r0 = r1->field_b
    //     0x6d2c8c: ldur            w0, [x1, #0xb]
    // 0x6d2c90: DecompressPointer r0
    //     0x6d2c90: add             x0, x0, HEAP, lsl #32
    // 0x6d2c94: LoadField: r1 = r0->field_f
    //     0x6d2c94: ldur            w1, [x0, #0xf]
    // 0x6d2c98: DecompressPointer r1
    //     0x6d2c98: add             x1, x1, HEAP, lsl #32
    // 0x6d2c9c: LoadField: r3 = r1->field_13
    //     0x6d2c9c: ldur            w3, [x1, #0x13]
    // 0x6d2ca0: DecompressPointer r3
    //     0x6d2ca0: add             x3, x3, HEAP, lsl #32
    // 0x6d2ca4: r1 = Null
    //     0x6d2ca4: mov             x1, NULL
    // 0x6d2ca8: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6d2ca8: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6d2cac: r0 = showAddEditDialog()
    //     0x6d2cac: bl              #0x6d2cc8  ; [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog
    // 0x6d2cb0: r0 = Null
    //     0x6d2cb0: mov             x0, NULL
    // 0x6d2cb4: LeaveFrame
    //     0x6d2cb4: mov             SP, fp
    //     0x6d2cb8: ldp             fp, lr, [SP], #0x10
    // 0x6d2cbc: ret
    //     0x6d2cbc: ret             
    // 0x6d2cc0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d2cc0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d2cc4: b               #0x6d2c84
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d4ea0, size: 0x5c
    // 0x6d4ea0: EnterFrame
    //     0x6d4ea0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4ea4: mov             fp, SP
    // 0x6d4ea8: ldr             x0, [fp, #0x10]
    // 0x6d4eac: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x6d4eac: ldur            w1, [x0, #0x17]
    // 0x6d4eb0: DecompressPointer r1
    //     0x6d4eb0: add             x1, x1, HEAP, lsl #32
    // 0x6d4eb4: CheckStackOverflow
    //     0x6d4eb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d4eb8: cmp             SP, x16
    //     0x6d4ebc: b.ls            #0x6d4ef4
    // 0x6d4ec0: LoadField: r2 = r1->field_13
    //     0x6d4ec0: ldur            w2, [x1, #0x13]
    // 0x6d4ec4: DecompressPointer r2
    //     0x6d4ec4: add             x2, x2, HEAP, lsl #32
    // 0x6d4ec8: LoadField: r0 = r1->field_f
    //     0x6d4ec8: ldur            w0, [x1, #0xf]
    // 0x6d4ecc: DecompressPointer r0
    //     0x6d4ecc: add             x0, x0, HEAP, lsl #32
    // 0x6d4ed0: LoadField: r3 = r0->field_13
    //     0x6d4ed0: ldur            w3, [x0, #0x13]
    // 0x6d4ed4: DecompressPointer r3
    //     0x6d4ed4: add             x3, x3, HEAP, lsl #32
    // 0x6d4ed8: r1 = Null
    //     0x6d4ed8: mov             x1, NULL
    // 0x6d4edc: r4 = const [0, 0x3, 0, 0x3, null]
    //     0x6d4edc: ldr             x4, [PP, #0x3d8]  ; [pp+0x3d8] List(5) [0, 0x3, 0, 0x3, Null]
    // 0x6d4ee0: r0 = showAddEditDialog()
    //     0x6d4ee0: bl              #0x6d2cc8  ; [package:umrem_demo/features/admin/widgets/events/edit_dialog.dart] ::showAddEditDialog
    // 0x6d4ee4: r0 = Null
    //     0x6d4ee4: mov             x0, NULL
    // 0x6d4ee8: LeaveFrame
    //     0x6d4ee8: mov             SP, fp
    //     0x6d4eec: ldp             fp, lr, [SP], #0x10
    // 0x6d4ef0: ret
    //     0x6d4ef0: ret             
    // 0x6d4ef4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d4ef4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d4ef8: b               #0x6d4ec0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6d4efc, size: 0x74
    // 0x6d4efc: EnterFrame
    //     0x6d4efc: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4f00: mov             fp, SP
    // 0x6d4f04: AllocStack(0x10)
    //     0x6d4f04: sub             SP, SP, #0x10
    // 0x6d4f08: SetupParameters([dynamic _ /* r0 */])
    //     0x6d4f08: ldr             x0, [fp, #0x10]
    //     0x6d4f0c: ldur            w2, [x0, #0x17]
    //     0x6d4f10: add             x2, x2, HEAP, lsl #32
    // 0x6d4f14: CheckStackOverflow
    //     0x6d4f14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d4f18: cmp             SP, x16
    //     0x6d4f1c: b.ls            #0x6d4f68
    // 0x6d4f20: LoadField: r0 = r2->field_13
    //     0x6d4f20: ldur            w0, [x2, #0x13]
    // 0x6d4f24: DecompressPointer r0
    //     0x6d4f24: add             x0, x0, HEAP, lsl #32
    // 0x6d4f28: stur            x0, [fp, #-0x10]
    // 0x6d4f2c: LoadField: r1 = r2->field_f
    //     0x6d4f2c: ldur            w1, [x2, #0xf]
    // 0x6d4f30: DecompressPointer r1
    //     0x6d4f30: add             x1, x1, HEAP, lsl #32
    // 0x6d4f34: LoadField: r3 = r1->field_13
    //     0x6d4f34: ldur            w3, [x1, #0x13]
    // 0x6d4f38: DecompressPointer r3
    //     0x6d4f38: add             x3, x3, HEAP, lsl #32
    // 0x6d4f3c: stur            x3, [fp, #-8]
    // 0x6d4f40: r1 = Function '<anonymous closure>':.
    //     0x6d4f40: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a18] AnonymousClosure: (0x6d4f70), in [package:umrem_demo/features/admin/screens/admin_events_screen.dart] _AdminEventsScreenState::build (0x6d0980)
    //     0x6d4f44: ldr             x1, [x1, #0xa18]
    // 0x6d4f48: r0 = AllocateClosure()
    //     0x6d4f48: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d4f4c: ldur            x1, [fp, #-0x10]
    // 0x6d4f50: ldur            x2, [fp, #-8]
    // 0x6d4f54: mov             x3, x0
    // 0x6d4f58: r0 = pickDate()
    //     0x6d4f58: bl              #0x6d205c  ; [package:umrem_demo/features/admin/widgets/events/pick_date_dialog.dart] ::pickDate
    // 0x6d4f5c: LeaveFrame
    //     0x6d4f5c: mov             SP, fp
    //     0x6d4f60: ldp             fp, lr, [SP], #0x10
    // 0x6d4f64: ret
    //     0x6d4f64: ret             
    // 0x6d4f68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d4f68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d4f6c: b               #0x6d4f20
  }
  [closure] Null <anonymous closure>(dynamic, DateTime) {
    // ** addr: 0x6d4f70, size: 0xbc
    // 0x6d4f70: EnterFrame
    //     0x6d4f70: stp             fp, lr, [SP, #-0x10]!
    //     0x6d4f74: mov             fp, SP
    // 0x6d4f78: AllocStack(0x28)
    //     0x6d4f78: sub             SP, SP, #0x28
    // 0x6d4f7c: SetupParameters([dynamic _ /* r0 */])
    //     0x6d4f7c: ldr             x0, [fp, #0x18]
    //     0x6d4f80: ldur            w1, [x0, #0x17]
    //     0x6d4f84: add             x1, x1, HEAP, lsl #32
    //     0x6d4f88: stur            x1, [fp, #-8]
    // 0x6d4f8c: CheckStackOverflow
    //     0x6d4f8c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d4f90: cmp             SP, x16
    //     0x6d4f94: b.ls            #0x6d5024
    // 0x6d4f98: r1 = 1
    //     0x6d4f98: mov             x1, #1
    // 0x6d4f9c: r0 = AllocateContext()
    //     0x6d4f9c: bl              #0x927010  ; AllocateContextStub
    // 0x6d4fa0: mov             x3, x0
    // 0x6d4fa4: ldur            x0, [fp, #-8]
    // 0x6d4fa8: stur            x3, [fp, #-0x18]
    // 0x6d4fac: StoreField: r3->field_b = r0
    //     0x6d4fac: stur            w0, [x3, #0xb]
    // 0x6d4fb0: ldr             x1, [fp, #0x10]
    // 0x6d4fb4: StoreField: r3->field_f = r1
    //     0x6d4fb4: stur            w1, [x3, #0xf]
    // 0x6d4fb8: LoadField: r4 = r0->field_f
    //     0x6d4fb8: ldur            w4, [x0, #0xf]
    // 0x6d4fbc: DecompressPointer r4
    //     0x6d4fbc: add             x4, x4, HEAP, lsl #32
    // 0x6d4fc0: mov             x2, x3
    // 0x6d4fc4: stur            x4, [fp, #-0x10]
    // 0x6d4fc8: r1 = Function '<anonymous closure>':.
    //     0x6d4fc8: add             x1, PP, #0x19, lsl #12  ; [pp+0x19a20] AnonymousClosure: (0x6d2988), in [package:umrem_demo/features/home/screens/takvim_screen.dart] TakvimScreenState::_showDatePicker (0x6d2698)
    //     0x6d4fcc: ldr             x1, [x1, #0xa20]
    // 0x6d4fd0: r0 = AllocateClosure()
    //     0x6d4fd0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d4fd4: ldur            x1, [fp, #-0x10]
    // 0x6d4fd8: mov             x2, x0
    // 0x6d4fdc: r0 = setState()
    //     0x6d4fdc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6d4fe0: ldur            x0, [fp, #-8]
    // 0x6d4fe4: LoadField: r1 = r0->field_13
    //     0x6d4fe4: ldur            w1, [x0, #0x13]
    // 0x6d4fe8: DecompressPointer r1
    //     0x6d4fe8: add             x1, x1, HEAP, lsl #32
    // 0x6d4fec: r16 = <EventProvider>
    //     0x6d4fec: add             x16, PP, #0x10, lsl #12  ; [pp+0x10b80] TypeArguments: <EventProvider>
    //     0x6d4ff0: ldr             x16, [x16, #0xb80]
    // 0x6d4ff4: stp             x1, x16, [SP]
    // 0x6d4ff8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6d4ff8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6d4ffc: r0 = ReadContext.read()
    //     0x6d4ffc: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x6d5000: mov             x1, x0
    // 0x6d5004: ldur            x0, [fp, #-0x18]
    // 0x6d5008: LoadField: r2 = r0->field_f
    //     0x6d5008: ldur            w2, [x0, #0xf]
    // 0x6d500c: DecompressPointer r2
    //     0x6d500c: add             x2, x2, HEAP, lsl #32
    // 0x6d5010: r0 = selectDate()
    //     0x6d5010: bl              #0x6d1f1c  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::selectDate
    // 0x6d5014: r0 = Null
    //     0x6d5014: mov             x0, NULL
    // 0x6d5018: LeaveFrame
    //     0x6d5018: mov             SP, fp
    //     0x6d501c: ldp             fp, lr, [SP], #0x10
    // 0x6d5020: ret
    //     0x6d5020: ret             
    // 0x6d5024: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d5024: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d5028: b               #0x6d4f98
  }
}

// class id: 3218, size: 0xc, field offset: 0xc
//   const constructor, 
class AdminEventsScreen extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bd340, size: 0x6c
    // 0x7bd340: EnterFrame
    //     0x7bd340: stp             fp, lr, [SP, #-0x10]!
    //     0x7bd344: mov             fp, SP
    // 0x7bd348: AllocStack(0x8)
    //     0x7bd348: sub             SP, SP, #8
    // 0x7bd34c: CheckStackOverflow
    //     0x7bd34c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bd350: cmp             SP, x16
    //     0x7bd354: b.ls            #0x7bd3a4
    // 0x7bd358: r0 = DateTime()
    //     0x7bd358: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7bd35c: mov             x1, x0
    // 0x7bd360: r0 = false
    //     0x7bd360: add             x0, NULL, #0x30  ; false
    // 0x7bd364: stur            x1, [fp, #-8]
    // 0x7bd368: StoreField: r1->field_7 = r0
    //     0x7bd368: stur            w0, [x1, #7]
    // 0x7bd36c: r0 = _getCurrentMicros()
    //     0x7bd36c: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7bd370: r1 = LoadInt32Instr(r0)
    //     0x7bd370: sbfx            x1, x0, #1, #0x1f
    //     0x7bd374: tbz             w0, #0, #0x7bd37c
    //     0x7bd378: ldur            x1, [x0, #7]
    // 0x7bd37c: ldur            x0, [fp, #-8]
    // 0x7bd380: StoreField: r0->field_b = r1
    //     0x7bd380: stur            x1, [x0, #0xb]
    // 0x7bd384: r1 = <AdminEventsScreen>
    //     0x7bd384: add             x1, PP, #0x12, lsl #12  ; [pp+0x12700] TypeArguments: <AdminEventsScreen>
    //     0x7bd388: ldr             x1, [x1, #0x700]
    // 0x7bd38c: r0 = _AdminEventsScreenState()
    //     0x7bd38c: bl              #0x7bd3ac  ; Allocate_AdminEventsScreenStateStub -> _AdminEventsScreenState (size=0x18)
    // 0x7bd390: ldur            x1, [fp, #-8]
    // 0x7bd394: StoreField: r0->field_13 = r1
    //     0x7bd394: stur            w1, [x0, #0x13]
    // 0x7bd398: LeaveFrame
    //     0x7bd398: mov             SP, fp
    //     0x7bd39c: ldp             fp, lr, [SP], #0x10
    // 0x7bd3a0: ret
    //     0x7bd3a0: ret             
    // 0x7bd3a4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bd3a4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bd3a8: b               #0x7bd358
  }
}
