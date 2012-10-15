.class public Lcom/miui/player/ui/EqualizerActivity;
.super Landroid/app/Activity;
.source "EqualizerActivity.java"

# interfaces
.implements Lcom/miui/player/ui/DialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;,
        Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;,
        Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeSelected;,
        Lcom/miui/player/ui/EqualizerActivity$EffectTypeAdapter;,
        Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;,
        Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;
    }
.end annotation


# static fields
.field private static final SEEK_BAR_IDS:[I


# instance fields
.field private final mBandLevels:[I

.field final mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

.field private mConfigText:Landroid/widget/TextView;

.field mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

.field final mIdArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mNameArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveText:Landroid/widget/TextView;

.field mSpinnerEnable:Z

.field mVolumeAdjustBySeekBar:Z

.field mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/EqualizerActivity;->SEEK_BAR_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x63t 0x0t 0xct 0x7ft
        0x64t 0x0t 0xct 0x7ft
        0x65t 0x0t 0xct 0x7ft
        0x66t 0x0t 0xct 0x7ft
        0x67t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandLevels:[I

    .line 73
    new-array v0, v1, [Lcom/miui/player/ui/view/VerticalSeekBar;

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mSpinnerEnable:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeAdjustBySeekBar:Z

    .line 482
    new-instance v0, Lcom/miui/player/ui/EqualizerActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/EqualizerActivity$1;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getEqualizerConfigId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 260
    const-string v1, "miui_equalizer"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "equalizer_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getMaxBandLevel(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 497
    invoke-static {p0}, Lcom/miui/player/ui/view/EqualizerView;->getMaxRank(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getMinBandLevel(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 501
    invoke-static {p0}, Lcom/miui/player/ui/view/EqualizerView;->getMinRank(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/miui/player/ui/view/EqualizerView;->SCALE:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public static isEqualizerEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 265
    sget-boolean v2, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v2, :cond_0

    .line 266
    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    .line 268
    :cond_0
    const-string v2, "miui_equalizer"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "equablzier_enabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    invoke-static {p0, v1}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 273
    :cond_1
    const-string v2, "equablzier_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static setEqualizerEnabled(Landroid/content/Context;Z)V
    .locals 13
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    .line 277
    const-string v8, "miui_equalizer"

    const/4 v11, 0x3

    invoke-virtual {p0, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 278
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v11, "equablzier_enabled"

    if-nez p1, :cond_3

    move v8, v9

    :goto_0
    invoke-interface {v7, v11, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eq p1, v8, :cond_2

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, levels:[I
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "equablzier_enabled"

    invoke-interface {v0, v8, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 283
    if-eqz p1, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v11, 0x7f0b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v10

    .line 286
    .local v4, normal:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 287
    .local v5, normalId:I
    const-string v8, "equalizer_id"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, lastId:I
    const/4 v3, -0x1

    .line 289
    .local v3, newId:I
    if-eq v1, v12, :cond_0

    .line 290
    invoke-static {p0, v1, v9}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    move-result-object v2

    .line 291
    if-eqz v2, :cond_4

    .line 292
    move v3, v1

    .line 301
    :cond_0
    :goto_1
    const-string v8, "equalizer_id"

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    .end local v1           #lastId:I
    .end local v3           #newId:I
    .end local v4           #normal:Ljava/lang/String;
    .end local v5           #normalId:I
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    sget-object v6, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 306
    .local v6, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-eqz v6, :cond_2

    .line 308
    :try_start_0
    invoke-interface {v6, v2}, Lcom/miui/player/service/IMediaPlaybackService;->updateEqualizerBands([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #levels:[I
    .end local v6           #service:Lcom/miui/player/service/IMediaPlaybackService;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v8, v10

    .line 278
    goto :goto_0

    .line 293
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #lastId:I
    .restart local v2       #levels:[I
    .restart local v3       #newId:I
    .restart local v4       #normal:Ljava/lang/String;
    .restart local v5       #normalId:I
    :cond_4
    if-eq v1, v5, :cond_0

    if-eq v5, v12, :cond_0

    .line 294
    invoke-static {p0, v5, v9}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;IZ)[I

    move-result-object v2

    .line 295
    if-eqz v2, :cond_0

    .line 296
    move v3, v5

    goto :goto_1

    .line 309
    .end local v1           #lastId:I
    .end local v3           #newId:I
    .end local v4           #normal:Ljava/lang/String;
    .end local v5           #normalId:I
    .restart local v6       #service:Lcom/miui/player/service/IMediaPlaybackService;
    :catch_0
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method getCurrentConfigData()[I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 342
    new-array v0, v4, [I

    .line 343
    .local v0, custom:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 344
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v2

    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getMinBandLevel(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-object v0
.end method

.method notifyServiceEqualizer(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 318
    sget-object v1, Lcom/miui/player/service/ServiceHelper;->sService:Lcom/miui/player/service/IMediaPlaybackService;

    .line 319
    .local v1, service:Lcom/miui/player/service/IMediaPlaybackService;
    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 323
    :cond_0
    if-nez p1, :cond_1

    .line 325
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/miui/player/service/IMediaPlaybackService;->updateEqualizerBands([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandLevels:[I

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v3

    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getMinBandLevel(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandLevels:[I

    invoke-interface {v1, v2}, Lcom/miui/player/service/IMediaPlaybackService;->updateEqualizerBands([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 335
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->setContentView(I)V

    .line 89
    const v3, 0x7f0c0062

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/VerticalSeekBar;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    .line 90
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 91
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setMax(I)V

    .line 93
    new-instance v1, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    .line 94
    .local v1, l:Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getMaxBandLevel(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getMinBandLevel(Landroid/content/Context;)I

    move-result v4

    sub-int v2, v3, v4

    .line 95
    .local v2, maxProgress:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 96
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    sget-object v3, Lcom/miui/player/ui/EqualizerActivity;->SEEK_BAR_IDS:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/VerticalSeekBar;

    aput-object v3, v4, v0

    .line 97
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 98
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->setMax(I)V

    .line 99
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/VerticalSeekBar;->setTag(Ljava/lang/Object;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    const v3, 0x7f0c005f

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mConfigText:Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mConfigText:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/EqualizerActivity$OnEffectTypeClick;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v3, 0x7f0c0060

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mSaveText:Landroid/widget/TextView;

    .line 106
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mSaveText:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/EqualizerActivity$OnSaveClickListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v3, 0x7f0c0068

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/player/ui/view/EqualizerView;

    iput-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    .line 109
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/EqualizerActivity;->setVolumeControlStream(I)V

    .line 110
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    if-eqz p2, :cond_0

    .line 168
    if-eqz p3, :cond_0

    .line 169
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 170
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->updateIdAndNameArr()V

    .line 172
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    .local v0, newId:I
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 174
    invoke-virtual {p0, v0, v3}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 175
    const v2, 0x7f0900a4

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 145
    :pswitch_0
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    .line 146
    .local v0, id:I
    if-eq v0, v6, :cond_0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/player/provider/PlayerStore$MiuiEqualizer;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->updateIdAndNameArr()V

    .line 153
    :cond_1
    invoke-virtual {p0, v6}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 154
    invoke-virtual {p0, v6, v8}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 155
    invoke-virtual {p0, v7}, Lcom/miui/player/ui/EqualizerActivity;->notifyServiceEqualizer(Z)V

    .line 156
    const v1, 0x7f0900a2

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/EqualizerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/EqualizerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 131
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    .line 132
    .local v0, id:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 133
    const/4 v1, 0x2

    const v2, 0x7f0900a1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->updateIdAndNameArr()V

    .line 116
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer()V

    .line 117
    invoke-virtual {p0}, Lcom/miui/player/ui/EqualizerActivity;->refreshVolume()V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/EqualizerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method refreshEqualizer()V
    .locals 2

    .prologue
    .line 219
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(IZ)V

    .line 220
    return-void
.end method

.method refreshEqualizer(IZ)V
    .locals 1
    .parameter "id"
    .parameter "refreshBars"

    .prologue
    .line 224
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;I)[I

    move-result-object v0

    .line 225
    .local v0, levels:[I
    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(I[IZ)V

    .line 226
    return-void
.end method

.method refreshEqualizer(I[IZ)V
    .locals 5
    .parameter "id"
    .parameter "levels"
    .parameter "refreshBars"

    .prologue
    .line 230
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 231
    .local v2, selected:I
    if-gez v2, :cond_0

    .line 232
    const/4 p1, -0x1

    .line 233
    const/4 v2, 0x0

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 237
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mConfigText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mSaveText:Landroid/widget/TextView;

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    if-eqz p3, :cond_3

    .line 242
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    .line 243
    aget v3, p2, v0

    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getMinBandLevel(Landroid/content/Context;)I

    move-result v4

    sub-int v1, v3, v4

    .line 244
    .local v1, progress:I
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mBandSeekBar:[Lcom/miui/player/ui/view/VerticalSeekBar;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Lcom/miui/player/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    .end local v0           #i:I
    .end local v1           #progress:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 248
    :cond_3
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    invoke-virtual {v3, p2}, Lcom/miui/player/ui/view/EqualizerView;->setBands([I)V

    .line 249
    return-void
.end method

.method refreshVolume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 210
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/EqualizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 211
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 212
    .local v1, maxVolume:I
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 213
    .local v3, volume:I
    mul-int/lit16 v4, v3, 0x3e8

    div-int v2, v4, v1

    .line 214
    .local v2, progress:I
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeSeekBar:Lcom/miui/player/ui/view/VerticalSeekBar;

    invoke-virtual {v4, v2}, Lcom/miui/player/ui/view/VerticalSeekBar;->setProgress(I)V

    .line 215
    return-void
.end method

.method saveEqualizerConfigId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 253
    const-string v2, "miui_equalizer"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/ui/EqualizerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 254
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "equalizer_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method updateIdAndNameArr()V
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 188
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 190
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    const v4, 0x7f0900a0

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/EqualizerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {p0}, Lcom/miui/player/provider/PlayerProviderUtils;->queryNormalEqualizer(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 194
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 195
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 196
    .local v1, idIdx:I
    const-string v3, "name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, nameIdx:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    .end local v1           #idIdx:I
    .end local v2           #nameIdx:I
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mNameArr:Ljava/util/List;

    const v4, 0x7f0900a7

    invoke-virtual {p0, v4}, Lcom/miui/player/ui/EqualizerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity;->mIdArr:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method
