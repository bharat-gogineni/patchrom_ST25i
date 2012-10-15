.class Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;
.super Ljava/lang/Object;
.source "EffectAction.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/photoeditor/actions/EffectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterChangedCallback"
.end annotation


# instance fields
.field private done:Z

.field private runnableOnReady:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->this$0:Lcom/miui/gallery/photoeditor/actions/EffectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;Lcom/miui/gallery/photoeditor/actions/EffectAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;-><init>(Lcom/miui/gallery/photoeditor/actions/EffectAction;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 166
    :cond_0
    return-void
.end method
