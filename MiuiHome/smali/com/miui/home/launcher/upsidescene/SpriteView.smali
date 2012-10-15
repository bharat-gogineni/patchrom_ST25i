.class public Lcom/miui/home/launcher/upsidescene/SpriteView;
.super Landroid/widget/FrameLayout;
.source "SpriteView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;
    }
.end annotation


# instance fields
.field private mContent:Landroid/view/View;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/upsidescene/SpriteView;)Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/upsidescene/SpriteView;)Lcom/miui/home/launcher/upsidescene/SceneScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/upsidescene/SpriteView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createFolder(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;[Landroid/content/ComponentName;)Landroid/view/View;
    .locals 12
    .parameter "shortcuts"
    .parameter "names"

    .prologue
    const/4 v11, 0x0

    .line 164
    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 165
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;

    invoke-direct {v4, p0, v11}, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;-><init>(Lcom/miui/home/launcher/upsidescene/SpriteView;Lcom/miui/home/launcher/upsidescene/SpriteView$1;)V

    .line 166
    .local v4, info:Lcom/miui/home/launcher/FolderInfo;
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->getFolderTitle()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 167
    iget-object v9, v4, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 168
    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v9}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0005

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/miui/home/launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 170
    :cond_0
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ComponentName;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 171
    .local v1, componentName:Landroid/content/ComponentName;
    new-instance v8, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v8}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 172
    .local v8, shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, v8, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 173
    iget-object v9, v8, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    iget-object v9, v8, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 175
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_1

    .line 170
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {v4, v8}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_1

    .line 181
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v8           #shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;
    :cond_2
    const v9, 0x7f03000d

    iget-object v10, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v10}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v10

    invoke-static {v9, v10, v11, v4}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object v2

    .line 182
    .local v2, folderIcon:Lcom/miui/home/launcher/FolderIcon;
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 183
    new-instance v9, Lcom/miui/home/launcher/upsidescene/SpriteView$1;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/upsidescene/SpriteView$1;-><init>(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    invoke-virtual {v2, v9}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v2
.end method

.method private createShortcut(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Landroid/view/View;
    .locals 9
    .parameter "cell"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getShortcuts()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    move-result-object v5

    .line 134
    .local v5, shortcuts:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->getComponentNames()[Landroid/content/ComponentName;

    move-result-object v0

    .line 135
    .local v0, names:[Landroid/content/ComponentName;
    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 136
    invoke-direct {p0, v5, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createFolder(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;[Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v4

    .line 152
    :cond_0
    :goto_0
    return-object v4

    .line 138
    :cond_1
    new-instance v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v3}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 139
    .local v3, shortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iput-object v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 140
    iget-object v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 141
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 142
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 143
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 148
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/Launcher;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v7

    invoke-static {v6, v7, v4, v3}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->fromXml(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;

    move-result-object v4

    .line 151
    .local v4, shortcutView:Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->isShowIcon()Z

    move-result v6

    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->isShowTitle()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/miui/home/launcher/upsidescene/SpriteShortcutIcon;->setIconTitleVisible(ZZ)V

    goto :goto_0
.end method

.method private createWidget(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Landroid/view/View;
    .locals 12
    .parameter "cell"

    .prologue
    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getWidget()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;

    move-result-object v7

    .line 194
    .local v7, widget:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;
    if-nez v7, :cond_0

    .line 195
    const/4 v5, 0x0

    .line 237
    :goto_0
    return-object v5

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    move-object v9, v3

    .line 237
    check-cast v9, Landroid/view/View;

    move-object v5, v9

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 201
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getId()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    .line 203
    .local v8, widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v9}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getId()I

    move-result v11

    invoke-virtual {v9, v10, v11, v8}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    .line 206
    .local v5, hostView:Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getId()I

    move-result v9

    invoke-virtual {v5, v9, v8}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 210
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v5           #hostView:Landroid/appwidget/AppWidgetHostView;
    .end local v8           #widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_1
    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getGadgetType()I

    move-result v9

    invoke-static {v9}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v4

    .line 211
    .local v4, gadgetInfo:Lcom/miui/home/launcher/gadget/GadgetInfo;
    if-eqz v4, :cond_1

    .line 212
    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v9}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v9, v4, v10}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/app/Activity;Lcom/miui/home/launcher/gadget/GadgetInfo;I)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object v3

    .line 214
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 215
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 216
    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getLocation()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, location:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 218
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v2, b:Landroid/os/Bundle;
    const-string v9, "miui.app.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v3, v2}, Lcom/miui/home/launcher/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    .line 222
    .end local v2           #b:Landroid/os/Bundle;
    :cond_2
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 227
    .end local v4           #gadgetInfo:Lcom/miui/home/launcher/gadget/GadgetInfo;
    .end local v6           #location:Ljava/lang/String;
    :pswitch_2
    new-instance v1, Lcom/miui/home/launcher/gadget/AwesomeGadget;

    iget-object v9, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/miui/home/launcher/gadget/AwesomeGadget;-><init>(Landroid/content/Context;)V

    .line 228
    .local v1, awesomeView:Lcom/miui/home/launcher/gadget/AwesomeGadget;
    invoke-virtual {v7}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Widget;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->initConfig(Ljava/lang/String;)V

    .line 229
    move-object v3, v1

    .line 230
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 231
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 232
    invoke-interface {v3}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshGadgetEditMode()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v1, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .line 109
    .local v0, gadget:Lcom/miui/home/launcher/gadget/Gadget;
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    .line 114
    .end local v0           #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v0       #gadget:Lcom/miui/home/launcher/gadget/Gadget;
    :cond_1
    invoke-interface {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setTouchedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public exitEditMode()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setClickable(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshEditState()V

    .line 96
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshGadgetEditMode()V

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->invalidate()V

    .line 98
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getSpriteData()Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    return-object v0
.end method

.method public gotoEditMode()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setClickable(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshEditState()V

    .line 89
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshGadgetEditMode()V

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->invalidate()V

    .line 91
    return-void
.end method

.method public isEditable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getType()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 250
    :goto_0
    return v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public rebuildContentView()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 271
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    invoke-virtual {v6}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 332
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown sprite type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    invoke-virtual {v8}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 273
    :pswitch_0
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v5, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;

    .line 274
    .local v5, pictureSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 275
    .local v4, imgView:Landroid/widget/ImageView;
    invoke-virtual {v5}, Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    iput-object v4, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    .line 278
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 335
    .end local v4           #imgView:Landroid/widget/ImageView;
    .end local v5           #pictureSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->removeAllViews()V

    .line 336
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 337
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v6, v10, v10}, Lcom/miui/home/launcher/upsidescene/SpriteView;->addView(Landroid/view/View;II)V

    .line 340
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    instance-of v6, v6, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v6, :cond_2

    .line 341
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    check-cast v6, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v6}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 344
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshGadgetEditMode()V

    .line 345
    return-void

    .line 282
    :pswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v1, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;

    .line 283
    .local v1, buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;
    new-instance v0, Landroid/widget/Button;

    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, button:Landroid/widget/Button;
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 285
    .local v3, drawable:Landroid/graphics/drawable/StateListDrawable;
    sget-object v6, Landroid/view/View;->EMPTY_STATE_SET:[I

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->getNormal()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 287
    sget-object v6, Landroid/view/View;->PRESSED_STATE_SET:[I

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;->getPressed()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    new-instance v6, Lcom/miui/home/launcher/upsidescene/SpriteView$2;

    invoke-direct {v6, p0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteView$2;-><init>(Lcom/miui/home/launcher/upsidescene/SpriteView;Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    goto :goto_0

    .line 306
    .end local v0           #button:Landroid/widget/Button;
    .end local v1           #buttonSprite:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;
    .end local v3           #drawable:Landroid/graphics/drawable/StateListDrawable;
    :pswitch_2
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v2, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    .line 307
    .local v2, cell:Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getContentType()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 322
    :goto_1
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_3

    .line 323
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getRotation()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setRotation(F)V

    .line 325
    :cond_3
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getScale()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_0

    .line 326
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getScale()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleX(F)V

    .line 327
    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getScale()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleY(F)V

    goto/16 :goto_0

    .line 309
    :pswitch_3
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    goto :goto_1

    .line 313
    :pswitch_4
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v6, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createShortcut(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    goto :goto_1

    .line 319
    :pswitch_5
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v6, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createWidget(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    goto :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 307
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public refreshEditState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setPadding(IIII)V

    .line 130
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void

    .line 122
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 128
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0
    .parameter "sceneScreen"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 61
    return-void
.end method

.method public setSpriteData(Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;)V
    .locals 0
    .parameter "spriteData"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->rebuildContentView()V

    .line 70
    return-void
.end method

.method public updateGadgetConfig(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extras"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    const-string v1, "miui.app.resourcebrowser.PICKED_RESOURCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->updateInternalGadget(Ljava/lang/String;)Z

    .line 268
    :cond_0
    return-void
.end method
