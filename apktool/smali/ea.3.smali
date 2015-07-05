.class public final enum Lea;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lqp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lea;",
        ">;",
        "Lqp;"
    }
.end annotation


# static fields
.field public static final enum a:Lea;

.field public static final enum b:Lea;

.field public static final enum c:Lea;

.field private static d:Lqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqq",
            "<",
            "Lea;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lea;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5642
    new-instance v0, Lea;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v4, v4, v2}, Lea;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lea;->a:Lea;

    .line 5646
    new-instance v0, Lea;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2, v2, v3}, Lea;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lea;->b:Lea;

    .line 5650
    new-instance v0, Lea;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3, v3, v5}, Lea;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lea;->c:Lea;

    .line 5637
    new-array v0, v5, [Lea;

    sget-object v1, Lea;->a:Lea;

    aput-object v1, v0, v4

    sget-object v1, Lea;->b:Lea;

    aput-object v1, v0, v2

    sget-object v1, Lea;->c:Lea;

    aput-object v1, v0, v3

    sput-object v0, Lea;->f:[Lea;

    .line 5683
    new-instance v0, Leb;

    invoke-direct {v0}, Leb;-><init>()V

    sput-object v0, Lea;->d:Lqq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 5692
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5693
    iput p4, p0, Lea;->e:I

    .line 5694
    return-void
.end method

.method public static a(I)Lea;
    .locals 1

    .prologue
    .line 5670
    packed-switch p0, :pswitch_data_0

    .line 5674
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5671
    :pswitch_0
    sget-object v0, Lea;->a:Lea;

    goto :goto_0

    .line 5672
    :pswitch_1
    sget-object v0, Lea;->b:Lea;

    goto :goto_0

    .line 5673
    :pswitch_2
    sget-object v0, Lea;->c:Lea;

    goto :goto_0

    .line 5670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 5667
    iget v0, p0, Lea;->e:I

    return v0
.end method
