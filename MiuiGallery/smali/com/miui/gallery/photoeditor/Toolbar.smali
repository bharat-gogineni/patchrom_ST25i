.class public Lcom/miui/gallery/photoeditor/Toolbar;
.super Landroid/widget/RelativeLayout;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;
    }
.end annotation


# instance fields
.field private final idleHandler:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-direct {v0, p1}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar;->idleHandler:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar;->idleHandler:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/Toolbar;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar;->idleHandler:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 47
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/Toolbar;->idleHandler:Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
