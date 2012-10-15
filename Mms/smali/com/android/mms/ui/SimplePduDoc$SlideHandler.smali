.class Lcom/android/mms/ui/SimplePduDoc$SlideHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SimplePduDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SimplePduDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideHandler"
.end annotation


# instance fields
.field private mCurrPage:Lcom/android/mms/ui/SimplePduPage;

.field private mPartsRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPart:Z

.field private mediaCount:I

.field private textCount:I

.field final synthetic this$0:Lcom/android/mms/ui/SimplePduDoc;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SimplePduDoc;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, partsRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/SimplePduPart;>;"
    const/4 v1, 0x0

    .line 289
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->this$0:Lcom/android/mms/ui/SimplePduDoc;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 278
    iput-boolean v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mStartPart:Z

    .line 290
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mPartsRecord:Ljava/util/ArrayList;

    .line 291
    iput v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->textCount:I

    .line 292
    iput v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mediaCount:I

    .line 293
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 333
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 335
    const-string v0, "par"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mStartPart:Z

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPage;->getPartSize()I

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPage;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->this$0:Lcom/android/mms/ui/SimplePduDoc;

    #getter for: Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/SimplePduDoc;->access$200(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    .line 344
    :cond_1
    return-void
.end method

.method public getRestParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SimplePduPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mPartsRecord:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSlideshow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 351
    iget v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->textCount:I

    if-gt v1, v0, :cond_0

    iget v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mediaCount:I

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->this$0:Lcom/android/mms/ui/SimplePduDoc;

    #getter for: Lcom/android/mms/ui/SimplePduDoc;->mPages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SimplePduDoc;->access$200(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v4, "par"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mStartPart:Z

    .line 300
    new-instance v4, Lcom/android/mms/ui/SimplePduPage;

    invoke-direct {v4}, Lcom/android/mms/ui/SimplePduPage;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-boolean v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mStartPart:Z

    if-eqz v4, :cond_0

    .line 302
    const-string v4, "src"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, src:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, currPart:Lcom/android/mms/ui/SimplePduPart;
    const-string v4, "cid:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    const-string v4, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->this$0:Lcom/android/mms/ui/SimplePduDoc;

    #getter for: Lcom/android/mms/ui/SimplePduDoc;->mCidParts:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/mms/ui/SimplePduDoc;->access$000(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currPart:Lcom/android/mms/ui/SimplePduPart;
    check-cast v0, Lcom/android/mms/ui/SimplePduPart;

    .line 312
    .restart local v0       #currPart:Lcom/android/mms/ui/SimplePduPart;
    :goto_1
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v3

    .line 314
    .local v3, type:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mCurrPage:Lcom/android/mms/ui/SimplePduPage;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/SimplePduPage;->addPart(Lcom/android/mms/ui/SimplePduPart;)V

    .line 316
    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mPartsRecord:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 317
    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mPartsRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SimplePduPart;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduPart;->getContentLocation()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mms/ui/SimplePduPart;->getContentLocation()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mPartsRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 316
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 309
    .end local v1           #i:I
    .end local v3           #type:I
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->this$0:Lcom/android/mms/ui/SimplePduDoc;

    #getter for: Lcom/android/mms/ui/SimplePduDoc;->mSrcParts:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/mms/ui/SimplePduDoc;->access$100(Lcom/android/mms/ui/SimplePduDoc;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currPart:Lcom/android/mms/ui/SimplePduPart;
    check-cast v0, Lcom/android/mms/ui/SimplePduPart;

    .restart local v0       #currPart:Lcom/android/mms/ui/SimplePduPart;
    goto :goto_1

    .line 321
    .restart local v1       #i:I
    .restart local v3       #type:I
    :cond_4
    if-nez v3, :cond_5

    .line 322
    iget v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->textCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->textCount:I

    goto :goto_0

    .line 324
    :cond_5
    iget v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mediaCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/mms/ui/SimplePduDoc$SlideHandler;->mediaCount:I

    goto :goto_0
.end method
