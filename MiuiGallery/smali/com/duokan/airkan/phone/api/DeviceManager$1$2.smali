.class Lcom/duokan/airkan/phone/api/DeviceManager$1$2;
.super Ljava/lang/Object;
.source "DeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/DeviceManager$1;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/duokan/airkan/phone/api/DeviceManager$1;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/DeviceManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1$2;->this$1:Lcom/duokan/airkan/phone/api/DeviceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/DeviceManager$1$2;->this$1:Lcom/duokan/airkan/phone/api/DeviceManager$1;

    iget-object v0, v0, Lcom/duokan/airkan/phone/api/DeviceManager$1;->this$0:Lcom/duokan/airkan/phone/api/DeviceManager;

    #calls: Lcom/duokan/airkan/phone/api/DeviceManager;->removeCallback()V
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/DeviceManager;->access$500(Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 242
    return-void
.end method
