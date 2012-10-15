.class Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;
.super Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;
.source "ComponentCategoryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/ComponentCategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/thememanager/view/ComponentCategoryView;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/view/ComponentCategoryView;Landroid/content/Context;Ljava/util/List;Lcom/android/thememanager/view/FixedHeightGridView;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .parameter "fg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/thememanager/view/FixedHeightGridView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p3, flags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    .line 86
    invoke-direct {p0, p4}, Lcom/android/thememanager/view/FixedHeightGridView$FixedGridAdapter;-><init>(Lcom/android/thememanager/view/FixedHeightGridView;)V

    .line 87
    iput-object p2, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-object p3, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    .line 89
    return-void
.end method


# virtual methods
.method public getChildView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    move-object v7, p2

    .line 109
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_0

    .line 110
    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030005

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 113
    :cond_0
    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 115
    .local v0, componentFlag:J
    const v8, 0x7f07000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 116
    .local v6, titleView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 119
    .local v5, summaryView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "title-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0a000b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, summary:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 124
    :cond_1
    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    #getter for: Lcom/android/thememanager/view/ComponentCategoryView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/thememanager/view/ComponentCategoryView;->access$100(Lcom/android/thememanager/view/ComponentCategoryView;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v1}, Lcom/android/thememanager/UIHelper;->computeCurrentUsingPath(Landroid/content/Context;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, currentUsingPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "path-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, recordUsingPath:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 128
    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0a000c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    .end local v2           #currentUsingPath:Ljava/lang/String;
    .end local v3           #recordUsingPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    return-object v7
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method
