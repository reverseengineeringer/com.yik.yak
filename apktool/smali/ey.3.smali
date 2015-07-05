.class public final enum Ley;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lqp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ley;",
        ">;",
        "Lqp;"
    }
.end annotation


# static fields
.field public static final enum a:Ley;

.field public static final enum b:Ley;

.field public static final enum c:Ley;

.field public static final enum d:Ley;

.field public static final enum e:Ley;

.field public static final enum f:Ley;

.field public static final enum g:Ley;

.field public static final enum h:Ley;

.field public static final enum i:Ley;

.field public static final enum j:Ley;

.field public static final enum k:Ley;

.field public static final enum l:Ley;

.field public static final enum m:Ley;

.field public static final enum n:Ley;

.field public static final enum o:Ley;

.field public static final enum p:Ley;

.field public static final enum q:Ley;

.field private static r:Lqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqq",
            "<",
            "Ley;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic t:[Ley;


# instance fields
.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 492
    new-instance v0, Ley;

    const-string v1, "ESCAPE_HTML"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->a:Ley;

    .line 496
    new-instance v0, Ley;

    const-string v1, "ESCAPE_HTML_RCDATA"

    invoke-direct {v0, v1, v5, v5, v6}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->b:Ley;

    .line 500
    new-instance v0, Ley;

    const-string v1, "ESCAPE_HTML_ATTRIBUTE"

    invoke-direct {v0, v1, v6, v6, v7}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->c:Ley;

    .line 504
    new-instance v0, Ley;

    const-string v1, "ESCAPE_HTML_ATTRIBUTE_NOSPACE"

    invoke-direct {v0, v1, v7, v7, v8}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->d:Ley;

    .line 508
    new-instance v0, Ley;

    const-string v1, "FILTER_HTML_ELEMENT_NAME"

    invoke-direct {v0, v1, v8, v8, v9}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->e:Ley;

    .line 512
    new-instance v0, Ley;

    const-string v1, "FILTER_HTML_ATTRIBUTES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->f:Ley;

    .line 516
    new-instance v0, Ley;

    const-string v1, "ESCAPE_JS_STRING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->g:Ley;

    .line 520
    new-instance v0, Ley;

    const-string v1, "ESCAPE_JS_VALUE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->h:Ley;

    .line 524
    new-instance v0, Ley;

    const-string v1, "ESCAPE_JS_REGEX"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->i:Ley;

    .line 528
    new-instance v0, Ley;

    const-string v1, "ESCAPE_CSS_STRING"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->j:Ley;

    .line 532
    new-instance v0, Ley;

    const-string v1, "FILTER_CSS_VALUE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->k:Ley;

    .line 536
    new-instance v0, Ley;

    const-string v1, "ESCAPE_URI"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->l:Ley;

    .line 540
    new-instance v0, Ley;

    const-string v1, "NORMALIZE_URI"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->m:Ley;

    .line 544
    new-instance v0, Ley;

    const-string v1, "FILTER_NORMALIZE_URI"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->n:Ley;

    .line 548
    new-instance v0, Ley;

    const-string v1, "NO_AUTOESCAPE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->o:Ley;

    .line 552
    new-instance v0, Ley;

    const-string v1, "TEXT"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->p:Ley;

    .line 556
    new-instance v0, Ley;

    const-string v1, "CONVERT_JS_VALUE_TO_EXPRESSION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Ley;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ley;->q:Ley;

    .line 487
    const/16 v0, 0x11

    new-array v0, v0, [Ley;

    const/4 v1, 0x0

    sget-object v2, Ley;->a:Ley;

    aput-object v2, v0, v1

    sget-object v1, Ley;->b:Ley;

    aput-object v1, v0, v5

    sget-object v1, Ley;->c:Ley;

    aput-object v1, v0, v6

    sget-object v1, Ley;->d:Ley;

    aput-object v1, v0, v7

    sget-object v1, Ley;->e:Ley;

    aput-object v1, v0, v8

    sget-object v1, Ley;->f:Ley;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Ley;->g:Ley;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ley;->h:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ley;->i:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ley;->j:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ley;->k:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ley;->l:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ley;->m:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Ley;->n:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Ley;->o:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Ley;->p:Ley;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Ley;->q:Ley;

    aput-object v2, v0, v1

    sput-object v0, Ley;->t:[Ley;

    .line 659
    new-instance v0, Lez;

    invoke-direct {v0}, Lez;-><init>()V

    sput-object v0, Ley;->r:Lqq;

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
    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 669
    iput p4, p0, Ley;->s:I

    .line 670
    return-void
.end method

.method public static a(I)Ley;
    .locals 1

    .prologue
    .line 632
    packed-switch p0, :pswitch_data_0

    .line 650
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 633
    :pswitch_0
    sget-object v0, Ley;->a:Ley;

    goto :goto_0

    .line 634
    :pswitch_1
    sget-object v0, Ley;->b:Ley;

    goto :goto_0

    .line 635
    :pswitch_2
    sget-object v0, Ley;->c:Ley;

    goto :goto_0

    .line 636
    :pswitch_3
    sget-object v0, Ley;->d:Ley;

    goto :goto_0

    .line 637
    :pswitch_4
    sget-object v0, Ley;->e:Ley;

    goto :goto_0

    .line 638
    :pswitch_5
    sget-object v0, Ley;->f:Ley;

    goto :goto_0

    .line 639
    :pswitch_6
    sget-object v0, Ley;->g:Ley;

    goto :goto_0

    .line 640
    :pswitch_7
    sget-object v0, Ley;->h:Ley;

    goto :goto_0

    .line 641
    :pswitch_8
    sget-object v0, Ley;->i:Ley;

    goto :goto_0

    .line 642
    :pswitch_9
    sget-object v0, Ley;->j:Ley;

    goto :goto_0

    .line 643
    :pswitch_a
    sget-object v0, Ley;->k:Ley;

    goto :goto_0

    .line 644
    :pswitch_b
    sget-object v0, Ley;->l:Ley;

    goto :goto_0

    .line 645
    :pswitch_c
    sget-object v0, Ley;->m:Ley;

    goto :goto_0

    .line 646
    :pswitch_d
    sget-object v0, Ley;->n:Ley;

    goto :goto_0

    .line 647
    :pswitch_e
    sget-object v0, Ley;->o:Ley;

    goto :goto_0

    .line 648
    :pswitch_f
    sget-object v0, Ley;->p:Ley;

    goto :goto_0

    .line 649
    :pswitch_10
    sget-object v0, Ley;->q:Ley;

    goto :goto_0

    .line 632
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Ley;->s:I

    return v0
.end method
