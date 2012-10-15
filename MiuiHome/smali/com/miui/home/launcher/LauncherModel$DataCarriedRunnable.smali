.class abstract Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DataCarriedRunnable"
.end annotation


# instance fields
.field protected mData:Ljava/lang/Object;

.field final synthetic this$0:Lcom/miui/home/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherModel;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "data"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;->this$0:Lcom/miui/home/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$DataCarriedRunnable;->mData:Ljava/lang/Object;

    .line 663
    return-void
.end method
