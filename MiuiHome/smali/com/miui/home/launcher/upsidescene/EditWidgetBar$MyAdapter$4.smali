.class Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;
.super Ljava/lang/Object;
.source "EditWidgetBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;

.field final synthetic val$info:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;->this$1:Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;->val$info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;->this$1:Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter;->this$0:Lcom/miui/home/launcher/upsidescene/EditWidgetBar;

    #getter for: Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;
    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/EditWidgetBar;->access$200(Lcom/miui/home/launcher/upsidescene/EditWidgetBar;)Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/EditWidgetBar$MyAdapter$4;->val$info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->addAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 130
    return-void
.end method
