.class final enum LIg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LIg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LIg;

.field public static final enum b:LIg;

.field public static final enum c:LIg;

.field public static final enum d:LIg;

.field public static final enum e:LIg;

.field public static final enum f:LIg;

.field public static final enum g:LIg;

.field public static final enum h:LIg;

.field public static final enum i:LIg;

.field public static final enum j:LIg;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LIg;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic l:[LIg;


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
    new-instance v0, LIg;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->a:LIg;

    .line 160
    new-instance v0, LIg;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->b:LIg;

    .line 161
    new-instance v0, LIg;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->c:LIg;

    .line 162
    new-instance v0, LIg;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->d:LIg;

    .line 163
    new-instance v0, LIg;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->e:LIg;

    .line 164
    new-instance v0, LIg;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->f:LIg;

    .line 165
    new-instance v0, LIg;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->g:LIg;

    .line 166
    new-instance v0, LIg;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->h:LIg;

    .line 167
    new-instance v0, LIg;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->i:LIg;

    .line 168
    new-instance v0, LIg;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LIg;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIg;->j:LIg;

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [LIg;

    sget-object v1, LIg;->a:LIg;

    aput-object v1, v0, v4

    sget-object v1, LIg;->b:LIg;

    aput-object v1, v0, v5

    sget-object v1, LIg;->c:LIg;

    aput-object v1, v0, v6

    sget-object v1, LIg;->d:LIg;

    aput-object v1, v0, v7

    sget-object v1, LIg;->e:LIg;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, LIg;->f:LIg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LIg;->g:LIg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LIg;->h:LIg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, LIg;->i:LIg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, LIg;->j:LIg;

    aput-object v2, v0, v1

    sput-object v0, LIg;->l:[LIg;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, LIg;->k:Ljava/util/Map;

    .line 173
    sget-object v0, LIg;->k:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, LIg;->g:LIg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, LIg;->k:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, LIg;->f:LIg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, LIg;->k:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, LIg;->a:LIg;

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

.method static a()LIg;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, LHA;->g()LHM;

    .line 188
    sget-object v0, LIg;->h:LIg;

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
    sget-object v1, LIg;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIg;

    .line 193
    if-nez v0, :cond_0

    .line 194
    sget-object v0, LIg;->h:LIg;

    goto :goto_0
.end method
