.class Lcom/miui/home/launcher/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$1;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon$1;->this$0:Lcom/miui/home/launcher/FolderIcon;

    new-instance v1, Lcom/miui/home/launcher/FolderIcon$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$1$1;-><init>(Lcom/miui/home/launcher/FolderIcon$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderIcon;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 269
    return-void
.end method
