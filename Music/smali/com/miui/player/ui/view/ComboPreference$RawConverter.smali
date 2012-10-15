.class Lcom/miui/player/ui/view/ComboPreference$RawConverter;
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
    name = "RawConverter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 244
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
