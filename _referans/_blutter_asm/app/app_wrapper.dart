// lib: , url: package:umrem_demo/app/app_wrapper.dart

// class id: 1049482, size: 0x8
class :: {
}

// class id: 2938, size: 0xc, field offset: 0xc
//   const constructor, 
class AppWrapper extends StatelessWidget {

  _ build(/* No info */) {
    // ** addr: 0x7db298, size: 0x48
    // 0x7db298: EnterFrame
    //     0x7db298: stp             fp, lr, [SP, #-0x10]!
    //     0x7db29c: mov             fp, SP
    // 0x7db2a0: AllocStack(0x8)
    //     0x7db2a0: sub             SP, SP, #8
    // 0x7db2a4: SetupParameters(AppWrapper this /* r1 => r3 */, dynamic _ /* r2 => r0 */)
    //     0x7db2a4: mov             x3, x1
    //     0x7db2a8: mov             x0, x2
    // 0x7db2ac: r1 = Function '<anonymous closure>':.
    //     0x7db2ac: add             x1, PP, #0x12, lsl #12  ; [pp+0x12838] AnonymousClosure: (0x7db30c), in [package:umrem_demo/app/app_wrapper.dart] AppWrapper::build (0x7db298)
    //     0x7db2b0: ldr             x1, [x1, #0x838]
    // 0x7db2b4: r2 = Null
    //     0x7db2b4: mov             x2, NULL
    // 0x7db2b8: r0 = AllocateClosure()
    //     0x7db2b8: bl              #0x9273d4  ; AllocateClosureStub
    // 0x7db2bc: r1 = <SplashProvider, AppStateProvider>
    //     0x7db2bc: add             x1, PP, #0x12, lsl #12  ; [pp+0x12840] TypeArguments: <SplashProvider, AppStateProvider>
    //     0x7db2c0: ldr             x1, [x1, #0x840]
    // 0x7db2c4: stur            x0, [fp, #-8]
    // 0x7db2c8: r0 = Consumer2()
    //     0x7db2c8: bl              #0x7db2e0  ; AllocateConsumer2Stub -> Consumer2<X0, X1> (size=0x18)
    // 0x7db2cc: ldur            x1, [fp, #-8]
    // 0x7db2d0: StoreField: r0->field_13 = r1
    //     0x7db2d0: stur            w1, [x0, #0x13]
    // 0x7db2d4: LeaveFrame
    //     0x7db2d4: mov             SP, fp
    //     0x7db2d8: ldp             fp, lr, [SP], #0x10
    // 0x7db2dc: ret
    //     0x7db2dc: ret             
  }
  [closure] StatefulWidget <anonymous closure>(dynamic, BuildContext, SplashProvider, AppStateProvider, Widget?) {
    // ** addr: 0x7db30c, size: 0x44
    // 0x7db30c: ldr             x1, [SP, #0x10]
    // 0x7db310: LoadField: r2 = r1->field_23
    //     0x7db310: ldur            w2, [x1, #0x23]
    // 0x7db314: DecompressPointer r2
    //     0x7db314: add             x2, x2, HEAP, lsl #32
    // 0x7db318: tbnz            w2, #4, #0x7db328
    // 0x7db31c: r0 = Instance_SplashScreen
    //     0x7db31c: add             x0, PP, #0x11, lsl #12  ; [pp+0x11eb0] Obj!SplashScreen@a20221
    //     0x7db320: ldr             x0, [x0, #0xeb0]
    // 0x7db324: ret
    //     0x7db324: ret             
    // 0x7db328: LoadField: r2 = r1->field_2b
    //     0x7db328: ldur            w2, [x1, #0x2b]
    // 0x7db32c: DecompressPointer r2
    //     0x7db32c: add             x2, x2, HEAP, lsl #32
    // 0x7db330: cmp             w2, NULL
    // 0x7db334: b.eq            #0x7db344
    // 0x7db338: r0 = Instance_SplashScreen
    //     0x7db338: add             x0, PP, #0x11, lsl #12  ; [pp+0x11eb0] Obj!SplashScreen@a20221
    //     0x7db33c: ldr             x0, [x0, #0xeb0]
    // 0x7db340: ret
    //     0x7db340: ret             
    // 0x7db344: r0 = Instance_SplashScreen
    //     0x7db344: add             x0, PP, #0x11, lsl #12  ; [pp+0x11eb0] Obj!SplashScreen@a20221
    //     0x7db348: ldr             x0, [x0, #0xeb0]
    // 0x7db34c: ret
    //     0x7db34c: ret             
  }
}
