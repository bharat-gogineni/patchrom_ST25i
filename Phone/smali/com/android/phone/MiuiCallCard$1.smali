.class Lcom/android/phone/MiuiCallCard$1;
.super Ljava/lang/Object;
.source "MiuiCallCard.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiCallCard;->refreshAfterInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiCallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/MiuiCallCard$1;->this$0:Lcom/android/phone/MiuiCallCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTickForCallTimeElapsed(J)V
    .locals 1
    .parameter "timeElapsed"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/phone/MiuiCallCard$1;->this$0:Lcom/android/phone/MiuiCallCard;

    #getter for: Lcom/android/phone/MiuiCallCard;->mElapsedTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/MiuiCallCard;->access$000(Lcom/android/phone/MiuiCallCard;)Landroid/widget/TextView;

    move-result-object v0

    #calls: Lcom/android/phone/MiuiCallCard;->updateElapsedTimeWidget(Landroid/widget/TextView;J)V
    invoke-static {v0, p1, p2}, Lcom/android/phone/MiuiCallCard;->access$100(Landroid/widget/TextView;J)V

    .line 242
    return-void
.end method
