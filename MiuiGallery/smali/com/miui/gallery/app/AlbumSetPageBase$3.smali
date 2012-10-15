.class Lcom/miui/gallery/app/AlbumSetPageBase$3;
.super Ljava/lang/Object;
.source "AlbumSetPageBase.java"

# interfaces
.implements Lcom/miui/gallery/ui/PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/AlbumSetPageBase;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

.field final synthetic val$repository:Lcom/miui/gallery/ui/PositionRepository;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/AlbumSetPageBase;Lcom/miui/gallery/ui/PositionRepository;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetPageBase$3;->this$0:Lcom/miui/gallery/app/AlbumSetPageBase;

    iput-object p2, p0, Lcom/miui/gallery/app/AlbumSetPageBase$3;->val$repository:Lcom/miui/gallery/ui/PositionRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lcom/miui/gallery/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    return-void
.end method


# virtual methods
.method public getPosition(JLcom/miui/gallery/ui/PositionRepository$Position;)Lcom/miui/gallery/ui/PositionRepository$Position;
    .locals 6
    .parameter "identity"
    .parameter "target"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/miui/gallery/app/AlbumSetPageBase$3;->val$repository:Lcom/miui/gallery/ui/PositionRepository;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/PositionRepository;->get(Ljava/lang/Long;)Lcom/miui/gallery/ui/PositionRepository$Position;

    move-result-object v0

    .line 308
    .local v0, p:Lcom/miui/gallery/ui/PositionRepository$Position;
    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetPageBase$3;->mTempPosition:Lcom/miui/gallery/ui/PositionRepository$Position;

    .line 310
    iget v1, p3, Lcom/miui/gallery/ui/PositionRepository$Position;->x:F

    iget v2, p3, Lcom/miui/gallery/ui/PositionRepository$Position;->y:F

    const/high16 v3, 0x4300

    iget v4, p3, Lcom/miui/gallery/ui/PositionRepository$Position;->theta:F

    const/high16 v5, 0x3f80

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/PositionRepository$Position;->set(FFFFF)V

    .line 312
    :cond_0
    return-object v0
.end method
