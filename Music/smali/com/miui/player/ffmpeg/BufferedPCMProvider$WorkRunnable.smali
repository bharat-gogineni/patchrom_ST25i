.class Lcom/miui/player/ffmpeg/BufferedPCMProvider$WorkRunnable;
.super Ljava/lang/Object;
.source "BufferedPCMProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ffmpeg/BufferedPCMProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkRunnable"
.end annotation


# instance fields
.field private final mProviderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/player/ffmpeg/BufferedPCMProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/ffmpeg/BufferedPCMProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$WorkRunnable;->mProviderRef:Ljava/lang/ref/WeakReference;

    .line 217
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 221
    sget-object v2, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    const-string v3, "Work thread start"

    invoke-static {v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lcom/miui/player/ffmpeg/BufferedPCMProvider$WorkRunnable;->mProviderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ffmpeg/BufferedPCMProvider;

    .line 223
    .local v1, provider:Lcom/miui/player/ffmpeg/BufferedPCMProvider;
    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->workAsync()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/player/ffmpeg/BufferedPCMProvider;->TAG:Ljava/lang/String;

    const-string v3, "Work thread finish"

    invoke-static {v2, v3}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
