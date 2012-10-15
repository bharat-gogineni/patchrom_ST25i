.class public Lcom/miui/home/launcher/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IconCache$1;,
        Lcom/miui/home/launcher/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mBubble:Lcom/miui/home/launcher/Utilities$BubbleText;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/miui/home/launcher/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/miui/home/launcher/LauncherApplication;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    .line 57
    iput-object p1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Lcom/miui/home/launcher/LauncherApplication;

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    new-instance v0, Lcom/miui/home/launcher/Utilities$BubbleText;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/Utilities$BubbleText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mBubble:Lcom/miui/home/launcher/Utilities$BubbleText;

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/miui/home/launcher/IconCache$CacheEntry;
    .locals 7
    .parameter "componentName"
    .parameter "info"
    .parameter "isShortcut"

    .prologue
    .line 138
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/IconCache$CacheEntry;

    .line 139
    .local v2, entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    if-nez v2, :cond_1

    .line 140
    new-instance v2, Lcom/miui/home/launcher/IconCache$CacheEntry;

    .end local v2           #entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/miui/home/launcher/IconCache$CacheEntry;-><init>(Lcom/miui/home/launcher/IconCache$1;)V

    .line 142
    .restart local v2       #entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 146
    iget-object v4, v2, Lcom/miui/home/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 147
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/miui/home/launcher/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 150
    :cond_0
    if-eqz p3, :cond_2

    .line 151
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 152
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 153
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 164
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-object v2

    .line 157
    :cond_2
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 158
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mContext:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {v1, v4}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mContext:Lcom/miui/home/launcher/LauncherApplication;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 128
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 133
    :goto_0
    return-object v1

    .line 132
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/home/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/miui/home/launcher/IconCache$CacheEntry;

    move-result-object v0

    .line 133
    .local v0, entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/miui/home/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 134
    .end local v0           #entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "intent"
    .parameter "itemType"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    iget-object v5, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 113
    :try_start_0
    iget-object v6, p0, Lcom/miui/home/launcher/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 114
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 116
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v5

    .line 122
    :goto_0
    return-object v3

    .line 120
    :cond_1
    if-ne p2, v3, :cond_2

    :goto_1
    invoke-direct {p0, v0, v2, v3}, Lcom/miui/home/launcher/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/miui/home/launcher/IconCache$CacheEntry;

    move-result-object v1

    .line 122
    .local v1, entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    iget-object v3, v1, Lcom/miui/home/launcher/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v5

    goto :goto_0

    .line 123
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/miui/home/launcher/IconCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #component:Landroid/content/ComponentName;
    .restart local v2       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    move v3, v4

    .line 120
    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 89
    iget-object v4, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 90
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v2, toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 92
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 96
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 97
    .restart local v0       #component:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/miui/home/launcher/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    return-void
.end method

.method public updateDefaultIcon()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/miui/home/launcher/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 70
    return-void
.end method
