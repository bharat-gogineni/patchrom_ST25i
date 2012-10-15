.class public Lcom/miui/home/launcher/gadget/FlipClock;
.super Landroid/widget/FrameLayout;
.source "FlipClock.java"

# interfaces
.implements Lcom/miui/home/launcher/gadget/Clock$ClockStyle;
.implements Lcom/miui/home/launcher/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/FlipClock$1;,
        Lcom/miui/home/launcher/gadget/FlipClock$PageCache;,
        Lcom/miui/home/launcher/gadget/FlipClock$ViewList;
    }
.end annotation


# instance fields
.field private mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mElementContext:Lmiui/app/screenelement/ScreenContext;

.field private mLastHour:I

.field private mLastMin:I

.field mPageCache:Lcom/miui/home/launcher/gadget/FlipClock$PageCache;

.field private mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastHour:I

    .line 45
    iput v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastMin:I

    .line 59
    new-instance v0, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;-><init>(Lcom/miui/home/launcher/gadget/FlipClock;Lcom/miui/home/launcher/gadget/FlipClock$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    .line 121
    new-instance v0, Lcom/miui/home/launcher/gadget/FlipClock$PageCache;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/gadget/FlipClock$PageCache;-><init>(Lcom/miui/home/launcher/gadget/FlipClock;Lcom/miui/home/launcher/gadget/FlipClock$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mPageCache:Lcom/miui/home/launcher/gadget/FlipClock$PageCache;

    .line 63
    return-void
.end method

.method private genCurrentViewList(IIII)V
    .locals 10
    .parameter "h"
    .parameter "m"
    .parameter "startHour"
    .parameter "startMin"

    .prologue
    .line 134
    move v4, p3

    .line 135
    .local v4, lh:I
    move v5, p4

    .line 136
    .local v5, lm:I
    const/16 v6, 0x18

    invoke-static {p1, p3, v6}, Lcom/miui/home/launcher/gadget/FlipClock;->modSub(III)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 137
    const/4 v6, 0x1

    const/16 v7, 0x18

    invoke-static {p1, v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock;->modSub(III)I

    move-result v4

    .line 140
    :cond_0
    const/16 v6, 0x3c

    invoke-static {p2, p4, v6}, Lcom/miui/home/launcher/gadget/FlipClock;->modSub(III)I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_1

    .line 141
    const/4 v6, 0x2

    const/16 v7, 0x3c

    invoke-static {p2, v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock;->modSub(III)I

    move-result v5

    .line 144
    :cond_1
    if-eq v4, p3, :cond_2

    const/4 v1, 0x1

    .line 145
    .local v1, delta:I
    :goto_0
    const/16 v6, 0x18

    invoke-static {p1, v4, v6}, Lcom/miui/home/launcher/gadget/FlipClock;->modSub(III)I

    move-result v0

    .line 146
    .local v0, count:I
    add-int v2, v0, v1

    .line 147
    .local v2, dist:I
    const/4 v3, 0x0

    .line 148
    .local v3, i:I
    move v3, v0

    :goto_1
    if-ltz v3, :cond_3

    .line 149
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static {v4, v3, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 144
    .end local v0           #count:I
    .end local v1           #delta:I
    .end local v2           #dist:I
    .end local v3           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    .restart local v0       #count:I
    .restart local v1       #delta:I
    .restart local v2       #dist:I
    .restart local v3       #i:I
    :cond_3
    if-eqz v1, :cond_4

    .line 153
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v7, p3, v2, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, p3, v2, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-gt v3, v0, :cond_5

    .line 158
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x1

    const/16 v8, 0x18

    invoke-static {v4, v3, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 161
    :cond_5
    if-eq v5, p4, :cond_6

    const/4 v1, 0x1

    .line 162
    :goto_3
    const/16 v6, 0x3c

    invoke-static {p2, v5, v6}, Lcom/miui/home/launcher/gadget/FlipClock;->modSub(III)I

    move-result v0

    .line 163
    add-int v2, v1, v0

    .line 164
    move v3, v0

    :goto_4
    if-ltz v3, :cond_7

    .line 165
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x2

    const/16 v8, 0x3c

    invoke-static {v5, v3, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 161
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 168
    :cond_7
    if-eqz v1, :cond_8

    .line 169
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v7, p4, v2, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, p4, v2, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_8
    const/4 v3, 0x0

    :goto_5
    if-gt v3, v0, :cond_9

    .line 174
    iget-object v6, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    const/4 v7, 0x3

    const/16 v8, 0x3c

    invoke-static {v5, v3, v8}, Lcom/miui/home/launcher/gadget/FlipClock;->modAdd(III)I

    move-result v8

    add-int v9, v3, v1

    invoke-direct {p0, v7, v8, v2, v9}, Lcom/miui/home/launcher/gadget/FlipClock;->getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 176
    :cond_9
    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 5

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 288
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 289
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    .local v1, me:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 291
    return-object v1
.end method

.method private getPagePart(IIII)Lcom/miui/home/launcher/gadget/FlipPage;
    .locals 8
    .parameter "pageType"
    .parameter "number"
    .parameter "dist"
    .parameter "offset"

    .prologue
    .line 179
    const/4 v7, -0x1

    .line 180
    .local v7, resID:I
    const/4 v6, 0x0

    .line 181
    .local v6, flipDelay:I
    const/4 v0, 0x0

    .line 182
    .local v0, page:Lcom/miui/home/launcher/gadget/FlipPage;
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    const/4 v1, -0x1

    if-eq v7, v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mPageCache:Lcom/miui/home/launcher/gadget/FlipClock$PageCache;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/gadget/FlipClock$PageCache;->get(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Lcom/miui/home/launcher/gadget/FlipPage;
    check-cast v0, Lcom/miui/home/launcher/gadget/FlipPage;

    .line 202
    .restart local v0       #page:Lcom/miui/home/launcher/gadget/FlipPage;
    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Lcom/miui/home/launcher/gadget/FlipPage;
    check-cast v0, Lcom/miui/home/launcher/gadget/FlipPage;

    .line 204
    .restart local v0       #page:Lcom/miui/home/launcher/gadget/FlipPage;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/gadget/FlipPage;->setTag(Ljava/lang/Object;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/gadget/FlipPage;->init(Lmiui/app/screenelement/ResourceManager;IIIII)V

    .line 209
    :cond_1
    return-object v0

    .line 184
    :pswitch_0
    const v7, 0x7f030014

    .line 185
    const/16 v6, 0xb4

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    const/16 v6, 0xb4

    .line 189
    const v7, 0x7f030013

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    const/16 v6, 0x78

    .line 193
    const v7, 0x7f030016

    .line 194
    goto :goto_0

    .line 196
    :pswitch_3
    const/16 v6, 0x78

    .line 197
    const v7, 0x7f030015

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static modAdd(III)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "mod"

    .prologue
    .line 52
    add-int v0, p0, p1

    rem-int/2addr v0, p2

    return v0
.end method

.method public static modSub(III)I
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "mod"

    .prologue
    .line 56
    sub-int v0, p0, p1

    if-gez v0, :cond_0

    sub-int v0, p0, p1

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private prepairLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 268
    .local v0, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 269
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 278
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 279
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x31

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    :goto_0
    return-void

    .line 271
    :pswitch_0
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/FlipClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private resetContainer()V
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 125
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 128
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 129
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mPageCache:Lcom/miui/home/launcher/gadget/FlipClock$PageCache;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/gadget/FlipClock$PageCache;->put(Lcom/miui/home/launcher/gadget/FlipClock$ViewList;)V

    .line 130
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->clear()V

    .line 131
    return-void
.end method


# virtual methods
.method public getUpdateInterval()I
    .locals 3

    .prologue
    const v1, 0xea60

    .line 80
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/AwesomeView;->getUpdateInterval()I

    move-result v0

    .line 81
    .local v0, awesomeInterval:I
    if-lez v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/AwesomeView;->getUpdateInterval()I

    move-result v1

    .line 85
    :cond_0
    return v1
.end method

.method public initConfig(Ljava/lang/String;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 75
    new-instance v0, Lmiui/app/screenelement/ScreenContext;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/app/screenelement/util/ZipResourceLoader;

    invoke-direct {v2, p1}, Lmiui/app/screenelement/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceLoader;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    .line 76
    return-void
.end method

.method public is24HourFormat()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public onAdded()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 256
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/FlipClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/gadget/AwesomeView;

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    .line 257
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/gadget/AwesomeView;->setVisibility(I)V

    .line 258
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 259
    .local v0, me:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/gadget/AwesomeView;->setTargetDensity(I)V

    .line 260
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/gadget/AwesomeView;->load(Lmiui/app/screenelement/ScreenContext;)Z

    .line 261
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/gadget/FlipClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    .line 262
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    const-string v3, "flip_bg.9.png"

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->prepairLayout()V

    .line 264
    return-void
.end method

.method public onDeleted()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->finish()V

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->clear()V

    .line 248
    :cond_0
    return-void
.end method

.method public onEditDisable()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onEditNormal()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 67
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/gadget/AwesomeView;->layout(IIII)V

    .line 71
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->pause()V

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeView;->resume()V

    .line 235
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public updateAppearance(Ljava/util/Calendar;)V
    .locals 7
    .parameter "calendar"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->is24HourFormat()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xb

    :goto_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 96
    .local v0, h:I
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 97
    .local v2, m:I
    iget v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastHour:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastMin:I

    if-eq v2, v4, :cond_4

    .line 98
    :cond_0
    iget v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastHour:I

    if-gez v4, :cond_1

    .line 99
    iput v5, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastHour:I

    .line 101
    :cond_1
    iget v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastMin:I

    if-gez v4, :cond_2

    .line 102
    iput v5, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastMin:I

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/FlipClock;->resetContainer()V

    .line 106
    iget v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastHour:I

    iget v5, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastMin:I

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/miui/home/launcher/gadget/FlipClock;->genCurrentViewList(IIII)V

    .line 107
    iput v0, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastHour:I

    .line 108
    iput v2, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mLastMin:I

    .line 110
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mViewList:Lcom/miui/home/launcher/gadget/FlipClock$ViewList;

    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/FlipClock$ViewList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 111
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 95
    .end local v0           #h:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:I
    .end local v3           #v:Landroid/view/View;
    :cond_3
    const/16 v4, 0xa

    goto :goto_0

    .line 115
    .restart local v0       #h:I
    .restart local v2       #m:I
    :cond_4
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mElementContext:Lmiui/app/screenelement/ScreenContext;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    if-eqz v4, :cond_5

    .line 116
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/miui/home/launcher/gadget/AwesomeView;->tick(J)V

    .line 117
    iget-object v4, p0, Lcom/miui/home/launcher/gadget/FlipClock;->mBottomBar:Lcom/miui/home/launcher/gadget/AwesomeView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/gadget/AwesomeView;->invalidate()V

    .line 119
    :cond_5
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 252
    return-void
.end method
