.class public Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;
.super Ljava/lang/Object;
.source "ShortcutsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ShortcutsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)I
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 47
    iget v0, p1, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

    iget v1, p2, Lcom/miui/home/launcher/ShortcutInfo;->cellX:I

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
    .line 44
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .end local p1
    check-cast p2, Lcom/miui/home/launcher/ShortcutInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutsAdapter$PositionComparator;->compare(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)I

    move-result v0

    return v0
.end method
