.class public abstract Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;
.super Ljava/lang/Object;
.source "AsyncLoadTask.java"


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->mId:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/AsyncLoadTask;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract load()V
.end method

.method public postResult()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
