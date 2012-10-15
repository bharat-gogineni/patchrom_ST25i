.class Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$1;
.super Lcom/android/thememanager/util/MoveAnimation;
.source "WallpaperView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->udpateShowingArea(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;


# direct methods
.method constructor <init>(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$1;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    invoke-direct {p0}, Lcom/android/thememanager/util/MoveAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap$1;->this$1:Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;

    #calls: Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->horizontallyMoveOffset(I)V
    invoke-static {v0, p1}, Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;->access$1400(Lcom/android/thememanager/view/WallpaperView$WallpaperBitmap;I)V

    .line 468
    return-void
.end method
