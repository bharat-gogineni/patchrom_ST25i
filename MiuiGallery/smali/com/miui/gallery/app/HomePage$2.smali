.class Lcom/miui/gallery/app/HomePage$2;
.super Ljava/lang/Object;
.source "HomePage.java"

# interfaces
.implements Lcom/miui/gallery/ui/ActionModeHandler$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/app/HomePage;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/HomePage;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$2;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$2;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/app/HomePage;->onItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
