package com.hekzapot.umrerehberim

import com.ryanheise.audioservice.AudioServiceActivity

// Kur'an sesli okuma (audio_service) arka planda ve bildirimden kontrol
// edilebilsin diye Flutter motoru AudioServiceActivity üzerinden önbelleğe
// alınır. AudioServiceActivity, FlutterActivity'den türer; diğer eklentiler
// (flutter_foreground_task, flutter_background_service) etkilenmez.
class MainActivity : AudioServiceActivity()
