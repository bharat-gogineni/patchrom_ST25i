.class Lcom/miui/gallery/cloud/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadCloud.java"


# instance fields
.field public downloadFile:Ljava/io/File;

.field public downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

.field public downloadState:I

.field public downloadTempFile:Ljava/io/File;

.field public requestItem:Lcom/miui/gallery/cloud/RequestItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/RequestItem;)V
    .locals 1
    .parameter "requestItem"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gallery/cloud/DownloadItem;->downloadState:I

    .line 63
    sget-object v0, Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;->Ok:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    iput-object v0, p0, Lcom/miui/gallery/cloud/DownloadItem;->downloadResult:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 66
    iput-object p1, p0, Lcom/miui/gallery/cloud/DownloadItem;->requestItem:Lcom/miui/gallery/cloud/RequestItem;

    .line 67
    return-void
.end method
