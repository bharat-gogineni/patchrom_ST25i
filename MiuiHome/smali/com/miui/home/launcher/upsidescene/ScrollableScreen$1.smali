.class Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;
.super Ljava/lang/Object;
.source "ScrollableScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setScreenData(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

.field final synthetic val$screenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;->val$screenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$1;->val$screenData:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getHome()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setCurrentScreen(I)V

    .line 215
    return-void
.end method
