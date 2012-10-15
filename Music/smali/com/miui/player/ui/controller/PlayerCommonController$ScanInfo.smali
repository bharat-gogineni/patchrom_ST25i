.class public Lcom/miui/player/ui/controller/PlayerCommonController$ScanInfo;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/PlayerCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanInfo"
.end annotation


# instance fields
.field public isSeeking:Z

.field public lastEventTime:J

.field public posOverride:J

.field public startSeekPos:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
