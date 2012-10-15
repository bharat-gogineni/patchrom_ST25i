.class Lcom/android/phone/MiuiCustomLocationActivity$1;
.super Ljava/lang/Object;
.source "MiuiCustomLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiCustomLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCustomLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCustomLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/MiuiCustomLocationActivity$1;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity$1;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    const-class v2, Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string v1, "action_add_custom_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/android/phone/MiuiCustomLocationActivity$1;->this$0:Lcom/android/phone/MiuiCustomLocationActivity;

    invoke-virtual {v1, v0}, Lcom/android/phone/MiuiCustomLocationActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
