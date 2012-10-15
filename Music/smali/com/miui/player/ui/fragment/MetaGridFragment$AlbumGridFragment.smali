.class public Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;
.super Lcom/miui/player/ui/fragment/MetaGridFragment;
.source "MetaGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/MetaGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumGridFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/MetaGridFragment",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Album;",
        "Lcom/miui/player/plugin/onlinemusic2/AlbumList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/miui/player/model/MetaAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/player/model/MetaAdapter",
            "<",
            "Lcom/miui/player/plugin/onlinemusic2/Album;",
            "Lcom/miui/player/plugin/onlinemusic2/AlbumList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/miui/player/model/MetaAdapter$AlbumMetaAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/MetaAdapter$AlbumMetaAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getLoadFailedId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f090087

    return v0
.end method

.method protected getLoadInProcessId()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f090086

    return v0
.end method

.method protected loadInBackground()Lcom/miui/player/plugin/onlinemusic2/AlbumList;
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 52
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/miui/player/network/OnlineMusicProxy;->requestAlbumList(Landroid/content/Context;II)Lcom/miui/player/plugin/onlinemusic2/AlbumList;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic loadInBackground()Lcom/miui/player/plugin/onlinemusic2/MetaList;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/AlbumList;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v2, p3}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Album;

    .line 74
    .local v0, album:Lcom/miui/player/plugin/onlinemusic2/Album;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/preview_track"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "audio_list_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v2, "audio_list_key"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Album;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "audio_list_description"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Album;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Album$AlbumOutline;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/fragment/MetaGridFragment$AlbumGridFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
