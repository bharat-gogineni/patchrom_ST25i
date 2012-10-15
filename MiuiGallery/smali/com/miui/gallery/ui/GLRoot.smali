.class public interface abstract Lcom/miui/gallery/ui/GLRoot;
.super Ljava/lang/Object;
.source "GLRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/GLRoot$OnGLIdleListener;
    }
.end annotation


# virtual methods
.method public abstract addOnGLIdleListener(Lcom/miui/gallery/ui/GLRoot$OnGLIdleListener;)V
.end method

.method public abstract lockRenderThread()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract setContentPane(Lcom/miui/gallery/ui/GLView;)V
.end method

.method public abstract unlockRenderThread()V
.end method
