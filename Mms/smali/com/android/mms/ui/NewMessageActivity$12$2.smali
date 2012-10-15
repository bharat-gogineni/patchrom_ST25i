.class Lcom/android/mms/ui/NewMessageActivity$12$2;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$12;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$12;

.field final synthetic val$insert:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$12;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$12$2;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$12$2;->val$insert:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 777
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$12$2;->val$insert:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$12$2;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$12;->val$origNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 779
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$12$2;->this$1:Lcom/android/mms/ui/NewMessageActivity$12;

    iget-object v1, v1, Lcom/android/mms/ui/NewMessageActivity$12;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NewMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 780
    return-void
.end method
