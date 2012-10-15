.class public Lcom/miui/gallery/ui/PositionRepository;
.super Ljava/lang/Object;
.source "PositionRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PositionRepository$Position;
    }
.end annotation


# static fields
.field private static final sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/miui/gallery/app/GalleryActivity;",
            "Lcom/miui/gallery/ui/PositionRepository;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/miui/gallery/ui/PositionRepository$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetX:I

.field private mOffsetY:I

.field private mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/gallery/ui/PositionRepository;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PositionRepository;->mData:Ljava/util/HashMap;

    .line 112
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PositionRepository;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    return-void
.end method

.method public static getInstance(Lcom/miui/gallery/app/GalleryActivity;)Lcom/miui/gallery/ui/PositionRepository;
    .locals 2
    .parameter "activity"

    .prologue
    .line 101
    sget-object v1, Lcom/miui/gallery/ui/PositionRepository;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PositionRepository;

    .line 102
    .local v0, repository:Lcom/miui/gallery/ui/PositionRepository;
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository;

    .end local v0           #repository:Lcom/miui/gallery/ui/PositionRepository;
    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository;-><init>()V

    .line 104
    .restart local v0       #repository:Lcom/miui/gallery/ui/PositionRepository;
    sget-object v1, Lcom/miui/gallery/ui/PositionRepository;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/gallery/ui/PositionRepository;->mData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    return-void
.end method

.method public get(Ljava/lang/Long;)Lcom/miui/gallery/ui/PositionRepository$Position;
    .locals 3
    .parameter "identity"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/miui/gallery/ui/PositionRepository;->mData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 116
    .local v0, position:Lcom/miui/gallery/ui/PositionRepository$Position;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PositionRepository;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 118
    iget-object v0, p0, Lcom/miui/gallery/ui/PositionRepository;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 119
    iget v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v2, p0, Lcom/miui/gallery/ui/PositionRepository;->mOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 120
    iget v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v2, p0, Lcom/miui/gallery/ui/PositionRepository;->mOffsetY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    move-object v1, v0

    .line 121
    goto :goto_0
.end method

.method public putPosition(Ljava/lang/Long;Lcom/miui/gallery/ui/PositionRepository$Position;)V
    .locals 3
    .parameter "identity"
    .parameter "position"

    .prologue
    .line 130
    invoke-virtual {p2}, Lcom/miui/gallery/ui/PositionRepository$Position;->clone()Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v0

    .line 131
    .local v0, clone:Lcom/miui/gallery/ui/PositionRepository$Position;
    iget v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v2, p0, Lcom/miui/gallery/ui/PositionRepository;->mOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    .line 132
    iget v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    iget v2, p0, Lcom/miui/gallery/ui/PositionRepository;->mOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    .line 133
    iget-object v1, p0, Lcom/miui/gallery/ui/PositionRepository;->mData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 125
    iput p1, p0, Lcom/miui/gallery/ui/PositionRepository;->mOffsetX:I

    .line 126
    iput p2, p0, Lcom/miui/gallery/ui/PositionRepository;->mOffsetY:I

    .line 127
    return-void
.end method
