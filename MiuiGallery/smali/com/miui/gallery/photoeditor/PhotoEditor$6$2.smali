.class Lcom/miui/gallery/photoeditor/PhotoEditor$6$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/PhotoEditor$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$6;


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/PhotoEditor$6;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6$2;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/gallery/photoeditor/PhotoEditor$6$2;->this$1:Lcom/miui/gallery/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lcom/miui/gallery/photoeditor/PhotoEditor$6;->this$0:Lcom/miui/gallery/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/miui/gallery/photoeditor/PhotoEditor;->finish()V

    .line 199
    return-void
.end method
