.class Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/PhotoDataAdapter;Lcom/miui/gallery/app/PhotoDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/miui/gallery/app/PhotoDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/miui/gallery/app/PhotoDataAdapter$SourceListener;->this$0:Lcom/miui/gallery/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/miui/gallery/app/PhotoDataAdapter;->notifyDirty()V

    .line 819
    return-void
.end method
