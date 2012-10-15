.class public Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;
.super Lcom/miui/player/model/MetaAdapter;
.source "MetaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/MetaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistMetaAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/player/model/MetaAdapter",
        "<",
        "Lcom/miui/player/plugin/onlinemusic2/Artist;",
        "Lcom/miui/player/plugin/onlinemusic2/ArtistList;",
        ">;"
    }
.end annotation


# static fields
.field private static sArtistListCache:Lcom/miui/player/plugin/onlinemusic2/ArtistList;


# instance fields
.field private final mDefaultAvatar:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->sArtistListCache:Lcom/miui/player/plugin/onlinemusic2/ArtistList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "displayCount"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/miui/player/model/MetaAdapter;-><init>(Landroid/content/Context;I)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 109
    sget-object v0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->sArtistListCache:Lcom/miui/player/plugin/onlinemusic2/ArtistList;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->sArtistListCache:Lcom/miui/player/plugin/onlinemusic2/ArtistList;

    invoke-virtual {p0, v0}, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->updateData(Lcom/miui/player/plugin/onlinemusic2/MetaList;)Z

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic2/Artist;)V
    .locals 6
    .parameter "v"
    .parameter "ar"

    .prologue
    const/16 v3, 0x8

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;

    .line 117
    .local v0, vh:Lcom/miui/player/model/MetaAdapter$ViewHolder;
    iget-object v1, v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mImageViewIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v1, v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mTextViewPrimary:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/miui/player/plugin/onlinemusic2/Artist;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;

    iget-object v2, v2, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mTextViewSecondary:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    sget-object v1, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    invoke-virtual {v1}, Lmiui/cache/RequestManager;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    new-instance v2, Lcom/miui/player/model/MetaAdapter$ImageRequest;

    iget-object v3, p2, Lcom/miui/player/plugin/onlinemusic2/Artist;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;

    iget-object v3, v3, Lcom/miui/player/plugin/onlinemusic2/Artist$ArtistOutline;->mURLAvatarBig:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mImageViewAlbum:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/player/model/MetaAdapter$ImageRequest;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lmiui/cache/RequestManager;->request(Lmiui/cache/RequestManager$Request;)Z

    .line 123
    :cond_0
    return-void
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    check-cast p2, Lcom/miui/player/plugin/onlinemusic2/Artist;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->bindView(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic2/Artist;)V

    return-void
.end method

.method protected onDataChanged()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    check-cast v0, Lcom/miui/player/plugin/onlinemusic2/ArtistList;

    sput-object v0, Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;->sArtistListCache:Lcom/miui/player/plugin/onlinemusic2/ArtistList;

    .line 130
    :cond_0
    return-void
.end method

.method protected onNewView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;

    .line 135
    .local v0, vh:Lcom/miui/player/model/MetaAdapter$ViewHolder;
    iget-object v1, v0, Lcom/miui/player/model/MetaAdapter$ViewHolder;->mImageViewMask:Landroid/widget/ImageView;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    return-void
.end method
