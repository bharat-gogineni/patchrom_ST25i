.class public Lcom/miui/player/model/SectionCursor$SectionInfo;
.super Ljava/lang/Object;
.source "SectionCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/SectionCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionInfo"
.end annotation


# instance fields
.field public final mCounts:[Ljava/lang/Integer;

.field public final mTitles:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0
    .parameter "titles"
    .parameter "counts"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/miui/player/model/SectionCursor$SectionInfo;->mTitles:[Ljava/lang/String;

    .line 267
    iput-object p2, p0, Lcom/miui/player/model/SectionCursor$SectionInfo;->mCounts:[Ljava/lang/Integer;

    .line 268
    return-void
.end method
