.class public Lcom/miui/player/ui/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/player/ui/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MusicPicker$QueryHandler;,
        Lcom/miui/player/ui/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final CURSOR_COLS:[Ljava/lang/String;

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/miui/player/ui/MusicPicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;

.field mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/ui/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/player/ui/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 117
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/miui/player/ui/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/miui/player/ui/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 120
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/miui/player/ui/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 74
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/MusicPicker;->mSortMode:I

    .line 162
    iput-wide v1, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedId:J

    .line 171
    iput-wide v1, p0, Lcom/miui/player/ui/MusicPicker;->mPlayingId:J

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/player/ui/MusicPicker;->mStreamType:I

    .line 780
    new-instance v0, Lcom/miui/player/ui/MusicPicker$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MusicPicker$1;-><init>(Lcom/miui/player/ui/MusicPicker;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/MusicPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/player/ui/MusicPicker;->makeErrorView()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/MusicPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/player/ui/MusicPicker;->makeCommitView()V

    return-void
.end method

.method private static getStreamType(I)I
    .locals 1
    .parameter "ringtoneType"

    .prologue
    .line 511
    packed-switch p0, :pswitch_data_0

    .line 519
    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 513
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 516
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeCommitView()V
    .locals 4

    .prologue
    .line 494
    const v1, 0x6030020

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, commitView:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    const v1, 0x60b002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mOkayButton:Landroid/view/View;

    .line 498
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    const v1, 0x60b002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mCancelButton:Landroid/view/View;

    .line 500
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 503
    return-void
.end method

.method private makeErrorView()V
    .locals 3

    .prologue
    .line 506
    const v1, 0x7f030036

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 507
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 508
    return-void
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    .line 644
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MusicPicker;->mQueryHandler:Lcom/miui/player/ui/MusicPicker$QueryHandler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 646
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "title != \'\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const/4 v5, 0x0

    .line 651
    .local v5, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 652
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 653
    .local v16, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    new-array v5, v1, [Ljava/lang/String;

    .line 654
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v14

    .line 655
    .local v14, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 656
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v15, v1, :cond_0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v16, v15

    invoke-static {v2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    .line 656
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 659
    :cond_0
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v15, v1, :cond_1

    .line 660
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v1, "artist_key||"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v1, "album_key||"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, "title_key LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 671
    .end local v14           #col:Ljava/text/Collator;
    .end local v15           #i:I
    .end local v16           #searchWords:[Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 673
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/player/ui/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v3, Lcom/miui/player/ui/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/player/ui/MusicPicker;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 683
    :goto_2
    return-object v1

    .line 678
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 679
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/player/ui/MusicPicker;->mQueryHandler:Lcom/miui/player/ui/MusicPicker$QueryHandler;

    const/16 v7, 0x2a

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/miui/player/ui/MusicPicker;->mBaseUri:Landroid/net/Uri;

    sget-object v10, Lcom/miui/player/ui/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/player/ui/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v12, v5

    invoke-virtual/range {v6 .. v13}, Lcom/miui/player/ui/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    .line 675
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method fileNotFound(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 805
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method makeListShown()V
    .locals 2

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/miui/player/ui/MusicPicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MusicPicker;->mListShown:Z

    .line 627
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 629
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .parameter "focusChange"

    .prologue
    .line 791
    packed-switch p1, :pswitch_data_0

    .line 801
    :goto_0
    return-void

    .line 795
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->stopMediaPlayer(Z)V

    goto :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mOkayButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 754
    iget-wide v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 755
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v3, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 757
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->finish()V

    .line 765
    :goto_0
    return-void

    .line 760
    :cond_0
    const v0, 0x7f090011

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->finish()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 730
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 731
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 732
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 733
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/player/ui/MusicPicker;->mPlayingId:J

    .line 734
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 735
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 736
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 737
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 401
    const/4 v11, 0x1

    .line 402
    .local v11, sortMode:I
    const/4 v12, -0x1

    .line 403
    .local v12, type:I
    if-nez p1, :cond_4

    .line 404
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 406
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 417
    :goto_0
    if-ltz v12, :cond_0

    .line 418
    invoke-static {v12}, Lcom/miui/player/ui/MusicPicker;->getStreamType(I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/MusicPicker;->mStreamType:I

    .line 421
    :cond_0
    iget v0, p0, Lcom/miui/player/ui/MusicPicker;->mStreamType:I

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->setVolumeControlStream(I)V

    .line 423
    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 434
    :cond_1
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->setContentView(I)V

    .line 435
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 437
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 439
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 441
    .local v3, listView:Landroid/widget/ListView;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 443
    new-instance v0, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    const v4, 0x7f030024

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v6, v1, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;-><init>(Lcom/miui/player/ui/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    .line 446
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 451
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 453
    new-instance v0, Lcom/miui/player/ui/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/miui/player/ui/MusicPicker$QueryHandler;-><init>(Lcom/miui/player/ui/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mQueryHandler:Lcom/miui/player/ui/MusicPicker$QueryHandler;

    .line 455
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mListContainer:Landroid/view/View;

    .line 459
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 461
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 462
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 463
    .local v9, idx:I
    if-ltz v9, :cond_2

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 466
    :cond_2
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 467
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 474
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedId:J

    .line 488
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #idx:I
    .end local v10           #path:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0, v11}, Lcom/miui/player/ui/MusicPicker;->setSortMode(I)Z

    .line 490
    invoke-direct {p0}, Lcom/miui/player/ui/MusicPicker;->makeCommitView()V

    .line 491
    .end local v3           #listView:Landroid/widget/ListView;
    :goto_2
    return-void

    .line 408
    :cond_4
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 411
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 412
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/MusicPicker;->mListHasFocus:Z

    .line 413
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 414
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_0

    .line 426
    :cond_5
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 427
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 428
    const-string v0, "RingtonePicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->finish()V

    goto :goto_2

    .line 479
    .restart local v3       #listView:Landroid/widget/ListView;
    .restart local v7       #baseSelectedUri:Landroid/net/Uri;
    .restart local v8       #builder:Landroid/net/Uri$Builder;
    .restart local v9       #idx:I
    .restart local v10       #path:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v4, "_data"

    invoke-static {p0, v0, v1, v2, v4}, Lcom/miui/player/util/SqlUtils;->translateToContentUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 482
    .local v13, uri:Landroid/net/Uri;
    if-eqz v13, :cond_3

    .line 483
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedId:J

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 540
    const v0, 0x7f09006a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 541
    const/4 v0, 0x2

    const v1, 0x7f09006b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 542
    const/4 v0, 0x3

    const v1, 0x7f09006c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 543
    return v3
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 769
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_0
    return-void

    .line 771
    :pswitch_0
    if-nez p2, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->finish()V

    goto :goto_0

    .line 774
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 694
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 695
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->stopMediaPlayer(Z)V

    .line 572
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MusicPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 527
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 561
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/MusicPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 551
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    const-string v0, "sortMode"

    iget v1, p0, Lcom/miui/player/ui/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/miui/player/ui/MusicPicker;->mStreamType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 583
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 584
    iget-object v0, p0, Lcom/miui/player/ui/MusicPicker;->mAdapter:Lcom/miui/player/ui/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 585
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 698
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 699
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/miui/player/ui/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 700
    .local v2, newId:J
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 702
    iput-wide v2, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedId:J

    .line 703
    iget-wide v5, p0, Lcom/miui/player/ui/MusicPicker;->mPlayingId:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_3

    .line 704
    :cond_0
    invoke-virtual {p0, v8}, Lcom/miui/player/ui/MusicPicker;->stopMediaPlayer(Z)V

    .line 705
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 706
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, p0, Lcom/miui/player/ui/MusicPicker;->mStreamType:I

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 708
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 709
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 710
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 711
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 712
    iput-wide v2, p0, Lcom/miui/player/ui/MusicPicker;->mPlayingId:J

    .line 713
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 714
    .local v0, am:Landroid/media/AudioManager;
    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {v0, p0, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 715
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v1

    .line 717
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/MusicPicker;->fileNotFound(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 718
    const v5, 0x7f090012

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 720
    :cond_2
    const v5, 0x7f0900b8

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 723
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    iget-object v5, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 724
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/MusicPicker;->stopMediaPlayer(Z)V

    .line 725
    invoke-virtual {p0}, Lcom/miui/player/ui/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method setSortMode(I)Z
    .locals 4
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 592
    iget v2, p0, Lcom/miui/player/ui/MusicPicker;->mSortMode:I

    if-eq p1, v2, :cond_0

    .line 593
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 617
    :goto_0
    return v0

    .line 595
    :pswitch_0
    iput p1, p0, Lcom/miui/player/ui/MusicPicker;->mSortMode:I

    .line 596
    const-string v2, "title_key"

    iput-object v2, p0, Lcom/miui/player/ui/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 597
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 600
    :pswitch_1
    iput p1, p0, Lcom/miui/player/ui/MusicPicker;->mSortMode:I

    .line 601
    const-string v2, "album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/miui/player/ui/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 604
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 607
    :pswitch_2
    iput p1, p0, Lcom/miui/player/ui/MusicPicker;->mSortMode:I

    .line 608
    const-string v2, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v2, p0, Lcom/miui/player/ui/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 612
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer(Z)V
    .locals 3
    .parameter "abandonFocus"

    .prologue
    .line 740
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 742
    iget-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 743
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 744
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/player/ui/MusicPicker;->mPlayingId:J

    .line 745
    if-eqz p1, :cond_0

    .line 746
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MusicPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 747
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 750
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method
