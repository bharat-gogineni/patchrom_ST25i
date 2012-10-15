.class public Lcom/miui/gallery/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static sRoot:Lcom/miui/gallery/data/Path;


# instance fields
.field private mChildren:Lcom/miui/gallery/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/miui/gallery/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/miui/gallery/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/data/Path;-><init>(Lcom/miui/gallery/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery/data/Path;->sRoot:Lcom/miui/gallery/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/miui/gallery/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/gallery/data/Path;->mParent:Lcom/miui/gallery/data/Path;

    .line 37
    iput-object p2, p0, Lcom/miui/gallery/data/Path;->mSegment:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;
    .locals 5
    .parameter

    .prologue
    .line 96
    const-class v2, Lcom/miui/gallery/data/Path;

    monitor-enter v2

    .line 97
    :try_start_0
    invoke-static {p0}, Lcom/miui/gallery/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    sget-object v1, Lcom/miui/gallery/data/Path;->sRoot:Lcom/miui/gallery/data/Path;

    .line 99
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 100
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    monitor-exit v2

    return-object v1

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 123
    .local v4, n:I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 146
    :goto_0
    return-object v5

    .line 124
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 125
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 127
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 129
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 133
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 134
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 132
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 135
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 136
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 138
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 139
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v2, v3, 0x1

    .line 143
    goto :goto_1

    .line 144
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 145
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 153
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 154
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 158
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 162
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 163
    .local v1, c:C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 165
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 167
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 168
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 170
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v3, 0x1

    .line 172
    goto :goto_0

    .line 173
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 174
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 175
    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/miui/gallery/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 66
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/data/Path;->getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/miui/gallery/data/Path;
    .locals 3
    .parameter

    .prologue
    .line 41
    const-class v1, Lcom/miui/gallery/data/Path;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mChildren:Lcom/miui/gallery/util/IdentityCache;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/miui/gallery/util/IdentityCache;

    invoke-direct {v0}, Lcom/miui/gallery/util/IdentityCache;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/data/Path;->mChildren:Lcom/miui/gallery/util/IdentityCache;

    .line 49
    :cond_0
    new-instance v0, Lcom/miui/gallery/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/miui/gallery/data/Path;-><init>(Lcom/miui/gallery/data/Path;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/miui/gallery/data/Path;->mChildren:Lcom/miui/gallery/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/miui/gallery/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit v1

    :goto_0
    return-object v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mChildren:Lcom/miui/gallery/util/IdentityCache;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/Path;

    .line 46
    if-eqz v0, :cond_0

    monitor-exit v1

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getObject()Lcom/miui/gallery/data/MediaObject;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/miui/gallery/data/Path;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/data/MediaObject;

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/miui/gallery/data/Path;
    .locals 2

    .prologue
    .line 56
    const-class v1, Lcom/miui/gallery/data/Path;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mParent:Lcom/miui/gallery/data/Path;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    const-class v1, Lcom/miui/gallery/data/Path;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v0, Lcom/miui/gallery/data/Path;->sRoot:Lcom/miui/gallery/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    monitor-exit v1

    .line 185
    :goto_0
    return-object v0

    .line 182
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mParent:Lcom/miui/gallery/data/Path;

    sget-object v2, Lcom/miui/gallery/data/Path;->sRoot:Lcom/miui/gallery/data/Path;

    if-eq v0, v2, :cond_1

    .line 183
    iget-object p0, p0, Lcom/miui/gallery/data/Path;->mParent:Lcom/miui/gallery/data/Path;

    goto :goto_1

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mSegment:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/miui/gallery/data/MediaObject;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    const-class v1, Lcom/miui/gallery/data/Path;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/miui/gallery/common/Utils;->assertTrue(Z)V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    const-class v2, Lcom/miui/gallery/data/Path;

    monitor-enter v2

    .line 108
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    .line 109
    :goto_0
    :try_start_0
    sget-object v3, Lcom/miui/gallery/data/Path;->sRoot:Lcom/miui/gallery/data/Path;

    if-eq v0, v3, :cond_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 109
    iget-object v0, v0, Lcom/miui/gallery/data/Path;->mParent:Lcom/miui/gallery/data/Path;

    goto :goto_0

    .line 112
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 113
    add-int/lit8 v0, v1, -0x1

    .line 114
    :goto_1
    sget-object v1, Lcom/miui/gallery/data/Path;->sRoot:Lcom/miui/gallery/data/Path;

    if-eq p0, v1, :cond_1

    .line 115
    add-int/lit8 v1, v0, -0x1

    iget-object v4, p0, Lcom/miui/gallery/data/Path;->mSegment:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 114
    iget-object p0, p0, Lcom/miui/gallery/data/Path;->mParent:Lcom/miui/gallery/data/Path;

    move v0, v1

    goto :goto_1

    .line 117
    :cond_1
    monitor-exit v2

    return-object v3

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    const-class v1, Lcom/miui/gallery/data/Path;

    monitor-enter v1

    .line 85
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 87
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 88
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
