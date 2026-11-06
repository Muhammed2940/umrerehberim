// lib: , url: package:umrem_demo/features/dualar/screens/zikirmatik.dart

// class id: 1049578, size: 0x8
class :: {
}

// class id: 196, size: 0x8, field offset: 0x8
abstract class Veriler extends Object {

  static late Color arkaplan; // offset: 0x1040
  static late Color tema; // offset: 0x103c
  static late List<ModelZikirlerim> zikirlerim; // offset: 0x1038

  static List<ModelZikirlerim> zikirlerim() {
    // ** addr: 0x6fc460, size: 0x38
    // 0x6fc460: EnterFrame
    //     0x6fc460: stp             fp, lr, [SP, #-0x10]!
    //     0x6fc464: mov             fp, SP
    // 0x6fc468: CheckStackOverflow
    //     0x6fc468: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fc46c: cmp             SP, x16
    //     0x6fc470: b.ls            #0x6fc490
    // 0x6fc474: r1 = <ModelZikirlerim>
    //     0x6fc474: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bef0] TypeArguments: <ModelZikirlerim>
    //     0x6fc478: ldr             x1, [x1, #0xef0]
    // 0x6fc47c: r2 = 0
    //     0x6fc47c: mov             x2, #0
    // 0x6fc480: r0 = _GrowableList()
    //     0x6fc480: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x6fc484: LeaveFrame
    //     0x6fc484: mov             SP, fp
    //     0x6fc488: ldp             fp, lr, [SP], #0x10
    // 0x6fc48c: ret
    //     0x6fc48c: ret             
    // 0x6fc490: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fc490: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fc494: b               #0x6fc474
  }
  static Color tema() {
    // ** addr: 0x6fc498, size: 0xc
    // 0x6fc498: r0 = Instance_Color
    //     0x6fc498: add             x0, PP, #0x20, lsl #12  ; [pp+0x20838] Obj!Color@a25571
    //     0x6fc49c: ldr             x0, [x0, #0x838]
    // 0x6fc4a0: ret
    //     0x6fc4a0: ret             
  }
  static Color arkaplan() {
    // ** addr: 0x7294fc, size: 0x8
    // 0x7294fc: r0 = Instance_Color
    //     0x7294fc: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x729500: ret
    //     0x729500: ret             
  }
}

// class id: 2474, size: 0x28, field offset: 0x14
class _ZikirCekState extends State<dynamic> {

  _ initState(/* No info */) {
    // ** addr: 0x5e58a0, size: 0x48
    // 0x5e58a0: EnterFrame
    //     0x5e58a0: stp             fp, lr, [SP, #-0x10]!
    //     0x5e58a4: mov             fp, SP
    // 0x5e58a8: AllocStack(0x8)
    //     0x5e58a8: sub             SP, SP, #8
    // 0x5e58ac: SetupParameters(_ZikirCekState this /* r1 => r0, fp-0x8 */)
    //     0x5e58ac: mov             x0, x1
    //     0x5e58b0: stur            x1, [fp, #-8]
    // 0x5e58b4: CheckStackOverflow
    //     0x5e58b4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e58b8: cmp             SP, x16
    //     0x5e58bc: b.ls            #0x5e58e0
    // 0x5e58c0: mov             x1, x0
    // 0x5e58c4: r0 = renkBul()
    //     0x5e58c4: bl              #0x5e66d8  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkBul
    // 0x5e58c8: ldur            x1, [fp, #-8]
    // 0x5e58cc: r0 = zikirYukle()
    //     0x5e58cc: bl              #0x5e5908  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle
    // 0x5e58d0: r0 = Null
    //     0x5e58d0: mov             x0, NULL
    // 0x5e58d4: LeaveFrame
    //     0x5e58d4: mov             SP, fp
    //     0x5e58d8: ldp             fp, lr, [SP], #0x10
    // 0x5e58dc: ret
    //     0x5e58dc: ret             
    // 0x5e58e0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e58e0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e58e4: b               #0x5e58c0
  }
  _ zikirYukle(/* No info */) async {
    // ** addr: 0x5e5908, size: 0x344
    // 0x5e5908: EnterFrame
    //     0x5e5908: stp             fp, lr, [SP, #-0x10]!
    //     0x5e590c: mov             fp, SP
    // 0x5e5910: AllocStack(0x40)
    //     0x5e5910: sub             SP, SP, #0x40
    // 0x5e5914: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x5e5914: stur            NULL, [fp, #-8]
    //     0x5e5918: stur            x1, [fp, #-0x10]
    // 0x5e591c: CheckStackOverflow
    //     0x5e591c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e5920: cmp             SP, x16
    //     0x5e5924: b.ls            #0x5e5c3c
    // 0x5e5928: r1 = 5
    //     0x5e5928: mov             x1, #5
    // 0x5e592c: r0 = AllocateContext()
    //     0x5e592c: bl              #0x927010  ; AllocateContextStub
    // 0x5e5930: mov             x2, x0
    // 0x5e5934: ldur            x1, [fp, #-0x10]
    // 0x5e5938: stur            x2, [fp, #-0x18]
    // 0x5e593c: StoreField: r2->field_f = r1
    //     0x5e593c: stur            w1, [x2, #0xf]
    // 0x5e5940: InitAsync() -> Future
    //     0x5e5940: mov             x0, NULL
    //     0x5e5944: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e5948: r0 = getInstance()
    //     0x5e5948: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e594c: mov             x1, x0
    // 0x5e5950: stur            x1, [fp, #-0x20]
    // 0x5e5954: r0 = Await()
    //     0x5e5954: bl              #0x3dd188  ; AwaitStub
    // 0x5e5958: mov             x1, x0
    // 0x5e595c: r2 = "titreme"
    //     0x5e595c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20630] "titreme"
    //     0x5e5960: ldr             x2, [x2, #0x630]
    // 0x5e5964: stur            x0, [fp, #-0x20]
    // 0x5e5968: r0 = getBool()
    //     0x5e5968: bl              #0x5e60a4  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getBool
    // 0x5e596c: mov             x1, x0
    // 0x5e5970: ldur            x0, [fp, #-0x18]
    // 0x5e5974: StoreField: r0->field_13 = r1
    //     0x5e5974: stur            w1, [x0, #0x13]
    // 0x5e5978: mov             x2, x0
    // 0x5e597c: r1 = Function '<anonymous closure>':.
    //     0x5e597c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20840] AnonymousClosure: (0x5e66a8), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle (0x5e5908)
    //     0x5e5980: ldr             x1, [x1, #0x840]
    // 0x5e5984: r0 = AllocateClosure()
    //     0x5e5984: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5988: ldur            x1, [fp, #-0x10]
    // 0x5e598c: mov             x2, x0
    // 0x5e5990: r0 = setState()
    //     0x5e5990: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e5994: ldur            x1, [fp, #-0x20]
    // 0x5e5998: r2 = "zikirlerim"
    //     0x5e5998: add             x2, PP, #0x20, lsl #12  ; [pp+0x207a0] "zikirlerim"
    //     0x5e599c: ldr             x2, [x2, #0x7a0]
    // 0x5e59a0: r0 = getString()
    //     0x5e59a0: bl              #0x5e6014  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getString
    // 0x5e59a4: cmp             w0, NULL
    // 0x5e59a8: b.eq            #0x5e5a70
    // 0x5e59ac: mov             x2, x0
    // 0x5e59b0: r1 = Instance_JsonCodec
    //     0x5e59b0: add             x1, PP, #8, lsl #12  ; [pp+0x84f8] Obj!JsonCodec@a27081
    //     0x5e59b4: ldr             x1, [x1, #0x4f8]
    // 0x5e59b8: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x5e59b8: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x5e59bc: r0 = decode()
    //     0x5e59bc: bl              #0x82b898  ; [dart:convert] JsonCodec::decode
    // 0x5e59c0: mov             x3, x0
    // 0x5e59c4: r2 = Null
    //     0x5e59c4: mov             x2, NULL
    // 0x5e59c8: r1 = Null
    //     0x5e59c8: mov             x1, NULL
    // 0x5e59cc: stur            x3, [fp, #-0x28]
    // 0x5e59d0: r4 = 60
    //     0x5e59d0: mov             x4, #0x3c
    // 0x5e59d4: branchIfSmi(r0, 0x5e59e0)
    //     0x5e59d4: tbz             w0, #0, #0x5e59e0
    // 0x5e59d8: r4 = LoadClassIdInstr(r0)
    //     0x5e59d8: ldur            x4, [x0, #-1]
    //     0x5e59dc: ubfx            x4, x4, #0xc, #0x14
    // 0x5e59e0: sub             x4, x4, #0x5a
    // 0x5e59e4: cmp             x4, #2
    // 0x5e59e8: b.ls            #0x5e59fc
    // 0x5e59ec: r8 = List
    //     0x5e59ec: ldr             x8, [PP, #0x30b8]  ; [pp+0x30b8] Type: List
    // 0x5e59f0: r3 = Null
    //     0x5e59f0: add             x3, PP, #0x20, lsl #12  ; [pp+0x20848] Null
    //     0x5e59f4: ldr             x3, [x3, #0x848]
    // 0x5e59f8: r0 = List()
    //     0x5e59f8: bl              #0x93b5b0  ; IsType_List_Stub
    // 0x5e59fc: r1 = Function '<anonymous closure>':.
    //     0x5e59fc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20858] AnonymousClosure: (0x5e6274), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle (0x5e5908)
    //     0x5e5a00: ldr             x1, [x1, #0x858]
    // 0x5e5a04: r2 = Null
    //     0x5e5a04: mov             x2, NULL
    // 0x5e5a08: r0 = AllocateClosure()
    //     0x5e5a08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5a0c: mov             x1, x0
    // 0x5e5a10: ldur            x0, [fp, #-0x28]
    // 0x5e5a14: r2 = LoadClassIdInstr(r0)
    //     0x5e5a14: ldur            x2, [x0, #-1]
    //     0x5e5a18: ubfx            x2, x2, #0xc, #0x14
    // 0x5e5a1c: r16 = <ModelZikirlerim>
    //     0x5e5a1c: add             x16, PP, #0x1b, lsl #12  ; [pp+0x1bef0] TypeArguments: <ModelZikirlerim>
    //     0x5e5a20: ldr             x16, [x16, #0xef0]
    // 0x5e5a24: stp             x0, x16, [SP, #8]
    // 0x5e5a28: str             x1, [SP]
    // 0x5e5a2c: mov             x0, x2
    // 0x5e5a30: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x5e5a30: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x5e5a34: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x5e5a34: mov             x17, #0xd1d6
    //     0x5e5a38: add             lr, x0, x17
    //     0x5e5a3c: ldr             lr, [x21, lr, lsl #3]
    //     0x5e5a40: blr             lr
    // 0x5e5a44: r1 = LoadClassIdInstr(r0)
    //     0x5e5a44: ldur            x1, [x0, #-1]
    //     0x5e5a48: ubfx            x1, x1, #0xc, #0x14
    // 0x5e5a4c: mov             x16, x0
    // 0x5e5a50: mov             x0, x1
    // 0x5e5a54: mov             x1, x16
    // 0x5e5a58: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e5a58: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e5a5c: r0 = GDT[cid_x0 + 0xd299]()
    //     0x5e5a5c: mov             x17, #0xd299
    //     0x5e5a60: add             lr, x0, x17
    //     0x5e5a64: ldr             lr, [x21, lr, lsl #3]
    //     0x5e5a68: blr             lr
    // 0x5e5a6c: b               #0x5e5a80
    // 0x5e5a70: r1 = <ModelZikirlerim>
    //     0x5e5a70: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bef0] TypeArguments: <ModelZikirlerim>
    //     0x5e5a74: ldr             x1, [x1, #0xef0]
    // 0x5e5a78: r2 = 0
    //     0x5e5a78: mov             x2, #0
    // 0x5e5a7c: r0 = _GrowableList()
    //     0x5e5a7c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x5e5a80: ldur            x3, [fp, #-0x18]
    // 0x5e5a84: ArrayStore: r3[0] = r0  ; List_4
    //     0x5e5a84: stur            w0, [x3, #0x17]
    //     0x5e5a88: ldurb           w16, [x3, #-1]
    //     0x5e5a8c: ldurb           w17, [x0, #-1]
    //     0x5e5a90: and             x16, x17, x16, lsr #2
    //     0x5e5a94: tst             x16, HEAP, lsr #32
    //     0x5e5a98: b.eq            #0x5e5aa0
    //     0x5e5a9c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e5aa0: mov             x2, x3
    // 0x5e5aa4: r1 = Function '<anonymous closure>':.
    //     0x5e5aa4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20860] AnonymousClosure: (0x5e6250), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle (0x5e5908)
    //     0x5e5aa8: ldr             x1, [x1, #0x860]
    // 0x5e5aac: r0 = AllocateClosure()
    //     0x5e5aac: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5ab0: ldur            x1, [fp, #-0x10]
    // 0x5e5ab4: mov             x2, x0
    // 0x5e5ab8: r0 = setState()
    //     0x5e5ab8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e5abc: ldur            x1, [fp, #-0x20]
    // 0x5e5ac0: r2 = "kaydedilenZikir"
    //     0x5e5ac0: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x5e5ac4: ldr             x2, [x2, #0x598]
    // 0x5e5ac8: r0 = getInt()
    //     0x5e5ac8: bl              #0x5cea8c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInt
    // 0x5e5acc: mov             x1, x0
    // 0x5e5ad0: ldur            x3, [fp, #-0x18]
    // 0x5e5ad4: StoreField: r3->field_1b = r0
    //     0x5e5ad4: stur            w0, [x3, #0x1b]
    //     0x5e5ad8: tbz             w0, #0, #0x5e5af4
    //     0x5e5adc: ldurb           w16, [x3, #-1]
    //     0x5e5ae0: ldurb           w17, [x0, #-1]
    //     0x5e5ae4: and             x16, x17, x16, lsr #2
    //     0x5e5ae8: tst             x16, HEAP, lsr #32
    //     0x5e5aec: b.eq            #0x5e5af4
    //     0x5e5af0: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e5af4: cmp             w1, NULL
    // 0x5e5af8: b.eq            #0x5e5b18
    // 0x5e5afc: mov             x2, x3
    // 0x5e5b00: r1 = Function '<anonymous closure>':.
    //     0x5e5b00: add             x1, PP, #0x20, lsl #12  ; [pp+0x20868] AnonymousClosure: (0x5e622c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle (0x5e5908)
    //     0x5e5b04: ldr             x1, [x1, #0x868]
    // 0x5e5b08: r0 = AllocateClosure()
    //     0x5e5b08: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5b0c: ldur            x1, [fp, #-0x10]
    // 0x5e5b10: mov             x2, x0
    // 0x5e5b14: r0 = setState()
    //     0x5e5b14: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e5b18: ldur            x3, [fp, #-0x10]
    // 0x5e5b1c: ldur            x0, [fp, #-0x18]
    // 0x5e5b20: ldur            x1, [fp, #-0x20]
    // 0x5e5b24: r2 = "hedef"
    //     0x5e5b24: add             x2, PP, #0x20, lsl #12  ; [pp+0x20668] "hedef"
    //     0x5e5b28: ldr             x2, [x2, #0x668]
    // 0x5e5b2c: r0 = getInt()
    //     0x5e5b2c: bl              #0x5cea8c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInt
    // 0x5e5b30: ldur            x3, [fp, #-0x18]
    // 0x5e5b34: StoreField: r3->field_1f = r0
    //     0x5e5b34: stur            w0, [x3, #0x1f]
    //     0x5e5b38: tbz             w0, #0, #0x5e5b54
    //     0x5e5b3c: ldurb           w16, [x3, #-1]
    //     0x5e5b40: ldurb           w17, [x0, #-1]
    //     0x5e5b44: and             x16, x17, x16, lsr #2
    //     0x5e5b48: tst             x16, HEAP, lsr #32
    //     0x5e5b4c: b.eq            #0x5e5b54
    //     0x5e5b50: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e5b54: mov             x2, x3
    // 0x5e5b58: r1 = Function '<anonymous closure>':.
    //     0x5e5b58: add             x1, PP, #0x20, lsl #12  ; [pp+0x20870] AnonymousClosure: (0x5e61e8), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle (0x5e5908)
    //     0x5e5b5c: ldr             x1, [x1, #0x870]
    // 0x5e5b60: r0 = AllocateClosure()
    //     0x5e5b60: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5b64: ldur            x1, [fp, #-0x10]
    // 0x5e5b68: mov             x2, x0
    // 0x5e5b6c: r0 = setState()
    //     0x5e5b6c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e5b70: ldur            x0, [fp, #-0x10]
    // 0x5e5b74: LoadField: r1 = r0->field_b
    //     0x5e5b74: ldur            w1, [x0, #0xb]
    // 0x5e5b78: DecompressPointer r1
    //     0x5e5b78: add             x1, x1, HEAP, lsl #32
    // 0x5e5b7c: cmp             w1, NULL
    // 0x5e5b80: b.eq            #0x5e5c44
    // 0x5e5b84: LoadField: r2 = r1->field_b
    //     0x5e5b84: ldur            w2, [x1, #0xb]
    // 0x5e5b88: DecompressPointer r2
    //     0x5e5b88: add             x2, x2, HEAP, lsl #32
    // 0x5e5b8c: cmp             w2, NULL
    // 0x5e5b90: b.eq            #0x5e5c34
    // 0x5e5b94: ldur            x2, [fp, #-0x18]
    // 0x5e5b98: r1 = Function '<anonymous closure>':.
    //     0x5e5b98: add             x1, PP, #0x20, lsl #12  ; [pp+0x20878] AnonymousClosure: (0x5e6134), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirYukle (0x5e5908)
    //     0x5e5b9c: ldr             x1, [x1, #0x878]
    // 0x5e5ba0: r0 = AllocateClosure()
    //     0x5e5ba0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e5ba4: ldur            x1, [fp, #-0x10]
    // 0x5e5ba8: mov             x2, x0
    // 0x5e5bac: r0 = setState()
    //     0x5e5bac: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e5bb0: ldur            x0, [fp, #-0x10]
    // 0x5e5bb4: LoadField: r1 = r0->field_b
    //     0x5e5bb4: ldur            w1, [x0, #0xb]
    // 0x5e5bb8: DecompressPointer r1
    //     0x5e5bb8: add             x1, x1, HEAP, lsl #32
    // 0x5e5bbc: cmp             w1, NULL
    // 0x5e5bc0: b.eq            #0x5e5c48
    // 0x5e5bc4: LoadField: r0 = r1->field_b
    //     0x5e5bc4: ldur            w0, [x1, #0xb]
    // 0x5e5bc8: DecompressPointer r0
    //     0x5e5bc8: add             x0, x0, HEAP, lsl #32
    // 0x5e5bcc: cmp             w0, NULL
    // 0x5e5bd0: b.ne            #0x5e5bdc
    // 0x5e5bd4: r0 = Null
    //     0x5e5bd4: mov             x0, NULL
    // 0x5e5bd8: b               #0x5e5be8
    // 0x5e5bdc: LoadField: r1 = r0->field_7
    //     0x5e5bdc: ldur            w1, [x0, #7]
    // 0x5e5be0: DecompressPointer r1
    //     0x5e5be0: add             x1, x1, HEAP, lsl #32
    // 0x5e5be4: mov             x0, x1
    // 0x5e5be8: stur            x0, [fp, #-0x10]
    // 0x5e5bec: r1 = Null
    //     0x5e5bec: mov             x1, NULL
    // 0x5e5bf0: r2 = 4
    //     0x5e5bf0: mov             x2, #4
    // 0x5e5bf4: r0 = AllocateArray()
    //     0x5e5bf4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x5e5bf8: mov             x1, x0
    // 0x5e5bfc: ldur            x0, [fp, #-0x10]
    // 0x5e5c00: StoreField: r1->field_f = r0
    //     0x5e5c00: stur            w0, [x1, #0xf]
    // 0x5e5c04: r16 = " adlı zikire devam ediyorsunuz."
    //     0x5e5c04: add             x16, PP, #0x20, lsl #12  ; [pp+0x20880] " adlı zikire devam ediyorsunuz."
    //     0x5e5c08: ldr             x16, [x16, #0x880]
    // 0x5e5c0c: StoreField: r1->field_13 = r16
    //     0x5e5c0c: stur            w16, [x1, #0x13]
    // 0x5e5c10: str             x1, [SP]
    // 0x5e5c14: r0 = _interpolate()
    //     0x5e5c14: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x5e5c18: r16 = Instance_Color
    //     0x5e5c18: ldr             x16, [PP, #0x5410]  ; [pp+0x5410] Obj!Color@a21ac1
    // 0x5e5c1c: r30 = Instance_Color
    //     0x5e5c1c: ldr             lr, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x5e5c20: stp             lr, x16, [SP]
    // 0x5e5c24: mov             x1, x0
    // 0x5e5c28: r4 = const [0, 0x3, 0x2, 0x1, backgroundColor, 0x1, textColor, 0x2, null]
    //     0x5e5c28: add             x4, PP, #0x20, lsl #12  ; [pp+0x20888] List(9) [0, 0x3, 0x2, 0x1, "backgroundColor", 0x1, "textColor", 0x2, Null]
    //     0x5e5c2c: ldr             x4, [x4, #0x888]
    // 0x5e5c30: r0 = showToast()
    //     0x5e5c30: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x5e5c34: r0 = Null
    //     0x5e5c34: mov             x0, NULL
    // 0x5e5c38: r0 = ReturnAsyncNotFuture()
    //     0x5e5c38: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e5c3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e5c3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e5c40: b               #0x5e5928
    // 0x5e5c44: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e5c44: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x5e5c48: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e5c48: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e6134, size: 0xb4
    // 0x5e6134: EnterFrame
    //     0x5e6134: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6138: mov             fp, SP
    // 0x5e613c: ldr             x0, [fp, #0x10]
    // 0x5e6140: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x5e6140: ldur            w1, [x0, #0x17]
    // 0x5e6144: DecompressPointer r1
    //     0x5e6144: add             x1, x1, HEAP, lsl #32
    // 0x5e6148: CheckStackOverflow
    //     0x5e6148: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e614c: cmp             SP, x16
    //     0x5e6150: b.ls            #0x5e61dc
    // 0x5e6154: LoadField: r0 = r1->field_f
    //     0x5e6154: ldur            w0, [x1, #0xf]
    // 0x5e6158: DecompressPointer r0
    //     0x5e6158: add             x0, x0, HEAP, lsl #32
    // 0x5e615c: LoadField: r1 = r0->field_b
    //     0x5e615c: ldur            w1, [x0, #0xb]
    // 0x5e6160: DecompressPointer r1
    //     0x5e6160: add             x1, x1, HEAP, lsl #32
    // 0x5e6164: cmp             w1, NULL
    // 0x5e6168: b.eq            #0x5e61e4
    // 0x5e616c: LoadField: r0 = r1->field_b
    //     0x5e616c: ldur            w0, [x1, #0xb]
    // 0x5e6170: DecompressPointer r0
    //     0x5e6170: add             x0, x0, HEAP, lsl #32
    // 0x5e6174: cmp             w0, NULL
    // 0x5e6178: b.ne            #0x5e6184
    // 0x5e617c: r0 = Null
    //     0x5e617c: mov             x0, NULL
    // 0x5e6180: b               #0x5e6190
    // 0x5e6184: LoadField: r1 = r0->field_b
    //     0x5e6184: ldur            w1, [x0, #0xb]
    // 0x5e6188: DecompressPointer r1
    //     0x5e6188: add             x1, x1, HEAP, lsl #32
    // 0x5e618c: mov             x0, x1
    // 0x5e6190: cmp             w0, NULL
    // 0x5e6194: b.ne            #0x5e61a0
    // 0x5e6198: r1 = "0"
    //     0x5e6198: ldr             x1, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x5e619c: b               #0x5e61a4
    // 0x5e61a0: mov             x1, x0
    // 0x5e61a4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x5e61a4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x5e61a8: r0 = parse()
    //     0x5e61a8: bl              #0x3e9298  ; [dart:core] int::parse
    // 0x5e61ac: mov             x2, x0
    // 0x5e61b0: r0 = BoxInt64Instr(r2)
    //     0x5e61b0: sbfiz           x0, x2, #1, #0x1f
    //     0x5e61b4: cmp             x2, x0, asr #1
    //     0x5e61b8: b.eq            #0x5e61c4
    //     0x5e61bc: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x5e61c0: stur            x2, [x0, #7]
    // 0x5e61c4: StoreStaticField(0x1034, r0)
    //     0x5e61c4: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5e61c8: str             x0, [x1, #0x2068]
    // 0x5e61cc: r0 = Null
    //     0x5e61cc: mov             x0, NULL
    // 0x5e61d0: LeaveFrame
    //     0x5e61d0: mov             SP, fp
    //     0x5e61d4: ldp             fp, lr, [SP], #0x10
    // 0x5e61d8: ret
    //     0x5e61d8: ret             
    // 0x5e61dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e61dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e61e0: b               #0x5e6154
    // 0x5e61e4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x5e61e4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e61e8, size: 0x44
    // 0x5e61e8: ldr             x1, [SP]
    // 0x5e61ec: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e61ec: ldur            w2, [x1, #0x17]
    // 0x5e61f0: DecompressPointer r2
    //     0x5e61f0: add             x2, x2, HEAP, lsl #32
    // 0x5e61f4: LoadField: r1 = r2->field_f
    //     0x5e61f4: ldur            w1, [x2, #0xf]
    // 0x5e61f8: DecompressPointer r1
    //     0x5e61f8: add             x1, x1, HEAP, lsl #32
    // 0x5e61fc: LoadField: r3 = r2->field_1f
    //     0x5e61fc: ldur            w3, [x2, #0x1f]
    // 0x5e6200: DecompressPointer r3
    //     0x5e6200: add             x3, x3, HEAP, lsl #32
    // 0x5e6204: cmp             w3, NULL
    // 0x5e6208: b.ne            #0x5e6214
    // 0x5e620c: r2 = 10000
    //     0x5e620c: mov             x2, #0x2710
    // 0x5e6210: b               #0x5e6220
    // 0x5e6214: r2 = LoadInt32Instr(r3)
    //     0x5e6214: sbfx            x2, x3, #1, #0x1f
    //     0x5e6218: tbz             w3, #0, #0x5e6220
    //     0x5e621c: ldur            x2, [x3, #7]
    // 0x5e6220: ArrayStore: r1[0] = r2  ; List_8
    //     0x5e6220: stur            x2, [x1, #0x17]
    // 0x5e6224: r0 = Null
    //     0x5e6224: mov             x0, NULL
    // 0x5e6228: ret
    //     0x5e6228: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e622c, size: 0x24
    // 0x5e622c: ldr             x1, [SP]
    // 0x5e6230: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e6230: ldur            w2, [x1, #0x17]
    // 0x5e6234: DecompressPointer r2
    //     0x5e6234: add             x2, x2, HEAP, lsl #32
    // 0x5e6238: LoadField: r1 = r2->field_1b
    //     0x5e6238: ldur            w1, [x2, #0x1b]
    // 0x5e623c: DecompressPointer r1
    //     0x5e623c: add             x1, x1, HEAP, lsl #32
    // 0x5e6240: StoreStaticField(0x1034, r1)
    //     0x5e6240: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5e6244: str             x1, [x2, #0x2068]
    // 0x5e6248: r0 = Null
    //     0x5e6248: mov             x0, NULL
    // 0x5e624c: ret
    //     0x5e624c: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e6250, size: 0x24
    // 0x5e6250: ldr             x1, [SP]
    // 0x5e6254: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e6254: ldur            w2, [x1, #0x17]
    // 0x5e6258: DecompressPointer r2
    //     0x5e6258: add             x2, x2, HEAP, lsl #32
    // 0x5e625c: ArrayLoad: r1 = r2[0]  ; List_4
    //     0x5e625c: ldur            w1, [x2, #0x17]
    // 0x5e6260: DecompressPointer r1
    //     0x5e6260: add             x1, x1, HEAP, lsl #32
    // 0x5e6264: StoreStaticField(0x1038, r1)
    //     0x5e6264: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5e6268: str             x1, [x2, #0x2070]
    // 0x5e626c: r0 = Null
    //     0x5e626c: mov             x0, NULL
    // 0x5e6270: ret
    //     0x5e6270: ret             
  }
  [closure] ModelZikirlerim <anonymous closure>(dynamic, dynamic) {
    // ** addr: 0x5e6274, size: 0x60
    // 0x5e6274: EnterFrame
    //     0x5e6274: stp             fp, lr, [SP, #-0x10]!
    //     0x5e6278: mov             fp, SP
    // 0x5e627c: AllocStack(0x8)
    //     0x5e627c: sub             SP, SP, #8
    // 0x5e6280: CheckStackOverflow
    //     0x5e6280: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e6284: cmp             SP, x16
    //     0x5e6288: b.ls            #0x5e62cc
    // 0x5e628c: ldr             x0, [fp, #0x10]
    // 0x5e6290: r2 = Null
    //     0x5e6290: mov             x2, NULL
    // 0x5e6294: r1 = Null
    //     0x5e6294: mov             x1, NULL
    // 0x5e6298: r8 = Map<String, dynamic>
    //     0x5e6298: ldr             x8, [PP, #0x3258]  ; [pp+0x3258] Type: Map<String, dynamic>
    // 0x5e629c: r3 = Null
    //     0x5e629c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20890] Null
    //     0x5e62a0: ldr             x3, [x3, #0x890]
    // 0x5e62a4: r0 = Map<String, dynamic>()
    //     0x5e62a4: bl              #0x493980  ; IsType_Map<String, dynamic>_Stub
    // 0x5e62a8: r0 = ModelZikirlerim()
    //     0x5e62a8: bl              #0x5e669c  ; AllocateModelZikirlerimStub -> ModelZikirlerim (size=0x18)
    // 0x5e62ac: mov             x1, x0
    // 0x5e62b0: ldr             x2, [fp, #0x10]
    // 0x5e62b4: stur            x0, [fp, #-8]
    // 0x5e62b8: r0 = ModelZikirlerim.fromJson()
    //     0x5e62b8: bl              #0x5e62d4  ; [package:umrem_demo/features/dualar/models/model_zikirlerim.dart] ModelZikirlerim::ModelZikirlerim.fromJson
    // 0x5e62bc: ldur            x0, [fp, #-8]
    // 0x5e62c0: LeaveFrame
    //     0x5e62c0: mov             SP, fp
    //     0x5e62c4: ldp             fp, lr, [SP], #0x10
    // 0x5e62c8: ret
    //     0x5e62c8: ret             
    // 0x5e62cc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e62cc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e62d0: b               #0x5e628c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e66a8, size: 0x30
    // 0x5e66a8: ldr             x1, [SP]
    // 0x5e66ac: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x5e66ac: ldur            w2, [x1, #0x17]
    // 0x5e66b0: DecompressPointer r2
    //     0x5e66b0: add             x2, x2, HEAP, lsl #32
    // 0x5e66b4: LoadField: r1 = r2->field_13
    //     0x5e66b4: ldur            w1, [x2, #0x13]
    // 0x5e66b8: DecompressPointer r1
    //     0x5e66b8: add             x1, x1, HEAP, lsl #32
    // 0x5e66bc: cmp             w1, NULL
    // 0x5e66c0: b.ne            #0x5e66c8
    // 0x5e66c4: r1 = true
    //     0x5e66c4: add             x1, NULL, #0x20  ; true
    // 0x5e66c8: StoreStaticField(0x1030, r1)
    //     0x5e66c8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x5e66cc: str             x1, [x2, #0x2060]
    // 0x5e66d0: r0 = Null
    //     0x5e66d0: mov             x0, NULL
    // 0x5e66d4: ret
    //     0x5e66d4: ret             
  }
  _ renkBul(/* No info */) async {
    // ** addr: 0x5e66d8, size: 0x114
    // 0x5e66d8: EnterFrame
    //     0x5e66d8: stp             fp, lr, [SP, #-0x10]!
    //     0x5e66dc: mov             fp, SP
    // 0x5e66e0: AllocStack(0x20)
    //     0x5e66e0: sub             SP, SP, #0x20
    // 0x5e66e4: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x5e66e4: stur            NULL, [fp, #-8]
    //     0x5e66e8: stur            x1, [fp, #-0x10]
    // 0x5e66ec: CheckStackOverflow
    //     0x5e66ec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5e66f0: cmp             SP, x16
    //     0x5e66f4: b.ls            #0x5e67e4
    // 0x5e66f8: InitAsync() -> Future
    //     0x5e66f8: mov             x0, NULL
    //     0x5e66fc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5e6700: r0 = getInstance()
    //     0x5e6700: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x5e6704: stur            x0, [fp, #-0x18]
    // 0x5e6708: r1 = 2
    //     0x5e6708: mov             x1, #2
    // 0x5e670c: r0 = AllocateContext()
    //     0x5e670c: bl              #0x927010  ; AllocateContextStub
    // 0x5e6710: mov             x1, x0
    // 0x5e6714: ldur            x0, [fp, #-0x18]
    // 0x5e6718: stur            x1, [fp, #-0x20]
    // 0x5e671c: r0 = Await()
    //     0x5e671c: bl              #0x3dd188  ; AwaitStub
    // 0x5e6720: mov             x1, x0
    // 0x5e6724: r2 = "renk"
    //     0x5e6724: add             x2, PP, #0x20, lsl #12  ; [pp+0x20528] "renk"
    //     0x5e6728: ldr             x2, [x2, #0x528]
    // 0x5e672c: stur            x0, [fp, #-0x18]
    // 0x5e6730: r0 = getInt()
    //     0x5e6730: bl              #0x5cea8c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInt
    // 0x5e6734: mov             x1, x0
    // 0x5e6738: ldur            x3, [fp, #-0x20]
    // 0x5e673c: StoreField: r3->field_f = r0
    //     0x5e673c: stur            w0, [x3, #0xf]
    //     0x5e6740: tbz             w0, #0, #0x5e675c
    //     0x5e6744: ldurb           w16, [x3, #-1]
    //     0x5e6748: ldurb           w17, [x0, #-1]
    //     0x5e674c: and             x16, x17, x16, lsr #2
    //     0x5e6750: tst             x16, HEAP, lsr #32
    //     0x5e6754: b.eq            #0x5e675c
    //     0x5e6758: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x5e675c: cmp             w1, NULL
    // 0x5e6760: b.eq            #0x5e6780
    // 0x5e6764: mov             x2, x3
    // 0x5e6768: r1 = Function '<anonymous closure>':.
    //     0x5e6768: add             x1, PP, #0x20, lsl #12  ; [pp+0x208e0] AnonymousClosure: (0x5e68dc), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkBul (0x5e66d8)
    //     0x5e676c: ldr             x1, [x1, #0x8e0]
    // 0x5e6770: r0 = AllocateClosure()
    //     0x5e6770: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e6774: ldur            x1, [fp, #-0x10]
    // 0x5e6778: mov             x2, x0
    // 0x5e677c: r0 = setState()
    //     0x5e677c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e6780: ldur            x0, [fp, #-0x20]
    // 0x5e6784: ldur            x1, [fp, #-0x18]
    // 0x5e6788: r2 = "arkaplan"
    //     0x5e6788: add             x2, PP, #0x20, lsl #12  ; [pp+0x20538] "arkaplan"
    //     0x5e678c: ldr             x2, [x2, #0x538]
    // 0x5e6790: r0 = getInt()
    //     0x5e6790: bl              #0x5cea8c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInt
    // 0x5e6794: mov             x1, x0
    // 0x5e6798: ldur            x2, [fp, #-0x20]
    // 0x5e679c: StoreField: r2->field_13 = r0
    //     0x5e679c: stur            w0, [x2, #0x13]
    //     0x5e67a0: tbz             w0, #0, #0x5e67bc
    //     0x5e67a4: ldurb           w16, [x2, #-1]
    //     0x5e67a8: ldurb           w17, [x0, #-1]
    //     0x5e67ac: and             x16, x17, x16, lsr #2
    //     0x5e67b0: tst             x16, HEAP, lsr #32
    //     0x5e67b4: b.eq            #0x5e67bc
    //     0x5e67b8: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e67bc: cmp             w1, NULL
    // 0x5e67c0: b.eq            #0x5e67dc
    // 0x5e67c4: r1 = Function '<anonymous closure>':.
    //     0x5e67c4: add             x1, PP, #0x20, lsl #12  ; [pp+0x208e8] AnonymousClosure: (0x5e67ec), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkBul (0x5e66d8)
    //     0x5e67c8: ldr             x1, [x1, #0x8e8]
    // 0x5e67cc: r0 = AllocateClosure()
    //     0x5e67cc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x5e67d0: ldur            x1, [fp, #-0x10]
    // 0x5e67d4: mov             x2, x0
    // 0x5e67d8: r0 = setState()
    //     0x5e67d8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x5e67dc: r0 = Null
    //     0x5e67dc: mov             x0, NULL
    // 0x5e67e0: r0 = ReturnAsyncNotFuture()
    //     0x5e67e0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e67e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e67e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e67e8: b               #0x5e66f8
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e67ec, size: 0xf0
    // 0x5e67ec: EnterFrame
    //     0x5e67ec: stp             fp, lr, [SP, #-0x10]!
    //     0x5e67f0: mov             fp, SP
    // 0x5e67f4: AllocStack(0x20)
    //     0x5e67f4: sub             SP, SP, #0x20
    // 0x5e67f8: SetupParameters([dynamic _ /* r0 */])
    //     0x5e67f8: ldr             d0, [PP, #0x2c88]  ; [pp+0x2c88] IMM: double(255) from 0x406fe00000000000
    //     0x5e67fc: ldr             x0, [fp, #0x10]
    //     0x5e6800: ldur            w1, [x0, #0x17]
    //     0x5e6804: add             x1, x1, HEAP, lsl #32
    // 0x5e67f8: d0 = 255.000000
    // 0x5e6808: LoadField: r0 = r1->field_13
    //     0x5e6808: ldur            w0, [x1, #0x13]
    // 0x5e680c: DecompressPointer r0
    //     0x5e680c: add             x0, x0, HEAP, lsl #32
    // 0x5e6810: cmp             w0, NULL
    // 0x5e6814: b.eq            #0x5e68d8
    // 0x5e6818: r1 = LoadInt32Instr(r0)
    //     0x5e6818: sbfx            x1, x0, #1, #0x1f
    //     0x5e681c: tbz             w0, #0, #0x5e6824
    //     0x5e6820: ldur            x1, [x0, #7]
    // 0x5e6824: stur            x1, [fp, #-0x18]
    // 0x5e6828: asr             x0, x1, #0x18
    // 0x5e682c: asr             x2, x1, #0x10
    // 0x5e6830: stur            x2, [fp, #-0x10]
    // 0x5e6834: asr             x3, x1, #8
    // 0x5e6838: stur            x3, [fp, #-8]
    // 0x5e683c: ubfx            x0, x0, #0, #0x20
    // 0x5e6840: and             w4, w0, #0xff
    // 0x5e6844: ubfx            x4, x4, #0, #0x20
    // 0x5e6848: scvtf           d1, x4
    // 0x5e684c: fdiv            d2, d1, d0
    // 0x5e6850: stur            d2, [fp, #-0x20]
    // 0x5e6854: r0 = Color()
    //     0x5e6854: bl              #0x415430  ; AllocateColorStub -> Color (size=0x2c)
    // 0x5e6858: r1 = Instance_ColorSpace
    //     0x5e6858: ldr             x1, [PP, #0x5a30]  ; [pp+0x5a30] Obj!ColorSpace@a2d871
    // 0x5e685c: StoreField: r0->field_27 = r1
    //     0x5e685c: stur            w1, [x0, #0x27]
    // 0x5e6860: ldur            d0, [fp, #-0x20]
    // 0x5e6864: StoreField: r0->field_7 = d0
    //     0x5e6864: stur            d0, [x0, #7]
    // 0x5e6868: ldur            x1, [fp, #-0x10]
    // 0x5e686c: ubfx            x1, x1, #0, #0x20
    // 0x5e6870: and             w2, w1, #0xff
    // 0x5e6874: ubfx            x2, x2, #0, #0x20
    // 0x5e6878: scvtf           d0, x2
    // 0x5e687c: d1 = 255.000000
    //     0x5e687c: ldr             d1, [PP, #0x2c88]  ; [pp+0x2c88] IMM: double(255) from 0x406fe00000000000
    // 0x5e6880: fdiv            d2, d0, d1
    // 0x5e6884: StoreField: r0->field_f = d2
    //     0x5e6884: stur            d2, [x0, #0xf]
    // 0x5e6888: ldur            x1, [fp, #-8]
    // 0x5e688c: ubfx            x1, x1, #0, #0x20
    // 0x5e6890: and             w2, w1, #0xff
    // 0x5e6894: ubfx            x2, x2, #0, #0x20
    // 0x5e6898: scvtf           d0, x2
    // 0x5e689c: fdiv            d2, d0, d1
    // 0x5e68a0: ArrayStore: r0[0] = d2  ; List_8
    //     0x5e68a0: stur            d2, [x0, #0x17]
    // 0x5e68a4: ldur            x1, [fp, #-0x18]
    // 0x5e68a8: ubfx            x1, x1, #0, #0x20
    // 0x5e68ac: and             w2, w1, #0xff
    // 0x5e68b0: ubfx            x2, x2, #0, #0x20
    // 0x5e68b4: scvtf           d0, x2
    // 0x5e68b8: fdiv            d2, d0, d1
    // 0x5e68bc: StoreField: r0->field_1f = d2
    //     0x5e68bc: stur            d2, [x0, #0x1f]
    // 0x5e68c0: StoreStaticField(0x1040, r0)
    //     0x5e68c0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5e68c4: str             x0, [x1, #0x2080]
    // 0x5e68c8: r0 = Null
    //     0x5e68c8: mov             x0, NULL
    // 0x5e68cc: LeaveFrame
    //     0x5e68cc: mov             SP, fp
    //     0x5e68d0: ldp             fp, lr, [SP], #0x10
    // 0x5e68d4: ret
    //     0x5e68d4: ret             
    // 0x5e68d8: r0 = NullErrorSharedWithFPURegs()
    //     0x5e68d8: bl              #0x928a2c  ; NullErrorSharedWithFPURegsStub
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x5e68dc, size: 0xf0
    // 0x5e68dc: EnterFrame
    //     0x5e68dc: stp             fp, lr, [SP, #-0x10]!
    //     0x5e68e0: mov             fp, SP
    // 0x5e68e4: AllocStack(0x20)
    //     0x5e68e4: sub             SP, SP, #0x20
    // 0x5e68e8: SetupParameters([dynamic _ /* r0 */])
    //     0x5e68e8: ldr             d0, [PP, #0x2c88]  ; [pp+0x2c88] IMM: double(255) from 0x406fe00000000000
    //     0x5e68ec: ldr             x0, [fp, #0x10]
    //     0x5e68f0: ldur            w1, [x0, #0x17]
    //     0x5e68f4: add             x1, x1, HEAP, lsl #32
    // 0x5e68e8: d0 = 255.000000
    // 0x5e68f8: LoadField: r0 = r1->field_f
    //     0x5e68f8: ldur            w0, [x1, #0xf]
    // 0x5e68fc: DecompressPointer r0
    //     0x5e68fc: add             x0, x0, HEAP, lsl #32
    // 0x5e6900: cmp             w0, NULL
    // 0x5e6904: b.eq            #0x5e69c8
    // 0x5e6908: r1 = LoadInt32Instr(r0)
    //     0x5e6908: sbfx            x1, x0, #1, #0x1f
    //     0x5e690c: tbz             w0, #0, #0x5e6914
    //     0x5e6910: ldur            x1, [x0, #7]
    // 0x5e6914: stur            x1, [fp, #-0x18]
    // 0x5e6918: asr             x0, x1, #0x18
    // 0x5e691c: asr             x2, x1, #0x10
    // 0x5e6920: stur            x2, [fp, #-0x10]
    // 0x5e6924: asr             x3, x1, #8
    // 0x5e6928: stur            x3, [fp, #-8]
    // 0x5e692c: ubfx            x0, x0, #0, #0x20
    // 0x5e6930: and             w4, w0, #0xff
    // 0x5e6934: ubfx            x4, x4, #0, #0x20
    // 0x5e6938: scvtf           d1, x4
    // 0x5e693c: fdiv            d2, d1, d0
    // 0x5e6940: stur            d2, [fp, #-0x20]
    // 0x5e6944: r0 = Color()
    //     0x5e6944: bl              #0x415430  ; AllocateColorStub -> Color (size=0x2c)
    // 0x5e6948: r1 = Instance_ColorSpace
    //     0x5e6948: ldr             x1, [PP, #0x5a30]  ; [pp+0x5a30] Obj!ColorSpace@a2d871
    // 0x5e694c: StoreField: r0->field_27 = r1
    //     0x5e694c: stur            w1, [x0, #0x27]
    // 0x5e6950: ldur            d0, [fp, #-0x20]
    // 0x5e6954: StoreField: r0->field_7 = d0
    //     0x5e6954: stur            d0, [x0, #7]
    // 0x5e6958: ldur            x1, [fp, #-0x10]
    // 0x5e695c: ubfx            x1, x1, #0, #0x20
    // 0x5e6960: and             w2, w1, #0xff
    // 0x5e6964: ubfx            x2, x2, #0, #0x20
    // 0x5e6968: scvtf           d0, x2
    // 0x5e696c: d1 = 255.000000
    //     0x5e696c: ldr             d1, [PP, #0x2c88]  ; [pp+0x2c88] IMM: double(255) from 0x406fe00000000000
    // 0x5e6970: fdiv            d2, d0, d1
    // 0x5e6974: StoreField: r0->field_f = d2
    //     0x5e6974: stur            d2, [x0, #0xf]
    // 0x5e6978: ldur            x1, [fp, #-8]
    // 0x5e697c: ubfx            x1, x1, #0, #0x20
    // 0x5e6980: and             w2, w1, #0xff
    // 0x5e6984: ubfx            x2, x2, #0, #0x20
    // 0x5e6988: scvtf           d0, x2
    // 0x5e698c: fdiv            d2, d0, d1
    // 0x5e6990: ArrayStore: r0[0] = d2  ; List_8
    //     0x5e6990: stur            d2, [x0, #0x17]
    // 0x5e6994: ldur            x1, [fp, #-0x18]
    // 0x5e6998: ubfx            x1, x1, #0, #0x20
    // 0x5e699c: and             w2, w1, #0xff
    // 0x5e69a0: ubfx            x2, x2, #0, #0x20
    // 0x5e69a4: scvtf           d0, x2
    // 0x5e69a8: fdiv            d2, d0, d1
    // 0x5e69ac: StoreField: r0->field_1f = d2
    //     0x5e69ac: stur            d2, [x0, #0x1f]
    // 0x5e69b0: StoreStaticField(0x103c, r0)
    //     0x5e69b0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x5e69b4: str             x0, [x1, #0x2078]
    // 0x5e69b8: r0 = Null
    //     0x5e69b8: mov             x0, NULL
    // 0x5e69bc: LeaveFrame
    //     0x5e69bc: mov             SP, fp
    //     0x5e69c0: ldp             fp, lr, [SP], #0x10
    // 0x5e69c4: ret
    //     0x5e69c4: ret             
    // 0x5e69c8: r0 = NullErrorSharedWithFPURegs()
    //     0x5e69c8: bl              #0x928a2c  ; NullErrorSharedWithFPURegsStub
  }
  [closure] String <anonymous closure>(dynamic, ModelZikirlerim) {
    // ** addr: 0x6fa718, size: 0x44
    // 0x6fa718: EnterFrame
    //     0x6fa718: stp             fp, lr, [SP, #-0x10]!
    //     0x6fa71c: mov             fp, SP
    // 0x6fa720: CheckStackOverflow
    //     0x6fa720: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fa724: cmp             SP, x16
    //     0x6fa728: b.ls            #0x6fa754
    // 0x6fa72c: ldr             x1, [fp, #0x10]
    // 0x6fa730: r0 = toJson()
    //     0x6fa730: bl              #0x5e65c0  ; [package:umrem_demo/features/dualar/models/model_zikirlerim.dart] ModelZikirlerim::toJson
    // 0x6fa734: mov             x2, x0
    // 0x6fa738: r1 = Instance_JsonCodec
    //     0x6fa738: add             x1, PP, #8, lsl #12  ; [pp+0x84f8] Obj!JsonCodec@a27081
    //     0x6fa73c: ldr             x1, [x1, #0x4f8]
    // 0x6fa740: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fa740: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fa744: r0 = encode()
    //     0x6fa744: bl              #0x54bb74  ; [dart:convert] JsonCodec::encode
    // 0x6fa748: LeaveFrame
    //     0x6fa748: mov             SP, fp
    //     0x6fa74c: ldp             fp, lr, [SP], #0x10
    // 0x6fa750: ret
    //     0x6fa750: ret             
    // 0x6fa754: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fa754: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fa758: b               #0x6fa72c
  }
  _ zikirlerimeKaydetDialog(/* No info */) async {
    // ** addr: 0x6fa75c, size: 0x484
    // 0x6fa75c: EnterFrame
    //     0x6fa75c: stp             fp, lr, [SP, #-0x10]!
    //     0x6fa760: mov             fp, SP
    // 0x6fa764: AllocStack(0x68)
    //     0x6fa764: sub             SP, SP, #0x68
    // 0x6fa768: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x6fa768: stur            NULL, [fp, #-8]
    //     0x6fa76c: stur            x1, [fp, #-0x10]
    // 0x6fa770: CheckStackOverflow
    //     0x6fa770: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fa774: cmp             SP, x16
    //     0x6fa778: b.ls            #0x6fabc4
    // 0x6fa77c: r1 = 1
    //     0x6fa77c: mov             x1, #1
    // 0x6fa780: r0 = AllocateContext()
    //     0x6fa780: bl              #0x927010  ; AllocateContextStub
    // 0x6fa784: mov             x2, x0
    // 0x6fa788: ldur            x1, [fp, #-0x10]
    // 0x6fa78c: stur            x2, [fp, #-0x18]
    // 0x6fa790: StoreField: r2->field_f = r1
    //     0x6fa790: stur            w1, [x2, #0xf]
    // 0x6fa794: InitAsync() -> Future<void?>
    //     0x6fa794: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6fa798: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fa79c: ldur            x1, [fp, #-0x10]
    // 0x6fa7a0: LoadField: r0 = r1->field_b
    //     0x6fa7a0: ldur            w0, [x1, #0xb]
    // 0x6fa7a4: DecompressPointer r0
    //     0x6fa7a4: add             x0, x0, HEAP, lsl #32
    // 0x6fa7a8: cmp             w0, NULL
    // 0x6fa7ac: b.eq            #0x6fabcc
    // 0x6fa7b0: LoadField: r2 = r0->field_b
    //     0x6fa7b0: ldur            w2, [x0, #0xb]
    // 0x6fa7b4: DecompressPointer r2
    //     0x6fa7b4: add             x2, x2, HEAP, lsl #32
    // 0x6fa7b8: cmp             w2, NULL
    // 0x6fa7bc: b.ne            #0x6fa800
    // 0x6fa7c0: LoadField: r0 = r1->field_f
    //     0x6fa7c0: ldur            w0, [x1, #0xf]
    // 0x6fa7c4: DecompressPointer r0
    //     0x6fa7c4: add             x0, x0, HEAP, lsl #32
    // 0x6fa7c8: stur            x0, [fp, #-0x20]
    // 0x6fa7cc: cmp             w0, NULL
    // 0x6fa7d0: b.eq            #0x6fabd0
    // 0x6fa7d4: ldur            x2, [fp, #-0x18]
    // 0x6fa7d8: r1 = Function '<anonymous closure>':.
    //     0x6fa7d8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20768] AnonymousClosure: (0x6fabe0), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6fa7dc: ldr             x1, [x1, #0x768]
    // 0x6fa7e0: r0 = AllocateClosure()
    //     0x6fa7e0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa7e4: r16 = <void?>
    //     0x6fa7e4: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x6fa7e8: stp             x0, x16, [SP, #8]
    // 0x6fa7ec: ldur            x16, [fp, #-0x20]
    // 0x6fa7f0: str             x16, [SP]
    // 0x6fa7f4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fa7f4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fa7f8: r0 = showDialog()
    //     0x6fa7f8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x6fa7fc: r0 = ReturnAsync()
    //     0x6fa7fc: b               #0x427094  ; ReturnAsyncStub
    // 0x6fa800: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fa800: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fa804: ldr             x0, [x0, #0x2070]
    //     0x6fa808: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fa80c: cmp             w0, w16
    //     0x6fa810: b.ne            #0x6fa820
    //     0x6fa814: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fa818: ldr             x2, [x2, #0x770]
    //     0x6fa81c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fa820: mov             x3, x0
    // 0x6fa824: stur            x3, [fp, #-0x40]
    // 0x6fa828: LoadField: r4 = r3->field_7
    //     0x6fa828: ldur            w4, [x3, #7]
    // 0x6fa82c: DecompressPointer r4
    //     0x6fa82c: add             x4, x4, HEAP, lsl #32
    // 0x6fa830: stur            x4, [fp, #-0x38]
    // 0x6fa834: LoadField: r0 = r3->field_b
    //     0x6fa834: ldur            w0, [x3, #0xb]
    // 0x6fa838: r5 = LoadInt32Instr(r0)
    //     0x6fa838: sbfx            x5, x0, #1, #0x1f
    // 0x6fa83c: stur            x5, [fp, #-0x30]
    // 0x6fa840: r0 = 0
    //     0x6fa840: mov             x0, #0
    // 0x6fa844: ldur            x6, [fp, #-0x10]
    // 0x6fa848: CheckStackOverflow
    //     0x6fa848: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fa84c: cmp             SP, x16
    //     0x6fa850: b.ls            #0x6fabd4
    // 0x6fa854: LoadField: r1 = r3->field_b
    //     0x6fa854: ldur            w1, [x3, #0xb]
    // 0x6fa858: r2 = LoadInt32Instr(r1)
    //     0x6fa858: sbfx            x2, x1, #1, #0x1f
    // 0x6fa85c: cmp             x5, x2
    // 0x6fa860: b.ne            #0x6faba4
    // 0x6fa864: cmp             x0, x2
    // 0x6fa868: b.ge            #0x6faa7c
    // 0x6fa86c: LoadField: r1 = r3->field_f
    //     0x6fa86c: ldur            w1, [x3, #0xf]
    // 0x6fa870: DecompressPointer r1
    //     0x6fa870: add             x1, x1, HEAP, lsl #32
    // 0x6fa874: ArrayLoad: r7 = r1[r0]  ; Unknown_4
    //     0x6fa874: add             x16, x1, x0, lsl #2
    //     0x6fa878: ldur            w7, [x16, #0xf]
    // 0x6fa87c: DecompressPointer r7
    //     0x6fa87c: add             x7, x7, HEAP, lsl #32
    // 0x6fa880: stur            x7, [fp, #-0x20]
    // 0x6fa884: add             x8, x0, #1
    // 0x6fa888: stur            x8, [fp, #-0x28]
    // 0x6fa88c: cmp             w7, NULL
    // 0x6fa890: b.ne            #0x6fa8c4
    // 0x6fa894: mov             x0, x7
    // 0x6fa898: mov             x2, x4
    // 0x6fa89c: r1 = Null
    //     0x6fa89c: mov             x1, NULL
    // 0x6fa8a0: cmp             w2, NULL
    // 0x6fa8a4: b.eq            #0x6fa8c4
    // 0x6fa8a8: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x6fa8a8: ldur            w4, [x2, #0x17]
    // 0x6fa8ac: DecompressPointer r4
    //     0x6fa8ac: add             x4, x4, HEAP, lsl #32
    // 0x6fa8b0: r8 = X0
    //     0x6fa8b0: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x6fa8b4: LoadField: r9 = r4->field_7
    //     0x6fa8b4: ldur            x9, [x4, #7]
    // 0x6fa8b8: r3 = Null
    //     0x6fa8b8: add             x3, PP, #0x20, lsl #12  ; [pp+0x20778] Null
    //     0x6fa8bc: ldr             x3, [x3, #0x778]
    // 0x6fa8c0: blr             x9
    // 0x6fa8c4: ldur            x1, [fp, #-0x10]
    // 0x6fa8c8: ldur            x0, [fp, #-0x20]
    // 0x6fa8cc: r0 = DateTime()
    //     0x6fa8cc: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6fa8d0: mov             x1, x0
    // 0x6fa8d4: r0 = false
    //     0x6fa8d4: add             x0, NULL, #0x30  ; false
    // 0x6fa8d8: stur            x1, [fp, #-0x48]
    // 0x6fa8dc: StoreField: r1->field_7 = r0
    //     0x6fa8dc: stur            w0, [x1, #7]
    // 0x6fa8e0: r0 = _getCurrentMicros()
    //     0x6fa8e0: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6fa8e4: r1 = LoadInt32Instr(r0)
    //     0x6fa8e4: sbfx            x1, x0, #1, #0x1f
    //     0x6fa8e8: tbz             w0, #0, #0x6fa8f0
    //     0x6fa8ec: ldur            x1, [x0, #7]
    // 0x6fa8f0: ldur            x2, [fp, #-0x48]
    // 0x6fa8f4: StoreField: r2->field_b = r1
    //     0x6fa8f4: stur            x1, [x2, #0xb]
    // 0x6fa8f8: r0 = DateFormat()
    //     0x6fa8f8: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x6fa8fc: r1 = Function '<anonymous closure>':.
    //     0x6fa8fc: add             x1, PP, #0x15, lsl #12  ; [pp+0x15378] AnonymousClosure: (0x6d1948), in [package:intl/src/intl/date_format.dart] DateFormat::DateFormat (0x6d17bc)
    //     0x6fa900: ldr             x1, [x1, #0x378]
    // 0x6fa904: r2 = Null
    //     0x6fa904: mov             x2, NULL
    // 0x6fa908: stur            x0, [fp, #-0x50]
    // 0x6fa90c: r0 = AllocateClosure()
    //     0x6fa90c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fa910: mov             x1, x0
    // 0x6fa914: ldur            x0, [fp, #-0x50]
    // 0x6fa918: StoreField: r0->field_7 = r1
    //     0x6fa918: stur            w1, [x0, #7]
    // 0x6fa91c: r1 = Null
    //     0x6fa91c: mov             x1, NULL
    // 0x6fa920: r2 = Closure: (String?) => bool from Function 'localeExists': static.
    //     0x6fa920: add             x2, PP, #0x15, lsl #12  ; [pp+0x15380] Closure: (String?) => bool from Function 'localeExists': static. (0x7f22906d1890)
    //     0x6fa924: ldr             x2, [x2, #0x380]
    // 0x6fa928: r3 = Null
    //     0x6fa928: mov             x3, NULL
    // 0x6fa92c: r0 = verifiedLocale()
    //     0x6fa92c: bl              #0x521bc4  ; [package:intl/src/intl_helpers.dart] ::verifiedLocale
    // 0x6fa930: ldur            x3, [fp, #-0x50]
    // 0x6fa934: StoreField: r3->field_f = r0
    //     0x6fa934: stur            w0, [x3, #0xf]
    //     0x6fa938: ldurb           w16, [x3, #-1]
    //     0x6fa93c: ldurb           w17, [x0, #-1]
    //     0x6fa940: and             x16, x17, x16, lsr #2
    //     0x6fa944: tst             x16, HEAP, lsr #32
    //     0x6fa948: b.eq            #0x6fa950
    //     0x6fa94c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x6fa950: mov             x1, x3
    // 0x6fa954: r2 = "yyyy-MM-dd - kk:mm"
    //     0x6fa954: add             x2, PP, #0x20, lsl #12  ; [pp+0x20788] "yyyy-MM-dd - kk:mm"
    //     0x6fa958: ldr             x2, [x2, #0x788]
    // 0x6fa95c: r0 = addPattern()
    //     0x6fa95c: bl              #0x4e8e28  ; [package:intl/src/intl/date_format.dart] DateFormat::addPattern
    // 0x6fa960: ldur            x1, [fp, #-0x50]
    // 0x6fa964: ldur            x2, [fp, #-0x48]
    // 0x6fa968: r0 = format()
    //     0x6fa968: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x6fa96c: mov             x2, x0
    // 0x6fa970: ldur            x1, [fp, #-0x20]
    // 0x6fa974: stur            x2, [fp, #-0x48]
    // 0x6fa978: LoadField: r0 = r1->field_13
    //     0x6fa978: ldur            w0, [x1, #0x13]
    // 0x6fa97c: DecompressPointer r0
    //     0x6fa97c: add             x0, x0, HEAP, lsl #32
    // 0x6fa980: ldur            x3, [fp, #-0x10]
    // 0x6fa984: LoadField: r4 = r3->field_b
    //     0x6fa984: ldur            w4, [x3, #0xb]
    // 0x6fa988: DecompressPointer r4
    //     0x6fa988: add             x4, x4, HEAP, lsl #32
    // 0x6fa98c: cmp             w4, NULL
    // 0x6fa990: b.eq            #0x6fabdc
    // 0x6fa994: LoadField: r5 = r4->field_b
    //     0x6fa994: ldur            w5, [x4, #0xb]
    // 0x6fa998: DecompressPointer r5
    //     0x6fa998: add             x5, x5, HEAP, lsl #32
    // 0x6fa99c: cmp             w5, NULL
    // 0x6fa9a0: b.ne            #0x6fa9ac
    // 0x6fa9a4: r4 = Null
    //     0x6fa9a4: mov             x4, NULL
    // 0x6fa9a8: b               #0x6fa9b4
    // 0x6fa9ac: LoadField: r4 = r5->field_13
    //     0x6fa9ac: ldur            w4, [x5, #0x13]
    // 0x6fa9b0: DecompressPointer r4
    //     0x6fa9b0: add             x4, x4, HEAP, lsl #32
    // 0x6fa9b4: cmp             w0, w4
    // 0x6fa9b8: b.eq            #0x6fa9f4
    // 0x6fa9bc: and             w16, w0, w4
    // 0x6fa9c0: branchIfSmi(r16, 0x6faa68)
    //     0x6fa9c0: tbz             w16, #0, #0x6faa68
    // 0x6fa9c4: r16 = LoadClassIdInstr(r0)
    //     0x6fa9c4: ldur            x16, [x0, #-1]
    //     0x6fa9c8: ubfx            x16, x16, #0xc, #0x14
    // 0x6fa9cc: cmp             x16, #0x3d
    // 0x6fa9d0: b.ne            #0x6faa68
    // 0x6fa9d4: r16 = LoadClassIdInstr(r4)
    //     0x6fa9d4: ldur            x16, [x4, #-1]
    //     0x6fa9d8: ubfx            x16, x16, #0xc, #0x14
    // 0x6fa9dc: cmp             x16, #0x3d
    // 0x6fa9e0: b.ne            #0x6faa68
    // 0x6fa9e4: LoadField: r16 = r0->field_7
    //     0x6fa9e4: ldur            x16, [x0, #7]
    // 0x6fa9e8: LoadField: r17 = r4->field_7
    //     0x6fa9e8: ldur            x17, [x4, #7]
    // 0x6fa9ec: cmp             x16, x17
    // 0x6fa9f0: b.ne            #0x6faa68
    // 0x6fa9f4: r0 = LoadStaticField(0x1034)
    //     0x6fa9f4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fa9f8: ldr             x0, [x0, #0x2068]
    // 0x6fa9fc: r4 = 60
    //     0x6fa9fc: mov             x4, #0x3c
    // 0x6faa00: branchIfSmi(r0, 0x6faa0c)
    //     0x6faa00: tbz             w0, #0, #0x6faa0c
    // 0x6faa04: r4 = LoadClassIdInstr(r0)
    //     0x6faa04: ldur            x4, [x0, #-1]
    //     0x6faa08: ubfx            x4, x4, #0xc, #0x14
    // 0x6faa0c: str             x0, [SP]
    // 0x6faa10: mov             x0, x4
    // 0x6faa14: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6faa14: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6faa18: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6faa18: mov             x17, #0x21f6
    //     0x6faa1c: add             lr, x0, x17
    //     0x6faa20: ldr             lr, [x21, lr, lsl #3]
    //     0x6faa24: blr             lr
    // 0x6faa28: ldur            x1, [fp, #-0x20]
    // 0x6faa2c: StoreField: r1->field_b = r0
    //     0x6faa2c: stur            w0, [x1, #0xb]
    //     0x6faa30: ldurb           w16, [x1, #-1]
    //     0x6faa34: ldurb           w17, [x0, #-1]
    //     0x6faa38: and             x16, x17, x16, lsr #2
    //     0x6faa3c: tst             x16, HEAP, lsr #32
    //     0x6faa40: b.eq            #0x6faa48
    //     0x6faa44: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6faa48: ldur            x0, [fp, #-0x48]
    // 0x6faa4c: StoreField: r1->field_f = r0
    //     0x6faa4c: stur            w0, [x1, #0xf]
    //     0x6faa50: ldurb           w16, [x1, #-1]
    //     0x6faa54: ldurb           w17, [x0, #-1]
    //     0x6faa58: and             x16, x17, x16, lsr #2
    //     0x6faa5c: tst             x16, HEAP, lsr #32
    //     0x6faa60: b.eq            #0x6faa68
    //     0x6faa64: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x6faa68: ldur            x0, [fp, #-0x28]
    // 0x6faa6c: ldur            x3, [fp, #-0x40]
    // 0x6faa70: ldur            x4, [fp, #-0x38]
    // 0x6faa74: ldur            x5, [fp, #-0x30]
    // 0x6faa78: b               #0x6fa844
    // 0x6faa7c: mov             x1, x6
    // 0x6faa80: r0 = 0
    //     0x6faa80: mov             x0, #0
    // 0x6faa84: StoreStaticField(0x1034, r0)
    //     0x6faa84: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x6faa88: str             x0, [x2, #0x2068]
    // 0x6faa8c: r0 = getInstance()
    //     0x6faa8c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6faa90: mov             x1, x0
    // 0x6faa94: stur            x1, [fp, #-0x20]
    // 0x6faa98: r0 = Await()
    //     0x6faa98: bl              #0x3dd188  ; AwaitStub
    // 0x6faa9c: stur            x0, [fp, #-0x18]
    // 0x6faaa0: r1 = LoadStaticField(0x1034)
    //     0x6faaa0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6faaa4: ldr             x1, [x1, #0x2068]
    // 0x6faaa8: r3 = LoadInt32Instr(r1)
    //     0x6faaa8: sbfx            x3, x1, #1, #0x1f
    //     0x6faaac: tbz             w1, #0, #0x6faab4
    //     0x6faab0: ldur            x3, [x1, #7]
    // 0x6faab4: mov             x1, x0
    // 0x6faab8: r2 = "kaydedilenZikir"
    //     0x6faab8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x6faabc: ldr             x2, [x2, #0x598]
    // 0x6faac0: r0 = setInt()
    //     0x6faac0: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x6faac4: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6faac4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6faac8: ldr             x0, [x0, #0x2070]
    //     0x6faacc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6faad0: cmp             w0, w16
    //     0x6faad4: b.ne            #0x6faae4
    //     0x6faad8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6faadc: ldr             x2, [x2, #0x770]
    //     0x6faae0: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6faae4: r1 = Function '<anonymous closure>':.
    //     0x6faae4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20790] AnonymousClosure: (0x6fa718), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6faae8: ldr             x1, [x1, #0x790]
    // 0x6faaec: r2 = Null
    //     0x6faaec: mov             x2, NULL
    // 0x6faaf0: stur            x0, [fp, #-0x20]
    // 0x6faaf4: r0 = AllocateClosure()
    //     0x6faaf4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6faaf8: r16 = <String>
    //     0x6faaf8: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6faafc: ldur            lr, [fp, #-0x20]
    // 0x6fab00: stp             lr, x16, [SP, #8]
    // 0x6fab04: str             x0, [SP]
    // 0x6fab08: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fab08: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fab0c: r0 = map()
    //     0x6fab0c: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6fab10: LoadField: r1 = r0->field_7
    //     0x6fab10: ldur            w1, [x0, #7]
    // 0x6fab14: DecompressPointer r1
    //     0x6fab14: add             x1, x1, HEAP, lsl #32
    // 0x6fab18: mov             x2, x0
    // 0x6fab1c: r0 = _GrowableList.of()
    //     0x6fab1c: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6fab20: mov             x1, x0
    // 0x6fab24: r0 = listToString()
    //     0x6fab24: bl              #0x6fa3d4  ; [dart:collection] ListBase::listToString
    // 0x6fab28: r1 = Function '<anonymous closure>':.
    //     0x6fab28: add             x1, PP, #0x20, lsl #12  ; [pp+0x20798] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fab2c: ldr             x1, [x1, #0x798]
    // 0x6fab30: r2 = Null
    //     0x6fab30: mov             x2, NULL
    // 0x6fab34: stur            x0, [fp, #-0x20]
    // 0x6fab38: r0 = AllocateClosure()
    //     0x6fab38: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fab3c: ldur            x1, [fp, #-0x10]
    // 0x6fab40: mov             x2, x0
    // 0x6fab44: r0 = setState()
    //     0x6fab44: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fab48: ldur            x1, [fp, #-0x18]
    // 0x6fab4c: ldur            x3, [fp, #-0x20]
    // 0x6fab50: r2 = "zikirlerim"
    //     0x6fab50: add             x2, PP, #0x20, lsl #12  ; [pp+0x207a0] "zikirlerim"
    //     0x6fab54: ldr             x2, [x2, #0x7a0]
    // 0x6fab58: r0 = setString()
    //     0x6fab58: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x6fab5c: r1 = Function '<anonymous closure>':.
    //     0x6fab5c: add             x1, PP, #0x20, lsl #12  ; [pp+0x207a8] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fab60: ldr             x1, [x1, #0x7a8]
    // 0x6fab64: r2 = Null
    //     0x6fab64: mov             x2, NULL
    // 0x6fab68: r0 = AllocateClosure()
    //     0x6fab68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fab6c: ldur            x1, [fp, #-0x10]
    // 0x6fab70: mov             x2, x0
    // 0x6fab74: r0 = setState()
    //     0x6fab74: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fab78: ldur            x0, [fp, #-0x10]
    // 0x6fab7c: LoadField: r1 = r0->field_f
    //     0x6fab7c: ldur            w1, [x0, #0xf]
    // 0x6fab80: DecompressPointer r1
    //     0x6fab80: add             x1, x1, HEAP, lsl #32
    // 0x6fab84: cmp             w1, NULL
    // 0x6fab88: b.eq            #0x6fab9c
    // 0x6fab8c: r16 = <Object?>
    //     0x6fab8c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fab90: stp             x1, x16, [SP]
    // 0x6fab94: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fab94: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fab98: r0 = pop()
    //     0x6fab98: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6fab9c: r0 = Null
    //     0x6fab9c: mov             x0, NULL
    // 0x6faba0: r0 = ReturnAsyncNotFuture()
    //     0x6faba0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6faba4: mov             x0, x3
    // 0x6faba8: r0 = ConcurrentModificationError()
    //     0x6faba8: bl              #0x3c7a78  ; AllocateConcurrentModificationErrorStub -> ConcurrentModificationError (size=0x10)
    // 0x6fabac: mov             x1, x0
    // 0x6fabb0: ldur            x0, [fp, #-0x40]
    // 0x6fabb4: StoreField: r1->field_b = r0
    //     0x6fabb4: stur            w0, [x1, #0xb]
    // 0x6fabb8: mov             x0, x1
    // 0x6fabbc: r0 = Throw()
    //     0x6fabbc: bl              #0x926328  ; ThrowStub
    // 0x6fabc0: brk             #0
    // 0x6fabc4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fabc4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fabc8: b               #0x6fa77c
    // 0x6fabcc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fabcc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6fabd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fabd0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6fabd4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fabd4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fabd8: b               #0x6fa854
    // 0x6fabdc: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fabdc: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6fabe0, size: 0x374
    // 0x6fabe0: EnterFrame
    //     0x6fabe0: stp             fp, lr, [SP, #-0x10]!
    //     0x6fabe4: mov             fp, SP
    // 0x6fabe8: AllocStack(0x38)
    //     0x6fabe8: sub             SP, SP, #0x38
    // 0x6fabec: SetupParameters([dynamic _ /* r0 */])
    //     0x6fabec: ldr             x0, [fp, #0x18]
    //     0x6fabf0: ldur            w1, [x0, #0x17]
    //     0x6fabf4: add             x1, x1, HEAP, lsl #32
    //     0x6fabf8: stur            x1, [fp, #-8]
    // 0x6fabfc: CheckStackOverflow
    //     0x6fabfc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fac00: cmp             SP, x16
    //     0x6fac04: b.ls            #0x6faf4c
    // 0x6fac08: r1 = 1
    //     0x6fac08: mov             x1, #1
    // 0x6fac0c: r0 = AllocateContext()
    //     0x6fac0c: bl              #0x927010  ; AllocateContextStub
    // 0x6fac10: mov             x1, x0
    // 0x6fac14: ldur            x0, [fp, #-8]
    // 0x6fac18: stur            x1, [fp, #-0x10]
    // 0x6fac1c: StoreField: r1->field_b = r0
    //     0x6fac1c: stur            w0, [x1, #0xb]
    // 0x6fac20: ldr             x2, [fp, #0x10]
    // 0x6fac24: StoreField: r1->field_f = r2
    //     0x6fac24: stur            w2, [x1, #0xf]
    // 0x6fac28: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x6fac28: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fac2c: ldr             x0, [x0, #0x2078]
    //     0x6fac30: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fac34: cmp             w0, w16
    //     0x6fac38: b.ne            #0x6fac48
    //     0x6fac3c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x6fac40: ldr             x2, [x2, #0x450]
    //     0x6fac44: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fac48: mov             x1, x0
    // 0x6fac4c: ldur            x0, [fp, #-8]
    // 0x6fac50: stur            x1, [fp, #-0x18]
    // 0x6fac54: LoadField: r2 = r0->field_f
    //     0x6fac54: ldur            w2, [x0, #0xf]
    // 0x6fac58: DecompressPointer r2
    //     0x6fac58: add             x2, x2, HEAP, lsl #32
    // 0x6fac5c: LoadField: r0 = r2->field_23
    //     0x6fac5c: ldur            w0, [x2, #0x23]
    // 0x6fac60: DecompressPointer r0
    //     0x6fac60: add             x0, x0, HEAP, lsl #32
    // 0x6fac64: stur            x0, [fp, #-8]
    // 0x6fac68: r0 = BorderSide()
    //     0x6fac68: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x6fac6c: mov             x1, x0
    // 0x6fac70: ldur            x0, [fp, #-0x18]
    // 0x6fac74: stur            x1, [fp, #-0x20]
    // 0x6fac78: StoreField: r1->field_7 = r0
    //     0x6fac78: stur            w0, [x1, #7]
    // 0x6fac7c: d0 = 1.000000
    //     0x6fac7c: fmov            d0, #1.00000000
    // 0x6fac80: StoreField: r1->field_b = d0
    //     0x6fac80: stur            d0, [x1, #0xb]
    // 0x6fac84: r2 = Instance_BorderStyle
    //     0x6fac84: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x6fac88: ldr             x2, [x2, #0x738]
    // 0x6fac8c: StoreField: r1->field_13 = r2
    //     0x6fac8c: stur            w2, [x1, #0x13]
    // 0x6fac90: d0 = -1.000000
    //     0x6fac90: fmov            d0, #-1.00000000
    // 0x6fac94: ArrayStore: r1[0] = d0  ; List_8
    //     0x6fac94: stur            d0, [x1, #0x17]
    // 0x6fac98: r0 = UnderlineInputBorder()
    //     0x6fac98: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x6fac9c: mov             x1, x0
    // 0x6faca0: r0 = Instance_BorderRadius
    //     0x6faca0: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x6faca4: ldr             x0, [x0, #0x560]
    // 0x6faca8: stur            x1, [fp, #-0x28]
    // 0x6facac: StoreField: r1->field_b = r0
    //     0x6facac: stur            w0, [x1, #0xb]
    // 0x6facb0: ldur            x0, [fp, #-0x20]
    // 0x6facb4: StoreField: r1->field_7 = r0
    //     0x6facb4: stur            w0, [x1, #7]
    // 0x6facb8: r0 = InputDecoration()
    //     0x6facb8: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x6facbc: mov             x1, x0
    // 0x6facc0: r0 = "Listeye hangi adla kaydedeceksiniz\?"
    //     0x6facc0: add             x0, PP, #0x20, lsl #12  ; [pp+0x207c8] "Listeye hangi adla kaydedeceksiniz\?"
    //     0x6facc4: ldr             x0, [x0, #0x7c8]
    // 0x6facc8: stur            x1, [fp, #-0x20]
    // 0x6faccc: StoreField: r1->field_2f = r0
    //     0x6faccc: stur            w0, [x1, #0x2f]
    // 0x6facd0: r0 = true
    //     0x6facd0: add             x0, NULL, #0x20  ; true
    // 0x6facd4: StoreField: r1->field_47 = r0
    //     0x6facd4: stur            w0, [x1, #0x47]
    // 0x6facd8: StoreField: r1->field_4b = r0
    //     0x6facd8: stur            w0, [x1, #0x4b]
    // 0x6facdc: ldur            x2, [fp, #-0x28]
    // 0x6face0: StoreField: r1->field_c3 = r2
    //     0x6face0: stur            w2, [x1, #0xc3]
    // 0x6face4: StoreField: r1->field_d7 = r0
    //     0x6face4: stur            w0, [x1, #0xd7]
    // 0x6face8: r0 = TextField()
    //     0x6face8: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x6facec: mov             x1, x0
    // 0x6facf0: r0 = EditableText
    //     0x6facf0: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x6facf4: stur            x1, [fp, #-0x28]
    // 0x6facf8: StoreField: r1->field_f = r0
    //     0x6facf8: stur            w0, [x1, #0xf]
    // 0x6facfc: ldur            x0, [fp, #-8]
    // 0x6fad00: StoreField: r1->field_13 = r0
    //     0x6fad00: stur            w0, [x1, #0x13]
    // 0x6fad04: ldur            x0, [fp, #-0x20]
    // 0x6fad08: StoreField: r1->field_1b = r0
    //     0x6fad08: stur            w0, [x1, #0x1b]
    // 0x6fad0c: r0 = Instance_TextCapitalization
    //     0x6fad0c: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x6fad10: ldr             x0, [x0, #0x4f0]
    // 0x6fad14: StoreField: r1->field_27 = r0
    //     0x6fad14: stur            w0, [x1, #0x27]
    // 0x6fad18: r0 = Instance_TextAlign
    //     0x6fad18: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x6fad1c: StoreField: r1->field_33 = r0
    //     0x6fad1c: stur            w0, [x1, #0x33]
    // 0x6fad20: r0 = false
    //     0x6fad20: add             x0, NULL, #0x30  ; false
    // 0x6fad24: StoreField: r1->field_6b = r0
    //     0x6fad24: stur            w0, [x1, #0x6b]
    // 0x6fad28: StoreField: r1->field_3f = r0
    //     0x6fad28: stur            w0, [x1, #0x3f]
    // 0x6fad2c: r2 = "•"
    //     0x6fad2c: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x6fad30: ldr             x2, [x2, #0x4f8]
    // 0x6fad34: StoreField: r1->field_47 = r2
    //     0x6fad34: stur            w2, [x1, #0x47]
    // 0x6fad38: StoreField: r1->field_4b = r0
    //     0x6fad38: stur            w0, [x1, #0x4b]
    // 0x6fad3c: r2 = true
    //     0x6fad3c: add             x2, NULL, #0x20  ; true
    // 0x6fad40: StoreField: r1->field_5b = r2
    //     0x6fad40: stur            w2, [x1, #0x5b]
    // 0x6fad44: r3 = 2
    //     0x6fad44: mov             x3, #2
    // 0x6fad48: StoreField: r1->field_5f = r3
    //     0x6fad48: stur            w3, [x1, #0x5f]
    // 0x6fad4c: StoreField: r1->field_67 = r0
    //     0x6fad4c: stur            w0, [x1, #0x67]
    // 0x6fad50: d0 = 2.000000
    //     0x6fad50: fmov            d0, #2.00000000
    // 0x6fad54: StoreField: r1->field_9b = d0
    //     0x6fad54: stur            d0, [x1, #0x9b]
    // 0x6fad58: ldur            x3, [fp, #-0x18]
    // 0x6fad5c: StoreField: r1->field_af = r3
    //     0x6fad5c: stur            w3, [x1, #0xaf]
    // 0x6fad60: r4 = Instance_EdgeInsets
    //     0x6fad60: ldr             x4, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x6fad64: StoreField: r1->field_c3 = r4
    //     0x6fad64: stur            w4, [x1, #0xc3]
    // 0x6fad68: r4 = Instance_DragStartBehavior
    //     0x6fad68: ldr             x4, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x6fad6c: StoreField: r1->field_d3 = r4
    //     0x6fad6c: stur            w4, [x1, #0xd3]
    // 0x6fad70: StoreField: r1->field_db = r0
    //     0x6fad70: stur            w0, [x1, #0xdb]
    // 0x6fad74: r4 = const []
    //     0x6fad74: ldr             x4, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x6fad78: StoreField: r1->field_f7 = r4
    //     0x6fad78: stur            w4, [x1, #0xf7]
    // 0x6fad7c: r4 = Instance_Clip
    //     0x6fad7c: add             x4, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x6fad80: ldr             x4, [x4, #0x2d8]
    // 0x6fad84: StoreField: r1->field_fb = r4
    //     0x6fad84: stur            w4, [x1, #0xfb]
    // 0x6fad88: r17 = 259
    //     0x6fad88: mov             x17, #0x103
    // 0x6fad8c: str             w2, [x1, x17]
    // 0x6fad90: r17 = 263
    //     0x6fad90: mov             x17, #0x107
    // 0x6fad94: str             w2, [x1, x17]
    // 0x6fad98: r17 = 267
    //     0x6fad98: mov             x17, #0x10b
    // 0x6fad9c: str             w2, [x1, x17]
    // 0x6fada0: r4 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x6fada0: add             x4, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x6fada4: ldr             x4, [x4, #0x9f8]
    // 0x6fada8: r17 = 275
    //     0x6fada8: mov             x17, #0x113
    // 0x6fadac: str             w4, [x1, x17]
    // 0x6fadb0: r17 = 279
    //     0x6fadb0: mov             x17, #0x117
    // 0x6fadb4: str             w2, [x1, x17]
    // 0x6fadb8: r4 = Instance_SmartDashesType
    //     0x6fadb8: ldr             x4, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x6fadbc: StoreField: r1->field_53 = r4
    //     0x6fadbc: stur            w4, [x1, #0x53]
    // 0x6fadc0: r4 = Instance_SmartQuotesType
    //     0x6fadc0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x6fadc4: ldr             x4, [x4, #0x520]
    // 0x6fadc8: StoreField: r1->field_57 = r4
    //     0x6fadc8: stur            w4, [x1, #0x57]
    // 0x6fadcc: r4 = Instance_TextInputType
    //     0x6fadcc: add             x4, PP, #0x14, lsl #12  ; [pp+0x14528] Obj!TextInputType@a0acc1
    //     0x6fadd0: ldr             x4, [x4, #0x528]
    // 0x6fadd4: StoreField: r1->field_1f = r4
    //     0x6fadd4: stur            w4, [x1, #0x1f]
    // 0x6fadd8: StoreField: r1->field_c7 = r2
    //     0x6fadd8: stur            w2, [x1, #0xc7]
    // 0x6faddc: r16 = <Color>
    //     0x6faddc: add             x16, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x6fade0: ldr             x16, [x16, #0x800]
    // 0x6fade4: stp             x3, x16, [SP]
    // 0x6fade8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fade8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fadec: r0 = all()
    //     0x6fadec: bl              #0x6731c4  ; [package:flutter/src/widgets/widget_state.dart] WidgetStateProperty::all
    // 0x6fadf0: stur            x0, [fp, #-8]
    // 0x6fadf4: r0 = ButtonStyle()
    //     0x6fadf4: bl              #0x56954c  ; AllocateButtonStyleStub -> ButtonStyle (size=0x6c)
    // 0x6fadf8: mov             x3, x0
    // 0x6fadfc: ldur            x0, [fp, #-8]
    // 0x6fae00: stur            x3, [fp, #-0x18]
    // 0x6fae04: StoreField: r3->field_f = r0
    //     0x6fae04: stur            w0, [x3, #0xf]
    // 0x6fae08: ldur            x2, [fp, #-0x10]
    // 0x6fae0c: r1 = Function '<anonymous closure>':.
    //     0x6fae0c: add             x1, PP, #0x20, lsl #12  ; [pp+0x207d0] AnonymousClosure: (0x6fb4ec), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6fae10: ldr             x1, [x1, #0x7d0]
    // 0x6fae14: r0 = AllocateClosure()
    //     0x6fae14: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fae18: stur            x0, [fp, #-8]
    // 0x6fae1c: r0 = TextButton()
    //     0x6fae1c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6fae20: mov             x1, x0
    // 0x6fae24: ldur            x0, [fp, #-8]
    // 0x6fae28: stur            x1, [fp, #-0x20]
    // 0x6fae2c: StoreField: r1->field_b = r0
    //     0x6fae2c: stur            w0, [x1, #0xb]
    // 0x6fae30: ldur            x0, [fp, #-0x18]
    // 0x6fae34: StoreField: r1->field_1b = r0
    //     0x6fae34: stur            w0, [x1, #0x1b]
    // 0x6fae38: r0 = false
    //     0x6fae38: add             x0, NULL, #0x30  ; false
    // 0x6fae3c: StoreField: r1->field_27 = r0
    //     0x6fae3c: stur            w0, [x1, #0x27]
    // 0x6fae40: r2 = true
    //     0x6fae40: add             x2, NULL, #0x20  ; true
    // 0x6fae44: StoreField: r1->field_2f = r2
    //     0x6fae44: stur            w2, [x1, #0x2f]
    // 0x6fae48: r3 = Instance_Text
    //     0x6fae48: add             x3, PP, #0x20, lsl #12  ; [pp+0x207d8] Obj!Text@a1c301
    //     0x6fae4c: ldr             x3, [x3, #0x7d8]
    // 0x6fae50: StoreField: r1->field_37 = r3
    //     0x6fae50: stur            w3, [x1, #0x37]
    // 0x6fae54: r3 = LoadStaticField(0x103c)
    //     0x6fae54: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x6fae58: ldr             x3, [x3, #0x2078]
    //     0x6fae5c: add             x16, PP, #0xc, lsl #12  ; [pp+0xc800] TypeArguments: <Color>
    //     0x6fae60: ldr             x16, [x16, #0x800]
    // 0x6fae64: stp             x3, x16, [SP]
    // 0x6fae68: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fae68: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fae6c: r0 = all()
    //     0x6fae6c: bl              #0x6731c4  ; [package:flutter/src/widgets/widget_state.dart] WidgetStateProperty::all
    // 0x6fae70: stur            x0, [fp, #-8]
    // 0x6fae74: r0 = ButtonStyle()
    //     0x6fae74: bl              #0x56954c  ; AllocateButtonStyleStub -> ButtonStyle (size=0x6c)
    // 0x6fae78: mov             x3, x0
    // 0x6fae7c: ldur            x0, [fp, #-8]
    // 0x6fae80: stur            x3, [fp, #-0x18]
    // 0x6fae84: StoreField: r3->field_f = r0
    //     0x6fae84: stur            w0, [x3, #0xf]
    // 0x6fae88: ldur            x2, [fp, #-0x10]
    // 0x6fae8c: r1 = Function '<anonymous closure>':.
    //     0x6fae8c: add             x1, PP, #0x20, lsl #12  ; [pp+0x207e0] AnonymousClosure: (0x6faf60), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6fae90: ldr             x1, [x1, #0x7e0]
    // 0x6fae94: r0 = AllocateClosure()
    //     0x6fae94: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fae98: stur            x0, [fp, #-8]
    // 0x6fae9c: r0 = TextButton()
    //     0x6fae9c: bl              #0x678584  ; AllocateTextButtonStub -> TextButton (size=0x3c)
    // 0x6faea0: mov             x3, x0
    // 0x6faea4: ldur            x0, [fp, #-8]
    // 0x6faea8: stur            x3, [fp, #-0x10]
    // 0x6faeac: StoreField: r3->field_b = r0
    //     0x6faeac: stur            w0, [x3, #0xb]
    // 0x6faeb0: ldur            x0, [fp, #-0x18]
    // 0x6faeb4: StoreField: r3->field_1b = r0
    //     0x6faeb4: stur            w0, [x3, #0x1b]
    // 0x6faeb8: r0 = false
    //     0x6faeb8: add             x0, NULL, #0x30  ; false
    // 0x6faebc: StoreField: r3->field_27 = r0
    //     0x6faebc: stur            w0, [x3, #0x27]
    // 0x6faec0: r1 = true
    //     0x6faec0: add             x1, NULL, #0x20  ; true
    // 0x6faec4: StoreField: r3->field_2f = r1
    //     0x6faec4: stur            w1, [x3, #0x2f]
    // 0x6faec8: r1 = Instance_Text
    //     0x6faec8: add             x1, PP, #0x20, lsl #12  ; [pp+0x207e8] Obj!Text@a1c2b1
    //     0x6faecc: ldr             x1, [x1, #0x7e8]
    // 0x6faed0: StoreField: r3->field_37 = r1
    //     0x6faed0: stur            w1, [x3, #0x37]
    // 0x6faed4: r1 = Null
    //     0x6faed4: mov             x1, NULL
    // 0x6faed8: r2 = 4
    //     0x6faed8: mov             x2, #4
    // 0x6faedc: r0 = AllocateArray()
    //     0x6faedc: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6faee0: mov             x2, x0
    // 0x6faee4: ldur            x0, [fp, #-0x20]
    // 0x6faee8: stur            x2, [fp, #-8]
    // 0x6faeec: StoreField: r2->field_f = r0
    //     0x6faeec: stur            w0, [x2, #0xf]
    // 0x6faef0: ldur            x0, [fp, #-0x10]
    // 0x6faef4: StoreField: r2->field_13 = r0
    //     0x6faef4: stur            w0, [x2, #0x13]
    // 0x6faef8: r1 = <Widget>
    //     0x6faef8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x6faefc: r0 = AllocateGrowableArray()
    //     0x6faefc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6faf00: mov             x1, x0
    // 0x6faf04: ldur            x0, [fp, #-8]
    // 0x6faf08: stur            x1, [fp, #-0x10]
    // 0x6faf0c: StoreField: r1->field_f = r0
    //     0x6faf0c: stur            w0, [x1, #0xf]
    // 0x6faf10: r0 = 4
    //     0x6faf10: mov             x0, #4
    // 0x6faf14: StoreField: r1->field_b = r0
    //     0x6faf14: stur            w0, [x1, #0xb]
    // 0x6faf18: r0 = AlertDialog()
    //     0x6faf18: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x6faf1c: r1 = Instance_Text
    //     0x6faf1c: add             x1, PP, #0x20, lsl #12  ; [pp+0x207f0] Obj!Text@a1c261
    //     0x6faf20: ldr             x1, [x1, #0x7f0]
    // 0x6faf24: StoreField: r0->field_f = r1
    //     0x6faf24: stur            w1, [x0, #0xf]
    // 0x6faf28: ldur            x1, [fp, #-0x28]
    // 0x6faf2c: StoreField: r0->field_1b = r1
    //     0x6faf2c: stur            w1, [x0, #0x1b]
    // 0x6faf30: ldur            x1, [fp, #-0x10]
    // 0x6faf34: StoreField: r0->field_27 = r1
    //     0x6faf34: stur            w1, [x0, #0x27]
    // 0x6faf38: r1 = false
    //     0x6faf38: add             x1, NULL, #0x30  ; false
    // 0x6faf3c: StoreField: r0->field_6b = r1
    //     0x6faf3c: stur            w1, [x0, #0x6b]
    // 0x6faf40: LeaveFrame
    //     0x6faf40: mov             SP, fp
    //     0x6faf44: ldp             fp, lr, [SP], #0x10
    // 0x6faf48: ret
    //     0x6faf48: ret             
    // 0x6faf4c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6faf4c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6faf50: b               #0x6fac08
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x6faf60, size: 0x78
    // 0x6faf60: EnterFrame
    //     0x6faf60: stp             fp, lr, [SP, #-0x10]!
    //     0x6faf64: mov             fp, SP
    // 0x6faf68: AllocStack(0x10)
    //     0x6faf68: sub             SP, SP, #0x10
    // 0x6faf6c: SetupParameters(_ZikirCekState this /* r1 */)
    //     0x6faf6c: stur            NULL, [fp, #-8]
    //     0x6faf70: mov             x0, #0
    //     0x6faf74: add             x1, fp, w0, sxtw #2
    //     0x6faf78: ldr             x1, [x1, #0x10]
    //     0x6faf7c: ldur            w2, [x1, #0x17]
    //     0x6faf80: add             x2, x2, HEAP, lsl #32
    //     0x6faf84: stur            x2, [fp, #-0x10]
    // 0x6faf88: CheckStackOverflow
    //     0x6faf88: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6faf8c: cmp             SP, x16
    //     0x6faf90: b.ls            #0x6fafd0
    // 0x6faf94: InitAsync() -> Future<void?>
    //     0x6faf94: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x6faf98: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6faf9c: ldur            x0, [fp, #-0x10]
    // 0x6fafa0: LoadField: r1 = r0->field_b
    //     0x6fafa0: ldur            w1, [x0, #0xb]
    // 0x6fafa4: DecompressPointer r1
    //     0x6fafa4: add             x1, x1, HEAP, lsl #32
    // 0x6fafa8: LoadField: r0 = r1->field_f
    //     0x6fafa8: ldur            w0, [x1, #0xf]
    // 0x6fafac: DecompressPointer r0
    //     0x6fafac: add             x0, x0, HEAP, lsl #32
    // 0x6fafb0: mov             x1, x0
    // 0x6fafb4: r0 = zikirlerimeKaydet()
    //     0x6fafb4: bl              #0x6fafd8  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydet
    // 0x6fafb8: r1 = "Zikriniz Başarıyla Kaydedildi!"
    //     0x6fafb8: add             x1, PP, #0x20, lsl #12  ; [pp+0x207f8] "Zikriniz Başarıyla Kaydedildi!"
    //     0x6fafbc: ldr             x1, [x1, #0x7f8]
    // 0x6fafc0: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6fafc0: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6fafc4: r0 = showToast()
    //     0x6fafc4: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x6fafc8: r0 = Null
    //     0x6fafc8: mov             x0, NULL
    // 0x6fafcc: r0 = ReturnAsyncNotFuture()
    //     0x6fafcc: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fafd0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fafd0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fafd4: b               #0x6faf94
  }
  _ zikirlerimeKaydet(/* No info */) async {
    // ** addr: 0x6fafd8, size: 0x3d0
    // 0x6fafd8: EnterFrame
    //     0x6fafd8: stp             fp, lr, [SP, #-0x10]!
    //     0x6fafdc: mov             fp, SP
    // 0x6fafe0: AllocStack(0x60)
    //     0x6fafe0: sub             SP, SP, #0x60
    // 0x6fafe4: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x6fafe4: stur            NULL, [fp, #-8]
    //     0x6fafe8: stur            x1, [fp, #-0x10]
    // 0x6fafec: CheckStackOverflow
    //     0x6fafec: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6faff0: cmp             SP, x16
    //     0x6faff4: b.ls            #0x6fb398
    // 0x6faff8: InitAsync() -> Future
    //     0x6faff8: mov             x0, NULL
    //     0x6faffc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6fb000: r0 = DateTime()
    //     0x6fb000: bl              #0x4e3b08  ; AllocateDateTimeStub -> DateTime (size=0x18)
    // 0x6fb004: mov             x1, x0
    // 0x6fb008: r0 = false
    //     0x6fb008: add             x0, NULL, #0x30  ; false
    // 0x6fb00c: stur            x1, [fp, #-0x18]
    // 0x6fb010: StoreField: r1->field_7 = r0
    //     0x6fb010: stur            w0, [x1, #7]
    // 0x6fb014: r0 = _getCurrentMicros()
    //     0x6fb014: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x6fb018: r1 = LoadInt32Instr(r0)
    //     0x6fb018: sbfx            x1, x0, #1, #0x1f
    //     0x6fb01c: tbz             w0, #0, #0x6fb024
    //     0x6fb020: ldur            x1, [x0, #7]
    // 0x6fb024: ldur            x2, [fp, #-0x18]
    // 0x6fb028: StoreField: r2->field_b = r1
    //     0x6fb028: stur            x1, [x2, #0xb]
    // 0x6fb02c: r0 = DateFormat()
    //     0x6fb02c: bl              #0x6d1b08  ; AllocateDateFormatStub -> DateFormat (size=0x2c)
    // 0x6fb030: mov             x1, x0
    // 0x6fb034: r2 = "yyyy-MM-dd - kk:mm"
    //     0x6fb034: add             x2, PP, #0x20, lsl #12  ; [pp+0x20788] "yyyy-MM-dd - kk:mm"
    //     0x6fb038: ldr             x2, [x2, #0x788]
    // 0x6fb03c: stur            x0, [fp, #-0x20]
    // 0x6fb040: r4 = const [0, 0x2, 0, 0x2, null]
    //     0x6fb040: ldr             x4, [PP, #0x98]  ; [pp+0x98] List(5) [0, 0x2, 0, 0x2, Null]
    // 0x6fb044: r0 = DateFormat()
    //     0x6fb044: bl              #0x6d17bc  ; [package:intl/src/intl/date_format.dart] DateFormat::DateFormat
    // 0x6fb048: ldur            x1, [fp, #-0x20]
    // 0x6fb04c: ldur            x2, [fp, #-0x18]
    // 0x6fb050: r0 = format()
    //     0x6fb050: bl              #0x4eadac  ; [package:intl/src/intl/date_format.dart] DateFormat::format
    // 0x6fb054: ldur            x1, [fp, #-0x10]
    // 0x6fb058: stur            x0, [fp, #-0x18]
    // 0x6fb05c: LoadField: r2 = r1->field_23
    //     0x6fb05c: ldur            w2, [x1, #0x23]
    // 0x6fb060: DecompressPointer r2
    //     0x6fb060: add             x2, x2, HEAP, lsl #32
    // 0x6fb064: LoadField: r3 = r2->field_27
    //     0x6fb064: ldur            w3, [x2, #0x27]
    // 0x6fb068: DecompressPointer r3
    //     0x6fb068: add             x3, x3, HEAP, lsl #32
    // 0x6fb06c: LoadField: r2 = r3->field_7
    //     0x6fb06c: ldur            w2, [x3, #7]
    // 0x6fb070: DecompressPointer r2
    //     0x6fb070: add             x2, x2, HEAP, lsl #32
    // 0x6fb074: LoadField: r3 = r2->field_7
    //     0x6fb074: ldur            w3, [x2, #7]
    // 0x6fb078: cbnz            w3, #0x6fb094
    // 0x6fb07c: r1 = "Lütfen bir isim giriniz!"
    //     0x6fb07c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20800] "Lütfen bir isim giriniz!"
    //     0x6fb080: ldr             x1, [x1, #0x800]
    // 0x6fb084: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6fb084: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6fb088: r0 = showToast()
    //     0x6fb088: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x6fb08c: r0 = Null
    //     0x6fb08c: mov             x0, NULL
    // 0x6fb090: r0 = ReturnAsyncNotFuture()
    //     0x6fb090: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fb094: r0 = InitLateStaticField(0x1038) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::zikirlerim
    //     0x6fb094: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb098: ldr             x0, [x0, #0x2070]
    //     0x6fb09c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x6fb0a0: cmp             w0, w16
    //     0x6fb0a4: b.ne            #0x6fb0b4
    //     0x6fb0a8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20770] Field <Veriler.zikirlerim>: static late (offset: 0x1038)
    //     0x6fb0ac: ldr             x2, [x2, #0x770]
    //     0x6fb0b0: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x6fb0b4: mov             x1, x0
    // 0x6fb0b8: stur            x1, [fp, #-0x30]
    // 0x6fb0bc: LoadField: r0 = r1->field_b
    //     0x6fb0bc: ldur            w0, [x1, #0xb]
    // 0x6fb0c0: r2 = LoadInt32Instr(r0)
    //     0x6fb0c0: sbfx            x2, x0, #1, #0x1f
    // 0x6fb0c4: add             x3, x2, #1
    // 0x6fb0c8: ldur            x2, [fp, #-0x10]
    // 0x6fb0cc: stur            x3, [fp, #-0x28]
    // 0x6fb0d0: LoadField: r0 = r2->field_23
    //     0x6fb0d0: ldur            w0, [x2, #0x23]
    // 0x6fb0d4: DecompressPointer r0
    //     0x6fb0d4: add             x0, x0, HEAP, lsl #32
    // 0x6fb0d8: LoadField: r4 = r0->field_27
    //     0x6fb0d8: ldur            w4, [x0, #0x27]
    // 0x6fb0dc: DecompressPointer r4
    //     0x6fb0dc: add             x4, x4, HEAP, lsl #32
    // 0x6fb0e0: LoadField: r5 = r4->field_7
    //     0x6fb0e0: ldur            w5, [x4, #7]
    // 0x6fb0e4: DecompressPointer r5
    //     0x6fb0e4: add             x5, x5, HEAP, lsl #32
    // 0x6fb0e8: stur            x5, [fp, #-0x20]
    // 0x6fb0ec: r0 = LoadStaticField(0x1034)
    //     0x6fb0ec: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb0f0: ldr             x0, [x0, #0x2068]
    // 0x6fb0f4: r4 = 60
    //     0x6fb0f4: mov             x4, #0x3c
    // 0x6fb0f8: branchIfSmi(r0, 0x6fb104)
    //     0x6fb0f8: tbz             w0, #0, #0x6fb104
    // 0x6fb0fc: r4 = LoadClassIdInstr(r0)
    //     0x6fb0fc: ldur            x4, [x0, #-1]
    //     0x6fb100: ubfx            x4, x4, #0xc, #0x14
    // 0x6fb104: str             x0, [SP]
    // 0x6fb108: mov             x0, x4
    // 0x6fb10c: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x6fb10c: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x6fb110: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x6fb110: mov             x17, #0x21f6
    //     0x6fb114: add             lr, x0, x17
    //     0x6fb118: ldr             lr, [x21, lr, lsl #3]
    //     0x6fb11c: blr             lr
    // 0x6fb120: stur            x0, [fp, #-0x38]
    // 0x6fb124: r0 = ModelZikirlerim()
    //     0x6fb124: bl              #0x5e669c  ; AllocateModelZikirlerimStub -> ModelZikirlerim (size=0x18)
    // 0x6fb128: mov             x3, x0
    // 0x6fb12c: ldur            x0, [fp, #-0x20]
    // 0x6fb130: stur            x3, [fp, #-0x40]
    // 0x6fb134: StoreField: r3->field_7 = r0
    //     0x6fb134: stur            w0, [x3, #7]
    // 0x6fb138: ldur            x0, [fp, #-0x38]
    // 0x6fb13c: StoreField: r3->field_b = r0
    //     0x6fb13c: stur            w0, [x3, #0xb]
    // 0x6fb140: ldur            x0, [fp, #-0x18]
    // 0x6fb144: StoreField: r3->field_f = r0
    //     0x6fb144: stur            w0, [x3, #0xf]
    // 0x6fb148: ldur            x4, [fp, #-0x28]
    // 0x6fb14c: lsl             x0, x4, #1
    // 0x6fb150: StoreField: r3->field_13 = r0
    //     0x6fb150: stur            w0, [x3, #0x13]
    // 0x6fb154: ldur            x5, [fp, #-0x30]
    // 0x6fb158: LoadField: r2 = r5->field_7
    //     0x6fb158: ldur            w2, [x5, #7]
    // 0x6fb15c: DecompressPointer r2
    //     0x6fb15c: add             x2, x2, HEAP, lsl #32
    // 0x6fb160: mov             x0, x3
    // 0x6fb164: r1 = Null
    //     0x6fb164: mov             x1, NULL
    // 0x6fb168: cmp             w2, NULL
    // 0x6fb16c: b.eq            #0x6fb18c
    // 0x6fb170: ArrayLoad: r4 = r2[0]  ; List_4
    //     0x6fb170: ldur            w4, [x2, #0x17]
    // 0x6fb174: DecompressPointer r4
    //     0x6fb174: add             x4, x4, HEAP, lsl #32
    // 0x6fb178: r8 = X0
    //     0x6fb178: ldr             x8, [PP, #0x188]  ; [pp+0x188] TypeParameter: X0
    // 0x6fb17c: LoadField: r9 = r4->field_7
    //     0x6fb17c: ldur            x9, [x4, #7]
    // 0x6fb180: r3 = Null
    //     0x6fb180: add             x3, PP, #0x20, lsl #12  ; [pp+0x20808] Null
    //     0x6fb184: ldr             x3, [x3, #0x808]
    // 0x6fb188: blr             x9
    // 0x6fb18c: ldur            x0, [fp, #-0x30]
    // 0x6fb190: LoadField: r1 = r0->field_b
    //     0x6fb190: ldur            w1, [x0, #0xb]
    // 0x6fb194: LoadField: r2 = r0->field_f
    //     0x6fb194: ldur            w2, [x0, #0xf]
    // 0x6fb198: DecompressPointer r2
    //     0x6fb198: add             x2, x2, HEAP, lsl #32
    // 0x6fb19c: LoadField: r3 = r2->field_b
    //     0x6fb19c: ldur            w3, [x2, #0xb]
    // 0x6fb1a0: r2 = LoadInt32Instr(r1)
    //     0x6fb1a0: sbfx            x2, x1, #1, #0x1f
    // 0x6fb1a4: stur            x2, [fp, #-0x48]
    // 0x6fb1a8: r1 = LoadInt32Instr(r3)
    //     0x6fb1a8: sbfx            x1, x3, #1, #0x1f
    // 0x6fb1ac: cmp             x2, x1
    // 0x6fb1b0: b.ne            #0x6fb1bc
    // 0x6fb1b4: mov             x1, x0
    // 0x6fb1b8: r0 = _growToNextCapacity()
    //     0x6fb1b8: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x6fb1bc: ldur            x3, [fp, #-0x10]
    // 0x6fb1c0: ldur            x0, [fp, #-0x30]
    // 0x6fb1c4: ldur            x2, [fp, #-0x48]
    // 0x6fb1c8: add             x1, x2, #1
    // 0x6fb1cc: lsl             x4, x1, #1
    // 0x6fb1d0: StoreField: r0->field_b = r4
    //     0x6fb1d0: stur            w4, [x0, #0xb]
    // 0x6fb1d4: LoadField: r1 = r0->field_f
    //     0x6fb1d4: ldur            w1, [x0, #0xf]
    // 0x6fb1d8: DecompressPointer r1
    //     0x6fb1d8: add             x1, x1, HEAP, lsl #32
    // 0x6fb1dc: ldur            x0, [fp, #-0x40]
    // 0x6fb1e0: ArrayStore: r1[r2] = r0  ; List_4
    //     0x6fb1e0: add             x25, x1, x2, lsl #2
    //     0x6fb1e4: add             x25, x25, #0xf
    //     0x6fb1e8: str             w0, [x25]
    //     0x6fb1ec: tbz             w0, #0, #0x6fb208
    //     0x6fb1f0: ldurb           w16, [x1, #-1]
    //     0x6fb1f4: ldurb           w17, [x0, #-1]
    //     0x6fb1f8: and             x16, x17, x16, lsr #2
    //     0x6fb1fc: tst             x16, HEAP, lsr #32
    //     0x6fb200: b.eq            #0x6fb208
    //     0x6fb204: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x6fb208: r0 = LoadStaticField(0x1038)
    //     0x6fb208: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb20c: ldr             x0, [x0, #0x2070]
    // 0x6fb210: stur            x0, [fp, #-0x18]
    // 0x6fb214: r1 = Function '<anonymous closure>':.
    //     0x6fb214: add             x1, PP, #0x20, lsl #12  ; [pp+0x20818] AnonymousClosure: (0x6fa718), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog (0x6fa75c)
    //     0x6fb218: ldr             x1, [x1, #0x818]
    // 0x6fb21c: r2 = Null
    //     0x6fb21c: mov             x2, NULL
    // 0x6fb220: r0 = AllocateClosure()
    //     0x6fb220: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fb224: r16 = <String>
    //     0x6fb224: ldr             x16, [PP, #0x390]  ; [pp+0x390] TypeArguments: <String>
    // 0x6fb228: ldur            lr, [fp, #-0x18]
    // 0x6fb22c: stp             lr, x16, [SP, #8]
    // 0x6fb230: str             x0, [SP]
    // 0x6fb234: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fb234: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fb238: r0 = map()
    //     0x6fb238: bl              #0x4e5cb4  ; [dart:collection] ListBase::map
    // 0x6fb23c: LoadField: r1 = r0->field_7
    //     0x6fb23c: ldur            w1, [x0, #7]
    // 0x6fb240: DecompressPointer r1
    //     0x6fb240: add             x1, x1, HEAP, lsl #32
    // 0x6fb244: mov             x2, x0
    // 0x6fb248: r0 = _GrowableList.of()
    //     0x6fb248: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6fb24c: mov             x1, x0
    // 0x6fb250: r0 = listToString()
    //     0x6fb250: bl              #0x6fa3d4  ; [dart:collection] ListBase::listToString
    // 0x6fb254: r1 = Function '<anonymous closure>':.
    //     0x6fb254: add             x1, PP, #0x20, lsl #12  ; [pp+0x20820] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fb258: ldr             x1, [x1, #0x820]
    // 0x6fb25c: r2 = Null
    //     0x6fb25c: mov             x2, NULL
    // 0x6fb260: stur            x0, [fp, #-0x18]
    // 0x6fb264: r0 = AllocateClosure()
    //     0x6fb264: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fb268: ldur            x1, [fp, #-0x10]
    // 0x6fb26c: mov             x2, x0
    // 0x6fb270: r0 = setState()
    //     0x6fb270: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fb274: r0 = getInstance()
    //     0x6fb274: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x6fb278: mov             x1, x0
    // 0x6fb27c: stur            x1, [fp, #-0x20]
    // 0x6fb280: r0 = Await()
    //     0x6fb280: bl              #0x3dd188  ; AwaitStub
    // 0x6fb284: mov             x1, x0
    // 0x6fb288: ldur            x3, [fp, #-0x18]
    // 0x6fb28c: r2 = "zikirlerim"
    //     0x6fb28c: add             x2, PP, #0x20, lsl #12  ; [pp+0x207a0] "zikirlerim"
    //     0x6fb290: ldr             x2, [x2, #0x7a0]
    // 0x6fb294: stur            x0, [fp, #-0x18]
    // 0x6fb298: r0 = setString()
    //     0x6fb298: bl              #0x5f1b2c  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setString
    // 0x6fb29c: ldur            x0, [fp, #-0x10]
    // 0x6fb2a0: LoadField: r1 = r0->field_23
    //     0x6fb2a0: ldur            w1, [x0, #0x23]
    // 0x6fb2a4: DecompressPointer r1
    //     0x6fb2a4: add             x1, x1, HEAP, lsl #32
    // 0x6fb2a8: r0 = clear()
    //     0x6fb2a8: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x6fb2ac: r0 = 0
    //     0x6fb2ac: mov             x0, #0
    // 0x6fb2b0: StoreStaticField(0x1034, r0)
    //     0x6fb2b0: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x6fb2b4: str             x0, [x1, #0x2068]
    // 0x6fb2b8: ldur            x1, [fp, #-0x18]
    // 0x6fb2bc: r2 = "kaydedilenZikir"
    //     0x6fb2bc: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x6fb2c0: ldr             x2, [x2, #0x598]
    // 0x6fb2c4: r3 = 0
    //     0x6fb2c4: mov             x3, #0
    // 0x6fb2c8: r0 = setInt()
    //     0x6fb2c8: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x6fb2cc: r1 = Function '<anonymous closure>':.
    //     0x6fb2cc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20828] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x6fb2d0: ldr             x1, [x1, #0x828]
    // 0x6fb2d4: r2 = Null
    //     0x6fb2d4: mov             x2, NULL
    // 0x6fb2d8: r0 = AllocateClosure()
    //     0x6fb2d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fb2dc: ldur            x1, [fp, #-0x10]
    // 0x6fb2e0: mov             x2, x0
    // 0x6fb2e4: r0 = setState()
    //     0x6fb2e4: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x6fb2e8: ldur            x0, [fp, #-0x10]
    // 0x6fb2ec: LoadField: r1 = r0->field_f
    //     0x6fb2ec: ldur            w1, [x0, #0xf]
    // 0x6fb2f0: DecompressPointer r1
    //     0x6fb2f0: add             x1, x1, HEAP, lsl #32
    // 0x6fb2f4: cmp             w1, NULL
    // 0x6fb2f8: b.eq            #0x6fb3a0
    // 0x6fb2fc: r16 = <Object?>
    //     0x6fb2fc: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fb300: stp             x1, x16, [SP]
    // 0x6fb304: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fb304: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fb308: r0 = pop()
    //     0x6fb308: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6fb30c: ldur            x0, [fp, #-0x10]
    // 0x6fb310: LoadField: r3 = r0->field_f
    //     0x6fb310: ldur            w3, [x0, #0xf]
    // 0x6fb314: DecompressPointer r3
    //     0x6fb314: add             x3, x3, HEAP, lsl #32
    // 0x6fb318: stur            x3, [fp, #-0x18]
    // 0x6fb31c: cmp             w3, NULL
    // 0x6fb320: b.eq            #0x6fb3a4
    // 0x6fb324: r1 = Function '<anonymous closure>':.
    //     0x6fb324: add             x1, PP, #0x20, lsl #12  ; [pp+0x20830] AnonymousClosure: (0x6fb42c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x6fb328: ldr             x1, [x1, #0x830]
    // 0x6fb32c: r2 = Null
    //     0x6fb32c: mov             x2, NULL
    // 0x6fb330: r0 = AllocateClosure()
    //     0x6fb330: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fb334: r1 = Null
    //     0x6fb334: mov             x1, NULL
    // 0x6fb338: stur            x0, [fp, #-0x10]
    // 0x6fb33c: r0 = MaterialPageRoute()
    //     0x6fb33c: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x6fb340: mov             x4, x0
    // 0x6fb344: ldur            x0, [fp, #-0x10]
    // 0x6fb348: stur            x4, [fp, #-0x20]
    // 0x6fb34c: StoreField: r4->field_a3 = r0
    //     0x6fb34c: stur            w0, [x4, #0xa3]
    // 0x6fb350: r0 = true
    //     0x6fb350: add             x0, NULL, #0x20  ; true
    // 0x6fb354: StoreField: r4->field_a7 = r0
    //     0x6fb354: stur            w0, [x4, #0xa7]
    // 0x6fb358: r1 = false
    //     0x6fb358: add             x1, NULL, #0x30  ; false
    // 0x6fb35c: StoreField: r4->field_97 = r1
    //     0x6fb35c: stur            w1, [x4, #0x97]
    // 0x6fb360: StoreField: r4->field_9b = r0
    //     0x6fb360: stur            w0, [x4, #0x9b]
    // 0x6fb364: StoreField: r4->field_9f = r1
    //     0x6fb364: stur            w1, [x4, #0x9f]
    // 0x6fb368: mov             x1, x4
    // 0x6fb36c: r2 = Null
    //     0x6fb36c: mov             x2, NULL
    // 0x6fb370: r3 = Null
    //     0x6fb370: mov             x3, NULL
    // 0x6fb374: r0 = ModalRoute()
    //     0x6fb374: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x6fb378: ldur            x16, [fp, #-0x18]
    // 0x6fb37c: stp             x16, NULL, [SP, #8]
    // 0x6fb380: ldur            x16, [fp, #-0x20]
    // 0x6fb384: str             x16, [SP]
    // 0x6fb388: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fb388: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fb38c: r0 = push()
    //     0x6fb38c: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x6fb390: r0 = Null
    //     0x6fb390: mov             x0, NULL
    // 0x6fb394: r0 = ReturnAsyncNotFuture()
    //     0x6fb394: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6fb398: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fb398: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fb39c: b               #0x6faff8
    // 0x6fb3a0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fb3a0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
    // 0x6fb3a4: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x6fb3a4: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] Zikirlerim <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x6fb42c, size: 0xc
    // 0x6fb42c: r0 = Instance_Zikirlerim
    //     0x6fb42c: add             x0, PP, #0x20, lsl #12  ; [pp+0x206a8] Obj!Zikirlerim@a202e1
    //     0x6fb430: ldr             x0, [x0, #0x6a8]
    // 0x6fb434: ret
    //     0x6fb434: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6fb438, size: 0xb4
    // 0x6fb438: EnterFrame
    //     0x6fb438: stp             fp, lr, [SP, #-0x10]!
    //     0x6fb43c: mov             fp, SP
    // 0x6fb440: AllocStack(0x30)
    //     0x6fb440: sub             SP, SP, #0x30
    // 0x6fb444: SetupParameters([dynamic _ /* r0 */])
    //     0x6fb444: ldr             x0, [fp, #0x10]
    //     0x6fb448: ldur            w1, [x0, #0x17]
    //     0x6fb44c: add             x1, x1, HEAP, lsl #32
    // 0x6fb450: CheckStackOverflow
    //     0x6fb450: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fb454: cmp             SP, x16
    //     0x6fb458: b.ls            #0x6fb4e4
    // 0x6fb45c: LoadField: r0 = r1->field_13
    //     0x6fb45c: ldur            w0, [x1, #0x13]
    // 0x6fb460: DecompressPointer r0
    //     0x6fb460: add             x0, x0, HEAP, lsl #32
    // 0x6fb464: stur            x0, [fp, #-8]
    // 0x6fb468: r1 = Function '<anonymous closure>':.
    //     0x6fb468: add             x1, PP, #0x20, lsl #12  ; [pp+0x206a0] AnonymousClosure: (0x6fb42c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x6fb46c: ldr             x1, [x1, #0x6a0]
    // 0x6fb470: r2 = Null
    //     0x6fb470: mov             x2, NULL
    // 0x6fb474: r0 = AllocateClosure()
    //     0x6fb474: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6fb478: r1 = Null
    //     0x6fb478: mov             x1, NULL
    // 0x6fb47c: stur            x0, [fp, #-0x10]
    // 0x6fb480: r0 = MaterialPageRoute()
    //     0x6fb480: bl              #0x66166c  ; AllocateMaterialPageRouteStub -> MaterialPageRoute<X0> (size=0xac)
    // 0x6fb484: mov             x4, x0
    // 0x6fb488: ldur            x0, [fp, #-0x10]
    // 0x6fb48c: stur            x4, [fp, #-0x18]
    // 0x6fb490: StoreField: r4->field_a3 = r0
    //     0x6fb490: stur            w0, [x4, #0xa3]
    // 0x6fb494: r0 = true
    //     0x6fb494: add             x0, NULL, #0x20  ; true
    // 0x6fb498: StoreField: r4->field_a7 = r0
    //     0x6fb498: stur            w0, [x4, #0xa7]
    // 0x6fb49c: r1 = false
    //     0x6fb49c: add             x1, NULL, #0x30  ; false
    // 0x6fb4a0: StoreField: r4->field_97 = r1
    //     0x6fb4a0: stur            w1, [x4, #0x97]
    // 0x6fb4a4: StoreField: r4->field_9b = r0
    //     0x6fb4a4: stur            w0, [x4, #0x9b]
    // 0x6fb4a8: StoreField: r4->field_9f = r1
    //     0x6fb4a8: stur            w1, [x4, #0x9f]
    // 0x6fb4ac: mov             x1, x4
    // 0x6fb4b0: r2 = Null
    //     0x6fb4b0: mov             x2, NULL
    // 0x6fb4b4: r3 = Null
    //     0x6fb4b4: mov             x3, NULL
    // 0x6fb4b8: r0 = ModalRoute()
    //     0x6fb4b8: bl              #0x57cd40  ; [package:flutter/src/widgets/routes.dart] ModalRoute::ModalRoute
    // 0x6fb4bc: ldur            x16, [fp, #-8]
    // 0x6fb4c0: stp             x16, NULL, [SP, #8]
    // 0x6fb4c4: ldur            x16, [fp, #-0x18]
    // 0x6fb4c8: str             x16, [SP]
    // 0x6fb4cc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6fb4cc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6fb4d0: r0 = push()
    //     0x6fb4d0: bl              #0x6fb3a8  ; [package:flutter/src/widgets/navigator.dart] Navigator::push
    // 0x6fb4d4: r0 = Null
    //     0x6fb4d4: mov             x0, NULL
    // 0x6fb4d8: LeaveFrame
    //     0x6fb4d8: mov             SP, fp
    //     0x6fb4dc: ldp             fp, lr, [SP], #0x10
    // 0x6fb4e0: ret
    //     0x6fb4e0: ret             
    // 0x6fb4e4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fb4e4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fb4e8: b               #0x6fb45c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x6fb4ec, size: 0x78
    // 0x6fb4ec: EnterFrame
    //     0x6fb4ec: stp             fp, lr, [SP, #-0x10]!
    //     0x6fb4f0: mov             fp, SP
    // 0x6fb4f4: AllocStack(0x18)
    //     0x6fb4f4: sub             SP, SP, #0x18
    // 0x6fb4f8: SetupParameters([dynamic _ /* r0 */])
    //     0x6fb4f8: ldr             x0, [fp, #0x10]
    //     0x6fb4fc: ldur            w1, [x0, #0x17]
    //     0x6fb500: add             x1, x1, HEAP, lsl #32
    //     0x6fb504: stur            x1, [fp, #-8]
    // 0x6fb508: CheckStackOverflow
    //     0x6fb508: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6fb50c: cmp             SP, x16
    //     0x6fb510: b.ls            #0x6fb55c
    // 0x6fb514: LoadField: r0 = r1->field_f
    //     0x6fb514: ldur            w0, [x1, #0xf]
    // 0x6fb518: DecompressPointer r0
    //     0x6fb518: add             x0, x0, HEAP, lsl #32
    // 0x6fb51c: r16 = <Object?>
    //     0x6fb51c: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x6fb520: stp             x0, x16, [SP]
    // 0x6fb524: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x6fb524: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x6fb528: r0 = pop()
    //     0x6fb528: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x6fb52c: ldur            x0, [fp, #-8]
    // 0x6fb530: LoadField: r1 = r0->field_b
    //     0x6fb530: ldur            w1, [x0, #0xb]
    // 0x6fb534: DecompressPointer r1
    //     0x6fb534: add             x1, x1, HEAP, lsl #32
    // 0x6fb538: LoadField: r0 = r1->field_f
    //     0x6fb538: ldur            w0, [x1, #0xf]
    // 0x6fb53c: DecompressPointer r0
    //     0x6fb53c: add             x0, x0, HEAP, lsl #32
    // 0x6fb540: LoadField: r1 = r0->field_23
    //     0x6fb540: ldur            w1, [x0, #0x23]
    // 0x6fb544: DecompressPointer r1
    //     0x6fb544: add             x1, x1, HEAP, lsl #32
    // 0x6fb548: r0 = clear()
    //     0x6fb548: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x6fb54c: r0 = Null
    //     0x6fb54c: mov             x0, NULL
    // 0x6fb550: LeaveFrame
    //     0x6fb550: mov             SP, fp
    //     0x6fb554: ldp             fp, lr, [SP], #0x10
    // 0x6fb558: ret
    //     0x6fb558: ret             
    // 0x6fb55c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6fb55c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6fb560: b               #0x6fb514
  }
  _ build(/* No info */) {
    // ** addr: 0x725d88, size: 0x678
    // 0x725d88: EnterFrame
    //     0x725d88: stp             fp, lr, [SP, #-0x10]!
    //     0x725d8c: mov             fp, SP
    // 0x725d90: AllocStack(0x70)
    //     0x725d90: sub             SP, SP, #0x70
    // 0x725d94: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x8 */, dynamic _ /* r2 => r2, fp-0x10 */)
    //     0x725d94: stur            x1, [fp, #-8]
    //     0x725d98: stur            x2, [fp, #-0x10]
    // 0x725d9c: CheckStackOverflow
    //     0x725d9c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x725da0: cmp             SP, x16
    //     0x725da4: b.ls            #0x7263f8
    // 0x725da8: r1 = 2
    //     0x725da8: mov             x1, #2
    // 0x725dac: r0 = AllocateContext()
    //     0x725dac: bl              #0x927010  ; AllocateContextStub
    // 0x725db0: ldur            x1, [fp, #-8]
    // 0x725db4: stur            x0, [fp, #-0x18]
    // 0x725db8: StoreField: r0->field_f = r1
    //     0x725db8: stur            w1, [x0, #0xf]
    // 0x725dbc: ldur            x2, [fp, #-0x10]
    // 0x725dc0: StoreField: r0->field_13 = r2
    //     0x725dc0: stur            w2, [x0, #0x13]
    // 0x725dc4: r0 = InitLateStaticField(0x1040) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::arkaplan
    //     0x725dc4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x725dc8: ldr             x0, [x0, #0x2080]
    //     0x725dcc: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x725dd0: cmp             w0, w16
    //     0x725dd4: b.ne            #0x725de4
    //     0x725dd8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20448] Field <Veriler.arkaplan>: static late (offset: 0x1040)
    //     0x725ddc: ldr             x2, [x2, #0x448]
    //     0x725de0: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x725de4: stur            x0, [fp, #-0x10]
    // 0x725de8: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x725de8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x725dec: ldr             x0, [x0, #0x2078]
    //     0x725df0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x725df4: cmp             w0, w16
    //     0x725df8: b.ne            #0x725e08
    //     0x725dfc: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x725e00: ldr             x2, [x2, #0x450]
    //     0x725e04: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x725e08: stur            x0, [fp, #-0x20]
    // 0x725e0c: r0 = SystemUiOverlayStyle()
    //     0x725e0c: bl              #0x5a8700  ; AllocateSystemUiOverlayStyleStub -> SystemUiOverlayStyle (size=0x28)
    // 0x725e10: mov             x3, x0
    // 0x725e14: ldur            x0, [fp, #-0x20]
    // 0x725e18: stur            x3, [fp, #-0x30]
    // 0x725e1c: ArrayStore: r3[0] = r0  ; List_4
    //     0x725e1c: stur            w0, [x3, #0x17]
    // 0x725e20: r1 = Instance_Brightness
    //     0x725e20: ldr             x1, [PP, #0x56f8]  ; [pp+0x56f8] Obj!Brightness@a2cbd1
    // 0x725e24: StoreField: r3->field_1f = r1
    //     0x725e24: stur            w1, [x3, #0x1f]
    // 0x725e28: r4 = LoadStaticField(0x1040)
    //     0x725e28: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x725e2c: ldr             x4, [x4, #0x2080]
    // 0x725e30: ldur            x2, [fp, #-0x18]
    // 0x725e34: stur            x4, [fp, #-0x28]
    // 0x725e38: r1 = Function '<anonymous closure>':.
    //     0x725e38: add             x1, PP, #0x20, lsl #12  ; [pp+0x20458] AnonymousClosure: (0x6fb438), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x725e3c: ldr             x1, [x1, #0x458]
    // 0x725e40: r0 = AllocateClosure()
    //     0x725e40: bl              #0x9273d4  ; AllocateClosureStub
    // 0x725e44: stur            x0, [fp, #-0x38]
    // 0x725e48: r0 = IconButton()
    //     0x725e48: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x725e4c: mov             x1, x0
    // 0x725e50: ldur            x0, [fp, #-0x38]
    // 0x725e54: stur            x1, [fp, #-0x40]
    // 0x725e58: StoreField: r1->field_3b = r0
    //     0x725e58: stur            w0, [x1, #0x3b]
    // 0x725e5c: r0 = false
    //     0x725e5c: add             x0, NULL, #0x30  ; false
    // 0x725e60: StoreField: r1->field_4f = r0
    //     0x725e60: stur            w0, [x1, #0x4f]
    // 0x725e64: r2 = Instance_Icon
    //     0x725e64: add             x2, PP, #0x20, lsl #12  ; [pp+0x20460] Obj!Icon@a1eb31
    //     0x725e68: ldr             x2, [x2, #0x460]
    // 0x725e6c: StoreField: r1->field_1f = r2
    //     0x725e6c: stur            w2, [x1, #0x1f]
    // 0x725e70: r2 = Instance__IconButtonVariant
    //     0x725e70: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x725e74: ldr             x2, [x2, #0x1b8]
    // 0x725e78: StoreField: r1->field_6f = r2
    //     0x725e78: stur            w2, [x1, #0x6f]
    // 0x725e7c: r0 = Material()
    //     0x725e7c: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x725e80: mov             x1, x0
    // 0x725e84: r0 = Instance_MaterialType
    //     0x725e84: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x725e88: ldr             x0, [x0, #0xfa0]
    // 0x725e8c: stur            x1, [fp, #-0x38]
    // 0x725e90: StoreField: r1->field_f = r0
    //     0x725e90: stur            w0, [x1, #0xf]
    // 0x725e94: ArrayStore: r1[0] = rZR  ; List_8
    //     0x725e94: stur            xzr, [x1, #0x17]
    // 0x725e98: ldur            x2, [fp, #-0x20]
    // 0x725e9c: StoreField: r1->field_1f = r2
    //     0x725e9c: stur            w2, [x1, #0x1f]
    // 0x725ea0: r3 = true
    //     0x725ea0: add             x3, NULL, #0x20  ; true
    // 0x725ea4: StoreField: r1->field_33 = r3
    //     0x725ea4: stur            w3, [x1, #0x33]
    // 0x725ea8: r4 = Instance_Clip
    //     0x725ea8: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x725eac: ldr             x4, [x4, #0x348]
    // 0x725eb0: StoreField: r1->field_37 = r4
    //     0x725eb0: stur            w4, [x1, #0x37]
    // 0x725eb4: r5 = Instance_Duration
    //     0x725eb4: add             x5, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x725eb8: ldr             x5, [x5, #0x2c8]
    // 0x725ebc: StoreField: r1->field_3b = r5
    //     0x725ebc: stur            w5, [x1, #0x3b]
    // 0x725ec0: ldur            x6, [fp, #-0x40]
    // 0x725ec4: StoreField: r1->field_b = r6
    //     0x725ec4: stur            w6, [x1, #0xb]
    // 0x725ec8: r6 = false
    //     0x725ec8: add             x6, NULL, #0x30  ; false
    // 0x725ecc: StoreField: r1->field_13 = r6
    //     0x725ecc: stur            w6, [x1, #0x13]
    // 0x725ed0: r0 = ClipOval()
    //     0x725ed0: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x725ed4: mov             x3, x0
    // 0x725ed8: r0 = Instance_Clip
    //     0x725ed8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x725edc: ldr             x0, [x0, #0xd38]
    // 0x725ee0: stur            x3, [fp, #-0x40]
    // 0x725ee4: StoreField: r3->field_13 = r0
    //     0x725ee4: stur            w0, [x3, #0x13]
    // 0x725ee8: ldur            x1, [fp, #-0x38]
    // 0x725eec: StoreField: r3->field_b = r1
    //     0x725eec: stur            w1, [x3, #0xb]
    // 0x725ef0: ldur            x2, [fp, #-0x18]
    // 0x725ef4: r1 = Function '<anonymous closure>':.
    //     0x725ef4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20468] AnonymousClosure: (0x728cfc), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x725ef8: ldr             x1, [x1, #0x468]
    // 0x725efc: r0 = AllocateClosure()
    //     0x725efc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x725f00: stur            x0, [fp, #-0x38]
    // 0x725f04: r0 = IconButton()
    //     0x725f04: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x725f08: mov             x1, x0
    // 0x725f0c: ldur            x0, [fp, #-0x38]
    // 0x725f10: stur            x1, [fp, #-0x48]
    // 0x725f14: StoreField: r1->field_3b = r0
    //     0x725f14: stur            w0, [x1, #0x3b]
    // 0x725f18: r0 = false
    //     0x725f18: add             x0, NULL, #0x30  ; false
    // 0x725f1c: StoreField: r1->field_4f = r0
    //     0x725f1c: stur            w0, [x1, #0x4f]
    // 0x725f20: r2 = Instance_Icon
    //     0x725f20: add             x2, PP, #0x20, lsl #12  ; [pp+0x20470] Obj!Icon@a1eaf1
    //     0x725f24: ldr             x2, [x2, #0x470]
    // 0x725f28: StoreField: r1->field_1f = r2
    //     0x725f28: stur            w2, [x1, #0x1f]
    // 0x725f2c: r2 = Instance__IconButtonVariant
    //     0x725f2c: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x725f30: ldr             x2, [x2, #0x1b8]
    // 0x725f34: StoreField: r1->field_6f = r2
    //     0x725f34: stur            w2, [x1, #0x6f]
    // 0x725f38: r0 = Material()
    //     0x725f38: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x725f3c: mov             x1, x0
    // 0x725f40: r0 = Instance_MaterialType
    //     0x725f40: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x725f44: ldr             x0, [x0, #0xfa0]
    // 0x725f48: stur            x1, [fp, #-0x38]
    // 0x725f4c: StoreField: r1->field_f = r0
    //     0x725f4c: stur            w0, [x1, #0xf]
    // 0x725f50: ArrayStore: r1[0] = rZR  ; List_8
    //     0x725f50: stur            xzr, [x1, #0x17]
    // 0x725f54: ldur            x2, [fp, #-0x20]
    // 0x725f58: StoreField: r1->field_1f = r2
    //     0x725f58: stur            w2, [x1, #0x1f]
    // 0x725f5c: r3 = true
    //     0x725f5c: add             x3, NULL, #0x20  ; true
    // 0x725f60: StoreField: r1->field_33 = r3
    //     0x725f60: stur            w3, [x1, #0x33]
    // 0x725f64: r4 = Instance_Clip
    //     0x725f64: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x725f68: ldr             x4, [x4, #0x348]
    // 0x725f6c: StoreField: r1->field_37 = r4
    //     0x725f6c: stur            w4, [x1, #0x37]
    // 0x725f70: r5 = Instance_Duration
    //     0x725f70: add             x5, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x725f74: ldr             x5, [x5, #0x2c8]
    // 0x725f78: StoreField: r1->field_3b = r5
    //     0x725f78: stur            w5, [x1, #0x3b]
    // 0x725f7c: ldur            x6, [fp, #-0x48]
    // 0x725f80: StoreField: r1->field_b = r6
    //     0x725f80: stur            w6, [x1, #0xb]
    // 0x725f84: r6 = false
    //     0x725f84: add             x6, NULL, #0x30  ; false
    // 0x725f88: StoreField: r1->field_13 = r6
    //     0x725f88: stur            w6, [x1, #0x13]
    // 0x725f8c: r0 = ClipOval()
    //     0x725f8c: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x725f90: mov             x1, x0
    // 0x725f94: r0 = Instance_Clip
    //     0x725f94: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x725f98: ldr             x0, [x0, #0xd38]
    // 0x725f9c: stur            x1, [fp, #-0x48]
    // 0x725fa0: StoreField: r1->field_13 = r0
    //     0x725fa0: stur            w0, [x1, #0x13]
    // 0x725fa4: ldur            x2, [fp, #-0x38]
    // 0x725fa8: StoreField: r1->field_b = r2
    //     0x725fa8: stur            w2, [x1, #0xb]
    // 0x725fac: r2 = LoadStaticField(0x1030)
    //     0x725fac: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x725fb0: ldr             x2, [x2, #0x2060]
    // 0x725fb4: tbnz            w2, #4, #0x725fc4
    // 0x725fb8: r5 = Instance_IconData
    //     0x725fb8: add             x5, PP, #0x20, lsl #12  ; [pp+0x20478] Obj!IconData@a0a341
    //     0x725fbc: ldr             x5, [x5, #0x478]
    // 0x725fc0: b               #0x725fcc
    // 0x725fc4: r5 = Instance_IconData
    //     0x725fc4: add             x5, PP, #0x20, lsl #12  ; [pp+0x20480] Obj!IconData@a0a321
    //     0x725fc8: ldr             x5, [x5, #0x480]
    // 0x725fcc: ldur            x3, [fp, #-0x40]
    // 0x725fd0: ldur            x4, [fp, #-0x10]
    // 0x725fd4: ldur            x2, [fp, #-0x20]
    // 0x725fd8: stur            x5, [fp, #-0x38]
    // 0x725fdc: r0 = Icon()
    //     0x725fdc: bl              #0x66b1c4  ; AllocateIconStub -> Icon (size=0x40)
    // 0x725fe0: mov             x3, x0
    // 0x725fe4: ldur            x0, [fp, #-0x38]
    // 0x725fe8: stur            x3, [fp, #-0x50]
    // 0x725fec: StoreField: r3->field_b = r0
    //     0x725fec: stur            w0, [x3, #0xb]
    // 0x725ff0: r0 = Instance_Color
    //     0x725ff0: ldr             x0, [PP, #0x5730]  ; [pp+0x5730] Obj!Color@a21fa1
    // 0x725ff4: StoreField: r3->field_23 = r0
    //     0x725ff4: stur            w0, [x3, #0x23]
    // 0x725ff8: ldur            x2, [fp, #-0x18]
    // 0x725ffc: r1 = Function '<anonymous closure>':.
    //     0x725ffc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20488] AnonymousClosure: (0x728c24), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x726000: ldr             x1, [x1, #0x488]
    // 0x726004: r0 = AllocateClosure()
    //     0x726004: bl              #0x9273d4  ; AllocateClosureStub
    // 0x726008: stur            x0, [fp, #-0x38]
    // 0x72600c: r0 = IconButton()
    //     0x72600c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x726010: mov             x1, x0
    // 0x726014: ldur            x0, [fp, #-0x38]
    // 0x726018: stur            x1, [fp, #-0x58]
    // 0x72601c: StoreField: r1->field_3b = r0
    //     0x72601c: stur            w0, [x1, #0x3b]
    // 0x726020: r0 = false
    //     0x726020: add             x0, NULL, #0x30  ; false
    // 0x726024: StoreField: r1->field_4f = r0
    //     0x726024: stur            w0, [x1, #0x4f]
    // 0x726028: ldur            x2, [fp, #-0x50]
    // 0x72602c: StoreField: r1->field_1f = r2
    //     0x72602c: stur            w2, [x1, #0x1f]
    // 0x726030: r2 = Instance__IconButtonVariant
    //     0x726030: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x726034: ldr             x2, [x2, #0x1b8]
    // 0x726038: StoreField: r1->field_6f = r2
    //     0x726038: stur            w2, [x1, #0x6f]
    // 0x72603c: r0 = Material()
    //     0x72603c: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x726040: mov             x1, x0
    // 0x726044: r0 = Instance_MaterialType
    //     0x726044: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x726048: ldr             x0, [x0, #0xfa0]
    // 0x72604c: stur            x1, [fp, #-0x38]
    // 0x726050: StoreField: r1->field_f = r0
    //     0x726050: stur            w0, [x1, #0xf]
    // 0x726054: ArrayStore: r1[0] = rZR  ; List_8
    //     0x726054: stur            xzr, [x1, #0x17]
    // 0x726058: ldur            x2, [fp, #-0x20]
    // 0x72605c: StoreField: r1->field_1f = r2
    //     0x72605c: stur            w2, [x1, #0x1f]
    // 0x726060: r3 = true
    //     0x726060: add             x3, NULL, #0x20  ; true
    // 0x726064: StoreField: r1->field_33 = r3
    //     0x726064: stur            w3, [x1, #0x33]
    // 0x726068: r4 = Instance_Clip
    //     0x726068: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x72606c: ldr             x4, [x4, #0x348]
    // 0x726070: StoreField: r1->field_37 = r4
    //     0x726070: stur            w4, [x1, #0x37]
    // 0x726074: r5 = Instance_Duration
    //     0x726074: add             x5, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x726078: ldr             x5, [x5, #0x2c8]
    // 0x72607c: StoreField: r1->field_3b = r5
    //     0x72607c: stur            w5, [x1, #0x3b]
    // 0x726080: ldur            x6, [fp, #-0x58]
    // 0x726084: StoreField: r1->field_b = r6
    //     0x726084: stur            w6, [x1, #0xb]
    // 0x726088: r6 = false
    //     0x726088: add             x6, NULL, #0x30  ; false
    // 0x72608c: StoreField: r1->field_13 = r6
    //     0x72608c: stur            w6, [x1, #0x13]
    // 0x726090: r0 = ClipOval()
    //     0x726090: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x726094: mov             x3, x0
    // 0x726098: r0 = Instance_Clip
    //     0x726098: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x72609c: ldr             x0, [x0, #0xd38]
    // 0x7260a0: stur            x3, [fp, #-0x50]
    // 0x7260a4: StoreField: r3->field_13 = r0
    //     0x7260a4: stur            w0, [x3, #0x13]
    // 0x7260a8: ldur            x1, [fp, #-0x38]
    // 0x7260ac: StoreField: r3->field_b = r1
    //     0x7260ac: stur            w1, [x3, #0xb]
    // 0x7260b0: ldur            x2, [fp, #-0x18]
    // 0x7260b4: r1 = Function '<anonymous closure>':.
    //     0x7260b4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20490] AnonymousClosure: (0x72841c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x7260b8: ldr             x1, [x1, #0x490]
    // 0x7260bc: r0 = AllocateClosure()
    //     0x7260bc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7260c0: stur            x0, [fp, #-0x38]
    // 0x7260c4: r0 = IconButton()
    //     0x7260c4: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7260c8: mov             x1, x0
    // 0x7260cc: ldur            x0, [fp, #-0x38]
    // 0x7260d0: stur            x1, [fp, #-0x58]
    // 0x7260d4: StoreField: r1->field_3b = r0
    //     0x7260d4: stur            w0, [x1, #0x3b]
    // 0x7260d8: r0 = false
    //     0x7260d8: add             x0, NULL, #0x30  ; false
    // 0x7260dc: StoreField: r1->field_4f = r0
    //     0x7260dc: stur            w0, [x1, #0x4f]
    // 0x7260e0: r2 = Instance_Icon
    //     0x7260e0: add             x2, PP, #0x20, lsl #12  ; [pp+0x20498] Obj!Icon@a1eab1
    //     0x7260e4: ldr             x2, [x2, #0x498]
    // 0x7260e8: StoreField: r1->field_1f = r2
    //     0x7260e8: stur            w2, [x1, #0x1f]
    // 0x7260ec: r2 = Instance__IconButtonVariant
    //     0x7260ec: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7260f0: ldr             x2, [x2, #0x1b8]
    // 0x7260f4: StoreField: r1->field_6f = r2
    //     0x7260f4: stur            w2, [x1, #0x6f]
    // 0x7260f8: r0 = Material()
    //     0x7260f8: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x7260fc: mov             x1, x0
    // 0x726100: r0 = Instance_MaterialType
    //     0x726100: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x726104: ldr             x0, [x0, #0xfa0]
    // 0x726108: stur            x1, [fp, #-0x38]
    // 0x72610c: StoreField: r1->field_f = r0
    //     0x72610c: stur            w0, [x1, #0xf]
    // 0x726110: ArrayStore: r1[0] = rZR  ; List_8
    //     0x726110: stur            xzr, [x1, #0x17]
    // 0x726114: ldur            x2, [fp, #-0x20]
    // 0x726118: StoreField: r1->field_1f = r2
    //     0x726118: stur            w2, [x1, #0x1f]
    // 0x72611c: r3 = true
    //     0x72611c: add             x3, NULL, #0x20  ; true
    // 0x726120: StoreField: r1->field_33 = r3
    //     0x726120: stur            w3, [x1, #0x33]
    // 0x726124: r4 = Instance_Clip
    //     0x726124: add             x4, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726128: ldr             x4, [x4, #0x348]
    // 0x72612c: StoreField: r1->field_37 = r4
    //     0x72612c: stur            w4, [x1, #0x37]
    // 0x726130: r5 = Instance_Duration
    //     0x726130: add             x5, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x726134: ldr             x5, [x5, #0x2c8]
    // 0x726138: StoreField: r1->field_3b = r5
    //     0x726138: stur            w5, [x1, #0x3b]
    // 0x72613c: ldur            x6, [fp, #-0x58]
    // 0x726140: StoreField: r1->field_b = r6
    //     0x726140: stur            w6, [x1, #0xb]
    // 0x726144: r6 = false
    //     0x726144: add             x6, NULL, #0x30  ; false
    // 0x726148: StoreField: r1->field_13 = r6
    //     0x726148: stur            w6, [x1, #0x13]
    // 0x72614c: r0 = ClipOval()
    //     0x72614c: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x726150: mov             x3, x0
    // 0x726154: r0 = Instance_Clip
    //     0x726154: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x726158: ldr             x0, [x0, #0xd38]
    // 0x72615c: stur            x3, [fp, #-0x58]
    // 0x726160: StoreField: r3->field_13 = r0
    //     0x726160: stur            w0, [x3, #0x13]
    // 0x726164: ldur            x1, [fp, #-0x38]
    // 0x726168: StoreField: r3->field_b = r1
    //     0x726168: stur            w1, [x3, #0xb]
    // 0x72616c: ldur            x2, [fp, #-0x18]
    // 0x726170: r1 = Function '<anonymous closure>':.
    //     0x726170: add             x1, PP, #0x20, lsl #12  ; [pp+0x204a0] AnonymousClosure: (0x72764c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::build (0x725d88)
    //     0x726174: ldr             x1, [x1, #0x4a0]
    // 0x726178: r0 = AllocateClosure()
    //     0x726178: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72617c: stur            x0, [fp, #-0x18]
    // 0x726180: r0 = IconButton()
    //     0x726180: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x726184: mov             x1, x0
    // 0x726188: ldur            x0, [fp, #-0x18]
    // 0x72618c: stur            x1, [fp, #-0x38]
    // 0x726190: StoreField: r1->field_3b = r0
    //     0x726190: stur            w0, [x1, #0x3b]
    // 0x726194: r0 = false
    //     0x726194: add             x0, NULL, #0x30  ; false
    // 0x726198: StoreField: r1->field_4f = r0
    //     0x726198: stur            w0, [x1, #0x4f]
    // 0x72619c: r2 = Instance_Icon
    //     0x72619c: add             x2, PP, #0x20, lsl #12  ; [pp+0x204a8] Obj!Icon@a1ea71
    //     0x7261a0: ldr             x2, [x2, #0x4a8]
    // 0x7261a4: StoreField: r1->field_1f = r2
    //     0x7261a4: stur            w2, [x1, #0x1f]
    // 0x7261a8: r2 = Instance__IconButtonVariant
    //     0x7261a8: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7261ac: ldr             x2, [x2, #0x1b8]
    // 0x7261b0: StoreField: r1->field_6f = r2
    //     0x7261b0: stur            w2, [x1, #0x6f]
    // 0x7261b4: r0 = Material()
    //     0x7261b4: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x7261b8: mov             x1, x0
    // 0x7261bc: r0 = Instance_MaterialType
    //     0x7261bc: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x7261c0: ldr             x0, [x0, #0xfa0]
    // 0x7261c4: stur            x1, [fp, #-0x18]
    // 0x7261c8: StoreField: r1->field_f = r0
    //     0x7261c8: stur            w0, [x1, #0xf]
    // 0x7261cc: ArrayStore: r1[0] = rZR  ; List_8
    //     0x7261cc: stur            xzr, [x1, #0x17]
    // 0x7261d0: ldur            x0, [fp, #-0x20]
    // 0x7261d4: StoreField: r1->field_1f = r0
    //     0x7261d4: stur            w0, [x1, #0x1f]
    // 0x7261d8: r0 = true
    //     0x7261d8: add             x0, NULL, #0x20  ; true
    // 0x7261dc: StoreField: r1->field_33 = r0
    //     0x7261dc: stur            w0, [x1, #0x33]
    // 0x7261e0: r2 = Instance_Clip
    //     0x7261e0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7261e4: ldr             x2, [x2, #0x348]
    // 0x7261e8: StoreField: r1->field_37 = r2
    //     0x7261e8: stur            w2, [x1, #0x37]
    // 0x7261ec: r3 = Instance_Duration
    //     0x7261ec: add             x3, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x7261f0: ldr             x3, [x3, #0x2c8]
    // 0x7261f4: StoreField: r1->field_3b = r3
    //     0x7261f4: stur            w3, [x1, #0x3b]
    // 0x7261f8: ldur            x3, [fp, #-0x38]
    // 0x7261fc: StoreField: r1->field_b = r3
    //     0x7261fc: stur            w3, [x1, #0xb]
    // 0x726200: r3 = false
    //     0x726200: add             x3, NULL, #0x30  ; false
    // 0x726204: StoreField: r1->field_13 = r3
    //     0x726204: stur            w3, [x1, #0x13]
    // 0x726208: r0 = ClipOval()
    //     0x726208: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x72620c: mov             x3, x0
    // 0x726210: r0 = Instance_Clip
    //     0x726210: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x726214: ldr             x0, [x0, #0xd38]
    // 0x726218: stur            x3, [fp, #-0x20]
    // 0x72621c: StoreField: r3->field_13 = r0
    //     0x72621c: stur            w0, [x3, #0x13]
    // 0x726220: ldur            x0, [fp, #-0x18]
    // 0x726224: StoreField: r3->field_b = r0
    //     0x726224: stur            w0, [x3, #0xb]
    // 0x726228: r1 = Null
    //     0x726228: mov             x1, NULL
    // 0x72622c: r2 = 10
    //     0x72622c: mov             x2, #0xa
    // 0x726230: r0 = AllocateArray()
    //     0x726230: bl              #0x9280a0  ; AllocateArrayStub
    // 0x726234: mov             x2, x0
    // 0x726238: ldur            x0, [fp, #-0x40]
    // 0x72623c: stur            x2, [fp, #-0x18]
    // 0x726240: StoreField: r2->field_f = r0
    //     0x726240: stur            w0, [x2, #0xf]
    // 0x726244: ldur            x0, [fp, #-0x48]
    // 0x726248: StoreField: r2->field_13 = r0
    //     0x726248: stur            w0, [x2, #0x13]
    // 0x72624c: ldur            x0, [fp, #-0x50]
    // 0x726250: ArrayStore: r2[0] = r0  ; List_4
    //     0x726250: stur            w0, [x2, #0x17]
    // 0x726254: ldur            x0, [fp, #-0x58]
    // 0x726258: StoreField: r2->field_1b = r0
    //     0x726258: stur            w0, [x2, #0x1b]
    // 0x72625c: ldur            x0, [fp, #-0x20]
    // 0x726260: StoreField: r2->field_1f = r0
    //     0x726260: stur            w0, [x2, #0x1f]
    // 0x726264: r1 = <Widget>
    //     0x726264: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x726268: r0 = AllocateGrowableArray()
    //     0x726268: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x72626c: mov             x1, x0
    // 0x726270: ldur            x0, [fp, #-0x18]
    // 0x726274: stur            x1, [fp, #-0x20]
    // 0x726278: StoreField: r1->field_f = r0
    //     0x726278: stur            w0, [x1, #0xf]
    // 0x72627c: r0 = 10
    //     0x72627c: mov             x0, #0xa
    // 0x726280: StoreField: r1->field_b = r0
    //     0x726280: stur            w0, [x1, #0xb]
    // 0x726284: r0 = Row()
    //     0x726284: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x726288: mov             x1, x0
    // 0x72628c: r0 = Instance_Axis
    //     0x72628c: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x726290: stur            x1, [fp, #-0x18]
    // 0x726294: StoreField: r1->field_f = r0
    //     0x726294: stur            w0, [x1, #0xf]
    // 0x726298: r0 = Instance_MainAxisAlignment
    //     0x726298: add             x0, PP, #0x1a, lsl #12  ; [pp+0x1ab38] Obj!MainAxisAlignment@a2a611
    //     0x72629c: ldr             x0, [x0, #0xb38]
    // 0x7262a0: StoreField: r1->field_13 = r0
    //     0x7262a0: stur            w0, [x1, #0x13]
    // 0x7262a4: r0 = Instance_MainAxisSize
    //     0x7262a4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7262a8: ldr             x0, [x0, #0x330]
    // 0x7262ac: ArrayStore: r1[0] = r0  ; List_4
    //     0x7262ac: stur            w0, [x1, #0x17]
    // 0x7262b0: r0 = Instance_CrossAxisAlignment
    //     0x7262b0: add             x0, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x7262b4: ldr             x0, [x0, #0x338]
    // 0x7262b8: StoreField: r1->field_1b = r0
    //     0x7262b8: stur            w0, [x1, #0x1b]
    // 0x7262bc: r0 = Instance_VerticalDirection
    //     0x7262bc: add             x0, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x7262c0: ldr             x0, [x0, #0x340]
    // 0x7262c4: StoreField: r1->field_23 = r0
    //     0x7262c4: stur            w0, [x1, #0x23]
    // 0x7262c8: r0 = Instance_Clip
    //     0x7262c8: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x7262cc: ldr             x0, [x0, #0x348]
    // 0x7262d0: StoreField: r1->field_2b = r0
    //     0x7262d0: stur            w0, [x1, #0x2b]
    // 0x7262d4: StoreField: r1->field_2f = rZR
    //     0x7262d4: stur            xzr, [x1, #0x2f]
    // 0x7262d8: ldur            x0, [fp, #-0x20]
    // 0x7262dc: StoreField: r1->field_b = r0
    //     0x7262dc: stur            w0, [x1, #0xb]
    // 0x7262e0: r0 = AppBar()
    //     0x7262e0: bl              #0x6cc740  ; AllocateAppBarStub -> AppBar (size=0x94)
    // 0x7262e4: stur            x0, [fp, #-0x20]
    // 0x7262e8: r16 = 0.000000
    //     0x7262e8: ldr             x16, [PP, #0x4ab0]  ; [pp+0x4ab0] 0
    // 0x7262ec: ldur            lr, [fp, #-0x30]
    // 0x7262f0: stp             lr, x16, [SP, #8]
    // 0x7262f4: ldur            x16, [fp, #-0x28]
    // 0x7262f8: str             x16, [SP]
    // 0x7262fc: mov             x1, x0
    // 0x726300: ldur            x2, [fp, #-0x18]
    // 0x726304: r4 = const [0, 0x5, 0x3, 0x2, backgroundColor, 0x4, elevation, 0x2, systemOverlayStyle, 0x3, null]
    //     0x726304: add             x4, PP, #0x20, lsl #12  ; [pp+0x204b0] List(11) [0, 0x5, 0x3, 0x2, "backgroundColor", 0x4, "elevation", 0x2, "systemOverlayStyle", 0x3, Null]
    //     0x726308: ldr             x4, [x4, #0x4b0]
    // 0x72630c: r0 = AppBar()
    //     0x72630c: bl              #0x6cc15c  ; [package:flutter/src/material/app_bar.dart] AppBar::AppBar
    // 0x726310: ldur            x1, [fp, #-8]
    // 0x726314: r0 = getBody()
    //     0x726314: bl              #0x726400  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::getBody
    // 0x726318: r1 = Null
    //     0x726318: mov             x1, NULL
    // 0x72631c: r2 = 2
    //     0x72631c: mov             x2, #2
    // 0x726320: stur            x0, [fp, #-8]
    // 0x726324: r0 = AllocateArray()
    //     0x726324: bl              #0x9280a0  ; AllocateArrayStub
    // 0x726328: mov             x2, x0
    // 0x72632c: ldur            x0, [fp, #-8]
    // 0x726330: stur            x2, [fp, #-0x18]
    // 0x726334: StoreField: r2->field_f = r0
    //     0x726334: stur            w0, [x2, #0xf]
    // 0x726338: r1 = <Widget>
    //     0x726338: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72633c: r0 = AllocateGrowableArray()
    //     0x72633c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x726340: mov             x1, x0
    // 0x726344: ldur            x0, [fp, #-0x18]
    // 0x726348: stur            x1, [fp, #-8]
    // 0x72634c: StoreField: r1->field_f = r0
    //     0x72634c: stur            w0, [x1, #0xf]
    // 0x726350: r0 = 2
    //     0x726350: mov             x0, #2
    // 0x726354: StoreField: r1->field_b = r0
    //     0x726354: stur            w0, [x1, #0xb]
    // 0x726358: r0 = Stack()
    //     0x726358: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x72635c: mov             x1, x0
    // 0x726360: r0 = Instance_AlignmentDirectional
    //     0x726360: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d28] Obj!AlignmentDirectional@a0cdd1
    //     0x726364: ldr             x0, [x0, #0xd28]
    // 0x726368: stur            x1, [fp, #-0x18]
    // 0x72636c: StoreField: r1->field_f = r0
    //     0x72636c: stur            w0, [x1, #0xf]
    // 0x726370: r0 = Instance_StackFit
    //     0x726370: add             x0, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x726374: ldr             x0, [x0, #0x548]
    // 0x726378: ArrayStore: r1[0] = r0  ; List_4
    //     0x726378: stur            w0, [x1, #0x17]
    // 0x72637c: r0 = Instance_Clip
    //     0x72637c: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x726380: ldr             x0, [x0, #0x2d8]
    // 0x726384: StoreField: r1->field_1b = r0
    //     0x726384: stur            w0, [x1, #0x1b]
    // 0x726388: ldur            x0, [fp, #-8]
    // 0x72638c: StoreField: r1->field_b = r0
    //     0x72638c: stur            w0, [x1, #0xb]
    // 0x726390: r0 = Scaffold()
    //     0x726390: bl              #0x6cbb34  ; AllocateScaffoldStub -> Scaffold (size=0x78)
    // 0x726394: ldur            x1, [fp, #-0x20]
    // 0x726398: ArrayStore: r0[0] = r1  ; List_4
    //     0x726398: stur            w1, [x0, #0x17]
    // 0x72639c: ldur            x1, [fp, #-0x18]
    // 0x7263a0: StoreField: r0->field_1b = r1
    //     0x7263a0: stur            w1, [x0, #0x1b]
    // 0x7263a4: r1 = Instance_AlignmentDirectional
    //     0x7263a4: add             x1, PP, #0x11, lsl #12  ; [pp+0x11350] Obj!AlignmentDirectional@a0cdf1
    //     0x7263a8: ldr             x1, [x1, #0x350]
    // 0x7263ac: StoreField: r0->field_2f = r1
    //     0x7263ac: stur            w1, [x0, #0x2f]
    // 0x7263b0: ldur            x1, [fp, #-0x10]
    // 0x7263b4: StoreField: r0->field_4f = r1
    //     0x7263b4: stur            w1, [x0, #0x4f]
    // 0x7263b8: r1 = true
    //     0x7263b8: add             x1, NULL, #0x20  ; true
    // 0x7263bc: StoreField: r0->field_5f = r1
    //     0x7263bc: stur            w1, [x0, #0x5f]
    // 0x7263c0: r2 = Instance_DragStartBehavior
    //     0x7263c0: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x7263c4: StoreField: r0->field_63 = r2
    //     0x7263c4: stur            w2, [x0, #0x63]
    // 0x7263c8: r2 = false
    //     0x7263c8: add             x2, NULL, #0x30  ; false
    // 0x7263cc: StoreField: r0->field_b = r2
    //     0x7263cc: stur            w2, [x0, #0xb]
    // 0x7263d0: StoreField: r0->field_f = r1
    //     0x7263d0: stur            w1, [x0, #0xf]
    // 0x7263d4: StoreField: r0->field_13 = r2
    //     0x7263d4: stur            w2, [x0, #0x13]
    // 0x7263d8: r2 = Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static.
    //     0x7263d8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11358] Closure: (BuildContext, Animation<double>) => Widget from Function '_defaultBottomSheetScrimBuilder@226420462': static. (0x7f22906967c8)
    //     0x7263dc: ldr             x2, [x2, #0x358]
    // 0x7263e0: StoreField: r0->field_4b = r2
    //     0x7263e0: stur            w2, [x0, #0x4b]
    // 0x7263e4: StoreField: r0->field_6b = r1
    //     0x7263e4: stur            w1, [x0, #0x6b]
    // 0x7263e8: StoreField: r0->field_6f = r1
    //     0x7263e8: stur            w1, [x0, #0x6f]
    // 0x7263ec: LeaveFrame
    //     0x7263ec: mov             SP, fp
    //     0x7263f0: ldp             fp, lr, [SP], #0x10
    // 0x7263f4: ret
    //     0x7263f4: ret             
    // 0x7263f8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7263f8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7263fc: b               #0x725da8
  }
  _ getBody(/* No info */) {
    // ** addr: 0x726400, size: 0xc68
    // 0x726400: EnterFrame
    //     0x726400: stp             fp, lr, [SP, #-0x10]!
    //     0x726404: mov             fp, SP
    // 0x726408: AllocStack(0x60)
    //     0x726408: sub             SP, SP, #0x60
    // 0x72640c: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x8 */)
    //     0x72640c: stur            x1, [fp, #-8]
    // 0x726410: CheckStackOverflow
    //     0x726410: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x726414: cmp             SP, x16
    //     0x726418: b.ls            #0x727048
    // 0x72641c: r1 = 1
    //     0x72641c: mov             x1, #1
    // 0x726420: r0 = AllocateContext()
    //     0x726420: bl              #0x927010  ; AllocateContextStub
    // 0x726424: mov             x3, x0
    // 0x726428: ldur            x0, [fp, #-8]
    // 0x72642c: stur            x3, [fp, #-0x10]
    // 0x726430: StoreField: r3->field_f = r0
    //     0x726430: stur            w0, [x3, #0xf]
    // 0x726434: r1 = <Widget>
    //     0x726434: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x726438: r2 = 0
    //     0x726438: mov             x2, #0
    // 0x72643c: r0 = _GrowableList()
    //     0x72643c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x726440: mov             x3, x0
    // 0x726444: ldur            x0, [fp, #-8]
    // 0x726448: stur            x3, [fp, #-0x20]
    // 0x72644c: ArrayLoad: r4 = r0[0]  ; List_8
    //     0x72644c: ldur            x4, [x0, #0x17]
    // 0x726450: stur            x4, [fp, #-0x18]
    // 0x726454: r17 = 10000
    //     0x726454: mov             x17, #0x2710
    // 0x726458: cmp             x4, x17
    // 0x72645c: b.eq            #0x7265b4
    // 0x726460: r1 = Null
    //     0x726460: mov             x1, NULL
    // 0x726464: r2 = 4
    //     0x726464: mov             x2, #4
    // 0x726468: r0 = AllocateArray()
    //     0x726468: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72646c: mov             x2, x0
    // 0x726470: r16 = "Hedefiniz: "
    //     0x726470: add             x16, PP, #0x20, lsl #12  ; [pp+0x206b0] "Hedefiniz: "
    //     0x726474: ldr             x16, [x16, #0x6b0]
    // 0x726478: StoreField: r2->field_f = r16
    //     0x726478: stur            w16, [x2, #0xf]
    // 0x72647c: ldur            x3, [fp, #-0x18]
    // 0x726480: r0 = BoxInt64Instr(r3)
    //     0x726480: sbfiz           x0, x3, #1, #0x1f
    //     0x726484: cmp             x3, x0, asr #1
    //     0x726488: b.eq            #0x726494
    //     0x72648c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x726490: stur            x3, [x0, #7]
    // 0x726494: StoreField: r2->field_13 = r0
    //     0x726494: stur            w0, [x2, #0x13]
    // 0x726498: str             x2, [SP]
    // 0x72649c: r0 = _interpolate()
    //     0x72649c: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x7264a0: stur            x0, [fp, #-0x28]
    // 0x7264a4: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x7264a4: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7264a8: ldr             x0, [x0, #0x2078]
    //     0x7264ac: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7264b0: cmp             w0, w16
    //     0x7264b4: b.ne            #0x7264c4
    //     0x7264b8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x7264bc: ldr             x2, [x2, #0x450]
    //     0x7264c0: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7264c4: stur            x0, [fp, #-0x30]
    // 0x7264c8: r0 = TextStyle()
    //     0x7264c8: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7264cc: mov             x1, x0
    // 0x7264d0: r0 = true
    //     0x7264d0: add             x0, NULL, #0x20  ; true
    // 0x7264d4: stur            x1, [fp, #-0x38]
    // 0x7264d8: StoreField: r1->field_7 = r0
    //     0x7264d8: stur            w0, [x1, #7]
    // 0x7264dc: ldur            x2, [fp, #-0x30]
    // 0x7264e0: StoreField: r1->field_b = r2
    //     0x7264e0: stur            w2, [x1, #0xb]
    // 0x7264e4: r2 = 30.000000
    //     0x7264e4: add             x2, PP, #0x17, lsl #12  ; [pp+0x17fe8] 30
    //     0x7264e8: ldr             x2, [x2, #0xfe8]
    // 0x7264ec: StoreField: r1->field_1f = r2
    //     0x7264ec: stur            w2, [x1, #0x1f]
    // 0x7264f0: r2 = Instance_FontWeight
    //     0x7264f0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7264f4: ldr             x2, [x2, #0x1d0]
    // 0x7264f8: StoreField: r1->field_23 = r2
    //     0x7264f8: stur            w2, [x1, #0x23]
    // 0x7264fc: r0 = Text()
    //     0x7264fc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x726500: mov             x1, x0
    // 0x726504: ldur            x0, [fp, #-0x28]
    // 0x726508: stur            x1, [fp, #-0x30]
    // 0x72650c: StoreField: r1->field_b = r0
    //     0x72650c: stur            w0, [x1, #0xb]
    // 0x726510: ldur            x0, [fp, #-0x38]
    // 0x726514: StoreField: r1->field_13 = r0
    //     0x726514: stur            w0, [x1, #0x13]
    // 0x726518: r0 = Padding()
    //     0x726518: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x72651c: mov             x2, x0
    // 0x726520: r0 = Instance_EdgeInsets
    //     0x726520: add             x0, PP, #0x20, lsl #12  ; [pp+0x206b8] Obj!EdgeInsets@a0c621
    //     0x726524: ldr             x0, [x0, #0x6b8]
    // 0x726528: stur            x2, [fp, #-0x28]
    // 0x72652c: StoreField: r2->field_f = r0
    //     0x72652c: stur            w0, [x2, #0xf]
    // 0x726530: ldur            x0, [fp, #-0x30]
    // 0x726534: StoreField: r2->field_b = r0
    //     0x726534: stur            w0, [x2, #0xb]
    // 0x726538: ldur            x0, [fp, #-0x20]
    // 0x72653c: LoadField: r1 = r0->field_b
    //     0x72653c: ldur            w1, [x0, #0xb]
    // 0x726540: LoadField: r3 = r0->field_f
    //     0x726540: ldur            w3, [x0, #0xf]
    // 0x726544: DecompressPointer r3
    //     0x726544: add             x3, x3, HEAP, lsl #32
    // 0x726548: LoadField: r4 = r3->field_b
    //     0x726548: ldur            w4, [x3, #0xb]
    // 0x72654c: r3 = LoadInt32Instr(r1)
    //     0x72654c: sbfx            x3, x1, #1, #0x1f
    // 0x726550: stur            x3, [fp, #-0x18]
    // 0x726554: r1 = LoadInt32Instr(r4)
    //     0x726554: sbfx            x1, x4, #1, #0x1f
    // 0x726558: cmp             x3, x1
    // 0x72655c: b.ne            #0x726568
    // 0x726560: mov             x1, x0
    // 0x726564: r0 = _growToNextCapacity()
    //     0x726564: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x726568: ldur            x2, [fp, #-0x20]
    // 0x72656c: ldur            x3, [fp, #-0x18]
    // 0x726570: add             x0, x3, #1
    // 0x726574: lsl             x1, x0, #1
    // 0x726578: StoreField: r2->field_b = r1
    //     0x726578: stur            w1, [x2, #0xb]
    // 0x72657c: LoadField: r1 = r2->field_f
    //     0x72657c: ldur            w1, [x2, #0xf]
    // 0x726580: DecompressPointer r1
    //     0x726580: add             x1, x1, HEAP, lsl #32
    // 0x726584: ldur            x0, [fp, #-0x28]
    // 0x726588: ArrayStore: r1[r3] = r0  ; List_4
    //     0x726588: add             x25, x1, x3, lsl #2
    //     0x72658c: add             x25, x25, #0xf
    //     0x726590: str             w0, [x25]
    //     0x726594: tbz             w0, #0, #0x7265b0
    //     0x726598: ldurb           w16, [x1, #-1]
    //     0x72659c: ldurb           w17, [x0, #-1]
    //     0x7265a0: and             x16, x17, x16, lsr #2
    //     0x7265a4: tst             x16, HEAP, lsr #32
    //     0x7265a8: b.eq            #0x7265b0
    //     0x7265ac: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x7265b0: b               #0x7265b8
    // 0x7265b4: mov             x2, x3
    // 0x7265b8: ldur            x0, [fp, #-8]
    // 0x7265bc: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x7265bc: ldur            x1, [x0, #0x17]
    // 0x7265c0: r17 = 10000
    //     0x7265c0: mov             x17, #0x2710
    // 0x7265c4: cmp             x1, x17
    // 0x7265c8: b.eq            #0x726628
    // 0x7265cc: LoadField: r1 = r2->field_b
    //     0x7265cc: ldur            w1, [x2, #0xb]
    // 0x7265d0: LoadField: r3 = r2->field_f
    //     0x7265d0: ldur            w3, [x2, #0xf]
    // 0x7265d4: DecompressPointer r3
    //     0x7265d4: add             x3, x3, HEAP, lsl #32
    // 0x7265d8: LoadField: r4 = r3->field_b
    //     0x7265d8: ldur            w4, [x3, #0xb]
    // 0x7265dc: r3 = LoadInt32Instr(r1)
    //     0x7265dc: sbfx            x3, x1, #1, #0x1f
    // 0x7265e0: stur            x3, [fp, #-0x18]
    // 0x7265e4: r1 = LoadInt32Instr(r4)
    //     0x7265e4: sbfx            x1, x4, #1, #0x1f
    // 0x7265e8: cmp             x3, x1
    // 0x7265ec: b.ne            #0x7265f8
    // 0x7265f0: mov             x1, x2
    // 0x7265f4: r0 = _growToNextCapacity()
    //     0x7265f4: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7265f8: ldur            x1, [fp, #-0x20]
    // 0x7265fc: ldur            x0, [fp, #-0x18]
    // 0x726600: add             x2, x0, #1
    // 0x726604: lsl             x3, x2, #1
    // 0x726608: StoreField: r1->field_b = r3
    //     0x726608: stur            w3, [x1, #0xb]
    // 0x72660c: LoadField: r2 = r1->field_f
    //     0x72660c: ldur            w2, [x1, #0xf]
    // 0x726610: DecompressPointer r2
    //     0x726610: add             x2, x2, HEAP, lsl #32
    // 0x726614: add             x3, x2, x0, lsl #2
    // 0x726618: r16 = Instance_SizedBox
    //     0x726618: add             x16, PP, #0x15, lsl #12  ; [pp+0x15470] Obj!SizedBox@a1fb71
    //     0x72661c: ldr             x16, [x16, #0x470]
    // 0x726620: StoreField: r3->field_f = r16
    //     0x726620: stur            w16, [x3, #0xf]
    // 0x726624: b               #0x72662c
    // 0x726628: mov             x1, x2
    // 0x72662c: ldur            x2, [fp, #-8]
    // 0x726630: ArrayLoad: r0 = r2[0]  ; List_8
    //     0x726630: ldur            x0, [x2, #0x17]
    // 0x726634: r17 = 10000
    //     0x726634: mov             x17, #0x2710
    // 0x726638: cmp             x0, x17
    // 0x72663c: b.eq            #0x726910
    // 0x726640: r0 = LoadStaticField(0x1034)
    //     0x726640: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x726644: ldr             x0, [x0, #0x2068]
    // 0x726648: r3 = 60
    //     0x726648: mov             x3, #0x3c
    // 0x72664c: branchIfSmi(r0, 0x726658)
    //     0x72664c: tbz             w0, #0, #0x726658
    // 0x726650: r3 = LoadClassIdInstr(r0)
    //     0x726650: ldur            x3, [x0, #-1]
    //     0x726654: ubfx            x3, x3, #0xc, #0x14
    // 0x726658: str             x0, [SP]
    // 0x72665c: mov             x0, x3
    // 0x726660: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x726660: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x726664: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x726664: mov             x17, #0x21f6
    //     0x726668: add             lr, x0, x17
    //     0x72666c: ldr             lr, [x21, lr, lsl #3]
    //     0x726670: blr             lr
    // 0x726674: stur            x0, [fp, #-0x28]
    // 0x726678: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x726678: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72667c: ldr             x0, [x0, #0x2078]
    //     0x726680: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x726684: cmp             w0, w16
    //     0x726688: b.ne            #0x726698
    //     0x72668c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x726690: ldr             x2, [x2, #0x450]
    //     0x726694: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x726698: stur            x0, [fp, #-0x30]
    // 0x72669c: r0 = TextStyle()
    //     0x72669c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7266a0: mov             x1, x0
    // 0x7266a4: r0 = true
    //     0x7266a4: add             x0, NULL, #0x20  ; true
    // 0x7266a8: stur            x1, [fp, #-0x38]
    // 0x7266ac: StoreField: r1->field_7 = r0
    //     0x7266ac: stur            w0, [x1, #7]
    // 0x7266b0: ldur            x2, [fp, #-0x30]
    // 0x7266b4: StoreField: r1->field_b = r2
    //     0x7266b4: stur            w2, [x1, #0xb]
    // 0x7266b8: r3 = 75.000000
    //     0x7266b8: add             x3, PP, #0x20, lsl #12  ; [pp+0x206c0] 75
    //     0x7266bc: ldr             x3, [x3, #0x6c0]
    // 0x7266c0: StoreField: r1->field_1f = r3
    //     0x7266c0: stur            w3, [x1, #0x1f]
    // 0x7266c4: r3 = Instance_FontWeight
    //     0x7266c4: add             x3, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7266c8: ldr             x3, [x3, #0x1d0]
    // 0x7266cc: StoreField: r1->field_23 = r3
    //     0x7266cc: stur            w3, [x1, #0x23]
    // 0x7266d0: r0 = Text()
    //     0x7266d0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7266d4: mov             x2, x0
    // 0x7266d8: ldur            x0, [fp, #-0x28]
    // 0x7266dc: stur            x2, [fp, #-0x40]
    // 0x7266e0: StoreField: r2->field_b = r0
    //     0x7266e0: stur            w0, [x2, #0xb]
    // 0x7266e4: ldur            x0, [fp, #-0x38]
    // 0x7266e8: StoreField: r2->field_13 = r0
    //     0x7266e8: stur            w0, [x2, #0x13]
    // 0x7266ec: ldur            x1, [fp, #-0x30]
    // 0x7266f0: r0 = LoadClassIdInstr(r1)
    //     0x7266f0: ldur            x0, [x1, #-1]
    //     0x7266f4: ubfx            x0, x0, #0xc, #0x14
    // 0x7266f8: r16 = 0.200000
    //     0x7266f8: add             x16, PP, #0x14, lsl #12  ; [pp+0x141f0] 0.2
    //     0x7266fc: ldr             x16, [x16, #0x1f0]
    // 0x726700: str             x16, [SP]
    // 0x726704: r4 = const [0, 0x2, 0x1, 0x1, alpha, 0x1, null]
    //     0x726704: add             x4, PP, #0x12, lsl #12  ; [pp+0x12198] List(7) [0, 0x2, 0x1, 0x1, "alpha", 0x1, Null]
    //     0x726708: ldr             x4, [x4, #0x198]
    // 0x72670c: r0 = GDT[cid_x0 + -0xfe8]()
    //     0x72670c: sub             lr, x0, #0xfe8
    //     0x726710: ldr             lr, [x21, lr, lsl #3]
    //     0x726714: blr             lr
    // 0x726718: stur            x0, [fp, #-0x30]
    // 0x72671c: r1 = LoadStaticField(0x103c)
    //     0x72671c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x726720: ldr             x1, [x1, #0x2078]
    // 0x726724: ldur            x2, [fp, #-8]
    // 0x726728: stur            x1, [fp, #-0x28]
    // 0x72672c: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x72672c: ldur            x3, [x2, #0x17]
    // 0x726730: r17 = 10000
    //     0x726730: mov             x17, #0x2710
    // 0x726734: cmp             x3, x17
    // 0x726738: b.ne            #0x726764
    // 0x72673c: d0 = 100.000000
    //     0x72673c: ldr             d0, [PP, #0x5c00]  ; [pp+0x5c00] IMM: double(100) from 0x4059000000000000
    // 0x726740: r3 = LoadStaticField(0x1034)
    //     0x726740: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x726744: ldr             x3, [x3, #0x2068]
    // 0x726748: r4 = LoadInt32Instr(r3)
    //     0x726748: sbfx            x4, x3, #1, #0x1f
    //     0x72674c: tbz             w3, #0, #0x726754
    //     0x726750: ldur            x4, [x3, #7]
    // 0x726754: scvtf           d1, x4
    // 0x726758: fdiv            d2, d1, d0
    // 0x72675c: mov             v0.16b, v2.16b
    // 0x726760: b               #0x726788
    // 0x726764: r4 = LoadStaticField(0x1034)
    //     0x726764: ldr             x4, [THR, #0x78]  ; THR::field_table_values
    //     0x726768: ldr             x4, [x4, #0x2068]
    // 0x72676c: r5 = LoadInt32Instr(r4)
    //     0x72676c: sbfx            x5, x4, #1, #0x1f
    //     0x726770: tbz             w4, #0, #0x726778
    //     0x726774: ldur            x5, [x4, #7]
    // 0x726778: scvtf           d0, x5
    // 0x72677c: scvtf           d1, x3
    // 0x726780: fdiv            d2, d0, d1
    // 0x726784: mov             v0.16b, v2.16b
    // 0x726788: ldur            x4, [fp, #-0x20]
    // 0x72678c: ldur            x3, [fp, #-0x40]
    // 0x726790: stur            d0, [fp, #-0x50]
    // 0x726794: r0 = CircularProgressIndicator()
    //     0x726794: bl              #0x6d15e8  ; AllocateCircularProgressIndicatorStub -> CircularProgressIndicator (size=0x48)
    // 0x726798: mov             x1, x0
    // 0x72679c: r0 = 10.000000
    //     0x72679c: ldr             x0, [PP, #0x6cc0]  ; [pp+0x6cc0] 10
    // 0x7267a0: stur            x1, [fp, #-0x38]
    // 0x7267a4: StoreField: r1->field_27 = r0
    //     0x7267a4: stur            w0, [x1, #0x27]
    // 0x7267a8: r0 = Instance__ActivityIndicatorType
    //     0x7267a8: add             x0, PP, #0x14, lsl #12  ; [pp+0x14f00] Obj!_ActivityIndicatorType@a2b551
    //     0x7267ac: ldr             x0, [x0, #0xf00]
    // 0x7267b0: StoreField: r1->field_23 = r0
    //     0x7267b0: stur            w0, [x1, #0x23]
    // 0x7267b4: ldur            d0, [fp, #-0x50]
    // 0x7267b8: r0 = inline_Allocate_Double()
    //     0x7267b8: ldp             x0, x2, [THR, #0x60]  ; THR::top
    //     0x7267bc: add             x0, x0, #0x10
    //     0x7267c0: cmp             x2, x0
    //     0x7267c4: b.ls            #0x727050
    //     0x7267c8: str             x0, [THR, #0x60]  ; THR::top
    //     0x7267cc: sub             x0, x0, #0xf
    //     0x7267d0: mov             x2, #0xe15c
    //     0x7267d4: movk            x2, #3, lsl #16
    //     0x7267d8: stur            x2, [x0, #-1]
    // 0x7267dc: StoreField: r0->field_7 = d0
    //     0x7267dc: stur            d0, [x0, #7]
    // 0x7267e0: StoreField: r1->field_b = r0
    //     0x7267e0: stur            w0, [x1, #0xb]
    // 0x7267e4: ldur            x0, [fp, #-0x30]
    // 0x7267e8: StoreField: r1->field_f = r0
    //     0x7267e8: stur            w0, [x1, #0xf]
    // 0x7267ec: ldur            x0, [fp, #-0x28]
    // 0x7267f0: StoreField: r1->field_13 = r0
    //     0x7267f0: stur            w0, [x1, #0x13]
    // 0x7267f4: r0 = SizedBox()
    //     0x7267f4: bl              #0x654794  ; AllocateSizedBoxStub -> SizedBox (size=0x18)
    // 0x7267f8: mov             x3, x0
    // 0x7267fc: r0 = 150.000000
    //     0x7267fc: add             x0, PP, #0x18, lsl #12  ; [pp+0x18658] 150
    //     0x726800: ldr             x0, [x0, #0x658]
    // 0x726804: stur            x3, [fp, #-0x28]
    // 0x726808: StoreField: r3->field_f = r0
    //     0x726808: stur            w0, [x3, #0xf]
    // 0x72680c: StoreField: r3->field_13 = r0
    //     0x72680c: stur            w0, [x3, #0x13]
    // 0x726810: ldur            x1, [fp, #-0x38]
    // 0x726814: StoreField: r3->field_b = r1
    //     0x726814: stur            w1, [x3, #0xb]
    // 0x726818: r1 = Null
    //     0x726818: mov             x1, NULL
    // 0x72681c: r2 = 4
    //     0x72681c: mov             x2, #4
    // 0x726820: r0 = AllocateArray()
    //     0x726820: bl              #0x9280a0  ; AllocateArrayStub
    // 0x726824: mov             x2, x0
    // 0x726828: ldur            x0, [fp, #-0x40]
    // 0x72682c: stur            x2, [fp, #-0x30]
    // 0x726830: StoreField: r2->field_f = r0
    //     0x726830: stur            w0, [x2, #0xf]
    // 0x726834: ldur            x0, [fp, #-0x28]
    // 0x726838: StoreField: r2->field_13 = r0
    //     0x726838: stur            w0, [x2, #0x13]
    // 0x72683c: r1 = <Widget>
    //     0x72683c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x726840: r0 = AllocateGrowableArray()
    //     0x726840: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x726844: mov             x1, x0
    // 0x726848: ldur            x0, [fp, #-0x30]
    // 0x72684c: stur            x1, [fp, #-0x28]
    // 0x726850: StoreField: r1->field_f = r0
    //     0x726850: stur            w0, [x1, #0xf]
    // 0x726854: r2 = 4
    //     0x726854: mov             x2, #4
    // 0x726858: StoreField: r1->field_b = r2
    //     0x726858: stur            w2, [x1, #0xb]
    // 0x72685c: r0 = Stack()
    //     0x72685c: bl              #0x651268  ; AllocateStackStub -> Stack (size=0x20)
    // 0x726860: mov             x2, x0
    // 0x726864: r0 = Instance_Alignment
    //     0x726864: add             x0, PP, #0x11, lsl #12  ; [pp+0x11060] Obj!Alignment@a0ce91
    //     0x726868: ldr             x0, [x0, #0x60]
    // 0x72686c: stur            x2, [fp, #-0x30]
    // 0x726870: StoreField: r2->field_f = r0
    //     0x726870: stur            w0, [x2, #0xf]
    // 0x726874: r0 = Instance_StackFit
    //     0x726874: add             x0, PP, #0x15, lsl #12  ; [pp+0x15548] Obj!StackFit@a2a351
    //     0x726878: ldr             x0, [x0, #0x548]
    // 0x72687c: ArrayStore: r2[0] = r0  ; List_4
    //     0x72687c: stur            w0, [x2, #0x17]
    // 0x726880: r0 = Instance_Clip
    //     0x726880: add             x0, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x726884: ldr             x0, [x0, #0x2d8]
    // 0x726888: StoreField: r2->field_1b = r0
    //     0x726888: stur            w0, [x2, #0x1b]
    // 0x72688c: ldur            x1, [fp, #-0x28]
    // 0x726890: StoreField: r2->field_b = r1
    //     0x726890: stur            w1, [x2, #0xb]
    // 0x726894: ldur            x3, [fp, #-0x20]
    // 0x726898: LoadField: r1 = r3->field_b
    //     0x726898: ldur            w1, [x3, #0xb]
    // 0x72689c: LoadField: r4 = r3->field_f
    //     0x72689c: ldur            w4, [x3, #0xf]
    // 0x7268a0: DecompressPointer r4
    //     0x7268a0: add             x4, x4, HEAP, lsl #32
    // 0x7268a4: LoadField: r5 = r4->field_b
    //     0x7268a4: ldur            w5, [x4, #0xb]
    // 0x7268a8: r4 = LoadInt32Instr(r1)
    //     0x7268a8: sbfx            x4, x1, #1, #0x1f
    // 0x7268ac: stur            x4, [fp, #-0x18]
    // 0x7268b0: r1 = LoadInt32Instr(r5)
    //     0x7268b0: sbfx            x1, x5, #1, #0x1f
    // 0x7268b4: cmp             x4, x1
    // 0x7268b8: b.ne            #0x7268c4
    // 0x7268bc: mov             x1, x3
    // 0x7268c0: r0 = _growToNextCapacity()
    //     0x7268c0: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x7268c4: ldur            x2, [fp, #-0x20]
    // 0x7268c8: ldur            x3, [fp, #-0x18]
    // 0x7268cc: add             x0, x3, #1
    // 0x7268d0: lsl             x1, x0, #1
    // 0x7268d4: StoreField: r2->field_b = r1
    //     0x7268d4: stur            w1, [x2, #0xb]
    // 0x7268d8: LoadField: r1 = r2->field_f
    //     0x7268d8: ldur            w1, [x2, #0xf]
    // 0x7268dc: DecompressPointer r1
    //     0x7268dc: add             x1, x1, HEAP, lsl #32
    // 0x7268e0: ldur            x0, [fp, #-0x30]
    // 0x7268e4: ArrayStore: r1[r3] = r0  ; List_4
    //     0x7268e4: add             x25, x1, x3, lsl #2
    //     0x7268e8: add             x25, x25, #0xf
    //     0x7268ec: str             w0, [x25]
    //     0x7268f0: tbz             w0, #0, #0x72690c
    //     0x7268f4: ldurb           w16, [x1, #-1]
    //     0x7268f8: ldurb           w17, [x0, #-1]
    //     0x7268fc: and             x16, x17, x16, lsr #2
    //     0x726900: tst             x16, HEAP, lsr #32
    //     0x726904: b.eq            #0x72690c
    //     0x726908: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x72690c: b               #0x726914
    // 0x726910: mov             x2, x1
    // 0x726914: ldur            x0, [fp, #-8]
    // 0x726918: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x726918: ldur            x1, [x0, #0x17]
    // 0x72691c: r17 = 10000
    //     0x72691c: mov             x17, #0x2710
    // 0x726920: cmp             x1, x17
    // 0x726924: b.ne            #0x726a4c
    // 0x726928: r0 = LoadStaticField(0x1034)
    //     0x726928: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72692c: ldr             x0, [x0, #0x2068]
    // 0x726930: r1 = 60
    //     0x726930: mov             x1, #0x3c
    // 0x726934: branchIfSmi(r0, 0x726940)
    //     0x726934: tbz             w0, #0, #0x726940
    // 0x726938: r1 = LoadClassIdInstr(r0)
    //     0x726938: ldur            x1, [x0, #-1]
    //     0x72693c: ubfx            x1, x1, #0xc, #0x14
    // 0x726940: str             x0, [SP]
    // 0x726944: mov             x0, x1
    // 0x726948: r4 = const [0, 0x1, 0x1, 0x1, null]
    //     0x726948: ldr             x4, [PP, #0x358]  ; [pp+0x358] List(5) [0, 0x1, 0x1, 0x1, Null]
    // 0x72694c: r0 = GDT[cid_x0 + 0x21f6]()
    //     0x72694c: mov             x17, #0x21f6
    //     0x726950: add             lr, x0, x17
    //     0x726954: ldr             lr, [x21, lr, lsl #3]
    //     0x726958: blr             lr
    // 0x72695c: stur            x0, [fp, #-8]
    // 0x726960: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x726960: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x726964: ldr             x0, [x0, #0x2078]
    //     0x726968: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x72696c: cmp             w0, w16
    //     0x726970: b.ne            #0x726980
    //     0x726974: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x726978: ldr             x2, [x2, #0x450]
    //     0x72697c: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x726980: stur            x0, [fp, #-0x28]
    // 0x726984: r0 = TextStyle()
    //     0x726984: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x726988: mov             x1, x0
    // 0x72698c: r0 = true
    //     0x72698c: add             x0, NULL, #0x20  ; true
    // 0x726990: stur            x1, [fp, #-0x30]
    // 0x726994: StoreField: r1->field_7 = r0
    //     0x726994: stur            w0, [x1, #7]
    // 0x726998: ldur            x2, [fp, #-0x28]
    // 0x72699c: StoreField: r1->field_b = r2
    //     0x72699c: stur            w2, [x1, #0xb]
    // 0x7269a0: r2 = 150.000000
    //     0x7269a0: add             x2, PP, #0x18, lsl #12  ; [pp+0x18658] 150
    //     0x7269a4: ldr             x2, [x2, #0x658]
    // 0x7269a8: StoreField: r1->field_1f = r2
    //     0x7269a8: stur            w2, [x1, #0x1f]
    // 0x7269ac: r2 = Instance_FontWeight
    //     0x7269ac: add             x2, PP, #0x12, lsl #12  ; [pp+0x121d0] Obj!FontWeight@a20fc1
    //     0x7269b0: ldr             x2, [x2, #0x1d0]
    // 0x7269b4: StoreField: r1->field_23 = r2
    //     0x7269b4: stur            w2, [x1, #0x23]
    // 0x7269b8: r0 = Text()
    //     0x7269b8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7269bc: mov             x2, x0
    // 0x7269c0: ldur            x0, [fp, #-8]
    // 0x7269c4: stur            x2, [fp, #-0x28]
    // 0x7269c8: StoreField: r2->field_b = r0
    //     0x7269c8: stur            w0, [x2, #0xb]
    // 0x7269cc: ldur            x0, [fp, #-0x30]
    // 0x7269d0: StoreField: r2->field_13 = r0
    //     0x7269d0: stur            w0, [x2, #0x13]
    // 0x7269d4: ldur            x0, [fp, #-0x20]
    // 0x7269d8: LoadField: r1 = r0->field_b
    //     0x7269d8: ldur            w1, [x0, #0xb]
    // 0x7269dc: LoadField: r3 = r0->field_f
    //     0x7269dc: ldur            w3, [x0, #0xf]
    // 0x7269e0: DecompressPointer r3
    //     0x7269e0: add             x3, x3, HEAP, lsl #32
    // 0x7269e4: LoadField: r4 = r3->field_b
    //     0x7269e4: ldur            w4, [x3, #0xb]
    // 0x7269e8: r3 = LoadInt32Instr(r1)
    //     0x7269e8: sbfx            x3, x1, #1, #0x1f
    // 0x7269ec: stur            x3, [fp, #-0x18]
    // 0x7269f0: r1 = LoadInt32Instr(r4)
    //     0x7269f0: sbfx            x1, x4, #1, #0x1f
    // 0x7269f4: cmp             x3, x1
    // 0x7269f8: b.ne            #0x726a04
    // 0x7269fc: mov             x1, x0
    // 0x726a00: r0 = _growToNextCapacity()
    //     0x726a00: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x726a04: ldur            x2, [fp, #-0x20]
    // 0x726a08: ldur            x3, [fp, #-0x18]
    // 0x726a0c: add             x0, x3, #1
    // 0x726a10: lsl             x1, x0, #1
    // 0x726a14: StoreField: r2->field_b = r1
    //     0x726a14: stur            w1, [x2, #0xb]
    // 0x726a18: LoadField: r1 = r2->field_f
    //     0x726a18: ldur            w1, [x2, #0xf]
    // 0x726a1c: DecompressPointer r1
    //     0x726a1c: add             x1, x1, HEAP, lsl #32
    // 0x726a20: ldur            x0, [fp, #-0x28]
    // 0x726a24: ArrayStore: r1[r3] = r0  ; List_4
    //     0x726a24: add             x25, x1, x3, lsl #2
    //     0x726a28: add             x25, x25, #0xf
    //     0x726a2c: str             w0, [x25]
    //     0x726a30: tbz             w0, #0, #0x726a4c
    //     0x726a34: ldurb           w16, [x1, #-1]
    //     0x726a38: ldurb           w17, [x0, #-1]
    //     0x726a3c: and             x16, x17, x16, lsr #2
    //     0x726a40: tst             x16, HEAP, lsr #32
    //     0x726a44: b.eq            #0x726a4c
    //     0x726a48: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x726a4c: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x726a4c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x726a50: ldr             x0, [x0, #0x2078]
    //     0x726a54: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x726a58: cmp             w0, w16
    //     0x726a5c: b.ne            #0x726a6c
    //     0x726a60: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x726a64: ldr             x2, [x2, #0x450]
    //     0x726a68: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x726a6c: stur            x0, [fp, #-8]
    // 0x726a70: r0 = InkWell()
    //     0x726a70: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x726a74: mov             x3, x0
    // 0x726a78: r0 = Instance_SizedBox
    //     0x726a78: add             x0, PP, #0x20, lsl #12  ; [pp+0x206c8] Obj!SizedBox@a1fcd1
    //     0x726a7c: ldr             x0, [x0, #0x6c8]
    // 0x726a80: stur            x3, [fp, #-0x28]
    // 0x726a84: StoreField: r3->field_b = r0
    //     0x726a84: stur            w0, [x3, #0xb]
    // 0x726a88: ldur            x2, [fp, #-0x10]
    // 0x726a8c: r1 = Function '<anonymous closure>':.
    //     0x726a8c: add             x1, PP, #0x20, lsl #12  ; [pp+0x206d0] AnonymousClosure: (0x7275f8), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::getBody (0x726400)
    //     0x726a90: ldr             x1, [x1, #0x6d0]
    // 0x726a94: r0 = AllocateClosure()
    //     0x726a94: bl              #0x9273d4  ; AllocateClosureStub
    // 0x726a98: mov             x1, x0
    // 0x726a9c: ldur            x0, [fp, #-0x28]
    // 0x726aa0: StoreField: r0->field_f = r1
    //     0x726aa0: stur            w1, [x0, #0xf]
    // 0x726aa4: r1 = true
    //     0x726aa4: add             x1, NULL, #0x20  ; true
    // 0x726aa8: StoreField: r0->field_47 = r1
    //     0x726aa8: stur            w1, [x0, #0x47]
    // 0x726aac: r2 = Instance_BoxShape
    //     0x726aac: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x726ab0: ldr             x2, [x2, #0x1c8]
    // 0x726ab4: StoreField: r0->field_4b = r2
    //     0x726ab4: stur            w2, [x0, #0x4b]
    // 0x726ab8: ldur            x3, [fp, #-8]
    // 0x726abc: StoreField: r0->field_6b = r3
    //     0x726abc: stur            w3, [x0, #0x6b]
    // 0x726ac0: StoreField: r0->field_73 = r1
    //     0x726ac0: stur            w1, [x0, #0x73]
    // 0x726ac4: r4 = false
    //     0x726ac4: add             x4, NULL, #0x30  ; false
    // 0x726ac8: StoreField: r0->field_77 = r4
    //     0x726ac8: stur            w4, [x0, #0x77]
    // 0x726acc: StoreField: r0->field_87 = r1
    //     0x726acc: stur            w1, [x0, #0x87]
    // 0x726ad0: StoreField: r0->field_7f = r4
    //     0x726ad0: stur            w4, [x0, #0x7f]
    // 0x726ad4: r0 = Material()
    //     0x726ad4: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x726ad8: mov             x1, x0
    // 0x726adc: r0 = Instance_MaterialType
    //     0x726adc: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x726ae0: ldr             x0, [x0, #0xfa0]
    // 0x726ae4: stur            x1, [fp, #-0x30]
    // 0x726ae8: StoreField: r1->field_f = r0
    //     0x726ae8: stur            w0, [x1, #0xf]
    // 0x726aec: ArrayStore: r1[0] = rZR  ; List_8
    //     0x726aec: stur            xzr, [x1, #0x17]
    // 0x726af0: ldur            x2, [fp, #-8]
    // 0x726af4: StoreField: r1->field_1f = r2
    //     0x726af4: stur            w2, [x1, #0x1f]
    // 0x726af8: r2 = true
    //     0x726af8: add             x2, NULL, #0x20  ; true
    // 0x726afc: StoreField: r1->field_33 = r2
    //     0x726afc: stur            w2, [x1, #0x33]
    // 0x726b00: r3 = Instance_Clip
    //     0x726b00: add             x3, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726b04: ldr             x3, [x3, #0x348]
    // 0x726b08: StoreField: r1->field_37 = r3
    //     0x726b08: stur            w3, [x1, #0x37]
    // 0x726b0c: r4 = Instance_Duration
    //     0x726b0c: add             x4, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x726b10: ldr             x4, [x4, #0x2c8]
    // 0x726b14: StoreField: r1->field_3b = r4
    //     0x726b14: stur            w4, [x1, #0x3b]
    // 0x726b18: ldur            x5, [fp, #-0x28]
    // 0x726b1c: StoreField: r1->field_b = r5
    //     0x726b1c: stur            w5, [x1, #0xb]
    // 0x726b20: r5 = false
    //     0x726b20: add             x5, NULL, #0x30  ; false
    // 0x726b24: StoreField: r1->field_13 = r5
    //     0x726b24: stur            w5, [x1, #0x13]
    // 0x726b28: r0 = ClipOval()
    //     0x726b28: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x726b2c: mov             x1, x0
    // 0x726b30: r0 = Instance_Clip
    //     0x726b30: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x726b34: ldr             x0, [x0, #0xd38]
    // 0x726b38: stur            x1, [fp, #-8]
    // 0x726b3c: StoreField: r1->field_13 = r0
    //     0x726b3c: stur            w0, [x1, #0x13]
    // 0x726b40: ldur            x2, [fp, #-0x30]
    // 0x726b44: StoreField: r1->field_b = r2
    //     0x726b44: stur            w2, [x1, #0xb]
    // 0x726b48: r0 = GestureDetector()
    //     0x726b48: bl              #0x658e60  ; AllocateGestureDetectorStub -> GestureDetector (size=0x10c)
    // 0x726b4c: ldur            x2, [fp, #-0x10]
    // 0x726b50: r1 = Function '<anonymous closure>':.
    //     0x726b50: add             x1, PP, #0x20, lsl #12  ; [pp+0x206d8] AnonymousClosure: (0x7275f8), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::getBody (0x726400)
    //     0x726b54: ldr             x1, [x1, #0x6d8]
    // 0x726b58: stur            x0, [fp, #-0x28]
    // 0x726b5c: r0 = AllocateClosure()
    //     0x726b5c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x726b60: ldur            x16, [fp, #-8]
    // 0x726b64: stp             x16, x0, [SP]
    // 0x726b68: ldur            x1, [fp, #-0x28]
    // 0x726b6c: r4 = const [0, 0x3, 0x2, 0x1, child, 0x2, onTap, 0x1, null]
    //     0x726b6c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14d50] List(9) [0, 0x3, 0x2, 0x1, "child", 0x2, "onTap", 0x1, Null]
    //     0x726b70: ldr             x4, [x4, #0xd50]
    // 0x726b74: r0 = GestureDetector()
    //     0x726b74: bl              #0x6582a4  ; [package:flutter/src/widgets/gesture_detector.dart] GestureDetector::GestureDetector
    // 0x726b78: r0 = Padding()
    //     0x726b78: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x726b7c: mov             x1, x0
    // 0x726b80: r0 = Instance_EdgeInsets
    //     0x726b80: add             x0, PP, #0x20, lsl #12  ; [pp+0x206e0] Obj!EdgeInsets@a0c5f1
    //     0x726b84: ldr             x0, [x0, #0x6e0]
    // 0x726b88: stur            x1, [fp, #-0x30]
    // 0x726b8c: StoreField: r1->field_f = r0
    //     0x726b8c: stur            w0, [x1, #0xf]
    // 0x726b90: ldur            x0, [fp, #-0x28]
    // 0x726b94: StoreField: r1->field_b = r0
    //     0x726b94: stur            w0, [x1, #0xb]
    // 0x726b98: r0 = LoadStaticField(0x103c)
    //     0x726b98: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x726b9c: ldr             x0, [x0, #0x2078]
    // 0x726ba0: stur            x0, [fp, #-8]
    // 0x726ba4: r0 = InkWell()
    //     0x726ba4: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x726ba8: mov             x3, x0
    // 0x726bac: r0 = Instance_SizedBox
    //     0x726bac: add             x0, PP, #0x20, lsl #12  ; [pp+0x206e8] Obj!SizedBox@a1fcb1
    //     0x726bb0: ldr             x0, [x0, #0x6e8]
    // 0x726bb4: stur            x3, [fp, #-0x28]
    // 0x726bb8: StoreField: r3->field_b = r0
    //     0x726bb8: stur            w0, [x3, #0xb]
    // 0x726bbc: ldur            x2, [fp, #-0x10]
    // 0x726bc0: r1 = Function '<anonymous closure>':.
    //     0x726bc0: add             x1, PP, #0x20, lsl #12  ; [pp+0x206f0] AnonymousClosure: (0x727278), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::getBody (0x726400)
    //     0x726bc4: ldr             x1, [x1, #0x6f0]
    // 0x726bc8: r0 = AllocateClosure()
    //     0x726bc8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x726bcc: mov             x1, x0
    // 0x726bd0: ldur            x0, [fp, #-0x28]
    // 0x726bd4: StoreField: r0->field_f = r1
    //     0x726bd4: stur            w1, [x0, #0xf]
    // 0x726bd8: r1 = true
    //     0x726bd8: add             x1, NULL, #0x20  ; true
    // 0x726bdc: StoreField: r0->field_47 = r1
    //     0x726bdc: stur            w1, [x0, #0x47]
    // 0x726be0: r2 = Instance_BoxShape
    //     0x726be0: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x726be4: ldr             x2, [x2, #0x1c8]
    // 0x726be8: StoreField: r0->field_4b = r2
    //     0x726be8: stur            w2, [x0, #0x4b]
    // 0x726bec: ldur            x3, [fp, #-8]
    // 0x726bf0: StoreField: r0->field_6b = r3
    //     0x726bf0: stur            w3, [x0, #0x6b]
    // 0x726bf4: StoreField: r0->field_73 = r1
    //     0x726bf4: stur            w1, [x0, #0x73]
    // 0x726bf8: r4 = false
    //     0x726bf8: add             x4, NULL, #0x30  ; false
    // 0x726bfc: StoreField: r0->field_77 = r4
    //     0x726bfc: stur            w4, [x0, #0x77]
    // 0x726c00: StoreField: r0->field_87 = r1
    //     0x726c00: stur            w1, [x0, #0x87]
    // 0x726c04: StoreField: r0->field_7f = r4
    //     0x726c04: stur            w4, [x0, #0x7f]
    // 0x726c08: r0 = Material()
    //     0x726c08: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x726c0c: mov             x1, x0
    // 0x726c10: r0 = Instance_MaterialType
    //     0x726c10: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x726c14: ldr             x0, [x0, #0xfa0]
    // 0x726c18: stur            x1, [fp, #-0x38]
    // 0x726c1c: StoreField: r1->field_f = r0
    //     0x726c1c: stur            w0, [x1, #0xf]
    // 0x726c20: ArrayStore: r1[0] = rZR  ; List_8
    //     0x726c20: stur            xzr, [x1, #0x17]
    // 0x726c24: ldur            x2, [fp, #-8]
    // 0x726c28: StoreField: r1->field_1f = r2
    //     0x726c28: stur            w2, [x1, #0x1f]
    // 0x726c2c: r2 = true
    //     0x726c2c: add             x2, NULL, #0x20  ; true
    // 0x726c30: StoreField: r1->field_33 = r2
    //     0x726c30: stur            w2, [x1, #0x33]
    // 0x726c34: r3 = Instance_Clip
    //     0x726c34: add             x3, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726c38: ldr             x3, [x3, #0x348]
    // 0x726c3c: StoreField: r1->field_37 = r3
    //     0x726c3c: stur            w3, [x1, #0x37]
    // 0x726c40: r4 = Instance_Duration
    //     0x726c40: add             x4, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x726c44: ldr             x4, [x4, #0x2c8]
    // 0x726c48: StoreField: r1->field_3b = r4
    //     0x726c48: stur            w4, [x1, #0x3b]
    // 0x726c4c: ldur            x5, [fp, #-0x28]
    // 0x726c50: StoreField: r1->field_b = r5
    //     0x726c50: stur            w5, [x1, #0xb]
    // 0x726c54: r5 = false
    //     0x726c54: add             x5, NULL, #0x30  ; false
    // 0x726c58: StoreField: r1->field_13 = r5
    //     0x726c58: stur            w5, [x1, #0x13]
    // 0x726c5c: r0 = ClipOval()
    //     0x726c5c: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x726c60: mov             x1, x0
    // 0x726c64: r0 = Instance_Clip
    //     0x726c64: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x726c68: ldr             x0, [x0, #0xd38]
    // 0x726c6c: stur            x1, [fp, #-8]
    // 0x726c70: StoreField: r1->field_13 = r0
    //     0x726c70: stur            w0, [x1, #0x13]
    // 0x726c74: ldur            x2, [fp, #-0x38]
    // 0x726c78: StoreField: r1->field_b = r2
    //     0x726c78: stur            w2, [x1, #0xb]
    // 0x726c7c: r0 = Padding()
    //     0x726c7c: bl              #0x650b94  ; AllocatePaddingStub -> Padding (size=0x14)
    // 0x726c80: mov             x3, x0
    // 0x726c84: r0 = Instance_EdgeInsets
    //     0x726c84: add             x0, PP, #0x20, lsl #12  ; [pp+0x206f8] Obj!EdgeInsets@a0c5c1
    //     0x726c88: ldr             x0, [x0, #0x6f8]
    // 0x726c8c: stur            x3, [fp, #-0x28]
    // 0x726c90: StoreField: r3->field_f = r0
    //     0x726c90: stur            w0, [x3, #0xf]
    // 0x726c94: ldur            x0, [fp, #-8]
    // 0x726c98: StoreField: r3->field_b = r0
    //     0x726c98: stur            w0, [x3, #0xb]
    // 0x726c9c: r1 = Null
    //     0x726c9c: mov             x1, NULL
    // 0x726ca0: r2 = 4
    //     0x726ca0: mov             x2, #4
    // 0x726ca4: r0 = AllocateArray()
    //     0x726ca4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x726ca8: mov             x2, x0
    // 0x726cac: ldur            x0, [fp, #-0x30]
    // 0x726cb0: stur            x2, [fp, #-8]
    // 0x726cb4: StoreField: r2->field_f = r0
    //     0x726cb4: stur            w0, [x2, #0xf]
    // 0x726cb8: ldur            x0, [fp, #-0x28]
    // 0x726cbc: StoreField: r2->field_13 = r0
    //     0x726cbc: stur            w0, [x2, #0x13]
    // 0x726cc0: r1 = <Widget>
    //     0x726cc0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x726cc4: r0 = AllocateGrowableArray()
    //     0x726cc4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x726cc8: mov             x1, x0
    // 0x726ccc: ldur            x0, [fp, #-8]
    // 0x726cd0: stur            x1, [fp, #-0x28]
    // 0x726cd4: StoreField: r1->field_f = r0
    //     0x726cd4: stur            w0, [x1, #0xf]
    // 0x726cd8: r0 = 4
    //     0x726cd8: mov             x0, #4
    // 0x726cdc: StoreField: r1->field_b = r0
    //     0x726cdc: stur            w0, [x1, #0xb]
    // 0x726ce0: r0 = Row()
    //     0x726ce0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x726ce4: mov             x2, x0
    // 0x726ce8: r0 = Instance_Axis
    //     0x726ce8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x726cec: stur            x2, [fp, #-8]
    // 0x726cf0: StoreField: r2->field_f = r0
    //     0x726cf0: stur            w0, [x2, #0xf]
    // 0x726cf4: r1 = Instance_MainAxisAlignment
    //     0x726cf4: add             x1, PP, #0x14, lsl #12  ; [pp+0x14d20] Obj!MainAxisAlignment@a2a691
    //     0x726cf8: ldr             x1, [x1, #0xd20]
    // 0x726cfc: StoreField: r2->field_13 = r1
    //     0x726cfc: stur            w1, [x2, #0x13]
    // 0x726d00: r3 = Instance_MainAxisSize
    //     0x726d00: add             x3, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x726d04: ldr             x3, [x3, #0x330]
    // 0x726d08: ArrayStore: r2[0] = r3  ; List_4
    //     0x726d08: stur            w3, [x2, #0x17]
    // 0x726d0c: r4 = Instance_CrossAxisAlignment
    //     0x726d0c: add             x4, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x726d10: ldr             x4, [x4, #0x338]
    // 0x726d14: StoreField: r2->field_1b = r4
    //     0x726d14: stur            w4, [x2, #0x1b]
    // 0x726d18: r5 = Instance_VerticalDirection
    //     0x726d18: add             x5, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x726d1c: ldr             x5, [x5, #0x340]
    // 0x726d20: StoreField: r2->field_23 = r5
    //     0x726d20: stur            w5, [x2, #0x23]
    // 0x726d24: r6 = Instance_Clip
    //     0x726d24: add             x6, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726d28: ldr             x6, [x6, #0x348]
    // 0x726d2c: StoreField: r2->field_2b = r6
    //     0x726d2c: stur            w6, [x2, #0x2b]
    // 0x726d30: StoreField: r2->field_2f = rZR
    //     0x726d30: stur            xzr, [x2, #0x2f]
    // 0x726d34: ldur            x1, [fp, #-0x28]
    // 0x726d38: StoreField: r2->field_b = r1
    //     0x726d38: stur            w1, [x2, #0xb]
    // 0x726d3c: ldur            x7, [fp, #-0x20]
    // 0x726d40: LoadField: r1 = r7->field_b
    //     0x726d40: ldur            w1, [x7, #0xb]
    // 0x726d44: LoadField: r8 = r7->field_f
    //     0x726d44: ldur            w8, [x7, #0xf]
    // 0x726d48: DecompressPointer r8
    //     0x726d48: add             x8, x8, HEAP, lsl #32
    // 0x726d4c: LoadField: r9 = r8->field_b
    //     0x726d4c: ldur            w9, [x8, #0xb]
    // 0x726d50: r8 = LoadInt32Instr(r1)
    //     0x726d50: sbfx            x8, x1, #1, #0x1f
    // 0x726d54: stur            x8, [fp, #-0x18]
    // 0x726d58: r1 = LoadInt32Instr(r9)
    //     0x726d58: sbfx            x1, x9, #1, #0x1f
    // 0x726d5c: cmp             x8, x1
    // 0x726d60: b.ne            #0x726d6c
    // 0x726d64: mov             x1, x7
    // 0x726d68: r0 = _growToNextCapacity()
    //     0x726d68: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x726d6c: ldur            x2, [fp, #-0x20]
    // 0x726d70: ldur            x3, [fp, #-0x18]
    // 0x726d74: add             x4, x3, #1
    // 0x726d78: stur            x4, [fp, #-0x48]
    // 0x726d7c: lsl             x0, x4, #1
    // 0x726d80: StoreField: r2->field_b = r0
    //     0x726d80: stur            w0, [x2, #0xb]
    // 0x726d84: LoadField: r5 = r2->field_f
    //     0x726d84: ldur            w5, [x2, #0xf]
    // 0x726d88: DecompressPointer r5
    //     0x726d88: add             x5, x5, HEAP, lsl #32
    // 0x726d8c: mov             x1, x5
    // 0x726d90: ldur            x0, [fp, #-8]
    // 0x726d94: stur            x5, [fp, #-0x28]
    // 0x726d98: ArrayStore: r1[r3] = r0  ; List_4
    //     0x726d98: add             x25, x1, x3, lsl #2
    //     0x726d9c: add             x25, x25, #0xf
    //     0x726da0: str             w0, [x25]
    //     0x726da4: tbz             w0, #0, #0x726dc0
    //     0x726da8: ldurb           w16, [x1, #-1]
    //     0x726dac: ldurb           w17, [x0, #-1]
    //     0x726db0: and             x16, x17, x16, lsr #2
    //     0x726db4: tst             x16, HEAP, lsr #32
    //     0x726db8: b.eq            #0x726dc0
    //     0x726dbc: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x726dc0: r0 = LoadStaticField(0x103c)
    //     0x726dc0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x726dc4: ldr             x0, [x0, #0x2078]
    // 0x726dc8: stur            x0, [fp, #-8]
    // 0x726dcc: r0 = InkWell()
    //     0x726dcc: bl              #0x666a58  ; AllocateInkWellStub -> InkWell (size=0x94)
    // 0x726dd0: mov             x3, x0
    // 0x726dd4: r0 = Instance_SizedBox
    //     0x726dd4: add             x0, PP, #0x20, lsl #12  ; [pp+0x20700] Obj!SizedBox@a1fc91
    //     0x726dd8: ldr             x0, [x0, #0x700]
    // 0x726ddc: stur            x3, [fp, #-0x30]
    // 0x726de0: StoreField: r3->field_b = r0
    //     0x726de0: stur            w0, [x3, #0xb]
    // 0x726de4: ldur            x2, [fp, #-0x10]
    // 0x726de8: r1 = Function '<anonymous closure>':.
    //     0x726de8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20708] AnonymousClosure: (0x727068), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::getBody (0x726400)
    //     0x726dec: ldr             x1, [x1, #0x708]
    // 0x726df0: r0 = AllocateClosure()
    //     0x726df0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x726df4: mov             x1, x0
    // 0x726df8: ldur            x0, [fp, #-0x30]
    // 0x726dfc: StoreField: r0->field_f = r1
    //     0x726dfc: stur            w1, [x0, #0xf]
    // 0x726e00: r1 = true
    //     0x726e00: add             x1, NULL, #0x20  ; true
    // 0x726e04: StoreField: r0->field_47 = r1
    //     0x726e04: stur            w1, [x0, #0x47]
    // 0x726e08: r2 = Instance_BoxShape
    //     0x726e08: add             x2, PP, #0x12, lsl #12  ; [pp+0x121c8] Obj!BoxShape@a2a9b1
    //     0x726e0c: ldr             x2, [x2, #0x1c8]
    // 0x726e10: StoreField: r0->field_4b = r2
    //     0x726e10: stur            w2, [x0, #0x4b]
    // 0x726e14: ldur            x2, [fp, #-8]
    // 0x726e18: StoreField: r0->field_6b = r2
    //     0x726e18: stur            w2, [x0, #0x6b]
    // 0x726e1c: StoreField: r0->field_73 = r1
    //     0x726e1c: stur            w1, [x0, #0x73]
    // 0x726e20: r3 = false
    //     0x726e20: add             x3, NULL, #0x30  ; false
    // 0x726e24: StoreField: r0->field_77 = r3
    //     0x726e24: stur            w3, [x0, #0x77]
    // 0x726e28: StoreField: r0->field_87 = r1
    //     0x726e28: stur            w1, [x0, #0x87]
    // 0x726e2c: StoreField: r0->field_7f = r3
    //     0x726e2c: stur            w3, [x0, #0x7f]
    // 0x726e30: r0 = Material()
    //     0x726e30: bl              #0x6633b0  ; AllocateMaterialStub -> Material (size=0x44)
    // 0x726e34: mov             x1, x0
    // 0x726e38: r0 = Instance_MaterialType
    //     0x726e38: add             x0, PP, #0x14, lsl #12  ; [pp+0x14fa0] Obj!MaterialType@a2b611
    //     0x726e3c: ldr             x0, [x0, #0xfa0]
    // 0x726e40: stur            x1, [fp, #-0x10]
    // 0x726e44: StoreField: r1->field_f = r0
    //     0x726e44: stur            w0, [x1, #0xf]
    // 0x726e48: ArrayStore: r1[0] = rZR  ; List_8
    //     0x726e48: stur            xzr, [x1, #0x17]
    // 0x726e4c: ldur            x0, [fp, #-8]
    // 0x726e50: StoreField: r1->field_1f = r0
    //     0x726e50: stur            w0, [x1, #0x1f]
    // 0x726e54: r0 = true
    //     0x726e54: add             x0, NULL, #0x20  ; true
    // 0x726e58: StoreField: r1->field_33 = r0
    //     0x726e58: stur            w0, [x1, #0x33]
    // 0x726e5c: r0 = Instance_Clip
    //     0x726e5c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726e60: ldr             x0, [x0, #0x348]
    // 0x726e64: StoreField: r1->field_37 = r0
    //     0x726e64: stur            w0, [x1, #0x37]
    // 0x726e68: r2 = Instance_Duration
    //     0x726e68: add             x2, PP, #0x11, lsl #12  ; [pp+0x112c8] Obj!Duration@a2dc71
    //     0x726e6c: ldr             x2, [x2, #0x2c8]
    // 0x726e70: StoreField: r1->field_3b = r2
    //     0x726e70: stur            w2, [x1, #0x3b]
    // 0x726e74: ldur            x2, [fp, #-0x30]
    // 0x726e78: StoreField: r1->field_b = r2
    //     0x726e78: stur            w2, [x1, #0xb]
    // 0x726e7c: r2 = false
    //     0x726e7c: add             x2, NULL, #0x30  ; false
    // 0x726e80: StoreField: r1->field_13 = r2
    //     0x726e80: stur            w2, [x1, #0x13]
    // 0x726e84: r0 = ClipOval()
    //     0x726e84: bl              #0x727640  ; AllocateClipOvalStub -> ClipOval (size=0x18)
    // 0x726e88: mov             x3, x0
    // 0x726e8c: r0 = Instance_Clip
    //     0x726e8c: add             x0, PP, #0x14, lsl #12  ; [pp+0x14d38] Obj!Clip@a2d931
    //     0x726e90: ldr             x0, [x0, #0xd38]
    // 0x726e94: stur            x3, [fp, #-8]
    // 0x726e98: StoreField: r3->field_13 = r0
    //     0x726e98: stur            w0, [x3, #0x13]
    // 0x726e9c: ldur            x0, [fp, #-0x10]
    // 0x726ea0: StoreField: r3->field_b = r0
    //     0x726ea0: stur            w0, [x3, #0xb]
    // 0x726ea4: r1 = Null
    //     0x726ea4: mov             x1, NULL
    // 0x726ea8: r2 = 2
    //     0x726ea8: mov             x2, #2
    // 0x726eac: r0 = AllocateArray()
    //     0x726eac: bl              #0x9280a0  ; AllocateArrayStub
    // 0x726eb0: mov             x2, x0
    // 0x726eb4: ldur            x0, [fp, #-8]
    // 0x726eb8: stur            x2, [fp, #-0x10]
    // 0x726ebc: StoreField: r2->field_f = r0
    //     0x726ebc: stur            w0, [x2, #0xf]
    // 0x726ec0: r1 = <Widget>
    //     0x726ec0: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x726ec4: r0 = AllocateGrowableArray()
    //     0x726ec4: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x726ec8: mov             x1, x0
    // 0x726ecc: ldur            x0, [fp, #-0x10]
    // 0x726ed0: stur            x1, [fp, #-8]
    // 0x726ed4: StoreField: r1->field_f = r0
    //     0x726ed4: stur            w0, [x1, #0xf]
    // 0x726ed8: r0 = 2
    //     0x726ed8: mov             x0, #2
    // 0x726edc: StoreField: r1->field_b = r0
    //     0x726edc: stur            w0, [x1, #0xb]
    // 0x726ee0: r0 = Row()
    //     0x726ee0: bl              #0x6636f0  ; AllocateRowStub -> Row (size=0x38)
    // 0x726ee4: mov             x2, x0
    // 0x726ee8: r0 = Instance_Axis
    //     0x726ee8: ldr             x0, [PP, #0x4868]  ; [pp+0x4868] Obj!Axis@a2aaf1
    // 0x726eec: stur            x2, [fp, #-0x10]
    // 0x726ef0: StoreField: r2->field_f = r0
    //     0x726ef0: stur            w0, [x2, #0xf]
    // 0x726ef4: r0 = Instance_MainAxisAlignment
    //     0x726ef4: add             x0, PP, #0x11, lsl #12  ; [pp+0x11328] Obj!MainAxisAlignment@a2a671
    //     0x726ef8: ldr             x0, [x0, #0x328]
    // 0x726efc: StoreField: r2->field_13 = r0
    //     0x726efc: stur            w0, [x2, #0x13]
    // 0x726f00: r0 = Instance_MainAxisSize
    //     0x726f00: add             x0, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x726f04: ldr             x0, [x0, #0x330]
    // 0x726f08: ArrayStore: r2[0] = r0  ; List_4
    //     0x726f08: stur            w0, [x2, #0x17]
    // 0x726f0c: r3 = Instance_CrossAxisAlignment
    //     0x726f0c: add             x3, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x726f10: ldr             x3, [x3, #0x338]
    // 0x726f14: StoreField: r2->field_1b = r3
    //     0x726f14: stur            w3, [x2, #0x1b]
    // 0x726f18: r4 = Instance_VerticalDirection
    //     0x726f18: add             x4, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x726f1c: ldr             x4, [x4, #0x340]
    // 0x726f20: StoreField: r2->field_23 = r4
    //     0x726f20: stur            w4, [x2, #0x23]
    // 0x726f24: r5 = Instance_Clip
    //     0x726f24: add             x5, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726f28: ldr             x5, [x5, #0x348]
    // 0x726f2c: StoreField: r2->field_2b = r5
    //     0x726f2c: stur            w5, [x2, #0x2b]
    // 0x726f30: StoreField: r2->field_2f = rZR
    //     0x726f30: stur            xzr, [x2, #0x2f]
    // 0x726f34: ldur            x1, [fp, #-8]
    // 0x726f38: StoreField: r2->field_b = r1
    //     0x726f38: stur            w1, [x2, #0xb]
    // 0x726f3c: ldur            x1, [fp, #-0x28]
    // 0x726f40: LoadField: r6 = r1->field_b
    //     0x726f40: ldur            w6, [x1, #0xb]
    // 0x726f44: r1 = LoadInt32Instr(r6)
    //     0x726f44: sbfx            x1, x6, #1, #0x1f
    // 0x726f48: ldur            x6, [fp, #-0x48]
    // 0x726f4c: cmp             x6, x1
    // 0x726f50: b.ne            #0x726f5c
    // 0x726f54: ldur            x1, [fp, #-0x20]
    // 0x726f58: r0 = _growToNextCapacity()
    //     0x726f58: bl              #0x3c75dc  ; [dart:core] _GrowableList::_growToNextCapacity
    // 0x726f5c: ldur            x3, [fp, #-0x20]
    // 0x726f60: ldur            x2, [fp, #-0x48]
    // 0x726f64: add             x0, x2, #1
    // 0x726f68: lsl             x1, x0, #1
    // 0x726f6c: StoreField: r3->field_b = r1
    //     0x726f6c: stur            w1, [x3, #0xb]
    // 0x726f70: LoadField: r1 = r3->field_f
    //     0x726f70: ldur            w1, [x3, #0xf]
    // 0x726f74: DecompressPointer r1
    //     0x726f74: add             x1, x1, HEAP, lsl #32
    // 0x726f78: ldur            x0, [fp, #-0x10]
    // 0x726f7c: ArrayStore: r1[r2] = r0  ; List_4
    //     0x726f7c: add             x25, x1, x2, lsl #2
    //     0x726f80: add             x25, x25, #0xf
    //     0x726f84: str             w0, [x25]
    //     0x726f88: tbz             w0, #0, #0x726fa4
    //     0x726f8c: ldurb           w16, [x1, #-1]
    //     0x726f90: ldurb           w17, [x0, #-1]
    //     0x726f94: and             x16, x17, x16, lsr #2
    //     0x726f98: tst             x16, HEAP, lsr #32
    //     0x726f9c: b.eq            #0x726fa4
    //     0x726fa0: bl              #0x92634c  ; ArrayWriteBarrierStub
    // 0x726fa4: r0 = Column()
    //     0x726fa4: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x726fa8: mov             x1, x0
    // 0x726fac: r0 = Instance_Axis
    //     0x726fac: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x726fb0: stur            x1, [fp, #-8]
    // 0x726fb4: StoreField: r1->field_f = r0
    //     0x726fb4: stur            w0, [x1, #0xf]
    // 0x726fb8: r2 = Instance_MainAxisAlignment
    //     0x726fb8: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x726fbc: ldr             x2, [x2, #0x230]
    // 0x726fc0: StoreField: r1->field_13 = r2
    //     0x726fc0: stur            w2, [x1, #0x13]
    // 0x726fc4: r2 = Instance_MainAxisSize
    //     0x726fc4: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x726fc8: ldr             x2, [x2, #0x330]
    // 0x726fcc: ArrayStore: r1[0] = r2  ; List_4
    //     0x726fcc: stur            w2, [x1, #0x17]
    // 0x726fd0: r2 = Instance_CrossAxisAlignment
    //     0x726fd0: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x726fd4: ldr             x2, [x2, #0x338]
    // 0x726fd8: StoreField: r1->field_1b = r2
    //     0x726fd8: stur            w2, [x1, #0x1b]
    // 0x726fdc: r2 = Instance_VerticalDirection
    //     0x726fdc: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x726fe0: ldr             x2, [x2, #0x340]
    // 0x726fe4: StoreField: r1->field_23 = r2
    //     0x726fe4: stur            w2, [x1, #0x23]
    // 0x726fe8: r2 = Instance_Clip
    //     0x726fe8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x726fec: ldr             x2, [x2, #0x348]
    // 0x726ff0: StoreField: r1->field_2b = r2
    //     0x726ff0: stur            w2, [x1, #0x2b]
    // 0x726ff4: StoreField: r1->field_2f = rZR
    //     0x726ff4: stur            xzr, [x1, #0x2f]
    // 0x726ff8: ldur            x2, [fp, #-0x20]
    // 0x726ffc: StoreField: r1->field_b = r2
    //     0x726ffc: stur            w2, [x1, #0xb]
    // 0x727000: r0 = SingleChildScrollView()
    //     0x727000: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x727004: r1 = Instance_Axis
    //     0x727004: ldr             x1, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x727008: StoreField: r0->field_b = r1
    //     0x727008: stur            w1, [x0, #0xb]
    // 0x72700c: r1 = false
    //     0x72700c: add             x1, NULL, #0x30  ; false
    // 0x727010: StoreField: r0->field_f = r1
    //     0x727010: stur            w1, [x0, #0xf]
    // 0x727014: ldur            x1, [fp, #-8]
    // 0x727018: StoreField: r0->field_23 = r1
    //     0x727018: stur            w1, [x0, #0x23]
    // 0x72701c: r1 = Instance_DragStartBehavior
    //     0x72701c: ldr             x1, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x727020: StoreField: r0->field_27 = r1
    //     0x727020: stur            w1, [x0, #0x27]
    // 0x727024: r1 = Instance_Clip
    //     0x727024: add             x1, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x727028: ldr             x1, [x1, #0x2d8]
    // 0x72702c: StoreField: r0->field_2b = r1
    //     0x72702c: stur            w1, [x0, #0x2b]
    // 0x727030: r1 = Instance_HitTestBehavior
    //     0x727030: add             x1, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x727034: ldr             x1, [x1, #0xe20]
    // 0x727038: StoreField: r0->field_2f = r1
    //     0x727038: stur            w1, [x0, #0x2f]
    // 0x72703c: LeaveFrame
    //     0x72703c: mov             SP, fp
    //     0x727040: ldp             fp, lr, [SP], #0x10
    // 0x727044: ret
    //     0x727044: ret             
    // 0x727048: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727048: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72704c: b               #0x72641c
    // 0x727050: SaveReg d0
    //     0x727050: str             q0, [SP, #-0x10]!
    // 0x727054: SaveReg r1
    //     0x727054: str             x1, [SP, #-8]!
    // 0x727058: r0 = AllocateDouble()
    //     0x727058: bl              #0x927ff8  ; AllocateDoubleStub
    // 0x72705c: RestoreReg r1
    //     0x72705c: ldr             x1, [SP], #8
    // 0x727060: RestoreReg d0
    //     0x727060: ldr             q0, [SP], #0x10
    // 0x727064: b               #0x7267dc
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x727068, size: 0x48
    // 0x727068: EnterFrame
    //     0x727068: stp             fp, lr, [SP, #-0x10]!
    //     0x72706c: mov             fp, SP
    // 0x727070: ldr             x0, [fp, #0x10]
    // 0x727074: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x727074: ldur            w1, [x0, #0x17]
    // 0x727078: DecompressPointer r1
    //     0x727078: add             x1, x1, HEAP, lsl #32
    // 0x72707c: CheckStackOverflow
    //     0x72707c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727080: cmp             SP, x16
    //     0x727084: b.ls            #0x7270a8
    // 0x727088: LoadField: r0 = r1->field_f
    //     0x727088: ldur            w0, [x1, #0xf]
    // 0x72708c: DecompressPointer r0
    //     0x72708c: add             x0, x0, HEAP, lsl #32
    // 0x727090: mov             x1, x0
    // 0x727094: r0 = artir()
    //     0x727094: bl              #0x7270b0  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::artir
    // 0x727098: r0 = Null
    //     0x727098: mov             x0, NULL
    // 0x72709c: LeaveFrame
    //     0x72709c: mov             SP, fp
    //     0x7270a0: ldp             fp, lr, [SP], #0x10
    // 0x7270a4: ret
    //     0x7270a4: ret             
    // 0x7270a8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7270a8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7270ac: b               #0x727088
  }
  _ artir(/* No info */) async {
    // ** addr: 0x7270b0, size: 0x140
    // 0x7270b0: EnterFrame
    //     0x7270b0: stp             fp, lr, [SP, #-0x10]!
    //     0x7270b4: mov             fp, SP
    // 0x7270b8: AllocStack(0x18)
    //     0x7270b8: sub             SP, SP, #0x18
    // 0x7270bc: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x7270bc: stur            NULL, [fp, #-8]
    //     0x7270c0: stur            x1, [fp, #-0x10]
    // 0x7270c4: CheckStackOverflow
    //     0x7270c4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7270c8: cmp             SP, x16
    //     0x7270cc: b.ls            #0x7271e8
    // 0x7270d0: InitAsync() -> Future<void?>
    //     0x7270d0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7270d4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7270d8: r0 = LoadStaticField(0x1034)
    //     0x7270d8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7270dc: ldr             x0, [x0, #0x2068]
    // 0x7270e0: r17 = 19998
    //     0x7270e0: mov             x17, #0x4e1e
    // 0x7270e4: cmp             w0, w17
    // 0x7270e8: b.ne            #0x727110
    // 0x7270ec: r1 = Function '<anonymous closure>':.
    //     0x7270ec: add             x1, PP, #0x20, lsl #12  ; [pp+0x20710] AnonymousClosure: (0x72723c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::artir (0x7270b0)
    //     0x7270f0: ldr             x1, [x1, #0x710]
    // 0x7270f4: r2 = Null
    //     0x7270f4: mov             x2, NULL
    // 0x7270f8: r0 = AllocateClosure()
    //     0x7270f8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7270fc: ldur            x1, [fp, #-0x10]
    // 0x727100: mov             x2, x0
    // 0x727104: r0 = setState()
    //     0x727104: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x727108: r0 = Null
    //     0x727108: mov             x0, NULL
    // 0x72710c: r0 = ReturnAsyncNotFuture()
    //     0x72710c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x727110: ldur            x0, [fp, #-0x10]
    // 0x727114: r1 = Function '<anonymous closure>':.
    //     0x727114: add             x1, PP, #0x20, lsl #12  ; [pp+0x20718] AnonymousClosure: (0x7271f0), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::artir (0x7270b0)
    //     0x727118: ldr             x1, [x1, #0x718]
    // 0x72711c: r2 = Null
    //     0x72711c: mov             x2, NULL
    // 0x727120: r0 = AllocateClosure()
    //     0x727120: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727124: ldur            x1, [fp, #-0x10]
    // 0x727128: mov             x2, x0
    // 0x72712c: r0 = setState()
    //     0x72712c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x727130: ldur            x0, [fp, #-0x10]
    // 0x727134: ArrayLoad: r1 = r0[0]  ; List_8
    //     0x727134: ldur            x1, [x0, #0x17]
    // 0x727138: r2 = LoadStaticField(0x1034)
    //     0x727138: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x72713c: ldr             x2, [x2, #0x2068]
    // 0x727140: r3 = LoadInt32Instr(r2)
    //     0x727140: sbfx            x3, x2, #1, #0x1f
    //     0x727144: tbz             w2, #0, #0x72714c
    //     0x727148: ldur            x3, [x2, #7]
    // 0x72714c: cmp             x1, x3
    // 0x727150: b.ne            #0x7271ac
    // 0x727154: r1 = "Hedefinize ulaştınız!"
    //     0x727154: add             x1, PP, #0x20, lsl #12  ; [pp+0x20720] "Hedefinize ulaştınız!"
    //     0x727158: ldr             x1, [x1, #0x720]
    // 0x72715c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72715c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x727160: r0 = showToast()
    //     0x727160: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x727164: ldur            x0, [fp, #-0x10]
    // 0x727168: r1 = 10000
    //     0x727168: mov             x1, #0x2710
    // 0x72716c: ArrayStore: r0[0] = r1  ; List_8
    //     0x72716c: stur            x1, [x0, #0x17]
    // 0x727170: LoadField: r1 = r0->field_1f
    //     0x727170: ldur            w1, [x0, #0x1f]
    // 0x727174: DecompressPointer r1
    //     0x727174: add             x1, x1, HEAP, lsl #32
    // 0x727178: r0 = clear()
    //     0x727178: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x72717c: r0 = getInstance()
    //     0x72717c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x727180: mov             x1, x0
    // 0x727184: stur            x1, [fp, #-0x18]
    // 0x727188: r0 = Await()
    //     0x727188: bl              #0x3dd188  ; AwaitStub
    // 0x72718c: mov             x1, x0
    // 0x727190: ldur            x0, [fp, #-0x10]
    // 0x727194: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x727194: ldur            x3, [x0, #0x17]
    // 0x727198: r2 = "hedef"
    //     0x727198: add             x2, PP, #0x20, lsl #12  ; [pp+0x20668] "hedef"
    //     0x72719c: ldr             x2, [x2, #0x668]
    // 0x7271a0: r0 = setInt()
    //     0x7271a0: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x7271a4: r0 = Null
    //     0x7271a4: mov             x0, NULL
    // 0x7271a8: r0 = ReturnAsyncNotFuture()
    //     0x7271a8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7271ac: r0 = getInstance()
    //     0x7271ac: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x7271b0: mov             x1, x0
    // 0x7271b4: stur            x1, [fp, #-0x10]
    // 0x7271b8: r0 = Await()
    //     0x7271b8: bl              #0x3dd188  ; AwaitStub
    // 0x7271bc: r1 = LoadStaticField(0x1034)
    //     0x7271bc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7271c0: ldr             x1, [x1, #0x2068]
    // 0x7271c4: r3 = LoadInt32Instr(r1)
    //     0x7271c4: sbfx            x3, x1, #1, #0x1f
    //     0x7271c8: tbz             w1, #0, #0x7271d0
    //     0x7271cc: ldur            x3, [x1, #7]
    // 0x7271d0: mov             x1, x0
    // 0x7271d4: r2 = "kaydedilenZikir"
    //     0x7271d4: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x7271d8: ldr             x2, [x2, #0x598]
    // 0x7271dc: r0 = setInt()
    //     0x7271dc: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x7271e0: r0 = Null
    //     0x7271e0: mov             x0, NULL
    // 0x7271e4: r0 = ReturnAsyncNotFuture()
    //     0x7271e4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7271e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7271e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7271ec: b               #0x7270d0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7271f0, size: 0x4c
    // 0x7271f0: r2 = LoadStaticField(0x1034)
    //     0x7271f0: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x7271f4: ldr             x2, [x2, #0x2068]
    // 0x7271f8: r3 = LoadInt32Instr(r2)
    //     0x7271f8: sbfx            x3, x2, #1, #0x1f
    //     0x7271fc: tbz             w2, #0, #0x727204
    //     0x727200: ldur            x3, [x2, #7]
    // 0x727204: add             x2, x3, #1
    // 0x727208: r0 = BoxInt64Instr(r2)
    //     0x727208: sbfiz           x0, x2, #1, #0x1f
    //     0x72720c: cmp             x2, x0, asr #1
    //     0x727210: b.eq            #0x72722c
    //     0x727214: stp             fp, lr, [SP, #-0x10]!
    //     0x727218: mov             fp, SP
    //     0x72721c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x727220: mov             SP, fp
    //     0x727224: ldp             fp, lr, [SP], #0x10
    //     0x727228: stur            x2, [x0, #7]
    // 0x72722c: StoreStaticField(0x1034, r0)
    //     0x72722c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x727230: str             x0, [x1, #0x2068]
    // 0x727234: r0 = Null
    //     0x727234: mov             x0, NULL
    // 0x727238: ret
    //     0x727238: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72723c, size: 0x3c
    // 0x72723c: EnterFrame
    //     0x72723c: stp             fp, lr, [SP, #-0x10]!
    //     0x727240: mov             fp, SP
    // 0x727244: CheckStackOverflow
    //     0x727244: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727248: cmp             SP, x16
    //     0x72724c: b.ls            #0x727270
    // 0x727250: r1 = "Zikirmatik daha fazla artamaz!"
    //     0x727250: add             x1, PP, #0x20, lsl #12  ; [pp+0x20728] "Zikirmatik daha fazla artamaz!"
    //     0x727254: ldr             x1, [x1, #0x728]
    // 0x727258: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x727258: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x72725c: r0 = showToast()
    //     0x72725c: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x727260: r0 = Null
    //     0x727260: mov             x0, NULL
    // 0x727264: LeaveFrame
    //     0x727264: mov             SP, fp
    //     0x727268: ldp             fp, lr, [SP], #0x10
    // 0x72726c: ret
    //     0x72726c: ret             
    // 0x727270: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727270: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727274: b               #0x727250
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x727278, size: 0x48
    // 0x727278: EnterFrame
    //     0x727278: stp             fp, lr, [SP, #-0x10]!
    //     0x72727c: mov             fp, SP
    // 0x727280: ldr             x0, [fp, #0x10]
    // 0x727284: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x727284: ldur            w1, [x0, #0x17]
    // 0x727288: DecompressPointer r1
    //     0x727288: add             x1, x1, HEAP, lsl #32
    // 0x72728c: CheckStackOverflow
    //     0x72728c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727290: cmp             SP, x16
    //     0x727294: b.ls            #0x7272b8
    // 0x727298: LoadField: r0 = r1->field_f
    //     0x727298: ldur            w0, [x1, #0xf]
    // 0x72729c: DecompressPointer r0
    //     0x72729c: add             x0, x0, HEAP, lsl #32
    // 0x7272a0: mov             x1, x0
    // 0x7272a4: r0 = sifirla()
    //     0x7272a4: bl              #0x7272c0  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::sifirla
    // 0x7272a8: r0 = Null
    //     0x7272a8: mov             x0, NULL
    // 0x7272ac: LeaveFrame
    //     0x7272ac: mov             SP, fp
    //     0x7272b0: ldp             fp, lr, [SP], #0x10
    // 0x7272b4: ret
    //     0x7272b4: ret             
    // 0x7272b8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7272b8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7272bc: b               #0x727298
  }
  _ sifirla(/* No info */) async {
    // ** addr: 0x7272c0, size: 0x90
    // 0x7272c0: EnterFrame
    //     0x7272c0: stp             fp, lr, [SP, #-0x10]!
    //     0x7272c4: mov             fp, SP
    // 0x7272c8: AllocStack(0x38)
    //     0x7272c8: sub             SP, SP, #0x38
    // 0x7272cc: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x7272cc: stur            NULL, [fp, #-8]
    //     0x7272d0: stur            x1, [fp, #-0x10]
    // 0x7272d4: CheckStackOverflow
    //     0x7272d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7272d8: cmp             SP, x16
    //     0x7272dc: b.ls            #0x727344
    // 0x7272e0: r1 = 1
    //     0x7272e0: mov             x1, #1
    // 0x7272e4: r0 = AllocateContext()
    //     0x7272e4: bl              #0x927010  ; AllocateContextStub
    // 0x7272e8: mov             x2, x0
    // 0x7272ec: ldur            x1, [fp, #-0x10]
    // 0x7272f0: stur            x2, [fp, #-0x18]
    // 0x7272f4: StoreField: r2->field_f = r1
    //     0x7272f4: stur            w1, [x2, #0xf]
    // 0x7272f8: InitAsync() -> Future
    //     0x7272f8: mov             x0, NULL
    //     0x7272fc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x727300: ldur            x0, [fp, #-0x10]
    // 0x727304: LoadField: r3 = r0->field_f
    //     0x727304: ldur            w3, [x0, #0xf]
    // 0x727308: DecompressPointer r3
    //     0x727308: add             x3, x3, HEAP, lsl #32
    // 0x72730c: stur            x3, [fp, #-0x20]
    // 0x727310: cmp             w3, NULL
    // 0x727314: b.eq            #0x72734c
    // 0x727318: ldur            x2, [fp, #-0x18]
    // 0x72731c: r1 = Function '<anonymous closure>':.
    //     0x72731c: add             x1, PP, #0x20, lsl #12  ; [pp+0x20730] AnonymousClosure: (0x727350), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::sifirla (0x7272c0)
    //     0x727320: ldr             x1, [x1, #0x730]
    // 0x727324: r0 = AllocateClosure()
    //     0x727324: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727328: stp             x0, NULL, [SP, #8]
    // 0x72732c: ldur            x16, [fp, #-0x20]
    // 0x727330: str             x16, [SP]
    // 0x727334: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x727334: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x727338: r0 = showDialog()
    //     0x727338: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x72733c: r0 = Null
    //     0x72733c: mov             x0, NULL
    // 0x727340: r0 = ReturnAsyncNotFuture()
    //     0x727340: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x727344: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727344: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727348: b               #0x7272e0
    // 0x72734c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72734c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x727350, size: 0x1c4
    // 0x727350: EnterFrame
    //     0x727350: stp             fp, lr, [SP, #-0x10]!
    //     0x727354: mov             fp, SP
    // 0x727358: AllocStack(0x20)
    //     0x727358: sub             SP, SP, #0x20
    // 0x72735c: SetupParameters([dynamic _ /* r0 */])
    //     0x72735c: ldr             x0, [fp, #0x18]
    //     0x727360: ldur            w1, [x0, #0x17]
    //     0x727364: add             x1, x1, HEAP, lsl #32
    //     0x727368: stur            x1, [fp, #-8]
    // 0x72736c: CheckStackOverflow
    //     0x72736c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727370: cmp             SP, x16
    //     0x727374: b.ls            #0x72750c
    // 0x727378: r1 = 1
    //     0x727378: mov             x1, #1
    // 0x72737c: r0 = AllocateContext()
    //     0x72737c: bl              #0x927010  ; AllocateContextStub
    // 0x727380: mov             x1, x0
    // 0x727384: ldur            x0, [fp, #-8]
    // 0x727388: stur            x1, [fp, #-0x10]
    // 0x72738c: StoreField: r1->field_b = r0
    //     0x72738c: stur            w0, [x1, #0xb]
    // 0x727390: ldr             x0, [fp, #0x10]
    // 0x727394: StoreField: r1->field_f = r0
    //     0x727394: stur            w0, [x1, #0xf]
    // 0x727398: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x727398: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x72739c: ldr             x0, [x0, #0x2078]
    //     0x7273a0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7273a4: cmp             w0, w16
    //     0x7273a8: b.ne            #0x7273b8
    //     0x7273ac: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x7273b0: ldr             x2, [x2, #0x450]
    //     0x7273b4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7273b8: stur            x0, [fp, #-8]
    // 0x7273bc: r0 = TextStyle()
    //     0x7273bc: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7273c0: mov             x1, x0
    // 0x7273c4: r0 = true
    //     0x7273c4: add             x0, NULL, #0x20  ; true
    // 0x7273c8: stur            x1, [fp, #-0x18]
    // 0x7273cc: StoreField: r1->field_7 = r0
    //     0x7273cc: stur            w0, [x1, #7]
    // 0x7273d0: ldur            x0, [fp, #-8]
    // 0x7273d4: StoreField: r1->field_b = r0
    //     0x7273d4: stur            w0, [x1, #0xb]
    // 0x7273d8: r0 = Text()
    //     0x7273d8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7273dc: mov             x3, x0
    // 0x7273e0: r0 = "İptal"
    //     0x7273e0: add             x0, PP, #0x20, lsl #12  ; [pp+0x204e0] "İptal"
    //     0x7273e4: ldr             x0, [x0, #0x4e0]
    // 0x7273e8: stur            x3, [fp, #-8]
    // 0x7273ec: StoreField: r3->field_b = r0
    //     0x7273ec: stur            w0, [x3, #0xb]
    // 0x7273f0: ldur            x0, [fp, #-0x18]
    // 0x7273f4: StoreField: r3->field_13 = r0
    //     0x7273f4: stur            w0, [x3, #0x13]
    // 0x7273f8: ldur            x2, [fp, #-0x10]
    // 0x7273fc: r1 = Function '<anonymous closure>':.
    //     0x7273fc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20738] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x727400: ldr             x1, [x1, #0x738]
    // 0x727404: r0 = AllocateClosure()
    //     0x727404: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727408: stur            x0, [fp, #-0x18]
    // 0x72740c: r0 = IconButton()
    //     0x72740c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x727410: mov             x1, x0
    // 0x727414: ldur            x0, [fp, #-0x18]
    // 0x727418: stur            x1, [fp, #-0x20]
    // 0x72741c: StoreField: r1->field_3b = r0
    //     0x72741c: stur            w0, [x1, #0x3b]
    // 0x727420: r0 = false
    //     0x727420: add             x0, NULL, #0x30  ; false
    // 0x727424: StoreField: r1->field_4f = r0
    //     0x727424: stur            w0, [x1, #0x4f]
    // 0x727428: ldur            x2, [fp, #-8]
    // 0x72742c: StoreField: r1->field_1f = r2
    //     0x72742c: stur            w2, [x1, #0x1f]
    // 0x727430: r2 = Instance__IconButtonVariant
    //     0x727430: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x727434: ldr             x2, [x2, #0x1b8]
    // 0x727438: StoreField: r1->field_6f = r2
    //     0x727438: stur            w2, [x1, #0x6f]
    // 0x72743c: r0 = IconButton()
    //     0x72743c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x727440: mov             x3, x0
    // 0x727444: r0 = 50.000000
    //     0x727444: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x727448: ldr             x0, [x0, #0xa48]
    // 0x72744c: stur            x3, [fp, #-8]
    // 0x727450: StoreField: r3->field_b = r0
    //     0x727450: stur            w0, [x3, #0xb]
    // 0x727454: ldur            x2, [fp, #-0x10]
    // 0x727458: r1 = Function '<anonymous closure>':.
    //     0x727458: add             x1, PP, #0x20, lsl #12  ; [pp+0x20740] AnonymousClosure: (0x727514), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::sifirla (0x7272c0)
    //     0x72745c: ldr             x1, [x1, #0x740]
    // 0x727460: r0 = AllocateClosure()
    //     0x727460: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727464: mov             x1, x0
    // 0x727468: ldur            x0, [fp, #-8]
    // 0x72746c: StoreField: r0->field_3b = r1
    //     0x72746c: stur            w1, [x0, #0x3b]
    // 0x727470: r3 = false
    //     0x727470: add             x3, NULL, #0x30  ; false
    // 0x727474: StoreField: r0->field_4f = r3
    //     0x727474: stur            w3, [x0, #0x4f]
    // 0x727478: r1 = Instance_Text
    //     0x727478: add             x1, PP, #0x20, lsl #12  ; [pp+0x20748] Obj!Text@a1c8a1
    //     0x72747c: ldr             x1, [x1, #0x748]
    // 0x727480: StoreField: r0->field_1f = r1
    //     0x727480: stur            w1, [x0, #0x1f]
    // 0x727484: r1 = Instance__IconButtonVariant
    //     0x727484: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x727488: ldr             x1, [x1, #0x1b8]
    // 0x72748c: StoreField: r0->field_6f = r1
    //     0x72748c: stur            w1, [x0, #0x6f]
    // 0x727490: r1 = Null
    //     0x727490: mov             x1, NULL
    // 0x727494: r2 = 4
    //     0x727494: mov             x2, #4
    // 0x727498: r0 = AllocateArray()
    //     0x727498: bl              #0x9280a0  ; AllocateArrayStub
    // 0x72749c: mov             x2, x0
    // 0x7274a0: ldur            x0, [fp, #-0x20]
    // 0x7274a4: stur            x2, [fp, #-0x10]
    // 0x7274a8: StoreField: r2->field_f = r0
    //     0x7274a8: stur            w0, [x2, #0xf]
    // 0x7274ac: ldur            x0, [fp, #-8]
    // 0x7274b0: StoreField: r2->field_13 = r0
    //     0x7274b0: stur            w0, [x2, #0x13]
    // 0x7274b4: r1 = <Widget>
    //     0x7274b4: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7274b8: r0 = AllocateGrowableArray()
    //     0x7274b8: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7274bc: mov             x1, x0
    // 0x7274c0: ldur            x0, [fp, #-0x10]
    // 0x7274c4: stur            x1, [fp, #-8]
    // 0x7274c8: StoreField: r1->field_f = r0
    //     0x7274c8: stur            w0, [x1, #0xf]
    // 0x7274cc: r0 = 4
    //     0x7274cc: mov             x0, #4
    // 0x7274d0: StoreField: r1->field_b = r0
    //     0x7274d0: stur            w0, [x1, #0xb]
    // 0x7274d4: r0 = AlertDialog()
    //     0x7274d4: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x7274d8: r1 = Instance_Text
    //     0x7274d8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20750] Obj!Text@a1c351
    //     0x7274dc: ldr             x1, [x1, #0x750]
    // 0x7274e0: StoreField: r0->field_f = r1
    //     0x7274e0: stur            w1, [x0, #0xf]
    // 0x7274e4: r1 = Instance_Text
    //     0x7274e4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20758] Obj!Text@a1c851
    //     0x7274e8: ldr             x1, [x1, #0x758]
    // 0x7274ec: StoreField: r0->field_1b = r1
    //     0x7274ec: stur            w1, [x0, #0x1b]
    // 0x7274f0: ldur            x1, [fp, #-8]
    // 0x7274f4: StoreField: r0->field_27 = r1
    //     0x7274f4: stur            w1, [x0, #0x27]
    // 0x7274f8: r1 = false
    //     0x7274f8: add             x1, NULL, #0x30  ; false
    // 0x7274fc: StoreField: r0->field_6b = r1
    //     0x7274fc: stur            w1, [x0, #0x6b]
    // 0x727500: LeaveFrame
    //     0x727500: mov             SP, fp
    //     0x727504: ldp             fp, lr, [SP], #0x10
    // 0x727508: ret
    //     0x727508: ret             
    // 0x72750c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72750c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727510: b               #0x727378
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x727514, size: 0xd0
    // 0x727514: EnterFrame
    //     0x727514: stp             fp, lr, [SP, #-0x10]!
    //     0x727518: mov             fp, SP
    // 0x72751c: AllocStack(0x28)
    //     0x72751c: sub             SP, SP, #0x28
    // 0x727520: SetupParameters(_ZikirCekState this /* r1 */)
    //     0x727520: stur            NULL, [fp, #-8]
    //     0x727524: mov             x0, #0
    //     0x727528: add             x1, fp, w0, sxtw #2
    //     0x72752c: ldr             x1, [x1, #0x10]
    //     0x727530: ldur            w2, [x1, #0x17]
    //     0x727534: add             x2, x2, HEAP, lsl #32
    //     0x727538: stur            x2, [fp, #-0x10]
    // 0x72753c: CheckStackOverflow
    //     0x72753c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727540: cmp             SP, x16
    //     0x727544: b.ls            #0x7275dc
    // 0x727548: InitAsync() -> Future<void?>
    //     0x727548: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x72754c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x727550: ldur            x0, [fp, #-0x10]
    // 0x727554: LoadField: r1 = r0->field_b
    //     0x727554: ldur            w1, [x0, #0xb]
    // 0x727558: DecompressPointer r1
    //     0x727558: add             x1, x1, HEAP, lsl #32
    // 0x72755c: LoadField: r3 = r1->field_f
    //     0x72755c: ldur            w3, [x1, #0xf]
    // 0x727560: DecompressPointer r3
    //     0x727560: add             x3, x3, HEAP, lsl #32
    // 0x727564: stur            x3, [fp, #-0x18]
    // 0x727568: r1 = Function '<anonymous closure>':.
    //     0x727568: add             x1, PP, #0x20, lsl #12  ; [pp+0x20760] AnonymousClosure: (0x7275e4), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::sifirla (0x7272c0)
    //     0x72756c: ldr             x1, [x1, #0x760]
    // 0x727570: r2 = Null
    //     0x727570: mov             x2, NULL
    // 0x727574: r0 = AllocateClosure()
    //     0x727574: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727578: ldur            x1, [fp, #-0x18]
    // 0x72757c: mov             x2, x0
    // 0x727580: r0 = setState()
    //     0x727580: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x727584: r0 = getInstance()
    //     0x727584: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x727588: mov             x1, x0
    // 0x72758c: stur            x1, [fp, #-0x18]
    // 0x727590: r0 = Await()
    //     0x727590: bl              #0x3dd188  ; AwaitStub
    // 0x727594: r1 = LoadStaticField(0x1034)
    //     0x727594: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x727598: ldr             x1, [x1, #0x2068]
    // 0x72759c: r3 = LoadInt32Instr(r1)
    //     0x72759c: sbfx            x3, x1, #1, #0x1f
    //     0x7275a0: tbz             w1, #0, #0x7275a8
    //     0x7275a4: ldur            x3, [x1, #7]
    // 0x7275a8: mov             x1, x0
    // 0x7275ac: r2 = "kaydedilenZikir"
    //     0x7275ac: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x7275b0: ldr             x2, [x2, #0x598]
    // 0x7275b4: r0 = setInt()
    //     0x7275b4: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x7275b8: ldur            x0, [fp, #-0x10]
    // 0x7275bc: LoadField: r1 = r0->field_f
    //     0x7275bc: ldur            w1, [x0, #0xf]
    // 0x7275c0: DecompressPointer r1
    //     0x7275c0: add             x1, x1, HEAP, lsl #32
    // 0x7275c4: r16 = <Object?>
    //     0x7275c4: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7275c8: stp             x1, x16, [SP]
    // 0x7275cc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7275cc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7275d0: r0 = pop()
    //     0x7275d0: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7275d4: r0 = Null
    //     0x7275d4: mov             x0, NULL
    // 0x7275d8: r0 = ReturnAsyncNotFuture()
    //     0x7275d8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7275dc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7275dc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7275e0: b               #0x727548
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7275e4, size: 0x14
    // 0x7275e4: r1 = 0
    //     0x7275e4: mov             x1, #0
    // 0x7275e8: StoreStaticField(0x1034, r1)
    //     0x7275e8: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x7275ec: str             x1, [x2, #0x2068]
    // 0x7275f0: r0 = Null
    //     0x7275f0: mov             x0, NULL
    // 0x7275f4: ret
    //     0x7275f4: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x7275f8, size: 0x48
    // 0x7275f8: EnterFrame
    //     0x7275f8: stp             fp, lr, [SP, #-0x10]!
    //     0x7275fc: mov             fp, SP
    // 0x727600: ldr             x0, [fp, #0x10]
    // 0x727604: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x727604: ldur            w1, [x0, #0x17]
    // 0x727608: DecompressPointer r1
    //     0x727608: add             x1, x1, HEAP, lsl #32
    // 0x72760c: CheckStackOverflow
    //     0x72760c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727610: cmp             SP, x16
    //     0x727614: b.ls            #0x727638
    // 0x727618: LoadField: r0 = r1->field_f
    //     0x727618: ldur            w0, [x1, #0xf]
    // 0x72761c: DecompressPointer r0
    //     0x72761c: add             x0, x0, HEAP, lsl #32
    // 0x727620: mov             x1, x0
    // 0x727624: r0 = zikirlerimeKaydetDialog()
    //     0x727624: bl              #0x6fa75c  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::zikirlerimeKaydetDialog
    // 0x727628: r0 = Null
    //     0x727628: mov             x0, NULL
    // 0x72762c: LeaveFrame
    //     0x72762c: mov             SP, fp
    //     0x727630: ldp             fp, lr, [SP], #0x10
    // 0x727634: ret
    //     0x727634: ret             
    // 0x727638: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727638: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72763c: b               #0x727618
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72764c, size: 0x48
    // 0x72764c: EnterFrame
    //     0x72764c: stp             fp, lr, [SP, #-0x10]!
    //     0x727650: mov             fp, SP
    // 0x727654: ldr             x0, [fp, #0x10]
    // 0x727658: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x727658: ldur            w1, [x0, #0x17]
    // 0x72765c: DecompressPointer r1
    //     0x72765c: add             x1, x1, HEAP, lsl #32
    // 0x727660: CheckStackOverflow
    //     0x727660: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727664: cmp             SP, x16
    //     0x727668: b.ls            #0x72768c
    // 0x72766c: LoadField: r0 = r1->field_f
    //     0x72766c: ldur            w0, [x1, #0xf]
    // 0x727670: DecompressPointer r0
    //     0x727670: add             x0, x0, HEAP, lsl #32
    // 0x727674: mov             x1, x0
    // 0x727678: r0 = renkDegistir()
    //     0x727678: bl              #0x727694  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistir
    // 0x72767c: r0 = Null
    //     0x72767c: mov             x0, NULL
    // 0x727680: LeaveFrame
    //     0x727680: mov             SP, fp
    //     0x727684: ldp             fp, lr, [SP], #0x10
    // 0x727688: ret
    //     0x727688: ret             
    // 0x72768c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72768c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727690: b               #0x72766c
  }
  _ renkDegistir(/* No info */) {
    // ** addr: 0x727694, size: 0x80
    // 0x727694: EnterFrame
    //     0x727694: stp             fp, lr, [SP, #-0x10]!
    //     0x727698: mov             fp, SP
    // 0x72769c: AllocStack(0x28)
    //     0x72769c: sub             SP, SP, #0x28
    // 0x7276a0: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x8 */)
    //     0x7276a0: stur            x1, [fp, #-8]
    // 0x7276a4: CheckStackOverflow
    //     0x7276a4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7276a8: cmp             SP, x16
    //     0x7276ac: b.ls            #0x727708
    // 0x7276b0: r1 = 1
    //     0x7276b0: mov             x1, #1
    // 0x7276b4: r0 = AllocateContext()
    //     0x7276b4: bl              #0x927010  ; AllocateContextStub
    // 0x7276b8: mov             x1, x0
    // 0x7276bc: ldur            x0, [fp, #-8]
    // 0x7276c0: StoreField: r1->field_f = r0
    //     0x7276c0: stur            w0, [x1, #0xf]
    // 0x7276c4: LoadField: r3 = r0->field_f
    //     0x7276c4: ldur            w3, [x0, #0xf]
    // 0x7276c8: DecompressPointer r3
    //     0x7276c8: add             x3, x3, HEAP, lsl #32
    // 0x7276cc: stur            x3, [fp, #-0x10]
    // 0x7276d0: cmp             w3, NULL
    // 0x7276d4: b.eq            #0x727710
    // 0x7276d8: mov             x2, x1
    // 0x7276dc: r1 = Function '<anonymous closure>':.
    //     0x7276dc: add             x1, PP, #0x20, lsl #12  ; [pp+0x204b8] AnonymousClosure: (0x727714), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistir (0x727694)
    //     0x7276e0: ldr             x1, [x1, #0x4b8]
    // 0x7276e4: r0 = AllocateClosure()
    //     0x7276e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7276e8: stp             x0, NULL, [SP, #8]
    // 0x7276ec: ldur            x16, [fp, #-0x10]
    // 0x7276f0: str             x16, [SP]
    // 0x7276f4: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7276f4: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7276f8: r0 = showDialog()
    //     0x7276f8: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7276fc: LeaveFrame
    //     0x7276fc: mov             SP, fp
    //     0x727700: ldp             fp, lr, [SP], #0x10
    // 0x727704: ret
    //     0x727704: ret             
    // 0x727708: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727708: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72770c: b               #0x7276b0
    // 0x727710: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x727710: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x727714, size: 0x37c
    // 0x727714: EnterFrame
    //     0x727714: stp             fp, lr, [SP, #-0x10]!
    //     0x727718: mov             fp, SP
    // 0x72771c: AllocStack(0x38)
    //     0x72771c: sub             SP, SP, #0x38
    // 0x727720: SetupParameters([dynamic _ /* r0 */])
    //     0x727720: ldr             x0, [fp, #0x18]
    //     0x727724: ldur            w1, [x0, #0x17]
    //     0x727728: add             x1, x1, HEAP, lsl #32
    //     0x72772c: stur            x1, [fp, #-8]
    // 0x727730: CheckStackOverflow
    //     0x727730: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727734: cmp             SP, x16
    //     0x727738: b.ls            #0x727a88
    // 0x72773c: r1 = 1
    //     0x72773c: mov             x1, #1
    // 0x727740: r0 = AllocateContext()
    //     0x727740: bl              #0x927010  ; AllocateContextStub
    // 0x727744: mov             x1, x0
    // 0x727748: ldur            x0, [fp, #-8]
    // 0x72774c: stur            x1, [fp, #-0x10]
    // 0x727750: StoreField: r1->field_b = r0
    //     0x727750: stur            w0, [x1, #0xb]
    // 0x727754: ldr             x0, [fp, #0x10]
    // 0x727758: StoreField: r1->field_f = r0
    //     0x727758: stur            w0, [x1, #0xf]
    // 0x72775c: r0 = Radius()
    //     0x72775c: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x727760: stur            x0, [fp, #-8]
    // 0x727764: StoreField: r0->field_7 = rZR
    //     0x727764: stur            xzr, [x0, #7]
    // 0x727768: StoreField: r0->field_f = rZR
    //     0x727768: stur            xzr, [x0, #0xf]
    // 0x72776c: r0 = BorderRadius()
    //     0x72776c: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x727770: mov             x1, x0
    // 0x727774: ldur            x0, [fp, #-8]
    // 0x727778: stur            x1, [fp, #-0x18]
    // 0x72777c: StoreField: r1->field_7 = r0
    //     0x72777c: stur            w0, [x1, #7]
    // 0x727780: StoreField: r1->field_b = r0
    //     0x727780: stur            w0, [x1, #0xb]
    // 0x727784: StoreField: r1->field_f = r0
    //     0x727784: stur            w0, [x1, #0xf]
    // 0x727788: StoreField: r1->field_13 = r0
    //     0x727788: stur            w0, [x1, #0x13]
    // 0x72778c: r0 = RoundedRectangleBorder()
    //     0x72778c: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x727790: mov             x1, x0
    // 0x727794: ldur            x0, [fp, #-0x18]
    // 0x727798: stur            x1, [fp, #-8]
    // 0x72779c: StoreField: r1->field_b = r0
    //     0x72779c: stur            w0, [x1, #0xb]
    // 0x7277a0: r0 = Instance_BorderSide
    //     0x7277a0: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7277a4: ldr             x0, [x0, #0xcb8]
    // 0x7277a8: StoreField: r1->field_7 = r0
    //     0x7277a8: stur            w0, [x1, #7]
    // 0x7277ac: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x7277ac: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7277b0: ldr             x0, [x0, #0x2078]
    //     0x7277b4: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7277b8: cmp             w0, w16
    //     0x7277bc: b.ne            #0x7277cc
    //     0x7277c0: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x7277c4: ldr             x2, [x2, #0x450]
    //     0x7277c8: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7277cc: str             x0, [SP]
    // 0x7277d0: r4 = const [0, 0x1, 0x1, 0, backgroundColor, 0, null]
    //     0x7277d0: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c090] List(7) [0, 0x1, 0x1, 0, "backgroundColor", 0, Null]
    //     0x7277d4: ldr             x4, [x4, #0x90]
    // 0x7277d8: r0 = styleFrom()
    //     0x7277d8: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x7277dc: ldur            x2, [fp, #-0x10]
    // 0x7277e0: r1 = Function '<anonymous closure>':.
    //     0x7277e0: add             x1, PP, #0x20, lsl #12  ; [pp+0x204c0] AnonymousClosure: (0x728024), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistir (0x727694)
    //     0x7277e4: ldr             x1, [x1, #0x4c0]
    // 0x7277e8: stur            x0, [fp, #-0x18]
    // 0x7277ec: r0 = AllocateClosure()
    //     0x7277ec: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7277f0: stur            x0, [fp, #-0x20]
    // 0x7277f4: r0 = ElevatedButton()
    //     0x7277f4: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x7277f8: mov             x1, x0
    // 0x7277fc: ldur            x0, [fp, #-0x20]
    // 0x727800: stur            x1, [fp, #-0x28]
    // 0x727804: StoreField: r1->field_b = r0
    //     0x727804: stur            w0, [x1, #0xb]
    // 0x727808: ldur            x0, [fp, #-0x18]
    // 0x72780c: StoreField: r1->field_1b = r0
    //     0x72780c: stur            w0, [x1, #0x1b]
    // 0x727810: r0 = false
    //     0x727810: add             x0, NULL, #0x30  ; false
    // 0x727814: StoreField: r1->field_27 = r0
    //     0x727814: stur            w0, [x1, #0x27]
    // 0x727818: r2 = true
    //     0x727818: add             x2, NULL, #0x20  ; true
    // 0x72781c: StoreField: r1->field_2f = r2
    //     0x72781c: stur            w2, [x1, #0x2f]
    // 0x727820: r3 = Instance_Text
    //     0x727820: add             x3, PP, #0x20, lsl #12  ; [pp+0x204c8] Obj!Text@a1c991
    //     0x727824: ldr             x3, [x3, #0x4c8]
    // 0x727828: StoreField: r1->field_37 = r3
    //     0x727828: stur            w3, [x1, #0x37]
    // 0x72782c: r3 = LoadStaticField(0x103c)
    //     0x72782c: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x727830: ldr             x3, [x3, #0x2078]
    // 0x727834: str             x3, [SP]
    // 0x727838: r4 = const [0, 0x1, 0x1, 0, backgroundColor, 0, null]
    //     0x727838: add             x4, PP, #0x1c, lsl #12  ; [pp+0x1c090] List(7) [0, 0x1, 0x1, 0, "backgroundColor", 0, Null]
    //     0x72783c: ldr             x4, [x4, #0x90]
    // 0x727840: r0 = styleFrom()
    //     0x727840: bl              #0x6d5514  ; [package:flutter/src/material/elevated_button.dart] ElevatedButton::styleFrom
    // 0x727844: ldur            x2, [fp, #-0x10]
    // 0x727848: r1 = Function '<anonymous closure>':.
    //     0x727848: add             x1, PP, #0x20, lsl #12  ; [pp+0x204d0] AnonymousClosure: (0x727a90), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistir (0x727694)
    //     0x72784c: ldr             x1, [x1, #0x4d0]
    // 0x727850: stur            x0, [fp, #-0x18]
    // 0x727854: r0 = AllocateClosure()
    //     0x727854: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727858: stur            x0, [fp, #-0x20]
    // 0x72785c: r0 = ElevatedButton()
    //     0x72785c: bl              #0x6d3810  ; AllocateElevatedButtonStub -> ElevatedButton (size=0x3c)
    // 0x727860: mov             x3, x0
    // 0x727864: ldur            x0, [fp, #-0x20]
    // 0x727868: stur            x3, [fp, #-0x30]
    // 0x72786c: StoreField: r3->field_b = r0
    //     0x72786c: stur            w0, [x3, #0xb]
    // 0x727870: ldur            x0, [fp, #-0x18]
    // 0x727874: StoreField: r3->field_1b = r0
    //     0x727874: stur            w0, [x3, #0x1b]
    // 0x727878: r0 = false
    //     0x727878: add             x0, NULL, #0x30  ; false
    // 0x72787c: StoreField: r3->field_27 = r0
    //     0x72787c: stur            w0, [x3, #0x27]
    // 0x727880: r4 = true
    //     0x727880: add             x4, NULL, #0x20  ; true
    // 0x727884: StoreField: r3->field_2f = r4
    //     0x727884: stur            w4, [x3, #0x2f]
    // 0x727888: r1 = Instance_Text
    //     0x727888: add             x1, PP, #0x20, lsl #12  ; [pp+0x204d8] Obj!Text@a1c941
    //     0x72788c: ldr             x1, [x1, #0x4d8]
    // 0x727890: StoreField: r3->field_37 = r1
    //     0x727890: stur            w1, [x3, #0x37]
    // 0x727894: r1 = Null
    //     0x727894: mov             x1, NULL
    // 0x727898: r2 = 4
    //     0x727898: mov             x2, #4
    // 0x72789c: r0 = AllocateArray()
    //     0x72789c: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7278a0: mov             x2, x0
    // 0x7278a4: ldur            x0, [fp, #-0x28]
    // 0x7278a8: stur            x2, [fp, #-0x18]
    // 0x7278ac: StoreField: r2->field_f = r0
    //     0x7278ac: stur            w0, [x2, #0xf]
    // 0x7278b0: ldur            x0, [fp, #-0x30]
    // 0x7278b4: StoreField: r2->field_13 = r0
    //     0x7278b4: stur            w0, [x2, #0x13]
    // 0x7278b8: r1 = <Widget>
    //     0x7278b8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7278bc: r0 = AllocateGrowableArray()
    //     0x7278bc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7278c0: mov             x1, x0
    // 0x7278c4: ldur            x0, [fp, #-0x18]
    // 0x7278c8: stur            x1, [fp, #-0x20]
    // 0x7278cc: StoreField: r1->field_f = r0
    //     0x7278cc: stur            w0, [x1, #0xf]
    // 0x7278d0: r0 = 4
    //     0x7278d0: mov             x0, #4
    // 0x7278d4: StoreField: r1->field_b = r0
    //     0x7278d4: stur            w0, [x1, #0xb]
    // 0x7278d8: r0 = Column()
    //     0x7278d8: bl              #0x66342c  ; AllocateColumnStub -> Column (size=0x38)
    // 0x7278dc: mov             x1, x0
    // 0x7278e0: r0 = Instance_Axis
    //     0x7278e0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x7278e4: stur            x1, [fp, #-0x18]
    // 0x7278e8: StoreField: r1->field_f = r0
    //     0x7278e8: stur            w0, [x1, #0xf]
    // 0x7278ec: r2 = Instance_MainAxisAlignment
    //     0x7278ec: add             x2, PP, #0x12, lsl #12  ; [pp+0x12230] Obj!MainAxisAlignment@a2a6b1
    //     0x7278f0: ldr             x2, [x2, #0x230]
    // 0x7278f4: StoreField: r1->field_13 = r2
    //     0x7278f4: stur            w2, [x1, #0x13]
    // 0x7278f8: r2 = Instance_MainAxisSize
    //     0x7278f8: add             x2, PP, #0x11, lsl #12  ; [pp+0x11330] Obj!MainAxisSize@a2a6f1
    //     0x7278fc: ldr             x2, [x2, #0x330]
    // 0x727900: ArrayStore: r1[0] = r2  ; List_4
    //     0x727900: stur            w2, [x1, #0x17]
    // 0x727904: r2 = Instance_CrossAxisAlignment
    //     0x727904: add             x2, PP, #0x11, lsl #12  ; [pp+0x11338] Obj!CrossAxisAlignment@a2a5b1
    //     0x727908: ldr             x2, [x2, #0x338]
    // 0x72790c: StoreField: r1->field_1b = r2
    //     0x72790c: stur            w2, [x1, #0x1b]
    // 0x727910: r2 = Instance_VerticalDirection
    //     0x727910: add             x2, PP, #0x11, lsl #12  ; [pp+0x11340] Obj!VerticalDirection@a2aab1
    //     0x727914: ldr             x2, [x2, #0x340]
    // 0x727918: StoreField: r1->field_23 = r2
    //     0x727918: stur            w2, [x1, #0x23]
    // 0x72791c: r2 = Instance_Clip
    //     0x72791c: add             x2, PP, #0x11, lsl #12  ; [pp+0x11348] Obj!Clip@a2d911
    //     0x727920: ldr             x2, [x2, #0x348]
    // 0x727924: StoreField: r1->field_2b = r2
    //     0x727924: stur            w2, [x1, #0x2b]
    // 0x727928: StoreField: r1->field_2f = rZR
    //     0x727928: stur            xzr, [x1, #0x2f]
    // 0x72792c: ldur            x2, [fp, #-0x20]
    // 0x727930: StoreField: r1->field_b = r2
    //     0x727930: stur            w2, [x1, #0xb]
    // 0x727934: r0 = SingleChildScrollView()
    //     0x727934: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x727938: mov             x1, x0
    // 0x72793c: r0 = Instance_Axis
    //     0x72793c: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x727940: stur            x1, [fp, #-0x20]
    // 0x727944: StoreField: r1->field_b = r0
    //     0x727944: stur            w0, [x1, #0xb]
    // 0x727948: r0 = false
    //     0x727948: add             x0, NULL, #0x30  ; false
    // 0x72794c: StoreField: r1->field_f = r0
    //     0x72794c: stur            w0, [x1, #0xf]
    // 0x727950: ldur            x2, [fp, #-0x18]
    // 0x727954: StoreField: r1->field_23 = r2
    //     0x727954: stur            w2, [x1, #0x23]
    // 0x727958: r2 = Instance_DragStartBehavior
    //     0x727958: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72795c: StoreField: r1->field_27 = r2
    //     0x72795c: stur            w2, [x1, #0x27]
    // 0x727960: r2 = Instance_Clip
    //     0x727960: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x727964: ldr             x2, [x2, #0x2d8]
    // 0x727968: StoreField: r1->field_2b = r2
    //     0x727968: stur            w2, [x1, #0x2b]
    // 0x72796c: r2 = Instance_HitTestBehavior
    //     0x72796c: add             x2, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x727970: ldr             x2, [x2, #0xe20]
    // 0x727974: StoreField: r1->field_2f = r2
    //     0x727974: stur            w2, [x1, #0x2f]
    // 0x727978: r2 = LoadStaticField(0x103c)
    //     0x727978: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x72797c: ldr             x2, [x2, #0x2078]
    // 0x727980: stur            x2, [fp, #-0x18]
    // 0x727984: r0 = TextStyle()
    //     0x727984: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x727988: mov             x1, x0
    // 0x72798c: r0 = true
    //     0x72798c: add             x0, NULL, #0x20  ; true
    // 0x727990: stur            x1, [fp, #-0x28]
    // 0x727994: StoreField: r1->field_7 = r0
    //     0x727994: stur            w0, [x1, #7]
    // 0x727998: ldur            x0, [fp, #-0x18]
    // 0x72799c: StoreField: r1->field_b = r0
    //     0x72799c: stur            w0, [x1, #0xb]
    // 0x7279a0: r0 = Text()
    //     0x7279a0: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7279a4: mov             x1, x0
    // 0x7279a8: r0 = "İptal"
    //     0x7279a8: add             x0, PP, #0x20, lsl #12  ; [pp+0x204e0] "İptal"
    //     0x7279ac: ldr             x0, [x0, #0x4e0]
    // 0x7279b0: stur            x1, [fp, #-0x18]
    // 0x7279b4: StoreField: r1->field_b = r0
    //     0x7279b4: stur            w0, [x1, #0xb]
    // 0x7279b8: ldur            x0, [fp, #-0x28]
    // 0x7279bc: StoreField: r1->field_13 = r0
    //     0x7279bc: stur            w0, [x1, #0x13]
    // 0x7279c0: r0 = IconButton()
    //     0x7279c0: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7279c4: mov             x3, x0
    // 0x7279c8: r0 = 50.000000
    //     0x7279c8: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x7279cc: ldr             x0, [x0, #0xa48]
    // 0x7279d0: stur            x3, [fp, #-0x28]
    // 0x7279d4: StoreField: r3->field_b = r0
    //     0x7279d4: stur            w0, [x3, #0xb]
    // 0x7279d8: ldur            x2, [fp, #-0x10]
    // 0x7279dc: r1 = Function '<anonymous closure>':.
    //     0x7279dc: add             x1, PP, #0x20, lsl #12  ; [pp+0x204e8] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x7279e0: ldr             x1, [x1, #0x4e8]
    // 0x7279e4: r0 = AllocateClosure()
    //     0x7279e4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7279e8: mov             x1, x0
    // 0x7279ec: ldur            x0, [fp, #-0x28]
    // 0x7279f0: StoreField: r0->field_3b = r1
    //     0x7279f0: stur            w1, [x0, #0x3b]
    // 0x7279f4: r3 = false
    //     0x7279f4: add             x3, NULL, #0x30  ; false
    // 0x7279f8: StoreField: r0->field_4f = r3
    //     0x7279f8: stur            w3, [x0, #0x4f]
    // 0x7279fc: ldur            x1, [fp, #-0x18]
    // 0x727a00: StoreField: r0->field_1f = r1
    //     0x727a00: stur            w1, [x0, #0x1f]
    // 0x727a04: r1 = Instance__IconButtonVariant
    //     0x727a04: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x727a08: ldr             x1, [x1, #0x1b8]
    // 0x727a0c: StoreField: r0->field_6f = r1
    //     0x727a0c: stur            w1, [x0, #0x6f]
    // 0x727a10: r1 = Null
    //     0x727a10: mov             x1, NULL
    // 0x727a14: r2 = 2
    //     0x727a14: mov             x2, #2
    // 0x727a18: r0 = AllocateArray()
    //     0x727a18: bl              #0x9280a0  ; AllocateArrayStub
    // 0x727a1c: mov             x2, x0
    // 0x727a20: ldur            x0, [fp, #-0x28]
    // 0x727a24: stur            x2, [fp, #-0x10]
    // 0x727a28: StoreField: r2->field_f = r0
    //     0x727a28: stur            w0, [x2, #0xf]
    // 0x727a2c: r1 = <Widget>
    //     0x727a2c: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x727a30: r0 = AllocateGrowableArray()
    //     0x727a30: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x727a34: mov             x1, x0
    // 0x727a38: ldur            x0, [fp, #-0x10]
    // 0x727a3c: stur            x1, [fp, #-0x18]
    // 0x727a40: StoreField: r1->field_f = r0
    //     0x727a40: stur            w0, [x1, #0xf]
    // 0x727a44: r0 = 2
    //     0x727a44: mov             x0, #2
    // 0x727a48: StoreField: r1->field_b = r0
    //     0x727a48: stur            w0, [x1, #0xb]
    // 0x727a4c: r0 = AlertDialog()
    //     0x727a4c: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x727a50: r1 = Instance_Text
    //     0x727a50: add             x1, PP, #0x20, lsl #12  ; [pp+0x204f0] Obj!Text@a1c8f1
    //     0x727a54: ldr             x1, [x1, #0x4f0]
    // 0x727a58: StoreField: r0->field_f = r1
    //     0x727a58: stur            w1, [x0, #0xf]
    // 0x727a5c: ldur            x1, [fp, #-0x20]
    // 0x727a60: StoreField: r0->field_1b = r1
    //     0x727a60: stur            w1, [x0, #0x1b]
    // 0x727a64: ldur            x1, [fp, #-0x18]
    // 0x727a68: StoreField: r0->field_27 = r1
    //     0x727a68: stur            w1, [x0, #0x27]
    // 0x727a6c: ldur            x1, [fp, #-8]
    // 0x727a70: StoreField: r0->field_5f = r1
    //     0x727a70: stur            w1, [x0, #0x5f]
    // 0x727a74: r1 = false
    //     0x727a74: add             x1, NULL, #0x30  ; false
    // 0x727a78: StoreField: r0->field_6b = r1
    //     0x727a78: stur            w1, [x0, #0x6b]
    // 0x727a7c: LeaveFrame
    //     0x727a7c: mov             SP, fp
    //     0x727a80: ldp             fp, lr, [SP], #0x10
    // 0x727a84: ret
    //     0x727a84: ret             
    // 0x727a88: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727a88: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727a8c: b               #0x72773c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x727a90, size: 0x74
    // 0x727a90: EnterFrame
    //     0x727a90: stp             fp, lr, [SP, #-0x10]!
    //     0x727a94: mov             fp, SP
    // 0x727a98: AllocStack(0x18)
    //     0x727a98: sub             SP, SP, #0x18
    // 0x727a9c: SetupParameters([dynamic _ /* r0 */])
    //     0x727a9c: ldr             x0, [fp, #0x10]
    //     0x727aa0: ldur            w1, [x0, #0x17]
    //     0x727aa4: add             x1, x1, HEAP, lsl #32
    //     0x727aa8: stur            x1, [fp, #-8]
    // 0x727aac: CheckStackOverflow
    //     0x727aac: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727ab0: cmp             SP, x16
    //     0x727ab4: b.ls            #0x727afc
    // 0x727ab8: LoadField: r0 = r1->field_f
    //     0x727ab8: ldur            w0, [x1, #0xf]
    // 0x727abc: DecompressPointer r0
    //     0x727abc: add             x0, x0, HEAP, lsl #32
    // 0x727ac0: r16 = <Object?>
    //     0x727ac0: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x727ac4: stp             x0, x16, [SP]
    // 0x727ac8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x727ac8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x727acc: r0 = pop()
    //     0x727acc: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x727ad0: ldur            x0, [fp, #-8]
    // 0x727ad4: LoadField: r1 = r0->field_b
    //     0x727ad4: ldur            w1, [x0, #0xb]
    // 0x727ad8: DecompressPointer r1
    //     0x727ad8: add             x1, x1, HEAP, lsl #32
    // 0x727adc: LoadField: r0 = r1->field_f
    //     0x727adc: ldur            w0, [x1, #0xf]
    // 0x727ae0: DecompressPointer r0
    //     0x727ae0: add             x0, x0, HEAP, lsl #32
    // 0x727ae4: mov             x1, x0
    // 0x727ae8: r0 = arkaplanRengiDegistir()
    //     0x727ae8: bl              #0x727b04  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::arkaplanRengiDegistir
    // 0x727aec: r0 = Null
    //     0x727aec: mov             x0, NULL
    // 0x727af0: LeaveFrame
    //     0x727af0: mov             SP, fp
    //     0x727af4: ldp             fp, lr, [SP], #0x10
    // 0x727af8: ret
    //     0x727af8: ret             
    // 0x727afc: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727afc: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727b00: b               #0x727ab8
  }
  _ arkaplanRengiDegistir(/* No info */) {
    // ** addr: 0x727b04, size: 0x88
    // 0x727b04: EnterFrame
    //     0x727b04: stp             fp, lr, [SP, #-0x10]!
    //     0x727b08: mov             fp, SP
    // 0x727b0c: AllocStack(0x28)
    //     0x727b0c: sub             SP, SP, #0x28
    // 0x727b10: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x8 */)
    //     0x727b10: stur            x1, [fp, #-8]
    // 0x727b14: CheckStackOverflow
    //     0x727b14: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727b18: cmp             SP, x16
    //     0x727b1c: b.ls            #0x727b80
    // 0x727b20: r1 = 1
    //     0x727b20: mov             x1, #1
    // 0x727b24: r0 = AllocateContext()
    //     0x727b24: bl              #0x927010  ; AllocateContextStub
    // 0x727b28: mov             x1, x0
    // 0x727b2c: ldur            x0, [fp, #-8]
    // 0x727b30: StoreField: r1->field_f = r0
    //     0x727b30: stur            w0, [x1, #0xf]
    // 0x727b34: LoadField: r3 = r0->field_f
    //     0x727b34: ldur            w3, [x0, #0xf]
    // 0x727b38: DecompressPointer r3
    //     0x727b38: add             x3, x3, HEAP, lsl #32
    // 0x727b3c: stur            x3, [fp, #-0x10]
    // 0x727b40: cmp             w3, NULL
    // 0x727b44: b.eq            #0x727b88
    // 0x727b48: mov             x2, x1
    // 0x727b4c: r1 = Function '<anonymous closure>':.
    //     0x727b4c: add             x1, PP, #0x20, lsl #12  ; [pp+0x204f8] AnonymousClosure: (0x727b8c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::arkaplanRengiDegistir (0x727b04)
    //     0x727b50: ldr             x1, [x1, #0x4f8]
    // 0x727b54: r0 = AllocateClosure()
    //     0x727b54: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727b58: r16 = <void?>
    //     0x727b58: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x727b5c: stp             x0, x16, [SP, #8]
    // 0x727b60: ldur            x16, [fp, #-0x10]
    // 0x727b64: str             x16, [SP]
    // 0x727b68: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x727b68: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x727b6c: r0 = showDialog()
    //     0x727b6c: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x727b70: r0 = Null
    //     0x727b70: mov             x0, NULL
    // 0x727b74: LeaveFrame
    //     0x727b74: mov             SP, fp
    //     0x727b78: ldp             fp, lr, [SP], #0x10
    // 0x727b7c: ret
    //     0x727b7c: ret             
    // 0x727b80: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727b80: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727b84: b               #0x727b20
    // 0x727b88: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x727b88: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x727b8c, size: 0x2a4
    // 0x727b8c: EnterFrame
    //     0x727b8c: stp             fp, lr, [SP, #-0x10]!
    //     0x727b90: mov             fp, SP
    // 0x727b94: AllocStack(0x28)
    //     0x727b94: sub             SP, SP, #0x28
    // 0x727b98: SetupParameters([dynamic _ /* r0 */])
    //     0x727b98: ldr             x0, [fp, #0x18]
    //     0x727b9c: ldur            w1, [x0, #0x17]
    //     0x727ba0: add             x1, x1, HEAP, lsl #32
    //     0x727ba4: stur            x1, [fp, #-8]
    // 0x727ba8: CheckStackOverflow
    //     0x727ba8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727bac: cmp             SP, x16
    //     0x727bb0: b.ls            #0x727e28
    // 0x727bb4: r1 = 1
    //     0x727bb4: mov             x1, #1
    // 0x727bb8: r0 = AllocateContext()
    //     0x727bb8: bl              #0x927010  ; AllocateContextStub
    // 0x727bbc: mov             x1, x0
    // 0x727bc0: ldur            x0, [fp, #-8]
    // 0x727bc4: stur            x1, [fp, #-0x10]
    // 0x727bc8: StoreField: r1->field_b = r0
    //     0x727bc8: stur            w0, [x1, #0xb]
    // 0x727bcc: ldr             x0, [fp, #0x10]
    // 0x727bd0: StoreField: r1->field_f = r0
    //     0x727bd0: stur            w0, [x1, #0xf]
    // 0x727bd4: r0 = Radius()
    //     0x727bd4: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x727bd8: stur            x0, [fp, #-8]
    // 0x727bdc: StoreField: r0->field_7 = rZR
    //     0x727bdc: stur            xzr, [x0, #7]
    // 0x727be0: StoreField: r0->field_f = rZR
    //     0x727be0: stur            xzr, [x0, #0xf]
    // 0x727be4: r0 = BorderRadius()
    //     0x727be4: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x727be8: mov             x1, x0
    // 0x727bec: ldur            x0, [fp, #-8]
    // 0x727bf0: stur            x1, [fp, #-0x18]
    // 0x727bf4: StoreField: r1->field_7 = r0
    //     0x727bf4: stur            w0, [x1, #7]
    // 0x727bf8: StoreField: r1->field_b = r0
    //     0x727bf8: stur            w0, [x1, #0xb]
    // 0x727bfc: StoreField: r1->field_f = r0
    //     0x727bfc: stur            w0, [x1, #0xf]
    // 0x727c00: StoreField: r1->field_13 = r0
    //     0x727c00: stur            w0, [x1, #0x13]
    // 0x727c04: r0 = RoundedRectangleBorder()
    //     0x727c04: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x727c08: mov             x1, x0
    // 0x727c0c: ldur            x0, [fp, #-0x18]
    // 0x727c10: stur            x1, [fp, #-8]
    // 0x727c14: StoreField: r1->field_b = r0
    //     0x727c14: stur            w0, [x1, #0xb]
    // 0x727c18: r0 = Instance_BorderSide
    //     0x727c18: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x727c1c: ldr             x0, [x0, #0xcb8]
    // 0x727c20: StoreField: r1->field_7 = r0
    //     0x727c20: stur            w0, [x1, #7]
    // 0x727c24: r0 = InitLateStaticField(0x1040) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::arkaplan
    //     0x727c24: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x727c28: ldr             x0, [x0, #0x2080]
    //     0x727c2c: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x727c30: cmp             w0, w16
    //     0x727c34: b.ne            #0x727c44
    //     0x727c38: add             x2, PP, #0x20, lsl #12  ; [pp+0x20448] Field <Veriler.arkaplan>: static late (offset: 0x1040)
    //     0x727c3c: ldr             x2, [x2, #0x448]
    //     0x727c40: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x727c44: stur            x0, [fp, #-0x18]
    // 0x727c48: r0 = MaterialColorPicker()
    //     0x727c48: bl              #0x727e30  ; AllocateMaterialColorPickerStub -> MaterialColorPicker (size=0x50)
    // 0x727c4c: mov             x3, x0
    // 0x727c50: ldur            x0, [fp, #-0x18]
    // 0x727c54: stur            x3, [fp, #-0x20]
    // 0x727c58: StoreField: r3->field_b = r0
    //     0x727c58: stur            w0, [x3, #0xb]
    // 0x727c5c: ldur            x2, [fp, #-0x10]
    // 0x727c60: r1 = Function '<anonymous closure>':.
    //     0x727c60: add             x1, PP, #0x20, lsl #12  ; [pp+0x20500] AnonymousClosure: (0x727e3c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::arkaplanRengiDegistir (0x727b04)
    //     0x727c64: ldr             x1, [x1, #0x500]
    // 0x727c68: r0 = AllocateClosure()
    //     0x727c68: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727c6c: mov             x1, x0
    // 0x727c70: ldur            x0, [fp, #-0x20]
    // 0x727c74: StoreField: r0->field_f = r1
    //     0x727c74: stur            w1, [x0, #0xf]
    // 0x727c78: r1 = true
    //     0x727c78: add             x1, NULL, #0x20  ; true
    // 0x727c7c: StoreField: r0->field_1f = r1
    //     0x727c7c: stur            w1, [x0, #0x1f]
    // 0x727c80: r2 = false
    //     0x727c80: add             x2, NULL, #0x30  ; false
    // 0x727c84: StoreField: r0->field_23 = r2
    //     0x727c84: stur            w2, [x0, #0x23]
    // 0x727c88: r3 = Instance_IconData
    //     0x727c88: add             x3, PP, #0x20, lsl #12  ; [pp+0x20508] Obj!IconData@a09c01
    //     0x727c8c: ldr             x3, [x3, #0x508]
    // 0x727c90: StoreField: r0->field_37 = r3
    //     0x727c90: stur            w3, [x0, #0x37]
    // 0x727c94: d0 = 50.000000
    //     0x727c94: ldr             d0, [PP, #0x5d98]  ; [pp+0x5d98] IMM: double(50) from 0x4049000000000000
    // 0x727c98: StoreField: r0->field_27 = d0
    //     0x727c98: stur            d0, [x0, #0x27]
    // 0x727c9c: d0 = 9.000000
    //     0x727c9c: fmov            d0, #9.00000000
    // 0x727ca0: StoreField: r0->field_2f = d0
    //     0x727ca0: stur            d0, [x0, #0x2f]
    // 0x727ca4: r3 = Instance_WrapAlignment
    //     0x727ca4: add             x3, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x727ca8: ldr             x3, [x3, #0x7d8]
    // 0x727cac: StoreField: r0->field_43 = r3
    //     0x727cac: stur            w3, [x0, #0x43]
    // 0x727cb0: r3 = Instance_WrapAlignment
    //     0x727cb0: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1d9c0] Obj!WrapAlignment@a2a211
    //     0x727cb4: ldr             x3, [x3, #0x9c0]
    // 0x727cb8: StoreField: r0->field_47 = r3
    //     0x727cb8: stur            w3, [x0, #0x47]
    // 0x727cbc: r3 = Instance_WrapCrossAlignment
    //     0x727cbc: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1d9e0] Obj!WrapCrossAlignment@a2a171
    //     0x727cc0: ldr             x3, [x3, #0x9e0]
    // 0x727cc4: StoreField: r0->field_4b = r3
    //     0x727cc4: stur            w3, [x0, #0x4b]
    // 0x727cc8: r0 = SingleChildScrollView()
    //     0x727cc8: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x727ccc: mov             x1, x0
    // 0x727cd0: r0 = Instance_Axis
    //     0x727cd0: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x727cd4: stur            x1, [fp, #-0x18]
    // 0x727cd8: StoreField: r1->field_b = r0
    //     0x727cd8: stur            w0, [x1, #0xb]
    // 0x727cdc: r0 = false
    //     0x727cdc: add             x0, NULL, #0x30  ; false
    // 0x727ce0: StoreField: r1->field_f = r0
    //     0x727ce0: stur            w0, [x1, #0xf]
    // 0x727ce4: ldur            x2, [fp, #-0x20]
    // 0x727ce8: StoreField: r1->field_23 = r2
    //     0x727ce8: stur            w2, [x1, #0x23]
    // 0x727cec: r2 = Instance_DragStartBehavior
    //     0x727cec: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x727cf0: StoreField: r1->field_27 = r2
    //     0x727cf0: stur            w2, [x1, #0x27]
    // 0x727cf4: r2 = Instance_Clip
    //     0x727cf4: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x727cf8: ldr             x2, [x2, #0x2d8]
    // 0x727cfc: StoreField: r1->field_2b = r2
    //     0x727cfc: stur            w2, [x1, #0x2b]
    // 0x727d00: r2 = Instance_HitTestBehavior
    //     0x727d00: add             x2, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x727d04: ldr             x2, [x2, #0xe20]
    // 0x727d08: StoreField: r1->field_2f = r2
    //     0x727d08: stur            w2, [x1, #0x2f]
    // 0x727d0c: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x727d0c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x727d10: ldr             x0, [x0, #0x2078]
    //     0x727d14: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x727d18: cmp             w0, w16
    //     0x727d1c: b.ne            #0x727d2c
    //     0x727d20: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x727d24: ldr             x2, [x2, #0x450]
    //     0x727d28: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x727d2c: stur            x0, [fp, #-0x20]
    // 0x727d30: r0 = TextStyle()
    //     0x727d30: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x727d34: mov             x1, x0
    // 0x727d38: r0 = true
    //     0x727d38: add             x0, NULL, #0x20  ; true
    // 0x727d3c: stur            x1, [fp, #-0x28]
    // 0x727d40: StoreField: r1->field_7 = r0
    //     0x727d40: stur            w0, [x1, #7]
    // 0x727d44: ldur            x0, [fp, #-0x20]
    // 0x727d48: StoreField: r1->field_b = r0
    //     0x727d48: stur            w0, [x1, #0xb]
    // 0x727d4c: r0 = Text()
    //     0x727d4c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x727d50: mov             x1, x0
    // 0x727d54: r0 = "Tamam"
    //     0x727d54: add             x0, PP, #0x20, lsl #12  ; [pp+0x20510] "Tamam"
    //     0x727d58: ldr             x0, [x0, #0x510]
    // 0x727d5c: stur            x1, [fp, #-0x20]
    // 0x727d60: StoreField: r1->field_b = r0
    //     0x727d60: stur            w0, [x1, #0xb]
    // 0x727d64: ldur            x0, [fp, #-0x28]
    // 0x727d68: StoreField: r1->field_13 = r0
    //     0x727d68: stur            w0, [x1, #0x13]
    // 0x727d6c: r0 = IconButton()
    //     0x727d6c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x727d70: mov             x3, x0
    // 0x727d74: r0 = 50.000000
    //     0x727d74: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x727d78: ldr             x0, [x0, #0xa48]
    // 0x727d7c: stur            x3, [fp, #-0x28]
    // 0x727d80: StoreField: r3->field_b = r0
    //     0x727d80: stur            w0, [x3, #0xb]
    // 0x727d84: ldur            x2, [fp, #-0x10]
    // 0x727d88: r1 = Function '<anonymous closure>':.
    //     0x727d88: add             x1, PP, #0x20, lsl #12  ; [pp+0x20518] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x727d8c: ldr             x1, [x1, #0x518]
    // 0x727d90: r0 = AllocateClosure()
    //     0x727d90: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727d94: mov             x1, x0
    // 0x727d98: ldur            x0, [fp, #-0x28]
    // 0x727d9c: StoreField: r0->field_3b = r1
    //     0x727d9c: stur            w1, [x0, #0x3b]
    // 0x727da0: r3 = false
    //     0x727da0: add             x3, NULL, #0x30  ; false
    // 0x727da4: StoreField: r0->field_4f = r3
    //     0x727da4: stur            w3, [x0, #0x4f]
    // 0x727da8: ldur            x1, [fp, #-0x20]
    // 0x727dac: StoreField: r0->field_1f = r1
    //     0x727dac: stur            w1, [x0, #0x1f]
    // 0x727db0: r1 = Instance__IconButtonVariant
    //     0x727db0: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x727db4: ldr             x1, [x1, #0x1b8]
    // 0x727db8: StoreField: r0->field_6f = r1
    //     0x727db8: stur            w1, [x0, #0x6f]
    // 0x727dbc: r1 = Null
    //     0x727dbc: mov             x1, NULL
    // 0x727dc0: r2 = 2
    //     0x727dc0: mov             x2, #2
    // 0x727dc4: r0 = AllocateArray()
    //     0x727dc4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x727dc8: mov             x2, x0
    // 0x727dcc: ldur            x0, [fp, #-0x28]
    // 0x727dd0: stur            x2, [fp, #-0x10]
    // 0x727dd4: StoreField: r2->field_f = r0
    //     0x727dd4: stur            w0, [x2, #0xf]
    // 0x727dd8: r1 = <Widget>
    //     0x727dd8: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x727ddc: r0 = AllocateGrowableArray()
    //     0x727ddc: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x727de0: mov             x1, x0
    // 0x727de4: ldur            x0, [fp, #-0x10]
    // 0x727de8: stur            x1, [fp, #-0x20]
    // 0x727dec: StoreField: r1->field_f = r0
    //     0x727dec: stur            w0, [x1, #0xf]
    // 0x727df0: r0 = 2
    //     0x727df0: mov             x0, #2
    // 0x727df4: StoreField: r1->field_b = r0
    //     0x727df4: stur            w0, [x1, #0xb]
    // 0x727df8: r0 = AlertDialog()
    //     0x727df8: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x727dfc: ldur            x1, [fp, #-0x18]
    // 0x727e00: StoreField: r0->field_1b = r1
    //     0x727e00: stur            w1, [x0, #0x1b]
    // 0x727e04: ldur            x1, [fp, #-0x20]
    // 0x727e08: StoreField: r0->field_27 = r1
    //     0x727e08: stur            w1, [x0, #0x27]
    // 0x727e0c: ldur            x1, [fp, #-8]
    // 0x727e10: StoreField: r0->field_5f = r1
    //     0x727e10: stur            w1, [x0, #0x5f]
    // 0x727e14: r1 = false
    //     0x727e14: add             x1, NULL, #0x30  ; false
    // 0x727e18: StoreField: r0->field_6b = r1
    //     0x727e18: stur            w1, [x0, #0x6b]
    // 0x727e1c: LeaveFrame
    //     0x727e1c: mov             SP, fp
    //     0x727e20: ldp             fp, lr, [SP], #0x10
    // 0x727e24: ret
    //     0x727e24: ret             
    // 0x727e28: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727e28: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727e2c: b               #0x727bb4
  }
  [closure] Future<void> <anonymous closure>(dynamic, Color) async {
    // ** addr: 0x727e3c, size: 0x7c
    // 0x727e3c: EnterFrame
    //     0x727e3c: stp             fp, lr, [SP, #-0x10]!
    //     0x727e40: mov             fp, SP
    // 0x727e44: AllocStack(0x18)
    //     0x727e44: sub             SP, SP, #0x18
    // 0x727e48: SetupParameters(_ZikirCekState this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x727e48: stur            NULL, [fp, #-8]
    //     0x727e4c: mov             x0, #0
    //     0x727e50: add             x1, fp, w0, sxtw #2
    //     0x727e54: ldr             x1, [x1, #0x18]
    //     0x727e58: add             x2, fp, w0, sxtw #2
    //     0x727e5c: ldr             x2, [x2, #0x10]
    //     0x727e60: stur            x2, [fp, #-0x18]
    //     0x727e64: ldur            w3, [x1, #0x17]
    //     0x727e68: add             x3, x3, HEAP, lsl #32
    //     0x727e6c: stur            x3, [fp, #-0x10]
    // 0x727e70: CheckStackOverflow
    //     0x727e70: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727e74: cmp             SP, x16
    //     0x727e78: b.ls            #0x727eb0
    // 0x727e7c: InitAsync() -> Future<void?>
    //     0x727e7c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x727e80: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x727e84: ldur            x0, [fp, #-0x10]
    // 0x727e88: LoadField: r1 = r0->field_b
    //     0x727e88: ldur            w1, [x0, #0xb]
    // 0x727e8c: DecompressPointer r1
    //     0x727e8c: add             x1, x1, HEAP, lsl #32
    // 0x727e90: LoadField: r0 = r1->field_f
    //     0x727e90: ldur            w0, [x1, #0xf]
    // 0x727e94: DecompressPointer r0
    //     0x727e94: add             x0, x0, HEAP, lsl #32
    // 0x727e98: mov             x1, x0
    // 0x727e9c: ldur            x2, [fp, #-0x18]
    // 0x727ea0: r3 = false
    //     0x727ea0: add             x3, NULL, #0x30  ; false
    // 0x727ea4: r0 = renkDegistirMethod()
    //     0x727ea4: bl              #0x727eb8  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistirMethod
    // 0x727ea8: r0 = Null
    //     0x727ea8: mov             x0, NULL
    // 0x727eac: r0 = ReturnAsyncNotFuture()
    //     0x727eac: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x727eb0: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727eb0: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727eb4: b               #0x727e7c
  }
  _ renkDegistirMethod(/* No info */) async {
    // ** addr: 0x727eb8, size: 0x124
    // 0x727eb8: EnterFrame
    //     0x727eb8: stp             fp, lr, [SP, #-0x10]!
    //     0x727ebc: mov             fp, SP
    // 0x727ec0: AllocStack(0x28)
    //     0x727ec0: sub             SP, SP, #0x28
    // 0x727ec4: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */, dynamic _ /* r2 => r2, fp-0x18 */, dynamic _ /* r3 => r3, fp-0x20 */)
    //     0x727ec4: stur            NULL, [fp, #-8]
    //     0x727ec8: stur            x1, [fp, #-0x10]
    //     0x727ecc: stur            x2, [fp, #-0x18]
    //     0x727ed0: stur            x3, [fp, #-0x20]
    // 0x727ed4: CheckStackOverflow
    //     0x727ed4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x727ed8: cmp             SP, x16
    //     0x727edc: b.ls            #0x727fd4
    // 0x727ee0: r1 = 1
    //     0x727ee0: mov             x1, #1
    // 0x727ee4: r0 = AllocateContext()
    //     0x727ee4: bl              #0x927010  ; AllocateContextStub
    // 0x727ee8: mov             x1, x0
    // 0x727eec: ldur            x0, [fp, #-0x18]
    // 0x727ef0: stur            x1, [fp, #-0x28]
    // 0x727ef4: StoreField: r1->field_f = r0
    //     0x727ef4: stur            w0, [x1, #0xf]
    // 0x727ef8: InitAsync() -> Future<void?>
    //     0x727ef8: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x727efc: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x727f00: r0 = getInstance()
    //     0x727f00: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x727f04: mov             x1, x0
    // 0x727f08: stur            x1, [fp, #-0x18]
    // 0x727f0c: r0 = Await()
    //     0x727f0c: bl              #0x3dd188  ; AwaitStub
    // 0x727f10: mov             x3, x0
    // 0x727f14: ldur            x0, [fp, #-0x20]
    // 0x727f18: stur            x3, [fp, #-0x18]
    // 0x727f1c: tbnz            w0, #4, #0x727f78
    // 0x727f20: ldur            x0, [fp, #-0x28]
    // 0x727f24: mov             x2, x0
    // 0x727f28: r1 = Function '<anonymous closure>':.
    //     0x727f28: add             x1, PP, #0x20, lsl #12  ; [pp+0x20520] AnonymousClosure: (0x728000), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistirMethod (0x727eb8)
    //     0x727f2c: ldr             x1, [x1, #0x520]
    // 0x727f30: r0 = AllocateClosure()
    //     0x727f30: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727f34: ldur            x1, [fp, #-0x10]
    // 0x727f38: mov             x2, x0
    // 0x727f3c: r0 = setState()
    //     0x727f3c: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x727f40: ldur            x0, [fp, #-0x28]
    // 0x727f44: LoadField: r1 = r0->field_f
    //     0x727f44: ldur            w1, [x0, #0xf]
    // 0x727f48: DecompressPointer r1
    //     0x727f48: add             x1, x1, HEAP, lsl #32
    // 0x727f4c: r0 = LoadClassIdInstr(r1)
    //     0x727f4c: ldur            x0, [x1, #-1]
    //     0x727f50: ubfx            x0, x0, #0xc, #0x14
    // 0x727f54: r0 = GDT[cid_x0 + -0x8ce]()
    //     0x727f54: sub             lr, x0, #0x8ce
    //     0x727f58: ldr             lr, [x21, lr, lsl #3]
    //     0x727f5c: blr             lr
    // 0x727f60: ldur            x1, [fp, #-0x18]
    // 0x727f64: mov             x3, x0
    // 0x727f68: r2 = "renk"
    //     0x727f68: add             x2, PP, #0x20, lsl #12  ; [pp+0x20528] "renk"
    //     0x727f6c: ldr             x2, [x2, #0x528]
    // 0x727f70: r0 = setInt()
    //     0x727f70: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x727f74: b               #0x727fcc
    // 0x727f78: ldur            x0, [fp, #-0x28]
    // 0x727f7c: mov             x2, x0
    // 0x727f80: r1 = Function '<anonymous closure>':.
    //     0x727f80: add             x1, PP, #0x20, lsl #12  ; [pp+0x20530] AnonymousClosure: (0x727fdc), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistirMethod (0x727eb8)
    //     0x727f84: ldr             x1, [x1, #0x530]
    // 0x727f88: r0 = AllocateClosure()
    //     0x727f88: bl              #0x9273d4  ; AllocateClosureStub
    // 0x727f8c: ldur            x1, [fp, #-0x10]
    // 0x727f90: mov             x2, x0
    // 0x727f94: r0 = setState()
    //     0x727f94: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x727f98: ldur            x0, [fp, #-0x28]
    // 0x727f9c: LoadField: r1 = r0->field_f
    //     0x727f9c: ldur            w1, [x0, #0xf]
    // 0x727fa0: DecompressPointer r1
    //     0x727fa0: add             x1, x1, HEAP, lsl #32
    // 0x727fa4: r0 = LoadClassIdInstr(r1)
    //     0x727fa4: ldur            x0, [x1, #-1]
    //     0x727fa8: ubfx            x0, x0, #0xc, #0x14
    // 0x727fac: r0 = GDT[cid_x0 + -0x8ce]()
    //     0x727fac: sub             lr, x0, #0x8ce
    //     0x727fb0: ldr             lr, [x21, lr, lsl #3]
    //     0x727fb4: blr             lr
    // 0x727fb8: ldur            x1, [fp, #-0x18]
    // 0x727fbc: mov             x3, x0
    // 0x727fc0: r2 = "arkaplan"
    //     0x727fc0: add             x2, PP, #0x20, lsl #12  ; [pp+0x20538] "arkaplan"
    //     0x727fc4: ldr             x2, [x2, #0x538]
    // 0x727fc8: r0 = setInt()
    //     0x727fc8: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x727fcc: r0 = Null
    //     0x727fcc: mov             x0, NULL
    // 0x727fd0: r0 = ReturnAsyncNotFuture()
    //     0x727fd0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x727fd4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x727fd4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x727fd8: b               #0x727ee0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x727fdc, size: 0x24
    // 0x727fdc: ldr             x1, [SP]
    // 0x727fe0: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x727fe0: ldur            w2, [x1, #0x17]
    // 0x727fe4: DecompressPointer r2
    //     0x727fe4: add             x2, x2, HEAP, lsl #32
    // 0x727fe8: LoadField: r1 = r2->field_f
    //     0x727fe8: ldur            w1, [x2, #0xf]
    // 0x727fec: DecompressPointer r1
    //     0x727fec: add             x1, x1, HEAP, lsl #32
    // 0x727ff0: StoreStaticField(0x1040, r1)
    //     0x727ff0: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x727ff4: str             x1, [x2, #0x2080]
    // 0x727ff8: r0 = Null
    //     0x727ff8: mov             x0, NULL
    // 0x727ffc: ret
    //     0x727ffc: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x728000, size: 0x24
    // 0x728000: ldr             x1, [SP]
    // 0x728004: ArrayLoad: r2 = r1[0]  ; List_4
    //     0x728004: ldur            w2, [x1, #0x17]
    // 0x728008: DecompressPointer r2
    //     0x728008: add             x2, x2, HEAP, lsl #32
    // 0x72800c: LoadField: r1 = r2->field_f
    //     0x72800c: ldur            w1, [x2, #0xf]
    // 0x728010: DecompressPointer r1
    //     0x728010: add             x1, x1, HEAP, lsl #32
    // 0x728014: StoreStaticField(0x103c, r1)
    //     0x728014: ldr             x2, [THR, #0x78]  ; THR::field_table_values
    //     0x728018: str             x1, [x2, #0x2078]
    // 0x72801c: r0 = Null
    //     0x72801c: mov             x0, NULL
    // 0x728020: ret
    //     0x728020: ret             
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x728024, size: 0x74
    // 0x728024: EnterFrame
    //     0x728024: stp             fp, lr, [SP, #-0x10]!
    //     0x728028: mov             fp, SP
    // 0x72802c: AllocStack(0x18)
    //     0x72802c: sub             SP, SP, #0x18
    // 0x728030: SetupParameters([dynamic _ /* r0 */])
    //     0x728030: ldr             x0, [fp, #0x10]
    //     0x728034: ldur            w1, [x0, #0x17]
    //     0x728038: add             x1, x1, HEAP, lsl #32
    //     0x72803c: stur            x1, [fp, #-8]
    // 0x728040: CheckStackOverflow
    //     0x728040: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728044: cmp             SP, x16
    //     0x728048: b.ls            #0x728090
    // 0x72804c: LoadField: r0 = r1->field_f
    //     0x72804c: ldur            w0, [x1, #0xf]
    // 0x728050: DecompressPointer r0
    //     0x728050: add             x0, x0, HEAP, lsl #32
    // 0x728054: r16 = <Object?>
    //     0x728054: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x728058: stp             x0, x16, [SP]
    // 0x72805c: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x72805c: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x728060: r0 = pop()
    //     0x728060: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x728064: ldur            x0, [fp, #-8]
    // 0x728068: LoadField: r1 = r0->field_b
    //     0x728068: ldur            w1, [x0, #0xb]
    // 0x72806c: DecompressPointer r1
    //     0x72806c: add             x1, x1, HEAP, lsl #32
    // 0x728070: LoadField: r0 = r1->field_f
    //     0x728070: ldur            w0, [x1, #0xf]
    // 0x728074: DecompressPointer r0
    //     0x728074: add             x0, x0, HEAP, lsl #32
    // 0x728078: mov             x1, x0
    // 0x72807c: r0 = temaRengiDegistir()
    //     0x72807c: bl              #0x728098  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::temaRengiDegistir
    // 0x728080: r0 = Null
    //     0x728080: mov             x0, NULL
    // 0x728084: LeaveFrame
    //     0x728084: mov             SP, fp
    //     0x728088: ldp             fp, lr, [SP], #0x10
    // 0x72808c: ret
    //     0x72808c: ret             
    // 0x728090: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728090: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728094: b               #0x72804c
  }
  _ temaRengiDegistir(/* No info */) {
    // ** addr: 0x728098, size: 0x88
    // 0x728098: EnterFrame
    //     0x728098: stp             fp, lr, [SP, #-0x10]!
    //     0x72809c: mov             fp, SP
    // 0x7280a0: AllocStack(0x28)
    //     0x7280a0: sub             SP, SP, #0x28
    // 0x7280a4: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x8 */)
    //     0x7280a4: stur            x1, [fp, #-8]
    // 0x7280a8: CheckStackOverflow
    //     0x7280a8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7280ac: cmp             SP, x16
    //     0x7280b0: b.ls            #0x728114
    // 0x7280b4: r1 = 1
    //     0x7280b4: mov             x1, #1
    // 0x7280b8: r0 = AllocateContext()
    //     0x7280b8: bl              #0x927010  ; AllocateContextStub
    // 0x7280bc: mov             x1, x0
    // 0x7280c0: ldur            x0, [fp, #-8]
    // 0x7280c4: StoreField: r1->field_f = r0
    //     0x7280c4: stur            w0, [x1, #0xf]
    // 0x7280c8: LoadField: r3 = r0->field_f
    //     0x7280c8: ldur            w3, [x0, #0xf]
    // 0x7280cc: DecompressPointer r3
    //     0x7280cc: add             x3, x3, HEAP, lsl #32
    // 0x7280d0: stur            x3, [fp, #-0x10]
    // 0x7280d4: cmp             w3, NULL
    // 0x7280d8: b.eq            #0x72811c
    // 0x7280dc: mov             x2, x1
    // 0x7280e0: r1 = Function '<anonymous closure>':.
    //     0x7280e0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20540] AnonymousClosure: (0x728120), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::temaRengiDegistir (0x728098)
    //     0x7280e4: ldr             x1, [x1, #0x540]
    // 0x7280e8: r0 = AllocateClosure()
    //     0x7280e8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7280ec: r16 = <void?>
    //     0x7280ec: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x7280f0: stp             x0, x16, [SP, #8]
    // 0x7280f4: ldur            x16, [fp, #-0x10]
    // 0x7280f8: str             x16, [SP]
    // 0x7280fc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7280fc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x728100: r0 = showDialog()
    //     0x728100: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x728104: r0 = Null
    //     0x728104: mov             x0, NULL
    // 0x728108: LeaveFrame
    //     0x728108: mov             SP, fp
    //     0x72810c: ldp             fp, lr, [SP], #0x10
    // 0x728110: ret
    //     0x728110: ret             
    // 0x728114: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728114: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728118: b               #0x7280b4
    // 0x72811c: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x72811c: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x728120, size: 0x280
    // 0x728120: EnterFrame
    //     0x728120: stp             fp, lr, [SP, #-0x10]!
    //     0x728124: mov             fp, SP
    // 0x728128: AllocStack(0x28)
    //     0x728128: sub             SP, SP, #0x28
    // 0x72812c: SetupParameters([dynamic _ /* r0 */])
    //     0x72812c: ldr             x0, [fp, #0x18]
    //     0x728130: ldur            w1, [x0, #0x17]
    //     0x728134: add             x1, x1, HEAP, lsl #32
    //     0x728138: stur            x1, [fp, #-8]
    // 0x72813c: CheckStackOverflow
    //     0x72813c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728140: cmp             SP, x16
    //     0x728144: b.ls            #0x728398
    // 0x728148: r1 = 1
    //     0x728148: mov             x1, #1
    // 0x72814c: r0 = AllocateContext()
    //     0x72814c: bl              #0x927010  ; AllocateContextStub
    // 0x728150: mov             x1, x0
    // 0x728154: ldur            x0, [fp, #-8]
    // 0x728158: stur            x1, [fp, #-0x10]
    // 0x72815c: StoreField: r1->field_b = r0
    //     0x72815c: stur            w0, [x1, #0xb]
    // 0x728160: ldr             x0, [fp, #0x10]
    // 0x728164: StoreField: r1->field_f = r0
    //     0x728164: stur            w0, [x1, #0xf]
    // 0x728168: r0 = Radius()
    //     0x728168: bl              #0x4adda4  ; AllocateRadiusStub -> Radius (size=0x18)
    // 0x72816c: stur            x0, [fp, #-8]
    // 0x728170: StoreField: r0->field_7 = rZR
    //     0x728170: stur            xzr, [x0, #7]
    // 0x728174: StoreField: r0->field_f = rZR
    //     0x728174: stur            xzr, [x0, #0xf]
    // 0x728178: r0 = BorderRadius()
    //     0x728178: bl              #0x4acf34  ; AllocateBorderRadiusStub -> BorderRadius (size=0x18)
    // 0x72817c: mov             x1, x0
    // 0x728180: ldur            x0, [fp, #-8]
    // 0x728184: stur            x1, [fp, #-0x18]
    // 0x728188: StoreField: r1->field_7 = r0
    //     0x728188: stur            w0, [x1, #7]
    // 0x72818c: StoreField: r1->field_b = r0
    //     0x72818c: stur            w0, [x1, #0xb]
    // 0x728190: StoreField: r1->field_f = r0
    //     0x728190: stur            w0, [x1, #0xf]
    // 0x728194: StoreField: r1->field_13 = r0
    //     0x728194: stur            w0, [x1, #0x13]
    // 0x728198: r0 = RoundedRectangleBorder()
    //     0x728198: bl              #0x5679b8  ; AllocateRoundedRectangleBorderStub -> RoundedRectangleBorder (size=0x10)
    // 0x72819c: mov             x1, x0
    // 0x7281a0: ldur            x0, [fp, #-0x18]
    // 0x7281a4: stur            x1, [fp, #-8]
    // 0x7281a8: StoreField: r1->field_b = r0
    //     0x7281a8: stur            w0, [x1, #0xb]
    // 0x7281ac: r0 = Instance_BorderSide
    //     0x7281ac: add             x0, PP, #0xc, lsl #12  ; [pp+0xccb8] Obj!BorderSide@a19471
    //     0x7281b0: ldr             x0, [x0, #0xcb8]
    // 0x7281b4: StoreField: r1->field_7 = r0
    //     0x7281b4: stur            w0, [x1, #7]
    // 0x7281b8: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x7281b8: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7281bc: ldr             x0, [x0, #0x2078]
    //     0x7281c0: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7281c4: cmp             w0, w16
    //     0x7281c8: b.ne            #0x7281d8
    //     0x7281cc: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x7281d0: ldr             x2, [x2, #0x450]
    //     0x7281d4: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x7281d8: stur            x0, [fp, #-0x18]
    // 0x7281dc: r0 = MaterialColorPicker()
    //     0x7281dc: bl              #0x727e30  ; AllocateMaterialColorPickerStub -> MaterialColorPicker (size=0x50)
    // 0x7281e0: mov             x3, x0
    // 0x7281e4: ldur            x0, [fp, #-0x18]
    // 0x7281e8: stur            x3, [fp, #-0x20]
    // 0x7281ec: StoreField: r3->field_b = r0
    //     0x7281ec: stur            w0, [x3, #0xb]
    // 0x7281f0: ldur            x2, [fp, #-0x10]
    // 0x7281f4: r1 = Function '<anonymous closure>':.
    //     0x7281f4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20548] AnonymousClosure: (0x7283a0), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::temaRengiDegistir (0x728098)
    //     0x7281f8: ldr             x1, [x1, #0x548]
    // 0x7281fc: r0 = AllocateClosure()
    //     0x7281fc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x728200: mov             x1, x0
    // 0x728204: ldur            x0, [fp, #-0x20]
    // 0x728208: StoreField: r0->field_f = r1
    //     0x728208: stur            w1, [x0, #0xf]
    // 0x72820c: r1 = true
    //     0x72820c: add             x1, NULL, #0x20  ; true
    // 0x728210: StoreField: r0->field_1f = r1
    //     0x728210: stur            w1, [x0, #0x1f]
    // 0x728214: r2 = false
    //     0x728214: add             x2, NULL, #0x30  ; false
    // 0x728218: StoreField: r0->field_23 = r2
    //     0x728218: stur            w2, [x0, #0x23]
    // 0x72821c: r3 = Instance_IconData
    //     0x72821c: add             x3, PP, #0x20, lsl #12  ; [pp+0x20508] Obj!IconData@a09c01
    //     0x728220: ldr             x3, [x3, #0x508]
    // 0x728224: StoreField: r0->field_37 = r3
    //     0x728224: stur            w3, [x0, #0x37]
    // 0x728228: d0 = 50.000000
    //     0x728228: ldr             d0, [PP, #0x5d98]  ; [pp+0x5d98] IMM: double(50) from 0x4049000000000000
    // 0x72822c: StoreField: r0->field_27 = d0
    //     0x72822c: stur            d0, [x0, #0x27]
    // 0x728230: d0 = 9.000000
    //     0x728230: fmov            d0, #9.00000000
    // 0x728234: StoreField: r0->field_2f = d0
    //     0x728234: stur            d0, [x0, #0x2f]
    // 0x728238: r3 = Instance_WrapAlignment
    //     0x728238: add             x3, PP, #0x12, lsl #12  ; [pp+0x127d8] Obj!WrapAlignment@a2a271
    //     0x72823c: ldr             x3, [x3, #0x7d8]
    // 0x728240: StoreField: r0->field_43 = r3
    //     0x728240: stur            w3, [x0, #0x43]
    // 0x728244: r3 = Instance_WrapAlignment
    //     0x728244: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1d9c0] Obj!WrapAlignment@a2a211
    //     0x728248: ldr             x3, [x3, #0x9c0]
    // 0x72824c: StoreField: r0->field_47 = r3
    //     0x72824c: stur            w3, [x0, #0x47]
    // 0x728250: r3 = Instance_WrapCrossAlignment
    //     0x728250: add             x3, PP, #0x1d, lsl #12  ; [pp+0x1d9e0] Obj!WrapCrossAlignment@a2a171
    //     0x728254: ldr             x3, [x3, #0x9e0]
    // 0x728258: StoreField: r0->field_4b = r3
    //     0x728258: stur            w3, [x0, #0x4b]
    // 0x72825c: r0 = SingleChildScrollView()
    //     0x72825c: bl              #0x6902c4  ; AllocateSingleChildScrollViewStub -> SingleChildScrollView (size=0x3c)
    // 0x728260: mov             x1, x0
    // 0x728264: r0 = Instance_Axis
    //     0x728264: ldr             x0, [PP, #0x4860]  ; [pp+0x4860] Obj!Axis@a2ab11
    // 0x728268: stur            x1, [fp, #-0x28]
    // 0x72826c: StoreField: r1->field_b = r0
    //     0x72826c: stur            w0, [x1, #0xb]
    // 0x728270: r0 = false
    //     0x728270: add             x0, NULL, #0x30  ; false
    // 0x728274: StoreField: r1->field_f = r0
    //     0x728274: stur            w0, [x1, #0xf]
    // 0x728278: ldur            x2, [fp, #-0x20]
    // 0x72827c: StoreField: r1->field_23 = r2
    //     0x72827c: stur            w2, [x1, #0x23]
    // 0x728280: r2 = Instance_DragStartBehavior
    //     0x728280: ldr             x2, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x728284: StoreField: r1->field_27 = r2
    //     0x728284: stur            w2, [x1, #0x27]
    // 0x728288: r2 = Instance_Clip
    //     0x728288: add             x2, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x72828c: ldr             x2, [x2, #0x2d8]
    // 0x728290: StoreField: r1->field_2b = r2
    //     0x728290: stur            w2, [x1, #0x2b]
    // 0x728294: r2 = Instance_HitTestBehavior
    //     0x728294: add             x2, PP, #0x10, lsl #12  ; [pp+0x10e20] Obj!HitTestBehavior@a2a471
    //     0x728298: ldr             x2, [x2, #0xe20]
    // 0x72829c: StoreField: r1->field_2f = r2
    //     0x72829c: stur            w2, [x1, #0x2f]
    // 0x7282a0: r0 = TextStyle()
    //     0x7282a0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7282a4: mov             x1, x0
    // 0x7282a8: r0 = true
    //     0x7282a8: add             x0, NULL, #0x20  ; true
    // 0x7282ac: stur            x1, [fp, #-0x20]
    // 0x7282b0: StoreField: r1->field_7 = r0
    //     0x7282b0: stur            w0, [x1, #7]
    // 0x7282b4: ldur            x0, [fp, #-0x18]
    // 0x7282b8: StoreField: r1->field_b = r0
    //     0x7282b8: stur            w0, [x1, #0xb]
    // 0x7282bc: r0 = Text()
    //     0x7282bc: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7282c0: mov             x1, x0
    // 0x7282c4: r0 = "Tamam"
    //     0x7282c4: add             x0, PP, #0x20, lsl #12  ; [pp+0x20510] "Tamam"
    //     0x7282c8: ldr             x0, [x0, #0x510]
    // 0x7282cc: stur            x1, [fp, #-0x18]
    // 0x7282d0: StoreField: r1->field_b = r0
    //     0x7282d0: stur            w0, [x1, #0xb]
    // 0x7282d4: ldur            x0, [fp, #-0x20]
    // 0x7282d8: StoreField: r1->field_13 = r0
    //     0x7282d8: stur            w0, [x1, #0x13]
    // 0x7282dc: r0 = IconButton()
    //     0x7282dc: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x7282e0: mov             x3, x0
    // 0x7282e4: r0 = 50.000000
    //     0x7282e4: add             x0, PP, #0x13, lsl #12  ; [pp+0x13a48] 50
    //     0x7282e8: ldr             x0, [x0, #0xa48]
    // 0x7282ec: stur            x3, [fp, #-0x20]
    // 0x7282f0: StoreField: r3->field_b = r0
    //     0x7282f0: stur            w0, [x3, #0xb]
    // 0x7282f4: ldur            x2, [fp, #-0x10]
    // 0x7282f8: r1 = Function '<anonymous closure>':.
    //     0x7282f8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20550] AnonymousClosure: static (0x6ce104), in [package:umrem_demo/features/info_screen/screens/gezilecek_yerler_screen.dart] ::_buildGezilecekYerlerListesi (0x6ce158)
    //     0x7282fc: ldr             x1, [x1, #0x550]
    // 0x728300: r0 = AllocateClosure()
    //     0x728300: bl              #0x9273d4  ; AllocateClosureStub
    // 0x728304: mov             x1, x0
    // 0x728308: ldur            x0, [fp, #-0x20]
    // 0x72830c: StoreField: r0->field_3b = r1
    //     0x72830c: stur            w1, [x0, #0x3b]
    // 0x728310: r3 = false
    //     0x728310: add             x3, NULL, #0x30  ; false
    // 0x728314: StoreField: r0->field_4f = r3
    //     0x728314: stur            w3, [x0, #0x4f]
    // 0x728318: ldur            x1, [fp, #-0x18]
    // 0x72831c: StoreField: r0->field_1f = r1
    //     0x72831c: stur            w1, [x0, #0x1f]
    // 0x728320: r1 = Instance__IconButtonVariant
    //     0x728320: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x728324: ldr             x1, [x1, #0x1b8]
    // 0x728328: StoreField: r0->field_6f = r1
    //     0x728328: stur            w1, [x0, #0x6f]
    // 0x72832c: r1 = Null
    //     0x72832c: mov             x1, NULL
    // 0x728330: r2 = 2
    //     0x728330: mov             x2, #2
    // 0x728334: r0 = AllocateArray()
    //     0x728334: bl              #0x9280a0  ; AllocateArrayStub
    // 0x728338: mov             x2, x0
    // 0x72833c: ldur            x0, [fp, #-0x20]
    // 0x728340: stur            x2, [fp, #-0x10]
    // 0x728344: StoreField: r2->field_f = r0
    //     0x728344: stur            w0, [x2, #0xf]
    // 0x728348: r1 = <Widget>
    //     0x728348: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x72834c: r0 = AllocateGrowableArray()
    //     0x72834c: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x728350: mov             x1, x0
    // 0x728354: ldur            x0, [fp, #-0x10]
    // 0x728358: stur            x1, [fp, #-0x18]
    // 0x72835c: StoreField: r1->field_f = r0
    //     0x72835c: stur            w0, [x1, #0xf]
    // 0x728360: r0 = 2
    //     0x728360: mov             x0, #2
    // 0x728364: StoreField: r1->field_b = r0
    //     0x728364: stur            w0, [x1, #0xb]
    // 0x728368: r0 = AlertDialog()
    //     0x728368: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x72836c: ldur            x1, [fp, #-0x28]
    // 0x728370: StoreField: r0->field_1b = r1
    //     0x728370: stur            w1, [x0, #0x1b]
    // 0x728374: ldur            x1, [fp, #-0x18]
    // 0x728378: StoreField: r0->field_27 = r1
    //     0x728378: stur            w1, [x0, #0x27]
    // 0x72837c: ldur            x1, [fp, #-8]
    // 0x728380: StoreField: r0->field_5f = r1
    //     0x728380: stur            w1, [x0, #0x5f]
    // 0x728384: r1 = false
    //     0x728384: add             x1, NULL, #0x30  ; false
    // 0x728388: StoreField: r0->field_6b = r1
    //     0x728388: stur            w1, [x0, #0x6b]
    // 0x72838c: LeaveFrame
    //     0x72838c: mov             SP, fp
    //     0x728390: ldp             fp, lr, [SP], #0x10
    // 0x728394: ret
    //     0x728394: ret             
    // 0x728398: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728398: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x72839c: b               #0x728148
  }
  [closure] Future<void> <anonymous closure>(dynamic, Color) async {
    // ** addr: 0x7283a0, size: 0x7c
    // 0x7283a0: EnterFrame
    //     0x7283a0: stp             fp, lr, [SP, #-0x10]!
    //     0x7283a4: mov             fp, SP
    // 0x7283a8: AllocStack(0x18)
    //     0x7283a8: sub             SP, SP, #0x18
    // 0x7283ac: SetupParameters(_ZikirCekState this /* r1 */, dynamic _ /* r2, fp-0x18 */)
    //     0x7283ac: stur            NULL, [fp, #-8]
    //     0x7283b0: mov             x0, #0
    //     0x7283b4: add             x1, fp, w0, sxtw #2
    //     0x7283b8: ldr             x1, [x1, #0x18]
    //     0x7283bc: add             x2, fp, w0, sxtw #2
    //     0x7283c0: ldr             x2, [x2, #0x10]
    //     0x7283c4: stur            x2, [fp, #-0x18]
    //     0x7283c8: ldur            w3, [x1, #0x17]
    //     0x7283cc: add             x3, x3, HEAP, lsl #32
    //     0x7283d0: stur            x3, [fp, #-0x10]
    // 0x7283d4: CheckStackOverflow
    //     0x7283d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7283d8: cmp             SP, x16
    //     0x7283dc: b.ls            #0x728414
    // 0x7283e0: InitAsync() -> Future<void?>
    //     0x7283e0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7283e4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7283e8: ldur            x0, [fp, #-0x10]
    // 0x7283ec: LoadField: r1 = r0->field_b
    //     0x7283ec: ldur            w1, [x0, #0xb]
    // 0x7283f0: DecompressPointer r1
    //     0x7283f0: add             x1, x1, HEAP, lsl #32
    // 0x7283f4: LoadField: r0 = r1->field_f
    //     0x7283f4: ldur            w0, [x1, #0xf]
    // 0x7283f8: DecompressPointer r0
    //     0x7283f8: add             x0, x0, HEAP, lsl #32
    // 0x7283fc: mov             x1, x0
    // 0x728400: ldur            x2, [fp, #-0x18]
    // 0x728404: r3 = true
    //     0x728404: add             x3, NULL, #0x20  ; true
    // 0x728408: r0 = renkDegistirMethod()
    //     0x728408: bl              #0x727eb8  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::renkDegistirMethod
    // 0x72840c: r0 = Null
    //     0x72840c: mov             x0, NULL
    // 0x728410: r0 = ReturnAsyncNotFuture()
    //     0x728410: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x728414: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728414: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728418: b               #0x7283e0
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x72841c, size: 0x48
    // 0x72841c: EnterFrame
    //     0x72841c: stp             fp, lr, [SP, #-0x10]!
    //     0x728420: mov             fp, SP
    // 0x728424: ldr             x0, [fp, #0x10]
    // 0x728428: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x728428: ldur            w1, [x0, #0x17]
    // 0x72842c: DecompressPointer r1
    //     0x72842c: add             x1, x1, HEAP, lsl #32
    // 0x728430: CheckStackOverflow
    //     0x728430: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728434: cmp             SP, x16
    //     0x728438: b.ls            #0x72845c
    // 0x72843c: LoadField: r0 = r1->field_f
    //     0x72843c: ldur            w0, [x1, #0xf]
    // 0x728440: DecompressPointer r0
    //     0x728440: add             x0, x0, HEAP, lsl #32
    // 0x728444: mov             x1, x0
    // 0x728448: r0 = tesbihDuzenle()
    //     0x728448: bl              #0x728464  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::tesbihDuzenle
    // 0x72844c: r0 = Null
    //     0x72844c: mov             x0, NULL
    // 0x728450: LeaveFrame
    //     0x728450: mov             SP, fp
    //     0x728454: ldp             fp, lr, [SP], #0x10
    // 0x728458: ret
    //     0x728458: ret             
    // 0x72845c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72845c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728460: b               #0x72843c
  }
  _ tesbihDuzenle(/* No info */) async {
    // ** addr: 0x728464, size: 0x90
    // 0x728464: EnterFrame
    //     0x728464: stp             fp, lr, [SP, #-0x10]!
    //     0x728468: mov             fp, SP
    // 0x72846c: AllocStack(0x38)
    //     0x72846c: sub             SP, SP, #0x38
    // 0x728470: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x728470: stur            NULL, [fp, #-8]
    //     0x728474: stur            x1, [fp, #-0x10]
    // 0x728478: CheckStackOverflow
    //     0x728478: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x72847c: cmp             SP, x16
    //     0x728480: b.ls            #0x7284e8
    // 0x728484: r1 = 1
    //     0x728484: mov             x1, #1
    // 0x728488: r0 = AllocateContext()
    //     0x728488: bl              #0x927010  ; AllocateContextStub
    // 0x72848c: mov             x2, x0
    // 0x728490: ldur            x1, [fp, #-0x10]
    // 0x728494: stur            x2, [fp, #-0x18]
    // 0x728498: StoreField: r2->field_f = r1
    //     0x728498: stur            w1, [x2, #0xf]
    // 0x72849c: InitAsync() -> Future<void?>
    //     0x72849c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x7284a0: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x7284a4: ldur            x0, [fp, #-0x10]
    // 0x7284a8: LoadField: r3 = r0->field_f
    //     0x7284a8: ldur            w3, [x0, #0xf]
    // 0x7284ac: DecompressPointer r3
    //     0x7284ac: add             x3, x3, HEAP, lsl #32
    // 0x7284b0: stur            x3, [fp, #-0x20]
    // 0x7284b4: cmp             w3, NULL
    // 0x7284b8: b.eq            #0x7284f0
    // 0x7284bc: ldur            x2, [fp, #-0x18]
    // 0x7284c0: r1 = Function '<anonymous closure>':.
    //     0x7284c0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20558] AnonymousClosure: (0x7284f4), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::tesbihDuzenle (0x728464)
    //     0x7284c4: ldr             x1, [x1, #0x558]
    // 0x7284c8: r0 = AllocateClosure()
    //     0x7284c8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7284cc: r16 = <void?>
    //     0x7284cc: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x7284d0: stp             x0, x16, [SP, #8]
    // 0x7284d4: ldur            x16, [fp, #-0x20]
    // 0x7284d8: str             x16, [SP]
    // 0x7284dc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x7284dc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x7284e0: r0 = showDialog()
    //     0x7284e0: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x7284e4: r0 = ReturnAsync()
    //     0x7284e4: b               #0x427094  ; ReturnAsyncStub
    // 0x7284e8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7284e8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7284ec: b               #0x728484
    // 0x7284f0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x7284f0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x7284f4, size: 0x444
    // 0x7284f4: EnterFrame
    //     0x7284f4: stp             fp, lr, [SP, #-0x10]!
    //     0x7284f8: mov             fp, SP
    // 0x7284fc: AllocStack(0x38)
    //     0x7284fc: sub             SP, SP, #0x38
    // 0x728500: SetupParameters([dynamic _ /* r0 */])
    //     0x728500: ldr             x0, [fp, #0x18]
    //     0x728504: ldur            w1, [x0, #0x17]
    //     0x728508: add             x1, x1, HEAP, lsl #32
    //     0x72850c: stur            x1, [fp, #-8]
    // 0x728510: CheckStackOverflow
    //     0x728510: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728514: cmp             SP, x16
    //     0x728518: b.ls            #0x728930
    // 0x72851c: r1 = 1
    //     0x72851c: mov             x1, #1
    // 0x728520: r0 = AllocateContext()
    //     0x728520: bl              #0x927010  ; AllocateContextStub
    // 0x728524: mov             x1, x0
    // 0x728528: ldur            x0, [fp, #-8]
    // 0x72852c: stur            x1, [fp, #-0x10]
    // 0x728530: StoreField: r1->field_b = r0
    //     0x728530: stur            w0, [x1, #0xb]
    // 0x728534: ldr             x2, [fp, #0x10]
    // 0x728538: StoreField: r1->field_f = r2
    //     0x728538: stur            w2, [x1, #0xf]
    // 0x72853c: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x72853c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x728540: ldr             x0, [x0, #0x2078]
    //     0x728544: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x728548: cmp             w0, w16
    //     0x72854c: b.ne            #0x72855c
    //     0x728550: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x728554: ldr             x2, [x2, #0x450]
    //     0x728558: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x72855c: mov             x1, x0
    // 0x728560: ldur            x0, [fp, #-8]
    // 0x728564: stur            x1, [fp, #-0x18]
    // 0x728568: LoadField: r2 = r0->field_f
    //     0x728568: ldur            w2, [x0, #0xf]
    // 0x72856c: DecompressPointer r2
    //     0x72856c: add             x2, x2, HEAP, lsl #32
    // 0x728570: LoadField: r0 = r2->field_13
    //     0x728570: ldur            w0, [x2, #0x13]
    // 0x728574: DecompressPointer r0
    //     0x728574: add             x0, x0, HEAP, lsl #32
    // 0x728578: stur            x0, [fp, #-8]
    // 0x72857c: r0 = BorderSide()
    //     0x72857c: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x728580: mov             x1, x0
    // 0x728584: ldur            x0, [fp, #-0x18]
    // 0x728588: stur            x1, [fp, #-0x20]
    // 0x72858c: StoreField: r1->field_7 = r0
    //     0x72858c: stur            w0, [x1, #7]
    // 0x728590: d0 = 1.000000
    //     0x728590: fmov            d0, #1.00000000
    // 0x728594: StoreField: r1->field_b = d0
    //     0x728594: stur            d0, [x1, #0xb]
    // 0x728598: r2 = Instance_BorderStyle
    //     0x728598: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x72859c: ldr             x2, [x2, #0x738]
    // 0x7285a0: StoreField: r1->field_13 = r2
    //     0x7285a0: stur            w2, [x1, #0x13]
    // 0x7285a4: d1 = -1.000000
    //     0x7285a4: fmov            d1, #-1.00000000
    // 0x7285a8: ArrayStore: r1[0] = d1  ; List_8
    //     0x7285a8: stur            d1, [x1, #0x17]
    // 0x7285ac: r0 = UnderlineInputBorder()
    //     0x7285ac: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x7285b0: mov             x1, x0
    // 0x7285b4: r0 = Instance_BorderRadius
    //     0x7285b4: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x7285b8: ldr             x0, [x0, #0x560]
    // 0x7285bc: stur            x1, [fp, #-0x28]
    // 0x7285c0: StoreField: r1->field_b = r0
    //     0x7285c0: stur            w0, [x1, #0xb]
    // 0x7285c4: ldur            x2, [fp, #-0x20]
    // 0x7285c8: StoreField: r1->field_7 = r2
    //     0x7285c8: stur            w2, [x1, #7]
    // 0x7285cc: r0 = BorderSide()
    //     0x7285cc: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x7285d0: mov             x1, x0
    // 0x7285d4: ldur            x0, [fp, #-0x18]
    // 0x7285d8: stur            x1, [fp, #-0x20]
    // 0x7285dc: StoreField: r1->field_7 = r0
    //     0x7285dc: stur            w0, [x1, #7]
    // 0x7285e0: d0 = 1.000000
    //     0x7285e0: fmov            d0, #1.00000000
    // 0x7285e4: StoreField: r1->field_b = d0
    //     0x7285e4: stur            d0, [x1, #0xb]
    // 0x7285e8: r2 = Instance_BorderStyle
    //     0x7285e8: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x7285ec: ldr             x2, [x2, #0x738]
    // 0x7285f0: StoreField: r1->field_13 = r2
    //     0x7285f0: stur            w2, [x1, #0x13]
    // 0x7285f4: d1 = -1.000000
    //     0x7285f4: fmov            d1, #-1.00000000
    // 0x7285f8: ArrayStore: r1[0] = d1  ; List_8
    //     0x7285f8: stur            d1, [x1, #0x17]
    // 0x7285fc: r0 = UnderlineInputBorder()
    //     0x7285fc: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x728600: mov             x1, x0
    // 0x728604: r0 = Instance_BorderRadius
    //     0x728604: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x728608: ldr             x0, [x0, #0x560]
    // 0x72860c: stur            x1, [fp, #-0x30]
    // 0x728610: StoreField: r1->field_b = r0
    //     0x728610: stur            w0, [x1, #0xb]
    // 0x728614: ldur            x2, [fp, #-0x20]
    // 0x728618: StoreField: r1->field_7 = r2
    //     0x728618: stur            w2, [x1, #7]
    // 0x72861c: r0 = BorderSide()
    //     0x72861c: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x728620: mov             x1, x0
    // 0x728624: ldur            x0, [fp, #-0x18]
    // 0x728628: stur            x1, [fp, #-0x20]
    // 0x72862c: StoreField: r1->field_7 = r0
    //     0x72862c: stur            w0, [x1, #7]
    // 0x728630: d0 = 1.000000
    //     0x728630: fmov            d0, #1.00000000
    // 0x728634: StoreField: r1->field_b = d0
    //     0x728634: stur            d0, [x1, #0xb]
    // 0x728638: r2 = Instance_BorderStyle
    //     0x728638: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x72863c: ldr             x2, [x2, #0x738]
    // 0x728640: StoreField: r1->field_13 = r2
    //     0x728640: stur            w2, [x1, #0x13]
    // 0x728644: d0 = -1.000000
    //     0x728644: fmov            d0, #-1.00000000
    // 0x728648: ArrayStore: r1[0] = d0  ; List_8
    //     0x728648: stur            d0, [x1, #0x17]
    // 0x72864c: r0 = UnderlineInputBorder()
    //     0x72864c: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x728650: mov             x1, x0
    // 0x728654: r0 = Instance_BorderRadius
    //     0x728654: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x728658: ldr             x0, [x0, #0x560]
    // 0x72865c: stur            x1, [fp, #-0x38]
    // 0x728660: StoreField: r1->field_b = r0
    //     0x728660: stur            w0, [x1, #0xb]
    // 0x728664: ldur            x0, [fp, #-0x20]
    // 0x728668: StoreField: r1->field_7 = r0
    //     0x728668: stur            w0, [x1, #7]
    // 0x72866c: r0 = InputDecoration()
    //     0x72866c: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x728670: mov             x1, x0
    // 0x728674: r0 = "Nereden başlayıp çekmek istiyorsunuz\?"
    //     0x728674: add             x0, PP, #0x20, lsl #12  ; [pp+0x20568] "Nereden başlayıp çekmek istiyorsunuz\?"
    //     0x728678: ldr             x0, [x0, #0x568]
    // 0x72867c: stur            x1, [fp, #-0x20]
    // 0x728680: StoreField: r1->field_2f = r0
    //     0x728680: stur            w0, [x1, #0x2f]
    // 0x728684: r0 = true
    //     0x728684: add             x0, NULL, #0x20  ; true
    // 0x728688: StoreField: r1->field_47 = r0
    //     0x728688: stur            w0, [x1, #0x47]
    // 0x72868c: StoreField: r1->field_4b = r0
    //     0x72868c: stur            w0, [x1, #0x4b]
    // 0x728690: ldur            x2, [fp, #-0x18]
    // 0x728694: StoreField: r1->field_b7 = r2
    //     0x728694: stur            w2, [x1, #0xb7]
    // 0x728698: StoreField: r1->field_bb = r2
    //     0x728698: stur            w2, [x1, #0xbb]
    // 0x72869c: ldur            x3, [fp, #-0x38]
    // 0x7286a0: StoreField: r1->field_c3 = r3
    //     0x7286a0: stur            w3, [x1, #0xc3]
    // 0x7286a4: ldur            x3, [fp, #-0x30]
    // 0x7286a8: StoreField: r1->field_cf = r3
    //     0x7286a8: stur            w3, [x1, #0xcf]
    // 0x7286ac: ldur            x3, [fp, #-0x28]
    // 0x7286b0: StoreField: r1->field_d3 = r3
    //     0x7286b0: stur            w3, [x1, #0xd3]
    // 0x7286b4: StoreField: r1->field_d7 = r0
    //     0x7286b4: stur            w0, [x1, #0xd7]
    // 0x7286b8: r0 = TextField()
    //     0x7286b8: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x7286bc: mov             x1, x0
    // 0x7286c0: r0 = EditableText
    //     0x7286c0: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x7286c4: stur            x1, [fp, #-0x28]
    // 0x7286c8: StoreField: r1->field_f = r0
    //     0x7286c8: stur            w0, [x1, #0xf]
    // 0x7286cc: ldur            x0, [fp, #-8]
    // 0x7286d0: StoreField: r1->field_13 = r0
    //     0x7286d0: stur            w0, [x1, #0x13]
    // 0x7286d4: ldur            x0, [fp, #-0x20]
    // 0x7286d8: StoreField: r1->field_1b = r0
    //     0x7286d8: stur            w0, [x1, #0x1b]
    // 0x7286dc: r0 = Instance_TextCapitalization
    //     0x7286dc: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x7286e0: ldr             x0, [x0, #0x4f0]
    // 0x7286e4: StoreField: r1->field_27 = r0
    //     0x7286e4: stur            w0, [x1, #0x27]
    // 0x7286e8: r0 = Instance_TextAlign
    //     0x7286e8: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x7286ec: StoreField: r1->field_33 = r0
    //     0x7286ec: stur            w0, [x1, #0x33]
    // 0x7286f0: r0 = false
    //     0x7286f0: add             x0, NULL, #0x30  ; false
    // 0x7286f4: StoreField: r1->field_6b = r0
    //     0x7286f4: stur            w0, [x1, #0x6b]
    // 0x7286f8: StoreField: r1->field_3f = r0
    //     0x7286f8: stur            w0, [x1, #0x3f]
    // 0x7286fc: r2 = "•"
    //     0x7286fc: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x728700: ldr             x2, [x2, #0x4f8]
    // 0x728704: StoreField: r1->field_47 = r2
    //     0x728704: stur            w2, [x1, #0x47]
    // 0x728708: StoreField: r1->field_4b = r0
    //     0x728708: stur            w0, [x1, #0x4b]
    // 0x72870c: r2 = true
    //     0x72870c: add             x2, NULL, #0x20  ; true
    // 0x728710: StoreField: r1->field_5b = r2
    //     0x728710: stur            w2, [x1, #0x5b]
    // 0x728714: r3 = 2
    //     0x728714: mov             x3, #2
    // 0x728718: StoreField: r1->field_5f = r3
    //     0x728718: stur            w3, [x1, #0x5f]
    // 0x72871c: StoreField: r1->field_67 = r0
    //     0x72871c: stur            w0, [x1, #0x67]
    // 0x728720: d0 = 2.000000
    //     0x728720: fmov            d0, #2.00000000
    // 0x728724: StoreField: r1->field_9b = d0
    //     0x728724: stur            d0, [x1, #0x9b]
    // 0x728728: ldur            x3, [fp, #-0x18]
    // 0x72872c: StoreField: r1->field_af = r3
    //     0x72872c: stur            w3, [x1, #0xaf]
    // 0x728730: r4 = Instance_EdgeInsets
    //     0x728730: ldr             x4, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x728734: StoreField: r1->field_c3 = r4
    //     0x728734: stur            w4, [x1, #0xc3]
    // 0x728738: r4 = Instance_DragStartBehavior
    //     0x728738: ldr             x4, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x72873c: StoreField: r1->field_d3 = r4
    //     0x72873c: stur            w4, [x1, #0xd3]
    // 0x728740: StoreField: r1->field_db = r0
    //     0x728740: stur            w0, [x1, #0xdb]
    // 0x728744: r4 = const []
    //     0x728744: ldr             x4, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x728748: StoreField: r1->field_f7 = r4
    //     0x728748: stur            w4, [x1, #0xf7]
    // 0x72874c: r4 = Instance_Clip
    //     0x72874c: add             x4, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x728750: ldr             x4, [x4, #0x2d8]
    // 0x728754: StoreField: r1->field_fb = r4
    //     0x728754: stur            w4, [x1, #0xfb]
    // 0x728758: r17 = 259
    //     0x728758: mov             x17, #0x103
    // 0x72875c: str             w2, [x1, x17]
    // 0x728760: r17 = 263
    //     0x728760: mov             x17, #0x107
    // 0x728764: str             w2, [x1, x17]
    // 0x728768: r17 = 267
    //     0x728768: mov             x17, #0x10b
    // 0x72876c: str             w2, [x1, x17]
    // 0x728770: r4 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x728770: add             x4, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x728774: ldr             x4, [x4, #0x9f8]
    // 0x728778: r17 = 275
    //     0x728778: mov             x17, #0x113
    // 0x72877c: str             w4, [x1, x17]
    // 0x728780: r17 = 279
    //     0x728780: mov             x17, #0x117
    // 0x728784: str             w2, [x1, x17]
    // 0x728788: r4 = Instance_SmartDashesType
    //     0x728788: ldr             x4, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x72878c: StoreField: r1->field_53 = r4
    //     0x72878c: stur            w4, [x1, #0x53]
    // 0x728790: r4 = Instance_SmartQuotesType
    //     0x728790: add             x4, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x728794: ldr             x4, [x4, #0x520]
    // 0x728798: StoreField: r1->field_57 = r4
    //     0x728798: stur            w4, [x1, #0x57]
    // 0x72879c: r4 = Instance_TextInputType
    //     0x72879c: add             x4, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x7287a0: ldr             x4, [x4, #0x948]
    // 0x7287a4: StoreField: r1->field_1f = r4
    //     0x7287a4: stur            w4, [x1, #0x1f]
    // 0x7287a8: StoreField: r1->field_c7 = r2
    //     0x7287a8: stur            w2, [x1, #0xc7]
    // 0x7287ac: r0 = TextStyle()
    //     0x7287ac: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x7287b0: mov             x1, x0
    // 0x7287b4: r0 = true
    //     0x7287b4: add             x0, NULL, #0x20  ; true
    // 0x7287b8: stur            x1, [fp, #-8]
    // 0x7287bc: StoreField: r1->field_7 = r0
    //     0x7287bc: stur            w0, [x1, #7]
    // 0x7287c0: ldur            x2, [fp, #-0x18]
    // 0x7287c4: StoreField: r1->field_b = r2
    //     0x7287c4: stur            w2, [x1, #0xb]
    // 0x7287c8: r0 = Text()
    //     0x7287c8: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x7287cc: mov             x3, x0
    // 0x7287d0: r0 = "İptal"
    //     0x7287d0: add             x0, PP, #0x20, lsl #12  ; [pp+0x204e0] "İptal"
    //     0x7287d4: ldr             x0, [x0, #0x4e0]
    // 0x7287d8: stur            x3, [fp, #-0x20]
    // 0x7287dc: StoreField: r3->field_b = r0
    //     0x7287dc: stur            w0, [x3, #0xb]
    // 0x7287e0: ldur            x0, [fp, #-8]
    // 0x7287e4: StoreField: r3->field_13 = r0
    //     0x7287e4: stur            w0, [x3, #0x13]
    // 0x7287e8: ldur            x2, [fp, #-0x10]
    // 0x7287ec: r1 = Function '<anonymous closure>':.
    //     0x7287ec: add             x1, PP, #0x20, lsl #12  ; [pp+0x20570] AnonymousClosure: (0x728bac), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::tesbihDuzenle (0x728464)
    //     0x7287f0: ldr             x1, [x1, #0x570]
    // 0x7287f4: r0 = AllocateClosure()
    //     0x7287f4: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7287f8: stur            x0, [fp, #-8]
    // 0x7287fc: r0 = IconButton()
    //     0x7287fc: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x728800: mov             x1, x0
    // 0x728804: ldur            x0, [fp, #-8]
    // 0x728808: stur            x1, [fp, #-0x30]
    // 0x72880c: StoreField: r1->field_3b = r0
    //     0x72880c: stur            w0, [x1, #0x3b]
    // 0x728810: r0 = false
    //     0x728810: add             x0, NULL, #0x30  ; false
    // 0x728814: StoreField: r1->field_4f = r0
    //     0x728814: stur            w0, [x1, #0x4f]
    // 0x728818: ldur            x2, [fp, #-0x20]
    // 0x72881c: StoreField: r1->field_1f = r2
    //     0x72881c: stur            w2, [x1, #0x1f]
    // 0x728820: r2 = Instance__IconButtonVariant
    //     0x728820: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x728824: ldr             x2, [x2, #0x1b8]
    // 0x728828: StoreField: r1->field_6f = r2
    //     0x728828: stur            w2, [x1, #0x6f]
    // 0x72882c: r0 = TextStyle()
    //     0x72882c: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x728830: mov             x1, x0
    // 0x728834: r0 = true
    //     0x728834: add             x0, NULL, #0x20  ; true
    // 0x728838: stur            x1, [fp, #-8]
    // 0x72883c: StoreField: r1->field_7 = r0
    //     0x72883c: stur            w0, [x1, #7]
    // 0x728840: ldur            x0, [fp, #-0x18]
    // 0x728844: StoreField: r1->field_b = r0
    //     0x728844: stur            w0, [x1, #0xb]
    // 0x728848: r0 = Text()
    //     0x728848: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x72884c: mov             x1, x0
    // 0x728850: r0 = "Kaydet"
    //     0x728850: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x728854: ldr             x0, [x0, #0xb50]
    // 0x728858: stur            x1, [fp, #-0x18]
    // 0x72885c: StoreField: r1->field_b = r0
    //     0x72885c: stur            w0, [x1, #0xb]
    // 0x728860: ldur            x0, [fp, #-8]
    // 0x728864: StoreField: r1->field_13 = r0
    //     0x728864: stur            w0, [x1, #0x13]
    // 0x728868: r0 = IconButton()
    //     0x728868: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x72886c: mov             x3, x0
    // 0x728870: r0 = 43.000000
    //     0x728870: add             x0, PP, #0x20, lsl #12  ; [pp+0x20578] 43
    //     0x728874: ldr             x0, [x0, #0x578]
    // 0x728878: stur            x3, [fp, #-8]
    // 0x72887c: StoreField: r3->field_b = r0
    //     0x72887c: stur            w0, [x3, #0xb]
    // 0x728880: ldur            x2, [fp, #-0x10]
    // 0x728884: r1 = Function '<anonymous closure>':.
    //     0x728884: add             x1, PP, #0x20, lsl #12  ; [pp+0x20580] AnonymousClosure: (0x728938), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::tesbihDuzenle (0x728464)
    //     0x728888: ldr             x1, [x1, #0x580]
    // 0x72888c: r0 = AllocateClosure()
    //     0x72888c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x728890: mov             x1, x0
    // 0x728894: ldur            x0, [fp, #-8]
    // 0x728898: StoreField: r0->field_3b = r1
    //     0x728898: stur            w1, [x0, #0x3b]
    // 0x72889c: r3 = false
    //     0x72889c: add             x3, NULL, #0x30  ; false
    // 0x7288a0: StoreField: r0->field_4f = r3
    //     0x7288a0: stur            w3, [x0, #0x4f]
    // 0x7288a4: ldur            x1, [fp, #-0x18]
    // 0x7288a8: StoreField: r0->field_1f = r1
    //     0x7288a8: stur            w1, [x0, #0x1f]
    // 0x7288ac: r1 = Instance__IconButtonVariant
    //     0x7288ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7288b0: ldr             x1, [x1, #0x1b8]
    // 0x7288b4: StoreField: r0->field_6f = r1
    //     0x7288b4: stur            w1, [x0, #0x6f]
    // 0x7288b8: r1 = Null
    //     0x7288b8: mov             x1, NULL
    // 0x7288bc: r2 = 4
    //     0x7288bc: mov             x2, #4
    // 0x7288c0: r0 = AllocateArray()
    //     0x7288c0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7288c4: mov             x2, x0
    // 0x7288c8: ldur            x0, [fp, #-0x30]
    // 0x7288cc: stur            x2, [fp, #-0x10]
    // 0x7288d0: StoreField: r2->field_f = r0
    //     0x7288d0: stur            w0, [x2, #0xf]
    // 0x7288d4: ldur            x0, [fp, #-8]
    // 0x7288d8: StoreField: r2->field_13 = r0
    //     0x7288d8: stur            w0, [x2, #0x13]
    // 0x7288dc: r1 = <Widget>
    //     0x7288dc: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x7288e0: r0 = AllocateGrowableArray()
    //     0x7288e0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x7288e4: mov             x1, x0
    // 0x7288e8: ldur            x0, [fp, #-0x10]
    // 0x7288ec: stur            x1, [fp, #-8]
    // 0x7288f0: StoreField: r1->field_f = r0
    //     0x7288f0: stur            w0, [x1, #0xf]
    // 0x7288f4: r0 = 4
    //     0x7288f4: mov             x0, #4
    // 0x7288f8: StoreField: r1->field_b = r0
    //     0x7288f8: stur            w0, [x1, #0xb]
    // 0x7288fc: r0 = AlertDialog()
    //     0x7288fc: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x728900: r1 = Instance_Text
    //     0x728900: add             x1, PP, #0x20, lsl #12  ; [pp+0x20588] Obj!Text@a1c9e1
    //     0x728904: ldr             x1, [x1, #0x588]
    // 0x728908: StoreField: r0->field_f = r1
    //     0x728908: stur            w1, [x0, #0xf]
    // 0x72890c: ldur            x1, [fp, #-0x28]
    // 0x728910: StoreField: r0->field_1b = r1
    //     0x728910: stur            w1, [x0, #0x1b]
    // 0x728914: ldur            x1, [fp, #-8]
    // 0x728918: StoreField: r0->field_27 = r1
    //     0x728918: stur            w1, [x0, #0x27]
    // 0x72891c: r1 = false
    //     0x72891c: add             x1, NULL, #0x30  ; false
    // 0x728920: StoreField: r0->field_6b = r1
    //     0x728920: stur            w1, [x0, #0x6b]
    // 0x728924: LeaveFrame
    //     0x728924: mov             SP, fp
    //     0x728928: ldp             fp, lr, [SP], #0x10
    // 0x72892c: ret
    //     0x72892c: ret             
    // 0x728930: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728930: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728934: b               #0x72851c
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x728938, size: 0x118
    // 0x728938: EnterFrame
    //     0x728938: stp             fp, lr, [SP, #-0x10]!
    //     0x72893c: mov             fp, SP
    // 0x728940: AllocStack(0x28)
    //     0x728940: sub             SP, SP, #0x28
    // 0x728944: SetupParameters(_ZikirCekState this /* r1 */)
    //     0x728944: stur            NULL, [fp, #-8]
    //     0x728948: mov             x0, #0
    //     0x72894c: add             x1, fp, w0, sxtw #2
    //     0x728950: ldr             x1, [x1, #0x10]
    //     0x728954: ldur            w2, [x1, #0x17]
    //     0x728958: add             x2, x2, HEAP, lsl #32
    //     0x72895c: stur            x2, [fp, #-0x10]
    // 0x728960: CheckStackOverflow
    //     0x728960: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728964: cmp             SP, x16
    //     0x728968: b.ls            #0x728a48
    // 0x72896c: InitAsync() -> Future<void?>
    //     0x72896c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x728970: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x728974: ldur            x0, [fp, #-0x10]
    // 0x728978: LoadField: r2 = r0->field_b
    //     0x728978: ldur            w2, [x0, #0xb]
    // 0x72897c: DecompressPointer r2
    //     0x72897c: add             x2, x2, HEAP, lsl #32
    // 0x728980: stur            x2, [fp, #-0x18]
    // 0x728984: LoadField: r1 = r2->field_f
    //     0x728984: ldur            w1, [x2, #0xf]
    // 0x728988: DecompressPointer r1
    //     0x728988: add             x1, x1, HEAP, lsl #32
    // 0x72898c: r0 = duzenle()
    //     0x72898c: bl              #0x728a50  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::duzenle
    // 0x728990: ldur            x0, [fp, #-0x18]
    // 0x728994: LoadField: r1 = r0->field_f
    //     0x728994: ldur            w1, [x0, #0xf]
    // 0x728998: DecompressPointer r1
    //     0x728998: add             x1, x1, HEAP, lsl #32
    // 0x72899c: LoadField: r2 = r1->field_13
    //     0x72899c: ldur            w2, [x1, #0x13]
    // 0x7289a0: DecompressPointer r2
    //     0x7289a0: add             x2, x2, HEAP, lsl #32
    // 0x7289a4: LoadField: r1 = r2->field_27
    //     0x7289a4: ldur            w1, [x2, #0x27]
    // 0x7289a8: DecompressPointer r1
    //     0x7289a8: add             x1, x1, HEAP, lsl #32
    // 0x7289ac: LoadField: r2 = r1->field_7
    //     0x7289ac: ldur            w2, [x1, #7]
    // 0x7289b0: DecompressPointer r2
    //     0x7289b0: add             x2, x2, HEAP, lsl #32
    // 0x7289b4: LoadField: r1 = r2->field_7
    //     0x7289b4: ldur            w1, [x2, #7]
    // 0x7289b8: cbnz            w1, #0x7289d4
    // 0x7289bc: r1 = "Lütfen bir sayı giriniz!"
    //     0x7289bc: add             x1, PP, #0x20, lsl #12  ; [pp+0x20590] "Lütfen bir sayı giriniz!"
    //     0x7289c0: ldr             x1, [x1, #0x590]
    // 0x7289c4: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7289c4: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7289c8: r0 = showToast()
    //     0x7289c8: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x7289cc: r0 = Null
    //     0x7289cc: mov             x0, NULL
    // 0x7289d0: r0 = ReturnAsyncNotFuture()
    //     0x7289d0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7289d4: ldur            x1, [fp, #-0x10]
    // 0x7289d8: LoadField: r2 = r1->field_f
    //     0x7289d8: ldur            w2, [x1, #0xf]
    // 0x7289dc: DecompressPointer r2
    //     0x7289dc: add             x2, x2, HEAP, lsl #32
    // 0x7289e0: r16 = <Object?>
    //     0x7289e0: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7289e4: stp             x2, x16, [SP]
    // 0x7289e8: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7289e8: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7289ec: r0 = pop()
    //     0x7289ec: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7289f0: ldur            x0, [fp, #-0x18]
    // 0x7289f4: LoadField: r1 = r0->field_f
    //     0x7289f4: ldur            w1, [x0, #0xf]
    // 0x7289f8: DecompressPointer r1
    //     0x7289f8: add             x1, x1, HEAP, lsl #32
    // 0x7289fc: LoadField: r0 = r1->field_13
    //     0x7289fc: ldur            w0, [x1, #0x13]
    // 0x728a00: DecompressPointer r0
    //     0x728a00: add             x0, x0, HEAP, lsl #32
    // 0x728a04: mov             x1, x0
    // 0x728a08: r0 = clear()
    //     0x728a08: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x728a0c: r0 = getInstance()
    //     0x728a0c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x728a10: mov             x1, x0
    // 0x728a14: stur            x1, [fp, #-0x18]
    // 0x728a18: r0 = Await()
    //     0x728a18: bl              #0x3dd188  ; AwaitStub
    // 0x728a1c: r1 = LoadStaticField(0x1034)
    //     0x728a1c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x728a20: ldr             x1, [x1, #0x2068]
    // 0x728a24: r3 = LoadInt32Instr(r1)
    //     0x728a24: sbfx            x3, x1, #1, #0x1f
    //     0x728a28: tbz             w1, #0, #0x728a30
    //     0x728a2c: ldur            x3, [x1, #7]
    // 0x728a30: mov             x1, x0
    // 0x728a34: r2 = "kaydedilenZikir"
    //     0x728a34: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x728a38: ldr             x2, [x2, #0x598]
    // 0x728a3c: r0 = setInt()
    //     0x728a3c: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x728a40: r0 = Null
    //     0x728a40: mov             x0, NULL
    // 0x728a44: r0 = ReturnAsyncNotFuture()
    //     0x728a44: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x728a48: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728a48: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728a4c: b               #0x72896c
  }
  _ duzenle(/* No info */) async {
    // ** addr: 0x728a50, size: 0x15c
    // 0x728a50: EnterFrame
    //     0x728a50: stp             fp, lr, [SP, #-0x10]!
    //     0x728a54: mov             fp, SP
    // 0x728a58: AllocStack(0x18)
    //     0x728a58: sub             SP, SP, #0x18
    // 0x728a5c: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x728a5c: stur            NULL, [fp, #-8]
    //     0x728a60: stur            x1, [fp, #-0x10]
    // 0x728a64: CheckStackOverflow
    //     0x728a64: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728a68: cmp             SP, x16
    //     0x728a6c: b.ls            #0x728ba4
    // 0x728a70: InitAsync() -> Future
    //     0x728a70: mov             x0, NULL
    //     0x728a74: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x728a78: ldur            x0, [fp, #-0x10]
    // 0x728a7c: LoadField: r1 = r0->field_13
    //     0x728a7c: ldur            w1, [x0, #0x13]
    // 0x728a80: DecompressPointer r1
    //     0x728a80: add             x1, x1, HEAP, lsl #32
    // 0x728a84: LoadField: r2 = r1->field_27
    //     0x728a84: ldur            w2, [x1, #0x27]
    // 0x728a88: DecompressPointer r2
    //     0x728a88: add             x2, x2, HEAP, lsl #32
    // 0x728a8c: LoadField: r1 = r2->field_7
    //     0x728a8c: ldur            w1, [x2, #7]
    // 0x728a90: DecompressPointer r1
    //     0x728a90: add             x1, x1, HEAP, lsl #32
    // 0x728a94: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x728a94: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x728a98: r0 = tryParse()
    //     0x728a98: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x728a9c: cmp             w0, NULL
    // 0x728aa0: b.ne            #0x728aac
    // 0x728aa4: r0 = 0
    //     0x728aa4: mov             x0, #0
    // 0x728aa8: b               #0x728abc
    // 0x728aac: r1 = LoadInt32Instr(r0)
    //     0x728aac: sbfx            x1, x0, #1, #0x1f
    //     0x728ab0: tbz             w0, #0, #0x728ab8
    //     0x728ab4: ldur            x1, [x0, #7]
    // 0x728ab8: mov             x0, x1
    // 0x728abc: r17 = 9999
    //     0x728abc: mov             x17, #0x270f
    // 0x728ac0: cmp             x0, x17
    // 0x728ac4: b.le            #0x728adc
    // 0x728ac8: r0 = 19998
    //     0x728ac8: mov             x0, #0x4e1e
    // 0x728acc: StoreStaticField(0x1034, r0)
    //     0x728acc: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x728ad0: str             x0, [x1, #0x2068]
    // 0x728ad4: r0 = Null
    //     0x728ad4: mov             x0, NULL
    // 0x728ad8: r0 = ReturnAsyncNotFuture()
    //     0x728ad8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x728adc: ldur            x0, [fp, #-0x10]
    // 0x728ae0: LoadField: r1 = r0->field_13
    //     0x728ae0: ldur            w1, [x0, #0x13]
    // 0x728ae4: DecompressPointer r1
    //     0x728ae4: add             x1, x1, HEAP, lsl #32
    // 0x728ae8: LoadField: r2 = r1->field_27
    //     0x728ae8: ldur            w2, [x1, #0x27]
    // 0x728aec: DecompressPointer r2
    //     0x728aec: add             x2, x2, HEAP, lsl #32
    // 0x728af0: LoadField: r1 = r2->field_7
    //     0x728af0: ldur            w1, [x2, #7]
    // 0x728af4: DecompressPointer r1
    //     0x728af4: add             x1, x1, HEAP, lsl #32
    // 0x728af8: LoadField: r2 = r1->field_7
    //     0x728af8: ldur            w2, [x1, #7]
    // 0x728afc: cbnz            w2, #0x728b08
    // 0x728b00: r0 = Null
    //     0x728b00: mov             x0, NULL
    // 0x728b04: r0 = ReturnAsyncNotFuture()
    //     0x728b04: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x728b08: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x728b08: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x728b0c: r0 = tryParse()
    //     0x728b0c: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x728b10: cmp             w0, NULL
    // 0x728b14: b.ne            #0x728b20
    // 0x728b18: r2 = 0
    //     0x728b18: mov             x2, #0
    // 0x728b1c: b               #0x728b30
    // 0x728b20: r1 = LoadInt32Instr(r0)
    //     0x728b20: sbfx            x1, x0, #1, #0x1f
    //     0x728b24: tbz             w0, #0, #0x728b2c
    //     0x728b28: ldur            x1, [x0, #7]
    // 0x728b2c: mov             x2, x1
    // 0x728b30: r0 = BoxInt64Instr(r2)
    //     0x728b30: sbfiz           x0, x2, #1, #0x1f
    //     0x728b34: cmp             x2, x0, asr #1
    //     0x728b38: b.eq            #0x728b44
    //     0x728b3c: bl              #0x928328  ; AllocateMintSharedWithoutFPURegsStub
    //     0x728b40: stur            x2, [x0, #7]
    // 0x728b44: StoreStaticField(0x1034, r0)
    //     0x728b44: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x728b48: str             x0, [x1, #0x2068]
    // 0x728b4c: r0 = getInstance()
    //     0x728b4c: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x728b50: mov             x1, x0
    // 0x728b54: stur            x1, [fp, #-0x18]
    // 0x728b58: r0 = Await()
    //     0x728b58: bl              #0x3dd188  ; AwaitStub
    // 0x728b5c: r1 = LoadStaticField(0x1034)
    //     0x728b5c: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x728b60: ldr             x1, [x1, #0x2068]
    // 0x728b64: r3 = LoadInt32Instr(r1)
    //     0x728b64: sbfx            x3, x1, #1, #0x1f
    //     0x728b68: tbz             w1, #0, #0x728b70
    //     0x728b6c: ldur            x3, [x1, #7]
    // 0x728b70: mov             x1, x0
    // 0x728b74: r2 = "kaydedilenZikir"
    //     0x728b74: add             x2, PP, #0x20, lsl #12  ; [pp+0x20598] "kaydedilenZikir"
    //     0x728b78: ldr             x2, [x2, #0x598]
    // 0x728b7c: r0 = setInt()
    //     0x728b7c: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x728b80: r1 = Function '<anonymous closure>':.
    //     0x728b80: add             x1, PP, #0x20, lsl #12  ; [pp+0x20628] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x728b84: ldr             x1, [x1, #0x628]
    // 0x728b88: r2 = Null
    //     0x728b88: mov             x2, NULL
    // 0x728b8c: r0 = AllocateClosure()
    //     0x728b8c: bl              #0x9273d4  ; AllocateClosureStub
    // 0x728b90: ldur            x1, [fp, #-0x10]
    // 0x728b94: mov             x2, x0
    // 0x728b98: r0 = setState()
    //     0x728b98: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x728b9c: r0 = Null
    //     0x728b9c: mov             x0, NULL
    // 0x728ba0: r0 = ReturnAsyncNotFuture()
    //     0x728ba0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x728ba4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728ba4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728ba8: b               #0x728a70
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x728bac, size: 0x78
    // 0x728bac: EnterFrame
    //     0x728bac: stp             fp, lr, [SP, #-0x10]!
    //     0x728bb0: mov             fp, SP
    // 0x728bb4: AllocStack(0x18)
    //     0x728bb4: sub             SP, SP, #0x18
    // 0x728bb8: SetupParameters([dynamic _ /* r0 */])
    //     0x728bb8: ldr             x0, [fp, #0x10]
    //     0x728bbc: ldur            w1, [x0, #0x17]
    //     0x728bc0: add             x1, x1, HEAP, lsl #32
    //     0x728bc4: stur            x1, [fp, #-8]
    // 0x728bc8: CheckStackOverflow
    //     0x728bc8: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728bcc: cmp             SP, x16
    //     0x728bd0: b.ls            #0x728c1c
    // 0x728bd4: LoadField: r0 = r1->field_f
    //     0x728bd4: ldur            w0, [x1, #0xf]
    // 0x728bd8: DecompressPointer r0
    //     0x728bd8: add             x0, x0, HEAP, lsl #32
    // 0x728bdc: r16 = <Object?>
    //     0x728bdc: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x728be0: stp             x0, x16, [SP]
    // 0x728be4: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x728be4: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x728be8: r0 = pop()
    //     0x728be8: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x728bec: ldur            x0, [fp, #-8]
    // 0x728bf0: LoadField: r1 = r0->field_b
    //     0x728bf0: ldur            w1, [x0, #0xb]
    // 0x728bf4: DecompressPointer r1
    //     0x728bf4: add             x1, x1, HEAP, lsl #32
    // 0x728bf8: LoadField: r0 = r1->field_f
    //     0x728bf8: ldur            w0, [x1, #0xf]
    // 0x728bfc: DecompressPointer r0
    //     0x728bfc: add             x0, x0, HEAP, lsl #32
    // 0x728c00: LoadField: r1 = r0->field_13
    //     0x728c00: ldur            w1, [x0, #0x13]
    // 0x728c04: DecompressPointer r1
    //     0x728c04: add             x1, x1, HEAP, lsl #32
    // 0x728c08: r0 = clear()
    //     0x728c08: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x728c0c: r0 = Null
    //     0x728c0c: mov             x0, NULL
    // 0x728c10: LeaveFrame
    //     0x728c10: mov             SP, fp
    //     0x728c14: ldp             fp, lr, [SP], #0x10
    // 0x728c18: ret
    //     0x728c18: ret             
    // 0x728c1c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728c1c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728c20: b               #0x728bd4
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x728c24, size: 0x48
    // 0x728c24: EnterFrame
    //     0x728c24: stp             fp, lr, [SP, #-0x10]!
    //     0x728c28: mov             fp, SP
    // 0x728c2c: ldr             x0, [fp, #0x10]
    // 0x728c30: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x728c30: ldur            w1, [x0, #0x17]
    // 0x728c34: DecompressPointer r1
    //     0x728c34: add             x1, x1, HEAP, lsl #32
    // 0x728c38: CheckStackOverflow
    //     0x728c38: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728c3c: cmp             SP, x16
    //     0x728c40: b.ls            #0x728c64
    // 0x728c44: LoadField: r0 = r1->field_f
    //     0x728c44: ldur            w0, [x1, #0xf]
    // 0x728c48: DecompressPointer r0
    //     0x728c48: add             x0, x0, HEAP, lsl #32
    // 0x728c4c: mov             x1, x0
    // 0x728c50: r0 = titremeAcKapa()
    //     0x728c50: bl              #0x728c6c  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::titremeAcKapa
    // 0x728c54: r0 = Null
    //     0x728c54: mov             x0, NULL
    // 0x728c58: LeaveFrame
    //     0x728c58: mov             SP, fp
    //     0x728c5c: ldp             fp, lr, [SP], #0x10
    // 0x728c60: ret
    //     0x728c60: ret             
    // 0x728c64: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728c64: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728c68: b               #0x728c44
  }
  _ titremeAcKapa(/* No info */) async {
    // ** addr: 0x728c6c, size: 0x90
    // 0x728c6c: EnterFrame
    //     0x728c6c: stp             fp, lr, [SP, #-0x10]!
    //     0x728c70: mov             fp, SP
    // 0x728c74: AllocStack(0x18)
    //     0x728c74: sub             SP, SP, #0x18
    // 0x728c78: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x728c78: stur            NULL, [fp, #-8]
    //     0x728c7c: stur            x1, [fp, #-0x10]
    // 0x728c80: CheckStackOverflow
    //     0x728c80: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728c84: cmp             SP, x16
    //     0x728c88: b.ls            #0x728cf4
    // 0x728c8c: InitAsync() -> Future
    //     0x728c8c: mov             x0, NULL
    //     0x728c90: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x728c94: r0 = LoadStaticField(0x1030)
    //     0x728c94: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x728c98: ldr             x0, [x0, #0x2060]
    // 0x728c9c: eor             x1, x0, #0x10
    // 0x728ca0: StoreStaticField(0x1030, r1)
    //     0x728ca0: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x728ca4: str             x1, [x0, #0x2060]
    // 0x728ca8: r0 = getInstance()
    //     0x728ca8: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x728cac: mov             x1, x0
    // 0x728cb0: stur            x1, [fp, #-0x18]
    // 0x728cb4: r0 = Await()
    //     0x728cb4: bl              #0x3dd188  ; AwaitStub
    // 0x728cb8: r3 = LoadStaticField(0x1030)
    //     0x728cb8: ldr             x3, [THR, #0x78]  ; THR::field_table_values
    //     0x728cbc: ldr             x3, [x3, #0x2060]
    // 0x728cc0: mov             x1, x0
    // 0x728cc4: r2 = "titreme"
    //     0x728cc4: add             x2, PP, #0x20, lsl #12  ; [pp+0x20630] "titreme"
    //     0x728cc8: ldr             x2, [x2, #0x630]
    // 0x728ccc: r0 = setBool()
    //     0x728ccc: bl              #0x636ad0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setBool
    // 0x728cd0: r1 = Function '<anonymous closure>':.
    //     0x728cd0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20638] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x728cd4: ldr             x1, [x1, #0x638]
    // 0x728cd8: r2 = Null
    //     0x728cd8: mov             x2, NULL
    // 0x728cdc: r0 = AllocateClosure()
    //     0x728cdc: bl              #0x9273d4  ; AllocateClosureStub
    // 0x728ce0: ldur            x1, [fp, #-0x10]
    // 0x728ce4: mov             x2, x0
    // 0x728ce8: r0 = setState()
    //     0x728ce8: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x728cec: r0 = Null
    //     0x728cec: mov             x0, NULL
    // 0x728cf0: r0 = ReturnAsyncNotFuture()
    //     0x728cf0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x728cf4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728cf4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728cf8: b               #0x728c8c
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x728cfc, size: 0x48
    // 0x728cfc: EnterFrame
    //     0x728cfc: stp             fp, lr, [SP, #-0x10]!
    //     0x728d00: mov             fp, SP
    // 0x728d04: ldr             x0, [fp, #0x10]
    // 0x728d08: ArrayLoad: r1 = r0[0]  ; List_4
    //     0x728d08: ldur            w1, [x0, #0x17]
    // 0x728d0c: DecompressPointer r1
    //     0x728d0c: add             x1, x1, HEAP, lsl #32
    // 0x728d10: CheckStackOverflow
    //     0x728d10: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728d14: cmp             SP, x16
    //     0x728d18: b.ls            #0x728d3c
    // 0x728d1c: LoadField: r0 = r1->field_f
    //     0x728d1c: ldur            w0, [x1, #0xf]
    // 0x728d20: DecompressPointer r0
    //     0x728d20: add             x0, x0, HEAP, lsl #32
    // 0x728d24: mov             x1, x0
    // 0x728d28: r0 = hedefBelirle()
    //     0x728d28: bl              #0x728d44  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::hedefBelirle
    // 0x728d2c: r0 = Null
    //     0x728d2c: mov             x0, NULL
    // 0x728d30: LeaveFrame
    //     0x728d30: mov             SP, fp
    //     0x728d34: ldp             fp, lr, [SP], #0x10
    // 0x728d38: ret
    //     0x728d38: ret             
    // 0x728d3c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728d3c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728d40: b               #0x728d1c
  }
  _ hedefBelirle(/* No info */) async {
    // ** addr: 0x728d44, size: 0x90
    // 0x728d44: EnterFrame
    //     0x728d44: stp             fp, lr, [SP, #-0x10]!
    //     0x728d48: mov             fp, SP
    // 0x728d4c: AllocStack(0x38)
    //     0x728d4c: sub             SP, SP, #0x38
    // 0x728d50: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x728d50: stur            NULL, [fp, #-8]
    //     0x728d54: stur            x1, [fp, #-0x10]
    // 0x728d58: CheckStackOverflow
    //     0x728d58: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728d5c: cmp             SP, x16
    //     0x728d60: b.ls            #0x728dc8
    // 0x728d64: r1 = 1
    //     0x728d64: mov             x1, #1
    // 0x728d68: r0 = AllocateContext()
    //     0x728d68: bl              #0x927010  ; AllocateContextStub
    // 0x728d6c: mov             x2, x0
    // 0x728d70: ldur            x1, [fp, #-0x10]
    // 0x728d74: stur            x2, [fp, #-0x18]
    // 0x728d78: StoreField: r2->field_f = r1
    //     0x728d78: stur            w1, [x2, #0xf]
    // 0x728d7c: InitAsync() -> Future<void?>
    //     0x728d7c: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x728d80: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x728d84: ldur            x0, [fp, #-0x10]
    // 0x728d88: LoadField: r3 = r0->field_f
    //     0x728d88: ldur            w3, [x0, #0xf]
    // 0x728d8c: DecompressPointer r3
    //     0x728d8c: add             x3, x3, HEAP, lsl #32
    // 0x728d90: stur            x3, [fp, #-0x20]
    // 0x728d94: cmp             w3, NULL
    // 0x728d98: b.eq            #0x728dd0
    // 0x728d9c: ldur            x2, [fp, #-0x18]
    // 0x728da0: r1 = Function '<anonymous closure>':.
    //     0x728da0: add             x1, PP, #0x20, lsl #12  ; [pp+0x20640] AnonymousClosure: (0x728dd4), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::hedefBelirle (0x728d44)
    //     0x728da4: ldr             x1, [x1, #0x640]
    // 0x728da8: r0 = AllocateClosure()
    //     0x728da8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x728dac: r16 = <void?>
    //     0x728dac: ldr             x16, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    // 0x728db0: stp             x0, x16, [SP, #8]
    // 0x728db4: ldur            x16, [fp, #-0x20]
    // 0x728db8: str             x16, [SP]
    // 0x728dbc: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x728dbc: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x728dc0: r0 = showDialog()
    //     0x728dc0: bl              #0x5e9ea0  ; [package:flutter/src/material/dialog.dart] ::showDialog
    // 0x728dc4: r0 = ReturnAsync()
    //     0x728dc4: b               #0x427094  ; ReturnAsyncStub
    // 0x728dc8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x728dc8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x728dcc: b               #0x728d64
    // 0x728dd0: r0 = NullCastErrorSharedWithoutFPURegs()
    //     0x728dd0: bl              #0x928830  ; NullCastErrorSharedWithoutFPURegsStub
  }
  [closure] AlertDialog <anonymous closure>(dynamic, BuildContext) {
    // ** addr: 0x728dd4, size: 0x388
    // 0x728dd4: EnterFrame
    //     0x728dd4: stp             fp, lr, [SP, #-0x10]!
    //     0x728dd8: mov             fp, SP
    // 0x728ddc: AllocStack(0x30)
    //     0x728ddc: sub             SP, SP, #0x30
    // 0x728de0: SetupParameters([dynamic _ /* r0 */])
    //     0x728de0: ldr             x0, [fp, #0x18]
    //     0x728de4: ldur            w1, [x0, #0x17]
    //     0x728de8: add             x1, x1, HEAP, lsl #32
    //     0x728dec: stur            x1, [fp, #-8]
    // 0x728df0: CheckStackOverflow
    //     0x728df0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x728df4: cmp             SP, x16
    //     0x728df8: b.ls            #0x729154
    // 0x728dfc: r1 = 1
    //     0x728dfc: mov             x1, #1
    // 0x728e00: r0 = AllocateContext()
    //     0x728e00: bl              #0x927010  ; AllocateContextStub
    // 0x728e04: mov             x1, x0
    // 0x728e08: ldur            x0, [fp, #-8]
    // 0x728e0c: stur            x1, [fp, #-0x10]
    // 0x728e10: StoreField: r1->field_b = r0
    //     0x728e10: stur            w0, [x1, #0xb]
    // 0x728e14: ldr             x2, [fp, #0x10]
    // 0x728e18: StoreField: r1->field_f = r2
    //     0x728e18: stur            w2, [x1, #0xf]
    // 0x728e1c: r0 = InitLateStaticField(0x103c) // [package:umrem_demo/features/dualar/screens/zikirmatik.dart] Veriler::tema
    //     0x728e1c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x728e20: ldr             x0, [x0, #0x2078]
    //     0x728e24: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x728e28: cmp             w0, w16
    //     0x728e2c: b.ne            #0x728e3c
    //     0x728e30: add             x2, PP, #0x20, lsl #12  ; [pp+0x20450] Field <Veriler.tema>: static late (offset: 0x103c)
    //     0x728e34: ldr             x2, [x2, #0x450]
    //     0x728e38: bl              #0x926250  ; InitLateStaticFieldStub
    // 0x728e3c: mov             x1, x0
    // 0x728e40: ldur            x0, [fp, #-8]
    // 0x728e44: stur            x1, [fp, #-0x18]
    // 0x728e48: LoadField: r2 = r0->field_f
    //     0x728e48: ldur            w2, [x0, #0xf]
    // 0x728e4c: DecompressPointer r2
    //     0x728e4c: add             x2, x2, HEAP, lsl #32
    // 0x728e50: LoadField: r0 = r2->field_1f
    //     0x728e50: ldur            w0, [x2, #0x1f]
    // 0x728e54: DecompressPointer r0
    //     0x728e54: add             x0, x0, HEAP, lsl #32
    // 0x728e58: stur            x0, [fp, #-8]
    // 0x728e5c: r0 = BorderSide()
    //     0x728e5c: bl              #0x4c9fdc  ; AllocateBorderSideStub -> BorderSide (size=0x20)
    // 0x728e60: mov             x1, x0
    // 0x728e64: ldur            x0, [fp, #-0x18]
    // 0x728e68: stur            x1, [fp, #-0x20]
    // 0x728e6c: StoreField: r1->field_7 = r0
    //     0x728e6c: stur            w0, [x1, #7]
    // 0x728e70: d0 = 1.000000
    //     0x728e70: fmov            d0, #1.00000000
    // 0x728e74: StoreField: r1->field_b = d0
    //     0x728e74: stur            d0, [x1, #0xb]
    // 0x728e78: r2 = Instance_BorderStyle
    //     0x728e78: add             x2, PP, #0xc, lsl #12  ; [pp+0xc738] Obj!BorderStyle@a2aa11
    //     0x728e7c: ldr             x2, [x2, #0x738]
    // 0x728e80: StoreField: r1->field_13 = r2
    //     0x728e80: stur            w2, [x1, #0x13]
    // 0x728e84: d0 = -1.000000
    //     0x728e84: fmov            d0, #-1.00000000
    // 0x728e88: ArrayStore: r1[0] = d0  ; List_8
    //     0x728e88: stur            d0, [x1, #0x17]
    // 0x728e8c: r0 = UnderlineInputBorder()
    //     0x728e8c: bl              #0x6faf54  ; AllocateUnderlineInputBorderStub -> UnderlineInputBorder (size=0x10)
    // 0x728e90: mov             x1, x0
    // 0x728e94: r0 = Instance_BorderRadius
    //     0x728e94: add             x0, PP, #0x20, lsl #12  ; [pp+0x20560] Obj!BorderRadius@a0cc31
    //     0x728e98: ldr             x0, [x0, #0x560]
    // 0x728e9c: stur            x1, [fp, #-0x28]
    // 0x728ea0: StoreField: r1->field_b = r0
    //     0x728ea0: stur            w0, [x1, #0xb]
    // 0x728ea4: ldur            x0, [fp, #-0x20]
    // 0x728ea8: StoreField: r1->field_7 = r0
    //     0x728ea8: stur            w0, [x1, #7]
    // 0x728eac: r0 = InputDecoration()
    //     0x728eac: bl              #0x5fbec8  ; AllocateInputDecorationStub -> InputDecoration (size=0xec)
    // 0x728eb0: mov             x1, x0
    // 0x728eb4: r0 = "Kendinize bir hedef belirleyin."
    //     0x728eb4: add             x0, PP, #0x20, lsl #12  ; [pp+0x20648] "Kendinize bir hedef belirleyin."
    //     0x728eb8: ldr             x0, [x0, #0x648]
    // 0x728ebc: stur            x1, [fp, #-0x20]
    // 0x728ec0: StoreField: r1->field_2f = r0
    //     0x728ec0: stur            w0, [x1, #0x2f]
    // 0x728ec4: r0 = true
    //     0x728ec4: add             x0, NULL, #0x20  ; true
    // 0x728ec8: StoreField: r1->field_47 = r0
    //     0x728ec8: stur            w0, [x1, #0x47]
    // 0x728ecc: StoreField: r1->field_4b = r0
    //     0x728ecc: stur            w0, [x1, #0x4b]
    // 0x728ed0: ldur            x2, [fp, #-0x28]
    // 0x728ed4: StoreField: r1->field_c3 = r2
    //     0x728ed4: stur            w2, [x1, #0xc3]
    // 0x728ed8: StoreField: r1->field_d7 = r0
    //     0x728ed8: stur            w0, [x1, #0xd7]
    // 0x728edc: r0 = TextField()
    //     0x728edc: bl              #0x684214  ; AllocateTextFieldStub -> TextField (size=0x128)
    // 0x728ee0: mov             x1, x0
    // 0x728ee4: r0 = EditableText
    //     0x728ee4: ldr             x0, [PP, #0x6f50]  ; [pp+0x6f50] Type: EditableText
    // 0x728ee8: stur            x1, [fp, #-0x28]
    // 0x728eec: StoreField: r1->field_f = r0
    //     0x728eec: stur            w0, [x1, #0xf]
    // 0x728ef0: ldur            x0, [fp, #-8]
    // 0x728ef4: StoreField: r1->field_13 = r0
    //     0x728ef4: stur            w0, [x1, #0x13]
    // 0x728ef8: ldur            x0, [fp, #-0x20]
    // 0x728efc: StoreField: r1->field_1b = r0
    //     0x728efc: stur            w0, [x1, #0x1b]
    // 0x728f00: r0 = Instance_TextCapitalization
    //     0x728f00: add             x0, PP, #0x14, lsl #12  ; [pp+0x144f0] Obj!TextCapitalization@a29af1
    //     0x728f04: ldr             x0, [x0, #0x4f0]
    // 0x728f08: StoreField: r1->field_27 = r0
    //     0x728f08: stur            w0, [x1, #0x27]
    // 0x728f0c: r0 = Instance_TextAlign
    //     0x728f0c: ldr             x0, [PP, #0x4b00]  ; [pp+0x4b00] Obj!TextAlign@a2cf31
    // 0x728f10: StoreField: r1->field_33 = r0
    //     0x728f10: stur            w0, [x1, #0x33]
    // 0x728f14: r0 = false
    //     0x728f14: add             x0, NULL, #0x30  ; false
    // 0x728f18: StoreField: r1->field_6b = r0
    //     0x728f18: stur            w0, [x1, #0x6b]
    // 0x728f1c: StoreField: r1->field_3f = r0
    //     0x728f1c: stur            w0, [x1, #0x3f]
    // 0x728f20: r2 = "•"
    //     0x728f20: add             x2, PP, #0x14, lsl #12  ; [pp+0x144f8] "•"
    //     0x728f24: ldr             x2, [x2, #0x4f8]
    // 0x728f28: StoreField: r1->field_47 = r2
    //     0x728f28: stur            w2, [x1, #0x47]
    // 0x728f2c: StoreField: r1->field_4b = r0
    //     0x728f2c: stur            w0, [x1, #0x4b]
    // 0x728f30: r2 = true
    //     0x728f30: add             x2, NULL, #0x20  ; true
    // 0x728f34: StoreField: r1->field_5b = r2
    //     0x728f34: stur            w2, [x1, #0x5b]
    // 0x728f38: r3 = 2
    //     0x728f38: mov             x3, #2
    // 0x728f3c: StoreField: r1->field_5f = r3
    //     0x728f3c: stur            w3, [x1, #0x5f]
    // 0x728f40: StoreField: r1->field_67 = r0
    //     0x728f40: stur            w0, [x1, #0x67]
    // 0x728f44: d0 = 2.000000
    //     0x728f44: fmov            d0, #2.00000000
    // 0x728f48: StoreField: r1->field_9b = d0
    //     0x728f48: stur            d0, [x1, #0x9b]
    // 0x728f4c: ldur            x3, [fp, #-0x18]
    // 0x728f50: StoreField: r1->field_af = r3
    //     0x728f50: stur            w3, [x1, #0xaf]
    // 0x728f54: r4 = Instance_EdgeInsets
    //     0x728f54: ldr             x4, [PP, #0x7020]  ; [pp+0x7020] Obj!EdgeInsets@a0bc91
    // 0x728f58: StoreField: r1->field_c3 = r4
    //     0x728f58: stur            w4, [x1, #0xc3]
    // 0x728f5c: r4 = Instance_DragStartBehavior
    //     0x728f5c: ldr             x4, [PP, #0x6f40]  ; [pp+0x6f40] Obj!DragStartBehavior@a2bf31
    // 0x728f60: StoreField: r1->field_d3 = r4
    //     0x728f60: stur            w4, [x1, #0xd3]
    // 0x728f64: StoreField: r1->field_db = r0
    //     0x728f64: stur            w0, [x1, #0xdb]
    // 0x728f68: r4 = const []
    //     0x728f68: ldr             x4, [PP, #0x73e8]  ; [pp+0x73e8] List<String>(0)
    // 0x728f6c: StoreField: r1->field_f7 = r4
    //     0x728f6c: stur            w4, [x1, #0xf7]
    // 0x728f70: r4 = Instance_Clip
    //     0x728f70: add             x4, PP, #0x12, lsl #12  ; [pp+0x122d8] Obj!Clip@a2d8f1
    //     0x728f74: ldr             x4, [x4, #0x2d8]
    // 0x728f78: StoreField: r1->field_fb = r4
    //     0x728f78: stur            w4, [x1, #0xfb]
    // 0x728f7c: r17 = 259
    //     0x728f7c: mov             x17, #0x103
    // 0x728f80: str             w2, [x1, x17]
    // 0x728f84: r17 = 263
    //     0x728f84: mov             x17, #0x107
    // 0x728f88: str             w2, [x1, x17]
    // 0x728f8c: r17 = 267
    //     0x728f8c: mov             x17, #0x10b
    // 0x728f90: str             w2, [x1, x17]
    // 0x728f94: r4 = Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static.
    //     0x728f94: add             x4, PP, #0x18, lsl #12  ; [pp+0x189f8] Closure: (BuildContext, EditableTextState) => Widget from Function '_defaultContextMenuBuilder@248181401': static. (0x7f2290684300)
    //     0x728f98: ldr             x4, [x4, #0x9f8]
    // 0x728f9c: r17 = 275
    //     0x728f9c: mov             x17, #0x113
    // 0x728fa0: str             w4, [x1, x17]
    // 0x728fa4: r17 = 279
    //     0x728fa4: mov             x17, #0x117
    // 0x728fa8: str             w2, [x1, x17]
    // 0x728fac: r4 = Instance_SmartDashesType
    //     0x728fac: ldr             x4, [PP, #0x73f0]  ; [pp+0x73f0] Obj!SmartDashesType@a29cf1
    // 0x728fb0: StoreField: r1->field_53 = r4
    //     0x728fb0: stur            w4, [x1, #0x53]
    // 0x728fb4: r4 = Instance_SmartQuotesType
    //     0x728fb4: add             x4, PP, #0x14, lsl #12  ; [pp+0x14520] Obj!SmartQuotesType@a29cd1
    //     0x728fb8: ldr             x4, [x4, #0x520]
    // 0x728fbc: StoreField: r1->field_57 = r4
    //     0x728fbc: stur            w4, [x1, #0x57]
    // 0x728fc0: r4 = Instance_TextInputType
    //     0x728fc0: add             x4, PP, #0x14, lsl #12  ; [pp+0x14948] Obj!TextInputType@a0ad01
    //     0x728fc4: ldr             x4, [x4, #0x948]
    // 0x728fc8: StoreField: r1->field_1f = r4
    //     0x728fc8: stur            w4, [x1, #0x1f]
    // 0x728fcc: StoreField: r1->field_c7 = r2
    //     0x728fcc: stur            w2, [x1, #0xc7]
    // 0x728fd0: r0 = TextStyle()
    //     0x728fd0: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x728fd4: mov             x1, x0
    // 0x728fd8: r0 = true
    //     0x728fd8: add             x0, NULL, #0x20  ; true
    // 0x728fdc: stur            x1, [fp, #-8]
    // 0x728fe0: StoreField: r1->field_7 = r0
    //     0x728fe0: stur            w0, [x1, #7]
    // 0x728fe4: ldur            x2, [fp, #-0x18]
    // 0x728fe8: StoreField: r1->field_b = r2
    //     0x728fe8: stur            w2, [x1, #0xb]
    // 0x728fec: r0 = Text()
    //     0x728fec: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x728ff0: mov             x3, x0
    // 0x728ff4: r0 = "İptal"
    //     0x728ff4: add             x0, PP, #0x20, lsl #12  ; [pp+0x204e0] "İptal"
    //     0x728ff8: ldr             x0, [x0, #0x4e0]
    // 0x728ffc: stur            x3, [fp, #-0x20]
    // 0x729000: StoreField: r3->field_b = r0
    //     0x729000: stur            w0, [x3, #0xb]
    // 0x729004: ldur            x0, [fp, #-8]
    // 0x729008: StoreField: r3->field_13 = r0
    //     0x729008: stur            w0, [x3, #0x13]
    // 0x72900c: ldur            x2, [fp, #-0x10]
    // 0x729010: r1 = Function '<anonymous closure>':.
    //     0x729010: add             x1, PP, #0x20, lsl #12  ; [pp+0x20650] AnonymousClosure: (0x729484), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::hedefBelirle (0x728d44)
    //     0x729014: ldr             x1, [x1, #0x650]
    // 0x729018: r0 = AllocateClosure()
    //     0x729018: bl              #0x9273d4  ; AllocateClosureStub
    // 0x72901c: stur            x0, [fp, #-8]
    // 0x729020: r0 = IconButton()
    //     0x729020: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x729024: mov             x1, x0
    // 0x729028: ldur            x0, [fp, #-8]
    // 0x72902c: stur            x1, [fp, #-0x30]
    // 0x729030: StoreField: r1->field_3b = r0
    //     0x729030: stur            w0, [x1, #0x3b]
    // 0x729034: r0 = false
    //     0x729034: add             x0, NULL, #0x30  ; false
    // 0x729038: StoreField: r1->field_4f = r0
    //     0x729038: stur            w0, [x1, #0x4f]
    // 0x72903c: ldur            x2, [fp, #-0x20]
    // 0x729040: StoreField: r1->field_1f = r2
    //     0x729040: stur            w2, [x1, #0x1f]
    // 0x729044: r2 = Instance__IconButtonVariant
    //     0x729044: add             x2, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x729048: ldr             x2, [x2, #0x1b8]
    // 0x72904c: StoreField: r1->field_6f = r2
    //     0x72904c: stur            w2, [x1, #0x6f]
    // 0x729050: r0 = TextStyle()
    //     0x729050: bl              #0x411e0c  ; AllocateTextStyleStub -> TextStyle (size=0x70)
    // 0x729054: mov             x1, x0
    // 0x729058: r0 = true
    //     0x729058: add             x0, NULL, #0x20  ; true
    // 0x72905c: stur            x1, [fp, #-8]
    // 0x729060: StoreField: r1->field_7 = r0
    //     0x729060: stur            w0, [x1, #7]
    // 0x729064: ldur            x0, [fp, #-0x18]
    // 0x729068: StoreField: r1->field_b = r0
    //     0x729068: stur            w0, [x1, #0xb]
    // 0x72906c: r0 = Text()
    //     0x72906c: bl              #0x580bbc  ; AllocateTextStub -> Text (size=0x50)
    // 0x729070: mov             x1, x0
    // 0x729074: r0 = "Kaydet"
    //     0x729074: add             x0, PP, #0x13, lsl #12  ; [pp+0x13b50] "Kaydet"
    //     0x729078: ldr             x0, [x0, #0xb50]
    // 0x72907c: stur            x1, [fp, #-0x18]
    // 0x729080: StoreField: r1->field_b = r0
    //     0x729080: stur            w0, [x1, #0xb]
    // 0x729084: ldur            x0, [fp, #-8]
    // 0x729088: StoreField: r1->field_13 = r0
    //     0x729088: stur            w0, [x1, #0x13]
    // 0x72908c: r0 = IconButton()
    //     0x72908c: bl              #0x66c118  ; AllocateIconButtonStub -> IconButton (size=0x74)
    // 0x729090: mov             x3, x0
    // 0x729094: r0 = 43.000000
    //     0x729094: add             x0, PP, #0x20, lsl #12  ; [pp+0x20578] 43
    //     0x729098: ldr             x0, [x0, #0x578]
    // 0x72909c: stur            x3, [fp, #-8]
    // 0x7290a0: StoreField: r3->field_b = r0
    //     0x7290a0: stur            w0, [x3, #0xb]
    // 0x7290a4: ldur            x2, [fp, #-0x10]
    // 0x7290a8: r1 = Function '<anonymous closure>':.
    //     0x7290a8: add             x1, PP, #0x20, lsl #12  ; [pp+0x20658] AnonymousClosure: (0x72915c), in [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::hedefBelirle (0x728d44)
    //     0x7290ac: ldr             x1, [x1, #0x658]
    // 0x7290b0: r0 = AllocateClosure()
    //     0x7290b0: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7290b4: mov             x1, x0
    // 0x7290b8: ldur            x0, [fp, #-8]
    // 0x7290bc: StoreField: r0->field_3b = r1
    //     0x7290bc: stur            w1, [x0, #0x3b]
    // 0x7290c0: r3 = false
    //     0x7290c0: add             x3, NULL, #0x30  ; false
    // 0x7290c4: StoreField: r0->field_4f = r3
    //     0x7290c4: stur            w3, [x0, #0x4f]
    // 0x7290c8: ldur            x1, [fp, #-0x18]
    // 0x7290cc: StoreField: r0->field_1f = r1
    //     0x7290cc: stur            w1, [x0, #0x1f]
    // 0x7290d0: r1 = Instance__IconButtonVariant
    //     0x7290d0: add             x1, PP, #0x12, lsl #12  ; [pp+0x121b8] Obj!_IconButtonVariant@a2ba71
    //     0x7290d4: ldr             x1, [x1, #0x1b8]
    // 0x7290d8: StoreField: r0->field_6f = r1
    //     0x7290d8: stur            w1, [x0, #0x6f]
    // 0x7290dc: r1 = Null
    //     0x7290dc: mov             x1, NULL
    // 0x7290e0: r2 = 4
    //     0x7290e0: mov             x2, #4
    // 0x7290e4: r0 = AllocateArray()
    //     0x7290e4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7290e8: mov             x2, x0
    // 0x7290ec: ldur            x0, [fp, #-0x30]
    // 0x7290f0: stur            x2, [fp, #-0x10]
    // 0x7290f4: StoreField: r2->field_f = r0
    //     0x7290f4: stur            w0, [x2, #0xf]
    // 0x7290f8: ldur            x0, [fp, #-8]
    // 0x7290fc: StoreField: r2->field_13 = r0
    //     0x7290fc: stur            w0, [x2, #0x13]
    // 0x729100: r1 = <Widget>
    //     0x729100: ldr             x1, [PP, #0x5220]  ; [pp+0x5220] TypeArguments: <Widget>
    // 0x729104: r0 = AllocateGrowableArray()
    //     0x729104: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x729108: mov             x1, x0
    // 0x72910c: ldur            x0, [fp, #-0x10]
    // 0x729110: stur            x1, [fp, #-8]
    // 0x729114: StoreField: r1->field_f = r0
    //     0x729114: stur            w0, [x1, #0xf]
    // 0x729118: r0 = 4
    //     0x729118: mov             x0, #4
    // 0x72911c: StoreField: r1->field_b = r0
    //     0x72911c: stur            w0, [x1, #0xb]
    // 0x729120: r0 = AlertDialog()
    //     0x729120: bl              #0x6d3804  ; AllocateAlertDialogStub -> AlertDialog (size=0x70)
    // 0x729124: r1 = Instance_Text
    //     0x729124: add             x1, PP, #0x20, lsl #12  ; [pp+0x20660] Obj!Text@a1ca31
    //     0x729128: ldr             x1, [x1, #0x660]
    // 0x72912c: StoreField: r0->field_f = r1
    //     0x72912c: stur            w1, [x0, #0xf]
    // 0x729130: ldur            x1, [fp, #-0x28]
    // 0x729134: StoreField: r0->field_1b = r1
    //     0x729134: stur            w1, [x0, #0x1b]
    // 0x729138: ldur            x1, [fp, #-8]
    // 0x72913c: StoreField: r0->field_27 = r1
    //     0x72913c: stur            w1, [x0, #0x27]
    // 0x729140: r1 = false
    //     0x729140: add             x1, NULL, #0x30  ; false
    // 0x729144: StoreField: r0->field_6b = r1
    //     0x729144: stur            w1, [x0, #0x6b]
    // 0x729148: LeaveFrame
    //     0x729148: mov             SP, fp
    //     0x72914c: ldp             fp, lr, [SP], #0x10
    // 0x729150: ret
    //     0x729150: ret             
    // 0x729154: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x729154: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x729158: b               #0x728dfc
  }
  [closure] Future<void> <anonymous closure>(dynamic) async {
    // ** addr: 0x72915c, size: 0x1dc
    // 0x72915c: EnterFrame
    //     0x72915c: stp             fp, lr, [SP, #-0x10]!
    //     0x729160: mov             fp, SP
    // 0x729164: AllocStack(0x30)
    //     0x729164: sub             SP, SP, #0x30
    // 0x729168: SetupParameters(_ZikirCekState this /* r1 */)
    //     0x729168: stur            NULL, [fp, #-8]
    //     0x72916c: mov             x0, #0
    //     0x729170: add             x1, fp, w0, sxtw #2
    //     0x729174: ldr             x1, [x1, #0x10]
    //     0x729178: ldur            w2, [x1, #0x17]
    //     0x72917c: add             x2, x2, HEAP, lsl #32
    //     0x729180: stur            x2, [fp, #-0x10]
    // 0x729184: CheckStackOverflow
    //     0x729184: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x729188: cmp             SP, x16
    //     0x72918c: b.ls            #0x729330
    // 0x729190: InitAsync() -> Future<void?>
    //     0x729190: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x729194: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x729198: ldur            x0, [fp, #-0x10]
    // 0x72919c: LoadField: r2 = r0->field_b
    //     0x72919c: ldur            w2, [x0, #0xb]
    // 0x7291a0: DecompressPointer r2
    //     0x7291a0: add             x2, x2, HEAP, lsl #32
    // 0x7291a4: stur            x2, [fp, #-0x18]
    // 0x7291a8: LoadField: r1 = r2->field_f
    //     0x7291a8: ldur            w1, [x2, #0xf]
    // 0x7291ac: DecompressPointer r1
    //     0x7291ac: add             x1, x1, HEAP, lsl #32
    // 0x7291b0: r0 = belirle()
    //     0x7291b0: bl              #0x729338  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::belirle
    // 0x7291b4: r0 = getInstance()
    //     0x7291b4: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x7291b8: mov             x1, x0
    // 0x7291bc: stur            x1, [fp, #-0x20]
    // 0x7291c0: r0 = Await()
    //     0x7291c0: bl              #0x3dd188  ; AwaitStub
    // 0x7291c4: mov             x1, x0
    // 0x7291c8: ldur            x0, [fp, #-0x18]
    // 0x7291cc: LoadField: r2 = r0->field_f
    //     0x7291cc: ldur            w2, [x0, #0xf]
    // 0x7291d0: DecompressPointer r2
    //     0x7291d0: add             x2, x2, HEAP, lsl #32
    // 0x7291d4: ArrayLoad: r3 = r2[0]  ; List_8
    //     0x7291d4: ldur            x3, [x2, #0x17]
    // 0x7291d8: r2 = "hedef"
    //     0x7291d8: add             x2, PP, #0x20, lsl #12  ; [pp+0x20668] "hedef"
    //     0x7291dc: ldr             x2, [x2, #0x668]
    // 0x7291e0: r0 = setInt()
    //     0x7291e0: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x7291e4: ldur            x1, [fp, #-0x18]
    // 0x7291e8: LoadField: r0 = r1->field_f
    //     0x7291e8: ldur            w0, [x1, #0xf]
    // 0x7291ec: DecompressPointer r0
    //     0x7291ec: add             x0, x0, HEAP, lsl #32
    // 0x7291f0: LoadField: r2 = r0->field_1f
    //     0x7291f0: ldur            w2, [x0, #0x1f]
    // 0x7291f4: DecompressPointer r2
    //     0x7291f4: add             x2, x2, HEAP, lsl #32
    // 0x7291f8: LoadField: r0 = r2->field_27
    //     0x7291f8: ldur            w0, [x2, #0x27]
    // 0x7291fc: DecompressPointer r0
    //     0x7291fc: add             x0, x0, HEAP, lsl #32
    // 0x729200: LoadField: r3 = r0->field_7
    //     0x729200: ldur            w3, [x0, #7]
    // 0x729204: DecompressPointer r3
    //     0x729204: add             x3, x3, HEAP, lsl #32
    // 0x729208: LoadField: r0 = r3->field_7
    //     0x729208: ldur            w0, [x3, #7]
    // 0x72920c: cbnz            w0, #0x729218
    // 0x729210: r0 = Null
    //     0x729210: mov             x0, NULL
    // 0x729214: r0 = ReturnAsyncNotFuture()
    //     0x729214: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x729218: LoadField: r0 = r2->field_27
    //     0x729218: ldur            w0, [x2, #0x27]
    // 0x72921c: DecompressPointer r0
    //     0x72921c: add             x0, x0, HEAP, lsl #32
    // 0x729220: LoadField: r2 = r0->field_7
    //     0x729220: ldur            w2, [x0, #7]
    // 0x729224: DecompressPointer r2
    //     0x729224: add             x2, x2, HEAP, lsl #32
    // 0x729228: r0 = LoadClassIdInstr(r2)
    //     0x729228: ldur            x0, [x2, #-1]
    //     0x72922c: ubfx            x0, x0, #0xc, #0x14
    // 0x729230: r16 = "0"
    //     0x729230: ldr             x16, [PP, #0x4660]  ; [pp+0x4660] "0"
    // 0x729234: stp             x16, x2, [SP]
    // 0x729238: mov             lr, x0
    // 0x72923c: ldr             lr, [x21, lr, lsl #3]
    // 0x729240: blr             lr
    // 0x729244: tbnz            w0, #4, #0x729260
    // 0x729248: r1 = "Hedefiniz 0 olamaz!"
    //     0x729248: add             x1, PP, #0x20, lsl #12  ; [pp+0x20670] "Hedefiniz 0 olamaz!"
    //     0x72924c: ldr             x1, [x1, #0x670]
    // 0x729250: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x729250: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x729254: r0 = showToast()
    //     0x729254: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x729258: r0 = Null
    //     0x729258: mov             x0, NULL
    // 0x72925c: r0 = ReturnAsyncNotFuture()
    //     0x72925c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x729260: ldur            x0, [fp, #-0x18]
    // 0x729264: LoadField: r1 = r0->field_f
    //     0x729264: ldur            w1, [x0, #0xf]
    // 0x729268: DecompressPointer r1
    //     0x729268: add             x1, x1, HEAP, lsl #32
    // 0x72926c: LoadField: r2 = r1->field_1f
    //     0x72926c: ldur            w2, [x1, #0x1f]
    // 0x729270: DecompressPointer r2
    //     0x729270: add             x2, x2, HEAP, lsl #32
    // 0x729274: LoadField: r1 = r2->field_27
    //     0x729274: ldur            w1, [x2, #0x27]
    // 0x729278: DecompressPointer r1
    //     0x729278: add             x1, x1, HEAP, lsl #32
    // 0x72927c: LoadField: r2 = r1->field_7
    //     0x72927c: ldur            w2, [x1, #7]
    // 0x729280: DecompressPointer r2
    //     0x729280: add             x2, x2, HEAP, lsl #32
    // 0x729284: LoadField: r1 = r2->field_7
    //     0x729284: ldur            w1, [x2, #7]
    // 0x729288: r2 = LoadInt32Instr(r1)
    //     0x729288: sbfx            x2, x1, #1, #0x1f
    // 0x72928c: cmp             x2, #5
    // 0x729290: b.le            #0x7292ac
    // 0x729294: r1 = "Hedefiniz 99999\'dan büyük olamaz!"
    //     0x729294: add             x1, PP, #0x20, lsl #12  ; [pp+0x20678] "Hedefiniz 99999\'dan büyük olamaz!"
    //     0x729298: ldr             x1, [x1, #0x678]
    // 0x72929c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72929c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7292a0: r0 = showToast()
    //     0x7292a0: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x7292a4: r0 = Null
    //     0x7292a4: mov             x0, NULL
    // 0x7292a8: r0 = ReturnAsyncNotFuture()
    //     0x7292a8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7292ac: ldur            x1, [fp, #-0x10]
    // 0x7292b0: LoadField: r2 = r1->field_f
    //     0x7292b0: ldur            w2, [x1, #0xf]
    // 0x7292b4: DecompressPointer r2
    //     0x7292b4: add             x2, x2, HEAP, lsl #32
    // 0x7292b8: r16 = <Object?>
    //     0x7292b8: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7292bc: stp             x2, x16, [SP]
    // 0x7292c0: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7292c0: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7292c4: r0 = pop()
    //     0x7292c4: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7292c8: r1 = Null
    //     0x7292c8: mov             x1, NULL
    // 0x7292cc: r2 = 6
    //     0x7292cc: mov             x2, #6
    // 0x7292d0: r0 = AllocateArray()
    //     0x7292d0: bl              #0x9280a0  ; AllocateArrayStub
    // 0x7292d4: r16 = "Hedefiniz "
    //     0x7292d4: add             x16, PP, #0x20, lsl #12  ; [pp+0x20680] "Hedefiniz "
    //     0x7292d8: ldr             x16, [x16, #0x680]
    // 0x7292dc: StoreField: r0->field_f = r16
    //     0x7292dc: stur            w16, [x0, #0xf]
    // 0x7292e0: ldur            x1, [fp, #-0x18]
    // 0x7292e4: LoadField: r2 = r1->field_f
    //     0x7292e4: ldur            w2, [x1, #0xf]
    // 0x7292e8: DecompressPointer r2
    //     0x7292e8: add             x2, x2, HEAP, lsl #32
    // 0x7292ec: LoadField: r1 = r2->field_1f
    //     0x7292ec: ldur            w1, [x2, #0x1f]
    // 0x7292f0: DecompressPointer r1
    //     0x7292f0: add             x1, x1, HEAP, lsl #32
    // 0x7292f4: LoadField: r2 = r1->field_27
    //     0x7292f4: ldur            w2, [x1, #0x27]
    // 0x7292f8: DecompressPointer r2
    //     0x7292f8: add             x2, x2, HEAP, lsl #32
    // 0x7292fc: LoadField: r1 = r2->field_7
    //     0x7292fc: ldur            w1, [x2, #7]
    // 0x729300: DecompressPointer r1
    //     0x729300: add             x1, x1, HEAP, lsl #32
    // 0x729304: StoreField: r0->field_13 = r1
    //     0x729304: stur            w1, [x0, #0x13]
    // 0x729308: r16 = " olarak belirlendi!"
    //     0x729308: add             x16, PP, #0x20, lsl #12  ; [pp+0x20688] " olarak belirlendi!"
    //     0x72930c: ldr             x16, [x16, #0x688]
    // 0x729310: ArrayStore: r0[0] = r16  ; List_4
    //     0x729310: stur            w16, [x0, #0x17]
    // 0x729314: str             x0, [SP]
    // 0x729318: r0 = _interpolate()
    //     0x729318: bl              #0x3ca504  ; [dart:core] _StringBase::_interpolate
    // 0x72931c: mov             x1, x0
    // 0x729320: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x729320: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x729324: r0 = showToast()
    //     0x729324: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x729328: r0 = Null
    //     0x729328: mov             x0, NULL
    // 0x72932c: r0 = ReturnAsyncNotFuture()
    //     0x72932c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x729330: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x729330: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x729334: b               #0x729190
  }
  _ belirle(/* No info */) async {
    // ** addr: 0x729338, size: 0x14c
    // 0x729338: EnterFrame
    //     0x729338: stp             fp, lr, [SP, #-0x10]!
    //     0x72933c: mov             fp, SP
    // 0x729340: AllocStack(0x18)
    //     0x729340: sub             SP, SP, #0x18
    // 0x729344: SetupParameters(_ZikirCekState this /* r1 => r1, fp-0x10 */)
    //     0x729344: stur            NULL, [fp, #-8]
    //     0x729348: stur            x1, [fp, #-0x10]
    // 0x72934c: CheckStackOverflow
    //     0x72934c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x729350: cmp             SP, x16
    //     0x729354: b.ls            #0x72947c
    // 0x729358: InitAsync() -> Future
    //     0x729358: mov             x0, NULL
    //     0x72935c: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x729360: ldur            x0, [fp, #-0x10]
    // 0x729364: LoadField: r1 = r0->field_13
    //     0x729364: ldur            w1, [x0, #0x13]
    // 0x729368: DecompressPointer r1
    //     0x729368: add             x1, x1, HEAP, lsl #32
    // 0x72936c: LoadField: r2 = r1->field_27
    //     0x72936c: ldur            w2, [x1, #0x27]
    // 0x729370: DecompressPointer r2
    //     0x729370: add             x2, x2, HEAP, lsl #32
    // 0x729374: LoadField: r1 = r2->field_7
    //     0x729374: ldur            w1, [x2, #7]
    // 0x729378: DecompressPointer r1
    //     0x729378: add             x1, x1, HEAP, lsl #32
    // 0x72937c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x72937c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x729380: r0 = tryParse()
    //     0x729380: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x729384: cmp             w0, NULL
    // 0x729388: b.ne            #0x729394
    // 0x72938c: r1 = 0
    //     0x72938c: mov             x1, #0
    // 0x729390: b               #0x7293a0
    // 0x729394: r1 = LoadInt32Instr(r0)
    //     0x729394: sbfx            x1, x0, #1, #0x1f
    //     0x729398: tbz             w0, #0, #0x7293a0
    //     0x72939c: ldur            x1, [x0, #7]
    // 0x7293a0: ldur            x0, [fp, #-0x10]
    // 0x7293a4: LoadField: r2 = r0->field_1f
    //     0x7293a4: ldur            w2, [x0, #0x1f]
    // 0x7293a8: DecompressPointer r2
    //     0x7293a8: add             x2, x2, HEAP, lsl #32
    // 0x7293ac: LoadField: r3 = r2->field_27
    //     0x7293ac: ldur            w3, [x2, #0x27]
    // 0x7293b0: DecompressPointer r3
    //     0x7293b0: add             x3, x3, HEAP, lsl #32
    // 0x7293b4: LoadField: r2 = r3->field_7
    //     0x7293b4: ldur            w2, [x3, #7]
    // 0x7293b8: DecompressPointer r2
    //     0x7293b8: add             x2, x2, HEAP, lsl #32
    // 0x7293bc: LoadField: r3 = r2->field_7
    //     0x7293bc: ldur            w3, [x2, #7]
    // 0x7293c0: cbnz            w3, #0x7293dc
    // 0x7293c4: r1 = "Lütfen bir hedef belirleyin!"
    //     0x7293c4: add             x1, PP, #0x20, lsl #12  ; [pp+0x20690] "Lütfen bir hedef belirleyin!"
    //     0x7293c8: ldr             x1, [x1, #0x690]
    // 0x7293cc: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7293cc: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7293d0: r0 = showToast()
    //     0x7293d0: bl              #0x5e5c4c  ; [package:fluttertoast/fluttertoast.dart] Fluttertoast::showToast
    // 0x7293d4: r0 = Null
    //     0x7293d4: mov             x0, NULL
    // 0x7293d8: r0 = ReturnAsyncNotFuture()
    //     0x7293d8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7293dc: r17 = 9999
    //     0x7293dc: mov             x17, #0x270f
    // 0x7293e0: cmp             x1, x17
    // 0x7293e4: b.le            #0x7293fc
    // 0x7293e8: r0 = 19998
    //     0x7293e8: mov             x0, #0x4e1e
    // 0x7293ec: StoreStaticField(0x1034, r0)
    //     0x7293ec: ldr             x1, [THR, #0x78]  ; THR::field_table_values
    //     0x7293f0: str             x0, [x1, #0x2068]
    // 0x7293f4: r0 = Null
    //     0x7293f4: mov             x0, NULL
    // 0x7293f8: r0 = ReturnAsyncNotFuture()
    //     0x7293f8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x7293fc: mov             x1, x2
    // 0x729400: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x729400: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x729404: r0 = tryParse()
    //     0x729404: bl              #0x3df454  ; [dart:core] int::tryParse
    // 0x729408: cmp             w0, NULL
    // 0x72940c: b.ne            #0x729418
    // 0x729410: r0 = 0
    //     0x729410: mov             x0, #0
    // 0x729414: b               #0x729428
    // 0x729418: r1 = LoadInt32Instr(r0)
    //     0x729418: sbfx            x1, x0, #1, #0x1f
    //     0x72941c: tbz             w0, #0, #0x729424
    //     0x729420: ldur            x1, [x0, #7]
    // 0x729424: mov             x0, x1
    // 0x729428: ldur            x1, [fp, #-0x10]
    // 0x72942c: ArrayStore: r1[0] = r0  ; List_8
    //     0x72942c: stur            x0, [x1, #0x17]
    // 0x729430: r0 = getInstance()
    //     0x729430: bl              #0x5d20c0  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::getInstance
    // 0x729434: mov             x1, x0
    // 0x729438: stur            x1, [fp, #-0x18]
    // 0x72943c: r0 = Await()
    //     0x72943c: bl              #0x3dd188  ; AwaitStub
    // 0x729440: mov             x1, x0
    // 0x729444: ldur            x0, [fp, #-0x10]
    // 0x729448: ArrayLoad: r3 = r0[0]  ; List_8
    //     0x729448: ldur            x3, [x0, #0x17]
    // 0x72944c: r2 = "hedef"
    //     0x72944c: add             x2, PP, #0x20, lsl #12  ; [pp+0x20668] "hedef"
    //     0x729450: ldr             x2, [x2, #0x668]
    // 0x729454: r0 = setInt()
    //     0x729454: bl              #0x5cfc14  ; [package:shared_preferences/src/shared_preferences_legacy.dart] SharedPreferences::setInt
    // 0x729458: r1 = Function '<anonymous closure>':.
    //     0x729458: add             x1, PP, #0x20, lsl #12  ; [pp+0x20698] Function: [dart:ui] _NativeScene::_NativeScene._ (0x921cc4)
    //     0x72945c: ldr             x1, [x1, #0x698]
    // 0x729460: r2 = Null
    //     0x729460: mov             x2, NULL
    // 0x729464: r0 = AllocateClosure()
    //     0x729464: bl              #0x9273d4  ; AllocateClosureStub
    // 0x729468: ldur            x1, [fp, #-0x10]
    // 0x72946c: mov             x2, x0
    // 0x729470: r0 = setState()
    //     0x729470: bl              #0x3f47e8  ; [package:flutter/src/widgets/framework.dart] State::setState
    // 0x729474: r0 = Null
    //     0x729474: mov             x0, NULL
    // 0x729478: r0 = ReturnAsyncNotFuture()
    //     0x729478: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x72947c: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x72947c: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x729480: b               #0x729358
  }
  [closure] void <anonymous closure>(dynamic) {
    // ** addr: 0x729484, size: 0x78
    // 0x729484: EnterFrame
    //     0x729484: stp             fp, lr, [SP, #-0x10]!
    //     0x729488: mov             fp, SP
    // 0x72948c: AllocStack(0x18)
    //     0x72948c: sub             SP, SP, #0x18
    // 0x729490: SetupParameters([dynamic _ /* r0 */])
    //     0x729490: ldr             x0, [fp, #0x10]
    //     0x729494: ldur            w1, [x0, #0x17]
    //     0x729498: add             x1, x1, HEAP, lsl #32
    //     0x72949c: stur            x1, [fp, #-8]
    // 0x7294a0: CheckStackOverflow
    //     0x7294a0: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7294a4: cmp             SP, x16
    //     0x7294a8: b.ls            #0x7294f4
    // 0x7294ac: LoadField: r0 = r1->field_f
    //     0x7294ac: ldur            w0, [x1, #0xf]
    // 0x7294b0: DecompressPointer r0
    //     0x7294b0: add             x0, x0, HEAP, lsl #32
    // 0x7294b4: r16 = <Object?>
    //     0x7294b4: ldr             x16, [PP, #0x250]  ; [pp+0x250] TypeArguments: <Object?>
    // 0x7294b8: stp             x0, x16, [SP]
    // 0x7294bc: r4 = const [0x1, 0x1, 0x1, 0x1, null]
    //     0x7294bc: ldr             x4, [PP, #0xb10]  ; [pp+0xb10] List(5) [0x1, 0x1, 0x1, 0x1, Null]
    // 0x7294c0: r0 = pop()
    //     0x7294c0: bl              #0x666378  ; [package:flutter/src/widgets/navigator.dart] Navigator::pop
    // 0x7294c4: ldur            x0, [fp, #-8]
    // 0x7294c8: LoadField: r1 = r0->field_b
    //     0x7294c8: ldur            w1, [x0, #0xb]
    // 0x7294cc: DecompressPointer r1
    //     0x7294cc: add             x1, x1, HEAP, lsl #32
    // 0x7294d0: LoadField: r0 = r1->field_f
    //     0x7294d0: ldur            w0, [x1, #0xf]
    // 0x7294d4: DecompressPointer r0
    //     0x7294d4: add             x0, x0, HEAP, lsl #32
    // 0x7294d8: LoadField: r1 = r0->field_1f
    //     0x7294d8: ldur            w1, [x0, #0x1f]
    // 0x7294dc: DecompressPointer r1
    //     0x7294dc: add             x1, x1, HEAP, lsl #32
    // 0x7294e0: r0 = clear()
    //     0x7294e0: bl              #0x6dc4c0  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::clear
    // 0x7294e4: r0 = Null
    //     0x7294e4: mov             x0, NULL
    // 0x7294e8: LeaveFrame
    //     0x7294e8: mov             SP, fp
    //     0x7294ec: ldp             fp, lr, [SP], #0x10
    // 0x7294f0: ret
    //     0x7294f0: ret             
    // 0x7294f4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7294f4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7294f8: b               #0x7294ac
  }
  _ _ZikirCekState(/* No info */) {
    // ** addr: 0x7beeb4, size: 0x108
    // 0x7beeb4: EnterFrame
    //     0x7beeb4: stp             fp, lr, [SP, #-0x10]!
    //     0x7beeb8: mov             fp, SP
    // 0x7beebc: AllocStack(0x10)
    //     0x7beebc: sub             SP, SP, #0x10
    // 0x7beec0: r0 = 10000
    //     0x7beec0: mov             x0, #0x2710
    // 0x7beec4: mov             x3, x1
    // 0x7beec8: stur            x1, [fp, #-8]
    // 0x7beecc: CheckStackOverflow
    //     0x7beecc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7beed0: cmp             SP, x16
    //     0x7beed4: b.ls            #0x7befb4
    // 0x7beed8: ArrayStore: r3[0] = r0  ; List_8
    //     0x7beed8: stur            x0, [x3, #0x17]
    // 0x7beedc: r1 = <ModelZikirlerim>
    //     0x7beedc: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bef0] TypeArguments: <ModelZikirlerim>
    //     0x7beee0: ldr             x1, [x1, #0xef0]
    // 0x7beee4: r2 = 0
    //     0x7beee4: mov             x2, #0
    // 0x7beee8: r0 = _GrowableList()
    //     0x7beee8: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7beeec: r0 = _getCurrentMicros()
    //     0x7beeec: bl              #0x4e7380  ; [dart:core] DateTime::_getCurrentMicros
    // 0x7beef0: r1 = <TextEditingValue>
    //     0x7beef0: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7beef4: r0 = TextEditingController()
    //     0x7beef4: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7beef8: mov             x1, x0
    // 0x7beefc: stur            x0, [fp, #-0x10]
    // 0x7bef00: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bef00: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bef04: r0 = TextEditingController()
    //     0x7bef04: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bef08: ldur            x0, [fp, #-0x10]
    // 0x7bef0c: ldur            x2, [fp, #-8]
    // 0x7bef10: StoreField: r2->field_13 = r0
    //     0x7bef10: stur            w0, [x2, #0x13]
    //     0x7bef14: ldurb           w16, [x2, #-1]
    //     0x7bef18: ldurb           w17, [x0, #-1]
    //     0x7bef1c: and             x16, x17, x16, lsr #2
    //     0x7bef20: tst             x16, HEAP, lsr #32
    //     0x7bef24: b.eq            #0x7bef2c
    //     0x7bef28: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bef2c: r1 = <TextEditingValue>
    //     0x7bef2c: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bef30: r0 = TextEditingController()
    //     0x7bef30: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bef34: mov             x1, x0
    // 0x7bef38: stur            x0, [fp, #-0x10]
    // 0x7bef3c: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bef3c: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bef40: r0 = TextEditingController()
    //     0x7bef40: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bef44: ldur            x0, [fp, #-0x10]
    // 0x7bef48: ldur            x2, [fp, #-8]
    // 0x7bef4c: StoreField: r2->field_1f = r0
    //     0x7bef4c: stur            w0, [x2, #0x1f]
    //     0x7bef50: ldurb           w16, [x2, #-1]
    //     0x7bef54: ldurb           w17, [x0, #-1]
    //     0x7bef58: and             x16, x17, x16, lsr #2
    //     0x7bef5c: tst             x16, HEAP, lsr #32
    //     0x7bef60: b.eq            #0x7bef68
    //     0x7bef64: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x7bef68: r1 = <TextEditingValue>
    //     0x7bef68: ldr             x1, [PP, #0x6f90]  ; [pp+0x6f90] TypeArguments: <TextEditingValue>
    // 0x7bef6c: r0 = TextEditingController()
    //     0x7bef6c: bl              #0x5e4b28  ; AllocateTextEditingControllerStub -> TextEditingController (size=0x2c)
    // 0x7bef70: mov             x1, x0
    // 0x7bef74: stur            x0, [fp, #-0x10]
    // 0x7bef78: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x7bef78: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x7bef7c: r0 = TextEditingController()
    //     0x7bef7c: bl              #0x5e4a18  ; [package:flutter/src/widgets/editable_text.dart] TextEditingController::TextEditingController
    // 0x7bef80: ldur            x0, [fp, #-0x10]
    // 0x7bef84: ldur            x1, [fp, #-8]
    // 0x7bef88: StoreField: r1->field_23 = r0
    //     0x7bef88: stur            w0, [x1, #0x23]
    //     0x7bef8c: ldurb           w16, [x1, #-1]
    //     0x7bef90: ldurb           w17, [x0, #-1]
    //     0x7bef94: and             x16, x17, x16, lsr #2
    //     0x7bef98: tst             x16, HEAP, lsr #32
    //     0x7bef9c: b.eq            #0x7befa4
    //     0x7befa0: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7befa4: r0 = Null
    //     0x7befa4: mov             x0, NULL
    // 0x7befa8: LeaveFrame
    //     0x7befa8: mov             SP, fp
    //     0x7befac: ldp             fp, lr, [SP], #0x10
    // 0x7befb0: ret
    //     0x7befb0: ret             
    // 0x7befb4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7befb4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7befb8: b               #0x7beed8
  }
}

// class id: 3201, size: 0x10, field offset: 0xc
//   const constructor, 
class ZikirCek extends StatefulWidget {

  _ createState(/* No info */) {
    // ** addr: 0x7bee6c, size: 0x48
    // 0x7bee6c: EnterFrame
    //     0x7bee6c: stp             fp, lr, [SP, #-0x10]!
    //     0x7bee70: mov             fp, SP
    // 0x7bee74: AllocStack(0x8)
    //     0x7bee74: sub             SP, SP, #8
    // 0x7bee78: CheckStackOverflow
    //     0x7bee78: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7bee7c: cmp             SP, x16
    //     0x7bee80: b.ls            #0x7beeac
    // 0x7bee84: r1 = <ZikirCek>
    //     0x7bee84: add             x1, PP, #0x1b, lsl #12  ; [pp+0x1bee8] TypeArguments: <ZikirCek>
    //     0x7bee88: ldr             x1, [x1, #0xee8]
    // 0x7bee8c: r0 = _ZikirCekState()
    //     0x7bee8c: bl              #0x7befbc  ; Allocate_ZikirCekStateStub -> _ZikirCekState (size=0x28)
    // 0x7bee90: mov             x1, x0
    // 0x7bee94: stur            x0, [fp, #-8]
    // 0x7bee98: r0 = _ZikirCekState()
    //     0x7bee98: bl              #0x7beeb4  ; [package:umrem_demo/features/dualar/screens/zikirmatik.dart] _ZikirCekState::_ZikirCekState
    // 0x7bee9c: ldur            x0, [fp, #-8]
    // 0x7beea0: LeaveFrame
    //     0x7beea0: mov             SP, fp
    //     0x7beea4: ldp             fp, lr, [SP], #0x10
    // 0x7beea8: ret
    //     0x7beea8: ret             
    // 0x7beeac: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7beeac: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7beeb0: b               #0x7bee84
  }
}
