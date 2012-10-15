.class public Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StorageExplorerPage.java"

# interfaces
.implements Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/StorageExplorerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileListAdapter"
.end annotation


# instance fields
.field private mFolderIcon:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/gallery/app/StorageExplorerPage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/StorageExplorerPage;)V
    .locals 2
    .parameter

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1031
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1036
    invoke-virtual {p1}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    .line 1037
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v0}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1029
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v1}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v0

    .line 1052
    .local v0, object:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1062
    if-nez p2, :cond_0

    .line 1063
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040013

    invoke-virtual {v5, v6, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1065
    const v5, 0x7f0b002c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 1067
    .local v3, previewRegion:Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1068
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->mFolderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1071
    .end local v3           #previewRegion:Landroid/widget/FrameLayout;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1072
    iget-object v5, p0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static {v5}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getMeta(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 1073
    .local v1, fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    if-nez v1, :cond_1

    .line 1074
    const-string v5, "fileInfo should not be null"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    :cond_1
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isModified()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    .line 1077
    .local v0, allDataLoaded:Z
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->onAllDataLoaded(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/view/View;)V

    .line 1078
    if-nez v0, :cond_3

    .line 1079
    invoke-static {v1, p0, p2}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->pushLoadAllDataTask(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 1082
    :cond_3
    add-int/lit8 v2, p1, 0x7

    .line 1083
    .local v2, nextPos:I
    invoke-virtual {p0}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1084
    invoke-virtual {p0, v2}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isModified()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1086
    invoke-static {v1, v7, v7}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->pushLoadAllDataTask(Lcom/miui/gallery/StorageExplorer/BaseMeta;Lcom/miui/gallery/StorageExplorer/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 1092
    :cond_4
    :goto_0
    return-object p2

    .line 1088
    :cond_5
    invoke-static {v1, v4}, Lcom/miui/gallery/StorageExplorer/ThumbnailCacheManager;->fetchThumbnail(Lcom/miui/gallery/StorageExplorer/BaseMeta;I)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x1

    return v0
.end method

.method public onAllDataLoaded(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/view/View;)V
    .locals 20
    .parameter "meta"
    .parameter "convertView"

    .prologue
    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1098
    .local v11, position:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->getItem(I)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1180
    :goto_0
    return-void

    :cond_0
    move-object/from16 v6, p1

    .line 1101
    check-cast v6, Lcom/miui/gallery/StorageExplorer/FileInfo;

    .line 1102
    .local v6, fileInfo:Lcom/miui/gallery/StorageExplorer/FileInfo;
    const v16, 0x7f0b003e

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1103
    .local v9, name:Landroid/widget/TextView;
    iget-object v10, v6, Lcom/miui/gallery/StorageExplorer/FileInfo;->mFileName:Ljava/lang/String;

    .line 1104
    .local v10, nameText:Ljava/lang/String;
    instance-of v0, v6, Lcom/miui/gallery/StorageExplorer/DirInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object v4, v6

    .line 1105
    check-cast v4, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 1106
    .local v4, dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v16, v0

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1300(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/util/StorageHelper;

    move-result-object v16

    iget-object v0, v4, Lcom/miui/gallery/StorageExplorer/DirInfo;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/gallery/util/StorageHelper;->isVolumeRoot(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v16, v0

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mStorageHelper:Lcom/miui/gallery/util/StorageHelper;
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1300(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/util/StorageHelper;

    move-result-object v16

    iget-object v0, v4, Lcom/miui/gallery/StorageExplorer/DirInfo;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/miui/gallery/util/StorageHelper;->getVolumeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1110
    .end local v4           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    :cond_1
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object v4, v6

    .line 1113
    check-cast v4, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 1114
    .restart local v4       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    if-nez v4, :cond_3

    .line 1115
    const/16 v16, 0x0

    const-string v17, "should be DirInfo"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/miui/gallery/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    .end local v4           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    :goto_1
    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isDir()Z

    move-result v16

    if-eqz v16, :cond_8

    move-object v4, v6

    .line 1126
    check-cast v4, Lcom/miui/gallery/StorageExplorer/DirInfo;

    .line 1127
    .restart local v4       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getBriefText(Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1400(Lcom/miui/gallery/app/StorageExplorerPage;Lcom/miui/gallery/StorageExplorer/DirInfo;)Ljava/lang/String;

    move-result-object v14

    .line 1128
    .local v14, text:Ljava/lang/String;
    const v16, 0x7f0b003f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1129
    .local v7, infoView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1130
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1136
    :goto_2
    const v16, 0x7f0b002c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 1138
    .local v13, previewRegion:Landroid/widget/FrameLayout;
    const v16, 0x7f0b003c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    .line 1140
    .local v12, previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/DirInfo;->getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;

    move-result-object v2

    .line 1141
    .local v2, cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    if-eqz v2, :cond_7

    .line 1142
    const v16, 0x7f020051

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1143
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setVisibility(I)V

    .line 1144
    invoke-virtual {v2}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->isModified()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1145
    const/4 v2, 0x0

    .line 1147
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f020052

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v2, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1117
    .end local v2           #cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .end local v7           #infoView:Landroid/widget/TextView;
    .end local v12           #previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .end local v13           #previewRegion:Landroid/widget/FrameLayout;
    .end local v14           #text:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Lcom/miui/gallery/StorageExplorer/DirInfo;->isRecentAlbum()Z

    move-result v8

    .line 1118
    .local v8, isRecentAlbum:Z
    const v16, 0x7f0b0040

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v8, :cond_4

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const/16 v16, 0x8

    goto :goto_3

    .line 1122
    .end local v4           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .end local v8           #isRecentAlbum:Z
    :cond_5
    const v16, 0x7f0b0040

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1132
    .restart local v4       #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .restart local v7       #infoView:Landroid/widget/TextView;
    .restart local v14       #text:Ljava/lang/String;
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1150
    .restart local v2       #cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .restart local v12       #previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .restart local v13       #previewRegion:Landroid/widget/FrameLayout;
    :cond_7
    const v16, 0x7f02004d

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1151
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1154
    .end local v2           #cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .end local v4           #dirInfo:Lcom/miui/gallery/StorageExplorer/DirInfo;
    .end local v7           #infoView:Landroid/widget/TextView;
    .end local v12           #previewImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .end local v13           #previewRegion:Landroid/widget/FrameLayout;
    .end local v14           #text:Ljava/lang/String;
    :cond_8
    const v16, 0x7f0b003f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1155
    .local v15, txtView:Landroid/widget/TextView;
    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v17, v0

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1156
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v16, v0

    #calls: Lcom/miui/gallery/app/StorageExplorerPage;->getContext()Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/miui/gallery/app/StorageExplorerPage;->access$300(Lcom/miui/gallery/app/StorageExplorerPage;)Landroid/content/Context;

    move-result-object v16

    iget-wide v0, v6, Lcom/miui/gallery/StorageExplorer/FileInfo;->mDateModified:J

    move-wide/from16 v17, v0

    const v19, 0x21515

    invoke-static/range {v16 .. v19}, Lmiui/util/MiuiDateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 1159
    .local v3, dateString:Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    .end local v3           #dateString:Ljava/lang/String;
    :goto_4
    const v16, 0x7f0b002c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 1169
    .restart local v13       #previewRegion:Landroid/widget/FrameLayout;
    const v16, 0x7f020079

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1171
    const v16, 0x7f0b003c

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;

    .line 1173
    .local v5, fileImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setVisibility(I)V

    .line 1174
    invoke-virtual {v6}, Lcom/miui/gallery/StorageExplorer/FileInfo;->isModified()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1175
    const/4 v6, 0x0

    .line 1177
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/miui/gallery/app/StorageExplorerPage;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f02007a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Lcom/miui/gallery/StorageExplorer/AutoFitImageView;->setMeta(Lcom/miui/gallery/StorageExplorer/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1160
    .end local v5           #fileImage:Lcom/miui/gallery/StorageExplorer/AutoFitImageView;
    .end local v13           #previewRegion:Landroid/widget/FrameLayout;
    :cond_a
    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/app/StorageExplorerPage$FileListAdapter;->this$0:Lcom/miui/gallery/app/StorageExplorerPage;

    move-object/from16 v17, v0

    #getter for: Lcom/miui/gallery/app/StorageExplorerPage;->mBucket:Lcom/miui/gallery/StorageExplorer/FileBucket;
    invoke-static/range {v17 .. v17}, Lcom/miui/gallery/app/StorageExplorerPage;->access$1200(Lcom/miui/gallery/app/StorageExplorerPage;)Lcom/miui/gallery/StorageExplorer/FileBucket;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/miui/gallery/StorageExplorer/FileBucket;->getSortOrder()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 1161
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    iget-wide v0, v6, Lcom/miui/gallery/StorageExplorer/FileInfo;->mSize:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/miui/gallery/common/Utils;->getFormatedSizeString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1164
    :cond_b
    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
