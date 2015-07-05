.class public final enum LeA;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lqp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LeA;",
        ">;",
        "Lqp;"
    }
.end annotation


# static fields
.field public static final enum a:LeA;

.field public static final enum b:LeA;

.field public static final enum c:LeA;

.field public static final enum d:LeA;

.field public static final enum e:LeA;

.field public static final enum f:LeA;

.field public static final enum g:LeA;

.field public static final enum h:LeA;

.field private static i:Lqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqq",
            "<",
            "LeA;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[LeA;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 382
    new-instance v0, LeA;

    const-string v1, "STRING"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->a:LeA;

    .line 386
    new-instance v0, LeA;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v5, v5, v6}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->b:LeA;

    .line 390
    new-instance v0, LeA;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v6, v6, v7}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->c:LeA;

    .line 394
    new-instance v0, LeA;

    const-string v1, "MACRO_REFERENCE"

    invoke-direct {v0, v1, v7, v7, v8}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->d:LeA;

    .line 398
    new-instance v0, LeA;

    const-string v1, "FUNCTION_ID"

    invoke-direct {v0, v1, v8, v8, v9}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->e:LeA;

    .line 402
    new-instance v0, LeA;

    const-string v1, "INTEGER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->f:LeA;

    .line 406
    new-instance v0, LeA;

    const-string v1, "TEMPLATE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->g:LeA;

    .line 410
    new-instance v0, LeA;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, LeA;-><init>(Ljava/lang/String;III)V

    sput-object v0, LeA;->h:LeA;

    .line 377
    const/16 v0, 0x8

    new-array v0, v0, [LeA;

    const/4 v1, 0x0

    sget-object v2, LeA;->a:LeA;

    aput-object v2, v0, v1

    sget-object v1, LeA;->b:LeA;

    aput-object v1, v0, v5

    sget-object v1, LeA;->c:LeA;

    aput-object v1, v0, v6

    sget-object v1, LeA;->d:LeA;

    aput-object v1, v0, v7

    sget-object v1, LeA;->e:LeA;

    aput-object v1, v0, v8

    sget-object v1, LeA;->f:LeA;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, LeA;->g:LeA;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LeA;->h:LeA;

    aput-object v2, v0, v1

    sput-object v0, LeA;->k:[LeA;

    .line 468
    new-instance v0, LeB;

    invoke-direct {v0}, LeB;-><init>()V

    sput-object v0, LeA;->i:Lqq;

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
    .line 477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 478
    iput p4, p0, LeA;->j:I

    .line 479
    return-void
.end method

.method public static a(I)LeA;
    .locals 1

    .prologue
    .line 450
    packed-switch p0, :pswitch_data_0

    .line 459
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 451
    :pswitch_0
    sget-object v0, LeA;->a:LeA;

    goto :goto_0

    .line 452
    :pswitch_1
    sget-object v0, LeA;->b:LeA;

    goto :goto_0

    .line 453
    :pswitch_2
    sget-object v0, LeA;->c:LeA;

    goto :goto_0

    .line 454
    :pswitch_3
    sget-object v0, LeA;->d:LeA;

    goto :goto_0

    .line 455
    :pswitch_4
    sget-object v0, LeA;->e:LeA;

    goto :goto_0

    .line 456
    :pswitch_5
    sget-object v0, LeA;->f:LeA;

    goto :goto_0

    .line 457
    :pswitch_6
    sget-object v0, LeA;->g:LeA;

    goto :goto_0

    .line 458
    :pswitch_7
    sget-object v0, LeA;->h:LeA;

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, LeA;->j:I

    return v0
.end method
