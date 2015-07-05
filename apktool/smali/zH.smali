.class public final enum LzH;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LzH;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LzH;

.field public static final enum b:LzH;

.field public static final enum c:LzH;

.field public static final enum d:LzH;

.field public static final enum e:LzH;

.field private static final synthetic f:[LzH;


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
    new-instance v0, LzH;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v2}, LzH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzH;->a:LzH;

    new-instance v0, LzH;

    const-string v1, "DATETIME"

    invoke-direct {v0, v1, v3}, LzH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzH;->b:LzH;

    new-instance v0, LzH;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v4}, LzH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzH;->c:LzH;

    new-instance v0, LzH;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v5}, LzH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzH;->d:LzH;

    new-instance v0, LzH;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v6}, LzH;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzH;->e:LzH;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [LzH;

    sget-object v1, LzH;->a:LzH;

    aput-object v1, v0, v2

    sget-object v1, LzH;->b:LzH;

    aput-object v1, v0, v3

    sget-object v1, LzH;->c:LzH;

    aput-object v1, v0, v4

    sget-object v1, LzH;->d:LzH;

    aput-object v1, v0, v5

    sget-object v1, LzH;->e:LzH;

    aput-object v1, v0, v6

    sput-object v0, LzH;->f:[LzH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
