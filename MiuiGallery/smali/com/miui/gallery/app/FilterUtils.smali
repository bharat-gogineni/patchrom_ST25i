.class public Lcom/miui/gallery/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppliedFilters(Lcom/miui/gallery/data/Path;[I)V
    .locals 1
    .parameter "path"
    .parameter "result"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/app/FilterUtils;->getAppliedFilters(Lcom/miui/gallery/data/Path;[IZ)V

    .line 119
    return-void
.end method

.method private static getAppliedFilters(Lcom/miui/gallery/data/Path;[IZ)V
    .locals 11
    .parameter "path"
    .parameter "result"
    .parameter "underCluster"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/miui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, segments:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 125
    aget-object v6, v3, v1

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    aget-object v6, v3, v1

    invoke-static {v6}, Lcom/miui/gallery/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, sets:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 128
    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/miui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/data/Path;

    move-result-object v5

    .line 129
    .local v5, sub:Lcom/miui/gallery/data/Path;
    invoke-static {v5, p1, p2}, Lcom/miui/gallery/app/FilterUtils;->getAppliedFilters(Lcom/miui/gallery/data/Path;[IZ)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v2           #j:I
    .end local v4           #sets:[Ljava/lang/String;
    .end local v5           #sub:Lcom/miui/gallery/data/Path;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    aget-object v6, v3, v8

    const-string v7, "cluster"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    array-length v6, v3

    if-ne v6, v10, :cond_2

    .line 138
    const/4 p2, 0x1

    .line 141
    :cond_2
    aget-object v6, v3, v9

    invoke-static {v6}, Lcom/miui/gallery/app/FilterUtils;->toClusterType(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, ctype:I
    aget v6, p1, v8

    or-int/2addr v6, v0

    aput v6, p1, v8

    .line 143
    aput v0, p1, v10

    .line 144
    if-eqz p2, :cond_3

    .line 145
    aget v6, p1, v9

    or-int/2addr v6, v0

    aput v6, p1, v9

    .line 148
    .end local v0           #ctype:I
    :cond_3
    return-void
.end method

.method public static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "base"
    .parameter "filterType"

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 188
    .end local p0
    :goto_0
    return-object p0

    .line 179
    .restart local p0
    :pswitch_0
    const/4 v0, 0x2

    .line 188
    .local v0, mediaType:I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 182
    .end local v0           #mediaType:I
    :pswitch_1
    const/4 v0, 0x4

    .line 183
    .restart local v0       #mediaType:I
    goto :goto_1

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setMenuItemApplied(Lcom/miui/gallery/app/GalleryActionBar;IZZ)V
    .locals 1
    .parameter "model"
    .parameter "id"
    .parameter "applied"
    .parameter "updateTitle"

    .prologue
    .line 167
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/app/GalleryActionBar;->setClusterItemEnabled(IZ)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setMenuItemAppliedEnabled(Lcom/miui/gallery/app/GalleryActionBar;IZZZ)V
    .locals 0
    .parameter "model"
    .parameter "id"
    .parameter "applied"
    .parameter "enabled"
    .parameter "updateTitle"

    .prologue
    .line 171
    invoke-virtual {p0, p1, p3}, Lcom/miui/gallery/app/GalleryActionBar;->setClusterItemEnabled(IZ)V

    .line 172
    return-void
.end method

.method public static setupMenuItems(Lcom/miui/gallery/app/GalleryActionBar;Lcom/miui/gallery/data/Path;Z)V
    .locals 12
    .parameter "model"
    .parameter "path"
    .parameter "inAlbum"

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 80
    const/4 v6, 0x6

    new-array v5, v6, [I

    .line 81
    .local v5, result:[I
    invoke-static {p1, v5}, Lcom/miui/gallery/app/FilterUtils;->getAppliedFilters(Lcom/miui/gallery/data/Path;[I)V

    .line 82
    aget v1, v5, v8

    .line 83
    .local v1, ctype:I
    aget v3, v5, v7

    .line 84
    .local v3, ftype:I
    const/4 v6, 0x3

    aget v4, v5, v6

    .line 85
    .local v4, ftypef:I
    aget v0, v5, v11

    .line 86
    .local v0, ccurrent:I
    const/4 v6, 0x5

    aget v2, v5, v6

    .line 88
    .local v2, fcurrent:I
    const/4 v10, 0x2

    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1

    move v9, v7

    :goto_0
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-static {p0, v10, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/miui/gallery/app/GalleryActionBar;IZZ)V

    .line 90
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_3

    move v9, v7

    :goto_2
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    invoke-static {p0, v11, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/miui/gallery/app/GalleryActionBar;IZZ)V

    .line 92
    const/16 v10, 0x8

    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_5

    move v9, v7

    :goto_4
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_6

    move v6, v7

    :goto_5
    invoke-static {p0, v10, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/miui/gallery/app/GalleryActionBar;IZZ)V

    .line 94
    const/16 v10, 0x20

    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_7

    move v9, v7

    :goto_6
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_8

    move v6, v7

    :goto_7
    invoke-static {p0, v10, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/miui/gallery/app/GalleryActionBar;IZZ)V

    .line 97
    if-eqz p2, :cond_0

    if-nez v1, :cond_9

    :cond_0
    move v6, v7

    :goto_8
    invoke-virtual {p0, v7, v6}, Lcom/miui/gallery/app/GalleryActionBar;->setClusterItemVisibility(IZ)V

    .line 99
    const v10, 0x7f0b00b1

    if-nez v1, :cond_a

    move v9, v7

    :goto_9
    if-nez v0, :cond_b

    move v6, v7

    :goto_a
    invoke-static {p0, v10, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/miui/gallery/app/GalleryActionBar;IZZ)V

    .line 104
    const v11, 0x7f0d0069

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_c

    move v10, v7

    :goto_b
    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_d

    if-nez v4, :cond_d

    move v9, v7

    :goto_c
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_e

    move v6, v7

    :goto_d
    invoke-static {p0, v11, v10, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/miui/gallery/app/GalleryActionBar;IZZZ)V

    .line 108
    const v11, 0x7f0d006a

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_f

    move v10, v7

    :goto_e
    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_10

    if-nez v4, :cond_10

    move v9, v7

    :goto_f
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_11

    move v6, v7

    :goto_10
    invoke-static {p0, v11, v10, v9, v6}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/miui/gallery/app/GalleryActionBar;IZZZ)V

    .line 112
    const v10, 0x7f0d006b

    if-nez v3, :cond_12

    move v9, v7

    :goto_11
    if-eqz v3, :cond_13

    if-nez v4, :cond_13

    move v6, v7

    :goto_12
    if-nez v2, :cond_14

    :goto_13
    invoke-static {p0, v10, v9, v6, v7}, Lcom/miui/gallery/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/miui/gallery/app/GalleryActionBar;IZZZ)V

    .line 114
    return-void

    :cond_1
    move v9, v8

    .line 88
    goto/16 :goto_0

    :cond_2
    move v6, v8

    goto/16 :goto_1

    :cond_3
    move v9, v8

    .line 90
    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    move v9, v8

    .line 92
    goto :goto_4

    :cond_6
    move v6, v8

    goto :goto_5

    :cond_7
    move v9, v8

    .line 94
    goto :goto_6

    :cond_8
    move v6, v8

    goto :goto_7

    :cond_9
    move v6, v8

    .line 97
    goto :goto_8

    :cond_a
    move v9, v8

    .line 99
    goto :goto_9

    :cond_b
    move v6, v8

    goto :goto_a

    :cond_c
    move v10, v8

    .line 104
    goto :goto_b

    :cond_d
    move v9, v8

    goto :goto_c

    :cond_e
    move v6, v8

    goto :goto_d

    :cond_f
    move v10, v8

    .line 108
    goto :goto_e

    :cond_10
    move v9, v8

    goto :goto_f

    :cond_11
    move v6, v8

    goto :goto_10

    :cond_12
    move v9, v8

    .line 112
    goto :goto_11

    :cond_13
    move v6, v8

    goto :goto_12

    :cond_14
    move v7, v8

    goto :goto_13
.end method

.method private static toClusterType(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 151
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x2

    .line 162
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x4

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "tag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const/16 v0, 0x8

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const/16 v0, 0x10

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "face"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    const/16 v0, 0x20

    goto :goto_0

    .line 162
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
