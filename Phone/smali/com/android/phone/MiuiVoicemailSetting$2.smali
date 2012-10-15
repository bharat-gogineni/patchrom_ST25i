.class Lcom/android/phone/MiuiVoicemailSetting$2;
.super Landroid/os/Handler;
.source "MiuiVoicemailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiVoicemailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiVoicemailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiVoicemailSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 906
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 907
    .local v4, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 908
    .local v1, done:Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 950
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 952
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #getter for: Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/MiuiVoicemailSetting;->access$100(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 953
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    const/16 v6, 0x641

    #calls: Lcom/android/phone/MiuiVoicemailSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/MiuiVoicemailSetting;->access$400(Lcom/android/phone/MiuiVoicemailSetting;I)V

    .line 955
    :cond_1
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #calls: Lcom/android/phone/MiuiVoicemailSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/MiuiVoicemailSetting;->access$500(Lcom/android/phone/MiuiVoicemailSetting;)V

    .line 957
    :cond_2
    return-void

    .line 910
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    iput-object v4, v7, Lcom/android/phone/MiuiVoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 911
    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    iget-object v8, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #calls: Lcom/android/phone/MiuiVoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/MiuiVoicemailSetting;->access$000(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    iput-boolean v5, v7, Lcom/android/phone/MiuiVoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 914
    const/4 v1, 0x1

    .line 915
    goto :goto_0

    .line 917
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #getter for: Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/phone/MiuiVoicemailSetting;->access$100(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 924
    :cond_4
    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #calls: Lcom/android/phone/MiuiVoicemailSetting;->checkForwardingCompleted()Z
    invoke-static {v7}, Lcom/android/phone/MiuiVoicemailSetting;->access$200(Lcom/android/phone/MiuiVoicemailSetting;)Z

    move-result v0

    .line 925
    .local v0, completed:Z
    if-eqz v0, :cond_0

    .line 926
    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #calls: Lcom/android/phone/MiuiVoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/MiuiVoicemailSetting;->access$300(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 928
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    invoke-virtual {v5}, Lcom/android/phone/MiuiVoicemailSetting;->setVMNumberWithCarrier()V

    goto :goto_0

    .line 931
    :cond_5
    iget-object v7, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    iput-boolean v5, v7, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 932
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    #getter for: Lcom/android/phone/MiuiVoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/MiuiVoicemailSetting;->access$100(Lcom/android/phone/MiuiVoicemailSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 934
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 935
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 936
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 939
    iget-object v5, p0, Lcom/android/phone/MiuiVoicemailSetting$2;->this$0:Lcom/android/phone/MiuiVoicemailSetting;

    iput-boolean v6, v5, Lcom/android/phone/MiuiVoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 943
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    const/4 v1, 0x1

    .line 944
    goto :goto_0

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
