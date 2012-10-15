.class Lcom/android/settings/sound/SilentModeActivity$1;
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
    .line 36
    iput-object p1, p0, Lcom/android/settings/sound/SilentModeActivity$1;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "clickedIndex"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/settings/sound/SilentModeActivity$1;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    #getter for: Lcom/android/settings/sound/SilentModeActivity;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings/sound/SilentModeActivity;->access$000(Lcom/android/settings/sound/SilentModeActivity;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/settings/sound/SilentModeActivity$1;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    #calls: Lcom/android/settings/sound/SilentModeActivity;->getRingerModeFromClickedIndex(I)I
    invoke-static {v1, p2}, Lcom/android/settings/sound/SilentModeActivity;->access$100(Lcom/android/settings/sound/SilentModeActivity;I)I

    move-result v0

    .line 40
    .local v0, ringerMode:I
    iget-object v1, p0, Lcom/android/settings/sound/SilentModeActivity$1;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    #getter for: Lcom/android/settings/sound/SilentModeActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/sound/SilentModeActivity;->access$200(Lcom/android/settings/sound/SilentModeActivity;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 42
    .end local v0           #ringerMode:I
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v1, p0, Lcom/android/settings/sound/SilentModeActivity$1;->this$0:Lcom/android/settings/sound/SilentModeActivity;

    invoke-virtual {v1}, Lcom/android/settings/sound/SilentModeActivity;->finish()V

    .line 44
    return-void
.end method
