.class public final Lcom/xiaomi/common/util/SaxXmlParserWrapper;
.super Ljava/lang/Object;
.source "SaxXmlParserWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 2
    .parameter "inputStream"
    .parameter "saxHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;
        }
    .end annotation

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/xiaomi/common/util/SaxXmlParserWrapper;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 31
    return-void
.end method

.method public static parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 6
    .parameter "inputSource"
    .parameter "saxHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;
        }
    .end annotation

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "inputStream"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 46
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "saxHandler"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 50
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 51
    .local v2, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 52
    .local v3, xmlreader:Lorg/xml/sax/XMLReader;
    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 54
    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_3

    .line 64
    return-void

    .line 55
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v3           #xmlreader:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;

    const-string v5, "\u65e0\u6cd5\u89e3\u6790\u8be5XML\u6587\u6863."

    invoke-direct {v4, v5, v0}, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;

    const-string v5, "\u65e0\u6cd5\u89e3\u6790\u8be5XML\u6587\u6863."

    invoke-direct {v4, v5, v0}, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 59
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 60
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;

    const-string v5, "\u65e0\u6cd5\u89e3\u6790\u8be5XML\u6587\u6863."

    invoke-direct {v4, v5, v0}, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 61
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v0

    .line 62
    .local v0, e:Lorg/w3c/dom/DOMException;
    new-instance v4, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;

    const-string v5, "\u65e0\u6cd5\u89e3\u6790\u8be5XML\u6587\u6863."

    invoke-direct {v4, v5, v0}, Lcom/xiaomi/common/util/SaxXmlParserWrapper$ConfigParserException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
