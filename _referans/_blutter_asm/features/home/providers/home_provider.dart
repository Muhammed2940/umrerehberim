// lib: , url: package:umrem_demo/features/home/providers/home_provider.dart

// class id: 1049581, size: 0x8
class :: {
}

// class id: 3861, size: 0x30, field offset: 0x24
class HomeProvider extends ChangeNotifier {

  get _ totalDaysMedine(/* No info */) {
    // ** addr: 0x72f2dc, size: 0xa0
    // 0x72f2dc: EnterFrame
    //     0x72f2dc: stp             fp, lr, [SP, #-0x10]!
    //     0x72f2e0: mov             fp, SP
    // 0x72f2e4: AllocStack(0x10)
    //     0x72f2e4: sub             SP, SP, #0x10
    // 0x72f2e8: SetupParameters(HomeProvider this /* r1 => r0, fp-0x10 */)
    //     0x72f2e8: mov             x0, x1
    //     0x72f2ec: stur            x1, [fp, #-0x10]
    // 0x72f2f0: CheckStackOverflow
    //     0x72f2f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f2f4: cmp             SP, x16
    //     0x72f2f8: b.ls            #0x72f374
    // 0x72f2fc: r1 = LoadStaticField(0xff0)
    //     0x72f2fc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x72f300: ldr             x1, [x1, #0x1fe0]
    // 0x72f304: cmp             w1, NULL
    // 0x72f308: b.eq            #0x72f330
    // 0x72f30c: LoadField: r2 = r1->field_13
    //     0x72f30c: ldur            w2, [x1, #0x13]
    // 0x72f310: DecompressPointer r2
    //     0x72f310: add             x2, x2, HEAP, lsl #32
    // 0x72f314: cmp             w2, NULL
    // 0x72f318: b.eq            #0x72f330
    // 0x72f31c: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x72f31c: ldur            w3, [x1, #0x17]
    // 0x72f320: DecompressPointer r3
    //     0x72f320: add             x3, x3, HEAP, lsl #32
    // 0x72f324: stur            x3, [fp, #-8]
    // 0x72f328: cmp             w3, NULL
    // 0x72f32c: b.ne            #0x72f340
    // 0x72f330: r0 = 0
    //     0x72f330: mov             x0, #0
    // 0x72f334: LeaveFrame
    //     0x72f334: mov             SP, fp
    //     0x72f338: ldp             fp, lr, [SP], #0x10
    // 0x72f33c: ret
    //     0x72f33c: ret             
    // 0x72f340: mov             x1, x0
    // 0x72f344: r0 = _onlyDate()
    //     0x72f344: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f348: ldur            x1, [fp, #-0x10]
    // 0x72f34c: ldur            x2, [fp, #-8]
    // 0x72f350: stur            x0, [fp, #-8]
    // 0x72f354: r0 = _onlyDate()
    //     0x72f354: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f358: ldur            x1, [fp, #-0x10]
    // 0x72f35c: ldur            x2, [fp, #-8]
    // 0x72f360: mov             x3, x0
    // 0x72f364: r0 = _inclusiveDaysBetween()
    //     0x72f364: bl              #0x72f39c  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_inclusiveDaysBetween
    // 0x72f368: LeaveFrame
    //     0x72f368: mov             SP, fp
    //     0x72f36c: ldp             fp, lr, [SP], #0x10
    // 0x72f370: ret
    //     0x72f370: ret             
    // 0x72f374: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f374: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f378: b               #0x72f2fc
  }
  _ _inclusiveDaysBetween(/* No info */) {
    // ** addr: 0x72f39c, size: 0x40
    // 0x72f39c: EnterFrame
    //     0x72f39c: stp             fp, lr, [SP, #-0x10]!
    //     0x72f3a0: mov             fp, SP
    // 0x72f3a4: mov             x0, x1
    // 0x72f3a8: mov             x1, x3
    // 0x72f3ac: CheckStackOverflow
    //     0x72f3ac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f3b0: cmp             SP, x16
    //     0x72f3b4: b.ls            #0x72f3d4
    // 0x72f3b8: r0 = difference()
    //     0x72f3b8: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x72f3bc: LoadField: r1 = r0->field_7
    //     0x72f3bc: ldur            x1, [x0, #7]
    // 0x72f3c0: r2 = 86400000000
    //     0x72f3c0: ldr             x2, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x72f3c4: sdiv            x0, x1, x2
    // 0x72f3c8: LeaveFrame
    //     0x72f3c8: mov             SP, fp
    //     0x72f3cc: ldp             fp, lr, [SP], #0x10
    // 0x72f3d0: ret
    //     0x72f3d0: ret             
    // 0x72f3d4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f3d4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f3d8: b               #0x72f3b8
  }
  _ _onlyDate(/* No info */) {
    // ** addr: 0x72f3dc, size: 0x110
    // 0x72f3dc: EnterFrame
    //     0x72f3dc: stp             fp, lr, [SP, #-0x10]!
    //     0x72f3e0: mov             fp, SP
    // 0x72f3e4: AllocStack(0x30)
    //     0x72f3e4: sub             SP, SP, #0x30
    // 0x72f3e8: SetupParameters(dynamic _ /* r2 => r0, fp-0x8 */)
    //     0x72f3e8: mov             x0, x2
    //     0x72f3ec: stur            x2, [fp, #-8]
    // 0x72f3f0: CheckStackOverflow
    //     0x72f3f0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f3f4: cmp             SP, x16
    //     0x72f3f8: b.ls            #0x72f4d8
    // 0x72f3fc: mov             x1, x0
    // 0x72f400: r0 = _parts()
    //     0x72f400: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x72f404: mov             x2, x0
    // 0x72f408: LoadField: r0 = r2->field_b
    //     0x72f408: ldur            w0, [x2, #0xb]
    // 0x72f40c: r1 = LoadInt32Instr(r0)
    //     0x72f40c: sbfx            x1, x0, #1, #0x1f
    // 0x72f410: mov             x0, x1
    // 0x72f414: r1 = 8
    //     0x72f414: mov             x1, #8
    // 0x72f418: cmp             x1, x0
    // 0x72f41c: b.hs            #0x72f4e0
    // 0x72f420: LoadField: r0 = r2->field_2f
    //     0x72f420: ldur            w0, [x2, #0x2f]
    // 0x72f424: DecompressPointer r0
    //     0x72f424: add             x0, x0, HEAP, lsl #32
    // 0x72f428: ldur            x1, [fp, #-8]
    // 0x72f42c: stur            x0, [fp, #-0x10]
    // 0x72f430: r0 = _parts()
    //     0x72f430: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x72f434: mov             x2, x0
    // 0x72f438: LoadField: r0 = r2->field_b
    //     0x72f438: ldur            w0, [x2, #0xb]
    // 0x72f43c: r1 = LoadInt32Instr(r0)
    //     0x72f43c: sbfx            x1, x0, #1, #0x1f
    // 0x72f440: mov             x0, x1
    // 0x72f444: r1 = 7
    //     0x72f444: mov             x1, #7
    // 0x72f448: cmp             x1, x0
    // 0x72f44c: b.hs            #0x72f4e4
    // 0x72f450: LoadField: r0 = r2->field_2b
    //     0x72f450: ldur            w0, [x2, #0x2b]
    // 0x72f454: DecompressPointer r0
    //     0x72f454: add             x0, x0, HEAP, lsl #32
    // 0x72f458: ldur            x1, [fp, #-8]
    // 0x72f45c: stur            x0, [fp, #-0x18]
    // 0x72f460: r0 = _parts()
    //     0x72f460: bl              #0x4e3e18  ; [dart:core] DateTime::_parts
    // 0x72f464: mov             x2, x0
    // 0x72f468: LoadField: r0 = r2->field_b
    //     0x72f468: ldur            w0, [x2, #0xb]
    // 0x72f46c: r1 = LoadInt32Instr(r0)
    //     0x72f46c: sbfx            x1, x0, #1, #0x1f
    // 0x72f470: mov             x0, x1
    // 0x72f474: r1 = 5
    //     0x72f474: mov             x1, #5
    // 0x72f478: cmp             x1, x0
    // 0x72f47c: b.hs            #0x72f4e8
    // 0x72f480: LoadField: r0 = r2->field_23
    //     0x72f480: ldur            w0, [x2, #0x23]
    // 0x72f484: DecompressPointer r0
    //     0x72f484: add             x0, x0, HEAP, lsl #32
    // 0x72f488: ldur            x1, [fp, #-0x10]
    // 0x72f48c: stur            x0, [fp, #-8]
    // 0x72f490: r2 = LoadInt32Instr(r1)
    //     0x72f490: sbfx            x2, x1, #1, #0x1f
    //     0x72f494: tbz             w1, #0, #0x72f49c
    //     0x72f498: ldur            x2, [x1, #7]
    // 0x72f49c: stur            x2, [fp, #-0x20]
    // 0x72f4a0: r0 = DateTime()
    //     0x72f4a0: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x72f4a4: stur            x0, [fp, #-0x10]
    // 0x72f4a8: ldur            x16, [fp, #-0x18]
    // 0x72f4ac: ldur            lr, [fp, #-8]
    // 0x72f4b0: stp             lr, x16, [SP]
    // 0x72f4b4: mov             x1, x0
    // 0x72f4b8: ldur            x2, [fp, #-0x20]
    // 0x72f4bc: r4 = const [0, 0x4, 0x2, 0x4, null]
    //     0x72f4bc: add             x4, PP, #8, lsl #12  ; [pp+0x8808] List(5) [0, 0x4, 0x2, 0x4, Null]
    //     0x72f4c0: ldr             x4, [x4, #0x808]
    // 0x72f4c4: r0 = DateTime()
    //     0x72f4c4: bl              #0x4e2a30  ; [dart:core] DateTime::DateTime
    // 0x72f4c8: ldur            x0, [fp, #-0x10]
    // 0x72f4cc: LeaveFrame
    //     0x72f4cc: mov             SP, fp
    //     0x72f4d0: ldp             fp, lr, [SP], #0x10
    // 0x72f4d4: ret
    //     0x72f4d4: ret             
    // 0x72f4d8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f4d8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f4dc: b               #0x72f3fc
    // 0x72f4e0: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f4e0: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x72f4e4: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f4e4: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
    // 0x72f4e8: r0 = RangeErrorSharedWithoutFPURegs()
    //     0x72f4e8: bl              #0x9286d0  ; RangeErrorSharedWithoutFPURegsStub
  }
  get _ daysLeftMedine(/* No info */) {
    // ** addr: 0x72f4ec, size: 0x10c
    // 0x72f4ec: EnterFrame
    //     0x72f4ec: stp             fp, lr, [SP, #-0x10]!
    //     0x72f4f0: mov             fp, SP
    // 0x72f4f4: AllocStack(0x20)
    //     0x72f4f4: sub             SP, SP, #0x20
    // 0x72f4f8: SetupParameters(HomeProvider this /* r1 => r0, fp-0x10 */)
    //     0x72f4f8: mov             x0, x1
    //     0x72f4fc: stur            x1, [fp, #-0x10]
    // 0x72f500: CheckStackOverflow
    //     0x72f500: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f504: cmp             SP, x16
    //     0x72f508: b.ls            #0x72f5f0
    // 0x72f50c: r1 = LoadStaticField(0xff0)
    //     0x72f50c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x72f510: ldr             x1, [x1, #0x1fe0]
    // 0x72f514: cmp             w1, NULL
    // 0x72f518: b.eq            #0x72f540
    // 0x72f51c: LoadField: r2 = r1->field_13
    //     0x72f51c: ldur            w2, [x1, #0x13]
    // 0x72f520: DecompressPointer r2
    //     0x72f520: add             x2, x2, HEAP, lsl #32
    // 0x72f524: cmp             w2, NULL
    // 0x72f528: b.eq            #0x72f540
    // 0x72f52c: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x72f52c: ldur            w3, [x1, #0x17]
    // 0x72f530: DecompressPointer r3
    //     0x72f530: add             x3, x3, HEAP, lsl #32
    // 0x72f534: stur            x3, [fp, #-8]
    // 0x72f538: cmp             w3, NULL
    // 0x72f53c: b.ne            #0x72f550
    // 0x72f540: r0 = 0
    //     0x72f540: mov             x0, #0
    // 0x72f544: LeaveFrame
    //     0x72f544: mov             SP, fp
    //     0x72f548: ldp             fp, lr, [SP], #0x10
    // 0x72f54c: ret
    //     0x72f54c: ret             
    // 0x72f550: mov             x1, x0
    // 0x72f554: r0 = _onlyDate()
    //     0x72f554: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f558: ldur            x1, [fp, #-0x10]
    // 0x72f55c: ldur            x2, [fp, #-8]
    // 0x72f560: stur            x0, [fp, #-8]
    // 0x72f564: r0 = _onlyDate()
    //     0x72f564: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f568: mov             x3, x0
    // 0x72f56c: ldur            x0, [fp, #-0x10]
    // 0x72f570: stur            x3, [fp, #-0x18]
    // 0x72f574: LoadField: r2 = r0->field_2b
    //     0x72f574: ldur            w2, [x0, #0x2b]
    // 0x72f578: DecompressPointer r2
    //     0x72f578: add             x2, x2, HEAP, lsl #32
    // 0x72f57c: mov             x1, x0
    // 0x72f580: r0 = _onlyDate()
    //     0x72f580: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f584: mov             x1, x0
    // 0x72f588: ldur            x2, [fp, #-0x18]
    // 0x72f58c: stur            x0, [fp, #-0x20]
    // 0x72f590: r0 = isAfter()
    //     0x72f590: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x72f594: tbnz            w0, #4, #0x72f5a8
    // 0x72f598: r0 = 0
    //     0x72f598: mov             x0, #0
    // 0x72f59c: LeaveFrame
    //     0x72f59c: mov             SP, fp
    //     0x72f5a0: ldp             fp, lr, [SP], #0x10
    // 0x72f5a4: ret
    //     0x72f5a4: ret             
    // 0x72f5a8: ldur            x1, [fp, #-0x20]
    // 0x72f5ac: ldur            x2, [fp, #-8]
    // 0x72f5b0: r0 = isBefore()
    //     0x72f5b0: bl              #0x5793c8  ; [dart:core] DateTime::isBefore
    // 0x72f5b4: tbnz            w0, #4, #0x72f5cc
    // 0x72f5b8: ldur            x1, [fp, #-0x10]
    // 0x72f5bc: r0 = totalDaysMedine()
    //     0x72f5bc: bl              #0x72f2dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::totalDaysMedine
    // 0x72f5c0: LeaveFrame
    //     0x72f5c0: mov             SP, fp
    //     0x72f5c4: ldp             fp, lr, [SP], #0x10
    // 0x72f5c8: ret
    //     0x72f5c8: ret             
    // 0x72f5cc: ldur            x1, [fp, #-0x18]
    // 0x72f5d0: ldur            x2, [fp, #-0x20]
    // 0x72f5d4: r0 = difference()
    //     0x72f5d4: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x72f5d8: LoadField: r1 = r0->field_7
    //     0x72f5d8: ldur            x1, [x0, #7]
    // 0x72f5dc: r2 = 86400000000
    //     0x72f5dc: ldr             x2, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x72f5e0: sdiv            x0, x1, x2
    // 0x72f5e4: LeaveFrame
    //     0x72f5e4: mov             SP, fp
    //     0x72f5e8: ldp             fp, lr, [SP], #0x10
    // 0x72f5ec: ret
    //     0x72f5ec: ret             
    // 0x72f5f0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f5f0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f5f4: b               #0x72f50c
  }
  get _ totalDaysMekke(/* No info */) {
    // ** addr: 0x72f604, size: 0xa0
    // 0x72f604: EnterFrame
    //     0x72f604: stp             fp, lr, [SP, #-0x10]!
    //     0x72f608: mov             fp, SP
    // 0x72f60c: AllocStack(0x10)
    //     0x72f60c: sub             SP, SP, #0x10
    // 0x72f610: SetupParameters(HomeProvider this /* r1 => r0, fp-0x10 */)
    //     0x72f610: mov             x0, x1
    //     0x72f614: stur            x1, [fp, #-0x10]
    // 0x72f618: CheckStackOverflow
    //     0x72f618: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f61c: cmp             SP, x16
    //     0x72f620: b.ls            #0x72f69c
    // 0x72f624: r1 = LoadStaticField(0xfec)
    //     0x72f624: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x72f628: ldr             x1, [x1, #0x1fd8]
    // 0x72f62c: cmp             w1, NULL
    // 0x72f630: b.eq            #0x72f658
    // 0x72f634: LoadField: r2 = r1->field_13
    //     0x72f634: ldur            w2, [x1, #0x13]
    // 0x72f638: DecompressPointer r2
    //     0x72f638: add             x2, x2, HEAP, lsl #32
    // 0x72f63c: cmp             w2, NULL
    // 0x72f640: b.eq            #0x72f658
    // 0x72f644: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x72f644: ldur            w3, [x1, #0x17]
    // 0x72f648: DecompressPointer r3
    //     0x72f648: add             x3, x3, HEAP, lsl #32
    // 0x72f64c: stur            x3, [fp, #-8]
    // 0x72f650: cmp             w3, NULL
    // 0x72f654: b.ne            #0x72f668
    // 0x72f658: r0 = 0
    //     0x72f658: mov             x0, #0
    // 0x72f65c: LeaveFrame
    //     0x72f65c: mov             SP, fp
    //     0x72f660: ldp             fp, lr, [SP], #0x10
    // 0x72f664: ret
    //     0x72f664: ret             
    // 0x72f668: mov             x1, x0
    // 0x72f66c: r0 = _onlyDate()
    //     0x72f66c: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f670: ldur            x1, [fp, #-0x10]
    // 0x72f674: ldur            x2, [fp, #-8]
    // 0x72f678: stur            x0, [fp, #-8]
    // 0x72f67c: r0 = _onlyDate()
    //     0x72f67c: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f680: ldur            x1, [fp, #-0x10]
    // 0x72f684: ldur            x2, [fp, #-8]
    // 0x72f688: mov             x3, x0
    // 0x72f68c: r0 = _inclusiveDaysBetween()
    //     0x72f68c: bl              #0x72f39c  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_inclusiveDaysBetween
    // 0x72f690: LeaveFrame
    //     0x72f690: mov             SP, fp
    //     0x72f694: ldp             fp, lr, [SP], #0x10
    // 0x72f698: ret
    //     0x72f698: ret             
    // 0x72f69c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f69c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f6a0: b               #0x72f624
  }
  get _ daysLeftMekke(/* No info */) {
    // ** addr: 0x72f6a4, size: 0x10c
    // 0x72f6a4: EnterFrame
    //     0x72f6a4: stp             fp, lr, [SP, #-0x10]!
    //     0x72f6a8: mov             fp, SP
    // 0x72f6ac: AllocStack(0x20)
    //     0x72f6ac: sub             SP, SP, #0x20
    // 0x72f6b0: SetupParameters(HomeProvider this /* r1 => r0, fp-0x10 */)
    //     0x72f6b0: mov             x0, x1
    //     0x72f6b4: stur            x1, [fp, #-0x10]
    // 0x72f6b8: CheckStackOverflow
    //     0x72f6b8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f6bc: cmp             SP, x16
    //     0x72f6c0: b.ls            #0x72f7a8
    // 0x72f6c4: r1 = LoadStaticField(0xfec)
    //     0x72f6c4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x72f6c8: ldr             x1, [x1, #0x1fd8]
    // 0x72f6cc: cmp             w1, NULL
    // 0x72f6d0: b.eq            #0x72f6f8
    // 0x72f6d4: LoadField: r2 = r1->field_13
    //     0x72f6d4: ldur            w2, [x1, #0x13]
    // 0x72f6d8: DecompressPointer r2
    //     0x72f6d8: add             x2, x2, HEAP, lsl #32
    // 0x72f6dc: cmp             w2, NULL
    // 0x72f6e0: b.eq            #0x72f6f8
    // 0x72f6e4: ArrayLoad: r3 = r1[0]  ; List_4
    //     0x72f6e4: ldur            w3, [x1, #0x17]
    // 0x72f6e8: DecompressPointer r3
    //     0x72f6e8: add             x3, x3, HEAP, lsl #32
    // 0x72f6ec: stur            x3, [fp, #-8]
    // 0x72f6f0: cmp             w3, NULL
    // 0x72f6f4: b.ne            #0x72f708
    // 0x72f6f8: r0 = 0
    //     0x72f6f8: mov             x0, #0
    // 0x72f6fc: LeaveFrame
    //     0x72f6fc: mov             SP, fp
    //     0x72f700: ldp             fp, lr, [SP], #0x10
    // 0x72f704: ret
    //     0x72f704: ret             
    // 0x72f708: mov             x1, x0
    // 0x72f70c: r0 = _onlyDate()
    //     0x72f70c: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f710: ldur            x1, [fp, #-0x10]
    // 0x72f714: ldur            x2, [fp, #-8]
    // 0x72f718: stur            x0, [fp, #-8]
    // 0x72f71c: r0 = _onlyDate()
    //     0x72f71c: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f720: mov             x3, x0
    // 0x72f724: ldur            x0, [fp, #-0x10]
    // 0x72f728: stur            x3, [fp, #-0x18]
    // 0x72f72c: LoadField: r2 = r0->field_2b
    //     0x72f72c: ldur            w2, [x0, #0x2b]
    // 0x72f730: DecompressPointer r2
    //     0x72f730: add             x2, x2, HEAP, lsl #32
    // 0x72f734: mov             x1, x0
    // 0x72f738: r0 = _onlyDate()
    //     0x72f738: bl              #0x72f3dc  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::_onlyDate
    // 0x72f73c: mov             x1, x0
    // 0x72f740: ldur            x2, [fp, #-0x18]
    // 0x72f744: stur            x0, [fp, #-0x20]
    // 0x72f748: r0 = isAfter()
    //     0x72f748: bl              #0x5793ac  ; [dart:core] DateTime::isAfter
    // 0x72f74c: tbnz            w0, #4, #0x72f760
    // 0x72f750: r0 = 0
    //     0x72f750: mov             x0, #0
    // 0x72f754: LeaveFrame
    //     0x72f754: mov             SP, fp
    //     0x72f758: ldp             fp, lr, [SP], #0x10
    // 0x72f75c: ret
    //     0x72f75c: ret             
    // 0x72f760: ldur            x1, [fp, #-0x20]
    // 0x72f764: ldur            x2, [fp, #-8]
    // 0x72f768: r0 = isBefore()
    //     0x72f768: bl              #0x5793c8  ; [dart:core] DateTime::isBefore
    // 0x72f76c: tbnz            w0, #4, #0x72f784
    // 0x72f770: ldur            x1, [fp, #-0x10]
    // 0x72f774: r0 = totalDaysMekke()
    //     0x72f774: bl              #0x72f604  ; [package:umrem_demo/features/home/providers/home_provider.dart] HomeProvider::totalDaysMekke
    // 0x72f778: LeaveFrame
    //     0x72f778: mov             SP, fp
    //     0x72f77c: ldp             fp, lr, [SP], #0x10
    // 0x72f780: ret
    //     0x72f780: ret             
    // 0x72f784: ldur            x1, [fp, #-0x18]
    // 0x72f788: ldur            x2, [fp, #-0x20]
    // 0x72f78c: r0 = difference()
    //     0x72f78c: bl              #0x5e099c  ; [dart:core] DateTime::difference
    // 0x72f790: LoadField: r1 = r0->field_7
    //     0x72f790: ldur            x1, [x0, #7]
    // 0x72f794: r2 = 86400000000
    //     0x72f794: ldr             x2, [PP, #0x7d78]  ; [pp+0x7d78] IMM: 0x141dd76000
    // 0x72f798: sdiv            x0, x1, x2
    // 0x72f79c: LeaveFrame
    //     0x72f79c: mov             SP, fp
    //     0x72f7a0: ldp             fp, lr, [SP], #0x10
    // 0x72f7a4: ret
    //     0x72f7a4: ret             
    // 0x72f7a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f7a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f7ac: b               #0x72f6c4
  }
  _ setCurrentPrayerIndex(/* No info */) {
    // ** addr: 0x72f840, size: 0x34
    // 0x72f840: EnterFrame
    //     0x72f840: stp             fp, lr, [SP, #-0x10]!
    //     0x72f844: mov             fp, SP
    // 0x72f848: CheckStackOverflow
    //     0x72f848: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72f84c: cmp             SP, x16
    //     0x72f850: b.ls            #0x72f86c
    // 0x72f854: StoreField: r1->field_23 = r2
    //     0x72f854: stur            x2, [x1, #0x23]
    // 0x72f858: r0 = notifyListeners()
    //     0x72f858: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x72f85c: r0 = Null
    //     0x72f85c: mov             x0, NULL
    // 0x72f860: LeaveFrame
    //     0x72f860: mov             SP, fp
    //     0x72f864: ldp             fp, lr, [SP], #0x10
    // 0x72f868: ret
    //     0x72f868: ret             
    // 0x72f86c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72f86c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72f870: b               #0x72f854
  }
  _ HomeProvider(/* No info */) {
    // ** addr: 0x7f0688, size: 0xcc
    // 0x7f0688: EnterFrame
    //     0x7f0688: stp             fp, lr, [SP, #-0x10]!
    //     0x7f068c: mov             fp, SP
    // 0x7f0690: AllocStack(0x10)
    //     0x7f0690: sub             SP, SP, #0x10
    // 0x7f0694: SetupParameters(HomeProvider this /* r1 => r1, fp-0x8 */)
    //     0x7f0694: stur            x1, [fp, #-8]
    // 0x7f0698: CheckStackOverflow
    //     0x7f0698: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f069c: cmp             SP, x16
    //     0x7f06a0: b.ls            #0x7f074c
    // 0x7f06a4: StoreField: r1->field_23 = rZR
    //     0x7f06a4: stur            xzr, [x1, #0x23]
    // 0x7f06a8: r0 = DateTime()
    //     0x7f06a8: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x7f06ac: mov             x1, x0
    // 0x7f06b0: r0 = false
    //     0x7f06b0: add             x0, NULL, #0x30  ; false
    // 0x7f06b4: stur            x1, [fp, #-0x10]
    // 0x7f06b8: StoreField: r1->field_7 = r0
    //     0x7f06b8: stur            w0, [x1, #7]
    // 0x7f06bc: r0 = _getCurrentMicros()
    //     0x7f06bc: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7f06c0: r1 = LoadInt32Instr(r0)
    //     0x7f06c0: sbfx            x1, x0, #1, #0x1f
    //     0x7f06c4: tbz             w0, #0, #0x7f06cc
    //     0x7f06c8: ldur            x1, [x0, #7]
    // 0x7f06cc: ldur            x0, [fp, #-0x10]
    // 0x7f06d0: StoreField: r0->field_b = r1
    //     0x7f06d0: stur            x1, [x0, #0xb]
    // 0x7f06d4: ldur            x1, [fp, #-8]
    // 0x7f06d8: StoreField: r1->field_2b = r0
    //     0x7f06d8: stur            w0, [x1, #0x2b]
    //     0x7f06dc: ldurb           w16, [x1, #-1]
    //     0x7f06e0: ldurb           w17, [x0, #-1]
    //     0x7f06e4: and             x16, x17, x16, lsr #2
    //     0x7f06e8: tst             x16, HEAP, lsr #32
    //     0x7f06ec: b.eq            #0x7f06f4
    //     0x7f06f0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f06f4: StoreField: r1->field_7 = rZR
    //     0x7f06f4: stur            xzr, [x1, #7]
    // 0x7f06f8: StoreField: r1->field_13 = rZR
    //     0x7f06f8: stur            xzr, [x1, #0x13]
    // 0x7f06fc: StoreField: r1->field_1b = rZR
    //     0x7f06fc: stur            xzr, [x1, #0x1b]
    // 0x7f0700: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f0700: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0704: ldr             x0, [x0, #0xbc0]
    //     0x7f0708: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f070c: cmp             w0, w16
    //     0x7f0710: b.ne            #0x7f071c
    //     0x7f0714: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f0718: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f071c: ldur            x1, [fp, #-8]
    // 0x7f0720: StoreField: r1->field_f = r0
    //     0x7f0720: stur            w0, [x1, #0xf]
    //     0x7f0724: ldurb           w16, [x1, #-1]
    //     0x7f0728: ldurb           w17, [x0, #-1]
    //     0x7f072c: and             x16, x17, x16, lsr #2
    //     0x7f0730: tst             x16, HEAP, lsr #32
    //     0x7f0734: b.eq            #0x7f073c
    //     0x7f0738: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f073c: r0 = Null
    //     0x7f073c: mov             x0, NULL
    // 0x7f0740: LeaveFrame
    //     0x7f0740: mov             SP, fp
    //     0x7f0744: ldp             fp, lr, [SP], #0x10
    // 0x7f0748: ret
    //     0x7f0748: ret             
    // 0x7f074c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f074c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0750: b               #0x7f06a4
  }
}
