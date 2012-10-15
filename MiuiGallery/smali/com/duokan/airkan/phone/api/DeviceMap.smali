.class Lcom/duokan/airkan/phone/api/DeviceMap;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# instance fields
.field public display:Ljava/lang/String;

.field public modle:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceMap;->modle:Ljava/lang/String;

    .line 594
    iput-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceMap;->display:Ljava/lang/String;

    return-void
.end method
