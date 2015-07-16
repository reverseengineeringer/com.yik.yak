.class public final LKI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, LKI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LKI;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(LKS;)LKA;
    .locals 2

    .prologue
    .line 58
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, LKM;

    invoke-direct {v0, p0}, LKM;-><init>(LKS;)V

    return-object v0
.end method

.method public static a(LKT;)LKB;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, LKO;

    invoke-direct {v0, p0}, LKO;-><init>(LKT;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)LKS;
    .locals 1

    .prologue
    .line 64
    new-instance v0, LKU;

    invoke-direct {v0}, LKU;-><init>()V

    invoke-static {p0, v0}, LKI;->a(Ljava/io/OutputStream;LKU;)LKS;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;LKU;)LKS;
    .locals 2

    .prologue
    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, LKJ;

    invoke-direct {v0, p1, p0}, LKJ;-><init>(LKU;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)LKS;
    .locals 2

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, LKI;->c(Ljava/net/Socket;)LKs;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, LKI;->a(Ljava/io/OutputStream;LKU;)LKS;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, LKs;->a(LKS;)LKS;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)LKT;
    .locals 2

    .prologue
    .line 159
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, LKI;->a(Ljava/io/InputStream;)LKT;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)LKT;
    .locals 1

    .prologue
    .line 123
    new-instance v0, LKU;

    invoke-direct {v0}, LKU;-><init>()V

    invoke-static {p0, v0}, LKI;->a(Ljava/io/InputStream;LKU;)LKT;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;LKU;)LKT;
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, LKK;

    invoke-direct {v0, p1, p0}, LKK;-><init>(LKU;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LKI;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static b(Ljava/io/File;)LKS;
    .locals 2

    .prologue
    .line 172
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, LKI;->a(Ljava/io/OutputStream;)LKS;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)LKT;
    .locals 2

    .prologue
    .line 195
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-static {p0}, LKI;->c(Ljava/net/Socket;)LKs;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, LKI;->a(Ljava/io/InputStream;LKU;)LKT;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, LKs;->a(LKT;)LKT;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/io/File;)LKS;
    .locals 2

    .prologue
    .line 178
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, LKI;->a(Ljava/io/OutputStream;)LKS;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)LKs;
    .locals 1

    .prologue
    .line 202
    new-instance v0, LKL;

    invoke-direct {v0, p0}, LKL;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
