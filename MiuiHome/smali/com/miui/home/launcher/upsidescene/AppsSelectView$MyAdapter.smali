.class Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsSelectView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/AppsSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/ShortcutInfo;>;"
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->mShortcuts:Ljava/util/List;

    .line 52
    return-void
.end method

.method private setSelected(Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter "icon"
    .parameter "isSelected"

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f070073

    .line 75
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    .line 79
    const v0, 0x7f0200c8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->mShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->mShortcuts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->mShortcuts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 91
    .local v2, shortcut:Lcom/miui/home/launcher/ShortcutInfo;
    if-eqz p2, :cond_0

    .line 92
    move-object v0, p2

    .line 97
    .local v0, app:Landroid/view/View;
    :goto_0
    const v3, 0x7f070014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, label:Landroid/widget/TextView;
    iget-object v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {v4}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    #getter for: Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mIconCache:Lcom/miui/home/launcher/IconCache;
    invoke-static {v5}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->access$000(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)Lcom/miui/home/launcher/IconCache;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/ShortcutInfo;->getIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6, v3, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v3, v0

    .line 102
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    #getter for: Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;
    invoke-static {v4}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->access$100(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->setSelected(Landroid/view/ViewGroup;Z)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    return-object v0

    .line 94
    .end local v0           #app:Landroid/view/View;
    .end local v1           #label:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #app:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 110
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    #getter for: Lcom/miui/home/launcher/upsidescene/AppsSelectView;->mAppsGrid:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->access$100(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->setSelected(Landroid/view/ViewGroup;Z)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    #calls: Lcom/miui/home/launcher/upsidescene/AppsSelectView;->updateTitle()V
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->access$200(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)V

    .line 112
    return-void
.end method
