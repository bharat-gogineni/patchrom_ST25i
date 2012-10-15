.class Lcom/android/thememanager/WallpaperDetailActivity$11;
.super Ljava/lang/Object;
.source "WallpaperDetailActivity.java"

# interfaces
.implements Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/WallpaperDetailActivity;->getSliderMoveListener()Lcom/android/thememanager/view/HorzontalSliderView$SliderMoveListener;
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
    .line 566
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$11;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public movePercent(FZ)V
    .locals 1
    .parameter "movePercentFromCenter"
    .parameter "stopMove"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$11;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #getter for: Lcom/android/thememanager/WallpaperDetailActivity;->mWallpaperView:Lcom/android/thememanager/view/WallpaperView;
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$2500(Lcom/android/thememanager/WallpaperDetailActivity;)Lcom/android/thememanager/view/WallpaperView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/thememanager/view/WallpaperView;->updateCurrentWallpaperShowingArea(FZ)V

    .line 570
    return-void
.end method
