.class public abstract Lrw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field public static final c:[B


# instance fields
.field protected d:Lrp;

.field protected e:LrP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x3e8

    sput v0, Lrw;->a:I

    .line 45
    const/16 v0, 0x40

    sput v0, Lrw;->b:I

    .line 47
    const-string v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lsc;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lrw;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lrw;->d:Lrp;

    .line 52
    iput-object v0, p0, Lrw;->e:LrP;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 56
    const/16 v0, 0x30

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 61
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    .line 63
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v2

    .line 71
    :goto_1
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;Lrp;)LrT;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 82
    invoke-static {p0}, Lrw;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v0, LrE;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, LrE;-><init>(I)V

    throw v0

    .line 86
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 87
    array-length v0, v2

    if-eq v0, v3, :cond_1

    .line 88
    new-instance v0, LrH;

    invoke-direct {v0}, LrH;-><init>()V

    throw v0

    .line 91
    :cond_1
    sget-object v0, Lrp;->a:Lrp;

    if-ne p1, v0, :cond_2

    .line 93
    new-instance v1, LrV;

    invoke-direct {v1}, LrV;-><init>()V

    move-object v0, v1

    .line 94
    check-cast v0, LrZ;

    .line 95
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-interface {v0, v3}, LrZ;->a(S)V

    .line 96
    aget-object v2, v2, v6

    invoke-interface {v0, v2}, LrZ;->a(Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-static {p0}, Lrw;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 106
    const-string v2, ":"

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 107
    array-length v2, v0

    if-eq v2, v6, :cond_3

    .line 108
    new-instance v0, LrH;

    const-string v1, "not an http header"

    invoke-direct {v0, v1}, LrH;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    new-instance v1, LrU;

    invoke-direct {v1}, LrU;-><init>()V

    .line 100
    aget-object v0, v2, v5

    invoke-interface {v1, v0}, LrS;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v5

    const-string v3, "^ +"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, LrT;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0}, Lrw;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 112
    :cond_4
    if-nez v0, :cond_5

    .line 113
    new-instance v0, LrE;

    invoke-direct {v0}, LrE;-><init>()V

    throw v0

    .line 114
    :cond_5
    return-object v1
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    invoke-static {p0}, Lrw;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v1, v2, v0}, Lsc;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .prologue
    .line 215
    if-gez p1, :cond_0

    .line 216
    new-instance v0, LrF;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, LrF;-><init>(ILjava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return p1
.end method

.method public abstract a(LrO;)Ljava/nio/ByteBuffer;
.end method

.method public a(LrP;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LrP;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "LrO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, LrP;->c:LrP;

    if-eq p1, v0, :cond_0

    sget-object v0, LrP;->b:LrP;

    if-eq p1, v0, :cond_0

    sget-object v0, LrP;->b:LrP;

    if-eq p1, v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lrw;->e:LrP;

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, LrP;->a:LrP;

    iput-object v0, p0, Lrw;->e:LrP;

    .line 142
    :goto_0
    new-instance v0, LrQ;

    iget-object v1, p0, Lrw;->e:LrP;

    invoke-direct {v0, v1}, LrQ;-><init>(LrP;)V

    .line 144
    :try_start_0
    invoke-interface {v0, p2}, LrN;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch LrF; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-interface {v0, p3}, LrN;->a(Z)V

    .line 149
    if-eqz p3, :cond_2

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lrw;->e:LrP;

    .line 154
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    iput-object p1, p0, Lrw;->e:LrP;

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_2
    iput-object p1, p0, Lrw;->e:LrP;

    goto :goto_1
.end method

.method public a(LrW;Lrp;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LrW;",
            "Lrp;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lrw;->a(LrW;Lrp;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(LrW;Lrp;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LrW;",
            "Lrp;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    instance-of v0, p1, LrR;

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "GET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 167
    check-cast v0, LrR;

    invoke-interface {v0}, LrR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_0
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {p1}, LrW;->b()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-interface {p1, v0}, LrW;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    :cond_0
    instance-of v0, p1, LrY;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 101 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, LrY;

    invoke-interface {v0}, LrY;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknow role"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_2
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsc;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 187
    if-eqz p3, :cond_4

    invoke-interface {p1}, LrW;->c()[B

    move-result-object v0

    move-object v1, v0

    .line 188
    :goto_2
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 187
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    .line 188
    :cond_5
    array-length v0, v1

    goto :goto_3
.end method

.method public abstract a(LrS;)LrS;
.end method

.method public abstract a(LrR;LrZ;)LrT;
.end method

.method public abstract a(LrR;)Lry;
.end method

.method public abstract a(LrR;LrY;)Lry;
.end method

.method public abstract a()V
.end method

.method public a(Lrp;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lrw;->d:Lrp;

    .line 222
    return-void
.end method

.method protected a(LrW;)Z
    .locals 2

    .prologue
    .line 122
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, LrW;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, LrW;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()Lrx;
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)Ljava/util/List;
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
.end method

.method public abstract c()Lrw;
.end method

.method public d(Ljava/nio/ByteBuffer;)LrW;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lrw;->d:Lrp;

    invoke-static {p1, v0}, Lrw;->a(Ljava/nio/ByteBuffer;Lrp;)LrT;

    move-result-object v0

    return-object v0
.end method
