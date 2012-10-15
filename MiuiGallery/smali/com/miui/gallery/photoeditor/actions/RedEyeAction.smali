.class public Lcom/miui/gallery/photoeditor/actions/RedEyeAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "RedEyeAction.java"


# instance fields
.field private touchView:Lcom/miui/gallery/photoeditor/actions/TouchView;


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
    .line 38
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;-><init>()V

    .line 40
    .local v0, filter:Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction;->factory:Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/miui/gallery/photoeditor/actions/EffectToolFactory;->createTouchView()Lcom/miui/gallery/photoeditor/actions/TouchView;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction;->touchView:Lcom/miui/gallery/photoeditor/actions/TouchView;

    .line 41
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction;->touchView:Lcom/miui/gallery/photoeditor/actions/TouchView;

    new-instance v2, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/photoeditor/actions/RedEyeAction$1;-><init>(Lcom/miui/gallery/photoeditor/actions/RedEyeAction;Lcom/miui/gallery/photoeditor/filters/RedEyeFilter;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/actions/TouchView;->setSingleTapListener(Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;)V

    .line 49
    return-void
.end method

.method public doEnd()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/RedEyeAction;->touchView:Lcom/miui/gallery/photoeditor/actions/TouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/photoeditor/actions/TouchView;->setSingleTapListener(Lcom/miui/gallery/photoeditor/actions/TouchView$SingleTapListener;)V

    .line 54
    return-void
.end method
