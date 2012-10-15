.class final Lcom/android/phone/MiuiPhoneUtils$2;
.super Ljava/lang/Object;
.source "MiuiPhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPhoneUtils;->logCall(Lcom/android/phone/Constants$CallStatusCode;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/MiuiPhoneUtils$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v10, 0x0

    .line 601
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallArgs;

    iget-object v1, p0, Lcom/android/phone/MiuiPhoneUtils$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/MiuiPhoneUtils$2;->val$number:Ljava/lang/String;

    iget v4, p3, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-object v2, p3

    move v11, v10

    invoke-direct/range {v0 .. v11}, Lcom/android/phone/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V

    .line 606
    .local v0, args:Lcom/android/phone/CallLogAsync$AddCallArgs;
    new-instance v1, Lcom/android/phone/CallLogAsync;

    invoke-direct {v1}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/phone/CallLogAsync;->addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;

    .line 607
    return-void
.end method
