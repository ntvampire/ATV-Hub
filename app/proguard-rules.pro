# Proguard rules for ATV Hub
-keepattributes *Annotation*
-keepclassmembers class * {
    @androidx.room.* <methods>;
}
-keep class com.google.gson.** { *; }
