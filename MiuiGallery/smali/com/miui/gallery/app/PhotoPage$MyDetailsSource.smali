.class Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/miui/gallery/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/app/PhotoPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1055
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;-><init>(Lcom/miui/gallery/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 0
    .parameter "indexHint"

    .prologue
    .line 1070
    iput p1, p0, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;->mIndex:I

    .line 1071
    return p1
.end method

.method public getDetails()Lcom/miui/gallery/data/MediaDetails;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaItem;->getDetails()Lcom/miui/gallery/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MyDetailsSource;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->getPhotoCount()I
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$1200(Lcom/miui/gallery/app/PhotoPage;)I

    move-result v0

    return v0
.end method
