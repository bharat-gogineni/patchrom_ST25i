.class Lcom/android/thememanager/ThemeResourceTabActivity$2;
.super Ljava/lang/Object;
.source "ThemeResourceTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ThemeResourceTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ThemeResourceTabActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ThemeResourceTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/thememanager/ThemeResourceTabActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/thememanager/ThemeResourceTabActivity$2;->this$0:Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/ThemeResourceTabActivity;->invalidateOptionsMenu()V

    .line 60
    return-void
.end method
