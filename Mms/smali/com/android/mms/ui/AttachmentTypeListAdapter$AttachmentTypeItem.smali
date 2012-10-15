.class Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;
.super Ljava/lang/Object;
.source "AttachmentTypeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentTypeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentTypeItem"
.end annotation


# instance fields
.field public iconRes:I

.field public jump:Z

.field public nameRes:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "name"
    .parameter "icon"
    .parameter "jump"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;->nameRes:I

    .line 53
    iput p2, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;->iconRes:I

    .line 54
    iput-boolean p3, p0, Lcom/android/mms/ui/AttachmentTypeListAdapter$AttachmentTypeItem;->jump:Z

    .line 55
    return-void
.end method
