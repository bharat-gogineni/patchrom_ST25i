.class public final Lcom/android/phone/MiuiExtraConnectionData;
.super Ljava/lang/Object;
.source "MiuiExtraConnectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiExtraConnectionData$1;,
        Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;,
        Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    }
.end annotation


# static fields
.field private static sExtraCallDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Call;",
            "Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;",
            ">;"
        }
    .end annotation
.end field

.field private static sExtraDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/phone/MiuiExtraConnectionData$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private static sInComingCallSuppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/MiuiExtraConnectionData;->sExtraCallDataMap:Ljava/util/HashMap;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MiuiExtraConnectionData;->sInComingCallSuppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static clearDisconnected()V
    .locals 7

    .prologue
    .line 70
    const-string v5, "clearDisconnected ..."

    invoke-static {v5}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 72
    sget-object v5, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 73
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/phone/MiuiExtraConnectionData$ExtraData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/phone/MiuiExtraConnectionData$ExtraData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 76
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 77
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 81
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/phone/MiuiExtraConnectionData$ExtraData;>;"
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_2
    sget-object v5, Lcom/android/phone/MiuiExtraConnectionData;->sExtraCallDataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 82
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 85
    .restart local v4       #state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_3

    .line 86
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 90
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;>;"
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "still "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connections and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/MiuiExtraConnectionData;->sExtraCallDataMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calls left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static ensureExtraCallData(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
    .locals 3
    .parameter "c"

    .prologue
    .line 115
    sget-object v2, Lcom/android/phone/MiuiExtraConnectionData;->sExtraCallDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    .line 116
    .local v1, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
    if-nez v1, :cond_1

    .line 117
    new-instance v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    .end local v1           #data:Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;-><init>(Lcom/android/phone/MiuiExtraConnectionData$1;)V

    .line 118
    .restart local v1       #data:Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 119
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    iput-object v2, v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->state:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 122
    :cond_0
    sget-object v2, Lcom/android/phone/MiuiExtraConnectionData;->sExtraCallDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    return-object v1
.end method

.method private static ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    .locals 2
    .parameter "c"

    .prologue
    .line 100
    sget-object v1, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    .line 101
    .local v0, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    .end local v0           #data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;-><init>(Lcom/android/phone/MiuiExtraConnectionData$1;)V

    .line 103
    .restart local v0       #data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    sget-object v1, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-object v0
.end method

.method public static getCdmaCallState(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiConstants$CdmaCallState;
    .locals 4
    .parameter "c"

    .prologue
    .line 353
    instance-of v2, p0, Lcom/android/phone/MiuiCdmaSecondCall;

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Idle:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 369
    .local v1, state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaCallState call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 370
    return-object v1

    .line 360
    .end local v1           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_1
    sget-object v2, Lcom/android/phone/MiuiExtraConnectionData;->sExtraCallDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    .line 361
    .local v0, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
    if-nez v0, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->AuthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .restart local v1       #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :goto_1
    goto :goto_0

    .end local v1           #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    :cond_2
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->UnauthenticatedActive:Lcom/android/phone/MiuiConstants$CdmaCallState;

    goto :goto_1

    .line 365
    :cond_3
    iget-object v1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->state:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .restart local v1       #state:Lcom/android/phone/MiuiConstants$CdmaCallState;
    goto :goto_0
.end method

.method public static getDigitsPressed(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 228
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraCallData(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    .line 229
    .local v1, digitsPressed:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 230
    const-string v1, ""

    .line 234
    :cond_0
    :goto_0
    return-object v1

    .line 217
    .end local v1           #digitsPressed:Ljava/lang/String;
    :pswitch_0
    const-string v1, ""

    .line 218
    .restart local v1       #digitsPressed:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraCallData(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    move-result-object v2

    iput-object v4, v2, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    goto :goto_0

    .line 222
    .end local v1           #digitsPressed:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 223
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->getDigitsPressed(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1       #digitsPressed:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraCallData(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    move-result-object v2

    iput-object v4, v2, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDigitsPressed(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 169
    sget-object v1, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    .line 170
    .local v0, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->digitsPressed:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFirewallCode(Lcom/android/internal/telephony/Connection;)I
    .locals 2
    .parameter "c"

    .prologue
    .line 145
    sget-object v1, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    .line 146
    .local v0, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->firewallCode:I

    goto :goto_0
.end method

.method public static getOrigDialAddress(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 244
    sget-object v2, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    .line 245
    .local v1, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->origDialAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, address:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 245
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->origDialAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRingDurationMillis(Lcom/android/internal/telephony/Connection;)J
    .locals 6
    .parameter "c"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 157
    .local v2, createTime:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    .line 158
    .local v0, connectTime:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long v4, v0, v2

    :goto_0
    return-wide v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    goto :goto_0
.end method

.method public static getSuppServiceNotification(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .locals 2
    .parameter "c"

    .prologue
    .line 297
    sget-object v1, Lcom/android/phone/MiuiExtraConnectionData;->sExtraDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    .line 298
    .local v0, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->suppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    goto :goto_0
.end method

.method public static isForwarded(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->getSuppServiceNotification(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    move-result-object v0

    .line 309
    .local v0, notification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    if-ne v2, v1, :cond_1

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 374
    const-string v0, "MiuiExtraConnectionData"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public static onDigitPressed(Lcom/android/internal/telephony/Call;C)V
    .locals 5
    .parameter "c"
    .parameter "ch"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 192
    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {v1, p1}, Lcom/android/phone/MiuiExtraConnectionData;->onDigitPressed(Lcom/android/internal/telephony/Connection;C)V

    goto :goto_0

    .line 195
    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraCallData(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    move-result-object v0

    .line 196
    .local v0, callData:Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 198
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    .line 205
    :goto_1
    return-void

    .line 200
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_2
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->digits:Ljava/lang/String;

    goto :goto_1
.end method

.method private static onDigitPressed(Lcom/android/internal/telephony/Connection;C)V
    .locals 3
    .parameter "c"
    .parameter "ch"

    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    move-result-object v0

    .line 181
    .local v0, data:Lcom/android/phone/MiuiExtraConnectionData$ExtraData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->digitsPressed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->digitsPressed:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public static onIncomingCall(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 321
    sget-object v0, Lcom/android/phone/MiuiExtraConnectionData;->sInComingCallSuppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    move-result-object v0

    sget-object v1, Lcom/android/phone/MiuiExtraConnectionData;->sInComingCallSuppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    iput-object v1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->suppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 324
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MiuiExtraConnectionData;->sInComingCallSuppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 325
    return-void
.end method

.method public static setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V
    .locals 2
    .parameter "c"
    .parameter "state"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCdmaCallState call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 347
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraCallData(Lcom/android/internal/telephony/Call;)Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;

    move-result-object v0

    iput-object p1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraCallData;->state:Lcom/android/phone/MiuiConstants$CdmaCallState;

    .line 348
    return-void
.end method

.method public static setCdmaCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V
    .locals 3
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 328
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 329
    .local v0, call:Lcom/android/internal/telephony/Call;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCdmaCallState call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_2

    .line 335
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayOutgoing:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_0

    .line 336
    :cond_2
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_0

    .line 337
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p0, v1, :cond_3

    .line 338
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->ThreeWayIncoming:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_0

    .line 340
    :cond_3
    sget-object v1, Lcom/android/phone/MiuiConstants$CdmaCallState;->Conference:Lcom/android/phone/MiuiConstants$CdmaCallState;

    invoke-static {v0, v1}, Lcom/android/phone/MiuiExtraConnectionData;->setCdmaCallState(Lcom/android/internal/telephony/Call;Lcom/android/phone/MiuiConstants$CdmaCallState;)V

    goto :goto_0
.end method

.method public static setFirewallCode(Lcom/android/internal/telephony/Connection;I)V
    .locals 1
    .parameter "c"
    .parameter "firewallCode"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    move-result-object v0

    iput p1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->firewallCode:I

    .line 135
    return-void
.end method

.method public static setIncomingCallSuppServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 2
    .parameter "notification"

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServiceNotification : notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 287
    sput-object p0, Lcom/android/phone/MiuiExtraConnectionData;->sInComingCallSuppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 288
    return-void
.end method

.method public static setOrigDialAddress(Lcom/android/internal/telephony/Connection;Ljava/lang/String;Z)V
    .locals 4
    .parameter "c"
    .parameter "numberToDial"
    .parameter "force"

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrigDialAddress : c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", numberToDial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 259
    if-eqz p2, :cond_1

    .line 260
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    move-result-object v1

    iput-object p1, v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->origDialAddress:Ljava/lang/String;

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, postDial:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->origDialAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setSuppServiceNotification(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 2
    .parameter "c"
    .parameter "notification"

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppServiceNotification : c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MiuiExtraConnectionData;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {p0}, Lcom/android/phone/MiuiExtraConnectionData;->ensureExtraData(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/MiuiExtraConnectionData$ExtraData;

    move-result-object v0

    iput-object p1, v0, Lcom/android/phone/MiuiExtraConnectionData$ExtraData;->suppServiceNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 278
    return-void
.end method
