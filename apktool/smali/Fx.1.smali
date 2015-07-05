.class public final enum LFx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LFx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LFx;

.field public static final enum b:LFx;

.field public static final enum c:LFx;

.field private static final synthetic e:[LFx;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v0, LFx;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, LFx;-><init>(Ljava/lang/String;I)V

    sput-object v0, LFx;->a:LFx;

    .line 256
    new-instance v0, LFx;

    const-string v1, "NEW_YAK"

    const v2, 0x7f020107

    invoke-direct {v0, v1, v4, v2}, LFx;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFx;->b:LFx;

    .line 257
    new-instance v0, LFx;

    const-string v1, "PEEK"

    const v2, 0x7f020108

    invoke-direct {v0, v1, v5, v2}, LFx;-><init>(Ljava/lang/String;II)V

    sput-object v0, LFx;->c:LFx;

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [LFx;

    sget-object v1, LFx;->a:LFx;

    aput-object v1, v0, v3

    sget-object v1, LFx;->b:LFx;

    aput-object v1, v0, v4

    sget-object v1, LFx;->c:LFx;

    aput-object v1, v0, v5

    sput-object v0, LFx;->e:[LFx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LFx;-><init>(Ljava/lang/String;II)V

    .line 263
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
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, LFx;->d:I

    .line 267
    return-void
.end method

.method public static a()[LFx;
    .locals 1

    .prologue
    .line 254
    sget-object v0, LFx;->e:[LFx;

    invoke-virtual {v0}, [LFx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LFx;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, LFx;->d:I

    return v0
.end method
