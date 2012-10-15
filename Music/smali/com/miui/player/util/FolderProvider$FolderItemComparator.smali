.class Lcom/miui/player/util/FolderProvider$FolderItemComparator;
.super Ljava/lang/Object;
.source "FolderProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/player/util/FolderProvider$FolderItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/player/util/FolderProvider$FolderItem;Lcom/miui/player/util/FolderProvider$FolderItem;)I
    .locals 2
    .parameter "first"
    .parameter "second"

    .prologue
    .line 107
    iget-object v0, p1, Lcom/miui/player/util/FolderProvider$FolderItem;->mSortKey:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/player/util/FolderProvider$FolderItem;->mSortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    check-cast p1, Lcom/miui/player/util/FolderProvider$FolderItem;

    .end local p1
    check-cast p2, Lcom/miui/player/util/FolderProvider$FolderItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/player/util/FolderProvider$FolderItemComparator;->compare(Lcom/miui/player/util/FolderProvider$FolderItem;Lcom/miui/player/util/FolderProvider$FolderItem;)I

    move-result v0

    return v0
.end method
