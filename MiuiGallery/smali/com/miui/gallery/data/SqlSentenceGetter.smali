.class public abstract Lcom/miui/gallery/data/SqlSentenceGetter;
.super Ljava/lang/Object;
.source "SqlSentenceGetter.java"


# instance fields
.field protected mProjection:[Ljava/lang/String;

.field protected mWhereClauseAll:Ljava/lang/String;

.field protected mWhereClauseToShow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/gallery/data/SqlSentenceGetter;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClauseAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miui/gallery/data/SqlSentenceGetter;->mWhereClauseAll:Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClauseToShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/miui/gallery/data/SqlSentenceGetter;->mWhereClauseToShow:Ljava/lang/String;

    return-object v0
.end method
