.class public enum Ltl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltl;

.field public static final enum b:Ltl;

.field public static final enum c:Ltl;

.field private static final synthetic d:[Ltl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Ltm;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Ltm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltl;->a:Ltl;

    .line 101
    new-instance v0, Ltn;

    const-string v1, "MULTIPLE_CHOICE"

    invoke-direct {v0, v1, v3}, Ltn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltl;->b:Ltl;

    .line 107
    new-instance v0, Lto;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltl;->c:Ltl;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ltl;

    sget-object v1, Ltl;->a:Ltl;

    aput-object v1, v0, v2

    sget-object v1, Ltl;->b:Ltl;

    aput-object v1, v0, v3

    sget-object v1, Ltl;->c:Ltl;

    aput-object v1, v0, v4

    sput-object v0, Ltl;->d:[Ltl;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILtj;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ltl;-><init>(Ljava/lang/String;I)V

    return-void
.end method
