.class public Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils;
.super Ljava/lang/Object;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    return-void
.end method

.method public static traverseElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;)V
    .locals 5
    .parameter "parent"
    .parameter "tag"
    .parameter "l"

    .prologue
    .line 571
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 572
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 573
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 574
    .local v2, node:Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    :cond_0
    check-cast v2, Lorg/w3c/dom/Element;

    .end local v2           #node:Lorg/w3c/dom/Node;
    invoke-interface {p2, v2}, Lcom/android/thememanager/view/LockscreenConfigSettings$XmlUtils$TraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 572
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_2
    return-void
.end method
