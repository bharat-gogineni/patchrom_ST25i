.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1501
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    if-eq v4, p1, :cond_1

    .line 1502
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1503
    .local v1, newDefaultScreenId:J
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #setter for: Lcom/miui/home/launcher/Workspace;->mDefaultScreenId:J
    invoke-static {v4, v1, v2}, Lcom/miui/home/launcher/Workspace;->access$802(Lcom/miui/home/launcher/Workspace;J)J

    .line 1506
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1507
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1508
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_default_screen"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1512
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1513
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02008d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1515
    :cond_0
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    #setter for: Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4, p1}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->access$702(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1516
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    #getter for: Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02008e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1518
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #newDefaultScreenId:J
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
