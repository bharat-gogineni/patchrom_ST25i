.class Lcom/miui/player/ui/OnlineAudioActivity$OnRetryClickListener;
.super Ljava/lang/Object;
.source "OnlineAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnRetryClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineAudioActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineAudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/miui/player/ui/OnlineAudioActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/player/ui/OnlineAudioActivity$OnRetryClickListener;->this$0:Lcom/miui/player/ui/OnlineAudioActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineAudioActivity;->startAudioListLoadingAsync()V

    .line 173
    return-void
.end method
