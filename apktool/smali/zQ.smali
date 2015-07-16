.class public final enum LzQ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LzQ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LzQ;

.field public static final enum b:LzQ;

.field public static final enum c:LzQ;

.field public static final enum d:LzQ;

.field public static final enum e:LzQ;

.field private static final synthetic f:[LzQ;


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
    new-instance v0, LzQ;

    const-string v1, "AUTOINCREMENT"

    invoke-direct {v0, v1, v2}, LzQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzQ;->a:LzQ;

    new-instance v0, LzQ;

    const-string v1, "DISTINCT"

    invoke-direct {v0, v1, v3}, LzQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzQ;->b:LzQ;

    new-instance v0, LzQ;

    const-string v1, "PRIMARY_KEY"

    invoke-direct {v0, v1, v4}, LzQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzQ;->c:LzQ;

    new-instance v0, LzQ;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, LzQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzQ;->d:LzQ;

    new-instance v0, LzQ;

    const-string v1, "UNIQUE"

    invoke-direct {v0, v1, v6}, LzQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzQ;->e:LzQ;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [LzQ;

    sget-object v1, LzQ;->a:LzQ;

    aput-object v1, v0, v2

    sget-object v1, LzQ;->b:LzQ;

    aput-object v1, v0, v3

    sget-object v1, LzQ;->c:LzQ;

    aput-object v1, v0, v4

    sget-object v1, LzQ;->d:LzQ;

    aput-object v1, v0, v5

    sget-object v1, LzQ;->e:LzQ;

    aput-object v1, v0, v6

    sput-object v0, LzQ;->f:[LzQ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LzQ;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, LzQ;->f:[LzQ;

    array-length v1, v0

    new-array v2, v1, [LzQ;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
