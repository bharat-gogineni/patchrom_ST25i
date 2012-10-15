.class public Lcom/miui/gallery/cloud/CloudGroup;
.super Ljava/lang/Object;
.source "CloudGroup.java"

# interfaces
.implements Lcom/miui/gallery/data/DBGroup;


# instance fields
.field private mMediaSet:Lcom/miui/gallery/cloud/CloudMediaSet;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/cloud/CloudMediaSet;)V
    .locals 0
    .parameter "mediaSet"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudGroup;->mMediaSet:Lcom/miui/gallery/cloud/CloudMediaSet;

    .line 13
    return-void
.end method


# virtual methods
.method public getMediaSet()Lcom/miui/gallery/data/MediaSet;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudGroup;->mMediaSet:Lcom/miui/gallery/cloud/CloudMediaSet;

    return-object v0
.end method
