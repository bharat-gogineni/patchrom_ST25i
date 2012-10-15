.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;
.super Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Ljava/lang/Object;Lcom/miui/home/launcher/LauncherModel$Callbacks;II)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput p4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$start:I

    iput p5, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$chunkSize:I

    iget-object v0, p1, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;-><init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->this$1:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$oldCallbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/miui/home/launcher/LauncherModel$Callbacks;)Lcom/miui/home/launcher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1330
    .local v0, callbacks:Lcom/miui/home/launcher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$start:I

    iget v3, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$start:I

    iget v4, p0, Lcom/miui/home/launcher/LauncherModel$LoaderTask$10;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/home/launcher/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    .line 1333
    :cond_0
    return-void
.end method
