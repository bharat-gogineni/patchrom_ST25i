.class public Lcom/android/mms/jwap_port/TransTable;
.super Ljava/lang/Object;
.source "TransTable.java"


# static fields
.field private static tables:Ljava/util/Hashtable;


# instance fields
.field private mib2str:Ljava/util/Hashtable;

.field private str2mib:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/jwap_port/TransTable;->mib2str:Ljava/util/Hashtable;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/jwap_port/TransTable;->str2mib:Ljava/util/Hashtable;

    .line 49
    return-void
.end method

.method public static getTable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/jwap_port/TransTable;
    .locals 19
    .parameter "context"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    const/4 v15, 0x0

    .line 150
    :goto_0
    return-object v15

    .line 69
    :cond_0
    sget-object v15, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 70
    .local v9, o:Ljava/lang/Object;
    if-nez v9, :cond_6

    .line 71
    sget-object v16, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    monitor-enter v16

    .line 72
    :try_start_0
    sget-object v15, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 74
    if-nez v9, :cond_4

    .line 75
    new-instance v9, Lcom/android/mms/jwap_port/TransTable;

    .end local v9           #o:Ljava/lang/Object;
    invoke-direct {v9}, Lcom/android/mms/jwap_port/TransTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v9, o:Lcom/android/mms/jwap_port/TransTable;
    const/4 v7, 0x0

    .line 78
    .local v7, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 84
    :goto_1
    if-nez v7, :cond_1

    .line 86
    :try_start_2
    sget-object v15, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": Unable to load translation table"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 143
    .end local v7           #in:Ljava/io/InputStream;
    .end local v9           #o:Lcom/android/mms/jwap_port/TransTable;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 79
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v9       #o:Lcom/android/mms/jwap_port/TransTable;
    :catch_0
    move-exception v6

    .line 81
    .local v6, e1:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v6           #e1:Ljava/io/IOException;
    :cond_1
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .local v10, p:Ljava/util/Properties;
    :try_start_4
    invoke-virtual {v10, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 107
    :try_start_6
    sget-object v15, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object v0, v9

    check-cast v0, Lcom/android/mms/jwap_port/TransTable;

    move-object v12, v0

    .line 110
    .local v12, tbl:Lcom/android/mms/jwap_port/TransTable;
    const-string v15, "transtable.aliases"

    invoke-virtual {v10, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 111
    .local v2, aliases:Z
    const-string v15, "transtable.delimiter"

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v10, v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, delimiter:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, e:Ljava/util/Enumeration;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 114
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 115
    .local v8, key:Ljava/lang/String;
    const-string v15, "transtable.aliases"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "transtable.delimiter"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 119
    invoke-virtual {v10, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, val:Ljava/lang/String;
    const/4 v11, 0x0

    .line 121
    .local v11, strtok:Ljava/util/StringTokenizer;
    if-eqz v2, :cond_3

    .line 122
    new-instance v11, Ljava/util/StringTokenizer;

    .end local v11           #strtok:Ljava/util/StringTokenizer;
    invoke-direct {v11, v14, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .restart local v11       #strtok:Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v14

    .line 126
    :cond_3
    :try_start_7
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 127
    .local v3, code:Ljava/lang/Integer;
    iget-object v15, v12, Lcom/android/mms/jwap_port/TransTable;->mib2str:Ljava/util/Hashtable;

    invoke-virtual {v15, v3, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v15, v12, Lcom/android/mms/jwap_port/TransTable;->str2mib:Ljava/util/Hashtable;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz v2, :cond_2

    .line 130
    :goto_3
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 131
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 132
    iget-object v15, v12, Lcom/android/mms/jwap_port/TransTable;->str2mib:Ljava/util/Hashtable;

    invoke-virtual {v15, v14, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 135
    .end local v3           #code:Ljava/lang/Integer;
    :catch_1
    move-exception v15

    goto :goto_2

    .line 98
    .end local v2           #aliases:Z
    .end local v4           #delimiter:Ljava/lang/String;
    .end local v5           #e:Ljava/util/Enumeration;
    .end local v8           #key:Ljava/lang/String;
    .end local v11           #strtok:Ljava/util/StringTokenizer;
    .end local v12           #tbl:Lcom/android/mms/jwap_port/TransTable;
    .end local v14           #val:Ljava/lang/String;
    :catchall_1
    move-exception v15

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 100
    :catch_2
    move-exception v13

    .line 102
    .local v13, unknown:Ljava/io/IOException;
    :try_start_9
    sget-object v15, Lcom/android/mms/jwap_port/TransTable;->tables:Ljava/util/Hashtable;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": Unable to load translation table"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 143
    .end local v7           #in:Ljava/io/InputStream;
    .end local v9           #o:Lcom/android/mms/jwap_port/TransTable;
    .end local v10           #p:Ljava/util/Properties;
    .end local v13           #unknown:Ljava/io/IOException;
    :cond_4
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v15, v9

    .line 146
    :goto_4
    if-eqz v15, :cond_5

    instance-of v0, v15, Lcom/android/mms/jwap_port/TransTable;

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 148
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": Unable to load translation table."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 150
    :cond_5
    check-cast v15, Lcom/android/mms/jwap_port/TransTable;

    goto/16 :goto_0

    .local v9, o:Ljava/lang/Object;
    :cond_6
    move-object v15, v9

    goto :goto_4
.end method


# virtual methods
.method public code2str(I)Ljava/lang/String;
    .locals 2
    .parameter "mib"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/jwap_port/TransTable;->mib2str:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
