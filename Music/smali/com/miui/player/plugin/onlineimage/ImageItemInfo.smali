.class public Lcom/miui/player/plugin/onlineimage/ImageItemInfo;
.super Ljava/lang/Object;
.source "ImageItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mHeight:I

.field public mKeyword:Ljava/lang/String;

.field public final mURL:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/player/plugin/onlineimage/ImageItemInfo;->mURL:Ljava/lang/String;

    .line 18
    return-void
.end method
