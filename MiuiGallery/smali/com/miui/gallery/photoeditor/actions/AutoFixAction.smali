.class public Lcom/miui/gallery/photoeditor/actions/AutoFixAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "AutoFixAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public doBegin()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/AutoFixFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/AutoFixFilter;-><init>()V

    .line 38
    .local v0, filter:Lcom/miui/gallery/photoeditor/filters/AutoFixFilter;
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/filters/AutoFixFilter;->setScale(F)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/AutoFixAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/AutoFixAction;->notifyDone()V

    .line 41
    return-void
.end method

.method public doEnd()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
