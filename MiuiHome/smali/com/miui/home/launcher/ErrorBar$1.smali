.class Lcom/miui/home/launcher/ErrorBar$1;
.super Ljava/lang/Object;
.source "ErrorBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ErrorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ErrorBar;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ErrorBar;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$1;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ErrorBar;->hideError()V

    .line 45
    return-void
.end method
