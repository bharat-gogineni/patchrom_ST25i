.class public final Lcom/android/mms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RowLayout:[I

.field public static final ShrinkableLinearLayout:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2185
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/R$styleable;->RowLayout:[I

    .line 2230
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/R$styleable;->ShrinkableLinearLayout:[I

    return-void

    .line 2185
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
