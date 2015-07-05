.class public final enum LFo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFo;

.field public static final enum b:LFo;

.field public static final enum c:LFo;

.field public static final enum d:LFo;

.field public static final enum e:LFo;

.field public static final enum f:LFo;

.field public static final enum g:LFo;

.field public static final enum h:LFo;

.field private static final synthetic j:[LFo;


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
    new-instance v0, LFo;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->a:LFo;

    .line 194
    new-instance v0, LFo;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5, v4}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->b:LFo;

    .line 195
    new-instance v0, LFo;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v6, v5}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->c:LFo;

    .line 196
    new-instance v0, LFo;

    const-string v1, "BANNED"

    invoke-direct {v0, v1, v7, v6}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->d:LFo;

    .line 197
    new-instance v0, LFo;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v8, v7}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->e:LFo;

    .line 198
    new-instance v0, LFo;

    const-string v1, "SPONSORED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->f:LFo;

    .line 199
    new-instance v0, LFo;

    const-string v1, "LINK"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->g:LFo;

    .line 200
    new-instance v0, LFo;

    const-string v1, "IMAGE"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, LFo;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFo;->h:LFo;

    .line 192
    const/16 v0, 0x8

    new-array v0, v0, [LFo;

    sget-object v1, LFo;->a:LFo;

    aput-object v1, v0, v4

    sget-object v1, LFo;->b:LFo;

    aput-object v1, v0, v5

    sget-object v1, LFo;->c:LFo;

    aput-object v1, v0, v6

    sget-object v1, LFo;->d:LFo;

    aput-object v1, v0, v7

    sget-object v1, LFo;->e:LFo;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LFo;->f:LFo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LFo;->g:LFo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LFo;->h:LFo;

    aput-object v2, v0, v1

    sput-object v0, LFo;->j:[LFo;

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
    iput p3, p0, LFo;->i:I

    .line 206
    return-void
.end method

.method public static a(I)LFo;
    .locals 5

    .prologue
    .line 209
    invoke-static {}, LFo;->a()[LFo;

    move-result-object v2

    .line 211
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 212
    iget v4, v0, LFo;->i:I

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
    sget-object v0, LFo;->a:LFo;

    goto :goto_1
.end method

.method public static a()[LFo;
    .locals 1

    .prologue
    .line 192
    sget-object v0, LFo;->j:[LFo;

    invoke-virtual {v0}, [LFo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFo;

    return-object v0
.end method
