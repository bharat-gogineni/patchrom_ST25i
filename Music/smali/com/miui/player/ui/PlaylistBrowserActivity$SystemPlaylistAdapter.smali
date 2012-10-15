.class final Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemPlaylistAdapter"
.end annotation


# instance fields
.field final mFactory:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/PlaylistBrowserActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 636
    iput-object p1, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 637
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 638
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 652
    neg-int v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 657
    move-object v2, p2

    .line 658
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 659
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v4, 0x7f03002e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 662
    :cond_0
    const v3, 0x7f0c007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/miui/player/ui/PlaylistBrowserActivity;->SYS_PLAYLIST_NAMES:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 663
    const v3, 0x7f0c0091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 664
    .local v1, numText:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    invoke-virtual {p0, p1}, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getPresetRecordCount(I)I

    move-result v0

    .line 667
    .local v0, num:I
    iget-object v3, p0, Lcom/miui/player/ui/PlaylistBrowserActivity$SystemPlaylistAdapter;->this$0:Lcom/miui/player/ui/PlaylistBrowserActivity;

    const v4, 0x7f0900e5

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    return-object v2
.end method
