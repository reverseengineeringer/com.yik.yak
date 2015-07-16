.class public final enum LwD;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LwD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LwD;

.field public static final enum b:LwD;

.field private static final synthetic d:[LwD;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, LwD;

    const-string v1, "TOP"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, LwD;-><init>(Ljava/lang/String;II)V

    sput-object v0, LwD;->a:LwD;

    new-instance v0, LwD;

    const-string v1, "BOTTOM"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v4, v2}, LwD;-><init>(Ljava/lang/String;II)V

    sput-object v0, LwD;->b:LwD;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [LwD;

    sget-object v1, LwD;->a:LwD;

    aput-object v1, v0, v3

    sget-object v1, LwD;->b:LwD;

    aput-object v1, v0, v4

    sput-object v0, LwD;->d:[LwD;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, LwD;->c:I

    .line 66
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, LwD;->c:I

    return v0
.end method
