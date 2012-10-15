.class Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;
.super Ljava/lang/Object;
.source "TrackDetailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/TrackDetailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeNamePair"
.end annotation


# instance fields
.field public final mNameResId:I

.field public final mTypeId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "typeId"
    .parameter "nameResId"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;->mTypeId:I

    .line 42
    iput p2, p0, Lcom/miui/player/ui/controller/TrackDetailController$TypeNamePair;->mNameResId:I

    .line 43
    return-void
.end method
