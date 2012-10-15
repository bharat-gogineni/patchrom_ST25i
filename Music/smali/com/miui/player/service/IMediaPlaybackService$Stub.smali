.class public abstract Lcom/miui/player/service/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/service/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/IMediaPlaybackService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/player/service/IMediaPlaybackService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.miui.player.service.IMediaPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/player/service/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/player/service/IMediaPlaybackService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/player/service/IMediaPlaybackService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 475
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 51
    .local v1, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->open([JI)Z

    move-result v9

    .line 53
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    .end local v1           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v9           #_result:Z
    :sswitch_2
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 63
    .restart local v1       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 67
    .local v3, _arg2:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->openList([JIZLjava/lang/String;)Z

    move-result v9

    .line 69
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v9, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v9           #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 70
    .restart local v3       #_arg2:Z
    .restart local v4       #_arg3:Ljava/lang/String;
    .restart local v9       #_result:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 75
    .end local v1           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v9           #_result:Z
    :sswitch_3
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 79
    .restart local v1       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->addToCurrentPlaylist([JI)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    .end local v1           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 90
    .restart local v1       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 94
    .restart local v3       #_arg2:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 96
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 98
    .local v5, _arg4:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v6}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->playAll([JIZIZLjava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 92
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 96
    .restart local v3       #_arg2:Z
    .restart local v4       #_arg3:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 105
    .end local v1           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    :sswitch_5
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v9

    .line 107
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 113
    .end local v9           #_result:I
    :sswitch_6
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getQueueSize()I

    move-result v9

    .line 115
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 121
    .end local v9           #_result:I
    :sswitch_7
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v9

    .line 123
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v9, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 129
    .end local v9           #_result:Z
    :sswitch_8
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->isBuffering()Z

    move-result v9

    .line 131
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v9, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 132
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 137
    .end local v9           #_result:Z
    :sswitch_9
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->stop()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 144
    :sswitch_a
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->pause()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    :sswitch_b
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->play()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 158
    :sswitch_c
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->prev()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 165
    :sswitch_d
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->next()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 172
    :sswitch_e
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->quit()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    :sswitch_f
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v9

    .line 181
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    .end local v9           #_result:J
    :sswitch_10
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->position()J

    move-result-wide v9

    .line 189
    .restart local v9       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 191
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    .end local v9           #_result:J
    :sswitch_11
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 198
    .local v7, _arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v9

    .line 199
    .restart local v9       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 205
    .end local v7           #_arg0:J
    .end local v9           #_result:J
    :sswitch_12
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 213
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 215
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 221
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v9

    .line 223
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 229
    .end local v9           #_result:J
    :sswitch_15
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v9

    .line 239
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 245
    .end local v9           #_result:J
    :sswitch_17
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    .line 249
    .restart local v1       #_arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 256
    .end local v1           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_18
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v9

    .line 258
    .local v9, _result:[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v9           #_result:[J
    :sswitch_19
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 269
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 275
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_1a
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 284
    .end local v1           #_arg0:I
    :sswitch_1b
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 292
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v9

    .line 294
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 300
    .end local v9           #_result:J
    :sswitch_1d
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getOnlineId()Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 308
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getChannelName()Ljava/lang/String;

    move-result-object v9

    .line 310
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 316
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 325
    .end local v1           #_arg0:I
    :sswitch_20
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v9

    .line 327
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 333
    .end local v9           #_result:I
    :sswitch_21
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 336
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->removeTracksBatch([I)I

    move-result v9

    .line 337
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 343
    .end local v1           #_arg0:[I
    .end local v9           #_result:I
    :sswitch_22
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v9

    .line 349
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 355
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_23
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 358
    .restart local v7       #_arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v9

    .line 359
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 365
    .end local v7           #_arg0:J
    .end local v9           #_result:I
    :sswitch_24
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v1           #_arg0:I
    :sswitch_25
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v9

    .line 376
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 382
    .end local v9           #_result:I
    :sswitch_26
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getAudioSessionId()I

    move-result v9

    .line 384
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 390
    .end local v9           #_result:I
    :sswitch_27
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->isBlocking()Z

    move-result v9

    .line 392
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    if-eqz v9, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 393
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 398
    .end local v9           #_result:Z
    :sswitch_28
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getBufferedPosition()J

    move-result-wide v9

    .line 400
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 402
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 406
    .end local v9           #_result:J
    :sswitch_29
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getBufferedPercent()F

    move-result v9

    .line 408
    .local v9, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeFloat(F)V

    .line 410
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 414
    .end local v9           #_result:F
    :sswitch_2a
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 417
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->updateEqualizerBands([I)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 423
    .end local v1           #_arg0:[I
    :sswitch_2b
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getLyricStatus()I

    move-result v9

    .line 425
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 431
    .end local v9           #_result:I
    :sswitch_2c
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getUpdateVersion()I

    move-result v9

    .line 433
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    .end local v9           #_result:I
    :sswitch_2d
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 447
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getPlayingFilePath()Ljava/lang/String;

    move-result-object v9

    .line 449
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 455
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_2f
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->getAudioIdByPos(I)J

    move-result-wide v9

    .line 459
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 465
    .end local v1           #_arg0:I
    .end local v9           #_result:J
    :sswitch_30
    const-string v0, "com.miui.player.service.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/service/IMediaPlaybackService$Stub;->scanFiles([Ljava/lang/String;[Ljava/lang/String;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
