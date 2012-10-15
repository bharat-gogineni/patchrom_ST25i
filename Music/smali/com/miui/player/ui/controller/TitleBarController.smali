.class public Lcom/miui/player/ui/controller/TitleBarController;
.super Ljava/lang/Object;
.source "TitleBarController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mContainer:Landroid/view/View;

.field private mPrimaryText:Landroid/widget/TextView;

.field private mSecondaryImage:Landroid/widget/ImageView;

.field private mSecondaryText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/miui/player/ui/controller/TitleBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/player/ui/controller/TitleBarController;-><init>(Landroid/app/Activity;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "a"
    .parameter "hasDivider"

    .prologue
    const/4 v5, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    .line 53
    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    if-nez v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 57
    :cond_0
    if-eqz p2, :cond_2

    const v1, 0x7f0200c5

    .line 58
    .local v1, resId:I
    :goto_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const v3, 0x7f03003d

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    .line 61
    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 62
    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 64
    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 65
    iget-object v2, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    .line 66
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 67
    .local v0, left:I
    if-nez v0, :cond_1

    .line 68
    invoke-static {v2, v0, v5, v5, v5}, Lcom/miui/player/ui/UIHelper;->setPadding(Landroid/view/View;IIII)V

    .line 72
    .end local v0           #left:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v4, 0x7f0c00a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miui/player/ui/controller/TitleBarController$1;

    invoke-direct {v4, p0}, Lcom/miui/player/ui/controller/TitleBarController$1;-><init>(Lcom/miui/player/ui/controller/TitleBarController;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 57
    .end local v1           #resId:I
    :cond_2
    const v1, 0x7f0200c4

    goto :goto_1
.end method


# virtual methods
.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    sget-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    const-string v1, "setPrimaryText failed"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSecondaryImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    const-string v1, "setSecondaryImage failed"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    const-string v1, "setSecondaryText failed"

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStyle(I)V
    .locals 12
    .parameter "style"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const v8, 0x7f0c00aa

    .line 86
    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v6, 0x7f0c00ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v7, 0x7f0c00ac

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/miui/player/ui/controller/TitleBarController;->mContainer:Landroid/view/View;

    const v7, 0x7f0c00a7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 91
    .local v4, views:[Landroid/view/View;
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 97
    .local v3, styles:[I
    const/4 v0, 0x0

    .line 99
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 100
    aget v5, v3, v1

    if-eq p1, v5, :cond_0

    .line 101
    aget-object v5, v4, v1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    aget-object v0, v4, v1

    .line 104
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 108
    :cond_1
    if-eqz v0, :cond_4

    .line 109
    const v5, 0x7f0c00a9

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/player/ui/controller/TitleBarController;->mPrimaryText:Landroid/widget/TextView;

    .line 110
    iput-object v11, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    .line 111
    iput-object v11, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryImage:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, secondary:Landroid/view/View;
    instance-of v5, v2, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 114
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryText:Landroid/widget/TextView;

    .line 121
    .end local v2           #secondary:Landroid/view/View;
    :cond_2
    :goto_2
    return-void

    .line 115
    .restart local v2       #secondary:Landroid/view/View;
    :cond_3
    instance-of v5, v2, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/miui/player/ui/controller/TitleBarController;->mSecondaryImage:Landroid/widget/ImageView;

    goto :goto_2

    .line 119
    .end local v2           #secondary:Landroid/view/View;
    :cond_4
    sget-object v5, Lcom/miui/player/ui/controller/TitleBarController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTitleStyle failed with unknown style="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 91
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method
