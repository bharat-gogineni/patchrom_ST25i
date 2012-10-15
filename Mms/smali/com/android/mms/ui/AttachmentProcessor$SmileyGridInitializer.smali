.class Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"

# interfaces
.implements Lcom/android/mms/ui/StaticGridView$Initializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmileyGridInitializer"
.end annotation


# instance fields
.field private mCategory:I

.field private mColumnCount:I

.field private mRowCount:I

.field private mScreenIndex:I

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentProcessor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AttachmentProcessor;IIII)V
    .locals 0
    .parameter
    .parameter "category"
    .parameter "screenIndex"
    .parameter "rowCount"
    .parameter "columnCount"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p2, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mCategory:I

    .line 376
    iput p3, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mScreenIndex:I

    .line 377
    iput p4, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mRowCount:I

    .line 378
    iput p5, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mColumnCount:I

    .line 379
    return-void
.end method


# virtual methods
.method public onInitialize(Lcom/android/mms/ui/StaticGridView;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->this$0:Lcom/android/mms/ui/AttachmentProcessor;

    iget v2, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mCategory:I

    iget v3, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mScreenIndex:I

    iget v4, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mRowCount:I

    iget v5, p0, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;->mColumnCount:I

    move-object v1, p1

    #calls: Lcom/android/mms/ui/AttachmentProcessor;->loadSmileyGridView(Lcom/android/mms/ui/StaticGridView;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentProcessor;->access$600(Lcom/android/mms/ui/AttachmentProcessor;Lcom/android/mms/ui/StaticGridView;IIII)V

    .line 384
    return-void
.end method
