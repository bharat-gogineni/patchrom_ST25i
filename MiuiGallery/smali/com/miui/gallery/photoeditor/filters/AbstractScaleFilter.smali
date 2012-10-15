.class public abstract Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;
.super Lcom/miui/gallery/photoeditor/filters/Filter;
.source "AbstractScaleFilter.java"


# instance fields
.field protected scale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;->scale:F

    .line 44
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 32
    iput p1, p0, Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;->scale:F

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;->validate()V

    .line 34
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    return-void
.end method
