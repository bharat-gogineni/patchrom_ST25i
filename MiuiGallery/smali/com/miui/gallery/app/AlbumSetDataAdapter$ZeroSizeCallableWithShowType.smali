.class Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallableWithShowType;
.super Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;
.source "AlbumSetDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZeroSizeCallableWithShowType"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;IJ)V
    .locals 0
    .parameter
    .parameter "totalMediaObjectCount"
    .parameter "showTypeVersion"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$ZeroSizeCallableWithShowType;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/app/AlbumSetDataAdapterBase$ZeroSizeCallableBase;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapterBase;I)V

    .line 88
    #setter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mShowTypeVersion:J
    invoke-static {p1, p3, p4}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$002(Lcom/miui/gallery/app/AlbumSetDataAdapter;J)J

    .line 89
    return-void
.end method
