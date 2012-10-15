.class public Lentagged/audioformats/generic/ModificationHandler;
.super Ljava/lang/Object;
.source "ModificationHandler.java"

# interfaces
.implements Lentagged/audioformats/generic/AudioFileModificationListener;


# instance fields
.field private listeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    .locals 4
    .parameter "original"
    .parameter "temporary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v3, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 62
    .local v2, enumer:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileModificationListener;

    .line 66
    .local v0, current:Lentagged/audioformats/generic/AudioFileModificationListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    :try_end_0
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Lentagged/audioformats/exceptions/ModifyVetoException;
    invoke-virtual {p0, v0, p1, v1}, Lentagged/audioformats/generic/ModificationHandler;->vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V

    .line 69
    throw v1

    .line 72
    .end local v0           #current:Lentagged/audioformats/generic/AudioFileModificationListener;
    .end local v1           #e:Lentagged/audioformats/exceptions/ModifyVetoException;
    :cond_0
    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 80
    iget-object v2, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 81
    .local v1, enumer:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileModificationListener;

    .line 84
    .local v0, current:Lentagged/audioformats/generic/AudioFileModificationListener;
    invoke-interface {v0, p1}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileOperationFinished(Ljava/io/File;)V

    goto :goto_0

    .line 86
    .end local v0           #current:Lentagged/audioformats/generic/AudioFileModificationListener;
    :cond_0
    return-void
.end method

.method public fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V
    .locals 4
    .parameter "file"
    .parameter "delete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v3, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 97
    .local v2, enumer:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileModificationListener;

    .line 101
    .local v0, current:Lentagged/audioformats/generic/AudioFileModificationListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lentagged/audioformats/generic/AudioFileModificationListener;->fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V
    :try_end_0
    .catch Lentagged/audioformats/exceptions/ModifyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Lentagged/audioformats/exceptions/ModifyVetoException;
    invoke-virtual {p0, v0, p1, v1}, Lentagged/audioformats/generic/ModificationHandler;->vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V

    .line 104
    throw v1

    .line 107
    .end local v0           #current:Lentagged/audioformats/generic/AudioFileModificationListener;
    .end local v1           #e:Lentagged/audioformats/exceptions/ModifyVetoException;
    :cond_0
    return-void
.end method

.method public vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V
    .locals 3
    .parameter "cause"
    .parameter "original"
    .parameter "veto"

    .prologue
    .line 131
    iget-object v2, p0, Lentagged/audioformats/generic/ModificationHandler;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 132
    .local v1, enumer:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lentagged/audioformats/generic/AudioFileModificationListener;

    .line 135
    .local v0, current:Lentagged/audioformats/generic/AudioFileModificationListener;
    invoke-interface {v0, p1, p2, p3}, Lentagged/audioformats/generic/AudioFileModificationListener;->vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V

    goto :goto_0

    .line 137
    .end local v0           #current:Lentagged/audioformats/generic/AudioFileModificationListener;
    :cond_0
    return-void
.end method
