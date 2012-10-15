.class Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;
.super Ljava/lang/Object;
.source "Weather_2x4_new.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/Weather_2x4_new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frame"
.end annotation


# instance fields
.field public mCityNameView:Landroid/widget/TextView;

.field public mDateView:Landroid/widget/TextView;

.field public mDescriptionView:Landroid/widget/TextView;

.field public mDown:Landroid/view/View;

.field public mRoot:Landroid/view/View;

.field public mTempRangeView:Landroid/widget/TextView;

.field public mTempView:Landroid/widget/TextView;

.field public mTimeHourView:Landroid/widget/TextView;

.field public mTimeMinuteView:Landroid/widget/TextView;

.field public mUp:Landroid/view/View;

.field public mWindView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/gadget/Weather_2x4_new;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "root"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->this$0:Lcom/miui/home/launcher/gadget/Weather_2x4_new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mUp:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDown:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTimeHourView:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTimeMinuteView:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDateView:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mCityNameView:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mDescriptionView:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTempView:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f070059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mTempRangeView:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mRoot:Landroid/view/View;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/Weather_2x4_new$Frame;->mWindView:Landroid/widget/TextView;

    .line 95
    return-void
.end method
