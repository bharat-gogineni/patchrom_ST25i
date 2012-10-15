.class public Lcom/miui/home/launcher/upsidescene/SceneData;
.super Ljava/lang/Object;
.source "SceneData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SceneData$Screen;,
        Lcom/miui/home/launcher/upsidescene/SceneData$SpriteCell;,
        Lcom/miui/home/launcher/upsidescene/SceneData$SpriteButton;,
        Lcom/miui/home/launcher/upsidescene/SceneData$SpritePicture;,
        Lcom/miui/home/launcher/upsidescene/SceneData$Sprite;
    }
.end annotation


# static fields
.field private static final ENABLE_DEBUG:Ljava/lang/Boolean;


# instance fields
.field private mBackground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentItemId:I

.field private mDataFile:Ljava/util/zip/ZipFile;

.field private mDataLoaded:Z

.field private mDock:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

.field private mDrift:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

.field private mForeground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mSceneScale:F

.field private mScreens:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/home/launcher/upsidescene/SceneData$Screen;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataLoaded:Z

    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataFile:Ljava/util/zip/ZipFile;

    .line 914
    const v0, 0x5f5e100

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mCurrentItemId:I

    .line 916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBitmapCache:Ljava/util/HashMap;

    .line 919
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/upsidescene/SceneData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->generateNewId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/upsidescene/SceneData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/upsidescene/SceneData;Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneData;->copyStreamToFileIfNotExist(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private copyStreamToFileIfNotExist(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10
    .parameter "is"
    .parameter "dstFileName"

    .prologue
    const/4 v6, 0x0

    .line 966
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 967
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 968
    .local v5, size:I
    const/4 v2, 0x0

    .line 970
    .local v2, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 971
    .local v4, outFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 972
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 973
    .end local v2           #os:Ljava/io/OutputStream;
    .local v3, os:Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 974
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 977
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 978
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #outFile:Ljava/io/File;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #os:Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 979
    const-string v7, "launcher.UpsideScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "copyStreamToFile failed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 983
    :cond_0
    if-eqz v2, :cond_1

    .line 985
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 990
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return v6

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #outFile:Ljava/io/File;
    :cond_2
    move-object v2, v3

    .line 983
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :cond_3
    if-eqz v2, :cond_4

    .line 985
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 990
    :cond_4
    :goto_3
    const/4 v6, 0x1

    goto :goto_2

    .line 983
    .end local v4           #outFile:Ljava/io/File;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_5

    .line 985
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 987
    :cond_5
    :goto_5
    throw v6

    .line 986
    .restart local v4       #outFile:Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_3

    .end local v4           #outFile:Ljava/io/File;
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 983
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #outFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_4

    .line 977
    .end local v4           #outFile:Ljava/io/File;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private generateNewId()I
    .locals 2

    .prologue
    .line 946
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mCurrentItemId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mCurrentItemId:I

    return v0
.end method

.method private getPersistDirectory()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "name and version must defined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mContext:Landroid/content/Context;

    const-string v2, "upside_scene"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersistSettingsPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 958
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 962
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clearSettings()Z
    .locals 2

    .prologue
    .line 1069
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistSettingsPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1072
    const/4 v1, 0x1

    .line 1074
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decodeBitmapFromZip(Ljava/lang/String;Ljava/util/zip/ZipFile;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "entryName"
    .parameter "zip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x3f80

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 1021
    if-nez p1, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-object v6

    .line 1024
    :cond_1
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1025
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1027
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1028
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_6

    .line 1029
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1030
    .local v4, opt:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1031
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1032
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1033
    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1034
    iget v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    const/high16 v8, 0x3f00

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 1035
    iget v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    div-float v7, v10, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1036
    const/4 v1, 0x1

    .line 1037
    .local v1, c:I
    :goto_1
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1040
    :cond_3
    add-int/lit8 v7, v1, -0x1

    shl-int v7, v9, v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1042
    .end local v1           #c:I
    :cond_4
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1043
    .local v5, width:I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1044
    .local v3, height:I
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_5

    .line 1046
    int-to-float v6, v5

    iget v7, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v3

    iget v8, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v0, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1048
    if-eqz v0, :cond_5

    .line 1049
    iget-object v6, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v6, v0

    .line 1052
    goto/16 :goto_0

    .line 1054
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #height:I
    .end local v4           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #width:I
    :cond_6
    sget-object v7, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1055
    const-string v7, "launcher.UpsideScene"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not decode bitmap resource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "parser"
    .parameter "name"

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, value:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1012
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1013
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1017
    :cond_0
    return-object v1

    .line 1011
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getBackgroundScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBackground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    return-object v0
.end method

.method protected getCellHeightByScene(I)I
    .locals 2
    .parameter "cellY"

    .prologue
    .line 998
    mul-int/lit16 v0, p1, 0xc8

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method protected getCellWidthByScene(I)I
    .locals 2
    .parameter "cellX"

    .prologue
    .line 994
    mul-int/lit16 v0, p1, 0xa0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getDock()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDock:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    return-object v0
.end method

.method public getDriftScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDrift:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    return-object v0
.end method

.method public getForegroundScreen()Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mForeground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    return-object v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mWidth:I

    return v0
.end method

.method public loadData(Landroid/content/Context;)Z
    .locals 20
    .parameter "context"

    .prologue
    .line 1078
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mContext:Landroid/content/Context;

    .line 1079
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataLoaded:Z

    .line 1082
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v17, "/data/system/theme/com.miui.home.upside"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v6, file:Ljava/io/File;
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1088
    .end local v6           #file:Ljava/io/File;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataFile:Ljava/util/zip/ZipFile;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1089
    sget-object v17, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1090
    const-string v17, "launcher.UpsideScene"

    const-string v18, "can not find data file."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    const/16 v17, 0x0

    .line 1217
    :goto_1
    return v17

    .line 1095
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataFile:Ljava/util/zip/ZipFile;

    move-object/from16 v17, v0

    const-string v18, "scene.xml"

    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 1096
    .local v11, scene:Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_3

    .line 1098
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBitmapCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->clear()V

    .line 1099
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mDrift:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    .line 1100
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mDock:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    .line 1101
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mBackground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    .line 1102
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mForeground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    .line 1103
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    .line 1104
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mScreens:Ljava/util/LinkedList;

    .line 1105
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1107
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataFile:Ljava/util/zip/ZipFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 1108
    .local v8, is:Ljava/io/InputStream;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1110
    const/4 v9, 0x1

    .line 1111
    .local v9, moveToNext:Z
    const/4 v13, 0x0

    .line 1112
    .local v13, settings:Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 1114
    .local v14, settingsNotExists:Z
    :cond_2
    :goto_2
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/miui/home/launcher/upsidescene/SceneData;->moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v17

    if-nez v17, :cond_5

    .line 1208
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #moveToNext:Z
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #settings:Ljava/io/BufferedReader;
    .end local v14           #settingsNotExists:Z
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDrift:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataLoaded:Z

    .line 1209
    sget-object v17, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataLoaded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 1211
    const-string v17, "launcher.UpsideScene"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " succeeded.(width:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",height:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataLoaded:Z

    move/from16 v17, v0

    goto/16 :goto_1

    .line 1117
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #moveToNext:Z
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #settings:Ljava/io/BufferedReader;
    .restart local v14       #settingsNotExists:Z
    :cond_5
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 1118
    const/4 v9, 0x1

    .line 1119
    goto/16 :goto_2

    .line 1121
    :cond_6
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1122
    .local v15, tag:Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 1123
    const-string v17, "scene"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1124
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .local v7, i:I
    :goto_6
    if-ltz v7, :cond_2

    .line 1125
    const-string v17, "name"

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1126
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mName:Ljava/lang/String;

    .line 1124
    :cond_7
    :goto_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1127
    :cond_8
    const-string v17, "version"

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1128
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mVersion:Ljava/lang/String;

    goto :goto_7

    .line 1202
    .end local v7           #i:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #moveToNext:Z
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #settings:Ljava/io/BufferedReader;
    .end local v14           #settingsNotExists:Z
    .end local v15           #tag:Ljava/lang/String;
    :catch_0
    move-exception v17

    goto/16 :goto_3

    .line 1129
    .restart local v7       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #moveToNext:Z
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #settings:Ljava/io/BufferedReader;
    .restart local v14       #settingsNotExists:Z
    .restart local v15       #tag:Ljava/lang/String;
    :cond_9
    const-string v17, "width"

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1130
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->parseSizeValue(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mWidth:I

    goto :goto_7

    .line 1203
    .end local v7           #i:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #moveToNext:Z
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #settings:Ljava/io/BufferedReader;
    .end local v14           #settingsNotExists:Z
    .end local v15           #tag:Ljava/lang/String;
    :catch_1
    move-exception v17

    goto/16 :goto_3

    .line 1131
    .restart local v7       #i:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #moveToNext:Z
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #settings:Ljava/io/BufferedReader;
    .restart local v14       #settingsNotExists:Z
    .restart local v15       #tag:Ljava/lang/String;
    :cond_a
    const-string v17, "height"

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1132
    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneData;->parseSizeValue(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mHeight:I

    goto :goto_7

    .line 1204
    .end local v7           #i:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #moveToNext:Z
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #settings:Ljava/io/BufferedReader;
    .end local v14           #settingsNotExists:Z
    .end local v15           #tag:Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_3

    .line 1135
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #moveToNext:Z
    .restart local v10       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #settings:Ljava/io/BufferedReader;
    .restart local v14       #settingsNotExists:Z
    .restart local v15       #tag:Ljava/lang/String;
    :cond_b
    const-string v17, "screen"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mHeight:I

    move/from16 v17, v0

    if-gtz v17, :cond_d

    .line 1137
    :cond_c
    sget-object v17, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1138
    const-string v17, "launcher.UpsideScene"

    const-string v18, "load scene failed,break."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1142
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_e

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1144
    .local v4, dm:Landroid/util/DisplayMetrics;
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    .line 1145
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mHeight:I

    .line 1146
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mWidth:I

    .line 1148
    .end local v4           #dm:Landroid/util/DisplayMetrics;
    :cond_e
    new-instance v12, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;-><init>(Lcom/miui/home/launcher/upsidescene/SceneData;)V

    .line 1149
    .local v12, screen:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    if-nez v14, :cond_10

    if-nez v13, :cond_10

    .line 1150
    new-instance v3, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistDirectory()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1151
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_f

    .line 1152
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1154
    :cond_f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1155
    new-instance v6, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistSettingsPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    .restart local v6       #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1157
    new-instance v13, Ljava/io/BufferedReader;

    .end local v13           #settings:Ljava/io/BufferedReader;
    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v18, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1158
    .restart local v13       #settings:Ljava/io/BufferedReader;
    const/4 v2, 0x1

    .line 1160
    .local v2, correctVersion:Z
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 1161
    .local v16, version:Ljava/lang/String;
    const-string v17, "v5"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v17

    if-nez v17, :cond_12

    .line 1162
    const/4 v2, 0x0

    .line 1169
    .end local v16           #version:Ljava/lang/String;
    :goto_8
    if-nez v2, :cond_10

    .line 1170
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 1171
    const/4 v13, 0x0

    .line 1178
    .end local v2           #correctVersion:Z
    .end local v3           #dir:Ljava/io/File;
    .end local v6           #file:Ljava/io/File;
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDataFile:Ljava/util/zip/ZipFile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v10, v13, v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->load(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/BufferedReader;Ljava/util/zip/ZipFile;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mSceneScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->calcSize(F)V

    .line 1180
    sget-object v17, Lcom/miui/home/launcher/upsidescene/SceneData;->ENABLE_DEBUG:Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1181
    const-string v17, "launcher.UpsideScene"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "load successed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_11
    invoke-virtual {v12}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1197
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mScreens:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1198
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1164
    .restart local v2       #correctVersion:Z
    .restart local v3       #dir:Ljava/io/File;
    .restart local v6       #file:Ljava/io/File;
    .restart local v16       #version:Ljava/lang/String;
    :cond_12
    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/home/launcher/upsidescene/SceneData;->mCurrentItemId:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 1166
    .end local v16           #version:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 1167
    .local v5, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_8

    .line 1174
    .end local v2           #correctVersion:Z
    .end local v5           #e:Ljava/io/IOException;
    :cond_13
    const/4 v14, 0x1

    goto :goto_9

    .line 1185
    .end local v3           #dir:Ljava/io/File;
    .end local v6           #file:Ljava/io/File;
    :pswitch_0
    :try_start_6
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDrift:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    goto :goto_a

    .line 1188
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mBackground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    goto :goto_a

    .line 1191
    :pswitch_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mForeground:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    goto :goto_a

    .line 1194
    :pswitch_3
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/home/launcher/upsidescene/SceneData;->mDock:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_a

    .line 1208
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #moveToNext:Z
    .end local v10           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #screen:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    .end local v13           #settings:Ljava/io/BufferedReader;
    .end local v14           #settingsNotExists:Z
    .end local v15           #tag:Ljava/lang/String;
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1214
    :cond_15
    const-string v17, "launcher.UpsideScene"

    const-string v18, "load failed."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1085
    .end local v11           #scene:Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v17

    goto/16 :goto_0

    .line 1084
    :catch_5
    move-exception v17

    goto/16 :goto_0

    .line 1183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public moveToNextStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1004
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, eventType:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1006
    :cond_1
    if-eq v0, v1, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseSizeValue(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1061
    const-string v0, "match_parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    const/4 v0, -0x1

    .line 1064
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public save()V
    .locals 7

    .prologue
    .line 1221
    const/4 v3, 0x0

    .line 1223
    .local v3, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SceneData;->getPersistSettingsPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1224
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .local v4, writer:Ljava/io/BufferedWriter;
    :try_start_1
    const-string v5, "v5"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 1226
    iget v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mCurrentItemId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 1228
    iget-object v5, p0, Lcom/miui/home/launcher/upsidescene/SceneData;->mScreens:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;

    .line 1229
    .local v2, s:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/upsidescene/SceneData$Screen;->save(Ljava/io/BufferedWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 1232
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #s:Lcom/miui/home/launcher/upsidescene/SceneData$Screen;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 1233
    .end local v4           #writer:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1237
    if-eqz v3, :cond_0

    .line 1239
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1245
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 1237
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    :cond_1
    if-eqz v4, :cond_3

    .line 1239
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 1242
    .end local v4           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1240
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 1241
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 1242
    .end local v4           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1240
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v0

    .line 1241
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1234
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1235
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1237
    if-eqz v3, :cond_0

    .line 1239
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 1240
    :catch_4
    move-exception v0

    .line 1241
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1237
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v3, :cond_2

    .line 1239
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1242
    :cond_2
    :goto_5
    throw v5

    .line 1240
    :catch_5
    move-exception v0

    .line 1241
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1237
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 1234
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1232
    :catch_7
    move-exception v0

    goto :goto_1

    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #writer:Ljava/io/BufferedWriter;
    :cond_3
    move-object v3, v4

    .end local v4           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    goto :goto_2
.end method
