.class final enum LbH;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LbH;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LbH;

.field public static final enum b:LbH;

.field public static final enum c:LbH;

.field public static final enum d:LbH;

.field public static final enum e:LbH;

.field public static final enum f:LbH;

.field public static final enum g:LbH;

.field public static final enum h:LbH;

.field public static final enum i:LbH;

.field public static final enum j:LbH;

.field public static final enum k:LbH;

.field private static final synthetic l:[LbH;


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
    new-instance v0, LbH;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->a:LbH;

    .line 15
    new-instance v0, LbH;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->b:LbH;

    .line 16
    new-instance v0, LbH;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->c:LbH;

    .line 17
    new-instance v0, LbH;

    const-string v1, "SAVE_INSTANCE_STATE"

    invoke-direct {v0, v1, v6}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->d:LbH;

    .line 18
    new-instance v0, LbH;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->e:LbH;

    .line 19
    new-instance v0, LbH;

    const-string v1, "STOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->f:LbH;

    .line 20
    new-instance v0, LbH;

    const-string v1, "DESTROY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->g:LbH;

    .line 21
    new-instance v0, LbH;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->h:LbH;

    .line 22
    new-instance v0, LbH;

    const-string v1, "CRASH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->i:LbH;

    .line 23
    new-instance v0, LbH;

    const-string v1, "INSTALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->j:LbH;

    .line 24
    new-instance v0, LbH;

    const-string v1, "CUSTOM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LbH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LbH;->k:LbH;

    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [LbH;

    sget-object v1, LbH;->a:LbH;

    aput-object v1, v0, v3

    sget-object v1, LbH;->b:LbH;

    aput-object v1, v0, v4

    sget-object v1, LbH;->c:LbH;

    aput-object v1, v0, v5

    sget-object v1, LbH;->d:LbH;

    aput-object v1, v0, v6

    sget-object v1, LbH;->e:LbH;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LbH;->f:LbH;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LbH;->g:LbH;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LbH;->h:LbH;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LbH;->i:LbH;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LbH;->j:LbH;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LbH;->k:LbH;

    aput-object v2, v0, v1

    sput-object v0, LbH;->l:[LbH;

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
