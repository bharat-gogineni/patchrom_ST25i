.class Lcom/miui/player/network/OnlineMusicReporter$LogQueue;
.super Ljava/lang/Object;
.source "OnlineMusicReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/network/OnlineMusicReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFactory:Lcom/miui/player/network/OnlineMusicReporter$LogFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/network/OnlineMusicReporter$LogFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;

.field private final mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMaxSize:I

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/miui/player/network/OnlineMusicReporter$LogFactory;I)V
    .locals 7
    .parameter "sp"
    .parameter "key"
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Lcom/miui/player/network/OnlineMusicReporter$LogFactory",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<TT;>;"
    .local p3, factory:Lcom/miui/player/network/OnlineMusicReporter$LogFactory;,"Lcom/miui/player/network/OnlineMusicReporter$LogFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    .line 177
    iput-object p1, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mPreferences:Landroid/content/SharedPreferences;

    .line 178
    iput-object p2, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mKey:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mFactory:Lcom/miui/player/network/OnlineMusicReporter$LogFactory;

    .line 180
    iput p4, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mMaxSize:I

    .line 182
    iget-object v5, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, pref:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 185
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 187
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 188
    iget-object v5, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mFactory:Lcom/miui/player/network/OnlineMusicReporter$LogFactory;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/miui/player/network/OnlineMusicReporter$LogFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, t:Ljava/lang/Object;,"TT;"
    if-eqz v4, :cond_0

    .line 190
    iget-object v5, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v5

    .line 196
    :cond_1
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mFactory:Lcom/miui/player/network/OnlineMusicReporter$LogFactory;

    iget-object v1, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/miui/player/network/OnlineMusicReporter$LogFactory;->add(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mMaxSize:I

    if-le v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 226
    :cond_1
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<TT;>;"
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public persist()V
    .locals 4

    .prologue
    .line 233
    .local p0, this:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<TT;>;"
    iget-object v1, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mKey:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<TT;>;"
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 199
    .local p0, this:Lcom/miui/player/network/OnlineMusicReporter$LogQueue;,"Lcom/miui/player/network/OnlineMusicReporter$LogQueue<TT;>;"
    iget-object v0, p0, Lcom/miui/player/network/OnlineMusicReporter$LogQueue;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
