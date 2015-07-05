.class public final enum Lxs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lxs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lxs;

.field public static final enum b:Lxs;

.field public static final enum c:Lxs;

.field public static final enum d:Lxs;

.field private static final synthetic f:[Lxs;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lxs;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lxs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lxs;->a:Lxs;

    .line 45
    new-instance v0, Lxs;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lxs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lxs;->b:Lxs;

    .line 57
    new-instance v0, Lxs;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lxs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lxs;->c:Lxs;

    .line 76
    new-instance v0, Lxs;

    const-string v1, "HTTP_2"

    const-string v2, "h2-16"

    invoke-direct {v0, v1, v6, v2}, Lxs;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lxs;->d:Lxs;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lxs;

    sget-object v1, Lxs;->a:Lxs;

    aput-object v1, v0, v3

    sget-object v1, Lxs;->b:Lxs;

    aput-object v1, v0, v4

    sget-object v1, Lxs;->c:Lxs;

    aput-object v1, v0, v5

    sget-object v1, Lxs;->d:Lxs;

    aput-object v1, v0, v6

    sput-object v0, Lxs;->f:[Lxs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lxs;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;)Lxs;
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lxs;->a:Lxs;

    iget-object v0, v0, Lxs;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lxs;->a:Lxs;

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    sget-object v0, Lxs;->b:Lxs;

    iget-object v0, v0, Lxs;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lxs;->b:Lxs;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lxs;->d:Lxs;

    iget-object v0, v0, Lxs;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lxs;->d:Lxs;

    goto :goto_0

    .line 93
    :cond_2
    sget-object v0, Lxs;->c:Lxs;

    iget-object v0, v0, Lxs;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lxs;->c:Lxs;

    goto :goto_0

    .line 94
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lxs;->e:Ljava/lang/String;

    return-object v0
.end method
