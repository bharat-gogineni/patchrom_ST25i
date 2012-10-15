.class Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformDecorder"
.end annotation


# instance fields
.field private final mIds:[J

.field private final mIdx:I


# direct methods
.method public constructor <init>(I[J)V
    .locals 0
    .parameter "idx"
    .parameter "ids"

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;->mIds:[J

    .line 292
    iput p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;->mIdx:I

    .line 293
    return-void
.end method


# virtual methods
.method public decorate(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 297
    iget v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;->mIdx:I

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$TransformDecorder;->mIds:[J

    invoke-static {p1, v0, v1}, Lcom/miui/player/util/TransformCursor;->createFromIdx(Landroid/database/Cursor;I[J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
