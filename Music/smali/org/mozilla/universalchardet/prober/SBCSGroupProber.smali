.class public Lorg/mozilla/universalchardet/prober/SBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final hebrewModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final ibm855Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final ibm866Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final koi8rModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final latin5BulgarianModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final latin5Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final latin7Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final macCyrillicModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final win1251BulgarianModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final win1251Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private static final win1253Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;


# instance fields
.field private activeNum:I

.field private bestGuess:I

.field private isActive:[Z

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->win1251Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->koi8rModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->latin5Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->macCyrillicModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->ibm866Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->ibm855Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->latin7Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->win1253Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->latin5BulgarianModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->win1251BulgarianModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->hebrewModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v1, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-array v0, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->isActive:[Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v2, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->win1251Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v2, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->koi8rModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->latin5Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x3

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->macCyrillicModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x4

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->ibm866Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x5

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->ibm855Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x6

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->latin7Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x7

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->win1253Model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/16 v1, 0x8

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->latin5BulgarianModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/16 v1, 0x9

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->win1251BulgarianModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    aput-object v2, v0, v1

    new-instance v0, Lorg/mozilla/universalchardet/prober/HebrewProber;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/HebrewProber;-><init>()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->hebrewModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3, v4, v0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    aput-object v2, v1, v6

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    sget-object v3, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->hebrewModel:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-direct {v2, v3, v5, v0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    aput-object v2, v1, v7

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v6

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/universalchardet/prober/HebrewProber;->setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->getConfidence()F

    iget v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_1

    const v1, 0x3f7d70a4

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_2

    const v1, 0x3c23d70a

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->isActive:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    move v1, v2

    goto :goto_2
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_1
    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->isActive:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v3

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_4

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_0

    :cond_4
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->isActive:[Z

    aput-boolean v1, v3, v0

    iget v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    iget v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    if-gtz v3, :cond_2

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->isActive:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
