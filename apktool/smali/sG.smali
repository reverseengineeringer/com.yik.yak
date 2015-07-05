.class public final enum LsG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LsG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LsG;

.field public static final enum b:LsG;

.field private static final synthetic d:[LsG;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, LsG;

    const-string v1, "EVENTS"

    const-string v2, "events"

    invoke-direct {v0, v1, v3, v2}, LsG;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LsG;->a:LsG;

    .line 29
    new-instance v0, LsG;

    const-string v1, "PEOPLE"

    const-string v2, "people"

    invoke-direct {v0, v1, v4, v2}, LsG;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LsG;->b:LsG;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [LsG;

    sget-object v1, LsG;->a:LsG;

    aput-object v1, v0, v3

    sget-object v1, LsG;->b:LsG;

    aput-object v1, v0, v4

    sput-object v0, LsG;->d:[LsG;

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
    iput-object p3, p0, LsG;->c:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LsG;->c:Ljava/lang/String;

    return-object v0
.end method
