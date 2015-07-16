.class public final LyN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LyP;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LKC;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LKC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:LyB;

.field private final d:Lzv;

.field private e:LzH;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [LKC;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, Lyi;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LyN;->a:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [LKC;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lyi;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LyN;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(LyB;Lzv;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, LyN;->c:LyB;

    .line 75
    iput-object p2, p0, LyN;->d:Lzv;

    .line 76
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LxD;LxC;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LxD;",
            "LxC;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, LxD;->e()Lxs;

    move-result-object v4

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lxs;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    new-instance v0, LyX;

    sget-object v1, LyX;->b:LKC;

    invoke-virtual {p0}, LxD;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, LyX;

    sget-object v1, LyX;->c:LKC;

    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, LyK;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, LyB;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-object v1, LxC;->c:LxC;

    if-ne v1, p1, :cond_1

    .line 120
    new-instance v1, LyX;

    sget-object v3, LyX;->g:LKC;

    invoke-direct {v1, v3, p2}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, LyX;

    sget-object v3, LyX;->f:LKC;

    invoke-direct {v1, v3, v0}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    new-instance v0, LyX;

    sget-object v1, LyX;->d:LKC;

    invoke-virtual {p0}, LxD;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    invoke-virtual {v4}, Lxs;->a()I

    move-result v7

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_6

    .line 132
    invoke-virtual {v4, v3}, Lxs;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LKC;->a(Ljava/lang/String;)LKC;

    move-result-object v8

    .line 133
    invoke-virtual {v4, v3}, Lxs;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-static {p1, v8}, LyN;->a(LxC;LKC;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    :cond_0
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 122
    :cond_1
    sget-object v1, LxC;->d:LxC;

    if-ne v1, p1, :cond_2

    .line 123
    new-instance v1, LyX;

    sget-object v3, LyX;->e:LKC;

    invoke-direct {v1, v3, v0}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_3
    sget-object v0, LyX;->b:LKC;

    invoke-virtual {v8, v0}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyX;->c:LKC;

    .line 140
    invoke-virtual {v8, v0}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyX;->d:LKC;

    .line 141
    invoke-virtual {v8, v0}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyX;->e:LKC;

    .line 142
    invoke-virtual {v8, v0}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyX;->f:LKC;

    .line 143
    invoke-virtual {v8, v0}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyX;->g:LKC;

    .line 144
    invoke-virtual {v8, v0}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    new-instance v0, LyX;

    invoke-direct {v0, v8, v9}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v1, v2

    .line 155
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 156
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    iget-object v0, v0, LyX;->h:LKC;

    invoke-virtual {v0, v8}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    iget-object v0, v0, LyX;->i:LKC;

    invoke-virtual {v0}, LKC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LyN;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v9, LyX;

    invoke-direct {v9, v8, v0}, LyX;-><init>(LKC;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 155
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 163
    :cond_6
    return-object v5
.end method

.method public static a(Ljava/util/List;LxC;)LxL;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LyX;",
            ">;",
            "LxC;",
            ")",
            "LxL;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    const-string v1, "HTTP/1.1"

    .line 176
    new-instance v6, Lxu;

    invoke-direct {v6}, Lxu;-><init>()V

    .line 177
    sget-object v0, LyH;->d:Ljava/lang/String;

    invoke-virtual {p1}, LxC;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lxu;->b(Ljava/lang/String;Ljava/lang/String;)Lxu;

    .line 178
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    .line 179
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    iget-object v8, v0, LyX;->h:LKC;

    .line 180
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    iget-object v0, v0, LyX;->i:LKC;

    invoke-virtual {v0}, LKC;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    .line 181
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 182
    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 183
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 184
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 186
    :cond_0
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 187
    sget-object v10, LyX;->a:LKC;

    invoke-virtual {v8, v10}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 194
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v11, v2

    move-object v2, v1

    move v1, v11

    .line 195
    goto :goto_1

    .line 189
    :cond_1
    sget-object v10, LyX;->g:LKC;

    invoke-virtual {v8, v10}, LKC;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    .line 190
    goto :goto_2

    .line 191
    :cond_2
    invoke-static {p1, v8}, LyN;->a(LxC;LKC;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 192
    invoke-virtual {v8}, LKC;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Lxu;->a(Ljava/lang/String;Ljava/lang/String;)Lxu;

    :cond_3
    move-object v1, v2

    goto :goto_2

    .line 178
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    .line 197
    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LyO;->a(Ljava/lang/String;)LyO;

    move-result-object v0

    .line 200
    new-instance v1, LxL;

    invoke-direct {v1}, LxL;-><init>()V

    .line 201
    invoke-virtual {v1, p1}, LxL;->a(LxC;)LxL;

    move-result-object v1

    iget v2, v0, LyO;->b:I

    .line 202
    invoke-virtual {v1, v2}, LxL;->a(I)LxL;

    move-result-object v1

    iget-object v0, v0, LyO;->c:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v0}, LxL;->a(Ljava/lang/String;)LxL;

    move-result-object v0

    .line 204
    invoke-virtual {v6}, Lxu;->a()Lxs;

    move-result-object v1

    invoke-virtual {v0, v1}, LxL;->a(Lxs;)LxL;

    move-result-object v0

    return-object v0
.end method

.method private static a(LxC;LKC;)Z
    .locals 1

    .prologue
    .line 224
    sget-object v0, LxC;->c:LxC;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, LyN;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, LxC;->d:LxC;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, LyN;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a(LxD;J)LKS;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, LyN;->e:LzH;

    invoke-virtual {v0}, LzH;->g()LKS;

    move-result-object v0

    return-object v0
.end method

.method public a(LxJ;)LxM;
    .locals 3

    .prologue
    .line 208
    new-instance v0, LyJ;

    invoke-virtual {p1}, LxJ;->g()Lxs;

    move-result-object v1

    iget-object v2, p0, LyN;->e:LzH;

    invoke-virtual {v2}, LzH;->f()LKT;

    move-result-object v2

    invoke-static {v2}, LKI;->a(LKT;)LKB;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LyJ;-><init>(Lxs;LKB;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LyN;->e:LzH;

    invoke-virtual {v0}, LzH;->g()LKS;

    move-result-object v0

    invoke-interface {v0}, LKS;->close()V

    .line 101
    return-void
.end method

.method public a(LxD;)V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, LyN;->e:LzH;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, LyN;->c:LyB;

    invoke-virtual {v0}, LyB;->b()V

    .line 86
    iget-object v0, p0, LyN;->c:LyB;

    invoke-virtual {v0}, LyB;->c()Z

    move-result v0

    .line 87
    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, LyN;->c:LyB;

    invoke-virtual {v2}, LyB;->i()Lxi;

    move-result-object v2

    invoke-virtual {v2}, Lxi;->l()LxC;

    move-result-object v2

    invoke-static {v2}, LyK;->a(LxC;)Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v3, p0, LyN;->d:Lzv;

    iget-object v4, p0, LyN;->d:Lzv;

    .line 90
    invoke-virtual {v4}, Lzv;->a()LxC;

    move-result-object v4

    invoke-static {p1, v4, v2}, LyN;->a(LxD;LxC;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    invoke-virtual {v3, v2, v0, v1}, Lzv;->a(Ljava/util/List;ZZ)LzH;

    move-result-object v0

    iput-object v0, p0, LyN;->e:LzH;

    .line 92
    iget-object v0, p0, LyN;->e:LzH;

    invoke-virtual {v0}, LzH;->e()LKU;

    move-result-object v0

    iget-object v1, p0, LyN;->c:LyB;

    iget-object v1, v1, LyB;->a:Lxy;

    invoke-virtual {v1}, Lxy;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, LKU;->a(JLjava/util/concurrent/TimeUnit;)LKU;

    goto :goto_0
.end method

.method public a(LyB;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, LyN;->e:LzH;

    if-eqz v0, :cond_0

    iget-object v0, p0, LyN;->e:LzH;

    sget-object v1, LyT;->l:LyT;

    invoke-virtual {v0, v1}, LzH;->a(LyT;)V

    .line 216
    :cond_0
    return-void
.end method

.method public a(LyL;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LyN;->e:LzH;

    invoke-virtual {v0}, LzH;->g()LKS;

    move-result-object v0

    invoke-virtual {p1, v0}, LyL;->a(LKS;)V

    .line 97
    return-void
.end method

.method public b()LxL;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, LyN;->e:LzH;

    invoke-virtual {v0}, LzH;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LyN;->d:Lzv;

    invoke-virtual {v1}, Lzv;->a()LxC;

    move-result-object v1

    invoke-static {v0, v1}, LyN;->a(Ljava/util/List;LxC;)LxL;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method
