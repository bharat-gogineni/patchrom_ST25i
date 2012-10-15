.class Lcom/android/phone/MiuiEditCustomLocationActivity$1;
.super Ljava/lang/Object;
.source "MiuiEditCustomLocationActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiEditCustomLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MiuiEditCustomLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$1;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/MiuiEditCustomLocationActivity$1;->this$0:Lcom/android/phone/MiuiEditCustomLocationActivity;

    #calls: Lcom/android/phone/MiuiEditCustomLocationActivity;->resetDoneButtonEnabled()V
    invoke-static {v0}, Lcom/android/phone/MiuiEditCustomLocationActivity;->access$100(Lcom/android/phone/MiuiEditCustomLocationActivity;)V

    .line 77
    return-void
.end method
