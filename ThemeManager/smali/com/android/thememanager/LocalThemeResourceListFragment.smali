.class public Lcom/android/thememanager/LocalThemeResourceListFragment;
.super Lmiui/app/resourcebrowser/LocalResourceListFragment;
.source "LocalThemeResourceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/LocalThemeResourceListFragment$NameComparator;
    }
.end annotation


# instance fields
.field private mCategoryAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lmiui/app/resourcebrowser/resource/ResourceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstOnResume:Z

.field private mListHeaderViewHeight:I

.field private mLockstyleSettingMenu:Landroid/view/MenuItem;

.field private mPickerIntent:Landroid/content/Intent;

.field protected mResourceType:J

.field private mThemeSourcePath:Ljava/lang/String;

.field private mThirdAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;-><init>()V

    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mListHeaderViewHeight:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mFirstOnResume:Z

    .line 439
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/thememanager/LocalThemeResourceListFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/thememanager/LocalThemeResourceListFragment;)Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    return-object v0
.end method

.method private getRingtoneFiltingHeader()Landroid/view/View;
    .locals 19

    .prologue
    .line 133
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .local v10, root:Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 135
    const v13, 0x7f020012

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020012

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mListHeaderViewHeight:I

    .line 138
    const/4 v13, 0x3

    new-array v11, v13, [I

    fill-array-data v11, :array_0

    .line 143
    .local v11, titleId:[I
    const/4 v13, 0x3

    new-array v8, v13, [I

    fill-array-data v8, :array_1

    .line 148
    .local v8, minLimit:[I
    const/4 v13, 0x3

    new-array v6, v13, [I

    fill-array-data v6, :array_2

    .line 153
    .local v6, maxLimit:[I
    const/4 v13, 0x3

    new-array v2, v13, [Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v17, 0x200

    cmp-long v13, v15, v17

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    aput-boolean v13, v2, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v17, 0x200

    cmp-long v13, v15, v17

    if-nez v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    aput-boolean v13, v2, v14

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-boolean v14, v2, v13

    .line 158
    .local v2, defaultSelected:[Z
    const/4 v13, 0x3

    new-array v9, v13, [Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v9, v13

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    aput-object v14, v9, v13

    .line 164
    .local v9, rightDrawable:[Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/android/thememanager/LocalThemeResourceListFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment$2;-><init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V

    .line 178
    .local v3, handler:Landroid/os/Handler;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v13, v11

    if-ge v4, v13, :cond_2

    .line 179
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v14, 0x0

    const v15, 0x10102f5

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    .local v12, tv:Landroid/widget/TextView;
    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    aget v13, v11, v4

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 182
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-object v15, v9, v4

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 184
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v1, container:Landroid/widget/LinearLayout;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    aget-boolean v13, v2, v4

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 189
    aget v7, v8, v4

    .line 190
    .local v7, minDuration:I
    aget v5, v6, v4

    .line 191
    .local v5, maxDuration:I
    new-instance v13, Lcom/android/thememanager/LocalThemeResourceListFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3, v7, v5}, Lcom/android/thememanager/LocalThemeResourceListFragment$3;-><init>(Lcom/android/thememanager/LocalThemeResourceListFragment;Landroid/os/Handler;II)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x3f80

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 153
    .end local v1           #container:Landroid/widget/LinearLayout;
    .end local v2           #defaultSelected:[Z
    .end local v3           #handler:Landroid/os/Handler;
    .end local v4           #i:I
    .end local v5           #maxDuration:I
    .end local v7           #minDuration:I
    .end local v9           #rightDrawable:[Landroid/graphics/drawable/Drawable;
    .end local v12           #tv:Landroid/widget/TextView;
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 213
    .restart local v2       #defaultSelected:[Z
    .restart local v3       #handler:Landroid/os/Handler;
    .restart local v4       #i:I
    .restart local v9       #rightDrawable:[Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v10

    .line 138
    nop

    :array_0
    .array-data 0x4
        0x40t 0x0t 0xat 0x7ft
        0x41t 0x0t 0xat 0x7ft
        0x42t 0x0t 0xat 0x7ft
    .end array-data

    .line 143
    :array_1
    .array-data 0x4
        0x88t 0x13t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 148
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0x88t 0x13t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method private initClockPhotoCategoryHeader(Landroid/view/View;)V
    .locals 7
    .parameter "header"

    .prologue
    .line 91
    const v4, 0x7f070006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 92
    .local v2, categoryList:Landroid/widget/Spinner;
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x1090008

    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    .line 93
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 94
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    new-instance v4, Lcom/android/thememanager/LocalThemeResourceListFragment$1;

    invoke-direct {v4, p0}, Lcom/android/thememanager/LocalThemeResourceListFragment$1;-><init>(Lcom/android/thememanager/LocalThemeResourceListFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    new-instance v1, Lmiui/app/resourcebrowser/resource/ResourceCategory;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/resource/ResourceCategory;-><init>()V

    .line 124
    .local v1, cateHeader:Lmiui/app/resourcebrowser/resource/ResourceCategory;
    const v4, 0x60c0027

    invoke-virtual {p0, v4}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmiui/app/resourcebrowser/resource/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 126
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v5, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v4, v5, v6}, Lcom/android/thememanager/ThemeHelper;->getClockPhotoCategory(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/resource/ResourceCategory;

    .line 127
    .local v0, cate:Lmiui/app/resourcebrowser/resource/ResourceCategory;
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mCategoryAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v0           #cate:Lmiui/app/resourcebrowser/resource/ResourceCategory;
    :cond_0
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v5, "thememanager.local.clock_photo_size_flag"

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/resource/ResourceCategory;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private refreshCurrentUsingFlags()V
    .locals 5

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/thememanager/UIHelper;->computeCurrentUsingPath(Landroid/content/Context;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, usingPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1, v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->updateCurrentUsingPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->notifyDataSetChanged()V

    .line 273
    :cond_0
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter "targetIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, skipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 418
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 420
    .local v3, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_2

    .line 421
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 422
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 423
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 424
    .local v5, skipItem:Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 425
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    .end local v5           #skipItem:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 432
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 433
    new-instance v6, Lcom/android/thememanager/LocalThemeResourceListFragment$NameComparator;

    invoke-direct {v6, v2}, Lcom/android/thememanager/LocalThemeResourceListFragment$NameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 436
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method

.method private resolveIntent()V
    .locals 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    const-class v1, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 399
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->resolveIntent(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;

    .line 414
    :cond_1
    return-void

    .line 403
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/UIHelper;->getRingtoneType(J)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v1, "RingtonePickerActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateLockstyleSettingMenuStatus()V
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mLockstyleSettingMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/thememanager/view/LockscreenConfigSettings;->containConfigFile(Landroid/content/Context;)Z

    move-result v0

    .line 256
    .local v0, canCustomized:Z
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mLockstyleSettingMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 258
    .end local v0           #canCustomized:Z
    :cond_0
    return-void
.end method


# virtual methods
.method protected addMetaData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "metaData"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->addMetaData(Landroid/os/Bundle;)V

    .line 226
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v1, "miui.app.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method protected getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/android/thememanager/LocalThemeResourceAdapter;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LocalThemeResourceAdapter;-><init>(Lmiui/app/resourcebrowser/BaseFragment;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getBatchOperationHandler()Lmiui/app/resourcebrowser/view/BatchResourceHandler;
    .locals 4

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/thememanager/util/ThemeAudioBatchHandler;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/thememanager/util/ThemeAudioBatchHandler;-><init>(Lmiui/app/resourcebrowser/ResourceListFragment;Lmiui/app/resourcebrowser/ResourceAdapter;J)V

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->getBatchOperationHandler()Lmiui/app/resourcebrowser/view/BatchResourceHandler;

    move-result-object v0

    goto :goto_0
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, v:Landroid/view/View;
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->getRingtoneFiltingHeader()Landroid/view/View;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v1, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 278
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 282
    :sswitch_0
    if-eqz p3, :cond_0

    .line 283
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    .line 284
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->moveThemeFileIntoLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 288
    .local v9, slashPos:I
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    goto :goto_0

    .line 294
    .end local v9           #slashPos:I
    :sswitch_1
    if-eqz p3, :cond_0

    .line 295
    const/4 v7, 0x1

    .line 297
    .local v7, changed:Z
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 298
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v10}, Lmiui/app/resourcebrowser/util/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, path:Ljava/lang/String;
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v2, 0x40

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Lcom/android/thememanager/ThemeHelper;->applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 309
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 310
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1, v2, v8}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto :goto_0

    .line 301
    :cond_4
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v10}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 303
    :cond_5
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v2, 0x200

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 304
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, v1, v10}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 305
    :cond_6
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-static {v0, v1, v10}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 318
    .end local v7           #changed:Z
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :sswitch_2
    if-eqz p3, :cond_0

    .line 319
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 320
    .local v4, wallpaperUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    move-object v1, p0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/thememanager/util/WallpaperUtils;->cropAndApplyWallpaper(Landroid/app/Activity;Landroid/app/Fragment;JLandroid/net/Uri;ZZ)Z

    goto/16 :goto_0

    .line 325
    .end local v4           #wallpaperUri:Landroid/net/Uri;
    :sswitch_3
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/thememanager/util/WallpaperUtils;->dealCropWallpaperResult(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7001 -> :sswitch_3
        0x7002 -> :sswitch_3
    .end sparse-switch
.end method

.method public onFragmentCreateOptionsMenu(Landroid/view/Menu;)Ljava/util/List;
    .locals 8
    .parameter "menu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 336
    .local v1, menuId:I
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/16 v5, 0x1000

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 337
    const v1, 0x7f0a002a

    .line 338
    invoke-interface {p1, v7, v1, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 339
    .local v0, item:Landroid/view/MenuItem;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 340
    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mLockstyleSettingMenu:Landroid/view/MenuItem;

    .line 341
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->updateLockstyleSettingMenuStatus()V

    .line 351
    .end local v0           #item:Landroid/view/MenuItem;
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-object v2

    .line 342
    :cond_0
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/UIHelper;->supportImportMenu(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    const v1, 0x7f0a0027

    .line 344
    invoke-interface {p1, v7, v1, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 346
    :cond_1
    const v1, 0x7f0a0028

    .line 347
    invoke-interface {p1, v7, v1, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 348
    .restart local v0       #item:Landroid/view/MenuItem;
    const v3, -0x7ffffffe

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 349
    const v3, 0x7f020010

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onFragmentOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0027

    if-ne v0, v1, :cond_1

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThemeSourcePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    const-string v1, "root_directory"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v1, "ext_filter"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "zip"

    aput-object v3, v2, v4

    const-string v3, "mtz"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "ext_file_first"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v1, "back_to_parent_directory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0, v6}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0028

    if-ne v0, v1, :cond_5

    .line 370
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->resolveIntent()V

    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/thememanager/ThirdPartyPickersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "android.intent.extra.INTENT"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mPickerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 374
    const-string v1, "extra_resource_type"

    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    const-string v1, "extra_resolve_info_list"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mThirdAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 377
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 379
    :cond_2
    const-wide/16 v1, 0x4

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x2

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 381
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a002a

    if-ne v0, v1, :cond_0

    .line 386
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/thememanager/view/LockscreenConfigSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const-string v1, "META_DATA"

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-super {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->onResume()V

    .line 238
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->refreshCurrentUsingFlags()V

    .line 239
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->updateLockstyleSettingMenuStatus()V

    .line 241
    iget-boolean v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mFirstOnResume:Z

    if-eqz v0, :cond_0

    .line 242
    iput-boolean v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mFirstOnResume:Z

    .line 243
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mListHeaderViewHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->scrollBy(II)V

    goto :goto_0
.end method

.method protected onVisiableChanged(Z)V
    .locals 0
    .parameter "visiableForUser"

    .prologue
    .line 262
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->onVisiableChanged(Z)V

    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->refreshCurrentUsingFlags()V

    .line 266
    :cond_0
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "metaData"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->pickMetaData(Landroid/os/Bundle;)V

    .line 219
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    .line 220
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 221
    return-void
.end method

.method public setupUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-super {p0}, Lmiui/app/resourcebrowser/LocalResourceListFragment;->setupUI()V

    .line 63
    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/32 v4, 0x10000

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mResourceType:J

    const-wide/32 v4, 0x20000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mMetaData:Landroid/os/Bundle;

    const-string v3, "miui.app.resourcebrowser.USING_PICKER"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, header:Landroid/view/View;
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceListFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x60b0063

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 67
    .local v1, root:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 68
    invoke-direct {p0, v0}, Lcom/android/thememanager/LocalThemeResourceListFragment;->initClockPhotoCategoryHeader(Landroid/view/View;)V

    .line 70
    .end local v0           #header:Landroid/view/View;
    .end local v1           #root:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method
