.class public final enum LEZ;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LEZ;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LEZ;

.field public static final enum b:LEZ;

.field public static final enum c:LEZ;

.field private static final synthetic d:[LEZ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    new-instance v0, LEZ;

    const-string v1, "Notifications"

    invoke-direct {v0, v1, v2}, LEZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEZ;->a:LEZ;

    new-instance v0, LEZ;

    const-string v1, "MyStuff"

    invoke-direct {v0, v1, v3}, LEZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEZ;->b:LEZ;

    new-instance v0, LEZ;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v4}, LEZ;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEZ;->c:LEZ;

    const/4 v0, 0x3

    new-array v0, v0, [LEZ;

    sget-object v1, LEZ;->a:LEZ;

    aput-object v1, v0, v2

    sget-object v1, LEZ;->b:LEZ;

    aput-object v1, v0, v3

    sget-object v1, LEZ;->c:LEZ;

    aput-object v1, v0, v4

    sput-object v0, LEZ;->d:[LEZ;

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
    .line 475
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
