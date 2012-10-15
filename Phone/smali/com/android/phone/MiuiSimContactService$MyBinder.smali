.class public Lcom/android/phone/MiuiSimContactService$MyBinder;
.super Landroid/os/Binder;
.source "MiuiSimContactService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiSimContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiSimContactService;


# direct methods
.method public constructor <init>(Lcom/android/phone/MiuiSimContactService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/MiuiSimContactService$MyBinder;->this$0:Lcom/android/phone/MiuiSimContactService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/phone/MiuiSimContactService;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/MiuiSimContactService$MyBinder;->this$0:Lcom/android/phone/MiuiSimContactService;

    return-object v0
.end method
