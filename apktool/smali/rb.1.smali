.class public enum Lrb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lrb;

.field public static final enum b:Lrb;

.field public static final enum c:Lrb;

.field public static final enum d:Lrb;

.field public static final enum e:Lrb;

.field public static final enum f:Lrb;

.field public static final enum g:Lrb;

.field public static final enum h:Lrb;

.field public static final enum i:Lrb;

.field public static final enum j:Lrb;

.field public static final enum k:Lrb;

.field public static final enum l:Lrb;

.field public static final enum m:Lrb;

.field public static final enum n:Lrb;

.field public static final enum o:Lrb;

.field public static final enum p:Lrb;

.field public static final enum q:Lrb;

.field public static final enum r:Lrb;

.field private static final synthetic u:[Lrb;


# instance fields
.field private final s:Lrg;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    new-instance v0, Lrb;

    const-string v1, "DOUBLE"

    sget-object v2, Lrg;->d:Lrg;

    invoke-direct {v0, v1, v4, v2, v5}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->a:Lrb;

    .line 81
    new-instance v0, Lrb;

    const-string v1, "FLOAT"

    sget-object v2, Lrg;->c:Lrg;

    invoke-direct {v0, v1, v5, v2, v7}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->b:Lrb;

    .line 82
    new-instance v0, Lrb;

    const-string v1, "INT64"

    sget-object v2, Lrg;->b:Lrg;

    invoke-direct {v0, v1, v6, v2, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->c:Lrb;

    .line 83
    new-instance v0, Lrb;

    const-string v1, "UINT64"

    sget-object v2, Lrg;->b:Lrg;

    invoke-direct {v0, v1, v8, v2, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->d:Lrb;

    .line 84
    new-instance v0, Lrb;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lrg;->a:Lrg;

    invoke-direct {v0, v1, v2, v3, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->e:Lrb;

    .line 85
    new-instance v0, Lrb;

    const-string v1, "FIXED64"

    sget-object v2, Lrg;->b:Lrg;

    invoke-direct {v0, v1, v7, v2, v5}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->f:Lrb;

    .line 86
    new-instance v0, Lrb;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lrg;->a:Lrg;

    invoke-direct {v0, v1, v2, v3, v7}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->g:Lrb;

    .line 87
    new-instance v0, Lrb;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lrg;->e:Lrg;

    invoke-direct {v0, v1, v2, v3, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->h:Lrb;

    .line 88
    new-instance v0, Lrc;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lrg;->f:Lrg;

    invoke-direct {v0, v1, v2, v3, v6}, Lrc;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->i:Lrb;

    .line 91
    new-instance v0, Lrd;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lrg;->i:Lrg;

    invoke-direct {v0, v1, v2, v3, v8}, Lrd;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->j:Lrb;

    .line 94
    new-instance v0, Lre;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lrg;->i:Lrg;

    invoke-direct {v0, v1, v2, v3, v6}, Lre;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->k:Lrb;

    .line 97
    new-instance v0, Lrf;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lrg;->g:Lrg;

    invoke-direct {v0, v1, v2, v3, v6}, Lrf;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->l:Lrb;

    .line 100
    new-instance v0, Lrb;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lrg;->a:Lrg;

    invoke-direct {v0, v1, v2, v3, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->m:Lrb;

    .line 101
    new-instance v0, Lrb;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lrg;->h:Lrg;

    invoke-direct {v0, v1, v2, v3, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->n:Lrb;

    .line 102
    new-instance v0, Lrb;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lrg;->a:Lrg;

    invoke-direct {v0, v1, v2, v3, v7}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->o:Lrb;

    .line 103
    new-instance v0, Lrb;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lrg;->b:Lrg;

    invoke-direct {v0, v1, v2, v3, v5}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->p:Lrb;

    .line 104
    new-instance v0, Lrb;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lrg;->a:Lrg;

    invoke-direct {v0, v1, v2, v3, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->q:Lrb;

    .line 105
    new-instance v0, Lrb;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lrg;->b:Lrg;

    invoke-direct {v0, v1, v2, v3, v4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    sput-object v0, Lrb;->r:Lrb;

    .line 79
    const/16 v0, 0x12

    new-array v0, v0, [Lrb;

    sget-object v1, Lrb;->a:Lrb;

    aput-object v1, v0, v4

    sget-object v1, Lrb;->b:Lrb;

    aput-object v1, v0, v5

    sget-object v1, Lrb;->c:Lrb;

    aput-object v1, v0, v6

    sget-object v1, Lrb;->d:Lrb;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lrb;->e:Lrb;

    aput-object v2, v0, v1

    sget-object v1, Lrb;->f:Lrb;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lrb;->g:Lrb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lrb;->h:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lrb;->i:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lrb;->j:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lrb;->k:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lrb;->l:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lrb;->m:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lrb;->n:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lrb;->o:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lrb;->p:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lrb;->q:Lrb;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lrb;->r:Lrb;

    aput-object v2, v0, v1

    sput-object v0, Lrb;->u:[Lrb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILrg;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrg;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lrb;->s:Lrg;

    .line 109
    iput p4, p0, Lrb;->t:I

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILrg;ILra;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lrb;-><init>(Ljava/lang/String;ILrg;I)V

    return-void
.end method

.method public static a()[Lrb;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lrb;->u:[Lrb;

    invoke-virtual {v0}, [Lrb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrb;

    return-object v0
.end method


# virtual methods
.method public b()Lrg;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lrb;->s:Lrg;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lrb;->t:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
