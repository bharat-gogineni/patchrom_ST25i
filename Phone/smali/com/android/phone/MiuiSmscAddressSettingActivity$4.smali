.class Lcom/android/phone/MiuiSmscAddressSettingActivity$4;
.super Ljava/lang/Object;
.source "MiuiSmscAddressSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiSmscAddressSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiSmscAddressSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mEditTextSmscAddress:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$400(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, newAddress:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mSmscAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$200(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$100(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 270
    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$700(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #calls: Lcom/android/phone/MiuiSmscAddressSettingActivity;->stringToSmsc(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$500(Lcom/android/phone/MiuiSmscAddressSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$600(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 272
    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    #getter for: Lcom/android/phone/MiuiSmscAddressSettingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->access$600(Lcom/android/phone/MiuiSmscAddressSettingActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MiuiSmscAddressSettingActivity$4;->this$0:Lcom/android/phone/MiuiSmscAddressSettingActivity;

    invoke-virtual {v1}, Lcom/android/phone/MiuiSmscAddressSettingActivity;->finish()V

    goto :goto_0
.end method
