.class public final enum LsJ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LsJ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LsJ;

.field public static final enum b:LsJ;

.field private static final synthetic d:[LsJ;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, LsJ;

    const-string v1, "EVENTS"

    const-string v2, "events"

    invoke-direct {v0, v1, v3, v2}, LsJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LsJ;->a:LsJ;

    .line 29
    new-instance v0, LsJ;

    const-string v1, "PEOPLE"

    const-string v2, "people"

    invoke-direct {v0, v1, v4, v2}, LsJ;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LsJ;->b:LsJ;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [LsJ;

    sget-object v1, LsJ;->a:LsJ;

    aput-object v1, v0, v3

    sget-object v1, LsJ;->b:LsJ;

    aput-object v1, v0, v4

    sput-object v0, LsJ;->d:[LsJ;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, LsJ;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LsJ;->c:Ljava/lang/String;

    return-object v0
.end method
