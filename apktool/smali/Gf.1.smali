.class public final enum LGf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LGf;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LGf;

.field public static final enum b:LGf;

.field public static final enum c:LGf;

.field private static final synthetic e:[LGf;


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
    new-instance v0, LGf;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, LGf;-><init>(Ljava/lang/String;I)V

    sput-object v0, LGf;->a:LGf;

    .line 256
    new-instance v0, LGf;

    const-string v1, "NEW_YAK"

    const v2, 0x7f020109

    invoke-direct {v0, v1, v4, v2}, LGf;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGf;->b:LGf;

    .line 257
    new-instance v0, LGf;

    const-string v1, "PEEK"

    const v2, 0x7f02010a

    invoke-direct {v0, v1, v5, v2}, LGf;-><init>(Ljava/lang/String;II)V

    sput-object v0, LGf;->c:LGf;

    .line 254
    const/4 v0, 0x3

    new-array v0, v0, [LGf;

    sget-object v1, LGf;->a:LGf;

    aput-object v1, v0, v3

    sget-object v1, LGf;->b:LGf;

    aput-object v1, v0, v4

    sget-object v1, LGf;->c:LGf;

    aput-object v1, v0, v5

    sput-object v0, LGf;->e:[LGf;

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

    invoke-direct {p0, p1, p2, v0}, LGf;-><init>(Ljava/lang/String;II)V

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
    iput p3, p0, LGf;->d:I

    .line 267
    return-void
.end method

.method public static a()[LGf;
    .locals 1

    .prologue
    .line 254
    sget-object v0, LGf;->e:[LGf;

    invoke-virtual {v0}, [LGf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGf;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, LGf;->d:I

    return v0
.end method
