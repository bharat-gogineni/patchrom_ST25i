.class public Lcom/miui/player/ui/base/MediaCursorLoader;
.super Landroid/content/CursorLoader;
.source "MediaCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;,
        Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;,
        Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/miui/player/ui/base/MediaCursorLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/base/MediaCursorLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;)V
    .locals 7
    .parameter "context"
    .parameter "info"

    .prologue
    .line 19
    iget-object v0, p2, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    iget-object v2, v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mUri:Landroid/net/Uri;

    iget-object v0, p2, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    iget-object v3, v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mProjection:[Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    iget-object v4, v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mSelection:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    iget-object v5, v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mSelectionArgs:[Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    iget-object v6, v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mSortOrder:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p2, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    iget v0, v0, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mLimit:I

    if-lez v0, :cond_0

    .line 24
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/miui/player/ui/base/MediaCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 26
    :cond_0
    iput-object p2, p0, Lcom/miui/player/ui/base/MediaCursorLoader;->mLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 12

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 33
    .local v8, c:J
    iget-object v0, p0, Lcom/miui/player/ui/base/MediaCursorLoader;->mLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    iget-object v7, v0, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mQueryArgs:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;

    .line 34
    .local v7, args:Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;
    const/4 v10, 0x0

    .line 37
    .local v10, cursor:Landroid/database/Cursor;
    iget v0, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mLimit:I

    if-nez v0, :cond_2

    .line 38
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v10

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/base/MediaCursorLoader;->mLoaderInfo:Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;

    iget-object v11, v0, Lcom/miui/player/ui/base/MediaCursorLoader$MediaLoaderInfo;->mDecorator:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;

    .line 49
    .local v11, decoder:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    if-eqz v11, :cond_1

    .line 50
    invoke-interface {v11, v10}, Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;->decorate(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 53
    :cond_1
    sget-object v0, Lcom/miui/player/ui/base/MediaCursorLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " costs time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/player/util/Utils;->debugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-object v10

    .line 40
    .end local v11           #decoder:Lcom/miui/player/ui/base/MediaCursorLoader$CursorDecorator;
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/ui/base/MediaCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mUri:Landroid/net/Uri;

    iget-object v2, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mProjection:[Ljava/lang/String;

    iget-object v3, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mSelection:Ljava/lang/String;

    iget-object v4, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mSortOrder:Ljava/lang/String;

    iget v6, v7, Lcom/miui/player/ui/base/MediaCursorLoader$QueryArgs;->mLimit:I

    invoke-static/range {v0 .. v6}, Lcom/miui/player/util/SqlUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    .line 42
    if-eqz v10, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/base/MediaCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/base/MediaCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/miui/player/ui/base/MediaCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
