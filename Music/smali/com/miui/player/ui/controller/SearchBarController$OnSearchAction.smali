.class Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;
.super Ljava/lang/Object;
.source "SearchBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/controller/SearchBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnSearchAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/controller/SearchBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/controller/SearchBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/player/ui/controller/SearchBarController$OnSearchAction;->this$0:Lcom/miui/player/ui/controller/SearchBarController;

    invoke-virtual {v0}, Lcom/miui/player/ui/controller/SearchBarController;->searchAction()V

    .line 150
    return-void
.end method
