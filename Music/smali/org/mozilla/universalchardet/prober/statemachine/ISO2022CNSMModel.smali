.class public Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;
.super Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# static fields
.field private static iso2022cnCharLenTable:[I

.field private static iso2022cnClassTable:[I

.field private static iso2022cnStateTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    const/16 v2, 0x20

    new-array v10, v2, [I

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v12

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v0

    move v2, v1

    move v3, v1

    move v4, v12

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v13

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v14

    const/4 v9, 0x5

    move v2, v13

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/4 v9, 0x6

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/4 v9, 0x7

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0x8

    move v2, v1

    move v3, v1

    move v4, v14

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0x9

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0xa

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0xb

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0xc

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0xd

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0xe

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v9, 0xf

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v9

    const/16 v11, 0x10

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x11

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x12

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x13

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x14

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x15

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x16

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x17

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x18

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x19

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x1a

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x1b

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x1c

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x1d

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x1e

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/16 v11, 0x1f

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    sput-object v10, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->iso2022cnClassTable:[I

    const/16 v2, 0x8

    new-array v10, v2, [I

    move v2, v13

    move v3, v12

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v1

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v12

    move v2, v12

    move v3, v12

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v14

    move v9, v12

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v13

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v0

    move v6, v12

    move v7, v12

    move v8, v12

    move v9, v12

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v14

    const/4 v11, 0x5

    const/4 v2, 0x5

    const/4 v3, 0x6

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    move v9, v12

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/4 v11, 0x6

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v0

    move v6, v12

    move v7, v12

    move v8, v12

    move v9, v12

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v2

    aput v2, v10, v11

    const/4 v11, 0x7

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v0

    move v8, v12

    move v9, v1

    invoke-static/range {v2 .. v9}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v0

    aput v0, v10, v11

    sput-object v10, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->iso2022cnStateTable:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->iso2022cnCharLenTable:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v4, 0xf

    const/4 v2, 0x7

    const/4 v1, 0x3

    const/4 v3, 0x2

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->iso2022cnClassTable:[I

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    const/16 v11, 0x9

    new-instance v5, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v10, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->iso2022cnStateTable:[I

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    sget-object v6, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;->iso2022cnCharLenTable:[I

    sget-object v7, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_2022_CN:Ljava/lang/String;

    move-object v2, p0

    move-object v3, v0

    move v4, v11

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    return-void
.end method
