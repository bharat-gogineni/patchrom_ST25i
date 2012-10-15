.class public interface abstract Lcom/duokan/airkan/phone/api/PhotoManager$OnPhotoEventListener;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/ConnectionManager$OnConnectionStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPhotoEventListener"
.end annotation


# virtual methods
.method public abstract onConnectResponse(I)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onGetImageData(Ljava/lang/String;II)[B
.end method

.method public abstract onSetImageData(Ljava/lang/String;[BII)V
.end method

.method public abstract onSlideshowTypeList([Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V
.end method
