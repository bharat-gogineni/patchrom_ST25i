.class Lcom/android/settings/MiuiSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

.field private mEnablerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/settings/BaseEnabler;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 419
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    .line 421
    new-instance v0, Lcom/android/settings/MiuiAirplaneModeEnabler;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    .line 422
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f080206

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f080204

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/AccelerometerEnabler;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/display/AccelerometerEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f08020c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/GpsEnabler;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/GpsEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-void
.end method

.method private getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 2
    .parameter "header"

    .prologue
    .line 373
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0

    .line 375
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isSwitchHeader(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x2

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getAirplaneModeEnabler()Lcom/android/settings/MiuiAirplaneModeEnabler;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 390
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    const v10, 0x1020016

    const v8, 0x1020010

    const/4 v9, 0x0

    .line 429
    const/4 v3, 0x0

    .line 430
    .local v3, holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 431
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {p0, v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 432
    .local v2, headerType:I
    const/4 v5, 0x0

    .line 434
    .local v5, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 435
    move-object v5, p2

    .line 436
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    check-cast v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;

    .line 437
    .restart local v3       #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isSwitchHeader(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    const/4 p2, 0x0

    .line 441
    :cond_0
    if-nez p2, :cond_1

    .line 442
    new-instance v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;

    .end local v3           #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    invoke-direct {v3, v11}, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/MiuiSettings$1;)V

    .line 443
    .restart local v3       #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 472
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 477
    :cond_1
    packed-switch v2, :pswitch_data_1

    .line 504
    :goto_1
    return-object v5

    .line 445
    :pswitch_0
    new-instance v5, Landroid/widget/TextView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1010208

    invoke-direct {v5, v6, v11, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5       #view:Landroid/view/View;
    move-object v6, v5

    .line 447
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 451
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040051

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 453
    const v6, 0x7f080022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 454
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 456
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 458
    const v6, 0x7f0800de

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiui/widget/SlidingButton;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    goto :goto_0

    .line 462
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x6030027

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 465
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 466
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 468
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto :goto_0

    .line 479
    :pswitch_3
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 484
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseEnabler;

    .line 485
    .local v0, baseEnabler:Lcom/android/settings/BaseEnabler;
    if-eqz v0, :cond_2

    .line 486
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v6}, Lcom/android/settings/BaseEnabler;->setSlidingButton(Lmiui/widget/SlidingButton;)V

    .line 492
    .end local v0           #baseEnabler:Lcom/android/settings/BaseEnabler;
    :cond_2
    :pswitch_5
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v7, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 495
    .local v4, summary:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 496
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 499
    :cond_3
    iget-object v6, v3, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 477
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchHeader(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 384
    .local v0, switchHeaderIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 515
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 516
    .local v1, enablerList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/BaseEnabler;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseEnabler;

    .line 517
    .local v0, baseEnabler:Lcom/android/settings/BaseEnabler;
    invoke-virtual {v0}, Lcom/android/settings/BaseEnabler;->pause()V

    goto :goto_0

    .line 519
    .end local v0           #baseEnabler:Lcom/android/settings/BaseEnabler;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 508
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 509
    .local v1, enablerList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/BaseEnabler;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseEnabler;

    .line 510
    .local v0, baseEnabler:Lcom/android/settings/BaseEnabler;
    invoke-virtual {v0}, Lcom/android/settings/BaseEnabler;->resume()V

    goto :goto_0

    .line 512
    .end local v0           #baseEnabler:Lcom/android/settings/BaseEnabler;
    :cond_0
    return-void
.end method
