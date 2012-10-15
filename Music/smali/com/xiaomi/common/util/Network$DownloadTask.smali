.class Lcom/xiaomi/common/util/Network$DownloadTask;
.super Landroid/os/AsyncTask;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/util/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private handler:Lcom/xiaomi/common/util/Network$PostDownloadHandler;

.field private output:Ljava/io/OutputStream;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/util/Network$PostDownloadHandler;)V
    .locals 0
    .parameter "urlstr"
    .parameter "outputstr"
    .parameter "handlerstr"

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 721
    iput-object p1, p0, Lcom/xiaomi/common/util/Network$DownloadTask;->url:Ljava/lang/String;

    .line 722
    iput-object p2, p0, Lcom/xiaomi/common/util/Network$DownloadTask;->output:Ljava/io/OutputStream;

    .line 723
    iput-object p3, p0, Lcom/xiaomi/common/util/Network$DownloadTask;->handler:Lcom/xiaomi/common/util/Network$PostDownloadHandler;

    .line 724
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/xiaomi/common/util/Network$DownloadTask;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/common/util/Network$DownloadTask;->output:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/xiaomi/common/util/Network;->downloadFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 713
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/util/Network$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/xiaomi/common/util/Network$DownloadTask;->handler:Lcom/xiaomi/common/util/Network$PostDownloadHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/common/util/Network$PostDownloadHandler;->OnPostDownload(Z)V

    .line 734
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 713
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/util/Network$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
