.class Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;
.super Ljava/lang/Object;
.source "LocalPhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/gadget/LocalPhotoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Photo"
.end annotation


# instance fields
.field id:J

.field isInternal:Z

.field final synthetic this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;


# direct methods
.method constructor <init>(Lcom/miui/gallery/gadget/LocalPhotoSource;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/gallery/gadget/LocalPhotoSource$Photo;->this$0:Lcom/miui/gallery/gadget/LocalPhotoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
