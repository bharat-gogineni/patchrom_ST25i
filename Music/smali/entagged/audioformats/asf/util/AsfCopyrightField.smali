.class public final Lentagged/audioformats/asf/util/AsfCopyrightField;
.super Ljava/lang/Object;
.source "AsfCopyrightField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    return-void
.end method

.method public static getCopyright(Lentagged/audioformats/Tag;)Lentagged/audioformats/generic/TagTextField;
    .locals 4
    .parameter "tag"

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, result:Lentagged/audioformats/generic/TagTextField;
    const-string v3, "SPECIAL/WM/COPYRIGHT"

    invoke-interface {p0, v3}, Lentagged/audioformats/Tag;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, list:Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 157
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/TagField;

    .line 158
    .local v0, field:Lentagged/audioformats/generic/TagField;
    instance-of v3, v0, Lentagged/audioformats/generic/TagTextField;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 159
    check-cast v2, Lentagged/audioformats/generic/TagTextField;

    .line 162
    .end local v0           #field:Lentagged/audioformats/generic/TagField;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 177
    instance-of v0, p1, Lentagged/audioformats/generic/TagTextField;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lentagged/audioformats/generic/TagTextField;

    .end local p1
    invoke-interface {p1}, Lentagged/audioformats/generic/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    .line 180
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "SPECIAL/WM/COPYRIGHT"

    return-object v0
.end method

.method public getRawContent()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 270
    :try_start_0
    invoke-virtual {p0, p1}, Lentagged/audioformats/asf/util/AsfCopyrightField;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 273
    const-string v1, "Conversion Exception occured."

    iput-object v1, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 305
    iput-object p1, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lentagged/audioformats/asf/util/AsfCopyrightField;->value:Ljava/lang/String;

    invoke-static {v0}, Lentagged/audioformats/asf/util/Utils;->checkStringLengthNullSafe(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPECIAL/WM/COPYRIGHT:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/asf/util/AsfCopyrightField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
