.class Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DriverItem"
.end annotation


# static fields
.field static final TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

.field static final sFolderItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

.field static final sPlaylistItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;


# instance fields
.field public final mAllowRequestAsync:Z

.field public mCachedNum:I

.field public final mIcon:I

.field public final mMimeType:Ljava/lang/String;

.field public final mName:I

.field public final mPref:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 140
    const/4 v0, 0x6

    new-array v6, v0, [Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v1, 0x7f0900c5

    const v2, 0x7f020038

    const-string v3, "main_item_track"

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v6, v8

    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v1, 0x7f0900c2

    const v2, 0x7f020031

    const-string v3, "main_item_artist"

    const-string v5, "vnd.android.cursor.dir/artistalbum"

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v6, v4

    const/4 v7, 0x2

    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v1, 0x7f0900c3

    const v2, 0x7f020030

    const-string v3, "main_item_album"

    const-string v5, "vnd.android.cursor.dir/album"

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v6, v7

    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v1, 0x7f0900c4

    const v2, 0x7f020032

    const-string v3, "main_item_folder"

    const-string v5, "vnd.android.cursor.dir/folder"

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v6, v9

    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v1, 0x7f0900c6

    const v2, 0x7f020037

    const-string v5, "vnd.android.cursor.dir/playlist"

    move-object v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v6, v10

    const/4 v7, 0x5

    new-instance v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    const v1, 0x7f0900c0

    const v2, 0x7f020036

    const-string v5, "vnd.android.cursor.dir/online_category"

    move-object v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;-><init>(IILjava/lang/String;ZLjava/lang/String;)V

    aput-object v0, v6, v7

    sput-object v6, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    .line 149
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v0, v0, v9

    sput-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->sFolderItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    .line 150
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    aget-object v0, v0, v10

    sput-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->sPlaylistItem:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "icon"
    .parameter "pref"
    .parameter "allowAsync"
    .parameter "mimeType"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mCachedNum:I

    .line 77
    iput p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    .line 78
    iput p2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mIcon:I

    .line 79
    iput-object p3, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    .line 80
    iput-boolean p4, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mAllowRequestAsync:Z

    .line 81
    iput-object p5, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mMimeType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static indexOf(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)I
    .locals 5
    .parameter "item"

    .prologue
    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, index:I
    sget-object v0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->TABLE:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;

    .local v0, arr$:[Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 155
    .local v1, i:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    if-ne v1, p0, :cond_1

    .line 161
    .end local v1           #i:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    :cond_0
    return v3

    .line 158
    .restart local v1       #i:Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method init(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V
    .locals 4
    .parameter "context"
    .parameter "sp"
    .parameter "grid"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->indexOf(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)I

    move-result v0

    .line 86
    .local v0, index:I
    div-int/lit8 v2, v0, 0x3

    rem-int/lit8 v3, v0, 0x3

    invoke-virtual {p3, v2, v3}, Lcom/miui/player/ui/controller/GridController;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    .local v1, ll:Landroid/widget/LinearLayout;
    iget v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    const v3, 0x7f0900c0

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/miui/player/util/Utils;->isOnlineVaild()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const v2, 0x7f0c0070

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, p1, p3, v2}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->update(Landroid/content/Context;Lcom/miui/player/ui/controller/GridController;I)V

    goto :goto_0
.end method

.method requestNum(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .locals 5
    .parameter "context"
    .parameter "sp"

    .prologue
    const-wide/16 v3, -0x1

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, num:I
    iget v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mName:I

    packed-switch v2, :pswitch_data_0

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 134
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mPref:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1

    .line 115
    :pswitch_0
    invoke-static {p1, v3, v4}, Lcom/miui/player/provider/MediaProviderHelper;->getTrackCount(Landroid/content/Context;J)I

    move-result v1

    .line 116
    goto :goto_0

    .line 118
    :pswitch_1
    invoke-static {p1}, Lcom/miui/player/provider/MediaProviderHelper;->getArtistCount(Landroid/content/Context;)I

    move-result v1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {p1, v3, v4}, Lcom/miui/player/provider/MediaProviderHelper;->getAlbumCount(Landroid/content/Context;J)I

    move-result v1

    .line 122
    goto :goto_0

    .line 124
    :pswitch_3
    invoke-static {p1}, Lcom/miui/player/provider/PlaylistHelper;->getPlaylistCount(Landroid/content/Context;)I

    move-result v1

    .line 125
    goto :goto_0

    .line 127
    :pswitch_4
    invoke-static {p1}, Lcom/miui/player/util/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/util/FolderProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/player/util/FolderProvider;->getSelectedFolderCount(Landroid/content/Context;)I

    move-result v1

    .line 128
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900c2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method update(Landroid/content/Context;Lcom/miui/player/ui/controller/GridController;I)V
    .locals 7
    .parameter "context"
    .parameter "grid"
    .parameter "num"

    .prologue
    .line 104
    iput p3, p0, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->mCachedNum:I

    .line 105
    invoke-static {p0}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->indexOf(Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;)I

    move-result v0

    .line 106
    .local v0, index:I
    div-int/lit8 v3, v0, 0x3

    rem-int/lit8 v4, v0, 0x3

    invoke-virtual {p2, v3, v4}, Lcom/miui/player/ui/controller/GridController;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 107
    .local v1, ll:Landroid/widget/LinearLayout;
    const v3, 0x7f0900e4

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, numStr:Ljava/lang/String;
    const v3, 0x7f0c0072

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method updateByRequest(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/miui/player/ui/controller/GridController;)V
    .locals 1
    .parameter "context"
    .parameter "sp"
    .parameter "grid"

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->requestNum(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/miui/player/ui/MusicBrowserActivity$DriverItem;->update(Landroid/content/Context;Lcom/miui/player/ui/controller/GridController;I)V

    .line 101
    return-void
.end method
