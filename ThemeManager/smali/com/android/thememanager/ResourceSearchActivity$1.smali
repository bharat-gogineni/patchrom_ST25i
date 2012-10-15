.class Lcom/android/thememanager/ResourceSearchActivity$1;
.super Ljava/lang/Object;
.source "ResourceSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ResourceSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ResourceSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ResourceSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/thememanager/ResourceSearchActivity$1;->this$0:Lcom/android/thememanager/ResourceSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/thememanager/ResourceSearchActivity$1;->this$0:Lcom/android/thememanager/ResourceSearchActivity;

    invoke-virtual {v0}, Lcom/android/thememanager/ResourceSearchActivity;->onSearchRequested()Z

    .line 89
    return-void
.end method
