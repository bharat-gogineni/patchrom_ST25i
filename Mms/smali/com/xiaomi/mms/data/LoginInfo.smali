.class public Lcom/xiaomi/mms/data/LoginInfo;
.super Ljava/lang/Object;
.source "LoginInfo.java"


# instance fields
.field public final nonce:Ljava/lang/Long;

.field public final passToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final serviceTokenUrl:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "userId"
    .parameter "passToken"
    .parameter "nonce"
    .parameter "security"
    .parameter "serviceTokenUrl"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaomi/mms/data/LoginInfo;->userId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/xiaomi/mms/data/LoginInfo;->passToken:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/xiaomi/mms/data/LoginInfo;->nonce:Ljava/lang/Long;

    .line 20
    iput-object p4, p0, Lcom/xiaomi/mms/data/LoginInfo;->security:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/xiaomi/mms/data/LoginInfo;->serviceTokenUrl:Ljava/lang/String;

    .line 22
    return-void
.end method
