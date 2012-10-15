.class Lcom/android/thememanager/WallpaperDetailActivity$5;
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
    .line 190
    iput-object p1, p0, Lcom/android/thememanager/WallpaperDetailActivity$5;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/thememanager/WallpaperDetailActivity$5;->this$0:Lcom/android/thememanager/WallpaperDetailActivity;

    #calls: Lcom/android/thememanager/WallpaperDetailActivity;->enterPreviewMode()V
    invoke-static {v0}, Lcom/android/thememanager/WallpaperDetailActivity;->access$100(Lcom/android/thememanager/WallpaperDetailActivity;)V

    .line 194
    return-void
.end method
