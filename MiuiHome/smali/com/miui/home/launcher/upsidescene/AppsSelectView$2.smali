.class Lcom/miui/home/launcher/upsidescene/AppsSelectView$2;
.super Ljava/lang/Object;
.source "AppsSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/AppsSelectView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/AppsSelectView;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$2;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/AppsSelectView$2;->this$0:Lcom/miui/home/launcher/upsidescene/AppsSelectView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/AppsSelectView;->cancel()V

    .line 144
    return-void
.end method
