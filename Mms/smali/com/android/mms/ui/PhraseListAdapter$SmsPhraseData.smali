.class Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;
.super Ljava/lang/Object;
.source "PhraseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PhraseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsPhraseData"
.end annotation


# instance fields
.field private mPref:Landroid/content/SharedPreferences;

.field private mSmsPhrases:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final separator:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/PhraseListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/PhraseListAdapter;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 183
    iput-object p1, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->this$0:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-string v2, "\t"

    iput-object v2, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->separator:Ljava/lang/String;

    .line 184
    #getter for: Lcom/android/mms/ui/PhraseListAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/mms/ui/PhraseListAdapter;->access$000(Lcom/android/mms/ui/PhraseListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mPref:Landroid/content/SharedPreferences;

    .line 185
    iget-object v2, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "sms_phrase_data"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, data:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "sms_phrase_data_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, count:I
    if-ne v0, v5, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->initSmsPhraseList()V

    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->saveSmsPhraseDate()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->parseSmsPhraseData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSmsPhraseList()V
    .locals 7

    .prologue
    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    .line 256
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->this$0:Lcom/android/mms/ui/PhraseListAdapter;

    #getter for: Lcom/android/mms/ui/PhraseListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/PhraseListAdapter;->access$000(Lcom/android/mms/ui/PhraseListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 258
    .local v1, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 259
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 260
    .local v2, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 261
    iget-object v5, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 264
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    if-eqz v3, :cond_0

    .line 270
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 276
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 269
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v4, :cond_2

    .line 270
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v3, v4

    .line 274
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 272
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 273
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 275
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 272
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 273
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 265
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 266
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    if-eqz v3, :cond_0

    .line 270
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 272
    :catch_4
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 269
    :goto_4
    if-eqz v3, :cond_3

    .line 270
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 274
    :cond_3
    :goto_5
    throw v5

    .line 272
    :catch_5
    move-exception v0

    .line 273
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 265
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 263
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private parseSmsPhraseData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 245
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    .line 246
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\t"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v0, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private saveSmsPhraseDate()V
    .locals 6

    .prologue
    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, phrase:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    .end local v2           #phrase:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sms_phrase_data"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v4, "sms_phrase_data_count"

    iget-object v5, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    return-void
.end method


# virtual methods
.method public addPhrase(Ljava/lang/String;)V
    .locals 2
    .parameter "phrase"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->saveSmsPhraseDate()V

    .line 214
    return-void
.end method

.method public deletePhrase(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 217
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 219
    invoke-direct {p0}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->saveSmsPhraseDate()V

    .line 221
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPhrase(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 198
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setPhrase(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "phrase"

    .prologue
    .line 205
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->mSmsPhrases:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-direct {p0}, Lcom/android/mms/ui/PhraseListAdapter$SmsPhraseData;->saveSmsPhraseDate()V

    .line 209
    :cond_0
    return-void
.end method
