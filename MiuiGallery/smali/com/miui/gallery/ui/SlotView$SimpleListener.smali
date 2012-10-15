.class public Lcom/miui/gallery/ui/SlotView$SimpleListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Lcom/miui/gallery/ui/SlotView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 51
    return-void
.end method

.method public onLongTap(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 54
    return-void
.end method

.method public onScrollPositionChanged(II)V
    .locals 0
    .parameter "position"
    .parameter "total"

    .prologue
    .line 55
    return-void
.end method

.method public onSingleTapUp(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 53
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
