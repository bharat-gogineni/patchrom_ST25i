.class Lcom/lidroid/systemui/quickpanel/RebootButton$1;
.super Ljava/lang/Object;
.source "RebootButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/systemui/quickpanel/RebootButton;->reboot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/systemui/quickpanel/RebootButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/RebootButton;

    iput-object p2, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton$1;->this$0:Lcom/lidroid/systemui/quickpanel/RebootButton;

    aget-object v2, v0, p2

    #setter for: Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lidroid/systemui/quickpanel/RebootButton;->access$002(Lcom/lidroid/systemui/quickpanel/RebootButton;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
