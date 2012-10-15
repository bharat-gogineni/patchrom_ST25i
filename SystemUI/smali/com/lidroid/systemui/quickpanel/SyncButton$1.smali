.class Lcom/lidroid/systemui/quickpanel/SyncButton$1;
.super Ljava/lang/Object;
.source "SyncButton.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/systemui/quickpanel/SyncButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/SyncButton;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/SyncButton;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/SyncButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/SyncButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/SyncButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/SyncButton;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/SyncButton;->update()V

    return-void
.end method
