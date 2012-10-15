.class Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BasicVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/version/BasicVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteVersionParser"
.end annotation


# static fields
.field private static final AppVersionAttribute:Ljava/lang/String; = "appVer"

.field private static final MustUpgradeAppVersionAttribute:Ljava/lang/String; = "mustUpgradeVer"

.field private static final MustUpgradeDeadlineAttribute:Ljava/lang/String; = "mustUpgradeDeadline"


# instance fields
.field private mAppVersion:I

.field private mMustUpgradeDeadline:J

.field private mMustUpgradeVer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 435
    return-void
.end method


# virtual methods
.method public getAppVersion()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;->mAppVersion:I

    return v0
.end method

.method public getMustUpgradeDeadline()J
    .locals 2

    .prologue
    .line 430
    iget-wide v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;->mMustUpgradeDeadline:J

    return-wide v0
.end method

.method public getMustUpgradeVer()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;->mMustUpgradeVer:I

    return v0
.end method

.method public parseXML(Ljava/lang/String;)V
    .locals 4
    .parameter "xml"

    .prologue
    .line 439
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, p0}, Lcom/xiaomi/common/util/SaxXmlParserWrapper;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;
    const-string v1, "common/BasicVersionChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse XML "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 448
    const-string v1, "version"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const-string v1, "appVer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;->mAppVersion:I

    .line 450
    const-string v1, "mustUpgradeVer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, dat:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;->mMustUpgradeVer:I

    .line 453
    :cond_0
    const-string v1, "mustUpgradeDeadline"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    invoke-static {v0}, Lcom/xiaomi/common/util/DateTimeHelper;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/common/version/BasicVersionChecker$RemoteVersionParser;->mMustUpgradeDeadline:J

    .line 458
    .end local v0           #dat:Ljava/lang/String;
    :cond_1
    return-void
.end method
