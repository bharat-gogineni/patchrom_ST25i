.class Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapterBase.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;Lcom/miui/gallery/app/AlbumSetDataAdapterBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapterBase;

    iget-object v0, v0, Lcom/miui/gallery/app/AlbumSetDataAdapterBase;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ReloadTask;->notifyDirty()V

    .line 201
    return-void
.end method
