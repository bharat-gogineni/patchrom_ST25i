.class public Lcom/miui/gallery/photoeditor/actions/DuotoneAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "DuotoneAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public doBegin()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;-><init>()V

    .line 40
    .local v0, filter:Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;
    const/16 v1, 0x4488

    const v2, 0xffff00

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->setDuotone(II)V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/DuotoneAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/DuotoneAction;->notifyDone()V

    .line 43
    return-void
.end method

.method public doEnd()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
