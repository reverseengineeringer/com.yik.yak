.class final enum LbD;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LbD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LbD;

.field public static final enum b:LbD;

.field public static final enum c:LbD;

.field public static final enum d:LbD;

.field public static final enum e:LbD;

.field public static final enum f:LbD;

.field public static final enum g:LbD;

.field public static final enum h:LbD;

.field public static final enum i:LbD;

.field public static final enum j:LbD;

.field public static final enum k:LbD;

.field private static final synthetic l:[LbD;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, LbD;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->a:LbD;

    .line 15
    new-instance v0, LbD;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->b:LbD;

    .line 16
    new-instance v0, LbD;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->c:LbD;

    .line 17
    new-instance v0, LbD;

    const-string v1, "SAVE_INSTANCE_STATE"

    invoke-direct {v0, v1, v6}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->d:LbD;

    .line 18
    new-instance v0, LbD;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->e:LbD;

    .line 19
    new-instance v0, LbD;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->f:LbD;

    .line 20
    new-instance v0, LbD;

    const-string v1, "DESTROY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->g:LbD;

    .line 21
    new-instance v0, LbD;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->h:LbD;

    .line 22
    new-instance v0, LbD;

    const-string v1, "CRASH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->i:LbD;

    .line 23
    new-instance v0, LbD;

    const-string v1, "INSTALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->j:LbD;

    .line 24
    new-instance v0, LbD;

    const-string v1, "CUSTOM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LbD;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbD;->k:LbD;

    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [LbD;

    sget-object v1, LbD;->a:LbD;

    aput-object v1, v0, v3

    sget-object v1, LbD;->b:LbD;

    aput-object v1, v0, v4

    sget-object v1, LbD;->c:LbD;

    aput-object v1, v0, v5

    sget-object v1, LbD;->d:LbD;

    aput-object v1, v0, v6

    sget-object v1, LbD;->e:LbD;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LbD;->f:LbD;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LbD;->g:LbD;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LbD;->h:LbD;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LbD;->i:LbD;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LbD;->j:LbD;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LbD;->k:LbD;

    aput-object v2, v0, v1

    sput-object v0, LbD;->l:[LbD;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
