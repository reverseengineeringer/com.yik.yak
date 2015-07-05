.class public enum Lth;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lth;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lth;

.field public static final enum b:Lth;

.field public static final enum c:Lth;

.field private static final synthetic d:[Lth;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lti;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lti;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth;->a:Lth;

    .line 98
    new-instance v0, Ltj;

    const-string v1, "MULTIPLE_CHOICE"

    invoke-direct {v0, v1, v3}, Ltj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth;->b:Lth;

    .line 104
    new-instance v0, Ltk;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Ltk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lth;->c:Lth;

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Lth;

    sget-object v1, Lth;->a:Lth;

    aput-object v1, v0, v2

    sget-object v1, Lth;->b:Lth;

    aput-object v1, v0, v3

    sget-object v1, Lth;->c:Lth;

    aput-object v1, v0, v4

    sput-object v0, Lth;->d:[Lth;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILtf;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lth;-><init>(Ljava/lang/String;I)V

    return-void
.end method
