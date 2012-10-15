.class public Lcom/android/phone/MiuiCdmaSecondCall;
.super Lcom/android/phone/MiuiCallProxy;
.source "MiuiCdmaSecondCall.java"


# static fields
.field private static sInstance:Lcom/android/phone/MiuiCdmaSecondCall;


# instance fields
.field private mCall:Lcom/android/internal/telephony/Call;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/phone/MiuiCallProxy;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MiuiCdmaSecondCall;->mConnections:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiCdmaSecondCall;
    .locals 3
    .parameter "call"

    .prologue
    .line 22
    const-class v1, Lcom/android/phone/MiuiCdmaSecondCall;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 32
    :goto_0
    monitor-exit v1

    return-object v0

    .line 26
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/phone/MiuiCdmaSecondCall;->sInstance:Lcom/android/phone/MiuiCdmaSecondCall;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/android/phone/MiuiCdmaSecondCall;

    invoke-direct {v0}, Lcom/android/phone/MiuiCdmaSecondCall;-><init>()V

    sput-object v0, Lcom/android/phone/MiuiCdmaSecondCall;->sInstance:Lcom/android/phone/MiuiCdmaSecondCall;

    .line 29
    :cond_1
    sget-object v0, Lcom/android/phone/MiuiCdmaSecondCall;->sInstance:Lcom/android/phone/MiuiCdmaSecondCall;

    iput-object p0, v0, Lcom/android/phone/MiuiCdmaSecondCall;->mCall:Lcom/android/internal/telephony/Call;

    .line 30
    sget-object v0, Lcom/android/phone/MiuiCdmaSecondCall;->sInstance:Lcom/android/phone/MiuiCdmaSecondCall;

    iget-object v0, v0, Lcom/android/phone/MiuiCdmaSecondCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    sget-object v0, Lcom/android/phone/MiuiCdmaSecondCall;->sInstance:Lcom/android/phone/MiuiCdmaSecondCall;

    iget-object v0, v0, Lcom/android/phone/MiuiCdmaSecondCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/phone/MiuiCdmaSecondCall;->sInstance:Lcom/android/phone/MiuiCdmaSecondCall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/MiuiCdmaSecondCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/MiuiCdmaSecondCall;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/MiuiCdmaSecondCall;->mConnections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public hangup()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
