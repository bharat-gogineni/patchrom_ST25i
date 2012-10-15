.class Lcom/android/settings/sound/SilentModeActivity$2;
.super Ljava/lang/Object;
.source "SilentModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/SilentModeActivity;->createSilentModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/SilentModeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/SilentModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/sound/SilentModeActivity$2;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/sound/SilentModeActivity$2;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    invoke-virtual {v0}, Lcom/android/settings/sound/SilentModeActivity;->finish()V

    .line 51
    return-void
.end method
