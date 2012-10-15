.class Lentagged/audioformats/generic/GenericTag$GenericTagTextField;
.super Ljava/lang/Object;
.source "GenericTag.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lentagged/audioformats/generic/GenericTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericTagTextField"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field final synthetic this$0:Lentagged/audioformats/generic/GenericTag;


# direct methods
.method public constructor <init>(Lentagged/audioformats/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fieldId"
    .parameter "initialContent"

    .prologue
    .line 56
    iput-object p1, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->this$0:Lentagged/audioformats/generic/GenericTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 67
    instance-of v0, p1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lentagged/audioformats/generic/TagTextField;

    .end local p1
    invoke-interface {p1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/generic/GenericTag$GenericTagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
