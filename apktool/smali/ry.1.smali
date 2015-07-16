.class public final enum Lry;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lry;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lry;

.field public static final enum b:Lry;

.field private static final synthetic c:[Lry;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lry;

    const-string v1, "MATCHED"

    invoke-direct {v0, v1, v2}, Lry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lry;->a:Lry;

    .line 38
    new-instance v0, Lry;

    const-string v1, "NOT_MATCHED"

    invoke-direct {v0, v1, v3}, Lry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lry;->b:Lry;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lry;

    sget-object v1, Lry;->a:Lry;

    aput-object v1, v0, v2

    sget-object v1, Lry;->b:Lry;

    aput-object v1, v0, v3

    sput-object v0, Lry;->c:[Lry;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
