.class Lcom/miui/player/model/AlbumListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field album:Landroid/widget/ImageView;

.field albumMask:Landroid/widget/ImageView;

.field playIndicator:Landroid/widget/ImageView;

.field primary:Landroid/widget/TextView;

.field secondary:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
