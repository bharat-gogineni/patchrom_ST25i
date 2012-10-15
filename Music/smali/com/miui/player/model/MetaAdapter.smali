.class public abstract Lcom/miui/player/model/MetaAdapter;
.super Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;
.source "MetaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/MetaAdapter$ImageRequest;,
        Lcom/miui/player/model/MetaAdapter$AlbumMetaAdapter;,
        Lcom/miui/player/model/MetaAdapter$ArtistMetaAdapter;,
        Lcom/miui/player/model/MetaAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "D:",
        "Lcom/miui/player/plugin/onlinemusic2/MetaList",
        "<TE;>;>",
        "Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter",
        "<TE;TD;>;"
    }
.end annotation


# static fields
.field static sAlbumHeight:I

.field static sAlbumWidth:I

.field static sRequestManager:Lmiui/cache/RequestManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/RequestManager",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayCount:I

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    .line 87
    sput v1, Lcom/miui/player/model/MetaAdapter;->sAlbumWidth:I

    .line 88
    sput v1, Lcom/miui/player/model/MetaAdapter;->sAlbumHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "displayCount"

    .prologue
    .line 34
    .local p0, this:Lcom/miui/player/model/MetaAdapter;,"Lcom/miui/player/model/MetaAdapter<TE;TD;>;"
    invoke-direct {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;-><init>()V

    .line 35
    iput p2, p0, Lcom/miui/player/model/MetaAdapter;->mDisplayCount:I

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/model/MetaAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    sget-object v1, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    if-nez v1, :cond_0

    .line 38
    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/cache/RequestManager;->create(ILjava/lang/Object;)Lmiui/cache/RequestManager;

    move-result-object v1

    sput-object v1, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    .line 39
    sget-object v1, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/cache/RequestManager;->setup(Z)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/miui/player/model/MetaAdapter;->sAlbumWidth:I

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sput v1, Lcom/miui/player/model/MetaAdapter;->sAlbumHeight:I

    .line 46
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static quit()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/cache/RequestManager;->quit(Lmiui/cache/RequestManager$Detacher;)V

    .line 100
    :cond_0
    return-void
.end method

.method public static setup()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/miui/player/model/MetaAdapter;->sRequestManager:Lmiui/cache/RequestManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/cache/RequestManager;->setup(Z)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TE;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 50
    .local p0, this:Lcom/miui/player/model/MetaAdapter;,"Lcom/miui/player/model/MetaAdapter<TE;TD;>;"
    invoke-super {p0}, Lcom/miui/player/ui/fragment/AsyncTabFragment$DataAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/miui/player/model/MetaAdapter;->mDisplayCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    .local p0, this:Lcom/miui/player/model/MetaAdapter;,"Lcom/miui/player/model/MetaAdapter<TE;TD;>;"
    move-object v0, p2

    .line 56
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/miui/player/model/MetaAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/miui/player/model/MetaAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/miui/player/model/MetaAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/player/model/MetaAdapter;->onNewView(Landroid/view/View;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/miui/player/model/MetaAdapter;->mData:Lcom/miui/player/plugin/onlinemusic2/MetaList;

    invoke-virtual {v1, p1}, Lcom/miui/player/plugin/onlinemusic2/MetaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/model/MetaAdapter;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    .line 64
    return-object v0
.end method

.method protected abstract onNewView(Landroid/view/View;)V
.end method
