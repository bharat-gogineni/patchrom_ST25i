.class Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;
.super Ljava/lang/Object;
.source "LyricContentFactory.java"

# interfaces
.implements Lcom/miui/player/plugin/onlinelyric/LyricContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/plugin/onlinelyric/LyricContentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArrayLyric"
.end annotation


# instance fields
.field private final mContent:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "content"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;->mContent:[B

    .line 23
    return-void
.end method


# virtual methods
.method public persist(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 27
    iget-object v1, p0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;->mContent:[B

    if-eqz v1, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, fos:Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$ByteArrayLyric;->mContent:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 31
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v1, 0x1

    .line 37
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v1

    .line 37
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    goto :goto_1
.end method
