.class Lcom/miui/gallery/app/HomePage$MyDetailsSource;
.super Ljava/lang/Object;
.source "HomePage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/app/HomePage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/HomePage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iput p1, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->mIndex:I

    .line 1074
    :cond_0
    iget v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->mIndex:I

    .line 1070
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 3

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v1

    iget v2, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->getMediaItem(I)Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 1079
    .local v0, item:Lcom/miui/gallery/data/MediaObject;
    if-eqz v0, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$1200(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HighlightDrawer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 1081
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v1

    .line 1083
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mCameraDataAdapter:Lcom/miui/gallery/app/HomeCameraDataAdapter;
    invoke-static {v0}, Lcom/miui/gallery/app/HomePage;->access$1500(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomeCameraDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeCameraDataAdapter;->size()I

    move-result v0

    return v0
.end method
