.class public Lentagged/audioformats/mpc/util/MpcHeader;
.super Ljava/lang/Object;
.source "MpcHeader.java"


# instance fields
.field b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    .line 28
    return-void
.end method


# virtual methods
.method public getChannelNumber()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 53
    iget-object v0, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 56
    :cond_0
    return v2
.end method

.method public getEncoderInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 88
    iget-object v2, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/16 v3, 0x18

    aget-byte v0, v2, v3

    .line 89
    .local v0, encoder:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Mpc encoder v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-double v3, v0

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 90
    .local v1, out:Ljava/lang/StringBuffer;
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_1

    .line 91
    const-string v2, "Release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    :cond_1
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_2

    .line 93
    const-string v2, "Beta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 94
    :cond_2
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 95
    const-string v2, "Alpha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "MPEGplus (MPC)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 61
    .local v0, out:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ne v1, v3, :cond_0

    .line 62
    const-string v1, " rev.7, Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    iget-object v1, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 80
    const-string v1, "No profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :pswitch_0
    const-string v1, "No profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v1, "Unstable/Experimental"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 66
    :pswitch_2
    const-string v1, "Unused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 67
    :pswitch_3
    const-string v1, "Unused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 68
    :pswitch_4
    const-string v1, "Unused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 69
    :pswitch_5
    const-string v1, "Below Telephone (q= 0.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 70
    :pswitch_6
    const-string v1, "Below Telephone (q= 1.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 71
    :pswitch_7
    const-string v1, "Telephone (q= 2.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    :pswitch_8
    const-string v1, "Thumb (q= 3.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 73
    :pswitch_9
    const-string v1, "Radio (q= 4.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 74
    :pswitch_a
    const-string v1, "Standard (q= 5.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :pswitch_b
    const-string v1, "Xtreme (q= 6.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :pswitch_c
    const-string v1, "Insane (q= 7.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    :pswitch_d
    const-string v1, "BrainDead (q= 8.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 78
    :pswitch_e
    const-string v1, "Above BrainDead (q= 9.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    :pswitch_f
    const-string v1, "Above BrainDead (q=10.0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public getSamplesNumber()I
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumber([BII)I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSamplingRate()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 39
    iget-object v1, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 40
    iget-object v1, p0, Lentagged/audioformats/mpc/util/MpcHeader;->b:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x2

    packed-switch v1, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 41
    :pswitch_0
    const v0, 0xac44

    goto :goto_0

    .line 42
    :pswitch_1
    const v0, 0xbb80

    goto :goto_0

    .line 43
    :pswitch_2
    const v0, 0x93a8

    goto :goto_0

    .line 44
    :pswitch_3
    const/16 v0, 0x7d00

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
