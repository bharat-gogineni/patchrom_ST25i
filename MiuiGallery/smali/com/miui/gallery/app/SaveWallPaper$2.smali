.class Lcom/miui/gallery/app/SaveWallPaper$2;
.super Ljava/lang/Object;
.source "SaveWallPaper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/SaveWallPaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/SaveWallPaper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/app/SaveWallPaper;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/miui/gallery/app/SaveWallPaper$2;->this$0:Lcom/miui/gallery/app/SaveWallPaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/miui/gallery/app/SaveWallPaper$2;->this$0:Lcom/miui/gallery/app/SaveWallPaper;

    invoke-static {p2}, Lmiui/app/resourcebrowser/service/IThemeManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/resourcebrowser/service/IThemeManagerService;

    move-result-object v1

    #setter for: Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;
    invoke-static {v0, v1}, Lcom/miui/gallery/app/SaveWallPaper;->access$202(Lcom/miui/gallery/app/SaveWallPaper;Lmiui/app/resourcebrowser/service/IThemeManagerService;)Lmiui/app/resourcebrowser/service/IThemeManagerService;

    .line 404
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/gallery/app/SaveWallPaper$2;->this$0:Lcom/miui/gallery/app/SaveWallPaper;

    const/4 v1, 0x0

    #setter for: Lcom/miui/gallery/app/SaveWallPaper;->mThemeMangerService:Lmiui/app/resourcebrowser/service/IThemeManagerService;
    invoke-static {v0, v1}, Lcom/miui/gallery/app/SaveWallPaper;->access$202(Lcom/miui/gallery/app/SaveWallPaper;Lmiui/app/resourcebrowser/service/IThemeManagerService;)Lmiui/app/resourcebrowser/service/IThemeManagerService;

    .line 409
    return-void
.end method
