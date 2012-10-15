.class Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;
.super Ljava/util/TimerTask;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/PhotoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Offer timeout"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$OfferTimerTask;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/duokan/airkan/phone/api/PhotoManager;->errorProcess(I)V

    .line 1548
    return-void
.end method
