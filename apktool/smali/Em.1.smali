.class public final enum LEm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LEm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LEm;

.field public static final enum b:LEm;

.field public static final enum c:LEm;

.field private static final synthetic d:[LEm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 461
    new-instance v0, LEm;

    const-string v1, "Notifications"

    invoke-direct {v0, v1, v2}, LEm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEm;->a:LEm;

    new-instance v0, LEm;

    const-string v1, "MyStuff"

    invoke-direct {v0, v1, v3}, LEm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEm;->b:LEm;

    new-instance v0, LEm;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v4}, LEm;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEm;->c:LEm;

    const/4 v0, 0x3

    new-array v0, v0, [LEm;

    sget-object v1, LEm;->a:LEm;

    aput-object v1, v0, v2

    sget-object v1, LEm;->b:LEm;

    aput-object v1, v0, v3

    sget-object v1, LEm;->c:LEm;

    aput-object v1, v0, v4

    sput-object v0, LEm;->d:[LEm;

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
    .line 461
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
