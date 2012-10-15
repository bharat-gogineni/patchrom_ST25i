.class public abstract Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
.super Ljava/lang/Object;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Retrier"
.end annotation


# instance fields
.field public orig:Landroid/os/Message;

.field public retryCount:I


# direct methods
.method public constructor <init>(Landroid/os/Message;)V
    .locals 1
    .parameter "orig"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->orig:Landroid/os/Message;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;->retryCount:I

    .line 76
    return-void
.end method


# virtual methods
.method abstract retry()V
.end method
