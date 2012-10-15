.class Lcom/android/phone/MiuiManageConferenceUtils$1$1;
.super Ljava/lang/Object;
.source "MiuiManageConferenceUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiManageConferenceUtils$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/MiuiManageConferenceUtils$1;

.field final synthetic val$c:Lcom/android/internal/telephony/Connection;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiManageConferenceUtils$1;ILcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->this$1:Lcom/android/phone/MiuiManageConferenceUtils$1;

    iput p2, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->val$position:I

    iput-object p3, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->this$1:Lcom/android/phone/MiuiManageConferenceUtils$1;

    iget-object v0, v0, Lcom/android/phone/MiuiManageConferenceUtils$1;->this$0:Lcom/android/phone/MiuiManageConferenceUtils;

    iget v1, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->val$position:I

    iget-object v2, p0, Lcom/android/phone/MiuiManageConferenceUtils$1$1;->val$c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/MiuiManageConferenceUtils;->endConferenceConnection(ILcom/android/internal/telephony/Connection;)V

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 80
    return-void
.end method
