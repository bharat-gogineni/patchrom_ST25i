.class Lcom/android/mms/ui/ConversationBase$8;
.super Landroid/os/Handler;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1122
    const/4 v14, 0x0

    .line 1123
    .local v14, resend:Z
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1137
    :pswitch_0
    const-string v1, "ConversationBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1125
    :pswitch_1
    const/4 v14, 0x1

    .line 1127
    :pswitch_2
    const-string v15, "mms"

    .line 1141
    .local v15, type:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    invoke-static {v3, v15, v4, v5, v1}, Lcom/android/mms/ui/ConversationBase;->access$600(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v12

    .line 1142
    .local v12, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v12, :cond_0

    .line 1143
    if-eqz v14, :cond_7

    .line 1144
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z
    invoke-static {v1, v3}, Lcom/android/mms/ui/ConversationBase;->access$702(Lcom/android/mms/ui/ConversationBase;Z)Z

    .line 1146
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 1147
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->resendMsgInGroup()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1148
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->requireDeliveryStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z

    goto :goto_2

    .line 1132
    .end local v2           #uri:Landroid/net/Uri;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v15           #type:Ljava/lang/String;
    :pswitch_3
    const/4 v14, 0x1

    .line 1134
    :pswitch_4
    const-string v15, "sms"

    .line 1135
    .restart local v15       #type:Ljava/lang/String;
    goto :goto_1

    .line 1153
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z

    goto :goto_2

    .line 1158
    .end local v2           #uri:Landroid/net/Uri;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->requireDeliveryStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z

    .line 1173
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v1}, Lcom/android/mms/transaction/SmsMessageSender;->resendMessage(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1164
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z

    goto :goto_3

    .line 1168
    :cond_5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z

    goto :goto_3

    .line 1176
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v13

    .line 1179
    .local v13, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1182
    new-instance v6, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1183
    .local v6, values:Landroid/content/ContentValues;
    const-string v1, "err_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    const-string v1, "err_code"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1185
    const-string v1, "retry_index"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string v1, "last_try"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationBase;->access$800(Lcom/android/mms/ui/ConversationBase;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_id="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1190
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v13           #p:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v10

    .line 1192
    .local v10, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v10}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_0

    .line 1196
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    #calls: Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v1, v12}, Lcom/android/mms/ui/ConversationBase;->access$900(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationBase$8;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    goto/16 :goto_0

    .line 1123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
