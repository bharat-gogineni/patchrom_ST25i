.class public Lcom/android/phone/MiuiConstants;
.super Lcom/android/phone/Constants;
.source "MiuiConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiConstants$CdmaCallState;,
        Lcom/android/phone/MiuiConstants$AudioMode;
    }
.end annotation


# static fields
.field public static final EXTRA_USING_AUDIO_MODE_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/phone/MiuiConstants$AudioMode;->Invalid:Lcom/android/phone/MiuiConstants$AudioMode;

    invoke-virtual {v0}, Lcom/android/phone/MiuiConstants$AudioMode;->ordinal()I

    move-result v0

    sput v0, Lcom/android/phone/MiuiConstants;->EXTRA_USING_AUDIO_MODE_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/android/phone/Constants;-><init>()V

    .line 16
    return-void
.end method
