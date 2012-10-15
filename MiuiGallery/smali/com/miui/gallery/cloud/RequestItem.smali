.class public Lcom/miui/gallery/cloud/RequestItem;
.super Ljava/lang/Object;
.source "RequestItem.java"


# instance fields
.field public commitRetryTimes:I

.field public createRetryTimes:I

.field public dbCloud:Lcom/miui/gallery/data/DBCloud;

.field public downloadType:I

.field public editRetryTimes:I

.field public isDownloading:Z

.field public kssRetryTimes:I

.field public multRequestItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItem;",
            ">;"
        }
    .end annotation
.end field

.field public needReRequest:Z

.field public otherRetryTimes:I

.field public retryAfter:J

.field public serverId:Ljava/lang/String;

.field public serverIds:Ljava/lang/String;

.field public uploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/DBCloud;)V
    .locals 4
    .parameter "dbCloud"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    .line 28
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestItem;->dbCloud:Lcom/miui/gallery/data/DBCloud;

    .line 29
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->createRetryTimes:I

    .line 30
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    .line 31
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    .line 32
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    .line 33
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/RequestItem;->retryAfter:J

    .line 35
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    .line 36
    iput-object v3, p0, Lcom/miui/gallery/cloud/RequestItem;->uploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    .line 37
    iput-object v3, p0, Lcom/miui/gallery/cloud/RequestItem;->serverId:Ljava/lang/String;

    .line 38
    iput-object v3, p0, Lcom/miui/gallery/cloud/RequestItem;->serverIds:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/cloud/RequestItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, multRequestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/cloud/RequestItem;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    .line 43
    iput-object p1, p0, Lcom/miui/gallery/cloud/RequestItem;->multRequestItems:Ljava/util/ArrayList;

    .line 44
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->createRetryTimes:I

    .line 45
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->commitRetryTimes:I

    .line 46
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->editRetryTimes:I

    .line 47
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->kssRetryTimes:I

    .line 48
    iput v2, p0, Lcom/miui/gallery/cloud/RequestItem;->otherRetryTimes:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gallery/cloud/RequestItem;->retryAfter:J

    .line 50
    iput-boolean v2, p0, Lcom/miui/gallery/cloud/RequestItem;->needReRequest:Z

    .line 51
    iput-object v3, p0, Lcom/miui/gallery/cloud/RequestItem;->uploadResult:Lcn/kuaipan/kss/KssUpload$UploadResult;

    .line 52
    iput-object v3, p0, Lcom/miui/gallery/cloud/RequestItem;->serverId:Ljava/lang/String;

    .line 53
    iput-object v3, p0, Lcom/miui/gallery/cloud/RequestItem;->serverIds:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/cloud/RequestItem;->downloadType:I

    .line 55
    return-void
.end method
