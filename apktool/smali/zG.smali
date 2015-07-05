.class public final enum LzG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LzG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LzG;

.field public static final enum b:LzG;

.field public static final enum c:LzG;

.field public static final enum d:LzG;

.field public static final enum e:LzG;

.field private static final synthetic f:[LzG;


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
    new-instance v0, LzG;

    const-string v1, "AUTOINCREMENT"

    invoke-direct {v0, v1, v2}, LzG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzG;->a:LzG;

    new-instance v0, LzG;

    const-string v1, "DISTINCT"

    invoke-direct {v0, v1, v3}, LzG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzG;->b:LzG;

    new-instance v0, LzG;

    const-string v1, "PRIMARY_KEY"

    invoke-direct {v0, v1, v4}, LzG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzG;->c:LzG;

    new-instance v0, LzG;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1, v5}, LzG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzG;->d:LzG;

    new-instance v0, LzG;

    const-string v1, "UNIQUE"

    invoke-direct {v0, v1, v6}, LzG;-><init>(Ljava/lang/String;I)V

    sput-object v0, LzG;->e:LzG;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [LzG;

    sget-object v1, LzG;->a:LzG;

    aput-object v1, v0, v2

    sget-object v1, LzG;->b:LzG;

    aput-object v1, v0, v3

    sget-object v1, LzG;->c:LzG;

    aput-object v1, v0, v4

    sget-object v1, LzG;->d:LzG;

    aput-object v1, v0, v5

    sget-object v1, LzG;->e:LzG;

    aput-object v1, v0, v6

    sput-object v0, LzG;->f:[LzG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LzG;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, LzG;->f:[LzG;

    array-length v1, v0

    new-array v2, v1, [LzG;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
