.class final Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
.super Ljava/lang/Object;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimelineEntry"
.end annotation


# instance fields
.field private final mAction:I

.field private final mElement:Lorg/w3c/dom/smil/ElementTime;

.field private final mOffsetTime:D


# direct methods
.method public constructor <init>(DLorg/w3c/dom/smil/ElementTime;I)V
    .locals 0
    .parameter "offsetTime"
    .parameter "element"
    .parameter "action"

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-wide p1, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    .line 733
    iput-object p3, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    .line 734
    iput p4, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    .line 735
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 723
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mAction:I

    return v0
.end method

.method public getElement()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    return-object v0
.end method

.method public getOffsetTime()D
    .locals 2

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mElement:Lorg/w3c/dom/smil/ElementTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
