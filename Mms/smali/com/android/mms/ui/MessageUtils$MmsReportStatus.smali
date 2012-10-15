.class final Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MmsReportStatus"
.end annotation


# instance fields
.field final deliveryStatus:I

.field final readStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "drStatus"
    .parameter "rrStatus"

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput p1, p0, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->deliveryStatus:I

    .line 532
    iput p2, p0, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    .line 533
    return-void
.end method
