.class public final enum LwG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LwG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LwG;

.field public static final enum b:LwG;

.field private static final synthetic f:[LwG;


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v5, 0x1

    .line 8
    new-instance v0, LwG;

    const-string v1, "SINGLE_LINE"

    move v4, v3

    invoke-direct/range {v0 .. v5}, LwG;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, LwG;->a:LwG;

    .line 12
    new-instance v6, LwG;

    const-string v7, "MULTI_LINE"

    const/16 v10, 0x50

    move v8, v5

    move v9, v3

    invoke-direct/range {v6 .. v11}, LwG;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, LwG;->b:LwG;

    .line 3
    new-array v0, v11, [LwG;

    sget-object v1, LwG;->a:LwG;

    aput-object v1, v0, v2

    sget-object v1, LwG;->b:LwG;

    aput-object v1, v0, v5

    sput-object v0, LwG;->f:[LwG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, LwG;->c:I

    .line 20
    iput p4, p0, LwG;->d:I

    .line 21
    iput p5, p0, LwG;->e:I

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, LwG;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, LwG;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, LwG;->e:I

    return v0
.end method
