.class Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;
.super Ljava/lang/Object;
.source "ColorSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

.field final synthetic val$listener:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;->this$0:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    iput-object p2, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;->val$listener:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;->val$listener:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;

    iget-object v1, p0, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$1;->this$0:Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;

    #getter for: Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->colors:[I
    invoke-static {v1}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;->access$000(Lcom/miui/gallery/photoeditor/actions/ColorSeekBar;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-interface {v0, v1, p3}, Lcom/miui/gallery/photoeditor/actions/ColorSeekBar$OnColorChangeListener;->onColorChanged(IZ)V

    .line 112
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 116
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 120
    return-void
.end method
