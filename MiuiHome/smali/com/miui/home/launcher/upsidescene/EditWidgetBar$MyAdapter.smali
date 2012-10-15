.class Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditWidgetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/EditWidgetBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field gadgetStartIndex:I

.field mGadgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

.field widgetStartIndex:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter "canSelectApps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/gadget/GadgetInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, gadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    .local p3, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    if-eqz p2, :cond_0

    .end local p2           #gadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    :goto_0
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mGadgets:Ljava/util/List;

    .line 48
    if-eqz p3, :cond_1

    .end local p3           #widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :goto_1
    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mWidgets:Ljava/util/List;

    .line 49
    if-eqz p4, :cond_2

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    .line 53
    :goto_2
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mGadgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->widgetStartIndex:I

    .line 54
    return-void

    .line 47
    .restart local p2       #gadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    .restart local p3       #widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .end local p2           #gadgets:Ljava/util/List;,"Ljava/util/List<Lcom/miui/home/launcher/gadget/GadgetInfo;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 48
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 52
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->widgetStartIndex:I

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    if-ge p1, v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->widgetStartIndex:I

    if-ge p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mGadgets:Ljava/util/List;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mWidgets:Ljava/util/List;

    iget v1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->widgetStartIndex:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 79
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    .line 80
    .local v1, group:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 81
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    #getter for: Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->access$000(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030028

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #group:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 84
    .restart local v1       #group:Landroid/view/ViewGroup;
    :cond_0
    const v7, 0x7f070076

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 85
    .local v5, txtName:Landroid/widget/TextView;
    const v7, 0x7f070077

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 86
    .local v6, txtSize:Landroid/widget/TextView;
    const v7, 0x7f070078

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    .local v2, imgPreview:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    #getter for: Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->access$100(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 90
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_1

    .line 91
    const v7, 0x7f0c007d

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 92
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v7, 0x7f0200d5

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    new-instance v7, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$1;

    invoke-direct {v7, p0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$1;-><init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :goto_0
    return-object v1

    .line 99
    :cond_1
    iget v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    if-ge p1, v7, :cond_2

    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 100
    const v7, 0x7f0c007e

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 101
    const-string v7, "1X1"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v7, 0x7f0200d2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    new-instance v7, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$2;

    invoke-direct {v7, p0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$2;-><init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 108
    :cond_2
    iget v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->widgetStartIndex:I

    if-ge p1, v7, :cond_3

    .line 109
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mGadgets:Ljava/util/List;

    iget v8, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->gadgetStartIndex:I

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/gadget/GadgetInfo;

    .line 110
    .local v3, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget v7, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->mTitleId:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    iget v8, v8, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    iget v8, v8, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget v7, v3, Lcom/miui/home/launcher/gadget/GadgetInfo;->mIconId:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    new-instance v7, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$3;

    invoke-direct {v7, p0, v3}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$3;-><init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;Lcom/miui/home/launcher/gadget/GadgetInfo;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 119
    .end local v3           #info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    :cond_3
    iget-object v7, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->mWidgets:Ljava/util/List;

    iget v8, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->widgetStartIndex:I

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 120
    .local v3, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v3, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    iget v8, v8, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    iget v8, v8, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSpanY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v7, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4

    .line 124
    iget-object v7, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance v7, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;

    invoke-direct {v7, p0, v3}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;-><init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
