.class Lcom/android/thememanager/WallpaperDetailActivity$8;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/WallpaperDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/WallpaperDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 265
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 267
    .local v2, popView:Landroid/view/View;
    const v4, 0x7f070029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 268
    .local v1, list:Landroid/widget/ListView;
    new-instance v0, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;

    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {v0, v4}, Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;-><init>(Lcom/android/thememanager/WallpaperDetailActivity;)V

    .line 269
    .local v0, adapter:Lcom/android/thememanager/WallpaperDetailActivity$MenuAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v2, v7, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    #setter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4, v5}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1502(Lcom/android/thememanager/WallpaperDetailActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 278
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 279
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-virtual {v6}, Lcom/android/thememanager/WallpaperDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    const v5, 0x7f0b0004

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 281
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    new-instance v5, Lcom/android/thememanager/WallpaperDetailActivity$8$1;

    invoke-direct {v5, p0}, Lcom/android/thememanager/WallpaperDetailActivity$8$1;-><init>(Lcom/android/thememanager/WallpaperDetailActivity$8;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 286
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 288
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1600(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1600(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int v3, v4, v5

    .line 289
    .local v3, yOff:I
    iget-object v4, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1500(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/android/thememanager/WallpaperDetailActivity$8;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mOperateBarView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/thememanager/WallpaperDetailActivity;->access$1600(Lcom/android/thememanager/WallpaperDetailActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/16 v6, 0x55

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 290
    return-void
.end method
