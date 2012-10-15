.class public Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilMediaElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILMediaElement;


# instance fields
.field mElementTime:Lorg/w3c/dom/smil/ElementTime;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 1
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;-><init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    .line 128
    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    move-result v0

    return v0
.end method

.method public endElement()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    move-result v0

    return v0
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getDur()F
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getDur()F

    move-result v0

    return v0
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    return-object v0
.end method

.method public getFill()S
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getFill()S

    move-result v0

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "src"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V

    .line 301
    return-void
.end method

.method public resumeElement()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V

    .line 305
    return-void
.end method

.method public seekElement(F)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V

    .line 309
    return-void
.end method

.method public setDur(F)V
    .locals 1
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->mElementTime:Lorg/w3c/dom/smil/ElementTime;

    invoke-interface {v0, p1}, Lorg/w3c/dom/smil/ElementTime;->setDur(F)V

    .line 317
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
