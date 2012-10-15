.class public Lcom/miui/player/meta/MediaFileManager$AlbumEditInfoFactory;
.super Ljava/lang/Object;
.source "MediaFileManager.java"

# interfaces
.implements Lcom/miui/player/meta/MediaFileManager$MediaEditInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/meta/MediaFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumEditInfoFactory"
.end annotation


# instance fields
.field private final mAlbum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "newAlbum"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/miui/player/meta/MediaFileManager$AlbumEditInfoFactory;->mAlbum:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;
    .locals 2
    .parameter "path"
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 105
    new-instance v0, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;

    iget-object v1, p0, Lcom/miui/player/meta/MediaFileManager$AlbumEditInfoFactory;->mAlbum:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/miui/player/meta/MediaFileManager$MediaEditInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
