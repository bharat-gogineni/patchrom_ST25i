.class Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;
.super Ljava/lang/Object;
.source "HomeRecentAlbumDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;

    #getter for: Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->mReloadTask:Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;->access$300(Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter;)Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/HomeRecentAlbumDataAdapter$ReloadTask;->notifyDirty()V

    .line 216
    return-void
.end method
