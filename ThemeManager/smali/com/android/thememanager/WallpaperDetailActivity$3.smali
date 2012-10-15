.class Lcom/android/thememanager/WallpaperDetailActivity$3;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 173
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$3;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$3;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->quitPreviewMode(Z)V
    invoke-static {v0, v1}, Lcom/android/thememanager/WallpaperDetailActivity;->access$000(Lcom/android/thememanager/WallpaperDetailActivity;Z)V

    .line 179
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
