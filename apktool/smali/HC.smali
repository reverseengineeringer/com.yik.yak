.class public final enum LHC;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LHC;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LHC;

.field public static final enum b:LHC;

.field public static final enum c:LHC;

.field public static final enum d:LHC;

.field private static final synthetic f:[LHC;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10
    new-instance v0, LHC;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v5, v2}, LHC;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHC;->a:LHC;

    new-instance v0, LHC;

    const-string v1, "USER_SIDELOAD"

    invoke-direct {v0, v1, v2, v3}, LHC;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHC;->b:LHC;

    new-instance v0, LHC;

    const-string v1, "TEST_DISTRIBUTION"

    invoke-direct {v0, v1, v3, v4}, LHC;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHC;->c:LHC;

    new-instance v0, LHC;

    const-string v1, "APP_STORE"

    invoke-direct {v0, v1, v4, v6}, LHC;-><init>(Ljava/lang/String;II)V

    sput-object v0, LHC;->d:LHC;

    .line 8
    new-array v0, v6, [LHC;

    sget-object v1, LHC;->a:LHC;

    aput-object v1, v0, v5

    sget-object v1, LHC;->b:LHC;

    aput-object v1, v0, v2

    sget-object v1, LHC;->c:LHC;

    aput-object v1, v0, v3

    sget-object v1, LHC;->d:LHC;

    aput-object v1, v0, v4

    sput-object v0, LHC;->f:[LHC;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, LHC;->e:I

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;)LHC;
    .locals 1

    .prologue
    .line 34
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, LHC;->c:LHC;

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    sget-object v0, LHC;->d:LHC;

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, LHC;->a:LHC;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, LHC;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget v0, p0, LHC;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
