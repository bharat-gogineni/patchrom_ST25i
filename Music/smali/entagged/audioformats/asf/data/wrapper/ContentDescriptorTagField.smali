.class public Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;
.super Ljava/lang/Object;
.source "ContentDescriptorTagField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagField;


# instance fields
.field private toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;


# direct methods
.method public constructor <init>(Lentagged/audioformats/asf/data/ContentDescriptor;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/ContentDescriptor;->createCopy()Lentagged/audioformats/asf/data/ContentDescriptor;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    .line 50
    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    iget-object v1, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v1}, Lentagged/audioformats/asf/data/ContentDescriptor;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->isCommon()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lentagged/audioformats/asf/data/wrapper/ContentDescriptorTagField;->toWrap:Lentagged/audioformats/asf/data/ContentDescriptor;

    invoke-virtual {v0}, Lentagged/audioformats/asf/data/ContentDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
