.class public Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;
.super Ljava/lang/Object;
.source "SceneData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpriteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneData$Screen;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;->this$1:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;)I
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 753
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;->getIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 750
    check-cast p1, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    .end local p1
    check-cast p2, Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen$SpriteComparator;->compare(Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;)I

    move-result v0

    return v0
.end method
