.class Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;
.super Landroid/content/CursorLoader;
.source "NowplayingCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/NowplayingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NowplayingLoader"
.end annotation


# instance fields
.field private final mColumnLen:I

.field private final mColumnNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0
    .parameter "context"
    .parameter "cols"
    .parameter "len"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 322
    iput-object p2, p0, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;->mColumnNames:[Ljava/lang/String;

    .line 323
    iput p3, p0, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;->mColumnLen:I

    .line 324
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 328
    new-instance v0, Lcom/miui/player/model/NowplayingCursor;

    invoke-virtual {p0}, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;->mColumnNames:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;->mColumnLen:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/model/NowplayingCursor;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/miui/player/model/NowplayingCursor$NowplayingLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
