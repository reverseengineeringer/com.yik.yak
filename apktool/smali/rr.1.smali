.class public Lrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrn;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Assert"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Z

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrw;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic h:Z


# instance fields
.field public d:Ljava/nio/channels/SelectionKey;

.field public e:Ljava/nio/channels/ByteChannel;

.field public final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Z

.field private j:Lro;

.field private final k:Lrs;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrw;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lrw;

.field private n:Lrp;

.field private o:LrP;

.field private p:Ljava/nio/ByteBuffer;

.field private q:LrR;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-class v0, Lrr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lrr;->h:Z

    .line 50
    const/16 v0, 0x4000

    sput v0, Lrr;->a:I

    .line 52
    sput-boolean v1, Lrr;->b:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lrr;->c:Ljava/util/List;

    .line 56
    sget-object v0, Lrr;->c:Ljava/util/List;

    new-instance v1, LrB;

    invoke-direct {v1}, LrB;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lrr;->c:Ljava/util/List;

    new-instance v1, Lrz;

    invoke-direct {v1}, Lrz;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lrr;->c:Ljava/util/List;

    new-instance v1, LrD;

    invoke-direct {v1}, LrD;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lrr;->c:Ljava/util/List;

    new-instance v1, LrC;

    invoke-direct {v1}, LrC;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public constructor <init>(Lrs;Lrw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v2, p0, Lrr;->i:Z

    .line 83
    sget-object v0, Lro;->a:Lro;

    iput-object v0, p0, Lrr;->j:Lro;

    .line 92
    iput-object v1, p0, Lrr;->m:Lrw;

    .line 96
    iput-object v1, p0, Lrr;->o:LrP;

    .line 99
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    .line 102
    iput-object v1, p0, Lrr;->q:LrR;

    .line 104
    iput-object v1, p0, Lrr;->r:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lrr;->s:Ljava/lang/Integer;

    .line 106
    iput-object v1, p0, Lrr;->t:Ljava/lang/Boolean;

    .line 108
    iput-object v1, p0, Lrr;->u:Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Lrr;->n:Lrp;

    sget-object v1, Lrp;->b:Lrp;

    if-ne v0, v1, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lrr;->f:Ljava/util/concurrent/BlockingQueue;

    .line 134
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lrr;->g:Ljava/util/concurrent/BlockingQueue;

    .line 135
    iput-object p1, p0, Lrr;->k:Lrs;

    .line 136
    sget-object v0, Lrp;->a:Lrp;

    iput-object v0, p0, Lrr;->n:Lrp;

    .line 137
    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {p2}, Lrw;->c()Lrw;

    move-result-object v0

    iput-object v0, p0, Lrr;->m:Lrw;

    .line 139
    :cond_2
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LrO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Lrr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    new-instance v0, LrK;

    invoke-direct {v0}, LrK;-><init>()V

    throw v0

    .line 577
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrO;

    .line 578
    invoke-virtual {p0, v0}, Lrr;->a(LrO;)V

    goto :goto_0

    .line 580
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 658
    invoke-direct {p0, v0}, Lrr;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 660
    :cond_0
    return-void
.end method

.method private a(LrW;)V
    .locals 3

    .prologue
    .line 663
    sget-boolean v0, Lrr;->b:Z

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open using draft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrr;->m:Lrw;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    :cond_0
    sget-object v0, Lro;->c:Lro;

    iput-object v0, p0, Lrr;->j:Lro;

    .line 667
    :try_start_0
    iget-object v0, p0, Lrr;->k:Lrs;

    invoke-interface {v0, p0, p1}, Lrs;->a(Lrn;LrW;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private b(Ljava/nio/ByteBuffer;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p1

    .line 195
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 197
    :try_start_0
    iget-object v0, p0, Lrr;->m:Lrw;

    if-nez v0, :cond_4

    .line 198
    invoke-direct {p0, v1}, Lrr;->d(Ljava/nio/ByteBuffer;)Lry;

    move-result-object v0

    .line 199
    sget-object v4, Lry;->a:Lry;
    :try_end_0
    .catch LrE; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v4, :cond_4

    .line 201
    :try_start_1
    iget-object v0, p0, Lrr;->k:Lrs;

    invoke-interface {v0, p0}, Lrs;->a(Lrn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsc;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->e(Ljava/nio/ByteBuffer;)V

    .line 202
    const/4 v0, -0x3

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lrr;->a(ILjava/lang/String;)V
    :try_end_1
    .catch LrF; {:try_start_1 .. :try_end_1} :catch_0
    .catch LrE; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v2

    .line 317
    :goto_2
    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 187
    iget-object v1, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 188
    iput-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    .line 191
    :cond_1
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 192
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    move-object v1, v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    const/16 v0, 0x3ee

    :try_start_2
    const-string v3, "remote peer closed connection before flashpolicy could be transmitted"

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lrr;->c(ILjava/lang/String;Z)V
    :try_end_2
    .catch LrE; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 299
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 300
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_10

    .line 301
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 302
    invoke-virtual {v3}, LrE;->a()I

    move-result v0

    .line 303
    if-nez v0, :cond_f

    .line 304
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 308
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    .line 310
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    :goto_3
    move v0, v2

    .line 317
    goto :goto_2

    .line 209
    :cond_4
    :try_start_3
    iget-object v0, p0, Lrr;->n:Lrp;

    sget-object v4, Lrp;->b:Lrp;

    if-ne v0, v4, :cond_c

    .line 213
    iget-object v0, p0, Lrr;->m:Lrw;

    if-nez v0, :cond_9

    .line 214
    iget-object v0, p0, Lrr;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrw;

    .line 215
    invoke-virtual {v0}, Lrw;->c()Lrw;
    :try_end_3
    .catch LrH; {:try_start_3 .. :try_end_3} :catch_4
    .catch LrE; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    .line 217
    :try_start_4
    iget-object v0, p0, Lrr;->n:Lrp;

    invoke-virtual {v5, v0}, Lrw;->a(Lrp;)V

    .line 218
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 219
    invoke-virtual {v5, v1}, Lrw;->d(Ljava/nio/ByteBuffer;)LrW;

    move-result-object v0

    .line 220
    instance-of v6, v0, LrR;

    if-nez v6, :cond_6

    .line 221
    const/16 v0, 0x3ea

    const-string v5, "wrong http function"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lrr;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 222
    goto/16 :goto_2

    .line 224
    :cond_6
    check-cast v0, LrR;

    .line 225
    invoke-virtual {v5, v0}, Lrw;->a(LrR;)Lry;

    move-result-object v6

    .line 226
    sget-object v7, Lry;->a:Lry;

    if-ne v6, v7, :cond_5

    .line 227
    invoke-interface {v0}, LrR;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lrr;->u:Ljava/lang/String;
    :try_end_4
    .catch LrH; {:try_start_4 .. :try_end_4} :catch_5
    .catch LrE; {:try_start_4 .. :try_end_4} :catch_1

    .line 230
    :try_start_5
    iget-object v6, p0, Lrr;->k:Lrs;

    invoke-interface {v6, p0, v5, v0}, Lrs;->a(Lrn;Lrw;LrR;)LrZ;
    :try_end_5
    .catch LrF; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch LrH; {:try_start_5 .. :try_end_5} :catch_5
    .catch LrE; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v6

    .line 239
    :try_start_6
    invoke-virtual {v5, v0, v6}, Lrw;->a(LrR;LrZ;)LrT;

    move-result-object v6

    iget-object v7, p0, Lrr;->n:Lrp;

    invoke-virtual {v5, v6, v7}, Lrw;->a(LrW;Lrp;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lrr;->a(Ljava/util/List;)V

    .line 240
    iput-object v5, p0, Lrr;->m:Lrw;

    .line 241
    invoke-direct {p0, v0}, Lrr;->a(LrW;)V

    move v0, v3

    .line 242
    goto/16 :goto_2

    .line 231
    :catch_2
    move-exception v0

    .line 232
    invoke-virtual {v0}, LrF;->a()I

    move-result v5

    invoke-virtual {v0}, LrF;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v0, v6}, Lrr;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 233
    goto/16 :goto_2

    .line 234
    :catch_3
    move-exception v0

    .line 235
    iget-object v5, p0, Lrr;->k:Lrs;

    invoke-interface {v5, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V

    .line 236
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v0, v6}, Lrr;->b(ILjava/lang/String;Z)V
    :try_end_6
    .catch LrH; {:try_start_6 .. :try_end_6} :catch_5
    .catch LrE; {:try_start_6 .. :try_end_6} :catch_1

    move v0, v2

    .line 237
    goto/16 :goto_2

    .line 248
    :cond_7
    :try_start_7
    iget-object v0, p0, Lrr;->m:Lrw;

    if-nez v0, :cond_8

    .line 249
    const/16 v0, 0x3ea

    const-string v3, "no draft matches"

    invoke-virtual {p0, v0, v3}, Lrr;->a(ILjava/lang/String;)V

    :cond_8
    move v0, v2

    .line 251
    goto/16 :goto_2

    .line 254
    :cond_9
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0, v1}, Lrw;->d(Ljava/nio/ByteBuffer;)LrW;

    move-result-object v0

    .line 255
    instance-of v4, v0, LrR;

    if-nez v4, :cond_a

    .line 256
    const/16 v0, 0x3ea

    const-string v3, "wrong http function"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lrr;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 257
    goto/16 :goto_2

    .line 259
    :cond_a
    check-cast v0, LrR;

    .line 260
    iget-object v4, p0, Lrr;->m:Lrw;

    invoke-virtual {v4, v0}, Lrw;->a(LrR;)Lry;

    move-result-object v4

    .line 262
    sget-object v5, Lry;->a:Lry;

    if-ne v4, v5, :cond_b

    .line 263
    invoke-direct {p0, v0}, Lrr;->a(LrW;)V

    move v0, v3

    .line 264
    goto/16 :goto_2

    .line 266
    :cond_b
    const/16 v0, 0x3ea

    const-string v3, "the handshake did finaly not match"

    invoke-virtual {p0, v0, v3}, Lrr;->a(ILjava/lang/String;)V

    move v0, v2

    .line 268
    goto/16 :goto_2

    .line 270
    :cond_c
    iget-object v0, p0, Lrr;->n:Lrp;

    sget-object v4, Lrp;->a:Lrp;

    if-ne v0, v4, :cond_3

    .line 271
    iget-object v0, p0, Lrr;->m:Lrw;

    iget-object v4, p0, Lrr;->n:Lrp;

    invoke-virtual {v0, v4}, Lrw;->a(Lrp;)V

    .line 272
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0, v1}, Lrw;->d(Ljava/nio/ByteBuffer;)LrW;

    move-result-object v0

    .line 273
    instance-of v4, v0, LrY;

    if-nez v4, :cond_d

    .line 274
    const/16 v0, 0x3ea

    const-string v3, "wrong http function"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lrr;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 275
    goto/16 :goto_2

    .line 277
    :cond_d
    check-cast v0, LrY;

    .line 278
    iget-object v4, p0, Lrr;->m:Lrw;

    iget-object v5, p0, Lrr;->q:LrR;

    invoke-virtual {v4, v5, v0}, Lrw;->a(LrR;LrY;)Lry;

    move-result-object v4

    .line 279
    sget-object v5, Lry;->a:Lry;

    if-ne v4, v5, :cond_e

    .line 281
    invoke-direct {p0, v0}, Lrr;->a(LrW;)V

    move v0, v3

    .line 291
    goto/16 :goto_2

    .line 293
    :cond_e
    const/16 v0, 0x3ea

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draft "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lrr;->m:Lrw;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " refuses handshake"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lrr;->a(ILjava/lang/String;)V
    :try_end_7
    .catch LrH; {:try_start_7 .. :try_end_7} :catch_4
    .catch LrE; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 296
    :catch_4
    move-exception v0

    .line 297
    :try_start_8
    invoke-virtual {p0, v0}, Lrr;->a(LrF;)V
    :try_end_8
    .catch LrE; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 306
    :cond_f
    sget-boolean v4, Lrr;->h:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, LrE;->a()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v3, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 313
    :cond_10
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_4
.end method

.method private c(ILjava/lang/String;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x3ee

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->d:Lro;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->e:Lro;

    if-eq v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->c:Lro;

    if-ne v0, v1, :cond_5

    .line 402
    if-ne p1, v4, :cond_2

    .line 403
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 404
    :cond_0
    sget-object v0, Lro;->d:Lro;

    iput-object v0, p0, Lrr;->j:Lro;

    .line 405
    invoke-virtual {p0, p1, p2, v2}, Lrr;->b(ILjava/lang/String;Z)V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0}, Lrw;->b()Lrx;

    move-result-object v0

    sget-object v1, Lrx;->a:Lrx;

    if-eq v0, v1, :cond_3

    .line 410
    :try_start_0
    new-instance v0, LrM;

    invoke-direct {v0, p1, p2}, LrM;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lrr;->a(LrO;)V
    :try_end_0
    .catch LrF; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lrr;->b(ILjava/lang/String;Z)V

    .line 430
    :goto_2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_4

    .line 431
    invoke-virtual {p0, p1, p2, p3}, Lrr;->b(ILjava/lang/String;Z)V

    .line 432
    :cond_4
    sget-object v0, Lro;->d:Lro;

    iput-object v0, p0, Lrr;->j:Lro;

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V

    .line 420
    const-string v0, "generated frame is invalid"

    invoke-virtual {p0, v4, v0, v2}, Lrr;->b(ILjava/lang/String;Z)V

    goto :goto_1

    .line 424
    :cond_5
    if-ne p1, v3, :cond_7

    .line 425
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_6

    if-nez p3, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 426
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p2, v0}, Lrr;->b(ILjava/lang/String;Z)V

    goto :goto_2

    .line 428
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, v2}, Lrr;->b(ILjava/lang/String;Z)V

    goto :goto_2
.end method

.method private c(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0, p1}, Lrw;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LrO;

    .line 326
    sget-boolean v1, Lrr;->b:Z

    if-eqz v1, :cond_1

    .line 327
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched frame: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    :cond_1
    invoke-interface {v0}, LrO;->f()LrP;

    move-result-object v1

    .line 329
    invoke-interface {v0}, LrO;->d()Z

    move-result v2

    .line 331
    sget-object v4, LrP;->f:LrP;

    if-ne v1, v4, :cond_5

    .line 332
    const/16 v2, 0x3ed

    .line 333
    const-string v1, ""

    .line 334
    instance-of v4, v0, LrL;

    if-eqz v4, :cond_f

    .line 335
    check-cast v0, LrL;

    .line 336
    invoke-interface {v0}, LrL;->a()I

    move-result v1

    .line 337
    invoke-interface {v0}, LrL;->b()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_1
    iget-object v2, p0, Lrr;->j:Lro;

    sget-object v4, Lro;->d:Lro;

    if-ne v2, v4, :cond_3

    .line 341
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lrr;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catch LrF; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V

    .line 394
    invoke-virtual {p0, v0}, Lrr;->a(LrF;)V

    .line 397
    :cond_2
    return-void

    .line 344
    :cond_3
    :try_start_1
    iget-object v2, p0, Lrr;->m:Lrw;

    invoke-virtual {v2}, Lrw;->b()Lrx;

    move-result-object v2

    sget-object v4, Lrx;->c:Lrx;

    if-ne v2, v4, :cond_4

    .line 345
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lrr;->c(ILjava/lang/String;Z)V

    goto :goto_0

    .line 347
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lrr;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 350
    :cond_5
    sget-object v4, LrP;->d:LrP;

    if-ne v1, v4, :cond_6

    .line 351
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;LrO;)V

    goto :goto_0

    .line 353
    :cond_6
    sget-object v4, LrP;->e:LrP;

    if-eq v1, v4, :cond_0

    .line 356
    if-eqz v2, :cond_7

    sget-object v4, LrP;->a:LrP;

    if-ne v1, v4, :cond_c

    .line 357
    :cond_7
    sget-object v0, LrP;->a:LrP;

    if-eq v1, v0, :cond_9

    .line 358
    iget-object v0, p0, Lrr;->o:LrP;

    if-eqz v0, :cond_8

    .line 359
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    const-string v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, LrF;-><init>(ILjava/lang/String;)V

    throw v0

    .line 360
    :cond_8
    iput-object v1, p0, Lrr;->o:LrP;

    goto/16 :goto_0

    .line 361
    :cond_9
    if-eqz v2, :cond_b

    .line 362
    iget-object v0, p0, Lrr;->o:LrP;

    if-nez v0, :cond_a

    .line 363
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, LrF;-><init>(ILjava/lang/String;)V

    throw v0

    .line 364
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lrr;->o:LrP;

    goto/16 :goto_0

    .line 365
    :cond_b
    iget-object v0, p0, Lrr;->o:LrP;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, LrF;-><init>(ILjava/lang/String;)V

    throw v0

    .line 370
    :cond_c
    iget-object v2, p0, Lrr;->o:LrP;

    if-eqz v2, :cond_d

    .line 375
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, LrF;-><init>(ILjava/lang/String;)V

    throw v0

    .line 376
    :cond_d
    sget-object v2, LrP;->b:LrP;
    :try_end_1
    .catch LrF; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v2, :cond_e

    .line 378
    :try_start_2
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v0}, LrO;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lsc;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch LrF; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    :try_start_3
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 382
    :cond_e
    sget-object v0, LrP;->c:LrP;

    if-eq v1, v0, :cond_0

    .line 385
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    const-string v2, "non control or continious frame expected"

    invoke-direct {v0, v1, v2}, LrF;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch LrF; {:try_start_3 .. :try_end_3} :catch_0

    :cond_f
    move-object v0, v1

    move v1, v2

    goto/16 :goto_1
.end method

.method private d(Ljava/nio/ByteBuffer;)Lry;
    .locals 3

    .prologue
    .line 600
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 601
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lrw;->c:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 602
    sget-object v0, Lry;->b:Lry;

    .line 613
    :goto_0
    return-object v0

    .line 603
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lrw;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 604
    new-instance v0, LrE;

    sget-object v1, Lrw;->c:[B

    array-length v1, v1

    invoke-direct {v0, v1}, LrE;-><init>(I)V

    throw v0

    .line 607
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 608
    sget-object v1, Lrw;->c:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v1, v2, :cond_2

    .line 609
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 610
    sget-object v0, Lry;->b:Lry;

    goto :goto_0

    .line 607
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 613
    :cond_3
    sget-object v0, Lry;->a:Lry;

    goto :goto_0
.end method

.method private e(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 642
    sget-boolean v0, Lrr;->b:Z

    if-eqz v0, :cond_0

    .line 643
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_1

    const-string v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v0, p0, Lrr;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 653
    return-void

    .line 643
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lrr;->k:Lrs;

    invoke-interface {v0, p0}, Lrs;->b(Lrn;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrr;->c(ILjava/lang/String;Z)V

    .line 441
    return-void
.end method

.method protected declared-synchronized a(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->e:Lro;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 479
    :goto_0
    monitor-exit p0

    return-void

    .line 457
    :cond_0
    :try_start_1
    iget-object v0, p0, Lrr;->d:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lrr;->d:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 461
    :cond_1
    iget-object v0, p0, Lrr;->e:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 463
    :try_start_2
    iget-object v0, p0, Lrr;->e:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lrr;->k:Lrs;

    invoke-interface {v0, p0, p1, p2, p3}, Lrs;->a(Lrn;ILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    :goto_2
    :try_start_4
    iget-object v0, p0, Lrr;->m:Lrw;

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0}, Lrw;->a()V

    .line 475
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lrr;->q:LrR;

    .line 477
    sget-object v0, Lro;->e:Lro;

    iput-object v0, p0, Lrr;->j:Lro;

    .line 478
    iget-object v0, p0, Lrr;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    :try_start_5
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V

    goto :goto_1

    .line 470
    :catch_1
    move-exception v0

    .line 471
    iget-object v1, p0, Lrr;->k:Lrs;

    invoke-interface {v1, p0, v0}, Lrs;->a(Lrn;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method protected a(IZ)V
    .locals 1

    .prologue
    .line 482
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lrr;->a(ILjava/lang/String;Z)V

    .line 483
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 155
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_0
    sget-boolean v0, Lrr;->b:Z

    if-eqz v0, :cond_1

    .line 158
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_3

    const-string v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->a:Lro;

    if-eq v0, v1, :cond_4

    .line 161
    invoke-direct {p0, p1}, Lrr;->c(Ljava/nio/ByteBuffer;)V

    .line 173
    :cond_2
    :goto_1
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lrr;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lrr;->e()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 163
    :cond_4
    invoke-direct {p0, p1}, Lrr;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    invoke-direct {p0, p1}, Lrr;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 168
    :cond_6
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lrr;->p:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lrr;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 174
    :cond_7
    return-void
.end method

.method public a(LrF;)V
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p1}, LrF;->a()I

    move-result v0

    invoke-virtual {p1}, LrF;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lrr;->c(ILjava/lang/String;Z)V

    .line 541
    return-void
.end method

.method public a(LrO;)V
    .locals 3

    .prologue
    .line 589
    sget-boolean v0, Lrr;->b:Z

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0, p1}, Lrw;->a(LrO;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->e(Ljava/nio/ByteBuffer;)V

    .line 592
    return-void
.end method

.method public a(LrP;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0, p1, p2, p3}, Lrw;->a(LrP;Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/util/Collection;)V

    .line 585
    return-void
.end method

.method public a(LrS;)V
    .locals 3

    .prologue
    .line 618
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->b:Lro;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "shall only be called once"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 621
    :cond_0
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0, p1}, Lrw;->a(LrS;)LrS;

    move-result-object v0

    iput-object v0, p0, Lrr;->q:LrR;

    .line 623
    invoke-interface {p1}, LrS;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrr;->u:Ljava/lang/String;

    .line 624
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrr;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 628
    :cond_1
    iget-object v0, p0, Lrr;->m:Lrw;

    iget-object v1, p0, Lrr;->q:LrR;

    iget-object v2, p0, Lrr;->n:Lrp;

    invoke-virtual {v0, v1, v2}, Lrw;->a(LrW;Lrp;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lrr;->a(Ljava/util/List;)V

    .line 639
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/16 v4, 0x3ee

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 518
    invoke-virtual {p0}, Lrr;->g()Lro;

    move-result-object v0

    sget-object v1, Lro;->a:Lro;

    if-ne v0, v1, :cond_0

    .line 519
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lrr;->a(IZ)V

    .line 532
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-boolean v0, p0, Lrr;->i:Z

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lrr;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lrr;->r:Ljava/lang/String;

    iget-object v2, p0, Lrr;->t:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lrr;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0}, Lrw;->b()Lrx;

    move-result-object v0

    sget-object v1, Lrx;->a:Lrx;

    if-ne v0, v1, :cond_2

    .line 523
    invoke-virtual {p0, v3, v2}, Lrr;->a(IZ)V

    goto :goto_0

    .line 524
    :cond_2
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0}, Lrw;->b()Lrx;

    move-result-object v0

    sget-object v1, Lrx;->b:Lrx;

    if-ne v0, v1, :cond_4

    .line 525
    iget-object v0, p0, Lrr;->n:Lrp;

    sget-object v1, Lrp;->b:Lrp;

    if-ne v0, v1, :cond_3

    .line 526
    invoke-virtual {p0, v4, v2}, Lrr;->a(IZ)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {p0, v3, v2}, Lrr;->a(IZ)V

    goto :goto_0

    .line 530
    :cond_4
    invoke-virtual {p0, v4, v2}, Lrr;->a(IZ)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lrr;->a(ILjava/lang/String;Z)V

    .line 494
    return-void
.end method

.method protected declared-synchronized b(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lrr;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    monitor-exit p0

    return-void

    .line 500
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lrr;->s:Ljava/lang/Integer;

    .line 501
    iput-object p2, p0, Lrr;->r:Ljava/lang/String;

    .line 502
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lrr;->t:Ljava/lang/Boolean;

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrr;->i:Z

    .line 506
    iget-object v0, p0, Lrr;->m:Lrw;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lrr;->m:Lrw;

    invoke-virtual {v0}, Lrw;->a()V

    .line 514
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lrr;->q:LrR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 681
    sget-boolean v0, Lrr;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->c:Lro;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lrr;->i:Z

    if-nez v0, :cond_1

    .line 682
    :cond_0
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->c:Lro;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 682
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->d:Lro;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lrr;->i:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lrr;->j:Lro;

    sget-object v1, Lro;->e:Lro;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lro;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lrr;->j:Lro;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 707
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
