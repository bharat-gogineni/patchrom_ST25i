.class Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;
.super Lcom/miui/home/launcher/FolderInfo;
.source "SpriteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SpriteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpsideFolderInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/upsidescene/SpriteView;Lcom/miui/home/launcher/upsidescene/SpriteView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;-><init>(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 2
    .parameter "title"
    .parameter "context"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;->this$0:Lcom/miui/home/launcher/upsidescene/SpriteView;

    #getter for: Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->access$000(Lcom/miui/home/launcher/upsidescene/SpriteView;)Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;->getShortcuts()Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell$Shortcuts;->setFolderTitle(Ljava/lang/String;)Z

    .line 160
    return-void
.end method
