.class Lcom/miui/player/util/FolderProvider$FolderItemKeyGetter;
.super Ljava/lang/Object;
.source "FolderProvider.java"

# interfaces
.implements Lcom/miui/player/model/SectionCursor$SortKeyGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderItemKeyGetter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 187
    check-cast p1, Lcom/miui/player/util/FolderProvider$FolderItem;

    .end local p1
    iget-object v0, p1, Lcom/miui/player/util/FolderProvider$FolderItem;->mSortKey:Ljava/lang/String;

    return-object v0
.end method
