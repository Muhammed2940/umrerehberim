// lib: , url: package:umrem_demo/common/services/location_permission.dart

// class id: 1049492, size: 0x8
class :: {

  static _ checkLocationPermission(/* No info */) async {
    // ** addr: 0x92df38, size: 0xb4
    // 0x92df38: EnterFrame
    //     0x92df38: stp             fp, lr, [SP, #-0x10]!
    //     0x92df3c: mov             fp, SP
    // 0x92df40: AllocStack(0x10)
    //     0x92df40: sub             SP, SP, #0x10
    // 0x92df44: SetupParameters()
    //     0x92df44: stur            NULL, [fp, #-8]
    // 0x92df48: CheckStackOverflow
    //     0x92df48: ldr             x16, [THR, #0x48]  ; THR::stack_limit
    //     0x92df4c: cmp             SP, x16
    //     0x92df50: b.ls            #0x92dfe4
    // 0x92df54: InitAsync() -> Future<bool>
    //     0x92df54: ldr             x0, [PP, #0x1d08]  ; [pp+0x1d08] TypeArguments: <bool>
    //     0x92df58: bl              #0x3dd3c4  ; InitAsyncStub
    // 0x92df5c: r0 = isLocationServiceEnabled()
    //     0x92df5c: bl              #0x5ab438  ; [package:geolocator/geolocator.dart] Geolocator::isLocationServiceEnabled
    // 0x92df60: mov             x1, x0
    // 0x92df64: stur            x1, [fp, #-0x10]
    // 0x92df68: r0 = Await()
    //     0x92df68: bl              #0x3dd188  ; AwaitStub
    // 0x92df6c: r16 = true
    //     0x92df6c: add             x16, NULL, #0x20  ; true
    // 0x92df70: cmp             w0, w16
    // 0x92df74: b.eq            #0x92df80
    // 0x92df78: r0 = false
    //     0x92df78: add             x0, NULL, #0x30  ; false
    // 0x92df7c: r0 = ReturnAsyncNotFuture()
    //     0x92df7c: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92df80: r0 = checkPermission()
    //     0x92df80: bl              #0x5ab570  ; [package:geolocator/geolocator.dart] Geolocator::checkPermission
    // 0x92df84: mov             x1, x0
    // 0x92df88: stur            x1, [fp, #-0x10]
    // 0x92df8c: r0 = Await()
    //     0x92df8c: bl              #0x3dd188  ; AwaitStub
    // 0x92df90: r16 = Instance_LocationPermission
    //     0x92df90: add             x16, PP, #9, lsl #12  ; [pp+0x95d8] Obj!LocationPermission@a27c41
    //     0x92df94: ldr             x16, [x16, #0x5d8]
    // 0x92df98: cmp             w0, w16
    // 0x92df9c: b.ne            #0x92dfc4
    // 0x92dfa0: r0 = requestPermission()
    //     0x92dfa0: bl              #0x65b054  ; [package:geolocator/geolocator.dart] Geolocator::requestPermission
    // 0x92dfa4: mov             x1, x0
    // 0x92dfa8: stur            x1, [fp, #-0x10]
    // 0x92dfac: r0 = Await()
    //     0x92dfac: bl              #0x3dd188  ; AwaitStub
    // 0x92dfb0: r16 = Instance_LocationPermission
    //     0x92dfb0: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x92dfb4: ldr             x16, [x16, #0x5e0]
    // 0x92dfb8: cmp             w0, w16
    // 0x92dfbc: b.ne            #0x92dfdc
    // 0x92dfc0: b               #0x92dfd4
    // 0x92dfc4: r16 = Instance_LocationPermission
    //     0x92dfc4: add             x16, PP, #9, lsl #12  ; [pp+0x95e0] Obj!LocationPermission@a27c21
    //     0x92dfc8: ldr             x16, [x16, #0x5e0]
    // 0x92dfcc: cmp             w0, w16
    // 0x92dfd0: b.ne            #0x92dfdc
    // 0x92dfd4: r0 = false
    //     0x92dfd4: add             x0, NULL, #0x30  ; false
    // 0x92dfd8: r0 = ReturnAsyncNotFuture()
    //     0x92dfd8: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92dfdc: r0 = true
    //     0x92dfdc: add             x0, NULL, #0x20  ; true
    // 0x92dfe0: r0 = ReturnAsyncNotFuture()
    //     0x92dfe0: b               #0x3dcd60  ; ReturnAsyncNotFutureStub
    // 0x92dfe4: r0 = StackOverflowSharedWithoutFPURegs()
    //     0x92dfe4: bl              #0x9281a8  ; StackOverflowSharedWithoutFPURegsStub
    // 0x92dfe8: b               #0x92df54
  }
}
