.class Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;
.super Ljava/lang/Object;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static obtainMessage(Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;)Landroid/os/Message;
    .locals 2
    .parameter "retrier"

    .prologue
    .line 82
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->access$000()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method
