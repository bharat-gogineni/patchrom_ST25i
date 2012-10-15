.class Lcom/miui/gallery/data/FilterSet$2;
.super Ljava/lang/Object;
.source "FilterSet.java"

# interfaces
.implements Lcom/miui/gallery/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/FilterSet;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/FilterSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/FilterSet;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/gallery/data/FilterSet$2;->this$0:Lcom/miui/gallery/data/FilterSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/miui/gallery/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 130
    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p2}, Lcom/miui/gallery/data/MediaItem;->delete()V

    .line 133
    :cond_0
    return-void
.end method
