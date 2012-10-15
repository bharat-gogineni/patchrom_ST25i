.class public Lcom/miui/player/service/ShuffleTracer;
.super Ljava/lang/Object;
.source "ShuffleTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;

.field private final mRandom:Ljava/util/Random;

.field public mShuffleRec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTracer:I


# direct methods
.method public constructor <init>(Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/ShuffleTracer;->mRandom:Ljava/util/Random;

    .line 24
    iput-object p1, p0, Lcom/miui/player/service/ShuffleTracer;->mListener:Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;

    .line 25
    return-void
.end method

.method private expand(II)V
    .locals 15
    .parameter "interval"
    .parameter "first"

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, isExpand:Z
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 113
    :cond_0
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Random;->setSeed(J)V

    .line 114
    move/from16 v0, p1

    new-array v8, v0, [I

    .line 115
    .local v8, rec:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v1, v0, :cond_1

    .line 116
    aput v1, v8, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v1, v0, :cond_2

    .line 120
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mRandom:Ljava/util/Random;

    sub-int v13, p1, v1

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v6, v12, v1

    .line 121
    .local v6, j:I
    aget v9, v8, v1

    .line 122
    .local v9, t:I
    aget v12, v8, v6

    aput v12, v8, v1

    .line 123
    aput v9, v8, v6

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v6           #j:I
    .end local v9           #t:I
    :cond_2
    const/4 v10, 0x0

    .line 126
    .local v10, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    if-nez v12, :cond_4

    .line 127
    new-instance v10, Ljava/util/Vector;

    .end local v10           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/Vector;-><init>(I)V

    .line 131
    .restart local v10       #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_2
    if-ltz p2, :cond_3

    .line 132
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    const/4 v2, 0x0

    .line 135
    .local v2, idx:I
    :goto_3
    move/from16 v0, p1

    if-ge v2, v0, :cond_5

    aget v12, v8, v2

    move/from16 v0, p2

    if-eq v12, v0, :cond_5

    .line 136
    aget v12, v8, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 129
    .end local v2           #idx:I
    :cond_4
    iget-object v10, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    goto :goto_2

    .line 139
    .restart local v2       #idx:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    :goto_4
    move/from16 v0, p1

    if-ge v2, v0, :cond_6

    .line 140
    aget v12, v8, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 144
    :cond_6
    iput-object v10, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 145
    const/4 v12, 0x0

    iput v12, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 146
    const/4 v4, 0x1

    .line 186
    .end local v1           #i:I
    .end local v2           #idx:I
    .end local v8           #rec:[I
    .end local v10           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mListener:Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;

    if-eqz v12, :cond_8

    .line 187
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mListener:Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;

    invoke-interface {v12}, Lcom/miui/player/service/ShuffleTracer$OnTraceableShufferExpand;->onExpand()V

    .line 189
    :cond_8
    return-void

    .line 147
    :cond_9
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    move/from16 v0, p1

    if-le v12, v0, :cond_e

    .line 149
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 150
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_a
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 151
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p1

    if-lt v12, v0, :cond_a

    .line 152
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 156
    :cond_b
    iget v12, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    move/from16 v0, p1

    if-ge v12, v0, :cond_c

    iget v12, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    if-gez v12, :cond_d

    .line 157
    :cond_c
    const/4 v12, 0x0

    iput v12, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 159
    :cond_d
    const/4 v4, 0x1

    .line 160
    goto :goto_5

    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_e
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_10

    .line 161
    add-int/lit8 v11, p1, -0x1

    .line 162
    .local v11, value:I
    iget v12, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    add-int/lit8 v7, v12, 0x1

    .line 163
    .local v7, next:I
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ne v7, v12, :cond_f

    .line 164
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_7
    const/4 v4, 0x1

    .line 170
    goto :goto_5

    .line 166
    :cond_f
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mRandom:Ljava/util/Random;

    sub-int v13, p1, v7

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v3, v12, v7

    .line 167
    .local v3, insertPos:I
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_7

    .line 170
    .end local v3           #insertPos:I
    .end local v7           #next:I
    .end local v11           #value:I
    :cond_10
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_7

    .line 171
    iget-object v10, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 172
    .restart local v10       #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 173
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v1

    .restart local v1       #i:I
    :goto_8
    move/from16 v0, p1

    if-ge v1, v0, :cond_11

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 177
    :cond_11
    iget v12, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    add-int/lit8 v1, v12, 0x1

    :goto_9
    move/from16 v0, p1

    if-ge v1, v0, :cond_12

    .line 178
    iget-object v12, p0, Lcom/miui/player/service/ShuffleTracer;->mRandom:Ljava/util/Random;

    sub-int v13, p1, v1

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int v6, v12, v1

    .line 179
    .restart local v6       #j:I
    invoke-virtual {v10, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 180
    .restart local v9       #t:I
    invoke-virtual {v10, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v1, v12}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 183
    .end local v6           #j:I
    .end local v9           #t:I
    :cond_12
    const/4 v4, 0x1

    goto/16 :goto_5
.end method

.method static read(Ljava/util/Vector;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "q"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v2, p1, p2}, Lcom/xiaomi/common/util/CollectionHelper;->decodeFromString(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 203
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 204
    .local v1, n:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v1           #n:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method static serialize(Ljava/util/Vector;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, values:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 194
    .local v1, n:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v1           #n:Ljava/lang/Integer;
    :cond_0
    invoke-static {v2}, Lcom/xiaomi/common/util/CollectionHelper;->compressToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public back(II)I
    .locals 3
    .parameter "interval"
    .parameter "currentPos"

    .prologue
    .line 67
    if-gtz p1, :cond_0

    .line 68
    const/4 v0, -0x1

    .line 80
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/ShuffleTracer;->expand(II)V

    .line 72
    const/4 v0, -0x1

    .line 73
    .local v0, ret:I
    iget v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 74
    iget v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    if-ltz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 78
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 64
    return-void
.end method

.method public getTracer()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    return v0
.end method

.method public load(Landroid/content/SharedPreferences;I)V
    .locals 6
    .parameter "sp"
    .parameter "maxLen"

    .prologue
    const/4 v5, 0x0

    .line 84
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 85
    const-string v3, "shuffle_vector"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, q:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-static {v3, v1, p2}, Lcom/miui/player/service/ShuffleTracer;->read(Ljava/util/Vector;Ljava/lang/String;I)V

    .line 87
    iput v5, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 88
    iget-object v3, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 89
    .local v2, size:I
    if-lez v2, :cond_0

    .line 90
    const-string v3, "shuffle_index"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, backHistory:I
    if-ge v0, v2, :cond_0

    .line 92
    iput v0, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 95
    .end local v0           #backHistory:I
    :cond_0
    return-void
.end method

.method public peekNext(II)I
    .locals 2
    .parameter "interval"
    .parameter "currentPos"

    .prologue
    .line 32
    if-gtz p1, :cond_0

    .line 33
    const/4 v1, -0x1

    .line 41
    :goto_0
    return v1

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/ShuffleTracer;->expand(II)V

    .line 37
    iget v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    add-int/lit8 v0, v1, 0x1

    .line 38
    .local v0, tracer:I
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 39
    const/4 v0, 0x0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public randNext(II)I
    .locals 3
    .parameter "interval"
    .parameter "currentPos"

    .prologue
    .line 45
    if-gtz p1, :cond_0

    .line 46
    const/4 v0, -0x1

    .line 58
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/service/ShuffleTracer;->expand(II)V

    .line 50
    const/4 v0, -0x1

    .line 51
    .local v0, ret:I
    iget v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 52
    iget v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    iget-object v2, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    .line 56
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public save(Landroid/content/SharedPreferences$Editor;IIZ)V
    .locals 3
    .parameter "ed"
    .parameter "interval"
    .parameter "first"
    .parameter "full"

    .prologue
    .line 98
    if-gtz p2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/miui/player/service/ShuffleTracer;->expand(II)V

    .line 103
    const-string v1, "shuffle_index"

    iget v2, p0, Lcom/miui/player/service/ShuffleTracer;->mTracer:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    if-eqz p4, :cond_0

    .line 105
    iget-object v1, p0, Lcom/miui/player/service/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-static {v1}, Lcom/miui/player/service/ShuffleTracer;->serialize(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, q:Ljava/lang/String;
    const-string v1, "shuffle_vector"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
