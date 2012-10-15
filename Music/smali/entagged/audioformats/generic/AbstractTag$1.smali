.class Lentagged/audioformats/generic/AbstractTag$1;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lentagged/audioformats/generic/AbstractTag;->getFields()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fieldsIt:Ljava/util/Iterator;

.field final synthetic this$0:Lentagged/audioformats/generic/AbstractTag;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lentagged/audioformats/generic/AbstractTag;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lentagged/audioformats/generic/AbstractTag$1;->this$0:Lentagged/audioformats/generic/AbstractTag;

    iput-object p2, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private changeIt()V
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 293
    .local v0, l:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag$1;->changeIt()V

    .line 300
    :cond_0
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTag$1;->changeIt()V

    .line 307
    :cond_0
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lentagged/audioformats/generic/AbstractTag$1;->fieldsIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 312
    return-void
.end method
