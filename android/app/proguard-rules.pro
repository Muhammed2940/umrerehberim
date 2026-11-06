# Telsiz (LiveKit / WebRTC). flutter_webrtc kendi consumer kurallarını da getirir;
# bunlar release (R8) derlemesinde JNI ile erişilen sınıfların silinmemesi için ek güvence.
-keep class org.webrtc.** { *; }
-keep class com.cloudwebrtc.webrtc.** { *; }
-keep class io.livekit.** { *; }
-keep class org.jni_zero.** { *; }
-dontwarn org.jni_zero.JniZeroJni
-dontwarn org.webrtc.**

# flutter_foreground_task servis sınıfı (manifestten adla başlatılır)
-keep class com.pravera.flutter_foreground_task.** { *; }
