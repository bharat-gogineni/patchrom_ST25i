.class public interface abstract Lorg/w3c/dom/smil/ElementTime;
.super Ljava/lang/Object;
.source "ElementTime.java"


# virtual methods
.method public abstract beginElement()Z
.end method

.method public abstract endElement()Z
.end method

.method public abstract getBegin()Lorg/w3c/dom/smil/TimeList;
.end method

.method public abstract getDur()F
.end method

.method public abstract getEnd()Lorg/w3c/dom/smil/TimeList;
.end method

.method public abstract getFill()S
.end method

.method public abstract pauseElement()V
.end method

.method public abstract resumeElement()V
.end method

.method public abstract seekElement(F)V
.end method

.method public abstract setDur(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
