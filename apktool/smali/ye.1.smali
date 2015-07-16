.class Lye;
.super Lyc;
.source "SourceFile"


# static fields
.field private static final a:Lyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lyb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-instance v0, Lyb;

    const-string v1, "setUseSessionTickets"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lyb;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lye;->a:Lyb;

    .line 158
    new-instance v0, Lyb;

    const-string v1, "setHostname"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lyb;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lye;->b:Lyb;

    .line 161
    new-instance v0, Lyb;

    const-class v1, [B

    const-string v2, "getAlpnSelectedProtocol"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lye;->c:Lyb;

    .line 164
    new-instance v0, Lyb;

    const-string v1, "setAlpnProtocols"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v4

    invoke-direct {v0, v6, v1, v2}, Lyb;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lye;->d:Lyb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lyc;-><init>()V

    .line 172
    iput-object p1, p0, Lye;->e:Ljava/lang/reflect/Method;

    .line 173
    iput-object p2, p0, Lye;->f:Ljava/lang/reflect/Method;

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lyd;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lye;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lye;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lye;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    :catch_1
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3

    .prologue
    .line 179
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 185
    throw v1
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "LxC;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 192
    if-eqz p2, :cond_0

    .line 193
    sget-object v0, Lye;->a:Lyb;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Lyb;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lye;->b:Lyb;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lyb;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    sget-object v0, Lye;->d:Lyb;

    invoke-virtual {v0, p1}, Lyb;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    if-nez v0, :cond_1

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Lye;->a(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v4

    .line 204
    sget-object v1, Lye;->d:Lyb;

    invoke-virtual {v1, p1, v0}, Lyb;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 208
    sget-object v0, Lye;->c:Lyb;

    invoke-virtual {v0, p1}, Lyb;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    if-nez v0, :cond_0

    move-object v0, v1

    .line 218
    :goto_0
    return-object v0

    .line 213
    :cond_0
    sget-object v0, Lye;->c:Lyb;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 214
    invoke-virtual {v0, p1, v2}, Lyb;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 215
    if-eqz v0, :cond_1

    .line 216
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lyi;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 218
    goto :goto_0
.end method

.method public b(Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lye;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lye;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 240
    :catch_1
    move-exception v0

    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
