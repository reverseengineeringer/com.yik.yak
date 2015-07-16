.class public final enum LzR;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LzR;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LzR;

.field public static final enum b:LzR;

.field public static final enum c:LzR;

.field public static final enum d:LzR;

.field public static final enum e:LzR;

.field private static final synthetic f:[LzR;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, LzR;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v2}, LzR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzR;->a:LzR;

    new-instance v0, LzR;

    const-string v1, "DATETIME"

    invoke-direct {v0, v1, v3}, LzR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzR;->b:LzR;

    new-instance v0, LzR;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v4}, LzR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzR;->c:LzR;

    new-instance v0, LzR;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v5}, LzR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzR;->d:LzR;

    new-instance v0, LzR;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v6}, LzR;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzR;->e:LzR;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [LzR;

    sget-object v1, LzR;->a:LzR;

    aput-object v1, v0, v2

    sget-object v1, LzR;->b:LzR;

    aput-object v1, v0, v3

    sget-object v1, LzR;->c:LzR;

    aput-object v1, v0, v4

    sget-object v1, LzR;->d:LzR;

    aput-object v1, v0, v5

    sget-object v1, LzR;->e:LzR;

    aput-object v1, v0, v6

    sput-object v0, LzR;->f:[LzR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
