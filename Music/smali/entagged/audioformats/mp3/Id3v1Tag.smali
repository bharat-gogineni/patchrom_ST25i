.class public Lentagged/audioformats/mp3/Id3v1Tag;
.super Lentagged/audioformats/generic/GenericTag;
.source "Id3v1Tag.java"


# static fields
.field public static final GENRES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lentagged/audioformats/Tag;->DEFAULT_GENRES:[Ljava/lang/String;

    sput-object v0, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id3v1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lentagged/audioformats/generic/GenericTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateGenre(B)Ljava/lang/String;
    .locals 2
    .parameter "b"

    .prologue
    .line 32
    and-int/lit16 v0, p1, 0xff

    .line 34
    .local v0, i:I
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    sget-object v1, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 35
    :cond_0
    const-string v1, ""

    .line 36
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lentagged/audioformats/mp3/Id3v1Tag;->GENRES:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method
