.class public Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;
.super Ljava/lang/Object;
.source "LocalAlbum.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/AppHelper$DeleteDatabaseInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocalAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteDBAlbum"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/LocalAlbum;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/data/LocalAlbum;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    iget-object v0, v0, Lcom/miui/gallery/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    iget-object v1, v1, Lcom/miui/gallery/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    iget-object v2, v2, Lcom/miui/gallery/data/LocalAlbum;->mSentenceGetter:Lcom/miui/gallery/data/SqlSentenceGetter;

    invoke-virtual {v2}, Lcom/miui/gallery/data/SqlSentenceGetter;->getWhereClauseAll()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/data/LocalAlbum$DeleteDBAlbum;->this$0:Lcom/miui/gallery/data/LocalAlbum;

    invoke-virtual {v3}, Lcom/miui/gallery/data/LocalAlbum;->getWhereArgsAll()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 287
    return-void
.end method
