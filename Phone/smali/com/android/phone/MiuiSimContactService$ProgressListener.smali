.class public interface abstract Lcom/android/phone/MiuiSimContactService$ProgressListener;
.super Ljava/lang/Object;
.source "MiuiSimContactService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFinished(Lcom/android/phone/MiuiSimContacts$SimContactOP;)V
.end method

.method public abstract onProgress(IIILcom/android/phone/MiuiSimContacts$SimContactOP;)V
.end method
