.class public Lcom/android/settings/sound/SilentModeActivity;
.super Landroid/app/Activity;
.source "SilentModeActivity.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sound/SilentModeActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sound/SilentModeActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/settings/sound/SilentModeActivity;->getRingerModeFromClickedIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/sound/SilentModeActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private createSilentModeDialog()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/sound/SilentModeActivity;->getClickedIndexFromRingerMode()I

    move-result v1

    .line 33
    .local v1, clickedIndex:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0241

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    iget-object v2, p0, Lcom/android/settings/sound/SilentModeActivity;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/sound/SilentModeActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/sound/SilentModeActivity$1;-><init>(Lcom/android/settings/sound/SilentModeActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/sound/SilentModeActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/sound/SilentModeActivity$2;-><init>(Lcom/android/settings/sound/SilentModeActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    new-instance v2, Lcom/android/settings/sound/SilentModeActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/SilentModeActivity$3;-><init>(Lcom/android/settings/sound/SilentModeActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 62
    return-void
.end method

.method private getClickedIndexFromRingerMode()I
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return v0

    .line 79
    :pswitch_0
    const/4 v0, 0x0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v0, 0x1

    .line 83
    goto :goto_0

    .line 85
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRingerModeFromClickedIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 92
    const/4 v0, 0x2

    .line 93
    .local v0, ringerMode:I
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    return v0

    .line 95
    :pswitch_0
    const/4 v0, 0x2

    .line 96
    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v0, 0x1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SilentModeActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/sound/SilentModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 25
    invoke-virtual {p0}, Lcom/android/settings/sound/SilentModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/sound/SilentModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mEntryValues:[Ljava/lang/CharSequence;

    .line 27
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SilentModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 28
    invoke-direct {p0}, Lcom/android/settings/sound/SilentModeActivity;->createSilentModeDialog()V

    .line 29
    return-void
.end method
