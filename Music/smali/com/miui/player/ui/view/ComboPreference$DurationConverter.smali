.class Lcom/miui/player/ui/view/ComboPreference$DurationConverter;
.super Ljava/lang/Object;
.source "ComboPreference.java"

# interfaces
.implements Lcom/miui/player/ui/view/ComboPreference$ValueConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/ComboPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DurationConverter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 267
    int-to-long v0, p2

    const v2, 0x7f09002e

    invoke-static {p1, v0, v1, v2}, Lcom/miui/player/ui/UIHelper;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
