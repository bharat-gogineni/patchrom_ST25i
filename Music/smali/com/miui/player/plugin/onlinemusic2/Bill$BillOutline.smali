.class public Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;
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
    name = "BillOutline"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mCategory:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "category"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/miui/player/plugin/onlinemusic2/Bill$BillOutline;->mCategory:Ljava/lang/String;

    .line 25
    return-void
.end method
