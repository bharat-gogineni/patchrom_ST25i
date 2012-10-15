.class public Lcom/miui/player/meta/LyricParser$LyricShot;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/meta/LyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LyricShot"
.end annotation


# instance fields
.field public lineIndex:I

.field public percent:D


# direct methods
.method public constructor <init>(ID)V
    .locals 0
    .parameter "index"
    .parameter "p"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/miui/player/meta/LyricParser$LyricShot;->lineIndex:I

    .line 53
    iput-wide p2, p0, Lcom/miui/player/meta/LyricParser$LyricShot;->percent:D

    .line 54
    return-void
.end method
