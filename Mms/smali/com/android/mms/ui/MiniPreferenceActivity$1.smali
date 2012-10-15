.class Lcom/android/mms/ui/MiniPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MiniPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MiniPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MiniPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MiniPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MiniPreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MiniPreferenceActivity;->finish()V

    .line 50
    :cond_0
    return-void
.end method
