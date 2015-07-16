.class public final enum Lxh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lxh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lxh;

.field public static final enum B:Lxh;

.field public static final enum C:Lxh;

.field public static final enum D:Lxh;

.field public static final enum E:Lxh;

.field public static final enum F:Lxh;

.field public static final enum G:Lxh;

.field public static final enum H:Lxh;

.field public static final enum I:Lxh;

.field public static final enum J:Lxh;

.field public static final enum K:Lxh;

.field public static final enum L:Lxh;

.field public static final enum M:Lxh;

.field public static final enum N:Lxh;

.field public static final enum O:Lxh;

.field public static final enum P:Lxh;

.field public static final enum Q:Lxh;

.field public static final enum R:Lxh;

.field public static final enum S:Lxh;

.field public static final enum T:Lxh;

.field public static final enum U:Lxh;

.field public static final enum V:Lxh;

.field public static final enum W:Lxh;

.field public static final enum X:Lxh;

.field public static final enum Y:Lxh;

.field public static final enum Z:Lxh;

.field public static final enum a:Lxh;

.field public static final enum aA:Lxh;

.field public static final enum aB:Lxh;

.field public static final enum aC:Lxh;

.field public static final enum aD:Lxh;

.field public static final enum aE:Lxh;

.field public static final enum aF:Lxh;

.field public static final enum aG:Lxh;

.field public static final enum aH:Lxh;

.field public static final enum aI:Lxh;

.field public static final enum aJ:Lxh;

.field public static final enum aK:Lxh;

.field public static final enum aL:Lxh;

.field public static final enum aM:Lxh;

.field public static final enum aN:Lxh;

.field public static final enum aO:Lxh;

.field public static final enum aP:Lxh;

.field public static final enum aQ:Lxh;

.field public static final enum aR:Lxh;

.field private static final synthetic aT:[Lxh;

.field public static final enum aa:Lxh;

.field public static final enum ab:Lxh;

.field public static final enum ac:Lxh;

.field public static final enum ad:Lxh;

.field public static final enum ae:Lxh;

.field public static final enum af:Lxh;

.field public static final enum ag:Lxh;

.field public static final enum ah:Lxh;

.field public static final enum ai:Lxh;

.field public static final enum aj:Lxh;

.field public static final enum ak:Lxh;

.field public static final enum al:Lxh;

.field public static final enum am:Lxh;

.field public static final enum an:Lxh;

.field public static final enum ao:Lxh;

.field public static final enum ap:Lxh;

.field public static final enum aq:Lxh;

.field public static final enum ar:Lxh;

.field public static final enum as:Lxh;

.field public static final enum at:Lxh;

.field public static final enum au:Lxh;

.field public static final enum av:Lxh;

.field public static final enum aw:Lxh;

.field public static final enum ax:Lxh;

.field public static final enum ay:Lxh;

.field public static final enum az:Lxh;

.field public static final enum b:Lxh;

.field public static final enum c:Lxh;

.field public static final enum d:Lxh;

.field public static final enum e:Lxh;

.field public static final enum f:Lxh;

.field public static final enum g:Lxh;

.field public static final enum h:Lxh;

.field public static final enum i:Lxh;

.field public static final enum j:Lxh;

.field public static final enum k:Lxh;

.field public static final enum l:Lxh;

.field public static final enum m:Lxh;

.field public static final enum n:Lxh;

.field public static final enum o:Lxh;

.field public static final enum p:Lxh;

.field public static final enum q:Lxh;

.field public static final enum r:Lxh;

.field public static final enum s:Lxh;

.field public static final enum t:Lxh;

.field public static final enum u:Lxh;

.field public static final enum v:Lxh;

.field public static final enum w:Lxh;

.field public static final enum x:Lxh;

.field public static final enum y:Lxh;

.field public static final enum z:Lxh;


# instance fields
.field final aS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 36
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_NULL_MD5"

    const/4 v2, 0x0

    const-string v3, "SSL_RSA_WITH_NULL_MD5"

    const/4 v4, 0x1

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->a:Lxh;

    .line 37
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_NULL_SHA"

    const/4 v2, 0x1

    const-string v3, "SSL_RSA_WITH_NULL_SHA"

    const/4 v4, 0x2

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->b:Lxh;

    .line 38
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v2, 0x2

    const-string v3, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v4, 0x3

    const/16 v5, 0x10fa

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->c:Lxh;

    .line 39
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_RC4_128_MD5"

    const/4 v2, 0x3

    const-string v3, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v4, 0x4

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->d:Lxh;

    .line 40
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_RC4_128_SHA"

    const/4 v2, 0x4

    const-string v3, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v4, 0x5

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->e:Lxh;

    .line 43
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/4 v2, 0x5

    const-string v3, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x8

    const/16 v5, 0x10fa

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->f:Lxh;

    .line 44
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_DES_CBC_SHA"

    const/4 v2, 0x6

    const-string v3, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v4, 0x9

    const/16 v5, 0x155d

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->g:Lxh;

    .line 45
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    const/4 v2, 0x7

    const-string v3, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0xa

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->h:Lxh;

    .line 52
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0x8

    const-string v3, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x11

    const/16 v5, 0x10fa

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->i:Lxh;

    .line 53
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v2, 0x9

    const-string v3, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v4, 0x12

    const/16 v5, 0x155d

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->j:Lxh;

    .line 54
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0xa

    const-string v3, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x13

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->k:Lxh;

    .line 55
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0xb

    const-string v3, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x14

    const/16 v5, 0x10fa

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->l:Lxh;

    .line 56
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v2, 0xc

    const-string v3, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v4, 0x15

    const/16 v5, 0x155d

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->m:Lxh;

    .line 57
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0xd

    const-string v3, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x16

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->n:Lxh;

    .line 58
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v2, 0xe

    const-string v3, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v4, 0x17

    const/16 v5, 0x10fa

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->o:Lxh;

    .line 59
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_RC4_128_MD5"

    const/16 v2, 0xf

    const-string v3, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v4, 0x18

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->p:Lxh;

    .line 60
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v2, 0x10

    const-string v3, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v4, 0x19

    const/16 v5, 0x10fa

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->q:Lxh;

    .line 61
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_DES_CBC_SHA"

    const/16 v2, 0x11

    const-string v3, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v4, 0x1a

    const/16 v5, 0x155d

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->r:Lxh;

    .line 62
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x12

    const-string v3, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x1b

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->s:Lxh;

    .line 63
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v2, 0x13

    const-string v3, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v4, 0x1e

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->t:Lxh;

    .line 64
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x14

    const-string v3, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v4, 0x1f

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->u:Lxh;

    .line 65
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v2, 0x15

    const-string v3, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v4, 0x20

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->v:Lxh;

    .line 67
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v2, 0x16

    const-string v3, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v4, 0x22

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->w:Lxh;

    .line 68
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v2, 0x17

    const-string v3, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v4, 0x23

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->x:Lxh;

    .line 69
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v2, 0x18

    const-string v3, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v4, 0x24

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->y:Lxh;

    .line 71
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v2, 0x19

    const-string v3, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v4, 0x26

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->z:Lxh;

    .line 73
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v2, 0x1a

    const-string v3, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v4, 0x28

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->A:Lxh;

    .line 74
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v2, 0x1b

    const-string v3, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v4, 0x29

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->B:Lxh;

    .line 76
    new-instance v0, Lxh;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v2, 0x1c

    const-string v3, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v4, 0x2b

    const/16 v5, 0xa98

    const/4 v6, 0x6

    const v7, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->C:Lxh;

    .line 80
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x1d

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x2f

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->D:Lxh;

    .line 83
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x1e

    const-string v3, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x32

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->E:Lxh;

    .line 84
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x1f

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x33

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->F:Lxh;

    .line 85
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x20

    const-string v3, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v4, 0x34

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->G:Lxh;

    .line 86
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x21

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x35

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->H:Lxh;

    .line 89
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x22

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x38

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->I:Lxh;

    .line 90
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x23

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x39

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->J:Lxh;

    .line 91
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x24

    const-string v3, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v4, 0x3a

    const/16 v5, 0x147e

    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->K:Lxh;

    .line 92
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v2, 0x25

    const-string v3, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v4, 0x3b

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->L:Lxh;

    .line 93
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x26

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x3c

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->M:Lxh;

    .line 94
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x27

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x3d

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->N:Lxh;

    .line 97
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x28

    const-string v3, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x40

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->O:Lxh;

    .line 104
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x29

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x67

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->P:Lxh;

    .line 107
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x2a

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6a

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->Q:Lxh;

    .line 108
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x2b

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6b

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->R:Lxh;

    .line 109
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x2c

    const-string v3, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v4, 0x6c

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->S:Lxh;

    .line 110
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v2, 0x2d

    const-string v3, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v4, 0x6d

    const/16 v5, 0x147e

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->T:Lxh;

    .line 135
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x2e

    const-string v3, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x9c

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->U:Lxh;

    .line 136
    new-instance v0, Lxh;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x2f

    const-string v3, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x9d

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->V:Lxh;

    .line 137
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x30

    const-string v3, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0x9e

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->W:Lxh;

    .line 138
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x31

    const-string v3, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0x9f

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->X:Lxh;

    .line 141
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x32

    const-string v3, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0xa2

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->Y:Lxh;

    .line 142
    new-instance v0, Lxh;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x33

    const-string v3, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0xa3

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->Z:Lxh;

    .line 145
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x34

    const-string v3, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v4, 0xa6

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aa:Lxh;

    .line 146
    new-instance v0, Lxh;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x35

    const-string v3, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v4, 0xa7

    const/16 v5, 0x14a8

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ab:Lxh;

    .line 177
    new-instance v0, Lxh;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v2, 0x36

    const-string v3, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v4, 0xff

    const/16 v5, 0x1672

    const/4 v6, 0x6

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ac:Lxh;

    .line 178
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const/16 v2, 0x37

    const-string v3, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v4, 0xc001

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ad:Lxh;

    .line 179
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const/16 v2, 0x38

    const-string v3, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v4, 0xc002

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ae:Lxh;

    .line 180
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x39

    const-string v3, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v4, 0xc003

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->af:Lxh;

    .line 181
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x3a

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v4, 0xc004

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ag:Lxh;

    .line 182
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x3b

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v4, 0xc005

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ah:Lxh;

    .line 183
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const/16 v2, 0x3c

    const-string v3, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v4, 0xc006

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ai:Lxh;

    .line 184
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const/16 v2, 0x3d

    const-string v3, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v4, 0xc007

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aj:Lxh;

    .line 185
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x3e

    const-string v3, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v4, 0xc008

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ak:Lxh;

    .line 186
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x3f

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v4, 0xc009

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->al:Lxh;

    .line 187
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x40

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v4, 0xc00a

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->am:Lxh;

    .line 188
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const/16 v2, 0x41

    const-string v3, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v4, 0xc00b

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->an:Lxh;

    .line 189
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const/16 v2, 0x42

    const-string v3, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v4, 0xc00c

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ao:Lxh;

    .line 190
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x43

    const-string v3, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v4, 0xc00d

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ap:Lxh;

    .line 191
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x44

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v4, 0xc00e

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aq:Lxh;

    .line 192
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x45

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v4, 0xc00f

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ar:Lxh;

    .line 193
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const/16 v2, 0x46

    const-string v3, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v4, 0xc010

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->as:Lxh;

    .line 194
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const/16 v2, 0x47

    const-string v3, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v4, 0xc011

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->at:Lxh;

    .line 195
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x48

    const-string v3, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v4, 0xc012

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->au:Lxh;

    .line 196
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x49

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v4, 0xc013

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->av:Lxh;

    .line 197
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x4a

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v4, 0xc014

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aw:Lxh;

    .line 198
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    const/16 v2, 0x4b

    const-string v3, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v4, 0xc015

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ax:Lxh;

    .line 199
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const/16 v2, 0x4c

    const-string v3, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v4, 0xc016

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->ay:Lxh;

    .line 200
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v2, 0x4d

    const-string v3, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v4, 0xc017

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->az:Lxh;

    .line 201
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const/16 v2, 0x4e

    const-string v3, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v4, 0xc018

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aA:Lxh;

    .line 202
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const/16 v2, 0x4f

    const-string v3, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v4, 0xc019

    const/16 v5, 0x118c

    const/4 v6, 0x7

    const/16 v7, 0xe

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aB:Lxh;

    .line 212
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x50

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v4, 0xc023

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aC:Lxh;

    .line 213
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0x51

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v4, 0xc024

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aD:Lxh;

    .line 214
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x52

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v4, 0xc025

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aE:Lxh;

    .line 215
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0x53

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v4, 0xc026

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aF:Lxh;

    .line 216
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x54

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v4, 0xc027

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aG:Lxh;

    .line 217
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0x55

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v4, 0xc028

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aH:Lxh;

    .line 218
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v2, 0x56

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v4, 0xc029

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aI:Lxh;

    .line 219
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const/16 v2, 0x57

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v4, 0xc02a

    const/16 v5, 0x14a9

    const/4 v6, 0x7

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aJ:Lxh;

    .line 220
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x58

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v4, 0xc02b

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aK:Lxh;

    .line 221
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x59

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v4, 0xc02c

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aL:Lxh;

    .line 222
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x5a

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v4, 0xc02d

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aM:Lxh;

    .line 223
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x5b

    const-string v3, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v4, 0xc02e

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aN:Lxh;

    .line 224
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x5c

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v4, 0xc02f

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aO:Lxh;

    .line 225
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x5d

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v4, 0xc030

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aP:Lxh;

    .line 226
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v2, 0x5e

    const-string v3, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v4, 0xc031

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aQ:Lxh;

    .line 227
    new-instance v0, Lxh;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v2, 0x5f

    const-string v3, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v4, 0xc032

    const/16 v5, 0x14a9

    const/16 v6, 0x8

    const/16 v7, 0x15

    invoke-direct/range {v0 .. v7}, Lxh;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lxh;->aR:Lxh;

    .line 32
    const/16 v0, 0x60

    new-array v0, v0, [Lxh;

    const/4 v1, 0x0

    sget-object v2, Lxh;->a:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lxh;->b:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lxh;->c:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lxh;->d:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lxh;->e:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lxh;->f:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lxh;->g:Lxh;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lxh;->h:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lxh;->i:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lxh;->j:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lxh;->k:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lxh;->l:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lxh;->m:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lxh;->n:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lxh;->o:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lxh;->p:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lxh;->q:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lxh;->r:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lxh;->s:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lxh;->t:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lxh;->u:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lxh;->v:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lxh;->w:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lxh;->x:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lxh;->y:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lxh;->z:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lxh;->A:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lxh;->B:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lxh;->C:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lxh;->D:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lxh;->E:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lxh;->F:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lxh;->G:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lxh;->H:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lxh;->I:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lxh;->J:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lxh;->K:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lxh;->L:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lxh;->M:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lxh;->N:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lxh;->O:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lxh;->P:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lxh;->Q:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lxh;->R:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lxh;->S:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lxh;->T:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lxh;->U:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lxh;->V:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lxh;->W:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lxh;->X:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lxh;->Y:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lxh;->Z:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lxh;->aa:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lxh;->ab:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lxh;->ac:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lxh;->ad:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lxh;->ae:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lxh;->af:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lxh;->ag:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lxh;->ah:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lxh;->ai:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lxh;->aj:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lxh;->ak:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lxh;->al:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lxh;->am:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lxh;->an:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lxh;->ao:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lxh;->ap:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lxh;->aq:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lxh;->ar:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lxh;->as:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lxh;->at:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lxh;->au:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lxh;->av:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lxh;->aw:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lxh;->ax:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lxh;->ay:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lxh;->az:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lxh;->aA:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lxh;->aB:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lxh;->aC:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lxh;->aD:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lxh;->aE:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lxh;->aF:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lxh;->aG:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lxh;->aH:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lxh;->aI:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lxh;->aJ:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lxh;->aK:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lxh;->aL:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lxh;->aM:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lxh;->aN:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Lxh;->aO:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lxh;->aP:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Lxh;->aQ:Lxh;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lxh;->aR:Lxh;

    aput-object v2, v0, v1

    sput-object v0, Lxh;->aT:[Lxh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    iput-object p3, p0, Lxh;->aS:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public static a(Ljava/lang/String;)Lxh;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lxh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lxh;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lxh;
    .locals 2

    .prologue
    .line 371
    const-string v0, "SSL_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 372
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxh;->a(Ljava/lang/String;)Lxh;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lxh;->a(Ljava/lang/String;)Lxh;

    move-result-object v0

    goto :goto_0
.end method
