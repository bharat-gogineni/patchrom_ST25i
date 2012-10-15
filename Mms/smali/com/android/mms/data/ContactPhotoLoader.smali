.class public Lcom/android/mms/data/ContactPhotoLoader;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/ContactPhotoLoader$1;,
        Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;,
        Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final CONTACT_COLUMNS:[Ljava/lang/String;

.field private final SP_COLUMNS:[Ljava/lang/String;

.field private final mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultContactResourceId:I

.field private final mDefaultSPResourceId:I

.field private mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/mms/data/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "defaultContactResourceId"
    .parameter "defaultSPResourceId"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data15"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->CONTACT_COLUMNS:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "addr"

    aput-object v1, v0, v2

    const-string v1, "photo"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->SP_COLUMNS:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 125
    iput p2, p0, Lcom/android/mms/data/ContactPhotoLoader;->mDefaultContactResourceId:I

    .line 126
    iput p3, p0, Lcom/android/mms/data/ContactPhotoLoader;->mDefaultSPResourceId:I

    .line 127
    iput-object p1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/ContactPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/ContactPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/ContactPhotoLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/data/ContactPhotoLoader;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/mms/data/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/ContactPhotoLoader;J[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/ContactPhotoLoader;->cacheBitmap(J[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/data/ContactPhotoLoader;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->SP_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/data/ContactPhotoLoader;Ljava/lang/String;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/ContactPhotoLoader;->cacheBitmap(Ljava/lang/String;[B)V

    return-void
.end method

.method private cacheBitmap(J[B)V
    .locals 3
    .parameter "id"
    .parameter "bytes"

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/mms/data/ContactPhotoLoader;->createBitmapHolderFromBytes([B)Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    return-void
.end method

.method private cacheBitmap(Ljava/lang/String;[B)V
    .locals 2
    .parameter "number"
    .parameter "bytes"

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Lcom/android/mms/data/ContactPhotoLoader;->createBitmapHolderFromBytes([B)Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    return-void
.end method

.method private createBitmapHolderFromBytes([B)Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v2, 0x0

    .line 326
    new-instance v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    invoke-direct {v1, v2}, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;-><init>(Lcom/android/mms/data/ContactPhotoLoader$1;)V

    .line 327
    .local v1, holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    .line 328
    if-eqz p1, :cond_0

    .line 330
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)Z
    .locals 10
    .parameter "view"
    .parameter "contact"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v3

    .line 168
    .local v3, isSP:Z
    if-eqz v3, :cond_1

    .line 169
    iget-object v6, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    .line 170
    .local v2, holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    iget v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mDefaultSPResourceId:I

    .line 176
    .local v1, defaultResourceId:I
    :goto_0
    if-nez v2, :cond_3

    .line 177
    new-instance v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    .end local v2           #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    invoke-direct {v2, v9}, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;-><init>(Lcom/android/mms/data/ContactPhotoLoader$1;)V

    .line 178
    .restart local v2       #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    if-eqz v3, :cond_2

    .line 179
    iget-object v4, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iput v5, v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    move v4, v5

    .line 204
    :goto_2
    return v4

    .line 172
    .end local v1           #defaultResourceId:I
    .end local v2           #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    :cond_1
    iget-object v6, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    .line 173
    .restart local v2       #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    iget v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mDefaultContactResourceId:I

    .restart local v1       #defaultResourceId:I
    goto :goto_0

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :cond_3
    iget v6, v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 185
    iget-object v6, v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v6, :cond_4

    .line 186
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 190
    :cond_4
    iget-object v6, v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 191
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 198
    :cond_5
    iput-object v9, v2, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method

.method private obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, photoIdsAsStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, spNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 345
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 346
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 356
    iget-object v5, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 357
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Contact;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 358
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 360
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    .line 363
    .local v1, holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    if-eqz v1, :cond_0

    iget v5, v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    if-nez v5, :cond_0

    .line 365
    iput v7, v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    .line 366
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v1           #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    .end local v4           #number:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 370
    .local v2, id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;

    .line 371
    .restart local v1       #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    if-eqz v1, :cond_0

    iget v5, v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    if-nez v5, :cond_0

    .line 373
    iput v7, v1, Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;->state:I

    .line 374
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #holder:Lcom/android/mms/data/ContactPhotoLoader$BitmapHolder;
    .end local v2           #id:Ljava/lang/Long;
    :cond_2
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 292
    iget-object v4, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 295
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 296
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-direct {p0, v3, v0}, Lcom/android/mms/data/ContactPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)Z

    move-result v2

    .line 297
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 302
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-direct {p0}, Lcom/android/mms/data/ContactPhotoLoader;->requestLoading()V

    .line 305
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 253
    iget-boolean v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 254
    iput-boolean v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoadingRequested:Z

    .line 255
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 225
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 226
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 227
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 265
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoadingRequested:Z

    .line 266
    iget-boolean v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    if-nez v1, :cond_1

    .line 268
    new-instance v1, Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    iget-object v2, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;-><init>(Lcom/android/mms/data/ContactPhotoLoader;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    .line 269
    iget-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;->start()V

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/mms/data/ContactPhotoLoader;->processLoadedImages()V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)V
    .locals 5
    .parameter "view"
    .parameter "contact"

    .prologue
    .line 136
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->isSPNumber()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getPhotoId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 138
    iget v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mDefaultContactResourceId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/ContactPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/mms/data/Contact;)Z

    move-result v0

    .line 144
    .local v0, loaded:Z
    if-eqz v0, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-boolean v1, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/mms/data/ContactPhotoLoader;->requestLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    .line 234
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPaused:Z

    .line 241
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/mms/data/ContactPhotoLoader;->requestLoading()V

    .line 244
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/mms/data/ContactPhotoLoader;->pause()V

    .line 213
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;->quit()Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mLoaderThread:Lcom/android/mms/data/ContactPhotoLoader$LoaderThread;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 219
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mContactBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 220
    iget-object v0, p0, Lcom/android/mms/data/ContactPhotoLoader;->mSPBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 221
    return-void
.end method
