.class final Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenInfo"
.end annotation


# instance fields
.field screenId:J

.field screenOrder:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "id"
    .parameter "order"

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-wide p1, p0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    .line 472
    iput p3, p0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    .line 473
    return-void
.end method
