.class public final enum LHe;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LHe;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LHe;

.field public static final enum b:LHe;

.field private static final synthetic c:[LHe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, LHe;

    const-string v1, "VotingDirectionUp"

    invoke-direct {v0, v1, v2}, LHe;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHe;->a:LHe;

    new-instance v0, LHe;

    const-string v1, "VotingDirectionDown"

    invoke-direct {v0, v1, v3}, LHe;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHe;->b:LHe;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [LHe;

    sget-object v1, LHe;->a:LHe;

    aput-object v1, v0, v2

    sget-object v1, LHe;->b:LHe;

    aput-object v1, v0, v3

    sput-object v0, LHe;->c:[LHe;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
