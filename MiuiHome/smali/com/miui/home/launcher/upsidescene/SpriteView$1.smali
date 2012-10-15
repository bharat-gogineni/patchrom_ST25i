.class Lcom/miui/home/launcher/upsidescene/SpriteView$1;
.super Ljava/lang/Object;
.source "SpriteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SpriteView;->createFolder(Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;[Landroid/content/ComponentName;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$1;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$1;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    #getter for: Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->access$200(Lcom/miui/home/launcher/upsidescene/SpriteView;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderInfo;

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    .end local p1
    invoke-virtual {v1, v0, p1}, Lcom/miui/home/launcher/Launcher;->openFolder(Lcom/miui/home/launcher/FolderInfo;Landroid/view/View;)V

    .line 186
    return-void
.end method
