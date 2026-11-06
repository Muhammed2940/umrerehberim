// lib: , url: package:umrem_demo/features/admin/providers/agency_provider.dart

// class id: 1049519, size: 0x8
class :: {
}

// class id: 3871, size: 0x34, field offset: 0x24
class AgencyProvider extends ChangeNotifier {

  _ loadAgencies(/* No info */) async {
    // ** addr: 0x5dffa0, size: 0xdc
    // 0x5dffa0: EnterFrame
    //     0x5dffa0: stp             fp, lr, [SP, #-0x10]!
    //     0x5dffa4: mov             fp, SP
    // 0x5dffa8: AllocStack(0x70)
    //     0x5dffa8: sub             SP, SP, #0x70
    // 0x5dffac: SetupParameters(AgencyProvider this /* r1 => r1, fp-0x60 */)
    //     0x5dffac: stur            NULL, [fp, #-8]
    //     0x5dffb0: stur            x1, [fp, #-0x60]
    // 0x5dffb4: CheckStackOverflow
    //     0x5dffb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x5dffb8: cmp             SP, x16
    //     0x5dffbc: b.ls            #0x5e0074
    // 0x5dffc0: InitAsync() -> Future<void?>
    //     0x5dffc0: ldr             x0, [PP, #0x58]  ; [pp+0x58] TypeArguments: <void?>
    //     0x5dffc4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x5dffc8: ldur            x0, [fp, #-0x60]
    // 0x5dffcc: r1 = true
    //     0x5dffcc: add             x1, NULL, #0x20  ; true
    // 0x5dffd0: StoreField: r0->field_27 = r1
    //     0x5dffd0: stur            w1, [x0, #0x27]
    // 0x5dffd4: mov             x1, x0
    // 0x5dffd8: r0 = notifyListeners()
    //     0x5dffd8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5dffdc: ldur            x0, [fp, #-0x60]
    // 0x5dffe0: LoadField: r1 = r0->field_23
    //     0x5dffe0: ldur            w1, [x0, #0x23]
    // 0x5dffe4: DecompressPointer r1
    //     0x5dffe4: add             x1, x1, HEAP, lsl #32
    // 0x5dffe8: r0 = getAgencies()
    //     0x5dffe8: bl              #0x5dba20  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::getAgencies
    // 0x5dffec: mov             x1, x0
    // 0x5dfff0: stur            x1, [fp, #-0x68]
    // 0x5dfff4: r0 = Await()
    //     0x5dfff4: bl              #0x3dd188  ; AwaitStub
    // 0x5dfff8: ldur            x2, [fp, #-0x60]
    // 0x5dfffc: StoreField: r2->field_2f = r0
    //     0x5dfffc: stur            w0, [x2, #0x2f]
    //     0x5e0000: ldurb           w16, [x2, #-1]
    //     0x5e0004: ldurb           w17, [x0, #-1]
    //     0x5e0008: and             x16, x17, x16, lsr #2
    //     0x5e000c: tst             x16, HEAP, lsr #32
    //     0x5e0010: b.eq            #0x5e0018
    //     0x5e0014: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x5e0018: b               #0x5e0024
    // 0x5e001c: sub             SP, fp, #0x70
    // 0x5e0020: ldur            x2, [fp, #-0x60]
    // 0x5e0024: r3 = false
    //     0x5e0024: add             x3, NULL, #0x30  ; false
    // 0x5e0028: StoreField: r2->field_27 = r3
    //     0x5e0028: stur            w3, [x2, #0x27]
    // 0x5e002c: mov             x1, x2
    // 0x5e0030: r0 = notifyListeners()
    //     0x5e0030: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e0034: r0 = Null
    //     0x5e0034: mov             x0, NULL
    // 0x5e0038: r0 = ReturnAsyncNotFuture()
    //     0x5e0038: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x5e003c: sub             SP, fp, #0x70
    // 0x5e0040: ldur            x2, [fp, #-0x60]
    // 0x5e0044: r3 = false
    //     0x5e0044: add             x3, NULL, #0x30  ; false
    // 0x5e0048: mov             x4, x0
    // 0x5e004c: stur            x0, [fp, #-0x68]
    // 0x5e0050: mov             x0, x1
    // 0x5e0054: stur            x1, [fp, #-0x70]
    // 0x5e0058: StoreField: r2->field_27 = r3
    //     0x5e0058: stur            w3, [x2, #0x27]
    // 0x5e005c: mov             x1, x2
    // 0x5e0060: r0 = notifyListeners()
    //     0x5e0060: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x5e0064: ldur            x0, [fp, #-0x68]
    // 0x5e0068: ldur            x1, [fp, #-0x70]
    // 0x5e006c: r0 = ReThrow()
    //     0x5e006c: bl              #0x9262fc  ; ReThrowStub
    // 0x5e0070: brk             #0
    // 0x5e0074: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x5e0074: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x5e0078: b               #0x5dffc0
  }
  _ deleteAgency(/* No info */) async {
    // ** addr: 0x6d6784, size: 0x1d8
    // 0x6d6784: EnterFrame
    //     0x6d6784: stp             fp, lr, [SP, #-0x10]!
    //     0x6d6788: mov             fp, SP
    // 0x6d678c: AllocStack(0x98)
    //     0x6d678c: sub             SP, SP, #0x98
    // 0x6d6790: SetupParameters(AgencyProvider this /* r1 => r1, fp-0x78 */, dynamic _ /* r2 => r2, fp-0x80 */)
    //     0x6d6790: stur            NULL, [fp, #-8]
    //     0x6d6794: stur            x1, [fp, #-0x78]
    //     0x6d6798: stur            x2, [fp, #-0x80]
    // 0x6d679c: CheckStackOverflow
    //     0x6d679c: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d67a0: cmp             SP, x16
    //     0x6d67a4: b.ls            #0x6d6954
    // 0x6d67a8: r1 = 1
    //     0x6d67a8: mov             x1, #1
    // 0x6d67ac: r0 = AllocateContext()
    //     0x6d67ac: bl              #0x927010  ; AllocateContextStub
    // 0x6d67b0: mov             x1, x0
    // 0x6d67b4: ldur            x0, [fp, #-0x80]
    // 0x6d67b8: stur            x1, [fp, #-0x88]
    // 0x6d67bc: StoreField: r1->field_f = r0
    //     0x6d67bc: stur            w0, [x1, #0xf]
    // 0x6d67c0: InitAsync() -> Future<bool>
    //     0x6d67c0: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d67c4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d67c8: ldur            x0, [fp, #-0x78]
    // 0x6d67cc: ldur            x2, [fp, #-0x88]
    // 0x6d67d0: r1 = true
    //     0x6d67d0: add             x1, NULL, #0x20  ; true
    // 0x6d67d4: StoreField: r0->field_2b = r1
    //     0x6d67d4: stur            w1, [x0, #0x2b]
    // 0x6d67d8: mov             x1, x0
    // 0x6d67dc: r0 = notifyListeners()
    //     0x6d67dc: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d67e0: ldur            x0, [fp, #-0x78]
    // 0x6d67e4: LoadField: r1 = r0->field_23
    //     0x6d67e4: ldur            w1, [x0, #0x23]
    // 0x6d67e8: DecompressPointer r1
    //     0x6d67e8: add             x1, x1, HEAP, lsl #32
    // 0x6d67ec: ldur            x3, [fp, #-0x88]
    // 0x6d67f0: LoadField: r2 = r3->field_f
    //     0x6d67f0: ldur            w2, [x3, #0xf]
    // 0x6d67f4: DecompressPointer r2
    //     0x6d67f4: add             x2, x2, HEAP, lsl #32
    // 0x6d67f8: r0 = deleteAgency()
    //     0x6d67f8: bl              #0x6d695c  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::deleteAgency
    // 0x6d67fc: mov             x1, x0
    // 0x6d6800: stur            x1, [fp, #-0x80]
    // 0x6d6804: r0 = Await()
    //     0x6d6804: bl              #0x3dd188  ; AwaitStub
    // 0x6d6808: stur            x0, [fp, #-0x90]
    // 0x6d680c: r16 = true
    //     0x6d680c: add             x16, NULL, #0x20  ; true
    // 0x6d6810: cmp             w0, w16
    // 0x6d6814: b.ne            #0x6d68ac
    // 0x6d6818: ldur            x3, [fp, #-0x78]
    // 0x6d681c: LoadField: r4 = r3->field_2f
    //     0x6d681c: ldur            w4, [x3, #0x2f]
    // 0x6d6820: DecompressPointer r4
    //     0x6d6820: add             x4, x4, HEAP, lsl #32
    // 0x6d6824: ldur            x2, [fp, #-0x88]
    // 0x6d6828: stur            x4, [fp, #-0x80]
    // 0x6d682c: r1 = Function '<anonymous closure>':.
    //     0x6d682c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19758] AnonymousClosure: (0x6d6d70), in [package:umrem_demo/features/admin/providers/admin_provider.dart] AdminProvider::deleteTrip (0x6d6de0)
    //     0x6d6830: ldr             x1, [x1, #0x758]
    // 0x6d6834: r0 = AllocateClosure()
    //     0x6d6834: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d6838: ldur            x1, [fp, #-0x80]
    // 0x6d683c: r2 = LoadClassIdInstr(r1)
    //     0x6d683c: ldur            x2, [x1, #-1]
    //     0x6d6840: ubfx            x2, x2, #0xc, #0x14
    // 0x6d6844: mov             x16, x0
    // 0x6d6848: mov             x0, x2
    // 0x6d684c: mov             x2, x16
    // 0x6d6850: r0 = GDT[cid_x0 + 0xd348]()
    //     0x6d6850: mov             x17, #0xd348
    //     0x6d6854: add             lr, x0, x17
    //     0x6d6858: ldr             lr, [x21, lr, lsl #3]
    //     0x6d685c: blr             lr
    // 0x6d6860: stur            x0, [fp, #-0x98]
    // 0x6d6864: LoadField: r3 = r0->field_7
    //     0x6d6864: ldur            w3, [x0, #7]
    // 0x6d6868: DecompressPointer r3
    //     0x6d6868: add             x3, x3, HEAP, lsl #32
    // 0x6d686c: mov             x1, x3
    // 0x6d6870: mov             x2, x0
    // 0x6d6874: stur            x3, [fp, #-0x80]
    // 0x6d6878: r0 = _GrowableList.of()
    //     0x6d6878: bl              #0x3c7214  ; [dart:core] _GrowableList::_GrowableList.of
    // 0x6d687c: ldur            x2, [fp, #-0x78]
    // 0x6d6880: StoreField: r2->field_2f = r0
    //     0x6d6880: stur            w0, [x2, #0x2f]
    //     0x6d6884: ldurb           w16, [x2, #-1]
    //     0x6d6888: ldurb           w17, [x0, #-1]
    //     0x6d688c: and             x16, x17, x16, lsr #2
    //     0x6d6890: tst             x16, HEAP, lsr #32
    //     0x6d6894: b.eq            #0x6d689c
    //     0x6d6898: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d689c: r1 = "Acenta silindi"
    //     0x6d689c: add             x1, PP, #0x19, lsl #12  ; [pp+0x19760] "Acenta silindi"
    //     0x6d68a0: ldr             x1, [x1, #0x760]
    // 0x6d68a4: r0 = showSuccess()
    //     0x6d68a4: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6d68a8: b               #0x6d68b8
    // 0x6d68ac: r1 = "Acenta silinemedi"
    //     0x6d68ac: add             x1, PP, #0x19, lsl #12  ; [pp+0x19768] "Acenta silinemedi"
    //     0x6d68b0: ldr             x1, [x1, #0x768]
    // 0x6d68b4: r0 = showError()
    //     0x6d68b4: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d68b8: ldur            x2, [fp, #-0x78]
    // 0x6d68bc: r3 = false
    //     0x6d68bc: add             x3, NULL, #0x30  ; false
    // 0x6d68c0: StoreField: r2->field_2b = r3
    //     0x6d68c0: stur            w3, [x2, #0x2b]
    // 0x6d68c4: mov             x1, x2
    // 0x6d68c8: r0 = notifyListeners()
    //     0x6d68c8: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d68cc: ldur            x0, [fp, #-0x90]
    // 0x6d68d0: r0 = ReturnAsync()
    //     0x6d68d0: b               #0x427094  ; ReturnAsyncStub
    // 0x6d68d4: sub             SP, fp, #0x98
    // 0x6d68d8: ldur            x2, [fp, #-0x78]
    // 0x6d68dc: r3 = false
    //     0x6d68dc: add             x3, NULL, #0x30  ; false
    // 0x6d68e0: mov             x4, x0
    // 0x6d68e4: stur            x0, [fp, #-0x80]
    // 0x6d68e8: mov             x0, x1
    // 0x6d68ec: stur            x1, [fp, #-0x90]
    // 0x6d68f0: r1 = "Acenta silinemedi"
    //     0x6d68f0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19768] "Acenta silinemedi"
    //     0x6d68f4: ldr             x1, [x1, #0x768]
    // 0x6d68f8: r0 = showError()
    //     0x6d68f8: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d68fc: ldur            x2, [fp, #-0x78]
    // 0x6d6900: r0 = false
    //     0x6d6900: add             x0, NULL, #0x30  ; false
    // 0x6d6904: StoreField: r2->field_2b = r0
    //     0x6d6904: stur            w0, [x2, #0x2b]
    // 0x6d6908: mov             x1, x2
    // 0x6d690c: r0 = notifyListeners()
    //     0x6d690c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d6910: r0 = false
    //     0x6d6910: add             x0, NULL, #0x30  ; false
    // 0x6d6914: r0 = ReturnAsyncNotFuture()
    //     0x6d6914: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d6918: sub             SP, fp, #0x98
    // 0x6d691c: ldur            x2, [fp, #-0x78]
    // 0x6d6920: r3 = false
    //     0x6d6920: add             x3, NULL, #0x30  ; false
    // 0x6d6924: mov             x4, x0
    // 0x6d6928: stur            x0, [fp, #-0x80]
    // 0x6d692c: mov             x0, x1
    // 0x6d6930: stur            x1, [fp, #-0x88]
    // 0x6d6934: r3 = false
    //     0x6d6934: add             x3, NULL, #0x30  ; false
    // 0x6d6938: StoreField: r2->field_2b = r3
    //     0x6d6938: stur            w3, [x2, #0x2b]
    // 0x6d693c: mov             x1, x2
    // 0x6d6940: r0 = notifyListeners()
    //     0x6d6940: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d6944: ldur            x0, [fp, #-0x80]
    // 0x6d6948: ldur            x1, [fp, #-0x88]
    // 0x6d694c: r0 = ReThrow()
    //     0x6d694c: bl              #0x9262fc  ; ReThrowStub
    // 0x6d6950: brk             #0
    // 0x6d6954: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d6954: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d6958: b               #0x6d67a8
  }
  _ createAgency(/* No info */) async {
    // ** addr: 0x6d87ac, size: 0x224
    // 0x6d87ac: EnterFrame
    //     0x6d87ac: stp             fp, lr, [SP, #-0x10]!
    //     0x6d87b0: mov             fp, SP
    // 0x6d87b4: AllocStack(0xe0)
    //     0x6d87b4: sub             SP, SP, #0xe0
    // 0x6d87b8: SetupParameters(AgencyProvider this /* r1 => r1, fp-0xa0 */, dynamic _ /* r2 => r2, fp-0xa8 */, dynamic _ /* r3 => r3, fp-0xb0 */, dynamic _ /* r5 => r5, fp-0xb8 */, dynamic _ /* r6 => r6, fp-0xc0 */, dynamic _ /* r7 => r7, fp-0xc8 */)
    //     0x6d87b8: stur            NULL, [fp, #-8]
    //     0x6d87bc: stur            x1, [fp, #-0xa0]
    //     0x6d87c0: stur            x2, [fp, #-0xa8]
    //     0x6d87c4: stur            x3, [fp, #-0xb0]
    //     0x6d87c8: stur            x5, [fp, #-0xb8]
    //     0x6d87cc: stur            x6, [fp, #-0xc0]
    //     0x6d87d0: stur            x7, [fp, #-0xc8]
    // 0x6d87d4: CheckStackOverflow
    //     0x6d87d4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d87d8: cmp             SP, x16
    //     0x6d87dc: b.ls            #0x6d89c8
    // 0x6d87e0: InitAsync() -> Future<String?>
    //     0x6d87e0: ldr             x0, [PP, #0x9e8]  ; [pp+0x9e8] TypeArguments: <String?>
    //     0x6d87e4: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d87e8: ldur            x6, [fp, #-0xa0]
    // 0x6d87ec: ldur            x5, [fp, #-0xa8]
    // 0x6d87f0: ldur            x4, [fp, #-0xb0]
    // 0x6d87f4: ldur            x3, [fp, #-0xb8]
    // 0x6d87f8: ldur            x2, [fp, #-0xc0]
    // 0x6d87fc: ldur            x0, [fp, #-0xc8]
    // 0x6d8800: r7 = true
    //     0x6d8800: add             x7, NULL, #0x20  ; true
    // 0x6d8804: StoreField: r6->field_2b = r7
    //     0x6d8804: stur            w7, [x6, #0x2b]
    // 0x6d8808: mov             x1, x6
    // 0x6d880c: r0 = notifyListeners()
    //     0x6d880c: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d8810: r0 = AgencyModel()
    //     0x6d8810: bl              #0x5dc218  ; AllocateAgencyModelStub -> AgencyModel (size=0x2c)
    // 0x6d8814: mov             x3, x0
    // 0x6d8818: r0 = ""
    //     0x6d8818: ldr             x0, [PP, #0x128]  ; [pp+0x128] ""
    // 0x6d881c: stur            x3, [fp, #-0xd0]
    // 0x6d8820: StoreField: r3->field_7 = r0
    //     0x6d8820: stur            w0, [x3, #7]
    // 0x6d8824: ldur            x0, [fp, #-0xc0]
    // 0x6d8828: StoreField: r3->field_b = r0
    //     0x6d8828: stur            w0, [x3, #0xb]
    // 0x6d882c: ldur            x4, [fp, #-0xb0]
    // 0x6d8830: StoreField: r3->field_f = r4
    //     0x6d8830: stur            w4, [x3, #0xf]
    // 0x6d8834: ldur            x5, [fp, #-0xc8]
    // 0x6d8838: StoreField: r3->field_13 = r5
    //     0x6d8838: stur            w5, [x3, #0x13]
    // 0x6d883c: ldur            x6, [fp, #-0xb8]
    // 0x6d8840: ArrayStore: r3[0] = r6  ; List_4
    //     0x6d8840: stur            w6, [x3, #0x17]
    // 0x6d8844: ldur            x7, [fp, #-0xa8]
    // 0x6d8848: StoreField: r3->field_1b = r7
    //     0x6d8848: stur            w7, [x3, #0x1b]
    // 0x6d884c: r1 = true
    //     0x6d884c: add             x1, NULL, #0x20  ; true
    // 0x6d8850: StoreField: r3->field_1f = r1
    //     0x6d8850: stur            w1, [x3, #0x1f]
    // 0x6d8854: ldur            x8, [fp, #-0xa0]
    // 0x6d8858: LoadField: r1 = r8->field_23
    //     0x6d8858: ldur            w1, [x8, #0x23]
    // 0x6d885c: DecompressPointer r1
    //     0x6d885c: add             x1, x1, HEAP, lsl #32
    // 0x6d8860: mov             x2, x3
    // 0x6d8864: r0 = createAgency()
    //     0x6d8864: bl              #0x6d8d48  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::createAgency
    // 0x6d8868: mov             x1, x0
    // 0x6d886c: stur            x1, [fp, #-0xd8]
    // 0x6d8870: r0 = Await()
    //     0x6d8870: bl              #0x3dd188  ; AwaitStub
    // 0x6d8874: stur            x0, [fp, #-0xa8]
    // 0x6d8878: cmp             w0, NULL
    // 0x6d887c: b.eq            #0x6d8924
    // 0x6d8880: ldur            x2, [fp, #-0xa0]
    // 0x6d8884: str             x0, [SP]
    // 0x6d8888: ldur            x1, [fp, #-0xd0]
    // 0x6d888c: r4 = const [0, 0x2, 0x1, 0x1, id, 0x1, null]
    //     0x6d888c: add             x4, PP, #0x13, lsl #12  ; [pp+0x13b78] List(7) [0, 0x2, 0x1, 0x1, "id", 0x1, Null]
    //     0x6d8890: ldr             x4, [x4, #0xb78]
    // 0x6d8894: r0 = copyWith()
    //     0x6d8894: bl              #0x6d89d0  ; [package:umrem_demo/features/admin/models/agency_model.dart] AgencyModel::copyWith
    // 0x6d8898: r1 = Null
    //     0x6d8898: mov             x1, NULL
    // 0x6d889c: r2 = 2
    //     0x6d889c: mov             x2, #2
    // 0x6d88a0: stur            x0, [fp, #-0xb0]
    // 0x6d88a4: r0 = AllocateArray()
    //     0x6d88a4: bl              #0x9280a0  ; AllocateArrayStub
    // 0x6d88a8: mov             x2, x0
    // 0x6d88ac: ldur            x0, [fp, #-0xb0]
    // 0x6d88b0: stur            x2, [fp, #-0xb8]
    // 0x6d88b4: StoreField: r2->field_f = r0
    //     0x6d88b4: stur            w0, [x2, #0xf]
    // 0x6d88b8: r1 = <AgencyModel>
    //     0x6d88b8: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d90] TypeArguments: <AgencyModel>
    //     0x6d88bc: ldr             x1, [x1, #0xd90]
    // 0x6d88c0: r0 = AllocateGrowableArray()
    //     0x6d88c0: bl              #0x926fd4  ; AllocateGrowableArrayStub
    // 0x6d88c4: mov             x3, x0
    // 0x6d88c8: ldur            x0, [fp, #-0xb8]
    // 0x6d88cc: stur            x3, [fp, #-0xb0]
    // 0x6d88d0: StoreField: r3->field_f = r0
    //     0x6d88d0: stur            w0, [x3, #0xf]
    // 0x6d88d4: r0 = 2
    //     0x6d88d4: mov             x0, #2
    // 0x6d88d8: StoreField: r3->field_b = r0
    //     0x6d88d8: stur            w0, [x3, #0xb]
    // 0x6d88dc: ldur            x0, [fp, #-0xa0]
    // 0x6d88e0: LoadField: r2 = r0->field_2f
    //     0x6d88e0: ldur            w2, [x0, #0x2f]
    // 0x6d88e4: DecompressPointer r2
    //     0x6d88e4: add             x2, x2, HEAP, lsl #32
    // 0x6d88e8: mov             x1, x3
    // 0x6d88ec: r0 = addAll()
    //     0x6d88ec: bl              #0x551820  ; [dart:core] _GrowableList::addAll
    // 0x6d88f0: ldur            x0, [fp, #-0xb0]
    // 0x6d88f4: ldur            x2, [fp, #-0xa0]
    // 0x6d88f8: StoreField: r2->field_2f = r0
    //     0x6d88f8: stur            w0, [x2, #0x2f]
    //     0x6d88fc: ldurb           w16, [x2, #-1]
    //     0x6d8900: ldurb           w17, [x0, #-1]
    //     0x6d8904: and             x16, x17, x16, lsr #2
    //     0x6d8908: tst             x16, HEAP, lsr #32
    //     0x6d890c: b.eq            #0x6d8914
    //     0x6d8910: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d8914: r1 = "Acenta oluşturuldu"
    //     0x6d8914: add             x1, PP, #0x19, lsl #12  ; [pp+0x197f8] "Acenta oluşturuldu"
    //     0x6d8918: ldr             x1, [x1, #0x7f8]
    // 0x6d891c: r0 = showSuccess()
    //     0x6d891c: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6d8920: b               #0x6d8930
    // 0x6d8924: r1 = "Acenta oluşturulamadı"
    //     0x6d8924: add             x1, PP, #0x19, lsl #12  ; [pp+0x19800] "Acenta oluşturulamadı"
    //     0x6d8928: ldr             x1, [x1, #0x800]
    // 0x6d892c: r0 = showError()
    //     0x6d892c: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d8930: ldur            x2, [fp, #-0xa0]
    // 0x6d8934: r3 = false
    //     0x6d8934: add             x3, NULL, #0x30  ; false
    // 0x6d8938: StoreField: r2->field_2b = r3
    //     0x6d8938: stur            w3, [x2, #0x2b]
    // 0x6d893c: mov             x1, x2
    // 0x6d8940: r0 = notifyListeners()
    //     0x6d8940: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d8944: ldur            x0, [fp, #-0xa8]
    // 0x6d8948: r0 = ReturnAsync()
    //     0x6d8948: b               #0x427094  ; ReturnAsyncStub
    // 0x6d894c: sub             SP, fp, #0xe0
    // 0x6d8950: ldur            x2, [fp, #-0xa0]
    // 0x6d8954: r3 = false
    //     0x6d8954: add             x3, NULL, #0x30  ; false
    // 0x6d8958: mov             x4, x0
    // 0x6d895c: stur            x0, [fp, #-0xa8]
    // 0x6d8960: mov             x0, x1
    // 0x6d8964: stur            x1, [fp, #-0xb0]
    // 0x6d8968: r1 = "Acenta oluşturulamadı"
    //     0x6d8968: add             x1, PP, #0x19, lsl #12  ; [pp+0x19800] "Acenta oluşturulamadı"
    //     0x6d896c: ldr             x1, [x1, #0x800]
    // 0x6d8970: r0 = showError()
    //     0x6d8970: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d8974: ldur            x2, [fp, #-0xa0]
    // 0x6d8978: r3 = false
    //     0x6d8978: add             x3, NULL, #0x30  ; false
    // 0x6d897c: StoreField: r2->field_2b = r3
    //     0x6d897c: stur            w3, [x2, #0x2b]
    // 0x6d8980: mov             x1, x2
    // 0x6d8984: r0 = notifyListeners()
    //     0x6d8984: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d8988: r0 = Null
    //     0x6d8988: mov             x0, NULL
    // 0x6d898c: r0 = ReturnAsyncNotFuture()
    //     0x6d898c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d8990: sub             SP, fp, #0xe0
    // 0x6d8994: ldur            x2, [fp, #-0xa0]
    // 0x6d8998: r3 = false
    //     0x6d8998: add             x3, NULL, #0x30  ; false
    // 0x6d899c: mov             x4, x0
    // 0x6d89a0: stur            x0, [fp, #-0xa8]
    // 0x6d89a4: mov             x0, x1
    // 0x6d89a8: stur            x1, [fp, #-0xb0]
    // 0x6d89ac: StoreField: r2->field_2b = r3
    //     0x6d89ac: stur            w3, [x2, #0x2b]
    // 0x6d89b0: mov             x1, x2
    // 0x6d89b4: r0 = notifyListeners()
    //     0x6d89b4: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d89b8: ldur            x0, [fp, #-0xa8]
    // 0x6d89bc: ldur            x1, [fp, #-0xb0]
    // 0x6d89c0: r0 = ReThrow()
    //     0x6d89c0: bl              #0x9262fc  ; ReThrowStub
    // 0x6d89c4: brk             #0
    // 0x6d89c8: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d89c8: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d89cc: b               #0x6d87e0
  }
  _ updateAgency(/* No info */) async {
    // ** addr: 0x6d8fa0, size: 0x590
    // 0x6d8fa0: EnterFrame
    //     0x6d8fa0: stp             fp, lr, [SP, #-0x10]!
    //     0x6d8fa4: mov             fp, SP
    // 0x6d8fa8: AllocStack(0x148)
    //     0x6d8fa8: sub             SP, SP, #0x148
    // 0x6d8fac: SetupParameters()
    //     0x6d8fac: stur            NULL, [fp, #-8]
    //     0x6d8fb0: mov             x17, #-0x120
    // 0x6d8fb0: r17 = -288
    // 0x6d8fb4: str             x1, [fp, x17]
    // 0x6d8fb8: r17 = -296
    //     0x6d8fb8: mov             x17, #-0x128
    // 0x6d8fbc: str             x2, [fp, x17]
    // 0x6d8fc0: LoadField: r0 = r4->field_13
    //     0x6d8fc0: ldur            w0, [x4, #0x13]
    // 0x6d8fc4: LoadField: r3 = r4->field_1f
    //     0x6d8fc4: ldur            w3, [x4, #0x1f]
    // 0x6d8fc8: DecompressPointer r3
    //     0x6d8fc8: add             x3, x3, HEAP, lsl #32
    // 0x6d8fcc: r16 = "address"
    //     0x6d8fcc: add             x16, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x6d8fd0: ldr             x16, [x16, #0x2a8]
    // 0x6d8fd4: cmp             w3, w16
    // 0x6d8fd8: b.ne            #0x6d8ff8
    // 0x6d8fdc: LoadField: r3 = r4->field_23
    //     0x6d8fdc: ldur            w3, [x4, #0x23]
    // 0x6d8fe0: DecompressPointer r3
    //     0x6d8fe0: add             x3, x3, HEAP, lsl #32
    // 0x6d8fe4: sub             w5, w0, w3
    // 0x6d8fe8: add             x3, fp, w5, sxtw #2
    // 0x6d8fec: ldr             x3, [x3, #8]
    // 0x6d8ff0: r5 = 1
    //     0x6d8ff0: mov             x5, #1
    // 0x6d8ff4: b               #0x6d9000
    // 0x6d8ff8: r5 = 0
    //     0x6d8ff8: mov             x5, #0
    // 0x6d8ffc: r3 = Null
    //     0x6d8ffc: mov             x3, NULL
    // 0x6d9000: r17 = -280
    //     0x6d9000: mov             x17, #-0x118
    // 0x6d9004: str             x3, [fp, x17]
    // 0x6d9008: lsl             x6, x5, #1
    // 0x6d900c: lsl             w7, w6, #1
    // 0x6d9010: add             w8, w7, #8
    // 0x6d9014: ArrayLoad: r9 = r4[r8]  ; Unknown_4
    //     0x6d9014: add             x16, x4, w8, sxtw #1
    //     0x6d9018: ldur            w9, [x16, #0xf]
    // 0x6d901c: DecompressPointer r9
    //     0x6d901c: add             x9, x9, HEAP, lsl #32
    // 0x6d9020: r16 = "description"
    //     0x6d9020: add             x16, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x6d9024: ldr             x16, [x16, #0x20]
    // 0x6d9028: cmp             w9, w16
    // 0x6d902c: b.ne            #0x6d905c
    // 0x6d9030: add             w5, w7, #0xa
    // 0x6d9034: ArrayLoad: r7 = r4[r5]  ; Unknown_4
    //     0x6d9034: add             x16, x4, w5, sxtw #1
    //     0x6d9038: ldur            w7, [x16, #0xf]
    // 0x6d903c: DecompressPointer r7
    //     0x6d903c: add             x7, x7, HEAP, lsl #32
    // 0x6d9040: sub             w5, w0, w7
    // 0x6d9044: add             x7, fp, w5, sxtw #2
    // 0x6d9048: ldr             x7, [x7, #8]
    // 0x6d904c: add             w5, w6, #2
    // 0x6d9050: r6 = LoadInt32Instr(r5)
    //     0x6d9050: sbfx            x6, x5, #1, #0x1f
    // 0x6d9054: mov             x5, x7
    // 0x6d9058: b               #0x6d9064
    // 0x6d905c: mov             x6, x5
    // 0x6d9060: r5 = Null
    //     0x6d9060: mov             x5, NULL
    // 0x6d9064: r17 = -272
    //     0x6d9064: mov             x17, #-0x110
    // 0x6d9068: str             x5, [fp, x17]
    // 0x6d906c: lsl             x7, x6, #1
    // 0x6d9070: lsl             w8, w7, #1
    // 0x6d9074: add             w9, w8, #8
    // 0x6d9078: ArrayLoad: r10 = r4[r9]  ; Unknown_4
    //     0x6d9078: add             x16, x4, w9, sxtw #1
    //     0x6d907c: ldur            w10, [x16, #0xf]
    // 0x6d9080: DecompressPointer r10
    //     0x6d9080: add             x10, x10, HEAP, lsl #32
    // 0x6d9084: r16 = "email"
    //     0x6d9084: add             x16, PP, #0x19, lsl #12  ; [pp+0x19808] "email"
    //     0x6d9088: ldr             x16, [x16, #0x808]
    // 0x6d908c: cmp             w10, w16
    // 0x6d9090: b.ne            #0x6d90c0
    // 0x6d9094: add             w6, w8, #0xa
    // 0x6d9098: ArrayLoad: r8 = r4[r6]  ; Unknown_4
    //     0x6d9098: add             x16, x4, w6, sxtw #1
    //     0x6d909c: ldur            w8, [x16, #0xf]
    // 0x6d90a0: DecompressPointer r8
    //     0x6d90a0: add             x8, x8, HEAP, lsl #32
    // 0x6d90a4: sub             w6, w0, w8
    // 0x6d90a8: add             x8, fp, w6, sxtw #2
    // 0x6d90ac: ldr             x8, [x8, #8]
    // 0x6d90b0: add             w6, w7, #2
    // 0x6d90b4: r7 = LoadInt32Instr(r6)
    //     0x6d90b4: sbfx            x7, x6, #1, #0x1f
    // 0x6d90b8: mov             x6, x8
    // 0x6d90bc: b               #0x6d90c8
    // 0x6d90c0: mov             x7, x6
    // 0x6d90c4: r6 = Null
    //     0x6d90c4: mov             x6, NULL
    // 0x6d90c8: r17 = -264
    //     0x6d90c8: mov             x17, #-0x108
    // 0x6d90cc: str             x6, [fp, x17]
    // 0x6d90d0: lsl             x8, x7, #1
    // 0x6d90d4: lsl             w9, w8, #1
    // 0x6d90d8: add             w10, w9, #8
    // 0x6d90dc: ArrayLoad: r11 = r4[r10]  ; Unknown_4
    //     0x6d90dc: add             x16, x4, w10, sxtw #1
    //     0x6d90e0: ldur            w11, [x16, #0xf]
    // 0x6d90e4: DecompressPointer r11
    //     0x6d90e4: add             x11, x11, HEAP, lsl #32
    // 0x6d90e8: r16 = "isActive"
    //     0x6d90e8: add             x16, PP, #0x19, lsl #12  ; [pp+0x19810] "isActive"
    //     0x6d90ec: ldr             x16, [x16, #0x810]
    // 0x6d90f0: cmp             w11, w16
    // 0x6d90f4: b.ne            #0x6d9124
    // 0x6d90f8: add             w7, w9, #0xa
    // 0x6d90fc: ArrayLoad: r9 = r4[r7]  ; Unknown_4
    //     0x6d90fc: add             x16, x4, w7, sxtw #1
    //     0x6d9100: ldur            w9, [x16, #0xf]
    // 0x6d9104: DecompressPointer r9
    //     0x6d9104: add             x9, x9, HEAP, lsl #32
    // 0x6d9108: sub             w7, w0, w9
    // 0x6d910c: add             x9, fp, w7, sxtw #2
    // 0x6d9110: ldr             x9, [x9, #8]
    // 0x6d9114: add             w7, w8, #2
    // 0x6d9118: r8 = LoadInt32Instr(r7)
    //     0x6d9118: sbfx            x8, x7, #1, #0x1f
    // 0x6d911c: mov             x7, x9
    // 0x6d9120: b               #0x6d912c
    // 0x6d9124: mov             x8, x7
    // 0x6d9128: r7 = Null
    //     0x6d9128: mov             x7, NULL
    // 0x6d912c: stur            x7, [fp, #-0x100]
    // 0x6d9130: lsl             x9, x8, #1
    // 0x6d9134: lsl             w10, w9, #1
    // 0x6d9138: add             w11, w10, #8
    // 0x6d913c: ArrayLoad: r12 = r4[r11]  ; Unknown_4
    //     0x6d913c: add             x16, x4, w11, sxtw #1
    //     0x6d9140: ldur            w12, [x16, #0xf]
    // 0x6d9144: DecompressPointer r12
    //     0x6d9144: add             x12, x12, HEAP, lsl #32
    // 0x6d9148: r16 = "name"
    //     0x6d9148: ldr             x16, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6d914c: cmp             w12, w16
    // 0x6d9150: b.ne            #0x6d9180
    // 0x6d9154: add             w8, w10, #0xa
    // 0x6d9158: ArrayLoad: r10 = r4[r8]  ; Unknown_4
    //     0x6d9158: add             x16, x4, w8, sxtw #1
    //     0x6d915c: ldur            w10, [x16, #0xf]
    // 0x6d9160: DecompressPointer r10
    //     0x6d9160: add             x10, x10, HEAP, lsl #32
    // 0x6d9164: sub             w8, w0, w10
    // 0x6d9168: add             x10, fp, w8, sxtw #2
    // 0x6d916c: ldr             x10, [x10, #8]
    // 0x6d9170: add             w8, w9, #2
    // 0x6d9174: r9 = LoadInt32Instr(r8)
    //     0x6d9174: sbfx            x9, x8, #1, #0x1f
    // 0x6d9178: mov             x8, x10
    // 0x6d917c: b               #0x6d9188
    // 0x6d9180: mov             x9, x8
    // 0x6d9184: r8 = Null
    //     0x6d9184: mov             x8, NULL
    // 0x6d9188: stur            x8, [fp, #-0xf8]
    // 0x6d918c: lsl             x10, x9, #1
    // 0x6d9190: lsl             w9, w10, #1
    // 0x6d9194: add             w10, w9, #8
    // 0x6d9198: ArrayLoad: r11 = r4[r10]  ; Unknown_4
    //     0x6d9198: add             x16, x4, w10, sxtw #1
    //     0x6d919c: ldur            w11, [x16, #0xf]
    // 0x6d91a0: DecompressPointer r11
    //     0x6d91a0: add             x11, x11, HEAP, lsl #32
    // 0x6d91a4: r16 = "phone"
    //     0x6d91a4: add             x16, PP, #0x19, lsl #12  ; [pp+0x19818] "phone"
    //     0x6d91a8: ldr             x16, [x16, #0x818]
    // 0x6d91ac: cmp             w11, w16
    // 0x6d91b0: b.ne            #0x6d91d4
    // 0x6d91b4: add             w10, w9, #0xa
    // 0x6d91b8: ArrayLoad: r9 = r4[r10]  ; Unknown_4
    //     0x6d91b8: add             x16, x4, w10, sxtw #1
    //     0x6d91bc: ldur            w9, [x16, #0xf]
    // 0x6d91c0: DecompressPointer r9
    //     0x6d91c0: add             x9, x9, HEAP, lsl #32
    // 0x6d91c4: sub             w4, w0, w9
    // 0x6d91c8: add             x0, fp, w4, sxtw #2
    // 0x6d91cc: ldr             x0, [x0, #8]
    // 0x6d91d0: b               #0x6d91d8
    // 0x6d91d4: r0 = Null
    //     0x6d91d4: mov             x0, NULL
    // 0x6d91d8: stur            x0, [fp, #-0xf0]
    // 0x6d91dc: CheckStackOverflow
    //     0x6d91dc: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d91e0: cmp             SP, x16
    //     0x6d91e4: b.ls            #0x6d9528
    // 0x6d91e8: r1 = 7
    //     0x6d91e8: mov             x1, #7
    // 0x6d91ec: r0 = AllocateContext()
    //     0x6d91ec: bl              #0x927010  ; AllocateContextStub
    // 0x6d91f0: mov             x1, x0
    // 0x6d91f4: r17 = -296
    //     0x6d91f4: mov             x17, #-0x128
    // 0x6d91f8: ldr             x0, [fp, x17]
    // 0x6d91fc: r17 = -304
    //     0x6d91fc: mov             x17, #-0x130
    // 0x6d9200: str             x1, [fp, x17]
    // 0x6d9204: StoreField: r1->field_f = r0
    //     0x6d9204: stur            w0, [x1, #0xf]
    // 0x6d9208: r17 = -280
    //     0x6d9208: mov             x17, #-0x118
    // 0x6d920c: ldr             x0, [fp, x17]
    // 0x6d9210: StoreField: r1->field_13 = r0
    //     0x6d9210: stur            w0, [x1, #0x13]
    // 0x6d9214: r17 = -272
    //     0x6d9214: mov             x17, #-0x110
    // 0x6d9218: ldr             x0, [fp, x17]
    // 0x6d921c: ArrayStore: r1[0] = r0  ; List_4
    //     0x6d921c: stur            w0, [x1, #0x17]
    // 0x6d9220: r17 = -264
    //     0x6d9220: mov             x17, #-0x108
    // 0x6d9224: ldr             x0, [fp, x17]
    // 0x6d9228: StoreField: r1->field_1b = r0
    //     0x6d9228: stur            w0, [x1, #0x1b]
    // 0x6d922c: ldur            x0, [fp, #-0x100]
    // 0x6d9230: StoreField: r1->field_1f = r0
    //     0x6d9230: stur            w0, [x1, #0x1f]
    // 0x6d9234: ldur            x0, [fp, #-0xf8]
    // 0x6d9238: StoreField: r1->field_23 = r0
    //     0x6d9238: stur            w0, [x1, #0x23]
    // 0x6d923c: ldur            x0, [fp, #-0xf0]
    // 0x6d9240: StoreField: r1->field_27 = r0
    //     0x6d9240: stur            w0, [x1, #0x27]
    // 0x6d9244: InitAsync() -> Future<bool>
    //     0x6d9244: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x6d9248: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x6d924c: r17 = -288
    //     0x6d924c: mov             x17, #-0x120
    // 0x6d9250: ldr             x0, [fp, x17]
    // 0x6d9254: r17 = -304
    //     0x6d9254: mov             x17, #-0x130
    // 0x6d9258: ldr             x2, [fp, x17]
    // 0x6d925c: r1 = true
    //     0x6d925c: add             x1, NULL, #0x20  ; true
    // 0x6d9260: StoreField: r0->field_2b = r1
    //     0x6d9260: stur            w1, [x0, #0x2b]
    // 0x6d9264: mov             x1, x0
    // 0x6d9268: r0 = notifyListeners()
    //     0x6d9268: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d926c: r16 = <String, dynamic>
    //     0x6d926c: ldr             x16, [PP, #0x24d8]  ; [pp+0x24d8] TypeArguments: <String, dynamic>
    // 0x6d9270: ldr             lr, [THR, #0xa0]  ; THR::empty_array
    // 0x6d9274: stp             lr, x16, [SP]
    // 0x6d9278: r0 = Map._fromLiteral()
    //     0x6d9278: bl              #0x3cd918  ; [dart:core] Map::Map._fromLiteral
    // 0x6d927c: mov             x4, x0
    // 0x6d9280: r17 = -304
    //     0x6d9280: mov             x17, #-0x130
    // 0x6d9284: ldr             x0, [fp, x17]
    // 0x6d9288: stur            x4, [fp, #-0xf0]
    // 0x6d928c: LoadField: r3 = r0->field_23
    //     0x6d928c: ldur            w3, [x0, #0x23]
    // 0x6d9290: DecompressPointer r3
    //     0x6d9290: add             x3, x3, HEAP, lsl #32
    // 0x6d9294: cmp             w3, NULL
    // 0x6d9298: b.eq            #0x6d92a8
    // 0x6d929c: mov             x1, x4
    // 0x6d92a0: r2 = "name"
    //     0x6d92a0: ldr             x2, [PP, #0x7a80]  ; [pp+0x7a80] "name"
    // 0x6d92a4: r0 = []=()
    //     0x6d92a4: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d92a8: r17 = -304
    //     0x6d92a8: mov             x17, #-0x130
    // 0x6d92ac: ldr             x0, [fp, x17]
    // 0x6d92b0: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6d92b0: ldur            w3, [x0, #0x17]
    // 0x6d92b4: DecompressPointer r3
    //     0x6d92b4: add             x3, x3, HEAP, lsl #32
    // 0x6d92b8: cmp             w3, NULL
    // 0x6d92bc: b.eq            #0x6d92d0
    // 0x6d92c0: ldur            x1, [fp, #-0xf0]
    // 0x6d92c4: r2 = "description"
    //     0x6d92c4: add             x2, PP, #0x15, lsl #12  ; [pp+0x15020] "description"
    //     0x6d92c8: ldr             x2, [x2, #0x20]
    // 0x6d92cc: r0 = []=()
    //     0x6d92cc: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d92d0: r17 = -304
    //     0x6d92d0: mov             x17, #-0x130
    // 0x6d92d4: ldr             x0, [fp, x17]
    // 0x6d92d8: LoadField: r3 = r0->field_27
    //     0x6d92d8: ldur            w3, [x0, #0x27]
    // 0x6d92dc: DecompressPointer r3
    //     0x6d92dc: add             x3, x3, HEAP, lsl #32
    // 0x6d92e0: cmp             w3, NULL
    // 0x6d92e4: b.eq            #0x6d92f8
    // 0x6d92e8: ldur            x1, [fp, #-0xf0]
    // 0x6d92ec: r2 = "phone"
    //     0x6d92ec: add             x2, PP, #0x19, lsl #12  ; [pp+0x19818] "phone"
    //     0x6d92f0: ldr             x2, [x2, #0x818]
    // 0x6d92f4: r0 = []=()
    //     0x6d92f4: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d92f8: r17 = -304
    //     0x6d92f8: mov             x17, #-0x130
    // 0x6d92fc: ldr             x0, [fp, x17]
    // 0x6d9300: LoadField: r3 = r0->field_1b
    //     0x6d9300: ldur            w3, [x0, #0x1b]
    // 0x6d9304: DecompressPointer r3
    //     0x6d9304: add             x3, x3, HEAP, lsl #32
    // 0x6d9308: cmp             w3, NULL
    // 0x6d930c: b.eq            #0x6d9320
    // 0x6d9310: ldur            x1, [fp, #-0xf0]
    // 0x6d9314: r2 = "email"
    //     0x6d9314: add             x2, PP, #0x19, lsl #12  ; [pp+0x19808] "email"
    //     0x6d9318: ldr             x2, [x2, #0x808]
    // 0x6d931c: r0 = []=()
    //     0x6d931c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d9320: r17 = -304
    //     0x6d9320: mov             x17, #-0x130
    // 0x6d9324: ldr             x0, [fp, x17]
    // 0x6d9328: LoadField: r3 = r0->field_13
    //     0x6d9328: ldur            w3, [x0, #0x13]
    // 0x6d932c: DecompressPointer r3
    //     0x6d932c: add             x3, x3, HEAP, lsl #32
    // 0x6d9330: cmp             w3, NULL
    // 0x6d9334: b.eq            #0x6d9348
    // 0x6d9338: ldur            x1, [fp, #-0xf0]
    // 0x6d933c: r2 = "address"
    //     0x6d933c: add             x2, PP, #8, lsl #12  ; [pp+0x82a8] "address"
    //     0x6d9340: ldr             x2, [x2, #0x2a8]
    // 0x6d9344: r0 = []=()
    //     0x6d9344: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d9348: r17 = -304
    //     0x6d9348: mov             x17, #-0x130
    // 0x6d934c: ldr             x0, [fp, x17]
    // 0x6d9350: LoadField: r3 = r0->field_1f
    //     0x6d9350: ldur            w3, [x0, #0x1f]
    // 0x6d9354: DecompressPointer r3
    //     0x6d9354: add             x3, x3, HEAP, lsl #32
    // 0x6d9358: cmp             w3, NULL
    // 0x6d935c: b.eq            #0x6d9370
    // 0x6d9360: ldur            x1, [fp, #-0xf0]
    // 0x6d9364: r2 = "is_active"
    //     0x6d9364: add             x2, PP, #0x19, lsl #12  ; [pp+0x19820] "is_active"
    //     0x6d9368: ldr             x2, [x2, #0x820]
    // 0x6d936c: r0 = []=()
    //     0x6d936c: bl              #0x8b25c8  ; [dart:_compact_hash] __Map&_HashVMBase&MapMixin&_HashBase&_OperatorEqualsAndHashCode&_LinkedHashMapMixin::[]=
    // 0x6d9370: r17 = -288
    //     0x6d9370: mov             x17, #-0x120
    // 0x6d9374: ldr             x4, [fp, x17]
    // 0x6d9378: r17 = -304
    //     0x6d9378: mov             x17, #-0x130
    // 0x6d937c: ldr             x0, [fp, x17]
    // 0x6d9380: LoadField: r1 = r4->field_23
    //     0x6d9380: ldur            w1, [x4, #0x23]
    // 0x6d9384: DecompressPointer r1
    //     0x6d9384: add             x1, x1, HEAP, lsl #32
    // 0x6d9388: LoadField: r2 = r0->field_f
    //     0x6d9388: ldur            w2, [x0, #0xf]
    // 0x6d938c: DecompressPointer r2
    //     0x6d938c: add             x2, x2, HEAP, lsl #32
    // 0x6d9390: ldur            x3, [fp, #-0xf0]
    // 0x6d9394: r0 = updateAgency()
    //     0x6d9394: bl              #0x6d9530  ; [package:umrem_demo/common/services/firestore_service.dart] FirestoreService::updateAgency
    // 0x6d9398: mov             x1, x0
    // 0x6d939c: stur            x1, [fp, #-0xf8]
    // 0x6d93a0: r0 = Await()
    //     0x6d93a0: bl              #0x3dd188  ; AwaitStub
    // 0x6d93a4: stur            x0, [fp, #-0xf8]
    // 0x6d93a8: r16 = true
    //     0x6d93a8: add             x16, NULL, #0x20  ; true
    // 0x6d93ac: cmp             w0, w16
    // 0x6d93b0: b.ne            #0x6d9470
    // 0x6d93b4: r17 = -288
    //     0x6d93b4: mov             x17, #-0x120
    // 0x6d93b8: ldr             x3, [fp, x17]
    // 0x6d93bc: LoadField: r4 = r3->field_2f
    //     0x6d93bc: ldur            w4, [x3, #0x2f]
    // 0x6d93c0: DecompressPointer r4
    //     0x6d93c0: add             x4, x4, HEAP, lsl #32
    // 0x6d93c4: r17 = -304
    //     0x6d93c4: mov             x17, #-0x130
    // 0x6d93c8: ldr             x2, [fp, x17]
    // 0x6d93cc: stur            x4, [fp, #-0xf0]
    // 0x6d93d0: r1 = Function '<anonymous closure>':.
    //     0x6d93d0: add             x1, PP, #0x19, lsl #12  ; [pp+0x19828] AnonymousClosure: (0x6d95e8), in [package:umrem_demo/features/admin/providers/agency_provider.dart] AgencyProvider::updateAgency (0x6d8fa0)
    //     0x6d93d4: ldr             x1, [x1, #0x828]
    // 0x6d93d8: r0 = AllocateClosure()
    //     0x6d93d8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x6d93dc: mov             x1, x0
    // 0x6d93e0: ldur            x0, [fp, #-0xf0]
    // 0x6d93e4: r2 = LoadClassIdInstr(r0)
    //     0x6d93e4: ldur            x2, [x0, #-1]
    //     0x6d93e8: ubfx            x2, x2, #0xc, #0x14
    // 0x6d93ec: r16 = <AgencyModel>
    //     0x6d93ec: add             x16, PP, #0x10, lsl #12  ; [pp+0x10d90] TypeArguments: <AgencyModel>
    //     0x6d93f0: ldr             x16, [x16, #0xd90]
    // 0x6d93f4: stp             x0, x16, [SP, #8]
    // 0x6d93f8: str             x1, [SP]
    // 0x6d93fc: mov             x0, x2
    // 0x6d9400: r4 = const [0x1, 0x2, 0x2, 0x2, null]
    //     0x6d9400: ldr             x4, [PP, #0x48]  ; [pp+0x48] List(5) [0x1, 0x2, 0x2, 0x2, Null]
    // 0x6d9404: r0 = GDT[cid_x0 + 0xd1d6]()
    //     0x6d9404: mov             x17, #0xd1d6
    //     0x6d9408: add             lr, x0, x17
    //     0x6d940c: ldr             lr, [x21, lr, lsl #3]
    //     0x6d9410: blr             lr
    // 0x6d9414: r1 = LoadClassIdInstr(r0)
    //     0x6d9414: ldur            x1, [x0, #-1]
    //     0x6d9418: ubfx            x1, x1, #0xc, #0x14
    // 0x6d941c: mov             x16, x0
    // 0x6d9420: mov             x0, x1
    // 0x6d9424: mov             x1, x16
    // 0x6d9428: r4 = const [0, 0x1, 0, 0x1, null]
    //     0x6d9428: ldr             x4, [PP, #0x550]  ; [pp+0x550] List(5) [0, 0x1, 0, 0x1, Null]
    // 0x6d942c: r0 = GDT[cid_x0 + 0xd299]()
    //     0x6d942c: mov             x17, #0xd299
    //     0x6d9430: add             lr, x0, x17
    //     0x6d9434: ldr             lr, [x21, lr, lsl #3]
    //     0x6d9438: blr             lr
    // 0x6d943c: r17 = -288
    //     0x6d943c: mov             x17, #-0x120
    // 0x6d9440: ldr             x2, [fp, x17]
    // 0x6d9444: StoreField: r2->field_2f = r0
    //     0x6d9444: stur            w0, [x2, #0x2f]
    //     0x6d9448: ldurb           w16, [x2, #-1]
    //     0x6d944c: ldurb           w17, [x0, #-1]
    //     0x6d9450: and             x16, x17, x16, lsr #2
    //     0x6d9454: tst             x16, HEAP, lsr #32
    //     0x6d9458: b.eq            #0x6d9460
    //     0x6d945c: bl              #0x9267b0  ; WriteBarrierWrappersStub
    // 0x6d9460: r1 = "Acenta güncellendi"
    //     0x6d9460: add             x1, PP, #0x19, lsl #12  ; [pp+0x19830] "Acenta güncellendi"
    //     0x6d9464: ldr             x1, [x1, #0x830]
    // 0x6d9468: r0 = showSuccess()
    //     0x6d9468: bl              #0x5dcfb0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showSuccess
    // 0x6d946c: b               #0x6d947c
    // 0x6d9470: r1 = "Acenta güncellenemedi"
    //     0x6d9470: add             x1, PP, #0x19, lsl #12  ; [pp+0x19838] "Acenta güncellenemedi"
    //     0x6d9474: ldr             x1, [x1, #0x838]
    // 0x6d9478: r0 = showError()
    //     0x6d9478: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d947c: r17 = -288
    //     0x6d947c: mov             x17, #-0x120
    // 0x6d9480: ldr             x2, [fp, x17]
    // 0x6d9484: r3 = false
    //     0x6d9484: add             x3, NULL, #0x30  ; false
    // 0x6d9488: StoreField: r2->field_2b = r3
    //     0x6d9488: stur            w3, [x2, #0x2b]
    // 0x6d948c: mov             x1, x2
    // 0x6d9490: r0 = notifyListeners()
    //     0x6d9490: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d9494: ldur            x0, [fp, #-0xf8]
    // 0x6d9498: r0 = ReturnAsync()
    //     0x6d9498: b               #0x427094  ; ReturnAsyncStub
    // 0x6d949c: sub             SP, fp, #0x148
    // 0x6d94a0: r17 = -288
    //     0x6d94a0: mov             x17, #-0x120
    // 0x6d94a4: ldr             x2, [fp, x17]
    // 0x6d94a8: r3 = false
    //     0x6d94a8: add             x3, NULL, #0x30  ; false
    // 0x6d94ac: mov             x4, x0
    // 0x6d94b0: stur            x0, [fp, #-0xf0]
    // 0x6d94b4: mov             x0, x1
    // 0x6d94b8: stur            x1, [fp, #-0xf8]
    // 0x6d94bc: r1 = "Acenta güncellenemedi"
    //     0x6d94bc: add             x1, PP, #0x19, lsl #12  ; [pp+0x19838] "Acenta güncellenemedi"
    //     0x6d94c0: ldr             x1, [x1, #0x838]
    // 0x6d94c4: r0 = showError()
    //     0x6d94c4: bl              #0x5dc4c0  ; [package:umrem_demo/core/utils/global_snackbar.dart] GlobalSnackBar::showError
    // 0x6d94c8: r17 = -288
    //     0x6d94c8: mov             x17, #-0x120
    // 0x6d94cc: ldr             x2, [fp, x17]
    // 0x6d94d0: r0 = false
    //     0x6d94d0: add             x0, NULL, #0x30  ; false
    // 0x6d94d4: StoreField: r2->field_2b = r0
    //     0x6d94d4: stur            w0, [x2, #0x2b]
    // 0x6d94d8: mov             x1, x2
    // 0x6d94dc: r0 = notifyListeners()
    //     0x6d94dc: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d94e0: r0 = false
    //     0x6d94e0: add             x0, NULL, #0x30  ; false
    // 0x6d94e4: r0 = ReturnAsyncNotFuture()
    //     0x6d94e4: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x6d94e8: sub             SP, fp, #0x148
    // 0x6d94ec: r17 = -288
    //     0x6d94ec: mov             x17, #-0x120
    // 0x6d94f0: ldr             x2, [fp, x17]
    // 0x6d94f4: r3 = false
    //     0x6d94f4: add             x3, NULL, #0x30  ; false
    // 0x6d94f8: mov             x4, x0
    // 0x6d94fc: stur            x0, [fp, #-0xf0]
    // 0x6d9500: mov             x0, x1
    // 0x6d9504: stur            x1, [fp, #-0xf8]
    // 0x6d9508: r3 = false
    //     0x6d9508: add             x3, NULL, #0x30  ; false
    // 0x6d950c: StoreField: r2->field_2b = r3
    //     0x6d950c: stur            w3, [x2, #0x2b]
    // 0x6d9510: mov             x1, x2
    // 0x6d9514: r0 = notifyListeners()
    //     0x6d9514: bl              #0x3c9dcc  ; [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::notifyListeners
    // 0x6d9518: ldur            x0, [fp, #-0xf0]
    // 0x6d951c: ldur            x1, [fp, #-0xf8]
    // 0x6d9520: r0 = ReThrow()
    //     0x6d9520: bl              #0x9262fc  ; ReThrowStub
    // 0x6d9524: brk             #0
    // 0x6d9528: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d9528: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d952c: b               #0x6d91e8
  }
  [closure] AgencyModel <anonymous closure>(dynamic, AgencyModel) {
    // ** addr: 0x6d95e8, size: 0x148
    // 0x6d95e8: EnterFrame
    //     0x6d95e8: stp             fp, lr, [SP, #-0x10]!
    //     0x6d95ec: mov             fp, SP
    // 0x6d95f0: AllocStack(0x38)
    //     0x6d95f0: sub             SP, SP, #0x38
    // 0x6d95f4: SetupParameters([dynamic _ /* r0 */])
    //     0x6d95f4: ldr             x0, [fp, #0x18]
    //     0x6d95f8: ldur            w1, [x0, #0x17]
    //     0x6d95fc: add             x1, x1, HEAP, lsl #32
    //     0x6d9600: stur            x1, [fp, #-8]
    // 0x6d9604: CheckStackOverflow
    //     0x6d9604: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x6d9608: cmp             SP, x16
    //     0x6d960c: b.ls            #0x6d9728
    // 0x6d9610: ldr             x2, [fp, #0x10]
    // 0x6d9614: LoadField: r0 = r2->field_7
    //     0x6d9614: ldur            w0, [x2, #7]
    // 0x6d9618: DecompressPointer r0
    //     0x6d9618: add             x0, x0, HEAP, lsl #32
    // 0x6d961c: LoadField: r3 = r1->field_f
    //     0x6d961c: ldur            w3, [x1, #0xf]
    // 0x6d9620: DecompressPointer r3
    //     0x6d9620: add             x3, x3, HEAP, lsl #32
    // 0x6d9624: r4 = LoadClassIdInstr(r0)
    //     0x6d9624: ldur            x4, [x0, #-1]
    //     0x6d9628: ubfx            x4, x4, #0xc, #0x14
    // 0x6d962c: stp             x3, x0, [SP]
    // 0x6d9630: mov             x0, x4
    // 0x6d9634: mov             lr, x0
    // 0x6d9638: ldr             lr, [x21, lr, lsl #3]
    // 0x6d963c: blr             lr
    // 0x6d9640: tbnz            w0, #4, #0x6d9714
    // 0x6d9644: ldur            x0, [fp, #-8]
    // 0x6d9648: LoadField: r1 = r0->field_23
    //     0x6d9648: ldur            w1, [x0, #0x23]
    // 0x6d964c: DecompressPointer r1
    //     0x6d964c: add             x1, x1, HEAP, lsl #32
    // 0x6d9650: cmp             w1, NULL
    // 0x6d9654: b.ne            #0x6d9668
    // 0x6d9658: ldr             x2, [fp, #0x10]
    // 0x6d965c: LoadField: r1 = r2->field_b
    //     0x6d965c: ldur            w1, [x2, #0xb]
    // 0x6d9660: DecompressPointer r1
    //     0x6d9660: add             x1, x1, HEAP, lsl #32
    // 0x6d9664: b               #0x6d966c
    // 0x6d9668: ldr             x2, [fp, #0x10]
    // 0x6d966c: ArrayLoad: r3 = r0[0]  ; List_4
    //     0x6d966c: ldur            w3, [x0, #0x17]
    // 0x6d9670: DecompressPointer r3
    //     0x6d9670: add             x3, x3, HEAP, lsl #32
    // 0x6d9674: cmp             w3, NULL
    // 0x6d9678: b.ne            #0x6d9684
    // 0x6d967c: LoadField: r3 = r2->field_f
    //     0x6d967c: ldur            w3, [x2, #0xf]
    // 0x6d9680: DecompressPointer r3
    //     0x6d9680: add             x3, x3, HEAP, lsl #32
    // 0x6d9684: LoadField: r4 = r0->field_27
    //     0x6d9684: ldur            w4, [x0, #0x27]
    // 0x6d9688: DecompressPointer r4
    //     0x6d9688: add             x4, x4, HEAP, lsl #32
    // 0x6d968c: cmp             w4, NULL
    // 0x6d9690: b.ne            #0x6d969c
    // 0x6d9694: LoadField: r4 = r2->field_13
    //     0x6d9694: ldur            w4, [x2, #0x13]
    // 0x6d9698: DecompressPointer r4
    //     0x6d9698: add             x4, x4, HEAP, lsl #32
    // 0x6d969c: LoadField: r5 = r0->field_1b
    //     0x6d969c: ldur            w5, [x0, #0x1b]
    // 0x6d96a0: DecompressPointer r5
    //     0x6d96a0: add             x5, x5, HEAP, lsl #32
    // 0x6d96a4: cmp             w5, NULL
    // 0x6d96a8: b.ne            #0x6d96b4
    // 0x6d96ac: ArrayLoad: r5 = r2[0]  ; List_4
    //     0x6d96ac: ldur            w5, [x2, #0x17]
    // 0x6d96b0: DecompressPointer r5
    //     0x6d96b0: add             x5, x5, HEAP, lsl #32
    // 0x6d96b4: LoadField: r6 = r0->field_13
    //     0x6d96b4: ldur            w6, [x0, #0x13]
    // 0x6d96b8: DecompressPointer r6
    //     0x6d96b8: add             x6, x6, HEAP, lsl #32
    // 0x6d96bc: cmp             w6, NULL
    // 0x6d96c0: b.ne            #0x6d96cc
    // 0x6d96c4: LoadField: r6 = r2->field_1b
    //     0x6d96c4: ldur            w6, [x2, #0x1b]
    // 0x6d96c8: DecompressPointer r6
    //     0x6d96c8: add             x6, x6, HEAP, lsl #32
    // 0x6d96cc: LoadField: r7 = r0->field_1f
    //     0x6d96cc: ldur            w7, [x0, #0x1f]
    // 0x6d96d0: DecompressPointer r7
    //     0x6d96d0: add             x7, x7, HEAP, lsl #32
    // 0x6d96d4: cmp             w7, NULL
    // 0x6d96d8: b.ne            #0x6d96e8
    // 0x6d96dc: LoadField: r0 = r2->field_1f
    //     0x6d96dc: ldur            w0, [x2, #0x1f]
    // 0x6d96e0: DecompressPointer r0
    //     0x6d96e0: add             x0, x0, HEAP, lsl #32
    // 0x6d96e4: b               #0x6d96ec
    // 0x6d96e8: mov             x0, x7
    // 0x6d96ec: stp             x3, x1, [SP, #0x20]
    // 0x6d96f0: stp             x5, x4, [SP, #0x10]
    // 0x6d96f4: stp             x0, x6, [SP]
    // 0x6d96f8: mov             x1, x2
    // 0x6d96fc: r4 = const [0, 0x7, 0x6, 0x1, address, 0x5, description, 0x2, email, 0x4, isActive, 0x6, name, 0x1, phone, 0x3, null]
    //     0x6d96fc: add             x4, PP, #0x19, lsl #12  ; [pp+0x19840] List(17) [0, 0x7, 0x6, 0x1, "address", 0x5, "description", 0x2, "email", 0x4, "isActive", 0x6, "name", 0x1, "phone", 0x3, Null]
    //     0x6d9700: ldr             x4, [x4, #0x840]
    // 0x6d9704: r0 = copyWith()
    //     0x6d9704: bl              #0x6d89d0  ; [package:umrem_demo/features/admin/models/agency_model.dart] AgencyModel::copyWith
    // 0x6d9708: LeaveFrame
    //     0x6d9708: mov             SP, fp
    //     0x6d970c: ldp             fp, lr, [SP], #0x10
    // 0x6d9710: ret
    //     0x6d9710: ret             
    // 0x6d9714: ldr             x2, [fp, #0x10]
    // 0x6d9718: mov             x0, x2
    // 0x6d971c: LeaveFrame
    //     0x6d971c: mov             SP, fp
    //     0x6d9720: ldp             fp, lr, [SP], #0x10
    // 0x6d9724: ret
    //     0x6d9724: ret             
    // 0x6d9728: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x6d9728: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x6d972c: b               #0x6d9610
  }
  _ AgencyProvider(/* No info */) {
    // ** addr: 0x7f0ba0, size: 0x100
    // 0x7f0ba0: EnterFrame
    //     0x7f0ba0: stp             fp, lr, [SP, #-0x10]!
    //     0x7f0ba4: mov             fp, SP
    // 0x7f0ba8: AllocStack(0x10)
    //     0x7f0ba8: sub             SP, SP, #0x10
    // 0x7f0bac: r0 = false
    //     0x7f0bac: add             x0, NULL, #0x30  ; false
    // 0x7f0bb0: stur            x1, [fp, #-8]
    // 0x7f0bb4: CheckStackOverflow
    //     0x7f0bb4: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x7f0bb8: cmp             SP, x16
    //     0x7f0bbc: b.ls            #0x7f0c98
    // 0x7f0bc0: StoreField: r1->field_27 = r0
    //     0x7f0bc0: stur            w0, [x1, #0x27]
    // 0x7f0bc4: StoreField: r1->field_2b = r0
    //     0x7f0bc4: stur            w0, [x1, #0x2b]
    // 0x7f0bc8: r4 = const [0, 0, 0, 0, null]
    //     0x7f0bc8: ldr             x4, [PP, #0x1608]  ; [pp+0x1608] List(5) [0, 0, 0, 0, Null]
    // 0x7f0bcc: r0 = app()
    //     0x7f0bcc: bl              #0x5d81cc  ; [package:firebase_core/firebase_core.dart] Firebase::app
    // 0x7f0bd0: mov             x1, x0
    // 0x7f0bd4: r0 = instanceFor()
    //     0x7f0bd4: bl              #0x6d022c  ; [package:cloud_firestore/cloud_firestore.dart] FirebaseFirestore::instanceFor
    // 0x7f0bd8: stur            x0, [fp, #-0x10]
    // 0x7f0bdc: r0 = FirestoreService()
    //     0x7f0bdc: bl              #0x6d0220  ; AllocateFirestoreServiceStub -> FirestoreService (size=0xc)
    // 0x7f0be0: mov             x1, x0
    // 0x7f0be4: ldur            x0, [fp, #-0x10]
    // 0x7f0be8: StoreField: r1->field_7 = r0
    //     0x7f0be8: stur            w0, [x1, #7]
    // 0x7f0bec: mov             x0, x1
    // 0x7f0bf0: ldur            x3, [fp, #-8]
    // 0x7f0bf4: StoreField: r3->field_23 = r0
    //     0x7f0bf4: stur            w0, [x3, #0x23]
    //     0x7f0bf8: ldurb           w16, [x3, #-1]
    //     0x7f0bfc: ldurb           w17, [x0, #-1]
    //     0x7f0c00: and             x16, x17, x16, lsr #2
    //     0x7f0c04: tst             x16, HEAP, lsr #32
    //     0x7f0c08: b.eq            #0x7f0c10
    //     0x7f0c0c: bl              #0x9267d0  ; WriteBarrierWrappersStub
    // 0x7f0c10: r1 = <AgencyModel>
    //     0x7f0c10: add             x1, PP, #0x10, lsl #12  ; [pp+0x10d90] TypeArguments: <AgencyModel>
    //     0x7f0c14: ldr             x1, [x1, #0xd90]
    // 0x7f0c18: r2 = 0
    //     0x7f0c18: mov             x2, #0
    // 0x7f0c1c: r0 = _GrowableList()
    //     0x7f0c1c: bl              #0x3c77e4  ; [dart:core] _GrowableList::_GrowableList
    // 0x7f0c20: ldur            x1, [fp, #-8]
    // 0x7f0c24: StoreField: r1->field_2f = r0
    //     0x7f0c24: stur            w0, [x1, #0x2f]
    //     0x7f0c28: ldurb           w16, [x1, #-1]
    //     0x7f0c2c: ldurb           w17, [x0, #-1]
    //     0x7f0c30: and             x16, x17, x16, lsr #2
    //     0x7f0c34: tst             x16, HEAP, lsr #32
    //     0x7f0c38: b.eq            #0x7f0c40
    //     0x7f0c3c: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0c40: StoreField: r1->field_7 = rZR
    //     0x7f0c40: stur            xzr, [x1, #7]
    // 0x7f0c44: StoreField: r1->field_13 = rZR
    //     0x7f0c44: stur            xzr, [x1, #0x13]
    // 0x7f0c48: StoreField: r1->field_1b = rZR
    //     0x7f0c48: stur            xzr, [x1, #0x1b]
    // 0x7f0c4c: r0 = InitLateStaticField(0x5e0) // [package:flutter/src/foundation/change_notifier.dart] ChangeNotifier::_emptyListeners
    //     0x7f0c4c: ldr             x0, [THR, #0x78]  ; THR::field_table_values
    //     0x7f0c50: ldr             x0, [x0, #0xbc0]
    //     0x7f0c54: ldr             x16, [PP, #0x40]  ; [pp+0x40] Sentinel
    //     0x7f0c58: cmp             w0, w16
    //     0x7f0c5c: b.ne            #0x7f0c68
    //     0x7f0c60: ldr             x2, [PP, #0x1c28]  ; [pp+0x1c28] Field <ChangeNotifier._emptyListeners@88329750>: static late final (offset: 0x5e0)
    //     0x7f0c64: bl              #0x9261e8  ; InitLateFinalStaticFieldStub
    // 0x7f0c68: ldur            x1, [fp, #-8]
    // 0x7f0c6c: StoreField: r1->field_f = r0
    //     0x7f0c6c: stur            w0, [x1, #0xf]
    //     0x7f0c70: ldurb           w16, [x1, #-1]
    //     0x7f0c74: ldurb           w17, [x0, #-1]
    //     0x7f0c78: and             x16, x17, x16, lsr #2
    //     0x7f0c7c: tst             x16, HEAP, lsr #32
    //     0x7f0c80: b.eq            #0x7f0c88
    //     0x7f0c84: bl              #0x926790  ; WriteBarrierWrappersStub
    // 0x7f0c88: r0 = Null
    //     0x7f0c88: mov             x0, NULL
    // 0x7f0c8c: LeaveFrame
    //     0x7f0c8c: mov             SP, fp
    //     0x7f0c90: ldp             fp, lr, [SP], #0x10
    // 0x7f0c94: ret
    //     0x7f0c94: ret             
    // 0x7f0c98: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x7f0c98: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x7f0c9c: b               #0x7f0bc0
  }
}
