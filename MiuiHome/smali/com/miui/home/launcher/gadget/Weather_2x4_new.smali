.class public Lcom/miui/home/launcher/gadget/Weather_2x4_new;
.super Lcom/miui/home/launcher/gadget/WeatherBase;
.source "Weather_2x4_new.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;,
        Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static MIN_HEIGHT:F


# instance fields
.field private info:Ljava/lang/String;

.field private infoJasonObject:Lorg/json/JSONObject;

.field private mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

.field private mFrame2:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImageNight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWeatherInstalled:Z

.field private mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

.field private mProjection:[Ljava/lang/String;

.field private nScreenDensity:F

.field private wind_en:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->LOGTAG:Ljava/lang/String;

    .line 37
    const/high16 v0, 0x42b8

    sput v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->MIN_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const v7, 0x7f020065

    const/4 v6, 0x0

    const v5, 0x7f020063

    const v4, 0x7f020069

    const v3, 0x7f02005a

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/WeatherBase;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v6, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mIsWeatherInstalled:Z

    .line 45
    new-instance v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->wind_en:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020056

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020067

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImageNight:Ljava/util/Map;

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImageNight:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImageNight:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020058

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->nScreenDensity:F

    .line 142
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$2;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mGestureDetector:Landroid/view/GestureDetector;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->switchCity(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mIsWeatherInstalled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintUpPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintDownPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    return-void
.end method

.method private getImage(IZ)I
    .locals 2
    .parameter "weatherType"
    .parameter "isNight"

    .prologue
    .line 426
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImageNight:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImageNight:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    :goto_0
    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mImage:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 434
    :cond_1
    const v0, 0x7f02006b

    goto :goto_0
.end method

.method private getPaintData()Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    .locals 17

    .prologue
    .line 297
    new-instance v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Lcom/miui/home/launcher/gadget/Weather_2x4_new$1;)V

    .line 299
    .local v6, ret:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 301
    .local v5, is24:Z
    if-eqz v5, :cond_2

    .line 302
    const-string v14, "kk"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 310
    .local v9, timeH:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const-string v14, "mm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    .line 311
    .local v10, timeM:Ljava/lang/CharSequence;
    iput-object v9, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->timeH:Ljava/lang/CharSequence;

    .line 312
    iput-object v10, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->timeM:Ljava/lang/CharSequence;

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getDate()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->date:Ljava/lang/CharSequence;

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0072

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->tempRange:Ljava/lang/CharSequence;

    .line 318
    const v14, 0x7f02006b

    iput v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->bg:I

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isWeatherAppInstalled()Z

    move-result v14

    if-nez v14, :cond_3

    .line 391
    :cond_1
    :goto_1
    return-object v6

    .line 304
    .end local v9           #timeH:Ljava/lang/CharSequence;
    .end local v10           #timeM:Ljava/lang/CharSequence;
    :cond_2
    const-string v14, "hh"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    .line 305
    .restart local v9       #timeH:Ljava/lang/CharSequence;
    const-string v14, "kk"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    .line 306
    .local v11, timeT:Ljava/lang/CharSequence;
    const-string v14, "00"

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 307
    move-object v9, v11

    goto :goto_0

    .line 323
    .end local v11           #timeT:Ljava/lang/CharSequence;
    .restart local v10       #timeM:Ljava/lang/CharSequence;
    :cond_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mIsWeatherInstalled:Z

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mContext:Landroid/content/Context;

    const v15, 0x7f0c006f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->tempRange:Ljava/lang/CharSequence;

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getCurrentCityName()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, cityName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 331
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->updateCity(Z)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getCurrentCityName()Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPid:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v14, v14, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->nScreenDensity:F

    div-float v4, v14, v15

    .line 340
    .local v4, dips:F
    sget v14, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->MIN_HEIGHT:F

    cmpg-float v14, v4, v14

    if-gez v14, :cond_7

    .line 341
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->date:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->date:Ljava/lang/CharSequence;

    .line 346
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getWeather()Landroid/database/Cursor;

    move-result-object v2

    .line 347
    .local v2, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 348
    .local v7, temp:Ljava/lang/String;
    const-string v8, ""

    .line 349
    .local v8, temperatureRange:Ljava/lang/String;
    const-string v3, ""

    .line 351
    .local v3, description:Ljava/lang/String;
    const/4 v12, 0x0

    .line 354
    .local v12, weatherType:I
    if-eqz v2, :cond_8

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 357
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 360
    const/4 v14, 0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    const/4 v14, 0x2

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    const/4 v14, 0x3

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 366
    .local v13, wind:Ljava/lang/String;
    const/4 v14, 0x4

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->info:Ljava/lang/String;

    .line 367
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->infoJasonObject:Lorg/json/JSONObject;

    .line 369
    const/4 v14, 0x5

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    long-to-int v12, v14

    .line 375
    if-eqz v2, :cond_5

    .line 376
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 381
    const-string v14, "\u2103"

    const-string v15, "\u00b0"

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 383
    :cond_6
    iput-object v7, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->temp:Ljava/lang/CharSequence;

    .line 385
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->description:Ljava/lang/CharSequence;

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getTemperatureRange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->tempRange:Ljava/lang/CharSequence;

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getSkWind()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->wind:Ljava/lang/CharSequence;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isNight()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getImage(IZ)I

    move-result v14

    iput v14, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->bg:I

    goto/16 :goto_1

    .line 343
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #description:Ljava/lang/String;
    .end local v7           #temp:Ljava/lang/String;
    .end local v8           #temperatureRange:Ljava/lang/String;
    .end local v12           #weatherType:I
    .end local v13           #wind:Ljava/lang/String;
    :cond_7
    iput-object v1, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->city:Ljava/lang/CharSequence;

    goto :goto_2

    .line 375
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #description:Ljava/lang/String;
    .restart local v7       #temp:Ljava/lang/String;
    .restart local v8       #temperatureRange:Ljava/lang/String;
    .restart local v12       #weatherType:I
    :cond_8
    if-eqz v2, :cond_1

    .line 376
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 375
    :catchall_0
    move-exception v14

    if-eqz v2, :cond_9

    .line 376
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v14
.end method

.method private getSkWind()Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    const-string v3, "fx"

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, fx:Ljava/lang/String;
    const-string v3, "fl"

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, fl:Ljava/lang/String;
    const-string v2, ""

    .line 262
    .local v2, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    :cond_0
    const-string v2, ""

    .line 271
    :goto_0
    return-object v2

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getLanguage()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getWindEN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 268
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-object v2

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->infoJasonObject:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    .line 238
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->info:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, json_data:Lorg/json/JSONObject;
    const-string v3, "weatherinfo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->infoJasonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1           #json_data:Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->infoJasonObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 248
    :try_start_1
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->infoJasonObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A JSONException is caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 251
    .restart local v0       #e:Lorg/json/JSONException;
    sget-object v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A JSONException is caught: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWindEN(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "wind"

    .prologue
    const/4 v8, 0x0

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    const-string v4, ""

    .line 293
    :cond_0
    :goto_0
    return-object v4

    .line 278
    :cond_1
    const-string v5, "\u98ce"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 279
    .local v3, index:I
    if-lez v3, :cond_3

    .line 280
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, fx:Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, fl:Ljava/lang/String;
    const-string v4, ""

    .line 283
    .local v4, tem:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, i:I
    :goto_1
    if-lez v2, :cond_2

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->wind_en:Ljava/util/HashMap;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 286
    :cond_2
    const-string v5, "\u7ea7"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 287
    if-lez v3, :cond_0

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "L."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 293
    .end local v0           #fl:Ljava/lang/String;
    .end local v1           #fx:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #tem:Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

.method private paintDownPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V
    .locals 2
    .parameter "frame"
    .parameter "data"

    .prologue
    .line 411
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDown:Landroid/view/View;

    iget v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->bg:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 413
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDescriptionView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->description:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTempView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->temp:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->temp:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTempView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    :goto_0
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTempRangeView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->tempRange:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mWindView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->wind:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 423
    return-void

    .line 419
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTempView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private paintUpPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V
    .locals 2
    .parameter "frame"
    .parameter "data"

    .prologue
    .line 402
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    iget v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 404
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTimeHourView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->timeH:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTimeMinuteView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->timeM:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDateView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->date:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p1, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mCityNameView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;->city:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method private switchCity(Z)V
    .locals 19
    .parameter "reverse"

    .prologue
    .line 497
    invoke-virtual/range {p0 .. p1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->updateCity(Z)V

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getPaintData()Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    move-result-object v18

    .line 500
    .local v18, nextData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    .line 501
    .local v5, centerX:F
    const-wide/16 v16, 0x12c

    .line 503
    .local v16, duration:J
    const/4 v7, 0x0

    .line 507
    .local v7, fRotateAnimationZ:F
    if-nez p1, :cond_1

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    new-instance v2, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/high16 v3, 0x43b4

    const/high16 v4, 0x4387

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v6, v6, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 512
    .local v2, ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    new-instance v8, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/high16 v9, 0x42b4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 533
    .local v8, aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    :goto_0
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 534
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;->setDuration(J)V

    .line 536
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v3}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 537
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;->setDuration(J)V

    .line 539
    new-instance v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1, v8}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$7;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;ZLcom/miui/home/launcher/gadget/Rotate3dAnimation;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 572
    if-nez p1, :cond_3

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame2:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintUpPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame2:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintDownPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 581
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    .line 582
    return-void

    .line 515
    .end local v2           #ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    .end local v8           #aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    :cond_0
    new-instance v2, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/high16 v10, 0x43b4

    const v11, 0x43ac8000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v13, v3

    const/4 v15, 0x0

    move-object v9, v2

    move v12, v5

    move v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 517
    .restart local v2       #ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    new-instance v8, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const v9, 0x43ac8000

    const/high16 v10, 0x43b4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v12, v3

    const/4 v14, 0x1

    move v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .restart local v8       #aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    goto/16 :goto_0

    .line 521
    .end local v2           #ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    .end local v8           #aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isFlip()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 522
    new-instance v2, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x42b4

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    move v12, v5

    move v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 524
    .restart local v2       #ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    new-instance v8, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/high16 v9, 0x4387

    const/high16 v10, 0x43b4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v12, v3

    const/4 v14, 0x1

    move v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .restart local v8       #aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    goto/16 :goto_0

    .line 527
    .end local v2           #ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    .end local v8           #aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    :cond_2
    new-instance v2, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/4 v10, 0x0

    const/high16 v11, 0x4170

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v9, v2

    move v12, v5

    move v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 529
    .restart local v2       #ani:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    new-instance v8, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;

    const/high16 v9, 0x4170

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/miui/home/launcher/gadget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .restart local v8       #aniIn:Lcom/miui/home/launcher/gadget/Rotate3dAnimation;
    goto/16 :goto_0

    .line 577
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame2:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintDownPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame2:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintUpPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDown:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/gadget/WeatherBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mProjection:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "temperature_range"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wind"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "weather_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mProjection:[Ljava/lang/String;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method protected getTypeId()I
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method protected initListener()V
    .locals 5

    .prologue
    .line 438
    const v4, 0x7f07004b

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, up:Landroid/view/View;
    new-instance v4, Lcom/miui/home/launcher/gadget/Weather_2x4_new$3;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$3;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 453
    .local v3, up2:Landroid/view/View;
    new-instance v4, Lcom/miui/home/launcher/gadget/Weather_2x4_new$4;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$4;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    const v4, 0x7f07004d

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    .local v0, down1:Landroid/view/View;
    new-instance v4, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$5;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, down2:Landroid/view/View;
    new-instance v4, Lcom/miui/home/launcher/gadget/Weather_2x4_new$6;

    invoke-direct {v4, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$6;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 586
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->onCreate()V

    .line 587
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mContext:Landroid/content/Context;

    const v3, 0x7f03001c

    invoke-static {v2, v3, p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 589
    const v2, 0x7f07004a

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, root1:Landroid/view/View;
    new-instance v2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    .line 592
    const v2, 0x7f070049

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 593
    .local v1, root2:Landroid/view/View;
    new-instance v2, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    invoke-direct {v2, p0, v1}, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;-><init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame2:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->initListener()V

    .line 596
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected paint()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->getPaintData()Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    move-result-object v0

    .line 396
    .local v0, data:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;
    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mPaintData:Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;

    .line 397
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintUpPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 398
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->mFrame1:Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paintDownPart(Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;Lcom/miui/home/launcher/gadget/Weather_2x4_new$PaintData;)V

    .line 399
    return-void
.end method

.method protected updateCurTime()V
    .locals 0

    .prologue
    .line 599
    invoke-super {p0}, Lcom/miui/home/launcher/gadget/WeatherBase;->updateCurTime()V

    .line 600
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/Weather_2x4_new;->paint()V

    .line 601
    return-void
.end method
