.class Lcom/android/mms/ui/FestivalActivity$2;
.super Ljava/lang/Object;
.source "FestivalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FestivalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FestivalActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FestivalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/ui/FestivalActivity$2;->this$0:Lcom/android/mms/ui/FestivalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/FestivalActivity$2;->this$0:Lcom/android/mms/ui/FestivalActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/FestivalActivity;->finish()V

    .line 84
    return-void
.end method
