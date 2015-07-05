.class public final LyD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LyF;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LJU;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LJU;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lyr;

.field private final d:Lzl;

.field private e:Lzx;


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

    new-array v0, v0, [LJU;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, LxY;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LyD;->a:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [LJU;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, LxY;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LyD;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lyr;Lzl;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, LyD;->c:Lyr;

    .line 75
    iput-object p2, p0, LyD;->d:Lzl;

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

.method public static a(Lxt;Lxs;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxt;",
            "Lxs;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "LyN;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lxt;->e()Lxi;

    move-result-object v4

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lxi;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    new-instance v0, LyN;

    sget-object v1, LyN;->b:LJU;

    invoke-virtual {p0}, Lxt;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LyN;-><init>(LJU;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, LyN;

    sget-object v1, LyN;->c:LJU;

    invoke-virtual {p0}, Lxt;->a()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, LyA;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LyN;-><init>(LJU;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lxt;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lyr;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-object v1, Lxs;->c:Lxs;

    if-ne v1, p1, :cond_1

    .line 120
    new-instance v1, LyN;

    sget-object v3, LyN;->g:LJU;

    invoke-direct {v1, v3, p2}, LyN;-><init>(LJU;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, LyN;

    sget-object v3, LyN;->f:LJU;

    invoke-direct {v1, v3, v0}, LyN;-><init>(LJU;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    new-instance v0, LyN;

    sget-object v1, LyN;->d:LJU;

    invoke-virtual {p0}, Lxt;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LyN;-><init>(LJU;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    invoke-virtual {v4}, Lxi;->a()I

    move-result v7

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_6

    .line 132
    invoke-virtual {v4, v3}, Lxi;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJU;->a(Ljava/lang/String;)LJU;

    move-result-object v8

    .line 133
    invoke-virtual {v4, v3}, Lxi;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-static {p1, v8}, LyD;->a(Lxs;LJU;)Z

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
    sget-object v1, Lxs;->d:Lxs;

    if-ne v1, p1, :cond_2

    .line 123
    new-instance v1, LyN;

    sget-object v3, LyN;->e:LJU;

    invoke-direct {v1, v3, v0}, LyN;-><init>(LJU;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_3
    sget-object v0, LyN;->b:LJU;

    invoke-virtual {v8, v0}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyN;->c:LJU;

    .line 140
    invoke-virtual {v8, v0}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyN;->d:LJU;

    .line 141
    invoke-virtual {v8, v0}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyN;->e:LJU;

    .line 142
    invoke-virtual {v8, v0}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyN;->f:LJU;

    .line 143
    invoke-virtual {v8, v0}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LyN;->g:LJU;

    .line 144
    invoke-virtual {v8, v0}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    new-instance v0, LyN;

    invoke-direct {v0, v8, v9}, LyN;-><init>(LJU;Ljava/lang/String;)V

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

    check-cast v0, LyN;

    iget-object v0, v0, LyN;->h:LJU;

    invoke-virtual {v0, v8}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyN;

    iget-object v0, v0, LyN;->i:LJU;

    invoke-virtual {v0}, LJU;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, LyD;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v9, LyN;

    invoke-direct {v9, v8, v0}, LyN;-><init>(LJU;Ljava/lang/String;)V

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

.method public static a(Ljava/util/List;Lxs;)LxB;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LyN;",
            ">;",
            "Lxs;",
            ")",
            "LxB;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    const-string v1, "HTTP/1.1"

    .line 176
    new-instance v6, Lxk;

    invoke-direct {v6}, Lxk;-><init>()V

    .line 177
    sget-object v0, Lyx;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lxs;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lxk;->b(Ljava/lang/String;Ljava/lang/String;)Lxk;

    .line 178
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    .line 179
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyN;

    iget-object v8, v0, LyN;->h:LJU;

    .line 180
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyN;

    iget-object v0, v0, LyN;->i:LJU;

    invoke-virtual {v0}, LJU;->a()Ljava/lang/String;

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
    sget-object v10, LyN;->a:LJU;

    invoke-virtual {v8, v10}, LJU;->equals(Ljava/lang/Object;)Z

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
    sget-object v10, LyN;->g:LJU;

    invoke-virtual {v8, v10}, LJU;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    .line 190
    goto :goto_2

    .line 191
    :cond_2
    invoke-static {p1, v8}, LyD;->a(Lxs;LJU;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 192
    invoke-virtual {v8}, LJU;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Lxk;->a(Ljava/lang/String;Ljava/lang/String;)Lxk;

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

    invoke-static {v0}, LyE;->a(Ljava/lang/String;)LyE;

    move-result-object v0

    .line 200
    new-instance v1, LxB;

    invoke-direct {v1}, LxB;-><init>()V

    .line 201
    invoke-virtual {v1, p1}, LxB;->a(Lxs;)LxB;

    move-result-object v1

    iget v2, v0, LyE;->b:I

    .line 202
    invoke-virtual {v1, v2}, LxB;->a(I)LxB;

    move-result-object v1

    iget-object v0, v0, LyE;->c:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v0}, LxB;->a(Ljava/lang/String;)LxB;

    move-result-object v0

    .line 204
    invoke-virtual {v6}, Lxk;->a()Lxi;

    move-result-object v1

    invoke-virtual {v0, v1}, LxB;->a(Lxi;)LxB;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lxs;LJU;)Z
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lxs;->c:Lxs;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, LyD;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lxs;->d:Lxs;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, LyD;->b:Ljava/util/List;

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
.method public a(Lxt;J)LKk;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, LyD;->e:Lzx;

    invoke-virtual {v0}, Lzx;->g()LKk;

    move-result-object v0

    return-object v0
.end method

.method public a(Lxz;)LxC;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lyz;

    invoke-virtual {p1}, Lxz;->g()Lxi;

    move-result-object v1

    iget-object v2, p0, LyD;->e:Lzx;

    invoke-virtual {v2}, Lzx;->f()LKl;

    move-result-object v2

    invoke-static {v2}, LKa;->a(LKl;)LJT;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lyz;-><init>(Lxi;LJT;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, LyD;->e:Lzx;

    invoke-virtual {v0}, Lzx;->g()LKk;

    move-result-object v0

    invoke-interface {v0}, LKk;->close()V

    .line 101
    return-void
.end method

.method public a(Lxt;)V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, LyD;->e:Lzx;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, LyD;->c:Lyr;

    invoke-virtual {v0}, Lyr;->b()V

    .line 86
    iget-object v0, p0, LyD;->c:Lyr;

    invoke-virtual {v0}, Lyr;->c()Z

    move-result v0

    .line 87
    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, LyD;->c:Lyr;

    invoke-virtual {v2}, Lyr;->i()LwZ;

    move-result-object v2

    invoke-virtual {v2}, LwZ;->l()Lxs;

    move-result-object v2

    invoke-static {v2}, LyA;->a(Lxs;)Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v3, p0, LyD;->d:Lzl;

    iget-object v4, p0, LyD;->d:Lzl;

    .line 90
    invoke-virtual {v4}, Lzl;->a()Lxs;

    move-result-object v4

    invoke-static {p1, v4, v2}, LyD;->a(Lxt;Lxs;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 89
    invoke-virtual {v3, v2, v0, v1}, Lzl;->a(Ljava/util/List;ZZ)Lzx;

    move-result-object v0

    iput-object v0, p0, LyD;->e:Lzx;

    .line 92
    iget-object v0, p0, LyD;->e:Lzx;

    invoke-virtual {v0}, Lzx;->e()LKm;

    move-result-object v0

    iget-object v1, p0, LyD;->c:Lyr;

    iget-object v1, v1, Lyr;->a:Lxo;

    invoke-virtual {v1}, Lxo;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, LKm;->a(JLjava/util/concurrent/TimeUnit;)LKm;

    goto :goto_0
.end method

.method public a(LyB;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, LyD;->e:Lzx;

    invoke-virtual {v0}, Lzx;->g()LKk;

    move-result-object v0

    invoke-virtual {p1, v0}, LyB;->a(LKk;)V

    .line 97
    return-void
.end method

.method public a(Lyr;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, LyD;->e:Lzx;

    if-eqz v0, :cond_0

    iget-object v0, p0, LyD;->e:Lzx;

    sget-object v1, LyJ;->l:LyJ;

    invoke-virtual {v0, v1}, Lzx;->a(LyJ;)V

    .line 216
    :cond_0
    return-void
.end method

.method public b()LxB;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, LyD;->e:Lzx;

    invoke-virtual {v0}, Lzx;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LyD;->d:Lzl;

    invoke-virtual {v1}, Lzl;->a()Lxs;

    move-result-object v1

    invoke-static {v0, v1}, LyD;->a(Ljava/util/List;Lxs;)LxB;

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
