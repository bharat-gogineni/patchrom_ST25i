.class Lcom/miui/gallery/photoeditor/EffectsBar$1;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/EffectsBar;->initialize(Lcom/miui/gallery/photoeditor/FilterStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/EffectsBar;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/EffectsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$1;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(ZI)Z
    .locals 3
    .parameter "isSelected"
    .parameter "effectsId"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsBar$1;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    #getter for: Lcom/miui/gallery/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->access$000(Lcom/miui/gallery/photoeditor/EffectsBar;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 60
    .local v0, select:Z
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/photoeditor/EffectsBar$1;->this$0:Lcom/miui/gallery/photoeditor/EffectsBar;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/miui/gallery/photoeditor/EffectsBar$1$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/gallery/photoeditor/EffectsBar$1$1;-><init>(Lcom/miui/gallery/photoeditor/EffectsBar$1;I)V

    :goto_1
    invoke-virtual {v2, v1}, Lcom/miui/gallery/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 67
    return v0

    .line 59
    .end local v0           #select:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    .restart local v0       #select:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
