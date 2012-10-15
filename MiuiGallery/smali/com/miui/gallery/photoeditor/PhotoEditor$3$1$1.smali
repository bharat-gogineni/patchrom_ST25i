.class Lcom/miui/gallery/photoeditor/PhotoEditor$3$1$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/miui/gallery/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/photoeditor/PhotoEditor$3$1;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$3$1$1;->this$2:Lcom/miui/gallery/photoeditor/PhotoEditor$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 0

    .prologue
    .line 111
    invoke-static {}, Lcom/miui/gallery/photoeditor/SpinnerProgressDialog;->dismissDialog()V

    .line 112
    return-void
.end method
