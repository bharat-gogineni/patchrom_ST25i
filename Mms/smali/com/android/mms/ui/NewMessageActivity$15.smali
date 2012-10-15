.class Lcom/android/mms/ui/NewMessageActivity$15;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->processPickResult(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:[Landroid/os/Parcelable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;[Landroid/os/Parcelable;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$15;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$15;->val$uris:[Landroid/os/Parcelable;

    iput-object p3, p0, Lcom/android/mms/ui/NewMessageActivity$15;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/NewMessageActivity$15;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/NewMessageActivity$15;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$15;->val$uris:[Landroid/os/Parcelable;

    invoke-static {v1}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/os/Parcelable;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1097
    .local v0, list:Lcom/android/mms/data/ContactList;
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$15;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$15$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/NewMessageActivity$15$1;-><init>(Lcom/android/mms/ui/NewMessageActivity$15;Lcom/android/mms/data/ContactList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    return-void
.end method
