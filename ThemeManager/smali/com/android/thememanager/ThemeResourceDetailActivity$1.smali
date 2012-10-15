.class Lcom/android/thememanager/ThemeResourceDetailActivity$1;
.super Ljava/lang/Object;
.source "ThemeResourceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$1;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceDetailActivity$1;->this$0:Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeResourceDetailActivity;->invalidateOptionsMenu()V

    .line 46
    return-void
.end method
