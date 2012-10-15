.class public final Llidroid/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llidroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RotarySelector:[I = null

.field public static final RotarySelector_orientation:I = 0x0

.field public static final SweepBar:[I = null

.field public static final SweepBar_leftDrawable:I = 0x2

.field public static final SweepBar_leftText:I = 0x0

.field public static final SweepBar_rightDrawable:I = 0x3

.field public static final SweepBar_rightText:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x301

    aput v2, v0, v1

    sput-object v0, Llidroid/R$styleable;->RotarySelector:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llidroid/R$styleable;->SweepBar:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x3t
        0x2t 0x0t 0x1t 0x3t
        0x3t 0x0t 0x1t 0x3t
        0x4t 0x0t 0x1t 0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
