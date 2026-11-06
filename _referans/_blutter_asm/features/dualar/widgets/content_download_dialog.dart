// lib: , url: package:umrem_demo/features/dualar/widgets/content_download_dialog.dart

// class id: 1049579, size: 0x8
class :: {
}

// class id: 2473, size: 0x44, field offset: 0x14
class _ContentDownloadDialogState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e69cc, size: 0x130
    // 0x5e69cc: EnterFrame
    //     0x5e69cc: stp             fp, lr, [SP, #-0x10]!
    //     0x5e69d0: mov             fp, SP
    // 0x5e69d4: AllocStack(0x18)
    //     0x5e69d4: sub             SP, SP, #0x18
    // 0x5e69d8: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x8 */)
    //     0x5e69d8: stur            x1, [fp, #-8]
    // 0x5e69dc: CheckStackOverflow
    //     0x5e69dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e69e0: cmp             SP, x16
    //     0x5e69e4: b.ls            #0x5e6af0
    // 0x5e69e8: r1 = 1
    //     0x5e69e8: mov             x1, #1
    // 0x5e69ec: r0 = AllocateContext()
    //     0x5e69ec: bl              #0x927010  ; AllocateContextStub
    // 0x5e69f0: mov             x1, x0
    // 0x5e69f4: ldur            x0, [fp, #-8]
    // 0x5e69f8: StoreField: r1->field_f = r0
    //     0x5e69f8: stur            w0, [x1, #0xf]
    // 0x5e69fc: r0 = LoadStaticField(0x834)
    //     0x5e69fc: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e6a00: ldr             x0, [x0, #0x1068]
    // 0x5e6a04: cmp             w0, NULL
    // 0x5e6a08: b.eq            #0x5e6af8
    // 0x5e6a0c: LoadField: r3 = r0->field_53
    //     0x5e6a0c: ldur            w3, [x0, #0x53]
    // 0x5e6a10: DecompressPointer r3
    //     0x5e6a10: add             x3, x3, HEAP, lsl #32
    // 0x5e6a14: stur            x3, [fp, #-0x10]
    // 0x5e6a18: LoadField: r0 = r3->field_7
    //     0x5e6a18: ldur            w0, [x3, #7]
    // 0x5e6a1c: DecompressPointer r0
    //     0x5e6a1c: add             x0, x0, HEAP, lsl #32
    // 0x5e6a20: mov             x2, x1
    // 0x5e6a24: stur            x0, [fp, #-8]
    // 0x5e6a28: r1 = Function '<anonymous closure>':.
    //     0x5e6a28: add             x1, PP, #0x20, lsl #12  ; [pp+0x20420] AnonymousClosure: (0x5e6b1c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::initState (0x5e69cc)
    //     0x5e6a2c: ldr             x1, [x1, #0x420]
    // 0x5e6a30: r0 = AllocateClosure()
    //     0x5e6a30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e6a34: ldur            x2, [fp, #-8]
    // 0x5e6a38: mov             x3, x0
    // 0x5e6a3c: r1 = Null
    //     0x5e6a3c: mov             x1, NULL
    // 0x5e6a40: stur            x3, [fp, #-8]
    // 0x5e6a44: cmp             w2, NULL
    // 0x5e6a48: b.eq            #0x5e6a68
    // 0x5e6a4c: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e6a4c: ldur            w4, [x2, #0x17]
    // 0x5e6a50: DecompressPointer r4
    //     0x5e6a50: add             x4, x4, HEAP, lsl #32
    // 0x5e6a54: r8 = X0
    //     0x5e6a54: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x5e6a58: LoadField: r9 = r4->field_7
    //     0x5e6a58: ldur            x9, [x4, #7]
    // 0x5e6a5c: r3 = Null
    //     0x5e6a5c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20428] Null
    //     0x5e6a60: ldr             x3, [x3, #0x428]
    // 0x5e6a64: blr             x9
    // 0x5e6a68: ldur            x0, [fp, #-0x10]
    // 0x5e6a6c: LoadField: r1 = r0->field_b
    //     0x5e6a6c: ldur            w1, [x0, #0xb]
    // 0x5e6a70: LoadField: r2 = r0->field_f
    //     0x5e6a70: ldur            w2, [x0, #0xf]
    // 0x5e6a74: DecompressPointer r2
    //     0x5e6a74: add             x2, x2, HEAP, lsl #32
    // 0x5e6a78: LoadField: r3 = r2->field_b
    //     0x5e6a78: ldur            w3, [x2, #0xb]
    // 0x5e6a7c: r2 = LoadInt32Instr(r1)
    //     0x5e6a7c: sbfx            x2, x1, #1, #0x1f
    // 0x5e6a80: stur            x2, [fp, #-0x18]
    // 0x5e6a84: r1 = LoadInt32Instr(r3)
    //     0x5e6a84: sbfx            x1, x3, #1, #0x1f
    // 0x5e6a88: cmp             x2, x1
    // 0x5e6a8c: b.ne            #0x5e6a98
    // 0x5e6a90: mov             x1, x0
    // 0x5e6a94: r0 = _growToNextCapacity()
    //     0x5e6a94: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x5e6a98: ldur            x2, [fp, #-0x10]
    // 0x5e6a9c: ldur            x3, [fp, #-0x18]
    // 0x5e6aa0: add             x4, x3, #1
    // 0x5e6aa4: lsl             x5, x4, #1
    // 0x5e6aa8: StoreField: r2->field_b = r5
    //     0x5e6aa8: stur            w5, [x2, #0xb]
    // 0x5e6aac: LoadField: r1 = r2->field_f
    //     0x5e6aac: ldur            w1, [x2, #0xf]
    // 0x5e6ab0: DecompressPointer r1
    //     0x5e6ab0: add             x1, x1, HEAP, lsl #32
    // 0x5e6ab4: ldur            x0, [fp, #-8]
    // 0x5e6ab8: ArrayStore: r1[r3] = r0  ; List_4
    //     0x5e6ab8: add             x25, x1, x3, lsl #2
    //     0x5e6abc: add             x25, x25, #0xf
    //     0x5e6ac0: str             w0, [x25]
    //     0x5e6ac4: tbz             w0, #0, #0x5e6ae0
    //     0x5e6ac8: ldurb           w16, [x1, #-1]
    //     0x5e6acc: ldurb           w17, [x0, #-1]
    //     0x5e6ad0: and             x16, x17, x16, lsr #2
    //     0x5e6ad4: tst             x16, HEAP, lsr #32
    //     0x5e6ad8: b.eq            #0x5e6ae0
    //     0x5e6adc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x5e6ae0: r0 = Null
    //     0x5e6ae0: mov             x0, NULL
    // 0x5e6ae4: LeaveFrame
    //     0x5e6ae4: mov             SP, fp
    //     0x5e6ae8: ldp             fp, lr, [SP], #0x10
    // 0x5e6aec: ret
    //     0x5e6aec: ret             
    // 0x5e6af0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6af0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6af4: b               #0x5e69e8
    // 0x5e6af8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e6af8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, Duration) {
    // ** addr: 0x5e6b1c, size: 0x48
    // 0x5e6b1c: EnterFrame
    //     0x5e6b1c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6b20: mov             fp, SP
    // 0x5e6b24: ldr             x0, [fp, #0x18]
    // 0x5e6b28: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5e6b28: ldur            w1, [x0, #0x17]
    // 0x5e6b2c: DecompressPointer r1
    //     0x5e6b2c: add             x1, x1, HEAP, lsl #32
    // 0x5e6b30: CheckStackOverflow
    //     0x5e6b30: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6b34: cmp             SP, x16
    //     0x5e6b38: b.ls            #0x5e6b5c
    // 0x5e6b3c: LoadField: r0 = r1->field_f
    //     0x5e6b3c: ldur            w0, [x1, #0xf]
    // 0x5e6b40: DecompressPointer r0
    //     0x5e6b40: add             x0, x0, HEAP, lsl #32
    // 0x5e6b44: mov             x1, x0
    // 0x5e6b48: r0 = _checkDownloadStatus()
    //     0x5e6b48: bl              #0x5e6b64  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_checkDownloadStatus
    // 0x5e6b4c: r0 = Null
    //     0x5e6b4c: mov             x0, NULL
    // 0x5e6b50: LeaveFrame
    //     0x5e6b50: mov             SP, fp
    //     0x5e6b54: ldp             fp, lr, [SP], #0x10
    // 0x5e6b58: ret
    //     0x5e6b58: ret             
    // 0x5e6b5c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6b5c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6b60: b               #0x5e6b3c
  }
  _ _checkDownloadStatus(/* No info */) async {
    // ** addr: 0x5e6b64, size: 0x220
    // 0x5e6b64: EnterFrame
    //     0x5e6b64: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6b68: mov             fp, SP
    // 0x5e6b6c: AllocStack(0xb0)
    //     0x5e6b6c: sub             SP, SP, #0xb0
    // 0x5e6b70: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x78 */)
    //     0x5e6b70: stur            NULL, [fp, #-8]
    //     0x5e6b74: stur            x1, [fp, #-0x78]
    // 0x5e6b78: CheckStackOverflow
    //     0x5e6b78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6b7c: cmp             SP, x16
    //     0x5e6b80: b.ls            #0x5e6d70
    // 0x5e6b84: r1 = 4
    //     0x5e6b84: mov             x1, #4
    // 0x5e6b88: r0 = AllocateContext()
    //     0x5e6b88: bl              #0x927010  ; AllocateContextStub
    // 0x5e6b8c: mov             x2, x0
    // 0x5e6b90: ldur            x1, [fp, #-0x78]
    // 0x5e6b94: stur            x2, [fp, #-0x80]
    // 0x5e6b98: StoreField: r2->field_f = r1
    //     0x5e6b98: stur            w1, [x2, #0xf]
    // 0x5e6b9c: InitAsync() -> Future<void?>
    //     0x5e6b9c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e6ba0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6ba4: ldur            x1, [fp, #-0x78]
    // 0x5e6ba8: LoadField: r0 = r1->field_f
    //     0x5e6ba8: ldur            w0, [x1, #0xf]
    // 0x5e6bac: DecompressPointer r0
    //     0x5e6bac: add             x0, x0, HEAP, lsl #32
    // 0x5e6bb0: cmp             w0, NULL
    // 0x5e6bb4: b.eq            #0x5e6d78
    // 0x5e6bb8: r16 = <QuranDownloadProvider>
    //     0x5e6bb8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bc0] TypeArguments: <QuranDownloadProvider>
    //     0x5e6bbc: ldr             x16, [x16, #0xbc0]
    // 0x5e6bc0: stp             x0, x16, [SP]
    // 0x5e6bc4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e6bc4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e6bc8: r0 = ReadContext.read()
    //     0x5e6bc8: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e6bcc: ldur            x1, [fp, #-0x78]
    // 0x5e6bd0: stur            x0, [fp, #-0x88]
    // 0x5e6bd4: LoadField: r2 = r1->field_f
    //     0x5e6bd4: ldur            w2, [x1, #0xf]
    // 0x5e6bd8: DecompressPointer r2
    //     0x5e6bd8: add             x2, x2, HEAP, lsl #32
    // 0x5e6bdc: cmp             w2, NULL
    // 0x5e6be0: b.eq            #0x5e6d7c
    // 0x5e6be4: r16 = <SayDualariDownloadProvider>
    //     0x5e6be4: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bd0] TypeArguments: <SayDualariDownloadProvider>
    //     0x5e6be8: ldr             x16, [x16, #0xbd0]
    // 0x5e6bec: stp             x2, x16, [SP]
    // 0x5e6bf0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e6bf0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e6bf4: r0 = ReadContext.read()
    //     0x5e6bf4: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e6bf8: ldur            x1, [fp, #-0x78]
    // 0x5e6bfc: stur            x0, [fp, #-0x90]
    // 0x5e6c00: LoadField: r2 = r1->field_f
    //     0x5e6c00: ldur            w2, [x1, #0xf]
    // 0x5e6c04: DecompressPointer r2
    //     0x5e6c04: add             x2, x2, HEAP, lsl #32
    // 0x5e6c08: cmp             w2, NULL
    // 0x5e6c0c: b.eq            #0x5e6d80
    // 0x5e6c10: r16 = <TavafDualariDownloadProvider>
    //     0x5e6c10: add             x16, PP, #0x10, lsl #12  ; [pp+0x10be0] TypeArguments: <TavafDualariDownloadProvider>
    //     0x5e6c14: ldr             x16, [x16, #0xbe0]
    // 0x5e6c18: stp             x2, x16, [SP]
    // 0x5e6c1c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x5e6c1c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x5e6c20: r0 = ReadContext.read()
    //     0x5e6c20: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x5e6c24: stur            x0, [fp, #-0x98]
    // 0x5e6c28: ldur            x2, [fp, #-0x78]
    // 0x5e6c2c: ldur            x3, [fp, #-0x80]
    // 0x5e6c30: ldur            x1, [fp, #-0x88]
    // 0x5e6c34: r0 = areAllPagesDownloaded()
    //     0x5e6c34: bl              #0x5e6f24  ; [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::areAllPagesDownloaded
    // 0x5e6c38: mov             x1, x0
    // 0x5e6c3c: stur            x1, [fp, #-0xa0]
    // 0x5e6c40: r0 = Await()
    //     0x5e6c40: bl              #0x3dd188  ; AwaitStub
    // 0x5e6c44: ldur            x2, [fp, #-0x80]
    // 0x5e6c48: StoreField: r2->field_13 = r0
    //     0x5e6c48: stur            w0, [x2, #0x13]
    //     0x5e6c4c: tbz             w0, #0, #0x5e6c68
    //     0x5e6c50: ldurb           w16, [x2, #-1]
    //     0x5e6c54: ldurb           w17, [x0, #-1]
    //     0x5e6c58: and             x16, x17, x16, lsr #2
    //     0x5e6c5c: tst             x16, HEAP, lsr #32
    //     0x5e6c60: b.eq            #0x5e6c68
    //     0x5e6c64: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e6c68: ldur            x1, [fp, #-0x90]
    // 0x5e6c6c: r0 = areAllFilesDownloaded()
    //     0x5e6c6c: bl              #0x5e6e54  ; [package:umrem_demo/features/dualar/providers/say_dualari_download_provider.dart] SayDualariDownloadProvider::areAllFilesDownloaded
    // 0x5e6c70: mov             x1, x0
    // 0x5e6c74: stur            x1, [fp, #-0xa0]
    // 0x5e6c78: r0 = Await()
    //     0x5e6c78: bl              #0x3dd188  ; AwaitStub
    // 0x5e6c7c: ldur            x2, [fp, #-0x80]
    // 0x5e6c80: ArrayStore: r2[0] = r0  ; List_4
    //     0x5e6c80: stur            w0, [x2, #0x17]
    //     0x5e6c84: tbz             w0, #0, #0x5e6ca0
    //     0x5e6c88: ldurb           w16, [x2, #-1]
    //     0x5e6c8c: ldurb           w17, [x0, #-1]
    //     0x5e6c90: and             x16, x17, x16, lsr #2
    //     0x5e6c94: tst             x16, HEAP, lsr #32
    //     0x5e6c98: b.eq            #0x5e6ca0
    //     0x5e6c9c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e6ca0: ldur            x1, [fp, #-0x98]
    // 0x5e6ca4: r0 = areAllFilesDownloaded()
    //     0x5e6ca4: bl              #0x5e6d84  ; [package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart] TavafDualariDownloadProvider::areAllFilesDownloaded
    // 0x5e6ca8: mov             x1, x0
    // 0x5e6cac: stur            x1, [fp, #-0xa0]
    // 0x5e6cb0: r0 = Await()
    //     0x5e6cb0: bl              #0x3dd188  ; AwaitStub
    // 0x5e6cb4: ldur            x3, [fp, #-0x80]
    // 0x5e6cb8: StoreField: r3->field_1b = r0
    //     0x5e6cb8: stur            w0, [x3, #0x1b]
    //     0x5e6cbc: tbz             w0, #0, #0x5e6cd8
    //     0x5e6cc0: ldurb           w16, [x3, #-1]
    //     0x5e6cc4: ldurb           w17, [x0, #-1]
    //     0x5e6cc8: and             x16, x17, x16, lsr #2
    //     0x5e6ccc: tst             x16, HEAP, lsr #32
    //     0x5e6cd0: b.eq            #0x5e6cd8
    //     0x5e6cd4: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e6cd8: ldur            x0, [fp, #-0x78]
    // 0x5e6cdc: LoadField: r1 = r0->field_f
    //     0x5e6cdc: ldur            w1, [x0, #0xf]
    // 0x5e6ce0: DecompressPointer r1
    //     0x5e6ce0: add             x1, x1, HEAP, lsl #32
    // 0x5e6ce4: cmp             w1, NULL
    // 0x5e6ce8: b.eq            #0x5e6d68
    // 0x5e6cec: mov             x2, x3
    // 0x5e6cf0: r1 = Function '<anonymous closure>':.
    //     0x5e6cf0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20438] AnonymousClosure: (0x5e6ff4), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_checkDownloadStatus (0x5e6b64)
    //     0x5e6cf4: ldr             x1, [x1, #0x438]
    // 0x5e6cf8: r0 = AllocateClosure()
    //     0x5e6cf8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e6cfc: ldur            x1, [fp, #-0x78]
    // 0x5e6d00: mov             x2, x0
    // 0x5e6d04: r0 = setState()
    //     0x5e6d04: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e6d08: b               #0x5e6d68
    // 0x5e6d0c: sub             SP, fp, #0xb0
    // 0x5e6d10: stur            x0, [fp, #-0x78]
    // 0x5e6d14: r0 = InitLateStaticField(0x65c) // [package:flutter/src/foundation/print.dart] ::debugPrint
    //     0x5e6d14: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x5e6d18: ldr             x0, [x0, #0xcb8]
    //     0x5e6d1c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x5e6d20: cmp             w0, w16
    //     0x5e6d24: b.ne            #0x5e6d30
    //     0x5e6d28: ldr             x2, [PP, #0x360]  ; [pp+0x360] Field <::.debugPrint>: static late (offset: 0x65c)
    //     0x5e6d2c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x5e6d30: r1 = Null
    //     0x5e6d30: mov             x1, NULL
    // 0x5e6d34: r2 = 4
    //     0x5e6d34: mov             x2, #4
    // 0x5e6d38: r0 = AllocateArray()
    //     0x5e6d38: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e6d3c: r16 = "Error checking download status: "
    //     0x5e6d3c: add             x16, PP, #0x20, lsl #12  ; [pp+0x20440] "Error checking download status: "
    //     0x5e6d40: ldr             x16, [x16, #0x440]
    // 0x5e6d44: StoreField: r0->field_f = r16
    //     0x5e6d44: stur            w16, [x0, #0xf]
    // 0x5e6d48: ldur            x1, [fp, #-0x78]
    // 0x5e6d4c: StoreField: r0->field_13 = r1
    //     0x5e6d4c: stur            w1, [x0, #0x13]
    // 0x5e6d50: str             x0, [SP]
    // 0x5e6d54: r0 = _interpolate()
    //     0x5e6d54: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5e6d58: str             NULL, [SP]
    // 0x5e6d5c: mov             x1, x0
    // 0x5e6d60: r4 = const [0, 0x2, 0x1, 0x1, wrapWidth, 0x1, null]
    //     0x5e6d60: ldr             x4, [PP, #0x370]  ; [pp+0x370] List(7) [0, 0x2, 0x1, 0x1, "wrapWidth", 0x1, Null]
    // 0x5e6d64: r0 = debugPrintThrottled()
    //     0x5e6d64: bl              #0x3cb8b8  ; [package:flutter/src/foundation/print.dart] ::debugPrintThrottled
    // 0x5e6d68: r0 = Null
    //     0x5e6d68: mov             x0, NULL
    // 0x5e6d6c: r0 = ReturnAsyncNotFuture()
    //     0x5e6d6c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e6d70: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e6d70: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e6d74: b               #0x5e6b84
    // 0x5e6d78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e6d78: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e6d7c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e6d7c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e6d80: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e6d80: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e6ff4, size: 0x64
    // 0x5e6ff4: ldr             x1, [SP]
    // 0x5e6ff8: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e6ff8: ldur            w2, [x1, #0x17]
    // 0x5e6ffc: DecompressPointer r2
    //     0x5e6ffc: add             x2, x2, HEAP, lsl #32
    // 0x5e7000: LoadField: r1 = r2->field_f
    //     0x5e7000: ldur            w1, [x2, #0xf]
    // 0x5e7004: DecompressPointer r1
    //     0x5e7004: add             x1, x1, HEAP, lsl #32
    // 0x5e7008: LoadField: r3 = r2->field_13
    //     0x5e7008: ldur            w3, [x2, #0x13]
    // 0x5e700c: DecompressPointer r3
    //     0x5e700c: add             x3, x3, HEAP, lsl #32
    // 0x5e7010: StoreField: r1->field_37 = r3
    //     0x5e7010: stur            w3, [x1, #0x37]
    // 0x5e7014: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x5e7014: ldur            w4, [x2, #0x17]
    // 0x5e7018: DecompressPointer r4
    //     0x5e7018: add             x4, x4, HEAP, lsl #32
    // 0x5e701c: StoreField: r1->field_3b = r4
    //     0x5e701c: stur            w4, [x1, #0x3b]
    // 0x5e7020: LoadField: r5 = r2->field_1b
    //     0x5e7020: ldur            w5, [x2, #0x1b]
    // 0x5e7024: DecompressPointer r5
    //     0x5e7024: add             x5, x5, HEAP, lsl #32
    // 0x5e7028: StoreField: r1->field_3f = r5
    //     0x5e7028: stur            w5, [x1, #0x3f]
    // 0x5e702c: tbnz            w3, #4, #0x5e703c
    // 0x5e7030: r2 = false
    //     0x5e7030: add             x2, NULL, #0x30  ; false
    // 0x5e7034: StoreField: r1->field_13 = r2
    //     0x5e7034: stur            w2, [x1, #0x13]
    // 0x5e7038: b               #0x5e7040
    // 0x5e703c: r2 = false
    //     0x5e703c: add             x2, NULL, #0x30  ; false
    // 0x5e7040: tbnz            w4, #4, #0x5e7048
    // 0x5e7044: ArrayStore: r1[0] = r2  ; List_4
    //     0x5e7044: stur            w2, [x1, #0x17]
    // 0x5e7048: tbnz            w5, #4, #0x5e7050
    // 0x5e704c: StoreField: r1->field_1b = r2
    //     0x5e704c: stur            w2, [x1, #0x1b]
    // 0x5e7050: r0 = Null
    //     0x5e7050: mov             x0, NULL
    // 0x5e7054: ret
    //     0x5e7054: ret             
  }
  _ build(/* No info */) {
    // ** addr: 0x729504, size: 0x108
    // 0x729504: EnterFrame
    //     0x729504: stp             fp, lr, [SP, #-0x10]!
    //     0x729508: mov             fp, SP
    // 0x72950c: AllocStack(0x18)
    //     0x72950c: sub             SP, SP, #0x18
    // 0x729510: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x8 */)
    //     0x729510: stur            x1, [fp, #-8]
    // 0x729514: r1 = 1
    //     0x729514: mov             x1, #1
    // 0x729518: r0 = AllocateContext()
    //     0x729518: bl              #0x927010  ; AllocateContextStub
    // 0x72951c: mov             x1, x0
    // 0x729520: ldur            x0, [fp, #-8]
    // 0x729524: stur            x1, [fp, #-0x10]
    // 0x729528: StoreField: r1->field_f = r0
    //     0x729528: stur            w0, [x1, #0xf]
    // 0x72952c: r0 = Radius()
    //     0x72952c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x729530: d0 = 20.000000
    //     0x729530: fmov            d0, #20.00000000
    // 0x729534: stur            x0, [fp, #-8]
    // 0x729538: StoreField: r0->field_7 = d0
    //     0x729538: stur            d0, [x0, #7]
    // 0x72953c: StoreField: r0->field_f = d0
    //     0x72953c: stur            d0, [x0, #0xf]
    // 0x729540: r0 = BorderRadius()
    //     0x729540: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x729544: mov             x1, x0
    // 0x729548: ldur            x0, [fp, #-8]
    // 0x72954c: stur            x1, [fp, #-0x18]
    // 0x729550: StoreField: r1->field_7 = r0
    //     0x729550: stur            w0, [x1, #7]
    // 0x729554: StoreField: r1->field_b = r0
    //     0x729554: stur            w0, [x1, #0xb]
    // 0x729558: StoreField: r1->field_f = r0
    //     0x729558: stur            w0, [x1, #0xf]
    // 0x72955c: StoreField: r1->field_13 = r0
    //     0x72955c: stur            w0, [x1, #0x13]
    // 0x729560: r0 = RoundedRectangleBorder()
    //     0x729560: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x729564: mov             x3, x0
    // 0x729568: ldur            x0, [fp, #-0x18]
    // 0x72956c: stur            x3, [fp, #-8]
    // 0x729570: StoreField: r3->field_b = r0
    //     0x729570: stur            w0, [x3, #0xb]
    // 0x729574: r0 = Instance_BorderSide
    //     0x729574: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x729578: ldr             x0, [x0, #0xcb8]
    // 0x72957c: StoreField: r3->field_7 = r0
    //     0x72957c: stur            w0, [x3, #7]
    // 0x729580: ldur            x2, [fp, #-0x10]
    // 0x729584: r1 = Function '<anonymous closure>':.
    //     0x729584: add             x1, PP, #0x20, lsl #12  ; [pp+0x201e8] AnonymousClosure: (0x72960c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::build (0x729504)
    //     0x729588: ldr             x1, [x1, #0x1e8]
    // 0x72958c: r0 = AllocateClosure()
    //     0x72958c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x729590: stur            x0, [fp, #-0x10]
    // 0x729594: r0 = Builder()
    //     0x729594: bl              #0x4847d8  ; AllocateBuilderStub -> Builder (size=0x10)
    // 0x729598: mov             x1, x0
    // 0x72959c: ldur            x0, [fp, #-0x10]
    // 0x7295a0: stur            x1, [fp, #-0x18]
    // 0x7295a4: StoreField: r1->field_b = r0
    //     0x7295a4: stur            w0, [x1, #0xb]
    // 0x7295a8: r0 = Padding()
    //     0x7295a8: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x7295ac: mov             x1, x0
    // 0x7295b0: r0 = Instance_EdgeInsets
    //     0x7295b0: add             x0, PP, #0xc, lsl #12  ; [pp+0xc7e8] Obj!EdgeInsets@a0c141
    //     0x7295b4: ldr             x0, [x0, #0x7e8]
    // 0x7295b8: stur            x1, [fp, #-0x10]
    // 0x7295bc: StoreField: r1->field_f = r0
    //     0x7295bc: stur            w0, [x1, #0xf]
    // 0x7295c0: ldur            x0, [fp, #-0x18]
    // 0x7295c4: StoreField: r1->field_b = r0
    //     0x7295c4: stur            w0, [x1, #0xb]
    // 0x7295c8: r0 = Dialog()
    //     0x7295c8: bl              #0x677d50  ; AllocateDialogStub -> Dialog (size=0x44)
    // 0x7295cc: r1 = Instance_Duration
    //     0x7295cc: ldr             x1, [PP, #0x7040]  ; [pp+0x7040] Obj!Duration@a2dca1
    // 0x7295d0: StoreField: r0->field_1b = r1
    //     0x7295d0: stur            w1, [x0, #0x1b]
    // 0x7295d4: r1 = Instance__DecelerateCurve
    //     0x7295d4: ldr             x1, [PP, #0x4fe8]  ; [pp+0x4fe8] Obj!_DecelerateCurve@a0f701
    // 0x7295d8: StoreField: r0->field_1f = r1
    //     0x7295d8: stur            w1, [x0, #0x1f]
    // 0x7295dc: ldur            x1, [fp, #-8]
    // 0x7295e0: StoreField: r0->field_2b = r1
    //     0x7295e0: stur            w1, [x0, #0x2b]
    // 0x7295e4: ldur            x1, [fp, #-0x10]
    // 0x7295e8: StoreField: r0->field_33 = r1
    //     0x7295e8: stur            w1, [x0, #0x33]
    // 0x7295ec: r1 = Instance_SemanticsRole
    //     0x7295ec: add             x1, PP, #0x20, lsl #12  ; [pp+0x201f0] Obj!SemanticsRole@a2d211
    //     0x7295f0: ldr             x1, [x1, #0x1f0]
    // 0x7295f4: StoreField: r0->field_3b = r1
    //     0x7295f4: stur            w1, [x0, #0x3b]
    // 0x7295f8: r1 = false
    //     0x7295f8: add             x1, NULL, #0x30  ; false
    // 0x7295fc: StoreField: r0->field_37 = r1
    //     0x7295fc: stur            w1, [x0, #0x37]
    // 0x729600: LeaveFrame
    //     0x729600: mov             SP, fp
    //     0x729604: ldp             fp, lr, [SP], #0x10
    // 0x729608: ret
    //     0x729608: ret             
  }
  [closure] Widget <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72960c, size: 0x84
    // 0x72960c: EnterFrame
    //     0x72960c: stp             fp, lr, [SP, #-0x10]!
    //     0x729610: mov             fp, SP
    // 0x729614: ldr             x0, [fp, #0x18]
    // 0x729618: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x729618: ldur            w1, [x0, #0x17]
    // 0x72961c: DecompressPointer r1
    //     0x72961c: add             x1, x1, HEAP, lsl #32
    // 0x729620: CheckStackOverflow
    //     0x729620: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x729624: cmp             SP, x16
    //     0x729628: b.ls            #0x729688
    // 0x72962c: LoadField: r0 = r1->field_f
    //     0x72962c: ldur            w0, [x1, #0xf]
    // 0x729630: DecompressPointer r0
    //     0x729630: add             x0, x0, HEAP, lsl #32
    // 0x729634: LoadField: r1 = r0->field_1f
    //     0x729634: ldur            w1, [x0, #0x1f]
    // 0x729638: DecompressPointer r1
    //     0x729638: add             x1, x1, HEAP, lsl #32
    // 0x72963c: tbnz            w1, #4, #0x729654
    // 0x729640: mov             x1, x0
    // 0x729644: r0 = _buildDownloadingState()
    //     0x729644: bl              #0x72c464  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildDownloadingState
    // 0x729648: LeaveFrame
    //     0x729648: mov             SP, fp
    //     0x72964c: ldp             fp, lr, [SP], #0x10
    // 0x729650: ret
    //     0x729650: ret             
    // 0x729654: LoadField: r1 = r0->field_2f
    //     0x729654: ldur            w1, [x0, #0x2f]
    // 0x729658: DecompressPointer r1
    //     0x729658: add             x1, x1, HEAP, lsl #32
    // 0x72965c: tbnz            w1, #4, #0x729674
    // 0x729660: mov             x1, x0
    // 0x729664: r0 = _buildErrorState()
    //     0x729664: bl              #0x72c088  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildErrorState
    // 0x729668: LeaveFrame
    //     0x729668: mov             SP, fp
    //     0x72966c: ldp             fp, lr, [SP], #0x10
    // 0x729670: ret
    //     0x729670: ret             
    // 0x729674: mov             x1, x0
    // 0x729678: r0 = _buildSelectionState()
    //     0x729678: bl              #0x729690  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState
    // 0x72967c: LeaveFrame
    //     0x72967c: mov             SP, fp
    //     0x729680: ldp             fp, lr, [SP], #0x10
    // 0x729684: ret
    //     0x729684: ret             
    // 0x729688: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x729688: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72968c: b               #0x72962c
  }
  _ _buildSelectionState(/* No info */) {
    // ** addr: 0x729690, size: 0x4e8
    // 0x729690: EnterFrame
    //     0x729690: stp             fp, lr, [SP, #-0x10]!
    //     0x729694: mov             fp, SP
    // 0x729698: AllocStack(0x40)
    //     0x729698: sub             SP, SP, #0x40
    // 0x72969c: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x8 */)
    //     0x72969c: stur            x1, [fp, #-8]
    // 0x7296a0: CheckStackOverflow
    //     0x7296a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7296a4: cmp             SP, x16
    //     0x7296a8: b.ls            #0x729b68
    // 0x7296ac: r1 = 1
    //     0x7296ac: mov             x1, #1
    // 0x7296b0: r0 = AllocateContext()
    //     0x7296b0: bl              #0x927010  ; AllocateContextStub
    // 0x7296b4: mov             x2, x0
    // 0x7296b8: ldur            x0, [fp, #-8]
    // 0x7296bc: stur            x2, [fp, #-0x10]
    // 0x7296c0: StoreField: r2->field_f = r0
    //     0x7296c0: stur            w0, [x2, #0xf]
    // 0x7296c4: LoadField: r1 = r0->field_f
    //     0x7296c4: ldur            w1, [x0, #0xf]
    // 0x7296c8: DecompressPointer r1
    //     0x7296c8: add             x1, x1, HEAP, lsl #32
    // 0x7296cc: cmp             w1, NULL
    // 0x7296d0: b.eq            #0x729b70
    // 0x7296d4: r0 = of()
    //     0x7296d4: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x7296d8: LoadField: r1 = r0->field_5b
    //     0x7296d8: ldur            w1, [x0, #0x5b]
    // 0x7296dc: DecompressPointer r1
    //     0x7296dc: add             x1, x1, HEAP, lsl #32
    // 0x7296e0: r0 = LoadClassIdInstr(r1)
    //     0x7296e0: ldur            x0, [x1, #-1]
    //     0x7296e4: ubfx            x0, x0, #0xc, #0x14
    // 0x7296e8: r16 = 0.100000
    //     0x7296e8: add             x16, PP, #0x12, lsl #12  ; [pp+0x121f8] 0.1
    //     0x7296ec: ldr             x16, [x16, #0x1f8]
    // 0x7296f0: str             x16, [SP]
    // 0x7296f4: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x7296f4: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x7296f8: ldr             x4, [x4, #0x198]
    // 0x7296fc: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x7296fc: sub             lr, x0, #0xfe8
    //     0x729700: ldr             lr, [x21, lr, lsl #3]
    //     0x729704: blr             lr
    // 0x729708: stur            x0, [fp, #-0x18]
    // 0x72970c: r0 = BoxDecoration()
    //     0x72970c: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x729710: mov             x2, x0
    // 0x729714: ldur            x0, [fp, #-0x18]
    // 0x729718: stur            x2, [fp, #-0x20]
    // 0x72971c: StoreField: r2->field_7 = r0
    //     0x72971c: stur            w0, [x2, #7]
    // 0x729720: r0 = Instance_BoxShape
    //     0x729720: add             x0, PP, #0x12, lsl #12  ; [pp+0x121a0] Obj!BoxShape@a2a9d1
    //     0x729724: ldr             x0, [x0, #0x1a0]
    // 0x729728: StoreField: r2->field_23 = r0
    //     0x729728: stur            w0, [x2, #0x23]
    // 0x72972c: ldur            x0, [fp, #-8]
    // 0x729730: LoadField: r1 = r0->field_f
    //     0x729730: ldur            w1, [x0, #0xf]
    // 0x729734: DecompressPointer r1
    //     0x729734: add             x1, x1, HEAP, lsl #32
    // 0x729738: cmp             w1, NULL
    // 0x72973c: b.eq            #0x729b74
    // 0x729740: r0 = of()
    //     0x729740: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x729744: LoadField: r1 = r0->field_5b
    //     0x729744: ldur            w1, [x0, #0x5b]
    // 0x729748: DecompressPointer r1
    //     0x729748: add             x1, x1, HEAP, lsl #32
    // 0x72974c: stur            x1, [fp, #-0x18]
    // 0x729750: r0 = Icon()
    //     0x729750: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x729754: mov             x1, x0
    // 0x729758: r0 = Instance_IconData
    //     0x729758: add             x0, PP, #0x20, lsl #12  ; [pp+0x201f8] Obj!IconData@a0a3e1
    //     0x72975c: ldr             x0, [x0, #0x1f8]
    // 0x729760: stur            x1, [fp, #-0x28]
    // 0x729764: StoreField: r1->field_b = r0
    //     0x729764: stur            w0, [x1, #0xb]
    // 0x729768: r0 = 48.000000
    //     0x729768: add             x0, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x72976c: ldr             x0, [x0, #0x948]
    // 0x729770: StoreField: r1->field_f = r0
    //     0x729770: stur            w0, [x1, #0xf]
    // 0x729774: ldur            x0, [fp, #-0x18]
    // 0x729778: StoreField: r1->field_23 = r0
    //     0x729778: stur            w0, [x1, #0x23]
    // 0x72977c: r0 = Container()
    //     0x72977c: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x729780: stur            x0, [fp, #-0x18]
    // 0x729784: r16 = Instance_EdgeInsets
    //     0x729784: add             x16, PP, #0x12, lsl #12  ; [pp+0x12240] Obj!EdgeInsets@a0c1d1
    //     0x729788: ldr             x16, [x16, #0x240]
    // 0x72978c: ldur            lr, [fp, #-0x20]
    // 0x729790: stp             lr, x16, [SP, #8]
    // 0x729794: ldur            x16, [fp, #-0x28]
    // 0x729798: str             x16, [SP]
    // 0x72979c: mov             x1, x0
    // 0x7297a0: r4 = const [0, 0x4, 0x3, 0x1, child, 0x3, decoration, 0x2, padding, 0x1, null]
    //     0x7297a0: add             x4, PP, #0x12, lsl #12  ; [pp+0x121e8] List(11) [0, 0x4, 0x3, 0x1, "child", 0x3, "decoration", 0x2, "padding", 0x1, Null]
    //     0x7297a4: ldr             x4, [x4, #0x1e8]
    // 0x7297a8: r0 = Container()
    //     0x7297a8: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x7297ac: r1 = <Widget>
    //     0x7297ac: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7297b0: r2 = 26
    //     0x7297b0: mov             x2, #0x1a
    // 0x7297b4: r0 = AllocateArray()
    //     0x7297b4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7297b8: mov             x3, x0
    // 0x7297bc: ldur            x0, [fp, #-0x18]
    // 0x7297c0: stur            x3, [fp, #-0x28]
    // 0x7297c4: StoreField: r3->field_f = r0
    //     0x7297c4: stur            w0, [x3, #0xf]
    // 0x7297c8: r16 = Instance_SizedBox
    //     0x7297c8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x7297cc: ldr             x16, [x16, #0x470]
    // 0x7297d0: StoreField: r3->field_13 = r16
    //     0x7297d0: stur            w16, [x3, #0x13]
    // 0x7297d4: r16 = Instance_Text
    //     0x7297d4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20200] Obj!Text@a1cb71
    //     0x7297d8: ldr             x16, [x16, #0x200]
    // 0x7297dc: ArrayStore: r3[0] = r16  ; List_4
    //     0x7297dc: stur            w16, [x3, #0x17]
    // 0x7297e0: r16 = Instance_SizedBox
    //     0x7297e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x7297e4: ldr             x16, [x16, #0x220]
    // 0x7297e8: StoreField: r3->field_1b = r16
    //     0x7297e8: stur            w16, [x3, #0x1b]
    // 0x7297ec: r16 = Instance_Text
    //     0x7297ec: add             x16, PP, #0x20, lsl #12  ; [pp+0x20208] Obj!Text@a1cb21
    //     0x7297f0: ldr             x16, [x16, #0x208]
    // 0x7297f4: StoreField: r3->field_1f = r16
    //     0x7297f4: stur            w16, [x3, #0x1f]
    // 0x7297f8: r16 = Instance_SizedBox
    //     0x7297f8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x7297fc: ldr             x16, [x16, #0x320]
    // 0x729800: StoreField: r3->field_23 = r16
    //     0x729800: stur            w16, [x3, #0x23]
    // 0x729804: ldur            x0, [fp, #-8]
    // 0x729808: LoadField: r5 = r0->field_13
    //     0x729808: ldur            w5, [x0, #0x13]
    // 0x72980c: DecompressPointer r5
    //     0x72980c: add             x5, x5, HEAP, lsl #32
    // 0x729810: stur            x5, [fp, #-0x20]
    // 0x729814: LoadField: r6 = r0->field_37
    //     0x729814: ldur            w6, [x0, #0x37]
    // 0x729818: DecompressPointer r6
    //     0x729818: add             x6, x6, HEAP, lsl #32
    // 0x72981c: ldur            x2, [fp, #-0x10]
    // 0x729820: stur            x6, [fp, #-0x18]
    // 0x729824: r1 = Function '<anonymous closure>':.
    //     0x729824: add             x1, PP, #0x20, lsl #12  ; [pp+0x20210] AnonymousClosure: (0x72bfc4), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x729828: ldr             x1, [x1, #0x210]
    // 0x72982c: r0 = AllocateClosure()
    //     0x72982c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x729830: str             x0, [SP]
    // 0x729834: ldur            x1, [fp, #-8]
    // 0x729838: ldur            x5, [fp, #-0x20]
    // 0x72983c: ldur            x6, [fp, #-0x18]
    // 0x729840: r2 = "Kuran-ı Kerim"
    //     0x729840: add             x2, PP, #0x15, lsl #12  ; [pp+0x15f28] "Kuran-ı Kerim"
    //     0x729844: ldr             x2, [x2, #0xf28]
    // 0x729848: r3 = "604 sayfa"
    //     0x729848: add             x3, PP, #0x20, lsl #12  ; [pp+0x20218] "604 sayfa"
    //     0x72984c: ldr             x3, [x3, #0x218]
    // 0x729850: r7 = Instance_IconData
    //     0x729850: add             x7, PP, #0x20, lsl #12  ; [pp+0x20220] Obj!IconData@a0a3c1
    //     0x729854: ldr             x7, [x7, #0x220]
    // 0x729858: r0 = _buildCheckboxItem()
    //     0x729858: bl              #0x729b78  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildCheckboxItem
    // 0x72985c: ldur            x1, [fp, #-0x28]
    // 0x729860: ArrayStore: r1[6] = r0  ; List_4
    //     0x729860: add             x25, x1, #0x27
    //     0x729864: str             w0, [x25]
    //     0x729868: tbz             w0, #0, #0x729884
    //     0x72986c: ldurb           w16, [x1, #-1]
    //     0x729870: ldurb           w17, [x0, #-1]
    //     0x729874: and             x16, x17, x16, lsr #2
    //     0x729878: tst             x16, HEAP, lsr #32
    //     0x72987c: b.eq            #0x729884
    //     0x729880: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x729884: ldur            x0, [fp, #-0x28]
    // 0x729888: r16 = Instance_SizedBox
    //     0x729888: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x72988c: ldr             x16, [x16, #0x318]
    // 0x729890: StoreField: r0->field_2b = r16
    //     0x729890: stur            w16, [x0, #0x2b]
    // 0x729894: ldur            x3, [fp, #-8]
    // 0x729898: ArrayLoad: r5 = r3[0]  ; List_4
    //     0x729898: ldur            w5, [x3, #0x17]
    // 0x72989c: DecompressPointer r5
    //     0x72989c: add             x5, x5, HEAP, lsl #32
    // 0x7298a0: stur            x5, [fp, #-0x20]
    // 0x7298a4: LoadField: r6 = r3->field_3b
    //     0x7298a4: ldur            w6, [x3, #0x3b]
    // 0x7298a8: DecompressPointer r6
    //     0x7298a8: add             x6, x6, HEAP, lsl #32
    // 0x7298ac: ldur            x2, [fp, #-0x10]
    // 0x7298b0: stur            x6, [fp, #-0x18]
    // 0x7298b4: r1 = Function '<anonymous closure>':.
    //     0x7298b4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20228] AnonymousClosure: (0x72bf00), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x7298b8: ldr             x1, [x1, #0x228]
    // 0x7298bc: r0 = AllocateClosure()
    //     0x7298bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7298c0: str             x0, [SP]
    // 0x7298c4: ldur            x1, [fp, #-8]
    // 0x7298c8: ldur            x5, [fp, #-0x20]
    // 0x7298cc: ldur            x6, [fp, #-0x18]
    // 0x7298d0: r2 = "Say Duaları"
    //     0x7298d0: add             x2, PP, #0x15, lsl #12  ; [pp+0x15f68] "Say Duaları"
    //     0x7298d4: ldr             x2, [x2, #0xf68]
    // 0x7298d8: r3 = "34 resim"
    //     0x7298d8: add             x3, PP, #0x20, lsl #12  ; [pp+0x20230] "34 resim"
    //     0x7298dc: ldr             x3, [x3, #0x230]
    // 0x7298e0: r7 = Instance_IconData
    //     0x7298e0: add             x7, PP, #0x15, lsl #12  ; [pp+0x15d40] Obj!IconData@a0a401
    //     0x7298e4: ldr             x7, [x7, #0xd40]
    // 0x7298e8: r0 = _buildCheckboxItem()
    //     0x7298e8: bl              #0x729b78  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildCheckboxItem
    // 0x7298ec: ldur            x1, [fp, #-0x28]
    // 0x7298f0: ArrayStore: r1[8] = r0  ; List_4
    //     0x7298f0: add             x25, x1, #0x2f
    //     0x7298f4: str             w0, [x25]
    //     0x7298f8: tbz             w0, #0, #0x729914
    //     0x7298fc: ldurb           w16, [x1, #-1]
    //     0x729900: ldurb           w17, [x0, #-1]
    //     0x729904: and             x16, x17, x16, lsr #2
    //     0x729908: tst             x16, HEAP, lsr #32
    //     0x72990c: b.eq            #0x729914
    //     0x729910: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x729914: ldur            x0, [fp, #-0x28]
    // 0x729918: r16 = Instance_SizedBox
    //     0x729918: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x72991c: ldr             x16, [x16, #0x318]
    // 0x729920: StoreField: r0->field_33 = r16
    //     0x729920: stur            w16, [x0, #0x33]
    // 0x729924: ldur            x3, [fp, #-8]
    // 0x729928: LoadField: r5 = r3->field_1b
    //     0x729928: ldur            w5, [x3, #0x1b]
    // 0x72992c: DecompressPointer r5
    //     0x72992c: add             x5, x5, HEAP, lsl #32
    // 0x729930: stur            x5, [fp, #-0x20]
    // 0x729934: LoadField: r6 = r3->field_3f
    //     0x729934: ldur            w6, [x3, #0x3f]
    // 0x729938: DecompressPointer r6
    //     0x729938: add             x6, x6, HEAP, lsl #32
    // 0x72993c: ldur            x2, [fp, #-0x10]
    // 0x729940: stur            x6, [fp, #-0x18]
    // 0x729944: r1 = Function '<anonymous closure>':.
    //     0x729944: add             x1, PP, #0x20, lsl #12  ; [pp+0x20238] AnonymousClosure: (0x72be3c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x729948: ldr             x1, [x1, #0x238]
    // 0x72994c: r0 = AllocateClosure()
    //     0x72994c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x729950: str             x0, [SP]
    // 0x729954: ldur            x1, [fp, #-8]
    // 0x729958: ldur            x5, [fp, #-0x20]
    // 0x72995c: ldur            x6, [fp, #-0x18]
    // 0x729960: r2 = "Tavaf Duaları"
    //     0x729960: add             x2, PP, #0x15, lsl #12  ; [pp+0x15f48] "Tavaf Duaları"
    //     0x729964: ldr             x2, [x2, #0xf48]
    // 0x729968: r3 = "17 resim"
    //     0x729968: add             x3, PP, #0x20, lsl #12  ; [pp+0x20240] "17 resim"
    //     0x72996c: ldr             x3, [x3, #0x240]
    // 0x729970: r7 = Instance_IconData
    //     0x729970: add             x7, PP, #0x20, lsl #12  ; [pp+0x20248] Obj!IconData@a0a3a1
    //     0x729974: ldr             x7, [x7, #0x248]
    // 0x729978: r0 = _buildCheckboxItem()
    //     0x729978: bl              #0x729b78  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildCheckboxItem
    // 0x72997c: ldur            x1, [fp, #-0x28]
    // 0x729980: ArrayStore: r1[10] = r0  ; List_4
    //     0x729980: add             x25, x1, #0x37
    //     0x729984: str             w0, [x25]
    //     0x729988: tbz             w0, #0, #0x7299a4
    //     0x72998c: ldurb           w16, [x1, #-1]
    //     0x729990: ldurb           w17, [x0, #-1]
    //     0x729994: and             x16, x17, x16, lsr #2
    //     0x729998: tst             x16, HEAP, lsr #32
    //     0x72999c: b.eq            #0x7299a4
    //     0x7299a0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7299a4: ldur            x0, [fp, #-0x28]
    // 0x7299a8: r16 = Instance_SizedBox
    //     0x7299a8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x7299ac: ldr             x16, [x16, #0x320]
    // 0x7299b0: StoreField: r0->field_3b = r16
    //     0x7299b0: stur            w16, [x0, #0x3b]
    // 0x7299b4: ldur            x2, [fp, #-0x10]
    // 0x7299b8: r1 = Function '<anonymous closure>':.
    //     0x7299b8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20250] AnonymousClosure: (0x72bdcc), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x7299bc: ldr             x1, [x1, #0x250]
    // 0x7299c0: r0 = AllocateClosure()
    //     0x7299c0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7299c4: stur            x0, [fp, #-8]
    // 0x7299c8: r0 = TextButton()
    //     0x7299c8: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x7299cc: mov             x3, x0
    // 0x7299d0: ldur            x0, [fp, #-8]
    // 0x7299d4: stur            x3, [fp, #-0x18]
    // 0x7299d8: StoreField: r3->field_b = r0
    //     0x7299d8: stur            w0, [x3, #0xb]
    // 0x7299dc: r0 = false
    //     0x7299dc: add             x0, NULL, #0x30  ; false
    // 0x7299e0: StoreField: r3->field_27 = r0
    //     0x7299e0: stur            w0, [x3, #0x27]
    // 0x7299e4: r0 = true
    //     0x7299e4: add             x0, NULL, #0x20  ; true
    // 0x7299e8: StoreField: r3->field_2f = r0
    //     0x7299e8: stur            w0, [x3, #0x2f]
    // 0x7299ec: r0 = Instance_Text
    //     0x7299ec: add             x0, PP, #0x20, lsl #12  ; [pp+0x20258] Obj!Text@a1cad1
    //     0x7299f0: ldr             x0, [x0, #0x258]
    // 0x7299f4: StoreField: r3->field_37 = r0
    //     0x7299f4: stur            w0, [x3, #0x37]
    // 0x7299f8: ldur            x2, [fp, #-0x10]
    // 0x7299fc: r1 = Function '<anonymous closure>':.
    //     0x7299fc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20260] AnonymousClosure: (0x72a06c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x729a00: ldr             x1, [x1, #0x260]
    // 0x729a04: r0 = AllocateClosure()
    //     0x729a04: bl              #0x9273d4  ; AllocateClosureStub
    // 0x729a08: stur            x0, [fp, #-8]
    // 0x729a0c: r0 = Builder()
    //     0x729a0c: bl              #0x4847d8  ; AllocateBuilderStub -> Builder (size=0x10)
    // 0x729a10: mov             x3, x0
    // 0x729a14: ldur            x0, [fp, #-8]
    // 0x729a18: stur            x3, [fp, #-0x10]
    // 0x729a1c: StoreField: r3->field_b = r0
    //     0x729a1c: stur            w0, [x3, #0xb]
    // 0x729a20: r1 = Null
    //     0x729a20: mov             x1, NULL
    // 0x729a24: r2 = 4
    //     0x729a24: mov             x2, #4
    // 0x729a28: r0 = AllocateArray()
    //     0x729a28: bl              #0x9280a0  ; AllocateArrayStub
    // 0x729a2c: mov             x2, x0
    // 0x729a30: ldur            x0, [fp, #-0x18]
    // 0x729a34: stur            x2, [fp, #-8]
    // 0x729a38: StoreField: r2->field_f = r0
    //     0x729a38: stur            w0, [x2, #0xf]
    // 0x729a3c: ldur            x0, [fp, #-0x10]
    // 0x729a40: StoreField: r2->field_13 = r0
    //     0x729a40: stur            w0, [x2, #0x13]
    // 0x729a44: r1 = <Widget>
    //     0x729a44: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x729a48: r0 = AllocateGrowableArray()
    //     0x729a48: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x729a4c: mov             x1, x0
    // 0x729a50: ldur            x0, [fp, #-8]
    // 0x729a54: stur            x1, [fp, #-0x10]
    // 0x729a58: StoreField: r1->field_f = r0
    //     0x729a58: stur            w0, [x1, #0xf]
    // 0x729a5c: r0 = 4
    //     0x729a5c: mov             x0, #4
    // 0x729a60: StoreField: r1->field_b = r0
    //     0x729a60: stur            w0, [x1, #0xb]
    // 0x729a64: r0 = Row()
    //     0x729a64: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x729a68: mov             x1, x0
    // 0x729a6c: r0 = Instance_Axis
    //     0x729a6c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x729a70: StoreField: r1->field_f = r0
    //     0x729a70: stur            w0, [x1, #0xf]
    // 0x729a74: r0 = Instance_MainAxisAlignment
    //     0x729a74: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1ab38] Obj!MainAxisAlignment@a2a611
    //     0x729a78: ldr             x0, [x0, #0xb38]
    // 0x729a7c: StoreField: r1->field_13 = r0
    //     0x729a7c: stur            w0, [x1, #0x13]
    // 0x729a80: r0 = Instance_MainAxisSize
    //     0x729a80: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x729a84: ldr             x0, [x0, #0x330]
    // 0x729a88: ArrayStore: r1[0] = r0  ; List_4
    //     0x729a88: stur            w0, [x1, #0x17]
    // 0x729a8c: r2 = Instance_CrossAxisAlignment
    //     0x729a8c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x729a90: ldr             x2, [x2, #0x338]
    // 0x729a94: StoreField: r1->field_1b = r2
    //     0x729a94: stur            w2, [x1, #0x1b]
    // 0x729a98: r3 = Instance_VerticalDirection
    //     0x729a98: add             x3, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x729a9c: ldr             x3, [x3, #0x340]
    // 0x729aa0: StoreField: r1->field_23 = r3
    //     0x729aa0: stur            w3, [x1, #0x23]
    // 0x729aa4: r4 = Instance_Clip
    //     0x729aa4: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x729aa8: ldr             x4, [x4, #0x348]
    // 0x729aac: StoreField: r1->field_2b = r4
    //     0x729aac: stur            w4, [x1, #0x2b]
    // 0x729ab0: StoreField: r1->field_2f = rZR
    //     0x729ab0: stur            xzr, [x1, #0x2f]
    // 0x729ab4: ldur            x0, [fp, #-0x10]
    // 0x729ab8: StoreField: r1->field_b = r0
    //     0x729ab8: stur            w0, [x1, #0xb]
    // 0x729abc: mov             x0, x1
    // 0x729ac0: ldur            x1, [fp, #-0x28]
    // 0x729ac4: ArrayStore: r1[12] = r0  ; List_4
    //     0x729ac4: add             x25, x1, #0x3f
    //     0x729ac8: str             w0, [x25]
    //     0x729acc: tbz             w0, #0, #0x729ae8
    //     0x729ad0: ldurb           w16, [x1, #-1]
    //     0x729ad4: ldurb           w17, [x0, #-1]
    //     0x729ad8: and             x16, x17, x16, lsr #2
    //     0x729adc: tst             x16, HEAP, lsr #32
    //     0x729ae0: b.eq            #0x729ae8
    //     0x729ae4: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x729ae8: r1 = <Widget>
    //     0x729ae8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x729aec: r0 = AllocateGrowableArray()
    //     0x729aec: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x729af0: mov             x1, x0
    // 0x729af4: ldur            x0, [fp, #-0x28]
    // 0x729af8: stur            x1, [fp, #-8]
    // 0x729afc: StoreField: r1->field_f = r0
    //     0x729afc: stur            w0, [x1, #0xf]
    // 0x729b00: r0 = 26
    //     0x729b00: mov             x0, #0x1a
    // 0x729b04: StoreField: r1->field_b = r0
    //     0x729b04: stur            w0, [x1, #0xb]
    // 0x729b08: r0 = Column()
    //     0x729b08: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x729b0c: r1 = Instance_Axis
    //     0x729b0c: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x729b10: StoreField: r0->field_f = r1
    //     0x729b10: stur            w1, [x0, #0xf]
    // 0x729b14: r1 = Instance_MainAxisAlignment
    //     0x729b14: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x729b18: ldr             x1, [x1, #0x230]
    // 0x729b1c: StoreField: r0->field_13 = r1
    //     0x729b1c: stur            w1, [x0, #0x13]
    // 0x729b20: r1 = Instance_MainAxisSize
    //     0x729b20: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x729b24: ldr             x1, [x1, #0xb60]
    // 0x729b28: ArrayStore: r0[0] = r1  ; List_4
    //     0x729b28: stur            w1, [x0, #0x17]
    // 0x729b2c: r1 = Instance_CrossAxisAlignment
    //     0x729b2c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x729b30: ldr             x1, [x1, #0x338]
    // 0x729b34: StoreField: r0->field_1b = r1
    //     0x729b34: stur            w1, [x0, #0x1b]
    // 0x729b38: r1 = Instance_VerticalDirection
    //     0x729b38: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x729b3c: ldr             x1, [x1, #0x340]
    // 0x729b40: StoreField: r0->field_23 = r1
    //     0x729b40: stur            w1, [x0, #0x23]
    // 0x729b44: r1 = Instance_Clip
    //     0x729b44: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x729b48: ldr             x1, [x1, #0x348]
    // 0x729b4c: StoreField: r0->field_2b = r1
    //     0x729b4c: stur            w1, [x0, #0x2b]
    // 0x729b50: StoreField: r0->field_2f = rZR
    //     0x729b50: stur            xzr, [x0, #0x2f]
    // 0x729b54: ldur            x1, [fp, #-8]
    // 0x729b58: StoreField: r0->field_b = r1
    //     0x729b58: stur            w1, [x0, #0xb]
    // 0x729b5c: LeaveFrame
    //     0x729b5c: mov             SP, fp
    //     0x729b60: ldp             fp, lr, [SP], #0x10
    // 0x729b64: ret
    //     0x729b64: ret             
    // 0x729b68: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x729b68: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x729b6c: b               #0x7296ac
    // 0x729b70: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x729b70: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x729b74: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x729b74: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildCheckboxItem(/* No info */) {
    // ** addr: 0x729b78, size: 0x498
    // 0x729b78: EnterFrame
    //     0x729b78: stp             fp, lr, [SP, #-0x10]!
    //     0x729b7c: mov             fp, SP
    // 0x729b80: AllocStack(0x60)
    //     0x729b80: sub             SP, SP, #0x60
    // 0x729b84: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */, dynamic _ /* r3 => r3, fp-0x18 */, dynamic _ /* r5 => r5, fp-0x20 */, dynamic _ /* r6 => r6, fp-0x28 */, dynamic _ /* r7 => r7, fp-0x30 */)
    //     0x729b84: stur            x1, [fp, #-8]
    //     0x729b88: stur            x2, [fp, #-0x10]
    //     0x729b8c: stur            x3, [fp, #-0x18]
    //     0x729b90: stur            x5, [fp, #-0x20]
    //     0x729b94: stur            x6, [fp, #-0x28]
    //     0x729b98: stur            x7, [fp, #-0x30]
    // 0x729b9c: CheckStackOverflow
    //     0x729b9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x729ba0: cmp             SP, x16
    //     0x729ba4: b.ls            #0x729fe8
    // 0x729ba8: r1 = 2
    //     0x729ba8: mov             x1, #2
    // 0x729bac: r0 = AllocateContext()
    //     0x729bac: bl              #0x927010  ; AllocateContextStub
    // 0x729bb0: mov             x3, x0
    // 0x729bb4: ldur            x0, [fp, #-0x20]
    // 0x729bb8: stur            x3, [fp, #-0x38]
    // 0x729bbc: StoreField: r3->field_f = r0
    //     0x729bbc: stur            w0, [x3, #0xf]
    // 0x729bc0: ldr             x1, [fp, #0x10]
    // 0x729bc4: StoreField: r3->field_13 = r1
    //     0x729bc4: stur            w1, [x3, #0x13]
    // 0x729bc8: ldur            x4, [fp, #-0x28]
    // 0x729bcc: tbnz            w4, #4, #0x729bf0
    // 0x729bd0: r1 = _ConstMap len:10
    //     0x729bd0: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x729bd4: ldr             x1, [x1, #0x918]
    // 0x729bd8: r2 = 600
    //     0x729bd8: mov             x2, #0x258
    // 0x729bdc: r0 = []()
    //     0x729bdc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x729be0: cmp             w0, NULL
    // 0x729be4: b.eq            #0x729ff0
    // 0x729be8: mov             x1, x0
    // 0x729bec: b               #0x729c34
    // 0x729bf0: tbnz            w0, #4, #0x729c1c
    // 0x729bf4: ldur            x0, [fp, #-8]
    // 0x729bf8: LoadField: r1 = r0->field_f
    //     0x729bf8: ldur            w1, [x0, #0xf]
    // 0x729bfc: DecompressPointer r1
    //     0x729bfc: add             x1, x1, HEAP, lsl #32
    // 0x729c00: cmp             w1, NULL
    // 0x729c04: b.eq            #0x729ff4
    // 0x729c08: r0 = of()
    //     0x729c08: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x729c0c: LoadField: r1 = r0->field_5b
    //     0x729c0c: ldur            w1, [x0, #0x5b]
    // 0x729c10: DecompressPointer r1
    //     0x729c10: add             x1, x1, HEAP, lsl #32
    // 0x729c14: mov             x0, x1
    // 0x729c18: b               #0x729c30
    // 0x729c1c: r1 = _ConstMap len:12
    //     0x729c1c: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x729c20: r2 = 600
    //     0x729c20: mov             x2, #0x258
    // 0x729c24: r0 = []()
    //     0x729c24: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x729c28: cmp             w0, NULL
    // 0x729c2c: b.eq            #0x729ff8
    // 0x729c30: mov             x1, x0
    // 0x729c34: ldur            x0, [fp, #-0x28]
    // 0x729c38: str             x1, [SP]
    // 0x729c3c: r1 = Null
    //     0x729c3c: mov             x1, NULL
    // 0x729c40: r4 = const [0, 0x2, 0x1, 0x1, color, 0x1, null]
    //     0x729c40: add             x4, PP, #0xc, lsl #12  ; [pp+0xc788] List(7) [0, 0x2, 0x1, 0x1, "color", 0x1, Null]
    //     0x729c44: ldr             x4, [x4, #0x788]
    // 0x729c48: r0 = Border.all()
    //     0x729c48: bl              #0x6ccb34  ; [package:flutter/src/painting/box_border.dart] Border::Border.all
    // 0x729c4c: stur            x0, [fp, #-0x20]
    // 0x729c50: r0 = Radius()
    //     0x729c50: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x729c54: d0 = 12.000000
    //     0x729c54: fmov            d0, #12.00000000
    // 0x729c58: stur            x0, [fp, #-0x40]
    // 0x729c5c: StoreField: r0->field_7 = d0
    //     0x729c5c: stur            d0, [x0, #7]
    // 0x729c60: StoreField: r0->field_f = d0
    //     0x729c60: stur            d0, [x0, #0xf]
    // 0x729c64: r0 = BorderRadius()
    //     0x729c64: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x729c68: mov             x3, x0
    // 0x729c6c: ldur            x0, [fp, #-0x40]
    // 0x729c70: stur            x3, [fp, #-0x48]
    // 0x729c74: StoreField: r3->field_7 = r0
    //     0x729c74: stur            w0, [x3, #7]
    // 0x729c78: StoreField: r3->field_b = r0
    //     0x729c78: stur            w0, [x3, #0xb]
    // 0x729c7c: StoreField: r3->field_f = r0
    //     0x729c7c: stur            w0, [x3, #0xf]
    // 0x729c80: StoreField: r3->field_13 = r0
    //     0x729c80: stur            w0, [x3, #0x13]
    // 0x729c84: ldur            x0, [fp, #-0x28]
    // 0x729c88: tbnz            w0, #4, #0x729cac
    // 0x729c8c: r1 = _ConstMap len:10
    //     0x729c8c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x729c90: ldr             x1, [x1, #0x918]
    // 0x729c94: r2 = 100
    //     0x729c94: mov             x2, #0x64
    // 0x729c98: r0 = []()
    //     0x729c98: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x729c9c: cmp             w0, NULL
    // 0x729ca0: b.eq            #0x729ffc
    // 0x729ca4: mov             x3, x0
    // 0x729ca8: b               #0x729cb0
    // 0x729cac: r3 = Null
    //     0x729cac: mov             x3, NULL
    // 0x729cb0: ldur            x1, [fp, #-0x28]
    // 0x729cb4: ldur            x2, [fp, #-0x20]
    // 0x729cb8: ldur            x0, [fp, #-0x48]
    // 0x729cbc: stur            x3, [fp, #-0x40]
    // 0x729cc0: r0 = BoxDecoration()
    //     0x729cc0: bl              #0x5669b8  ; AllocateBoxDecorationStub -> BoxDecoration (size=0x28)
    // 0x729cc4: mov             x2, x0
    // 0x729cc8: ldur            x0, [fp, #-0x40]
    // 0x729ccc: stur            x2, [fp, #-0x50]
    // 0x729cd0: StoreField: r2->field_7 = r0
    //     0x729cd0: stur            w0, [x2, #7]
    // 0x729cd4: ldur            x0, [fp, #-0x20]
    // 0x729cd8: StoreField: r2->field_f = r0
    //     0x729cd8: stur            w0, [x2, #0xf]
    // 0x729cdc: ldur            x0, [fp, #-0x48]
    // 0x729ce0: StoreField: r2->field_13 = r0
    //     0x729ce0: stur            w0, [x2, #0x13]
    // 0x729ce4: r0 = Instance_BoxShape
    //     0x729ce4: add             x0, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x729ce8: ldr             x0, [x0, #0x1c8]
    // 0x729cec: StoreField: r2->field_23 = r0
    //     0x729cec: stur            w0, [x2, #0x23]
    // 0x729cf0: ldur            x0, [fp, #-0x28]
    // 0x729cf4: tbnz            w0, #4, #0x729d04
    // 0x729cf8: r2 = Instance_MaterialColor
    //     0x729cf8: add             x2, PP, #0x12, lsl #12  ; [pp+0x125d8] Obj!MaterialColor@a25ce1
    //     0x729cfc: ldr             x2, [x2, #0x5d8]
    // 0x729d00: b               #0x729d50
    // 0x729d04: ldur            x3, [fp, #-0x38]
    // 0x729d08: LoadField: r1 = r3->field_f
    //     0x729d08: ldur            w1, [x3, #0xf]
    // 0x729d0c: DecompressPointer r1
    //     0x729d0c: add             x1, x1, HEAP, lsl #32
    // 0x729d10: tbnz            w1, #4, #0x729d40
    // 0x729d14: ldur            x1, [fp, #-8]
    // 0x729d18: LoadField: r4 = r1->field_f
    //     0x729d18: ldur            w4, [x1, #0xf]
    // 0x729d1c: DecompressPointer r4
    //     0x729d1c: add             x4, x4, HEAP, lsl #32
    // 0x729d20: cmp             w4, NULL
    // 0x729d24: b.eq            #0x72a000
    // 0x729d28: mov             x1, x4
    // 0x729d2c: r0 = of()
    //     0x729d2c: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x729d30: LoadField: r1 = r0->field_5b
    //     0x729d30: ldur            w1, [x0, #0x5b]
    // 0x729d34: DecompressPointer r1
    //     0x729d34: add             x1, x1, HEAP, lsl #32
    // 0x729d38: mov             x0, x1
    // 0x729d3c: b               #0x729d48
    // 0x729d40: r0 = Instance_MaterialColor
    //     0x729d40: add             x0, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x729d44: ldr             x0, [x0, #0xbc8]
    // 0x729d48: mov             x2, x0
    // 0x729d4c: ldur            x0, [fp, #-0x28]
    // 0x729d50: ldur            x1, [fp, #-0x30]
    // 0x729d54: stur            x2, [fp, #-8]
    // 0x729d58: r0 = Icon()
    //     0x729d58: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x729d5c: mov             x3, x0
    // 0x729d60: ldur            x0, [fp, #-0x30]
    // 0x729d64: stur            x3, [fp, #-0x20]
    // 0x729d68: StoreField: r3->field_b = r0
    //     0x729d68: stur            w0, [x3, #0xb]
    // 0x729d6c: ldur            x0, [fp, #-8]
    // 0x729d70: StoreField: r3->field_23 = r0
    //     0x729d70: stur            w0, [x3, #0x23]
    // 0x729d74: ldur            x0, [fp, #-0x28]
    // 0x729d78: tbnz            w0, #4, #0x729d9c
    // 0x729d7c: r1 = _ConstMap len:10
    //     0x729d7c: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x729d80: ldr             x1, [x1, #0x918]
    // 0x729d84: r2 = 1400
    //     0x729d84: mov             x2, #0x578
    // 0x729d88: r0 = []()
    //     0x729d88: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x729d8c: cmp             w0, NULL
    // 0x729d90: b.eq            #0x72a004
    // 0x729d94: mov             x2, x0
    // 0x729d98: b               #0x729da0
    // 0x729d9c: r2 = Null
    //     0x729d9c: mov             x2, NULL
    // 0x729da0: ldur            x1, [fp, #-0x10]
    // 0x729da4: ldur            x0, [fp, #-0x28]
    // 0x729da8: stur            x2, [fp, #-8]
    // 0x729dac: r0 = TextStyle()
    //     0x729dac: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x729db0: mov             x1, x0
    // 0x729db4: r0 = true
    //     0x729db4: add             x0, NULL, #0x20  ; true
    // 0x729db8: stur            x1, [fp, #-0x30]
    // 0x729dbc: StoreField: r1->field_7 = r0
    //     0x729dbc: stur            w0, [x1, #7]
    // 0x729dc0: ldur            x2, [fp, #-8]
    // 0x729dc4: StoreField: r1->field_b = r2
    //     0x729dc4: stur            w2, [x1, #0xb]
    // 0x729dc8: r2 = Instance_FontWeight
    //     0x729dc8: add             x2, PP, #0x13, lsl #12  ; [pp+0x13990] Obj!FontWeight@a21061
    //     0x729dcc: ldr             x2, [x2, #0x990]
    // 0x729dd0: StoreField: r1->field_23 = r2
    //     0x729dd0: stur            w2, [x1, #0x23]
    // 0x729dd4: r0 = Text()
    //     0x729dd4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x729dd8: mov             x3, x0
    // 0x729ddc: ldur            x0, [fp, #-0x10]
    // 0x729de0: stur            x3, [fp, #-0x40]
    // 0x729de4: StoreField: r3->field_b = r0
    //     0x729de4: stur            w0, [x3, #0xb]
    // 0x729de8: ldur            x0, [fp, #-0x30]
    // 0x729dec: StoreField: r3->field_13 = r0
    //     0x729dec: stur            w0, [x3, #0x13]
    // 0x729df0: ldur            x0, [fp, #-0x28]
    // 0x729df4: tbnz            w0, #4, #0x729e04
    // 0x729df8: r4 = "İndirildi ✓"
    //     0x729df8: add             x4, PP, #0x20, lsl #12  ; [pp+0x203b0] "İndirildi ✓"
    //     0x729dfc: ldr             x4, [x4, #0x3b0]
    // 0x729e00: b               #0x729e08
    // 0x729e04: ldur            x4, [fp, #-0x18]
    // 0x729e08: stur            x4, [fp, #-8]
    // 0x729e0c: tbnz            w0, #4, #0x729e30
    // 0x729e10: r1 = _ConstMap len:10
    //     0x729e10: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x729e14: ldr             x1, [x1, #0x918]
    // 0x729e18: r2 = 1200
    //     0x729e18: mov             x2, #0x4b0
    // 0x729e1c: r0 = []()
    //     0x729e1c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x729e20: cmp             w0, NULL
    // 0x729e24: b.eq            #0x72a008
    // 0x729e28: mov             x2, x0
    // 0x729e2c: b               #0x729e38
    // 0x729e30: r2 = Instance_MaterialColor
    //     0x729e30: add             x2, PP, #0x11, lsl #12  ; [pp+0x11bc8] Obj!MaterialColor@a25ae1
    //     0x729e34: ldr             x2, [x2, #0xbc8]
    // 0x729e38: ldur            x0, [fp, #-0x28]
    // 0x729e3c: ldur            x1, [fp, #-8]
    // 0x729e40: stur            x2, [fp, #-0x10]
    // 0x729e44: r0 = TextStyle()
    //     0x729e44: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x729e48: mov             x1, x0
    // 0x729e4c: r0 = true
    //     0x729e4c: add             x0, NULL, #0x20  ; true
    // 0x729e50: stur            x1, [fp, #-0x18]
    // 0x729e54: StoreField: r1->field_7 = r0
    //     0x729e54: stur            w0, [x1, #7]
    // 0x729e58: ldur            x2, [fp, #-0x10]
    // 0x729e5c: StoreField: r1->field_b = r2
    //     0x729e5c: stur            w2, [x1, #0xb]
    // 0x729e60: r2 = 12.000000
    //     0x729e60: add             x2, PP, #0x13, lsl #12  ; [pp+0x13ae0] 12
    //     0x729e64: ldr             x2, [x2, #0xae0]
    // 0x729e68: StoreField: r1->field_1f = r2
    //     0x729e68: stur            w2, [x1, #0x1f]
    // 0x729e6c: r0 = Text()
    //     0x729e6c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x729e70: mov             x3, x0
    // 0x729e74: ldur            x0, [fp, #-8]
    // 0x729e78: stur            x3, [fp, #-0x10]
    // 0x729e7c: StoreField: r3->field_b = r0
    //     0x729e7c: stur            w0, [x3, #0xb]
    // 0x729e80: ldur            x0, [fp, #-0x18]
    // 0x729e84: StoreField: r3->field_13 = r0
    //     0x729e84: stur            w0, [x3, #0x13]
    // 0x729e88: ldur            x0, [fp, #-0x28]
    // 0x729e8c: tbnz            w0, #4, #0x729ed4
    // 0x729e90: r1 = _ConstMap len:10
    //     0x729e90: add             x1, PP, #0x14, lsl #12  ; [pp+0x14918] Map<int, Color>(10)
    //     0x729e94: ldr             x1, [x1, #0x918]
    // 0x729e98: r2 = 1200
    //     0x729e98: mov             x2, #0x4b0
    // 0x729e9c: r0 = []()
    //     0x729e9c: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x729ea0: stur            x0, [fp, #-8]
    // 0x729ea4: cmp             w0, NULL
    // 0x729ea8: b.eq            #0x72a00c
    // 0x729eac: r0 = Icon()
    //     0x729eac: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x729eb0: mov             x1, x0
    // 0x729eb4: r0 = Instance_IconData
    //     0x729eb4: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1a330] Obj!IconData@a0a041
    //     0x729eb8: ldr             x0, [x0, #0x330]
    // 0x729ebc: StoreField: r1->field_b = r0
    //     0x729ebc: stur            w0, [x1, #0xb]
    // 0x729ec0: ldur            x0, [fp, #-8]
    // 0x729ec4: StoreField: r1->field_23 = r0
    //     0x729ec4: stur            w0, [x1, #0x23]
    // 0x729ec8: mov             x3, x1
    // 0x729ecc: r0 = false
    //     0x729ecc: add             x0, NULL, #0x30  ; false
    // 0x729ed0: b               #0x729f28
    // 0x729ed4: ldur            x2, [fp, #-0x38]
    // 0x729ed8: LoadField: r0 = r2->field_13
    //     0x729ed8: ldur            w0, [x2, #0x13]
    // 0x729edc: DecompressPointer r0
    //     0x729edc: add             x0, x0, HEAP, lsl #32
    // 0x729ee0: stur            x0, [fp, #-0x18]
    // 0x729ee4: LoadField: r1 = r2->field_f
    //     0x729ee4: ldur            w1, [x2, #0xf]
    // 0x729ee8: DecompressPointer r1
    //     0x729ee8: add             x1, x1, HEAP, lsl #32
    // 0x729eec: stur            x1, [fp, #-8]
    // 0x729ef0: r0 = Checkbox()
    //     0x729ef0: bl              #0x6f8efc  ; AllocateCheckboxStub -> Checkbox (size=0x5c)
    // 0x729ef4: mov             x1, x0
    // 0x729ef8: ldur            x0, [fp, #-8]
    // 0x729efc: StoreField: r1->field_b = r0
    //     0x729efc: stur            w0, [x1, #0xb]
    // 0x729f00: r0 = false
    //     0x729f00: add             x0, NULL, #0x30  ; false
    // 0x729f04: StoreField: r1->field_23 = r0
    //     0x729f04: stur            w0, [x1, #0x23]
    // 0x729f08: ldur            x2, [fp, #-0x18]
    // 0x729f0c: StoreField: r1->field_f = r2
    //     0x729f0c: stur            w2, [x1, #0xf]
    // 0x729f10: StoreField: r1->field_43 = r0
    //     0x729f10: stur            w0, [x1, #0x43]
    // 0x729f14: StoreField: r1->field_4f = r0
    //     0x729f14: stur            w0, [x1, #0x4f]
    // 0x729f18: r2 = Instance__CheckboxType
    //     0x729f18: add             x2, PP, #0x18, lsl #12  ; [pp+0x186d0] Obj!_CheckboxType@a2bc91
    //     0x729f1c: ldr             x2, [x2, #0x6d0]
    // 0x729f20: StoreField: r1->field_57 = r2
    //     0x729f20: stur            w2, [x1, #0x57]
    // 0x729f24: mov             x3, x1
    // 0x729f28: ldur            x1, [fp, #-0x28]
    // 0x729f2c: stur            x3, [fp, #-8]
    // 0x729f30: tbnz            w1, #4, #0x729f40
    // 0x729f34: mov             x0, x3
    // 0x729f38: r4 = Null
    //     0x729f38: mov             x4, NULL
    // 0x729f3c: b               #0x729f58
    // 0x729f40: ldur            x2, [fp, #-0x38]
    // 0x729f44: r1 = Function '<anonymous closure>':.
    //     0x729f44: add             x1, PP, #0x20, lsl #12  ; [pp+0x203b8] AnonymousClosure: (0x72a010), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildCheckboxItem (0x729b78)
    //     0x729f48: ldr             x1, [x1, #0x3b8]
    // 0x729f4c: r0 = AllocateClosure()
    //     0x729f4c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x729f50: mov             x4, x0
    // 0x729f54: ldur            x0, [fp, #-8]
    // 0x729f58: ldur            x3, [fp, #-0x20]
    // 0x729f5c: ldur            x2, [fp, #-0x40]
    // 0x729f60: ldur            x1, [fp, #-0x10]
    // 0x729f64: stur            x4, [fp, #-0x18]
    // 0x729f68: r0 = ListTile()
    //     0x729f68: bl              #0x680240  ; AllocateListTileStub -> ListTile (size=0x9c)
    // 0x729f6c: mov             x1, x0
    // 0x729f70: ldur            x0, [fp, #-0x20]
    // 0x729f74: stur            x1, [fp, #-0x28]
    // 0x729f78: StoreField: r1->field_b = r0
    //     0x729f78: stur            w0, [x1, #0xb]
    // 0x729f7c: ldur            x0, [fp, #-0x40]
    // 0x729f80: StoreField: r1->field_f = r0
    //     0x729f80: stur            w0, [x1, #0xf]
    // 0x729f84: ldur            x0, [fp, #-0x10]
    // 0x729f88: StoreField: r1->field_13 = r0
    //     0x729f88: stur            w0, [x1, #0x13]
    // 0x729f8c: ldur            x0, [fp, #-8]
    // 0x729f90: ArrayStore: r1[0] = r0  ; List_4
    //     0x729f90: stur            w0, [x1, #0x17]
    // 0x729f94: r0 = true
    //     0x729f94: add             x0, NULL, #0x20  ; true
    // 0x729f98: StoreField: r1->field_4b = r0
    //     0x729f98: stur            w0, [x1, #0x4b]
    // 0x729f9c: ldur            x2, [fp, #-0x18]
    // 0x729fa0: StoreField: r1->field_4f = r2
    //     0x729fa0: stur            w2, [x1, #0x4f]
    // 0x729fa4: r2 = false
    //     0x729fa4: add             x2, NULL, #0x30  ; false
    // 0x729fa8: StoreField: r1->field_5f = r2
    //     0x729fa8: stur            w2, [x1, #0x5f]
    // 0x729fac: StoreField: r1->field_73 = r2
    //     0x729fac: stur            w2, [x1, #0x73]
    // 0x729fb0: StoreField: r1->field_93 = r0
    //     0x729fb0: stur            w0, [x1, #0x93]
    // 0x729fb4: r0 = Container()
    //     0x729fb4: bl              #0x650a8c  ; AllocateContainerStub -> Container (size=0x34)
    // 0x729fb8: stur            x0, [fp, #-8]
    // 0x729fbc: ldur            x16, [fp, #-0x50]
    // 0x729fc0: ldur            lr, [fp, #-0x28]
    // 0x729fc4: stp             lr, x16, [SP]
    // 0x729fc8: mov             x1, x0
    // 0x729fcc: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, decoration, 0x1, null]
    //     0x729fcc: add             x4, PP, #0x14, lsl #12  ; [pp+0x14fa8] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "decoration", 0x1, Null]
    //     0x729fd0: ldr             x4, [x4, #0xfa8]
    // 0x729fd4: r0 = Container()
    //     0x729fd4: bl              #0x651920  ; [package:flutter/src/widgets/container.dart] Container::Container
    // 0x729fd8: ldur            x0, [fp, #-8]
    // 0x729fdc: LeaveFrame
    //     0x729fdc: mov             SP, fp
    //     0x729fe0: ldp             fp, lr, [SP], #0x10
    // 0x729fe4: ret
    //     0x729fe4: ret             
    // 0x729fe8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x729fe8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x729fec: b               #0x729ba8
    // 0x729ff0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x729ff0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x729ff4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x729ff4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x729ff8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x729ff8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x729ffc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x729ffc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72a000: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a000: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72a004: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a004: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72a008: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a008: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72a00c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a00c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72a010, size: 0x5c
    // 0x72a010: EnterFrame
    //     0x72a010: stp             fp, lr, [SP, #-0x10]!
    //     0x72a014: mov             fp, SP
    // 0x72a018: AllocStack(0x10)
    //     0x72a018: sub             SP, SP, #0x10
    // 0x72a01c: SetupParameters([dynamic _ /* r0 */])
    //     0x72a01c: ldr             x0, [fp, #0x10]
    //     0x72a020: ldur            w1, [x0, #0x17]
    //     0x72a024: add             x1, x1, HEAP, lsl #32
    // 0x72a028: CheckStackOverflow
    //     0x72a028: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a02c: cmp             SP, x16
    //     0x72a030: b.ls            #0x72a064
    // 0x72a034: LoadField: r0 = r1->field_13
    //     0x72a034: ldur            w0, [x1, #0x13]
    // 0x72a038: DecompressPointer r0
    //     0x72a038: add             x0, x0, HEAP, lsl #32
    // 0x72a03c: LoadField: r2 = r1->field_f
    //     0x72a03c: ldur            w2, [x1, #0xf]
    // 0x72a040: DecompressPointer r2
    //     0x72a040: add             x2, x2, HEAP, lsl #32
    // 0x72a044: eor             x1, x2, #0x10
    // 0x72a048: stp             x1, x0, [SP]
    // 0x72a04c: ClosureCall
    //     0x72a04c: ldr             x4, [PP, #0x330]  ; [pp+0x330] List(5) [0, 0x2, 0x2, 0x2, Null]
    //     0x72a050: ldur            x2, [x0, #0x1f]
    //     0x72a054: blr             x2
    // 0x72a058: LeaveFrame
    //     0x72a058: mov             SP, fp
    //     0x72a05c: ldp             fp, lr, [SP], #0x10
    // 0x72a060: ret
    //     0x72a060: ret             
    // 0x72a064: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72a064: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72a068: b               #0x72a034
  }
  [closure] ElevatedButton <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72a06c, size: 0xf0
    // 0x72a06c: EnterFrame
    //     0x72a06c: stp             fp, lr, [SP, #-0x10]!
    //     0x72a070: mov             fp, SP
    // 0x72a074: AllocStack(0x18)
    //     0x72a074: sub             SP, SP, #0x18
    // 0x72a078: SetupParameters([dynamic _ /* r0 */])
    //     0x72a078: ldr             x0, [fp, #0x18]
    //     0x72a07c: ldur            w1, [x0, #0x17]
    //     0x72a080: add             x1, x1, HEAP, lsl #32
    // 0x72a084: CheckStackOverflow
    //     0x72a084: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a088: cmp             SP, x16
    //     0x72a08c: b.ls            #0x72a154
    // 0x72a090: LoadField: r2 = r1->field_f
    //     0x72a090: ldur            w2, [x1, #0xf]
    // 0x72a094: DecompressPointer r2
    //     0x72a094: add             x2, x2, HEAP, lsl #32
    // 0x72a098: LoadField: r0 = r2->field_13
    //     0x72a098: ldur            w0, [x2, #0x13]
    // 0x72a09c: DecompressPointer r0
    //     0x72a09c: add             x0, x0, HEAP, lsl #32
    // 0x72a0a0: tbnz            w0, #4, #0x72a0b0
    // 0x72a0a4: LoadField: r0 = r2->field_37
    //     0x72a0a4: ldur            w0, [x2, #0x37]
    // 0x72a0a8: DecompressPointer r0
    //     0x72a0a8: add             x0, x0, HEAP, lsl #32
    // 0x72a0ac: tbnz            w0, #4, #0x72a0e4
    // 0x72a0b0: ArrayLoad: r0 = r2[0]  ; List_4
    //     0x72a0b0: ldur            w0, [x2, #0x17]
    // 0x72a0b4: DecompressPointer r0
    //     0x72a0b4: add             x0, x0, HEAP, lsl #32
    // 0x72a0b8: tbnz            w0, #4, #0x72a0c8
    // 0x72a0bc: LoadField: r0 = r2->field_3b
    //     0x72a0bc: ldur            w0, [x2, #0x3b]
    // 0x72a0c0: DecompressPointer r0
    //     0x72a0c0: add             x0, x0, HEAP, lsl #32
    // 0x72a0c4: tbnz            w0, #4, #0x72a0e4
    // 0x72a0c8: LoadField: r0 = r2->field_1b
    //     0x72a0c8: ldur            w0, [x2, #0x1b]
    // 0x72a0cc: DecompressPointer r0
    //     0x72a0cc: add             x0, x0, HEAP, lsl #32
    // 0x72a0d0: tbnz            w0, #4, #0x72a0f8
    // 0x72a0d4: LoadField: r0 = r2->field_3f
    //     0x72a0d4: ldur            w0, [x2, #0x3f]
    // 0x72a0d8: DecompressPointer r0
    //     0x72a0d8: add             x0, x0, HEAP, lsl #32
    // 0x72a0dc: eor             x1, x0, #0x10
    // 0x72a0e0: tbnz            w1, #4, #0x72a0f8
    // 0x72a0e4: r1 = Function '_startDownload@1021352155':.
    //     0x72a0e4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20268] AnonymousClosure: (0x72a15c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a0e8: ldr             x1, [x1, #0x268]
    // 0x72a0ec: r0 = AllocateClosure()
    //     0x72a0ec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a0f0: mov             x5, x0
    // 0x72a0f4: b               #0x72a0fc
    // 0x72a0f8: r5 = Null
    //     0x72a0f8: mov             x5, NULL
    // 0x72a0fc: stur            x5, [fp, #-8]
    // 0x72a100: r16 = Instance_EdgeInsets
    //     0x72a100: add             x16, PP, #0x11, lsl #12  ; [pp+0x11ba8] Obj!EdgeInsets@a0c651
    //     0x72a104: ldr             x16, [x16, #0xba8]
    // 0x72a108: str             x16, [SP]
    // 0x72a10c: r4 = const [0, 0x1, 0x1, 0, padding, 0, null]
    //     0x72a10c: add             x4, PP, #0x1f, lsl #12  ; [pp+0x1ffa8] List(7) [0, 0x1, 0x1, 0, "padding", 0, Null]
    //     0x72a110: ldr             x4, [x4, #0xfa8]
    // 0x72a114: r0 = styleFrom()
    //     0x72a114: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x72a118: stur            x0, [fp, #-0x10]
    // 0x72a11c: r0 = _ElevatedButtonWithIcon()
    //     0x72a11c: bl              #0x6d5508  ; Allocate_ElevatedButtonWithIconStub -> _ElevatedButtonWithIcon (size=0x3c)
    // 0x72a120: mov             x1, x0
    // 0x72a124: ldur            x5, [fp, #-8]
    // 0x72a128: ldur            x6, [fp, #-0x10]
    // 0x72a12c: r2 = Instance_Icon
    //     0x72a12c: add             x2, PP, #0x17, lsl #12  ; [pp+0x179d8] Obj!Icon@a1e8f1
    //     0x72a130: ldr             x2, [x2, #0x9d8]
    // 0x72a134: r3 = Instance_Text
    //     0x72a134: add             x3, PP, #0x1f, lsl #12  ; [pp+0x1ffc0] Obj!Text@a1c761
    //     0x72a138: ldr             x3, [x3, #0xfc0]
    // 0x72a13c: stur            x0, [fp, #-8]
    // 0x72a140: r0 = _ElevatedButtonWithIcon()
    //     0x72a140: bl              #0x6d5420  ; [package:flutter/src/material/elevated_button.dart] _ElevatedButtonWithIcon::_ElevatedButtonWithIcon
    // 0x72a144: ldur            x0, [fp, #-8]
    // 0x72a148: LeaveFrame
    //     0x72a148: mov             SP, fp
    //     0x72a14c: ldp             fp, lr, [SP], #0x10
    // 0x72a150: ret
    //     0x72a150: ret             
    // 0x72a154: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72a154: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72a158: b               #0x72a090
  }
  [closure] Future<void> _startDownload(dynamic) {
    // ** addr: 0x72a15c, size: 0x38
    // 0x72a15c: EnterFrame
    //     0x72a15c: stp             fp, lr, [SP, #-0x10]!
    //     0x72a160: mov             fp, SP
    // 0x72a164: ldr             x0, [fp, #0x10]
    // 0x72a168: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72a168: ldur            w1, [x0, #0x17]
    // 0x72a16c: DecompressPointer r1
    //     0x72a16c: add             x1, x1, HEAP, lsl #32
    // 0x72a170: CheckStackOverflow
    //     0x72a170: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a174: cmp             SP, x16
    //     0x72a178: b.ls            #0x72a18c
    // 0x72a17c: r0 = _startDownload()
    //     0x72a17c: bl              #0x72a194  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload
    // 0x72a180: LeaveFrame
    //     0x72a180: mov             SP, fp
    //     0x72a184: ldp             fp, lr, [SP], #0x10
    // 0x72a188: ret
    //     0x72a188: ret             
    // 0x72a18c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72a18c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72a190: b               #0x72a17c
  }
  _ _startDownload(/* No info */) async {
    // ** addr: 0x72a194, size: 0x568
    // 0x72a194: EnterFrame
    //     0x72a194: stp             fp, lr, [SP, #-0x10]!
    //     0x72a198: mov             fp, SP
    // 0x72a19c: AllocStack(0x40)
    //     0x72a19c: sub             SP, SP, #0x40
    // 0x72a1a0: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x10 */)
    //     0x72a1a0: stur            NULL, [fp, #-8]
    //     0x72a1a4: stur            x1, [fp, #-0x10]
    // 0x72a1a8: CheckStackOverflow
    //     0x72a1a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72a1ac: cmp             SP, x16
    //     0x72a1b0: b.ls            #0x72a6e8
    // 0x72a1b4: r1 = 6
    //     0x72a1b4: mov             x1, #6
    // 0x72a1b8: r0 = AllocateContext()
    //     0x72a1b8: bl              #0x927010  ; AllocateContextStub
    // 0x72a1bc: mov             x2, x0
    // 0x72a1c0: ldur            x1, [fp, #-0x10]
    // 0x72a1c4: stur            x2, [fp, #-0x18]
    // 0x72a1c8: StoreField: r2->field_f = r1
    //     0x72a1c8: stur            w1, [x2, #0xf]
    // 0x72a1cc: InitAsync() -> Future<void?>
    //     0x72a1cc: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72a1d0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x72a1d4: ldur            x1, [fp, #-0x10]
    // 0x72a1d8: LoadField: r0 = r1->field_f
    //     0x72a1d8: ldur            w0, [x1, #0xf]
    // 0x72a1dc: DecompressPointer r0
    //     0x72a1dc: add             x0, x0, HEAP, lsl #32
    // 0x72a1e0: cmp             w0, NULL
    // 0x72a1e4: b.eq            #0x72a6f0
    // 0x72a1e8: r16 = <QuranDownloadProvider>
    //     0x72a1e8: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bc0] TypeArguments: <QuranDownloadProvider>
    //     0x72a1ec: ldr             x16, [x16, #0xbc0]
    // 0x72a1f0: stp             x0, x16, [SP]
    // 0x72a1f4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72a1f4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72a1f8: r0 = ReadContext.read()
    //     0x72a1f8: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x72a1fc: mov             x1, x0
    // 0x72a200: ldur            x2, [fp, #-0x18]
    // 0x72a204: stur            x1, [fp, #-0x20]
    // 0x72a208: StoreField: r2->field_13 = r0
    //     0x72a208: stur            w0, [x2, #0x13]
    //     0x72a20c: ldurb           w16, [x2, #-1]
    //     0x72a210: ldurb           w17, [x0, #-1]
    //     0x72a214: and             x16, x17, x16, lsr #2
    //     0x72a218: tst             x16, HEAP, lsr #32
    //     0x72a21c: b.eq            #0x72a224
    //     0x72a220: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x72a224: ldur            x0, [fp, #-0x10]
    // 0x72a228: LoadField: r3 = r0->field_f
    //     0x72a228: ldur            w3, [x0, #0xf]
    // 0x72a22c: DecompressPointer r3
    //     0x72a22c: add             x3, x3, HEAP, lsl #32
    // 0x72a230: cmp             w3, NULL
    // 0x72a234: b.eq            #0x72a6f4
    // 0x72a238: r16 = <SayDualariDownloadProvider>
    //     0x72a238: add             x16, PP, #0x10, lsl #12  ; [pp+0x10bd0] TypeArguments: <SayDualariDownloadProvider>
    //     0x72a23c: ldr             x16, [x16, #0xbd0]
    // 0x72a240: stp             x3, x16, [SP]
    // 0x72a244: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72a244: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72a248: r0 = ReadContext.read()
    //     0x72a248: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x72a24c: mov             x1, x0
    // 0x72a250: ldur            x2, [fp, #-0x18]
    // 0x72a254: stur            x1, [fp, #-0x28]
    // 0x72a258: ArrayStore: r2[0] = r0  ; List_4
    //     0x72a258: stur            w0, [x2, #0x17]
    //     0x72a25c: ldurb           w16, [x2, #-1]
    //     0x72a260: ldurb           w17, [x0, #-1]
    //     0x72a264: and             x16, x17, x16, lsr #2
    //     0x72a268: tst             x16, HEAP, lsr #32
    //     0x72a26c: b.eq            #0x72a274
    //     0x72a270: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x72a274: ldur            x0, [fp, #-0x10]
    // 0x72a278: LoadField: r3 = r0->field_f
    //     0x72a278: ldur            w3, [x0, #0xf]
    // 0x72a27c: DecompressPointer r3
    //     0x72a27c: add             x3, x3, HEAP, lsl #32
    // 0x72a280: cmp             w3, NULL
    // 0x72a284: b.eq            #0x72a6f8
    // 0x72a288: r16 = <TavafDualariDownloadProvider>
    //     0x72a288: add             x16, PP, #0x10, lsl #12  ; [pp+0x10be0] TypeArguments: <TavafDualariDownloadProvider>
    //     0x72a28c: ldr             x16, [x16, #0xbe0]
    // 0x72a290: stp             x3, x16, [SP]
    // 0x72a294: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72a294: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72a298: r0 = ReadContext.read()
    //     0x72a298: bl              #0x5de638  ; [package:provider/src/provider.dart] ::ReadContext.read
    // 0x72a29c: mov             x4, x0
    // 0x72a2a0: ldur            x3, [fp, #-0x18]
    // 0x72a2a4: stur            x4, [fp, #-0x30]
    // 0x72a2a8: StoreField: r3->field_1b = r0
    //     0x72a2a8: stur            w0, [x3, #0x1b]
    //     0x72a2ac: ldurb           w16, [x3, #-1]
    //     0x72a2b0: ldurb           w17, [x0, #-1]
    //     0x72a2b4: and             x16, x17, x16, lsr #2
    //     0x72a2b8: tst             x16, HEAP, lsr #32
    //     0x72a2bc: b.eq            #0x72a2c4
    //     0x72a2c0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x72a2c4: mov             x2, x3
    // 0x72a2c8: r1 = Function '<anonymous closure>':.
    //     0x72a2c8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20270] AnonymousClosure: (0x72bd94), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a2cc: ldr             x1, [x1, #0x270]
    // 0x72a2d0: r0 = AllocateClosure()
    //     0x72a2d0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a2d4: ldur            x1, [fp, #-0x10]
    // 0x72a2d8: mov             x2, x0
    // 0x72a2dc: r0 = setState()
    //     0x72a2dc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a2e0: ldur            x0, [fp, #-0x18]
    // 0x72a2e4: StoreField: r0->field_1f = rZR
    //     0x72a2e4: stur            wzr, [x0, #0x1f]
    // 0x72a2e8: StoreField: r0->field_23 = rZR
    //     0x72a2e8: stur            wzr, [x0, #0x23]
    // 0x72a2ec: ldur            x3, [fp, #-0x10]
    // 0x72a2f0: LoadField: r1 = r3->field_13
    //     0x72a2f0: ldur            w1, [x3, #0x13]
    // 0x72a2f4: DecompressPointer r1
    //     0x72a2f4: add             x1, x1, HEAP, lsl #32
    // 0x72a2f8: tbnz            w1, #4, #0x72a318
    // 0x72a2fc: LoadField: r2 = r3->field_37
    //     0x72a2fc: ldur            w2, [x3, #0x37]
    // 0x72a300: DecompressPointer r2
    //     0x72a300: add             x2, x2, HEAP, lsl #32
    // 0x72a304: tbz             w2, #4, #0x72a318
    // 0x72a308: r2 = 2
    //     0x72a308: mov             x2, #2
    // 0x72a30c: StoreField: r0->field_1f = r2
    //     0x72a30c: stur            w2, [x0, #0x1f]
    // 0x72a310: r2 = 1
    //     0x72a310: mov             x2, #1
    // 0x72a314: b               #0x72a31c
    // 0x72a318: r2 = 0
    //     0x72a318: mov             x2, #0
    // 0x72a31c: ArrayLoad: r4 = r3[0]  ; List_4
    //     0x72a31c: ldur            w4, [x3, #0x17]
    // 0x72a320: DecompressPointer r4
    //     0x72a320: add             x4, x4, HEAP, lsl #32
    // 0x72a324: tbnz            w4, #4, #0x72a344
    // 0x72a328: LoadField: r4 = r3->field_3b
    //     0x72a328: ldur            w4, [x3, #0x3b]
    // 0x72a32c: DecompressPointer r4
    //     0x72a32c: add             x4, x4, HEAP, lsl #32
    // 0x72a330: tbz             w4, #4, #0x72a344
    // 0x72a334: add             x4, x2, #1
    // 0x72a338: lsl             x2, x4, #1
    // 0x72a33c: StoreField: r0->field_1f = r2
    //     0x72a33c: stur            w2, [x0, #0x1f]
    // 0x72a340: mov             x2, x4
    // 0x72a344: LoadField: r4 = r3->field_1b
    //     0x72a344: ldur            w4, [x3, #0x1b]
    // 0x72a348: DecompressPointer r4
    //     0x72a348: add             x4, x4, HEAP, lsl #32
    // 0x72a34c: tbnz            w4, #4, #0x72a36c
    // 0x72a350: LoadField: r4 = r3->field_3f
    //     0x72a350: ldur            w4, [x3, #0x3f]
    // 0x72a354: DecompressPointer r4
    //     0x72a354: add             x4, x4, HEAP, lsl #32
    // 0x72a358: tbz             w4, #4, #0x72a36c
    // 0x72a35c: add             x4, x2, #1
    // 0x72a360: lsl             x2, x4, #1
    // 0x72a364: StoreField: r0->field_1f = r2
    //     0x72a364: stur            w2, [x0, #0x1f]
    // 0x72a368: mov             x2, x4
    // 0x72a36c: lsl             x4, x2, #1
    // 0x72a370: cbnz            w4, #0x72a3c4
    // 0x72a374: mov             x2, x0
    // 0x72a378: r1 = Function '<anonymous closure>':.
    //     0x72a378: add             x1, PP, #0x20, lsl #12  ; [pp+0x20278] AnonymousClosure: (0x72b884), in [dart:io] _StreamSinkImpl::flush (0x72b8a8)
    //     0x72a37c: ldr             x1, [x1, #0x278]
    // 0x72a380: r0 = AllocateClosure()
    //     0x72a380: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a384: ldur            x1, [fp, #-0x10]
    // 0x72a388: mov             x2, x0
    // 0x72a38c: r0 = setState()
    //     0x72a38c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a390: ldur            x3, [fp, #-0x10]
    // 0x72a394: LoadField: r1 = r3->field_f
    //     0x72a394: ldur            w1, [x3, #0xf]
    // 0x72a398: DecompressPointer r1
    //     0x72a398: add             x1, x1, HEAP, lsl #32
    // 0x72a39c: cmp             w1, NULL
    // 0x72a3a0: b.eq            #0x72a3bc
    // 0x72a3a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72a3a4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x72a3a8: r0 = of()
    //     0x72a3a8: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x72a3ac: r16 = <Object?>
    //     0x72a3ac: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x72a3b0: stp             x0, x16, [SP]
    // 0x72a3b4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72a3b4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72a3b8: r0 = pop()
    //     0x72a3b8: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x72a3bc: r0 = Null
    //     0x72a3bc: mov             x0, NULL
    // 0x72a3c0: r0 = ReturnAsyncNotFuture()
    //     0x72a3c0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a3c4: tbnz            w1, #4, #0x72a4a0
    // 0x72a3c8: LoadField: r1 = r3->field_37
    //     0x72a3c8: ldur            w1, [x3, #0x37]
    // 0x72a3cc: DecompressPointer r1
    //     0x72a3cc: add             x1, x1, HEAP, lsl #32
    // 0x72a3d0: tbz             w1, #4, #0x72a4a0
    // 0x72a3d4: mov             x2, x0
    // 0x72a3d8: r1 = Function '<anonymous closure>':.
    //     0x72a3d8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20280] AnonymousClosure: (0x72bd6c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a3dc: ldr             x1, [x1, #0x280]
    // 0x72a3e0: r0 = AllocateClosure()
    //     0x72a3e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a3e4: ldur            x1, [fp, #-0x10]
    // 0x72a3e8: mov             x2, x0
    // 0x72a3ec: r0 = setState()
    //     0x72a3ec: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a3f0: ldur            x1, [fp, #-0x20]
    // 0x72a3f4: r0 = downloadAllPages()
    //     0x72a3f4: bl              #0x72b1ec  ; [package:umrem_demo/features/dualar/providers/quran_download_provider.dart] QuranDownloadProvider::downloadAllPages
    // 0x72a3f8: mov             x1, x0
    // 0x72a3fc: stur            x1, [fp, #-0x20]
    // 0x72a400: r0 = Await()
    //     0x72a400: bl              #0x3dd188  ; AwaitStub
    // 0x72a404: r16 = true
    //     0x72a404: add             x16, NULL, #0x20  ; true
    // 0x72a408: cmp             w0, w16
    // 0x72a40c: b.eq            #0x72a434
    // 0x72a410: ldur            x2, [fp, #-0x18]
    // 0x72a414: r1 = Function '<anonymous closure>':.
    //     0x72a414: add             x1, PP, #0x20, lsl #12  ; [pp+0x20288] AnonymousClosure: (0x72bcac), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a418: ldr             x1, [x1, #0x288]
    // 0x72a41c: r0 = AllocateClosure()
    //     0x72a41c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a420: ldur            x1, [fp, #-0x10]
    // 0x72a424: mov             x2, x0
    // 0x72a428: r0 = setState()
    //     0x72a428: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a42c: r0 = Null
    //     0x72a42c: mov             x0, NULL
    // 0x72a430: r0 = ReturnAsyncNotFuture()
    //     0x72a430: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a434: ldur            x3, [fp, #-0x18]
    // 0x72a438: LoadField: r0 = r3->field_23
    //     0x72a438: ldur            w0, [x3, #0x23]
    // 0x72a43c: DecompressPointer r0
    //     0x72a43c: add             x0, x0, HEAP, lsl #32
    // 0x72a440: r1 = LoadInt32Instr(r0)
    //     0x72a440: sbfx            x1, x0, #1, #0x1f
    //     0x72a444: tbz             w0, #0, #0x72a44c
    //     0x72a448: ldur            x1, [x0, #7]
    // 0x72a44c: add             x2, x1, #1
    // 0x72a450: r0 = BoxInt64Instr(r2)
    //     0x72a450: sbfiz           x0, x2, #1, #0x1f
    //     0x72a454: cmp             x2, x0, asr #1
    //     0x72a458: b.eq            #0x72a464
    //     0x72a45c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72a460: stur            x2, [x0, #7]
    // 0x72a464: StoreField: r3->field_23 = r0
    //     0x72a464: stur            w0, [x3, #0x23]
    //     0x72a468: tbz             w0, #0, #0x72a484
    //     0x72a46c: ldurb           w16, [x3, #-1]
    //     0x72a470: ldurb           w17, [x0, #-1]
    //     0x72a474: and             x16, x17, x16, lsr #2
    //     0x72a478: tst             x16, HEAP, lsr #32
    //     0x72a47c: b.eq            #0x72a484
    //     0x72a480: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x72a484: mov             x2, x3
    // 0x72a488: r1 = Function '<anonymous closure>':.
    //     0x72a488: add             x1, PP, #0x20, lsl #12  ; [pp+0x20290] AnonymousClosure: (0x72bc50), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a48c: ldr             x1, [x1, #0x290]
    // 0x72a490: r0 = AllocateClosure()
    //     0x72a490: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a494: ldur            x1, [fp, #-0x10]
    // 0x72a498: mov             x2, x0
    // 0x72a49c: r0 = setState()
    //     0x72a49c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a4a0: ldur            x0, [fp, #-0x10]
    // 0x72a4a4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72a4a4: ldur            w1, [x0, #0x17]
    // 0x72a4a8: DecompressPointer r1
    //     0x72a4a8: add             x1, x1, HEAP, lsl #32
    // 0x72a4ac: tbnz            w1, #4, #0x72a588
    // 0x72a4b0: LoadField: r1 = r0->field_3b
    //     0x72a4b0: ldur            w1, [x0, #0x3b]
    // 0x72a4b4: DecompressPointer r1
    //     0x72a4b4: add             x1, x1, HEAP, lsl #32
    // 0x72a4b8: tbz             w1, #4, #0x72a588
    // 0x72a4bc: ldur            x2, [fp, #-0x18]
    // 0x72a4c0: r1 = Function '<anonymous closure>':.
    //     0x72a4c0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20298] AnonymousClosure: (0x72bc28), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a4c4: ldr             x1, [x1, #0x298]
    // 0x72a4c8: r0 = AllocateClosure()
    //     0x72a4c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a4cc: ldur            x1, [fp, #-0x10]
    // 0x72a4d0: mov             x2, x0
    // 0x72a4d4: r0 = setState()
    //     0x72a4d4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a4d8: ldur            x1, [fp, #-0x28]
    // 0x72a4dc: r0 = downloadAllFiles()
    //     0x72a4dc: bl              #0x72acec  ; [package:umrem_demo/features/dualar/providers/say_dualari_download_provider.dart] SayDualariDownloadProvider::downloadAllFiles
    // 0x72a4e0: mov             x1, x0
    // 0x72a4e4: stur            x1, [fp, #-0x20]
    // 0x72a4e8: r0 = Await()
    //     0x72a4e8: bl              #0x3dd188  ; AwaitStub
    // 0x72a4ec: r16 = true
    //     0x72a4ec: add             x16, NULL, #0x20  ; true
    // 0x72a4f0: cmp             w0, w16
    // 0x72a4f4: b.eq            #0x72a51c
    // 0x72a4f8: ldur            x2, [fp, #-0x18]
    // 0x72a4fc: r1 = Function '<anonymous closure>':.
    //     0x72a4fc: add             x1, PP, #0x20, lsl #12  ; [pp+0x202a0] AnonymousClosure: (0x72bb68), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a500: ldr             x1, [x1, #0x2a0]
    // 0x72a504: r0 = AllocateClosure()
    //     0x72a504: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a508: ldur            x1, [fp, #-0x10]
    // 0x72a50c: mov             x2, x0
    // 0x72a510: r0 = setState()
    //     0x72a510: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a514: r0 = Null
    //     0x72a514: mov             x0, NULL
    // 0x72a518: r0 = ReturnAsyncNotFuture()
    //     0x72a518: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a51c: ldur            x3, [fp, #-0x18]
    // 0x72a520: LoadField: r0 = r3->field_23
    //     0x72a520: ldur            w0, [x3, #0x23]
    // 0x72a524: DecompressPointer r0
    //     0x72a524: add             x0, x0, HEAP, lsl #32
    // 0x72a528: r1 = LoadInt32Instr(r0)
    //     0x72a528: sbfx            x1, x0, #1, #0x1f
    //     0x72a52c: tbz             w0, #0, #0x72a534
    //     0x72a530: ldur            x1, [x0, #7]
    // 0x72a534: add             x2, x1, #1
    // 0x72a538: r0 = BoxInt64Instr(r2)
    //     0x72a538: sbfiz           x0, x2, #1, #0x1f
    //     0x72a53c: cmp             x2, x0, asr #1
    //     0x72a540: b.eq            #0x72a54c
    //     0x72a544: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72a548: stur            x2, [x0, #7]
    // 0x72a54c: StoreField: r3->field_23 = r0
    //     0x72a54c: stur            w0, [x3, #0x23]
    //     0x72a550: tbz             w0, #0, #0x72a56c
    //     0x72a554: ldurb           w16, [x3, #-1]
    //     0x72a558: ldurb           w17, [x0, #-1]
    //     0x72a55c: and             x16, x17, x16, lsr #2
    //     0x72a560: tst             x16, HEAP, lsr #32
    //     0x72a564: b.eq            #0x72a56c
    //     0x72a568: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x72a56c: mov             x2, x3
    // 0x72a570: r1 = Function '<anonymous closure>':.
    //     0x72a570: add             x1, PP, #0x20, lsl #12  ; [pp+0x202a8] AnonymousClosure: (0x72bb0c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a574: ldr             x1, [x1, #0x2a8]
    // 0x72a578: r0 = AllocateClosure()
    //     0x72a578: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a57c: ldur            x1, [fp, #-0x10]
    // 0x72a580: mov             x2, x0
    // 0x72a584: r0 = setState()
    //     0x72a584: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a588: ldur            x0, [fp, #-0x10]
    // 0x72a58c: LoadField: r1 = r0->field_1b
    //     0x72a58c: ldur            w1, [x0, #0x1b]
    // 0x72a590: DecompressPointer r1
    //     0x72a590: add             x1, x1, HEAP, lsl #32
    // 0x72a594: tbnz            w1, #4, #0x72a670
    // 0x72a598: LoadField: r1 = r0->field_3f
    //     0x72a598: ldur            w1, [x0, #0x3f]
    // 0x72a59c: DecompressPointer r1
    //     0x72a59c: add             x1, x1, HEAP, lsl #32
    // 0x72a5a0: tbz             w1, #4, #0x72a670
    // 0x72a5a4: ldur            x2, [fp, #-0x18]
    // 0x72a5a8: r1 = Function '<anonymous closure>':.
    //     0x72a5a8: add             x1, PP, #0x20, lsl #12  ; [pp+0x202b0] AnonymousClosure: (0x72bae4), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a5ac: ldr             x1, [x1, #0x2b0]
    // 0x72a5b0: r0 = AllocateClosure()
    //     0x72a5b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a5b4: ldur            x1, [fp, #-0x10]
    // 0x72a5b8: mov             x2, x0
    // 0x72a5bc: r0 = setState()
    //     0x72a5bc: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a5c0: ldur            x1, [fp, #-0x30]
    // 0x72a5c4: r0 = downloadAllFiles()
    //     0x72a5c4: bl              #0x72a6fc  ; [package:umrem_demo/features/dualar/providers/tavaf_dualari_download_provider.dart] TavafDualariDownloadProvider::downloadAllFiles
    // 0x72a5c8: mov             x1, x0
    // 0x72a5cc: stur            x1, [fp, #-0x20]
    // 0x72a5d0: r0 = Await()
    //     0x72a5d0: bl              #0x3dd188  ; AwaitStub
    // 0x72a5d4: r16 = true
    //     0x72a5d4: add             x16, NULL, #0x20  ; true
    // 0x72a5d8: cmp             w0, w16
    // 0x72a5dc: b.eq            #0x72a604
    // 0x72a5e0: ldur            x2, [fp, #-0x18]
    // 0x72a5e4: r1 = Function '<anonymous closure>':.
    //     0x72a5e4: add             x1, PP, #0x20, lsl #12  ; [pp+0x202b8] AnonymousClosure: (0x72ba24), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a5e8: ldr             x1, [x1, #0x2b8]
    // 0x72a5ec: r0 = AllocateClosure()
    //     0x72a5ec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a5f0: ldur            x1, [fp, #-0x10]
    // 0x72a5f4: mov             x2, x0
    // 0x72a5f8: r0 = setState()
    //     0x72a5f8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a5fc: r0 = Null
    //     0x72a5fc: mov             x0, NULL
    // 0x72a600: r0 = ReturnAsyncNotFuture()
    //     0x72a600: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a604: ldur            x3, [fp, #-0x18]
    // 0x72a608: LoadField: r0 = r3->field_23
    //     0x72a608: ldur            w0, [x3, #0x23]
    // 0x72a60c: DecompressPointer r0
    //     0x72a60c: add             x0, x0, HEAP, lsl #32
    // 0x72a610: r1 = LoadInt32Instr(r0)
    //     0x72a610: sbfx            x1, x0, #1, #0x1f
    //     0x72a614: tbz             w0, #0, #0x72a61c
    //     0x72a618: ldur            x1, [x0, #7]
    // 0x72a61c: add             x2, x1, #1
    // 0x72a620: r0 = BoxInt64Instr(r2)
    //     0x72a620: sbfiz           x0, x2, #1, #0x1f
    //     0x72a624: cmp             x2, x0, asr #1
    //     0x72a628: b.eq            #0x72a634
    //     0x72a62c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x72a630: stur            x2, [x0, #7]
    // 0x72a634: StoreField: r3->field_23 = r0
    //     0x72a634: stur            w0, [x3, #0x23]
    //     0x72a638: tbz             w0, #0, #0x72a654
    //     0x72a63c: ldurb           w16, [x3, #-1]
    //     0x72a640: ldurb           w17, [x0, #-1]
    //     0x72a644: and             x16, x17, x16, lsr #2
    //     0x72a648: tst             x16, HEAP, lsr #32
    //     0x72a64c: b.eq            #0x72a654
    //     0x72a650: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x72a654: mov             x2, x3
    // 0x72a658: r1 = Function '<anonymous closure>':.
    //     0x72a658: add             x1, PP, #0x20, lsl #12  ; [pp+0x202c0] AnonymousClosure: (0x72b9c8), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a65c: ldr             x1, [x1, #0x2c0]
    // 0x72a660: r0 = AllocateClosure()
    //     0x72a660: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a664: ldur            x1, [fp, #-0x10]
    // 0x72a668: mov             x2, x0
    // 0x72a66c: r0 = setState()
    //     0x72a66c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a670: ldur            x0, [fp, #-0x10]
    // 0x72a674: ldur            x2, [fp, #-0x18]
    // 0x72a678: r1 = Function '<anonymous closure>':.
    //     0x72a678: add             x1, PP, #0x20, lsl #12  ; [pp+0x202c8] AnonymousClosure: (0x72b884), in [dart:io] _StreamSinkImpl::flush (0x72b8a8)
    //     0x72a67c: ldr             x1, [x1, #0x2c8]
    // 0x72a680: r0 = AllocateClosure()
    //     0x72a680: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a684: ldur            x1, [fp, #-0x10]
    // 0x72a688: mov             x2, x0
    // 0x72a68c: r0 = setState()
    //     0x72a68c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72a690: ldur            x0, [fp, #-0x10]
    // 0x72a694: LoadField: r1 = r0->field_f
    //     0x72a694: ldur            w1, [x0, #0xf]
    // 0x72a698: DecompressPointer r1
    //     0x72a698: add             x1, x1, HEAP, lsl #32
    // 0x72a69c: cmp             w1, NULL
    // 0x72a6a0: b.eq            #0x72a6e0
    // 0x72a6a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72a6a4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x72a6a8: r0 = of()
    //     0x72a6a8: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x72a6ac: r16 = <Object?>
    //     0x72a6ac: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x72a6b0: stp             x0, x16, [SP]
    // 0x72a6b4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72a6b4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72a6b8: r0 = pop()
    //     0x72a6b8: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x72a6bc: ldur            x2, [fp, #-0x18]
    // 0x72a6c0: r1 = Function '<anonymous closure>':.
    //     0x72a6c0: add             x1, PP, #0x20, lsl #12  ; [pp+0x202d0] AnonymousClosure: (0x72b80c), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload (0x72a194)
    //     0x72a6c4: ldr             x1, [x1, #0x2d0]
    // 0x72a6c8: r0 = AllocateClosure()
    //     0x72a6c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72a6cc: str             x0, [SP]
    // 0x72a6d0: r1 = <Null?>
    //     0x72a6d0: ldr             x1, [PP, #0x12a8]  ; [pp+0x12a8] TypeArguments: <Null?>
    // 0x72a6d4: r2 = Instance_Duration
    //     0x72a6d4: ldr             x2, [PP, #0x7040]  ; [pp+0x7040] Obj!Duration@a2dca1
    // 0x72a6d8: r4 = const [0, 0x3, 0x1, 0x3, null]
    //     0x72a6d8: ldr             x4, [PP, #0x868]  ; [pp+0x868] List(5) [0, 0x3, 0x1, 0x3, Null]
    // 0x72a6dc: r0 = Future.delayed()
    //     0x72a6dc: bl              #0x4279e4  ; [dart:async] Future::Future.delayed
    // 0x72a6e0: r0 = Null
    //     0x72a6e0: mov             x0, NULL
    // 0x72a6e4: r0 = ReturnAsyncNotFuture()
    //     0x72a6e4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72a6e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72a6e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72a6ec: b               #0x72a1b4
    // 0x72a6f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a6f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72a6f4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a6f4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72a6f8: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72a6f8: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Null <anonymous closure>(dynamic) {
    // ** addr: 0x72b80c, size: 0x78
    // 0x72b80c: EnterFrame
    //     0x72b80c: stp             fp, lr, [SP, #-0x10]!
    //     0x72b810: mov             fp, SP
    // 0x72b814: ldr             x0, [fp, #0x10]
    // 0x72b818: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72b818: ldur            w1, [x0, #0x17]
    // 0x72b81c: DecompressPointer r1
    //     0x72b81c: add             x1, x1, HEAP, lsl #32
    // 0x72b820: CheckStackOverflow
    //     0x72b820: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72b824: cmp             SP, x16
    //     0x72b828: b.ls            #0x72b878
    // 0x72b82c: LoadField: r0 = r1->field_f
    //     0x72b82c: ldur            w0, [x1, #0xf]
    // 0x72b830: DecompressPointer r0
    //     0x72b830: add             x0, x0, HEAP, lsl #32
    // 0x72b834: LoadField: r1 = r0->field_f
    //     0x72b834: ldur            w1, [x0, #0xf]
    // 0x72b838: DecompressPointer r1
    //     0x72b838: add             x1, x1, HEAP, lsl #32
    // 0x72b83c: cmp             w1, NULL
    // 0x72b840: b.eq            #0x72b880
    // 0x72b844: ArrayLoad: r0 = r1[0]  ; List_4
    //     0x72b844: ldur            w0, [x1, #0x17]
    // 0x72b848: DecompressPointer r0
    //     0x72b848: add             x0, x0, HEAP, lsl #32
    // 0x72b84c: cmp             w0, NULL
    // 0x72b850: b.eq            #0x72b868
    // 0x72b854: r0 = of()
    //     0x72b854: bl              #0x63a978  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessenger::of
    // 0x72b858: mov             x1, x0
    // 0x72b85c: r2 = Instance_SnackBar
    //     0x72b85c: add             x2, PP, #0x20, lsl #12  ; [pp+0x202d8] Obj!SnackBar@a20631
    //     0x72b860: ldr             x2, [x2, #0x2d8]
    // 0x72b864: r0 = showSnackBar()
    //     0x72b864: bl              #0x5dc604  ; [package:flutter/src/material/scaffold.dart] ScaffoldMessengerState::showSnackBar
    // 0x72b868: r0 = Null
    //     0x72b868: mov             x0, NULL
    // 0x72b86c: LeaveFrame
    //     0x72b86c: mov             SP, fp
    //     0x72b870: ldp             fp, lr, [SP], #0x10
    // 0x72b874: ret
    //     0x72b874: ret             
    // 0x72b878: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72b878: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72b87c: b               #0x72b82c
    // 0x72b880: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72b880: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72b9c8, size: 0x5c
    // 0x72b9c8: r1 = true
    //     0x72b9c8: add             x1, NULL, #0x20  ; true
    // 0x72b9cc: ldr             x2, [SP]
    // 0x72b9d0: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x72b9d0: ldur            w3, [x2, #0x17]
    // 0x72b9d4: DecompressPointer r3
    //     0x72b9d4: add             x3, x3, HEAP, lsl #32
    // 0x72b9d8: LoadField: r2 = r3->field_f
    //     0x72b9d8: ldur            w2, [x3, #0xf]
    // 0x72b9dc: DecompressPointer r2
    //     0x72b9dc: add             x2, x2, HEAP, lsl #32
    // 0x72b9e0: LoadField: r4 = r3->field_23
    //     0x72b9e0: ldur            w4, [x3, #0x23]
    // 0x72b9e4: DecompressPointer r4
    //     0x72b9e4: add             x4, x4, HEAP, lsl #32
    // 0x72b9e8: LoadField: r5 = r3->field_1f
    //     0x72b9e8: ldur            w5, [x3, #0x1f]
    // 0x72b9ec: DecompressPointer r5
    //     0x72b9ec: add             x5, x5, HEAP, lsl #32
    // 0x72b9f0: r3 = LoadInt32Instr(r4)
    //     0x72b9f0: sbfx            x3, x4, #1, #0x1f
    //     0x72b9f4: tbz             w4, #0, #0x72b9fc
    //     0x72b9f8: ldur            x3, [x4, #7]
    // 0x72b9fc: scvtf           d0, x3
    // 0x72ba00: r3 = LoadInt32Instr(r5)
    //     0x72ba00: sbfx            x3, x5, #1, #0x1f
    //     0x72ba04: tbz             w5, #0, #0x72ba0c
    //     0x72ba08: ldur            x3, [x5, #7]
    // 0x72ba0c: scvtf           d1, x3
    // 0x72ba10: fdiv            d2, d0, d1
    // 0x72ba14: StoreField: r2->field_27 = d2
    //     0x72ba14: stur            d2, [x2, #0x27]
    // 0x72ba18: StoreField: r2->field_3f = r1
    //     0x72ba18: stur            w1, [x2, #0x3f]
    // 0x72ba1c: r0 = Null
    //     0x72ba1c: mov             x0, NULL
    // 0x72ba20: ret
    //     0x72ba20: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72ba24, size: 0xc0
    // 0x72ba24: EnterFrame
    //     0x72ba24: stp             fp, lr, [SP, #-0x10]!
    //     0x72ba28: mov             fp, SP
    // 0x72ba2c: AllocStack(0x18)
    //     0x72ba2c: sub             SP, SP, #0x18
    // 0x72ba30: SetupParameters([dynamic _ /* r1 */])
    //     0x72ba30: add             x0, NULL, #0x20  ; true
    //     0x72ba34: ldr             x1, [fp, #0x10]
    //     0x72ba38: ldur            w3, [x1, #0x17]
    //     0x72ba3c: add             x3, x3, HEAP, lsl #32
    //     0x72ba40: stur            x3, [fp, #-0x10]
    // 0x72ba30: r0 = true
    // 0x72ba44: CheckStackOverflow
    //     0x72ba44: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72ba48: cmp             SP, x16
    //     0x72ba4c: b.ls            #0x72badc
    // 0x72ba50: LoadField: r4 = r3->field_f
    //     0x72ba50: ldur            w4, [x3, #0xf]
    // 0x72ba54: DecompressPointer r4
    //     0x72ba54: add             x4, x4, HEAP, lsl #32
    // 0x72ba58: stur            x4, [fp, #-8]
    // 0x72ba5c: StoreField: r4->field_2f = r0
    //     0x72ba5c: stur            w0, [x4, #0x2f]
    // 0x72ba60: r1 = Null
    //     0x72ba60: mov             x1, NULL
    // 0x72ba64: r2 = 4
    //     0x72ba64: mov             x2, #4
    // 0x72ba68: r0 = AllocateArray()
    //     0x72ba68: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72ba6c: r16 = "Tavaf Duaları indirilemedi: "
    //     0x72ba6c: add             x16, PP, #0x20, lsl #12  ; [pp+0x202e0] "Tavaf Duaları indirilemedi: "
    //     0x72ba70: ldr             x16, [x16, #0x2e0]
    // 0x72ba74: StoreField: r0->field_f = r16
    //     0x72ba74: stur            w16, [x0, #0xf]
    // 0x72ba78: ldur            x1, [fp, #-0x10]
    // 0x72ba7c: LoadField: r2 = r1->field_1b
    //     0x72ba7c: ldur            w2, [x1, #0x1b]
    // 0x72ba80: DecompressPointer r2
    //     0x72ba80: add             x2, x2, HEAP, lsl #32
    // 0x72ba84: LoadField: r3 = r2->field_37
    //     0x72ba84: ldur            w3, [x2, #0x37]
    // 0x72ba88: DecompressPointer r3
    //     0x72ba88: add             x3, x3, HEAP, lsl #32
    // 0x72ba8c: StoreField: r0->field_13 = r3
    //     0x72ba8c: stur            w3, [x0, #0x13]
    // 0x72ba90: str             x0, [SP]
    // 0x72ba94: r0 = _interpolate()
    //     0x72ba94: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72ba98: ldur            x1, [fp, #-8]
    // 0x72ba9c: StoreField: r1->field_33 = r0
    //     0x72ba9c: stur            w0, [x1, #0x33]
    //     0x72baa0: ldurb           w16, [x1, #-1]
    //     0x72baa4: ldurb           w17, [x0, #-1]
    //     0x72baa8: and             x16, x17, x16, lsr #2
    //     0x72baac: tst             x16, HEAP, lsr #32
    //     0x72bab0: b.eq            #0x72bab8
    //     0x72bab4: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72bab8: ldur            x1, [fp, #-0x10]
    // 0x72babc: LoadField: r2 = r1->field_f
    //     0x72babc: ldur            w2, [x1, #0xf]
    // 0x72bac0: DecompressPointer r2
    //     0x72bac0: add             x2, x2, HEAP, lsl #32
    // 0x72bac4: r1 = false
    //     0x72bac4: add             x1, NULL, #0x30  ; false
    // 0x72bac8: StoreField: r2->field_1f = r1
    //     0x72bac8: stur            w1, [x2, #0x1f]
    // 0x72bacc: r0 = Null
    //     0x72bacc: mov             x0, NULL
    // 0x72bad0: LeaveFrame
    //     0x72bad0: mov             SP, fp
    //     0x72bad4: ldp             fp, lr, [SP], #0x10
    // 0x72bad8: ret
    //     0x72bad8: ret             
    // 0x72badc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72badc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72bae0: b               #0x72ba50
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bae4, size: 0x28
    // 0x72bae4: r1 = "Tavaf Duaları"
    //     0x72bae4: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f48] "Tavaf Duaları"
    //     0x72bae8: ldr             x1, [x1, #0xf48]
    // 0x72baec: ldr             x2, [SP]
    // 0x72baf0: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x72baf0: ldur            w3, [x2, #0x17]
    // 0x72baf4: DecompressPointer r3
    //     0x72baf4: add             x3, x3, HEAP, lsl #32
    // 0x72baf8: LoadField: r2 = r3->field_f
    //     0x72baf8: ldur            w2, [x3, #0xf]
    // 0x72bafc: DecompressPointer r2
    //     0x72bafc: add             x2, x2, HEAP, lsl #32
    // 0x72bb00: StoreField: r2->field_23 = r1
    //     0x72bb00: stur            w1, [x2, #0x23]
    // 0x72bb04: r0 = Null
    //     0x72bb04: mov             x0, NULL
    // 0x72bb08: ret
    //     0x72bb08: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bb0c, size: 0x5c
    // 0x72bb0c: r1 = true
    //     0x72bb0c: add             x1, NULL, #0x20  ; true
    // 0x72bb10: ldr             x2, [SP]
    // 0x72bb14: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x72bb14: ldur            w3, [x2, #0x17]
    // 0x72bb18: DecompressPointer r3
    //     0x72bb18: add             x3, x3, HEAP, lsl #32
    // 0x72bb1c: LoadField: r2 = r3->field_f
    //     0x72bb1c: ldur            w2, [x3, #0xf]
    // 0x72bb20: DecompressPointer r2
    //     0x72bb20: add             x2, x2, HEAP, lsl #32
    // 0x72bb24: LoadField: r4 = r3->field_23
    //     0x72bb24: ldur            w4, [x3, #0x23]
    // 0x72bb28: DecompressPointer r4
    //     0x72bb28: add             x4, x4, HEAP, lsl #32
    // 0x72bb2c: LoadField: r5 = r3->field_1f
    //     0x72bb2c: ldur            w5, [x3, #0x1f]
    // 0x72bb30: DecompressPointer r5
    //     0x72bb30: add             x5, x5, HEAP, lsl #32
    // 0x72bb34: r3 = LoadInt32Instr(r4)
    //     0x72bb34: sbfx            x3, x4, #1, #0x1f
    //     0x72bb38: tbz             w4, #0, #0x72bb40
    //     0x72bb3c: ldur            x3, [x4, #7]
    // 0x72bb40: scvtf           d0, x3
    // 0x72bb44: r3 = LoadInt32Instr(r5)
    //     0x72bb44: sbfx            x3, x5, #1, #0x1f
    //     0x72bb48: tbz             w5, #0, #0x72bb50
    //     0x72bb4c: ldur            x3, [x5, #7]
    // 0x72bb50: scvtf           d1, x3
    // 0x72bb54: fdiv            d2, d0, d1
    // 0x72bb58: StoreField: r2->field_27 = d2
    //     0x72bb58: stur            d2, [x2, #0x27]
    // 0x72bb5c: StoreField: r2->field_3b = r1
    //     0x72bb5c: stur            w1, [x2, #0x3b]
    // 0x72bb60: r0 = Null
    //     0x72bb60: mov             x0, NULL
    // 0x72bb64: ret
    //     0x72bb64: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bb68, size: 0xc0
    // 0x72bb68: EnterFrame
    //     0x72bb68: stp             fp, lr, [SP, #-0x10]!
    //     0x72bb6c: mov             fp, SP
    // 0x72bb70: AllocStack(0x18)
    //     0x72bb70: sub             SP, SP, #0x18
    // 0x72bb74: SetupParameters([dynamic _ /* r1 */])
    //     0x72bb74: add             x0, NULL, #0x20  ; true
    //     0x72bb78: ldr             x1, [fp, #0x10]
    //     0x72bb7c: ldur            w3, [x1, #0x17]
    //     0x72bb80: add             x3, x3, HEAP, lsl #32
    //     0x72bb84: stur            x3, [fp, #-0x10]
    // 0x72bb74: r0 = true
    // 0x72bb88: CheckStackOverflow
    //     0x72bb88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72bb8c: cmp             SP, x16
    //     0x72bb90: b.ls            #0x72bc20
    // 0x72bb94: LoadField: r4 = r3->field_f
    //     0x72bb94: ldur            w4, [x3, #0xf]
    // 0x72bb98: DecompressPointer r4
    //     0x72bb98: add             x4, x4, HEAP, lsl #32
    // 0x72bb9c: stur            x4, [fp, #-8]
    // 0x72bba0: StoreField: r4->field_2f = r0
    //     0x72bba0: stur            w0, [x4, #0x2f]
    // 0x72bba4: r1 = Null
    //     0x72bba4: mov             x1, NULL
    // 0x72bba8: r2 = 4
    //     0x72bba8: mov             x2, #4
    // 0x72bbac: r0 = AllocateArray()
    //     0x72bbac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72bbb0: r16 = "Say Duaları indirilemedi: "
    //     0x72bbb0: add             x16, PP, #0x20, lsl #12  ; [pp+0x202e8] "Say Duaları indirilemedi: "
    //     0x72bbb4: ldr             x16, [x16, #0x2e8]
    // 0x72bbb8: StoreField: r0->field_f = r16
    //     0x72bbb8: stur            w16, [x0, #0xf]
    // 0x72bbbc: ldur            x1, [fp, #-0x10]
    // 0x72bbc0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x72bbc0: ldur            w2, [x1, #0x17]
    // 0x72bbc4: DecompressPointer r2
    //     0x72bbc4: add             x2, x2, HEAP, lsl #32
    // 0x72bbc8: LoadField: r3 = r2->field_37
    //     0x72bbc8: ldur            w3, [x2, #0x37]
    // 0x72bbcc: DecompressPointer r3
    //     0x72bbcc: add             x3, x3, HEAP, lsl #32
    // 0x72bbd0: StoreField: r0->field_13 = r3
    //     0x72bbd0: stur            w3, [x0, #0x13]
    // 0x72bbd4: str             x0, [SP]
    // 0x72bbd8: r0 = _interpolate()
    //     0x72bbd8: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72bbdc: ldur            x1, [fp, #-8]
    // 0x72bbe0: StoreField: r1->field_33 = r0
    //     0x72bbe0: stur            w0, [x1, #0x33]
    //     0x72bbe4: ldurb           w16, [x1, #-1]
    //     0x72bbe8: ldurb           w17, [x0, #-1]
    //     0x72bbec: and             x16, x17, x16, lsr #2
    //     0x72bbf0: tst             x16, HEAP, lsr #32
    //     0x72bbf4: b.eq            #0x72bbfc
    //     0x72bbf8: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72bbfc: ldur            x1, [fp, #-0x10]
    // 0x72bc00: LoadField: r2 = r1->field_f
    //     0x72bc00: ldur            w2, [x1, #0xf]
    // 0x72bc04: DecompressPointer r2
    //     0x72bc04: add             x2, x2, HEAP, lsl #32
    // 0x72bc08: r1 = false
    //     0x72bc08: add             x1, NULL, #0x30  ; false
    // 0x72bc0c: StoreField: r2->field_1f = r1
    //     0x72bc0c: stur            w1, [x2, #0x1f]
    // 0x72bc10: r0 = Null
    //     0x72bc10: mov             x0, NULL
    // 0x72bc14: LeaveFrame
    //     0x72bc14: mov             SP, fp
    //     0x72bc18: ldp             fp, lr, [SP], #0x10
    // 0x72bc1c: ret
    //     0x72bc1c: ret             
    // 0x72bc20: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72bc20: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72bc24: b               #0x72bb94
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bc28, size: 0x28
    // 0x72bc28: r1 = "Say Duaları"
    //     0x72bc28: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f68] "Say Duaları"
    //     0x72bc2c: ldr             x1, [x1, #0xf68]
    // 0x72bc30: ldr             x2, [SP]
    // 0x72bc34: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x72bc34: ldur            w3, [x2, #0x17]
    // 0x72bc38: DecompressPointer r3
    //     0x72bc38: add             x3, x3, HEAP, lsl #32
    // 0x72bc3c: LoadField: r2 = r3->field_f
    //     0x72bc3c: ldur            w2, [x3, #0xf]
    // 0x72bc40: DecompressPointer r2
    //     0x72bc40: add             x2, x2, HEAP, lsl #32
    // 0x72bc44: StoreField: r2->field_23 = r1
    //     0x72bc44: stur            w1, [x2, #0x23]
    // 0x72bc48: r0 = Null
    //     0x72bc48: mov             x0, NULL
    // 0x72bc4c: ret
    //     0x72bc4c: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bc50, size: 0x5c
    // 0x72bc50: r1 = true
    //     0x72bc50: add             x1, NULL, #0x20  ; true
    // 0x72bc54: ldr             x2, [SP]
    // 0x72bc58: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x72bc58: ldur            w3, [x2, #0x17]
    // 0x72bc5c: DecompressPointer r3
    //     0x72bc5c: add             x3, x3, HEAP, lsl #32
    // 0x72bc60: LoadField: r2 = r3->field_f
    //     0x72bc60: ldur            w2, [x3, #0xf]
    // 0x72bc64: DecompressPointer r2
    //     0x72bc64: add             x2, x2, HEAP, lsl #32
    // 0x72bc68: LoadField: r4 = r3->field_23
    //     0x72bc68: ldur            w4, [x3, #0x23]
    // 0x72bc6c: DecompressPointer r4
    //     0x72bc6c: add             x4, x4, HEAP, lsl #32
    // 0x72bc70: LoadField: r5 = r3->field_1f
    //     0x72bc70: ldur            w5, [x3, #0x1f]
    // 0x72bc74: DecompressPointer r5
    //     0x72bc74: add             x5, x5, HEAP, lsl #32
    // 0x72bc78: r3 = LoadInt32Instr(r4)
    //     0x72bc78: sbfx            x3, x4, #1, #0x1f
    //     0x72bc7c: tbz             w4, #0, #0x72bc84
    //     0x72bc80: ldur            x3, [x4, #7]
    // 0x72bc84: scvtf           d0, x3
    // 0x72bc88: r3 = LoadInt32Instr(r5)
    //     0x72bc88: sbfx            x3, x5, #1, #0x1f
    //     0x72bc8c: tbz             w5, #0, #0x72bc94
    //     0x72bc90: ldur            x3, [x5, #7]
    // 0x72bc94: scvtf           d1, x3
    // 0x72bc98: fdiv            d2, d0, d1
    // 0x72bc9c: StoreField: r2->field_27 = d2
    //     0x72bc9c: stur            d2, [x2, #0x27]
    // 0x72bca0: StoreField: r2->field_37 = r1
    //     0x72bca0: stur            w1, [x2, #0x37]
    // 0x72bca4: r0 = Null
    //     0x72bca4: mov             x0, NULL
    // 0x72bca8: ret
    //     0x72bca8: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bcac, size: 0xc0
    // 0x72bcac: EnterFrame
    //     0x72bcac: stp             fp, lr, [SP, #-0x10]!
    //     0x72bcb0: mov             fp, SP
    // 0x72bcb4: AllocStack(0x18)
    //     0x72bcb4: sub             SP, SP, #0x18
    // 0x72bcb8: SetupParameters([dynamic _ /* r1 */])
    //     0x72bcb8: add             x0, NULL, #0x20  ; true
    //     0x72bcbc: ldr             x1, [fp, #0x10]
    //     0x72bcc0: ldur            w3, [x1, #0x17]
    //     0x72bcc4: add             x3, x3, HEAP, lsl #32
    //     0x72bcc8: stur            x3, [fp, #-0x10]
    // 0x72bcb8: r0 = true
    // 0x72bccc: CheckStackOverflow
    //     0x72bccc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72bcd0: cmp             SP, x16
    //     0x72bcd4: b.ls            #0x72bd64
    // 0x72bcd8: LoadField: r4 = r3->field_f
    //     0x72bcd8: ldur            w4, [x3, #0xf]
    // 0x72bcdc: DecompressPointer r4
    //     0x72bcdc: add             x4, x4, HEAP, lsl #32
    // 0x72bce0: stur            x4, [fp, #-8]
    // 0x72bce4: StoreField: r4->field_2f = r0
    //     0x72bce4: stur            w0, [x4, #0x2f]
    // 0x72bce8: r1 = Null
    //     0x72bce8: mov             x1, NULL
    // 0x72bcec: r2 = 4
    //     0x72bcec: mov             x2, #4
    // 0x72bcf0: r0 = AllocateArray()
    //     0x72bcf0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72bcf4: r16 = "Kuran-ı Kerim indirilemedi: "
    //     0x72bcf4: add             x16, PP, #0x20, lsl #12  ; [pp+0x202f0] "Kuran-ı Kerim indirilemedi: "
    //     0x72bcf8: ldr             x16, [x16, #0x2f0]
    // 0x72bcfc: StoreField: r0->field_f = r16
    //     0x72bcfc: stur            w16, [x0, #0xf]
    // 0x72bd00: ldur            x1, [fp, #-0x10]
    // 0x72bd04: LoadField: r2 = r1->field_13
    //     0x72bd04: ldur            w2, [x1, #0x13]
    // 0x72bd08: DecompressPointer r2
    //     0x72bd08: add             x2, x2, HEAP, lsl #32
    // 0x72bd0c: LoadField: r3 = r2->field_37
    //     0x72bd0c: ldur            w3, [x2, #0x37]
    // 0x72bd10: DecompressPointer r3
    //     0x72bd10: add             x3, x3, HEAP, lsl #32
    // 0x72bd14: StoreField: r0->field_13 = r3
    //     0x72bd14: stur            w3, [x0, #0x13]
    // 0x72bd18: str             x0, [SP]
    // 0x72bd1c: r0 = _interpolate()
    //     0x72bd1c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72bd20: ldur            x1, [fp, #-8]
    // 0x72bd24: StoreField: r1->field_33 = r0
    //     0x72bd24: stur            w0, [x1, #0x33]
    //     0x72bd28: ldurb           w16, [x1, #-1]
    //     0x72bd2c: ldurb           w17, [x0, #-1]
    //     0x72bd30: and             x16, x17, x16, lsr #2
    //     0x72bd34: tst             x16, HEAP, lsr #32
    //     0x72bd38: b.eq            #0x72bd40
    //     0x72bd3c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x72bd40: ldur            x1, [fp, #-0x10]
    // 0x72bd44: LoadField: r2 = r1->field_f
    //     0x72bd44: ldur            w2, [x1, #0xf]
    // 0x72bd48: DecompressPointer r2
    //     0x72bd48: add             x2, x2, HEAP, lsl #32
    // 0x72bd4c: r1 = false
    //     0x72bd4c: add             x1, NULL, #0x30  ; false
    // 0x72bd50: StoreField: r2->field_1f = r1
    //     0x72bd50: stur            w1, [x2, #0x1f]
    // 0x72bd54: r0 = Null
    //     0x72bd54: mov             x0, NULL
    // 0x72bd58: LeaveFrame
    //     0x72bd58: mov             SP, fp
    //     0x72bd5c: ldp             fp, lr, [SP], #0x10
    // 0x72bd60: ret
    //     0x72bd60: ret             
    // 0x72bd64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72bd64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72bd68: b               #0x72bcd8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bd6c, size: 0x28
    // 0x72bd6c: r1 = "Kuran-ı Kerim"
    //     0x72bd6c: add             x1, PP, #0x15, lsl #12  ; [pp+0x15f28] "Kuran-ı Kerim"
    //     0x72bd70: ldr             x1, [x1, #0xf28]
    // 0x72bd74: ldr             x2, [SP]
    // 0x72bd78: ArrayLoad: r3 = r2[0]  ; List_4
    //     0x72bd78: ldur            w3, [x2, #0x17]
    // 0x72bd7c: DecompressPointer r3
    //     0x72bd7c: add             x3, x3, HEAP, lsl #32
    // 0x72bd80: LoadField: r2 = r3->field_f
    //     0x72bd80: ldur            w2, [x3, #0xf]
    // 0x72bd84: DecompressPointer r2
    //     0x72bd84: add             x2, x2, HEAP, lsl #32
    // 0x72bd88: StoreField: r2->field_23 = r1
    //     0x72bd88: stur            w1, [x2, #0x23]
    // 0x72bd8c: r0 = Null
    //     0x72bd8c: mov             x0, NULL
    // 0x72bd90: ret
    //     0x72bd90: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bd94, size: 0x38
    // 0x72bd94: r3 = true
    //     0x72bd94: add             x3, NULL, #0x20  ; true
    // 0x72bd98: r2 = false
    //     0x72bd98: add             x2, NULL, #0x30  ; false
    // 0x72bd9c: r1 = ""
    //     0x72bd9c: ldr             x1, [PP, #0x128]  ; [pp+0x128] ""
    // 0x72bda0: ldr             x4, [SP]
    // 0x72bda4: ArrayLoad: r5 = r4[0]  ; List_4
    //     0x72bda4: ldur            w5, [x4, #0x17]
    // 0x72bda8: DecompressPointer r5
    //     0x72bda8: add             x5, x5, HEAP, lsl #32
    // 0x72bdac: LoadField: r4 = r5->field_f
    //     0x72bdac: ldur            w4, [x5, #0xf]
    // 0x72bdb0: DecompressPointer r4
    //     0x72bdb0: add             x4, x4, HEAP, lsl #32
    // 0x72bdb4: StoreField: r4->field_1f = r3
    //     0x72bdb4: stur            w3, [x4, #0x1f]
    // 0x72bdb8: StoreField: r4->field_2f = r2
    //     0x72bdb8: stur            w2, [x4, #0x2f]
    // 0x72bdbc: StoreField: r4->field_33 = r1
    //     0x72bdbc: stur            w1, [x4, #0x33]
    // 0x72bdc0: StoreField: r4->field_27 = rZR
    //     0x72bdc0: stur            xzr, [x4, #0x27]
    // 0x72bdc4: r0 = Null
    //     0x72bdc4: mov             x0, NULL
    // 0x72bdc8: ret
    //     0x72bdc8: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bdcc, size: 0x70
    // 0x72bdcc: EnterFrame
    //     0x72bdcc: stp             fp, lr, [SP, #-0x10]!
    //     0x72bdd0: mov             fp, SP
    // 0x72bdd4: AllocStack(0x10)
    //     0x72bdd4: sub             SP, SP, #0x10
    // 0x72bdd8: SetupParameters([dynamic _ /* r0 */])
    //     0x72bdd8: ldr             x0, [fp, #0x10]
    //     0x72bddc: ldur            w1, [x0, #0x17]
    //     0x72bde0: add             x1, x1, HEAP, lsl #32
    // 0x72bde4: CheckStackOverflow
    //     0x72bde4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72bde8: cmp             SP, x16
    //     0x72bdec: b.ls            #0x72be30
    // 0x72bdf0: LoadField: r0 = r1->field_f
    //     0x72bdf0: ldur            w0, [x1, #0xf]
    // 0x72bdf4: DecompressPointer r0
    //     0x72bdf4: add             x0, x0, HEAP, lsl #32
    // 0x72bdf8: LoadField: r1 = r0->field_f
    //     0x72bdf8: ldur            w1, [x0, #0xf]
    // 0x72bdfc: DecompressPointer r1
    //     0x72bdfc: add             x1, x1, HEAP, lsl #32
    // 0x72be00: cmp             w1, NULL
    // 0x72be04: b.eq            #0x72be38
    // 0x72be08: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72be08: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x72be0c: r0 = of()
    //     0x72be0c: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x72be10: r16 = <Object?>
    //     0x72be10: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x72be14: stp             x0, x16, [SP]
    // 0x72be18: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72be18: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72be1c: r0 = pop()
    //     0x72be1c: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x72be20: r0 = Null
    //     0x72be20: mov             x0, NULL
    // 0x72be24: LeaveFrame
    //     0x72be24: mov             SP, fp
    //     0x72be28: ldp             fp, lr, [SP], #0x10
    // 0x72be2c: ret
    //     0x72be2c: ret             
    // 0x72be30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72be30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72be34: b               #0x72bdf0
    // 0x72be38: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72be38: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic, bool?) {
    // ** addr: 0x72be3c, size: 0x84
    // 0x72be3c: EnterFrame
    //     0x72be3c: stp             fp, lr, [SP, #-0x10]!
    //     0x72be40: mov             fp, SP
    // 0x72be44: AllocStack(0x10)
    //     0x72be44: sub             SP, SP, #0x10
    // 0x72be48: SetupParameters([dynamic _ /* r0 */])
    //     0x72be48: ldr             x0, [fp, #0x18]
    //     0x72be4c: ldur            w1, [x0, #0x17]
    //     0x72be50: add             x1, x1, HEAP, lsl #32
    //     0x72be54: stur            x1, [fp, #-8]
    // 0x72be58: CheckStackOverflow
    //     0x72be58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72be5c: cmp             SP, x16
    //     0x72be60: b.ls            #0x72beb8
    // 0x72be64: r1 = 1
    //     0x72be64: mov             x1, #1
    // 0x72be68: r0 = AllocateContext()
    //     0x72be68: bl              #0x927010  ; AllocateContextStub
    // 0x72be6c: mov             x1, x0
    // 0x72be70: ldur            x0, [fp, #-8]
    // 0x72be74: StoreField: r1->field_b = r0
    //     0x72be74: stur            w0, [x1, #0xb]
    // 0x72be78: ldr             x2, [fp, #0x10]
    // 0x72be7c: StoreField: r1->field_f = r2
    //     0x72be7c: stur            w2, [x1, #0xf]
    // 0x72be80: LoadField: r3 = r0->field_f
    //     0x72be80: ldur            w3, [x0, #0xf]
    // 0x72be84: DecompressPointer r3
    //     0x72be84: add             x3, x3, HEAP, lsl #32
    // 0x72be88: mov             x2, x1
    // 0x72be8c: stur            x3, [fp, #-0x10]
    // 0x72be90: r1 = Function '<anonymous closure>':.
    //     0x72be90: add             x1, PP, #0x20, lsl #12  ; [pp+0x20398] AnonymousClosure: (0x72bec0), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x72be94: ldr             x1, [x1, #0x398]
    // 0x72be98: r0 = AllocateClosure()
    //     0x72be98: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72be9c: ldur            x1, [fp, #-0x10]
    // 0x72bea0: mov             x2, x0
    // 0x72bea4: r0 = setState()
    //     0x72bea4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72bea8: r0 = Null
    //     0x72bea8: mov             x0, NULL
    // 0x72beac: LeaveFrame
    //     0x72beac: mov             SP, fp
    //     0x72beb0: ldp             fp, lr, [SP], #0x10
    // 0x72beb4: ret
    //     0x72beb4: ret             
    // 0x72beb8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72beb8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72bebc: b               #0x72be64
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bec0, size: 0x40
    // 0x72bec0: ldr             x1, [SP]
    // 0x72bec4: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x72bec4: ldur            w2, [x1, #0x17]
    // 0x72bec8: DecompressPointer r2
    //     0x72bec8: add             x2, x2, HEAP, lsl #32
    // 0x72becc: LoadField: r1 = r2->field_b
    //     0x72becc: ldur            w1, [x2, #0xb]
    // 0x72bed0: DecompressPointer r1
    //     0x72bed0: add             x1, x1, HEAP, lsl #32
    // 0x72bed4: LoadField: r3 = r1->field_f
    //     0x72bed4: ldur            w3, [x1, #0xf]
    // 0x72bed8: DecompressPointer r3
    //     0x72bed8: add             x3, x3, HEAP, lsl #32
    // 0x72bedc: LoadField: r1 = r2->field_f
    //     0x72bedc: ldur            w1, [x2, #0xf]
    // 0x72bee0: DecompressPointer r1
    //     0x72bee0: add             x1, x1, HEAP, lsl #32
    // 0x72bee4: cmp             w1, NULL
    // 0x72bee8: b.ne            #0x72bef4
    // 0x72beec: r0 = false
    //     0x72beec: add             x0, NULL, #0x30  ; false
    // 0x72bef0: b               #0x72bef8
    // 0x72bef4: mov             x0, x1
    // 0x72bef8: StoreField: r3->field_1b = r0
    //     0x72bef8: stur            w0, [x3, #0x1b]
    // 0x72befc: ret
    //     0x72befc: ret             
  }
  [closure] void <anonymous closure>(dynamic, bool?) {
    // ** addr: 0x72bf00, size: 0x84
    // 0x72bf00: EnterFrame
    //     0x72bf00: stp             fp, lr, [SP, #-0x10]!
    //     0x72bf04: mov             fp, SP
    // 0x72bf08: AllocStack(0x10)
    //     0x72bf08: sub             SP, SP, #0x10
    // 0x72bf0c: SetupParameters([dynamic _ /* r0 */])
    //     0x72bf0c: ldr             x0, [fp, #0x18]
    //     0x72bf10: ldur            w1, [x0, #0x17]
    //     0x72bf14: add             x1, x1, HEAP, lsl #32
    //     0x72bf18: stur            x1, [fp, #-8]
    // 0x72bf1c: CheckStackOverflow
    //     0x72bf1c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72bf20: cmp             SP, x16
    //     0x72bf24: b.ls            #0x72bf7c
    // 0x72bf28: r1 = 1
    //     0x72bf28: mov             x1, #1
    // 0x72bf2c: r0 = AllocateContext()
    //     0x72bf2c: bl              #0x927010  ; AllocateContextStub
    // 0x72bf30: mov             x1, x0
    // 0x72bf34: ldur            x0, [fp, #-8]
    // 0x72bf38: StoreField: r1->field_b = r0
    //     0x72bf38: stur            w0, [x1, #0xb]
    // 0x72bf3c: ldr             x2, [fp, #0x10]
    // 0x72bf40: StoreField: r1->field_f = r2
    //     0x72bf40: stur            w2, [x1, #0xf]
    // 0x72bf44: LoadField: r3 = r0->field_f
    //     0x72bf44: ldur            w3, [x0, #0xf]
    // 0x72bf48: DecompressPointer r3
    //     0x72bf48: add             x3, x3, HEAP, lsl #32
    // 0x72bf4c: mov             x2, x1
    // 0x72bf50: stur            x3, [fp, #-0x10]
    // 0x72bf54: r1 = Function '<anonymous closure>':.
    //     0x72bf54: add             x1, PP, #0x20, lsl #12  ; [pp+0x203a0] AnonymousClosure: (0x72bf84), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x72bf58: ldr             x1, [x1, #0x3a0]
    // 0x72bf5c: r0 = AllocateClosure()
    //     0x72bf5c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72bf60: ldur            x1, [fp, #-0x10]
    // 0x72bf64: mov             x2, x0
    // 0x72bf68: r0 = setState()
    //     0x72bf68: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72bf6c: r0 = Null
    //     0x72bf6c: mov             x0, NULL
    // 0x72bf70: LeaveFrame
    //     0x72bf70: mov             SP, fp
    //     0x72bf74: ldp             fp, lr, [SP], #0x10
    // 0x72bf78: ret
    //     0x72bf78: ret             
    // 0x72bf7c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72bf7c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72bf80: b               #0x72bf28
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72bf84, size: 0x40
    // 0x72bf84: ldr             x1, [SP]
    // 0x72bf88: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x72bf88: ldur            w2, [x1, #0x17]
    // 0x72bf8c: DecompressPointer r2
    //     0x72bf8c: add             x2, x2, HEAP, lsl #32
    // 0x72bf90: LoadField: r1 = r2->field_b
    //     0x72bf90: ldur            w1, [x2, #0xb]
    // 0x72bf94: DecompressPointer r1
    //     0x72bf94: add             x1, x1, HEAP, lsl #32
    // 0x72bf98: LoadField: r3 = r1->field_f
    //     0x72bf98: ldur            w3, [x1, #0xf]
    // 0x72bf9c: DecompressPointer r3
    //     0x72bf9c: add             x3, x3, HEAP, lsl #32
    // 0x72bfa0: LoadField: r1 = r2->field_f
    //     0x72bfa0: ldur            w1, [x2, #0xf]
    // 0x72bfa4: DecompressPointer r1
    //     0x72bfa4: add             x1, x1, HEAP, lsl #32
    // 0x72bfa8: cmp             w1, NULL
    // 0x72bfac: b.ne            #0x72bfb8
    // 0x72bfb0: r0 = false
    //     0x72bfb0: add             x0, NULL, #0x30  ; false
    // 0x72bfb4: b               #0x72bfbc
    // 0x72bfb8: mov             x0, x1
    // 0x72bfbc: ArrayStore: r3[0] = r0  ; List_4
    //     0x72bfbc: stur            w0, [x3, #0x17]
    // 0x72bfc0: ret
    //     0x72bfc0: ret             
  }
  [closure] void <anonymous closure>(dynamic, bool?) {
    // ** addr: 0x72bfc4, size: 0x84
    // 0x72bfc4: EnterFrame
    //     0x72bfc4: stp             fp, lr, [SP, #-0x10]!
    //     0x72bfc8: mov             fp, SP
    // 0x72bfcc: AllocStack(0x10)
    //     0x72bfcc: sub             SP, SP, #0x10
    // 0x72bfd0: SetupParameters([dynamic _ /* r0 */])
    //     0x72bfd0: ldr             x0, [fp, #0x18]
    //     0x72bfd4: ldur            w1, [x0, #0x17]
    //     0x72bfd8: add             x1, x1, HEAP, lsl #32
    //     0x72bfdc: stur            x1, [fp, #-8]
    // 0x72bfe0: CheckStackOverflow
    //     0x72bfe0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72bfe4: cmp             SP, x16
    //     0x72bfe8: b.ls            #0x72c040
    // 0x72bfec: r1 = 1
    //     0x72bfec: mov             x1, #1
    // 0x72bff0: r0 = AllocateContext()
    //     0x72bff0: bl              #0x927010  ; AllocateContextStub
    // 0x72bff4: mov             x1, x0
    // 0x72bff8: ldur            x0, [fp, #-8]
    // 0x72bffc: StoreField: r1->field_b = r0
    //     0x72bffc: stur            w0, [x1, #0xb]
    // 0x72c000: ldr             x2, [fp, #0x10]
    // 0x72c004: StoreField: r1->field_f = r2
    //     0x72c004: stur            w2, [x1, #0xf]
    // 0x72c008: LoadField: r3 = r0->field_f
    //     0x72c008: ldur            w3, [x0, #0xf]
    // 0x72c00c: DecompressPointer r3
    //     0x72c00c: add             x3, x3, HEAP, lsl #32
    // 0x72c010: mov             x2, x1
    // 0x72c014: stur            x3, [fp, #-0x10]
    // 0x72c018: r1 = Function '<anonymous closure>':.
    //     0x72c018: add             x1, PP, #0x20, lsl #12  ; [pp+0x203a8] AnonymousClosure: (0x72c048), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildSelectionState (0x729690)
    //     0x72c01c: ldr             x1, [x1, #0x3a8]
    // 0x72c020: r0 = AllocateClosure()
    //     0x72c020: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c024: ldur            x1, [fp, #-0x10]
    // 0x72c028: mov             x2, x0
    // 0x72c02c: r0 = setState()
    //     0x72c02c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72c030: r0 = Null
    //     0x72c030: mov             x0, NULL
    // 0x72c034: LeaveFrame
    //     0x72c034: mov             SP, fp
    //     0x72c038: ldp             fp, lr, [SP], #0x10
    // 0x72c03c: ret
    //     0x72c03c: ret             
    // 0x72c040: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72c040: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72c044: b               #0x72bfec
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72c048, size: 0x40
    // 0x72c048: ldr             x1, [SP]
    // 0x72c04c: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x72c04c: ldur            w2, [x1, #0x17]
    // 0x72c050: DecompressPointer r2
    //     0x72c050: add             x2, x2, HEAP, lsl #32
    // 0x72c054: LoadField: r1 = r2->field_b
    //     0x72c054: ldur            w1, [x2, #0xb]
    // 0x72c058: DecompressPointer r1
    //     0x72c058: add             x1, x1, HEAP, lsl #32
    // 0x72c05c: LoadField: r3 = r1->field_f
    //     0x72c05c: ldur            w3, [x1, #0xf]
    // 0x72c060: DecompressPointer r3
    //     0x72c060: add             x3, x3, HEAP, lsl #32
    // 0x72c064: LoadField: r1 = r2->field_f
    //     0x72c064: ldur            w1, [x2, #0xf]
    // 0x72c068: DecompressPointer r1
    //     0x72c068: add             x1, x1, HEAP, lsl #32
    // 0x72c06c: cmp             w1, NULL
    // 0x72c070: b.ne            #0x72c07c
    // 0x72c074: r0 = false
    //     0x72c074: add             x0, NULL, #0x30  ; false
    // 0x72c078: b               #0x72c080
    // 0x72c07c: mov             x0, x1
    // 0x72c080: StoreField: r3->field_13 = r0
    //     0x72c080: stur            w0, [x3, #0x13]
    // 0x72c084: ret
    //     0x72c084: ret             
  }
  _ _buildErrorState(/* No info */) {
    // ** addr: 0x72c088, size: 0x2c0
    // 0x72c088: EnterFrame
    //     0x72c088: stp             fp, lr, [SP, #-0x10]!
    //     0x72c08c: mov             fp, SP
    // 0x72c090: AllocStack(0x28)
    //     0x72c090: sub             SP, SP, #0x28
    // 0x72c094: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x8 */)
    //     0x72c094: stur            x1, [fp, #-8]
    // 0x72c098: CheckStackOverflow
    //     0x72c098: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72c09c: cmp             SP, x16
    //     0x72c0a0: b.ls            #0x72c33c
    // 0x72c0a4: r1 = 1
    //     0x72c0a4: mov             x1, #1
    // 0x72c0a8: r0 = AllocateContext()
    //     0x72c0a8: bl              #0x927010  ; AllocateContextStub
    // 0x72c0ac: mov             x3, x0
    // 0x72c0b0: ldur            x0, [fp, #-8]
    // 0x72c0b4: stur            x3, [fp, #-0x10]
    // 0x72c0b8: StoreField: r3->field_f = r0
    //     0x72c0b8: stur            w0, [x3, #0xf]
    // 0x72c0bc: r1 = _ConstMap len:10
    //     0x72c0bc: ldr             x1, [PP, #0x5760]  ; [pp+0x5760] Map<int, Color>(10)
    // 0x72c0c0: r2 = 800
    //     0x72c0c0: mov             x2, #0x320
    // 0x72c0c4: r0 = []()
    //     0x72c0c4: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72c0c8: stur            x0, [fp, #-0x18]
    // 0x72c0cc: cmp             w0, NULL
    // 0x72c0d0: b.eq            #0x72c344
    // 0x72c0d4: r0 = Icon()
    //     0x72c0d4: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x72c0d8: mov             x1, x0
    // 0x72c0dc: r0 = Instance_IconData
    //     0x72c0dc: add             x0, PP, #0x15, lsl #12  ; [pp+0x155a0] Obj!IconData@a0a201
    //     0x72c0e0: ldr             x0, [x0, #0x5a0]
    // 0x72c0e4: stur            x1, [fp, #-0x20]
    // 0x72c0e8: StoreField: r1->field_b = r0
    //     0x72c0e8: stur            w0, [x1, #0xb]
    // 0x72c0ec: r0 = 48.000000
    //     0x72c0ec: add             x0, PP, #0x15, lsl #12  ; [pp+0x15948] 48
    //     0x72c0f0: ldr             x0, [x0, #0x948]
    // 0x72c0f4: StoreField: r1->field_f = r0
    //     0x72c0f4: stur            w0, [x1, #0xf]
    // 0x72c0f8: ldur            x0, [fp, #-0x18]
    // 0x72c0fc: StoreField: r1->field_23 = r0
    //     0x72c0fc: stur            w0, [x1, #0x23]
    // 0x72c100: ldur            x0, [fp, #-8]
    // 0x72c104: LoadField: r2 = r0->field_33
    //     0x72c104: ldur            w2, [x0, #0x33]
    // 0x72c108: DecompressPointer r2
    //     0x72c108: add             x2, x2, HEAP, lsl #32
    // 0x72c10c: stur            x2, [fp, #-0x18]
    // 0x72c110: r0 = Text()
    //     0x72c110: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72c114: mov             x3, x0
    // 0x72c118: ldur            x0, [fp, #-0x18]
    // 0x72c11c: stur            x3, [fp, #-8]
    // 0x72c120: StoreField: r3->field_b = r0
    //     0x72c120: stur            w0, [x3, #0xb]
    // 0x72c124: r0 = Instance_TextStyle
    //     0x72c124: add             x0, PP, #0x20, lsl #12  ; [pp+0x203c0] Obj!TextStyle@a18011
    //     0x72c128: ldr             x0, [x0, #0x3c0]
    // 0x72c12c: StoreField: r3->field_13 = r0
    //     0x72c12c: stur            w0, [x3, #0x13]
    // 0x72c130: r0 = Instance_TextAlign
    //     0x72c130: ldr             x0, [PP, #0x4af0]  ; [pp+0x4af0] Obj!TextAlign@a2cf51
    // 0x72c134: StoreField: r3->field_1b = r0
    //     0x72c134: stur            w0, [x3, #0x1b]
    // 0x72c138: ldur            x2, [fp, #-0x10]
    // 0x72c13c: r1 = Function '<anonymous closure>':.
    //     0x72c13c: add             x1, PP, #0x20, lsl #12  ; [pp+0x203c8] AnonymousClosure: (0x72c3c0), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildErrorState (0x72c088)
    //     0x72c140: ldr             x1, [x1, #0x3c8]
    // 0x72c144: r0 = AllocateClosure()
    //     0x72c144: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c148: stur            x0, [fp, #-0x18]
    // 0x72c14c: r0 = TextButton()
    //     0x72c14c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x72c150: mov             x3, x0
    // 0x72c154: ldur            x0, [fp, #-0x18]
    // 0x72c158: stur            x3, [fp, #-0x28]
    // 0x72c15c: StoreField: r3->field_b = r0
    //     0x72c15c: stur            w0, [x3, #0xb]
    // 0x72c160: r0 = false
    //     0x72c160: add             x0, NULL, #0x30  ; false
    // 0x72c164: StoreField: r3->field_27 = r0
    //     0x72c164: stur            w0, [x3, #0x27]
    // 0x72c168: r4 = true
    //     0x72c168: add             x4, NULL, #0x20  ; true
    // 0x72c16c: StoreField: r3->field_2f = r4
    //     0x72c16c: stur            w4, [x3, #0x2f]
    // 0x72c170: r1 = Instance_Text
    //     0x72c170: add             x1, PP, #0x14, lsl #12  ; [pp+0x147d0] Obj!Text@a1b0e1
    //     0x72c174: ldr             x1, [x1, #0x7d0]
    // 0x72c178: StoreField: r3->field_37 = r1
    //     0x72c178: stur            w1, [x3, #0x37]
    // 0x72c17c: ldur            x2, [fp, #-0x10]
    // 0x72c180: r1 = Function '<anonymous closure>':.
    //     0x72c180: add             x1, PP, #0x20, lsl #12  ; [pp+0x203d0] AnonymousClosure: (0x72c348), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildErrorState (0x72c088)
    //     0x72c184: ldr             x1, [x1, #0x3d0]
    // 0x72c188: r0 = AllocateClosure()
    //     0x72c188: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c18c: stur            x0, [fp, #-0x10]
    // 0x72c190: r0 = ElevatedButton()
    //     0x72c190: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x72c194: mov             x3, x0
    // 0x72c198: ldur            x0, [fp, #-0x10]
    // 0x72c19c: stur            x3, [fp, #-0x18]
    // 0x72c1a0: StoreField: r3->field_b = r0
    //     0x72c1a0: stur            w0, [x3, #0xb]
    // 0x72c1a4: r0 = false
    //     0x72c1a4: add             x0, NULL, #0x30  ; false
    // 0x72c1a8: StoreField: r3->field_27 = r0
    //     0x72c1a8: stur            w0, [x3, #0x27]
    // 0x72c1ac: r0 = true
    //     0x72c1ac: add             x0, NULL, #0x20  ; true
    // 0x72c1b0: StoreField: r3->field_2f = r0
    //     0x72c1b0: stur            w0, [x3, #0x2f]
    // 0x72c1b4: r0 = Instance_Text
    //     0x72c1b4: add             x0, PP, #0x16, lsl #12  ; [pp+0x160d8] Obj!Text@a1c531
    //     0x72c1b8: ldr             x0, [x0, #0xd8]
    // 0x72c1bc: StoreField: r3->field_37 = r0
    //     0x72c1bc: stur            w0, [x3, #0x37]
    // 0x72c1c0: r1 = Null
    //     0x72c1c0: mov             x1, NULL
    // 0x72c1c4: r2 = 4
    //     0x72c1c4: mov             x2, #4
    // 0x72c1c8: r0 = AllocateArray()
    //     0x72c1c8: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72c1cc: mov             x2, x0
    // 0x72c1d0: ldur            x0, [fp, #-0x28]
    // 0x72c1d4: stur            x2, [fp, #-0x10]
    // 0x72c1d8: StoreField: r2->field_f = r0
    //     0x72c1d8: stur            w0, [x2, #0xf]
    // 0x72c1dc: ldur            x0, [fp, #-0x18]
    // 0x72c1e0: StoreField: r2->field_13 = r0
    //     0x72c1e0: stur            w0, [x2, #0x13]
    // 0x72c1e4: r1 = <Widget>
    //     0x72c1e4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72c1e8: r0 = AllocateGrowableArray()
    //     0x72c1e8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72c1ec: mov             x1, x0
    // 0x72c1f0: ldur            x0, [fp, #-0x10]
    // 0x72c1f4: stur            x1, [fp, #-0x18]
    // 0x72c1f8: StoreField: r1->field_f = r0
    //     0x72c1f8: stur            w0, [x1, #0xf]
    // 0x72c1fc: r0 = 4
    //     0x72c1fc: mov             x0, #4
    // 0x72c200: StoreField: r1->field_b = r0
    //     0x72c200: stur            w0, [x1, #0xb]
    // 0x72c204: r0 = Row()
    //     0x72c204: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x72c208: mov             x3, x0
    // 0x72c20c: r0 = Instance_Axis
    //     0x72c20c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x72c210: stur            x3, [fp, #-0x10]
    // 0x72c214: StoreField: r3->field_f = r0
    //     0x72c214: stur            w0, [x3, #0xf]
    // 0x72c218: r0 = Instance_MainAxisAlignment
    //     0x72c218: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1ab38] Obj!MainAxisAlignment@a2a611
    //     0x72c21c: ldr             x0, [x0, #0xb38]
    // 0x72c220: StoreField: r3->field_13 = r0
    //     0x72c220: stur            w0, [x3, #0x13]
    // 0x72c224: r0 = Instance_MainAxisSize
    //     0x72c224: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72c228: ldr             x0, [x0, #0x330]
    // 0x72c22c: ArrayStore: r3[0] = r0  ; List_4
    //     0x72c22c: stur            w0, [x3, #0x17]
    // 0x72c230: r0 = Instance_CrossAxisAlignment
    //     0x72c230: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72c234: ldr             x0, [x0, #0x338]
    // 0x72c238: StoreField: r3->field_1b = r0
    //     0x72c238: stur            w0, [x3, #0x1b]
    // 0x72c23c: r4 = Instance_VerticalDirection
    //     0x72c23c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72c240: ldr             x4, [x4, #0x340]
    // 0x72c244: StoreField: r3->field_23 = r4
    //     0x72c244: stur            w4, [x3, #0x23]
    // 0x72c248: r5 = Instance_Clip
    //     0x72c248: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72c24c: ldr             x5, [x5, #0x348]
    // 0x72c250: StoreField: r3->field_2b = r5
    //     0x72c250: stur            w5, [x3, #0x2b]
    // 0x72c254: StoreField: r3->field_2f = rZR
    //     0x72c254: stur            xzr, [x3, #0x2f]
    // 0x72c258: ldur            x1, [fp, #-0x18]
    // 0x72c25c: StoreField: r3->field_b = r1
    //     0x72c25c: stur            w1, [x3, #0xb]
    // 0x72c260: r1 = Null
    //     0x72c260: mov             x1, NULL
    // 0x72c264: r2 = 14
    //     0x72c264: mov             x2, #0xe
    // 0x72c268: r0 = AllocateArray()
    //     0x72c268: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72c26c: mov             x2, x0
    // 0x72c270: ldur            x0, [fp, #-0x20]
    // 0x72c274: stur            x2, [fp, #-0x18]
    // 0x72c278: StoreField: r2->field_f = r0
    //     0x72c278: stur            w0, [x2, #0xf]
    // 0x72c27c: r16 = Instance_SizedBox
    //     0x72c27c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72c280: ldr             x16, [x16, #0x310]
    // 0x72c284: StoreField: r2->field_13 = r16
    //     0x72c284: stur            w16, [x2, #0x13]
    // 0x72c288: r16 = Instance_Text
    //     0x72c288: add             x16, PP, #0x20, lsl #12  ; [pp+0x203d8] Obj!Text@a1cbc1
    //     0x72c28c: ldr             x16, [x16, #0x3d8]
    // 0x72c290: ArrayStore: r2[0] = r16  ; List_4
    //     0x72c290: stur            w16, [x2, #0x17]
    // 0x72c294: r16 = Instance_SizedBox
    //     0x72c294: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x72c298: ldr             x16, [x16, #0x220]
    // 0x72c29c: StoreField: r2->field_1b = r16
    //     0x72c29c: stur            w16, [x2, #0x1b]
    // 0x72c2a0: ldur            x0, [fp, #-8]
    // 0x72c2a4: StoreField: r2->field_1f = r0
    //     0x72c2a4: stur            w0, [x2, #0x1f]
    // 0x72c2a8: r16 = Instance_SizedBox
    //     0x72c2a8: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x72c2ac: ldr             x16, [x16, #0x320]
    // 0x72c2b0: StoreField: r2->field_23 = r16
    //     0x72c2b0: stur            w16, [x2, #0x23]
    // 0x72c2b4: ldur            x0, [fp, #-0x10]
    // 0x72c2b8: StoreField: r2->field_27 = r0
    //     0x72c2b8: stur            w0, [x2, #0x27]
    // 0x72c2bc: r1 = <Widget>
    //     0x72c2bc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72c2c0: r0 = AllocateGrowableArray()
    //     0x72c2c0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72c2c4: mov             x1, x0
    // 0x72c2c8: ldur            x0, [fp, #-0x18]
    // 0x72c2cc: stur            x1, [fp, #-8]
    // 0x72c2d0: StoreField: r1->field_f = r0
    //     0x72c2d0: stur            w0, [x1, #0xf]
    // 0x72c2d4: r0 = 14
    //     0x72c2d4: mov             x0, #0xe
    // 0x72c2d8: StoreField: r1->field_b = r0
    //     0x72c2d8: stur            w0, [x1, #0xb]
    // 0x72c2dc: r0 = Column()
    //     0x72c2dc: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72c2e0: r1 = Instance_Axis
    //     0x72c2e0: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72c2e4: StoreField: r0->field_f = r1
    //     0x72c2e4: stur            w1, [x0, #0xf]
    // 0x72c2e8: r1 = Instance_MainAxisAlignment
    //     0x72c2e8: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72c2ec: ldr             x1, [x1, #0x230]
    // 0x72c2f0: StoreField: r0->field_13 = r1
    //     0x72c2f0: stur            w1, [x0, #0x13]
    // 0x72c2f4: r1 = Instance_MainAxisSize
    //     0x72c2f4: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x72c2f8: ldr             x1, [x1, #0xb60]
    // 0x72c2fc: ArrayStore: r0[0] = r1  ; List_4
    //     0x72c2fc: stur            w1, [x0, #0x17]
    // 0x72c300: r1 = Instance_CrossAxisAlignment
    //     0x72c300: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72c304: ldr             x1, [x1, #0x338]
    // 0x72c308: StoreField: r0->field_1b = r1
    //     0x72c308: stur            w1, [x0, #0x1b]
    // 0x72c30c: r1 = Instance_VerticalDirection
    //     0x72c30c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72c310: ldr             x1, [x1, #0x340]
    // 0x72c314: StoreField: r0->field_23 = r1
    //     0x72c314: stur            w1, [x0, #0x23]
    // 0x72c318: r1 = Instance_Clip
    //     0x72c318: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72c31c: ldr             x1, [x1, #0x348]
    // 0x72c320: StoreField: r0->field_2b = r1
    //     0x72c320: stur            w1, [x0, #0x2b]
    // 0x72c324: StoreField: r0->field_2f = rZR
    //     0x72c324: stur            xzr, [x0, #0x2f]
    // 0x72c328: ldur            x1, [fp, #-8]
    // 0x72c32c: StoreField: r0->field_b = r1
    //     0x72c32c: stur            w1, [x0, #0xb]
    // 0x72c330: LeaveFrame
    //     0x72c330: mov             SP, fp
    //     0x72c334: ldp             fp, lr, [SP], #0x10
    // 0x72c338: ret
    //     0x72c338: ret             
    // 0x72c33c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72c33c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72c340: b               #0x72c0a4
    // 0x72c344: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72c344: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72c348, size: 0x78
    // 0x72c348: EnterFrame
    //     0x72c348: stp             fp, lr, [SP, #-0x10]!
    //     0x72c34c: mov             fp, SP
    // 0x72c350: AllocStack(0x10)
    //     0x72c350: sub             SP, SP, #0x10
    // 0x72c354: SetupParameters([dynamic _ /* r0 */])
    //     0x72c354: ldr             x0, [fp, #0x10]
    //     0x72c358: ldur            w3, [x0, #0x17]
    //     0x72c35c: add             x3, x3, HEAP, lsl #32
    //     0x72c360: stur            x3, [fp, #-0x10]
    // 0x72c364: CheckStackOverflow
    //     0x72c364: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72c368: cmp             SP, x16
    //     0x72c36c: b.ls            #0x72c3b8
    // 0x72c370: LoadField: r0 = r3->field_f
    //     0x72c370: ldur            w0, [x3, #0xf]
    // 0x72c374: DecompressPointer r0
    //     0x72c374: add             x0, x0, HEAP, lsl #32
    // 0x72c378: mov             x2, x3
    // 0x72c37c: stur            x0, [fp, #-8]
    // 0x72c380: r1 = Function '<anonymous closure>':.
    //     0x72c380: add             x1, PP, #0x20, lsl #12  ; [pp+0x203e0] AnonymousClosure: (0x5e74e8), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission (0x5e7390)
    //     0x72c384: ldr             x1, [x1, #0x3e0]
    // 0x72c388: r0 = AllocateClosure()
    //     0x72c388: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c38c: ldur            x1, [fp, #-8]
    // 0x72c390: mov             x2, x0
    // 0x72c394: r0 = setState()
    //     0x72c394: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72c398: ldur            x0, [fp, #-0x10]
    // 0x72c39c: LoadField: r1 = r0->field_f
    //     0x72c39c: ldur            w1, [x0, #0xf]
    // 0x72c3a0: DecompressPointer r1
    //     0x72c3a0: add             x1, x1, HEAP, lsl #32
    // 0x72c3a4: r0 = _startDownload()
    //     0x72c3a4: bl              #0x72a194  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_startDownload
    // 0x72c3a8: r0 = Null
    //     0x72c3a8: mov             x0, NULL
    // 0x72c3ac: LeaveFrame
    //     0x72c3ac: mov             SP, fp
    //     0x72c3b0: ldp             fp, lr, [SP], #0x10
    // 0x72c3b4: ret
    //     0x72c3b4: ret             
    // 0x72c3b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72c3b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72c3bc: b               #0x72c370
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72c3c0, size: 0xa4
    // 0x72c3c0: EnterFrame
    //     0x72c3c0: stp             fp, lr, [SP, #-0x10]!
    //     0x72c3c4: mov             fp, SP
    // 0x72c3c8: AllocStack(0x20)
    //     0x72c3c8: sub             SP, SP, #0x20
    // 0x72c3cc: SetupParameters([dynamic _ /* r0 */])
    //     0x72c3cc: ldr             x0, [fp, #0x10]
    //     0x72c3d0: ldur            w3, [x0, #0x17]
    //     0x72c3d4: add             x3, x3, HEAP, lsl #32
    //     0x72c3d8: stur            x3, [fp, #-0x10]
    // 0x72c3dc: CheckStackOverflow
    //     0x72c3dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72c3e0: cmp             SP, x16
    //     0x72c3e4: b.ls            #0x72c458
    // 0x72c3e8: LoadField: r0 = r3->field_f
    //     0x72c3e8: ldur            w0, [x3, #0xf]
    // 0x72c3ec: DecompressPointer r0
    //     0x72c3ec: add             x0, x0, HEAP, lsl #32
    // 0x72c3f0: mov             x2, x3
    // 0x72c3f4: stur            x0, [fp, #-8]
    // 0x72c3f8: r1 = Function '<anonymous closure>':.
    //     0x72c3f8: add             x1, PP, #0x20, lsl #12  ; [pp+0x203e8] AnonymousClosure: (0x5e74e8), in [package:umrem_demo/features/home/screens/profil.dart] _ProfilScreenState::_checkLocationPermission (0x5e7390)
    //     0x72c3fc: ldr             x1, [x1, #0x3e8]
    // 0x72c400: r0 = AllocateClosure()
    //     0x72c400: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c404: ldur            x1, [fp, #-8]
    // 0x72c408: mov             x2, x0
    // 0x72c40c: r0 = setState()
    //     0x72c40c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x72c410: ldur            x0, [fp, #-0x10]
    // 0x72c414: LoadField: r1 = r0->field_f
    //     0x72c414: ldur            w1, [x0, #0xf]
    // 0x72c418: DecompressPointer r1
    //     0x72c418: add             x1, x1, HEAP, lsl #32
    // 0x72c41c: LoadField: r0 = r1->field_f
    //     0x72c41c: ldur            w0, [x1, #0xf]
    // 0x72c420: DecompressPointer r0
    //     0x72c420: add             x0, x0, HEAP, lsl #32
    // 0x72c424: cmp             w0, NULL
    // 0x72c428: b.eq            #0x72c460
    // 0x72c42c: mov             x1, x0
    // 0x72c430: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72c430: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x72c434: r0 = of()
    //     0x72c434: bl              #0x40bb04  ; [package:flutter/src/widgets/navigator.dart] Navigator::of
    // 0x72c438: r16 = <Object?>
    //     0x72c438: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x72c43c: stp             x0, x16, [SP]
    // 0x72c440: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72c440: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x72c444: r0 = pop()
    //     0x72c444: bl              #0x3fc2bc  ; [package:flutter/src/widgets/navigator.dart] NavigatorState::pop
    // 0x72c448: r0 = Null
    //     0x72c448: mov             x0, NULL
    // 0x72c44c: LeaveFrame
    //     0x72c44c: mov             SP, fp
    //     0x72c450: ldp             fp, lr, [SP], #0x10
    // 0x72c454: ret
    //     0x72c454: ret             
    // 0x72c458: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72c458: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72c45c: b               #0x72c3e8
    // 0x72c460: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72c460: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  _ _buildDownloadingState(/* No info */) {
    // ** addr: 0x72c464, size: 0x58
    // 0x72c464: EnterFrame
    //     0x72c464: stp             fp, lr, [SP, #-0x10]!
    //     0x72c468: mov             fp, SP
    // 0x72c46c: AllocStack(0x8)
    //     0x72c46c: sub             SP, SP, #8
    // 0x72c470: SetupParameters(_ContentDownloadDialogState this /* r1 => r1, fp-0x8 */)
    //     0x72c470: stur            x1, [fp, #-8]
    // 0x72c474: r1 = 1
    //     0x72c474: mov             x1, #1
    // 0x72c478: r0 = AllocateContext()
    //     0x72c478: bl              #0x927010  ; AllocateContextStub
    // 0x72c47c: mov             x1, x0
    // 0x72c480: ldur            x0, [fp, #-8]
    // 0x72c484: StoreField: r1->field_f = r0
    //     0x72c484: stur            w0, [x1, #0xf]
    // 0x72c488: mov             x2, x1
    // 0x72c48c: r1 = Function '<anonymous closure>':.
    //     0x72c48c: add             x1, PP, #0x20, lsl #12  ; [pp+0x203f0] AnonymousClosure: (0x72c4c8), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildDownloadingState (0x72c464)
    //     0x72c490: ldr             x1, [x1, #0x3f0]
    // 0x72c494: r0 = AllocateClosure()
    //     0x72c494: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c498: r1 = <QuranDownloadProvider, SayDualariDownloadProvider, TavafDualariDownloadProvider>
    //     0x72c498: add             x1, PP, #0x20, lsl #12  ; [pp+0x203f8] TypeArguments: <QuranDownloadProvider, SayDualariDownloadProvider, TavafDualariDownloadProvider>
    //     0x72c49c: ldr             x1, [x1, #0x3f8]
    // 0x72c4a0: stur            x0, [fp, #-8]
    // 0x72c4a4: r0 = Consumer3()
    //     0x72c4a4: bl              #0x72c4bc  ; AllocateConsumer3Stub -> Consumer3<X0, X1, X2> (size=0x18)
    // 0x72c4a8: ldur            x1, [fp, #-8]
    // 0x72c4ac: StoreField: r0->field_13 = r1
    //     0x72c4ac: stur            w1, [x0, #0x13]
    // 0x72c4b0: LeaveFrame
    //     0x72c4b0: mov             SP, fp
    //     0x72c4b4: ldp             fp, lr, [SP], #0x10
    // 0x72c4b8: ret
    //     0x72c4b8: ret             
  }
  [closure] Column <anonymous closure>(dynamic, BuildContext, QuranDownloadProvider, SayDualariDownloadProvider, TavafDualariDownloadProvider, Widget?) {
    // ** addr: 0x72c4c8, size: 0x3d8
    // 0x72c4c8: EnterFrame
    //     0x72c4c8: stp             fp, lr, [SP, #-0x10]!
    //     0x72c4cc: mov             fp, SP
    // 0x72c4d0: AllocStack(0x40)
    //     0x72c4d0: sub             SP, SP, #0x40
    // 0x72c4d4: SetupParameters([dynamic _ /* r0 */])
    //     0x72c4d4: ldr             x0, [fp, #0x38]
    //     0x72c4d8: ldur            w1, [x0, #0x17]
    //     0x72c4dc: add             x1, x1, HEAP, lsl #32
    //     0x72c4e0: stur            x1, [fp, #-8]
    // 0x72c4e4: CheckStackOverflow
    //     0x72c4e4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72c4e8: cmp             SP, x16
    //     0x72c4ec: b.ls            #0x72c860
    // 0x72c4f0: r1 = 3
    //     0x72c4f0: mov             x1, #3
    // 0x72c4f4: r0 = AllocateContext()
    //     0x72c4f4: bl              #0x927010  ; AllocateContextStub
    // 0x72c4f8: mov             x3, x0
    // 0x72c4fc: ldur            x0, [fp, #-8]
    // 0x72c500: stur            x3, [fp, #-0x10]
    // 0x72c504: StoreField: r3->field_b = r0
    //     0x72c504: stur            w0, [x3, #0xb]
    // 0x72c508: ldr             x1, [fp, #0x28]
    // 0x72c50c: StoreField: r3->field_f = r1
    //     0x72c50c: stur            w1, [x3, #0xf]
    // 0x72c510: ldr             x1, [fp, #0x20]
    // 0x72c514: StoreField: r3->field_13 = r1
    //     0x72c514: stur            w1, [x3, #0x13]
    // 0x72c518: ldr             x1, [fp, #0x18]
    // 0x72c51c: ArrayStore: r3[0] = r1  ; List_4
    //     0x72c51c: stur            w1, [x3, #0x17]
    // 0x72c520: r1 = <Widget>
    //     0x72c520: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72c524: r2 = 18
    //     0x72c524: mov             x2, #0x12
    // 0x72c528: r0 = AllocateArray()
    //     0x72c528: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72c52c: stur            x0, [fp, #-0x28]
    // 0x72c530: r16 = Instance_CircularProgressIndicator
    //     0x72c530: add             x16, PP, #0x20, lsl #12  ; [pp+0x20400] Obj!CircularProgressIndicator@a20951
    //     0x72c534: ldr             x16, [x16, #0x400]
    // 0x72c538: StoreField: r0->field_f = r16
    //     0x72c538: stur            w16, [x0, #0xf]
    // 0x72c53c: r16 = Instance_SizedBox
    //     0x72c53c: add             x16, PP, #0x11, lsl #12  ; [pp+0x11320] Obj!SizedBox@a1fb31
    //     0x72c540: ldr             x16, [x16, #0x320]
    // 0x72c544: StoreField: r0->field_13 = r16
    //     0x72c544: stur            w16, [x0, #0x13]
    // 0x72c548: ldur            x1, [fp, #-8]
    // 0x72c54c: LoadField: r2 = r1->field_f
    //     0x72c54c: ldur            w2, [x1, #0xf]
    // 0x72c550: DecompressPointer r2
    //     0x72c550: add             x2, x2, HEAP, lsl #32
    // 0x72c554: stur            x2, [fp, #-0x20]
    // 0x72c558: LoadField: r3 = r2->field_23
    //     0x72c558: ldur            w3, [x2, #0x23]
    // 0x72c55c: DecompressPointer r3
    //     0x72c55c: add             x3, x3, HEAP, lsl #32
    // 0x72c560: stur            x3, [fp, #-0x18]
    // 0x72c564: r0 = Text()
    //     0x72c564: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72c568: mov             x1, x0
    // 0x72c56c: ldur            x0, [fp, #-0x18]
    // 0x72c570: StoreField: r1->field_b = r0
    //     0x72c570: stur            w0, [x1, #0xb]
    // 0x72c574: r0 = Instance_TextStyle
    //     0x72c574: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a70] Obj!TextStyle@a17831
    //     0x72c578: ldr             x0, [x0, #0xa70]
    // 0x72c57c: StoreField: r1->field_13 = r0
    //     0x72c57c: stur            w0, [x1, #0x13]
    // 0x72c580: mov             x0, x1
    // 0x72c584: ldur            x1, [fp, #-0x28]
    // 0x72c588: ArrayStore: r1[2] = r0  ; List_4
    //     0x72c588: add             x25, x1, #0x17
    //     0x72c58c: str             w0, [x25]
    //     0x72c590: tbz             w0, #0, #0x72c5ac
    //     0x72c594: ldurb           w16, [x1, #-1]
    //     0x72c598: ldurb           w17, [x0, #-1]
    //     0x72c59c: and             x16, x17, x16, lsr #2
    //     0x72c5a0: tst             x16, HEAP, lsr #32
    //     0x72c5a4: b.eq            #0x72c5ac
    //     0x72c5a8: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72c5ac: ldur            x0, [fp, #-0x28]
    // 0x72c5b0: r16 = Instance_SizedBox
    //     0x72c5b0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12220] Obj!SizedBox@a1f9f1
    //     0x72c5b4: ldr             x16, [x16, #0x220]
    // 0x72c5b8: StoreField: r0->field_1b = r16
    //     0x72c5b8: stur            w16, [x0, #0x1b]
    // 0x72c5bc: ldur            x1, [fp, #-0x20]
    // 0x72c5c0: LoadField: d0 = r1->field_27
    //     0x72c5c0: ldur            d0, [x1, #0x27]
    // 0x72c5c4: stur            d0, [fp, #-0x38]
    // 0x72c5c8: r1 = _ConstMap len:12
    //     0x72c5c8: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72c5cc: r2 = 400
    //     0x72c5cc: mov             x2, #0x190
    // 0x72c5d0: r0 = []()
    //     0x72c5d0: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72c5d4: stur            x0, [fp, #-0x18]
    // 0x72c5d8: cmp             w0, NULL
    // 0x72c5dc: b.eq            #0x72c868
    // 0x72c5e0: ldr             x1, [fp, #0x30]
    // 0x72c5e4: r0 = of()
    //     0x72c5e4: bl              #0x40f3ec  ; [package:flutter/src/material/theme.dart] Theme::of
    // 0x72c5e8: LoadField: r2 = r0->field_5b
    //     0x72c5e8: ldur            w2, [x0, #0x5b]
    // 0x72c5ec: DecompressPointer r2
    //     0x72c5ec: add             x2, x2, HEAP, lsl #32
    // 0x72c5f0: stur            x2, [fp, #-0x20]
    // 0x72c5f4: r1 = <Color>
    //     0x72c5f4: add             x1, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x72c5f8: ldr             x1, [x1, #0x800]
    // 0x72c5fc: r0 = AlwaysStoppedAnimation()
    //     0x72c5fc: bl              #0x5fcb78  ; AllocateAlwaysStoppedAnimationStub -> AlwaysStoppedAnimation<X0> (size=0x10)
    // 0x72c600: mov             x1, x0
    // 0x72c604: ldur            x0, [fp, #-0x20]
    // 0x72c608: stur            x1, [fp, #-0x30]
    // 0x72c60c: StoreField: r1->field_b = r0
    //     0x72c60c: stur            w0, [x1, #0xb]
    // 0x72c610: ldur            d0, [fp, #-0x38]
    // 0x72c614: r0 = inline_Allocate_Double()
    //     0x72c614: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x72c618: add             x0, x0, #0x10
    //     0x72c61c: cmp             x2, x0
    //     0x72c620: b.ls            #0x72c86c
    //     0x72c624: str             x0, [THR, #0x60]  ; THR::top
    //     0x72c628: sub             x0, x0, #0xf
    //     0x72c62c: mov             x2, #0xe15c
    //     0x72c630: movk            x2, #3, lsl #16
    //     0x72c634: stur            x2, [x0, #-1]
    // 0x72c638: StoreField: r0->field_7 = d0
    //     0x72c638: stur            d0, [x0, #7]
    // 0x72c63c: stur            x0, [fp, #-0x20]
    // 0x72c640: r0 = LinearProgressIndicator()
    //     0x72c640: bl              #0x72c8a0  ; AllocateLinearProgressIndicatorStub -> LinearProgressIndicator (size=0x40)
    // 0x72c644: mov             x1, x0
    // 0x72c648: ldur            x0, [fp, #-0x20]
    // 0x72c64c: StoreField: r1->field_b = r0
    //     0x72c64c: stur            w0, [x1, #0xb]
    // 0x72c650: ldur            x0, [fp, #-0x18]
    // 0x72c654: StoreField: r1->field_f = r0
    //     0x72c654: stur            w0, [x1, #0xf]
    // 0x72c658: ldur            x0, [fp, #-0x30]
    // 0x72c65c: ArrayStore: r1[0] = r0  ; List_4
    //     0x72c65c: stur            w0, [x1, #0x17]
    // 0x72c660: mov             x0, x1
    // 0x72c664: ldur            x1, [fp, #-0x28]
    // 0x72c668: ArrayStore: r1[4] = r0  ; List_4
    //     0x72c668: add             x25, x1, #0x1f
    //     0x72c66c: str             w0, [x25]
    //     0x72c670: tbz             w0, #0, #0x72c68c
    //     0x72c674: ldurb           w16, [x1, #-1]
    //     0x72c678: ldurb           w17, [x0, #-1]
    //     0x72c67c: and             x16, x17, x16, lsr #2
    //     0x72c680: tst             x16, HEAP, lsr #32
    //     0x72c684: b.eq            #0x72c68c
    //     0x72c688: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72c68c: ldur            x0, [fp, #-0x28]
    // 0x72c690: r16 = Instance_SizedBox
    //     0x72c690: add             x16, PP, #0x11, lsl #12  ; [pp+0x11318] Obj!SizedBox@a1fb11
    //     0x72c694: ldr             x16, [x16, #0x318]
    // 0x72c698: StoreField: r0->field_23 = r16
    //     0x72c698: stur            w16, [x0, #0x23]
    // 0x72c69c: r1 = Null
    //     0x72c69c: mov             x1, NULL
    // 0x72c6a0: r2 = 4
    //     0x72c6a0: mov             x2, #4
    // 0x72c6a4: r0 = AllocateArray()
    //     0x72c6a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72c6a8: stur            x0, [fp, #-0x18]
    // 0x72c6ac: r16 = "Genel: %"
    //     0x72c6ac: add             x16, PP, #0x20, lsl #12  ; [pp+0x20408] "Genel: %"
    //     0x72c6b0: ldr             x16, [x16, #0x408]
    // 0x72c6b4: StoreField: r0->field_f = r16
    //     0x72c6b4: stur            w16, [x0, #0xf]
    // 0x72c6b8: ldur            x1, [fp, #-8]
    // 0x72c6bc: LoadField: r2 = r1->field_f
    //     0x72c6bc: ldur            w2, [x1, #0xf]
    // 0x72c6c0: DecompressPointer r2
    //     0x72c6c0: add             x2, x2, HEAP, lsl #32
    // 0x72c6c4: LoadField: d0 = r2->field_27
    //     0x72c6c4: ldur            d0, [x2, #0x27]
    // 0x72c6c8: d1 = 100.000000
    //     0x72c6c8: ldr             d1, [PP, #0x5c00]  ; [pp+0x5c00] IMM: double(100) from 0x4059000000000000
    // 0x72c6cc: fmul            d2, d0, d1
    // 0x72c6d0: r1 = inline_Allocate_Double()
    //     0x72c6d0: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x72c6d4: add             x1, x1, #0x10
    //     0x72c6d8: cmp             x2, x1
    //     0x72c6dc: b.ls            #0x72c884
    //     0x72c6e0: str             x1, [THR, #0x60]  ; THR::top
    //     0x72c6e4: sub             x1, x1, #0xf
    //     0x72c6e8: mov             x2, #0xe15c
    //     0x72c6ec: movk            x2, #3, lsl #16
    //     0x72c6f0: stur            x2, [x1, #-1]
    // 0x72c6f4: StoreField: r1->field_7 = d2
    //     0x72c6f4: stur            d2, [x1, #7]
    // 0x72c6f8: r2 = 0
    //     0x72c6f8: mov             x2, #0
    // 0x72c6fc: r0 = toStringAsFixed()
    //     0x72c6fc: bl              #0x4b4400  ; [dart:core] _Double::toStringAsFixed
    // 0x72c700: ldur            x1, [fp, #-0x18]
    // 0x72c704: ArrayStore: r1[1] = r0  ; List_4
    //     0x72c704: add             x25, x1, #0x13
    //     0x72c708: str             w0, [x25]
    //     0x72c70c: tbz             w0, #0, #0x72c728
    //     0x72c710: ldurb           w16, [x1, #-1]
    //     0x72c714: ldurb           w17, [x0, #-1]
    //     0x72c718: and             x16, x17, x16, lsr #2
    //     0x72c71c: tst             x16, HEAP, lsr #32
    //     0x72c720: b.eq            #0x72c728
    //     0x72c724: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72c728: ldur            x16, [fp, #-0x18]
    // 0x72c72c: str             x16, [SP]
    // 0x72c730: r0 = _interpolate()
    //     0x72c730: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72c734: stur            x0, [fp, #-8]
    // 0x72c738: r0 = Text()
    //     0x72c738: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72c73c: mov             x1, x0
    // 0x72c740: ldur            x0, [fp, #-8]
    // 0x72c744: StoreField: r1->field_b = r0
    //     0x72c744: stur            w0, [x1, #0xb]
    // 0x72c748: r0 = Instance_TextStyle
    //     0x72c748: add             x0, PP, #0x12, lsl #12  ; [pp+0x12328] Obj!TextStyle@a180f1
    //     0x72c74c: ldr             x0, [x0, #0x328]
    // 0x72c750: StoreField: r1->field_13 = r0
    //     0x72c750: stur            w0, [x1, #0x13]
    // 0x72c754: mov             x0, x1
    // 0x72c758: ldur            x1, [fp, #-0x28]
    // 0x72c75c: ArrayStore: r1[6] = r0  ; List_4
    //     0x72c75c: add             x25, x1, #0x27
    //     0x72c760: str             w0, [x25]
    //     0x72c764: tbz             w0, #0, #0x72c780
    //     0x72c768: ldurb           w16, [x1, #-1]
    //     0x72c76c: ldurb           w17, [x0, #-1]
    //     0x72c770: and             x16, x17, x16, lsr #2
    //     0x72c774: tst             x16, HEAP, lsr #32
    //     0x72c778: b.eq            #0x72c780
    //     0x72c77c: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72c780: ldur            x0, [fp, #-0x28]
    // 0x72c784: r16 = Instance_SizedBox
    //     0x72c784: add             x16, PP, #0x11, lsl #12  ; [pp+0x11310] Obj!SizedBox@a1fa91
    //     0x72c788: ldr             x16, [x16, #0x310]
    // 0x72c78c: StoreField: r0->field_2b = r16
    //     0x72c78c: stur            w16, [x0, #0x2b]
    // 0x72c790: ldur            x2, [fp, #-0x10]
    // 0x72c794: r1 = Function '<anonymous closure>':.
    //     0x72c794: add             x1, PP, #0x20, lsl #12  ; [pp+0x20410] AnonymousClosure: (0x72c8ac), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_buildDownloadingState (0x72c464)
    //     0x72c798: ldr             x1, [x1, #0x410]
    // 0x72c79c: r0 = AllocateClosure()
    //     0x72c79c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72c7a0: stur            x0, [fp, #-8]
    // 0x72c7a4: r0 = Builder()
    //     0x72c7a4: bl              #0x4847d8  ; AllocateBuilderStub -> Builder (size=0x10)
    // 0x72c7a8: mov             x1, x0
    // 0x72c7ac: ldur            x0, [fp, #-8]
    // 0x72c7b0: StoreField: r1->field_b = r0
    //     0x72c7b0: stur            w0, [x1, #0xb]
    // 0x72c7b4: mov             x0, x1
    // 0x72c7b8: ldur            x1, [fp, #-0x28]
    // 0x72c7bc: ArrayStore: r1[8] = r0  ; List_4
    //     0x72c7bc: add             x25, x1, #0x2f
    //     0x72c7c0: str             w0, [x25]
    //     0x72c7c4: tbz             w0, #0, #0x72c7e0
    //     0x72c7c8: ldurb           w16, [x1, #-1]
    //     0x72c7cc: ldurb           w17, [x0, #-1]
    //     0x72c7d0: and             x16, x17, x16, lsr #2
    //     0x72c7d4: tst             x16, HEAP, lsr #32
    //     0x72c7d8: b.eq            #0x72c7e0
    //     0x72c7dc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72c7e0: r1 = <Widget>
    //     0x72c7e0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72c7e4: r0 = AllocateGrowableArray()
    //     0x72c7e4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72c7e8: mov             x1, x0
    // 0x72c7ec: ldur            x0, [fp, #-0x28]
    // 0x72c7f0: stur            x1, [fp, #-8]
    // 0x72c7f4: StoreField: r1->field_f = r0
    //     0x72c7f4: stur            w0, [x1, #0xf]
    // 0x72c7f8: r0 = 18
    //     0x72c7f8: mov             x0, #0x12
    // 0x72c7fc: StoreField: r1->field_b = r0
    //     0x72c7fc: stur            w0, [x1, #0xb]
    // 0x72c800: r0 = Column()
    //     0x72c800: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72c804: r1 = Instance_Axis
    //     0x72c804: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72c808: StoreField: r0->field_f = r1
    //     0x72c808: stur            w1, [x0, #0xf]
    // 0x72c80c: r1 = Instance_MainAxisAlignment
    //     0x72c80c: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72c810: ldr             x1, [x1, #0x230]
    // 0x72c814: StoreField: r0->field_13 = r1
    //     0x72c814: stur            w1, [x0, #0x13]
    // 0x72c818: r1 = Instance_MainAxisSize
    //     0x72c818: add             x1, PP, #0x13, lsl #12  ; [pp+0x13b60] Obj!MainAxisSize@a2a6d1
    //     0x72c81c: ldr             x1, [x1, #0xb60]
    // 0x72c820: ArrayStore: r0[0] = r1  ; List_4
    //     0x72c820: stur            w1, [x0, #0x17]
    // 0x72c824: r1 = Instance_CrossAxisAlignment
    //     0x72c824: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72c828: ldr             x1, [x1, #0x338]
    // 0x72c82c: StoreField: r0->field_1b = r1
    //     0x72c82c: stur            w1, [x0, #0x1b]
    // 0x72c830: r1 = Instance_VerticalDirection
    //     0x72c830: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72c834: ldr             x1, [x1, #0x340]
    // 0x72c838: StoreField: r0->field_23 = r1
    //     0x72c838: stur            w1, [x0, #0x23]
    // 0x72c83c: r1 = Instance_Clip
    //     0x72c83c: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72c840: ldr             x1, [x1, #0x348]
    // 0x72c844: StoreField: r0->field_2b = r1
    //     0x72c844: stur            w1, [x0, #0x2b]
    // 0x72c848: StoreField: r0->field_2f = rZR
    //     0x72c848: stur            xzr, [x0, #0x2f]
    // 0x72c84c: ldur            x1, [fp, #-8]
    // 0x72c850: StoreField: r0->field_b = r1
    //     0x72c850: stur            w1, [x0, #0xb]
    // 0x72c854: LeaveFrame
    //     0x72c854: mov             SP, fp
    //     0x72c858: ldp             fp, lr, [SP], #0x10
    // 0x72c85c: ret
    //     0x72c85c: ret             
    // 0x72c860: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72c860: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72c864: b               #0x72c4f0
    // 0x72c868: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72c868: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72c86c: SaveReg d0
    //     0x72c86c: str             q0, [SP, #-0x10]!
    // 0x72c870: SaveReg r1
    //     0x72c870: str             x1, [SP, #-8]!
    // 0x72c874: r0 = AllocateDouble()
    //     0x72c874: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72c878: RestoreReg r1
    //     0x72c878: ldr             x1, [SP], #8
    // 0x72c87c: RestoreReg d0
    //     0x72c87c: ldr             q0, [SP], #0x10
    // 0x72c880: b               #0x72c638
    // 0x72c884: SaveReg d2
    //     0x72c884: str             q2, [SP, #-0x10]!
    // 0x72c888: SaveReg r0
    //     0x72c888: str             x0, [SP, #-8]!
    // 0x72c88c: r0 = AllocateDouble()
    //     0x72c88c: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72c890: mov             x1, x0
    // 0x72c894: RestoreReg r0
    //     0x72c894: ldr             x0, [SP], #8
    // 0x72c898: RestoreReg d2
    //     0x72c898: ldr             q2, [SP], #0x10
    // 0x72c89c: b               #0x72c6f4
  }
  [closure] RenderObjectWidget <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x72c8ac, size: 0x5ec
    // 0x72c8ac: EnterFrame
    //     0x72c8ac: stp             fp, lr, [SP, #-0x10]!
    //     0x72c8b0: mov             fp, SP
    // 0x72c8b4: AllocStack(0x40)
    //     0x72c8b4: sub             SP, SP, #0x40
    // 0x72c8b8: SetupParameters([dynamic _ /* r0 */])
    //     0x72c8b8: ldr             x0, [fp, #0x18]
    //     0x72c8bc: ldur            w1, [x0, #0x17]
    //     0x72c8c0: add             x1, x1, HEAP, lsl #32
    //     0x72c8c4: stur            x1, [fp, #-0x10]
    // 0x72c8c8: CheckStackOverflow
    //     0x72c8c8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72c8cc: cmp             SP, x16
    //     0x72c8d0: b.ls            #0x72ce30
    // 0x72c8d4: LoadField: r2 = r1->field_b
    //     0x72c8d4: ldur            w2, [x1, #0xb]
    // 0x72c8d8: DecompressPointer r2
    //     0x72c8d8: add             x2, x2, HEAP, lsl #32
    // 0x72c8dc: stur            x2, [fp, #-8]
    // 0x72c8e0: LoadField: r0 = r2->field_f
    //     0x72c8e0: ldur            w0, [x2, #0xf]
    // 0x72c8e4: DecompressPointer r0
    //     0x72c8e4: add             x0, x0, HEAP, lsl #32
    // 0x72c8e8: LoadField: r3 = r0->field_23
    //     0x72c8e8: ldur            w3, [x0, #0x23]
    // 0x72c8ec: DecompressPointer r3
    //     0x72c8ec: add             x3, x3, HEAP, lsl #32
    // 0x72c8f0: r0 = LoadClassIdInstr(r3)
    //     0x72c8f0: ldur            x0, [x3, #-1]
    //     0x72c8f4: ubfx            x0, x0, #0xc, #0x14
    // 0x72c8f8: r16 = "Kuran-ı Kerim"
    //     0x72c8f8: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f28] "Kuran-ı Kerim"
    //     0x72c8fc: ldr             x16, [x16, #0xf28]
    // 0x72c900: stp             x16, x3, [SP]
    // 0x72c904: mov             lr, x0
    // 0x72c908: ldr             lr, [x21, lr, lsl #3]
    // 0x72c90c: blr             lr
    // 0x72c910: tbnz            w0, #4, #0x72ca74
    // 0x72c914: ldur            x0, [fp, #-0x10]
    // 0x72c918: LoadField: r1 = r0->field_f
    //     0x72c918: ldur            w1, [x0, #0xf]
    // 0x72c91c: DecompressPointer r1
    //     0x72c91c: add             x1, x1, HEAP, lsl #32
    // 0x72c920: LoadField: d0 = r1->field_2b
    //     0x72c920: ldur            d0, [x1, #0x2b]
    // 0x72c924: stur            d0, [fp, #-0x30]
    // 0x72c928: r1 = _ConstMap len:12
    //     0x72c928: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72c92c: r2 = 400
    //     0x72c92c: mov             x2, #0x190
    // 0x72c930: r0 = []()
    //     0x72c930: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72c934: stur            x0, [fp, #-0x20]
    // 0x72c938: cmp             w0, NULL
    // 0x72c93c: b.eq            #0x72ce38
    // 0x72c940: ldur            d0, [fp, #-0x30]
    // 0x72c944: r1 = inline_Allocate_Double()
    //     0x72c944: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x72c948: add             x1, x1, #0x10
    //     0x72c94c: cmp             x2, x1
    //     0x72c950: b.ls            #0x72ce3c
    //     0x72c954: str             x1, [THR, #0x60]  ; THR::top
    //     0x72c958: sub             x1, x1, #0xf
    //     0x72c95c: mov             x2, #0xe15c
    //     0x72c960: movk            x2, #3, lsl #16
    //     0x72c964: stur            x2, [x1, #-1]
    // 0x72c968: StoreField: r1->field_7 = d0
    //     0x72c968: stur            d0, [x1, #7]
    // 0x72c96c: stur            x1, [fp, #-0x18]
    // 0x72c970: r0 = LinearProgressIndicator()
    //     0x72c970: bl              #0x72c8a0  ; AllocateLinearProgressIndicatorStub -> LinearProgressIndicator (size=0x40)
    // 0x72c974: mov             x1, x0
    // 0x72c978: ldur            x0, [fp, #-0x18]
    // 0x72c97c: stur            x1, [fp, #-0x28]
    // 0x72c980: StoreField: r1->field_b = r0
    //     0x72c980: stur            w0, [x1, #0xb]
    // 0x72c984: ldur            x0, [fp, #-0x20]
    // 0x72c988: StoreField: r1->field_f = r0
    //     0x72c988: stur            w0, [x1, #0xf]
    // 0x72c98c: ldur            x2, [fp, #-0x10]
    // 0x72c990: LoadField: r0 = r2->field_f
    //     0x72c990: ldur            w0, [x2, #0xf]
    // 0x72c994: DecompressPointer r0
    //     0x72c994: add             x0, x0, HEAP, lsl #32
    // 0x72c998: LoadField: r2 = r0->field_33
    //     0x72c998: ldur            w2, [x0, #0x33]
    // 0x72c99c: DecompressPointer r2
    //     0x72c99c: add             x2, x2, HEAP, lsl #32
    // 0x72c9a0: stur            x2, [fp, #-0x18]
    // 0x72c9a4: r0 = Text()
    //     0x72c9a4: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72c9a8: mov             x3, x0
    // 0x72c9ac: ldur            x0, [fp, #-0x18]
    // 0x72c9b0: stur            x3, [fp, #-0x20]
    // 0x72c9b4: StoreField: r3->field_b = r0
    //     0x72c9b4: stur            w0, [x3, #0xb]
    // 0x72c9b8: r1 = Instance_TextStyle
    //     0x72c9b8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20418] Obj!TextStyle@a18081
    //     0x72c9bc: ldr             x1, [x1, #0x418]
    // 0x72c9c0: StoreField: r3->field_13 = r1
    //     0x72c9c0: stur            w1, [x3, #0x13]
    // 0x72c9c4: r1 = Null
    //     0x72c9c4: mov             x1, NULL
    // 0x72c9c8: r2 = 6
    //     0x72c9c8: mov             x2, #6
    // 0x72c9cc: r0 = AllocateArray()
    //     0x72c9cc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72c9d0: mov             x2, x0
    // 0x72c9d4: ldur            x0, [fp, #-0x28]
    // 0x72c9d8: stur            x2, [fp, #-0x18]
    // 0x72c9dc: StoreField: r2->field_f = r0
    //     0x72c9dc: stur            w0, [x2, #0xf]
    // 0x72c9e0: r16 = Instance_SizedBox
    //     0x72c9e0: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x72c9e4: ldr             x16, [x16, #0x338]
    // 0x72c9e8: StoreField: r2->field_13 = r16
    //     0x72c9e8: stur            w16, [x2, #0x13]
    // 0x72c9ec: ldur            x0, [fp, #-0x20]
    // 0x72c9f0: ArrayStore: r2[0] = r0  ; List_4
    //     0x72c9f0: stur            w0, [x2, #0x17]
    // 0x72c9f4: r1 = <Widget>
    //     0x72c9f4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72c9f8: r0 = AllocateGrowableArray()
    //     0x72c9f8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72c9fc: mov             x1, x0
    // 0x72ca00: ldur            x0, [fp, #-0x18]
    // 0x72ca04: stur            x1, [fp, #-0x20]
    // 0x72ca08: StoreField: r1->field_f = r0
    //     0x72ca08: stur            w0, [x1, #0xf]
    // 0x72ca0c: r3 = 6
    //     0x72ca0c: mov             x3, #6
    // 0x72ca10: StoreField: r1->field_b = r3
    //     0x72ca10: stur            w3, [x1, #0xb]
    // 0x72ca14: r0 = Column()
    //     0x72ca14: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72ca18: r4 = Instance_Axis
    //     0x72ca18: ldr             x4, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72ca1c: StoreField: r0->field_f = r4
    //     0x72ca1c: stur            w4, [x0, #0xf]
    // 0x72ca20: r5 = Instance_MainAxisAlignment
    //     0x72ca20: add             x5, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72ca24: ldr             x5, [x5, #0x230]
    // 0x72ca28: StoreField: r0->field_13 = r5
    //     0x72ca28: stur            w5, [x0, #0x13]
    // 0x72ca2c: r6 = Instance_MainAxisSize
    //     0x72ca2c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72ca30: ldr             x6, [x6, #0x330]
    // 0x72ca34: ArrayStore: r0[0] = r6  ; List_4
    //     0x72ca34: stur            w6, [x0, #0x17]
    // 0x72ca38: r7 = Instance_CrossAxisAlignment
    //     0x72ca38: add             x7, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72ca3c: ldr             x7, [x7, #0x338]
    // 0x72ca40: StoreField: r0->field_1b = r7
    //     0x72ca40: stur            w7, [x0, #0x1b]
    // 0x72ca44: r8 = Instance_VerticalDirection
    //     0x72ca44: add             x8, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72ca48: ldr             x8, [x8, #0x340]
    // 0x72ca4c: StoreField: r0->field_23 = r8
    //     0x72ca4c: stur            w8, [x0, #0x23]
    // 0x72ca50: r9 = Instance_Clip
    //     0x72ca50: add             x9, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72ca54: ldr             x9, [x9, #0x348]
    // 0x72ca58: StoreField: r0->field_2b = r9
    //     0x72ca58: stur            w9, [x0, #0x2b]
    // 0x72ca5c: StoreField: r0->field_2f = rZR
    //     0x72ca5c: stur            xzr, [x0, #0x2f]
    // 0x72ca60: ldur            x1, [fp, #-0x20]
    // 0x72ca64: StoreField: r0->field_b = r1
    //     0x72ca64: stur            w1, [x0, #0xb]
    // 0x72ca68: LeaveFrame
    //     0x72ca68: mov             SP, fp
    //     0x72ca6c: ldp             fp, lr, [SP], #0x10
    // 0x72ca70: ret
    //     0x72ca70: ret             
    // 0x72ca74: ldur            x2, [fp, #-0x10]
    // 0x72ca78: ldur            x10, [fp, #-8]
    // 0x72ca7c: r1 = Instance_TextStyle
    //     0x72ca7c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20418] Obj!TextStyle@a18081
    //     0x72ca80: ldr             x1, [x1, #0x418]
    // 0x72ca84: r3 = 6
    //     0x72ca84: mov             x3, #6
    // 0x72ca88: r7 = Instance_CrossAxisAlignment
    //     0x72ca88: add             x7, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72ca8c: ldr             x7, [x7, #0x338]
    // 0x72ca90: r5 = Instance_MainAxisAlignment
    //     0x72ca90: add             x5, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72ca94: ldr             x5, [x5, #0x230]
    // 0x72ca98: r6 = Instance_MainAxisSize
    //     0x72ca98: add             x6, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72ca9c: ldr             x6, [x6, #0x330]
    // 0x72caa0: r8 = Instance_VerticalDirection
    //     0x72caa0: add             x8, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72caa4: ldr             x8, [x8, #0x340]
    // 0x72caa8: r4 = Instance_Axis
    //     0x72caa8: ldr             x4, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72caac: r9 = Instance_Clip
    //     0x72caac: add             x9, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72cab0: ldr             x9, [x9, #0x348]
    // 0x72cab4: LoadField: r0 = r10->field_f
    //     0x72cab4: ldur            w0, [x10, #0xf]
    // 0x72cab8: DecompressPointer r0
    //     0x72cab8: add             x0, x0, HEAP, lsl #32
    // 0x72cabc: LoadField: r11 = r0->field_23
    //     0x72cabc: ldur            w11, [x0, #0x23]
    // 0x72cac0: DecompressPointer r11
    //     0x72cac0: add             x11, x11, HEAP, lsl #32
    // 0x72cac4: r0 = LoadClassIdInstr(r11)
    //     0x72cac4: ldur            x0, [x11, #-1]
    //     0x72cac8: ubfx            x0, x0, #0xc, #0x14
    // 0x72cacc: r16 = "Say Duaları"
    //     0x72cacc: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f68] "Say Duaları"
    //     0x72cad0: ldr             x16, [x16, #0xf68]
    // 0x72cad4: stp             x16, x11, [SP]
    // 0x72cad8: mov             lr, x0
    // 0x72cadc: ldr             lr, [x21, lr, lsl #3]
    // 0x72cae0: blr             lr
    // 0x72cae4: tbnz            w0, #4, #0x72cc48
    // 0x72cae8: ldur            x0, [fp, #-0x10]
    // 0x72caec: LoadField: r1 = r0->field_13
    //     0x72caec: ldur            w1, [x0, #0x13]
    // 0x72caf0: DecompressPointer r1
    //     0x72caf0: add             x1, x1, HEAP, lsl #32
    // 0x72caf4: LoadField: d0 = r1->field_2b
    //     0x72caf4: ldur            d0, [x1, #0x2b]
    // 0x72caf8: stur            d0, [fp, #-0x30]
    // 0x72cafc: r1 = _ConstMap len:12
    //     0x72cafc: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72cb00: r2 = 400
    //     0x72cb00: mov             x2, #0x190
    // 0x72cb04: r0 = []()
    //     0x72cb04: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72cb08: stur            x0, [fp, #-0x20]
    // 0x72cb0c: cmp             w0, NULL
    // 0x72cb10: b.eq            #0x72ce58
    // 0x72cb14: ldur            d0, [fp, #-0x30]
    // 0x72cb18: r1 = inline_Allocate_Double()
    //     0x72cb18: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x72cb1c: add             x1, x1, #0x10
    //     0x72cb20: cmp             x2, x1
    //     0x72cb24: b.ls            #0x72ce5c
    //     0x72cb28: str             x1, [THR, #0x60]  ; THR::top
    //     0x72cb2c: sub             x1, x1, #0xf
    //     0x72cb30: mov             x2, #0xe15c
    //     0x72cb34: movk            x2, #3, lsl #16
    //     0x72cb38: stur            x2, [x1, #-1]
    // 0x72cb3c: StoreField: r1->field_7 = d0
    //     0x72cb3c: stur            d0, [x1, #7]
    // 0x72cb40: stur            x1, [fp, #-0x18]
    // 0x72cb44: r0 = LinearProgressIndicator()
    //     0x72cb44: bl              #0x72c8a0  ; AllocateLinearProgressIndicatorStub -> LinearProgressIndicator (size=0x40)
    // 0x72cb48: mov             x1, x0
    // 0x72cb4c: ldur            x0, [fp, #-0x18]
    // 0x72cb50: stur            x1, [fp, #-0x28]
    // 0x72cb54: StoreField: r1->field_b = r0
    //     0x72cb54: stur            w0, [x1, #0xb]
    // 0x72cb58: ldur            x0, [fp, #-0x20]
    // 0x72cb5c: StoreField: r1->field_f = r0
    //     0x72cb5c: stur            w0, [x1, #0xf]
    // 0x72cb60: ldur            x2, [fp, #-0x10]
    // 0x72cb64: LoadField: r0 = r2->field_13
    //     0x72cb64: ldur            w0, [x2, #0x13]
    // 0x72cb68: DecompressPointer r0
    //     0x72cb68: add             x0, x0, HEAP, lsl #32
    // 0x72cb6c: LoadField: r2 = r0->field_33
    //     0x72cb6c: ldur            w2, [x0, #0x33]
    // 0x72cb70: DecompressPointer r2
    //     0x72cb70: add             x2, x2, HEAP, lsl #32
    // 0x72cb74: stur            x2, [fp, #-0x18]
    // 0x72cb78: r0 = Text()
    //     0x72cb78: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72cb7c: mov             x3, x0
    // 0x72cb80: ldur            x0, [fp, #-0x18]
    // 0x72cb84: stur            x3, [fp, #-0x20]
    // 0x72cb88: StoreField: r3->field_b = r0
    //     0x72cb88: stur            w0, [x3, #0xb]
    // 0x72cb8c: r1 = Instance_TextStyle
    //     0x72cb8c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20418] Obj!TextStyle@a18081
    //     0x72cb90: ldr             x1, [x1, #0x418]
    // 0x72cb94: StoreField: r3->field_13 = r1
    //     0x72cb94: stur            w1, [x3, #0x13]
    // 0x72cb98: r1 = Null
    //     0x72cb98: mov             x1, NULL
    // 0x72cb9c: r2 = 6
    //     0x72cb9c: mov             x2, #6
    // 0x72cba0: r0 = AllocateArray()
    //     0x72cba0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72cba4: mov             x2, x0
    // 0x72cba8: ldur            x0, [fp, #-0x28]
    // 0x72cbac: stur            x2, [fp, #-0x18]
    // 0x72cbb0: StoreField: r2->field_f = r0
    //     0x72cbb0: stur            w0, [x2, #0xf]
    // 0x72cbb4: r16 = Instance_SizedBox
    //     0x72cbb4: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x72cbb8: ldr             x16, [x16, #0x338]
    // 0x72cbbc: StoreField: r2->field_13 = r16
    //     0x72cbbc: stur            w16, [x2, #0x13]
    // 0x72cbc0: ldur            x0, [fp, #-0x20]
    // 0x72cbc4: ArrayStore: r2[0] = r0  ; List_4
    //     0x72cbc4: stur            w0, [x2, #0x17]
    // 0x72cbc8: r1 = <Widget>
    //     0x72cbc8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72cbcc: r0 = AllocateGrowableArray()
    //     0x72cbcc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72cbd0: mov             x1, x0
    // 0x72cbd4: ldur            x0, [fp, #-0x18]
    // 0x72cbd8: stur            x1, [fp, #-0x20]
    // 0x72cbdc: StoreField: r1->field_f = r0
    //     0x72cbdc: stur            w0, [x1, #0xf]
    // 0x72cbe0: r3 = 6
    //     0x72cbe0: mov             x3, #6
    // 0x72cbe4: StoreField: r1->field_b = r3
    //     0x72cbe4: stur            w3, [x1, #0xb]
    // 0x72cbe8: r0 = Column()
    //     0x72cbe8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72cbec: r4 = Instance_Axis
    //     0x72cbec: ldr             x4, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72cbf0: StoreField: r0->field_f = r4
    //     0x72cbf0: stur            w4, [x0, #0xf]
    // 0x72cbf4: r5 = Instance_MainAxisAlignment
    //     0x72cbf4: add             x5, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72cbf8: ldr             x5, [x5, #0x230]
    // 0x72cbfc: StoreField: r0->field_13 = r5
    //     0x72cbfc: stur            w5, [x0, #0x13]
    // 0x72cc00: r6 = Instance_MainAxisSize
    //     0x72cc00: add             x6, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72cc04: ldr             x6, [x6, #0x330]
    // 0x72cc08: ArrayStore: r0[0] = r6  ; List_4
    //     0x72cc08: stur            w6, [x0, #0x17]
    // 0x72cc0c: r7 = Instance_CrossAxisAlignment
    //     0x72cc0c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72cc10: ldr             x7, [x7, #0x338]
    // 0x72cc14: StoreField: r0->field_1b = r7
    //     0x72cc14: stur            w7, [x0, #0x1b]
    // 0x72cc18: r8 = Instance_VerticalDirection
    //     0x72cc18: add             x8, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72cc1c: ldr             x8, [x8, #0x340]
    // 0x72cc20: StoreField: r0->field_23 = r8
    //     0x72cc20: stur            w8, [x0, #0x23]
    // 0x72cc24: r9 = Instance_Clip
    //     0x72cc24: add             x9, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72cc28: ldr             x9, [x9, #0x348]
    // 0x72cc2c: StoreField: r0->field_2b = r9
    //     0x72cc2c: stur            w9, [x0, #0x2b]
    // 0x72cc30: StoreField: r0->field_2f = rZR
    //     0x72cc30: stur            xzr, [x0, #0x2f]
    // 0x72cc34: ldur            x1, [fp, #-0x20]
    // 0x72cc38: StoreField: r0->field_b = r1
    //     0x72cc38: stur            w1, [x0, #0xb]
    // 0x72cc3c: LeaveFrame
    //     0x72cc3c: mov             SP, fp
    //     0x72cc40: ldp             fp, lr, [SP], #0x10
    // 0x72cc44: ret
    //     0x72cc44: ret             
    // 0x72cc48: ldur            x2, [fp, #-0x10]
    // 0x72cc4c: ldur            x0, [fp, #-8]
    // 0x72cc50: r1 = Instance_TextStyle
    //     0x72cc50: add             x1, PP, #0x20, lsl #12  ; [pp+0x20418] Obj!TextStyle@a18081
    //     0x72cc54: ldr             x1, [x1, #0x418]
    // 0x72cc58: r3 = 6
    //     0x72cc58: mov             x3, #6
    // 0x72cc5c: r7 = Instance_CrossAxisAlignment
    //     0x72cc5c: add             x7, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72cc60: ldr             x7, [x7, #0x338]
    // 0x72cc64: r5 = Instance_MainAxisAlignment
    //     0x72cc64: add             x5, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72cc68: ldr             x5, [x5, #0x230]
    // 0x72cc6c: r6 = Instance_MainAxisSize
    //     0x72cc6c: add             x6, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72cc70: ldr             x6, [x6, #0x330]
    // 0x72cc74: r8 = Instance_VerticalDirection
    //     0x72cc74: add             x8, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72cc78: ldr             x8, [x8, #0x340]
    // 0x72cc7c: r4 = Instance_Axis
    //     0x72cc7c: ldr             x4, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72cc80: r9 = Instance_Clip
    //     0x72cc80: add             x9, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72cc84: ldr             x9, [x9, #0x348]
    // 0x72cc88: LoadField: r10 = r0->field_f
    //     0x72cc88: ldur            w10, [x0, #0xf]
    // 0x72cc8c: DecompressPointer r10
    //     0x72cc8c: add             x10, x10, HEAP, lsl #32
    // 0x72cc90: LoadField: r0 = r10->field_23
    //     0x72cc90: ldur            w0, [x10, #0x23]
    // 0x72cc94: DecompressPointer r0
    //     0x72cc94: add             x0, x0, HEAP, lsl #32
    // 0x72cc98: r10 = LoadClassIdInstr(r0)
    //     0x72cc98: ldur            x10, [x0, #-1]
    //     0x72cc9c: ubfx            x10, x10, #0xc, #0x14
    // 0x72cca0: r16 = "Tavaf Duaları"
    //     0x72cca0: add             x16, PP, #0x15, lsl #12  ; [pp+0x15f48] "Tavaf Duaları"
    //     0x72cca4: ldr             x16, [x16, #0xf48]
    // 0x72cca8: stp             x16, x0, [SP]
    // 0x72ccac: mov             x0, x10
    // 0x72ccb0: mov             lr, x0
    // 0x72ccb4: ldr             lr, [x21, lr, lsl #3]
    // 0x72ccb8: blr             lr
    // 0x72ccbc: tbnz            w0, #4, #0x72ce20
    // 0x72ccc0: ldur            x0, [fp, #-0x10]
    // 0x72ccc4: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x72ccc4: ldur            w1, [x0, #0x17]
    // 0x72ccc8: DecompressPointer r1
    //     0x72ccc8: add             x1, x1, HEAP, lsl #32
    // 0x72cccc: LoadField: d0 = r1->field_2b
    //     0x72cccc: ldur            d0, [x1, #0x2b]
    // 0x72ccd0: stur            d0, [fp, #-0x30]
    // 0x72ccd4: r1 = _ConstMap len:12
    //     0x72ccd4: ldr             x1, [PP, #0x5718]  ; [pp+0x5718] Map<int, Color>(12)
    // 0x72ccd8: r2 = 400
    //     0x72ccd8: mov             x2, #0x190
    // 0x72ccdc: r0 = []()
    //     0x72ccdc: bl              #0x8baa08  ; [dart:_compact_hash] __ConstMap&_HashVMImmutableBase&MapMixin&_HashBase&_OperatorEqualsAndCanonicalHashCode&_LinkedHashMapMixin&_UnmodifiableMapMixin&_ImmutableLinkedHashMapMixin::[]
    // 0x72cce0: stur            x0, [fp, #-0x18]
    // 0x72cce4: cmp             w0, NULL
    // 0x72cce8: b.eq            #0x72ce78
    // 0x72ccec: ldur            d0, [fp, #-0x30]
    // 0x72ccf0: r1 = inline_Allocate_Double()
    //     0x72ccf0: ldp             x1, x2, [THR, #0x60]  ; THR::top
    //     0x72ccf4: add             x1, x1, #0x10
    //     0x72ccf8: cmp             x2, x1
    //     0x72ccfc: b.ls            #0x72ce7c
    //     0x72cd00: str             x1, [THR, #0x60]  ; THR::top
    //     0x72cd04: sub             x1, x1, #0xf
    //     0x72cd08: mov             x2, #0xe15c
    //     0x72cd0c: movk            x2, #3, lsl #16
    //     0x72cd10: stur            x2, [x1, #-1]
    // 0x72cd14: StoreField: r1->field_7 = d0
    //     0x72cd14: stur            d0, [x1, #7]
    // 0x72cd18: stur            x1, [fp, #-8]
    // 0x72cd1c: r0 = LinearProgressIndicator()
    //     0x72cd1c: bl              #0x72c8a0  ; AllocateLinearProgressIndicatorStub -> LinearProgressIndicator (size=0x40)
    // 0x72cd20: mov             x1, x0
    // 0x72cd24: ldur            x0, [fp, #-8]
    // 0x72cd28: stur            x1, [fp, #-0x20]
    // 0x72cd2c: StoreField: r1->field_b = r0
    //     0x72cd2c: stur            w0, [x1, #0xb]
    // 0x72cd30: ldur            x0, [fp, #-0x18]
    // 0x72cd34: StoreField: r1->field_f = r0
    //     0x72cd34: stur            w0, [x1, #0xf]
    // 0x72cd38: ldur            x0, [fp, #-0x10]
    // 0x72cd3c: ArrayLoad: r2 = r0[0]  ; List_4
    //     0x72cd3c: ldur            w2, [x0, #0x17]
    // 0x72cd40: DecompressPointer r2
    //     0x72cd40: add             x2, x2, HEAP, lsl #32
    // 0x72cd44: LoadField: r0 = r2->field_33
    //     0x72cd44: ldur            w0, [x2, #0x33]
    // 0x72cd48: DecompressPointer r0
    //     0x72cd48: add             x0, x0, HEAP, lsl #32
    // 0x72cd4c: stur            x0, [fp, #-8]
    // 0x72cd50: r0 = Text()
    //     0x72cd50: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72cd54: mov             x3, x0
    // 0x72cd58: ldur            x0, [fp, #-8]
    // 0x72cd5c: stur            x3, [fp, #-0x10]
    // 0x72cd60: StoreField: r3->field_b = r0
    //     0x72cd60: stur            w0, [x3, #0xb]
    // 0x72cd64: r0 = Instance_TextStyle
    //     0x72cd64: add             x0, PP, #0x20, lsl #12  ; [pp+0x20418] Obj!TextStyle@a18081
    //     0x72cd68: ldr             x0, [x0, #0x418]
    // 0x72cd6c: StoreField: r3->field_13 = r0
    //     0x72cd6c: stur            w0, [x3, #0x13]
    // 0x72cd70: r1 = Null
    //     0x72cd70: mov             x1, NULL
    // 0x72cd74: r2 = 6
    //     0x72cd74: mov             x2, #6
    // 0x72cd78: r0 = AllocateArray()
    //     0x72cd78: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72cd7c: mov             x2, x0
    // 0x72cd80: ldur            x0, [fp, #-0x20]
    // 0x72cd84: stur            x2, [fp, #-8]
    // 0x72cd88: StoreField: r2->field_f = r0
    //     0x72cd88: stur            w0, [x2, #0xf]
    // 0x72cd8c: r16 = Instance_SizedBox
    //     0x72cd8c: add             x16, PP, #0x12, lsl #12  ; [pp+0x12338] Obj!SizedBox@a1f9d1
    //     0x72cd90: ldr             x16, [x16, #0x338]
    // 0x72cd94: StoreField: r2->field_13 = r16
    //     0x72cd94: stur            w16, [x2, #0x13]
    // 0x72cd98: ldur            x0, [fp, #-0x10]
    // 0x72cd9c: ArrayStore: r2[0] = r0  ; List_4
    //     0x72cd9c: stur            w0, [x2, #0x17]
    // 0x72cda0: r1 = <Widget>
    //     0x72cda0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72cda4: r0 = AllocateGrowableArray()
    //     0x72cda4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72cda8: mov             x1, x0
    // 0x72cdac: ldur            x0, [fp, #-8]
    // 0x72cdb0: stur            x1, [fp, #-0x10]
    // 0x72cdb4: StoreField: r1->field_f = r0
    //     0x72cdb4: stur            w0, [x1, #0xf]
    // 0x72cdb8: r0 = 6
    //     0x72cdb8: mov             x0, #6
    // 0x72cdbc: StoreField: r1->field_b = r0
    //     0x72cdbc: stur            w0, [x1, #0xb]
    // 0x72cdc0: r0 = Column()
    //     0x72cdc0: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x72cdc4: r1 = Instance_Axis
    //     0x72cdc4: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x72cdc8: StoreField: r0->field_f = r1
    //     0x72cdc8: stur            w1, [x0, #0xf]
    // 0x72cdcc: r1 = Instance_MainAxisAlignment
    //     0x72cdcc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x72cdd0: ldr             x1, [x1, #0x230]
    // 0x72cdd4: StoreField: r0->field_13 = r1
    //     0x72cdd4: stur            w1, [x0, #0x13]
    // 0x72cdd8: r1 = Instance_MainAxisSize
    //     0x72cdd8: add             x1, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x72cddc: ldr             x1, [x1, #0x330]
    // 0x72cde0: ArrayStore: r0[0] = r1  ; List_4
    //     0x72cde0: stur            w1, [x0, #0x17]
    // 0x72cde4: r1 = Instance_CrossAxisAlignment
    //     0x72cde4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x72cde8: ldr             x1, [x1, #0x338]
    // 0x72cdec: StoreField: r0->field_1b = r1
    //     0x72cdec: stur            w1, [x0, #0x1b]
    // 0x72cdf0: r1 = Instance_VerticalDirection
    //     0x72cdf0: add             x1, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x72cdf4: ldr             x1, [x1, #0x340]
    // 0x72cdf8: StoreField: r0->field_23 = r1
    //     0x72cdf8: stur            w1, [x0, #0x23]
    // 0x72cdfc: r1 = Instance_Clip
    //     0x72cdfc: add             x1, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72ce00: ldr             x1, [x1, #0x348]
    // 0x72ce04: StoreField: r0->field_2b = r1
    //     0x72ce04: stur            w1, [x0, #0x2b]
    // 0x72ce08: StoreField: r0->field_2f = rZR
    //     0x72ce08: stur            xzr, [x0, #0x2f]
    // 0x72ce0c: ldur            x1, [fp, #-0x10]
    // 0x72ce10: StoreField: r0->field_b = r1
    //     0x72ce10: stur            w1, [x0, #0xb]
    // 0x72ce14: LeaveFrame
    //     0x72ce14: mov             SP, fp
    //     0x72ce18: ldp             fp, lr, [SP], #0x10
    // 0x72ce1c: ret
    //     0x72ce1c: ret             
    // 0x72ce20: r0 = Instance_SizedBox
    //     0x72ce20: ldr             x0, [PP, #0x4e50]  ; [pp+0x4e50] Obj!SizedBox@a1f951
    // 0x72ce24: LeaveFrame
    //     0x72ce24: mov             SP, fp
    //     0x72ce28: ldp             fp, lr, [SP], #0x10
    // 0x72ce2c: ret
    //     0x72ce2c: ret             
    // 0x72ce30: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72ce30: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72ce34: b               #0x72c8d4
    // 0x72ce38: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72ce38: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72ce3c: SaveReg d0
    //     0x72ce3c: str             q0, [SP, #-0x10]!
    // 0x72ce40: SaveReg r0
    //     0x72ce40: str             x0, [SP, #-8]!
    // 0x72ce44: r0 = AllocateDouble()
    //     0x72ce44: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72ce48: mov             x1, x0
    // 0x72ce4c: RestoreReg r0
    //     0x72ce4c: ldr             x0, [SP], #8
    // 0x72ce50: RestoreReg d0
    //     0x72ce50: ldr             q0, [SP], #0x10
    // 0x72ce54: b               #0x72c968
    // 0x72ce58: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72ce58: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72ce5c: SaveReg d0
    //     0x72ce5c: str             q0, [SP, #-0x10]!
    // 0x72ce60: SaveReg r0
    //     0x72ce60: str             x0, [SP, #-8]!
    // 0x72ce64: r0 = AllocateDouble()
    //     0x72ce64: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72ce68: mov             x1, x0
    // 0x72ce6c: RestoreReg r0
    //     0x72ce6c: ldr             x0, [SP], #8
    // 0x72ce70: RestoreReg d0
    //     0x72ce70: ldr             q0, [SP], #0x10
    // 0x72ce74: b               #0x72cb3c
    // 0x72ce78: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72ce78: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x72ce7c: SaveReg d0
    //     0x72ce7c: str             q0, [SP, #-0x10]!
    // 0x72ce80: SaveReg r0
    //     0x72ce80: str             x0, [SP, #-8]!
    // 0x72ce84: r0 = AllocateDouble()
    //     0x72ce84: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72ce88: mov             x1, x0
    // 0x72ce8c: RestoreReg r0
    //     0x72ce8c: ldr             x0, [SP], #8
    // 0x72ce90: RestoreReg d0
    //     0x72ce90: ldr             q0, [SP], #0x10
    // 0x72ce94: b               #0x72cd14
  }
  _ _ContentDownloadDialogState(/* No info */) {
    // ** addr: 0x7bf010, size: 0x40
    // 0x7bf010: r4 = true
    //     0x7bf010: add             x4, NULL, #0x20  ; true
    // 0x7bf014: r3 = false
    //     0x7bf014: add             x3, NULL, #0x30  ; false
    // 0x7bf018: r2 = ""
    //     0x7bf018: ldr             x2, [PP, #0x128]  ; [pp+0x128] ""
    // 0x7bf01c: StoreField: r1->field_13 = r4
    //     0x7bf01c: stur            w4, [x1, #0x13]
    // 0x7bf020: ArrayStore: r1[0] = r4  ; List_4
    //     0x7bf020: stur            w4, [x1, #0x17]
    // 0x7bf024: StoreField: r1->field_1b = r4
    //     0x7bf024: stur            w4, [x1, #0x1b]
    // 0x7bf028: StoreField: r1->field_1f = r3
    //     0x7bf028: stur            w3, [x1, #0x1f]
    // 0x7bf02c: StoreField: r1->field_23 = r2
    //     0x7bf02c: stur            w2, [x1, #0x23]
    // 0x7bf030: StoreField: r1->field_27 = rZR
    //     0x7bf030: stur            xzr, [x1, #0x27]
    // 0x7bf034: StoreField: r1->field_2f = r3
    //     0x7bf034: stur            w3, [x1, #0x2f]
    // 0x7bf038: StoreField: r1->field_33 = r2
    //     0x7bf038: stur            w2, [x1, #0x33]
    // 0x7bf03c: StoreField: r1->field_37 = r3
    //     0x7bf03c: stur            w3, [x1, #0x37]
    // 0x7bf040: StoreField: r1->field_3b = r3
    //     0x7bf040: stur            w3, [x1, #0x3b]
    // 0x7bf044: StoreField: r1->field_3f = r3
    //     0x7bf044: stur            w3, [x1, #0x3f]
    // 0x7bf048: r0 = Null
    //     0x7bf048: mov             x0, NULL
    // 0x7bf04c: ret
    //     0x7bf04c: ret             
  }
}

// class id: 3200, size: 0xc, field offset: 0xc
//   const constructor, 
class ContentDownloadDialog extends StatefulWidget {

  static _ show(/* No info */) async {
    // ** addr: 0x5e9e3c, size: 0x64
    // 0x5e9e3c: EnterFrame
    //     0x5e9e3c: stp             fp, lr, [SP, #-0x10]!
    //     0x5e9e40: mov             fp, SP
    // 0x5e9e44: AllocStack(0x30)
    //     0x5e9e44: sub             SP, SP, #0x30
    // 0x5e9e48: SetupParameters(dynamic _ /* r1 => r1, fp-0x10 */)
    //     0x5e9e48: stur            NULL, [fp, #-8]
    //     0x5e9e4c: stur            x1, [fp, #-0x10]
    // 0x5e9e50: CheckStackOverflow
    //     0x5e9e50: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e9e54: cmp             SP, x16
    //     0x5e9e58: b.ls            #0x5e9e98
    // 0x5e9e5c: InitAsync() -> Future<void?>
    //     0x5e9e5c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5e9e60: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e9e64: r1 = Function '<anonymous closure>': static.
    //     0x5e9e64: add             x1, PP, #0x17, lsl #12  ; [pp+0x179f8] AnonymousClosure: static (0x5ea280), in [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] ContentDownloadDialog::show (0x5e9e3c)
    //     0x5e9e68: ldr             x1, [x1, #0x9f8]
    // 0x5e9e6c: r2 = Null
    //     0x5e9e6c: mov             x2, NULL
    // 0x5e9e70: r0 = AllocateClosure()
    //     0x5e9e70: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e9e74: r16 = <void?>
    //     0x5e9e74: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x5e9e78: stp             x0, x16, [SP, #0x10]
    // 0x5e9e7c: ldur            x16, [fp, #-0x10]
    // 0x5e9e80: r30 = false
    //     0x5e9e80: add             lr, NULL, #0x30  ; false
    // 0x5e9e84: stp             lr, x16, [SP]
    // 0x5e9e88: r4 = const [0x1, 0x3, 0x3, 0x2, barrierDismissible, 0x2, null]
    //     0x5e9e88: add             x4, PP, #0x15, lsl #12  ; [pp+0x15238] List(7) [0x1, 0x3, 0x3, 0x2, "barrierDismissible", 0x2, Null]
    //     0x5e9e8c: ldr             x4, [x4, #0x238]
    // 0x5e9e90: r0 = showDialog()
    //     0x5e9e90: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x5e9e94: r0 = ReturnAsync()
    //     0x5e9e94: b               #0x427094  ; ReturnAsyncStub
    // 0x5e9e98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e9e98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e9e9c: b               #0x5e9e5c
  }
  [closure] static MultiProvider <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x5ea280, size: 0x1dc
    // 0x5ea280: EnterFrame
    //     0x5ea280: stp             fp, lr, [SP, #-0x10]!
    //     0x5ea284: mov             fp, SP
    // 0x5ea288: AllocStack(0x20)
    //     0x5ea288: sub             SP, SP, #0x20
    // 0x5ea28c: CheckStackOverflow
    //     0x5ea28c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5ea290: cmp             SP, x16
    //     0x5ea294: b.ls            #0x5ea454
    // 0x5ea298: r1 = Function '<anonymous closure>': static.
    //     0x5ea298: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a00] AnonymousClosure: (0x5eac10), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x5ea29c: ldr             x1, [x1, #0xa00]
    // 0x5ea2a0: r2 = Null
    //     0x5ea2a0: mov             x2, NULL
    // 0x5ea2a4: r0 = AllocateClosure()
    //     0x5ea2a4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ea2a8: r1 = <QuranDownloadProvider>
    //     0x5ea2a8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bc0] TypeArguments: <QuranDownloadProvider>
    //     0x5ea2ac: ldr             x1, [x1, #0xbc0]
    // 0x5ea2b0: stur            x0, [fp, #-8]
    // 0x5ea2b4: r0 = _CreateInheritedProvider()
    //     0x5ea2b4: bl              #0x5ea980  ; Allocate_CreateInheritedProviderStub -> _CreateInheritedProvider<X0> (size=0x20)
    // 0x5ea2b8: mov             x2, x0
    // 0x5ea2bc: ldur            x0, [fp, #-8]
    // 0x5ea2c0: stur            x2, [fp, #-0x10]
    // 0x5ea2c4: StoreField: r2->field_b = r0
    //     0x5ea2c4: stur            w0, [x2, #0xb]
    // 0x5ea2c8: r0 = Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static.
    //     0x5ea2c8: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de0] Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static. (0x7f22905eadd4)
    //     0x5ea2cc: ldr             x0, [x0, #0xde0]
    // 0x5ea2d0: ArrayStore: r2[0] = r0  ; List_4
    //     0x5ea2d0: stur            w0, [x2, #0x17]
    // 0x5ea2d4: r3 = Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static.
    //     0x5ea2d4: add             x3, PP, #0x10, lsl #12  ; [pp+0x10de8] Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static. (0x7f22905ead4c)
    //     0x5ea2d8: ldr             x3, [x3, #0xde8]
    // 0x5ea2dc: StoreField: r2->field_1b = r3
    //     0x5ea2dc: stur            w3, [x2, #0x1b]
    // 0x5ea2e0: r1 = <QuranDownloadProvider>
    //     0x5ea2e0: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bc0] TypeArguments: <QuranDownloadProvider>
    //     0x5ea2e4: ldr             x1, [x1, #0xbc0]
    // 0x5ea2e8: r0 = ChangeNotifierProvider()
    //     0x5ea2e8: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x5ea2ec: mov             x2, x0
    // 0x5ea2f0: ldur            x0, [fp, #-0x10]
    // 0x5ea2f4: stur            x2, [fp, #-8]
    // 0x5ea2f8: StoreField: r2->field_13 = r0
    //     0x5ea2f8: stur            w0, [x2, #0x13]
    // 0x5ea2fc: mov             x1, x2
    // 0x5ea300: r0 = _NativeScene._()
    //     0x5ea300: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x5ea304: r1 = Function '<anonymous closure>': static.
    //     0x5ea304: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a08] AnonymousClosure: (0x5eaad4), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x5ea308: ldr             x1, [x1, #0xa08]
    // 0x5ea30c: r2 = Null
    //     0x5ea30c: mov             x2, NULL
    // 0x5ea310: r0 = AllocateClosure()
    //     0x5ea310: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ea314: r1 = <SayDualariDownloadProvider>
    //     0x5ea314: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bd0] TypeArguments: <SayDualariDownloadProvider>
    //     0x5ea318: ldr             x1, [x1, #0xbd0]
    // 0x5ea31c: stur            x0, [fp, #-0x10]
    // 0x5ea320: r0 = _CreateInheritedProvider()
    //     0x5ea320: bl              #0x5ea980  ; Allocate_CreateInheritedProviderStub -> _CreateInheritedProvider<X0> (size=0x20)
    // 0x5ea324: mov             x2, x0
    // 0x5ea328: ldur            x0, [fp, #-0x10]
    // 0x5ea32c: stur            x2, [fp, #-0x18]
    // 0x5ea330: StoreField: r2->field_b = r0
    //     0x5ea330: stur            w0, [x2, #0xb]
    // 0x5ea334: r0 = Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static.
    //     0x5ea334: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de0] Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static. (0x7f22905eadd4)
    //     0x5ea338: ldr             x0, [x0, #0xde0]
    // 0x5ea33c: ArrayStore: r2[0] = r0  ; List_4
    //     0x5ea33c: stur            w0, [x2, #0x17]
    // 0x5ea340: r3 = Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static.
    //     0x5ea340: add             x3, PP, #0x10, lsl #12  ; [pp+0x10de8] Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static. (0x7f22905ead4c)
    //     0x5ea344: ldr             x3, [x3, #0xde8]
    // 0x5ea348: StoreField: r2->field_1b = r3
    //     0x5ea348: stur            w3, [x2, #0x1b]
    // 0x5ea34c: r1 = <SayDualariDownloadProvider>
    //     0x5ea34c: add             x1, PP, #0x10, lsl #12  ; [pp+0x10bd0] TypeArguments: <SayDualariDownloadProvider>
    //     0x5ea350: ldr             x1, [x1, #0xbd0]
    // 0x5ea354: r0 = ChangeNotifierProvider()
    //     0x5ea354: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x5ea358: mov             x2, x0
    // 0x5ea35c: ldur            x0, [fp, #-0x18]
    // 0x5ea360: stur            x2, [fp, #-0x10]
    // 0x5ea364: StoreField: r2->field_13 = r0
    //     0x5ea364: stur            w0, [x2, #0x13]
    // 0x5ea368: mov             x1, x2
    // 0x5ea36c: r0 = _NativeScene._()
    //     0x5ea36c: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x5ea370: r1 = Function '<anonymous closure>': static.
    //     0x5ea370: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a10] AnonymousClosure: (0x5ea98c), in [package:umrem_demo/main.dart] MyApp::build (0x7effa0)
    //     0x5ea374: ldr             x1, [x1, #0xa10]
    // 0x5ea378: r2 = Null
    //     0x5ea378: mov             x2, NULL
    // 0x5ea37c: r0 = AllocateClosure()
    //     0x5ea37c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5ea380: r1 = <TavafDualariDownloadProvider>
    //     0x5ea380: add             x1, PP, #0x10, lsl #12  ; [pp+0x10be0] TypeArguments: <TavafDualariDownloadProvider>
    //     0x5ea384: ldr             x1, [x1, #0xbe0]
    // 0x5ea388: stur            x0, [fp, #-0x18]
    // 0x5ea38c: r0 = _CreateInheritedProvider()
    //     0x5ea38c: bl              #0x5ea980  ; Allocate_CreateInheritedProviderStub -> _CreateInheritedProvider<X0> (size=0x20)
    // 0x5ea390: mov             x2, x0
    // 0x5ea394: ldur            x0, [fp, #-0x18]
    // 0x5ea398: stur            x2, [fp, #-0x20]
    // 0x5ea39c: StoreField: r2->field_b = r0
    //     0x5ea39c: stur            w0, [x2, #0xb]
    // 0x5ea3a0: r0 = Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static.
    //     0x5ea3a0: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de0] Closure: (InheritedContext<Listenable?>, Listenable?) => () => void from Function '_startListening@896289466': static. (0x7f22905eadd4)
    //     0x5ea3a4: ldr             x0, [x0, #0xde0]
    // 0x5ea3a8: ArrayStore: r2[0] = r0  ; List_4
    //     0x5ea3a8: stur            w0, [x2, #0x17]
    // 0x5ea3ac: r0 = Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static.
    //     0x5ea3ac: add             x0, PP, #0x10, lsl #12  ; [pp+0x10de8] Closure: (BuildContext, ChangeNotifier?) => void from Function '_dispose@895228938': static. (0x7f22905ead4c)
    //     0x5ea3b0: ldr             x0, [x0, #0xde8]
    // 0x5ea3b4: StoreField: r2->field_1b = r0
    //     0x5ea3b4: stur            w0, [x2, #0x1b]
    // 0x5ea3b8: r1 = <TavafDualariDownloadProvider>
    //     0x5ea3b8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10be0] TypeArguments: <TavafDualariDownloadProvider>
    //     0x5ea3bc: ldr             x1, [x1, #0xbe0]
    // 0x5ea3c0: r0 = ChangeNotifierProvider()
    //     0x5ea3c0: bl              #0x5ea974  ; AllocateChangeNotifierProviderStub -> ChangeNotifierProvider<X0 bound ChangeNotifier?> (size=0x20)
    // 0x5ea3c4: mov             x2, x0
    // 0x5ea3c8: ldur            x0, [fp, #-0x20]
    // 0x5ea3cc: stur            x2, [fp, #-0x18]
    // 0x5ea3d0: StoreField: r2->field_13 = r0
    //     0x5ea3d0: stur            w0, [x2, #0x13]
    // 0x5ea3d4: mov             x1, x2
    // 0x5ea3d8: r0 = _NativeScene._()
    //     0x5ea3d8: bl              #0x921cc4  ; [dart:ui] _NativeScene::_NativeScene._
    // 0x5ea3dc: r1 = Null
    //     0x5ea3dc: mov             x1, NULL
    // 0x5ea3e0: r2 = 6
    //     0x5ea3e0: mov             x2, #6
    // 0x5ea3e4: r0 = AllocateArray()
    //     0x5ea3e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5ea3e8: mov             x2, x0
    // 0x5ea3ec: ldur            x0, [fp, #-8]
    // 0x5ea3f0: stur            x2, [fp, #-0x20]
    // 0x5ea3f4: StoreField: r2->field_f = r0
    //     0x5ea3f4: stur            w0, [x2, #0xf]
    // 0x5ea3f8: ldur            x0, [fp, #-0x10]
    // 0x5ea3fc: StoreField: r2->field_13 = r0
    //     0x5ea3fc: stur            w0, [x2, #0x13]
    // 0x5ea400: ldur            x0, [fp, #-0x18]
    // 0x5ea404: ArrayStore: r2[0] = r0  ; List_4
    //     0x5ea404: stur            w0, [x2, #0x17]
    // 0x5ea408: r1 = <SingleChildWidget>
    //     0x5ea408: add             x1, PP, #0x10, lsl #12  ; [pp+0x10b20] TypeArguments: <SingleChildWidget>
    //     0x5ea40c: ldr             x1, [x1, #0xb20]
    // 0x5ea410: r0 = AllocateGrowableArray()
    //     0x5ea410: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x5ea414: mov             x1, x0
    // 0x5ea418: ldur            x0, [fp, #-0x20]
    // 0x5ea41c: StoreField: r1->field_f = r0
    //     0x5ea41c: stur            w0, [x1, #0xf]
    // 0x5ea420: r0 = 6
    //     0x5ea420: mov             x0, #6
    // 0x5ea424: StoreField: r1->field_b = r0
    //     0x5ea424: stur            w0, [x1, #0xb]
    // 0x5ea428: r0 = _collapseProviders()
    //     0x5ea428: bl              #0x5ea530  ; [package:provider/src/provider.dart] MultiProvider::_collapseProviders
    // 0x5ea42c: stur            x0, [fp, #-8]
    // 0x5ea430: r0 = MultiProvider()
    //     0x5ea430: bl              #0x5ea524  ; AllocateMultiProviderStub -> MultiProvider (size=0x14)
    // 0x5ea434: ldur            x1, [fp, #-8]
    // 0x5ea438: StoreField: r0->field_b = r1
    //     0x5ea438: stur            w1, [x0, #0xb]
    // 0x5ea43c: r1 = Instance_ContentDownloadDialog
    //     0x5ea43c: add             x1, PP, #0x17, lsl #12  ; [pp+0x17a18] Obj!ContentDownloadDialog@a202a1
    //     0x5ea440: ldr             x1, [x1, #0xa18]
    // 0x5ea444: StoreField: r0->field_f = r1
    //     0x5ea444: stur            w1, [x0, #0xf]
    // 0x5ea448: LeaveFrame
    //     0x5ea448: mov             SP, fp
    //     0x5ea44c: ldp             fp, lr, [SP], #0x10
    // 0x5ea450: ret
    //     0x5ea450: ret             
    // 0x5ea454: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5ea454: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5ea458: b               #0x5ea298
  }
  _ createState(/* No info */) {
    // ** addr: 0x7befc8, size: 0x48
    // 0x7befc8: EnterFrame
    //     0x7befc8: stp             fp, lr, [SP, #-0x10]!
    //     0x7befcc: mov             fp, SP
    // 0x7befd0: AllocStack(0x8)
    //     0x7befd0: sub             SP, SP, #8
    // 0x7befd4: CheckStackOverflow
    //     0x7befd4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7befd8: cmp             SP, x16
    //     0x7befdc: b.ls            #0x7bf008
    // 0x7befe0: r1 = <ContentDownloadDialog>
    //     0x7befe0: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bee0] TypeArguments: <ContentDownloadDialog>
    //     0x7befe4: ldr             x1, [x1, #0xee0]
    // 0x7befe8: r0 = _ContentDownloadDialogState()
    //     0x7befe8: bl              #0x7bf050  ; Allocate_ContentDownloadDialogStateStub -> _ContentDownloadDialogState (size=0x44)
    // 0x7befec: mov             x1, x0
    // 0x7beff0: stur            x0, [fp, #-8]
    // 0x7beff4: r0 = _ContentDownloadDialogState()
    //     0x7beff4: bl              #0x7bf010  ; [package:umrem_demo/features/dualar/widgets/content_download_dialog.dart] _ContentDownloadDialogState::_ContentDownloadDialogState
    // 0x7beff8: ldur            x0, [fp, #-8]
    // 0x7beffc: LeaveFrame
    //     0x7beffc: mov             SP, fp
    //     0x7bf000: ldp             fp, lr, [SP], #0x10
    // 0x7bf004: ret
    //     0x7bf004: ret             
    // 0x7bf008: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7bf008: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7bf00c: b               #0x7befe0
  }
}
