.class public Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;
.super Ljava/lang/Object;
.source "MediaCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/base/MediaCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaLoaderInfo"
.end annotation


# instance fields
.field public final mDecorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;

.field public final mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;)V
    .locals 0
    .parameter "decorator"
    .parameter "args"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mDecorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;

    .line 118
    iput-object p2, p0, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    .line 119
    return-void
.end method
