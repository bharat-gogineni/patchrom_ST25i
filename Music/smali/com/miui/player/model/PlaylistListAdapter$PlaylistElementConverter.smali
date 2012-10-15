.class Lcom/miui/player/model/PlaylistListAdapter$PlaylistElementConverter;
.super Ljava/lang/Object;
.source "PlaylistListAdapter.java"

# interfaces
.implements Lcom/miui/player/model/SectionCursor$ElementConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistElementConverter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/database/Cursor;[Ljava/lang/Object;)Z
    .locals 3
    .parameter "cursor"
    .parameter "colVals"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    .line 30
    return v1
.end method
