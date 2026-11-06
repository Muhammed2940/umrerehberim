// lib: , url: package:umrem_demo/common/services/common_service.dart

// class id: 1049488, size: 0x8
class :: {
}

// class id: 219, size: 0x8, field offset: 0x8
class CommonService extends Object {

  _ hasInternetConnection(/* No info */) async {
    // ** addr: 0x5f529c, size: 0x114
    // 0x5f529c: EnterFrame
    //     0x5f529c: stp             fp, lr, [SP, #-0x10]!
    //     0x5f52a0: mov             fp, SP
    // 0x5f52a4: AllocStack(0x78)
    //     0x5f52a4: sub             SP, SP, #0x78
    // 0x5f52a8: SetupParameters(CommonService this /* r1 => r1, fp-0x60 */)
    //     0x5f52a8: stur            NULL, [fp, #-8]
    //     0x5f52ac: stur            x1, [fp, #-0x60]
    // 0x5f52b0: CheckStackOverflow
    //     0x5f52b0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5f52b4: cmp             SP, x16
    //     0x5f52b8: b.ls            #0x5f53a8
    // 0x5f52bc: InitAsync() -> Future<bool>
    //     0x5f52bc: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x5f52c0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5f52c4: r0 = lookup()
    //     0x5f52c4: bl              #0x5f53e8  ; [dart:io] InternetAddress::lookup
    // 0x5f52c8: mov             x1, x0
    // 0x5f52cc: stur            x1, [fp, #-0x60]
    // 0x5f52d0: r0 = Await()
    //     0x5f52d0: bl              #0x3dd188  ; AwaitStub
    // 0x5f52d4: mov             x2, x0
    // 0x5f52d8: stur            x2, [fp, #-0x60]
    // 0x5f52dc: r0 = LoadClassIdInstr(r2)
    //     0x5f52dc: ldur            x0, [x2, #-1]
    //     0x5f52e0: ubfx            x0, x0, #0xc, #0x14
    // 0x5f52e4: mov             x1, x2
    // 0x5f52e8: r0 = GDT[cid_x0 + 0xd3a8]()
    //     0x5f52e8: mov             x17, #0xd3a8
    //     0x5f52ec: add             lr, x0, x17
    //     0x5f52f0: ldr             lr, [x21, lr, lsl #3]
    //     0x5f52f4: blr             lr
    // 0x5f52f8: tbnz            w0, #4, #0x5f5338
    // 0x5f52fc: ldur            x1, [fp, #-0x60]
    // 0x5f5300: r0 = LoadClassIdInstr(r1)
    //     0x5f5300: ldur            x0, [x1, #-1]
    //     0x5f5304: ubfx            x0, x0, #0xc, #0x14
    // 0x5f5308: stp             xzr, x1, [SP]
    // 0x5f530c: r0 = GDT[cid_x0 + -0xdfc]()
    //     0x5f530c: sub             lr, x0, #0xdfc
    //     0x5f5310: ldr             lr, [x21, lr, lsl #3]
    //     0x5f5314: blr             lr
    // 0x5f5318: mov             x1, x0
    // 0x5f531c: r0 = rawAddress()
    //     0x5f531c: bl              #0x5f53b0  ; [dart:io] _InternetAddress::rawAddress
    // 0x5f5320: LoadField: r1 = r0->field_13
    //     0x5f5320: ldur            w1, [x0, #0x13]
    // 0x5f5324: cbnz            w1, #0x5f5330
    // 0x5f5328: r0 = false
    //     0x5f5328: add             x0, NULL, #0x30  ; false
    // 0x5f532c: b               #0x5f5334
    // 0x5f5330: r0 = true
    //     0x5f5330: add             x0, NULL, #0x20  ; true
    // 0x5f5334: b               #0x5f533c
    // 0x5f5338: r0 = false
    //     0x5f5338: add             x0, NULL, #0x30  ; false
    // 0x5f533c: r0 = ReturnAsyncNotFuture()
    //     0x5f533c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f5340: sub             SP, fp, #0x78
    // 0x5f5344: mov             x4, x0
    // 0x5f5348: mov             x3, x1
    // 0x5f534c: stur            x0, [fp, #-0x60]
    // 0x5f5350: stur            x1, [fp, #-0x68]
    // 0x5f5354: r2 = Null
    //     0x5f5354: mov             x2, NULL
    // 0x5f5358: r1 = Null
    //     0x5f5358: mov             x1, NULL
    // 0x5f535c: cmp             w0, NULL
    // 0x5f5360: b.eq            #0x5f5380
    // 0x5f5364: branchIfSmi(r0, 0x5f5380)
    //     0x5f5364: tbz             w0, #0, #0x5f5380
    // 0x5f5368: r3 = LoadClassIdInstr(r0)
    //     0x5f5368: ldur            x3, [x0, #-1]
    //     0x5f536c: ubfx            x3, x3, #0xc, #0x14
    // 0x5f5370: cmp             x3, #0x150
    // 0x5f5374: b.eq            #0x5f5388
    // 0x5f5378: cmp             x3, #0xfe6
    // 0x5f537c: b.eq            #0x5f5388
    // 0x5f5380: r0 = false
    //     0x5f5380: add             x0, NULL, #0x30  ; false
    // 0x5f5384: b               #0x5f538c
    // 0x5f5388: r0 = true
    //     0x5f5388: add             x0, NULL, #0x20  ; true
    // 0x5f538c: tbnz            w0, #4, #0x5f5398
    // 0x5f5390: r0 = false
    //     0x5f5390: add             x0, NULL, #0x30  ; false
    // 0x5f5394: r0 = ReturnAsyncNotFuture()
    //     0x5f5394: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5f5398: ldur            x0, [fp, #-0x60]
    // 0x5f539c: ldur            x1, [fp, #-0x68]
    // 0x5f53a0: r0 = ReThrow()
    //     0x5f53a0: bl              #0x9262fc  ; ReThrowStub
    // 0x5f53a4: brk             #0
    // 0x5f53a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5f53a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5f53ac: b               #0x5f52bc
  }
}
