.class Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/PhotoPage;)V
    .locals 4
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    .line 1107
    iget-object v0, p1, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v0}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001a

    const v2, 0x7f0b006c

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mMoreListInfo:[Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;
    invoke-static {p1}, Lcom/miui/gallery/app/PhotoPage;->access$1300(Lcom/miui/gallery/app/PhotoPage;)[Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1109
    return-void
.end method

.method private isLocationValid()Z
    .locals 6

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v2}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 1180
    .local v0, item:Lcom/miui/gallery/data/MediaItem;
    const/4 v2, 0x2

    new-array v1, v2, [D

    .line 1181
    .local v1, latlng:[D
    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaItem;->getLatLong([D)V

    .line 1182
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1113
    move-object v0, p2

    .line 1114
    .local v0, resultView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/miui/gallery/app/PhotoPage;->access$1400(Lcom/miui/gallery/app/PhotoPage;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1118
    :cond_0
    const v2, 0x7f0b006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1119
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;

    iget v2, v2, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;->mTitleId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1120
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->isLocationValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1123
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1125
    :cond_1
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 1132
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v3

    .line 1133
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getContentUriForGallery()Landroid/net/Uri;

    move-result-object v2

    .line 1134
    if-nez v2, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v0

    .line 1136
    const/4 v1, 0x0

    .line 1137
    const/16 v4, 0x8

    .line 1138
    packed-switch p3, :pswitch_data_0

    :cond_2
    :goto_1
    move-object v0, v2

    .line 1171
    :goto_2
    if-eqz v1, :cond_0

    .line 1172
    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 1174
    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1140
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v1, v1, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v5, Lcom/miui/gallery/app/Wallpaper;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v1, v0

    move-object v0, v2

    .line 1142
    goto :goto_2

    .line 1144
    :pswitch_1
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->getContentUriForExternal(Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;
    invoke-static {v0, v3}, Lcom/miui/gallery/app/PhotoPage;->access$1500(Lcom/miui/gallery/app/PhotoPage;Lcom/miui/gallery/data/MediaItem;)Landroid/net/Uri;

    move-result-object v1

    .line 1145
    if-eqz v1, :cond_0

    .line 1147
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.activities.AttachPhotoActivity"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1152
    const-string v2, "mimeType"

    invoke-virtual {v3}, Lcom/miui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 1153
    goto :goto_2

    .line 1155
    :pswitch_2
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #getter for: Lcom/miui/gallery/app/PhotoPage;->mModel:Lcom/miui/gallery/app/PhotoPage$Model;
    invoke-static {v0}, Lcom/miui/gallery/app/PhotoPage;->access$500(Lcom/miui/gallery/app/PhotoPage;)Lcom/miui/gallery/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/miui/gallery/data/MediaItem;

    move-result-object v0

    .line 1156
    const/4 v5, 0x2

    new-array v5, v5, [D

    .line 1157
    invoke-virtual {v0, v5}, Lcom/miui/gallery/data/MediaItem;->getLatLong([D)V

    .line 1158
    const/4 v0, 0x0

    aget-wide v6, v5, v0

    const/4 v0, 0x1

    aget-wide v8, v5, v0

    invoke-static {v6, v7, v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-static {v0, v6, v7, v8, v9}, Lcom/miui/gallery/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)Z

    move-result v0

    .line 1160
    if-nez v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    .line 1162
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    iget-object v0, v0, Lcom/miui/gallery/app/PhotoPage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v5, 0x7f0d0053

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    move-object v0, v2

    .line 1164
    goto/16 :goto_2

    .line 1167
    :pswitch_3
    iget-object v5, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    #calls: Lcom/miui/gallery/app/PhotoPage;->showDetails(I)V
    invoke-static {v5, v0}, Lcom/miui/gallery/app/PhotoPage;->access$1600(Lcom/miui/gallery/app/PhotoPage;I)V

    .line 1168
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoPage$MoreListAdapter;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoPage;->dismissPopupWindow()V

    goto/16 :goto_1

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
