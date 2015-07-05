.class public final LKa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, LKa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LKa;->a:Ljava/util/logging/Logger;

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

.method public static a(LKk;)LJS;
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
    new-instance v0, LKe;

    invoke-direct {v0, p0}, LKe;-><init>(LKk;)V

    return-object v0
.end method

.method public static a(LKl;)LJT;
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
    new-instance v0, LKg;

    invoke-direct {v0, p0}, LKg;-><init>(LKl;)V

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;)LKk;
    .locals 1

    .prologue
    .line 64
    new-instance v0, LKm;

    invoke-direct {v0}, LKm;-><init>()V

    invoke-static {p0, v0}, LKa;->a(Ljava/io/OutputStream;LKm;)LKk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;LKm;)LKk;
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
    new-instance v0, LKb;

    invoke-direct {v0, p1, p0}, LKb;-><init>(LKm;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)LKk;
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
    invoke-static {p0}, LKa;->c(Ljava/net/Socket;)LJK;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, LKa;->a(Ljava/io/OutputStream;LKm;)LKk;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, LJK;->a(LKk;)LKk;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)LKl;
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

    invoke-static {v0}, LKa;->a(Ljava/io/InputStream;)LKl;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)LKl;
    .locals 1

    .prologue
    .line 123
    new-instance v0, LKm;

    invoke-direct {v0}, LKm;-><init>()V

    invoke-static {p0, v0}, LKa;->a(Ljava/io/InputStream;LKm;)LKl;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;LKm;)LKl;
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
    new-instance v0, LKc;

    invoke-direct {v0, p1, p0}, LKc;-><init>(LKm;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, LKa;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static b(Ljava/io/File;)LKk;
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

    invoke-static {v0}, LKa;->a(Ljava/io/OutputStream;)LKk;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)LKl;
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
    invoke-static {p0}, LKa;->c(Ljava/net/Socket;)LJK;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, LKa;->a(Ljava/io/InputStream;LKm;)LKl;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, LJK;->a(LKl;)LKl;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)LJK;
    .locals 1

    .prologue
    .line 202
    new-instance v0, LKd;

    invoke-direct {v0, p0}, LKd;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)LKk;
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

    invoke-static {v0}, LKa;->a(Ljava/io/OutputStream;)LKk;

    move-result-object v0

    return-object v0
.end method
