.class public Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;
.super Lcom/miui/home/launcher/ThumbnailViewAdapter;
.source "WidgetThumbnailViewAdapter.java"


# static fields
.field private static final SHORTCUT_OFFSET:I

.field private static final WIDGET_OFFSET:I

.field private static final sDisabledComponents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sShortcutProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetSizeDrawableIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    .line 38
    sget-object v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.ContactShortcut"

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/ShortcutProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sDisabledComponents:Ljava/util/Collection;

    .line 41
    sget-object v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sDisabledComponents:Ljava/util/Collection;

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    .line 46
    sget v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    sget-object v1, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, drawableNames:[Ljava/lang/String;
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    .line 70
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    iget-object v4, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mResources:Landroid/content/res/Resources;

    aget-object v5, v0, v1

    const-string v6, "drawable"

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->reloadWidgets()V

    .line 75
    return-void
.end method

.method private getWidgetSizeTipsView(II)I
    .locals 3
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 187
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 188
    .local v0, pos:I
    iget-object v1, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    aget v1, v1, v0

    .line 191
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 102
    sget v1, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f03002c

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/miui/home/launcher/OnLongClickWrapper;

    .line 113
    .local v9, resultView:Lcom/miui/home/launcher/OnLongClickWrapper;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    .line 115
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ge v0, v11, :cond_0

    .line 116
    new-instance v5, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v5}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 117
    .local v5, info:Lcom/miui/home/launcher/FolderInfo;
    invoke-virtual {v9}, Lcom/miui/home/launcher/OnLongClickWrapper;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0005

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v5, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 120
    const v11, 0x7f070082

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    .local v2, icon:Landroid/widget/ImageView;
    const v11, 0x7f0200dd

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    const v11, 0x7f070083

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 125
    .local v10, title:Landroid/widget/TextView;
    iget-object v11, v5, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 183
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v5           #info:Lcom/miui/home/launcher/FolderInfo;
    .end local v10           #title:Landroid/widget/TextView;
    :goto_0
    return-object v9

    .line 128
    :cond_0
    const/4 v11, 0x1

    move/from16 v0, p1

    if-gt v11, v0, :cond_1

    sget v11, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    move/from16 v0, p1

    if-ge v0, v11, :cond_1

    .line 129
    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetIdList()[I

    move-result-object v11

    add-int/lit8 v12, p1, -0x1

    aget v4, v11, v12

    .line 130
    .local v4, id:I
    invoke-static {v4}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v5

    .line 131
    .local v5, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 134
    const v11, 0x7f070082

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 135
    .restart local v2       #icon:Landroid/widget/ImageView;
    iget v11, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    const v11, 0x7f070083

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 138
    .restart local v10       #title:Landroid/widget/TextView;
    iget v11, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 139
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    iget v15, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    add-int/lit8 v15, v15, -0x1

    mul-int/lit8 v15, v15, 0x4

    iget v0, v5, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 142
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v4           #id:I
    .end local v5           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v10           #title:Landroid/widget/TextView;
    :cond_1
    sget v11, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    move/from16 v0, p1

    if-gt v11, v0, :cond_2

    sget v11, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    move/from16 v0, p1

    if-ge v0, v11, :cond_2

    .line 143
    sget-object v11, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    sget v12, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->SHORTCUT_OFFSET:I

    sub-int v12, p1, v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/ShortcutProviderInfo;

    .line 144
    .local v5, info:Lcom/miui/home/launcher/ShortcutProviderInfo;
    invoke-virtual {v9, v5}, Lcom/miui/home/launcher/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 147
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 148
    .local v7, pm:Landroid/content/pm/PackageManager;
    iget-object v11, v5, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v8

    .line 149
    .local v8, resource:Landroid/content/res/Resources;
    iget-object v11, v5, Lcom/miui/home/launcher/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 152
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    const v11, 0x7f070082

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 153
    .restart local v2       #icon:Landroid/widget/ImageView;
    iget v11, v1, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    const v11, 0x7f070083

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 156
    .restart local v10       #title:Landroid/widget/TextView;
    iget v11, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetSizeDrawableIds:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 158
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #icon:Landroid/widget/ImageView;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #resource:Landroid/content/res/Resources;
    .end local v10           #title:Landroid/widget/TextView;
    :catch_0
    move-exception v11

    goto/16 :goto_0

    .line 162
    .end local v5           #info:Lcom/miui/home/launcher/ShortcutProviderInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    sget v12, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->WIDGET_OFFSET:I

    sub-int v12, p1, v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 163
    .local v5, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v6, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v6, v5}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 166
    .local v6, itemInfo:Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;
    invoke-static {v6}, Lcom/miui/home/launcher/ResConfig;->calcWidgetSpans(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)V

    .line 167
    invoke-virtual {v9, v6}, Lcom/miui/home/launcher/OnLongClickWrapper;->setTag(Ljava/lang/Object;)V

    .line 170
    const v11, 0x7f070082

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 171
    .restart local v2       #icon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v12, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget v13, v5, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 172
    .local v3, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    const v11, 0x7f070083

    invoke-virtual {v9, v11}, Lcom/miui/home/launcher/OnLongClickWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 176
    .restart local v10       #title:Landroid/widget/TextView;
    iget-object v11, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v6, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v15, v6, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->spanY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->getWidgetSizeTipsView(II)I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method

.method public reloadWidgets()V
    .locals 4

    .prologue
    .line 82
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    .line 84
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_3

    .line 85
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 86
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v2, "com.miui.player"

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 89
    :cond_1
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-gtz v2, :cond_2

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 92
    :cond_2
    sget-object v2, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->sDisabledComponents:Ljava/util/Collection;

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 97
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/home/launcher/WidgetThumbnailViewAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 79
    return-void
.end method
