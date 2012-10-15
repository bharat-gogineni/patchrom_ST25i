.class Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;
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
    name = "StringLyric"
.end annotation


# instance fields
.field private final mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;->mContent:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public persist(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 51
    iget-object v2, p0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;->mContent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 54
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, fw:Ljava/io/FileWriter;
    iget-object v2, p0, Lcom/miui/player/plugin/onlinelyric/LyricContentFactory$StringLyric;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v2, 0x1

    .line 62
    .end local v1           #fw:Ljava/io/FileWriter;
    :goto_0
    return v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
