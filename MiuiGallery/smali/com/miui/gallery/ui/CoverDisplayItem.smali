.class public abstract Lcom/miui/gallery/ui/CoverDisplayItem;
.super Lcom/miui/gallery/ui/DisplayItem;
.source "CoverDisplayItem.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final FIRST_COVER_INDEX:I

.field public final SECOND_COVER_INDEX:I

.field protected mChildCount:I

.field protected mChildPixelGap:I

.field protected mIsParent:Z

.field protected mNeedFadeInFrame:Z

.field protected mSelfChildIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/miui/gallery/ui/CoverDisplayItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/ui/CoverDisplayItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/ui/DisplayItem;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->FIRST_COVER_INDEX:I

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->SECOND_COVER_INDEX:I

    return-void
.end method


# virtual methods
.method public isNeedFadeInFrame()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mNeedFadeInFrame:Z

    return v0
.end method

.method public isParent()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mIsParent:Z

    return v0
.end method

.method public selfChildIndex()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mSelfChildIndex:I

    return v0
.end method

.method public setNeedFadeInFrame(I)V
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 33
    sget-boolean v0, Lcom/miui/gallery/ui/CoverDisplayItem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mIsParent:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mNeedFadeInFrame:Z

    .line 35
    iput p1, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mSelfChildIndex:I

    .line 36
    return-void
.end method

.method public setParentAttribute(II)V
    .locals 1
    .parameter "childCount"
    .parameter "childPixelGap"

    .prologue
    .line 23
    iput p1, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mChildCount:I

    .line 24
    iput p2, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mChildPixelGap:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/ui/CoverDisplayItem;->mIsParent:Z

    .line 26
    return-void
.end method
