.class Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;
.super Ljava/lang/Object;
.source "MiuiEmergencyCallAreaCodeEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog;

.field final synthetic val$areaCodeView:Landroid/widget/EditText;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->this$0:Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog;

    iput-object p2, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$areaCodeView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$pref:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$areaCodeView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, areaCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 94
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "emergency_call_last_area_code"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$intent:Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    iget-object v3, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 102
    iget-object v2, p0, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog$1;->this$0:Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog;

    invoke-virtual {v2}, Lcom/android/phone/MiuiEmergencyCallAreaCodeEditDialog;->finish()V

    .line 103
    return-void
.end method
