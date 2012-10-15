.class Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;
.super Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteralStorageNotificationStringGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method


# virtual methods
.method getMessageIdOnNofs()I
    .locals 1

    const v0, 0x1040102

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    const v0, 0x1040100

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    const v0, 0x10400fe

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    const v0, 0x1040101

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    const v0, 0x10400ff

    return v0
.end method
