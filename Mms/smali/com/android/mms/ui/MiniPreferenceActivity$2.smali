.class Lcom/android/mms/ui/MiniPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MiniPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MiniPreferenceActivity;
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
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/MiniPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    if-ne p2, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MiniPreferenceActivity;->setResult(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MiniPreferenceActivity;->finish()V

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MiniPreferenceActivity;->setResult(I)V

    goto :goto_0
.end method
