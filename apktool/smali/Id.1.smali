.class public final enum LId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LId;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LId;

.field public static final enum b:LId;

.field public static final enum c:LId;

.field private static final synthetic d:[LId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, LId;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, LId;-><init>(Ljava/lang/String;I)V

    sput-object v0, LId;->a:LId;

    .line 267
    new-instance v0, LId;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, LId;-><init>(Ljava/lang/String;I)V

    sput-object v0, LId;->b:LId;

    .line 271
    new-instance v0, LId;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, LId;-><init>(Ljava/lang/String;I)V

    sput-object v0, LId;->c:LId;

    .line 259
    const/4 v0, 0x3

    new-array v0, v0, [LId;

    sget-object v1, LId;->a:LId;

    aput-object v1, v0, v2

    sget-object v1, LId;->b:LId;

    aput-object v1, v0, v3

    sget-object v1, LId;->c:LId;

    aput-object v1, v0, v4

    sput-object v0, LId;->d:[LId;

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
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LId;
    .locals 1

    .prologue
    .line 259
    sget-object v0, LId;->d:[LId;

    invoke-virtual {v0}, [LId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LId;

    return-object v0
.end method
