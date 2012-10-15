.class public Lcom/lidroid/systemui/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/lidroid/systemui/MainActivity;->mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/MainActivity;->setContentView(I)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/lidroid/systemui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lidroid/systemui/quickpanel/PowerWidget;

    iput-object v0, p0, Lcom/lidroid/systemui/MainActivity;->mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    iget-object v0, p0, Lcom/lidroid/systemui/MainActivity;->mWidget:Lcom/lidroid/systemui/quickpanel/PowerWidget;

    invoke-virtual {v0}, Lcom/lidroid/systemui/quickpanel/PowerWidget;->setupWidget()V

    return-void
.end method
