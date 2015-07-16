.class public final enum Leu;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lqs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leu;",
        ">;",
        "Lqs;"
    }
.end annotation


# static fields
.field public static final enum a:Leu;

.field public static final enum b:Leu;

.field public static final enum c:Leu;

.field public static final enum d:Leu;

.field public static final enum e:Leu;

.field public static final enum f:Leu;

.field public static final enum g:Leu;

.field public static final enum h:Leu;

.field public static final enum i:Leu;

.field public static final enum j:Leu;

.field public static final enum k:Leu;

.field public static final enum l:Leu;

.field public static final enum m:Leu;

.field public static final enum n:Leu;

.field public static final enum o:Leu;

.field public static final enum p:Leu;

.field public static final enum q:Leu;

.field private static r:Lqt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqt",
            "<",
            "Leu;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic t:[Leu;


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
    new-instance v0, Leu;

    const-string v1, "ESCAPE_HTML"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->a:Leu;

    .line 496
    new-instance v0, Leu;

    const-string v1, "ESCAPE_HTML_RCDATA"

    invoke-direct {v0, v1, v5, v5, v6}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->b:Leu;

    .line 500
    new-instance v0, Leu;

    const-string v1, "ESCAPE_HTML_ATTRIBUTE"

    invoke-direct {v0, v1, v6, v6, v7}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->c:Leu;

    .line 504
    new-instance v0, Leu;

    const-string v1, "ESCAPE_HTML_ATTRIBUTE_NOSPACE"

    invoke-direct {v0, v1, v7, v7, v8}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->d:Leu;

    .line 508
    new-instance v0, Leu;

    const-string v1, "FILTER_HTML_ELEMENT_NAME"

    invoke-direct {v0, v1, v8, v8, v9}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->e:Leu;

    .line 512
    new-instance v0, Leu;

    const-string v1, "FILTER_HTML_ATTRIBUTES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->f:Leu;

    .line 516
    new-instance v0, Leu;

    const-string v1, "ESCAPE_JS_STRING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->g:Leu;

    .line 520
    new-instance v0, Leu;

    const-string v1, "ESCAPE_JS_VALUE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->h:Leu;

    .line 524
    new-instance v0, Leu;

    const-string v1, "ESCAPE_JS_REGEX"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->i:Leu;

    .line 528
    new-instance v0, Leu;

    const-string v1, "ESCAPE_CSS_STRING"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->j:Leu;

    .line 532
    new-instance v0, Leu;

    const-string v1, "FILTER_CSS_VALUE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->k:Leu;

    .line 536
    new-instance v0, Leu;

    const-string v1, "ESCAPE_URI"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->l:Leu;

    .line 540
    new-instance v0, Leu;

    const-string v1, "NORMALIZE_URI"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->m:Leu;

    .line 544
    new-instance v0, Leu;

    const-string v1, "FILTER_NORMALIZE_URI"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->n:Leu;

    .line 548
    new-instance v0, Leu;

    const-string v1, "NO_AUTOESCAPE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->o:Leu;

    .line 552
    new-instance v0, Leu;

    const-string v1, "TEXT"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->p:Leu;

    .line 556
    new-instance v0, Leu;

    const-string v1, "CONVERT_JS_VALUE_TO_EXPRESSION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Leu;-><init>(Ljava/lang/String;III)V

    sput-object v0, Leu;->q:Leu;

    .line 487
    const/16 v0, 0x11

    new-array v0, v0, [Leu;

    const/4 v1, 0x0

    sget-object v2, Leu;->a:Leu;

    aput-object v2, v0, v1

    sget-object v1, Leu;->b:Leu;

    aput-object v1, v0, v5

    sget-object v1, Leu;->c:Leu;

    aput-object v1, v0, v6

    sget-object v1, Leu;->d:Leu;

    aput-object v1, v0, v7

    sget-object v1, Leu;->e:Leu;

    aput-object v1, v0, v8

    sget-object v1, Leu;->f:Leu;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Leu;->g:Leu;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Leu;->h:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Leu;->i:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Leu;->j:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Leu;->k:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Leu;->l:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Leu;->m:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Leu;->n:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Leu;->o:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Leu;->p:Leu;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Leu;->q:Leu;

    aput-object v2, v0, v1

    sput-object v0, Leu;->t:[Leu;

    .line 659
    new-instance v0, Lev;

    invoke-direct {v0}, Lev;-><init>()V

    sput-object v0, Leu;->r:Lqt;

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
    iput p4, p0, Leu;->s:I

    .line 670
    return-void
.end method

.method public static a(I)Leu;
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
    sget-object v0, Leu;->a:Leu;

    goto :goto_0

    .line 634
    :pswitch_1
    sget-object v0, Leu;->b:Leu;

    goto :goto_0

    .line 635
    :pswitch_2
    sget-object v0, Leu;->c:Leu;

    goto :goto_0

    .line 636
    :pswitch_3
    sget-object v0, Leu;->d:Leu;

    goto :goto_0

    .line 637
    :pswitch_4
    sget-object v0, Leu;->e:Leu;

    goto :goto_0

    .line 638
    :pswitch_5
    sget-object v0, Leu;->f:Leu;

    goto :goto_0

    .line 639
    :pswitch_6
    sget-object v0, Leu;->g:Leu;

    goto :goto_0

    .line 640
    :pswitch_7
    sget-object v0, Leu;->h:Leu;

    goto :goto_0

    .line 641
    :pswitch_8
    sget-object v0, Leu;->i:Leu;

    goto :goto_0

    .line 642
    :pswitch_9
    sget-object v0, Leu;->j:Leu;

    goto :goto_0

    .line 643
    :pswitch_a
    sget-object v0, Leu;->k:Leu;

    goto :goto_0

    .line 644
    :pswitch_b
    sget-object v0, Leu;->l:Leu;

    goto :goto_0

    .line 645
    :pswitch_c
    sget-object v0, Leu;->m:Leu;

    goto :goto_0

    .line 646
    :pswitch_d
    sget-object v0, Leu;->n:Leu;

    goto :goto_0

    .line 647
    :pswitch_e
    sget-object v0, Leu;->o:Leu;

    goto :goto_0

    .line 648
    :pswitch_f
    sget-object v0, Leu;->p:Leu;

    goto :goto_0

    .line 649
    :pswitch_10
    sget-object v0, Leu;->q:Leu;

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
    iget v0, p0, Leu;->s:I

    return v0
.end method
