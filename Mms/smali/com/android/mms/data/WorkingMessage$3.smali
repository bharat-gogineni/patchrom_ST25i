.class Lcom/android/mms/data/WorkingMessage$3;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$selectionArgs:[Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$selectionArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$3;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$3;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$3;->val$selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$3;->val$selectionArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1747
    return-void
.end method
