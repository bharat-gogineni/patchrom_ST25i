.class Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem$1;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"

# interfaces
.implements Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->onBuild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;


# direct methods
.method constructor <init>(Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem$1;->this$1:Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem$1;->this$1:Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;

    iget-object v0, v0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsText:Ljava/util/ArrayList;

    const-string v1, "text"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem$1;->this$1:Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;

    iget-object v0, v0, Lcom/android/thememanager/view/LockscreenConfigSettings$ValueChoiceItem;->mItemsValue:Ljava/util/ArrayList;

    const-string v1, "value"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method
