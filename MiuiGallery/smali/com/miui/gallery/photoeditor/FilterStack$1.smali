.class Lcom/miui/gallery/photoeditor/FilterStack$1;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/FilterStack;->callbackDone(Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/FilterStack;

.field final synthetic val$callback:Lcom/miui/gallery/photoeditor/OnDoneCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/FilterStack;Lcom/miui/gallery/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/FilterStack$1;->this$0:Lcom/miui/gallery/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/FilterStack$1;->val$callback:Lcom/miui/gallery/photoeditor/OnDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/FilterStack$1;->val$callback:Lcom/miui/gallery/photoeditor/OnDoneCallback;

    invoke-interface {v0}, Lcom/miui/gallery/photoeditor/OnDoneCallback;->onDone()V

    .line 141
    return-void
.end method
