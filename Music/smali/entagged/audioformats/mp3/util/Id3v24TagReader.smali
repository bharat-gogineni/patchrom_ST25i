.class public Lentagged/audioformats/mp3/util/Id3v24TagReader;
.super Ljava/lang/Object;
.source "Id3v24TagReader.java"


# instance fields
.field private conversion22to23:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->initConversionTable()V

    .line 54
    return-void
.end method

.method private convertFromId3v22(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "field"

    .prologue
    .line 57
    iget-object v1, p0, Lentagged/audioformats/mp3/util/Id3v24TagReader;->conversion22to23:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    const-string v0, ""

    .line 62
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private createId3Frame(Ljava/lang/String;[BB)Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    .locals 1
    .parameter "field"
    .parameter "data"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 67
    sget-byte v0, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    if-ne p3, v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->convertFromId3v22(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const-string v0, "TDRC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;

    invoke-direct {v0, p1, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TimeId3Frame;-><init>(Ljava/lang/String;[BB)V

    .line 87
    :goto_0
    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;

    invoke-direct {v0, p1, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/TextId3Frame;-><init>(Ljava/lang/String;[BB)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "COMM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;

    invoke-direct {v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/CommId3Frame;-><init>([BB)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "UFID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;

    invoke-direct {v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/UfidId3Frame;-><init>([BB)V

    goto :goto_0

    .line 83
    :cond_4
    const-string v0, "APIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;

    invoke-direct {v0, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/ApicId3Frame;-><init>([BB)V

    goto :goto_0

    .line 87
    :cond_5
    new-instance v0, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;

    invoke-direct {v0, p1, p2, p3}, Lentagged/audioformats/mp3/util/id3frames/GenericId3Frame;-><init>(Ljava/lang/String;[BB)V

    goto :goto_0
.end method

.method private initConversionTable()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lentagged/audioformats/mp3/util/Id3v24TagReader;->conversion22to23:Ljava/util/Hashtable;

    .line 101
    const/16 v3, 0x3f

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "BUF"

    aput-object v3, v1, v5

    const-string v3, "CNT"

    aput-object v3, v1, v6

    const-string v3, "COM"

    aput-object v3, v1, v7

    const-string v3, "CRA"

    aput-object v3, v1, v8

    const-string v3, "CRM"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "ETC"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "EQU"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "GEO"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "IPL"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "LNK"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "MCI"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "MLL"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "PIC"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "POP"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "REV"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "RVA"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "SLT"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "STC"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "TAL"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "TBP"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "TCM"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "TCO"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "TCR"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "TDA"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "TDY"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "TEN"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "TFT"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "TIM"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "TKE"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "TLA"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "TLE"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "TMT"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "TOA"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "TOF"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "TOL"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "TOR"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "TOT"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "TP1"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "TP2"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string v4, "TP3"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    const-string v4, "TP4"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    const-string v4, "TPA"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "TPB"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "TRC"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    const-string v4, "TRD"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string v4, "TRK"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    const-string v4, "TSI"

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    const-string v4, "TSS"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    const-string v4, "TT1"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "TT2"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "TT3"

    aput-object v4, v1, v3

    const/16 v3, 0x33

    const-string v4, "TXT"

    aput-object v4, v1, v3

    const/16 v3, 0x34

    const-string v4, "TXX"

    aput-object v4, v1, v3

    const/16 v3, 0x35

    const-string v4, "TYE"

    aput-object v4, v1, v3

    const/16 v3, 0x36

    const-string v4, "UFI"

    aput-object v4, v1, v3

    const/16 v3, 0x37

    const-string v4, "ULT"

    aput-object v4, v1, v3

    const/16 v3, 0x38

    const-string v4, "WAF"

    aput-object v4, v1, v3

    const/16 v3, 0x39

    const-string v4, "WAR"

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    const-string v4, "WAS"

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    const-string v4, "WCM"

    aput-object v4, v1, v3

    const/16 v3, 0x3c

    const-string v4, "WCP"

    aput-object v4, v1, v3

    const/16 v3, 0x3d

    const-string v4, "WPB"

    aput-object v4, v1, v3

    const/16 v3, 0x3e

    const-string v4, "WXX"

    aput-object v4, v1, v3

    .line 109
    .local v1, v22:[Ljava/lang/String;
    const/16 v3, 0x3f

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "RBUF"

    aput-object v3, v2, v5

    const-string v3, "PCNT"

    aput-object v3, v2, v6

    const-string v3, "COMM"

    aput-object v3, v2, v7

    const-string v3, "AENC"

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ETCO"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "EQUA"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "GEOB"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "IPLS"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "LINK"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "MCDI"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "MLLT"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "APIC"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "POPM"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "RVRB"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "RVAD"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "SYLT"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "SYTC"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "TALB"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "TBPM"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "TCOM"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "TCON"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "TCOP"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "TDAT"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "TDLY"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "TENC"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "TFLT"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "TIME"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "TKEY"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "TLAN"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "TLEN"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "TMED"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "TOPE"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "TOFN"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "TOLY"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "TORY"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "TOAL"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "TPE1"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "TPE2"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "TPE3"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "TPE4"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "TPOS"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "TPUB"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "TSRC"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "TRDA"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "TRCK"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "TSIZ"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "TSSE"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "TIT1"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "TIT2"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "TIT3"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "TEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "TXXX"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "TYER"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "UFID"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "USLT"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "WOAF"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "WOAR"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "WOAS"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "WCOM"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "WCOP"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "WPUB"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "WXXX"

    aput-object v4, v2, v3

    .line 118
    .local v2, v23:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 119
    iget-object v3, p0, Lentagged/audioformats/mp3/util/Id3v24TagReader;->conversion22to23:Ljava/util/Hashtable;

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method private processExtendedHeader(Ljava/nio/ByteBuffer;B)I
    .locals 3
    .parameter "data"
    .parameter "version"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, extsize:I
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 137
    .local v0, exthead:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 138
    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-ne p2, v2, :cond_0

    .line 139
    sget-byte v2, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    invoke-direct {p0, p1, v2}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSize(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    :goto_0
    return v1

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSyncsafeInteger(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private readSize(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "bb"
    .parameter "version"

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, value:I
    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    if-ne p2, v1, :cond_0

    .line 262
    invoke-direct {p0, p1}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSyncsafeInteger(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 270
    :goto_0
    return v0

    .line 264
    :cond_0
    sget-byte v1, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    if-ne p2, v1, :cond_1

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 267
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 268
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private readSyncsafeInteger(Ljava/nio/ByteBuffer;)I
    .locals 2
    .parameter "buffer"

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, value:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    add-int/2addr v0, v1

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 286
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 287
    return v0
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;[ZB)Lentagged/audioformats/mp3/Id3v2Tag;
    .locals 14
    .parameter "data"
    .parameter "ID3Flags"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    .line 171
    .local v9, tagSize:I
    new-instance v8, Lentagged/audioformats/mp3/Id3v2Tag;

    invoke-direct {v8}, Lentagged/audioformats/mp3/Id3v2Tag;-><init>()V

    .line 176
    .local v8, tag:Lentagged/audioformats/mp3/Id3v2Tag;
    sget-byte v11, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    move/from16 v0, p3

    if-eq v0, v11, :cond_0

    sget-byte v11, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    move/from16 v0, p3

    if-ne v0, v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    aget-boolean v11, p2, v11

    if-eqz v11, :cond_1

    .line 178
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->processExtendedHeader(Ljava/nio/ByteBuffer;B)I

    .line 185
    :cond_1
    sget-byte v11, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V22:B

    move/from16 v0, p3

    if-ne v0, v11, :cond_3

    const/4 v7, 0x3

    .line 187
    .local v7, specSize:I
    :goto_0
    const/4 v1, 0x0

    .local v1, a:I
    :goto_1
    if-ge v1, v9, :cond_2

    .line 189
    new-array v2, v7, [B

    .line 192
    .local v2, b:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v11, v7, :cond_4

    .line 245
    .end local v2           #b:[B
    :cond_2
    :goto_2
    return-object v8

    .line 185
    .end local v1           #a:I
    .end local v7           #specSize:I
    :cond_3
    const/4 v7, 0x4

    goto :goto_0

    .line 196
    .restart local v1       #a:I
    .restart local v2       #b:[B
    .restart local v7       #specSize:I
    :cond_4
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 199
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 201
    .local v5, field:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    if-eqz v11, :cond_2

    .line 205
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->readSize(Ljava/nio/ByteBuffer;I)I

    move-result v6

    .line 209
    .local v6, frameSize:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v6, v11, :cond_5

    if-gtz v6, :cond_6

    .line 211
    :cond_5
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Frame size error, skiping the rest of the tag:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_6
    sget-byte v11, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V23:B

    move/from16 v0, p3

    if-eq v0, v11, :cond_7

    sget-byte v11, Lentagged/audioformats/mp3/Id3v2Tag;->ID3V24:B

    move/from16 v0, p3

    if-ne v0, v11, :cond_9

    :cond_7
    const/4 v11, 0x2

    :goto_3
    add-int/2addr v11, v6

    new-array v2, v11, [B

    .line 221
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    const-string v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 225
    const/4 v4, 0x0

    .line 233
    .local v4, f:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :try_start_0
    move/from16 v0, p3

    invoke-direct {p0, v5, v2, v0}, Lentagged/audioformats/mp3/util/Id3v24TagReader;->createId3Frame(Ljava/lang/String;[BB)Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 240
    :goto_4
    if-eqz v4, :cond_8

    .line 241
    invoke-virtual {v8, v4}, Lentagged/audioformats/mp3/Id3v2Tag;->add(Lentagged/audioformats/generic/TagField;)V

    .line 187
    .end local v4           #f:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 234
    .restart local v4       #f:Lentagged/audioformats/mp3/util/id3frames/Id3Frame;
    :catch_0
    move-exception v10

    .line 235
    .local v10, uee:Ljava/io/UnsupportedEncodingException;
    throw v10

    .line 236
    .end local v10           #uee:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 237
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
