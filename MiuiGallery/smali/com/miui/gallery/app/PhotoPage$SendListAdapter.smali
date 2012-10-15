.class final Lcom/miui/gallery/app/PhotoPage$SendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SendListAdapter"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/PhotoPage;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1266
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->sCollator:Ljava/text/Collator;

    .line 1213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mIntent:Landroid/content/Intent;

    .line 1214
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1216
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mList:Ljava/util/List;

    .line 1217
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mList:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1218
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 1257
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .local v0, a:Landroid/content/pm/ResolveInfo;
    move-object v1, p2

    .line 1258
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1259
    .local v1, b:Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1260
    .local v2, sa:Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1261
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1262
    .local v3, sb:Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1264
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->sCollator:Ljava/text/Collator;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1224
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1228
    move-object v4, p2

    .line 1229
    .local v4, resultView:Landroid/view/View;
    if-nez v4, :cond_0

    .line 1230
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/miui/gallery/app/PhotoPage;->access$1400(Lcom/miui/gallery/app/PhotoPage;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040004

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1232
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1233
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1234
    .local v3, label:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1235
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    const v6, 0x7f0b0014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1236
    .local v5, tv:Landroid/widget/TextView;
    const v6, 0x7f0b0013

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1237
    .local v1, img:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1238
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    return-object v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1250
    .local v2, resolvedIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1251
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1252
    iget-object v3, p0, Lcom/miui/gallery/app/PhotoPage$SendListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v3, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1253
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1254
    return-void
.end method
