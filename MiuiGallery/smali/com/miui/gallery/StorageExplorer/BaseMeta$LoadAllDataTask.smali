.class public Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;
.super Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
.source "BaseMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/StorageExplorer/BaseMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LoadAllDataTask"
.end annotation


# instance fields
.field private mListener:Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;

.field private mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V
    .locals 1
    .parameter "meta"
    .parameter "listener"
    .parameter "view"

    .prologue
    .line 308
    iget-object v0, p1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;-><init>(Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 310
    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mListener:Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;

    .line 311
    iput-object p3, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mListener:Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mMeta:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    invoke-virtual {v0}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllData()V

    .line 328
    return-void
.end method

.method public postResult()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mListener:Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;->mView:Landroid/view/View;

    new-instance v1, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;

    invoke-direct {v1, p0}, Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask$1;-><init>(Lcom/miui/gallery/StorageExplorer/BaseMeta$LoadAllDataTask;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 323
    :cond_0
    return-void
.end method
