.class public final Lxc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxc;

.field public static final b:Lxc;

.field public static final c:Lxc;


# instance fields
.field final d:Z

.field final e:Z

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private h:Lxc;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 32
    new-instance v0, Lxe;

    invoke-direct {v0, v4, v8}, Lxe;-><init>(ZLxd;)V

    const/16 v1, 0x12

    new-array v1, v1, [LwY;

    sget-object v2, LwY;->aK:LwY;

    aput-object v2, v1, v5

    sget-object v2, LwY;->aO:LwY;

    aput-object v2, v1, v4

    sget-object v2, LwY;->W:LwY;

    aput-object v2, v1, v6

    sget-object v2, LwY;->am:LwY;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    sget-object v3, LwY;->al:LwY;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, LwY;->av:LwY;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, LwY;->aw:LwY;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, LwY;->aj:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, LwY;->at:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, LwY;->F:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, LwY;->E:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, LwY;->J:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, LwY;->U:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, LwY;->D:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, LwY;->H:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, LwY;->h:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, LwY;->e:LwY;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, LwY;->d:LwY;

    aput-object v3, v1, v2

    .line 33
    invoke-virtual {v0, v1}, Lxe;->a([LwY;)Lxe;

    move-result-object v0

    new-array v1, v7, [LxE;

    sget-object v2, LxE;->a:LxE;

    aput-object v2, v1, v5

    sget-object v2, LxE;->b:LxE;

    aput-object v2, v1, v4

    sget-object v2, LxE;->c:LxE;

    aput-object v2, v1, v6

    .line 56
    invoke-virtual {v0, v1}, Lxe;->a([LxE;)Lxe;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v4}, Lxe;->a(Z)Lxe;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lxe;->a()Lxc;

    move-result-object v0

    sput-object v0, Lxc;->a:Lxc;

    .line 61
    new-instance v0, Lxe;

    sget-object v1, Lxc;->a:Lxc;

    invoke-direct {v0, v1}, Lxe;-><init>(Lxc;)V

    new-array v1, v4, [LxE;

    sget-object v2, LxE;->c:LxE;

    aput-object v2, v1, v5

    .line 62
    invoke-virtual {v0, v1}, Lxe;->a([LxE;)Lxe;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lxe;->a()Lxc;

    move-result-object v0

    sput-object v0, Lxc;->b:Lxc;

    .line 66
    new-instance v0, Lxe;

    invoke-direct {v0, v5, v8}, Lxe;-><init>(ZLxd;)V

    invoke-virtual {v0}, Lxe;->a()Lxc;

    move-result-object v0

    sput-object v0, Lxc;->c:Lxc;

    return-void
.end method

.method private constructor <init>(Lxe;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lxe;->a(Lxe;)Z

    move-result v0

    iput-boolean v0, p0, Lxc;->d:Z

    .line 82
    invoke-static {p1}, Lxe;->b(Lxe;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxc;->f:[Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lxe;->c(Lxe;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lxc;->g:[Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lxe;->d(Lxe;)Z

    move-result v0

    iput-boolean v0, p0, Lxc;->e:Z

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lxe;Lxd;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lxc;-><init>(Lxe;)V

    return-void
.end method

.method private a(Ljavax/net/ssl/SSLSocket;)Lxc;
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lxc;->f:[Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LxY;->a([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lxc;->g:[Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LxY;->a([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 156
    new-instance v2, Lxe;

    invoke-direct {v2, p0}, Lxe;-><init>(Lxc;)V

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lxe;->a([Ljava/lang/String;)Lxe;

    move-result-object v2

    .line 158
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lxe;->b([Ljava/lang/String;)Lxe;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lxe;->a()Lxc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lxc;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lxc;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lxc;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lxc;->g:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;LxD;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lxc;->h:Lxc;

    .line 114
    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lxc;->a(Ljavax/net/ssl/SSLSocket;)Lxc;

    move-result-object v0

    .line 116
    iput-object v0, p0, Lxc;->h:Lxc;

    .line 119
    :cond_0
    iget-object v1, v0, Lxc;->g:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 121
    iget-object v2, v0, Lxc;->f:[Ljava/lang/String;

    .line 122
    iget-boolean v1, p2, LxD;->e:Z

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 132
    array-length v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 133
    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const-string v3, "TLS_FALLBACK_SCSV"

    aput-object v3, v1, v2

    .line 139
    :goto_0
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 141
    invoke-static {}, LxS;->a()LxS;

    move-result-object v1

    .line 142
    iget-boolean v0, v0, Lxc;->e:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p2, LxD;->a:LwD;

    iget-object v0, v0, LwD;->b:Ljava/lang/String;

    iget-object v2, p2, LxD;->a:LwD;

    iget-object v2, v2, LwD;->i:Ljava/util/List;

    invoke-virtual {v1, p1, v0, v2}, LxS;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 145
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lxc;->d:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LwY;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lxc;->f:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [LwY;

    .line 93
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lxc;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 94
    iget-object v2, p0, Lxc;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, LwY;->b(Ljava/lang/String;)LwY;

    move-result-object v2

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v1}, LxY;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LxE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lxc;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [LxE;

    .line 101
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lxc;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 102
    iget-object v2, p0, Lxc;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, LxE;->a(Ljava/lang/String;)LxE;

    move-result-object v2

    aput-object v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v1}, LxY;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lxc;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    instance-of v1, p1, Lxc;

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    check-cast p1, Lxc;

    .line 166
    iget-boolean v1, p0, Lxc;->d:Z

    iget-boolean v2, p1, Lxc;->d:Z

    if-ne v1, v2, :cond_0

    .line 168
    iget-boolean v1, p0, Lxc;->d:Z

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lxc;->f:[Ljava/lang/String;

    iget-object v2, p1, Lxc;->f:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lxc;->g:[Ljava/lang/String;

    iget-object v2, p1, Lxc;->g:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-boolean v1, p0, Lxc;->e:Z

    iget-boolean v2, p1, Lxc;->e:Z

    if-ne v1, v2, :cond_0

    .line 174
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 178
    const/16 v0, 0x11

    .line 179
    iget-boolean v1, p0, Lxc;->d:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v0, p0, Lxc;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lxc;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lxc;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 184
    :cond_0
    return v0

    .line 182
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lxc;->d:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lxc;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lxc;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lxc;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ConnectionSpec()"

    goto :goto_0
.end method
