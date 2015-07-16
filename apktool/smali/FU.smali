.class public final enum LFU;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFU;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFU;

.field public static final enum b:LFU;

.field public static final enum c:LFU;

.field public static final enum d:LFU;

.field public static final enum e:LFU;

.field public static final enum f:LFU;

.field public static final enum g:LFU;

.field public static final enum h:LFU;

.field private static final synthetic j:[LFU;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    new-instance v0, LFU;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->a:LFU;

    .line 194
    new-instance v0, LFU;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5, v4}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->b:LFU;

    .line 195
    new-instance v0, LFU;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v6, v5}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->c:LFU;

    .line 196
    new-instance v0, LFU;

    const-string v1, "BANNED"

    invoke-direct {v0, v1, v7, v6}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->d:LFU;

    .line 197
    new-instance v0, LFU;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v8, v7}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->e:LFU;

    .line 198
    new-instance v0, LFU;

    const-string v1, "SPONSORED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->f:LFU;

    .line 199
    new-instance v0, LFU;

    const-string v1, "LINK"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->g:LFU;

    .line 200
    new-instance v0, LFU;

    const-string v1, "IMAGE"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, LFU;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFU;->h:LFU;

    .line 192
    const/16 v0, 0x8

    new-array v0, v0, [LFU;

    sget-object v1, LFU;->a:LFU;

    aput-object v1, v0, v4

    sget-object v1, LFU;->b:LFU;

    aput-object v1, v0, v5

    sget-object v1, LFU;->c:LFU;

    aput-object v1, v0, v6

    sget-object v1, LFU;->d:LFU;

    aput-object v1, v0, v7

    sget-object v1, LFU;->e:LFU;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LFU;->f:LFU;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LFU;->g:LFU;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LFU;->h:LFU;

    aput-object v2, v0, v1

    sput-object v0, LFU;->j:[LFU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 205
    iput p3, p0, LFU;->i:I

    .line 206
    return-void
.end method

.method public static a(I)LFU;
    .locals 5

    .prologue
    .line 209
    invoke-static {}, LFU;->a()[LFU;

    move-result-object v2

    .line 211
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 212
    iget v4, v0, LFU;->i:I

    if-ne v4, p0, :cond_0

    .line 217
    :goto_1
    return-object v0

    .line 211
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, LFU;->a:LFU;

    goto :goto_1
.end method

.method public static a()[LFU;
    .locals 1

    .prologue
    .line 192
    sget-object v0, LFU;->j:[LFU;

    invoke-virtual {v0}, [LFU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFU;

    return-object v0
.end method
