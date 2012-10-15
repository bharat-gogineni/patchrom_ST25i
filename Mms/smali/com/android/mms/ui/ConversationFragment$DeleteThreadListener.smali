.class public Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteLockedMessages:Z

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private final mThreadIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 384
    iput-object p2, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 385
    iput-object p3, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 386
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    const/16 v2, 0x81

    new-instance v3, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V

    .line 410
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 411
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .parameter "deleteLockedMessages"

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 390
    return-void
.end method
