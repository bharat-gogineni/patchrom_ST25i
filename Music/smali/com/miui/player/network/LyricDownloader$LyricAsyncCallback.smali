.class public abstract Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;
.super Ljava/lang/Object;
.source "LyricDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/LyricDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LyricAsyncCallback"
.end annotation


# instance fields
.field protected mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isAutoChoose()Z
.end method

.method public setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    .locals 0
    .parameter "provider"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlinelyric/LyricProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, info:Ljava/util/List;,"Ljava/util/List<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iput-object p1, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    .line 36
    iput-object p2, p0, Lcom/miui/player/network/LyricDownloader$LyricAsyncCallback;->mInfoList:Ljava/util/List;

    .line 37
    return-void
.end method
