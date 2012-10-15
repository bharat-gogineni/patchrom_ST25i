.class Lcom/android/mms/ui/SlideEditorActivity$4;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$4;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    #calls: Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideEditorActivity;->access$500(Lcom/android/mms/ui/SlideEditorActivity;)V

    .line 278
    return-void
.end method
