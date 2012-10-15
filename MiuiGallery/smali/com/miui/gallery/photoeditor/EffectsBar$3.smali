.class Lcom/miui/gallery/photoeditor/EffectsBar$3;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

.field final synthetic val$runnableOnDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/EffectsBar;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->val$runnableOnDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dismissDialog()V

    .line 137
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, fullscreenTool:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    iget-object v2, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #getter for: Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$600(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 142
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #setter for: Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;
    invoke-static {v1, v3}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$602(Lcom/miui/gallery/photoeditor/EffectsBar;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #setter for: Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;
    invoke-static {v1, v3}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$202(Lcom/miui/gallery/photoeditor/EffectsBar;Lcom/miui/gallery/photoeditor/actions/EffectAction;)Lcom/miui/gallery/photoeditor/actions/EffectAction;

    .line 144
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->val$runnableOnDone:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$3;->val$runnableOnDone:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 147
    :cond_1
    return-void
.end method
