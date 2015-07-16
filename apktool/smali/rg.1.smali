.class public final enum Lrg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrg;

.field public static final enum b:Lrg;

.field public static final enum c:Lrg;

.field public static final enum d:Lrg;

.field public static final enum e:Lrg;

.field public static final enum f:Lrg;

.field public static final enum g:Lrg;

.field public static final enum h:Lrg;

.field public static final enum i:Lrg;

.field private static final synthetic k:[Lrg;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-instance v0, Lrg;

    const-string v1, "INT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->a:Lrg;

    .line 51
    new-instance v0, Lrg;

    const-string v1, "LONG"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->b:Lrg;

    .line 52
    new-instance v0, Lrg;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->c:Lrg;

    .line 53
    new-instance v0, Lrg;

    const-string v1, "DOUBLE"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->d:Lrg;

    .line 54
    new-instance v0, Lrg;

    const-string v1, "BOOLEAN"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->e:Lrg;

    .line 55
    new-instance v0, Lrg;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->f:Lrg;

    .line 56
    new-instance v0, Lrg;

    const-string v1, "BYTE_STRING"

    const/4 v2, 0x6

    sget-object v3, LpW;->a:LpW;

    invoke-direct {v0, v1, v2, v3}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->g:Lrg;

    .line 57
    new-instance v0, Lrg;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->h:Lrg;

    .line 58
    new-instance v0, Lrg;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lrg;->i:Lrg;

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [Lrg;

    sget-object v1, Lrg;->a:Lrg;

    aput-object v1, v0, v4

    sget-object v1, Lrg;->b:Lrg;

    aput-object v1, v0, v5

    sget-object v1, Lrg;->c:Lrg;

    aput-object v1, v0, v6

    sget-object v1, Lrg;->d:Lrg;

    aput-object v1, v0, v7

    sget-object v1, Lrg;->e:Lrg;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lrg;->f:Lrg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lrg;->g:Lrg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lrg;->h:Lrg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lrg;->i:Lrg;

    aput-object v2, v0, v1

    sput-object v0, Lrg;->k:[Lrg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lrg;->j:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static a()[Lrg;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lrg;->k:[Lrg;

    invoke-virtual {v0}, [Lrg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrg;

    return-object v0
.end method
