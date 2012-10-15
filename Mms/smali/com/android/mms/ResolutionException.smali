.class public final Lcom/android/mms/ResolutionException;
.super Lcom/android/mms/ContentRestrictionException;
.source "ResolutionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4c77302b6f0646e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/ContentRestrictionException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
