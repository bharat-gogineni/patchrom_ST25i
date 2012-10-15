.class public Lcom/miui/gallery/photoeditor/filters/SepiaFilter;
.super Lcom/miui/gallery/photoeditor/filters/Filter;
.source "SepiaFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/SepiaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/miui/gallery/photoeditor/filters/SepiaFilter;

    invoke-static {v0}, Lcom/miui/gallery/photoeditor/filters/SepiaFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/photoeditor/filters/SepiaFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/filters/Filter;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/filters/SepiaFilter;->validate()V

    .line 32
    return-void
.end method


# virtual methods
.method public process(Lcom/miui/gallery/photoeditor/Photo;Lcom/miui/gallery/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 36
    const-string v0, "android.media.effect.effects.SepiaEffect"

    invoke-virtual {p0, v0}, Lcom/miui/gallery/photoeditor/filters/SepiaFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 38
    return-void
.end method
