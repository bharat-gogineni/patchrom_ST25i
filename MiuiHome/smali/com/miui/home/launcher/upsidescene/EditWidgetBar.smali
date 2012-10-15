.class public Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
.super Lmiui/widget/ScreenView;
.source "EditWidgetBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;
    }
.end annotation


# instance fields
.field private mGadgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field mSpanX:I

.field mSpanY:I

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setScrollWholeScreen(Z)V

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;)Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-object v0
.end method

.method private buildChildren()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 169
    new-instance v0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;

    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mGadgets:Ljava/util/List;

    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mWidgets:Ljava/util/List;

    iget v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanX:I

    if-ne v7, v4, :cond_0

    iget v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanY:I

    if-ne v7, v4, :cond_0

    :goto_0
    invoke-direct {v0, p0, v5, v6, v4}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;-><init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;Ljava/util/List;Ljava/util/List;Z)V

    .line 170
    .local v0, adapter:Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->getCount()I

    move-result v1

    .line 171
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 172
    invoke-virtual {v0, v2, v8, v8}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v4, v4, -0xa

    div-int/lit8 v4, v4, 0x3

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->addView(Landroid/view/View;II)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    .end local v0           #adapter:Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 176
    .restart local v0       #adapter:Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter "sceneScreen"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 180
    return-void
.end method

.method public setWidgets(Ljava/util/List;Ljava/util/List;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "spanX"
    .parameter "spanY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, gadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    .local p2, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iput p3, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanX:I

    .line 161
    iput p4, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanY:I

    .line 162
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mGadgets:Ljava/util/List;

    .line 163
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mWidgets:Ljava/util/List;

    .line 165
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->buildChildren()V

    .line 166
    return-void
.end method
