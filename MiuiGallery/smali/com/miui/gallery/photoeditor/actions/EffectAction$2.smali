.class Lcom/miui/gallery/photoeditor/actions/EffectAction$2;
.super Ljava/lang/Object;
.source "EffectAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/EffectAction;->end(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;

.field final synthetic val$runnableOnODone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$2;->val$runnableOnODone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$2;->this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$2;->val$runnableOnODone:Ljava/lang/Runnable;

    #calls: Lcom/miui/gallery/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->access$300(Lcom/miui/gallery/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
