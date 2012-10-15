.class Lcom/miui/gallery/data/LocationClustering;
.super Lcom/miui/gallery/data/Clustering;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/LocationClustering$SmallItem;,
        Lcom/miui/gallery/data/LocationClustering$Point;
    }
.end annotation


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/LocationClustering$SmallItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoLocationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/miui/gallery/data/Clustering;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/miui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/miui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/data/LocationClustering;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/data/LocationClustering;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static generateName(Ljava/util/ArrayList;Lcom/miui/gallery/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter "geocoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/LocationClustering$SmallItem;",
            ">;",
            "Lcom/miui/gallery/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;"
    new-instance v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v7}, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;-><init>()V

    .line 151
    .local v7, set:Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 152
    .local v6, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_4

    .line 153
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/data/LocationClustering$SmallItem;

    .line 154
    .local v1, item:Lcom/miui/gallery/data/LocationClustering$SmallItem;
    iget-wide v2, v1, Lcom/miui/gallery/data/LocationClustering$SmallItem;->lat:D

    .line 155
    .local v2, itemLatitude:D
    iget-wide v4, v1, Lcom/miui/gallery/data/LocationClustering$SmallItem;->lng:D

    .line 157
    .local v4, itemLongitude:D
    iget-wide v8, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    .line 158
    iput-wide v2, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 159
    iput-wide v4, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 161
    :cond_0
    iget-wide v8, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 162
    iput-wide v2, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 163
    iput-wide v4, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 165
    :cond_1
    iget-wide v8, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    .line 166
    iput-wide v2, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 167
    iput-wide v4, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 169
    :cond_2
    iget-wide v8, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    .line 170
    iput-wide v2, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 171
    iput-wide v4, v7, Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 152
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v1           #item:Lcom/miui/gallery/data/LocationClustering$SmallItem;
    .end local v2           #itemLatitude:D
    .end local v4           #itemLongitude:D
    :cond_4
    invoke-virtual {p1, v7}, Lcom/miui/gallery/util/ReverseGeocoder;->computeAddress(Lcom/miui/gallery/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static kMeans([Lcom/miui/gallery/data/LocationClustering$Point;[I)[I
    .locals 34
    .parameter "points"
    .parameter "bestK"

    .prologue
    .line 202
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    .line 205
    .local v27, n:I
    const/4 v2, 0x1

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 206
    .local v26, minK:I
    const/16 v2, 0x14

    move/from16 v0, v27

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 208
    .local v25, maxK:I
    move/from16 v0, v25

    new-array v14, v0, [Lcom/miui/gallery/data/LocationClustering$Point;

    .line 209
    .local v14, center:[Lcom/miui/gallery/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [Lcom/miui/gallery/data/LocationClustering$Point;

    move-object/from16 v18, v0

    .line 210
    .local v18, groupSum:[Lcom/miui/gallery/data/LocationClustering$Point;
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 211
    .local v17, groupCount:[I
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 213
    .local v19, grouping:[I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 214
    new-instance v2, Lcom/miui/gallery/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/miui/gallery/data/LocationClustering$Point;-><init>()V

    aput-object v2, v14, v20

    .line 215
    new-instance v2, Lcom/miui/gallery/data/LocationClustering$Point;

    invoke-direct {v2}, Lcom/miui/gallery/data/LocationClustering$Point;-><init>()V

    aput-object v2, v18, v20

    .line 213
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const v13, 0x7f7fffff

    .line 222
    .local v13, bestScore:F
    move/from16 v0, v27

    new-array v11, v0, [I

    .line 224
    .local v11, bestGrouping:[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p1, v2

    .line 226
    const/16 v24, 0x0

    .line 227
    .local v24, lastDistance:F
    const/16 v33, 0x0

    .line 229
    .local v33, totalDistance:F
    move/from16 v23, v26

    .local v23, k:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_d

    .line 231
    div-int v15, v27, v23

    .line 232
    .local v15, delta:I
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 233
    mul-int v2, v20, v15

    aget-object v28, p0, v2

    .line 234
    .local v28, p:Lcom/miui/gallery/data/LocationClustering$Point;
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    .line 235
    aget-object v2, v14, v20

    move-object/from16 v0, v28

    iget-wide v3, v0, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    .line 232
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 238
    .end local v28           #p:Lcom/miui/gallery/data/LocationClustering$Point;
    :cond_1
    const/16 v21, 0x0

    .local v21, iter:I
    :goto_3
    const/16 v2, 0x1e

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    .line 240
    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 241
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    .line 242
    aget-object v2, v18, v20

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    .line 243
    const/4 v2, 0x0

    aput v2, v17, v20

    .line 240
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 245
    :cond_2
    const/16 v33, 0x0

    .line 247
    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 248
    aget-object v28, p0, v20

    .line 249
    .restart local v28       #p:Lcom/miui/gallery/data/LocationClustering$Point;
    const v10, 0x7f7fffff

    .line 250
    .local v10, bestDistance:F
    const/4 v12, 0x0

    .line 251
    .local v12, bestIndex:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 252
    move-object/from16 v0, v28

    iget-wide v2, v0, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v4, v0, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    aget-object v6, v14, v22

    iget-wide v6, v6, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    aget-object v8, v14, v22

    iget-wide v8, v8, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    invoke-static/range {v2 .. v9}, Lcom/miui/gallery/util/GalleryUtils;->fastDistanceMeters(DDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 257
    .local v16, distance:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    .line 258
    const/16 v16, 0x0

    .line 260
    :cond_3
    cmpg-float v2, v16, v10

    if-gez v2, :cond_4

    .line 261
    move/from16 v10, v16

    .line 262
    move/from16 v12, v22

    .line 251
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 265
    .end local v16           #distance:F
    :cond_5
    aput v12, v19, v20

    .line 266
    aget v2, v17, v12

    add-int/lit8 v2, v2, 0x1

    aput v2, v17, v12

    .line 267
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    .line 268
    aget-object v2, v18, v12

    iget-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    move-object/from16 v0, v28

    iget-wide v5, v0, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    .line 269
    add-float v33, v33, v10

    .line 247
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 273
    .end local v10           #bestDistance:F
    .end local v12           #bestIndex:I
    .end local v22           #j:I
    .end local v28           #p:Lcom/miui/gallery/data/LocationClustering$Point;
    :cond_6
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 274
    aget v2, v17, v20

    if-lez v2, :cond_7

    .line 275
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->latRad:D

    .line 276
    aget-object v2, v14, v20

    aget-object v3, v18, v20

    iget-wide v3, v3, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    aget v5, v17, v20

    int-to-double v5, v5

    div-double/2addr v3, v5

    iput-wide v3, v2, Lcom/miui/gallery/data/LocationClustering$Point;->lngRad:D

    .line 273
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 280
    :cond_8
    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-eqz v2, :cond_9

    sub-float v2, v24, v33

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v2, v33

    const v3, 0x3c23d70a

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 288
    :cond_9
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 289
    .local v31, reassign:[I
    const/16 v29, 0x0

    .line 290
    .local v29, realK:I
    const/16 v20, 0x0

    move/from16 v30, v29

    .end local v29           #realK:I
    .local v30, realK:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 291
    aget v2, v17, v20

    if-lez v2, :cond_f

    .line 292
    add-int/lit8 v29, v30, 0x1

    .end local v30           #realK:I
    .restart local v29       #realK:I
    aput v30, v31, v20

    .line 290
    :goto_9
    add-int/lit8 v20, v20, 0x1

    move/from16 v30, v29

    .end local v29           #realK:I
    .restart local v30       #realK:I
    goto :goto_8

    .line 284
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    :cond_a
    move/from16 v24, v33

    .line 238
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 297
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    :cond_b
    move/from16 v0, v30

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v32, v33, v2

    .line 299
    .local v32, score:F
    cmpg-float v2, v32, v13

    if-gez v2, :cond_e

    .line 300
    move/from16 v13, v32

    .line 301
    const/4 v2, 0x0

    aput v30, p1, v2

    .line 302
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 303
    aget v2, v19, v20

    aget v2, v31, v2

    aput v2, v11, v20

    .line 302
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 305
    :cond_c
    const/4 v2, 0x0

    cmpl-float v2, v32, v2

    if-nez v2, :cond_e

    .line 310
    .end local v15           #delta:I
    .end local v21           #iter:I
    .end local v30           #realK:I
    .end local v31           #reassign:[I
    .end local v32           #score:F
    :cond_d
    return-object v11

    .line 229
    .restart local v15       #delta:I
    .restart local v21       #iter:I
    .restart local v30       #realK:I
    .restart local v31       #reassign:[I
    .restart local v32       #score:F
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .end local v32           #score:F
    :cond_f
    move/from16 v29, v30

    .end local v30           #realK:I
    .restart local v29       #realK:I
    goto :goto_9
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/gallery/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v4, p0, Lcom/miui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 186
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 188
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gallery/data/LocationClustering$SmallItem;

    iget-object v4, v4, Lcom/miui/gallery/data/LocationClustering$SmallItem;->path:Lcom/miui/gallery/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/miui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/miui/gallery/data/MediaSet;)V
    .locals 26
    .parameter "baseSet"

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/miui/gallery/data/MediaSet;->getTotalMediaItemCount()I

    move-result v18

    .line 68
    .local v18, total:I
    move/from16 v0, v18

    new-array v4, v0, [Lcom/miui/gallery/data/LocationClustering$SmallItem;

    .line 70
    .local v4, buf:[Lcom/miui/gallery/data/LocationClustering$SmallItem;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v12, v0, [D

    .line 71
    .local v12, latLong:[D
    new-instance v21, Lcom/miui/gallery/data/LocationClustering$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v12, v4}, Lcom/miui/gallery/data/LocationClustering$1;-><init>(Lcom/miui/gallery/data/LocationClustering;I[D[Lcom/miui/gallery/data/LocationClustering$SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/gallery/data/MediaSet;->enumerateTotalMediaItems(Lcom/miui/gallery/data/MediaSet$ItemConsumer;)V

    .line 83
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v19, withLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v20, withoutLatLong:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v15, points:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$Point;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 87
    aget-object v17, v4, v9

    .line 88
    .local v17, s:Lcom/miui/gallery/data/LocationClustering$SmallItem;
    if-nez v17, :cond_0

    .line 86
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 89
    :cond_0
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/miui/gallery/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v21, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/miui/gallery/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v23, v0

    invoke-static/range {v21 .. v24}, Lcom/miui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 90
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v21, Lcom/miui/gallery/data/LocationClustering$Point;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/miui/gallery/data/LocationClustering$SmallItem;->lat:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/miui/gallery/data/LocationClustering$SmallItem;->lng:D

    move-wide/from16 v24, v0

    invoke-direct/range {v21 .. v25}, Lcom/miui/gallery/data/LocationClustering$Point;-><init>(DD)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v17           #s:Lcom/miui/gallery/data/LocationClustering$SmallItem;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v6, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 100
    .local v13, m:I
    if-lez v13, :cond_4

    .line 102
    new-array v0, v13, [Lcom/miui/gallery/data/LocationClustering$Point;

    move-object/from16 v16, v0

    .line 103
    .local v16, pointsArray:[Lcom/miui/gallery/data/LocationClustering$Point;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .end local v16           #pointsArray:[Lcom/miui/gallery/data/LocationClustering$Point;
    check-cast v16, [Lcom/miui/gallery/data/LocationClustering$Point;

    .line 104
    .restart local v16       #pointsArray:[Lcom/miui/gallery/data/LocationClustering$Point;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v3, v0, [I

    .line 105
    .local v3, bestK:[I
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/miui/gallery/data/LocationClustering;->kMeans([Lcom/miui/gallery/data/LocationClustering$Point;[I)[I

    move-result-object v11

    .line 107
    .local v11, index:[I
    const/4 v9, 0x0

    :goto_2
    const/16 v21, 0x0

    aget v21, v3, v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_3

    .line 108
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 111
    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_4

    .line 112
    aget v21, v11, v9

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 116
    .end local v3           #bestK:[I
    .end local v11           #index:[I
    .end local v16           #pointsArray:[Lcom/miui/gallery/data/LocationClustering$Point;
    :cond_4
    new-instance v7, Lcom/miui/gallery/util/ReverseGeocoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/miui/gallery/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v7, geocoder:Lcom/miui/gallery/util/ReverseGeocoder;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    .line 118
    const/4 v8, 0x0

    .line 119
    .local v8, hasUnresolvedAddress:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 121
    .local v5, cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;"
    invoke-static {v5, v7}, Lcom/miui/gallery/data/LocationClustering;->generateName(Ljava/util/ArrayList;Lcom/miui/gallery/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, name:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 127
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    const/4 v8, 0x1

    goto :goto_4

    .line 132
    .end local v5           #cluster:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/gallery/data/LocationClustering$SmallItem;>;"
    .end local v14           #name:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_7

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mNames:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mNoLocationString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_7
    if-eqz v8, :cond_8

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/gallery/data/LocationClustering;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/miui/gallery/data/LocationClustering$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/gallery/data/LocationClustering$2;-><init>(Lcom/miui/gallery/data/LocationClustering;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :cond_8
    return-void
.end method
