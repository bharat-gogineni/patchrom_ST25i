.class public interface abstract Lcom/miui/gallery/bigscreen/ConnectControl$ConnectListener;
.super Ljava/lang/Object;
.source "ConnectControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/bigscreen/ConnectControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectListener"
.end annotation


# virtual methods
.method public abstract onCancelAnimation()V
.end method

.method public abstract onDeviceRefresh(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onDevicesAdded(Ljava/lang/String;)V
.end method

.method public abstract onDevicesAvailable(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPhotoConnectReleased()V
.end method

.method public abstract onPhotoConnectResponse(I)V
.end method

.method public abstract onPhotoSlideShowTypeList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRelease()V
.end method

.method public abstract onUIListenerChange(Lcom/miui/gallery/bigscreen/ConnectControl$InnerUIListener;)V
.end method
