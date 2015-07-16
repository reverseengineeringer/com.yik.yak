.class public LrC;
.super Lrw;
.source "SourceFile"


# instance fields
.field protected f:Z

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LrO;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/nio/ByteBuffer;

.field private final i:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lrw;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, LrC;->f:Z

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LrC;->g:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, LrC;->i:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public a(LrO;)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 68
    invoke-interface {p1}, LrO;->f()LrP;

    move-result-object v0

    sget-object v1, LrP;->b:LrP;

    if-eq v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only text frames supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-interface {p1}, LrO;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 76
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 78
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    return-object v1
.end method

.method public a(LrS;)LrS;
    .locals 3

    .prologue
    .line 104
    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "Connection"

    const-string v1, "Upgrade"

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "Origin"

    invoke-interface {p1, v0}, LrS;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "Origin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "random"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LrC;->i:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LrS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-object p1
.end method

.method public a(LrR;LrZ;)LrT;
    .locals 2

    .prologue
    .line 115
    const-string v0, "Web Socket Protocol Handshake"

    invoke-interface {p2, v0}, LrZ;->a(Ljava/lang/String;)V

    .line 116
    const-string v0, "Upgrade"

    const-string v1, "WebSocket"

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "Connection"

    const-string v1, "Connection"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "WebSocket-Origin"

    const-string v1, "Origin"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Host"

    invoke-interface {p1, v1}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, LrR;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "WebSocket-Location"

    invoke-interface {p2, v1, v0}, LrZ;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-object p2
.end method

.method public a(LrR;)Lry;
    .locals 1

    .prologue
    .line 60
    const-string v0, "Origin"

    invoke-interface {p1, v0}, LrR;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LrC;->a(LrW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lry;->a:Lry;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lry;->b:Lry;

    goto :goto_0
.end method

.method public a(LrR;LrY;)Lry;
    .locals 2

    .prologue
    .line 55
    const-string v0, "WebSocket-Origin"

    invoke-interface {p1, v0}, LrR;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    invoke-interface {p2, v1}, LrY;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, LrC;->a(LrW;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lry;->a:Lry;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lry;->b:Lry;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, LrC;->f:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, LrC;->h:Ljava/nio/ByteBuffer;

    .line 184
    return-void
.end method

.method public b()Lrx;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lrx;->a:Lrx;

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "LrO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0, p1}, LrC;->e(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 175
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, LrF;-><init>(I)V

    throw v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public c()Lrw;
    .locals 1

    .prologue
    .line 204
    new-instance v0, LrC;

    invoke-direct {v0}, LrC;-><init>()V

    return-object v0
.end method

.method public d()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 192
    sget v0, LrC;->b:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected e(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "LrO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 127
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 129
    if-nez v1, :cond_1

    .line 130
    iget-boolean v1, p0, LrC;->f:Z

    if-eqz v1, :cond_0

    .line 131
    new-instance v0, LrG;

    const-string v1, "unexpected START_OF_FRAME"

    invoke-direct {v0, v1}, LrG;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-boolean v3, p0, LrC;->f:Z

    goto :goto_0

    .line 133
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 134
    iget-boolean v1, p0, LrC;->f:Z

    if-nez v1, :cond_2

    .line 135
    new-instance v0, LrG;

    const-string v1, "unexpected END_OF_FRAME"

    invoke-direct {v0, v1}, LrG;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    iget-object v1, p0, LrC;->h:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, LrC;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 140
    new-instance v1, LrQ;

    invoke-direct {v1}, LrQ;-><init>()V

    .line 141
    iget-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, LrQ;->a(Ljava/nio/ByteBuffer;)V

    .line 142
    invoke-virtual {v1, v3}, LrQ;->a(Z)V

    .line 143
    sget-object v2, LrP;->b:LrP;

    invoke-virtual {v1, v2}, LrQ;->a(LrP;)V

    .line 144
    iget-object v2, p0, LrC;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iput-object v0, p0, LrC;->h:Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 148
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, LrC;->f:Z

    goto :goto_0

    .line 149
    :cond_4
    iget-boolean v2, p0, LrC;->f:Z

    if-eqz v2, :cond_8

    .line 150
    iget-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    .line 151
    invoke-virtual {p0}, LrC;->d()Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    .line 155
    :cond_5
    :goto_1
    iget-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 152
    :cond_6
    iget-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_5

    .line 153
    iget-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, LrC;->f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, LrC;->h:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 166
    :cond_7
    iget-object v0, p0, LrC;->g:Ljava/util/List;

    .line 167
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, LrC;->g:Ljava/util/List;

    .line 168
    :cond_8
    return-object v0
.end method

.method public f(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, LrC;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 199
    return-object v0
.end method
