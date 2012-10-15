.class public Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;
.super Ljava/lang/Object;
.source "Bill.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinemusic2/Bill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillDetail"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mNo:Ljava/lang/String;

.field public final mType:Ljava/lang/String;

.field public final mUpdateDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "type"
    .parameter "no"
    .parameter "updateDate"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;->mType:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;->mNo:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;->mUpdateDate:Ljava/util/Date;

    .line 44
    return-void
.end method
