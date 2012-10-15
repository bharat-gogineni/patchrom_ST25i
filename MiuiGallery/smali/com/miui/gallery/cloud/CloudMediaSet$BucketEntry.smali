.class public Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;
.super Ljava/lang/Object;
.source "CloudMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public groupId:I

.field private sortName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->sortName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->sortName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    if-nez v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 69
    check-cast v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;

    .line 70
    .local v0, entry:Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;
    iget v2, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    iget v3, v0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->groupId:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->displayName:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/gallery/cloud/CloudMediaSet$BucketEntry;->sortName:Ljava/lang/String;

    .line 58
    return-void
.end method
