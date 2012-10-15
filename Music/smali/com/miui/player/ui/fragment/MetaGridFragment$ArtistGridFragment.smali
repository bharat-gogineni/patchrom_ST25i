.class public Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;
.super Lcom/miui/player/ui/fragment/MetaGridFragment;
.source "MetaGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/MetaGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistGridFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/ui/fragment/MetaGridFragment",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Artist;",
        "Lcom/miui/player/plugin/onlinemusic2/ArtistList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
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
            "Lcom/miui/player/plugin/onlinemusic2/Artist;",
            "Lcom/miui/player/plugin/onlinemusic2/ArtistList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getLoadFailedId()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f090085

    return v0
.end method

.method protected getLoadInProcessId()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f090084

    return v0
.end method

.method protected loadInBackground()Lcom/miui/player/plugin/onlinemusic2/ArtistList;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 94
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/network/OnlineMusicProxy;->requestArtistList(Landroid/content/Context;III)Lcom/miui/player/plugin/onlinemusic2/ArtistList;

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
    .line 84
    invoke-virtual {p0}, Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;->loadInBackground()Lcom/miui/player/plugin/onlinemusic2/ArtistList;

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
    .line 111
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;->mAdapter:Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;

    invoke-virtual {v2, p3}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/Artist;

    .line 116
    .local v0, artist:Lcom/miui/player/plugin/onlinemusic2/Artist;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.BROWSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/preview_track"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "audio_list_type"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v2, "audio_list_key"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Artist;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "audio_list_description"

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic2/Artist;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/fragment/MetaGridFragment$ArtistGridFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
