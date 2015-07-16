.class public final enum Lew;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lqs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lew;",
        ">;",
        "Lqs;"
    }
.end annotation


# static fields
.field public static final enum a:Lew;

.field public static final enum b:Lew;

.field public static final enum c:Lew;

.field public static final enum d:Lew;

.field public static final enum e:Lew;

.field public static final enum f:Lew;

.field public static final enum g:Lew;

.field public static final enum h:Lew;

.field private static i:Lqt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqt",
            "<",
            "Lew;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[Lew;


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
    new-instance v0, Lew;

    const-string v1, "STRING"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->a:Lew;

    .line 386
    new-instance v0, Lew;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v5, v5, v6}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->b:Lew;

    .line 390
    new-instance v0, Lew;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v6, v6, v7}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->c:Lew;

    .line 394
    new-instance v0, Lew;

    const-string v1, "MACRO_REFERENCE"

    invoke-direct {v0, v1, v7, v7, v8}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->d:Lew;

    .line 398
    new-instance v0, Lew;

    const-string v1, "FUNCTION_ID"

    invoke-direct {v0, v1, v8, v8, v9}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->e:Lew;

    .line 402
    new-instance v0, Lew;

    const-string v1, "INTEGER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->f:Lew;

    .line 406
    new-instance v0, Lew;

    const-string v1, "TEMPLATE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->g:Lew;

    .line 410
    new-instance v0, Lew;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lew;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lew;->h:Lew;

    .line 377
    const/16 v0, 0x8

    new-array v0, v0, [Lew;

    const/4 v1, 0x0

    sget-object v2, Lew;->a:Lew;

    aput-object v2, v0, v1

    sget-object v1, Lew;->b:Lew;

    aput-object v1, v0, v5

    sget-object v1, Lew;->c:Lew;

    aput-object v1, v0, v6

    sget-object v1, Lew;->d:Lew;

    aput-object v1, v0, v7

    sget-object v1, Lew;->e:Lew;

    aput-object v1, v0, v8

    sget-object v1, Lew;->f:Lew;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lew;->g:Lew;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lew;->h:Lew;

    aput-object v2, v0, v1

    sput-object v0, Lew;->k:[Lew;

    .line 468
    new-instance v0, Lex;

    invoke-direct {v0}, Lex;-><init>()V

    sput-object v0, Lew;->i:Lqt;

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
    iput p4, p0, Lew;->j:I

    .line 479
    return-void
.end method

.method public static a(I)Lew;
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
    sget-object v0, Lew;->a:Lew;

    goto :goto_0

    .line 452
    :pswitch_1
    sget-object v0, Lew;->b:Lew;

    goto :goto_0

    .line 453
    :pswitch_2
    sget-object v0, Lew;->c:Lew;

    goto :goto_0

    .line 454
    :pswitch_3
    sget-object v0, Lew;->d:Lew;

    goto :goto_0

    .line 455
    :pswitch_4
    sget-object v0, Lew;->e:Lew;

    goto :goto_0

    .line 456
    :pswitch_5
    sget-object v0, Lew;->f:Lew;

    goto :goto_0

    .line 457
    :pswitch_6
    sget-object v0, Lew;->g:Lew;

    goto :goto_0

    .line 458
    :pswitch_7
    sget-object v0, Lew;->h:Lew;

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
    iget v0, p0, Lew;->j:I

    return v0
.end method
