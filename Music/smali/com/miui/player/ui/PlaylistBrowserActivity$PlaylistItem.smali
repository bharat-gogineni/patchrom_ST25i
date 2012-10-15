.class public Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistItem"
.end annotation


# instance fields
.field public final mIconResId:I

.field public final mItemId:I

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "itemId"
    .parameter "nameResId"
    .parameter "iconId"

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput p2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    .line 425
    iput p4, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mIconResId:I

    .line 426
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mName:Ljava/lang/String;

    .line 427
    return-void
.end method


# virtual methods
.method public toRecord()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 430
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 431
    .local v0, rec:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mItemId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 432
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$PlaylistItem;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 433
    return-object v0
.end method
