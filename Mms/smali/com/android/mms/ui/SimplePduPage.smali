.class public Lcom/android/mms/ui/SimplePduPage;
.super Ljava/lang/Object;
.source "SimplePduPage.java"


# instance fields
.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPart(Lcom/android/mms/ui/SimplePduPart;)V
    .locals 1
    .parameter "part"

    .prologue
    .line 13
    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public getImage(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SimplePduPage;->getTypedPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    .line 48
    .local v0, part:Lcom/android/mms/ui/SimplePduPart;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/SimplePduPart;->getImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageAppearancePart()Lcom/android/mms/ui/SimplePduPart;
    .locals 5

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, textPart:Lcom/android/mms/ui/SimplePduPart;
    iget-object v3, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SimplePduPart;

    .line 66
    .local v1, part:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    if-nez v3, :cond_1

    .line 67
    move-object v2, v1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 76
    .end local v1           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_2
    :goto_1
    return-object v1

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public getPart(I)Lcom/android/mms/ui/SimplePduPart;
    .locals 1
    .parameter "index"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SimplePduPart;

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPartSize()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPartUri(I)Landroid/net/Uri;
    .locals 3
    .parameter "type"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SimplePduPart;

    .line 56
    .local v1, part:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 57
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 60
    .end local v1           #part:Lcom/android/mms/ui/SimplePduPart;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SimplePduPage;->getTypedPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v0

    .line 40
    .local v0, part:Lcom/android/mms/ui/SimplePduPart;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPart;->getText()Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTypedPart(I)Lcom/android/mms/ui/SimplePduPart;
    .locals 3
    .parameter "type"

    .prologue
    .line 30
    iget-object v2, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SimplePduPart;

    .line 31
    .local v1, part:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 35
    .end local v1           #part:Lcom/android/mms/ui/SimplePduPart;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPage;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method
