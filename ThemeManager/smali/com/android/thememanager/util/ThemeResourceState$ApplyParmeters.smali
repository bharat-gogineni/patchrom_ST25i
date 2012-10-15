.class public Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;
.super Ljava/lang/Object;
.source "ThemeResourceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/util/ThemeResourceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplyParmeters"
.end annotation


# instance fields
.field public applyComponentFlags:J

.field public needRemoveAllOldComponents:Z

.field final synthetic this$0:Lcom/android/thememanager/util/ThemeResourceState;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/util/ThemeResourceState;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/thememanager/util/ThemeResourceState$ApplyParmeters;->this$0:Lcom/android/thememanager/util/ThemeResourceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
