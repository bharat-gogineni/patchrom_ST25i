.class Lcom/android/phone/MiuiManageConferenceUtils$1;
.super Landroid/widget/ArrayAdapter;
.source "MiuiManageConferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/telephony/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiManageConferenceUtils;

.field final synthetic val$canSeparate:Z

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiManageConferenceUtils;Landroid/content/Context;ILandroid/view/LayoutInflater;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    iput-object p4, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->val$inflater:Landroid/view/LayoutInflater;

    iput-boolean p5, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->val$canSeparate:Z

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v7, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->val$inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040009

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MiuiManageConferenceUtils$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 66
    .local v0, c:Lcom/android/internal/telephony/Connection;
    new-instance v1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;

    iget-object v7, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    const/4 v8, 0x0

    invoke-direct {v1, v7, v8}, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;-><init>(Lcom/android/phone/MiuiManageConferenceUtils;Lcom/android/phone/MiuiManageConferenceUtils$1;)V

    .line 67
    .local v1, ci:Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;
    iput-object p2, v1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->view:Landroid/view/View;

    .line 68
    iput-object v0, v1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->connection:Lcom/android/internal/telephony/Connection;

    .line 69
    iget-object v7, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    iget-object v7, v7, Lcom/android/phone/MiuiManageConferenceUtils;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v8, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    invoke-static {v7, v0, v8, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 70
    .local v4, infoToken:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v7, v1, Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 71
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    const v7, 0x7f070041

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 74
    .local v2, endButton:Landroid/widget/ImageButton;
    const v7, 0x7f070045

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 76
    .local v5, separateButton:Landroid/widget/Button;
    new-instance v3, Lcom/android/phone/MiuiManageConferenceUtils$1$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/phone/MiuiManageConferenceUtils$1$1;-><init>(Lcom/android/phone/MiuiManageConferenceUtils$1;ILcom/android/internal/telephony/Connection;)V

    .line 82
    .local v3, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-boolean v7, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->val$canSeparate:Z

    if-eqz v7, :cond_1

    .line 84
    new-instance v6, Lcom/android/phone/MiuiManageConferenceUtils$1$2;

    invoke-direct {v6, p0, p1, v0}, Lcom/android/phone/MiuiManageConferenceUtils$1$2;-><init>(Lcom/android/phone/MiuiManageConferenceUtils$1;ILcom/android/internal/telephony/Connection;)V

    .line 90
    .local v6, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    .end local v6           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_0
    iget-object v7, p0, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    #calls: Lcom/android/phone/MiuiManageConferenceUtils;->updateCallerInfo(Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V
    invoke-static {v7, v1}, Lcom/android/phone/MiuiManageConferenceUtils;->access$100(Lcom/android/phone/MiuiManageConferenceUtils;Lcom/android/phone/MiuiManageConferenceUtils$ConnectionInfo;)V

    .line 97
    return-object p2

    .line 93
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
