.class Lcom/miui/gallery/photoeditor/EffectsBar$2;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/EffectsBar;->setupEffectListener(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

.field final synthetic val$effect:Lcom/miui/gallery/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/EffectsBar;Lcom/miui/gallery/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->val$effect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/EffectsBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->val$effect:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    #setter for: Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;
    invoke-static {v0, v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$202(Lcom/miui/gallery/photoeditor/EffectsBar;Lcom/miui/gallery/photoeditor/actions/EffectAction;)Lcom/miui/gallery/photoeditor/actions/EffectAction;

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #calls: Lcom/miui/gallery/photoeditor/EffectsBar;->exitEffectsGallery()Z
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$300(Lcom/miui/gallery/photoeditor/EffectsBar;)Z

    .line 95
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #calls: Lcom/miui/gallery/photoeditor/EffectsBar;->createEffectToolPanel()V
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$400(Lcom/miui/gallery/photoeditor/EffectsBar;)V

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #getter for: Lcom/miui/gallery/photoeditor/EffectsBar;->activeEffect:Lcom/miui/gallery/photoeditor/actions/EffectAction;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$200(Lcom/miui/gallery/photoeditor/EffectsBar;)Lcom/miui/gallery/photoeditor/actions/EffectAction;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #getter for: Lcom/miui/gallery/photoeditor/EffectsBar;->filterStack:Lcom/miui/gallery/photoeditor/FilterStack;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$500(Lcom/miui/gallery/photoeditor/EffectsBar;)Lcom/miui/gallery/photoeditor/FilterStack;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #getter for: Lcom/miui/gallery/photoeditor/EffectsBar;->effectToolPanel:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$600(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #getter for: Lcom/miui/gallery/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$700(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->begin(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/EffectsBar$2;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method
