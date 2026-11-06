// lib: , url: package:umrem_demo/core/func/token_create.dart

// class id: 1049498, size: 0x8
class :: {

  static String generateSecureToken() {
    // ** addr: 0x6eefac, size: 0x124
    // 0x6eefac: EnterFrame
    //     0x6eefac: stp             fp, lr, [SP, #-0x10]!
    //     0x6eefb0: mov             fp, SP
    // 0x6eefb4: AllocStack(0x18)
    //     0x6eefb4: sub             SP, SP, #0x18
    // 0x6eefb8: CheckStackOverflow
    //     0x6eefb8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6eefbc: cmp             SP, x16
    //     0x6eefc0: b.ls            #0x6ef0bc
    // 0x6eefc4: r0 = InitLateStaticField(0x3b8) // [dart:math] Random::_secureRandom
    //     0x6eefc4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6eefc8: ldr             x0, [x0, #0x770]
    //     0x6eefcc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6eefd0: cmp             w0, w16
    //     0x6eefd4: b.ne            #0x6eefe4
    //     0x6eefd8: add             x2, PP, #0x18, lsl #12  ; [pp+0x18848] Field <Random._secureRandom@12383281>: static late final (offset: 0x3b8)
    //     0x6eefdc: ldr             x2, [x2, #0x848]
    //     0x6eefe0: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x6eefe4: r1 = <int>
    //     0x6eefe4: ldr             x1, [PP, #0xc20]  ; [pp+0xc20] TypeArguments: <int>
    // 0x6eefe8: r2 = 32
    //     0x6eefe8: mov             x2, #0x20
    // 0x6eefec: stur            x0, [fp, #-8]
    // 0x6eeff0: r0 = _GrowableList()
    //     0x6eeff0: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6eeff4: stur            x0, [fp, #-0x18]
    // 0x6eeff8: r3 = 0
    //     0x6eeff8: mov             x3, #0
    // 0x6eeffc: stur            x3, [fp, #-0x10]
    // 0x6ef000: CheckStackOverflow
    //     0x6ef000: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6ef004: cmp             SP, x16
    //     0x6ef008: b.ls            #0x6ef0c4
    // 0x6ef00c: LoadField: r1 = r0->field_b
    //     0x6ef00c: ldur            w1, [x0, #0xb]
    // 0x6ef010: r2 = LoadInt32Instr(r1)
    //     0x6ef010: sbfx            x2, x1, #1, #0x1f
    // 0x6ef014: cmp             x3, x2
    // 0x6ef018: b.ge            #0x6ef0a4
    // 0x6ef01c: ldur            x1, [fp, #-8]
    // 0x6ef020: r2 = 256
    //     0x6ef020: mov             x2, #0x100
    // 0x6ef024: r0 = nextInt()
    //     0x6ef024: bl              #0x6ef18c  ; [dart:math] _SecureRandom::nextInt
    // 0x6ef028: mov             x3, x0
    // 0x6ef02c: ldur            x2, [fp, #-0x18]
    // 0x6ef030: LoadField: r0 = r2->field_b
    //     0x6ef030: ldur            w0, [x2, #0xb]
    // 0x6ef034: r1 = LoadInt32Instr(r0)
    //     0x6ef034: sbfx            x1, x0, #1, #0x1f
    // 0x6ef038: mov             x0, x1
    // 0x6ef03c: ldur            x1, [fp, #-0x10]
    // 0x6ef040: cmp             x1, x0
    // 0x6ef044: b.hs            #0x6ef0cc
    // 0x6ef048: LoadField: r4 = r2->field_f
    //     0x6ef048: ldur            w4, [x2, #0xf]
    // 0x6ef04c: DecompressPointer r4
    //     0x6ef04c: add             x4, x4, HEAP, lsl #32
    // 0x6ef050: r0 = BoxInt64Instr(r3)
    //     0x6ef050: sbfiz           x0, x3, #1, #0x1f
    //     0x6ef054: cmp             x3, x0, asr #1
    //     0x6ef058: b.eq            #0x6ef064
    //     0x6ef05c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x6ef060: stur            x3, [x0, #7]
    // 0x6ef064: mov             x1, x4
    // 0x6ef068: ldur            x3, [fp, #-0x10]
    // 0x6ef06c: ArrayStore: r1[r3] = r0  ; List_4
    //     0x6ef06c: add             x25, x1, x3, lsl #2
    //     0x6ef070: add             x25, x25, #0xf
    //     0x6ef074: str             w0, [x25]
    //     0x6ef078: tbz             w0, #0, #0x6ef094
    //     0x6ef07c: ldurb           w16, [x1, #-1]
    //     0x6ef080: ldurb           w17, [x0, #-1]
    //     0x6ef084: and             x16, x17, x16, lsr #2
    //     0x6ef088: tst             x16, HEAP, lsr #32
    //     0x6ef08c: b.eq            #0x6ef094
    //     0x6ef090: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6ef094: add             x0, x3, #1
    // 0x6ef098: mov             x3, x0
    // 0x6ef09c: mov             x0, x2
    // 0x6ef0a0: b               #0x6eeffc
    // 0x6ef0a4: mov             x2, x0
    // 0x6ef0a8: mov             x1, x2
    // 0x6ef0ac: r0 = base64UrlEncode()
    //     0x6ef0ac: bl              #0x6ef0d0  ; [dart:convert] ::base64UrlEncode
    // 0x6ef0b0: LeaveFrame
    //     0x6ef0b0: mov             SP, fp
    //     0x6ef0b4: ldp             fp, lr, [SP], #0x10
    // 0x6ef0b8: ret
    //     0x6ef0b8: ret             
    // 0x6ef0bc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef0bc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef0c0: b               #0x6eefc4
    // 0x6ef0c4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6ef0c4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6ef0c8: b               #0x6ef00c
    // 0x6ef0cc: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x6ef0cc: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
}
