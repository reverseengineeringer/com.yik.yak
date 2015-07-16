.class public final enum LFn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFn;

.field public static final enum b:LFn;

.field private static final synthetic c:[LFn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-instance v0, LFn;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v2}, LFn;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFn;->a:LFn;

    .line 194
    new-instance v0, LFn;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v3}, LFn;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFn;->b:LFn;

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [LFn;

    sget-object v1, LFn;->a:LFn;

    aput-object v1, v0, v2

    sget-object v1, LFn;->b:LFn;

    aput-object v1, v0, v3

    sput-object v0, LFn;->c:[LFn;

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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[LFn;
    .locals 1

    .prologue
    .line 192
    sget-object v0, LFn;->c:[LFn;

    invoke-virtual {v0}, [LFn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFn;

    return-object v0
.end method
