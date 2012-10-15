.class public Lcom/miui/player/meta/LyricParser;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/meta/LyricParser$EntityCompator;,
        Lcom/miui/player/meta/LyricParser$Lyric;,
        Lcom/miui/player/meta/LyricParser$LyricHeader;,
        Lcom/miui/player/meta/LyricParser$LyricEntity;,
        Lcom/miui/player/meta/LyricParser$LyricShot;
    }
.end annotation


# static fields
.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/player/meta/LyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    return-void
.end method

.method private static correctTime(Lcom/miui/player/meta/LyricParser$Lyric;)V
    .locals 7
    .parameter "lyric"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 329
    #getter for: Lcom/miui/player/meta/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/miui/player/meta/LyricParser$Lyric;->access$000(Lcom/miui/player/meta/LyricParser$Lyric;)Ljava/util/ArrayList;

    move-result-object v0

    .line 330
    .local v0, el:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/meta/LyricParser$LyricEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 331
    .local v2, size:I
    if-le v2, v5, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v4, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    if-ne v4, v3, :cond_0

    .line 332
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v4, v4, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    .line 335
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    .line 336
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v4, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    if-ne v4, v3, :cond_1

    .line 337
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/meta/LyricParser$LyricEntity;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v5, v4, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/meta/LyricParser$LyricEntity;

    iget v4, v4, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/miui/player/meta/LyricParser$LyricEntity;->time:I

    .line 335
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_2
    return-void
.end method

.method private static doParse(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;
    .locals 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v7, 0x0

    .line 381
    .local v7, needModify:Z
    const/4 v6, 0x0

    .line 382
    .local v6, lyric:Lcom/miui/player/meta/LyricParser$Lyric;
    new-instance v2, Lcom/miui/player/meta/LyricParser$LyricHeader;

    invoke-direct {v2}, Lcom/miui/player/meta/LyricParser$LyricHeader;-><init>()V

    .line 383
    .local v2, header:Lcom/miui/player/meta/LyricParser$LyricHeader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/meta/LyricParser$LyricEntity;>;"
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 385
    .local v3, inputStream:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/miui/player/meta/LyricEncodingDetector;->detectEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, encoding:Ljava/lang/String;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 387
    .local v4, inputStreamReader:Ljava/io/InputStreamReader;
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 388
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 389
    .local v9, str:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 390
    invoke-static {v9, v2, v1}, Lcom/miui/player/meta/LyricParser;->parseLine(Ljava/lang/String;Lcom/miui/player/meta/LyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v5

    .line 392
    .local v5, lineParseRet:I
    if-nez v5, :cond_3

    .line 401
    .end local v5           #lineParseRet:I
    :cond_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 402
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 403
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 405
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 407
    new-instance v10, Lcom/miui/player/meta/LyricParser$EntityCompator;

    invoke-direct {v10}, Lcom/miui/player/meta/LyricParser$EntityCompator;-><init>()V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    new-instance v6, Lcom/miui/player/meta/LyricParser$Lyric;

    .end local v6           #lyric:Lcom/miui/player/meta/LyricParser$Lyric;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10, v2, v1, v7}, Lcom/miui/player/meta/LyricParser$Lyric;-><init>(Ljava/lang/String;Lcom/miui/player/meta/LyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    .line 411
    .restart local v6       #lyric:Lcom/miui/player/meta/LyricParser$Lyric;
    :cond_2
    return-object v6

    .line 396
    .restart local v5       #lineParseRet:I
    :cond_3
    const/4 v10, 0x1

    if-ne v5, v10, :cond_0

    .line 397
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 11
    .parameter "values"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/meta/LyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/meta/LyricParser$LyricEntity;>;"
    const/4 v2, 0x2

    .line 518
    .local v2, lineParseRet:I
    :try_start_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v7, v9

    double-to-int v4, v7

    .line 519
    .local v4, time:I
    const/4 v3, 0x0

    .line 520
    .local v3, second:I
    const/16 v6, 0x3c

    .line 521
    .local v6, weight:I
    array-length v7, p0

    add-int/lit8 v1, v7, -0x2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 522
    aget-object v7, p0, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 523
    .local v5, val:I
    mul-int/2addr v5, v6

    .line 524
    mul-int/lit8 v6, v6, 0x3c

    .line 525
    add-int/2addr v3, v5

    .line 521
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 528
    .end local v5           #val:I
    :cond_0
    mul-int/lit16 v7, v3, 0x3e8

    add-int/2addr v4, v7

    .line 530
    const v7, 0x112a880

    if-ge v4, v7, :cond_1

    .line 531
    new-instance v7, Lcom/miui/player/meta/LyricParser$LyricEntity;

    invoke-direct {v7, v4, p2}, Lcom/miui/player/meta/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v1           #i:I
    .end local v3           #second:I
    .end local v4           #time:I
    .end local v6           #weight:I
    :cond_1
    :goto_1
    return v2

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static parseHeader(Ljava/lang/String;Lcom/miui/player/meta/LyricParser$LyricHeader;)I
    .locals 6
    .parameter "str"
    .parameter "header"

    .prologue
    .line 482
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 483
    .local v1, indexOfTag:I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v1, v5, :cond_1

    .line 484
    :cond_0
    const/4 v2, 0x1

    .line 511
    :goto_0
    return v2

    .line 487
    :cond_1
    const/4 v2, 0x2

    .line 488
    .local v2, lineParseRet:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, tag:Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, value:Ljava/lang/String;
    const-string v5, "al"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 492
    iput-object v4, p1, Lcom/miui/player/meta/LyricParser$LyricHeader;->album:Ljava/lang/String;

    goto :goto_0

    .line 493
    :cond_2
    const-string v5, "ar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 494
    iput-object v4, p1, Lcom/miui/player/meta/LyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_3
    const-string v5, "ti"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 496
    iput-object v4, p1, Lcom/miui/player/meta/LyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_0

    .line 497
    :cond_4
    const-string v5, "by"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 498
    iput-object v4, p1, Lcom/miui/player/meta/LyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_0

    .line 499
    :cond_5
    const-string v5, "ve"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 500
    iput-object v4, p1, Lcom/miui/player/meta/LyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_0

    .line 501
    :cond_6
    const-string v5, "offset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 503
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lcom/miui/player/meta/LyricParser$LyricHeader;->offset:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .line 506
    goto :goto_0

    .line 508
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static parseLine(Ljava/lang/String;Lcom/miui/player/meta/LyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "str"
    .parameter "header"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/player/meta/LyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/meta/LyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/meta/LyricParser$LyricEntity;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 433
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 434
    const/4 v7, 0x1

    .line 477
    :cond_0
    :goto_0
    return v7

    .line 438
    :cond_1
    sget-object v11, Lcom/miui/player/meta/LyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 439
    .local v8, matcher:Ljava/util/regex/Matcher;
    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 442
    const-string v11, "]"

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 443
    .local v4, indexOfLastTag:I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_2

    .line 444
    const/4 v7, 0x1

    goto :goto_0

    .line 446
    :cond_2
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, content:Ljava/lang/String;
    const-string v11, "["

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 449
    .local v5, indexOfLeftTag:I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_3

    .line 450
    const/4 v7, 0x1

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 456
    const/4 v7, 0x2

    .line 458
    .local v7, lineParseRet:I
    const-string v11, "]"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, entityStr:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v9, v0, v3

    .line 460
    .local v9, s:Ljava/lang/String;
    const-string v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 459
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 465
    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, values:[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-lt v11, v12, :cond_4

    .line 470
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 471
    invoke-static {v10, p2, v1}, Lcom/miui/player/meta/LyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 473
    :cond_6
    invoke-static {v9, p1}, Lcom/miui/player/meta/LyricParser;->parseHeader(Ljava/lang/String;Lcom/miui/player/meta/LyricParser$LyricHeader;)I

    move-result v7

    goto :goto_2
.end method

.method public static parseLyric(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;
    .locals 3
    .parameter "file"

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, lyric:Lcom/miui/player/meta/LyricParser$Lyric;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-static {p0}, Lcom/miui/player/meta/LyricParser;->doParse(Ljava/io/File;)Lcom/miui/player/meta/LyricParser$Lyric;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/miui/player/meta/LyricParser;->correctTime(Lcom/miui/player/meta/LyricParser$Lyric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
