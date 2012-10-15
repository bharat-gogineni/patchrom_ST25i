.class Lcom/miui/gallery/app/AlbumPageBase$3;
.super Ljava/lang/Object;
.source "AlbumPageBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumPageBase;->startTransition(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumPageBase;

.field final synthetic val$center:[I

.field final synthetic val$random:Ljava/util/Random;

.field final synthetic val$repository:Lcom/miui/gallery/ui/PositionRepository;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumPageBase;Lcom/miui/gallery/ui/PositionRepository;[ILjava/util/Random;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->this$0:Lcom/miui/gallery/app/AlbumPageBase;

    iput-object p2, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$repository:Lcom/miui/gallery/ui/PositionRepository;

    iput-object p3, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$center:[I

    iput-object p4, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$random:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    return-void
.end method


# virtual methods
.method public getPosition(JLcom/miui/gallery/ui/PositionRepository$Position;)Lcom/miui/gallery/ui/PositionRepository$Position;
    .locals 7
    .parameter "identity"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$repository:Lcom/miui/gallery/ui/PositionRepository;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v6

    .line 276
    .local v6, p:Lcom/miui/gallery/ui/PositionRepository$Position;
    if-eqz v6, :cond_0

    .line 285
    .end local v6           #p:Lcom/miui/gallery/ui/PositionRepository$Position;
    :goto_0
    return-object v6

    .line 277
    .restart local v6       #p:Lcom/miui/gallery/ui/PositionRepository$Position;
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$center:[I

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$random:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 279
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    iget-object v1, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$center:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$center:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->val$random:Ljava/util/Random;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(FFFFF)V

    .line 285
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-virtual {v0, p3}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(Lcom/miui/gallery/ui/PositionRepository$Position;)V

    .line 283
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    const/high16 v1, 0x4300

    iput v1, v0, Lcom/miui/gallery/ui/PositionRepository$Position;->z:F

    goto :goto_1
.end method
