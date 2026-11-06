// lib: , url: package:umrem_demo/features/admin/providers/event_provider.dart

// class id: 1049521, size: 0x8
class :: {
}

// class id: 3869, size: 0x34, field offset: 0x24
class EventProvider extends ChangeNotifier {

  _ loadEventsByDate(/* No info */) async {
    // ** addr: 0x5df1d8, size: 0x1ec
    // 0x5df1d8: EnterFrame
    //     0x5df1d8: stp             fp, lr, [SP, #-0x10]!
    //     0x5df1dc: mov             fp, SP
    // 0x5df1e0: AllocStack(0xa8)
    //     0x5df1e0: sub             SP, SP, #0xa8
    // 0x5df1e4: SetupParameters(EventProvider this /* r1 => r2, fp-0x98 */, dynamic _ /* r2 => r1, fp-0xa0 */)
    //     0x5df1e4: stur            NULL, [fp, #-8]
    //     0x5df1e8: stur            x1, [fp, #-0x98]
    //     0x5df1ec: mov             x16, x2
    //     0x5df1f0: mov             x2, x1
    //     0x5df1f4: mov             x1, x16
    //     0x5df1f8: stur            x1, [fp, #-0xa0]
    // 0x5df1fc: LoadField: r0 = r4->field_13
    //     0x5df1fc: ldur            w0, [x4, #0x13]
    // 0x5df200: LoadField: r3 = r4->field_1f
    //     0x5df200: ldur            w3, [x4, #0x1f]
    // 0x5df204: DecompressPointer r3
    //     0x5df204: add             x3, x3, HEAP, lsl #32
    // 0x5df208: r16 = "agencyId"
    //     0x5df208: add             x16, PP, #0x14, lsl #12  ; [pp+0x14fe8] "agencyId"
    //     0x5df20c: ldr             x16, [x16, #0xfe8]
    // 0x5df210: cmp             w3, w16
    // 0x5df214: b.ne            #0x5df234
    // 0x5df218: LoadField: r3 = r4->field_23
    //     0x5df218: ldur            w3, [x4, #0x23]
    // 0x5df21c: DecompressPointer r3
    //     0x5df21c: add             x3, x3, HEAP, lsl #32
    // 0x5df220: sub             w4, w0, w3
    // 0x5df224: add             x0, fp, w4, sxtw #2
    // 0x5df228: ldr             x0, [x0, #8]
    // 0x5df22c: mov             x3, x0
    // 0x5df230: b               #0x5df238
    // 0x5df234: r3 = Null
    //     0x5df234: mov             x3, NULL
    // 0x5df238: stur            x3, [fp, #-0x90]
    // 0x5df23c: CheckStackOverflow
    //     0x5df23c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5df240: cmp             SP, x16
    //     0x5df244: b.ls            #0x5df3bc
    // 0x5df248: InitAsync() -> Future<void?>
    //     0x5df248: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5df24c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5df250: ldur            x2, [fp, #-0x98]
    // 0x5df254: ldur            x3, [fp, #-0x90]
    // 0x5df258: r0 = true
    //     0x5df258: add             x0, NULL, #0x20  ; true
    // 0x5df25c: StoreField: r2->field_27 = r0
    //     0x5df25c: stur            w0, [x2, #0x27]
    // 0x5df260: ldur            x0, [fp, #-0xa0]
    // 0x5df264: StoreField: r2->field_2f = r0
    //     0x5df264: stur            w0, [x2, #0x2f]
    //     0x5df268: ldurb           w16, [x2, #-1]
    //     0x5df26c: ldurb           w17, [x0, #-1]
    //     0x5df270: and             x16, x17, x16, lsr #2
    //     0x5df274: tst             x16, HEAP, lsr #32
    //     0x5df278: b.eq            #0x5df280
    //     0x5df27c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5df280: mov             x1, x2
    // 0x5df284: r0 = notifyListeners()
    //     0x5df284: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5df288: ldur            x0, [fp, #-0x90]
    // 0x5df28c: cmp             w0, NULL
    // 0x5df290: b.ne            #0x5df2b8
    // 0x5df294: r0 = LoadStaticField(0xfe4)
    //     0x5df294: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5df298: ldr             x0, [x0, #0x1fc8]
    // 0x5df29c: cmp             w0, NULL
    // 0x5df2a0: b.ne            #0x5df2ac
    // 0x5df2a4: r0 = Null
    //     0x5df2a4: mov             x0, NULL
    // 0x5df2a8: b               #0x5df2b8
    // 0x5df2ac: LoadField: r1 = r0->field_4b
    //     0x5df2ac: ldur            w1, [x0, #0x4b]
    // 0x5df2b0: DecompressPointer r1
    //     0x5df2b0: add             x1, x1, HEAP, lsl #32
    // 0x5df2b4: mov             x0, x1
    // 0x5df2b8: stur            x0, [fp, #-0x90]
    // 0x5df2bc: cmp             w0, NULL
    // 0x5df2c0: b.eq            #0x5df320
    // 0x5df2c4: LoadField: r1 = r0->field_7
    //     0x5df2c4: ldur            w1, [x0, #7]
    // 0x5df2c8: cbz             w1, #0x5df318
    // 0x5df2cc: ldur            x4, [fp, #-0x98]
    // 0x5df2d0: LoadField: r1 = r4->field_23
    //     0x5df2d0: ldur            w1, [x4, #0x23]
    // 0x5df2d4: DecompressPointer r1
    //     0x5df2d4: add             x1, x1, HEAP, lsl #32
    // 0x5df2d8: mov             x2, x0
    // 0x5df2dc: ldur            x3, [fp, #-0xa0]
    // 0x5df2e0: r0 = getEventsByAgency()
    //     0x5df2e0: bl              #0x5dfca0  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getEventsByAgency
    // 0x5df2e4: mov             x1, x0
    // 0x5df2e8: stur            x1, [fp, #-0xa8]
    // 0x5df2ec: r0 = Await()
    //     0x5df2ec: bl              #0x3dd188  ; AwaitStub
    // 0x5df2f0: ldur            x3, [fp, #-0x98]
    // 0x5df2f4: StoreField: r3->field_2b = r0
    //     0x5df2f4: stur            w0, [x3, #0x2b]
    //     0x5df2f8: ldurb           w16, [x3, #-1]
    //     0x5df2fc: ldurb           w17, [x0, #-1]
    //     0x5df300: and             x16, x17, x16, lsr #2
    //     0x5df304: tst             x16, HEAP, lsr #32
    //     0x5df308: b.eq            #0x5df310
    //     0x5df30c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5df310: mov             x2, x3
    // 0x5df314: b               #0x5df36c
    // 0x5df318: ldur            x3, [fp, #-0x98]
    // 0x5df31c: b               #0x5df324
    // 0x5df320: ldur            x3, [fp, #-0x98]
    // 0x5df324: LoadField: r1 = r3->field_23
    //     0x5df324: ldur            w1, [x3, #0x23]
    // 0x5df328: DecompressPointer r1
    //     0x5df328: add             x1, x1, HEAP, lsl #32
    // 0x5df32c: ldur            x2, [fp, #-0xa0]
    // 0x5df330: r0 = getEventsByDate()
    //     0x5df330: bl              #0x5df3e4  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getEventsByDate
    // 0x5df334: mov             x1, x0
    // 0x5df338: stur            x1, [fp, #-0x90]
    // 0x5df33c: r0 = Await()
    //     0x5df33c: bl              #0x3dd188  ; AwaitStub
    // 0x5df340: ldur            x2, [fp, #-0x98]
    // 0x5df344: StoreField: r2->field_2b = r0
    //     0x5df344: stur            w0, [x2, #0x2b]
    //     0x5df348: ldurb           w16, [x2, #-1]
    //     0x5df34c: ldurb           w17, [x0, #-1]
    //     0x5df350: and             x16, x17, x16, lsr #2
    //     0x5df354: tst             x16, HEAP, lsr #32
    //     0x5df358: b.eq            #0x5df360
    //     0x5df35c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5df360: b               #0x5df36c
    // 0x5df364: sub             SP, fp, #0xa8
    // 0x5df368: ldur            x2, [fp, #-0x98]
    // 0x5df36c: r3 = false
    //     0x5df36c: add             x3, NULL, #0x30  ; false
    // 0x5df370: StoreField: r2->field_27 = r3
    //     0x5df370: stur            w3, [x2, #0x27]
    // 0x5df374: mov             x1, x2
    // 0x5df378: r0 = notifyListeners()
    //     0x5df378: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5df37c: r0 = Null
    //     0x5df37c: mov             x0, NULL
    // 0x5df380: r0 = ReturnAsyncNotFuture()
    //     0x5df380: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5df384: sub             SP, fp, #0xa8
    // 0x5df388: ldur            x2, [fp, #-0x98]
    // 0x5df38c: r3 = false
    //     0x5df38c: add             x3, NULL, #0x30  ; false
    // 0x5df390: mov             x4, x0
    // 0x5df394: stur            x0, [fp, #-0x90]
    // 0x5df398: mov             x0, x1
    // 0x5df39c: stur            x1, [fp, #-0xa0]
    // 0x5df3a0: StoreField: r2->field_27 = r3
    //     0x5df3a0: stur            w3, [x2, #0x27]
    // 0x5df3a4: mov             x1, x2
    // 0x5df3a8: r0 = notifyListeners()
    //     0x5df3a8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5df3ac: ldur            x0, [fp, #-0x90]
    // 0x5df3b0: ldur            x1, [fp, #-0xa0]
    // 0x5df3b4: r0 = ReThrow()
    //     0x5df3b4: bl              #0x9262fc  ; ReThrowStub
    // 0x5df3b8: brk             #0
    // 0x5df3bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5df3bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5df3c0: b               #0x5df248
  }
  _ getEndTime(/* No info */) {
    // ** addr: 0x6d1c78, size: 0x1f0
    // 0x6d1c78: EnterFrame
    //     0x6d1c78: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1c7c: mov             fp, SP
    // 0x6d1c80: AllocStack(0x28)
    //     0x6d1c80: sub             SP, SP, #0x28
    // 0x6d1c84: SetupParameters(EventProvider this /* r1 => r0 */, dynamic _ /* r2 => r1 */, dynamic _ /* r3 => r3, fp-0x8 */)
    //     0x6d1c84: mov             x0, x1
    //     0x6d1c88: mov             x1, x2
    //     0x6d1c8c: stur            x3, [fp, #-8]
    // 0x6d1c90: CheckStackOverflow
    //     0x6d1c90: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1c94: cmp             SP, x16
    //     0x6d1c98: b.ls            #0x6d1e48
    // 0x6d1c9c: r0 = LoadClassIdInstr(r1)
    //     0x6d1c9c: ldur            x0, [x1, #-1]
    //     0x6d1ca0: ubfx            x0, x0, #0xc, #0x14
    // 0x6d1ca4: r2 = ":"
    //     0x6d1ca4: ldr             x2, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6d1ca8: r0 = GDT[cid_x0 + -0x1000]()
    //     0x6d1ca8: sub             lr, x0, #1, lsl #12
    //     0x6d1cac: ldr             lr, [x21, lr, lsl #3]
    //     0x6d1cb0: blr             lr
    // 0x6d1cb4: mov             x2, x0
    // 0x6d1cb8: stur            x2, [fp, #-0x10]
    // 0x6d1cbc: LoadField: r0 = r2->field_b
    //     0x6d1cbc: ldur            w0, [x2, #0xb]
    // 0x6d1cc0: r1 = LoadInt32Instr(r0)
    //     0x6d1cc0: sbfx            x1, x0, #1, #0x1f
    // 0x6d1cc4: mov             x0, x1
    // 0x6d1cc8: r1 = 0
    //     0x6d1cc8: mov             x1, #0
    // 0x6d1ccc: cmp             x1, x0
    // 0x6d1cd0: b.hs            #0x6d1e50
    // 0x6d1cd4: LoadField: r0 = r2->field_f
    //     0x6d1cd4: ldur            w0, [x2, #0xf]
    // 0x6d1cd8: DecompressPointer r0
    //     0x6d1cd8: add             x0, x0, HEAP, lsl #32
    // 0x6d1cdc: LoadField: r1 = r0->field_f
    //     0x6d1cdc: ldur            w1, [x0, #0xf]
    // 0x6d1ce0: DecompressPointer r1
    //     0x6d1ce0: add             x1, x1, HEAP, lsl #32
    // 0x6d1ce4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d1ce4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d1ce8: r0 = parse()
    //     0x6d1ce8: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x6d1cec: mov             x3, x0
    // 0x6d1cf0: ldur            x2, [fp, #-0x10]
    // 0x6d1cf4: stur            x3, [fp, #-0x18]
    // 0x6d1cf8: LoadField: r0 = r2->field_b
    //     0x6d1cf8: ldur            w0, [x2, #0xb]
    // 0x6d1cfc: r1 = LoadInt32Instr(r0)
    //     0x6d1cfc: sbfx            x1, x0, #1, #0x1f
    // 0x6d1d00: mov             x0, x1
    // 0x6d1d04: r1 = 1
    //     0x6d1d04: mov             x1, #1
    // 0x6d1d08: cmp             x1, x0
    // 0x6d1d0c: b.hs            #0x6d1e54
    // 0x6d1d10: LoadField: r0 = r2->field_f
    //     0x6d1d10: ldur            w0, [x2, #0xf]
    // 0x6d1d14: DecompressPointer r0
    //     0x6d1d14: add             x0, x0, HEAP, lsl #32
    // 0x6d1d18: LoadField: r1 = r0->field_13
    //     0x6d1d18: ldur            w1, [x0, #0x13]
    // 0x6d1d1c: DecompressPointer r1
    //     0x6d1d1c: add             x1, x1, HEAP, lsl #32
    // 0x6d1d20: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d1d20: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d1d24: r0 = parse()
    //     0x6d1d24: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x6d1d28: mov             x1, x0
    // 0x6d1d2c: ldur            x0, [fp, #-0x18]
    // 0x6d1d30: r16 = 60
    //     0x6d1d30: mov             x16, #0x3c
    // 0x6d1d34: mul             x2, x0, x16
    // 0x6d1d38: add             x0, x2, x1
    // 0x6d1d3c: ldur            x1, [fp, #-8]
    // 0x6d1d40: add             x2, x0, x1
    // 0x6d1d44: r0 = 60
    //     0x6d1d44: mov             x0, #0x3c
    // 0x6d1d48: sdiv            x1, x2, x0
    // 0x6d1d4c: r3 = 24
    //     0x6d1d4c: mov             x3, #0x18
    // 0x6d1d50: sdiv            x5, x1, x3
    // 0x6d1d54: msub            x4, x5, x3, x1
    // 0x6d1d58: cmp             x4, xzr
    // 0x6d1d5c: b.lt            #0x6d1e58
    // 0x6d1d60: sdiv            x3, x2, x0
    // 0x6d1d64: msub            x1, x3, x0, x2
    // 0x6d1d68: cmp             x1, xzr
    // 0x6d1d6c: b.lt            #0x6d1e60
    // 0x6d1d70: stur            x1, [fp, #-8]
    // 0x6d1d74: lsl             x0, x4, #1
    // 0x6d1d78: str             x0, [SP]
    // 0x6d1d7c: r0 = toString()
    //     0x6d1d7c: bl              #0x7b5710  ; [dart:core] _Smi::toString
    // 0x6d1d80: r1 = LoadClassIdInstr(r0)
    //     0x6d1d80: ldur            x1, [x0, #-1]
    //     0x6d1d84: ubfx            x1, x1, #0xc, #0x14
    // 0x6d1d88: mov             x16, x0
    // 0x6d1d8c: mov             x0, x1
    // 0x6d1d90: mov             x1, x16
    // 0x6d1d94: r2 = 2
    //     0x6d1d94: mov             x2, #2
    // 0x6d1d98: r3 = "0"
    //     0x6d1d98: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6d1d9c: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6d1d9c: sub             lr, x0, #0xffc
    //     0x6d1da0: ldr             lr, [x21, lr, lsl #3]
    //     0x6d1da4: blr             lr
    // 0x6d1da8: r1 = Null
    //     0x6d1da8: mov             x1, NULL
    // 0x6d1dac: r2 = 6
    //     0x6d1dac: mov             x2, #6
    // 0x6d1db0: stur            x0, [fp, #-0x10]
    // 0x6d1db4: r0 = AllocateArray()
    //     0x6d1db4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d1db8: mov             x1, x0
    // 0x6d1dbc: ldur            x0, [fp, #-0x10]
    // 0x6d1dc0: stur            x1, [fp, #-0x20]
    // 0x6d1dc4: StoreField: r1->field_f = r0
    //     0x6d1dc4: stur            w0, [x1, #0xf]
    // 0x6d1dc8: r16 = ":"
    //     0x6d1dc8: ldr             x16, [PP, #0x990]  ; [pp+0x990] ":"
    // 0x6d1dcc: StoreField: r1->field_13 = r16
    //     0x6d1dcc: stur            w16, [x1, #0x13]
    // 0x6d1dd0: ldur            x0, [fp, #-8]
    // 0x6d1dd4: lsl             x2, x0, #1
    // 0x6d1dd8: str             x2, [SP]
    // 0x6d1ddc: r0 = toString()
    //     0x6d1ddc: bl              #0x7b5710  ; [dart:core] _Smi::toString
    // 0x6d1de0: r1 = LoadClassIdInstr(r0)
    //     0x6d1de0: ldur            x1, [x0, #-1]
    //     0x6d1de4: ubfx            x1, x1, #0xc, #0x14
    // 0x6d1de8: mov             x16, x0
    // 0x6d1dec: mov             x0, x1
    // 0x6d1df0: mov             x1, x16
    // 0x6d1df4: r2 = 2
    //     0x6d1df4: mov             x2, #2
    // 0x6d1df8: r3 = "0"
    //     0x6d1df8: ldr             x3, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x6d1dfc: r0 = GDT[cid_x0 + -0xffc]()
    //     0x6d1dfc: sub             lr, x0, #0xffc
    //     0x6d1e00: ldr             lr, [x21, lr, lsl #3]
    //     0x6d1e04: blr             lr
    // 0x6d1e08: ldur            x1, [fp, #-0x20]
    // 0x6d1e0c: ArrayStore: r1[2] = r0  ; List_4
    //     0x6d1e0c: add             x25, x1, #0x17
    //     0x6d1e10: str             w0, [x25]
    //     0x6d1e14: tbz             w0, #0, #0x6d1e30
    //     0x6d1e18: ldurb           w16, [x1, #-1]
    //     0x6d1e1c: ldurb           w17, [x0, #-1]
    //     0x6d1e20: and             x16, x17, x16, lsr #2
    //     0x6d1e24: tst             x16, HEAP, lsr #32
    //     0x6d1e28: b.eq            #0x6d1e30
    //     0x6d1e2c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6d1e30: ldur            x16, [fp, #-0x20]
    // 0x6d1e34: str             x16, [SP]
    // 0x6d1e38: r0 = _interpolate()
    //     0x6d1e38: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x6d1e3c: LeaveFrame
    //     0x6d1e3c: mov             SP, fp
    //     0x6d1e40: ldp             fp, lr, [SP], #0x10
    // 0x6d1e44: ret
    //     0x6d1e44: ret             
    // 0x6d1e48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d1e48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1e4c: b               #0x6d1c9c
    // 0x6d1e50: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d1e50: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6d1e54: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6d1e54: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x6d1e58: add             x4, x4, x3
    // 0x6d1e5c: b               #0x6d1d60
    // 0x6d1e60: add             x1, x1, x0
    // 0x6d1e64: b               #0x6d1d70
  }
  _ selectDate(/* No info */) {
    // ** addr: 0x6d1f1c, size: 0x40
    // 0x6d1f1c: EnterFrame
    //     0x6d1f1c: stp             fp, lr, [SP, #-0x10]!
    //     0x6d1f20: mov             fp, SP
    // 0x6d1f24: AllocStack(0x8)
    //     0x6d1f24: sub             SP, SP, #8
    // 0x6d1f28: CheckStackOverflow
    //     0x6d1f28: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d1f2c: cmp             SP, x16
    //     0x6d1f30: b.ls            #0x6d1f54
    // 0x6d1f34: str             NULL, [SP]
    // 0x6d1f38: r4 = const [0, 0x3, 0x1, 0x2, agencyId, 0x2, null]
    //     0x6d1f38: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fe0] List(7) [0, 0x3, 0x1, 0x2, "agencyId", 0x2, Null]
    //     0x6d1f3c: ldr             x4, [x4, #0xfe0]
    // 0x6d1f40: r0 = loadEventsByDate()
    //     0x6d1f40: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x6d1f44: r0 = Null
    //     0x6d1f44: mov             x0, NULL
    // 0x6d1f48: LeaveFrame
    //     0x6d1f48: mov             SP, fp
    //     0x6d1f4c: ldp             fp, lr, [SP], #0x10
    // 0x6d1f50: ret
    //     0x6d1f50: ret             
    // 0x6d1f54: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d1f54: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d1f58: b               #0x6d1f34
  }
  _ updateEvent(/* No info */) async {
    // ** addr: 0x6d3b68, size: 0x1f8
    // 0x6d3b68: EnterFrame
    //     0x6d3b68: stp             fp, lr, [SP, #-0x10]!
    //     0x6d3b6c: mov             fp, SP
    // 0x6d3b70: AllocStack(0x120)
    //     0x6d3b70: sub             SP, SP, #0x120
    // 0x6d3b74: SetupParameters(EventProvider this /* r1 => r3, fp-0xf0 */, dynamic _ /* r2 => r1, fp-0xf8 */, [dynamic _ /* fp-0x100 */])
    //     0x6d3b74: stur            NULL, [fp, #-8]
    //     0x6d3b78: mov             x0, #0
    //     0x6d3b7c: stur            x1, [fp, #-0xe0]
    //     0x6d3b80: mov             x16, x2
    //     0x6d3b84: mov             x2, x1
    //     0x6d3b88: mov             x1, x16
    //     0x6d3b8c: mov             x16, x3
    //     0x6d3b90: mov             x3, x2
    //     0x6d3b94: mov             x2, x16
    //     0x6d3b98: stur            x1, [fp, #-0xe8]
    //     0x6d3b9c: stur            x2, [fp, #-0xf0]
    //     0x6d3ba0: stur            x5, [fp, #-0xf8]
    //     0x6d3ba4: stur            x6, [fp, #-0x100]
    // 0x6d3ba8: r17 = -264
    //     0x6d3ba8: mov             x17, #-0x108
    // 0x6d3bac: str             x7, [fp, x17]
    // 0x6d3bb0: add             x4, fp, w0, sxtw #2
    // 0x6d3bb4: ldr             x4, [x4, #0x18]
    // 0x6d3bb8: stur            x4, [fp, #-0xd8]
    // 0x6d3bbc: add             x8, fp, w0, sxtw #2
    // 0x6d3bc0: ldr             x8, [x8, #0x10]
    // 0x6d3bc4: stur            x8, [fp, #-0xd0]
    // 0x6d3bc8: CheckStackOverflow
    //     0x6d3bc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d3bcc: cmp             SP, x16
    //     0x6d3bd0: b.ls            #0x6d3d58
    // 0x6d3bd4: InitAsync() -> Future<bool>
    //     0x6d3bd4: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d3bd8: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d3bdc: ldur            x0, [fp, #-0xe8]
    // 0x6d3be0: ldur            x1, [fp, #-0xe0]
    // 0x6d3be4: r0 = notifyListeners()
    //     0x6d3be4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d3be8: ldur            x1, [fp, #-0xe0]
    // 0x6d3bec: ldur            x2, [fp, #-0xf0]
    // 0x6d3bf0: r0 = _formatDateToYMD()
    //     0x6d3bf0: bl              #0x5df528  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_formatDateToYMD
    // 0x6d3bf4: mov             x1, x0
    // 0x6d3bf8: ldur            x0, [fp, #-0xe8]
    // 0x6d3bfc: stur            x1, [fp, #-0xf0]
    // 0x6d3c00: cmp             w0, NULL
    // 0x6d3c04: b.ne            #0x6d3c34
    // 0x6d3c08: r0 = LoadStaticField(0xfe4)
    //     0x6d3c08: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6d3c0c: ldr             x0, [x0, #0x1fc8]
    // 0x6d3c10: cmp             w0, NULL
    // 0x6d3c14: b.ne            #0x6d3c20
    // 0x6d3c18: r0 = Null
    //     0x6d3c18: mov             x0, NULL
    // 0x6d3c1c: b               #0x6d3c2c
    // 0x6d3c20: LoadField: r2 = r0->field_4b
    //     0x6d3c20: ldur            w2, [x0, #0x4b]
    // 0x6d3c24: DecompressPointer r2
    //     0x6d3c24: add             x2, x2, HEAP, lsl #32
    // 0x6d3c28: mov             x0, x2
    // 0x6d3c2c: mov             x7, x0
    // 0x6d3c30: b               #0x6d3c38
    // 0x6d3c34: mov             x7, x0
    // 0x6d3c38: ldur            x4, [fp, #-0xe0]
    // 0x6d3c3c: ldur            x3, [fp, #-0xf8]
    // 0x6d3c40: ldur            x2, [fp, #-0x100]
    // 0x6d3c44: r17 = -264
    //     0x6d3c44: mov             x17, #-0x108
    // 0x6d3c48: ldr             x0, [fp, x17]
    // 0x6d3c4c: ldur            x5, [fp, #-0xd8]
    // 0x6d3c50: ldur            x6, [fp, #-0xd0]
    // 0x6d3c54: stur            x7, [fp, #-0xe8]
    // 0x6d3c58: r0 = EventModel()
    //     0x6d3c58: bl              #0x5dfc94  ; AllocateEventModelStub -> EventModel (size=0x34)
    // 0x6d3c5c: mov             x3, x0
    // 0x6d3c60: r17 = -264
    //     0x6d3c60: mov             x17, #-0x108
    // 0x6d3c64: ldr             x0, [fp, x17]
    // 0x6d3c68: r17 = -272
    //     0x6d3c68: mov             x17, #-0x110
    // 0x6d3c6c: str             x3, [fp, x17]
    // 0x6d3c70: StoreField: r3->field_7 = r0
    //     0x6d3c70: stur            w0, [x3, #7]
    // 0x6d3c74: ldur            x4, [fp, #-0xd0]
    // 0x6d3c78: StoreField: r3->field_b = r4
    //     0x6d3c78: stur            w4, [x3, #0xb]
    // 0x6d3c7c: ldur            x5, [fp, #-0xf8]
    // 0x6d3c80: StoreField: r3->field_f = r5
    //     0x6d3c80: stur            w5, [x3, #0xf]
    // 0x6d3c84: ldur            x6, [fp, #-0xf0]
    // 0x6d3c88: StoreField: r3->field_13 = r6
    //     0x6d3c88: stur            w6, [x3, #0x13]
    // 0x6d3c8c: ldur            x7, [fp, #-0xd8]
    // 0x6d3c90: ArrayStore: r3[0] = r7  ; List_4
    //     0x6d3c90: stur            w7, [x3, #0x17]
    // 0x6d3c94: ldur            x8, [fp, #-0x100]
    // 0x6d3c98: StoreField: r3->field_1b = r8
    //     0x6d3c98: stur            x8, [x3, #0x1b]
    // 0x6d3c9c: ldur            x9, [fp, #-0xe8]
    // 0x6d3ca0: StoreField: r3->field_27 = r9
    //     0x6d3ca0: stur            w9, [x3, #0x27]
    // 0x6d3ca4: ldur            x10, [fp, #-0xe0]
    // 0x6d3ca8: LoadField: r1 = r10->field_23
    //     0x6d3ca8: ldur            w1, [x10, #0x23]
    // 0x6d3cac: DecompressPointer r1
    //     0x6d3cac: add             x1, x1, HEAP, lsl #32
    // 0x6d3cb0: mov             x2, x3
    // 0x6d3cb4: r0 = updateEvent()
    //     0x6d3cb4: bl              #0x6d3d60  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateEvent
    // 0x6d3cb8: mov             x1, x0
    // 0x6d3cbc: r17 = -280
    //     0x6d3cbc: mov             x17, #-0x118
    // 0x6d3cc0: str             x1, [fp, x17]
    // 0x6d3cc4: r0 = Await()
    //     0x6d3cc4: bl              #0x3dd188  ; AwaitStub
    // 0x6d3cc8: stur            x0, [fp, #-0xd0]
    // 0x6d3ccc: r16 = true
    //     0x6d3ccc: add             x16, NULL, #0x20  ; true
    // 0x6d3cd0: cmp             w0, w16
    // 0x6d3cd4: b.ne            #0x6d3d08
    // 0x6d3cd8: ldur            x3, [fp, #-0xe0]
    // 0x6d3cdc: LoadField: r2 = r3->field_2f
    //     0x6d3cdc: ldur            w2, [x3, #0x2f]
    // 0x6d3ce0: DecompressPointer r2
    //     0x6d3ce0: add             x2, x2, HEAP, lsl #32
    // 0x6d3ce4: ldur            x16, [fp, #-0xe8]
    // 0x6d3ce8: str             x16, [SP]
    // 0x6d3cec: mov             x1, x3
    // 0x6d3cf0: r4 = const [0, 0x3, 0x1, 0x2, agencyId, 0x2, null]
    //     0x6d3cf0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fe0] List(7) [0, 0x3, 0x1, 0x2, "agencyId", 0x2, Null]
    //     0x6d3cf4: ldr             x4, [x4, #0xfe0]
    // 0x6d3cf8: r0 = loadEventsByDate()
    //     0x6d3cf8: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x6d3cfc: mov             x1, x0
    // 0x6d3d00: stur            x1, [fp, #-0xd8]
    // 0x6d3d04: r0 = Await()
    //     0x6d3d04: bl              #0x3dd188  ; AwaitStub
    // 0x6d3d08: ldur            x1, [fp, #-0xe0]
    // 0x6d3d0c: r0 = notifyListeners()
    //     0x6d3d0c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d3d10: ldur            x0, [fp, #-0xd0]
    // 0x6d3d14: r0 = ReturnAsync()
    //     0x6d3d14: b               #0x427094  ; ReturnAsyncStub
    // 0x6d3d18: sub             SP, fp, #0x120
    // 0x6d3d1c: ldur            x1, [fp, #-0xe0]
    // 0x6d3d20: r0 = notifyListeners()
    //     0x6d3d20: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d3d24: r0 = false
    //     0x6d3d24: add             x0, NULL, #0x30  ; false
    // 0x6d3d28: r0 = ReturnAsyncNotFuture()
    //     0x6d3d28: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d3d2c: sub             SP, fp, #0x120
    // 0x6d3d30: mov             x2, x0
    // 0x6d3d34: stur            x0, [fp, #-0xd0]
    // 0x6d3d38: mov             x0, x1
    // 0x6d3d3c: stur            x1, [fp, #-0xd8]
    // 0x6d3d40: ldur            x1, [fp, #-0xe0]
    // 0x6d3d44: r0 = notifyListeners()
    //     0x6d3d44: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d3d48: ldur            x0, [fp, #-0xd0]
    // 0x6d3d4c: ldur            x1, [fp, #-0xd8]
    // 0x6d3d50: r0 = ReThrow()
    //     0x6d3d50: bl              #0x9262fc  ; ReThrowStub
    // 0x6d3d54: brk             #0
    // 0x6d3d58: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d3d58: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d3d5c: b               #0x6d3bd4
  }
  _ createEvent(/* No info */) async {
    // ** addr: 0x6d45ec, size: 0x1d0
    // 0x6d45ec: EnterFrame
    //     0x6d45ec: stp             fp, lr, [SP, #-0x10]!
    //     0x6d45f0: mov             fp, SP
    // 0x6d45f4: AllocStack(0x118)
    //     0x6d45f4: sub             SP, SP, #0x118
    // 0x6d45f8: SetupParameters(EventProvider this /* r1 => r3, fp-0xe0 */, dynamic _ /* r2 => r1, fp-0xe8 */, [dynamic _ /* fp-0xf0 */, dynamic _ /* fp-0xf8 */])
    //     0x6d45f8: stur            NULL, [fp, #-8]
    //     0x6d45fc: mov             x0, #0
    //     0x6d4600: stur            x1, [fp, #-0xd0]
    //     0x6d4604: mov             x16, x2
    //     0x6d4608: mov             x2, x1
    //     0x6d460c: mov             x1, x16
    //     0x6d4610: mov             x16, x3
    //     0x6d4614: mov             x3, x2
    //     0x6d4618: mov             x2, x16
    //     0x6d461c: stur            x1, [fp, #-0xd8]
    //     0x6d4620: stur            x2, [fp, #-0xe0]
    //     0x6d4624: stur            x5, [fp, #-0xe8]
    //     0x6d4628: stur            x6, [fp, #-0xf0]
    //     0x6d462c: stur            x7, [fp, #-0xf8]
    // 0x6d4630: add             x4, fp, w0, sxtw #2
    // 0x6d4634: ldr             x4, [x4, #0x10]
    // 0x6d4638: stur            x4, [fp, #-0xc8]
    // 0x6d463c: CheckStackOverflow
    //     0x6d463c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d4640: cmp             SP, x16
    //     0x6d4644: b.ls            #0x6d47b4
    // 0x6d4648: InitAsync() -> Future<String?>
    //     0x6d4648: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6d464c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d4650: ldur            x0, [fp, #-0xd8]
    // 0x6d4654: ldur            x1, [fp, #-0xd0]
    // 0x6d4658: r0 = notifyListeners()
    //     0x6d4658: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d465c: ldur            x1, [fp, #-0xd0]
    // 0x6d4660: ldur            x2, [fp, #-0xe0]
    // 0x6d4664: r0 = _formatDateToYMD()
    //     0x6d4664: bl              #0x5df528  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::_formatDateToYMD
    // 0x6d4668: mov             x1, x0
    // 0x6d466c: ldur            x0, [fp, #-0xd8]
    // 0x6d4670: stur            x1, [fp, #-0x100]
    // 0x6d4674: cmp             w0, NULL
    // 0x6d4678: b.ne            #0x6d46a8
    // 0x6d467c: r0 = LoadStaticField(0xfe4)
    //     0x6d467c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6d4680: ldr             x0, [x0, #0x1fc8]
    // 0x6d4684: cmp             w0, NULL
    // 0x6d4688: b.ne            #0x6d4694
    // 0x6d468c: r0 = Null
    //     0x6d468c: mov             x0, NULL
    // 0x6d4690: b               #0x6d46a0
    // 0x6d4694: LoadField: r2 = r0->field_4b
    //     0x6d4694: ldur            w2, [x0, #0x4b]
    // 0x6d4698: DecompressPointer r2
    //     0x6d4698: add             x2, x2, HEAP, lsl #32
    // 0x6d469c: mov             x0, x2
    // 0x6d46a0: mov             x6, x0
    // 0x6d46a4: b               #0x6d46ac
    // 0x6d46a8: mov             x6, x0
    // 0x6d46ac: ldur            x4, [fp, #-0xd0]
    // 0x6d46b0: ldur            x3, [fp, #-0xe8]
    // 0x6d46b4: ldur            x2, [fp, #-0xf0]
    // 0x6d46b8: ldur            x0, [fp, #-0xf8]
    // 0x6d46bc: ldur            x5, [fp, #-0xc8]
    // 0x6d46c0: stur            x6, [fp, #-0xd8]
    // 0x6d46c4: r0 = EventModel()
    //     0x6d46c4: bl              #0x5dfc94  ; AllocateEventModelStub -> EventModel (size=0x34)
    // 0x6d46c8: mov             x3, x0
    // 0x6d46cc: r0 = ""
    //     0x6d46cc: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d46d0: r17 = -264
    //     0x6d46d0: mov             x17, #-0x108
    // 0x6d46d4: str             x3, [fp, x17]
    // 0x6d46d8: StoreField: r3->field_7 = r0
    //     0x6d46d8: stur            w0, [x3, #7]
    // 0x6d46dc: ldur            x0, [fp, #-0xc8]
    // 0x6d46e0: StoreField: r3->field_b = r0
    //     0x6d46e0: stur            w0, [x3, #0xb]
    // 0x6d46e4: ldur            x4, [fp, #-0xe8]
    // 0x6d46e8: StoreField: r3->field_f = r4
    //     0x6d46e8: stur            w4, [x3, #0xf]
    // 0x6d46ec: ldur            x5, [fp, #-0x100]
    // 0x6d46f0: StoreField: r3->field_13 = r5
    //     0x6d46f0: stur            w5, [x3, #0x13]
    // 0x6d46f4: ldur            x6, [fp, #-0xf8]
    // 0x6d46f8: ArrayStore: r3[0] = r6  ; List_4
    //     0x6d46f8: stur            w6, [x3, #0x17]
    // 0x6d46fc: ldur            x7, [fp, #-0xf0]
    // 0x6d4700: StoreField: r3->field_1b = r7
    //     0x6d4700: stur            x7, [x3, #0x1b]
    // 0x6d4704: ldur            x8, [fp, #-0xd8]
    // 0x6d4708: StoreField: r3->field_27 = r8
    //     0x6d4708: stur            w8, [x3, #0x27]
    // 0x6d470c: ldur            x9, [fp, #-0xd0]
    // 0x6d4710: LoadField: r1 = r9->field_23
    //     0x6d4710: ldur            w1, [x9, #0x23]
    // 0x6d4714: DecompressPointer r1
    //     0x6d4714: add             x1, x1, HEAP, lsl #32
    // 0x6d4718: mov             x2, x3
    // 0x6d471c: r0 = createEvent()
    //     0x6d471c: bl              #0x6d47bc  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createEvent
    // 0x6d4720: mov             x1, x0
    // 0x6d4724: r17 = -272
    //     0x6d4724: mov             x17, #-0x110
    // 0x6d4728: str             x1, [fp, x17]
    // 0x6d472c: r0 = Await()
    //     0x6d472c: bl              #0x3dd188  ; AwaitStub
    // 0x6d4730: stur            x0, [fp, #-0xc8]
    // 0x6d4734: cmp             w0, NULL
    // 0x6d4738: b.eq            #0x6d4764
    // 0x6d473c: ldur            x16, [fp, #-0xd8]
    // 0x6d4740: str             x16, [SP]
    // 0x6d4744: ldur            x1, [fp, #-0xd0]
    // 0x6d4748: ldur            x2, [fp, #-0xe0]
    // 0x6d474c: r4 = const [0, 0x3, 0x1, 0x2, agencyId, 0x2, null]
    //     0x6d474c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fe0] List(7) [0, 0x3, 0x1, 0x2, "agencyId", 0x2, Null]
    //     0x6d4750: ldr             x4, [x4, #0xfe0]
    // 0x6d4754: r0 = loadEventsByDate()
    //     0x6d4754: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x6d4758: mov             x1, x0
    // 0x6d475c: stur            x1, [fp, #-0xe8]
    // 0x6d4760: r0 = Await()
    //     0x6d4760: bl              #0x3dd188  ; AwaitStub
    // 0x6d4764: ldur            x1, [fp, #-0xd0]
    // 0x6d4768: r0 = notifyListeners()
    //     0x6d4768: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d476c: ldur            x0, [fp, #-0xc8]
    // 0x6d4770: r0 = ReturnAsync()
    //     0x6d4770: b               #0x427094  ; ReturnAsyncStub
    // 0x6d4774: sub             SP, fp, #0x118
    // 0x6d4778: ldur            x1, [fp, #-0xd0]
    // 0x6d477c: r0 = notifyListeners()
    //     0x6d477c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d4780: r0 = Null
    //     0x6d4780: mov             x0, NULL
    // 0x6d4784: r0 = ReturnAsyncNotFuture()
    //     0x6d4784: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d4788: sub             SP, fp, #0x118
    // 0x6d478c: mov             x2, x0
    // 0x6d4790: stur            x0, [fp, #-0xc8]
    // 0x6d4794: mov             x0, x1
    // 0x6d4798: stur            x1, [fp, #-0xd8]
    // 0x6d479c: ldur            x1, [fp, #-0xd0]
    // 0x6d47a0: r0 = notifyListeners()
    //     0x6d47a0: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d47a4: ldur            x0, [fp, #-0xc8]
    // 0x6d47a8: ldur            x1, [fp, #-0xd8]
    // 0x6d47ac: r0 = ReThrow()
    //     0x6d47ac: bl              #0x9262fc  ; ReThrowStub
    // 0x6d47b0: brk             #0
    // 0x6d47b4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d47b4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d47b8: b               #0x6d4648
  }
  _ deleteEvent(/* No info */) async {
    // ** addr: 0x7e5574, size: 0xe4
    // 0x7e5574: EnterFrame
    //     0x7e5574: stp             fp, lr, [SP, #-0x10]!
    //     0x7e5578: mov             fp, SP
    // 0x7e557c: AllocStack(0x80)
    //     0x7e557c: sub             SP, SP, #0x80
    // 0x7e5580: SetupParameters(EventProvider this /* r1 => r1, fp-0x70 */, dynamic _ /* r2 => r2, fp-0x78 */)
    //     0x7e5580: stur            NULL, [fp, #-8]
    //     0x7e5584: stur            x1, [fp, #-0x70]
    //     0x7e5588: stur            x2, [fp, #-0x78]
    // 0x7e558c: CheckStackOverflow
    //     0x7e558c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7e5590: cmp             SP, x16
    //     0x7e5594: b.ls            #0x7e5650
    // 0x7e5598: InitAsync() -> Future<bool>
    //     0x7e5598: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x7e559c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7e55a0: ldur            x0, [fp, #-0x70]
    // 0x7e55a4: mov             x1, x0
    // 0x7e55a8: r0 = notifyListeners()
    //     0x7e55a8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e55ac: ldur            x0, [fp, #-0x70]
    // 0x7e55b0: LoadField: r1 = r0->field_23
    //     0x7e55b0: ldur            w1, [x0, #0x23]
    // 0x7e55b4: DecompressPointer r1
    //     0x7e55b4: add             x1, x1, HEAP, lsl #32
    // 0x7e55b8: ldur            x2, [fp, #-0x78]
    // 0x7e55bc: r0 = deleteEvent()
    //     0x7e55bc: bl              #0x7e5658  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteEvent
    // 0x7e55c0: mov             x1, x0
    // 0x7e55c4: stur            x1, [fp, #-0x80]
    // 0x7e55c8: r0 = Await()
    //     0x7e55c8: bl              #0x3dd188  ; AwaitStub
    // 0x7e55cc: stur            x0, [fp, #-0x78]
    // 0x7e55d0: r16 = true
    //     0x7e55d0: add             x16, NULL, #0x20  ; true
    // 0x7e55d4: cmp             w0, w16
    // 0x7e55d8: b.ne            #0x7e5600
    // 0x7e55dc: ldur            x3, [fp, #-0x70]
    // 0x7e55e0: LoadField: r2 = r3->field_2f
    //     0x7e55e0: ldur            w2, [x3, #0x2f]
    // 0x7e55e4: DecompressPointer r2
    //     0x7e55e4: add             x2, x2, HEAP, lsl #32
    // 0x7e55e8: mov             x1, x3
    // 0x7e55ec: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x7e55ec: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x7e55f0: r0 = loadEventsByDate()
    //     0x7e55f0: bl              #0x5df1d8  ; [package:umrem_demo/features/admin/providers/event_provider.dart] EventProvider::loadEventsByDate
    // 0x7e55f4: mov             x1, x0
    // 0x7e55f8: stur            x1, [fp, #-0x80]
    // 0x7e55fc: r0 = Await()
    //     0x7e55fc: bl              #0x3dd188  ; AwaitStub
    // 0x7e5600: ldur            x1, [fp, #-0x70]
    // 0x7e5604: r0 = notifyListeners()
    //     0x7e5604: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e5608: ldur            x0, [fp, #-0x78]
    // 0x7e560c: r0 = ReturnAsync()
    //     0x7e560c: b               #0x427094  ; ReturnAsyncStub
    // 0x7e5610: sub             SP, fp, #0x80
    // 0x7e5614: ldur            x1, [fp, #-0x70]
    // 0x7e5618: r0 = notifyListeners()
    //     0x7e5618: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e561c: r0 = false
    //     0x7e561c: add             x0, NULL, #0x30  ; false
    // 0x7e5620: r0 = ReturnAsyncNotFuture()
    //     0x7e5620: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7e5624: sub             SP, fp, #0x80
    // 0x7e5628: mov             x2, x0
    // 0x7e562c: stur            x0, [fp, #-0x78]
    // 0x7e5630: mov             x0, x1
    // 0x7e5634: stur            x1, [fp, #-0x80]
    // 0x7e5638: ldur            x1, [fp, #-0x70]
    // 0x7e563c: r0 = notifyListeners()
    //     0x7e563c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x7e5640: ldur            x0, [fp, #-0x78]
    // 0x7e5644: ldur            x1, [fp, #-0x80]
    // 0x7e5648: r0 = ReThrow()
    //     0x7e5648: bl              #0x9262fc  ; ReThrowStub
    // 0x7e564c: brk             #0
    // 0x7e5650: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7e5650: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7e5654: b               #0x7e5598
  }
  _ EventProvider(/* No info */) {
    // ** addr: 0x7f08c4, size: 0x148
    // 0x7f08c4: EnterFrame
    //     0x7f08c4: stp             fp, lr, [SP, #-0x10]!
    //     0x7f08c8: mov             fp, SP
    // 0x7f08cc: AllocStack(0x10)
    //     0x7f08cc: sub             SP, SP, #0x10
    // 0x7f08d0: r0 = false
    //     0x7f08d0: add             x0, NULL, #0x30  ; false
    // 0x7f08d4: stur            x1, [fp, #-8]
    // 0x7f08d8: CheckStackOverflow
    //     0x7f08d8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f08dc: cmp             SP, x16
    //     0x7f08e0: b.ls            #0x7f0a04
    // 0x7f08e4: StoreField: r1->field_27 = r0
    //     0x7f08e4: stur            w0, [x1, #0x27]
    // 0x7f08e8: r4 = const [0, 0, 0, 0, null]
    //     0x7f08e8: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7f08ec: r0 = app()
    //     0x7f08ec: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7f08f0: mov             x1, x0
    // 0x7f08f4: r0 = instanceFor()
    //     0x7f08f4: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7f08f8: stur            x0, [fp, #-0x10]
    // 0x7f08fc: r0 = FirestoreService()
    //     0x7f08fc: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7f0900: mov             x1, x0
    // 0x7f0904: ldur            x0, [fp, #-0x10]
    // 0x7f0908: StoreField: r1->field_7 = r0
    //     0x7f0908: stur            w0, [x1, #7]
    // 0x7f090c: mov             x0, x1
    // 0x7f0910: ldur            x3, [fp, #-8]
    // 0x7f0914: StoreField: r3->field_23 = r0
    //     0x7f0914: stur            w0, [x3, #0x23]
    //     0x7f0918: ldurb           w16, [x3, #-1]
    //     0x7f091c: ldurb           w17, [x0, #-1]
    //     0x7f0920: and             x16, x17, x16, lsr #2
    //     0x7f0924: tst             x16, HEAP, lsr #32
    //     0x7f0928: b.eq            #0x7f0930
    //     0x7f092c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0930: r1 = <EventModel>
    //     0x7f0930: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d80] TypeArguments: <EventModel>
    //     0x7f0934: ldr             x1, [x1, #0xd80]
    // 0x7f0938: r2 = 0
    //     0x7f0938: mov             x2, #0
    // 0x7f093c: r0 = _GrowableList()
    //     0x7f093c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0940: ldur            x1, [fp, #-8]
    // 0x7f0944: StoreField: r1->field_2b = r0
    //     0x7f0944: stur            w0, [x1, #0x2b]
    //     0x7f0948: ldurb           w16, [x1, #-1]
    //     0x7f094c: ldurb           w17, [x0, #-1]
    //     0x7f0950: and             x16, x17, x16, lsr #2
    //     0x7f0954: tst             x16, HEAP, lsr #32
    //     0x7f0958: b.eq            #0x7f0960
    //     0x7f095c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0960: r0 = DateTime()
    //     0x7f0960: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7f0964: mov             x1, x0
    // 0x7f0968: r0 = false
    //     0x7f0968: add             x0, NULL, #0x30  ; false
    // 0x7f096c: stur            x1, [fp, #-0x10]
    // 0x7f0970: StoreField: r1->field_7 = r0
    //     0x7f0970: stur            w0, [x1, #7]
    // 0x7f0974: r0 = _getCurrentMicros()
    //     0x7f0974: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7f0978: r1 = LoadInt32Instr(r0)
    //     0x7f0978: sbfx            x1, x0, #1, #0x1f
    //     0x7f097c: tbz             w0, #0, #0x7f0984
    //     0x7f0980: ldur            x1, [x0, #7]
    // 0x7f0984: ldur            x0, [fp, #-0x10]
    // 0x7f0988: StoreField: r0->field_b = r1
    //     0x7f0988: stur            x1, [x0, #0xb]
    // 0x7f098c: ldur            x1, [fp, #-8]
    // 0x7f0990: StoreField: r1->field_2f = r0
    //     0x7f0990: stur            w0, [x1, #0x2f]
    //     0x7f0994: ldurb           w16, [x1, #-1]
    //     0x7f0998: ldurb           w17, [x0, #-1]
    //     0x7f099c: and             x16, x17, x16, lsr #2
    //     0x7f09a0: tst             x16, HEAP, lsr #32
    //     0x7f09a4: b.eq            #0x7f09ac
    //     0x7f09a8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f09ac: StoreField: r1->field_7 = rZR
    //     0x7f09ac: stur            xzr, [x1, #7]
    // 0x7f09b0: StoreField: r1->field_13 = rZR
    //     0x7f09b0: stur            xzr, [x1, #0x13]
    // 0x7f09b4: StoreField: r1->field_1b = rZR
    //     0x7f09b4: stur            xzr, [x1, #0x1b]
    // 0x7f09b8: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f09b8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f09bc: ldr             x0, [x0, #0xbc0]
    //     0x7f09c0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f09c4: cmp             w0, w16
    //     0x7f09c8: b.ne            #0x7f09d4
    //     0x7f09cc: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f09d0: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f09d4: ldur            x1, [fp, #-8]
    // 0x7f09d8: StoreField: r1->field_f = r0
    //     0x7f09d8: stur            w0, [x1, #0xf]
    //     0x7f09dc: ldurb           w16, [x1, #-1]
    //     0x7f09e0: ldurb           w17, [x0, #-1]
    //     0x7f09e4: and             x16, x17, x16, lsr #2
    //     0x7f09e8: tst             x16, HEAP, lsr #32
    //     0x7f09ec: b.eq            #0x7f09f4
    //     0x7f09f0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f09f4: r0 = Null
    //     0x7f09f4: mov             x0, NULL
    // 0x7f09f8: LeaveFrame
    //     0x7f09f8: mov             SP, fp
    //     0x7f09fc: ldp             fp, lr, [SP], #0x10
    // 0x7f0a00: ret
    //     0x7f0a00: ret             
    // 0x7f0a04: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0a04: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0a08: b               #0x7f08e4
  }
}
