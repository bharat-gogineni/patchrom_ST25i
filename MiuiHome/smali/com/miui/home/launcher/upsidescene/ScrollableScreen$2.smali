.class Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;
.super Ljava/lang/Object;
.source "ScrollableScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$2;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    #getter for: Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->mParent:Landroid/view/ViewParent;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->access$300(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 308
    return-void
.end method
