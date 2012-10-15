.class public Lcom/miui/player/plugin/onlinemusic2/Bill;
.super Ljava/lang/Object;
.source "Bill.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;,
        Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mAudioList:Lcom/miui/player/plugin/onlinemusic2/AudioList;

.field public mBillDetail:Lcom/miui/player/plugin/onlinemusic2/Bill$BillDetail;

.field public final mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;


# direct methods
.method public constructor <init>(Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;)V
    .locals 0
    .parameter "outline"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Bill;->mOutline:Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;

    .line 53
    return-void
.end method
