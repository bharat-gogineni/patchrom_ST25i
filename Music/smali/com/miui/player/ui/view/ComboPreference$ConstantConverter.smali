.class Lcom/miui/player/ui/view/ComboPreference$ConstantConverter;
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
    name = "ConstantConverter"
.end annotation


# instance fields
.field private final mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/miui/player/ui/view/ComboPreference$ConstantConverter;->mValue:Ljava/lang/CharSequence;

    .line 254
    return-void
.end method


# virtual methods
.method public convert(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/player/ui/view/ComboPreference$ConstantConverter;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method
