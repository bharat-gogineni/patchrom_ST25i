.class Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SiSlPushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    .line 173
    return-void
.end method

.method private appendNewLine(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private storeWapPushMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "protocol"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "body"

    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 240
    return-void
.end method

.method private traverse(Lorg/w3c/dom/Node;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 204
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, child:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->traverse(Lorg/w3c/dom/Node;)V

    .line 204
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 209
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->appendNewLine(Ljava/lang/String;)V

    .line 211
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 212
    .local v0, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 213
    const-string v4, "href"

    invoke-interface {v0, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 214
    .local v2, hrefNode:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    .line 215
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, hrefValue:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 217
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->appendNewLine(Ljava/lang/String;)V

    .line 221
    .end local v2           #hrefNode:Lorg/w3c/dom/Node;
    .end local v3           #hrefValue:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 9
    .parameter "paramArrayOfIntent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 178
    const-string v5, "PushReceiver"

    const-string v6, "ReceiveWapPushTask doInBackground"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    aget-object v3, p1, v7

    .line 180
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "data"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 181
    .local v4, pushData:[B
    const-string v5, "address"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mAddress:Ljava/lang/String;

    .line 182
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a019d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mAddress:Ljava/lang/String;

    .line 186
    :cond_0
    new-instance v1, Lcom/android/mms/jwap_port/WBXMLDecoder;

    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, decoder:Lcom/android/mms/jwap_port/WBXMLDecoder;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Lcom/android/mms/jwap_port/WBXMLDecoder;->decode(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 188
    .local v2, document:Lorg/w3c/dom/Document;
    if-nez v2, :cond_2

    .line 200
    :cond_1
    :goto_0
    return-object v8

    .line 191
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->traverse(Lorg/w3c/dom/Node;)V

    .line 193
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mBody:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, body:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mAddress:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lmiui/provider/ExtraTelephony;->checkFirewallForMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->storeWapPushMessage()V

    .line 197
    iget-object v5, p0, Lcom/android/mms/transaction/PushReceiver$SiSlPushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
