.class public Lcom/android/mms/util/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# static fields
.field private static final SMILEYS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x55

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\ue415"

    aput-object v2, v1, v4

    const-string v2, "\ue056"

    aput-object v2, v1, v5

    const-string v2, "\ue057"

    aput-object v2, v1, v6

    const-string v2, "\ue414"

    aput-object v2, v1, v7

    const-string v2, "\ue405"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\ue106"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\ue418"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\ue417"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\ue40d"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\ue40a"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\ue404"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\ue105"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\ue409"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\ue40e"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\ue402"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\ue108"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\ue403"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\ue058"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\ue407"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\ue401"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\ue40f"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\ue40b"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\ue406"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\ue413"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\ue411"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "\ue412"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\ue410"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\ue107"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\ue059"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\ue416"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\ue408"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\ue40c"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\ue11a"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "\ue10c"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "\ue022"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "\ue023"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "\ue327"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\ue329"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\ue32e"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\ue32f"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "\ue334"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "\ue020"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "\ue021"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "\ue13c"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "\ue330"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "\ue331"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "\ue326"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "\ue03e"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "\ue11d"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "\ue05a"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "\ue00e"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "\ue421"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "\ue420"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "\ue00d"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "\ue010"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "\ue011"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "\ue41e"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "\ue012"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "\ue422"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "\ue22e"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "\ue22f"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "\ue231"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "\ue230"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "\ue427"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "\ue41d"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "\ue00f"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "\ue41f"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "\ue14c"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "\ue428"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "\ue51f"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "\ue424"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "\ue423"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "\ue253"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "\ue31e"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "\ue31f"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "\ue31d"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "\ue425"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "\ue111"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "\ue003"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "\ue426"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "\ue11c"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "\ue04e"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "\ue51c"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "\ue519"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "\ue518"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x35

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\ue04a"

    aput-object v2, v1, v4

    const-string v2, "\ue04b"

    aput-object v2, v1, v5

    const-string v2, "\ue049"

    aput-object v2, v1, v6

    const-string v2, "\ue048"

    aput-object v2, v1, v7

    const-string v2, "\ue04c"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\ue13d"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\ue443"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\ue43e"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\ue04f"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\ue052"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\ue053"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\ue524"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\ue52c"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\ue52a"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\ue531"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\ue050"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\ue527"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\ue051"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\ue10b"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\ue52b"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\ue52f"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\ue109"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\ue528"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\ue01a"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\ue134"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "\ue530"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\ue529"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\ue526"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\ue52d"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\ue521"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\ue523"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\ue52e"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\ue055"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "\ue525"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "\ue10a"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "\ue522"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "\ue019"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\ue054"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\ue520"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\ue306"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "\ue030"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "\ue304"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "\ue110"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "\ue032"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "\ue305"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "\ue303"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "\ue118"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "\ue447"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "\ue119"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "\ue307"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "\ue308"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "\ue444"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "\ue441"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x87

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\ue117"

    aput-object v2, v1, v4

    const-string v2, "\ue440"

    aput-object v2, v1, v5

    const-string v2, "\ue445"

    aput-object v2, v1, v6

    const-string v2, "\ue11b"

    aput-object v2, v1, v7

    const-string v2, "\ue448"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\ue033"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\ue112"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\ue312"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\ue310"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\ue126"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\ue008"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\ue03d"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\ue00c"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\ue12a"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\ue00b"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\ue009"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\ue142"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\ue128"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\ue03f"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\ue313"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\ue10f"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\ue102"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\ue13f"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\ue140"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\ue12f"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "\ue30e"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\ue311"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\ue113"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\ue30f"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\ue13b"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\ue42b"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\ue42a"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\ue018"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "\ue016"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "\ue015"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "\ue014"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "\ue42c"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\ue42d"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\ue013"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\ue130"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "\ue20e"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "\ue20c"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "\ue20f"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "\ue20d"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "\ue12d"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "\ue324"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "\ue301"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "\ue148"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "\ue502"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "\ue03c"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "\ue30a"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "\ue042"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "\ue040"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "\ue041"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "\ue131"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "\ue007"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "\ue31a"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "\ue13e"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "\ue31b"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "\ue006"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "\ue302"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "\ue319"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "\ue321"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "\ue322"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "\ue314"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "\ue503"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "\ue10e"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "\ue43c"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "\ue11e"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "\ue323"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "\ue31c"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "\ue034"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "\ue035"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "\ue045"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "\ue338"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "\ue047"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "\ue30c"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "\ue044"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "\ue30b"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "\ue043"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "\ue120"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "\ue33b"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "\ue33f"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "\ue341"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "\ue34c"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "\ue342"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "\ue33e"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "\ue340"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "\ue339"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "\ue147"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "\ue343"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "\ue33c"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "\ue33a"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "\ue43f"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "\ue34b"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "\ue046"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "\ue345"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "\ue346"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "\ue348"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "\ue347"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "\ue34a"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "\ue349"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "\ue202"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "\ue433"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "\ue135"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "\ue01c"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "\ue01d"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "\ue10d"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "\ue136"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "\ue01b"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "\ue15a"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "\ue159"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "\ue432"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "\ue430"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "\ue431"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "\ue42f"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "\ue01e"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "\ue039"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "\ue01f"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "\ue201"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "\ue03a"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "\ue14e"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "\ue252"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "\ue137"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "\ue154"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "\ue513"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "\ue50c"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "\ue50d"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "\ue50b"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "\ue514"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "\ue512"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "\ue511"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string v3, "\ue50f"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "\ue510"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, "\ue50e"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ":)"

    aput-object v2, v1, v4

    const-string v2, ":P"

    aput-object v2, v1, v5

    const-string v2, ":D"

    aput-object v2, v1, v6

    const-string v2, ":("

    aput-object v2, v1, v7

    const-string v2, ":\'("

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, ":O"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ":-X"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "B-)"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "-_-"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, ">_<"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "^_^"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "T_T"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "@_@"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "*_*"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u2299_\u2299"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "o(\u2229_\u2229)o"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\u256f\ufe3f\u2570"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\u2570_\u256f"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "(-.-)zZ"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\u256e(\u256f\u03b5\u2570)\u256d"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u2299\u2299?"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "(\u00b0o\u00b0)"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "-_-#"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "^_^)Y"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "::>_<::"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "(\u256f3\u2570)"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "@>>--"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x28

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u2606"

    aput-object v2, v1, v4

    const-string v2, "\u2605"

    aput-object v2, v1, v5

    const-string v2, "\u25cb"

    aput-object v2, v1, v6

    const-string v2, "\u25cf"

    aput-object v2, v1, v7

    const-string v2, "\u203b"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u2660"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u2663"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u2764"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u25c6"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u25c7"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u25b3"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u25b2"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u25bd"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u25bc"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u00a7"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u25a1"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "\u25a0"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\u2668"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\uffe5"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\uffe1"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u00ae"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u00a9"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u2122"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u2192"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\u2190"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\u2191"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u2193"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\u263c"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\u2669"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\u266a"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\u266b"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "\u266d"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "\u56cd"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "\u260e"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "\u260f"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\u261c"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\u261e"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\u221e"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/mms/util/SmileyParser;->SMILEYS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyCount(I)I
    .locals 1
    .parameter "category"

    .prologue
    .line 189
    sget-object v0, Lcom/android/mms/util/SmileyParser;->SMILEYS:[[Ljava/lang/String;

    aget-object v0, v0, p0

    array-length v0, v0

    return v0
.end method

.method public static getSmileyString(II)Ljava/lang/String;
    .locals 1
    .parameter "category"
    .parameter "index"

    .prologue
    .line 192
    sget-object v0, Lcom/android/mms/util/SmileyParser;->SMILEYS:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method
