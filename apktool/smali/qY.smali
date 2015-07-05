.class public enum LqY;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LqY;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LqY;

.field public static final enum b:LqY;

.field public static final enum c:LqY;

.field public static final enum d:LqY;

.field public static final enum e:LqY;

.field public static final enum f:LqY;

.field public static final enum g:LqY;

.field public static final enum h:LqY;

.field public static final enum i:LqY;

.field public static final enum j:LqY;

.field public static final enum k:LqY;

.field public static final enum l:LqY;

.field public static final enum m:LqY;

.field public static final enum n:LqY;

.field public static final enum o:LqY;

.field public static final enum p:LqY;

.field public static final enum q:LqY;

.field public static final enum r:LqY;

.field private static final synthetic u:[LqY;


# instance fields
.field private final s:Lrd;

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
    new-instance v0, LqY;

    const-string v1, "DOUBLE"

    sget-object v2, Lrd;->d:Lrd;

    invoke-direct {v0, v1, v4, v2, v5}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->a:LqY;

    .line 81
    new-instance v0, LqY;

    const-string v1, "FLOAT"

    sget-object v2, Lrd;->c:Lrd;

    invoke-direct {v0, v1, v5, v2, v7}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->b:LqY;

    .line 82
    new-instance v0, LqY;

    const-string v1, "INT64"

    sget-object v2, Lrd;->b:Lrd;

    invoke-direct {v0, v1, v6, v2, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->c:LqY;

    .line 83
    new-instance v0, LqY;

    const-string v1, "UINT64"

    sget-object v2, Lrd;->b:Lrd;

    invoke-direct {v0, v1, v8, v2, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->d:LqY;

    .line 84
    new-instance v0, LqY;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lrd;->a:Lrd;

    invoke-direct {v0, v1, v2, v3, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->e:LqY;

    .line 85
    new-instance v0, LqY;

    const-string v1, "FIXED64"

    sget-object v2, Lrd;->b:Lrd;

    invoke-direct {v0, v1, v7, v2, v5}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->f:LqY;

    .line 86
    new-instance v0, LqY;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lrd;->a:Lrd;

    invoke-direct {v0, v1, v2, v3, v7}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->g:LqY;

    .line 87
    new-instance v0, LqY;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lrd;->e:Lrd;

    invoke-direct {v0, v1, v2, v3, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->h:LqY;

    .line 88
    new-instance v0, LqZ;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lrd;->f:Lrd;

    invoke-direct {v0, v1, v2, v3, v6}, LqZ;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->i:LqY;

    .line 91
    new-instance v0, Lra;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lrd;->i:Lrd;

    invoke-direct {v0, v1, v2, v3, v8}, Lra;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->j:LqY;

    .line 94
    new-instance v0, Lrb;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lrd;->i:Lrd;

    invoke-direct {v0, v1, v2, v3, v6}, Lrb;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->k:LqY;

    .line 97
    new-instance v0, Lrc;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lrd;->g:Lrd;

    invoke-direct {v0, v1, v2, v3, v6}, Lrc;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->l:LqY;

    .line 100
    new-instance v0, LqY;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lrd;->a:Lrd;

    invoke-direct {v0, v1, v2, v3, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->m:LqY;

    .line 101
    new-instance v0, LqY;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lrd;->h:Lrd;

    invoke-direct {v0, v1, v2, v3, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->n:LqY;

    .line 102
    new-instance v0, LqY;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lrd;->a:Lrd;

    invoke-direct {v0, v1, v2, v3, v7}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->o:LqY;

    .line 103
    new-instance v0, LqY;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lrd;->b:Lrd;

    invoke-direct {v0, v1, v2, v3, v5}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->p:LqY;

    .line 104
    new-instance v0, LqY;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lrd;->a:Lrd;

    invoke-direct {v0, v1, v2, v3, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->q:LqY;

    .line 105
    new-instance v0, LqY;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lrd;->b:Lrd;

    invoke-direct {v0, v1, v2, v3, v4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    sput-object v0, LqY;->r:LqY;

    .line 79
    const/16 v0, 0x12

    new-array v0, v0, [LqY;

    sget-object v1, LqY;->a:LqY;

    aput-object v1, v0, v4

    sget-object v1, LqY;->b:LqY;

    aput-object v1, v0, v5

    sget-object v1, LqY;->c:LqY;

    aput-object v1, v0, v6

    sget-object v1, LqY;->d:LqY;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, LqY;->e:LqY;

    aput-object v2, v0, v1

    sget-object v1, LqY;->f:LqY;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, LqY;->g:LqY;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LqY;->h:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LqY;->i:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LqY;->j:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, LqY;->k:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, LqY;->l:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, LqY;->m:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, LqY;->n:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, LqY;->o:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, LqY;->p:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, LqY;->q:LqY;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, LqY;->r:LqY;

    aput-object v2, v0, v1

    sput-object v0, LqY;->u:[LqY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILrd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, LqY;->s:Lrd;

    .line 109
    iput p4, p0, LqY;->t:I

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILrd;ILqX;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, LqY;-><init>(Ljava/lang/String;ILrd;I)V

    return-void
.end method

.method public static a()[LqY;
    .locals 1

    .prologue
    .line 79
    sget-object v0, LqY;->u:[LqY;

    invoke-virtual {v0}, [LqY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LqY;

    return-object v0
.end method


# virtual methods
.method public b()Lrd;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, LqY;->s:Lrd;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, LqY;->t:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
