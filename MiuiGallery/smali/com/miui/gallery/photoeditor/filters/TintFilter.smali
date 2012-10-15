.class public Lcom/miui/gallery/photoeditor/filters/TintFilter;
.super Lcom/miui/gallery/photoeditor/filters/Filter;
.source "TintFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/TintFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/miui/gallery/photoeditor/filters/TintFilter;

    invoke-static {v0}, Lcom/miui/gallery/photoeditor/filters/TintFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/photoeditor/filters/TintFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/miui/gallery/photoeditor/Photo;Lcom/miui/gallery/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 41
    const-string v1, "android.media.effect.effects.TintEffect"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/filters/TintFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 42
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "tint"

    iget v2, p0, Lcom/miui/gallery/photoeditor/filters/TintFilter;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 44
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/filters/TintFilter;->color:I

    .line 54
    return-void
.end method

.method public setTint(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/gallery/photoeditor/filters/TintFilter;->color:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/filters/TintFilter;->validate()V

    .line 37
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 48
    iget v0, p0, Lcom/miui/gallery/photoeditor/filters/TintFilter;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
