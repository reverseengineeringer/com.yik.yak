.class final enum LHy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LHy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LHy;

.field public static final enum b:LHy;

.field public static final enum c:LHy;

.field public static final enum d:LHy;

.field public static final enum e:LHy;

.field public static final enum f:LHy;

.field public static final enum g:LHy;

.field public static final enum h:LHy;

.field public static final enum i:LHy;

.field public static final enum j:LHy;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LHy;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[LHy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 159
    new-instance v0, LHy;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->a:LHy;

    .line 160
    new-instance v0, LHy;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->b:LHy;

    .line 161
    new-instance v0, LHy;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->c:LHy;

    .line 162
    new-instance v0, LHy;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->d:LHy;

    .line 163
    new-instance v0, LHy;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->e:LHy;

    .line 164
    new-instance v0, LHy;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->f:LHy;

    .line 165
    new-instance v0, LHy;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->g:LHy;

    .line 166
    new-instance v0, LHy;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->h:LHy;

    .line 167
    new-instance v0, LHy;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->i:LHy;

    .line 168
    new-instance v0, LHy;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LHy;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHy;->j:LHy;

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [LHy;

    sget-object v1, LHy;->a:LHy;

    aput-object v1, v0, v4

    sget-object v1, LHy;->b:LHy;

    aput-object v1, v0, v5

    sget-object v1, LHy;->c:LHy;

    aput-object v1, v0, v6

    sget-object v1, LHy;->d:LHy;

    aput-object v1, v0, v7

    sget-object v1, LHy;->e:LHy;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, LHy;->f:LHy;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LHy;->g:LHy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LHy;->h:LHy;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LHy;->i:LHy;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LHy;->j:LHy;

    aput-object v2, v0, v1

    sput-object v0, LHy;->l:[LHy;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, LHy;->k:Ljava/util/Map;

    .line 173
    sget-object v0, LHy;->k:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, LHy;->g:LHy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, LHy;->k:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, LHy;->f:LHy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, LHy;->k:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, LHy;->a:LHy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()LHy;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, LGS;->g()LHe;

    .line 188
    sget-object v0, LHy;->h:LHy;

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 192
    sget-object v1, LHy;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHy;

    .line 193
    if-nez v0, :cond_0

    .line 194
    sget-object v0, LHy;->h:LHy;

    goto :goto_0
.end method
