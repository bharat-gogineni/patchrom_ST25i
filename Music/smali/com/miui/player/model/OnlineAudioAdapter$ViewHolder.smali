.class Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OnlineAudioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/OnlineAudioAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public final artistNameText:Landroid/widget/TextView;

.field public final downloadText:Landroid/widget/TextView;

.field public final favoriteIndicator:Landroid/widget/ImageView;

.field public final playIndicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/player/model/OnlineAudioAdapter;

.field public final trackNameText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/miui/player/model/OnlineAudioAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->this$0:Lcom/miui/player/model/OnlineAudioAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->playIndicator:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0c006f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0c003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->trackNameText:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0c003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->artistNameText:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0c00ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/model/OnlineAudioAdapter$ViewHolder;->downloadText:Landroid/widget/TextView;

    .line 149
    return-void
.end method
