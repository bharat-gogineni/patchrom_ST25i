.class public Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
.super Lmiui/app/resourcebrowser/service/local/ZipResourceCache;
.source "ThemeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeInfoCacheNode"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mClockPhotoSize:Ljava/lang/String;

.field private mCoverThumbnailPath:Ljava/lang/String;

.field private previewIndex:[I

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;

.field private thumbnailIndex:[I

.field private tmpPreview:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tmpThumbnail:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->this$0:Lcom/android/thememanager/ThemeInfo;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/service/local/ZipResourceCache;-><init>()V

    .line 709
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    .line 710
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    .line 718
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    .line 719
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    return-void
.end method

.method private buildIndex()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 767
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aput v2, v1, v0

    .line 775
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aput v2, v1, v0

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_2
    iput-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    .line 778
    iput-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    .line 779
    return-void
.end method

.method private getCacheImage(JZZ)Ljava/util/ArrayList;
    .locals 11
    .parameter "flag"
    .parameter "forThumbnail"
    .parameter "loadCoverThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v6, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    .line 814
    .local v3, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 815
    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 819
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v0, v7, v2

    .line 822
    .local v0, componentFlag:J
    const-wide/16 v7, 0x10

    cmp-long v7, p1, v7

    if-eqz v7, :cond_3

    const-wide/16 v7, 0x10

    cmp-long v7, v0, v7

    if-nez v7, :cond_3

    if-nez p3, :cond_3

    .line 818
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 812
    .end local v0           #componentFlag:J
    .end local v2           #i:I
    .end local v3           #imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    goto :goto_0

    .line 827
    .restart local v0       #componentFlag:J
    .restart local v2       #i:I
    .restart local v3       #imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    and-long v7, p1, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 828
    invoke-direct {p0, v0, v1, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheIndex(JZ)Landroid/util/Pair;

    move-result-object v4

    .line 829
    .local v4, index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, j:I
    :goto_2
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 830
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 835
    .end local v0           #componentFlag:J
    .end local v4           #index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #j:I
    :cond_4
    return-object v6
.end method

.method private getCacheIndex(JZ)Landroid/util/Pair;
    .locals 5
    .parameter "flag"
    .parameter "forThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getIndexOfFlagInStoredOrder(J)I

    move-result v1

    .line 787
    .local v1, startIndex:I
    add-int/lit8 v0, v1, 0x1

    .line 789
    .local v0, endIndex:I
    if-ltz v1, :cond_2

    .line 790
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    aget v1, v2, v1

    .line 791
    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    aget v0, v2, v0

    .line 796
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 790
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    aget v1, v2, v1

    goto :goto_0

    .line 791
    :cond_1
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    aget v0, v2, v0

    goto :goto_1

    .line 793
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getIndexOfFlagInStoredOrder(J)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 800
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 801
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 805
    .end local v0           #i:I
    :goto_1
    return v0

    .line 800
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 805
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->readCache(Ljava/io/ObjectInputStream;)V

    .line 747
    return-void
.end method

.method private reduceThumbnail(Ljava/util/ArrayList;J)V
    .locals 3
    .parameter
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 755
    const-wide/16 v1, 0x20

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 756
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 757
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 759
    .end local v0           #i:I
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 760
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 764
    :cond_1
    return-void
.end method

.method private setCacheImage(JLjava/util/ArrayList;Z)V
    .locals 2
    .parameter "flag"
    .parameter
    .parameter "forThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getIndexOfFlagInStoredOrder(J)I

    move-result v0

    .line 840
    .local v0, storedOrder:I
    if-ltz v0, :cond_0

    .line 841
    if-eqz p4, :cond_1

    .line 842
    invoke-direct {p0, p3, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->reduceThumbnail(Ljava/util/ArrayList;J)V

    .line 843
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    aput-object p3, v1, v0

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    aput-object p3, v1, v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->writeCache(Ljava/io/ObjectOutputStream;)V

    .line 743
    return-void
.end method


# virtual methods
.method public containClockPhotoFrameSize(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "size"
    .parameter "forClock"

    .prologue
    .line 898
    if-eqz p2, :cond_1

    const-string v0, "c"

    .line 899
    .local v0, idPrefix:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 900
    const-string v1, ""

    iput-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 898
    .end local v0           #idPrefix:Ljava/lang/String;
    :cond_1
    const-string v0, "p"

    goto :goto_0

    .line 902
    .restart local v0       #idPrefix:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public finishCached()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->buildIndex()V

    .line 783
    return-void
.end method

.method public getCacheImageNumber(JZ)I
    .locals 9
    .parameter "flag"
    .parameter "forThumbnail"

    .prologue
    .line 871
    const/4 v4, 0x0

    .line 872
    .local v4, sum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 873
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v0, v5, v2

    .line 874
    .local v0, componentFlag:J
    and-long v5, p1, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 875
    invoke-direct {p0, v0, v1, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheIndex(JZ)Landroid/util/Pair;

    move-result-object v3

    .line 876
    .local v3, index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v6, v5

    add-int/2addr v4, v5

    .line 872
    .end local v3           #index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 879
    .end local v0           #componentFlag:J
    :cond_1
    return v4
.end method

.method public getCachePreview(J)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 855
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImage(JZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCacheSize()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 916
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 917
    .local v1, previewCnt:I
    :goto_0
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 918
    .local v2, thumbnailCnt:I
    :goto_1
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 919
    .local v0, coverCnt:I
    :goto_2
    add-int v3, v1, v2

    add-int/2addr v3, v0

    return v3

    .end local v0           #coverCnt:I
    .end local v1           #previewCnt:I
    .end local v2           #thumbnailCnt:I
    :cond_0
    move v1, v3

    .line 916
    goto :goto_0

    .restart local v1       #previewCnt:I
    :cond_1
    move v2, v3

    .line 917
    goto :goto_1

    .restart local v2       #thumbnailCnt:I
    :cond_2
    move v0, v3

    .line 918
    goto :goto_2
.end method

.method public getCacheThumbnail(JZ)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .parameter "loadCoverThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImage(JZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getClockPhotoFrameSizeList(Z)Ljava/util/ArrayList;
    .locals 6
    .parameter "forClock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 906
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 908
    .local v4, size:Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->containClockPhotoFrameSize(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 909
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    .end local v4           #size:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method protected readImageInformation(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 734
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/service/local/ZipResourceCache;->readImageInformation(Ljava/io/ObjectInputStream;)V

    .line 735
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    .line 736
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    .line 737
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    .line 738
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 739
    return-void
.end method

.method public setCachePreview(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 867
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheImage(JLjava/util/ArrayList;Z)V

    .line 868
    return-void
.end method

.method public setCacheThumbnail(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheImage(JLjava/util/ArrayList;Z)V

    .line 860
    return-void
.end method

.method public setClockPhotoFrameSize(Ljava/util/List;Z)V
    .locals 5
    .parameter
    .parameter "forClock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, sizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    const-string v2, "c"

    .line 885
    .local v2, idPrefix:Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 884
    .end local v1           #i:I
    .end local v2           #idPrefix:Ljava/lang/String;
    :cond_1
    const-string v2, "p"

    goto :goto_0

    .line 891
    .restart local v1       #i:I
    .restart local v2       #idPrefix:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 892
    const-string v3, ""

    iput-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 894
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    .line 895
    return-void
.end method

.method public setCoverThumbnail(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    .line 864
    return-void
.end method

.method protected writeImageInformation(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/service/local/ZipResourceCache;->writeImageInformation(Ljava/io/ObjectOutputStream;)V

    .line 725
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 727
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mClockPhotoSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 729
    return-void
.end method
