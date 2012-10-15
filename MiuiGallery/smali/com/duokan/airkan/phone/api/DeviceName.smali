.class Lcom/duokan/airkan/phone/api/DeviceName;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static sDeviceBrandHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duokan/airkan/phone/api/DeviceBrand;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    sput-object v0, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceBrandHashMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 550
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 530
    sget-object v3, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 531
    const-string v3, "DeviceName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device name already know:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget-object v3, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    .line 544
    .local v0, brand:Lcom/duokan/airkan/phone/api/DeviceBrand;
    .local v1, manufact:Ljava/lang/String;
    .local v2, model:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 534
    .end local v0           #brand:Lcom/duokan/airkan/phone/api/DeviceBrand;
    .end local v1           #manufact:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 535
    .restart local v1       #manufact:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 536
    .restart local v2       #model:Ljava/lang/String;
    const-string v3, "DeviceName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manufacturer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " model:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v3, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceBrandHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/phone/api/DeviceBrand;

    .line 538
    .restart local v0       #brand:Lcom/duokan/airkan/phone/api/DeviceBrand;
    if-nez v0, :cond_1

    .line 539
    const-string v3, "DeviceName"

    const-string v4, "manufacturer not exist"

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/DeviceName;->addHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {v0, v2}, Lcom/duokan/airkan/phone/api/DeviceBrand;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duokan/airkan/phone/api/DeviceName;->addHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    .line 543
    const-string v3, "DeviceName"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    sget-object v3, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 521
    new-instance v0, Lcom/duokan/airkan/phone/api/DeviceBrand;

    const-string v1, "xiaomi"

    const-string v2, "\u5c0f\u7c73\u624b\u673a"

    invoke-direct {v0, v1, v2}, Lcom/duokan/airkan/phone/api/DeviceBrand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .local v0, xiaomiBrand:Lcom/duokan/airkan/phone/api/DeviceBrand;
    const-string v1, "MI-ONE"

    const-string v2, "\u5c0f\u7c73\u624b\u673a"

    invoke-virtual {v0, v1, v2}, Lcom/duokan/airkan/phone/api/DeviceBrand;->addModel(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "MI-TWO"

    const-string v2, "\u4e8c\u4ee3\u5c0f\u7c73\u624b\u673a"

    invoke-virtual {v0, v1, v2}, Lcom/duokan/airkan/phone/api/DeviceBrand;->addModel(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v1, "MI 2"

    const-string v2, "\u4e8c\u4ee3\u5c0f\u7c73\u624b\u673a"

    invoke-virtual {v0, v1, v2}, Lcom/duokan/airkan/phone/api/DeviceBrand;->addModel(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v1, Lcom/duokan/airkan/phone/api/DeviceName;->sDeviceBrandHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/duokan/airkan/phone/api/DeviceBrand;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v1, "DeviceName"

    const-string v2, "init done"

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method
