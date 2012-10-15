.class public Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;
.super Ljava/lang/Object;
.source "ScanWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/ScanWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConvertDownload"
.end annotation


# instance fields
.field public downloadFile:Ljava/lang/String;

.field public groupID:I

.field public microThumbnailFile:Ljava/lang/String;

.field public recordID:J

.field final synthetic this$0:Lcom/miui/gallery/cloud/ScanWorkerThread;

.field public thumbnailFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/ScanWorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/gallery/cloud/ScanWorkerThread$ConvertDownload;->this$0:Lcom/miui/gallery/cloud/ScanWorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
