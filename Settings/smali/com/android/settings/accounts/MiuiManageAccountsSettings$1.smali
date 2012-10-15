.class Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;
.super Ljava/lang/Object;
.source "MiuiManageAccountsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiManageAccountsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 119
    invoke-static {p2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiManageAccountsSettings$1;->this$0:Lcom/android/settings/accounts/MiuiManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->onSyncStateUpdated()V

    .line 121
    return-void
.end method
