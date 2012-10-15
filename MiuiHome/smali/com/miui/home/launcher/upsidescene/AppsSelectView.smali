.class public Lcom/miui/home/launcher/upsidescene/AppsSelectView;
.super Landroid/widget/LinearLayout;
.source "AppsSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;
    }
.end annotation


# instance fields
.field private mAppsGrid:Landroid/widget/GridView;

.field private mBtnCancel:Landroid/widget/TextView;

.field private mBtnOK:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mIconCache:Lcom/miui/home/launcher/IconCache;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)Lcom/miui/home/launcher/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->updateTitle()V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->closeSelectApps()V

    .line 187
    return-void
.end method

.method private updateTitle()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->close()V

    .line 168
    return-void
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/IconCache;Landroid/content/pm/ResolveInfo;)Lcom/miui/home/launcher/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "iconCache"
    .parameter "resolveInfo"

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, icon:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 230
    .local v3, info:Lcom/miui/home/launcher/ShortcutInfo;
    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 231
    .local v4, packageName:Ljava/lang/String;
    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 232
    .local v0, className:Ljava/lang/String;
    const/4 v1, 0x0

    .line 233
    .local v1, cn:Landroid/content/ComponentName;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 234
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .restart local v1       #cn:Landroid/content/ComponentName;
    :cond_0
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 238
    invoke-virtual {p2, v1, p3}, Lcom/miui/home/launcher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 241
    if-nez v2, :cond_1

    .line 242
    invoke-virtual {p2}, Lcom/miui/home/launcher/IconCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 243
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->usingFallbackIcon:Z

    .line 245
    :cond_1
    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 248
    iget-object v5, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 251
    iget-object v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_2

    .line 252
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 254
    :cond_2
    const/4 v5, 0x0

    iput v5, v3, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    .line 255
    return-object v3
.end method

.method public init(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)V
    .locals 19
    .parameter "owner"
    .parameter "data"

    .prologue
    .line 194
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/miui/home/launcher/LauncherApplication;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/home/launcher/LauncherApplication;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;

    .line 196
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    .local v10, mainIntent:Landroid/content/Intent;
    const-string v17, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 199
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 201
    .local v8, installedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v7, installed:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/ShortcutInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 203
    .local v14, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1, v14}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getShortcutInfo(Landroid/content/pm/PackageManager;Lcom/miui/home/launcher/IconCache;Landroid/content/pm/ResolveInfo;)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v15

    .line 204
    .local v15, shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v14           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v15           #shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v7}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;-><init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;Ljava/util/List;)V

    .line 207
    .local v2, adapter:Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getShortcuts()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    move-result-object v16

    .line 210
    .local v16, shortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;
    if-eqz v16, :cond_3

    .line 211
    invoke-virtual/range {v16 .. v16}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->getComponentNames()[Landroid/content/ComponentName;

    move-result-object v12

    .line 212
    .local v12, names:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .end local v5           #i$:Ljava/util/Iterator;
    .local v4, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/GridView;->getCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/ShortcutInfo;

    .line 214
    .local v6, info:Lcom/miui/home/launcher/ShortcutInfo;
    move-object v3, v12

    .local v3, arr$:[Landroid/content/ComponentName;
    array-length v9, v3

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v9, :cond_1

    aget-object v11, v3, v5

    .line 215
    .local v11, name:Landroid/content/ComponentName;
    iget-object v0, v6, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 212
    .end local v11           #name:Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 214
    .restart local v11       #name:Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 222
    .end local v3           #arr$:[Landroid/content/ComponentName;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #info:Lcom/miui/home/launcher/ShortcutInfo;
    .end local v9           #len$:I
    .end local v11           #name:Landroid/content/ComponentName;
    .end local v12           #names:[Landroid/content/ComponentName;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->updateTitle()V

    .line 223
    return-void
.end method

.method public ok()V
    .locals 5

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->close()V

    .line 154
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 155
    .local v2, selected:Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v1, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 158
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v3, v3, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onSelectApps(Ljava/util/Collection;)V

    .line 164
    .end local v0           #i:I
    .end local v1           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 130
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mContainer:Landroid/view/View;

    .line 131
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mTitle:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mBtnOK:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mBtnCancel:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mBtnOK:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$1;-><init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mBtnCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/home/launcher/upsidescene/AppsSelectView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$2;-><init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->setFocusable(Z)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->setFocusableInTouchMode(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->requestFocus()Z

    .line 150
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 178
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->cancel()V

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->cancel()V

    .line 173
    const/4 v0, 0x1

    return v0
.end method
