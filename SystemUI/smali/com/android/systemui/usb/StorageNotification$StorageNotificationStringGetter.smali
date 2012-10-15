.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    const v0, 0x104047b

    return v0
.end method

.method getMessageIdOnChecking()I
    .locals 1

    const v0, 0x1040475

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    const v0, 0x104047f

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    const v0, 0x1040477

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    const v0, 0x104047d

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    const v0, 0x1040479

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    const v0, 0x104047a

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    const v0, 0x1040474

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    const v0, 0x104047e

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    const v0, 0x1040476

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    const v0, 0x104047c

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    const v0, 0x1040478

    return v0
.end method
