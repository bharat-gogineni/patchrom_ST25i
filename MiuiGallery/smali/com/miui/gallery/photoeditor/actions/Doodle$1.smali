.class final Lcom/miui/gallery/photoeditor/actions/Doodle$1;
.super Ljava/lang/Object;
.source "Doodle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/photoeditor/actions/Doodle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/gallery/photoeditor/actions/Doodle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/photoeditor/actions/Doodle;
    .locals 7
    .parameter "source"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, color:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, size:I
    if-lez v3, :cond_0

    .line 109
    new-instance v1, Lcom/miui/gallery/photoeditor/actions/Doodle;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v4}, Lcom/miui/gallery/photoeditor/actions/Doodle;-><init>(ILandroid/graphics/PointF;)V

    .line 110
    .local v1, doodle:Lcom/miui/gallery/photoeditor/actions/Doodle;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 111
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/photoeditor/actions/Doodle;->addControlPoint(Landroid/graphics/PointF;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1           #doodle:Lcom/miui/gallery/photoeditor/actions/Doodle;
    .end local v2           #i:I
    :cond_0
    new-instance v1, Lcom/miui/gallery/photoeditor/actions/Doodle;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v0, v4}, Lcom/miui/gallery/photoeditor/actions/Doodle;-><init>(ILandroid/graphics/PointF;)V

    :cond_1
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/actions/Doodle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gallery/photoeditor/actions/Doodle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gallery/photoeditor/actions/Doodle;
    .locals 1
    .parameter "size"

    .prologue
    .line 120
    new-array v0, p1, [Lcom/miui/gallery/photoeditor/actions/Doodle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/miui/gallery/photoeditor/actions/Doodle$1;->newArray(I)[Lcom/miui/gallery/photoeditor/actions/Doodle;

    move-result-object v0

    return-object v0
.end method
