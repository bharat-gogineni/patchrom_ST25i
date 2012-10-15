.class public Lcom/android/mms/model/ContactMessage;
.super Ljava/lang/Object;
.source "ContactMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/ContactMessage$ContactRecord;
    }
.end annotation


# instance fields
.field private mContactRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/ContactMessage$ContactRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private mMessageParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mTypeLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, typeLabelMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/ContactMessage;->mPosition:I

    .line 22
    iput-object p2, p0, Lcom/android/mms/model/ContactMessage;->mTypeLabelMap:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/model/ContactMessage;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/mms/model/ContactMessage;->mTypeLabelMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addRecord(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .parameter "type"
    .parameter "content"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 26
    iget v3, p0, Lcom/android/mms/model/ContactMessage;->mPosition:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_2

    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, currContact:Lcom/android/mms/model/ContactMessage$ContactRecord;
    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #currContact:Lcom/android/mms/model/ContactMessage$ContactRecord;
    check-cast v2, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .line 31
    .restart local v2       #currContact:Lcom/android/mms/model/ContactMessage$ContactRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/model/ContactMessage;->mPosition:I

    move/from16 v0, p3

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, gap:Ljava/lang/String;
    if-eqz v2, :cond_1

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/model/ContactMessage$ContactRecord;->addRecord(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 33
    :cond_1
    new-instance v2, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .end local v2           #currContact:Lcom/android/mms/model/ContactMessage$ContactRecord;
    move-object v8, v2

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/model/ContactMessage$ContactRecord;-><init>(Lcom/android/mms/model/ContactMessage;Ljava/lang/String;Ljava/lang/String;II)V

    .line 34
    .restart local v2       #currContact:Lcom/android/mms/model/ContactMessage$ContactRecord;
    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v2           #currContact:Lcom/android/mms/model/ContactMessage$ContactRecord;
    .end local v7           #gap:Ljava/lang/String;
    :cond_2
    move/from16 v0, p4

    iput v0, p0, Lcom/android/mms/model/ContactMessage;->mPosition:I

    .line 38
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getContactRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/ContactMessage$ContactRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public split()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessageParts:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessageParts:Ljava/util/ArrayList;

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, pos:I
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .line 54
    .local v0, cr:Lcom/android/mms/model/ContactMessage$ContactRecord;
    iget v5, v0, Lcom/android/mms/model/ContactMessage$ContactRecord;->mStart:I

    .line 55
    .local v5, start:I
    iget v1, v0, Lcom/android/mms/model/ContactMessage$ContactRecord;->mEnd:I

    .line 56
    .local v1, end:I
    if-le v5, v4, :cond_0

    .line 57
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, gap:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessageParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v2           #gap:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessageParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    move v4, v1

    .line 64
    goto :goto_0

    .line 65
    .end local v0           #cr:Lcom/android/mms/model/ContactMessage$ContactRecord;
    .end local v1           #end:I
    .end local v5           #start:I
    :cond_1
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 66
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 67
    .restart local v2       #gap:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 68
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessageParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v2           #gap:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pos:I
    :cond_2
    iget-object v6, p0, Lcom/android/mms/model/ContactMessage;->mMessageParts:Ljava/util/ArrayList;

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mMessage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/mms/model/ContactMessage;->mContactRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/ContactMessage$ContactRecord;

    .line 44
    .local v0, cr:Lcom/android/mms/model/ContactMessage$ContactRecord;
    iget v3, v0, Lcom/android/mms/model/ContactMessage$ContactRecord;->mStart:I

    iget v4, v0, Lcom/android/mms/model/ContactMessage$ContactRecord;->mEnd:I

    invoke-virtual {v0}, Lcom/android/mms/model/ContactMessage$ContactRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 46
    .end local v0           #cr:Lcom/android/mms/model/ContactMessage$ContactRecord;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
