.class public Lcom/xiaomi/common/file/FileNameUtils$WebAddress;
.super Ljava/lang/Object;
.source "FileNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/file/FileNameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebAddress"
.end annotation


# static fields
.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mAuthInfo:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mPort:I

.field public mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "(?:(http|HTTP|https|HTTPS|file|FILE)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([-A-Za-z0-9%]+(?:\\.[-A-Za-z0-9%]+)*)?(?:\\:([0-9]+))?(\\/?.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1bb

    const/4 v5, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 177
    :cond_0
    const-string v3, ""

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 178
    const-string v3, ""

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    .line 179
    iput v5, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    .line 180
    const-string v3, "/"

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 181
    const-string v3, ""

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 183
    sget-object v3, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 185
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, t:Ljava/lang/String;
    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 188
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_2

    iput-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 190
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    .line 192
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_4

    .line 195
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_4
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 204
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_8

    .line 205
    iput-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    .line 218
    :cond_5
    :goto_0
    iget v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    if-ne v3, v6, :cond_a

    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 219
    const-string v3, "https"

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 226
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "http"

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    .line 227
    :cond_7
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/http/ParseException;

    const-string v4, "Bad port"

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 213
    .end local v2           #t:Ljava/lang/String;
    :cond_9
    new-instance v3, Lorg/apache/http/ParseException;

    const-string v4, "Bad address"

    invoke-direct {v3, v4}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .restart local v2       #t:Ljava/lang/String;
    :cond_a
    iget v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    if-ne v3, v5, :cond_6

    .line 221
    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 222
    iput v6, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    goto :goto_1

    .line 224
    :cond_b
    const/16 v3, 0x50

    iput v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    const-string v1, ""

    .line 232
    .local v1, port:Ljava/lang/String;
    iget v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    const/16 v3, 0x1bb

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_2
    const-string v0, ""

    .line 237
    .local v0, authInfo:Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/common/file/FileNameUtils$WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
