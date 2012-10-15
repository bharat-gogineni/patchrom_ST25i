.class public Lcom/lidroid/systemui/quickpanel/RebootButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "RebootButton.java"


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "now"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    const-string v0, "toggleReboot"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/systemui/quickpanel/RebootButton;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lidroid/systemui/quickpanel/RebootButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    return-object p1
.end method

.method private reboot()V
    .locals 6

    const-string v3, "now"

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f080096

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0f0005

    const/4 v4, 0x0

    new-instance v5, Lcom/lidroid/systemui/quickpanel/RebootButton$1;

    invoke-direct {v5, p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$2;

    invoke-direct {v4, p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$3;

    invoke-direct {v4, p0}, Lcom/lidroid/systemui/quickpanel/RebootButton$3;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x7f08008c

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/RebootButton;->reboot()V

    return-void
.end method

.method protected updateState()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    const v0, 0x7f0200fc

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mIcon:I

    return-void
.end method
