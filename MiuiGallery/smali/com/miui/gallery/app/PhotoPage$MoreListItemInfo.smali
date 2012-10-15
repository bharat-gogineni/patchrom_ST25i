.class Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;
.super Ljava/lang/Object;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreListItemInfo"
.end annotation


# instance fields
.field mTitleId:I

.field final synthetic this$0:Lcom/miui/gallery/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/PhotoPage;I)V
    .locals 0
    .parameter
    .parameter "titleId"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;->this$0:Lcom/miui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput p2, p0, Lcom/miui/gallery/app/PhotoPage$MoreListItemInfo;->mTitleId:I

    .line 1085
    return-void
.end method
