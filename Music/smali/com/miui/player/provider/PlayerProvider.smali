.class public Lcom/miui/player/provider/PlayerProvider;
.super Landroid/content/ContentProvider;
.source "PlayerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;
    }
.end annotation


# static fields
.field public static INVALID_PLAYLIST_ID:I

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 407
    new-instance v0, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    invoke-direct {v0}, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;-><init>()V

    sput-object v0, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    .line 570
    sput v1, Lcom/miui/player/provider/PlayerProvider;->INVALID_PLAYLIST_ID:I

    .line 719
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 722
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 723
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 726
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 728
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 731
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map/#/members"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 733
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "playlists_audio_map/#/members/#"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 736
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "nowplaying_audio_view"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "nowplaying_audio_view/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 742
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "equalizer"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 743
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "equalizer/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 746
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "statistics"

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 747
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "statistics/#"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 750
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "search"

    const/16 v3, 0x74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 752
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "online_audio_detail"

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 753
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "online_audio_detail/#"

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 756
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "online_downloading"

    const/16 v3, 0x77

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 757
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v2, "online_downloading/#"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 759
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 401
    return-void
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V
    .locals 4
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 486
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :pswitch_1
    const-string v1, "playlists"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 491
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 500
    :goto_1
    return-void

    .line 418
    :pswitch_2
    const-string v1, "playlists"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    goto :goto_0

    .line 423
    :pswitch_3
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 427
    :pswitch_4
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    goto :goto_0

    .line 432
    :pswitch_5
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    goto/16 :goto_0

    .line 438
    :pswitch_6
    const-string v1, "playlists_audio_map"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    goto/16 :goto_0

    .line 447
    :pswitch_7
    const-string v1, "nowplaying_audio_view"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 451
    :pswitch_8
    const-string v1, "equalizer"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 455
    :pswitch_9
    const-string v1, "equalizer"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    goto/16 :goto_0

    .line 460
    :pswitch_a
    const-string v1, "statistics"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 464
    :pswitch_b
    const-string v1, "statistics"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    goto/16 :goto_0

    .line 469
    :pswitch_c
    const-string v1, "online_audio_detail"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 473
    :pswitch_d
    const-string v1, "online_audio_detail"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    goto/16 :goto_0

    .line 478
    :pswitch_e
    const-string v1, "online_downloading"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 481
    :pswitch_f
    const-string v1, "online_downloading"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    goto/16 :goto_0

    .line 495
    :cond_0
    iput-object p3, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 498
    :cond_1
    iput-object v0, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 412
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 24
    .parameter "uri"
    .parameter "valueArr"

    .prologue
    .line 226
    sget-object v20, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 228
    .local v13, match:I
    const/4 v14, 0x0

    .line 229
    .local v14, newUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 230
    .local v9, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v9, :cond_0

    .line 231
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown URI: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 233
    :cond_0
    invoke-virtual {v9}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 234
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    const v17, 0x1fffffff

    .line 236
    .local v17, startId:I
    packed-switch v13, :pswitch_data_0

    .line 395
    :pswitch_0
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid URI "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 238
    :pswitch_1
    move-object/from16 v3, p2

    .local v3, arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_5

    aget-object v8, v3, v11

    .line 239
    .local v8, cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_1

    .line 240
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 242
    .local v19, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    .line 243
    .local v6, currentTime:J
    const-string v20, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v20, "date_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    const-string v20, "playlists"

    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 248
    .local v15, rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_1

    .line 249
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 238
    .end local v6           #currentTime:J
    .end local v15           #rowId:J
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 258
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v17

    .line 260
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    move/from16 v18, v17

    .end local v17           #startId:I
    .local v18, startId:I
    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v8, v3, v11

    .line 261
    .restart local v8       #cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_14

    .line 262
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 264
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "audio_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_13

    .line 265
    const-string v20, "audio_id"

    add-int/lit8 v17, v18, 0x1

    .end local v18           #startId:I
    .restart local v17       #startId:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    :goto_2
    const-string v20, "date_added"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    .line 270
    .restart local v6       #currentTime:J
    const-string v20, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    .end local v6           #currentTime:J
    :cond_2
    const-string v20, "playlists_audio_map"

    const-string v21, "play_order"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 276
    .restart local v15       #rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_3

    .line 277
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 260
    .end local v15           #rowId:J
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v17

    .end local v17           #startId:I
    .restart local v18       #startId:I
    goto :goto_1

    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_4
    move/from16 v17, v18

    .line 398
    .end local v18           #startId:I
    .restart local v17       #startId:I
    :cond_5
    :goto_4
    return-object v14

    .line 286
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v17

    .line 287
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    move/from16 v18, v17

    .end local v17           #startId:I
    .restart local v18       #startId:I
    :goto_5
    if-ge v11, v12, :cond_8

    aget-object v8, v3, v11

    .line 288
    .restart local v8       #cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_12

    .line 289
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 291
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "audio_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 292
    const-string v20, "audio_id"

    add-int/lit8 v17, v18, 0x1

    .end local v18           #startId:I
    .restart local v17       #startId:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    :goto_6
    const-string v20, "date_added"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    .line 297
    .restart local v6       #currentTime:J
    const-string v20, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    .end local v6           #currentTime:J
    :cond_6
    const-string v21, "playlist_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v20, "playlists_audio_map"

    const-string v21, "play_order"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 305
    .restart local v15       #rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_7

    .line 306
    sget-object v20, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 287
    .end local v15           #rowId:J
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v17

    .end local v17           #startId:I
    .restart local v18       #startId:I
    goto :goto_5

    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_8
    move/from16 v17, v18

    .line 311
    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_4

    .line 314
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v17

    .line 315
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    move/from16 v18, v17

    .end local v17           #startId:I
    .restart local v18       #startId:I
    :goto_8
    if-ge v11, v12, :cond_b

    aget-object v8, v3, v11

    .line 316
    .restart local v8       #cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_10

    .line 317
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 319
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "audio_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 320
    const-string v20, "audio_id"

    add-int/lit8 v17, v18, 0x1

    .end local v18           #startId:I
    .restart local v17       #startId:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :goto_9
    const-string v20, "date_added"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v6, v20, v22

    .line 325
    .restart local v6       #currentTime:J
    const-string v20, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    .end local v6           #currentTime:J
    :cond_9
    const-string v20, "playlist_id"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v20, "playlists_audio_map"

    const-string v21, "play_order"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 334
    .restart local v15       #rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_a

    .line 335
    sget-object v20, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 315
    .end local v15           #rowId:J
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_a
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v17

    .end local v17           #startId:I
    .restart local v18       #startId:I
    goto :goto_8

    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_b
    move/from16 v17, v18

    .line 340
    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_4

    .line 343
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_5
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_b
    if-ge v11, v12, :cond_5

    aget-object v8, v3, v11

    .line 344
    .restart local v8       #cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_c

    .line 345
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 346
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "data_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string v20, "equalizer"

    const-string v21, "[0,0,0,0,0]"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 350
    .restart local v15       #rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_c

    .line 351
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 343
    .end local v15           #rowId:J
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 360
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_6
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_c
    if-ge v11, v12, :cond_5

    aget-object v8, v3, v11

    .line 361
    .restart local v8       #cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v8}, Lcom/miui/player/provider/PlayerProvider;->statisticAccumulate(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 360
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 367
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 368
    .local v4, current:J
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_d
    if-ge v11, v12, :cond_5

    aget-object v8, v3, v11

    .line 369
    .restart local v8       #cv:Landroid/content/ContentValues;
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 370
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "time_last_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v20, "online_audio_detail"

    const-string v21, "time_last_modified"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 373
    .restart local v15       #rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_d

    .line 374
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 368
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 381
    .end local v3           #arr$:[Landroid/content/ContentValues;
    .end local v4           #current:J
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v15           #rowId:J
    .end local v19           #values:Landroid/content/ContentValues;
    :pswitch_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 382
    .restart local v4       #current:J
    move-object/from16 v3, p2

    .restart local v3       #arr$:[Landroid/content/ContentValues;
    array-length v12, v3

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_e
    if-ge v11, v12, :cond_5

    aget-object v8, v3, v11

    .line 383
    .restart local v8       #cv:Landroid/content/ContentValues;
    new-instance v19, Landroid/content/ContentValues;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 384
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "time_last_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string v20, "online_downloading"

    const-string v21, "time_last_modified"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 387
    .restart local v15       #rowId:J
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_e

    .line 388
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 382
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .end local v4           #current:J
    .end local v15           #rowId:J
    .end local v17           #startId:I
    .restart local v18       #startId:I
    :cond_f
    move/from16 v17, v18

    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_9

    .end local v17           #startId:I
    .end local v19           #values:Landroid/content/ContentValues;
    .restart local v18       #startId:I
    :cond_10
    move/from16 v17, v18

    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_a

    .end local v17           #startId:I
    .restart local v18       #startId:I
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_11
    move/from16 v17, v18

    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_6

    .end local v17           #startId:I
    .end local v19           #values:Landroid/content/ContentValues;
    .restart local v18       #startId:I
    :cond_12
    move/from16 v17, v18

    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_7

    .end local v17           #startId:I
    .restart local v18       #startId:I
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_13
    move/from16 v17, v18

    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_2

    .end local v17           #startId:I
    .end local v19           #values:Landroid/content/ContentValues;
    .restart local v18       #startId:I
    :cond_14
    move/from16 v17, v18

    .end local v18           #startId:I
    .restart local v17       #startId:I
    goto/16 :goto_3

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static isOnlineAudio(J)Z
    .locals 2
    .parameter "audioId"

    .prologue
    .line 567
    const-wide/32 v0, 0x1fffffff

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final moveItem(Landroid/content/ContentResolver;JII)Z
    .locals 6
    .parameter "res"
    .parameter "playlistId"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    .line 574
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "move"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 579
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "play_order"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 6
    .parameter "db"
    .parameter "playlistId"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 585
    if-ne p4, p5, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 623
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, numlines:I
    :try_start_0
    const-string v3, "playlists_audio_map"

    .line 592
    .local v3, table:Ljava/lang/String;
    const-string v1, "play_order"

    .line 593
    .local v1, playOrder:Ljava/lang/String;
    const-string v2, "playlist_id"

    .line 595
    .local v2, playlist:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    if-ge p4, p5, :cond_1

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order=(play_order-1) WHERE play_order<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "play_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 607
    sub-int v4, p5, p4

    add-int/lit8 v0, v4, 0x1

    .line 615
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "play_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=-1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 609
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE playlists_audio_map SET play_order=(play_order+1) WHERE play_order>="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "play_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "playlist_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    sub-int v4, p4, p5

    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_1

    .line 623
    .end local v1           #playOrder:Ljava/lang/String;
    .end local v2           #playlist:Ljava/lang/String;
    .end local v3           #table:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12
    .parameter "db"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 202
    const-string v8, "max(audio_id)"

    .line 205
    .local v8, MAX_AUDIO_ID:Ljava/lang/String;
    const-string v1, "playlists_audio_map"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "max(audio_id)"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 209
    .local v10, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 211
    .local v9, base:I
    if-eqz v10, :cond_0

    .line 212
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 213
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 214
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_0
    const v0, 0x1fffffff

    if-ge v9, v0, :cond_1

    .line 218
    const v9, 0x1fffffff

    .line 221
    :cond_1
    return v9
.end method

.method private statisticAccumulate(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 628
    const-string v3, "audio_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 630
    .local v11, audioId:J
    const-string v4, "statistics"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "played_count"

    aput-object v6, v5, v3

    const-string v6, "audio_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "audio_id"

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 637
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 638
    const/4 v3, 0x0

    .line 680
    :goto_0
    return-object v3

    .line 643
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 644
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 645
    .local v14, id:J
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 650
    .local v16, lastPlayCount:I
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 653
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-ltz v3, :cond_4

    .line 655
    const-string v3, "data_last_modified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 656
    const-string v3, "data_last_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 658
    :cond_1
    const-string v3, "played_count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 659
    const-string v3, "played_count"

    add-int/lit8 v4, v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    :cond_2
    const-string v3, "statistics"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v17, v0

    .line 680
    .local v17, rowId:J
    :goto_2
    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 647
    .end local v14           #id:J
    .end local v16           #lastPlayCount:I
    .end local v17           #rowId:J
    :cond_3
    const-wide/16 v14, -0x1

    .line 648
    .restart local v14       #id:J
    const/16 v16, 0x0

    .restart local v16       #lastPlayCount:I
    goto :goto_1

    .line 667
    :cond_4
    const-string v3, "played_count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 668
    const-string v3, "played_count"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    :cond_5
    const-string v3, "data_added"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 671
    const-string v3, "data_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 673
    :cond_6
    const-string v3, "data_last_modified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 674
    const-string v3, "data_last_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 677
    :cond_7
    const-string v3, "statistics"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    .restart local v17       #rowId:J
    goto :goto_2
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 173
    .local v0, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v0, :cond_0

    .line 174
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 177
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, numInserted:I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/provider/PlayerProvider;->insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 181
    array-length v2, p2

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 186
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 187
    return v2

    .line 184
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 505
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 507
    .local v3, match:I
    iget-object v1, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 508
    .local v1, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v1, :cond_0

    .line 509
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    :cond_0
    invoke-virtual {v1}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 513
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    monitor-enter v5

    .line 514
    :try_start_0
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/miui/player/provider/PlayerProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V

    .line 516
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v4, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 519
    .local v0, count:I
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 520
    monitor-exit v5

    .line 522
    return v0

    .line 520
    .end local v0           #count:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 145
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.google.miui"

    .line 164
    :goto_0
    return-object v0

    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.miui"

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 192
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/miui/player/provider/PlayerProvider;->insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 198
    :cond_0
    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 30
    new-instance v0, Lcom/miui/player/provider/PlayerDBHelper;

    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com_miui_player.db"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/provider/PlayerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 31
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 37
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 39
    .local v13, table:I
    const/4 v5, 0x0

    .line 40
    .local v5, groupBy:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 41
    .local v10, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v10, :cond_1

    .line 42
    const/4 v9, 0x0

    .line 140
    :cond_0
    :goto_0
    return-object v9

    .line 44
    :cond_1
    invoke-virtual {v10}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 45
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v12}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 46
    .local v12, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, limit:Ljava/lang/String;
    const/4 v9, 0x0

    .line 49
    .local v9, cursor:Landroid/database/Cursor;
    packed-switch v13, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_0
    const-string v0, "playlists"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 133
    :goto_1
    const/16 v0, 0x74

    if-eq v13, v0, :cond_0

    .line 134
    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 135
    if-eqz v9, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v9, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-string v0, "playlists"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    :pswitch_2
    const-string v0, "playlists_audio_map"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :pswitch_3
    const-string v0, "playlists_audio_map"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :pswitch_4
    const-string v0, "playlists_audio_map"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 76
    :pswitch_5
    const-string v0, "playlists_audio_map"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 84
    :pswitch_6
    const-string v0, "nowplaying_audio_view"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    :pswitch_7
    const-string v0, "nowplaying_audio_view"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 94
    :pswitch_8
    const-string v0, "equalizer"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    :pswitch_9
    const-string v0, "equalizer"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 102
    :pswitch_a
    const-string v0, "statistics"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    :pswitch_b
    const-string v0, "statistics"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 110
    :pswitch_c
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/player/provider/MusicSearch;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    goto/16 :goto_1

    .line 114
    :pswitch_d
    const-string v0, "online_audio_detail"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    :pswitch_e
    const-string v0, "online_audio_detail"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 122
    :pswitch_f
    const-string v0, "online_downloading"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :pswitch_10
    const-string v0, "online_downloading"

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 527
    const/4 v9, 0x0

    .line 529
    .local v9, count:I
    sget-object v3, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 530
    .local v12, match:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 531
    .local v10, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v10, :cond_0

    .line 532
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    :cond_0
    invoke-virtual {v10}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 536
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v16, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    monitor-enter v16

    .line 537
    const/4 v13, 0x0

    .line 538
    .local v13, move:Z
    const/16 v3, 0x6d

    if-ne v12, v3, :cond_1

    .line 539
    :try_start_0
    const-string v3, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 540
    .local v14, moveit:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 541
    const/4 v13, 0x1

    .line 542
    const-string v11, "play_order"

    .line 543
    .local v11, key:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 545
    .local v8, newpos:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    .line 546
    .local v15, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 547
    .local v5, playlist:J
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .local v7, oldpos:I
    move-object/from16 v3, p0

    .line 548
    invoke-direct/range {v3 .. v8}, Lcom/miui/player/provider/PlayerProvider;->movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v9

    .line 553
    .end local v5           #playlist:J
    .end local v7           #oldpos:I
    .end local v8           #newpos:I
    .end local v11           #key:Ljava/lang/String;
    .end local v14           #moveit:Ljava/lang/String;
    .end local v15           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-nez v13, :cond_2

    .line 554
    sget-object v3, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/miui/player/provider/PlayerProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V

    .line 555
    sget-object v3, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v3, v3, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v17, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, p4

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 559
    :cond_2
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-lez v9, :cond_3

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 563
    :cond_3
    return v9

    .line 559
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
