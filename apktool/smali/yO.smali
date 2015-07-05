.class public final enum LyO;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LyO;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LyO;

.field public static final enum b:LyO;

.field public static final enum c:LyO;

.field public static final enum d:LyO;

.field private static final synthetic e:[LyO;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, LyO;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, LyO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LyO;->a:LyO;

    .line 20
    new-instance v0, LyO;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, LyO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LyO;->b:LyO;

    .line 21
    new-instance v0, LyO;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, LyO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LyO;->c:LyO;

    .line 22
    new-instance v0, LyO;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, LyO;-><init>(Ljava/lang/String;I)V

    sput-object v0, LyO;->d:LyO;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [LyO;

    sget-object v1, LyO;->a:LyO;

    aput-object v1, v0, v2

    sget-object v1, LyO;->b:LyO;

    aput-object v1, v0, v3

    sget-object v1, LyO;->c:LyO;

    aput-object v1, v0, v4

    sget-object v1, LyO;->d:LyO;

    aput-object v1, v0, v5

    sput-object v0, LyO;->e:[LyO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, LyO;->b:LyO;

    if-eq p0, v0, :cond_0

    sget-object v0, LyO;->c:LyO;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, LyO;->a:LyO;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, LyO;->c:LyO;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 47
    sget-object v0, LyO;->b:LyO;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
