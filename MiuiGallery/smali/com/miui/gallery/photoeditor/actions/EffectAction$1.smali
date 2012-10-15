.class Lcom/miui/gallery/photoeditor/actions/EffectAction$1;
.super Ljava/lang/Object;
.source "EffectAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/EffectAction;->setListener(Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$1;->this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    #getter for: Lcom/miui/gallery/photoeditor/actions/EffectAction;->listener:Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;
    invoke-static {v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction;->access$000(Lcom/miui/gallery/photoeditor/actions/EffectAction;)Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gallery/photoeditor/actions/EffectAction$Listener;->onClick()V

    .line 67
    return-void
.end method
