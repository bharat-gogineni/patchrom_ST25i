.class Lcom/lidroid/systemui/quickpanel/ShutdownButton$2;
.super Ljava/lang/Object;
.source "ShutdownButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/ShutdownButton;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/ShutdownButton;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/ShutdownButton;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/ShutdownButton$2;->this$0:Lcom/lidroid/systemui/quickpanel/ShutdownButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
